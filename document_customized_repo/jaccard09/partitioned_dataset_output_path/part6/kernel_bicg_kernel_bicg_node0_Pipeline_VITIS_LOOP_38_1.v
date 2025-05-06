
module kernel_bicg_kernel_bicg_node0_Pipeline_VITIS_LOOP_38_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v164_25_address0,v164_25_ce0,v164_25_we0,v164_25_d0,v164_24_address0,v164_24_ce0,v164_24_we0,v164_24_d0,v164_23_address0,v164_23_ce0,v164_23_we0,v164_23_d0,v164_22_address0,v164_22_ce0,v164_22_we0,v164_22_d0,v164_21_address0,v164_21_ce0,v164_21_we0,v164_21_d0,v164_20_address0,v164_20_ce0,v164_20_we0,v164_20_d0,v164_19_address0,v164_19_ce0,v164_19_we0,v164_19_d0,v164_18_address0,v164_18_ce0,v164_18_we0,v164_18_d0,v164_17_address0,v164_17_ce0,v164_17_we0,v164_17_d0,v164_16_address0,v164_16_ce0,v164_16_we0,v164_16_d0,v164_15_address0,v164_15_ce0,v164_15_we0,v164_15_d0,v164_14_address0,v164_14_ce0,v164_14_we0,v164_14_d0,v164_13_address0,v164_13_ce0,v164_13_we0,v164_13_d0,v164_12_address0,v164_12_ce0,v164_12_we0,v164_12_d0,v164_11_address0,v164_11_ce0,v164_11_we0,v164_11_d0,v164_10_address0,v164_10_ce0,v164_10_we0,v164_10_d0,v164_9_address0,v164_9_ce0,v164_9_we0,v164_9_d0,v164_8_address0,v164_8_ce0,v164_8_we0,v164_8_d0,v164_7_address0,v164_7_ce0,v164_7_we0,v164_7_d0,v164_6_address0,v164_6_ce0,v164_6_we0,v164_6_d0,v164_5_address0,v164_5_ce0,v164_5_we0,v164_5_d0,v164_4_address0,v164_4_ce0,v164_4_we0,v164_4_d0,v164_3_address0,v164_3_ce0,v164_3_we0,v164_3_d0,v164_2_address0,v164_2_ce0,v164_2_we0,v164_2_d0,v164_1_address0,v164_1_ce0,v164_1_we0,v164_1_d0,v164_0_address0,v164_0_ce0,v164_0_we0,v164_0_d0);  
parameter    ap_ST_fsm_state1 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] v164_25_address0;
output   v164_25_ce0;
output   v164_25_we0;
output  [31:0] v164_25_d0;
output  [3:0] v164_24_address0;
output   v164_24_ce0;
output   v164_24_we0;
output  [31:0] v164_24_d0;
output  [3:0] v164_23_address0;
output   v164_23_ce0;
output   v164_23_we0;
output  [31:0] v164_23_d0;
output  [3:0] v164_22_address0;
output   v164_22_ce0;
output   v164_22_we0;
output  [31:0] v164_22_d0;
output  [3:0] v164_21_address0;
output   v164_21_ce0;
output   v164_21_we0;
output  [31:0] v164_21_d0;
output  [3:0] v164_20_address0;
output   v164_20_ce0;
output   v164_20_we0;
output  [31:0] v164_20_d0;
output  [3:0] v164_19_address0;
output   v164_19_ce0;
output   v164_19_we0;
output  [31:0] v164_19_d0;
output  [3:0] v164_18_address0;
output   v164_18_ce0;
output   v164_18_we0;
output  [31:0] v164_18_d0;
output  [3:0] v164_17_address0;
output   v164_17_ce0;
output   v164_17_we0;
output  [31:0] v164_17_d0;
output  [3:0] v164_16_address0;
output   v164_16_ce0;
output   v164_16_we0;
output  [31:0] v164_16_d0;
output  [3:0] v164_15_address0;
output   v164_15_ce0;
output   v164_15_we0;
output  [31:0] v164_15_d0;
output  [3:0] v164_14_address0;
output   v164_14_ce0;
output   v164_14_we0;
output  [31:0] v164_14_d0;
output  [3:0] v164_13_address0;
output   v164_13_ce0;
output   v164_13_we0;
output  [31:0] v164_13_d0;
output  [3:0] v164_12_address0;
output   v164_12_ce0;
output   v164_12_we0;
output  [31:0] v164_12_d0;
output  [3:0] v164_11_address0;
output   v164_11_ce0;
output   v164_11_we0;
output  [31:0] v164_11_d0;
output  [3:0] v164_10_address0;
output   v164_10_ce0;
output   v164_10_we0;
output  [31:0] v164_10_d0;
output  [3:0] v164_9_address0;
output   v164_9_ce0;
output   v164_9_we0;
output  [31:0] v164_9_d0;
output  [3:0] v164_8_address0;
output   v164_8_ce0;
output   v164_8_we0;
output  [31:0] v164_8_d0;
output  [3:0] v164_7_address0;
output   v164_7_ce0;
output   v164_7_we0;
output  [31:0] v164_7_d0;
output  [3:0] v164_6_address0;
output   v164_6_ce0;
output   v164_6_we0;
output  [31:0] v164_6_d0;
output  [3:0] v164_5_address0;
output   v164_5_ce0;
output   v164_5_we0;
output  [31:0] v164_5_d0;
output  [3:0] v164_4_address0;
output   v164_4_ce0;
output   v164_4_we0;
output  [31:0] v164_4_d0;
output  [3:0] v164_3_address0;
output   v164_3_ce0;
output   v164_3_we0;
output  [31:0] v164_3_d0;
output  [3:0] v164_2_address0;
output   v164_2_ce0;
output   v164_2_we0;
output  [31:0] v164_2_d0;
output  [3:0] v164_1_address0;
output   v164_1_ce0;
output   v164_1_we0;
output  [31:0] v164_1_d0;
output  [3:0] v164_0_address0;
output   v164_0_ce0;
output   v164_0_we0;
output  [31:0] v164_0_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln38_fu_462_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] zext_ln38_fu_474_p1;
reg   [3:0] indvars_iv_fu_86;
wire   [3:0] add_ln38_fu_468_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_indvars_iv_load;
reg    v164_0_we0_local;
reg    v164_0_ce0_local;
reg    v164_1_we0_local;
reg    v164_1_ce0_local;
reg    v164_2_we0_local;
reg    v164_2_ce0_local;
reg    v164_3_we0_local;
reg    v164_3_ce0_local;
reg    v164_4_we0_local;
reg    v164_4_ce0_local;
reg    v164_5_we0_local;
reg    v164_5_ce0_local;
reg    v164_6_we0_local;
reg    v164_6_ce0_local;
reg    v164_7_we0_local;
reg    v164_7_ce0_local;
reg    v164_8_we0_local;
reg    v164_8_ce0_local;
reg    v164_9_we0_local;
reg    v164_9_ce0_local;
reg    v164_10_we0_local;
reg    v164_10_ce0_local;
reg    v164_11_we0_local;
reg    v164_11_ce0_local;
reg    v164_12_we0_local;
reg    v164_12_ce0_local;
reg    v164_13_we0_local;
reg    v164_13_ce0_local;
reg    v164_14_we0_local;
reg    v164_14_ce0_local;
reg    v164_15_we0_local;
reg    v164_15_ce0_local;
reg    v164_16_we0_local;
reg    v164_16_ce0_local;
reg    v164_17_we0_local;
reg    v164_17_ce0_local;
reg    v164_18_we0_local;
reg    v164_18_ce0_local;
reg    v164_19_we0_local;
reg    v164_19_ce0_local;
reg    v164_20_we0_local;
reg    v164_20_ce0_local;
reg    v164_21_we0_local;
reg    v164_21_ce0_local;
reg    v164_22_we0_local;
reg    v164_22_ce0_local;
reg    v164_23_we0_local;
reg    v164_23_ce0_local;
reg    v164_24_we0_local;
reg    v164_24_ce0_local;
reg    v164_25_we0_local;
reg    v164_25_ce0_local;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 indvars_iv_fu_86 = 4'd0;
#0 ap_done_reg = 1'b0;
end
kernel_bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln38_fu_462_p2 == 1'd0)) begin
            indvars_iv_fu_86 <= add_ln38_fu_468_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvars_iv_fu_86 <= 4'd0;
        end
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_indvars_iv_load = 4'd0;
    end else begin
        ap_sig_allocacmp_indvars_iv_load = indvars_iv_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_0_ce0_local = 1'b1;
    end else begin
        v164_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_0_we0_local = 1'b1;
    end else begin
        v164_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_10_ce0_local = 1'b1;
    end else begin
        v164_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_10_we0_local = 1'b1;
    end else begin
        v164_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_11_ce0_local = 1'b1;
    end else begin
        v164_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_11_we0_local = 1'b1;
    end else begin
        v164_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_12_ce0_local = 1'b1;
    end else begin
        v164_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_12_we0_local = 1'b1;
    end else begin
        v164_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_13_ce0_local = 1'b1;
    end else begin
        v164_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_13_we0_local = 1'b1;
    end else begin
        v164_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_14_ce0_local = 1'b1;
    end else begin
        v164_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_14_we0_local = 1'b1;
    end else begin
        v164_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_15_ce0_local = 1'b1;
    end else begin
        v164_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_15_we0_local = 1'b1;
    end else begin
        v164_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_16_ce0_local = 1'b1;
    end else begin
        v164_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_16_we0_local = 1'b1;
    end else begin
        v164_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_17_ce0_local = 1'b1;
    end else begin
        v164_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_17_we0_local = 1'b1;
    end else begin
        v164_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_18_ce0_local = 1'b1;
    end else begin
        v164_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_18_we0_local = 1'b1;
    end else begin
        v164_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_19_ce0_local = 1'b1;
    end else begin
        v164_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_19_we0_local = 1'b1;
    end else begin
        v164_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_1_ce0_local = 1'b1;
    end else begin
        v164_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_1_we0_local = 1'b1;
    end else begin
        v164_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_20_ce0_local = 1'b1;
    end else begin
        v164_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_20_we0_local = 1'b1;
    end else begin
        v164_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_21_ce0_local = 1'b1;
    end else begin
        v164_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_21_we0_local = 1'b1;
    end else begin
        v164_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_22_ce0_local = 1'b1;
    end else begin
        v164_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_22_we0_local = 1'b1;
    end else begin
        v164_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_23_ce0_local = 1'b1;
    end else begin
        v164_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_23_we0_local = 1'b1;
    end else begin
        v164_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_24_ce0_local = 1'b1;
    end else begin
        v164_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_24_we0_local = 1'b1;
    end else begin
        v164_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_25_ce0_local = 1'b1;
    end else begin
        v164_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_25_we0_local = 1'b1;
    end else begin
        v164_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_2_ce0_local = 1'b1;
    end else begin
        v164_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_2_we0_local = 1'b1;
    end else begin
        v164_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_3_ce0_local = 1'b1;
    end else begin
        v164_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_3_we0_local = 1'b1;
    end else begin
        v164_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_4_ce0_local = 1'b1;
    end else begin
        v164_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_4_we0_local = 1'b1;
    end else begin
        v164_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_5_ce0_local = 1'b1;
    end else begin
        v164_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_5_we0_local = 1'b1;
    end else begin
        v164_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_6_ce0_local = 1'b1;
    end else begin
        v164_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_6_we0_local = 1'b1;
    end else begin
        v164_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_7_ce0_local = 1'b1;
    end else begin
        v164_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_7_we0_local = 1'b1;
    end else begin
        v164_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_8_ce0_local = 1'b1;
    end else begin
        v164_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_8_we0_local = 1'b1;
    end else begin
        v164_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_9_ce0_local = 1'b1;
    end else begin
        v164_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_462_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v164_9_we0_local = 1'b1;
    end else begin
        v164_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln38_fu_468_p2 = (ap_sig_allocacmp_indvars_iv_load + 4'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln38_fu_462_p2 = ((ap_sig_allocacmp_indvars_iv_load == 4'd15) ? 1'b1 : 1'b0);
