module forward_dataflow_in_loop_VITIS_LOOP_7043_1_Loop_VITIS_LOOP_6058_1_proc109 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v13733_7_1_address0,v13733_7_1_ce0,v13733_7_1_we0,v13733_7_1_d0,v13733_7_0_address0,v13733_7_0_ce0,v13733_7_0_we0,v13733_7_0_d0,v13733_6_1_address0,v13733_6_1_ce0,v13733_6_1_we0,v13733_6_1_d0,v13733_6_0_address0,v13733_6_0_ce0,v13733_6_0_we0,v13733_6_0_d0,v13733_5_1_address0,v13733_5_1_ce0,v13733_5_1_we0,v13733_5_1_d0,v13733_5_0_address0,v13733_5_0_ce0,v13733_5_0_we0,v13733_5_0_d0,v13733_4_1_address0,v13733_4_1_ce0,v13733_4_1_we0,v13733_4_1_d0,v13733_4_0_address0,v13733_4_0_ce0,v13733_4_0_we0,v13733_4_0_d0,v13733_3_1_address0,v13733_3_1_ce0,v13733_3_1_we0,v13733_3_1_d0,v13733_3_0_address0,v13733_3_0_ce0,v13733_3_0_we0,v13733_3_0_d0,v13733_2_1_address0,v13733_2_1_ce0,v13733_2_1_we0,v13733_2_1_d0,v13733_2_0_address0,v13733_2_0_ce0,v13733_2_0_we0,v13733_2_0_d0,v13733_1_1_address0,v13733_1_1_ce0,v13733_1_1_we0,v13733_1_1_d0,v13733_1_0_address0,v13733_1_0_ce0,v13733_1_0_we0,v13733_1_0_d0,v13733_0_1_address0,v13733_0_1_ce0,v13733_0_1_we0,v13733_0_1_d0,v13733_0_0_address0,v13733_0_0_ce0,v13733_0_0_we0,v13733_0_0_d0,p_read,v5716_15_address0,v5716_15_ce0,v5716_15_q0,v5716_14_address0,v5716_14_ce0,v5716_14_q0,v5716_13_address0,v5716_13_ce0,v5716_13_q0,v5716_12_address0,v5716_12_ce0,v5716_12_q0,v5716_11_address0,v5716_11_ce0,v5716_11_q0,v5716_10_address0,v5716_10_ce0,v5716_10_q0,v5716_9_address0,v5716_9_ce0,v5716_9_q0,v5716_8_address0,v5716_8_ce0,v5716_8_q0,v5716_7_address0,v5716_7_ce0,v5716_7_q0,v5716_6_address0,v5716_6_ce0,v5716_6_q0,v5716_5_address0,v5716_5_ce0,v5716_5_q0,v5716_4_address0,v5716_4_ce0,v5716_4_q0,v5716_3_address0,v5716_3_ce0,v5716_3_q0,v5716_2_address0,v5716_2_ce0,v5716_2_q0,v5716_1_address0,v5716_1_ce0,v5716_1_q0,v5716_address0,v5716_ce0,v5716_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [11:0] v13733_7_1_address0;
output   v13733_7_1_ce0;
output   v13733_7_1_we0;
output  [7:0] v13733_7_1_d0;
output  [11:0] v13733_7_0_address0;
output   v13733_7_0_ce0;
output   v13733_7_0_we0;
output  [7:0] v13733_7_0_d0;
output  [11:0] v13733_6_1_address0;
output   v13733_6_1_ce0;
output   v13733_6_1_we0;
output  [7:0] v13733_6_1_d0;
output  [11:0] v13733_6_0_address0;
output   v13733_6_0_ce0;
output   v13733_6_0_we0;
output  [7:0] v13733_6_0_d0;
output  [11:0] v13733_5_1_address0;
output   v13733_5_1_ce0;
output   v13733_5_1_we0;
output  [7:0] v13733_5_1_d0;
output  [11:0] v13733_5_0_address0;
output   v13733_5_0_ce0;
output   v13733_5_0_we0;
output  [7:0] v13733_5_0_d0;
output  [11:0] v13733_4_1_address0;
output   v13733_4_1_ce0;
output   v13733_4_1_we0;
output  [7:0] v13733_4_1_d0;
output  [11:0] v13733_4_0_address0;
output   v13733_4_0_ce0;
output   v13733_4_0_we0;
output  [7:0] v13733_4_0_d0;
output  [11:0] v13733_3_1_address0;
output   v13733_3_1_ce0;
output   v13733_3_1_we0;
output  [7:0] v13733_3_1_d0;
output  [11:0] v13733_3_0_address0;
output   v13733_3_0_ce0;
output   v13733_3_0_we0;
output  [7:0] v13733_3_0_d0;
output  [11:0] v13733_2_1_address0;
output   v13733_2_1_ce0;
output   v13733_2_1_we0;
output  [7:0] v13733_2_1_d0;
output  [11:0] v13733_2_0_address0;
output   v13733_2_0_ce0;
output   v13733_2_0_we0;
output  [7:0] v13733_2_0_d0;
output  [11:0] v13733_1_1_address0;
output   v13733_1_1_ce0;
output   v13733_1_1_we0;
output  [7:0] v13733_1_1_d0;
output  [11:0] v13733_1_0_address0;
output   v13733_1_0_ce0;
output   v13733_1_0_we0;
output  [7:0] v13733_1_0_d0;
output  [11:0] v13733_0_1_address0;
output   v13733_0_1_ce0;
output   v13733_0_1_we0;
output  [7:0] v13733_0_1_d0;
output  [11:0] v13733_0_0_address0;
output   v13733_0_0_ce0;
output   v13733_0_0_we0;
output  [7:0] v13733_0_0_d0;
input  [5:0] p_read;
output  [5:0] v5716_15_address0;
output   v5716_15_ce0;
input  [7:0] v5716_15_q0;
output  [5:0] v5716_14_address0;
output   v5716_14_ce0;
input  [7:0] v5716_14_q0;
output  [5:0] v5716_13_address0;
output   v5716_13_ce0;
input  [7:0] v5716_13_q0;
output  [5:0] v5716_12_address0;
output   v5716_12_ce0;
input  [7:0] v5716_12_q0;
output  [5:0] v5716_11_address0;
output   v5716_11_ce0;
input  [7:0] v5716_11_q0;
output  [5:0] v5716_10_address0;
output   v5716_10_ce0;
input  [7:0] v5716_10_q0;
output  [5:0] v5716_9_address0;
output   v5716_9_ce0;
input  [7:0] v5716_9_q0;
output  [5:0] v5716_8_address0;
output   v5716_8_ce0;
input  [7:0] v5716_8_q0;
output  [5:0] v5716_7_address0;
output   v5716_7_ce0;
input  [7:0] v5716_7_q0;
output  [5:0] v5716_6_address0;
output   v5716_6_ce0;
input  [7:0] v5716_6_q0;
output  [5:0] v5716_5_address0;
output   v5716_5_ce0;
input  [7:0] v5716_5_q0;
output  [5:0] v5716_4_address0;
output   v5716_4_ce0;
input  [7:0] v5716_4_q0;
output  [5:0] v5716_3_address0;
output   v5716_3_ce0;
input  [7:0] v5716_3_q0;
output  [5:0] v5716_2_address0;
output   v5716_2_ce0;
input  [7:0] v5716_2_q0;
output  [5:0] v5716_1_address0;
output   v5716_1_ce0;
input  [7:0] v5716_1_q0;
output  [5:0] v5716_address0;
output   v5716_ce0;
input  [7:0] v5716_q0;
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
wire   [0:0] icmp_ln6058_fu_956_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] p_udiv44_cast_cast_fu_698_p3;
reg   [3:0] p_udiv44_cast_cast_reg_1339;
wire   [2:0] zext_ln6977_5_cast_cast_cast_cast_fu_710_p3;
reg   [2:0] zext_ln6977_5_cast_cast_cast_cast_reg_1344;
reg   [2:0] zext_ln6977_5_cast_cast_cast_cast_reg_1344_pp0_iter1_reg;
wire   [1:0] v4912_mid2_fu_804_p3;
reg   [1:0] v4912_mid2_reg_1349;
reg   [1:0] v4912_mid2_reg_1349_pp0_iter1_reg;
wire   [5:0] empty_244_fu_862_p2;
reg   [5:0] empty_244_reg_1355;
reg   [5:0] tmp_208_reg_1361;
wire   [2:0] lshr_ln11_fu_882_p4;
reg   [2:0] lshr_ln11_reg_1367;
wire   [5:0] add_ln6062_fu_896_p2;
reg   [5:0] add_ln6062_reg_1372;
reg   [3:0] lshr_ln12_reg_1378;
reg   [3:0] lshr_ln12_reg_1378_pp0_iter1_reg;
wire   [0:0] icmp_ln6060_fu_944_p2;
reg   [0:0] icmp_ln6060_reg_1383;
wire   [0:0] icmp_ln6059_fu_950_p2;
reg   [0:0] icmp_ln6059_reg_1388;
reg   [0:0] icmp_ln6058_reg_1393;
wire   [9:0] add_ln6065_2_fu_1009_p2;
reg   [9:0] add_ln6065_2_reg_1397;
wire   [9:0] add_ln6093_2_fu_1037_p2;
reg   [9:0] add_ln6093_2_reg_1403;
wire   [3:0] empty_246_fu_1056_p2;
reg   [3:0] empty_246_reg_1409;
reg   [0:0] ap_phi_mux_icmp_ln6059291_phi_fu_639_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln6060290_phi_fu_649_p4;
wire   [63:0] zext_ln6062_3_fu_1070_p1;
wire   [63:0] zext_ln6093_5_fu_1254_p1;
wire   [63:0] zext_ln6091_2_fu_1271_p1;
wire   [63:0] zext_ln6065_3_fu_1288_p1;
wire   [63:0] zext_ln6063_1_fu_1299_p1;
reg   [5:0] indvar_flatten12285_fu_178;
wire   [5:0] add_ln6058_1_fu_938_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten12285_load;
reg   [5:0] v4910286_fu_182;
wire   [5:0] v4910_fu_784_p3;
reg   [5:0] ap_sig_allocacmp_v4910286_load;
reg   [4:0] indvar_flatten287_fu_186;
wire   [4:0] select_ln6059_1_fu_930_p3;
reg   [4:0] ap_sig_allocacmp_indvar_flatten287_load;
reg   [3:0] v4911288_fu_190;
wire   [3:0] v4911_fu_812_p3;
reg   [3:0] ap_sig_allocacmp_v4911288_load;
reg   [1:0] v4912289_fu_194;
wire   [1:0] v4912_fu_918_p2;
reg   [1:0] ap_sig_allocacmp_v4912289_load;
reg    v5716_15_ce0_local;
reg    v5716_14_ce0_local;
reg    v5716_13_ce0_local;
reg    v5716_12_ce0_local;
reg    v5716_11_ce0_local;
reg    v5716_10_ce0_local;
reg    v5716_9_ce0_local;
reg    v5716_8_ce0_local;
reg    v5716_7_ce0_local;
reg    v5716_6_ce0_local;
reg    v5716_5_ce0_local;
reg    v5716_4_ce0_local;
reg    v5716_3_ce0_local;
reg    v5716_2_ce0_local;
reg    v5716_1_ce0_local;
reg    v5716_ce0_local;
reg    v13733_0_0_we0_local;
reg    v13733_0_0_ce0_local;
reg    v13733_0_1_we0_local;
reg    v13733_0_1_ce0_local;
reg    v13733_1_0_we0_local;
reg    v13733_1_0_ce0_local;
reg    v13733_1_1_we0_local;
reg    v13733_1_1_ce0_local;
reg    v13733_2_0_we0_local;
reg    v13733_2_0_ce0_local;
reg    v13733_2_1_we0_local;
reg    v13733_2_1_ce0_local;
reg    v13733_3_0_we0_local;
reg    v13733_3_0_ce0_local;
reg    v13733_3_1_we0_local;
reg    v13733_3_1_ce0_local;
reg    v13733_4_0_we0_local;
reg    v13733_4_0_ce0_local;
reg    v13733_4_1_we0_local;
reg    v13733_4_1_ce0_local;
reg    v13733_5_0_we0_local;
reg    v13733_5_0_ce0_local;
reg    v13733_5_1_we0_local;
reg    v13733_5_1_ce0_local;
reg    v13733_6_0_we0_local;
reg    v13733_6_0_ce0_local;
reg    v13733_6_1_we0_local;
reg    v13733_6_1_ce0_local;
reg    v13733_7_0_we0_local;
reg    v13733_7_0_ce0_local;
reg    v13733_7_1_we0_local;
reg    v13733_7_1_ce0_local;
wire   [3:0] tmp_fu_656_p4;
wire   [0:0] tmp_204_fu_682_p3;
wire   [0:0] empty_fu_706_p1;
wire   [0:0] xor_ln6058_fu_772_p2;
wire   [5:0] add_ln6058_fu_758_p2;
wire   [3:0] select_ln6058_fu_764_p3;
wire   [0:0] and_ln6058_fu_778_p2;
wire   [0:0] empty_242_fu_798_p2;
wire   [3:0] add_ln6059_fu_792_p2;
wire   [2:0] lshr_ln_fu_824_p4;
wire   [4:0] tmp_205_fu_838_p3;
wire   [5:0] zext_ln6062_fu_846_p1;
wire   [5:0] zext_ln6058_1_fu_834_p1;
wire   [8:0] mul_i_fu_666_p3;
wire   [8:0] zext_ln6058_fu_820_p1;
wire   [5:0] p_udiv36_cast_fu_674_p3;
wire   [8:0] empty_243_fu_856_p2;
wire   [5:0] add_ln6062_2_fu_850_p2;
wire   [5:0] zext_ln6062_1_fu_892_p1;
wire   [4:0] zext_ln6977_cast_cast_fu_690_p3;
wire   [4:0] zext_ln6059_fu_878_p1;
wire   [4:0] empty_245_fu_902_p2;
wire   [4:0] add_ln6059_1_fu_924_p2;
wire   [8:0] tmp_206_fu_987_p3;
wire   [6:0] tmp_207_fu_998_p3;
wire   [9:0] zext_ln6065_fu_994_p1;
wire   [9:0] zext_ln6065_1_fu_1005_p1;
wire   [8:0] tmp_209_fu_1015_p3;
wire   [6:0] tmp_210_fu_1026_p3;
wire   [9:0] zext_ln6093_fu_1022_p1;
wire   [9:0] zext_ln6093_1_fu_1033_p1;
wire   [5:0] shl_ln6062_fu_1046_p2;
wire   [3:0] zext_ln6059_1_fu_1043_p1;
wire   [5:0] sub_ln6062_fu_1051_p2;
wire   [5:0] zext_ln6062_2_fu_1061_p1;
wire   [5:0] add_ln6062_1_fu_1064_p2;
wire   [9:0] zext_ln6091_fu_1090_p1;
wire   [9:0] add_ln6091_fu_1093_p2;
wire   [8:0] trunc_ln6091_fu_1098_p1;
wire   [10:0] tmp_211_fu_1102_p3;
wire   [11:0] tmp_212_fu_1110_p3;
wire   [11:0] zext_ln6091_1_fu_1118_p1;
wire   [9:0] add_ln6063_1_fu_1128_p2;
wire   [8:0] trunc_ln6063_fu_1133_p1;
wire   [10:0] tmp_213_fu_1137_p3;
wire   [11:0] tmp_214_fu_1145_p3;
wire   [11:0] zext_ln6063_fu_1153_p1;
wire   [9:0] zext_ln6093_2_fu_1163_p1;
wire   [9:0] add_ln6093_fu_1166_p2;
wire   [8:0] trunc_ln6093_fu_1171_p1;
wire   [10:0] tmp_215_fu_1175_p3;
wire   [11:0] tmp_216_fu_1183_p3;
wire   [11:0] zext_ln6093_3_fu_1191_p1;
wire   [9:0] add_ln6065_fu_1201_p2;
wire   [8:0] trunc_ln6065_fu_1206_p1;
wire   [10:0] tmp_217_fu_1210_p3;
wire   [11:0] tmp_218_fu_1218_p3;
wire   [11:0] zext_ln6065_2_fu_1226_p1;
wire   [2:0] zext_ln6060_fu_1236_p1;
wire   [2:0] add_ln6063_fu_1239_p2;
wire   [11:0] sub_ln6065_fu_1195_p2;
wire   [11:0] zext_ln6093_4_fu_1244_p1;
wire   [11:0] add_ln6093_1_fu_1248_p2;
wire   [11:0] sub_ln6063_fu_1122_p2;
wire   [11:0] add_ln6091_1_fu_1265_p2;
wire   [11:0] sub_ln6060_1_fu_1230_p2;
wire   [11:0] add_ln6065_1_fu_1282_p2;
wire   [11:0] sub_ln6060_fu_1157_p2;
wire   [11:0] add_ln6063_2_fu_1293_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_917;
reg    ap_condition_300;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12285_fu_178 = 6'd0;
#0 v4910286_fu_182 = 6'd0;
#0 indvar_flatten287_fu_186 = 5'd0;
#0 v4911288_fu_190 = 4'd0;
#0 v4912289_fu_194 = 2'd0;
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
    if ((1'b1 == ap_condition_300)) begin
        indvar_flatten12285_fu_178 <= add_ln6058_1_fu_938_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_300)) begin
    indvar_flatten287_fu_186 <= select_ln6059_1_fu_930_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_300)) begin
    v4910286_fu_182 <= v4910_fu_784_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_300)) begin
    v4911288_fu_190 <= v4911_fu_812_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_300)) begin
    v4912289_fu_194 <= v4912_fu_918_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln6062_reg_1372 <= add_ln6062_fu_896_p2;
        add_ln6065_2_reg_1397[9 : 1] <= add_ln6065_2_fu_1009_p2[9 : 1];
        add_ln6093_2_reg_1403[9 : 1] <= add_ln6093_2_fu_1037_p2[9 : 1];
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_244_reg_1355 <= empty_244_fu_862_p2;
        empty_246_reg_1409 <= empty_246_fu_1056_p2;
        icmp_ln6058_reg_1393 <= icmp_ln6058_fu_956_p2;
        lshr_ln11_reg_1367 <= {{v4911_fu_812_p3[3:1]}};
        lshr_ln12_reg_1378 <= {{empty_245_fu_902_p2[4:1]}};
        lshr_ln12_reg_1378_pp0_iter1_reg <= lshr_ln12_reg_1378;
        p_udiv44_cast_cast_reg_1339[0] <= p_udiv44_cast_cast_fu_698_p3[0];
