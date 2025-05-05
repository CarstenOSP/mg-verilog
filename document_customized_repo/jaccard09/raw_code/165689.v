module forward_dataflow_in_loop_VITIS_LOOP_3156_1_Loop_VITIS_LOOP_3093_1_proc141 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v2330_address0,v2330_ce0,v2330_we0,v2330_d0,v2330_1_address0,v2330_1_ce0,v2330_1_we0,v2330_1_d0,v2330_2_address0,v2330_2_ce0,v2330_2_we0,v2330_2_d0,v2330_3_address0,v2330_3_ce0,v2330_3_we0,v2330_3_d0,v2330_4_address0,v2330_4_ce0,v2330_4_we0,v2330_4_d0,v2330_5_address0,v2330_5_ce0,v2330_5_we0,v2330_5_d0,v2330_6_address0,v2330_6_ce0,v2330_6_we0,v2330_6_d0,v2330_7_address0,v2330_7_ce0,v2330_7_we0,v2330_7_d0,v2330_8_address0,v2330_8_ce0,v2330_8_we0,v2330_8_d0,v2330_9_address0,v2330_9_ce0,v2330_9_we0,v2330_9_d0,v2330_10_address0,v2330_10_ce0,v2330_10_we0,v2330_10_d0,v2330_11_address0,v2330_11_ce0,v2330_11_we0,v2330_11_d0,v2330_12_address0,v2330_12_ce0,v2330_12_we0,v2330_12_d0,v2330_13_address0,v2330_13_ce0,v2330_13_we0,v2330_13_d0,v2330_14_address0,v2330_14_ce0,v2330_14_we0,v2330_14_d0,v2330_15_address0,v2330_15_ce0,v2330_15_we0,v2330_15_d0,v2321_0,v16211_0_address0,v16211_0_ce0,v16211_0_q0,v16211_1_address0,v16211_1_ce0,v16211_1_q0,v16211_2_address0,v16211_2_ce0,v16211_2_q0,v16211_3_address0,v16211_3_ce0,v16211_3_q0,v16211_4_address0,v16211_4_ce0,v16211_4_q0,v16211_5_address0,v16211_5_ce0,v16211_5_q0,v16211_6_address0,v16211_6_ce0,v16211_6_q0,v16211_7_address0,v16211_7_ce0,v16211_7_q0,v16211_8_address0,v16211_8_ce0,v16211_8_q0,v16211_9_address0,v16211_9_ce0,v16211_9_q0,v16211_10_address0,v16211_10_ce0,v16211_10_q0,v16211_11_address0,v16211_11_ce0,v16211_11_q0,v16211_12_address0,v16211_12_ce0,v16211_12_q0,v16211_13_address0,v16211_13_ce0,v16211_13_q0,v16211_14_address0,v16211_14_ce0,v16211_14_q0,v16211_15_address0,v16211_15_ce0,v16211_15_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [6:0] v2330_address0;
output   v2330_ce0;
output   v2330_we0;
output  [7:0] v2330_d0;
output  [6:0] v2330_1_address0;
output   v2330_1_ce0;
output   v2330_1_we0;
output  [7:0] v2330_1_d0;
output  [6:0] v2330_2_address0;
output   v2330_2_ce0;
output   v2330_2_we0;
output  [7:0] v2330_2_d0;
output  [6:0] v2330_3_address0;
output   v2330_3_ce0;
output   v2330_3_we0;
output  [7:0] v2330_3_d0;
output  [6:0] v2330_4_address0;
output   v2330_4_ce0;
output   v2330_4_we0;
output  [7:0] v2330_4_d0;
output  [6:0] v2330_5_address0;
output   v2330_5_ce0;
output   v2330_5_we0;
output  [7:0] v2330_5_d0;
output  [6:0] v2330_6_address0;
output   v2330_6_ce0;
output   v2330_6_we0;
output  [7:0] v2330_6_d0;
output  [6:0] v2330_7_address0;
output   v2330_7_ce0;
output   v2330_7_we0;
output  [7:0] v2330_7_d0;
output  [6:0] v2330_8_address0;
output   v2330_8_ce0;
output   v2330_8_we0;
output  [7:0] v2330_8_d0;
output  [6:0] v2330_9_address0;
output   v2330_9_ce0;
output   v2330_9_we0;
output  [7:0] v2330_9_d0;
output  [6:0] v2330_10_address0;
output   v2330_10_ce0;
output   v2330_10_we0;
output  [7:0] v2330_10_d0;
output  [6:0] v2330_11_address0;
output   v2330_11_ce0;
output   v2330_11_we0;
output  [7:0] v2330_11_d0;
output  [6:0] v2330_12_address0;
output   v2330_12_ce0;
output   v2330_12_we0;
output  [7:0] v2330_12_d0;
output  [6:0] v2330_13_address0;
output   v2330_13_ce0;
output   v2330_13_we0;
output  [7:0] v2330_13_d0;
output  [6:0] v2330_14_address0;
output   v2330_14_ce0;
output   v2330_14_we0;
output  [7:0] v2330_14_d0;
output  [6:0] v2330_15_address0;
output   v2330_15_ce0;
output   v2330_15_we0;
output  [7:0] v2330_15_d0;
input  [13:0] v2321_0;
output  [12:0] v16211_0_address0;
output   v16211_0_ce0;
input  [7:0] v16211_0_q0;
output  [12:0] v16211_1_address0;
output   v16211_1_ce0;
input  [7:0] v16211_1_q0;
output  [12:0] v16211_2_address0;
output   v16211_2_ce0;
input  [7:0] v16211_2_q0;
output  [12:0] v16211_3_address0;
output   v16211_3_ce0;
input  [7:0] v16211_3_q0;
output  [12:0] v16211_4_address0;
output   v16211_4_ce0;
input  [7:0] v16211_4_q0;
output  [12:0] v16211_5_address0;
output   v16211_5_ce0;
input  [7:0] v16211_5_q0;
output  [12:0] v16211_6_address0;
output   v16211_6_ce0;
input  [7:0] v16211_6_q0;
output  [12:0] v16211_7_address0;
output   v16211_7_ce0;
input  [7:0] v16211_7_q0;
output  [12:0] v16211_8_address0;
output   v16211_8_ce0;
input  [7:0] v16211_8_q0;
output  [12:0] v16211_9_address0;
output   v16211_9_ce0;
input  [7:0] v16211_9_q0;
output  [12:0] v16211_10_address0;
output   v16211_10_ce0;
input  [7:0] v16211_10_q0;
output  [12:0] v16211_11_address0;
output   v16211_11_ce0;
input  [7:0] v16211_11_q0;
output  [12:0] v16211_12_address0;
output   v16211_12_ce0;
input  [7:0] v16211_12_q0;
output  [12:0] v16211_13_address0;
output   v16211_13_ce0;
input  [7:0] v16211_13_q0;
output  [12:0] v16211_14_address0;
output   v16211_14_ce0;
input  [7:0] v16211_14_q0;
output  [12:0] v16211_15_address0;
output   v16211_15_ce0;
input  [7:0] v16211_15_q0;
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
wire   [0:0] icmp_ln3093_fu_728_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] tmp_fu_648_p4;
reg   [3:0] tmp_reg_1181;
wire   [8:0] mul_i_fu_658_p3;
reg   [8:0] mul_i_reg_1187;
wire   [3:0] zext_ln3093_cast_cast_cast_cast_fu_674_p3;
reg   [3:0] zext_ln3093_cast_cast_cast_cast_reg_1192;
wire   [3:0] zext_ln3093_1_cast_cast_cast_cast_fu_686_p3;
reg   [3:0] zext_ln3093_1_cast_cast_cast_cast_reg_1197;
reg   [3:0] zext_ln3093_1_cast_cast_cast_cast_reg_1197_pp0_iter1_reg;
reg   [0:0] icmp_ln3093_reg_1202;
reg   [0:0] icmp_ln3093_reg_1202_pp0_iter1_reg;
wire   [2:0] v2297_mid2_fu_797_p3;
reg   [2:0] v2297_mid2_reg_1206;
reg   [2:0] v2297_mid2_reg_1206_pp0_iter2_reg;
wire   [2:0] v2296_fu_805_p3;
reg   [2:0] v2296_reg_1212;
reg   [2:0] v2296_reg_1212_pp0_iter2_reg;
wire   [0:0] tmp_143_fu_817_p3;
reg   [0:0] tmp_143_reg_1217;
reg   [0:0] tmp_143_reg_1217_pp0_iter2_reg;
wire   [8:0] add_ln3098_fu_907_p2;
reg   [8:0] add_ln3098_reg_1222;
wire   [8:0] add_ln3100_fu_913_p2;
reg   [8:0] add_ln3100_reg_1228;
wire   [0:0] icmp_ln3095_fu_939_p2;
reg   [0:0] icmp_ln3095_reg_1234;
wire   [0:0] icmp_ln3094_fu_945_p2;
reg   [0:0] icmp_ln3094_reg_1239;
reg   [0:0] ap_phi_mux_icmp_ln3094195_phi_fu_630_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln3095194_phi_fu_641_p4;
wire   [63:0] zext_ln3098_4_fu_1037_p1;
wire   [63:0] zext_ln3100_2_fu_1048_p1;
wire   [63:0] zext_ln3128_3_fu_1126_p1;
reg   [6:0] indvar_flatten12189_fu_168;
wire   [6:0] add_ln3093_1_fu_722_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten12189_load;
reg   [5:0] v2295190_fu_172;
wire   [5:0] v2295_fu_777_p3;
reg   [5:0] indvar_flatten191_fu_176;
wire   [5:0] select_ln3094_1_fu_931_p3;
reg   [2:0] v2296192_fu_180;
reg   [2:0] v2297193_fu_184;
wire   [2:0] v2297_fu_919_p2;
reg    v16211_0_ce0_local;
reg    v16211_1_ce0_local;
reg    v16211_2_ce0_local;
reg    v16211_3_ce0_local;
reg    v16211_4_ce0_local;
reg    v16211_5_ce0_local;
reg    v16211_6_ce0_local;
reg    v16211_7_ce0_local;
reg    v16211_8_ce0_local;
reg    v16211_9_ce0_local;
reg    v16211_10_ce0_local;
reg    v16211_11_ce0_local;
reg    v16211_12_ce0_local;
reg    v16211_13_ce0_local;
reg    v16211_14_ce0_local;
reg    v16211_15_ce0_local;
reg    v2330_15_we0_local;
reg    v2330_15_ce0_local;
reg    v2330_14_we0_local;
reg    v2330_14_ce0_local;
reg    v2330_13_we0_local;
reg    v2330_13_ce0_local;
reg    v2330_12_we0_local;
reg    v2330_12_ce0_local;
reg    v2330_11_we0_local;
reg    v2330_11_ce0_local;
reg    v2330_10_we0_local;
reg    v2330_10_ce0_local;
reg    v2330_9_we0_local;
reg    v2330_9_ce0_local;
reg    v2330_8_we0_local;
reg    v2330_8_ce0_local;
reg    v2330_7_we0_local;
reg    v2330_7_ce0_local;
reg    v2330_6_we0_local;
reg    v2330_6_ce0_local;
reg    v2330_5_we0_local;
reg    v2330_5_ce0_local;
reg    v2330_4_we0_local;
reg    v2330_4_ce0_local;
reg    v2330_3_we0_local;
reg    v2330_3_ce0_local;
reg    v2330_2_we0_local;
reg    v2330_2_ce0_local;
reg    v2330_1_we0_local;
reg    v2330_1_ce0_local;
reg    v2330_we0_local;
reg    v2330_ce0_local;
wire   [0:0] tmp_142_fu_666_p3;
wire   [0:0] empty_fu_682_p1;
wire   [0:0] xor_ln3093_fu_765_p2;
wire   [5:0] add_ln3093_fu_751_p2;
wire   [2:0] select_ln3093_fu_757_p3;
wire   [0:0] and_ln3093_fu_771_p2;
wire   [0:0] empty_237_fu_791_p2;
wire   [2:0] add_ln3094_fu_785_p2;
wire   [8:0] zext_ln3093_fu_813_p1;
wire   [5:0] tmp_144_fu_839_p4;
wire   [8:0] p_shl68_fu_830_p4;
wire   [8:0] zext_ln3098_fu_848_p1;
wire   [8:0] empty_238_fu_825_p2;
wire   [4:0] tmp_145_fu_858_p4;
wire   [5:0] tmp_146_fu_876_p3;
wire   [8:0] p_shl69_fu_868_p3;
wire   [8:0] zext_ln3100_fu_884_p1;
wire   [3:0] zext_ln3094_fu_894_p1;
wire   [3:0] empty_239_fu_898_p2;
wire   [8:0] sub_ln3098_fu_852_p2;
wire   [8:0] zext_ln3098_1_fu_903_p1;
wire   [8:0] sub_ln3100_fu_888_p2;
wire   [5:0] add_ln3094_1_fu_925_p2;
wire   [9:0] tmp_148_fu_978_p3;
wire   [12:0] p_shl70_fu_971_p3;
wire   [12:0] zext_ln3098_2_fu_985_p1;
wire   [9:0] tmp_149_fu_1002_p3;
wire   [12:0] p_shl_fu_995_p3;
wire   [12:0] zext_ln3100_1_fu_1009_p1;
wire   [3:0] zext_ln3095_fu_1019_p1;
wire   [3:0] add_ln3097_fu_1022_p2;
wire   [12:0] sub_ln3098_1_fu_989_p2;
wire   [12:0] zext_ln3098_3_fu_1027_p1;
wire   [12:0] add_ln3098_1_fu_1031_p2;
wire   [12:0] sub_ln3100_1_fu_1013_p2;
wire   [12:0] add_ln3100_1_fu_1042_p2;
wire   [2:0] select_ln3128_fu_1067_p3;
wire   [3:0] tmp_s_fu_1074_p3;
wire   [4:0] tmp_109_cast_fu_1082_p1;
wire   [4:0] zext_ln3128_fu_1086_p1;
wire   [4:0] add_ln3128_fu_1089_p2;
wire   [3:0] trunc_ln3128_fu_1095_p1;
wire   [6:0] tmp_147_fu_1099_p3;
wire   [6:0] zext_ln3128_1_fu_1107_p1;
wire   [6:0] sub_ln3094_fu_1111_p2;
wire   [6:0] zext_ln3128_2_fu_1117_p1;
wire   [6:0] add_ln3128_1_fu_1120_p2;
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
reg    ap_condition_392;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12189_fu_168 = 7'd0;
#0 v2295190_fu_172 = 6'd0;
#0 indvar_flatten191_fu_176 = 6'd0;
#0 v2296192_fu_180 = 3'd0;
#0 v2297193_fu_184 = 3'd0;
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
    if ((1'b1 == ap_condition_392)) begin
        indvar_flatten12189_fu_168 <= add_ln3093_1_fu_722_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        indvar_flatten191_fu_176 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten191_fu_176 <= select_ln3094_1_fu_931_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v2295190_fu_172 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v2295190_fu_172 <= v2295_fu_777_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v2296192_fu_180 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v2296192_fu_180 <= v2296_fu_805_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v2297193_fu_184 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v2297193_fu_184 <= v2297_fu_919_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln3098_reg_1222 <= add_ln3098_fu_907_p2;
        add_ln3100_reg_1228 <= add_ln3100_fu_913_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln3093_reg_1202 <= icmp_ln3093_fu_728_p2;
        icmp_ln3093_reg_1202_pp0_iter1_reg <= icmp_ln3093_reg_1202;
        mul_i_reg_1187[8 : 5] <= mul_i_fu_658_p3[8 : 5];
        tmp_143_reg_1217 <= v2295_fu_777_p3[32'd4];
        tmp_reg_1181 <= {{v2321_0[5:2]}};
        v2296_reg_1212 <= v2296_fu_805_p3;
        v2297_mid2_reg_1206 <= v2297_mid2_fu_797_p3;
        zext_ln3093_1_cast_cast_cast_cast_reg_1197[2 : 0] <= zext_ln3093_1_cast_cast_cast_cast_fu_686_p3[2 : 0];
        zext_ln3093_1_cast_cast_cast_cast_reg_1197_pp0_iter1_reg[2 : 0] <= zext_ln3093_1_cast_cast_cast_cast_reg_1197[2 : 0];
        zext_ln3093_cast_cast_cast_cast_reg_1192[2 : 0] <= zext_ln3093_cast_cast_cast_cast_fu_674_p3[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln3094_reg_1239 <= icmp_ln3094_fu_945_p2;
        icmp_ln3095_reg_1234 <= icmp_ln3095_fu_939_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        tmp_143_reg_1217_pp0_iter2_reg <= tmp_143_reg_1217;
        v2296_reg_1212_pp0_iter2_reg <= v2296_reg_1212;
        v2297_mid2_reg_1206_pp0_iter2_reg <= v2297_mid2_reg_1206;
    end
end
always @ (*) begin
    if (((icmp_ln3093_fu_728_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln3093_reg_1202_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln3094195_phi_fu_630_p4 = icmp_ln3094_reg_1239;
    end else if (((ap_loop_init_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln3094195_phi_fu_630_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln3094195_phi_fu_630_p4 = icmp_ln3094_reg_1239;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln3093_reg_1202_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln3095194_phi_fu_641_p4 = icmp_ln3095_reg_1234;
    end else if (((ap_loop_init_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln3095194_phi_fu_641_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln3095194_phi_fu_641_p4 = icmp_ln3095_reg_1234;
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
        ap_sig_allocacmp_indvar_flatten12189_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12189_load = indvar_flatten12189_fu_168;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16211_0_ce0_local = 1'b1;
    end else begin
        v16211_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16211_10_ce0_local = 1'b1;
    end else begin
        v16211_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16211_11_ce0_local = 1'b1;
    end else begin
        v16211_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16211_12_ce0_local = 1'b1;
    end else begin
        v16211_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16211_13_ce0_local = 1'b1;
    end else begin
        v16211_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16211_14_ce0_local = 1'b1;
    end else begin
        v16211_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16211_15_ce0_local = 1'b1;
    end else begin
        v16211_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16211_1_ce0_local = 1'b1;
    end else begin
        v16211_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16211_2_ce0_local = 1'b1;
    end else begin
        v16211_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16211_3_ce0_local = 1'b1;
    end else begin
        v16211_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16211_4_ce0_local = 1'b1;
    end else begin
        v16211_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16211_5_ce0_local = 1'b1;
    end else begin
        v16211_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16211_6_ce0_local = 1'b1;
    end else begin
        v16211_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16211_7_ce0_local = 1'b1;
    end else begin
        v16211_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16211_8_ce0_local = 1'b1;
    end else begin
        v16211_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16211_9_ce0_local = 1'b1;
    end else begin
        v16211_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_10_ce0_local = 1'b1;
    end else begin
        v2330_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_10_we0_local = 1'b1;
    end else begin
        v2330_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_11_ce0_local = 1'b1;
    end else begin
        v2330_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_11_we0_local = 1'b1;
    end else begin
        v2330_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_12_ce0_local = 1'b1;
    end else begin
        v2330_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_12_we0_local = 1'b1;
    end else begin
        v2330_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_13_ce0_local = 1'b1;
    end else begin
        v2330_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_13_we0_local = 1'b1;
    end else begin
        v2330_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_14_ce0_local = 1'b1;
    end else begin
        v2330_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_14_we0_local = 1'b1;
    end else begin
        v2330_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_15_ce0_local = 1'b1;
    end else begin
        v2330_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_15_we0_local = 1'b1;
    end else begin
        v2330_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_1_ce0_local = 1'b1;
    end else begin
        v2330_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_1_we0_local = 1'b1;
    end else begin
        v2330_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_2_ce0_local = 1'b1;
    end else begin
        v2330_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_2_we0_local = 1'b1;
    end else begin
        v2330_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_3_ce0_local = 1'b1;
    end else begin
        v2330_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_3_we0_local = 1'b1;
    end else begin
        v2330_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_4_ce0_local = 1'b1;
    end else begin
        v2330_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_4_we0_local = 1'b1;
    end else begin
        v2330_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_5_ce0_local = 1'b1;
    end else begin
        v2330_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_5_we0_local = 1'b1;
    end else begin
        v2330_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_6_ce0_local = 1'b1;
    end else begin
        v2330_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_6_we0_local = 1'b1;
    end else begin
        v2330_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_7_ce0_local = 1'b1;
    end else begin
        v2330_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_7_we0_local = 1'b1;
    end else begin
        v2330_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_8_ce0_local = 1'b1;
    end else begin
        v2330_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_8_we0_local = 1'b1;
    end else begin
        v2330_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_9_ce0_local = 1'b1;
    end else begin
        v2330_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_9_we0_local = 1'b1;
    end else begin
        v2330_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_ce0_local = 1'b1;
    end else begin
        v2330_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v2330_we0_local = 1'b1;
    end else begin
        v2330_we0_local = 1'b0;
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
assign add_ln3093_1_fu_722_p2 = (ap_sig_allocacmp_indvar_flatten12189_load + 7'd1);
assign add_ln3093_fu_751_p2 = (v2295190_fu_172 + 6'd16);
assign add_ln3094_1_fu_925_p2 = (indvar_flatten191_fu_176 + 6'd1);
assign add_ln3094_fu_785_p2 = (select_ln3093_fu_757_p3 + 3'd1);
assign add_ln3097_fu_1022_p2 = (zext_ln3093_1_cast_cast_cast_cast_reg_1197_pp0_iter1_reg + zext_ln3095_fu_1019_p1);
assign add_ln3098_1_fu_1031_p2 = (sub_ln3098_1_fu_989_p2 + zext_ln3098_3_fu_1027_p1);
assign add_ln3098_fu_907_p2 = (sub_ln3098_fu_852_p2 + zext_ln3098_1_fu_903_p1);
assign add_ln3100_1_fu_1042_p2 = (sub_ln3100_1_fu_1013_p2 + zext_ln3098_3_fu_1027_p1);
assign add_ln3100_fu_913_p2 = (sub_ln3100_fu_888_p2 + zext_ln3098_1_fu_903_p1);
assign add_ln3128_1_fu_1120_p2 = (sub_ln3094_fu_1111_p2 + zext_ln3128_2_fu_1117_p1);
assign add_ln3128_fu_1089_p2 = (tmp_109_cast_fu_1082_p1 + zext_ln3128_fu_1086_p1);
assign and_ln3093_fu_771_p2 = (xor_ln3093_fu_765_p2 & ap_phi_mux_icmp_ln3095194_phi_fu_641_p4);
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
    ap_condition_392 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_237_fu_791_p2 = (ap_phi_mux_icmp_ln3094195_phi_fu_630_p4 | and_ln3093_fu_771_p2);
assign empty_238_fu_825_p2 = (mul_i_reg_1187 + zext_ln3093_fu_813_p1);
assign empty_239_fu_898_p2 = (zext_ln3093_cast_cast_cast_cast_reg_1192 + zext_ln3094_fu_894_p1);
assign empty_fu_682_p1 = v2321_0[0:0];
assign icmp_ln3093_fu_728_p2 = ((ap_sig_allocacmp_indvar_flatten12189_load == 7'd97) ? 1'b1 : 1'b0);
assign icmp_ln3094_fu_945_p2 = ((select_ln3094_1_fu_931_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln3095_fu_939_p2 = ((v2297_fu_919_p2 == 3'd7) ? 1'b1 : 1'b0);
assign mul_i_fu_658_p3 = {{tmp_fu_648_p4}, {5'd0}};
assign p_shl68_fu_830_p4 = {{{tmp_reg_1181}, {tmp_143_fu_817_p3}}, {4'd0}};
assign p_shl69_fu_868_p3 = {{tmp_145_fu_858_p4}, {4'd0}};
assign p_shl70_fu_971_p3 = {{add_ln3098_reg_1222}, {4'd0}};
assign p_shl_fu_995_p3 = {{add_ln3100_reg_1228}, {4'd0}};
assign select_ln3093_fu_757_p3 = ((ap_phi_mux_icmp_ln3094195_phi_fu_630_p4[0:0] == 1'b1) ? 3'd0 : v2296192_fu_180);
assign select_ln3094_1_fu_931_p3 = ((ap_phi_mux_icmp_ln3094195_phi_fu_630_p4[0:0] == 1'b1) ? 6'd1 : add_ln3094_1_fu_925_p2);
assign select_ln3128_fu_1067_p3 = ((tmp_143_reg_1217_pp0_iter2_reg[0:0] == 1'b1) ? 3'd7 : 3'd0);
assign sub_ln3094_fu_1111_p2 = (tmp_147_fu_1099_p3 - zext_ln3128_1_fu_1107_p1);
assign sub_ln3098_1_fu_989_p2 = (p_shl70_fu_971_p3 - zext_ln3098_2_fu_985_p1);
assign sub_ln3098_fu_852_p2 = (p_shl68_fu_830_p4 - zext_ln3098_fu_848_p1);
assign sub_ln3100_1_fu_1013_p2 = (p_shl_fu_995_p3 - zext_ln3100_1_fu_1009_p1);
assign sub_ln3100_fu_888_p2 = (p_shl69_fu_868_p3 - zext_ln3100_fu_884_p1);
assign tmp_109_cast_fu_1082_p1 = tmp_s_fu_1074_p3;
assign tmp_142_fu_666_p3 = v2321_0[32'd1];
assign tmp_143_fu_817_p3 = v2295_fu_777_p3[32'd4];
assign tmp_144_fu_839_p4 = {{{tmp_reg_1181}, {tmp_143_fu_817_p3}}, {1'd0}};
assign tmp_145_fu_858_p4 = {{empty_238_fu_825_p2[8:4]}};
assign tmp_146_fu_876_p3 = {{tmp_145_fu_858_p4}, {1'd0}};
assign tmp_147_fu_1099_p3 = {{trunc_ln3128_fu_1095_p1}, {3'd0}};
assign tmp_148_fu_978_p3 = {{add_ln3098_reg_1222}, {1'd0}};
assign tmp_149_fu_1002_p3 = {{add_ln3100_reg_1228}, {1'd0}};
assign tmp_fu_648_p4 = {{v2321_0[5:2]}};
assign tmp_s_fu_1074_p3 = {{1'd0}, {select_ln3128_fu_1067_p3}};
assign trunc_ln3128_fu_1095_p1 = add_ln3128_fu_1089_p2[3:0];
assign v16211_0_address0 = zext_ln3098_4_fu_1037_p1;
assign v16211_0_ce0 = v16211_0_ce0_local;
assign v16211_10_address0 = zext_ln3100_2_fu_1048_p1;
assign v16211_10_ce0 = v16211_10_ce0_local;
assign v16211_11_address0 = zext_ln3100_2_fu_1048_p1;
assign v16211_11_ce0 = v16211_11_ce0_local;
assign v16211_12_address0 = zext_ln3100_2_fu_1048_p1;
assign v16211_12_ce0 = v16211_12_ce0_local;
assign v16211_13_address0 = zext_ln3100_2_fu_1048_p1;
assign v16211_13_ce0 = v16211_13_ce0_local;
assign v16211_14_address0 = zext_ln3100_2_fu_1048_p1;
assign v16211_14_ce0 = v16211_14_ce0_local;
assign v16211_15_address0 = zext_ln3100_2_fu_1048_p1;
assign v16211_15_ce0 = v16211_15_ce0_local;
assign v16211_1_address0 = zext_ln3100_2_fu_1048_p1;
assign v16211_1_ce0 = v16211_1_ce0_local;
assign v16211_2_address0 = zext_ln3100_2_fu_1048_p1;
assign v16211_2_ce0 = v16211_2_ce0_local;
assign v16211_3_address0 = zext_ln3100_2_fu_1048_p1;
assign v16211_3_ce0 = v16211_3_ce0_local;
assign v16211_4_address0 = zext_ln3100_2_fu_1048_p1;
assign v16211_4_ce0 = v16211_4_ce0_local;
assign v16211_5_address0 = zext_ln3100_2_fu_1048_p1;
assign v16211_5_ce0 = v16211_5_ce0_local;
assign v16211_6_address0 = zext_ln3100_2_fu_1048_p1;
assign v16211_6_ce0 = v16211_6_ce0_local;
assign v16211_7_address0 = zext_ln3100_2_fu_1048_p1;
assign v16211_7_ce0 = v16211_7_ce0_local;
assign v16211_8_address0 = zext_ln3100_2_fu_1048_p1;
assign v16211_8_ce0 = v16211_8_ce0_local;
assign v16211_9_address0 = zext_ln3100_2_fu_1048_p1;
assign v16211_9_ce0 = v16211_9_ce0_local;
assign v2295_fu_777_p3 = ((ap_phi_mux_icmp_ln3094195_phi_fu_630_p4[0:0] == 1'b1) ? add_ln3093_fu_751_p2 : v2295190_fu_172);
assign v2296_fu_805_p3 = ((and_ln3093_fu_771_p2[0:0] == 1'b1) ? add_ln3094_fu_785_p2 : select_ln3093_fu_757_p3);
assign v2297_fu_919_p2 = (v2297_mid2_fu_797_p3 + 3'd1);
assign v2297_mid2_fu_797_p3 = ((empty_237_fu_791_p2[0:0] == 1'b1) ? 3'd0 : v2297193_fu_184);
assign v2330_10_address0 = zext_ln3128_3_fu_1126_p1;
assign v2330_10_ce0 = v2330_10_ce0_local;
assign v2330_10_d0 = v16211_5_q0;
assign v2330_10_we0 = v2330_10_we0_local;
assign v2330_11_address0 = zext_ln3128_3_fu_1126_p1;
assign v2330_11_ce0 = v2330_11_ce0_local;
assign v2330_11_d0 = v16211_4_q0;
assign v2330_11_we0 = v2330_11_we0_local;
assign v2330_12_address0 = zext_ln3128_3_fu_1126_p1;
assign v2330_12_ce0 = v2330_12_ce0_local;
assign v2330_12_d0 = v16211_3_q0;
assign v2330_12_we0 = v2330_12_we0_local;
assign v2330_13_address0 = zext_ln3128_3_fu_1126_p1;
assign v2330_13_ce0 = v2330_13_ce0_local;
assign v2330_13_d0 = v16211_2_q0;
assign v2330_13_we0 = v2330_13_we0_local;
assign v2330_14_address0 = zext_ln3128_3_fu_1126_p1;
assign v2330_14_ce0 = v2330_14_ce0_local;
assign v2330_14_d0 = v16211_1_q0;
assign v2330_14_we0 = v2330_14_we0_local;
assign v2330_15_address0 = zext_ln3128_3_fu_1126_p1;
assign v2330_15_ce0 = v2330_15_ce0_local;
assign v2330_15_d0 = v16211_0_q0;
assign v2330_15_we0 = v2330_15_we0_local;
assign v2330_1_address0 = zext_ln3128_3_fu_1126_p1;
assign v2330_1_ce0 = v2330_1_ce0_local;
assign v2330_1_d0 = v16211_14_q0;
assign v2330_1_we0 = v2330_1_we0_local;
assign v2330_2_address0 = zext_ln3128_3_fu_1126_p1;
assign v2330_2_ce0 = v2330_2_ce0_local;
assign v2330_2_d0 = v16211_13_q0;
assign v2330_2_we0 = v2330_2_we0_local;
assign v2330_3_address0 = zext_ln3128_3_fu_1126_p1;
assign v2330_3_ce0 = v2330_3_ce0_local;
assign v2330_3_d0 = v16211_12_q0;
assign v2330_3_we0 = v2330_3_we0_local;
assign v2330_4_address0 = zext_ln3128_3_fu_1126_p1;
assign v2330_4_ce0 = v2330_4_ce0_local;
assign v2330_4_d0 = v16211_11_q0;
assign v2330_4_we0 = v2330_4_we0_local;
assign v2330_5_address0 = zext_ln3128_3_fu_1126_p1;
assign v2330_5_ce0 = v2330_5_ce0_local;
assign v2330_5_d0 = v16211_10_q0;
assign v2330_5_we0 = v2330_5_we0_local;
assign v2330_6_address0 = zext_ln3128_3_fu_1126_p1;
assign v2330_6_ce0 = v2330_6_ce0_local;
assign v2330_6_d0 = v16211_9_q0;
assign v2330_6_we0 = v2330_6_we0_local;
assign v2330_7_address0 = zext_ln3128_3_fu_1126_p1;
assign v2330_7_ce0 = v2330_7_ce0_local;
assign v2330_7_d0 = v16211_8_q0;
assign v2330_7_we0 = v2330_7_we0_local;
assign v2330_8_address0 = zext_ln3128_3_fu_1126_p1;
assign v2330_8_ce0 = v2330_8_ce0_local;
assign v2330_8_d0 = v16211_7_q0;
assign v2330_8_we0 = v2330_8_we0_local;
assign v2330_9_address0 = zext_ln3128_3_fu_1126_p1;
assign v2330_9_ce0 = v2330_9_ce0_local;
assign v2330_9_d0 = v16211_6_q0;
assign v2330_9_we0 = v2330_9_we0_local;
assign v2330_address0 = zext_ln3128_3_fu_1126_p1;
assign v2330_ce0 = v2330_ce0_local;
assign v2330_d0 = v16211_15_q0;
assign v2330_we0 = v2330_we0_local;
assign xor_ln3093_fu_765_p2 = (ap_phi_mux_icmp_ln3094195_phi_fu_630_p4 ^ 1'd1);
assign zext_ln3093_1_cast_cast_cast_cast_fu_686_p3 = ((empty_fu_682_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln3093_cast_cast_cast_cast_fu_674_p3 = ((tmp_142_fu_666_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln3093_fu_813_p1 = v2295_fu_777_p3;
assign zext_ln3094_fu_894_p1 = v2296_fu_805_p3;
assign zext_ln3095_fu_1019_p1 = v2297_mid2_reg_1206;
assign zext_ln3098_1_fu_903_p1 = empty_239_fu_898_p2;
assign zext_ln3098_2_fu_985_p1 = tmp_148_fu_978_p3;
assign zext_ln3098_3_fu_1027_p1 = add_ln3097_fu_1022_p2;
assign zext_ln3098_4_fu_1037_p1 = add_ln3098_1_fu_1031_p2;
assign zext_ln3098_fu_848_p1 = tmp_144_fu_839_p4;
assign zext_ln3100_1_fu_1009_p1 = tmp_149_fu_1002_p3;
assign zext_ln3100_2_fu_1048_p1 = add_ln3100_1_fu_1042_p2;
assign zext_ln3100_fu_884_p1 = tmp_146_fu_876_p3;
assign zext_ln3128_1_fu_1107_p1 = add_ln3128_fu_1089_p2;
assign zext_ln3128_2_fu_1117_p1 = v2297_mid2_reg_1206_pp0_iter2_reg;
assign zext_ln3128_3_fu_1126_p1 = add_ln3128_1_fu_1120_p2;
assign zext_ln3128_fu_1086_p1 = v2296_reg_1212_pp0_iter2_reg;
always @ (posedge ap_clk) begin
    mul_i_reg_1187[4:0] <= 5'b00000;
    zext_ln3093_cast_cast_cast_cast_reg_1192[3] <= 1'b0;
    zext_ln3093_1_cast_cast_cast_cast_reg_1197[3] <= 1'b0;
    zext_ln3093_1_cast_cast_cast_cast_reg_1197_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 