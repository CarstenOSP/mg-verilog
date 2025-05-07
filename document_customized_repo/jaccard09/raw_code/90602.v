module syr2k_syr2k_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A0_address0,buff_A0_ce0,buff_A0_q0,buff_A0_1_address0,buff_A0_1_ce0,buff_A0_1_q0,buff_B0_address0,buff_B0_ce0,buff_B0_q0,buff_B0_1_address0,buff_B0_1_ce0,buff_B0_1_q0,alpha,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_we0,tmp1_1_d0,tmp1_1_q0,grp_fu_226_p_din0,grp_fu_226_p_din1,grp_fu_226_p_opcode,grp_fu_226_p_dout0,grp_fu_226_p_ce,grp_fu_230_p_din0,grp_fu_230_p_din1,grp_fu_230_p_dout0,grp_fu_230_p_ce); 
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
output  [10:0] buff_A0_address0;
output   buff_A0_ce0;
input  [31:0] buff_A0_q0;
output  [10:0] buff_A0_1_address0;
output   buff_A0_1_ce0;
input  [31:0] buff_A0_1_q0;
output  [10:0] buff_B0_address0;
output   buff_B0_ce0;
input  [31:0] buff_B0_q0;
output  [10:0] buff_B0_1_address0;
output   buff_B0_1_ce0;
input  [31:0] buff_B0_1_q0;
input  [31:0] alpha;
output  [10:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
input  [31:0] tmp1_q0;
output  [10:0] tmp1_1_address0;
output   tmp1_1_ce0;
output   tmp1_1_we0;
output  [31:0] tmp1_1_d0;
input  [31:0] tmp1_1_q0;
output  [31:0] grp_fu_226_p_din0;
output  [31:0] grp_fu_226_p_din1;
output  [1:0] grp_fu_226_p_opcode;
input  [31:0] grp_fu_226_p_dout0;
output   grp_fu_226_p_ce;
output  [31:0] grp_fu_230_p_din0;
output  [31:0] grp_fu_230_p_din1;
input  [31:0] grp_fu_230_p_dout0;
output   grp_fu_230_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln27_reg_513;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln27_fu_209_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln27_reg_513_pp0_iter1_reg;
reg   [6:0] k_load_reg_517;
wire   [0:0] icmp_ln28_fu_224_p2;
reg   [0:0] icmp_ln28_reg_522;
wire   [0:0] and_ln5_fu_242_p2;
reg   [0:0] and_ln5_reg_529;
wire   [5:0] trunc_ln28_fu_298_p1;
reg   [5:0] trunc_ln28_reg_535;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [6:0] k_mid2_fu_312_p3;
reg   [6:0] k_mid2_reg_540;
wire   [0:0] first_iter_1_fu_330_p2;
reg   [0:0] first_iter_1_reg_545;
reg   [0:0] first_iter_1_reg_545_pp0_iter1_reg;
wire   [0:0] trunc_ln28_1_fu_336_p1;
reg   [0:0] trunc_ln28_1_reg_549;
reg   [0:0] trunc_ln28_1_reg_549_pp0_iter1_reg;
reg   [0:0] trunc_ln28_1_reg_549_pp0_iter2_reg;
reg   [4:0] lshr_ln5_1_reg_554;
wire   [0:0] icmp_ln30_1_fu_394_p2;
reg   [0:0] icmp_ln30_1_reg_579;
reg   [0:0] icmp_ln30_1_reg_579_pp0_iter1_reg;
reg   [0:0] icmp_ln30_1_reg_579_pp0_iter2_reg;
wire   [31:0] select_ln31_1_fu_418_p3;
reg   [31:0] select_ln31_1_reg_583;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] select_ln31_2_fu_426_p3;
reg   [31:0] select_ln31_2_reg_588;
reg   [31:0] mul_reg_593;
wire    ap_block_pp0_stage7_11001;
reg   [10:0] tmp1_addr_reg_598;
reg   [10:0] tmp1_addr_reg_598_pp0_iter2_reg;
reg   [10:0] tmp1_1_addr_reg_603;
reg   [10:0] tmp1_1_addr_reg_603_pp0_iter2_reg;
reg   [31:0] mul3_reg_608;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] add_reg_618;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] zext_ln31_fu_368_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln31_1_fu_382_p1;
wire   [63:0] tmp_1_cast_fu_440_p1;
reg   [6:0] k_fu_62;
wire   [6:0] add_ln30_fu_388_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_66;
wire   [6:0] select_ln28_fu_319_p3;
reg   [13:0] indvar_flatten7_fu_70;
wire   [13:0] select_ln28_1_fu_254_p3;
reg   [6:0] i_fu_74;
wire   [6:0] select_ln27_fu_291_p3;
reg   [18:0] indvar_flatten21_fu_78;
wire   [18:0] add_ln27_1_fu_215_p2;
reg   [31:0] empty_fu_82;
wire   [31:0] select_ln31_fu_446_p3;
wire    ap_block_pp0_stage4;
reg    buff_A0_ce0_local;
reg    buff_A0_1_ce0_local;
reg    buff_B0_ce0_local;
reg    buff_B0_1_ce0_local;
reg    tmp1_ce0_local;
reg   [10:0] tmp1_address0_local;
reg    tmp1_we0_local;
wire    ap_block_pp0_stage3;
reg    tmp1_1_ce0_local;
reg   [10:0] tmp1_1_address0_local;
reg    tmp1_1_we0_local;
wire    ap_block_pp0_stage0;
reg   [31:0] grp_fu_174_p0;
reg   [31:0] grp_fu_174_p1;
wire   [0:0] icmp_ln30_fu_236_p2;
wire   [0:0] xor_ln5_fu_230_p2;
wire   [13:0] add_ln28_1_fu_248_p2;
wire   [6:0] add_ln27_fu_278_p2;
wire   [6:0] select_ln5_fu_284_p3;
wire   [0:0] empty_10_fu_308_p2;
wire   [6:0] add_ln28_fu_302_p2;
wire   [4:0] lshr_ln5_3_fu_350_p4;
wire   [10:0] tmp_3_fu_360_p3;
wire   [5:0] empty_11_fu_326_p1;
wire   [10:0] tmp_4_fu_374_p3;
wire   [0:0] trunc_ln30_fu_415_p1;
wire   [10:0] tmp_1_fu_434_p3;
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
syr2k_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if (((ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_1_reg_545_pp0_iter1_reg == 1'd1))) begin
            empty_fu_82 <= select_ln31_fu_446_p3;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            empty_fu_82 <= add_reg_618;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_74 <= 7'd0;
    end else if (((icmp_ln27_reg_513 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_74 <= select_ln27_fu_291_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten21_fu_78 <= 19'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln27_fu_209_p2 == 1'd0))) begin
        indvar_flatten21_fu_78 <= add_ln27_1_fu_215_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten7_fu_70 <= 14'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln27_fu_209_p2 == 1'd0))) begin
        indvar_flatten7_fu_70 <= select_ln28_1_fu_254_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_66 <= 7'd0;
    end else if (((icmp_ln27_reg_513 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_66 <= select_ln28_fu_319_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_62 <= 7'd0;
    end else if (((icmp_ln27_reg_513 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_62 <= add_ln30_fu_388_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_reg_618 <= grp_fu_226_p_dout0;
        first_iter_1_reg_545 <= first_iter_1_fu_330_p2;
        first_iter_1_reg_545_pp0_iter1_reg <= first_iter_1_reg_545;
        icmp_ln30_1_reg_579 <= icmp_ln30_1_fu_394_p2;
        icmp_ln30_1_reg_579_pp0_iter1_reg <= icmp_ln30_1_reg_579;
        icmp_ln30_1_reg_579_pp0_iter2_reg <= icmp_ln30_1_reg_579_pp0_iter1_reg;
        k_mid2_reg_540 <= k_mid2_fu_312_p3;
        lshr_ln5_1_reg_554 <= {{select_ln28_fu_319_p3[5:1]}};
        tmp1_1_addr_reg_603 <= tmp_1_cast_fu_440_p1;
        tmp1_1_addr_reg_603_pp0_iter2_reg <= tmp1_1_addr_reg_603;
        tmp1_addr_reg_598 <= tmp_1_cast_fu_440_p1;
        tmp1_addr_reg_598_pp0_iter2_reg <= tmp1_addr_reg_598;
        trunc_ln28_1_reg_549 <= trunc_ln28_1_fu_336_p1;
        trunc_ln28_1_reg_549_pp0_iter1_reg <= trunc_ln28_1_reg_549;
        trunc_ln28_1_reg_549_pp0_iter2_reg <= trunc_ln28_1_reg_549_pp0_iter1_reg;
        trunc_ln28_reg_535 <= trunc_ln28_fu_298_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln5_reg_529 <= and_ln5_fu_242_p2;
        icmp_ln27_reg_513 <= icmp_ln27_fu_209_p2;
        icmp_ln27_reg_513_pp0_iter1_reg <= icmp_ln27_reg_513;
        icmp_ln28_reg_522 <= icmp_ln28_fu_224_p2;
        k_load_reg_517 <= k_fu_62;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul3_reg_608 <= grp_fu_230_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_reg_593 <= grp_fu_230_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln31_1_reg_583 <= select_ln31_1_fu_418_p3;
        select_ln31_2_reg_588 <= select_ln31_2_fu_426_p3;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_513 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln27_reg_513_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        buff_A0_1_ce0_local = 1'b1;
    end else begin
        buff_A0_1_ce0_local = 1'b0;
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
        buff_B0_1_ce0_local = 1'b1;
    end else begin
        buff_B0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_ce0_local = 1'b1;
    end else begin
        buff_B0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_174_p0 = mul_reg_593;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_174_p0 = select_ln31_1_reg_583;
    end else begin
        grp_fu_174_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_174_p1 = select_ln31_2_reg_588;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_174_p1 = alpha;
    end else begin
        grp_fu_174_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_1_address0_local = tmp1_1_addr_reg_603_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_1_address0_local = tmp_1_cast_fu_440_p1;
    end else begin
        tmp1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln30_1_reg_579_pp0_iter2_reg == 1'd1) & (trunc_ln28_1_reg_549_pp0_iter2_reg == 1'd1))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_address0_local = tmp1_addr_reg_598_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_address0_local = tmp_1_cast_fu_440_p1;
    end else begin
        tmp1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln30_1_reg_579_pp0_iter2_reg == 1'd1) & (trunc_ln28_1_reg_549_pp0_iter2_reg == 1'd0))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
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
assign add_ln27_1_fu_215_p2 = (indvar_flatten21_fu_78 + 19'd1);
assign add_ln27_fu_278_p2 = (i_fu_74 + 7'd1);
assign add_ln28_1_fu_248_p2 = (indvar_flatten7_fu_70 + 14'd1);
assign add_ln28_fu_302_p2 = (select_ln5_fu_284_p3 + 7'd1);
assign add_ln30_fu_388_p2 = (k_mid2_fu_312_p3 + 7'd1);
assign and_ln5_fu_242_p2 = (xor_ln5_fu_230_p2 & icmp_ln30_fu_236_p2);
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
assign buff_A0_1_address0 = zext_ln31_fu_368_p1;
assign buff_A0_1_ce0 = buff_A0_1_ce0_local;
assign buff_A0_address0 = zext_ln31_fu_368_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_B0_1_address0 = zext_ln31_1_fu_382_p1;
assign buff_B0_1_ce0 = buff_B0_1_ce0_local;
assign buff_B0_address0 = zext_ln31_1_fu_382_p1;
assign buff_B0_ce0 = buff_B0_ce0_local;
assign empty_10_fu_308_p2 = (icmp_ln28_reg_522 | and_ln5_reg_529);
assign empty_11_fu_326_p1 = select_ln28_fu_319_p3[5:0];
assign first_iter_1_fu_330_p2 = ((k_mid2_fu_312_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_226_p_ce = 1'b1;
assign grp_fu_226_p_din0 = empty_fu_82;
assign grp_fu_226_p_din1 = mul3_reg_608;
assign grp_fu_226_p_opcode = 2'd0;
assign grp_fu_230_p_ce = 1'b1;
assign grp_fu_230_p_din0 = grp_fu_174_p0;
assign grp_fu_230_p_din1 = grp_fu_174_p1;
assign icmp_ln27_fu_209_p2 = ((indvar_flatten21_fu_78 == 19'd262144) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_224_p2 = ((indvar_flatten7_fu_70 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln30_1_fu_394_p2 = ((add_ln30_fu_388_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_236_p2 = ((k_fu_62 == 7'd64) ? 1'b1 : 1'b0);
assign k_mid2_fu_312_p3 = ((empty_10_fu_308_p2[0:0] == 1'b1) ? 7'd0 : k_load_reg_517);
assign lshr_ln5_3_fu_350_p4 = {{k_mid2_fu_312_p3[5:1]}};
assign select_ln27_fu_291_p3 = ((icmp_ln28_reg_522[0:0] == 1'b1) ? add_ln27_fu_278_p2 : i_fu_74);
assign select_ln28_1_fu_254_p3 = ((icmp_ln28_fu_224_p2[0:0] == 1'b1) ? 14'd1 : add_ln28_1_fu_248_p2);
assign select_ln28_fu_319_p3 = ((and_ln5_reg_529[0:0] == 1'b1) ? add_ln28_fu_302_p2 : select_ln5_fu_284_p3);
assign select_ln31_1_fu_418_p3 = ((trunc_ln30_fu_415_p1[0:0] == 1'b1) ? buff_A0_1_q0 : buff_A0_q0);
assign select_ln31_2_fu_426_p3 = ((trunc_ln30_fu_415_p1[0:0] == 1'b1) ? buff_B0_1_q0 : buff_B0_q0);
assign select_ln31_fu_446_p3 = ((trunc_ln28_1_reg_549_pp0_iter1_reg[0:0] == 1'b1) ? tmp1_1_q0 : tmp1_q0);
assign select_ln5_fu_284_p3 = ((icmp_ln28_reg_522[0:0] == 1'b1) ? 7'd0 : j_fu_66);
assign tmp1_1_address0 = tmp1_1_address0_local;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_1_d0 = add_reg_618;
assign tmp1_1_we0 = tmp1_1_we0_local;
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = add_reg_618;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_1_cast_fu_440_p1 = tmp_1_fu_434_p3;
assign tmp_1_fu_434_p3 = {{trunc_ln28_reg_535}, {lshr_ln5_1_reg_554}};
assign tmp_3_fu_360_p3 = {{trunc_ln28_fu_298_p1}, {lshr_ln5_3_fu_350_p4}};
assign tmp_4_fu_374_p3 = {{empty_11_fu_326_p1}, {lshr_ln5_3_fu_350_p4}};
assign trunc_ln28_1_fu_336_p1 = select_ln28_fu_319_p3[0:0];
assign trunc_ln28_fu_298_p1 = select_ln27_fu_291_p3[5:0];
assign trunc_ln30_fu_415_p1 = k_mid2_reg_540[0:0];
assign xor_ln5_fu_230_p2 = (icmp_ln28_fu_224_p2 ^ 1'd1);
assign zext_ln31_1_fu_382_p1 = tmp_4_fu_374_p3;
assign zext_ln31_fu_368_p1 = tmp_3_fu_360_p3;
endmodule 