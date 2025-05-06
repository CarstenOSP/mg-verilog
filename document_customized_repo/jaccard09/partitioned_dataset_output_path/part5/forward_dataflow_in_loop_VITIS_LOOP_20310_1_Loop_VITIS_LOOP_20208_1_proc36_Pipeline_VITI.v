
module forward_dataflow_in_loop_VITIS_LOOP_20310_1_Loop_VITIS_LOOP_20208_1_proc36_Pipeline_VITI (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,and_ln,empty,mul9_i115,p_udiv14_cast,v15398_address0,v15398_ce0,v15398_we0,v15398_d0,v15398_1_address0,v15398_1_ce0,v15398_1_we0,v15398_1_d0,v15398_2_address0,v15398_2_ce0,v15398_2_we0,v15398_2_d0,v15398_3_address0,v15398_3_ce0,v15398_3_we0,v15398_3_d0,v15398_4_address0,v15398_4_ce0,v15398_4_we0,v15398_4_d0,v15398_5_address0,v15398_5_ce0,v15398_5_we0,v15398_5_d0,v15398_6_address0,v15398_6_ce0,v15398_6_we0,v15398_6_d0,v15398_7_address0,v15398_7_ce0,v15398_7_we0,v15398_7_d0,v15398_8_address0,v15398_8_ce0,v15398_8_we0,v15398_8_d0,v15398_9_address0,v15398_9_ce0,v15398_9_we0,v15398_9_d0,v15398_10_address0,v15398_10_ce0,v15398_10_we0,v15398_10_d0,v15398_11_address0,v15398_11_ce0,v15398_11_we0,v15398_11_d0,v15398_12_address0,v15398_12_ce0,v15398_12_we0,v15398_12_d0,v15398_13_address0,v15398_13_ce0,v15398_13_we0,v15398_13_d0,v15398_14_address0,v15398_14_ce0,v15398_14_we0,v15398_14_d0,v15398_15_address0,v15398_15_ce0,v15398_15_we0,v15398_15_d0,mul13_i,trunc_ln,v15429_0_0_0_address0,v15429_0_0_0_ce0,v15429_0_0_0_q0,v15429_0_1_0_address0,v15429_0_1_0_ce0,v15429_0_1_0_q0,v15429_1_0_0_address0,v15429_1_0_0_ce0,v15429_1_0_0_q0,v15429_1_1_0_address0,v15429_1_1_0_ce0,v15429_1_1_0_q0,v15429_0_0_1_address0,v15429_0_0_1_ce0,v15429_0_0_1_q0,v15429_0_0_2_address0,v15429_0_0_2_ce0,v15429_0_0_2_q0,v15429_0_0_3_address0,v15429_0_0_3_ce0,v15429_0_0_3_q0,v15429_0_1_1_address0,v15429_0_1_1_ce0,v15429_0_1_1_q0,v15429_0_1_2_address0,v15429_0_1_2_ce0,v15429_0_1_2_q0,v15429_0_1_3_address0,v15429_0_1_3_ce0,v15429_0_1_3_q0,v15429_1_0_1_address0,v15429_1_0_1_ce0,v15429_1_0_1_q0,v15429_1_0_2_address0,v15429_1_0_2_ce0,v15429_1_0_2_q0,v15429_1_0_3_address0,v15429_1_0_3_ce0,v15429_1_0_3_q0,v15429_1_1_1_address0,v15429_1_1_1_ce0,v15429_1_1_1_q0,v15429_1_1_2_address0,v15429_1_1_2_ce0,v15429_1_1_2_q0,v15429_1_1_3_address0,v15429_1_1_3_ce0,v15429_1_1_3_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] and_ln;
input  [0:0] empty;
input  [6:0] mul9_i115;
input  [5:0] p_udiv14_cast;
output  [9:0] v15398_address0;
output   v15398_ce0;
output   v15398_we0;
output  [7:0] v15398_d0;
output  [9:0] v15398_1_address0;
output   v15398_1_ce0;
output   v15398_1_we0;
output  [7:0] v15398_1_d0;
output  [9:0] v15398_2_address0;
output   v15398_2_ce0;
output   v15398_2_we0;
output  [7:0] v15398_2_d0;
output  [9:0] v15398_3_address0;
output   v15398_3_ce0;
output   v15398_3_we0;
output  [7:0] v15398_3_d0;
output  [9:0] v15398_4_address0;
output   v15398_4_ce0;
output   v15398_4_we0;
output  [7:0] v15398_4_d0;
output  [9:0] v15398_5_address0;
output   v15398_5_ce0;
output   v15398_5_we0;
output  [7:0] v15398_5_d0;
output  [9:0] v15398_6_address0;
output   v15398_6_ce0;
output   v15398_6_we0;
output  [7:0] v15398_6_d0;
output  [9:0] v15398_7_address0;
output   v15398_7_ce0;
output   v15398_7_we0;
output  [7:0] v15398_7_d0;
output  [9:0] v15398_8_address0;
output   v15398_8_ce0;
output   v15398_8_we0;
output  [7:0] v15398_8_d0;
output  [9:0] v15398_9_address0;
output   v15398_9_ce0;
output   v15398_9_we0;
output  [7:0] v15398_9_d0;
output  [9:0] v15398_10_address0;
output   v15398_10_ce0;
output   v15398_10_we0;
output  [7:0] v15398_10_d0;
output  [9:0] v15398_11_address0;
output   v15398_11_ce0;
output   v15398_11_we0;
output  [7:0] v15398_11_d0;
output  [9:0] v15398_12_address0;
output   v15398_12_ce0;
output   v15398_12_we0;
output  [7:0] v15398_12_d0;
output  [9:0] v15398_13_address0;
output   v15398_13_ce0;
output   v15398_13_we0;
output  [7:0] v15398_13_d0;
output  [9:0] v15398_14_address0;
output   v15398_14_ce0;
output   v15398_14_we0;
output  [7:0] v15398_14_d0;
output  [9:0] v15398_15_address0;
output   v15398_15_ce0;
output   v15398_15_we0;
output  [7:0] v15398_15_d0;
input  [6:0] mul13_i;
input  [4:0] trunc_ln;
output  [14:0] v15429_0_0_0_address0;
output   v15429_0_0_0_ce0;
input  [7:0] v15429_0_0_0_q0;
output  [14:0] v15429_0_1_0_address0;
output   v15429_0_1_0_ce0;
input  [7:0] v15429_0_1_0_q0;
output  [14:0] v15429_1_0_0_address0;
output   v15429_1_0_0_ce0;
input  [7:0] v15429_1_0_0_q0;
output  [14:0] v15429_1_1_0_address0;
output   v15429_1_1_0_ce0;
input  [7:0] v15429_1_1_0_q0;
output  [14:0] v15429_0_0_1_address0;
output   v15429_0_0_1_ce0;
input  [7:0] v15429_0_0_1_q0;
output  [14:0] v15429_0_0_2_address0;
output   v15429_0_0_2_ce0;
input  [7:0] v15429_0_0_2_q0;
output  [14:0] v15429_0_0_3_address0;
output   v15429_0_0_3_ce0;
input  [7:0] v15429_0_0_3_q0;
output  [14:0] v15429_0_1_1_address0;
output   v15429_0_1_1_ce0;
input  [7:0] v15429_0_1_1_q0;
output  [14:0] v15429_0_1_2_address0;
output   v15429_0_1_2_ce0;
input  [7:0] v15429_0_1_2_q0;
output  [14:0] v15429_0_1_3_address0;
output   v15429_0_1_3_ce0;
input  [7:0] v15429_0_1_3_q0;
output  [14:0] v15429_1_0_1_address0;
output   v15429_1_0_1_ce0;
input  [7:0] v15429_1_0_1_q0;
output  [14:0] v15429_1_0_2_address0;
output   v15429_1_0_2_ce0;
input  [7:0] v15429_1_0_2_q0;
output  [14:0] v15429_1_0_3_address0;
output   v15429_1_0_3_ce0;
input  [7:0] v15429_1_0_3_q0;
output  [14:0] v15429_1_1_1_address0;
output   v15429_1_1_1_ce0;
input  [7:0] v15429_1_1_1_q0;
output  [14:0] v15429_1_1_2_address0;
output   v15429_1_1_2_ce0;
input  [7:0] v15429_1_1_2_q0;
output  [14:0] v15429_1_1_3_address0;
output   v15429_1_1_3_ce0;
input  [7:0] v15429_1_1_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln20208_fu_986_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] lshr_ln_fu_796_p4;
reg   [2:0] lshr_ln_reg_1376;
wire   [9:0] sub_ln20213_fu_836_p2;
reg   [9:0] sub_ln20213_reg_1382;
wire   [9:0] sub_ln20229_fu_872_p2;
reg   [9:0] sub_ln20229_reg_1388;
wire   [3:0] lshr_ln7_fu_882_p4;
reg   [3:0] lshr_ln7_reg_1394;
wire   [5:0] empty_176_fu_902_p2;
reg   [5:0] empty_176_reg_1399;
reg   [5:0] tmp_s_reg_1404;
reg   [2:0] lshr_ln8_reg_1409;
reg   [2:0] lshr_ln8_reg_1409_pp0_iter1_reg;
reg   [4:0] lshr_ln9_reg_1415;
wire   [0:0] icmp_ln20210_fu_974_p2;
reg   [0:0] icmp_ln20210_reg_1420;
wire   [0:0] icmp_ln20209_fu_980_p2;
reg   [0:0] icmp_ln20209_reg_1425;
reg   [0:0] icmp_ln20208_reg_1430;
wire   [6:0] add_ln20243_fu_1044_p2;
reg   [6:0] add_ln20243_reg_1434;
reg   [0:0] ap_phi_mux_icmp_ln20209195_phi_fu_677_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln20210194_phi_fu_687_p4;
wire   [63:0] zext_ln20213_4_fu_1198_p1;
wire   [63:0] zext_ln20221_2_fu_1209_p1;
wire   [63:0] zext_ln20229_2_fu_1220_p1;
wire   [63:0] zext_ln20237_1_fu_1231_p1;
wire   [63:0] zext_ln20215_1_fu_1245_p1;
wire   [63:0] zext_ln20223_fu_1258_p1;
wire   [63:0] zext_ln20231_fu_1271_p1;
wire   [63:0] zext_ln20239_fu_1284_p1;
wire   [63:0] zext_ln20243_4_fu_1316_p1;
reg   [9:0] indvar_flatten12189_fu_186;
wire   [9:0] add_ln20208_1_fu_968_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten12189_load;
reg   [4:0] v15350190_fu_190;
wire   [4:0] v15350_fu_760_p3;
reg   [4:0] ap_sig_allocacmp_v15350190_load;
reg   [6:0] indvar_flatten191_fu_194;
wire   [6:0] select_ln20209_1_fu_960_p3;
reg   [6:0] ap_sig_allocacmp_indvar_flatten191_load;
reg   [4:0] v15351192_fu_198;
wire   [4:0] v15351_fu_788_p3;
reg   [4:0] ap_sig_allocacmp_v15351192_load;
reg   [4:0] v15352193_fu_202;
wire   [4:0] v15352_fu_948_p2;
reg   [4:0] ap_sig_allocacmp_v15352193_load;
reg    v15429_0_0_0_ce0_local;
reg    v15429_0_0_1_ce0_local;
reg    v15429_0_0_2_ce0_local;
reg    v15429_0_0_3_ce0_local;
reg    v15429_0_1_0_ce0_local;
reg    v15429_0_1_1_ce0_local;
reg    v15429_0_1_2_ce0_local;
reg    v15429_0_1_3_ce0_local;
reg    v15429_1_0_0_ce0_local;
reg    v15429_1_0_1_ce0_local;
reg    v15429_1_0_2_ce0_local;
reg    v15429_1_0_3_ce0_local;
reg    v15429_1_1_0_ce0_local;
reg    v15429_1_1_1_ce0_local;
reg    v15429_1_1_2_ce0_local;
reg    v15429_1_1_3_ce0_local;
reg    v15398_15_we0_local;
reg    v15398_15_ce0_local;
reg    v15398_14_we0_local;
reg    v15398_14_ce0_local;
reg    v15398_13_we0_local;
reg    v15398_13_ce0_local;
reg    v15398_12_we0_local;
reg    v15398_12_ce0_local;
reg    v15398_11_we0_local;
reg    v15398_11_ce0_local;
reg    v15398_10_we0_local;
reg    v15398_10_ce0_local;
reg    v15398_9_we0_local;
reg    v15398_9_ce0_local;
reg    v15398_8_we0_local;
reg    v15398_8_ce0_local;
reg    v15398_7_we0_local;
reg    v15398_7_ce0_local;
reg    v15398_6_we0_local;
reg    v15398_6_ce0_local;
reg    v15398_5_we0_local;
reg    v15398_5_ce0_local;
reg    v15398_4_we0_local;
reg    v15398_4_ce0_local;
reg    v15398_3_we0_local;
reg    v15398_3_ce0_local;
reg    v15398_2_we0_local;
reg    v15398_2_ce0_local;
reg    v15398_1_we0_local;
reg    v15398_1_ce0_local;
reg    v15398_we0_local;
reg    v15398_ce0_local;
wire   [0:0] xor_ln20208_fu_748_p2;
wire   [4:0] add_ln20208_fu_734_p2;
wire   [4:0] select_ln20208_fu_740_p3;
wire   [0:0] and_ln20208_fu_754_p2;
wire   [0:0] empty_173_fu_774_p2;
wire   [4:0] add_ln20209_fu_768_p2;
wire   [6:0] tmp_54_fu_822_p4;
wire   [9:0] p_shl43_fu_812_p4;
wire   [9:0] zext_ln20213_fu_832_p1;
wire   [4:0] empty_174_fu_806_p2;
wire   [3:0] tmp_55_fu_842_p4;
wire   [6:0] tmp_56_fu_860_p3;
wire   [9:0] p_shl41_fu_852_p3;
wire   [9:0] zext_ln20229_fu_868_p1;
wire   [6:0] zext_ln20209_fu_878_p1;
wire   [5:0] zext_ln20209_1_fu_898_p1;
wire   [6:0] empty_175_fu_892_p2;
wire   [4:0] v15352_mid2_fu_780_p3;
wire   [6:0] zext_ln20210_fu_918_p1;
wire   [6:0] add_ln20212_fu_932_p2;
wire   [6:0] add_ln20209_1_fu_954_p2;
wire   [3:0] tmp_53_fu_1024_p3;
wire   [6:0] p_shl45_fu_1017_p3;
wire   [6:0] zext_ln20243_fu_1031_p1;
wire   [6:0] sub_ln20243_fu_1035_p2;
wire   [6:0] zext_ln20243_1_fu_1041_p1;
wire   [9:0] zext_ln20213_1_fu_1050_p1;
wire   [9:0] add_ln20213_1_fu_1053_p2;
wire   [11:0] tmp_57_fu_1066_p3;
wire   [14:0] p_shl38_fu_1058_p3;
wire   [14:0] zext_ln20213_2_fu_1074_p1;
wire   [9:0] add_ln20229_fu_1084_p2;
wire   [11:0] tmp_58_fu_1097_p3;
wire   [14:0] p_shl36_fu_1089_p3;
wire   [14:0] zext_ln20229_1_fu_1105_p1;
wire   [9:0] zext_ln20221_fu_1115_p1;
wire   [9:0] add_ln20221_fu_1118_p2;
wire   [11:0] tmp_59_fu_1131_p3;
wire   [14:0] p_shl34_fu_1123_p3;
wire   [14:0] zext_ln20221_1_fu_1139_p1;
wire   [9:0] add_ln20237_fu_1149_p2;
wire   [11:0] tmp_60_fu_1162_p3;
wire   [14:0] p_shl_fu_1154_p3;
wire   [14:0] zext_ln20237_fu_1170_p1;
wire   [4:0] zext_ln20210_1_fu_1180_p1;
wire   [4:0] add_ln20213_fu_1183_p2;
wire   [14:0] sub_ln20213_1_fu_1078_p2;
wire   [14:0] zext_ln20213_3_fu_1188_p1;
wire   [14:0] add_ln20213_2_fu_1192_p2;
wire   [14:0] sub_ln20221_fu_1143_p2;
wire   [14:0] add_ln20221_1_fu_1203_p2;
wire   [14:0] sub_ln20229_1_fu_1109_p2;
wire   [14:0] add_ln20229_1_fu_1214_p2;
wire   [14:0] sub_ln20237_fu_1174_p2;
wire   [14:0] add_ln20237_1_fu_1225_p2;
wire   [14:0] zext_ln20215_fu_1236_p1;
wire   [14:0] add_ln20215_fu_1239_p2;
wire   [14:0] add_ln20223_fu_1252_p2;
wire   [14:0] add_ln20231_fu_1265_p2;
wire   [14:0] add_ln20239_fu_1278_p2;
wire   [9:0] p_shl40_fu_1294_p3;
wire   [9:0] zext_ln20243_2_fu_1291_p1;
wire   [9:0] sub_ln20243_1_fu_1301_p2;
wire   [9:0] zext_ln20243_3_fu_1307_p1;
wire   [9:0] add_ln20243_1_fu_1310_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_904;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 indvar_flatten12189_fu_186 = 10'd0;
#0 v15350190_fu_190 = 5'd0;
#0 indvar_flatten191_fu_194 = 7'd0;
#0 v15351192_fu_198 = 5'd0;
#0 v15352193_fu_202 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten12189_fu_186 <= add_ln20208_1_fu_968_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12189_fu_186 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten191_fu_194 <= select_ln20209_1_fu_960_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten191_fu_194 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v15350190_fu_190 <= v15350_fu_760_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v15350190_fu_190 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v15351192_fu_198 <= v15351_fu_788_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v15351192_fu_198 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v15352193_fu_202 <= v15352_fu_948_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v15352193_fu_202 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln20243_reg_1434 <= add_ln20243_fu_1044_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_176_reg_1399 <= empty_176_fu_902_p2;
        icmp_ln20208_reg_1430 <= icmp_ln20208_fu_986_p2;
        lshr_ln7_reg_1394 <= {{v15351_fu_788_p3[4:1]}};
        lshr_ln8_reg_1409 <= {{v15352_mid2_fu_780_p3[4:2]}};
        lshr_ln8_reg_1409_pp0_iter1_reg <= lshr_ln8_reg_1409;
        lshr_ln9_reg_1415 <= {{add_ln20212_fu_932_p2[6:2]}};
        lshr_ln_reg_1376 <= {{v15350_fu_760_p3[3:1]}};
        sub_ln20213_reg_1382[9 : 3] <= sub_ln20213_fu_836_p2[9 : 3];
        sub_ln20229_reg_1388[9 : 3] <= sub_ln20229_fu_872_p2[9 : 3];
        tmp_s_reg_1404 <= {{empty_175_fu_892_p2[6:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln20209_reg_1425 <= icmp_ln20209_fu_980_p2;
        icmp_ln20210_reg_1420 <= icmp_ln20210_fu_974_p2;
    end
end
always @ (*) begin
    if (((icmp_ln20208_fu_986_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_904)) begin
            ap_phi_mux_icmp_ln20209195_phi_fu_677_p4 = icmp_ln20209_reg_1425;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln20209195_phi_fu_677_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln20209195_phi_fu_677_p4 = icmp_ln20209_reg_1425;
        end
    end else begin
        ap_phi_mux_icmp_ln20209195_phi_fu_677_p4 = icmp_ln20209_reg_1425;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_904)) begin
            ap_phi_mux_icmp_ln20210194_phi_fu_687_p4 = icmp_ln20210_reg_1420;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln20210194_phi_fu_687_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln20210194_phi_fu_687_p4 = icmp_ln20210_reg_1420;
        end
    end else begin
        ap_phi_mux_icmp_ln20210194_phi_fu_687_p4 = icmp_ln20210_reg_1420;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12189_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12189_load = indvar_flatten12189_fu_186;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten191_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten191_load = indvar_flatten191_fu_194;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v15350190_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v15350190_load = v15350190_fu_190;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v15351192_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v15351192_load = v15351192_fu_198;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v15352193_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v15352193_load = v15352193_fu_202;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_10_ce0_local = 1'b1;
    end else begin
        v15398_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_10_we0_local = 1'b1;
    end else begin
        v15398_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_11_ce0_local = 1'b1;
    end else begin
        v15398_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_11_we0_local = 1'b1;
    end else begin
        v15398_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_12_ce0_local = 1'b1;
    end else begin
        v15398_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_12_we0_local = 1'b1;
    end else begin
        v15398_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_13_ce0_local = 1'b1;
    end else begin
        v15398_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_13_we0_local = 1'b1;
    end else begin
        v15398_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_14_ce0_local = 1'b1;
    end else begin
        v15398_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_14_we0_local = 1'b1;
    end else begin
        v15398_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_15_ce0_local = 1'b1;
    end else begin
        v15398_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_15_we0_local = 1'b1;
    end else begin
        v15398_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_1_ce0_local = 1'b1;
    end else begin
        v15398_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_1_we0_local = 1'b1;
    end else begin
        v15398_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_2_ce0_local = 1'b1;
    end else begin
        v15398_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_2_we0_local = 1'b1;
    end else begin
        v15398_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_3_ce0_local = 1'b1;
    end else begin
        v15398_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_3_we0_local = 1'b1;
    end else begin
        v15398_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_4_ce0_local = 1'b1;
    end else begin
        v15398_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_4_we0_local = 1'b1;
    end else begin
        v15398_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_5_ce0_local = 1'b1;
    end else begin
        v15398_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_5_we0_local = 1'b1;
    end else begin
        v15398_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_6_ce0_local = 1'b1;
    end else begin
        v15398_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_6_we0_local = 1'b1;
    end else begin
        v15398_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_7_ce0_local = 1'b1;
    end else begin
        v15398_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_7_we0_local = 1'b1;
    end else begin
        v15398_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_8_ce0_local = 1'b1;
    end else begin
        v15398_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_8_we0_local = 1'b1;
    end else begin
        v15398_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_9_ce0_local = 1'b1;
    end else begin
        v15398_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_9_we0_local = 1'b1;
    end else begin
        v15398_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_ce0_local = 1'b1;
    end else begin
        v15398_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15398_we0_local = 1'b1;
    end else begin
        v15398_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15429_0_0_0_ce0_local = 1'b1;
    end else begin
        v15429_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15429_0_0_1_ce0_local = 1'b1;
    end else begin
        v15429_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15429_0_0_2_ce0_local = 1'b1;
    end else begin
        v15429_0_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15429_0_0_3_ce0_local = 1'b1;
    end else begin
        v15429_0_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15429_0_1_0_ce0_local = 1'b1;
    end else begin
        v15429_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15429_0_1_1_ce0_local = 1'b1;
    end else begin
        v15429_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15429_0_1_2_ce0_local = 1'b1;
    end else begin
        v15429_0_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15429_0_1_3_ce0_local = 1'b1;
    end else begin
        v15429_0_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15429_1_0_0_ce0_local = 1'b1;
    end else begin
        v15429_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15429_1_0_1_ce0_local = 1'b1;
    end else begin
        v15429_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15429_1_0_2_ce0_local = 1'b1;
    end else begin
        v15429_1_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15429_1_0_3_ce0_local = 1'b1;
    end else begin
        v15429_1_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15429_1_1_0_ce0_local = 1'b1;
    end else begin
        v15429_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15429_1_1_1_ce0_local = 1'b1;
    end else begin
        v15429_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15429_1_1_2_ce0_local = 1'b1;
    end else begin
        v15429_1_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15429_1_1_3_ce0_local = 1'b1;
    end else begin
        v15429_1_1_3_ce0_local = 1'b0;
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
assign add_ln20208_1_fu_968_p2 = (ap_sig_allocacmp_indvar_flatten12189_load + 10'd1);
assign add_ln20208_fu_734_p2 = (ap_sig_allocacmp_v15350190_load + 5'd2);
assign add_ln20209_1_fu_954_p2 = (ap_sig_allocacmp_indvar_flatten191_load + 7'd1);
assign add_ln20209_fu_768_p2 = (select_ln20208_fu_740_p3 + 5'd2);
assign add_ln20212_fu_932_p2 = (mul13_i + zext_ln20210_fu_918_p1);
assign add_ln20213_1_fu_1053_p2 = (sub_ln20213_reg_1382 + zext_ln20213_1_fu_1050_p1);
assign add_ln20213_2_fu_1192_p2 = (sub_ln20213_1_fu_1078_p2 + zext_ln20213_3_fu_1188_p1);
assign add_ln20213_fu_1183_p2 = (zext_ln20210_1_fu_1180_p1 + trunc_ln);
assign add_ln20215_fu_1239_p2 = (sub_ln20213_1_fu_1078_p2 + zext_ln20215_fu_1236_p1);
assign add_ln20221_1_fu_1203_p2 = (sub_ln20221_fu_1143_p2 + zext_ln20213_3_fu_1188_p1);
assign add_ln20221_fu_1118_p2 = (sub_ln20213_reg_1382 + zext_ln20221_fu_1115_p1);
assign add_ln20223_fu_1252_p2 = (sub_ln20221_fu_1143_p2 + zext_ln20215_fu_1236_p1);
assign add_ln20229_1_fu_1214_p2 = (sub_ln20229_1_fu_1109_p2 + zext_ln20213_3_fu_1188_p1);
assign add_ln20229_fu_1084_p2 = (sub_ln20229_reg_1388 + zext_ln20213_1_fu_1050_p1);
assign add_ln20231_fu_1265_p2 = (sub_ln20229_1_fu_1109_p2 + zext_ln20215_fu_1236_p1);
assign add_ln20237_1_fu_1225_p2 = (sub_ln20237_fu_1174_p2 + zext_ln20213_3_fu_1188_p1);
assign add_ln20237_fu_1149_p2 = (sub_ln20229_reg_1388 + zext_ln20221_fu_1115_p1);
assign add_ln20239_fu_1278_p2 = (sub_ln20237_fu_1174_p2 + zext_ln20215_fu_1236_p1);
assign add_ln20243_1_fu_1310_p2 = (sub_ln20243_1_fu_1301_p2 + zext_ln20243_3_fu_1307_p1);
assign add_ln20243_fu_1044_p2 = (sub_ln20243_fu_1035_p2 + zext_ln20243_1_fu_1041_p1);
assign and_ln20208_fu_754_p2 = (xor_ln20208_fu_748_p2 & ap_phi_mux_icmp_ln20210194_phi_fu_687_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_904 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln20208_reg_1430 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_173_fu_774_p2 = (ap_phi_mux_icmp_ln20209195_phi_fu_677_p4 | and_ln20208_fu_754_p2);
assign empty_174_fu_806_p2 = (v15350_fu_760_p3 + and_ln);
assign empty_175_fu_892_p2 = (mul9_i115 + zext_ln20209_fu_878_p1);
assign empty_176_fu_902_p2 = (p_udiv14_cast + zext_ln20209_1_fu_898_p1);
assign icmp_ln20208_fu_986_p2 = ((ap_sig_allocacmp_indvar_flatten12189_load == 10'd783) ? 1'b1 : 1'b0);
assign icmp_ln20209_fu_980_p2 = ((select_ln20209_1_fu_960_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln20210_fu_974_p2 = ((v15352_fu_948_p2 == 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln7_fu_882_p4 = {{v15351_fu_788_p3[4:1]}};
assign lshr_ln_fu_796_p4 = {{v15350_fu_760_p3[3:1]}};
assign p_shl34_fu_1123_p3 = {{add_ln20221_fu_1118_p2}, {5'd0}};
assign p_shl36_fu_1089_p3 = {{add_ln20229_fu_1084_p2}, {5'd0}};
assign p_shl38_fu_1058_p3 = {{add_ln20213_1_fu_1053_p2}, {5'd0}};
assign p_shl40_fu_1294_p3 = {{add_ln20243_reg_1434}, {3'd0}};
assign p_shl41_fu_852_p3 = {{tmp_55_fu_842_p4}, {6'd0}};
assign p_shl43_fu_812_p4 = {{{empty}, {lshr_ln_fu_796_p4}}, {6'd0}};
assign p_shl45_fu_1017_p3 = {{lshr_ln_reg_1376}, {4'd0}};
assign p_shl_fu_1154_p3 = {{add_ln20237_fu_1149_p2}, {5'd0}};
assign select_ln20208_fu_740_p3 = ((ap_phi_mux_icmp_ln20209195_phi_fu_677_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v15351192_load);
assign select_ln20209_1_fu_960_p3 = ((ap_phi_mux_icmp_ln20209195_phi_fu_677_p4[0:0] == 1'b1) ? 7'd1 : add_ln20209_1_fu_954_p2);
assign sub_ln20213_1_fu_1078_p2 = (p_shl38_fu_1058_p3 - zext_ln20213_2_fu_1074_p1);
assign sub_ln20213_fu_836_p2 = (p_shl43_fu_812_p4 - zext_ln20213_fu_832_p1);
assign sub_ln20221_fu_1143_p2 = (p_shl34_fu_1123_p3 - zext_ln20221_1_fu_1139_p1);
assign sub_ln20229_1_fu_1109_p2 = (p_shl36_fu_1089_p3 - zext_ln20229_1_fu_1105_p1);
assign sub_ln20229_fu_872_p2 = (p_shl41_fu_852_p3 - zext_ln20229_fu_868_p1);
assign sub_ln20237_fu_1174_p2 = (p_shl_fu_1154_p3 - zext_ln20237_fu_1170_p1);
assign sub_ln20243_1_fu_1301_p2 = (p_shl40_fu_1294_p3 - zext_ln20243_2_fu_1291_p1);
assign sub_ln20243_fu_1035_p2 = (p_shl45_fu_1017_p3 - zext_ln20243_fu_1031_p1);
assign tmp_53_fu_1024_p3 = {{lshr_ln_reg_1376}, {1'd0}};
assign tmp_54_fu_822_p4 = {{{empty}, {lshr_ln_fu_796_p4}}, {3'd0}};
assign tmp_55_fu_842_p4 = {{empty_174_fu_806_p2[4:1]}};
assign tmp_56_fu_860_p3 = {{tmp_55_fu_842_p4}, {3'd0}};
assign tmp_57_fu_1066_p3 = {{add_ln20213_1_fu_1053_p2}, {2'd0}};
assign tmp_58_fu_1097_p3 = {{add_ln20229_fu_1084_p2}, {2'd0}};
assign tmp_59_fu_1131_p3 = {{add_ln20221_fu_1118_p2}, {2'd0}};
assign tmp_60_fu_1162_p3 = {{add_ln20237_fu_1149_p2}, {2'd0}};
assign v15350_fu_760_p3 = ((ap_phi_mux_icmp_ln20209195_phi_fu_677_p4[0:0] == 1'b1) ? add_ln20208_fu_734_p2 : ap_sig_allocacmp_v15350190_load);
assign v15351_fu_788_p3 = ((and_ln20208_fu_754_p2[0:0] == 1'b1) ? add_ln20209_fu_768_p2 : select_ln20208_fu_740_p3);
assign v15352_fu_948_p2 = (v15352_mid2_fu_780_p3 + 5'd4);
assign v15352_mid2_fu_780_p3 = ((empty_173_fu_774_p2[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v15352193_load);
assign v15398_10_address0 = zext_ln20243_4_fu_1316_p1;
assign v15398_10_ce0 = v15398_10_ce0_local;
assign v15398_10_d0 = v15429_0_1_1_q0;
assign v15398_10_we0 = v15398_10_we0_local;
assign v15398_11_address0 = zext_ln20243_4_fu_1316_p1;
assign v15398_11_ce0 = v15398_11_ce0_local;
assign v15398_11_d0 = v15429_0_1_0_q0;
assign v15398_11_we0 = v15398_11_we0_local;
assign v15398_12_address0 = zext_ln20243_4_fu_1316_p1;
assign v15398_12_ce0 = v15398_12_ce0_local;
assign v15398_12_d0 = v15429_0_0_3_q0;
assign v15398_12_we0 = v15398_12_we0_local;
assign v15398_13_address0 = zext_ln20243_4_fu_1316_p1;
assign v15398_13_ce0 = v15398_13_ce0_local;
assign v15398_13_d0 = v15429_0_0_2_q0;
assign v15398_13_we0 = v15398_13_we0_local;
assign v15398_14_address0 = zext_ln20243_4_fu_1316_p1;
assign v15398_14_ce0 = v15398_14_ce0_local;
assign v15398_14_d0 = v15429_0_0_1_q0;
assign v15398_14_we0 = v15398_14_we0_local;
assign v15398_15_address0 = zext_ln20243_4_fu_1316_p1;
assign v15398_15_ce0 = v15398_15_ce0_local;
assign v15398_15_d0 = v15429_0_0_0_q0;
assign v15398_15_we0 = v15398_15_we0_local;
assign v15398_1_address0 = zext_ln20243_4_fu_1316_p1;
assign v15398_1_ce0 = v15398_1_ce0_local;
assign v15398_1_d0 = v15429_1_1_2_q0;
assign v15398_1_we0 = v15398_1_we0_local;
assign v15398_2_address0 = zext_ln20243_4_fu_1316_p1;
assign v15398_2_ce0 = v15398_2_ce0_local;
assign v15398_2_d0 = v15429_1_1_1_q0;
assign v15398_2_we0 = v15398_2_we0_local;
assign v15398_3_address0 = zext_ln20243_4_fu_1316_p1;
assign v15398_3_ce0 = v15398_3_ce0_local;
assign v15398_3_d0 = v15429_1_1_0_q0;
assign v15398_3_we0 = v15398_3_we0_local;
assign v15398_4_address0 = zext_ln20243_4_fu_1316_p1;
assign v15398_4_ce0 = v15398_4_ce0_local;
assign v15398_4_d0 = v15429_1_0_3_q0;
assign v15398_4_we0 = v15398_4_we0_local;
assign v15398_5_address0 = zext_ln20243_4_fu_1316_p1;
assign v15398_5_ce0 = v15398_5_ce0_local;
assign v15398_5_d0 = v15429_1_0_2_q0;
assign v15398_5_we0 = v15398_5_we0_local;
assign v15398_6_address0 = zext_ln20243_4_fu_1316_p1;
assign v15398_6_ce0 = v15398_6_ce0_local;
assign v15398_6_d0 = v15429_1_0_1_q0;
assign v15398_6_we0 = v15398_6_we0_local;
assign v15398_7_address0 = zext_ln20243_4_fu_1316_p1;
assign v15398_7_ce0 = v15398_7_ce0_local;
assign v15398_7_d0 = v15429_1_0_0_q0;
assign v15398_7_we0 = v15398_7_we0_local;
assign v15398_8_address0 = zext_ln20243_4_fu_1316_p1;
assign v15398_8_ce0 = v15398_8_ce0_local;
assign v15398_8_d0 = v15429_0_1_3_q0;
assign v15398_8_we0 = v15398_8_we0_local;
assign v15398_9_address0 = zext_ln20243_4_fu_1316_p1;
assign v15398_9_ce0 = v15398_9_ce0_local;
assign v15398_9_d0 = v15429_0_1_2_q0;
assign v15398_9_we0 = v15398_9_we0_local;
assign v15398_address0 = zext_ln20243_4_fu_1316_p1;
assign v15398_ce0 = v15398_ce0_local;
assign v15398_d0 = v15429_1_1_3_q0;
assign v15398_we0 = v15398_we0_local;
assign v15429_0_0_0_address0 = zext_ln20213_4_fu_1198_p1;
assign v15429_0_0_0_ce0 = v15429_0_0_0_ce0_local;
assign v15429_0_0_1_address0 = zext_ln20215_1_fu_1245_p1;
assign v15429_0_0_1_ce0 = v15429_0_0_1_ce0_local;
assign v15429_0_0_2_address0 = zext_ln20215_1_fu_1245_p1;
assign v15429_0_0_2_ce0 = v15429_0_0_2_ce0_local;
assign v15429_0_0_3_address0 = zext_ln20215_1_fu_1245_p1;
assign v15429_0_0_3_ce0 = v15429_0_0_3_ce0_local;
assign v15429_0_1_0_address0 = zext_ln20221_2_fu_1209_p1;
assign v15429_0_1_0_ce0 = v15429_0_1_0_ce0_local;
assign v15429_0_1_1_address0 = zext_ln20223_fu_1258_p1;
assign v15429_0_1_1_ce0 = v15429_0_1_1_ce0_local;
assign v15429_0_1_2_address0 = zext_ln20223_fu_1258_p1;
assign v15429_0_1_2_ce0 = v15429_0_1_2_ce0_local;
assign v15429_0_1_3_address0 = zext_ln20223_fu_1258_p1;
assign v15429_0_1_3_ce0 = v15429_0_1_3_ce0_local;
assign v15429_1_0_0_address0 = zext_ln20229_2_fu_1220_p1;
assign v15429_1_0_0_ce0 = v15429_1_0_0_ce0_local;
assign v15429_1_0_1_address0 = zext_ln20231_fu_1271_p1;
assign v15429_1_0_1_ce0 = v15429_1_0_1_ce0_local;
assign v15429_1_0_2_address0 = zext_ln20231_fu_1271_p1;
assign v15429_1_0_2_ce0 = v15429_1_0_2_ce0_local;
assign v15429_1_0_3_address0 = zext_ln20231_fu_1271_p1;
assign v15429_1_0_3_ce0 = v15429_1_0_3_ce0_local;
assign v15429_1_1_0_address0 = zext_ln20237_1_fu_1231_p1;
assign v15429_1_1_0_ce0 = v15429_1_1_0_ce0_local;
assign v15429_1_1_1_address0 = zext_ln20239_fu_1284_p1;
assign v15429_1_1_1_ce0 = v15429_1_1_1_ce0_local;
assign v15429_1_1_2_address0 = zext_ln20239_fu_1284_p1;
assign v15429_1_1_2_ce0 = v15429_1_1_2_ce0_local;
assign v15429_1_1_3_address0 = zext_ln20239_fu_1284_p1;
assign v15429_1_1_3_ce0 = v15429_1_1_3_ce0_local;
assign xor_ln20208_fu_748_p2 = (ap_phi_mux_icmp_ln20209195_phi_fu_677_p4 ^ 1'd1);
assign zext_ln20209_1_fu_898_p1 = lshr_ln7_fu_882_p4;
assign zext_ln20209_fu_878_p1 = v15351_fu_788_p3;
assign zext_ln20210_1_fu_1180_p1 = lshr_ln8_reg_1409;
assign zext_ln20210_fu_918_p1 = v15352_mid2_fu_780_p3;
assign zext_ln20213_1_fu_1050_p1 = empty_176_reg_1399;
assign zext_ln20213_2_fu_1074_p1 = tmp_57_fu_1066_p3;
assign zext_ln20213_3_fu_1188_p1 = add_ln20213_fu_1183_p2;
assign zext_ln20213_4_fu_1198_p1 = add_ln20213_2_fu_1192_p2;
assign zext_ln20213_fu_832_p1 = tmp_54_fu_822_p4;
assign zext_ln20215_1_fu_1245_p1 = add_ln20215_fu_1239_p2;
assign zext_ln20215_fu_1236_p1 = lshr_ln9_reg_1415;
assign zext_ln20221_1_fu_1139_p1 = tmp_59_fu_1131_p3;
assign zext_ln20221_2_fu_1209_p1 = add_ln20221_1_fu_1203_p2;
assign zext_ln20221_fu_1115_p1 = tmp_s_reg_1404;
assign zext_ln20223_fu_1258_p1 = add_ln20223_fu_1252_p2;
assign zext_ln20229_1_fu_1105_p1 = tmp_58_fu_1097_p3;
assign zext_ln20229_2_fu_1220_p1 = add_ln20229_1_fu_1214_p2;
assign zext_ln20229_fu_868_p1 = tmp_56_fu_860_p3;
assign zext_ln20231_fu_1271_p1 = add_ln20231_fu_1265_p2;
assign zext_ln20237_1_fu_1231_p1 = add_ln20237_1_fu_1225_p2;
assign zext_ln20237_fu_1170_p1 = tmp_60_fu_1162_p3;
assign zext_ln20239_fu_1284_p1 = add_ln20239_fu_1278_p2;
assign zext_ln20243_1_fu_1041_p1 = lshr_ln7_reg_1394;
assign zext_ln20243_2_fu_1291_p1 = add_ln20243_reg_1434;
assign zext_ln20243_3_fu_1307_p1 = lshr_ln8_reg_1409_pp0_iter1_reg;
assign zext_ln20243_4_fu_1316_p1 = add_ln20243_1_fu_1310_p2;
assign zext_ln20243_fu_1031_p1 = tmp_53_fu_1024_p3;
always @ (posedge ap_clk) begin
    sub_ln20213_reg_1382[2:0] <= 3'b000;
    sub_ln20229_reg_1388[2:0] <= 3'b000;
end
endmodule 
