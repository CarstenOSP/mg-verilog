
module forward_dataflow_in_loop_VITIS_LOOP_10939_1_Loop_VITIS_LOOP_10870_1_proc100 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v8676_address0,v8676_ce0,v8676_we0,v8676_d0,v8676_1_address0,v8676_1_ce0,v8676_1_we0,v8676_1_d0,v8676_2_address0,v8676_2_ce0,v8676_2_we0,v8676_2_d0,v8676_3_address0,v8676_3_ce0,v8676_3_we0,v8676_3_d0,v8676_4_address0,v8676_4_ce0,v8676_4_we0,v8676_4_d0,v8676_5_address0,v8676_5_ce0,v8676_5_we0,v8676_5_d0,v8676_6_address0,v8676_6_ce0,v8676_6_we0,v8676_6_d0,v8676_7_address0,v8676_7_ce0,v8676_7_we0,v8676_7_d0,v8676_8_address0,v8676_8_ce0,v8676_8_we0,v8676_8_d0,v8676_9_address0,v8676_9_ce0,v8676_9_we0,v8676_9_d0,v8676_10_address0,v8676_10_ce0,v8676_10_we0,v8676_10_d0,v8676_11_address0,v8676_11_ce0,v8676_11_we0,v8676_11_d0,v8676_12_address0,v8676_12_ce0,v8676_12_we0,v8676_12_d0,v8676_13_address0,v8676_13_ce0,v8676_13_we0,v8676_13_d0,v8676_14_address0,v8676_14_ce0,v8676_14_we0,v8676_14_d0,v8676_15_address0,v8676_15_ce0,v8676_15_we0,v8676_15_d0,v8667_0,v16193_0_0_0_address0,v16193_0_0_0_ce0,v16193_0_0_0_q0,v16193_0_0_1_address0,v16193_0_0_1_ce0,v16193_0_0_1_q0,v16193_0_1_0_address0,v16193_0_1_0_ce0,v16193_0_1_0_q0,v16193_0_1_1_address0,v16193_0_1_1_ce0,v16193_0_1_1_q0,v16193_1_0_0_address0,v16193_1_0_0_ce0,v16193_1_0_0_q0,v16193_1_0_1_address0,v16193_1_0_1_ce0,v16193_1_0_1_q0,v16193_1_1_0_address0,v16193_1_1_0_ce0,v16193_1_1_0_q0,v16193_1_1_1_address0,v16193_1_1_1_ce0,v16193_1_1_1_q0,v16193_2_0_0_address0,v16193_2_0_0_ce0,v16193_2_0_0_q0,v16193_2_0_1_address0,v16193_2_0_1_ce0,v16193_2_0_1_q0,v16193_2_1_0_address0,v16193_2_1_0_ce0,v16193_2_1_0_q0,v16193_2_1_1_address0,v16193_2_1_1_ce0,v16193_2_1_1_q0,v16193_3_0_0_address0,v16193_3_0_0_ce0,v16193_3_0_0_q0,v16193_3_0_1_address0,v16193_3_0_1_ce0,v16193_3_0_1_q0,v16193_3_1_0_address0,v16193_3_1_0_ce0,v16193_3_1_0_q0,v16193_3_1_1_address0,v16193_3_1_1_ce0,v16193_3_1_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] v8676_address0;
output   v8676_ce0;
output   v8676_we0;
output  [7:0] v8676_d0;
output  [8:0] v8676_1_address0;
output   v8676_1_ce0;
output   v8676_1_we0;
output  [7:0] v8676_1_d0;
output  [8:0] v8676_2_address0;
output   v8676_2_ce0;
output   v8676_2_we0;
output  [7:0] v8676_2_d0;
output  [8:0] v8676_3_address0;
output   v8676_3_ce0;
output   v8676_3_we0;
output  [7:0] v8676_3_d0;
output  [8:0] v8676_4_address0;
output   v8676_4_ce0;
output   v8676_4_we0;
output  [7:0] v8676_4_d0;
output  [8:0] v8676_5_address0;
output   v8676_5_ce0;
output   v8676_5_we0;
output  [7:0] v8676_5_d0;
output  [8:0] v8676_6_address0;
output   v8676_6_ce0;
output   v8676_6_we0;
output  [7:0] v8676_6_d0;
output  [8:0] v8676_7_address0;
output   v8676_7_ce0;
output   v8676_7_we0;
output  [7:0] v8676_7_d0;
output  [8:0] v8676_8_address0;
output   v8676_8_ce0;
output   v8676_8_we0;
output  [7:0] v8676_8_d0;
output  [8:0] v8676_9_address0;
output   v8676_9_ce0;
output   v8676_9_we0;
output  [7:0] v8676_9_d0;
output  [8:0] v8676_10_address0;
output   v8676_10_ce0;
output   v8676_10_we0;
output  [7:0] v8676_10_d0;
output  [8:0] v8676_11_address0;
output   v8676_11_ce0;
output   v8676_11_we0;
output  [7:0] v8676_11_d0;
output  [8:0] v8676_12_address0;
output   v8676_12_ce0;
output   v8676_12_we0;
output  [7:0] v8676_12_d0;
output  [8:0] v8676_13_address0;
output   v8676_13_ce0;
output   v8676_13_we0;
output  [7:0] v8676_13_d0;
output  [8:0] v8676_14_address0;
output   v8676_14_ce0;
output   v8676_14_we0;
output  [7:0] v8676_14_d0;
output  [8:0] v8676_15_address0;
output   v8676_15_ce0;
output   v8676_15_we0;
output  [7:0] v8676_15_d0;
input  [10:0] v8667_0;
output  [13:0] v16193_0_0_0_address0;
output   v16193_0_0_0_ce0;
input  [7:0] v16193_0_0_0_q0;
output  [13:0] v16193_0_0_1_address0;
output   v16193_0_0_1_ce0;
input  [7:0] v16193_0_0_1_q0;
output  [13:0] v16193_0_1_0_address0;
output   v16193_0_1_0_ce0;
input  [7:0] v16193_0_1_0_q0;
output  [13:0] v16193_0_1_1_address0;
output   v16193_0_1_1_ce0;
input  [7:0] v16193_0_1_1_q0;
output  [13:0] v16193_1_0_0_address0;
output   v16193_1_0_0_ce0;
input  [7:0] v16193_1_0_0_q0;
output  [13:0] v16193_1_0_1_address0;
output   v16193_1_0_1_ce0;
input  [7:0] v16193_1_0_1_q0;
output  [13:0] v16193_1_1_0_address0;
output   v16193_1_1_0_ce0;
input  [7:0] v16193_1_1_0_q0;
output  [13:0] v16193_1_1_1_address0;
output   v16193_1_1_1_ce0;
input  [7:0] v16193_1_1_1_q0;
output  [13:0] v16193_2_0_0_address0;
output   v16193_2_0_0_ce0;
input  [7:0] v16193_2_0_0_q0;
output  [13:0] v16193_2_0_1_address0;
output   v16193_2_0_1_ce0;
input  [7:0] v16193_2_0_1_q0;
output  [13:0] v16193_2_1_0_address0;
output   v16193_2_1_0_ce0;
input  [7:0] v16193_2_1_0_q0;
output  [13:0] v16193_2_1_1_address0;
output   v16193_2_1_1_ce0;
input  [7:0] v16193_2_1_1_q0;
output  [13:0] v16193_3_0_0_address0;
output   v16193_3_0_0_ce0;
input  [7:0] v16193_3_0_0_q0;
output  [13:0] v16193_3_0_1_address0;
output   v16193_3_0_1_ce0;
input  [7:0] v16193_3_0_1_q0;
output  [13:0] v16193_3_1_0_address0;
output   v16193_3_1_0_ce0;
input  [7:0] v16193_3_1_0_q0;
output  [13:0] v16193_3_1_1_address0;
output   v16193_3_1_1_ce0;
input  [7:0] v16193_3_1_1_q0;
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
wire   [0:0] icmp_ln10870_fu_1024_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] p_udiv30_cast_cast_cast_cast_fu_714_p3;
reg   [3:0] p_udiv30_cast_cast_cast_cast_reg_1406;
wire   [3:0] lshr_ln_fu_828_p4;
reg   [3:0] lshr_ln_reg_1411;
wire   [9:0] sub_ln10875_fu_874_p2;
reg   [9:0] sub_ln10875_reg_1417;
wire   [9:0] sub_ln10883_fu_910_p2;
reg   [9:0] sub_ln10883_reg_1423;
wire   [2:0] lshr_ln82_fu_920_p4;
reg   [2:0] lshr_ln82_reg_1429;
wire   [3:0] empty_492_fu_940_p2;
reg   [3:0] empty_492_reg_1434;
reg   [3:0] tmp_s_reg_1439;
reg   [2:0] lshr_ln83_reg_1444;
reg   [3:0] lshr_ln84_reg_1450;
wire   [0:0] icmp_ln10872_fu_1012_p2;
reg   [0:0] icmp_ln10872_reg_1455;
wire   [0:0] icmp_ln10871_fu_1018_p2;
reg   [0:0] icmp_ln10871_reg_1460;
reg   [0:0] icmp_ln10870_reg_1465;
wire   [8:0] add_ln10905_1_fu_1238_p2;
reg   [8:0] add_ln10905_1_reg_1469;
reg   [0:0] ap_phi_mux_icmp_ln10871195_phi_fu_635_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln10872194_phi_fu_645_p4;
wire   [63:0] zext_ln10875_4_fu_1259_p1;
wire   [63:0] zext_ln10879_2_fu_1270_p1;
wire   [63:0] zext_ln10883_2_fu_1281_p1;
wire   [63:0] zext_ln10887_1_fu_1294_p1;
wire   [63:0] zext_ln10877_1_fu_1310_p1;
wire   [63:0] zext_ln10881_fu_1321_p1;
wire   [63:0] zext_ln10885_fu_1332_p1;
wire   [63:0] zext_ln10889_fu_1345_p1;
wire   [63:0] zext_ln10905_4_fu_1352_p1;
reg   [8:0] indvar_flatten12189_fu_174;
wire   [8:0] add_ln10870_1_fu_1006_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten12189_load;
reg   [5:0] v8641190_fu_178;
wire   [5:0] v8641_fu_788_p3;
reg   [5:0] ap_sig_allocacmp_v8641190_load;
reg   [5:0] indvar_flatten191_fu_182;
wire   [5:0] select_ln10871_1_fu_998_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten191_load;
reg   [3:0] v8642192_fu_186;
wire   [3:0] v8642_fu_816_p3;
reg   [3:0] ap_sig_allocacmp_v8642192_load;
reg   [3:0] v8643193_fu_190;
wire   [3:0] v8643_fu_986_p2;
reg   [3:0] ap_sig_allocacmp_v8643193_load;
reg    v16193_0_0_0_ce0_local;
reg    v16193_0_0_1_ce0_local;
reg    v16193_0_1_0_ce0_local;
reg    v16193_0_1_1_ce0_local;
reg    v16193_1_0_0_ce0_local;
reg    v16193_1_0_1_ce0_local;
reg    v16193_1_1_0_ce0_local;
reg    v16193_1_1_1_ce0_local;
reg    v16193_2_0_0_ce0_local;
reg    v16193_2_0_1_ce0_local;
reg    v16193_2_1_0_ce0_local;
reg    v16193_2_1_1_ce0_local;
reg    v16193_3_0_0_ce0_local;
reg    v16193_3_0_1_ce0_local;
reg    v16193_3_1_0_ce0_local;
reg    v16193_3_1_1_ce0_local;
reg    v8676_15_we0_local;
reg    v8676_15_ce0_local;
reg    v8676_14_we0_local;
reg    v8676_14_ce0_local;
reg    v8676_13_we0_local;
reg    v8676_13_ce0_local;
reg    v8676_12_we0_local;
reg    v8676_12_ce0_local;
reg    v8676_11_we0_local;
reg    v8676_11_ce0_local;
reg    v8676_10_we0_local;
reg    v8676_10_ce0_local;
reg    v8676_9_we0_local;
reg    v8676_9_ce0_local;
reg    v8676_8_we0_local;
reg    v8676_8_ce0_local;
reg    v8676_7_we0_local;
reg    v8676_7_ce0_local;
reg    v8676_6_we0_local;
reg    v8676_6_ce0_local;
reg    v8676_5_we0_local;
reg    v8676_5_ce0_local;
reg    v8676_4_we0_local;
reg    v8676_4_ce0_local;
reg    v8676_3_we0_local;
reg    v8676_3_ce0_local;
reg    v8676_2_we0_local;
reg    v8676_2_ce0_local;
reg    v8676_1_we0_local;
reg    v8676_1_ce0_local;
reg    v8676_we0_local;
reg    v8676_ce0_local;
wire   [2:0] tmp_fu_652_p4;
wire   [0:0] tmp_672_fu_678_p3;
wire   [0:0] empty_fu_702_p1;
wire   [0:0] xor_ln10870_fu_776_p2;
wire   [5:0] add_ln10870_fu_762_p2;
wire   [3:0] select_ln10870_fu_768_p3;
wire   [0:0] and_ln10870_fu_782_p2;
wire   [0:0] empty_488_fu_802_p2;
wire   [3:0] add_ln10871_fu_796_p2;
wire   [7:0] mul_i_fu_662_p3;
wire   [7:0] zext_ln10870_fu_824_p1;
wire   [5:0] zext_ln10870_1_fu_838_p1;
wire   [5:0] p_udiv24_cast_fu_670_p3;
wire   [5:0] empty_490_fu_848_p2;
wire   [6:0] tmp_673_fu_862_p3;
wire   [9:0] p_shl104_fu_854_p3;
wire   [9:0] zext_ln10875_fu_870_p1;
wire   [7:0] empty_489_fu_842_p2;
wire   [5:0] tmp_674_fu_880_p4;
wire   [6:0] tmp_675_fu_898_p3;
wire   [9:0] p_shl105_fu_890_p3;
wire   [9:0] zext_ln10883_fu_906_p1;
wire   [4:0] zext_ln10870_cast_cast_cast_cast_fu_686_p3;
wire   [4:0] zext_ln10871_fu_916_p1;
wire   [3:0] zext_ln10871_1_fu_930_p1;
wire   [3:0] p_udiv28_cast_cast_cast_cast_fu_694_p3;
wire   [4:0] empty_491_fu_934_p2;
wire   [3:0] v8643_mid2_fu_808_p3;
wire   [4:0] zext_ln10870_2_cast_cast_cast_cast_fu_706_p3;
wire   [4:0] zext_ln10872_fu_956_p1;
wire   [4:0] add_ln10874_fu_970_p2;
wire   [5:0] add_ln10871_1_fu_992_p2;
wire   [6:0] p_shl103_fu_1058_p3;
wire   [6:0] zext_ln10905_fu_1055_p1;
wire   [6:0] sub_ln10905_fu_1065_p2;
wire   [6:0] zext_ln10905_1_fu_1071_p1;
wire   [6:0] add_ln10905_fu_1074_p2;
wire   [5:0] trunc_ln10905_fu_1080_p1;
wire   [8:0] tmp_676_fu_1084_p3;
wire   [8:0] zext_ln10905_2_fu_1092_p1;
wire   [9:0] zext_ln10875_1_fu_1102_p1;
wire   [9:0] add_ln10875_1_fu_1105_p2;
wire   [10:0] tmp_677_fu_1118_p3;
wire   [13:0] p_shl106_fu_1110_p3;
wire   [13:0] zext_ln10875_2_fu_1126_p1;
wire   [9:0] add_ln10883_fu_1136_p2;
wire   [10:0] tmp_678_fu_1149_p3;
wire   [13:0] p_shl107_fu_1141_p3;
wire   [13:0] zext_ln10883_1_fu_1157_p1;
wire   [9:0] zext_ln10879_fu_1167_p1;
wire   [9:0] add_ln10879_fu_1170_p2;
wire   [10:0] tmp_679_fu_1183_p3;
wire   [13:0] p_shl108_fu_1175_p3;
wire   [13:0] zext_ln10879_1_fu_1191_p1;
wire   [9:0] add_ln10887_fu_1201_p2;
wire   [10:0] tmp_680_fu_1214_p3;
wire   [13:0] p_shl_fu_1206_p3;
wire   [13:0] zext_ln10887_fu_1222_p1;
wire   [8:0] sub_ln10905_1_fu_1096_p2;
wire   [8:0] zext_ln10905_3_fu_1235_p1;
wire   [3:0] zext_ln10872_1_fu_1232_p1;
wire   [3:0] add_ln10875_fu_1244_p2;
wire   [13:0] sub_ln10875_1_fu_1130_p2;
wire   [13:0] zext_ln10875_3_fu_1249_p1;
wire   [13:0] add_ln10875_2_fu_1253_p2;
wire   [13:0] sub_ln10879_fu_1195_p2;
wire   [13:0] add_ln10879_1_fu_1264_p2;
wire   [13:0] sub_ln10883_1_fu_1161_p2;
wire   [13:0] add_ln10883_1_fu_1275_p2;
wire   [13:0] sub_ln10887_fu_1226_p2;
wire   [13:0] add_ln10887_1_fu_1288_p2;
wire   [13:0] zext_ln10877_fu_1301_p1;
wire   [13:0] add_ln10877_fu_1304_p2;
wire   [13:0] add_ln10881_fu_1315_p2;
wire   [13:0] add_ln10885_fu_1326_p2;
wire   [13:0] add_ln10889_fu_1339_p2;
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
reg    ap_condition_296;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12189_fu_174 = 9'd0;
#0 v8641190_fu_178 = 6'd0;
#0 indvar_flatten191_fu_182 = 6'd0;
#0 v8642192_fu_186 = 4'd0;
#0 v8643193_fu_190 = 4'd0;
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
        indvar_flatten12189_fu_174 <= add_ln10870_1_fu_1006_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_296)) begin
    indvar_flatten191_fu_182 <= select_ln10871_1_fu_998_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_296)) begin
    v8641190_fu_178 <= v8641_fu_788_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_296)) begin
    v8642192_fu_186 <= v8642_fu_816_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_296)) begin
    v8643193_fu_190 <= v8643_fu_986_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln10905_1_reg_1469 <= add_ln10905_1_fu_1238_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_492_reg_1434 <= empty_492_fu_940_p2;
        icmp_ln10870_reg_1465 <= icmp_ln10870_fu_1024_p2;
        lshr_ln82_reg_1429 <= {{v8642_fu_816_p3[3:1]}};
        lshr_ln83_reg_1444 <= {{v8643_mid2_fu_808_p3[3:1]}};
        lshr_ln84_reg_1450 <= {{add_ln10874_fu_970_p2[4:1]}};
        lshr_ln_reg_1411 <= {{v8641_fu_788_p3[5:2]}};
        p_udiv30_cast_cast_cast_cast_reg_1406[2 : 0] <= p_udiv30_cast_cast_cast_cast_fu_714_p3[2 : 0];
        sub_ln10875_reg_1417[9 : 1] <= sub_ln10875_fu_874_p2[9 : 1];
        sub_ln10883_reg_1423[9 : 1] <= sub_ln10883_fu_910_p2[9 : 1];
        tmp_s_reg_1439 <= {{empty_491_fu_934_p2[4:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln10871_reg_1460 <= icmp_ln10871_fu_1018_p2;
        icmp_ln10872_reg_1455 <= icmp_ln10872_fu_1012_p2;
    end
end
always @ (*) begin
    if (((icmp_ln10870_fu_1024_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
            ap_phi_mux_icmp_ln10871195_phi_fu_635_p4 = icmp_ln10871_reg_1460;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln10871195_phi_fu_635_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln10871195_phi_fu_635_p4 = icmp_ln10871_reg_1460;
        end
    end else begin
        ap_phi_mux_icmp_ln10871195_phi_fu_635_p4 = icmp_ln10871_reg_1460;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_948)) begin
            ap_phi_mux_icmp_ln10872194_phi_fu_645_p4 = icmp_ln10872_reg_1455;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln10872194_phi_fu_645_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln10872194_phi_fu_645_p4 = icmp_ln10872_reg_1455;
        end
    end else begin
        ap_phi_mux_icmp_ln10872194_phi_fu_645_p4 = icmp_ln10872_reg_1455;
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
        ap_sig_allocacmp_indvar_flatten12189_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12189_load = indvar_flatten12189_fu_174;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten191_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten191_load = indvar_flatten191_fu_182;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v8641190_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v8641190_load = v8641190_fu_178;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v8642192_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v8642192_load = v8642192_fu_186;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v8643193_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v8643193_load = v8643193_fu_190;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16193_0_0_0_ce0_local = 1'b1;
    end else begin
        v16193_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16193_0_0_1_ce0_local = 1'b1;
    end else begin
        v16193_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16193_0_1_0_ce0_local = 1'b1;
    end else begin
        v16193_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16193_0_1_1_ce0_local = 1'b1;
    end else begin
        v16193_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16193_1_0_0_ce0_local = 1'b1;
    end else begin
        v16193_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16193_1_0_1_ce0_local = 1'b1;
    end else begin
        v16193_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16193_1_1_0_ce0_local = 1'b1;
    end else begin
        v16193_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16193_1_1_1_ce0_local = 1'b1;
    end else begin
        v16193_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16193_2_0_0_ce0_local = 1'b1;
    end else begin
        v16193_2_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16193_2_0_1_ce0_local = 1'b1;
    end else begin
        v16193_2_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16193_2_1_0_ce0_local = 1'b1;
    end else begin
        v16193_2_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16193_2_1_1_ce0_local = 1'b1;
    end else begin
        v16193_2_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16193_3_0_0_ce0_local = 1'b1;
    end else begin
        v16193_3_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16193_3_0_1_ce0_local = 1'b1;
    end else begin
        v16193_3_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16193_3_1_0_ce0_local = 1'b1;
    end else begin
        v16193_3_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16193_3_1_1_ce0_local = 1'b1;
    end else begin
        v16193_3_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_10_ce0_local = 1'b1;
    end else begin
        v8676_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_10_we0_local = 1'b1;
    end else begin
        v8676_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_11_ce0_local = 1'b1;
    end else begin
        v8676_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_11_we0_local = 1'b1;
    end else begin
        v8676_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_12_ce0_local = 1'b1;
    end else begin
        v8676_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_12_we0_local = 1'b1;
    end else begin
        v8676_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_13_ce0_local = 1'b1;
    end else begin
        v8676_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_13_we0_local = 1'b1;
    end else begin
        v8676_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_14_ce0_local = 1'b1;
    end else begin
        v8676_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_14_we0_local = 1'b1;
    end else begin
        v8676_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_15_ce0_local = 1'b1;
    end else begin
        v8676_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_15_we0_local = 1'b1;
    end else begin
        v8676_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_1_ce0_local = 1'b1;
    end else begin
        v8676_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_1_we0_local = 1'b1;
    end else begin
        v8676_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_2_ce0_local = 1'b1;
    end else begin
        v8676_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_2_we0_local = 1'b1;
    end else begin
        v8676_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_3_ce0_local = 1'b1;
    end else begin
        v8676_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_3_we0_local = 1'b1;
    end else begin
        v8676_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_4_ce0_local = 1'b1;
    end else begin
        v8676_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_4_we0_local = 1'b1;
    end else begin
        v8676_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_5_ce0_local = 1'b1;
    end else begin
        v8676_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_5_we0_local = 1'b1;
    end else begin
        v8676_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_6_ce0_local = 1'b1;
    end else begin
        v8676_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_6_we0_local = 1'b1;
    end else begin
        v8676_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_7_ce0_local = 1'b1;
    end else begin
        v8676_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_7_we0_local = 1'b1;
    end else begin
        v8676_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_8_ce0_local = 1'b1;
    end else begin
        v8676_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_8_we0_local = 1'b1;
    end else begin
        v8676_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_9_ce0_local = 1'b1;
    end else begin
        v8676_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_9_we0_local = 1'b1;
    end else begin
        v8676_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_ce0_local = 1'b1;
    end else begin
        v8676_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8676_we0_local = 1'b1;
    end else begin
        v8676_we0_local = 1'b0;
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
assign add_ln10870_1_fu_1006_p2 = (ap_sig_allocacmp_indvar_flatten12189_load + 9'd1);
assign add_ln10870_fu_762_p2 = (ap_sig_allocacmp_v8641190_load + 6'd4);
assign add_ln10871_1_fu_992_p2 = (ap_sig_allocacmp_indvar_flatten191_load + 6'd1);
assign add_ln10871_fu_796_p2 = (select_ln10870_fu_768_p3 + 4'd2);
assign add_ln10874_fu_970_p2 = (zext_ln10870_2_cast_cast_cast_cast_fu_706_p3 + zext_ln10872_fu_956_p1);
assign add_ln10875_1_fu_1105_p2 = (sub_ln10875_reg_1417 + zext_ln10875_1_fu_1102_p1);
assign add_ln10875_2_fu_1253_p2 = (sub_ln10875_1_fu_1130_p2 + zext_ln10875_3_fu_1249_p1);
assign add_ln10875_fu_1244_p2 = (zext_ln10872_1_fu_1232_p1 + p_udiv30_cast_cast_cast_cast_reg_1406);
assign add_ln10877_fu_1304_p2 = (sub_ln10875_1_fu_1130_p2 + zext_ln10877_fu_1301_p1);
assign add_ln10879_1_fu_1264_p2 = (sub_ln10879_fu_1195_p2 + zext_ln10875_3_fu_1249_p1);
assign add_ln10879_fu_1170_p2 = (sub_ln10875_reg_1417 + zext_ln10879_fu_1167_p1);
assign add_ln10881_fu_1315_p2 = (sub_ln10879_fu_1195_p2 + zext_ln10877_fu_1301_p1);
assign add_ln10883_1_fu_1275_p2 = (sub_ln10883_1_fu_1161_p2 + zext_ln10875_3_fu_1249_p1);
assign add_ln10883_fu_1136_p2 = (sub_ln10883_reg_1423 + zext_ln10875_1_fu_1102_p1);
assign add_ln10885_fu_1326_p2 = (sub_ln10883_1_fu_1161_p2 + zext_ln10877_fu_1301_p1);
assign add_ln10887_1_fu_1288_p2 = (sub_ln10887_fu_1226_p2 + zext_ln10875_3_fu_1249_p1);
assign add_ln10887_fu_1201_p2 = (sub_ln10883_reg_1423 + zext_ln10879_fu_1167_p1);
assign add_ln10889_fu_1339_p2 = (sub_ln10887_fu_1226_p2 + zext_ln10877_fu_1301_p1);
assign add_ln10905_1_fu_1238_p2 = (sub_ln10905_1_fu_1096_p2 + zext_ln10905_3_fu_1235_p1);
assign add_ln10905_fu_1074_p2 = (sub_ln10905_fu_1065_p2 + zext_ln10905_1_fu_1071_p1);
assign and_ln10870_fu_782_p2 = (xor_ln10870_fu_776_p2 & ap_phi_mux_icmp_ln10872194_phi_fu_645_p4);
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
    ap_condition_948 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln10870_reg_1465 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_488_fu_802_p2 = (ap_phi_mux_icmp_ln10871195_phi_fu_635_p4 | and_ln10870_fu_782_p2);
assign empty_489_fu_842_p2 = (mul_i_fu_662_p3 + zext_ln10870_fu_824_p1);
assign empty_490_fu_848_p2 = (zext_ln10870_1_fu_838_p1 + p_udiv24_cast_fu_670_p3);
assign empty_491_fu_934_p2 = (zext_ln10870_cast_cast_cast_cast_fu_686_p3 + zext_ln10871_fu_916_p1);
assign empty_492_fu_940_p2 = (zext_ln10871_1_fu_930_p1 + p_udiv28_cast_cast_cast_cast_fu_694_p3);
assign empty_fu_702_p1 = v8667_0[0:0];
assign icmp_ln10870_fu_1024_p2 = ((ap_sig_allocacmp_indvar_flatten12189_load == 9'd391) ? 1'b1 : 1'b0);
assign icmp_ln10871_fu_1018_p2 = ((select_ln10871_1_fu_998_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln10872_fu_1012_p2 = ((v8643_fu_986_p2 == 4'd14) ? 1'b1 : 1'b0);
assign lshr_ln82_fu_920_p4 = {{v8642_fu_816_p3[3:1]}};
assign lshr_ln_fu_828_p4 = {{v8641_fu_788_p3[5:2]}};
assign mul_i_fu_662_p3 = {{tmp_fu_652_p4}, {5'd0}};
assign p_shl103_fu_1058_p3 = {{lshr_ln_reg_1411}, {3'd0}};
assign p_shl104_fu_854_p3 = {{empty_490_fu_848_p2}, {4'd0}};
assign p_shl105_fu_890_p3 = {{tmp_674_fu_880_p4}, {4'd0}};
assign p_shl106_fu_1110_p3 = {{add_ln10875_1_fu_1105_p2}, {4'd0}};
assign p_shl107_fu_1141_p3 = {{add_ln10883_fu_1136_p2}, {4'd0}};
assign p_shl108_fu_1175_p3 = {{add_ln10879_fu_1170_p2}, {4'd0}};
assign p_shl_fu_1206_p3 = {{add_ln10887_fu_1201_p2}, {4'd0}};
assign p_udiv24_cast_fu_670_p3 = {{tmp_fu_652_p4}, {3'd0}};
assign p_udiv28_cast_cast_cast_cast_fu_694_p3 = ((tmp_672_fu_678_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign p_udiv30_cast_cast_cast_cast_fu_714_p3 = ((empty_fu_702_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign select_ln10870_fu_768_p3 = ((ap_phi_mux_icmp_ln10871195_phi_fu_635_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v8642192_load);
assign select_ln10871_1_fu_998_p3 = ((ap_phi_mux_icmp_ln10871195_phi_fu_635_p4[0:0] == 1'b1) ? 6'd1 : add_ln10871_1_fu_992_p2);
assign sub_ln10875_1_fu_1130_p2 = (p_shl106_fu_1110_p3 - zext_ln10875_2_fu_1126_p1);
assign sub_ln10875_fu_874_p2 = (p_shl104_fu_854_p3 - zext_ln10875_fu_870_p1);
assign sub_ln10879_fu_1195_p2 = (p_shl108_fu_1175_p3 - zext_ln10879_1_fu_1191_p1);
assign sub_ln10883_1_fu_1161_p2 = (p_shl107_fu_1141_p3 - zext_ln10883_1_fu_1157_p1);
assign sub_ln10883_fu_910_p2 = (p_shl105_fu_890_p3 - zext_ln10883_fu_906_p1);
assign sub_ln10887_fu_1226_p2 = (p_shl_fu_1206_p3 - zext_ln10887_fu_1222_p1);
assign sub_ln10905_1_fu_1096_p2 = (tmp_676_fu_1084_p3 - zext_ln10905_2_fu_1092_p1);
assign sub_ln10905_fu_1065_p2 = (p_shl103_fu_1058_p3 - zext_ln10905_fu_1055_p1);
assign tmp_672_fu_678_p3 = v8667_0[32'd1];
assign tmp_673_fu_862_p3 = {{empty_490_fu_848_p2}, {1'd0}};
assign tmp_674_fu_880_p4 = {{empty_489_fu_842_p2[7:2]}};
assign tmp_675_fu_898_p3 = {{tmp_674_fu_880_p4}, {1'd0}};
assign tmp_676_fu_1084_p3 = {{trunc_ln10905_fu_1080_p1}, {3'd0}};
assign tmp_677_fu_1118_p3 = {{add_ln10875_1_fu_1105_p2}, {1'd0}};
assign tmp_678_fu_1149_p3 = {{add_ln10883_fu_1136_p2}, {1'd0}};
assign tmp_679_fu_1183_p3 = {{add_ln10879_fu_1170_p2}, {1'd0}};
assign tmp_680_fu_1214_p3 = {{add_ln10887_fu_1201_p2}, {1'd0}};
assign tmp_fu_652_p4 = {{v8667_0[4:2]}};
assign trunc_ln10905_fu_1080_p1 = add_ln10905_fu_1074_p2[5:0];
assign v16193_0_0_0_address0 = zext_ln10875_4_fu_1259_p1;
assign v16193_0_0_0_ce0 = v16193_0_0_0_ce0_local;
assign v16193_0_0_1_address0 = zext_ln10877_1_fu_1310_p1;
assign v16193_0_0_1_ce0 = v16193_0_0_1_ce0_local;
assign v16193_0_1_0_address0 = zext_ln10879_2_fu_1270_p1;
assign v16193_0_1_0_ce0 = v16193_0_1_0_ce0_local;
assign v16193_0_1_1_address0 = zext_ln10881_fu_1321_p1;
assign v16193_0_1_1_ce0 = v16193_0_1_1_ce0_local;
assign v16193_1_0_0_address0 = zext_ln10883_2_fu_1281_p1;
assign v16193_1_0_0_ce0 = v16193_1_0_0_ce0_local;
assign v16193_1_0_1_address0 = zext_ln10885_fu_1332_p1;
assign v16193_1_0_1_ce0 = v16193_1_0_1_ce0_local;
assign v16193_1_1_0_address0 = zext_ln10887_1_fu_1294_p1;
assign v16193_1_1_0_ce0 = v16193_1_1_0_ce0_local;
assign v16193_1_1_1_address0 = zext_ln10889_fu_1345_p1;
assign v16193_1_1_1_ce0 = v16193_1_1_1_ce0_local;
assign v16193_2_0_0_address0 = zext_ln10883_2_fu_1281_p1;
assign v16193_2_0_0_ce0 = v16193_2_0_0_ce0_local;
assign v16193_2_0_1_address0 = zext_ln10885_fu_1332_p1;
assign v16193_2_0_1_ce0 = v16193_2_0_1_ce0_local;
assign v16193_2_1_0_address0 = zext_ln10887_1_fu_1294_p1;
assign v16193_2_1_0_ce0 = v16193_2_1_0_ce0_local;
assign v16193_2_1_1_address0 = zext_ln10889_fu_1345_p1;
assign v16193_2_1_1_ce0 = v16193_2_1_1_ce0_local;
assign v16193_3_0_0_address0 = zext_ln10883_2_fu_1281_p1;
assign v16193_3_0_0_ce0 = v16193_3_0_0_ce0_local;
assign v16193_3_0_1_address0 = zext_ln10885_fu_1332_p1;
assign v16193_3_0_1_ce0 = v16193_3_0_1_ce0_local;
assign v16193_3_1_0_address0 = zext_ln10887_1_fu_1294_p1;
assign v16193_3_1_0_ce0 = v16193_3_1_0_ce0_local;
assign v16193_3_1_1_address0 = zext_ln10889_fu_1345_p1;
assign v16193_3_1_1_ce0 = v16193_3_1_1_ce0_local;
assign v8641_fu_788_p3 = ((ap_phi_mux_icmp_ln10871195_phi_fu_635_p4[0:0] == 1'b1) ? add_ln10870_fu_762_p2 : ap_sig_allocacmp_v8641190_load);
assign v8642_fu_816_p3 = ((and_ln10870_fu_782_p2[0:0] == 1'b1) ? add_ln10871_fu_796_p2 : select_ln10870_fu_768_p3);
assign v8643_fu_986_p2 = (v8643_mid2_fu_808_p3 + 4'd2);
assign v8643_mid2_fu_808_p3 = ((empty_488_fu_802_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v8643193_load);
assign v8676_10_address0 = zext_ln10905_4_fu_1352_p1;
assign v8676_10_ce0 = v8676_10_ce0_local;
assign v8676_10_d0 = v16193_1_0_1_q0;
assign v8676_10_we0 = v8676_10_we0_local;
assign v8676_11_address0 = zext_ln10905_4_fu_1352_p1;
assign v8676_11_ce0 = v8676_11_ce0_local;
assign v8676_11_d0 = v16193_1_0_0_q0;
assign v8676_11_we0 = v8676_11_we0_local;
assign v8676_12_address0 = zext_ln10905_4_fu_1352_p1;
assign v8676_12_ce0 = v8676_12_ce0_local;
assign v8676_12_d0 = v16193_0_1_1_q0;
assign v8676_12_we0 = v8676_12_we0_local;
assign v8676_13_address0 = zext_ln10905_4_fu_1352_p1;
assign v8676_13_ce0 = v8676_13_ce0_local;
assign v8676_13_d0 = v16193_0_1_0_q0;
assign v8676_13_we0 = v8676_13_we0_local;
assign v8676_14_address0 = zext_ln10905_4_fu_1352_p1;
assign v8676_14_ce0 = v8676_14_ce0_local;
assign v8676_14_d0 = v16193_0_0_1_q0;
assign v8676_14_we0 = v8676_14_we0_local;
assign v8676_15_address0 = zext_ln10905_4_fu_1352_p1;
assign v8676_15_ce0 = v8676_15_ce0_local;
assign v8676_15_d0 = v16193_0_0_0_q0;
assign v8676_15_we0 = v8676_15_we0_local;
assign v8676_1_address0 = zext_ln10905_4_fu_1352_p1;
assign v8676_1_ce0 = v8676_1_ce0_local;
assign v8676_1_d0 = v16193_3_1_0_q0;
assign v8676_1_we0 = v8676_1_we0_local;
assign v8676_2_address0 = zext_ln10905_4_fu_1352_p1;
assign v8676_2_ce0 = v8676_2_ce0_local;
assign v8676_2_d0 = v16193_3_0_1_q0;
assign v8676_2_we0 = v8676_2_we0_local;
assign v8676_3_address0 = zext_ln10905_4_fu_1352_p1;
assign v8676_3_ce0 = v8676_3_ce0_local;
assign v8676_3_d0 = v16193_3_0_0_q0;
assign v8676_3_we0 = v8676_3_we0_local;
assign v8676_4_address0 = zext_ln10905_4_fu_1352_p1;
assign v8676_4_ce0 = v8676_4_ce0_local;
assign v8676_4_d0 = v16193_2_1_1_q0;
assign v8676_4_we0 = v8676_4_we0_local;
assign v8676_5_address0 = zext_ln10905_4_fu_1352_p1;
assign v8676_5_ce0 = v8676_5_ce0_local;
assign v8676_5_d0 = v16193_2_1_0_q0;
assign v8676_5_we0 = v8676_5_we0_local;
assign v8676_6_address0 = zext_ln10905_4_fu_1352_p1;
assign v8676_6_ce0 = v8676_6_ce0_local;
assign v8676_6_d0 = v16193_2_0_1_q0;
assign v8676_6_we0 = v8676_6_we0_local;
assign v8676_7_address0 = zext_ln10905_4_fu_1352_p1;
assign v8676_7_ce0 = v8676_7_ce0_local;
assign v8676_7_d0 = v16193_2_0_0_q0;
assign v8676_7_we0 = v8676_7_we0_local;
assign v8676_8_address0 = zext_ln10905_4_fu_1352_p1;
assign v8676_8_ce0 = v8676_8_ce0_local;
assign v8676_8_d0 = v16193_1_1_1_q0;
assign v8676_8_we0 = v8676_8_we0_local;
assign v8676_9_address0 = zext_ln10905_4_fu_1352_p1;
assign v8676_9_ce0 = v8676_9_ce0_local;
assign v8676_9_d0 = v16193_1_1_0_q0;
assign v8676_9_we0 = v8676_9_we0_local;
assign v8676_address0 = zext_ln10905_4_fu_1352_p1;
assign v8676_ce0 = v8676_ce0_local;
assign v8676_d0 = v16193_3_1_1_q0;
assign v8676_we0 = v8676_we0_local;
assign xor_ln10870_fu_776_p2 = (ap_phi_mux_icmp_ln10871195_phi_fu_635_p4 ^ 1'd1);
assign zext_ln10870_1_fu_838_p1 = lshr_ln_fu_828_p4;
assign zext_ln10870_2_cast_cast_cast_cast_fu_706_p3 = ((empty_fu_702_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln10870_cast_cast_cast_cast_fu_686_p3 = ((tmp_672_fu_678_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln10870_fu_824_p1 = v8641_fu_788_p3;
assign zext_ln10871_1_fu_930_p1 = lshr_ln82_fu_920_p4;
assign zext_ln10871_fu_916_p1 = v8642_fu_816_p3;
assign zext_ln10872_1_fu_1232_p1 = lshr_ln83_reg_1444;
assign zext_ln10872_fu_956_p1 = v8643_mid2_fu_808_p3;
assign zext_ln10875_1_fu_1102_p1 = empty_492_reg_1434;
assign zext_ln10875_2_fu_1126_p1 = tmp_677_fu_1118_p3;
assign zext_ln10875_3_fu_1249_p1 = add_ln10875_fu_1244_p2;
assign zext_ln10875_4_fu_1259_p1 = add_ln10875_2_fu_1253_p2;
assign zext_ln10875_fu_870_p1 = tmp_673_fu_862_p3;
assign zext_ln10877_1_fu_1310_p1 = add_ln10877_fu_1304_p2;
assign zext_ln10877_fu_1301_p1 = lshr_ln84_reg_1450;
assign zext_ln10879_1_fu_1191_p1 = tmp_679_fu_1183_p3;
assign zext_ln10879_2_fu_1270_p1 = add_ln10879_1_fu_1264_p2;
assign zext_ln10879_fu_1167_p1 = tmp_s_reg_1439;
assign zext_ln10881_fu_1321_p1 = add_ln10881_fu_1315_p2;
assign zext_ln10883_1_fu_1157_p1 = tmp_678_fu_1149_p3;
assign zext_ln10883_2_fu_1281_p1 = add_ln10883_1_fu_1275_p2;
assign zext_ln10883_fu_906_p1 = tmp_675_fu_898_p3;
assign zext_ln10885_fu_1332_p1 = add_ln10885_fu_1326_p2;
assign zext_ln10887_1_fu_1294_p1 = add_ln10887_1_fu_1288_p2;
assign zext_ln10887_fu_1222_p1 = tmp_680_fu_1214_p3;
assign zext_ln10889_fu_1345_p1 = add_ln10889_fu_1339_p2;
assign zext_ln10905_1_fu_1071_p1 = lshr_ln82_reg_1429;
assign zext_ln10905_2_fu_1092_p1 = add_ln10905_fu_1074_p2;
assign zext_ln10905_3_fu_1235_p1 = lshr_ln83_reg_1444;
assign zext_ln10905_4_fu_1352_p1 = add_ln10905_1_reg_1469;
assign zext_ln10905_fu_1055_p1 = lshr_ln_reg_1411;
always @ (posedge ap_clk) begin
    p_udiv30_cast_cast_cast_cast_reg_1406[3] <= 1'b0;
    sub_ln10875_reg_1417[0] <= 1'b0;
    sub_ln10883_reg_1423[0] <= 1'b0;
end
endmodule 
