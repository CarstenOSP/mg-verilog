module forward_dataflow_in_loop_VITIS_LOOP_10939_1_Loop_VITIS_LOOP_9972_1_proc101 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v16192_3_1_1_address0,v16192_3_1_1_ce0,v16192_3_1_1_we0,v16192_3_1_1_d0,v16192_3_1_0_address0,v16192_3_1_0_ce0,v16192_3_1_0_we0,v16192_3_1_0_d0,v16192_3_0_1_address0,v16192_3_0_1_ce0,v16192_3_0_1_we0,v16192_3_0_1_d0,v16192_3_0_0_address0,v16192_3_0_0_ce0,v16192_3_0_0_we0,v16192_3_0_0_d0,v16192_2_1_1_address0,v16192_2_1_1_ce0,v16192_2_1_1_we0,v16192_2_1_1_d0,v16192_2_1_0_address0,v16192_2_1_0_ce0,v16192_2_1_0_we0,v16192_2_1_0_d0,v16192_2_0_1_address0,v16192_2_0_1_ce0,v16192_2_0_1_we0,v16192_2_0_1_d0,v16192_2_0_0_address0,v16192_2_0_0_ce0,v16192_2_0_0_we0,v16192_2_0_0_d0,v16192_1_1_1_address0,v16192_1_1_1_ce0,v16192_1_1_1_we0,v16192_1_1_1_d0,v16192_1_1_0_address0,v16192_1_1_0_ce0,v16192_1_1_0_we0,v16192_1_1_0_d0,v16192_1_0_1_address0,v16192_1_0_1_ce0,v16192_1_0_1_we0,v16192_1_0_1_d0,v16192_1_0_0_address0,v16192_1_0_0_ce0,v16192_1_0_0_we0,v16192_1_0_0_d0,v16192_0_1_1_address0,v16192_0_1_1_ce0,v16192_0_1_1_we0,v16192_0_1_1_d0,v16192_0_1_0_address0,v16192_0_1_0_ce0,v16192_0_1_0_we0,v16192_0_1_0_d0,v16192_0_0_1_address0,v16192_0_0_1_ce0,v16192_0_0_1_we0,v16192_0_0_1_d0,v16192_0_0_0_address0,v16192_0_0_0_ce0,v16192_0_0_0_we0,v16192_0_0_0_d0,p_read,v8677_15_address0,v8677_15_ce0,v8677_15_q0,v8677_14_address0,v8677_14_ce0,v8677_14_q0,v8677_13_address0,v8677_13_ce0,v8677_13_q0,v8677_12_address0,v8677_12_ce0,v8677_12_q0,v8677_11_address0,v8677_11_ce0,v8677_11_q0,v8677_10_address0,v8677_10_ce0,v8677_10_q0,v8677_9_address0,v8677_9_ce0,v8677_9_q0,v8677_8_address0,v8677_8_ce0,v8677_8_q0,v8677_7_address0,v8677_7_ce0,v8677_7_q0,v8677_6_address0,v8677_6_ce0,v8677_6_q0,v8677_5_address0,v8677_5_ce0,v8677_5_q0,v8677_4_address0,v8677_4_ce0,v8677_4_q0,v8677_3_address0,v8677_3_ce0,v8677_3_q0,v8677_2_address0,v8677_2_ce0,v8677_2_q0,v8677_1_address0,v8677_1_ce0,v8677_1_q0,v8677_address0,v8677_ce0,v8677_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v16192_3_1_1_address0;
output   v16192_3_1_1_ce0;
output   v16192_3_1_1_we0;
output  [7:0] v16192_3_1_1_d0;
output  [13:0] v16192_3_1_0_address0;
output   v16192_3_1_0_ce0;
output   v16192_3_1_0_we0;
output  [7:0] v16192_3_1_0_d0;
output  [13:0] v16192_3_0_1_address0;
output   v16192_3_0_1_ce0;
output   v16192_3_0_1_we0;
output  [7:0] v16192_3_0_1_d0;
output  [13:0] v16192_3_0_0_address0;
output   v16192_3_0_0_ce0;
output   v16192_3_0_0_we0;
output  [7:0] v16192_3_0_0_d0;
output  [13:0] v16192_2_1_1_address0;
output   v16192_2_1_1_ce0;
output   v16192_2_1_1_we0;
output  [7:0] v16192_2_1_1_d0;
output  [13:0] v16192_2_1_0_address0;
output   v16192_2_1_0_ce0;
output   v16192_2_1_0_we0;
output  [7:0] v16192_2_1_0_d0;
output  [13:0] v16192_2_0_1_address0;
output   v16192_2_0_1_ce0;
output   v16192_2_0_1_we0;
output  [7:0] v16192_2_0_1_d0;
output  [13:0] v16192_2_0_0_address0;
output   v16192_2_0_0_ce0;
output   v16192_2_0_0_we0;
output  [7:0] v16192_2_0_0_d0;
output  [13:0] v16192_1_1_1_address0;
output   v16192_1_1_1_ce0;
output   v16192_1_1_1_we0;
output  [7:0] v16192_1_1_1_d0;
output  [13:0] v16192_1_1_0_address0;
output   v16192_1_1_0_ce0;
output   v16192_1_1_0_we0;
output  [7:0] v16192_1_1_0_d0;
output  [13:0] v16192_1_0_1_address0;
output   v16192_1_0_1_ce0;
output   v16192_1_0_1_we0;
output  [7:0] v16192_1_0_1_d0;
output  [13:0] v16192_1_0_0_address0;
output   v16192_1_0_0_ce0;
output   v16192_1_0_0_we0;
output  [7:0] v16192_1_0_0_d0;
output  [13:0] v16192_0_1_1_address0;
output   v16192_0_1_1_ce0;
output   v16192_0_1_1_we0;
output  [7:0] v16192_0_1_1_d0;
output  [13:0] v16192_0_1_0_address0;
output   v16192_0_1_0_ce0;
output   v16192_0_1_0_we0;
output  [7:0] v16192_0_1_0_d0;
output  [13:0] v16192_0_0_1_address0;
output   v16192_0_0_1_ce0;
output   v16192_0_0_1_we0;
output  [7:0] v16192_0_0_1_d0;
output  [13:0] v16192_0_0_0_address0;
output   v16192_0_0_0_ce0;
output   v16192_0_0_0_we0;
output  [7:0] v16192_0_0_0_d0;
input  [4:0] p_read;
output  [8:0] v8677_15_address0;
output   v8677_15_ce0;
input  [7:0] v8677_15_q0;
output  [8:0] v8677_14_address0;
output   v8677_14_ce0;
input  [7:0] v8677_14_q0;
output  [8:0] v8677_13_address0;
output   v8677_13_ce0;
input  [7:0] v8677_13_q0;
output  [8:0] v8677_12_address0;
output   v8677_12_ce0;
input  [7:0] v8677_12_q0;
output  [8:0] v8677_11_address0;
output   v8677_11_ce0;
input  [7:0] v8677_11_q0;
output  [8:0] v8677_10_address0;
output   v8677_10_ce0;
input  [7:0] v8677_10_q0;
output  [8:0] v8677_9_address0;
output   v8677_9_ce0;
input  [7:0] v8677_9_q0;
output  [8:0] v8677_8_address0;
output   v8677_8_ce0;
input  [7:0] v8677_8_q0;
output  [8:0] v8677_7_address0;
output   v8677_7_ce0;
input  [7:0] v8677_7_q0;
output  [8:0] v8677_6_address0;
output   v8677_6_ce0;
input  [7:0] v8677_6_q0;
output  [8:0] v8677_5_address0;
output   v8677_5_ce0;
input  [7:0] v8677_5_q0;
output  [8:0] v8677_4_address0;
output   v8677_4_ce0;
input  [7:0] v8677_4_q0;
output  [8:0] v8677_3_address0;
output   v8677_3_ce0;
input  [7:0] v8677_3_q0;
output  [8:0] v8677_2_address0;
output   v8677_2_ce0;
input  [7:0] v8677_2_q0;
output  [8:0] v8677_1_address0;
output   v8677_1_ce0;
input  [7:0] v8677_1_q0;
output  [8:0] v8677_address0;
output   v8677_ce0;
input  [7:0] v8677_q0;
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
wire   [0:0] icmp_ln9972_fu_984_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [5:0] p_udiv24_cast_fu_670_p3;
reg   [5:0] p_udiv24_cast_reg_1402;
wire   [3:0] p_udiv28_cast_cast_cast_cast_fu_694_p3;
reg   [3:0] p_udiv28_cast_cast_cast_cast_reg_1407;
wire   [3:0] p_udiv30_cast_cast_cast_cast_fu_714_p3;
reg   [3:0] p_udiv30_cast_cast_cast_cast_reg_1412;
reg   [3:0] p_udiv30_cast_cast_cast_cast_reg_1412_pp0_iter1_reg;
wire   [3:0] lshr_ln_fu_828_p4;
reg   [3:0] lshr_ln_reg_1417;
reg   [5:0] tmp_665_reg_1422;
wire   [2:0] lshr_ln79_fu_876_p4;
reg   [2:0] lshr_ln79_reg_1428;
wire   [6:0] add_ln9976_fu_890_p2;
reg   [6:0] add_ln9976_reg_1433;
wire   [5:0] trunc_ln9976_fu_896_p1;
reg   [5:0] trunc_ln9976_reg_1438;
reg   [3:0] lshr_ln80_reg_1443;
reg   [3:0] lshr_ln80_reg_1443_pp0_iter1_reg;
reg   [2:0] lshr_ln9974_1_reg_1448;
reg   [2:0] lshr_ln9974_1_reg_1448_pp0_iter1_reg;
reg   [3:0] lshr_ln81_reg_1454;
reg   [3:0] lshr_ln81_reg_1454_pp0_iter1_reg;
wire   [0:0] icmp_ln9974_fu_972_p2;
reg   [0:0] icmp_ln9974_reg_1459;
wire   [0:0] icmp_ln9973_fu_978_p2;
reg   [0:0] icmp_ln9973_reg_1464;
reg   [0:0] icmp_ln9972_reg_1469;
wire   [9:0] sub_ln9983_fu_1043_p2;
reg   [9:0] sub_ln9983_reg_1473;
wire   [9:0] sub_ln10007_fu_1067_p2;
reg   [9:0] sub_ln10007_reg_1479;
wire   [3:0] empty_487_fu_1092_p2;
reg   [3:0] empty_487_reg_1485;
reg   [0:0] ap_phi_mux_icmp_ln9973291_phi_fu_635_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln9974290_phi_fu_645_p4;
wire   [63:0] zext_ln9976_4_fu_1106_p1;
wire   [63:0] zext_ln10005_1_fu_1274_p1;
wire   [63:0] zext_ln10001_fu_1287_p1;
wire   [63:0] zext_ln9981_fu_1300_p1;
wire   [63:0] zext_ln9977_fu_1311_p1;
wire   [63:0] zext_ln10007_4_fu_1325_p1;
wire   [63:0] zext_ln10003_2_fu_1338_p1;
wire   [63:0] zext_ln9983_2_fu_1351_p1;
wire   [63:0] zext_ln9979_1_fu_1362_p1;
reg   [8:0] indvar_flatten12285_fu_174;
wire   [8:0] add_ln9972_1_fu_966_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten12285_load;
reg   [5:0] v7891286_fu_178;
wire   [5:0] v7891_fu_788_p3;
reg   [5:0] ap_sig_allocacmp_v7891286_load;
reg   [5:0] indvar_flatten287_fu_182;
wire   [5:0] select_ln9973_1_fu_958_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten287_load;
reg   [3:0] v7892288_fu_186;
wire   [3:0] v7892_fu_816_p3;
reg   [3:0] ap_sig_allocacmp_v7892288_load;
reg   [3:0] v7893289_fu_190;
wire   [3:0] v7893_fu_946_p2;
reg   [3:0] ap_sig_allocacmp_v7893289_load;
reg    v8677_15_ce0_local;
reg    v8677_14_ce0_local;
reg    v8677_13_ce0_local;
reg    v8677_12_ce0_local;
reg    v8677_11_ce0_local;
reg    v8677_10_ce0_local;
reg    v8677_9_ce0_local;
reg    v8677_8_ce0_local;
reg    v8677_7_ce0_local;
reg    v8677_6_ce0_local;
reg    v8677_5_ce0_local;
reg    v8677_4_ce0_local;
reg    v8677_3_ce0_local;
reg    v8677_2_ce0_local;
reg    v8677_1_ce0_local;
reg    v8677_ce0_local;
reg    v16192_0_0_0_we0_local;
reg    v16192_0_0_0_ce0_local;
reg    v16192_0_0_1_we0_local;
reg    v16192_0_0_1_ce0_local;
reg    v16192_0_1_0_we0_local;
reg    v16192_0_1_0_ce0_local;
reg    v16192_0_1_1_we0_local;
reg    v16192_0_1_1_ce0_local;
reg    v16192_1_0_0_we0_local;
reg    v16192_1_0_0_ce0_local;
reg    v16192_1_0_1_we0_local;
reg    v16192_1_0_1_ce0_local;
reg    v16192_1_1_0_we0_local;
reg    v16192_1_1_0_ce0_local;
reg    v16192_1_1_1_we0_local;
reg    v16192_1_1_1_ce0_local;
reg    v16192_2_0_0_we0_local;
reg    v16192_2_0_0_ce0_local;
reg    v16192_2_0_1_we0_local;
reg    v16192_2_0_1_ce0_local;
reg    v16192_2_1_0_we0_local;
reg    v16192_2_1_0_ce0_local;
reg    v16192_2_1_1_we0_local;
reg    v16192_2_1_1_ce0_local;
reg    v16192_3_0_0_we0_local;
reg    v16192_3_0_0_ce0_local;
reg    v16192_3_0_1_we0_local;
reg    v16192_3_0_1_ce0_local;
reg    v16192_3_1_0_we0_local;
reg    v16192_3_1_0_ce0_local;
reg    v16192_3_1_1_we0_local;
reg    v16192_3_1_1_ce0_local;
wire   [2:0] tmp_fu_652_p4;
wire   [0:0] tmp_663_fu_678_p3;
wire   [0:0] empty_fu_702_p1;
wire   [0:0] xor_ln9972_fu_776_p2;
wire   [5:0] add_ln9972_fu_762_p2;
wire   [3:0] select_ln9972_fu_768_p3;
wire   [0:0] and_ln9972_fu_782_p2;
wire   [0:0] empty_483_fu_802_p2;
wire   [3:0] add_ln9973_fu_796_p2;
wire   [6:0] p_shl97_fu_842_p3;
wire   [6:0] zext_ln9976_fu_838_p1;
wire   [7:0] mul_i_fu_662_p3;
wire   [7:0] zext_ln9972_fu_824_p1;
wire   [7:0] empty_484_fu_856_p2;
wire   [6:0] sub_ln9976_fu_850_p2;
wire   [6:0] zext_ln9976_1_fu_886_p1;
wire   [4:0] zext_ln10870_cast_cast_cast_cast_fu_686_p3;
wire   [4:0] zext_ln9973_fu_872_p1;
wire   [4:0] empty_486_fu_900_p2;
wire   [3:0] v7893_mid2_fu_808_p3;
wire   [4:0] zext_ln10870_1_cast_cast_cast_cast_fu_706_p3;
wire   [4:0] zext_ln9974_fu_916_p1;
wire   [4:0] add_ln9977_fu_930_p2;
wire   [5:0] add_ln9973_1_fu_952_p2;
wire   [5:0] zext_ln9972_1_fu_1015_p1;
wire   [5:0] empty_485_fu_1018_p2;
wire   [6:0] tmp_664_fu_1031_p3;
wire   [9:0] p_shl98_fu_1023_p3;
wire   [9:0] zext_ln9983_fu_1039_p1;
wire   [6:0] tmp_666_fu_1056_p3;
wire   [9:0] p_shl99_fu_1049_p3;
wire   [9:0] zext_ln10007_fu_1063_p1;
wire   [8:0] tmp_667_fu_1076_p3;
wire   [8:0] zext_ln9976_2_fu_1083_p1;
wire   [3:0] zext_ln9973_1_fu_1073_p1;
wire   [8:0] sub_ln9976_1_fu_1086_p2;
wire   [8:0] zext_ln9976_3_fu_1097_p1;
wire   [8:0] add_ln9976_1_fu_1100_p2;
wire   [9:0] zext_ln10003_fu_1126_p1;
wire   [9:0] add_ln10003_fu_1129_p2;
wire   [10:0] tmp_668_fu_1142_p3;
wire   [13:0] p_shl100_fu_1134_p3;
wire   [13:0] zext_ln10003_1_fu_1150_p1;
wire   [9:0] add_ln9979_fu_1160_p2;
wire   [10:0] tmp_669_fu_1173_p3;
wire   [13:0] p_shl101_fu_1165_p3;
wire   [13:0] zext_ln9979_fu_1181_p1;
wire   [9:0] zext_ln10007_1_fu_1191_p1;
wire   [9:0] add_ln10007_fu_1194_p2;
wire   [10:0] tmp_670_fu_1207_p3;
wire   [13:0] p_shl102_fu_1199_p3;
wire   [13:0] zext_ln10007_2_fu_1215_p1;
wire   [9:0] add_ln9983_fu_1225_p2;
wire   [10:0] tmp_671_fu_1238_p3;
wire   [13:0] p_shl_fu_1230_p3;
wire   [13:0] zext_ln9983_1_fu_1246_p1;
wire   [3:0] zext_ln9974_1_fu_1256_p1;
wire   [3:0] add_ln9977_1_fu_1259_p2;
wire   [13:0] sub_ln10007_1_fu_1219_p2;
wire   [13:0] zext_ln10005_fu_1264_p1;
wire   [13:0] add_ln10005_fu_1268_p2;
wire   [13:0] sub_ln10003_fu_1154_p2;
wire   [13:0] add_ln10001_fu_1281_p2;
wire   [13:0] sub_ln9983_1_fu_1250_p2;
wire   [13:0] add_ln9981_fu_1294_p2;
wire   [13:0] sub_ln9979_fu_1185_p2;
wire   [13:0] add_ln9977_2_fu_1305_p2;
wire   [13:0] zext_ln10007_3_fu_1316_p1;
wire   [13:0] add_ln10007_1_fu_1319_p2;
wire   [13:0] add_ln10003_1_fu_1332_p2;
wire   [13:0] add_ln9983_1_fu_1345_p2;
wire   [13:0] add_ln9979_1_fu_1356_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_960;
reg    ap_condition_308;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12285_fu_174 = 9'd0;
#0 v7891286_fu_178 = 6'd0;
#0 indvar_flatten287_fu_182 = 6'd0;
#0 v7892288_fu_186 = 4'd0;
#0 v7893289_fu_190 = 4'd0;
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
    if ((1'b1 == ap_condition_308)) begin
        indvar_flatten12285_fu_174 <= add_ln9972_1_fu_966_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_308)) begin
    indvar_flatten287_fu_182 <= select_ln9973_1_fu_958_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_308)) begin
    v7891286_fu_178 <= v7891_fu_788_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_308)) begin
    v7892288_fu_186 <= v7892_fu_816_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_308)) begin
    v7893289_fu_190 <= v7893_fu_946_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln9976_reg_1433 <= add_ln9976_fu_890_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_487_reg_1485 <= empty_487_fu_1092_p2;
        icmp_ln9972_reg_1469 <= icmp_ln9972_fu_984_p2;
        lshr_ln79_reg_1428 <= {{v7892_fu_816_p3[3:1]}};
        lshr_ln80_reg_1443 <= {{empty_486_fu_900_p2[4:1]}};
        lshr_ln80_reg_1443_pp0_iter1_reg <= lshr_ln80_reg_1443;
        lshr_ln81_reg_1454 <= {{add_ln9977_fu_930_p2[4:1]}};
        lshr_ln81_reg_1454_pp0_iter1_reg <= lshr_ln81_reg_1454;
        lshr_ln9974_1_reg_1448 <= {{v7893_mid2_fu_808_p3[3:1]}};
        lshr_ln9974_1_reg_1448_pp0_iter1_reg <= lshr_ln9974_1_reg_1448;
        lshr_ln_reg_1417 <= {{v7891_fu_788_p3[5:2]}};
        p_udiv24_cast_reg_1402[5 : 3] <= p_udiv24_cast_fu_670_p3[5 : 3];
        p_udiv28_cast_cast_cast_cast_reg_1407[2 : 0] <= p_udiv28_cast_cast_cast_cast_fu_694_p3[2 : 0];
        p_udiv30_cast_cast_cast_cast_reg_1412[2 : 0] <= p_udiv30_cast_cast_cast_cast_fu_714_p3[2 : 0];
        p_udiv30_cast_cast_cast_cast_reg_1412_pp0_iter1_reg[2 : 0] <= p_udiv30_cast_cast_cast_cast_reg_1412[2 : 0];
        sub_ln10007_reg_1479[9 : 1] <= sub_ln10007_fu_1067_p2[9 : 1];
        sub_ln9983_reg_1473[9 : 1] <= sub_ln9983_fu_1043_p2[9 : 1];
        tmp_665_reg_1422 <= {{empty_484_fu_856_p2[7:2]}};
        trunc_ln9976_reg_1438 <= trunc_ln9976_fu_896_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln9973_reg_1464 <= icmp_ln9973_fu_978_p2;
        icmp_ln9974_reg_1459 <= icmp_ln9974_fu_972_p2;
    end
