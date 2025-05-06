
module forward_dataflow_in_loop_VITIS_LOOP_6001_1_Loop_VITIS_LOOP_4222_1_proc116 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v13736_7_1_address0,v13736_7_1_ce0,v13736_7_1_we0,v13736_7_1_d0,v13736_7_0_address0,v13736_7_0_ce0,v13736_7_0_we0,v13736_7_0_d0,v13736_6_1_address0,v13736_6_1_ce0,v13736_6_1_we0,v13736_6_1_d0,v13736_6_0_address0,v13736_6_0_ce0,v13736_6_0_we0,v13736_6_0_d0,v13736_5_1_address0,v13736_5_1_ce0,v13736_5_1_we0,v13736_5_1_d0,v13736_5_0_address0,v13736_5_0_ce0,v13736_5_0_we0,v13736_5_0_d0,v13736_4_1_address0,v13736_4_1_ce0,v13736_4_1_we0,v13736_4_1_d0,v13736_4_0_address0,v13736_4_0_ce0,v13736_4_0_we0,v13736_4_0_d0,v13736_3_1_address0,v13736_3_1_ce0,v13736_3_1_we0,v13736_3_1_d0,v13736_3_0_address0,v13736_3_0_ce0,v13736_3_0_we0,v13736_3_0_d0,v13736_2_1_address0,v13736_2_1_ce0,v13736_2_1_we0,v13736_2_1_d0,v13736_2_0_address0,v13736_2_0_ce0,v13736_2_0_we0,v13736_2_0_d0,v13736_1_1_address0,v13736_1_1_ce0,v13736_1_1_we0,v13736_1_1_d0,v13736_1_0_address0,v13736_1_0_ce0,v13736_1_0_we0,v13736_1_0_d0,v13736_0_1_address0,v13736_0_1_ce0,v13736_0_1_we0,v13736_0_1_d0,v13736_0_0_address0,v13736_0_0_ce0,v13736_0_0_we0,v13736_0_0_d0,p_read,v4904_15_address0,v4904_15_ce0,v4904_15_q0,v4904_14_address0,v4904_14_ce0,v4904_14_q0,v4904_13_address0,v4904_13_ce0,v4904_13_q0,v4904_12_address0,v4904_12_ce0,v4904_12_q0,v4904_11_address0,v4904_11_ce0,v4904_11_q0,v4904_10_address0,v4904_10_ce0,v4904_10_q0,v4904_9_address0,v4904_9_ce0,v4904_9_q0,v4904_8_address0,v4904_8_ce0,v4904_8_q0,v4904_7_address0,v4904_7_ce0,v4904_7_q0,v4904_6_address0,v4904_6_ce0,v4904_6_q0,v4904_5_address0,v4904_5_ce0,v4904_5_q0,v4904_4_address0,v4904_4_ce0,v4904_4_q0,v4904_3_address0,v4904_3_ce0,v4904_3_q0,v4904_2_address0,v4904_2_ce0,v4904_2_q0,v4904_1_address0,v4904_1_ce0,v4904_1_q0,v4904_address0,v4904_ce0,v4904_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [12:0] v13736_7_1_address0;
output   v13736_7_1_ce0;
output   v13736_7_1_we0;
output  [7:0] v13736_7_1_d0;
output  [12:0] v13736_7_0_address0;
output   v13736_7_0_ce0;
output   v13736_7_0_we0;
output  [7:0] v13736_7_0_d0;
output  [12:0] v13736_6_1_address0;
output   v13736_6_1_ce0;
output   v13736_6_1_we0;
output  [7:0] v13736_6_1_d0;
output  [12:0] v13736_6_0_address0;
output   v13736_6_0_ce0;
output   v13736_6_0_we0;
output  [7:0] v13736_6_0_d0;
output  [12:0] v13736_5_1_address0;
output   v13736_5_1_ce0;
output   v13736_5_1_we0;
output  [7:0] v13736_5_1_d0;
output  [12:0] v13736_5_0_address0;
output   v13736_5_0_ce0;
output   v13736_5_0_we0;
output  [7:0] v13736_5_0_d0;
output  [12:0] v13736_4_1_address0;
output   v13736_4_1_ce0;
output   v13736_4_1_we0;
output  [7:0] v13736_4_1_d0;
output  [12:0] v13736_4_0_address0;
output   v13736_4_0_ce0;
output   v13736_4_0_we0;
output  [7:0] v13736_4_0_d0;
output  [12:0] v13736_3_1_address0;
output   v13736_3_1_ce0;
output   v13736_3_1_we0;
output  [7:0] v13736_3_1_d0;
output  [12:0] v13736_3_0_address0;
output   v13736_3_0_ce0;
output   v13736_3_0_we0;
output  [7:0] v13736_3_0_d0;
output  [12:0] v13736_2_1_address0;
output   v13736_2_1_ce0;
output   v13736_2_1_we0;
output  [7:0] v13736_2_1_d0;
output  [12:0] v13736_2_0_address0;
output   v13736_2_0_ce0;
output   v13736_2_0_we0;
output  [7:0] v13736_2_0_d0;
output  [12:0] v13736_1_1_address0;
output   v13736_1_1_ce0;
output   v13736_1_1_we0;
output  [7:0] v13736_1_1_d0;
output  [12:0] v13736_1_0_address0;
output   v13736_1_0_ce0;
output   v13736_1_0_we0;
output  [7:0] v13736_1_0_d0;
output  [12:0] v13736_0_1_address0;
output   v13736_0_1_ce0;
output   v13736_0_1_we0;
output  [7:0] v13736_0_1_d0;
output  [12:0] v13736_0_0_address0;
output   v13736_0_0_ce0;
output   v13736_0_0_we0;
output  [7:0] v13736_0_0_d0;
input  [6:0] p_read;
output  [5:0] v4904_15_address0;
output   v4904_15_ce0;
input  [7:0] v4904_15_q0;
output  [5:0] v4904_14_address0;
output   v4904_14_ce0;
input  [7:0] v4904_14_q0;
output  [5:0] v4904_13_address0;
output   v4904_13_ce0;
input  [7:0] v4904_13_q0;
output  [5:0] v4904_12_address0;
output   v4904_12_ce0;
input  [7:0] v4904_12_q0;
output  [5:0] v4904_11_address0;
output   v4904_11_ce0;
input  [7:0] v4904_11_q0;
output  [5:0] v4904_10_address0;
output   v4904_10_ce0;
input  [7:0] v4904_10_q0;
output  [5:0] v4904_9_address0;
output   v4904_9_ce0;
input  [7:0] v4904_9_q0;
output  [5:0] v4904_8_address0;
output   v4904_8_ce0;
input  [7:0] v4904_8_q0;
output  [5:0] v4904_7_address0;
output   v4904_7_ce0;
input  [7:0] v4904_7_q0;
output  [5:0] v4904_6_address0;
output   v4904_6_ce0;
input  [7:0] v4904_6_q0;
output  [5:0] v4904_5_address0;
output   v4904_5_ce0;
input  [7:0] v4904_5_q0;
output  [5:0] v4904_4_address0;
output   v4904_4_ce0;
input  [7:0] v4904_4_q0;
output  [5:0] v4904_3_address0;
output   v4904_3_ce0;
input  [7:0] v4904_3_q0;
output  [5:0] v4904_2_address0;
output   v4904_2_ce0;
input  [7:0] v4904_2_q0;
output  [5:0] v4904_1_address0;
output   v4904_1_ce0;
input  [7:0] v4904_1_q0;
output  [5:0] v4904_address0;
output   v4904_ce0;
input  [7:0] v4904_q0;
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
wire   [0:0] icmp_ln4222_fu_962_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] p_udiv54_cast_cast_fu_700_p3;
reg   [3:0] p_udiv54_cast_cast_reg_1346;
wire   [2:0] zext_ln5904_cast_cast_cast_cast_fu_712_p3;
reg   [2:0] zext_ln5904_cast_cast_cast_cast_reg_1351;
wire   [1:0] v3364_mid2_fu_806_p3;
reg   [1:0] v3364_mid2_reg_1356;
wire   [6:0] empty_272_fu_868_p2;
reg   [6:0] empty_272_reg_1362;
reg   [6:0] tmp_262_reg_1368;
wire   [2:0] lshr_ln20_fu_888_p4;
reg   [2:0] lshr_ln20_reg_1374;
wire   [5:0] add_ln4226_fu_902_p2;
reg   [5:0] add_ln4226_reg_1379;
reg   [3:0] lshr_ln21_reg_1385;
wire   [0:0] icmp_ln4224_fu_950_p2;
reg   [0:0] icmp_ln4224_reg_1390;
wire   [0:0] icmp_ln4223_fu_956_p2;
reg   [0:0] icmp_ln4223_reg_1395;
reg   [0:0] icmp_ln4222_reg_1400;
wire   [12:0] add_ln4257_1_fu_1259_p2;
reg   [12:0] add_ln4257_1_reg_1484;
wire   [12:0] add_ln4255_1_fu_1265_p2;
reg   [12:0] add_ln4255_1_reg_1489;
wire   [12:0] add_ln4229_1_fu_1271_p2;
reg   [12:0] add_ln4229_1_reg_1494;
wire   [12:0] add_ln4227_2_fu_1277_p2;
reg   [12:0] add_ln4227_2_reg_1499;
reg   [0:0] ap_phi_mux_icmp_ln4223291_phi_fu_641_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln4224290_phi_fu_651_p4;
wire   [63:0] zext_ln4226_4_fu_1227_p1;
wire   [63:0] zext_ln4257_5_fu_1283_p1;
wire   [63:0] zext_ln4255_2_fu_1293_p1;
wire   [63:0] zext_ln4229_3_fu_1303_p1;
wire   [63:0] zext_ln4227_1_fu_1307_p1;
reg   [5:0] indvar_flatten12285_fu_180;
wire   [5:0] add_ln4222_1_fu_944_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten12285_load;
reg   [5:0] v3362286_fu_184;
wire   [5:0] v3362_fu_786_p3;
reg   [5:0] ap_sig_allocacmp_v3362286_load;
reg   [4:0] indvar_flatten287_fu_188;
wire   [4:0] select_ln4223_1_fu_936_p3;
reg   [4:0] ap_sig_allocacmp_indvar_flatten287_load;
reg   [3:0] v3363288_fu_192;
wire   [3:0] v3363_fu_814_p3;
reg   [3:0] ap_sig_allocacmp_v3363288_load;
reg   [1:0] v3364289_fu_196;
wire   [1:0] v3364_fu_924_p2;
reg   [1:0] ap_sig_allocacmp_v3364289_load;
reg    v4904_15_ce0_local;
reg    v4904_14_ce0_local;
reg    v4904_13_ce0_local;
reg    v4904_12_ce0_local;
reg    v4904_11_ce0_local;
reg    v4904_10_ce0_local;
reg    v4904_9_ce0_local;
reg    v4904_8_ce0_local;
reg    v4904_7_ce0_local;
reg    v4904_6_ce0_local;
reg    v4904_5_ce0_local;
reg    v4904_4_ce0_local;
reg    v4904_3_ce0_local;
reg    v4904_2_ce0_local;
reg    v4904_1_ce0_local;
reg    v4904_ce0_local;
reg    v13736_0_0_we0_local;
reg    v13736_0_0_ce0_local;
reg    v13736_0_1_we0_local;
reg    v13736_0_1_ce0_local;
reg    v13736_1_0_we0_local;
reg    v13736_1_0_ce0_local;
reg    v13736_1_1_we0_local;
reg    v13736_1_1_ce0_local;
reg    v13736_2_0_we0_local;
reg    v13736_2_0_ce0_local;
reg    v13736_2_1_we0_local;
reg    v13736_2_1_ce0_local;
reg    v13736_3_0_we0_local;
reg    v13736_3_0_ce0_local;
reg    v13736_3_1_we0_local;
reg    v13736_3_1_ce0_local;
reg    v13736_4_0_we0_local;
reg    v13736_4_0_ce0_local;
reg    v13736_4_1_we0_local;
reg    v13736_4_1_ce0_local;
reg    v13736_5_0_we0_local;
reg    v13736_5_0_ce0_local;
reg    v13736_5_1_we0_local;
reg    v13736_5_1_ce0_local;
reg    v13736_6_0_we0_local;
reg    v13736_6_0_ce0_local;
reg    v13736_6_1_we0_local;
reg    v13736_6_1_ce0_local;
reg    v13736_7_0_we0_local;
reg    v13736_7_0_ce0_local;
reg    v13736_7_1_we0_local;
reg    v13736_7_1_ce0_local;
wire   [4:0] tmp_fu_658_p4;
wire   [0:0] tmp_258_fu_684_p3;
wire   [0:0] empty_fu_708_p1;
wire   [0:0] xor_ln4222_fu_774_p2;
wire   [5:0] add_ln4222_fu_760_p2;
wire   [3:0] select_ln4222_fu_766_p3;
wire   [0:0] and_ln4222_fu_780_p2;
wire   [0:0] empty_270_fu_800_p2;
wire   [3:0] add_ln4223_fu_794_p2;
wire   [2:0] lshr_ln_fu_826_p4;
wire   [4:0] tmp_259_fu_844_p3;
wire   [5:0] zext_ln4226_1_fu_852_p1;
wire   [5:0] zext_ln4226_fu_840_p1;
wire   [9:0] mul_i_fu_668_p3;
wire   [9:0] zext_ln4222_fu_822_p1;
wire   [6:0] trunc_ln_fu_676_p3;
wire   [6:0] zext_ln4222_1_fu_836_p1;
wire   [9:0] empty_271_fu_862_p2;
wire   [5:0] add_ln4226_2_fu_856_p2;
wire   [5:0] zext_ln4226_2_fu_898_p1;
wire   [4:0] mul9_i_cast_cast_cast_fu_692_p3;
wire   [4:0] zext_ln4223_fu_884_p1;
wire   [4:0] empty_273_fu_908_p2;
wire   [4:0] add_ln4223_1_fu_930_p2;
wire   [9:0] tmp_260_fu_993_p3;
wire   [7:0] tmp_261_fu_1004_p3;
wire   [10:0] zext_ln4229_fu_1000_p1;
wire   [10:0] zext_ln4229_1_fu_1011_p1;
wire   [9:0] tmp_263_fu_1021_p3;
wire   [7:0] tmp_264_fu_1032_p3;
wire   [10:0] zext_ln4257_fu_1028_p1;
wire   [10:0] zext_ln4257_1_fu_1039_p1;
wire   [5:0] shl_ln4226_fu_1052_p2;
wire   [3:0] zext_ln4223_1_fu_1049_p1;
wire   [3:0] empty_274_fu_1062_p2;
wire   [10:0] add_ln4257_2_fu_1043_p2;
wire   [10:0] zext_ln4255_fu_1067_p1;
wire   [10:0] add_ln4255_fu_1071_p2;
wire   [9:0] trunc_ln4255_fu_1077_p1;
wire   [11:0] tmp_265_fu_1081_p3;
wire   [12:0] tmp_266_fu_1089_p3;
wire   [12:0] zext_ln4255_1_fu_1097_p1;
wire   [10:0] add_ln4229_2_fu_1015_p2;
wire   [10:0] add_ln4227_1_fu_1107_p2;
wire   [9:0] trunc_ln4227_fu_1113_p1;
wire   [11:0] tmp_267_fu_1117_p3;
wire   [12:0] tmp_268_fu_1125_p3;
wire   [12:0] zext_ln4227_fu_1133_p1;
wire   [10:0] zext_ln4257_2_fu_1143_p1;
wire   [10:0] add_ln4257_fu_1146_p2;
wire   [9:0] trunc_ln4257_fu_1152_p1;
wire   [11:0] tmp_269_fu_1156_p3;
wire   [12:0] tmp_270_fu_1164_p3;
wire   [12:0] zext_ln4257_3_fu_1172_p1;
wire   [10:0] add_ln4229_fu_1182_p2;
wire   [9:0] trunc_ln4229_fu_1188_p1;
wire   [11:0] tmp_271_fu_1192_p3;
wire   [12:0] tmp_272_fu_1200_p3;
wire   [12:0] zext_ln4229_2_fu_1208_p1;
wire   [5:0] sub_ln4226_fu_1057_p2;
wire   [5:0] zext_ln4226_3_fu_1218_p1;
wire   [5:0] add_ln4226_1_fu_1221_p2;
wire   [2:0] zext_ln4224_fu_1247_p1;
wire   [2:0] add_ln4227_fu_1250_p2;
wire   [12:0] sub_ln4229_fu_1176_p2;
wire   [12:0] zext_ln4257_4_fu_1255_p1;
wire   [12:0] sub_ln4227_fu_1101_p2;
wire   [12:0] sub_ln4224_1_fu_1212_p2;
wire   [12:0] sub_ln4224_fu_1137_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_916;
reg    ap_condition_294;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12285_fu_180 = 6'd0;
#0 v3362286_fu_184 = 6'd0;
#0 indvar_flatten287_fu_188 = 5'd0;
#0 v3363288_fu_192 = 4'd0;
#0 v3364289_fu_196 = 2'd0;
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
    if ((1'b1 == ap_condition_294)) begin
        indvar_flatten12285_fu_180 <= add_ln4222_1_fu_944_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_294)) begin
    indvar_flatten287_fu_188 <= select_ln4223_1_fu_936_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_294)) begin
    v3362286_fu_184 <= v3362_fu_786_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_294)) begin
    v3363288_fu_192 <= v3363_fu_814_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_294)) begin
    v3364289_fu_196 <= v3364_fu_924_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln4226_reg_1379 <= add_ln4226_fu_902_p2;
        add_ln4227_2_reg_1499 <= add_ln4227_2_fu_1277_p2;
        add_ln4229_1_reg_1494 <= add_ln4229_1_fu_1271_p2;
        add_ln4255_1_reg_1489 <= add_ln4255_1_fu_1265_p2;
        add_ln4257_1_reg_1484 <= add_ln4257_1_fu_1259_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_272_reg_1362 <= empty_272_fu_868_p2;
        icmp_ln4222_reg_1400 <= icmp_ln4222_fu_962_p2;
        lshr_ln20_reg_1374 <= {{v3363_fu_814_p3[3:1]}};
        lshr_ln21_reg_1385 <= {{empty_273_fu_908_p2[4:1]}};
        p_udiv54_cast_cast_reg_1346[0] <= p_udiv54_cast_cast_fu_700_p3[0];
