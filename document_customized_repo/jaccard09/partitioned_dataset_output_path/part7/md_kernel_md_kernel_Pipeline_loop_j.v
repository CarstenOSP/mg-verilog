
module md_kernel_md_kernel_Pipeline_loop_j (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,i,NL_0_address0,NL_0_ce0,NL_0_q0,NL_0_address1,NL_0_ce1,NL_0_q1,position_x_0_address0,position_x_0_ce0,position_x_0_q0,position_x_0_address1,position_x_0_ce1,position_x_0_q1,position_x_1_address0,position_x_1_ce0,position_x_1_q0,position_x_1_address1,position_x_1_ce1,position_x_1_q1,position_y_0_address0,position_y_0_ce0,position_y_0_q0,position_y_0_address1,position_y_0_ce1,position_y_0_q1,position_y_1_address0,position_y_1_ce0,position_y_1_q0,position_y_1_address1,position_y_1_ce1,position_y_1_q1,position_z_0_address0,position_z_0_ce0,position_z_0_q0,position_z_0_address1,position_z_0_ce1,position_z_0_q1,position_z_1_address0,position_z_1_ce0,position_z_1_q0,position_z_1_address1,position_z_1_ce1,position_z_1_q1,i_x,i_y,i_z,NL_1_address0,NL_1_ce0,NL_1_q0,NL_1_address1,NL_1_ce1,NL_1_q1,fz_out,fz_out_ap_vld,fy_out,fy_out_ap_vld,fx_out,fx_out_ap_vld);  
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
output  [10:0] NL_0_address0;
output   NL_0_ce0;
input  [31:0] NL_0_q0;
output  [10:0] NL_0_address1;
output   NL_0_ce1;
input  [31:0] NL_0_q1;
output  [6:0] position_x_0_address0;
output   position_x_0_ce0;
input  [63:0] position_x_0_q0;
output  [6:0] position_x_0_address1;
output   position_x_0_ce1;
input  [63:0] position_x_0_q1;
output  [6:0] position_x_1_address0;
output   position_x_1_ce0;
input  [63:0] position_x_1_q0;
output  [6:0] position_x_1_address1;
output   position_x_1_ce1;
input  [63:0] position_x_1_q1;
output  [6:0] position_y_0_address0;
output   position_y_0_ce0;
input  [63:0] position_y_0_q0;
output  [6:0] position_y_0_address1;
output   position_y_0_ce1;
input  [63:0] position_y_0_q1;
output  [6:0] position_y_1_address0;
output   position_y_1_ce0;
input  [63:0] position_y_1_q0;
output  [6:0] position_y_1_address1;
output   position_y_1_ce1;
input  [63:0] position_y_1_q1;
output  [6:0] position_z_0_address0;
output   position_z_0_ce0;
input  [63:0] position_z_0_q0;
output  [6:0] position_z_0_address1;
output   position_z_0_ce1;
input  [63:0] position_z_0_q1;
output  [6:0] position_z_1_address0;
output   position_z_1_ce0;
input  [63:0] position_z_1_q0;
output  [6:0] position_z_1_address1;
output   position_z_1_ce1;
input  [63:0] position_z_1_q1;
input  [63:0] i_x;
input  [63:0] i_y;
input  [63:0] i_z;
output  [10:0] NL_1_address0;
output   NL_1_ce0;
input  [31:0] NL_1_q0;
output  [10:0] NL_1_address1;
output   NL_1_ce1;
input  [31:0] NL_1_q1;
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
reg   [0:0] tmp_reg_991;
reg    ap_condition_exit_pp0_iter0_stage31;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_481_p2;
reg   [63:0] reg_496;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] grp_fu_485_p2;
reg   [63:0] reg_503;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_510;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_516;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_522;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] reg_528;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_534;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_540;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] reg_546;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [63:0] grp_fu_451_p2;
reg   [63:0] reg_552;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_559;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] grp_fu_455_p2;
reg   [63:0] reg_564;
wire    ap_block_pp0_stage31_11001;
reg   [63:0] reg_571;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] reg_578;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_fu_608_p3;
reg   [0:0] tmp_reg_991_pp0_iter1_reg;
reg   [0:0] tmp_reg_991_pp0_iter2_reg;
reg   [0:0] tmp_reg_991_pp0_iter3_reg;
reg   [0:0] tmp_reg_991_pp0_iter4_reg;
wire   [0:0] trunc_ln27_fu_677_p1;
reg   [0:0] trunc_ln27_reg_1015;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] trunc_ln27_1_fu_701_p1;
reg   [0:0] trunc_ln27_1_reg_1052;
wire   [0:0] trunc_ln27_2_fu_725_p1;
reg   [0:0] trunc_ln27_2_reg_1089;
reg   [6:0] lshr_ln27_3_reg_1096;
wire   [0:0] trunc_ln27_3_fu_739_p1;
reg   [0:0] trunc_ln27_3_reg_1101;
reg   [6:0] lshr_ln27_4_reg_1108;
wire   [63:0] select_ln29_fu_753_p3;
reg   [63:0] select_ln29_reg_1113;
wire   [63:0] select_ln30_fu_760_p3;
reg   [63:0] select_ln30_reg_1118;
wire   [63:0] select_ln31_fu_767_p3;
reg   [63:0] select_ln31_reg_1123;
wire   [63:0] select_ln29_1_fu_774_p3;
reg   [63:0] select_ln29_1_reg_1128;
wire   [63:0] select_ln30_1_fu_781_p3;
reg   [63:0] select_ln30_1_reg_1133;
wire   [63:0] select_ln31_1_fu_788_p3;
reg   [63:0] select_ln31_1_reg_1138;
wire   [63:0] j_x_fu_813_p1;
wire   [63:0] j_y_fu_817_p1;
wire   [63:0] j_z_fu_821_p1;
wire   [63:0] j_x_1_fu_825_p1;
wire   [63:0] j_y_1_fu_829_p1;
wire   [63:0] j_z_1_fu_833_p1;
wire   [63:0] select_ln29_2_fu_837_p3;
reg   [63:0] select_ln29_2_reg_1233;
wire   [63:0] select_ln30_2_fu_844_p3;
reg   [63:0] select_ln30_2_reg_1238;
wire   [63:0] select_ln31_2_fu_851_p3;
reg   [63:0] select_ln31_2_reg_1243;
wire   [63:0] select_ln29_3_fu_858_p3;
reg   [63:0] select_ln29_3_reg_1248;
wire   [63:0] select_ln30_3_fu_865_p3;
reg   [63:0] select_ln30_3_reg_1253;
wire   [63:0] select_ln31_3_fu_872_p3;
reg   [63:0] select_ln31_3_reg_1258;
wire   [63:0] j_x_2_fu_879_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] j_y_2_fu_883_p1;
wire   [63:0] j_z_2_fu_887_p1;
wire   [63:0] j_x_3_fu_891_p1;
wire   [63:0] j_y_3_fu_895_p1;
wire   [63:0] j_z_3_fu_899_p1;
reg   [63:0] delx_reg_1293;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] delx_reg_1293_pp0_iter1_reg;
reg   [63:0] delx_reg_1293_pp0_iter2_reg;
reg   [63:0] delx_reg_1293_pp0_iter3_reg;
reg   [63:0] delx_reg_1293_pp0_iter4_reg;
reg   [63:0] dely_reg_1299;
reg   [63:0] dely_reg_1299_pp0_iter1_reg;
reg   [63:0] dely_reg_1299_pp0_iter2_reg;
reg   [63:0] dely_reg_1299_pp0_iter3_reg;
reg   [63:0] dely_reg_1299_pp0_iter4_reg;
wire   [63:0] grp_fu_459_p2;
reg   [63:0] delz_reg_1305;
reg   [63:0] delz_reg_1305_pp0_iter1_reg;
reg   [63:0] delz_reg_1305_pp0_iter2_reg;
reg   [63:0] delz_reg_1305_pp0_iter3_reg;
reg   [63:0] delz_reg_1305_pp0_iter4_reg;
wire   [63:0] grp_fu_463_p2;
reg   [63:0] delx_1_reg_1311;
reg   [63:0] delx_1_reg_1311_pp0_iter1_reg;
reg   [63:0] delx_1_reg_1311_pp0_iter2_reg;
reg   [63:0] delx_1_reg_1311_pp0_iter3_reg;
reg   [63:0] delx_1_reg_1311_pp0_iter4_reg;
wire   [63:0] grp_fu_467_p2;
reg   [63:0] dely_1_reg_1317;
reg   [63:0] dely_1_reg_1317_pp0_iter1_reg;
reg   [63:0] dely_1_reg_1317_pp0_iter2_reg;
reg   [63:0] dely_1_reg_1317_pp0_iter3_reg;
reg   [63:0] dely_1_reg_1317_pp0_iter4_reg;
wire   [63:0] grp_fu_471_p2;
reg   [63:0] delz_1_reg_1323;
reg   [63:0] delz_1_reg_1323_pp0_iter1_reg;
reg   [63:0] delz_1_reg_1323_pp0_iter2_reg;
reg   [63:0] delz_1_reg_1323_pp0_iter3_reg;
reg   [63:0] delz_1_reg_1323_pp0_iter4_reg;
reg   [63:0] delx_2_reg_1329;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] delx_2_reg_1329_pp0_iter1_reg;
reg   [63:0] delx_2_reg_1329_pp0_iter2_reg;
reg   [63:0] delx_2_reg_1329_pp0_iter3_reg;
reg   [63:0] delx_2_reg_1329_pp0_iter4_reg;
reg   [63:0] dely_2_reg_1335;
reg   [63:0] dely_2_reg_1335_pp0_iter1_reg;
reg   [63:0] dely_2_reg_1335_pp0_iter2_reg;
reg   [63:0] dely_2_reg_1335_pp0_iter3_reg;
reg   [63:0] dely_2_reg_1335_pp0_iter4_reg;
reg   [63:0] delz_2_reg_1341;
reg   [63:0] delz_2_reg_1341_pp0_iter1_reg;
reg   [63:0] delz_2_reg_1341_pp0_iter2_reg;
reg   [63:0] delz_2_reg_1341_pp0_iter3_reg;
reg   [63:0] delz_2_reg_1341_pp0_iter4_reg;
reg   [63:0] delx_3_reg_1347;
reg   [63:0] delx_3_reg_1347_pp0_iter1_reg;
reg   [63:0] delx_3_reg_1347_pp0_iter2_reg;
reg   [63:0] delx_3_reg_1347_pp0_iter3_reg;
reg   [63:0] delx_3_reg_1347_pp0_iter4_reg;
reg   [63:0] dely_3_reg_1353;
reg   [63:0] dely_3_reg_1353_pp0_iter1_reg;
reg   [63:0] dely_3_reg_1353_pp0_iter2_reg;
reg   [63:0] dely_3_reg_1353_pp0_iter3_reg;
reg   [63:0] dely_3_reg_1353_pp0_iter4_reg;
reg   [63:0] delz_3_reg_1359;
reg   [63:0] delz_3_reg_1359_pp0_iter1_reg;
reg   [63:0] delz_3_reg_1359_pp0_iter2_reg;
reg   [63:0] delz_3_reg_1359_pp0_iter3_reg;
reg   [63:0] delz_3_reg_1359_pp0_iter4_reg;
reg   [63:0] mul18_3_reg_1365;
reg   [63:0] mul19_3_reg_1370;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] mul21_3_reg_1375;
reg   [63:0] add20_2_reg_1380;
reg   [63:0] add20_3_reg_1385;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
reg   [63:0] add1_reg_1390;
reg   [63:0] add22_1_reg_1395;
reg   [63:0] add22_2_reg_1400;
reg   [63:0] add22_3_reg_1405;
wire   [63:0] grp_fu_491_p2;
reg   [63:0] r2inv_reg_1410;
reg   [63:0] r2inv_reg_1410_pp0_iter3_reg;
reg   [63:0] r2inv_1_reg_1417;
reg   [63:0] r2inv_1_reg_1417_pp0_iter3_reg;
reg   [63:0] r2inv_2_reg_1423;
reg   [63:0] r2inv_2_reg_1423_pp0_iter3_reg;
reg   [63:0] r2inv_3_reg_1430;
reg   [63:0] r2inv_3_reg_1430_pp0_iter4_reg;
reg   [63:0] r6inv_reg_1437;
reg   [63:0] r6inv_1_reg_1443;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] r6inv_2_reg_1449;
reg   [63:0] r6inv_3_reg_1455;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] mul5_reg_1460;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] mul25_1_reg_1465;
reg   [63:0] mul25_2_reg_1470;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] mul25_3_reg_1475;
reg   [63:0] sub_reg_1480;
reg   [63:0] sub26_2_reg_1485;
reg   [63:0] sub26_3_reg_1490;
reg   [63:0] force_2_reg_1495;
reg   [63:0] force_3_reg_1501;
reg   [63:0] mul4_reg_1517;
reg   [63:0] mul33_1_reg_1527;
reg   [63:0] mul29_2_reg_1532;
reg   [63:0] mul33_2_reg_1537;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
reg   [63:0] mul29_3_reg_1542;
reg   [63:0] mul31_3_reg_1547;
reg   [63:0] mul33_3_reg_1552;
reg   [63:0] fx_1_reg_1557;
reg   [63:0] fy_1_reg_1562;
wire   [63:0] grp_fu_477_p2;
reg   [63:0] fz_2_reg_1567;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage26_subdone;
wire   [63:0] zext_ln27_4_fu_634_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_5_fu_660_p1;
wire   [63:0] zext_ln27_fu_691_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_1_fu_715_p1;
wire   [63:0] zext_ln27_2_fu_795_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_3_fu_804_p1;
reg   [63:0] fx_fu_94;
wire    ap_loop_init;
wire    ap_block_pp0_stage26;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage26;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [63:0] fy_fu_98;
reg   [63:0] fz_fu_102;
wire    ap_block_pp0_stage27;
reg   [4:0] j_fu_106;
wire   [4:0] add_ln25_fu_666_p2;
reg   [4:0] ap_sig_allocacmp_j_1;
wire    ap_block_pp0_stage26_01001;
reg    NL_0_ce1_local;
reg    NL_0_ce0_local;
reg    NL_1_ce1_local;
reg    NL_1_ce0_local;
reg    position_x_0_ce1_local;
reg   [6:0] position_x_0_address1_local;
reg    position_x_0_ce0_local;
reg   [6:0] position_x_0_address0_local;
reg    position_x_1_ce1_local;
reg   [6:0] position_x_1_address1_local;
reg    position_x_1_ce0_local;
reg   [6:0] position_x_1_address0_local;
reg    position_y_0_ce1_local;
reg   [6:0] position_y_0_address1_local;
reg    position_y_0_ce0_local;
reg   [6:0] position_y_0_address0_local;
reg    position_y_1_ce1_local;
reg   [6:0] position_y_1_address1_local;
reg    position_y_1_ce0_local;
reg   [6:0] position_y_1_address0_local;
reg    position_z_0_ce1_local;
reg   [6:0] position_z_0_address1_local;
reg    position_z_0_ce0_local;
reg   [6:0] position_z_0_address0_local;
reg    position_z_1_ce1_local;
reg   [6:0] position_z_1_address1_local;
reg    position_z_1_ce0_local;
reg   [6:0] position_z_1_address0_local;
reg   [63:0] grp_fu_451_p0;
reg   [63:0] grp_fu_451_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage18;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage21;
wire    ap_block_pp0_stage23;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage29;
wire    ap_block_pp0_stage31;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage25;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage19;
reg   [63:0] grp_fu_455_p0;
reg   [63:0] grp_fu_455_p1;
reg   [63:0] grp_fu_459_p0;
reg   [63:0] grp_fu_459_p1;
reg   [63:0] grp_fu_463_p1;
reg   [63:0] grp_fu_467_p1;
reg   [63:0] grp_fu_471_p1;
reg   [63:0] grp_fu_481_p0;
reg   [63:0] grp_fu_481_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage17;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage22;
reg   [63:0] grp_fu_485_p0;
reg   [63:0] grp_fu_485_p1;
reg   [63:0] grp_fu_491_p1;
wire    ap_block_pp0_stage5;
wire   [2:0] lshr_ln1_fu_616_p4;
wire   [10:0] add_ln_fu_626_p3;
wire   [1:0] tmp_2_fu_640_p4;
wire   [10:0] add_ln27_1_fu_650_p4;
wire   [6:0] lshr_ln27_1_fu_681_p4;
wire   [6:0] lshr_ln27_2_fu_705_p4;
reg   [1:0] grp_fu_451_opcode;
wire    ap_block_pp0_stage18_00001;
wire    ap_block_pp0_stage20_00001;
wire    ap_block_pp0_stage21_00001;
wire    ap_block_pp0_stage23_00001;
wire    ap_block_pp0_stage26_00001;
wire    ap_block_pp0_stage28_00001;
wire    ap_block_pp0_stage29_00001;
wire    ap_block_pp0_stage31_00001;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage25_00001;
wire    ap_block_pp0_stage27_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage19_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
reg   [1:0] grp_fu_455_opcode;
reg   [1:0] grp_fu_459_opcode;
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
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 fx_fu_94 = 64'd0;
#0 fy_fu_98 = 64'd0;
#0 fz_fu_102 = 64'd0;
#0 j_fu_106 = 5'd0;
#0 ap_done_reg = 1'b0;
end
md_kernel_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_451_p0),.din1(grp_fu_451_p1),.opcode(grp_fu_451_opcode),.ce(1'b1),.dout(grp_fu_451_p2));
md_kernel_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_455_p0),.din1(grp_fu_455_p1),.opcode(grp_fu_455_opcode),.ce(1'b1),.dout(grp_fu_455_p2));
md_kernel_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_459_p0),.din1(grp_fu_459_p1),.opcode(grp_fu_459_opcode),.ce(1'b1),.dout(grp_fu_459_p2));
md_kernel_dsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsub_64ns_64ns_64_8_full_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(i_x),.din1(grp_fu_463_p1),.ce(1'b1),.dout(grp_fu_463_p2));
md_kernel_dsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsub_64ns_64ns_64_8_full_dsp_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(i_y),.din1(grp_fu_467_p1),.ce(1'b1),.dout(grp_fu_467_p2));
md_kernel_dsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsub_64ns_64ns_64_8_full_dsp_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(i_z),.din1(grp_fu_471_p1),.ce(1'b1),.dout(grp_fu_471_p2));
md_kernel_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(reg_552),.din1(mul33_1_reg_1527),.ce(1'b1),.dout(grp_fu_477_p2));
md_kernel_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_481_p0),.din1(grp_fu_481_p1),.ce(1'b1),.dout(grp_fu_481_p2));
md_kernel_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_485_p0),.din1(grp_fu_485_p1),.ce(1'b1),.dout(grp_fu_485_p2));
md_kernel_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U10(.clk(ap_clk),.reset(ap_rst),.din0(64'd4607182418800017408),.din1(grp_fu_491_p1),.ce(1'b1),.dout(grp_fu_491_p2));
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage26_subdone) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
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
        if (((1'b0 == ap_block_pp0_stage26_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage26))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage26))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage26))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage26))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fx_fu_94 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        fx_fu_94 <= grp_fu_455_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fy_fu_98 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        fy_fu_98 <= grp_fu_459_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fz_fu_102 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        fz_fu_102 <= grp_fu_451_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_608_p3 == 1'd0))) begin
            j_fu_106 <= add_ln25_fu_666_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_106 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1_reg_1390 <= grp_fu_451_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        add20_2_reg_1380 <= grp_fu_451_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        add20_3_reg_1385 <= grp_fu_451_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add22_1_reg_1395 <= grp_fu_451_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add22_2_reg_1400 <= grp_fu_451_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add22_3_reg_1405 <= grp_fu_451_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delx_1_reg_1311 <= grp_fu_463_p2;
        delx_reg_1293 <= grp_fu_451_p2;
        dely_1_reg_1317 <= grp_fu_467_p2;
        dely_reg_1299 <= grp_fu_455_p2;
        delz_1_reg_1323 <= grp_fu_471_p2;
        delz_reg_1305 <= grp_fu_459_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delx_1_reg_1311_pp0_iter1_reg <= delx_1_reg_1311;
        delx_1_reg_1311_pp0_iter2_reg <= delx_1_reg_1311_pp0_iter1_reg;
        delx_1_reg_1311_pp0_iter3_reg <= delx_1_reg_1311_pp0_iter2_reg;
        delx_1_reg_1311_pp0_iter4_reg <= delx_1_reg_1311_pp0_iter3_reg;
        delx_reg_1293_pp0_iter1_reg <= delx_reg_1293;
        delx_reg_1293_pp0_iter2_reg <= delx_reg_1293_pp0_iter1_reg;
        delx_reg_1293_pp0_iter3_reg <= delx_reg_1293_pp0_iter2_reg;
        delx_reg_1293_pp0_iter4_reg <= delx_reg_1293_pp0_iter3_reg;
        dely_1_reg_1317_pp0_iter1_reg <= dely_1_reg_1317;
        dely_1_reg_1317_pp0_iter2_reg <= dely_1_reg_1317_pp0_iter1_reg;
        dely_1_reg_1317_pp0_iter3_reg <= dely_1_reg_1317_pp0_iter2_reg;
        dely_1_reg_1317_pp0_iter4_reg <= dely_1_reg_1317_pp0_iter3_reg;
        dely_reg_1299_pp0_iter1_reg <= dely_reg_1299;
        dely_reg_1299_pp0_iter2_reg <= dely_reg_1299_pp0_iter1_reg;
        dely_reg_1299_pp0_iter3_reg <= dely_reg_1299_pp0_iter2_reg;
        dely_reg_1299_pp0_iter4_reg <= dely_reg_1299_pp0_iter3_reg;
        delz_1_reg_1323_pp0_iter1_reg <= delz_1_reg_1323;
        delz_1_reg_1323_pp0_iter2_reg <= delz_1_reg_1323_pp0_iter1_reg;
        delz_1_reg_1323_pp0_iter3_reg <= delz_1_reg_1323_pp0_iter2_reg;
        delz_1_reg_1323_pp0_iter4_reg <= delz_1_reg_1323_pp0_iter3_reg;
        delz_reg_1305_pp0_iter1_reg <= delz_reg_1305;
        delz_reg_1305_pp0_iter2_reg <= delz_reg_1305_pp0_iter1_reg;
        delz_reg_1305_pp0_iter3_reg <= delz_reg_1305_pp0_iter2_reg;
        delz_reg_1305_pp0_iter4_reg <= delz_reg_1305_pp0_iter3_reg;
        fz_2_reg_1567 <= grp_fu_477_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delx_2_reg_1329 <= grp_fu_451_p2;
        delx_3_reg_1347 <= grp_fu_463_p2;
        dely_2_reg_1335 <= grp_fu_455_p2;
        dely_3_reg_1353 <= grp_fu_467_p2;
        delz_2_reg_1341 <= grp_fu_459_p2;
        delz_3_reg_1359 <= grp_fu_471_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delx_2_reg_1329_pp0_iter1_reg <= delx_2_reg_1329;
        delx_2_reg_1329_pp0_iter2_reg <= delx_2_reg_1329_pp0_iter1_reg;
        delx_2_reg_1329_pp0_iter3_reg <= delx_2_reg_1329_pp0_iter2_reg;
        delx_2_reg_1329_pp0_iter4_reg <= delx_2_reg_1329_pp0_iter3_reg;
        delx_3_reg_1347_pp0_iter1_reg <= delx_3_reg_1347;
        delx_3_reg_1347_pp0_iter2_reg <= delx_3_reg_1347_pp0_iter1_reg;
        delx_3_reg_1347_pp0_iter3_reg <= delx_3_reg_1347_pp0_iter2_reg;
        delx_3_reg_1347_pp0_iter4_reg <= delx_3_reg_1347_pp0_iter3_reg;
        dely_2_reg_1335_pp0_iter1_reg <= dely_2_reg_1335;
        dely_2_reg_1335_pp0_iter2_reg <= dely_2_reg_1335_pp0_iter1_reg;
        dely_2_reg_1335_pp0_iter3_reg <= dely_2_reg_1335_pp0_iter2_reg;
        dely_2_reg_1335_pp0_iter4_reg <= dely_2_reg_1335_pp0_iter3_reg;
        dely_3_reg_1353_pp0_iter1_reg <= dely_3_reg_1353;
        dely_3_reg_1353_pp0_iter2_reg <= dely_3_reg_1353_pp0_iter1_reg;
        dely_3_reg_1353_pp0_iter3_reg <= dely_3_reg_1353_pp0_iter2_reg;
        dely_3_reg_1353_pp0_iter4_reg <= dely_3_reg_1353_pp0_iter3_reg;
        delz_2_reg_1341_pp0_iter1_reg <= delz_2_reg_1341;
        delz_2_reg_1341_pp0_iter2_reg <= delz_2_reg_1341_pp0_iter1_reg;
        delz_2_reg_1341_pp0_iter3_reg <= delz_2_reg_1341_pp0_iter2_reg;
        delz_2_reg_1341_pp0_iter4_reg <= delz_2_reg_1341_pp0_iter3_reg;
        delz_3_reg_1359_pp0_iter1_reg <= delz_3_reg_1359;
        delz_3_reg_1359_pp0_iter2_reg <= delz_3_reg_1359_pp0_iter1_reg;
        delz_3_reg_1359_pp0_iter3_reg <= delz_3_reg_1359_pp0_iter2_reg;
        delz_3_reg_1359_pp0_iter4_reg <= delz_3_reg_1359_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        force_2_reg_1495 <= grp_fu_485_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        force_3_reg_1501 <= grp_fu_485_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        fx_1_reg_1557 <= grp_fu_455_p2;
        fy_1_reg_1562 <= grp_fu_459_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln27_3_reg_1096 <= {{NL_0_q0[7:1]}};
        lshr_ln27_4_reg_1108 <= {{NL_1_q0[7:1]}};
        r2inv_3_reg_1430_pp0_iter4_reg <= r2inv_3_reg_1430;
        trunc_ln27_1_reg_1052 <= trunc_ln27_1_fu_701_p1;
        trunc_ln27_2_reg_1089 <= trunc_ln27_2_fu_725_p1;
        trunc_ln27_3_reg_1101 <= trunc_ln27_3_fu_739_p1;
        trunc_ln27_reg_1015 <= trunc_ln27_fu_677_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        mul18_3_reg_1365 <= grp_fu_485_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        mul19_3_reg_1370 <= grp_fu_481_p2;
        mul21_3_reg_1375 <= grp_fu_485_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        mul25_1_reg_1465 <= grp_fu_485_p2;
        mul5_reg_1460 <= grp_fu_481_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        mul25_2_reg_1470 <= grp_fu_481_p2;
        mul25_3_reg_1475 <= grp_fu_485_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        mul29_2_reg_1532 <= grp_fu_481_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        mul29_3_reg_1542 <= grp_fu_485_p2;
        mul33_2_reg_1537 <= grp_fu_481_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        mul31_3_reg_1547 <= grp_fu_481_p2;
        mul33_3_reg_1552 <= grp_fu_485_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        mul33_1_reg_1527 <= grp_fu_485_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        mul4_reg_1517 <= grp_fu_481_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        r2inv_1_reg_1417 <= grp_fu_491_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        r2inv_1_reg_1417_pp0_iter3_reg <= r2inv_1_reg_1417;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        r2inv_2_reg_1423 <= grp_fu_491_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        r2inv_2_reg_1423_pp0_iter3_reg <= r2inv_2_reg_1423;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        r2inv_3_reg_1430 <= grp_fu_491_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        r2inv_reg_1410 <= grp_fu_491_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        r2inv_reg_1410_pp0_iter3_reg <= r2inv_reg_1410;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        r6inv_1_reg_1443 <= grp_fu_481_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        r6inv_2_reg_1449 <= grp_fu_481_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        r6inv_3_reg_1455 <= grp_fu_481_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        r6inv_reg_1437 <= grp_fu_481_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_496 <= grp_fu_481_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_503 <= grp_fu_485_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        reg_510 <= grp_fu_481_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        reg_516 <= grp_fu_485_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_522 <= grp_fu_481_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        reg_528 <= grp_fu_485_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_534 <= grp_fu_481_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        reg_540 <= grp_fu_485_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_546 <= grp_fu_481_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_552 <= grp_fu_451_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        reg_559 <= grp_fu_451_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_564 <= grp_fu_455_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_571 <= grp_fu_485_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)))) begin
        reg_578 <= grp_fu_481_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln29_1_reg_1128 <= select_ln29_1_fu_774_p3;
        select_ln29_reg_1113 <= select_ln29_fu_753_p3;
        select_ln30_1_reg_1133 <= select_ln30_1_fu_781_p3;
        select_ln30_reg_1118 <= select_ln30_fu_760_p3;
        select_ln31_1_reg_1138 <= select_ln31_1_fu_788_p3;
        select_ln31_reg_1123 <= select_ln31_fu_767_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln29_2_reg_1233 <= select_ln29_2_fu_837_p3;
        select_ln29_3_reg_1248 <= select_ln29_3_fu_858_p3;
        select_ln30_2_reg_1238 <= select_ln30_2_fu_844_p3;
        select_ln30_3_reg_1253 <= select_ln30_3_fu_865_p3;
        select_ln31_2_reg_1243 <= select_ln31_2_fu_851_p3;
        select_ln31_3_reg_1258 <= select_ln31_3_fu_872_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub26_2_reg_1485 <= grp_fu_451_p2;
        sub26_3_reg_1490 <= grp_fu_455_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        sub_reg_1480 <= grp_fu_451_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_991 <= ap_sig_allocacmp_j_1[32'd4];
        tmp_reg_991_pp0_iter1_reg <= tmp_reg_991;
        tmp_reg_991_pp0_iter2_reg <= tmp_reg_991_pp0_iter1_reg;
        tmp_reg_991_pp0_iter3_reg <= tmp_reg_991_pp0_iter2_reg;
        tmp_reg_991_pp0_iter4_reg <= tmp_reg_991_pp0_iter3_reg;
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
        NL_0_ce1_local = 1'b1;
    end else begin
        NL_0_ce1_local = 1'b0;
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
        NL_1_ce1_local = 1'b1;
    end else begin
        NL_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_991 == 1'd1) & (1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_condition_exit_pp0_iter0_stage31 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage31 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage26_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_reg_991_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        ap_condition_exit_pp0_iter4_stage26 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage26 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage26_subdone) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1 = 5'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_106;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage26_11001) & (tmp_reg_991_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        fx_out_ap_vld = 1'b1;
    end else begin
        fx_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage26_11001) & (tmp_reg_991_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        fy_out_ap_vld = 1'b1;
    end else begin
        fy_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage26_11001) & (tmp_reg_991_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        fz_out_ap_vld = 1'b1;
    end else begin
        fz_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_991 == 1'd0) & (1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_991 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_451_opcode = 2'd1;
end else if ((((tmp_reg_991 == 1'd0) & (1'b0 == ap_block_pp0_stage31_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((tmp_reg_991 == 1'd0) & (1'b0 == ap_block_pp0_stage29_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_991 == 1'd0) & (1'b0 == ap_block_pp0_stage28_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((tmp_reg_991 == 1'd0) & (1'b0 == ap_block_pp0_stage26_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((tmp_reg_991 == 1'd0) & (1'b0 == ap_block_pp0_stage23_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((tmp_reg_991 == 1'd0) & (1'b0 == ap_block_pp0_stage21_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((tmp_reg_991 == 1'd0) & (1'b0 == ap_block_pp0_stage20_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((tmp_reg_991 == 1'd0) & (1'b0 == ap_block_pp0_stage18_00001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage19_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage27_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage25_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_451_opcode = 2'd0;
    end else begin
        grp_fu_451_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_451_p0 = fz_2_reg_1567;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_451_p0 = fx_1_reg_1557;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_451_p0 = fz_fu_102;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_451_p0 = mul25_2_reg_1470;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_451_p0 = mul5_reg_1460;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_451_p0 = add20_3_reg_1385;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        grp_fu_451_p0 = add20_2_reg_1380;
    end else if ((((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)))) begin
        grp_fu_451_p0 = reg_559;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_451_p0 = reg_552;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_451_p0 = mul18_3_reg_1365;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_451_p0 = reg_534;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_451_p0 = reg_516;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_451_p0 = reg_496;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_451_p0 = i_x;
    end else begin
        grp_fu_451_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_451_p1 = mul33_3_reg_1552;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_451_p1 = mul33_2_reg_1537;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_451_p1 = mul29_2_reg_1532;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_451_p1 = reg_571;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_451_p1 = mul4_reg_1517;
    end else if ((((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_451_p1 = 64'd13835058055282163712;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_451_p1 = mul21_3_reg_1375;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        grp_fu_451_p1 = reg_546;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_451_p1 = reg_528;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_451_p1 = reg_510;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_451_p1 = mul19_3_reg_1370;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_451_p1 = reg_540;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_451_p1 = reg_522;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_451_p1 = reg_503;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_451_p1 = j_x_2_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_451_p1 = j_x_fu_813_p1;
    end else begin
        grp_fu_451_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_991 == 1'd0) & (1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_991 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_455_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage25_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage26_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_455_opcode = 2'd0;
    end else begin
        grp_fu_455_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_455_p0 = reg_552;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_455_p0 = reg_564;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_455_p0 = fy_1_reg_1562;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_455_p0 = fx_fu_94;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_455_p0 = mul25_3_reg_1475;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_455_p0 = mul25_1_reg_1465;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_455_p0 = i_y;
    end else begin
        grp_fu_455_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_455_p1 = mul29_3_reg_1542;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_455_p1 = reg_540;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_455_p1 = reg_578;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_455_p1 = reg_496;
    end else if ((((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_455_p1 = 64'd13835058055282163712;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_455_p1 = j_y_2_fu_883_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_455_p1 = j_y_fu_817_p1;
    end else begin
        grp_fu_455_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_991 == 1'd0) & (1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_991 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_459_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage26_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_459_opcode = 2'd0;
    end else begin
        grp_fu_459_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_459_p0 = reg_564;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_459_p0 = fy_fu_98;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_459_p0 = i_z;
    end else begin
        grp_fu_459_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_459_p1 = mul31_3_reg_1547;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_459_p1 = reg_503;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_459_p1 = j_z_2_fu_887_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_459_p1 = j_z_fu_821_p1;
    end else begin
        grp_fu_459_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_463_p1 = j_x_3_fu_891_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_463_p1 = j_x_1_fu_825_p1;
        end else begin
            grp_fu_463_p1 = 'bx;
        end
    end else begin
        grp_fu_463_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_467_p1 = j_y_3_fu_895_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_467_p1 = j_y_1_fu_829_p1;
        end else begin
            grp_fu_467_p1 = 'bx;
        end
    end else begin
        grp_fu_467_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_471_p1 = j_z_3_fu_899_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_471_p1 = j_z_1_fu_833_p1;
        end else begin
            grp_fu_471_p1 = 'bx;
        end
    end else begin
        grp_fu_471_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_481_p0 = dely_3_reg_1353_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_481_p0 = delz_2_reg_1341_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_481_p0 = delx_2_reg_1329_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_481_p0 = dely_1_reg_1317_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_481_p0 = delz_reg_1305_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_481_p0 = delx_reg_1293_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_481_p0 = r2inv_1_reg_1417_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_481_p0 = r6inv_1_reg_1443;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_481_p0 = r6inv_2_reg_1449;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_481_p0 = r6inv_reg_1437;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_481_p0 = reg_534;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_481_p0 = reg_522;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_481_p0 = reg_510;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_481_p0 = reg_496;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_481_p0 = r2inv_3_reg_1430;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_481_p0 = r2inv_2_reg_1423;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_481_p0 = r2inv_1_reg_1417;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        grp_fu_481_p0 = r2inv_reg_1410;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_481_p0 = dely_3_reg_1353;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_481_p0 = delz_2_reg_1341;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_481_p0 = delx_2_reg_1329;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_481_p0 = dely_1_reg_1317;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_481_p0 = delz_reg_1305;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_481_p0 = delx_reg_1293;
    end else begin
        grp_fu_481_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_481_p1 = force_3_reg_1501;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_481_p1 = force_2_reg_1495;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_481_p1 = reg_578;
    end else if ((((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        grp_fu_481_p1 = reg_571;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_481_p1 = reg_546;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_481_p1 = reg_564;
    end else if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_481_p1 = 64'd4609434218613702656;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_481_p1 = r2inv_3_reg_1430;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_481_p1 = r2inv_2_reg_1423;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)))) begin
        grp_fu_481_p1 = r2inv_1_reg_1417;
    end else if ((((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_481_p1 = r2inv_reg_1410;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_481_p1 = dely_3_reg_1353;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_481_p1 = delz_2_reg_1341;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_481_p1 = delx_2_reg_1329;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_481_p1 = dely_1_reg_1317;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_481_p1 = delz_reg_1305;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_481_p1 = delx_reg_1293;
    end else begin
        grp_fu_481_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_485_p0 = delz_3_reg_1359_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_485_p0 = delx_3_reg_1347_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_485_p0 = dely_2_reg_1335_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_485_p0 = delz_1_reg_1323_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_485_p0 = delx_1_reg_1311_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_485_p0 = dely_reg_1299_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_485_p0 = r2inv_3_reg_1430_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_485_p0 = r2inv_2_reg_1423_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_485_p0 = r2inv_reg_1410_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_485_p0 = r6inv_2_reg_1449;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_485_p0 = r6inv_reg_1437;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_485_p0 = r6inv_3_reg_1455;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_485_p0 = r6inv_1_reg_1443;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_485_p0 = delz_3_reg_1359;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_485_p0 = delx_3_reg_1347;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_485_p0 = dely_2_reg_1335;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_485_p0 = delz_1_reg_1323;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_485_p0 = delx_1_reg_1311;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_485_p0 = dely_reg_1299;
    end else begin
        grp_fu_485_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_485_p1 = force_3_reg_1501;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_485_p1 = force_2_reg_1495;
    end else if ((((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        grp_fu_485_p1 = reg_578;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_485_p1 = reg_571;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_485_p1 = reg_528;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_485_p1 = reg_516;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_485_p1 = reg_503;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_485_p1 = sub26_3_reg_1490;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_485_p1 = sub26_2_reg_1485;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_485_p1 = sub_reg_1480;
    end else if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_485_p1 = 64'd4609434218613702656;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_485_p1 = delz_3_reg_1359;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_485_p1 = delx_3_reg_1347;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_485_p1 = dely_2_reg_1335;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_485_p1 = delz_1_reg_1323;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_485_p1 = delx_1_reg_1311;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_485_p1 = dely_reg_1299;
    end else begin
        grp_fu_485_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_491_p1 = add22_3_reg_1405;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_491_p1 = add22_2_reg_1400;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_491_p1 = add22_1_reg_1395;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_491_p1 = add1_reg_1390;
        end else begin
            grp_fu_491_p1 = 'bx;
        end
    end else begin
        grp_fu_491_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_0_address0_local = zext_ln27_3_fu_804_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_x_0_address0_local = zext_ln27_1_fu_715_p1;
        end else begin
            position_x_0_address0_local = 'bx;
        end
    end else begin
        position_x_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_0_address1_local = zext_ln27_2_fu_795_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_x_0_address1_local = zext_ln27_fu_691_p1;
        end else begin
            position_x_0_address1_local = 'bx;
        end
    end else begin
        position_x_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_x_0_ce0_local = 1'b1;
    end else begin
        position_x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_x_0_ce1_local = 1'b1;
    end else begin
        position_x_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_1_address0_local = zext_ln27_3_fu_804_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_x_1_address0_local = zext_ln27_1_fu_715_p1;
        end else begin
            position_x_1_address0_local = 'bx;
        end
    end else begin
        position_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_1_address1_local = zext_ln27_2_fu_795_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_x_1_address1_local = zext_ln27_fu_691_p1;
        end else begin
            position_x_1_address1_local = 'bx;
        end
    end else begin
        position_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_x_1_ce0_local = 1'b1;
    end else begin
        position_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_x_1_ce1_local = 1'b1;
    end else begin
        position_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_0_address0_local = zext_ln27_3_fu_804_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_y_0_address0_local = zext_ln27_1_fu_715_p1;
        end else begin
            position_y_0_address0_local = 'bx;
        end
    end else begin
        position_y_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_0_address1_local = zext_ln27_2_fu_795_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_y_0_address1_local = zext_ln27_fu_691_p1;
        end else begin
            position_y_0_address1_local = 'bx;
        end
    end else begin
        position_y_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_y_0_ce0_local = 1'b1;
    end else begin
        position_y_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_y_0_ce1_local = 1'b1;
    end else begin
        position_y_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_1_address0_local = zext_ln27_3_fu_804_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_y_1_address0_local = zext_ln27_1_fu_715_p1;
        end else begin
            position_y_1_address0_local = 'bx;
        end
    end else begin
        position_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_1_address1_local = zext_ln27_2_fu_795_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_y_1_address1_local = zext_ln27_fu_691_p1;
        end else begin
            position_y_1_address1_local = 'bx;
        end
    end else begin
        position_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_y_1_ce0_local = 1'b1;
    end else begin
        position_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_y_1_ce1_local = 1'b1;
    end else begin
        position_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_0_address0_local = zext_ln27_3_fu_804_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_z_0_address0_local = zext_ln27_1_fu_715_p1;
        end else begin
            position_z_0_address0_local = 'bx;
        end
    end else begin
        position_z_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_0_address1_local = zext_ln27_2_fu_795_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_z_0_address1_local = zext_ln27_fu_691_p1;
        end else begin
            position_z_0_address1_local = 'bx;
        end
    end else begin
        position_z_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_z_0_ce0_local = 1'b1;
    end else begin
        position_z_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_z_0_ce1_local = 1'b1;
    end else begin
        position_z_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_1_address0_local = zext_ln27_3_fu_804_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_z_1_address0_local = zext_ln27_1_fu_715_p1;
        end else begin
            position_z_1_address0_local = 'bx;
        end
    end else begin
        position_z_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_1_address1_local = zext_ln27_2_fu_795_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_z_1_address1_local = zext_ln27_fu_691_p1;
        end else begin
            position_z_1_address1_local = 'bx;
        end
    end else begin
        position_z_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_z_1_ce0_local = 1'b1;
    end else begin
        position_z_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_z_1_ce1_local = 1'b1;
    end else begin
        position_z_1_ce1_local = 1'b0;
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
            if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage26))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
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
assign NL_0_address0 = zext_ln27_5_fu_660_p1;
assign NL_0_address1 = zext_ln27_4_fu_634_p1;
assign NL_0_ce0 = NL_0_ce0_local;
assign NL_0_ce1 = NL_0_ce1_local;
assign NL_1_address0 = zext_ln27_5_fu_660_p1;
assign NL_1_address1 = zext_ln27_4_fu_634_p1;
assign NL_1_ce0 = NL_1_ce0_local;
assign NL_1_ce1 = NL_1_ce1_local;
assign add_ln25_fu_666_p2 = (ap_sig_allocacmp_j_1 + 5'd4);
assign add_ln27_1_fu_650_p4 = {{{i}, {tmp_2_fu_640_p4}}, {1'd1}};
assign add_ln_fu_626_p3 = {{i}, {lshr_ln1_fu_616_p4}};
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
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage26_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_00001 = ~(1'b1 == 1'b1);
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
assign fx_out = fx_fu_94;
assign fy_out = fy_fu_98;
assign fz_out = fz_fu_102;
assign j_x_1_fu_825_p1 = select_ln29_1_reg_1128;
assign j_x_2_fu_879_p1 = select_ln29_2_reg_1233;
assign j_x_3_fu_891_p1 = select_ln29_3_reg_1248;
assign j_x_fu_813_p1 = select_ln29_reg_1113;
assign j_y_1_fu_829_p1 = select_ln30_1_reg_1133;
assign j_y_2_fu_883_p1 = select_ln30_2_reg_1238;
assign j_y_3_fu_895_p1 = select_ln30_3_reg_1253;
assign j_y_fu_817_p1 = select_ln30_reg_1118;
assign j_z_1_fu_833_p1 = select_ln31_1_reg_1138;
assign j_z_2_fu_887_p1 = select_ln31_2_reg_1243;
assign j_z_3_fu_899_p1 = select_ln31_3_reg_1258;
assign j_z_fu_821_p1 = select_ln31_reg_1123;
assign lshr_ln1_fu_616_p4 = {{ap_sig_allocacmp_j_1[3:1]}};
assign lshr_ln27_1_fu_681_p4 = {{NL_0_q1[7:1]}};
assign lshr_ln27_2_fu_705_p4 = {{NL_1_q1[7:1]}};
assign position_x_0_address0 = position_x_0_address0_local;
assign position_x_0_address1 = position_x_0_address1_local;
assign position_x_0_ce0 = position_x_0_ce0_local;
assign position_x_0_ce1 = position_x_0_ce1_local;
assign position_x_1_address0 = position_x_1_address0_local;
assign position_x_1_address1 = position_x_1_address1_local;
assign position_x_1_ce0 = position_x_1_ce0_local;
assign position_x_1_ce1 = position_x_1_ce1_local;
assign position_y_0_address0 = position_y_0_address0_local;
assign position_y_0_address1 = position_y_0_address1_local;
assign position_y_0_ce0 = position_y_0_ce0_local;
assign position_y_0_ce1 = position_y_0_ce1_local;
assign position_y_1_address0 = position_y_1_address0_local;
assign position_y_1_address1 = position_y_1_address1_local;
assign position_y_1_ce0 = position_y_1_ce0_local;
assign position_y_1_ce1 = position_y_1_ce1_local;
assign position_z_0_address0 = position_z_0_address0_local;
assign position_z_0_address1 = position_z_0_address1_local;
assign position_z_0_ce0 = position_z_0_ce0_local;
assign position_z_0_ce1 = position_z_0_ce1_local;
assign position_z_1_address0 = position_z_1_address0_local;
assign position_z_1_address1 = position_z_1_address1_local;
assign position_z_1_ce0 = position_z_1_ce0_local;
assign position_z_1_ce1 = position_z_1_ce1_local;
assign select_ln29_1_fu_774_p3 = ((trunc_ln27_1_reg_1052[0:0] == 1'b1) ? position_x_1_q0 : position_x_0_q0);
assign select_ln29_2_fu_837_p3 = ((trunc_ln27_2_reg_1089[0:0] == 1'b1) ? position_x_1_q1 : position_x_0_q1);
assign select_ln29_3_fu_858_p3 = ((trunc_ln27_3_reg_1101[0:0] == 1'b1) ? position_x_1_q0 : position_x_0_q0);
assign select_ln29_fu_753_p3 = ((trunc_ln27_reg_1015[0:0] == 1'b1) ? position_x_1_q1 : position_x_0_q1);
assign select_ln30_1_fu_781_p3 = ((trunc_ln27_1_reg_1052[0:0] == 1'b1) ? position_y_1_q0 : position_y_0_q0);
assign select_ln30_2_fu_844_p3 = ((trunc_ln27_2_reg_1089[0:0] == 1'b1) ? position_y_1_q1 : position_y_0_q1);
assign select_ln30_3_fu_865_p3 = ((trunc_ln27_3_reg_1101[0:0] == 1'b1) ? position_y_1_q0 : position_y_0_q0);
assign select_ln30_fu_760_p3 = ((trunc_ln27_reg_1015[0:0] == 1'b1) ? position_y_1_q1 : position_y_0_q1);
assign select_ln31_1_fu_788_p3 = ((trunc_ln27_1_reg_1052[0:0] == 1'b1) ? position_z_1_q0 : position_z_0_q0);
assign select_ln31_2_fu_851_p3 = ((trunc_ln27_2_reg_1089[0:0] == 1'b1) ? position_z_1_q1 : position_z_0_q1);
assign select_ln31_3_fu_872_p3 = ((trunc_ln27_3_reg_1101[0:0] == 1'b1) ? position_z_1_q0 : position_z_0_q0);
assign select_ln31_fu_767_p3 = ((trunc_ln27_reg_1015[0:0] == 1'b1) ? position_z_1_q1 : position_z_0_q1);
assign tmp_2_fu_640_p4 = {{ap_sig_allocacmp_j_1[3:2]}};
assign tmp_fu_608_p3 = ap_sig_allocacmp_j_1[32'd4];
assign trunc_ln27_1_fu_701_p1 = NL_1_q1[0:0];
assign trunc_ln27_2_fu_725_p1 = NL_0_q0[0:0];
assign trunc_ln27_3_fu_739_p1 = NL_1_q0[0:0];
assign trunc_ln27_fu_677_p1 = NL_0_q1[0:0];
assign zext_ln27_1_fu_715_p1 = lshr_ln27_2_fu_705_p4;
assign zext_ln27_2_fu_795_p1 = lshr_ln27_3_reg_1096;
assign zext_ln27_3_fu_804_p1 = lshr_ln27_4_reg_1108;
assign zext_ln27_4_fu_634_p1 = add_ln_fu_626_p3;
assign zext_ln27_5_fu_660_p1 = add_ln27_1_fu_650_p4;
assign zext_ln27_fu_691_p1 = lshr_ln27_1_fu_681_p4;
endmodule 
