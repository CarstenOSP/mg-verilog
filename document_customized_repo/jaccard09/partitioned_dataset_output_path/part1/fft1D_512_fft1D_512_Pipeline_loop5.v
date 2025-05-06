
module fft1D_512_fft1D_512_Pipeline_loop5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,data_y_address0,data_y_ce0,data_y_we0,data_y_d0,data_y_q0,data_y_address1,data_y_ce1,data_y_we1,data_y_d1,data_y_q1,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_we0,DATA_y_3_d0,DATA_y_3_q0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_we1,DATA_y_3_d1,DATA_y_3_q1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_we0,DATA_y_2_d0,DATA_y_2_q0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_we1,DATA_y_2_d1,DATA_y_2_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_we1,DATA_y_1_d1,DATA_y_1_q1,DATA_y_r_address0,DATA_y_r_ce0,DATA_y_r_we0,DATA_y_r_d0,DATA_y_r_q0,DATA_y_r_address1,DATA_y_r_ce1,DATA_y_r_we1,DATA_y_r_d1,DATA_y_r_q1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1,smem_6_address0,smem_6_ce0,smem_6_q0,smem_6_address1,smem_6_ce1,smem_6_q1,smem_7_address0,smem_7_ce0,smem_7_q0,smem_7_address1,smem_7_ce1,smem_7_q1,smem_8_address0,smem_8_ce0,smem_8_q0,smem_8_address1,smem_8_ce1,smem_8_q1,smem_9_address0,smem_9_ce0,smem_9_q0,smem_9_address1,smem_9_ce1,smem_9_q1,smem_10_address0,smem_10_ce0,smem_10_q0,smem_10_address1,smem_10_ce1,smem_10_q1,smem_11_address0,smem_11_ce0,smem_11_q0,smem_11_address1,smem_11_ce1,smem_11_q1,smem_12_address0,smem_12_ce0,smem_12_q0,smem_12_address1,smem_12_ce1,smem_12_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 25'd1;
parameter    ap_ST_fsm_pp0_stage1 = 25'd2;
parameter    ap_ST_fsm_pp0_stage2 = 25'd4;
parameter    ap_ST_fsm_pp0_stage3 = 25'd8;
parameter    ap_ST_fsm_pp0_stage4 = 25'd16;
parameter    ap_ST_fsm_pp0_stage5 = 25'd32;
parameter    ap_ST_fsm_pp0_stage6 = 25'd64;
parameter    ap_ST_fsm_pp0_stage7 = 25'd128;
parameter    ap_ST_fsm_pp0_stage8 = 25'd256;
parameter    ap_ST_fsm_pp0_stage9 = 25'd512;
parameter    ap_ST_fsm_pp0_stage10 = 25'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 25'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 25'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 25'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 25'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 25'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 25'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 25'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 25'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 25'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 25'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 25'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 25'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 25'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 25'd16777216;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] data_y_address0;
output   data_y_ce0;
output   data_y_we0;
output  [63:0] data_y_d0;
input  [63:0] data_y_q0;
output  [2:0] data_y_address1;
output   data_y_ce1;
output   data_y_we1;
output  [63:0] data_y_d1;
input  [63:0] data_y_q1;
output  [6:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
output   DATA_y_3_we0;
output  [63:0] DATA_y_3_d0;
input  [63:0] DATA_y_3_q0;
output  [6:0] DATA_y_3_address1;
output   DATA_y_3_ce1;
output   DATA_y_3_we1;
output  [63:0] DATA_y_3_d1;
input  [63:0] DATA_y_3_q1;
output  [6:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
output   DATA_y_2_we0;
output  [63:0] DATA_y_2_d0;
input  [63:0] DATA_y_2_q0;
output  [6:0] DATA_y_2_address1;
output   DATA_y_2_ce1;
output   DATA_y_2_we1;
output  [63:0] DATA_y_2_d1;
input  [63:0] DATA_y_2_q1;
output  [6:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
input  [63:0] DATA_y_1_q0;
output  [6:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
output   DATA_y_1_we1;
output  [63:0] DATA_y_1_d1;
input  [63:0] DATA_y_1_q1;
output  [6:0] DATA_y_r_address0;
output   DATA_y_r_ce0;
output   DATA_y_r_we0;
output  [63:0] DATA_y_r_d0;
input  [63:0] DATA_y_r_q0;
output  [6:0] DATA_y_r_address1;
output   DATA_y_r_ce1;
output   DATA_y_r_we1;
output  [63:0] DATA_y_r_d1;
input  [63:0] DATA_y_r_q1;
output  [5:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [5:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [5:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [5:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [5:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [5:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [5:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [5:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
output  [5:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [5:0] smem_4_address1;
output   smem_4_ce1;
input  [63:0] smem_4_q1;
output  [5:0] smem_5_address0;
output   smem_5_ce0;
input  [63:0] smem_5_q0;
output  [5:0] smem_5_address1;
output   smem_5_ce1;
input  [63:0] smem_5_q1;
output  [5:0] smem_6_address0;
output   smem_6_ce0;
input  [63:0] smem_6_q0;
output  [5:0] smem_6_address1;
output   smem_6_ce1;
input  [63:0] smem_6_q1;
output  [5:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [5:0] smem_7_address1;
output   smem_7_ce1;
input  [63:0] smem_7_q1;
output  [5:0] smem_8_address0;
output   smem_8_ce0;
input  [63:0] smem_8_q0;
output  [5:0] smem_8_address1;
output   smem_8_ce1;
input  [63:0] smem_8_q1;
output  [5:0] smem_9_address0;
output   smem_9_ce0;
input  [63:0] smem_9_q0;
output  [5:0] smem_9_address1;
output   smem_9_ce1;
input  [63:0] smem_9_q1;
output  [5:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
output  [5:0] smem_10_address1;
output   smem_10_ce1;
input  [63:0] smem_10_q1;
output  [5:0] smem_11_address0;
output   smem_11_ce0;
input  [63:0] smem_11_q0;
output  [5:0] smem_11_address1;
output   smem_11_ce1;
input  [63:0] smem_11_q1;
output  [5:0] smem_12_address0;
output   smem_12_ce0;
input  [63:0] smem_12_q0;
output  [5:0] smem_12_address1;
output   smem_12_ce1;
input  [63:0] smem_12_q1;
reg ap_idle;
reg[2:0] data_y_address0;
reg data_y_ce0;
reg data_y_we0;
reg[63:0] data_y_d0;
reg[2:0] data_y_address1;
reg data_y_ce1;
reg data_y_we1;
reg[63:0] data_y_d1;
(* fsm_encoding = "none" *) reg   [24:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln219_reg_427;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_subdone;
reg   [6:0] tid_4_reg_420;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln219_fu_328_p2;
reg   [6:0] DATA_y_addr_4_reg_431;
reg   [6:0] DATA_y_1_addr_4_reg_436;
reg   [6:0] DATA_y_2_addr_4_reg_441;
reg   [6:0] DATA_y_3_addr_4_reg_446;
reg   [6:0] DATA_y_addr_5_reg_451;
reg   [6:0] DATA_y_addr_5_reg_451_pp0_iter1_reg;
reg   [6:0] DATA_y_1_addr_5_reg_456;
reg   [6:0] DATA_y_1_addr_5_reg_456_pp0_iter1_reg;
reg   [6:0] DATA_y_2_addr_5_reg_461;
reg   [6:0] DATA_y_2_addr_5_reg_461_pp0_iter1_reg;
reg   [6:0] DATA_y_3_addr_5_reg_466;
reg   [6:0] DATA_y_3_addr_5_reg_466_pp0_iter1_reg;
wire   [2:0] data_y_addr_reg_471;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [2:0] data_y_addr_1_reg_476;
reg   [63:0] DATA_y_2_load_2_reg_481;
reg   [63:0] DATA_y_3_load_2_reg_486;
reg   [63:0] DATA_y_load_3_reg_491;
reg   [63:0] DATA_y_1_load_3_reg_496;
reg   [63:0] DATA_y_2_load_3_reg_501;
reg   [63:0] DATA_y_3_load_3_reg_506;
wire   [2:0] data_y_addr_2_reg_511;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [2:0] data_y_addr_3_reg_516;
wire   [2:0] data_y_addr_4_reg_521;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [2:0] data_y_addr_5_reg_526;
wire   [2:0] data_y_addr_6_reg_531;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [2:0] data_y_addr_7_reg_536;
reg   [63:0] data_y_load_4_reg_541;
reg   [63:0] data_y_load_5_reg_546;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire    grp_loady8_fu_287_ap_start;
wire    grp_loady8_fu_287_ap_done;
wire    grp_loady8_fu_287_ap_idle;
wire    grp_loady8_fu_287_ap_ready;
wire   [2:0] grp_loady8_fu_287_a_y_address0;
wire    grp_loady8_fu_287_a_y_ce0;
wire    grp_loady8_fu_287_a_y_we0;
wire   [63:0] grp_loady8_fu_287_a_y_d0;
wire   [2:0] grp_loady8_fu_287_a_y_address1;
wire    grp_loady8_fu_287_a_y_ce1;
wire    grp_loady8_fu_287_a_y_we1;
wire   [63:0] grp_loady8_fu_287_a_y_d1;
wire   [5:0] grp_loady8_fu_287_x_0_address0;
wire    grp_loady8_fu_287_x_0_ce0;
wire   [5:0] grp_loady8_fu_287_x_0_address1;
wire    grp_loady8_fu_287_x_0_ce1;
wire   [5:0] grp_loady8_fu_287_x_1_address0;
wire    grp_loady8_fu_287_x_1_ce0;
wire   [5:0] grp_loady8_fu_287_x_1_address1;
wire    grp_loady8_fu_287_x_1_ce1;
wire   [5:0] grp_loady8_fu_287_x_2_address0;
wire    grp_loady8_fu_287_x_2_ce0;
wire   [5:0] grp_loady8_fu_287_x_2_address1;
wire    grp_loady8_fu_287_x_2_ce1;
wire   [5:0] grp_loady8_fu_287_x_3_address0;
wire    grp_loady8_fu_287_x_3_ce0;
wire   [5:0] grp_loady8_fu_287_x_3_address1;
wire    grp_loady8_fu_287_x_3_ce1;
wire   [5:0] grp_loady8_fu_287_x_4_address0;
wire    grp_loady8_fu_287_x_4_ce0;
wire   [5:0] grp_loady8_fu_287_x_4_address1;
wire    grp_loady8_fu_287_x_4_ce1;
wire   [5:0] grp_loady8_fu_287_x_5_address0;
wire    grp_loady8_fu_287_x_5_ce0;
wire   [5:0] grp_loady8_fu_287_x_5_address1;
wire    grp_loady8_fu_287_x_5_ce1;
wire   [5:0] grp_loady8_fu_287_x_6_address0;
wire    grp_loady8_fu_287_x_6_ce0;
wire   [5:0] grp_loady8_fu_287_x_6_address1;
wire    grp_loady8_fu_287_x_6_ce1;
wire   [5:0] grp_loady8_fu_287_x_7_address0;
wire    grp_loady8_fu_287_x_7_ce0;
wire   [5:0] grp_loady8_fu_287_x_7_address1;
wire    grp_loady8_fu_287_x_7_ce1;
wire   [5:0] grp_loady8_fu_287_x_8_address0;
wire    grp_loady8_fu_287_x_8_ce0;
wire   [5:0] grp_loady8_fu_287_x_8_address1;
wire    grp_loady8_fu_287_x_8_ce1;
wire   [5:0] grp_loady8_fu_287_x_9_address0;
wire    grp_loady8_fu_287_x_9_ce0;
wire   [5:0] grp_loady8_fu_287_x_9_address1;
wire    grp_loady8_fu_287_x_9_ce1;
wire   [5:0] grp_loady8_fu_287_x_10_address0;
wire    grp_loady8_fu_287_x_10_ce0;
wire   [5:0] grp_loady8_fu_287_x_10_address1;
wire    grp_loady8_fu_287_x_10_ce1;
wire   [5:0] grp_loady8_fu_287_x_11_address0;
wire    grp_loady8_fu_287_x_11_ce0;
wire   [5:0] grp_loady8_fu_287_x_11_address1;
wire    grp_loady8_fu_287_x_11_ce1;
wire   [5:0] grp_loady8_fu_287_x_12_address0;
wire    grp_loady8_fu_287_x_12_ce0;
wire   [5:0] grp_loady8_fu_287_x_12_address1;
wire    grp_loady8_fu_287_x_12_ce1;
wire   [8:0] grp_loady8_fu_287_offset;
reg    grp_loady8_fu_287_ap_start_reg;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_ignoreCallOp101;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_ignoreCallOp102;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_ignoreCallOp103;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_ignoreCallOp104;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_ignoreCallOp97;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_ignoreCallOp98;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_ignoreCallOp99;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_ignoreCallOp100;
wire    ap_block_pp0_stage5_ignoreCallOp87;
wire   [63:0] zext_ln220_fu_344_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln224_fu_360_p1;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg   [6:0] tid_fu_94;
wire   [6:0] add_ln219_fu_368_p2;
wire    ap_block_pp0_stage5_11001;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_4;
reg    DATA_y_r_ce1_local;
reg   [6:0] DATA_y_r_address1_local;
reg    DATA_y_r_ce0_local;
reg   [6:0] DATA_y_r_address0_local;
reg    DATA_y_r_we1_local;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire    ap_block_pp0_stage23;
reg    DATA_y_r_we0_local;
reg    DATA_y_1_ce1_local;
reg   [6:0] DATA_y_1_address1_local;
reg    DATA_y_1_ce0_local;
reg   [6:0] DATA_y_1_address0_local;
reg    DATA_y_1_we1_local;
reg    DATA_y_1_we0_local;
reg    DATA_y_2_ce1_local;
reg   [6:0] DATA_y_2_address1_local;
reg    DATA_y_2_ce0_local;
reg   [6:0] DATA_y_2_address0_local;
reg    DATA_y_2_we1_local;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage24;
reg    DATA_y_2_we0_local;
reg    DATA_y_3_ce1_local;
reg   [6:0] DATA_y_3_address1_local;
reg    DATA_y_3_ce0_local;
reg   [6:0] DATA_y_3_address0_local;
reg    DATA_y_3_we1_local;
reg    DATA_y_3_we0_local;
reg    data_y_we1_local;
reg   [63:0] data_y_d1_local;
reg    data_y_ce1_local;
reg   [2:0] data_y_address1_local;
reg    data_y_we0_local;
reg   [63:0] data_y_d0_local;
reg    data_y_ce0_local;
reg   [2:0] data_y_address0_local;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire    ap_block_pp0_stage22;
wire   [6:0] shl_ln220_fu_338_p2;
wire   [5:0] trunc_ln220_fu_334_p1;
wire   [6:0] or_ln7_fu_352_p3;
wire    ap_block_pp0_stage5;
wire   [2:0] hi_1_fu_373_p4;
wire   [2:0] trunc_ln232_fu_386_p1;
wire   [8:0] mul_ln_fu_389_p5;
wire   [8:0] zext_ln114_fu_382_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [24:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 25'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_loady8_fu_287_ap_start_reg = 1'b0;
#0 tid_fu_94 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_loady8 grp_loady8_fu_287(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_loady8_fu_287_ap_start),.ap_done(grp_loady8_fu_287_ap_done),.ap_idle(grp_loady8_fu_287_ap_idle),.ap_ready(grp_loady8_fu_287_ap_ready),.ap_ce(1'b1),.a_y_address0(grp_loady8_fu_287_a_y_address0),.a_y_ce0(grp_loady8_fu_287_a_y_ce0),.a_y_we0(grp_loady8_fu_287_a_y_we0),.a_y_d0(grp_loady8_fu_287_a_y_d0),.a_y_address1(grp_loady8_fu_287_a_y_address1),.a_y_ce1(grp_loady8_fu_287_a_y_ce1),.a_y_we1(grp_loady8_fu_287_a_y_we1),.a_y_d1(grp_loady8_fu_287_a_y_d1),.x_0_address0(grp_loady8_fu_287_x_0_address0),.x_0_ce0(grp_loady8_fu_287_x_0_ce0),.x_0_q0(smem_q0),.x_0_address1(grp_loady8_fu_287_x_0_address1),.x_0_ce1(grp_loady8_fu_287_x_0_ce1),.x_0_q1(smem_q1),.x_1_address0(grp_loady8_fu_287_x_1_address0),.x_1_ce0(grp_loady8_fu_287_x_1_ce0),.x_1_q0(smem_1_q0),.x_1_address1(grp_loady8_fu_287_x_1_address1),.x_1_ce1(grp_loady8_fu_287_x_1_ce1),.x_1_q1(smem_1_q1),.x_2_address0(grp_loady8_fu_287_x_2_address0),.x_2_ce0(grp_loady8_fu_287_x_2_ce0),.x_2_q0(smem_2_q0),.x_2_address1(grp_loady8_fu_287_x_2_address1),.x_2_ce1(grp_loady8_fu_287_x_2_ce1),.x_2_q1(smem_2_q1),.x_3_address0(grp_loady8_fu_287_x_3_address0),.x_3_ce0(grp_loady8_fu_287_x_3_ce0),.x_3_q0(smem_3_q0),.x_3_address1(grp_loady8_fu_287_x_3_address1),.x_3_ce1(grp_loady8_fu_287_x_3_ce1),.x_3_q1(smem_3_q1),.x_4_address0(grp_loady8_fu_287_x_4_address0),.x_4_ce0(grp_loady8_fu_287_x_4_ce0),.x_4_q0(smem_4_q0),.x_4_address1(grp_loady8_fu_287_x_4_address1),.x_4_ce1(grp_loady8_fu_287_x_4_ce1),.x_4_q1(smem_4_q1),.x_5_address0(grp_loady8_fu_287_x_5_address0),.x_5_ce0(grp_loady8_fu_287_x_5_ce0),.x_5_q0(smem_5_q0),.x_5_address1(grp_loady8_fu_287_x_5_address1),.x_5_ce1(grp_loady8_fu_287_x_5_ce1),.x_5_q1(smem_5_q1),.x_6_address0(grp_loady8_fu_287_x_6_address0),.x_6_ce0(grp_loady8_fu_287_x_6_ce0),.x_6_q0(smem_6_q0),.x_6_address1(grp_loady8_fu_287_x_6_address1),.x_6_ce1(grp_loady8_fu_287_x_6_ce1),.x_6_q1(smem_6_q1),.x_7_address0(grp_loady8_fu_287_x_7_address0),.x_7_ce0(grp_loady8_fu_287_x_7_ce0),.x_7_q0(smem_7_q0),.x_7_address1(grp_loady8_fu_287_x_7_address1),.x_7_ce1(grp_loady8_fu_287_x_7_ce1),.x_7_q1(smem_7_q1),.x_8_address0(grp_loady8_fu_287_x_8_address0),.x_8_ce0(grp_loady8_fu_287_x_8_ce0),.x_8_q0(smem_8_q0),.x_8_address1(grp_loady8_fu_287_x_8_address1),.x_8_ce1(grp_loady8_fu_287_x_8_ce1),.x_8_q1(smem_8_q1),.x_9_address0(grp_loady8_fu_287_x_9_address0),.x_9_ce0(grp_loady8_fu_287_x_9_ce0),.x_9_q0(smem_9_q0),.x_9_address1(grp_loady8_fu_287_x_9_address1),.x_9_ce1(grp_loady8_fu_287_x_9_ce1),.x_9_q1(smem_9_q1),.x_10_address0(grp_loady8_fu_287_x_10_address0),.x_10_ce0(grp_loady8_fu_287_x_10_ce0),.x_10_q0(smem_10_q0),.x_10_address1(grp_loady8_fu_287_x_10_address1),.x_10_ce1(grp_loady8_fu_287_x_10_ce1),.x_10_q1(smem_10_q1),.x_11_address0(grp_loady8_fu_287_x_11_address0),.x_11_ce0(grp_loady8_fu_287_x_11_ce0),.x_11_q0(smem_11_q0),.x_11_address1(grp_loady8_fu_287_x_11_address1),.x_11_ce1(grp_loady8_fu_287_x_11_ce1),.x_11_q1(smem_11_q1),.x_12_address0(grp_loady8_fu_287_x_12_address0),.x_12_ce0(grp_loady8_fu_287_x_12_ce0),.x_12_q0(smem_12_q0),.x_12_address1(grp_loady8_fu_287_x_12_address1),.x_12_ce1(grp_loady8_fu_287_x_12_ce1),.x_12_q1(smem_12_q1),.offset(grp_loady8_fu_287_offset));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
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
        end else if (((1'b0 == ap_block_pp0_stage24_subdone) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_loady8_fu_287_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_loady8_fu_287_ap_start_reg <= 1'b1;
        end else if ((grp_loady8_fu_287_ap_ready == 1'b1)) begin
            grp_loady8_fu_287_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_94 <= 7'd0;
    end else if (((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tid_fu_94 <= add_ln219_fu_368_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_addr_4_reg_436[6 : 1] <= zext_ln220_fu_344_p1[6 : 1];
        DATA_y_1_addr_5_reg_456[6 : 1] <= zext_ln224_fu_360_p1[6 : 1];
        DATA_y_1_addr_5_reg_456_pp0_iter1_reg[6 : 1] <= DATA_y_1_addr_5_reg_456[6 : 1];
        DATA_y_2_addr_4_reg_441[6 : 1] <= zext_ln220_fu_344_p1[6 : 1];
        DATA_y_2_addr_5_reg_461[6 : 1] <= zext_ln224_fu_360_p1[6 : 1];
        DATA_y_2_addr_5_reg_461_pp0_iter1_reg[6 : 1] <= DATA_y_2_addr_5_reg_461[6 : 1];
        DATA_y_3_addr_4_reg_446[6 : 1] <= zext_ln220_fu_344_p1[6 : 1];
        DATA_y_3_addr_5_reg_466[6 : 1] <= zext_ln224_fu_360_p1[6 : 1];
        DATA_y_3_addr_5_reg_466_pp0_iter1_reg[6 : 1] <= DATA_y_3_addr_5_reg_466[6 : 1];
        DATA_y_addr_4_reg_431[6 : 1] <= zext_ln220_fu_344_p1[6 : 1];
        DATA_y_addr_5_reg_451[6 : 1] <= zext_ln224_fu_360_p1[6 : 1];
        DATA_y_addr_5_reg_451_pp0_iter1_reg[6 : 1] <= DATA_y_addr_5_reg_451[6 : 1];
        icmp_ln219_reg_427 <= icmp_ln219_fu_328_p2;
        tid_4_reg_420 <= ap_sig_allocacmp_tid_4;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_load_3_reg_496 <= DATA_y_1_q0;
        DATA_y_2_load_2_reg_481 <= DATA_y_2_q1;
        DATA_y_2_load_3_reg_501 <= DATA_y_2_q0;
        DATA_y_3_load_2_reg_486 <= DATA_y_3_q1;
        DATA_y_3_load_3_reg_506 <= DATA_y_3_q0;
        DATA_y_load_3_reg_491 <= DATA_y_r_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_y_load_4_reg_541 <= data_y_q1;
        data_y_load_5_reg_546 <= data_y_q0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address0_local = DATA_y_1_addr_5_reg_456_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_address0_local = zext_ln224_fu_360_p1;
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            DATA_y_1_address1_local = DATA_y_1_addr_4_reg_436;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address1_local = zext_ln220_fu_344_p1;
        end else begin
            DATA_y_1_address1_local = 'bx;
        end
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        DATA_y_1_we1_local = 1'b1;
    end else begin
        DATA_y_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_2_address0_local = DATA_y_2_addr_5_reg_461_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_address0_local = zext_ln224_fu_360_p1;
    end else begin
        DATA_y_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            DATA_y_2_address1_local = DATA_y_2_addr_4_reg_441;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_2_address1_local = zext_ln220_fu_344_p1;
        end else begin
            DATA_y_2_address1_local = 'bx;
        end
    end else begin
        DATA_y_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_2_ce1_local = 1'b1;
    end else begin
        DATA_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_2_we0_local = 1'b1;
    end else begin
        DATA_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        DATA_y_2_we1_local = 1'b1;
    end else begin
        DATA_y_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_3_address0_local = DATA_y_3_addr_5_reg_466_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_address0_local = zext_ln224_fu_360_p1;
    end else begin
        DATA_y_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            DATA_y_3_address1_local = DATA_y_3_addr_4_reg_446;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_3_address1_local = zext_ln220_fu_344_p1;
        end else begin
            DATA_y_3_address1_local = 'bx;
        end
    end else begin
        DATA_y_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_3_ce1_local = 1'b1;
    end else begin
        DATA_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_3_we0_local = 1'b1;
    end else begin
        DATA_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        DATA_y_3_we1_local = 1'b1;
    end else begin
        DATA_y_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_r_address0_local = DATA_y_addr_5_reg_451_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_r_address0_local = zext_ln224_fu_360_p1;
    end else begin
        DATA_y_r_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            DATA_y_r_address1_local = DATA_y_addr_4_reg_431;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_r_address1_local = zext_ln220_fu_344_p1;
        end else begin
            DATA_y_r_address1_local = 'bx;
        end
    end else begin
        DATA_y_r_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_r_ce0_local = 1'b1;
    end else begin
        DATA_y_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_r_ce1_local = 1'b1;
    end else begin
        DATA_y_r_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_r_we0_local = 1'b1;
    end else begin
        DATA_y_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        DATA_y_r_we1_local = 1'b1;
    end else begin
        DATA_y_r_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln219_reg_427 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((1'b0 == ap_block_pp0_stage24_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_4 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_4 = tid_fu_94;
    end
end
always @ (*) begin
    if ((((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage21_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage20_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        data_y_address0 = grp_loady8_fu_287_a_y_address0;
    end else begin
        data_y_address0 = data_y_address0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_y_address0_local = data_y_addr_7_reg_536;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        data_y_address0_local = data_y_addr_5_reg_526;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        data_y_address0_local = data_y_addr_3_reg_516;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        data_y_address0_local = data_y_addr_1_reg_476;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        data_y_address0_local = 64'd7;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        data_y_address0_local = 64'd5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        data_y_address0_local = 64'd3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        data_y_address0_local = 64'd1;
    end else begin
        data_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage21_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage20_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        data_y_address1 = grp_loady8_fu_287_a_y_address1;
    end else begin
        data_y_address1 = data_y_address1_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_y_address1_local = data_y_addr_6_reg_531;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        data_y_address1_local = data_y_addr_4_reg_521;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        data_y_address1_local = data_y_addr_2_reg_511;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        data_y_address1_local = data_y_addr_reg_471;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        data_y_address1_local = 64'd6;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        data_y_address1_local = 64'd4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        data_y_address1_local = 64'd2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        data_y_address1_local = 64'd0;
    end else begin
        data_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage21_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage20_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        data_y_ce0 = grp_loady8_fu_287_a_y_ce0;
    end else begin
        data_y_ce0 = data_y_ce0_local;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        data_y_ce0_local = 1'b1;
    end else begin
        data_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage21_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage20_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        data_y_ce1 = grp_loady8_fu_287_a_y_ce1;
    end else begin
        data_y_ce1 = data_y_ce1_local;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        data_y_ce1_local = 1'b1;
    end else begin
        data_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage21_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage20_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        data_y_d0 = grp_loady8_fu_287_a_y_d0;
    end else begin
        data_y_d0 = data_y_d0_local;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            data_y_d0_local = DATA_y_3_load_3_reg_506;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            data_y_d0_local = DATA_y_1_load_3_reg_496;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            data_y_d0_local = DATA_y_3_load_2_reg_486;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            data_y_d0_local = DATA_y_1_q1;
        end else begin
            data_y_d0_local = 'bx;
        end
    end else begin
        data_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage21_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage20_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        data_y_d1 = grp_loady8_fu_287_a_y_d1;
    end else begin
        data_y_d1 = data_y_d1_local;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            data_y_d1_local = DATA_y_2_load_3_reg_501;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            data_y_d1_local = DATA_y_load_3_reg_491;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            data_y_d1_local = DATA_y_2_load_2_reg_481;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            data_y_d1_local = DATA_y_r_q1;
        end else begin
            data_y_d1_local = 'bx;
        end
    end else begin
        data_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage21_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage20_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        data_y_we0 = grp_loady8_fu_287_a_y_we0;
    end else begin
        data_y_we0 = data_y_we0_local;
    end
end
always @ (*) begin
    if ((((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        data_y_we0_local = 1'b1;
    end else begin
        data_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage21_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage20_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        data_y_we1 = grp_loady8_fu_287_a_y_we1;
    end else begin
        data_y_we1 = data_y_we1_local;
    end
end
always @ (*) begin
    if ((((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln219_reg_427 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        data_y_we1_local = 1'b1;
    end else begin
        data_y_we1_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
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
assign DATA_y_1_d0 = data_y_load_5_reg_546;
assign DATA_y_1_d1 = data_y_q0;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_1_we1 = DATA_y_1_we1_local;
assign DATA_y_2_address0 = DATA_y_2_address0_local;
assign DATA_y_2_address1 = DATA_y_2_address1_local;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_ce1 = DATA_y_2_ce1_local;
assign DATA_y_2_d0 = data_y_q1;
assign DATA_y_2_d1 = data_y_q1;
assign DATA_y_2_we0 = DATA_y_2_we0_local;
assign DATA_y_2_we1 = DATA_y_2_we1_local;
assign DATA_y_3_address0 = DATA_y_3_address0_local;
assign DATA_y_3_address1 = DATA_y_3_address1_local;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_ce1 = DATA_y_3_ce1_local;
assign DATA_y_3_d0 = data_y_q0;
assign DATA_y_3_d1 = data_y_q0;
assign DATA_y_3_we0 = DATA_y_3_we0_local;
assign DATA_y_3_we1 = DATA_y_3_we1_local;
assign DATA_y_r_address0 = DATA_y_r_address0_local;
assign DATA_y_r_address1 = DATA_y_r_address1_local;
assign DATA_y_r_ce0 = DATA_y_r_ce0_local;
assign DATA_y_r_ce1 = DATA_y_r_ce1_local;
assign DATA_y_r_d0 = data_y_load_4_reg_541;
assign DATA_y_r_d1 = data_y_q1;
assign DATA_y_r_we0 = DATA_y_r_we0_local;
assign DATA_y_r_we1 = DATA_y_r_we1_local;
assign add_ln219_fu_368_p2 = (tid_4_reg_420 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
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
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_ignoreCallOp97 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_ignoreCallOp98 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_ignoreCallOp99 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_ignoreCallOp100 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_ignoreCallOp101 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_ignoreCallOp102 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_ignoreCallOp103 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_ignoreCallOp104 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage5_ignoreCallOp87 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign data_y_addr_1_reg_476 = 64'd1;
assign data_y_addr_2_reg_511 = 64'd2;
assign data_y_addr_3_reg_516 = 64'd3;
assign data_y_addr_4_reg_521 = 64'd4;
assign data_y_addr_5_reg_526 = 64'd5;
assign data_y_addr_6_reg_531 = 64'd6;
assign data_y_addr_7_reg_536 = 64'd7;
assign data_y_addr_reg_471 = 64'd0;
assign grp_loady8_fu_287_ap_start = grp_loady8_fu_287_ap_start_reg;
assign grp_loady8_fu_287_offset = (mul_ln_fu_389_p5 + zext_ln114_fu_382_p1);
assign hi_1_fu_373_p4 = {{tid_4_reg_420[5:3]}};
assign icmp_ln219_fu_328_p2 = ((ap_sig_allocacmp_tid_4 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln_fu_389_p5 = {{{{trunc_ln232_fu_386_p1}, {2'd0}}, {trunc_ln232_fu_386_p1}}, {1'd0}};
assign or_ln7_fu_352_p3 = {{trunc_ln220_fu_334_p1}, {1'd1}};
assign shl_ln220_fu_338_p2 = ap_sig_allocacmp_tid_4 << 7'd1;
assign smem_10_address0 = grp_loady8_fu_287_x_10_address0;
assign smem_10_address1 = grp_loady8_fu_287_x_10_address1;
assign smem_10_ce0 = grp_loady8_fu_287_x_10_ce0;
assign smem_10_ce1 = grp_loady8_fu_287_x_10_ce1;
assign smem_11_address0 = grp_loady8_fu_287_x_11_address0;
assign smem_11_address1 = grp_loady8_fu_287_x_11_address1;
assign smem_11_ce0 = grp_loady8_fu_287_x_11_ce0;
assign smem_11_ce1 = grp_loady8_fu_287_x_11_ce1;
assign smem_12_address0 = grp_loady8_fu_287_x_12_address0;
assign smem_12_address1 = grp_loady8_fu_287_x_12_address1;
assign smem_12_ce0 = grp_loady8_fu_287_x_12_ce0;
assign smem_12_ce1 = grp_loady8_fu_287_x_12_ce1;
assign smem_1_address0 = grp_loady8_fu_287_x_1_address0;
assign smem_1_address1 = grp_loady8_fu_287_x_1_address1;
assign smem_1_ce0 = grp_loady8_fu_287_x_1_ce0;
assign smem_1_ce1 = grp_loady8_fu_287_x_1_ce1;
assign smem_2_address0 = grp_loady8_fu_287_x_2_address0;
assign smem_2_address1 = grp_loady8_fu_287_x_2_address1;
assign smem_2_ce0 = grp_loady8_fu_287_x_2_ce0;
assign smem_2_ce1 = grp_loady8_fu_287_x_2_ce1;
assign smem_3_address0 = grp_loady8_fu_287_x_3_address0;
assign smem_3_address1 = grp_loady8_fu_287_x_3_address1;
assign smem_3_ce0 = grp_loady8_fu_287_x_3_ce0;
assign smem_3_ce1 = grp_loady8_fu_287_x_3_ce1;
assign smem_4_address0 = grp_loady8_fu_287_x_4_address0;
assign smem_4_address1 = grp_loady8_fu_287_x_4_address1;
assign smem_4_ce0 = grp_loady8_fu_287_x_4_ce0;
assign smem_4_ce1 = grp_loady8_fu_287_x_4_ce1;
assign smem_5_address0 = grp_loady8_fu_287_x_5_address0;
assign smem_5_address1 = grp_loady8_fu_287_x_5_address1;
assign smem_5_ce0 = grp_loady8_fu_287_x_5_ce0;
assign smem_5_ce1 = grp_loady8_fu_287_x_5_ce1;
assign smem_6_address0 = grp_loady8_fu_287_x_6_address0;
assign smem_6_address1 = grp_loady8_fu_287_x_6_address1;
assign smem_6_ce0 = grp_loady8_fu_287_x_6_ce0;
assign smem_6_ce1 = grp_loady8_fu_287_x_6_ce1;
assign smem_7_address0 = grp_loady8_fu_287_x_7_address0;
assign smem_7_address1 = grp_loady8_fu_287_x_7_address1;
assign smem_7_ce0 = grp_loady8_fu_287_x_7_ce0;
assign smem_7_ce1 = grp_loady8_fu_287_x_7_ce1;
assign smem_8_address0 = grp_loady8_fu_287_x_8_address0;
assign smem_8_address1 = grp_loady8_fu_287_x_8_address1;
assign smem_8_ce0 = grp_loady8_fu_287_x_8_ce0;
assign smem_8_ce1 = grp_loady8_fu_287_x_8_ce1;
assign smem_9_address0 = grp_loady8_fu_287_x_9_address0;
assign smem_9_address1 = grp_loady8_fu_287_x_9_address1;
assign smem_9_ce0 = grp_loady8_fu_287_x_9_ce0;
assign smem_9_ce1 = grp_loady8_fu_287_x_9_ce1;
assign smem_address0 = grp_loady8_fu_287_x_0_address0;
assign smem_address1 = grp_loady8_fu_287_x_0_address1;
assign smem_ce0 = grp_loady8_fu_287_x_0_ce0;
assign smem_ce1 = grp_loady8_fu_287_x_0_ce1;
assign trunc_ln220_fu_334_p1 = ap_sig_allocacmp_tid_4[5:0];
assign trunc_ln232_fu_386_p1 = tid_4_reg_420[2:0];
assign zext_ln114_fu_382_p1 = hi_1_fu_373_p4;
assign zext_ln220_fu_344_p1 = shl_ln220_fu_338_p2;
assign zext_ln224_fu_360_p1 = or_ln7_fu_352_p3;
always @ (posedge ap_clk) begin
    DATA_y_addr_4_reg_431[0] <= 1'b0;
    DATA_y_1_addr_4_reg_436[0] <= 1'b0;
    DATA_y_2_addr_4_reg_441[0] <= 1'b0;
    DATA_y_3_addr_4_reg_446[0] <= 1'b0;
    DATA_y_addr_5_reg_451[0] <= 1'b1;
    DATA_y_addr_5_reg_451_pp0_iter1_reg[0] <= 1'b1;
    DATA_y_1_addr_5_reg_456[0] <= 1'b1;
    DATA_y_1_addr_5_reg_456_pp0_iter1_reg[0] <= 1'b1;
    DATA_y_2_addr_5_reg_461[0] <= 1'b1;
    DATA_y_2_addr_5_reg_461_pp0_iter1_reg[0] <= 1'b1;
    DATA_y_3_addr_5_reg_466[0] <= 1'b1;
    DATA_y_3_addr_5_reg_466_pp0_iter1_reg[0] <= 1'b1;
end
endmodule 
