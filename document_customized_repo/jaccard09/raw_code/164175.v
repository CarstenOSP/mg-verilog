module forward_dataflow_in_loop_VITIS_LOOP_18872_1_Loop_VITIS_LOOP_18807_1_proc18163 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v14573_address0,v14573_ce0,v14573_we0,v14573_d0,v14573_1_address0,v14573_1_ce0,v14573_1_we0,v14573_1_d0,v14573_2_address0,v14573_2_ce0,v14573_2_we0,v14573_2_d0,v14573_3_address0,v14573_3_ce0,v14573_3_we0,v14573_3_d0,v14573_4_address0,v14573_4_ce0,v14573_4_we0,v14573_4_d0,v14573_5_address0,v14573_5_ce0,v14573_5_we0,v14573_5_d0,v14573_6_address0,v14573_6_ce0,v14573_6_we0,v14573_6_d0,v14573_7_address0,v14573_7_ce0,v14573_7_we0,v14573_7_d0,v14573_8_address0,v14573_8_ce0,v14573_8_we0,v14573_8_d0,v14573_9_address0,v14573_9_ce0,v14573_9_we0,v14573_9_d0,v14573_10_address0,v14573_10_ce0,v14573_10_we0,v14573_10_d0,v14573_11_address0,v14573_11_ce0,v14573_11_we0,v14573_11_d0,v14573_12_address0,v14573_12_ce0,v14573_12_we0,v14573_12_d0,v14573_13_address0,v14573_13_ce0,v14573_13_we0,v14573_13_d0,v14573_14_address0,v14573_14_ce0,v14573_14_we0,v14573_14_d0,v14573_15_address0,v14573_15_ce0,v14573_15_we0,v14573_15_d0,v14566,v15439_0_0_0_address0,v15439_0_0_0_ce0,v15439_0_0_0_q0,v15439_0_0_1_address0,v15439_0_0_1_ce0,v15439_0_0_1_q0,v15439_0_0_2_address0,v15439_0_0_2_ce0,v15439_0_0_2_q0,v15439_0_0_3_address0,v15439_0_0_3_ce0,v15439_0_0_3_q0,v15439_0_1_0_address0,v15439_0_1_0_ce0,v15439_0_1_0_q0,v15439_0_1_1_address0,v15439_0_1_1_ce0,v15439_0_1_1_q0,v15439_0_1_2_address0,v15439_0_1_2_ce0,v15439_0_1_2_q0,v15439_0_1_3_address0,v15439_0_1_3_ce0,v15439_0_1_3_q0,v15439_1_0_0_address0,v15439_1_0_0_ce0,v15439_1_0_0_q0,v15439_1_0_1_address0,v15439_1_0_1_ce0,v15439_1_0_1_q0,v15439_1_0_2_address0,v15439_1_0_2_ce0,v15439_1_0_2_q0,v15439_1_0_3_address0,v15439_1_0_3_ce0,v15439_1_0_3_q0,v15439_1_1_0_address0,v15439_1_1_0_ce0,v15439_1_1_0_q0,v15439_1_1_1_address0,v15439_1_1_1_ce0,v15439_1_1_1_q0,v15439_1_1_2_address0,v15439_1_1_2_ce0,v15439_1_1_2_q0,v15439_1_1_3_address0,v15439_1_1_3_ce0,v15439_1_1_3_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [10:0] v14573_address0;
output   v14573_ce0;
output   v14573_we0;
output  [7:0] v14573_d0;
output  [10:0] v14573_1_address0;
output   v14573_1_ce0;
output   v14573_1_we0;
output  [7:0] v14573_1_d0;
output  [10:0] v14573_2_address0;
output   v14573_2_ce0;
output   v14573_2_we0;
output  [7:0] v14573_2_d0;
output  [10:0] v14573_3_address0;
output   v14573_3_ce0;
output   v14573_3_we0;
output  [7:0] v14573_3_d0;
output  [10:0] v14573_4_address0;
output   v14573_4_ce0;
output   v14573_4_we0;
output  [7:0] v14573_4_d0;
output  [10:0] v14573_5_address0;
output   v14573_5_ce0;
output   v14573_5_we0;
output  [7:0] v14573_5_d0;
output  [10:0] v14573_6_address0;
output   v14573_6_ce0;
output   v14573_6_we0;
output  [7:0] v14573_6_d0;
output  [10:0] v14573_7_address0;
output   v14573_7_ce0;
output   v14573_7_we0;
output  [7:0] v14573_7_d0;
output  [10:0] v14573_8_address0;
output   v14573_8_ce0;
output   v14573_8_we0;
output  [7:0] v14573_8_d0;
output  [10:0] v14573_9_address0;
output   v14573_9_ce0;
output   v14573_9_we0;
output  [7:0] v14573_9_d0;
output  [10:0] v14573_10_address0;
output   v14573_10_ce0;
output   v14573_10_we0;
output  [7:0] v14573_10_d0;
output  [10:0] v14573_11_address0;
output   v14573_11_ce0;
output   v14573_11_we0;
output  [7:0] v14573_11_d0;
output  [10:0] v14573_12_address0;
output   v14573_12_ce0;
output   v14573_12_we0;
output  [7:0] v14573_12_d0;
output  [10:0] v14573_13_address0;
output   v14573_13_ce0;
output   v14573_13_we0;
output  [7:0] v14573_13_d0;
output  [10:0] v14573_14_address0;
output   v14573_14_ce0;
output   v14573_14_we0;
output  [7:0] v14573_14_d0;
output  [10:0] v14573_15_address0;
output   v14573_15_ce0;
output   v14573_15_we0;
output  [7:0] v14573_15_d0;
input  [4:0] v14566;
output  [13:0] v15439_0_0_0_address0;
output   v15439_0_0_0_ce0;
input  [7:0] v15439_0_0_0_q0;
output  [13:0] v15439_0_0_1_address0;
output   v15439_0_0_1_ce0;
input  [7:0] v15439_0_0_1_q0;
output  [13:0] v15439_0_0_2_address0;
output   v15439_0_0_2_ce0;
input  [7:0] v15439_0_0_2_q0;
output  [13:0] v15439_0_0_3_address0;
output   v15439_0_0_3_ce0;
input  [7:0] v15439_0_0_3_q0;
output  [13:0] v15439_0_1_0_address0;
output   v15439_0_1_0_ce0;
input  [7:0] v15439_0_1_0_q0;
output  [13:0] v15439_0_1_1_address0;
output   v15439_0_1_1_ce0;
input  [7:0] v15439_0_1_1_q0;
output  [13:0] v15439_0_1_2_address0;
output   v15439_0_1_2_ce0;
input  [7:0] v15439_0_1_2_q0;
output  [13:0] v15439_0_1_3_address0;
output   v15439_0_1_3_ce0;
input  [7:0] v15439_0_1_3_q0;
output  [13:0] v15439_1_0_0_address0;
output   v15439_1_0_0_ce0;
input  [7:0] v15439_1_0_0_q0;
output  [13:0] v15439_1_0_1_address0;
output   v15439_1_0_1_ce0;
input  [7:0] v15439_1_0_1_q0;
output  [13:0] v15439_1_0_2_address0;
output   v15439_1_0_2_ce0;
input  [7:0] v15439_1_0_2_q0;
output  [13:0] v15439_1_0_3_address0;
output   v15439_1_0_3_ce0;
input  [7:0] v15439_1_0_3_q0;
output  [13:0] v15439_1_1_0_address0;
output   v15439_1_1_0_ce0;
input  [7:0] v15439_1_1_0_q0;
output  [13:0] v15439_1_1_1_address0;
output   v15439_1_1_1_ce0;
input  [7:0] v15439_1_1_1_q0;
output  [13:0] v15439_1_1_2_address0;
output   v15439_1_1_2_ce0;
input  [7:0] v15439_1_1_2_q0;
output  [13:0] v15439_1_1_3_address0;
output   v15439_1_1_3_ce0;
input  [7:0] v15439_1_1_3_q0;
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
wire   [0:0] icmp_ln18807_fu_1014_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] trunc_ln18807_cast_cast_i_cast_cast_fu_714_p3;
reg   [3:0] trunc_ln18807_cast_cast_i_cast_cast_reg_1399;
wire   [3:0] lshr_ln_i_fu_824_p4;
reg   [3:0] lshr_ln_i_reg_1404;
wire   [9:0] sub_ln18812_fu_864_p2;
reg   [9:0] sub_ln18812_reg_1410;
wire   [9:0] sub_ln18828_fu_900_p2;
reg   [9:0] sub_ln18828_reg_1416;
wire   [3:0] lshr_ln57_i_fu_910_p4;
reg   [3:0] lshr_ln57_i_reg_1422;
wire   [4:0] empty_246_fu_930_p2;
reg   [4:0] empty_246_reg_1427;
reg   [4:0] tmp_94_i_reg_1432;
reg   [2:0] lshr_ln58_i_reg_1437;
reg   [2:0] lshr_ln58_i_reg_1437_pp0_iter1_reg;
reg   [3:0] lshr_ln59_i_reg_1443;
wire   [0:0] icmp_ln18809_fu_1002_p2;
reg   [0:0] icmp_ln18809_reg_1448;
wire   [0:0] icmp_ln18808_fu_1008_p2;
reg   [0:0] icmp_ln18808_reg_1453;
reg   [0:0] icmp_ln18807_reg_1458;
wire   [7:0] add_ln18842_fu_1072_p2;
reg   [7:0] add_ln18842_reg_1462;
reg   [0:0] ap_phi_mux_icmp_ln18808195_i_phi_fu_641_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln18809194_i_phi_fu_651_p4;
wire   [63:0] zext_ln18812_4_fu_1226_p1;
wire   [63:0] zext_ln18820_2_fu_1237_p1;
wire   [63:0] zext_ln18828_2_fu_1248_p1;
wire   [63:0] zext_ln18836_1_fu_1259_p1;
wire   [63:0] zext_ln18814_1_fu_1273_p1;
wire   [63:0] zext_ln18822_fu_1286_p1;
wire   [63:0] zext_ln18830_fu_1299_p1;
wire   [63:0] zext_ln18838_fu_1312_p1;
wire   [63:0] zext_ln18842_4_fu_1344_p1;
reg   [10:0] indvar_flatten12189_i_fu_180;
wire   [10:0] add_ln18807_1_fu_996_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten12189_i_load;
reg   [5:0] v14541190_i_fu_184;
wire   [5:0] select_ln18807_1_fu_788_p3;
reg   [5:0] ap_sig_allocacmp_v14541190_i_load;
reg   [6:0] indvar_flatten191_i_fu_188;
wire   [6:0] select_ln18808_1_fu_988_p3;
reg   [6:0] ap_sig_allocacmp_indvar_flatten191_i_load;
reg   [4:0] v14542192_i_fu_192;
wire   [4:0] select_ln18808_fu_816_p3;
reg   [4:0] ap_sig_allocacmp_v14542192_i_load;
reg   [4:0] v14543193_i_fu_196;
wire   [4:0] add_ln18809_fu_976_p2;
reg   [4:0] ap_sig_allocacmp_v14543193_i_load;
reg    v15439_0_0_0_ce0_local;
reg    v15439_0_0_1_ce0_local;
reg    v15439_0_0_2_ce0_local;
reg    v15439_0_0_3_ce0_local;
reg    v15439_0_1_0_ce0_local;
reg    v15439_0_1_1_ce0_local;
reg    v15439_0_1_2_ce0_local;
reg    v15439_0_1_3_ce0_local;
reg    v15439_1_0_0_ce0_local;
reg    v15439_1_0_1_ce0_local;
reg    v15439_1_0_2_ce0_local;
reg    v15439_1_0_3_ce0_local;
reg    v15439_1_1_0_ce0_local;
reg    v15439_1_1_1_ce0_local;
reg    v15439_1_1_2_ce0_local;
reg    v15439_1_1_3_ce0_local;
reg    v14573_15_we0_local;
reg    v14573_15_ce0_local;
reg    v14573_14_we0_local;
reg    v14573_14_ce0_local;
reg    v14573_13_we0_local;
reg    v14573_13_ce0_local;
reg    v14573_12_we0_local;
reg    v14573_12_ce0_local;
reg    v14573_11_we0_local;
reg    v14573_11_ce0_local;
reg    v14573_10_we0_local;
reg    v14573_10_ce0_local;
reg    v14573_9_we0_local;
reg    v14573_9_ce0_local;
reg    v14573_8_we0_local;
reg    v14573_8_ce0_local;
reg    v14573_7_we0_local;
reg    v14573_7_ce0_local;
reg    v14573_6_we0_local;
reg    v14573_6_ce0_local;
reg    v14573_5_we0_local;
reg    v14573_5_ce0_local;
reg    v14573_4_we0_local;
reg    v14573_4_ce0_local;
reg    v14573_3_we0_local;
reg    v14573_3_ce0_local;
reg    v14573_2_we0_local;
reg    v14573_2_ce0_local;
reg    v14573_1_we0_local;
reg    v14573_1_ce0_local;
reg    v14573_we0_local;
reg    v14573_ce0_local;
wire   [5:0] v14566_cast1_fu_658_p1;
wire   [0:0] tmp_fu_662_p3;
wire   [0:0] tmp_170_fu_678_p3;
wire   [0:0] empty_fu_702_p1;
wire   [0:0] xor_ln18807_fu_776_p2;
wire   [5:0] add_ln18807_fu_762_p2;
wire   [4:0] select_ln18807_fu_768_p3;
wire   [0:0] and_ln18807_fu_782_p2;
wire   [0:0] empty_243_fu_802_p2;
wire   [4:0] add_ln18808_fu_796_p2;
wire   [5:0] mul_i215_i_i_fu_670_p3;
wire   [6:0] tmp_172_fu_850_p4;
wire   [9:0] p_shl46_fu_840_p4;
wire   [9:0] zext_ln18812_fu_860_p1;
wire   [5:0] empty_244_fu_834_p2;
wire   [4:0] tmp_173_fu_870_p4;
wire   [6:0] tmp_174_fu_888_p3;
wire   [9:0] p_shl44_fu_880_p3;
wire   [9:0] zext_ln18828_fu_896_p1;
wire   [5:0] zext_ln18807_cast_cast_i_cast_cast_fu_686_p3;
wire   [5:0] zext_ln18808_fu_906_p1;
wire   [4:0] zext_ln18808_1_fu_920_p1;
wire   [4:0] p_udiv24_i_cast_cast_i_cast_cast_fu_694_p3;
wire   [5:0] empty_245_fu_924_p2;
wire   [4:0] v14543_mid2_i_fu_808_p3;
wire   [5:0] select_ln18807_i_cast_cast_fu_706_p3;
wire   [5:0] zext_ln18809_fu_946_p1;
wire   [5:0] add_ln18811_fu_960_p2;
wire   [6:0] add_ln18808_1_fu_982_p2;
wire   [4:0] tmp_171_fu_1052_p3;
wire   [7:0] p_shl48_fu_1045_p3;
wire   [7:0] zext_ln18842_fu_1059_p1;
wire   [7:0] sub_ln18842_fu_1063_p2;
wire   [7:0] zext_ln18842_1_fu_1069_p1;
wire   [9:0] zext_ln18812_1_fu_1078_p1;
wire   [9:0] add_ln18812_fu_1081_p2;
wire   [10:0] tmp_175_fu_1094_p3;
wire   [13:0] p_shl41_fu_1086_p3;
wire   [13:0] zext_ln18812_2_fu_1102_p1;
wire   [9:0] add_ln18828_fu_1112_p2;
wire   [10:0] tmp_176_fu_1125_p3;
wire   [13:0] p_shl39_fu_1117_p3;
wire   [13:0] zext_ln18828_1_fu_1133_p1;
wire   [9:0] zext_ln18820_fu_1143_p1;
wire   [9:0] add_ln18820_fu_1146_p2;
wire   [10:0] tmp_177_fu_1159_p3;
wire   [13:0] p_shl37_fu_1151_p3;
wire   [13:0] zext_ln18820_1_fu_1167_p1;
wire   [9:0] add_ln18836_fu_1177_p2;
wire   [10:0] tmp_178_fu_1190_p3;
wire   [13:0] p_shl_fu_1182_p3;
wire   [13:0] zext_ln18836_fu_1198_p1;
wire   [3:0] zext_ln18809_1_fu_1208_p1;
wire   [3:0] add_ln18812_1_fu_1211_p2;
wire   [13:0] sub_ln18812_1_fu_1106_p2;
wire   [13:0] zext_ln18812_3_fu_1216_p1;
wire   [13:0] add_ln18812_2_fu_1220_p2;
wire   [13:0] sub_ln18820_fu_1171_p2;
wire   [13:0] add_ln18820_1_fu_1231_p2;
wire   [13:0] sub_ln18828_1_fu_1137_p2;
wire   [13:0] add_ln18828_1_fu_1242_p2;
wire   [13:0] sub_ln18836_fu_1202_p2;
wire   [13:0] add_ln18836_1_fu_1253_p2;
wire   [13:0] zext_ln18814_fu_1264_p1;
wire   [13:0] add_ln18814_fu_1267_p2;
wire   [13:0] add_ln18822_fu_1280_p2;
wire   [13:0] add_ln18830_fu_1293_p2;
wire   [13:0] add_ln18838_fu_1306_p2;
wire   [10:0] p_shl43_fu_1322_p3;
wire   [10:0] zext_ln18842_2_fu_1319_p1;
wire   [10:0] sub_ln18842_1_fu_1329_p2;
wire   [10:0] zext_ln18842_3_fu_1335_p1;
wire   [10:0] add_ln18842_1_fu_1338_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_945;
reg    ap_condition_298;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12189_i_fu_180 = 11'd0;
#0 v14541190_i_fu_184 = 6'd0;
#0 indvar_flatten191_i_fu_188 = 7'd0;
#0 v14542192_i_fu_192 = 5'd0;
#0 v14543193_i_fu_196 = 5'd0;
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
        indvar_flatten12189_i_fu_180 <= add_ln18807_1_fu_996_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_298)) begin
    indvar_flatten191_i_fu_188 <= select_ln18808_1_fu_988_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_298)) begin
    v14541190_i_fu_184 <= select_ln18807_1_fu_788_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_298)) begin
    v14542192_i_fu_192 <= select_ln18808_fu_816_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_298)) begin
    v14543193_i_fu_196 <= add_ln18809_fu_976_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln18842_reg_1462 <= add_ln18842_fu_1072_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_246_reg_1427 <= empty_246_fu_930_p2;
        icmp_ln18807_reg_1458 <= icmp_ln18807_fu_1014_p2;
        lshr_ln57_i_reg_1422 <= {{select_ln18808_fu_816_p3[4:1]}};
        lshr_ln58_i_reg_1437 <= {{v14543_mid2_i_fu_808_p3[4:2]}};
        lshr_ln58_i_reg_1437_pp0_iter1_reg <= lshr_ln58_i_reg_1437;
        lshr_ln59_i_reg_1443 <= {{add_ln18811_fu_960_p2[5:2]}};
        lshr_ln_i_reg_1404 <= {{select_ln18807_1_fu_788_p3[4:1]}};
        sub_ln18812_reg_1410[9 : 2] <= sub_ln18812_fu_864_p2[9 : 2];
        sub_ln18828_reg_1416[9 : 2] <= sub_ln18828_fu_900_p2[9 : 2];
        tmp_94_i_reg_1432 <= {{empty_245_fu_924_p2[5:1]}};
        trunc_ln18807_cast_cast_i_cast_cast_reg_1399[2 : 0] <= trunc_ln18807_cast_cast_i_cast_cast_fu_714_p3[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln18808_reg_1453 <= icmp_ln18808_fu_1008_p2;
        icmp_ln18809_reg_1448 <= icmp_ln18809_fu_1002_p2;
    end
end
always @ (*) begin
    if (((icmp_ln18807_fu_1014_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_945)) begin
            ap_phi_mux_icmp_ln18808195_i_phi_fu_641_p4 = icmp_ln18808_reg_1453;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln18808195_i_phi_fu_641_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln18808195_i_phi_fu_641_p4 = icmp_ln18808_reg_1453;
        end
    end else begin
        ap_phi_mux_icmp_ln18808195_i_phi_fu_641_p4 = icmp_ln18808_reg_1453;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_945)) begin
            ap_phi_mux_icmp_ln18809194_i_phi_fu_651_p4 = icmp_ln18809_reg_1448;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln18809194_i_phi_fu_651_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln18809194_i_phi_fu_651_p4 = icmp_ln18809_reg_1448;
        end
    end else begin
        ap_phi_mux_icmp_ln18809194_i_phi_fu_651_p4 = icmp_ln18809_reg_1448;
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
        ap_sig_allocacmp_indvar_flatten12189_i_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12189_i_load = indvar_flatten12189_i_fu_180;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten191_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten191_i_load = indvar_flatten191_i_fu_188;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v14541190_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v14541190_i_load = v14541190_i_fu_184;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v14542192_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v14542192_i_load = v14542192_i_fu_192;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v14543193_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v14543193_i_load = v14543193_i_fu_196;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_10_ce0_local = 1'b1;
    end else begin
        v14573_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_10_we0_local = 1'b1;
    end else begin
        v14573_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_11_ce0_local = 1'b1;
    end else begin
        v14573_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_11_we0_local = 1'b1;
    end else begin
        v14573_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_12_ce0_local = 1'b1;
    end else begin
        v14573_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_12_we0_local = 1'b1;
    end else begin
        v14573_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_13_ce0_local = 1'b1;
    end else begin
        v14573_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_13_we0_local = 1'b1;
    end else begin
        v14573_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_14_ce0_local = 1'b1;
    end else begin
        v14573_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_14_we0_local = 1'b1;
    end else begin
        v14573_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_15_ce0_local = 1'b1;
    end else begin
        v14573_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_15_we0_local = 1'b1;
    end else begin
        v14573_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_1_ce0_local = 1'b1;
    end else begin
        v14573_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_1_we0_local = 1'b1;
    end else begin
        v14573_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_2_ce0_local = 1'b1;
    end else begin
        v14573_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_2_we0_local = 1'b1;
    end else begin
        v14573_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_3_ce0_local = 1'b1;
    end else begin
        v14573_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_3_we0_local = 1'b1;
    end else begin
        v14573_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_4_ce0_local = 1'b1;
    end else begin
        v14573_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_4_we0_local = 1'b1;
    end else begin
        v14573_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_5_ce0_local = 1'b1;
    end else begin
        v14573_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_5_we0_local = 1'b1;
    end else begin
        v14573_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_6_ce0_local = 1'b1;
    end else begin
        v14573_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_6_we0_local = 1'b1;
    end else begin
        v14573_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_7_ce0_local = 1'b1;
    end else begin
        v14573_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_7_we0_local = 1'b1;
    end else begin
        v14573_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_8_ce0_local = 1'b1;
    end else begin
        v14573_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_8_we0_local = 1'b1;
    end else begin
        v14573_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_9_ce0_local = 1'b1;
    end else begin
        v14573_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_9_we0_local = 1'b1;
    end else begin
        v14573_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_ce0_local = 1'b1;
    end else begin
        v14573_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v14573_we0_local = 1'b1;
    end else begin
        v14573_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15439_0_0_0_ce0_local = 1'b1;
    end else begin
        v15439_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15439_0_0_1_ce0_local = 1'b1;
    end else begin
        v15439_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15439_0_0_2_ce0_local = 1'b1;
    end else begin
        v15439_0_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15439_0_0_3_ce0_local = 1'b1;
    end else begin
        v15439_0_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15439_0_1_0_ce0_local = 1'b1;
    end else begin
        v15439_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15439_0_1_1_ce0_local = 1'b1;
    end else begin
        v15439_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15439_0_1_2_ce0_local = 1'b1;
    end else begin
        v15439_0_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15439_0_1_3_ce0_local = 1'b1;
    end else begin
        v15439_0_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15439_1_0_0_ce0_local = 1'b1;
    end else begin
        v15439_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15439_1_0_1_ce0_local = 1'b1;
    end else begin
        v15439_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15439_1_0_2_ce0_local = 1'b1;
    end else begin
        v15439_1_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15439_1_0_3_ce0_local = 1'b1;
    end else begin
        v15439_1_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15439_1_1_0_ce0_local = 1'b1;
    end else begin
        v15439_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15439_1_1_1_ce0_local = 1'b1;
    end else begin
        v15439_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15439_1_1_2_ce0_local = 1'b1;
    end else begin
        v15439_1_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15439_1_1_3_ce0_local = 1'b1;
    end else begin
        v15439_1_1_3_ce0_local = 1'b0;
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
assign add_ln18807_1_fu_996_p2 = (ap_sig_allocacmp_indvar_flatten12189_i_load + 11'd1);
assign add_ln18807_fu_762_p2 = (ap_sig_allocacmp_v14541190_i_load + 6'd2);
assign add_ln18808_1_fu_982_p2 = (ap_sig_allocacmp_indvar_flatten191_i_load + 7'd1);
assign add_ln18808_fu_796_p2 = (select_ln18807_fu_768_p3 + 5'd2);
assign add_ln18809_fu_976_p2 = (v14543_mid2_i_fu_808_p3 + 5'd4);
assign add_ln18811_fu_960_p2 = (select_ln18807_i_cast_cast_fu_706_p3 + zext_ln18809_fu_946_p1);
assign add_ln18812_1_fu_1211_p2 = (zext_ln18809_1_fu_1208_p1 + trunc_ln18807_cast_cast_i_cast_cast_reg_1399);
assign add_ln18812_2_fu_1220_p2 = (sub_ln18812_1_fu_1106_p2 + zext_ln18812_3_fu_1216_p1);
assign add_ln18812_fu_1081_p2 = (sub_ln18812_reg_1410 + zext_ln18812_1_fu_1078_p1);
assign add_ln18814_fu_1267_p2 = (sub_ln18812_1_fu_1106_p2 + zext_ln18814_fu_1264_p1);
assign add_ln18820_1_fu_1231_p2 = (sub_ln18820_fu_1171_p2 + zext_ln18812_3_fu_1216_p1);
assign add_ln18820_fu_1146_p2 = (sub_ln18812_reg_1410 + zext_ln18820_fu_1143_p1);
assign add_ln18822_fu_1280_p2 = (sub_ln18820_fu_1171_p2 + zext_ln18814_fu_1264_p1);
assign add_ln18828_1_fu_1242_p2 = (sub_ln18828_1_fu_1137_p2 + zext_ln18812_3_fu_1216_p1);
assign add_ln18828_fu_1112_p2 = (sub_ln18828_reg_1416 + zext_ln18812_1_fu_1078_p1);
assign add_ln18830_fu_1293_p2 = (sub_ln18828_1_fu_1137_p2 + zext_ln18814_fu_1264_p1);
assign add_ln18836_1_fu_1253_p2 = (sub_ln18836_fu_1202_p2 + zext_ln18812_3_fu_1216_p1);
assign add_ln18836_fu_1177_p2 = (sub_ln18828_reg_1416 + zext_ln18820_fu_1143_p1);
assign add_ln18838_fu_1306_p2 = (sub_ln18836_fu_1202_p2 + zext_ln18814_fu_1264_p1);
assign add_ln18842_1_fu_1338_p2 = (sub_ln18842_1_fu_1329_p2 + zext_ln18842_3_fu_1335_p1);
assign add_ln18842_fu_1072_p2 = (sub_ln18842_fu_1063_p2 + zext_ln18842_1_fu_1069_p1);
assign and_ln18807_fu_782_p2 = (xor_ln18807_fu_776_p2 & ap_phi_mux_icmp_ln18809194_i_phi_fu_651_p4);
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
    ap_condition_945 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln18807_reg_1458 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_243_fu_802_p2 = (ap_phi_mux_icmp_ln18808195_i_phi_fu_641_p4 | and_ln18807_fu_782_p2);
assign empty_244_fu_834_p2 = (select_ln18807_1_fu_788_p3 + mul_i215_i_i_fu_670_p3);
assign empty_245_fu_924_p2 = (zext_ln18807_cast_cast_i_cast_cast_fu_686_p3 + zext_ln18808_fu_906_p1);
assign empty_246_fu_930_p2 = (zext_ln18808_1_fu_920_p1 + p_udiv24_i_cast_cast_i_cast_cast_fu_694_p3);
assign empty_fu_702_p1 = v14566[0:0];
assign icmp_ln18807_fu_1014_p2 = ((ap_sig_allocacmp_indvar_flatten12189_i_load == 11'd1567) ? 1'b1 : 1'b0);
assign icmp_ln18808_fu_1008_p2 = ((select_ln18808_1_fu_988_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln18809_fu_1002_p2 = ((add_ln18809_fu_976_p2 == 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln57_i_fu_910_p4 = {{select_ln18808_fu_816_p3[4:1]}};
assign lshr_ln_i_fu_824_p4 = {{select_ln18807_1_fu_788_p3[4:1]}};
assign mul_i215_i_i_fu_670_p3 = {{tmp_fu_662_p3}, {5'd0}};
assign p_shl37_fu_1151_p3 = {{add_ln18820_fu_1146_p2}, {4'd0}};
assign p_shl39_fu_1117_p3 = {{add_ln18828_fu_1112_p2}, {4'd0}};
assign p_shl41_fu_1086_p3 = {{add_ln18812_fu_1081_p2}, {4'd0}};
assign p_shl43_fu_1322_p3 = {{add_ln18842_reg_1462}, {3'd0}};
assign p_shl44_fu_880_p3 = {{tmp_173_fu_870_p4}, {5'd0}};
assign p_shl46_fu_840_p4 = {{{tmp_fu_662_p3}, {lshr_ln_i_fu_824_p4}}, {5'd0}};
assign p_shl48_fu_1045_p3 = {{lshr_ln_i_reg_1404}, {4'd0}};
assign p_shl_fu_1182_p3 = {{add_ln18836_fu_1177_p2}, {4'd0}};
assign p_udiv24_i_cast_cast_i_cast_cast_fu_694_p3 = ((tmp_170_fu_678_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign select_ln18807_1_fu_788_p3 = ((ap_phi_mux_icmp_ln18808195_i_phi_fu_641_p4[0:0] == 1'b1) ? add_ln18807_fu_762_p2 : ap_sig_allocacmp_v14541190_i_load);
assign select_ln18807_fu_768_p3 = ((ap_phi_mux_icmp_ln18808195_i_phi_fu_641_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v14542192_i_load);
assign select_ln18807_i_cast_cast_fu_706_p3 = ((empty_fu_702_p1[0:0] == 1'b1) ? 6'd28 : 6'd0);
assign select_ln18808_1_fu_988_p3 = ((ap_phi_mux_icmp_ln18808195_i_phi_fu_641_p4[0:0] == 1'b1) ? 7'd1 : add_ln18808_1_fu_982_p2);
assign select_ln18808_fu_816_p3 = ((and_ln18807_fu_782_p2[0:0] == 1'b1) ? add_ln18808_fu_796_p2 : select_ln18807_fu_768_p3);
assign sub_ln18812_1_fu_1106_p2 = (p_shl41_fu_1086_p3 - zext_ln18812_2_fu_1102_p1);
assign sub_ln18812_fu_864_p2 = (p_shl46_fu_840_p4 - zext_ln18812_fu_860_p1);
assign sub_ln18820_fu_1171_p2 = (p_shl37_fu_1151_p3 - zext_ln18820_1_fu_1167_p1);
assign sub_ln18828_1_fu_1137_p2 = (p_shl39_fu_1117_p3 - zext_ln18828_1_fu_1133_p1);
assign sub_ln18828_fu_900_p2 = (p_shl44_fu_880_p3 - zext_ln18828_fu_896_p1);
assign sub_ln18836_fu_1202_p2 = (p_shl_fu_1182_p3 - zext_ln18836_fu_1198_p1);
assign sub_ln18842_1_fu_1329_p2 = (p_shl43_fu_1322_p3 - zext_ln18842_2_fu_1319_p1);
assign sub_ln18842_fu_1063_p2 = (p_shl48_fu_1045_p3 - zext_ln18842_fu_1059_p1);
assign tmp_170_fu_678_p3 = v14566_cast1_fu_658_p1[32'd1];
assign tmp_171_fu_1052_p3 = {{lshr_ln_i_reg_1404}, {1'd0}};
assign tmp_172_fu_850_p4 = {{{tmp_fu_662_p3}, {lshr_ln_i_fu_824_p4}}, {2'd0}};
assign tmp_173_fu_870_p4 = {{empty_244_fu_834_p2[5:1]}};
assign tmp_174_fu_888_p3 = {{tmp_173_fu_870_p4}, {2'd0}};
assign tmp_175_fu_1094_p3 = {{add_ln18812_fu_1081_p2}, {1'd0}};
assign tmp_176_fu_1125_p3 = {{add_ln18828_fu_1112_p2}, {1'd0}};
assign tmp_177_fu_1159_p3 = {{add_ln18820_fu_1146_p2}, {1'd0}};
assign tmp_178_fu_1190_p3 = {{add_ln18836_fu_1177_p2}, {1'd0}};
assign tmp_fu_662_p3 = v14566_cast1_fu_658_p1[32'd4];
assign trunc_ln18807_cast_cast_i_cast_cast_fu_714_p3 = ((empty_fu_702_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign v14543_mid2_i_fu_808_p3 = ((empty_243_fu_802_p2[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v14543193_i_load);
assign v14566_cast1_fu_658_p1 = v14566;
assign v14573_10_address0 = zext_ln18842_4_fu_1344_p1;
assign v14573_10_ce0 = v14573_10_ce0_local;
assign v14573_10_d0 = v15439_0_1_1_q0;
assign v14573_10_we0 = v14573_10_we0_local;
assign v14573_11_address0 = zext_ln18842_4_fu_1344_p1;
assign v14573_11_ce0 = v14573_11_ce0_local;
assign v14573_11_d0 = v15439_0_1_0_q0;
assign v14573_11_we0 = v14573_11_we0_local;
assign v14573_12_address0 = zext_ln18842_4_fu_1344_p1;
assign v14573_12_ce0 = v14573_12_ce0_local;
assign v14573_12_d0 = v15439_0_0_3_q0;
assign v14573_12_we0 = v14573_12_we0_local;
assign v14573_13_address0 = zext_ln18842_4_fu_1344_p1;
assign v14573_13_ce0 = v14573_13_ce0_local;
assign v14573_13_d0 = v15439_0_0_2_q0;
assign v14573_13_we0 = v14573_13_we0_local;
assign v14573_14_address0 = zext_ln18842_4_fu_1344_p1;
assign v14573_14_ce0 = v14573_14_ce0_local;
assign v14573_14_d0 = v15439_0_0_1_q0;
assign v14573_14_we0 = v14573_14_we0_local;
assign v14573_15_address0 = zext_ln18842_4_fu_1344_p1;
assign v14573_15_ce0 = v14573_15_ce0_local;
assign v14573_15_d0 = v15439_0_0_0_q0;
assign v14573_15_we0 = v14573_15_we0_local;
assign v14573_1_address0 = zext_ln18842_4_fu_1344_p1;
assign v14573_1_ce0 = v14573_1_ce0_local;
assign v14573_1_d0 = v15439_1_1_2_q0;
assign v14573_1_we0 = v14573_1_we0_local;
assign v14573_2_address0 = zext_ln18842_4_fu_1344_p1;
assign v14573_2_ce0 = v14573_2_ce0_local;
assign v14573_2_d0 = v15439_1_1_1_q0;
assign v14573_2_we0 = v14573_2_we0_local;
assign v14573_3_address0 = zext_ln18842_4_fu_1344_p1;
assign v14573_3_ce0 = v14573_3_ce0_local;
assign v14573_3_d0 = v15439_1_1_0_q0;
assign v14573_3_we0 = v14573_3_we0_local;
assign v14573_4_address0 = zext_ln18842_4_fu_1344_p1;
assign v14573_4_ce0 = v14573_4_ce0_local;
assign v14573_4_d0 = v15439_1_0_3_q0;
assign v14573_4_we0 = v14573_4_we0_local;
assign v14573_5_address0 = zext_ln18842_4_fu_1344_p1;
assign v14573_5_ce0 = v14573_5_ce0_local;
assign v14573_5_d0 = v15439_1_0_2_q0;
assign v14573_5_we0 = v14573_5_we0_local;
assign v14573_6_address0 = zext_ln18842_4_fu_1344_p1;
assign v14573_6_ce0 = v14573_6_ce0_local;
assign v14573_6_d0 = v15439_1_0_1_q0;
assign v14573_6_we0 = v14573_6_we0_local;
assign v14573_7_address0 = zext_ln18842_4_fu_1344_p1;
assign v14573_7_ce0 = v14573_7_ce0_local;
assign v14573_7_d0 = v15439_1_0_0_q0;
assign v14573_7_we0 = v14573_7_we0_local;
assign v14573_8_address0 = zext_ln18842_4_fu_1344_p1;
assign v14573_8_ce0 = v14573_8_ce0_local;
assign v14573_8_d0 = v15439_0_1_3_q0;
assign v14573_8_we0 = v14573_8_we0_local;
assign v14573_9_address0 = zext_ln18842_4_fu_1344_p1;
assign v14573_9_ce0 = v14573_9_ce0_local;
assign v14573_9_d0 = v15439_0_1_2_q0;
assign v14573_9_we0 = v14573_9_we0_local;
assign v14573_address0 = zext_ln18842_4_fu_1344_p1;
assign v14573_ce0 = v14573_ce0_local;
assign v14573_d0 = v15439_1_1_3_q0;
assign v14573_we0 = v14573_we0_local;
assign v15439_0_0_0_address0 = zext_ln18812_4_fu_1226_p1;
assign v15439_0_0_0_ce0 = v15439_0_0_0_ce0_local;
assign v15439_0_0_1_address0 = zext_ln18814_1_fu_1273_p1;
assign v15439_0_0_1_ce0 = v15439_0_0_1_ce0_local;
assign v15439_0_0_2_address0 = zext_ln18814_1_fu_1273_p1;
assign v15439_0_0_2_ce0 = v15439_0_0_2_ce0_local;
assign v15439_0_0_3_address0 = zext_ln18814_1_fu_1273_p1;
assign v15439_0_0_3_ce0 = v15439_0_0_3_ce0_local;
assign v15439_0_1_0_address0 = zext_ln18820_2_fu_1237_p1;
assign v15439_0_1_0_ce0 = v15439_0_1_0_ce0_local;
assign v15439_0_1_1_address0 = zext_ln18822_fu_1286_p1;
assign v15439_0_1_1_ce0 = v15439_0_1_1_ce0_local;
assign v15439_0_1_2_address0 = zext_ln18822_fu_1286_p1;
assign v15439_0_1_2_ce0 = v15439_0_1_2_ce0_local;
assign v15439_0_1_3_address0 = zext_ln18822_fu_1286_p1;
assign v15439_0_1_3_ce0 = v15439_0_1_3_ce0_local;
assign v15439_1_0_0_address0 = zext_ln18828_2_fu_1248_p1;
assign v15439_1_0_0_ce0 = v15439_1_0_0_ce0_local;
assign v15439_1_0_1_address0 = zext_ln18830_fu_1299_p1;
assign v15439_1_0_1_ce0 = v15439_1_0_1_ce0_local;
assign v15439_1_0_2_address0 = zext_ln18830_fu_1299_p1;
assign v15439_1_0_2_ce0 = v15439_1_0_2_ce0_local;
assign v15439_1_0_3_address0 = zext_ln18830_fu_1299_p1;
assign v15439_1_0_3_ce0 = v15439_1_0_3_ce0_local;
assign v15439_1_1_0_address0 = zext_ln18836_1_fu_1259_p1;
assign v15439_1_1_0_ce0 = v15439_1_1_0_ce0_local;
assign v15439_1_1_1_address0 = zext_ln18838_fu_1312_p1;
assign v15439_1_1_1_ce0 = v15439_1_1_1_ce0_local;
assign v15439_1_1_2_address0 = zext_ln18838_fu_1312_p1;
assign v15439_1_1_2_ce0 = v15439_1_1_2_ce0_local;
assign v15439_1_1_3_address0 = zext_ln18838_fu_1312_p1;
assign v15439_1_1_3_ce0 = v15439_1_1_3_ce0_local;
assign xor_ln18807_fu_776_p2 = (ap_phi_mux_icmp_ln18808195_i_phi_fu_641_p4 ^ 1'd1);
assign zext_ln18807_cast_cast_i_cast_cast_fu_686_p3 = ((tmp_170_fu_678_p3[0:0] == 1'b1) ? 6'd28 : 6'd0);
assign zext_ln18808_1_fu_920_p1 = lshr_ln57_i_fu_910_p4;
assign zext_ln18808_fu_906_p1 = select_ln18808_fu_816_p3;
assign zext_ln18809_1_fu_1208_p1 = lshr_ln58_i_reg_1437;
assign zext_ln18809_fu_946_p1 = v14543_mid2_i_fu_808_p3;
assign zext_ln18812_1_fu_1078_p1 = empty_246_reg_1427;
assign zext_ln18812_2_fu_1102_p1 = tmp_175_fu_1094_p3;
assign zext_ln18812_3_fu_1216_p1 = add_ln18812_1_fu_1211_p2;
assign zext_ln18812_4_fu_1226_p1 = add_ln18812_2_fu_1220_p2;
assign zext_ln18812_fu_860_p1 = tmp_172_fu_850_p4;
assign zext_ln18814_1_fu_1273_p1 = add_ln18814_fu_1267_p2;
assign zext_ln18814_fu_1264_p1 = lshr_ln59_i_reg_1443;
assign zext_ln18820_1_fu_1167_p1 = tmp_177_fu_1159_p3;
assign zext_ln18820_2_fu_1237_p1 = add_ln18820_1_fu_1231_p2;
assign zext_ln18820_fu_1143_p1 = tmp_94_i_reg_1432;
assign zext_ln18822_fu_1286_p1 = add_ln18822_fu_1280_p2;
assign zext_ln18828_1_fu_1133_p1 = tmp_176_fu_1125_p3;
assign zext_ln18828_2_fu_1248_p1 = add_ln18828_1_fu_1242_p2;
assign zext_ln18828_fu_896_p1 = tmp_174_fu_888_p3;
assign zext_ln18830_fu_1299_p1 = add_ln18830_fu_1293_p2;
assign zext_ln18836_1_fu_1259_p1 = add_ln18836_1_fu_1253_p2;
assign zext_ln18836_fu_1198_p1 = tmp_178_fu_1190_p3;
assign zext_ln18838_fu_1312_p1 = add_ln18838_fu_1306_p2;
assign zext_ln18842_1_fu_1069_p1 = lshr_ln57_i_reg_1422;
assign zext_ln18842_2_fu_1319_p1 = add_ln18842_reg_1462;
assign zext_ln18842_3_fu_1335_p1 = lshr_ln58_i_reg_1437_pp0_iter1_reg;
assign zext_ln18842_4_fu_1344_p1 = add_ln18842_1_fu_1338_p2;
assign zext_ln18842_fu_1059_p1 = tmp_171_fu_1052_p3;
always @ (posedge ap_clk) begin
    trunc_ln18807_cast_cast_i_cast_cast_reg_1399[3] <= 1'b0;
    sub_ln18812_reg_1410[1:0] <= 2'b00;
    sub_ln18828_reg_1416[1:0] <= 2'b00;
end
endmodule 