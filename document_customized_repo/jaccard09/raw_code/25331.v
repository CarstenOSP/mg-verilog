module needwun_needwun_Pipeline_fill_in (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,SEQA_address0,SEQA_ce0,SEQA_q0,SEQA_address1,SEQA_ce1,SEQA_q1,SEQB_load,empty,M_address0,M_ce0,M_we0,M_d0,M_q0,M_address1,M_ce1,M_we1,M_d1,M_q1,mul_ln29,ptr_address0,ptr_ce0,ptr_we0,ptr_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] SEQA_address0;
output   SEQA_ce0;
input  [7:0] SEQA_q0;
output  [6:0] SEQA_address1;
output   SEQA_ce1;
input  [7:0] SEQA_q1;
input  [7:0] SEQB_load;
input  [14:0] empty;
output  [14:0] M_address0;
output   M_ce0;
output   M_we0;
output  [31:0] M_d0;
input  [31:0] M_q0;
output  [14:0] M_address1;
output   M_ce1;
output   M_we1;
output  [31:0] M_d1;
input  [31:0] M_q1;
input  [14:0] mul_ln29;
output  [14:0] ptr_address0;
output   ptr_ce0;
output   ptr_we0;
output  [7:0] ptr_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln29_reg_806;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [31:0] reg_259;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] grp_fu_264_p2;
reg   [31:0] reg_270;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] a_idx_reg_800;
wire   [0:0] icmp_ln29_fu_282_p2;
wire   [14:0] zext_ln29_1_fu_293_p1;
reg   [14:0] zext_ln29_1_reg_810;
wire   [6:0] trunc_ln29_fu_297_p1;
reg   [6:0] trunc_ln29_reg_815;
wire   [6:0] add_ln30_fu_301_p2;
reg   [6:0] add_ln30_reg_821;
wire   [0:0] grp_fu_249_p2;
reg   [0:0] icmp_ln30_reg_841;
wire   [6:0] add_ln29_fu_346_p2;
reg   [6:0] add_ln29_reg_856;
wire   [0:0] grp_fu_254_p2;
reg   [0:0] icmp_ln30_1_reg_861;
wire   [6:0] add_ln29_1_fu_356_p2;
reg   [6:0] add_ln29_1_reg_866;
wire   [31:0] up_left_fu_373_p2;
reg   [31:0] up_left_reg_881;
wire   [31:0] left_fu_379_p2;
reg   [31:0] left_reg_887;
wire   [14:0] zext_ln30_3_fu_385_p1;
reg   [14:0] zext_ln30_3_reg_894;
wire   [31:0] up_left_1_fu_395_p2;
reg   [31:0] up_left_1_reg_899;
wire   [14:0] zext_ln30_5_fu_411_p1;
reg   [14:0] zext_ln30_5_reg_910;
reg   [0:0] icmp_ln30_2_reg_915;
wire   [7:0] add_ln29_2_fu_424_p2;
reg   [7:0] add_ln29_2_reg_925;
reg   [0:0] icmp_ln30_3_reg_930;
wire   [31:0] max_fu_446_p3;
reg   [31:0] max_reg_935;
wire   [14:0] add_ln45_fu_453_p2;
reg   [14:0] add_ln45_reg_943;
wire   [14:0] add_ln45_1_fu_457_p2;
reg   [14:0] add_ln45_1_reg_948;
reg   [31:0] M_load_4_reg_953;
wire   [14:0] add_ln45_2_fu_461_p2;
reg   [14:0] add_ln45_2_reg_959;
wire   [14:0] add_ln45_3_fu_478_p2;
reg   [14:0] add_ln45_3_reg_969;
wire   [31:0] left_1_fu_524_p2;
reg   [31:0] left_1_reg_974;
wire   [31:0] select_ln43_2_fu_535_p3;
reg   [31:0] select_ln43_2_reg_979;
wire   [31:0] up_left_2_fu_550_p2;
reg   [31:0] up_left_2_reg_985;
wire   [63:0] zext_ln45_1_fu_567_p1;
reg   [63:0] zext_ln45_1_reg_991;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [0:0] icmp_ln46_1_fu_571_p2;
reg   [0:0] icmp_ln46_1_reg_996;
wire   [0:0] icmp_ln48_1_fu_576_p2;
reg   [0:0] icmp_ln48_1_reg_1002;
wire   [31:0] up_2_fu_582_p2;
reg   [31:0] up_2_reg_1007;
wire   [31:0] left_2_fu_587_p2;
reg   [31:0] left_2_reg_1014;
wire   [31:0] up_left_3_fu_600_p2;
reg   [31:0] up_left_3_reg_1021;
wire   [31:0] max_2_fu_644_p3;
reg   [31:0] max_2_reg_1027;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] left_3_fu_691_p2;
reg   [31:0] left_3_reg_1035;
wire   [31:0] select_ln43_6_fu_702_p3;
reg   [31:0] select_ln43_6_reg_1040;
wire   [63:0] zext_ln45_3_fu_731_p1;
reg   [63:0] zext_ln45_3_reg_1046;
wire   [0:0] icmp_ln46_3_fu_735_p2;
reg   [0:0] icmp_ln46_3_reg_1051;
wire   [0:0] icmp_ln48_3_fu_740_p2;
reg   [0:0] icmp_ln48_3_reg_1057;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln30_fu_307_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln40_fu_318_p1;
wire   [63:0] zext_ln29_fu_288_p1;
wire   [63:0] zext_ln39_fu_331_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln41_fu_341_p1;
wire   [63:0] zext_ln30_2_fu_351_p1;
wire   [63:0] zext_ln30_4_fu_361_p1;
wire   [63:0] zext_ln40_1_fu_406_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln40_2_fu_419_p1;
wire   [63:0] zext_ln40_3_fu_473_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln45_fu_483_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln45_2_fu_651_p1;
wire    ap_block_pp0_stage7;
reg   [7:0] a_idx_2_fu_60;
wire   [7:0] add_ln29_3_fu_710_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_a_idx;
reg    SEQA_ce1_local;
reg   [6:0] SEQA_address1_local;
reg    SEQA_ce0_local;
reg   [6:0] SEQA_address0_local;
reg    M_ce1_local;
reg   [14:0] M_address1_local;
reg    M_ce0_local;
reg   [14:0] M_address0_local;
reg    M_we1_local;
reg   [31:0] M_d1_local;
reg    M_we0_local;
reg   [31:0] M_d0_local;
wire   [31:0] max_1_fu_560_p3;
wire   [31:0] max_3_fu_724_p3;
reg    ptr_we0_local;
reg   [7:0] ptr_d0_local;
wire   [7:0] zext_ln47_fu_519_p1;
reg    ptr_ce0_local;
reg   [14:0] ptr_address0_local;
wire   [7:0] zext_ln47_1_fu_624_p1;
wire   [7:0] zext_ln47_2_fu_686_p1;
wire   [7:0] zext_ln47_3_fu_765_p1;
wire   [14:0] add_ln40_fu_312_p2;
wire   [14:0] zext_ln30_1_fu_323_p1;
wire   [14:0] add_ln39_fu_326_p2;
wire   [14:0] add_ln41_fu_336_p2;
wire   [31:0] select_ln39_fu_366_p3;
wire   [31:0] select_ln39_1_fu_388_p3;
wire   [14:0] add_ln40_2_fu_401_p2;
wire   [14:0] add_ln40_4_fu_414_p2;
wire   [0:0] icmp_ln43_fu_429_p2;
wire   [31:0] select_ln43_fu_434_p3;
wire   [0:0] icmp_ln43_1_fu_441_p2;
wire   [14:0] zext_ln30_6_fu_465_p1;
wire   [14:0] add_ln40_6_fu_468_p2;
wire   [0:0] icmp_ln46_fu_488_p2;
wire   [0:0] icmp_ln48_fu_492_p2;
wire   [0:0] empty_20_fu_505_p2;
wire   [6:0] select_ln48_fu_497_p3;
wire   [6:0] storemerge8_fu_511_p3;
wire   [0:0] icmp_ln43_2_fu_529_p2;
wire   [31:0] select_ln39_2_fu_543_p3;
wire   [0:0] icmp_ln43_3_fu_556_p2;
wire   [31:0] select_ln39_3_fu_593_p3;
wire   [0:0] empty_21_fu_612_p2;
wire   [6:0] select_ln48_1_fu_605_p3;
wire   [6:0] storemerge10_fu_616_p3;
wire   [0:0] icmp_ln43_4_fu_629_p2;
wire   [31:0] select_ln43_4_fu_633_p3;
wire   [0:0] icmp_ln43_5_fu_639_p2;
wire   [0:0] icmp_ln46_2_fu_656_p2;
wire   [0:0] icmp_ln48_2_fu_660_p2;
wire   [0:0] empty_22_fu_672_p2;
wire   [6:0] select_ln48_2_fu_664_p3;
wire   [6:0] storemerge12_fu_678_p3;
wire   [0:0] icmp_ln43_6_fu_696_p2;
wire   [0:0] icmp_ln43_7_fu_720_p2;
wire   [0:0] empty_23_fu_753_p2;
wire   [6:0] select_ln48_3_fu_746_p3;
wire   [6:0] storemerge14_fu_757_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 a_idx_2_fu_60 = 8'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_2_fu_60 <= 8'd1;
    end else if (((icmp_ln29_reg_806 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_idx_2_fu_60 <= add_ln29_3_fu_710_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_259 <= M_q0;
    end else if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_259 <= M_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_load_4_reg_953 <= M_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_reg_800 <= ap_sig_allocacmp_a_idx;
        add_ln30_reg_821 <= add_ln30_fu_301_p2;
        icmp_ln29_reg_806 <= icmp_ln29_fu_282_p2;
        icmp_ln46_3_reg_1051 <= icmp_ln46_3_fu_735_p2;
        icmp_ln48_3_reg_1057 <= icmp_ln48_3_fu_740_p2;
        trunc_ln29_reg_815 <= trunc_ln29_fu_297_p1;
        zext_ln29_1_reg_810[7 : 0] <= zext_ln29_1_fu_293_p1[7 : 0];
        zext_ln45_3_reg_1046[14 : 0] <= zext_ln45_3_fu_731_p1[14 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln29_1_reg_866 <= add_ln29_1_fu_356_p2;
        add_ln29_reg_856 <= add_ln29_fu_346_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln29_2_reg_925 <= add_ln29_2_fu_424_p2;
        left_reg_887 <= left_fu_379_p2;
        up_left_1_reg_899 <= up_left_1_fu_395_p2;
        up_left_reg_881 <= up_left_fu_373_p2;
        zext_ln30_3_reg_894[6 : 0] <= zext_ln30_3_fu_385_p1[6 : 0];
        zext_ln30_5_reg_910[6 : 0] <= zext_ln30_5_fu_411_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln45_1_reg_948 <= add_ln45_1_fu_457_p2;
        add_ln45_2_reg_959 <= add_ln45_2_fu_461_p2;
        add_ln45_3_reg_969 <= add_ln45_3_fu_478_p2;
        add_ln45_reg_943 <= add_ln45_fu_453_p2;
        max_reg_935 <= max_fu_446_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln30_1_reg_861 <= grp_fu_254_p2;
        icmp_ln30_reg_841 <= grp_fu_249_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln30_2_reg_915 <= grp_fu_249_p2;
        icmp_ln30_3_reg_930 <= grp_fu_254_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln46_1_reg_996 <= icmp_ln46_1_fu_571_p2;
        icmp_ln48_1_reg_1002 <= icmp_ln48_1_fu_576_p2;
        left_2_reg_1014 <= left_2_fu_587_p2;
        up_2_reg_1007 <= up_2_fu_582_p2;
        up_left_3_reg_1021 <= up_left_3_fu_600_p2;
        zext_ln45_1_reg_991[14 : 0] <= zext_ln45_1_fu_567_p1[14 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        left_1_reg_974 <= left_1_fu_524_p2;
        select_ln43_2_reg_979 <= select_ln43_2_fu_535_p3;
        up_left_2_reg_985 <= up_left_2_fu_550_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        left_3_reg_1035 <= left_3_fu_691_p2;
        select_ln43_6_reg_1040 <= select_ln43_6_fu_702_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        max_2_reg_1027 <= max_2_fu_644_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_270 <= grp_fu_264_p2;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_address0_local = zext_ln45_3_fu_731_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_address0_local = zext_ln45_1_fu_567_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        M_address0_local = zext_ln40_3_fu_473_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_address0_local = zext_ln40_2_fu_419_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_address0_local = zext_ln41_fu_341_p1;
    end else begin
        M_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            M_address1_local = zext_ln45_2_fu_651_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            M_address1_local = zext_ln45_fu_483_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_address1_local = zext_ln40_1_fu_406_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_address1_local = zext_ln39_fu_331_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_address1_local = zext_ln40_fu_318_p1;
        end else begin
            M_address1_local = 'bx;
        end
    end else begin
        M_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_ce0_local = 1'b1;
    end else begin
        M_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_ce1_local = 1'b1;
    end else begin
        M_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_d0_local = max_3_fu_724_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_d0_local = max_1_fu_560_p3;
    end else begin
        M_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            M_d1_local = max_2_reg_1027;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            M_d1_local = max_reg_935;
        end else begin
            M_d1_local = 'bx;
        end
    end else begin
        M_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln29_reg_806 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_we0_local = 1'b1;
    end else begin
        M_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln29_reg_806 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln29_reg_806 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        M_we1_local = 1'b1;
    end else begin
        M_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            SEQA_address0_local = zext_ln30_4_fu_361_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            SEQA_address0_local = zext_ln29_fu_288_p1;
        end else begin
            SEQA_address0_local = 'bx;
        end
    end else begin
        SEQA_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            SEQA_address1_local = zext_ln30_2_fu_351_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            SEQA_address1_local = zext_ln30_fu_307_p1;
        end else begin
            SEQA_address1_local = 'bx;
        end
    end else begin
        SEQA_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        SEQA_ce0_local = 1'b1;
    end else begin
        SEQA_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        SEQA_ce1_local = 1'b1;
    end else begin
        SEQA_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln29_reg_806 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_a_idx = 8'd1;
    end else begin
        ap_sig_allocacmp_a_idx = a_idx_2_fu_60;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_address0_local = zext_ln45_3_reg_1046;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ptr_address0_local = zext_ln45_2_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_address0_local = zext_ln45_1_reg_991;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ptr_address0_local = zext_ln45_fu_483_p1;
    end else begin
        ptr_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ptr_ce0_local = 1'b1;
    end else begin
        ptr_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_d0_local = zext_ln47_3_fu_765_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ptr_d0_local = zext_ln47_2_fu_686_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_d0_local = zext_ln47_1_fu_624_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ptr_d0_local = zext_ln47_fu_519_p1;
    end else begin
        ptr_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln29_reg_806 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln29_reg_806 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln29_reg_806 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ptr_we0_local = 1'b1;
    end else begin
        ptr_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign M_address0 = M_address0_local;
assign M_address1 = M_address1_local;
assign M_ce0 = M_ce0_local;
assign M_ce1 = M_ce1_local;
assign M_d0 = M_d0_local;
assign M_d1 = M_d1_local;
assign M_we0 = M_we0_local;
assign M_we1 = M_we1_local;
assign SEQA_address0 = SEQA_address0_local;
assign SEQA_address1 = SEQA_address1_local;
assign SEQA_ce0 = SEQA_ce0_local;
assign SEQA_ce1 = SEQA_ce1_local;
assign add_ln29_1_fu_356_p2 = (trunc_ln29_reg_815 + 7'd2);
assign add_ln29_2_fu_424_p2 = (a_idx_reg_800 + 8'd3);
assign add_ln29_3_fu_710_p2 = (a_idx_reg_800 + 8'd4);
assign add_ln29_fu_346_p2 = (trunc_ln29_reg_815 + 7'd1);
assign add_ln30_fu_301_p2 = ($signed(trunc_ln29_fu_297_p1) + $signed(7'd127));
assign add_ln39_fu_326_p2 = (zext_ln30_1_fu_323_p1 + empty);
assign add_ln40_2_fu_401_p2 = (zext_ln30_3_fu_385_p1 + empty);
assign add_ln40_4_fu_414_p2 = (zext_ln30_5_fu_411_p1 + empty);
assign add_ln40_6_fu_468_p2 = (zext_ln30_6_fu_465_p1 + empty);
assign add_ln40_fu_312_p2 = (zext_ln29_1_fu_293_p1 + empty);
assign add_ln41_fu_336_p2 = (zext_ln30_1_fu_323_p1 + mul_ln29);
assign add_ln45_1_fu_457_p2 = (zext_ln30_3_reg_894 + mul_ln29);
assign add_ln45_2_fu_461_p2 = (zext_ln30_5_reg_910 + mul_ln29);
assign add_ln45_3_fu_478_p2 = (zext_ln30_6_fu_465_p1 + mul_ln29);
assign add_ln45_fu_453_p2 = (zext_ln29_1_reg_810 + mul_ln29);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign empty_20_fu_505_p2 = (icmp_ln48_fu_492_p2 | icmp_ln46_fu_488_p2);
assign empty_21_fu_612_p2 = (icmp_ln48_1_reg_1002 | icmp_ln46_1_reg_996);
assign empty_22_fu_672_p2 = (icmp_ln48_2_fu_660_p2 | icmp_ln46_2_fu_656_p2);
assign empty_23_fu_753_p2 = (icmp_ln48_3_reg_1057 | icmp_ln46_3_reg_1051);
assign grp_fu_249_p2 = ((SEQA_q1 == SEQB_load) ? 1'b1 : 1'b0);
assign grp_fu_254_p2 = ((SEQA_q0 == SEQB_load) ? 1'b1 : 1'b0);
assign grp_fu_264_p2 = ($signed(reg_259) + $signed(32'd4294967295));
assign icmp_ln29_fu_282_p2 = ((ap_sig_allocacmp_a_idx < 8'd129) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_441_p2 = (($signed(up_left_reg_881) > $signed(select_ln43_fu_434_p3)) ? 1'b1 : 1'b0);
assign icmp_ln43_2_fu_529_p2 = (($signed(grp_fu_264_p2) > $signed(left_1_fu_524_p2)) ? 1'b1 : 1'b0);
assign icmp_ln43_3_fu_556_p2 = (($signed(up_left_1_reg_899) > $signed(select_ln43_2_reg_979)) ? 1'b1 : 1'b0);
assign icmp_ln43_4_fu_629_p2 = (($signed(up_2_reg_1007) > $signed(left_2_reg_1014)) ? 1'b1 : 1'b0);
assign icmp_ln43_5_fu_639_p2 = (($signed(up_left_2_reg_985) > $signed(select_ln43_4_fu_633_p3)) ? 1'b1 : 1'b0);
assign icmp_ln43_6_fu_696_p2 = (($signed(grp_fu_264_p2) > $signed(left_3_fu_691_p2)) ? 1'b1 : 1'b0);
assign icmp_ln43_7_fu_720_p2 = (($signed(up_left_3_reg_1021) > $signed(select_ln43_6_reg_1040)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_429_p2 = (($signed(reg_270) > $signed(left_reg_887)) ? 1'b1 : 1'b0);
assign icmp_ln46_1_fu_571_p2 = ((max_1_fu_560_p3 == left_1_reg_974) ? 1'b1 : 1'b0);
assign icmp_ln46_2_fu_656_p2 = ((max_2_reg_1027 == left_2_reg_1014) ? 1'b1 : 1'b0);
assign icmp_ln46_3_fu_735_p2 = ((max_3_fu_724_p3 == left_3_reg_1035) ? 1'b1 : 1'b0);
assign icmp_ln46_fu_488_p2 = ((max_reg_935 == left_reg_887) ? 1'b1 : 1'b0);
assign icmp_ln48_1_fu_576_p2 = ((max_1_fu_560_p3 == reg_270) ? 1'b1 : 1'b0);
assign icmp_ln48_2_fu_660_p2 = ((max_2_reg_1027 == up_2_reg_1007) ? 1'b1 : 1'b0);
assign icmp_ln48_3_fu_740_p2 = ((max_3_fu_724_p3 == reg_270) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_492_p2 = ((max_reg_935 == reg_270) ? 1'b1 : 1'b0);
assign left_1_fu_524_p2 = ($signed(max_reg_935) + $signed(32'd4294967295));
assign left_2_fu_587_p2 = ($signed(max_1_fu_560_p3) + $signed(32'd4294967295));
assign left_3_fu_691_p2 = ($signed(max_2_reg_1027) + $signed(32'd4294967295));
assign left_fu_379_p2 = ($signed(M_q0) + $signed(32'd4294967295));
assign max_1_fu_560_p3 = ((icmp_ln43_3_fu_556_p2[0:0] == 1'b1) ? up_left_1_reg_899 : select_ln43_2_reg_979);
assign max_2_fu_644_p3 = ((icmp_ln43_5_fu_639_p2[0:0] == 1'b1) ? up_left_2_reg_985 : select_ln43_4_fu_633_p3);
assign max_3_fu_724_p3 = ((icmp_ln43_7_fu_720_p2[0:0] == 1'b1) ? up_left_3_reg_1021 : select_ln43_6_reg_1040);
assign max_fu_446_p3 = ((icmp_ln43_1_fu_441_p2[0:0] == 1'b1) ? up_left_reg_881 : select_ln43_fu_434_p3);
assign ptr_address0 = ptr_address0_local;
assign ptr_ce0 = ptr_ce0_local;
assign ptr_d0 = ptr_d0_local;
assign ptr_we0 = ptr_we0_local;
assign select_ln39_1_fu_388_p3 = ((icmp_ln30_1_reg_861[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_2_fu_543_p3 = ((icmp_ln30_2_reg_915[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_3_fu_593_p3 = ((icmp_ln30_3_reg_930[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_fu_366_p3 = ((icmp_ln30_reg_841[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln43_2_fu_535_p3 = ((icmp_ln43_2_fu_529_p2[0:0] == 1'b1) ? grp_fu_264_p2 : left_1_fu_524_p2);
assign select_ln43_4_fu_633_p3 = ((icmp_ln43_4_fu_629_p2[0:0] == 1'b1) ? up_2_reg_1007 : left_2_reg_1014);
assign select_ln43_6_fu_702_p3 = ((icmp_ln43_6_fu_696_p2[0:0] == 1'b1) ? grp_fu_264_p2 : left_3_fu_691_p2);
assign select_ln43_fu_434_p3 = ((icmp_ln43_fu_429_p2[0:0] == 1'b1) ? reg_270 : left_reg_887);
assign select_ln48_1_fu_605_p3 = ((icmp_ln46_1_reg_996[0:0] == 1'b1) ? 7'd60 : 7'd94);
assign select_ln48_2_fu_664_p3 = ((icmp_ln46_2_fu_656_p2[0:0] == 1'b1) ? 7'd60 : 7'd94);
assign select_ln48_3_fu_746_p3 = ((icmp_ln46_3_reg_1051[0:0] == 1'b1) ? 7'd60 : 7'd94);
assign select_ln48_fu_497_p3 = ((icmp_ln46_fu_488_p2[0:0] == 1'b1) ? 7'd60 : 7'd94);
assign storemerge10_fu_616_p3 = ((empty_21_fu_612_p2[0:0] == 1'b1) ? select_ln48_1_fu_605_p3 : 7'd92);
assign storemerge12_fu_678_p3 = ((empty_22_fu_672_p2[0:0] == 1'b1) ? select_ln48_2_fu_664_p3 : 7'd92);
assign storemerge14_fu_757_p3 = ((empty_23_fu_753_p2[0:0] == 1'b1) ? select_ln48_3_fu_746_p3 : 7'd92);
assign storemerge8_fu_511_p3 = ((empty_20_fu_505_p2[0:0] == 1'b1) ? select_ln48_fu_497_p3 : 7'd92);
assign trunc_ln29_fu_297_p1 = ap_sig_allocacmp_a_idx[6:0];
assign up_2_fu_582_p2 = ($signed(M_load_4_reg_953) + $signed(32'd4294967295));
assign up_left_1_fu_395_p2 = (reg_259 + select_ln39_1_fu_388_p3);
assign up_left_2_fu_550_p2 = (reg_259 + select_ln39_2_fu_543_p3);
assign up_left_3_fu_600_p2 = (M_load_4_reg_953 + select_ln39_3_fu_593_p3);
assign up_left_fu_373_p2 = (M_q1 + select_ln39_fu_366_p3);
assign zext_ln29_1_fu_293_p1 = ap_sig_allocacmp_a_idx;
assign zext_ln29_fu_288_p1 = ap_sig_allocacmp_a_idx;
assign zext_ln30_1_fu_323_p1 = add_ln30_reg_821;
assign zext_ln30_2_fu_351_p1 = add_ln29_fu_346_p2;
assign zext_ln30_3_fu_385_p1 = add_ln29_reg_856;
assign zext_ln30_4_fu_361_p1 = add_ln29_1_fu_356_p2;
assign zext_ln30_5_fu_411_p1 = add_ln29_1_reg_866;
assign zext_ln30_6_fu_465_p1 = add_ln29_2_reg_925;
assign zext_ln30_fu_307_p1 = add_ln30_fu_301_p2;
assign zext_ln39_fu_331_p1 = add_ln39_fu_326_p2;
assign zext_ln40_1_fu_406_p1 = add_ln40_2_fu_401_p2;
assign zext_ln40_2_fu_419_p1 = add_ln40_4_fu_414_p2;
assign zext_ln40_3_fu_473_p1 = add_ln40_6_fu_468_p2;
assign zext_ln40_fu_318_p1 = add_ln40_fu_312_p2;
assign zext_ln41_fu_341_p1 = add_ln41_fu_336_p2;
assign zext_ln45_1_fu_567_p1 = add_ln45_1_reg_948;
assign zext_ln45_2_fu_651_p1 = add_ln45_2_reg_959;
assign zext_ln45_3_fu_731_p1 = add_ln45_3_reg_969;
assign zext_ln45_fu_483_p1 = add_ln45_reg_943;
assign zext_ln47_1_fu_624_p1 = storemerge10_fu_616_p3;
assign zext_ln47_2_fu_686_p1 = storemerge12_fu_678_p3;
assign zext_ln47_3_fu_765_p1 = storemerge14_fu_757_p3;
assign zext_ln47_fu_519_p1 = storemerge8_fu_511_p3;
always @ (posedge ap_clk) begin
    zext_ln29_1_reg_810[14:8] <= 7'b0000000;
    zext_ln30_3_reg_894[14:7] <= 8'b00000000;
    zext_ln30_5_reg_910[14:7] <= 8'b00000000;
    zext_ln45_1_reg_991[63:15] <= 49'b0000000000000000000000000000000000000000000000000;
    zext_ln45_3_reg_1046[63:15] <= 49'b0000000000000000000000000000000000000000000000000;
end
endmodule 