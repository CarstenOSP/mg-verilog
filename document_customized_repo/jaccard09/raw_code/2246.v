module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,W_3_address0,W_3_ce0,W_3_we0,W_3_d0,W_3_q0,W_3_address1,W_3_ce1,W_3_we1,W_3_d1,W_3_q1,W_2_address0,W_2_ce0,W_2_we0,W_2_d0,W_2_q0,W_2_address1,W_2_ce1,W_2_we1,W_2_d1,W_2_q1,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_q0,W_1_address1,W_1_ce1,W_1_we1,W_1_d1,W_1_q1,W_address0,W_ce0,W_we0,W_d0,W_q0,W_address1,W_ce1,W_we1,W_d1,W_q1); 
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] W_3_address0;
output   W_3_ce0;
output   W_3_we0;
output  [31:0] W_3_d0;
input  [31:0] W_3_q0;
output  [4:0] W_3_address1;
output   W_3_ce1;
output   W_3_we1;
output  [31:0] W_3_d1;
input  [31:0] W_3_q1;
output  [4:0] W_2_address0;
output   W_2_ce0;
output   W_2_we0;
output  [31:0] W_2_d0;
input  [31:0] W_2_q0;
output  [4:0] W_2_address1;
output   W_2_ce1;
output   W_2_we1;
output  [31:0] W_2_d1;
input  [31:0] W_2_q1;
output  [4:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
input  [31:0] W_1_q0;
output  [4:0] W_1_address1;
output   W_1_ce1;
output   W_1_we1;
output  [31:0] W_1_d1;
input  [31:0] W_1_q1;
output  [4:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
input  [31:0] W_q0;
output  [4:0] W_address1;
output   W_ce1;
output   W_we1;
output  [31:0] W_d1;
input  [31:0] W_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln106_fu_324_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state3;
reg   [6:0] i_3_reg_858;
reg   [31:0] W_1_load_reg_916;
wire    ap_CS_fsm_state2;
reg   [31:0] W_load_reg_922;
reg   [31:0] W_2_load_reg_928;
reg   [31:0] W_load_1_reg_934;
reg   [31:0] W_2_load_1_reg_979;
reg   [31:0] W_1_load_1_reg_985;
reg   [31:0] W_3_load_reg_991;
reg   [31:0] W_3_load_1_reg_997;
wire   [63:0] zext_ln108_fu_350_p1;
wire   [63:0] zext_ln108_1_fu_371_p1;
wire   [63:0] zext_ln108_2_fu_392_p1;
wire   [63:0] zext_ln108_3_fu_413_p1;
wire   [63:0] zext_ln108_4_fu_434_p1;
wire   [63:0] zext_ln108_5_fu_455_p1;
wire   [63:0] zext_ln108_6_fu_476_p1;
wire   [63:0] zext_ln108_8_fu_497_p1;
wire   [63:0] zext_ln108_7_fu_517_p1;
wire   [63:0] zext_ln108_9_fu_537_p1;
wire   [63:0] zext_ln108_10_fu_557_p1;
wire   [63:0] zext_ln108_11_fu_577_p1;
wire   [63:0] zext_ln108_12_fu_597_p1;
wire   [63:0] zext_ln108_14_fu_617_p1;
wire   [63:0] zext_ln108_15_fu_637_p1;
wire   [63:0] zext_ln108_16_fu_657_p1;
wire   [63:0] zext_ln99_fu_671_p1;
wire   [63:0] zext_ln108_13_fu_711_p1;
reg   [6:0] i_fu_84;
wire   [6:0] add_ln106_fu_841_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_3;
reg    W_1_ce1_local;
reg   [4:0] W_1_address1_local;
reg    W_1_ce0_local;
reg   [4:0] W_1_address0_local;
reg    W_1_we1_local;
wire   [31:0] xor_ln108_5_fu_728_p2;
reg    W_1_we0_local;
wire   [31:0] xor_ln108_20_fu_817_p2;
reg    W_ce1_local;
reg   [4:0] W_address1_local;
reg    W_ce0_local;
reg   [4:0] W_address0_local;
reg    W_we1_local;
wire   [31:0] xor_ln108_2_fu_687_p2;
reg    W_we0_local;
wire   [31:0] xor_ln108_14_fu_782_p2;
reg    W_2_ce1_local;
reg   [4:0] W_2_address1_local;
reg    W_2_ce0_local;
reg   [4:0] W_2_address0_local;
reg    W_2_we1_local;
wire   [31:0] xor_ln108_8_fu_745_p2;
reg    W_2_we0_local;
wire   [31:0] xor_ln108_17_fu_799_p2;
reg    W_3_ce1_local;
reg   [4:0] W_3_address1_local;
reg    W_3_ce0_local;
reg   [4:0] W_3_address0_local;
reg    W_3_we1_local;
wire   [31:0] xor_ln108_11_fu_763_p2;
reg    W_3_we0_local;
wire   [31:0] xor_ln108_23_fu_834_p2;
wire   [6:0] add_ln108_fu_334_p2;
wire   [4:0] lshr_ln1_fu_340_p4;
wire   [6:0] add_ln108_1_fu_355_p2;
wire   [4:0] lshr_ln108_1_fu_361_p4;
wire   [6:0] add_ln108_2_fu_376_p2;
wire   [4:0] lshr_ln108_2_fu_382_p4;
wire   [5:0] trunc_ln106_fu_330_p1;
wire   [5:0] add_ln108_3_fu_397_p2;
wire   [3:0] lshr_ln108_3_fu_403_p4;
wire   [6:0] add_ln108_4_fu_418_p2;
wire   [4:0] lshr_ln108_4_fu_424_p4;
wire   [6:0] add_ln108_5_fu_439_p2;
wire   [4:0] lshr_ln108_5_fu_445_p4;
wire   [6:0] add_ln108_6_fu_460_p2;
wire   [4:0] lshr_ln108_6_fu_466_p4;
wire   [6:0] add_ln108_8_fu_481_p2;
wire   [4:0] lshr_ln108_8_fu_487_p4;
wire   [6:0] add_ln108_7_fu_502_p2;
wire   [4:0] lshr_ln108_7_fu_507_p4;
wire   [6:0] add_ln108_9_fu_522_p2;
wire   [4:0] lshr_ln108_9_fu_527_p4;
wire   [6:0] add_ln108_10_fu_542_p2;
wire   [4:0] lshr_ln108_s_fu_547_p4;
wire   [6:0] add_ln108_11_fu_562_p2;
wire   [4:0] lshr_ln108_10_fu_567_p4;
wire   [6:0] add_ln108_12_fu_582_p2;
wire   [4:0] lshr_ln108_11_fu_587_p4;
wire   [6:0] add_ln108_13_fu_602_p2;
wire   [4:0] lshr_ln108_12_fu_607_p4;
wire   [6:0] add_ln108_14_fu_622_p2;
wire   [4:0] lshr_ln108_13_fu_627_p4;
wire   [6:0] add_ln108_15_fu_642_p2;
wire   [4:0] lshr_ln108_14_fu_647_p4;
wire   [4:0] lshr_ln_fu_662_p4;
wire   [31:0] xor_ln108_fu_683_p2;
wire   [31:0] xor_ln108_1_fu_679_p2;
wire   [3:0] tmp_fu_694_p4;
wire   [4:0] or_ln_fu_703_p3;
wire   [31:0] xor_ln108_3_fu_724_p2;
wire   [31:0] xor_ln108_4_fu_719_p2;
wire   [31:0] xor_ln108_7_fu_740_p2;
wire   [31:0] xor_ln108_6_fu_735_p2;
wire   [31:0] xor_ln108_10_fu_757_p2;
wire   [31:0] xor_ln108_9_fu_752_p2;
wire   [31:0] xor_ln108_13_fu_776_p2;
wire   [31:0] xor_ln108_12_fu_770_p2;
wire   [31:0] xor_ln108_16_fu_793_p2;
wire   [31:0] xor_ln108_15_fu_789_p2;
wire   [31:0] xor_ln108_19_fu_811_p2;
wire   [31:0] xor_ln108_18_fu_806_p2;
wire   [31:0] xor_ln108_22_fu_828_p2;
wire   [31:0] xor_ln108_21_fu_824_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 i_fu_84 = 7'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        i_fu_84 <= 7'd16;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_84 <= add_ln106_fu_841_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_load_1_reg_985 <= W_1_q0;
        W_1_load_reg_916 <= W_1_q1;
        W_2_load_1_reg_979 <= W_2_q0;
        W_2_load_reg_928 <= W_2_q1;
        W_3_load_1_reg_997 <= W_3_q0;
        W_3_load_reg_991 <= W_3_q1;
        W_load_1_reg_934 <= W_q0;
        W_load_reg_922 <= W_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        i_3_reg_858 <= ap_sig_allocacmp_i_3;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_1_address0_local = zext_ln108_13_fu_711_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_address0_local = zext_ln108_12_fu_597_p1;
    end else if (((icmp_ln106_fu_324_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_1_address0_local = zext_ln108_5_fu_455_p1;
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_1_address1_local = zext_ln99_fu_671_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_address1_local = zext_ln108_7_fu_517_p1;
    end else if (((icmp_ln106_fu_324_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_1_address1_local = zext_ln108_fu_350_p1;
    end else begin
        W_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_324_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_324_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_1_we1_local = 1'b1;
    end else begin
        W_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_2_address0_local = zext_ln108_13_fu_711_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_2_address0_local = zext_ln108_15_fu_637_p1;
    end else if (((icmp_ln106_fu_324_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_2_address0_local = zext_ln108_4_fu_434_p1;
    end else begin
        W_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_2_address1_local = zext_ln99_fu_671_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_2_address1_local = zext_ln108_9_fu_537_p1;
    end else if (((icmp_ln106_fu_324_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_2_address1_local = zext_ln108_2_fu_392_p1;
    end else begin
        W_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_324_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_324_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_2_ce1_local = 1'b1;
    end else begin
        W_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_2_we0_local = 1'b1;
    end else begin
        W_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_2_we1_local = 1'b1;
    end else begin
        W_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_3_address0_local = zext_ln108_13_fu_711_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_3_address0_local = zext_ln108_16_fu_657_p1;
    end else if (((icmp_ln106_fu_324_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_3_address0_local = zext_ln108_8_fu_497_p1;
    end else begin
        W_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_3_address1_local = zext_ln99_fu_671_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_3_address1_local = zext_ln108_11_fu_577_p1;
    end else if (((icmp_ln106_fu_324_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_3_address1_local = zext_ln108_6_fu_476_p1;
    end else begin
        W_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_324_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_324_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_3_we0_local = 1'b1;
    end else begin
        W_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_3_we1_local = 1'b1;
    end else begin
        W_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_address0_local = zext_ln108_13_fu_711_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_address0_local = zext_ln108_14_fu_617_p1;
    end else if (((icmp_ln106_fu_324_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_address0_local = zext_ln108_3_fu_413_p1;
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_address1_local = zext_ln99_fu_671_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        W_address1_local = zext_ln108_10_fu_557_p1;
    end else if (((icmp_ln106_fu_324_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_address1_local = zext_ln108_1_fu_371_p1;
    end else begin
        W_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_324_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_324_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        W_we1_local = 1'b1;
    end else begin
        W_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln106_fu_324_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_3 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_84;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln106_fu_324_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign W_1_address0 = W_1_address0_local;
assign W_1_address1 = W_1_address1_local;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_1_d0 = xor_ln108_20_fu_817_p2;
assign W_1_d1 = xor_ln108_5_fu_728_p2;
assign W_1_we0 = W_1_we0_local;
assign W_1_we1 = W_1_we1_local;
assign W_2_address0 = W_2_address0_local;
assign W_2_address1 = W_2_address1_local;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_2_d0 = xor_ln108_17_fu_799_p2;
assign W_2_d1 = xor_ln108_8_fu_745_p2;
assign W_2_we0 = W_2_we0_local;
assign W_2_we1 = W_2_we1_local;
assign W_3_address0 = W_3_address0_local;
assign W_3_address1 = W_3_address1_local;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_3_d0 = xor_ln108_23_fu_834_p2;
assign W_3_d1 = xor_ln108_11_fu_763_p2;
assign W_3_we0 = W_3_we0_local;
assign W_3_we1 = W_3_we1_local;
assign W_address0 = W_address0_local;
assign W_address1 = W_address1_local;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_d0 = xor_ln108_14_fu_782_p2;
assign W_d1 = xor_ln108_2_fu_687_p2;
assign W_we0 = W_we0_local;
assign W_we1 = W_we1_local;
assign add_ln106_fu_841_p2 = (i_3_reg_858 + 7'd8);
assign add_ln108_10_fu_542_p2 = ($signed(i_3_reg_858) + $signed(7'd116));
assign add_ln108_11_fu_562_p2 = ($signed(i_3_reg_858) + $signed(7'd123));
assign add_ln108_12_fu_582_p2 = ($signed(i_3_reg_858) + $signed(7'd117));
assign add_ln108_13_fu_602_p2 = ($signed(i_3_reg_858) + $signed(7'd124));
assign add_ln108_14_fu_622_p2 = ($signed(i_3_reg_858) + $signed(7'd118));
assign add_ln108_15_fu_642_p2 = ($signed(i_3_reg_858) + $signed(7'd119));
assign add_ln108_1_fu_355_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd120));
assign add_ln108_2_fu_376_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd114));
assign add_ln108_3_fu_397_p2 = ($signed(trunc_ln106_fu_330_p1) + $signed(6'd48));
assign add_ln108_4_fu_418_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd126));
assign add_ln108_5_fu_439_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd121));
assign add_ln108_6_fu_460_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd115));
assign add_ln108_7_fu_502_p2 = ($signed(i_3_reg_858) + $signed(7'd113));
assign add_ln108_8_fu_481_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd127));
assign add_ln108_9_fu_522_p2 = ($signed(i_3_reg_858) + $signed(7'd122));
assign add_ln108_fu_334_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd125));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_324_p2 = ((ap_sig_allocacmp_i_3 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln108_10_fu_567_p4 = {{add_ln108_11_fu_562_p2[6:2]}};
assign lshr_ln108_11_fu_587_p4 = {{add_ln108_12_fu_582_p2[6:2]}};
assign lshr_ln108_12_fu_607_p4 = {{add_ln108_13_fu_602_p2[6:2]}};
assign lshr_ln108_13_fu_627_p4 = {{add_ln108_14_fu_622_p2[6:2]}};
assign lshr_ln108_14_fu_647_p4 = {{add_ln108_15_fu_642_p2[6:2]}};
assign lshr_ln108_1_fu_361_p4 = {{add_ln108_1_fu_355_p2[6:2]}};
assign lshr_ln108_2_fu_382_p4 = {{add_ln108_2_fu_376_p2[6:2]}};
assign lshr_ln108_3_fu_403_p4 = {{add_ln108_3_fu_397_p2[5:2]}};
assign lshr_ln108_4_fu_424_p4 = {{add_ln108_4_fu_418_p2[6:2]}};
assign lshr_ln108_5_fu_445_p4 = {{add_ln108_5_fu_439_p2[6:2]}};
assign lshr_ln108_6_fu_466_p4 = {{add_ln108_6_fu_460_p2[6:2]}};
assign lshr_ln108_7_fu_507_p4 = {{add_ln108_7_fu_502_p2[6:2]}};
assign lshr_ln108_8_fu_487_p4 = {{add_ln108_8_fu_481_p2[6:2]}};
assign lshr_ln108_9_fu_527_p4 = {{add_ln108_9_fu_522_p2[6:2]}};
assign lshr_ln108_s_fu_547_p4 = {{add_ln108_10_fu_542_p2[6:2]}};
assign lshr_ln1_fu_340_p4 = {{add_ln108_fu_334_p2[6:2]}};
assign lshr_ln_fu_662_p4 = {{i_3_reg_858[6:2]}};
assign or_ln_fu_703_p3 = {{tmp_fu_694_p4}, {1'd1}};
assign tmp_fu_694_p4 = {{i_3_reg_858[6:3]}};
assign trunc_ln106_fu_330_p1 = ap_sig_allocacmp_i_3[5:0];
assign xor_ln108_10_fu_757_p2 = (xor_ln108_2_fu_687_p2 ^ W_1_q0);
assign xor_ln108_11_fu_763_p2 = (xor_ln108_9_fu_752_p2 ^ xor_ln108_10_fu_757_p2);
assign xor_ln108_12_fu_770_p2 = (W_q1 ^ W_q0);
assign xor_ln108_13_fu_776_p2 = (xor_ln108_5_fu_728_p2 ^ W_2_q0);
assign xor_ln108_14_fu_782_p2 = (xor_ln108_13_fu_776_p2 ^ xor_ln108_12_fu_770_p2);
assign xor_ln108_15_fu_789_p2 = (W_load_reg_922 ^ W_2_load_1_reg_979);
assign xor_ln108_16_fu_793_p2 = (xor_ln108_11_fu_763_p2 ^ W_2_q0);
assign xor_ln108_17_fu_799_p2 = (xor_ln108_16_fu_793_p2 ^ xor_ln108_15_fu_789_p2);
assign xor_ln108_18_fu_806_p2 = (W_1_q0 ^ W_1_load_reg_916);
assign xor_ln108_19_fu_811_p2 = (xor_ln108_8_fu_745_p2 ^ W_3_q0);
assign xor_ln108_1_fu_679_p2 = (W_load_reg_922 ^ W_load_1_reg_934);
assign xor_ln108_20_fu_817_p2 = (xor_ln108_19_fu_811_p2 ^ xor_ln108_18_fu_806_p2);
assign xor_ln108_21_fu_824_p2 = (W_3_load_1_reg_997 ^ W_1_load_1_reg_985);
assign xor_ln108_22_fu_828_p2 = (xor_ln108_14_fu_782_p2 ^ W_3_q0);
assign xor_ln108_23_fu_834_p2 = (xor_ln108_22_fu_828_p2 ^ xor_ln108_21_fu_824_p2);
assign xor_ln108_2_fu_687_p2 = (xor_ln108_fu_683_p2 ^ xor_ln108_1_fu_679_p2);
assign xor_ln108_3_fu_724_p2 = (W_3_load_reg_991 ^ W_2_load_1_reg_979);
assign xor_ln108_4_fu_719_p2 = (W_1_q1 ^ W_1_load_1_reg_985);
assign xor_ln108_5_fu_728_p2 = (xor_ln108_4_fu_719_p2 ^ xor_ln108_3_fu_724_p2);
assign xor_ln108_6_fu_735_p2 = (W_2_q1 ^ W_2_load_reg_928);
assign xor_ln108_7_fu_740_p2 = (W_q1 ^ W_3_load_1_reg_997);
assign xor_ln108_8_fu_745_p2 = (xor_ln108_7_fu_740_p2 ^ xor_ln108_6_fu_735_p2);
assign xor_ln108_9_fu_752_p2 = (W_3_q1 ^ W_3_load_reg_991);
assign xor_ln108_fu_683_p2 = (W_2_load_reg_928 ^ W_1_load_reg_916);
assign zext_ln108_10_fu_557_p1 = lshr_ln108_s_fu_547_p4;
assign zext_ln108_11_fu_577_p1 = lshr_ln108_10_fu_567_p4;
assign zext_ln108_12_fu_597_p1 = lshr_ln108_11_fu_587_p4;
assign zext_ln108_13_fu_711_p1 = or_ln_fu_703_p3;
assign zext_ln108_14_fu_617_p1 = lshr_ln108_12_fu_607_p4;
assign zext_ln108_15_fu_637_p1 = lshr_ln108_13_fu_627_p4;
assign zext_ln108_16_fu_657_p1 = lshr_ln108_14_fu_647_p4;
assign zext_ln108_1_fu_371_p1 = lshr_ln108_1_fu_361_p4;
assign zext_ln108_2_fu_392_p1 = lshr_ln108_2_fu_382_p4;
assign zext_ln108_3_fu_413_p1 = lshr_ln108_3_fu_403_p4;
assign zext_ln108_4_fu_434_p1 = lshr_ln108_4_fu_424_p4;
assign zext_ln108_5_fu_455_p1 = lshr_ln108_5_fu_445_p4;
assign zext_ln108_6_fu_476_p1 = lshr_ln108_6_fu_466_p4;
assign zext_ln108_7_fu_517_p1 = lshr_ln108_7_fu_507_p4;
assign zext_ln108_8_fu_497_p1 = lshr_ln108_8_fu_487_p4;
assign zext_ln108_9_fu_537_p1 = lshr_ln108_9_fu_527_p4;
assign zext_ln108_fu_350_p1 = lshr_ln1_fu_340_p4;
assign zext_ln99_fu_671_p1 = lshr_ln_fu_662_p4;
endmodule 