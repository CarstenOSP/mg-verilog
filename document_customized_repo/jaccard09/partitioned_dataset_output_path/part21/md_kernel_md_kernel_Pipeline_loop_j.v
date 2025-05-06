
module md_kernel_md_kernel_Pipeline_loop_j (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,i,NL_0_address0,NL_0_ce0,NL_0_q0,NL_4_address0,NL_4_ce0,NL_4_q0,position_x_0_address0,position_x_0_ce0,position_x_0_q0,position_x_0_address1,position_x_0_ce1,position_x_0_q1,position_x_1_address0,position_x_1_ce0,position_x_1_q0,position_x_1_address1,position_x_1_ce1,position_x_1_q1,position_x_2_address0,position_x_2_ce0,position_x_2_q0,position_x_2_address1,position_x_2_ce1,position_x_2_q1,position_x_3_address0,position_x_3_ce0,position_x_3_q0,position_x_3_address1,position_x_3_ce1,position_x_3_q1,position_x_4_address0,position_x_4_ce0,position_x_4_q0,position_x_4_address1,position_x_4_ce1,position_x_4_q1,position_x_5_address0,position_x_5_ce0,position_x_5_q0,position_x_5_address1,position_x_5_ce1,position_x_5_q1,position_x_6_address0,position_x_6_ce0,position_x_6_q0,position_x_6_address1,position_x_6_ce1,position_x_6_q1,position_x_7_address0,position_x_7_ce0,position_x_7_q0,position_x_7_address1,position_x_7_ce1,position_x_7_q1,position_y_0_address0,position_y_0_ce0,position_y_0_q0,position_y_0_address1,position_y_0_ce1,position_y_0_q1,position_y_1_address0,position_y_1_ce0,position_y_1_q0,position_y_1_address1,position_y_1_ce1,position_y_1_q1,position_y_2_address0,position_y_2_ce0,position_y_2_q0,position_y_2_address1,position_y_2_ce1,position_y_2_q1,position_y_3_address0,position_y_3_ce0,position_y_3_q0,position_y_3_address1,position_y_3_ce1,position_y_3_q1,position_y_4_address0,position_y_4_ce0,position_y_4_q0,position_y_4_address1,position_y_4_ce1,position_y_4_q1,position_y_5_address0,position_y_5_ce0,position_y_5_q0,position_y_5_address1,position_y_5_ce1,position_y_5_q1,position_y_6_address0,position_y_6_ce0,position_y_6_q0,position_y_6_address1,position_y_6_ce1,position_y_6_q1,position_y_7_address0,position_y_7_ce0,position_y_7_q0,position_y_7_address1,position_y_7_ce1,position_y_7_q1,position_z_0_address0,position_z_0_ce0,position_z_0_q0,position_z_0_address1,position_z_0_ce1,position_z_0_q1,position_z_1_address0,position_z_1_ce0,position_z_1_q0,position_z_1_address1,position_z_1_ce1,position_z_1_q1,position_z_2_address0,position_z_2_ce0,position_z_2_q0,position_z_2_address1,position_z_2_ce1,position_z_2_q1,position_z_3_address0,position_z_3_ce0,position_z_3_q0,position_z_3_address1,position_z_3_ce1,position_z_3_q1,position_z_4_address0,position_z_4_ce0,position_z_4_q0,position_z_4_address1,position_z_4_ce1,position_z_4_q1,position_z_5_address0,position_z_5_ce0,position_z_5_q0,position_z_5_address1,position_z_5_ce1,position_z_5_q1,position_z_6_address0,position_z_6_ce0,position_z_6_q0,position_z_6_address1,position_z_6_ce1,position_z_6_q1,position_z_7_address0,position_z_7_ce0,position_z_7_q0,position_z_7_address1,position_z_7_ce1,position_z_7_q1,i_x,i_y,i_z,NL_1_address0,NL_1_ce0,NL_1_q0,NL_5_address0,NL_5_ce0,NL_5_q0,NL_2_address0,NL_2_ce0,NL_2_q0,NL_6_address0,NL_6_ce0,NL_6_q0,NL_3_address0,NL_3_ce0,NL_3_q0,NL_7_address0,NL_7_ce0,NL_7_q0,fz_out,fz_out_ap_vld,fy_out,fy_out_ap_vld,fx_out,fx_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 32'd1;
parameter    ap_ST_fsm_pp0_stage1 = 32'd2;
parameter    ap_ST_fsm_pp0_stage2 = 32'd4;
parameter    ap_ST_fsm_pp0_stage3 = 32'd8;
parameter    ap_ST_fsm_pp0_stage4 = 32'd16;
parameter    ap_ST_fsm_pp0_stage5 = 32'd32;
parameter    ap_ST_fsm_pp0_stage6 = 32'd64;
parameter    ap_ST_fsm_pp0_stage7 = 32'd128;
parameter    ap_ST_fsm_pp0_stage8 = 32'd256;
parameter    ap_ST_fsm_pp0_stage9 = 32'd512;
parameter    ap_ST_fsm_pp0_stage10 = 32'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 32'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 32'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 32'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 32'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 32'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 32'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 32'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 32'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 32'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 32'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 32'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 32'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 32'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 32'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 32'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 32'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 32'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 32'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 32'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 32'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 32'd2147483648;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] i;
output  [8:0] NL_0_address0;
output   NL_0_ce0;
input  [31:0] NL_0_q0;
output  [8:0] NL_4_address0;
output   NL_4_ce0;
input  [31:0] NL_4_q0;
output  [4:0] position_x_0_address0;
output   position_x_0_ce0;
input  [63:0] position_x_0_q0;
output  [4:0] position_x_0_address1;
output   position_x_0_ce1;
input  [63:0] position_x_0_q1;
output  [4:0] position_x_1_address0;
output   position_x_1_ce0;
input  [63:0] position_x_1_q0;
output  [4:0] position_x_1_address1;
output   position_x_1_ce1;
input  [63:0] position_x_1_q1;
output  [4:0] position_x_2_address0;
output   position_x_2_ce0;
input  [63:0] position_x_2_q0;
output  [4:0] position_x_2_address1;
output   position_x_2_ce1;
input  [63:0] position_x_2_q1;
output  [4:0] position_x_3_address0;
output   position_x_3_ce0;
input  [63:0] position_x_3_q0;
output  [4:0] position_x_3_address1;
output   position_x_3_ce1;
input  [63:0] position_x_3_q1;
output  [4:0] position_x_4_address0;
output   position_x_4_ce0;
input  [63:0] position_x_4_q0;
output  [4:0] position_x_4_address1;
output   position_x_4_ce1;
input  [63:0] position_x_4_q1;
output  [4:0] position_x_5_address0;
output   position_x_5_ce0;
input  [63:0] position_x_5_q0;
output  [4:0] position_x_5_address1;
output   position_x_5_ce1;
input  [63:0] position_x_5_q1;
output  [4:0] position_x_6_address0;
output   position_x_6_ce0;
input  [63:0] position_x_6_q0;
output  [4:0] position_x_6_address1;
output   position_x_6_ce1;
input  [63:0] position_x_6_q1;
output  [4:0] position_x_7_address0;
output   position_x_7_ce0;
input  [63:0] position_x_7_q0;
output  [4:0] position_x_7_address1;
output   position_x_7_ce1;
input  [63:0] position_x_7_q1;
output  [4:0] position_y_0_address0;
output   position_y_0_ce0;
input  [63:0] position_y_0_q0;
output  [4:0] position_y_0_address1;
output   position_y_0_ce1;
input  [63:0] position_y_0_q1;
output  [4:0] position_y_1_address0;
output   position_y_1_ce0;
input  [63:0] position_y_1_q0;
output  [4:0] position_y_1_address1;
output   position_y_1_ce1;
input  [63:0] position_y_1_q1;
output  [4:0] position_y_2_address0;
output   position_y_2_ce0;
input  [63:0] position_y_2_q0;
output  [4:0] position_y_2_address1;
output   position_y_2_ce1;
input  [63:0] position_y_2_q1;
output  [4:0] position_y_3_address0;
output   position_y_3_ce0;
input  [63:0] position_y_3_q0;
output  [4:0] position_y_3_address1;
output   position_y_3_ce1;
input  [63:0] position_y_3_q1;
output  [4:0] position_y_4_address0;
output   position_y_4_ce0;
input  [63:0] position_y_4_q0;
output  [4:0] position_y_4_address1;
output   position_y_4_ce1;
input  [63:0] position_y_4_q1;
output  [4:0] position_y_5_address0;
output   position_y_5_ce0;
input  [63:0] position_y_5_q0;
output  [4:0] position_y_5_address1;
output   position_y_5_ce1;
input  [63:0] position_y_5_q1;
output  [4:0] position_y_6_address0;
output   position_y_6_ce0;
input  [63:0] position_y_6_q0;
output  [4:0] position_y_6_address1;
output   position_y_6_ce1;
input  [63:0] position_y_6_q1;
output  [4:0] position_y_7_address0;
output   position_y_7_ce0;
input  [63:0] position_y_7_q0;
output  [4:0] position_y_7_address1;
output   position_y_7_ce1;
input  [63:0] position_y_7_q1;
output  [4:0] position_z_0_address0;
output   position_z_0_ce0;
input  [63:0] position_z_0_q0;
output  [4:0] position_z_0_address1;
output   position_z_0_ce1;
input  [63:0] position_z_0_q1;
output  [4:0] position_z_1_address0;
output   position_z_1_ce0;
input  [63:0] position_z_1_q0;
output  [4:0] position_z_1_address1;
output   position_z_1_ce1;
input  [63:0] position_z_1_q1;
output  [4:0] position_z_2_address0;
output   position_z_2_ce0;
input  [63:0] position_z_2_q0;
output  [4:0] position_z_2_address1;
output   position_z_2_ce1;
input  [63:0] position_z_2_q1;
output  [4:0] position_z_3_address0;
output   position_z_3_ce0;
input  [63:0] position_z_3_q0;
output  [4:0] position_z_3_address1;
output   position_z_3_ce1;
input  [63:0] position_z_3_q1;
output  [4:0] position_z_4_address0;
output   position_z_4_ce0;
input  [63:0] position_z_4_q0;
output  [4:0] position_z_4_address1;
output   position_z_4_ce1;
input  [63:0] position_z_4_q1;
output  [4:0] position_z_5_address0;
output   position_z_5_ce0;
input  [63:0] position_z_5_q0;
output  [4:0] position_z_5_address1;
output   position_z_5_ce1;
input  [63:0] position_z_5_q1;
output  [4:0] position_z_6_address0;
output   position_z_6_ce0;
input  [63:0] position_z_6_q0;
output  [4:0] position_z_6_address1;
output   position_z_6_ce1;
input  [63:0] position_z_6_q1;
output  [4:0] position_z_7_address0;
output   position_z_7_ce0;
input  [63:0] position_z_7_q0;
output  [4:0] position_z_7_address1;
output   position_z_7_ce1;
input  [63:0] position_z_7_q1;
input  [63:0] i_x;
input  [63:0] i_y;
input  [63:0] i_z;
output  [8:0] NL_1_address0;
output   NL_1_ce0;
input  [31:0] NL_1_q0;
output  [8:0] NL_5_address0;
output   NL_5_ce0;
input  [31:0] NL_5_q0;
output  [8:0] NL_2_address0;
output   NL_2_ce0;
input  [31:0] NL_2_q0;
output  [8:0] NL_6_address0;
output   NL_6_ce0;
input  [31:0] NL_6_q0;
output  [8:0] NL_3_address0;
output   NL_3_ce0;
input  [31:0] NL_3_q0;
output  [8:0] NL_7_address0;
output   NL_7_ce0;
input  [31:0] NL_7_q0;
output  [63:0] fz_out;
output   fz_out_ap_vld;
output  [63:0] fy_out;
output   fy_out_ap_vld;
output  [63:0] fx_out;
output   fx_out_ap_vld;
reg ap_idle;
reg fz_out_ap_vld;
reg fy_out_ap_vld;
reg fx_out_ap_vld;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [0:0] tmp_reg_2655;
reg    ap_condition_exit_pp0_iter0_stage31;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_1331_p2;
reg   [63:0] reg_1346;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [63:0] grp_fu_1335_p2;
reg   [63:0] reg_1353;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_1360;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_1366;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_1372;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_1378;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] reg_1384;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] reg_1390;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
reg   [63:0] reg_1396;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire   [63:0] grp_fu_1301_p2;
reg   [63:0] reg_1402;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_1409;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [63:0] grp_fu_1305_p2;
reg   [63:0] reg_1414;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1421;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] reg_1428;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [4:0] j_1_reg_2649;
reg   [0:0] tmp_reg_2655_pp0_iter1_reg;
reg   [0:0] tmp_reg_2655_pp0_iter2_reg;
reg   [0:0] tmp_reg_2655_pp0_iter3_reg;
reg   [0:0] tmp_reg_2655_pp0_iter4_reg;
wire   [2:0] trunc_ln27_fu_1511_p1;
reg   [2:0] trunc_ln27_reg_2699;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [4:0] lshr_ln27_1_reg_2706;
wire   [2:0] trunc_ln27_1_fu_1533_p1;
reg   [2:0] trunc_ln27_1_reg_2711;
reg   [4:0] lshr_ln27_2_reg_2718;
wire   [2:0] trunc_ln27_2_fu_1555_p1;
reg   [2:0] trunc_ln27_2_reg_2723;
reg   [4:0] lshr_ln27_3_reg_2730;
wire   [2:0] trunc_ln27_3_fu_1577_p1;
reg   [2:0] trunc_ln27_3_reg_2735;
reg   [4:0] lshr_ln27_4_reg_2742;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] j_x_fu_1677_p19;
reg   [63:0] j_x_reg_2987;
wire   [63:0] j_y_fu_1748_p19;
reg   [63:0] j_y_reg_2992;
wire   [63:0] j_z_fu_1819_p19;
reg   [63:0] j_z_reg_2997;
wire   [63:0] j_x_1_fu_1890_p19;
reg   [63:0] j_x_1_reg_3002;
wire   [63:0] j_y_1_fu_1961_p19;
reg   [63:0] j_y_1_reg_3007;
wire   [63:0] j_z_1_fu_2032_p19;
reg   [63:0] j_z_1_reg_3012;
wire   [63:0] j_x_2_fu_2157_p19;
reg   [63:0] j_x_2_reg_3257;
wire   [63:0] j_y_2_fu_2228_p19;
reg   [63:0] j_y_2_reg_3262;
wire   [63:0] j_z_2_fu_2299_p19;
reg   [63:0] j_z_2_reg_3267;
wire   [63:0] j_x_3_fu_2370_p19;
reg   [63:0] j_x_3_reg_3272;
wire   [63:0] j_y_3_fu_2441_p19;
reg   [63:0] j_y_3_reg_3277;
wire   [63:0] j_z_3_fu_2512_p19;
reg   [63:0] j_z_3_reg_3282;
reg   [63:0] delx_reg_3287;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] delx_reg_3287_pp0_iter1_reg;
reg   [63:0] delx_reg_3287_pp0_iter2_reg;
reg   [63:0] delx_reg_3287_pp0_iter3_reg;
reg   [63:0] delx_reg_3287_pp0_iter4_reg;
reg   [63:0] dely_reg_3293;
reg   [63:0] dely_reg_3293_pp0_iter1_reg;
reg   [63:0] dely_reg_3293_pp0_iter2_reg;
reg   [63:0] dely_reg_3293_pp0_iter3_reg;
reg   [63:0] dely_reg_3293_pp0_iter4_reg;
wire   [63:0] grp_fu_1309_p2;
reg   [63:0] delz_reg_3299;
reg   [63:0] delz_reg_3299_pp0_iter1_reg;
reg   [63:0] delz_reg_3299_pp0_iter2_reg;
reg   [63:0] delz_reg_3299_pp0_iter3_reg;
reg   [63:0] delz_reg_3299_pp0_iter4_reg;
wire   [63:0] grp_fu_1313_p2;
reg   [63:0] delx_1_reg_3305;
reg   [63:0] delx_1_reg_3305_pp0_iter1_reg;
reg   [63:0] delx_1_reg_3305_pp0_iter2_reg;
reg   [63:0] delx_1_reg_3305_pp0_iter3_reg;
reg   [63:0] delx_1_reg_3305_pp0_iter4_reg;
wire   [63:0] grp_fu_1317_p2;
reg   [63:0] dely_1_reg_3311;
reg   [63:0] dely_1_reg_3311_pp0_iter1_reg;
reg   [63:0] dely_1_reg_3311_pp0_iter2_reg;
reg   [63:0] dely_1_reg_3311_pp0_iter3_reg;
reg   [63:0] dely_1_reg_3311_pp0_iter4_reg;
wire   [63:0] grp_fu_1321_p2;
reg   [63:0] delz_1_reg_3317;
reg   [63:0] delz_1_reg_3317_pp0_iter1_reg;
reg   [63:0] delz_1_reg_3317_pp0_iter2_reg;
reg   [63:0] delz_1_reg_3317_pp0_iter3_reg;
reg   [63:0] delz_1_reg_3317_pp0_iter4_reg;
reg   [63:0] delx_2_reg_3323;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] delx_2_reg_3323_pp0_iter1_reg;
reg   [63:0] delx_2_reg_3323_pp0_iter2_reg;
reg   [63:0] delx_2_reg_3323_pp0_iter3_reg;
reg   [63:0] delx_2_reg_3323_pp0_iter4_reg;
reg   [63:0] dely_2_reg_3329;
reg   [63:0] dely_2_reg_3329_pp0_iter1_reg;
reg   [63:0] dely_2_reg_3329_pp0_iter2_reg;
reg   [63:0] dely_2_reg_3329_pp0_iter3_reg;
reg   [63:0] dely_2_reg_3329_pp0_iter4_reg;
reg   [63:0] delz_2_reg_3335;
reg   [63:0] delz_2_reg_3335_pp0_iter1_reg;
reg   [63:0] delz_2_reg_3335_pp0_iter2_reg;
reg   [63:0] delz_2_reg_3335_pp0_iter3_reg;
reg   [63:0] delz_2_reg_3335_pp0_iter4_reg;
reg   [63:0] delx_3_reg_3341;
reg   [63:0] delx_3_reg_3341_pp0_iter1_reg;
reg   [63:0] delx_3_reg_3341_pp0_iter2_reg;
reg   [63:0] delx_3_reg_3341_pp0_iter3_reg;
reg   [63:0] delx_3_reg_3341_pp0_iter4_reg;
reg   [63:0] dely_3_reg_3347;
reg   [63:0] dely_3_reg_3347_pp0_iter1_reg;
reg   [63:0] dely_3_reg_3347_pp0_iter2_reg;
reg   [63:0] dely_3_reg_3347_pp0_iter3_reg;
reg   [63:0] dely_3_reg_3347_pp0_iter4_reg;
reg   [63:0] delz_3_reg_3353;
reg   [63:0] delz_3_reg_3353_pp0_iter1_reg;
reg   [63:0] delz_3_reg_3353_pp0_iter2_reg;
reg   [63:0] delz_3_reg_3353_pp0_iter3_reg;
reg   [63:0] delz_3_reg_3353_pp0_iter4_reg;
reg   [63:0] mul18_3_reg_3359;
reg   [63:0] mul19_3_reg_3364;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] mul21_3_reg_3369;
reg   [63:0] add20_2_reg_3374;
reg   [63:0] add20_3_reg_3379;
wire    ap_block_pp0_stage31_11001;
reg   [63:0] add1_reg_3384;
reg   [63:0] add22_1_reg_3389;
reg   [63:0] add22_2_reg_3394;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] add22_3_reg_3399;
wire   [63:0] grp_fu_1341_p2;
reg   [63:0] r2inv_reg_3404;
reg   [63:0] r2inv_reg_3404_pp0_iter3_reg;
reg   [63:0] r2inv_1_reg_3411;
reg   [63:0] r2inv_1_reg_3411_pp0_iter3_reg;
reg   [63:0] r2inv_2_reg_3417;
reg   [63:0] r2inv_2_reg_3417_pp0_iter4_reg;
reg   [63:0] r2inv_3_reg_3424;
reg   [63:0] r2inv_3_reg_3424_pp0_iter4_reg;
reg   [63:0] r6inv_reg_3431;
reg   [63:0] r6inv_1_reg_3437;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] r6inv_2_reg_3443;
reg   [63:0] r6inv_3_reg_3449;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] mul5_reg_3454;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] mul25_1_reg_3459;
reg   [63:0] mul25_2_reg_3464;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] mul25_3_reg_3469;
reg   [63:0] sub_reg_3474;
reg   [63:0] sub26_2_reg_3479;
reg   [63:0] sub26_3_reg_3484;
reg   [63:0] force_2_reg_3489;
reg   [63:0] force_3_reg_3495;
reg   [63:0] mul4_reg_3511;
reg   [63:0] mul33_1_reg_3521;
reg   [63:0] mul29_2_reg_3526;
reg   [63:0] mul33_2_reg_3531;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
reg   [63:0] mul29_3_reg_3536;
reg   [63:0] mul31_3_reg_3541;
reg   [63:0] mul33_3_reg_3546;
reg   [63:0] fx_1_reg_3551;
reg   [63:0] fy_1_reg_3556;
wire   [63:0] grp_fu_1327_p2;
reg   [63:0] fz_2_reg_3561;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage27_subdone;
wire   [63:0] zext_ln27_4_fu_1482_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_1591_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_1_fu_1618_p1;
wire   [63:0] zext_ln27_2_fu_2071_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_3_fu_2098_p1;
reg   [63:0] fx_fu_152;
wire    ap_loop_init;
wire    ap_block_pp0_stage27;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage27;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [63:0] fy_fu_156;
reg   [63:0] fz_fu_160;
wire    ap_block_pp0_stage28;
reg   [4:0] j_fu_164;
wire   [4:0] add_ln25_fu_2551_p2;
reg   [4:0] ap_sig_allocacmp_j_1;
wire    ap_block_pp0_stage27_01001;
reg    NL_0_ce0_local;
reg    NL_4_ce0_local;
reg    NL_1_ce0_local;
reg    NL_5_ce0_local;
reg    NL_2_ce0_local;
reg    NL_6_ce0_local;
reg    NL_3_ce0_local;
reg    NL_7_ce0_local;
reg    position_x_0_ce1_local;
reg   [4:0] position_x_0_address1_local;
reg    position_x_0_ce0_local;
reg   [4:0] position_x_0_address0_local;
reg    position_x_1_ce1_local;
reg   [4:0] position_x_1_address1_local;
reg    position_x_1_ce0_local;
reg   [4:0] position_x_1_address0_local;
reg    position_x_2_ce1_local;
reg   [4:0] position_x_2_address1_local;
reg    position_x_2_ce0_local;
reg   [4:0] position_x_2_address0_local;
reg    position_x_3_ce1_local;
reg   [4:0] position_x_3_address1_local;
reg    position_x_3_ce0_local;
reg   [4:0] position_x_3_address0_local;
reg    position_x_4_ce1_local;
reg   [4:0] position_x_4_address1_local;
reg    position_x_4_ce0_local;
reg   [4:0] position_x_4_address0_local;
reg    position_x_5_ce1_local;
reg   [4:0] position_x_5_address1_local;
reg    position_x_5_ce0_local;
reg   [4:0] position_x_5_address0_local;
reg    position_x_6_ce1_local;
reg   [4:0] position_x_6_address1_local;
reg    position_x_6_ce0_local;
reg   [4:0] position_x_6_address0_local;
reg    position_x_7_ce1_local;
reg   [4:0] position_x_7_address1_local;
reg    position_x_7_ce0_local;
reg   [4:0] position_x_7_address0_local;
reg    position_y_0_ce1_local;
reg   [4:0] position_y_0_address1_local;
reg    position_y_0_ce0_local;
reg   [4:0] position_y_0_address0_local;
reg    position_y_1_ce1_local;
reg   [4:0] position_y_1_address1_local;
reg    position_y_1_ce0_local;
reg   [4:0] position_y_1_address0_local;
reg    position_y_2_ce1_local;
reg   [4:0] position_y_2_address1_local;
reg    position_y_2_ce0_local;
reg   [4:0] position_y_2_address0_local;
reg    position_y_3_ce1_local;
reg   [4:0] position_y_3_address1_local;
reg    position_y_3_ce0_local;
reg   [4:0] position_y_3_address0_local;
reg    position_y_4_ce1_local;
reg   [4:0] position_y_4_address1_local;
reg    position_y_4_ce0_local;
reg   [4:0] position_y_4_address0_local;
reg    position_y_5_ce1_local;
reg   [4:0] position_y_5_address1_local;
reg    position_y_5_ce0_local;
reg   [4:0] position_y_5_address0_local;
reg    position_y_6_ce1_local;
reg   [4:0] position_y_6_address1_local;
reg    position_y_6_ce0_local;
reg   [4:0] position_y_6_address0_local;
reg    position_y_7_ce1_local;
reg   [4:0] position_y_7_address1_local;
reg    position_y_7_ce0_local;
reg   [4:0] position_y_7_address0_local;
reg    position_z_0_ce1_local;
reg   [4:0] position_z_0_address1_local;
reg    position_z_0_ce0_local;
reg   [4:0] position_z_0_address0_local;
reg    position_z_1_ce1_local;
reg   [4:0] position_z_1_address1_local;
reg    position_z_1_ce0_local;
reg   [4:0] position_z_1_address0_local;
reg    position_z_2_ce1_local;
reg   [4:0] position_z_2_address1_local;
reg    position_z_2_ce0_local;
reg   [4:0] position_z_2_address0_local;
reg    position_z_3_ce1_local;
reg   [4:0] position_z_3_address1_local;
reg    position_z_3_ce0_local;
reg   [4:0] position_z_3_address0_local;
reg    position_z_4_ce1_local;
reg   [4:0] position_z_4_address1_local;
reg    position_z_4_ce0_local;
reg   [4:0] position_z_4_address0_local;
reg    position_z_5_ce1_local;
reg   [4:0] position_z_5_address1_local;
reg    position_z_5_ce0_local;
reg   [4:0] position_z_5_address0_local;
reg    position_z_6_ce1_local;
reg   [4:0] position_z_6_address1_local;
reg    position_z_6_ce0_local;
reg   [4:0] position_z_6_address0_local;
reg    position_z_7_ce1_local;
reg   [4:0] position_z_7_address1_local;
reg    position_z_7_ce0_local;
reg   [4:0] position_z_7_address0_local;
reg   [63:0] grp_fu_1301_p0;
reg   [63:0] grp_fu_1301_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage19;
wire    ap_block_pp0_stage21;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage29;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage25;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage20;
reg   [63:0] grp_fu_1305_p0;
reg   [63:0] grp_fu_1305_p1;
reg   [63:0] grp_fu_1309_p0;
reg   [63:0] grp_fu_1309_p1;
reg   [63:0] grp_fu_1313_p1;
reg   [63:0] grp_fu_1317_p1;
reg   [63:0] grp_fu_1321_p1;
reg   [63:0] grp_fu_1331_p0;
reg   [63:0] grp_fu_1331_p1;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage18;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage23;
reg   [63:0] grp_fu_1335_p0;
reg   [63:0] grp_fu_1335_p1;
reg   [63:0] grp_fu_1341_p1;
wire    ap_block_pp0_stage6;
wire   [0:0] tmp_1_fu_1466_p3;
wire   [8:0] add_ln_fu_1474_p3;
wire   [2:0] trunc_ln25_fu_1494_p1;
wire   [0:0] icmp_ln27_fu_1497_p2;
wire   [31:0] select_ln27_fu_1503_p3;
wire   [31:0] select_ln27_1_fu_1525_p3;
wire   [31:0] select_ln27_2_fu_1547_p3;
wire   [31:0] select_ln27_3_fu_1569_p3;
wire   [63:0] j_x_fu_1677_p2;
wire   [63:0] j_x_fu_1677_p4;
wire   [63:0] j_x_fu_1677_p6;
wire   [63:0] j_x_fu_1677_p8;
wire   [63:0] j_x_fu_1677_p10;
wire   [63:0] j_x_fu_1677_p12;
wire   [63:0] j_x_fu_1677_p14;
wire   [63:0] j_x_fu_1677_p16;
wire   [63:0] j_x_fu_1677_p17;
wire   [63:0] j_y_fu_1748_p2;
wire   [63:0] j_y_fu_1748_p4;
wire   [63:0] j_y_fu_1748_p6;
wire   [63:0] j_y_fu_1748_p8;
wire   [63:0] j_y_fu_1748_p10;
wire   [63:0] j_y_fu_1748_p12;
wire   [63:0] j_y_fu_1748_p14;
wire   [63:0] j_y_fu_1748_p16;
wire   [63:0] j_y_fu_1748_p17;
wire   [63:0] j_z_fu_1819_p2;
wire   [63:0] j_z_fu_1819_p4;
wire   [63:0] j_z_fu_1819_p6;
wire   [63:0] j_z_fu_1819_p8;
wire   [63:0] j_z_fu_1819_p10;
wire   [63:0] j_z_fu_1819_p12;
wire   [63:0] j_z_fu_1819_p14;
wire   [63:0] j_z_fu_1819_p16;
wire   [63:0] j_z_fu_1819_p17;
wire   [63:0] j_x_1_fu_1890_p2;
wire   [63:0] j_x_1_fu_1890_p4;
wire   [63:0] j_x_1_fu_1890_p6;
wire   [63:0] j_x_1_fu_1890_p8;
wire   [63:0] j_x_1_fu_1890_p10;
wire   [63:0] j_x_1_fu_1890_p12;
wire   [63:0] j_x_1_fu_1890_p14;
wire   [63:0] j_x_1_fu_1890_p16;
wire   [63:0] j_x_1_fu_1890_p17;
wire   [63:0] j_y_1_fu_1961_p2;
wire   [63:0] j_y_1_fu_1961_p4;
wire   [63:0] j_y_1_fu_1961_p6;
wire   [63:0] j_y_1_fu_1961_p8;
wire   [63:0] j_y_1_fu_1961_p10;
wire   [63:0] j_y_1_fu_1961_p12;
wire   [63:0] j_y_1_fu_1961_p14;
wire   [63:0] j_y_1_fu_1961_p16;
wire   [63:0] j_y_1_fu_1961_p17;
wire   [63:0] j_z_1_fu_2032_p2;
wire   [63:0] j_z_1_fu_2032_p4;
wire   [63:0] j_z_1_fu_2032_p6;
wire   [63:0] j_z_1_fu_2032_p8;
wire   [63:0] j_z_1_fu_2032_p10;
wire   [63:0] j_z_1_fu_2032_p12;
wire   [63:0] j_z_1_fu_2032_p14;
wire   [63:0] j_z_1_fu_2032_p16;
wire   [63:0] j_z_1_fu_2032_p17;
wire   [63:0] j_x_2_fu_2157_p2;
wire   [63:0] j_x_2_fu_2157_p4;
wire   [63:0] j_x_2_fu_2157_p6;
wire   [63:0] j_x_2_fu_2157_p8;
wire   [63:0] j_x_2_fu_2157_p10;
wire   [63:0] j_x_2_fu_2157_p12;
wire   [63:0] j_x_2_fu_2157_p14;
wire   [63:0] j_x_2_fu_2157_p16;
wire   [63:0] j_x_2_fu_2157_p17;
wire   [63:0] j_y_2_fu_2228_p2;
wire   [63:0] j_y_2_fu_2228_p4;
wire   [63:0] j_y_2_fu_2228_p6;
wire   [63:0] j_y_2_fu_2228_p8;
wire   [63:0] j_y_2_fu_2228_p10;
wire   [63:0] j_y_2_fu_2228_p12;
wire   [63:0] j_y_2_fu_2228_p14;
wire   [63:0] j_y_2_fu_2228_p16;
wire   [63:0] j_y_2_fu_2228_p17;
wire   [63:0] j_z_2_fu_2299_p2;
wire   [63:0] j_z_2_fu_2299_p4;
wire   [63:0] j_z_2_fu_2299_p6;
wire   [63:0] j_z_2_fu_2299_p8;
wire   [63:0] j_z_2_fu_2299_p10;
wire   [63:0] j_z_2_fu_2299_p12;
wire   [63:0] j_z_2_fu_2299_p14;
wire   [63:0] j_z_2_fu_2299_p16;
wire   [63:0] j_z_2_fu_2299_p17;
wire   [63:0] j_x_3_fu_2370_p2;
wire   [63:0] j_x_3_fu_2370_p4;
wire   [63:0] j_x_3_fu_2370_p6;
wire   [63:0] j_x_3_fu_2370_p8;
wire   [63:0] j_x_3_fu_2370_p10;
wire   [63:0] j_x_3_fu_2370_p12;
wire   [63:0] j_x_3_fu_2370_p14;
wire   [63:0] j_x_3_fu_2370_p16;
wire   [63:0] j_x_3_fu_2370_p17;
wire   [63:0] j_y_3_fu_2441_p2;
wire   [63:0] j_y_3_fu_2441_p4;
wire   [63:0] j_y_3_fu_2441_p6;
wire   [63:0] j_y_3_fu_2441_p8;
wire   [63:0] j_y_3_fu_2441_p10;
wire   [63:0] j_y_3_fu_2441_p12;
wire   [63:0] j_y_3_fu_2441_p14;
wire   [63:0] j_y_3_fu_2441_p16;
wire   [63:0] j_y_3_fu_2441_p17;
wire   [63:0] j_z_3_fu_2512_p2;
wire   [63:0] j_z_3_fu_2512_p4;
wire   [63:0] j_z_3_fu_2512_p6;
wire   [63:0] j_z_3_fu_2512_p8;
wire   [63:0] j_z_3_fu_2512_p10;
wire   [63:0] j_z_3_fu_2512_p12;
wire   [63:0] j_z_3_fu_2512_p14;
wire   [63:0] j_z_3_fu_2512_p16;
wire   [63:0] j_z_3_fu_2512_p17;
wire    ap_block_pp0_stage31;
reg   [1:0] grp_fu_1301_opcode;
wire    ap_block_pp0_stage19_00001;
wire    ap_block_pp0_stage21_00001;
wire    ap_block_pp0_stage22_00001;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage27_00001;
wire    ap_block_pp0_stage29_00001;
wire    ap_block_pp0_stage30_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage25_00001;
wire    ap_block_pp0_stage26_00001;
wire    ap_block_pp0_stage28_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage20_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
reg   [1:0] grp_fu_1305_opcode;
reg   [1:0] grp_fu_1309_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [31:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_block_pp0_stage1_subdone;
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
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] j_x_fu_1677_p1;
wire   [2:0] j_x_fu_1677_p3;
wire   [2:0] j_x_fu_1677_p5;
wire   [2:0] j_x_fu_1677_p7;
wire  signed [2:0] j_x_fu_1677_p9;
wire  signed [2:0] j_x_fu_1677_p11;
wire  signed [2:0] j_x_fu_1677_p13;
wire  signed [2:0] j_x_fu_1677_p15;
wire   [2:0] j_y_fu_1748_p1;
wire   [2:0] j_y_fu_1748_p3;
wire   [2:0] j_y_fu_1748_p5;
wire   [2:0] j_y_fu_1748_p7;
wire  signed [2:0] j_y_fu_1748_p9;
wire  signed [2:0] j_y_fu_1748_p11;
wire  signed [2:0] j_y_fu_1748_p13;
wire  signed [2:0] j_y_fu_1748_p15;
wire   [2:0] j_z_fu_1819_p1;
wire   [2:0] j_z_fu_1819_p3;
wire   [2:0] j_z_fu_1819_p5;
wire   [2:0] j_z_fu_1819_p7;
wire  signed [2:0] j_z_fu_1819_p9;
wire  signed [2:0] j_z_fu_1819_p11;
wire  signed [2:0] j_z_fu_1819_p13;
wire  signed [2:0] j_z_fu_1819_p15;
wire   [2:0] j_x_1_fu_1890_p1;
wire   [2:0] j_x_1_fu_1890_p3;
wire   [2:0] j_x_1_fu_1890_p5;
wire   [2:0] j_x_1_fu_1890_p7;
wire  signed [2:0] j_x_1_fu_1890_p9;
wire  signed [2:0] j_x_1_fu_1890_p11;
wire  signed [2:0] j_x_1_fu_1890_p13;
wire  signed [2:0] j_x_1_fu_1890_p15;
wire   [2:0] j_y_1_fu_1961_p1;
wire   [2:0] j_y_1_fu_1961_p3;
wire   [2:0] j_y_1_fu_1961_p5;
wire   [2:0] j_y_1_fu_1961_p7;
wire  signed [2:0] j_y_1_fu_1961_p9;
wire  signed [2:0] j_y_1_fu_1961_p11;
wire  signed [2:0] j_y_1_fu_1961_p13;
wire  signed [2:0] j_y_1_fu_1961_p15;
wire   [2:0] j_z_1_fu_2032_p1;
wire   [2:0] j_z_1_fu_2032_p3;
wire   [2:0] j_z_1_fu_2032_p5;
wire   [2:0] j_z_1_fu_2032_p7;
wire  signed [2:0] j_z_1_fu_2032_p9;
wire  signed [2:0] j_z_1_fu_2032_p11;
wire  signed [2:0] j_z_1_fu_2032_p13;
wire  signed [2:0] j_z_1_fu_2032_p15;
wire   [2:0] j_x_2_fu_2157_p1;
wire   [2:0] j_x_2_fu_2157_p3;
wire   [2:0] j_x_2_fu_2157_p5;
wire   [2:0] j_x_2_fu_2157_p7;
wire  signed [2:0] j_x_2_fu_2157_p9;
wire  signed [2:0] j_x_2_fu_2157_p11;
wire  signed [2:0] j_x_2_fu_2157_p13;
wire  signed [2:0] j_x_2_fu_2157_p15;
wire   [2:0] j_y_2_fu_2228_p1;
wire   [2:0] j_y_2_fu_2228_p3;
wire   [2:0] j_y_2_fu_2228_p5;
wire   [2:0] j_y_2_fu_2228_p7;
wire  signed [2:0] j_y_2_fu_2228_p9;
wire  signed [2:0] j_y_2_fu_2228_p11;
wire  signed [2:0] j_y_2_fu_2228_p13;
wire  signed [2:0] j_y_2_fu_2228_p15;
wire   [2:0] j_z_2_fu_2299_p1;
wire   [2:0] j_z_2_fu_2299_p3;
wire   [2:0] j_z_2_fu_2299_p5;
wire   [2:0] j_z_2_fu_2299_p7;
wire  signed [2:0] j_z_2_fu_2299_p9;
wire  signed [2:0] j_z_2_fu_2299_p11;
wire  signed [2:0] j_z_2_fu_2299_p13;
wire  signed [2:0] j_z_2_fu_2299_p15;
wire   [2:0] j_x_3_fu_2370_p1;
wire   [2:0] j_x_3_fu_2370_p3;
wire   [2:0] j_x_3_fu_2370_p5;
wire   [2:0] j_x_3_fu_2370_p7;
wire  signed [2:0] j_x_3_fu_2370_p9;
wire  signed [2:0] j_x_3_fu_2370_p11;
wire  signed [2:0] j_x_3_fu_2370_p13;
wire  signed [2:0] j_x_3_fu_2370_p15;
wire   [2:0] j_y_3_fu_2441_p1;
wire   [2:0] j_y_3_fu_2441_p3;
wire   [2:0] j_y_3_fu_2441_p5;
wire   [2:0] j_y_3_fu_2441_p7;
wire  signed [2:0] j_y_3_fu_2441_p9;
wire  signed [2:0] j_y_3_fu_2441_p11;
wire  signed [2:0] j_y_3_fu_2441_p13;
wire  signed [2:0] j_y_3_fu_2441_p15;
wire   [2:0] j_z_3_fu_2512_p1;
wire   [2:0] j_z_3_fu_2512_p3;
wire   [2:0] j_z_3_fu_2512_p5;
wire   [2:0] j_z_3_fu_2512_p7;
wire  signed [2:0] j_z_3_fu_2512_p9;
wire  signed [2:0] j_z_3_fu_2512_p11;
wire  signed [2:0] j_z_3_fu_2512_p13;
wire  signed [2:0] j_z_3_fu_2512_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 fx_fu_152 = 64'd0;
#0 fy_fu_156 = 64'd0;
#0 fz_fu_160 = 64'd0;
#0 j_fu_164 = 5'd0;
#0 ap_done_reg = 1'b0;
end
md_kernel_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1301_p0),.din1(grp_fu_1301_p1),.opcode(grp_fu_1301_opcode),.ce(1'b1),.dout(grp_fu_1301_p2));
md_kernel_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1305_p0),.din1(grp_fu_1305_p1),.opcode(grp_fu_1305_opcode),.ce(1'b1),.dout(grp_fu_1305_p2));
md_kernel_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1309_p0),.din1(grp_fu_1309_p1),.opcode(grp_fu_1309_opcode),.ce(1'b1),.dout(grp_fu_1309_p2));
md_kernel_dsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsub_64ns_64ns_64_8_full_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(i_x),.din1(grp_fu_1313_p1),.ce(1'b1),.dout(grp_fu_1313_p2));
md_kernel_dsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsub_64ns_64ns_64_8_full_dsp_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(i_y),.din1(grp_fu_1317_p1),.ce(1'b1),.dout(grp_fu_1317_p2));
md_kernel_dsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsub_64ns_64ns_64_8_full_dsp_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(i_z),.din1(grp_fu_1321_p1),.ce(1'b1),.dout(grp_fu_1321_p2));
md_kernel_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(reg_1402),.din1(mul33_1_reg_3521),.ce(1'b1),.dout(grp_fu_1327_p2));
md_kernel_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1331_p0),.din1(grp_fu_1331_p1),.ce(1'b1),.dout(grp_fu_1331_p2));
md_kernel_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1335_p0),.din1(grp_fu_1335_p1),.ce(1'b1),.dout(grp_fu_1335_p2));
md_kernel_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U10(.clk(ap_clk),.reset(ap_rst),.din0(64'd4607182418800017408),.din1(grp_fu_1341_p1),.ce(1'b1),.dout(grp_fu_1341_p2));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U11(.din0(j_x_fu_1677_p2),.din1(j_x_fu_1677_p4),.din2(j_x_fu_1677_p6),.din3(j_x_fu_1677_p8),.din4(j_x_fu_1677_p10),.din5(j_x_fu_1677_p12),.din6(j_x_fu_1677_p14),.din7(j_x_fu_1677_p16),.def(j_x_fu_1677_p17),.sel(trunc_ln27_reg_2699),.dout(j_x_fu_1677_p19));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U12(.din0(j_y_fu_1748_p2),.din1(j_y_fu_1748_p4),.din2(j_y_fu_1748_p6),.din3(j_y_fu_1748_p8),.din4(j_y_fu_1748_p10),.din5(j_y_fu_1748_p12),.din6(j_y_fu_1748_p14),.din7(j_y_fu_1748_p16),.def(j_y_fu_1748_p17),.sel(trunc_ln27_reg_2699),.dout(j_y_fu_1748_p19));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U13(.din0(j_z_fu_1819_p2),.din1(j_z_fu_1819_p4),.din2(j_z_fu_1819_p6),.din3(j_z_fu_1819_p8),.din4(j_z_fu_1819_p10),.din5(j_z_fu_1819_p12),.din6(j_z_fu_1819_p14),.din7(j_z_fu_1819_p16),.def(j_z_fu_1819_p17),.sel(trunc_ln27_reg_2699),.dout(j_z_fu_1819_p19));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U14(.din0(j_x_1_fu_1890_p2),.din1(j_x_1_fu_1890_p4),.din2(j_x_1_fu_1890_p6),.din3(j_x_1_fu_1890_p8),.din4(j_x_1_fu_1890_p10),.din5(j_x_1_fu_1890_p12),.din6(j_x_1_fu_1890_p14),.din7(j_x_1_fu_1890_p16),.def(j_x_1_fu_1890_p17),.sel(trunc_ln27_1_reg_2711),.dout(j_x_1_fu_1890_p19));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U15(.din0(j_y_1_fu_1961_p2),.din1(j_y_1_fu_1961_p4),.din2(j_y_1_fu_1961_p6),.din3(j_y_1_fu_1961_p8),.din4(j_y_1_fu_1961_p10),.din5(j_y_1_fu_1961_p12),.din6(j_y_1_fu_1961_p14),.din7(j_y_1_fu_1961_p16),.def(j_y_1_fu_1961_p17),.sel(trunc_ln27_1_reg_2711),.dout(j_y_1_fu_1961_p19));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U16(.din0(j_z_1_fu_2032_p2),.din1(j_z_1_fu_2032_p4),.din2(j_z_1_fu_2032_p6),.din3(j_z_1_fu_2032_p8),.din4(j_z_1_fu_2032_p10),.din5(j_z_1_fu_2032_p12),.din6(j_z_1_fu_2032_p14),.din7(j_z_1_fu_2032_p16),.def(j_z_1_fu_2032_p17),.sel(trunc_ln27_1_reg_2711),.dout(j_z_1_fu_2032_p19));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U17(.din0(j_x_2_fu_2157_p2),.din1(j_x_2_fu_2157_p4),.din2(j_x_2_fu_2157_p6),.din3(j_x_2_fu_2157_p8),.din4(j_x_2_fu_2157_p10),.din5(j_x_2_fu_2157_p12),.din6(j_x_2_fu_2157_p14),.din7(j_x_2_fu_2157_p16),.def(j_x_2_fu_2157_p17),.sel(trunc_ln27_2_reg_2723),.dout(j_x_2_fu_2157_p19));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U18(.din0(j_y_2_fu_2228_p2),.din1(j_y_2_fu_2228_p4),.din2(j_y_2_fu_2228_p6),.din3(j_y_2_fu_2228_p8),.din4(j_y_2_fu_2228_p10),.din5(j_y_2_fu_2228_p12),.din6(j_y_2_fu_2228_p14),.din7(j_y_2_fu_2228_p16),.def(j_y_2_fu_2228_p17),.sel(trunc_ln27_2_reg_2723),.dout(j_y_2_fu_2228_p19));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U19(.din0(j_z_2_fu_2299_p2),.din1(j_z_2_fu_2299_p4),.din2(j_z_2_fu_2299_p6),.din3(j_z_2_fu_2299_p8),.din4(j_z_2_fu_2299_p10),.din5(j_z_2_fu_2299_p12),.din6(j_z_2_fu_2299_p14),.din7(j_z_2_fu_2299_p16),.def(j_z_2_fu_2299_p17),.sel(trunc_ln27_2_reg_2723),.dout(j_z_2_fu_2299_p19));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U20(.din0(j_x_3_fu_2370_p2),.din1(j_x_3_fu_2370_p4),.din2(j_x_3_fu_2370_p6),.din3(j_x_3_fu_2370_p8),.din4(j_x_3_fu_2370_p10),.din5(j_x_3_fu_2370_p12),.din6(j_x_3_fu_2370_p14),.din7(j_x_3_fu_2370_p16),.def(j_x_3_fu_2370_p17),.sel(trunc_ln27_3_reg_2735),.dout(j_x_3_fu_2370_p19));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U21(.din0(j_y_3_fu_2441_p2),.din1(j_y_3_fu_2441_p4),.din2(j_y_3_fu_2441_p6),.din3(j_y_3_fu_2441_p8),.din4(j_y_3_fu_2441_p10),.din5(j_y_3_fu_2441_p12),.din6(j_y_3_fu_2441_p14),.din7(j_y_3_fu_2441_p16),.def(j_y_3_fu_2441_p17),.sel(trunc_ln27_3_reg_2735),.dout(j_y_3_fu_2441_p19));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U22(.din0(j_z_3_fu_2512_p2),.din1(j_z_3_fu_2512_p4),.din2(j_z_3_fu_2512_p6),.din3(j_z_3_fu_2512_p8),.din4(j_z_3_fu_2512_p10),.din5(j_z_3_fu_2512_p12),.din6(j_z_3_fu_2512_p14),.din7(j_z_3_fu_2512_p16),.def(j_z_3_fu_2512_p17),.sel(trunc_ln27_3_reg_2735),.dout(j_z_3_fu_2512_p19));
md_kernel_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage31),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage27_subdone) & (1'b1 == ap_CS_fsm_pp0_stage27) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage31)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage27_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage27) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage27) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage27) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage27) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        fx_fu_152 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        fx_fu_152 <= grp_fu_1305_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        fy_fu_156 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        fy_fu_156 <= grp_fu_1309_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        fz_fu_160 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        fz_fu_160 <= grp_fu_1301_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        j_fu_164 <= 5'd0;
    end else if (((tmp_reg_2655 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        j_fu_164 <= add_ln25_fu_2551_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add1_reg_3384 <= grp_fu_1301_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        add20_2_reg_3374 <= grp_fu_1301_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        add20_3_reg_3379 <= grp_fu_1301_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add22_1_reg_3389 <= grp_fu_1301_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add22_2_reg_3394 <= grp_fu_1301_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add22_3_reg_3399 <= grp_fu_1301_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delx_1_reg_3305 <= grp_fu_1313_p2;
        delx_reg_3287 <= grp_fu_1301_p2;
        dely_1_reg_3311 <= grp_fu_1317_p2;
        dely_reg_3293 <= grp_fu_1305_p2;
        delz_1_reg_3317 <= grp_fu_1321_p2;
        delz_reg_3299 <= grp_fu_1309_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delx_1_reg_3305_pp0_iter1_reg <= delx_1_reg_3305;
        delx_1_reg_3305_pp0_iter2_reg <= delx_1_reg_3305_pp0_iter1_reg;
        delx_1_reg_3305_pp0_iter3_reg <= delx_1_reg_3305_pp0_iter2_reg;
        delx_1_reg_3305_pp0_iter4_reg <= delx_1_reg_3305_pp0_iter3_reg;
        delx_reg_3287_pp0_iter1_reg <= delx_reg_3287;
        delx_reg_3287_pp0_iter2_reg <= delx_reg_3287_pp0_iter1_reg;
        delx_reg_3287_pp0_iter3_reg <= delx_reg_3287_pp0_iter2_reg;
        delx_reg_3287_pp0_iter4_reg <= delx_reg_3287_pp0_iter3_reg;
        dely_1_reg_3311_pp0_iter1_reg <= dely_1_reg_3311;
        dely_1_reg_3311_pp0_iter2_reg <= dely_1_reg_3311_pp0_iter1_reg;
        dely_1_reg_3311_pp0_iter3_reg <= dely_1_reg_3311_pp0_iter2_reg;
        dely_1_reg_3311_pp0_iter4_reg <= dely_1_reg_3311_pp0_iter3_reg;
        dely_reg_3293_pp0_iter1_reg <= dely_reg_3293;
        dely_reg_3293_pp0_iter2_reg <= dely_reg_3293_pp0_iter1_reg;
        dely_reg_3293_pp0_iter3_reg <= dely_reg_3293_pp0_iter2_reg;
        dely_reg_3293_pp0_iter4_reg <= dely_reg_3293_pp0_iter3_reg;
        delz_1_reg_3317_pp0_iter1_reg <= delz_1_reg_3317;
        delz_1_reg_3317_pp0_iter2_reg <= delz_1_reg_3317_pp0_iter1_reg;
        delz_1_reg_3317_pp0_iter3_reg <= delz_1_reg_3317_pp0_iter2_reg;
        delz_1_reg_3317_pp0_iter4_reg <= delz_1_reg_3317_pp0_iter3_reg;
        delz_reg_3299_pp0_iter1_reg <= delz_reg_3299;
        delz_reg_3299_pp0_iter2_reg <= delz_reg_3299_pp0_iter1_reg;
        delz_reg_3299_pp0_iter3_reg <= delz_reg_3299_pp0_iter2_reg;
        delz_reg_3299_pp0_iter4_reg <= delz_reg_3299_pp0_iter3_reg;
        fz_2_reg_3561 <= grp_fu_1327_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        delx_2_reg_3323 <= grp_fu_1301_p2;
        delx_3_reg_3341 <= grp_fu_1313_p2;
        dely_2_reg_3329 <= grp_fu_1305_p2;
        dely_3_reg_3347 <= grp_fu_1317_p2;
        delz_2_reg_3335 <= grp_fu_1309_p2;
        delz_3_reg_3353 <= grp_fu_1321_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        delx_2_reg_3323_pp0_iter1_reg <= delx_2_reg_3323;
        delx_2_reg_3323_pp0_iter2_reg <= delx_2_reg_3323_pp0_iter1_reg;
        delx_2_reg_3323_pp0_iter3_reg <= delx_2_reg_3323_pp0_iter2_reg;
        delx_2_reg_3323_pp0_iter4_reg <= delx_2_reg_3323_pp0_iter3_reg;
        delx_3_reg_3341_pp0_iter1_reg <= delx_3_reg_3341;
        delx_3_reg_3341_pp0_iter2_reg <= delx_3_reg_3341_pp0_iter1_reg;
        delx_3_reg_3341_pp0_iter3_reg <= delx_3_reg_3341_pp0_iter2_reg;
        delx_3_reg_3341_pp0_iter4_reg <= delx_3_reg_3341_pp0_iter3_reg;
        dely_2_reg_3329_pp0_iter1_reg <= dely_2_reg_3329;
        dely_2_reg_3329_pp0_iter2_reg <= dely_2_reg_3329_pp0_iter1_reg;
        dely_2_reg_3329_pp0_iter3_reg <= dely_2_reg_3329_pp0_iter2_reg;
        dely_2_reg_3329_pp0_iter4_reg <= dely_2_reg_3329_pp0_iter3_reg;
        dely_3_reg_3347_pp0_iter1_reg <= dely_3_reg_3347;
        dely_3_reg_3347_pp0_iter2_reg <= dely_3_reg_3347_pp0_iter1_reg;
        dely_3_reg_3347_pp0_iter3_reg <= dely_3_reg_3347_pp0_iter2_reg;
        dely_3_reg_3347_pp0_iter4_reg <= dely_3_reg_3347_pp0_iter3_reg;
        delz_2_reg_3335_pp0_iter1_reg <= delz_2_reg_3335;
        delz_2_reg_3335_pp0_iter2_reg <= delz_2_reg_3335_pp0_iter1_reg;
        delz_2_reg_3335_pp0_iter3_reg <= delz_2_reg_3335_pp0_iter2_reg;
        delz_2_reg_3335_pp0_iter4_reg <= delz_2_reg_3335_pp0_iter3_reg;
        delz_3_reg_3353_pp0_iter1_reg <= delz_3_reg_3353;
        delz_3_reg_3353_pp0_iter2_reg <= delz_3_reg_3353_pp0_iter1_reg;
        delz_3_reg_3353_pp0_iter3_reg <= delz_3_reg_3353_pp0_iter2_reg;
        delz_3_reg_3353_pp0_iter4_reg <= delz_3_reg_3353_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        force_2_reg_3489 <= grp_fu_1335_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        force_3_reg_3495 <= grp_fu_1335_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        fx_1_reg_3551 <= grp_fu_1305_p2;
        fy_1_reg_3556 <= grp_fu_1309_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_1_reg_2649 <= ap_sig_allocacmp_j_1;
        r2inv_2_reg_3417_pp0_iter4_reg <= r2inv_2_reg_3417;
        tmp_reg_2655 <= ap_sig_allocacmp_j_1[32'd4];
        tmp_reg_2655_pp0_iter1_reg <= tmp_reg_2655;
        tmp_reg_2655_pp0_iter2_reg <= tmp_reg_2655_pp0_iter1_reg;
        tmp_reg_2655_pp0_iter3_reg <= tmp_reg_2655_pp0_iter2_reg;
        tmp_reg_2655_pp0_iter4_reg <= tmp_reg_2655_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        j_x_1_reg_3002 <= j_x_1_fu_1890_p19;
        j_x_reg_2987 <= j_x_fu_1677_p19;
        j_y_1_reg_3007 <= j_y_1_fu_1961_p19;
        j_y_reg_2992 <= j_y_fu_1748_p19;
        j_z_1_reg_3012 <= j_z_1_fu_2032_p19;
        j_z_reg_2997 <= j_z_fu_1819_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        j_x_2_reg_3257 <= j_x_2_fu_2157_p19;
        j_x_3_reg_3272 <= j_x_3_fu_2370_p19;
        j_y_2_reg_3262 <= j_y_2_fu_2228_p19;
        j_y_3_reg_3277 <= j_y_3_fu_2441_p19;
        j_z_2_reg_3267 <= j_z_2_fu_2299_p19;
        j_z_3_reg_3282 <= j_z_3_fu_2512_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln27_1_reg_2706 <= {{select_ln27_fu_1503_p3[7:3]}};
        lshr_ln27_2_reg_2718 <= {{select_ln27_1_fu_1525_p3[7:3]}};
        lshr_ln27_3_reg_2730 <= {{select_ln27_2_fu_1547_p3[7:3]}};
        lshr_ln27_4_reg_2742 <= {{select_ln27_3_fu_1569_p3[7:3]}};
        trunc_ln27_1_reg_2711 <= trunc_ln27_1_fu_1533_p1;
        trunc_ln27_2_reg_2723 <= trunc_ln27_2_fu_1555_p1;
        trunc_ln27_3_reg_2735 <= trunc_ln27_3_fu_1577_p1;
        trunc_ln27_reg_2699 <= trunc_ln27_fu_1511_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        mul18_3_reg_3359 <= grp_fu_1335_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        mul19_3_reg_3364 <= grp_fu_1331_p2;
        mul21_3_reg_3369 <= grp_fu_1335_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        mul25_1_reg_3459 <= grp_fu_1335_p2;
        mul5_reg_3454 <= grp_fu_1331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        mul25_2_reg_3464 <= grp_fu_1331_p2;
        mul25_3_reg_3469 <= grp_fu_1335_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        mul29_2_reg_3526 <= grp_fu_1331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        mul29_3_reg_3536 <= grp_fu_1335_p2;
        mul33_2_reg_3531 <= grp_fu_1331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        mul31_3_reg_3541 <= grp_fu_1331_p2;
        mul33_3_reg_3546 <= grp_fu_1335_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        mul33_1_reg_3521 <= grp_fu_1335_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        mul4_reg_3511 <= grp_fu_1331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        r2inv_1_reg_3411 <= grp_fu_1341_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        r2inv_1_reg_3411_pp0_iter3_reg <= r2inv_1_reg_3411;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r2inv_2_reg_3417 <= grp_fu_1341_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        r2inv_3_reg_3424 <= grp_fu_1341_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        r2inv_3_reg_3424_pp0_iter4_reg <= r2inv_3_reg_3424;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        r2inv_reg_3404 <= grp_fu_1341_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        r2inv_reg_3404_pp0_iter3_reg <= r2inv_reg_3404;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        r6inv_1_reg_3437 <= grp_fu_1331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        r6inv_2_reg_3443 <= grp_fu_1331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        r6inv_3_reg_3449 <= grp_fu_1331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        r6inv_reg_3431 <= grp_fu_1331_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        reg_1346 <= grp_fu_1331_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        reg_1353 <= grp_fu_1335_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        reg_1360 <= grp_fu_1331_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        reg_1366 <= grp_fu_1335_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1372 <= grp_fu_1331_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        reg_1378 <= grp_fu_1335_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_1384 <= grp_fu_1331_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        reg_1390 <= grp_fu_1335_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_1396 <= grp_fu_1331_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        reg_1402 <= grp_fu_1301_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        reg_1409 <= grp_fu_1301_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        reg_1414 <= grp_fu_1305_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_1421 <= grp_fu_1335_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)))) begin
        reg_1428 <= grp_fu_1331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sub26_2_reg_3479 <= grp_fu_1301_p2;
        sub26_3_reg_3484 <= grp_fu_1305_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub_reg_3474 <= grp_fu_1301_p2;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        NL_0_ce0_local = 1'b1;
    end else begin
        NL_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        NL_1_ce0_local = 1'b1;
    end else begin
        NL_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        NL_2_ce0_local = 1'b1;
    end else begin
        NL_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        NL_3_ce0_local = 1'b1;
    end else begin
        NL_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        NL_4_ce0_local = 1'b1;
    end else begin
        NL_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        NL_5_ce0_local = 1'b1;
    end else begin
        NL_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        NL_6_ce0_local = 1'b1;
    end else begin
        NL_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        NL_7_ce0_local = 1'b1;
    end else begin
        NL_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2655 == 1'd1) & (1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_condition_exit_pp0_iter0_stage31 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage31 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage27_subdone) & (tmp_reg_2655_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        ap_condition_exit_pp0_iter4_stage27 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage27 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage27_subdone) & (1'b1 == ap_CS_fsm_pp0_stage27) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_1 = 5'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_164;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (tmp_reg_2655_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage27) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
        fx_out_ap_vld = 1'b1;
    end else begin
        fx_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (tmp_reg_2655_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage27) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
        fy_out_ap_vld = 1'b1;
    end else begin
        fy_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (tmp_reg_2655_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage27) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
        fz_out_ap_vld = 1'b1;
    end else begin
        fz_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_2655 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_2655 == 1'd0) & (1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_1301_opcode = 2'd1;
end else if ((((1'b0 == ap_block_pp0_stage20_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage12_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage28_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage26_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage25_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2655 == 1'd0) & (1'b0 == ap_block_pp0_stage30_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((tmp_reg_2655== 1'd0) & (1'b0 == ap_block_pp0_stage29_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_2655 == 1'd0) & (1'b0 == ap_block_pp0_stage27_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((tmp_reg_2655 == 1'd0) & (1'b0 == ap_block_pp0_stage24_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((tmp_reg_2655 == 1'd0) & (1'b0 == ap_block_pp0_stage22_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((tmp_reg_2655 == 1'd0) & (1'b0 == ap_block_pp0_stage21_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((tmp_reg_2655 == 1'd0) & (1'b0 == ap_block_pp0_stage19_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_1301_opcode = 2'd0;
    end else begin
        grp_fu_1301_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1301_p0 = fz_2_reg_3561;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1301_p0 = fx_1_reg_3551;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_1301_p0 = fz_fu_160;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_1301_p0 = mul25_2_reg_3464;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_1301_p0 = mul5_reg_3454;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1301_p0 = add20_3_reg_3379;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_1301_p0 = add20_2_reg_3374;
    end else if ((((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)))) begin
        grp_fu_1301_p0 = reg_1409;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_1301_p0 = reg_1402;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_1301_p0 = mul18_3_reg_3359;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1301_p0 = reg_1384;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1301_p0 = reg_1366;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1301_p0 = reg_1346;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_1301_p0 = i_x;
    end else begin
        grp_fu_1301_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1301_p1 = mul33_3_reg_3546;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1301_p1 = mul33_2_reg_3531;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1301_p1 = mul29_2_reg_3526;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1301_p1 = reg_1421;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_1301_p1 = mul4_reg_3511;
    end else if ((((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)))) begin
        grp_fu_1301_p1 = 64'd13835058055282163712;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1301_p1 = mul21_3_reg_3369;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_1301_p1 = reg_1396;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        grp_fu_1301_p1 = reg_1378;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_1301_p1 = reg_1360;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_1301_p1 = mul19_3_reg_3364;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1301_p1 = reg_1390;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1301_p1 = reg_1372;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1301_p1 = reg_1353;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1301_p1 = j_x_2_reg_3257;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1301_p1 = j_x_reg_2987;
    end else begin
        grp_fu_1301_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2655 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_2655 == 1'd0) & (1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_1305_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage26_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage25_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage27_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_1305_opcode = 2'd0;
    end else begin
        grp_fu_1305_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1305_p0 = reg_1402;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1305_p0 = reg_1414;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1305_p0 = fy_1_reg_3556;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_1305_p0 = fx_fu_152;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_1305_p0 = mul25_3_reg_3469;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_1305_p0 = mul25_1_reg_3459;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_1305_p0 = i_y;
    end else begin
        grp_fu_1305_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1305_p1 = mul29_3_reg_3536;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1305_p1 = reg_1390;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1305_p1 = reg_1428;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_1305_p1 = reg_1346;
    end else if ((((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)))) begin
        grp_fu_1305_p1 = 64'd13835058055282163712;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1305_p1 = j_y_2_reg_3262;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1305_p1 = j_y_reg_2992;
    end else begin
        grp_fu_1305_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2655 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_2655 == 1'd0) & (1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_1309_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage27_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_1309_opcode = 2'd0;
    end else begin
        grp_fu_1309_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1309_p0 = reg_1414;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_1309_p0 = fy_fu_156;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_1309_p0 = i_z;
    end else begin
        grp_fu_1309_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1309_p1 = mul31_3_reg_3541;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_1309_p1 = reg_1353;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1309_p1 = j_z_2_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1309_p1 = j_z_reg_2997;
    end else begin
        grp_fu_1309_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1313_p1 = j_x_3_reg_3272;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1313_p1 = j_x_1_reg_3002;
        end else begin
            grp_fu_1313_p1 = 'bx;
        end
    end else begin
        grp_fu_1313_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1317_p1 = j_y_3_reg_3277;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1317_p1 = j_y_1_reg_3007;
        end else begin
            grp_fu_1317_p1 = 'bx;
        end
    end else begin
        grp_fu_1317_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1321_p1 = j_z_3_reg_3282;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1321_p1 = j_z_1_reg_3012;
        end else begin
            grp_fu_1321_p1 = 'bx;
        end
    end else begin
        grp_fu_1321_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_1331_p0 = dely_3_reg_3347_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_1331_p0 = delz_2_reg_3335_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1331_p0 = delx_2_reg_3323_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1331_p0 = dely_1_reg_3311_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1331_p0 = delz_reg_3299_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1331_p0 = delx_reg_3287_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1331_p0 = r2inv_1_reg_3411_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1331_p0 = r6inv_1_reg_3437;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1331_p0 = r6inv_2_reg_3443;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1331_p0 = r6inv_reg_3431;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1331_p0 = reg_1384;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1331_p0 = reg_1372;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1331_p0 = reg_1360;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1331_p0 = reg_1346;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1331_p0 = r2inv_3_reg_3424;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1331_p0 = r2inv_2_reg_3417;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1331_p0 = r2inv_1_reg_3411;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_1331_p0 = r2inv_reg_3404;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1331_p0 = dely_3_reg_3347;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1331_p0 = delz_2_reg_3335;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1331_p0 = delx_2_reg_3323;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1331_p0 = dely_1_reg_3311;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1331_p0 = delz_reg_3299;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1331_p0 = delx_reg_3287;
    end else begin
        grp_fu_1331_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_1331_p1 = force_3_reg_3495;
    end else if ((((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_1331_p1 = force_2_reg_3489;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1331_p1 = reg_1428;
    end else if ((((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        grp_fu_1331_p1 = reg_1421;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1331_p1 = reg_1396;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1331_p1 = reg_1414;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_1331_p1 = 64'd4609434218613702656;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1331_p1 = r2inv_3_reg_3424;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1331_p1 = r2inv_2_reg_3417;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1331_p1 = r2inv_1_reg_3411;
    end else if ((((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_1331_p1 = r2inv_reg_3404;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1331_p1 = dely_3_reg_3347;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1331_p1 = delz_2_reg_3335;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1331_p1 = delx_2_reg_3323;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1331_p1 = dely_1_reg_3311;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1331_p1 = delz_reg_3299;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1331_p1 = delx_reg_3287;
    end else begin
        grp_fu_1331_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_1335_p0 = delz_3_reg_3353_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_1335_p0 = delx_3_reg_3341_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1335_p0 = dely_2_reg_3329_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1335_p0 = delz_1_reg_3317_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1335_p0 = delx_1_reg_3305_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1335_p0 = dely_reg_3293_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1335_p0 = r2inv_3_reg_3424_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1335_p0 = r2inv_2_reg_3417_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1335_p0 = r2inv_reg_3404_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1335_p0 = r6inv_2_reg_3443;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1335_p0 = r6inv_reg_3431;
    end else if ((((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1335_p0 = r6inv_3_reg_3449;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1335_p0 = r6inv_1_reg_3437;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1335_p0 = delz_3_reg_3353;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1335_p0 = delx_3_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1335_p0 = dely_2_reg_3329;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1335_p0 = delz_1_reg_3317;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1335_p0 = delx_1_reg_3305;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1335_p0 = dely_reg_3293;
    end else begin
        grp_fu_1335_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_1335_p1 = force_3_reg_3495;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1335_p1 = force_2_reg_3489;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        grp_fu_1335_p1 = reg_1428;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1335_p1 = reg_1421;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1335_p1 = reg_1378;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1335_p1 = reg_1366;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1335_p1 = reg_1353;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1335_p1 = sub26_3_reg_3484;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1335_p1 = sub26_2_reg_3479;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1335_p1 = sub_reg_3474;
    end else if ((((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_1335_p1 = 64'd4609434218613702656;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1335_p1 = delz_3_reg_3353;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1335_p1 = delx_3_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1335_p1 = dely_2_reg_3329;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1335_p1 = delz_1_reg_3317;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1335_p1 = delx_1_reg_3305;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1335_p1 = dely_reg_3293;
    end else begin
        grp_fu_1335_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_1341_p1 = add22_3_reg_3399;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1341_p1 = add22_2_reg_3394;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1341_p1 = add22_1_reg_3389;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1341_p1 = add1_reg_3384;
        end else begin
            grp_fu_1341_p1 = 'bx;
        end
    end else begin
        grp_fu_1341_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_x_0_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_0_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_x_0_address0_local = 'bx;
        end
    end else begin
        position_x_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_x_0_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_0_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_x_0_address1_local = 'bx;
        end
    end else begin
        position_x_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_x_0_ce0_local = 1'b1;
    end else begin
        position_x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_x_0_ce1_local = 1'b1;
    end else begin
        position_x_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_x_1_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_1_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_x_1_address0_local = 'bx;
        end
    end else begin
        position_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_x_1_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_1_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_x_1_address1_local = 'bx;
        end
    end else begin
        position_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_x_1_ce0_local = 1'b1;
    end else begin
        position_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_x_1_ce1_local = 1'b1;
    end else begin
        position_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_x_2_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_2_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_x_2_address0_local = 'bx;
        end
    end else begin
        position_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_x_2_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_2_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_x_2_address1_local = 'bx;
        end
    end else begin
        position_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_x_2_ce0_local = 1'b1;
    end else begin
        position_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_x_2_ce1_local = 1'b1;
    end else begin
        position_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_x_3_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_3_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_x_3_address0_local = 'bx;
        end
    end else begin
        position_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_x_3_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_3_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_x_3_address1_local = 'bx;
        end
    end else begin
        position_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_x_3_ce0_local = 1'b1;
    end else begin
        position_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_x_3_ce1_local = 1'b1;
    end else begin
        position_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_x_4_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_4_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_x_4_address0_local = 'bx;
        end
    end else begin
        position_x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_x_4_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_4_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_x_4_address1_local = 'bx;
        end
    end else begin
        position_x_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_x_4_ce0_local = 1'b1;
    end else begin
        position_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_x_4_ce1_local = 1'b1;
    end else begin
        position_x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_x_5_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_5_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_x_5_address0_local = 'bx;
        end
    end else begin
        position_x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_x_5_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_5_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_x_5_address1_local = 'bx;
        end
    end else begin
        position_x_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_x_5_ce0_local = 1'b1;
    end else begin
        position_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_x_5_ce1_local = 1'b1;
    end else begin
        position_x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_x_6_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_6_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_x_6_address0_local = 'bx;
        end
    end else begin
        position_x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_x_6_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_6_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_x_6_address1_local = 'bx;
        end
    end else begin
        position_x_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_x_6_ce0_local = 1'b1;
    end else begin
        position_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_x_6_ce1_local = 1'b1;
    end else begin
        position_x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_x_7_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_7_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_x_7_address0_local = 'bx;
        end
    end else begin
        position_x_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_x_7_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_7_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_x_7_address1_local = 'bx;
        end
    end else begin
        position_x_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_x_7_ce0_local = 1'b1;
    end else begin
        position_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_x_7_ce1_local = 1'b1;
    end else begin
        position_x_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_y_0_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_0_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_y_0_address0_local = 'bx;
        end
    end else begin
        position_y_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_y_0_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_0_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_y_0_address1_local = 'bx;
        end
    end else begin
        position_y_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_y_0_ce0_local = 1'b1;
    end else begin
        position_y_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_y_0_ce1_local = 1'b1;
    end else begin
        position_y_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_y_1_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_1_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_y_1_address0_local = 'bx;
        end
    end else begin
        position_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_y_1_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_1_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_y_1_address1_local = 'bx;
        end
    end else begin
        position_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_y_1_ce0_local = 1'b1;
    end else begin
        position_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_y_1_ce1_local = 1'b1;
    end else begin
        position_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_y_2_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_2_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_y_2_address0_local = 'bx;
        end
    end else begin
        position_y_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_y_2_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_2_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_y_2_address1_local = 'bx;
        end
    end else begin
        position_y_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_y_2_ce0_local = 1'b1;
    end else begin
        position_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_y_2_ce1_local = 1'b1;
    end else begin
        position_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_y_3_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_3_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_y_3_address0_local = 'bx;
        end
    end else begin
        position_y_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_y_3_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_3_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_y_3_address1_local = 'bx;
        end
    end else begin
        position_y_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_y_3_ce0_local = 1'b1;
    end else begin
        position_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_y_3_ce1_local = 1'b1;
    end else begin
        position_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_y_4_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_4_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_y_4_address0_local = 'bx;
        end
    end else begin
        position_y_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_y_4_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_4_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_y_4_address1_local = 'bx;
        end
    end else begin
        position_y_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_y_4_ce0_local = 1'b1;
    end else begin
        position_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_y_4_ce1_local = 1'b1;
    end else begin
        position_y_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_y_5_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_5_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_y_5_address0_local = 'bx;
        end
    end else begin
        position_y_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_y_5_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_5_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_y_5_address1_local = 'bx;
        end
    end else begin
        position_y_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_y_5_ce0_local = 1'b1;
    end else begin
        position_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_y_5_ce1_local = 1'b1;
    end else begin
        position_y_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_y_6_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_6_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_y_6_address0_local = 'bx;
        end
    end else begin
        position_y_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_y_6_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_6_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_y_6_address1_local = 'bx;
        end
    end else begin
        position_y_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_y_6_ce0_local = 1'b1;
    end else begin
        position_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_y_6_ce1_local = 1'b1;
    end else begin
        position_y_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_y_7_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_7_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_y_7_address0_local = 'bx;
        end
    end else begin
        position_y_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_y_7_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_7_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_y_7_address1_local = 'bx;
        end
    end else begin
        position_y_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_y_7_ce0_local = 1'b1;
    end else begin
        position_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_y_7_ce1_local = 1'b1;
    end else begin
        position_y_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_z_0_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_0_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_z_0_address0_local = 'bx;
        end
    end else begin
        position_z_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_z_0_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_0_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_z_0_address1_local = 'bx;
        end
    end else begin
        position_z_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_z_0_ce0_local = 1'b1;
    end else begin
        position_z_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_z_0_ce1_local = 1'b1;
    end else begin
        position_z_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_z_1_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_1_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_z_1_address0_local = 'bx;
        end
    end else begin
        position_z_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_z_1_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_1_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_z_1_address1_local = 'bx;
        end
    end else begin
        position_z_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_z_1_ce0_local = 1'b1;
    end else begin
        position_z_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_z_1_ce1_local = 1'b1;
    end else begin
        position_z_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_z_2_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_2_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_z_2_address0_local = 'bx;
        end
    end else begin
        position_z_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_z_2_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_2_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_z_2_address1_local = 'bx;
        end
    end else begin
        position_z_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_z_2_ce0_local = 1'b1;
    end else begin
        position_z_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_z_2_ce1_local = 1'b1;
    end else begin
        position_z_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_z_3_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_3_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_z_3_address0_local = 'bx;
        end
    end else begin
        position_z_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_z_3_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_3_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_z_3_address1_local = 'bx;
        end
    end else begin
        position_z_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_z_3_ce0_local = 1'b1;
    end else begin
        position_z_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_z_3_ce1_local = 1'b1;
    end else begin
        position_z_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_z_4_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_4_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_z_4_address0_local = 'bx;
        end
    end else begin
        position_z_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_z_4_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_4_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_z_4_address1_local = 'bx;
        end
    end else begin
        position_z_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_z_4_ce0_local = 1'b1;
    end else begin
        position_z_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_z_4_ce1_local = 1'b1;
    end else begin
        position_z_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_z_5_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_5_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_z_5_address0_local = 'bx;
        end
    end else begin
        position_z_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_z_5_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_5_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_z_5_address1_local = 'bx;
        end
    end else begin
        position_z_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_z_5_ce0_local = 1'b1;
    end else begin
        position_z_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_z_5_ce1_local = 1'b1;
    end else begin
        position_z_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_z_6_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_6_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_z_6_address0_local = 'bx;
        end
    end else begin
        position_z_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_z_6_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_6_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_z_6_address1_local = 'bx;
        end
    end else begin
        position_z_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_z_6_ce0_local = 1'b1;
    end else begin
        position_z_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_z_6_ce1_local = 1'b1;
    end else begin
        position_z_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_z_7_address0_local = zext_ln27_3_fu_2098_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_7_address0_local = zext_ln27_1_fu_1618_p1;
        end else begin
            position_z_7_address0_local = 'bx;
        end
    end else begin
        position_z_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            position_z_7_address1_local = zext_ln27_2_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_7_address1_local = zext_ln27_fu_1591_p1;
        end else begin
            position_z_7_address1_local = 'bx;
        end
    end else begin
        position_z_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_z_7_ce0_local = 1'b1;
    end else begin
        position_z_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        position_z_7_ce1_local = 1'b1;
    end else begin
        position_z_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter4_stage27) & (ap_idle_pp0_0to3 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign NL_0_address0 = zext_ln27_4_fu_1482_p1;
assign NL_0_ce0 = NL_0_ce0_local;
assign NL_1_address0 = zext_ln27_4_fu_1482_p1;
assign NL_1_ce0 = NL_1_ce0_local;
assign NL_2_address0 = zext_ln27_4_fu_1482_p1;
assign NL_2_ce0 = NL_2_ce0_local;
assign NL_3_address0 = zext_ln27_4_fu_1482_p1;
assign NL_3_ce0 = NL_3_ce0_local;
assign NL_4_address0 = zext_ln27_4_fu_1482_p1;
assign NL_4_ce0 = NL_4_ce0_local;
assign NL_5_address0 = zext_ln27_4_fu_1482_p1;
assign NL_5_ce0 = NL_5_ce0_local;
assign NL_6_address0 = zext_ln27_4_fu_1482_p1;
assign NL_6_ce0 = NL_6_ce0_local;
assign NL_7_address0 = zext_ln27_4_fu_1482_p1;
assign NL_7_ce0 = NL_7_ce0_local;
assign add_ln25_fu_2551_p2 = (j_1_reg_2649 + 5'd4);
assign add_ln_fu_1474_p3 = {{i}, {tmp_1_fu_1466_p3}};
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
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage29 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage30 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage31;
assign ap_ready = ap_ready_sig;
assign fx_out = fx_fu_152;
assign fy_out = fy_fu_156;
assign fz_out = fz_fu_160;
assign icmp_ln27_fu_1497_p2 = ((trunc_ln25_fu_1494_p1 != 3'd0) ? 1'b1 : 1'b0);
assign j_x_1_fu_1890_p10 = position_x_4_q0;
assign j_x_1_fu_1890_p12 = position_x_5_q0;
assign j_x_1_fu_1890_p14 = position_x_6_q0;
assign j_x_1_fu_1890_p16 = position_x_7_q0;
assign j_x_1_fu_1890_p17 = 'bx;
assign j_x_1_fu_1890_p2 = position_x_0_q0;
assign j_x_1_fu_1890_p4 = position_x_1_q0;
assign j_x_1_fu_1890_p6 = position_x_2_q0;
assign j_x_1_fu_1890_p8 = position_x_3_q0;
assign j_x_2_fu_2157_p10 = position_x_4_q1;
assign j_x_2_fu_2157_p12 = position_x_5_q1;
assign j_x_2_fu_2157_p14 = position_x_6_q1;
assign j_x_2_fu_2157_p16 = position_x_7_q1;
assign j_x_2_fu_2157_p17 = 'bx;
assign j_x_2_fu_2157_p2 = position_x_0_q1;
assign j_x_2_fu_2157_p4 = position_x_1_q1;
assign j_x_2_fu_2157_p6 = position_x_2_q1;
assign j_x_2_fu_2157_p8 = position_x_3_q1;
assign j_x_3_fu_2370_p10 = position_x_4_q0;
assign j_x_3_fu_2370_p12 = position_x_5_q0;
assign j_x_3_fu_2370_p14 = position_x_6_q0;
assign j_x_3_fu_2370_p16 = position_x_7_q0;
assign j_x_3_fu_2370_p17 = 'bx;
assign j_x_3_fu_2370_p2 = position_x_0_q0;
assign j_x_3_fu_2370_p4 = position_x_1_q0;
assign j_x_3_fu_2370_p6 = position_x_2_q0;
assign j_x_3_fu_2370_p8 = position_x_3_q0;
assign j_x_fu_1677_p10 = position_x_4_q1;
assign j_x_fu_1677_p12 = position_x_5_q1;
assign j_x_fu_1677_p14 = position_x_6_q1;
assign j_x_fu_1677_p16 = position_x_7_q1;
assign j_x_fu_1677_p17 = 'bx;
assign j_x_fu_1677_p2 = position_x_0_q1;
assign j_x_fu_1677_p4 = position_x_1_q1;
assign j_x_fu_1677_p6 = position_x_2_q1;
assign j_x_fu_1677_p8 = position_x_3_q1;
assign j_y_1_fu_1961_p10 = position_y_4_q0;
assign j_y_1_fu_1961_p12 = position_y_5_q0;
assign j_y_1_fu_1961_p14 = position_y_6_q0;
assign j_y_1_fu_1961_p16 = position_y_7_q0;
assign j_y_1_fu_1961_p17 = 'bx;
assign j_y_1_fu_1961_p2 = position_y_0_q0;
assign j_y_1_fu_1961_p4 = position_y_1_q0;
assign j_y_1_fu_1961_p6 = position_y_2_q0;
assign j_y_1_fu_1961_p8 = position_y_3_q0;
assign j_y_2_fu_2228_p10 = position_y_4_q1;
assign j_y_2_fu_2228_p12 = position_y_5_q1;
assign j_y_2_fu_2228_p14 = position_y_6_q1;
assign j_y_2_fu_2228_p16 = position_y_7_q1;
assign j_y_2_fu_2228_p17 = 'bx;
assign j_y_2_fu_2228_p2 = position_y_0_q1;
assign j_y_2_fu_2228_p4 = position_y_1_q1;
assign j_y_2_fu_2228_p6 = position_y_2_q1;
assign j_y_2_fu_2228_p8 = position_y_3_q1;
assign j_y_3_fu_2441_p10 = position_y_4_q0;
assign j_y_3_fu_2441_p12 = position_y_5_q0;
assign j_y_3_fu_2441_p14 = position_y_6_q0;
assign j_y_3_fu_2441_p16 = position_y_7_q0;
assign j_y_3_fu_2441_p17 = 'bx;
assign j_y_3_fu_2441_p2 = position_y_0_q0;
assign j_y_3_fu_2441_p4 = position_y_1_q0;
assign j_y_3_fu_2441_p6 = position_y_2_q0;
assign j_y_3_fu_2441_p8 = position_y_3_q0;
assign j_y_fu_1748_p10 = position_y_4_q1;
assign j_y_fu_1748_p12 = position_y_5_q1;
assign j_y_fu_1748_p14 = position_y_6_q1;
assign j_y_fu_1748_p16 = position_y_7_q1;
assign j_y_fu_1748_p17 = 'bx;
assign j_y_fu_1748_p2 = position_y_0_q1;
assign j_y_fu_1748_p4 = position_y_1_q1;
assign j_y_fu_1748_p6 = position_y_2_q1;
assign j_y_fu_1748_p8 = position_y_3_q1;
assign j_z_1_fu_2032_p10 = position_z_4_q0;
assign j_z_1_fu_2032_p12 = position_z_5_q0;
assign j_z_1_fu_2032_p14 = position_z_6_q0;
assign j_z_1_fu_2032_p16 = position_z_7_q0;
assign j_z_1_fu_2032_p17 = 'bx;
assign j_z_1_fu_2032_p2 = position_z_0_q0;
assign j_z_1_fu_2032_p4 = position_z_1_q0;
assign j_z_1_fu_2032_p6 = position_z_2_q0;
assign j_z_1_fu_2032_p8 = position_z_3_q0;
assign j_z_2_fu_2299_p10 = position_z_4_q1;
assign j_z_2_fu_2299_p12 = position_z_5_q1;
assign j_z_2_fu_2299_p14 = position_z_6_q1;
assign j_z_2_fu_2299_p16 = position_z_7_q1;
assign j_z_2_fu_2299_p17 = 'bx;
assign j_z_2_fu_2299_p2 = position_z_0_q1;
assign j_z_2_fu_2299_p4 = position_z_1_q1;
assign j_z_2_fu_2299_p6 = position_z_2_q1;
assign j_z_2_fu_2299_p8 = position_z_3_q1;
assign j_z_3_fu_2512_p10 = position_z_4_q0;
assign j_z_3_fu_2512_p12 = position_z_5_q0;
assign j_z_3_fu_2512_p14 = position_z_6_q0;
assign j_z_3_fu_2512_p16 = position_z_7_q0;
assign j_z_3_fu_2512_p17 = 'bx;
assign j_z_3_fu_2512_p2 = position_z_0_q0;
assign j_z_3_fu_2512_p4 = position_z_1_q0;
assign j_z_3_fu_2512_p6 = position_z_2_q0;
assign j_z_3_fu_2512_p8 = position_z_3_q0;
assign j_z_fu_1819_p10 = position_z_4_q1;
assign j_z_fu_1819_p12 = position_z_5_q1;
assign j_z_fu_1819_p14 = position_z_6_q1;
assign j_z_fu_1819_p16 = position_z_7_q1;
assign j_z_fu_1819_p17 = 'bx;
assign j_z_fu_1819_p2 = position_z_0_q1;
assign j_z_fu_1819_p4 = position_z_1_q1;
assign j_z_fu_1819_p6 = position_z_2_q1;
assign j_z_fu_1819_p8 = position_z_3_q1;
assign position_x_0_address0 = position_x_0_address0_local;
assign position_x_0_address1 = position_x_0_address1_local;
assign position_x_0_ce0 = position_x_0_ce0_local;
assign position_x_0_ce1 = position_x_0_ce1_local;
assign position_x_1_address0 = position_x_1_address0_local;
assign position_x_1_address1 = position_x_1_address1_local;
assign position_x_1_ce0 = position_x_1_ce0_local;
assign position_x_1_ce1 = position_x_1_ce1_local;
assign position_x_2_address0 = position_x_2_address0_local;
assign position_x_2_address1 = position_x_2_address1_local;
assign position_x_2_ce0 = position_x_2_ce0_local;
assign position_x_2_ce1 = position_x_2_ce1_local;
assign position_x_3_address0 = position_x_3_address0_local;
assign position_x_3_address1 = position_x_3_address1_local;
assign position_x_3_ce0 = position_x_3_ce0_local;
assign position_x_3_ce1 = position_x_3_ce1_local;
assign position_x_4_address0 = position_x_4_address0_local;
assign position_x_4_address1 = position_x_4_address1_local;
assign position_x_4_ce0 = position_x_4_ce0_local;
assign position_x_4_ce1 = position_x_4_ce1_local;
assign position_x_5_address0 = position_x_5_address0_local;
assign position_x_5_address1 = position_x_5_address1_local;
assign position_x_5_ce0 = position_x_5_ce0_local;
assign position_x_5_ce1 = position_x_5_ce1_local;
assign position_x_6_address0 = position_x_6_address0_local;
assign position_x_6_address1 = position_x_6_address1_local;
assign position_x_6_ce0 = position_x_6_ce0_local;
assign position_x_6_ce1 = position_x_6_ce1_local;
assign position_x_7_address0 = position_x_7_address0_local;
assign position_x_7_address1 = position_x_7_address1_local;
assign position_x_7_ce0 = position_x_7_ce0_local;
assign position_x_7_ce1 = position_x_7_ce1_local;
assign position_y_0_address0 = position_y_0_address0_local;
assign position_y_0_address1 = position_y_0_address1_local;
assign position_y_0_ce0 = position_y_0_ce0_local;
assign position_y_0_ce1 = position_y_0_ce1_local;
assign position_y_1_address0 = position_y_1_address0_local;
assign position_y_1_address1 = position_y_1_address1_local;
assign position_y_1_ce0 = position_y_1_ce0_local;
assign position_y_1_ce1 = position_y_1_ce1_local;
assign position_y_2_address0 = position_y_2_address0_local;
assign position_y_2_address1 = position_y_2_address1_local;
assign position_y_2_ce0 = position_y_2_ce0_local;
assign position_y_2_ce1 = position_y_2_ce1_local;
assign position_y_3_address0 = position_y_3_address0_local;
assign position_y_3_address1 = position_y_3_address1_local;
assign position_y_3_ce0 = position_y_3_ce0_local;
assign position_y_3_ce1 = position_y_3_ce1_local;
assign position_y_4_address0 = position_y_4_address0_local;
assign position_y_4_address1 = position_y_4_address1_local;
assign position_y_4_ce0 = position_y_4_ce0_local;
assign position_y_4_ce1 = position_y_4_ce1_local;
assign position_y_5_address0 = position_y_5_address0_local;
assign position_y_5_address1 = position_y_5_address1_local;
assign position_y_5_ce0 = position_y_5_ce0_local;
assign position_y_5_ce1 = position_y_5_ce1_local;
assign position_y_6_address0 = position_y_6_address0_local;
assign position_y_6_address1 = position_y_6_address1_local;
assign position_y_6_ce0 = position_y_6_ce0_local;
assign position_y_6_ce1 = position_y_6_ce1_local;
assign position_y_7_address0 = position_y_7_address0_local;
assign position_y_7_address1 = position_y_7_address1_local;
assign position_y_7_ce0 = position_y_7_ce0_local;
assign position_y_7_ce1 = position_y_7_ce1_local;
assign position_z_0_address0 = position_z_0_address0_local;
assign position_z_0_address1 = position_z_0_address1_local;
assign position_z_0_ce0 = position_z_0_ce0_local;
assign position_z_0_ce1 = position_z_0_ce1_local;
assign position_z_1_address0 = position_z_1_address0_local;
assign position_z_1_address1 = position_z_1_address1_local;
assign position_z_1_ce0 = position_z_1_ce0_local;
assign position_z_1_ce1 = position_z_1_ce1_local;
assign position_z_2_address0 = position_z_2_address0_local;
assign position_z_2_address1 = position_z_2_address1_local;
assign position_z_2_ce0 = position_z_2_ce0_local;
assign position_z_2_ce1 = position_z_2_ce1_local;
assign position_z_3_address0 = position_z_3_address0_local;
assign position_z_3_address1 = position_z_3_address1_local;
assign position_z_3_ce0 = position_z_3_ce0_local;
assign position_z_3_ce1 = position_z_3_ce1_local;
assign position_z_4_address0 = position_z_4_address0_local;
assign position_z_4_address1 = position_z_4_address1_local;
assign position_z_4_ce0 = position_z_4_ce0_local;
assign position_z_4_ce1 = position_z_4_ce1_local;
assign position_z_5_address0 = position_z_5_address0_local;
assign position_z_5_address1 = position_z_5_address1_local;
assign position_z_5_ce0 = position_z_5_ce0_local;
assign position_z_5_ce1 = position_z_5_ce1_local;
assign position_z_6_address0 = position_z_6_address0_local;
assign position_z_6_address1 = position_z_6_address1_local;
assign position_z_6_ce0 = position_z_6_ce0_local;
assign position_z_6_ce1 = position_z_6_ce1_local;
assign position_z_7_address0 = position_z_7_address0_local;
assign position_z_7_address1 = position_z_7_address1_local;
assign position_z_7_ce0 = position_z_7_ce0_local;
assign position_z_7_ce1 = position_z_7_ce1_local;
assign select_ln27_1_fu_1525_p3 = ((icmp_ln27_fu_1497_p2[0:0] == 1'b1) ? NL_5_q0 : NL_1_q0);
assign select_ln27_2_fu_1547_p3 = ((icmp_ln27_fu_1497_p2[0:0] == 1'b1) ? NL_6_q0 : NL_2_q0);
assign select_ln27_3_fu_1569_p3 = ((icmp_ln27_fu_1497_p2[0:0] == 1'b1) ? NL_7_q0 : NL_3_q0);
assign select_ln27_fu_1503_p3 = ((icmp_ln27_fu_1497_p2[0:0] == 1'b1) ? NL_4_q0 : NL_0_q0);
assign tmp_1_fu_1466_p3 = ap_sig_allocacmp_j_1[32'd3];
assign trunc_ln25_fu_1494_p1 = j_1_reg_2649[2:0];
assign trunc_ln27_1_fu_1533_p1 = select_ln27_1_fu_1525_p3[2:0];
assign trunc_ln27_2_fu_1555_p1 = select_ln27_2_fu_1547_p3[2:0];
assign trunc_ln27_3_fu_1577_p1 = select_ln27_3_fu_1569_p3[2:0];
assign trunc_ln27_fu_1511_p1 = select_ln27_fu_1503_p3[2:0];
assign zext_ln27_1_fu_1618_p1 = lshr_ln27_2_reg_2718;
assign zext_ln27_2_fu_2071_p1 = lshr_ln27_3_reg_2730;
assign zext_ln27_3_fu_2098_p1 = lshr_ln27_4_reg_2742;
assign zext_ln27_4_fu_1482_p1 = add_ln_fu_1474_p3;
assign zext_ln27_fu_1591_p1 = lshr_ln27_1_reg_2706;
endmodule 
