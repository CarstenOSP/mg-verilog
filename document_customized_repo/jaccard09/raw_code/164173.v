module forward_dataflow_in_loop_VITIS_LOOP_18872_1_Loop_VITIS_LOOP_18720_1_proc18361 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v14571_address0,v14571_ce0,v14571_we0,v14571_d0,v14571_1_address0,v14571_1_ce0,v14571_1_we0,v14571_1_d0,v14571_2_address0,v14571_2_ce0,v14571_2_we0,v14571_2_d0,v14571_3_address0,v14571_3_ce0,v14571_3_we0,v14571_3_d0,v14571_4_address0,v14571_4_ce0,v14571_4_we0,v14571_4_d0,v14571_5_address0,v14571_5_ce0,v14571_5_we0,v14571_5_d0,v14571_6_address0,v14571_6_ce0,v14571_6_we0,v14571_6_d0,v14571_7_address0,v14571_7_ce0,v14571_7_we0,v14571_7_d0,v14571_8_address0,v14571_8_ce0,v14571_8_we0,v14571_8_d0,v14571_9_address0,v14571_9_ce0,v14571_9_we0,v14571_9_d0,v14571_10_address0,v14571_10_ce0,v14571_10_we0,v14571_10_d0,v14571_11_address0,v14571_11_ce0,v14571_11_we0,v14571_11_d0,v14571_12_address0,v14571_12_ce0,v14571_12_we0,v14571_12_d0,v14571_13_address0,v14571_13_ce0,v14571_13_we0,v14571_13_d0,v14571_14_address0,v14571_14_ce0,v14571_14_we0,v14571_14_d0,v14571_15_address0,v14571_15_ce0,v14571_15_we0,v14571_15_d0,v14566,v15441_0_0_0_address0,v15441_0_0_0_ce0,v15441_0_0_0_q0,v15441_0_0_1_address0,v15441_0_0_1_ce0,v15441_0_0_1_q0,v15441_0_0_2_address0,v15441_0_0_2_ce0,v15441_0_0_2_q0,v15441_0_0_3_address0,v15441_0_0_3_ce0,v15441_0_0_3_q0,v15441_0_1_0_address0,v15441_0_1_0_ce0,v15441_0_1_0_q0,v15441_0_1_1_address0,v15441_0_1_1_ce0,v15441_0_1_1_q0,v15441_0_1_2_address0,v15441_0_1_2_ce0,v15441_0_1_2_q0,v15441_0_1_3_address0,v15441_0_1_3_ce0,v15441_0_1_3_q0,v15441_1_0_0_address0,v15441_1_0_0_ce0,v15441_1_0_0_q0,v15441_1_0_1_address0,v15441_1_0_1_ce0,v15441_1_0_1_q0,v15441_1_0_2_address0,v15441_1_0_2_ce0,v15441_1_0_2_q0,v15441_1_0_3_address0,v15441_1_0_3_ce0,v15441_1_0_3_q0,v15441_1_1_0_address0,v15441_1_1_0_ce0,v15441_1_1_0_q0,v15441_1_1_1_address0,v15441_1_1_1_ce0,v15441_1_1_1_q0,v15441_1_1_2_address0,v15441_1_1_2_ce0,v15441_1_1_2_q0,v15441_1_1_3_address0,v15441_1_1_3_ce0,v15441_1_1_3_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [10:0] v14571_address0;
output   v14571_ce0;
output   v14571_we0;
output  [7:0] v14571_d0;
output  [10:0] v14571_1_address0;
output   v14571_1_ce0;
output   v14571_1_we0;
output  [7:0] v14571_1_d0;
output  [10:0] v14571_2_address0;
output   v14571_2_ce0;
output   v14571_2_we0;
output  [7:0] v14571_2_d0;
output  [10:0] v14571_3_address0;
output   v14571_3_ce0;
output   v14571_3_we0;
output  [7:0] v14571_3_d0;
output  [10:0] v14571_4_address0;
output   v14571_4_ce0;
output   v14571_4_we0;
output  [7:0] v14571_4_d0;
output  [10:0] v14571_5_address0;
output   v14571_5_ce0;
output   v14571_5_we0;
output  [7:0] v14571_5_d0;
output  [10:0] v14571_6_address0;
output   v14571_6_ce0;
output   v14571_6_we0;
output  [7:0] v14571_6_d0;
output  [10:0] v14571_7_address0;
output   v14571_7_ce0;
output   v14571_7_we0;
output  [7:0] v14571_7_d0;
output  [10:0] v14571_8_address0;
output   v14571_8_ce0;
output   v14571_8_we0;
output  [7:0] v14571_8_d0;
output  [10:0] v14571_9_address0;
output   v14571_9_ce0;
output   v14571_9_we0;
output  [7:0] v14571_9_d0;
output  [10:0] v14571_10_address0;
output   v14571_10_ce0;
output   v14571_10_we0;
output  [7:0] v14571_10_d0;
output  [10:0] v14571_11_address0;
output   v14571_11_ce0;
output   v14571_11_we0;
output  [7:0] v14571_11_d0;
output  [10:0] v14571_12_address0;
output   v14571_12_ce0;
output   v14571_12_we0;
output  [7:0] v14571_12_d0;
output  [10:0] v14571_13_address0;
output   v14571_13_ce0;
output   v14571_13_we0;
output  [7:0] v14571_13_d0;
output  [10:0] v14571_14_address0;
output   v14571_14_ce0;
output   v14571_14_we0;
output  [7:0] v14571_14_d0;
output  [10:0] v14571_15_address0;
output   v14571_15_ce0;
output   v14571_15_we0;
output  [7:0] v14571_15_d0;
input  [3:0] v14566;
output  [14:0] v15441_0_0_0_address0;
output   v15441_0_0_0_ce0;
input  [7:0] v15441_0_0_0_q0;
output  [14:0] v15441_0_0_1_address0;
output   v15441_0_0_1_ce0;
input  [7:0] v15441_0_0_1_q0;
output  [14:0] v15441_0_0_2_address0;
output   v15441_0_0_2_ce0;
input  [7:0] v15441_0_0_2_q0;
output  [14:0] v15441_0_0_3_address0;
output   v15441_0_0_3_ce0;
input  [7:0] v15441_0_0_3_q0;
output  [14:0] v15441_0_1_0_address0;
output   v15441_0_1_0_ce0;
input  [7:0] v15441_0_1_0_q0;
output  [14:0] v15441_0_1_1_address0;
output   v15441_0_1_1_ce0;
input  [7:0] v15441_0_1_1_q0;
output  [14:0] v15441_0_1_2_address0;
output   v15441_0_1_2_ce0;
input  [7:0] v15441_0_1_2_q0;
output  [14:0] v15441_0_1_3_address0;
output   v15441_0_1_3_ce0;
input  [7:0] v15441_0_1_3_q0;
output  [14:0] v15441_1_0_0_address0;
output   v15441_1_0_0_ce0;
input  [7:0] v15441_1_0_0_q0;
output  [14:0] v15441_1_0_1_address0;
output   v15441_1_0_1_ce0;
input  [7:0] v15441_1_0_1_q0;
output  [14:0] v15441_1_0_2_address0;
output   v15441_1_0_2_ce0;
input  [7:0] v15441_1_0_2_q0;
output  [14:0] v15441_1_0_3_address0;
output   v15441_1_0_3_ce0;
input  [7:0] v15441_1_0_3_q0;
output  [14:0] v15441_1_1_0_address0;
output   v15441_1_1_0_ce0;
input  [7:0] v15441_1_1_0_q0;
output  [14:0] v15441_1_1_1_address0;
output   v15441_1_1_1_ce0;
input  [7:0] v15441_1_1_1_q0;
output  [14:0] v15441_1_1_2_address0;
output   v15441_1_1_2_ce0;
input  [7:0] v15441_1_1_2_q0;
output  [14:0] v15441_1_1_3_address0;
output   v15441_1_1_3_ce0;
input  [7:0] v15441_1_1_3_q0;
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
wire   [0:0] icmp_ln18720_fu_774_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [6:0] mul_i179_i_i_fu_680_p3;
reg   [6:0] mul_i179_i_i_reg_1425;
wire   [5:0] trunc_ln_i_fu_688_p3;
reg   [5:0] trunc_ln_i_reg_1430;
wire   [5:0] zext_ln18807_cast_cast_i_cast_cast_fu_704_p3;
reg   [5:0] zext_ln18807_cast_cast_i_cast_cast_reg_1435;
wire   [4:0] p_udiv24_i_cast_cast_i_cast_cast_fu_712_p3;
reg   [4:0] p_udiv24_i_cast_cast_i_cast_cast_reg_1440;
wire   [5:0] select_ln18807_i_cast_cast_fu_724_p3;
reg   [5:0] select_ln18807_i_cast_cast_reg_1445;
wire   [3:0] trunc_ln18807_cast_cast_i_cast_cast_fu_732_p3;
reg   [3:0] trunc_ln18807_cast_cast_i_cast_cast_reg_1450;
reg   [3:0] trunc_ln18807_cast_cast_i_cast_cast_reg_1450_pp0_iter1_reg;
reg   [0:0] icmp_ln18720_reg_1455;
reg   [0:0] icmp_ln18720_reg_1455_pp0_iter1_reg;
wire   [4:0] lshr_ln_i_fu_863_p4;
reg   [4:0] lshr_ln_i_reg_1459;
wire   [3:0] lshr_ln62_i_fu_953_p4;
reg   [3:0] lshr_ln62_i_reg_1465;
wire   [10:0] add_ln18725_fu_981_p2;
reg   [10:0] add_ln18725_reg_1470;
wire   [10:0] add_ln18741_fu_987_p2;
reg   [10:0] add_ln18741_reg_1476;
wire   [10:0] add_ln18733_fu_1007_p2;
reg   [10:0] add_ln18733_reg_1482;
wire   [10:0] add_ln18749_fu_1013_p2;
reg   [10:0] add_ln18749_reg_1488;
reg   [2:0] lshr_ln63_i_reg_1494;
reg   [3:0] lshr_ln64_i_reg_1500;
wire   [0:0] icmp_ln18722_fu_1068_p2;
reg   [0:0] icmp_ln18722_reg_1505;
wire   [0:0] icmp_ln18721_fu_1074_p2;
reg   [0:0] icmp_ln18721_reg_1510;
wire   [10:0] add_ln18755_1_fu_1254_p2;
reg   [10:0] add_ln18755_1_reg_1515;
reg   [0:0] ap_phi_mux_icmp_ln18721195_i_phi_fu_648_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln18722194_i_phi_fu_659_p4;
wire   [63:0] zext_ln18725_4_fu_1278_p1;
wire   [63:0] zext_ln18733_2_fu_1289_p1;
wire   [63:0] zext_ln18741_2_fu_1300_p1;
wire   [63:0] zext_ln18749_1_fu_1311_p1;
wire   [63:0] zext_ln18727_1_fu_1325_p1;
wire   [63:0] zext_ln18735_fu_1338_p1;
wire   [63:0] zext_ln18743_fu_1351_p1;
wire   [63:0] zext_ln18751_fu_1364_p1;
wire   [63:0] zext_ln18755_4_fu_1371_p1;
reg   [10:0] indvar_flatten12189_i_fu_186;
wire   [10:0] add_ln18720_1_fu_768_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten12189_i_load;
reg   [5:0] v14507190_i_fu_190;
wire   [5:0] select_ln18720_1_fu_823_p3;
reg   [6:0] indvar_flatten191_i_fu_194;
wire   [6:0] select_ln18721_1_fu_1060_p3;
reg   [4:0] v14508192_i_fu_198;
wire   [4:0] select_ln18721_fu_851_p3;
reg   [4:0] v14509193_i_fu_202;
wire   [4:0] add_ln18722_fu_1048_p2;
reg    v15441_0_0_0_ce0_local;
reg    v15441_0_0_1_ce0_local;
reg    v15441_0_0_2_ce0_local;
reg    v15441_0_0_3_ce0_local;
reg    v15441_0_1_0_ce0_local;
reg    v15441_0_1_1_ce0_local;
reg    v15441_0_1_2_ce0_local;
reg    v15441_0_1_3_ce0_local;
reg    v15441_1_0_0_ce0_local;
reg    v15441_1_0_1_ce0_local;
reg    v15441_1_0_2_ce0_local;
reg    v15441_1_0_3_ce0_local;
reg    v15441_1_1_0_ce0_local;
reg    v15441_1_1_1_ce0_local;
reg    v15441_1_1_2_ce0_local;
reg    v15441_1_1_3_ce0_local;
reg    v14571_15_we0_local;
reg    v14571_15_ce0_local;
reg    v14571_14_we0_local;
reg    v14571_14_ce0_local;
reg    v14571_13_we0_local;
reg    v14571_13_ce0_local;
reg    v14571_12_we0_local;
reg    v14571_12_ce0_local;
reg    v14571_11_we0_local;
reg    v14571_11_ce0_local;
reg    v14571_10_we0_local;
reg    v14571_10_ce0_local;
reg    v14571_9_we0_local;
reg    v14571_9_ce0_local;
reg    v14571_8_we0_local;
reg    v14571_8_ce0_local;
reg    v14571_7_we0_local;
reg    v14571_7_ce0_local;
reg    v14571_6_we0_local;
reg    v14571_6_ce0_local;
reg    v14571_5_we0_local;
reg    v14571_5_ce0_local;
reg    v14571_4_we0_local;
reg    v14571_4_ce0_local;
reg    v14571_3_we0_local;
reg    v14571_3_ce0_local;
reg    v14571_2_we0_local;
reg    v14571_2_ce0_local;
reg    v14571_1_we0_local;
reg    v14571_1_ce0_local;
reg    v14571_we0_local;
reg    v14571_ce0_local;
wire   [1:0] tmp_i_fu_670_p4;
wire   [5:0] v14566_cast2_fu_666_p1;
wire   [0:0] tmp_fu_696_p3;
wire   [0:0] empty_fu_720_p1;
wire   [0:0] xor_ln18720_fu_811_p2;
wire   [5:0] add_ln18720_fu_797_p2;
wire   [4:0] select_ln18720_fu_803_p3;
wire   [0:0] and_ln18720_fu_817_p2;
wire   [0:0] empty_248_fu_837_p2;
wire   [4:0] add_ln18721_fu_831_p2;
wire   [6:0] zext_ln18720_fu_859_p1;
wire   [5:0] zext_ln18720_1_fu_873_p1;
wire   [5:0] empty_250_fu_882_p2;
wire   [7:0] tmp_181_fu_895_p3;
wire   [10:0] p_shl50_fu_887_p3;
wire   [10:0] zext_ln18725_fu_903_p1;
wire   [6:0] empty_249_fu_877_p2;
wire   [5:0] tmp_182_fu_913_p4;
wire   [7:0] tmp_183_fu_931_p3;
wire   [10:0] p_shl48_fu_923_p3;
wire   [10:0] zext_ln18741_fu_939_p1;
wire   [5:0] zext_ln18721_fu_949_p1;
wire   [4:0] zext_ln18721_1_fu_963_p1;
wire   [4:0] empty_252_fu_972_p2;
wire   [10:0] sub_ln18725_fu_907_p2;
wire   [10:0] zext_ln18725_1_fu_977_p1;
wire   [10:0] sub_ln18741_fu_943_p2;
wire   [5:0] empty_251_fu_967_p2;
wire   [4:0] tmp_103_i_fu_993_p4;
wire   [10:0] zext_ln18733_fu_1003_p1;
wire   [4:0] v14509_mid2_i_fu_843_p3;
wire   [5:0] zext_ln18722_fu_1019_p1;
wire   [5:0] add_ln18724_fu_1033_p2;
wire   [6:0] add_ln18721_1_fu_1054_p2;
wire   [5:0] tmp_180_fu_1107_p3;
wire   [8:0] p_shl52_fu_1100_p3;
wire   [8:0] zext_ln18755_fu_1114_p1;
wire   [8:0] sub_ln18755_fu_1118_p2;
wire   [8:0] zext_ln18755_1_fu_1124_p1;
wire   [8:0] add_ln18755_fu_1127_p2;
wire   [7:0] trunc_ln18755_fu_1133_p1;
wire   [10:0] tmp_184_fu_1137_p3;
wire   [10:0] zext_ln18755_2_fu_1145_p1;
wire   [11:0] tmp_185_fu_1162_p3;
wire   [14:0] p_shl45_fu_1155_p3;
wire   [14:0] zext_ln18725_2_fu_1169_p1;
wire   [11:0] tmp_186_fu_1186_p3;
wire   [14:0] p_shl43_fu_1179_p3;
wire   [14:0] zext_ln18741_1_fu_1193_p1;
wire   [11:0] tmp_187_fu_1210_p3;
wire   [14:0] p_shl41_fu_1203_p3;
wire   [14:0] zext_ln18733_1_fu_1217_p1;
wire   [11:0] tmp_188_fu_1234_p3;
wire   [14:0] p_shl_fu_1227_p3;
wire   [14:0] zext_ln18749_fu_1241_p1;
wire   [10:0] sub_ln18755_1_fu_1149_p2;
wire   [10:0] zext_ln18755_3_fu_1251_p1;
wire   [3:0] zext_ln18722_1_fu_1260_p1;
wire   [3:0] add_ln18725_1_fu_1263_p2;
wire   [14:0] sub_ln18725_1_fu_1173_p2;
wire   [14:0] zext_ln18725_3_fu_1268_p1;
wire   [14:0] add_ln18725_2_fu_1272_p2;
wire   [14:0] sub_ln18733_fu_1221_p2;
wire   [14:0] add_ln18733_1_fu_1283_p2;
wire   [14:0] sub_ln18741_1_fu_1197_p2;
wire   [14:0] add_ln18741_1_fu_1294_p2;
wire   [14:0] sub_ln18749_fu_1245_p2;
wire   [14:0] add_ln18749_1_fu_1305_p2;
wire   [14:0] zext_ln18727_fu_1316_p1;
wire   [14:0] add_ln18727_fu_1319_p2;
wire   [14:0] add_ln18735_fu_1332_p2;
wire   [14:0] add_ln18743_fu_1345_p2;
wire   [14:0] add_ln18751_fu_1358_p2;
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
reg    ap_condition_404;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12189_i_fu_186 = 11'd0;
#0 v14507190_i_fu_190 = 6'd0;
#0 indvar_flatten191_i_fu_194 = 7'd0;
#0 v14508192_i_fu_198 = 5'd0;
#0 v14509193_i_fu_202 = 5'd0;
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
    if ((1'b1 == ap_condition_404)) begin
        indvar_flatten12189_i_fu_186 <= add_ln18720_1_fu_768_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        indvar_flatten191_i_fu_194 <= 7'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten191_i_fu_194 <= select_ln18721_1_fu_1060_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v14507190_i_fu_190 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v14507190_i_fu_190 <= select_ln18720_1_fu_823_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v14508192_i_fu_198 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v14508192_i_fu_198 <= select_ln18721_fu_851_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v14509193_i_fu_202 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v14509193_i_fu_202 <= add_ln18722_fu_1048_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln18725_reg_1470 <= add_ln18725_fu_981_p2;
        add_ln18733_reg_1482 <= add_ln18733_fu_1007_p2;
        add_ln18741_reg_1476 <= add_ln18741_fu_987_p2;
        add_ln18749_reg_1488 <= add_ln18749_fu_1013_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln18720_reg_1455 <= icmp_ln18720_fu_774_p2;
        icmp_ln18720_reg_1455_pp0_iter1_reg <= icmp_ln18720_reg_1455;
        lshr_ln62_i_reg_1465 <= {{select_ln18721_fu_851_p3[4:1]}};
        lshr_ln63_i_reg_1494 <= {{v14509_mid2_i_fu_843_p3[4:2]}};
        lshr_ln64_i_reg_1500 <= {{add_ln18724_fu_1033_p2[5:2]}};
        lshr_ln_i_reg_1459 <= {{select_ln18720_1_fu_823_p3[5:1]}};
        mul_i179_i_i_reg_1425[6 : 5] <= mul_i179_i_i_fu_680_p3[6 : 5];
        p_udiv24_i_cast_cast_i_cast_cast_reg_1440[3 : 1] <= p_udiv24_i_cast_cast_i_cast_cast_fu_712_p3[3 : 1];
        select_ln18807_i_cast_cast_reg_1445[4 : 2] <= select_ln18807_i_cast_cast_fu_724_p3[4 : 2];
        trunc_ln18807_cast_cast_i_cast_cast_reg_1450[2 : 0] <= trunc_ln18807_cast_cast_i_cast_cast_fu_732_p3[2 : 0];
        trunc_ln18807_cast_cast_i_cast_cast_reg_1450_pp0_iter1_reg[2 : 0] <= trunc_ln18807_cast_cast_i_cast_cast_reg_1450[2 : 0];
        trunc_ln_i_reg_1430[5 : 4] <= trunc_ln_i_fu_688_p3[5 : 4];
        zext_ln18807_cast_cast_i_cast_cast_reg_1435[4 : 2] <= zext_ln18807_cast_cast_i_cast_cast_fu_704_p3[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln18755_1_reg_1515 <= add_ln18755_1_fu_1254_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln18721_reg_1510 <= icmp_ln18721_fu_1074_p2;
        icmp_ln18722_reg_1505 <= icmp_ln18722_fu_1068_p2;
    end
end
always @ (*) begin
    if (((icmp_ln18720_fu_774_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln18720_reg_1455_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln18721195_i_phi_fu_648_p4 = icmp_ln18721_reg_1510;
    end else if (((ap_loop_init_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln18721195_i_phi_fu_648_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln18721195_i_phi_fu_648_p4 = icmp_ln18721_reg_1510;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln18720_reg_1455_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln18722194_i_phi_fu_659_p4 = icmp_ln18722_reg_1505;
    end else if (((ap_loop_init_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln18722194_i_phi_fu_659_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln18722194_i_phi_fu_659_p4 = icmp_ln18722_reg_1505;
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
        ap_sig_allocacmp_indvar_flatten12189_i_load = indvar_flatten12189_i_fu_186;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_10_ce0_local = 1'b1;
    end else begin
        v14571_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_10_we0_local = 1'b1;
    end else begin
        v14571_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_11_ce0_local = 1'b1;
    end else begin
        v14571_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_11_we0_local = 1'b1;
    end else begin
        v14571_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_12_ce0_local = 1'b1;
    end else begin
        v14571_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_12_we0_local = 1'b1;
    end else begin
        v14571_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_13_ce0_local = 1'b1;
    end else begin
        v14571_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_13_we0_local = 1'b1;
    end else begin
        v14571_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_14_ce0_local = 1'b1;
    end else begin
        v14571_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_14_we0_local = 1'b1;
    end else begin
        v14571_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_15_ce0_local = 1'b1;
    end else begin
        v14571_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_15_we0_local = 1'b1;
    end else begin
        v14571_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_1_ce0_local = 1'b1;
    end else begin
        v14571_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_1_we0_local = 1'b1;
    end else begin
        v14571_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_2_ce0_local = 1'b1;
    end else begin
        v14571_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_2_we0_local = 1'b1;
    end else begin
        v14571_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_3_ce0_local = 1'b1;
    end else begin
        v14571_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_3_we0_local = 1'b1;
    end else begin
        v14571_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_4_ce0_local = 1'b1;
    end else begin
        v14571_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_4_we0_local = 1'b1;
    end else begin
        v14571_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_5_ce0_local = 1'b1;
    end else begin
        v14571_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_5_we0_local = 1'b1;
    end else begin
        v14571_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_6_ce0_local = 1'b1;
    end else begin
        v14571_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_6_we0_local = 1'b1;
    end else begin
        v14571_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_7_ce0_local = 1'b1;
    end else begin
        v14571_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_7_we0_local = 1'b1;
    end else begin
        v14571_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_8_ce0_local = 1'b1;
    end else begin
        v14571_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_8_we0_local = 1'b1;
    end else begin
        v14571_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_9_ce0_local = 1'b1;
    end else begin
        v14571_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_9_we0_local = 1'b1;
    end else begin
        v14571_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_ce0_local = 1'b1;
    end else begin
        v14571_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v14571_we0_local = 1'b1;
    end else begin
        v14571_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15441_0_0_0_ce0_local = 1'b1;
    end else begin
        v15441_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15441_0_0_1_ce0_local = 1'b1;
    end else begin
        v15441_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15441_0_0_2_ce0_local = 1'b1;
    end else begin
        v15441_0_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15441_0_0_3_ce0_local = 1'b1;
    end else begin
        v15441_0_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15441_0_1_0_ce0_local = 1'b1;
    end else begin
        v15441_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15441_0_1_1_ce0_local = 1'b1;
    end else begin
        v15441_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15441_0_1_2_ce0_local = 1'b1;
    end else begin
        v15441_0_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15441_0_1_3_ce0_local = 1'b1;
    end else begin
        v15441_0_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15441_1_0_0_ce0_local = 1'b1;
    end else begin
        v15441_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15441_1_0_1_ce0_local = 1'b1;
    end else begin
        v15441_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15441_1_0_2_ce0_local = 1'b1;
    end else begin
        v15441_1_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15441_1_0_3_ce0_local = 1'b1;
    end else begin
        v15441_1_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15441_1_1_0_ce0_local = 1'b1;
    end else begin
        v15441_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15441_1_1_1_ce0_local = 1'b1;
    end else begin
        v15441_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15441_1_1_2_ce0_local = 1'b1;
    end else begin
        v15441_1_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15441_1_1_3_ce0_local = 1'b1;
    end else begin
        v15441_1_1_3_ce0_local = 1'b0;
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
assign add_ln18720_1_fu_768_p2 = (ap_sig_allocacmp_indvar_flatten12189_i_load + 11'd1);
assign add_ln18720_fu_797_p2 = (v14507190_i_fu_190 + 6'd2);
assign add_ln18721_1_fu_1054_p2 = (indvar_flatten191_i_fu_194 + 7'd1);
assign add_ln18721_fu_831_p2 = (select_ln18720_fu_803_p3 + 5'd2);
assign add_ln18722_fu_1048_p2 = (v14509_mid2_i_fu_843_p3 + 5'd4);
assign add_ln18724_fu_1033_p2 = (select_ln18807_i_cast_cast_reg_1445 + zext_ln18722_fu_1019_p1);
assign add_ln18725_1_fu_1263_p2 = (zext_ln18722_1_fu_1260_p1 + trunc_ln18807_cast_cast_i_cast_cast_reg_1450_pp0_iter1_reg);
assign add_ln18725_2_fu_1272_p2 = (sub_ln18725_1_fu_1173_p2 + zext_ln18725_3_fu_1268_p1);
assign add_ln18725_fu_981_p2 = (sub_ln18725_fu_907_p2 + zext_ln18725_1_fu_977_p1);
assign add_ln18727_fu_1319_p2 = (sub_ln18725_1_fu_1173_p2 + zext_ln18727_fu_1316_p1);
assign add_ln18733_1_fu_1283_p2 = (sub_ln18733_fu_1221_p2 + zext_ln18725_3_fu_1268_p1);
assign add_ln18733_fu_1007_p2 = (sub_ln18725_fu_907_p2 + zext_ln18733_fu_1003_p1);
assign add_ln18735_fu_1332_p2 = (sub_ln18733_fu_1221_p2 + zext_ln18727_fu_1316_p1);
assign add_ln18741_1_fu_1294_p2 = (sub_ln18741_1_fu_1197_p2 + zext_ln18725_3_fu_1268_p1);
assign add_ln18741_fu_987_p2 = (sub_ln18741_fu_943_p2 + zext_ln18725_1_fu_977_p1);
assign add_ln18743_fu_1345_p2 = (sub_ln18741_1_fu_1197_p2 + zext_ln18727_fu_1316_p1);
assign add_ln18749_1_fu_1305_p2 = (sub_ln18749_fu_1245_p2 + zext_ln18725_3_fu_1268_p1);
assign add_ln18749_fu_1013_p2 = (sub_ln18741_fu_943_p2 + zext_ln18733_fu_1003_p1);
assign add_ln18751_fu_1358_p2 = (sub_ln18749_fu_1245_p2 + zext_ln18727_fu_1316_p1);
assign add_ln18755_1_fu_1254_p2 = (sub_ln18755_1_fu_1149_p2 + zext_ln18755_3_fu_1251_p1);
assign add_ln18755_fu_1127_p2 = (sub_ln18755_fu_1118_p2 + zext_ln18755_1_fu_1124_p1);
assign and_ln18720_fu_817_p2 = (xor_ln18720_fu_811_p2 & ap_phi_mux_icmp_ln18722194_i_phi_fu_659_p4);
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
    ap_condition_404 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_248_fu_837_p2 = (ap_phi_mux_icmp_ln18721195_i_phi_fu_648_p4 | and_ln18720_fu_817_p2);
assign empty_249_fu_877_p2 = (mul_i179_i_i_reg_1425 + zext_ln18720_fu_859_p1);
assign empty_250_fu_882_p2 = (zext_ln18720_1_fu_873_p1 + trunc_ln_i_reg_1430);
assign empty_251_fu_967_p2 = (zext_ln18807_cast_cast_i_cast_cast_reg_1435 + zext_ln18721_fu_949_p1);
assign empty_252_fu_972_p2 = (zext_ln18721_1_fu_963_p1 + p_udiv24_i_cast_cast_i_cast_cast_reg_1440);
assign empty_fu_720_p1 = v14566[0:0];
assign icmp_ln18720_fu_774_p2 = ((ap_sig_allocacmp_indvar_flatten12189_i_load == 11'd1567) ? 1'b1 : 1'b0);
assign icmp_ln18721_fu_1074_p2 = ((select_ln18721_1_fu_1060_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln18722_fu_1068_p2 = ((add_ln18722_fu_1048_p2 == 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln62_i_fu_953_p4 = {{select_ln18721_fu_851_p3[4:1]}};
assign lshr_ln_i_fu_863_p4 = {{select_ln18720_1_fu_823_p3[5:1]}};
assign mul_i179_i_i_fu_680_p3 = {{tmp_i_fu_670_p4}, {5'd0}};
assign p_shl41_fu_1203_p3 = {{add_ln18733_reg_1482}, {4'd0}};
assign p_shl43_fu_1179_p3 = {{add_ln18741_reg_1476}, {4'd0}};
assign p_shl45_fu_1155_p3 = {{add_ln18725_reg_1470}, {4'd0}};
assign p_shl48_fu_923_p3 = {{tmp_182_fu_913_p4}, {5'd0}};
assign p_shl50_fu_887_p3 = {{empty_250_fu_882_p2}, {5'd0}};
assign p_shl52_fu_1100_p3 = {{lshr_ln_i_reg_1459}, {4'd0}};
assign p_shl_fu_1227_p3 = {{add_ln18749_reg_1488}, {4'd0}};
assign p_udiv24_i_cast_cast_i_cast_cast_fu_712_p3 = ((tmp_fu_696_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign select_ln18720_1_fu_823_p3 = ((ap_phi_mux_icmp_ln18721195_i_phi_fu_648_p4[0:0] == 1'b1) ? add_ln18720_fu_797_p2 : v14507190_i_fu_190);
assign select_ln18720_fu_803_p3 = ((ap_phi_mux_icmp_ln18721195_i_phi_fu_648_p4[0:0] == 1'b1) ? 5'd0 : v14508192_i_fu_198);
assign select_ln18721_1_fu_1060_p3 = ((ap_phi_mux_icmp_ln18721195_i_phi_fu_648_p4[0:0] == 1'b1) ? 7'd1 : add_ln18721_1_fu_1054_p2);
assign select_ln18721_fu_851_p3 = ((and_ln18720_fu_817_p2[0:0] == 1'b1) ? add_ln18721_fu_831_p2 : select_ln18720_fu_803_p3);
assign select_ln18807_i_cast_cast_fu_724_p3 = ((empty_fu_720_p1[0:0] == 1'b1) ? 6'd28 : 6'd0);
assign sub_ln18725_1_fu_1173_p2 = (p_shl45_fu_1155_p3 - zext_ln18725_2_fu_1169_p1);
assign sub_ln18725_fu_907_p2 = (p_shl50_fu_887_p3 - zext_ln18725_fu_903_p1);
assign sub_ln18733_fu_1221_p2 = (p_shl41_fu_1203_p3 - zext_ln18733_1_fu_1217_p1);
assign sub_ln18741_1_fu_1197_p2 = (p_shl43_fu_1179_p3 - zext_ln18741_1_fu_1193_p1);
assign sub_ln18741_fu_943_p2 = (p_shl48_fu_923_p3 - zext_ln18741_fu_939_p1);
assign sub_ln18749_fu_1245_p2 = (p_shl_fu_1227_p3 - zext_ln18749_fu_1241_p1);
assign sub_ln18755_1_fu_1149_p2 = (tmp_184_fu_1137_p3 - zext_ln18755_2_fu_1145_p1);
assign sub_ln18755_fu_1118_p2 = (p_shl52_fu_1100_p3 - zext_ln18755_fu_1114_p1);
assign tmp_103_i_fu_993_p4 = {{empty_251_fu_967_p2[5:1]}};
assign tmp_180_fu_1107_p3 = {{lshr_ln_i_reg_1459}, {1'd0}};
assign tmp_181_fu_895_p3 = {{empty_250_fu_882_p2}, {2'd0}};
assign tmp_182_fu_913_p4 = {{empty_249_fu_877_p2[6:1]}};
assign tmp_183_fu_931_p3 = {{tmp_182_fu_913_p4}, {2'd0}};
assign tmp_184_fu_1137_p3 = {{trunc_ln18755_fu_1133_p1}, {3'd0}};
assign tmp_185_fu_1162_p3 = {{add_ln18725_reg_1470}, {1'd0}};
assign tmp_186_fu_1186_p3 = {{add_ln18741_reg_1476}, {1'd0}};
assign tmp_187_fu_1210_p3 = {{add_ln18733_reg_1482}, {1'd0}};
assign tmp_188_fu_1234_p3 = {{add_ln18749_reg_1488}, {1'd0}};
assign tmp_fu_696_p3 = v14566_cast2_fu_666_p1[32'd1];
assign tmp_i_fu_670_p4 = {{v14566[3:2]}};
assign trunc_ln18755_fu_1133_p1 = add_ln18755_fu_1127_p2[7:0];
assign trunc_ln18807_cast_cast_i_cast_cast_fu_732_p3 = ((empty_fu_720_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign trunc_ln_i_fu_688_p3 = {{tmp_i_fu_670_p4}, {4'd0}};
assign v14509_mid2_i_fu_843_p3 = ((empty_248_fu_837_p2[0:0] == 1'b1) ? 5'd0 : v14509193_i_fu_202);
assign v14566_cast2_fu_666_p1 = v14566;
assign v14571_10_address0 = zext_ln18755_4_fu_1371_p1;
assign v14571_10_ce0 = v14571_10_ce0_local;
assign v14571_10_d0 = v15441_0_1_1_q0;
assign v14571_10_we0 = v14571_10_we0_local;
assign v14571_11_address0 = zext_ln18755_4_fu_1371_p1;
assign v14571_11_ce0 = v14571_11_ce0_local;
assign v14571_11_d0 = v15441_0_1_0_q0;
assign v14571_11_we0 = v14571_11_we0_local;
assign v14571_12_address0 = zext_ln18755_4_fu_1371_p1;
assign v14571_12_ce0 = v14571_12_ce0_local;
assign v14571_12_d0 = v15441_0_0_3_q0;
assign v14571_12_we0 = v14571_12_we0_local;
assign v14571_13_address0 = zext_ln18755_4_fu_1371_p1;
assign v14571_13_ce0 = v14571_13_ce0_local;
assign v14571_13_d0 = v15441_0_0_2_q0;
assign v14571_13_we0 = v14571_13_we0_local;
assign v14571_14_address0 = zext_ln18755_4_fu_1371_p1;
assign v14571_14_ce0 = v14571_14_ce0_local;
assign v14571_14_d0 = v15441_0_0_1_q0;
assign v14571_14_we0 = v14571_14_we0_local;
assign v14571_15_address0 = zext_ln18755_4_fu_1371_p1;
assign v14571_15_ce0 = v14571_15_ce0_local;
assign v14571_15_d0 = v15441_0_0_0_q0;
assign v14571_15_we0 = v14571_15_we0_local;
assign v14571_1_address0 = zext_ln18755_4_fu_1371_p1;
assign v14571_1_ce0 = v14571_1_ce0_local;
assign v14571_1_d0 = v15441_1_1_2_q0;
assign v14571_1_we0 = v14571_1_we0_local;
assign v14571_2_address0 = zext_ln18755_4_fu_1371_p1;
assign v14571_2_ce0 = v14571_2_ce0_local;
assign v14571_2_d0 = v15441_1_1_1_q0;
assign v14571_2_we0 = v14571_2_we0_local;
assign v14571_3_address0 = zext_ln18755_4_fu_1371_p1;
assign v14571_3_ce0 = v14571_3_ce0_local;
assign v14571_3_d0 = v15441_1_1_0_q0;
assign v14571_3_we0 = v14571_3_we0_local;
assign v14571_4_address0 = zext_ln18755_4_fu_1371_p1;
assign v14571_4_ce0 = v14571_4_ce0_local;
assign v14571_4_d0 = v15441_1_0_3_q0;
assign v14571_4_we0 = v14571_4_we0_local;
assign v14571_5_address0 = zext_ln18755_4_fu_1371_p1;
assign v14571_5_ce0 = v14571_5_ce0_local;
assign v14571_5_d0 = v15441_1_0_2_q0;
assign v14571_5_we0 = v14571_5_we0_local;
assign v14571_6_address0 = zext_ln18755_4_fu_1371_p1;
assign v14571_6_ce0 = v14571_6_ce0_local;
assign v14571_6_d0 = v15441_1_0_1_q0;
assign v14571_6_we0 = v14571_6_we0_local;
assign v14571_7_address0 = zext_ln18755_4_fu_1371_p1;
assign v14571_7_ce0 = v14571_7_ce0_local;
assign v14571_7_d0 = v15441_1_0_0_q0;
assign v14571_7_we0 = v14571_7_we0_local;
assign v14571_8_address0 = zext_ln18755_4_fu_1371_p1;
assign v14571_8_ce0 = v14571_8_ce0_local;
assign v14571_8_d0 = v15441_0_1_3_q0;
assign v14571_8_we0 = v14571_8_we0_local;
assign v14571_9_address0 = zext_ln18755_4_fu_1371_p1;
assign v14571_9_ce0 = v14571_9_ce0_local;
assign v14571_9_d0 = v15441_0_1_2_q0;
assign v14571_9_we0 = v14571_9_we0_local;
assign v14571_address0 = zext_ln18755_4_fu_1371_p1;
assign v14571_ce0 = v14571_ce0_local;
assign v14571_d0 = v15441_1_1_3_q0;
assign v14571_we0 = v14571_we0_local;
assign v15441_0_0_0_address0 = zext_ln18725_4_fu_1278_p1;
assign v15441_0_0_0_ce0 = v15441_0_0_0_ce0_local;
assign v15441_0_0_1_address0 = zext_ln18727_1_fu_1325_p1;
assign v15441_0_0_1_ce0 = v15441_0_0_1_ce0_local;
assign v15441_0_0_2_address0 = zext_ln18727_1_fu_1325_p1;
assign v15441_0_0_2_ce0 = v15441_0_0_2_ce0_local;
assign v15441_0_0_3_address0 = zext_ln18727_1_fu_1325_p1;
assign v15441_0_0_3_ce0 = v15441_0_0_3_ce0_local;
assign v15441_0_1_0_address0 = zext_ln18733_2_fu_1289_p1;
assign v15441_0_1_0_ce0 = v15441_0_1_0_ce0_local;
assign v15441_0_1_1_address0 = zext_ln18735_fu_1338_p1;
assign v15441_0_1_1_ce0 = v15441_0_1_1_ce0_local;
assign v15441_0_1_2_address0 = zext_ln18735_fu_1338_p1;
assign v15441_0_1_2_ce0 = v15441_0_1_2_ce0_local;
assign v15441_0_1_3_address0 = zext_ln18735_fu_1338_p1;
assign v15441_0_1_3_ce0 = v15441_0_1_3_ce0_local;
assign v15441_1_0_0_address0 = zext_ln18741_2_fu_1300_p1;
assign v15441_1_0_0_ce0 = v15441_1_0_0_ce0_local;
assign v15441_1_0_1_address0 = zext_ln18743_fu_1351_p1;
assign v15441_1_0_1_ce0 = v15441_1_0_1_ce0_local;
assign v15441_1_0_2_address0 = zext_ln18743_fu_1351_p1;
assign v15441_1_0_2_ce0 = v15441_1_0_2_ce0_local;
assign v15441_1_0_3_address0 = zext_ln18743_fu_1351_p1;
assign v15441_1_0_3_ce0 = v15441_1_0_3_ce0_local;
assign v15441_1_1_0_address0 = zext_ln18749_1_fu_1311_p1;
assign v15441_1_1_0_ce0 = v15441_1_1_0_ce0_local;
assign v15441_1_1_1_address0 = zext_ln18751_fu_1364_p1;
assign v15441_1_1_1_ce0 = v15441_1_1_1_ce0_local;
assign v15441_1_1_2_address0 = zext_ln18751_fu_1364_p1;
assign v15441_1_1_2_ce0 = v15441_1_1_2_ce0_local;
assign v15441_1_1_3_address0 = zext_ln18751_fu_1364_p1;
assign v15441_1_1_3_ce0 = v15441_1_1_3_ce0_local;
assign xor_ln18720_fu_811_p2 = (ap_phi_mux_icmp_ln18721195_i_phi_fu_648_p4 ^ 1'd1);
assign zext_ln18720_1_fu_873_p1 = lshr_ln_i_fu_863_p4;
assign zext_ln18720_fu_859_p1 = select_ln18720_1_fu_823_p3;
assign zext_ln18721_1_fu_963_p1 = lshr_ln62_i_fu_953_p4;
assign zext_ln18721_fu_949_p1 = select_ln18721_fu_851_p3;
assign zext_ln18722_1_fu_1260_p1 = lshr_ln63_i_reg_1494;
assign zext_ln18722_fu_1019_p1 = v14509_mid2_i_fu_843_p3;
assign zext_ln18725_1_fu_977_p1 = empty_252_fu_972_p2;
assign zext_ln18725_2_fu_1169_p1 = tmp_185_fu_1162_p3;
assign zext_ln18725_3_fu_1268_p1 = add_ln18725_1_fu_1263_p2;
assign zext_ln18725_4_fu_1278_p1 = add_ln18725_2_fu_1272_p2;
assign zext_ln18725_fu_903_p1 = tmp_181_fu_895_p3;
assign zext_ln18727_1_fu_1325_p1 = add_ln18727_fu_1319_p2;
assign zext_ln18727_fu_1316_p1 = lshr_ln64_i_reg_1500;
assign zext_ln18733_1_fu_1217_p1 = tmp_187_fu_1210_p3;
assign zext_ln18733_2_fu_1289_p1 = add_ln18733_1_fu_1283_p2;
assign zext_ln18733_fu_1003_p1 = tmp_103_i_fu_993_p4;
assign zext_ln18735_fu_1338_p1 = add_ln18735_fu_1332_p2;
assign zext_ln18741_1_fu_1193_p1 = tmp_186_fu_1186_p3;
assign zext_ln18741_2_fu_1300_p1 = add_ln18741_1_fu_1294_p2;
assign zext_ln18741_fu_939_p1 = tmp_183_fu_931_p3;
assign zext_ln18743_fu_1351_p1 = add_ln18743_fu_1345_p2;
assign zext_ln18749_1_fu_1311_p1 = add_ln18749_1_fu_1305_p2;
assign zext_ln18749_fu_1241_p1 = tmp_188_fu_1234_p3;
assign zext_ln18751_fu_1364_p1 = add_ln18751_fu_1358_p2;
assign zext_ln18755_1_fu_1124_p1 = lshr_ln62_i_reg_1465;
assign zext_ln18755_2_fu_1145_p1 = add_ln18755_fu_1127_p2;
assign zext_ln18755_3_fu_1251_p1 = lshr_ln63_i_reg_1494;
assign zext_ln18755_4_fu_1371_p1 = add_ln18755_1_reg_1515;
assign zext_ln18755_fu_1114_p1 = tmp_180_fu_1107_p3;
assign zext_ln18807_cast_cast_i_cast_cast_fu_704_p3 = ((tmp_fu_696_p3[0:0] == 1'b1) ? 6'd28 : 6'd0);
always @ (posedge ap_clk) begin
    mul_i179_i_i_reg_1425[4:0] <= 5'b00000;
    trunc_ln_i_reg_1430[3:0] <= 4'b0000;
    zext_ln18807_cast_cast_i_cast_cast_reg_1435[1:0] <= 2'b00;
    zext_ln18807_cast_cast_i_cast_cast_reg_1435[5] <= 1'b0;
    p_udiv24_i_cast_cast_i_cast_cast_reg_1440[0] <= 1'b0;
    p_udiv24_i_cast_cast_i_cast_cast_reg_1440[4] <= 1'b0;
    select_ln18807_i_cast_cast_reg_1445[1:0] <= 2'b00;
    select_ln18807_i_cast_cast_reg_1445[5] <= 1'b0;
    trunc_ln18807_cast_cast_i_cast_cast_reg_1450[3] <= 1'b0;
    trunc_ln18807_cast_cast_i_cast_cast_reg_1450_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 