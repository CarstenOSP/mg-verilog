module stencil3d_stencil3d_Pipeline_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,i_2,j_1,orig_address0,orig_ce0,orig_q0,orig_address1,orig_ce1,orig_q1,empty_8,empty_9,indvars_iv_next277,tmp2,C_load,C_load_1,sol_address0,sol_ce0,sol_we0,sol_d0,empty); 
parameter    ap_ST_fsm_pp0_stage0 = 11'd1;
parameter    ap_ST_fsm_pp0_stage1 = 11'd2;
parameter    ap_ST_fsm_pp0_stage2 = 11'd4;
parameter    ap_ST_fsm_pp0_stage3 = 11'd8;
parameter    ap_ST_fsm_pp0_stage4 = 11'd16;
parameter    ap_ST_fsm_pp0_stage5 = 11'd32;
parameter    ap_ST_fsm_pp0_stage6 = 11'd64;
parameter    ap_ST_fsm_pp0_stage7 = 11'd128;
parameter    ap_ST_fsm_pp0_stage8 = 11'd256;
parameter    ap_ST_fsm_pp0_stage9 = 11'd512;
parameter    ap_ST_fsm_pp0_stage10 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [4:0] i_2;
input  [4:0] j_1;
output  [13:0] orig_address0;
output   orig_ce0;
input  [31:0] orig_q0;
output  [13:0] orig_address1;
output   orig_ce1;
input  [31:0] orig_q1;
input  [9:0] empty_8;
input  [9:0] empty_9;
input  [4:0] indvars_iv_next277;
input  [4:0] tmp2;
input  [31:0] C_load;
input  [31:0] C_load_1;
output  [13:0] sol_address0;
output   sol_ce0;
output   sol_we0;
output  [31:0] sol_d0;
input  [4:0] empty;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] icmp_ln38_reg_1011;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_356;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_361;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_367;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] grp_fu_352_p2;
reg   [31:0] reg_372;
reg   [31:0] reg_376;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] reg_380;
reg   [3:0] k_1_reg_930;
wire   [3:0] add_ln44_fu_407_p2;
reg   [3:0] add_ln44_reg_947;
wire   [63:0] zext_ln44_fu_423_p1;
reg   [63:0] zext_ln44_reg_955;
reg   [63:0] zext_ln44_reg_955_pp0_iter1_reg;
reg  signed [31:0] sum0_1_reg_965;
wire   [3:0] add_ln44_2_fu_470_p2;
reg   [3:0] add_ln44_2_reg_987;
wire   [63:0] zext_ln44_1_fu_483_p1;
reg   [63:0] zext_ln44_1_reg_996;
reg   [63:0] zext_ln44_1_reg_996_pp0_iter1_reg;
wire   [31:0] add_ln48_3_fu_493_p2;
reg   [31:0] add_ln48_3_reg_1006;
wire   [0:0] icmp_ln38_fu_499_p2;
reg   [0:0] icmp_ln38_reg_1011_pp0_iter1_reg;
wire   [31:0] add_ln48_9_fu_534_p2;
reg   [31:0] add_ln48_9_reg_1025;
wire   [3:0] add_ln44_4_fu_540_p2;
reg   [3:0] add_ln44_4_reg_1030;
wire   [63:0] zext_ln44_2_fu_553_p1;
reg   [63:0] zext_ln44_2_reg_1037;
reg   [63:0] zext_ln44_2_reg_1037_pp0_iter1_reg;
reg  signed [31:0] sum0_3_reg_1052;
reg   [31:0] orig_load_977_reg_1058;
wire   [63:0] zext_ln39_fu_636_p1;
reg   [63:0] zext_ln39_reg_1073;
wire   [31:0] add_ln48_15_fu_657_p2;
reg   [31:0] add_ln48_15_reg_1088;
wire   [31:0] add_ln48_21_fu_692_p2;
reg   [31:0] add_ln48_21_reg_1103;
reg   [31:0] mul_ln48_6_reg_1108;
wire   [31:0] add_ln48_fu_697_p2;
reg   [31:0] add_ln48_reg_1113;
wire  signed [31:0] add_ln48_4_fu_730_p2;
reg  signed [31:0] add_ln48_4_reg_1128;
wire   [31:0] add_ln48_6_fu_735_p2;
reg   [31:0] add_ln48_6_reg_1133;
wire  signed [31:0] add_ln48_10_fu_768_p2;
reg  signed [31:0] add_ln48_10_reg_1148;
wire   [31:0] add_ln48_12_fu_773_p2;
reg   [31:0] add_ln48_12_reg_1153;
reg   [31:0] mul_ln48_1_reg_1168;
wire  signed [31:0] add_ln48_16_fu_805_p2;
reg  signed [31:0] add_ln48_16_reg_1173;
wire   [31:0] add_ln48_18_fu_810_p2;
reg   [31:0] add_ln48_18_reg_1178;
wire  signed [31:0] add_ln48_22_fu_827_p2;
reg  signed [31:0] add_ln48_22_reg_1183;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
reg    ap_condition_exit_pp0_iter1_stage2;
wire    ap_block_pp0_stage5_subdone;
wire   [63:0] zext_ln43_fu_402_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln45_fu_441_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln42_1_fu_453_p1;
wire   [63:0] zext_ln43_1_fu_465_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln42_2_fu_511_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln43_2_fu_523_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln42_3_fu_566_p1;
wire   [63:0] zext_ln43_3_fu_581_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln44_3_fu_619_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln40_fu_647_p1;
wire   [63:0] zext_ln41_fu_669_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln42_fu_681_p1;
wire   [63:0] zext_ln40_1_fu_709_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln41_1_fu_720_p1;
wire   [63:0] zext_ln40_2_fu_747_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln41_2_fu_758_p1;
wire   [63:0] zext_ln40_3_fu_784_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln41_3_fu_795_p1;
reg   [3:0] k_fu_72;
wire   [3:0] trunc_ln44_fu_592_p1;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_1;
reg    orig_ce1_local;
reg   [13:0] orig_address1_local;
reg    orig_ce0_local;
reg   [13:0] orig_address0_local;
reg    sol_we0_local;
reg   [31:0] sol_d0_local;
wire   [31:0] add_ln48_5_fu_816_p2;
reg    sol_ce0_local;
reg   [13:0] sol_address0_local;
wire   [31:0] add_ln48_11_fu_832_p2;
wire   [31:0] add_ln48_17_fu_839_p2;
wire   [31:0] add_ln48_23_fu_846_p2;
reg  signed [31:0] grp_fu_352_p0;
reg  signed [31:0] grp_fu_352_p1;
wire   [13:0] add_ln4_fu_392_p4;
wire   [13:0] add_ln44_1_fu_413_p4;
wire   [3:0] add_ln45_fu_428_p2;
wire   [13:0] add_ln45_1_fu_433_p4;
wire   [13:0] add_ln42_1_fu_446_p4;
wire   [13:0] add_ln43_1_fu_458_p4;
wire   [13:0] add_ln44_3_fu_475_p4;
wire   [31:0] add_ln48_2_fu_488_p2;
wire   [13:0] add_ln42_2_fu_504_p4;
wire   [13:0] add_ln43_2_fu_516_p4;
wire  signed [31:0] add_ln48_8_fu_528_p1;
wire   [31:0] add_ln48_8_fu_528_p2;
wire   [13:0] add_ln44_5_fu_545_p4;
wire   [13:0] add_ln42_3_fu_558_p4;
wire   [13:0] add_ln43_3_fu_574_p4;
wire   [4:0] zext_ln12_fu_571_p1;
wire   [4:0] add_ln44_6_fu_586_p2;
wire   [3:0] tmp_1_fu_601_p4;
wire   [4:0] or_ln44_fu_596_p2;
wire   [13:0] add_ln44_7_fu_610_p4;
wire   [13:0] add_ln_fu_629_p4;
wire   [13:0] add_ln1_fu_641_p3;
wire   [31:0] add_ln48_14_fu_652_p2;
wire   [13:0] add_ln2_fu_663_p3;
wire   [13:0] add_ln3_fu_674_p4;
wire   [31:0] add_ln48_20_fu_686_p2;
wire   [13:0] add_ln40_1_fu_703_p3;
wire   [13:0] add_ln41_1_fu_714_p3;
wire   [31:0] add_ln48_1_fu_725_p2;
wire  signed [31:0] add_ln48_6_fu_735_p0;
wire   [13:0] add_ln40_2_fu_741_p3;
wire   [13:0] add_ln41_2_fu_752_p3;
wire   [31:0] add_ln48_7_fu_763_p2;
wire   [13:0] add_ln40_3_fu_778_p3;
wire   [13:0] add_ln41_3_fu_789_p3;
wire   [31:0] add_ln48_13_fu_800_p2;
wire  signed [31:0] add_ln48_18_fu_810_p0;
wire   [31:0] add_ln48_19_fu_822_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
reg   [10:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_72 = 4'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_352_p0),.din1(grp_fu_352_p1),.ce(1'b1),.dout(grp_fu_352_p2));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage10),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage2) | ((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage2)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_72 <= 4'd1;
    end else if (((icmp_ln38_reg_1011 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        k_fu_72 <= trunc_ln44_fu_592_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_361 <= orig_q0;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_361 <= orig_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        reg_367 <= orig_q1;
    end else if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_367 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln44_2_reg_987 <= add_ln44_2_fu_470_p2;
        zext_ln44_1_reg_996[13 : 0] <= zext_ln44_1_fu_483_p1[13 : 0];
        zext_ln44_1_reg_996_pp0_iter1_reg[13 : 0] <= zext_ln44_1_reg_996[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln44_4_reg_1030 <= add_ln44_4_fu_540_p2;
        add_ln48_9_reg_1025 <= add_ln48_9_fu_534_p2;
        zext_ln44_2_reg_1037[13 : 0] <= zext_ln44_2_fu_553_p1[13 : 0];
        zext_ln44_2_reg_1037_pp0_iter1_reg[13 : 0] <= zext_ln44_2_reg_1037[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln44_reg_947 <= add_ln44_fu_407_p2;
        add_ln48_16_reg_1173 <= add_ln48_16_fu_805_p2;
        add_ln48_18_reg_1178 <= add_ln48_18_fu_810_p2;
        k_1_reg_930 <= ap_sig_allocacmp_k_1;
        zext_ln44_reg_955[13 : 0] <= zext_ln44_fu_423_p1[13 : 0];
        zext_ln44_reg_955_pp0_iter1_reg[13 : 0] <= zext_ln44_reg_955[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln48_10_reg_1148 <= add_ln48_10_fu_768_p2;
        add_ln48_12_reg_1153 <= add_ln48_12_fu_773_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln48_15_reg_1088 <= add_ln48_15_fu_657_p2;
        zext_ln39_reg_1073[13 : 0] <= zext_ln39_fu_636_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln48_21_reg_1103 <= add_ln48_21_fu_692_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_22_reg_1183 <= add_ln48_22_fu_827_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln48_3_reg_1006 <= add_ln48_3_fu_493_p2;
        icmp_ln38_reg_1011 <= icmp_ln38_fu_499_p2;
        icmp_ln38_reg_1011_pp0_iter1_reg <= icmp_ln38_reg_1011;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln48_4_reg_1128 <= add_ln48_4_fu_730_p2;
        add_ln48_6_reg_1133 <= add_ln48_6_fu_735_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln48_reg_1113 <= add_ln48_fu_697_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln48_1_reg_1168 <= grp_fu_352_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_ln48_6_reg_1108 <= grp_fu_352_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        orig_load_977_reg_1058 <= orig_q0;
        sum0_3_reg_1052 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_356 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_372 <= grp_fu_352_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_376 <= grp_fu_352_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_380 <= grp_fu_352_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum0_1_reg_965 <= orig_q0;
    end
end
always @ (*) begin
    if (((icmp_ln38_reg_1011 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_reg_1011 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_1 = 4'd1;
    end else begin
        ap_sig_allocacmp_k_1 = k_fu_72;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_352_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_352_p0 = reg_356;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_352_p0 = sum0_3_reg_1052;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_352_p0 = reg_361;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_352_p0 = sum0_1_reg_965;
    end else begin
        grp_fu_352_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_352_p1 = add_ln48_22_reg_1183;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_352_p1 = add_ln48_16_reg_1173;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_352_p1 = add_ln48_10_reg_1148;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_352_p1 = add_ln48_4_reg_1128;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_352_p1 = C_load;
    end else begin
        grp_fu_352_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            orig_address0_local = zext_ln41_3_fu_795_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            orig_address0_local = zext_ln41_2_fu_758_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_address0_local = zext_ln41_1_fu_720_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_address0_local = zext_ln42_fu_681_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_address0_local = zext_ln40_fu_647_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_address0_local = zext_ln44_3_fu_619_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_address0_local = zext_ln42_3_fu_566_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_address0_local = zext_ln43_2_fu_523_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_address0_local = zext_ln44_1_fu_483_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_address0_local = zext_ln42_1_fu_453_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_address0_local = zext_ln44_fu_423_p1;
        end else begin
            orig_address0_local = 'bx;
        end
    end else begin
        orig_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            orig_address1_local = zext_ln40_3_fu_784_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            orig_address1_local = zext_ln40_2_fu_747_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            orig_address1_local = zext_ln40_1_fu_709_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            orig_address1_local = zext_ln41_fu_669_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            orig_address1_local = zext_ln39_fu_636_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_address1_local = zext_ln43_3_fu_581_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_address1_local = zext_ln44_2_fu_553_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_address1_local = zext_ln42_2_fu_511_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_address1_local = zext_ln43_1_fu_465_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_address1_local = zext_ln45_fu_441_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_address1_local = zext_ln43_fu_402_p1;
        end else begin
            orig_address1_local = 'bx;
        end
    end else begin
        orig_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        orig_ce0_local = 1'b1;
    end else begin
        orig_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        orig_ce1_local = 1'b1;
    end else begin
        orig_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_address0_local = zext_ln44_2_reg_1037_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_address0_local = zext_ln44_1_reg_996_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_address0_local = zext_ln44_reg_955_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sol_address0_local = zext_ln39_reg_1073;
        end else begin
            sol_address0_local = 'bx;
        end
    end else begin
        sol_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        sol_ce0_local = 1'b1;
    end else begin
        sol_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_d0_local = add_ln48_23_fu_846_p2;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            sol_d0_local = add_ln48_17_fu_839_p2;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sol_d0_local = add_ln48_11_fu_832_p2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sol_d0_local = add_ln48_5_fu_816_p2;
        end else begin
            sol_d0_local = 'bx;
        end
    end else begin
        sol_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln38_reg_1011 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln38_reg_1011_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        sol_we0_local = 1'b1;
    end else begin
        sol_we0_local = 1'b0;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln1_fu_641_p3 = {{empty_8}, {k_1_reg_930}};
assign add_ln2_fu_663_p3 = {{empty_9}, {k_1_reg_930}};
assign add_ln3_fu_674_p4 = {{{i_2}, {indvars_iv_next277}}, {k_1_reg_930}};
assign add_ln40_1_fu_703_p3 = {{empty_8}, {add_ln44_reg_947}};
assign add_ln40_2_fu_741_p3 = {{empty_8}, {add_ln44_2_reg_987}};
assign add_ln40_3_fu_778_p3 = {{empty_8}, {add_ln44_4_reg_1030}};
assign add_ln41_1_fu_714_p3 = {{empty_9}, {add_ln44_reg_947}};
assign add_ln41_2_fu_752_p3 = {{empty_9}, {add_ln44_2_reg_987}};
assign add_ln41_3_fu_789_p3 = {{empty_9}, {add_ln44_4_reg_1030}};
assign add_ln42_1_fu_446_p4 = {{{i_2}, {indvars_iv_next277}}, {add_ln44_reg_947}};
assign add_ln42_2_fu_504_p4 = {{{i_2}, {indvars_iv_next277}}, {add_ln44_2_reg_987}};
assign add_ln42_3_fu_558_p4 = {{{i_2}, {indvars_iv_next277}}, {add_ln44_4_fu_540_p2}};
assign add_ln43_1_fu_458_p4 = {{{i_2}, {tmp2}}, {add_ln44_reg_947}};
assign add_ln43_2_fu_516_p4 = {{{i_2}, {tmp2}}, {add_ln44_2_reg_987}};
assign add_ln43_3_fu_574_p4 = {{{i_2}, {tmp2}}, {add_ln44_4_reg_1030}};
assign add_ln44_1_fu_413_p4 = {{{i_2}, {j_1}}, {add_ln44_fu_407_p2}};
assign add_ln44_2_fu_470_p2 = (k_1_reg_930 + 4'd2);
assign add_ln44_3_fu_475_p4 = {{{i_2}, {j_1}}, {add_ln44_2_fu_470_p2}};
assign add_ln44_4_fu_540_p2 = (k_1_reg_930 + 4'd3);
assign add_ln44_5_fu_545_p4 = {{{i_2}, {j_1}}, {add_ln44_4_fu_540_p2}};
assign add_ln44_6_fu_586_p2 = (zext_ln12_fu_571_p1 + 5'd4);
assign add_ln44_7_fu_610_p4 = {{{i_2}, {tmp_1_fu_601_p4}}, {or_ln44_fu_596_p2}};
assign add_ln44_fu_407_p2 = (ap_sig_allocacmp_k_1 + 4'd1);
assign add_ln45_1_fu_433_p4 = {{{i_2}, {j_1}}, {add_ln45_fu_428_p2}};
assign add_ln45_fu_428_p2 = ($signed(k_1_reg_930) + $signed(4'd15));
assign add_ln48_10_fu_768_p2 = (add_ln48_9_reg_1025 + add_ln48_7_fu_763_p2);
assign add_ln48_11_fu_832_p2 = (reg_380 + reg_372);
assign add_ln48_12_fu_773_p2 = ($signed(sum0_1_reg_965) + $signed(orig_q0));
assign add_ln48_13_fu_800_p2 = (add_ln48_12_reg_1153 + reg_356);
assign add_ln48_14_fu_652_p2 = ($signed(reg_367) + $signed(sum0_3_reg_1052));
assign add_ln48_15_fu_657_p2 = (add_ln48_14_fu_652_p2 + reg_356);
assign add_ln48_16_fu_805_p2 = (add_ln48_15_reg_1088 + add_ln48_13_fu_800_p2);
assign add_ln48_17_fu_839_p2 = (reg_372 + reg_376);
assign add_ln48_18_fu_810_p0 = reg_361;
assign add_ln48_18_fu_810_p2 = ($signed(add_ln48_18_fu_810_p0) + $signed(orig_q0));
assign add_ln48_19_fu_822_p2 = (add_ln48_18_reg_1178 + reg_356);
assign add_ln48_1_fu_725_p2 = (add_ln48_reg_1113 + reg_367);
assign add_ln48_20_fu_686_p2 = (reg_356 + reg_367);
assign add_ln48_21_fu_692_p2 = (add_ln48_20_fu_686_p2 + orig_load_977_reg_1058);
assign add_ln48_22_fu_827_p2 = (add_ln48_21_reg_1103 + add_ln48_19_fu_822_p2);
assign add_ln48_23_fu_846_p2 = (reg_376 + mul_ln48_6_reg_1108);
assign add_ln48_2_fu_488_p2 = ($signed(sum0_1_reg_965) + $signed(reg_361));
assign add_ln48_3_fu_493_p2 = (add_ln48_2_fu_488_p2 + reg_356);
assign add_ln48_4_fu_730_p2 = (add_ln48_3_reg_1006 + add_ln48_1_fu_725_p2);
assign add_ln48_5_fu_816_p2 = (mul_ln48_1_reg_1168 + reg_380);
assign add_ln48_6_fu_735_p0 = reg_356;
assign add_ln48_6_fu_735_p2 = ($signed(add_ln48_6_fu_735_p0) + $signed(orig_q0));
assign add_ln48_7_fu_763_p2 = (add_ln48_6_reg_1133 + reg_356);
assign add_ln48_8_fu_528_p1 = reg_361;
assign add_ln48_8_fu_528_p2 = ($signed(reg_356) + $signed(add_ln48_8_fu_528_p1));
assign add_ln48_9_fu_534_p2 = (add_ln48_8_fu_528_p2 + reg_367);
assign add_ln48_fu_697_p2 = (reg_367 + orig_q0);
assign add_ln4_fu_392_p4 = {{{i_2}, {tmp2}}, {ap_sig_allocacmp_k_1}};
assign add_ln_fu_629_p4 = {{{i_2}, {j_1}}, {k_1_reg_930}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign icmp_ln38_fu_499_p2 = ((add_ln44_2_reg_987 == 4'd15) ? 1'b1 : 1'b0);
assign or_ln44_fu_596_p2 = (empty | add_ln44_6_fu_586_p2);
assign orig_address0 = orig_address0_local;
assign orig_address1 = orig_address1_local;
assign orig_ce0 = orig_ce0_local;
assign orig_ce1 = orig_ce1_local;
assign sol_address0 = sol_address0_local;
assign sol_ce0 = sol_ce0_local;
assign sol_d0 = sol_d0_local;
assign sol_we0 = sol_we0_local;
assign tmp_1_fu_601_p4 = {{j_1[4:1]}};
assign trunc_ln44_fu_592_p1 = add_ln44_6_fu_586_p2[3:0];
assign zext_ln12_fu_571_p1 = k_1_reg_930;
assign zext_ln39_fu_636_p1 = add_ln_fu_629_p4;
assign zext_ln40_1_fu_709_p1 = add_ln40_1_fu_703_p3;
assign zext_ln40_2_fu_747_p1 = add_ln40_2_fu_741_p3;
assign zext_ln40_3_fu_784_p1 = add_ln40_3_fu_778_p3;
assign zext_ln40_fu_647_p1 = add_ln1_fu_641_p3;
assign zext_ln41_1_fu_720_p1 = add_ln41_1_fu_714_p3;
assign zext_ln41_2_fu_758_p1 = add_ln41_2_fu_752_p3;
assign zext_ln41_3_fu_795_p1 = add_ln41_3_fu_789_p3;
assign zext_ln41_fu_669_p1 = add_ln2_fu_663_p3;
assign zext_ln42_1_fu_453_p1 = add_ln42_1_fu_446_p4;
assign zext_ln42_2_fu_511_p1 = add_ln42_2_fu_504_p4;
assign zext_ln42_3_fu_566_p1 = add_ln42_3_fu_558_p4;
assign zext_ln42_fu_681_p1 = add_ln3_fu_674_p4;
assign zext_ln43_1_fu_465_p1 = add_ln43_1_fu_458_p4;
assign zext_ln43_2_fu_523_p1 = add_ln43_2_fu_516_p4;
assign zext_ln43_3_fu_581_p1 = add_ln43_3_fu_574_p4;
assign zext_ln43_fu_402_p1 = add_ln4_fu_392_p4;
assign zext_ln44_1_fu_483_p1 = add_ln44_3_fu_475_p4;
assign zext_ln44_2_fu_553_p1 = add_ln44_5_fu_545_p4;
assign zext_ln44_3_fu_619_p1 = add_ln44_7_fu_610_p4;
assign zext_ln44_fu_423_p1 = add_ln44_1_fu_413_p4;
assign zext_ln45_fu_441_p1 = add_ln45_1_fu_433_p4;
always @ (posedge ap_clk) begin
    zext_ln44_reg_955[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln44_reg_955_pp0_iter1_reg[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln44_1_reg_996[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln44_1_reg_996_pp0_iter1_reg[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln44_2_reg_1037[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln44_2_reg_1037_pp0_iter1_reg[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln39_reg_1073[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 