p_udiv44_cast_cast_reg_1339[2] <= p_udiv44_cast_cast_fu_698_p3[2];
        tmp_208_reg_1361 <= {{empty_243_fu_856_p2[8:3]}};
        v4912_mid2_reg_1349 <= v4912_mid2_fu_804_p3;
        v4912_mid2_reg_1349_pp0_iter1_reg <= v4912_mid2_reg_1349;
        zext_ln6977_5_cast_cast_cast_cast_reg_1344[1 : 0] <= zext_ln6977_5_cast_cast_cast_cast_fu_710_p3[1 : 0];
        zext_ln6977_5_cast_cast_cast_cast_reg_1344_pp0_iter1_reg[1 : 0] <= zext_ln6977_5_cast_cast_cast_cast_reg_1344[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6059_reg_1388 <= icmp_ln6059_fu_950_p2;
        icmp_ln6060_reg_1383 <= icmp_ln6060_fu_944_p2;
    end
end
always @ (*) begin
    if (((icmp_ln6058_fu_956_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_917)) begin
            ap_phi_mux_icmp_ln6059291_phi_fu_639_p4 = icmp_ln6059_reg_1388;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln6059291_phi_fu_639_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln6059291_phi_fu_639_p4 = icmp_ln6059_reg_1388;
        end
    end else begin
        ap_phi_mux_icmp_ln6059291_phi_fu_639_p4 = icmp_ln6059_reg_1388;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_917)) begin
            ap_phi_mux_icmp_ln6060290_phi_fu_649_p4 = icmp_ln6060_reg_1383;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln6060290_phi_fu_649_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln6060290_phi_fu_649_p4 = icmp_ln6060_reg_1383;
        end
    end else begin
        ap_phi_mux_icmp_ln6060290_phi_fu_649_p4 = icmp_ln6060_reg_1383;
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
        ap_sig_allocacmp_indvar_flatten12285_load = indvar_flatten12285_fu_178;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten287_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten287_load = indvar_flatten287_fu_186;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4910286_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v4910286_load = v4910286_fu_182;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4911288_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v4911288_load = v4911288_fu_190;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4912289_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v4912289_load = v4912289_fu_194;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_0_0_ce0_local = 1'b1;
    end else begin
        v13733_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_0_0_we0_local = 1'b1;
    end else begin
        v13733_0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_0_1_ce0_local = 1'b1;
    end else begin
        v13733_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_0_1_we0_local = 1'b1;
    end else begin
        v13733_0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_1_0_ce0_local = 1'b1;
    end else begin
        v13733_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_1_0_we0_local = 1'b1;
    end else begin
        v13733_1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_1_1_ce0_local = 1'b1;
    end else begin
        v13733_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_1_1_we0_local = 1'b1;
    end else begin
        v13733_1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_2_0_ce0_local = 1'b1;
    end else begin
        v13733_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_2_0_we0_local = 1'b1;
    end else begin
        v13733_2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_2_1_ce0_local = 1'b1;
    end else begin
        v13733_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_2_1_we0_local = 1'b1;
    end else begin
        v13733_2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_3_0_ce0_local = 1'b1;
    end else begin
        v13733_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_3_0_we0_local = 1'b1;
    end else begin
        v13733_3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_3_1_ce0_local = 1'b1;
    end else begin
        v13733_3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_3_1_we0_local = 1'b1;
    end else begin
        v13733_3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_4_0_ce0_local = 1'b1;
    end else begin
        v13733_4_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_4_0_we0_local = 1'b1;
    end else begin
        v13733_4_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_4_1_ce0_local = 1'b1;
    end else begin
        v13733_4_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_4_1_we0_local = 1'b1;
    end else begin
        v13733_4_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_5_0_ce0_local = 1'b1;
    end else begin
        v13733_5_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_5_0_we0_local = 1'b1;
    end else begin
        v13733_5_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_5_1_ce0_local = 1'b1;
    end else begin
        v13733_5_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_5_1_we0_local = 1'b1;
    end else begin
        v13733_5_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_6_0_ce0_local = 1'b1;
    end else begin
        v13733_6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_6_0_we0_local = 1'b1;
    end else begin
        v13733_6_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_6_1_ce0_local = 1'b1;
    end else begin
        v13733_6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_6_1_we0_local = 1'b1;
    end else begin
        v13733_6_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_7_0_ce0_local = 1'b1;
    end else begin
        v13733_7_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_7_0_we0_local = 1'b1;
    end else begin
        v13733_7_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_7_1_ce0_local = 1'b1;
    end else begin
        v13733_7_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13733_7_1_we0_local = 1'b1;
    end else begin
        v13733_7_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5716_10_ce0_local = 1'b1;
    end else begin
        v5716_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5716_11_ce0_local = 1'b1;
    end else begin
        v5716_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5716_12_ce0_local = 1'b1;
    end else begin
        v5716_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5716_13_ce0_local = 1'b1;
    end else begin
        v5716_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5716_14_ce0_local = 1'b1;
    end else begin
        v5716_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5716_15_ce0_local = 1'b1;
    end else begin
        v5716_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5716_1_ce0_local = 1'b1;
    end else begin
        v5716_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5716_2_ce0_local = 1'b1;
    end else begin
        v5716_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5716_3_ce0_local = 1'b1;
    end else begin
        v5716_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5716_4_ce0_local = 1'b1;
    end else begin
        v5716_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5716_5_ce0_local = 1'b1;
    end else begin
        v5716_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5716_6_ce0_local = 1'b1;
    end else begin
        v5716_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5716_7_ce0_local = 1'b1;
    end else begin
        v5716_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5716_8_ce0_local = 1'b1;
    end else begin
        v5716_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5716_9_ce0_local = 1'b1;
    end else begin
        v5716_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5716_ce0_local = 1'b1;
    end else begin
        v5716_ce0_local = 1'b0;
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
assign add_ln6058_1_fu_938_p2 = (ap_sig_allocacmp_indvar_flatten12285_load + 6'd1);
assign add_ln6058_fu_758_p2 = (ap_sig_allocacmp_v4910286_load + 6'd8);
assign add_ln6059_1_fu_924_p2 = (ap_sig_allocacmp_indvar_flatten287_load + 5'd1);
assign add_ln6059_fu_792_p2 = (select_ln6058_fu_764_p3 + 4'd2);
assign add_ln6062_1_fu_1064_p2 = (sub_ln6062_fu_1051_p2 + zext_ln6062_2_fu_1061_p1);
assign add_ln6062_2_fu_850_p2 = (zext_ln6062_fu_846_p1 + zext_ln6058_1_fu_834_p1);
assign add_ln6062_fu_896_p2 = (add_ln6062_2_fu_850_p2 + zext_ln6062_1_fu_892_p1);
assign add_ln6063_1_fu_1128_p2 = (add_ln6065_2_reg_1397 + zext_ln6091_fu_1090_p1);
assign add_ln6063_2_fu_1293_p2 = (sub_ln6060_fu_1157_p2 + zext_ln6093_4_fu_1244_p1);
assign add_ln6063_fu_1239_p2 = (zext_ln6977_5_cast_cast_cast_cast_reg_1344_pp0_iter1_reg + zext_ln6060_fu_1236_p1);
assign add_ln6065_1_fu_1282_p2 = (sub_ln6060_1_fu_1230_p2 + zext_ln6093_4_fu_1244_p1);
assign add_ln6065_2_fu_1009_p2 = (zext_ln6065_fu_994_p1 + zext_ln6065_1_fu_1005_p1);
assign add_ln6065_fu_1201_p2 = (add_ln6065_2_reg_1397 + zext_ln6093_2_fu_1163_p1);
assign add_ln6091_1_fu_1265_p2 = (sub_ln6063_fu_1122_p2 + zext_ln6093_4_fu_1244_p1);
assign add_ln6091_fu_1093_p2 = (add_ln6093_2_reg_1403 + zext_ln6091_fu_1090_p1);
assign add_ln6093_1_fu_1248_p2 = (sub_ln6065_fu_1195_p2 + zext_ln6093_4_fu_1244_p1);
assign add_ln6093_2_fu_1037_p2 = (zext_ln6093_fu_1022_p1 + zext_ln6093_1_fu_1033_p1);
assign add_ln6093_fu_1166_p2 = (add_ln6093_2_reg_1403 + zext_ln6093_2_fu_1163_p1);
assign and_ln6058_fu_778_p2 = (xor_ln6058_fu_772_p2 & ap_phi_mux_icmp_ln6060290_phi_fu_649_p4);
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
    ap_condition_300 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_917 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln6058_reg_1393 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_242_fu_798_p2 = (ap_phi_mux_icmp_ln6059291_phi_fu_639_p4 | and_ln6058_fu_778_p2);
assign empty_243_fu_856_p2 = (mul_i_fu_666_p3 + zext_ln6058_fu_820_p1);
assign empty_244_fu_862_p2 = (zext_ln6058_1_fu_834_p1 + p_udiv36_cast_fu_674_p3);
assign empty_245_fu_902_p2 = (zext_ln6977_cast_cast_fu_690_p3 + zext_ln6059_fu_878_p1);
assign empty_246_fu_1056_p2 = (zext_ln6059_1_fu_1043_p1 + p_udiv44_cast_cast_reg_1339);
assign empty_fu_706_p1 = p_read[0:0];
assign icmp_ln6058_fu_956_p2 = ((ap_sig_allocacmp_indvar_flatten12285_load == 6'd59) ? 1'b1 : 1'b0);
assign icmp_ln6059_fu_950_p2 = ((select_ln6059_1_fu_930_p3 == 5'd15) ? 1'b1 : 1'b0);
assign icmp_ln6060_fu_944_p2 = ((v4912_fu_918_p2 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln11_fu_882_p4 = {{v4911_fu_812_p3[3:1]}};
assign lshr_ln_fu_824_p4 = {{v4910_fu_784_p3[5:3]}};
assign mul_i_fu_666_p3 = {{tmp_fu_656_p4}, {5'd0}};
assign p_udiv36_cast_fu_674_p3 = {{tmp_fu_656_p4}, {2'd0}};
assign p_udiv44_cast_cast_fu_698_p3 = ((tmp_204_fu_682_p3[0:0] == 1'b1) ? 4'd5 : 4'd0);
assign select_ln6058_fu_764_p3 = ((ap_phi_mux_icmp_ln6059291_phi_fu_639_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v4911288_load);
assign select_ln6059_1_fu_930_p3 = ((ap_phi_mux_icmp_ln6059291_phi_fu_639_p4[0:0] == 1'b1) ? 5'd1 : add_ln6059_1_fu_924_p2);
assign shl_ln6062_fu_1046_p2 = add_ln6062_reg_1372 << 6'd2;
assign sub_ln6060_1_fu_1230_p2 = (tmp_218_fu_1218_p3 - zext_ln6065_2_fu_1226_p1);
assign sub_ln6060_fu_1157_p2 = (tmp_214_fu_1145_p3 - zext_ln6063_fu_1153_p1);
assign sub_ln6062_fu_1051_p2 = (shl_ln6062_fu_1046_p2 - add_ln6062_reg_1372);
assign sub_ln6063_fu_1122_p2 = (tmp_212_fu_1110_p3 - zext_ln6091_1_fu_1118_p1);
assign sub_ln6065_fu_1195_p2 = (tmp_216_fu_1183_p3 - zext_ln6093_3_fu_1191_p1);
assign tmp_204_fu_682_p3 = p_read[32'd1];
assign tmp_205_fu_838_p3 = {{lshr_ln_fu_824_p4}, {2'd0}};
assign tmp_206_fu_987_p3 = {{empty_244_reg_1355}, {3'd0}};
assign tmp_207_fu_998_p3 = {{empty_244_reg_1355}, {1'd0}};
assign tmp_209_fu_1015_p3 = {{tmp_208_reg_1361}, {3'd0}};
assign tmp_210_fu_1026_p3 = {{tmp_208_reg_1361}, {1'd0}};
assign tmp_211_fu_1102_p3 = {{add_ln6091_fu_1093_p2}, {1'd0}};
assign tmp_212_fu_1110_p3 = {{trunc_ln6091_fu_1098_p1}, {3'd0}};
assign tmp_213_fu_1137_p3 = {{add_ln6063_1_fu_1128_p2}, {1'd0}};
assign tmp_214_fu_1145_p3 = {{trunc_ln6063_fu_1133_p1}, {3'd0}};
assign tmp_215_fu_1175_p3 = {{add_ln6093_fu_1166_p2}, {1'd0}};
assign tmp_216_fu_1183_p3 = {{trunc_ln6093_fu_1171_p1}, {3'd0}};
assign tmp_217_fu_1210_p3 = {{add_ln6065_fu_1201_p2}, {1'd0}};
assign tmp_218_fu_1218_p3 = {{trunc_ln6065_fu_1206_p1}, {3'd0}};
assign tmp_fu_656_p4 = {{p_read[5:2]}};
assign trunc_ln6063_fu_1133_p1 = add_ln6063_1_fu_1128_p2[8:0];
assign trunc_ln6065_fu_1206_p1 = add_ln6065_fu_1201_p2[8:0];
assign trunc_ln6091_fu_1098_p1 = add_ln6091_fu_1093_p2[8:0];
assign trunc_ln6093_fu_1171_p1 = add_ln6093_fu_1166_p2[8:0];
assign v13733_0_0_address0 = zext_ln6063_1_fu_1299_p1;
assign v13733_0_0_ce0 = v13733_0_0_ce0_local;
assign v13733_0_0_d0 = v5716_15_q0;
assign v13733_0_0_we0 = v13733_0_0_we0_local;
assign v13733_0_1_address0 = zext_ln6065_3_fu_1288_p1;
assign v13733_0_1_ce0 = v13733_0_1_ce0_local;
assign v13733_0_1_d0 = v5716_14_q0;
assign v13733_0_1_we0 = v13733_0_1_we0_local;
assign v13733_1_0_address0 = zext_ln6091_2_fu_1271_p1;
assign v13733_1_0_ce0 = v13733_1_0_ce0_local;
assign v13733_1_0_d0 = v5716_13_q0;
assign v13733_1_0_we0 = v13733_1_0_we0_local;
assign v13733_1_1_address0 = zext_ln6093_5_fu_1254_p1;
assign v13733_1_1_ce0 = v13733_1_1_ce0_local;
assign v13733_1_1_d0 = v5716_12_q0;
assign v13733_1_1_we0 = v13733_1_1_we0_local;
assign v13733_2_0_address0 = zext_ln6091_2_fu_1271_p1;
assign v13733_2_0_ce0 = v13733_2_0_ce0_local;
assign v13733_2_0_d0 = v5716_11_q0;
assign v13733_2_0_we0 = v13733_2_0_we0_local;
assign v13733_2_1_address0 = zext_ln6093_5_fu_1254_p1;
assign v13733_2_1_ce0 = v13733_2_1_ce0_local;
assign v13733_2_1_d0 = v5716_10_q0;
assign v13733_2_1_we0 = v13733_2_1_we0_local;
assign v13733_3_0_address0 = zext_ln6091_2_fu_1271_p1;
assign v13733_3_0_ce0 = v13733_3_0_ce0_local;
assign v13733_3_0_d0 = v5716_9_q0;
assign v13733_3_0_we0 = v13733_3_0_we0_local;
assign v13733_3_1_address0 = zext_ln6093_5_fu_1254_p1;
assign v13733_3_1_ce0 = v13733_3_1_ce0_local;
assign v13733_3_1_d0 = v5716_8_q0;
assign v13733_3_1_we0 = v13733_3_1_we0_local;
assign v13733_4_0_address0 = zext_ln6091_2_fu_1271_p1;
assign v13733_4_0_ce0 = v13733_4_0_ce0_local;
assign v13733_4_0_d0 = v5716_7_q0;
assign v13733_4_0_we0 = v13733_4_0_we0_local;
assign v13733_4_1_address0 = zext_ln6093_5_fu_1254_p1;
assign v13733_4_1_ce0 = v13733_4_1_ce0_local;
assign v13733_4_1_d0 = v5716_6_q0;
assign v13733_4_1_we0 = v13733_4_1_we0_local;
assign v13733_5_0_address0 = zext_ln6091_2_fu_1271_p1;
assign v13733_5_0_ce0 = v13733_5_0_ce0_local;
assign v13733_5_0_d0 = v5716_5_q0;
assign v13733_5_0_we0 = v13733_5_0_we0_local;
assign v13733_5_1_address0 = zext_ln6093_5_fu_1254_p1;
assign v13733_5_1_ce0 = v13733_5_1_ce0_local;
assign v13733_5_1_d0 = v5716_4_q0;
assign v13733_5_1_we0 = v13733_5_1_we0_local;
assign v13733_6_0_address0 = zext_ln6091_2_fu_1271_p1;
assign v13733_6_0_ce0 = v13733_6_0_ce0_local;
assign v13733_6_0_d0 = v5716_3_q0;
assign v13733_6_0_we0 = v13733_6_0_we0_local;
assign v13733_6_1_address0 = zext_ln6093_5_fu_1254_p1;
assign v13733_6_1_ce0 = v13733_6_1_ce0_local;
assign v13733_6_1_d0 = v5716_2_q0;
assign v13733_6_1_we0 = v13733_6_1_we0_local;
assign v13733_7_0_address0 = zext_ln6091_2_fu_1271_p1;
assign v13733_7_0_ce0 = v13733_7_0_ce0_local;
assign v13733_7_0_d0 = v5716_1_q0;
assign v13733_7_0_we0 = v13733_7_0_we0_local;
assign v13733_7_1_address0 = zext_ln6093_5_fu_1254_p1;
assign v13733_7_1_ce0 = v13733_7_1_ce0_local;
assign v13733_7_1_d0 = v5716_q0;
assign v13733_7_1_we0 = v13733_7_1_we0_local;
assign v4910_fu_784_p3 = ((ap_phi_mux_icmp_ln6059291_phi_fu_639_p4[0:0] == 1'b1) ? add_ln6058_fu_758_p2 : ap_sig_allocacmp_v4910286_load);
assign v4911_fu_812_p3 = ((and_ln6058_fu_778_p2[0:0] == 1'b1) ? add_ln6059_fu_792_p2 : select_ln6058_fu_764_p3);
assign v4912_fu_918_p2 = (v4912_mid2_fu_804_p3 + 2'd1);
assign v4912_mid2_fu_804_p3 = ((empty_242_fu_798_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v4912289_load);
assign v5716_10_address0 = zext_ln6062_3_fu_1070_p1;
assign v5716_10_ce0 = v5716_10_ce0_local;
assign v5716_11_address0 = zext_ln6062_3_fu_1070_p1;
assign v5716_11_ce0 = v5716_11_ce0_local;
assign v5716_12_address0 = zext_ln6062_3_fu_1070_p1;
assign v5716_12_ce0 = v5716_12_ce0_local;
assign v5716_13_address0 = zext_ln6062_3_fu_1070_p1;
assign v5716_13_ce0 = v5716_13_ce0_local;
assign v5716_14_address0 = zext_ln6062_3_fu_1070_p1;
assign v5716_14_ce0 = v5716_14_ce0_local;
assign v5716_15_address0 = zext_ln6062_3_fu_1070_p1;
assign v5716_15_ce0 = v5716_15_ce0_local;
assign v5716_1_address0 = zext_ln6062_3_fu_1070_p1;
assign v5716_1_ce0 = v5716_1_ce0_local;
assign v5716_2_address0 = zext_ln6062_3_fu_1070_p1;
assign v5716_2_ce0 = v5716_2_ce0_local;
assign v5716_3_address0 = zext_ln6062_3_fu_1070_p1;
assign v5716_3_ce0 = v5716_3_ce0_local;
assign v5716_4_address0 = zext_ln6062_3_fu_1070_p1;
assign v5716_4_ce0 = v5716_4_ce0_local;
assign v5716_5_address0 = zext_ln6062_3_fu_1070_p1;
assign v5716_5_ce0 = v5716_5_ce0_local;
assign v5716_6_address0 = zext_ln6062_3_fu_1070_p1;
assign v5716_6_ce0 = v5716_6_ce0_local;
assign v5716_7_address0 = zext_ln6062_3_fu_1070_p1;
assign v5716_7_ce0 = v5716_7_ce0_local;
assign v5716_8_address0 = zext_ln6062_3_fu_1070_p1;
assign v5716_8_ce0 = v5716_8_ce0_local;
assign v5716_9_address0 = zext_ln6062_3_fu_1070_p1;
assign v5716_9_ce0 = v5716_9_ce0_local;
assign v5716_address0 = zext_ln6062_3_fu_1070_p1;
assign v5716_ce0 = v5716_ce0_local;
assign xor_ln6058_fu_772_p2 = (ap_phi_mux_icmp_ln6059291_phi_fu_639_p4 ^ 1'd1);
assign zext_ln6058_1_fu_834_p1 = lshr_ln_fu_824_p4;
assign zext_ln6058_fu_820_p1 = v4910_fu_784_p3;
assign zext_ln6059_1_fu_1043_p1 = lshr_ln11_reg_1367;
assign zext_ln6059_fu_878_p1 = v4911_fu_812_p3;
assign zext_ln6060_fu_1236_p1 = v4912_mid2_reg_1349_pp0_iter1_reg;
assign zext_ln6062_1_fu_892_p1 = lshr_ln11_fu_882_p4;
assign zext_ln6062_2_fu_1061_p1 = v4912_mid2_reg_1349;
assign zext_ln6062_3_fu_1070_p1 = add_ln6062_1_fu_1064_p2;
assign zext_ln6062_fu_846_p1 = tmp_205_fu_838_p3;
assign zext_ln6063_1_fu_1299_p1 = add_ln6063_2_fu_1293_p2;
assign zext_ln6063_fu_1153_p1 = tmp_213_fu_1137_p3;
assign zext_ln6065_1_fu_1005_p1 = tmp_207_fu_998_p3;
assign zext_ln6065_2_fu_1226_p1 = tmp_217_fu_1210_p3;
assign zext_ln6065_3_fu_1288_p1 = add_ln6065_1_fu_1282_p2;
assign zext_ln6065_fu_994_p1 = tmp_206_fu_987_p3;
assign zext_ln6091_1_fu_1118_p1 = tmp_211_fu_1102_p3;
assign zext_ln6091_2_fu_1271_p1 = add_ln6091_1_fu_1265_p2;
assign zext_ln6091_fu_1090_p1 = empty_246_reg_1409;
assign zext_ln6093_1_fu_1033_p1 = tmp_210_fu_1026_p3;
assign zext_ln6093_2_fu_1163_p1 = lshr_ln12_reg_1378_pp0_iter1_reg;
assign zext_ln6093_3_fu_1191_p1 = tmp_215_fu_1175_p3;
assign zext_ln6093_4_fu_1244_p1 = add_ln6063_fu_1239_p2;
assign zext_ln6093_5_fu_1254_p1 = add_ln6093_1_fu_1248_p2;
assign zext_ln6093_fu_1022_p1 = tmp_209_fu_1015_p3;
assign zext_ln6977_5_cast_cast_cast_cast_fu_710_p3 = ((empty_fu_706_p1[0:0] == 1'b1) ? 3'd3 : 3'd0);
assign zext_ln6977_cast_cast_fu_690_p3 = ((tmp_204_fu_682_p3[0:0] == 1'b1) ? 5'd10 : 5'd0);
always @ (posedge ap_clk) begin
    p_udiv44_cast_cast_reg_1339[1] <= 1'b0;
    p_udiv44_cast_cast_reg_1339[3] <= 1'b0;
    zext_ln6977_5_cast_cast_cast_cast_reg_1344[2] <= 1'b0;
    zext_ln6977_5_cast_cast_cast_cast_reg_1344_pp0_iter1_reg[2] <= 1'b0;
    add_ln6065_2_reg_1397[0] <= 1'b0;
    add_ln6093_2_reg_1403[0] <= 1'b0;
end
endmodule 