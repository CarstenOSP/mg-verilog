module syrk_syrk_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A0_address0,buff_A0_ce0,buff_A0_q0,buff_A1_address0,buff_A1_ce0,buff_A1_q0,alpha,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_q0,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_1_q0,grp_fu_131_p_din0,grp_fu_131_p_din1,grp_fu_131_p_opcode,grp_fu_131_p_dout0,grp_fu_131_p_ce,grp_fu_135_p_din0,grp_fu_135_p_din1,grp_fu_135_p_dout0,grp_fu_135_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] buff_A0_address0;
output   buff_A0_ce0;
input  [31:0] buff_A0_q0;
output  [11:0] buff_A1_address0;
output   buff_A1_ce0;
input  [31:0] buff_A1_q0;
input  [31:0] alpha;
output  [10:0] buff_C_out_address0;
output   buff_C_out_ce0;
output   buff_C_out_we0;
output  [31:0] buff_C_out_d0;
input  [31:0] buff_C_out_q0;
output  [10:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
output   buff_C_out_1_we0;
output  [31:0] buff_C_out_1_d0;
input  [31:0] buff_C_out_1_q0;
output  [31:0] grp_fu_131_p_din0;
output  [31:0] grp_fu_131_p_din1;
output  [1:0] grp_fu_131_p_opcode;
input  [31:0] grp_fu_131_p_dout0;
output   grp_fu_131_p_ce;
output  [31:0] grp_fu_135_p_din0;
output  [31:0] grp_fu_135_p_din1;
input  [31:0] grp_fu_135_p_dout0;
output   grp_fu_135_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln20_reg_471;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln20_fu_183_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln20_reg_471_pp0_iter1_reg;
wire   [6:0] select_ln5_fu_216_p3;
reg   [6:0] select_ln5_reg_475;
wire   [0:0] and_ln5_fu_236_p2;
reg   [0:0] and_ln5_reg_480;
wire   [5:0] trunc_ln21_fu_250_p1;
reg   [5:0] trunc_ln21_reg_485;
reg   [5:0] trunc_ln21_reg_485_pp0_iter1_reg;
wire   [6:0] add_ln21_fu_254_p2;
reg   [6:0] add_ln21_reg_491;
wire   [6:0] k_mid2_fu_266_p3;
reg   [6:0] k_mid2_reg_496;
wire   [0:0] first_iter_1_fu_312_p2;
reg   [0:0] first_iter_1_reg_503;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [0:0] first_iter_1_reg_503_pp0_iter1_reg;
wire   [0:0] trunc_ln21_1_fu_324_p1;
reg   [0:0] trunc_ln21_1_reg_507;
reg   [0:0] trunc_ln21_1_reg_507_pp0_iter1_reg;
reg   [0:0] trunc_ln21_1_reg_507_pp0_iter2_reg;
reg   [4:0] lshr_ln5_1_reg_512;
wire   [0:0] icmp_ln23_1_fu_376_p2;
reg   [0:0] icmp_ln23_1_reg_527;
reg   [0:0] icmp_ln23_1_reg_527_pp0_iter1_reg;
reg   [0:0] icmp_ln23_1_reg_527_pp0_iter2_reg;
reg   [31:0] buff_A0_load_reg_531;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] buff_A1_load_reg_536;
reg   [31:0] mul_reg_541;
wire    ap_block_pp0_stage7_11001;
reg   [10:0] buff_C_out_addr_reg_546;
reg   [10:0] buff_C_out_addr_reg_546_pp0_iter2_reg;
reg   [10:0] buff_C_out_1_addr_reg_551;
reg   [10:0] buff_C_out_1_addr_reg_551_pp0_iter2_reg;
reg   [31:0] mul2_reg_556;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] add_reg_566;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] zext_ln24_1_fu_355_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln24_2_fu_366_p1;
wire   [63:0] tmp_3_cast_fu_398_p1;
reg   [6:0] k_fu_62;
wire   [6:0] add_ln23_fu_371_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_66;
wire   [6:0] select_ln21_fu_303_p3;
reg   [13:0] indvar_flatten7_fu_70;
wire   [13:0] select_ln21_1_fu_280_p3;
reg   [6:0] i_fu_74;
wire   [6:0] select_ln20_fu_242_p3;
reg   [18:0] indvar_flatten21_fu_78;
wire   [18:0] add_ln20_1_fu_189_p2;
reg   [31:0] empty_fu_82;
wire   [31:0] select_ln24_fu_404_p3;
wire    ap_block_pp0_stage4;
reg    buff_A0_ce0_local;
reg    buff_A1_ce0_local;
reg    buff_C_out_ce0_local;
reg   [10:0] buff_C_out_address0_local;
reg    buff_C_out_we0_local;
wire    ap_block_pp0_stage3;
reg    buff_C_out_1_ce0_local;
reg   [10:0] buff_C_out_1_address0_local;
reg    buff_C_out_1_we0_local;
wire    ap_block_pp0_stage0;
reg   [31:0] grp_fu_148_p0;
reg   [31:0] grp_fu_148_p1;
wire   [0:0] icmp_ln21_fu_210_p2;
wire   [0:0] icmp_ln23_fu_230_p2;
wire   [0:0] xor_ln5_fu_224_p2;
wire   [6:0] add_ln20_fu_204_p2;
wire   [0:0] empty_10_fu_260_p2;
wire   [13:0] add_ln21_1_fu_274_p2;
wire   [5:0] empty_11_fu_308_p1;
wire   [11:0] tmp_2_fu_317_p3;
wire   [11:0] zext_ln24_fu_346_p1;
wire   [11:0] add_ln24_fu_349_p2;
wire   [11:0] tmp_4_fu_338_p3;
wire   [11:0] add_ln24_1_fu_360_p2;
wire   [10:0] tmp_3_fu_392_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage3;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage4_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_62 = 7'd0;
#0 j_fu_66 = 7'd0;
#0 indvar_flatten7_fu_70 = 14'd0;
#0 i_fu_74 = 7'd0;
#0 indvar_flatten21_fu_78 = 19'd0;
#0 empty_fu_82 = 32'd0;
#0 ap_done_reg = 1'b0;
end
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        if (((ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_1_reg_503_pp0_iter1_reg == 1'd1))) begin
            empty_fu_82 <= select_ln24_fu_404_p3;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            empty_fu_82 <= add_reg_566;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_74 <= 7'd0;
    end else if (((icmp_ln20_fu_183_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_74 <= select_ln20_fu_242_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten21_fu_78 <= 19'd0;
    end else if (((icmp_ln20_fu_183_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten21_fu_78 <= add_ln20_1_fu_189_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten7_fu_70 <= 14'd0;
    end else if (((icmp_ln20_fu_183_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten7_fu_70 <= select_ln21_1_fu_280_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_66 <= 7'd0;
    end else if (((icmp_ln20_reg_471 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_66 <= select_ln21_fu_303_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_62 <= 7'd0;
    end else if (((icmp_ln20_reg_471 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_62 <= add_ln23_fu_371_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln21_reg_491 <= add_ln21_fu_254_p2;
        and_ln5_reg_480 <= and_ln5_fu_236_p2;
        icmp_ln20_reg_471 <= icmp_ln20_fu_183_p2;
        icmp_ln20_reg_471_pp0_iter1_reg <= icmp_ln20_reg_471;
        k_mid2_reg_496 <= k_mid2_fu_266_p3;
        select_ln5_reg_475 <= select_ln5_fu_216_p3;
        trunc_ln21_reg_485 <= trunc_ln21_fu_250_p1;
        trunc_ln21_reg_485_pp0_iter1_reg <= trunc_ln21_reg_485;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_reg_566 <= grp_fu_131_p_dout0;
        buff_C_out_1_addr_reg_551 <= tmp_3_cast_fu_398_p1;
        buff_C_out_1_addr_reg_551_pp0_iter2_reg <= buff_C_out_1_addr_reg_551;
        buff_C_out_addr_reg_546 <= tmp_3_cast_fu_398_p1;
        buff_C_out_addr_reg_546_pp0_iter2_reg <= buff_C_out_addr_reg_546;
        first_iter_1_reg_503 <= first_iter_1_fu_312_p2;
        first_iter_1_reg_503_pp0_iter1_reg <= first_iter_1_reg_503;
        icmp_ln23_1_reg_527 <= icmp_ln23_1_fu_376_p2;
        icmp_ln23_1_reg_527_pp0_iter1_reg <= icmp_ln23_1_reg_527;
        icmp_ln23_1_reg_527_pp0_iter2_reg <= icmp_ln23_1_reg_527_pp0_iter1_reg;
        lshr_ln5_1_reg_512 <= {{select_ln21_fu_303_p3[5:1]}};
        trunc_ln21_1_reg_507 <= trunc_ln21_1_fu_324_p1;
        trunc_ln21_1_reg_507_pp0_iter1_reg <= trunc_ln21_1_reg_507;
        trunc_ln21_1_reg_507_pp0_iter2_reg <= trunc_ln21_1_reg_507_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_A0_load_reg_531 <= buff_A0_q0;
        buff_A1_load_reg_536 <= buff_A1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul2_reg_556 <= grp_fu_135_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_reg_541 <= grp_fu_135_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln20_reg_471 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln20_reg_471_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_ce0_local = 1'b1;
    end else begin
        buff_A0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_ce0_local = 1'b1;
    end else begin
        buff_A1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_1_address0_local = buff_C_out_1_addr_reg_551_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_1_address0_local = tmp_3_cast_fu_398_p1;
    end else begin
        buff_C_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln23_1_reg_527_pp0_iter2_reg == 1'd1) & (trunc_ln21_1_reg_507_pp0_iter2_reg == 1'd1))) begin
        buff_C_out_1_we0_local = 1'b1;
    end else begin
        buff_C_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_address0_local = buff_C_out_addr_reg_546_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_address0_local = tmp_3_cast_fu_398_p1;
    end else begin
        buff_C_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln23_1_reg_527_pp0_iter2_reg == 1'd1) & (trunc_ln21_1_reg_507_pp0_iter2_reg == 1'd0))) begin
        buff_C_out_we0_local = 1'b1;
    end else begin
        buff_C_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_148_p0 = mul_reg_541;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_148_p0 = buff_A0_load_reg_531;
    end else begin
        grp_fu_148_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_148_p1 = buff_A1_load_reg_536;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_148_p1 = alpha;
    end else begin
        grp_fu_148_p1 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage3))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln20_1_fu_189_p2 = (indvar_flatten21_fu_78 + 19'd1);
assign add_ln20_fu_204_p2 = (i_fu_74 + 7'd1);
assign add_ln21_1_fu_274_p2 = (indvar_flatten7_fu_70 + 14'd1);
assign add_ln21_fu_254_p2 = (select_ln5_fu_216_p3 + 7'd1);
assign add_ln23_fu_371_p2 = (k_mid2_reg_496 + 7'd1);
assign add_ln24_1_fu_360_p2 = (tmp_4_fu_338_p3 + zext_ln24_fu_346_p1);
assign add_ln24_fu_349_p2 = (tmp_2_fu_317_p3 + zext_ln24_fu_346_p1);
assign and_ln5_fu_236_p2 = (xor_ln5_fu_224_p2 & icmp_ln23_fu_230_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign buff_A0_address0 = zext_ln24_1_fu_355_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_A1_address0 = zext_ln24_2_fu_366_p1;
assign buff_A1_ce0 = buff_A1_ce0_local;
assign buff_C_out_1_address0 = buff_C_out_1_address0_local;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_d0 = add_reg_566;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_address0 = buff_C_out_address0_local;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_d0 = add_reg_566;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign empty_10_fu_260_p2 = (icmp_ln21_fu_210_p2 | and_ln5_fu_236_p2);
assign empty_11_fu_308_p1 = select_ln21_fu_303_p3[5:0];
assign first_iter_1_fu_312_p2 = ((k_mid2_reg_496 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_131_p_ce = 1'b1;
assign grp_fu_131_p_din0 = empty_fu_82;
assign grp_fu_131_p_din1 = mul2_reg_556;
assign grp_fu_131_p_opcode = 2'd0;
assign grp_fu_135_p_ce = 1'b1;
assign grp_fu_135_p_din0 = grp_fu_148_p0;
assign grp_fu_135_p_din1 = grp_fu_148_p1;
assign icmp_ln20_fu_183_p2 = ((indvar_flatten21_fu_78 == 19'd262144) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_210_p2 = ((indvar_flatten7_fu_70 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln23_1_fu_376_p2 = ((add_ln23_fu_371_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln23_fu_230_p2 = ((k_fu_62 == 7'd64) ? 1'b1 : 1'b0);
assign k_mid2_fu_266_p3 = ((empty_10_fu_260_p2[0:0] == 1'b1) ? 7'd0 : k_fu_62);
assign select_ln20_fu_242_p3 = ((icmp_ln21_fu_210_p2[0:0] == 1'b1) ? add_ln20_fu_204_p2 : i_fu_74);
assign select_ln21_1_fu_280_p3 = ((icmp_ln21_fu_210_p2[0:0] == 1'b1) ? 14'd1 : add_ln21_1_fu_274_p2);
assign select_ln21_fu_303_p3 = ((and_ln5_reg_480[0:0] == 1'b1) ? add_ln21_reg_491 : select_ln5_reg_475);
assign select_ln24_fu_404_p3 = ((trunc_ln21_1_reg_507_pp0_iter1_reg[0:0] == 1'b1) ? buff_C_out_1_q0 : buff_C_out_q0);
assign select_ln5_fu_216_p3 = ((icmp_ln21_fu_210_p2[0:0] == 1'b1) ? 7'd0 : j_fu_66);
assign tmp_2_fu_317_p3 = {{trunc_ln21_reg_485}, {6'd0}};
assign tmp_3_cast_fu_398_p1 = tmp_3_fu_392_p3;
assign tmp_3_fu_392_p3 = {{trunc_ln21_reg_485_pp0_iter1_reg}, {lshr_ln5_1_reg_512}};
assign tmp_4_fu_338_p3 = {{empty_11_fu_308_p1}, {6'd0}};
assign trunc_ln21_1_fu_324_p1 = select_ln21_fu_303_p3[0:0];
assign trunc_ln21_fu_250_p1 = select_ln20_fu_242_p3[5:0];
assign xor_ln5_fu_224_p2 = (icmp_ln21_fu_210_p2 ^ 1'd1);
assign zext_ln24_1_fu_355_p1 = add_ln24_fu_349_p2;
assign zext_ln24_2_fu_366_p1 = add_ln24_1_fu_360_p2;
assign zext_ln24_fu_346_p1 = k_mid2_reg_496;
endmodule 