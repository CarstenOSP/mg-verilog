module forward_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19510_1_proc17848_Pipeline_V (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i179_i_i,empty,mul9_i218_i_i,p_udiv24_cast_i_i,v15048_address0,v15048_ce0,v15048_we0,v15048_d0,v15048_1_address0,v15048_1_ce0,v15048_1_we0,v15048_1_d0,v15048_2_address0,v15048_2_ce0,v15048_2_we0,v15048_2_d0,v15048_3_address0,v15048_3_ce0,v15048_3_we0,v15048_3_d0,v15048_4_address0,v15048_4_ce0,v15048_4_we0,v15048_4_d0,v15048_5_address0,v15048_5_ce0,v15048_5_we0,v15048_5_d0,v15048_6_address0,v15048_6_ce0,v15048_6_we0,v15048_6_d0,v15048_7_address0,v15048_7_ce0,v15048_7_we0,v15048_7_d0,v15048_8_address0,v15048_8_ce0,v15048_8_we0,v15048_8_d0,v15048_9_address0,v15048_9_ce0,v15048_9_we0,v15048_9_d0,v15048_10_address0,v15048_10_ce0,v15048_10_we0,v15048_10_d0,v15048_11_address0,v15048_11_ce0,v15048_11_we0,v15048_11_d0,v15048_12_address0,v15048_12_ce0,v15048_12_we0,v15048_12_d0,v15048_13_address0,v15048_13_ce0,v15048_13_we0,v15048_13_d0,v15048_14_address0,v15048_14_ce0,v15048_14_we0,v15048_14_d0,v15048_15_address0,v15048_15_ce0,v15048_15_we0,v15048_15_d0,mul13_i221_i_i,trunc_ln_i,v15435_0_0_0_address0,v15435_0_0_0_ce0,v15435_0_0_0_q0,v15435_0_1_0_address0,v15435_0_1_0_ce0,v15435_0_1_0_q0,v15435_1_0_0_address0,v15435_1_0_0_ce0,v15435_1_0_0_q0,v15435_1_1_0_address0,v15435_1_1_0_ce0,v15435_1_1_0_q0,v15435_0_0_1_address0,v15435_0_0_1_ce0,v15435_0_0_1_q0,v15435_0_0_2_address0,v15435_0_0_2_ce0,v15435_0_0_2_q0,v15435_0_0_3_address0,v15435_0_0_3_ce0,v15435_0_0_3_q0,v15435_0_1_1_address0,v15435_0_1_1_ce0,v15435_0_1_1_q0,v15435_0_1_2_address0,v15435_0_1_2_ce0,v15435_0_1_2_q0,v15435_0_1_3_address0,v15435_0_1_3_ce0,v15435_0_1_3_q0,v15435_1_0_1_address0,v15435_1_0_1_ce0,v15435_1_0_1_q0,v15435_1_0_2_address0,v15435_1_0_2_ce0,v15435_1_0_2_q0,v15435_1_0_3_address0,v15435_1_0_3_ce0,v15435_1_0_3_q0,v15435_1_1_1_address0,v15435_1_1_1_ce0,v15435_1_1_1_q0,v15435_1_1_2_address0,v15435_1_1_2_ce0,v15435_1_1_2_q0,v15435_1_1_3_address0,v15435_1_1_3_ce0,v15435_1_1_3_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] mul_i179_i_i;
input  [0:0] empty;
input  [6:0] mul9_i218_i_i;
input  [5:0] p_udiv24_cast_i_i;
output  [10:0] v15048_address0;
output   v15048_ce0;
output   v15048_we0;
output  [7:0] v15048_d0;
output  [10:0] v15048_1_address0;
output   v15048_1_ce0;
output   v15048_1_we0;
output  [7:0] v15048_1_d0;
output  [10:0] v15048_2_address0;
output   v15048_2_ce0;
output   v15048_2_we0;
output  [7:0] v15048_2_d0;
output  [10:0] v15048_3_address0;
output   v15048_3_ce0;
output   v15048_3_we0;
output  [7:0] v15048_3_d0;
output  [10:0] v15048_4_address0;
output   v15048_4_ce0;
output   v15048_4_we0;
output  [7:0] v15048_4_d0;
output  [10:0] v15048_5_address0;
output   v15048_5_ce0;
output   v15048_5_we0;
output  [7:0] v15048_5_d0;
output  [10:0] v15048_6_address0;
output   v15048_6_ce0;
output   v15048_6_we0;
output  [7:0] v15048_6_d0;
output  [10:0] v15048_7_address0;
output   v15048_7_ce0;
output   v15048_7_we0;
output  [7:0] v15048_7_d0;
output  [10:0] v15048_8_address0;
output   v15048_8_ce0;
output   v15048_8_we0;
output  [7:0] v15048_8_d0;
output  [10:0] v15048_9_address0;
output   v15048_9_ce0;
output   v15048_9_we0;
output  [7:0] v15048_9_d0;
output  [10:0] v15048_10_address0;
output   v15048_10_ce0;
output   v15048_10_we0;
output  [7:0] v15048_10_d0;
output  [10:0] v15048_11_address0;
output   v15048_11_ce0;
output   v15048_11_we0;
output  [7:0] v15048_11_d0;
output  [10:0] v15048_12_address0;
output   v15048_12_ce0;
output   v15048_12_we0;
output  [7:0] v15048_12_d0;
output  [10:0] v15048_13_address0;
output   v15048_13_ce0;
output   v15048_13_we0;
output  [7:0] v15048_13_d0;
output  [10:0] v15048_14_address0;
output   v15048_14_ce0;
output   v15048_14_we0;
output  [7:0] v15048_14_d0;
output  [10:0] v15048_15_address0;
output   v15048_15_ce0;
output   v15048_15_we0;
output  [7:0] v15048_15_d0;
input  [6:0] mul13_i221_i_i;
input  [4:0] trunc_ln_i;
output  [15:0] v15435_0_0_0_address0;
output   v15435_0_0_0_ce0;
input  [7:0] v15435_0_0_0_q0;
output  [15:0] v15435_0_1_0_address0;
output   v15435_0_1_0_ce0;
input  [7:0] v15435_0_1_0_q0;
output  [15:0] v15435_1_0_0_address0;
output   v15435_1_0_0_ce0;
input  [7:0] v15435_1_0_0_q0;
output  [15:0] v15435_1_1_0_address0;
output   v15435_1_1_0_ce0;
input  [7:0] v15435_1_1_0_q0;
output  [15:0] v15435_0_0_1_address0;
output   v15435_0_0_1_ce0;
input  [7:0] v15435_0_0_1_q0;
output  [15:0] v15435_0_0_2_address0;
output   v15435_0_0_2_ce0;
input  [7:0] v15435_0_0_2_q0;
output  [15:0] v15435_0_0_3_address0;
output   v15435_0_0_3_ce0;
input  [7:0] v15435_0_0_3_q0;
output  [15:0] v15435_0_1_1_address0;
output   v15435_0_1_1_ce0;
input  [7:0] v15435_0_1_1_q0;
output  [15:0] v15435_0_1_2_address0;
output   v15435_0_1_2_ce0;
input  [7:0] v15435_0_1_2_q0;
output  [15:0] v15435_0_1_3_address0;
output   v15435_0_1_3_ce0;
input  [7:0] v15435_0_1_3_q0;
output  [15:0] v15435_1_0_1_address0;
output   v15435_1_0_1_ce0;
input  [7:0] v15435_1_0_1_q0;
output  [15:0] v15435_1_0_2_address0;
output   v15435_1_0_2_ce0;
input  [7:0] v15435_1_0_2_q0;
output  [15:0] v15435_1_0_3_address0;
output   v15435_1_0_3_ce0;
input  [7:0] v15435_1_0_3_q0;
output  [15:0] v15435_1_1_1_address0;
output   v15435_1_1_1_ce0;
input  [7:0] v15435_1_1_1_q0;
output  [15:0] v15435_1_1_2_address0;
output   v15435_1_1_2_ce0;
input  [7:0] v15435_1_1_2_q0;
output  [15:0] v15435_1_1_3_address0;
output   v15435_1_1_3_ce0;
input  [7:0] v15435_1_1_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln19510_fu_982_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln19511195_i_reg_680;
reg   [0:0] icmp_ln19512194_i_reg_691;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] lshr_ln43_i_fu_804_p4;
reg   [3:0] lshr_ln43_i_reg_1386;
reg   [4:0] tmp_124_reg_1392;
wire   [3:0] lshr_ln44_i_fu_861_p4;
reg   [3:0] lshr_ln44_i_reg_1398;
wire   [10:0] zext_ln19515_1_fu_885_p1;
reg   [10:0] zext_ln19515_1_reg_1403;
wire   [10:0] add_ln19515_fu_889_p2;
reg   [10:0] add_ln19515_reg_1408;
wire   [10:0] zext_ln19523_fu_905_p1;
reg   [10:0] zext_ln19523_reg_1414;
wire   [10:0] add_ln19523_fu_909_p2;
reg   [10:0] add_ln19523_reg_1419;
reg   [2:0] lshr_ln45_i_reg_1425;
reg   [2:0] lshr_ln45_i_reg_1425_pp0_iter2_reg;
reg   [4:0] lshr_ln46_i_reg_1431;
wire   [0:0] icmp_ln19512_fu_970_p2;
reg   [0:0] icmp_ln19512_reg_1436;
wire   [0:0] icmp_ln19511_fu_976_p2;
reg   [0:0] icmp_ln19511_reg_1441;
reg   [0:0] icmp_ln19510_reg_1446;
wire   [7:0] add_ln19545_fu_1064_p2;
reg   [7:0] add_ln19545_reg_1450;
wire   [10:0] add_ln19531_fu_1094_p2;
reg   [10:0] add_ln19531_reg_1456;
wire   [10:0] add_ln19539_fu_1123_p2;
reg   [10:0] add_ln19539_reg_1462;
wire   [15:0] zext_ln19515_3_fu_1136_p1;
reg   [15:0] zext_ln19515_3_reg_1468;
wire   [15:0] zext_ln19517_fu_1162_p1;
reg   [15:0] zext_ln19517_reg_1484;
wire   [63:0] zext_ln19545_4_fu_1264_p1;
reg   [63:0] zext_ln19545_4_reg_1520;
reg   [0:0] ap_phi_mux_icmp_ln19511195_i_phi_fu_684_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln19512194_i_phi_fu_695_p4;
wire   [63:0] zext_ln19515_4_fu_1146_p1;
wire   [63:0] zext_ln19523_2_fu_1157_p1;
wire   [63:0] zext_ln19517_1_fu_1171_p1;
wire   [63:0] zext_ln19525_fu_1184_p1;
wire   [63:0] zext_ln19531_2_fu_1281_p1;
wire   [63:0] zext_ln19539_1_fu_1291_p1;
wire   [63:0] zext_ln19533_fu_1301_p1;
wire   [63:0] zext_ln19541_fu_1313_p1;
reg   [10:0] indvar_flatten12189_i_fu_192;
wire   [10:0] add_ln19510_1_fu_964_p2;
reg   [5:0] v14984190_i_fu_196;
wire   [5:0] select_ln19510_1_fu_768_p3;
reg   [6:0] indvar_flatten191_i_fu_200;
wire   [6:0] select_ln19511_1_fu_956_p3;
reg   [4:0] v14985192_i_fu_204;
wire   [4:0] select_ln19511_fu_796_p3;
reg   [4:0] v14986193_i_fu_208;
wire   [4:0] add_ln19512_fu_944_p2;
reg    v15435_0_0_0_ce0_local;
reg    v15435_0_0_1_ce0_local;
reg    v15435_0_0_2_ce0_local;
reg    v15435_0_0_3_ce0_local;
reg    v15435_0_1_0_ce0_local;
reg    v15435_0_1_1_ce0_local;
reg    v15435_0_1_2_ce0_local;
reg    v15435_0_1_3_ce0_local;
reg    v15435_1_0_0_ce0_local;
reg    v15435_1_0_1_ce0_local;
reg    v15435_1_0_2_ce0_local;
reg    v15435_1_0_3_ce0_local;
reg    v15435_1_1_0_ce0_local;
reg    v15435_1_1_1_ce0_local;
reg    v15435_1_1_2_ce0_local;
reg    v15435_1_1_3_ce0_local;
reg    v15048_15_we0_local;
reg    v15048_15_ce0_local;
reg    v15048_14_we0_local;
reg    v15048_14_ce0_local;
reg    v15048_13_we0_local;
reg    v15048_13_ce0_local;
reg    v15048_12_we0_local;
reg    v15048_12_ce0_local;
reg    v15048_11_we0_local;
reg    v15048_11_ce0_local;
reg    v15048_10_we0_local;
reg    v15048_10_ce0_local;
reg    v15048_9_we0_local;
reg    v15048_9_ce0_local;
reg    v15048_8_we0_local;
reg    v15048_8_ce0_local;
reg    v15048_7_we0_local;
reg    v15048_7_ce0_local;
reg    v15048_6_we0_local;
reg    v15048_6_ce0_local;
reg    v15048_5_we0_local;
reg    v15048_5_ce0_local;
reg    v15048_4_we0_local;
reg    v15048_4_ce0_local;
reg    v15048_3_we0_local;
reg    v15048_3_ce0_local;
reg    v15048_2_we0_local;
reg    v15048_2_ce0_local;
reg    v15048_1_we0_local;
reg    v15048_1_ce0_local;
reg    v15048_we0_local;
reg    v15048_ce0_local;
wire   [0:0] xor_ln19510_fu_756_p2;
wire   [5:0] add_ln19510_fu_742_p2;
wire   [4:0] select_ln19510_fu_748_p3;
wire   [0:0] and_ln19510_fu_762_p2;
wire   [0:0] empty_216_fu_782_p2;
wire   [4:0] add_ln19511_fu_776_p2;
wire   [7:0] tmp_123_fu_828_p4;
wire   [10:0] p_shl43_fu_819_p4;
wire   [10:0] zext_ln19515_fu_837_p1;
wire   [5:0] empty_217_fu_814_p2;
wire   [6:0] zext_ln19511_fu_857_p1;
wire   [5:0] zext_ln19511_1_fu_876_p1;
wire   [5:0] empty_219_fu_880_p2;
wire   [10:0] sub_ln19515_fu_841_p2;
wire   [6:0] empty_218_fu_871_p2;
wire   [5:0] tmp_88_i_fu_895_p4;
wire   [4:0] v14986_mid2_i_fu_788_p3;
wire   [6:0] zext_ln19512_fu_915_p1;
wire   [6:0] add_ln19514_fu_929_p2;
wire   [6:0] add_ln19511_1_fu_950_p2;
wire   [4:0] tmp_122_fu_1020_p3;
wire   [7:0] p_shl45_fu_1013_p3;
wire   [7:0] zext_ln19545_fu_1027_p1;
wire   [7:0] tmp_125_fu_1044_p3;
wire   [10:0] p_shl41_fu_1037_p3;
wire   [10:0] zext_ln19531_fu_1051_p1;
wire   [7:0] sub_ln19545_fu_1031_p2;
wire   [7:0] zext_ln19545_1_fu_1061_p1;
wire   [12:0] tmp_126_fu_1077_p3;
wire   [15:0] p_shl38_fu_1070_p3;
wire   [15:0] zext_ln19515_2_fu_1084_p1;
wire   [10:0] sub_ln19531_fu_1055_p2;
wire   [12:0] tmp_128_fu_1106_p3;
wire   [15:0] p_shl34_fu_1099_p3;
wire   [15:0] zext_ln19523_1_fu_1113_p1;
wire   [4:0] zext_ln19512_1_fu_1128_p1;
wire   [4:0] add_ln19515_1_fu_1131_p2;
wire   [15:0] sub_ln19515_1_fu_1088_p2;
wire   [15:0] add_ln19515_2_fu_1140_p2;
wire   [15:0] sub_ln19523_fu_1117_p2;
wire   [15:0] add_ln19523_1_fu_1151_p2;
wire   [15:0] add_ln19517_fu_1165_p2;
wire   [15:0] add_ln19525_fu_1178_p2;
wire   [10:0] p_shl40_fu_1194_p3;
wire   [10:0] zext_ln19545_2_fu_1191_p1;
wire   [12:0] tmp_127_fu_1214_p3;
wire   [15:0] p_shl36_fu_1207_p3;
wire   [15:0] zext_ln19531_1_fu_1221_p1;
wire   [12:0] tmp_129_fu_1238_p3;
wire   [15:0] p_shl_fu_1231_p3;
wire   [15:0] zext_ln19539_fu_1245_p1;
wire   [10:0] sub_ln19545_1_fu_1201_p2;
wire   [10:0] zext_ln19545_3_fu_1255_p1;
wire   [10:0] add_ln19545_1_fu_1258_p2;
wire   [15:0] sub_ln19531_1_fu_1225_p2;
wire   [15:0] add_ln19531_1_fu_1276_p2;
wire   [15:0] sub_ln19539_fu_1249_p2;
wire   [15:0] add_ln19539_1_fu_1286_p2;
wire   [15:0] add_ln19533_fu_1296_p2;
wire   [15:0] add_ln19541_fu_1308_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 indvar_flatten12189_i_fu_192 = 11'd0;
#0 v14984190_i_fu_196 = 6'd0;
#0 indvar_flatten191_i_fu_200 = 7'd0;
#0 v14985192_i_fu_204 = 5'd0;
#0 v14986193_i_fu_208 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln19510_reg_1446 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln19511195_i_reg_680 <= icmp_ln19511_reg_1441;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln19511195_i_reg_680 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln19510_reg_1446 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln19512194_i_reg_691 <= icmp_ln19512_reg_1436;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln19512194_i_reg_691 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12189_i_fu_192 <= 11'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten12189_i_fu_192 <= add_ln19510_1_fu_964_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten191_i_fu_200 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten191_i_fu_200 <= select_ln19511_1_fu_956_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v14984190_i_fu_196 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v14984190_i_fu_196 <= select_ln19510_1_fu_768_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v14985192_i_fu_204 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v14985192_i_fu_204 <= select_ln19511_fu_796_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v14986193_i_fu_208 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v14986193_i_fu_208 <= add_ln19512_fu_944_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln19515_reg_1408 <= add_ln19515_fu_889_p2;
        add_ln19523_reg_1419 <= add_ln19523_fu_909_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln19510_reg_1446 <= icmp_ln19510_fu_982_p2;
        lshr_ln43_i_reg_1386 <= {{select_ln19510_1_fu_768_p3[4:1]}};
        lshr_ln44_i_reg_1398 <= {{select_ln19511_fu_796_p3[4:1]}};
        lshr_ln45_i_reg_1425 <= {{v14986_mid2_i_fu_788_p3[4:2]}};
        lshr_ln46_i_reg_1431 <= {{add_ln19514_fu_929_p2[6:2]}};
        tmp_124_reg_1392 <= {{empty_217_fu_814_p2[5:1]}};
        zext_ln19515_1_reg_1403[5 : 0] <= zext_ln19515_1_fu_885_p1[5 : 0];
        zext_ln19523_reg_1414[5 : 0] <= zext_ln19523_fu_905_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln19531_reg_1456 <= add_ln19531_fu_1094_p2;
        add_ln19539_reg_1462 <= add_ln19539_fu_1123_p2;
        add_ln19545_reg_1450 <= add_ln19545_fu_1064_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        lshr_ln45_i_reg_1425_pp0_iter2_reg <= lshr_ln45_i_reg_1425;
        zext_ln19515_3_reg_1468[4 : 0] <= zext_ln19515_3_fu_1136_p1[4 : 0];
        zext_ln19517_reg_1484[4 : 0] <= zext_ln19517_fu_1162_p1[4 : 0];
        zext_ln19545_4_reg_1520[10 : 0] <= zext_ln19545_4_fu_1264_p1[10 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln19511_reg_1441 <= icmp_ln19511_fu_976_p2;
        icmp_ln19512_reg_1436 <= icmp_ln19512_fu_970_p2;
    end
end
always @ (*) begin
    if (((icmp_ln19510_fu_982_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln19510_reg_1446 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln19511195_i_phi_fu_684_p4 = icmp_ln19511_reg_1441;
    end else begin
        ap_phi_mux_icmp_ln19511195_i_phi_fu_684_p4 = icmp_ln19511195_i_reg_680;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln19510_reg_1446 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln19512194_i_phi_fu_695_p4 = icmp_ln19512_reg_1436;
    end else begin
        ap_phi_mux_icmp_ln19512194_i_phi_fu_695_p4 = icmp_ln19512194_i_reg_691;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15048_10_ce0_local = 1'b1;
    end else begin
        v15048_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15048_10_we0_local = 1'b1;
    end else begin
        v15048_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15048_11_ce0_local = 1'b1;
    end else begin
        v15048_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15048_11_we0_local = 1'b1;
    end else begin
        v15048_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15048_12_ce0_local = 1'b1;
    end else begin
        v15048_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15048_12_we0_local = 1'b1;
    end else begin
        v15048_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15048_13_ce0_local = 1'b1;
    end else begin
        v15048_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15048_13_we0_local = 1'b1;
    end else begin
        v15048_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15048_14_ce0_local = 1'b1;
    end else begin
        v15048_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15048_14_we0_local = 1'b1;
    end else begin
        v15048_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15048_15_ce0_local = 1'b1;
    end else begin
        v15048_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15048_15_we0_local = 1'b1;
    end else begin
        v15048_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15048_1_ce0_local = 1'b1;
    end else begin
        v15048_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15048_1_we0_local = 1'b1;
    end else begin
        v15048_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15048_2_ce0_local = 1'b1;
    end else begin
        v15048_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15048_2_we0_local = 1'b1;
    end else begin
        v15048_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15048_3_ce0_local = 1'b1;
    end else begin
        v15048_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15048_3_we0_local = 1'b1;
    end else begin
        v15048_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15048_4_ce0_local = 1'b1;
    end else begin
        v15048_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15048_4_we0_local = 1'b1;
    end else begin
        v15048_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15048_5_ce0_local = 1'b1;
    end else begin
        v15048_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15048_5_we0_local = 1'b1;
    end else begin
        v15048_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15048_6_ce0_local = 1'b1;
    end else begin
        v15048_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15048_6_we0_local = 1'b1;
    end else begin
        v15048_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15048_7_ce0_local = 1'b1;
    end else begin
        v15048_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15048_7_we0_local = 1'b1;
    end else begin
        v15048_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15048_8_ce0_local = 1'b1;
    end else begin
        v15048_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15048_8_we0_local = 1'b1;
    end else begin
        v15048_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15048_9_ce0_local = 1'b1;
    end else begin
        v15048_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15048_9_we0_local = 1'b1;
    end else begin
        v15048_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15048_ce0_local = 1'b1;
    end else begin
        v15048_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v15048_we0_local = 1'b1;
    end else begin
        v15048_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15435_0_0_0_ce0_local = 1'b1;
    end else begin
        v15435_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15435_0_0_1_ce0_local = 1'b1;
    end else begin
        v15435_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15435_0_0_2_ce0_local = 1'b1;
    end else begin
        v15435_0_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15435_0_0_3_ce0_local = 1'b1;
    end else begin
        v15435_0_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15435_0_1_0_ce0_local = 1'b1;
    end else begin
        v15435_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15435_0_1_1_ce0_local = 1'b1;
    end else begin
        v15435_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15435_0_1_2_ce0_local = 1'b1;
    end else begin
        v15435_0_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15435_0_1_3_ce0_local = 1'b1;
    end else begin
        v15435_0_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15435_1_0_0_ce0_local = 1'b1;
    end else begin
        v15435_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15435_1_0_1_ce0_local = 1'b1;
    end else begin
        v15435_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15435_1_0_2_ce0_local = 1'b1;
    end else begin
        v15435_1_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15435_1_0_3_ce0_local = 1'b1;
    end else begin
        v15435_1_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15435_1_1_0_ce0_local = 1'b1;
    end else begin
        v15435_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15435_1_1_1_ce0_local = 1'b1;
    end else begin
        v15435_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15435_1_1_2_ce0_local = 1'b1;
    end else begin
        v15435_1_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15435_1_1_3_ce0_local = 1'b1;
    end else begin
        v15435_1_1_3_ce0_local = 1'b0;
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
assign add_ln19510_1_fu_964_p2 = (indvar_flatten12189_i_fu_192 + 11'd1);
assign add_ln19510_fu_742_p2 = (v14984190_i_fu_196 + 6'd2);
assign add_ln19511_1_fu_950_p2 = (indvar_flatten191_i_fu_200 + 7'd1);
assign add_ln19511_fu_776_p2 = (select_ln19510_fu_748_p3 + 5'd2);
assign add_ln19512_fu_944_p2 = (v14986_mid2_i_fu_788_p3 + 5'd4);
assign add_ln19514_fu_929_p2 = (mul13_i221_i_i + zext_ln19512_fu_915_p1);
assign add_ln19515_1_fu_1131_p2 = (zext_ln19512_1_fu_1128_p1 + trunc_ln_i);
assign add_ln19515_2_fu_1140_p2 = (sub_ln19515_1_fu_1088_p2 + zext_ln19515_3_fu_1136_p1);
assign add_ln19515_fu_889_p2 = (sub_ln19515_fu_841_p2 + zext_ln19515_1_fu_885_p1);
assign add_ln19517_fu_1165_p2 = (sub_ln19515_1_fu_1088_p2 + zext_ln19517_fu_1162_p1);
assign add_ln19523_1_fu_1151_p2 = (sub_ln19523_fu_1117_p2 + zext_ln19515_3_fu_1136_p1);
assign add_ln19523_fu_909_p2 = (sub_ln19515_fu_841_p2 + zext_ln19523_fu_905_p1);
assign add_ln19525_fu_1178_p2 = (sub_ln19523_fu_1117_p2 + zext_ln19517_fu_1162_p1);
assign add_ln19531_1_fu_1276_p2 = (sub_ln19531_1_fu_1225_p2 + zext_ln19515_3_reg_1468);
assign add_ln19531_fu_1094_p2 = (sub_ln19531_fu_1055_p2 + zext_ln19515_1_reg_1403);
assign add_ln19533_fu_1296_p2 = (sub_ln19531_1_fu_1225_p2 + zext_ln19517_reg_1484);
assign add_ln19539_1_fu_1286_p2 = (sub_ln19539_fu_1249_p2 + zext_ln19515_3_reg_1468);
assign add_ln19539_fu_1123_p2 = (sub_ln19531_fu_1055_p2 + zext_ln19523_reg_1414);
assign add_ln19541_fu_1308_p2 = (sub_ln19539_fu_1249_p2 + zext_ln19517_reg_1484);
assign add_ln19545_1_fu_1258_p2 = (sub_ln19545_1_fu_1201_p2 + zext_ln19545_3_fu_1255_p1);
assign add_ln19545_fu_1064_p2 = (sub_ln19545_fu_1031_p2 + zext_ln19545_1_fu_1061_p1);
assign and_ln19510_fu_762_p2 = (xor_ln19510_fu_756_p2 & ap_phi_mux_icmp_ln19512194_i_phi_fu_695_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_216_fu_782_p2 = (ap_phi_mux_icmp_ln19511195_i_phi_fu_684_p4 | and_ln19510_fu_762_p2);
assign empty_217_fu_814_p2 = (select_ln19510_1_fu_768_p3 + mul_i179_i_i);
assign empty_218_fu_871_p2 = (mul9_i218_i_i + zext_ln19511_fu_857_p1);
assign empty_219_fu_880_p2 = (p_udiv24_cast_i_i + zext_ln19511_1_fu_876_p1);
assign icmp_ln19510_fu_982_p2 = ((indvar_flatten12189_i_fu_192 == 11'd1567) ? 1'b1 : 1'b0);
assign icmp_ln19511_fu_976_p2 = ((select_ln19511_1_fu_956_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln19512_fu_970_p2 = ((add_ln19512_fu_944_p2 == 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln43_i_fu_804_p4 = {{select_ln19510_1_fu_768_p3[4:1]}};
assign lshr_ln44_i_fu_861_p4 = {{select_ln19511_fu_796_p3[4:1]}};
assign p_shl34_fu_1099_p3 = {{add_ln19523_reg_1419}, {5'd0}};
assign p_shl36_fu_1207_p3 = {{add_ln19531_reg_1456}, {5'd0}};
assign p_shl38_fu_1070_p3 = {{add_ln19515_reg_1408}, {5'd0}};
assign p_shl40_fu_1194_p3 = {{add_ln19545_reg_1450}, {3'd0}};
assign p_shl41_fu_1037_p3 = {{tmp_124_reg_1392}, {6'd0}};
assign p_shl43_fu_819_p4 = {{{empty}, {lshr_ln43_i_fu_804_p4}}, {6'd0}};
assign p_shl45_fu_1013_p3 = {{lshr_ln43_i_reg_1386}, {4'd0}};
assign p_shl_fu_1231_p3 = {{add_ln19539_reg_1462}, {5'd0}};
assign select_ln19510_1_fu_768_p3 = ((ap_phi_mux_icmp_ln19511195_i_phi_fu_684_p4[0:0] == 1'b1) ? add_ln19510_fu_742_p2 : v14984190_i_fu_196);
assign select_ln19510_fu_748_p3 = ((ap_phi_mux_icmp_ln19511195_i_phi_fu_684_p4[0:0] == 1'b1) ? 5'd0 : v14985192_i_fu_204);
assign select_ln19511_1_fu_956_p3 = ((ap_phi_mux_icmp_ln19511195_i_phi_fu_684_p4[0:0] == 1'b1) ? 7'd1 : add_ln19511_1_fu_950_p2);
assign select_ln19511_fu_796_p3 = ((and_ln19510_fu_762_p2[0:0] == 1'b1) ? add_ln19511_fu_776_p2 : select_ln19510_fu_748_p3);
assign sub_ln19515_1_fu_1088_p2 = (p_shl38_fu_1070_p3 - zext_ln19515_2_fu_1084_p1);
assign sub_ln19515_fu_841_p2 = (p_shl43_fu_819_p4 - zext_ln19515_fu_837_p1);
assign sub_ln19523_fu_1117_p2 = (p_shl34_fu_1099_p3 - zext_ln19523_1_fu_1113_p1);
assign sub_ln19531_1_fu_1225_p2 = (p_shl36_fu_1207_p3 - zext_ln19531_1_fu_1221_p1);
assign sub_ln19531_fu_1055_p2 = (p_shl41_fu_1037_p3 - zext_ln19531_fu_1051_p1);
assign sub_ln19539_fu_1249_p2 = (p_shl_fu_1231_p3 - zext_ln19539_fu_1245_p1);
assign sub_ln19545_1_fu_1201_p2 = (p_shl40_fu_1194_p3 - zext_ln19545_2_fu_1191_p1);
assign sub_ln19545_fu_1031_p2 = (p_shl45_fu_1013_p3 - zext_ln19545_fu_1027_p1);
assign tmp_122_fu_1020_p3 = {{lshr_ln43_i_reg_1386}, {1'd0}};
assign tmp_123_fu_828_p4 = {{{empty}, {lshr_ln43_i_fu_804_p4}}, {3'd0}};
assign tmp_125_fu_1044_p3 = {{tmp_124_reg_1392}, {3'd0}};
assign tmp_126_fu_1077_p3 = {{add_ln19515_reg_1408}, {2'd0}};
assign tmp_127_fu_1214_p3 = {{add_ln19531_reg_1456}, {2'd0}};
assign tmp_128_fu_1106_p3 = {{add_ln19523_reg_1419}, {2'd0}};
assign tmp_129_fu_1238_p3 = {{add_ln19539_reg_1462}, {2'd0}};
assign tmp_88_i_fu_895_p4 = {{empty_218_fu_871_p2[6:1]}};
assign v14986_mid2_i_fu_788_p3 = ((empty_216_fu_782_p2[0:0] == 1'b1) ? 5'd0 : v14986193_i_fu_208);
assign v15048_10_address0 = zext_ln19545_4_fu_1264_p1;
assign v15048_10_ce0 = v15048_10_ce0_local;
assign v15048_10_d0 = v15435_0_1_1_q0;
assign v15048_10_we0 = v15048_10_we0_local;
assign v15048_11_address0 = zext_ln19545_4_fu_1264_p1;
assign v15048_11_ce0 = v15048_11_ce0_local;
assign v15048_11_d0 = v15435_0_1_0_q0;
assign v15048_11_we0 = v15048_11_we0_local;
assign v15048_12_address0 = zext_ln19545_4_fu_1264_p1;
assign v15048_12_ce0 = v15048_12_ce0_local;
assign v15048_12_d0 = v15435_0_0_3_q0;
assign v15048_12_we0 = v15048_12_we0_local;
assign v15048_13_address0 = zext_ln19545_4_fu_1264_p1;
assign v15048_13_ce0 = v15048_13_ce0_local;
assign v15048_13_d0 = v15435_0_0_2_q0;
assign v15048_13_we0 = v15048_13_we0_local;
assign v15048_14_address0 = zext_ln19545_4_fu_1264_p1;
assign v15048_14_ce0 = v15048_14_ce0_local;
assign v15048_14_d0 = v15435_0_0_1_q0;
assign v15048_14_we0 = v15048_14_we0_local;
assign v15048_15_address0 = zext_ln19545_4_fu_1264_p1;
assign v15048_15_ce0 = v15048_15_ce0_local;
assign v15048_15_d0 = v15435_0_0_0_q0;
assign v15048_15_we0 = v15048_15_we0_local;
assign v15048_1_address0 = zext_ln19545_4_reg_1520;
assign v15048_1_ce0 = v15048_1_ce0_local;
assign v15048_1_d0 = v15435_1_1_2_q0;
assign v15048_1_we0 = v15048_1_we0_local;
assign v15048_2_address0 = zext_ln19545_4_reg_1520;
assign v15048_2_ce0 = v15048_2_ce0_local;
assign v15048_2_d0 = v15435_1_1_1_q0;
assign v15048_2_we0 = v15048_2_we0_local;
assign v15048_3_address0 = zext_ln19545_4_reg_1520;
assign v15048_3_ce0 = v15048_3_ce0_local;
assign v15048_3_d0 = v15435_1_1_0_q0;
assign v15048_3_we0 = v15048_3_we0_local;
assign v15048_4_address0 = zext_ln19545_4_reg_1520;
assign v15048_4_ce0 = v15048_4_ce0_local;
assign v15048_4_d0 = v15435_1_0_3_q0;
assign v15048_4_we0 = v15048_4_we0_local;
assign v15048_5_address0 = zext_ln19545_4_reg_1520;
assign v15048_5_ce0 = v15048_5_ce0_local;
assign v15048_5_d0 = v15435_1_0_2_q0;
assign v15048_5_we0 = v15048_5_we0_local;
assign v15048_6_address0 = zext_ln19545_4_reg_1520;
assign v15048_6_ce0 = v15048_6_ce0_local;
assign v15048_6_d0 = v15435_1_0_1_q0;
assign v15048_6_we0 = v15048_6_we0_local;
assign v15048_7_address0 = zext_ln19545_4_reg_1520;
assign v15048_7_ce0 = v15048_7_ce0_local;
assign v15048_7_d0 = v15435_1_0_0_q0;
assign v15048_7_we0 = v15048_7_we0_local;
assign v15048_8_address0 = zext_ln19545_4_fu_1264_p1;
assign v15048_8_ce0 = v15048_8_ce0_local;
assign v15048_8_d0 = v15435_0_1_3_q0;
assign v15048_8_we0 = v15048_8_we0_local;
assign v15048_9_address0 = zext_ln19545_4_fu_1264_p1;
assign v15048_9_ce0 = v15048_9_ce0_local;
assign v15048_9_d0 = v15435_0_1_2_q0;
assign v15048_9_we0 = v15048_9_we0_local;
assign v15048_address0 = zext_ln19545_4_reg_1520;
assign v15048_ce0 = v15048_ce0_local;
assign v15048_d0 = v15435_1_1_3_q0;
assign v15048_we0 = v15048_we0_local;
assign v15435_0_0_0_address0 = zext_ln19515_4_fu_1146_p1;
assign v15435_0_0_0_ce0 = v15435_0_0_0_ce0_local;
assign v15435_0_0_1_address0 = zext_ln19517_1_fu_1171_p1;
assign v15435_0_0_1_ce0 = v15435_0_0_1_ce0_local;
assign v15435_0_0_2_address0 = zext_ln19517_1_fu_1171_p1;
assign v15435_0_0_2_ce0 = v15435_0_0_2_ce0_local;
assign v15435_0_0_3_address0 = zext_ln19517_1_fu_1171_p1;
assign v15435_0_0_3_ce0 = v15435_0_0_3_ce0_local;
assign v15435_0_1_0_address0 = zext_ln19523_2_fu_1157_p1;
assign v15435_0_1_0_ce0 = v15435_0_1_0_ce0_local;
assign v15435_0_1_1_address0 = zext_ln19525_fu_1184_p1;
assign v15435_0_1_1_ce0 = v15435_0_1_1_ce0_local;
assign v15435_0_1_2_address0 = zext_ln19525_fu_1184_p1;
assign v15435_0_1_2_ce0 = v15435_0_1_2_ce0_local;
assign v15435_0_1_3_address0 = zext_ln19525_fu_1184_p1;
assign v15435_0_1_3_ce0 = v15435_0_1_3_ce0_local;
assign v15435_1_0_0_address0 = zext_ln19531_2_fu_1281_p1;
assign v15435_1_0_0_ce0 = v15435_1_0_0_ce0_local;
assign v15435_1_0_1_address0 = zext_ln19533_fu_1301_p1;
assign v15435_1_0_1_ce0 = v15435_1_0_1_ce0_local;
assign v15435_1_0_2_address0 = zext_ln19533_fu_1301_p1;
assign v15435_1_0_2_ce0 = v15435_1_0_2_ce0_local;
assign v15435_1_0_3_address0 = zext_ln19533_fu_1301_p1;
assign v15435_1_0_3_ce0 = v15435_1_0_3_ce0_local;
assign v15435_1_1_0_address0 = zext_ln19539_1_fu_1291_p1;
assign v15435_1_1_0_ce0 = v15435_1_1_0_ce0_local;
assign v15435_1_1_1_address0 = zext_ln19541_fu_1313_p1;
assign v15435_1_1_1_ce0 = v15435_1_1_1_ce0_local;
assign v15435_1_1_2_address0 = zext_ln19541_fu_1313_p1;
assign v15435_1_1_2_ce0 = v15435_1_1_2_ce0_local;
assign v15435_1_1_3_address0 = zext_ln19541_fu_1313_p1;
assign v15435_1_1_3_ce0 = v15435_1_1_3_ce0_local;
assign xor_ln19510_fu_756_p2 = (ap_phi_mux_icmp_ln19511195_i_phi_fu_684_p4 ^ 1'd1);
assign zext_ln19511_1_fu_876_p1 = lshr_ln44_i_fu_861_p4;
assign zext_ln19511_fu_857_p1 = select_ln19511_fu_796_p3;
assign zext_ln19512_1_fu_1128_p1 = lshr_ln45_i_reg_1425;
assign zext_ln19512_fu_915_p1 = v14986_mid2_i_fu_788_p3;
assign zext_ln19515_1_fu_885_p1 = empty_219_fu_880_p2;
assign zext_ln19515_2_fu_1084_p1 = tmp_126_fu_1077_p3;
assign zext_ln19515_3_fu_1136_p1 = add_ln19515_1_fu_1131_p2;
assign zext_ln19515_4_fu_1146_p1 = add_ln19515_2_fu_1140_p2;
assign zext_ln19515_fu_837_p1 = tmp_123_fu_828_p4;
assign zext_ln19517_1_fu_1171_p1 = add_ln19517_fu_1165_p2;
assign zext_ln19517_fu_1162_p1 = lshr_ln46_i_reg_1431;
assign zext_ln19523_1_fu_1113_p1 = tmp_128_fu_1106_p3;
assign zext_ln19523_2_fu_1157_p1 = add_ln19523_1_fu_1151_p2;
assign zext_ln19523_fu_905_p1 = tmp_88_i_fu_895_p4;
assign zext_ln19525_fu_1184_p1 = add_ln19525_fu_1178_p2;
assign zext_ln19531_1_fu_1221_p1 = tmp_127_fu_1214_p3;
assign zext_ln19531_2_fu_1281_p1 = add_ln19531_1_fu_1276_p2;
assign zext_ln19531_fu_1051_p1 = tmp_125_fu_1044_p3;
assign zext_ln19533_fu_1301_p1 = add_ln19533_fu_1296_p2;
assign zext_ln19539_1_fu_1291_p1 = add_ln19539_1_fu_1286_p2;
assign zext_ln19539_fu_1245_p1 = tmp_129_fu_1238_p3;
assign zext_ln19541_fu_1313_p1 = add_ln19541_fu_1308_p2;
assign zext_ln19545_1_fu_1061_p1 = lshr_ln44_i_reg_1398;
assign zext_ln19545_2_fu_1191_p1 = add_ln19545_reg_1450;
assign zext_ln19545_3_fu_1255_p1 = lshr_ln45_i_reg_1425_pp0_iter2_reg;
assign zext_ln19545_4_fu_1264_p1 = add_ln19545_1_fu_1258_p2;
assign zext_ln19545_fu_1027_p1 = tmp_122_fu_1020_p3;
always @ (posedge ap_clk) begin
    zext_ln19515_1_reg_1403[10:6] <= 5'b00000;
    zext_ln19523_reg_1414[10:6] <= 5'b00000;
    zext_ln19515_3_reg_1468[15:5] <= 11'b00000000000;
    zext_ln19517_reg_1484[15:5] <= 11'b00000000000;
    zext_ln19545_4_reg_1520[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 