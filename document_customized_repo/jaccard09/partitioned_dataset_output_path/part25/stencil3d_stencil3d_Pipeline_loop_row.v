
module stencil3d_stencil3d_Pipeline_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,i_2,j_2,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,empty_5,empty,indvars_iv_next37,tmp4,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,C_load,C_load_1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [11:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [11:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [11:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
input  [4:0] i_2;
input  [4:0] j_2;
output  [11:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [11:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
input  [9:0] empty_5;
input  [9:0] empty;
input  [4:0] indvars_iv_next37;
input  [4:0] tmp4;
output  [11:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [11:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [11:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [11:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
input  [31:0] C_load;
input  [31:0] C_load_1;
output  [11:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [11:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln38_reg_866;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_410;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_415;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_420;
wire   [31:0] grp_fu_402_p2;
reg   [31:0] reg_424;
reg   [3:0] k_1_reg_809;
wire   [1:0] lshr_ln2_fu_436_p4;
reg   [1:0] lshr_ln2_reg_814;
wire   [63:0] zext_ln39_1_fu_456_p1;
reg   [63:0] zext_ln39_1_reg_821;
reg   [63:0] zext_ln39_1_reg_821_pp0_iter1_reg;
reg   [63:0] zext_ln39_1_reg_821_pp0_iter2_reg;
wire   [63:0] zext_ln42_fu_473_p1;
reg   [63:0] zext_ln42_reg_829;
wire   [63:0] zext_ln43_fu_488_p1;
reg   [63:0] zext_ln43_reg_835;
wire   [0:0] icmp_ln38_fu_493_p2;
reg   [0:0] icmp_ln38_reg_866_pp0_iter1_reg;
reg   [0:0] icmp_ln38_reg_866_pp0_iter2_reg;
wire   [1:0] lshr_ln3_fu_505_p4;
reg   [1:0] lshr_ln3_reg_870;
wire   [63:0] zext_ln44_fu_525_p1;
reg   [63:0] zext_ln44_reg_878;
reg   [63:0] zext_ln44_reg_878_pp0_iter1_reg;
reg   [63:0] zext_ln44_reg_878_pp0_iter2_reg;
wire   [63:0] zext_ln40_fu_536_p1;
reg   [63:0] zext_ln40_reg_893;
reg  signed [31:0] sum0_1_reg_903;
reg   [31:0] orig_0_load_reg_910;
reg   [31:0] orig_2_load_3_reg_920;
reg  signed [31:0] sum0_2_reg_930;
reg  signed [31:0] sum0_3_reg_942;
reg  signed [31:0] sum0_3_reg_942_pp0_iter1_reg;
wire   [31:0] add_ln48_3_fu_583_p2;
reg   [31:0] add_ln48_3_reg_968;
reg   [31:0] orig_2_load_1_reg_973;
reg   [31:0] orig_2_load_4_reg_983;
reg   [31:0] orig_3_load_3_reg_993;
reg   [31:0] orig_0_load_4_reg_1008;
reg   [31:0] orig_0_load_5_reg_1013;
wire   [31:0] add_ln48_fu_621_p2;
reg   [31:0] add_ln48_reg_1018;
wire   [31:0] add_ln48_6_fu_627_p2;
reg   [31:0] add_ln48_6_reg_1023;
wire   [31:0] add_ln48_9_fu_637_p2;
reg   [31:0] add_ln48_9_reg_1028;
wire   [31:0] grp_fu_398_p2;
reg   [31:0] mul_ln48_2_reg_1033;
reg   [31:0] mul_ln48_2_reg_1033_pp0_iter2_reg;
wire   [31:0] add_ln48_12_fu_645_p2;
reg   [31:0] add_ln48_12_reg_1043;
reg   [31:0] mul_ln48_4_reg_1048;
reg   [31:0] mul_ln48_4_reg_1048_pp0_iter2_reg;
reg   [31:0] orig_0_load_2_reg_1053;
wire   [31:0] add_ln48_18_fu_669_p2;
reg   [31:0] add_ln48_18_reg_1063;
wire   [31:0] grp_fu_406_p2;
reg   [31:0] mul_ln48_6_reg_1068;
reg   [31:0] mul_ln48_6_reg_1068_pp0_iter2_reg;
wire  signed [31:0] add_ln48_4_fu_679_p2;
reg  signed [31:0] add_ln48_4_reg_1073;
reg   [31:0] mul_ln48_reg_1078;
reg   [31:0] mul_ln48_reg_1078_pp0_iter2_reg;
wire  signed [31:0] add_ln48_10_fu_688_p2;
reg  signed [31:0] add_ln48_10_reg_1083;
wire   [31:0] add_ln48_15_fu_697_p2;
reg   [31:0] add_ln48_15_reg_1093;
wire   [31:0] add_ln48_21_fu_708_p2;
reg   [31:0] add_ln48_21_reg_1098;
wire  signed [31:0] add_ln48_16_fu_718_p2;
reg  signed [31:0] add_ln48_16_reg_1103;
wire  signed [31:0] add_ln48_22_fu_727_p2;
reg  signed [31:0] add_ln48_22_reg_1108;
reg   [31:0] mul_ln48_3_reg_1113;
reg   [31:0] mul_ln48_5_reg_1118;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_condition_exit_pp0_iter2_stage2;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln42_1_fu_549_p1;
wire   [63:0] zext_ln43_1_fu_561_p1;
wire   [63:0] zext_ln41_fu_572_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln40_1_fu_595_p1;
wire   [63:0] zext_ln41_1_fu_606_p1;
wire   [63:0] zext_ln44_1_fu_664_p1;
reg   [3:0] k_fu_82;
wire   [3:0] add_ln44_1_fu_611_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_1;
reg    orig_1_ce1_local;
reg   [11:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [11:0] orig_1_address0_local;
reg    orig_2_ce1_local;
reg   [11:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [11:0] orig_2_address0_local;
reg    orig_0_ce1_local;
reg   [11:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [11:0] orig_0_address0_local;
reg    orig_3_ce1_local;
reg   [11:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [11:0] orig_3_address0_local;
reg    sol_1_we0_local;
wire   [31:0] add_ln48_5_fu_732_p2;
reg    sol_1_ce0_local;
reg    sol_2_we0_local;
wire   [31:0] add_ln48_11_fu_738_p2;
reg    sol_2_ce0_local;
reg    sol_3_we0_local;
wire   [31:0] add_ln48_17_fu_743_p2;
reg    sol_3_ce0_local;
reg    sol_0_we0_local;
wire   [31:0] add_ln48_23_fu_748_p2;
reg    sol_0_ce0_local;
reg  signed [31:0] grp_fu_398_p0;
reg  signed [31:0] grp_fu_398_p1;
reg  signed [31:0] grp_fu_402_p0;
reg  signed [31:0] grp_fu_402_p1;
reg  signed [31:0] grp_fu_406_p0;
reg  signed [31:0] grp_fu_406_p1;
wire   [11:0] add_ln4_fu_446_p4;
wire   [11:0] add_ln7_fu_463_p4;
wire   [11:0] add_ln8_fu_478_p4;
wire   [3:0] add_ln44_fu_499_p2;
wire   [11:0] add_ln44_2_fu_515_p4;
wire   [11:0] add_ln5_fu_530_p3;
wire   [11:0] add_ln42_1_fu_542_p4;
wire   [11:0] add_ln43_1_fu_554_p4;
wire   [11:0] add_ln6_fu_566_p3;
wire   [31:0] add_ln48_2_fu_579_p2;
wire   [11:0] add_ln40_1_fu_589_p3;
wire   [11:0] add_ln41_1_fu_600_p3;
wire  signed [31:0] add_ln48_6_fu_627_p0;
wire   [31:0] add_ln48_8_fu_633_p2;
wire   [11:0] zext_ln39_fu_642_p1;
wire   [11:0] or_ln1_fu_650_p4;
wire   [11:0] add_ln44_3_fu_658_p2;
wire   [31:0] add_ln48_1_fu_674_p2;
wire   [31:0] add_ln48_7_fu_684_p2;
wire   [31:0] add_ln48_14_fu_693_p2;
wire   [31:0] add_ln48_20_fu_703_p2;
wire   [31:0] add_ln48_13_fu_713_p2;
wire   [31:0] add_ln48_19_fu_723_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_82 = 4'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U26(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_398_p0),.din1(grp_fu_398_p1),.ce(1'b1),.dout(grp_fu_398_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U27(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_402_p0),.din1(grp_fu_402_p1),.ce(1'b1),.dout(grp_fu_402_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U28(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_406_p0),.din1(grp_fu_406_p1),.ce(1'b1),.dout(grp_fu_406_p2));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter2_stage2) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_82 <= 4'd1;
    end else if (((icmp_ln38_reg_866 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_82 <= add_ln44_1_fu_611_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_415 <= orig_1_q1;
    end else if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_415 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_10_reg_1083 <= add_ln48_10_fu_688_p2;
        add_ln48_4_reg_1073 <= add_ln48_4_fu_679_p2;
        mul_ln48_reg_1078_pp0_iter2_reg <= mul_ln48_reg_1078;
        sum0_3_reg_942_pp0_iter1_reg <= sum0_3_reg_942;
        zext_ln40_reg_893[11 : 0] <= zext_ln40_fu_536_p1[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_12_reg_1043 <= add_ln48_12_fu_645_p2;
        add_ln48_16_reg_1103 <= add_ln48_16_fu_718_p2;
        add_ln48_18_reg_1063 <= add_ln48_18_fu_669_p2;
        add_ln48_22_reg_1108 <= add_ln48_22_fu_727_p2;
        add_ln48_6_reg_1023 <= add_ln48_6_fu_627_p2;
        add_ln48_9_reg_1028 <= add_ln48_9_fu_637_p2;
        add_ln48_reg_1018 <= add_ln48_fu_621_p2;
        icmp_ln38_reg_866 <= icmp_ln38_fu_493_p2;
        icmp_ln38_reg_866_pp0_iter1_reg <= icmp_ln38_reg_866;
        icmp_ln38_reg_866_pp0_iter2_reg <= icmp_ln38_reg_866_pp0_iter1_reg;
        k_1_reg_809 <= ap_sig_allocacmp_k_1;
        lshr_ln2_reg_814 <= {{ap_sig_allocacmp_k_1[3:2]}};
        lshr_ln3_reg_870 <= {{add_ln44_fu_499_p2[3:2]}};
        mul_ln48_2_reg_1033_pp0_iter2_reg <= mul_ln48_2_reg_1033;
        mul_ln48_4_reg_1048_pp0_iter2_reg <= mul_ln48_4_reg_1048;
        mul_ln48_6_reg_1068_pp0_iter2_reg <= mul_ln48_6_reg_1068;
        zext_ln39_1_reg_821[11 : 0] <= zext_ln39_1_fu_456_p1[11 : 0];
        zext_ln39_1_reg_821_pp0_iter1_reg[11 : 0] <= zext_ln39_1_reg_821[11 : 0];
        zext_ln39_1_reg_821_pp0_iter2_reg[11 : 0] <= zext_ln39_1_reg_821_pp0_iter1_reg[11 : 0];
        zext_ln42_reg_829[11 : 0] <= zext_ln42_fu_473_p1[11 : 0];
        zext_ln43_reg_835[11 : 0] <= zext_ln43_fu_488_p1[11 : 0];
        zext_ln44_reg_878[11 : 0] <= zext_ln44_fu_525_p1[11 : 0];
        zext_ln44_reg_878_pp0_iter1_reg[11 : 0] <= zext_ln44_reg_878[11 : 0];
        zext_ln44_reg_878_pp0_iter2_reg[11 : 0] <= zext_ln44_reg_878_pp0_iter1_reg[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_15_reg_1093 <= add_ln48_15_fu_697_p2;
        add_ln48_21_reg_1098 <= add_ln48_21_fu_708_p2;
        add_ln48_3_reg_968 <= add_ln48_3_fu_583_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln48_2_reg_1033 <= grp_fu_398_p2;
        mul_ln48_4_reg_1048 <= grp_fu_402_p2;
        mul_ln48_6_reg_1068 <= grp_fu_406_p2;
        orig_0_load_2_reg_1053 <= orig_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_3_reg_1113 <= grp_fu_406_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln48_5_reg_1118 <= grp_fu_398_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_reg_1078 <= grp_fu_398_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_load_4_reg_1008 <= orig_0_q1;
        orig_0_load_5_reg_1013 <= orig_0_q0;
        orig_2_load_1_reg_973 <= orig_2_q1;
        orig_2_load_4_reg_983 <= orig_2_q0;
        orig_3_load_3_reg_993 <= orig_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_load_reg_910 <= orig_0_q1;
        orig_2_load_3_reg_920 <= orig_2_q0;
        sum0_1_reg_903 <= orig_2_q1;
        sum0_2_reg_930 <= orig_3_q1;
        sum0_3_reg_942 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_410 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_420 <= orig_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_424 <= grp_fu_402_p2;
    end
end
always @ (*) begin
    if (((icmp_ln38_reg_866 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln38_reg_866_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_1 = 4'd1;
    end else begin
        ap_sig_allocacmp_k_1 = k_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_398_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_398_p0 = reg_410;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_398_p0 = sum0_1_reg_903;
    end else begin
        grp_fu_398_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_398_p1 = add_ln48_16_reg_1103;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_398_p1 = C_load;
    end else begin
        grp_fu_398_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_402_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_402_p0 = sum0_2_reg_930;
    end else begin
        grp_fu_402_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_402_p1 = add_ln48_22_reg_1108;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_402_p1 = add_ln48_4_reg_1073;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_402_p1 = C_load;
    end else begin
        grp_fu_402_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_406_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_406_p0 = sum0_3_reg_942;
    end else begin
        grp_fu_406_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_406_p1 = add_ln48_10_reg_1083;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_406_p1 = C_load;
    end else begin
        grp_fu_406_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address0_local = zext_ln41_1_fu_606_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address0_local = zext_ln43_1_fu_561_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address0_local = zext_ln44_fu_525_p1;
        end else begin
            orig_0_address0_local = 'bx;
        end
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln40_1_fu_595_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln42_1_fu_549_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address1_local = zext_ln39_1_fu_456_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln44_1_fu_664_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln42_reg_829;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln40_fu_536_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address1_local = zext_ln41_fu_572_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address1_local = zext_ln39_1_reg_821;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address1_local = zext_ln43_fu_488_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_2_address0_local = zext_ln41_fu_572_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address0_local = zext_ln43_reg_835;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address0_local = zext_ln42_fu_473_p1;
        end else begin
            orig_2_address0_local = 'bx;
        end
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address1_local = zext_ln40_fu_536_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address1_local = zext_ln39_1_fu_456_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln40_reg_893;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln42_reg_829;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address0_local = zext_ln41_fu_572_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_3_address1_local = zext_ln43_reg_835;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_3_address1_local = zext_ln39_1_fu_456_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln40_1_fu_589_p3 = {{empty_5}, {lshr_ln3_reg_870}};
assign add_ln41_1_fu_600_p3 = {{empty}, {lshr_ln3_reg_870}};
assign add_ln42_1_fu_542_p4 = {{{i_2}, {indvars_iv_next37}}, {lshr_ln3_reg_870}};
assign add_ln43_1_fu_554_p4 = {{{i_2}, {tmp4}}, {lshr_ln3_reg_870}};
assign add_ln44_1_fu_611_p2 = (k_1_reg_809 + 4'd4);
assign add_ln44_2_fu_515_p4 = {{{i_2}, {j_2}}, {lshr_ln3_fu_505_p4}};
assign add_ln44_3_fu_658_p2 = (zext_ln39_fu_642_p1 + or_ln1_fu_650_p4);
assign add_ln44_fu_499_p2 = (ap_sig_allocacmp_k_1 + 4'd3);
assign add_ln48_10_fu_688_p2 = (add_ln48_9_reg_1028 + add_ln48_7_fu_684_p2);
assign add_ln48_11_fu_738_p2 = (mul_ln48_3_reg_1113 + mul_ln48_2_reg_1033_pp0_iter2_reg);
assign add_ln48_12_fu_645_p2 = ($signed(sum0_1_reg_903) + $signed(orig_3_q0));
assign add_ln48_13_fu_713_p2 = (add_ln48_12_reg_1043 + reg_420);
assign add_ln48_14_fu_693_p2 = ($signed(orig_3_load_3_reg_993) + $signed(sum0_3_reg_942_pp0_iter1_reg));
assign add_ln48_15_fu_697_p2 = (add_ln48_14_fu_693_p2 + reg_420);
assign add_ln48_16_fu_718_p2 = (add_ln48_15_reg_1093 + add_ln48_13_fu_713_p2);
assign add_ln48_17_fu_743_p2 = (mul_ln48_5_reg_1118 + mul_ln48_4_reg_1048_pp0_iter2_reg);
assign add_ln48_18_fu_669_p2 = ($signed(sum0_2_reg_930) + $signed(orig_0_q0));
assign add_ln48_19_fu_723_p2 = (add_ln48_18_reg_1063 + orig_0_load_2_reg_1053);
assign add_ln48_1_fu_674_p2 = (add_ln48_reg_1018 + reg_415);
assign add_ln48_20_fu_703_p2 = (orig_0_load_5_reg_1013 + reg_415);
assign add_ln48_21_fu_708_p2 = (add_ln48_20_fu_703_p2 + orig_0_load_4_reg_1008);
assign add_ln48_22_fu_727_p2 = (add_ln48_21_reg_1098 + add_ln48_19_fu_723_p2);
assign add_ln48_23_fu_748_p2 = (reg_424 + mul_ln48_6_reg_1068_pp0_iter2_reg);
assign add_ln48_2_fu_579_p2 = ($signed(sum0_1_reg_903) + $signed(orig_0_load_reg_910));
assign add_ln48_3_fu_583_p2 = (add_ln48_2_fu_579_p2 + reg_410);
assign add_ln48_4_fu_679_p2 = (add_ln48_3_reg_968 + add_ln48_1_fu_674_p2);
assign add_ln48_5_fu_732_p2 = (reg_424 + mul_ln48_reg_1078_pp0_iter2_reg);
assign add_ln48_6_fu_627_p0 = reg_410;
assign add_ln48_6_fu_627_p2 = ($signed(add_ln48_6_fu_627_p0) + $signed(orig_2_q0));
assign add_ln48_7_fu_684_p2 = (add_ln48_6_reg_1023 + orig_2_load_1_reg_973);
assign add_ln48_8_fu_633_p2 = ($signed(orig_2_load_4_reg_983) + $signed(sum0_2_reg_930));
assign add_ln48_9_fu_637_p2 = (add_ln48_8_fu_633_p2 + orig_2_load_3_reg_920);
assign add_ln48_fu_621_p2 = (reg_415 + orig_1_q0);
assign add_ln4_fu_446_p4 = {{{i_2}, {j_2}}, {lshr_ln2_fu_436_p4}};
assign add_ln5_fu_530_p3 = {{empty_5}, {lshr_ln2_reg_814}};
assign add_ln6_fu_566_p3 = {{empty}, {lshr_ln2_reg_814}};
assign add_ln7_fu_463_p4 = {{{i_2}, {indvars_iv_next37}}, {lshr_ln2_fu_436_p4}};
assign add_ln8_fu_478_p4 = {{{i_2}, {tmp4}}, {lshr_ln2_fu_436_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign icmp_ln38_fu_493_p2 = ((ap_sig_allocacmp_k_1 == 4'd13) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_436_p4 = {{ap_sig_allocacmp_k_1[3:2]}};
assign lshr_ln3_fu_505_p4 = {{add_ln44_fu_499_p2[3:2]}};
assign or_ln1_fu_650_p4 = {{{i_2}, {j_2}}, {2'd1}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = orig_2_address1_local;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = orig_3_address1_local;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign sol_0_address0 = zext_ln44_reg_878_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = add_ln48_23_fu_748_p2;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln39_1_reg_821_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = add_ln48_5_fu_732_p2;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = zext_ln39_1_reg_821_pp0_iter2_reg;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = add_ln48_11_fu_738_p2;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = zext_ln39_1_reg_821_pp0_iter2_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = add_ln48_17_fu_743_p2;
assign sol_3_we0 = sol_3_we0_local;
assign zext_ln39_1_fu_456_p1 = add_ln4_fu_446_p4;
assign zext_ln39_fu_642_p1 = lshr_ln2_reg_814;
assign zext_ln40_1_fu_595_p1 = add_ln40_1_fu_589_p3;
assign zext_ln40_fu_536_p1 = add_ln5_fu_530_p3;
assign zext_ln41_1_fu_606_p1 = add_ln41_1_fu_600_p3;
assign zext_ln41_fu_572_p1 = add_ln6_fu_566_p3;
assign zext_ln42_1_fu_549_p1 = add_ln42_1_fu_542_p4;
assign zext_ln42_fu_473_p1 = add_ln7_fu_463_p4;
assign zext_ln43_1_fu_561_p1 = add_ln43_1_fu_554_p4;
assign zext_ln43_fu_488_p1 = add_ln8_fu_478_p4;
assign zext_ln44_1_fu_664_p1 = add_ln44_3_fu_658_p2;
assign zext_ln44_fu_525_p1 = add_ln44_2_fu_515_p4;
always @ (posedge ap_clk) begin
    zext_ln39_1_reg_821[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln39_1_reg_821_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln39_1_reg_821_pp0_iter2_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln42_reg_829[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln43_reg_835[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_878[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_878_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_878_pp0_iter2_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln40_reg_893[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 
