
module md_kernel_md_kernel_Pipeline_loop_j (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,i,NL_0_address0,NL_0_ce0,NL_0_q0,NL_2_address0,NL_2_ce0,NL_2_q0,position_x_0_address0,position_x_0_ce0,position_x_0_q0,position_x_0_address1,position_x_0_ce1,position_x_0_q1,position_x_1_address0,position_x_1_ce0,position_x_1_q0,position_x_1_address1,position_x_1_ce1,position_x_1_q1,position_x_2_address0,position_x_2_ce0,position_x_2_q0,position_x_2_address1,position_x_2_ce1,position_x_2_q1,position_x_3_address0,position_x_3_ce0,position_x_3_q0,position_x_3_address1,position_x_3_ce1,position_x_3_q1,position_y_0_address0,position_y_0_ce0,position_y_0_q0,position_y_0_address1,position_y_0_ce1,position_y_0_q1,position_y_1_address0,position_y_1_ce0,position_y_1_q0,position_y_1_address1,position_y_1_ce1,position_y_1_q1,position_y_2_address0,position_y_2_ce0,position_y_2_q0,position_y_2_address1,position_y_2_ce1,position_y_2_q1,position_y_3_address0,position_y_3_ce0,position_y_3_q0,position_y_3_address1,position_y_3_ce1,position_y_3_q1,position_z_0_address0,position_z_0_ce0,position_z_0_q0,position_z_0_address1,position_z_0_ce1,position_z_0_q1,position_z_1_address0,position_z_1_ce0,position_z_1_q0,position_z_1_address1,position_z_1_ce1,position_z_1_q1,position_z_2_address0,position_z_2_ce0,position_z_2_q0,position_z_2_address1,position_z_2_ce1,position_z_2_q1,position_z_3_address0,position_z_3_ce0,position_z_3_q0,position_z_3_address1,position_z_3_ce1,position_z_3_q1,i_x,i_y,i_z,NL_1_address0,NL_1_ce0,NL_1_q0,NL_3_address0,NL_3_ce0,NL_3_q0,fz_out,fz_out_ap_vld,fy_out,fy_out_ap_vld,fx_out,fx_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] i;
output  [9:0] NL_0_address0;
output   NL_0_ce0;
input  [31:0] NL_0_q0;
output  [9:0] NL_2_address0;
output   NL_2_ce0;
input  [31:0] NL_2_q0;
output  [5:0] position_x_0_address0;
output   position_x_0_ce0;
input  [63:0] position_x_0_q0;
output  [5:0] position_x_0_address1;
output   position_x_0_ce1;
input  [63:0] position_x_0_q1;
output  [5:0] position_x_1_address0;
output   position_x_1_ce0;
input  [63:0] position_x_1_q0;
output  [5:0] position_x_1_address1;
output   position_x_1_ce1;
input  [63:0] position_x_1_q1;
output  [5:0] position_x_2_address0;
output   position_x_2_ce0;
input  [63:0] position_x_2_q0;
output  [5:0] position_x_2_address1;
output   position_x_2_ce1;
input  [63:0] position_x_2_q1;
output  [5:0] position_x_3_address0;
output   position_x_3_ce0;
input  [63:0] position_x_3_q0;
output  [5:0] position_x_3_address1;
output   position_x_3_ce1;
input  [63:0] position_x_3_q1;
output  [5:0] position_y_0_address0;
output   position_y_0_ce0;
input  [63:0] position_y_0_q0;
output  [5:0] position_y_0_address1;
output   position_y_0_ce1;
input  [63:0] position_y_0_q1;
output  [5:0] position_y_1_address0;
output   position_y_1_ce0;
input  [63:0] position_y_1_q0;
output  [5:0] position_y_1_address1;
output   position_y_1_ce1;
input  [63:0] position_y_1_q1;
output  [5:0] position_y_2_address0;
output   position_y_2_ce0;
input  [63:0] position_y_2_q0;
output  [5:0] position_y_2_address1;
output   position_y_2_ce1;
input  [63:0] position_y_2_q1;
output  [5:0] position_y_3_address0;
output   position_y_3_ce0;
input  [63:0] position_y_3_q0;
output  [5:0] position_y_3_address1;
output   position_y_3_ce1;
input  [63:0] position_y_3_q1;
output  [5:0] position_z_0_address0;
output   position_z_0_ce0;
input  [63:0] position_z_0_q0;
output  [5:0] position_z_0_address1;
output   position_z_0_ce1;
input  [63:0] position_z_0_q1;
output  [5:0] position_z_1_address0;
output   position_z_1_ce0;
input  [63:0] position_z_1_q0;
output  [5:0] position_z_1_address1;
output   position_z_1_ce1;
input  [63:0] position_z_1_q1;
output  [5:0] position_z_2_address0;
output   position_z_2_ce0;
input  [63:0] position_z_2_q0;
output  [5:0] position_z_2_address1;
output   position_z_2_ce1;
input  [63:0] position_z_2_q1;
output  [5:0] position_z_3_address0;
output   position_z_3_ce0;
input  [63:0] position_z_3_q0;
output  [5:0] position_z_3_address1;
output   position_z_3_ce1;
input  [63:0] position_z_3_q1;
input  [63:0] i_x;
input  [63:0] i_y;
input  [63:0] i_z;
output  [9:0] NL_1_address0;
output   NL_1_ce0;
input  [31:0] NL_1_q0;
output  [9:0] NL_3_address0;
output   NL_3_ce0;
input  [31:0] NL_3_q0;
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
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] tmp_reg_1032;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] j_1_reg_1026;
reg   [0:0] tmp_reg_1032_pp0_iter1_reg;
reg   [0:0] tmp_reg_1032_pp0_iter2_reg;
reg   [0:0] tmp_reg_1032_pp0_iter3_reg;
reg   [0:0] tmp_reg_1032_pp0_iter4_reg;
reg   [0:0] tmp_reg_1032_pp0_iter5_reg;
reg   [0:0] tmp_reg_1032_pp0_iter6_reg;
reg   [0:0] tmp_reg_1032_pp0_iter7_reg;
reg   [0:0] tmp_reg_1032_pp0_iter8_reg;
reg   [0:0] tmp_reg_1032_pp0_iter9_reg;
wire   [1:0] trunc_ln27_fu_628_p1;
reg   [1:0] trunc_ln27_reg_1056;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [5:0] lshr_ln27_1_reg_1063;
wire   [1:0] trunc_ln27_1_fu_650_p1;
reg   [1:0] trunc_ln27_1_reg_1068;
reg   [5:0] lshr_ln27_2_reg_1075;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] j_x_fu_710_p11;
reg   [63:0] j_x_reg_1200;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] j_y_fu_749_p11;
reg   [63:0] j_y_reg_1205;
wire   [63:0] j_z_fu_788_p11;
reg   [63:0] j_z_reg_1210;
wire   [63:0] j_x_1_fu_827_p11;
reg   [63:0] j_x_1_reg_1215;
wire   [63:0] j_y_1_fu_866_p11;
reg   [63:0] j_y_1_reg_1220;
wire   [63:0] j_z_1_fu_905_p11;
reg   [63:0] j_z_1_reg_1225;
wire   [63:0] grp_fu_529_p2;
reg   [63:0] delx_reg_1230;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] delx_reg_1230_pp0_iter1_reg;
reg   [63:0] delx_reg_1230_pp0_iter2_reg;
reg   [63:0] delx_reg_1230_pp0_iter3_reg;
reg   [63:0] delx_reg_1230_pp0_iter4_reg;
reg   [63:0] delx_reg_1230_pp0_iter5_reg;
reg   [63:0] delx_reg_1230_pp0_iter6_reg;
reg   [63:0] delx_reg_1230_pp0_iter7_reg;
reg   [63:0] delx_reg_1230_pp0_iter8_reg;
wire   [63:0] grp_fu_533_p2;
reg   [63:0] dely_reg_1237;
reg   [63:0] dely_reg_1237_pp0_iter1_reg;
reg   [63:0] dely_reg_1237_pp0_iter2_reg;
reg   [63:0] dely_reg_1237_pp0_iter3_reg;
reg   [63:0] dely_reg_1237_pp0_iter4_reg;
reg   [63:0] dely_reg_1237_pp0_iter5_reg;
reg   [63:0] dely_reg_1237_pp0_iter6_reg;
reg   [63:0] dely_reg_1237_pp0_iter7_reg;
reg   [63:0] dely_reg_1237_pp0_iter8_reg;
reg   [63:0] delz_reg_1243;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] delz_reg_1243_pp0_iter1_reg;
reg   [63:0] delz_reg_1243_pp0_iter2_reg;
reg   [63:0] delz_reg_1243_pp0_iter3_reg;
reg   [63:0] delz_reg_1243_pp0_iter4_reg;
reg   [63:0] delz_reg_1243_pp0_iter5_reg;
reg   [63:0] delz_reg_1243_pp0_iter6_reg;
reg   [63:0] delz_reg_1243_pp0_iter7_reg;
reg   [63:0] delz_reg_1243_pp0_iter8_reg;
reg   [63:0] delx_1_reg_1249;
reg   [63:0] delx_1_reg_1249_pp0_iter1_reg;
reg   [63:0] delx_1_reg_1249_pp0_iter2_reg;
reg   [63:0] delx_1_reg_1249_pp0_iter3_reg;
reg   [63:0] delx_1_reg_1249_pp0_iter4_reg;
reg   [63:0] delx_1_reg_1249_pp0_iter5_reg;
reg   [63:0] delx_1_reg_1249_pp0_iter6_reg;
reg   [63:0] delx_1_reg_1249_pp0_iter7_reg;
reg   [63:0] delx_1_reg_1249_pp0_iter8_reg;
reg   [63:0] dely_1_reg_1255;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] dely_1_reg_1255_pp0_iter1_reg;
reg   [63:0] dely_1_reg_1255_pp0_iter2_reg;
reg   [63:0] dely_1_reg_1255_pp0_iter3_reg;
reg   [63:0] dely_1_reg_1255_pp0_iter4_reg;
reg   [63:0] dely_1_reg_1255_pp0_iter5_reg;
reg   [63:0] dely_1_reg_1255_pp0_iter6_reg;
reg   [63:0] dely_1_reg_1255_pp0_iter7_reg;
reg   [63:0] dely_1_reg_1255_pp0_iter8_reg;
reg   [63:0] delz_1_reg_1261;
reg   [63:0] delz_1_reg_1261_pp0_iter1_reg;
reg   [63:0] delz_1_reg_1261_pp0_iter2_reg;
reg   [63:0] delz_1_reg_1261_pp0_iter3_reg;
reg   [63:0] delz_1_reg_1261_pp0_iter4_reg;
reg   [63:0] delz_1_reg_1261_pp0_iter5_reg;
reg   [63:0] delz_1_reg_1261_pp0_iter6_reg;
reg   [63:0] delz_1_reg_1261_pp0_iter7_reg;
reg   [63:0] delz_1_reg_1261_pp0_iter8_reg;
wire   [63:0] grp_fu_539_p2;
reg   [63:0] mul_reg_1267;
wire   [63:0] grp_fu_543_p2;
reg   [63:0] mul1_reg_1272;
reg   [63:0] mul2_reg_1277;
reg   [63:0] mul18_1_reg_1282;
reg   [63:0] mul19_1_reg_1287;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] mul21_1_reg_1292;
reg   [63:0] add_reg_1297;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] add20_1_reg_1302;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add1_reg_1307;
reg   [63:0] add22_1_reg_1312;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] grp_fu_549_p2;
reg   [63:0] r2inv_reg_1317;
reg   [63:0] r2inv_reg_1317_pp0_iter6_reg;
reg   [63:0] r2inv_reg_1317_pp0_iter7_reg;
reg   [63:0] r2inv_1_reg_1323;
reg   [63:0] r2inv_1_reg_1323_pp0_iter7_reg;
reg   [63:0] r2inv_1_reg_1323_pp0_iter8_reg;
reg   [63:0] mul3_reg_1329;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] mul23_1_reg_1334;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] r6inv_reg_1339;
reg   [63:0] r6inv_reg_1339_pp0_iter7_reg;
reg   [63:0] r6inv_1_reg_1344;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] r6inv_1_reg_1344_pp0_iter7_reg;
reg   [63:0] mul5_reg_1349;
reg   [63:0] mul25_1_reg_1354;
reg   [63:0] sub_reg_1359;
reg   [63:0] sub26_1_reg_1364;
reg   [63:0] potential_reg_1369;
reg   [63:0] potential_1_reg_1374;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] force_reg_1379;
reg   [63:0] force_1_reg_1385;
reg   [63:0] mul8_reg_1391;
reg   [63:0] mul9_reg_1401;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] mul4_reg_1411;
reg   [63:0] mul29_1_reg_1416;
reg   [63:0] mul31_1_reg_1426;
reg   [63:0] mul33_1_reg_1431;
reg   [63:0] fx_1_reg_1436;
reg   [63:0] fy_1_reg_1441;
reg   [63:0] fz_1_reg_1446;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln27_2_fu_603_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_664_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_1_fu_679_p1;
reg   [63:0] fx_fu_116;
wire    ap_loop_init;
wire    ap_block_pp0_stage8;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter9_stage9;
reg    ap_idle_pp0_0to8;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
wire    ap_block_pp0_stage9;
reg   [63:0] fy_fu_120;
reg   [63:0] fz_fu_124;
wire    ap_block_pp0_stage10;
reg   [4:0] j_fu_128;
wire   [4:0] add_ln25_fu_928_p2;
reg   [4:0] ap_sig_allocacmp_j_1;
wire    ap_block_pp0_stage9_01001;
reg    NL_0_ce0_local;
reg    NL_2_ce0_local;
reg    NL_1_ce0_local;
reg    NL_3_ce0_local;
reg    position_x_0_ce1_local;
reg    position_x_0_ce0_local;
reg    position_x_1_ce1_local;
reg    position_x_1_ce0_local;
reg    position_x_2_ce1_local;
reg    position_x_2_ce0_local;
reg    position_x_3_ce1_local;
reg    position_x_3_ce0_local;
reg    position_y_0_ce1_local;
reg    position_y_0_ce0_local;
reg    position_y_1_ce1_local;
reg    position_y_1_ce0_local;
reg    position_y_2_ce1_local;
reg    position_y_2_ce0_local;
reg    position_y_3_ce1_local;
reg    position_y_3_ce0_local;
reg    position_z_0_ce1_local;
reg    position_z_0_ce0_local;
reg    position_z_1_ce1_local;
reg    position_z_1_ce0_local;
reg    position_z_2_ce1_local;
reg    position_z_2_ce0_local;
reg    position_z_3_ce1_local;
reg    position_z_3_ce0_local;
reg   [63:0] grp_fu_529_p0;
reg   [63:0] grp_fu_529_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_533_p0;
reg   [63:0] grp_fu_533_p1;
reg   [63:0] grp_fu_539_p0;
reg   [63:0] grp_fu_539_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
reg   [63:0] grp_fu_543_p0;
reg   [63:0] grp_fu_543_p1;
reg   [63:0] grp_fu_549_p1;
wire   [1:0] lshr_ln1_fu_585_p4;
wire   [9:0] add_ln_fu_595_p3;
wire   [1:0] trunc_ln25_fu_611_p1;
wire   [0:0] icmp_ln27_fu_614_p2;
wire   [31:0] select_ln27_fu_620_p3;
wire   [31:0] select_ln27_1_fu_642_p3;
wire   [63:0] j_x_fu_710_p2;
wire   [63:0] j_x_fu_710_p4;
wire   [63:0] j_x_fu_710_p6;
wire   [63:0] j_x_fu_710_p8;
wire   [63:0] j_x_fu_710_p9;
wire   [63:0] j_y_fu_749_p2;
wire   [63:0] j_y_fu_749_p4;
wire   [63:0] j_y_fu_749_p6;
wire   [63:0] j_y_fu_749_p8;
wire   [63:0] j_y_fu_749_p9;
wire   [63:0] j_z_fu_788_p2;
wire   [63:0] j_z_fu_788_p4;
wire   [63:0] j_z_fu_788_p6;
wire   [63:0] j_z_fu_788_p8;
wire   [63:0] j_z_fu_788_p9;
wire   [63:0] j_x_1_fu_827_p2;
wire   [63:0] j_x_1_fu_827_p4;
wire   [63:0] j_x_1_fu_827_p6;
wire   [63:0] j_x_1_fu_827_p8;
wire   [63:0] j_x_1_fu_827_p9;
wire   [63:0] j_y_1_fu_866_p2;
wire   [63:0] j_y_1_fu_866_p4;
wire   [63:0] j_y_1_fu_866_p6;
wire   [63:0] j_y_1_fu_866_p8;
wire   [63:0] j_y_1_fu_866_p9;
wire   [63:0] j_z_1_fu_905_p2;
wire   [63:0] j_z_1_fu_905_p4;
wire   [63:0] j_z_1_fu_905_p6;
wire   [63:0] j_z_1_fu_905_p8;
wire   [63:0] j_z_1_fu_905_p9;
reg   [1:0] grp_fu_529_opcode;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
reg   [1:0] grp_fu_533_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to10;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] j_x_fu_710_p1;
wire   [1:0] j_x_fu_710_p3;
wire  signed [1:0] j_x_fu_710_p5;
wire  signed [1:0] j_x_fu_710_p7;
wire   [1:0] j_y_fu_749_p1;
wire   [1:0] j_y_fu_749_p3;
wire  signed [1:0] j_y_fu_749_p5;
wire  signed [1:0] j_y_fu_749_p7;
wire   [1:0] j_z_fu_788_p1;
wire   [1:0] j_z_fu_788_p3;
wire  signed [1:0] j_z_fu_788_p5;
wire  signed [1:0] j_z_fu_788_p7;
wire   [1:0] j_x_1_fu_827_p1;
wire   [1:0] j_x_1_fu_827_p3;
wire  signed [1:0] j_x_1_fu_827_p5;
wire  signed [1:0] j_x_1_fu_827_p7;
wire   [1:0] j_y_1_fu_866_p1;
wire   [1:0] j_y_1_fu_866_p3;
wire  signed [1:0] j_y_1_fu_866_p5;
wire  signed [1:0] j_y_1_fu_866_p7;
wire   [1:0] j_z_1_fu_905_p1;
wire   [1:0] j_z_1_fu_905_p3;
wire  signed [1:0] j_z_1_fu_905_p5;
wire  signed [1:0] j_z_1_fu_905_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 fx_fu_116 = 64'd0;
#0 fy_fu_120 = 64'd0;
#0 fz_fu_124 = 64'd0;
#0 j_fu_128 = 5'd0;
#0 ap_done_reg = 1'b0;
end
md_kernel_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_529_p0),.din1(grp_fu_529_p1),.opcode(grp_fu_529_opcode),.ce(1'b1),.dout(grp_fu_529_p2));
md_kernel_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_533_p0),.din1(grp_fu_533_p1),.opcode(grp_fu_533_opcode),.ce(1'b1),.dout(grp_fu_533_p2));
md_kernel_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_539_p0),.din1(grp_fu_539_p1),.ce(1'b1),.dout(grp_fu_539_p2));
md_kernel_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_543_p0),.din1(grp_fu_543_p1),.ce(1'b1),.dout(grp_fu_543_p2));
md_kernel_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(64'd4607182418800017408),.din1(grp_fu_549_p1),.ce(1'b1),.dout(grp_fu_549_p2));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U6(.din0(j_x_fu_710_p2),.din1(j_x_fu_710_p4),.din2(j_x_fu_710_p6),.din3(j_x_fu_710_p8),.def(j_x_fu_710_p9),.sel(trunc_ln27_reg_1056),.dout(j_x_fu_710_p11));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U7(.din0(j_y_fu_749_p2),.din1(j_y_fu_749_p4),.din2(j_y_fu_749_p6),.din3(j_y_fu_749_p8),.def(j_y_fu_749_p9),.sel(trunc_ln27_reg_1056),.dout(j_y_fu_749_p11));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U8(.din0(j_z_fu_788_p2),.din1(j_z_fu_788_p4),.din2(j_z_fu_788_p6),.din3(j_z_fu_788_p8),.def(j_z_fu_788_p9),.sel(trunc_ln27_reg_1056),.dout(j_z_fu_788_p11));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U9(.din0(j_x_1_fu_827_p2),.din1(j_x_1_fu_827_p4),.din2(j_x_1_fu_827_p6),.din3(j_x_1_fu_827_p8),.def(j_x_1_fu_827_p9),.sel(trunc_ln27_1_reg_1068),.dout(j_x_1_fu_827_p11));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U10(.din0(j_y_1_fu_866_p2),.din1(j_y_1_fu_866_p4),.din2(j_y_1_fu_866_p6),.din3(j_y_1_fu_866_p8),.def(j_y_1_fu_866_p9),.sel(trunc_ln27_1_reg_1068),.dout(j_y_1_fu_866_p11));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U11(.din0(j_z_1_fu_905_p2),.din1(j_z_1_fu_905_p4),.din2(j_z_1_fu_905_p6),.din3(j_z_1_fu_905_p8),.def(j_z_1_fu_905_p9),.sel(trunc_ln27_1_reg_1068),.dout(j_z_1_fu_905_p11));
md_kernel_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage15)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter10 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage9))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage9))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage9))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage9))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage9))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage9))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage9))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage9))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage9))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fx_fu_116 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        fx_fu_116 <= grp_fu_529_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fy_fu_120 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        fy_fu_120 <= grp_fu_529_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fz_fu_124 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        fz_fu_124 <= grp_fu_529_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_128 <= 5'd0;
    end else if (((tmp_reg_1032 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        j_fu_128 <= add_ln25_fu_928_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add1_reg_1307 <= grp_fu_529_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add20_1_reg_1302 <= grp_fu_529_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add22_1_reg_1312 <= grp_fu_529_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_reg_1297 <= grp_fu_529_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        delx_1_reg_1249 <= grp_fu_533_p2;
        delz_reg_1243 <= grp_fu_529_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        delx_1_reg_1249_pp0_iter1_reg <= delx_1_reg_1249;
        delx_1_reg_1249_pp0_iter2_reg <= delx_1_reg_1249_pp0_iter1_reg;
        delx_1_reg_1249_pp0_iter3_reg <= delx_1_reg_1249_pp0_iter2_reg;
        delx_1_reg_1249_pp0_iter4_reg <= delx_1_reg_1249_pp0_iter3_reg;
        delx_1_reg_1249_pp0_iter5_reg <= delx_1_reg_1249_pp0_iter4_reg;
        delx_1_reg_1249_pp0_iter6_reg <= delx_1_reg_1249_pp0_iter5_reg;
        delx_1_reg_1249_pp0_iter7_reg <= delx_1_reg_1249_pp0_iter6_reg;
        delx_1_reg_1249_pp0_iter8_reg <= delx_1_reg_1249_pp0_iter7_reg;
        delz_reg_1243_pp0_iter1_reg <= delz_reg_1243;
        delz_reg_1243_pp0_iter2_reg <= delz_reg_1243_pp0_iter1_reg;
        delz_reg_1243_pp0_iter3_reg <= delz_reg_1243_pp0_iter2_reg;
        delz_reg_1243_pp0_iter4_reg <= delz_reg_1243_pp0_iter3_reg;
        delz_reg_1243_pp0_iter5_reg <= delz_reg_1243_pp0_iter4_reg;
        delz_reg_1243_pp0_iter6_reg <= delz_reg_1243_pp0_iter5_reg;
        delz_reg_1243_pp0_iter7_reg <= delz_reg_1243_pp0_iter6_reg;
        delz_reg_1243_pp0_iter8_reg <= delz_reg_1243_pp0_iter7_reg;
        r6inv_reg_1339_pp0_iter7_reg <= r6inv_reg_1339;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delx_reg_1230 <= grp_fu_529_p2;
        dely_reg_1237 <= grp_fu_533_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delx_reg_1230_pp0_iter1_reg <= delx_reg_1230;
        delx_reg_1230_pp0_iter2_reg <= delx_reg_1230_pp0_iter1_reg;
        delx_reg_1230_pp0_iter3_reg <= delx_reg_1230_pp0_iter2_reg;
        delx_reg_1230_pp0_iter4_reg <= delx_reg_1230_pp0_iter3_reg;
        delx_reg_1230_pp0_iter5_reg <= delx_reg_1230_pp0_iter4_reg;
        delx_reg_1230_pp0_iter6_reg <= delx_reg_1230_pp0_iter5_reg;
        delx_reg_1230_pp0_iter7_reg <= delx_reg_1230_pp0_iter6_reg;
        delx_reg_1230_pp0_iter8_reg <= delx_reg_1230_pp0_iter7_reg;
        dely_reg_1237_pp0_iter1_reg <= dely_reg_1237;
        dely_reg_1237_pp0_iter2_reg <= dely_reg_1237_pp0_iter1_reg;
        dely_reg_1237_pp0_iter3_reg <= dely_reg_1237_pp0_iter2_reg;
        dely_reg_1237_pp0_iter4_reg <= dely_reg_1237_pp0_iter3_reg;
        dely_reg_1237_pp0_iter5_reg <= dely_reg_1237_pp0_iter4_reg;
        dely_reg_1237_pp0_iter6_reg <= dely_reg_1237_pp0_iter5_reg;
        dely_reg_1237_pp0_iter7_reg <= dely_reg_1237_pp0_iter6_reg;
        dely_reg_1237_pp0_iter8_reg <= dely_reg_1237_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        dely_1_reg_1255 <= grp_fu_529_p2;
        delz_1_reg_1261 <= grp_fu_533_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        dely_1_reg_1255_pp0_iter1_reg <= dely_1_reg_1255;
        dely_1_reg_1255_pp0_iter2_reg <= dely_1_reg_1255_pp0_iter1_reg;
        dely_1_reg_1255_pp0_iter3_reg <= dely_1_reg_1255_pp0_iter2_reg;
        dely_1_reg_1255_pp0_iter4_reg <= dely_1_reg_1255_pp0_iter3_reg;
        dely_1_reg_1255_pp0_iter5_reg <= dely_1_reg_1255_pp0_iter4_reg;
        dely_1_reg_1255_pp0_iter6_reg <= dely_1_reg_1255_pp0_iter5_reg;
        dely_1_reg_1255_pp0_iter7_reg <= dely_1_reg_1255_pp0_iter6_reg;
        dely_1_reg_1255_pp0_iter8_reg <= dely_1_reg_1255_pp0_iter7_reg;
        delz_1_reg_1261_pp0_iter1_reg <= delz_1_reg_1261;
        delz_1_reg_1261_pp0_iter2_reg <= delz_1_reg_1261_pp0_iter1_reg;
        delz_1_reg_1261_pp0_iter3_reg <= delz_1_reg_1261_pp0_iter2_reg;
        delz_1_reg_1261_pp0_iter4_reg <= delz_1_reg_1261_pp0_iter3_reg;
        delz_1_reg_1261_pp0_iter5_reg <= delz_1_reg_1261_pp0_iter4_reg;
        delz_1_reg_1261_pp0_iter6_reg <= delz_1_reg_1261_pp0_iter5_reg;
        delz_1_reg_1261_pp0_iter7_reg <= delz_1_reg_1261_pp0_iter6_reg;
        delz_1_reg_1261_pp0_iter8_reg <= delz_1_reg_1261_pp0_iter7_reg;
        r2inv_reg_1317_pp0_iter6_reg <= r2inv_reg_1317;
        r2inv_reg_1317_pp0_iter7_reg <= r2inv_reg_1317_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        force_1_reg_1385 <= grp_fu_539_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        force_reg_1379 <= grp_fu_539_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        fx_1_reg_1436 <= grp_fu_533_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fy_1_reg_1441 <= grp_fu_529_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        fz_1_reg_1446 <= grp_fu_529_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_1_reg_1026 <= ap_sig_allocacmp_j_1;
        tmp_reg_1032 <= ap_sig_allocacmp_j_1[32'd4];
        tmp_reg_1032_pp0_iter1_reg <= tmp_reg_1032;
        tmp_reg_1032_pp0_iter2_reg <= tmp_reg_1032_pp0_iter1_reg;
        tmp_reg_1032_pp0_iter3_reg <= tmp_reg_1032_pp0_iter2_reg;
        tmp_reg_1032_pp0_iter4_reg <= tmp_reg_1032_pp0_iter3_reg;
        tmp_reg_1032_pp0_iter5_reg <= tmp_reg_1032_pp0_iter4_reg;
        tmp_reg_1032_pp0_iter6_reg <= tmp_reg_1032_pp0_iter5_reg;
        tmp_reg_1032_pp0_iter7_reg <= tmp_reg_1032_pp0_iter6_reg;
        tmp_reg_1032_pp0_iter8_reg <= tmp_reg_1032_pp0_iter7_reg;
        tmp_reg_1032_pp0_iter9_reg <= tmp_reg_1032_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        j_x_1_reg_1215 <= j_x_1_fu_827_p11;
        j_x_reg_1200 <= j_x_fu_710_p11;
        j_y_1_reg_1220 <= j_y_1_fu_866_p11;
        j_y_reg_1205 <= j_y_fu_749_p11;
        j_z_1_reg_1225 <= j_z_1_fu_905_p11;
        j_z_reg_1210 <= j_z_fu_788_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln27_1_reg_1063 <= {{select_ln27_fu_620_p3[7:2]}};
        lshr_ln27_2_reg_1075 <= {{select_ln27_1_fu_642_p3[7:2]}};
        r2inv_1_reg_1323_pp0_iter7_reg <= r2inv_1_reg_1323;
        r2inv_1_reg_1323_pp0_iter8_reg <= r2inv_1_reg_1323_pp0_iter7_reg;
        trunc_ln27_1_reg_1068 <= trunc_ln27_1_fu_650_p1;
        trunc_ln27_reg_1056 <= trunc_ln27_fu_628_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul18_1_reg_1282 <= grp_fu_543_p2;
        mul2_reg_1277 <= grp_fu_539_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul19_1_reg_1287 <= grp_fu_539_p2;
        mul21_1_reg_1292 <= grp_fu_543_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul1_reg_1272 <= grp_fu_543_p2;
        mul_reg_1267 <= grp_fu_539_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul23_1_reg_1334 <= grp_fu_539_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul25_1_reg_1354 <= grp_fu_539_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul29_1_reg_1416 <= grp_fu_543_p2;
        mul4_reg_1411 <= grp_fu_539_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul31_1_reg_1426 <= grp_fu_539_p2;
        mul33_1_reg_1431 <= grp_fu_543_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul3_reg_1329 <= grp_fu_539_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul5_reg_1349 <= grp_fu_543_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul8_reg_1391 <= grp_fu_543_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul9_reg_1401 <= grp_fu_543_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        potential_1_reg_1374 <= grp_fu_539_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        potential_reg_1369 <= grp_fu_543_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        r2inv_1_reg_1323 <= grp_fu_549_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        r2inv_reg_1317 <= grp_fu_549_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        r6inv_1_reg_1344 <= grp_fu_539_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        r6inv_1_reg_1344_pp0_iter7_reg <= r6inv_1_reg_1344;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        r6inv_reg_1339 <= grp_fu_539_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        sub26_1_reg_1364 <= grp_fu_529_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        sub_reg_1359 <= grp_fu_533_p2;
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
    if (((tmp_reg_1032 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter9 == 1'b1) & (tmp_reg_1032_pp0_iter9_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter9_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter9_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to8 = 1'b1;
    end else begin
        ap_idle_pp0_0to8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to10 = 1'b1;
    end else begin
        ap_idle_pp0_1to10 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1 = 5'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (tmp_reg_1032_pp0_iter9_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        fx_out_ap_vld = 1'b1;
    end else begin
        fx_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (tmp_reg_1032_pp0_iter9_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        fy_out_ap_vld = 1'b1;
    end else begin
        fy_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (tmp_reg_1032_pp0_iter9_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        fz_out_ap_vld = 1'b1;
    end else begin
        fz_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1032 == 1'd0) & (1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1032 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1032 == 1'd0) & (1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_529_opcode = 2'd1;
end else if ((((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage15_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_00001)& (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_529_opcode = 2'd0;
    end else begin
        grp_fu_529_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_529_p0 = fz_1_reg_1446;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_529_p0 = fy_1_reg_1441;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_529_p0 = fx_1_reg_1436;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_529_p0 = fz_fu_124;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_529_p0 = fy_fu_120;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_529_p0 = mul25_1_reg_1354;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_529_p0 = add20_1_reg_1302;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_529_p0 = add_reg_1297;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_529_p0 = mul18_1_reg_1282;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_529_p0 = mul_reg_1267;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_529_p0 = i_y;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_529_p0 = i_z;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_529_p0 = i_x;
    end else begin
        grp_fu_529_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_529_p1 = mul33_1_reg_1431;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_529_p1 = mul31_1_reg_1426;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_529_p1 = mul29_1_reg_1416;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_529_p1 = mul4_reg_1411;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_529_p1 = mul9_reg_1401;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_529_p1 = 64'd13835058055282163712;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_529_p1 = mul21_1_reg_1292;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_529_p1 = mul2_reg_1277;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_529_p1 = mul19_1_reg_1287;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_529_p1 = mul1_reg_1272;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_529_p1 = j_y_1_reg_1220;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_529_p1 = j_z_reg_1210;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_529_p1 = j_x_reg_1200;
    end else begin
        grp_fu_529_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1032 == 1'd0) & (1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_1032 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_1032 == 1'd0) & (1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_533_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_533_opcode = 2'd0;
    end else begin
        grp_fu_533_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_533_p0 = fx_fu_116;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_533_p0 = mul5_reg_1349;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_533_p0 = i_z;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_533_p0 = i_x;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_533_p0 = i_y;
    end else begin
        grp_fu_533_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_533_p1 = mul8_reg_1391;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_533_p1 = 64'd13835058055282163712;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_533_p1 = j_z_1_reg_1225;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_533_p1 = j_x_1_reg_1215;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_533_p1 = j_y_reg_1205;
    end else begin
        grp_fu_533_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_539_p0 = dely_1_reg_1255_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_539_p0 = delz_reg_1243_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_539_p0 = r2inv_1_reg_1323_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_539_p0 = r2inv_reg_1317_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_539_p0 = r6inv_1_reg_1344_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_539_p0 = r6inv_1_reg_1344;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_539_p0 = mul23_1_reg_1334;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_539_p0 = mul3_reg_1329;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_539_p0 = r2inv_1_reg_1323;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_539_p0 = r2inv_reg_1317;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_539_p0 = dely_1_reg_1255;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_539_p0 = delz_reg_1243;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_539_p0 = delx_reg_1230;
    end else begin
        grp_fu_539_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_539_p1 = force_1_reg_1385;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_539_p1 = force_reg_1379;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_539_p1 = potential_1_reg_1374;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_539_p1 = potential_reg_1369;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_539_p1 = sub26_1_reg_1364;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_539_p1 = 64'd4609434218613702656;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_539_p1 = r2inv_1_reg_1323;
    end else if ((((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_539_p1 = r2inv_reg_1317;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_539_p1 = dely_1_reg_1255;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_539_p1 = delz_reg_1243;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_539_p1 = delx_reg_1230;
    end else begin
        grp_fu_539_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_543_p0 = delz_1_reg_1261_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_543_p0 = delx_1_reg_1249_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_543_p0 = dely_reg_1237_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_543_p0 = delx_reg_1230_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_543_p0 = r6inv_reg_1339_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_543_p0 = r6inv_reg_1339;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_543_p0 = delz_1_reg_1261;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_543_p0 = delx_1_reg_1249;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_543_p0 = dely_reg_1237;
    end else begin
        grp_fu_543_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_543_p1 = force_1_reg_1385;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_543_p1 = force_reg_1379;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_543_p1 = sub_reg_1359;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_543_p1 = 64'd4609434218613702656;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_543_p1 = delz_1_reg_1261;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_543_p1 = delx_1_reg_1249;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_543_p1 = dely_reg_1237;
    end else begin
        grp_fu_543_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_549_p1 = add22_1_reg_1312;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_549_p1 = add1_reg_1307;
        end else begin
            grp_fu_549_p1 = 'bx;
        end
    end else begin
        grp_fu_549_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_x_0_ce0_local = 1'b1;
    end else begin
        position_x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_x_0_ce1_local = 1'b1;
    end else begin
        position_x_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_x_1_ce0_local = 1'b1;
    end else begin
        position_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_x_1_ce1_local = 1'b1;
    end else begin
        position_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_x_2_ce0_local = 1'b1;
    end else begin
        position_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_x_2_ce1_local = 1'b1;
    end else begin
        position_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_x_3_ce0_local = 1'b1;
    end else begin
        position_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_x_3_ce1_local = 1'b1;
    end else begin
        position_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_y_0_ce0_local = 1'b1;
    end else begin
        position_y_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_y_0_ce1_local = 1'b1;
    end else begin
        position_y_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_y_1_ce0_local = 1'b1;
    end else begin
        position_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_y_1_ce1_local = 1'b1;
    end else begin
        position_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_y_2_ce0_local = 1'b1;
    end else begin
        position_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_y_2_ce1_local = 1'b1;
    end else begin
        position_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_y_3_ce0_local = 1'b1;
    end else begin
        position_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_y_3_ce1_local = 1'b1;
    end else begin
        position_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_z_0_ce0_local = 1'b1;
    end else begin
        position_z_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_z_0_ce1_local = 1'b1;
    end else begin
        position_z_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_z_1_ce0_local = 1'b1;
    end else begin
        position_z_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_z_1_ce1_local = 1'b1;
    end else begin
        position_z_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_z_2_ce0_local = 1'b1;
    end else begin
        position_z_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_z_2_ce1_local = 1'b1;
    end else begin
        position_z_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_z_3_ce0_local = 1'b1;
    end else begin
        position_z_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        position_z_3_ce1_local = 1'b1;
    end else begin
        position_z_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to10 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to8 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter9_stage9))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign NL_0_address0 = zext_ln27_2_fu_603_p1;
assign NL_0_ce0 = NL_0_ce0_local;
assign NL_1_address0 = zext_ln27_2_fu_603_p1;
assign NL_1_ce0 = NL_1_ce0_local;
assign NL_2_address0 = zext_ln27_2_fu_603_p1;
assign NL_2_ce0 = NL_2_ce0_local;
assign NL_3_address0 = zext_ln27_2_fu_603_p1;
assign NL_3_ce0 = NL_3_ce0_local;
assign add_ln25_fu_928_p2 = (j_1_reg_1026 + 5'd2);
assign add_ln_fu_595_p3 = {{i}, {lshr_ln1_fu_585_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage15_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign fx_out = fx_fu_116;
assign fy_out = fy_fu_120;
assign fz_out = fz_fu_124;
assign icmp_ln27_fu_614_p2 = ((trunc_ln25_fu_611_p1 != 2'd0) ? 1'b1 : 1'b0);
assign j_x_1_fu_827_p2 = position_x_0_q0;
assign j_x_1_fu_827_p4 = position_x_1_q0;
assign j_x_1_fu_827_p6 = position_x_2_q0;
assign j_x_1_fu_827_p8 = position_x_3_q0;
assign j_x_1_fu_827_p9 = 'bx;
assign j_x_fu_710_p2 = position_x_0_q1;
assign j_x_fu_710_p4 = position_x_1_q1;
assign j_x_fu_710_p6 = position_x_2_q1;
assign j_x_fu_710_p8 = position_x_3_q1;
assign j_x_fu_710_p9 = 'bx;
assign j_y_1_fu_866_p2 = position_y_0_q0;
assign j_y_1_fu_866_p4 = position_y_1_q0;
assign j_y_1_fu_866_p6 = position_y_2_q0;
assign j_y_1_fu_866_p8 = position_y_3_q0;
assign j_y_1_fu_866_p9 = 'bx;
assign j_y_fu_749_p2 = position_y_0_q1;
assign j_y_fu_749_p4 = position_y_1_q1;
assign j_y_fu_749_p6 = position_y_2_q1;
assign j_y_fu_749_p8 = position_y_3_q1;
assign j_y_fu_749_p9 = 'bx;
assign j_z_1_fu_905_p2 = position_z_0_q0;
assign j_z_1_fu_905_p4 = position_z_1_q0;
assign j_z_1_fu_905_p6 = position_z_2_q0;
assign j_z_1_fu_905_p8 = position_z_3_q0;
assign j_z_1_fu_905_p9 = 'bx;
assign j_z_fu_788_p2 = position_z_0_q1;
assign j_z_fu_788_p4 = position_z_1_q1;
assign j_z_fu_788_p6 = position_z_2_q1;
assign j_z_fu_788_p8 = position_z_3_q1;
assign j_z_fu_788_p9 = 'bx;
assign lshr_ln1_fu_585_p4 = {{ap_sig_allocacmp_j_1[3:2]}};
assign position_x_0_address0 = zext_ln27_1_fu_679_p1;
assign position_x_0_address1 = zext_ln27_fu_664_p1;
assign position_x_0_ce0 = position_x_0_ce0_local;
assign position_x_0_ce1 = position_x_0_ce1_local;
assign position_x_1_address0 = zext_ln27_1_fu_679_p1;
assign position_x_1_address1 = zext_ln27_fu_664_p1;
assign position_x_1_ce0 = position_x_1_ce0_local;
assign position_x_1_ce1 = position_x_1_ce1_local;
assign position_x_2_address0 = zext_ln27_1_fu_679_p1;
assign position_x_2_address1 = zext_ln27_fu_664_p1;
assign position_x_2_ce0 = position_x_2_ce0_local;
assign position_x_2_ce1 = position_x_2_ce1_local;
assign position_x_3_address0 = zext_ln27_1_fu_679_p1;
assign position_x_3_address1 = zext_ln27_fu_664_p1;
assign position_x_3_ce0 = position_x_3_ce0_local;
assign position_x_3_ce1 = position_x_3_ce1_local;
assign position_y_0_address0 = zext_ln27_1_fu_679_p1;
assign position_y_0_address1 = zext_ln27_fu_664_p1;
assign position_y_0_ce0 = position_y_0_ce0_local;
assign position_y_0_ce1 = position_y_0_ce1_local;
assign position_y_1_address0 = zext_ln27_1_fu_679_p1;
assign position_y_1_address1 = zext_ln27_fu_664_p1;
assign position_y_1_ce0 = position_y_1_ce0_local;
assign position_y_1_ce1 = position_y_1_ce1_local;
assign position_y_2_address0 = zext_ln27_1_fu_679_p1;
assign position_y_2_address1 = zext_ln27_fu_664_p1;
assign position_y_2_ce0 = position_y_2_ce0_local;
assign position_y_2_ce1 = position_y_2_ce1_local;
assign position_y_3_address0 = zext_ln27_1_fu_679_p1;
assign position_y_3_address1 = zext_ln27_fu_664_p1;
assign position_y_3_ce0 = position_y_3_ce0_local;
assign position_y_3_ce1 = position_y_3_ce1_local;
assign position_z_0_address0 = zext_ln27_1_fu_679_p1;
assign position_z_0_address1 = zext_ln27_fu_664_p1;
assign position_z_0_ce0 = position_z_0_ce0_local;
assign position_z_0_ce1 = position_z_0_ce1_local;
assign position_z_1_address0 = zext_ln27_1_fu_679_p1;
assign position_z_1_address1 = zext_ln27_fu_664_p1;
assign position_z_1_ce0 = position_z_1_ce0_local;
assign position_z_1_ce1 = position_z_1_ce1_local;
assign position_z_2_address0 = zext_ln27_1_fu_679_p1;
assign position_z_2_address1 = zext_ln27_fu_664_p1;
assign position_z_2_ce0 = position_z_2_ce0_local;
assign position_z_2_ce1 = position_z_2_ce1_local;
assign position_z_3_address0 = zext_ln27_1_fu_679_p1;
assign position_z_3_address1 = zext_ln27_fu_664_p1;
assign position_z_3_ce0 = position_z_3_ce0_local;
assign position_z_3_ce1 = position_z_3_ce1_local;
assign select_ln27_1_fu_642_p3 = ((icmp_ln27_fu_614_p2[0:0] == 1'b1) ? NL_3_q0 : NL_1_q0);
assign select_ln27_fu_620_p3 = ((icmp_ln27_fu_614_p2[0:0] == 1'b1) ? NL_2_q0 : NL_0_q0);
assign trunc_ln25_fu_611_p1 = j_1_reg_1026[1:0];
assign trunc_ln27_1_fu_650_p1 = select_ln27_1_fu_642_p3[1:0];
assign trunc_ln27_fu_628_p1 = select_ln27_fu_620_p3[1:0];
assign zext_ln27_1_fu_679_p1 = lshr_ln27_2_reg_1075;
assign zext_ln27_2_fu_603_p1 = add_ln_fu_595_p3;
assign zext_ln27_fu_664_p1 = lshr_ln27_1_reg_1063;
endmodule 
