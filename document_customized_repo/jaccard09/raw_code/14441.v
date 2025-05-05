module needwun_needwun_Pipeline_init_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_7_address0,M_7_ce0,M_7_we0,M_7_d0,M_7_address1,M_7_ce1,M_7_we1,M_7_d1,M_6_address0,M_6_ce0,M_6_we0,M_6_d0,M_6_address1,M_6_ce1,M_6_we1,M_6_d1,M_5_address0,M_5_ce0,M_5_we0,M_5_d0,M_5_address1,M_5_ce1,M_5_we1,M_5_d1,M_4_address0,M_4_ce0,M_4_we0,M_4_d0,M_4_address1,M_4_ce1,M_4_we1,M_4_d1,M_3_address0,M_3_ce0,M_3_we0,M_3_d0,M_3_address1,M_3_ce1,M_3_we1,M_3_d1,M_2_address0,M_2_ce0,M_2_we0,M_2_d0,M_2_address1,M_2_ce1,M_2_we1,M_2_d1,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_address1,M_1_ce1,M_1_we1,M_1_d1,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_address1,M_0_ce1,M_0_we1,M_0_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
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
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln20_fu_526_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [7:0] a_idx_14_reg_964;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln17_fu_490_p1;
reg   [63:0] zext_ln17_reg_972;
reg   [0:0] icmp_ln20_reg_981;
wire  signed [7:0] sub_ln21_2_fu_565_p2;
reg  signed [7:0] sub_ln21_2_reg_985;
wire   [2:0] tmp_22_fu_735_p4;
reg   [2:0] tmp_22_reg_1018;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] zext_ln21_2_fu_761_p1;
reg   [63:0] zext_ln21_2_reg_1023;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln21_1_fu_643_p1;
wire   [63:0] zext_ln21_3_fu_865_p1;
reg   [7:0] a_idx_fu_140;
wire   [7:0] add_ln20_fu_798_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_a_idx_14;
reg    M_0_we1_local;
reg   [31:0] M_0_d1_local;
wire  signed [31:0] sext_ln21_fu_503_p1;
reg    M_0_ce1_local;
reg   [11:0] M_0_address1_local;
wire  signed [31:0] sext_ln21_8_fu_660_p1;
reg    M_0_we0_local;
reg   [31:0] M_0_d0_local;
wire  signed [31:0] sext_ln21_16_fu_773_p1;
reg    M_0_ce0_local;
reg   [11:0] M_0_address0_local;
wire  signed [31:0] sext_ln21_24_fu_882_p1;
reg    M_1_we1_local;
reg   [31:0] M_1_d1_local;
wire  signed [31:0] sext_ln21_1_fu_560_p1;
reg    M_1_ce1_local;
reg   [11:0] M_1_address1_local;
wire  signed [31:0] sext_ln21_9_fu_670_p1;
reg    M_1_we0_local;
reg   [31:0] M_1_d0_local;
wire  signed [31:0] sext_ln21_17_fu_783_p1;
reg    M_1_ce0_local;
reg   [11:0] M_1_address0_local;
wire  signed [31:0] sext_ln21_25_fu_892_p1;
reg    M_2_we1_local;
reg   [31:0] M_2_d1_local;
wire  signed [31:0] sext_ln21_2_fu_571_p1;
reg    M_2_ce1_local;
reg   [11:0] M_2_address1_local;
wire  signed [31:0] sext_ln21_10_fu_680_p1;
reg    M_2_we0_local;
reg   [31:0] M_2_d0_local;
wire  signed [31:0] sext_ln21_18_fu_793_p1;
reg    M_2_ce0_local;
reg   [11:0] M_2_address0_local;
wire  signed [31:0] sext_ln21_26_fu_902_p1;
reg    M_3_we1_local;
reg   [31:0] M_3_d1_local;
wire  signed [31:0] sext_ln21_3_fu_581_p1;
reg    M_3_ce1_local;
reg   [11:0] M_3_address1_local;
reg    M_3_we0_local;
reg   [31:0] M_3_d0_local;
wire  signed [31:0] sext_ln21_11_fu_690_p1;
reg    M_3_ce0_local;
reg   [11:0] M_3_address0_local;
wire  signed [31:0] sext_ln21_19_fu_813_p1;
wire  signed [31:0] sext_ln21_27_fu_912_p1;
reg    M_4_we1_local;
reg   [31:0] M_4_d1_local;
wire  signed [31:0] sext_ln21_4_fu_591_p1;
reg    M_4_ce1_local;
reg   [11:0] M_4_address1_local;
reg    M_4_we0_local;
reg   [31:0] M_4_d0_local;
wire  signed [31:0] sext_ln21_12_fu_700_p1;
reg    M_4_ce0_local;
reg   [11:0] M_4_address0_local;
wire  signed [31:0] sext_ln21_20_fu_823_p1;
wire  signed [31:0] sext_ln21_28_fu_922_p1;
reg    M_5_we1_local;
reg   [31:0] M_5_d1_local;
wire  signed [31:0] sext_ln21_5_fu_601_p1;
reg    M_5_ce1_local;
reg   [11:0] M_5_address1_local;
reg    M_5_we0_local;
reg   [31:0] M_5_d0_local;
wire  signed [31:0] sext_ln21_13_fu_710_p1;
reg    M_5_ce0_local;
reg   [11:0] M_5_address0_local;
wire  signed [31:0] sext_ln21_21_fu_833_p1;
wire  signed [31:0] sext_ln21_29_fu_932_p1;
reg    M_6_we1_local;
reg   [31:0] M_6_d1_local;
wire  signed [31:0] sext_ln21_6_fu_611_p1;
reg    M_6_ce1_local;
reg   [11:0] M_6_address1_local;
reg    M_6_we0_local;
reg   [31:0] M_6_d0_local;
wire  signed [31:0] sext_ln21_14_fu_720_p1;
reg    M_6_ce0_local;
reg   [11:0] M_6_address0_local;
wire  signed [31:0] sext_ln21_22_fu_843_p1;
wire  signed [31:0] sext_ln21_30_fu_942_p1;
reg    M_7_we1_local;
reg   [31:0] M_7_d1_local;
wire  signed [31:0] sext_ln21_7_fu_621_p1;
reg    M_7_ce1_local;
reg   [11:0] M_7_address1_local;
reg    M_7_we0_local;
reg   [31:0] M_7_d0_local;
wire  signed [31:0] sext_ln21_15_fu_730_p1;
reg    M_7_ce0_local;
reg   [11:0] M_7_address0_local;
wire  signed [31:0] sext_ln21_23_fu_853_p1;
wire  signed [31:0] sext_ln21_31_fu_952_p1;
wire   [4:0] lshr_ln_fu_480_p4;
wire   [7:0] sub_ln21_fu_497_p2;
wire   [6:0] tmp_s_fu_508_p4;
wire   [7:0] or_ln_fu_518_p3;
wire   [5:0] tmp_20_fu_532_p4;
wire   [6:0] or_ln21_3_fu_542_p3;
wire   [7:0] zext_ln21_fu_550_p1;
wire   [7:0] sub_ln21_1_fu_554_p2;
wire   [7:0] add_ln21_fu_576_p2;
wire   [7:0] add_ln21_1_fu_586_p2;
wire   [7:0] add_ln21_2_fu_596_p2;
wire   [7:0] add_ln21_3_fu_606_p2;
wire   [7:0] add_ln21_4_fu_616_p2;
wire   [3:0] tmp_21_fu_626_p4;
wire   [4:0] or_ln1_fu_635_p3;
wire   [7:0] add_ln21_5_fu_655_p2;
wire   [7:0] add_ln21_6_fu_665_p2;
wire   [7:0] add_ln21_7_fu_675_p2;
wire   [7:0] add_ln21_8_fu_685_p2;
wire   [7:0] add_ln21_9_fu_695_p2;
wire   [7:0] add_ln21_10_fu_705_p2;
wire   [7:0] add_ln21_11_fu_715_p2;
wire   [7:0] add_ln21_12_fu_725_p2;
wire   [0:0] tmp_fu_744_p3;
wire   [4:0] or_ln21_1_fu_751_p4;
wire   [7:0] add_ln21_13_fu_768_p2;
wire   [7:0] add_ln21_14_fu_778_p2;
wire   [7:0] add_ln21_15_fu_788_p2;
wire   [7:0] add_ln21_16_fu_808_p2;
wire   [7:0] add_ln21_17_fu_818_p2;
wire   [7:0] add_ln21_18_fu_828_p2;
wire   [7:0] add_ln21_19_fu_838_p2;
wire   [7:0] add_ln21_20_fu_848_p2;
wire   [4:0] or_ln21_2_fu_858_p3;
wire   [7:0] add_ln21_21_fu_877_p2;
wire   [7:0] add_ln21_22_fu_887_p2;
wire   [7:0] add_ln21_23_fu_897_p2;
wire   [7:0] add_ln21_24_fu_907_p2;
wire   [7:0] add_ln21_25_fu_917_p2;
wire   [7:0] add_ln21_26_fu_927_p2;
wire   [7:0] add_ln21_27_fu_937_p2;
wire   [7:0] add_ln21_28_fu_947_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 a_idx_fu_140 = 8'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_fu_140 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_reg_981 == 1'd1))) begin
        a_idx_fu_140 <= add_ln20_fu_798_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_14_reg_964 <= ap_sig_allocacmp_a_idx_14;
        icmp_ln20_reg_981 <= icmp_ln20_fu_526_p2;
        sub_ln21_2_reg_985 <= sub_ln21_2_fu_565_p2;
        zext_ln17_reg_972[4 : 0] <= zext_ln17_fu_490_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_22_reg_1018 <= {{a_idx_14_reg_964[7:5]}};
        zext_ln21_2_reg_1023[0] <= zext_ln21_2_fu_761_p1[0];
