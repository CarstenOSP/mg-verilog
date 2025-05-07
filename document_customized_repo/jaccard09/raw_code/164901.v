module forward_dataflow_in_loop_VITIS_LOOP_12199_1_Loop_VITIS_LOOP_12043_1_proc55 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v7856_address0,v7856_ce0,v7856_we0,v7856_d0,v7856_1_address0,v7856_1_ce0,v7856_1_we0,v7856_1_d0,v7856_2_address0,v7856_2_ce0,v7856_2_we0,v7856_2_d0,v7856_3_address0,v7856_3_ce0,v7856_3_we0,v7856_3_d0,v7856_4_address0,v7856_4_ce0,v7856_4_we0,v7856_4_d0,v7856_5_address0,v7856_5_ce0,v7856_5_we0,v7856_5_d0,v7856_6_address0,v7856_6_ce0,v7856_6_we0,v7856_6_d0,v7856_7_address0,v7856_7_ce0,v7856_7_we0,v7856_7_d0,v7856_8_address0,v7856_8_ce0,v7856_8_we0,v7856_8_d0,v7856_9_address0,v7856_9_ce0,v7856_9_we0,v7856_9_d0,v7856_10_address0,v7856_10_ce0,v7856_10_we0,v7856_10_d0,v7856_11_address0,v7856_11_ce0,v7856_11_we0,v7856_11_d0,v7856_12_address0,v7856_12_ce0,v7856_12_we0,v7856_12_d0,v7856_13_address0,v7856_13_ce0,v7856_13_we0,v7856_13_d0,v7856_14_address0,v7856_14_ce0,v7856_14_we0,v7856_14_d0,v7856_15_address0,v7856_15_ce0,v7856_15_we0,v7856_15_d0,v7849_0,v9207_0_0_0_address0,v9207_0_0_0_ce0,v9207_0_0_0_q0,v9207_0_0_1_address0,v9207_0_0_1_ce0,v9207_0_0_1_q0,v9207_0_0_2_address0,v9207_0_0_2_ce0,v9207_0_0_2_q0,v9207_0_0_3_address0,v9207_0_0_3_ce0,v9207_0_0_3_q0,v9207_0_1_0_address0,v9207_0_1_0_ce0,v9207_0_1_0_q0,v9207_0_1_1_address0,v9207_0_1_1_ce0,v9207_0_1_1_q0,v9207_0_1_2_address0,v9207_0_1_2_ce0,v9207_0_1_2_q0,v9207_0_1_3_address0,v9207_0_1_3_ce0,v9207_0_1_3_q0,v9207_1_0_0_address0,v9207_1_0_0_ce0,v9207_1_0_0_q0,v9207_1_0_1_address0,v9207_1_0_1_ce0,v9207_1_0_1_q0,v9207_1_0_2_address0,v9207_1_0_2_ce0,v9207_1_0_2_q0,v9207_1_0_3_address0,v9207_1_0_3_ce0,v9207_1_0_3_q0,v9207_1_1_0_address0,v9207_1_1_0_ce0,v9207_1_1_0_q0,v9207_1_1_1_address0,v9207_1_1_1_ce0,v9207_1_1_1_q0,v9207_1_1_2_address0,v9207_1_1_2_ce0,v9207_1_1_2_q0,v9207_1_1_3_address0,v9207_1_1_3_ce0,v9207_1_1_3_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [10:0] v7856_address0;
output   v7856_ce0;
output   v7856_we0;
output  [7:0] v7856_d0;
output  [10:0] v7856_1_address0;
output   v7856_1_ce0;
output   v7856_1_we0;
output  [7:0] v7856_1_d0;
output  [10:0] v7856_2_address0;
output   v7856_2_ce0;
output   v7856_2_we0;
output  [7:0] v7856_2_d0;
output  [10:0] v7856_3_address0;
output   v7856_3_ce0;
output   v7856_3_we0;
output  [7:0] v7856_3_d0;
output  [10:0] v7856_4_address0;
output   v7856_4_ce0;
output   v7856_4_we0;
output  [7:0] v7856_4_d0;
output  [10:0] v7856_5_address0;
output   v7856_5_ce0;
output   v7856_5_we0;
output  [7:0] v7856_5_d0;
output  [10:0] v7856_6_address0;
output   v7856_6_ce0;
output   v7856_6_we0;
output  [7:0] v7856_6_d0;
output  [10:0] v7856_7_address0;
output   v7856_7_ce0;
output   v7856_7_we0;
output  [7:0] v7856_7_d0;
output  [10:0] v7856_8_address0;
output   v7856_8_ce0;
output   v7856_8_we0;
output  [7:0] v7856_8_d0;
output  [10:0] v7856_9_address0;
output   v7856_9_ce0;
output   v7856_9_we0;
output  [7:0] v7856_9_d0;
output  [10:0] v7856_10_address0;
output   v7856_10_ce0;
output   v7856_10_we0;
output  [7:0] v7856_10_d0;
output  [10:0] v7856_11_address0;
output   v7856_11_ce0;
output   v7856_11_we0;
output  [7:0] v7856_11_d0;
output  [10:0] v7856_12_address0;
output   v7856_12_ce0;
output   v7856_12_we0;
output  [7:0] v7856_12_d0;
output  [10:0] v7856_13_address0;
output   v7856_13_ce0;
output   v7856_13_we0;
output  [7:0] v7856_13_d0;
output  [10:0] v7856_14_address0;
output   v7856_14_ce0;
output   v7856_14_we0;
output  [7:0] v7856_14_d0;
output  [10:0] v7856_15_address0;
output   v7856_15_ce0;
output   v7856_15_we0;
output  [7:0] v7856_15_d0;
input  [7:0] v7849_0;
output  [13:0] v9207_0_0_0_address0;
output   v9207_0_0_0_ce0;
input  [7:0] v9207_0_0_0_q0;
output  [13:0] v9207_0_0_1_address0;
output   v9207_0_0_1_ce0;
input  [7:0] v9207_0_0_1_q0;
output  [13:0] v9207_0_0_2_address0;
output   v9207_0_0_2_ce0;
input  [7:0] v9207_0_0_2_q0;
output  [13:0] v9207_0_0_3_address0;
output   v9207_0_0_3_ce0;
input  [7:0] v9207_0_0_3_q0;
output  [13:0] v9207_0_1_0_address0;
output   v9207_0_1_0_ce0;
input  [7:0] v9207_0_1_0_q0;
output  [13:0] v9207_0_1_1_address0;
output   v9207_0_1_1_ce0;
input  [7:0] v9207_0_1_1_q0;
output  [13:0] v9207_0_1_2_address0;
output   v9207_0_1_2_ce0;
input  [7:0] v9207_0_1_2_q0;
output  [13:0] v9207_0_1_3_address0;
output   v9207_0_1_3_ce0;
input  [7:0] v9207_0_1_3_q0;
output  [13:0] v9207_1_0_0_address0;
output   v9207_1_0_0_ce0;
input  [7:0] v9207_1_0_0_q0;
output  [13:0] v9207_1_0_1_address0;
output   v9207_1_0_1_ce0;
input  [7:0] v9207_1_0_1_q0;
output  [13:0] v9207_1_0_2_address0;
output   v9207_1_0_2_ce0;
input  [7:0] v9207_1_0_2_q0;
output  [13:0] v9207_1_0_3_address0;
output   v9207_1_0_3_ce0;
input  [7:0] v9207_1_0_3_q0;
output  [13:0] v9207_1_1_0_address0;
output   v9207_1_1_0_ce0;
input  [7:0] v9207_1_1_0_q0;
output  [13:0] v9207_1_1_1_address0;
output   v9207_1_1_1_ce0;
input  [7:0] v9207_1_1_1_q0;
output  [13:0] v9207_1_1_2_address0;
output   v9207_1_1_2_ce0;
input  [7:0] v9207_1_1_2_q0;
output  [13:0] v9207_1_1_3_address0;
output   v9207_1_1_3_ce0;
input  [7:0] v9207_1_1_3_q0;
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
wire   [0:0] icmp_ln12043_fu_1010_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] trunc_ln12043_cast_cast_cast_cast_fu_710_p3;
reg   [3:0] trunc_ln12043_cast_cast_cast_cast_reg_1395;
wire   [3:0] lshr_ln_fu_820_p4;
reg   [3:0] lshr_ln_reg_1400;
wire   [9:0] sub_ln12048_fu_860_p2;
reg   [9:0] sub_ln12048_reg_1406;
wire   [9:0] sub_ln12064_fu_896_p2;
reg   [9:0] sub_ln12064_reg_1412;
wire   [3:0] lshr_ln109_fu_906_p4;
reg   [3:0] lshr_ln109_reg_1418;
wire   [4:0] empty_402_fu_926_p2;
reg   [4:0] empty_402_reg_1423;
reg   [4:0] tmp_s_reg_1428;
reg   [2:0] lshr_ln110_reg_1433;
reg   [2:0] lshr_ln110_reg_1433_pp0_iter1_reg;
reg   [3:0] lshr_ln111_reg_1439;
wire   [0:0] icmp_ln12045_fu_998_p2;
reg   [0:0] icmp_ln12045_reg_1444;
wire   [0:0] icmp_ln12044_fu_1004_p2;
reg   [0:0] icmp_ln12044_reg_1449;
reg   [0:0] icmp_ln12043_reg_1454;
wire   [7:0] add_ln12078_fu_1068_p2;
reg   [7:0] add_ln12078_reg_1458;
reg   [0:0] ap_phi_mux_icmp_ln12044195_phi_fu_641_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln12045194_phi_fu_651_p4;
wire   [63:0] zext_ln12048_4_fu_1222_p1;
wire   [63:0] zext_ln12056_2_fu_1233_p1;
wire   [63:0] zext_ln12064_2_fu_1244_p1;
wire   [63:0] zext_ln12072_1_fu_1255_p1;
wire   [63:0] zext_ln12050_1_fu_1269_p1;
wire   [63:0] zext_ln12058_fu_1282_p1;
wire   [63:0] zext_ln12066_fu_1295_p1;
wire   [63:0] zext_ln12074_fu_1308_p1;
wire   [63:0] zext_ln12078_4_fu_1340_p1;
reg   [10:0] indvar_flatten12189_fu_180;
wire   [10:0] add_ln12043_1_fu_992_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten12189_load;
reg   [5:0] v7786190_fu_184;
wire   [5:0] v7786_fu_784_p3;
reg   [5:0] ap_sig_allocacmp_v7786190_load;
reg   [6:0] indvar_flatten191_fu_188;
wire   [6:0] select_ln12044_1_fu_984_p3;
reg   [6:0] ap_sig_allocacmp_indvar_flatten191_load;
reg   [4:0] v7787192_fu_192;
wire   [4:0] v7787_fu_812_p3;
reg   [4:0] ap_sig_allocacmp_v7787192_load;
reg   [4:0] v7788193_fu_196;
wire   [4:0] v7788_fu_972_p2;
reg   [4:0] ap_sig_allocacmp_v7788193_load;
reg    v9207_0_0_0_ce0_local;
reg    v9207_0_0_1_ce0_local;
reg    v9207_0_0_2_ce0_local;
reg    v9207_0_0_3_ce0_local;
reg    v9207_0_1_0_ce0_local;
reg    v9207_0_1_1_ce0_local;
reg    v9207_0_1_2_ce0_local;
reg    v9207_0_1_3_ce0_local;
reg    v9207_1_0_0_ce0_local;
reg    v9207_1_0_1_ce0_local;
reg    v9207_1_0_2_ce0_local;
reg    v9207_1_0_3_ce0_local;
reg    v9207_1_1_0_ce0_local;
reg    v9207_1_1_1_ce0_local;
reg    v9207_1_1_2_ce0_local;
reg    v9207_1_1_3_ce0_local;
reg    v7856_15_we0_local;
reg    v7856_15_ce0_local;
reg    v7856_14_we0_local;
reg    v7856_14_ce0_local;
reg    v7856_13_we0_local;
reg    v7856_13_ce0_local;
reg    v7856_12_we0_local;
reg    v7856_12_ce0_local;
reg    v7856_11_we0_local;
reg    v7856_11_ce0_local;
reg    v7856_10_we0_local;
reg    v7856_10_ce0_local;
reg    v7856_9_we0_local;
reg    v7856_9_ce0_local;
reg    v7856_8_we0_local;
reg    v7856_8_ce0_local;
reg    v7856_7_we0_local;
reg    v7856_7_ce0_local;
reg    v7856_6_we0_local;
reg    v7856_6_ce0_local;
reg    v7856_5_we0_local;
reg    v7856_5_ce0_local;
reg    v7856_4_we0_local;
reg    v7856_4_ce0_local;
reg    v7856_3_we0_local;
reg    v7856_3_ce0_local;
reg    v7856_2_we0_local;
reg    v7856_2_ce0_local;
reg    v7856_1_we0_local;
reg    v7856_1_ce0_local;
reg    v7856_we0_local;
reg    v7856_ce0_local;
wire   [0:0] tmp_fu_658_p3;
wire   [0:0] tmp_413_fu_674_p3;
wire   [0:0] empty_fu_698_p1;
wire   [0:0] xor_ln12043_fu_772_p2;
wire   [5:0] add_ln12043_fu_758_p2;
wire   [4:0] select_ln12043_fu_764_p3;
wire   [0:0] and_ln12043_fu_778_p2;
wire   [0:0] empty_399_fu_798_p2;
wire   [4:0] add_ln12044_fu_792_p2;
wire   [5:0] mul_i_fu_666_p3;
wire   [6:0] tmp_415_fu_846_p4;
wire   [9:0] p_shl142_fu_836_p4;
wire   [9:0] zext_ln12048_fu_856_p1;
wire   [5:0] empty_400_fu_830_p2;
wire   [4:0] tmp_416_fu_866_p4;
wire   [6:0] tmp_417_fu_884_p3;
wire   [9:0] p_shl143_fu_876_p3;
wire   [9:0] zext_ln12064_fu_892_p1;
wire   [5:0] zext_ln12134_cast_cast_cast_cast_fu_682_p3;
wire   [5:0] zext_ln12044_fu_902_p1;
wire   [4:0] zext_ln12044_1_fu_916_p1;
wire   [4:0] p_udiv12_cast_cast_cast_cast_fu_690_p3;
wire   [5:0] empty_401_fu_920_p2;
wire   [4:0] v7788_mid2_fu_804_p3;
wire   [5:0] select_ln12043_cast_cast_fu_702_p3;
wire   [5:0] zext_ln12045_fu_942_p1;
wire   [5:0] add_ln12047_fu_956_p2;
wire   [6:0] add_ln12044_1_fu_978_p2;
wire   [4:0] tmp_414_fu_1048_p3;
wire   [7:0] p_shl141_fu_1041_p3;
wire   [7:0] zext_ln12078_fu_1055_p1;
wire   [7:0] sub_ln12078_fu_1059_p2;
wire   [7:0] zext_ln12078_1_fu_1065_p1;
wire   [9:0] zext_ln12048_1_fu_1074_p1;
wire   [9:0] add_ln12048_1_fu_1077_p2;
wire   [10:0] tmp_418_fu_1090_p3;
wire   [13:0] p_shl145_fu_1082_p3;
wire   [13:0] zext_ln12048_2_fu_1098_p1;
wire   [9:0] add_ln12064_fu_1108_p2;
wire   [10:0] tmp_419_fu_1121_p3;
wire   [13:0] p_shl146_fu_1113_p3;
wire   [13:0] zext_ln12064_1_fu_1129_p1;
wire   [9:0] zext_ln12056_fu_1139_p1;
wire   [9:0] add_ln12056_fu_1142_p2;
wire   [10:0] tmp_420_fu_1155_p3;
wire   [13:0] p_shl147_fu_1147_p3;
wire   [13:0] zext_ln12056_1_fu_1163_p1;
wire   [9:0] add_ln12072_fu_1173_p2;
wire   [10:0] tmp_421_fu_1186_p3;
wire   [13:0] p_shl_fu_1178_p3;
wire   [13:0] zext_ln12072_fu_1194_p1;
wire   [3:0] zext_ln12045_1_fu_1204_p1;
wire   [3:0] add_ln12048_fu_1207_p2;
wire   [13:0] sub_ln12048_1_fu_1102_p2;
wire   [13:0] zext_ln12048_3_fu_1212_p1;
wire   [13:0] add_ln12048_2_fu_1216_p2;
wire   [13:0] sub_ln12056_fu_1167_p2;
wire   [13:0] add_ln12056_1_fu_1227_p2;
wire   [13:0] sub_ln12064_1_fu_1133_p2;
wire   [13:0] add_ln12064_1_fu_1238_p2;
wire   [13:0] sub_ln12072_fu_1198_p2;
wire   [13:0] add_ln12072_1_fu_1249_p2;
wire   [13:0] zext_ln12050_fu_1260_p1;
wire   [13:0] add_ln12050_fu_1263_p2;
wire   [13:0] add_ln12058_fu_1276_p2;
wire   [13:0] add_ln12066_fu_1289_p2;
wire   [13:0] add_ln12074_fu_1302_p2;
wire   [10:0] p_shl144_fu_1318_p3;
wire   [10:0] zext_ln12078_2_fu_1315_p1;
wire   [10:0] sub_ln12078_1_fu_1325_p2;
wire   [10:0] zext_ln12078_3_fu_1331_p1;
wire   [10:0] add_ln12078_1_fu_1334_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_942;
reg    ap_condition_298;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12189_fu_180 = 11'd0;
#0 v7786190_fu_184 = 6'd0;
#0 indvar_flatten191_fu_188 = 7'd0;
#0 v7787192_fu_192 = 5'd0;
#0 v7788193_fu_196 = 5'd0;
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
    if ((1'b1 == ap_condition_298)) begin
        indvar_flatten12189_fu_180 <= add_ln12043_1_fu_992_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_298)) begin
    indvar_flatten191_fu_188 <= select_ln12044_1_fu_984_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_298)) begin
    v7786190_fu_184 <= v7786_fu_784_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_298)) begin
    v7787192_fu_192 <= v7787_fu_812_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_298)) begin
    v7788193_fu_196 <= v7788_fu_972_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12078_reg_1458 <= add_ln12078_fu_1068_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_402_reg_1423 <= empty_402_fu_926_p2;
        icmp_ln12043_reg_1454 <= icmp_ln12043_fu_1010_p2;
        lshr_ln109_reg_1418 <= {{v7787_fu_812_p3[4:1]}};
        lshr_ln110_reg_1433 <= {{v7788_mid2_fu_804_p3[4:2]}};
        lshr_ln110_reg_1433_pp0_iter1_reg <= lshr_ln110_reg_1433;
        lshr_ln111_reg_1439 <= {{add_ln12047_fu_956_p2[5:2]}};
        lshr_ln_reg_1400 <= {{v7786_fu_784_p3[4:1]}};
        sub_ln12048_reg_1406[9 : 2] <= sub_ln12048_fu_860_p2[9 : 2];
        sub_ln12064_reg_1412[9 : 2] <= sub_ln12064_fu_896_p2[9 : 2];
        tmp_s_reg_1428 <= {{empty_401_fu_920_p2[5:1]}};
        trunc_ln12043_cast_cast_cast_cast_reg_1395[2 : 0] <= trunc_ln12043_cast_cast_cast_cast_fu_710_p3[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln12044_reg_1449 <= icmp_ln12044_fu_1004_p2;
        icmp_ln12045_reg_1444 <= icmp_ln12045_fu_998_p2;
    end
end
always @ (*) begin
    if (((icmp_ln12043_fu_1010_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_942)) begin
            ap_phi_mux_icmp_ln12044195_phi_fu_641_p4 = icmp_ln12044_reg_1449;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln12044195_phi_fu_641_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln12044195_phi_fu_641_p4 = icmp_ln12044_reg_1449;
        end
    end else begin
        ap_phi_mux_icmp_ln12044195_phi_fu_641_p4 = icmp_ln12044_reg_1449;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_942)) begin
            ap_phi_mux_icmp_ln12045194_phi_fu_651_p4 = icmp_ln12045_reg_1444;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln12045194_phi_fu_651_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln12045194_phi_fu_651_p4 = icmp_ln12045_reg_1444;
        end
    end else begin
        ap_phi_mux_icmp_ln12045194_phi_fu_651_p4 = icmp_ln12045_reg_1444;
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
        ap_sig_allocacmp_indvar_flatten12189_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12189_load = indvar_flatten12189_fu_180;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten191_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten191_load = indvar_flatten191_fu_188;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7786190_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v7786190_load = v7786190_fu_184;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7787192_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v7787192_load = v7787192_fu_192;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7788193_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v7788193_load = v7788193_fu_196;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_10_ce0_local = 1'b1;
    end else begin
        v7856_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_10_we0_local = 1'b1;
    end else begin
        v7856_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_11_ce0_local = 1'b1;
    end else begin
        v7856_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_11_we0_local = 1'b1;
    end else begin
        v7856_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_12_ce0_local = 1'b1;
    end else begin
        v7856_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_12_we0_local = 1'b1;
    end else begin
        v7856_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_13_ce0_local = 1'b1;
    end else begin
        v7856_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_13_we0_local = 1'b1;
    end else begin
        v7856_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_14_ce0_local = 1'b1;
    end else begin
        v7856_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_14_we0_local = 1'b1;
    end else begin
        v7856_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_15_ce0_local = 1'b1;
    end else begin
        v7856_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_15_we0_local = 1'b1;
    end else begin
        v7856_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_1_ce0_local = 1'b1;
    end else begin
        v7856_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_1_we0_local = 1'b1;
    end else begin
        v7856_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_2_ce0_local = 1'b1;
    end else begin
        v7856_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_2_we0_local = 1'b1;
    end else begin
        v7856_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_3_ce0_local = 1'b1;
    end else begin
        v7856_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_3_we0_local = 1'b1;
    end else begin
        v7856_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_4_ce0_local = 1'b1;
    end else begin
        v7856_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_4_we0_local = 1'b1;
    end else begin
        v7856_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_5_ce0_local = 1'b1;
    end else begin
        v7856_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_5_we0_local = 1'b1;
    end else begin
        v7856_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_6_ce0_local = 1'b1;
    end else begin
        v7856_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_6_we0_local = 1'b1;
    end else begin
        v7856_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_7_ce0_local = 1'b1;
    end else begin
        v7856_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_7_we0_local = 1'b1;
    end else begin
        v7856_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_8_ce0_local = 1'b1;
    end else begin
        v7856_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_8_we0_local = 1'b1;
    end else begin
        v7856_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_9_ce0_local = 1'b1;
    end else begin
        v7856_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_9_we0_local = 1'b1;
    end else begin
        v7856_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_ce0_local = 1'b1;
    end else begin
        v7856_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7856_we0_local = 1'b1;
    end else begin
        v7856_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9207_0_0_0_ce0_local = 1'b1;
    end else begin
        v9207_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9207_0_0_1_ce0_local = 1'b1;
    end else begin
        v9207_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9207_0_0_2_ce0_local = 1'b1;
    end else begin
        v9207_0_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9207_0_0_3_ce0_local = 1'b1;
    end else begin
        v9207_0_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9207_0_1_0_ce0_local = 1'b1;
    end else begin
        v9207_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9207_0_1_1_ce0_local = 1'b1;
    end else begin
        v9207_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9207_0_1_2_ce0_local = 1'b1;
    end else begin
        v9207_0_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9207_0_1_3_ce0_local = 1'b1;
    end else begin
        v9207_0_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9207_1_0_0_ce0_local = 1'b1;
    end else begin
        v9207_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9207_1_0_1_ce0_local = 1'b1;
    end else begin
        v9207_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9207_1_0_2_ce0_local = 1'b1;
    end else begin
        v9207_1_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9207_1_0_3_ce0_local = 1'b1;
    end else begin
        v9207_1_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9207_1_1_0_ce0_local = 1'b1;
    end else begin
        v9207_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9207_1_1_1_ce0_local = 1'b1;
    end else begin
        v9207_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9207_1_1_2_ce0_local = 1'b1;
    end else begin
        v9207_1_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9207_1_1_3_ce0_local = 1'b1;
    end else begin
        v9207_1_1_3_ce0_local = 1'b0;
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
assign add_ln12043_1_fu_992_p2 = (ap_sig_allocacmp_indvar_flatten12189_load + 11'd1);
assign add_ln12043_fu_758_p2 = (ap_sig_allocacmp_v7786190_load + 6'd2);
assign add_ln12044_1_fu_978_p2 = (ap_sig_allocacmp_indvar_flatten191_load + 7'd1);
assign add_ln12044_fu_792_p2 = (select_ln12043_fu_764_p3 + 5'd2);
assign add_ln12047_fu_956_p2 = (select_ln12043_cast_cast_fu_702_p3 + zext_ln12045_fu_942_p1);
assign add_ln12048_1_fu_1077_p2 = (sub_ln12048_reg_1406 + zext_ln12048_1_fu_1074_p1);
assign add_ln12048_2_fu_1216_p2 = (sub_ln12048_1_fu_1102_p2 + zext_ln12048_3_fu_1212_p1);
assign add_ln12048_fu_1207_p2 = (zext_ln12045_1_fu_1204_p1 + trunc_ln12043_cast_cast_cast_cast_reg_1395);
assign add_ln12050_fu_1263_p2 = (sub_ln12048_1_fu_1102_p2 + zext_ln12050_fu_1260_p1);
assign add_ln12056_1_fu_1227_p2 = (sub_ln12056_fu_1167_p2 + zext_ln12048_3_fu_1212_p1);
assign add_ln12056_fu_1142_p2 = (sub_ln12048_reg_1406 + zext_ln12056_fu_1139_p1);
assign add_ln12058_fu_1276_p2 = (sub_ln12056_fu_1167_p2 + zext_ln12050_fu_1260_p1);
assign add_ln12064_1_fu_1238_p2 = (sub_ln12064_1_fu_1133_p2 + zext_ln12048_3_fu_1212_p1);
assign add_ln12064_fu_1108_p2 = (sub_ln12064_reg_1412 + zext_ln12048_1_fu_1074_p1);
assign add_ln12066_fu_1289_p2 = (sub_ln12064_1_fu_1133_p2 + zext_ln12050_fu_1260_p1);
assign add_ln12072_1_fu_1249_p2 = (sub_ln12072_fu_1198_p2 + zext_ln12048_3_fu_1212_p1);
assign add_ln12072_fu_1173_p2 = (sub_ln12064_reg_1412 + zext_ln12056_fu_1139_p1);
assign add_ln12074_fu_1302_p2 = (sub_ln12072_fu_1198_p2 + zext_ln12050_fu_1260_p1);
assign add_ln12078_1_fu_1334_p2 = (sub_ln12078_1_fu_1325_p2 + zext_ln12078_3_fu_1331_p1);
assign add_ln12078_fu_1068_p2 = (sub_ln12078_fu_1059_p2 + zext_ln12078_1_fu_1065_p1);
assign and_ln12043_fu_778_p2 = (xor_ln12043_fu_772_p2 & ap_phi_mux_icmp_ln12045194_phi_fu_651_p4);
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
    ap_condition_298 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_942 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln12043_reg_1454 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_399_fu_798_p2 = (ap_phi_mux_icmp_ln12044195_phi_fu_641_p4 | and_ln12043_fu_778_p2);
assign empty_400_fu_830_p2 = (v7786_fu_784_p3 + mul_i_fu_666_p3);
assign empty_401_fu_920_p2 = (zext_ln12134_cast_cast_cast_cast_fu_682_p3 + zext_ln12044_fu_902_p1);
assign empty_402_fu_926_p2 = (zext_ln12044_1_fu_916_p1 + p_udiv12_cast_cast_cast_cast_fu_690_p3);
assign empty_fu_698_p1 = v7849_0[0:0];
assign icmp_ln12043_fu_1010_p2 = ((ap_sig_allocacmp_indvar_flatten12189_load == 11'd1567) ? 1'b1 : 1'b0);
assign icmp_ln12044_fu_1004_p2 = ((select_ln12044_1_fu_984_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln12045_fu_998_p2 = ((v7788_fu_972_p2 == 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln109_fu_906_p4 = {{v7787_fu_812_p3[4:1]}};
assign lshr_ln_fu_820_p4 = {{v7786_fu_784_p3[4:1]}};
assign mul_i_fu_666_p3 = {{tmp_fu_658_p3}, {5'd0}};
assign p_shl141_fu_1041_p3 = {{lshr_ln_reg_1400}, {4'd0}};
assign p_shl142_fu_836_p4 = {{{tmp_fu_658_p3}, {lshr_ln_fu_820_p4}}, {5'd0}};
assign p_shl143_fu_876_p3 = {{tmp_416_fu_866_p4}, {5'd0}};
assign p_shl144_fu_1318_p3 = {{add_ln12078_reg_1458}, {3'd0}};
assign p_shl145_fu_1082_p3 = {{add_ln12048_1_fu_1077_p2}, {4'd0}};
assign p_shl146_fu_1113_p3 = {{add_ln12064_fu_1108_p2}, {4'd0}};
assign p_shl147_fu_1147_p3 = {{add_ln12056_fu_1142_p2}, {4'd0}};
assign p_shl_fu_1178_p3 = {{add_ln12072_fu_1173_p2}, {4'd0}};
assign p_udiv12_cast_cast_cast_cast_fu_690_p3 = ((tmp_413_fu_674_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign select_ln12043_cast_cast_fu_702_p3 = ((empty_fu_698_p1[0:0] == 1'b1) ? 6'd28 : 6'd0);
assign select_ln12043_fu_764_p3 = ((ap_phi_mux_icmp_ln12044195_phi_fu_641_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v7787192_load);
assign select_ln12044_1_fu_984_p3 = ((ap_phi_mux_icmp_ln12044195_phi_fu_641_p4[0:0] == 1'b1) ? 7'd1 : add_ln12044_1_fu_978_p2);
assign sub_ln12048_1_fu_1102_p2 = (p_shl145_fu_1082_p3 - zext_ln12048_2_fu_1098_p1);
assign sub_ln12048_fu_860_p2 = (p_shl142_fu_836_p4 - zext_ln12048_fu_856_p1);
assign sub_ln12056_fu_1167_p2 = (p_shl147_fu_1147_p3 - zext_ln12056_1_fu_1163_p1);
assign sub_ln12064_1_fu_1133_p2 = (p_shl146_fu_1113_p3 - zext_ln12064_1_fu_1129_p1);
assign sub_ln12064_fu_896_p2 = (p_shl143_fu_876_p3 - zext_ln12064_fu_892_p1);
assign sub_ln12072_fu_1198_p2 = (p_shl_fu_1178_p3 - zext_ln12072_fu_1194_p1);
assign sub_ln12078_1_fu_1325_p2 = (p_shl144_fu_1318_p3 - zext_ln12078_2_fu_1315_p1);
assign sub_ln12078_fu_1059_p2 = (p_shl141_fu_1041_p3 - zext_ln12078_fu_1055_p1);
assign tmp_413_fu_674_p3 = v7849_0[32'd1];
assign tmp_414_fu_1048_p3 = {{lshr_ln_reg_1400}, {1'd0}};
assign tmp_415_fu_846_p4 = {{{tmp_fu_658_p3}, {lshr_ln_fu_820_p4}}, {2'd0}};
assign tmp_416_fu_866_p4 = {{empty_400_fu_830_p2[5:1]}};
assign tmp_417_fu_884_p3 = {{tmp_416_fu_866_p4}, {2'd0}};
assign tmp_418_fu_1090_p3 = {{add_ln12048_1_fu_1077_p2}, {1'd0}};
assign tmp_419_fu_1121_p3 = {{add_ln12064_fu_1108_p2}, {1'd0}};
assign tmp_420_fu_1155_p3 = {{add_ln12056_fu_1142_p2}, {1'd0}};
assign tmp_421_fu_1186_p3 = {{add_ln12072_fu_1173_p2}, {1'd0}};
assign tmp_fu_658_p3 = v7849_0[32'd2];
assign trunc_ln12043_cast_cast_cast_cast_fu_710_p3 = ((empty_fu_698_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign v7786_fu_784_p3 = ((ap_phi_mux_icmp_ln12044195_phi_fu_641_p4[0:0] == 1'b1) ? add_ln12043_fu_758_p2 : ap_sig_allocacmp_v7786190_load);
assign v7787_fu_812_p3 = ((and_ln12043_fu_778_p2[0:0] == 1'b1) ? add_ln12044_fu_792_p2 : select_ln12043_fu_764_p3);
assign v7788_fu_972_p2 = (v7788_mid2_fu_804_p3 + 5'd4);
assign v7788_mid2_fu_804_p3 = ((empty_399_fu_798_p2[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v7788193_load);
assign v7856_10_address0 = zext_ln12078_4_fu_1340_p1;
assign v7856_10_ce0 = v7856_10_ce0_local;
assign v7856_10_d0 = v9207_0_1_1_q0;
assign v7856_10_we0 = v7856_10_we0_local;
assign v7856_11_address0 = zext_ln12078_4_fu_1340_p1;
assign v7856_11_ce0 = v7856_11_ce0_local;
assign v7856_11_d0 = v9207_0_1_0_q0;
assign v7856_11_we0 = v7856_11_we0_local;
assign v7856_12_address0 = zext_ln12078_4_fu_1340_p1;
assign v7856_12_ce0 = v7856_12_ce0_local;
assign v7856_12_d0 = v9207_0_0_3_q0;
assign v7856_12_we0 = v7856_12_we0_local;
assign v7856_13_address0 = zext_ln12078_4_fu_1340_p1;
assign v7856_13_ce0 = v7856_13_ce0_local;
assign v7856_13_d0 = v9207_0_0_2_q0;
assign v7856_13_we0 = v7856_13_we0_local;
assign v7856_14_address0 = zext_ln12078_4_fu_1340_p1;
assign v7856_14_ce0 = v7856_14_ce0_local;
assign v7856_14_d0 = v9207_0_0_1_q0;
assign v7856_14_we0 = v7856_14_we0_local;
assign v7856_15_address0 = zext_ln12078_4_fu_1340_p1;
assign v7856_15_ce0 = v7856_15_ce0_local;
assign v7856_15_d0 = v9207_0_0_0_q0;
assign v7856_15_we0 = v7856_15_we0_local;
assign v7856_1_address0 = zext_ln12078_4_fu_1340_p1;
assign v7856_1_ce0 = v7856_1_ce0_local;
assign v7856_1_d0 = v9207_1_1_2_q0;
assign v7856_1_we0 = v7856_1_we0_local;
assign v7856_2_address0 = zext_ln12078_4_fu_1340_p1;
assign v7856_2_ce0 = v7856_2_ce0_local;
assign v7856_2_d0 = v9207_1_1_1_q0;
assign v7856_2_we0 = v7856_2_we0_local;
assign v7856_3_address0 = zext_ln12078_4_fu_1340_p1;
assign v7856_3_ce0 = v7856_3_ce0_local;
assign v7856_3_d0 = v9207_1_1_0_q0;
assign v7856_3_we0 = v7856_3_we0_local;
assign v7856_4_address0 = zext_ln12078_4_fu_1340_p1;
assign v7856_4_ce0 = v7856_4_ce0_local;
assign v7856_4_d0 = v9207_1_0_3_q0;
assign v7856_4_we0 = v7856_4_we0_local;
assign v7856_5_address0 = zext_ln12078_4_fu_1340_p1;
assign v7856_5_ce0 = v7856_5_ce0_local;
assign v7856_5_d0 = v9207_1_0_2_q0;
assign v7856_5_we0 = v7856_5_we0_local;
assign v7856_6_address0 = zext_ln12078_4_fu_1340_p1;
assign v7856_6_ce0 = v7856_6_ce0_local;
assign v7856_6_d0 = v9207_1_0_1_q0;
assign v7856_6_we0 = v7856_6_we0_local;
assign v7856_7_address0 = zext_ln12078_4_fu_1340_p1;
assign v7856_7_ce0 = v7856_7_ce0_local;
assign v7856_7_d0 = v9207_1_0_0_q0;
assign v7856_7_we0 = v7856_7_we0_local;
assign v7856_8_address0 = zext_ln12078_4_fu_1340_p1;
assign v7856_8_ce0 = v7856_8_ce0_local;
assign v7856_8_d0 = v9207_0_1_3_q0;
assign v7856_8_we0 = v7856_8_we0_local;
assign v7856_9_address0 = zext_ln12078_4_fu_1340_p1;
assign v7856_9_ce0 = v7856_9_ce0_local;
assign v7856_9_d0 = v9207_0_1_2_q0;
assign v7856_9_we0 = v7856_9_we0_local;
assign v7856_address0 = zext_ln12078_4_fu_1340_p1;
assign v7856_ce0 = v7856_ce0_local;
assign v7856_d0 = v9207_1_1_3_q0;
assign v7856_we0 = v7856_we0_local;
assign v9207_0_0_0_address0 = zext_ln12048_4_fu_1222_p1;
assign v9207_0_0_0_ce0 = v9207_0_0_0_ce0_local;
assign v9207_0_0_1_address0 = zext_ln12050_1_fu_1269_p1;
assign v9207_0_0_1_ce0 = v9207_0_0_1_ce0_local;
assign v9207_0_0_2_address0 = zext_ln12050_1_fu_1269_p1;
assign v9207_0_0_2_ce0 = v9207_0_0_2_ce0_local;
assign v9207_0_0_3_address0 = zext_ln12050_1_fu_1269_p1;
assign v9207_0_0_3_ce0 = v9207_0_0_3_ce0_local;
assign v9207_0_1_0_address0 = zext_ln12056_2_fu_1233_p1;
assign v9207_0_1_0_ce0 = v9207_0_1_0_ce0_local;
assign v9207_0_1_1_address0 = zext_ln12058_fu_1282_p1;
assign v9207_0_1_1_ce0 = v9207_0_1_1_ce0_local;
assign v9207_0_1_2_address0 = zext_ln12058_fu_1282_p1;
assign v9207_0_1_2_ce0 = v9207_0_1_2_ce0_local;
assign v9207_0_1_3_address0 = zext_ln12058_fu_1282_p1;
assign v9207_0_1_3_ce0 = v9207_0_1_3_ce0_local;
assign v9207_1_0_0_address0 = zext_ln12064_2_fu_1244_p1;
assign v9207_1_0_0_ce0 = v9207_1_0_0_ce0_local;
assign v9207_1_0_1_address0 = zext_ln12066_fu_1295_p1;
assign v9207_1_0_1_ce0 = v9207_1_0_1_ce0_local;
assign v9207_1_0_2_address0 = zext_ln12066_fu_1295_p1;
assign v9207_1_0_2_ce0 = v9207_1_0_2_ce0_local;
assign v9207_1_0_3_address0 = zext_ln12066_fu_1295_p1;
assign v9207_1_0_3_ce0 = v9207_1_0_3_ce0_local;
assign v9207_1_1_0_address0 = zext_ln12072_1_fu_1255_p1;
assign v9207_1_1_0_ce0 = v9207_1_1_0_ce0_local;
assign v9207_1_1_1_address0 = zext_ln12074_fu_1308_p1;
assign v9207_1_1_1_ce0 = v9207_1_1_1_ce0_local;
assign v9207_1_1_2_address0 = zext_ln12074_fu_1308_p1;
assign v9207_1_1_2_ce0 = v9207_1_1_2_ce0_local;
assign v9207_1_1_3_address0 = zext_ln12074_fu_1308_p1;
assign v9207_1_1_3_ce0 = v9207_1_1_3_ce0_local;
assign xor_ln12043_fu_772_p2 = (ap_phi_mux_icmp_ln12044195_phi_fu_641_p4 ^ 1'd1);
assign zext_ln12044_1_fu_916_p1 = lshr_ln109_fu_906_p4;
assign zext_ln12044_fu_902_p1 = v7787_fu_812_p3;
assign zext_ln12045_1_fu_1204_p1 = lshr_ln110_reg_1433;
assign zext_ln12045_fu_942_p1 = v7788_mid2_fu_804_p3;
assign zext_ln12048_1_fu_1074_p1 = empty_402_reg_1423;
assign zext_ln12048_2_fu_1098_p1 = tmp_418_fu_1090_p3;
assign zext_ln12048_3_fu_1212_p1 = add_ln12048_fu_1207_p2;
assign zext_ln12048_4_fu_1222_p1 = add_ln12048_2_fu_1216_p2;
assign zext_ln12048_fu_856_p1 = tmp_415_fu_846_p4;
assign zext_ln12050_1_fu_1269_p1 = add_ln12050_fu_1263_p2;
assign zext_ln12050_fu_1260_p1 = lshr_ln111_reg_1439;
assign zext_ln12056_1_fu_1163_p1 = tmp_420_fu_1155_p3;
assign zext_ln12056_2_fu_1233_p1 = add_ln12056_1_fu_1227_p2;
assign zext_ln12056_fu_1139_p1 = tmp_s_reg_1428;
assign zext_ln12058_fu_1282_p1 = add_ln12058_fu_1276_p2;
assign zext_ln12064_1_fu_1129_p1 = tmp_419_fu_1121_p3;
assign zext_ln12064_2_fu_1244_p1 = add_ln12064_1_fu_1238_p2;
assign zext_ln12064_fu_892_p1 = tmp_417_fu_884_p3;
assign zext_ln12066_fu_1295_p1 = add_ln12066_fu_1289_p2;
assign zext_ln12072_1_fu_1255_p1 = add_ln12072_1_fu_1249_p2;
assign zext_ln12072_fu_1194_p1 = tmp_421_fu_1186_p3;
assign zext_ln12074_fu_1308_p1 = add_ln12074_fu_1302_p2;
assign zext_ln12078_1_fu_1065_p1 = lshr_ln109_reg_1418;
assign zext_ln12078_2_fu_1315_p1 = add_ln12078_reg_1458;
assign zext_ln12078_3_fu_1331_p1 = lshr_ln110_reg_1433_pp0_iter1_reg;
assign zext_ln12078_4_fu_1340_p1 = add_ln12078_1_fu_1334_p2;
assign zext_ln12078_fu_1055_p1 = tmp_414_fu_1048_p3;
assign zext_ln12134_cast_cast_cast_cast_fu_682_p3 = ((tmp_413_fu_674_p3[0:0] == 1'b1) ? 6'd28 : 6'd0);
always @ (posedge ap_clk) begin
    trunc_ln12043_cast_cast_cast_cast_reg_1395[3] <= 1'b0;
    sub_ln12048_reg_1406[1:0] <= 2'b00;
    sub_ln12064_reg_1412[1:0] <= 2'b00;
end
endmodule 