module stencil3d_stencil3d_Pipeline_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,i_2,j_1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,empty_8,empty,indvars_iv_next277,tmp2,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,C_load,C_load_1); 
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [12:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
input  [4:0] i_2;
input  [4:0] j_1;
output  [12:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [12:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
input  [9:0] empty_8;
input  [9:0] empty;
input  [4:0] indvars_iv_next277;
input  [4:0] tmp2;
output  [12:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [12:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
input  [31:0] C_load;
input  [31:0] C_load_1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln38_reg_1061;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_370;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] reg_375;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_381;
reg   [31:0] reg_386;
wire   [31:0] grp_fu_362_p2;
reg   [31:0] reg_390;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_366_p2;
reg   [31:0] reg_394;
reg   [3:0] k_1_reg_935;
wire   [2:0] lshr_ln_fu_406_p4;
reg   [2:0] lshr_ln_reg_942;
wire   [63:0] zext_ln39_1_fu_426_p1;
reg   [63:0] zext_ln39_1_reg_950;
reg   [63:0] zext_ln39_1_reg_950_pp0_iter1_reg;
wire   [2:0] lshr_ln1_fu_452_p4;
reg   [2:0] lshr_ln1_reg_961;
wire   [63:0] zext_ln44_fu_472_p1;
reg   [63:0] zext_ln44_reg_969;
reg   [63:0] zext_ln44_reg_969_pp0_iter1_reg;
wire   [2:0] add_ln44_2_fu_477_p2;
reg   [2:0] add_ln44_2_reg_984;
wire   [63:0] zext_ln44_1_fu_493_p1;
reg   [63:0] zext_ln44_1_reg_992;
reg   [63:0] zext_ln44_1_reg_992_pp0_iter1_reg;
reg  signed [31:0] sum0_1_reg_1012;
reg  signed [31:0] sum0_2_reg_1029;
wire   [31:0] add_ln48_3_fu_561_p2;
reg   [31:0] add_ln48_3_reg_1046;
wire   [0:0] icmp_ln38_fu_589_p2;
reg   [0:0] icmp_ln38_reg_1061_pp0_iter1_reg;
wire   [31:0] add_ln48_fu_594_p2;
reg   [31:0] add_ln48_reg_1065;
wire   [31:0] add_ln48_6_fu_600_p2;
reg   [31:0] add_ln48_6_reg_1070;
wire   [31:0] add_ln48_9_fu_611_p2;
reg   [31:0] add_ln48_9_reg_1075;
reg   [31:0] mul_ln48_2_reg_1080;
wire   [2:0] lshr_ln44_1_fu_646_p4;
reg   [2:0] lshr_ln44_1_reg_1095;
wire   [63:0] zext_ln44_2_fu_664_p1;
reg   [63:0] zext_ln44_2_reg_1102;
reg   [63:0] zext_ln44_2_reg_1102_pp0_iter1_reg;
reg   [31:0] mul_ln48_4_reg_1112;
reg   [31:0] mul_ln48_4_reg_1112_pp0_iter1_reg;
wire  signed [31:0] add_ln48_4_fu_687_p2;
reg  signed [31:0] add_ln48_4_reg_1122;
reg   [31:0] mul_ln48_reg_1127;
wire  signed [31:0] add_ln48_10_fu_697_p2;
reg  signed [31:0] add_ln48_10_reg_1132;
wire   [31:0] add_ln48_15_fu_775_p2;
reg   [31:0] add_ln48_15_reg_1162;
reg   [31:0] orig_0_load_reg_1167;
reg   [31:0] orig_0_load_487_reg_1177;
wire   [31:0] add_ln48_12_fu_802_p2;
reg   [31:0] add_ln48_12_reg_1182;
wire   [31:0] add_ln48_18_fu_807_p2;
reg   [31:0] add_ln48_18_reg_1187;
wire   [31:0] add_ln48_21_fu_817_p2;
reg   [31:0] add_ln48_21_reg_1192;
wire  signed [31:0] add_ln48_16_fu_840_p2;
reg  signed [31:0] add_ln48_16_reg_1197;
wire  signed [31:0] add_ln48_22_fu_849_p2;
reg  signed [31:0] add_ln48_22_reg_1202;
reg   [31:0] mul_ln48_7_reg_1207;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
reg    ap_condition_exit_pp0_iter1_stage1;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln43_fu_441_p1;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln40_fu_504_p1;
wire   [63:0] zext_ln42_1_fu_516_p1;
wire   [63:0] zext_ln43_1_fu_528_p1;
wire   [63:0] zext_ln41_fu_539_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln42_fu_551_p1;
wire   [63:0] zext_ln40_1_fu_573_p1;
wire   [63:0] zext_ln41_1_fu_584_p1;
wire   [63:0] zext_ln42_2_fu_624_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln43_2_fu_636_p1;
wire   [63:0] zext_ln42_3_fu_677_p1;
wire   [63:0] zext_ln40_2_fu_711_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln40_3_fu_722_p1;
wire   [63:0] zext_ln43_3_fu_734_p1;
wire   [63:0] zext_ln44_3_fu_753_p1;
wire   [63:0] zext_ln41_2_fu_764_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln41_3_fu_787_p1;
reg   [3:0] k_fu_74;
wire   [3:0] add_ln44_5_fu_792_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_1;
reg    orig_1_ce1_local;
reg   [12:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [12:0] orig_1_address0_local;
reg    orig_0_ce1_local;
reg   [12:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [12:0] orig_0_address0_local;
reg    sol_1_we0_local;
reg   [31:0] sol_1_d0_local;
wire   [31:0] add_ln48_5_fu_823_p2;
reg    sol_1_ce0_local;
reg   [12:0] sol_1_address0_local;
wire   [31:0] add_ln48_17_fu_854_p2;
reg    sol_0_we0_local;
reg   [31:0] sol_0_d0_local;
wire   [31:0] add_ln48_11_fu_829_p2;
reg    sol_0_ce0_local;
reg   [12:0] sol_0_address0_local;
wire   [31:0] add_ln48_23_fu_860_p2;
reg  signed [31:0] grp_fu_362_p0;
reg  signed [31:0] grp_fu_362_p1;
reg  signed [31:0] grp_fu_366_p0;
reg  signed [31:0] grp_fu_366_p1;
wire   [12:0] add_ln_fu_416_p4;
wire   [12:0] add_ln4_fu_431_p4;
wire   [3:0] add_ln44_fu_446_p2;
wire   [12:0] add_ln44_1_fu_462_p4;
wire   [12:0] add_ln44_4_fu_483_p4;
wire   [12:0] add_ln1_fu_498_p3;
wire   [12:0] add_ln42_1_fu_509_p4;
wire   [12:0] add_ln43_1_fu_521_p4;
wire   [12:0] add_ln2_fu_533_p3;
wire   [12:0] add_ln3_fu_544_p4;
wire   [31:0] add_ln48_2_fu_556_p2;
wire   [12:0] add_ln40_1_fu_567_p3;
wire   [12:0] add_ln41_1_fu_578_p3;
wire  signed [31:0] add_ln48_6_fu_600_p0;
wire   [31:0] add_ln48_8_fu_606_p2;
wire   [12:0] add_ln42_2_fu_617_p4;
wire   [12:0] add_ln43_2_fu_629_p4;
wire   [3:0] add_ln44_3_fu_641_p2;
wire   [12:0] add_ln44_6_fu_656_p4;
wire   [12:0] add_ln42_3_fu_669_p4;
wire   [31:0] add_ln48_1_fu_682_p2;
wire   [31:0] add_ln48_7_fu_692_p2;
wire   [12:0] add_ln40_2_fu_705_p3;
wire   [12:0] add_ln40_3_fu_716_p3;
wire   [12:0] add_ln43_3_fu_727_p4;
wire   [12:0] zext_ln39_fu_702_p1;
wire   [12:0] or_ln6_fu_739_p4;
wire   [12:0] add_ln44_7_fu_747_p2;
wire   [12:0] add_ln41_2_fu_758_p3;
wire  signed [31:0] add_ln48_14_fu_769_p1;
wire   [31:0] add_ln48_14_fu_769_p2;
wire   [12:0] add_ln41_3_fu_781_p3;
wire   [31:0] add_ln48_20_fu_812_p2;
wire   [31:0] add_ln48_13_fu_835_p2;
wire   [31:0] add_ln48_19_fu_845_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
reg   [5:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_74 = 4'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_362_p0),.din1(grp_fu_362_p1),.ce(1'b1),.dout(grp_fu_362_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U14(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_366_p0),.din1(grp_fu_366_p1),.ce(1'b1),.dout(grp_fu_366_p2));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_74 <= 4'd1;
    end else if (((icmp_ln38_reg_1061 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        k_fu_74 <= add_ln44_5_fu_792_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_375 <= orig_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_375 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reg_381 <= orig_1_q1;
    end else if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_381 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln44_2_reg_984 <= add_ln44_2_fu_477_p2;
        add_ln48_12_reg_1182 <= add_ln48_12_fu_802_p2;
        add_ln48_18_reg_1187 <= add_ln48_18_fu_807_p2;
        add_ln48_21_reg_1192 <= add_ln48_21_fu_817_p2;
        k_1_reg_935 <= ap_sig_allocacmp_k_1;
        lshr_ln1_reg_961 <= {{add_ln44_fu_446_p2[3:1]}};
        lshr_ln_reg_942 <= {{ap_sig_allocacmp_k_1[3:1]}};
        zext_ln39_1_reg_950[12 : 0] <= zext_ln39_1_fu_426_p1[12 : 0];
        zext_ln39_1_reg_950_pp0_iter1_reg[12 : 0] <= zext_ln39_1_reg_950[12 : 0];
        zext_ln44_1_reg_992[12 : 0] <= zext_ln44_1_fu_493_p1[12 : 0];
        zext_ln44_1_reg_992_pp0_iter1_reg[12 : 0] <= zext_ln44_1_reg_992[12 : 0];
        zext_ln44_reg_969[12 : 0] <= zext_ln44_fu_472_p1[12 : 0];
        zext_ln44_reg_969_pp0_iter1_reg[12 : 0] <= zext_ln44_reg_969[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln48_10_reg_1132 <= add_ln48_10_fu_697_p2;
        add_ln48_4_reg_1122 <= add_ln48_4_fu_687_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln48_15_reg_1162 <= add_ln48_15_fu_775_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_16_reg_1197 <= add_ln48_16_fu_840_p2;
        add_ln48_22_reg_1202 <= add_ln48_22_fu_849_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_3_reg_1046 <= add_ln48_3_fu_561_p2;
        icmp_ln38_reg_1061 <= icmp_ln38_fu_589_p2;
        icmp_ln38_reg_1061_pp0_iter1_reg <= icmp_ln38_reg_1061;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln48_6_reg_1070 <= add_ln48_6_fu_600_p2;
        add_ln48_9_reg_1075 <= add_ln48_9_fu_611_p2;
        add_ln48_reg_1065 <= add_ln48_fu_594_p2;
        lshr_ln44_1_reg_1095 <= {{add_ln44_3_fu_641_p2[3:1]}};
        mul_ln48_4_reg_1112_pp0_iter1_reg <= mul_ln48_4_reg_1112;
        zext_ln44_2_reg_1102[12 : 0] <= zext_ln44_2_fu_664_p1[12 : 0];
        zext_ln44_2_reg_1102_pp0_iter1_reg[12 : 0] <= zext_ln44_2_reg_1102[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln48_2_reg_1080 <= grp_fu_362_p2;
        mul_ln48_4_reg_1112 <= grp_fu_366_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul_ln48_7_reg_1207 <= grp_fu_362_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_ln48_reg_1127 <= grp_fu_362_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        orig_0_load_487_reg_1177 <= orig_0_q0;
        orig_0_load_reg_1167 <= orig_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_370 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_386 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_390 <= grp_fu_362_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_394 <= grp_fu_366_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum0_1_reg_1012 <= orig_0_q1;
        sum0_2_reg_1029 <= orig_1_q0;
    end
end
always @ (*) begin
    if (((icmp_ln38_reg_1061 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_reg_1061 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_1 = 4'd1;
    end else begin
        ap_sig_allocacmp_k_1 = k_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_362_p0 = reg_375;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_362_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_362_p0 = reg_370;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_362_p0 = sum0_1_reg_1012;
    end else begin
        grp_fu_362_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_362_p1 = add_ln48_22_reg_1202;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_362_p1 = add_ln48_4_reg_1122;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_362_p1 = C_load;
    end else begin
        grp_fu_362_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_366_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_366_p0 = sum0_2_reg_1029;
    end else begin
        grp_fu_366_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_366_p1 = add_ln48_16_reg_1197;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_366_p1 = add_ln48_10_reg_1132;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_366_p1 = C_load;
    end else begin
        grp_fu_366_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_0_address0_local = zext_ln41_3_fu_787_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_0_address0_local = zext_ln43_3_fu_734_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_0_address0_local = zext_ln42_3_fu_677_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address0_local = zext_ln41_1_fu_584_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address0_local = zext_ln43_1_fu_528_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address0_local = zext_ln39_1_fu_426_p1;
        end else begin
            orig_0_address0_local = 'bx;
        end
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_0_address1_local = zext_ln40_3_fu_722_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_0_address1_local = zext_ln44_2_fu_664_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln40_1_fu_573_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln42_1_fu_516_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address1_local = zext_ln44_fu_472_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            orig_1_address0_local = zext_ln41_2_fu_764_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_1_address0_local = zext_ln44_3_fu_753_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_1_address0_local = zext_ln43_2_fu_636_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address0_local = zext_ln42_fu_551_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address0_local = zext_ln40_fu_504_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address0_local = zext_ln44_1_fu_493_p1;
        end else begin
            orig_1_address0_local = 'bx;
        end
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            orig_1_address1_local = zext_ln40_2_fu_711_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_1_address1_local = zext_ln42_2_fu_624_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address1_local = zext_ln41_fu_539_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address1_local = zext_ln39_1_reg_950;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address1_local = zext_ln43_fu_441_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_address0_local = zext_ln44_2_reg_1102_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_0_address0_local = zext_ln44_reg_969_pp0_iter1_reg;
    end else begin
        sol_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_d0_local = add_ln48_23_fu_860_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_0_d0_local = add_ln48_11_fu_829_p2;
    end else begin
        sol_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_1_address0_local = zext_ln44_1_reg_992_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sol_1_address0_local = zext_ln39_1_reg_950_pp0_iter1_reg;
        end else begin
            sol_1_address0_local = 'bx;
        end
    end else begin
        sol_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            sol_1_d0_local = add_ln48_17_fu_854_p2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sol_1_d0_local = add_ln48_5_fu_823_p2;
        end else begin
            sol_1_d0_local = 'bx;
        end
    end else begin
        sol_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln38_reg_1061_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln1_fu_498_p3 = {{empty_8}, {lshr_ln_reg_942}};
assign add_ln2_fu_533_p3 = {{empty}, {lshr_ln_reg_942}};
assign add_ln3_fu_544_p4 = {{{i_2}, {indvars_iv_next277}}, {lshr_ln_reg_942}};
assign add_ln40_1_fu_567_p3 = {{empty_8}, {lshr_ln1_reg_961}};
assign add_ln40_2_fu_705_p3 = {{empty_8}, {add_ln44_2_reg_984}};
assign add_ln40_3_fu_716_p3 = {{empty_8}, {lshr_ln44_1_reg_1095}};
assign add_ln41_1_fu_578_p3 = {{empty}, {lshr_ln1_reg_961}};
assign add_ln41_2_fu_758_p3 = {{empty}, {add_ln44_2_reg_984}};
assign add_ln41_3_fu_781_p3 = {{empty}, {lshr_ln44_1_reg_1095}};
assign add_ln42_1_fu_509_p4 = {{{i_2}, {indvars_iv_next277}}, {lshr_ln1_reg_961}};
assign add_ln42_2_fu_617_p4 = {{{i_2}, {indvars_iv_next277}}, {add_ln44_2_reg_984}};
assign add_ln42_3_fu_669_p4 = {{{i_2}, {indvars_iv_next277}}, {lshr_ln44_1_fu_646_p4}};
assign add_ln43_1_fu_521_p4 = {{{i_2}, {tmp2}}, {lshr_ln1_reg_961}};
assign add_ln43_2_fu_629_p4 = {{{i_2}, {tmp2}}, {add_ln44_2_reg_984}};
assign add_ln43_3_fu_727_p4 = {{{i_2}, {tmp2}}, {lshr_ln44_1_reg_1095}};
assign add_ln44_1_fu_462_p4 = {{{i_2}, {j_1}}, {lshr_ln1_fu_452_p4}};
assign add_ln44_2_fu_477_p2 = (lshr_ln_fu_406_p4 + 3'd1);
assign add_ln44_3_fu_641_p2 = (k_1_reg_935 + 4'd3);
assign add_ln44_4_fu_483_p4 = {{{i_2}, {j_1}}, {add_ln44_2_fu_477_p2}};
assign add_ln44_5_fu_792_p2 = (k_1_reg_935 + 4'd4);
assign add_ln44_6_fu_656_p4 = {{{i_2}, {j_1}}, {lshr_ln44_1_fu_646_p4}};
assign add_ln44_7_fu_747_p2 = (zext_ln39_fu_702_p1 + or_ln6_fu_739_p4);
assign add_ln44_fu_446_p2 = (ap_sig_allocacmp_k_1 + 4'd1);
assign add_ln48_10_fu_697_p2 = (add_ln48_9_reg_1075 + add_ln48_7_fu_692_p2);
assign add_ln48_11_fu_829_p2 = (reg_394 + mul_ln48_2_reg_1080);
assign add_ln48_12_fu_802_p2 = ($signed(sum0_1_reg_1012) + $signed(orig_1_q0));
assign add_ln48_13_fu_835_p2 = (add_ln48_12_reg_1182 + reg_370);
assign add_ln48_14_fu_769_p1 = reg_375;
assign add_ln48_14_fu_769_p2 = ($signed(reg_381) + $signed(add_ln48_14_fu_769_p1));
assign add_ln48_15_fu_775_p2 = (add_ln48_14_fu_769_p2 + reg_370);
assign add_ln48_16_fu_840_p2 = (add_ln48_15_reg_1162 + add_ln48_13_fu_835_p2);
assign add_ln48_17_fu_854_p2 = (reg_394 + mul_ln48_4_reg_1112_pp0_iter1_reg);
assign add_ln48_18_fu_807_p2 = ($signed(sum0_2_reg_1029) + $signed(orig_0_q0));
assign add_ln48_19_fu_845_p2 = (add_ln48_18_reg_1187 + orig_0_load_reg_1167);
assign add_ln48_1_fu_682_p2 = (add_ln48_reg_1065 + reg_381);
assign add_ln48_20_fu_812_p2 = (orig_0_load_487_reg_1177 + reg_381);
assign add_ln48_21_fu_817_p2 = (add_ln48_20_fu_812_p2 + reg_386);
assign add_ln48_22_fu_849_p2 = (add_ln48_21_reg_1192 + add_ln48_19_fu_845_p2);
assign add_ln48_23_fu_860_p2 = (mul_ln48_7_reg_1207 + reg_390);
assign add_ln48_2_fu_556_p2 = ($signed(sum0_1_reg_1012) + $signed(reg_375));
assign add_ln48_3_fu_561_p2 = (add_ln48_2_fu_556_p2 + reg_370);
assign add_ln48_4_fu_687_p2 = (add_ln48_3_reg_1046 + add_ln48_1_fu_682_p2);
assign add_ln48_5_fu_823_p2 = (reg_390 + mul_ln48_reg_1127);
assign add_ln48_6_fu_600_p0 = reg_370;
assign add_ln48_6_fu_600_p2 = ($signed(add_ln48_6_fu_600_p0) + $signed(orig_0_q0));
assign add_ln48_7_fu_692_p2 = (add_ln48_6_reg_1070 + reg_375);
assign add_ln48_8_fu_606_p2 = ($signed(reg_386) + $signed(sum0_2_reg_1029));
assign add_ln48_9_fu_611_p2 = (add_ln48_8_fu_606_p2 + reg_375);
assign add_ln48_fu_594_p2 = (reg_381 + orig_1_q0);
assign add_ln4_fu_431_p4 = {{{i_2}, {tmp2}}, {lshr_ln_fu_406_p4}};
assign add_ln_fu_416_p4 = {{{i_2}, {j_1}}, {lshr_ln_fu_406_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign icmp_ln38_fu_589_p2 = ((k_1_reg_935 == 4'd13) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_452_p4 = {{add_ln44_fu_446_p2[3:1]}};
assign lshr_ln44_1_fu_646_p4 = {{add_ln44_3_fu_641_p2[3:1]}};
assign lshr_ln_fu_406_p4 = {{ap_sig_allocacmp_k_1[3:1]}};
assign or_ln6_fu_739_p4 = {{{i_2}, {j_1}}, {3'd2}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign sol_0_address0 = sol_0_address0_local;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = sol_0_d0_local;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = sol_1_address0_local;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = sol_1_d0_local;
assign sol_1_we0 = sol_1_we0_local;
assign zext_ln39_1_fu_426_p1 = add_ln_fu_416_p4;
assign zext_ln39_fu_702_p1 = lshr_ln_reg_942;
assign zext_ln40_1_fu_573_p1 = add_ln40_1_fu_567_p3;
assign zext_ln40_2_fu_711_p1 = add_ln40_2_fu_705_p3;
assign zext_ln40_3_fu_722_p1 = add_ln40_3_fu_716_p3;
assign zext_ln40_fu_504_p1 = add_ln1_fu_498_p3;
assign zext_ln41_1_fu_584_p1 = add_ln41_1_fu_578_p3;
assign zext_ln41_2_fu_764_p1 = add_ln41_2_fu_758_p3;
assign zext_ln41_3_fu_787_p1 = add_ln41_3_fu_781_p3;
assign zext_ln41_fu_539_p1 = add_ln2_fu_533_p3;
assign zext_ln42_1_fu_516_p1 = add_ln42_1_fu_509_p4;
assign zext_ln42_2_fu_624_p1 = add_ln42_2_fu_617_p4;
assign zext_ln42_3_fu_677_p1 = add_ln42_3_fu_669_p4;
assign zext_ln42_fu_551_p1 = add_ln3_fu_544_p4;
assign zext_ln43_1_fu_528_p1 = add_ln43_1_fu_521_p4;
assign zext_ln43_2_fu_636_p1 = add_ln43_2_fu_629_p4;
assign zext_ln43_3_fu_734_p1 = add_ln43_3_fu_727_p4;
assign zext_ln43_fu_441_p1 = add_ln4_fu_431_p4;
assign zext_ln44_1_fu_493_p1 = add_ln44_4_fu_483_p4;
assign zext_ln44_2_fu_664_p1 = add_ln44_6_fu_656_p4;
assign zext_ln44_3_fu_753_p1 = add_ln44_7_fu_747_p2;
assign zext_ln44_fu_472_p1 = add_ln44_1_fu_462_p4;
always @ (posedge ap_clk) begin
    zext_ln39_1_reg_950[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln39_1_reg_950_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_969[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_969_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_1_reg_992[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_1_reg_992_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_2_reg_1102[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_2_reg_1102_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 