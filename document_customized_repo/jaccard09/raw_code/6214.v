module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sha_info_data_load_8,sha_info_data_load_9,sha_info_data_load_10,sha_info_data_load_11,sha_info_data_load_12,sha_info_data_load_13,sha_info_data_load_14,sha_info_data_load_15,W_7_address0,W_7_ce0,W_7_we0,W_7_d0,W_7_address1,W_7_ce1,W_7_q1,W_6_address0,W_6_ce0,W_6_we0,W_6_d0,W_6_address1,W_6_ce1,W_6_q1,W_5_address0,W_5_ce0,W_5_we0,W_5_d0,W_5_address1,W_5_ce1,W_5_q1,W_4_address0,W_4_ce0,W_4_we0,W_4_d0,W_4_address1,W_4_ce1,W_4_q1,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_address1,W_1_ce1,W_1_q1,W_3_address0,W_3_ce0,W_3_we0,W_3_d0,W_3_address1,W_3_ce1,W_3_q1,W_address0,W_ce0,W_we0,W_d0,W_address1,W_ce1,W_q1,W_2_address0,W_2_ce0,W_2_we0,W_2_d0,W_2_address1,W_2_ce1,W_2_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] sha_info_data_load_8;
input  [31:0] sha_info_data_load_9;
input  [31:0] sha_info_data_load_10;
input  [31:0] sha_info_data_load_11;
input  [31:0] sha_info_data_load_12;
input  [31:0] sha_info_data_load_13;
input  [31:0] sha_info_data_load_14;
input  [31:0] sha_info_data_load_15;
output  [3:0] W_7_address0;
output   W_7_ce0;
output   W_7_we0;
output  [31:0] W_7_d0;
output  [3:0] W_7_address1;
output   W_7_ce1;
input  [31:0] W_7_q1;
output  [3:0] W_6_address0;
output   W_6_ce0;
output   W_6_we0;
output  [31:0] W_6_d0;
output  [3:0] W_6_address1;
output   W_6_ce1;
input  [31:0] W_6_q1;
output  [3:0] W_5_address0;
output   W_5_ce0;
output   W_5_we0;
output  [31:0] W_5_d0;
output  [3:0] W_5_address1;
output   W_5_ce1;
input  [31:0] W_5_q1;
output  [3:0] W_4_address0;
output   W_4_ce0;
output   W_4_we0;
output  [31:0] W_4_d0;
output  [3:0] W_4_address1;
output   W_4_ce1;
input  [31:0] W_4_q1;
output  [3:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
output  [3:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [3:0] W_3_address0;
output   W_3_ce0;
output   W_3_we0;
output  [31:0] W_3_d0;
output  [3:0] W_3_address1;
output   W_3_ce1;
input  [31:0] W_3_q1;
output  [3:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
output  [3:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
output  [3:0] W_2_address0;
output   W_2_ce0;
output   W_2_we0;
output  [31:0] W_2_d0;
output  [3:0] W_2_address1;
output   W_2_ce1;
input  [31:0] W_2_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln106_fu_418_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [3:0] lshr_ln_reg_910;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln108_fu_454_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln108_1_fu_475_p1;
wire   [63:0] zext_ln108_2_fu_496_p1;
wire   [63:0] zext_ln108_3_fu_517_p1;
wire   [63:0] zext_ln108_4_fu_538_p1;
wire   [63:0] zext_ln108_5_fu_559_p1;
wire   [63:0] zext_ln108_6_fu_580_p1;
wire   [63:0] zext_ln108_7_fu_601_p1;
wire   [63:0] zext_ln99_fu_641_p1;
reg   [6:0] i_fu_86;
wire   [6:0] add_ln106_fu_606_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_3;
reg   [31:0] store_forwarded_fu_90;
wire   [31:0] xor_ln108_23_fu_797_p2;
reg   [31:0] store_forwarded187_fu_94;
wire   [31:0] xor_ln108_17_fu_759_p2;
reg   [31:0] store_forwarded190_fu_98;
wire   [31:0] xor_ln108_20_fu_778_p2;
reg   [31:0] store_forwarded193_fu_102;
wire   [31:0] xor_ln108_14_fu_740_p2;
reg   [31:0] store_forwarded196_fu_106;
wire   [31:0] xor_ln108_11_fu_721_p2;
reg   [31:0] store_forwarded199_fu_110;
wire   [31:0] xor_ln108_8_fu_702_p2;
reg   [31:0] store_forwarded202_fu_114;
wire   [31:0] xor_ln108_5_fu_683_p2;
reg   [31:0] store_forwarded205_fu_118;
wire   [31:0] xor_ln108_2_fu_664_p2;
reg    W_2_ce1_local;
reg    W_2_we0_local;
reg    W_2_ce0_local;
reg    W_ce1_local;
reg    W_we0_local;
reg    W_ce0_local;
reg    W_3_ce1_local;
reg    W_3_we0_local;
reg    W_3_ce0_local;
reg    W_1_ce1_local;
reg    W_1_we0_local;
reg    W_1_ce0_local;
reg    W_4_ce1_local;
reg    W_4_we0_local;
reg    W_4_ce0_local;
reg    W_5_ce1_local;
reg    W_5_we0_local;
reg    W_5_ce0_local;
reg    W_6_ce1_local;
reg    W_6_we0_local;
reg    W_6_ce0_local;
reg    W_7_ce1_local;
reg    W_7_we0_local;
reg    W_7_ce0_local;
wire   [6:0] add_ln108_fu_438_p2;
wire   [3:0] lshr_ln1_fu_444_p4;
wire   [5:0] trunc_ln106_fu_424_p1;
wire   [5:0] add_ln108_1_fu_459_p2;
wire   [2:0] lshr_ln108_1_fu_465_p4;
wire   [6:0] add_ln108_2_fu_480_p2;
wire   [3:0] lshr_ln108_2_fu_486_p4;
wire   [6:0] add_ln108_3_fu_501_p2;
wire   [3:0] lshr_ln108_3_fu_507_p4;
wire   [6:0] add_ln108_4_fu_522_p2;
wire   [3:0] lshr_ln108_4_fu_528_p4;
wire   [6:0] add_ln108_5_fu_543_p2;
wire   [3:0] lshr_ln108_5_fu_549_p4;
wire   [6:0] add_ln108_6_fu_564_p2;
wire   [3:0] lshr_ln108_6_fu_570_p4;
wire   [6:0] add_ln108_7_fu_585_p2;
wire   [3:0] lshr_ln108_7_fu_591_p4;
wire   [31:0] xor_ln108_fu_652_p2;
wire   [31:0] xor_ln108_1_fu_658_p2;
wire   [31:0] xor_ln108_3_fu_671_p2;
wire   [31:0] xor_ln108_4_fu_677_p2;
wire   [31:0] xor_ln108_6_fu_690_p2;
wire   [31:0] xor_ln108_7_fu_696_p2;
wire   [31:0] xor_ln108_9_fu_709_p2;
wire   [31:0] xor_ln108_10_fu_715_p2;
wire   [31:0] xor_ln108_12_fu_728_p2;
wire   [31:0] xor_ln108_13_fu_734_p2;
wire   [31:0] xor_ln108_15_fu_747_p2;
wire   [31:0] xor_ln108_16_fu_753_p2;
wire   [31:0] xor_ln108_18_fu_766_p2;
wire   [31:0] xor_ln108_19_fu_772_p2;
wire   [31:0] xor_ln108_21_fu_785_p2;
wire   [31:0] xor_ln108_22_fu_791_p2;
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
#0 i_fu_86 = 7'd0;
#0 store_forwarded_fu_90 = 32'd0;
#0 store_forwarded187_fu_94 = 32'd0;
#0 store_forwarded190_fu_98 = 32'd0;
#0 store_forwarded193_fu_102 = 32'd0;
#0 store_forwarded196_fu_106 = 32'd0;
#0 store_forwarded199_fu_110 = 32'd0;
#0 store_forwarded202_fu_114 = 32'd0;
#0 store_forwarded205_fu_118 = 32'd0;
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
        if (((icmp_ln106_fu_418_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_86 <= add_ln106_fu_606_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_86 <= 7'd16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded187_fu_94 <= sha_info_data_load_14;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded187_fu_94 <= xor_ln108_17_fu_759_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded190_fu_98 <= sha_info_data_load_13;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded190_fu_98 <= xor_ln108_20_fu_778_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded193_fu_102 <= sha_info_data_load_12;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded193_fu_102 <= xor_ln108_14_fu_740_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded196_fu_106 <= sha_info_data_load_11;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded196_fu_106 <= xor_ln108_11_fu_721_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded199_fu_110 <= sha_info_data_load_10;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded199_fu_110 <= xor_ln108_8_fu_702_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded202_fu_114 <= sha_info_data_load_9;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded202_fu_114 <= xor_ln108_5_fu_683_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded205_fu_118 <= sha_info_data_load_8;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded205_fu_118 <= xor_ln108_2_fu_664_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            store_forwarded_fu_90 <= sha_info_data_load_15;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            store_forwarded_fu_90 <= xor_ln108_23_fu_797_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_reg_910 <= {{ap_sig_allocacmp_i_3[6:3]}};
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_ce1_local = 1'b1;
    end else begin
        W_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_we0_local = 1'b1;
    end else begin
        W_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_we0_local = 1'b1;
    end else begin
        W_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_ce1_local = 1'b1;
    end else begin
        W_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_we0_local = 1'b1;
    end else begin
        W_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_ce1_local = 1'b1;
    end else begin
        W_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_we0_local = 1'b1;
    end else begin
        W_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce1_local = 1'b1;
    end else begin
        W_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_we0_local = 1'b1;
    end else begin
        W_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce1_local = 1'b1;
    end else begin
        W_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_we0_local = 1'b1;
    end else begin
        W_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_fu_418_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_3 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_86;
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
assign W_1_address0 = zext_ln99_fu_641_p1;
assign W_1_address1 = zext_ln108_3_fu_517_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_1_d0 = xor_ln108_5_fu_683_p2;
assign W_1_we0 = W_1_we0_local;
assign W_2_address0 = zext_ln99_fu_641_p1;
assign W_2_address1 = zext_ln108_fu_454_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_2_d0 = xor_ln108_8_fu_702_p2;
assign W_2_we0 = W_2_we0_local;
assign W_3_address0 = zext_ln99_fu_641_p1;
assign W_3_address1 = zext_ln108_2_fu_496_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_3_d0 = xor_ln108_11_fu_721_p2;
assign W_3_we0 = W_3_we0_local;
assign W_4_address0 = zext_ln99_fu_641_p1;
assign W_4_address1 = zext_ln108_4_fu_538_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_4_ce1 = W_4_ce1_local;
assign W_4_d0 = xor_ln108_14_fu_740_p2;
assign W_4_we0 = W_4_we0_local;
assign W_5_address0 = zext_ln99_fu_641_p1;
assign W_5_address1 = zext_ln108_5_fu_559_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_5_ce1 = W_5_ce1_local;
assign W_5_d0 = xor_ln108_20_fu_778_p2;
assign W_5_we0 = W_5_we0_local;
assign W_6_address0 = zext_ln99_fu_641_p1;
assign W_6_address1 = zext_ln108_6_fu_580_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_6_ce1 = W_6_ce1_local;
assign W_6_d0 = xor_ln108_17_fu_759_p2;
assign W_6_we0 = W_6_we0_local;
assign W_7_address0 = zext_ln99_fu_641_p1;
assign W_7_address1 = zext_ln108_7_fu_601_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_7_ce1 = W_7_ce1_local;
assign W_7_d0 = xor_ln108_23_fu_797_p2;
assign W_7_we0 = W_7_we0_local;
assign W_address0 = zext_ln99_fu_641_p1;
assign W_address1 = zext_ln108_1_fu_475_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_d0 = xor_ln108_2_fu_664_p2;
assign W_we0 = W_we0_local;
assign add_ln106_fu_606_p2 = (ap_sig_allocacmp_i_3 + 7'd8);
assign add_ln108_1_fu_459_p2 = ($signed(trunc_ln106_fu_424_p1) + $signed(6'd48));
assign add_ln108_2_fu_480_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd115));
assign add_ln108_3_fu_501_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd113));
assign add_ln108_4_fu_522_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd116));
assign add_ln108_5_fu_543_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd117));
assign add_ln108_6_fu_564_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd118));
assign add_ln108_7_fu_585_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd119));
assign add_ln108_fu_438_p2 = ($signed(ap_sig_allocacmp_i_3) + $signed(7'd114));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_418_p2 = ((ap_sig_allocacmp_i_3 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln108_1_fu_465_p4 = {{add_ln108_1_fu_459_p2[5:3]}};
assign lshr_ln108_2_fu_486_p4 = {{add_ln108_2_fu_480_p2[6:3]}};
assign lshr_ln108_3_fu_507_p4 = {{add_ln108_3_fu_501_p2[6:3]}};
assign lshr_ln108_4_fu_528_p4 = {{add_ln108_4_fu_522_p2[6:3]}};
assign lshr_ln108_5_fu_549_p4 = {{add_ln108_5_fu_543_p2[6:3]}};
assign lshr_ln108_6_fu_570_p4 = {{add_ln108_6_fu_564_p2[6:3]}};
assign lshr_ln108_7_fu_591_p4 = {{add_ln108_7_fu_585_p2[6:3]}};
assign lshr_ln1_fu_444_p4 = {{add_ln108_fu_438_p2[6:3]}};
assign trunc_ln106_fu_424_p1 = ap_sig_allocacmp_i_3[5:0];
assign xor_ln108_10_fu_715_p2 = (xor_ln108_9_fu_709_p2 ^ W_3_q1);
assign xor_ln108_11_fu_721_p2 = (xor_ln108_10_fu_715_p2 ^ store_forwarded196_fu_106);
assign xor_ln108_12_fu_728_p2 = (xor_ln108_5_fu_683_p2 ^ W_6_q1);
assign xor_ln108_13_fu_734_p2 = (xor_ln108_12_fu_728_p2 ^ W_4_q1);
assign xor_ln108_14_fu_740_p2 = (xor_ln108_13_fu_734_p2 ^ store_forwarded193_fu_102);
assign xor_ln108_15_fu_747_p2 = (store_forwarded205_fu_118 ^ W_6_q1);
assign xor_ln108_16_fu_753_p2 = (xor_ln108_15_fu_747_p2 ^ xor_ln108_11_fu_721_p2);
assign xor_ln108_17_fu_759_p2 = (xor_ln108_16_fu_753_p2 ^ store_forwarded187_fu_94);
assign xor_ln108_18_fu_766_p2 = (xor_ln108_8_fu_702_p2 ^ W_7_q1);
assign xor_ln108_19_fu_772_p2 = (xor_ln108_18_fu_766_p2 ^ W_5_q1);
assign xor_ln108_1_fu_658_p2 = (xor_ln108_fu_652_p2 ^ store_forwarded190_fu_98);
assign xor_ln108_20_fu_778_p2 = (xor_ln108_19_fu_772_p2 ^ store_forwarded190_fu_98);
assign xor_ln108_21_fu_785_p2 = (store_forwarded202_fu_114 ^ W_7_q1);
assign xor_ln108_22_fu_791_p2 = (xor_ln108_21_fu_785_p2 ^ xor_ln108_14_fu_740_p2);
assign xor_ln108_23_fu_797_p2 = (xor_ln108_22_fu_791_p2 ^ store_forwarded_fu_90);
assign xor_ln108_2_fu_664_p2 = (xor_ln108_1_fu_658_p2 ^ store_forwarded205_fu_118);
assign xor_ln108_3_fu_671_p2 = (W_3_q1 ^ W_1_q1);
assign xor_ln108_4_fu_677_p2 = (xor_ln108_3_fu_671_p2 ^ store_forwarded187_fu_94);
assign xor_ln108_5_fu_683_p2 = (xor_ln108_4_fu_677_p2 ^ store_forwarded202_fu_114);
assign xor_ln108_6_fu_690_p2 = (store_forwarded_fu_90 ^ W_4_q1);
assign xor_ln108_7_fu_696_p2 = (xor_ln108_6_fu_690_p2 ^ W_2_q1);
assign xor_ln108_8_fu_702_p2 = (xor_ln108_7_fu_696_p2 ^ store_forwarded199_fu_110);
assign xor_ln108_9_fu_709_p2 = (xor_ln108_2_fu_664_p2 ^ W_5_q1);
assign xor_ln108_fu_652_p2 = (W_q1 ^ W_2_q1);
assign zext_ln108_1_fu_475_p1 = lshr_ln108_1_fu_465_p4;
assign zext_ln108_2_fu_496_p1 = lshr_ln108_2_fu_486_p4;
assign zext_ln108_3_fu_517_p1 = lshr_ln108_3_fu_507_p4;
assign zext_ln108_4_fu_538_p1 = lshr_ln108_4_fu_528_p4;
assign zext_ln108_5_fu_559_p1 = lshr_ln108_5_fu_549_p4;
assign zext_ln108_6_fu_580_p1 = lshr_ln108_6_fu_570_p4;
assign zext_ln108_7_fu_601_p1 = lshr_ln108_7_fu_591_p4;
assign zext_ln108_fu_454_p1 = lshr_ln1_fu_444_p4;
assign zext_ln99_fu_641_p1 = lshr_ln_reg_910;
endmodule 