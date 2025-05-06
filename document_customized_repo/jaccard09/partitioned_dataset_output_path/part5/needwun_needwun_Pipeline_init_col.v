
module needwun_needwun_Pipeline_init_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_address1,M_1_ce1,M_1_we1,M_1_d1,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_address1,M_0_ce1,M_0_we1,M_0_d1);  
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
output  [13:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
output  [13:0] M_1_address1;
output   M_1_ce1;
output   M_1_we1;
output  [31:0] M_1_d1;
output  [13:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
output  [13:0] M_0_address1;
output   M_0_ce1;
output   M_0_we1;
output  [31:0] M_0_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln23_fu_334_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [7:0] b_idx_14_reg_926;
wire    ap_block_pp0_stage0_11001;
wire   [13:0] tmp_fu_302_p3;
reg   [13:0] tmp_reg_937;
reg   [0:0] icmp_ln23_reg_947;
wire   [14:0] add_ln24_20_fu_352_p2;
reg   [14:0] add_ln24_20_reg_951;
wire  signed [7:0] sub_ln24_2_fu_417_p2;
reg  signed [7:0] sub_ln24_2_reg_962;
wire   [3:0] tmp_2_fu_520_p4;
reg   [3:0] tmp_2_reg_972;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] tmp_32_fu_529_p3;
reg   [0:0] tmp_32_reg_977;
wire   [2:0] tmp_3_fu_665_p4;
reg   [2:0] tmp_3_reg_982;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [13:0] lshr_ln24_8_reg_989;
wire    ap_block_pp0_stage3_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln24_fu_310_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln24_2_fu_368_p1;
wire   [63:0] zext_ln24_4_fu_412_p1;
wire   [63:0] zext_ln24_5_fu_443_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln24_7_fu_485_p1;
wire   [63:0] zext_ln24_8_fu_515_p1;
wire   [63:0] zext_ln24_10_fu_568_p1;
wire   [63:0] zext_ln24_11_fu_598_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln24_13_fu_630_p1;
wire   [63:0] zext_ln24_14_fu_660_p1;
wire   [63:0] zext_ln24_16_fu_715_p1;
wire   [63:0] zext_ln24_17_fu_745_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln24_19_fu_788_p1;
wire   [63:0] zext_ln24_20_fu_818_p1;
wire   [63:0] zext_ln24_22_fu_853_p1;
wire   [63:0] zext_ln24_23_fu_893_p1;
reg   [7:0] b_idx_fu_134;
wire   [7:0] add_ln23_fu_883_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_b_idx_14;
reg    M_0_we1_local;
reg   [31:0] M_0_d1_local;
wire  signed [31:0] sext_ln24_fu_321_p1;
reg    M_0_ce1_local;
reg   [13:0] M_0_address1_local;
reg    M_0_we0_local;
reg   [31:0] M_0_d0_local;
wire  signed [31:0] sext_ln24_2_fu_423_p1;
reg    M_0_ce0_local;
reg   [13:0] M_0_address0_local;
wire  signed [31:0] sext_ln24_4_fu_495_p1;
wire  signed [31:0] sext_ln24_6_fu_578_p1;
wire  signed [31:0] sext_ln24_8_fu_640_p1;
wire  signed [31:0] sext_ln24_10_fu_725_p1;
wire  signed [31:0] sext_ln24_12_fu_798_p1;
wire  signed [31:0] sext_ln24_14_fu_863_p1;
reg    M_1_we1_local;
reg   [31:0] M_1_d1_local;
wire  signed [31:0] sext_ln24_1_fu_401_p1;
reg    M_1_ce1_local;
reg   [13:0] M_1_address1_local;
wire  signed [31:0] sext_ln24_3_fu_475_p1;
reg    M_1_we0_local;
reg   [31:0] M_1_d0_local;
wire  signed [31:0] sext_ln24_5_fu_558_p1;
reg    M_1_ce0_local;
reg   [13:0] M_1_address0_local;
wire  signed [31:0] sext_ln24_7_fu_620_p1;
wire  signed [31:0] sext_ln24_9_fu_705_p1;
wire  signed [31:0] sext_ln24_11_fu_778_p1;
wire  signed [31:0] sext_ln24_13_fu_843_p1;
wire  signed [31:0] sext_ln24_15_fu_914_p1;
wire   [6:0] lshr_ln1_fu_292_p4;
wire   [7:0] sub_ln24_fu_315_p2;
wire   [7:0] or_ln2_fu_326_p3;
wire   [14:0] p_shl_fu_344_p3;
wire   [14:0] zext_ln24_1_fu_340_p1;
wire   [13:0] lshr_ln24_1_fu_358_p4;
wire   [5:0] tmp_s_fu_373_p4;
wire   [6:0] or_ln24_7_fu_383_p3;
wire   [7:0] zext_ln24_3_fu_391_p1;
wire   [7:0] sub_ln24_1_fu_395_p2;
wire   [13:0] add_ln24_fu_406_p2;
wire   [14:0] add_ln24_1_fu_428_p2;
wire   [13:0] lshr_ln24_2_fu_433_p4;
wire   [4:0] tmp_1_fu_448_p4;
wire   [6:0] or_ln3_fu_457_p3;
wire   [7:0] zext_ln24_6_fu_465_p1;
wire   [7:0] sub_ln24_3_fu_469_p2;
wire   [13:0] add_ln24_2_fu_480_p2;
wire   [7:0] add_ln24_3_fu_490_p2;
wire   [14:0] add_ln24_4_fu_500_p2;
wire   [13:0] lshr_ln24_3_fu_505_p4;
wire   [6:0] or_ln24_1_fu_536_p5;
wire   [7:0] zext_ln24_9_fu_548_p1;
wire   [7:0] sub_ln24_4_fu_552_p2;
wire   [13:0] add_ln24_5_fu_563_p2;
wire   [7:0] add_ln24_6_fu_573_p2;
wire   [14:0] add_ln24_7_fu_583_p2;
wire   [13:0] lshr_ln24_4_fu_588_p4;
wire   [6:0] or_ln24_2_fu_603_p3;
wire   [7:0] zext_ln24_12_fu_610_p1;
wire   [7:0] sub_ln24_5_fu_614_p2;
wire   [13:0] add_ln24_8_fu_625_p2;
wire   [7:0] add_ln24_9_fu_635_p2;
wire   [14:0] add_ln24_10_fu_645_p2;
wire   [13:0] lshr_ln24_5_fu_650_p4;
wire   [1:0] tmp_4_fu_674_p4;
wire   [6:0] or_ln24_3_fu_683_p5;
wire   [7:0] zext_ln24_15_fu_695_p1;
wire   [7:0] sub_ln24_6_fu_699_p2;
wire   [13:0] add_ln24_11_fu_710_p2;
wire   [7:0] add_ln24_12_fu_720_p2;
wire   [14:0] add_ln24_13_fu_730_p2;
wire   [13:0] lshr_ln24_6_fu_735_p4;
wire   [0:0] tmp_33_fu_750_p3;
wire   [6:0] or_ln24_4_fu_757_p5;
wire   [7:0] zext_ln24_18_fu_768_p1;
wire   [7:0] sub_ln24_7_fu_772_p2;
wire   [13:0] add_ln24_14_fu_783_p2;
wire   [7:0] add_ln24_15_fu_793_p2;
wire   [14:0] add_ln24_16_fu_803_p2;
wire   [13:0] lshr_ln24_7_fu_808_p4;
wire   [6:0] or_ln24_5_fu_823_p5;
wire   [7:0] zext_ln24_21_fu_833_p1;
wire   [7:0] sub_ln24_8_fu_837_p2;
wire   [13:0] add_ln24_17_fu_848_p2;
wire   [7:0] add_ln24_18_fu_858_p2;
wire   [14:0] add_ln24_19_fu_868_p2;
wire   [6:0] or_ln24_6_fu_897_p3;
wire   [7:0] zext_ln24_24_fu_904_p1;
wire   [7:0] sub_ln24_9_fu_908_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 b_idx_fu_134 = 8'd0;
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
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        b_idx_fu_134 <= 8'd0;
    end else if (((icmp_ln23_reg_947 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        b_idx_fu_134 <= add_ln23_fu_883_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln24_20_reg_951[14 : 1] <= add_ln24_20_fu_352_p2[14 : 1];
        b_idx_14_reg_926 <= ap_sig_allocacmp_b_idx_14;
        icmp_ln23_reg_947 <= icmp_ln23_fu_334_p2;
        sub_ln24_2_reg_962 <= sub_ln24_2_fu_417_p2;
        tmp_reg_937 <= tmp_fu_302_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln24_8_reg_989 <= {{add_ln24_19_fu_868_p2[14:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_2_reg_972 <= {{b_idx_14_reg_926[6:3]}};
        tmp_32_reg_977 <= b_idx_14_reg_926[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_3_reg_982 <= {{b_idx_14_reg_926[6:4]}};
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_address0_local = zext_ln24_22_fu_853_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_address0_local = zext_ln24_16_fu_715_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_address0_local = zext_ln24_10_fu_568_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_address0_local = zext_ln24_4_fu_412_p1;
        end else begin
            M_0_address0_local = 'bx;
        end
    end else begin
        M_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_address1_local = zext_ln24_19_fu_788_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_address1_local = zext_ln24_13_fu_630_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_address1_local = zext_ln24_7_fu_485_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_address1_local = zext_ln24_fu_310_p1;
        end else begin
            M_0_address1_local = 'bx;
        end
    end else begin
        M_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_0_ce1_local = 1'b1;
    end else begin
        M_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_d0_local = sext_ln24_14_fu_863_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_d0_local = sext_ln24_10_fu_725_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_d0_local = sext_ln24_6_fu_578_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_d0_local = sext_ln24_2_fu_423_p1;
        end else begin
            M_0_d0_local = 'bx;
        end
    end else begin
        M_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_0_d1_local = sext_ln24_12_fu_798_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_d1_local = sext_ln24_8_fu_640_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_d1_local = sext_ln24_4_fu_495_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_d1_local = sext_ln24_fu_321_p1;
        end else begin
            M_0_d1_local = 'bx;
        end
    end else begin
        M_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln23_reg_947 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln23_reg_947 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln23_reg_947 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln23_fu_334_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln23_reg_947 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln23_reg_947 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln23_reg_947 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_0_we1_local = 1'b1;
    end else begin
        M_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_address0_local = zext_ln24_23_fu_893_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_1_address0_local = zext_ln24_20_fu_818_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_address0_local = zext_ln24_14_fu_660_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_address0_local = zext_ln24_8_fu_515_p1;
    end else begin
        M_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_1_address1_local = zext_ln24_17_fu_745_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_1_address1_local = zext_ln24_11_fu_598_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_1_address1_local = zext_ln24_5_fu_443_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_1_address1_local = zext_ln24_2_fu_368_p1;
        end else begin
            M_1_address1_local = 'bx;
        end
    end else begin
        M_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_1_ce1_local = 1'b1;
    end else begin
        M_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_d0_local = sext_ln24_15_fu_914_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_1_d0_local = sext_ln24_13_fu_843_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_d0_local = sext_ln24_9_fu_705_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_d0_local = sext_ln24_5_fu_558_p1;
    end else begin
        M_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            M_1_d1_local = sext_ln24_11_fu_778_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_1_d1_local = sext_ln24_7_fu_620_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_1_d1_local = sext_ln24_3_fu_475_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_1_d1_local = sext_ln24_1_fu_401_p1;
        end else begin
            M_1_d1_local = 'bx;
        end
    end else begin
        M_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln23_reg_947 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln23_reg_947 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln23_reg_947 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln23_reg_947 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln23_reg_947 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln23_reg_947 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln23_fu_334_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_we1_local = 1'b1;
    end else begin
        M_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln23_fu_334_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_b_idx_14 = 8'd0;
    end else begin
        ap_sig_allocacmp_b_idx_14 = b_idx_fu_134;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign M_0_address0 = M_0_address0_local;
assign M_0_address1 = M_0_address1_local;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_ce1 = M_0_ce1_local;
assign M_0_d0 = M_0_d0_local;
assign M_0_d1 = M_0_d1_local;
assign M_0_we0 = M_0_we0_local;
assign M_0_we1 = M_0_we1_local;
assign M_1_address0 = M_1_address0_local;
assign M_1_address1 = M_1_address1_local;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_ce1 = M_1_ce1_local;
assign M_1_d0 = M_1_d0_local;
assign M_1_d1 = M_1_d1_local;
assign M_1_we0 = M_1_we0_local;
assign M_1_we1 = M_1_we1_local;
assign add_ln23_fu_883_p2 = (b_idx_14_reg_926 + 8'd16);
assign add_ln24_10_fu_645_p2 = (add_ln24_20_reg_951 + 15'd1032);
assign add_ln24_11_fu_710_p2 = (tmp_reg_937 + 14'd645);
assign add_ln24_12_fu_720_p2 = ($signed(sub_ln24_2_reg_962) + $signed(8'd248));
assign add_ln24_13_fu_730_p2 = (add_ln24_20_reg_951 + 15'd1290);
assign add_ln24_14_fu_783_p2 = (tmp_reg_937 + 14'd774);
assign add_ln24_15_fu_793_p2 = ($signed(sub_ln24_2_reg_962) + $signed(8'd246));
assign add_ln24_16_fu_803_p2 = (add_ln24_20_reg_951 + 15'd1548);
assign add_ln24_17_fu_848_p2 = (tmp_reg_937 + 14'd903);
assign add_ln24_18_fu_858_p2 = ($signed(sub_ln24_2_reg_962) + $signed(8'd244));
assign add_ln24_19_fu_868_p2 = (add_ln24_20_reg_951 + 15'd1806);
assign add_ln24_1_fu_428_p2 = (add_ln24_20_reg_951 + 15'd258);
assign add_ln24_20_fu_352_p2 = (p_shl_fu_344_p3 + zext_ln24_1_fu_340_p1);
assign add_ln24_2_fu_480_p2 = (tmp_reg_937 + 14'd258);
assign add_ln24_3_fu_490_p2 = ($signed(sub_ln24_2_reg_962) + $signed(8'd254));
assign add_ln24_4_fu_500_p2 = (add_ln24_20_reg_951 + 15'd516);
assign add_ln24_5_fu_563_p2 = (tmp_reg_937 + 14'd387);
assign add_ln24_6_fu_573_p2 = ($signed(sub_ln24_2_reg_962) + $signed(8'd252));
assign add_ln24_7_fu_583_p2 = (add_ln24_20_reg_951 + 15'd774);
assign add_ln24_8_fu_625_p2 = (tmp_reg_937 + 14'd516);
assign add_ln24_9_fu_635_p2 = ($signed(sub_ln24_2_reg_962) + $signed(8'd250));
assign add_ln24_fu_406_p2 = (tmp_fu_302_p3 + 14'd129);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln23_fu_334_p2 = ((or_ln2_fu_326_p3 < 8'd129) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_292_p4 = {{ap_sig_allocacmp_b_idx_14[7:1]}};
assign lshr_ln24_1_fu_358_p4 = {{add_ln24_20_fu_352_p2[14:1]}};
assign lshr_ln24_2_fu_433_p4 = {{add_ln24_1_fu_428_p2[14:1]}};
assign lshr_ln24_3_fu_505_p4 = {{add_ln24_4_fu_500_p2[14:1]}};
assign lshr_ln24_4_fu_588_p4 = {{add_ln24_7_fu_583_p2[14:1]}};
assign lshr_ln24_5_fu_650_p4 = {{add_ln24_10_fu_645_p2[14:1]}};
assign lshr_ln24_6_fu_735_p4 = {{add_ln24_13_fu_730_p2[14:1]}};
assign lshr_ln24_7_fu_808_p4 = {{add_ln24_16_fu_803_p2[14:1]}};
assign or_ln24_1_fu_536_p5 = {{{{tmp_2_fu_520_p4}, {1'd1}}, {tmp_32_fu_529_p3}}, {1'd1}};
assign or_ln24_2_fu_603_p3 = {{tmp_2_reg_972}, {3'd7}};
assign or_ln24_3_fu_683_p5 = {{{{tmp_3_fu_665_p4}, {1'd1}}, {tmp_4_fu_674_p4}}, {1'd1}};
assign or_ln24_4_fu_757_p5 = {{{{tmp_3_reg_982}, {1'd1}}, {tmp_33_fu_750_p3}}, {2'd3}};
assign or_ln24_5_fu_823_p5 = {{{{tmp_3_reg_982}, {2'd3}}, {tmp_32_reg_977}}, {1'd1}};
assign or_ln24_6_fu_897_p3 = {{tmp_3_reg_982}, {4'd15}};
assign or_ln24_7_fu_383_p3 = {{tmp_s_fu_373_p4}, {1'd1}};
assign or_ln2_fu_326_p3 = {{lshr_ln1_fu_292_p4}, {1'd1}};
assign or_ln3_fu_457_p3 = {{tmp_1_fu_448_p4}, {2'd3}};
assign p_shl_fu_344_p3 = {{lshr_ln1_fu_292_p4}, {8'd128}};
assign sext_ln24_10_fu_725_p1 = $signed(add_ln24_12_fu_720_p2);
assign sext_ln24_11_fu_778_p1 = $signed(sub_ln24_7_fu_772_p2);
assign sext_ln24_12_fu_798_p1 = $signed(add_ln24_15_fu_793_p2);
assign sext_ln24_13_fu_843_p1 = $signed(sub_ln24_8_fu_837_p2);
assign sext_ln24_14_fu_863_p1 = $signed(add_ln24_18_fu_858_p2);
assign sext_ln24_15_fu_914_p1 = $signed(sub_ln24_9_fu_908_p2);
assign sext_ln24_1_fu_401_p1 = $signed(sub_ln24_1_fu_395_p2);
assign sext_ln24_2_fu_423_p1 = sub_ln24_2_fu_417_p2;
assign sext_ln24_3_fu_475_p1 = $signed(sub_ln24_3_fu_469_p2);
assign sext_ln24_4_fu_495_p1 = $signed(add_ln24_3_fu_490_p2);
assign sext_ln24_5_fu_558_p1 = $signed(sub_ln24_4_fu_552_p2);
assign sext_ln24_6_fu_578_p1 = $signed(add_ln24_6_fu_573_p2);
assign sext_ln24_7_fu_620_p1 = $signed(sub_ln24_5_fu_614_p2);
assign sext_ln24_8_fu_640_p1 = $signed(add_ln24_9_fu_635_p2);
assign sext_ln24_9_fu_705_p1 = $signed(sub_ln24_6_fu_699_p2);
assign sext_ln24_fu_321_p1 = $signed(sub_ln24_fu_315_p2);
assign sub_ln24_1_fu_395_p2 = (8'd0 - zext_ln24_3_fu_391_p1);
assign sub_ln24_2_fu_417_p2 = ($signed(8'd254) - $signed(ap_sig_allocacmp_b_idx_14));
assign sub_ln24_3_fu_469_p2 = (8'd0 - zext_ln24_6_fu_465_p1);
assign sub_ln24_4_fu_552_p2 = (8'd0 - zext_ln24_9_fu_548_p1);
assign sub_ln24_5_fu_614_p2 = (8'd0 - zext_ln24_12_fu_610_p1);
assign sub_ln24_6_fu_699_p2 = (8'd0 - zext_ln24_15_fu_695_p1);
assign sub_ln24_7_fu_772_p2 = (8'd0 - zext_ln24_18_fu_768_p1);
assign sub_ln24_8_fu_837_p2 = (8'd0 - zext_ln24_21_fu_833_p1);
assign sub_ln24_9_fu_908_p2 = (8'd0 - zext_ln24_24_fu_904_p1);
assign sub_ln24_fu_315_p2 = (8'd0 - ap_sig_allocacmp_b_idx_14);
assign tmp_1_fu_448_p4 = {{b_idx_14_reg_926[6:2]}};
assign tmp_2_fu_520_p4 = {{b_idx_14_reg_926[6:3]}};
assign tmp_32_fu_529_p3 = b_idx_14_reg_926[32'd1];
assign tmp_33_fu_750_p3 = b_idx_14_reg_926[32'd2];
assign tmp_3_fu_665_p4 = {{b_idx_14_reg_926[6:4]}};
assign tmp_4_fu_674_p4 = {{b_idx_14_reg_926[2:1]}};
assign tmp_fu_302_p3 = {{lshr_ln1_fu_292_p4}, {lshr_ln1_fu_292_p4}};
assign tmp_s_fu_373_p4 = {{ap_sig_allocacmp_b_idx_14[6:1]}};
assign zext_ln24_10_fu_568_p1 = add_ln24_5_fu_563_p2;
assign zext_ln24_11_fu_598_p1 = lshr_ln24_4_fu_588_p4;
assign zext_ln24_12_fu_610_p1 = or_ln24_2_fu_603_p3;
assign zext_ln24_13_fu_630_p1 = add_ln24_8_fu_625_p2;
assign zext_ln24_14_fu_660_p1 = lshr_ln24_5_fu_650_p4;
assign zext_ln24_15_fu_695_p1 = or_ln24_3_fu_683_p5;
assign zext_ln24_16_fu_715_p1 = add_ln24_11_fu_710_p2;
assign zext_ln24_17_fu_745_p1 = lshr_ln24_6_fu_735_p4;
assign zext_ln24_18_fu_768_p1 = or_ln24_4_fu_757_p5;
assign zext_ln24_19_fu_788_p1 = add_ln24_14_fu_783_p2;
assign zext_ln24_1_fu_340_p1 = or_ln2_fu_326_p3;
assign zext_ln24_20_fu_818_p1 = lshr_ln24_7_fu_808_p4;
assign zext_ln24_21_fu_833_p1 = or_ln24_5_fu_823_p5;
assign zext_ln24_22_fu_853_p1 = add_ln24_17_fu_848_p2;
assign zext_ln24_23_fu_893_p1 = lshr_ln24_8_reg_989;
assign zext_ln24_24_fu_904_p1 = or_ln24_6_fu_897_p3;
assign zext_ln24_2_fu_368_p1 = lshr_ln24_1_fu_358_p4;
assign zext_ln24_3_fu_391_p1 = or_ln24_7_fu_383_p3;
assign zext_ln24_4_fu_412_p1 = add_ln24_fu_406_p2;
assign zext_ln24_5_fu_443_p1 = lshr_ln24_2_fu_433_p4;
assign zext_ln24_6_fu_465_p1 = or_ln3_fu_457_p3;
assign zext_ln24_7_fu_485_p1 = add_ln24_2_fu_480_p2;
assign zext_ln24_8_fu_515_p1 = lshr_ln24_3_fu_505_p4;
assign zext_ln24_9_fu_548_p1 = or_ln24_1_fu_536_p5;
assign zext_ln24_fu_310_p1 = tmp_fu_302_p3;
always @ (posedge ap_clk) begin
    add_ln24_20_reg_951[0] <= 1'b1;
end
endmodule 
