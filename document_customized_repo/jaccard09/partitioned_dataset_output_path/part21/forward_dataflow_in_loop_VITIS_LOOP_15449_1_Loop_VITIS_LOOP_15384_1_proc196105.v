
module forward_dataflow_in_loop_VITIS_LOOP_15449_1_Loop_VITIS_LOOP_15384_1_proc196105 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v12276_address0,v12276_ce0,v12276_we0,v12276_d0,v12276_1_address0,v12276_1_ce0,v12276_1_we0,v12276_1_d0,v12276_2_address0,v12276_2_ce0,v12276_2_we0,v12276_2_d0,v12276_3_address0,v12276_3_ce0,v12276_3_we0,v12276_3_d0,v12276_4_address0,v12276_4_ce0,v12276_4_we0,v12276_4_d0,v12276_5_address0,v12276_5_ce0,v12276_5_we0,v12276_5_d0,v12276_6_address0,v12276_6_ce0,v12276_6_we0,v12276_6_d0,v12276_7_address0,v12276_7_ce0,v12276_7_we0,v12276_7_d0,v12276_8_address0,v12276_8_ce0,v12276_8_we0,v12276_8_d0,v12276_9_address0,v12276_9_ce0,v12276_9_we0,v12276_9_d0,v12276_10_address0,v12276_10_ce0,v12276_10_we0,v12276_10_d0,v12276_11_address0,v12276_11_ce0,v12276_11_we0,v12276_11_d0,v12276_12_address0,v12276_12_ce0,v12276_12_we0,v12276_12_d0,v12276_13_address0,v12276_13_ce0,v12276_13_we0,v12276_13_d0,v12276_14_address0,v12276_14_ce0,v12276_14_we0,v12276_14_d0,v12276_15_address0,v12276_15_ce0,v12276_15_we0,v12276_15_d0,v12269,v15457_0_0_0_address0,v15457_0_0_0_ce0,v15457_0_0_0_q0,v15457_0_0_1_address0,v15457_0_0_1_ce0,v15457_0_0_1_q0,v15457_0_1_0_address0,v15457_0_1_0_ce0,v15457_0_1_0_q0,v15457_0_1_1_address0,v15457_0_1_1_ce0,v15457_0_1_1_q0,v15457_1_0_0_address0,v15457_1_0_0_ce0,v15457_1_0_0_q0,v15457_1_0_1_address0,v15457_1_0_1_ce0,v15457_1_0_1_q0,v15457_1_1_0_address0,v15457_1_1_0_ce0,v15457_1_1_0_q0,v15457_1_1_1_address0,v15457_1_1_1_ce0,v15457_1_1_1_q0,v15457_2_0_0_address0,v15457_2_0_0_ce0,v15457_2_0_0_q0,v15457_2_0_1_address0,v15457_2_0_1_ce0,v15457_2_0_1_q0,v15457_2_1_0_address0,v15457_2_1_0_ce0,v15457_2_1_0_q0,v15457_2_1_1_address0,v15457_2_1_1_ce0,v15457_2_1_1_q0,v15457_3_0_0_address0,v15457_3_0_0_ce0,v15457_3_0_0_q0,v15457_3_0_1_address0,v15457_3_0_1_ce0,v15457_3_0_1_q0,v15457_3_1_0_address0,v15457_3_1_0_ce0,v15457_3_1_0_q0,v15457_3_1_1_address0,v15457_3_1_1_ce0,v15457_3_1_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] v12276_address0;
output   v12276_ce0;
output   v12276_we0;
output  [7:0] v12276_d0;
output  [8:0] v12276_1_address0;
output   v12276_1_ce0;
output   v12276_1_we0;
output  [7:0] v12276_1_d0;
output  [8:0] v12276_2_address0;
output   v12276_2_ce0;
output   v12276_2_we0;
output  [7:0] v12276_2_d0;
output  [8:0] v12276_3_address0;
output   v12276_3_ce0;
output   v12276_3_we0;
output  [7:0] v12276_3_d0;
output  [8:0] v12276_4_address0;
output   v12276_4_ce0;
output   v12276_4_we0;
output  [7:0] v12276_4_d0;
output  [8:0] v12276_5_address0;
output   v12276_5_ce0;
output   v12276_5_we0;
output  [7:0] v12276_5_d0;
output  [8:0] v12276_6_address0;
output   v12276_6_ce0;
output   v12276_6_we0;
output  [7:0] v12276_6_d0;
output  [8:0] v12276_7_address0;
output   v12276_7_ce0;
output   v12276_7_we0;
output  [7:0] v12276_7_d0;
output  [8:0] v12276_8_address0;
output   v12276_8_ce0;
output   v12276_8_we0;
output  [7:0] v12276_8_d0;
output  [8:0] v12276_9_address0;
output   v12276_9_ce0;
output   v12276_9_we0;
output  [7:0] v12276_9_d0;
output  [8:0] v12276_10_address0;
output   v12276_10_ce0;
output   v12276_10_we0;
output  [7:0] v12276_10_d0;
output  [8:0] v12276_11_address0;
output   v12276_11_ce0;
output   v12276_11_we0;
output  [7:0] v12276_11_d0;
output  [8:0] v12276_12_address0;
output   v12276_12_ce0;
output   v12276_12_we0;
output  [7:0] v12276_12_d0;
output  [8:0] v12276_13_address0;
output   v12276_13_ce0;
output   v12276_13_we0;
output  [7:0] v12276_13_d0;
output  [8:0] v12276_14_address0;
output   v12276_14_ce0;
output   v12276_14_we0;
output  [7:0] v12276_14_d0;
output  [8:0] v12276_15_address0;
output   v12276_15_ce0;
output   v12276_15_we0;
output  [7:0] v12276_15_d0;
input  [7:0] v12269;
output  [13:0] v15457_0_0_0_address0;
output   v15457_0_0_0_ce0;
input  [7:0] v15457_0_0_0_q0;
output  [13:0] v15457_0_0_1_address0;
output   v15457_0_0_1_ce0;
input  [7:0] v15457_0_0_1_q0;
output  [13:0] v15457_0_1_0_address0;
output   v15457_0_1_0_ce0;
input  [7:0] v15457_0_1_0_q0;
output  [13:0] v15457_0_1_1_address0;
output   v15457_0_1_1_ce0;
input  [7:0] v15457_0_1_1_q0;
output  [13:0] v15457_1_0_0_address0;
output   v15457_1_0_0_ce0;
input  [7:0] v15457_1_0_0_q0;
output  [13:0] v15457_1_0_1_address0;
output   v15457_1_0_1_ce0;
input  [7:0] v15457_1_0_1_q0;
output  [13:0] v15457_1_1_0_address0;
output   v15457_1_1_0_ce0;
input  [7:0] v15457_1_1_0_q0;
output  [13:0] v15457_1_1_1_address0;
output   v15457_1_1_1_ce0;
input  [7:0] v15457_1_1_1_q0;
output  [13:0] v15457_2_0_0_address0;
output   v15457_2_0_0_ce0;
input  [7:0] v15457_2_0_0_q0;
output  [13:0] v15457_2_0_1_address0;
output   v15457_2_0_1_ce0;
input  [7:0] v15457_2_0_1_q0;
output  [13:0] v15457_2_1_0_address0;
output   v15457_2_1_0_ce0;
input  [7:0] v15457_2_1_0_q0;
output  [13:0] v15457_2_1_1_address0;
output   v15457_2_1_1_ce0;
input  [7:0] v15457_2_1_1_q0;
output  [13:0] v15457_3_0_0_address0;
output   v15457_3_0_0_ce0;
input  [7:0] v15457_3_0_0_q0;
output  [13:0] v15457_3_0_1_address0;
output   v15457_3_0_1_ce0;
input  [7:0] v15457_3_0_1_q0;
output  [13:0] v15457_3_1_0_address0;
output   v15457_3_1_0_ce0;
input  [7:0] v15457_3_1_0_q0;
output  [13:0] v15457_3_1_1_address0;
output   v15457_3_1_1_ce0;
input  [7:0] v15457_3_1_1_q0;
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
wire   [0:0] icmp_ln15384_fu_1028_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] p_udiv34_i_cast_cast_i_cast_cast_fu_718_p3;
reg   [3:0] p_udiv34_i_cast_cast_i_cast_cast_reg_1410;
wire   [3:0] lshr_ln_i_fu_832_p4;
reg   [3:0] lshr_ln_i_reg_1415;
wire   [9:0] sub_ln15389_fu_878_p2;
reg   [9:0] sub_ln15389_reg_1421;
wire   [9:0] sub_ln15397_fu_914_p2;
reg   [9:0] sub_ln15397_reg_1427;
wire   [2:0] lshr_ln104_i_fu_924_p4;
reg   [2:0] lshr_ln104_i_reg_1433;
wire   [3:0] empty_342_fu_944_p2;
reg   [3:0] empty_342_reg_1438;
reg   [3:0] tmp_192_i_reg_1443;
reg   [2:0] lshr_ln105_i_reg_1448;
reg   [3:0] lshr_ln106_i_reg_1454;
wire   [0:0] icmp_ln15386_fu_1016_p2;
reg   [0:0] icmp_ln15386_reg_1459;
wire   [0:0] icmp_ln15385_fu_1022_p2;
reg   [0:0] icmp_ln15385_reg_1464;
reg   [0:0] icmp_ln15384_reg_1469;
wire   [8:0] add_ln15419_1_fu_1242_p2;
reg   [8:0] add_ln15419_1_reg_1473;
reg   [0:0] ap_phi_mux_icmp_ln15385195_i_phi_fu_635_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln15386194_i_phi_fu_645_p4;
wire   [63:0] zext_ln15389_4_fu_1263_p1;
wire   [63:0] zext_ln15393_2_fu_1274_p1;
wire   [63:0] zext_ln15397_2_fu_1285_p1;
wire   [63:0] zext_ln15401_1_fu_1298_p1;
wire   [63:0] zext_ln15391_1_fu_1314_p1;
wire   [63:0] zext_ln15395_fu_1325_p1;
wire   [63:0] zext_ln15399_fu_1336_p1;
wire   [63:0] zext_ln15403_fu_1349_p1;
wire   [63:0] zext_ln15419_4_fu_1356_p1;
reg   [8:0] indvar_flatten12189_i_fu_174;
wire   [8:0] add_ln15384_1_fu_1010_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten12189_i_load;
reg   [5:0] v12244190_i_fu_178;
wire   [5:0] select_ln15384_1_fu_792_p3;
reg   [5:0] ap_sig_allocacmp_v12244190_i_load;
reg   [5:0] indvar_flatten191_i_fu_182;
wire   [5:0] select_ln15385_1_fu_1002_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten191_i_load;
reg   [3:0] v12245192_i_fu_186;
wire   [3:0] select_ln15385_fu_820_p3;
reg   [3:0] ap_sig_allocacmp_v12245192_i_load;
reg   [3:0] v12246193_i_fu_190;
wire   [3:0] add_ln15386_fu_990_p2;
reg   [3:0] ap_sig_allocacmp_v12246193_i_load;
reg    v15457_0_0_0_ce0_local;
reg    v15457_0_0_1_ce0_local;
reg    v15457_0_1_0_ce0_local;
reg    v15457_0_1_1_ce0_local;
reg    v15457_1_0_0_ce0_local;
reg    v15457_1_0_1_ce0_local;
reg    v15457_1_1_0_ce0_local;
reg    v15457_1_1_1_ce0_local;
reg    v15457_2_0_0_ce0_local;
reg    v15457_2_0_1_ce0_local;
reg    v15457_2_1_0_ce0_local;
reg    v15457_2_1_1_ce0_local;
reg    v15457_3_0_0_ce0_local;
reg    v15457_3_0_1_ce0_local;
reg    v15457_3_1_0_ce0_local;
reg    v15457_3_1_1_ce0_local;
reg    v12276_15_we0_local;
reg    v12276_15_ce0_local;
reg    v12276_14_we0_local;
reg    v12276_14_ce0_local;
reg    v12276_13_we0_local;
reg    v12276_13_ce0_local;
reg    v12276_12_we0_local;
reg    v12276_12_ce0_local;
reg    v12276_11_we0_local;
reg    v12276_11_ce0_local;
reg    v12276_10_we0_local;
reg    v12276_10_ce0_local;
reg    v12276_9_we0_local;
reg    v12276_9_ce0_local;
reg    v12276_8_we0_local;
reg    v12276_8_ce0_local;
reg    v12276_7_we0_local;
reg    v12276_7_ce0_local;
reg    v12276_6_we0_local;
reg    v12276_6_ce0_local;
reg    v12276_5_we0_local;
reg    v12276_5_ce0_local;
reg    v12276_4_we0_local;
reg    v12276_4_ce0_local;
reg    v12276_3_we0_local;
reg    v12276_3_ce0_local;
reg    v12276_2_we0_local;
reg    v12276_2_ce0_local;
reg    v12276_1_we0_local;
reg    v12276_1_ce0_local;
reg    v12276_we0_local;
reg    v12276_ce0_local;
wire   [2:0] tmp_i_fu_656_p4;
wire   [8:0] v12269_cast2_fu_652_p1;
wire   [0:0] tmp_fu_682_p3;
wire   [0:0] empty_fu_706_p1;
wire   [0:0] xor_ln15384_fu_780_p2;
wire   [5:0] add_ln15384_fu_766_p2;
wire   [3:0] select_ln15384_fu_772_p3;
wire   [0:0] and_ln15384_fu_786_p2;
wire   [0:0] empty_338_fu_806_p2;
wire   [3:0] add_ln15385_fu_800_p2;
wire   [7:0] mul_i298_i_i_fu_666_p3;
wire   [7:0] zext_ln15384_fu_828_p1;
wire   [5:0] zext_ln15384_1_fu_842_p1;
wire   [5:0] p_cast6_i_i_fu_674_p3;
wire   [5:0] empty_340_fu_852_p2;
wire   [6:0] tmp_349_fu_866_p3;
wire   [9:0] p_shl50_fu_858_p3;
wire   [9:0] zext_ln15389_fu_874_p1;
wire   [7:0] empty_339_fu_846_p2;
wire   [5:0] tmp_350_fu_884_p4;
wire   [6:0] tmp_351_fu_902_p3;
wire   [9:0] p_shl48_fu_894_p3;
wire   [9:0] zext_ln15397_fu_910_p1;
wire   [4:0] zext_ln15384_cast_cast_i_cast_cast_fu_690_p3;
wire   [4:0] zext_ln15385_fu_920_p1;
wire   [3:0] zext_ln15385_1_fu_934_p1;
wire   [3:0] p_udiv32_i_cast_cast_i_cast_cast_fu_698_p3;
wire   [4:0] empty_341_fu_938_p2;
wire   [3:0] v12246_mid2_i_fu_812_p3;
wire   [4:0] zext_ln15384_1_cast_cast_i_cast_cast_fu_710_p3;
wire   [4:0] zext_ln15386_fu_960_p1;
wire   [4:0] add_ln15388_fu_974_p2;
wire   [5:0] add_ln15385_1_fu_996_p2;
wire   [6:0] p_shl52_fu_1062_p3;
wire   [6:0] zext_ln15419_fu_1059_p1;
wire   [6:0] sub_ln15419_fu_1069_p2;
wire   [6:0] zext_ln15419_1_fu_1075_p1;
wire   [6:0] add_ln15419_fu_1078_p2;
wire   [5:0] trunc_ln15419_fu_1084_p1;
wire   [8:0] tmp_352_fu_1088_p3;
wire   [8:0] zext_ln15419_2_fu_1096_p1;
wire   [9:0] zext_ln15389_1_fu_1106_p1;
wire   [9:0] add_ln15389_fu_1109_p2;
wire   [10:0] tmp_353_fu_1122_p3;
wire   [13:0] p_shl45_fu_1114_p3;
wire   [13:0] zext_ln15389_2_fu_1130_p1;
wire   [9:0] add_ln15397_fu_1140_p2;
wire   [10:0] tmp_354_fu_1153_p3;
wire   [13:0] p_shl43_fu_1145_p3;
wire   [13:0] zext_ln15397_1_fu_1161_p1;
wire   [9:0] zext_ln15393_fu_1171_p1;
wire   [9:0] add_ln15393_fu_1174_p2;
wire   [10:0] tmp_355_fu_1187_p3;
wire   [13:0] p_shl41_fu_1179_p3;
wire   [13:0] zext_ln15393_1_fu_1195_p1;
wire   [9:0] add_ln15401_fu_1205_p2;
wire   [10:0] tmp_356_fu_1218_p3;
wire   [13:0] p_shl_fu_1210_p3;
wire   [13:0] zext_ln15401_fu_1226_p1;
wire   [8:0] sub_ln15419_1_fu_1100_p2;
wire   [8:0] zext_ln15419_3_fu_1239_p1;
wire   [3:0] zext_ln15386_1_fu_1236_p1;
wire   [3:0] add_ln15389_1_fu_1248_p2;
wire   [13:0] sub_ln15389_1_fu_1134_p2;
wire   [13:0] zext_ln15389_3_fu_1253_p1;
wire   [13:0] add_ln15389_2_fu_1257_p2;
wire   [13:0] sub_ln15393_fu_1199_p2;
wire   [13:0] add_ln15393_1_fu_1268_p2;
wire   [13:0] sub_ln15397_1_fu_1165_p2;
wire   [13:0] add_ln15397_1_fu_1279_p2;
wire   [13:0] sub_ln15401_fu_1230_p2;
wire   [13:0] add_ln15401_1_fu_1292_p2;
wire   [13:0] zext_ln15391_fu_1305_p1;
wire   [13:0] add_ln15391_fu_1308_p2;
wire   [13:0] add_ln15395_fu_1319_p2;
wire   [13:0] add_ln15399_fu_1330_p2;
wire   [13:0] add_ln15403_fu_1343_p2;
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
reg    ap_condition_296;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12189_i_fu_174 = 9'd0;
#0 v12244190_i_fu_178 = 6'd0;
#0 indvar_flatten191_i_fu_182 = 6'd0;
#0 v12245192_i_fu_186 = 4'd0;
#0 v12246193_i_fu_190 = 4'd0;
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
    if ((1'b1 == ap_condition_296)) begin
        indvar_flatten12189_i_fu_174 <= add_ln15384_1_fu_1010_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_296)) begin
    indvar_flatten191_i_fu_182 <= select_ln15385_1_fu_1002_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_296)) begin
    v12244190_i_fu_178 <= select_ln15384_1_fu_792_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_296)) begin
    v12245192_i_fu_186 <= select_ln15385_fu_820_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_296)) begin
    v12246193_i_fu_190 <= add_ln15386_fu_990_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln15419_1_reg_1473 <= add_ln15419_1_fu_1242_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_342_reg_1438 <= empty_342_fu_944_p2;
        icmp_ln15384_reg_1469 <= icmp_ln15384_fu_1028_p2;
        lshr_ln104_i_reg_1433 <= {{select_ln15385_fu_820_p3[3:1]}};
        lshr_ln105_i_reg_1448 <= {{v12246_mid2_i_fu_812_p3[3:1]}};
        lshr_ln106_i_reg_1454 <= {{add_ln15388_fu_974_p2[4:1]}};
        lshr_ln_i_reg_1415 <= {{select_ln15384_1_fu_792_p3[5:2]}};
        p_udiv34_i_cast_cast_i_cast_cast_reg_1410[2 : 0] <= p_udiv34_i_cast_cast_i_cast_cast_fu_718_p3[2 : 0];
        sub_ln15389_reg_1421[9 : 1] <= sub_ln15389_fu_878_p2[9 : 1];
        sub_ln15397_reg_1427[9 : 1] <= sub_ln15397_fu_914_p2[9 : 1];
        tmp_192_i_reg_1443 <= {{empty_341_fu_938_p2[4:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln15385_reg_1464 <= icmp_ln15385_fu_1022_p2;
        icmp_ln15386_reg_1459 <= icmp_ln15386_fu_1016_p2;
    end
end
always @ (*) begin
    if (((icmp_ln15384_fu_1028_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
            ap_phi_mux_icmp_ln15385195_i_phi_fu_635_p4 = icmp_ln15385_reg_1464;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln15385195_i_phi_fu_635_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln15385195_i_phi_fu_635_p4 = icmp_ln15385_reg_1464;
        end
    end else begin
        ap_phi_mux_icmp_ln15385195_i_phi_fu_635_p4 = icmp_ln15385_reg_1464;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_951)) begin
            ap_phi_mux_icmp_ln15386194_i_phi_fu_645_p4 = icmp_ln15386_reg_1459;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln15386194_i_phi_fu_645_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln15386194_i_phi_fu_645_p4 = icmp_ln15386_reg_1459;
        end
    end else begin
        ap_phi_mux_icmp_ln15386194_i_phi_fu_645_p4 = icmp_ln15386_reg_1459;
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
        ap_sig_allocacmp_indvar_flatten12189_i_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12189_i_load = indvar_flatten12189_i_fu_174;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten191_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten191_i_load = indvar_flatten191_i_fu_182;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v12244190_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v12244190_i_load = v12244190_i_fu_178;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v12245192_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v12245192_i_load = v12245192_i_fu_186;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v12246193_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v12246193_i_load = v12246193_i_fu_190;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_10_ce0_local = 1'b1;
    end else begin
        v12276_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_10_we0_local = 1'b1;
    end else begin
        v12276_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_11_ce0_local = 1'b1;
    end else begin
        v12276_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_11_we0_local = 1'b1;
    end else begin
        v12276_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_12_ce0_local = 1'b1;
    end else begin
        v12276_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_12_we0_local = 1'b1;
    end else begin
        v12276_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_13_ce0_local = 1'b1;
    end else begin
        v12276_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_13_we0_local = 1'b1;
    end else begin
        v12276_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_14_ce0_local = 1'b1;
    end else begin
        v12276_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_14_we0_local = 1'b1;
    end else begin
        v12276_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_15_ce0_local = 1'b1;
    end else begin
        v12276_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_15_we0_local = 1'b1;
    end else begin
        v12276_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_1_ce0_local = 1'b1;
    end else begin
        v12276_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_1_we0_local = 1'b1;
    end else begin
        v12276_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_2_ce0_local = 1'b1;
    end else begin
        v12276_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_2_we0_local = 1'b1;
    end else begin
        v12276_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_3_ce0_local = 1'b1;
    end else begin
        v12276_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_3_we0_local = 1'b1;
    end else begin
        v12276_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_4_ce0_local = 1'b1;
    end else begin
        v12276_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_4_we0_local = 1'b1;
    end else begin
        v12276_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_5_ce0_local = 1'b1;
    end else begin
        v12276_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_5_we0_local = 1'b1;
    end else begin
        v12276_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_6_ce0_local = 1'b1;
    end else begin
        v12276_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_6_we0_local = 1'b1;
    end else begin
        v12276_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_7_ce0_local = 1'b1;
    end else begin
        v12276_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_7_we0_local = 1'b1;
    end else begin
        v12276_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_8_ce0_local = 1'b1;
    end else begin
        v12276_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_8_we0_local = 1'b1;
    end else begin
        v12276_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_9_ce0_local = 1'b1;
    end else begin
        v12276_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_9_we0_local = 1'b1;
    end else begin
        v12276_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_ce0_local = 1'b1;
    end else begin
        v12276_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12276_we0_local = 1'b1;
    end else begin
        v12276_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15457_0_0_0_ce0_local = 1'b1;
    end else begin
        v15457_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15457_0_0_1_ce0_local = 1'b1;
    end else begin
        v15457_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15457_0_1_0_ce0_local = 1'b1;
    end else begin
        v15457_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15457_0_1_1_ce0_local = 1'b1;
    end else begin
        v15457_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15457_1_0_0_ce0_local = 1'b1;
    end else begin
        v15457_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15457_1_0_1_ce0_local = 1'b1;
    end else begin
        v15457_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15457_1_1_0_ce0_local = 1'b1;
    end else begin
        v15457_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15457_1_1_1_ce0_local = 1'b1;
    end else begin
        v15457_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15457_2_0_0_ce0_local = 1'b1;
    end else begin
        v15457_2_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15457_2_0_1_ce0_local = 1'b1;
    end else begin
        v15457_2_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15457_2_1_0_ce0_local = 1'b1;
    end else begin
        v15457_2_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15457_2_1_1_ce0_local = 1'b1;
    end else begin
        v15457_2_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15457_3_0_0_ce0_local = 1'b1;
    end else begin
        v15457_3_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15457_3_0_1_ce0_local = 1'b1;
    end else begin
        v15457_3_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15457_3_1_0_ce0_local = 1'b1;
    end else begin
        v15457_3_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15457_3_1_1_ce0_local = 1'b1;
    end else begin
        v15457_3_1_1_ce0_local = 1'b0;
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
assign add_ln15384_1_fu_1010_p2 = (ap_sig_allocacmp_indvar_flatten12189_i_load + 9'd1);
assign add_ln15384_fu_766_p2 = (ap_sig_allocacmp_v12244190_i_load + 6'd4);
assign add_ln15385_1_fu_996_p2 = (ap_sig_allocacmp_indvar_flatten191_i_load + 6'd1);
assign add_ln15385_fu_800_p2 = (select_ln15384_fu_772_p3 + 4'd2);
assign add_ln15386_fu_990_p2 = (v12246_mid2_i_fu_812_p3 + 4'd2);
assign add_ln15388_fu_974_p2 = (zext_ln15384_1_cast_cast_i_cast_cast_fu_710_p3 + zext_ln15386_fu_960_p1);
assign add_ln15389_1_fu_1248_p2 = (zext_ln15386_1_fu_1236_p1 + p_udiv34_i_cast_cast_i_cast_cast_reg_1410);
assign add_ln15389_2_fu_1257_p2 = (sub_ln15389_1_fu_1134_p2 + zext_ln15389_3_fu_1253_p1);
assign add_ln15389_fu_1109_p2 = (sub_ln15389_reg_1421 + zext_ln15389_1_fu_1106_p1);
assign add_ln15391_fu_1308_p2 = (sub_ln15389_1_fu_1134_p2 + zext_ln15391_fu_1305_p1);
assign add_ln15393_1_fu_1268_p2 = (sub_ln15393_fu_1199_p2 + zext_ln15389_3_fu_1253_p1);
assign add_ln15393_fu_1174_p2 = (sub_ln15389_reg_1421 + zext_ln15393_fu_1171_p1);
assign add_ln15395_fu_1319_p2 = (sub_ln15393_fu_1199_p2 + zext_ln15391_fu_1305_p1);
assign add_ln15397_1_fu_1279_p2 = (sub_ln15397_1_fu_1165_p2 + zext_ln15389_3_fu_1253_p1);
assign add_ln15397_fu_1140_p2 = (sub_ln15397_reg_1427 + zext_ln15389_1_fu_1106_p1);
assign add_ln15399_fu_1330_p2 = (sub_ln15397_1_fu_1165_p2 + zext_ln15391_fu_1305_p1);
assign add_ln15401_1_fu_1292_p2 = (sub_ln15401_fu_1230_p2 + zext_ln15389_3_fu_1253_p1);
assign add_ln15401_fu_1205_p2 = (sub_ln15397_reg_1427 + zext_ln15393_fu_1171_p1);
assign add_ln15403_fu_1343_p2 = (sub_ln15401_fu_1230_p2 + zext_ln15391_fu_1305_p1);
assign add_ln15419_1_fu_1242_p2 = (sub_ln15419_1_fu_1100_p2 + zext_ln15419_3_fu_1239_p1);
assign add_ln15419_fu_1078_p2 = (sub_ln15419_fu_1069_p2 + zext_ln15419_1_fu_1075_p1);
assign and_ln15384_fu_786_p2 = (xor_ln15384_fu_780_p2 & ap_phi_mux_icmp_ln15386194_i_phi_fu_645_p4);
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
    ap_condition_296 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_951 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln15384_reg_1469 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_338_fu_806_p2 = (ap_phi_mux_icmp_ln15385195_i_phi_fu_635_p4 | and_ln15384_fu_786_p2);
assign empty_339_fu_846_p2 = (mul_i298_i_i_fu_666_p3 + zext_ln15384_fu_828_p1);
assign empty_340_fu_852_p2 = (zext_ln15384_1_fu_842_p1 + p_cast6_i_i_fu_674_p3);
assign empty_341_fu_938_p2 = (zext_ln15384_cast_cast_i_cast_cast_fu_690_p3 + zext_ln15385_fu_920_p1);
assign empty_342_fu_944_p2 = (zext_ln15385_1_fu_934_p1 + p_udiv32_i_cast_cast_i_cast_cast_fu_698_p3);
assign empty_fu_706_p1 = v12269[0:0];
assign icmp_ln15384_fu_1028_p2 = ((ap_sig_allocacmp_indvar_flatten12189_i_load == 9'd391) ? 1'b1 : 1'b0);
assign icmp_ln15385_fu_1022_p2 = ((select_ln15385_1_fu_1002_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln15386_fu_1016_p2 = ((add_ln15386_fu_990_p2 == 4'd14) ? 1'b1 : 1'b0);
assign lshr_ln104_i_fu_924_p4 = {{select_ln15385_fu_820_p3[3:1]}};
assign lshr_ln_i_fu_832_p4 = {{select_ln15384_1_fu_792_p3[5:2]}};
assign mul_i298_i_i_fu_666_p3 = {{tmp_i_fu_656_p4}, {5'd0}};
assign p_cast6_i_i_fu_674_p3 = {{tmp_i_fu_656_p4}, {3'd0}};
assign p_shl41_fu_1179_p3 = {{add_ln15393_fu_1174_p2}, {4'd0}};
assign p_shl43_fu_1145_p3 = {{add_ln15397_fu_1140_p2}, {4'd0}};
assign p_shl45_fu_1114_p3 = {{add_ln15389_fu_1109_p2}, {4'd0}};
assign p_shl48_fu_894_p3 = {{tmp_350_fu_884_p4}, {4'd0}};
assign p_shl50_fu_858_p3 = {{empty_340_fu_852_p2}, {4'd0}};
assign p_shl52_fu_1062_p3 = {{lshr_ln_i_reg_1415}, {3'd0}};
assign p_shl_fu_1210_p3 = {{add_ln15401_fu_1205_p2}, {4'd0}};
assign p_udiv32_i_cast_cast_i_cast_cast_fu_698_p3 = ((tmp_fu_682_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign p_udiv34_i_cast_cast_i_cast_cast_fu_718_p3 = ((empty_fu_706_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign select_ln15384_1_fu_792_p3 = ((ap_phi_mux_icmp_ln15385195_i_phi_fu_635_p4[0:0] == 1'b1) ? add_ln15384_fu_766_p2 : ap_sig_allocacmp_v12244190_i_load);
assign select_ln15384_fu_772_p3 = ((ap_phi_mux_icmp_ln15385195_i_phi_fu_635_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v12245192_i_load);
assign select_ln15385_1_fu_1002_p3 = ((ap_phi_mux_icmp_ln15385195_i_phi_fu_635_p4[0:0] == 1'b1) ? 6'd1 : add_ln15385_1_fu_996_p2);
assign select_ln15385_fu_820_p3 = ((and_ln15384_fu_786_p2[0:0] == 1'b1) ? add_ln15385_fu_800_p2 : select_ln15384_fu_772_p3);
assign sub_ln15389_1_fu_1134_p2 = (p_shl45_fu_1114_p3 - zext_ln15389_2_fu_1130_p1);
assign sub_ln15389_fu_878_p2 = (p_shl50_fu_858_p3 - zext_ln15389_fu_874_p1);
assign sub_ln15393_fu_1199_p2 = (p_shl41_fu_1179_p3 - zext_ln15393_1_fu_1195_p1);
assign sub_ln15397_1_fu_1165_p2 = (p_shl43_fu_1145_p3 - zext_ln15397_1_fu_1161_p1);
assign sub_ln15397_fu_914_p2 = (p_shl48_fu_894_p3 - zext_ln15397_fu_910_p1);
assign sub_ln15401_fu_1230_p2 = (p_shl_fu_1210_p3 - zext_ln15401_fu_1226_p1);
assign sub_ln15419_1_fu_1100_p2 = (tmp_352_fu_1088_p3 - zext_ln15419_2_fu_1096_p1);
assign sub_ln15419_fu_1069_p2 = (p_shl52_fu_1062_p3 - zext_ln15419_fu_1059_p1);
assign tmp_349_fu_866_p3 = {{empty_340_fu_852_p2}, {1'd0}};
assign tmp_350_fu_884_p4 = {{empty_339_fu_846_p2[7:2]}};
assign tmp_351_fu_902_p3 = {{tmp_350_fu_884_p4}, {1'd0}};
assign tmp_352_fu_1088_p3 = {{trunc_ln15419_fu_1084_p1}, {3'd0}};
assign tmp_353_fu_1122_p3 = {{add_ln15389_fu_1109_p2}, {1'd0}};
assign tmp_354_fu_1153_p3 = {{add_ln15397_fu_1140_p2}, {1'd0}};
assign tmp_355_fu_1187_p3 = {{add_ln15393_fu_1174_p2}, {1'd0}};
assign tmp_356_fu_1218_p3 = {{add_ln15401_fu_1205_p2}, {1'd0}};
assign tmp_fu_682_p3 = v12269_cast2_fu_652_p1[32'd1];
assign tmp_i_fu_656_p4 = {{v12269[7:5]}};
assign trunc_ln15419_fu_1084_p1 = add_ln15419_fu_1078_p2[5:0];
assign v12246_mid2_i_fu_812_p3 = ((empty_338_fu_806_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v12246193_i_load);
assign v12269_cast2_fu_652_p1 = v12269;
assign v12276_10_address0 = zext_ln15419_4_fu_1356_p1;
assign v12276_10_ce0 = v12276_10_ce0_local;
assign v12276_10_d0 = v15457_1_0_1_q0;
assign v12276_10_we0 = v12276_10_we0_local;
assign v12276_11_address0 = zext_ln15419_4_fu_1356_p1;
assign v12276_11_ce0 = v12276_11_ce0_local;
assign v12276_11_d0 = v15457_1_0_0_q0;
assign v12276_11_we0 = v12276_11_we0_local;
assign v12276_12_address0 = zext_ln15419_4_fu_1356_p1;
assign v12276_12_ce0 = v12276_12_ce0_local;
assign v12276_12_d0 = v15457_0_1_1_q0;
assign v12276_12_we0 = v12276_12_we0_local;
assign v12276_13_address0 = zext_ln15419_4_fu_1356_p1;
assign v12276_13_ce0 = v12276_13_ce0_local;
assign v12276_13_d0 = v15457_0_1_0_q0;
assign v12276_13_we0 = v12276_13_we0_local;
assign v12276_14_address0 = zext_ln15419_4_fu_1356_p1;
assign v12276_14_ce0 = v12276_14_ce0_local;
assign v12276_14_d0 = v15457_0_0_1_q0;
assign v12276_14_we0 = v12276_14_we0_local;
assign v12276_15_address0 = zext_ln15419_4_fu_1356_p1;
assign v12276_15_ce0 = v12276_15_ce0_local;
assign v12276_15_d0 = v15457_0_0_0_q0;
assign v12276_15_we0 = v12276_15_we0_local;
assign v12276_1_address0 = zext_ln15419_4_fu_1356_p1;
assign v12276_1_ce0 = v12276_1_ce0_local;
assign v12276_1_d0 = v15457_3_1_0_q0;
assign v12276_1_we0 = v12276_1_we0_local;
assign v12276_2_address0 = zext_ln15419_4_fu_1356_p1;
assign v12276_2_ce0 = v12276_2_ce0_local;
assign v12276_2_d0 = v15457_3_0_1_q0;
assign v12276_2_we0 = v12276_2_we0_local;
assign v12276_3_address0 = zext_ln15419_4_fu_1356_p1;
assign v12276_3_ce0 = v12276_3_ce0_local;
assign v12276_3_d0 = v15457_3_0_0_q0;
assign v12276_3_we0 = v12276_3_we0_local;
assign v12276_4_address0 = zext_ln15419_4_fu_1356_p1;
assign v12276_4_ce0 = v12276_4_ce0_local;
assign v12276_4_d0 = v15457_2_1_1_q0;
assign v12276_4_we0 = v12276_4_we0_local;
assign v12276_5_address0 = zext_ln15419_4_fu_1356_p1;
assign v12276_5_ce0 = v12276_5_ce0_local;
assign v12276_5_d0 = v15457_2_1_0_q0;
assign v12276_5_we0 = v12276_5_we0_local;
assign v12276_6_address0 = zext_ln15419_4_fu_1356_p1;
assign v12276_6_ce0 = v12276_6_ce0_local;
assign v12276_6_d0 = v15457_2_0_1_q0;
assign v12276_6_we0 = v12276_6_we0_local;
assign v12276_7_address0 = zext_ln15419_4_fu_1356_p1;
assign v12276_7_ce0 = v12276_7_ce0_local;
assign v12276_7_d0 = v15457_2_0_0_q0;
assign v12276_7_we0 = v12276_7_we0_local;
assign v12276_8_address0 = zext_ln15419_4_fu_1356_p1;
assign v12276_8_ce0 = v12276_8_ce0_local;
assign v12276_8_d0 = v15457_1_1_1_q0;
assign v12276_8_we0 = v12276_8_we0_local;
assign v12276_9_address0 = zext_ln15419_4_fu_1356_p1;
assign v12276_9_ce0 = v12276_9_ce0_local;
assign v12276_9_d0 = v15457_1_1_0_q0;
assign v12276_9_we0 = v12276_9_we0_local;
assign v12276_address0 = zext_ln15419_4_fu_1356_p1;
assign v12276_ce0 = v12276_ce0_local;
assign v12276_d0 = v15457_3_1_1_q0;
assign v12276_we0 = v12276_we0_local;
assign v15457_0_0_0_address0 = zext_ln15389_4_fu_1263_p1;
assign v15457_0_0_0_ce0 = v15457_0_0_0_ce0_local;
assign v15457_0_0_1_address0 = zext_ln15391_1_fu_1314_p1;
assign v15457_0_0_1_ce0 = v15457_0_0_1_ce0_local;
assign v15457_0_1_0_address0 = zext_ln15393_2_fu_1274_p1;
assign v15457_0_1_0_ce0 = v15457_0_1_0_ce0_local;
assign v15457_0_1_1_address0 = zext_ln15395_fu_1325_p1;
assign v15457_0_1_1_ce0 = v15457_0_1_1_ce0_local;
assign v15457_1_0_0_address0 = zext_ln15397_2_fu_1285_p1;
assign v15457_1_0_0_ce0 = v15457_1_0_0_ce0_local;
assign v15457_1_0_1_address0 = zext_ln15399_fu_1336_p1;
assign v15457_1_0_1_ce0 = v15457_1_0_1_ce0_local;
assign v15457_1_1_0_address0 = zext_ln15401_1_fu_1298_p1;
assign v15457_1_1_0_ce0 = v15457_1_1_0_ce0_local;
assign v15457_1_1_1_address0 = zext_ln15403_fu_1349_p1;
assign v15457_1_1_1_ce0 = v15457_1_1_1_ce0_local;
assign v15457_2_0_0_address0 = zext_ln15397_2_fu_1285_p1;
assign v15457_2_0_0_ce0 = v15457_2_0_0_ce0_local;
assign v15457_2_0_1_address0 = zext_ln15399_fu_1336_p1;
assign v15457_2_0_1_ce0 = v15457_2_0_1_ce0_local;
assign v15457_2_1_0_address0 = zext_ln15401_1_fu_1298_p1;
assign v15457_2_1_0_ce0 = v15457_2_1_0_ce0_local;
assign v15457_2_1_1_address0 = zext_ln15403_fu_1349_p1;
assign v15457_2_1_1_ce0 = v15457_2_1_1_ce0_local;
assign v15457_3_0_0_address0 = zext_ln15397_2_fu_1285_p1;
assign v15457_3_0_0_ce0 = v15457_3_0_0_ce0_local;
assign v15457_3_0_1_address0 = zext_ln15399_fu_1336_p1;
assign v15457_3_0_1_ce0 = v15457_3_0_1_ce0_local;
assign v15457_3_1_0_address0 = zext_ln15401_1_fu_1298_p1;
assign v15457_3_1_0_ce0 = v15457_3_1_0_ce0_local;
assign v15457_3_1_1_address0 = zext_ln15403_fu_1349_p1;
assign v15457_3_1_1_ce0 = v15457_3_1_1_ce0_local;
assign xor_ln15384_fu_780_p2 = (ap_phi_mux_icmp_ln15385195_i_phi_fu_635_p4 ^ 1'd1);
assign zext_ln15384_1_cast_cast_i_cast_cast_fu_710_p3 = ((empty_fu_706_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln15384_1_fu_842_p1 = lshr_ln_i_fu_832_p4;
assign zext_ln15384_cast_cast_i_cast_cast_fu_690_p3 = ((tmp_fu_682_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln15384_fu_828_p1 = select_ln15384_1_fu_792_p3;
assign zext_ln15385_1_fu_934_p1 = lshr_ln104_i_fu_924_p4;
assign zext_ln15385_fu_920_p1 = select_ln15385_fu_820_p3;
assign zext_ln15386_1_fu_1236_p1 = lshr_ln105_i_reg_1448;
assign zext_ln15386_fu_960_p1 = v12246_mid2_i_fu_812_p3;
assign zext_ln15389_1_fu_1106_p1 = empty_342_reg_1438;
assign zext_ln15389_2_fu_1130_p1 = tmp_353_fu_1122_p3;
assign zext_ln15389_3_fu_1253_p1 = add_ln15389_1_fu_1248_p2;
assign zext_ln15389_4_fu_1263_p1 = add_ln15389_2_fu_1257_p2;
assign zext_ln15389_fu_874_p1 = tmp_349_fu_866_p3;
assign zext_ln15391_1_fu_1314_p1 = add_ln15391_fu_1308_p2;
assign zext_ln15391_fu_1305_p1 = lshr_ln106_i_reg_1454;
assign zext_ln15393_1_fu_1195_p1 = tmp_355_fu_1187_p3;
assign zext_ln15393_2_fu_1274_p1 = add_ln15393_1_fu_1268_p2;
assign zext_ln15393_fu_1171_p1 = tmp_192_i_reg_1443;
assign zext_ln15395_fu_1325_p1 = add_ln15395_fu_1319_p2;
assign zext_ln15397_1_fu_1161_p1 = tmp_354_fu_1153_p3;
assign zext_ln15397_2_fu_1285_p1 = add_ln15397_1_fu_1279_p2;
assign zext_ln15397_fu_910_p1 = tmp_351_fu_902_p3;
assign zext_ln15399_fu_1336_p1 = add_ln15399_fu_1330_p2;
assign zext_ln15401_1_fu_1298_p1 = add_ln15401_1_fu_1292_p2;
assign zext_ln15401_fu_1226_p1 = tmp_356_fu_1218_p3;
assign zext_ln15403_fu_1349_p1 = add_ln15403_fu_1343_p2;
assign zext_ln15419_1_fu_1075_p1 = lshr_ln104_i_reg_1433;
assign zext_ln15419_2_fu_1096_p1 = add_ln15419_fu_1078_p2;
assign zext_ln15419_3_fu_1239_p1 = lshr_ln105_i_reg_1448;
assign zext_ln15419_4_fu_1356_p1 = add_ln15419_1_reg_1473;
assign zext_ln15419_fu_1059_p1 = lshr_ln_i_reg_1415;
always @ (posedge ap_clk) begin
    p_udiv34_i_cast_cast_i_cast_cast_reg_1410[3] <= 1'b0;
    sub_ln15389_reg_1421[0] <= 1'b0;
    sub_ln15397_reg_1427[0] <= 1'b0;
end
endmodule 
