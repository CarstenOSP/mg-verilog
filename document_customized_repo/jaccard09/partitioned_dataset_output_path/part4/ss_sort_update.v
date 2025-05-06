
module ss_sort_update (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_address0,a_ce0,a_we0,a_d0,bucket_address0,bucket_ce0,bucket_we0,bucket_d0,bucket_q0,b_address0,b_ce0,b_q0,b_address1,b_ce1,b_q1,exp);  
parameter    ap_ST_fsm_pp0_stage0 = 24'd1;
parameter    ap_ST_fsm_pp0_stage1 = 24'd2;
parameter    ap_ST_fsm_pp0_stage2 = 24'd4;
parameter    ap_ST_fsm_pp0_stage3 = 24'd8;
parameter    ap_ST_fsm_pp0_stage4 = 24'd16;
parameter    ap_ST_fsm_pp0_stage5 = 24'd32;
parameter    ap_ST_fsm_pp0_stage6 = 24'd64;
parameter    ap_ST_fsm_pp0_stage7 = 24'd128;
parameter    ap_ST_fsm_pp0_stage8 = 24'd256;
parameter    ap_ST_fsm_pp0_stage9 = 24'd512;
parameter    ap_ST_fsm_pp0_stage10 = 24'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 24'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 24'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 24'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 24'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 24'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 24'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 24'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 24'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 24'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 24'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 24'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 24'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 24'd8388608;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] a_address0;
output   a_ce0;
output   a_we0;
output  [31:0] a_d0;
output  [10:0] bucket_address0;
output   bucket_ce0;
output   bucket_we0;
output  [31:0] bucket_d0;
input  [31:0] bucket_q0;
output  [10:0] b_address0;
output   b_ce0;
input  [31:0] b_q0;
output  [10:0] b_address1;
output   b_ce1;
input  [31:0] b_q1;
input  [4:0] exp;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_reg_703;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_subdone;
reg   [31:0] reg_295;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_300;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire   [31:0] exp_cast3_fu_316_p1;
reg   [31:0] exp_cast3_reg_685;
wire    ap_block_pp0_stage0_11001;
reg   [9:0] blockID_1_reg_696;
wire   [8:0] empty_fu_336_p1;
reg   [8:0] empty_reg_707;
reg   [31:0] b_load_1_reg_723;
wire   [1:0] trunc_ln70_fu_390_p1;
reg   [1:0] trunc_ln70_reg_739;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] b_load_2_reg_744;
reg   [31:0] b_load_3_reg_750;
wire   [7:0] tmp_6_fu_394_p4;
reg   [7:0] tmp_6_reg_756;
wire   [10:0] zext_ln68_fu_429_p1;
reg   [10:0] zext_ln68_reg_776;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [10:0] bucket_addr_reg_783;
wire   [1:0] trunc_ln70_1_fu_454_p1;
reg   [1:0] trunc_ln70_1_reg_788;
reg   [31:0] b_load_4_reg_793;
reg   [31:0] b_load_5_reg_799;
wire   [1:0] trunc_ln70_2_fu_491_p1;
reg   [1:0] trunc_ln70_2_reg_815;
reg   [31:0] b_load_7_reg_820;
wire   [1:0] trunc_ln70_3_fu_499_p1;
reg   [1:0] trunc_ln70_3_reg_826;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [10:0] bucket_addr_1_reg_831;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [1:0] trunc_ln70_4_fu_524_p1;
reg   [1:0] trunc_ln70_4_reg_836;
wire   [1:0] trunc_ln70_5_fu_537_p1;
reg   [1:0] trunc_ln70_5_reg_841;
wire   [1:0] trunc_ln70_6_fu_541_p1;
reg   [1:0] trunc_ln70_6_reg_846;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [10:0] bucket_addr_2_reg_851;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [10:0] add_ln70_3_fu_569_p2;
reg   [10:0] add_ln70_3_reg_856;
wire   [1:0] trunc_ln70_7_fu_578_p1;
reg   [1:0] trunc_ln70_7_reg_861;
reg   [10:0] bucket_addr_3_reg_866;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [10:0] bucket_addr_4_reg_871;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [10:0] bucket_addr_5_reg_876;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [10:0] bucket_addr_6_reg_881;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [10:0] bucket_addr_7_reg_886;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln70_fu_348_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln70_1_fu_361_p1;
wire   [63:0] zext_ln70_2_fu_373_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln70_3_fu_385_p1;
wire   [63:0] zext_ln70_4_fu_411_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln70_5_fu_424_p1;
wire   [63:0] zext_ln72_fu_445_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln70_6_fu_465_p1;
wire   [63:0] zext_ln70_7_fu_477_p1;
wire   [63:0] zext_ln72_1_fu_482_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln72_2_fu_515_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln72_3_fu_528_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln72_4_fu_557_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln72_5_fu_582_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln72_6_fu_587_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln72_7_fu_591_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln72_8_fu_604_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln72_9_fu_609_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln72_10_fu_622_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln72_11_fu_627_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] zext_ln72_12_fu_640_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] zext_ln72_13_fu_645_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] zext_ln72_14_fu_668_p1;
wire   [63:0] zext_ln72_15_fu_673_p1;
reg   [9:0] blockID_fu_74;
wire   [9:0] add_ln68_fu_650_p2;
wire    ap_block_pp0_stage23_11001;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_blockID_1;
reg    b_ce1_local;
reg   [10:0] b_address1_local;
reg    b_ce0_local;
reg   [10:0] b_address0_local;
reg    bucket_ce0_local;
reg   [10:0] bucket_address0_local;
reg    bucket_we0_local;
wire   [31:0] grp_fu_309_p2;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage8;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage11;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage14;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_block_pp0_stage17;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage23;
reg    a_we0_local;
reg   [31:0] a_d0_local;
reg    a_ce0_local;
reg   [10:0] a_address0_local;
wire   [10:0] tmp_1_fu_340_p3;
wire   [10:0] or_ln_fu_353_p3;
wire   [10:0] or_ln70_1_fu_366_p3;
wire   [10:0] or_ln70_2_fu_378_p3;
wire   [31:0] grp_fu_304_p2;
wire   [10:0] tmp_7_fu_403_p3;
wire   [10:0] or_ln70_3_fu_416_p3;
wire   [10:0] shl_ln_fu_432_p3;
wire   [10:0] add_ln70_fu_439_p2;
wire   [31:0] ashr_ln70_1_fu_450_p2;
wire   [10:0] or_ln70_4_fu_458_p3;
wire   [10:0] or_ln70_5_fu_470_p3;
wire   [31:0] ashr_ln70_2_fu_487_p2;
wire   [31:0] ashr_ln70_3_fu_495_p2;
wire   [10:0] shl_ln70_1_fu_503_p3;
wire   [10:0] add_ln70_1_fu_510_p2;
wire   [31:0] ashr_ln70_4_fu_520_p2;
wire   [31:0] ashr_ln70_5_fu_533_p2;
wire   [10:0] shl_ln70_2_fu_545_p3;
wire   [10:0] add_ln70_2_fu_552_p2;
wire   [10:0] shl_ln70_3_fu_562_p3;
wire   [31:0] ashr_ln70_7_fu_574_p2;
wire   [10:0] add_ln70_4_fu_596_p4;
wire   [10:0] add_ln70_5_fu_614_p4;
wire   [10:0] add_ln70_6_fu_632_p4;
wire   [10:0] add_ln70_7_fu_660_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [23:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 24'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 blockID_fu_74 = 10'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_fu_74 <= 10'd0;
    end else if (((tmp_reg_703 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        blockID_fu_74 <= add_ln68_fu_650_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln70_3_reg_856 <= add_ln70_3_fu_569_p2;
        bucket_addr_2_reg_851 <= zext_ln72_4_fu_557_p1;
        trunc_ln70_7_reg_861 <= trunc_ln70_7_fu_578_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_load_1_reg_723 <= b_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        b_load_2_reg_744 <= b_q1;
        b_load_3_reg_750 <= b_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        b_load_4_reg_793 <= b_q1;
        b_load_5_reg_799 <= b_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        b_load_7_reg_820 <= b_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_1_reg_696 <= ap_sig_allocacmp_blockID_1;
        bucket_addr_7_reg_886[10 : 1] <= zext_ln72_14_fu_668_p1[10 : 1];
        empty_reg_707 <= empty_fu_336_p1;
        exp_cast3_reg_685[4 : 0] <= exp_cast3_fu_316_p1[4 : 0];
        tmp_reg_703 <= ap_sig_allocacmp_blockID_1[32'd9];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_addr_1_reg_831 <= zext_ln72_2_fu_515_p1;
        trunc_ln70_4_reg_836 <= trunc_ln70_4_fu_524_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        bucket_addr_3_reg_866 <= zext_ln72_6_fu_587_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        bucket_addr_4_reg_871[10 : 1] <= zext_ln72_8_fu_604_p1[10 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        bucket_addr_5_reg_876[10 : 1] <= zext_ln72_10_fu_622_p1[10 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        bucket_addr_6_reg_881[10 : 1] <= zext_ln72_12_fu_640_p1[10 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_addr_reg_783 <= zext_ln72_fu_445_p1;
        trunc_ln70_1_reg_788 <= trunc_ln70_1_fu_454_p1;
        zext_ln68_reg_776[9 : 0] <= zext_ln68_fu_429_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_295 <= b_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_300 <= bucket_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_6_reg_756 <= {{blockID_1_reg_696[8:1]}};
        trunc_ln70_reg_739 <= trunc_ln70_fu_390_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        trunc_ln70_2_reg_815 <= trunc_ln70_2_fu_491_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        trunc_ln70_3_reg_826 <= trunc_ln70_3_fu_499_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        trunc_ln70_5_reg_841 <= trunc_ln70_5_fu_537_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        trunc_ln70_6_reg_846 <= trunc_ln70_6_fu_541_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_address0_local = zext_ln72_15_fu_673_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        a_address0_local = zext_ln72_13_fu_645_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        a_address0_local = zext_ln72_11_fu_627_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        a_address0_local = zext_ln72_9_fu_609_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        a_address0_local = zext_ln72_7_fu_591_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        a_address0_local = zext_ln72_5_fu_582_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_address0_local = zext_ln72_3_fu_528_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_address0_local = zext_ln72_1_fu_482_p1;
    end else begin
        a_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_ce0_local = 1'b1;
    end else begin
        a_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_d0_local = b_load_7_reg_820;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        a_d0_local = b_load_5_reg_799;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        a_d0_local = b_load_4_reg_793;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        a_d0_local = b_load_3_reg_750;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        a_d0_local = b_load_2_reg_744;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_d0_local = b_load_1_reg_723;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        a_d0_local = reg_295;
    end else begin
        a_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_703 == 1'd0) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((tmp_reg_703 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_703 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_703 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_703 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_703 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_703 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 ==ap_CS_fsm_pp0_stage1)))) begin
        a_we0_local = 1'b1;
    end else begin
        a_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_703 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_blockID_1 = 10'd0;
    end else begin
        ap_sig_allocacmp_blockID_1 = blockID_fu_74;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            b_address0_local = zext_ln70_7_fu_477_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            b_address0_local = zext_ln70_5_fu_424_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_address0_local = zext_ln70_3_fu_385_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_address0_local = zext_ln70_1_fu_361_p1;
        end else begin
            b_address0_local = 'bx;
        end
    end else begin
        b_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            b_address1_local = zext_ln70_6_fu_465_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            b_address1_local = zext_ln70_4_fu_411_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_address1_local = zext_ln70_2_fu_373_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_address1_local = zext_ln70_fu_348_p1;
        end else begin
            b_address1_local = 'bx;
        end
    end else begin
        b_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        b_ce0_local = 1'b1;
    end else begin
        b_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        b_ce1_local = 1'b1;
    end else begin
        b_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_address0_local = bucket_addr_7_reg_886;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_address0_local = zext_ln72_14_fu_668_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        bucket_address0_local = bucket_addr_6_reg_881;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        bucket_address0_local = zext_ln72_12_fu_640_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        bucket_address0_local = bucket_addr_5_reg_876;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        bucket_address0_local = zext_ln72_10_fu_622_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        bucket_address0_local = bucket_addr_4_reg_871;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        bucket_address0_local = zext_ln72_8_fu_604_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        bucket_address0_local = bucket_addr_3_reg_866;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        bucket_address0_local = zext_ln72_6_fu_587_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_address0_local = bucket_addr_2_reg_851;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_address0_local = zext_ln72_4_fu_557_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_address0_local = bucket_addr_1_reg_831;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_address0_local = zext_ln72_2_fu_515_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_address0_local = bucket_addr_reg_783;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_address0_local = zext_ln72_fu_445_p1;
    end else begin
        bucket_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_ce0_local = 1'b1;
    end else begin
        bucket_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_703 == 1'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((tmp_reg_703 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_703 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_703 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_703 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((tmp_reg_703 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_703 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 ==ap_CS_fsm_pp0_stage2)))) begin
        bucket_we0_local = 1'b1;
    end else begin
        bucket_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_address0 = a_address0_local;
assign a_ce0 = a_ce0_local;
assign a_d0 = a_d0_local;
assign a_we0 = a_we0_local;
assign add_ln68_fu_650_p2 = (blockID_1_reg_696 + 10'd2);
assign add_ln70_1_fu_510_p2 = (zext_ln68_reg_776 + shl_ln70_1_fu_503_p3);
assign add_ln70_2_fu_552_p2 = (zext_ln68_reg_776 + shl_ln70_2_fu_545_p3);
assign add_ln70_3_fu_569_p2 = (zext_ln68_reg_776 + shl_ln70_3_fu_562_p3);
assign add_ln70_4_fu_596_p4 = {{{trunc_ln70_4_reg_836}, {tmp_6_reg_756}}, {1'd1}};
assign add_ln70_5_fu_614_p4 = {{{trunc_ln70_5_reg_841}, {tmp_6_reg_756}}, {1'd1}};
assign add_ln70_6_fu_632_p4 = {{{trunc_ln70_6_reg_846}, {tmp_6_reg_756}}, {1'd1}};
assign add_ln70_7_fu_660_p4 = {{{trunc_ln70_7_reg_861}, {tmp_6_reg_756}}, {1'd1}};
assign add_ln70_fu_439_p2 = (zext_ln68_fu_429_p1 + shl_ln_fu_432_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
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
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign ashr_ln70_1_fu_450_p2 = $signed(b_load_1_reg_723) >>> exp_cast3_reg_685;
assign ashr_ln70_2_fu_487_p2 = $signed(b_load_2_reg_744) >>> exp_cast3_reg_685;
assign ashr_ln70_3_fu_495_p2 = $signed(b_load_3_reg_750) >>> exp_cast3_reg_685;
assign ashr_ln70_4_fu_520_p2 = $signed(b_load_4_reg_793) >>> exp_cast3_reg_685;
assign ashr_ln70_5_fu_533_p2 = $signed(b_load_5_reg_799) >>> exp_cast3_reg_685;
assign ashr_ln70_7_fu_574_p2 = $signed(b_load_7_reg_820) >>> exp_cast3_reg_685;
assign b_address0 = b_address0_local;
assign b_address1 = b_address1_local;
assign b_ce0 = b_ce0_local;
assign b_ce1 = b_ce1_local;
assign bucket_address0 = bucket_address0_local;
assign bucket_ce0 = bucket_ce0_local;
assign bucket_d0 = grp_fu_309_p2;
assign bucket_we0 = bucket_we0_local;
assign empty_fu_336_p1 = ap_sig_allocacmp_blockID_1[8:0];
assign exp_cast3_fu_316_p1 = exp;
assign grp_fu_304_p2 = $signed(reg_295) >>> exp_cast3_reg_685;
assign grp_fu_309_p2 = (reg_300 + 32'd1);
assign or_ln70_1_fu_366_p3 = {{empty_reg_707}, {2'd2}};
assign or_ln70_2_fu_378_p3 = {{empty_reg_707}, {2'd3}};
assign or_ln70_3_fu_416_p3 = {{tmp_6_fu_394_p4}, {3'd5}};
assign or_ln70_4_fu_458_p3 = {{tmp_6_reg_756}, {3'd6}};
assign or_ln70_5_fu_470_p3 = {{tmp_6_reg_756}, {3'd7}};
assign or_ln_fu_353_p3 = {{empty_fu_336_p1}, {2'd1}};
assign shl_ln70_1_fu_503_p3 = {{trunc_ln70_1_reg_788}, {9'd0}};
assign shl_ln70_2_fu_545_p3 = {{trunc_ln70_2_reg_815}, {9'd0}};
assign shl_ln70_3_fu_562_p3 = {{trunc_ln70_3_reg_826}, {9'd0}};
assign shl_ln_fu_432_p3 = {{trunc_ln70_reg_739}, {9'd0}};
assign tmp_1_fu_340_p3 = {{empty_fu_336_p1}, {2'd0}};
assign tmp_6_fu_394_p4 = {{blockID_1_reg_696[8:1]}};
assign tmp_7_fu_403_p3 = {{tmp_6_fu_394_p4}, {3'd4}};
assign trunc_ln70_1_fu_454_p1 = ashr_ln70_1_fu_450_p2[1:0];
assign trunc_ln70_2_fu_491_p1 = ashr_ln70_2_fu_487_p2[1:0];
assign trunc_ln70_3_fu_499_p1 = ashr_ln70_3_fu_495_p2[1:0];
assign trunc_ln70_4_fu_524_p1 = ashr_ln70_4_fu_520_p2[1:0];
assign trunc_ln70_5_fu_537_p1 = ashr_ln70_5_fu_533_p2[1:0];
assign trunc_ln70_6_fu_541_p1 = grp_fu_304_p2[1:0];
assign trunc_ln70_7_fu_578_p1 = ashr_ln70_7_fu_574_p2[1:0];
assign trunc_ln70_fu_390_p1 = grp_fu_304_p2[1:0];
assign zext_ln68_fu_429_p1 = blockID_1_reg_696;
assign zext_ln70_1_fu_361_p1 = or_ln_fu_353_p3;
assign zext_ln70_2_fu_373_p1 = or_ln70_1_fu_366_p3;
assign zext_ln70_3_fu_385_p1 = or_ln70_2_fu_378_p3;
assign zext_ln70_4_fu_411_p1 = tmp_7_fu_403_p3;
assign zext_ln70_5_fu_424_p1 = or_ln70_3_fu_416_p3;
assign zext_ln70_6_fu_465_p1 = or_ln70_4_fu_458_p3;
assign zext_ln70_7_fu_477_p1 = or_ln70_5_fu_470_p3;
assign zext_ln70_fu_348_p1 = tmp_1_fu_340_p3;
assign zext_ln72_10_fu_622_p1 = add_ln70_5_fu_614_p4;
assign zext_ln72_11_fu_627_p1 = bucket_q0;
assign zext_ln72_12_fu_640_p1 = add_ln70_6_fu_632_p4;
assign zext_ln72_13_fu_645_p1 = bucket_q0;
assign zext_ln72_14_fu_668_p1 = add_ln70_7_fu_660_p4;
assign zext_ln72_15_fu_673_p1 = bucket_q0;
assign zext_ln72_1_fu_482_p1 = bucket_q0;
assign zext_ln72_2_fu_515_p1 = add_ln70_1_fu_510_p2;
assign zext_ln72_3_fu_528_p1 = bucket_q0;
assign zext_ln72_4_fu_557_p1 = add_ln70_2_fu_552_p2;
assign zext_ln72_5_fu_582_p1 = bucket_q0;
assign zext_ln72_6_fu_587_p1 = add_ln70_3_reg_856;
assign zext_ln72_7_fu_591_p1 = bucket_q0;
assign zext_ln72_8_fu_604_p1 = add_ln70_4_fu_596_p4;
assign zext_ln72_9_fu_609_p1 = bucket_q0;
assign zext_ln72_fu_445_p1 = add_ln70_fu_439_p2;
always @ (posedge ap_clk) begin
    exp_cast3_reg_685[31:5] <= 27'b000000000000000000000000000;
    zext_ln68_reg_776[10] <= 1'b0;
    bucket_addr_4_reg_871[0] <= 1'b1;
    bucket_addr_5_reg_876[0] <= 1'b1;
    bucket_addr_6_reg_881[0] <= 1'b1;
    bucket_addr_7_reg_886[0] <= 1'b1;
end
endmodule 
