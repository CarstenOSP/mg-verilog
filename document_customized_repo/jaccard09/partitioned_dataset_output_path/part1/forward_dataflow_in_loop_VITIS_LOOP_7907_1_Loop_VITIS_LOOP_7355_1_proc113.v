
module forward_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7355_1_proc113 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v9233_3_1_1_address0,v9233_3_1_1_ce0,v9233_3_1_1_we0,v9233_3_1_1_d0,v9233_3_1_0_address0,v9233_3_1_0_ce0,v9233_3_1_0_we0,v9233_3_1_0_d0,v9233_3_0_1_address0,v9233_3_0_1_ce0,v9233_3_0_1_we0,v9233_3_0_1_d0,v9233_3_0_0_address0,v9233_3_0_0_ce0,v9233_3_0_0_we0,v9233_3_0_0_d0,v9233_2_1_1_address0,v9233_2_1_1_ce0,v9233_2_1_1_we0,v9233_2_1_1_d0,v9233_2_1_0_address0,v9233_2_1_0_ce0,v9233_2_1_0_we0,v9233_2_1_0_d0,v9233_2_0_1_address0,v9233_2_0_1_ce0,v9233_2_0_1_we0,v9233_2_0_1_d0,v9233_2_0_0_address0,v9233_2_0_0_ce0,v9233_2_0_0_we0,v9233_2_0_0_d0,v9233_1_1_1_address0,v9233_1_1_1_ce0,v9233_1_1_1_we0,v9233_1_1_1_d0,v9233_1_1_0_address0,v9233_1_1_0_ce0,v9233_1_1_0_we0,v9233_1_1_0_d0,v9233_1_0_1_address0,v9233_1_0_1_ce0,v9233_1_0_1_we0,v9233_1_0_1_d0,v9233_1_0_0_address0,v9233_1_0_0_ce0,v9233_1_0_0_we0,v9233_1_0_0_d0,v9233_0_1_1_address0,v9233_0_1_1_ce0,v9233_0_1_1_we0,v9233_0_1_1_d0,v9233_0_1_0_address0,v9233_0_1_0_ce0,v9233_0_1_0_we0,v9233_0_1_0_d0,v9233_0_0_1_address0,v9233_0_0_1_ce0,v9233_0_0_1_we0,v9233_0_0_1_d0,v9233_0_0_0_address0,v9233_0_0_0_ce0,v9233_0_0_0_we0,v9233_0_0_0_d0,p_read,v5282_15_address0,v5282_15_ce0,v5282_15_q0,v5282_14_address0,v5282_14_ce0,v5282_14_q0,v5282_13_address0,v5282_13_ce0,v5282_13_q0,v5282_12_address0,v5282_12_ce0,v5282_12_q0,v5282_11_address0,v5282_11_ce0,v5282_11_q0,v5282_10_address0,v5282_10_ce0,v5282_10_q0,v5282_9_address0,v5282_9_ce0,v5282_9_q0,v5282_8_address0,v5282_8_ce0,v5282_8_q0,v5282_7_address0,v5282_7_ce0,v5282_7_q0,v5282_6_address0,v5282_6_ce0,v5282_6_q0,v5282_5_address0,v5282_5_ce0,v5282_5_q0,v5282_4_address0,v5282_4_ce0,v5282_4_q0,v5282_3_address0,v5282_3_ce0,v5282_3_q0,v5282_2_address0,v5282_2_ce0,v5282_2_q0,v5282_1_address0,v5282_1_ce0,v5282_1_q0,v5282_address0,v5282_ce0,v5282_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [12:0] v9233_3_1_1_address0;
output   v9233_3_1_1_ce0;
output   v9233_3_1_1_we0;
output  [7:0] v9233_3_1_1_d0;
output  [12:0] v9233_3_1_0_address0;
output   v9233_3_1_0_ce0;
output   v9233_3_1_0_we0;
output  [7:0] v9233_3_1_0_d0;
output  [12:0] v9233_3_0_1_address0;
output   v9233_3_0_1_ce0;
output   v9233_3_0_1_we0;
output  [7:0] v9233_3_0_1_d0;
output  [12:0] v9233_3_0_0_address0;
output   v9233_3_0_0_ce0;
output   v9233_3_0_0_we0;
output  [7:0] v9233_3_0_0_d0;
output  [12:0] v9233_2_1_1_address0;
output   v9233_2_1_1_ce0;
output   v9233_2_1_1_we0;
output  [7:0] v9233_2_1_1_d0;
output  [12:0] v9233_2_1_0_address0;
output   v9233_2_1_0_ce0;
output   v9233_2_1_0_we0;
output  [7:0] v9233_2_1_0_d0;
output  [12:0] v9233_2_0_1_address0;
output   v9233_2_0_1_ce0;
output   v9233_2_0_1_we0;
output  [7:0] v9233_2_0_1_d0;
output  [12:0] v9233_2_0_0_address0;
output   v9233_2_0_0_ce0;
output   v9233_2_0_0_we0;
output  [7:0] v9233_2_0_0_d0;
output  [12:0] v9233_1_1_1_address0;
output   v9233_1_1_1_ce0;
output   v9233_1_1_1_we0;
output  [7:0] v9233_1_1_1_d0;
output  [12:0] v9233_1_1_0_address0;
output   v9233_1_1_0_ce0;
output   v9233_1_1_0_we0;
output  [7:0] v9233_1_1_0_d0;
output  [12:0] v9233_1_0_1_address0;
output   v9233_1_0_1_ce0;
output   v9233_1_0_1_we0;
output  [7:0] v9233_1_0_1_d0;
output  [12:0] v9233_1_0_0_address0;
output   v9233_1_0_0_ce0;
output   v9233_1_0_0_we0;
output  [7:0] v9233_1_0_0_d0;
output  [12:0] v9233_0_1_1_address0;
output   v9233_0_1_1_ce0;
output   v9233_0_1_1_we0;
output  [7:0] v9233_0_1_1_d0;
output  [12:0] v9233_0_1_0_address0;
output   v9233_0_1_0_ce0;
output   v9233_0_1_0_we0;
output  [7:0] v9233_0_1_0_d0;
output  [12:0] v9233_0_0_1_address0;
output   v9233_0_0_1_ce0;
output   v9233_0_0_1_we0;
output  [7:0] v9233_0_0_1_d0;
output  [12:0] v9233_0_0_0_address0;
output   v9233_0_0_0_ce0;
output   v9233_0_0_0_we0;
output  [7:0] v9233_0_0_0_d0;
input  [3:0] p_read;
output  [8:0] v5282_15_address0;
output   v5282_15_ce0;
input  [7:0] v5282_15_q0;
output  [8:0] v5282_14_address0;
output   v5282_14_ce0;
input  [7:0] v5282_14_q0;
output  [8:0] v5282_13_address0;
output   v5282_13_ce0;
input  [7:0] v5282_13_q0;
output  [8:0] v5282_12_address0;
output   v5282_12_ce0;
input  [7:0] v5282_12_q0;
output  [8:0] v5282_11_address0;
output   v5282_11_ce0;
input  [7:0] v5282_11_q0;
output  [8:0] v5282_10_address0;
output   v5282_10_ce0;
input  [7:0] v5282_10_q0;
output  [8:0] v5282_9_address0;
output   v5282_9_ce0;
input  [7:0] v5282_9_q0;
output  [8:0] v5282_8_address0;
output   v5282_8_ce0;
input  [7:0] v5282_8_q0;
output  [8:0] v5282_7_address0;
output   v5282_7_ce0;
input  [7:0] v5282_7_q0;
output  [8:0] v5282_6_address0;
output   v5282_6_ce0;
input  [7:0] v5282_6_q0;
output  [8:0] v5282_5_address0;
output   v5282_5_ce0;
input  [7:0] v5282_5_q0;
output  [8:0] v5282_4_address0;
output   v5282_4_ce0;
input  [7:0] v5282_4_q0;
output  [8:0] v5282_3_address0;
output   v5282_3_ce0;
input  [7:0] v5282_3_q0;
output  [8:0] v5282_2_address0;
output   v5282_2_ce0;
input  [7:0] v5282_2_q0;
output  [8:0] v5282_1_address0;
output   v5282_1_ce0;
input  [7:0] v5282_1_q0;
output  [8:0] v5282_address0;
output   v5282_ce0;
input  [7:0] v5282_q0;
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
wire   [0:0] icmp_ln7355_fu_972_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [1:0] tmp_fu_652_p4;
reg   [1:0] tmp_reg_1382;
wire   [3:0] p_udiv14_cast_cast_cast_cast_fu_686_p3;
reg   [3:0] p_udiv14_cast_cast_cast_cast_reg_1388;
wire   [3:0] p_udiv16_cast_cast_cast_cast_fu_706_p3;
reg   [3:0] p_udiv16_cast_cast_cast_cast_reg_1393;
reg   [3:0] p_udiv16_cast_cast_cast_cast_reg_1393_pp0_iter1_reg;
wire   [2:0] lshr_ln_fu_820_p4;
reg   [2:0] lshr_ln_reg_1398;
reg   [4:0] tmp_122_reg_1404;
wire   [2:0] lshr_ln32_fu_868_p4;
reg   [2:0] lshr_ln32_reg_1410;
wire   [5:0] add_ln7359_fu_882_p2;
reg   [5:0] add_ln7359_reg_1415;
reg   [3:0] lshr_ln33_reg_1421;
reg   [3:0] lshr_ln33_reg_1421_pp0_iter1_reg;
reg   [2:0] lshr_ln7357_1_reg_1426;
reg   [2:0] lshr_ln7357_1_reg_1426_pp0_iter1_reg;
reg   [3:0] lshr_ln34_reg_1432;
reg   [3:0] lshr_ln34_reg_1432_pp0_iter1_reg;
wire   [0:0] icmp_ln7357_fu_960_p2;
reg   [0:0] icmp_ln7357_reg_1437;
wire   [0:0] icmp_ln7356_fu_966_p2;
reg   [0:0] icmp_ln7356_reg_1442;
reg   [0:0] icmp_ln7355_reg_1447;
wire   [8:0] sub_ln7366_fu_1023_p2;
reg   [8:0] sub_ln7366_reg_1451;
wire   [8:0] sub_ln7390_fu_1047_p2;
reg   [8:0] sub_ln7390_reg_1457;
wire   [3:0] empty_224_fu_1072_p2;
reg   [3:0] empty_224_reg_1463;
reg   [0:0] ap_phi_mux_icmp_ln7356291_phi_fu_635_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln7357290_phi_fu_645_p4;
wire   [63:0] zext_ln7359_4_fu_1086_p1;
wire   [63:0] zext_ln7388_1_fu_1254_p1;
wire   [63:0] zext_ln7384_fu_1267_p1;
wire   [63:0] zext_ln7364_fu_1280_p1;
wire   [63:0] zext_ln7360_fu_1291_p1;
wire   [63:0] zext_ln7390_4_fu_1305_p1;
wire   [63:0] zext_ln7386_2_fu_1318_p1;
wire   [63:0] zext_ln7366_2_fu_1331_p1;
wire   [63:0] zext_ln7362_1_fu_1342_p1;
reg   [8:0] indvar_flatten12285_fu_174;
wire   [8:0] add_ln7355_1_fu_954_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten12285_load;
reg   [5:0] v4889286_fu_178;
wire   [5:0] v4889_fu_780_p3;
reg   [5:0] ap_sig_allocacmp_v4889286_load;
reg   [5:0] indvar_flatten287_fu_182;
wire   [5:0] select_ln7356_1_fu_946_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten287_load;
reg   [3:0] v4890288_fu_186;
wire   [3:0] v4890_fu_808_p3;
reg   [3:0] ap_sig_allocacmp_v4890288_load;
reg   [3:0] v4891289_fu_190;
wire   [3:0] v4891_fu_934_p2;
reg   [3:0] ap_sig_allocacmp_v4891289_load;
reg    v5282_15_ce0_local;
reg    v5282_14_ce0_local;
reg    v5282_13_ce0_local;
reg    v5282_12_ce0_local;
reg    v5282_11_ce0_local;
reg    v5282_10_ce0_local;
reg    v5282_9_ce0_local;
reg    v5282_8_ce0_local;
reg    v5282_7_ce0_local;
reg    v5282_6_ce0_local;
reg    v5282_5_ce0_local;
reg    v5282_4_ce0_local;
reg    v5282_3_ce0_local;
reg    v5282_2_ce0_local;
reg    v5282_1_ce0_local;
reg    v5282_ce0_local;
reg    v9233_0_0_0_we0_local;
reg    v9233_0_0_0_ce0_local;
reg    v9233_0_0_1_we0_local;
reg    v9233_0_0_1_ce0_local;
reg    v9233_0_1_0_we0_local;
reg    v9233_0_1_0_ce0_local;
reg    v9233_0_1_1_we0_local;
reg    v9233_0_1_1_ce0_local;
reg    v9233_1_0_0_we0_local;
reg    v9233_1_0_0_ce0_local;
reg    v9233_1_0_1_we0_local;
reg    v9233_1_0_1_ce0_local;
reg    v9233_1_1_0_we0_local;
reg    v9233_1_1_0_ce0_local;
reg    v9233_1_1_1_we0_local;
reg    v9233_1_1_1_ce0_local;
reg    v9233_2_0_0_we0_local;
reg    v9233_2_0_0_ce0_local;
reg    v9233_2_0_1_we0_local;
reg    v9233_2_0_1_ce0_local;
reg    v9233_2_1_0_we0_local;
reg    v9233_2_1_0_ce0_local;
reg    v9233_2_1_1_we0_local;
reg    v9233_2_1_1_ce0_local;
reg    v9233_3_0_0_we0_local;
reg    v9233_3_0_0_ce0_local;
reg    v9233_3_0_1_we0_local;
reg    v9233_3_0_1_ce0_local;
reg    v9233_3_1_0_we0_local;
reg    v9233_3_1_0_ce0_local;
reg    v9233_3_1_1_we0_local;
reg    v9233_3_1_1_ce0_local;
wire   [0:0] tmp_120_fu_670_p3;
wire   [0:0] empty_fu_694_p1;
wire   [0:0] xor_ln7355_fu_768_p2;
wire   [5:0] add_ln7355_fu_754_p2;
wire   [3:0] select_ln7355_fu_760_p3;
wire   [0:0] and_ln7355_fu_774_p2;
wire   [0:0] empty_221_fu_794_p2;
wire   [3:0] add_ln7356_fu_788_p2;
wire   [5:0] p_shl60_fu_834_p3;
wire   [5:0] zext_ln7359_fu_830_p1;
wire   [6:0] mul_i_fu_662_p3;
wire   [6:0] zext_ln7355_fu_816_p1;
wire   [6:0] empty_222_fu_848_p2;
wire   [5:0] sub_ln7359_fu_842_p2;
wire   [5:0] zext_ln7359_1_fu_878_p1;
wire   [4:0] zext_ln7858_cast_cast_cast_cast_fu_678_p3;
wire   [4:0] zext_ln7356_fu_864_p1;
wire   [4:0] empty_223_fu_888_p2;
wire   [3:0] v4891_mid2_fu_800_p3;
wire   [4:0] zext_ln7858_6_cast_cast_cast_cast_fu_698_p3;
wire   [4:0] zext_ln7357_fu_904_p1;
wire   [4:0] add_ln7360_fu_918_p2;
wire   [5:0] add_ln7356_1_fu_940_p2;
wire   [5:0] tmp_121_fu_1011_p4;
wire   [8:0] p_shl61_fu_1003_p4;
wire   [8:0] zext_ln7366_fu_1019_p1;
wire   [5:0] tmp_123_fu_1036_p3;
wire   [8:0] p_shl62_fu_1029_p3;
wire   [8:0] zext_ln7390_fu_1043_p1;
wire   [8:0] p_shl63_fu_1059_p3;
wire   [8:0] zext_ln7359_2_fu_1056_p1;
wire   [3:0] zext_ln7356_1_fu_1053_p1;
wire   [8:0] sub_ln7359_1_fu_1066_p2;
wire   [8:0] zext_ln7359_3_fu_1077_p1;
wire   [8:0] add_ln7359_1_fu_1080_p2;
wire   [8:0] zext_ln7386_fu_1106_p1;
wire   [8:0] add_ln7386_fu_1109_p2;
wire   [9:0] tmp_124_fu_1122_p3;
wire   [12:0] p_shl64_fu_1114_p3;
wire   [12:0] zext_ln7386_1_fu_1130_p1;
wire   [8:0] add_ln7362_fu_1140_p2;
wire   [9:0] tmp_125_fu_1153_p3;
wire   [12:0] p_shl65_fu_1145_p3;
wire   [12:0] zext_ln7362_fu_1161_p1;
wire   [8:0] zext_ln7390_1_fu_1171_p1;
wire   [8:0] add_ln7390_fu_1174_p2;
wire   [9:0] tmp_126_fu_1187_p3;
wire   [12:0] p_shl66_fu_1179_p3;
wire   [12:0] zext_ln7390_2_fu_1195_p1;
wire   [8:0] add_ln7366_fu_1205_p2;
wire   [9:0] tmp_127_fu_1218_p3;
wire   [12:0] p_shl_fu_1210_p3;
wire   [12:0] zext_ln7366_1_fu_1226_p1;
wire   [3:0] zext_ln7357_1_fu_1236_p1;
wire   [3:0] add_ln7360_1_fu_1239_p2;
wire   [12:0] sub_ln7390_1_fu_1199_p2;
wire   [12:0] zext_ln7388_fu_1244_p1;
wire   [12:0] add_ln7388_fu_1248_p2;
wire   [12:0] sub_ln7386_fu_1134_p2;
wire   [12:0] add_ln7384_fu_1261_p2;
wire   [12:0] sub_ln7366_1_fu_1230_p2;
wire   [12:0] add_ln7364_fu_1274_p2;
wire   [12:0] sub_ln7362_fu_1165_p2;
wire   [12:0] add_ln7360_2_fu_1285_p2;
wire   [12:0] zext_ln7390_3_fu_1296_p1;
wire   [12:0] add_ln7390_1_fu_1299_p2;
wire   [12:0] add_ln7386_1_fu_1312_p2;
wire   [12:0] add_ln7366_1_fu_1325_p2;
wire   [12:0] add_ln7362_1_fu_1336_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_948;
reg    ap_condition_306;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12285_fu_174 = 9'd0;
#0 v4889286_fu_178 = 6'd0;
#0 indvar_flatten287_fu_182 = 6'd0;
#0 v4890288_fu_186 = 4'd0;
#0 v4891289_fu_190 = 4'd0;
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
        indvar_flatten12285_fu_174 <= add_ln7355_1_fu_954_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_306)) begin
    indvar_flatten287_fu_182 <= select_ln7356_1_fu_946_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_306)) begin
    v4889286_fu_178 <= v4889_fu_780_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_306)) begin
    v4890288_fu_186 <= v4890_fu_808_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_306)) begin
    v4891289_fu_190 <= v4891_fu_934_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln7359_reg_1415 <= add_ln7359_fu_882_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_224_reg_1463 <= empty_224_fu_1072_p2;
        icmp_ln7355_reg_1447 <= icmp_ln7355_fu_972_p2;
        lshr_ln32_reg_1410 <= {{v4890_fu_808_p3[3:1]}};
        lshr_ln33_reg_1421 <= {{empty_223_fu_888_p2[4:1]}};
        lshr_ln33_reg_1421_pp0_iter1_reg <= lshr_ln33_reg_1421;
        lshr_ln34_reg_1432 <= {{add_ln7360_fu_918_p2[4:1]}};
        lshr_ln34_reg_1432_pp0_iter1_reg <= lshr_ln34_reg_1432;
        lshr_ln7357_1_reg_1426 <= {{v4891_mid2_fu_800_p3[3:1]}};
        lshr_ln7357_1_reg_1426_pp0_iter1_reg <= lshr_ln7357_1_reg_1426;
        lshr_ln_reg_1398 <= {{v4889_fu_780_p3[4:2]}};
        p_udiv14_cast_cast_cast_cast_reg_1388[2 : 0] <= p_udiv14_cast_cast_cast_cast_fu_686_p3[2 : 0];
        p_udiv16_cast_cast_cast_cast_reg_1393[2 : 0] <= p_udiv16_cast_cast_cast_cast_fu_706_p3[2 : 0];
        p_udiv16_cast_cast_cast_cast_reg_1393_pp0_iter1_reg[2 : 0] <= p_udiv16_cast_cast_cast_cast_reg_1393[2 : 0];
        sub_ln7366_reg_1451[8 : 1] <= sub_ln7366_fu_1023_p2[8 : 1];
        sub_ln7390_reg_1457[8 : 1] <= sub_ln7390_fu_1047_p2[8 : 1];
        tmp_122_reg_1404 <= {{empty_222_fu_848_p2[6:2]}};
        tmp_reg_1382 <= {{p_read[3:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln7356_reg_1442 <= icmp_ln7356_fu_966_p2;
        icmp_ln7357_reg_1437 <= icmp_ln7357_fu_960_p2;
    end
end
always @ (*) begin
    if (((icmp_ln7355_fu_972_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_948)) begin
            ap_phi_mux_icmp_ln7356291_phi_fu_635_p4 = icmp_ln7356_reg_1442;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln7356291_phi_fu_635_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln7356291_phi_fu_635_p4 = icmp_ln7356_reg_1442;
        end
    end else begin
        ap_phi_mux_icmp_ln7356291_phi_fu_635_p4 = icmp_ln7356_reg_1442;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_948)) begin
            ap_phi_mux_icmp_ln7357290_phi_fu_645_p4 = icmp_ln7357_reg_1437;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln7357290_phi_fu_645_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln7357290_phi_fu_645_p4 = icmp_ln7357_reg_1437;
        end
    end else begin
        ap_phi_mux_icmp_ln7357290_phi_fu_645_p4 = icmp_ln7357_reg_1437;
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
        ap_sig_allocacmp_v4889286_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v4889286_load = v4889286_fu_178;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4890288_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v4890288_load = v4890288_fu_186;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4891289_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v4891289_load = v4891289_fu_190;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5282_10_ce0_local = 1'b1;
    end else begin
        v5282_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5282_11_ce0_local = 1'b1;
    end else begin
        v5282_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5282_12_ce0_local = 1'b1;
    end else begin
        v5282_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5282_13_ce0_local = 1'b1;
    end else begin
        v5282_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5282_14_ce0_local = 1'b1;
    end else begin
        v5282_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5282_15_ce0_local = 1'b1;
    end else begin
        v5282_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5282_1_ce0_local = 1'b1;
    end else begin
        v5282_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5282_2_ce0_local = 1'b1;
    end else begin
        v5282_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5282_3_ce0_local = 1'b1;
    end else begin
        v5282_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5282_4_ce0_local = 1'b1;
    end else begin
        v5282_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5282_5_ce0_local = 1'b1;
    end else begin
        v5282_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5282_6_ce0_local = 1'b1;
    end else begin
        v5282_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5282_7_ce0_local = 1'b1;
    end else begin
        v5282_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5282_8_ce0_local = 1'b1;
    end else begin
        v5282_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5282_9_ce0_local = 1'b1;
    end else begin
        v5282_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5282_ce0_local = 1'b1;
    end else begin
        v5282_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_0_0_0_ce0_local = 1'b1;
    end else begin
        v9233_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_0_0_0_we0_local = 1'b1;
    end else begin
        v9233_0_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_0_0_1_ce0_local = 1'b1;
    end else begin
        v9233_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_0_0_1_we0_local = 1'b1;
    end else begin
        v9233_0_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_0_1_0_ce0_local = 1'b1;
    end else begin
        v9233_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_0_1_0_we0_local = 1'b1;
    end else begin
        v9233_0_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_0_1_1_ce0_local = 1'b1;
    end else begin
        v9233_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_0_1_1_we0_local = 1'b1;
    end else begin
        v9233_0_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_1_0_0_ce0_local = 1'b1;
    end else begin
        v9233_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_1_0_0_we0_local = 1'b1;
    end else begin
        v9233_1_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_1_0_1_ce0_local = 1'b1;
    end else begin
        v9233_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_1_0_1_we0_local = 1'b1;
    end else begin
        v9233_1_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_1_1_0_ce0_local = 1'b1;
    end else begin
        v9233_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_1_1_0_we0_local = 1'b1;
    end else begin
        v9233_1_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_1_1_1_ce0_local = 1'b1;
    end else begin
        v9233_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_1_1_1_we0_local = 1'b1;
    end else begin
        v9233_1_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_2_0_0_ce0_local = 1'b1;
    end else begin
        v9233_2_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_2_0_0_we0_local = 1'b1;
    end else begin
        v9233_2_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_2_0_1_ce0_local = 1'b1;
    end else begin
        v9233_2_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_2_0_1_we0_local = 1'b1;
    end else begin
        v9233_2_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_2_1_0_ce0_local = 1'b1;
    end else begin
        v9233_2_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_2_1_0_we0_local = 1'b1;
    end else begin
        v9233_2_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_2_1_1_ce0_local = 1'b1;
    end else begin
        v9233_2_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_2_1_1_we0_local = 1'b1;
    end else begin
        v9233_2_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_3_0_0_ce0_local = 1'b1;
    end else begin
        v9233_3_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_3_0_0_we0_local = 1'b1;
    end else begin
        v9233_3_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_3_0_1_ce0_local = 1'b1;
    end else begin
        v9233_3_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_3_0_1_we0_local = 1'b1;
    end else begin
        v9233_3_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_3_1_0_ce0_local = 1'b1;
    end else begin
        v9233_3_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_3_1_0_we0_local = 1'b1;
    end else begin
        v9233_3_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_3_1_1_ce0_local = 1'b1;
    end else begin
        v9233_3_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9233_3_1_1_we0_local = 1'b1;
    end else begin
        v9233_3_1_1_we0_local = 1'b0;
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
assign add_ln7355_1_fu_954_p2 = (ap_sig_allocacmp_indvar_flatten12285_load + 9'd1);
assign add_ln7355_fu_754_p2 = (ap_sig_allocacmp_v4889286_load + 6'd4);
assign add_ln7356_1_fu_940_p2 = (ap_sig_allocacmp_indvar_flatten287_load + 6'd1);
assign add_ln7356_fu_788_p2 = (select_ln7355_fu_760_p3 + 4'd2);
assign add_ln7359_1_fu_1080_p2 = (sub_ln7359_1_fu_1066_p2 + zext_ln7359_3_fu_1077_p1);
assign add_ln7359_fu_882_p2 = (sub_ln7359_fu_842_p2 + zext_ln7359_1_fu_878_p1);
assign add_ln7360_1_fu_1239_p2 = (zext_ln7357_1_fu_1236_p1 + p_udiv16_cast_cast_cast_cast_reg_1393_pp0_iter1_reg);
assign add_ln7360_2_fu_1285_p2 = (sub_ln7362_fu_1165_p2 + zext_ln7388_fu_1244_p1);
assign add_ln7360_fu_918_p2 = (zext_ln7858_6_cast_cast_cast_cast_fu_698_p3 + zext_ln7357_fu_904_p1);
assign add_ln7362_1_fu_1336_p2 = (sub_ln7362_fu_1165_p2 + zext_ln7390_3_fu_1296_p1);
assign add_ln7362_fu_1140_p2 = (sub_ln7366_reg_1451 + zext_ln7386_fu_1106_p1);
assign add_ln7364_fu_1274_p2 = (sub_ln7366_1_fu_1230_p2 + zext_ln7388_fu_1244_p1);
assign add_ln7366_1_fu_1325_p2 = (sub_ln7366_1_fu_1230_p2 + zext_ln7390_3_fu_1296_p1);
assign add_ln7366_fu_1205_p2 = (sub_ln7366_reg_1451 + zext_ln7390_1_fu_1171_p1);
assign add_ln7384_fu_1261_p2 = (sub_ln7386_fu_1134_p2 + zext_ln7388_fu_1244_p1);
assign add_ln7386_1_fu_1312_p2 = (sub_ln7386_fu_1134_p2 + zext_ln7390_3_fu_1296_p1);
assign add_ln7386_fu_1109_p2 = (sub_ln7390_reg_1457 + zext_ln7386_fu_1106_p1);
assign add_ln7388_fu_1248_p2 = (sub_ln7390_1_fu_1199_p2 + zext_ln7388_fu_1244_p1);
assign add_ln7390_1_fu_1299_p2 = (sub_ln7390_1_fu_1199_p2 + zext_ln7390_3_fu_1296_p1);
assign add_ln7390_fu_1174_p2 = (sub_ln7390_reg_1457 + zext_ln7390_1_fu_1171_p1);
assign and_ln7355_fu_774_p2 = (xor_ln7355_fu_768_p2 & ap_phi_mux_icmp_ln7357290_phi_fu_645_p4);
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
    ap_condition_948 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln7355_reg_1447 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_221_fu_794_p2 = (ap_phi_mux_icmp_ln7356291_phi_fu_635_p4 | and_ln7355_fu_774_p2);
assign empty_222_fu_848_p2 = (mul_i_fu_662_p3 + zext_ln7355_fu_816_p1);
assign empty_223_fu_888_p2 = (zext_ln7858_cast_cast_cast_cast_fu_678_p3 + zext_ln7356_fu_864_p1);
assign empty_224_fu_1072_p2 = (zext_ln7356_1_fu_1053_p1 + p_udiv14_cast_cast_cast_cast_reg_1388);
assign empty_fu_694_p1 = p_read[0:0];
assign icmp_ln7355_fu_972_p2 = ((ap_sig_allocacmp_indvar_flatten12285_load == 9'd391) ? 1'b1 : 1'b0);
assign icmp_ln7356_fu_966_p2 = ((select_ln7356_1_fu_946_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln7357_fu_960_p2 = ((v4891_fu_934_p2 == 4'd14) ? 1'b1 : 1'b0);
assign lshr_ln32_fu_868_p4 = {{v4890_fu_808_p3[3:1]}};
assign lshr_ln_fu_820_p4 = {{v4889_fu_780_p3[4:2]}};
assign mul_i_fu_662_p3 = {{tmp_fu_652_p4}, {5'd0}};
assign p_shl60_fu_834_p3 = {{lshr_ln_fu_820_p4}, {3'd0}};
assign p_shl61_fu_1003_p4 = {{{tmp_reg_1382}, {lshr_ln_reg_1398}}, {4'd0}};
assign p_shl62_fu_1029_p3 = {{tmp_122_reg_1404}, {4'd0}};
assign p_shl63_fu_1059_p3 = {{add_ln7359_reg_1415}, {3'd0}};
assign p_shl64_fu_1114_p3 = {{add_ln7386_fu_1109_p2}, {4'd0}};
assign p_shl65_fu_1145_p3 = {{add_ln7362_fu_1140_p2}, {4'd0}};
assign p_shl66_fu_1179_p3 = {{add_ln7390_fu_1174_p2}, {4'd0}};
assign p_shl_fu_1210_p3 = {{add_ln7366_fu_1205_p2}, {4'd0}};
assign p_udiv14_cast_cast_cast_cast_fu_686_p3 = ((tmp_120_fu_670_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign p_udiv16_cast_cast_cast_cast_fu_706_p3 = ((empty_fu_694_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign select_ln7355_fu_760_p3 = ((ap_phi_mux_icmp_ln7356291_phi_fu_635_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v4890288_load);
assign select_ln7356_1_fu_946_p3 = ((ap_phi_mux_icmp_ln7356291_phi_fu_635_p4[0:0] == 1'b1) ? 6'd1 : add_ln7356_1_fu_940_p2);
assign sub_ln7359_1_fu_1066_p2 = (p_shl63_fu_1059_p3 - zext_ln7359_2_fu_1056_p1);
assign sub_ln7359_fu_842_p2 = (p_shl60_fu_834_p3 - zext_ln7359_fu_830_p1);
assign sub_ln7362_fu_1165_p2 = (p_shl65_fu_1145_p3 - zext_ln7362_fu_1161_p1);
assign sub_ln7366_1_fu_1230_p2 = (p_shl_fu_1210_p3 - zext_ln7366_1_fu_1226_p1);
assign sub_ln7366_fu_1023_p2 = (p_shl61_fu_1003_p4 - zext_ln7366_fu_1019_p1);
assign sub_ln7386_fu_1134_p2 = (p_shl64_fu_1114_p3 - zext_ln7386_1_fu_1130_p1);
assign sub_ln7390_1_fu_1199_p2 = (p_shl66_fu_1179_p3 - zext_ln7390_2_fu_1195_p1);
assign sub_ln7390_fu_1047_p2 = (p_shl62_fu_1029_p3 - zext_ln7390_fu_1043_p1);
assign tmp_120_fu_670_p3 = p_read[32'd1];
assign tmp_121_fu_1011_p4 = {{{tmp_reg_1382}, {lshr_ln_reg_1398}}, {1'd0}};
assign tmp_123_fu_1036_p3 = {{tmp_122_reg_1404}, {1'd0}};
assign tmp_124_fu_1122_p3 = {{add_ln7386_fu_1109_p2}, {1'd0}};
assign tmp_125_fu_1153_p3 = {{add_ln7362_fu_1140_p2}, {1'd0}};
assign tmp_126_fu_1187_p3 = {{add_ln7390_fu_1174_p2}, {1'd0}};
assign tmp_127_fu_1218_p3 = {{add_ln7366_fu_1205_p2}, {1'd0}};
assign tmp_fu_652_p4 = {{p_read[3:2]}};
assign v4889_fu_780_p3 = ((ap_phi_mux_icmp_ln7356291_phi_fu_635_p4[0:0] == 1'b1) ? add_ln7355_fu_754_p2 : ap_sig_allocacmp_v4889286_load);
assign v4890_fu_808_p3 = ((and_ln7355_fu_774_p2[0:0] == 1'b1) ? add_ln7356_fu_788_p2 : select_ln7355_fu_760_p3);
assign v4891_fu_934_p2 = (v4891_mid2_fu_800_p3 + 4'd2);
assign v4891_mid2_fu_800_p3 = ((empty_221_fu_794_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v4891289_load);
assign v5282_10_address0 = zext_ln7359_4_fu_1086_p1;
assign v5282_10_ce0 = v5282_10_ce0_local;
assign v5282_11_address0 = zext_ln7359_4_fu_1086_p1;
assign v5282_11_ce0 = v5282_11_ce0_local;
assign v5282_12_address0 = zext_ln7359_4_fu_1086_p1;
assign v5282_12_ce0 = v5282_12_ce0_local;
assign v5282_13_address0 = zext_ln7359_4_fu_1086_p1;
assign v5282_13_ce0 = v5282_13_ce0_local;
assign v5282_14_address0 = zext_ln7359_4_fu_1086_p1;
assign v5282_14_ce0 = v5282_14_ce0_local;
assign v5282_15_address0 = zext_ln7359_4_fu_1086_p1;
assign v5282_15_ce0 = v5282_15_ce0_local;
assign v5282_1_address0 = zext_ln7359_4_fu_1086_p1;
assign v5282_1_ce0 = v5282_1_ce0_local;
assign v5282_2_address0 = zext_ln7359_4_fu_1086_p1;
assign v5282_2_ce0 = v5282_2_ce0_local;
assign v5282_3_address0 = zext_ln7359_4_fu_1086_p1;
assign v5282_3_ce0 = v5282_3_ce0_local;
assign v5282_4_address0 = zext_ln7359_4_fu_1086_p1;
assign v5282_4_ce0 = v5282_4_ce0_local;
assign v5282_5_address0 = zext_ln7359_4_fu_1086_p1;
assign v5282_5_ce0 = v5282_5_ce0_local;
assign v5282_6_address0 = zext_ln7359_4_fu_1086_p1;
assign v5282_6_ce0 = v5282_6_ce0_local;
assign v5282_7_address0 = zext_ln7359_4_fu_1086_p1;
assign v5282_7_ce0 = v5282_7_ce0_local;
assign v5282_8_address0 = zext_ln7359_4_fu_1086_p1;
assign v5282_8_ce0 = v5282_8_ce0_local;
assign v5282_9_address0 = zext_ln7359_4_fu_1086_p1;
assign v5282_9_ce0 = v5282_9_ce0_local;
assign v5282_address0 = zext_ln7359_4_fu_1086_p1;
assign v5282_ce0 = v5282_ce0_local;
assign v9233_0_0_0_address0 = zext_ln7360_fu_1291_p1;
assign v9233_0_0_0_ce0 = v9233_0_0_0_ce0_local;
assign v9233_0_0_0_d0 = v5282_15_q0;
assign v9233_0_0_0_we0 = v9233_0_0_0_we0_local;
assign v9233_0_0_1_address0 = zext_ln7362_1_fu_1342_p1;
assign v9233_0_0_1_ce0 = v9233_0_0_1_ce0_local;
assign v9233_0_0_1_d0 = v5282_14_q0;
assign v9233_0_0_1_we0 = v9233_0_0_1_we0_local;
assign v9233_0_1_0_address0 = zext_ln7364_fu_1280_p1;
assign v9233_0_1_0_ce0 = v9233_0_1_0_ce0_local;
assign v9233_0_1_0_d0 = v5282_13_q0;
assign v9233_0_1_0_we0 = v9233_0_1_0_we0_local;
assign v9233_0_1_1_address0 = zext_ln7366_2_fu_1331_p1;
assign v9233_0_1_1_ce0 = v9233_0_1_1_ce0_local;
assign v9233_0_1_1_d0 = v5282_12_q0;
assign v9233_0_1_1_we0 = v9233_0_1_1_we0_local;
assign v9233_1_0_0_address0 = zext_ln7384_fu_1267_p1;
assign v9233_1_0_0_ce0 = v9233_1_0_0_ce0_local;
assign v9233_1_0_0_d0 = v5282_11_q0;
assign v9233_1_0_0_we0 = v9233_1_0_0_we0_local;
assign v9233_1_0_1_address0 = zext_ln7386_2_fu_1318_p1;
assign v9233_1_0_1_ce0 = v9233_1_0_1_ce0_local;
assign v9233_1_0_1_d0 = v5282_10_q0;
assign v9233_1_0_1_we0 = v9233_1_0_1_we0_local;
assign v9233_1_1_0_address0 = zext_ln7388_1_fu_1254_p1;
assign v9233_1_1_0_ce0 = v9233_1_1_0_ce0_local;
assign v9233_1_1_0_d0 = v5282_9_q0;
assign v9233_1_1_0_we0 = v9233_1_1_0_we0_local;
assign v9233_1_1_1_address0 = zext_ln7390_4_fu_1305_p1;
assign v9233_1_1_1_ce0 = v9233_1_1_1_ce0_local;
assign v9233_1_1_1_d0 = v5282_8_q0;
assign v9233_1_1_1_we0 = v9233_1_1_1_we0_local;
assign v9233_2_0_0_address0 = zext_ln7384_fu_1267_p1;
assign v9233_2_0_0_ce0 = v9233_2_0_0_ce0_local;
assign v9233_2_0_0_d0 = v5282_7_q0;
assign v9233_2_0_0_we0 = v9233_2_0_0_we0_local;
assign v9233_2_0_1_address0 = zext_ln7386_2_fu_1318_p1;
assign v9233_2_0_1_ce0 = v9233_2_0_1_ce0_local;
assign v9233_2_0_1_d0 = v5282_6_q0;
assign v9233_2_0_1_we0 = v9233_2_0_1_we0_local;
assign v9233_2_1_0_address0 = zext_ln7388_1_fu_1254_p1;
assign v9233_2_1_0_ce0 = v9233_2_1_0_ce0_local;
assign v9233_2_1_0_d0 = v5282_5_q0;
assign v9233_2_1_0_we0 = v9233_2_1_0_we0_local;
assign v9233_2_1_1_address0 = zext_ln7390_4_fu_1305_p1;
assign v9233_2_1_1_ce0 = v9233_2_1_1_ce0_local;
assign v9233_2_1_1_d0 = v5282_4_q0;
assign v9233_2_1_1_we0 = v9233_2_1_1_we0_local;
assign v9233_3_0_0_address0 = zext_ln7384_fu_1267_p1;
assign v9233_3_0_0_ce0 = v9233_3_0_0_ce0_local;
assign v9233_3_0_0_d0 = v5282_3_q0;
assign v9233_3_0_0_we0 = v9233_3_0_0_we0_local;
assign v9233_3_0_1_address0 = zext_ln7386_2_fu_1318_p1;
assign v9233_3_0_1_ce0 = v9233_3_0_1_ce0_local;
assign v9233_3_0_1_d0 = v5282_2_q0;
assign v9233_3_0_1_we0 = v9233_3_0_1_we0_local;
assign v9233_3_1_0_address0 = zext_ln7388_1_fu_1254_p1;
assign v9233_3_1_0_ce0 = v9233_3_1_0_ce0_local;
assign v9233_3_1_0_d0 = v5282_1_q0;
assign v9233_3_1_0_we0 = v9233_3_1_0_we0_local;
assign v9233_3_1_1_address0 = zext_ln7390_4_fu_1305_p1;
assign v9233_3_1_1_ce0 = v9233_3_1_1_ce0_local;
assign v9233_3_1_1_d0 = v5282_q0;
assign v9233_3_1_1_we0 = v9233_3_1_1_we0_local;
assign xor_ln7355_fu_768_p2 = (ap_phi_mux_icmp_ln7356291_phi_fu_635_p4 ^ 1'd1);
assign zext_ln7355_fu_816_p1 = v4889_fu_780_p3;
assign zext_ln7356_1_fu_1053_p1 = lshr_ln32_reg_1410;
assign zext_ln7356_fu_864_p1 = v4890_fu_808_p3;
assign zext_ln7357_1_fu_1236_p1 = lshr_ln7357_1_reg_1426_pp0_iter1_reg;
assign zext_ln7357_fu_904_p1 = v4891_mid2_fu_800_p3;
assign zext_ln7359_1_fu_878_p1 = lshr_ln32_fu_868_p4;
assign zext_ln7359_2_fu_1056_p1 = add_ln7359_reg_1415;
assign zext_ln7359_3_fu_1077_p1 = lshr_ln7357_1_reg_1426;
assign zext_ln7359_4_fu_1086_p1 = add_ln7359_1_fu_1080_p2;
assign zext_ln7359_fu_830_p1 = lshr_ln_fu_820_p4;
assign zext_ln7360_fu_1291_p1 = add_ln7360_2_fu_1285_p2;
assign zext_ln7362_1_fu_1342_p1 = add_ln7362_1_fu_1336_p2;
assign zext_ln7362_fu_1161_p1 = tmp_125_fu_1153_p3;
assign zext_ln7364_fu_1280_p1 = add_ln7364_fu_1274_p2;
assign zext_ln7366_1_fu_1226_p1 = tmp_127_fu_1218_p3;
assign zext_ln7366_2_fu_1331_p1 = add_ln7366_1_fu_1325_p2;
assign zext_ln7366_fu_1019_p1 = tmp_121_fu_1011_p4;
assign zext_ln7384_fu_1267_p1 = add_ln7384_fu_1261_p2;
assign zext_ln7386_1_fu_1130_p1 = tmp_124_fu_1122_p3;
assign zext_ln7386_2_fu_1318_p1 = add_ln7386_1_fu_1312_p2;
assign zext_ln7386_fu_1106_p1 = empty_224_reg_1463;
assign zext_ln7388_1_fu_1254_p1 = add_ln7388_fu_1248_p2;
assign zext_ln7388_fu_1244_p1 = add_ln7360_1_fu_1239_p2;
assign zext_ln7390_1_fu_1171_p1 = lshr_ln33_reg_1421_pp0_iter1_reg;
assign zext_ln7390_2_fu_1195_p1 = tmp_126_fu_1187_p3;
assign zext_ln7390_3_fu_1296_p1 = lshr_ln34_reg_1432_pp0_iter1_reg;
assign zext_ln7390_4_fu_1305_p1 = add_ln7390_1_fu_1299_p2;
assign zext_ln7390_fu_1043_p1 = tmp_123_fu_1036_p3;
assign zext_ln7858_6_cast_cast_cast_cast_fu_698_p3 = ((empty_fu_694_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln7858_cast_cast_cast_cast_fu_678_p3 = ((tmp_120_fu_670_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
always @ (posedge ap_clk) begin
    p_udiv14_cast_cast_cast_cast_reg_1388[3] <= 1'b0;
    p_udiv16_cast_cast_cast_cast_reg_1393[3] <= 1'b0;
    p_udiv16_cast_cast_cast_cast_reg_1393_pp0_iter1_reg[3] <= 1'b0;
    sub_ln7366_reg_1451[0] <= 1'b0;
    sub_ln7390_reg_1457[0] <= 1'b0;
end
endmodule 
