
module k3mm_k3mm_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B_address0,buff_B_ce0,buff_B_q0,buff_B_1_address0,buff_B_1_ce0,buff_B_1_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_we0,tmp1_1_d0,tmp1_1_q0,grp_fu_2086_p_din0,grp_fu_2086_p_din1,grp_fu_2086_p_opcode,grp_fu_2086_p_dout0,grp_fu_2086_p_ce,grp_fu_2090_p_din0,grp_fu_2090_p_din1,grp_fu_2090_p_dout0,grp_fu_2090_p_ce);  
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
output  [10:0] buff_B_address0;
output   buff_B_ce0;
input  [31:0] buff_B_q0;
output  [10:0] buff_B_1_address0;
output   buff_B_1_ce0;
input  [31:0] buff_B_1_q0;
output  [10:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [10:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
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
output  [31:0] grp_fu_2086_p_din0;
output  [31:0] grp_fu_2086_p_din1;
output  [1:0] grp_fu_2086_p_opcode;
input  [31:0] grp_fu_2086_p_dout0;
output   grp_fu_2086_p_ce;
output  [31:0] grp_fu_2090_p_din0;
output  [31:0] grp_fu_2090_p_din1;
input  [31:0] grp_fu_2090_p_dout0;
output   grp_fu_2090_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln32_reg_498;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln32_fu_199_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [6:0] k_load_reg_502;
wire   [0:0] icmp_ln33_fu_214_p2;
reg   [0:0] icmp_ln33_reg_507;
wire   [0:0] and_ln10_fu_232_p2;
reg   [0:0] and_ln10_reg_514;
wire   [6:0] k_mid2_fu_302_p3;
reg   [6:0] k_mid2_reg_520;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] first_iter_1_fu_320_p2;
reg   [0:0] first_iter_1_reg_525;
wire   [0:0] trunc_ln33_2_fu_326_p1;
reg   [0:0] trunc_ln33_2_reg_529;
reg   [0:0] trunc_ln33_2_reg_529_pp0_iter1_reg;
reg   [10:0] tmp1_addr_1_reg_535;
reg   [10:0] tmp1_addr_1_reg_535_pp0_iter1_reg;
reg   [10:0] tmp1_1_addr_1_reg_540;
reg   [10:0] tmp1_1_addr_1_reg_540_pp0_iter1_reg;
wire   [0:0] icmp_ln34_1_fu_398_p2;
reg   [0:0] icmp_ln34_1_reg_565;
reg   [0:0] icmp_ln34_1_reg_565_pp0_iter1_reg;
wire   [31:0] select_ln35_fu_419_p3;
reg   [31:0] select_ln35_reg_569;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] select_ln35_1_fu_429_p3;
reg   [31:0] select_ln35_1_reg_574;
wire   [31:0] select_ln35_2_fu_437_p3;
reg   [31:0] select_ln35_2_reg_579;
reg   [31:0] mul_reg_584;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] add_reg_594;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] tmp_3_cast_fu_348_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln35_fu_362_p1;
wire   [63:0] zext_ln35_1_fu_386_p1;
reg   [6:0] k_fu_58;
wire   [6:0] add_ln34_fu_392_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_62;
wire   [6:0] select_ln33_fu_313_p3;
reg   [13:0] indvar_flatten7_fu_66;
wire   [13:0] select_ln33_1_fu_244_p3;
reg   [6:0] i_fu_70;
wire   [6:0] select_ln32_fu_281_p3;
reg   [18:0] indvar_flatten21_fu_74;
wire   [18:0] add_ln32_1_fu_205_p2;
reg   [31:0] empty_fu_78;
wire    ap_block_pp0_stage0;
reg    tmp1_ce0_local;
reg   [10:0] tmp1_address0_local;
reg    tmp1_we0_local;
wire    ap_block_pp0_stage7;
reg    tmp1_1_ce0_local;
reg   [10:0] tmp1_1_address0_local;
reg    tmp1_1_we0_local;
reg    buff_A_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_B_ce0_local;
reg    buff_B_1_ce0_local;
wire    ap_block_pp0_stage4;
wire   [0:0] icmp_ln34_fu_226_p2;
wire   [0:0] xor_ln10_fu_220_p2;
wire   [13:0] add_ln33_1_fu_238_p2;
wire   [6:0] add_ln32_fu_268_p2;
wire   [6:0] select_ln10_fu_274_p3;
wire   [0:0] empty_10_fu_298_p2;
wire   [6:0] add_ln33_fu_292_p2;
wire   [5:0] trunc_ln33_fu_288_p1;
wire   [4:0] lshr_ln10_1_fu_330_p4;
wire   [10:0] tmp_3_fu_340_p3;
wire   [5:0] trunc_ln33_1_fu_309_p1;
wire   [10:0] tmp_4_fu_354_p3;
wire   [4:0] lshr_ln10_3_fu_368_p4;
wire   [10:0] tmp_6_fu_378_p3;
wire    ap_block_pp0_stage3;
wire   [0:0] trunc_ln34_fu_426_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
reg    ap_condition_558;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_58 = 7'd0;
#0 j_fu_62 = 7'd0;
#0 indvar_flatten7_fu_66 = 14'd0;
#0 i_fu_70 = 7'd0;
#0 indvar_flatten21_fu_74 = 19'd0;
#0 empty_fu_78 = 32'd0;
#0 ap_done_reg = 1'b0;
end
k3mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        if ((1'b1 == ap_condition_558)) begin
            empty_fu_78 <= select_ln35_reg_569;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_78 <= add_reg_594;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_70 <= 7'd0;
    end else if (((icmp_ln32_reg_498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_70 <= select_ln32_fu_281_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten21_fu_74 <= 19'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln32_fu_199_p2 == 1'd0))) begin
        indvar_flatten21_fu_74 <= add_ln32_1_fu_205_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten7_fu_66 <= 14'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln32_fu_199_p2 == 1'd0))) begin
        indvar_flatten7_fu_66 <= select_ln33_1_fu_244_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_62 <= 7'd0;
    end else if (((icmp_ln32_reg_498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_62 <= select_ln33_fu_313_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_58 <= 7'd0;
    end else if (((icmp_ln32_reg_498 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_58 <= add_ln34_fu_392_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_reg_594 <= grp_fu_2086_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln10_reg_514 <= and_ln10_fu_232_p2;
        icmp_ln32_reg_498 <= icmp_ln32_fu_199_p2;
        icmp_ln33_reg_507 <= icmp_ln33_fu_214_p2;
        k_load_reg_502 <= k_fu_58;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        first_iter_1_reg_525 <= first_iter_1_fu_320_p2;
        icmp_ln34_1_reg_565 <= icmp_ln34_1_fu_398_p2;
        icmp_ln34_1_reg_565_pp0_iter1_reg <= icmp_ln34_1_reg_565;
        k_mid2_reg_520 <= k_mid2_fu_302_p3;
        tmp1_1_addr_1_reg_540 <= tmp_3_cast_fu_348_p1;
        tmp1_1_addr_1_reg_540_pp0_iter1_reg <= tmp1_1_addr_1_reg_540;
        tmp1_addr_1_reg_535 <= tmp_3_cast_fu_348_p1;
        tmp1_addr_1_reg_535_pp0_iter1_reg <= tmp1_addr_1_reg_535;
        trunc_ln33_2_reg_529 <= trunc_ln33_2_fu_326_p1;
        trunc_ln33_2_reg_529_pp0_iter1_reg <= trunc_ln33_2_reg_529;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_reg_584 <= grp_fu_2090_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln35_1_reg_574 <= select_ln35_1_fu_429_p3;
        select_ln35_2_reg_579 <= select_ln35_2_fu_437_p3;
        select_ln35_reg_569 <= select_ln35_fu_419_p3;
    end
end
always @ (*) begin
    if (((icmp_ln32_reg_498 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B_1_ce0_local = 1'b1;
    end else begin
        buff_B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp1_1_address0_local = tmp1_1_addr_1_reg_540_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_1_address0_local = tmp_3_cast_fu_348_p1;
    end else begin
        tmp1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (icmp_ln34_1_reg_565_pp0_iter1_reg == 1'd1) & (trunc_ln33_2_reg_529_pp0_iter1_reg == 1'd1))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp1_address0_local = tmp1_addr_1_reg_535_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_address0_local = tmp_3_cast_fu_348_p1;
    end else begin
        tmp1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (icmp_ln34_1_reg_565_pp0_iter1_reg == 1'd1) & (trunc_ln33_2_reg_529_pp0_iter1_reg == 1'd0))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln32_1_fu_205_p2 = (indvar_flatten21_fu_74 + 19'd1);
assign add_ln32_fu_268_p2 = (i_fu_70 + 7'd1);
assign add_ln33_1_fu_238_p2 = (indvar_flatten7_fu_66 + 14'd1);
assign add_ln33_fu_292_p2 = (select_ln10_fu_274_p3 + 7'd1);
assign add_ln34_fu_392_p2 = (k_mid2_fu_302_p3 + 7'd1);
assign and_ln10_fu_232_p2 = (xor_ln10_fu_220_p2 & icmp_ln34_fu_226_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_558 = ((icmp_ln32_reg_498 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (first_iter_1_reg_525 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign buff_A_1_address0 = zext_ln35_1_fu_386_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_address0 = zext_ln35_1_fu_386_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_B_1_address0 = zext_ln35_fu_362_p1;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_address0 = zext_ln35_fu_362_p1;
assign buff_B_ce0 = buff_B_ce0_local;
assign empty_10_fu_298_p2 = (icmp_ln33_reg_507 | and_ln10_reg_514);
assign first_iter_1_fu_320_p2 = ((k_mid2_fu_302_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_2086_p_ce = 1'b1;
assign grp_fu_2086_p_din0 = empty_fu_78;
assign grp_fu_2086_p_din1 = mul_reg_584;
assign grp_fu_2086_p_opcode = 2'd0;
assign grp_fu_2090_p_ce = 1'b1;
assign grp_fu_2090_p_din0 = select_ln35_1_reg_574;
assign grp_fu_2090_p_din1 = select_ln35_2_reg_579;
assign icmp_ln32_fu_199_p2 = ((indvar_flatten21_fu_74 == 19'd262144) ? 1'b1 : 1'b0);
assign icmp_ln33_fu_214_p2 = ((indvar_flatten7_fu_66 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln34_1_fu_398_p2 = ((add_ln34_fu_392_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln34_fu_226_p2 = ((k_fu_58 == 7'd64) ? 1'b1 : 1'b0);
assign k_mid2_fu_302_p3 = ((empty_10_fu_298_p2[0:0] == 1'b1) ? 7'd0 : k_load_reg_502);
assign lshr_ln10_1_fu_330_p4 = {{select_ln33_fu_313_p3[5:1]}};
assign lshr_ln10_3_fu_368_p4 = {{k_mid2_fu_302_p3[5:1]}};
assign select_ln10_fu_274_p3 = ((icmp_ln33_reg_507[0:0] == 1'b1) ? 7'd0 : j_fu_62);
assign select_ln32_fu_281_p3 = ((icmp_ln33_reg_507[0:0] == 1'b1) ? add_ln32_fu_268_p2 : i_fu_70);
assign select_ln33_1_fu_244_p3 = ((icmp_ln33_fu_214_p2[0:0] == 1'b1) ? 14'd1 : add_ln33_1_fu_238_p2);
assign select_ln33_fu_313_p3 = ((and_ln10_reg_514[0:0] == 1'b1) ? add_ln33_fu_292_p2 : select_ln10_fu_274_p3);
assign select_ln35_1_fu_429_p3 = ((trunc_ln34_fu_426_p1[0:0] == 1'b1) ? buff_A_1_q0 : buff_A_q0);
assign select_ln35_2_fu_437_p3 = ((trunc_ln33_2_reg_529[0:0] == 1'b1) ? buff_B_1_q0 : buff_B_q0);
assign select_ln35_fu_419_p3 = ((trunc_ln33_2_reg_529[0:0] == 1'b1) ? tmp1_1_q0 : tmp1_q0);
assign tmp1_1_address0 = tmp1_1_address0_local;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_1_d0 = add_reg_594;
assign tmp1_1_we0 = tmp1_1_we0_local;
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = add_reg_594;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_3_cast_fu_348_p1 = tmp_3_fu_340_p3;
assign tmp_3_fu_340_p3 = {{trunc_ln33_fu_288_p1}, {lshr_ln10_1_fu_330_p4}};
assign tmp_4_fu_354_p3 = {{trunc_ln33_1_fu_309_p1}, {lshr_ln10_1_fu_330_p4}};
assign tmp_6_fu_378_p3 = {{trunc_ln33_fu_288_p1}, {lshr_ln10_3_fu_368_p4}};
assign trunc_ln33_1_fu_309_p1 = k_mid2_fu_302_p3[5:0];
assign trunc_ln33_2_fu_326_p1 = select_ln33_fu_313_p3[0:0];
assign trunc_ln33_fu_288_p1 = select_ln32_fu_281_p3[5:0];
assign trunc_ln34_fu_426_p1 = k_mid2_reg_520[0:0];
assign xor_ln10_fu_220_p2 = (icmp_ln33_fu_214_p2 ^ 1'd1);
assign zext_ln35_1_fu_386_p1 = tmp_6_fu_378_p3;
assign zext_ln35_fu_362_p1 = tmp_4_fu_354_p3;
endmodule 
