
module needwun_needwun_Pipeline_init_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_7_address0,M_7_ce0,M_7_we0,M_7_d0,M_7_address1,M_7_ce1,M_7_we1,M_7_d1,M_6_address0,M_6_ce0,M_6_we0,M_6_d0,M_6_address1,M_6_ce1,M_6_we1,M_6_d1,M_5_address0,M_5_ce0,M_5_we0,M_5_d0,M_5_address1,M_5_ce1,M_5_we1,M_5_d1,M_4_address0,M_4_ce0,M_4_we0,M_4_d0,M_4_address1,M_4_ce1,M_4_we1,M_4_d1,M_3_address0,M_3_ce0,M_3_we0,M_3_d0,M_3_address1,M_3_ce1,M_3_we1,M_3_d1,M_2_address0,M_2_ce0,M_2_we0,M_2_d0,M_2_address1,M_2_ce1,M_2_we1,M_2_d1,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_address1,M_1_ce1,M_1_we1,M_1_d1,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_address1,M_0_ce1,M_0_we1,M_0_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] M_7_address0;
output   M_7_ce0;
output   M_7_we0;
output  [31:0] M_7_d0;
output  [11:0] M_7_address1;
output   M_7_ce1;
output   M_7_we1;
output  [31:0] M_7_d1;
output  [11:0] M_6_address0;
output   M_6_ce0;
output   M_6_we0;
output  [31:0] M_6_d0;
output  [11:0] M_6_address1;
output   M_6_ce1;
output   M_6_we1;
output  [31:0] M_6_d1;
output  [11:0] M_5_address0;
output   M_5_ce0;
output   M_5_we0;
output  [31:0] M_5_d0;
output  [11:0] M_5_address1;
output   M_5_ce1;
output   M_5_we1;
output  [31:0] M_5_d1;
output  [11:0] M_4_address0;
output   M_4_ce0;
output   M_4_we0;
output  [31:0] M_4_d0;
output  [11:0] M_4_address1;
output   M_4_ce1;
output   M_4_we1;
output  [31:0] M_4_d1;
output  [11:0] M_3_address0;
output   M_3_ce0;
output   M_3_we0;
output  [31:0] M_3_d0;
output  [11:0] M_3_address1;
output   M_3_ce1;
output   M_3_we1;
output  [31:0] M_3_d1;
output  [11:0] M_2_address0;
output   M_2_ce0;
output   M_2_we0;
output  [31:0] M_2_d0;
output  [11:0] M_2_address1;
output   M_2_ce1;
output   M_2_we1;
output  [31:0] M_2_d1;
output  [11:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
output  [11:0] M_1_address1;
output   M_1_ce1;
output   M_1_we1;
output  [31:0] M_1_d1;
output  [11:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
output  [11:0] M_0_address1;
output   M_0_ce1;
output   M_0_we1;
output  [31:0] M_0_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln20_fu_354_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] zext_ln17_fu_318_p1;
reg   [63:0] zext_ln17_reg_581;
wire    ap_block_pp0_stage0_11001;
wire  signed [7:0] sub_ln21_2_fu_393_p2;
reg  signed [7:0] sub_ln21_2_reg_593;
reg   [3:0] tmp_41_reg_610;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln21_1_fu_482_p1;
reg   [7:0] a_idx_fu_96;
wire   [7:0] add_ln20_fu_414_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_a_idx_26;
reg    M_0_we1_local;
wire  signed [31:0] sext_ln21_fu_331_p1;
reg    M_0_ce1_local;
reg    M_0_we0_local;
wire  signed [31:0] sext_ln21_8_fu_499_p1;
reg    M_0_ce0_local;
reg    M_1_we1_local;
wire  signed [31:0] sext_ln21_1_fu_388_p1;
reg    M_1_ce1_local;
reg    M_1_we0_local;
wire  signed [31:0] sext_ln21_9_fu_509_p1;
reg    M_1_ce0_local;
reg    M_2_we1_local;
wire  signed [31:0] sext_ln21_2_fu_399_p1;
reg    M_2_ce1_local;
reg    M_2_we0_local;
wire  signed [31:0] sext_ln21_10_fu_519_p1;
reg    M_2_ce0_local;
reg    M_3_we1_local;
wire  signed [31:0] sext_ln21_3_fu_430_p1;
reg    M_3_ce1_local;
reg    M_3_we0_local;
wire  signed [31:0] sext_ln21_11_fu_529_p1;
reg    M_3_ce0_local;
reg    M_4_we1_local;
wire  signed [31:0] sext_ln21_4_fu_440_p1;
reg    M_4_ce1_local;
reg    M_4_we0_local;
wire  signed [31:0] sext_ln21_12_fu_539_p1;
reg    M_4_ce0_local;
reg    M_5_we1_local;
wire  signed [31:0] sext_ln21_5_fu_450_p1;
reg    M_5_ce1_local;
reg    M_5_we0_local;
wire  signed [31:0] sext_ln21_13_fu_549_p1;
reg    M_5_ce0_local;
reg    M_6_we1_local;
wire  signed [31:0] sext_ln21_6_fu_460_p1;
reg    M_6_ce1_local;
reg    M_6_we0_local;
wire  signed [31:0] sext_ln21_14_fu_559_p1;
reg    M_6_ce0_local;
reg    M_7_we1_local;
wire  signed [31:0] sext_ln21_7_fu_470_p1;
reg    M_7_ce1_local;
reg    M_7_we0_local;
wire  signed [31:0] sext_ln21_15_fu_569_p1;
reg    M_7_ce0_local;
wire   [4:0] lshr_ln_fu_308_p4;
wire   [7:0] sub_ln21_fu_325_p2;
wire   [6:0] tmp_s_fu_336_p4;
wire   [7:0] or_ln_fu_346_p3;
wire   [5:0] tmp_40_fu_360_p4;
wire   [6:0] or_ln21_1_fu_370_p3;
wire   [7:0] zext_ln21_fu_378_p1;
wire   [7:0] sub_ln21_1_fu_382_p2;
wire   [7:0] add_ln21_fu_425_p2;
wire   [7:0] add_ln21_1_fu_435_p2;
wire   [7:0] add_ln21_2_fu_445_p2;
wire   [7:0] add_ln21_3_fu_455_p2;
wire   [7:0] add_ln21_4_fu_465_p2;
wire   [4:0] or_ln1_fu_475_p3;
wire   [7:0] add_ln21_5_fu_494_p2;
wire   [7:0] add_ln21_6_fu_504_p2;
wire   [7:0] add_ln21_7_fu_514_p2;
wire   [7:0] add_ln21_8_fu_524_p2;
wire   [7:0] add_ln21_9_fu_534_p2;
wire   [7:0] add_ln21_10_fu_544_p2;
wire   [7:0] add_ln21_11_fu_554_p2;
wire   [7:0] add_ln21_12_fu_564_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 a_idx_fu_96 = 8'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln20_fu_354_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            a_idx_fu_96 <= add_ln20_fu_414_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            a_idx_fu_96 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub_ln21_2_reg_593 <= sub_ln21_2_fu_393_p2;
        tmp_41_reg_610 <= {{ap_sig_allocacmp_a_idx_26[7:4]}};
        zext_ln17_reg_581[4 : 0] <= zext_ln17_fu_318_p1[4 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_0_ce1_local = 1'b1;
    end else begin
        M_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_0_we1_local = 1'b1;
    end else begin
        M_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_ce1_local = 1'b1;
    end else begin
        M_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln20_fu_354_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_we1_local = 1'b1;
    end else begin
        M_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_ce0_local = 1'b1;
    end else begin
        M_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_ce1_local = 1'b1;
    end else begin
        M_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_we0_local = 1'b1;
    end else begin
        M_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln20_fu_354_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_we1_local = 1'b1;
    end else begin
        M_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_ce0_local = 1'b1;
    end else begin
        M_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_ce1_local = 1'b1;
    end else begin
        M_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_we0_local = 1'b1;
    end else begin
        M_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_we1_local = 1'b1;
    end else begin
        M_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_4_ce0_local = 1'b1;
    end else begin
        M_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_4_ce1_local = 1'b1;
    end else begin
        M_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_4_we0_local = 1'b1;
    end else begin
        M_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_4_we1_local = 1'b1;
    end else begin
        M_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_5_ce0_local = 1'b1;
    end else begin
        M_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_5_ce1_local = 1'b1;
    end else begin
        M_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_5_we0_local = 1'b1;
    end else begin
        M_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_5_we1_local = 1'b1;
    end else begin
        M_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_6_ce0_local = 1'b1;
    end else begin
        M_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_6_ce1_local = 1'b1;
    end else begin
        M_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_6_we0_local = 1'b1;
    end else begin
        M_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_6_we1_local = 1'b1;
    end else begin
        M_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_7_ce0_local = 1'b1;
    end else begin
        M_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_7_ce1_local = 1'b1;
    end else begin
        M_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_7_we0_local = 1'b1;
    end else begin
        M_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_7_we1_local = 1'b1;
    end else begin
        M_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln20_fu_354_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_a_idx_26 = 8'd0;
    end else begin
        ap_sig_allocacmp_a_idx_26 = a_idx_fu_96;
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
assign M_0_address0 = zext_ln21_1_fu_482_p1;
assign M_0_address1 = zext_ln17_fu_318_p1;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_ce1 = M_0_ce1_local;
assign M_0_d0 = sext_ln21_8_fu_499_p1;
assign M_0_d1 = sext_ln21_fu_331_p1;
assign M_0_we0 = M_0_we0_local;
assign M_0_we1 = M_0_we1_local;
assign M_1_address0 = zext_ln21_1_fu_482_p1;
assign M_1_address1 = zext_ln17_fu_318_p1;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_ce1 = M_1_ce1_local;
assign M_1_d0 = sext_ln21_9_fu_509_p1;
assign M_1_d1 = sext_ln21_1_fu_388_p1;
assign M_1_we0 = M_1_we0_local;
assign M_1_we1 = M_1_we1_local;
assign M_2_address0 = zext_ln21_1_fu_482_p1;
assign M_2_address1 = zext_ln17_fu_318_p1;
assign M_2_ce0 = M_2_ce0_local;
assign M_2_ce1 = M_2_ce1_local;
assign M_2_d0 = sext_ln21_10_fu_519_p1;
assign M_2_d1 = sext_ln21_2_fu_399_p1;
assign M_2_we0 = M_2_we0_local;
assign M_2_we1 = M_2_we1_local;
assign M_3_address0 = zext_ln21_1_fu_482_p1;
assign M_3_address1 = zext_ln17_reg_581;
assign M_3_ce0 = M_3_ce0_local;
assign M_3_ce1 = M_3_ce1_local;
assign M_3_d0 = sext_ln21_11_fu_529_p1;
assign M_3_d1 = sext_ln21_3_fu_430_p1;
assign M_3_we0 = M_3_we0_local;
assign M_3_we1 = M_3_we1_local;
assign M_4_address0 = zext_ln21_1_fu_482_p1;
assign M_4_address1 = zext_ln17_reg_581;
assign M_4_ce0 = M_4_ce0_local;
assign M_4_ce1 = M_4_ce1_local;
assign M_4_d0 = sext_ln21_12_fu_539_p1;
assign M_4_d1 = sext_ln21_4_fu_440_p1;
assign M_4_we0 = M_4_we0_local;
assign M_4_we1 = M_4_we1_local;
assign M_5_address0 = zext_ln21_1_fu_482_p1;
assign M_5_address1 = zext_ln17_reg_581;
assign M_5_ce0 = M_5_ce0_local;
assign M_5_ce1 = M_5_ce1_local;
assign M_5_d0 = sext_ln21_13_fu_549_p1;
assign M_5_d1 = sext_ln21_5_fu_450_p1;
assign M_5_we0 = M_5_we0_local;
assign M_5_we1 = M_5_we1_local;
assign M_6_address0 = zext_ln21_1_fu_482_p1;
assign M_6_address1 = zext_ln17_reg_581;
assign M_6_ce0 = M_6_ce0_local;
assign M_6_ce1 = M_6_ce1_local;
assign M_6_d0 = sext_ln21_14_fu_559_p1;
assign M_6_d1 = sext_ln21_6_fu_460_p1;
assign M_6_we0 = M_6_we0_local;
assign M_6_we1 = M_6_we1_local;
assign M_7_address0 = zext_ln21_1_fu_482_p1;
assign M_7_address1 = zext_ln17_reg_581;
assign M_7_ce0 = M_7_ce0_local;
assign M_7_ce1 = M_7_ce1_local;
assign M_7_d0 = sext_ln21_15_fu_569_p1;
assign M_7_d1 = sext_ln21_7_fu_470_p1;
assign M_7_we0 = M_7_we0_local;
assign M_7_we1 = M_7_we1_local;
assign add_ln20_fu_414_p2 = (ap_sig_allocacmp_a_idx_26 + 8'd16);
assign add_ln21_10_fu_544_p2 = ($signed(sub_ln21_2_reg_593) + $signed(8'd245));
assign add_ln21_11_fu_554_p2 = ($signed(sub_ln21_2_reg_593) + $signed(8'd244));
assign add_ln21_12_fu_564_p2 = ($signed(sub_ln21_2_reg_593) + $signed(8'd243));
assign add_ln21_1_fu_435_p2 = ($signed(sub_ln21_2_reg_593) + $signed(8'd254));
assign add_ln21_2_fu_445_p2 = ($signed(sub_ln21_2_reg_593) + $signed(8'd253));
assign add_ln21_3_fu_455_p2 = ($signed(sub_ln21_2_reg_593) + $signed(8'd252));
assign add_ln21_4_fu_465_p2 = ($signed(sub_ln21_2_reg_593) + $signed(8'd251));
assign add_ln21_5_fu_494_p2 = ($signed(sub_ln21_2_reg_593) + $signed(8'd250));
assign add_ln21_6_fu_504_p2 = ($signed(sub_ln21_2_reg_593) + $signed(8'd249));
assign add_ln21_7_fu_514_p2 = ($signed(sub_ln21_2_reg_593) + $signed(8'd248));
assign add_ln21_8_fu_524_p2 = ($signed(sub_ln21_2_reg_593) + $signed(8'd247));
assign add_ln21_9_fu_534_p2 = ($signed(sub_ln21_2_reg_593) + $signed(8'd246));
assign add_ln21_fu_425_p2 = ($signed(sub_ln21_2_reg_593) + $signed(8'd255));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln20_fu_354_p2 = ((or_ln_fu_346_p3 < 8'd129) ? 1'b1 : 1'b0);
assign lshr_ln_fu_308_p4 = {{ap_sig_allocacmp_a_idx_26[7:3]}};
assign or_ln1_fu_475_p3 = {{tmp_41_reg_610}, {1'd1}};
assign or_ln21_1_fu_370_p3 = {{tmp_40_fu_360_p4}, {1'd1}};
assign or_ln_fu_346_p3 = {{tmp_s_fu_336_p4}, {1'd1}};
assign sext_ln21_10_fu_519_p1 = $signed(add_ln21_7_fu_514_p2);
assign sext_ln21_11_fu_529_p1 = $signed(add_ln21_8_fu_524_p2);
assign sext_ln21_12_fu_539_p1 = $signed(add_ln21_9_fu_534_p2);
assign sext_ln21_13_fu_549_p1 = $signed(add_ln21_10_fu_544_p2);
assign sext_ln21_14_fu_559_p1 = $signed(add_ln21_11_fu_554_p2);
assign sext_ln21_15_fu_569_p1 = $signed(add_ln21_12_fu_564_p2);
assign sext_ln21_1_fu_388_p1 = $signed(sub_ln21_1_fu_382_p2);
assign sext_ln21_2_fu_399_p1 = sub_ln21_2_fu_393_p2;
assign sext_ln21_3_fu_430_p1 = $signed(add_ln21_fu_425_p2);
assign sext_ln21_4_fu_440_p1 = $signed(add_ln21_1_fu_435_p2);
assign sext_ln21_5_fu_450_p1 = $signed(add_ln21_2_fu_445_p2);
assign sext_ln21_6_fu_460_p1 = $signed(add_ln21_3_fu_455_p2);
assign sext_ln21_7_fu_470_p1 = $signed(add_ln21_4_fu_465_p2);
assign sext_ln21_8_fu_499_p1 = $signed(add_ln21_5_fu_494_p2);
assign sext_ln21_9_fu_509_p1 = $signed(add_ln21_6_fu_504_p2);
assign sext_ln21_fu_331_p1 = $signed(sub_ln21_fu_325_p2);
assign sub_ln21_1_fu_382_p2 = (8'd0 - zext_ln21_fu_378_p1);
assign sub_ln21_2_fu_393_p2 = ($signed(8'd254) - $signed(ap_sig_allocacmp_a_idx_26));
assign sub_ln21_fu_325_p2 = (8'd0 - ap_sig_allocacmp_a_idx_26);
assign tmp_40_fu_360_p4 = {{ap_sig_allocacmp_a_idx_26[6:1]}};
assign tmp_s_fu_336_p4 = {{ap_sig_allocacmp_a_idx_26[7:1]}};
assign zext_ln17_fu_318_p1 = lshr_ln_fu_308_p4;
assign zext_ln21_1_fu_482_p1 = or_ln1_fu_475_p3;
assign zext_ln21_fu_378_p1 = or_ln21_1_fu_370_p3;
always @ (posedge ap_clk) begin
    zext_ln17_reg_581[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 
