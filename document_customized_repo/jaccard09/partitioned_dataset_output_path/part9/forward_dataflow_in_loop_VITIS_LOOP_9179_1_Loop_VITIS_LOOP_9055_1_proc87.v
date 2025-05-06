
module forward_dataflow_in_loop_VITIS_LOOP_9179_1_Loop_VITIS_LOOP_9055_1_proc87 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v5988_address0,v5988_ce0,v5988_we0,v5988_d0,v5988_1_address0,v5988_1_ce0,v5988_1_we0,v5988_1_d0,v5988_2_address0,v5988_2_ce0,v5988_2_we0,v5988_2_d0,v5988_3_address0,v5988_3_ce0,v5988_3_we0,v5988_3_d0,v5988_4_address0,v5988_4_ce0,v5988_4_we0,v5988_4_d0,v5988_5_address0,v5988_5_ce0,v5988_5_we0,v5988_5_d0,v5988_6_address0,v5988_6_ce0,v5988_6_we0,v5988_6_d0,v5988_7_address0,v5988_7_ce0,v5988_7_we0,v5988_7_d0,v5981_0,v9223_0_0_0_address0,v9223_0_0_0_ce0,v9223_0_0_0_q0,v9223_0_0_1_address0,v9223_0_0_1_ce0,v9223_0_0_1_q0,v9223_0_1_0_address0,v9223_0_1_0_ce0,v9223_0_1_0_q0,v9223_0_1_1_address0,v9223_0_1_1_ce0,v9223_0_1_1_q0,v9223_1_0_0_address0,v9223_1_0_0_ce0,v9223_1_0_0_q0,v9223_1_0_1_address0,v9223_1_0_1_ce0,v9223_1_0_1_q0,v9223_1_1_0_address0,v9223_1_1_0_ce0,v9223_1_1_0_q0,v9223_1_1_1_address0,v9223_1_1_1_ce0,v9223_1_1_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [9:0] v5988_address0;
output   v5988_ce0;
output   v5988_we0;
output  [7:0] v5988_d0;
output  [9:0] v5988_1_address0;
output   v5988_1_ce0;
output   v5988_1_we0;
output  [7:0] v5988_1_d0;
output  [9:0] v5988_2_address0;
output   v5988_2_ce0;
output   v5988_2_we0;
output  [7:0] v5988_2_d0;
output  [9:0] v5988_3_address0;
output   v5988_3_ce0;
output   v5988_3_we0;
output  [7:0] v5988_3_d0;
output  [9:0] v5988_4_address0;
output   v5988_4_ce0;
output   v5988_4_we0;
output  [7:0] v5988_4_d0;
output  [9:0] v5988_5_address0;
output   v5988_5_ce0;
output   v5988_5_we0;
output  [7:0] v5988_5_d0;
output  [9:0] v5988_6_address0;
output   v5988_6_ce0;
output   v5988_6_we0;
output  [7:0] v5988_6_d0;
output  [9:0] v5988_7_address0;
output   v5988_7_ce0;
output   v5988_7_we0;
output  [7:0] v5988_7_d0;
input  [8:0] v5981_0;
output  [13:0] v9223_0_0_0_address0;
output   v9223_0_0_0_ce0;
input  [7:0] v9223_0_0_0_q0;
output  [13:0] v9223_0_0_1_address0;
output   v9223_0_0_1_ce0;
input  [7:0] v9223_0_0_1_q0;
output  [13:0] v9223_0_1_0_address0;
output   v9223_0_1_0_ce0;
input  [7:0] v9223_0_1_0_q0;
output  [13:0] v9223_0_1_1_address0;
output   v9223_0_1_1_ce0;
input  [7:0] v9223_0_1_1_q0;
output  [13:0] v9223_1_0_0_address0;
output   v9223_1_0_0_ce0;
input  [7:0] v9223_1_0_0_q0;
output  [13:0] v9223_1_0_1_address0;
output   v9223_1_0_1_ce0;
input  [7:0] v9223_1_0_1_q0;
output  [13:0] v9223_1_1_0_address0;
output   v9223_1_1_0_ce0;
input  [7:0] v9223_1_1_0_q0;
output  [13:0] v9223_1_1_1_address0;
output   v9223_1_1_1_ce0;
input  [7:0] v9223_1_1_1_q0;
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
wire   [0:0] icmp_ln9055_fu_776_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] p_udiv10_cast_cast_cast_cast_fu_466_p3;
reg   [3:0] p_udiv10_cast_cast_cast_cast_reg_1142;
wire   [4:0] lshr_ln_fu_580_p4;
reg   [4:0] lshr_ln_reg_1147;
wire   [9:0] sub_ln9060_fu_626_p2;
reg   [9:0] sub_ln9060_reg_1153;
wire   [9:0] sub_ln9068_fu_662_p2;
reg   [9:0] sub_ln9068_reg_1159;
wire   [2:0] lshr_ln6_fu_672_p4;
reg   [2:0] lshr_ln6_reg_1165;
wire   [3:0] empty_152_fu_692_p2;
reg   [3:0] empty_152_reg_1170;
reg   [3:0] tmp_s_reg_1175;
reg   [2:0] lshr_ln7_reg_1180;
reg   [3:0] lshr_ln8_reg_1186;
wire   [0:0] icmp_ln9057_fu_764_p2;
reg   [0:0] icmp_ln9057_reg_1191;
wire   [0:0] icmp_ln9056_fu_770_p2;
reg   [0:0] icmp_ln9056_reg_1196;
reg   [0:0] icmp_ln9055_reg_1201;
wire   [9:0] add_ln9074_1_fu_990_p2;
reg   [9:0] add_ln9074_1_reg_1205;
reg   [0:0] ap_phi_mux_icmp_ln905699_phi_fu_387_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln905798_phi_fu_397_p4;
wire   [63:0] zext_ln9060_4_fu_1011_p1;
wire   [63:0] zext_ln9064_2_fu_1022_p1;
wire   [63:0] zext_ln9068_2_fu_1033_p1;
wire   [63:0] zext_ln9072_1_fu_1044_p1;
wire   [63:0] zext_ln9062_1_fu_1058_p1;
wire   [63:0] zext_ln9066_fu_1069_p1;
wire   [63:0] zext_ln9070_fu_1080_p1;
wire   [63:0] zext_ln9074_5_fu_1091_p1;
wire   [63:0] zext_ln9074_4_fu_1096_p1;
reg   [9:0] indvar_flatten1293_fu_142;
wire   [9:0] add_ln9055_1_fu_758_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten1293_load;
reg   [5:0] v593494_fu_146;
wire   [5:0] v5934_fu_540_p3;
reg   [5:0] ap_sig_allocacmp_v593494_load;
reg   [5:0] indvar_flatten95_fu_150;
wire   [5:0] select_ln9056_1_fu_750_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten95_load;
reg   [3:0] v593596_fu_154;
wire   [3:0] v5935_fu_568_p3;
reg   [3:0] ap_sig_allocacmp_v593596_load;
reg   [3:0] v593697_fu_158;
wire   [3:0] v5936_fu_738_p2;
reg   [3:0] ap_sig_allocacmp_v593697_load;
reg    v9223_0_0_0_ce0_local;
reg    v9223_0_0_1_ce0_local;
reg    v9223_0_1_0_ce0_local;
reg    v9223_0_1_1_ce0_local;
reg    v9223_1_0_0_ce0_local;
reg    v9223_1_0_1_ce0_local;
reg    v9223_1_1_0_ce0_local;
reg    v9223_1_1_1_ce0_local;
reg    v5988_7_we0_local;
reg    v5988_7_ce0_local;
reg    v5988_6_we0_local;
reg    v5988_6_ce0_local;
reg    v5988_5_we0_local;
reg    v5988_5_ce0_local;
reg    v5988_4_we0_local;
reg    v5988_4_ce0_local;
reg    v5988_3_we0_local;
reg    v5988_3_ce0_local;
reg    v5988_2_we0_local;
reg    v5988_2_ce0_local;
reg    v5988_1_we0_local;
reg    v5988_1_ce0_local;
reg    v5988_we0_local;
reg    v5988_ce0_local;
wire   [1:0] tmp_fu_404_p4;
wire   [0:0] tmp_19_fu_430_p3;
wire   [0:0] empty_fu_454_p1;
wire   [0:0] xor_ln9055_fu_528_p2;
wire   [5:0] add_ln9055_fu_514_p2;
wire   [3:0] select_ln9055_fu_520_p3;
wire   [0:0] and_ln9055_fu_534_p2;
wire   [0:0] empty_148_fu_554_p2;
wire   [3:0] add_ln9056_fu_548_p2;
wire   [6:0] mul_i_fu_414_p3;
wire   [6:0] zext_ln9055_fu_576_p1;
wire   [5:0] zext_ln9055_1_fu_590_p1;
wire   [5:0] trunc_ln_fu_422_p3;
wire   [5:0] empty_150_fu_600_p2;
wire   [6:0] tmp_21_fu_614_p3;
wire   [9:0] p_shl14_fu_606_p3;
wire   [9:0] zext_ln9060_fu_622_p1;
wire   [6:0] empty_149_fu_594_p2;
wire   [5:0] tmp_22_fu_632_p4;
wire   [6:0] tmp_23_fu_650_p3;
wire   [9:0] p_shl15_fu_642_p3;
wire   [9:0] zext_ln9068_fu_658_p1;
wire   [4:0] mul9_i_cast_cast_cast_cast_cast_cast_fu_438_p3;
wire   [4:0] zext_ln9056_fu_668_p1;
wire   [3:0] zext_ln9056_1_fu_682_p1;
wire   [3:0] p_udiv8_cast_cast_cast_cast_fu_446_p3;
wire   [4:0] empty_151_fu_686_p2;
wire   [3:0] v5936_mid2_fu_560_p3;
wire   [4:0] zext_ln9055_cast_cast_cast_cast_fu_458_p3;
wire   [4:0] zext_ln9057_fu_708_p1;
wire   [4:0] add_ln9059_fu_722_p2;
wire   [5:0] add_ln9056_1_fu_744_p2;
wire   [7:0] p_shl13_fu_810_p3;
wire   [7:0] zext_ln9074_fu_807_p1;
wire   [7:0] sub_ln9074_fu_817_p2;
wire   [7:0] zext_ln9074_1_fu_823_p1;
wire   [7:0] add_ln9074_fu_826_p2;
wire   [6:0] trunc_ln9074_fu_832_p1;
wire   [9:0] tmp_24_fu_836_p3;
wire   [9:0] zext_ln9074_2_fu_844_p1;
wire   [9:0] zext_ln9060_1_fu_854_p1;
wire   [9:0] add_ln9060_1_fu_857_p2;
wire   [10:0] tmp_25_fu_870_p3;
wire   [13:0] p_shl16_fu_862_p3;
wire   [13:0] zext_ln9060_2_fu_878_p1;
wire   [9:0] add_ln9068_fu_888_p2;
wire   [10:0] tmp_26_fu_901_p3;
wire   [13:0] p_shl17_fu_893_p3;
wire   [13:0] zext_ln9068_1_fu_909_p1;
wire   [9:0] zext_ln9064_fu_919_p1;
wire   [9:0] add_ln9064_fu_922_p2;
wire   [10:0] tmp_27_fu_935_p3;
wire   [13:0] p_shl18_fu_927_p3;
wire   [13:0] zext_ln9064_1_fu_943_p1;
wire   [9:0] add_ln9072_fu_953_p2;
wire   [10:0] tmp_28_fu_966_p3;
wire   [13:0] p_shl_fu_958_p3;
wire   [13:0] zext_ln9072_fu_974_p1;
wire   [9:0] sub_ln9074_1_fu_848_p2;
wire   [9:0] zext_ln9074_3_fu_987_p1;
wire   [3:0] zext_ln9057_1_fu_984_p1;
wire   [3:0] add_ln9060_fu_996_p2;
wire   [13:0] sub_ln9060_1_fu_882_p2;
wire   [13:0] zext_ln9060_3_fu_1001_p1;
wire   [13:0] add_ln9060_2_fu_1005_p2;
wire   [13:0] sub_ln9064_fu_947_p2;
wire   [13:0] add_ln9064_1_fu_1016_p2;
wire   [13:0] sub_ln9068_1_fu_913_p2;
wire   [13:0] add_ln9068_1_fu_1027_p2;
wire   [13:0] sub_ln9072_fu_978_p2;
wire   [13:0] add_ln9072_1_fu_1038_p2;
wire   [13:0] zext_ln9062_fu_1049_p1;
wire   [13:0] add_ln9062_fu_1052_p2;
wire   [13:0] add_ln9066_fu_1063_p2;
wire   [13:0] add_ln9070_fu_1074_p2;
wire   [13:0] add_ln9074_2_fu_1085_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_764;
reg    ap_condition_192;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1293_fu_142 = 10'd0;
#0 v593494_fu_146 = 6'd0;
#0 indvar_flatten95_fu_150 = 6'd0;
#0 v593596_fu_154 = 4'd0;
#0 v593697_fu_158 = 4'd0;
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
    if ((1'b1 == ap_condition_192)) begin
        indvar_flatten1293_fu_142 <= add_ln9055_1_fu_758_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_192)) begin
    indvar_flatten95_fu_150 <= select_ln9056_1_fu_750_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_192)) begin
    v593494_fu_146 <= v5934_fu_540_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_192)) begin
    v593596_fu_154 <= v5935_fu_568_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_192)) begin
    v593697_fu_158 <= v5936_fu_738_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln9074_1_reg_1205 <= add_ln9074_1_fu_990_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_152_reg_1170 <= empty_152_fu_692_p2;
        icmp_ln9055_reg_1201 <= icmp_ln9055_fu_776_p2;
        lshr_ln6_reg_1165 <= {{v5935_fu_568_p3[3:1]}};
        lshr_ln7_reg_1180 <= {{v5936_mid2_fu_560_p3[3:1]}};
        lshr_ln8_reg_1186 <= {{add_ln9059_fu_722_p2[4:1]}};
        lshr_ln_reg_1147 <= {{v5934_fu_540_p3[5:1]}};
        p_udiv10_cast_cast_cast_cast_reg_1142[2 : 0] <= p_udiv10_cast_cast_cast_cast_fu_466_p3[2 : 0];
        sub_ln9060_reg_1153[9 : 1] <= sub_ln9060_fu_626_p2[9 : 1];
        sub_ln9068_reg_1159[9 : 1] <= sub_ln9068_fu_662_p2[9 : 1];
        tmp_s_reg_1175 <= {{empty_151_fu_686_p2[4:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln9056_reg_1196 <= icmp_ln9056_fu_770_p2;
        icmp_ln9057_reg_1191 <= icmp_ln9057_fu_764_p2;
    end
end
always @ (*) begin
    if (((icmp_ln9055_fu_776_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_764)) begin
            ap_phi_mux_icmp_ln905699_phi_fu_387_p4 = icmp_ln9056_reg_1196;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln905699_phi_fu_387_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln905699_phi_fu_387_p4 = icmp_ln9056_reg_1196;
        end
    end else begin
        ap_phi_mux_icmp_ln905699_phi_fu_387_p4 = icmp_ln9056_reg_1196;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_764)) begin
            ap_phi_mux_icmp_ln905798_phi_fu_397_p4 = icmp_ln9057_reg_1191;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln905798_phi_fu_397_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln905798_phi_fu_397_p4 = icmp_ln9057_reg_1191;
        end
    end else begin
        ap_phi_mux_icmp_ln905798_phi_fu_397_p4 = icmp_ln9057_reg_1191;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten1293_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1293_load = indvar_flatten1293_fu_142;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten95_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten95_load = indvar_flatten95_fu_150;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v593494_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v593494_load = v593494_fu_146;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v593596_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v593596_load = v593596_fu_154;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v593697_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v593697_load = v593697_fu_158;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5988_1_ce0_local = 1'b1;
    end else begin
        v5988_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5988_1_we0_local = 1'b1;
    end else begin
        v5988_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5988_2_ce0_local = 1'b1;
    end else begin
        v5988_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5988_2_we0_local = 1'b1;
    end else begin
        v5988_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5988_3_ce0_local = 1'b1;
    end else begin
        v5988_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5988_3_we0_local = 1'b1;
    end else begin
        v5988_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5988_4_ce0_local = 1'b1;
    end else begin
        v5988_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5988_4_we0_local = 1'b1;
    end else begin
        v5988_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5988_5_ce0_local = 1'b1;
    end else begin
        v5988_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5988_5_we0_local = 1'b1;
    end else begin
        v5988_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5988_6_ce0_local = 1'b1;
    end else begin
        v5988_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5988_6_we0_local = 1'b1;
    end else begin
        v5988_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5988_7_ce0_local = 1'b1;
    end else begin
        v5988_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5988_7_we0_local = 1'b1;
    end else begin
        v5988_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5988_ce0_local = 1'b1;
    end else begin
        v5988_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5988_we0_local = 1'b1;
    end else begin
        v5988_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9223_0_0_0_ce0_local = 1'b1;
    end else begin
        v9223_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9223_0_0_1_ce0_local = 1'b1;
    end else begin
        v9223_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9223_0_1_0_ce0_local = 1'b1;
    end else begin
        v9223_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9223_0_1_1_ce0_local = 1'b1;
    end else begin
        v9223_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9223_1_0_0_ce0_local = 1'b1;
    end else begin
        v9223_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9223_1_0_1_ce0_local = 1'b1;
    end else begin
        v9223_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9223_1_1_0_ce0_local = 1'b1;
    end else begin
        v9223_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9223_1_1_1_ce0_local = 1'b1;
    end else begin
        v9223_1_1_1_ce0_local = 1'b0;
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
assign add_ln9055_1_fu_758_p2 = (ap_sig_allocacmp_indvar_flatten1293_load + 10'd1);
assign add_ln9055_fu_514_p2 = (ap_sig_allocacmp_v593494_load + 6'd2);
assign add_ln9056_1_fu_744_p2 = (ap_sig_allocacmp_indvar_flatten95_load + 6'd1);
assign add_ln9056_fu_548_p2 = (select_ln9055_fu_520_p3 + 4'd2);
assign add_ln9059_fu_722_p2 = (zext_ln9055_cast_cast_cast_cast_fu_458_p3 + zext_ln9057_fu_708_p1);
assign add_ln9060_1_fu_857_p2 = (sub_ln9060_reg_1153 + zext_ln9060_1_fu_854_p1);
assign add_ln9060_2_fu_1005_p2 = (sub_ln9060_1_fu_882_p2 + zext_ln9060_3_fu_1001_p1);
assign add_ln9060_fu_996_p2 = (zext_ln9057_1_fu_984_p1 + p_udiv10_cast_cast_cast_cast_reg_1142);
assign add_ln9062_fu_1052_p2 = (sub_ln9060_1_fu_882_p2 + zext_ln9062_fu_1049_p1);
assign add_ln9064_1_fu_1016_p2 = (sub_ln9064_fu_947_p2 + zext_ln9060_3_fu_1001_p1);
assign add_ln9064_fu_922_p2 = (sub_ln9060_reg_1153 + zext_ln9064_fu_919_p1);
assign add_ln9066_fu_1063_p2 = (sub_ln9064_fu_947_p2 + zext_ln9062_fu_1049_p1);
assign add_ln9068_1_fu_1027_p2 = (sub_ln9068_1_fu_913_p2 + zext_ln9060_3_fu_1001_p1);
assign add_ln9068_fu_888_p2 = (sub_ln9068_reg_1159 + zext_ln9060_1_fu_854_p1);
assign add_ln9070_fu_1074_p2 = (sub_ln9068_1_fu_913_p2 + zext_ln9062_fu_1049_p1);
assign add_ln9072_1_fu_1038_p2 = (sub_ln9072_fu_978_p2 + zext_ln9060_3_fu_1001_p1);
assign add_ln9072_fu_953_p2 = (sub_ln9068_reg_1159 + zext_ln9064_fu_919_p1);
assign add_ln9074_1_fu_990_p2 = (sub_ln9074_1_fu_848_p2 + zext_ln9074_3_fu_987_p1);
assign add_ln9074_2_fu_1085_p2 = (sub_ln9072_fu_978_p2 + zext_ln9062_fu_1049_p1);
assign add_ln9074_fu_826_p2 = (sub_ln9074_fu_817_p2 + zext_ln9074_1_fu_823_p1);
assign and_ln9055_fu_534_p2 = (xor_ln9055_fu_528_p2 & ap_phi_mux_icmp_ln905798_phi_fu_397_p4);
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
    ap_condition_192 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_764 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln9055_reg_1201 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_148_fu_554_p2 = (ap_phi_mux_icmp_ln905699_phi_fu_387_p4 | and_ln9055_fu_534_p2);
assign empty_149_fu_594_p2 = (mul_i_fu_414_p3 + zext_ln9055_fu_576_p1);
assign empty_150_fu_600_p2 = (zext_ln9055_1_fu_590_p1 + trunc_ln_fu_422_p3);
assign empty_151_fu_686_p2 = (mul9_i_cast_cast_cast_cast_cast_cast_fu_438_p3 + zext_ln9056_fu_668_p1);
assign empty_152_fu_692_p2 = (zext_ln9056_1_fu_682_p1 + p_udiv8_cast_cast_cast_cast_fu_446_p3);
assign empty_fu_454_p1 = v5981_0[0:0];
assign icmp_ln9055_fu_776_p2 = ((ap_sig_allocacmp_indvar_flatten1293_load == 10'd783) ? 1'b1 : 1'b0);
assign icmp_ln9056_fu_770_p2 = ((select_ln9056_1_fu_750_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln9057_fu_764_p2 = ((v5936_fu_738_p2 == 4'd14) ? 1'b1 : 1'b0);
assign lshr_ln6_fu_672_p4 = {{v5935_fu_568_p3[3:1]}};
assign lshr_ln_fu_580_p4 = {{v5934_fu_540_p3[5:1]}};
assign mul9_i_cast_cast_cast_cast_cast_cast_fu_438_p3 = ((tmp_19_fu_430_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign mul_i_fu_414_p3 = {{tmp_fu_404_p4}, {5'd0}};
assign p_shl13_fu_810_p3 = {{lshr_ln_reg_1147}, {3'd0}};
assign p_shl14_fu_606_p3 = {{empty_150_fu_600_p2}, {4'd0}};
assign p_shl15_fu_642_p3 = {{tmp_22_fu_632_p4}, {4'd0}};
assign p_shl16_fu_862_p3 = {{add_ln9060_1_fu_857_p2}, {4'd0}};
assign p_shl17_fu_893_p3 = {{add_ln9068_fu_888_p2}, {4'd0}};
assign p_shl18_fu_927_p3 = {{add_ln9064_fu_922_p2}, {4'd0}};
assign p_shl_fu_958_p3 = {{add_ln9072_fu_953_p2}, {4'd0}};
assign p_udiv10_cast_cast_cast_cast_fu_466_p3 = ((empty_fu_454_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign p_udiv8_cast_cast_cast_cast_fu_446_p3 = ((tmp_19_fu_430_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign select_ln9055_fu_520_p3 = ((ap_phi_mux_icmp_ln905699_phi_fu_387_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v593596_load);
assign select_ln9056_1_fu_750_p3 = ((ap_phi_mux_icmp_ln905699_phi_fu_387_p4[0:0] == 1'b1) ? 6'd1 : add_ln9056_1_fu_744_p2);
assign sub_ln9060_1_fu_882_p2 = (p_shl16_fu_862_p3 - zext_ln9060_2_fu_878_p1);
assign sub_ln9060_fu_626_p2 = (p_shl14_fu_606_p3 - zext_ln9060_fu_622_p1);
assign sub_ln9064_fu_947_p2 = (p_shl18_fu_927_p3 - zext_ln9064_1_fu_943_p1);
assign sub_ln9068_1_fu_913_p2 = (p_shl17_fu_893_p3 - zext_ln9068_1_fu_909_p1);
assign sub_ln9068_fu_662_p2 = (p_shl15_fu_642_p3 - zext_ln9068_fu_658_p1);
assign sub_ln9072_fu_978_p2 = (p_shl_fu_958_p3 - zext_ln9072_fu_974_p1);
assign sub_ln9074_1_fu_848_p2 = (tmp_24_fu_836_p3 - zext_ln9074_2_fu_844_p1);
assign sub_ln9074_fu_817_p2 = (p_shl13_fu_810_p3 - zext_ln9074_fu_807_p1);
assign tmp_19_fu_430_p3 = v5981_0[32'd1];
assign tmp_21_fu_614_p3 = {{empty_150_fu_600_p2}, {1'd0}};
assign tmp_22_fu_632_p4 = {{empty_149_fu_594_p2[6:1]}};
assign tmp_23_fu_650_p3 = {{tmp_22_fu_632_p4}, {1'd0}};
assign tmp_24_fu_836_p3 = {{trunc_ln9074_fu_832_p1}, {3'd0}};
assign tmp_25_fu_870_p3 = {{add_ln9060_1_fu_857_p2}, {1'd0}};
assign tmp_26_fu_901_p3 = {{add_ln9068_fu_888_p2}, {1'd0}};
assign tmp_27_fu_935_p3 = {{add_ln9064_fu_922_p2}, {1'd0}};
assign tmp_28_fu_966_p3 = {{add_ln9072_fu_953_p2}, {1'd0}};
assign tmp_fu_404_p4 = {{v5981_0[3:2]}};
assign trunc_ln9074_fu_832_p1 = add_ln9074_fu_826_p2[6:0];
assign trunc_ln_fu_422_p3 = {{tmp_fu_404_p4}, {4'd0}};
assign v5934_fu_540_p3 = ((ap_phi_mux_icmp_ln905699_phi_fu_387_p4[0:0] == 1'b1) ? add_ln9055_fu_514_p2 : ap_sig_allocacmp_v593494_load);
assign v5935_fu_568_p3 = ((and_ln9055_fu_534_p2[0:0] == 1'b1) ? add_ln9056_fu_548_p2 : select_ln9055_fu_520_p3);
assign v5936_fu_738_p2 = (v5936_mid2_fu_560_p3 + 4'd2);
assign v5936_mid2_fu_560_p3 = ((empty_148_fu_554_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v593697_load);
assign v5988_1_address0 = zext_ln9074_4_fu_1096_p1;
assign v5988_1_ce0 = v5988_1_ce0_local;
assign v5988_1_d0 = v9223_1_1_0_q0;
assign v5988_1_we0 = v5988_1_we0_local;
assign v5988_2_address0 = zext_ln9074_4_fu_1096_p1;
assign v5988_2_ce0 = v5988_2_ce0_local;
assign v5988_2_d0 = v9223_1_0_1_q0;
assign v5988_2_we0 = v5988_2_we0_local;
assign v5988_3_address0 = zext_ln9074_4_fu_1096_p1;
assign v5988_3_ce0 = v5988_3_ce0_local;
assign v5988_3_d0 = v9223_1_0_0_q0;
assign v5988_3_we0 = v5988_3_we0_local;
assign v5988_4_address0 = zext_ln9074_4_fu_1096_p1;
assign v5988_4_ce0 = v5988_4_ce0_local;
assign v5988_4_d0 = v9223_0_1_1_q0;
assign v5988_4_we0 = v5988_4_we0_local;
assign v5988_5_address0 = zext_ln9074_4_fu_1096_p1;
assign v5988_5_ce0 = v5988_5_ce0_local;
assign v5988_5_d0 = v9223_0_1_0_q0;
assign v5988_5_we0 = v5988_5_we0_local;
assign v5988_6_address0 = zext_ln9074_4_fu_1096_p1;
assign v5988_6_ce0 = v5988_6_ce0_local;
assign v5988_6_d0 = v9223_0_0_1_q0;
assign v5988_6_we0 = v5988_6_we0_local;
assign v5988_7_address0 = zext_ln9074_4_fu_1096_p1;
assign v5988_7_ce0 = v5988_7_ce0_local;
assign v5988_7_d0 = v9223_0_0_0_q0;
assign v5988_7_we0 = v5988_7_we0_local;
assign v5988_address0 = zext_ln9074_4_fu_1096_p1;
assign v5988_ce0 = v5988_ce0_local;
assign v5988_d0 = v9223_1_1_1_q0;
assign v5988_we0 = v5988_we0_local;
assign v9223_0_0_0_address0 = zext_ln9060_4_fu_1011_p1;
assign v9223_0_0_0_ce0 = v9223_0_0_0_ce0_local;
assign v9223_0_0_1_address0 = zext_ln9062_1_fu_1058_p1;
assign v9223_0_0_1_ce0 = v9223_0_0_1_ce0_local;
assign v9223_0_1_0_address0 = zext_ln9064_2_fu_1022_p1;
assign v9223_0_1_0_ce0 = v9223_0_1_0_ce0_local;
assign v9223_0_1_1_address0 = zext_ln9066_fu_1069_p1;
assign v9223_0_1_1_ce0 = v9223_0_1_1_ce0_local;
assign v9223_1_0_0_address0 = zext_ln9068_2_fu_1033_p1;
assign v9223_1_0_0_ce0 = v9223_1_0_0_ce0_local;
assign v9223_1_0_1_address0 = zext_ln9070_fu_1080_p1;
assign v9223_1_0_1_ce0 = v9223_1_0_1_ce0_local;
assign v9223_1_1_0_address0 = zext_ln9072_1_fu_1044_p1;
assign v9223_1_1_0_ce0 = v9223_1_1_0_ce0_local;
assign v9223_1_1_1_address0 = zext_ln9074_5_fu_1091_p1;
assign v9223_1_1_1_ce0 = v9223_1_1_1_ce0_local;
assign xor_ln9055_fu_528_p2 = (ap_phi_mux_icmp_ln905699_phi_fu_387_p4 ^ 1'd1);
assign zext_ln9055_1_fu_590_p1 = lshr_ln_fu_580_p4;
assign zext_ln9055_cast_cast_cast_cast_fu_458_p3 = ((empty_fu_454_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln9055_fu_576_p1 = v5934_fu_540_p3;
assign zext_ln9056_1_fu_682_p1 = lshr_ln6_fu_672_p4;
assign zext_ln9056_fu_668_p1 = v5935_fu_568_p3;
assign zext_ln9057_1_fu_984_p1 = lshr_ln7_reg_1180;
assign zext_ln9057_fu_708_p1 = v5936_mid2_fu_560_p3;
assign zext_ln9060_1_fu_854_p1 = empty_152_reg_1170;
assign zext_ln9060_2_fu_878_p1 = tmp_25_fu_870_p3;
assign zext_ln9060_3_fu_1001_p1 = add_ln9060_fu_996_p2;
assign zext_ln9060_4_fu_1011_p1 = add_ln9060_2_fu_1005_p2;
assign zext_ln9060_fu_622_p1 = tmp_21_fu_614_p3;
assign zext_ln9062_1_fu_1058_p1 = add_ln9062_fu_1052_p2;
assign zext_ln9062_fu_1049_p1 = lshr_ln8_reg_1186;
assign zext_ln9064_1_fu_943_p1 = tmp_27_fu_935_p3;
assign zext_ln9064_2_fu_1022_p1 = add_ln9064_1_fu_1016_p2;
assign zext_ln9064_fu_919_p1 = tmp_s_reg_1175;
assign zext_ln9066_fu_1069_p1 = add_ln9066_fu_1063_p2;
assign zext_ln9068_1_fu_909_p1 = tmp_26_fu_901_p3;
assign zext_ln9068_2_fu_1033_p1 = add_ln9068_1_fu_1027_p2;
assign zext_ln9068_fu_658_p1 = tmp_23_fu_650_p3;
assign zext_ln9070_fu_1080_p1 = add_ln9070_fu_1074_p2;
assign zext_ln9072_1_fu_1044_p1 = add_ln9072_1_fu_1038_p2;
assign zext_ln9072_fu_974_p1 = tmp_28_fu_966_p3;
assign zext_ln9074_1_fu_823_p1 = lshr_ln6_reg_1165;
assign zext_ln9074_2_fu_844_p1 = add_ln9074_fu_826_p2;
assign zext_ln9074_3_fu_987_p1 = lshr_ln7_reg_1180;
assign zext_ln9074_4_fu_1096_p1 = add_ln9074_1_reg_1205;
assign zext_ln9074_5_fu_1091_p1 = add_ln9074_2_fu_1085_p2;
assign zext_ln9074_fu_807_p1 = lshr_ln_reg_1147;
always @ (posedge ap_clk) begin
    p_udiv10_cast_cast_cast_cast_reg_1142[3] <= 1'b0;
    sub_ln9060_reg_1153[0] <= 1'b0;
    sub_ln9068_reg_1159[0] <= 1'b0;
end
endmodule 