end
always @ (*) begin
    if (((icmp_ln9972_fu_984_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_960)) begin
            ap_phi_mux_icmp_ln9973291_phi_fu_635_p4 = icmp_ln9973_reg_1464;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln9973291_phi_fu_635_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln9973291_phi_fu_635_p4 = icmp_ln9973_reg_1464;
        end
    end else begin
        ap_phi_mux_icmp_ln9973291_phi_fu_635_p4 = icmp_ln9973_reg_1464;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_960)) begin
            ap_phi_mux_icmp_ln9974290_phi_fu_645_p4 = icmp_ln9974_reg_1459;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln9974290_phi_fu_645_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln9974290_phi_fu_645_p4 = icmp_ln9974_reg_1459;
        end
    end else begin
        ap_phi_mux_icmp_ln9974290_phi_fu_645_p4 = icmp_ln9974_reg_1459;
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
        ap_sig_allocacmp_indvar_flatten12285_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12285_load = indvar_flatten12285_fu_174;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten287_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten287_load = indvar_flatten287_fu_182;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7891286_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v7891286_load = v7891286_fu_178;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7892288_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v7892288_load = v7892288_fu_186;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7893289_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v7893289_load = v7893289_fu_190;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_0_0_0_ce0_local = 1'b1;
    end else begin
        v16192_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_0_0_0_we0_local = 1'b1;
    end else begin
        v16192_0_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_0_0_1_ce0_local = 1'b1;
    end else begin
        v16192_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_0_0_1_we0_local = 1'b1;
    end else begin
        v16192_0_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_0_1_0_ce0_local = 1'b1;
    end else begin
        v16192_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_0_1_0_we0_local = 1'b1;
    end else begin
        v16192_0_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_0_1_1_ce0_local = 1'b1;
    end else begin
        v16192_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_0_1_1_we0_local = 1'b1;
    end else begin
        v16192_0_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_1_0_0_ce0_local = 1'b1;
    end else begin
        v16192_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_1_0_0_we0_local = 1'b1;
    end else begin
        v16192_1_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_1_0_1_ce0_local = 1'b1;
    end else begin
        v16192_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_1_0_1_we0_local = 1'b1;
    end else begin
        v16192_1_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_1_1_0_ce0_local = 1'b1;
    end else begin
        v16192_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_1_1_0_we0_local = 1'b1;
    end else begin
        v16192_1_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_1_1_1_ce0_local = 1'b1;
    end else begin
        v16192_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_1_1_1_we0_local = 1'b1;
    end else begin
        v16192_1_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_2_0_0_ce0_local = 1'b1;
    end else begin
        v16192_2_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_2_0_0_we0_local = 1'b1;
    end else begin
        v16192_2_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_2_0_1_ce0_local = 1'b1;
    end else begin
        v16192_2_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_2_0_1_we0_local = 1'b1;
    end else begin
        v16192_2_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_2_1_0_ce0_local = 1'b1;
    end else begin
        v16192_2_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_2_1_0_we0_local = 1'b1;
    end else begin
        v16192_2_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_2_1_1_ce0_local = 1'b1;
    end else begin
        v16192_2_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_2_1_1_we0_local = 1'b1;
    end else begin
        v16192_2_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_3_0_0_ce0_local = 1'b1;
    end else begin
        v16192_3_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_3_0_0_we0_local = 1'b1;
    end else begin
        v16192_3_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_3_0_1_ce0_local = 1'b1;
    end else begin
        v16192_3_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_3_0_1_we0_local = 1'b1;
    end else begin
        v16192_3_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_3_1_0_ce0_local = 1'b1;
    end else begin
        v16192_3_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_3_1_0_we0_local = 1'b1;
    end else begin
        v16192_3_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_3_1_1_ce0_local = 1'b1;
    end else begin
        v16192_3_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16192_3_1_1_we0_local = 1'b1;
    end else begin
        v16192_3_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8677_10_ce0_local = 1'b1;
    end else begin
        v8677_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8677_11_ce0_local = 1'b1;
    end else begin
        v8677_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8677_12_ce0_local = 1'b1;
    end else begin
        v8677_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8677_13_ce0_local = 1'b1;
    end else begin
        v8677_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8677_14_ce0_local = 1'b1;
    end else begin
        v8677_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8677_15_ce0_local = 1'b1;
    end else begin
        v8677_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8677_1_ce0_local = 1'b1;
    end else begin
        v8677_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8677_2_ce0_local = 1'b1;
    end else begin
        v8677_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8677_3_ce0_local = 1'b1;
    end else begin
        v8677_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8677_4_ce0_local = 1'b1;
    end else begin
        v8677_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8677_5_ce0_local = 1'b1;
    end else begin
        v8677_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8677_6_ce0_local = 1'b1;
    end else begin
        v8677_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8677_7_ce0_local = 1'b1;
    end else begin
        v8677_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8677_8_ce0_local = 1'b1;
    end else begin
        v8677_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8677_9_ce0_local = 1'b1;
    end else begin
        v8677_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8677_ce0_local = 1'b1;
    end else begin
        v8677_ce0_local = 1'b0;
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
assign add_ln10001_fu_1281_p2 = (sub_ln10003_fu_1154_p2 + zext_ln10005_fu_1264_p1);
assign add_ln10003_1_fu_1332_p2 = (sub_ln10003_fu_1154_p2 + zext_ln10007_3_fu_1316_p1);
assign add_ln10003_fu_1129_p2 = (sub_ln10007_reg_1479 + zext_ln10003_fu_1126_p1);
assign add_ln10005_fu_1268_p2 = (sub_ln10007_1_fu_1219_p2 + zext_ln10005_fu_1264_p1);
assign add_ln10007_1_fu_1319_p2 = (sub_ln10007_1_fu_1219_p2 + zext_ln10007_3_fu_1316_p1);
assign add_ln10007_fu_1194_p2 = (sub_ln10007_reg_1479 + zext_ln10007_1_fu_1191_p1);
assign add_ln9972_1_fu_966_p2 = (ap_sig_allocacmp_indvar_flatten12285_load + 9'd1);
assign add_ln9972_fu_762_p2 = (ap_sig_allocacmp_v7891286_load + 6'd4);
assign add_ln9973_1_fu_952_p2 = (ap_sig_allocacmp_indvar_flatten287_load + 6'd1);
assign add_ln9973_fu_796_p2 = (select_ln9972_fu_768_p3 + 4'd2);
assign add_ln9976_1_fu_1100_p2 = (sub_ln9976_1_fu_1086_p2 + zext_ln9976_3_fu_1097_p1);
assign add_ln9976_fu_890_p2 = (sub_ln9976_fu_850_p2 + zext_ln9976_1_fu_886_p1);
assign add_ln9977_1_fu_1259_p2 = (zext_ln9974_1_fu_1256_p1 + p_udiv30_cast_cast_cast_cast_reg_1412_pp0_iter1_reg);
assign add_ln9977_2_fu_1305_p2 = (sub_ln9979_fu_1185_p2 + zext_ln10005_fu_1264_p1);
assign add_ln9977_fu_930_p2 = (zext_ln10870_1_cast_cast_cast_cast_fu_706_p3 + zext_ln9974_fu_916_p1);
assign add_ln9979_1_fu_1356_p2 = (sub_ln9979_fu_1185_p2 + zext_ln10007_3_fu_1316_p1);
assign add_ln9979_fu_1160_p2 = (sub_ln9983_reg_1473 + zext_ln10003_fu_1126_p1);
assign add_ln9981_fu_1294_p2 = (sub_ln9983_1_fu_1250_p2 + zext_ln10005_fu_1264_p1);
assign add_ln9983_1_fu_1345_p2 = (sub_ln9983_1_fu_1250_p2 + zext_ln10007_3_fu_1316_p1);
assign add_ln9983_fu_1225_p2 = (sub_ln9983_reg_1473 + zext_ln10007_1_fu_1191_p1);
assign and_ln9972_fu_782_p2 = (xor_ln9972_fu_776_p2 & ap_phi_mux_icmp_ln9974290_phi_fu_645_p4);
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
    ap_condition_308 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_960 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln9972_reg_1469 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_483_fu_802_p2 = (ap_phi_mux_icmp_ln9973291_phi_fu_635_p4 | and_ln9972_fu_782_p2);
assign empty_484_fu_856_p2 = (mul_i_fu_662_p3 + zext_ln9972_fu_824_p1);
assign empty_485_fu_1018_p2 = (zext_ln9972_1_fu_1015_p1 + p_udiv24_cast_reg_1402);
assign empty_486_fu_900_p2 = (zext_ln10870_cast_cast_cast_cast_fu_686_p3 + zext_ln9973_fu_872_p1);
assign empty_487_fu_1092_p2 = (zext_ln9973_1_fu_1073_p1 + p_udiv28_cast_cast_cast_cast_reg_1407);
assign empty_fu_702_p1 = p_read[0:0];
assign icmp_ln9972_fu_984_p2 = ((ap_sig_allocacmp_indvar_flatten12285_load == 9'd391) ? 1'b1 : 1'b0);
assign icmp_ln9973_fu_978_p2 = ((select_ln9973_1_fu_958_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln9974_fu_972_p2 = ((v7893_fu_946_p2 == 4'd14) ? 1'b1 : 1'b0);
assign lshr_ln79_fu_876_p4 = {{v7892_fu_816_p3[3:1]}};
assign lshr_ln_fu_828_p4 = {{v7891_fu_788_p3[5:2]}};
assign mul_i_fu_662_p3 = {{tmp_fu_652_p4}, {5'd0}};
assign p_shl100_fu_1134_p3 = {{add_ln10003_fu_1129_p2}, {4'd0}};
assign p_shl101_fu_1165_p3 = {{add_ln9979_fu_1160_p2}, {4'd0}};
assign p_shl102_fu_1199_p3 = {{add_ln10007_fu_1194_p2}, {4'd0}};
assign p_shl97_fu_842_p3 = {{lshr_ln_fu_828_p4}, {3'd0}};
assign p_shl98_fu_1023_p3 = {{empty_485_fu_1018_p2}, {4'd0}};
assign p_shl99_fu_1049_p3 = {{tmp_665_reg_1422}, {4'd0}};
assign p_shl_fu_1230_p3 = {{add_ln9983_fu_1225_p2}, {4'd0}};
assign p_udiv24_cast_fu_670_p3 = {{tmp_fu_652_p4}, {3'd0}};
assign p_udiv28_cast_cast_cast_cast_fu_694_p3 = ((tmp_663_fu_678_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign p_udiv30_cast_cast_cast_cast_fu_714_p3 = ((empty_fu_702_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign select_ln9972_fu_768_p3 = ((ap_phi_mux_icmp_ln9973291_phi_fu_635_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v7892288_load);
assign select_ln9973_1_fu_958_p3 = ((ap_phi_mux_icmp_ln9973291_phi_fu_635_p4[0:0] == 1'b1) ? 6'd1 : add_ln9973_1_fu_952_p2);
assign sub_ln10003_fu_1154_p2 = (p_shl100_fu_1134_p3 - zext_ln10003_1_fu_1150_p1);
assign sub_ln10007_1_fu_1219_p2 = (p_shl102_fu_1199_p3 - zext_ln10007_2_fu_1215_p1);
assign sub_ln10007_fu_1067_p2 = (p_shl99_fu_1049_p3 - zext_ln10007_fu_1063_p1);
assign sub_ln9976_1_fu_1086_p2 = (tmp_667_fu_1076_p3 - zext_ln9976_2_fu_1083_p1);
assign sub_ln9976_fu_850_p2 = (p_shl97_fu_842_p3 - zext_ln9976_fu_838_p1);
assign sub_ln9979_fu_1185_p2 = (p_shl101_fu_1165_p3 - zext_ln9979_fu_1181_p1);
assign sub_ln9983_1_fu_1250_p2 = (p_shl_fu_1230_p3 - zext_ln9983_1_fu_1246_p1);
assign sub_ln9983_fu_1043_p2 = (p_shl98_fu_1023_p3 - zext_ln9983_fu_1039_p1);
assign tmp_663_fu_678_p3 = p_read[32'd1];
assign tmp_664_fu_1031_p3 = {{empty_485_fu_1018_p2}, {1'd0}};
assign tmp_666_fu_1056_p3 = {{tmp_665_reg_1422}, {1'd0}};
assign tmp_667_fu_1076_p3 = {{trunc_ln9976_reg_1438}, {3'd0}};
assign tmp_668_fu_1142_p3 = {{add_ln10003_fu_1129_p2}, {1'd0}};
assign tmp_669_fu_1173_p3 = {{add_ln9979_fu_1160_p2}, {1'd0}};
assign tmp_670_fu_1207_p3 = {{add_ln10007_fu_1194_p2}, {1'd0}};
assign tmp_671_fu_1238_p3 = {{add_ln9983_fu_1225_p2}, {1'd0}};
assign tmp_fu_652_p4 = {{p_read[4:2]}};
assign trunc_ln9976_fu_896_p1 = add_ln9976_fu_890_p2[5:0];
assign v16192_0_0_0_address0 = zext_ln9977_fu_1311_p1;
assign v16192_0_0_0_ce0 = v16192_0_0_0_ce0_local;
assign v16192_0_0_0_d0 = v8677_15_q0;
assign v16192_0_0_0_we0 = v16192_0_0_0_we0_local;
assign v16192_0_0_1_address0 = zext_ln9979_1_fu_1362_p1;
assign v16192_0_0_1_ce0 = v16192_0_0_1_ce0_local;
assign v16192_0_0_1_d0 = v8677_14_q0;
assign v16192_0_0_1_we0 = v16192_0_0_1_we0_local;
assign v16192_0_1_0_address0 = zext_ln9981_fu_1300_p1;
assign v16192_0_1_0_ce0 = v16192_0_1_0_ce0_local;
assign v16192_0_1_0_d0 = v8677_13_q0;
assign v16192_0_1_0_we0 = v16192_0_1_0_we0_local;
assign v16192_0_1_1_address0 = zext_ln9983_2_fu_1351_p1;
assign v16192_0_1_1_ce0 = v16192_0_1_1_ce0_local;
assign v16192_0_1_1_d0 = v8677_12_q0;
assign v16192_0_1_1_we0 = v16192_0_1_1_we0_local;
assign v16192_1_0_0_address0 = zext_ln10001_fu_1287_p1;
assign v16192_1_0_0_ce0 = v16192_1_0_0_ce0_local;
assign v16192_1_0_0_d0 = v8677_11_q0;
assign v16192_1_0_0_we0 = v16192_1_0_0_we0_local;
assign v16192_1_0_1_address0 = zext_ln10003_2_fu_1338_p1;
assign v16192_1_0_1_ce0 = v16192_1_0_1_ce0_local;
assign v16192_1_0_1_d0 = v8677_10_q0;
assign v16192_1_0_1_we0 = v16192_1_0_1_we0_local;
assign v16192_1_1_0_address0 = zext_ln10005_1_fu_1274_p1;
assign v16192_1_1_0_ce0 = v16192_1_1_0_ce0_local;
assign v16192_1_1_0_d0 = v8677_9_q0;
assign v16192_1_1_0_we0 = v16192_1_1_0_we0_local;
assign v16192_1_1_1_address0 = zext_ln10007_4_fu_1325_p1;
assign v16192_1_1_1_ce0 = v16192_1_1_1_ce0_local;
assign v16192_1_1_1_d0 = v8677_8_q0;
assign v16192_1_1_1_we0 = v16192_1_1_1_we0_local;
assign v16192_2_0_0_address0 = zext_ln10001_fu_1287_p1;
assign v16192_2_0_0_ce0 = v16192_2_0_0_ce0_local;
assign v16192_2_0_0_d0 = v8677_7_q0;
assign v16192_2_0_0_we0 = v16192_2_0_0_we0_local;
assign v16192_2_0_1_address0 = zext_ln10003_2_fu_1338_p1;
assign v16192_2_0_1_ce0 = v16192_2_0_1_ce0_local;
assign v16192_2_0_1_d0 = v8677_6_q0;
assign v16192_2_0_1_we0 = v16192_2_0_1_we0_local;
assign v16192_2_1_0_address0 = zext_ln10005_1_fu_1274_p1;
assign v16192_2_1_0_ce0 = v16192_2_1_0_ce0_local;
assign v16192_2_1_0_d0 = v8677_5_q0;
assign v16192_2_1_0_we0 = v16192_2_1_0_we0_local;
assign v16192_2_1_1_address0 = zext_ln10007_4_fu_1325_p1;
assign v16192_2_1_1_ce0 = v16192_2_1_1_ce0_local;
assign v16192_2_1_1_d0 = v8677_4_q0;
assign v16192_2_1_1_we0 = v16192_2_1_1_we0_local;
assign v16192_3_0_0_address0 = zext_ln10001_fu_1287_p1;
assign v16192_3_0_0_ce0 = v16192_3_0_0_ce0_local;
assign v16192_3_0_0_d0 = v8677_3_q0;
assign v16192_3_0_0_we0 = v16192_3_0_0_we0_local;
assign v16192_3_0_1_address0 = zext_ln10003_2_fu_1338_p1;
assign v16192_3_0_1_ce0 = v16192_3_0_1_ce0_local;
assign v16192_3_0_1_d0 = v8677_2_q0;
assign v16192_3_0_1_we0 = v16192_3_0_1_we0_local;
assign v16192_3_1_0_address0 = zext_ln10005_1_fu_1274_p1;
assign v16192_3_1_0_ce0 = v16192_3_1_0_ce0_local;
assign v16192_3_1_0_d0 = v8677_1_q0;
assign v16192_3_1_0_we0 = v16192_3_1_0_we0_local;
assign v16192_3_1_1_address0 = zext_ln10007_4_fu_1325_p1;
assign v16192_3_1_1_ce0 = v16192_3_1_1_ce0_local;
assign v16192_3_1_1_d0 = v8677_q0;
assign v16192_3_1_1_we0 = v16192_3_1_1_we0_local;
assign v7891_fu_788_p3 = ((ap_phi_mux_icmp_ln9973291_phi_fu_635_p4[0:0] == 1'b1) ? add_ln9972_fu_762_p2 : ap_sig_allocacmp_v7891286_load);
assign v7892_fu_816_p3 = ((and_ln9972_fu_782_p2[0:0] == 1'b1) ? add_ln9973_fu_796_p2 : select_ln9972_fu_768_p3);
assign v7893_fu_946_p2 = (v7893_mid2_fu_808_p3 + 4'd2);
assign v7893_mid2_fu_808_p3 = ((empty_483_fu_802_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v7893289_load);
assign v8677_10_address0 = zext_ln9976_4_fu_1106_p1;
assign v8677_10_ce0 = v8677_10_ce0_local;
assign v8677_11_address0 = zext_ln9976_4_fu_1106_p1;
assign v8677_11_ce0 = v8677_11_ce0_local;
assign v8677_12_address0 = zext_ln9976_4_fu_1106_p1;
assign v8677_12_ce0 = v8677_12_ce0_local;
assign v8677_13_address0 = zext_ln9976_4_fu_1106_p1;
assign v8677_13_ce0 = v8677_13_ce0_local;
assign v8677_14_address0 = zext_ln9976_4_fu_1106_p1;
assign v8677_14_ce0 = v8677_14_ce0_local;
assign v8677_15_address0 = zext_ln9976_4_fu_1106_p1;
assign v8677_15_ce0 = v8677_15_ce0_local;
assign v8677_1_address0 = zext_ln9976_4_fu_1106_p1;
assign v8677_1_ce0 = v8677_1_ce0_local;
assign v8677_2_address0 = zext_ln9976_4_fu_1106_p1;
assign v8677_2_ce0 = v8677_2_ce0_local;
assign v8677_3_address0 = zext_ln9976_4_fu_1106_p1;
assign v8677_3_ce0 = v8677_3_ce0_local;
assign v8677_4_address0 = zext_ln9976_4_fu_1106_p1;
assign v8677_4_ce0 = v8677_4_ce0_local;
assign v8677_5_address0 = zext_ln9976_4_fu_1106_p1;
assign v8677_5_ce0 = v8677_5_ce0_local;
assign v8677_6_address0 = zext_ln9976_4_fu_1106_p1;
assign v8677_6_ce0 = v8677_6_ce0_local;
assign v8677_7_address0 = zext_ln9976_4_fu_1106_p1;
assign v8677_7_ce0 = v8677_7_ce0_local;
assign v8677_8_address0 = zext_ln9976_4_fu_1106_p1;
assign v8677_8_ce0 = v8677_8_ce0_local;
assign v8677_9_address0 = zext_ln9976_4_fu_1106_p1;
assign v8677_9_ce0 = v8677_9_ce0_local;
assign v8677_address0 = zext_ln9976_4_fu_1106_p1;
assign v8677_ce0 = v8677_ce0_local;
assign xor_ln9972_fu_776_p2 = (ap_phi_mux_icmp_ln9973291_phi_fu_635_p4 ^ 1'd1);
assign zext_ln10001_fu_1287_p1 = add_ln10001_fu_1281_p2;
assign zext_ln10003_1_fu_1150_p1 = tmp_668_fu_1142_p3;
assign zext_ln10003_2_fu_1338_p1 = add_ln10003_1_fu_1332_p2;
assign zext_ln10003_fu_1126_p1 = empty_487_reg_1485;
assign zext_ln10005_1_fu_1274_p1 = add_ln10005_fu_1268_p2;
assign zext_ln10005_fu_1264_p1 = add_ln9977_1_fu_1259_p2;
assign zext_ln10007_1_fu_1191_p1 = lshr_ln80_reg_1443_pp0_iter1_reg;
assign zext_ln10007_2_fu_1215_p1 = tmp_670_fu_1207_p3;
assign zext_ln10007_3_fu_1316_p1 = lshr_ln81_reg_1454_pp0_iter1_reg;
assign zext_ln10007_4_fu_1325_p1 = add_ln10007_1_fu_1319_p2;
assign zext_ln10007_fu_1063_p1 = tmp_666_fu_1056_p3;
assign zext_ln10870_1_cast_cast_cast_cast_fu_706_p3 = ((empty_fu_702_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln10870_cast_cast_cast_cast_fu_686_p3 = ((tmp_663_fu_678_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln9972_1_fu_1015_p1 = lshr_ln_reg_1417;
assign zext_ln9972_fu_824_p1 = v7891_fu_788_p3;
assign zext_ln9973_1_fu_1073_p1 = lshr_ln79_reg_1428;
assign zext_ln9973_fu_872_p1 = v7892_fu_816_p3;
assign zext_ln9974_1_fu_1256_p1 = lshr_ln9974_1_reg_1448_pp0_iter1_reg;
assign zext_ln9974_fu_916_p1 = v7893_mid2_fu_808_p3;
assign zext_ln9976_1_fu_886_p1 = lshr_ln79_fu_876_p4;
assign zext_ln9976_2_fu_1083_p1 = add_ln9976_reg_1433;
assign zext_ln9976_3_fu_1097_p1 = lshr_ln9974_1_reg_1448;
assign zext_ln9976_4_fu_1106_p1 = add_ln9976_1_fu_1100_p2;
assign zext_ln9976_fu_838_p1 = lshr_ln_fu_828_p4;
assign zext_ln9977_fu_1311_p1 = add_ln9977_2_fu_1305_p2;
assign zext_ln9979_1_fu_1362_p1 = add_ln9979_1_fu_1356_p2;
assign zext_ln9979_fu_1181_p1 = tmp_669_fu_1173_p3;
assign zext_ln9981_fu_1300_p1 = add_ln9981_fu_1294_p2;
assign zext_ln9983_1_fu_1246_p1 = tmp_671_fu_1238_p3;
assign zext_ln9983_2_fu_1351_p1 = add_ln9983_1_fu_1345_p2;
assign zext_ln9983_fu_1039_p1 = tmp_664_fu_1031_p3;
always @ (posedge ap_clk) begin
    p_udiv24_cast_reg_1402[2:0] <= 3'b000;
    p_udiv28_cast_cast_cast_cast_reg_1407[3] <= 1'b0;
    p_udiv30_cast_cast_cast_cast_reg_1412[3] <= 1'b0;
    p_udiv30_cast_cast_cast_cast_reg_1412_pp0_iter1_reg[3] <= 1'b0;
    sub_ln9983_reg_1473[0] <= 1'b0;
    sub_ln10007_reg_1479[0] <= 1'b0;
end
endmodule 