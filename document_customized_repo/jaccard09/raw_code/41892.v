module fft1D_512_fft1D_512_Pipeline_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_we0,DATA_y_7_d0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_we0,DATA_y_6_d0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_we0,DATA_y_5_d0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_we0,DATA_y_4_d0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_we0,DATA_y_3_d0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_we0,DATA_y_2_d0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,smem_address0,smem_ce0,smem_q0,smem_1_address0,smem_1_ce0,smem_1_q0,smem_2_address0,smem_2_ce0,smem_2_q0,smem_3_address0,smem_3_ce0,smem_3_q0,smem_4_address0,smem_4_ce0,smem_4_q0,smem_5_address0,smem_5_ce0,smem_5_q0,smem_6_address0,smem_6_ce0,smem_6_q0,smem_7_address0,smem_7_ce0,smem_7_q0,smem_8_address0,smem_8_ce0,smem_8_q0,smem_9_address0,smem_9_ce0,smem_9_q0,smem_10_address0,smem_10_ce0,smem_10_q0,smem_11_address0,smem_11_ce0,smem_11_q0,smem_12_address0,smem_12_ce0,smem_12_q0,smem_13_address0,smem_13_ce0,smem_13_q0,smem_14_address0,smem_14_ce0,smem_14_q0,smem_15_address0,smem_15_ce0,smem_15_q0,smem_16_address0,smem_16_ce0,smem_16_q0,smem_17_address0,smem_17_ce0,smem_17_q0,smem_18_address0,smem_18_ce0,smem_18_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 60'd1;
parameter    ap_ST_fsm_pp0_stage1 = 60'd2;
parameter    ap_ST_fsm_pp0_stage2 = 60'd4;
parameter    ap_ST_fsm_pp0_stage3 = 60'd8;
parameter    ap_ST_fsm_pp0_stage4 = 60'd16;
parameter    ap_ST_fsm_pp0_stage5 = 60'd32;
parameter    ap_ST_fsm_pp0_stage6 = 60'd64;
parameter    ap_ST_fsm_pp0_stage7 = 60'd128;
parameter    ap_ST_fsm_pp0_stage8 = 60'd256;
parameter    ap_ST_fsm_pp0_stage9 = 60'd512;
parameter    ap_ST_fsm_pp0_stage10 = 60'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 60'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 60'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 60'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 60'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 60'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 60'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 60'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 60'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 60'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 60'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 60'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 60'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 60'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 60'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 60'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 60'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 60'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 60'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 60'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 60'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 60'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 60'd4294967296;
parameter    ap_ST_fsm_pp0_stage33 = 60'd8589934592;
parameter    ap_ST_fsm_pp0_stage34 = 60'd17179869184;
parameter    ap_ST_fsm_pp0_stage35 = 60'd34359738368;
parameter    ap_ST_fsm_pp0_stage36 = 60'd68719476736;
parameter    ap_ST_fsm_pp0_stage37 = 60'd137438953472;
parameter    ap_ST_fsm_pp0_stage38 = 60'd274877906944;
parameter    ap_ST_fsm_pp0_stage39 = 60'd549755813888;
parameter    ap_ST_fsm_pp0_stage40 = 60'd1099511627776;
parameter    ap_ST_fsm_pp0_stage41 = 60'd2199023255552;
parameter    ap_ST_fsm_pp0_stage42 = 60'd4398046511104;
parameter    ap_ST_fsm_pp0_stage43 = 60'd8796093022208;
parameter    ap_ST_fsm_pp0_stage44 = 60'd17592186044416;
parameter    ap_ST_fsm_pp0_stage45 = 60'd35184372088832;
parameter    ap_ST_fsm_pp0_stage46 = 60'd70368744177664;
parameter    ap_ST_fsm_pp0_stage47 = 60'd140737488355328;
parameter    ap_ST_fsm_pp0_stage48 = 60'd281474976710656;
parameter    ap_ST_fsm_pp0_stage49 = 60'd562949953421312;
parameter    ap_ST_fsm_pp0_stage50 = 60'd1125899906842624;
parameter    ap_ST_fsm_pp0_stage51 = 60'd2251799813685248;
parameter    ap_ST_fsm_pp0_stage52 = 60'd4503599627370496;
parameter    ap_ST_fsm_pp0_stage53 = 60'd9007199254740992;
parameter    ap_ST_fsm_pp0_stage54 = 60'd18014398509481984;
parameter    ap_ST_fsm_pp0_stage55 = 60'd36028797018963968;
parameter    ap_ST_fsm_pp0_stage56 = 60'd72057594037927936;
parameter    ap_ST_fsm_pp0_stage57 = 60'd144115188075855872;
parameter    ap_ST_fsm_pp0_stage58 = 60'd288230376151711744;
parameter    ap_ST_fsm_pp0_stage59 = 60'd576460752303423488;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
output   DATA_y_7_we0;
output  [63:0] DATA_y_7_d0;
output  [5:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
output   DATA_y_6_we0;
output  [63:0] DATA_y_6_d0;
output  [5:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
output   DATA_y_5_we0;
output  [63:0] DATA_y_5_d0;
output  [5:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
output   DATA_y_4_we0;
output  [63:0] DATA_y_4_d0;
output  [5:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
output   DATA_y_3_we0;
output  [63:0] DATA_y_3_d0;
output  [5:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
output   DATA_y_2_we0;
output  [63:0] DATA_y_2_d0;
output  [5:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [5:0] DATA_y_address0;
output   DATA_y_ce0;
output   DATA_y_we0;
output  [63:0] DATA_y_d0;
output  [4:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [4:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [4:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [4:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [4:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [4:0] smem_5_address0;
output   smem_5_ce0;
input  [63:0] smem_5_q0;
output  [4:0] smem_6_address0;
output   smem_6_ce0;
input  [63:0] smem_6_q0;
output  [4:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [4:0] smem_8_address0;
output   smem_8_ce0;
input  [63:0] smem_8_q0;
output  [4:0] smem_9_address0;
output   smem_9_ce0;
input  [63:0] smem_9_q0;
output  [4:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
output  [4:0] smem_11_address0;
output   smem_11_ce0;
input  [63:0] smem_11_q0;
output  [4:0] smem_12_address0;
output   smem_12_ce0;
input  [63:0] smem_12_q0;
output  [4:0] smem_13_address0;
output   smem_13_ce0;
input  [63:0] smem_13_q0;
output  [4:0] smem_14_address0;
output   smem_14_ce0;
input  [63:0] smem_14_q0;
output  [4:0] smem_15_address0;
output   smem_15_ce0;
input  [63:0] smem_15_q0;
output  [4:0] smem_16_address0;
output   smem_16_ce0;
input  [63:0] smem_16_q0;
output  [4:0] smem_17_address0;
output   smem_17_ce0;
input  [63:0] smem_17_q0;
output  [4:0] smem_18_address0;
output   smem_18_ce0;
input  [63:0] smem_18_q0;
reg ap_idle;
reg smem_ce0;
reg smem_1_ce0;
reg smem_2_ce0;
reg smem_3_ce0;
reg smem_4_ce0;
reg smem_5_ce0;
reg smem_6_ce0;
reg smem_7_ce0;
reg smem_8_ce0;
reg smem_9_ce0;
reg smem_10_ce0;
reg smem_11_ce0;
reg smem_12_ce0;
reg smem_13_ce0;
reg smem_14_ce0;
reg smem_15_ce0;
reg smem_16_ce0;
reg smem_17_ce0;
reg smem_18_ce0;
(* fsm_encoding = "none" *) reg   [59:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_719;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage59;
wire    ap_block_pp0_stage59_subdone;
reg   [63:0] reg_505;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire    ap_CS_fsm_pp0_stage45;
wire    ap_block_pp0_stage45_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_510;
reg   [63:0] reg_515;
reg   [63:0] reg_520;
reg   [63:0] reg_525;
reg   [63:0] reg_530;
reg   [63:0] reg_535;
reg   [63:0] reg_540;
reg   [6:0] tid_6_reg_708;
wire   [0:0] tmp_fu_553_p3;
wire   [2:0] tmp_245_fu_561_p4;
reg   [2:0] tmp_245_reg_723;
wire    ap_block_pp0_stage1_11001;
wire   [3:0] grp_fu_496_p4;
reg   [3:0] tmp_105_reg_730;
wire    ap_CS_fsm_pp0_stage46;
wire    ap_block_pp0_stage46_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    grp_loady8_fu_412_ap_start;
wire    grp_loady8_fu_412_ap_done;
wire    grp_loady8_fu_412_ap_idle;
wire    grp_loady8_fu_412_ap_ready;
wire   [4:0] grp_loady8_fu_412_x_0_address0;
wire    grp_loady8_fu_412_x_0_ce0;
wire   [4:0] grp_loady8_fu_412_x_1_address0;
wire    grp_loady8_fu_412_x_1_ce0;
wire   [4:0] grp_loady8_fu_412_x_2_address0;
wire    grp_loady8_fu_412_x_2_ce0;
wire   [4:0] grp_loady8_fu_412_x_3_address0;
wire    grp_loady8_fu_412_x_3_ce0;
wire   [4:0] grp_loady8_fu_412_x_4_address0;
wire    grp_loady8_fu_412_x_4_ce0;
wire   [4:0] grp_loady8_fu_412_x_5_address0;
wire    grp_loady8_fu_412_x_5_ce0;
wire   [4:0] grp_loady8_fu_412_x_6_address0;
wire    grp_loady8_fu_412_x_6_ce0;
wire   [4:0] grp_loady8_fu_412_x_7_address0;
wire    grp_loady8_fu_412_x_7_ce0;
wire   [4:0] grp_loady8_fu_412_x_8_address0;
wire    grp_loady8_fu_412_x_8_ce0;
wire   [4:0] grp_loady8_fu_412_x_9_address0;
wire    grp_loady8_fu_412_x_9_ce0;
wire   [4:0] grp_loady8_fu_412_x_10_address0;
wire    grp_loady8_fu_412_x_10_ce0;
wire   [4:0] grp_loady8_fu_412_x_11_address0;
wire    grp_loady8_fu_412_x_11_ce0;
wire   [4:0] grp_loady8_fu_412_x_12_address0;
wire    grp_loady8_fu_412_x_12_ce0;
wire   [4:0] grp_loady8_fu_412_x_13_address0;
wire    grp_loady8_fu_412_x_13_ce0;
wire   [4:0] grp_loady8_fu_412_x_14_address0;
wire    grp_loady8_fu_412_x_14_ce0;
wire   [4:0] grp_loady8_fu_412_x_15_address0;
wire    grp_loady8_fu_412_x_15_ce0;
wire   [4:0] grp_loady8_fu_412_x_16_address0;
wire    grp_loady8_fu_412_x_16_ce0;
wire   [4:0] grp_loady8_fu_412_x_17_address0;
wire    grp_loady8_fu_412_x_17_ce0;
wire   [4:0] grp_loady8_fu_412_x_18_address0;
wire    grp_loady8_fu_412_x_18_ce0;
reg   [8:0] grp_loady8_fu_412_offset;
wire   [63:0] grp_loady8_fu_412_ap_return_0;
wire   [63:0] grp_loady8_fu_412_ap_return_1;
wire   [63:0] grp_loady8_fu_412_ap_return_2;
wire   [63:0] grp_loady8_fu_412_ap_return_3;
wire   [63:0] grp_loady8_fu_412_ap_return_4;
wire   [63:0] grp_loady8_fu_412_ap_return_5;
wire   [63:0] grp_loady8_fu_412_ap_return_6;
wire   [63:0] grp_loady8_fu_412_ap_return_7;
reg    grp_loady8_fu_412_ap_start_reg;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_ignoreCallOp89;
wire    ap_block_pp0_stage15_ignoreCallOp90;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_ignoreCallOp131;
wire    ap_block_pp0_stage30_ignoreCallOp132;
wire    ap_CS_fsm_pp0_stage44;
wire    ap_block_pp0_stage44_ignoreCallOp175;
wire    ap_block_pp0_stage45_ignoreCallOp176;
wire    ap_block_pp0_stage59_ignoreCallOp219;
wire    ap_block_pp0_stage0_ignoreCallOp220;
wire   [8:0] or_ln_fu_573_p3;
wire    ap_block_pp0_stage1_ignoreCallOp74;
wire   [8:0] or_ln4_fu_603_p4;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_ignoreCallOp110;
wire   [8:0] or_ln353_1_fu_633_p4;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_ignoreCallOp154;
wire   [8:0] or_ln353_2_fu_672_p4;
wire    ap_block_pp0_stage46_ignoreCallOp198;
wire   [63:0] zext_ln340_fu_592_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln341_fu_621_p1;
wire    ap_block_pp0_stage31;
wire   [63:0] zext_ln341_1_fu_651_p1;
wire    ap_block_pp0_stage46;
wire   [63:0] zext_ln341_2_fu_689_p1;
wire    ap_block_pp0_stage1;
reg   [6:0] tid_fu_112;
wire   [6:0] add_ln340_fu_582_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_6;
wire    ap_block_pp0_stage0;
reg    DATA_y_we0_local;
wire    ap_block_pp0_stage16_11001;
reg    DATA_y_ce0_local;
reg   [5:0] DATA_y_address0_local;
wire    ap_block_pp0_stage31_11001;
reg    DATA_y_1_we0_local;
reg    DATA_y_1_ce0_local;
reg   [5:0] DATA_y_1_address0_local;
reg    DATA_y_2_we0_local;
reg    DATA_y_2_ce0_local;
reg   [5:0] DATA_y_2_address0_local;
reg    DATA_y_3_we0_local;
reg    DATA_y_3_ce0_local;
reg   [5:0] DATA_y_3_address0_local;
reg    DATA_y_4_we0_local;
reg    DATA_y_4_ce0_local;
reg   [5:0] DATA_y_4_address0_local;
reg    DATA_y_5_we0_local;
reg    DATA_y_5_ce0_local;
reg   [5:0] DATA_y_5_address0_local;
reg    DATA_y_6_we0_local;
reg    DATA_y_6_ce0_local;
reg   [5:0] DATA_y_6_address0_local;
reg    DATA_y_7_we0_local;
reg    DATA_y_7_ce0_local;
reg   [5:0] DATA_y_7_address0_local;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage45;
wire   [5:0] trunc_ln353_fu_570_p1;
wire   [4:0] grp_fu_487_p4;
wire   [5:0] or_ln3_fu_613_p3;
wire   [5:0] or_ln340_1_fu_643_p3;
wire   [3:0] tmp_248_fu_663_p4;
wire   [5:0] or_ln340_2_fu_682_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [59:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
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
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_block_pp0_stage31_subdone;
wire    ap_block_pp0_stage32_subdone;
wire    ap_block_pp0_stage33_subdone;
wire    ap_block_pp0_stage34_subdone;
wire    ap_block_pp0_stage35_subdone;
wire    ap_block_pp0_stage36_subdone;
wire    ap_block_pp0_stage37_subdone;
wire    ap_block_pp0_stage38_subdone;
wire    ap_block_pp0_stage39_subdone;
wire    ap_block_pp0_stage40_subdone;
wire    ap_block_pp0_stage41_subdone;
wire    ap_block_pp0_stage42_subdone;
wire    ap_block_pp0_stage43_subdone;
wire    ap_block_pp0_stage44_subdone;
wire    ap_block_pp0_stage45_subdone;
wire    ap_block_pp0_stage46_subdone;
wire    ap_block_pp0_stage47_subdone;
wire    ap_block_pp0_stage48_subdone;
wire    ap_block_pp0_stage49_subdone;
wire    ap_block_pp0_stage50_subdone;
wire    ap_block_pp0_stage51_subdone;
wire    ap_block_pp0_stage52_subdone;
wire    ap_block_pp0_stage53_subdone;
wire    ap_block_pp0_stage54_subdone;
wire    ap_block_pp0_stage55_subdone;
wire    ap_block_pp0_stage56_subdone;
wire    ap_block_pp0_stage57_subdone;
wire    ap_block_pp0_stage58_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 60'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_loady8_fu_412_ap_start_reg = 1'b0;
#0 tid_fu_112 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_loady8 grp_loady8_fu_412(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_loady8_fu_412_ap_start),.ap_done(grp_loady8_fu_412_ap_done),.ap_idle(grp_loady8_fu_412_ap_idle),.ap_ready(grp_loady8_fu_412_ap_ready),.ap_ce(1'b1),.x_0_address0(grp_loady8_fu_412_x_0_address0),.x_0_ce0(grp_loady8_fu_412_x_0_ce0),.x_0_q0(smem_q0),.x_1_address0(grp_loady8_fu_412_x_1_address0),.x_1_ce0(grp_loady8_fu_412_x_1_ce0),.x_1_q0(smem_1_q0),.x_2_address0(grp_loady8_fu_412_x_2_address0),.x_2_ce0(grp_loady8_fu_412_x_2_ce0),.x_2_q0(smem_2_q0),.x_3_address0(grp_loady8_fu_412_x_3_address0),.x_3_ce0(grp_loady8_fu_412_x_3_ce0),.x_3_q0(smem_3_q0),.x_4_address0(grp_loady8_fu_412_x_4_address0),.x_4_ce0(grp_loady8_fu_412_x_4_ce0),.x_4_q0(smem_4_q0),.x_5_address0(grp_loady8_fu_412_x_5_address0),.x_5_ce0(grp_loady8_fu_412_x_5_ce0),.x_5_q0(smem_5_q0),.x_6_address0(grp_loady8_fu_412_x_6_address0),.x_6_ce0(grp_loady8_fu_412_x_6_ce0),.x_6_q0(smem_6_q0),.x_7_address0(grp_loady8_fu_412_x_7_address0),.x_7_ce0(grp_loady8_fu_412_x_7_ce0),.x_7_q0(smem_7_q0),.x_8_address0(grp_loady8_fu_412_x_8_address0),.x_8_ce0(grp_loady8_fu_412_x_8_ce0),.x_8_q0(smem_8_q0),.x_9_address0(grp_loady8_fu_412_x_9_address0),.x_9_ce0(grp_loady8_fu_412_x_9_ce0),.x_9_q0(smem_9_q0),.x_10_address0(grp_loady8_fu_412_x_10_address0),.x_10_ce0(grp_loady8_fu_412_x_10_ce0),.x_10_q0(smem_10_q0),.x_11_address0(grp_loady8_fu_412_x_11_address0),.x_11_ce0(grp_loady8_fu_412_x_11_ce0),.x_11_q0(smem_11_q0),.x_12_address0(grp_loady8_fu_412_x_12_address0),.x_12_ce0(grp_loady8_fu_412_x_12_ce0),.x_12_q0(smem_12_q0),.x_13_address0(grp_loady8_fu_412_x_13_address0),.x_13_ce0(grp_loady8_fu_412_x_13_ce0),.x_13_q0(smem_13_q0),.x_14_address0(grp_loady8_fu_412_x_14_address0),.x_14_ce0(grp_loady8_fu_412_x_14_ce0),.x_14_q0(smem_14_q0),.x_15_address0(grp_loady8_fu_412_x_15_address0),.x_15_ce0(grp_loady8_fu_412_x_15_ce0),.x_15_q0(smem_15_q0),.x_16_address0(grp_loady8_fu_412_x_16_address0),.x_16_ce0(grp_loady8_fu_412_x_16_ce0),.x_16_q0(smem_16_q0),.x_17_address0(grp_loady8_fu_412_x_17_address0),.x_17_ce0(grp_loady8_fu_412_x_17_ce0),.x_17_q0(smem_17_q0),.x_18_address0(grp_loady8_fu_412_x_18_address0),.x_18_ce0(grp_loady8_fu_412_x_18_ce0),.x_18_q0(smem_18_q0),.offset(grp_loady8_fu_412_offset),.ap_return_0(grp_loady8_fu_412_ap_return_0),.ap_return_1(grp_loady8_fu_412_ap_return_1),.ap_return_2(grp_loady8_fu_412_ap_return_2),.ap_return_3(grp_loady8_fu_412_ap_return_3),.ap_return_4(grp_loady8_fu_412_ap_return_4),.ap_return_5(grp_loady8_fu_412_ap_return_5),.ap_return_6(grp_loady8_fu_412_ap_return_6),.ap_return_7(grp_loady8_fu_412_ap_return_7));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready == 1'b1))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage59_subdone) & (1'b1 == ap_CS_fsm_pp0_stage59))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_loady8_fu_412_ap_start_reg <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_553_p3 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage45_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)))) begin
            grp_loady8_fu_412_ap_start_reg <= 1'b1;
        end else if ((grp_loady8_fu_412_ap_ready == 1'b1)) begin
            grp_loady8_fu_412_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_112 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_719 == 1'd0))) begin
        tid_fu_112 <= add_ln340_fu_582_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage45_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_505 <= grp_loady8_fu_412_ap_return_0;
        reg_510 <= grp_loady8_fu_412_ap_return_1;
        reg_515 <= grp_loady8_fu_412_ap_return_2;
        reg_520 <= grp_loady8_fu_412_ap_return_3;
        reg_525 <= grp_loady8_fu_412_ap_return_4;
        reg_530 <= grp_loady8_fu_412_ap_return_5;
        reg_535 <= grp_loady8_fu_412_ap_return_6;
        reg_540 <= grp_loady8_fu_412_ap_return_7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_6_reg_708 <= ap_sig_allocacmp_tid_6;
        tmp_reg_719 <= ap_sig_allocacmp_tid_6[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        tmp_105_reg_730 <= {{tid_6_reg_708[5:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_245_reg_723 <= {{tid_6_reg_708[5:3]}};
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address0_local = zext_ln341_2_fu_689_p1;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        DATA_y_1_address0_local = zext_ln341_1_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        DATA_y_1_address0_local = zext_ln341_fu_621_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_1_address0_local = zext_ln340_fu_592_p1;
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_2_address0_local = zext_ln341_2_fu_689_p1;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        DATA_y_2_address0_local = zext_ln341_1_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        DATA_y_2_address0_local = zext_ln341_fu_621_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_2_address0_local = zext_ln340_fu_592_p1;
    end else begin
        DATA_y_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_2_we0_local = 1'b1;
    end else begin
        DATA_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_3_address0_local = zext_ln341_2_fu_689_p1;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        DATA_y_3_address0_local = zext_ln341_1_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        DATA_y_3_address0_local = zext_ln341_fu_621_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_3_address0_local = zext_ln340_fu_592_p1;
    end else begin
        DATA_y_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_3_we0_local = 1'b1;
    end else begin
        DATA_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_4_address0_local = zext_ln341_2_fu_689_p1;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        DATA_y_4_address0_local = zext_ln341_1_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        DATA_y_4_address0_local = zext_ln341_fu_621_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_4_address0_local = zext_ln340_fu_592_p1;
    end else begin
        DATA_y_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_4_we0_local = 1'b1;
    end else begin
        DATA_y_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_5_address0_local = zext_ln341_2_fu_689_p1;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        DATA_y_5_address0_local = zext_ln341_1_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        DATA_y_5_address0_local = zext_ln341_fu_621_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_5_address0_local = zext_ln340_fu_592_p1;
    end else begin
        DATA_y_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_5_we0_local = 1'b1;
    end else begin
        DATA_y_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_6_address0_local = zext_ln341_2_fu_689_p1;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        DATA_y_6_address0_local = zext_ln341_1_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        DATA_y_6_address0_local = zext_ln341_fu_621_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_6_address0_local = zext_ln340_fu_592_p1;
    end else begin
        DATA_y_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_6_we0_local = 1'b1;
    end else begin
        DATA_y_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_7_address0_local = zext_ln341_2_fu_689_p1;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        DATA_y_7_address0_local = zext_ln341_1_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        DATA_y_7_address0_local = zext_ln341_fu_621_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_7_address0_local = zext_ln340_fu_592_p1;
    end else begin
        DATA_y_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_7_we0_local = 1'b1;
    end else begin
        DATA_y_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_address0_local = zext_ln341_2_fu_689_p1;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        DATA_y_address0_local = zext_ln341_1_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        DATA_y_address0_local = zext_ln341_fu_621_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_address0_local = zext_ln340_fu_592_p1;
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_719 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready == 1'b1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage59_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_6 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_6 = tid_fu_112;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_719 == 1'd0))) begin
        if (((1'b0 == ap_block_pp0_stage46_ignoreCallOp198) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
            grp_loady8_fu_412_offset = or_ln353_2_fu_672_p4;
        end else if (((1'b0 == ap_block_pp0_stage31_ignoreCallOp154) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            grp_loady8_fu_412_offset = or_ln353_1_fu_633_p4;
        end else if (((1'b0 == ap_block_pp0_stage16_ignoreCallOp110) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_loady8_fu_412_offset = or_ln4_fu_603_p4;
        end else if (((1'b0 == ap_block_pp0_stage1_ignoreCallOp74) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_loady8_fu_412_offset = or_ln_fu_573_p3;
        end else begin
            grp_loady8_fu_412_offset = 'bx;
        end
    end else begin
        grp_loady8_fu_412_offset = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_10_ce0 = grp_loady8_fu_412_x_10_ce0;
    end else begin
        smem_10_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_11_ce0 = grp_loady8_fu_412_x_11_ce0;
    end else begin
        smem_11_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_12_ce0 = grp_loady8_fu_412_x_12_ce0;
    end else begin
        smem_12_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_13_ce0 = grp_loady8_fu_412_x_13_ce0;
    end else begin
        smem_13_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_14_ce0 = grp_loady8_fu_412_x_14_ce0;
    end else begin
        smem_14_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_15_ce0 = grp_loady8_fu_412_x_15_ce0;
    end else begin
        smem_15_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_16_ce0 = grp_loady8_fu_412_x_16_ce0;
    end else begin
        smem_16_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_17_ce0 = grp_loady8_fu_412_x_17_ce0;
    end else begin
        smem_17_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_18_ce0 = grp_loady8_fu_412_x_18_ce0;
    end else begin
        smem_18_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_1_ce0 = grp_loady8_fu_412_x_1_ce0;
    end else begin
        smem_1_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_2_ce0 = grp_loady8_fu_412_x_2_ce0;
    end else begin
        smem_2_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_3_ce0 = grp_loady8_fu_412_x_3_ce0;
    end else begin
        smem_3_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_4_ce0 = grp_loady8_fu_412_x_4_ce0;
    end else begin
        smem_4_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_5_ce0 = grp_loady8_fu_412_x_5_ce0;
    end else begin
        smem_5_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_6_ce0 = grp_loady8_fu_412_x_6_ce0;
    end else begin
        smem_6_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_7_ce0 = grp_loady8_fu_412_x_7_ce0;
    end else begin
        smem_7_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_8_ce0 = grp_loady8_fu_412_x_8_ce0;
    end else begin
        smem_8_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_9_ce0 = grp_loady8_fu_412_x_9_ce0;
    end else begin
        smem_9_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp220) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp219) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp176) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp175) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp132) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp131) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_719 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_719 == 1'd0)))) begin
        smem_ce0 = grp_loady8_fu_412_x_0_ce0;
    end else begin
        smem_ce0 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to1 == 1'b1) & (ap_start_int == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        ap_ST_fsm_pp0_stage32 : begin
            if ((1'b0 == ap_block_pp0_stage32_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end
        end
        ap_ST_fsm_pp0_stage33 : begin
            if ((1'b0 == ap_block_pp0_stage33_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            end
        end
        ap_ST_fsm_pp0_stage34 : begin
            if ((1'b0 == ap_block_pp0_stage34_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage35;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end
        end
        ap_ST_fsm_pp0_stage35 : begin
            if ((1'b0 == ap_block_pp0_stage35_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage35;
            end
        end
        ap_ST_fsm_pp0_stage36 : begin
            if ((1'b0 == ap_block_pp0_stage36_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage37;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end
        end
        ap_ST_fsm_pp0_stage37 : begin
            if ((1'b0 == ap_block_pp0_stage37_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage37;
            end
        end
        ap_ST_fsm_pp0_stage38 : begin
            if ((1'b0 == ap_block_pp0_stage38_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage39;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage38;
            end
        end
        ap_ST_fsm_pp0_stage39 : begin
            if ((1'b0 == ap_block_pp0_stage39_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage40;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage39;
            end
        end
        ap_ST_fsm_pp0_stage40 : begin
            if ((1'b0 == ap_block_pp0_stage40_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage41;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage40;
            end
        end
        ap_ST_fsm_pp0_stage41 : begin
            if ((1'b0 == ap_block_pp0_stage41_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage42;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage41;
            end
        end
        ap_ST_fsm_pp0_stage42 : begin
            if ((1'b0 == ap_block_pp0_stage42_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage43;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage42;
            end
        end
        ap_ST_fsm_pp0_stage43 : begin
            if ((1'b0 == ap_block_pp0_stage43_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage43;
            end
        end
        ap_ST_fsm_pp0_stage44 : begin
            if ((1'b0 == ap_block_pp0_stage44_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage45;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage44;
            end
        end
        ap_ST_fsm_pp0_stage45 : begin
            if ((1'b0 == ap_block_pp0_stage45_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage46;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage45;
            end
        end
        ap_ST_fsm_pp0_stage46 : begin
            if ((1'b0 == ap_block_pp0_stage46_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage46;
            end
        end
        ap_ST_fsm_pp0_stage47 : begin
            if ((1'b0 == ap_block_pp0_stage47_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage48;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end
        end
        ap_ST_fsm_pp0_stage48 : begin
            if ((1'b0 == ap_block_pp0_stage48_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage49;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage48;
            end
        end
        ap_ST_fsm_pp0_stage49 : begin
            if ((1'b0 == ap_block_pp0_stage49_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage50;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage49;
            end
        end
        ap_ST_fsm_pp0_stage50 : begin
            if ((1'b0 == ap_block_pp0_stage50_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage51;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage50;
            end
        end
        ap_ST_fsm_pp0_stage51 : begin
            if ((1'b0 == ap_block_pp0_stage51_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage52;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage51;
            end
        end
        ap_ST_fsm_pp0_stage52 : begin
            if ((1'b0 == ap_block_pp0_stage52_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage53;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage52;
            end
        end
        ap_ST_fsm_pp0_stage53 : begin
            if ((1'b0 == ap_block_pp0_stage53_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage54;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage53;
            end
        end
        ap_ST_fsm_pp0_stage54 : begin
            if ((1'b0 == ap_block_pp0_stage54_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage55;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage54;
            end
        end
        ap_ST_fsm_pp0_stage55 : begin
            if ((1'b0 == ap_block_pp0_stage55_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage56;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage55;
            end
        end
        ap_ST_fsm_pp0_stage56 : begin
            if ((1'b0 == ap_block_pp0_stage56_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage57;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage56;
            end
        end
        ap_ST_fsm_pp0_stage57 : begin
            if ((1'b0 == ap_block_pp0_stage57_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage58;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage57;
            end
        end
        ap_ST_fsm_pp0_stage58 : begin
            if ((1'b0 == ap_block_pp0_stage58_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage59;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage58;
            end
        end
        ap_ST_fsm_pp0_stage59 : begin
            if ((1'b0 == ap_block_pp0_stage59_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage59;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_y_1_address0 = DATA_y_1_address0_local;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_d0 = reg_510;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_2_address0 = DATA_y_2_address0_local;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_d0 = reg_515;
assign DATA_y_2_we0 = DATA_y_2_we0_local;
assign DATA_y_3_address0 = DATA_y_3_address0_local;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_d0 = reg_520;
assign DATA_y_3_we0 = DATA_y_3_we0_local;
assign DATA_y_4_address0 = DATA_y_4_address0_local;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_d0 = reg_525;
assign DATA_y_4_we0 = DATA_y_4_we0_local;
assign DATA_y_5_address0 = DATA_y_5_address0_local;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_d0 = reg_530;
assign DATA_y_5_we0 = DATA_y_5_we0_local;
assign DATA_y_6_address0 = DATA_y_6_address0_local;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_d0 = reg_535;
assign DATA_y_6_we0 = DATA_y_6_we0_local;
assign DATA_y_7_address0 = DATA_y_7_address0_local;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_d0 = reg_540;
assign DATA_y_7_we0 = DATA_y_7_we0_local;
assign DATA_y_address0 = DATA_y_address0_local;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_d0 = reg_505;
assign DATA_y_we0 = DATA_y_we0_local;
assign add_ln340_fu_582_p2 = (tid_6_reg_708 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage29 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_pp0_stage30 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage44 = ap_CS_fsm[32'd44];
assign ap_CS_fsm_pp0_stage45 = ap_CS_fsm[32'd45];
assign ap_CS_fsm_pp0_stage46 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_pp0_stage59 = ap_CS_fsm[32'd59];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp220 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_ignoreCallOp89 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_ignoreCallOp90 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_ignoreCallOp110 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_ignoreCallOp74 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_ignoreCallOp131 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_ignoreCallOp132 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_ignoreCallOp154 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_ignoreCallOp175 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_ignoreCallOp176 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_ignoreCallOp198 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage51_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage52_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage53_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage58_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage59_ignoreCallOp219 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage59_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_487_p4 = {{tid_6_reg_708[5:1]}};
assign grp_fu_496_p4 = {{tid_6_reg_708[5:2]}};
assign grp_loady8_fu_412_ap_start = grp_loady8_fu_412_ap_start_reg;
assign or_ln340_1_fu_643_p3 = {{grp_fu_496_p4}, {2'd2}};
assign or_ln340_2_fu_682_p3 = {{tmp_105_reg_730}, {2'd3}};
assign or_ln353_1_fu_633_p4 = {{{tmp_245_reg_723}, {grp_fu_496_p4}}, {2'd2}};
assign or_ln353_2_fu_672_p4 = {{{tmp_245_reg_723}, {tmp_248_fu_663_p4}}, {2'd3}};
assign or_ln3_fu_613_p3 = {{grp_fu_487_p4}, {1'd1}};
assign or_ln4_fu_603_p4 = {{{tmp_245_reg_723}, {grp_fu_487_p4}}, {1'd1}};
assign or_ln_fu_573_p3 = {{tmp_245_fu_561_p4}, {trunc_ln353_fu_570_p1}};
assign smem_10_address0 = grp_loady8_fu_412_x_10_address0;
assign smem_11_address0 = grp_loady8_fu_412_x_11_address0;
assign smem_12_address0 = grp_loady8_fu_412_x_12_address0;
assign smem_13_address0 = grp_loady8_fu_412_x_13_address0;
assign smem_14_address0 = grp_loady8_fu_412_x_14_address0;
assign smem_15_address0 = grp_loady8_fu_412_x_15_address0;
assign smem_16_address0 = grp_loady8_fu_412_x_16_address0;
assign smem_17_address0 = grp_loady8_fu_412_x_17_address0;
assign smem_18_address0 = grp_loady8_fu_412_x_18_address0;
assign smem_1_address0 = grp_loady8_fu_412_x_1_address0;
assign smem_2_address0 = grp_loady8_fu_412_x_2_address0;
assign smem_3_address0 = grp_loady8_fu_412_x_3_address0;
assign smem_4_address0 = grp_loady8_fu_412_x_4_address0;
assign smem_5_address0 = grp_loady8_fu_412_x_5_address0;
assign smem_6_address0 = grp_loady8_fu_412_x_6_address0;
assign smem_7_address0 = grp_loady8_fu_412_x_7_address0;
assign smem_8_address0 = grp_loady8_fu_412_x_8_address0;
assign smem_9_address0 = grp_loady8_fu_412_x_9_address0;
assign smem_address0 = grp_loady8_fu_412_x_0_address0;
assign tmp_245_fu_561_p4 = {{tid_6_reg_708[5:3]}};
assign tmp_248_fu_663_p4 = {{tid_6_reg_708[5:2]}};
assign tmp_fu_553_p3 = ap_sig_allocacmp_tid_6[32'd6];
assign trunc_ln353_fu_570_p1 = tid_6_reg_708[5:0];
assign zext_ln340_fu_592_p1 = tid_6_reg_708;
assign zext_ln341_1_fu_651_p1 = or_ln340_1_fu_643_p3;
assign zext_ln341_2_fu_689_p1 = or_ln340_2_fu_682_p3;
assign zext_ln341_fu_621_p1 = or_ln3_fu_613_p3;
endmodule 