
module ms_mergesort_merge_Pipeline_merge_label3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,start_r,stop,temp_address0,temp_ce0,temp_q0,temp_address1,temp_ce1,temp_q1,a_address0,a_ce0,a_we0,a_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] start_r;
input  [31:0] stop;
output  [10:0] temp_address0;
output   temp_ce0;
input  [31:0] temp_q0;
output  [10:0] temp_address1;
output   temp_ce1;
input  [31:0] temp_q1;
output  [10:0] a_address0;
output   a_ce0;
output   a_we0;
output  [31:0] a_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln18_1_reg_349;
reg   [0:0] icmp_ln18_reg_335;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] i_4_reg_119;
reg   [31:0] j_3_reg_129;
reg   [31:0] reg_165;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_170;
reg   [31:0] k_1_reg_316;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] i_reg_323;
reg   [31:0] j_1_reg_329;
wire   [0:0] icmp_ln18_fu_199_p2;
wire   [0:0] icmp_ln18_1_fu_214_p2;
wire   [0:0] grp_fu_159_p2;
reg   [0:0] icmp_ln21_reg_353;
wire   [31:0] i_3_fu_219_p2;
reg   [31:0] i_3_reg_357;
wire   [31:0] j_2_fu_224_p2;
reg   [31:0] j_2_reg_362;
wire    ap_block_pp0_stage3_11001;
reg   [0:0] icmp_ln21_1_reg_377;
reg   [10:0] a_addr_1_reg_381;
wire   [31:0] i_5_fu_257_p2;
reg   [31:0] i_5_reg_386;
wire   [31:0] j_4_fu_263_p2;
reg   [31:0] j_4_reg_391;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage1_subdone;
reg   [31:0] ap_phi_mux_i_4_phi_fu_122_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_4_reg_119;
reg   [31:0] ap_phi_mux_j_3_phi_fu_132_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_3_reg_129;
reg   [31:0] ap_phi_mux_i_6_phi_fu_142_p4;
wire   [31:0] ap_phi_reg_pp0_iter1_i_6_reg_139;
reg   [31:0] ap_phi_mux_j_5_phi_fu_152_p4;
wire   [31:0] ap_phi_reg_pp0_iter1_j_5_reg_149;
wire   [63:0] zext_ln19_fu_204_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln20_fu_209_p1;
wire   [63:0] zext_ln18_fu_229_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln19_1_fu_233_p1;
wire   [63:0] zext_ln20_1_fu_238_p1;
wire   [63:0] zext_ln5_fu_252_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] k_fu_34;
wire   [31:0] add_ln18_1_fu_269_p2;
wire    ap_loop_init;
reg   [31:0] i_2_fu_38;
reg   [31:0] ap_sig_allocacmp_i;
reg   [31:0] j_fu_42;
reg   [31:0] ap_sig_allocacmp_j_1;
reg    temp_ce1_local;
reg   [10:0] temp_address1_local;
reg    temp_ce0_local;
reg   [10:0] temp_address0_local;
reg    a_we0_local;
reg   [31:0] a_d0_local;
reg    a_ce0_local;
reg   [10:0] a_address0_local;
wire    ap_block_pp0_stage2;
wire   [10:0] trunc_ln18_fu_243_p1;
wire   [10:0] add_ln18_fu_246_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_173;
reg    ap_condition_386;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_34 = 32'd0;
#0 i_2_fu_38 = 32'd0;
#0 j_fu_42 = 32'd0;
#0 ap_done_reg = 1'b0;
end
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_38 <= start_r;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_2_fu_38 <= ap_phi_mux_i_6_phi_fu_142_p4;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_173)) begin
        if (((icmp_ln18_reg_335 == 1'd0) & (icmp_ln21_reg_353 == 1'd0))) begin
            i_4_reg_119 <= i_3_reg_357;
        end else if (((icmp_ln18_reg_335 == 1'd0) & (icmp_ln21_reg_353 == 1'd1))) begin
            i_4_reg_119 <= i_reg_323;
        end else if (~((icmp_ln18_reg_335 == 1'd1) | (icmp_ln18_1_reg_349 == 1'd0))) begin
            i_4_reg_119 <= ap_phi_reg_pp0_iter0_i_4_reg_119;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_173)) begin
        if (((icmp_ln18_reg_335 == 1'd0) & (icmp_ln21_reg_353 == 1'd0))) begin
            j_3_reg_129 <= j_1_reg_329;
        end else if (((icmp_ln18_reg_335 == 1'd0) & (icmp_ln21_reg_353 == 1'd1))) begin
            j_3_reg_129 <= j_2_reg_362;
        end else if (~((icmp_ln18_reg_335 == 1'd1) | (icmp_ln18_1_reg_349 == 1'd0))) begin
            j_3_reg_129 <= ap_phi_reg_pp0_iter0_j_3_reg_129;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_42 <= stop;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_42 <= ap_phi_mux_j_5_phi_fu_152_p4;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            k_fu_34 <= start_r;
        end else if ((1'b1 == ap_condition_386)) begin
            k_fu_34 <= add_ln18_1_fu_269_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_addr_1_reg_381 <= zext_ln5_fu_252_p1;
        i_5_reg_386 <= i_5_fu_257_p2;
        j_4_reg_391 <= j_4_fu_263_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_3_reg_357 <= i_3_fu_219_p2;
        j_2_reg_362 <= j_2_fu_224_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_reg_323 <= ap_sig_allocacmp_i;
        icmp_ln18_1_reg_349 <= icmp_ln18_1_fu_214_p2;
        icmp_ln18_reg_335 <= icmp_ln18_fu_199_p2;
        j_1_reg_329 <= ap_sig_allocacmp_j_1;
        k_1_reg_316 <= k_fu_34;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln21_1_reg_377 <= grp_fu_159_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln21_reg_353 <= grp_fu_159_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_165 <= temp_q1;
        reg_170 <= temp_q0;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_335 == 1'd0) & (icmp_ln18_1_reg_349 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_1_reg_377 == 1'd0)) | ((icmp_ln18_reg_335 == 1'd0) & (icmp_ln18_1_reg_349 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_1_reg_377 == 1'd1)))) begin
        a_address0_local = a_addr_1_reg_381;
    end else if ((((icmp_ln18_reg_335 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln21_reg_353 == 1'd0)) | ((icmp_ln18_reg_335 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln21_reg_353 == 1'd1)))) begin
        a_address0_local = zext_ln18_fu_229_p1;
    end else begin
        a_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_335 == 1'd0) & (icmp_ln18_1_reg_349 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_1_reg_377 == 1'd0)) | ((icmp_ln18_reg_335 == 1'd0) & (icmp_ln18_1_reg_349 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_1_reg_377 == 1'd1)) | ((icmp_ln18_reg_335 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln21_reg_353 == 1'd0)) | ((icmp_ln18_reg_335 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln21_reg_353 == 1'd1)))) begin
        a_ce0_local = 1'b1;
    end else begin
        a_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_335 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln21_reg_353 == 1'd1)) | ((icmp_ln18_reg_335 == 1'd0) & (icmp_ln18_1_reg_349 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_1_reg_377 == 1'd1)))) begin
        a_d0_local = reg_165;
    end else if ((((icmp_ln18_reg_335 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln21_reg_353 == 1'd0)) | ((icmp_ln18_reg_335 == 1'd0) & (icmp_ln18_1_reg_349 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_1_reg_377 == 1'd0)))) begin
        a_d0_local = reg_170;
    end else begin
        a_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln18_reg_335 == 1'd0) & (icmp_ln18_1_reg_349 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_1_reg_377 == 1'd0)) | ((icmp_ln18_reg_335 == 1'd0) & (icmp_ln18_1_reg_349 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln21_1_reg_377 == 1'd1)) | ((icmp_ln18_reg_335 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln21_reg_353 == 1'd0)) | ((icmp_ln18_reg_335 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln21_reg_353 == 1'd1)))) begin
        a_we0_local = 1'b1;
    end else begin
        a_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((icmp_ln18_reg_335 == 1'd1) | (icmp_ln18_1_reg_349 == 1'd0)))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln18_reg_335 == 1'd1) | (icmp_ln18_1_reg_349 == 1'd0)))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if ((icmp_ln18_reg_335 == 1'd0)) begin
        if ((icmp_ln21_reg_353 == 1'd0)) begin
            ap_phi_mux_i_4_phi_fu_122_p4 = i_3_reg_357;
        end else if ((icmp_ln21_reg_353 == 1'd1)) begin
            ap_phi_mux_i_4_phi_fu_122_p4 = i_reg_323;
        end else begin
            ap_phi_mux_i_4_phi_fu_122_p4 = ap_phi_reg_pp0_iter0_i_4_reg_119;
        end
    end else begin
        ap_phi_mux_i_4_phi_fu_122_p4 = ap_phi_reg_pp0_iter0_i_4_reg_119;
    end
end
always @ (*) begin
    if (((icmp_ln18_reg_335 == 1'd0) & (icmp_ln18_1_reg_349 == 1'd1))) begin
        if ((icmp_ln21_1_reg_377 == 1'd0)) begin
            ap_phi_mux_i_6_phi_fu_142_p4 = i_5_reg_386;
        end else if ((icmp_ln21_1_reg_377 == 1'd1)) begin
            ap_phi_mux_i_6_phi_fu_142_p4 = i_4_reg_119;
        end else begin
            ap_phi_mux_i_6_phi_fu_142_p4 = ap_phi_reg_pp0_iter1_i_6_reg_139;
        end
    end else begin
        ap_phi_mux_i_6_phi_fu_142_p4 = ap_phi_reg_pp0_iter1_i_6_reg_139;
    end
end
always @ (*) begin
    if ((icmp_ln18_reg_335 == 1'd0)) begin
        if ((icmp_ln21_reg_353 == 1'd0)) begin
            ap_phi_mux_j_3_phi_fu_132_p4 = j_1_reg_329;
        end else if ((icmp_ln21_reg_353 == 1'd1)) begin
            ap_phi_mux_j_3_phi_fu_132_p4 = j_2_reg_362;
        end else begin
            ap_phi_mux_j_3_phi_fu_132_p4 = ap_phi_reg_pp0_iter0_j_3_reg_129;
        end
    end else begin
        ap_phi_mux_j_3_phi_fu_132_p4 = ap_phi_reg_pp0_iter0_j_3_reg_129;
    end
end
always @ (*) begin
    if (((icmp_ln18_reg_335 == 1'd0) & (icmp_ln18_1_reg_349 == 1'd1))) begin
        if ((icmp_ln21_1_reg_377 == 1'd0)) begin
            ap_phi_mux_j_5_phi_fu_152_p4 = j_3_reg_129;
        end else if ((icmp_ln21_1_reg_377 == 1'd1)) begin
            ap_phi_mux_j_5_phi_fu_152_p4 = j_4_reg_391;
        end else begin
            ap_phi_mux_j_5_phi_fu_152_p4 = ap_phi_reg_pp0_iter1_j_5_reg_149;
        end
    end else begin
        ap_phi_mux_j_5_phi_fu_152_p4 = ap_phi_reg_pp0_iter1_j_5_reg_149;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_i = ap_phi_mux_i_6_phi_fu_142_p4;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_38;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_j_1 = ap_phi_mux_j_5_phi_fu_152_p4;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_42;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_address0_local = zext_ln20_1_fu_238_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_address0_local = zext_ln20_fu_209_p1;
        end else begin
            temp_address0_local = 'bx;
        end
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_address1_local = zext_ln19_1_fu_233_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_address1_local = zext_ln19_fu_204_p1;
        end else begin
            temp_address1_local = 'bx;
        end
    end else begin
        temp_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_address0 = a_address0_local;
assign a_ce0 = a_ce0_local;
assign a_d0 = a_d0_local;
assign a_we0 = a_we0_local;
assign add_ln18_1_fu_269_p2 = (k_1_reg_316 + 32'd2);
assign add_ln18_fu_246_p2 = (trunc_ln18_fu_243_p1 + 11'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_173 = ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_386 = ((icmp_ln18_reg_335 == 1'd0) & (icmp_ln18_1_reg_349 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_phi_reg_pp0_iter0_i_4_reg_119 = 'bx;
assign ap_phi_reg_pp0_iter0_j_3_reg_129 = 'bx;
assign ap_phi_reg_pp0_iter1_i_6_reg_139 = 'bx;
assign ap_phi_reg_pp0_iter1_j_5_reg_149 = 'bx;
assign ap_ready = ap_ready_sig;
assign grp_fu_159_p2 = (($signed(temp_q1) < $signed(temp_q0)) ? 1'b1 : 1'b0);
assign i_3_fu_219_p2 = (i_reg_323 + 32'd1);
assign i_5_fu_257_p2 = (i_4_reg_119 + 32'd1);
assign icmp_ln18_1_fu_214_p2 = (($signed(k_fu_34) < $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_199_p2 = (($signed(k_fu_34) > $signed(stop)) ? 1'b1 : 1'b0);
assign j_2_fu_224_p2 = ($signed(j_1_reg_329) + $signed(32'd4294967295));
assign j_4_fu_263_p2 = ($signed(j_3_reg_129) + $signed(32'd4294967295));
assign temp_address0 = temp_address0_local;
assign temp_address1 = temp_address1_local;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign trunc_ln18_fu_243_p1 = k_1_reg_316[10:0];
assign zext_ln18_fu_229_p1 = k_1_reg_316;
assign zext_ln19_1_fu_233_p1 = ap_phi_mux_j_3_phi_fu_132_p4;
assign zext_ln19_fu_204_p1 = ap_sig_allocacmp_j_1;
assign zext_ln20_1_fu_238_p1 = ap_phi_mux_i_4_phi_fu_122_p4;
assign zext_ln20_fu_209_p1 = ap_sig_allocacmp_i;
assign zext_ln5_fu_252_p1 = add_ln18_fu_246_p2;
endmodule 