p_udiv54_cast_cast_reg_1346[2] <= p_udiv54_cast_cast_fu_700_p3[2];
        tmp_262_reg_1368 <= {{empty_271_fu_862_p2[9:3]}};
        v3364_mid2_reg_1356 <= v3364_mid2_fu_806_p3;
        zext_ln5904_cast_cast_cast_cast_reg_1351[1 : 0] <= zext_ln5904_cast_cast_cast_cast_fu_712_p3[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln4223_reg_1395 <= icmp_ln4223_fu_956_p2;
        icmp_ln4224_reg_1390 <= icmp_ln4224_fu_950_p2;
    end
end
always @ (*) begin
    if (((icmp_ln4222_fu_962_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_916)) begin
            ap_phi_mux_icmp_ln4223291_phi_fu_641_p4 = icmp_ln4223_reg_1395;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln4223291_phi_fu_641_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln4223291_phi_fu_641_p4 = icmp_ln4223_reg_1395;
        end
    end else begin
        ap_phi_mux_icmp_ln4223291_phi_fu_641_p4 = icmp_ln4223_reg_1395;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_916)) begin
            ap_phi_mux_icmp_ln4224290_phi_fu_651_p4 = icmp_ln4224_reg_1390;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln4224290_phi_fu_651_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln4224290_phi_fu_651_p4 = icmp_ln4224_reg_1390;
        end
    end else begin
        ap_phi_mux_icmp_ln4224290_phi_fu_651_p4 = icmp_ln4224_reg_1390;
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
        ap_sig_allocacmp_indvar_flatten12285_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12285_load = indvar_flatten12285_fu_180;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten287_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten287_load = indvar_flatten287_fu_188;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v3362286_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v3362286_load = v3362286_fu_184;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v3363288_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v3363288_load = v3363288_fu_192;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v3364289_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v3364289_load = v3364289_fu_196;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_0_0_ce0_local = 1'b1;
    end else begin
        v13736_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_0_0_we0_local = 1'b1;
    end else begin
        v13736_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_0_1_ce0_local = 1'b1;
    end else begin
        v13736_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_0_1_we0_local = 1'b1;
    end else begin
        v13736_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_1_0_ce0_local = 1'b1;
    end else begin
        v13736_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_1_0_we0_local = 1'b1;
    end else begin
        v13736_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_1_1_ce0_local = 1'b1;
    end else begin
        v13736_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_1_1_we0_local = 1'b1;
    end else begin
        v13736_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_2_0_ce0_local = 1'b1;
    end else begin
        v13736_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_2_0_we0_local = 1'b1;
    end else begin
        v13736_2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_2_1_ce0_local = 1'b1;
    end else begin
        v13736_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_2_1_we0_local = 1'b1;
    end else begin
        v13736_2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_3_0_ce0_local = 1'b1;
    end else begin
        v13736_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_3_0_we0_local = 1'b1;
    end else begin
        v13736_3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_3_1_ce0_local = 1'b1;
    end else begin
        v13736_3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_3_1_we0_local = 1'b1;
    end else begin
        v13736_3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_4_0_ce0_local = 1'b1;
    end else begin
        v13736_4_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_4_0_we0_local = 1'b1;
    end else begin
        v13736_4_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_4_1_ce0_local = 1'b1;
    end else begin
        v13736_4_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_4_1_we0_local = 1'b1;
    end else begin
        v13736_4_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_5_0_ce0_local = 1'b1;
    end else begin
        v13736_5_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_5_0_we0_local = 1'b1;
    end else begin
        v13736_5_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_5_1_ce0_local = 1'b1;
    end else begin
        v13736_5_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_5_1_we0_local = 1'b1;
    end else begin
        v13736_5_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_6_0_ce0_local = 1'b1;
    end else begin
        v13736_6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_6_0_we0_local = 1'b1;
    end else begin
        v13736_6_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_6_1_ce0_local = 1'b1;
    end else begin
        v13736_6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_6_1_we0_local = 1'b1;
    end else begin
        v13736_6_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_7_0_ce0_local = 1'b1;
    end else begin
        v13736_7_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_7_0_we0_local = 1'b1;
    end else begin
        v13736_7_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_7_1_ce0_local = 1'b1;
    end else begin
        v13736_7_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13736_7_1_we0_local = 1'b1;
    end else begin
        v13736_7_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4904_10_ce0_local = 1'b1;
    end else begin
        v4904_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4904_11_ce0_local = 1'b1;
    end else begin
        v4904_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4904_12_ce0_local = 1'b1;
    end else begin
        v4904_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4904_13_ce0_local = 1'b1;
    end else begin
        v4904_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4904_14_ce0_local = 1'b1;
    end else begin
        v4904_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4904_15_ce0_local = 1'b1;
    end else begin
        v4904_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4904_1_ce0_local = 1'b1;
    end else begin
        v4904_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4904_2_ce0_local = 1'b1;
    end else begin
        v4904_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4904_3_ce0_local = 1'b1;
    end else begin
        v4904_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4904_4_ce0_local = 1'b1;
    end else begin
        v4904_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4904_5_ce0_local = 1'b1;
    end else begin
        v4904_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4904_6_ce0_local = 1'b1;
    end else begin
        v4904_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4904_7_ce0_local = 1'b1;
    end else begin
        v4904_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4904_8_ce0_local = 1'b1;
    end else begin
        v4904_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4904_9_ce0_local = 1'b1;
    end else begin
        v4904_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4904_ce0_local = 1'b1;
    end else begin
        v4904_ce0_local = 1'b0;
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
assign add_ln4222_1_fu_944_p2 = (ap_sig_allocacmp_indvar_flatten12285_load + 6'd1);
assign add_ln4222_fu_760_p2 = (ap_sig_allocacmp_v3362286_load + 6'd8);
assign add_ln4223_1_fu_930_p2 = (ap_sig_allocacmp_indvar_flatten287_load + 5'd1);
assign add_ln4223_fu_794_p2 = (select_ln4222_fu_766_p3 + 4'd2);
assign add_ln4226_1_fu_1221_p2 = (sub_ln4226_fu_1057_p2 + zext_ln4226_3_fu_1218_p1);
assign add_ln4226_2_fu_856_p2 = (zext_ln4226_1_fu_852_p1 + zext_ln4226_fu_840_p1);
assign add_ln4226_fu_902_p2 = (add_ln4226_2_fu_856_p2 + zext_ln4226_2_fu_898_p1);
assign add_ln4227_1_fu_1107_p2 = (add_ln4229_2_fu_1015_p2 + zext_ln4255_fu_1067_p1);
assign add_ln4227_2_fu_1277_p2 = (sub_ln4224_fu_1137_p2 + zext_ln4257_4_fu_1255_p1);
assign add_ln4227_fu_1250_p2 = (zext_ln5904_cast_cast_cast_cast_reg_1351 + zext_ln4224_fu_1247_p1);
assign add_ln4229_1_fu_1271_p2 = (sub_ln4224_1_fu_1212_p2 + zext_ln4257_4_fu_1255_p1);
assign add_ln4229_2_fu_1015_p2 = (zext_ln4229_fu_1000_p1 + zext_ln4229_1_fu_1011_p1);
assign add_ln4229_fu_1182_p2 = (add_ln4229_2_fu_1015_p2 + zext_ln4257_2_fu_1143_p1);
assign add_ln4255_1_fu_1265_p2 = (sub_ln4227_fu_1101_p2 + zext_ln4257_4_fu_1255_p1);
assign add_ln4255_fu_1071_p2 = (add_ln4257_2_fu_1043_p2 + zext_ln4255_fu_1067_p1);
assign add_ln4257_1_fu_1259_p2 = (sub_ln4229_fu_1176_p2 + zext_ln4257_4_fu_1255_p1);
assign add_ln4257_2_fu_1043_p2 = (zext_ln4257_fu_1028_p1 + zext_ln4257_1_fu_1039_p1);
assign add_ln4257_fu_1146_p2 = (add_ln4257_2_fu_1043_p2 + zext_ln4257_2_fu_1143_p1);
assign and_ln4222_fu_780_p2 = (xor_ln4222_fu_774_p2 & ap_phi_mux_icmp_ln4224290_phi_fu_651_p4);
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
    ap_condition_294 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_916 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln4222_reg_1400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_270_fu_800_p2 = (ap_phi_mux_icmp_ln4223291_phi_fu_641_p4 | and_ln4222_fu_780_p2);
assign empty_271_fu_862_p2 = (mul_i_fu_668_p3 + zext_ln4222_fu_822_p1);
assign empty_272_fu_868_p2 = (trunc_ln_fu_676_p3 + zext_ln4222_1_fu_836_p1);
assign empty_273_fu_908_p2 = (mul9_i_cast_cast_cast_fu_692_p3 + zext_ln4223_fu_884_p1);
assign empty_274_fu_1062_p2 = (zext_ln4223_1_fu_1049_p1 + p_udiv54_cast_cast_reg_1346);
assign empty_fu_708_p1 = p_read[0:0];
assign icmp_ln4222_fu_962_p2 = ((ap_sig_allocacmp_indvar_flatten12285_load == 6'd59) ? 1'b1 : 1'b0);
assign icmp_ln4223_fu_956_p2 = ((select_ln4223_1_fu_936_p3 == 5'd15) ? 1'b1 : 1'b0);
assign icmp_ln4224_fu_950_p2 = ((v3364_fu_924_p2 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln20_fu_888_p4 = {{v3363_fu_814_p3[3:1]}};
assign lshr_ln_fu_826_p4 = {{v3362_fu_786_p3[5:3]}};
assign mul9_i_cast_cast_cast_fu_692_p3 = ((tmp_258_fu_684_p3[0:0] == 1'b1) ? 5'd10 : 5'd0);
assign mul_i_fu_668_p3 = {{tmp_fu_658_p4}, {5'd0}};
assign p_udiv54_cast_cast_fu_700_p3 = ((tmp_258_fu_684_p3[0:0] == 1'b1) ? 4'd5 : 4'd0);
assign select_ln4222_fu_766_p3 = ((ap_phi_mux_icmp_ln4223291_phi_fu_641_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v3363288_load);
assign select_ln4223_1_fu_936_p3 = ((ap_phi_mux_icmp_ln4223291_phi_fu_641_p4[0:0] == 1'b1) ? 5'd1 : add_ln4223_1_fu_930_p2);
assign shl_ln4226_fu_1052_p2 = add_ln4226_reg_1379 << 6'd2;
assign sub_ln4224_1_fu_1212_p2 = (tmp_272_fu_1200_p3 - zext_ln4229_2_fu_1208_p1);
assign sub_ln4224_fu_1137_p2 = (tmp_268_fu_1125_p3 - zext_ln4227_fu_1133_p1);
assign sub_ln4226_fu_1057_p2 = (shl_ln4226_fu_1052_p2 - add_ln4226_reg_1379);
assign sub_ln4227_fu_1101_p2 = (tmp_266_fu_1089_p3 - zext_ln4255_1_fu_1097_p1);
assign sub_ln4229_fu_1176_p2 = (tmp_270_fu_1164_p3 - zext_ln4257_3_fu_1172_p1);
assign tmp_258_fu_684_p3 = p_read[32'd1];
assign tmp_259_fu_844_p3 = {{lshr_ln_fu_826_p4}, {2'd0}};
assign tmp_260_fu_993_p3 = {{empty_272_reg_1362}, {3'd0}};
assign tmp_261_fu_1004_p3 = {{empty_272_reg_1362}, {1'd0}};
assign tmp_263_fu_1021_p3 = {{tmp_262_reg_1368}, {3'd0}};
assign tmp_264_fu_1032_p3 = {{tmp_262_reg_1368}, {1'd0}};
assign tmp_265_fu_1081_p3 = {{add_ln4255_fu_1071_p2}, {1'd0}};
assign tmp_266_fu_1089_p3 = {{trunc_ln4255_fu_1077_p1}, {3'd0}};
assign tmp_267_fu_1117_p3 = {{add_ln4227_1_fu_1107_p2}, {1'd0}};
assign tmp_268_fu_1125_p3 = {{trunc_ln4227_fu_1113_p1}, {3'd0}};
assign tmp_269_fu_1156_p3 = {{add_ln4257_fu_1146_p2}, {1'd0}};
assign tmp_270_fu_1164_p3 = {{trunc_ln4257_fu_1152_p1}, {3'd0}};
assign tmp_271_fu_1192_p3 = {{add_ln4229_fu_1182_p2}, {1'd0}};
assign tmp_272_fu_1200_p3 = {{trunc_ln4229_fu_1188_p1}, {3'd0}};
assign tmp_fu_658_p4 = {{p_read[6:2]}};
assign trunc_ln4227_fu_1113_p1 = add_ln4227_1_fu_1107_p2[9:0];
assign trunc_ln4229_fu_1188_p1 = add_ln4229_fu_1182_p2[9:0];
assign trunc_ln4255_fu_1077_p1 = add_ln4255_fu_1071_p2[9:0];
assign trunc_ln4257_fu_1152_p1 = add_ln4257_fu_1146_p2[9:0];
assign trunc_ln_fu_676_p3 = {{tmp_fu_658_p4}, {2'd0}};
assign v13736_0_0_address0 = zext_ln4227_1_fu_1307_p1;
assign v13736_0_0_ce0 = v13736_0_0_ce0_local;
assign v13736_0_0_d0 = v4904_15_q0;
assign v13736_0_0_we0 = v13736_0_0_we0_local;
assign v13736_0_1_address0 = zext_ln4229_3_fu_1303_p1;
assign v13736_0_1_ce0 = v13736_0_1_ce0_local;
assign v13736_0_1_d0 = v4904_14_q0;
assign v13736_0_1_we0 = v13736_0_1_we0_local;
assign v13736_1_0_address0 = zext_ln4255_2_fu_1293_p1;
assign v13736_1_0_ce0 = v13736_1_0_ce0_local;
assign v13736_1_0_d0 = v4904_13_q0;
assign v13736_1_0_we0 = v13736_1_0_we0_local;
assign v13736_1_1_address0 = zext_ln4257_5_fu_1283_p1;
assign v13736_1_1_ce0 = v13736_1_1_ce0_local;
assign v13736_1_1_d0 = v4904_12_q0;
assign v13736_1_1_we0 = v13736_1_1_we0_local;
assign v13736_2_0_address0 = zext_ln4255_2_fu_1293_p1;
assign v13736_2_0_ce0 = v13736_2_0_ce0_local;
assign v13736_2_0_d0 = v4904_11_q0;
assign v13736_2_0_we0 = v13736_2_0_we0_local;
assign v13736_2_1_address0 = zext_ln4257_5_fu_1283_p1;
assign v13736_2_1_ce0 = v13736_2_1_ce0_local;
assign v13736_2_1_d0 = v4904_10_q0;
assign v13736_2_1_we0 = v13736_2_1_we0_local;
assign v13736_3_0_address0 = zext_ln4255_2_fu_1293_p1;
assign v13736_3_0_ce0 = v13736_3_0_ce0_local;
assign v13736_3_0_d0 = v4904_9_q0;
assign v13736_3_0_we0 = v13736_3_0_we0_local;
assign v13736_3_1_address0 = zext_ln4257_5_fu_1283_p1;
assign v13736_3_1_ce0 = v13736_3_1_ce0_local;
assign v13736_3_1_d0 = v4904_8_q0;
assign v13736_3_1_we0 = v13736_3_1_we0_local;
assign v13736_4_0_address0 = zext_ln4255_2_fu_1293_p1;
assign v13736_4_0_ce0 = v13736_4_0_ce0_local;
assign v13736_4_0_d0 = v4904_7_q0;
assign v13736_4_0_we0 = v13736_4_0_we0_local;
assign v13736_4_1_address0 = zext_ln4257_5_fu_1283_p1;
assign v13736_4_1_ce0 = v13736_4_1_ce0_local;
assign v13736_4_1_d0 = v4904_6_q0;
assign v13736_4_1_we0 = v13736_4_1_we0_local;
assign v13736_5_0_address0 = zext_ln4255_2_fu_1293_p1;
assign v13736_5_0_ce0 = v13736_5_0_ce0_local;
assign v13736_5_0_d0 = v4904_5_q0;
assign v13736_5_0_we0 = v13736_5_0_we0_local;
assign v13736_5_1_address0 = zext_ln4257_5_fu_1283_p1;
assign v13736_5_1_ce0 = v13736_5_1_ce0_local;
assign v13736_5_1_d0 = v4904_4_q0;
assign v13736_5_1_we0 = v13736_5_1_we0_local;
assign v13736_6_0_address0 = zext_ln4255_2_fu_1293_p1;
assign v13736_6_0_ce0 = v13736_6_0_ce0_local;
assign v13736_6_0_d0 = v4904_3_q0;
assign v13736_6_0_we0 = v13736_6_0_we0_local;
assign v13736_6_1_address0 = zext_ln4257_5_fu_1283_p1;
assign v13736_6_1_ce0 = v13736_6_1_ce0_local;
assign v13736_6_1_d0 = v4904_2_q0;
assign v13736_6_1_we0 = v13736_6_1_we0_local;
assign v13736_7_0_address0 = zext_ln4255_2_fu_1293_p1;
assign v13736_7_0_ce0 = v13736_7_0_ce0_local;
assign v13736_7_0_d0 = v4904_1_q0;
assign v13736_7_0_we0 = v13736_7_0_we0_local;
assign v13736_7_1_address0 = zext_ln4257_5_fu_1283_p1;
assign v13736_7_1_ce0 = v13736_7_1_ce0_local;
assign v13736_7_1_d0 = v4904_q0;
assign v13736_7_1_we0 = v13736_7_1_we0_local;
assign v3362_fu_786_p3 = ((ap_phi_mux_icmp_ln4223291_phi_fu_641_p4[0:0] == 1'b1) ? add_ln4222_fu_760_p2 : ap_sig_allocacmp_v3362286_load);
assign v3363_fu_814_p3 = ((and_ln4222_fu_780_p2[0:0] == 1'b1) ? add_ln4223_fu_794_p2 : select_ln4222_fu_766_p3);
assign v3364_fu_924_p2 = (v3364_mid2_fu_806_p3 + 2'd1);
assign v3364_mid2_fu_806_p3 = ((empty_270_fu_800_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v3364289_load);
assign v4904_10_address0 = zext_ln4226_4_fu_1227_p1;
assign v4904_10_ce0 = v4904_10_ce0_local;
assign v4904_11_address0 = zext_ln4226_4_fu_1227_p1;
assign v4904_11_ce0 = v4904_11_ce0_local;
assign v4904_12_address0 = zext_ln4226_4_fu_1227_p1;
assign v4904_12_ce0 = v4904_12_ce0_local;
assign v4904_13_address0 = zext_ln4226_4_fu_1227_p1;
assign v4904_13_ce0 = v4904_13_ce0_local;
assign v4904_14_address0 = zext_ln4226_4_fu_1227_p1;
assign v4904_14_ce0 = v4904_14_ce0_local;
assign v4904_15_address0 = zext_ln4226_4_fu_1227_p1;
assign v4904_15_ce0 = v4904_15_ce0_local;
assign v4904_1_address0 = zext_ln4226_4_fu_1227_p1;
assign v4904_1_ce0 = v4904_1_ce0_local;
assign v4904_2_address0 = zext_ln4226_4_fu_1227_p1;
assign v4904_2_ce0 = v4904_2_ce0_local;
assign v4904_3_address0 = zext_ln4226_4_fu_1227_p1;
assign v4904_3_ce0 = v4904_3_ce0_local;
assign v4904_4_address0 = zext_ln4226_4_fu_1227_p1;
assign v4904_4_ce0 = v4904_4_ce0_local;
assign v4904_5_address0 = zext_ln4226_4_fu_1227_p1;
assign v4904_5_ce0 = v4904_5_ce0_local;
assign v4904_6_address0 = zext_ln4226_4_fu_1227_p1;
assign v4904_6_ce0 = v4904_6_ce0_local;
assign v4904_7_address0 = zext_ln4226_4_fu_1227_p1;
assign v4904_7_ce0 = v4904_7_ce0_local;
assign v4904_8_address0 = zext_ln4226_4_fu_1227_p1;
assign v4904_8_ce0 = v4904_8_ce0_local;
assign v4904_9_address0 = zext_ln4226_4_fu_1227_p1;
assign v4904_9_ce0 = v4904_9_ce0_local;
assign v4904_address0 = zext_ln4226_4_fu_1227_p1;
assign v4904_ce0 = v4904_ce0_local;
assign xor_ln4222_fu_774_p2 = (ap_phi_mux_icmp_ln4223291_phi_fu_641_p4 ^ 1'd1);
assign zext_ln4222_1_fu_836_p1 = lshr_ln_fu_826_p4;
assign zext_ln4222_fu_822_p1 = v3362_fu_786_p3;
assign zext_ln4223_1_fu_1049_p1 = lshr_ln20_reg_1374;
assign zext_ln4223_fu_884_p1 = v3363_fu_814_p3;
assign zext_ln4224_fu_1247_p1 = v3364_mid2_reg_1356;
assign zext_ln4226_1_fu_852_p1 = tmp_259_fu_844_p3;
assign zext_ln4226_2_fu_898_p1 = lshr_ln20_fu_888_p4;
assign zext_ln4226_3_fu_1218_p1 = v3364_mid2_reg_1356;
assign zext_ln4226_4_fu_1227_p1 = add_ln4226_1_fu_1221_p2;
assign zext_ln4226_fu_840_p1 = lshr_ln_fu_826_p4;
assign zext_ln4227_1_fu_1307_p1 = add_ln4227_2_reg_1499;
assign zext_ln4227_fu_1133_p1 = tmp_267_fu_1117_p3;
assign zext_ln4229_1_fu_1011_p1 = tmp_261_fu_1004_p3;
assign zext_ln4229_2_fu_1208_p1 = tmp_271_fu_1192_p3;
assign zext_ln4229_3_fu_1303_p1 = add_ln4229_1_reg_1494;
assign zext_ln4229_fu_1000_p1 = tmp_260_fu_993_p3;
assign zext_ln4255_1_fu_1097_p1 = tmp_265_fu_1081_p3;
assign zext_ln4255_2_fu_1293_p1 = add_ln4255_1_reg_1489;
assign zext_ln4255_fu_1067_p1 = empty_274_fu_1062_p2;
assign zext_ln4257_1_fu_1039_p1 = tmp_264_fu_1032_p3;
assign zext_ln4257_2_fu_1143_p1 = lshr_ln21_reg_1385;
assign zext_ln4257_3_fu_1172_p1 = tmp_269_fu_1156_p3;
assign zext_ln4257_4_fu_1255_p1 = add_ln4227_fu_1250_p2;
assign zext_ln4257_5_fu_1283_p1 = add_ln4257_1_reg_1484;
assign zext_ln4257_fu_1028_p1 = tmp_263_fu_1021_p3;
assign zext_ln5904_cast_cast_cast_cast_fu_712_p3 = ((empty_fu_708_p1[0:0] == 1'b1) ? 3'd3 : 3'd0);
always @ (posedge ap_clk) begin
    p_udiv54_cast_cast_reg_1346[1] <= 1'b0;
    p_udiv54_cast_cast_reg_1346[3] <= 1'b0;
    zext_ln5904_cast_cast_cast_cast_reg_1351[2] <= 1'b0;
end
endmodule 
