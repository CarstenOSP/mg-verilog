module forward_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7759_1_proc110 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v5279_address0,v5279_ce0,v5279_we0,v5279_d0,v5279_1_address0,v5279_1_ce0,v5279_1_we0,v5279_1_d0,v5279_2_address0,v5279_2_ce0,v5279_2_we0,v5279_2_d0,v5279_3_address0,v5279_3_ce0,v5279_3_we0,v5279_3_d0,v5279_4_address0,v5279_4_ce0,v5279_4_we0,v5279_4_d0,v5279_5_address0,v5279_5_ce0,v5279_5_we0,v5279_5_d0,v5279_6_address0,v5279_6_ce0,v5279_6_we0,v5279_6_d0,v5279_7_address0,v5279_7_ce0,v5279_7_we0,v5279_7_d0,v5279_8_address0,v5279_8_ce0,v5279_8_we0,v5279_8_d0,v5279_9_address0,v5279_9_ce0,v5279_9_we0,v5279_9_d0,v5279_10_address0,v5279_10_ce0,v5279_10_we0,v5279_10_d0,v5279_11_address0,v5279_11_ce0,v5279_11_we0,v5279_11_d0,v5279_12_address0,v5279_12_ce0,v5279_12_we0,v5279_12_d0,v5279_13_address0,v5279_13_ce0,v5279_13_we0,v5279_13_d0,v5279_14_address0,v5279_14_ce0,v5279_14_we0,v5279_14_d0,v5279_15_address0,v5279_15_ce0,v5279_15_we0,v5279_15_d0,v5272_0,v9234_0_0_0_address0,v9234_0_0_0_ce0,v9234_0_0_0_q0,v9234_0_0_1_address0,v9234_0_0_1_ce0,v9234_0_0_1_q0,v9234_0_1_0_address0,v9234_0_1_0_ce0,v9234_0_1_0_q0,v9234_0_1_1_address0,v9234_0_1_1_ce0,v9234_0_1_1_q0,v9234_1_0_0_address0,v9234_1_0_0_ce0,v9234_1_0_0_q0,v9234_1_0_1_address0,v9234_1_0_1_ce0,v9234_1_0_1_q0,v9234_1_1_0_address0,v9234_1_1_0_ce0,v9234_1_1_0_q0,v9234_1_1_1_address0,v9234_1_1_1_ce0,v9234_1_1_1_q0,v9234_2_0_0_address0,v9234_2_0_0_ce0,v9234_2_0_0_q0,v9234_2_0_1_address0,v9234_2_0_1_ce0,v9234_2_0_1_q0,v9234_2_1_0_address0,v9234_2_1_0_ce0,v9234_2_1_0_q0,v9234_2_1_1_address0,v9234_2_1_1_ce0,v9234_2_1_1_q0,v9234_3_0_0_address0,v9234_3_0_0_ce0,v9234_3_0_0_q0,v9234_3_0_1_address0,v9234_3_0_1_ce0,v9234_3_0_1_q0,v9234_3_1_0_address0,v9234_3_1_0_ce0,v9234_3_1_0_q0,v9234_3_1_1_address0,v9234_3_1_1_ce0,v9234_3_1_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] v5279_address0;
output   v5279_ce0;
output   v5279_we0;
output  [7:0] v5279_d0;
output  [8:0] v5279_1_address0;
output   v5279_1_ce0;
output   v5279_1_we0;
output  [7:0] v5279_1_d0;
output  [8:0] v5279_2_address0;
output   v5279_2_ce0;
output   v5279_2_we0;
output  [7:0] v5279_2_d0;
output  [8:0] v5279_3_address0;
output   v5279_3_ce0;
output   v5279_3_we0;
output  [7:0] v5279_3_d0;
output  [8:0] v5279_4_address0;
output   v5279_4_ce0;
output   v5279_4_we0;
output  [7:0] v5279_4_d0;
output  [8:0] v5279_5_address0;
output   v5279_5_ce0;
output   v5279_5_we0;
output  [7:0] v5279_5_d0;
output  [8:0] v5279_6_address0;
output   v5279_6_ce0;
output   v5279_6_we0;
output  [7:0] v5279_6_d0;
output  [8:0] v5279_7_address0;
output   v5279_7_ce0;
output   v5279_7_we0;
output  [7:0] v5279_7_d0;
output  [8:0] v5279_8_address0;
output   v5279_8_ce0;
output   v5279_8_we0;
output  [7:0] v5279_8_d0;
output  [8:0] v5279_9_address0;
output   v5279_9_ce0;
output   v5279_9_we0;
output  [7:0] v5279_9_d0;
output  [8:0] v5279_10_address0;
output   v5279_10_ce0;
output   v5279_10_we0;
output  [7:0] v5279_10_d0;
output  [8:0] v5279_11_address0;
output   v5279_11_ce0;
output   v5279_11_we0;
output  [7:0] v5279_11_d0;
output  [8:0] v5279_12_address0;
output   v5279_12_ce0;
output   v5279_12_we0;
output  [7:0] v5279_12_d0;
output  [8:0] v5279_13_address0;
output   v5279_13_ce0;
output   v5279_13_we0;
output  [7:0] v5279_13_d0;
output  [8:0] v5279_14_address0;
output   v5279_14_ce0;
output   v5279_14_we0;
output  [7:0] v5279_14_d0;
output  [8:0] v5279_15_address0;
output   v5279_15_ce0;
output   v5279_15_we0;
output  [7:0] v5279_15_d0;
input  [9:0] v5272_0;
output  [12:0] v9234_0_0_0_address0;
output   v9234_0_0_0_ce0;
input  [7:0] v9234_0_0_0_q0;
output  [12:0] v9234_0_0_1_address0;
output   v9234_0_0_1_ce0;
input  [7:0] v9234_0_0_1_q0;
output  [12:0] v9234_0_1_0_address0;
output   v9234_0_1_0_ce0;
input  [7:0] v9234_0_1_0_q0;
output  [12:0] v9234_0_1_1_address0;
output   v9234_0_1_1_ce0;
input  [7:0] v9234_0_1_1_q0;
output  [12:0] v9234_1_0_0_address0;
output   v9234_1_0_0_ce0;
input  [7:0] v9234_1_0_0_q0;
output  [12:0] v9234_1_0_1_address0;
output   v9234_1_0_1_ce0;
input  [7:0] v9234_1_0_1_q0;
output  [12:0] v9234_1_1_0_address0;
output   v9234_1_1_0_ce0;
input  [7:0] v9234_1_1_0_q0;
output  [12:0] v9234_1_1_1_address0;
output   v9234_1_1_1_ce0;
input  [7:0] v9234_1_1_1_q0;
output  [12:0] v9234_2_0_0_address0;
output   v9234_2_0_0_ce0;
input  [7:0] v9234_2_0_0_q0;
output  [12:0] v9234_2_0_1_address0;
output   v9234_2_0_1_ce0;
input  [7:0] v9234_2_0_1_q0;
output  [12:0] v9234_2_1_0_address0;
output   v9234_2_1_0_ce0;
input  [7:0] v9234_2_1_0_q0;
output  [12:0] v9234_2_1_1_address0;
output   v9234_2_1_1_ce0;
input  [7:0] v9234_2_1_1_q0;
output  [12:0] v9234_3_0_0_address0;
output   v9234_3_0_0_ce0;
input  [7:0] v9234_3_0_0_q0;
output  [12:0] v9234_3_0_1_address0;
output   v9234_3_0_1_ce0;
input  [7:0] v9234_3_0_1_q0;
output  [12:0] v9234_3_1_0_address0;
output   v9234_3_1_0_ce0;
input  [7:0] v9234_3_1_0_q0;
output  [12:0] v9234_3_1_1_address0;
output   v9234_3_1_1_ce0;
input  [7:0] v9234_3_1_1_q0;
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
wire   [0:0] icmp_ln7759_fu_1010_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] p_udiv16_cast_cast_cast_cast_fu_706_p3;
reg   [3:0] p_udiv16_cast_cast_cast_cast_reg_1387;
wire   [2:0] lshr_ln_fu_820_p4;
reg   [2:0] lshr_ln_reg_1392;
wire   [8:0] sub_ln7764_fu_860_p2;
reg   [8:0] sub_ln7764_reg_1398;
wire   [8:0] sub_ln7772_fu_896_p2;
reg   [8:0] sub_ln7772_reg_1404;
wire   [2:0] lshr_ln26_fu_906_p4;
reg   [2:0] lshr_ln26_reg_1410;
wire   [3:0] empty_214_fu_926_p2;
reg   [3:0] empty_214_reg_1415;
reg   [3:0] tmp_s_reg_1420;
reg   [2:0] lshr_ln27_reg_1425;
reg   [2:0] lshr_ln27_reg_1425_pp0_iter1_reg;
reg   [3:0] lshr_ln28_reg_1431;
wire   [0:0] icmp_ln7761_fu_998_p2;
reg   [0:0] icmp_ln7761_reg_1436;
wire   [0:0] icmp_ln7760_fu_1004_p2;
reg   [0:0] icmp_ln7760_reg_1441;
reg   [0:0] icmp_ln7759_reg_1446;
wire   [5:0] add_ln7794_fu_1060_p2;
reg   [5:0] add_ln7794_reg_1450;
reg   [0:0] ap_phi_mux_icmp_ln7760195_phi_fu_635_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln7761194_phi_fu_645_p4;
wire   [63:0] zext_ln7764_4_fu_1214_p1;
wire   [63:0] zext_ln7768_2_fu_1225_p1;
wire   [63:0] zext_ln7772_2_fu_1236_p1;
wire   [63:0] zext_ln7776_1_fu_1249_p1;
wire   [63:0] zext_ln7766_1_fu_1265_p1;
wire   [63:0] zext_ln7770_fu_1276_p1;
wire   [63:0] zext_ln7774_fu_1287_p1;
wire   [63:0] zext_ln7778_fu_1300_p1;
wire   [63:0] zext_ln7794_4_fu_1332_p1;
reg   [8:0] indvar_flatten12189_fu_174;
wire   [8:0] add_ln7759_1_fu_992_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten12189_load;
reg   [5:0] v5213190_fu_178;
wire   [5:0] v5213_fu_780_p3;
reg   [5:0] ap_sig_allocacmp_v5213190_load;
reg   [5:0] indvar_flatten191_fu_182;
wire   [5:0] select_ln7760_1_fu_984_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten191_load;
reg   [3:0] v5214192_fu_186;
wire   [3:0] v5214_fu_808_p3;
reg   [3:0] ap_sig_allocacmp_v5214192_load;
reg   [3:0] v5215193_fu_190;
wire   [3:0] v5215_fu_972_p2;
reg   [3:0] ap_sig_allocacmp_v5215193_load;
reg    v9234_0_0_0_ce0_local;
reg    v9234_0_0_1_ce0_local;
reg    v9234_0_1_0_ce0_local;
reg    v9234_0_1_1_ce0_local;
reg    v9234_1_0_0_ce0_local;
reg    v9234_1_0_1_ce0_local;
reg    v9234_1_1_0_ce0_local;
reg    v9234_1_1_1_ce0_local;
reg    v9234_2_0_0_ce0_local;
reg    v9234_2_0_1_ce0_local;
reg    v9234_2_1_0_ce0_local;
reg    v9234_2_1_1_ce0_local;
reg    v9234_3_0_0_ce0_local;
reg    v9234_3_0_1_ce0_local;
reg    v9234_3_1_0_ce0_local;
reg    v9234_3_1_1_ce0_local;
reg    v5279_15_we0_local;
reg    v5279_15_ce0_local;
reg    v5279_14_we0_local;
reg    v5279_14_ce0_local;
reg    v5279_13_we0_local;
reg    v5279_13_ce0_local;
reg    v5279_12_we0_local;
reg    v5279_12_ce0_local;
reg    v5279_11_we0_local;
reg    v5279_11_ce0_local;
reg    v5279_10_we0_local;
reg    v5279_10_ce0_local;
reg    v5279_9_we0_local;
reg    v5279_9_ce0_local;
reg    v5279_8_we0_local;
reg    v5279_8_ce0_local;
reg    v5279_7_we0_local;
reg    v5279_7_ce0_local;
reg    v5279_6_we0_local;
reg    v5279_6_ce0_local;
reg    v5279_5_we0_local;
reg    v5279_5_ce0_local;
reg    v5279_4_we0_local;
reg    v5279_4_ce0_local;
reg    v5279_3_we0_local;
reg    v5279_3_ce0_local;
reg    v5279_2_we0_local;
reg    v5279_2_ce0_local;
reg    v5279_1_we0_local;
reg    v5279_1_ce0_local;
reg    v5279_we0_local;
reg    v5279_ce0_local;
wire   [1:0] tmp_fu_652_p4;
wire   [0:0] tmp_110_fu_670_p3;
wire   [0:0] empty_fu_694_p1;
wire   [0:0] xor_ln7759_fu_768_p2;
wire   [5:0] add_ln7759_fu_754_p2;
wire   [3:0] select_ln7759_fu_760_p3;
wire   [0:0] and_ln7759_fu_774_p2;
wire   [0:0] empty_211_fu_794_p2;
wire   [3:0] add_ln7760_fu_788_p2;
wire   [6:0] mul_i_fu_662_p3;
wire   [6:0] zext_ln7759_fu_816_p1;
wire   [5:0] tmp_111_fu_846_p4;
wire   [8:0] p_shl54_fu_836_p4;
wire   [8:0] zext_ln7764_fu_856_p1;
wire   [6:0] empty_212_fu_830_p2;
wire   [4:0] tmp_112_fu_866_p4;
wire   [5:0] tmp_113_fu_884_p3;
wire   [8:0] p_shl55_fu_876_p3;
wire   [8:0] zext_ln7772_fu_892_p1;
wire   [4:0] zext_ln7858_cast_cast_cast_cast_fu_678_p3;
wire   [4:0] zext_ln7760_fu_902_p1;
wire   [3:0] zext_ln7760_1_fu_916_p1;
wire   [3:0] p_udiv14_cast_cast_cast_cast_fu_686_p3;
wire   [4:0] empty_213_fu_920_p2;
wire   [3:0] v5215_mid2_fu_800_p3;
wire   [4:0] zext_ln7858_5_cast_cast_cast_cast_fu_698_p3;
wire   [4:0] zext_ln7761_fu_942_p1;
wire   [4:0] add_ln7763_fu_956_p2;
wire   [5:0] add_ln7760_1_fu_978_p2;
wire   [5:0] p_shl53_fu_1044_p3;
wire   [5:0] zext_ln7794_fu_1041_p1;
wire   [5:0] sub_ln7794_fu_1051_p2;
wire   [5:0] zext_ln7794_1_fu_1057_p1;
wire   [8:0] zext_ln7764_1_fu_1066_p1;
wire   [8:0] add_ln7764_1_fu_1069_p2;
wire   [9:0] tmp_114_fu_1082_p3;
wire   [12:0] p_shl57_fu_1074_p3;
wire   [12:0] zext_ln7764_2_fu_1090_p1;
wire   [8:0] add_ln7772_fu_1100_p2;
wire   [9:0] tmp_115_fu_1113_p3;
wire   [12:0] p_shl58_fu_1105_p3;
wire   [12:0] zext_ln7772_1_fu_1121_p1;
wire   [8:0] zext_ln7768_fu_1131_p1;
wire   [8:0] add_ln7768_fu_1134_p2;
wire   [9:0] tmp_116_fu_1147_p3;
wire   [12:0] p_shl59_fu_1139_p3;
wire   [12:0] zext_ln7768_1_fu_1155_p1;
wire   [8:0] add_ln7776_fu_1165_p2;
wire   [9:0] tmp_117_fu_1178_p3;
wire   [12:0] p_shl_fu_1170_p3;
wire   [12:0] zext_ln7776_fu_1186_p1;
wire   [3:0] zext_ln7761_1_fu_1196_p1;
wire   [3:0] add_ln7764_fu_1199_p2;
wire   [12:0] sub_ln7764_1_fu_1094_p2;
wire   [12:0] zext_ln7764_3_fu_1204_p1;
wire   [12:0] add_ln7764_2_fu_1208_p2;
wire   [12:0] sub_ln7768_fu_1159_p2;
wire   [12:0] add_ln7768_1_fu_1219_p2;
wire   [12:0] sub_ln7772_1_fu_1125_p2;
wire   [12:0] add_ln7772_1_fu_1230_p2;
wire   [12:0] sub_ln7776_fu_1190_p2;
wire   [12:0] add_ln7776_1_fu_1243_p2;
wire   [12:0] zext_ln7766_fu_1256_p1;
wire   [12:0] add_ln7766_fu_1259_p2;
wire   [12:0] add_ln7770_fu_1270_p2;
wire   [12:0] add_ln7774_fu_1281_p2;
wire   [12:0] add_ln7778_fu_1294_p2;
wire   [8:0] p_shl56_fu_1310_p3;
wire   [8:0] zext_ln7794_2_fu_1307_p1;
wire   [8:0] sub_ln7794_1_fu_1317_p2;
wire   [8:0] zext_ln7794_3_fu_1323_p1;
wire   [8:0] add_ln7794_1_fu_1326_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_939;
reg    ap_condition_298;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12189_fu_174 = 9'd0;
#0 v5213190_fu_178 = 6'd0;
#0 indvar_flatten191_fu_182 = 6'd0;
#0 v5214192_fu_186 = 4'd0;
#0 v5215193_fu_190 = 4'd0;
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
        indvar_flatten12189_fu_174 <= add_ln7759_1_fu_992_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_298)) begin
    indvar_flatten191_fu_182 <= select_ln7760_1_fu_984_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_298)) begin
    v5213190_fu_178 <= v5213_fu_780_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_298)) begin
    v5214192_fu_186 <= v5214_fu_808_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_298)) begin
    v5215193_fu_190 <= v5215_fu_972_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln7794_reg_1450 <= add_ln7794_fu_1060_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_214_reg_1415 <= empty_214_fu_926_p2;
        icmp_ln7759_reg_1446 <= icmp_ln7759_fu_1010_p2;
        lshr_ln26_reg_1410 <= {{v5214_fu_808_p3[3:1]}};
        lshr_ln27_reg_1425 <= {{v5215_mid2_fu_800_p3[3:1]}};
        lshr_ln27_reg_1425_pp0_iter1_reg <= lshr_ln27_reg_1425;
        lshr_ln28_reg_1431 <= {{add_ln7763_fu_956_p2[4:1]}};
        lshr_ln_reg_1392 <= {{v5213_fu_780_p3[4:2]}};
        p_udiv16_cast_cast_cast_cast_reg_1387[2 : 0] <= p_udiv16_cast_cast_cast_cast_fu_706_p3[2 : 0];
        sub_ln7764_reg_1398[8 : 1] <= sub_ln7764_fu_860_p2[8 : 1];
        sub_ln7772_reg_1404[8 : 1] <= sub_ln7772_fu_896_p2[8 : 1];
        tmp_s_reg_1420 <= {{empty_213_fu_920_p2[4:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln7760_reg_1441 <= icmp_ln7760_fu_1004_p2;
        icmp_ln7761_reg_1436 <= icmp_ln7761_fu_998_p2;
    end
end
always @ (*) begin
    if (((icmp_ln7759_fu_1010_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_939)) begin
            ap_phi_mux_icmp_ln7760195_phi_fu_635_p4 = icmp_ln7760_reg_1441;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln7760195_phi_fu_635_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln7760195_phi_fu_635_p4 = icmp_ln7760_reg_1441;
        end
    end else begin
        ap_phi_mux_icmp_ln7760195_phi_fu_635_p4 = icmp_ln7760_reg_1441;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_939)) begin
            ap_phi_mux_icmp_ln7761194_phi_fu_645_p4 = icmp_ln7761_reg_1436;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln7761194_phi_fu_645_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln7761194_phi_fu_645_p4 = icmp_ln7761_reg_1436;
        end
    end else begin
        ap_phi_mux_icmp_ln7761194_phi_fu_645_p4 = icmp_ln7761_reg_1436;
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
        ap_sig_allocacmp_v5213190_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v5213190_load = v5213190_fu_178;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v5214192_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v5214192_load = v5214192_fu_186;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v5215193_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v5215193_load = v5215193_fu_190;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_10_ce0_local = 1'b1;
    end else begin
        v5279_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_10_we0_local = 1'b1;
    end else begin
        v5279_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_11_ce0_local = 1'b1;
    end else begin
        v5279_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_11_we0_local = 1'b1;
    end else begin
        v5279_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_12_ce0_local = 1'b1;
    end else begin
        v5279_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_12_we0_local = 1'b1;
    end else begin
        v5279_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_13_ce0_local = 1'b1;
    end else begin
        v5279_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_13_we0_local = 1'b1;
    end else begin
        v5279_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_14_ce0_local = 1'b1;
    end else begin
        v5279_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_14_we0_local = 1'b1;
    end else begin
        v5279_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_15_ce0_local = 1'b1;
    end else begin
        v5279_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_15_we0_local = 1'b1;
    end else begin
        v5279_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_1_ce0_local = 1'b1;
    end else begin
        v5279_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_1_we0_local = 1'b1;
    end else begin
        v5279_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_2_ce0_local = 1'b1;
    end else begin
        v5279_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_2_we0_local = 1'b1;
    end else begin
        v5279_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_3_ce0_local = 1'b1;
    end else begin
        v5279_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_3_we0_local = 1'b1;
    end else begin
        v5279_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_4_ce0_local = 1'b1;
    end else begin
        v5279_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_4_we0_local = 1'b1;
    end else begin
        v5279_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_5_ce0_local = 1'b1;
    end else begin
        v5279_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_5_we0_local = 1'b1;
    end else begin
        v5279_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_6_ce0_local = 1'b1;
    end else begin
        v5279_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_6_we0_local = 1'b1;
    end else begin
        v5279_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_7_ce0_local = 1'b1;
    end else begin
        v5279_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_7_we0_local = 1'b1;
    end else begin
        v5279_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_8_ce0_local = 1'b1;
    end else begin
        v5279_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_8_we0_local = 1'b1;
    end else begin
        v5279_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_9_ce0_local = 1'b1;
    end else begin
        v5279_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_9_we0_local = 1'b1;
    end else begin
        v5279_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_ce0_local = 1'b1;
    end else begin
        v5279_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5279_we0_local = 1'b1;
    end else begin
        v5279_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9234_0_0_0_ce0_local = 1'b1;
    end else begin
        v9234_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9234_0_0_1_ce0_local = 1'b1;
    end else begin
        v9234_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9234_0_1_0_ce0_local = 1'b1;
    end else begin
        v9234_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9234_0_1_1_ce0_local = 1'b1;
    end else begin
        v9234_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9234_1_0_0_ce0_local = 1'b1;
    end else begin
        v9234_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9234_1_0_1_ce0_local = 1'b1;
    end else begin
        v9234_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9234_1_1_0_ce0_local = 1'b1;
    end else begin
        v9234_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9234_1_1_1_ce0_local = 1'b1;
    end else begin
        v9234_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9234_2_0_0_ce0_local = 1'b1;
    end else begin
        v9234_2_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9234_2_0_1_ce0_local = 1'b1;
    end else begin
        v9234_2_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9234_2_1_0_ce0_local = 1'b1;
    end else begin
        v9234_2_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9234_2_1_1_ce0_local = 1'b1;
    end else begin
        v9234_2_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9234_3_0_0_ce0_local = 1'b1;
    end else begin
        v9234_3_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9234_3_0_1_ce0_local = 1'b1;
    end else begin
        v9234_3_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9234_3_1_0_ce0_local = 1'b1;
    end else begin
        v9234_3_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9234_3_1_1_ce0_local = 1'b1;
    end else begin
        v9234_3_1_1_ce0_local = 1'b0;
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
assign add_ln7759_1_fu_992_p2 = (ap_sig_allocacmp_indvar_flatten12189_load + 9'd1);
assign add_ln7759_fu_754_p2 = (ap_sig_allocacmp_v5213190_load + 6'd4);
assign add_ln7760_1_fu_978_p2 = (ap_sig_allocacmp_indvar_flatten191_load + 6'd1);
assign add_ln7760_fu_788_p2 = (select_ln7759_fu_760_p3 + 4'd2);
assign add_ln7763_fu_956_p2 = (zext_ln7858_5_cast_cast_cast_cast_fu_698_p3 + zext_ln7761_fu_942_p1);
assign add_ln7764_1_fu_1069_p2 = (sub_ln7764_reg_1398 + zext_ln7764_1_fu_1066_p1);
assign add_ln7764_2_fu_1208_p2 = (sub_ln7764_1_fu_1094_p2 + zext_ln7764_3_fu_1204_p1);
assign add_ln7764_fu_1199_p2 = (zext_ln7761_1_fu_1196_p1 + p_udiv16_cast_cast_cast_cast_reg_1387);
assign add_ln7766_fu_1259_p2 = (sub_ln7764_1_fu_1094_p2 + zext_ln7766_fu_1256_p1);
assign add_ln7768_1_fu_1219_p2 = (sub_ln7768_fu_1159_p2 + zext_ln7764_3_fu_1204_p1);
assign add_ln7768_fu_1134_p2 = (sub_ln7764_reg_1398 + zext_ln7768_fu_1131_p1);
assign add_ln7770_fu_1270_p2 = (sub_ln7768_fu_1159_p2 + zext_ln7766_fu_1256_p1);
assign add_ln7772_1_fu_1230_p2 = (sub_ln7772_1_fu_1125_p2 + zext_ln7764_3_fu_1204_p1);
assign add_ln7772_fu_1100_p2 = (sub_ln7772_reg_1404 + zext_ln7764_1_fu_1066_p1);
assign add_ln7774_fu_1281_p2 = (sub_ln7772_1_fu_1125_p2 + zext_ln7766_fu_1256_p1);
assign add_ln7776_1_fu_1243_p2 = (sub_ln7776_fu_1190_p2 + zext_ln7764_3_fu_1204_p1);
assign add_ln7776_fu_1165_p2 = (sub_ln7772_reg_1404 + zext_ln7768_fu_1131_p1);
assign add_ln7778_fu_1294_p2 = (sub_ln7776_fu_1190_p2 + zext_ln7766_fu_1256_p1);
assign add_ln7794_1_fu_1326_p2 = (sub_ln7794_1_fu_1317_p2 + zext_ln7794_3_fu_1323_p1);
assign add_ln7794_fu_1060_p2 = (sub_ln7794_fu_1051_p2 + zext_ln7794_1_fu_1057_p1);
assign and_ln7759_fu_774_p2 = (xor_ln7759_fu_768_p2 & ap_phi_mux_icmp_ln7761194_phi_fu_645_p4);
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
    ap_condition_939 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln7759_reg_1446 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_211_fu_794_p2 = (ap_phi_mux_icmp_ln7760195_phi_fu_635_p4 | and_ln7759_fu_774_p2);
assign empty_212_fu_830_p2 = (mul_i_fu_662_p3 + zext_ln7759_fu_816_p1);
assign empty_213_fu_920_p2 = (zext_ln7858_cast_cast_cast_cast_fu_678_p3 + zext_ln7760_fu_902_p1);
assign empty_214_fu_926_p2 = (zext_ln7760_1_fu_916_p1 + p_udiv14_cast_cast_cast_cast_fu_686_p3);
assign empty_fu_694_p1 = v5272_0[0:0];
assign icmp_ln7759_fu_1010_p2 = ((ap_sig_allocacmp_indvar_flatten12189_load == 9'd391) ? 1'b1 : 1'b0);
assign icmp_ln7760_fu_1004_p2 = ((select_ln7760_1_fu_984_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln7761_fu_998_p2 = ((v5215_fu_972_p2 == 4'd14) ? 1'b1 : 1'b0);
assign lshr_ln26_fu_906_p4 = {{v5214_fu_808_p3[3:1]}};
assign lshr_ln_fu_820_p4 = {{v5213_fu_780_p3[4:2]}};
assign mul_i_fu_662_p3 = {{tmp_fu_652_p4}, {5'd0}};
assign p_shl53_fu_1044_p3 = {{lshr_ln_reg_1392}, {3'd0}};
assign p_shl54_fu_836_p4 = {{{tmp_fu_652_p4}, {lshr_ln_fu_820_p4}}, {4'd0}};
assign p_shl55_fu_876_p3 = {{tmp_112_fu_866_p4}, {4'd0}};
assign p_shl56_fu_1310_p3 = {{add_ln7794_reg_1450}, {3'd0}};
assign p_shl57_fu_1074_p3 = {{add_ln7764_1_fu_1069_p2}, {4'd0}};
assign p_shl58_fu_1105_p3 = {{add_ln7772_fu_1100_p2}, {4'd0}};
assign p_shl59_fu_1139_p3 = {{add_ln7768_fu_1134_p2}, {4'd0}};
assign p_shl_fu_1170_p3 = {{add_ln7776_fu_1165_p2}, {4'd0}};
assign p_udiv14_cast_cast_cast_cast_fu_686_p3 = ((tmp_110_fu_670_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign p_udiv16_cast_cast_cast_cast_fu_706_p3 = ((empty_fu_694_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign select_ln7759_fu_760_p3 = ((ap_phi_mux_icmp_ln7760195_phi_fu_635_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v5214192_load);
assign select_ln7760_1_fu_984_p3 = ((ap_phi_mux_icmp_ln7760195_phi_fu_635_p4[0:0] == 1'b1) ? 6'd1 : add_ln7760_1_fu_978_p2);
assign sub_ln7764_1_fu_1094_p2 = (p_shl57_fu_1074_p3 - zext_ln7764_2_fu_1090_p1);
assign sub_ln7764_fu_860_p2 = (p_shl54_fu_836_p4 - zext_ln7764_fu_856_p1);
assign sub_ln7768_fu_1159_p2 = (p_shl59_fu_1139_p3 - zext_ln7768_1_fu_1155_p1);
assign sub_ln7772_1_fu_1125_p2 = (p_shl58_fu_1105_p3 - zext_ln7772_1_fu_1121_p1);
assign sub_ln7772_fu_896_p2 = (p_shl55_fu_876_p3 - zext_ln7772_fu_892_p1);
assign sub_ln7776_fu_1190_p2 = (p_shl_fu_1170_p3 - zext_ln7776_fu_1186_p1);
assign sub_ln7794_1_fu_1317_p2 = (p_shl56_fu_1310_p3 - zext_ln7794_2_fu_1307_p1);
assign sub_ln7794_fu_1051_p2 = (p_shl53_fu_1044_p3 - zext_ln7794_fu_1041_p1);
assign tmp_110_fu_670_p3 = v5272_0[32'd1];
assign tmp_111_fu_846_p4 = {{{tmp_fu_652_p4}, {lshr_ln_fu_820_p4}}, {1'd0}};
assign tmp_112_fu_866_p4 = {{empty_212_fu_830_p2[6:2]}};
assign tmp_113_fu_884_p3 = {{tmp_112_fu_866_p4}, {1'd0}};
assign tmp_114_fu_1082_p3 = {{add_ln7764_1_fu_1069_p2}, {1'd0}};
assign tmp_115_fu_1113_p3 = {{add_ln7772_fu_1100_p2}, {1'd0}};
assign tmp_116_fu_1147_p3 = {{add_ln7768_fu_1134_p2}, {1'd0}};
assign tmp_117_fu_1178_p3 = {{add_ln7776_fu_1165_p2}, {1'd0}};
assign tmp_fu_652_p4 = {{v5272_0[3:2]}};
assign v5213_fu_780_p3 = ((ap_phi_mux_icmp_ln7760195_phi_fu_635_p4[0:0] == 1'b1) ? add_ln7759_fu_754_p2 : ap_sig_allocacmp_v5213190_load);
assign v5214_fu_808_p3 = ((and_ln7759_fu_774_p2[0:0] == 1'b1) ? add_ln7760_fu_788_p2 : select_ln7759_fu_760_p3);
assign v5215_fu_972_p2 = (v5215_mid2_fu_800_p3 + 4'd2);
assign v5215_mid2_fu_800_p3 = ((empty_211_fu_794_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v5215193_load);
assign v5279_10_address0 = zext_ln7794_4_fu_1332_p1;
assign v5279_10_ce0 = v5279_10_ce0_local;
assign v5279_10_d0 = v9234_1_0_1_q0;
assign v5279_10_we0 = v5279_10_we0_local;
assign v5279_11_address0 = zext_ln7794_4_fu_1332_p1;
assign v5279_11_ce0 = v5279_11_ce0_local;
assign v5279_11_d0 = v9234_1_0_0_q0;
assign v5279_11_we0 = v5279_11_we0_local;
assign v5279_12_address0 = zext_ln7794_4_fu_1332_p1;
assign v5279_12_ce0 = v5279_12_ce0_local;
assign v5279_12_d0 = v9234_0_1_1_q0;
assign v5279_12_we0 = v5279_12_we0_local;
assign v5279_13_address0 = zext_ln7794_4_fu_1332_p1;
assign v5279_13_ce0 = v5279_13_ce0_local;
assign v5279_13_d0 = v9234_0_1_0_q0;
assign v5279_13_we0 = v5279_13_we0_local;
assign v5279_14_address0 = zext_ln7794_4_fu_1332_p1;
assign v5279_14_ce0 = v5279_14_ce0_local;
assign v5279_14_d0 = v9234_0_0_1_q0;
assign v5279_14_we0 = v5279_14_we0_local;
assign v5279_15_address0 = zext_ln7794_4_fu_1332_p1;
assign v5279_15_ce0 = v5279_15_ce0_local;
assign v5279_15_d0 = v9234_0_0_0_q0;
assign v5279_15_we0 = v5279_15_we0_local;
assign v5279_1_address0 = zext_ln7794_4_fu_1332_p1;
assign v5279_1_ce0 = v5279_1_ce0_local;
assign v5279_1_d0 = v9234_3_1_0_q0;
assign v5279_1_we0 = v5279_1_we0_local;
assign v5279_2_address0 = zext_ln7794_4_fu_1332_p1;
assign v5279_2_ce0 = v5279_2_ce0_local;
assign v5279_2_d0 = v9234_3_0_1_q0;
assign v5279_2_we0 = v5279_2_we0_local;
assign v5279_3_address0 = zext_ln7794_4_fu_1332_p1;
assign v5279_3_ce0 = v5279_3_ce0_local;
assign v5279_3_d0 = v9234_3_0_0_q0;
assign v5279_3_we0 = v5279_3_we0_local;
assign v5279_4_address0 = zext_ln7794_4_fu_1332_p1;
assign v5279_4_ce0 = v5279_4_ce0_local;
assign v5279_4_d0 = v9234_2_1_1_q0;
assign v5279_4_we0 = v5279_4_we0_local;
assign v5279_5_address0 = zext_ln7794_4_fu_1332_p1;
assign v5279_5_ce0 = v5279_5_ce0_local;
assign v5279_5_d0 = v9234_2_1_0_q0;
assign v5279_5_we0 = v5279_5_we0_local;
assign v5279_6_address0 = zext_ln7794_4_fu_1332_p1;
assign v5279_6_ce0 = v5279_6_ce0_local;
assign v5279_6_d0 = v9234_2_0_1_q0;
assign v5279_6_we0 = v5279_6_we0_local;
assign v5279_7_address0 = zext_ln7794_4_fu_1332_p1;
assign v5279_7_ce0 = v5279_7_ce0_local;
assign v5279_7_d0 = v9234_2_0_0_q0;
assign v5279_7_we0 = v5279_7_we0_local;
assign v5279_8_address0 = zext_ln7794_4_fu_1332_p1;
assign v5279_8_ce0 = v5279_8_ce0_local;
assign v5279_8_d0 = v9234_1_1_1_q0;
assign v5279_8_we0 = v5279_8_we0_local;
assign v5279_9_address0 = zext_ln7794_4_fu_1332_p1;
assign v5279_9_ce0 = v5279_9_ce0_local;
assign v5279_9_d0 = v9234_1_1_0_q0;
assign v5279_9_we0 = v5279_9_we0_local;
assign v5279_address0 = zext_ln7794_4_fu_1332_p1;
assign v5279_ce0 = v5279_ce0_local;
assign v5279_d0 = v9234_3_1_1_q0;
assign v5279_we0 = v5279_we0_local;
assign v9234_0_0_0_address0 = zext_ln7764_4_fu_1214_p1;
assign v9234_0_0_0_ce0 = v9234_0_0_0_ce0_local;
assign v9234_0_0_1_address0 = zext_ln7766_1_fu_1265_p1;
assign v9234_0_0_1_ce0 = v9234_0_0_1_ce0_local;
assign v9234_0_1_0_address0 = zext_ln7768_2_fu_1225_p1;
assign v9234_0_1_0_ce0 = v9234_0_1_0_ce0_local;
assign v9234_0_1_1_address0 = zext_ln7770_fu_1276_p1;
assign v9234_0_1_1_ce0 = v9234_0_1_1_ce0_local;
assign v9234_1_0_0_address0 = zext_ln7772_2_fu_1236_p1;
assign v9234_1_0_0_ce0 = v9234_1_0_0_ce0_local;
assign v9234_1_0_1_address0 = zext_ln7774_fu_1287_p1;
assign v9234_1_0_1_ce0 = v9234_1_0_1_ce0_local;
assign v9234_1_1_0_address0 = zext_ln7776_1_fu_1249_p1;
assign v9234_1_1_0_ce0 = v9234_1_1_0_ce0_local;
assign v9234_1_1_1_address0 = zext_ln7778_fu_1300_p1;
assign v9234_1_1_1_ce0 = v9234_1_1_1_ce0_local;
assign v9234_2_0_0_address0 = zext_ln7772_2_fu_1236_p1;
assign v9234_2_0_0_ce0 = v9234_2_0_0_ce0_local;
assign v9234_2_0_1_address0 = zext_ln7774_fu_1287_p1;
assign v9234_2_0_1_ce0 = v9234_2_0_1_ce0_local;
assign v9234_2_1_0_address0 = zext_ln7776_1_fu_1249_p1;
assign v9234_2_1_0_ce0 = v9234_2_1_0_ce0_local;
assign v9234_2_1_1_address0 = zext_ln7778_fu_1300_p1;
assign v9234_2_1_1_ce0 = v9234_2_1_1_ce0_local;
assign v9234_3_0_0_address0 = zext_ln7772_2_fu_1236_p1;
assign v9234_3_0_0_ce0 = v9234_3_0_0_ce0_local;
assign v9234_3_0_1_address0 = zext_ln7774_fu_1287_p1;
assign v9234_3_0_1_ce0 = v9234_3_0_1_ce0_local;
assign v9234_3_1_0_address0 = zext_ln7776_1_fu_1249_p1;
assign v9234_3_1_0_ce0 = v9234_3_1_0_ce0_local;
assign v9234_3_1_1_address0 = zext_ln7778_fu_1300_p1;
assign v9234_3_1_1_ce0 = v9234_3_1_1_ce0_local;
assign xor_ln7759_fu_768_p2 = (ap_phi_mux_icmp_ln7760195_phi_fu_635_p4 ^ 1'd1);
assign zext_ln7759_fu_816_p1 = v5213_fu_780_p3;
assign zext_ln7760_1_fu_916_p1 = lshr_ln26_fu_906_p4;
assign zext_ln7760_fu_902_p1 = v5214_fu_808_p3;
assign zext_ln7761_1_fu_1196_p1 = lshr_ln27_reg_1425;
assign zext_ln7761_fu_942_p1 = v5215_mid2_fu_800_p3;
assign zext_ln7764_1_fu_1066_p1 = empty_214_reg_1415;
assign zext_ln7764_2_fu_1090_p1 = tmp_114_fu_1082_p3;
assign zext_ln7764_3_fu_1204_p1 = add_ln7764_fu_1199_p2;
assign zext_ln7764_4_fu_1214_p1 = add_ln7764_2_fu_1208_p2;
assign zext_ln7764_fu_856_p1 = tmp_111_fu_846_p4;
assign zext_ln7766_1_fu_1265_p1 = add_ln7766_fu_1259_p2;
assign zext_ln7766_fu_1256_p1 = lshr_ln28_reg_1431;
assign zext_ln7768_1_fu_1155_p1 = tmp_116_fu_1147_p3;
assign zext_ln7768_2_fu_1225_p1 = add_ln7768_1_fu_1219_p2;
assign zext_ln7768_fu_1131_p1 = tmp_s_reg_1420;
assign zext_ln7770_fu_1276_p1 = add_ln7770_fu_1270_p2;
assign zext_ln7772_1_fu_1121_p1 = tmp_115_fu_1113_p3;
assign zext_ln7772_2_fu_1236_p1 = add_ln7772_1_fu_1230_p2;
assign zext_ln7772_fu_892_p1 = tmp_113_fu_884_p3;
assign zext_ln7774_fu_1287_p1 = add_ln7774_fu_1281_p2;
assign zext_ln7776_1_fu_1249_p1 = add_ln7776_1_fu_1243_p2;
assign zext_ln7776_fu_1186_p1 = tmp_117_fu_1178_p3;
assign zext_ln7778_fu_1300_p1 = add_ln7778_fu_1294_p2;
assign zext_ln7794_1_fu_1057_p1 = lshr_ln26_reg_1410;
assign zext_ln7794_2_fu_1307_p1 = add_ln7794_reg_1450;
assign zext_ln7794_3_fu_1323_p1 = lshr_ln27_reg_1425_pp0_iter1_reg;
assign zext_ln7794_4_fu_1332_p1 = add_ln7794_1_fu_1326_p2;
assign zext_ln7794_fu_1041_p1 = lshr_ln_reg_1392;
assign zext_ln7858_5_cast_cast_cast_cast_fu_698_p3 = ((empty_fu_694_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln7858_cast_cast_cast_cast_fu_678_p3 = ((tmp_110_fu_670_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
always @ (posedge ap_clk) begin
    p_udiv16_cast_cast_cast_cast_reg_1387[3] <= 1'b0;
    sub_ln7764_reg_1398[0] <= 1'b0;
    sub_ln7772_reg_1404[0] <= 1'b0;
end
endmodule 