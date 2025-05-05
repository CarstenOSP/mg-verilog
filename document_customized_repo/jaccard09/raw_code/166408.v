module forward_dataflow_in_loop_VITIS_LOOP_7043_1_Loop_VITIS_LOOP_6977_1_proc108 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v5715_address0,v5715_ce0,v5715_we0,v5715_d0,v5715_1_address0,v5715_1_ce0,v5715_1_we0,v5715_1_d0,v5715_2_address0,v5715_2_ce0,v5715_2_we0,v5715_2_d0,v5715_3_address0,v5715_3_ce0,v5715_3_we0,v5715_3_d0,v5715_4_address0,v5715_4_ce0,v5715_4_we0,v5715_4_d0,v5715_5_address0,v5715_5_ce0,v5715_5_we0,v5715_5_d0,v5715_6_address0,v5715_6_ce0,v5715_6_we0,v5715_6_d0,v5715_7_address0,v5715_7_ce0,v5715_7_we0,v5715_7_d0,v5715_8_address0,v5715_8_ce0,v5715_8_we0,v5715_8_d0,v5715_9_address0,v5715_9_ce0,v5715_9_we0,v5715_9_d0,v5715_10_address0,v5715_10_ce0,v5715_10_we0,v5715_10_d0,v5715_11_address0,v5715_11_ce0,v5715_11_we0,v5715_11_d0,v5715_12_address0,v5715_12_ce0,v5715_12_we0,v5715_12_d0,v5715_13_address0,v5715_13_ce0,v5715_13_we0,v5715_13_d0,v5715_14_address0,v5715_14_ce0,v5715_14_we0,v5715_14_d0,v5715_15_address0,v5715_15_ce0,v5715_15_we0,v5715_15_d0,v5706_0,v13734_0_0_address0,v13734_0_0_ce0,v13734_0_0_q0,v13734_0_1_address0,v13734_0_1_ce0,v13734_0_1_q0,v13734_1_0_address0,v13734_1_0_ce0,v13734_1_0_q0,v13734_1_1_address0,v13734_1_1_ce0,v13734_1_1_q0,v13734_2_0_address0,v13734_2_0_ce0,v13734_2_0_q0,v13734_2_1_address0,v13734_2_1_ce0,v13734_2_1_q0,v13734_3_0_address0,v13734_3_0_ce0,v13734_3_0_q0,v13734_3_1_address0,v13734_3_1_ce0,v13734_3_1_q0,v13734_4_0_address0,v13734_4_0_ce0,v13734_4_0_q0,v13734_4_1_address0,v13734_4_1_ce0,v13734_4_1_q0,v13734_5_0_address0,v13734_5_0_ce0,v13734_5_0_q0,v13734_5_1_address0,v13734_5_1_ce0,v13734_5_1_q0,v13734_6_0_address0,v13734_6_0_ce0,v13734_6_0_q0,v13734_6_1_address0,v13734_6_1_ce0,v13734_6_1_q0,v13734_7_0_address0,v13734_7_0_ce0,v13734_7_0_q0,v13734_7_1_address0,v13734_7_1_ce0,v13734_7_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [5:0] v5715_address0;
output   v5715_ce0;
output   v5715_we0;
output  [7:0] v5715_d0;
output  [5:0] v5715_1_address0;
output   v5715_1_ce0;
output   v5715_1_we0;
output  [7:0] v5715_1_d0;
output  [5:0] v5715_2_address0;
output   v5715_2_ce0;
output   v5715_2_we0;
output  [7:0] v5715_2_d0;
output  [5:0] v5715_3_address0;
output   v5715_3_ce0;
output   v5715_3_we0;
output  [7:0] v5715_3_d0;
output  [5:0] v5715_4_address0;
output   v5715_4_ce0;
output   v5715_4_we0;
output  [7:0] v5715_4_d0;
output  [5:0] v5715_5_address0;
output   v5715_5_ce0;
output   v5715_5_we0;
output  [7:0] v5715_5_d0;
output  [5:0] v5715_6_address0;
output   v5715_6_ce0;
output   v5715_6_we0;
output  [7:0] v5715_6_d0;
output  [5:0] v5715_7_address0;
output   v5715_7_ce0;
output   v5715_7_we0;
output  [7:0] v5715_7_d0;
output  [5:0] v5715_8_address0;
output   v5715_8_ce0;
output   v5715_8_we0;
output  [7:0] v5715_8_d0;
output  [5:0] v5715_9_address0;
output   v5715_9_ce0;
output   v5715_9_we0;
output  [7:0] v5715_9_d0;
output  [5:0] v5715_10_address0;
output   v5715_10_ce0;
output   v5715_10_we0;
output  [7:0] v5715_10_d0;
output  [5:0] v5715_11_address0;
output   v5715_11_ce0;
output   v5715_11_we0;
output  [7:0] v5715_11_d0;
output  [5:0] v5715_12_address0;
output   v5715_12_ce0;
output   v5715_12_we0;
output  [7:0] v5715_12_d0;
output  [5:0] v5715_13_address0;
output   v5715_13_ce0;
output   v5715_13_we0;
output  [7:0] v5715_13_d0;
output  [5:0] v5715_14_address0;
output   v5715_14_ce0;
output   v5715_14_we0;
output  [7:0] v5715_14_d0;
output  [5:0] v5715_15_address0;
output   v5715_15_ce0;
output   v5715_15_we0;
output  [7:0] v5715_15_d0;
input  [13:0] v5706_0;
output  [11:0] v13734_0_0_address0;
output   v13734_0_0_ce0;
input  [7:0] v13734_0_0_q0;
output  [11:0] v13734_0_1_address0;
output   v13734_0_1_ce0;
input  [7:0] v13734_0_1_q0;
output  [11:0] v13734_1_0_address0;
output   v13734_1_0_ce0;
input  [7:0] v13734_1_0_q0;
output  [11:0] v13734_1_1_address0;
output   v13734_1_1_ce0;
input  [7:0] v13734_1_1_q0;
output  [11:0] v13734_2_0_address0;
output   v13734_2_0_ce0;
input  [7:0] v13734_2_0_q0;
output  [11:0] v13734_2_1_address0;
output   v13734_2_1_ce0;
input  [7:0] v13734_2_1_q0;
output  [11:0] v13734_3_0_address0;
output   v13734_3_0_ce0;
input  [7:0] v13734_3_0_q0;
output  [11:0] v13734_3_1_address0;
output   v13734_3_1_ce0;
input  [7:0] v13734_3_1_q0;
output  [11:0] v13734_4_0_address0;
output   v13734_4_0_ce0;
input  [7:0] v13734_4_0_q0;
output  [11:0] v13734_4_1_address0;
output   v13734_4_1_ce0;
input  [7:0] v13734_4_1_q0;
output  [11:0] v13734_5_0_address0;
output   v13734_5_0_ce0;
input  [7:0] v13734_5_0_q0;
output  [11:0] v13734_5_1_address0;
output   v13734_5_1_ce0;
input  [7:0] v13734_5_1_q0;
output  [11:0] v13734_6_0_address0;
output   v13734_6_0_ce0;
input  [7:0] v13734_6_0_q0;
output  [11:0] v13734_6_1_address0;
output   v13734_6_1_ce0;
input  [7:0] v13734_6_1_q0;
output  [11:0] v13734_7_0_address0;
output   v13734_7_0_ce0;
input  [7:0] v13734_7_0_q0;
output  [11:0] v13734_7_1_address0;
output   v13734_7_1_ce0;
input  [7:0] v13734_7_1_q0;
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
wire   [0:0] icmp_ln6977_fu_1026_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [2:0] zext_ln6977_1_cast_cast_cast_cast_fu_710_p3;
reg   [2:0] zext_ln6977_1_cast_cast_cast_cast_reg_1344;
wire   [1:0] v5682_mid2_fu_804_p3;
reg   [1:0] v5682_mid2_reg_1349;
wire   [9:0] add_ln6982_2_fu_892_p2;
reg   [9:0] add_ln6982_2_reg_1355;
wire   [9:0] add_ln6986_2_fu_932_p2;
reg   [9:0] add_ln6986_2_reg_1361;
wire   [5:0] add_ln7012_fu_960_p2;
reg   [5:0] add_ln7012_reg_1367;
wire   [3:0] empty_221_fu_972_p2;
reg   [3:0] empty_221_reg_1373;
reg   [3:0] tmp_s_reg_1378;
wire   [0:0] icmp_ln6979_fu_1014_p2;
reg   [0:0] icmp_ln6979_reg_1383;
wire   [0:0] icmp_ln6978_fu_1020_p2;
reg   [0:0] icmp_ln6978_reg_1388;
reg   [0:0] icmp_ln6977_reg_1393;
wire   [5:0] add_ln7012_1_fu_1216_p2;
reg   [5:0] add_ln7012_1_reg_1397;
reg   [0:0] ap_phi_mux_icmp_ln6978195_phi_fu_639_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln6979194_phi_fu_649_p4;
wire   [63:0] zext_ln6982_5_fu_1240_p1;
wire   [63:0] zext_ln6984_2_fu_1251_p1;
wire   [63:0] zext_ln6986_3_fu_1262_p1;
wire   [63:0] zext_ln6988_1_fu_1279_p1;
wire   [63:0] zext_ln7012_3_fu_1290_p1;
reg   [5:0] indvar_flatten12189_fu_178;
wire   [5:0] add_ln6977_1_fu_1008_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten12189_load;
reg   [5:0] v5680190_fu_182;
wire   [5:0] v5680_fu_784_p3;
reg   [5:0] ap_sig_allocacmp_v5680190_load;
reg   [4:0] indvar_flatten191_fu_186;
wire   [4:0] select_ln6978_1_fu_1000_p3;
reg   [4:0] ap_sig_allocacmp_indvar_flatten191_load;
reg   [3:0] v5681192_fu_190;
wire   [3:0] v5681_fu_812_p3;
reg   [3:0] ap_sig_allocacmp_v5681192_load;
reg   [1:0] v5682193_fu_194;
wire   [1:0] v5682_fu_988_p2;
reg   [1:0] ap_sig_allocacmp_v5682193_load;
reg    v13734_0_0_ce0_local;
reg    v13734_0_1_ce0_local;
reg    v13734_1_0_ce0_local;
reg    v13734_1_1_ce0_local;
reg    v13734_2_0_ce0_local;
reg    v13734_2_1_ce0_local;
reg    v13734_3_0_ce0_local;
reg    v13734_3_1_ce0_local;
reg    v13734_4_0_ce0_local;
reg    v13734_4_1_ce0_local;
reg    v13734_5_0_ce0_local;
reg    v13734_5_1_ce0_local;
reg    v13734_6_0_ce0_local;
reg    v13734_6_1_ce0_local;
reg    v13734_7_0_ce0_local;
reg    v13734_7_1_ce0_local;
reg    v5715_15_we0_local;
reg    v5715_15_ce0_local;
reg    v5715_14_we0_local;
reg    v5715_14_ce0_local;
reg    v5715_13_we0_local;
reg    v5715_13_ce0_local;
reg    v5715_12_we0_local;
reg    v5715_12_ce0_local;
reg    v5715_11_we0_local;
reg    v5715_11_ce0_local;
reg    v5715_10_we0_local;
reg    v5715_10_ce0_local;
reg    v5715_9_we0_local;
reg    v5715_9_ce0_local;
reg    v5715_8_we0_local;
reg    v5715_8_ce0_local;
reg    v5715_7_we0_local;
reg    v5715_7_ce0_local;
reg    v5715_6_we0_local;
reg    v5715_6_ce0_local;
reg    v5715_5_we0_local;
reg    v5715_5_ce0_local;
reg    v5715_4_we0_local;
reg    v5715_4_ce0_local;
reg    v5715_3_we0_local;
reg    v5715_3_ce0_local;
reg    v5715_2_we0_local;
reg    v5715_2_ce0_local;
reg    v5715_1_we0_local;
reg    v5715_1_ce0_local;
reg    v5715_we0_local;
reg    v5715_ce0_local;
wire   [3:0] tmp_fu_656_p4;
wire   [0:0] tmp_168_fu_682_p3;
wire   [0:0] empty_fu_706_p1;
wire   [0:0] xor_ln6977_fu_772_p2;
wire   [5:0] add_ln6977_fu_758_p2;
wire   [3:0] select_ln6977_fu_764_p3;
wire   [0:0] and_ln6977_fu_778_p2;
wire   [0:0] empty_217_fu_798_p2;
wire   [3:0] add_ln6978_fu_792_p2;
wire   [2:0] lshr_ln_fu_824_p4;
wire   [4:0] tmp_169_fu_838_p3;
wire   [5:0] zext_ln7012_fu_846_p1;
wire   [5:0] zext_ln6977_1_fu_834_p1;
wire   [8:0] mul_i_fu_666_p3;
wire   [8:0] zext_ln6977_fu_820_p1;
wire   [5:0] p_udiv36_cast_fu_674_p3;
wire   [5:0] empty_219_fu_862_p2;
wire   [8:0] tmp_170_fu_868_p3;
wire   [6:0] tmp_171_fu_880_p3;
wire   [9:0] zext_ln6982_fu_876_p1;
wire   [9:0] zext_ln6982_1_fu_888_p1;
wire   [8:0] empty_218_fu_856_p2;
wire   [5:0] tmp_172_fu_898_p4;
wire   [8:0] tmp_173_fu_908_p3;
wire   [6:0] tmp_174_fu_920_p3;
wire   [9:0] zext_ln6986_fu_916_p1;
wire   [9:0] zext_ln6986_1_fu_928_p1;
wire   [2:0] lshr_ln5_fu_942_p4;
wire   [5:0] add_ln7012_2_fu_850_p2;
wire   [5:0] zext_ln7012_1_fu_956_p1;
wire   [4:0] zext_ln6977_cast_cast_fu_690_p3;
wire   [4:0] zext_ln6978_fu_938_p1;
wire   [3:0] zext_ln6978_1_fu_952_p1;
wire   [3:0] p_udiv44_cast_cast_fu_698_p3;
wire   [4:0] empty_220_fu_966_p2;
wire   [4:0] add_ln6978_1_fu_994_p2;
wire   [5:0] shl_ln7012_fu_1057_p2;
wire   [9:0] zext_ln6982_2_fu_1067_p1;
wire   [9:0] add_ln6982_fu_1070_p2;
wire   [8:0] trunc_ln6982_fu_1075_p1;
wire   [10:0] tmp_175_fu_1079_p3;
wire   [11:0] tmp_176_fu_1087_p3;
wire   [11:0] zext_ln6982_3_fu_1095_p1;
wire   [9:0] add_ln6986_fu_1105_p2;
wire   [8:0] trunc_ln6986_fu_1110_p1;
wire   [10:0] tmp_177_fu_1114_p3;
wire   [11:0] tmp_178_fu_1122_p3;
wire   [11:0] zext_ln6986_2_fu_1130_p1;
wire   [9:0] zext_ln6984_fu_1140_p1;
wire   [9:0] add_ln6984_fu_1143_p2;
wire   [8:0] trunc_ln6984_fu_1148_p1;
wire   [10:0] tmp_179_fu_1152_p3;
wire   [11:0] tmp_180_fu_1160_p3;
wire   [11:0] zext_ln6984_1_fu_1168_p1;
wire   [9:0] add_ln6988_fu_1178_p2;
wire   [8:0] trunc_ln6988_fu_1183_p1;
wire   [10:0] tmp_181_fu_1187_p3;
wire   [11:0] tmp_182_fu_1195_p3;
wire   [11:0] zext_ln6988_fu_1203_p1;
wire   [5:0] sub_ln7012_fu_1062_p2;
wire   [5:0] zext_ln7012_2_fu_1213_p1;
wire   [2:0] zext_ln6979_fu_1222_p1;
wire   [2:0] add_ln6981_fu_1225_p2;
wire   [11:0] sub_ln6986_fu_1099_p2;
wire   [11:0] zext_ln6982_4_fu_1230_p1;
wire   [11:0] add_ln6982_1_fu_1234_p2;
wire   [11:0] sub_ln6988_fu_1172_p2;
wire   [11:0] add_ln6984_1_fu_1245_p2;
wire   [11:0] sub_ln6986_1_fu_1134_p2;
wire   [11:0] add_ln6986_1_fu_1256_p2;
wire   [11:0] sub_ln6979_fu_1207_p2;
wire   [11:0] add_ln6988_1_fu_1273_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_908;
reg    ap_condition_292;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12189_fu_178 = 6'd0;
#0 v5680190_fu_182 = 6'd0;
#0 indvar_flatten191_fu_186 = 5'd0;
#0 v5681192_fu_190 = 4'd0;
#0 v5682193_fu_194 = 2'd0;
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
    if ((1'b1 == ap_condition_292)) begin
        indvar_flatten12189_fu_178 <= add_ln6977_1_fu_1008_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_292)) begin
    indvar_flatten191_fu_186 <= select_ln6978_1_fu_1000_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_292)) begin
    v5680190_fu_182 <= v5680_fu_784_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_292)) begin
    v5681192_fu_190 <= v5681_fu_812_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_292)) begin
    v5682193_fu_194 <= v5682_fu_988_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln6982_2_reg_1355[9 : 1] <= add_ln6982_2_fu_892_p2[9 : 1];
        add_ln6986_2_reg_1361[9 : 1] <= add_ln6986_2_fu_932_p2[9 : 1];
        add_ln7012_1_reg_1397 <= add_ln7012_1_fu_1216_p2;
        add_ln7012_reg_1367 <= add_ln7012_fu_960_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_221_reg_1373 <= empty_221_fu_972_p2;
        icmp_ln6977_reg_1393 <= icmp_ln6977_fu_1026_p2;
        tmp_s_reg_1378 <= {{empty_220_fu_966_p2[4:1]}};
        v5682_mid2_reg_1349 <= v5682_mid2_fu_804_p3;
        zext_ln6977_1_cast_cast_cast_cast_reg_1344[1 : 0] <= zext_ln6977_1_cast_cast_cast_cast_fu_710_p3[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6978_reg_1388 <= icmp_ln6978_fu_1020_p2;
        icmp_ln6979_reg_1383 <= icmp_ln6979_fu_1014_p2;
    end
end
always @ (*) begin
    if (((icmp_ln6977_fu_1026_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_908)) begin
            ap_phi_mux_icmp_ln6978195_phi_fu_639_p4 = icmp_ln6978_reg_1388;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln6978195_phi_fu_639_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln6978195_phi_fu_639_p4 = icmp_ln6978_reg_1388;
        end
    end else begin
        ap_phi_mux_icmp_ln6978195_phi_fu_639_p4 = icmp_ln6978_reg_1388;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_908)) begin
            ap_phi_mux_icmp_ln6979194_phi_fu_649_p4 = icmp_ln6979_reg_1383;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln6979194_phi_fu_649_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln6979194_phi_fu_649_p4 = icmp_ln6979_reg_1383;
        end
    end else begin
        ap_phi_mux_icmp_ln6979194_phi_fu_649_p4 = icmp_ln6979_reg_1383;
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
        ap_sig_allocacmp_indvar_flatten12189_load = indvar_flatten12189_fu_178;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten191_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten191_load = indvar_flatten191_fu_186;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v5680190_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v5680190_load = v5680190_fu_182;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v5681192_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v5681192_load = v5681192_fu_190;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v5682193_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v5682193_load = v5682193_fu_194;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13734_0_0_ce0_local = 1'b1;
    end else begin
        v13734_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13734_0_1_ce0_local = 1'b1;
    end else begin
        v13734_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13734_1_0_ce0_local = 1'b1;
    end else begin
        v13734_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13734_1_1_ce0_local = 1'b1;
    end else begin
        v13734_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13734_2_0_ce0_local = 1'b1;
    end else begin
        v13734_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13734_2_1_ce0_local = 1'b1;
    end else begin
        v13734_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13734_3_0_ce0_local = 1'b1;
    end else begin
        v13734_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13734_3_1_ce0_local = 1'b1;
    end else begin
        v13734_3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13734_4_0_ce0_local = 1'b1;
    end else begin
        v13734_4_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13734_4_1_ce0_local = 1'b1;
    end else begin
        v13734_4_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13734_5_0_ce0_local = 1'b1;
    end else begin
        v13734_5_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13734_5_1_ce0_local = 1'b1;
    end else begin
        v13734_5_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13734_6_0_ce0_local = 1'b1;
    end else begin
        v13734_6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13734_6_1_ce0_local = 1'b1;
    end else begin
        v13734_6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13734_7_0_ce0_local = 1'b1;
    end else begin
        v13734_7_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13734_7_1_ce0_local = 1'b1;
    end else begin
        v13734_7_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_10_ce0_local = 1'b1;
    end else begin
        v5715_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_10_we0_local = 1'b1;
    end else begin
        v5715_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_11_ce0_local = 1'b1;
    end else begin
        v5715_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_11_we0_local = 1'b1;
    end else begin
        v5715_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_12_ce0_local = 1'b1;
    end else begin
        v5715_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_12_we0_local = 1'b1;
    end else begin
        v5715_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_13_ce0_local = 1'b1;
    end else begin
        v5715_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_13_we0_local = 1'b1;
    end else begin
        v5715_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_14_ce0_local = 1'b1;
    end else begin
        v5715_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_14_we0_local = 1'b1;
    end else begin
        v5715_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_15_ce0_local = 1'b1;
    end else begin
        v5715_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_15_we0_local = 1'b1;
    end else begin
        v5715_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_1_ce0_local = 1'b1;
    end else begin
        v5715_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_1_we0_local = 1'b1;
    end else begin
        v5715_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_2_ce0_local = 1'b1;
    end else begin
        v5715_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_2_we0_local = 1'b1;
    end else begin
        v5715_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_3_ce0_local = 1'b1;
    end else begin
        v5715_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_3_we0_local = 1'b1;
    end else begin
        v5715_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_4_ce0_local = 1'b1;
    end else begin
        v5715_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_4_we0_local = 1'b1;
    end else begin
        v5715_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_5_ce0_local = 1'b1;
    end else begin
        v5715_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_5_we0_local = 1'b1;
    end else begin
        v5715_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_6_ce0_local = 1'b1;
    end else begin
        v5715_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_6_we0_local = 1'b1;
    end else begin
        v5715_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_7_ce0_local = 1'b1;
    end else begin
        v5715_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_7_we0_local = 1'b1;
    end else begin
        v5715_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_8_ce0_local = 1'b1;
    end else begin
        v5715_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_8_we0_local = 1'b1;
    end else begin
        v5715_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_9_ce0_local = 1'b1;
    end else begin
        v5715_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_9_we0_local = 1'b1;
    end else begin
        v5715_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_ce0_local = 1'b1;
    end else begin
        v5715_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5715_we0_local = 1'b1;
    end else begin
        v5715_we0_local = 1'b0;
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
assign add_ln6977_1_fu_1008_p2 = (ap_sig_allocacmp_indvar_flatten12189_load + 6'd1);
assign add_ln6977_fu_758_p2 = (ap_sig_allocacmp_v5680190_load + 6'd8);
assign add_ln6978_1_fu_994_p2 = (ap_sig_allocacmp_indvar_flatten191_load + 5'd1);
assign add_ln6978_fu_792_p2 = (select_ln6977_fu_764_p3 + 4'd2);
assign add_ln6981_fu_1225_p2 = (zext_ln6977_1_cast_cast_cast_cast_reg_1344 + zext_ln6979_fu_1222_p1);
assign add_ln6982_1_fu_1234_p2 = (sub_ln6986_fu_1099_p2 + zext_ln6982_4_fu_1230_p1);
assign add_ln6982_2_fu_892_p2 = (zext_ln6982_fu_876_p1 + zext_ln6982_1_fu_888_p1);
assign add_ln6982_fu_1070_p2 = (add_ln6982_2_reg_1355 + zext_ln6982_2_fu_1067_p1);
assign add_ln6984_1_fu_1245_p2 = (sub_ln6988_fu_1172_p2 + zext_ln6982_4_fu_1230_p1);
assign add_ln6984_fu_1143_p2 = (add_ln6982_2_reg_1355 + zext_ln6984_fu_1140_p1);
assign add_ln6986_1_fu_1256_p2 = (sub_ln6986_1_fu_1134_p2 + zext_ln6982_4_fu_1230_p1);
assign add_ln6986_2_fu_932_p2 = (zext_ln6986_fu_916_p1 + zext_ln6986_1_fu_928_p1);
assign add_ln6986_fu_1105_p2 = (add_ln6986_2_reg_1361 + zext_ln6982_2_fu_1067_p1);
assign add_ln6988_1_fu_1273_p2 = (sub_ln6979_fu_1207_p2 + zext_ln6982_4_fu_1230_p1);
assign add_ln6988_fu_1178_p2 = (add_ln6986_2_reg_1361 + zext_ln6984_fu_1140_p1);
assign add_ln7012_1_fu_1216_p2 = (sub_ln7012_fu_1062_p2 + zext_ln7012_2_fu_1213_p1);
assign add_ln7012_2_fu_850_p2 = (zext_ln7012_fu_846_p1 + zext_ln6977_1_fu_834_p1);
assign add_ln7012_fu_960_p2 = (add_ln7012_2_fu_850_p2 + zext_ln7012_1_fu_956_p1);
assign and_ln6977_fu_778_p2 = (xor_ln6977_fu_772_p2 & ap_phi_mux_icmp_ln6979194_phi_fu_649_p4);
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
    ap_condition_292 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_908 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln6977_reg_1393 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_217_fu_798_p2 = (ap_phi_mux_icmp_ln6978195_phi_fu_639_p4 | and_ln6977_fu_778_p2);
assign empty_218_fu_856_p2 = (mul_i_fu_666_p3 + zext_ln6977_fu_820_p1);
assign empty_219_fu_862_p2 = (zext_ln6977_1_fu_834_p1 + p_udiv36_cast_fu_674_p3);
assign empty_220_fu_966_p2 = (zext_ln6977_cast_cast_fu_690_p3 + zext_ln6978_fu_938_p1);
assign empty_221_fu_972_p2 = (zext_ln6978_1_fu_952_p1 + p_udiv44_cast_cast_fu_698_p3);
assign empty_fu_706_p1 = v5706_0[0:0];
assign icmp_ln6977_fu_1026_p2 = ((ap_sig_allocacmp_indvar_flatten12189_load == 6'd59) ? 1'b1 : 1'b0);
assign icmp_ln6978_fu_1020_p2 = ((select_ln6978_1_fu_1000_p3 == 5'd15) ? 1'b1 : 1'b0);
assign icmp_ln6979_fu_1014_p2 = ((v5682_fu_988_p2 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_942_p4 = {{v5681_fu_812_p3[3:1]}};
assign lshr_ln_fu_824_p4 = {{v5680_fu_784_p3[5:3]}};
assign mul_i_fu_666_p3 = {{tmp_fu_656_p4}, {5'd0}};
assign p_udiv36_cast_fu_674_p3 = {{tmp_fu_656_p4}, {2'd0}};
assign p_udiv44_cast_cast_fu_698_p3 = ((tmp_168_fu_682_p3[0:0] == 1'b1) ? 4'd5 : 4'd0);
assign select_ln6977_fu_764_p3 = ((ap_phi_mux_icmp_ln6978195_phi_fu_639_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v5681192_load);
assign select_ln6978_1_fu_1000_p3 = ((ap_phi_mux_icmp_ln6978195_phi_fu_639_p4[0:0] == 1'b1) ? 5'd1 : add_ln6978_1_fu_994_p2);
assign shl_ln7012_fu_1057_p2 = add_ln7012_reg_1367 << 6'd2;
assign sub_ln6979_fu_1207_p2 = (tmp_182_fu_1195_p3 - zext_ln6988_fu_1203_p1);
assign sub_ln6986_1_fu_1134_p2 = (tmp_178_fu_1122_p3 - zext_ln6986_2_fu_1130_p1);
assign sub_ln6986_fu_1099_p2 = (tmp_176_fu_1087_p3 - zext_ln6982_3_fu_1095_p1);
assign sub_ln6988_fu_1172_p2 = (tmp_180_fu_1160_p3 - zext_ln6984_1_fu_1168_p1);
assign sub_ln7012_fu_1062_p2 = (shl_ln7012_fu_1057_p2 - add_ln7012_reg_1367);
assign tmp_168_fu_682_p3 = v5706_0[32'd1];
assign tmp_169_fu_838_p3 = {{lshr_ln_fu_824_p4}, {2'd0}};
assign tmp_170_fu_868_p3 = {{empty_219_fu_862_p2}, {3'd0}};
assign tmp_171_fu_880_p3 = {{empty_219_fu_862_p2}, {1'd0}};
assign tmp_172_fu_898_p4 = {{empty_218_fu_856_p2[8:3]}};
assign tmp_173_fu_908_p3 = {{tmp_172_fu_898_p4}, {3'd0}};
assign tmp_174_fu_920_p3 = {{tmp_172_fu_898_p4}, {1'd0}};
assign tmp_175_fu_1079_p3 = {{add_ln6982_fu_1070_p2}, {1'd0}};
assign tmp_176_fu_1087_p3 = {{trunc_ln6982_fu_1075_p1}, {3'd0}};
assign tmp_177_fu_1114_p3 = {{add_ln6986_fu_1105_p2}, {1'd0}};
assign tmp_178_fu_1122_p3 = {{trunc_ln6986_fu_1110_p1}, {3'd0}};
assign tmp_179_fu_1152_p3 = {{add_ln6984_fu_1143_p2}, {1'd0}};
assign tmp_180_fu_1160_p3 = {{trunc_ln6984_fu_1148_p1}, {3'd0}};
assign tmp_181_fu_1187_p3 = {{add_ln6988_fu_1178_p2}, {1'd0}};
assign tmp_182_fu_1195_p3 = {{trunc_ln6988_fu_1183_p1}, {3'd0}};
assign tmp_fu_656_p4 = {{v5706_0[5:2]}};
assign trunc_ln6982_fu_1075_p1 = add_ln6982_fu_1070_p2[8:0];
assign trunc_ln6984_fu_1148_p1 = add_ln6984_fu_1143_p2[8:0];
assign trunc_ln6986_fu_1110_p1 = add_ln6986_fu_1105_p2[8:0];
assign trunc_ln6988_fu_1183_p1 = add_ln6988_fu_1178_p2[8:0];
assign v13734_0_0_address0 = zext_ln6982_5_fu_1240_p1;
assign v13734_0_0_ce0 = v13734_0_0_ce0_local;
assign v13734_0_1_address0 = zext_ln6984_2_fu_1251_p1;
assign v13734_0_1_ce0 = v13734_0_1_ce0_local;
assign v13734_1_0_address0 = zext_ln6986_3_fu_1262_p1;
assign v13734_1_0_ce0 = v13734_1_0_ce0_local;
assign v13734_1_1_address0 = zext_ln6988_1_fu_1279_p1;
assign v13734_1_1_ce0 = v13734_1_1_ce0_local;
assign v13734_2_0_address0 = zext_ln6986_3_fu_1262_p1;
assign v13734_2_0_ce0 = v13734_2_0_ce0_local;
assign v13734_2_1_address0 = zext_ln6988_1_fu_1279_p1;
assign v13734_2_1_ce0 = v13734_2_1_ce0_local;
assign v13734_3_0_address0 = zext_ln6986_3_fu_1262_p1;
assign v13734_3_0_ce0 = v13734_3_0_ce0_local;
assign v13734_3_1_address0 = zext_ln6988_1_fu_1279_p1;
assign v13734_3_1_ce0 = v13734_3_1_ce0_local;
assign v13734_4_0_address0 = zext_ln6986_3_fu_1262_p1;
assign v13734_4_0_ce0 = v13734_4_0_ce0_local;
assign v13734_4_1_address0 = zext_ln6988_1_fu_1279_p1;
assign v13734_4_1_ce0 = v13734_4_1_ce0_local;
assign v13734_5_0_address0 = zext_ln6986_3_fu_1262_p1;
assign v13734_5_0_ce0 = v13734_5_0_ce0_local;
assign v13734_5_1_address0 = zext_ln6988_1_fu_1279_p1;
assign v13734_5_1_ce0 = v13734_5_1_ce0_local;
assign v13734_6_0_address0 = zext_ln6986_3_fu_1262_p1;
assign v13734_6_0_ce0 = v13734_6_0_ce0_local;
assign v13734_6_1_address0 = zext_ln6988_1_fu_1279_p1;
assign v13734_6_1_ce0 = v13734_6_1_ce0_local;
assign v13734_7_0_address0 = zext_ln6986_3_fu_1262_p1;
assign v13734_7_0_ce0 = v13734_7_0_ce0_local;
assign v13734_7_1_address0 = zext_ln6988_1_fu_1279_p1;
assign v13734_7_1_ce0 = v13734_7_1_ce0_local;
assign v5680_fu_784_p3 = ((ap_phi_mux_icmp_ln6978195_phi_fu_639_p4[0:0] == 1'b1) ? add_ln6977_fu_758_p2 : ap_sig_allocacmp_v5680190_load);
assign v5681_fu_812_p3 = ((and_ln6977_fu_778_p2[0:0] == 1'b1) ? add_ln6978_fu_792_p2 : select_ln6977_fu_764_p3);
assign v5682_fu_988_p2 = (v5682_mid2_fu_804_p3 + 2'd1);
assign v5682_mid2_fu_804_p3 = ((empty_217_fu_798_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v5682193_load);
assign v5715_10_address0 = zext_ln7012_3_fu_1290_p1;
assign v5715_10_ce0 = v5715_10_ce0_local;
assign v5715_10_d0 = v13734_2_1_q0;
assign v5715_10_we0 = v5715_10_we0_local;
assign v5715_11_address0 = zext_ln7012_3_fu_1290_p1;
assign v5715_11_ce0 = v5715_11_ce0_local;
assign v5715_11_d0 = v13734_2_0_q0;
assign v5715_11_we0 = v5715_11_we0_local;
assign v5715_12_address0 = zext_ln7012_3_fu_1290_p1;
assign v5715_12_ce0 = v5715_12_ce0_local;
assign v5715_12_d0 = v13734_1_1_q0;
assign v5715_12_we0 = v5715_12_we0_local;
assign v5715_13_address0 = zext_ln7012_3_fu_1290_p1;
assign v5715_13_ce0 = v5715_13_ce0_local;
assign v5715_13_d0 = v13734_1_0_q0;
assign v5715_13_we0 = v5715_13_we0_local;
assign v5715_14_address0 = zext_ln7012_3_fu_1290_p1;
assign v5715_14_ce0 = v5715_14_ce0_local;
assign v5715_14_d0 = v13734_0_1_q0;
assign v5715_14_we0 = v5715_14_we0_local;
assign v5715_15_address0 = zext_ln7012_3_fu_1290_p1;
assign v5715_15_ce0 = v5715_15_ce0_local;
assign v5715_15_d0 = v13734_0_0_q0;
assign v5715_15_we0 = v5715_15_we0_local;
assign v5715_1_address0 = zext_ln7012_3_fu_1290_p1;
assign v5715_1_ce0 = v5715_1_ce0_local;
assign v5715_1_d0 = v13734_7_0_q0;
assign v5715_1_we0 = v5715_1_we0_local;
assign v5715_2_address0 = zext_ln7012_3_fu_1290_p1;
assign v5715_2_ce0 = v5715_2_ce0_local;
assign v5715_2_d0 = v13734_6_1_q0;
assign v5715_2_we0 = v5715_2_we0_local;
assign v5715_3_address0 = zext_ln7012_3_fu_1290_p1;
assign v5715_3_ce0 = v5715_3_ce0_local;
assign v5715_3_d0 = v13734_6_0_q0;
assign v5715_3_we0 = v5715_3_we0_local;
assign v5715_4_address0 = zext_ln7012_3_fu_1290_p1;
assign v5715_4_ce0 = v5715_4_ce0_local;
assign v5715_4_d0 = v13734_5_1_q0;
assign v5715_4_we0 = v5715_4_we0_local;
assign v5715_5_address0 = zext_ln7012_3_fu_1290_p1;
assign v5715_5_ce0 = v5715_5_ce0_local;
assign v5715_5_d0 = v13734_5_0_q0;
assign v5715_5_we0 = v5715_5_we0_local;
assign v5715_6_address0 = zext_ln7012_3_fu_1290_p1;
assign v5715_6_ce0 = v5715_6_ce0_local;
assign v5715_6_d0 = v13734_4_1_q0;
assign v5715_6_we0 = v5715_6_we0_local;
assign v5715_7_address0 = zext_ln7012_3_fu_1290_p1;
assign v5715_7_ce0 = v5715_7_ce0_local;
assign v5715_7_d0 = v13734_4_0_q0;
assign v5715_7_we0 = v5715_7_we0_local;
assign v5715_8_address0 = zext_ln7012_3_fu_1290_p1;
assign v5715_8_ce0 = v5715_8_ce0_local;
assign v5715_8_d0 = v13734_3_1_q0;
assign v5715_8_we0 = v5715_8_we0_local;
assign v5715_9_address0 = zext_ln7012_3_fu_1290_p1;
assign v5715_9_ce0 = v5715_9_ce0_local;
assign v5715_9_d0 = v13734_3_0_q0;
assign v5715_9_we0 = v5715_9_we0_local;
assign v5715_address0 = zext_ln7012_3_fu_1290_p1;
assign v5715_ce0 = v5715_ce0_local;
assign v5715_d0 = v13734_7_1_q0;
assign v5715_we0 = v5715_we0_local;
assign xor_ln6977_fu_772_p2 = (ap_phi_mux_icmp_ln6978195_phi_fu_639_p4 ^ 1'd1);
assign zext_ln6977_1_cast_cast_cast_cast_fu_710_p3 = ((empty_fu_706_p1[0:0] == 1'b1) ? 3'd3 : 3'd0);
assign zext_ln6977_1_fu_834_p1 = lshr_ln_fu_824_p4;
assign zext_ln6977_cast_cast_fu_690_p3 = ((tmp_168_fu_682_p3[0:0] == 1'b1) ? 5'd10 : 5'd0);
assign zext_ln6977_fu_820_p1 = v5680_fu_784_p3;
assign zext_ln6978_1_fu_952_p1 = lshr_ln5_fu_942_p4;
assign zext_ln6978_fu_938_p1 = v5681_fu_812_p3;
assign zext_ln6979_fu_1222_p1 = v5682_mid2_reg_1349;
assign zext_ln6982_1_fu_888_p1 = tmp_171_fu_880_p3;
assign zext_ln6982_2_fu_1067_p1 = empty_221_reg_1373;
assign zext_ln6982_3_fu_1095_p1 = tmp_175_fu_1079_p3;
assign zext_ln6982_4_fu_1230_p1 = add_ln6981_fu_1225_p2;
assign zext_ln6982_5_fu_1240_p1 = add_ln6982_1_fu_1234_p2;
assign zext_ln6982_fu_876_p1 = tmp_170_fu_868_p3;
assign zext_ln6984_1_fu_1168_p1 = tmp_179_fu_1152_p3;
assign zext_ln6984_2_fu_1251_p1 = add_ln6984_1_fu_1245_p2;
assign zext_ln6984_fu_1140_p1 = tmp_s_reg_1378;
assign zext_ln6986_1_fu_928_p1 = tmp_174_fu_920_p3;
assign zext_ln6986_2_fu_1130_p1 = tmp_177_fu_1114_p3;
assign zext_ln6986_3_fu_1262_p1 = add_ln6986_1_fu_1256_p2;
assign zext_ln6986_fu_916_p1 = tmp_173_fu_908_p3;
assign zext_ln6988_1_fu_1279_p1 = add_ln6988_1_fu_1273_p2;
assign zext_ln6988_fu_1203_p1 = tmp_181_fu_1187_p3;
assign zext_ln7012_1_fu_956_p1 = lshr_ln5_fu_942_p4;
assign zext_ln7012_2_fu_1213_p1 = v5682_mid2_reg_1349;
assign zext_ln7012_3_fu_1290_p1 = add_ln7012_1_reg_1397;
assign zext_ln7012_fu_846_p1 = tmp_169_fu_838_p3;
always @ (posedge ap_clk) begin
    zext_ln6977_1_cast_cast_cast_cast_reg_1344[2] <= 1'b0;
    add_ln6982_2_reg_1355[0] <= 1'b0;
    add_ln6986_2_reg_1361[0] <= 1'b0;
end
endmodule 