
module needwun_needwun_Pipeline_init_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_3_address0,M_3_ce0,M_3_we0,M_3_d0,M_3_address1,M_3_ce1,M_3_we1,M_3_d1,M_2_address0,M_2_ce0,M_2_we0,M_2_d0,M_2_address1,M_2_ce1,M_2_we1,M_2_d1,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_address1,M_1_ce1,M_1_we1,M_1_d1,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_address1,M_0_ce1,M_0_we1,M_0_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] M_3_address0;
output   M_3_ce0;
output   M_3_we0;
output  [31:0] M_3_d0;
output  [12:0] M_3_address1;
output   M_3_ce1;
output   M_3_we1;
output  [31:0] M_3_d1;
output  [12:0] M_2_address0;
output   M_2_ce0;
output   M_2_we0;
output  [31:0] M_2_d0;
output  [12:0] M_2_address1;
output   M_2_ce1;
output   M_2_we1;
output  [31:0] M_2_d1;
output  [12:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
output  [12:0] M_1_address1;
output   M_1_ce1;
output   M_1_we1;
output  [31:0] M_1_d1;
output  [12:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
output  [12:0] M_0_address1;
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
wire   [0:0] icmp_ln23_fu_368_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [7:0] b_idx_26_reg_1054;
wire    ap_block_pp0_stage0_11001;
wire   [12:0] tmp_fu_324_p4;
reg   [12:0] tmp_reg_1065;
reg   [0:0] icmp_ln23_reg_1071;
wire   [14:0] add_ln24_16_fu_386_p2;
reg   [14:0] add_ln24_16_reg_1075;
wire  signed [7:0] sub_ln24_4_fu_451_p2;
reg  signed [7:0] sub_ln24_4_reg_1090;
wire   [0:0] tmp_31_fu_586_p3;
reg   [0:0] tmp_31_reg_1096;
wire    ap_block_pp0_stage1_11001;
wire   [2:0] tmp_47_fu_746_p4;
reg   [2:0] tmp_47_reg_1101;
reg   [0:0] tmp_32_reg_1110;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln24_fu_334_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln24_2_fu_402_p1;
wire   [63:0] zext_ln24_8_fu_446_p1;
wire   [63:0] zext_ln24_4_fu_477_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln24_6_fu_529_p1;
wire   [63:0] zext_ln24_9_fu_572_p1;
wire   [63:0] zext_ln24_11_fu_635_p1;
wire   [63:0] zext_ln24_13_fu_678_p1;
wire   [63:0] zext_ln24_15_fu_711_p1;
wire   [63:0] zext_ln24_16_fu_741_p1;
wire   [63:0] zext_ln24_22_fu_803_p1;
wire   [63:0] zext_ln24_18_fu_843_p1;
wire   [63:0] zext_ln24_20_fu_888_p1;
wire   [63:0] zext_ln24_23_fu_933_p1;
wire   [63:0] zext_ln24_25_fu_978_p1;
wire   [63:0] zext_ln24_27_fu_1020_p1;
reg   [7:0] b_idx_fu_138;
wire   [7:0] add_ln23_fu_818_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_b_idx_26;
reg    M_0_we1_local;
reg   [31:0] M_0_d1_local;
wire  signed [31:0] sext_ln24_fu_345_p1;
reg    M_0_ce1_local;
reg   [12:0] M_0_address1_local;
reg    M_0_we0_local;
reg   [31:0] M_0_d0_local;
wire  signed [31:0] sext_ln24_4_fu_457_p1;
reg    M_0_ce0_local;
reg   [12:0] M_0_address0_local;
wire  signed [31:0] sext_ln24_8_fu_721_p1;
wire  signed [31:0] sext_ln24_12_fu_813_p1;
reg    M_1_we1_local;
reg   [31:0] M_1_d1_local;
wire  signed [31:0] sext_ln24_1_fu_435_p1;
reg    M_1_ce1_local;
reg   [12:0] M_1_address1_local;
wire  signed [31:0] sext_ln24_5_fu_615_p1;
reg    M_1_we0_local;
reg   [31:0] M_1_d0_local;
wire  signed [31:0] sext_ln24_9_fu_786_p1;
reg    M_1_ce0_local;
reg   [12:0] M_1_address0_local;
wire  signed [31:0] sext_ln24_13_fu_958_p1;
reg    M_2_we1_local;
reg   [31:0] M_2_d1_local;
wire  signed [31:0] sext_ln24_2_fu_509_p1;
reg    M_2_ce1_local;
reg   [12:0] M_2_address1_local;
reg    M_2_we0_local;
reg   [31:0] M_2_d0_local;
wire  signed [31:0] sext_ln24_6_fu_658_p1;
reg    M_2_ce0_local;
reg   [12:0] M_2_address0_local;
wire  signed [31:0] sext_ln24_10_fu_868_p1;
wire  signed [31:0] sext_ln24_14_fu_1000_p1;
reg    M_3_we1_local;
reg   [31:0] M_3_d1_local;
wire  signed [31:0] sext_ln24_3_fu_552_p1;
reg    M_3_ce1_local;
reg   [12:0] M_3_address1_local;
reg    M_3_we0_local;
reg   [31:0] M_3_d0_local;
wire  signed [31:0] sext_ln24_7_fu_701_p1;
reg    M_3_ce0_local;
reg   [12:0] M_3_address0_local;
wire  signed [31:0] sext_ln24_11_fu_913_p1;
wire  signed [31:0] sext_ln24_15_fu_1042_p1;
wire   [5:0] lshr_ln1_fu_314_p4;
wire   [7:0] sub_ln24_fu_339_p2;
wire   [6:0] tmp_s_fu_350_p4;
wire   [7:0] or_ln2_fu_360_p3;
wire   [14:0] p_shl_fu_378_p3;
wire   [14:0] zext_ln24_1_fu_374_p1;
wire   [12:0] lshr_ln24_1_fu_392_p4;
wire   [5:0] tmp_44_fu_407_p4;
wire   [6:0] or_ln24_s_fu_417_p3;
wire   [7:0] zext_ln24_3_fu_425_p1;
wire   [7:0] sub_ln24_1_fu_429_p2;
wire   [12:0] add_ln24_2_fu_440_p2;
wire   [14:0] add_ln24_fu_462_p2;
wire   [12:0] lshr_ln24_2_fu_467_p4;
wire   [4:0] tmp_45_fu_482_p4;
wire   [6:0] or_ln3_fu_491_p3;
wire   [7:0] zext_ln24_5_fu_499_p1;
wire   [7:0] sub_ln24_2_fu_503_p2;
wire   [14:0] add_ln24_1_fu_514_p2;
wire   [12:0] lshr_ln24_3_fu_519_p4;
wire   [6:0] or_ln24_1_fu_534_p3;
wire   [7:0] zext_ln24_7_fu_542_p1;
wire   [7:0] sub_ln24_3_fu_546_p2;
wire   [14:0] add_ln24_3_fu_557_p2;
wire   [12:0] lshr_ln24_4_fu_562_p4;
wire   [3:0] tmp_46_fu_577_p4;
wire   [6:0] or_ln24_2_fu_593_p5;
wire   [7:0] zext_ln24_10_fu_605_p1;
wire   [7:0] sub_ln24_5_fu_609_p2;
wire   [14:0] add_ln24_4_fu_620_p2;
wire   [12:0] lshr_ln24_5_fu_625_p4;
wire   [6:0] or_ln24_3_fu_640_p3;
wire   [7:0] zext_ln24_12_fu_648_p1;
wire   [7:0] sub_ln24_6_fu_652_p2;
wire   [14:0] add_ln24_5_fu_663_p2;
wire   [12:0] lshr_ln24_6_fu_668_p4;
wire   [6:0] or_ln24_4_fu_683_p3;
wire   [7:0] zext_ln24_14_fu_691_p1;
wire   [7:0] sub_ln24_7_fu_695_p2;
wire   [12:0] add_ln24_6_fu_706_p2;
wire   [7:0] add_ln24_7_fu_716_p2;
wire   [14:0] add_ln24_8_fu_726_p2;
wire   [12:0] lshr_ln24_7_fu_731_p4;
wire   [1:0] tmp_48_fu_755_p4;
wire   [6:0] or_ln24_5_fu_764_p5;
wire   [7:0] zext_ln24_17_fu_776_p1;
wire   [7:0] sub_ln24_8_fu_780_p2;
wire   [12:0] add_ln24_11_fu_798_p2;
wire   [7:0] add_ln24_12_fu_808_p2;
wire   [14:0] add_ln24_9_fu_828_p2;
wire   [12:0] lshr_ln24_8_fu_833_p4;
wire   [6:0] or_ln24_6_fu_848_p5;
wire   [7:0] zext_ln24_19_fu_858_p1;
wire   [7:0] sub_ln24_9_fu_862_p2;
wire   [14:0] add_ln24_10_fu_873_p2;
wire   [12:0] lshr_ln24_9_fu_878_p4;
wire   [6:0] or_ln24_7_fu_893_p5;
wire   [7:0] zext_ln24_21_fu_903_p1;
wire   [7:0] sub_ln24_10_fu_907_p2;
wire   [14:0] add_ln24_13_fu_918_p2;
wire   [12:0] lshr_ln24_s_fu_923_p4;
wire   [6:0] or_ln24_8_fu_938_p5;
wire   [7:0] zext_ln24_24_fu_948_p1;
wire   [7:0] sub_ln24_11_fu_952_p2;
wire   [14:0] add_ln24_14_fu_963_p2;
wire   [12:0] lshr_ln24_10_fu_968_p4;
wire   [6:0] or_ln24_9_fu_983_p3;
wire   [7:0] zext_ln24_26_fu_990_p1;
wire   [7:0] sub_ln24_12_fu_994_p2;
wire   [14:0] add_ln24_15_fu_1005_p2;
wire   [12:0] lshr_ln24_11_fu_1010_p4;
wire   [6:0] or_ln24_10_fu_1025_p3;
wire   [7:0] zext_ln24_28_fu_1032_p1;
wire   [7:0] sub_ln24_13_fu_1036_p2;
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
#0 b_idx_fu_138 = 8'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        b_idx_fu_138 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_1071 == 1'd1))) begin
        b_idx_fu_138 <= add_ln23_fu_818_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln24_16_reg_1075[14 : 1] <= add_ln24_16_fu_386_p2[14 : 1];
        b_idx_26_reg_1054 <= ap_sig_allocacmp_b_idx_26;
        icmp_ln23_reg_1071 <= icmp_ln23_fu_368_p2;
        sub_ln24_4_reg_1090 <= sub_ln24_4_fu_451_p2;
        tmp_reg_1065[5 : 0] <= tmp_fu_324_p4[5 : 0];
tmp_reg_1065[12 : 7] <= tmp_fu_324_p4[12 : 7];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_31_reg_1096 <= b_idx_26_reg_1054[32'd1];
        tmp_32_reg_1110 <= b_idx_26_reg_1054[32'd2];
        tmp_47_reg_1101 <= {{b_idx_26_reg_1054[6:4]}};
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_address0_local = zext_ln24_22_fu_803_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_address0_local = zext_ln24_8_fu_446_p1;
        end else begin
            M_0_address0_local = 'bx;
        end
    end else begin
        M_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_address1_local = zext_ln24_15_fu_711_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_address1_local = zext_ln24_fu_334_p1;
        end else begin
            M_0_address1_local = 'bx;
        end
    end else begin
        M_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_d0_local = sext_ln24_12_fu_813_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_d0_local = sext_ln24_4_fu_457_p1;
        end else begin
            M_0_d0_local = 'bx;
        end
    end else begin
        M_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_d1_local = sext_ln24_8_fu_721_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_d1_local = sext_ln24_fu_345_p1;
        end else begin
            M_0_d1_local = 'bx;
        end
    end else begin
        M_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln23_fu_368_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_1071 == 1'd1)))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_1071 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_we1_local = 1'b1;
    end else begin
        M_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_address0_local = zext_ln24_23_fu_933_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_address0_local = zext_ln24_16_fu_741_p1;
    end else begin
        M_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_1_address1_local = zext_ln24_9_fu_572_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_1_address1_local = zext_ln24_2_fu_402_p1;
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
        M_1_d0_local = sext_ln24_13_fu_958_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_d0_local = sext_ln24_9_fu_786_p1;
    end else begin
        M_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_1_d1_local = sext_ln24_5_fu_615_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_1_d1_local = sext_ln24_1_fu_435_p1;
        end else begin
            M_1_d1_local = 'bx;
        end
    end else begin
        M_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_1071 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln23_fu_368_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_1071 == 1'd1)))) begin
        M_1_we1_local = 1'b1;
    end else begin
        M_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_address0_local = zext_ln24_25_fu_978_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_address0_local = zext_ln24_11_fu_635_p1;
    end else begin
        M_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_address1_local = zext_ln24_18_fu_843_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_address1_local = zext_ln24_4_fu_477_p1;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_2_ce1_local = 1'b1;
    end else begin
        M_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_d0_local = sext_ln24_14_fu_1000_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_d0_local = sext_ln24_6_fu_658_p1;
    end else begin
        M_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_d1_local = sext_ln24_10_fu_868_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_d1_local = sext_ln24_2_fu_509_p1;
    end else begin
        M_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_1071 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_2_we0_local = 1'b1;
    end else begin
        M_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_1071 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_2_we1_local = 1'b1;
    end else begin
        M_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_address0_local = zext_ln24_27_fu_1020_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_address0_local = zext_ln24_13_fu_678_p1;
    end else begin
        M_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_address1_local = zext_ln24_20_fu_888_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_address1_local = zext_ln24_6_fu_529_p1;
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
        M_3_d0_local = sext_ln24_15_fu_1042_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_d0_local = sext_ln24_7_fu_701_p1;
    end else begin
        M_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_d1_local = sext_ln24_11_fu_913_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_d1_local = sext_ln24_3_fu_552_p1;
    end else begin
        M_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_1071 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_3_we0_local = 1'b1;
    end else begin
        M_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln23_reg_1071 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_3_we1_local = 1'b1;
    end else begin
        M_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln23_fu_368_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_b_idx_26 = 8'd0;
    end else begin
        ap_sig_allocacmp_b_idx_26 = b_idx_fu_138;
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
assign add_ln23_fu_818_p2 = (b_idx_26_reg_1054 + 8'd16);
assign add_ln24_10_fu_873_p2 = (add_ln24_16_reg_1075 + 15'd1290);
assign add_ln24_11_fu_798_p2 = (tmp_reg_1065 + 13'd387);
assign add_ln24_12_fu_808_p2 = ($signed(sub_ln24_4_reg_1090) + $signed(8'd248));
assign add_ln24_13_fu_918_p2 = (add_ln24_16_reg_1075 + 15'd1548);
assign add_ln24_14_fu_963_p2 = (add_ln24_16_reg_1075 + 15'd1677);
assign add_ln24_15_fu_1005_p2 = (add_ln24_16_reg_1075 + 15'd1806);
assign add_ln24_16_fu_386_p2 = (p_shl_fu_378_p3 + zext_ln24_1_fu_374_p1);
assign add_ln24_1_fu_514_p2 = (add_ln24_16_reg_1075 + 15'd258);
assign add_ln24_2_fu_440_p2 = (tmp_fu_324_p4 + 13'd129);
assign add_ln24_3_fu_557_p2 = (add_ln24_16_reg_1075 + 15'd516);
assign add_ln24_4_fu_620_p2 = (add_ln24_16_reg_1075 + 15'd645);
assign add_ln24_5_fu_663_p2 = (add_ln24_16_reg_1075 + 15'd774);
assign add_ln24_6_fu_706_p2 = (tmp_reg_1065 + 13'd258);
assign add_ln24_7_fu_716_p2 = ($signed(sub_ln24_4_reg_1090) + $signed(8'd252));
assign add_ln24_8_fu_726_p2 = (add_ln24_16_reg_1075 + 15'd1032);
assign add_ln24_9_fu_828_p2 = (add_ln24_16_reg_1075 + 15'd1161);
assign add_ln24_fu_462_p2 = (add_ln24_16_reg_1075 + 15'd129);
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
assign icmp_ln23_fu_368_p2 = ((or_ln2_fu_360_p3 < 8'd129) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_314_p4 = {{ap_sig_allocacmp_b_idx_26[7:2]}};
assign lshr_ln24_10_fu_968_p4 = {{add_ln24_14_fu_963_p2[14:2]}};
assign lshr_ln24_11_fu_1010_p4 = {{add_ln24_15_fu_1005_p2[14:2]}};
assign lshr_ln24_1_fu_392_p4 = {{add_ln24_16_fu_386_p2[14:2]}};
assign lshr_ln24_2_fu_467_p4 = {{add_ln24_fu_462_p2[14:2]}};
assign lshr_ln24_3_fu_519_p4 = {{add_ln24_1_fu_514_p2[14:2]}};
assign lshr_ln24_4_fu_562_p4 = {{add_ln24_3_fu_557_p2[14:2]}};
assign lshr_ln24_5_fu_625_p4 = {{add_ln24_4_fu_620_p2[14:2]}};
assign lshr_ln24_6_fu_668_p4 = {{add_ln24_5_fu_663_p2[14:2]}};
assign lshr_ln24_7_fu_731_p4 = {{add_ln24_8_fu_726_p2[14:2]}};
assign lshr_ln24_8_fu_833_p4 = {{add_ln24_9_fu_828_p2[14:2]}};
assign lshr_ln24_9_fu_878_p4 = {{add_ln24_10_fu_873_p2[14:2]}};
assign lshr_ln24_s_fu_923_p4 = {{add_ln24_13_fu_918_p2[14:2]}};
assign or_ln24_10_fu_1025_p3 = {{tmp_47_reg_1101}, {4'd15}};
assign or_ln24_1_fu_534_p3 = {{tmp_45_fu_482_p4}, {2'd3}};
assign or_ln24_2_fu_593_p5 = {{{{tmp_46_fu_577_p4}, {1'd1}}, {tmp_31_fu_586_p3}}, {1'd1}};
assign or_ln24_3_fu_640_p3 = {{tmp_46_fu_577_p4}, {3'd6}};
assign or_ln24_4_fu_683_p3 = {{tmp_46_fu_577_p4}, {3'd7}};
assign or_ln24_5_fu_764_p5 = {{{{tmp_47_fu_746_p4}, {1'd1}}, {tmp_48_fu_755_p4}}, {1'd1}};
assign or_ln24_6_fu_848_p5 = {{{{tmp_47_reg_1101}, {1'd1}}, {tmp_32_reg_1110}}, {2'd2}};
assign or_ln24_7_fu_893_p5 = {{{{tmp_47_reg_1101}, {1'd1}}, {tmp_32_reg_1110}}, {2'd3}};
assign or_ln24_8_fu_938_p5 = {{{{tmp_47_reg_1101}, {2'd3}}, {tmp_31_reg_1096}}, {1'd1}};
assign or_ln24_9_fu_983_p3 = {{tmp_47_reg_1101}, {4'd14}};
assign or_ln24_s_fu_417_p3 = {{tmp_44_fu_407_p4}, {1'd1}};
assign or_ln2_fu_360_p3 = {{tmp_s_fu_350_p4}, {1'd1}};
assign or_ln3_fu_491_p3 = {{tmp_45_fu_482_p4}, {2'd2}};
assign p_shl_fu_378_p3 = {{tmp_s_fu_350_p4}, {8'd128}};
assign sext_ln24_10_fu_868_p1 = $signed(sub_ln24_9_fu_862_p2);
assign sext_ln24_11_fu_913_p1 = $signed(sub_ln24_10_fu_907_p2);
assign sext_ln24_12_fu_813_p1 = $signed(add_ln24_12_fu_808_p2);
assign sext_ln24_13_fu_958_p1 = $signed(sub_ln24_11_fu_952_p2);
assign sext_ln24_14_fu_1000_p1 = $signed(sub_ln24_12_fu_994_p2);
assign sext_ln24_15_fu_1042_p1 = $signed(sub_ln24_13_fu_1036_p2);
assign sext_ln24_1_fu_435_p1 = $signed(sub_ln24_1_fu_429_p2);
assign sext_ln24_2_fu_509_p1 = $signed(sub_ln24_2_fu_503_p2);
assign sext_ln24_3_fu_552_p1 = $signed(sub_ln24_3_fu_546_p2);
assign sext_ln24_4_fu_457_p1 = sub_ln24_4_fu_451_p2;
assign sext_ln24_5_fu_615_p1 = $signed(sub_ln24_5_fu_609_p2);
assign sext_ln24_6_fu_658_p1 = $signed(sub_ln24_6_fu_652_p2);
assign sext_ln24_7_fu_701_p1 = $signed(sub_ln24_7_fu_695_p2);
assign sext_ln24_8_fu_721_p1 = $signed(add_ln24_7_fu_716_p2);
assign sext_ln24_9_fu_786_p1 = $signed(sub_ln24_8_fu_780_p2);
assign sext_ln24_fu_345_p1 = $signed(sub_ln24_fu_339_p2);
assign sub_ln24_10_fu_907_p2 = (8'd0 - zext_ln24_21_fu_903_p1);
assign sub_ln24_11_fu_952_p2 = (8'd0 - zext_ln24_24_fu_948_p1);
assign sub_ln24_12_fu_994_p2 = (8'd0 - zext_ln24_26_fu_990_p1);
assign sub_ln24_13_fu_1036_p2 = (8'd0 - zext_ln24_28_fu_1032_p1);
assign sub_ln24_1_fu_429_p2 = (8'd0 - zext_ln24_3_fu_425_p1);
assign sub_ln24_2_fu_503_p2 = (8'd0 - zext_ln24_5_fu_499_p1);
assign sub_ln24_3_fu_546_p2 = (8'd0 - zext_ln24_7_fu_542_p1);
assign sub_ln24_4_fu_451_p2 = ($signed(8'd252) - $signed(ap_sig_allocacmp_b_idx_26));
assign sub_ln24_5_fu_609_p2 = (8'd0 - zext_ln24_10_fu_605_p1);
assign sub_ln24_6_fu_652_p2 = (8'd0 - zext_ln24_12_fu_648_p1);
assign sub_ln24_7_fu_695_p2 = (8'd0 - zext_ln24_14_fu_691_p1);
assign sub_ln24_8_fu_780_p2 = (8'd0 - zext_ln24_17_fu_776_p1);
assign sub_ln24_9_fu_862_p2 = (8'd0 - zext_ln24_19_fu_858_p1);
assign sub_ln24_fu_339_p2 = (8'd0 - ap_sig_allocacmp_b_idx_26);
assign tmp_31_fu_586_p3 = b_idx_26_reg_1054[32'd1];
assign tmp_44_fu_407_p4 = {{ap_sig_allocacmp_b_idx_26[6:1]}};
assign tmp_45_fu_482_p4 = {{b_idx_26_reg_1054[6:2]}};
assign tmp_46_fu_577_p4 = {{b_idx_26_reg_1054[6:3]}};
assign tmp_47_fu_746_p4 = {{b_idx_26_reg_1054[6:4]}};
assign tmp_48_fu_755_p4 = {{b_idx_26_reg_1054[2:1]}};
assign tmp_fu_324_p4 = {{{lshr_ln1_fu_314_p4}, {1'd0}}, {lshr_ln1_fu_314_p4}};
assign tmp_s_fu_350_p4 = {{ap_sig_allocacmp_b_idx_26[7:1]}};
assign zext_ln24_10_fu_605_p1 = or_ln24_2_fu_593_p5;
assign zext_ln24_11_fu_635_p1 = lshr_ln24_5_fu_625_p4;
assign zext_ln24_12_fu_648_p1 = or_ln24_3_fu_640_p3;
assign zext_ln24_13_fu_678_p1 = lshr_ln24_6_fu_668_p4;
assign zext_ln24_14_fu_691_p1 = or_ln24_4_fu_683_p3;
assign zext_ln24_15_fu_711_p1 = add_ln24_6_fu_706_p2;
assign zext_ln24_16_fu_741_p1 = lshr_ln24_7_fu_731_p4;
assign zext_ln24_17_fu_776_p1 = or_ln24_5_fu_764_p5;
assign zext_ln24_18_fu_843_p1 = lshr_ln24_8_fu_833_p4;
assign zext_ln24_19_fu_858_p1 = or_ln24_6_fu_848_p5;
assign zext_ln24_1_fu_374_p1 = or_ln2_fu_360_p3;
assign zext_ln24_20_fu_888_p1 = lshr_ln24_9_fu_878_p4;
assign zext_ln24_21_fu_903_p1 = or_ln24_7_fu_893_p5;
assign zext_ln24_22_fu_803_p1 = add_ln24_11_fu_798_p2;
assign zext_ln24_23_fu_933_p1 = lshr_ln24_s_fu_923_p4;
assign zext_ln24_24_fu_948_p1 = or_ln24_8_fu_938_p5;
assign zext_ln24_25_fu_978_p1 = lshr_ln24_10_fu_968_p4;
assign zext_ln24_26_fu_990_p1 = or_ln24_9_fu_983_p3;
assign zext_ln24_27_fu_1020_p1 = lshr_ln24_11_fu_1010_p4;
assign zext_ln24_28_fu_1032_p1 = or_ln24_10_fu_1025_p3;
assign zext_ln24_2_fu_402_p1 = lshr_ln24_1_fu_392_p4;
assign zext_ln24_3_fu_425_p1 = or_ln24_s_fu_417_p3;
assign zext_ln24_4_fu_477_p1 = lshr_ln24_2_fu_467_p4;
assign zext_ln24_5_fu_499_p1 = or_ln3_fu_491_p3;
assign zext_ln24_6_fu_529_p1 = lshr_ln24_3_fu_519_p4;
assign zext_ln24_7_fu_542_p1 = or_ln24_1_fu_534_p3;
assign zext_ln24_8_fu_446_p1 = add_ln24_2_fu_440_p2;
assign zext_ln24_9_fu_572_p1 = lshr_ln24_4_fu_562_p4;
assign zext_ln24_fu_334_p1 = tmp_fu_324_p4;
always @ (posedge ap_clk) begin
    tmp_reg_1065[6] <= 1'b0;
    add_ln24_16_reg_1075[0] <= 1'b1;
end
endmodule 
