
module forward_dataflow_in_loop_VITIS_LOOP_5118_1_Loop_VITIS_LOOP_3203_1_proc135 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v16207_15_address0,v16207_15_ce0,v16207_15_we0,v16207_15_d0,v16207_14_address0,v16207_14_ce0,v16207_14_we0,v16207_14_d0,v16207_13_address0,v16207_13_ce0,v16207_13_we0,v16207_13_d0,v16207_12_address0,v16207_12_ce0,v16207_12_we0,v16207_12_d0,v16207_11_address0,v16207_11_ce0,v16207_11_we0,v16207_11_d0,v16207_10_address0,v16207_10_ce0,v16207_10_we0,v16207_10_d0,v16207_9_address0,v16207_9_ce0,v16207_9_we0,v16207_9_d0,v16207_8_address0,v16207_8_ce0,v16207_8_we0,v16207_8_d0,v16207_7_address0,v16207_7_ce0,v16207_7_we0,v16207_7_d0,v16207_6_address0,v16207_6_ce0,v16207_6_we0,v16207_6_d0,v16207_5_address0,v16207_5_ce0,v16207_5_we0,v16207_5_d0,v16207_4_address0,v16207_4_ce0,v16207_4_we0,v16207_4_d0,v16207_3_address0,v16207_3_ce0,v16207_3_we0,v16207_3_d0,v16207_2_address0,v16207_2_ce0,v16207_2_we0,v16207_2_d0,v16207_1_address0,v16207_1_ce0,v16207_1_we0,v16207_1_d0,v16207_0_address0,v16207_0_ce0,v16207_0_we0,v16207_0_d0,p_read,v3987_15_address0,v3987_15_ce0,v3987_15_q0,v3987_14_address0,v3987_14_ce0,v3987_14_q0,v3987_13_address0,v3987_13_ce0,v3987_13_q0,v3987_12_address0,v3987_12_ce0,v3987_12_q0,v3987_11_address0,v3987_11_ce0,v3987_11_q0,v3987_10_address0,v3987_10_ce0,v3987_10_q0,v3987_9_address0,v3987_9_ce0,v3987_9_q0,v3987_8_address0,v3987_8_ce0,v3987_8_q0,v3987_7_address0,v3987_7_ce0,v3987_7_q0,v3987_6_address0,v3987_6_ce0,v3987_6_q0,v3987_5_address0,v3987_5_ce0,v3987_5_q0,v3987_4_address0,v3987_4_ce0,v3987_4_q0,v3987_3_address0,v3987_3_ce0,v3987_3_q0,v3987_2_address0,v3987_2_ce0,v3987_2_q0,v3987_1_address0,v3987_1_ce0,v3987_1_q0,v3987_address0,v3987_ce0,v3987_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [12:0] v16207_15_address0;
output   v16207_15_ce0;
output   v16207_15_we0;
output  [7:0] v16207_15_d0;
output  [12:0] v16207_14_address0;
output   v16207_14_ce0;
output   v16207_14_we0;
output  [7:0] v16207_14_d0;
output  [12:0] v16207_13_address0;
output   v16207_13_ce0;
output   v16207_13_we0;
output  [7:0] v16207_13_d0;
output  [12:0] v16207_12_address0;
output   v16207_12_ce0;
output   v16207_12_we0;
output  [7:0] v16207_12_d0;
output  [12:0] v16207_11_address0;
output   v16207_11_ce0;
output   v16207_11_we0;
output  [7:0] v16207_11_d0;
output  [12:0] v16207_10_address0;
output   v16207_10_ce0;
output   v16207_10_we0;
output  [7:0] v16207_10_d0;
output  [12:0] v16207_9_address0;
output   v16207_9_ce0;
output   v16207_9_we0;
output  [7:0] v16207_9_d0;
output  [12:0] v16207_8_address0;
output   v16207_8_ce0;
output   v16207_8_we0;
output  [7:0] v16207_8_d0;
output  [12:0] v16207_7_address0;
output   v16207_7_ce0;
output   v16207_7_we0;
output  [7:0] v16207_7_d0;
output  [12:0] v16207_6_address0;
output   v16207_6_ce0;
output   v16207_6_we0;
output  [7:0] v16207_6_d0;
output  [12:0] v16207_5_address0;
output   v16207_5_ce0;
output   v16207_5_we0;
output  [7:0] v16207_5_d0;
output  [12:0] v16207_4_address0;
output   v16207_4_ce0;
output   v16207_4_we0;
output  [7:0] v16207_4_d0;
output  [12:0] v16207_3_address0;
output   v16207_3_ce0;
output   v16207_3_we0;
output  [7:0] v16207_3_d0;
output  [12:0] v16207_2_address0;
output   v16207_2_ce0;
output   v16207_2_we0;
output  [7:0] v16207_2_d0;
output  [12:0] v16207_1_address0;
output   v16207_1_ce0;
output   v16207_1_we0;
output  [7:0] v16207_1_d0;
output  [12:0] v16207_0_address0;
output   v16207_0_ce0;
output   v16207_0_we0;
output  [7:0] v16207_0_d0;
input  [5:0] p_read;
output  [6:0] v3987_15_address0;
output   v3987_15_ce0;
input  [7:0] v3987_15_q0;
output  [6:0] v3987_14_address0;
output   v3987_14_ce0;
input  [7:0] v3987_14_q0;
output  [6:0] v3987_13_address0;
output   v3987_13_ce0;
input  [7:0] v3987_13_q0;
output  [6:0] v3987_12_address0;
output   v3987_12_ce0;
input  [7:0] v3987_12_q0;
output  [6:0] v3987_11_address0;
output   v3987_11_ce0;
input  [7:0] v3987_11_q0;
output  [6:0] v3987_10_address0;
output   v3987_10_ce0;
input  [7:0] v3987_10_q0;
output  [6:0] v3987_9_address0;
output   v3987_9_ce0;
input  [7:0] v3987_9_q0;
output  [6:0] v3987_8_address0;
output   v3987_8_ce0;
input  [7:0] v3987_8_q0;
output  [6:0] v3987_7_address0;
output   v3987_7_ce0;
input  [7:0] v3987_7_q0;
output  [6:0] v3987_6_address0;
output   v3987_6_ce0;
input  [7:0] v3987_6_q0;
output  [6:0] v3987_5_address0;
output   v3987_5_ce0;
input  [7:0] v3987_5_q0;
output  [6:0] v3987_4_address0;
output   v3987_4_ce0;
input  [7:0] v3987_4_q0;
output  [6:0] v3987_3_address0;
output   v3987_3_ce0;
input  [7:0] v3987_3_q0;
output  [6:0] v3987_2_address0;
output   v3987_2_ce0;
input  [7:0] v3987_2_q0;
output  [6:0] v3987_1_address0;
output   v3987_1_ce0;
input  [7:0] v3987_1_q0;
output  [6:0] v3987_address0;
output   v3987_ce0;
input  [7:0] v3987_q0;
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
wire   [0:0] icmp_ln3203_fu_858_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] tmp_fu_644_p4;
reg   [3:0] tmp_reg_1173;
wire   [3:0] zext_ln5055_cast_cast_cast_cast_fu_670_p3;
reg   [3:0] zext_ln5055_cast_cast_cast_cast_reg_1179;
wire   [3:0] zext_ln5055_5_cast_cast_cast_cast_fu_682_p3;
reg   [3:0] zext_ln5055_5_cast_cast_cast_cast_reg_1184;
reg   [3:0] zext_ln5055_5_cast_cast_cast_cast_reg_1184_pp0_iter1_reg;
wire   [2:0] v2339_mid2_fu_776_p3;
reg   [2:0] v2339_mid2_reg_1189;
reg   [2:0] v2339_mid2_reg_1189_pp0_iter1_reg;
wire   [2:0] v2338_fu_784_p3;
reg   [2:0] v2338_reg_1195;
reg   [0:0] tmp_132_reg_1201;
reg   [4:0] tmp_134_reg_1208;
wire   [0:0] icmp_ln3205_fu_846_p2;
reg   [0:0] icmp_ln3205_reg_1214;
wire   [0:0] icmp_ln3204_fu_852_p2;
reg   [0:0] icmp_ln3204_reg_1219;
reg   [0:0] icmp_ln3203_reg_1224;
wire   [8:0] add_ln3238_fu_1001_p2;
reg   [8:0] add_ln3238_reg_1228;
wire   [8:0] add_ln3208_1_fu_1007_p2;
reg   [8:0] add_ln3208_1_reg_1234;
reg   [0:0] ap_phi_mux_icmp_ln3204291_phi_fu_627_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln3205290_phi_fu_637_p4;
wire   [63:0] zext_ln3207_3_fu_1022_p1;
wire   [63:0] zext_ln3238_4_fu_1108_p1;
wire   [63:0] zext_ln3208_2_fu_1133_p1;
reg   [6:0] indvar_flatten12285_fu_166;
wire   [6:0] add_ln3203_1_fu_840_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten12285_load;
reg   [5:0] v2337286_fu_170;
wire   [5:0] v2337_fu_756_p3;
reg   [5:0] ap_sig_allocacmp_v2337286_load;
reg   [5:0] indvar_flatten287_fu_174;
wire   [5:0] select_ln3204_1_fu_832_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten287_load;
reg   [2:0] v2338288_fu_178;
reg   [2:0] ap_sig_allocacmp_v2338288_load;
reg   [2:0] v2339289_fu_182;
wire   [2:0] v2339_fu_820_p2;
reg   [2:0] ap_sig_allocacmp_v2339289_load;
reg    v3987_15_ce0_local;
reg    v3987_14_ce0_local;
reg    v3987_13_ce0_local;
reg    v3987_12_ce0_local;
reg    v3987_11_ce0_local;
reg    v3987_10_ce0_local;
reg    v3987_9_ce0_local;
reg    v3987_8_ce0_local;
reg    v3987_7_ce0_local;
reg    v3987_6_ce0_local;
reg    v3987_5_ce0_local;
reg    v3987_4_ce0_local;
reg    v3987_3_ce0_local;
reg    v3987_2_ce0_local;
reg    v3987_1_ce0_local;
reg    v3987_ce0_local;
reg    v16207_0_we0_local;
reg    v16207_0_ce0_local;
reg    v16207_1_we0_local;
reg    v16207_1_ce0_local;
reg    v16207_2_we0_local;
reg    v16207_2_ce0_local;
reg    v16207_3_we0_local;
reg    v16207_3_ce0_local;
reg    v16207_4_we0_local;
reg    v16207_4_ce0_local;
reg    v16207_5_we0_local;
reg    v16207_5_ce0_local;
reg    v16207_6_we0_local;
reg    v16207_6_ce0_local;
reg    v16207_7_we0_local;
reg    v16207_7_ce0_local;
reg    v16207_8_we0_local;
reg    v16207_8_ce0_local;
reg    v16207_9_we0_local;
reg    v16207_9_ce0_local;
reg    v16207_10_we0_local;
reg    v16207_10_ce0_local;
reg    v16207_11_we0_local;
reg    v16207_11_ce0_local;
reg    v16207_12_we0_local;
reg    v16207_12_ce0_local;
reg    v16207_13_we0_local;
reg    v16207_13_ce0_local;
reg    v16207_14_we0_local;
reg    v16207_14_ce0_local;
reg    v16207_15_we0_local;
reg    v16207_15_ce0_local;
wire   [0:0] tmp_131_fu_662_p3;
wire   [0:0] empty_fu_678_p1;
wire   [0:0] xor_ln3203_fu_744_p2;
wire   [5:0] add_ln3203_fu_730_p2;
wire   [2:0] select_ln3203_fu_736_p3;
wire   [0:0] and_ln3203_fu_750_p2;
wire   [0:0] empty_232_fu_770_p2;
wire   [2:0] add_ln3204_fu_764_p2;
wire   [8:0] mul_i_fu_654_p3;
wire   [8:0] zext_ln3203_fu_792_p1;
wire   [8:0] empty_233_fu_804_p2;
wire   [5:0] add_ln3204_1_fu_826_p2;
wire   [2:0] select_ln3207_fu_889_p3;
wire   [3:0] tmp_s_fu_896_p3;
wire   [5:0] tmp_133_fu_916_p4;
wire   [8:0] p_shl65_fu_908_p4;
wire   [8:0] zext_ln3208_fu_924_p1;
wire   [5:0] tmp_135_fu_941_p3;
wire   [8:0] p_shl66_fu_934_p3;
wire   [8:0] zext_ln3238_fu_948_p1;
wire   [4:0] tmp_96_cast_fu_904_p1;
wire   [4:0] zext_ln3207_fu_958_p1;
wire   [4:0] add_ln3207_fu_961_p2;
wire   [3:0] trunc_ln3207_fu_967_p1;
wire   [6:0] tmp_136_fu_971_p3;
wire   [6:0] zext_ln3207_1_fu_979_p1;
wire   [3:0] zext_ln3204_fu_989_p1;
wire   [3:0] empty_234_fu_992_p2;
wire   [8:0] sub_ln3238_fu_952_p2;
wire   [8:0] zext_ln3238_1_fu_997_p1;
wire   [8:0] sub_ln3208_fu_928_p2;
wire   [6:0] sub_ln3204_fu_983_p2;
wire   [6:0] zext_ln3207_2_fu_1013_p1;
wire   [6:0] add_ln3207_1_fu_1016_p2;
wire   [9:0] tmp_137_fu_1049_p3;
wire   [12:0] p_shl67_fu_1042_p3;
wire   [12:0] zext_ln3238_2_fu_1056_p1;
wire   [9:0] tmp_138_fu_1073_p3;
wire   [12:0] p_shl_fu_1066_p3;
wire   [12:0] zext_ln3208_1_fu_1080_p1;
wire   [3:0] zext_ln3205_fu_1090_p1;
wire   [3:0] add_ln3208_fu_1093_p2;
wire   [12:0] sub_ln3238_1_fu_1060_p2;
wire   [12:0] zext_ln3238_3_fu_1098_p1;
wire   [12:0] add_ln3238_1_fu_1102_p2;
wire   [12:0] sub_ln3208_1_fu_1084_p2;
wire   [12:0] add_ln3208_2_fu_1127_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_812;
reg    ap_condition_296;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12285_fu_166 = 7'd0;
#0 v2337286_fu_170 = 6'd0;
#0 indvar_flatten287_fu_174 = 6'd0;
#0 v2338288_fu_178 = 3'd0;
#0 v2339289_fu_182 = 3'd0;
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
    if ((1'b1 == ap_condition_296)) begin
        indvar_flatten12285_fu_166 <= add_ln3203_1_fu_840_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_296)) begin
    indvar_flatten287_fu_174 <= select_ln3204_1_fu_832_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_296)) begin
    v2337286_fu_170 <= v2337_fu_756_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_296)) begin
    v2338288_fu_178 <= v2338_fu_784_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_296)) begin
    v2339289_fu_182 <= v2339_fu_820_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln3208_1_reg_1234 <= add_ln3208_1_fu_1007_p2;
        add_ln3238_reg_1228 <= add_ln3238_fu_1001_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln3203_reg_1224 <= icmp_ln3203_fu_858_p2;
        tmp_132_reg_1201 <= v2337_fu_756_p3[32'd4];
        tmp_134_reg_1208 <= {{empty_233_fu_804_p2[8:4]}};
        tmp_reg_1173 <= {{p_read[5:2]}};
        v2338_reg_1195 <= v2338_fu_784_p3;
        v2339_mid2_reg_1189 <= v2339_mid2_fu_776_p3;
        v2339_mid2_reg_1189_pp0_iter1_reg <= v2339_mid2_reg_1189;
        zext_ln5055_5_cast_cast_cast_cast_reg_1184[2 : 0] <= zext_ln5055_5_cast_cast_cast_cast_fu_682_p3[2 : 0];
        zext_ln5055_5_cast_cast_cast_cast_reg_1184_pp0_iter1_reg[2 : 0] <= zext_ln5055_5_cast_cast_cast_cast_reg_1184[2 : 0];
        zext_ln5055_cast_cast_cast_cast_reg_1179[2 : 0] <= zext_ln5055_cast_cast_cast_cast_fu_670_p3[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln3204_reg_1219 <= icmp_ln3204_fu_852_p2;
        icmp_ln3205_reg_1214 <= icmp_ln3205_fu_846_p2;
    end
end
always @ (*) begin
    if (((icmp_ln3203_fu_858_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_812)) begin
            ap_phi_mux_icmp_ln3204291_phi_fu_627_p4 = icmp_ln3204_reg_1219;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3204291_phi_fu_627_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3204291_phi_fu_627_p4 = icmp_ln3204_reg_1219;
        end
    end else begin
        ap_phi_mux_icmp_ln3204291_phi_fu_627_p4 = icmp_ln3204_reg_1219;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_812)) begin
            ap_phi_mux_icmp_ln3205290_phi_fu_637_p4 = icmp_ln3205_reg_1214;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3205290_phi_fu_637_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3205290_phi_fu_637_p4 = icmp_ln3205_reg_1214;
        end
    end else begin
        ap_phi_mux_icmp_ln3205290_phi_fu_637_p4 = icmp_ln3205_reg_1214;
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
        ap_sig_allocacmp_indvar_flatten12285_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12285_load = indvar_flatten12285_fu_166;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten287_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten287_load = indvar_flatten287_fu_174;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v2337286_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v2337286_load = v2337286_fu_170;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v2338288_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v2338288_load = v2338288_fu_178;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v2339289_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v2339289_load = v2339289_fu_182;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_0_ce0_local = 1'b1;
    end else begin
        v16207_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_0_we0_local = 1'b1;
    end else begin
        v16207_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_10_ce0_local = 1'b1;
    end else begin
        v16207_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_10_we0_local = 1'b1;
    end else begin
        v16207_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_11_ce0_local = 1'b1;
    end else begin
        v16207_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_11_we0_local = 1'b1;
    end else begin
        v16207_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_12_ce0_local = 1'b1;
    end else begin
        v16207_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_12_we0_local = 1'b1;
    end else begin
        v16207_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_13_ce0_local = 1'b1;
    end else begin
        v16207_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_13_we0_local = 1'b1;
    end else begin
        v16207_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_14_ce0_local = 1'b1;
    end else begin
        v16207_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_14_we0_local = 1'b1;
    end else begin
        v16207_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_15_ce0_local = 1'b1;
    end else begin
        v16207_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_15_we0_local = 1'b1;
    end else begin
        v16207_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_1_ce0_local = 1'b1;
    end else begin
        v16207_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_1_we0_local = 1'b1;
    end else begin
        v16207_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_2_ce0_local = 1'b1;
    end else begin
        v16207_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_2_we0_local = 1'b1;
    end else begin
        v16207_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_3_ce0_local = 1'b1;
    end else begin
        v16207_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_3_we0_local = 1'b1;
    end else begin
        v16207_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_4_ce0_local = 1'b1;
    end else begin
        v16207_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_4_we0_local = 1'b1;
    end else begin
        v16207_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_5_ce0_local = 1'b1;
    end else begin
        v16207_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_5_we0_local = 1'b1;
    end else begin
        v16207_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_6_ce0_local = 1'b1;
    end else begin
        v16207_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_6_we0_local = 1'b1;
    end else begin
        v16207_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_7_ce0_local = 1'b1;
    end else begin
        v16207_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_7_we0_local = 1'b1;
    end else begin
        v16207_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_8_ce0_local = 1'b1;
    end else begin
        v16207_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_8_we0_local = 1'b1;
    end else begin
        v16207_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_9_ce0_local = 1'b1;
    end else begin
        v16207_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16207_9_we0_local = 1'b1;
    end else begin
        v16207_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3987_10_ce0_local = 1'b1;
    end else begin
        v3987_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3987_11_ce0_local = 1'b1;
    end else begin
        v3987_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3987_12_ce0_local = 1'b1;
    end else begin
        v3987_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3987_13_ce0_local = 1'b1;
    end else begin
        v3987_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3987_14_ce0_local = 1'b1;
    end else begin
        v3987_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3987_15_ce0_local = 1'b1;
    end else begin
        v3987_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3987_1_ce0_local = 1'b1;
    end else begin
        v3987_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3987_2_ce0_local = 1'b1;
    end else begin
        v3987_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3987_3_ce0_local = 1'b1;
    end else begin
        v3987_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3987_4_ce0_local = 1'b1;
    end else begin
        v3987_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3987_5_ce0_local = 1'b1;
    end else begin
        v3987_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3987_6_ce0_local = 1'b1;
    end else begin
        v3987_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3987_7_ce0_local = 1'b1;
    end else begin
        v3987_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3987_8_ce0_local = 1'b1;
    end else begin
        v3987_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3987_9_ce0_local = 1'b1;
    end else begin
        v3987_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3987_ce0_local = 1'b1;
    end else begin
        v3987_ce0_local = 1'b0;
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
assign add_ln3203_1_fu_840_p2 = (ap_sig_allocacmp_indvar_flatten12285_load + 7'd1);
assign add_ln3203_fu_730_p2 = (ap_sig_allocacmp_v2337286_load + 6'd16);
assign add_ln3204_1_fu_826_p2 = (ap_sig_allocacmp_indvar_flatten287_load + 6'd1);
assign add_ln3204_fu_764_p2 = (select_ln3203_fu_736_p3 + 3'd1);
assign add_ln3207_1_fu_1016_p2 = (sub_ln3204_fu_983_p2 + zext_ln3207_2_fu_1013_p1);
assign add_ln3207_fu_961_p2 = (tmp_96_cast_fu_904_p1 + zext_ln3207_fu_958_p1);
assign add_ln3208_1_fu_1007_p2 = (sub_ln3208_fu_928_p2 + zext_ln3238_1_fu_997_p1);
assign add_ln3208_2_fu_1127_p2 = (sub_ln3208_1_fu_1084_p2 + zext_ln3238_3_fu_1098_p1);
assign add_ln3208_fu_1093_p2 = (zext_ln5055_5_cast_cast_cast_cast_reg_1184_pp0_iter1_reg + zext_ln3205_fu_1090_p1);
assign add_ln3238_1_fu_1102_p2 = (sub_ln3238_1_fu_1060_p2 + zext_ln3238_3_fu_1098_p1);
assign add_ln3238_fu_1001_p2 = (sub_ln3238_fu_952_p2 + zext_ln3238_1_fu_997_p1);
assign and_ln3203_fu_750_p2 = (xor_ln3203_fu_744_p2 & ap_phi_mux_icmp_ln3205290_phi_fu_637_p4);
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
    ap_condition_296 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_812 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln3203_reg_1224 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_232_fu_770_p2 = (ap_phi_mux_icmp_ln3204291_phi_fu_627_p4 | and_ln3203_fu_750_p2);
assign empty_233_fu_804_p2 = (mul_i_fu_654_p3 + zext_ln3203_fu_792_p1);
assign empty_234_fu_992_p2 = (zext_ln5055_cast_cast_cast_cast_reg_1179 + zext_ln3204_fu_989_p1);
assign empty_fu_678_p1 = p_read[0:0];
assign icmp_ln3203_fu_858_p2 = ((ap_sig_allocacmp_indvar_flatten12285_load == 7'd97) ? 1'b1 : 1'b0);
assign icmp_ln3204_fu_852_p2 = ((select_ln3204_1_fu_832_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln3205_fu_846_p2 = ((v2339_fu_820_p2 == 3'd7) ? 1'b1 : 1'b0);
assign mul_i_fu_654_p3 = {{tmp_fu_644_p4}, {5'd0}};
assign p_shl65_fu_908_p4 = {{{tmp_reg_1173}, {tmp_132_reg_1201}}, {4'd0}};
assign p_shl66_fu_934_p3 = {{tmp_134_reg_1208}, {4'd0}};
assign p_shl67_fu_1042_p3 = {{add_ln3238_reg_1228}, {4'd0}};
assign p_shl_fu_1066_p3 = {{add_ln3208_1_reg_1234}, {4'd0}};
assign select_ln3203_fu_736_p3 = ((ap_phi_mux_icmp_ln3204291_phi_fu_627_p4[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v2338288_load);
assign select_ln3204_1_fu_832_p3 = ((ap_phi_mux_icmp_ln3204291_phi_fu_627_p4[0:0] == 1'b1) ? 6'd1 : add_ln3204_1_fu_826_p2);
assign select_ln3207_fu_889_p3 = ((tmp_132_reg_1201[0:0] == 1'b1) ? 3'd7 : 3'd0);
assign sub_ln3204_fu_983_p2 = (tmp_136_fu_971_p3 - zext_ln3207_1_fu_979_p1);
assign sub_ln3208_1_fu_1084_p2 = (p_shl_fu_1066_p3 - zext_ln3208_1_fu_1080_p1);
assign sub_ln3208_fu_928_p2 = (p_shl65_fu_908_p4 - zext_ln3208_fu_924_p1);
assign sub_ln3238_1_fu_1060_p2 = (p_shl67_fu_1042_p3 - zext_ln3238_2_fu_1056_p1);
assign sub_ln3238_fu_952_p2 = (p_shl66_fu_934_p3 - zext_ln3238_fu_948_p1);
assign tmp_131_fu_662_p3 = p_read[32'd1];
assign tmp_133_fu_916_p4 = {{{tmp_reg_1173}, {tmp_132_reg_1201}}, {1'd0}};
assign tmp_135_fu_941_p3 = {{tmp_134_reg_1208}, {1'd0}};
assign tmp_136_fu_971_p3 = {{trunc_ln3207_fu_967_p1}, {3'd0}};
assign tmp_137_fu_1049_p3 = {{add_ln3238_reg_1228}, {1'd0}};
assign tmp_138_fu_1073_p3 = {{add_ln3208_1_reg_1234}, {1'd0}};
assign tmp_96_cast_fu_904_p1 = tmp_s_fu_896_p3;
assign tmp_fu_644_p4 = {{p_read[5:2]}};
assign tmp_s_fu_896_p3 = {{1'd0}, {select_ln3207_fu_889_p3}};
assign trunc_ln3207_fu_967_p1 = add_ln3207_fu_961_p2[3:0];
assign v16207_0_address0 = zext_ln3208_2_fu_1133_p1;
assign v16207_0_ce0 = v16207_0_ce0_local;
assign v16207_0_d0 = v3987_15_q0;
assign v16207_0_we0 = v16207_0_we0_local;
assign v16207_10_address0 = zext_ln3238_4_fu_1108_p1;
assign v16207_10_ce0 = v16207_10_ce0_local;
assign v16207_10_d0 = v3987_5_q0;
assign v16207_10_we0 = v16207_10_we0_local;
assign v16207_11_address0 = zext_ln3238_4_fu_1108_p1;
assign v16207_11_ce0 = v16207_11_ce0_local;
assign v16207_11_d0 = v3987_4_q0;
assign v16207_11_we0 = v16207_11_we0_local;
assign v16207_12_address0 = zext_ln3238_4_fu_1108_p1;
assign v16207_12_ce0 = v16207_12_ce0_local;
assign v16207_12_d0 = v3987_3_q0;
assign v16207_12_we0 = v16207_12_we0_local;
assign v16207_13_address0 = zext_ln3238_4_fu_1108_p1;
assign v16207_13_ce0 = v16207_13_ce0_local;
assign v16207_13_d0 = v3987_2_q0;
assign v16207_13_we0 = v16207_13_we0_local;
assign v16207_14_address0 = zext_ln3238_4_fu_1108_p1;
assign v16207_14_ce0 = v16207_14_ce0_local;
assign v16207_14_d0 = v3987_1_q0;
assign v16207_14_we0 = v16207_14_we0_local;
assign v16207_15_address0 = zext_ln3238_4_fu_1108_p1;
assign v16207_15_ce0 = v16207_15_ce0_local;
assign v16207_15_d0 = v3987_q0;
assign v16207_15_we0 = v16207_15_we0_local;
assign v16207_1_address0 = zext_ln3238_4_fu_1108_p1;
assign v16207_1_ce0 = v16207_1_ce0_local;
assign v16207_1_d0 = v3987_14_q0;
assign v16207_1_we0 = v16207_1_we0_local;
assign v16207_2_address0 = zext_ln3238_4_fu_1108_p1;
assign v16207_2_ce0 = v16207_2_ce0_local;
assign v16207_2_d0 = v3987_13_q0;
assign v16207_2_we0 = v16207_2_we0_local;
assign v16207_3_address0 = zext_ln3238_4_fu_1108_p1;
assign v16207_3_ce0 = v16207_3_ce0_local;
assign v16207_3_d0 = v3987_12_q0;
assign v16207_3_we0 = v16207_3_we0_local;
assign v16207_4_address0 = zext_ln3238_4_fu_1108_p1;
assign v16207_4_ce0 = v16207_4_ce0_local;
assign v16207_4_d0 = v3987_11_q0;
assign v16207_4_we0 = v16207_4_we0_local;
assign v16207_5_address0 = zext_ln3238_4_fu_1108_p1;
assign v16207_5_ce0 = v16207_5_ce0_local;
assign v16207_5_d0 = v3987_10_q0;
assign v16207_5_we0 = v16207_5_we0_local;
assign v16207_6_address0 = zext_ln3238_4_fu_1108_p1;
assign v16207_6_ce0 = v16207_6_ce0_local;
assign v16207_6_d0 = v3987_9_q0;
assign v16207_6_we0 = v16207_6_we0_local;
assign v16207_7_address0 = zext_ln3238_4_fu_1108_p1;
assign v16207_7_ce0 = v16207_7_ce0_local;
assign v16207_7_d0 = v3987_8_q0;
assign v16207_7_we0 = v16207_7_we0_local;
assign v16207_8_address0 = zext_ln3238_4_fu_1108_p1;
assign v16207_8_ce0 = v16207_8_ce0_local;
assign v16207_8_d0 = v3987_7_q0;
assign v16207_8_we0 = v16207_8_we0_local;
assign v16207_9_address0 = zext_ln3238_4_fu_1108_p1;
assign v16207_9_ce0 = v16207_9_ce0_local;
assign v16207_9_d0 = v3987_6_q0;
assign v16207_9_we0 = v16207_9_we0_local;
assign v2337_fu_756_p3 = ((ap_phi_mux_icmp_ln3204291_phi_fu_627_p4[0:0] == 1'b1) ? add_ln3203_fu_730_p2 : ap_sig_allocacmp_v2337286_load);
assign v2338_fu_784_p3 = ((and_ln3203_fu_750_p2[0:0] == 1'b1) ? add_ln3204_fu_764_p2 : select_ln3203_fu_736_p3);
assign v2339_fu_820_p2 = (v2339_mid2_fu_776_p3 + 3'd1);
assign v2339_mid2_fu_776_p3 = ((empty_232_fu_770_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v2339289_load);
assign v3987_10_address0 = zext_ln3207_3_fu_1022_p1;
assign v3987_10_ce0 = v3987_10_ce0_local;
assign v3987_11_address0 = zext_ln3207_3_fu_1022_p1;
assign v3987_11_ce0 = v3987_11_ce0_local;
assign v3987_12_address0 = zext_ln3207_3_fu_1022_p1;
assign v3987_12_ce0 = v3987_12_ce0_local;
assign v3987_13_address0 = zext_ln3207_3_fu_1022_p1;
assign v3987_13_ce0 = v3987_13_ce0_local;
assign v3987_14_address0 = zext_ln3207_3_fu_1022_p1;
assign v3987_14_ce0 = v3987_14_ce0_local;
assign v3987_15_address0 = zext_ln3207_3_fu_1022_p1;
assign v3987_15_ce0 = v3987_15_ce0_local;
assign v3987_1_address0 = zext_ln3207_3_fu_1022_p1;
assign v3987_1_ce0 = v3987_1_ce0_local;
assign v3987_2_address0 = zext_ln3207_3_fu_1022_p1;
assign v3987_2_ce0 = v3987_2_ce0_local;
assign v3987_3_address0 = zext_ln3207_3_fu_1022_p1;
assign v3987_3_ce0 = v3987_3_ce0_local;
assign v3987_4_address0 = zext_ln3207_3_fu_1022_p1;
assign v3987_4_ce0 = v3987_4_ce0_local;
assign v3987_5_address0 = zext_ln3207_3_fu_1022_p1;
assign v3987_5_ce0 = v3987_5_ce0_local;
assign v3987_6_address0 = zext_ln3207_3_fu_1022_p1;
assign v3987_6_ce0 = v3987_6_ce0_local;
assign v3987_7_address0 = zext_ln3207_3_fu_1022_p1;
assign v3987_7_ce0 = v3987_7_ce0_local;
assign v3987_8_address0 = zext_ln3207_3_fu_1022_p1;
assign v3987_8_ce0 = v3987_8_ce0_local;
assign v3987_9_address0 = zext_ln3207_3_fu_1022_p1;
assign v3987_9_ce0 = v3987_9_ce0_local;
assign v3987_address0 = zext_ln3207_3_fu_1022_p1;
assign v3987_ce0 = v3987_ce0_local;
assign xor_ln3203_fu_744_p2 = (ap_phi_mux_icmp_ln3204291_phi_fu_627_p4 ^ 1'd1);
assign zext_ln3203_fu_792_p1 = v2337_fu_756_p3;
assign zext_ln3204_fu_989_p1 = v2338_reg_1195;
assign zext_ln3205_fu_1090_p1 = v2339_mid2_reg_1189_pp0_iter1_reg;
assign zext_ln3207_1_fu_979_p1 = add_ln3207_fu_961_p2;
assign zext_ln3207_2_fu_1013_p1 = v2339_mid2_reg_1189;
assign zext_ln3207_3_fu_1022_p1 = add_ln3207_1_fu_1016_p2;
assign zext_ln3207_fu_958_p1 = v2338_reg_1195;
assign zext_ln3208_1_fu_1080_p1 = tmp_138_fu_1073_p3;
assign zext_ln3208_2_fu_1133_p1 = add_ln3208_2_fu_1127_p2;
assign zext_ln3208_fu_924_p1 = tmp_133_fu_916_p4;
assign zext_ln3238_1_fu_997_p1 = empty_234_fu_992_p2;
assign zext_ln3238_2_fu_1056_p1 = tmp_137_fu_1049_p3;
assign zext_ln3238_3_fu_1098_p1 = add_ln3208_fu_1093_p2;
assign zext_ln3238_4_fu_1108_p1 = add_ln3238_1_fu_1102_p2;
assign zext_ln3238_fu_948_p1 = tmp_135_fu_941_p3;
assign zext_ln5055_5_cast_cast_cast_cast_fu_682_p3 = ((empty_fu_678_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln5055_cast_cast_cast_cast_fu_670_p3 = ((tmp_131_fu_662_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
always @ (posedge ap_clk) begin
    zext_ln5055_cast_cast_cast_cast_reg_1179[3] <= 1'b0;
    zext_ln5055_5_cast_cast_cast_cast_reg_1184[3] <= 1'b0;
    zext_ln5055_5_cast_cast_cast_cast_reg_1184_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 