zext_ln21_2_reg_1023[4 : 2] <= zext_ln21_2_fu_761_p1[4 : 2];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_0_address0_local = zext_ln21_3_fu_865_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_0_address0_local = zext_ln21_2_fu_761_p1;
    end else begin
        M_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_address1_local = zext_ln21_1_fu_643_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_address1_local = zext_ln17_fu_490_p1;
        end else begin
            M_0_address1_local = 'bx;
        end
    end else begin
        M_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_ce1_local = 1'b1;
    end else begin
        M_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_0_d0_local = sext_ln21_24_fu_882_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_0_d0_local = sext_ln21_16_fu_773_p1;
    end else begin
        M_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_d1_local = sext_ln21_8_fu_660_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_d1_local = sext_ln21_fu_503_p1;
        end else begin
            M_0_d1_local = 'bx;
        end
    end else begin
        M_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_reg_981 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_reg_981 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_we1_local = 1'b1;
    end else begin
        M_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_address0_local = zext_ln21_3_fu_865_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_address0_local = zext_ln21_2_fu_761_p1;
    end else begin
        M_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_1_address1_local = zext_ln21_1_fu_643_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_1_address1_local = zext_ln17_fu_490_p1;
        end else begin
            M_1_address1_local = 'bx;
        end
    end else begin
        M_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_ce1_local = 1'b1;
    end else begin
        M_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_d0_local = sext_ln21_25_fu_892_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_d0_local = sext_ln21_17_fu_783_p1;
    end else begin
        M_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_1_d1_local = sext_ln21_9_fu_670_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_1_d1_local = sext_ln21_1_fu_560_p1;
        end else begin
            M_1_d1_local = 'bx;
        end
    end else begin
        M_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_reg_981 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln20_fu_526_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_reg_981 == 1'd1)))) begin
        M_1_we1_local = 1'b1;
    end else begin
        M_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_address0_local = zext_ln21_3_fu_865_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_address0_local = zext_ln21_2_fu_761_p1;
    end else begin
        M_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_2_address1_local = zext_ln21_1_fu_643_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_2_address1_local = zext_ln17_fu_490_p1;
        end else begin
            M_2_address1_local = 'bx;
        end
    end else begin
        M_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_2_ce0_local = 1'b1;
    end else begin
        M_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_2_ce1_local = 1'b1;
    end else begin
        M_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_d0_local = sext_ln21_26_fu_902_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_d0_local = sext_ln21_18_fu_793_p1;
    end else begin
        M_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_2_d1_local = sext_ln21_10_fu_680_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_2_d1_local = sext_ln21_2_fu_571_p1;
        end else begin
            M_2_d1_local = 'bx;
        end
    end else begin
        M_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_reg_981 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_2_we0_local = 1'b1;
    end else begin
        M_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln20_fu_526_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_reg_981 == 1'd1)))) begin
        M_2_we1_local = 1'b1;
    end else begin
        M_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_address0_local = zext_ln21_3_fu_865_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_address0_local = zext_ln21_1_fu_643_p1;
    end else begin
        M_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_address1_local = zext_ln21_2_reg_1023;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_address1_local = zext_ln17_reg_972;
    end else begin
        M_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_3_ce0_local = 1'b1;
    end else begin
        M_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_3_ce1_local = 1'b1;
    end else begin
        M_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_d0_local = sext_ln21_27_fu_912_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_d0_local = sext_ln21_11_fu_690_p1;
    end else begin
        M_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_d1_local = sext_ln21_19_fu_813_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_d1_local = sext_ln21_3_fu_581_p1;
    end else begin
        M_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_reg_981 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_3_we0_local = 1'b1;
    end else begin
        M_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_reg_981 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_3_we1_local = 1'b1;
    end else begin
        M_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_4_address0_local = zext_ln21_3_fu_865_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_4_address0_local = zext_ln21_1_fu_643_p1;
    end else begin
        M_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_4_address1_local = zext_ln21_2_reg_1023;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_4_address1_local = zext_ln17_reg_972;
    end else begin
        M_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_4_ce0_local = 1'b1;
    end else begin
        M_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_4_ce1_local = 1'b1;
    end else begin
        M_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_4_d0_local = sext_ln21_28_fu_922_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_4_d0_local = sext_ln21_12_fu_700_p1;
    end else begin
        M_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_4_d1_local = sext_ln21_20_fu_823_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_4_d1_local = sext_ln21_4_fu_591_p1;
    end else begin
        M_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_reg_981 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_4_we0_local = 1'b1;
    end else begin
        M_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_reg_981 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_4_we1_local = 1'b1;
    end else begin
        M_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_5_address0_local = zext_ln21_3_fu_865_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_5_address0_local = zext_ln21_1_fu_643_p1;
    end else begin
        M_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_5_address1_local = zext_ln21_2_reg_1023;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_5_address1_local = zext_ln17_reg_972;
    end else begin
        M_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_5_ce0_local = 1'b1;
    end else begin
        M_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_5_ce1_local = 1'b1;
    end else begin
        M_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_5_d0_local = sext_ln21_29_fu_932_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_5_d0_local = sext_ln21_13_fu_710_p1;
    end else begin
        M_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_5_d1_local = sext_ln21_21_fu_833_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_5_d1_local = sext_ln21_5_fu_601_p1;
    end else begin
        M_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_reg_981 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_5_we0_local = 1'b1;
    end else begin
        M_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_reg_981 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_5_we1_local = 1'b1;
    end else begin
        M_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_6_address0_local = zext_ln21_3_fu_865_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_6_address0_local = zext_ln21_1_fu_643_p1;
    end else begin
        M_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_6_address1_local = zext_ln21_2_reg_1023;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_6_address1_local = zext_ln17_reg_972;
    end else begin
        M_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_6_ce0_local = 1'b1;
    end else begin
        M_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_6_ce1_local = 1'b1;
    end else begin
        M_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_6_d0_local = sext_ln21_30_fu_942_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_6_d0_local = sext_ln21_14_fu_720_p1;
    end else begin
        M_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_6_d1_local = sext_ln21_22_fu_843_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_6_d1_local = sext_ln21_6_fu_611_p1;
    end else begin
        M_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_reg_981 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_6_we0_local = 1'b1;
    end else begin
        M_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_reg_981 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_6_we1_local = 1'b1;
    end else begin
        M_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_7_address0_local = zext_ln21_3_fu_865_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_7_address0_local = zext_ln21_1_fu_643_p1;
    end else begin
        M_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_7_address1_local = zext_ln21_2_reg_1023;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_7_address1_local = zext_ln17_reg_972;
    end else begin
        M_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_7_ce0_local = 1'b1;
    end else begin
        M_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_7_ce1_local = 1'b1;
    end else begin
        M_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_7_d0_local = sext_ln21_31_fu_952_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_7_d0_local = sext_ln21_15_fu_730_p1;
    end else begin
        M_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_7_d1_local = sext_ln21_23_fu_853_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_7_d1_local = sext_ln21_7_fu_621_p1;
    end else begin
        M_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_reg_981 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_7_we0_local = 1'b1;
    end else begin
        M_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln20_reg_981 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_7_we1_local = 1'b1;
    end else begin
        M_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln20_fu_526_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_a_idx_14 = 8'd0;
    end else begin
        ap_sig_allocacmp_a_idx_14 = a_idx_fu_140;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
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
assign M_2_address0 = M_2_address0_local;
assign M_2_address1 = M_2_address1_local;
assign M_2_ce0 = M_2_ce0_local;
assign M_2_ce1 = M_2_ce1_local;
assign M_2_d0 = M_2_d0_local;
assign M_2_d1 = M_2_d1_local;
assign M_2_we0 = M_2_we0_local;
assign M_2_we1 = M_2_we1_local;
assign M_3_address0 = M_3_address0_local;
assign M_3_address1 = M_3_address1_local;
assign M_3_ce0 = M_3_ce0_local;
assign M_3_ce1 = M_3_ce1_local;
assign M_3_d0 = M_3_d0_local;
assign M_3_d1 = M_3_d1_local;
assign M_3_we0 = M_3_we0_local;
assign M_3_we1 = M_3_we1_local;
assign M_4_address0 = M_4_address0_local;
assign M_4_address1 = M_4_address1_local;
assign M_4_ce0 = M_4_ce0_local;
assign M_4_ce1 = M_4_ce1_local;
assign M_4_d0 = M_4_d0_local;
assign M_4_d1 = M_4_d1_local;
assign M_4_we0 = M_4_we0_local;
assign M_4_we1 = M_4_we1_local;
assign M_5_address0 = M_5_address0_local;
assign M_5_address1 = M_5_address1_local;
assign M_5_ce0 = M_5_ce0_local;
assign M_5_ce1 = M_5_ce1_local;
assign M_5_d0 = M_5_d0_local;
assign M_5_d1 = M_5_d1_local;
assign M_5_we0 = M_5_we0_local;
assign M_5_we1 = M_5_we1_local;
assign M_6_address0 = M_6_address0_local;
assign M_6_address1 = M_6_address1_local;
assign M_6_ce0 = M_6_ce0_local;
assign M_6_ce1 = M_6_ce1_local;
assign M_6_d0 = M_6_d0_local;
assign M_6_d1 = M_6_d1_local;
assign M_6_we0 = M_6_we0_local;
assign M_6_we1 = M_6_we1_local;
assign M_7_address0 = M_7_address0_local;
assign M_7_address1 = M_7_address1_local;
assign M_7_ce0 = M_7_ce0_local;
assign M_7_ce1 = M_7_ce1_local;
assign M_7_d0 = M_7_d0_local;
assign M_7_d1 = M_7_d1_local;
assign M_7_we0 = M_7_we0_local;
assign M_7_we1 = M_7_we1_local;
assign add_ln20_fu_798_p2 = (a_idx_14_reg_964 + 8'd32);
assign add_ln21_10_fu_705_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd245));
assign add_ln21_11_fu_715_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd244));
assign add_ln21_12_fu_725_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd243));
assign add_ln21_13_fu_768_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd242));
assign add_ln21_14_fu_778_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd241));
assign add_ln21_15_fu_788_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd240));
assign add_ln21_16_fu_808_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd239));
assign add_ln21_17_fu_818_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd238));
assign add_ln21_18_fu_828_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd237));
assign add_ln21_19_fu_838_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd236));
assign add_ln21_1_fu_586_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd254));
assign add_ln21_20_fu_848_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd235));
assign add_ln21_21_fu_877_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd234));
assign add_ln21_22_fu_887_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd233));
assign add_ln21_23_fu_897_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd232));
assign add_ln21_24_fu_907_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd231));
assign add_ln21_25_fu_917_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd230));
assign add_ln21_26_fu_927_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd229));
assign add_ln21_27_fu_937_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd228));
assign add_ln21_28_fu_947_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd227));
assign add_ln21_2_fu_596_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd253));
assign add_ln21_3_fu_606_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd252));
assign add_ln21_4_fu_616_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd251));
assign add_ln21_5_fu_655_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd250));
assign add_ln21_6_fu_665_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd249));
assign add_ln21_7_fu_675_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd248));
assign add_ln21_8_fu_685_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd247));
assign add_ln21_9_fu_695_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd246));
assign add_ln21_fu_576_p2 = ($signed(sub_ln21_2_reg_985) + $signed(8'd255));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln20_fu_526_p2 = ((or_ln_fu_518_p3 < 8'd129) ? 1'b1 : 1'b0);
assign lshr_ln_fu_480_p4 = {{ap_sig_allocacmp_a_idx_14[7:3]}};
assign or_ln1_fu_635_p3 = {{tmp_21_fu_626_p4}, {1'd1}};
assign or_ln21_1_fu_751_p4 = {{{tmp_22_fu_735_p4}, {1'd1}}, {tmp_fu_744_p3}};
assign or_ln21_2_fu_858_p3 = {{tmp_22_reg_1018}, {2'd3}};
assign or_ln21_3_fu_542_p3 = {{tmp_20_fu_532_p4}, {1'd1}};
assign or_ln_fu_518_p3 = {{tmp_s_fu_508_p4}, {1'd1}};
assign sext_ln21_10_fu_680_p1 = $signed(add_ln21_7_fu_675_p2);
assign sext_ln21_11_fu_690_p1 = $signed(add_ln21_8_fu_685_p2);
assign sext_ln21_12_fu_700_p1 = $signed(add_ln21_9_fu_695_p2);
assign sext_ln21_13_fu_710_p1 = $signed(add_ln21_10_fu_705_p2);
assign sext_ln21_14_fu_720_p1 = $signed(add_ln21_11_fu_715_p2);
assign sext_ln21_15_fu_730_p1 = $signed(add_ln21_12_fu_725_p2);
assign sext_ln21_16_fu_773_p1 = $signed(add_ln21_13_fu_768_p2);
assign sext_ln21_17_fu_783_p1 = $signed(add_ln21_14_fu_778_p2);
assign sext_ln21_18_fu_793_p1 = $signed(add_ln21_15_fu_788_p2);
assign sext_ln21_19_fu_813_p1 = $signed(add_ln21_16_fu_808_p2);
assign sext_ln21_1_fu_560_p1 = $signed(sub_ln21_1_fu_554_p2);
assign sext_ln21_20_fu_823_p1 = $signed(add_ln21_17_fu_818_p2);
assign sext_ln21_21_fu_833_p1 = $signed(add_ln21_18_fu_828_p2);
assign sext_ln21_22_fu_843_p1 = $signed(add_ln21_19_fu_838_p2);
assign sext_ln21_23_fu_853_p1 = $signed(add_ln21_20_fu_848_p2);
assign sext_ln21_24_fu_882_p1 = $signed(add_ln21_21_fu_877_p2);
assign sext_ln21_25_fu_892_p1 = $signed(add_ln21_22_fu_887_p2);
assign sext_ln21_26_fu_902_p1 = $signed(add_ln21_23_fu_897_p2);
assign sext_ln21_27_fu_912_p1 = $signed(add_ln21_24_fu_907_p2);
assign sext_ln21_28_fu_922_p1 = $signed(add_ln21_25_fu_917_p2);
assign sext_ln21_29_fu_932_p1 = $signed(add_ln21_26_fu_927_p2);
assign sext_ln21_2_fu_571_p1 = sub_ln21_2_fu_565_p2;
assign sext_ln21_30_fu_942_p1 = $signed(add_ln21_27_fu_937_p2);
assign sext_ln21_31_fu_952_p1 = $signed(add_ln21_28_fu_947_p2);
assign sext_ln21_3_fu_581_p1 = $signed(add_ln21_fu_576_p2);
assign sext_ln21_4_fu_591_p1 = $signed(add_ln21_1_fu_586_p2);
assign sext_ln21_5_fu_601_p1 = $signed(add_ln21_2_fu_596_p2);
assign sext_ln21_6_fu_611_p1 = $signed(add_ln21_3_fu_606_p2);
assign sext_ln21_7_fu_621_p1 = $signed(add_ln21_4_fu_616_p2);
assign sext_ln21_8_fu_660_p1 = $signed(add_ln21_5_fu_655_p2);
assign sext_ln21_9_fu_670_p1 = $signed(add_ln21_6_fu_665_p2);
assign sext_ln21_fu_503_p1 = $signed(sub_ln21_fu_497_p2);
assign sub_ln21_1_fu_554_p2 = (8'd0 - zext_ln21_fu_550_p1);
assign sub_ln21_2_fu_565_p2 = ($signed(8'd254) - $signed(ap_sig_allocacmp_a_idx_14));
assign sub_ln21_fu_497_p2 = (8'd0 - ap_sig_allocacmp_a_idx_14);
assign tmp_20_fu_532_p4 = {{ap_sig_allocacmp_a_idx_14[6:1]}};
assign tmp_21_fu_626_p4 = {{a_idx_14_reg_964[7:4]}};
assign tmp_22_fu_735_p4 = {{a_idx_14_reg_964[7:5]}};
assign tmp_fu_744_p3 = a_idx_14_reg_964[32'd3];
assign tmp_s_fu_508_p4 = {{ap_sig_allocacmp_a_idx_14[7:1]}};
assign zext_ln17_fu_490_p1 = lshr_ln_fu_480_p4;
assign zext_ln21_1_fu_643_p1 = or_ln1_fu_635_p3;
assign zext_ln21_2_fu_761_p1 = or_ln21_1_fu_751_p4;
assign zext_ln21_3_fu_865_p1 = or_ln21_2_fu_858_p3;
assign zext_ln21_fu_550_p1 = or_ln21_3_fu_542_p3;
always @ (posedge ap_clk) begin
    zext_ln17_reg_972[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln21_2_reg_1023[1] <= 1'b1;
    zext_ln21_2_reg_1023[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 