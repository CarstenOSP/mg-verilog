module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln104_12,zext_ln104_11,zext_ln104_10,zext_ln104_15,zext_ln104_9,zext_ln104_14,zext_ln104_8,zext_ln104_13,W_3_address0,W_3_ce0,W_3_we0,W_3_d0,W_3_q0,W_3_address1,W_3_ce1,W_3_we1,W_3_d1,W_3_q1,W_2_address0,W_2_ce0,W_2_we0,W_2_d0,W_2_q0,W_2_address1,W_2_ce1,W_2_we1,W_2_d1,W_2_q1,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_q0,W_1_address1,W_1_ce1,W_1_we1,W_1_d1,W_1_q1,W_address0,W_ce0,W_we0,W_d0,W_q0,W_address1,W_ce1,W_we1,W_d1,W_q1); 
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [30:0] zext_ln104_12;
input  [30:0] zext_ln104_11;
input  [30:0] zext_ln104_10;
input  [30:0] zext_ln104_15;
input  [30:0] zext_ln104_9;
input  [30:0] zext_ln104_14;
input  [30:0] zext_ln104_8;
input  [30:0] zext_ln104_13;
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
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln106_fu_414_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state2;
reg   [6:0] i_3_reg_923;
wire   [63:0] zext_ln108_fu_440_p1;
wire   [63:0] zext_ln108_1_fu_461_p1;
wire   [63:0] zext_ln108_2_fu_482_p1;
wire   [63:0] zext_ln108_3_fu_503_p1;
wire   [63:0] zext_ln108_4_fu_524_p1;
wire   [63:0] zext_ln108_5_fu_545_p1;
wire   [63:0] zext_ln108_7_fu_566_p1;
wire   [63:0] zext_ln108_8_fu_587_p1;
wire   [63:0] zext_ln99_fu_625_p1;
wire   [63:0] zext_ln108_6_fu_669_p1;
reg   [6:0] i_fu_86;
wire   [6:0] add_ln106_fu_810_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_3;
reg   [31:0] store_forwarded_fu_90;
wire   [31:0] xor_ln108_20_fu_784_p2;
wire   [31:0] zext_ln104_13_cast_fu_334_p1;
reg   [31:0] store_forwarded81_fu_94;
wire   [31:0] xor_ln108_2_fu_645_p2;
wire   [31:0] zext_ln104_8_cast_fu_338_p1;
reg   [31:0] store_forwarded84_fu_98;
wire   [31:0] xor_ln108_17_fu_765_p2;
wire   [31:0] zext_ln104_14_cast_fu_342_p1;
reg   [31:0] store_forwarded87_fu_102;
wire   [31:0] xor_ln108_5_fu_689_p2;
wire   [31:0] zext_ln104_9_cast_fu_346_p1;
reg   [31:0] store_forwarded90_fu_106;
wire   [31:0] xor_ln108_23_fu_803_p2;
wire   [31:0] zext_ln104_15_cast_fu_350_p1;
reg   [31:0] store_forwarded93_fu_110;
wire   [31:0] xor_ln108_8_fu_708_p2;
wire   [31:0] zext_ln104_10_cast_fu_354_p1;
reg   [31:0] store_forwarded96_fu_114;
wire   [31:0] xor_ln108_11_fu_727_p2;
wire   [31:0] zext_ln104_11_cast_fu_358_p1;
reg   [31:0] store_forwarded99_fu_118;
wire   [31:0] xor_ln108_14_fu_746_p2;
wire   [31:0] zext_ln104_12_cast_fu_362_p1;
reg    W_2_ce1_local;
reg   [4:0] W_2_address1_local;
reg    W_2_ce0_local;
reg   [4:0] W_2_address0_local;
reg    W_2_we1_local;
reg    W_2_we0_local;
reg    W_ce1_local;
reg   [4:0] W_address1_local;
reg    W_ce0_local;
reg   [4:0] W_address0_local;
reg    W_we1_local;
reg    W_we0_local;
reg    W_3_ce1_local;
reg   [4:0] W_3_address1_local;
reg    W_3_ce0_local;
reg   [4:0] W_3_address0_local;
reg    W_3_we1_local;
reg    W_3_we0_local;
reg    W_1_ce1_local;
reg   [4:0] W_1_address1_local;
reg    W_1_ce0_local;
reg   [4:0] W_1_address0_local;
reg    W_1_we1_local;
reg    W_1_we0_local;
wire   [6:0] add_ln108_fu_424_p2;
wire   [4:0] lshr_ln1_fu_430_p4;
wire   [5:0] trunc_ln106_fu_420_p1;
wire   [5:0] add_ln108_1_fu_445_p2;
wire   [3:0] lshr_ln108_1_fu_451_p4;
wire   [6:0] add_ln108_2_fu_466_p2;
wire   [4:0] lshr_ln108_2_fu_472_p4;
wire   [6:0] add_ln108_3_fu_487_p2;
wire   [4:0] lshr_ln108_3_fu_493_p4;
wire   [6:0] add_ln108_4_fu_508_p2;
wire   [4:0] lshr_ln108_4_fu_514_p4;
wire   [6:0] add_ln108_5_fu_529_p2;
wire   [4:0] lshr_ln108_5_fu_535_p4;
wire   [6:0] add_ln108_6_fu_550_p2;
wire   [4:0] lshr_ln108_6_fu_556_p4;
wire   [6:0] add_ln108_7_fu_571_p2;
wire   [4:0] lshr_ln108_7_fu_577_p4;
wire   [4:0] lshr_ln_fu_616_p4;
wire   [31:0] xor_ln108_fu_633_p2;
wire   [31:0] xor_ln108_1_fu_639_p2;
wire   [3:0] tmp_fu_652_p4;
wire   [4:0] or_ln_fu_661_p3;
wire   [31:0] xor_ln108_3_fu_677_p2;
wire   [31:0] xor_ln108_4_fu_683_p2;
wire   [31:0] xor_ln108_6_fu_696_p2;
wire   [31:0] xor_ln108_7_fu_702_p2;
wire   [31:0] xor_ln108_9_fu_715_p2;
wire   [31:0] xor_ln108_10_fu_721_p2;
wire   [31:0] xor_ln108_12_fu_734_p2;
wire   [31:0] xor_ln108_13_fu_740_p2;
wire   [31:0] xor_ln108_15_fu_753_p2;
wire   [31:0] xor_ln108_16_fu_759_p2;
wire   [31:0] xor_ln108_18_fu_772_p2;
wire   [31:0] xor_ln108_19_fu_778_p2;
wire   [31:0] xor_ln108_21_fu_791_p2;
wire   [31:0] xor_ln108_22_fu_797_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 i_fu_86 = 7'd0;
#0 store_forwarded_fu_90 = 32'd0;
#0 store_forwarded81_fu_94 = 32'd0;
#0 store_forwarded84_fu_98 = 32'd0;
#0 store_forwarded87_fu_102 = 32'd0;
#0 store_forwarded90_fu_106 = 32'd0;
#0 store_forwarded93_fu_110 = 32'd0;
#0 store_forwarded96_fu_114 = 32'd0;
#0 store_forwarded99_fu_118 = 32'd0;
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
        i_fu_86 <= 7'd16;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        i_fu_86 <= add_ln106_fu_810_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        store_forwarded81_fu_94 <= zext_ln104_8_cast_fu_338_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        store_forwarded81_fu_94 <= xor_ln108_2_fu_645_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        store_forwarded84_fu_98 <= zext_ln104_14_cast_fu_342_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        store_forwarded84_fu_98 <= xor_ln108_17_fu_765_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        store_forwarded87_fu_102 <= zext_ln104_9_cast_fu_346_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        store_forwarded87_fu_102 <= xor_ln108_5_fu_689_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        store_forwarded90_fu_106 <= zext_ln104_15_cast_fu_350_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        store_forwarded90_fu_106 <= xor_ln108_23_fu_803_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        store_forwarded93_fu_110 <= zext_ln104_10_cast_fu_354_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        store_forwarded93_fu_110 <= xor_ln108_8_fu_708_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        store_forwarded96_fu_114 <= zext_ln104_11_cast_fu_358_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        store_forwarded96_fu_114 <= xor_ln108_11_fu_727_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        store_forwarded99_fu_118 <= zext_ln104_12_cast_fu_362_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        store_forwarded99_fu_118 <= xor_ln108_14_fu_746_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        store_forwarded_fu_90 <= zext_ln104_13_cast_fu_334_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        store_forwarded_fu_90 <= xor_ln108_20_fu_784_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        i_3_reg_923 <= ap_sig_allocacmp_i_3;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_address0_local = zext_ln108_6_fu_669_p1;
    end else if (((icmp_ln106_fu_414_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_1_address0_local = zext_ln108_5_fu_545_p1;
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_address1_local = zext_ln99_fu_625_p1;
    end else if (((icmp_ln106_fu_414_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_1_address1_local = zext_ln108_3_fu_503_p1;
    end else begin
        W_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_414_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_414_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_1_we1_local = 1'b1;
    end else begin
        W_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_2_address0_local = zext_ln108_6_fu_669_p1;
    end else if (((icmp_ln106_fu_414_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_2_address0_local = zext_ln108_7_fu_566_p1;
    end else begin
        W_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_2_address1_local = zext_ln99_fu_625_p1;
    end else if (((icmp_ln106_fu_414_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_2_address1_local = zext_ln108_fu_440_p1;
    end else begin
        W_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_414_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_414_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_2_ce1_local = 1'b1;
    end else begin
        W_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_2_we0_local = 1'b1;
    end else begin
        W_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_2_we1_local = 1'b1;
    end else begin
        W_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_3_address0_local = zext_ln108_6_fu_669_p1;
    end else if (((icmp_ln106_fu_414_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_3_address0_local = zext_ln108_8_fu_587_p1;
    end else begin
        W_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_3_address1_local = zext_ln99_fu_625_p1;
    end else if (((icmp_ln106_fu_414_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_3_address1_local = zext_ln108_2_fu_482_p1;
    end else begin
        W_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_414_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_414_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_3_we0_local = 1'b1;
    end else begin
        W_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_3_we1_local = 1'b1;
    end else begin
        W_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_address0_local = zext_ln108_6_fu_669_p1;
    end else if (((icmp_ln106_fu_414_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_address0_local = zext_ln108_4_fu_524_p1;
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_address1_local = zext_ln99_fu_625_p1;
    end else if (((icmp_ln106_fu_414_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        W_address1_local = zext_ln108_1_fu_461_p1;
    end else begin
        W_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_414_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln106_fu_414_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
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
always @ (*) begin
    if (((icmp_ln106_fu_414_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_3 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_86;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln106_fu_414_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
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
assign W_1_d0 = xor_ln108_20_fu_784_p2;
assign W_1_d1 = xor_ln108_5_fu_689_p2;
assign W_1_we0 = W_1_we0_local;
assign W_1_we1 = W_1_we1_local;
assign W_2_address0 = W_2_address0_local;
assign W_2_address1 = W_2_address1_local;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_2_d0 = xor_ln108_17_fu_765_p2;
assign W_2_d1 = xor_ln108_8_fu_708_p2;
assign W_2_we0 = W_2_we0_local;
assign W_2_we1 = W_2_we1_local;
assign W_3_address0 = W_3_address0_local;
assign W_3_address1 = W_3_address1_local;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_3_d0 = xor_ln108_23_fu_803_p2;
assign W_3_d1 = xor_ln108_11_fu_727_p2;
assign W_3_we0 = W_3_we0_local;
assign W_3_we1 = W_3_we1_local;
assign W_address0 = W_address0_local;
assign W_address1 = W_address1_local;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_d0 = xor_ln108_14_fu_746_p2;
assign W_d1 = xor_ln108_2_fu_645_p2;
assign W_we0 = W_we0_local;
assign W_we1 = W_we1_local;
assign add_ln106_fu_810_p2 = (i_3_reg_923 + 7'd8);
assign add_ln108_1_fu_445_p2 = ($signed(trunc_ln106_fu_420_p1) + $signed(6'd48));
assign add_ln108_2_fu_466_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd115));
assign add_ln108_3_fu_487_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd113));
assign add_ln108_4_fu_508_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd116));
assign add_ln108_5_fu_529_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd117));
assign add_ln108_6_fu_550_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd118));
assign add_ln108_7_fu_571_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd119));
assign add_ln108_fu_424_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd114));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_414_p2 = ((ap_sig_allocacmp_i_3 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln108_1_fu_451_p4 = {{add_ln108_1_fu_445_p2[5:2]}};
assign lshr_ln108_2_fu_472_p4 = {{add_ln108_2_fu_466_p2[6:2]}};
assign lshr_ln108_3_fu_493_p4 = {{add_ln108_3_fu_487_p2[6:2]}};
assign lshr_ln108_4_fu_514_p4 = {{add_ln108_4_fu_508_p2[6:2]}};
assign lshr_ln108_5_fu_535_p4 = {{add_ln108_5_fu_529_p2[6:2]}};
assign lshr_ln108_6_fu_556_p4 = {{add_ln108_6_fu_550_p2[6:2]}};
assign lshr_ln108_7_fu_577_p4 = {{add_ln108_7_fu_571_p2[6:2]}};
assign lshr_ln1_fu_430_p4 = {{add_ln108_fu_424_p2[6:2]}};
assign lshr_ln_fu_616_p4 = {{i_3_reg_923[6:2]}};
assign or_ln_fu_661_p3 = {{tmp_fu_652_p4}, {1'd1}};
assign tmp_fu_652_p4 = {{i_3_reg_923[6:3]}};
assign trunc_ln106_fu_420_p1 = ap_sig_allocacmp_i_3[5:0];
assign xor_ln108_10_fu_721_p2 = (xor_ln108_9_fu_715_p2 ^ xor_ln108_2_fu_645_p2);
assign xor_ln108_11_fu_727_p2 = (xor_ln108_10_fu_721_p2 ^ store_forwarded96_fu_114);
assign xor_ln108_12_fu_734_p2 = (xor_ln108_5_fu_689_p2 ^ W_2_q0);
assign xor_ln108_13_fu_740_p2 = (xor_ln108_12_fu_734_p2 ^ W_q0);
assign xor_ln108_14_fu_746_p2 = (xor_ln108_13_fu_740_p2 ^ store_forwarded99_fu_118);
assign xor_ln108_15_fu_753_p2 = (store_forwarded81_fu_94 ^ W_2_q0);
assign xor_ln108_16_fu_759_p2 = (xor_ln108_15_fu_753_p2 ^ xor_ln108_11_fu_727_p2);
assign xor_ln108_17_fu_765_p2 = (xor_ln108_16_fu_759_p2 ^ store_forwarded84_fu_98);
assign xor_ln108_18_fu_772_p2 = (xor_ln108_8_fu_708_p2 ^ W_3_q0);
assign xor_ln108_19_fu_778_p2 = (xor_ln108_18_fu_772_p2 ^ W_1_q0);
assign xor_ln108_1_fu_639_p2 = (xor_ln108_fu_633_p2 ^ store_forwarded_fu_90);
assign xor_ln108_20_fu_784_p2 = (xor_ln108_19_fu_778_p2 ^ store_forwarded_fu_90);
assign xor_ln108_21_fu_791_p2 = (store_forwarded87_fu_102 ^ W_3_q0);
assign xor_ln108_22_fu_797_p2 = (xor_ln108_21_fu_791_p2 ^ xor_ln108_14_fu_746_p2);
assign xor_ln108_23_fu_803_p2 = (xor_ln108_22_fu_797_p2 ^ store_forwarded90_fu_106);
assign xor_ln108_2_fu_645_p2 = (xor_ln108_1_fu_639_p2 ^ store_forwarded81_fu_94);
assign xor_ln108_3_fu_677_p2 = (W_3_q1 ^ W_1_q1);
assign xor_ln108_4_fu_683_p2 = (xor_ln108_3_fu_677_p2 ^ store_forwarded84_fu_98);
assign xor_ln108_5_fu_689_p2 = (xor_ln108_4_fu_683_p2 ^ store_forwarded87_fu_102);
assign xor_ln108_6_fu_696_p2 = (store_forwarded90_fu_106 ^ W_q0);
assign xor_ln108_7_fu_702_p2 = (xor_ln108_6_fu_696_p2 ^ W_2_q1);
assign xor_ln108_8_fu_708_p2 = (xor_ln108_7_fu_702_p2 ^ store_forwarded93_fu_110);
assign xor_ln108_9_fu_715_p2 = (W_3_q1 ^ W_1_q0);
assign xor_ln108_fu_633_p2 = (W_q1 ^ W_2_q1);
assign zext_ln104_10_cast_fu_354_p1 = zext_ln104_10;
assign zext_ln104_11_cast_fu_358_p1 = zext_ln104_11;
assign zext_ln104_12_cast_fu_362_p1 = zext_ln104_12;
assign zext_ln104_13_cast_fu_334_p1 = zext_ln104_13;
assign zext_ln104_14_cast_fu_342_p1 = zext_ln104_14;
assign zext_ln104_15_cast_fu_350_p1 = zext_ln104_15;
assign zext_ln104_8_cast_fu_338_p1 = zext_ln104_8;
assign zext_ln104_9_cast_fu_346_p1 = zext_ln104_9;
assign zext_ln108_1_fu_461_p1 = lshr_ln108_1_fu_451_p4;
assign zext_ln108_2_fu_482_p1 = lshr_ln108_2_fu_472_p4;
assign zext_ln108_3_fu_503_p1 = lshr_ln108_3_fu_493_p4;
assign zext_ln108_4_fu_524_p1 = lshr_ln108_4_fu_514_p4;
assign zext_ln108_5_fu_545_p1 = lshr_ln108_5_fu_535_p4;
assign zext_ln108_6_fu_669_p1 = or_ln_fu_661_p3;
assign zext_ln108_7_fu_566_p1 = lshr_ln108_6_fu_556_p4;
assign zext_ln108_8_fu_587_p1 = lshr_ln108_7_fu_577_p4;
assign zext_ln108_fu_440_p1 = lshr_ln1_fu_430_p4;
assign zext_ln99_fu_625_p1 = lshr_ln_fu_616_p4;
endmodule 