assign v164_0_address0 = zext_ln38_fu_474_p1;
assign v164_0_ce0 = v164_0_ce0_local;
assign v164_0_d0 = 32'd0;
assign v164_0_we0 = v164_0_we0_local;
assign v164_10_address0 = zext_ln38_fu_474_p1;
assign v164_10_ce0 = v164_10_ce0_local;
assign v164_10_d0 = 32'd0;
assign v164_10_we0 = v164_10_we0_local;
assign v164_11_address0 = zext_ln38_fu_474_p1;
assign v164_11_ce0 = v164_11_ce0_local;
assign v164_11_d0 = 32'd0;
assign v164_11_we0 = v164_11_we0_local;
assign v164_12_address0 = zext_ln38_fu_474_p1;
assign v164_12_ce0 = v164_12_ce0_local;
assign v164_12_d0 = 32'd0;
assign v164_12_we0 = v164_12_we0_local;
assign v164_13_address0 = zext_ln38_fu_474_p1;
assign v164_13_ce0 = v164_13_ce0_local;
assign v164_13_d0 = 32'd0;
assign v164_13_we0 = v164_13_we0_local;
assign v164_14_address0 = zext_ln38_fu_474_p1;
assign v164_14_ce0 = v164_14_ce0_local;
assign v164_14_d0 = 32'd0;
assign v164_14_we0 = v164_14_we0_local;
assign v164_15_address0 = zext_ln38_fu_474_p1;
assign v164_15_ce0 = v164_15_ce0_local;
assign v164_15_d0 = 32'd0;
assign v164_15_we0 = v164_15_we0_local;
assign v164_16_address0 = zext_ln38_fu_474_p1;
assign v164_16_ce0 = v164_16_ce0_local;
assign v164_16_d0 = 32'd0;
assign v164_16_we0 = v164_16_we0_local;
assign v164_17_address0 = zext_ln38_fu_474_p1;
assign v164_17_ce0 = v164_17_ce0_local;
assign v164_17_d0 = 32'd0;
assign v164_17_we0 = v164_17_we0_local;
assign v164_18_address0 = zext_ln38_fu_474_p1;
assign v164_18_ce0 = v164_18_ce0_local;
assign v164_18_d0 = 32'd0;
assign v164_18_we0 = v164_18_we0_local;
assign v164_19_address0 = zext_ln38_fu_474_p1;
assign v164_19_ce0 = v164_19_ce0_local;
assign v164_19_d0 = 32'd0;
assign v164_19_we0 = v164_19_we0_local;
assign v164_1_address0 = zext_ln38_fu_474_p1;
assign v164_1_ce0 = v164_1_ce0_local;
assign v164_1_d0 = 32'd0;
assign v164_1_we0 = v164_1_we0_local;
assign v164_20_address0 = zext_ln38_fu_474_p1;
assign v164_20_ce0 = v164_20_ce0_local;
assign v164_20_d0 = 32'd0;
assign v164_20_we0 = v164_20_we0_local;
assign v164_21_address0 = zext_ln38_fu_474_p1;
assign v164_21_ce0 = v164_21_ce0_local;
assign v164_21_d0 = 32'd0;
assign v164_21_we0 = v164_21_we0_local;
assign v164_22_address0 = zext_ln38_fu_474_p1;
assign v164_22_ce0 = v164_22_ce0_local;
assign v164_22_d0 = 32'd0;
assign v164_22_we0 = v164_22_we0_local;
assign v164_23_address0 = zext_ln38_fu_474_p1;
assign v164_23_ce0 = v164_23_ce0_local;
assign v164_23_d0 = 32'd0;
assign v164_23_we0 = v164_23_we0_local;
assign v164_24_address0 = zext_ln38_fu_474_p1;
assign v164_24_ce0 = v164_24_ce0_local;
assign v164_24_d0 = 32'd0;
assign v164_24_we0 = v164_24_we0_local;
assign v164_25_address0 = zext_ln38_fu_474_p1;
assign v164_25_ce0 = v164_25_ce0_local;
assign v164_25_d0 = 32'd0;
assign v164_25_we0 = v164_25_we0_local;
assign v164_2_address0 = zext_ln38_fu_474_p1;
assign v164_2_ce0 = v164_2_ce0_local;
assign v164_2_d0 = 32'd0;
assign v164_2_we0 = v164_2_we0_local;
assign v164_3_address0 = zext_ln38_fu_474_p1;
assign v164_3_ce0 = v164_3_ce0_local;
assign v164_3_d0 = 32'd0;
assign v164_3_we0 = v164_3_we0_local;
assign v164_4_address0 = zext_ln38_fu_474_p1;
assign v164_4_ce0 = v164_4_ce0_local;
assign v164_4_d0 = 32'd0;
assign v164_4_we0 = v164_4_we0_local;
assign v164_5_address0 = zext_ln38_fu_474_p1;
assign v164_5_ce0 = v164_5_ce0_local;
assign v164_5_d0 = 32'd0;
assign v164_5_we0 = v164_5_we0_local;
assign v164_6_address0 = zext_ln38_fu_474_p1;
assign v164_6_ce0 = v164_6_ce0_local;
assign v164_6_d0 = 32'd0;
assign v164_6_we0 = v164_6_we0_local;
assign v164_7_address0 = zext_ln38_fu_474_p1;
assign v164_7_ce0 = v164_7_ce0_local;
assign v164_7_d0 = 32'd0;
assign v164_7_we0 = v164_7_we0_local;
assign v164_8_address0 = zext_ln38_fu_474_p1;
assign v164_8_ce0 = v164_8_ce0_local;
assign v164_8_d0 = 32'd0;
assign v164_8_we0 = v164_8_we0_local;
assign v164_9_address0 = zext_ln38_fu_474_p1;
assign v164_9_ce0 = v164_9_ce0_local;
assign v164_9_d0 = 32'd0;
assign v164_9_we0 = v164_9_we0_local;
assign zext_ln38_fu_474_p1 = ap_sig_allocacmp_indvars_iv_load;
endmodule 
