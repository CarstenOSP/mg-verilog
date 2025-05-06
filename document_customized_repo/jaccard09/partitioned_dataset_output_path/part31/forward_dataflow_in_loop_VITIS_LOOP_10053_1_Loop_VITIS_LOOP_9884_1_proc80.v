
module forward_dataflow_in_loop_VITIS_LOOP_10053_1_Loop_VITIS_LOOP_9884_1_proc80 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v6515_address0,v6515_ce0,v6515_we0,v6515_d0,v6515_1_address0,v6515_1_ce0,v6515_1_we0,v6515_1_d0,v6515_2_address0,v6515_2_ce0,v6515_2_we0,v6515_2_d0,v6515_3_address0,v6515_3_ce0,v6515_3_we0,v6515_3_d0,v6515_4_address0,v6515_4_ce0,v6515_4_we0,v6515_4_d0,v6515_5_address0,v6515_5_ce0,v6515_5_we0,v6515_5_d0,v6515_6_address0,v6515_6_ce0,v6515_6_we0,v6515_6_d0,v6515_7_address0,v6515_7_ce0,v6515_7_we0,v6515_7_d0,v6515_8_address0,v6515_8_ce0,v6515_8_we0,v6515_8_d0,v6515_9_address0,v6515_9_ce0,v6515_9_we0,v6515_9_d0,v6515_10_address0,v6515_10_ce0,v6515_10_we0,v6515_10_d0,v6515_11_address0,v6515_11_ce0,v6515_11_we0,v6515_11_d0,v6515_12_address0,v6515_12_ce0,v6515_12_we0,v6515_12_d0,v6515_13_address0,v6515_13_ce0,v6515_13_we0,v6515_13_d0,v6515_14_address0,v6515_14_ce0,v6515_14_we0,v6515_14_d0,v6515_15_address0,v6515_15_ce0,v6515_15_we0,v6515_15_d0,v6506_0,v9221_0_0_0_address0,v9221_0_0_0_ce0,v9221_0_0_0_q0,v9221_0_0_1_address0,v9221_0_0_1_ce0,v9221_0_0_1_q0,v9221_0_0_2_address0,v9221_0_0_2_ce0,v9221_0_0_2_q0,v9221_0_0_3_address0,v9221_0_0_3_ce0,v9221_0_0_3_q0,v9221_0_1_0_address0,v9221_0_1_0_ce0,v9221_0_1_0_q0,v9221_0_1_1_address0,v9221_0_1_1_ce0,v9221_0_1_1_q0,v9221_0_1_2_address0,v9221_0_1_2_ce0,v9221_0_1_2_q0,v9221_0_1_3_address0,v9221_0_1_3_ce0,v9221_0_1_3_q0,v9221_1_0_0_address0,v9221_1_0_0_ce0,v9221_1_0_0_q0,v9221_1_0_1_address0,v9221_1_0_1_ce0,v9221_1_0_1_q0,v9221_1_0_2_address0,v9221_1_0_2_ce0,v9221_1_0_2_q0,v9221_1_0_3_address0,v9221_1_0_3_ce0,v9221_1_0_3_q0,v9221_1_1_0_address0,v9221_1_1_0_ce0,v9221_1_1_0_q0,v9221_1_1_1_address0,v9221_1_1_1_ce0,v9221_1_1_1_q0,v9221_1_1_2_address0,v9221_1_1_2_ce0,v9221_1_1_2_q0,v9221_1_1_3_address0,v9221_1_1_3_ce0,v9221_1_1_3_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [10:0] v6515_address0;
output   v6515_ce0;
output   v6515_we0;
output  [7:0] v6515_d0;
output  [10:0] v6515_1_address0;
output   v6515_1_ce0;
output   v6515_1_we0;
output  [7:0] v6515_1_d0;
output  [10:0] v6515_2_address0;
output   v6515_2_ce0;
output   v6515_2_we0;
output  [7:0] v6515_2_d0;
output  [10:0] v6515_3_address0;
output   v6515_3_ce0;
output   v6515_3_we0;
output  [7:0] v6515_3_d0;
output  [10:0] v6515_4_address0;
output   v6515_4_ce0;
output   v6515_4_we0;
output  [7:0] v6515_4_d0;
output  [10:0] v6515_5_address0;
output   v6515_5_ce0;
output   v6515_5_we0;
output  [7:0] v6515_5_d0;
output  [10:0] v6515_6_address0;
output   v6515_6_ce0;
output   v6515_6_we0;
output  [7:0] v6515_6_d0;
output  [10:0] v6515_7_address0;
output   v6515_7_ce0;
output   v6515_7_we0;
output  [7:0] v6515_7_d0;
output  [10:0] v6515_8_address0;
output   v6515_8_ce0;
output   v6515_8_we0;
output  [7:0] v6515_8_d0;
output  [10:0] v6515_9_address0;
output   v6515_9_ce0;
output   v6515_9_we0;
output  [7:0] v6515_9_d0;
output  [10:0] v6515_10_address0;
output   v6515_10_ce0;
output   v6515_10_we0;
output  [7:0] v6515_10_d0;
output  [10:0] v6515_11_address0;
output   v6515_11_ce0;
output   v6515_11_we0;
output  [7:0] v6515_11_d0;
output  [10:0] v6515_12_address0;
output   v6515_12_ce0;
output   v6515_12_we0;
output  [7:0] v6515_12_d0;
output  [10:0] v6515_13_address0;
output   v6515_13_ce0;
output   v6515_13_we0;
output  [7:0] v6515_13_d0;
output  [10:0] v6515_14_address0;
output   v6515_14_ce0;
output   v6515_14_we0;
output  [7:0] v6515_14_d0;
output  [10:0] v6515_15_address0;
output   v6515_15_ce0;
output   v6515_15_we0;
output  [7:0] v6515_15_d0;
input  [7:0] v6506_0;
output  [13:0] v9221_0_0_0_address0;
output   v9221_0_0_0_ce0;
input  [7:0] v9221_0_0_0_q0;
output  [13:0] v9221_0_0_1_address0;
output   v9221_0_0_1_ce0;
input  [7:0] v9221_0_0_1_q0;
output  [13:0] v9221_0_0_2_address0;
output   v9221_0_0_2_ce0;
input  [7:0] v9221_0_0_2_q0;
output  [13:0] v9221_0_0_3_address0;
output   v9221_0_0_3_ce0;
input  [7:0] v9221_0_0_3_q0;
output  [13:0] v9221_0_1_0_address0;
output   v9221_0_1_0_ce0;
input  [7:0] v9221_0_1_0_q0;
output  [13:0] v9221_0_1_1_address0;
output   v9221_0_1_1_ce0;
input  [7:0] v9221_0_1_1_q0;
output  [13:0] v9221_0_1_2_address0;
output   v9221_0_1_2_ce0;
input  [7:0] v9221_0_1_2_q0;
output  [13:0] v9221_0_1_3_address0;
output   v9221_0_1_3_ce0;
input  [7:0] v9221_0_1_3_q0;
output  [13:0] v9221_1_0_0_address0;
output   v9221_1_0_0_ce0;
input  [7:0] v9221_1_0_0_q0;
output  [13:0] v9221_1_0_1_address0;
output   v9221_1_0_1_ce0;
input  [7:0] v9221_1_0_1_q0;
output  [13:0] v9221_1_0_2_address0;
output   v9221_1_0_2_ce0;
input  [7:0] v9221_1_0_2_q0;
output  [13:0] v9221_1_0_3_address0;
output   v9221_1_0_3_ce0;
input  [7:0] v9221_1_0_3_q0;
output  [13:0] v9221_1_1_0_address0;
output   v9221_1_1_0_ce0;
input  [7:0] v9221_1_1_0_q0;
output  [13:0] v9221_1_1_1_address0;
output   v9221_1_1_1_ce0;
input  [7:0] v9221_1_1_1_q0;
output  [13:0] v9221_1_1_2_address0;
output   v9221_1_1_2_ce0;
input  [7:0] v9221_1_1_2_q0;
output  [13:0] v9221_1_1_3_address0;
output   v9221_1_1_3_ce0;
input  [7:0] v9221_1_1_3_q0;
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
wire   [0:0] icmp_ln9884_fu_1010_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] trunc_ln9884_cast_cast_cast_cast_fu_710_p3;
reg   [3:0] trunc_ln9884_cast_cast_cast_cast_reg_1395;
wire   [3:0] lshr_ln_fu_820_p4;
reg   [3:0] lshr_ln_reg_1400;
wire   [9:0] sub_ln9889_fu_860_p2;
reg   [9:0] sub_ln9889_reg_1406;
wire   [9:0] sub_ln9905_fu_896_p2;
reg   [9:0] sub_ln9905_reg_1412;
wire   [3:0] lshr_ln167_fu_906_p4;
reg   [3:0] lshr_ln167_reg_1418;
wire   [4:0] empty_484_fu_926_p2;
reg   [4:0] empty_484_reg_1423;
reg   [4:0] tmp_s_reg_1428;
reg   [2:0] lshr_ln168_reg_1433;
reg   [2:0] lshr_ln168_reg_1433_pp0_iter1_reg;
reg   [3:0] lshr_ln169_reg_1439;
wire   [0:0] icmp_ln9886_fu_998_p2;
reg   [0:0] icmp_ln9886_reg_1444;
wire   [0:0] icmp_ln9885_fu_1004_p2;
reg   [0:0] icmp_ln9885_reg_1449;
reg   [0:0] icmp_ln9884_reg_1454;
wire   [7:0] add_ln9919_fu_1068_p2;
reg   [7:0] add_ln9919_reg_1458;
reg   [0:0] ap_phi_mux_icmp_ln9885195_phi_fu_641_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln9886194_phi_fu_651_p4;
wire   [63:0] zext_ln9889_4_fu_1222_p1;
wire   [63:0] zext_ln9897_2_fu_1233_p1;
wire   [63:0] zext_ln9905_2_fu_1244_p1;
wire   [63:0] zext_ln9913_1_fu_1255_p1;
wire   [63:0] zext_ln9891_1_fu_1269_p1;
wire   [63:0] zext_ln9899_fu_1282_p1;
wire   [63:0] zext_ln9907_fu_1295_p1;
wire   [63:0] zext_ln9915_fu_1308_p1;
wire   [63:0] zext_ln9919_4_fu_1340_p1;
reg   [10:0] indvar_flatten12189_fu_180;
wire   [10:0] add_ln9884_1_fu_992_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten12189_load;
reg   [5:0] v6439190_fu_184;
wire   [5:0] v6439_fu_784_p3;
reg   [5:0] ap_sig_allocacmp_v6439190_load;
reg   [6:0] indvar_flatten191_fu_188;
wire   [6:0] select_ln9885_1_fu_984_p3;
reg   [6:0] ap_sig_allocacmp_indvar_flatten191_load;
reg   [4:0] v6440192_fu_192;
wire   [4:0] v6440_fu_812_p3;
reg   [4:0] ap_sig_allocacmp_v6440192_load;
reg   [4:0] v6441193_fu_196;
wire   [4:0] v6441_fu_972_p2;
reg   [4:0] ap_sig_allocacmp_v6441193_load;
reg    v9221_0_0_0_ce0_local;
reg    v9221_0_0_1_ce0_local;
reg    v9221_0_0_2_ce0_local;
reg    v9221_0_0_3_ce0_local;
reg    v9221_0_1_0_ce0_local;
reg    v9221_0_1_1_ce0_local;
reg    v9221_0_1_2_ce0_local;
reg    v9221_0_1_3_ce0_local;
reg    v9221_1_0_0_ce0_local;
reg    v9221_1_0_1_ce0_local;
reg    v9221_1_0_2_ce0_local;
reg    v9221_1_0_3_ce0_local;
reg    v9221_1_1_0_ce0_local;
reg    v9221_1_1_1_ce0_local;
reg    v9221_1_1_2_ce0_local;
reg    v9221_1_1_3_ce0_local;
reg    v6515_15_we0_local;
reg    v6515_15_ce0_local;
reg    v6515_14_we0_local;
reg    v6515_14_ce0_local;
reg    v6515_13_we0_local;
reg    v6515_13_ce0_local;
reg    v6515_12_we0_local;
reg    v6515_12_ce0_local;
reg    v6515_11_we0_local;
reg    v6515_11_ce0_local;
reg    v6515_10_we0_local;
reg    v6515_10_ce0_local;
reg    v6515_9_we0_local;
reg    v6515_9_ce0_local;
reg    v6515_8_we0_local;
reg    v6515_8_ce0_local;
reg    v6515_7_we0_local;
reg    v6515_7_ce0_local;
reg    v6515_6_we0_local;
reg    v6515_6_ce0_local;
reg    v6515_5_we0_local;
reg    v6515_5_ce0_local;
reg    v6515_4_we0_local;
reg    v6515_4_ce0_local;
reg    v6515_3_we0_local;
reg    v6515_3_ce0_local;
reg    v6515_2_we0_local;
reg    v6515_2_ce0_local;
reg    v6515_1_we0_local;
reg    v6515_1_ce0_local;
reg    v6515_we0_local;
reg    v6515_ce0_local;
wire   [0:0] tmp_fu_658_p3;
wire   [0:0] tmp_541_fu_674_p3;
wire   [0:0] empty_fu_698_p1;
wire   [0:0] xor_ln9884_fu_772_p2;
wire   [5:0] add_ln9884_fu_758_p2;
wire   [4:0] select_ln9884_fu_764_p3;
wire   [0:0] and_ln9884_fu_778_p2;
wire   [0:0] empty_481_fu_798_p2;
wire   [4:0] add_ln9885_fu_792_p2;
wire   [5:0] mul_i_fu_666_p3;
wire   [6:0] tmp_543_fu_846_p4;
wire   [9:0] p_shl198_fu_836_p4;
wire   [9:0] zext_ln9889_fu_856_p1;
wire   [5:0] empty_482_fu_830_p2;
wire   [4:0] tmp_544_fu_866_p4;
wire   [6:0] tmp_545_fu_884_p3;
wire   [9:0] p_shl199_fu_876_p3;
wire   [9:0] zext_ln9905_fu_892_p1;
wire   [5:0] zext_ln9975_cast_cast_cast_cast_fu_682_p3;
wire   [5:0] zext_ln9885_fu_902_p1;
wire   [4:0] zext_ln9885_1_fu_916_p1;
wire   [4:0] p_udiv28_cast_cast_cast_cast_fu_690_p3;
wire   [5:0] empty_483_fu_920_p2;
wire   [4:0] v6441_mid2_fu_804_p3;
wire   [5:0] select_ln9884_cast_cast_fu_702_p3;
wire   [5:0] zext_ln9886_fu_942_p1;
wire   [5:0] add_ln9888_fu_956_p2;
wire   [6:0] add_ln9885_1_fu_978_p2;
wire   [4:0] tmp_542_fu_1048_p3;
wire   [7:0] p_shl197_fu_1041_p3;
wire   [7:0] zext_ln9919_fu_1055_p1;
wire   [7:0] sub_ln9919_fu_1059_p2;
wire   [7:0] zext_ln9919_1_fu_1065_p1;
wire   [9:0] zext_ln9889_1_fu_1074_p1;
wire   [9:0] add_ln9889_1_fu_1077_p2;
wire   [10:0] tmp_546_fu_1090_p3;
wire   [13:0] p_shl201_fu_1082_p3;
wire   [13:0] zext_ln9889_2_fu_1098_p1;
wire   [9:0] add_ln9905_fu_1108_p2;
wire   [10:0] tmp_547_fu_1121_p3;
wire   [13:0] p_shl202_fu_1113_p3;
wire   [13:0] zext_ln9905_1_fu_1129_p1;
wire   [9:0] zext_ln9897_fu_1139_p1;
wire   [9:0] add_ln9897_fu_1142_p2;
wire   [10:0] tmp_548_fu_1155_p3;
wire   [13:0] p_shl203_fu_1147_p3;
wire   [13:0] zext_ln9897_1_fu_1163_p1;
wire   [9:0] add_ln9913_fu_1173_p2;
wire   [10:0] tmp_549_fu_1186_p3;
wire   [13:0] p_shl_fu_1178_p3;
wire   [13:0] zext_ln9913_fu_1194_p1;
wire   [3:0] zext_ln9886_1_fu_1204_p1;
wire   [3:0] add_ln9889_fu_1207_p2;
wire   [13:0] sub_ln9889_1_fu_1102_p2;
wire   [13:0] zext_ln9889_3_fu_1212_p1;
wire   [13:0] add_ln9889_2_fu_1216_p2;
wire   [13:0] sub_ln9897_fu_1167_p2;
wire   [13:0] add_ln9897_1_fu_1227_p2;
wire   [13:0] sub_ln9905_1_fu_1133_p2;
wire   [13:0] add_ln9905_1_fu_1238_p2;
wire   [13:0] sub_ln9913_fu_1198_p2;
wire   [13:0] add_ln9913_1_fu_1249_p2;
wire   [13:0] zext_ln9891_fu_1260_p1;
wire   [13:0] add_ln9891_fu_1263_p2;
wire   [13:0] add_ln9899_fu_1276_p2;
wire   [13:0] add_ln9907_fu_1289_p2;
wire   [13:0] add_ln9915_fu_1302_p2;
wire   [10:0] p_shl200_fu_1318_p3;
wire   [10:0] zext_ln9919_2_fu_1315_p1;
wire   [10:0] sub_ln9919_1_fu_1325_p2;
wire   [10:0] zext_ln9919_3_fu_1331_p1;
wire   [10:0] add_ln9919_1_fu_1334_p2;
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
#0 v6439190_fu_184 = 6'd0;
#0 indvar_flatten191_fu_188 = 7'd0;
#0 v6440192_fu_192 = 5'd0;
#0 v6441193_fu_196 = 5'd0;
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
        indvar_flatten12189_fu_180 <= add_ln9884_1_fu_992_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_298)) begin
    indvar_flatten191_fu_188 <= select_ln9885_1_fu_984_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_298)) begin
    v6439190_fu_184 <= v6439_fu_784_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_298)) begin
    v6440192_fu_192 <= v6440_fu_812_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_298)) begin
    v6441193_fu_196 <= v6441_fu_972_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln9919_reg_1458 <= add_ln9919_fu_1068_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_484_reg_1423 <= empty_484_fu_926_p2;
        icmp_ln9884_reg_1454 <= icmp_ln9884_fu_1010_p2;
        lshr_ln167_reg_1418 <= {{v6440_fu_812_p3[4:1]}};
        lshr_ln168_reg_1433 <= {{v6441_mid2_fu_804_p3[4:2]}};
        lshr_ln168_reg_1433_pp0_iter1_reg <= lshr_ln168_reg_1433;
        lshr_ln169_reg_1439 <= {{add_ln9888_fu_956_p2[5:2]}};
        lshr_ln_reg_1400 <= {{v6439_fu_784_p3[4:1]}};
        sub_ln9889_reg_1406[9 : 2] <= sub_ln9889_fu_860_p2[9 : 2];
        sub_ln9905_reg_1412[9 : 2] <= sub_ln9905_fu_896_p2[9 : 2];
        tmp_s_reg_1428 <= {{empty_483_fu_920_p2[5:1]}};
        trunc_ln9884_cast_cast_cast_cast_reg_1395[2 : 0] <= trunc_ln9884_cast_cast_cast_cast_fu_710_p3[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln9885_reg_1449 <= icmp_ln9885_fu_1004_p2;
        icmp_ln9886_reg_1444 <= icmp_ln9886_fu_998_p2;
    end
end
always @ (*) begin
    if (((icmp_ln9884_fu_1010_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
            ap_phi_mux_icmp_ln9885195_phi_fu_641_p4 = icmp_ln9885_reg_1449;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln9885195_phi_fu_641_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln9885195_phi_fu_641_p4 = icmp_ln9885_reg_1449;
        end
    end else begin
        ap_phi_mux_icmp_ln9885195_phi_fu_641_p4 = icmp_ln9885_reg_1449;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_942)) begin
            ap_phi_mux_icmp_ln9886194_phi_fu_651_p4 = icmp_ln9886_reg_1444;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln9886194_phi_fu_651_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln9886194_phi_fu_651_p4 = icmp_ln9886_reg_1444;
        end
    end else begin
        ap_phi_mux_icmp_ln9886194_phi_fu_651_p4 = icmp_ln9886_reg_1444;
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
        ap_sig_allocacmp_v6439190_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v6439190_load = v6439190_fu_184;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v6440192_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v6440192_load = v6440192_fu_192;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v6441193_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v6441193_load = v6441193_fu_196;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_10_ce0_local = 1'b1;
    end else begin
        v6515_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_10_we0_local = 1'b1;
    end else begin
        v6515_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_11_ce0_local = 1'b1;
    end else begin
        v6515_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_11_we0_local = 1'b1;
    end else begin
        v6515_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_12_ce0_local = 1'b1;
    end else begin
        v6515_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_12_we0_local = 1'b1;
    end else begin
        v6515_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_13_ce0_local = 1'b1;
    end else begin
        v6515_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_13_we0_local = 1'b1;
    end else begin
        v6515_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_14_ce0_local = 1'b1;
    end else begin
        v6515_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_14_we0_local = 1'b1;
    end else begin
        v6515_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_15_ce0_local = 1'b1;
    end else begin
        v6515_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_15_we0_local = 1'b1;
    end else begin
        v6515_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_1_ce0_local = 1'b1;
    end else begin
        v6515_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_1_we0_local = 1'b1;
    end else begin
        v6515_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_2_ce0_local = 1'b1;
    end else begin
        v6515_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_2_we0_local = 1'b1;
    end else begin
        v6515_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_3_ce0_local = 1'b1;
    end else begin
        v6515_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_3_we0_local = 1'b1;
    end else begin
        v6515_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_4_ce0_local = 1'b1;
    end else begin
        v6515_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_4_we0_local = 1'b1;
    end else begin
        v6515_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_5_ce0_local = 1'b1;
    end else begin
        v6515_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_5_we0_local = 1'b1;
    end else begin
        v6515_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_6_ce0_local = 1'b1;
    end else begin
        v6515_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_6_we0_local = 1'b1;
    end else begin
        v6515_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_7_ce0_local = 1'b1;
    end else begin
        v6515_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_7_we0_local = 1'b1;
    end else begin
        v6515_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_8_ce0_local = 1'b1;
    end else begin
        v6515_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_8_we0_local = 1'b1;
    end else begin
        v6515_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_9_ce0_local = 1'b1;
    end else begin
        v6515_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_9_we0_local = 1'b1;
    end else begin
        v6515_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_ce0_local = 1'b1;
    end else begin
        v6515_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v6515_we0_local = 1'b1;
    end else begin
        v6515_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9221_0_0_0_ce0_local = 1'b1;
    end else begin
        v9221_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9221_0_0_1_ce0_local = 1'b1;
    end else begin
        v9221_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9221_0_0_2_ce0_local = 1'b1;
    end else begin
        v9221_0_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9221_0_0_3_ce0_local = 1'b1;
    end else begin
        v9221_0_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9221_0_1_0_ce0_local = 1'b1;
    end else begin
        v9221_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9221_0_1_1_ce0_local = 1'b1;
    end else begin
        v9221_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9221_0_1_2_ce0_local = 1'b1;
    end else begin
        v9221_0_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9221_0_1_3_ce0_local = 1'b1;
    end else begin
        v9221_0_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9221_1_0_0_ce0_local = 1'b1;
    end else begin
        v9221_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9221_1_0_1_ce0_local = 1'b1;
    end else begin
        v9221_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9221_1_0_2_ce0_local = 1'b1;
    end else begin
        v9221_1_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9221_1_0_3_ce0_local = 1'b1;
    end else begin
        v9221_1_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9221_1_1_0_ce0_local = 1'b1;
    end else begin
        v9221_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9221_1_1_1_ce0_local = 1'b1;
    end else begin
        v9221_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9221_1_1_2_ce0_local = 1'b1;
    end else begin
        v9221_1_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9221_1_1_3_ce0_local = 1'b1;
    end else begin
        v9221_1_1_3_ce0_local = 1'b0;
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
assign add_ln9884_1_fu_992_p2 = (ap_sig_allocacmp_indvar_flatten12189_load + 11'd1);
assign add_ln9884_fu_758_p2 = (ap_sig_allocacmp_v6439190_load + 6'd2);
assign add_ln9885_1_fu_978_p2 = (ap_sig_allocacmp_indvar_flatten191_load + 7'd1);
assign add_ln9885_fu_792_p2 = (select_ln9884_fu_764_p3 + 5'd2);
assign add_ln9888_fu_956_p2 = (select_ln9884_cast_cast_fu_702_p3 + zext_ln9886_fu_942_p1);
assign add_ln9889_1_fu_1077_p2 = (sub_ln9889_reg_1406 + zext_ln9889_1_fu_1074_p1);
assign add_ln9889_2_fu_1216_p2 = (sub_ln9889_1_fu_1102_p2 + zext_ln9889_3_fu_1212_p1);
assign add_ln9889_fu_1207_p2 = (zext_ln9886_1_fu_1204_p1 + trunc_ln9884_cast_cast_cast_cast_reg_1395);
assign add_ln9891_fu_1263_p2 = (sub_ln9889_1_fu_1102_p2 + zext_ln9891_fu_1260_p1);
assign add_ln9897_1_fu_1227_p2 = (sub_ln9897_fu_1167_p2 + zext_ln9889_3_fu_1212_p1);
assign add_ln9897_fu_1142_p2 = (sub_ln9889_reg_1406 + zext_ln9897_fu_1139_p1);
assign add_ln9899_fu_1276_p2 = (sub_ln9897_fu_1167_p2 + zext_ln9891_fu_1260_p1);
assign add_ln9905_1_fu_1238_p2 = (sub_ln9905_1_fu_1133_p2 + zext_ln9889_3_fu_1212_p1);
assign add_ln9905_fu_1108_p2 = (sub_ln9905_reg_1412 + zext_ln9889_1_fu_1074_p1);
assign add_ln9907_fu_1289_p2 = (sub_ln9905_1_fu_1133_p2 + zext_ln9891_fu_1260_p1);
assign add_ln9913_1_fu_1249_p2 = (sub_ln9913_fu_1198_p2 + zext_ln9889_3_fu_1212_p1);
assign add_ln9913_fu_1173_p2 = (sub_ln9905_reg_1412 + zext_ln9897_fu_1139_p1);
assign add_ln9915_fu_1302_p2 = (sub_ln9913_fu_1198_p2 + zext_ln9891_fu_1260_p1);
assign add_ln9919_1_fu_1334_p2 = (sub_ln9919_1_fu_1325_p2 + zext_ln9919_3_fu_1331_p1);
assign add_ln9919_fu_1068_p2 = (sub_ln9919_fu_1059_p2 + zext_ln9919_1_fu_1065_p1);
assign and_ln9884_fu_778_p2 = (xor_ln9884_fu_772_p2 & ap_phi_mux_icmp_ln9886194_phi_fu_651_p4);
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
    ap_condition_942 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln9884_reg_1454 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_481_fu_798_p2 = (ap_phi_mux_icmp_ln9885195_phi_fu_641_p4 | and_ln9884_fu_778_p2);
assign empty_482_fu_830_p2 = (v6439_fu_784_p3 + mul_i_fu_666_p3);
assign empty_483_fu_920_p2 = (zext_ln9975_cast_cast_cast_cast_fu_682_p3 + zext_ln9885_fu_902_p1);
assign empty_484_fu_926_p2 = (zext_ln9885_1_fu_916_p1 + p_udiv28_cast_cast_cast_cast_fu_690_p3);
assign empty_fu_698_p1 = v6506_0[0:0];
assign icmp_ln9884_fu_1010_p2 = ((ap_sig_allocacmp_indvar_flatten12189_load == 11'd1567) ? 1'b1 : 1'b0);
assign icmp_ln9885_fu_1004_p2 = ((select_ln9885_1_fu_984_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln9886_fu_998_p2 = ((v6441_fu_972_p2 == 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln167_fu_906_p4 = {{v6440_fu_812_p3[4:1]}};
assign lshr_ln_fu_820_p4 = {{v6439_fu_784_p3[4:1]}};
assign mul_i_fu_666_p3 = {{tmp_fu_658_p3}, {5'd0}};
assign p_shl197_fu_1041_p3 = {{lshr_ln_reg_1400}, {4'd0}};
assign p_shl198_fu_836_p4 = {{{tmp_fu_658_p3}, {lshr_ln_fu_820_p4}}, {5'd0}};
assign p_shl199_fu_876_p3 = {{tmp_544_fu_866_p4}, {5'd0}};
assign p_shl200_fu_1318_p3 = {{add_ln9919_reg_1458}, {3'd0}};
assign p_shl201_fu_1082_p3 = {{add_ln9889_1_fu_1077_p2}, {4'd0}};
assign p_shl202_fu_1113_p3 = {{add_ln9905_fu_1108_p2}, {4'd0}};
assign p_shl203_fu_1147_p3 = {{add_ln9897_fu_1142_p2}, {4'd0}};
assign p_shl_fu_1178_p3 = {{add_ln9913_fu_1173_p2}, {4'd0}};
assign p_udiv28_cast_cast_cast_cast_fu_690_p3 = ((tmp_541_fu_674_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign select_ln9884_cast_cast_fu_702_p3 = ((empty_fu_698_p1[0:0] == 1'b1) ? 6'd28 : 6'd0);
assign select_ln9884_fu_764_p3 = ((ap_phi_mux_icmp_ln9885195_phi_fu_641_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v6440192_load);
assign select_ln9885_1_fu_984_p3 = ((ap_phi_mux_icmp_ln9885195_phi_fu_641_p4[0:0] == 1'b1) ? 7'd1 : add_ln9885_1_fu_978_p2);
assign sub_ln9889_1_fu_1102_p2 = (p_shl201_fu_1082_p3 - zext_ln9889_2_fu_1098_p1);
assign sub_ln9889_fu_860_p2 = (p_shl198_fu_836_p4 - zext_ln9889_fu_856_p1);
assign sub_ln9897_fu_1167_p2 = (p_shl203_fu_1147_p3 - zext_ln9897_1_fu_1163_p1);
assign sub_ln9905_1_fu_1133_p2 = (p_shl202_fu_1113_p3 - zext_ln9905_1_fu_1129_p1);
assign sub_ln9905_fu_896_p2 = (p_shl199_fu_876_p3 - zext_ln9905_fu_892_p1);
assign sub_ln9913_fu_1198_p2 = (p_shl_fu_1178_p3 - zext_ln9913_fu_1194_p1);
assign sub_ln9919_1_fu_1325_p2 = (p_shl200_fu_1318_p3 - zext_ln9919_2_fu_1315_p1);
assign sub_ln9919_fu_1059_p2 = (p_shl197_fu_1041_p3 - zext_ln9919_fu_1055_p1);
assign tmp_541_fu_674_p3 = v6506_0[32'd1];
assign tmp_542_fu_1048_p3 = {{lshr_ln_reg_1400}, {1'd0}};
assign tmp_543_fu_846_p4 = {{{tmp_fu_658_p3}, {lshr_ln_fu_820_p4}}, {2'd0}};
assign tmp_544_fu_866_p4 = {{empty_482_fu_830_p2[5:1]}};
assign tmp_545_fu_884_p3 = {{tmp_544_fu_866_p4}, {2'd0}};
assign tmp_546_fu_1090_p3 = {{add_ln9889_1_fu_1077_p2}, {1'd0}};
assign tmp_547_fu_1121_p3 = {{add_ln9905_fu_1108_p2}, {1'd0}};
assign tmp_548_fu_1155_p3 = {{add_ln9897_fu_1142_p2}, {1'd0}};
assign tmp_549_fu_1186_p3 = {{add_ln9913_fu_1173_p2}, {1'd0}};
assign tmp_fu_658_p3 = v6506_0[32'd2];
assign trunc_ln9884_cast_cast_cast_cast_fu_710_p3 = ((empty_fu_698_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign v6439_fu_784_p3 = ((ap_phi_mux_icmp_ln9885195_phi_fu_641_p4[0:0] == 1'b1) ? add_ln9884_fu_758_p2 : ap_sig_allocacmp_v6439190_load);
assign v6440_fu_812_p3 = ((and_ln9884_fu_778_p2[0:0] == 1'b1) ? add_ln9885_fu_792_p2 : select_ln9884_fu_764_p3);
assign v6441_fu_972_p2 = (v6441_mid2_fu_804_p3 + 5'd4);
assign v6441_mid2_fu_804_p3 = ((empty_481_fu_798_p2[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v6441193_load);
assign v6515_10_address0 = zext_ln9919_4_fu_1340_p1;
assign v6515_10_ce0 = v6515_10_ce0_local;
assign v6515_10_d0 = v9221_0_1_1_q0;
assign v6515_10_we0 = v6515_10_we0_local;
assign v6515_11_address0 = zext_ln9919_4_fu_1340_p1;
assign v6515_11_ce0 = v6515_11_ce0_local;
assign v6515_11_d0 = v9221_0_1_0_q0;
assign v6515_11_we0 = v6515_11_we0_local;
assign v6515_12_address0 = zext_ln9919_4_fu_1340_p1;
assign v6515_12_ce0 = v6515_12_ce0_local;
assign v6515_12_d0 = v9221_0_0_3_q0;
assign v6515_12_we0 = v6515_12_we0_local;
assign v6515_13_address0 = zext_ln9919_4_fu_1340_p1;
assign v6515_13_ce0 = v6515_13_ce0_local;
assign v6515_13_d0 = v9221_0_0_2_q0;
assign v6515_13_we0 = v6515_13_we0_local;
assign v6515_14_address0 = zext_ln9919_4_fu_1340_p1;
assign v6515_14_ce0 = v6515_14_ce0_local;
assign v6515_14_d0 = v9221_0_0_1_q0;
assign v6515_14_we0 = v6515_14_we0_local;
assign v6515_15_address0 = zext_ln9919_4_fu_1340_p1;
assign v6515_15_ce0 = v6515_15_ce0_local;
assign v6515_15_d0 = v9221_0_0_0_q0;
assign v6515_15_we0 = v6515_15_we0_local;
assign v6515_1_address0 = zext_ln9919_4_fu_1340_p1;
assign v6515_1_ce0 = v6515_1_ce0_local;
assign v6515_1_d0 = v9221_1_1_2_q0;
assign v6515_1_we0 = v6515_1_we0_local;
assign v6515_2_address0 = zext_ln9919_4_fu_1340_p1;
assign v6515_2_ce0 = v6515_2_ce0_local;
assign v6515_2_d0 = v9221_1_1_1_q0;
assign v6515_2_we0 = v6515_2_we0_local;
assign v6515_3_address0 = zext_ln9919_4_fu_1340_p1;
assign v6515_3_ce0 = v6515_3_ce0_local;
assign v6515_3_d0 = v9221_1_1_0_q0;
assign v6515_3_we0 = v6515_3_we0_local;
assign v6515_4_address0 = zext_ln9919_4_fu_1340_p1;
assign v6515_4_ce0 = v6515_4_ce0_local;
assign v6515_4_d0 = v9221_1_0_3_q0;
assign v6515_4_we0 = v6515_4_we0_local;
assign v6515_5_address0 = zext_ln9919_4_fu_1340_p1;
assign v6515_5_ce0 = v6515_5_ce0_local;
assign v6515_5_d0 = v9221_1_0_2_q0;
assign v6515_5_we0 = v6515_5_we0_local;
assign v6515_6_address0 = zext_ln9919_4_fu_1340_p1;
assign v6515_6_ce0 = v6515_6_ce0_local;
assign v6515_6_d0 = v9221_1_0_1_q0;
assign v6515_6_we0 = v6515_6_we0_local;
assign v6515_7_address0 = zext_ln9919_4_fu_1340_p1;
assign v6515_7_ce0 = v6515_7_ce0_local;
assign v6515_7_d0 = v9221_1_0_0_q0;
assign v6515_7_we0 = v6515_7_we0_local;
assign v6515_8_address0 = zext_ln9919_4_fu_1340_p1;
assign v6515_8_ce0 = v6515_8_ce0_local;
assign v6515_8_d0 = v9221_0_1_3_q0;
assign v6515_8_we0 = v6515_8_we0_local;
assign v6515_9_address0 = zext_ln9919_4_fu_1340_p1;
assign v6515_9_ce0 = v6515_9_ce0_local;
assign v6515_9_d0 = v9221_0_1_2_q0;
assign v6515_9_we0 = v6515_9_we0_local;
assign v6515_address0 = zext_ln9919_4_fu_1340_p1;
assign v6515_ce0 = v6515_ce0_local;
assign v6515_d0 = v9221_1_1_3_q0;
assign v6515_we0 = v6515_we0_local;
assign v9221_0_0_0_address0 = zext_ln9889_4_fu_1222_p1;
assign v9221_0_0_0_ce0 = v9221_0_0_0_ce0_local;
assign v9221_0_0_1_address0 = zext_ln9891_1_fu_1269_p1;
assign v9221_0_0_1_ce0 = v9221_0_0_1_ce0_local;
assign v9221_0_0_2_address0 = zext_ln9891_1_fu_1269_p1;
assign v9221_0_0_2_ce0 = v9221_0_0_2_ce0_local;
assign v9221_0_0_3_address0 = zext_ln9891_1_fu_1269_p1;
assign v9221_0_0_3_ce0 = v9221_0_0_3_ce0_local;
assign v9221_0_1_0_address0 = zext_ln9897_2_fu_1233_p1;
assign v9221_0_1_0_ce0 = v9221_0_1_0_ce0_local;
assign v9221_0_1_1_address0 = zext_ln9899_fu_1282_p1;
assign v9221_0_1_1_ce0 = v9221_0_1_1_ce0_local;
assign v9221_0_1_2_address0 = zext_ln9899_fu_1282_p1;
assign v9221_0_1_2_ce0 = v9221_0_1_2_ce0_local;
assign v9221_0_1_3_address0 = zext_ln9899_fu_1282_p1;
assign v9221_0_1_3_ce0 = v9221_0_1_3_ce0_local;
assign v9221_1_0_0_address0 = zext_ln9905_2_fu_1244_p1;
assign v9221_1_0_0_ce0 = v9221_1_0_0_ce0_local;
assign v9221_1_0_1_address0 = zext_ln9907_fu_1295_p1;
assign v9221_1_0_1_ce0 = v9221_1_0_1_ce0_local;
assign v9221_1_0_2_address0 = zext_ln9907_fu_1295_p1;
assign v9221_1_0_2_ce0 = v9221_1_0_2_ce0_local;
assign v9221_1_0_3_address0 = zext_ln9907_fu_1295_p1;
assign v9221_1_0_3_ce0 = v9221_1_0_3_ce0_local;
assign v9221_1_1_0_address0 = zext_ln9913_1_fu_1255_p1;
assign v9221_1_1_0_ce0 = v9221_1_1_0_ce0_local;
assign v9221_1_1_1_address0 = zext_ln9915_fu_1308_p1;
assign v9221_1_1_1_ce0 = v9221_1_1_1_ce0_local;
assign v9221_1_1_2_address0 = zext_ln9915_fu_1308_p1;
assign v9221_1_1_2_ce0 = v9221_1_1_2_ce0_local;
assign v9221_1_1_3_address0 = zext_ln9915_fu_1308_p1;
assign v9221_1_1_3_ce0 = v9221_1_1_3_ce0_local;
assign xor_ln9884_fu_772_p2 = (ap_phi_mux_icmp_ln9885195_phi_fu_641_p4 ^ 1'd1);
assign zext_ln9885_1_fu_916_p1 = lshr_ln167_fu_906_p4;
assign zext_ln9885_fu_902_p1 = v6440_fu_812_p3;
assign zext_ln9886_1_fu_1204_p1 = lshr_ln168_reg_1433;
assign zext_ln9886_fu_942_p1 = v6441_mid2_fu_804_p3;
assign zext_ln9889_1_fu_1074_p1 = empty_484_reg_1423;
assign zext_ln9889_2_fu_1098_p1 = tmp_546_fu_1090_p3;
assign zext_ln9889_3_fu_1212_p1 = add_ln9889_fu_1207_p2;
assign zext_ln9889_4_fu_1222_p1 = add_ln9889_2_fu_1216_p2;
assign zext_ln9889_fu_856_p1 = tmp_543_fu_846_p4;
assign zext_ln9891_1_fu_1269_p1 = add_ln9891_fu_1263_p2;
assign zext_ln9891_fu_1260_p1 = lshr_ln169_reg_1439;
assign zext_ln9897_1_fu_1163_p1 = tmp_548_fu_1155_p3;
assign zext_ln9897_2_fu_1233_p1 = add_ln9897_1_fu_1227_p2;
assign zext_ln9897_fu_1139_p1 = tmp_s_reg_1428;
assign zext_ln9899_fu_1282_p1 = add_ln9899_fu_1276_p2;
assign zext_ln9905_1_fu_1129_p1 = tmp_547_fu_1121_p3;
assign zext_ln9905_2_fu_1244_p1 = add_ln9905_1_fu_1238_p2;
assign zext_ln9905_fu_892_p1 = tmp_545_fu_884_p3;
assign zext_ln9907_fu_1295_p1 = add_ln9907_fu_1289_p2;
assign zext_ln9913_1_fu_1255_p1 = add_ln9913_1_fu_1249_p2;
assign zext_ln9913_fu_1194_p1 = tmp_549_fu_1186_p3;
assign zext_ln9915_fu_1308_p1 = add_ln9915_fu_1302_p2;
assign zext_ln9919_1_fu_1065_p1 = lshr_ln167_reg_1418;
assign zext_ln9919_2_fu_1315_p1 = add_ln9919_reg_1458;
assign zext_ln9919_3_fu_1331_p1 = lshr_ln168_reg_1433_pp0_iter1_reg;
assign zext_ln9919_4_fu_1340_p1 = add_ln9919_1_fu_1334_p2;
assign zext_ln9919_fu_1055_p1 = tmp_542_fu_1048_p3;
assign zext_ln9975_cast_cast_cast_cast_fu_682_p3 = ((tmp_541_fu_674_p3[0:0] == 1'b1) ? 6'd28 : 6'd0);
always @ (posedge ap_clk) begin
    trunc_ln9884_cast_cast_cast_cast_reg_1395[3] <= 1'b0;
    sub_ln9889_reg_1406[1:0] <= 2'b00;
    sub_ln9905_reg_1412[1:0] <= 2'b00;
end
endmodule 
