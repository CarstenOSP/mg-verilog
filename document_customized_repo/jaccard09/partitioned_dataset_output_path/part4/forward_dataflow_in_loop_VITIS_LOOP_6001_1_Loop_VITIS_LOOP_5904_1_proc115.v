
module forward_dataflow_in_loop_VITIS_LOOP_6001_1_Loop_VITIS_LOOP_5904_1_proc115 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v4902_address0,v4902_ce0,v4902_we0,v4902_d0,v4902_1_address0,v4902_1_ce0,v4902_1_we0,v4902_1_d0,v4902_2_address0,v4902_2_ce0,v4902_2_we0,v4902_2_d0,v4902_3_address0,v4902_3_ce0,v4902_3_we0,v4902_3_d0,v4902_4_address0,v4902_4_ce0,v4902_4_we0,v4902_4_d0,v4902_5_address0,v4902_5_ce0,v4902_5_we0,v4902_5_d0,v4902_6_address0,v4902_6_ce0,v4902_6_we0,v4902_6_d0,v4902_7_address0,v4902_7_ce0,v4902_7_we0,v4902_7_d0,v4902_8_address0,v4902_8_ce0,v4902_8_we0,v4902_8_d0,v4902_9_address0,v4902_9_ce0,v4902_9_we0,v4902_9_d0,v4902_10_address0,v4902_10_ce0,v4902_10_we0,v4902_10_d0,v4902_11_address0,v4902_11_ce0,v4902_11_we0,v4902_11_d0,v4902_12_address0,v4902_12_ce0,v4902_12_we0,v4902_12_d0,v4902_13_address0,v4902_13_ce0,v4902_13_we0,v4902_13_d0,v4902_14_address0,v4902_14_ce0,v4902_14_we0,v4902_14_d0,v4902_15_address0,v4902_15_ce0,v4902_15_we0,v4902_15_d0,v4893_0,v13737_0_0_address0,v13737_0_0_ce0,v13737_0_0_q0,v13737_0_1_address0,v13737_0_1_ce0,v13737_0_1_q0,v13737_1_0_address0,v13737_1_0_ce0,v13737_1_0_q0,v13737_1_1_address0,v13737_1_1_ce0,v13737_1_1_q0,v13737_2_0_address0,v13737_2_0_ce0,v13737_2_0_q0,v13737_2_1_address0,v13737_2_1_ce0,v13737_2_1_q0,v13737_3_0_address0,v13737_3_0_ce0,v13737_3_0_q0,v13737_3_1_address0,v13737_3_1_ce0,v13737_3_1_q0,v13737_4_0_address0,v13737_4_0_ce0,v13737_4_0_q0,v13737_4_1_address0,v13737_4_1_ce0,v13737_4_1_q0,v13737_5_0_address0,v13737_5_0_ce0,v13737_5_0_q0,v13737_5_1_address0,v13737_5_1_ce0,v13737_5_1_q0,v13737_6_0_address0,v13737_6_0_ce0,v13737_6_0_q0,v13737_6_1_address0,v13737_6_1_ce0,v13737_6_1_q0,v13737_7_0_address0,v13737_7_0_ce0,v13737_7_0_q0,v13737_7_1_address0,v13737_7_1_ce0,v13737_7_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [5:0] v4902_address0;
output   v4902_ce0;
output   v4902_we0;
output  [7:0] v4902_d0;
output  [5:0] v4902_1_address0;
output   v4902_1_ce0;
output   v4902_1_we0;
output  [7:0] v4902_1_d0;
output  [5:0] v4902_2_address0;
output   v4902_2_ce0;
output   v4902_2_we0;
output  [7:0] v4902_2_d0;
output  [5:0] v4902_3_address0;
output   v4902_3_ce0;
output   v4902_3_we0;
output  [7:0] v4902_3_d0;
output  [5:0] v4902_4_address0;
output   v4902_4_ce0;
output   v4902_4_we0;
output  [7:0] v4902_4_d0;
output  [5:0] v4902_5_address0;
output   v4902_5_ce0;
output   v4902_5_we0;
output  [7:0] v4902_5_d0;
output  [5:0] v4902_6_address0;
output   v4902_6_ce0;
output   v4902_6_we0;
output  [7:0] v4902_6_d0;
output  [5:0] v4902_7_address0;
output   v4902_7_ce0;
output   v4902_7_we0;
output  [7:0] v4902_7_d0;
output  [5:0] v4902_8_address0;
output   v4902_8_ce0;
output   v4902_8_we0;
output  [7:0] v4902_8_d0;
output  [5:0] v4902_9_address0;
output   v4902_9_ce0;
output   v4902_9_we0;
output  [7:0] v4902_9_d0;
output  [5:0] v4902_10_address0;
output   v4902_10_ce0;
output   v4902_10_we0;
output  [7:0] v4902_10_d0;
output  [5:0] v4902_11_address0;
output   v4902_11_ce0;
output   v4902_11_we0;
output  [7:0] v4902_11_d0;
output  [5:0] v4902_12_address0;
output   v4902_12_ce0;
output   v4902_12_we0;
output  [7:0] v4902_12_d0;
output  [5:0] v4902_13_address0;
output   v4902_13_ce0;
output   v4902_13_we0;
output  [7:0] v4902_13_d0;
output  [5:0] v4902_14_address0;
output   v4902_14_ce0;
output   v4902_14_we0;
output  [7:0] v4902_14_d0;
output  [5:0] v4902_15_address0;
output   v4902_15_ce0;
output   v4902_15_we0;
output  [7:0] v4902_15_d0;
input  [14:0] v4893_0;
output  [12:0] v13737_0_0_address0;
output   v13737_0_0_ce0;
input  [7:0] v13737_0_0_q0;
output  [12:0] v13737_0_1_address0;
output   v13737_0_1_ce0;
input  [7:0] v13737_0_1_q0;
output  [12:0] v13737_1_0_address0;
output   v13737_1_0_ce0;
input  [7:0] v13737_1_0_q0;
output  [12:0] v13737_1_1_address0;
output   v13737_1_1_ce0;
input  [7:0] v13737_1_1_q0;
output  [12:0] v13737_2_0_address0;
output   v13737_2_0_ce0;
input  [7:0] v13737_2_0_q0;
output  [12:0] v13737_2_1_address0;
output   v13737_2_1_ce0;
input  [7:0] v13737_2_1_q0;
output  [12:0] v13737_3_0_address0;
output   v13737_3_0_ce0;
input  [7:0] v13737_3_0_q0;
output  [12:0] v13737_3_1_address0;
output   v13737_3_1_ce0;
input  [7:0] v13737_3_1_q0;
output  [12:0] v13737_4_0_address0;
output   v13737_4_0_ce0;
input  [7:0] v13737_4_0_q0;
output  [12:0] v13737_4_1_address0;
output   v13737_4_1_ce0;
input  [7:0] v13737_4_1_q0;
output  [12:0] v13737_5_0_address0;
output   v13737_5_0_ce0;
input  [7:0] v13737_5_0_q0;
output  [12:0] v13737_5_1_address0;
output   v13737_5_1_ce0;
input  [7:0] v13737_5_1_q0;
output  [12:0] v13737_6_0_address0;
output   v13737_6_0_ce0;
input  [7:0] v13737_6_0_q0;
output  [12:0] v13737_6_1_address0;
output   v13737_6_1_ce0;
input  [7:0] v13737_6_1_q0;
output  [12:0] v13737_7_0_address0;
output   v13737_7_0_ce0;
input  [7:0] v13737_7_0_q0;
output  [12:0] v13737_7_1_address0;
output   v13737_7_1_ce0;
input  [7:0] v13737_7_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln5904_fu_930_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] p_udiv54_cast_cast_fu_700_p3;
reg   [3:0] p_udiv54_cast_cast_reg_1344;
wire   [2:0] zext_ln5904_cast_cast_cast_cast_fu_712_p3;
reg   [2:0] zext_ln5904_cast_cast_cast_cast_reg_1349;
wire   [1:0] v4857_mid2_fu_806_p3;
reg   [1:0] v4857_mid2_reg_1354;
wire   [2:0] lshr_ln_fu_826_p4;
reg   [2:0] lshr_ln_reg_1360;
wire   [6:0] empty_249_fu_846_p2;
reg   [6:0] empty_249_reg_1366;
reg   [6:0] tmp_224_reg_1372;
reg   [2:0] lshr_ln14_reg_1378;
reg   [3:0] tmp_s_reg_1384;
wire   [0:0] icmp_ln5906_fu_918_p2;
reg   [0:0] icmp_ln5906_reg_1389;
wire   [0:0] icmp_ln5905_fu_924_p2;
reg   [0:0] icmp_ln5905_reg_1394;
reg   [0:0] icmp_ln5904_reg_1399;
wire   [5:0] add_ln5939_1_fu_1220_p2;
reg   [5:0] add_ln5939_1_reg_1403;
reg   [5:0] add_ln5939_1_reg_1403_pp0_iter2_reg;
wire   [12:0] add_ln5909_1_fu_1238_p2;
reg   [12:0] add_ln5909_1_reg_1408;
wire   [12:0] add_ln5911_1_fu_1244_p2;
reg   [12:0] add_ln5911_1_reg_1413;
wire   [12:0] add_ln5913_1_fu_1250_p2;
reg   [12:0] add_ln5913_1_reg_1418;
wire   [12:0] add_ln5915_1_fu_1256_p2;
reg   [12:0] add_ln5915_1_reg_1423;
reg   [0:0] ap_phi_mux_icmp_ln5905195_phi_fu_641_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln5906194_phi_fu_651_p4;
wire   [63:0] zext_ln5909_5_fu_1262_p1;
wire   [63:0] zext_ln5911_2_fu_1266_p1;
wire   [63:0] zext_ln5913_3_fu_1270_p1;
wire   [63:0] zext_ln5915_1_fu_1280_p1;
wire   [63:0] zext_ln5939_4_fu_1290_p1;
reg   [5:0] indvar_flatten12189_fu_180;
wire   [5:0] add_ln5904_1_fu_912_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten12189_load;
reg   [5:0] v4855190_fu_184;
wire   [5:0] v4855_fu_786_p3;
reg   [5:0] ap_sig_allocacmp_v4855190_load;
reg   [4:0] indvar_flatten191_fu_188;
wire   [4:0] select_ln5905_1_fu_904_p3;
reg   [4:0] ap_sig_allocacmp_indvar_flatten191_load;
reg   [3:0] v4856192_fu_192;
wire   [3:0] v4856_fu_814_p3;
reg   [3:0] ap_sig_allocacmp_v4856192_load;
reg   [1:0] v4857193_fu_196;
wire   [1:0] v4857_fu_892_p2;
reg   [1:0] ap_sig_allocacmp_v4857193_load;
reg    v13737_0_0_ce0_local;
reg    v13737_0_1_ce0_local;
reg    v13737_1_0_ce0_local;
reg    v13737_1_1_ce0_local;
reg    v13737_2_0_ce0_local;
reg    v13737_2_1_ce0_local;
reg    v13737_3_0_ce0_local;
reg    v13737_3_1_ce0_local;
reg    v13737_4_0_ce0_local;
reg    v13737_4_1_ce0_local;
reg    v13737_5_0_ce0_local;
reg    v13737_5_1_ce0_local;
reg    v13737_6_0_ce0_local;
reg    v13737_6_1_ce0_local;
reg    v13737_7_0_ce0_local;
reg    v13737_7_1_ce0_local;
reg    v4902_15_we0_local;
reg    v4902_15_ce0_local;
reg    v4902_14_we0_local;
reg    v4902_14_ce0_local;
reg    v4902_13_we0_local;
reg    v4902_13_ce0_local;
reg    v4902_12_we0_local;
reg    v4902_12_ce0_local;
reg    v4902_11_we0_local;
reg    v4902_11_ce0_local;
reg    v4902_10_we0_local;
reg    v4902_10_ce0_local;
reg    v4902_9_we0_local;
reg    v4902_9_ce0_local;
reg    v4902_8_we0_local;
reg    v4902_8_ce0_local;
reg    v4902_7_we0_local;
reg    v4902_7_ce0_local;
reg    v4902_6_we0_local;
reg    v4902_6_ce0_local;
reg    v4902_5_we0_local;
reg    v4902_5_ce0_local;
reg    v4902_4_we0_local;
reg    v4902_4_ce0_local;
reg    v4902_3_we0_local;
reg    v4902_3_ce0_local;
reg    v4902_2_we0_local;
reg    v4902_2_ce0_local;
reg    v4902_1_we0_local;
reg    v4902_1_ce0_local;
reg    v4902_we0_local;
reg    v4902_ce0_local;
wire   [4:0] tmp_fu_658_p4;
wire   [0:0] tmp_220_fu_684_p3;
wire   [0:0] empty_fu_708_p1;
wire   [0:0] xor_ln5904_fu_774_p2;
wire   [5:0] add_ln5904_fu_760_p2;
wire   [3:0] select_ln5904_fu_766_p3;
wire   [0:0] and_ln5904_fu_780_p2;
wire   [0:0] empty_247_fu_800_p2;
wire   [3:0] add_ln5905_fu_794_p2;
wire   [9:0] mul_i_fu_668_p3;
wire   [9:0] zext_ln5904_fu_822_p1;
wire   [6:0] trunc_ln_fu_676_p3;
wire   [6:0] zext_ln5904_1_fu_836_p1;
wire   [9:0] empty_248_fu_840_p2;
wire   [4:0] mul9_i_cast_cast_cast_fu_692_p3;
wire   [4:0] zext_ln5905_fu_862_p1;
wire   [4:0] empty_250_fu_876_p2;
wire   [4:0] add_ln5905_1_fu_898_p2;
wire   [4:0] tmp_221_fu_964_p3;
wire   [5:0] zext_ln5939_1_fu_971_p1;
wire   [5:0] zext_ln5939_fu_961_p1;
wire   [9:0] tmp_222_fu_981_p3;
wire   [7:0] tmp_223_fu_992_p3;
wire   [10:0] zext_ln5909_fu_988_p1;
wire   [10:0] zext_ln5909_1_fu_999_p1;
wire   [9:0] tmp_225_fu_1009_p3;
wire   [7:0] tmp_226_fu_1020_p3;
wire   [10:0] zext_ln5913_fu_1016_p1;
wire   [10:0] zext_ln5913_1_fu_1027_p1;
wire   [5:0] add_ln5939_2_fu_975_p2;
wire   [5:0] zext_ln5939_2_fu_1040_p1;
wire   [5:0] add_ln5939_fu_1043_p2;
wire   [5:0] shl_ln5939_fu_1049_p2;
wire   [3:0] zext_ln5905_1_fu_1037_p1;
wire   [3:0] empty_251_fu_1061_p2;
wire   [10:0] add_ln5909_2_fu_1003_p2;
wire   [10:0] zext_ln5909_2_fu_1066_p1;
wire   [10:0] add_ln5909_fu_1070_p2;
wire   [9:0] trunc_ln5909_fu_1076_p1;
wire   [11:0] tmp_227_fu_1080_p3;
wire   [12:0] tmp_228_fu_1088_p3;
wire   [12:0] zext_ln5909_3_fu_1096_p1;
wire   [10:0] add_ln5913_2_fu_1031_p2;
wire   [10:0] add_ln5913_fu_1106_p2;
wire   [9:0] trunc_ln5913_fu_1112_p1;
wire   [11:0] tmp_229_fu_1116_p3;
wire   [12:0] tmp_230_fu_1124_p3;
wire   [12:0] zext_ln5913_2_fu_1132_p1;
wire   [10:0] zext_ln5911_fu_1142_p1;
wire   [10:0] add_ln5911_fu_1145_p2;
wire   [9:0] trunc_ln5911_fu_1151_p1;
wire   [11:0] tmp_231_fu_1155_p3;
wire   [12:0] tmp_232_fu_1163_p3;
wire   [12:0] zext_ln5911_1_fu_1171_p1;
wire   [10:0] add_ln5915_fu_1181_p2;
wire   [9:0] trunc_ln5915_fu_1187_p1;
wire   [11:0] tmp_233_fu_1191_p3;
wire   [12:0] tmp_234_fu_1199_p3;
wire   [12:0] zext_ln5915_fu_1207_p1;
wire   [5:0] sub_ln5939_fu_1055_p2;
wire   [5:0] zext_ln5939_3_fu_1217_p1;
wire   [2:0] zext_ln5906_fu_1226_p1;
wire   [2:0] add_ln5908_fu_1229_p2;
wire   [12:0] sub_ln5913_fu_1100_p2;
wire   [12:0] zext_ln5909_4_fu_1234_p1;
wire   [12:0] sub_ln5915_fu_1175_p2;
wire   [12:0] sub_ln5913_1_fu_1136_p2;
wire   [12:0] sub_ln5906_fu_1211_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_928;
reg    ap_condition_297;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12189_fu_180 = 6'd0;
#0 v4855190_fu_184 = 6'd0;
#0 indvar_flatten191_fu_188 = 5'd0;
#0 v4856192_fu_192 = 4'd0;
#0 v4857193_fu_196 = 2'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_297)) begin
        indvar_flatten12189_fu_180 <= add_ln5904_1_fu_912_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_297)) begin
    indvar_flatten191_fu_188 <= select_ln5905_1_fu_904_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_297)) begin
    v4855190_fu_184 <= v4855_fu_786_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_297)) begin
    v4856192_fu_192 <= v4856_fu_814_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_297)) begin
    v4857193_fu_196 <= v4857_fu_892_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln5909_1_reg_1408 <= add_ln5909_1_fu_1238_p2;
        add_ln5911_1_reg_1413 <= add_ln5911_1_fu_1244_p2;
        add_ln5913_1_reg_1418 <= add_ln5913_1_fu_1250_p2;
        add_ln5915_1_reg_1423 <= add_ln5915_1_fu_1256_p2;
        add_ln5939_1_reg_1403 <= add_ln5939_1_fu_1220_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_249_reg_1366 <= empty_249_fu_846_p2;
        icmp_ln5904_reg_1399 <= icmp_ln5904_fu_930_p2;
        lshr_ln14_reg_1378 <= {{v4856_fu_814_p3[3:1]}};
        lshr_ln_reg_1360 <= {{v4855_fu_786_p3[5:3]}};
        p_udiv54_cast_cast_reg_1344[0] <= p_udiv54_cast_cast_fu_700_p3[0];
