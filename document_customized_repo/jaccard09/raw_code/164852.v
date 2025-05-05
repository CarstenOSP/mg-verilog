module forward_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9236_1_proc77 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v9217_1_1_3_address0,v9217_1_1_3_ce0,v9217_1_1_3_we0,v9217_1_1_3_d0,v9217_1_1_2_address0,v9217_1_1_2_ce0,v9217_1_1_2_we0,v9217_1_1_2_d0,v9217_1_1_1_address0,v9217_1_1_1_ce0,v9217_1_1_1_we0,v9217_1_1_1_d0,v9217_1_1_0_address0,v9217_1_1_0_ce0,v9217_1_1_0_we0,v9217_1_1_0_d0,v9217_1_0_3_address0,v9217_1_0_3_ce0,v9217_1_0_3_we0,v9217_1_0_3_d0,v9217_1_0_2_address0,v9217_1_0_2_ce0,v9217_1_0_2_we0,v9217_1_0_2_d0,v9217_1_0_1_address0,v9217_1_0_1_ce0,v9217_1_0_1_we0,v9217_1_0_1_d0,v9217_1_0_0_address0,v9217_1_0_0_ce0,v9217_1_0_0_we0,v9217_1_0_0_d0,v9217_0_1_3_address0,v9217_0_1_3_ce0,v9217_0_1_3_we0,v9217_0_1_3_d0,v9217_0_1_2_address0,v9217_0_1_2_ce0,v9217_0_1_2_we0,v9217_0_1_2_d0,v9217_0_1_1_address0,v9217_0_1_1_ce0,v9217_0_1_1_we0,v9217_0_1_1_d0,v9217_0_1_0_address0,v9217_0_1_0_ce0,v9217_0_1_0_we0,v9217_0_1_0_d0,v9217_0_0_3_address0,v9217_0_0_3_ce0,v9217_0_0_3_we0,v9217_0_0_3_d0,v9217_0_0_2_address0,v9217_0_0_2_ce0,v9217_0_0_2_we0,v9217_0_0_2_d0,v9217_0_0_1_address0,v9217_0_0_1_ce0,v9217_0_0_1_we0,v9217_0_0_1_d0,v9217_0_0_0_address0,v9217_0_0_0_ce0,v9217_0_0_0_we0,v9217_0_0_0_d0,p_read,v6513_15_address0,v6513_15_ce0,v6513_15_q0,v6513_14_address0,v6513_14_ce0,v6513_14_q0,v6513_13_address0,v6513_13_ce0,v6513_13_q0,v6513_12_address0,v6513_12_ce0,v6513_12_q0,v6513_11_address0,v6513_11_ce0,v6513_11_q0,v6513_10_address0,v6513_10_ce0,v6513_10_q0,v6513_9_address0,v6513_9_ce0,v6513_9_q0,v6513_8_address0,v6513_8_ce0,v6513_8_q0,v6513_7_address0,v6513_7_ce0,v6513_7_q0,v6513_6_address0,v6513_6_ce0,v6513_6_q0,v6513_5_address0,v6513_5_ce0,v6513_5_q0,v6513_4_address0,v6513_4_ce0,v6513_4_q0,v6513_3_address0,v6513_3_ce0,v6513_3_q0,v6513_2_address0,v6513_2_ce0,v6513_2_q0,v6513_1_address0,v6513_1_ce0,v6513_1_q0,v6513_address0,v6513_ce0,v6513_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v9217_1_1_3_address0;
output   v9217_1_1_3_ce0;
output   v9217_1_1_3_we0;
output  [7:0] v9217_1_1_3_d0;
output  [13:0] v9217_1_1_2_address0;
output   v9217_1_1_2_ce0;
output   v9217_1_1_2_we0;
output  [7:0] v9217_1_1_2_d0;
output  [13:0] v9217_1_1_1_address0;
output   v9217_1_1_1_ce0;
output   v9217_1_1_1_we0;
output  [7:0] v9217_1_1_1_d0;
output  [13:0] v9217_1_1_0_address0;
output   v9217_1_1_0_ce0;
output   v9217_1_1_0_we0;
output  [7:0] v9217_1_1_0_d0;
output  [13:0] v9217_1_0_3_address0;
output   v9217_1_0_3_ce0;
output   v9217_1_0_3_we0;
output  [7:0] v9217_1_0_3_d0;
output  [13:0] v9217_1_0_2_address0;
output   v9217_1_0_2_ce0;
output   v9217_1_0_2_we0;
output  [7:0] v9217_1_0_2_d0;
output  [13:0] v9217_1_0_1_address0;
output   v9217_1_0_1_ce0;
output   v9217_1_0_1_we0;
output  [7:0] v9217_1_0_1_d0;
output  [13:0] v9217_1_0_0_address0;
output   v9217_1_0_0_ce0;
output   v9217_1_0_0_we0;
output  [7:0] v9217_1_0_0_d0;
output  [13:0] v9217_0_1_3_address0;
output   v9217_0_1_3_ce0;
output   v9217_0_1_3_we0;
output  [7:0] v9217_0_1_3_d0;
output  [13:0] v9217_0_1_2_address0;
output   v9217_0_1_2_ce0;
output   v9217_0_1_2_we0;
output  [7:0] v9217_0_1_2_d0;
output  [13:0] v9217_0_1_1_address0;
output   v9217_0_1_1_ce0;
output   v9217_0_1_1_we0;
output  [7:0] v9217_0_1_1_d0;
output  [13:0] v9217_0_1_0_address0;
output   v9217_0_1_0_ce0;
output   v9217_0_1_0_we0;
output  [7:0] v9217_0_1_0_d0;
output  [13:0] v9217_0_0_3_address0;
output   v9217_0_0_3_ce0;
output   v9217_0_0_3_we0;
output  [7:0] v9217_0_0_3_d0;
output  [13:0] v9217_0_0_2_address0;
output   v9217_0_0_2_ce0;
output   v9217_0_0_2_we0;
output  [7:0] v9217_0_0_2_d0;
output  [13:0] v9217_0_0_1_address0;
output   v9217_0_0_1_ce0;
output   v9217_0_0_1_we0;
output  [7:0] v9217_0_0_1_d0;
output  [13:0] v9217_0_0_0_address0;
output   v9217_0_0_0_ce0;
output   v9217_0_0_0_we0;
output  [7:0] v9217_0_0_0_d0;
input  [7:0] p_read;
output  [10:0] v6513_15_address0;
output   v6513_15_ce0;
input  [7:0] v6513_15_q0;
output  [10:0] v6513_14_address0;
output   v6513_14_ce0;
input  [7:0] v6513_14_q0;
output  [10:0] v6513_13_address0;
output   v6513_13_ce0;
input  [7:0] v6513_13_q0;
output  [10:0] v6513_12_address0;
output   v6513_12_ce0;
input  [7:0] v6513_12_q0;
output  [10:0] v6513_11_address0;
output   v6513_11_ce0;
input  [7:0] v6513_11_q0;
output  [10:0] v6513_10_address0;
output   v6513_10_ce0;
input  [7:0] v6513_10_q0;
output  [10:0] v6513_9_address0;
output   v6513_9_ce0;
input  [7:0] v6513_9_q0;
output  [10:0] v6513_8_address0;
output   v6513_8_ce0;
input  [7:0] v6513_8_q0;
output  [10:0] v6513_7_address0;
output   v6513_7_ce0;
input  [7:0] v6513_7_q0;
output  [10:0] v6513_6_address0;
output   v6513_6_ce0;
input  [7:0] v6513_6_q0;
output  [10:0] v6513_5_address0;
output   v6513_5_ce0;
input  [7:0] v6513_5_q0;
output  [10:0] v6513_4_address0;
output   v6513_4_ce0;
input  [7:0] v6513_4_q0;
output  [10:0] v6513_3_address0;
output   v6513_3_ce0;
input  [7:0] v6513_3_q0;
output  [10:0] v6513_2_address0;
output   v6513_2_ce0;
input  [7:0] v6513_2_q0;
output  [10:0] v6513_1_address0;
output   v6513_1_ce0;
input  [7:0] v6513_1_q0;
output  [10:0] v6513_address0;
output   v6513_ce0;
input  [7:0] v6513_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln9236_fu_980_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [0:0] tmp_fu_658_p3;
reg   [0:0] tmp_reg_1390;
wire   [4:0] p_udiv28_cast_cast_cast_cast_fu_690_p3;
reg   [4:0] p_udiv28_cast_cast_cast_cast_reg_1396;
wire   [3:0] trunc_ln9884_cast_cast_cast_cast_fu_710_p3;
reg   [3:0] trunc_ln9884_cast_cast_cast_cast_reg_1401;
reg   [3:0] trunc_ln9884_cast_cast_cast_cast_reg_1401_pp0_iter1_reg;
wire   [3:0] lshr_ln_fu_820_p4;
reg   [3:0] lshr_ln_reg_1406;
reg   [4:0] tmp_575_reg_1412;
wire   [3:0] lshr_ln9237_1_fu_876_p4;
reg   [3:0] lshr_ln9237_1_reg_1418;
wire   [7:0] add_ln9240_fu_890_p2;
reg   [7:0] add_ln9240_reg_1423;
reg   [4:0] lshr_ln178_reg_1429;
reg   [4:0] lshr_ln178_reg_1429_pp0_iter1_reg;
reg   [2:0] lshr_ln9238_1_reg_1434;
reg   [2:0] lshr_ln9238_1_reg_1434_pp0_iter1_reg;
reg   [3:0] lshr_ln179_reg_1440;
reg   [3:0] lshr_ln179_reg_1440_pp0_iter1_reg;
wire   [0:0] icmp_ln9238_fu_968_p2;
reg   [0:0] icmp_ln9238_reg_1445;
wire   [0:0] icmp_ln9237_fu_974_p2;
reg   [0:0] icmp_ln9237_reg_1450;
reg   [0:0] icmp_ln9236_reg_1455;
wire   [9:0] sub_ln9255_fu_1031_p2;
reg   [9:0] sub_ln9255_reg_1459;
wire   [9:0] sub_ln9271_fu_1055_p2;
reg   [9:0] sub_ln9271_reg_1465;
wire   [4:0] empty_501_fu_1080_p2;
reg   [4:0] empty_501_reg_1471;
reg   [0:0] ap_phi_mux_icmp_ln9237291_phi_fu_641_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln9238290_phi_fu_651_p4;
wire   [63:0] zext_ln9240_4_fu_1094_p1;
wire   [63:0] zext_ln9265_1_fu_1262_p1;
wire   [63:0] zext_ln9257_fu_1273_p1;
wire   [63:0] zext_ln9249_fu_1284_p1;
wire   [63:0] zext_ln9241_fu_1295_p1;
wire   [63:0] zext_ln9271_4_fu_1309_p1;
wire   [63:0] zext_ln9263_2_fu_1322_p1;
wire   [63:0] zext_ln9255_2_fu_1335_p1;
wire   [63:0] zext_ln9247_1_fu_1348_p1;
reg   [10:0] indvar_flatten12285_fu_180;
wire   [10:0] add_ln9236_1_fu_962_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten12285_load;
reg   [5:0] v5997286_fu_184;
wire   [5:0] v5997_fu_784_p3;
reg   [5:0] ap_sig_allocacmp_v5997286_load;
reg   [6:0] indvar_flatten287_fu_188;
wire   [6:0] select_ln9237_1_fu_954_p3;
reg   [6:0] ap_sig_allocacmp_indvar_flatten287_load;
reg   [4:0] v5998288_fu_192;
wire   [4:0] v5998_fu_812_p3;
reg   [4:0] ap_sig_allocacmp_v5998288_load;
reg   [4:0] v5999289_fu_196;
wire   [4:0] v5999_fu_942_p2;
reg   [4:0] ap_sig_allocacmp_v5999289_load;
reg    v6513_15_ce0_local;
reg    v6513_14_ce0_local;
reg    v6513_13_ce0_local;
reg    v6513_12_ce0_local;
reg    v6513_11_ce0_local;
reg    v6513_10_ce0_local;
reg    v6513_9_ce0_local;
reg    v6513_8_ce0_local;
reg    v6513_7_ce0_local;
reg    v6513_6_ce0_local;
reg    v6513_5_ce0_local;
reg    v6513_4_ce0_local;
reg    v6513_3_ce0_local;
reg    v6513_2_ce0_local;
reg    v6513_1_ce0_local;
reg    v6513_ce0_local;
reg    v9217_0_0_0_we0_local;
reg    v9217_0_0_0_ce0_local;
reg    v9217_0_0_1_we0_local;
reg    v9217_0_0_1_ce0_local;
reg    v9217_0_0_2_we0_local;
reg    v9217_0_0_2_ce0_local;
reg    v9217_0_0_3_we0_local;
reg    v9217_0_0_3_ce0_local;
reg    v9217_0_1_0_we0_local;
reg    v9217_0_1_0_ce0_local;
reg    v9217_0_1_1_we0_local;
reg    v9217_0_1_1_ce0_local;
reg    v9217_0_1_2_we0_local;
reg    v9217_0_1_2_ce0_local;
reg    v9217_0_1_3_we0_local;
reg    v9217_0_1_3_ce0_local;
reg    v9217_1_0_0_we0_local;
reg    v9217_1_0_0_ce0_local;
reg    v9217_1_0_1_we0_local;
reg    v9217_1_0_1_ce0_local;
reg    v9217_1_0_2_we0_local;
reg    v9217_1_0_2_ce0_local;
reg    v9217_1_0_3_we0_local;
reg    v9217_1_0_3_ce0_local;
reg    v9217_1_1_0_we0_local;
reg    v9217_1_1_0_ce0_local;
reg    v9217_1_1_1_we0_local;
reg    v9217_1_1_1_ce0_local;
reg    v9217_1_1_2_we0_local;
reg    v9217_1_1_2_ce0_local;
reg    v9217_1_1_3_we0_local;
reg    v9217_1_1_3_ce0_local;
wire   [0:0] tmp_572_fu_674_p3;
wire   [0:0] empty_fu_698_p1;
wire   [0:0] xor_ln9236_fu_772_p2;
wire   [5:0] add_ln9236_fu_758_p2;
wire   [4:0] select_ln9236_fu_764_p3;
wire   [0:0] and_ln9236_fu_778_p2;
wire   [0:0] empty_498_fu_798_p2;
wire   [4:0] add_ln9237_fu_792_p2;
wire   [4:0] tmp_573_fu_838_p3;
wire   [7:0] p_shl218_fu_830_p3;
wire   [7:0] zext_ln9240_fu_846_p1;
wire   [5:0] mul_i_fu_666_p3;
wire   [5:0] empty_499_fu_856_p2;
wire   [7:0] sub_ln9240_fu_850_p2;
wire   [7:0] zext_ln9240_1_fu_886_p1;
wire   [5:0] zext_ln9975_cast_cast_cast_cast_fu_682_p3;
wire   [5:0] zext_ln9237_fu_872_p1;
wire   [5:0] empty_500_fu_896_p2;
wire   [4:0] v5999_mid2_fu_804_p3;
wire   [5:0] select_ln9884_cast_cast_fu_702_p3;
wire   [5:0] zext_ln9238_fu_912_p1;
wire   [5:0] add_ln9241_fu_926_p2;
wire   [6:0] add_ln9237_1_fu_948_p2;
wire   [6:0] tmp_574_fu_1019_p4;
wire   [9:0] p_shl219_fu_1011_p4;
wire   [9:0] zext_ln9255_fu_1027_p1;
wire   [6:0] tmp_576_fu_1044_p3;
wire   [9:0] p_shl220_fu_1037_p3;
wire   [9:0] zext_ln9271_fu_1051_p1;
wire   [10:0] p_shl221_fu_1067_p3;
wire   [10:0] zext_ln9240_2_fu_1064_p1;
wire   [4:0] zext_ln9237_1_fu_1061_p1;
wire   [10:0] sub_ln9240_1_fu_1074_p2;
wire   [10:0] zext_ln9240_3_fu_1085_p1;
wire   [10:0] add_ln9240_1_fu_1088_p2;
wire   [9:0] zext_ln9263_fu_1114_p1;
wire   [9:0] add_ln9263_fu_1117_p2;
wire   [10:0] tmp_577_fu_1130_p3;
wire   [13:0] p_shl222_fu_1122_p3;
wire   [13:0] zext_ln9263_1_fu_1138_p1;
wire   [9:0] add_ln9247_fu_1148_p2;
wire   [10:0] tmp_578_fu_1161_p3;
wire   [13:0] p_shl223_fu_1153_p3;
wire   [13:0] zext_ln9247_fu_1169_p1;
wire   [9:0] zext_ln9271_1_fu_1179_p1;
wire   [9:0] add_ln9271_fu_1182_p2;
wire   [10:0] tmp_579_fu_1195_p3;
wire   [13:0] p_shl224_fu_1187_p3;
wire   [13:0] zext_ln9271_2_fu_1203_p1;
wire   [9:0] add_ln9255_fu_1213_p2;
wire   [10:0] tmp_580_fu_1226_p3;
wire   [13:0] p_shl_fu_1218_p3;
wire   [13:0] zext_ln9255_1_fu_1234_p1;
wire   [3:0] zext_ln9238_1_fu_1244_p1;
wire   [3:0] add_ln9241_1_fu_1247_p2;
wire   [13:0] sub_ln9271_1_fu_1207_p2;
wire   [13:0] zext_ln9265_fu_1252_p1;
wire   [13:0] add_ln9265_fu_1256_p2;
wire   [13:0] sub_ln9263_fu_1142_p2;
wire   [13:0] add_ln9257_fu_1267_p2;
wire   [13:0] sub_ln9255_1_fu_1238_p2;
wire   [13:0] add_ln9249_fu_1278_p2;
wire   [13:0] sub_ln9247_fu_1173_p2;
wire   [13:0] add_ln9241_2_fu_1289_p2;
wire   [13:0] zext_ln9271_3_fu_1300_p1;
wire   [13:0] add_ln9271_1_fu_1303_p2;
wire   [13:0] add_ln9263_1_fu_1316_p2;
wire   [13:0] add_ln9255_1_fu_1329_p2;
wire   [13:0] add_ln9247_1_fu_1342_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_951;
reg    ap_condition_306;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12285_fu_180 = 11'd0;
#0 v5997286_fu_184 = 6'd0;
#0 indvar_flatten287_fu_188 = 7'd0;
#0 v5998288_fu_192 = 5'd0;
#0 v5999289_fu_196 = 5'd0;
end
forward_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_306)) begin
        indvar_flatten12285_fu_180 <= add_ln9236_1_fu_962_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_306)) begin
    indvar_flatten287_fu_188 <= select_ln9237_1_fu_954_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_306)) begin
    v5997286_fu_184 <= v5997_fu_784_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_306)) begin
    v5998288_fu_192 <= v5998_fu_812_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_306)) begin
    v5999289_fu_196 <= v5999_fu_942_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln9240_reg_1423 <= add_ln9240_fu_890_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_501_reg_1471 <= empty_501_fu_1080_p2;
        icmp_ln9236_reg_1455 <= icmp_ln9236_fu_980_p2;
        lshr_ln178_reg_1429 <= {{empty_500_fu_896_p2[5:1]}};
        lshr_ln178_reg_1429_pp0_iter1_reg <= lshr_ln178_reg_1429;
        lshr_ln179_reg_1440 <= {{add_ln9241_fu_926_p2[5:2]}};
        lshr_ln179_reg_1440_pp0_iter1_reg <= lshr_ln179_reg_1440;
        lshr_ln9237_1_reg_1418 <= {{v5998_fu_812_p3[4:1]}};
        lshr_ln9238_1_reg_1434 <= {{v5999_mid2_fu_804_p3[4:2]}};
        lshr_ln9238_1_reg_1434_pp0_iter1_reg <= lshr_ln9238_1_reg_1434;
        lshr_ln_reg_1406 <= {{v5997_fu_784_p3[4:1]}};
        p_udiv28_cast_cast_cast_cast_reg_1396[3 : 1] <= p_udiv28_cast_cast_cast_cast_fu_690_p3[3 : 1];
        sub_ln9255_reg_1459[9 : 2] <= sub_ln9255_fu_1031_p2[9 : 2];
        sub_ln9271_reg_1465[9 : 2] <= sub_ln9271_fu_1055_p2[9 : 2];
        tmp_575_reg_1412 <= {{empty_499_fu_856_p2[5:1]}};
        tmp_reg_1390 <= p_read[32'd2];
        trunc_ln9884_cast_cast_cast_cast_reg_1401[2 : 0] <= trunc_ln9884_cast_cast_cast_cast_fu_710_p3[2 : 0];
        trunc_ln9884_cast_cast_cast_cast_reg_1401_pp0_iter1_reg[2 : 0] <= trunc_ln9884_cast_cast_cast_cast_reg_1401[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln9237_reg_1450 <= icmp_ln9237_fu_974_p2;
        icmp_ln9238_reg_1445 <= icmp_ln9238_fu_968_p2;
    end
end
always @ (*) begin
    if (((icmp_ln9236_fu_980_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_951)) begin
            ap_phi_mux_icmp_ln9237291_phi_fu_641_p4 = icmp_ln9237_reg_1450;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln9237291_phi_fu_641_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln9237291_phi_fu_641_p4 = icmp_ln9237_reg_1450;
        end
    end else begin
        ap_phi_mux_icmp_ln9237291_phi_fu_641_p4 = icmp_ln9237_reg_1450;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_951)) begin
            ap_phi_mux_icmp_ln9238290_phi_fu_651_p4 = icmp_ln9238_reg_1445;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln9238290_phi_fu_651_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln9238290_phi_fu_651_p4 = icmp_ln9238_reg_1445;
        end
    end else begin
        ap_phi_mux_icmp_ln9238290_phi_fu_651_p4 = icmp_ln9238_reg_1445;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12285_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12285_load = indvar_flatten12285_fu_180;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten287_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten287_load = indvar_flatten287_fu_188;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v5997286_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v5997286_load = v5997286_fu_184;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v5998288_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v5998288_load = v5998288_fu_192;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v5999289_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v5999289_load = v5999289_fu_196;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6513_10_ce0_local = 1'b1;
    end else begin
        v6513_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6513_11_ce0_local = 1'b1;
    end else begin
        v6513_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6513_12_ce0_local = 1'b1;
    end else begin
        v6513_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6513_13_ce0_local = 1'b1;
    end else begin
        v6513_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6513_14_ce0_local = 1'b1;
    end else begin
        v6513_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6513_15_ce0_local = 1'b1;
    end else begin
        v6513_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6513_1_ce0_local = 1'b1;
    end else begin
        v6513_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6513_2_ce0_local = 1'b1;
    end else begin
        v6513_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6513_3_ce0_local = 1'b1;
    end else begin
        v6513_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6513_4_ce0_local = 1'b1;
    end else begin
        v6513_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6513_5_ce0_local = 1'b1;
    end else begin
        v6513_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6513_6_ce0_local = 1'b1;
    end else begin
        v6513_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6513_7_ce0_local = 1'b1;
    end else begin
        v6513_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6513_8_ce0_local = 1'b1;
    end else begin
        v6513_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6513_9_ce0_local = 1'b1;
    end else begin
        v6513_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6513_ce0_local = 1'b1;
    end else begin
        v6513_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_0_0_0_ce0_local = 1'b1;
    end else begin
        v9217_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_0_0_0_we0_local = 1'b1;
    end else begin
        v9217_0_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_0_0_1_ce0_local = 1'b1;
    end else begin
        v9217_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_0_0_1_we0_local = 1'b1;
    end else begin
        v9217_0_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_0_0_2_ce0_local = 1'b1;
    end else begin
        v9217_0_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_0_0_2_we0_local = 1'b1;
    end else begin
        v9217_0_0_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_0_0_3_ce0_local = 1'b1;
    end else begin
        v9217_0_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_0_0_3_we0_local = 1'b1;
    end else begin
        v9217_0_0_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_0_1_0_ce0_local = 1'b1;
    end else begin
        v9217_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_0_1_0_we0_local = 1'b1;
    end else begin
        v9217_0_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_0_1_1_ce0_local = 1'b1;
    end else begin
        v9217_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_0_1_1_we0_local = 1'b1;
    end else begin
        v9217_0_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_0_1_2_ce0_local = 1'b1;
    end else begin
        v9217_0_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_0_1_2_we0_local = 1'b1;
    end else begin
        v9217_0_1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_0_1_3_ce0_local = 1'b1;
    end else begin
        v9217_0_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_0_1_3_we0_local = 1'b1;
    end else begin
        v9217_0_1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_1_0_0_ce0_local = 1'b1;
    end else begin
        v9217_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_1_0_0_we0_local = 1'b1;
    end else begin
        v9217_1_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_1_0_1_ce0_local = 1'b1;
    end else begin
        v9217_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_1_0_1_we0_local = 1'b1;
    end else begin
        v9217_1_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_1_0_2_ce0_local = 1'b1;
    end else begin
        v9217_1_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_1_0_2_we0_local = 1'b1;
    end else begin
        v9217_1_0_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_1_0_3_ce0_local = 1'b1;
    end else begin
        v9217_1_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_1_0_3_we0_local = 1'b1;
    end else begin
        v9217_1_0_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_1_1_0_ce0_local = 1'b1;
    end else begin
        v9217_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_1_1_0_we0_local = 1'b1;
    end else begin
        v9217_1_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_1_1_1_ce0_local = 1'b1;
    end else begin
        v9217_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_1_1_1_we0_local = 1'b1;
    end else begin
        v9217_1_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_1_1_2_ce0_local = 1'b1;
    end else begin
        v9217_1_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_1_1_2_we0_local = 1'b1;
    end else begin
        v9217_1_1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_1_1_3_ce0_local = 1'b1;
    end else begin
        v9217_1_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9217_1_1_3_we0_local = 1'b1;
    end else begin
        v9217_1_1_3_we0_local = 1'b0;
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
assign add_ln9236_1_fu_962_p2 = (ap_sig_allocacmp_indvar_flatten12285_load + 11'd1);
assign add_ln9236_fu_758_p2 = (ap_sig_allocacmp_v5997286_load + 6'd2);
assign add_ln9237_1_fu_948_p2 = (ap_sig_allocacmp_indvar_flatten287_load + 7'd1);
assign add_ln9237_fu_792_p2 = (select_ln9236_fu_764_p3 + 5'd2);
assign add_ln9240_1_fu_1088_p2 = (sub_ln9240_1_fu_1074_p2 + zext_ln9240_3_fu_1085_p1);
assign add_ln9240_fu_890_p2 = (sub_ln9240_fu_850_p2 + zext_ln9240_1_fu_886_p1);
assign add_ln9241_1_fu_1247_p2 = (zext_ln9238_1_fu_1244_p1 + trunc_ln9884_cast_cast_cast_cast_reg_1401_pp0_iter1_reg);
assign add_ln9241_2_fu_1289_p2 = (sub_ln9247_fu_1173_p2 + zext_ln9265_fu_1252_p1);
assign add_ln9241_fu_926_p2 = (select_ln9884_cast_cast_fu_702_p3 + zext_ln9238_fu_912_p1);
assign add_ln9247_1_fu_1342_p2 = (sub_ln9247_fu_1173_p2 + zext_ln9271_3_fu_1300_p1);
assign add_ln9247_fu_1148_p2 = (sub_ln9255_reg_1459 + zext_ln9263_fu_1114_p1);
assign add_ln9249_fu_1278_p2 = (sub_ln9255_1_fu_1238_p2 + zext_ln9265_fu_1252_p1);
assign add_ln9255_1_fu_1329_p2 = (sub_ln9255_1_fu_1238_p2 + zext_ln9271_3_fu_1300_p1);
assign add_ln9255_fu_1213_p2 = (sub_ln9255_reg_1459 + zext_ln9271_1_fu_1179_p1);
assign add_ln9257_fu_1267_p2 = (sub_ln9263_fu_1142_p2 + zext_ln9265_fu_1252_p1);
assign add_ln9263_1_fu_1316_p2 = (sub_ln9263_fu_1142_p2 + zext_ln9271_3_fu_1300_p1);
assign add_ln9263_fu_1117_p2 = (sub_ln9271_reg_1465 + zext_ln9263_fu_1114_p1);
assign add_ln9265_fu_1256_p2 = (sub_ln9271_1_fu_1207_p2 + zext_ln9265_fu_1252_p1);
assign add_ln9271_1_fu_1303_p2 = (sub_ln9271_1_fu_1207_p2 + zext_ln9271_3_fu_1300_p1);
assign add_ln9271_fu_1182_p2 = (sub_ln9271_reg_1465 + zext_ln9271_1_fu_1179_p1);
assign and_ln9236_fu_778_p2 = (xor_ln9236_fu_772_p2 & ap_phi_mux_icmp_ln9238290_phi_fu_651_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_306 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_951 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln9236_reg_1455 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_498_fu_798_p2 = (ap_phi_mux_icmp_ln9237291_phi_fu_641_p4 | and_ln9236_fu_778_p2);
assign empty_499_fu_856_p2 = (v5997_fu_784_p3 + mul_i_fu_666_p3);
assign empty_500_fu_896_p2 = (zext_ln9975_cast_cast_cast_cast_fu_682_p3 + zext_ln9237_fu_872_p1);
assign empty_501_fu_1080_p2 = (zext_ln9237_1_fu_1061_p1 + p_udiv28_cast_cast_cast_cast_reg_1396);
assign empty_fu_698_p1 = p_read[0:0];
assign icmp_ln9236_fu_980_p2 = ((ap_sig_allocacmp_indvar_flatten12285_load == 11'd1567) ? 1'b1 : 1'b0);
assign icmp_ln9237_fu_974_p2 = ((select_ln9237_1_fu_954_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln9238_fu_968_p2 = ((v5999_fu_942_p2 == 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln9237_1_fu_876_p4 = {{v5998_fu_812_p3[4:1]}};
assign lshr_ln_fu_820_p4 = {{v5997_fu_784_p3[4:1]}};
assign mul_i_fu_666_p3 = {{tmp_fu_658_p3}, {5'd0}};
assign p_shl218_fu_830_p3 = {{lshr_ln_fu_820_p4}, {4'd0}};
assign p_shl219_fu_1011_p4 = {{{tmp_reg_1390}, {lshr_ln_reg_1406}}, {5'd0}};
assign p_shl220_fu_1037_p3 = {{tmp_575_reg_1412}, {5'd0}};
assign p_shl221_fu_1067_p3 = {{add_ln9240_reg_1423}, {3'd0}};
assign p_shl222_fu_1122_p3 = {{add_ln9263_fu_1117_p2}, {4'd0}};
assign p_shl223_fu_1153_p3 = {{add_ln9247_fu_1148_p2}, {4'd0}};
assign p_shl224_fu_1187_p3 = {{add_ln9271_fu_1182_p2}, {4'd0}};
assign p_shl_fu_1218_p3 = {{add_ln9255_fu_1213_p2}, {4'd0}};
assign p_udiv28_cast_cast_cast_cast_fu_690_p3 = ((tmp_572_fu_674_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign select_ln9236_fu_764_p3 = ((ap_phi_mux_icmp_ln9237291_phi_fu_641_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v5998288_load);
assign select_ln9237_1_fu_954_p3 = ((ap_phi_mux_icmp_ln9237291_phi_fu_641_p4[0:0] == 1'b1) ? 7'd1 : add_ln9237_1_fu_948_p2);
assign select_ln9884_cast_cast_fu_702_p3 = ((empty_fu_698_p1[0:0] == 1'b1) ? 6'd28 : 6'd0);
assign sub_ln9240_1_fu_1074_p2 = (p_shl221_fu_1067_p3 - zext_ln9240_2_fu_1064_p1);
assign sub_ln9240_fu_850_p2 = (p_shl218_fu_830_p3 - zext_ln9240_fu_846_p1);
assign sub_ln9247_fu_1173_p2 = (p_shl223_fu_1153_p3 - zext_ln9247_fu_1169_p1);
assign sub_ln9255_1_fu_1238_p2 = (p_shl_fu_1218_p3 - zext_ln9255_1_fu_1234_p1);
assign sub_ln9255_fu_1031_p2 = (p_shl219_fu_1011_p4 - zext_ln9255_fu_1027_p1);
assign sub_ln9263_fu_1142_p2 = (p_shl222_fu_1122_p3 - zext_ln9263_1_fu_1138_p1);
assign sub_ln9271_1_fu_1207_p2 = (p_shl224_fu_1187_p3 - zext_ln9271_2_fu_1203_p1);
assign sub_ln9271_fu_1055_p2 = (p_shl220_fu_1037_p3 - zext_ln9271_fu_1051_p1);
assign tmp_572_fu_674_p3 = p_read[32'd1];
assign tmp_573_fu_838_p3 = {{lshr_ln_fu_820_p4}, {1'd0}};
assign tmp_574_fu_1019_p4 = {{{tmp_reg_1390}, {lshr_ln_reg_1406}}, {2'd0}};
assign tmp_576_fu_1044_p3 = {{tmp_575_reg_1412}, {2'd0}};
assign tmp_577_fu_1130_p3 = {{add_ln9263_fu_1117_p2}, {1'd0}};
assign tmp_578_fu_1161_p3 = {{add_ln9247_fu_1148_p2}, {1'd0}};
assign tmp_579_fu_1195_p3 = {{add_ln9271_fu_1182_p2}, {1'd0}};
assign tmp_580_fu_1226_p3 = {{add_ln9255_fu_1213_p2}, {1'd0}};
assign tmp_fu_658_p3 = p_read[32'd2];
assign trunc_ln9884_cast_cast_cast_cast_fu_710_p3 = ((empty_fu_698_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign v5997_fu_784_p3 = ((ap_phi_mux_icmp_ln9237291_phi_fu_641_p4[0:0] == 1'b1) ? add_ln9236_fu_758_p2 : ap_sig_allocacmp_v5997286_load);
assign v5998_fu_812_p3 = ((and_ln9236_fu_778_p2[0:0] == 1'b1) ? add_ln9237_fu_792_p2 : select_ln9236_fu_764_p3);
assign v5999_fu_942_p2 = (v5999_mid2_fu_804_p3 + 5'd4);
assign v5999_mid2_fu_804_p3 = ((empty_498_fu_798_p2[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v5999289_load);
assign v6513_10_address0 = zext_ln9240_4_fu_1094_p1;
assign v6513_10_ce0 = v6513_10_ce0_local;
assign v6513_11_address0 = zext_ln9240_4_fu_1094_p1;
assign v6513_11_ce0 = v6513_11_ce0_local;
assign v6513_12_address0 = zext_ln9240_4_fu_1094_p1;
assign v6513_12_ce0 = v6513_12_ce0_local;
assign v6513_13_address0 = zext_ln9240_4_fu_1094_p1;
assign v6513_13_ce0 = v6513_13_ce0_local;
assign v6513_14_address0 = zext_ln9240_4_fu_1094_p1;
assign v6513_14_ce0 = v6513_14_ce0_local;
assign v6513_15_address0 = zext_ln9240_4_fu_1094_p1;
assign v6513_15_ce0 = v6513_15_ce0_local;
assign v6513_1_address0 = zext_ln9240_4_fu_1094_p1;
assign v6513_1_ce0 = v6513_1_ce0_local;
assign v6513_2_address0 = zext_ln9240_4_fu_1094_p1;
assign v6513_2_ce0 = v6513_2_ce0_local;
assign v6513_3_address0 = zext_ln9240_4_fu_1094_p1;
assign v6513_3_ce0 = v6513_3_ce0_local;
assign v6513_4_address0 = zext_ln9240_4_fu_1094_p1;
assign v6513_4_ce0 = v6513_4_ce0_local;
assign v6513_5_address0 = zext_ln9240_4_fu_1094_p1;
assign v6513_5_ce0 = v6513_5_ce0_local;
assign v6513_6_address0 = zext_ln9240_4_fu_1094_p1;
assign v6513_6_ce0 = v6513_6_ce0_local;
assign v6513_7_address0 = zext_ln9240_4_fu_1094_p1;
assign v6513_7_ce0 = v6513_7_ce0_local;
assign v6513_8_address0 = zext_ln9240_4_fu_1094_p1;
assign v6513_8_ce0 = v6513_8_ce0_local;
assign v6513_9_address0 = zext_ln9240_4_fu_1094_p1;
assign v6513_9_ce0 = v6513_9_ce0_local;
assign v6513_address0 = zext_ln9240_4_fu_1094_p1;
assign v6513_ce0 = v6513_ce0_local;
assign v9217_0_0_0_address0 = zext_ln9241_fu_1295_p1;
assign v9217_0_0_0_ce0 = v9217_0_0_0_ce0_local;
assign v9217_0_0_0_d0 = v6513_15_q0;
assign v9217_0_0_0_we0 = v9217_0_0_0_we0_local;
assign v9217_0_0_1_address0 = zext_ln9247_1_fu_1348_p1;
assign v9217_0_0_1_ce0 = v9217_0_0_1_ce0_local;
assign v9217_0_0_1_d0 = v6513_14_q0;
assign v9217_0_0_1_we0 = v9217_0_0_1_we0_local;
assign v9217_0_0_2_address0 = zext_ln9247_1_fu_1348_p1;
assign v9217_0_0_2_ce0 = v9217_0_0_2_ce0_local;
assign v9217_0_0_2_d0 = v6513_13_q0;
assign v9217_0_0_2_we0 = v9217_0_0_2_we0_local;
assign v9217_0_0_3_address0 = zext_ln9247_1_fu_1348_p1;
assign v9217_0_0_3_ce0 = v9217_0_0_3_ce0_local;
assign v9217_0_0_3_d0 = v6513_12_q0;
assign v9217_0_0_3_we0 = v9217_0_0_3_we0_local;
assign v9217_0_1_0_address0 = zext_ln9249_fu_1284_p1;
assign v9217_0_1_0_ce0 = v9217_0_1_0_ce0_local;
assign v9217_0_1_0_d0 = v6513_11_q0;
assign v9217_0_1_0_we0 = v9217_0_1_0_we0_local;
assign v9217_0_1_1_address0 = zext_ln9255_2_fu_1335_p1;
assign v9217_0_1_1_ce0 = v9217_0_1_1_ce0_local;
assign v9217_0_1_1_d0 = v6513_10_q0;
assign v9217_0_1_1_we0 = v9217_0_1_1_we0_local;
assign v9217_0_1_2_address0 = zext_ln9255_2_fu_1335_p1;
assign v9217_0_1_2_ce0 = v9217_0_1_2_ce0_local;
assign v9217_0_1_2_d0 = v6513_9_q0;
assign v9217_0_1_2_we0 = v9217_0_1_2_we0_local;
assign v9217_0_1_3_address0 = zext_ln9255_2_fu_1335_p1;
assign v9217_0_1_3_ce0 = v9217_0_1_3_ce0_local;
assign v9217_0_1_3_d0 = v6513_8_q0;
assign v9217_0_1_3_we0 = v9217_0_1_3_we0_local;
assign v9217_1_0_0_address0 = zext_ln9257_fu_1273_p1;
assign v9217_1_0_0_ce0 = v9217_1_0_0_ce0_local;
assign v9217_1_0_0_d0 = v6513_7_q0;
assign v9217_1_0_0_we0 = v9217_1_0_0_we0_local;
assign v9217_1_0_1_address0 = zext_ln9263_2_fu_1322_p1;
assign v9217_1_0_1_ce0 = v9217_1_0_1_ce0_local;
assign v9217_1_0_1_d0 = v6513_6_q0;
assign v9217_1_0_1_we0 = v9217_1_0_1_we0_local;
assign v9217_1_0_2_address0 = zext_ln9263_2_fu_1322_p1;
assign v9217_1_0_2_ce0 = v9217_1_0_2_ce0_local;
assign v9217_1_0_2_d0 = v6513_5_q0;
assign v9217_1_0_2_we0 = v9217_1_0_2_we0_local;
assign v9217_1_0_3_address0 = zext_ln9263_2_fu_1322_p1;
assign v9217_1_0_3_ce0 = v9217_1_0_3_ce0_local;
assign v9217_1_0_3_d0 = v6513_4_q0;
assign v9217_1_0_3_we0 = v9217_1_0_3_we0_local;
assign v9217_1_1_0_address0 = zext_ln9265_1_fu_1262_p1;
assign v9217_1_1_0_ce0 = v9217_1_1_0_ce0_local;
assign v9217_1_1_0_d0 = v6513_3_q0;
assign v9217_1_1_0_we0 = v9217_1_1_0_we0_local;
assign v9217_1_1_1_address0 = zext_ln9271_4_fu_1309_p1;
assign v9217_1_1_1_ce0 = v9217_1_1_1_ce0_local;
assign v9217_1_1_1_d0 = v6513_2_q0;
assign v9217_1_1_1_we0 = v9217_1_1_1_we0_local;
assign v9217_1_1_2_address0 = zext_ln9271_4_fu_1309_p1;
assign v9217_1_1_2_ce0 = v9217_1_1_2_ce0_local;
assign v9217_1_1_2_d0 = v6513_1_q0;
assign v9217_1_1_2_we0 = v9217_1_1_2_we0_local;
assign v9217_1_1_3_address0 = zext_ln9271_4_fu_1309_p1;
assign v9217_1_1_3_ce0 = v9217_1_1_3_ce0_local;
assign v9217_1_1_3_d0 = v6513_q0;
assign v9217_1_1_3_we0 = v9217_1_1_3_we0_local;
assign xor_ln9236_fu_772_p2 = (ap_phi_mux_icmp_ln9237291_phi_fu_641_p4 ^ 1'd1);
assign zext_ln9237_1_fu_1061_p1 = lshr_ln9237_1_reg_1418;
assign zext_ln9237_fu_872_p1 = v5998_fu_812_p3;
assign zext_ln9238_1_fu_1244_p1 = lshr_ln9238_1_reg_1434_pp0_iter1_reg;
assign zext_ln9238_fu_912_p1 = v5999_mid2_fu_804_p3;
assign zext_ln9240_1_fu_886_p1 = lshr_ln9237_1_fu_876_p4;
assign zext_ln9240_2_fu_1064_p1 = add_ln9240_reg_1423;
assign zext_ln9240_3_fu_1085_p1 = lshr_ln9238_1_reg_1434;
assign zext_ln9240_4_fu_1094_p1 = add_ln9240_1_fu_1088_p2;
assign zext_ln9240_fu_846_p1 = tmp_573_fu_838_p3;
assign zext_ln9241_fu_1295_p1 = add_ln9241_2_fu_1289_p2;
assign zext_ln9247_1_fu_1348_p1 = add_ln9247_1_fu_1342_p2;
assign zext_ln9247_fu_1169_p1 = tmp_578_fu_1161_p3;
assign zext_ln9249_fu_1284_p1 = add_ln9249_fu_1278_p2;
assign zext_ln9255_1_fu_1234_p1 = tmp_580_fu_1226_p3;
assign zext_ln9255_2_fu_1335_p1 = add_ln9255_1_fu_1329_p2;
assign zext_ln9255_fu_1027_p1 = tmp_574_fu_1019_p4;
assign zext_ln9257_fu_1273_p1 = add_ln9257_fu_1267_p2;
assign zext_ln9263_1_fu_1138_p1 = tmp_577_fu_1130_p3;
assign zext_ln9263_2_fu_1322_p1 = add_ln9263_1_fu_1316_p2;
assign zext_ln9263_fu_1114_p1 = empty_501_reg_1471;
assign zext_ln9265_1_fu_1262_p1 = add_ln9265_fu_1256_p2;
assign zext_ln9265_fu_1252_p1 = add_ln9241_1_fu_1247_p2;
assign zext_ln9271_1_fu_1179_p1 = lshr_ln178_reg_1429_pp0_iter1_reg;
assign zext_ln9271_2_fu_1203_p1 = tmp_579_fu_1195_p3;
assign zext_ln9271_3_fu_1300_p1 = lshr_ln179_reg_1440_pp0_iter1_reg;
assign zext_ln9271_4_fu_1309_p1 = add_ln9271_1_fu_1303_p2;
assign zext_ln9271_fu_1051_p1 = tmp_576_fu_1044_p3;
assign zext_ln9975_cast_cast_cast_cast_fu_682_p3 = ((tmp_572_fu_674_p3[0:0] == 1'b1) ? 6'd28 : 6'd0);
always @ (posedge ap_clk) begin
    p_udiv28_cast_cast_cast_cast_reg_1396[0] <= 1'b0;
    p_udiv28_cast_cast_cast_cast_reg_1396[4] <= 1'b0;
    trunc_ln9884_cast_cast_cast_cast_reg_1401[3] <= 1'b0;
    trunc_ln9884_cast_cast_cast_cast_reg_1401_pp0_iter1_reg[3] <= 1'b0;
    sub_ln9255_reg_1459[1:0] <= 2'b00;
    sub_ln9271_reg_1465[1:0] <= 2'b00;
end
endmodule 