module needwun_needwun_Pipeline_init_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_7_address0,M_7_ce0,M_7_we0,M_7_d0,M_7_address1,M_7_ce1,M_7_we1,M_7_d1,M_6_address0,M_6_ce0,M_6_we0,M_6_d0,M_6_address1,M_6_ce1,M_6_we1,M_6_d1,M_5_address0,M_5_ce0,M_5_we0,M_5_d0,M_5_address1,M_5_ce1,M_5_we1,M_5_d1,M_4_address0,M_4_ce0,M_4_we0,M_4_d0,M_4_address1,M_4_ce1,M_4_we1,M_4_d1,M_3_address0,M_3_ce0,M_3_we0,M_3_d0,M_3_address1,M_3_ce1,M_3_we1,M_3_d1,M_2_address0,M_2_ce0,M_2_we0,M_2_d0,M_2_address1,M_2_ce1,M_2_we1,M_2_d1,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_address1,M_1_ce1,M_1_we1,M_1_d1,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_address1,M_0_ce1,M_0_we1,M_0_d1); 
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
wire   [0:0] icmp_ln23_fu_414_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [7:0] b_idx_26_reg_1155;
wire    ap_block_pp0_stage0_11001;
wire   [14:0] add_ln24_14_fu_432_p2;
reg   [14:0] add_ln24_14_reg_1168;
wire   [63:0] zext_ln24_fu_380_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln24_2_fu_448_p1;
wire   [63:0] zext_ln24_16_fu_492_p1;
wire   [63:0] zext_ln24_4_fu_534_p1;
wire   [63:0] zext_ln24_6_fu_586_p1;
wire   [63:0] zext_ln24_8_fu_629_p1;
wire   [63:0] zext_ln24_10_fu_681_p1;
wire   [63:0] zext_ln24_12_fu_735_p1;
wire   [63:0] zext_ln24_14_fu_778_p1;
wire   [63:0] zext_ln24_17_fu_821_p1;
wire   [63:0] zext_ln24_19_fu_886_p1;
wire   [63:0] zext_ln24_21_fu_940_p1;
wire   [63:0] zext_ln24_23_fu_987_p1;
wire   [63:0] zext_ln24_25_fu_1030_p1;
wire   [63:0] zext_ln24_27_fu_1077_p1;
wire   [63:0] zext_ln24_29_fu_1120_p1;
reg   [7:0] b_idx_fu_148;
wire   [7:0] add_ln23_fu_508_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_b_idx_26;
reg    M_0_we1_local;
wire  signed [31:0] sext_ln24_fu_391_p1;
reg    M_0_ce1_local;
reg    M_0_we0_local;
wire  signed [31:0] sext_ln24_8_fu_503_p1;
reg    M_0_ce0_local;
reg    M_1_we1_local;
wire  signed [31:0] sext_ln24_1_fu_481_p1;
reg    M_1_ce1_local;
reg    M_1_we0_local;
wire  signed [31:0] sext_ln24_9_fu_866_p1;
reg    M_1_ce0_local;
reg    M_2_we1_local;
wire  signed [31:0] sext_ln24_2_fu_566_p1;
reg    M_2_ce1_local;
reg    M_2_we0_local;
wire  signed [31:0] sext_ln24_10_fu_920_p1;
reg    M_2_ce0_local;
reg    M_3_we1_local;
wire  signed [31:0] sext_ln24_3_fu_609_p1;
reg    M_3_ce1_local;
reg    M_3_we0_local;
wire  signed [31:0] sext_ln24_11_fu_967_p1;
reg    M_3_ce0_local;
reg    M_4_we1_local;
wire  signed [31:0] sext_ln24_4_fu_661_p1;
reg    M_4_ce1_local;
reg    M_4_we0_local;
wire  signed [31:0] sext_ln24_12_fu_1010_p1;
reg    M_4_ce0_local;
reg    M_5_we1_local;
wire  signed [31:0] sext_ln24_5_fu_715_p1;
reg    M_5_ce1_local;
reg    M_5_we0_local;
wire  signed [31:0] sext_ln24_13_fu_1057_p1;
reg    M_5_ce0_local;
reg    M_6_we1_local;
wire  signed [31:0] sext_ln24_6_fu_758_p1;
reg    M_6_ce1_local;
reg    M_6_we0_local;
wire  signed [31:0] sext_ln24_14_fu_1100_p1;
reg    M_6_ce0_local;
reg    M_7_we1_local;
wire  signed [31:0] sext_ln24_7_fu_801_p1;
reg    M_7_ce1_local;
reg    M_7_we0_local;
wire  signed [31:0] sext_ln24_15_fu_1143_p1;
reg    M_7_ce0_local;
wire   [4:0] lshr_ln1_fu_360_p4;
wire   [11:0] tmp_fu_370_p4;
wire   [7:0] sub_ln24_fu_385_p2;
wire   [6:0] tmp_s_fu_396_p4;
wire   [7:0] or_ln2_fu_406_p3;
wire   [14:0] p_shl_fu_424_p3;
wire   [14:0] zext_ln24_1_fu_420_p1;
wire   [11:0] lshr_ln24_1_fu_438_p4;
wire   [5:0] tmp_42_fu_453_p4;
wire   [6:0] or_ln24_s_fu_463_p3;
wire   [7:0] zext_ln24_3_fu_471_p1;
wire   [7:0] sub_ln24_1_fu_475_p2;
wire   [11:0] add_ln24_6_fu_486_p2;
wire   [7:0] sub_ln24_8_fu_497_p2;
wire   [14:0] add_ln24_fu_519_p2;
wire   [11:0] lshr_ln24_2_fu_524_p4;
wire   [4:0] tmp_43_fu_539_p4;
wire   [6:0] or_ln3_fu_548_p3;
wire   [7:0] zext_ln24_5_fu_556_p1;
wire   [7:0] sub_ln24_2_fu_560_p2;
wire   [14:0] add_ln24_1_fu_571_p2;
wire   [11:0] lshr_ln24_3_fu_576_p4;
wire   [6:0] or_ln24_1_fu_591_p3;
wire   [7:0] zext_ln24_7_fu_599_p1;
wire   [7:0] sub_ln24_3_fu_603_p2;
wire   [14:0] add_ln24_2_fu_614_p2;
wire   [11:0] lshr_ln24_4_fu_619_p4;
wire   [3:0] tmp_44_fu_634_p4;
wire   [6:0] or_ln24_2_fu_643_p3;
wire   [7:0] zext_ln24_9_fu_651_p1;
wire   [7:0] sub_ln24_4_fu_655_p2;
wire   [14:0] add_ln24_3_fu_666_p2;
wire   [11:0] lshr_ln24_5_fu_671_p4;
wire   [0:0] tmp_31_fu_686_p3;
wire   [6:0] or_ln24_3_fu_693_p5;
wire   [7:0] zext_ln24_11_fu_705_p1;
wire   [7:0] sub_ln24_5_fu_709_p2;
wire   [14:0] add_ln24_4_fu_720_p2;
wire   [11:0] lshr_ln24_6_fu_725_p4;
wire   [6:0] or_ln24_4_fu_740_p3;
wire   [7:0] zext_ln24_13_fu_748_p1;
wire   [7:0] sub_ln24_6_fu_752_p2;
wire   [14:0] add_ln24_5_fu_763_p2;
wire   [11:0] lshr_ln24_7_fu_768_p4;
wire   [6:0] or_ln24_5_fu_783_p3;
wire   [7:0] zext_ln24_15_fu_791_p1;
wire   [7:0] sub_ln24_7_fu_795_p2;
wire   [14:0] add_ln24_7_fu_806_p2;
wire   [11:0] lshr_ln24_8_fu_811_p4;
wire   [2:0] tmp_45_fu_826_p4;
wire   [1:0] tmp_46_fu_835_p4;
wire   [6:0] or_ln24_6_fu_844_p5;
wire   [7:0] zext_ln24_18_fu_856_p1;
wire   [7:0] sub_ln24_9_fu_860_p2;
wire   [14:0] add_ln24_8_fu_871_p2;
wire   [11:0] lshr_ln24_9_fu_876_p4;
wire   [0:0] tmp_32_fu_891_p3;
wire   [6:0] or_ln24_7_fu_898_p5;
wire   [7:0] zext_ln24_20_fu_910_p1;
wire   [7:0] sub_ln24_10_fu_914_p2;
wire   [14:0] add_ln24_9_fu_925_p2;
wire   [11:0] lshr_ln24_s_fu_930_p4;
wire   [6:0] or_ln24_8_fu_945_p5;
wire   [7:0] zext_ln24_22_fu_957_p1;
wire   [7:0] sub_ln24_11_fu_961_p2;
wire   [14:0] add_ln24_10_fu_972_p2;
wire   [11:0] lshr_ln24_10_fu_977_p4;
wire   [6:0] or_ln24_9_fu_992_p3;
wire   [7:0] zext_ln24_24_fu_1000_p1;
wire   [7:0] sub_ln24_12_fu_1004_p2;
wire   [14:0] add_ln24_11_fu_1015_p2;
wire   [11:0] lshr_ln24_11_fu_1020_p4;
wire   [6:0] or_ln24_10_fu_1035_p5;
wire   [7:0] zext_ln24_26_fu_1047_p1;
wire   [7:0] sub_ln24_13_fu_1051_p2;
wire   [14:0] add_ln24_12_fu_1062_p2;
wire   [11:0] lshr_ln24_12_fu_1067_p4;
wire   [6:0] or_ln24_11_fu_1082_p3;
wire   [7:0] zext_ln24_28_fu_1090_p1;
wire   [7:0] sub_ln24_14_fu_1094_p2;
wire   [14:0] add_ln24_13_fu_1105_p2;
wire   [11:0] lshr_ln24_13_fu_1110_p4;
wire   [6:0] or_ln24_12_fu_1125_p3;
wire   [7:0] zext_ln24_30_fu_1133_p1;
wire   [7:0] sub_ln24_15_fu_1137_p2;
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
#0 b_idx_fu_148 = 8'd0;
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
        if (((icmp_ln23_fu_414_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            b_idx_fu_148 <= add_ln23_fu_508_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            b_idx_fu_148 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln24_14_reg_1168[14 : 1] <= add_ln24_14_fu_432_p2[14 : 1];
        b_idx_26_reg_1155 <= ap_sig_allocacmp_b_idx_26;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln23_fu_414_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln23_fu_414_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln23_fu_414_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_b_idx_26 = 8'd0;
    end else begin
        ap_sig_allocacmp_b_idx_26 = b_idx_fu_148;
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
assign M_0_address0 = zext_ln24_16_fu_492_p1;
assign M_0_address1 = zext_ln24_fu_380_p1;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_ce1 = M_0_ce1_local;
assign M_0_d0 = sext_ln24_8_fu_503_p1;
assign M_0_d1 = sext_ln24_fu_391_p1;
assign M_0_we0 = M_0_we0_local;
assign M_0_we1 = M_0_we1_local;
assign M_1_address0 = zext_ln24_17_fu_821_p1;
assign M_1_address1 = zext_ln24_2_fu_448_p1;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_ce1 = M_1_ce1_local;
assign M_1_d0 = sext_ln24_9_fu_866_p1;
assign M_1_d1 = sext_ln24_1_fu_481_p1;
assign M_1_we0 = M_1_we0_local;
assign M_1_we1 = M_1_we1_local;
assign M_2_address0 = zext_ln24_19_fu_886_p1;
assign M_2_address1 = zext_ln24_4_fu_534_p1;
assign M_2_ce0 = M_2_ce0_local;
assign M_2_ce1 = M_2_ce1_local;
assign M_2_d0 = sext_ln24_10_fu_920_p1;
assign M_2_d1 = sext_ln24_2_fu_566_p1;
assign M_2_we0 = M_2_we0_local;
assign M_2_we1 = M_2_we1_local;
assign M_3_address0 = zext_ln24_21_fu_940_p1;
assign M_3_address1 = zext_ln24_6_fu_586_p1;
assign M_3_ce0 = M_3_ce0_local;
assign M_3_ce1 = M_3_ce1_local;
assign M_3_d0 = sext_ln24_11_fu_967_p1;
assign M_3_d1 = sext_ln24_3_fu_609_p1;
assign M_3_we0 = M_3_we0_local;
assign M_3_we1 = M_3_we1_local;
assign M_4_address0 = zext_ln24_23_fu_987_p1;
assign M_4_address1 = zext_ln24_8_fu_629_p1;
assign M_4_ce0 = M_4_ce0_local;
assign M_4_ce1 = M_4_ce1_local;
assign M_4_d0 = sext_ln24_12_fu_1010_p1;
assign M_4_d1 = sext_ln24_4_fu_661_p1;
assign M_4_we0 = M_4_we0_local;
assign M_4_we1 = M_4_we1_local;
assign M_5_address0 = zext_ln24_25_fu_1030_p1;
assign M_5_address1 = zext_ln24_10_fu_681_p1;
assign M_5_ce0 = M_5_ce0_local;
assign M_5_ce1 = M_5_ce1_local;
assign M_5_d0 = sext_ln24_13_fu_1057_p1;
assign M_5_d1 = sext_ln24_5_fu_715_p1;
assign M_5_we0 = M_5_we0_local;
assign M_5_we1 = M_5_we1_local;
assign M_6_address0 = zext_ln24_27_fu_1077_p1;
assign M_6_address1 = zext_ln24_12_fu_735_p1;
assign M_6_ce0 = M_6_ce0_local;
assign M_6_ce1 = M_6_ce1_local;
assign M_6_d0 = sext_ln24_14_fu_1100_p1;
assign M_6_d1 = sext_ln24_6_fu_758_p1;
assign M_6_we0 = M_6_we0_local;
assign M_6_we1 = M_6_we1_local;
assign M_7_address0 = zext_ln24_29_fu_1120_p1;
assign M_7_address1 = zext_ln24_14_fu_778_p1;
assign M_7_ce0 = M_7_ce0_local;
assign M_7_ce1 = M_7_ce1_local;
assign M_7_d0 = sext_ln24_15_fu_1143_p1;
assign M_7_d1 = sext_ln24_7_fu_801_p1;
assign M_7_we0 = M_7_we0_local;
assign M_7_we1 = M_7_we1_local;
assign add_ln23_fu_508_p2 = (ap_sig_allocacmp_b_idx_26 + 8'd16);
assign add_ln24_10_fu_972_p2 = (add_ln24_14_reg_1168 + 15'd1419);
assign add_ln24_11_fu_1015_p2 = (add_ln24_14_reg_1168 + 15'd1548);
assign add_ln24_12_fu_1062_p2 = (add_ln24_14_reg_1168 + 15'd1677);
assign add_ln24_13_fu_1105_p2 = (add_ln24_14_reg_1168 + 15'd1806);
assign add_ln24_14_fu_432_p2 = (p_shl_fu_424_p3 + zext_ln24_1_fu_420_p1);
assign add_ln24_1_fu_571_p2 = (add_ln24_14_reg_1168 + 15'd258);
assign add_ln24_2_fu_614_p2 = (add_ln24_14_reg_1168 + 15'd387);
assign add_ln24_3_fu_666_p2 = (add_ln24_14_reg_1168 + 15'd516);
assign add_ln24_4_fu_720_p2 = (add_ln24_14_reg_1168 + 15'd645);
assign add_ln24_5_fu_763_p2 = (add_ln24_14_reg_1168 + 15'd774);
assign add_ln24_6_fu_486_p2 = (tmp_fu_370_p4 + 12'd129);
assign add_ln24_7_fu_806_p2 = (add_ln24_14_reg_1168 + 15'd1032);
assign add_ln24_8_fu_871_p2 = (add_ln24_14_reg_1168 + 15'd1161);
assign add_ln24_9_fu_925_p2 = (add_ln24_14_reg_1168 + 15'd1290);
assign add_ln24_fu_519_p2 = (add_ln24_14_reg_1168 + 15'd129);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln23_fu_414_p2 = ((or_ln2_fu_406_p3 < 8'd129) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_360_p4 = {{ap_sig_allocacmp_b_idx_26[7:3]}};
assign lshr_ln24_10_fu_977_p4 = {{add_ln24_10_fu_972_p2[14:3]}};
assign lshr_ln24_11_fu_1020_p4 = {{add_ln24_11_fu_1015_p2[14:3]}};
assign lshr_ln24_12_fu_1067_p4 = {{add_ln24_12_fu_1062_p2[14:3]}};
assign lshr_ln24_13_fu_1110_p4 = {{add_ln24_13_fu_1105_p2[14:3]}};
assign lshr_ln24_1_fu_438_p4 = {{add_ln24_14_fu_432_p2[14:3]}};
assign lshr_ln24_2_fu_524_p4 = {{add_ln24_fu_519_p2[14:3]}};
assign lshr_ln24_3_fu_576_p4 = {{add_ln24_1_fu_571_p2[14:3]}};
assign lshr_ln24_4_fu_619_p4 = {{add_ln24_2_fu_614_p2[14:3]}};
assign lshr_ln24_5_fu_671_p4 = {{add_ln24_3_fu_666_p2[14:3]}};
assign lshr_ln24_6_fu_725_p4 = {{add_ln24_4_fu_720_p2[14:3]}};
assign lshr_ln24_7_fu_768_p4 = {{add_ln24_5_fu_763_p2[14:3]}};
assign lshr_ln24_8_fu_811_p4 = {{add_ln24_7_fu_806_p2[14:3]}};
assign lshr_ln24_9_fu_876_p4 = {{add_ln24_8_fu_871_p2[14:3]}};
assign lshr_ln24_s_fu_930_p4 = {{add_ln24_9_fu_925_p2[14:3]}};
assign or_ln24_10_fu_1035_p5 = {{{{tmp_45_fu_826_p4}, {2'd3}}, {tmp_31_fu_686_p3}}, {1'd1}};
assign or_ln24_11_fu_1082_p3 = {{tmp_45_fu_826_p4}, {4'd14}};
assign or_ln24_12_fu_1125_p3 = {{tmp_45_fu_826_p4}, {4'd15}};
assign or_ln24_1_fu_591_p3 = {{tmp_43_fu_539_p4}, {2'd3}};
assign or_ln24_2_fu_643_p3 = {{tmp_44_fu_634_p4}, {3'd4}};
assign or_ln24_3_fu_693_p5 = {{{{tmp_44_fu_634_p4}, {1'd1}}, {tmp_31_fu_686_p3}}, {1'd1}};
assign or_ln24_4_fu_740_p3 = {{tmp_44_fu_634_p4}, {3'd6}};
assign or_ln24_5_fu_783_p3 = {{tmp_44_fu_634_p4}, {3'd7}};
assign or_ln24_6_fu_844_p5 = {{{{tmp_45_fu_826_p4}, {1'd1}}, {tmp_46_fu_835_p4}}, {1'd1}};
assign or_ln24_7_fu_898_p5 = {{{{tmp_45_fu_826_p4}, {1'd1}}, {tmp_32_fu_891_p3}}, {2'd2}};
assign or_ln24_8_fu_945_p5 = {{{{tmp_45_fu_826_p4}, {1'd1}}, {tmp_32_fu_891_p3}}, {2'd3}};
assign or_ln24_9_fu_992_p3 = {{tmp_45_fu_826_p4}, {4'd12}};
assign or_ln24_s_fu_463_p3 = {{tmp_42_fu_453_p4}, {1'd1}};
assign or_ln2_fu_406_p3 = {{tmp_s_fu_396_p4}, {1'd1}};
assign or_ln3_fu_548_p3 = {{tmp_43_fu_539_p4}, {2'd2}};
assign p_shl_fu_424_p3 = {{tmp_s_fu_396_p4}, {8'd128}};
assign sext_ln24_10_fu_920_p1 = $signed(sub_ln24_10_fu_914_p2);
assign sext_ln24_11_fu_967_p1 = $signed(sub_ln24_11_fu_961_p2);
assign sext_ln24_12_fu_1010_p1 = $signed(sub_ln24_12_fu_1004_p2);
assign sext_ln24_13_fu_1057_p1 = $signed(sub_ln24_13_fu_1051_p2);
assign sext_ln24_14_fu_1100_p1 = $signed(sub_ln24_14_fu_1094_p2);
assign sext_ln24_15_fu_1143_p1 = $signed(sub_ln24_15_fu_1137_p2);
assign sext_ln24_1_fu_481_p1 = $signed(sub_ln24_1_fu_475_p2);
assign sext_ln24_2_fu_566_p1 = $signed(sub_ln24_2_fu_560_p2);
assign sext_ln24_3_fu_609_p1 = $signed(sub_ln24_3_fu_603_p2);
assign sext_ln24_4_fu_661_p1 = $signed(sub_ln24_4_fu_655_p2);
assign sext_ln24_5_fu_715_p1 = $signed(sub_ln24_5_fu_709_p2);
assign sext_ln24_6_fu_758_p1 = $signed(sub_ln24_6_fu_752_p2);
assign sext_ln24_7_fu_801_p1 = $signed(sub_ln24_7_fu_795_p2);
assign sext_ln24_8_fu_503_p1 = $signed(sub_ln24_8_fu_497_p2);
assign sext_ln24_9_fu_866_p1 = $signed(sub_ln24_9_fu_860_p2);
assign sext_ln24_fu_391_p1 = $signed(sub_ln24_fu_385_p2);
assign sub_ln24_10_fu_914_p2 = (8'd0 - zext_ln24_20_fu_910_p1);
assign sub_ln24_11_fu_961_p2 = (8'd0 - zext_ln24_22_fu_957_p1);
assign sub_ln24_12_fu_1004_p2 = (8'd0 - zext_ln24_24_fu_1000_p1);
assign sub_ln24_13_fu_1051_p2 = (8'd0 - zext_ln24_26_fu_1047_p1);
assign sub_ln24_14_fu_1094_p2 = (8'd0 - zext_ln24_28_fu_1090_p1);
assign sub_ln24_15_fu_1137_p2 = (8'd0 - zext_ln24_30_fu_1133_p1);
assign sub_ln24_1_fu_475_p2 = (8'd0 - zext_ln24_3_fu_471_p1);
assign sub_ln24_2_fu_560_p2 = (8'd0 - zext_ln24_5_fu_556_p1);
assign sub_ln24_3_fu_603_p2 = (8'd0 - zext_ln24_7_fu_599_p1);
assign sub_ln24_4_fu_655_p2 = (8'd0 - zext_ln24_9_fu_651_p1);
assign sub_ln24_5_fu_709_p2 = (8'd0 - zext_ln24_11_fu_705_p1);
assign sub_ln24_6_fu_752_p2 = (8'd0 - zext_ln24_13_fu_748_p1);
assign sub_ln24_7_fu_795_p2 = (8'd0 - zext_ln24_15_fu_791_p1);
assign sub_ln24_8_fu_497_p2 = ($signed(8'd248) - $signed(ap_sig_allocacmp_b_idx_26));
assign sub_ln24_9_fu_860_p2 = (8'd0 - zext_ln24_18_fu_856_p1);
assign sub_ln24_fu_385_p2 = (8'd0 - ap_sig_allocacmp_b_idx_26);
assign tmp_31_fu_686_p3 = b_idx_26_reg_1155[32'd1];
assign tmp_32_fu_891_p3 = b_idx_26_reg_1155[32'd2];
assign tmp_42_fu_453_p4 = {{ap_sig_allocacmp_b_idx_26[6:1]}};
assign tmp_43_fu_539_p4 = {{b_idx_26_reg_1155[6:2]}};
assign tmp_44_fu_634_p4 = {{b_idx_26_reg_1155[6:3]}};
assign tmp_45_fu_826_p4 = {{b_idx_26_reg_1155[6:4]}};
assign tmp_46_fu_835_p4 = {{b_idx_26_reg_1155[2:1]}};
assign tmp_fu_370_p4 = {{{lshr_ln1_fu_360_p4}, {2'd0}}, {lshr_ln1_fu_360_p4}};
assign tmp_s_fu_396_p4 = {{ap_sig_allocacmp_b_idx_26[7:1]}};
assign zext_ln24_10_fu_681_p1 = lshr_ln24_5_fu_671_p4;
assign zext_ln24_11_fu_705_p1 = or_ln24_3_fu_693_p5;
assign zext_ln24_12_fu_735_p1 = lshr_ln24_6_fu_725_p4;
assign zext_ln24_13_fu_748_p1 = or_ln24_4_fu_740_p3;
assign zext_ln24_14_fu_778_p1 = lshr_ln24_7_fu_768_p4;
assign zext_ln24_15_fu_791_p1 = or_ln24_5_fu_783_p3;
assign zext_ln24_16_fu_492_p1 = add_ln24_6_fu_486_p2;
assign zext_ln24_17_fu_821_p1 = lshr_ln24_8_fu_811_p4;
assign zext_ln24_18_fu_856_p1 = or_ln24_6_fu_844_p5;
assign zext_ln24_19_fu_886_p1 = lshr_ln24_9_fu_876_p4;
assign zext_ln24_1_fu_420_p1 = or_ln2_fu_406_p3;
assign zext_ln24_20_fu_910_p1 = or_ln24_7_fu_898_p5;
assign zext_ln24_21_fu_940_p1 = lshr_ln24_s_fu_930_p4;
assign zext_ln24_22_fu_957_p1 = or_ln24_8_fu_945_p5;
assign zext_ln24_23_fu_987_p1 = lshr_ln24_10_fu_977_p4;
assign zext_ln24_24_fu_1000_p1 = or_ln24_9_fu_992_p3;
assign zext_ln24_25_fu_1030_p1 = lshr_ln24_11_fu_1020_p4;
assign zext_ln24_26_fu_1047_p1 = or_ln24_10_fu_1035_p5;
assign zext_ln24_27_fu_1077_p1 = lshr_ln24_12_fu_1067_p4;
assign zext_ln24_28_fu_1090_p1 = or_ln24_11_fu_1082_p3;
assign zext_ln24_29_fu_1120_p1 = lshr_ln24_13_fu_1110_p4;
assign zext_ln24_2_fu_448_p1 = lshr_ln24_1_fu_438_p4;
assign zext_ln24_30_fu_1133_p1 = or_ln24_12_fu_1125_p3;
assign zext_ln24_3_fu_471_p1 = or_ln24_s_fu_463_p3;
assign zext_ln24_4_fu_534_p1 = lshr_ln24_2_fu_524_p4;
assign zext_ln24_5_fu_556_p1 = or_ln3_fu_548_p3;
assign zext_ln24_6_fu_586_p1 = lshr_ln24_3_fu_576_p4;
assign zext_ln24_7_fu_599_p1 = or_ln24_1_fu_591_p3;
assign zext_ln24_8_fu_629_p1 = lshr_ln24_4_fu_619_p4;
assign zext_ln24_9_fu_651_p1 = or_ln24_2_fu_643_p3;
assign zext_ln24_fu_380_p1 = tmp_fu_370_p4;
always @ (posedge ap_clk) begin
    add_ln24_14_reg_1168[0] <= 1'b1;
end
endmodule 