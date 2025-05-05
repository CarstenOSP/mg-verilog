module md_kernel_md_kernel_Pipeline_loop_j (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,i,NL_0_address0,NL_0_ce0,NL_0_q0,position_x_0_address0,position_x_0_ce0,position_x_0_q0,position_x_0_address1,position_x_0_ce1,position_x_0_q1,position_x_1_address0,position_x_1_ce0,position_x_1_q0,position_x_1_address1,position_x_1_ce1,position_x_1_q1,position_x_2_address0,position_x_2_ce0,position_x_2_q0,position_x_2_address1,position_x_2_ce1,position_x_2_q1,position_x_3_address0,position_x_3_ce0,position_x_3_q0,position_x_3_address1,position_x_3_ce1,position_x_3_q1,position_y_0_address0,position_y_0_ce0,position_y_0_q0,position_y_0_address1,position_y_0_ce1,position_y_0_q1,position_y_1_address0,position_y_1_ce0,position_y_1_q0,position_y_1_address1,position_y_1_ce1,position_y_1_q1,position_y_2_address0,position_y_2_ce0,position_y_2_q0,position_y_2_address1,position_y_2_ce1,position_y_2_q1,position_y_3_address0,position_y_3_ce0,position_y_3_q0,position_y_3_address1,position_y_3_ce1,position_y_3_q1,position_z_0_address0,position_z_0_ce0,position_z_0_q0,position_z_0_address1,position_z_0_ce1,position_z_0_q1,position_z_1_address0,position_z_1_ce0,position_z_1_q0,position_z_1_address1,position_z_1_ce1,position_z_1_q1,position_z_2_address0,position_z_2_ce0,position_z_2_q0,position_z_2_address1,position_z_2_ce1,position_z_2_q1,position_z_3_address0,position_z_3_ce0,position_z_3_q0,position_z_3_address1,position_z_3_ce1,position_z_3_q1,i_x,i_y,i_z,NL_1_address0,NL_1_ce0,NL_1_q0,NL_2_address0,NL_2_ce0,NL_2_q0,NL_3_address0,NL_3_ce0,NL_3_q0,fz_out,fz_out_ap_vld,fy_out,fy_out_ap_vld,fx_out,fx_out_ap_vld); 
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
output  [9:0] NL_0_address0;
output   NL_0_ce0;
input  [31:0] NL_0_q0;
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
output  [9:0] NL_2_address0;
output   NL_2_ce0;
input  [31:0] NL_2_q0;
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
reg   [0:0] tmp_reg_1597;
reg    ap_condition_exit_pp0_iter0_stage31;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_751_p2;
reg   [63:0] reg_766;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] grp_fu_755_p2;
reg   [63:0] reg_773;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_780;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_786;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_792;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] reg_798;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_804;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_810;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] reg_816;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [63:0] grp_fu_721_p2;
reg   [63:0] reg_822;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_829;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] grp_fu_725_p2;
reg   [63:0] reg_834;
wire    ap_block_pp0_stage31_11001;
reg   [63:0] reg_841;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] reg_848;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_fu_878_p3;
reg   [0:0] tmp_reg_1597_pp0_iter1_reg;
reg   [0:0] tmp_reg_1597_pp0_iter2_reg;
reg   [0:0] tmp_reg_1597_pp0_iter3_reg;
reg   [0:0] tmp_reg_1597_pp0_iter4_reg;
wire   [1:0] trunc_ln27_fu_923_p1;
reg   [1:0] trunc_ln27_reg_1621;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [1:0] trunc_ln27_1_fu_953_p1;
reg   [1:0] trunc_ln27_1_reg_1688;
wire   [1:0] trunc_ln27_2_fu_983_p1;
reg   [1:0] trunc_ln27_2_reg_1755;
reg   [5:0] lshr_ln27_3_reg_1762;
wire   [1:0] trunc_ln27_3_fu_997_p1;
reg   [1:0] trunc_ln27_3_reg_1767;
reg   [5:0] lshr_ln27_4_reg_1774;
wire   [63:0] j_x_fu_1027_p11;
reg   [63:0] j_x_reg_1779;
wire   [63:0] j_y_fu_1066_p11;
reg   [63:0] j_y_reg_1784;
wire   [63:0] j_z_fu_1105_p11;
reg   [63:0] j_z_reg_1789;
wire   [63:0] j_x_1_fu_1144_p11;
reg   [63:0] j_x_1_reg_1794;
wire   [63:0] j_y_1_fu_1183_p11;
reg   [63:0] j_y_1_reg_1799;
wire   [63:0] j_z_1_fu_1222_p11;
reg   [63:0] j_z_1_reg_1804;
wire   [63:0] j_x_2_fu_1291_p11;
reg   [63:0] j_x_2_reg_1929;
wire   [63:0] j_y_2_fu_1330_p11;
reg   [63:0] j_y_2_reg_1934;
wire   [63:0] j_z_2_fu_1369_p11;
reg   [63:0] j_z_2_reg_1939;
wire   [63:0] j_x_3_fu_1408_p11;
reg   [63:0] j_x_3_reg_1944;
wire   [63:0] j_y_3_fu_1447_p11;
reg   [63:0] j_y_3_reg_1949;
wire   [63:0] j_z_3_fu_1486_p11;
reg   [63:0] j_z_3_reg_1954;
reg   [63:0] delx_reg_1959;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] delx_reg_1959_pp0_iter1_reg;
reg   [63:0] delx_reg_1959_pp0_iter2_reg;
reg   [63:0] delx_reg_1959_pp0_iter3_reg;
reg   [63:0] delx_reg_1959_pp0_iter4_reg;
reg   [63:0] dely_reg_1965;
reg   [63:0] dely_reg_1965_pp0_iter1_reg;
reg   [63:0] dely_reg_1965_pp0_iter2_reg;
reg   [63:0] dely_reg_1965_pp0_iter3_reg;
reg   [63:0] dely_reg_1965_pp0_iter4_reg;
wire   [63:0] grp_fu_729_p2;
reg   [63:0] delz_reg_1971;
reg   [63:0] delz_reg_1971_pp0_iter1_reg;
reg   [63:0] delz_reg_1971_pp0_iter2_reg;
reg   [63:0] delz_reg_1971_pp0_iter3_reg;
reg   [63:0] delz_reg_1971_pp0_iter4_reg;
wire   [63:0] grp_fu_733_p2;
reg   [63:0] delx_1_reg_1977;
reg   [63:0] delx_1_reg_1977_pp0_iter1_reg;
reg   [63:0] delx_1_reg_1977_pp0_iter2_reg;
reg   [63:0] delx_1_reg_1977_pp0_iter3_reg;
reg   [63:0] delx_1_reg_1977_pp0_iter4_reg;
wire   [63:0] grp_fu_737_p2;
reg   [63:0] dely_1_reg_1983;
reg   [63:0] dely_1_reg_1983_pp0_iter1_reg;
reg   [63:0] dely_1_reg_1983_pp0_iter2_reg;
reg   [63:0] dely_1_reg_1983_pp0_iter3_reg;
reg   [63:0] dely_1_reg_1983_pp0_iter4_reg;
wire   [63:0] grp_fu_741_p2;
reg   [63:0] delz_1_reg_1989;
reg   [63:0] delz_1_reg_1989_pp0_iter1_reg;
reg   [63:0] delz_1_reg_1989_pp0_iter2_reg;
reg   [63:0] delz_1_reg_1989_pp0_iter3_reg;
reg   [63:0] delz_1_reg_1989_pp0_iter4_reg;
reg   [63:0] delx_2_reg_1995;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] delx_2_reg_1995_pp0_iter1_reg;
reg   [63:0] delx_2_reg_1995_pp0_iter2_reg;
reg   [63:0] delx_2_reg_1995_pp0_iter3_reg;
reg   [63:0] delx_2_reg_1995_pp0_iter4_reg;
reg   [63:0] dely_2_reg_2001;
reg   [63:0] dely_2_reg_2001_pp0_iter1_reg;
reg   [63:0] dely_2_reg_2001_pp0_iter2_reg;
reg   [63:0] dely_2_reg_2001_pp0_iter3_reg;
reg   [63:0] dely_2_reg_2001_pp0_iter4_reg;
reg   [63:0] delz_2_reg_2007;
reg   [63:0] delz_2_reg_2007_pp0_iter1_reg;
reg   [63:0] delz_2_reg_2007_pp0_iter2_reg;
reg   [63:0] delz_2_reg_2007_pp0_iter3_reg;
reg   [63:0] delz_2_reg_2007_pp0_iter4_reg;
reg   [63:0] delx_3_reg_2013;
reg   [63:0] delx_3_reg_2013_pp0_iter1_reg;
reg   [63:0] delx_3_reg_2013_pp0_iter2_reg;
reg   [63:0] delx_3_reg_2013_pp0_iter3_reg;
reg   [63:0] delx_3_reg_2013_pp0_iter4_reg;
reg   [63:0] dely_3_reg_2019;
reg   [63:0] dely_3_reg_2019_pp0_iter1_reg;
reg   [63:0] dely_3_reg_2019_pp0_iter2_reg;
reg   [63:0] dely_3_reg_2019_pp0_iter3_reg;
reg   [63:0] dely_3_reg_2019_pp0_iter4_reg;
reg   [63:0] delz_3_reg_2025;
reg   [63:0] delz_3_reg_2025_pp0_iter1_reg;
reg   [63:0] delz_3_reg_2025_pp0_iter2_reg;
reg   [63:0] delz_3_reg_2025_pp0_iter3_reg;
reg   [63:0] delz_3_reg_2025_pp0_iter4_reg;
reg   [63:0] mul18_3_reg_2031;
reg   [63:0] mul19_3_reg_2036;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] mul21_3_reg_2041;
reg   [63:0] add20_2_reg_2046;
reg   [63:0] add20_3_reg_2051;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
reg   [63:0] add1_reg_2056;
reg   [63:0] add22_1_reg_2061;
reg   [63:0] add22_2_reg_2066;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] add22_3_reg_2071;
wire   [63:0] grp_fu_761_p2;
reg   [63:0] r2inv_reg_2076;
reg   [63:0] r2inv_reg_2076_pp0_iter3_reg;
reg   [63:0] r2inv_1_reg_2083;
reg   [63:0] r2inv_1_reg_2083_pp0_iter3_reg;
reg   [63:0] r2inv_2_reg_2089;
reg   [63:0] r2inv_2_reg_2089_pp0_iter3_reg;
reg   [63:0] r2inv_3_reg_2096;
reg   [63:0] r2inv_3_reg_2096_pp0_iter4_reg;
reg   [63:0] r6inv_reg_2103;
reg   [63:0] r6inv_1_reg_2109;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] r6inv_2_reg_2115;
reg   [63:0] r6inv_3_reg_2121;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] mul5_reg_2126;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] mul25_1_reg_2131;
reg   [63:0] mul25_2_reg_2136;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] mul25_3_reg_2141;
reg   [63:0] sub_reg_2146;
reg   [63:0] sub26_2_reg_2151;
reg   [63:0] sub26_3_reg_2156;
reg   [63:0] force_2_reg_2161;
reg   [63:0] force_3_reg_2167;
reg   [63:0] mul4_reg_2183;
reg   [63:0] mul33_1_reg_2193;
reg   [63:0] mul29_2_reg_2198;
reg   [63:0] mul33_2_reg_2203;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
reg   [63:0] mul29_3_reg_2208;
reg   [63:0] mul31_3_reg_2213;
reg   [63:0] mul33_3_reg_2218;
reg   [63:0] fx_1_reg_2223;
reg   [63:0] fy_1_reg_2228;
wire   [63:0] grp_fu_747_p2;
reg   [63:0] fz_2_reg_2233;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage26_subdone;
wire   [63:0] zext_ln27_4_fu_904_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_937_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_1_fu_967_p1;
wire   [63:0] zext_ln27_2_fu_1245_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_3_fu_1260_p1;
reg   [63:0] fx_fu_116;
wire    ap_loop_init;
wire    ap_block_pp0_stage26;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage26;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [63:0] fy_fu_120;
reg   [63:0] fz_fu_124;
wire    ap_block_pp0_stage27;
reg   [4:0] j_fu_128;
wire   [4:0] add_ln25_fu_912_p2;
reg   [4:0] ap_sig_allocacmp_j_1;
wire    ap_block_pp0_stage26_01001;
reg    NL_0_ce0_local;
reg    NL_1_ce0_local;
reg    NL_2_ce0_local;
reg    NL_3_ce0_local;
reg    position_x_0_ce1_local;
reg   [5:0] position_x_0_address1_local;
reg    position_x_0_ce0_local;
reg   [5:0] position_x_0_address0_local;
reg    position_x_1_ce1_local;
reg   [5:0] position_x_1_address1_local;
reg    position_x_1_ce0_local;
reg   [5:0] position_x_1_address0_local;
reg    position_x_2_ce1_local;
reg   [5:0] position_x_2_address1_local;
reg    position_x_2_ce0_local;
reg   [5:0] position_x_2_address0_local;
reg    position_x_3_ce1_local;
reg   [5:0] position_x_3_address1_local;
reg    position_x_3_ce0_local;
reg   [5:0] position_x_3_address0_local;
reg    position_y_0_ce1_local;
reg   [5:0] position_y_0_address1_local;
reg    position_y_0_ce0_local;
reg   [5:0] position_y_0_address0_local;
reg    position_y_1_ce1_local;
reg   [5:0] position_y_1_address1_local;
reg    position_y_1_ce0_local;
reg   [5:0] position_y_1_address0_local;
reg    position_y_2_ce1_local;
reg   [5:0] position_y_2_address1_local;
reg    position_y_2_ce0_local;
reg   [5:0] position_y_2_address0_local;
reg    position_y_3_ce1_local;
reg   [5:0] position_y_3_address1_local;
reg    position_y_3_ce0_local;
reg   [5:0] position_y_3_address0_local;
reg    position_z_0_ce1_local;
reg   [5:0] position_z_0_address1_local;
reg    position_z_0_ce0_local;
reg   [5:0] position_z_0_address0_local;
reg    position_z_1_ce1_local;
reg   [5:0] position_z_1_address1_local;
reg    position_z_1_ce0_local;
reg   [5:0] position_z_1_address0_local;
reg    position_z_2_ce1_local;
reg   [5:0] position_z_2_address1_local;
reg    position_z_2_ce0_local;
reg   [5:0] position_z_2_address0_local;
reg    position_z_3_ce1_local;
reg   [5:0] position_z_3_address1_local;
reg    position_z_3_ce0_local;
reg   [5:0] position_z_3_address0_local;
reg   [63:0] grp_fu_721_p0;
reg   [63:0] grp_fu_721_p1;
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
reg   [63:0] grp_fu_725_p0;
reg   [63:0] grp_fu_725_p1;
reg   [63:0] grp_fu_729_p0;
reg   [63:0] grp_fu_729_p1;
reg   [63:0] grp_fu_733_p1;
reg   [63:0] grp_fu_737_p1;
reg   [63:0] grp_fu_741_p1;
reg   [63:0] grp_fu_751_p0;
reg   [63:0] grp_fu_751_p1;
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
reg   [63:0] grp_fu_755_p0;
reg   [63:0] grp_fu_755_p1;
reg   [63:0] grp_fu_761_p1;
wire    ap_block_pp0_stage5;
wire   [1:0] lshr_ln1_fu_886_p4;
wire   [9:0] add_ln_fu_896_p3;
wire   [5:0] lshr_ln27_1_fu_927_p4;
wire   [5:0] lshr_ln27_2_fu_957_p4;
wire   [63:0] j_x_fu_1027_p2;
wire   [63:0] j_x_fu_1027_p4;
wire   [63:0] j_x_fu_1027_p6;
wire   [63:0] j_x_fu_1027_p8;
wire   [63:0] j_x_fu_1027_p9;
wire   [63:0] j_y_fu_1066_p2;
wire   [63:0] j_y_fu_1066_p4;
wire   [63:0] j_y_fu_1066_p6;
wire   [63:0] j_y_fu_1066_p8;
wire   [63:0] j_y_fu_1066_p9;
wire   [63:0] j_z_fu_1105_p2;
wire   [63:0] j_z_fu_1105_p4;
wire   [63:0] j_z_fu_1105_p6;
wire   [63:0] j_z_fu_1105_p8;
wire   [63:0] j_z_fu_1105_p9;
wire   [63:0] j_x_1_fu_1144_p2;
wire   [63:0] j_x_1_fu_1144_p4;
wire   [63:0] j_x_1_fu_1144_p6;
wire   [63:0] j_x_1_fu_1144_p8;
wire   [63:0] j_x_1_fu_1144_p9;
wire   [63:0] j_y_1_fu_1183_p2;
wire   [63:0] j_y_1_fu_1183_p4;
wire   [63:0] j_y_1_fu_1183_p6;
wire   [63:0] j_y_1_fu_1183_p8;
wire   [63:0] j_y_1_fu_1183_p9;
wire   [63:0] j_z_1_fu_1222_p2;
wire   [63:0] j_z_1_fu_1222_p4;
wire   [63:0] j_z_1_fu_1222_p6;
wire   [63:0] j_z_1_fu_1222_p8;
wire   [63:0] j_z_1_fu_1222_p9;
wire   [63:0] j_x_2_fu_1291_p2;
wire   [63:0] j_x_2_fu_1291_p4;
wire   [63:0] j_x_2_fu_1291_p6;
wire   [63:0] j_x_2_fu_1291_p8;
wire   [63:0] j_x_2_fu_1291_p9;
wire   [63:0] j_y_2_fu_1330_p2;
wire   [63:0] j_y_2_fu_1330_p4;
wire   [63:0] j_y_2_fu_1330_p6;
wire   [63:0] j_y_2_fu_1330_p8;
wire   [63:0] j_y_2_fu_1330_p9;
wire   [63:0] j_z_2_fu_1369_p2;
wire   [63:0] j_z_2_fu_1369_p4;
wire   [63:0] j_z_2_fu_1369_p6;
wire   [63:0] j_z_2_fu_1369_p8;
wire   [63:0] j_z_2_fu_1369_p9;
wire   [63:0] j_x_3_fu_1408_p2;
wire   [63:0] j_x_3_fu_1408_p4;
wire   [63:0] j_x_3_fu_1408_p6;
wire   [63:0] j_x_3_fu_1408_p8;
wire   [63:0] j_x_3_fu_1408_p9;
wire   [63:0] j_y_3_fu_1447_p2;
wire   [63:0] j_y_3_fu_1447_p4;
wire   [63:0] j_y_3_fu_1447_p6;
wire   [63:0] j_y_3_fu_1447_p8;
wire   [63:0] j_y_3_fu_1447_p9;
wire   [63:0] j_z_3_fu_1486_p2;
wire   [63:0] j_z_3_fu_1486_p4;
wire   [63:0] j_z_3_fu_1486_p6;
wire   [63:0] j_z_3_fu_1486_p8;
wire   [63:0] j_z_3_fu_1486_p9;
reg   [1:0] grp_fu_721_opcode;
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
reg   [1:0] grp_fu_725_opcode;
reg   [1:0] grp_fu_729_opcode;
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
wire   [1:0] j_x_fu_1027_p1;
wire   [1:0] j_x_fu_1027_p3;
wire  signed [1:0] j_x_fu_1027_p5;
wire  signed [1:0] j_x_fu_1027_p7;
wire   [1:0] j_y_fu_1066_p1;
wire   [1:0] j_y_fu_1066_p3;
wire  signed [1:0] j_y_fu_1066_p5;
wire  signed [1:0] j_y_fu_1066_p7;
wire   [1:0] j_z_fu_1105_p1;
wire   [1:0] j_z_fu_1105_p3;
wire  signed [1:0] j_z_fu_1105_p5;
wire  signed [1:0] j_z_fu_1105_p7;
wire   [1:0] j_x_1_fu_1144_p1;
wire   [1:0] j_x_1_fu_1144_p3;
wire  signed [1:0] j_x_1_fu_1144_p5;
wire  signed [1:0] j_x_1_fu_1144_p7;
wire   [1:0] j_y_1_fu_1183_p1;
wire   [1:0] j_y_1_fu_1183_p3;
wire  signed [1:0] j_y_1_fu_1183_p5;
wire  signed [1:0] j_y_1_fu_1183_p7;
wire   [1:0] j_z_1_fu_1222_p1;
wire   [1:0] j_z_1_fu_1222_p3;
wire  signed [1:0] j_z_1_fu_1222_p5;
wire  signed [1:0] j_z_1_fu_1222_p7;
wire   [1:0] j_x_2_fu_1291_p1;
wire   [1:0] j_x_2_fu_1291_p3;
wire  signed [1:0] j_x_2_fu_1291_p5;
wire  signed [1:0] j_x_2_fu_1291_p7;
wire   [1:0] j_y_2_fu_1330_p1;
wire   [1:0] j_y_2_fu_1330_p3;
wire  signed [1:0] j_y_2_fu_1330_p5;
wire  signed [1:0] j_y_2_fu_1330_p7;
wire   [1:0] j_z_2_fu_1369_p1;
wire   [1:0] j_z_2_fu_1369_p3;
wire  signed [1:0] j_z_2_fu_1369_p5;
wire  signed [1:0] j_z_2_fu_1369_p7;
wire   [1:0] j_x_3_fu_1408_p1;
wire   [1:0] j_x_3_fu_1408_p3;
wire  signed [1:0] j_x_3_fu_1408_p5;
wire  signed [1:0] j_x_3_fu_1408_p7;
wire   [1:0] j_y_3_fu_1447_p1;
wire   [1:0] j_y_3_fu_1447_p3;
wire  signed [1:0] j_y_3_fu_1447_p5;
wire  signed [1:0] j_y_3_fu_1447_p7;
wire   [1:0] j_z_3_fu_1486_p1;
wire   [1:0] j_z_3_fu_1486_p3;
wire  signed [1:0] j_z_3_fu_1486_p5;
wire  signed [1:0] j_z_3_fu_1486_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 fx_fu_116 = 64'd0;
#0 fy_fu_120 = 64'd0;
#0 fz_fu_124 = 64'd0;
#0 j_fu_128 = 5'd0;
#0 ap_done_reg = 1'b0;
end
md_kernel_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_721_p0),.din1(grp_fu_721_p1),.opcode(grp_fu_721_opcode),.ce(1'b1),.dout(grp_fu_721_p2));
md_kernel_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_725_p0),.din1(grp_fu_725_p1),.opcode(grp_fu_725_opcode),.ce(1'b1),.dout(grp_fu_725_p2));
md_kernel_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_729_p0),.din1(grp_fu_729_p1),.opcode(grp_fu_729_opcode),.ce(1'b1),.dout(grp_fu_729_p2));
md_kernel_dsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsub_64ns_64ns_64_8_full_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(i_x),.din1(grp_fu_733_p1),.ce(1'b1),.dout(grp_fu_733_p2));
md_kernel_dsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsub_64ns_64ns_64_8_full_dsp_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(i_y),.din1(grp_fu_737_p1),.ce(1'b1),.dout(grp_fu_737_p2));
md_kernel_dsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsub_64ns_64ns_64_8_full_dsp_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(i_z),.din1(grp_fu_741_p1),.ce(1'b1),.dout(grp_fu_741_p2));
md_kernel_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(reg_822),.din1(mul33_1_reg_2193),.ce(1'b1),.dout(grp_fu_747_p2));
md_kernel_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_751_p0),.din1(grp_fu_751_p1),.ce(1'b1),.dout(grp_fu_751_p2));
md_kernel_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_755_p0),.din1(grp_fu_755_p1),.ce(1'b1),.dout(grp_fu_755_p2));
md_kernel_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U10(.clk(ap_clk),.reset(ap_rst),.din0(64'd4607182418800017408),.din1(grp_fu_761_p1),.ce(1'b1),.dout(grp_fu_761_p2));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U11(.din0(j_x_fu_1027_p2),.din1(j_x_fu_1027_p4),.din2(j_x_fu_1027_p6),.din3(j_x_fu_1027_p8),.def(j_x_fu_1027_p9),.sel(trunc_ln27_reg_1621),.dout(j_x_fu_1027_p11));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U12(.din0(j_y_fu_1066_p2),.din1(j_y_fu_1066_p4),.din2(j_y_fu_1066_p6),.din3(j_y_fu_1066_p8),.def(j_y_fu_1066_p9),.sel(trunc_ln27_reg_1621),.dout(j_y_fu_1066_p11));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U13(.din0(j_z_fu_1105_p2),.din1(j_z_fu_1105_p4),.din2(j_z_fu_1105_p6),.din3(j_z_fu_1105_p8),.def(j_z_fu_1105_p9),.sel(trunc_ln27_reg_1621),.dout(j_z_fu_1105_p11));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U14(.din0(j_x_1_fu_1144_p2),.din1(j_x_1_fu_1144_p4),.din2(j_x_1_fu_1144_p6),.din3(j_x_1_fu_1144_p8),.def(j_x_1_fu_1144_p9),.sel(trunc_ln27_1_reg_1688),.dout(j_x_1_fu_1144_p11));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U15(.din0(j_y_1_fu_1183_p2),.din1(j_y_1_fu_1183_p4),.din2(j_y_1_fu_1183_p6),.din3(j_y_1_fu_1183_p8),.def(j_y_1_fu_1183_p9),.sel(trunc_ln27_1_reg_1688),.dout(j_y_1_fu_1183_p11));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U16(.din0(j_z_1_fu_1222_p2),.din1(j_z_1_fu_1222_p4),.din2(j_z_1_fu_1222_p6),.din3(j_z_1_fu_1222_p8),.def(j_z_1_fu_1222_p9),.sel(trunc_ln27_1_reg_1688),.dout(j_z_1_fu_1222_p11));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U17(.din0(j_x_2_fu_1291_p2),.din1(j_x_2_fu_1291_p4),.din2(j_x_2_fu_1291_p6),.din3(j_x_2_fu_1291_p8),.def(j_x_2_fu_1291_p9),.sel(trunc_ln27_2_reg_1755),.dout(j_x_2_fu_1291_p11));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U18(.din0(j_y_2_fu_1330_p2),.din1(j_y_2_fu_1330_p4),.din2(j_y_2_fu_1330_p6),.din3(j_y_2_fu_1330_p8),.def(j_y_2_fu_1330_p9),.sel(trunc_ln27_2_reg_1755),.dout(j_y_2_fu_1330_p11));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U19(.din0(j_z_2_fu_1369_p2),.din1(j_z_2_fu_1369_p4),.din2(j_z_2_fu_1369_p6),.din3(j_z_2_fu_1369_p8),.def(j_z_2_fu_1369_p9),.sel(trunc_ln27_2_reg_1755),.dout(j_z_2_fu_1369_p11));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U20(.din0(j_x_3_fu_1408_p2),.din1(j_x_3_fu_1408_p4),.din2(j_x_3_fu_1408_p6),.din3(j_x_3_fu_1408_p8),.def(j_x_3_fu_1408_p9),.sel(trunc_ln27_3_reg_1767),.dout(j_x_3_fu_1408_p11));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U21(.din0(j_y_3_fu_1447_p2),.din1(j_y_3_fu_1447_p4),.din2(j_y_3_fu_1447_p6),.din3(j_y_3_fu_1447_p8),.def(j_y_3_fu_1447_p9),.sel(trunc_ln27_3_reg_1767),.dout(j_y_3_fu_1447_p11));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U22(.din0(j_z_3_fu_1486_p2),.din1(j_z_3_fu_1486_p4),.din2(j_z_3_fu_1486_p6),.din3(j_z_3_fu_1486_p8),.def(j_z_3_fu_1486_p9),.sel(trunc_ln27_3_reg_1767),.dout(j_z_3_fu_1486_p11));
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
        end else if (((1'b0 == ap_block_pp0_stage26_subdone) & (1'b1 == ap_CS_fsm_pp0_stage26) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage26) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage26) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage26) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage26) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fx_fu_116 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        fx_fu_116 <= grp_fu_725_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fy_fu_120 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        fy_fu_120 <= grp_fu_729_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fz_fu_124 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        fz_fu_124 <= grp_fu_721_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_878_p3 == 1'd0))) begin
            j_fu_128 <= add_ln25_fu_912_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_128 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1_reg_2056 <= grp_fu_721_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        add20_2_reg_2046 <= grp_fu_721_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        add20_3_reg_2051 <= grp_fu_721_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add22_1_reg_2061 <= grp_fu_721_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add22_2_reg_2066 <= grp_fu_721_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add22_3_reg_2071 <= grp_fu_721_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delx_1_reg_1977 <= grp_fu_733_p2;
        delx_reg_1959 <= grp_fu_721_p2;
        dely_1_reg_1983 <= grp_fu_737_p2;
        dely_reg_1965 <= grp_fu_725_p2;
        delz_1_reg_1989 <= grp_fu_741_p2;
        delz_reg_1971 <= grp_fu_729_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delx_1_reg_1977_pp0_iter1_reg <= delx_1_reg_1977;
        delx_1_reg_1977_pp0_iter2_reg <= delx_1_reg_1977_pp0_iter1_reg;
        delx_1_reg_1977_pp0_iter3_reg <= delx_1_reg_1977_pp0_iter2_reg;
        delx_1_reg_1977_pp0_iter4_reg <= delx_1_reg_1977_pp0_iter3_reg;
        delx_reg_1959_pp0_iter1_reg <= delx_reg_1959;
        delx_reg_1959_pp0_iter2_reg <= delx_reg_1959_pp0_iter1_reg;
        delx_reg_1959_pp0_iter3_reg <= delx_reg_1959_pp0_iter2_reg;
        delx_reg_1959_pp0_iter4_reg <= delx_reg_1959_pp0_iter3_reg;
        dely_1_reg_1983_pp0_iter1_reg <= dely_1_reg_1983;
        dely_1_reg_1983_pp0_iter2_reg <= dely_1_reg_1983_pp0_iter1_reg;
        dely_1_reg_1983_pp0_iter3_reg <= dely_1_reg_1983_pp0_iter2_reg;
        dely_1_reg_1983_pp0_iter4_reg <= dely_1_reg_1983_pp0_iter3_reg;
        dely_reg_1965_pp0_iter1_reg <= dely_reg_1965;
        dely_reg_1965_pp0_iter2_reg <= dely_reg_1965_pp0_iter1_reg;
        dely_reg_1965_pp0_iter3_reg <= dely_reg_1965_pp0_iter2_reg;
        dely_reg_1965_pp0_iter4_reg <= dely_reg_1965_pp0_iter3_reg;
        delz_1_reg_1989_pp0_iter1_reg <= delz_1_reg_1989;
        delz_1_reg_1989_pp0_iter2_reg <= delz_1_reg_1989_pp0_iter1_reg;
        delz_1_reg_1989_pp0_iter3_reg <= delz_1_reg_1989_pp0_iter2_reg;
        delz_1_reg_1989_pp0_iter4_reg <= delz_1_reg_1989_pp0_iter3_reg;
        delz_reg_1971_pp0_iter1_reg <= delz_reg_1971;
        delz_reg_1971_pp0_iter2_reg <= delz_reg_1971_pp0_iter1_reg;
        delz_reg_1971_pp0_iter3_reg <= delz_reg_1971_pp0_iter2_reg;
        delz_reg_1971_pp0_iter4_reg <= delz_reg_1971_pp0_iter3_reg;
        fz_2_reg_2233 <= grp_fu_747_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delx_2_reg_1995 <= grp_fu_721_p2;
        delx_3_reg_2013 <= grp_fu_733_p2;
        dely_2_reg_2001 <= grp_fu_725_p2;
        dely_3_reg_2019 <= grp_fu_737_p2;
        delz_2_reg_2007 <= grp_fu_729_p2;
        delz_3_reg_2025 <= grp_fu_741_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delx_2_reg_1995_pp0_iter1_reg <= delx_2_reg_1995;
        delx_2_reg_1995_pp0_iter2_reg <= delx_2_reg_1995_pp0_iter1_reg;
        delx_2_reg_1995_pp0_iter3_reg <= delx_2_reg_1995_pp0_iter2_reg;
        delx_2_reg_1995_pp0_iter4_reg <= delx_2_reg_1995_pp0_iter3_reg;
        delx_3_reg_2013_pp0_iter1_reg <= delx_3_reg_2013;
        delx_3_reg_2013_pp0_iter2_reg <= delx_3_reg_2013_pp0_iter1_reg;
        delx_3_reg_2013_pp0_iter3_reg <= delx_3_reg_2013_pp0_iter2_reg;
        delx_3_reg_2013_pp0_iter4_reg <= delx_3_reg_2013_pp0_iter3_reg;
        dely_2_reg_2001_pp0_iter1_reg <= dely_2_reg_2001;
        dely_2_reg_2001_pp0_iter2_reg <= dely_2_reg_2001_pp0_iter1_reg;
        dely_2_reg_2001_pp0_iter3_reg <= dely_2_reg_2001_pp0_iter2_reg;
        dely_2_reg_2001_pp0_iter4_reg <= dely_2_reg_2001_pp0_iter3_reg;
        dely_3_reg_2019_pp0_iter1_reg <= dely_3_reg_2019;
        dely_3_reg_2019_pp0_iter2_reg <= dely_3_reg_2019_pp0_iter1_reg;
        dely_3_reg_2019_pp0_iter3_reg <= dely_3_reg_2019_pp0_iter2_reg;
        dely_3_reg_2019_pp0_iter4_reg <= dely_3_reg_2019_pp0_iter3_reg;
        delz_2_reg_2007_pp0_iter1_reg <= delz_2_reg_2007;
        delz_2_reg_2007_pp0_iter2_reg <= delz_2_reg_2007_pp0_iter1_reg;
        delz_2_reg_2007_pp0_iter3_reg <= delz_2_reg_2007_pp0_iter2_reg;
        delz_2_reg_2007_pp0_iter4_reg <= delz_2_reg_2007_pp0_iter3_reg;
        delz_3_reg_2025_pp0_iter1_reg <= delz_3_reg_2025;
        delz_3_reg_2025_pp0_iter2_reg <= delz_3_reg_2025_pp0_iter1_reg;
        delz_3_reg_2025_pp0_iter3_reg <= delz_3_reg_2025_pp0_iter2_reg;
        delz_3_reg_2025_pp0_iter4_reg <= delz_3_reg_2025_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        force_2_reg_2161 <= grp_fu_755_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        force_3_reg_2167 <= grp_fu_755_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        fx_1_reg_2223 <= grp_fu_725_p2;
        fy_1_reg_2228 <= grp_fu_729_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_x_1_reg_1794 <= j_x_1_fu_1144_p11;
        j_x_reg_1779 <= j_x_fu_1027_p11;
        j_y_1_reg_1799 <= j_y_1_fu_1183_p11;
        j_y_reg_1784 <= j_y_fu_1066_p11;
        j_z_1_reg_1804 <= j_z_1_fu_1222_p11;
        j_z_reg_1789 <= j_z_fu_1105_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        j_x_2_reg_1929 <= j_x_2_fu_1291_p11;
        j_x_3_reg_1944 <= j_x_3_fu_1408_p11;
        j_y_2_reg_1934 <= j_y_2_fu_1330_p11;
        j_y_3_reg_1949 <= j_y_3_fu_1447_p11;
        j_z_2_reg_1939 <= j_z_2_fu_1369_p11;
        j_z_3_reg_1954 <= j_z_3_fu_1486_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln27_3_reg_1762 <= {{NL_2_q0[7:2]}};
        lshr_ln27_4_reg_1774 <= {{NL_3_q0[7:2]}};
        r2inv_3_reg_2096_pp0_iter4_reg <= r2inv_3_reg_2096;
        trunc_ln27_1_reg_1688 <= trunc_ln27_1_fu_953_p1;
        trunc_ln27_2_reg_1755 <= trunc_ln27_2_fu_983_p1;
        trunc_ln27_3_reg_1767 <= trunc_ln27_3_fu_997_p1;
        trunc_ln27_reg_1621 <= trunc_ln27_fu_923_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        mul18_3_reg_2031 <= grp_fu_755_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        mul19_3_reg_2036 <= grp_fu_751_p2;
        mul21_3_reg_2041 <= grp_fu_755_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        mul25_1_reg_2131 <= grp_fu_755_p2;
        mul5_reg_2126 <= grp_fu_751_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        mul25_2_reg_2136 <= grp_fu_751_p2;
        mul25_3_reg_2141 <= grp_fu_755_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        mul29_2_reg_2198 <= grp_fu_751_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        mul29_3_reg_2208 <= grp_fu_755_p2;
        mul33_2_reg_2203 <= grp_fu_751_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        mul31_3_reg_2213 <= grp_fu_751_p2;
        mul33_3_reg_2218 <= grp_fu_755_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        mul33_1_reg_2193 <= grp_fu_755_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        mul4_reg_2183 <= grp_fu_751_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        r2inv_1_reg_2083 <= grp_fu_761_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        r2inv_1_reg_2083_pp0_iter3_reg <= r2inv_1_reg_2083;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        r2inv_2_reg_2089 <= grp_fu_761_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        r2inv_2_reg_2089_pp0_iter3_reg <= r2inv_2_reg_2089;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        r2inv_3_reg_2096 <= grp_fu_761_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        r2inv_reg_2076 <= grp_fu_761_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        r2inv_reg_2076_pp0_iter3_reg <= r2inv_reg_2076;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        r6inv_1_reg_2109 <= grp_fu_751_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        r6inv_2_reg_2115 <= grp_fu_751_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        r6inv_3_reg_2121 <= grp_fu_751_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        r6inv_reg_2103 <= grp_fu_751_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_766 <= grp_fu_751_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_773 <= grp_fu_755_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        reg_780 <= grp_fu_751_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        reg_786 <= grp_fu_755_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_792 <= grp_fu_751_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        reg_798 <= grp_fu_755_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_804 <= grp_fu_751_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        reg_810 <= grp_fu_755_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_816 <= grp_fu_751_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_822 <= grp_fu_721_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        reg_829 <= grp_fu_721_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_834 <= grp_fu_725_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_841 <= grp_fu_755_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)))) begin
        reg_848 <= grp_fu_751_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub26_2_reg_2151 <= grp_fu_721_p2;
        sub26_3_reg_2156 <= grp_fu_725_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        sub_reg_2146 <= grp_fu_721_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_1597 <= ap_sig_allocacmp_j_1[32'd4];
        tmp_reg_1597_pp0_iter1_reg <= tmp_reg_1597;
        tmp_reg_1597_pp0_iter2_reg <= tmp_reg_1597_pp0_iter1_reg;
        tmp_reg_1597_pp0_iter3_reg <= tmp_reg_1597_pp0_iter2_reg;
        tmp_reg_1597_pp0_iter4_reg <= tmp_reg_1597_pp0_iter3_reg;
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
    if (((tmp_reg_1597 == 1'd1) & (1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_condition_exit_pp0_iter0_stage31 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage31 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage26_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_reg_1597_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        ap_condition_exit_pp0_iter4_stage26 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage26 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage26_subdone) & (1'b1 == ap_CS_fsm_pp0_stage26) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
        ap_sig_allocacmp_j_1 = j_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (tmp_reg_1597_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage26) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
        fx_out_ap_vld = 1'b1;
    end else begin
        fx_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (tmp_reg_1597_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage26) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
        fy_out_ap_vld = 1'b1;
    end else begin
        fy_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (tmp_reg_1597_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage26) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
        fz_out_ap_vld = 1'b1;
    end else begin
        fz_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_1597 == 1'd0) & (1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1597 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_721_opcode = 2'd1;
end else if ((((tmp_reg_1597 == 1'd0) & (1'b0 == ap_block_pp0_stage31_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((tmp_reg_1597 == 1'd0) & (1'b0 == ap_block_pp0_stage29_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_1597 == 1'd0) & (1'b0 == ap_block_pp0_stage28_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((tmp_reg_1597 == 1'd0) & (1'b0 == ap_block_pp0_stage26_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((tmp_reg_1597 == 1'd0) & (1'b0 == ap_block_pp0_stage23_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((tmp_reg_1597 == 1'd0) & (1'b0 == ap_block_pp0_stage21_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((tmp_reg_1597 == 1'd0) & (1'b0 == ap_block_pp0_stage20_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((tmp_reg_1597 == 1'd0) & (1'b0 == ap_block_pp0_stage18_00001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage19_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage27_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage25_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_721_opcode = 2'd0;
    end else begin
        grp_fu_721_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_721_p0 = fz_2_reg_2233;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_721_p0 = fx_1_reg_2223;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_721_p0 = fz_fu_124;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_721_p0 = mul25_2_reg_2136;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_721_p0 = mul5_reg_2126;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_721_p0 = add20_3_reg_2051;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        grp_fu_721_p0 = add20_2_reg_2046;
    end else if ((((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)))) begin
        grp_fu_721_p0 = reg_829;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_721_p0 = reg_822;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_721_p0 = mul18_3_reg_2031;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_721_p0 = reg_804;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_721_p0 = reg_786;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_721_p0 = reg_766;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_721_p0 = i_x;
    end else begin
        grp_fu_721_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_721_p1 = mul33_3_reg_2218;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_721_p1 = mul33_2_reg_2203;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_721_p1 = mul29_2_reg_2198;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_721_p1 = reg_841;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_721_p1 = mul4_reg_2183;
    end else if ((((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_721_p1 = 64'd13835058055282163712;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_721_p1 = mul21_3_reg_2041;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        grp_fu_721_p1 = reg_816;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_721_p1 = reg_798;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_721_p1 = reg_780;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_721_p1 = mul19_3_reg_2036;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_721_p1 = reg_810;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_721_p1 = reg_792;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_721_p1 = reg_773;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_721_p1 = j_x_2_reg_1929;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_721_p1 = j_x_reg_1779;
    end else begin
        grp_fu_721_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1597 == 1'd0) & (1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1597 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_725_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage25_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage26_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_725_opcode = 2'd0;
    end else begin
        grp_fu_725_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_725_p0 = reg_822;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_725_p0 = reg_834;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_725_p0 = fy_1_reg_2228;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_725_p0 = fx_fu_116;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_725_p0 = mul25_3_reg_2141;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_725_p0 = mul25_1_reg_2131;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_725_p0 = i_y;
    end else begin
        grp_fu_725_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_725_p1 = mul29_3_reg_2208;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_725_p1 = reg_810;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_725_p1 = reg_848;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_725_p1 = reg_766;
    end else if ((((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_725_p1 = 64'd13835058055282163712;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_725_p1 = j_y_2_reg_1934;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_725_p1 = j_y_reg_1784;
    end else begin
        grp_fu_725_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_1597 == 1'd0) & (1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_1597 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_729_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage26_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_729_opcode = 2'd0;
    end else begin
        grp_fu_729_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_729_p0 = reg_834;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_729_p0 = fy_fu_120;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_729_p0 = i_z;
    end else begin
        grp_fu_729_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_729_p1 = mul31_3_reg_2213;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_729_p1 = reg_773;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_729_p1 = j_z_2_reg_1939;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_729_p1 = j_z_reg_1789;
    end else begin
        grp_fu_729_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_733_p1 = j_x_3_reg_1944;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_733_p1 = j_x_1_reg_1794;
        end else begin
            grp_fu_733_p1 = 'bx;
        end
    end else begin
        grp_fu_733_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_737_p1 = j_y_3_reg_1949;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_737_p1 = j_y_1_reg_1799;
        end else begin
            grp_fu_737_p1 = 'bx;
        end
    end else begin
        grp_fu_737_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_741_p1 = j_z_3_reg_1954;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_741_p1 = j_z_1_reg_1804;
        end else begin
            grp_fu_741_p1 = 'bx;
        end
    end else begin
        grp_fu_741_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_751_p0 = dely_3_reg_2019_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_751_p0 = delz_2_reg_2007_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_751_p0 = delx_2_reg_1995_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_751_p0 = dely_1_reg_1983_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_751_p0 = delz_reg_1971_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_751_p0 = delx_reg_1959_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_751_p0 = r2inv_1_reg_2083_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_751_p0 = r6inv_1_reg_2109;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_751_p0 = r6inv_2_reg_2115;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_751_p0 = r6inv_reg_2103;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_751_p0 = reg_804;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_751_p0 = reg_792;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_751_p0 = reg_780;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_751_p0 = reg_766;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_751_p0 = r2inv_3_reg_2096;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_751_p0 = r2inv_2_reg_2089;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_751_p0 = r2inv_1_reg_2083;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        grp_fu_751_p0 = r2inv_reg_2076;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_751_p0 = dely_3_reg_2019;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_751_p0 = delz_2_reg_2007;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_751_p0 = delx_2_reg_1995;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_751_p0 = dely_1_reg_1983;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_751_p0 = delz_reg_1971;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_751_p0 = delx_reg_1959;
    end else begin
        grp_fu_751_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_751_p1 = force_3_reg_2167;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_751_p1 = force_2_reg_2161;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_751_p1 = reg_848;
    end else if ((((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        grp_fu_751_p1 = reg_841;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_751_p1 = reg_816;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_751_p1 = reg_834;
    end else if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_751_p1 = 64'd4609434218613702656;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_751_p1 = r2inv_3_reg_2096;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_751_p1 = r2inv_2_reg_2089;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)))) begin
        grp_fu_751_p1 = r2inv_1_reg_2083;
    end else if ((((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_751_p1 = r2inv_reg_2076;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_751_p1 = dely_3_reg_2019;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_751_p1 = delz_2_reg_2007;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_751_p1 = delx_2_reg_1995;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_751_p1 = dely_1_reg_1983;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_751_p1 = delz_reg_1971;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_751_p1 = delx_reg_1959;
    end else begin
        grp_fu_751_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_755_p0 = delz_3_reg_2025_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_755_p0 = delx_3_reg_2013_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_755_p0 = dely_2_reg_2001_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_755_p0 = delz_1_reg_1989_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_755_p0 = delx_1_reg_1977_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_755_p0 = dely_reg_1965_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_755_p0 = r2inv_3_reg_2096_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_755_p0 = r2inv_2_reg_2089_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_755_p0 = r2inv_reg_2076_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_755_p0 = r6inv_2_reg_2115;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_755_p0 = r6inv_reg_2103;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_755_p0 = r6inv_3_reg_2121;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_755_p0 = r6inv_1_reg_2109;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_755_p0 = delz_3_reg_2025;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_755_p0 = delx_3_reg_2013;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_755_p0 = dely_2_reg_2001;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_755_p0 = delz_1_reg_1989;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_755_p0 = delx_1_reg_1977;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_755_p0 = dely_reg_1965;
    end else begin
        grp_fu_755_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_755_p1 = force_3_reg_2167;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_755_p1 = force_2_reg_2161;
    end else if ((((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        grp_fu_755_p1 = reg_848;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_755_p1 = reg_841;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_755_p1 = reg_798;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_755_p1 = reg_786;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_755_p1 = reg_773;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_755_p1 = sub26_3_reg_2156;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_755_p1 = sub26_2_reg_2151;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_755_p1 = sub_reg_2146;
    end else if ((((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_755_p1 = 64'd4609434218613702656;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_755_p1 = delz_3_reg_2025;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_755_p1 = delx_3_reg_2013;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_755_p1 = dely_2_reg_2001;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_755_p1 = delz_1_reg_1989;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_755_p1 = delx_1_reg_1977;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_755_p1 = dely_reg_1965;
    end else begin
        grp_fu_755_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_761_p1 = add22_3_reg_2071;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_761_p1 = add22_2_reg_2066;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_761_p1 = add22_1_reg_2061;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_761_p1 = add1_reg_2056;
        end else begin
            grp_fu_761_p1 = 'bx;
        end
    end else begin
        grp_fu_761_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_0_address0_local = zext_ln27_3_fu_1260_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_x_0_address0_local = zext_ln27_1_fu_967_p1;
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
            position_x_0_address1_local = zext_ln27_2_fu_1245_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_x_0_address1_local = zext_ln27_fu_937_p1;
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
            position_x_1_address0_local = zext_ln27_3_fu_1260_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_x_1_address0_local = zext_ln27_1_fu_967_p1;
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
            position_x_1_address1_local = zext_ln27_2_fu_1245_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_x_1_address1_local = zext_ln27_fu_937_p1;
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
            position_x_2_address0_local = zext_ln27_3_fu_1260_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_x_2_address0_local = zext_ln27_1_fu_967_p1;
        end else begin
            position_x_2_address0_local = 'bx;
        end
    end else begin
        position_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_2_address1_local = zext_ln27_2_fu_1245_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_x_2_address1_local = zext_ln27_fu_937_p1;
        end else begin
            position_x_2_address1_local = 'bx;
        end
    end else begin
        position_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_x_2_ce0_local = 1'b1;
    end else begin
        position_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_x_2_ce1_local = 1'b1;
    end else begin
        position_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_3_address0_local = zext_ln27_3_fu_1260_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_x_3_address0_local = zext_ln27_1_fu_967_p1;
        end else begin
            position_x_3_address0_local = 'bx;
        end
    end else begin
        position_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_x_3_address1_local = zext_ln27_2_fu_1245_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_x_3_address1_local = zext_ln27_fu_937_p1;
        end else begin
            position_x_3_address1_local = 'bx;
        end
    end else begin
        position_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_x_3_ce0_local = 1'b1;
    end else begin
        position_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_x_3_ce1_local = 1'b1;
    end else begin
        position_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_0_address0_local = zext_ln27_3_fu_1260_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_y_0_address0_local = zext_ln27_1_fu_967_p1;
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
            position_y_0_address1_local = zext_ln27_2_fu_1245_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_y_0_address1_local = zext_ln27_fu_937_p1;
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
            position_y_1_address0_local = zext_ln27_3_fu_1260_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_y_1_address0_local = zext_ln27_1_fu_967_p1;
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
            position_y_1_address1_local = zext_ln27_2_fu_1245_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_y_1_address1_local = zext_ln27_fu_937_p1;
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
            position_y_2_address0_local = zext_ln27_3_fu_1260_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_y_2_address0_local = zext_ln27_1_fu_967_p1;
        end else begin
            position_y_2_address0_local = 'bx;
        end
    end else begin
        position_y_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_2_address1_local = zext_ln27_2_fu_1245_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_y_2_address1_local = zext_ln27_fu_937_p1;
        end else begin
            position_y_2_address1_local = 'bx;
        end
    end else begin
        position_y_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_y_2_ce0_local = 1'b1;
    end else begin
        position_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_y_2_ce1_local = 1'b1;
    end else begin
        position_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_3_address0_local = zext_ln27_3_fu_1260_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_y_3_address0_local = zext_ln27_1_fu_967_p1;
        end else begin
            position_y_3_address0_local = 'bx;
        end
    end else begin
        position_y_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_y_3_address1_local = zext_ln27_2_fu_1245_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_y_3_address1_local = zext_ln27_fu_937_p1;
        end else begin
            position_y_3_address1_local = 'bx;
        end
    end else begin
        position_y_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_y_3_ce0_local = 1'b1;
    end else begin
        position_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_y_3_ce1_local = 1'b1;
    end else begin
        position_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_0_address0_local = zext_ln27_3_fu_1260_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_z_0_address0_local = zext_ln27_1_fu_967_p1;
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
            position_z_0_address1_local = zext_ln27_2_fu_1245_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_z_0_address1_local = zext_ln27_fu_937_p1;
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
            position_z_1_address0_local = zext_ln27_3_fu_1260_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_z_1_address0_local = zext_ln27_1_fu_967_p1;
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
            position_z_1_address1_local = zext_ln27_2_fu_1245_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_z_1_address1_local = zext_ln27_fu_937_p1;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_2_address0_local = zext_ln27_3_fu_1260_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_z_2_address0_local = zext_ln27_1_fu_967_p1;
        end else begin
            position_z_2_address0_local = 'bx;
        end
    end else begin
        position_z_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_2_address1_local = zext_ln27_2_fu_1245_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_z_2_address1_local = zext_ln27_fu_937_p1;
        end else begin
            position_z_2_address1_local = 'bx;
        end
    end else begin
        position_z_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_z_2_ce0_local = 1'b1;
    end else begin
        position_z_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_z_2_ce1_local = 1'b1;
    end else begin
        position_z_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_3_address0_local = zext_ln27_3_fu_1260_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_z_3_address0_local = zext_ln27_1_fu_967_p1;
        end else begin
            position_z_3_address0_local = 'bx;
        end
    end else begin
        position_z_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            position_z_3_address1_local = zext_ln27_2_fu_1245_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            position_z_3_address1_local = zext_ln27_fu_937_p1;
        end else begin
            position_z_3_address1_local = 'bx;
        end
    end else begin
        position_z_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_z_3_ce0_local = 1'b1;
    end else begin
        position_z_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        position_z_3_ce1_local = 1'b1;
    end else begin
        position_z_3_ce1_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter4_stage26) & (ap_idle_pp0_0to3 == 1'b1))) begin
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
assign NL_0_address0 = zext_ln27_4_fu_904_p1;
assign NL_0_ce0 = NL_0_ce0_local;
assign NL_1_address0 = zext_ln27_4_fu_904_p1;
assign NL_1_ce0 = NL_1_ce0_local;
assign NL_2_address0 = zext_ln27_4_fu_904_p1;
assign NL_2_ce0 = NL_2_ce0_local;
assign NL_3_address0 = zext_ln27_4_fu_904_p1;
assign NL_3_ce0 = NL_3_ce0_local;
assign add_ln25_fu_912_p2 = (ap_sig_allocacmp_j_1 + 5'd4);
assign add_ln_fu_896_p3 = {{i}, {lshr_ln1_fu_886_p4}};
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
assign fx_out = fx_fu_116;
assign fy_out = fy_fu_120;
assign fz_out = fz_fu_124;
assign j_x_1_fu_1144_p2 = position_x_0_q0;
assign j_x_1_fu_1144_p4 = position_x_1_q0;
assign j_x_1_fu_1144_p6 = position_x_2_q0;
assign j_x_1_fu_1144_p8 = position_x_3_q0;
assign j_x_1_fu_1144_p9 = 'bx;
assign j_x_2_fu_1291_p2 = position_x_0_q1;
assign j_x_2_fu_1291_p4 = position_x_1_q1;
assign j_x_2_fu_1291_p6 = position_x_2_q1;
assign j_x_2_fu_1291_p8 = position_x_3_q1;
assign j_x_2_fu_1291_p9 = 'bx;
assign j_x_3_fu_1408_p2 = position_x_0_q0;
assign j_x_3_fu_1408_p4 = position_x_1_q0;
assign j_x_3_fu_1408_p6 = position_x_2_q0;
assign j_x_3_fu_1408_p8 = position_x_3_q0;
assign j_x_3_fu_1408_p9 = 'bx;
assign j_x_fu_1027_p2 = position_x_0_q1;
assign j_x_fu_1027_p4 = position_x_1_q1;
assign j_x_fu_1027_p6 = position_x_2_q1;
assign j_x_fu_1027_p8 = position_x_3_q1;
assign j_x_fu_1027_p9 = 'bx;
assign j_y_1_fu_1183_p2 = position_y_0_q0;
assign j_y_1_fu_1183_p4 = position_y_1_q0;
assign j_y_1_fu_1183_p6 = position_y_2_q0;
assign j_y_1_fu_1183_p8 = position_y_3_q0;
assign j_y_1_fu_1183_p9 = 'bx;
assign j_y_2_fu_1330_p2 = position_y_0_q1;
assign j_y_2_fu_1330_p4 = position_y_1_q1;
assign j_y_2_fu_1330_p6 = position_y_2_q1;
assign j_y_2_fu_1330_p8 = position_y_3_q1;
assign j_y_2_fu_1330_p9 = 'bx;
assign j_y_3_fu_1447_p2 = position_y_0_q0;
assign j_y_3_fu_1447_p4 = position_y_1_q0;
assign j_y_3_fu_1447_p6 = position_y_2_q0;
assign j_y_3_fu_1447_p8 = position_y_3_q0;
assign j_y_3_fu_1447_p9 = 'bx;
assign j_y_fu_1066_p2 = position_y_0_q1;
assign j_y_fu_1066_p4 = position_y_1_q1;
assign j_y_fu_1066_p6 = position_y_2_q1;
assign j_y_fu_1066_p8 = position_y_3_q1;
assign j_y_fu_1066_p9 = 'bx;
assign j_z_1_fu_1222_p2 = position_z_0_q0;
assign j_z_1_fu_1222_p4 = position_z_1_q0;
assign j_z_1_fu_1222_p6 = position_z_2_q0;
assign j_z_1_fu_1222_p8 = position_z_3_q0;
assign j_z_1_fu_1222_p9 = 'bx;
assign j_z_2_fu_1369_p2 = position_z_0_q1;
assign j_z_2_fu_1369_p4 = position_z_1_q1;
assign j_z_2_fu_1369_p6 = position_z_2_q1;
assign j_z_2_fu_1369_p8 = position_z_3_q1;
assign j_z_2_fu_1369_p9 = 'bx;
assign j_z_3_fu_1486_p2 = position_z_0_q0;
assign j_z_3_fu_1486_p4 = position_z_1_q0;
assign j_z_3_fu_1486_p6 = position_z_2_q0;
assign j_z_3_fu_1486_p8 = position_z_3_q0;
assign j_z_3_fu_1486_p9 = 'bx;
assign j_z_fu_1105_p2 = position_z_0_q1;
assign j_z_fu_1105_p4 = position_z_1_q1;
assign j_z_fu_1105_p6 = position_z_2_q1;
assign j_z_fu_1105_p8 = position_z_3_q1;
assign j_z_fu_1105_p9 = 'bx;
assign lshr_ln1_fu_886_p4 = {{ap_sig_allocacmp_j_1[3:2]}};
assign lshr_ln27_1_fu_927_p4 = {{NL_0_q0[7:2]}};
assign lshr_ln27_2_fu_957_p4 = {{NL_1_q0[7:2]}};
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
assign tmp_fu_878_p3 = ap_sig_allocacmp_j_1[32'd4];
assign trunc_ln27_1_fu_953_p1 = NL_1_q0[1:0];
assign trunc_ln27_2_fu_983_p1 = NL_2_q0[1:0];
assign trunc_ln27_3_fu_997_p1 = NL_3_q0[1:0];
assign trunc_ln27_fu_923_p1 = NL_0_q0[1:0];
assign zext_ln27_1_fu_967_p1 = lshr_ln27_2_fu_957_p4;
assign zext_ln27_2_fu_1245_p1 = lshr_ln27_3_reg_1762;
assign zext_ln27_3_fu_1260_p1 = lshr_ln27_4_reg_1774;
assign zext_ln27_4_fu_904_p1 = add_ln_fu_896_p3;
assign zext_ln27_fu_937_p1 = lshr_ln27_1_fu_927_p4;
endmodule 