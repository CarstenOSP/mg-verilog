module fft1D_512_fft1D_512_Pipeline_loop5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_we1,DATA_y_1_d1,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,DATA_y_address1,DATA_y_ce1,DATA_y_we1,DATA_y_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1); 
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
output  [7:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [7:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
output   DATA_y_1_we1;
output  [63:0] DATA_y_1_d1;
output  [7:0] DATA_y_address0;
output   DATA_y_ce0;
output   DATA_y_we0;
output  [63:0] DATA_y_d0;
output  [7:0] DATA_y_address1;
output   DATA_y_ce1;
output   DATA_y_we1;
output  [63:0] DATA_y_d1;
output  [6:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [6:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [6:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [6:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [6:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [6:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [6:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [6:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
output  [6:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [6:0] smem_4_address1;
output   smem_4_ce1;
input  [63:0] smem_4_q1;
reg ap_idle;
reg smem_ce0;
reg smem_ce1;
reg smem_1_ce0;
reg smem_1_ce1;
reg smem_2_ce0;
reg smem_2_ce1;
reg smem_3_ce0;
reg smem_3_ce1;
reg smem_4_ce0;
reg smem_4_ce1;
(* fsm_encoding = "none" *) reg   [59:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_reg_845;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage59;
wire    ap_block_pp0_stage59_subdone;
reg   [63:0] reg_434;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire    ap_CS_fsm_pp0_stage45;
wire    ap_block_pp0_stage45_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_439;
reg   [63:0] reg_444;
reg   [63:0] reg_449;
reg   [63:0] reg_454;
reg   [63:0] reg_459;
reg   [63:0] reg_464;
reg   [63:0] reg_469;
reg   [6:0] tid_reg_833;
wire   [0:0] tmp_fu_482_p3;
wire   [2:0] hi_1_fu_490_p4;
reg   [2:0] hi_1_reg_849;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [5:0] trunc_ln220_fu_515_p1;
reg   [5:0] trunc_ln220_reg_854;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [8:0] zext_ln114_fu_546_p1;
reg   [8:0] zext_ln114_reg_860;
wire   [4:0] tmp_s_fu_603_p4;
reg   [4:0] tmp_s_reg_866;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
wire   [8:0] add_ln232_2_fu_670_p2;
reg   [8:0] add_ln232_2_reg_872;
wire   [3:0] tmp_30_fu_701_p4;
reg   [3:0] tmp_30_reg_877;
wire    ap_CS_fsm_pp0_stage46;
wire    ap_block_pp0_stage46_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    grp_loady8_fu_380_ap_start;
wire    grp_loady8_fu_380_ap_done;
wire    grp_loady8_fu_380_ap_idle;
wire    grp_loady8_fu_380_ap_ready;
wire   [6:0] grp_loady8_fu_380_x_0_address0;
wire    grp_loady8_fu_380_x_0_ce0;
wire   [6:0] grp_loady8_fu_380_x_0_address1;
wire    grp_loady8_fu_380_x_0_ce1;
wire   [6:0] grp_loady8_fu_380_x_1_address0;
wire    grp_loady8_fu_380_x_1_ce0;
wire   [6:0] grp_loady8_fu_380_x_1_address1;
wire    grp_loady8_fu_380_x_1_ce1;
wire   [6:0] grp_loady8_fu_380_x_2_address0;
wire    grp_loady8_fu_380_x_2_ce0;
wire   [6:0] grp_loady8_fu_380_x_2_address1;
wire    grp_loady8_fu_380_x_2_ce1;
wire   [6:0] grp_loady8_fu_380_x_3_address0;
wire    grp_loady8_fu_380_x_3_ce0;
wire   [6:0] grp_loady8_fu_380_x_3_address1;
wire    grp_loady8_fu_380_x_3_ce1;
wire   [6:0] grp_loady8_fu_380_x_4_address0;
wire    grp_loady8_fu_380_x_4_ce0;
wire   [6:0] grp_loady8_fu_380_x_4_address1;
wire    grp_loady8_fu_380_x_4_ce1;
reg   [8:0] grp_loady8_fu_380_offset;
wire   [63:0] grp_loady8_fu_380_ap_return_0;
wire   [63:0] grp_loady8_fu_380_ap_return_1;
wire   [63:0] grp_loady8_fu_380_ap_return_2;
wire   [63:0] grp_loady8_fu_380_ap_return_3;
wire   [63:0] grp_loady8_fu_380_ap_return_4;
wire   [63:0] grp_loady8_fu_380_ap_return_5;
wire   [63:0] grp_loady8_fu_380_ap_return_6;
wire   [63:0] grp_loady8_fu_380_ap_return_7;
reg    grp_loady8_fu_380_ap_start_reg;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_ignoreCallOp89;
wire    ap_block_pp0_stage15_ignoreCallOp90;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_ignoreCallOp141;
wire    ap_block_pp0_stage30_ignoreCallOp142;
wire    ap_CS_fsm_pp0_stage44;
wire    ap_block_pp0_stage44_ignoreCallOp194;
wire    ap_block_pp0_stage45_ignoreCallOp195;
wire    ap_block_pp0_stage59_ignoreCallOp242;
wire    ap_block_pp0_stage0_ignoreCallOp245;
wire   [8:0] add_ln_fu_502_p5;
wire    ap_block_pp0_stage1_ignoreCallOp76;
wire   [8:0] add_ln232_fu_570_p2;
wire    ap_block_pp0_stage16_ignoreCallOp112;
wire   [8:0] add_ln232_1_fu_652_p2;
wire    ap_block_pp0_stage31_ignoreCallOp165;
wire    ap_block_pp0_stage46_ignoreCallOp213;
wire   [63:0] zext_ln220_fu_526_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln222_fu_540_p1;
wire   [63:0] zext_ln224_fu_584_p1;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln226_fu_597_p1;
wire   [63:0] zext_ln220_1_fu_620_p1;
wire    ap_block_pp0_stage31;
wire   [63:0] zext_ln222_1_fu_634_p1;
wire   [63:0] zext_ln224_1_fu_682_p1;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32;
wire   [63:0] zext_ln226_1_fu_695_p1;
wire   [63:0] zext_ln220_2_fu_718_p1;
wire    ap_block_pp0_stage46;
wire   [63:0] zext_ln222_2_fu_732_p1;
wire   [63:0] zext_ln224_2_fu_745_p1;
wire    ap_CS_fsm_pp0_stage47;
wire    ap_block_pp0_stage47;
wire   [63:0] zext_ln226_2_fu_758_p1;
wire   [63:0] zext_ln220_3_fu_781_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln222_3_fu_794_p1;
wire   [63:0] zext_ln224_3_fu_807_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln226_3_fu_820_p1;
reg   [6:0] tid_4_fu_102;
wire   [6:0] add_ln219_fu_764_p2;
wire    ap_block_pp0_stage59_11001;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
wire    ap_block_pp0_stage0;
reg    DATA_y_we1_local;
reg   [63:0] DATA_y_d1_local;
reg    DATA_y_ce1_local;
reg   [7:0] DATA_y_address1_local;
reg    DATA_y_we0_local;
reg   [63:0] DATA_y_d0_local;
reg    DATA_y_ce0_local;
reg   [7:0] DATA_y_address0_local;
wire    ap_block_pp0_stage17_11001;
wire    ap_block_pp0_stage32_11001;
wire    ap_block_pp0_stage47_11001;
wire    ap_block_pp0_stage2_11001;
reg    DATA_y_1_we1_local;
reg   [63:0] DATA_y_1_d1_local;
reg    DATA_y_1_ce1_local;
reg   [7:0] DATA_y_1_address1_local;
reg    DATA_y_1_we0_local;
reg   [63:0] DATA_y_1_d0_local;
reg    DATA_y_1_ce0_local;
reg   [7:0] DATA_y_1_address0_local;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage45;
wire   [2:0] trunc_ln232_fu_499_p1;
wire   [0:0] grp_fu_395_p3;
wire   [7:0] shl_ln4_fu_518_p3;
wire   [7:0] or_ln_fu_532_p3;
wire   [1:0] tmp_29_fu_549_p4;
wire   [8:0] mul_ln232_1_fu_558_p5;
wire   [7:0] or_ln12_fu_577_p3;
wire   [7:0] or_ln13_fu_590_p3;
wire   [7:0] shl_ln220_1_fu_612_p3;
wire   [7:0] or_ln222_1_fu_626_p3;
wire   [8:0] mul_ln232_2_fu_640_p5;
wire   [8:0] mul_ln232_3_fu_658_p5;
wire   [7:0] or_ln224_1_fu_675_p3;
wire   [7:0] or_ln226_1_fu_688_p3;
wire   [7:0] or_ln14_fu_710_p3;
wire   [7:0] or_ln222_2_fu_724_p3;
wire   [7:0] or_ln224_2_fu_738_p3;
wire   [7:0] or_ln226_2_fu_751_p3;
wire    ap_block_pp0_stage59;
wire   [7:0] or_ln220_1_fu_774_p3;
wire   [7:0] or_ln222_3_fu_787_p3;
wire   [7:0] or_ln224_3_fu_800_p3;
wire   [7:0] or_ln226_3_fu_813_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [59:0] ap_NS_fsm;
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
#0 grp_loady8_fu_380_ap_start_reg = 1'b0;
#0 tid_4_fu_102 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_loady8 grp_loady8_fu_380(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_loady8_fu_380_ap_start),.ap_done(grp_loady8_fu_380_ap_done),.ap_idle(grp_loady8_fu_380_ap_idle),.ap_ready(grp_loady8_fu_380_ap_ready),.ap_ce(1'b1),.x_0_address0(grp_loady8_fu_380_x_0_address0),.x_0_ce0(grp_loady8_fu_380_x_0_ce0),.x_0_q0(smem_q0),.x_0_address1(grp_loady8_fu_380_x_0_address1),.x_0_ce1(grp_loady8_fu_380_x_0_ce1),.x_0_q1(smem_q1),.x_1_address0(grp_loady8_fu_380_x_1_address0),.x_1_ce0(grp_loady8_fu_380_x_1_ce0),.x_1_q0(smem_1_q0),.x_1_address1(grp_loady8_fu_380_x_1_address1),.x_1_ce1(grp_loady8_fu_380_x_1_ce1),.x_1_q1(smem_1_q1),.x_2_address0(grp_loady8_fu_380_x_2_address0),.x_2_ce0(grp_loady8_fu_380_x_2_ce0),.x_2_q0(smem_2_q0),.x_2_address1(grp_loady8_fu_380_x_2_address1),.x_2_ce1(grp_loady8_fu_380_x_2_ce1),.x_2_q1(smem_2_q1),.x_3_address0(grp_loady8_fu_380_x_3_address0),.x_3_ce0(grp_loady8_fu_380_x_3_ce0),.x_3_q0(smem_3_q0),.x_3_address1(grp_loady8_fu_380_x_3_address1),.x_3_ce1(grp_loady8_fu_380_x_3_ce1),.x_3_q1(smem_3_q1),.x_4_address0(grp_loady8_fu_380_x_4_address0),.x_4_ce0(grp_loady8_fu_380_x_4_ce0),.x_4_q0(smem_4_q0),.x_4_address1(grp_loady8_fu_380_x_4_address1),.x_4_ce1(grp_loady8_fu_380_x_4_ce1),.x_4_q1(smem_4_q1),.offset(grp_loady8_fu_380_offset),.ap_return_0(grp_loady8_fu_380_ap_return_0),.ap_return_1(grp_loady8_fu_380_ap_return_1),.ap_return_2(grp_loady8_fu_380_ap_return_2),.ap_return_3(grp_loady8_fu_380_ap_return_3),.ap_return_4(grp_loady8_fu_380_ap_return_4),.ap_return_5(grp_loady8_fu_380_ap_return_5),.ap_return_6(grp_loady8_fu_380_ap_return_6),.ap_return_7(grp_loady8_fu_380_ap_return_7));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready == 1'b1))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage59_subdone) & (1'b1 == ap_CS_fsm_pp0_stage59))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_loady8_fu_380_ap_start_reg <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_482_p3 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage45_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_845 == 1'd0)))) begin
            grp_loady8_fu_380_ap_start_reg <= 1'b1;
        end else if ((grp_loady8_fu_380_ap_ready == 1'b1)) begin
            grp_loady8_fu_380_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_4_fu_102 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage59_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_845 == 1'd0))) begin
        tid_4_fu_102 <= add_ln219_fu_764_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        add_ln232_2_reg_872 <= add_ln232_2_fu_670_p2;
        tmp_s_reg_866 <= {{tid_reg_833[5:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        hi_1_reg_849 <= {{tid_reg_833[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage45_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_434 <= grp_loady8_fu_380_ap_return_0;
        reg_439 <= grp_loady8_fu_380_ap_return_1;
        reg_444 <= grp_loady8_fu_380_ap_return_2;
        reg_449 <= grp_loady8_fu_380_ap_return_3;
        reg_454 <= grp_loady8_fu_380_ap_return_4;
        reg_459 <= grp_loady8_fu_380_ap_return_5;
        reg_464 <= grp_loady8_fu_380_ap_return_6;
        reg_469 <= grp_loady8_fu_380_ap_return_7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_reg_833 <= ap_sig_allocacmp_tid;
        tmp_reg_845 <= ap_sig_allocacmp_tid[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage46_11001) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        tmp_30_reg_877 <= {{tid_reg_833[5:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        trunc_ln220_reg_854 <= trunc_ln220_fu_515_p1;
        zext_ln114_reg_860[2 : 0] <= zext_ln114_fu_546_p1[2 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_1_address0_local = zext_ln226_3_fu_820_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address0_local = zext_ln222_3_fu_794_p1;
    end else if (((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        DATA_y_1_address0_local = zext_ln226_2_fu_758_p1;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        DATA_y_1_address0_local = zext_ln222_2_fu_732_p1;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        DATA_y_1_address0_local = zext_ln226_1_fu_695_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        DATA_y_1_address0_local = zext_ln222_1_fu_634_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        DATA_y_1_address0_local = zext_ln226_fu_597_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_1_address0_local = zext_ln222_fu_540_p1;
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_1_address1_local = zext_ln224_3_fu_807_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address1_local = zext_ln220_3_fu_781_p1;
    end else if (((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        DATA_y_1_address1_local = zext_ln224_2_fu_745_p1;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        DATA_y_1_address1_local = zext_ln220_2_fu_718_p1;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        DATA_y_1_address1_local = zext_ln224_1_fu_682_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        DATA_y_1_address1_local = zext_ln220_1_fu_620_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        DATA_y_1_address1_local = zext_ln224_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_1_address1_local = zext_ln220_fu_526_p1;
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        DATA_y_1_d0_local = reg_469;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        DATA_y_1_d0_local = reg_449;
    end else begin
        DATA_y_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        DATA_y_1_d1_local = reg_459;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        DATA_y_1_d1_local = reg_439;
    end else begin
        DATA_y_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_we1_local = 1'b1;
    end else begin
        DATA_y_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_address0_local = zext_ln226_3_fu_820_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_address0_local = zext_ln222_3_fu_794_p1;
    end else if (((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        DATA_y_address0_local = zext_ln226_2_fu_758_p1;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        DATA_y_address0_local = zext_ln222_2_fu_732_p1;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        DATA_y_address0_local = zext_ln226_1_fu_695_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        DATA_y_address0_local = zext_ln222_1_fu_634_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        DATA_y_address0_local = zext_ln226_fu_597_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_address0_local = zext_ln222_fu_540_p1;
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_address1_local = zext_ln224_3_fu_807_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_address1_local = zext_ln220_3_fu_781_p1;
    end else if (((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        DATA_y_address1_local = zext_ln224_2_fu_745_p1;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        DATA_y_address1_local = zext_ln220_2_fu_718_p1;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        DATA_y_address1_local = zext_ln224_1_fu_682_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        DATA_y_address1_local = zext_ln220_1_fu_620_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        DATA_y_address1_local = zext_ln224_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_address1_local = zext_ln220_fu_526_p1;
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        DATA_y_d0_local = reg_464;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        DATA_y_d0_local = reg_444;
    end else begin
        DATA_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        DATA_y_d1_local = reg_454;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        DATA_y_d1_local = reg_434;
    end else begin
        DATA_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_we1_local = 1'b1;
    end else begin
        DATA_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_845 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready == 1'b1))) begin
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
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_4_fu_102;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_reg_845 == 1'd0))) begin
        if (((1'b0 == ap_block_pp0_stage46_ignoreCallOp213) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
            grp_loady8_fu_380_offset = add_ln232_2_reg_872;
        end else if (((1'b0 == ap_block_pp0_stage31_ignoreCallOp165) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            grp_loady8_fu_380_offset = add_ln232_1_fu_652_p2;
        end else if (((1'b0 == ap_block_pp0_stage16_ignoreCallOp112) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_loady8_fu_380_offset = add_ln232_fu_570_p2;
        end else if (((1'b0 == ap_block_pp0_stage1_ignoreCallOp76) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_loady8_fu_380_offset = add_ln_fu_502_p5;
        end else begin
            grp_loady8_fu_380_offset = 'bx;
        end
    end else begin
        grp_loady8_fu_380_offset = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp245) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp242) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp195) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp194) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp142) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp141) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_845 == 1'd0)))) begin
        smem_1_ce0 = grp_loady8_fu_380_x_1_ce0;
    end else begin
        smem_1_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp245) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp242) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp195) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp194) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp142) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp141) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_845 == 1'd0)))) begin
        smem_1_ce1 = grp_loady8_fu_380_x_1_ce1;
    end else begin
        smem_1_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp245) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp242) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp195) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp194) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp142) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp141) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_845 == 1'd0)))) begin
        smem_2_ce0 = grp_loady8_fu_380_x_2_ce0;
    end else begin
        smem_2_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp245) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp242) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp195) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp194) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp142) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp141) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_845 == 1'd0)))) begin
        smem_2_ce1 = grp_loady8_fu_380_x_2_ce1;
    end else begin
        smem_2_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp245) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp242) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp195) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp194) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp142) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp141) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_845 == 1'd0)))) begin
        smem_3_ce0 = grp_loady8_fu_380_x_3_ce0;
    end else begin
        smem_3_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp245) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp242) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp195) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp194) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp142) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp141) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_845 == 1'd0)))) begin
        smem_3_ce1 = grp_loady8_fu_380_x_3_ce1;
    end else begin
        smem_3_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp245) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp242) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp195) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp194) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp142) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp141) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_845 == 1'd0)))) begin
        smem_4_ce0 = grp_loady8_fu_380_x_4_ce0;
    end else begin
        smem_4_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp245) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp242) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp195) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp194) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp142) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp141) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_845 == 1'd0)))) begin
        smem_4_ce1 = grp_loady8_fu_380_x_4_ce1;
    end else begin
        smem_4_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp245) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp242) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp195) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp194) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp142) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp141) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_845 == 1'd0)))) begin
        smem_ce0 = grp_loady8_fu_380_x_0_ce0;
    end else begin
        smem_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_ignoreCallOp245) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage59_ignoreCallOp242) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage59) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage45_ignoreCallOp195) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage44_ignoreCallOp194) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage44) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage30_ignoreCallOp142) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage29_ignoreCallOp141) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage15_ignoreCallOp90) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_845 == 1'd0)) | ((1'b0 == ap_block_pp0_stage14_ignoreCallOp89)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_845 == 1'd0)))) begin
        smem_ce1 = grp_loady8_fu_380_x_0_ce1;
    end else begin
        smem_ce1 = 1'b0;
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
assign DATA_y_1_address1 = DATA_y_1_address1_local;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_1_d0 = DATA_y_1_d0_local;
assign DATA_y_1_d1 = DATA_y_1_d1_local;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_1_we1 = DATA_y_1_we1_local;
assign DATA_y_address0 = DATA_y_address0_local;
assign DATA_y_address1 = DATA_y_address1_local;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign DATA_y_d0 = DATA_y_d0_local;
assign DATA_y_d1 = DATA_y_d1_local;
assign DATA_y_we0 = DATA_y_we0_local;
assign DATA_y_we1 = DATA_y_we1_local;
assign add_ln219_fu_764_p2 = (tid_reg_833 + 7'd4);
assign add_ln232_1_fu_652_p2 = (mul_ln232_2_fu_640_p5 + zext_ln114_reg_860);
assign add_ln232_2_fu_670_p2 = (mul_ln232_3_fu_658_p5 + zext_ln114_reg_860);
assign add_ln232_fu_570_p2 = (mul_ln232_1_fu_558_p5 + zext_ln114_fu_546_p1);
assign add_ln_fu_502_p5 = {{{{trunc_ln232_fu_499_p1}, {2'd0}}, {grp_fu_395_p3}}, {hi_1_fu_490_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage29 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_pp0_stage30 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage32 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_pp0_stage44 = ap_CS_fsm[32'd44];
assign ap_CS_fsm_pp0_stage45 = ap_CS_fsm[32'd45];
assign ap_CS_fsm_pp0_stage46 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_pp0_stage47 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_pp0_stage59 = ap_CS_fsm[32'd59];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp245 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage16_ignoreCallOp112 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_ignoreCallOp76 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_ignoreCallOp141 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_ignoreCallOp142 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_ignoreCallOp165 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_11001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage44_ignoreCallOp194 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_ignoreCallOp195 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_ignoreCallOp213 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_11001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage59 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage59_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage59_ignoreCallOp242 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage59_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign grp_fu_395_p3 = tid_reg_833[32'd2];
assign grp_loady8_fu_380_ap_start = grp_loady8_fu_380_ap_start_reg;
assign hi_1_fu_490_p4 = {{tid_reg_833[5:3]}};
assign mul_ln232_1_fu_558_p5 = {{{{tmp_29_fu_549_p4}, {3'd4}}, {tmp_29_fu_549_p4}}, {2'd2}};
assign mul_ln232_2_fu_640_p5 = {{{{grp_fu_395_p3}, {4'd8}}, {grp_fu_395_p3}}, {3'd4}};
assign mul_ln232_3_fu_658_p5 = {{{{grp_fu_395_p3}, {4'd12}}, {grp_fu_395_p3}}, {3'd6}};
assign or_ln12_fu_577_p3 = {{trunc_ln220_reg_854}, {2'd2}};
assign or_ln13_fu_590_p3 = {{trunc_ln220_reg_854}, {2'd3}};
assign or_ln14_fu_710_p3 = {{tmp_30_fu_701_p4}, {4'd8}};
assign or_ln220_1_fu_774_p3 = {{tmp_30_reg_877}, {4'd12}};
assign or_ln222_1_fu_626_p3 = {{tmp_s_fu_603_p4}, {3'd5}};
assign or_ln222_2_fu_724_p3 = {{tmp_30_fu_701_p4}, {4'd9}};
assign or_ln222_3_fu_787_p3 = {{tmp_30_reg_877}, {4'd13}};
assign or_ln224_1_fu_675_p3 = {{tmp_s_reg_866}, {3'd6}};
assign or_ln224_2_fu_738_p3 = {{tmp_30_reg_877}, {4'd10}};
assign or_ln224_3_fu_800_p3 = {{tmp_30_reg_877}, {4'd14}};
assign or_ln226_1_fu_688_p3 = {{tmp_s_reg_866}, {3'd7}};
assign or_ln226_2_fu_751_p3 = {{tmp_30_reg_877}, {4'd11}};
assign or_ln226_3_fu_813_p3 = {{tmp_30_reg_877}, {4'd15}};
assign or_ln_fu_532_p3 = {{trunc_ln220_fu_515_p1}, {2'd1}};
assign shl_ln220_1_fu_612_p3 = {{tmp_s_fu_603_p4}, {3'd4}};
assign shl_ln4_fu_518_p3 = {{trunc_ln220_fu_515_p1}, {2'd0}};
assign smem_1_address0 = grp_loady8_fu_380_x_1_address0;
assign smem_1_address1 = grp_loady8_fu_380_x_1_address1;
assign smem_2_address0 = grp_loady8_fu_380_x_2_address0;
assign smem_2_address1 = grp_loady8_fu_380_x_2_address1;
assign smem_3_address0 = grp_loady8_fu_380_x_3_address0;
assign smem_3_address1 = grp_loady8_fu_380_x_3_address1;
assign smem_4_address0 = grp_loady8_fu_380_x_4_address0;
assign smem_4_address1 = grp_loady8_fu_380_x_4_address1;
assign smem_address0 = grp_loady8_fu_380_x_0_address0;
assign smem_address1 = grp_loady8_fu_380_x_0_address1;
assign tmp_29_fu_549_p4 = {{tid_reg_833[2:1]}};
assign tmp_30_fu_701_p4 = {{tid_reg_833[5:2]}};
assign tmp_fu_482_p3 = ap_sig_allocacmp_tid[32'd6];
assign tmp_s_fu_603_p4 = {{tid_reg_833[5:1]}};
assign trunc_ln220_fu_515_p1 = tid_reg_833[5:0];
assign trunc_ln232_fu_499_p1 = tid_reg_833[2:0];
assign zext_ln114_fu_546_p1 = hi_1_reg_849;
assign zext_ln220_1_fu_620_p1 = shl_ln220_1_fu_612_p3;
assign zext_ln220_2_fu_718_p1 = or_ln14_fu_710_p3;
assign zext_ln220_3_fu_781_p1 = or_ln220_1_fu_774_p3;
assign zext_ln220_fu_526_p1 = shl_ln4_fu_518_p3;
assign zext_ln222_1_fu_634_p1 = or_ln222_1_fu_626_p3;
assign zext_ln222_2_fu_732_p1 = or_ln222_2_fu_724_p3;
assign zext_ln222_3_fu_794_p1 = or_ln222_3_fu_787_p3;
assign zext_ln222_fu_540_p1 = or_ln_fu_532_p3;
assign zext_ln224_1_fu_682_p1 = or_ln224_1_fu_675_p3;
assign zext_ln224_2_fu_745_p1 = or_ln224_2_fu_738_p3;
assign zext_ln224_3_fu_807_p1 = or_ln224_3_fu_800_p3;
assign zext_ln224_fu_584_p1 = or_ln12_fu_577_p3;
assign zext_ln226_1_fu_695_p1 = or_ln226_1_fu_688_p3;
assign zext_ln226_2_fu_758_p1 = or_ln226_2_fu_751_p3;
assign zext_ln226_3_fu_820_p1 = or_ln226_3_fu_813_p3;
assign zext_ln226_fu_597_p1 = or_ln13_fu_590_p3;
always @ (posedge ap_clk) begin
    zext_ln114_reg_860[8:3] <= 6'b000000;
end
endmodule 