p_udiv54_cast_cast_reg_1344[2] <= p_udiv54_cast_cast_fu_700_p3[2];
        tmp_224_reg_1372 <= {{empty_248_fu_840_p2[9:3]}};
        tmp_s_reg_1384 <= {{empty_250_fu_876_p2[4:1]}};
        v4857_mid2_reg_1354 <= v4857_mid2_fu_806_p3;
        zext_ln5904_cast_cast_cast_cast_reg_1349[1 : 0] <= zext_ln5904_cast_cast_cast_cast_fu_712_p3[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln5939_1_reg_1403_pp0_iter2_reg <= add_ln5939_1_reg_1403;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln5905_reg_1394 <= icmp_ln5905_fu_924_p2;
        icmp_ln5906_reg_1389 <= icmp_ln5906_fu_918_p2;
    end
end
always @ (*) begin
    if (((icmp_ln5904_fu_930_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_928)) begin
            ap_phi_mux_icmp_ln5905195_phi_fu_641_p4 = icmp_ln5905_reg_1394;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln5905195_phi_fu_641_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln5905195_phi_fu_641_p4 = icmp_ln5905_reg_1394;
        end
    end else begin
        ap_phi_mux_icmp_ln5905195_phi_fu_641_p4 = icmp_ln5905_reg_1394;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_928)) begin
            ap_phi_mux_icmp_ln5906194_phi_fu_651_p4 = icmp_ln5906_reg_1389;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln5906194_phi_fu_651_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln5906194_phi_fu_651_p4 = icmp_ln5906_reg_1389;
        end
    end else begin
        ap_phi_mux_icmp_ln5906194_phi_fu_651_p4 = icmp_ln5906_reg_1389;
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
        ap_sig_allocacmp_indvar_flatten12189_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12189_load = indvar_flatten12189_fu_180;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten191_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten191_load = indvar_flatten191_fu_188;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4855190_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v4855190_load = v4855190_fu_184;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4856192_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v4856192_load = v4856192_fu_192;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4857193_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v4857193_load = v4857193_fu_196;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13737_0_0_ce0_local = 1'b1;
    end else begin
        v13737_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13737_0_1_ce0_local = 1'b1;
    end else begin
        v13737_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13737_1_0_ce0_local = 1'b1;
    end else begin
        v13737_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13737_1_1_ce0_local = 1'b1;
    end else begin
        v13737_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13737_2_0_ce0_local = 1'b1;
    end else begin
        v13737_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13737_2_1_ce0_local = 1'b1;
    end else begin
        v13737_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13737_3_0_ce0_local = 1'b1;
    end else begin
        v13737_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13737_3_1_ce0_local = 1'b1;
    end else begin
        v13737_3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13737_4_0_ce0_local = 1'b1;
    end else begin
        v13737_4_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13737_4_1_ce0_local = 1'b1;
    end else begin
        v13737_4_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13737_5_0_ce0_local = 1'b1;
    end else begin
        v13737_5_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13737_5_1_ce0_local = 1'b1;
    end else begin
        v13737_5_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13737_6_0_ce0_local = 1'b1;
    end else begin
        v13737_6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13737_6_1_ce0_local = 1'b1;
    end else begin
        v13737_6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13737_7_0_ce0_local = 1'b1;
    end else begin
        v13737_7_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13737_7_1_ce0_local = 1'b1;
    end else begin
        v13737_7_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_10_ce0_local = 1'b1;
    end else begin
        v4902_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_10_we0_local = 1'b1;
    end else begin
        v4902_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_11_ce0_local = 1'b1;
    end else begin
        v4902_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_11_we0_local = 1'b1;
    end else begin
        v4902_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_12_ce0_local = 1'b1;
    end else begin
        v4902_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_12_we0_local = 1'b1;
    end else begin
        v4902_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_13_ce0_local = 1'b1;
    end else begin
        v4902_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_13_we0_local = 1'b1;
    end else begin
        v4902_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_14_ce0_local = 1'b1;
    end else begin
        v4902_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_14_we0_local = 1'b1;
    end else begin
        v4902_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_15_ce0_local = 1'b1;
    end else begin
        v4902_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_15_we0_local = 1'b1;
    end else begin
        v4902_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_1_ce0_local = 1'b1;
    end else begin
        v4902_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_1_we0_local = 1'b1;
    end else begin
        v4902_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_2_ce0_local = 1'b1;
    end else begin
        v4902_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_2_we0_local = 1'b1;
    end else begin
        v4902_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_3_ce0_local = 1'b1;
    end else begin
        v4902_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_3_we0_local = 1'b1;
    end else begin
        v4902_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_4_ce0_local = 1'b1;
    end else begin
        v4902_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_4_we0_local = 1'b1;
    end else begin
        v4902_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_5_ce0_local = 1'b1;
    end else begin
        v4902_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_5_we0_local = 1'b1;
    end else begin
        v4902_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_6_ce0_local = 1'b1;
    end else begin
        v4902_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_6_we0_local = 1'b1;
    end else begin
        v4902_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_7_ce0_local = 1'b1;
    end else begin
        v4902_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_7_we0_local = 1'b1;
    end else begin
        v4902_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_8_ce0_local = 1'b1;
    end else begin
        v4902_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_8_we0_local = 1'b1;
    end else begin
        v4902_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_9_ce0_local = 1'b1;
    end else begin
        v4902_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_9_we0_local = 1'b1;
    end else begin
        v4902_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_ce0_local = 1'b1;
    end else begin
        v4902_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4902_we0_local = 1'b1;
    end else begin
        v4902_we0_local = 1'b0;
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
assign add_ln5904_1_fu_912_p2 = (ap_sig_allocacmp_indvar_flatten12189_load + 6'd1);
assign add_ln5904_fu_760_p2 = (ap_sig_allocacmp_v4855190_load + 6'd8);
assign add_ln5905_1_fu_898_p2 = (ap_sig_allocacmp_indvar_flatten191_load + 5'd1);
assign add_ln5905_fu_794_p2 = (select_ln5904_fu_766_p3 + 4'd2);
assign add_ln5908_fu_1229_p2 = (zext_ln5904_cast_cast_cast_cast_reg_1349 + zext_ln5906_fu_1226_p1);
assign add_ln5909_1_fu_1238_p2 = (sub_ln5913_fu_1100_p2 + zext_ln5909_4_fu_1234_p1);
assign add_ln5909_2_fu_1003_p2 = (zext_ln5909_fu_988_p1 + zext_ln5909_1_fu_999_p1);
assign add_ln5909_fu_1070_p2 = (add_ln5909_2_fu_1003_p2 + zext_ln5909_2_fu_1066_p1);
assign add_ln5911_1_fu_1244_p2 = (sub_ln5915_fu_1175_p2 + zext_ln5909_4_fu_1234_p1);
assign add_ln5911_fu_1145_p2 = (add_ln5909_2_fu_1003_p2 + zext_ln5911_fu_1142_p1);
assign add_ln5913_1_fu_1250_p2 = (sub_ln5913_1_fu_1136_p2 + zext_ln5909_4_fu_1234_p1);
assign add_ln5913_2_fu_1031_p2 = (zext_ln5913_fu_1016_p1 + zext_ln5913_1_fu_1027_p1);
assign add_ln5913_fu_1106_p2 = (add_ln5913_2_fu_1031_p2 + zext_ln5909_2_fu_1066_p1);
assign add_ln5915_1_fu_1256_p2 = (sub_ln5906_fu_1211_p2 + zext_ln5909_4_fu_1234_p1);
assign add_ln5915_fu_1181_p2 = (add_ln5913_2_fu_1031_p2 + zext_ln5911_fu_1142_p1);
assign add_ln5939_1_fu_1220_p2 = (sub_ln5939_fu_1055_p2 + zext_ln5939_3_fu_1217_p1);
assign add_ln5939_2_fu_975_p2 = (zext_ln5939_1_fu_971_p1 + zext_ln5939_fu_961_p1);
assign add_ln5939_fu_1043_p2 = (add_ln5939_2_fu_975_p2 + zext_ln5939_2_fu_1040_p1);
assign and_ln5904_fu_780_p2 = (xor_ln5904_fu_774_p2 & ap_phi_mux_icmp_ln5906194_phi_fu_651_p4);
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
    ap_condition_297 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_928 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln5904_reg_1399 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_247_fu_800_p2 = (ap_phi_mux_icmp_ln5905195_phi_fu_641_p4 | and_ln5904_fu_780_p2);
assign empty_248_fu_840_p2 = (mul_i_fu_668_p3 + zext_ln5904_fu_822_p1);
assign empty_249_fu_846_p2 = (trunc_ln_fu_676_p3 + zext_ln5904_1_fu_836_p1);
assign empty_250_fu_876_p2 = (mul9_i_cast_cast_cast_fu_692_p3 + zext_ln5905_fu_862_p1);
assign empty_251_fu_1061_p2 = (zext_ln5905_1_fu_1037_p1 + p_udiv54_cast_cast_reg_1344);
assign empty_fu_708_p1 = v4893_0[0:0];
assign icmp_ln5904_fu_930_p2 = ((ap_sig_allocacmp_indvar_flatten12189_load == 6'd59) ? 1'b1 : 1'b0);
assign icmp_ln5905_fu_924_p2 = ((select_ln5905_1_fu_904_p3 == 5'd15) ? 1'b1 : 1'b0);
assign icmp_ln5906_fu_918_p2 = ((v4857_fu_892_p2 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln_fu_826_p4 = {{v4855_fu_786_p3[5:3]}};
assign mul9_i_cast_cast_cast_fu_692_p3 = ((tmp_220_fu_684_p3[0:0] == 1'b1) ? 5'd10 : 5'd0);
assign mul_i_fu_668_p3 = {{tmp_fu_658_p4}, {5'd0}};
assign p_udiv54_cast_cast_fu_700_p3 = ((tmp_220_fu_684_p3[0:0] == 1'b1) ? 4'd5 : 4'd0);
assign select_ln5904_fu_766_p3 = ((ap_phi_mux_icmp_ln5905195_phi_fu_641_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v4856192_load);
assign select_ln5905_1_fu_904_p3 = ((ap_phi_mux_icmp_ln5905195_phi_fu_641_p4[0:0] == 1'b1) ? 5'd1 : add_ln5905_1_fu_898_p2);
assign shl_ln5939_fu_1049_p2 = add_ln5939_fu_1043_p2 << 6'd2;
assign sub_ln5906_fu_1211_p2 = (tmp_234_fu_1199_p3 - zext_ln5915_fu_1207_p1);
assign sub_ln5913_1_fu_1136_p2 = (tmp_230_fu_1124_p3 - zext_ln5913_2_fu_1132_p1);
assign sub_ln5913_fu_1100_p2 = (tmp_228_fu_1088_p3 - zext_ln5909_3_fu_1096_p1);
assign sub_ln5915_fu_1175_p2 = (tmp_232_fu_1163_p3 - zext_ln5911_1_fu_1171_p1);
assign sub_ln5939_fu_1055_p2 = (shl_ln5939_fu_1049_p2 - add_ln5939_fu_1043_p2);
assign tmp_220_fu_684_p3 = v4893_0[32'd1];
assign tmp_221_fu_964_p3 = {{lshr_ln_reg_1360}, {2'd0}};
assign tmp_222_fu_981_p3 = {{empty_249_reg_1366}, {3'd0}};
assign tmp_223_fu_992_p3 = {{empty_249_reg_1366}, {1'd0}};
assign tmp_225_fu_1009_p3 = {{tmp_224_reg_1372}, {3'd0}};
assign tmp_226_fu_1020_p3 = {{tmp_224_reg_1372}, {1'd0}};
assign tmp_227_fu_1080_p3 = {{add_ln5909_fu_1070_p2}, {1'd0}};
assign tmp_228_fu_1088_p3 = {{trunc_ln5909_fu_1076_p1}, {3'd0}};
assign tmp_229_fu_1116_p3 = {{add_ln5913_fu_1106_p2}, {1'd0}};
assign tmp_230_fu_1124_p3 = {{trunc_ln5913_fu_1112_p1}, {3'd0}};
assign tmp_231_fu_1155_p3 = {{add_ln5911_fu_1145_p2}, {1'd0}};
assign tmp_232_fu_1163_p3 = {{trunc_ln5911_fu_1151_p1}, {3'd0}};
assign tmp_233_fu_1191_p3 = {{add_ln5915_fu_1181_p2}, {1'd0}};
assign tmp_234_fu_1199_p3 = {{trunc_ln5915_fu_1187_p1}, {3'd0}};
assign tmp_fu_658_p4 = {{v4893_0[6:2]}};
assign trunc_ln5909_fu_1076_p1 = add_ln5909_fu_1070_p2[9:0];
assign trunc_ln5911_fu_1151_p1 = add_ln5911_fu_1145_p2[9:0];
assign trunc_ln5913_fu_1112_p1 = add_ln5913_fu_1106_p2[9:0];
assign trunc_ln5915_fu_1187_p1 = add_ln5915_fu_1181_p2[9:0];
assign trunc_ln_fu_676_p3 = {{tmp_fu_658_p4}, {2'd0}};
assign v13737_0_0_address0 = zext_ln5909_5_fu_1262_p1;
assign v13737_0_0_ce0 = v13737_0_0_ce0_local;
assign v13737_0_1_address0 = zext_ln5911_2_fu_1266_p1;
assign v13737_0_1_ce0 = v13737_0_1_ce0_local;
assign v13737_1_0_address0 = zext_ln5913_3_fu_1270_p1;
assign v13737_1_0_ce0 = v13737_1_0_ce0_local;
assign v13737_1_1_address0 = zext_ln5915_1_fu_1280_p1;
assign v13737_1_1_ce0 = v13737_1_1_ce0_local;
assign v13737_2_0_address0 = zext_ln5913_3_fu_1270_p1;
assign v13737_2_0_ce0 = v13737_2_0_ce0_local;
assign v13737_2_1_address0 = zext_ln5915_1_fu_1280_p1;
assign v13737_2_1_ce0 = v13737_2_1_ce0_local;
assign v13737_3_0_address0 = zext_ln5913_3_fu_1270_p1;
assign v13737_3_0_ce0 = v13737_3_0_ce0_local;
assign v13737_3_1_address0 = zext_ln5915_1_fu_1280_p1;
assign v13737_3_1_ce0 = v13737_3_1_ce0_local;
assign v13737_4_0_address0 = zext_ln5913_3_fu_1270_p1;
assign v13737_4_0_ce0 = v13737_4_0_ce0_local;
assign v13737_4_1_address0 = zext_ln5915_1_fu_1280_p1;
assign v13737_4_1_ce0 = v13737_4_1_ce0_local;
assign v13737_5_0_address0 = zext_ln5913_3_fu_1270_p1;
assign v13737_5_0_ce0 = v13737_5_0_ce0_local;
assign v13737_5_1_address0 = zext_ln5915_1_fu_1280_p1;
assign v13737_5_1_ce0 = v13737_5_1_ce0_local;
assign v13737_6_0_address0 = zext_ln5913_3_fu_1270_p1;
assign v13737_6_0_ce0 = v13737_6_0_ce0_local;
assign v13737_6_1_address0 = zext_ln5915_1_fu_1280_p1;
assign v13737_6_1_ce0 = v13737_6_1_ce0_local;
assign v13737_7_0_address0 = zext_ln5913_3_fu_1270_p1;
assign v13737_7_0_ce0 = v13737_7_0_ce0_local;
assign v13737_7_1_address0 = zext_ln5915_1_fu_1280_p1;
assign v13737_7_1_ce0 = v13737_7_1_ce0_local;
assign v4855_fu_786_p3 = ((ap_phi_mux_icmp_ln5905195_phi_fu_641_p4[0:0] == 1'b1) ? add_ln5904_fu_760_p2 : ap_sig_allocacmp_v4855190_load);
assign v4856_fu_814_p3 = ((and_ln5904_fu_780_p2[0:0] == 1'b1) ? add_ln5905_fu_794_p2 : select_ln5904_fu_766_p3);
assign v4857_fu_892_p2 = (v4857_mid2_fu_806_p3 + 2'd1);
assign v4857_mid2_fu_806_p3 = ((empty_247_fu_800_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v4857193_load);
assign v4902_10_address0 = zext_ln5939_4_fu_1290_p1;
assign v4902_10_ce0 = v4902_10_ce0_local;
assign v4902_10_d0 = v13737_2_1_q0;
assign v4902_10_we0 = v4902_10_we0_local;
assign v4902_11_address0 = zext_ln5939_4_fu_1290_p1;
assign v4902_11_ce0 = v4902_11_ce0_local;
assign v4902_11_d0 = v13737_2_0_q0;
assign v4902_11_we0 = v4902_11_we0_local;
assign v4902_12_address0 = zext_ln5939_4_fu_1290_p1;
assign v4902_12_ce0 = v4902_12_ce0_local;
assign v4902_12_d0 = v13737_1_1_q0;
assign v4902_12_we0 = v4902_12_we0_local;
assign v4902_13_address0 = zext_ln5939_4_fu_1290_p1;
assign v4902_13_ce0 = v4902_13_ce0_local;
assign v4902_13_d0 = v13737_1_0_q0;
assign v4902_13_we0 = v4902_13_we0_local;
assign v4902_14_address0 = zext_ln5939_4_fu_1290_p1;
assign v4902_14_ce0 = v4902_14_ce0_local;
assign v4902_14_d0 = v13737_0_1_q0;
assign v4902_14_we0 = v4902_14_we0_local;
assign v4902_15_address0 = zext_ln5939_4_fu_1290_p1;
assign v4902_15_ce0 = v4902_15_ce0_local;
assign v4902_15_d0 = v13737_0_0_q0;
assign v4902_15_we0 = v4902_15_we0_local;
assign v4902_1_address0 = zext_ln5939_4_fu_1290_p1;
assign v4902_1_ce0 = v4902_1_ce0_local;
assign v4902_1_d0 = v13737_7_0_q0;
assign v4902_1_we0 = v4902_1_we0_local;
assign v4902_2_address0 = zext_ln5939_4_fu_1290_p1;
assign v4902_2_ce0 = v4902_2_ce0_local;
assign v4902_2_d0 = v13737_6_1_q0;
assign v4902_2_we0 = v4902_2_we0_local;
assign v4902_3_address0 = zext_ln5939_4_fu_1290_p1;
assign v4902_3_ce0 = v4902_3_ce0_local;
assign v4902_3_d0 = v13737_6_0_q0;
assign v4902_3_we0 = v4902_3_we0_local;
assign v4902_4_address0 = zext_ln5939_4_fu_1290_p1;
assign v4902_4_ce0 = v4902_4_ce0_local;
assign v4902_4_d0 = v13737_5_1_q0;
assign v4902_4_we0 = v4902_4_we0_local;
assign v4902_5_address0 = zext_ln5939_4_fu_1290_p1;
assign v4902_5_ce0 = v4902_5_ce0_local;
assign v4902_5_d0 = v13737_5_0_q0;
assign v4902_5_we0 = v4902_5_we0_local;
assign v4902_6_address0 = zext_ln5939_4_fu_1290_p1;
assign v4902_6_ce0 = v4902_6_ce0_local;
assign v4902_6_d0 = v13737_4_1_q0;
assign v4902_6_we0 = v4902_6_we0_local;
assign v4902_7_address0 = zext_ln5939_4_fu_1290_p1;
assign v4902_7_ce0 = v4902_7_ce0_local;
assign v4902_7_d0 = v13737_4_0_q0;
assign v4902_7_we0 = v4902_7_we0_local;
assign v4902_8_address0 = zext_ln5939_4_fu_1290_p1;
assign v4902_8_ce0 = v4902_8_ce0_local;
assign v4902_8_d0 = v13737_3_1_q0;
assign v4902_8_we0 = v4902_8_we0_local;
assign v4902_9_address0 = zext_ln5939_4_fu_1290_p1;
assign v4902_9_ce0 = v4902_9_ce0_local;
assign v4902_9_d0 = v13737_3_0_q0;
assign v4902_9_we0 = v4902_9_we0_local;
assign v4902_address0 = zext_ln5939_4_fu_1290_p1;
assign v4902_ce0 = v4902_ce0_local;
assign v4902_d0 = v13737_7_1_q0;
assign v4902_we0 = v4902_we0_local;
assign xor_ln5904_fu_774_p2 = (ap_phi_mux_icmp_ln5905195_phi_fu_641_p4 ^ 1'd1);
assign zext_ln5904_1_fu_836_p1 = lshr_ln_fu_826_p4;
assign zext_ln5904_cast_cast_cast_cast_fu_712_p3 = ((empty_fu_708_p1[0:0] == 1'b1) ? 3'd3 : 3'd0);
assign zext_ln5904_fu_822_p1 = v4855_fu_786_p3;
assign zext_ln5905_1_fu_1037_p1 = lshr_ln14_reg_1378;
assign zext_ln5905_fu_862_p1 = v4856_fu_814_p3;
assign zext_ln5906_fu_1226_p1 = v4857_mid2_reg_1354;
assign zext_ln5909_1_fu_999_p1 = tmp_223_fu_992_p3;
assign zext_ln5909_2_fu_1066_p1 = empty_251_fu_1061_p2;
assign zext_ln5909_3_fu_1096_p1 = tmp_227_fu_1080_p3;
assign zext_ln5909_4_fu_1234_p1 = add_ln5908_fu_1229_p2;
assign zext_ln5909_5_fu_1262_p1 = add_ln5909_1_reg_1408;
assign zext_ln5909_fu_988_p1 = tmp_222_fu_981_p3;
assign zext_ln5911_1_fu_1171_p1 = tmp_231_fu_1155_p3;
assign zext_ln5911_2_fu_1266_p1 = add_ln5911_1_reg_1413;
assign zext_ln5911_fu_1142_p1 = tmp_s_reg_1384;
assign zext_ln5913_1_fu_1027_p1 = tmp_226_fu_1020_p3;
assign zext_ln5913_2_fu_1132_p1 = tmp_229_fu_1116_p3;
assign zext_ln5913_3_fu_1270_p1 = add_ln5913_1_reg_1418;
assign zext_ln5913_fu_1016_p1 = tmp_225_fu_1009_p3;
assign zext_ln5915_1_fu_1280_p1 = add_ln5915_1_reg_1423;
assign zext_ln5915_fu_1207_p1 = tmp_233_fu_1191_p3;
assign zext_ln5939_1_fu_971_p1 = tmp_221_fu_964_p3;
assign zext_ln5939_2_fu_1040_p1 = lshr_ln14_reg_1378;
assign zext_ln5939_3_fu_1217_p1 = v4857_mid2_reg_1354;
assign zext_ln5939_4_fu_1290_p1 = add_ln5939_1_reg_1403_pp0_iter2_reg;
assign zext_ln5939_fu_961_p1 = lshr_ln_reg_1360;
always @ (posedge ap_clk) begin
    p_udiv54_cast_cast_reg_1344[1] <= 1'b0;
    p_udiv54_cast_cast_reg_1344[3] <= 1'b0;
    zext_ln5904_cast_cast_cast_cast_reg_1349[2] <= 1'b0;
end
endmodule 
