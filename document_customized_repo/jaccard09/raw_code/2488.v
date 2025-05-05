module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln104_15,zext_ln104_14,zext_ln104_13,W_7_address0,W_7_ce0,W_7_we0,W_7_d0,W_7_address1,W_7_ce1,W_7_q1,W_7_address2,W_7_ce2,W_7_q2,W_6_address0,W_6_ce0,W_6_we0,W_6_d0,W_6_address1,W_6_ce1,W_6_q1,W_6_address2,W_6_ce2,W_6_q2,W_5_address0,W_5_ce0,W_5_we0,W_5_d0,W_5_address1,W_5_ce1,W_5_q1,W_5_address2,W_5_ce2,W_5_q2,W_4_address0,W_4_ce0,W_4_we0,W_4_d0,W_4_address1,W_4_ce1,W_4_q1,W_4_address2,W_4_ce2,W_4_q2,W_3_address0,W_3_ce0,W_3_we0,W_3_d0,W_3_address1,W_3_ce1,W_3_q1,W_3_address2,W_3_ce2,W_3_q2,W_2_address0,W_2_ce0,W_2_we0,W_2_d0,W_2_address1,W_2_ce1,W_2_q1,W_2_address2,W_2_ce2,W_2_q2,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_address1,W_1_ce1,W_1_q1,W_1_address2,W_1_ce2,W_1_q2,W_address0,W_ce0,W_we0,W_d0,W_address1,W_ce1,W_q1,W_address2,W_ce2,W_q2); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [30:0] zext_ln104_15;
input  [30:0] zext_ln104_14;
input  [30:0] zext_ln104_13;
output  [3:0] W_7_address0;
output   W_7_ce0;
output   W_7_we0;
output  [31:0] W_7_d0;
output  [3:0] W_7_address1;
output   W_7_ce1;
input  [31:0] W_7_q1;
output  [3:0] W_7_address2;
output   W_7_ce2;
input  [31:0] W_7_q2;
output  [3:0] W_6_address0;
output   W_6_ce0;
output   W_6_we0;
output  [31:0] W_6_d0;
output  [3:0] W_6_address1;
output   W_6_ce1;
input  [31:0] W_6_q1;
output  [3:0] W_6_address2;
output   W_6_ce2;
input  [31:0] W_6_q2;
output  [3:0] W_5_address0;
output   W_5_ce0;
output   W_5_we0;
output  [31:0] W_5_d0;
output  [3:0] W_5_address1;
output   W_5_ce1;
input  [31:0] W_5_q1;
output  [3:0] W_5_address2;
output   W_5_ce2;
input  [31:0] W_5_q2;
output  [3:0] W_4_address0;
output   W_4_ce0;
output   W_4_we0;
output  [31:0] W_4_d0;
output  [3:0] W_4_address1;
output   W_4_ce1;
input  [31:0] W_4_q1;
output  [3:0] W_4_address2;
output   W_4_ce2;
input  [31:0] W_4_q2;
output  [3:0] W_3_address0;
output   W_3_ce0;
output   W_3_we0;
output  [31:0] W_3_d0;
output  [3:0] W_3_address1;
output   W_3_ce1;
input  [31:0] W_3_q1;
output  [3:0] W_3_address2;
output   W_3_ce2;
input  [31:0] W_3_q2;
output  [3:0] W_2_address0;
output   W_2_ce0;
output   W_2_we0;
output  [31:0] W_2_d0;
output  [3:0] W_2_address1;
output   W_2_ce1;
input  [31:0] W_2_q1;
output  [3:0] W_2_address2;
output   W_2_ce2;
input  [31:0] W_2_q2;
output  [3:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
output  [3:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [3:0] W_1_address2;
output   W_1_ce2;
input  [31:0] W_1_q2;
output  [3:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
output  [3:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
output  [3:0] W_address2;
output   W_ce2;
input  [31:0] W_q2;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln106_fu_479_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_3_reg_948;
wire   [0:0] icmp_ln108_1_fu_489_p2;
reg   [0:0] icmp_ln108_1_reg_967;
reg   [0:0] icmp_ln108_1_reg_967_pp0_iter1_reg;
wire   [0:0] icmp_ln108_fu_495_p2;
reg   [0:0] icmp_ln108_reg_981;
reg   [0:0] icmp_ln108_reg_981_pp0_iter1_reg;
reg   [3:0] lshr_ln_reg_985;
wire   [63:0] zext_ln108_fu_539_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln108_1_fu_560_p1;
wire   [63:0] zext_ln108_2_fu_582_p1;
wire   [63:0] zext_ln108_3_fu_603_p1;
wire   [63:0] zext_ln108_4_fu_624_p1;
wire   [63:0] zext_ln108_5_fu_645_p1;
wire   [63:0] zext_ln108_6_fu_666_p1;
wire   [63:0] zext_ln108_7_fu_687_p1;
wire   [63:0] zext_ln108_8_fu_708_p1;
wire   [63:0] zext_ln108_9_fu_729_p1;
wire   [63:0] zext_ln99_fu_744_p1;
reg   [6:0] i_fu_82;
wire   [6:0] add_ln106_fu_501_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_3;
reg   [31:0] store_forwarded_fu_86;
wire   [31:0] xor_ln108_5_fu_829_p2;
wire   [31:0] zext_ln104_13_cast_fu_444_p1;
reg   [31:0] store_forwarded90_fu_90;
wire   [31:0] xor_ln108_8_fu_863_p2;
wire   [31:0] zext_ln104_14_cast_fu_448_p1;
reg   [31:0] store_forwarded93_fu_94;
wire   [31:0] xor_ln108_11_fu_897_p2;
wire   [31:0] zext_ln104_15_cast_fu_452_p1;
reg    W_ce2_local;
reg    W_ce1_local;
reg   [3:0] W_address1_local;
reg    W_we0_local;
wire   [31:0] xor_ln108_2_fu_788_p2;
reg    W_ce0_local;
reg    W_4_ce2_local;
reg    W_4_ce1_local;
reg   [3:0] W_4_address1_local;
reg    W_4_we0_local;
reg    W_4_ce0_local;
reg    W_2_ce2_local;
reg    W_2_ce1_local;
reg    W_2_we0_local;
reg    W_2_ce0_local;
reg    W_6_ce2_local;
reg    W_6_ce1_local;
reg    W_6_we0_local;
reg    W_6_ce0_local;
reg    W_1_ce2_local;
reg    W_1_ce1_local;
reg   [3:0] W_1_address1_local;
reg    W_1_we0_local;
reg    W_1_ce0_local;
reg    W_5_ce2_local;
reg    W_5_ce1_local;
reg   [3:0] W_5_address1_local;
reg    W_5_we0_local;
reg    W_5_ce0_local;
reg    W_3_ce2_local;
reg    W_3_ce1_local;
reg    W_3_we0_local;
reg    W_3_ce0_local;
reg    W_7_ce2_local;
reg    W_7_ce1_local;
reg    W_7_we0_local;
reg    W_7_ce0_local;
wire   [2:0] trunc_ln106_1_fu_485_p1;
wire   [6:0] add_ln108_fu_524_p2;
wire   [3:0] lshr_ln1_fu_529_p4;
wire   [6:0] add_ln108_1_fu_545_p2;
wire   [3:0] lshr_ln108_1_fu_550_p4;
wire   [5:0] trunc_ln106_fu_512_p1;
wire   [5:0] add_ln108_2_fu_566_p2;
wire   [2:0] lshr_ln108_2_fu_572_p4;
wire   [6:0] add_ln108_3_fu_588_p2;
wire   [3:0] lshr_ln108_3_fu_593_p4;
wire   [6:0] add_ln108_4_fu_609_p2;
wire   [3:0] lshr_ln108_4_fu_614_p4;
wire   [6:0] add_ln108_5_fu_630_p2;
wire   [3:0] lshr_ln108_5_fu_635_p4;
wire   [6:0] add_ln108_6_fu_651_p2;
wire   [3:0] lshr_ln108_6_fu_656_p4;
wire   [6:0] add_ln108_7_fu_672_p2;
wire   [3:0] lshr_ln108_7_fu_677_p4;
wire   [6:0] add_ln108_8_fu_693_p2;
wire   [3:0] lshr_ln108_8_fu_698_p4;
wire   [6:0] add_ln108_9_fu_714_p2;
wire   [3:0] lshr_ln108_9_fu_719_p4;
wire   [31:0] select_ln108_1_fu_762_p3;
wire   [31:0] select_ln108_2_fu_769_p3;
wire   [31:0] select_ln108_fu_755_p3;
wire   [31:0] xor_ln108_1_fu_782_p2;
wire   [31:0] xor_ln108_fu_776_p2;
wire   [31:0] select_ln108_4_fu_803_p3;
wire   [31:0] select_ln108_3_fu_796_p3;
wire   [31:0] select_ln108_5_fu_810_p3;
wire   [31:0] xor_ln108_4_fu_823_p2;
wire   [31:0] xor_ln108_3_fu_817_p2;
wire   [31:0] select_ln108_6_fu_837_p3;
wire   [31:0] select_ln108_7_fu_844_p3;
wire   [31:0] xor_ln108_7_fu_857_p2;
wire   [31:0] xor_ln108_6_fu_851_p2;
wire   [31:0] select_ln108_9_fu_878_p3;
wire   [31:0] select_ln108_8_fu_871_p3;
wire   [31:0] xor_ln108_9_fu_891_p2;
wire   [31:0] xor_ln108_10_fu_885_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_346;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 i_fu_82 = 7'd0;
#0 store_forwarded_fu_86 = 32'd0;
#0 store_forwarded90_fu_90 = 32'd0;
#0 store_forwarded93_fu_94 = 32'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln106_fu_479_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_82 <= add_ln106_fu_501_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_82 <= 7'd16;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            store_forwarded90_fu_90 <= zext_ln104_14_cast_fu_448_p1;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            store_forwarded90_fu_90 <= xor_ln108_8_fu_863_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            store_forwarded93_fu_94 <= zext_ln104_15_cast_fu_452_p1;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            store_forwarded93_fu_94 <= xor_ln108_11_fu_897_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            store_forwarded_fu_86 <= zext_ln104_13_cast_fu_444_p1;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            store_forwarded_fu_86 <= xor_ln108_5_fu_829_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        i_3_reg_948 <= ap_sig_allocacmp_i_3;
        icmp_ln108_1_reg_967 <= icmp_ln108_1_fu_489_p2;
        icmp_ln108_1_reg_967_pp0_iter1_reg <= icmp_ln108_1_reg_967;
        icmp_ln108_reg_981 <= icmp_ln108_fu_495_p2;
        icmp_ln108_reg_981_pp0_iter1_reg <= icmp_ln108_reg_981;
        lshr_ln_reg_985 <= {{i_3_reg_948[6:3]}};
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_346)) begin
        if ((icmp_ln108_1_reg_967 == 1'd1)) begin
            W_1_address1_local = zext_ln108_9_fu_729_p1;
        end else if ((icmp_ln108_1_reg_967 == 1'd0)) begin
            W_1_address1_local = zext_ln108_5_fu_645_p1;
        end else begin
            W_1_address1_local = 'bx;
        end
    end else begin
        W_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln108_1_reg_967 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln108_1_reg_967 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce2_local = 1'b1;
    end else begin
        W_1_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln108_reg_981_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_ce1_local = 1'b1;
    end else begin
        W_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_ce2_local = 1'b1;
    end else begin
        W_2_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln108_reg_981_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_2_we0_local = 1'b1;
    end else begin
        W_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce2_local = 1'b1;
    end else begin
        W_3_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln108_reg_981_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_3_we0_local = 1'b1;
    end else begin
        W_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_346)) begin
        if ((icmp_ln108_1_reg_967 == 1'd0)) begin
            W_4_address1_local = zext_ln108_7_fu_687_p1;
        end else if ((icmp_ln108_1_reg_967 == 1'd1)) begin
            W_4_address1_local = zext_ln108_2_fu_582_p1;
        end else begin
            W_4_address1_local = 'bx;
        end
    end else begin
        W_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln108_1_reg_967 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln108_1_reg_967 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_4_ce1_local = 1'b1;
    end else begin
        W_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_ce2_local = 1'b1;
    end else begin
        W_4_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln108_reg_981_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_4_we0_local = 1'b1;
    end else begin
        W_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_346)) begin
        if ((icmp_ln108_1_reg_967 == 1'd0)) begin
            W_5_address1_local = zext_ln108_9_fu_729_p1;
        end else if ((icmp_ln108_1_reg_967 == 1'd1)) begin
            W_5_address1_local = zext_ln108_5_fu_645_p1;
        end else begin
            W_5_address1_local = 'bx;
        end
    end else begin
        W_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln108_1_reg_967 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln108_1_reg_967 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_5_ce1_local = 1'b1;
    end else begin
        W_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_ce2_local = 1'b1;
    end else begin
        W_5_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln108_reg_981_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_5_we0_local = 1'b1;
    end else begin
        W_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce1_local = 1'b1;
    end else begin
        W_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce2_local = 1'b1;
    end else begin
        W_6_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln108_reg_981_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_6_we0_local = 1'b1;
    end else begin
        W_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce1_local = 1'b1;
    end else begin
        W_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce2_local = 1'b1;
    end else begin
        W_7_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln108_reg_981_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_7_we0_local = 1'b1;
    end else begin
        W_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_346)) begin
        if ((icmp_ln108_1_reg_967 == 1'd1)) begin
            W_address1_local = zext_ln108_7_fu_687_p1;
        end else if ((icmp_ln108_1_reg_967 == 1'd0)) begin
            W_address1_local = zext_ln108_2_fu_582_p1;
        end else begin
            W_address1_local = 'bx;
        end
    end else begin
        W_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln108_1_reg_967 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln108_1_reg_967 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce2_local = 1'b1;
    end else begin
        W_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln108_reg_981_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_fu_479_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_3 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_82;
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
assign W_1_address0 = zext_ln99_fu_744_p1;
assign W_1_address1 = W_1_address1_local;
assign W_1_address2 = zext_ln108_3_fu_603_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_1_ce2 = W_1_ce2_local;
assign W_1_d0 = xor_ln108_5_fu_829_p2;
assign W_1_we0 = W_1_we0_local;
assign W_2_address0 = zext_ln99_fu_744_p1;
assign W_2_address1 = zext_ln108_6_fu_666_p1;
assign W_2_address2 = zext_ln108_1_fu_560_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_2_ce2 = W_2_ce2_local;
assign W_2_d0 = xor_ln108_8_fu_863_p2;
assign W_2_we0 = W_2_we0_local;
assign W_3_address0 = zext_ln99_fu_744_p1;
assign W_3_address1 = zext_ln108_8_fu_708_p1;
assign W_3_address2 = zext_ln108_4_fu_624_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_3_ce2 = W_3_ce2_local;
assign W_3_d0 = xor_ln108_11_fu_897_p2;
assign W_3_we0 = W_3_we0_local;
assign W_4_address0 = zext_ln99_fu_744_p1;
assign W_4_address1 = W_4_address1_local;
assign W_4_address2 = zext_ln108_fu_539_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_4_ce1 = W_4_ce1_local;
assign W_4_ce2 = W_4_ce2_local;
assign W_4_d0 = xor_ln108_2_fu_788_p2;
assign W_4_we0 = W_4_we0_local;
assign W_5_address0 = zext_ln99_fu_744_p1;
assign W_5_address1 = W_5_address1_local;
assign W_5_address2 = zext_ln108_3_fu_603_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_5_ce1 = W_5_ce1_local;
assign W_5_ce2 = W_5_ce2_local;
assign W_5_d0 = xor_ln108_5_fu_829_p2;
assign W_5_we0 = W_5_we0_local;
assign W_6_address0 = zext_ln99_fu_744_p1;
assign W_6_address1 = zext_ln108_6_fu_666_p1;
assign W_6_address2 = zext_ln108_1_fu_560_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_6_ce1 = W_6_ce1_local;
assign W_6_ce2 = W_6_ce2_local;
assign W_6_d0 = xor_ln108_8_fu_863_p2;
assign W_6_we0 = W_6_we0_local;
assign W_7_address0 = zext_ln99_fu_744_p1;
assign W_7_address1 = zext_ln108_8_fu_708_p1;
assign W_7_address2 = zext_ln108_4_fu_624_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_7_ce1 = W_7_ce1_local;
assign W_7_ce2 = W_7_ce2_local;
assign W_7_d0 = xor_ln108_11_fu_897_p2;
assign W_7_we0 = W_7_we0_local;
assign W_address0 = zext_ln99_fu_744_p1;
assign W_address1 = W_address1_local;
assign W_address2 = zext_ln108_fu_539_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_ce2 = W_ce2_local;
assign W_d0 = xor_ln108_2_fu_788_p2;
assign W_we0 = W_we0_local;
assign add_ln106_fu_501_p2 = (ap_sig_allocacmp_i_3 + 7'd4);
assign add_ln108_1_fu_545_p2 = ($signed(i_3_reg_948) + $signed(7'd114));
assign add_ln108_2_fu_566_p2 = ($signed(trunc_ln106_fu_512_p1) + $signed(6'd48));
assign add_ln108_3_fu_588_p2 = ($signed(i_3_reg_948) + $signed(7'd121));
assign add_ln108_4_fu_609_p2 = ($signed(i_3_reg_948) + $signed(7'd115));
assign add_ln108_5_fu_630_p2 = ($signed(i_3_reg_948) + $signed(7'd113));
assign add_ln108_6_fu_651_p2 = ($signed(i_3_reg_948) + $signed(7'd122));
assign add_ln108_7_fu_672_p2 = ($signed(i_3_reg_948) + $signed(7'd116));
assign add_ln108_8_fu_693_p2 = ($signed(i_3_reg_948) + $signed(7'd123));
assign add_ln108_9_fu_714_p2 = ($signed(i_3_reg_948) + $signed(7'd117));
assign add_ln108_fu_524_p2 = ($signed(i_3_reg_948) + $signed(7'd120));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_346 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_479_p2 = ((ap_sig_allocacmp_i_3 < 7'd80) ? 1'b1 : 1'b0);
assign icmp_ln108_1_fu_489_p2 = ((trunc_ln106_1_fu_485_p1 != 3'd0) ? 1'b1 : 1'b0);
assign icmp_ln108_fu_495_p2 = ((trunc_ln106_1_fu_485_p1 == 3'd0) ? 1'b1 : 1'b0);
assign lshr_ln108_1_fu_550_p4 = {{add_ln108_1_fu_545_p2[6:3]}};
assign lshr_ln108_2_fu_572_p4 = {{add_ln108_2_fu_566_p2[5:3]}};
assign lshr_ln108_3_fu_593_p4 = {{add_ln108_3_fu_588_p2[6:3]}};
assign lshr_ln108_4_fu_614_p4 = {{add_ln108_4_fu_609_p2[6:3]}};
assign lshr_ln108_5_fu_635_p4 = {{add_ln108_5_fu_630_p2[6:3]}};
assign lshr_ln108_6_fu_656_p4 = {{add_ln108_6_fu_651_p2[6:3]}};
assign lshr_ln108_7_fu_677_p4 = {{add_ln108_7_fu_672_p2[6:3]}};
assign lshr_ln108_8_fu_698_p4 = {{add_ln108_8_fu_693_p2[6:3]}};
assign lshr_ln108_9_fu_719_p4 = {{add_ln108_9_fu_714_p2[6:3]}};
assign lshr_ln1_fu_529_p4 = {{add_ln108_fu_524_p2[6:3]}};
assign select_ln108_1_fu_762_p3 = ((icmp_ln108_1_reg_967_pp0_iter1_reg[0:0] == 1'b1) ? W_6_q2 : W_2_q2);
assign select_ln108_2_fu_769_p3 = ((icmp_ln108_1_reg_967_pp0_iter1_reg[0:0] == 1'b1) ? W_4_q1 : W_q1);
assign select_ln108_3_fu_796_p3 = ((icmp_ln108_1_reg_967_pp0_iter1_reg[0:0] == 1'b1) ? W_5_q2 : W_1_q2);
assign select_ln108_4_fu_803_p3 = ((icmp_ln108_1_reg_967_pp0_iter1_reg[0:0] == 1'b1) ? W_7_q2 : W_3_q2);
assign select_ln108_5_fu_810_p3 = ((icmp_ln108_1_reg_967_pp0_iter1_reg[0:0] == 1'b1) ? W_5_q1 : W_1_q1);
assign select_ln108_6_fu_837_p3 = ((icmp_ln108_1_reg_967_pp0_iter1_reg[0:0] == 1'b1) ? W_6_q1 : W_2_q1);
assign select_ln108_7_fu_844_p3 = ((icmp_ln108_1_reg_967_pp0_iter1_reg[0:0] == 1'b1) ? W_q1 : W_4_q1);
assign select_ln108_8_fu_871_p3 = ((icmp_ln108_1_reg_967_pp0_iter1_reg[0:0] == 1'b1) ? W_7_q1 : W_3_q1);
assign select_ln108_9_fu_878_p3 = ((icmp_ln108_1_reg_967_pp0_iter1_reg[0:0] == 1'b1) ? W_1_q1 : W_5_q1);
assign select_ln108_fu_755_p3 = ((icmp_ln108_1_reg_967_pp0_iter1_reg[0:0] == 1'b1) ? W_4_q2 : W_q2);
assign trunc_ln106_1_fu_485_p1 = ap_sig_allocacmp_i_3[2:0];
assign trunc_ln106_fu_512_p1 = i_3_reg_948[5:0];
assign xor_ln108_10_fu_885_p2 = (select_ln108_9_fu_878_p3 ^ select_ln108_4_fu_803_p3);
assign xor_ln108_11_fu_897_p2 = (xor_ln108_9_fu_891_p2 ^ xor_ln108_10_fu_885_p2);
assign xor_ln108_1_fu_782_p2 = (select_ln108_fu_755_p3 ^ select_ln108_2_fu_769_p3);
assign xor_ln108_2_fu_788_p2 = (xor_ln108_fu_776_p2 ^ xor_ln108_1_fu_782_p2);
assign xor_ln108_3_fu_817_p2 = (store_forwarded90_fu_90 ^ select_ln108_4_fu_803_p3);
assign xor_ln108_4_fu_823_p2 = (select_ln108_5_fu_810_p3 ^ select_ln108_3_fu_796_p3);
assign xor_ln108_5_fu_829_p2 = (xor_ln108_4_fu_823_p2 ^ xor_ln108_3_fu_817_p2);
assign xor_ln108_6_fu_851_p2 = (store_forwarded93_fu_94 ^ select_ln108_6_fu_837_p3);
assign xor_ln108_7_fu_857_p2 = (select_ln108_7_fu_844_p3 ^ select_ln108_1_fu_762_p3);
assign xor_ln108_8_fu_863_p2 = (xor_ln108_7_fu_857_p2 ^ xor_ln108_6_fu_851_p2);
assign xor_ln108_9_fu_891_p2 = (xor_ln108_2_fu_788_p2 ^ select_ln108_8_fu_871_p3);
assign xor_ln108_fu_776_p2 = (store_forwarded_fu_86 ^ select_ln108_1_fu_762_p3);
assign zext_ln104_13_cast_fu_444_p1 = zext_ln104_13;
assign zext_ln104_14_cast_fu_448_p1 = zext_ln104_14;
assign zext_ln104_15_cast_fu_452_p1 = zext_ln104_15;
assign zext_ln108_1_fu_560_p1 = lshr_ln108_1_fu_550_p4;
assign zext_ln108_2_fu_582_p1 = lshr_ln108_2_fu_572_p4;
assign zext_ln108_3_fu_603_p1 = lshr_ln108_3_fu_593_p4;
assign zext_ln108_4_fu_624_p1 = lshr_ln108_4_fu_614_p4;
assign zext_ln108_5_fu_645_p1 = lshr_ln108_5_fu_635_p4;
assign zext_ln108_6_fu_666_p1 = lshr_ln108_6_fu_656_p4;
assign zext_ln108_7_fu_687_p1 = lshr_ln108_7_fu_677_p4;
assign zext_ln108_8_fu_708_p1 = lshr_ln108_8_fu_698_p4;
assign zext_ln108_9_fu_729_p1 = lshr_ln108_9_fu_719_p4;
assign zext_ln108_fu_539_p1 = lshr_ln1_fu_529_p4;
assign zext_ln99_fu_744_p1 = lshr_ln_reg_985;
endmodule 