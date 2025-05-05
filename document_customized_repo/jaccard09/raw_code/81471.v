module md_md_Pipeline_loop_q (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_z,sum_y,sum_x,sext_ln24,empty_10,empty_11,empty_12,p_x,p_y,p_z,q_idx_range,mul_ln31,position_0_0_0_0_address0,position_0_0_0_0_ce0,position_0_0_0_0_q0,position_0_0_0_0_address1,position_0_0_0_0_ce1,position_0_0_0_0_q1,position_0_0_0_1_address0,position_0_0_0_1_ce0,position_0_0_0_1_q0,position_0_0_0_1_address1,position_0_0_0_1_ce1,position_0_0_0_1_q1,position_0_0_1_0_address0,position_0_0_1_0_ce0,position_0_0_1_0_q0,position_0_0_1_0_address1,position_0_0_1_0_ce1,position_0_0_1_0_q1,position_0_0_1_1_address0,position_0_0_1_1_ce0,position_0_0_1_1_q0,position_0_0_1_1_address1,position_0_0_1_1_ce1,position_0_0_1_1_q1,position_0_1_0_0_address0,position_0_1_0_0_ce0,position_0_1_0_0_q0,position_0_1_0_0_address1,position_0_1_0_0_ce1,position_0_1_0_0_q1,position_0_1_0_1_address0,position_0_1_0_1_ce0,position_0_1_0_1_q0,position_0_1_0_1_address1,position_0_1_0_1_ce1,position_0_1_0_1_q1,position_0_1_1_0_address0,position_0_1_1_0_ce0,position_0_1_1_0_q0,position_0_1_1_0_address1,position_0_1_1_0_ce1,position_0_1_1_0_q1,position_0_1_1_1_address0,position_0_1_1_1_ce0,position_0_1_1_1_q0,position_0_1_1_1_address1,position_0_1_1_1_ce1,position_0_1_1_1_q1,position_1_0_0_0_address0,position_1_0_0_0_ce0,position_1_0_0_0_q0,position_1_0_0_0_address1,position_1_0_0_0_ce1,position_1_0_0_0_q1,position_1_0_0_1_address0,position_1_0_0_1_ce0,position_1_0_0_1_q0,position_1_0_0_1_address1,position_1_0_0_1_ce1,position_1_0_0_1_q1,position_1_0_1_0_address0,position_1_0_1_0_ce0,position_1_0_1_0_q0,position_1_0_1_0_address1,position_1_0_1_0_ce1,position_1_0_1_0_q1,position_1_0_1_1_address0,position_1_0_1_1_ce0,position_1_0_1_1_q0,position_1_0_1_1_address1,position_1_0_1_1_ce1,position_1_0_1_1_q1,position_1_1_0_0_address0,position_1_1_0_0_ce0,position_1_1_0_0_q0,position_1_1_0_0_address1,position_1_1_0_0_ce1,position_1_1_0_0_q1,position_1_1_0_1_address0,position_1_1_0_1_ce0,position_1_1_0_1_q0,position_1_1_0_1_address1,position_1_1_0_1_ce1,position_1_1_0_1_q1,position_1_1_1_0_address0,position_1_1_1_0_ce0,position_1_1_1_0_q0,position_1_1_1_0_address1,position_1_1_1_0_ce1,position_1_1_1_0_q1,position_1_1_1_1_address0,position_1_1_1_1_ce0,position_1_1_1_1_q0,position_1_1_1_1_address1,position_1_1_1_1_ce1,position_1_1_1_1_q1,select_ln25_14,empty,trunc_ln34_3,trunc_ln34_5,sum_z_1_out,sum_z_1_out_ap_vld,sum_y_1_out,sum_y_1_out_ap_vld,sum_x_1_out,sum_x_1_out_ap_vld,sum_x_7_out,sum_x_7_out_ap_vld,sum_y_7_out,sum_y_7_out_ap_vld,sum_z_7_out,sum_z_7_out_ap_vld,sum_x_5_out,sum_x_5_out_ap_vld,sum_y_5_out,sum_y_5_out_ap_vld,sum_z_5_out,sum_z_5_out_ap_vld,sum_x_3_out,sum_x_3_out_ap_vld,sum_y_3_out,sum_y_3_out_ap_vld,sum_z_3_out,sum_z_3_out_ap_vld,ap_return); 
parameter    ap_ST_fsm_state1 = 38'd1;
parameter    ap_ST_fsm_pp0_stage0 = 38'd2;
parameter    ap_ST_fsm_pp0_stage1 = 38'd4;
parameter    ap_ST_fsm_pp0_stage2 = 38'd8;
parameter    ap_ST_fsm_pp0_stage3 = 38'd16;
parameter    ap_ST_fsm_pp0_stage4 = 38'd32;
parameter    ap_ST_fsm_pp0_stage5 = 38'd64;
parameter    ap_ST_fsm_pp0_stage6 = 38'd128;
parameter    ap_ST_fsm_pp0_stage7 = 38'd256;
parameter    ap_ST_fsm_pp0_stage8 = 38'd512;
parameter    ap_ST_fsm_pp0_stage9 = 38'd1024;
parameter    ap_ST_fsm_pp0_stage10 = 38'd2048;
parameter    ap_ST_fsm_pp0_stage11 = 38'd4096;
parameter    ap_ST_fsm_pp0_stage12 = 38'd8192;
parameter    ap_ST_fsm_pp0_stage13 = 38'd16384;
parameter    ap_ST_fsm_pp0_stage14 = 38'd32768;
parameter    ap_ST_fsm_pp0_stage15 = 38'd65536;
parameter    ap_ST_fsm_pp0_stage16 = 38'd131072;
parameter    ap_ST_fsm_pp0_stage17 = 38'd262144;
parameter    ap_ST_fsm_pp0_stage18 = 38'd524288;
parameter    ap_ST_fsm_pp0_stage19 = 38'd1048576;
parameter    ap_ST_fsm_pp0_stage20 = 38'd2097152;
parameter    ap_ST_fsm_pp0_stage21 = 38'd4194304;
parameter    ap_ST_fsm_pp0_stage22 = 38'd8388608;
parameter    ap_ST_fsm_pp0_stage23 = 38'd16777216;
parameter    ap_ST_fsm_pp0_stage24 = 38'd33554432;
parameter    ap_ST_fsm_pp0_stage25 = 38'd67108864;
parameter    ap_ST_fsm_pp0_stage26 = 38'd134217728;
parameter    ap_ST_fsm_pp0_stage27 = 38'd268435456;
parameter    ap_ST_fsm_pp0_stage28 = 38'd536870912;
parameter    ap_ST_fsm_pp0_stage29 = 38'd1073741824;
parameter    ap_ST_fsm_pp0_stage30 = 38'd2147483648;
parameter    ap_ST_fsm_pp0_stage31 = 38'd4294967296;
parameter    ap_ST_fsm_state182 = 38'd8589934592;
parameter    ap_ST_fsm_state183 = 38'd17179869184;
parameter    ap_ST_fsm_state184 = 38'd34359738368;
parameter    ap_ST_fsm_state185 = 38'd68719476736;
parameter    ap_ST_fsm_state186 = 38'd137438953472;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] sum_z;
input  [63:0] sum_y;
input  [63:0] sum_x;
input  [31:0] sext_ln24;
input  [0:0] empty_10;
input  [0:0] empty_11;
input  [0:0] empty_12;
input  [63:0] p_x;
input  [63:0] p_y;
input  [63:0] p_z;
input  [31:0] q_idx_range;
input  [5:0] mul_ln31;
output  [5:0] position_0_0_0_0_address0;
output   position_0_0_0_0_ce0;
input  [191:0] position_0_0_0_0_q0;
output  [5:0] position_0_0_0_0_address1;
output   position_0_0_0_0_ce1;
input  [191:0] position_0_0_0_0_q1;
output  [5:0] position_0_0_0_1_address0;
output   position_0_0_0_1_ce0;
input  [191:0] position_0_0_0_1_q0;
output  [5:0] position_0_0_0_1_address1;
output   position_0_0_0_1_ce1;
input  [191:0] position_0_0_0_1_q1;
output  [5:0] position_0_0_1_0_address0;
output   position_0_0_1_0_ce0;
input  [191:0] position_0_0_1_0_q0;
output  [5:0] position_0_0_1_0_address1;
output   position_0_0_1_0_ce1;
input  [191:0] position_0_0_1_0_q1;
output  [5:0] position_0_0_1_1_address0;
output   position_0_0_1_1_ce0;
input  [191:0] position_0_0_1_1_q0;
output  [5:0] position_0_0_1_1_address1;
output   position_0_0_1_1_ce1;
input  [191:0] position_0_0_1_1_q1;
output  [5:0] position_0_1_0_0_address0;
output   position_0_1_0_0_ce0;
input  [191:0] position_0_1_0_0_q0;
output  [5:0] position_0_1_0_0_address1;
output   position_0_1_0_0_ce1;
input  [191:0] position_0_1_0_0_q1;
output  [5:0] position_0_1_0_1_address0;
output   position_0_1_0_1_ce0;
input  [191:0] position_0_1_0_1_q0;
output  [5:0] position_0_1_0_1_address1;
output   position_0_1_0_1_ce1;
input  [191:0] position_0_1_0_1_q1;
output  [5:0] position_0_1_1_0_address0;
output   position_0_1_1_0_ce0;
input  [191:0] position_0_1_1_0_q0;
output  [5:0] position_0_1_1_0_address1;
output   position_0_1_1_0_ce1;
input  [191:0] position_0_1_1_0_q1;
output  [5:0] position_0_1_1_1_address0;
output   position_0_1_1_1_ce0;
input  [191:0] position_0_1_1_1_q0;
output  [5:0] position_0_1_1_1_address1;
output   position_0_1_1_1_ce1;
input  [191:0] position_0_1_1_1_q1;
output  [5:0] position_1_0_0_0_address0;
output   position_1_0_0_0_ce0;
input  [191:0] position_1_0_0_0_q0;
output  [5:0] position_1_0_0_0_address1;
output   position_1_0_0_0_ce1;
input  [191:0] position_1_0_0_0_q1;
output  [5:0] position_1_0_0_1_address0;
output   position_1_0_0_1_ce0;
input  [191:0] position_1_0_0_1_q0;
output  [5:0] position_1_0_0_1_address1;
output   position_1_0_0_1_ce1;
input  [191:0] position_1_0_0_1_q1;
output  [5:0] position_1_0_1_0_address0;
output   position_1_0_1_0_ce0;
input  [191:0] position_1_0_1_0_q0;
output  [5:0] position_1_0_1_0_address1;
output   position_1_0_1_0_ce1;
input  [191:0] position_1_0_1_0_q1;
output  [5:0] position_1_0_1_1_address0;
output   position_1_0_1_1_ce0;
input  [191:0] position_1_0_1_1_q0;
output  [5:0] position_1_0_1_1_address1;
output   position_1_0_1_1_ce1;
input  [191:0] position_1_0_1_1_q1;
output  [5:0] position_1_1_0_0_address0;
output   position_1_1_0_0_ce0;
input  [191:0] position_1_1_0_0_q0;
output  [5:0] position_1_1_0_0_address1;
output   position_1_1_0_0_ce1;
input  [191:0] position_1_1_0_0_q1;
output  [5:0] position_1_1_0_1_address0;
output   position_1_1_0_1_ce0;
input  [191:0] position_1_1_0_1_q0;
output  [5:0] position_1_1_0_1_address1;
output   position_1_1_0_1_ce1;
input  [191:0] position_1_1_0_1_q1;
output  [5:0] position_1_1_1_0_address0;
output   position_1_1_1_0_ce0;
input  [191:0] position_1_1_1_0_q0;
output  [5:0] position_1_1_1_0_address1;
output   position_1_1_1_0_ce1;
input  [191:0] position_1_1_1_0_q1;
output  [5:0] position_1_1_1_1_address0;
output   position_1_1_1_1_ce0;
input  [191:0] position_1_1_1_1_q0;
output  [5:0] position_1_1_1_1_address1;
output   position_1_1_1_1_ce1;
input  [191:0] position_1_1_1_1_q1;
input  [190:0] select_ln25_14;
input  [51:0] empty;
input  [51:0] trunc_ln34_3;
input  [51:0] trunc_ln34_5;
output  [63:0] sum_z_1_out;
output   sum_z_1_out_ap_vld;
output  [63:0] sum_y_1_out;
output   sum_y_1_out_ap_vld;
output  [63:0] sum_x_1_out;
output   sum_x_1_out_ap_vld;
output  [63:0] sum_x_7_out;
output   sum_x_7_out_ap_vld;
output  [63:0] sum_y_7_out;
output   sum_y_7_out_ap_vld;
output  [63:0] sum_z_7_out;
output   sum_z_7_out_ap_vld;
output  [63:0] sum_x_5_out;
output   sum_x_5_out_ap_vld;
output  [63:0] sum_y_5_out;
output   sum_y_5_out_ap_vld;
output  [63:0] sum_z_5_out;
output   sum_z_5_out_ap_vld;
output  [63:0] sum_x_3_out;
output   sum_x_3_out_ap_vld;
output  [63:0] sum_y_3_out;
output   sum_y_3_out_ap_vld;
output  [63:0] sum_z_3_out;
output   sum_z_3_out_ap_vld;
output  [1:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg sum_z_1_out_ap_vld;
reg sum_y_1_out_ap_vld;
reg sum_x_1_out_ap_vld;
reg sum_x_7_out_ap_vld;
reg sum_y_7_out_ap_vld;
reg sum_z_7_out_ap_vld;
reg sum_x_5_out_ap_vld;
reg sum_y_5_out_ap_vld;
reg sum_z_5_out_ap_vld;
reg sum_x_3_out_ap_vld;
reg sum_y_3_out_ap_vld;
reg sum_z_3_out_ap_vld;
reg[1:0] ap_return;
(* fsm_encoding = "none" *) reg   [37:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] sum_x_3_reg_800;
reg   [63:0] sum_y_3_reg_811;
reg   [63:0] sum_z_3_reg_822;
reg   [63:0] sum_x_5_reg_833;
reg   [63:0] sum_y_5_reg_845;
reg   [63:0] sum_z_5_reg_857;
reg   [63:0] sum_x_7_reg_869;
reg   [63:0] sum_y_7_reg_881;
reg   [63:0] sum_z_7_reg_893;
wire   [63:0] grp_fu_990_p2;
reg   [63:0] reg_1008;
wire    ap_CS_fsm_pp0_stage19;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire    ap_CS_fsm_pp0_stage5;
reg    ap_enable_reg_pp0_iter3;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] grp_fu_994_p2;
reg   [63:0] reg_1014;
reg    ap_enable_reg_pp0_iter5;
reg   [63:0] reg_1020;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_1026;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage3;
reg    ap_enable_reg_pp0_iter4;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_1033;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
reg   [63:0] reg_1040;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_1047;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] reg_1053;
reg   [63:0] reg_1059;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [63:0] grp_fu_956_p2;
reg   [63:0] reg_1066;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire    ap_CS_fsm_pp0_stage4;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_1072;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] reg_1079;
reg   [63:0] reg_1084;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] reg_1090;
reg   [63:0] reg_1096;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] reg_1103;
reg   [63:0] reg_1108;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] reg_1114;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire  signed [32:0] sext_ln24_cast_fu_1120_p1;
reg  signed [32:0] sext_ln24_cast_reg_2437;
reg   [31:0] q_idx_1_reg_2442;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln30_fu_1151_p2;
reg   [0:0] icmp_ln30_reg_2447;
reg   [0:0] icmp_ln30_reg_2447_pp0_iter1_reg;
reg   [0:0] icmp_ln30_reg_2447_pp0_iter2_reg;
reg   [0:0] icmp_ln30_reg_2447_pp0_iter3_reg;
reg   [0:0] icmp_ln30_reg_2447_pp0_iter4_reg;
reg   [0:0] icmp_ln30_reg_2447_pp0_iter5_reg;
wire   [0:0] or_ln34_1_fu_1211_p2;
reg   [0:0] or_ln34_1_reg_2531;
wire   [0:0] or_ln34_3_fu_1237_p2;
reg   [0:0] or_ln34_3_reg_2539;
wire   [0:0] or_ln34_5_fu_1263_p2;
reg   [0:0] or_ln34_5_reg_2547;
wire   [0:0] icmp_ln30_1_fu_1291_p2;
reg   [0:0] icmp_ln30_1_reg_2555;
reg   [0:0] icmp_ln30_1_reg_2555_pp0_iter1_reg;
reg   [0:0] icmp_ln30_1_reg_2555_pp0_iter2_reg;
reg   [0:0] icmp_ln30_1_reg_2555_pp0_iter3_reg;
reg   [0:0] icmp_ln30_1_reg_2555_pp0_iter4_reg;
reg   [0:0] icmp_ln30_1_reg_2555_pp0_iter5_reg;
wire   [0:0] icmp_ln30_2_fu_1361_p2;
reg   [0:0] icmp_ln30_2_reg_2639;
reg   [0:0] icmp_ln30_2_reg_2639_pp0_iter1_reg;
reg   [0:0] icmp_ln30_2_reg_2639_pp0_iter2_reg;
reg   [0:0] icmp_ln30_2_reg_2639_pp0_iter3_reg;
reg   [0:0] icmp_ln30_2_reg_2639_pp0_iter4_reg;
reg   [0:0] icmp_ln30_2_reg_2639_pp0_iter5_reg;
wire   [0:0] icmp_ln30_3_fu_1378_p2;
reg   [0:0] icmp_ln30_3_reg_2643;
reg   [0:0] icmp_ln30_3_reg_2643_pp0_iter1_reg;
reg   [0:0] icmp_ln30_3_reg_2643_pp0_iter2_reg;
reg   [0:0] icmp_ln30_3_reg_2643_pp0_iter3_reg;
reg   [0:0] icmp_ln30_3_reg_2643_pp0_iter4_reg;
reg   [0:0] icmp_ln30_3_reg_2643_pp0_iter5_reg;
wire   [63:0] trunc_ln31_fu_1432_p1;
reg   [63:0] trunc_ln31_reg_2647;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] trunc_ln31_1_reg_2652;
reg   [63:0] trunc_ln31_2_reg_2657;
reg   [10:0] tmp_reg_2662;
wire   [51:0] trunc_ln34_fu_1466_p1;
reg   [51:0] trunc_ln34_reg_2667;
reg   [10:0] tmp_3_reg_2672;
reg   [51:0] trunc_ln34_2_reg_2677;
reg   [10:0] tmp_s_reg_2682;
reg   [51:0] trunc_ln34_4_reg_2687;
wire   [63:0] trunc_ln31_3_fu_1559_p1;
reg   [63:0] trunc_ln31_3_reg_2692;
reg   [63:0] trunc_ln31_4_reg_2697;
reg   [63:0] trunc_ln31_5_reg_2702;
reg   [10:0] tmp_13_reg_2707;
wire   [51:0] trunc_ln34_1_fu_1593_p1;
reg   [51:0] trunc_ln34_1_reg_2712;
reg   [10:0] tmp_15_reg_2717;
reg   [51:0] trunc_ln34_8_reg_2722;
reg   [10:0] tmp_17_reg_2727;
reg   [51:0] trunc_ln34_s_reg_2732;
wire   [63:0] trunc_ln31_6_fu_1686_p1;
reg   [63:0] trunc_ln31_6_reg_2737;
reg   [63:0] trunc_ln31_7_reg_2742;
reg   [63:0] trunc_ln31_8_reg_2747;
reg   [10:0] tmp_21_reg_2752;
wire   [51:0] trunc_ln34_6_fu_1720_p1;
reg   [51:0] trunc_ln34_6_reg_2757;
reg   [10:0] tmp_23_reg_2762;
reg   [51:0] trunc_ln34_9_reg_2767;
reg   [10:0] tmp_25_reg_2772;
reg   [51:0] trunc_ln34_7_reg_2777;
wire   [63:0] trunc_ln31_9_fu_1813_p1;
reg   [63:0] trunc_ln31_9_reg_2782;
reg   [63:0] trunc_ln31_s_reg_2787;
reg   [63:0] trunc_ln31_10_reg_2792;
reg   [10:0] tmp_27_reg_2797;
wire   [51:0] trunc_ln34_10_fu_1847_p1;
reg   [51:0] trunc_ln34_10_reg_2802;
reg   [10:0] tmp_29_reg_2807;
reg   [51:0] trunc_ln34_11_reg_2812;
reg   [10:0] tmp_31_reg_2817;
reg   [51:0] trunc_ln34_12_reg_2822;
wire   [63:0] q_y_fu_1891_p1;
reg   [63:0] q_y_reg_2827;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln34_fu_1895_p2;
reg   [0:0] icmp_ln34_reg_2833;
wire   [0:0] icmp_ln34_1_fu_1900_p2;
reg   [0:0] icmp_ln34_1_reg_2838;
wire   [0:0] icmp_ln34_4_fu_1905_p2;
reg   [0:0] icmp_ln34_4_reg_2843;
wire   [0:0] icmp_ln34_5_fu_1910_p2;
reg   [0:0] icmp_ln34_5_reg_2848;
wire   [0:0] icmp_ln34_8_fu_1915_p2;
reg   [0:0] icmp_ln34_8_reg_2853;
wire   [0:0] icmp_ln34_9_fu_1920_p2;
reg   [0:0] icmp_ln34_9_reg_2858;
wire   [0:0] icmp_ln34_12_fu_1925_p2;
reg   [0:0] icmp_ln34_12_reg_2863;
wire   [0:0] icmp_ln34_13_fu_1930_p2;
reg   [0:0] icmp_ln34_13_reg_2868;
wire   [0:0] icmp_ln34_14_fu_1935_p2;
reg   [0:0] icmp_ln34_14_reg_2873;
wire   [0:0] icmp_ln34_15_fu_1940_p2;
reg   [0:0] icmp_ln34_15_reg_2878;
wire   [0:0] icmp_ln34_16_fu_1945_p2;
reg   [0:0] icmp_ln34_16_reg_2883;
wire   [0:0] icmp_ln34_17_fu_1950_p2;
reg   [0:0] icmp_ln34_17_reg_2888;
wire   [0:0] icmp_ln34_18_fu_1955_p2;
reg   [0:0] icmp_ln34_18_reg_2893;
wire   [0:0] icmp_ln34_19_fu_1960_p2;
reg   [0:0] icmp_ln34_19_reg_2898;
wire   [0:0] icmp_ln34_20_fu_1965_p2;
reg   [0:0] icmp_ln34_20_reg_2903;
wire   [0:0] icmp_ln34_21_fu_1970_p2;
reg   [0:0] icmp_ln34_21_reg_2908;
wire   [0:0] icmp_ln34_22_fu_1975_p2;
reg   [0:0] icmp_ln34_22_reg_2913;
wire   [0:0] icmp_ln34_23_fu_1980_p2;
reg   [0:0] icmp_ln34_23_reg_2918;
wire   [0:0] icmp_ln34_24_fu_1985_p2;
reg   [0:0] icmp_ln34_24_reg_2923;
wire   [0:0] icmp_ln34_25_fu_1990_p2;
reg   [0:0] icmp_ln34_25_reg_2928;
wire   [0:0] icmp_ln34_26_fu_1995_p2;
reg   [0:0] icmp_ln34_26_reg_2933;
wire   [0:0] icmp_ln34_27_fu_2000_p2;
reg   [0:0] icmp_ln34_27_reg_2938;
wire   [0:0] icmp_ln34_28_fu_2005_p2;
reg   [0:0] icmp_ln34_28_reg_2943;
wire   [0:0] icmp_ln34_29_fu_2010_p2;
reg   [0:0] icmp_ln34_29_reg_2948;
wire   [63:0] q_z_fu_2015_p1;
reg   [63:0] q_z_reg_2953;
wire   [0:0] grp_fu_1004_p2;
reg   [0:0] tmp_5_reg_2959;
wire   [63:0] q_x_fu_2019_p1;
reg   [63:0] q_x_reg_2964;
wire   [0:0] and_ln34_2_fu_2027_p2;
reg   [0:0] and_ln34_2_reg_2970;
wire   [0:0] and_ln34_7_fu_2072_p2;
reg   [0:0] and_ln34_7_reg_2975;
reg   [0:0] and_ln34_7_reg_2975_pp0_iter1_reg;
reg   [0:0] and_ln34_7_reg_2975_pp0_iter2_reg;
reg   [0:0] and_ln34_7_reg_2975_pp0_iter3_reg;
reg   [0:0] and_ln34_7_reg_2975_pp0_iter4_reg;
wire   [63:0] q_x_1_fu_2078_p1;
reg   [63:0] q_x_1_reg_2979;
wire   [63:0] q_y_1_fu_2082_p1;
reg   [63:0] q_y_1_reg_2985;
wire   [0:0] and_ln34_9_fu_2095_p2;
reg   [0:0] and_ln34_9_reg_2991;
wire   [63:0] q_z_1_fu_2101_p1;
reg   [63:0] q_z_1_reg_2996;
wire   [0:0] and_ln34_11_fu_2114_p2;
reg   [0:0] and_ln34_11_reg_3002;
wire   [0:0] and_ln34_15_fu_2140_p2;
reg   [0:0] and_ln34_15_reg_3007;
reg   [0:0] and_ln34_15_reg_3007_pp0_iter1_reg;
reg   [0:0] and_ln34_15_reg_3007_pp0_iter2_reg;
reg   [0:0] and_ln34_15_reg_3007_pp0_iter3_reg;
reg   [0:0] and_ln34_15_reg_3007_pp0_iter4_reg;
wire   [63:0] q_x_2_fu_2145_p1;
reg   [63:0] q_x_2_reg_3011;
wire   [63:0] q_y_2_fu_2149_p1;
reg   [63:0] q_y_2_reg_3017;
wire   [0:0] and_ln34_17_fu_2162_p2;
reg   [0:0] and_ln34_17_reg_3023;
wire   [63:0] q_z_2_fu_2168_p1;
reg   [63:0] q_z_2_reg_3028;
wire   [0:0] and_ln34_19_fu_2181_p2;
reg   [0:0] and_ln34_19_reg_3034;
wire   [0:0] and_ln34_23_fu_2207_p2;
reg   [0:0] and_ln34_23_reg_3039;
reg   [0:0] and_ln34_23_reg_3039_pp0_iter1_reg;
reg   [0:0] and_ln34_23_reg_3039_pp0_iter2_reg;
reg   [0:0] and_ln34_23_reg_3039_pp0_iter3_reg;
reg   [0:0] and_ln34_23_reg_3039_pp0_iter4_reg;
wire   [63:0] q_x_3_fu_2212_p1;
reg   [63:0] q_x_3_reg_3043;
reg   [63:0] dx_reg_3049;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] dx_reg_3049_pp0_iter1_reg;
reg   [63:0] dx_reg_3049_pp0_iter2_reg;
reg   [63:0] dx_reg_3049_pp0_iter3_reg;
wire   [63:0] grp_fu_960_p2;
reg   [63:0] dy_reg_3055;
reg   [63:0] dy_reg_3055_pp0_iter1_reg;
reg   [63:0] dy_reg_3055_pp0_iter2_reg;
reg   [63:0] dy_reg_3055_pp0_iter3_reg;
wire   [63:0] grp_fu_964_p2;
reg   [63:0] dz_reg_3061;
reg   [63:0] dz_reg_3061_pp0_iter1_reg;
reg   [63:0] dz_reg_3061_pp0_iter2_reg;
reg   [63:0] dz_reg_3061_pp0_iter3_reg;
wire   [63:0] q_y_3_fu_2216_p1;
reg   [63:0] q_y_3_reg_3068;
wire   [0:0] and_ln34_25_fu_2229_p2;
reg   [0:0] and_ln34_25_reg_3074;
wire   [63:0] q_z_3_fu_2235_p1;
reg   [63:0] q_z_3_reg_3079;
wire   [0:0] and_ln34_27_fu_2248_p2;
reg   [0:0] and_ln34_27_reg_3085;
wire   [0:0] and_ln34_31_fu_2274_p2;
reg   [0:0] and_ln34_31_reg_3090;
reg   [0:0] and_ln34_31_reg_3090_pp0_iter1_reg;
reg   [0:0] and_ln34_31_reg_3090_pp0_iter2_reg;
reg   [0:0] and_ln34_31_reg_3090_pp0_iter3_reg;
reg   [0:0] and_ln34_31_reg_3090_pp0_iter4_reg;
reg   [0:0] and_ln34_31_reg_3090_pp0_iter5_reg;
reg   [63:0] dx_1_reg_3094;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] dx_1_reg_3094_pp0_iter1_reg;
reg   [63:0] dx_1_reg_3094_pp0_iter2_reg;
reg   [63:0] dx_1_reg_3094_pp0_iter3_reg;
reg   [63:0] dy_1_reg_3101;
reg   [63:0] dy_1_reg_3101_pp0_iter1_reg;
reg   [63:0] dy_1_reg_3101_pp0_iter2_reg;
reg   [63:0] dy_1_reg_3101_pp0_iter3_reg;
reg   [63:0] dy_1_reg_3101_pp0_iter4_reg;
reg   [63:0] dz_1_reg_3108;
reg   [63:0] dz_1_reg_3108_pp0_iter1_reg;
reg   [63:0] dz_1_reg_3108_pp0_iter2_reg;
reg   [63:0] dz_1_reg_3108_pp0_iter3_reg;
reg   [63:0] dz_1_reg_3108_pp0_iter4_reg;
reg   [63:0] dx_2_reg_3115;
reg   [63:0] dx_2_reg_3115_pp0_iter1_reg;
reg   [63:0] dx_2_reg_3115_pp0_iter2_reg;
reg   [63:0] dx_2_reg_3115_pp0_iter3_reg;
reg   [63:0] dx_2_reg_3115_pp0_iter4_reg;
reg   [63:0] dy_2_reg_3121;
reg   [63:0] dy_2_reg_3121_pp0_iter1_reg;
reg   [63:0] dy_2_reg_3121_pp0_iter2_reg;
reg   [63:0] dy_2_reg_3121_pp0_iter3_reg;
reg   [63:0] dy_2_reg_3121_pp0_iter4_reg;
reg   [63:0] dz_2_reg_3127;
reg   [63:0] dz_2_reg_3127_pp0_iter1_reg;
reg   [63:0] dz_2_reg_3127_pp0_iter2_reg;
reg   [63:0] dz_2_reg_3127_pp0_iter3_reg;
reg   [63:0] dz_2_reg_3127_pp0_iter4_reg;
reg   [63:0] dx_3_reg_3133;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] dx_3_reg_3133_pp0_iter1_reg;
reg   [63:0] dx_3_reg_3133_pp0_iter2_reg;
reg   [63:0] dx_3_reg_3133_pp0_iter3_reg;
reg   [63:0] dx_3_reg_3133_pp0_iter4_reg;
reg   [63:0] dy_3_reg_3140;
reg   [63:0] dy_3_reg_3140_pp0_iter1_reg;
reg   [63:0] dy_3_reg_3140_pp0_iter2_reg;
reg   [63:0] dy_3_reg_3140_pp0_iter3_reg;
reg   [63:0] dy_3_reg_3140_pp0_iter4_reg;
reg   [63:0] dz_3_reg_3146;
reg   [63:0] dz_3_reg_3146_pp0_iter1_reg;
reg   [63:0] dz_3_reg_3146_pp0_iter2_reg;
reg   [63:0] dz_3_reg_3146_pp0_iter3_reg;
reg   [63:0] dz_3_reg_3146_pp0_iter4_reg;
reg   [63:0] add171_1_reg_3152;
reg   [63:0] add171_2_reg_3157;
reg   [63:0] add1_reg_3162;
reg   [63:0] add173_1_reg_3167;
reg   [63:0] add173_2_reg_3172;
wire   [63:0] grp_fu_968_p2;
reg   [63:0] add173_3_reg_3177;
wire   [63:0] grp_fu_999_p2;
reg   [63:0] r2inv_reg_3182;
reg    ap_enable_reg_pp0_iter2;
reg   [63:0] r2inv_reg_3182_pp0_iter3_reg;
reg   [63:0] r2inv_1_reg_3188;
reg   [63:0] r2inv_1_reg_3188_pp0_iter4_reg;
reg   [63:0] r2inv_2_reg_3194;
reg   [63:0] r2inv_2_reg_3194_pp0_iter4_reg;
reg   [63:0] r2inv_3_reg_3200;
reg   [63:0] r2inv_3_reg_3200_pp0_iter4_reg;
reg   [63:0] r6inv_reg_3207;
reg   [63:0] r6inv_1_reg_3213;
reg   [63:0] r6inv_2_reg_3219;
reg   [63:0] r6inv_3_reg_3225;
reg   [63:0] mul176_1_reg_3230;
reg   [63:0] sub177_1_reg_3235;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
reg   [63:0] sub177_2_reg_3240;
reg   [63:0] potential_3_reg_3245;
reg   [63:0] sum_x_10_reg_3250;
reg   [63:0] sum_y_10_reg_3257;
reg   [63:0] sum_z_10_reg_3264;
reg   [63:0] mul180_1_reg_3271;
reg   [63:0] mul184_1_reg_3276;
wire   [63:0] grp_fu_980_p2;
wire   [63:0] grp_fu_985_p2;
wire    ap_block_pp0_stage31_subdone;
reg    ap_predicate_tran173to182_state33;
reg    ap_predicate_tran173to183_state33;
reg    ap_predicate_tran173to184_state33;
reg    ap_condition_pp0_flush_enable;
wire    ap_block_pp0_stage11_subdone;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_x_3_reg_800;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_x_3_reg_800;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_x_3_reg_800;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_x_3_reg_800;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_x_3_reg_800;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_y_3_reg_811;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_y_3_reg_811;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_y_3_reg_811;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_y_3_reg_811;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_y_3_reg_811;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_z_3_reg_822;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_z_3_reg_822;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_z_3_reg_822;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_z_3_reg_822;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_z_3_reg_822;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_x_5_reg_833;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_x_5_reg_833;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_x_5_reg_833;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_x_5_reg_833;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_x_5_reg_833;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_x_5_reg_833;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_y_5_reg_845;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_y_5_reg_845;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_y_5_reg_845;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_y_5_reg_845;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_y_5_reg_845;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_y_5_reg_845;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_z_5_reg_857;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_z_5_reg_857;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_z_5_reg_857;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_z_5_reg_857;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_z_5_reg_857;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_z_5_reg_857;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_x_7_reg_869;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_x_7_reg_869;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_x_7_reg_869;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_x_7_reg_869;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_x_7_reg_869;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_x_7_reg_869;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_y_7_reg_881;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_y_7_reg_881;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_y_7_reg_881;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_y_7_reg_881;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_y_7_reg_881;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_y_7_reg_881;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_z_7_reg_893;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_z_7_reg_893;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_z_7_reg_893;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_z_7_reg_893;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_z_7_reg_893;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_z_7_reg_893;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_x_9_reg_905;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_x_9_reg_905;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_x_9_reg_905;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_x_9_reg_905;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_x_9_reg_905;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_x_9_reg_905;
reg    ap_predicate_pred1330_state180;
reg    ap_predicate_pred1338_state173;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_y_9_reg_915;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_y_9_reg_915;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_y_9_reg_915;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_y_9_reg_915;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_y_9_reg_915;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_y_9_reg_915;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_z_9_reg_925;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_z_9_reg_925;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_z_9_reg_925;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_z_9_reg_925;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_z_9_reg_925;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_z_9_reg_925;
reg   [1:0] UnifiedRetVal_reg_935;
wire    ap_CS_fsm_state185;
wire    ap_CS_fsm_state182;
wire    ap_CS_fsm_state183;
wire    ap_CS_fsm_state184;
wire   [63:0] zext_ln31_fu_1171_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln31_1_fu_1341_p1;
reg   [31:0] q_idx_fu_204;
wire   [31:0] add_ln30_fu_2279_p2;
reg   [63:0] sum_x_1_fu_208;
reg   [63:0] ap_sig_allocacmp_sum_x_10;
wire    ap_block_pp0_stage19;
reg   [63:0] sum_y_1_fu_212;
reg   [63:0] ap_sig_allocacmp_sum_y_10;
reg   [63:0] sum_z_1_fu_216;
reg   [63:0] ap_sig_allocacmp_sum_z_10;
reg    position_0_0_0_0_ce1_local;
reg    position_0_0_0_0_ce0_local;
reg    position_0_0_1_0_ce1_local;
reg    position_0_0_1_0_ce0_local;
reg    position_0_1_0_0_ce1_local;
reg    position_0_1_0_0_ce0_local;
reg    position_0_1_1_0_ce1_local;
reg    position_0_1_1_0_ce0_local;
reg    position_1_0_0_0_ce1_local;
reg    position_1_0_0_0_ce0_local;
reg    position_1_0_1_0_ce1_local;
reg    position_1_0_1_0_ce0_local;
reg    position_1_1_0_0_ce1_local;
reg    position_1_1_0_0_ce0_local;
reg    position_1_1_1_0_ce1_local;
reg    position_1_1_1_0_ce0_local;
reg    position_0_0_0_1_ce1_local;
reg    position_0_0_0_1_ce0_local;
reg    position_0_0_1_1_ce1_local;
reg    position_0_0_1_1_ce0_local;
reg    position_0_1_0_1_ce1_local;
reg    position_0_1_0_1_ce0_local;
reg    position_0_1_1_1_ce1_local;
reg    position_0_1_1_1_ce0_local;
reg    position_1_0_0_1_ce1_local;
reg    position_1_0_0_1_ce0_local;
reg    position_1_0_1_1_ce1_local;
reg    position_1_0_1_1_ce0_local;
reg    position_1_1_0_1_ce1_local;
reg    position_1_1_0_1_ce0_local;
reg    position_1_1_1_1_ce1_local;
reg    position_1_1_1_1_ce0_local;
reg   [63:0] grp_fu_956_p0;
reg   [63:0] grp_fu_956_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage23;
wire    ap_block_pp0_stage26;
wire    ap_block_pp0_stage28;
wire    ap_block_pp0_stage29;
wire    ap_block_pp0_stage31;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage21;
wire    ap_block_pp0_stage24;
wire    ap_block_pp0_stage27;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_960_p0;
reg   [63:0] grp_fu_960_p1;
reg   [63:0] grp_fu_964_p0;
reg   [63:0] grp_fu_964_p1;
reg   [63:0] grp_fu_968_p0;
reg   [63:0] grp_fu_968_p1;
reg   [63:0] grp_fu_990_p0;
reg   [63:0] grp_fu_990_p1;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage18;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_994_p0;
reg   [63:0] grp_fu_994_p1;
reg   [63:0] grp_fu_999_p1;
reg   [63:0] grp_fu_1004_p0;
reg   [63:0] grp_fu_1004_p1;
wire   [32:0] zext_ln30_fu_1147_p1;
wire   [5:0] lshr_ln10_1_fu_1156_p4;
wire   [5:0] add_ln31_fu_1166_p2;
wire   [10:0] tmp_1_fu_1191_p4;
wire   [0:0] icmp_ln34_3_fu_1206_p2;
wire   [0:0] icmp_ln34_2_fu_1200_p2;
wire   [10:0] tmp_4_fu_1217_p4;
wire   [0:0] icmp_ln34_7_fu_1232_p2;
wire   [0:0] icmp_ln34_6_fu_1226_p2;
wire   [10:0] tmp_10_fu_1243_p4;
wire   [0:0] icmp_ln34_11_fu_1258_p2;
wire   [0:0] icmp_ln34_10_fu_1252_p2;
wire   [29:0] tmp_12_fu_1269_p4;
wire   [30:0] or_ln1_fu_1279_p3;
wire   [31:0] zext_ln28_fu_1287_p1;
wire   [28:0] tmp_19_fu_1296_p4;
wire   [30:0] or_ln30_1_fu_1306_p3;
wire   [4:0] tmp_20_fu_1318_p4;
wire   [5:0] or_ln2_fu_1328_p3;
wire   [5:0] add_ln31_1_fu_1336_p2;
wire   [31:0] zext_ln28_1_fu_1314_p1;
wire   [30:0] or_ln30_2_fu_1366_p3;
wire   [31:0] zext_ln28_2_fu_1374_p1;
wire   [191:0] select_ln31_1_fu_1390_p3;
wire   [191:0] select_ln31_fu_1383_p3;
wire   [191:0] select_ln31_4_fu_1411_p3;
wire   [191:0] select_ln31_3_fu_1404_p3;
wire   [191:0] select_ln31_5_fu_1418_p3;
wire   [191:0] select_ln31_2_fu_1397_p3;
wire   [191:0] select_ln31_6_fu_1425_p3;
wire   [191:0] select_ln31_8_fu_1517_p3;
wire   [191:0] select_ln31_7_fu_1510_p3;
wire   [191:0] select_ln31_11_fu_1538_p3;
wire   [191:0] select_ln31_10_fu_1531_p3;
wire   [191:0] select_ln31_12_fu_1545_p3;
wire   [191:0] select_ln31_9_fu_1524_p3;
wire   [191:0] select_ln31_13_fu_1552_p3;
wire   [191:0] select_ln31_15_fu_1644_p3;
wire   [191:0] select_ln31_14_fu_1637_p3;
wire   [191:0] select_ln31_18_fu_1665_p3;
wire   [191:0] select_ln31_17_fu_1658_p3;
wire   [191:0] select_ln31_19_fu_1672_p3;
wire   [191:0] select_ln31_16_fu_1651_p3;
wire   [191:0] select_ln31_20_fu_1679_p3;
wire   [191:0] select_ln31_22_fu_1771_p3;
wire   [191:0] select_ln31_21_fu_1764_p3;
wire   [191:0] select_ln31_25_fu_1792_p3;
wire   [191:0] select_ln31_24_fu_1785_p3;
wire   [191:0] select_ln31_26_fu_1799_p3;
wire   [191:0] select_ln31_23_fu_1778_p3;
wire   [191:0] select_ln31_27_fu_1806_p3;
wire   [0:0] or_ln34_2_fu_2023_p2;
wire   [0:0] or_ln34_fu_2033_p2;
wire   [0:0] and_ln34_fu_2037_p2;
wire   [0:0] or_ln34_4_fu_2048_p2;
wire   [0:0] and_ln34_4_fu_2052_p2;
wire   [0:0] and_ln34_5_fu_2056_p2;
wire   [0:0] and_ln34_3_fu_2062_p2;
wire   [0:0] and_ln34_6_fu_2067_p2;
wire   [0:0] and_ln34_1_fu_2042_p2;
wire   [0:0] or_ln34_6_fu_2086_p2;
wire   [0:0] and_ln34_8_fu_2090_p2;
wire   [0:0] or_ln34_7_fu_2105_p2;
wire   [0:0] and_ln34_10_fu_2109_p2;
wire   [0:0] or_ln34_8_fu_2120_p2;
wire   [0:0] and_ln34_12_fu_2124_p2;
wire   [0:0] and_ln34_13_fu_2129_p2;
wire   [0:0] and_ln34_14_fu_2135_p2;
wire   [0:0] or_ln34_9_fu_2153_p2;
wire   [0:0] and_ln34_16_fu_2157_p2;
wire   [0:0] or_ln34_10_fu_2172_p2;
wire   [0:0] and_ln34_18_fu_2176_p2;
wire   [0:0] or_ln34_11_fu_2187_p2;
wire   [0:0] and_ln34_20_fu_2191_p2;
wire   [0:0] and_ln34_21_fu_2196_p2;
wire   [0:0] and_ln34_22_fu_2202_p2;
wire   [0:0] or_ln34_12_fu_2220_p2;
wire   [0:0] and_ln34_24_fu_2224_p2;
wire   [0:0] or_ln34_13_fu_2239_p2;
wire   [0:0] and_ln34_26_fu_2243_p2;
wire   [0:0] or_ln34_14_fu_2254_p2;
wire   [0:0] and_ln34_28_fu_2258_p2;
wire   [0:0] and_ln34_29_fu_2263_p2;
wire   [0:0] and_ln34_30_fu_2269_p2;
reg   [1:0] grp_fu_956_opcode;
wire    ap_block_pp0_stage20_00001;
wire    ap_block_pp0_stage23_00001;
wire    ap_block_pp0_stage26_00001;
wire    ap_block_pp0_stage28_00001;
wire    ap_block_pp0_stage29_00001;
reg    ap_predicate_pred2338_state31;
wire    ap_block_pp0_stage31_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage21_00001;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage27_00001;
wire    ap_block_pp0_stage30_00001;
reg    ap_predicate_pred2398_state128;
wire    ap_block_pp0_stage19_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage14_00001;
reg   [1:0] grp_fu_960_opcode;
reg   [1:0] grp_fu_964_opcode;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage13_00001;
reg   [1:0] ap_return_preg;
wire    ap_CS_fsm_state186;
reg   [37:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state182_blk;
wire    ap_ST_fsm_state183_blk;
wire    ap_ST_fsm_state184_blk;
wire    ap_ST_fsm_state185_blk;
wire    ap_ST_fsm_state186_blk;
wire    ap_block_pp0_stage0_subdone;
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
reg   [3:0] ap_exit_tran_regpp0;
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
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 38'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 q_idx_fu_204 = 32'd0;
#0 sum_x_1_fu_208 = 64'd0;
#0 sum_y_1_fu_212 = 64'd0;
#0 sum_z_1_fu_216 = 64'd0;
#0 ap_return_preg = 2'd0;
end
md_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_956_p0),.din1(grp_fu_956_p1),.opcode(grp_fu_956_opcode),.ce(1'b1),.dout(grp_fu_956_p2));
md_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_960_p0),.din1(grp_fu_960_p1),.opcode(grp_fu_960_opcode),.ce(1'b1),.dout(grp_fu_960_p2));
md_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_964_p0),.din1(grp_fu_964_p1),.opcode(grp_fu_964_opcode),.ce(1'b1),.dout(grp_fu_964_p2));
md_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_968_p0),.din1(grp_fu_968_p1),.ce(1'b1),.dout(grp_fu_968_p2));
md_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(ap_phi_reg_pp0_iter5_sum_y_7_reg_881),.din1(reg_1053),.ce(1'b1),.dout(grp_fu_980_p2));
md_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(ap_phi_reg_pp0_iter5_sum_z_7_reg_893),.din1(reg_1114),.ce(1'b1),.dout(grp_fu_985_p2));
md_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_990_p0),.din1(grp_fu_990_p1),.ce(1'b1),.dout(grp_fu_990_p2));
md_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_994_p0),.din1(grp_fu_994_p1),.ce(1'b1),.dout(grp_fu_994_p2));
md_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(64'd4607182418800017408),.din1(grp_fu_999_p1),.ce(1'b1),.dout(grp_fu_999_p2));
md_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U10(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1004_p0),.din1(grp_fu_1004_p1),.ce(1'b1),.opcode(5'd1),.dout(grp_fu_1004_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
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
        if ((((ap_enable_reg_pp0_iter4 == 1'b0) & (1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31)))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 2'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state186)) begin
            ap_return_preg <= UnifiedRetVal_reg_935;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state184)) begin
        UnifiedRetVal_reg_935 <= 2'd3;
    end else if ((1'b1 == ap_CS_fsm_state183)) begin
        UnifiedRetVal_reg_935 <= 2'd2;
    end else if ((1'b1 == ap_CS_fsm_state182)) begin
        UnifiedRetVal_reg_935 <= 2'd1;
    end else if ((1'b1 == ap_CS_fsm_state185)) begin
        UnifiedRetVal_reg_935 <= 2'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((icmp_ln30_reg_2447 == 1'd0)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
            ap_exit_tran_regpp0[1] <= 1'b1;
        end else if ((ap_predicate_tran173to184_state33 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
            ap_exit_tran_regpp0[1] <= 1'b1;
        end else if ((ap_predicate_tran173to183_state33 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
            ap_exit_tran_regpp0[1] <= 1'b0;
        end else if ((ap_predicate_tran173to182_state33 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
            ap_exit_tran_regpp0[1] <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln30_reg_2447_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19) & (1'd1 == and_ln34_7_reg_2975_pp0_iter4_reg))) begin
        ap_phi_reg_pp0_iter4_sum_x_3_reg_800 <= ap_sig_allocacmp_sum_x_10;
    end else if (((icmp_ln30_reg_2447_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26) & (1'd0 == and_ln34_7_reg_2975_pp0_iter4_reg))) begin
        ap_phi_reg_pp0_iter4_sum_x_3_reg_800 <= grp_fu_956_p2;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter4_sum_x_3_reg_800 <= ap_phi_reg_pp0_iter3_sum_x_3_reg_800;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln30_1_reg_2555_pp0_iter4_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27) & (1'd1 == and_ln34_15_reg_3007_pp0_iter4_reg))) begin
        ap_phi_reg_pp0_iter4_sum_x_5_reg_833 <= ap_phi_reg_pp0_iter4_sum_x_3_reg_800;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter4_sum_x_5_reg_833 <= ap_phi_reg_pp0_iter3_sum_x_5_reg_833;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln30_reg_2447_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19) & (1'd1 == and_ln34_7_reg_2975_pp0_iter4_reg))) begin
        ap_phi_reg_pp0_iter4_sum_y_3_reg_811 <= ap_sig_allocacmp_sum_y_10;
    end else if (((icmp_ln30_reg_2447_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26) & (1'd0 == and_ln34_7_reg_2975_pp0_iter4_reg))) begin
        ap_phi_reg_pp0_iter4_sum_y_3_reg_811 <= grp_fu_960_p2;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter4_sum_y_3_reg_811 <= ap_phi_reg_pp0_iter3_sum_y_3_reg_811;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln30_1_reg_2555_pp0_iter4_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27) & (1'd1 == and_ln34_15_reg_3007_pp0_iter4_reg))) begin
        ap_phi_reg_pp0_iter4_sum_y_5_reg_845 <= ap_phi_reg_pp0_iter4_sum_y_3_reg_811;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter4_sum_y_5_reg_845 <= ap_phi_reg_pp0_iter3_sum_y_5_reg_845;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln30_reg_2447_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19) & (1'd1 == and_ln34_7_reg_2975_pp0_iter4_reg))) begin
        ap_phi_reg_pp0_iter4_sum_z_3_reg_822 <= ap_sig_allocacmp_sum_z_10;
    end else if (((icmp_ln30_reg_2447_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26) & (1'd0 == and_ln34_7_reg_2975_pp0_iter4_reg))) begin
        ap_phi_reg_pp0_iter4_sum_z_3_reg_822 <= grp_fu_964_p2;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter4_sum_z_3_reg_822 <= ap_phi_reg_pp0_iter3_sum_z_3_reg_822;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln30_1_reg_2555_pp0_iter4_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27) & (1'd1 == and_ln34_15_reg_3007_pp0_iter4_reg))) begin
        ap_phi_reg_pp0_iter4_sum_z_5_reg_857 <= ap_phi_reg_pp0_iter4_sum_z_3_reg_822;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter4_sum_z_5_reg_857 <= ap_phi_reg_pp0_iter3_sum_z_5_reg_857;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'd0 == and_ln34_15_reg_3007_pp0_iter4_reg))) begin
        ap_phi_reg_pp0_iter5_sum_x_5_reg_833 <= grp_fu_960_p2;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter5_sum_x_5_reg_833 <= ap_phi_reg_pp0_iter4_sum_x_5_reg_833;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln30_2_reg_2639_pp0_iter5_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'd1 == and_ln34_23_reg_3039_pp0_iter4_reg))) begin
        ap_phi_reg_pp0_iter5_sum_x_7_reg_869 <= ap_phi_reg_pp0_iter5_sum_x_5_reg_833;
    end else if (((icmp_ln30_2_reg_2639_pp0_iter5_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10) & (1'd0 == and_ln34_23_reg_3039_pp0_iter4_reg))) begin
        ap_phi_reg_pp0_iter5_sum_x_7_reg_869 <= grp_fu_956_p2;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter5_sum_x_7_reg_869 <= ap_phi_reg_pp0_iter4_sum_x_7_reg_869;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_predicate_pred1338_state173 == 1'b1))) begin
        ap_phi_reg_pp0_iter5_sum_x_9_reg_905 <= ap_phi_reg_pp0_iter5_sum_x_7_reg_869;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1330_state180 == 1'b1))) begin
        ap_phi_reg_pp0_iter5_sum_x_9_reg_905 <= grp_fu_968_p2;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter5_sum_x_9_reg_905 <= ap_phi_reg_pp0_iter4_sum_x_9_reg_905;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'd0 == and_ln34_15_reg_3007_pp0_iter4_reg))) begin
        ap_phi_reg_pp0_iter5_sum_y_5_reg_845 <= grp_fu_964_p2;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter5_sum_y_5_reg_845 <= ap_phi_reg_pp0_iter4_sum_y_5_reg_845;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln30_2_reg_2639_pp0_iter5_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'd1 == and_ln34_23_reg_3039_pp0_iter4_reg))) begin
        ap_phi_reg_pp0_iter5_sum_y_7_reg_881 <= ap_phi_reg_pp0_iter5_sum_y_5_reg_845;
    end else if (((icmp_ln30_2_reg_2639_pp0_iter5_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10) & (1'd0 == and_ln34_23_reg_3039_pp0_iter4_reg))) begin
        ap_phi_reg_pp0_iter5_sum_y_7_reg_881 <= grp_fu_960_p2;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter5_sum_y_7_reg_881 <= ap_phi_reg_pp0_iter4_sum_y_7_reg_881;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_predicate_pred1338_state173 == 1'b1))) begin
        ap_phi_reg_pp0_iter5_sum_y_9_reg_915 <= ap_phi_reg_pp0_iter5_sum_y_7_reg_881;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1330_state180 == 1'b1))) begin
        ap_phi_reg_pp0_iter5_sum_y_9_reg_915 <= grp_fu_980_p2;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter5_sum_y_9_reg_915 <= ap_phi_reg_pp0_iter4_sum_y_9_reg_915;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'd0 == and_ln34_15_reg_3007_pp0_iter4_reg))) begin
        ap_phi_reg_pp0_iter5_sum_z_5_reg_857 <= grp_fu_968_p2;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter5_sum_z_5_reg_857 <= ap_phi_reg_pp0_iter4_sum_z_5_reg_857;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln30_2_reg_2639_pp0_iter5_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'd1 == and_ln34_23_reg_3039_pp0_iter4_reg))) begin
        ap_phi_reg_pp0_iter5_sum_z_7_reg_893 <= ap_phi_reg_pp0_iter5_sum_z_5_reg_857;
    end else if (((icmp_ln30_2_reg_2639_pp0_iter5_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10) & (1'd0 == and_ln34_23_reg_3039_pp0_iter4_reg))) begin
        ap_phi_reg_pp0_iter5_sum_z_7_reg_893 <= grp_fu_964_p2;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter5_sum_z_7_reg_893 <= ap_phi_reg_pp0_iter4_sum_z_7_reg_893;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_predicate_pred1338_state173 == 1'b1))) begin
        ap_phi_reg_pp0_iter5_sum_z_9_reg_925 <= ap_phi_reg_pp0_iter5_sum_z_7_reg_893;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1330_state180 == 1'b1))) begin
        ap_phi_reg_pp0_iter5_sum_z_9_reg_925 <= grp_fu_985_p2;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter5_sum_z_9_reg_925 <= ap_phi_reg_pp0_iter4_sum_z_9_reg_925;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        q_idx_fu_204 <= 32'd0;
    end else if (((icmp_ln30_3_reg_2643 == 1'd1) & (icmp_ln30_2_reg_2639 == 1'd1) & (icmp_ln30_1_reg_2555 == 1'd1) & (icmp_ln30_reg_2447 == 1'd1) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        q_idx_fu_204 <= add_ln30_fu_2279_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_x_1_fu_208 <= sum_x;
    end else if (((icmp_ln30_3_reg_2643_pp0_iter5_reg == 1'd1) & (icmp_ln30_2_reg_2639_pp0_iter5_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        sum_x_1_fu_208 <= ap_phi_reg_pp0_iter5_sum_x_9_reg_905;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_y_1_fu_212 <= sum_y;
    end else if (((icmp_ln30_3_reg_2643_pp0_iter5_reg == 1'd1) & (icmp_ln30_2_reg_2639_pp0_iter5_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        sum_y_1_fu_212 <= ap_phi_reg_pp0_iter5_sum_y_9_reg_915;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_z_1_fu_216 <= sum_z;
    end else if (((icmp_ln30_3_reg_2643_pp0_iter5_reg == 1'd1) & (icmp_ln30_2_reg_2639_pp0_iter5_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        sum_z_1_fu_216 <= ap_phi_reg_pp0_iter5_sum_z_9_reg_925;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        add171_1_reg_3152 <= grp_fu_956_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add171_2_reg_3157 <= grp_fu_956_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add173_1_reg_3167 <= grp_fu_956_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add173_2_reg_3172 <= grp_fu_956_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add173_3_reg_3177 <= grp_fu_968_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add1_reg_3162 <= grp_fu_956_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        and_ln34_11_reg_3002 <= and_ln34_11_fu_2114_p2;
        q_z_1_reg_2996 <= q_z_1_fu_2101_p1;
        r2inv_3_reg_3200_pp0_iter4_reg <= r2inv_3_reg_3200;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln34_15_reg_3007 <= and_ln34_15_fu_2140_p2;
        and_ln34_15_reg_3007_pp0_iter1_reg <= and_ln34_15_reg_3007;
        and_ln34_15_reg_3007_pp0_iter2_reg <= and_ln34_15_reg_3007_pp0_iter1_reg;
        and_ln34_15_reg_3007_pp0_iter3_reg <= and_ln34_15_reg_3007_pp0_iter2_reg;
        and_ln34_15_reg_3007_pp0_iter4_reg <= and_ln34_15_reg_3007_pp0_iter3_reg;
        q_x_2_reg_3011 <= q_x_2_fu_2145_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        and_ln34_17_reg_3023 <= and_ln34_17_fu_2162_p2;
        q_y_2_reg_3017 <= q_y_2_fu_2149_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln34_19_reg_3034 <= and_ln34_19_fu_2181_p2;
        ap_predicate_pred1338_state173 <= ((icmp_ln30_3_reg_2643_pp0_iter5_reg == 1'd1) & (icmp_ln30_2_reg_2639_pp0_iter5_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (1'd1 == and_ln34_31_reg_3090_pp0_iter4_reg));
        q_z_2_reg_3028 <= q_z_2_fu_2168_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln34_23_reg_3039 <= and_ln34_23_fu_2207_p2;
        and_ln34_23_reg_3039_pp0_iter1_reg <= and_ln34_23_reg_3039;
        and_ln34_23_reg_3039_pp0_iter2_reg <= and_ln34_23_reg_3039_pp0_iter1_reg;
        and_ln34_23_reg_3039_pp0_iter3_reg <= and_ln34_23_reg_3039_pp0_iter2_reg;
        and_ln34_23_reg_3039_pp0_iter4_reg <= and_ln34_23_reg_3039_pp0_iter3_reg;
        q_x_3_reg_3043 <= q_x_3_fu_2212_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln34_25_reg_3074 <= and_ln34_25_fu_2229_p2;
        dx_reg_3049_pp0_iter1_reg <= dx_reg_3049;
        dx_reg_3049_pp0_iter2_reg <= dx_reg_3049_pp0_iter1_reg;
        dx_reg_3049_pp0_iter3_reg <= dx_reg_3049_pp0_iter2_reg;
        dy_reg_3055_pp0_iter1_reg <= dy_reg_3055;
        dy_reg_3055_pp0_iter2_reg <= dy_reg_3055_pp0_iter1_reg;
        dy_reg_3055_pp0_iter3_reg <= dy_reg_3055_pp0_iter2_reg;
        dz_reg_3061_pp0_iter1_reg <= dz_reg_3061;
        dz_reg_3061_pp0_iter2_reg <= dz_reg_3061_pp0_iter1_reg;
        dz_reg_3061_pp0_iter3_reg <= dz_reg_3061_pp0_iter2_reg;
        q_y_3_reg_3068 <= q_y_3_fu_2216_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln34_27_reg_3085 <= and_ln34_27_fu_2248_p2;
        q_z_3_reg_3079 <= q_z_3_fu_2235_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln34_2_reg_2970 <= and_ln34_2_fu_2027_p2;
        q_x_reg_2964 <= q_x_fu_2019_p1;
        r2inv_2_reg_3194_pp0_iter4_reg <= r2inv_2_reg_3194;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln34_31_reg_3090 <= and_ln34_31_fu_2274_p2;
        and_ln34_31_reg_3090_pp0_iter1_reg <= and_ln34_31_reg_3090;
        and_ln34_31_reg_3090_pp0_iter2_reg <= and_ln34_31_reg_3090_pp0_iter1_reg;
        and_ln34_31_reg_3090_pp0_iter3_reg <= and_ln34_31_reg_3090_pp0_iter2_reg;
        and_ln34_31_reg_3090_pp0_iter4_reg <= and_ln34_31_reg_3090_pp0_iter3_reg;
        and_ln34_31_reg_3090_pp0_iter5_reg <= and_ln34_31_reg_3090_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        and_ln34_7_reg_2975 <= and_ln34_7_fu_2072_p2;
        and_ln34_7_reg_2975_pp0_iter1_reg <= and_ln34_7_reg_2975;
        and_ln34_7_reg_2975_pp0_iter2_reg <= and_ln34_7_reg_2975_pp0_iter1_reg;
        and_ln34_7_reg_2975_pp0_iter3_reg <= and_ln34_7_reg_2975_pp0_iter2_reg;
        and_ln34_7_reg_2975_pp0_iter4_reg <= and_ln34_7_reg_2975_pp0_iter3_reg;
        q_x_1_reg_2979 <= q_x_1_fu_2078_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln34_9_reg_2991 <= and_ln34_9_fu_2095_p2;
        q_y_1_reg_2985 <= q_y_1_fu_2082_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter1_sum_x_3_reg_800 <= ap_phi_reg_pp0_iter0_sum_x_3_reg_800;
        ap_phi_reg_pp0_iter1_sum_x_5_reg_833 <= ap_phi_reg_pp0_iter0_sum_x_5_reg_833;
        ap_phi_reg_pp0_iter1_sum_x_7_reg_869 <= ap_phi_reg_pp0_iter0_sum_x_7_reg_869;
        ap_phi_reg_pp0_iter1_sum_x_9_reg_905 <= ap_phi_reg_pp0_iter0_sum_x_9_reg_905;
        ap_phi_reg_pp0_iter1_sum_y_3_reg_811 <= ap_phi_reg_pp0_iter0_sum_y_3_reg_811;
        ap_phi_reg_pp0_iter1_sum_y_5_reg_845 <= ap_phi_reg_pp0_iter0_sum_y_5_reg_845;
        ap_phi_reg_pp0_iter1_sum_y_7_reg_881 <= ap_phi_reg_pp0_iter0_sum_y_7_reg_881;
        ap_phi_reg_pp0_iter1_sum_y_9_reg_915 <= ap_phi_reg_pp0_iter0_sum_y_9_reg_915;
        ap_phi_reg_pp0_iter1_sum_z_3_reg_822 <= ap_phi_reg_pp0_iter0_sum_z_3_reg_822;
        ap_phi_reg_pp0_iter1_sum_z_5_reg_857 <= ap_phi_reg_pp0_iter0_sum_z_5_reg_857;
        ap_phi_reg_pp0_iter1_sum_z_7_reg_893 <= ap_phi_reg_pp0_iter0_sum_z_7_reg_893;
        ap_phi_reg_pp0_iter1_sum_z_9_reg_925 <= ap_phi_reg_pp0_iter0_sum_z_9_reg_925;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter2_sum_x_3_reg_800 <= ap_phi_reg_pp0_iter1_sum_x_3_reg_800;
        ap_phi_reg_pp0_iter2_sum_x_5_reg_833 <= ap_phi_reg_pp0_iter1_sum_x_5_reg_833;
        ap_phi_reg_pp0_iter2_sum_x_7_reg_869 <= ap_phi_reg_pp0_iter1_sum_x_7_reg_869;
        ap_phi_reg_pp0_iter2_sum_x_9_reg_905 <= ap_phi_reg_pp0_iter1_sum_x_9_reg_905;
        ap_phi_reg_pp0_iter2_sum_y_3_reg_811 <= ap_phi_reg_pp0_iter1_sum_y_3_reg_811;
        ap_phi_reg_pp0_iter2_sum_y_5_reg_845 <= ap_phi_reg_pp0_iter1_sum_y_5_reg_845;
        ap_phi_reg_pp0_iter2_sum_y_7_reg_881 <= ap_phi_reg_pp0_iter1_sum_y_7_reg_881;
        ap_phi_reg_pp0_iter2_sum_y_9_reg_915 <= ap_phi_reg_pp0_iter1_sum_y_9_reg_915;
        ap_phi_reg_pp0_iter2_sum_z_3_reg_822 <= ap_phi_reg_pp0_iter1_sum_z_3_reg_822;
        ap_phi_reg_pp0_iter2_sum_z_5_reg_857 <= ap_phi_reg_pp0_iter1_sum_z_5_reg_857;
        ap_phi_reg_pp0_iter2_sum_z_7_reg_893 <= ap_phi_reg_pp0_iter1_sum_z_7_reg_893;
        ap_phi_reg_pp0_iter2_sum_z_9_reg_925 <= ap_phi_reg_pp0_iter1_sum_z_9_reg_925;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_reg_pp0_iter3_sum_x_3_reg_800 <= ap_phi_reg_pp0_iter2_sum_x_3_reg_800;
        ap_phi_reg_pp0_iter3_sum_x_5_reg_833 <= ap_phi_reg_pp0_iter2_sum_x_5_reg_833;
        ap_phi_reg_pp0_iter3_sum_x_7_reg_869 <= ap_phi_reg_pp0_iter2_sum_x_7_reg_869;
        ap_phi_reg_pp0_iter3_sum_x_9_reg_905 <= ap_phi_reg_pp0_iter2_sum_x_9_reg_905;
        ap_phi_reg_pp0_iter3_sum_y_3_reg_811 <= ap_phi_reg_pp0_iter2_sum_y_3_reg_811;
        ap_phi_reg_pp0_iter3_sum_y_5_reg_845 <= ap_phi_reg_pp0_iter2_sum_y_5_reg_845;
        ap_phi_reg_pp0_iter3_sum_y_7_reg_881 <= ap_phi_reg_pp0_iter2_sum_y_7_reg_881;
        ap_phi_reg_pp0_iter3_sum_y_9_reg_915 <= ap_phi_reg_pp0_iter2_sum_y_9_reg_915;
        ap_phi_reg_pp0_iter3_sum_z_3_reg_822 <= ap_phi_reg_pp0_iter2_sum_z_3_reg_822;
        ap_phi_reg_pp0_iter3_sum_z_5_reg_857 <= ap_phi_reg_pp0_iter2_sum_z_5_reg_857;
        ap_phi_reg_pp0_iter3_sum_z_7_reg_893 <= ap_phi_reg_pp0_iter2_sum_z_7_reg_893;
        ap_phi_reg_pp0_iter3_sum_z_9_reg_925 <= ap_phi_reg_pp0_iter2_sum_z_9_reg_925;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_phi_reg_pp0_iter4_sum_x_7_reg_869 <= ap_phi_reg_pp0_iter3_sum_x_7_reg_869;
        ap_phi_reg_pp0_iter4_sum_x_9_reg_905 <= ap_phi_reg_pp0_iter3_sum_x_9_reg_905;
        ap_phi_reg_pp0_iter4_sum_y_7_reg_881 <= ap_phi_reg_pp0_iter3_sum_y_7_reg_881;
        ap_phi_reg_pp0_iter4_sum_y_9_reg_915 <= ap_phi_reg_pp0_iter3_sum_y_9_reg_915;
        ap_phi_reg_pp0_iter4_sum_z_7_reg_893 <= ap_phi_reg_pp0_iter3_sum_z_7_reg_893;
        ap_phi_reg_pp0_iter4_sum_z_9_reg_925 <= ap_phi_reg_pp0_iter3_sum_z_9_reg_925;
        sub177_1_reg_3235 <= grp_fu_956_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        ap_predicate_pred1330_state180 <= ((icmp_ln30_3_reg_2643_pp0_iter5_reg == 1'd1) & (icmp_ln30_2_reg_2639_pp0_iter5_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (1'd0 == and_ln34_31_reg_3090_pp0_iter5_reg));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        ap_predicate_pred2338_state31 <= ((icmp_ln30_3_reg_2643 == 1'd1) & (icmp_ln30_2_reg_2639 == 1'd1) & (icmp_ln30_1_reg_2555 == 1'd1) & (icmp_ln30_reg_2447 == 1'd1) & (1'd0 == and_ln34_31_reg_3090));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        ap_predicate_pred2398_state128 <= ((icmp_ln30_3_reg_2643_pp0_iter3_reg == 1'd1) & (icmp_ln30_2_reg_2639_pp0_iter3_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter3_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter3_reg == 1'd1) & (1'd0 == and_ln34_31_reg_3090_pp0_iter3_reg));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        dx_1_reg_3094 <= grp_fu_956_p2;
        dy_1_reg_3101 <= grp_fu_960_p2;
        dz_1_reg_3108 <= grp_fu_964_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        dx_1_reg_3094_pp0_iter1_reg <= dx_1_reg_3094;
        dx_1_reg_3094_pp0_iter2_reg <= dx_1_reg_3094_pp0_iter1_reg;
        dx_1_reg_3094_pp0_iter3_reg <= dx_1_reg_3094_pp0_iter2_reg;
        dy_1_reg_3101_pp0_iter1_reg <= dy_1_reg_3101;
        dy_1_reg_3101_pp0_iter2_reg <= dy_1_reg_3101_pp0_iter1_reg;
        dy_1_reg_3101_pp0_iter3_reg <= dy_1_reg_3101_pp0_iter2_reg;
        dy_1_reg_3101_pp0_iter4_reg <= dy_1_reg_3101_pp0_iter3_reg;
        dz_1_reg_3108_pp0_iter1_reg <= dz_1_reg_3108;
        dz_1_reg_3108_pp0_iter2_reg <= dz_1_reg_3108_pp0_iter1_reg;
        dz_1_reg_3108_pp0_iter3_reg <= dz_1_reg_3108_pp0_iter2_reg;
        dz_1_reg_3108_pp0_iter4_reg <= dz_1_reg_3108_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        dx_2_reg_3115 <= grp_fu_956_p2;
        dy_2_reg_3121 <= grp_fu_960_p2;
        dz_2_reg_3127 <= grp_fu_964_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        dx_2_reg_3115_pp0_iter1_reg <= dx_2_reg_3115;
        dx_2_reg_3115_pp0_iter2_reg <= dx_2_reg_3115_pp0_iter1_reg;
        dx_2_reg_3115_pp0_iter3_reg <= dx_2_reg_3115_pp0_iter2_reg;
        dx_2_reg_3115_pp0_iter4_reg <= dx_2_reg_3115_pp0_iter3_reg;
        dy_2_reg_3121_pp0_iter1_reg <= dy_2_reg_3121;
        dy_2_reg_3121_pp0_iter2_reg <= dy_2_reg_3121_pp0_iter1_reg;
        dy_2_reg_3121_pp0_iter3_reg <= dy_2_reg_3121_pp0_iter2_reg;
        dy_2_reg_3121_pp0_iter4_reg <= dy_2_reg_3121_pp0_iter3_reg;
        dz_2_reg_3127_pp0_iter1_reg <= dz_2_reg_3127;
        dz_2_reg_3127_pp0_iter2_reg <= dz_2_reg_3127_pp0_iter1_reg;
        dz_2_reg_3127_pp0_iter3_reg <= dz_2_reg_3127_pp0_iter2_reg;
        dz_2_reg_3127_pp0_iter4_reg <= dz_2_reg_3127_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        dx_3_reg_3133 <= grp_fu_956_p2;
        dy_3_reg_3140 <= grp_fu_960_p2;
        dz_3_reg_3146 <= grp_fu_964_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        dx_3_reg_3133_pp0_iter1_reg <= dx_3_reg_3133;
        dx_3_reg_3133_pp0_iter2_reg <= dx_3_reg_3133_pp0_iter1_reg;
        dx_3_reg_3133_pp0_iter3_reg <= dx_3_reg_3133_pp0_iter2_reg;
        dx_3_reg_3133_pp0_iter4_reg <= dx_3_reg_3133_pp0_iter3_reg;
        dy_3_reg_3140_pp0_iter1_reg <= dy_3_reg_3140;
        dy_3_reg_3140_pp0_iter2_reg <= dy_3_reg_3140_pp0_iter1_reg;
        dy_3_reg_3140_pp0_iter3_reg <= dy_3_reg_3140_pp0_iter2_reg;
        dy_3_reg_3140_pp0_iter4_reg <= dy_3_reg_3140_pp0_iter3_reg;
        dz_3_reg_3146_pp0_iter1_reg <= dz_3_reg_3146;
        dz_3_reg_3146_pp0_iter2_reg <= dz_3_reg_3146_pp0_iter1_reg;
        dz_3_reg_3146_pp0_iter3_reg <= dz_3_reg_3146_pp0_iter2_reg;
        dz_3_reg_3146_pp0_iter4_reg <= dz_3_reg_3146_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        dx_reg_3049 <= grp_fu_956_p2;
        dy_reg_3055 <= grp_fu_960_p2;
        dz_reg_3061 <= grp_fu_964_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln30_1_reg_2555 <= icmp_ln30_1_fu_1291_p2;
        icmp_ln30_1_reg_2555_pp0_iter1_reg <= icmp_ln30_1_reg_2555;
        icmp_ln30_1_reg_2555_pp0_iter2_reg <= icmp_ln30_1_reg_2555_pp0_iter1_reg;
        icmp_ln30_1_reg_2555_pp0_iter3_reg <= icmp_ln30_1_reg_2555_pp0_iter2_reg;
        icmp_ln30_1_reg_2555_pp0_iter4_reg <= icmp_ln30_1_reg_2555_pp0_iter3_reg;
        icmp_ln30_1_reg_2555_pp0_iter5_reg <= icmp_ln30_1_reg_2555_pp0_iter4_reg;
        icmp_ln30_2_reg_2639 <= icmp_ln30_2_fu_1361_p2;
        icmp_ln30_2_reg_2639_pp0_iter1_reg <= icmp_ln30_2_reg_2639;
        icmp_ln30_2_reg_2639_pp0_iter2_reg <= icmp_ln30_2_reg_2639_pp0_iter1_reg;
        icmp_ln30_2_reg_2639_pp0_iter3_reg <= icmp_ln30_2_reg_2639_pp0_iter2_reg;
        icmp_ln30_2_reg_2639_pp0_iter4_reg <= icmp_ln30_2_reg_2639_pp0_iter3_reg;
        icmp_ln30_2_reg_2639_pp0_iter5_reg <= icmp_ln30_2_reg_2639_pp0_iter4_reg;
        icmp_ln30_3_reg_2643 <= icmp_ln30_3_fu_1378_p2;
        icmp_ln30_3_reg_2643_pp0_iter1_reg <= icmp_ln30_3_reg_2643;
        icmp_ln30_3_reg_2643_pp0_iter2_reg <= icmp_ln30_3_reg_2643_pp0_iter1_reg;
        icmp_ln30_3_reg_2643_pp0_iter3_reg <= icmp_ln30_3_reg_2643_pp0_iter2_reg;
        icmp_ln30_3_reg_2643_pp0_iter4_reg <= icmp_ln30_3_reg_2643_pp0_iter3_reg;
        icmp_ln30_3_reg_2643_pp0_iter5_reg <= icmp_ln30_3_reg_2643_pp0_iter4_reg;
        icmp_ln30_reg_2447 <= icmp_ln30_fu_1151_p2;
        icmp_ln30_reg_2447_pp0_iter1_reg <= icmp_ln30_reg_2447;
        icmp_ln30_reg_2447_pp0_iter2_reg <= icmp_ln30_reg_2447_pp0_iter1_reg;
        icmp_ln30_reg_2447_pp0_iter3_reg <= icmp_ln30_reg_2447_pp0_iter2_reg;
        icmp_ln30_reg_2447_pp0_iter4_reg <= icmp_ln30_reg_2447_pp0_iter3_reg;
        icmp_ln30_reg_2447_pp0_iter5_reg <= icmp_ln30_reg_2447_pp0_iter4_reg;
        or_ln34_1_reg_2531 <= or_ln34_1_fu_1211_p2;
        or_ln34_3_reg_2539 <= or_ln34_3_fu_1237_p2;
        or_ln34_5_reg_2547 <= or_ln34_5_fu_1263_p2;
        q_idx_1_reg_2442 <= q_idx_fu_204;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln34_12_reg_2863 <= icmp_ln34_12_fu_1925_p2;
        icmp_ln34_13_reg_2868 <= icmp_ln34_13_fu_1930_p2;
        icmp_ln34_14_reg_2873 <= icmp_ln34_14_fu_1935_p2;
        icmp_ln34_15_reg_2878 <= icmp_ln34_15_fu_1940_p2;
        icmp_ln34_16_reg_2883 <= icmp_ln34_16_fu_1945_p2;
        icmp_ln34_17_reg_2888 <= icmp_ln34_17_fu_1950_p2;
        icmp_ln34_18_reg_2893 <= icmp_ln34_18_fu_1955_p2;
        icmp_ln34_19_reg_2898 <= icmp_ln34_19_fu_1960_p2;
        icmp_ln34_1_reg_2838 <= icmp_ln34_1_fu_1900_p2;
        icmp_ln34_20_reg_2903 <= icmp_ln34_20_fu_1965_p2;
        icmp_ln34_21_reg_2908 <= icmp_ln34_21_fu_1970_p2;
        icmp_ln34_22_reg_2913 <= icmp_ln34_22_fu_1975_p2;
        icmp_ln34_23_reg_2918 <= icmp_ln34_23_fu_1980_p2;
        icmp_ln34_24_reg_2923 <= icmp_ln34_24_fu_1985_p2;
        icmp_ln34_25_reg_2928 <= icmp_ln34_25_fu_1990_p2;
        icmp_ln34_26_reg_2933 <= icmp_ln34_26_fu_1995_p2;
        icmp_ln34_27_reg_2938 <= icmp_ln34_27_fu_2000_p2;
        icmp_ln34_28_reg_2943 <= icmp_ln34_28_fu_2005_p2;
        icmp_ln34_29_reg_2948 <= icmp_ln34_29_fu_2010_p2;
        icmp_ln34_4_reg_2843 <= icmp_ln34_4_fu_1905_p2;
        icmp_ln34_5_reg_2848 <= icmp_ln34_5_fu_1910_p2;
        icmp_ln34_8_reg_2853 <= icmp_ln34_8_fu_1915_p2;
        icmp_ln34_9_reg_2858 <= icmp_ln34_9_fu_1920_p2;
        icmp_ln34_reg_2833 <= icmp_ln34_fu_1895_p2;
        q_y_reg_2827 <= q_y_fu_1891_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        mul176_1_reg_3230 <= grp_fu_994_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        mul180_1_reg_3271 <= grp_fu_994_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        mul184_1_reg_3276 <= grp_fu_994_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        potential_3_reg_3245 <= grp_fu_994_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        q_z_reg_2953 <= q_z_fu_2015_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        r2inv_1_reg_3188 <= grp_fu_999_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        r2inv_1_reg_3188_pp0_iter4_reg <= r2inv_1_reg_3188;
        tmp_13_reg_2707 <= {{select_ln31_13_fu_1552_p3[62:52]}};
        tmp_15_reg_2717 <= {{select_ln31_13_fu_1552_p3[126:116]}};
        tmp_17_reg_2727 <= {{select_ln31_13_fu_1552_p3[190:180]}};
        tmp_21_reg_2752 <= {{select_ln31_20_fu_1679_p3[62:52]}};
        tmp_23_reg_2762 <= {{select_ln31_20_fu_1679_p3[126:116]}};
        tmp_25_reg_2772 <= {{select_ln31_20_fu_1679_p3[190:180]}};
        tmp_27_reg_2797 <= {{select_ln31_27_fu_1806_p3[62:52]}};
        tmp_29_reg_2807 <= {{select_ln31_27_fu_1806_p3[126:116]}};
        tmp_31_reg_2817 <= {{select_ln31_27_fu_1806_p3[190:180]}};
        tmp_3_reg_2672 <= {{select_ln31_6_fu_1425_p3[126:116]}};
        tmp_reg_2662 <= {{select_ln31_6_fu_1425_p3[62:52]}};
        tmp_s_reg_2682 <= {{select_ln31_6_fu_1425_p3[190:180]}};
        trunc_ln31_10_reg_2792 <= {{select_ln31_27_fu_1806_p3[191:128]}};
        trunc_ln31_1_reg_2652 <= {{select_ln31_6_fu_1425_p3[127:64]}};
        trunc_ln31_2_reg_2657 <= {{select_ln31_6_fu_1425_p3[191:128]}};
        trunc_ln31_3_reg_2692 <= trunc_ln31_3_fu_1559_p1;
        trunc_ln31_4_reg_2697 <= {{select_ln31_13_fu_1552_p3[127:64]}};
        trunc_ln31_5_reg_2702 <= {{select_ln31_13_fu_1552_p3[191:128]}};
        trunc_ln31_6_reg_2737 <= trunc_ln31_6_fu_1686_p1;
        trunc_ln31_7_reg_2742 <= {{select_ln31_20_fu_1679_p3[127:64]}};
        trunc_ln31_8_reg_2747 <= {{select_ln31_20_fu_1679_p3[191:128]}};
        trunc_ln31_9_reg_2782 <= trunc_ln31_9_fu_1813_p1;
        trunc_ln31_reg_2647 <= trunc_ln31_fu_1432_p1;
        trunc_ln31_s_reg_2787 <= {{select_ln31_27_fu_1806_p3[127:64]}};
        trunc_ln34_10_reg_2802 <= trunc_ln34_10_fu_1847_p1;
        trunc_ln34_11_reg_2812 <= {{select_ln31_27_fu_1806_p3[115:64]}};
        trunc_ln34_12_reg_2822 <= {{select_ln31_27_fu_1806_p3[179:128]}};
        trunc_ln34_1_reg_2712 <= trunc_ln34_1_fu_1593_p1;
        trunc_ln34_2_reg_2677 <= {{select_ln31_6_fu_1425_p3[115:64]}};
        trunc_ln34_4_reg_2687 <= {{select_ln31_6_fu_1425_p3[179:128]}};
        trunc_ln34_6_reg_2757 <= trunc_ln34_6_fu_1720_p1;
        trunc_ln34_7_reg_2777 <= {{select_ln31_20_fu_1679_p3[179:128]}};
        trunc_ln34_8_reg_2722 <= {{select_ln31_13_fu_1552_p3[115:64]}};
        trunc_ln34_9_reg_2767 <= {{select_ln31_20_fu_1679_p3[115:64]}};
        trunc_ln34_reg_2667 <= trunc_ln34_fu_1466_p1;
        trunc_ln34_s_reg_2732 <= {{select_ln31_13_fu_1552_p3[179:128]}};
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        r2inv_2_reg_3194 <= grp_fu_999_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        r2inv_3_reg_3200 <= grp_fu_999_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        r2inv_reg_3182 <= grp_fu_999_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        r2inv_reg_3182_pp0_iter3_reg <= r2inv_reg_3182;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        r6inv_1_reg_3213 <= grp_fu_990_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        r6inv_2_reg_3219 <= grp_fu_990_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        r6inv_3_reg_3225 <= grp_fu_990_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        r6inv_reg_3207 <= grp_fu_990_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        reg_1008 <= grp_fu_990_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        reg_1014 <= grp_fu_994_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_1020 <= grp_fu_990_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_1026 <= grp_fu_990_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)))) begin
        reg_1033 <= grp_fu_994_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        reg_1040 <= grp_fu_990_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_1047 <= grp_fu_990_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_1053 <= grp_fu_994_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_1059 <= grp_fu_990_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)))) begin
        reg_1066 <= grp_fu_956_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_1072 <= grp_fu_990_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        reg_1079 <= grp_fu_994_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26)))) begin
        reg_1084 <= grp_fu_994_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28)))) begin
        reg_1090 <= grp_fu_956_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30)))) begin
        reg_1096 <= grp_fu_990_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27)))) begin
        reg_1103 <= grp_fu_990_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27)))) begin
        reg_1108 <= grp_fu_994_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1114 <= grp_fu_990_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        sext_ln24_cast_reg_2437 <= sext_ln24_cast_fu_1120_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sub177_2_reg_3240 <= grp_fu_956_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        sum_x_10_reg_3250 <= ap_sig_allocacmp_sum_x_10;
        sum_y_10_reg_3257 <= ap_sig_allocacmp_sum_y_10;
        sum_z_10_reg_3264 <= ap_sig_allocacmp_sum_z_10;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        sum_x_3_reg_800 <= ap_phi_reg_pp0_iter4_sum_x_3_reg_800;
        sum_y_3_reg_811 <= ap_phi_reg_pp0_iter4_sum_y_3_reg_811;
        sum_z_3_reg_822 <= ap_phi_reg_pp0_iter4_sum_z_3_reg_822;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sum_x_5_reg_833 <= ap_phi_reg_pp0_iter5_sum_x_5_reg_833;
        sum_y_5_reg_845 <= ap_phi_reg_pp0_iter5_sum_y_5_reg_845;
        sum_z_5_reg_857 <= ap_phi_reg_pp0_iter5_sum_z_5_reg_857;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        sum_x_7_reg_869 <= ap_phi_reg_pp0_iter5_sum_x_7_reg_869;
        sum_y_7_reg_881 <= ap_phi_reg_pp0_iter5_sum_y_7_reg_881;
        sum_z_7_reg_893 <= ap_phi_reg_pp0_iter5_sum_z_7_reg_893;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_5_reg_2959 <= grp_fu_1004_p2;
    end
end
assign ap_ST_fsm_state182_blk = 1'b0;
assign ap_ST_fsm_state183_blk = 1'b0;
assign ap_ST_fsm_state184_blk = 1'b0;
assign ap_ST_fsm_state185_blk = 1'b0;
assign ap_ST_fsm_state186_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31) & ((icmp_ln30_reg_2447 == 1'd0) | (ap_predicate_tran173to184_state33 == 1'b1) | (ap_predicate_tran173to183_state33 == 1'b1) | (ap_predicate_tran173to182_state33 == 1'b1)))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state186) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state186)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state186)) begin
        ap_return = UnifiedRetVal_reg_935;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((icmp_ln30_3_reg_2643_pp0_iter5_reg == 1'd1) & (icmp_ln30_2_reg_2639_pp0_iter5_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        ap_sig_allocacmp_sum_x_10 = ap_phi_reg_pp0_iter5_sum_x_9_reg_905;
    end else begin
        ap_sig_allocacmp_sum_x_10 = sum_x_1_fu_208;
    end
end
always @ (*) begin
    if (((icmp_ln30_3_reg_2643_pp0_iter5_reg == 1'd1) & (icmp_ln30_2_reg_2639_pp0_iter5_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        ap_sig_allocacmp_sum_y_10 = ap_phi_reg_pp0_iter5_sum_y_9_reg_915;
    end else begin
        ap_sig_allocacmp_sum_y_10 = sum_y_1_fu_212;
    end
end
always @ (*) begin
    if (((icmp_ln30_3_reg_2643_pp0_iter5_reg == 1'd1) & (icmp_ln30_2_reg_2639_pp0_iter5_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        ap_sig_allocacmp_sum_z_10 = ap_phi_reg_pp0_iter5_sum_z_9_reg_925;
    end else begin
        ap_sig_allocacmp_sum_z_10 = sum_z_1_fu_216;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_1004_p0 = q_z_3_fu_2235_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_1004_p0 = q_y_3_fu_2216_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_1004_p0 = q_x_3_fu_2212_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_1004_p0 = q_z_2_fu_2168_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_1004_p0 = q_y_2_fu_2149_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_1004_p0 = q_x_2_fu_2145_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_1004_p0 = q_z_1_fu_2101_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1004_p0 = q_y_1_fu_2082_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1004_p0 = q_x_1_fu_2078_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1004_p0 = q_x_fu_2019_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1004_p0 = q_z_fu_2015_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1004_p0 = q_y_fu_1891_p1;
        end else begin
            grp_fu_1004_p0 = 'bx;
        end
    end else begin
        grp_fu_1004_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_1004_p1 = p_x;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1004_p1 = p_z;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1004_p1 = p_y;
    end else begin
        grp_fu_1004_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln30_3_reg_2643 == 1'd1) & (icmp_ln30_2_reg_2639 == 1'd1) & (icmp_ln30_1_reg_2555 == 1'd1) & (icmp_ln30_reg_2447 == 1'd1) & (1'b0 == ap_block_pp0_stage14_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (1'd0 == and_ln34_31_fu_2274_p2)) | ((icmp_ln30_2_reg_2639 == 1'd1) & (icmp_ln30_1_reg_2555 == 1'd1) & (icmp_ln30_reg_2447 == 1'd1) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'd0 == and_ln34_23_fu_2207_p2)) | ((icmp_ln30_1_reg_2555 == 1'd1) & (icmp_ln30_reg_2447 == 1'd1) & (1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'd0 == and_ln34_15_fu_2140_p2)) | ((icmp_ln30_reg_2447 == 1'd1) & (1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'd0 == and_ln34_7_fu_2072_p2)))) begin
        grp_fu_956_opcode = 2'd1;
end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage30_00001) & (ap_predicate_pred2398_state128 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((icmp_ln30_2_reg_2639_pp0_iter3_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter3_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage27_00001) & (1'b1 == ap_CS_fsm_pp0_stage27) & (1'd0 == and_ln34_23_reg_3039_pp0_iter3_reg)) | ((icmp_ln30_1_reg_2555_pp0_iter3_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage24_00001) & (1'b1 == ap_CS_fsm_pp0_stage24) & (1'd0 == and_ln34_15_reg_3007_pp0_iter3_reg)) | ((icmp_ln30_reg_2447_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage21_00001) & (1'b1 == ap_CS_fsm_pp0_stage21) & (1'd0 == and_ln34_7_reg_2975_pp0_iter3_reg)) | ((icmp_ln30_2_reg_2639_pp0_iter1_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter1_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter1_reg== 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage2_00001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'd0 == and_ln34_23_reg_3039)) | ((1'b0 == ap_block_pp0_stage29_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred2338_state31 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((icmp_ln30_2_reg_2639_pp0_iter5_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage3_00001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'd0 == and_ln34_23_reg_3039_pp0_iter4_reg)) | ((icmp_ln30_reg_2447_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage19_00001) & (1'b1 == ap_CS_fsm_pp0_stage19) & (1'd0 == and_ln34_7_reg_2975_pp0_iter4_reg)) | ((icmp_ln30_2_reg_2639 == 1'd1) & (icmp_ln30_1_reg_2555 == 1'd1) & (icmp_ln30_reg_2447 == 1'd1) & (1'b0 == ap_block_pp0_stage26_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26) & (1'd0 == and_ln34_23_reg_3039))| ((icmp_ln30_1_reg_2555 == 1'd1) & (icmp_ln30_reg_2447 == 1'd1) & (1'b0 == ap_block_pp0_stage31_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31) & (1'd0 == and_ln34_15_reg_3007)) | ((icmp_ln30_1_reg_2555 == 1'd1) & (icmp_ln30_reg_2447 == 1'd1) & (1'b0 == ap_block_pp0_stage23_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (1'd0 == and_ln34_15_reg_3007)) | ((icmp_ln30_reg_2447 == 1'd1) & (1'b0 == ap_block_pp0_stage28_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28) & (1'd0 == and_ln34_7_reg_2975)) | ((icmp_ln30_reg_2447 == 1'd1) & (1'b0 == ap_block_pp0_stage20_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (1'd0 == and_ln34_7_reg_2975)))) begin
        grp_fu_956_opcode = 2'd0;
    end else begin
        grp_fu_956_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_956_p0 = ap_phi_reg_pp0_iter5_sum_x_5_reg_833;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_956_p0 = ap_sig_allocacmp_sum_x_10;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_956_p0 = reg_1084;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_956_p0 = mul176_1_reg_3230;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage30) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        grp_fu_956_p0 = reg_1079;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_956_p0 = add171_2_reg_3157;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_956_p0 = add171_1_reg_3152;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_956_p0 = reg_1066;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_956_p0 = reg_1047;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_956_p0 = reg_1026;
    end else if ((((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        grp_fu_956_p0 = reg_1008;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_956_p0 = p_x;
    end else begin
        grp_fu_956_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_956_p1 = reg_1103;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage30) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        grp_fu_956_p1 = 64'd13835058055282163712;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_956_p1 = reg_1059;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_956_p1 = reg_1040;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_956_p1 = reg_1020;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_956_p1 = reg_1053;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_956_p1 = reg_1033;
    end else if ((((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        grp_fu_956_p1 = reg_1014;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_956_p1 = q_x_3_reg_3043;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_956_p1 = q_x_2_reg_3011;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_956_p1 = q_x_1_reg_2979;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_956_p1 = q_x_reg_2964;
    end else begin
        grp_fu_956_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln30_3_reg_2643 == 1'd1) & (icmp_ln30_2_reg_2639 == 1'd1) & (icmp_ln30_1_reg_2555 == 1'd1) & (icmp_ln30_reg_2447 == 1'd1) & (1'b0 == ap_block_pp0_stage14_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (1'd0 == and_ln34_31_fu_2274_p2)) | ((icmp_ln30_2_reg_2639 == 1'd1) & (icmp_ln30_1_reg_2555 == 1'd1) & (icmp_ln30_reg_2447 == 1'd1) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'd0 == and_ln34_23_fu_2207_p2)) | ((icmp_ln30_1_reg_2555 == 1'd1) & (icmp_ln30_reg_2447 == 1'd1) & (1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'd0 == and_ln34_15_fu_2140_p2)) | ((icmp_ln30_reg_2447 == 1'd1) & (1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'd0 == and_ln34_7_fu_2072_p2)))) begin
        grp_fu_960_opcode = 2'd1;
    end else if ((((icmp_ln30_2_reg_2639_pp0_iter5_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage3_00001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'd0 == and_ln34_23_reg_3039_pp0_iter4_reg)) | ((icmp_ln30_1_reg_2555_pp0_iter4_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage27_00001) & (1'b1 == ap_CS_fsm_pp0_stage27) & (1'd0 == and_ln34_15_reg_3007_pp0_iter4_reg)) | ((icmp_ln30_reg_2447_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage19_00001) & (1'b1 == ap_CS_fsm_pp0_stage19) & (1'd0 == and_ln34_7_reg_2975_pp0_iter4_reg)))) begin
        grp_fu_960_opcode = 2'd0;
    end else begin
        grp_fu_960_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_960_p0 = ap_phi_reg_pp0_iter5_sum_y_5_reg_845;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_960_p0 = ap_phi_reg_pp0_iter4_sum_x_3_reg_800;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_960_p0 = ap_sig_allocacmp_sum_y_10;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_960_p0 = p_y;
    end else begin
        grp_fu_960_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_960_p1 = reg_1108;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_960_p1 = mul180_1_reg_3271;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_960_p1 = reg_1084;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_960_p1 = q_y_3_reg_3068;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_960_p1 = q_y_2_reg_3017;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_960_p1 = q_y_1_reg_2985;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_960_p1 = q_y_reg_2827;
    end else begin
        grp_fu_960_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln30_3_reg_2643 == 1'd1) & (icmp_ln30_2_reg_2639 == 1'd1) & (icmp_ln30_1_reg_2555 == 1'd1) & (icmp_ln30_reg_2447 == 1'd1) & (1'b0 == ap_block_pp0_stage14_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (1'd0 == and_ln34_31_fu_2274_p2)) | ((icmp_ln30_2_reg_2639 == 1'd1) & (icmp_ln30_1_reg_2555 == 1'd1) & (icmp_ln30_reg_2447 == 1'd1) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'd0 == and_ln34_23_fu_2207_p2)) | ((icmp_ln30_1_reg_2555 == 1'd1) & (icmp_ln30_reg_2447 == 1'd1) & (1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'd0 == and_ln34_15_fu_2140_p2)) | ((icmp_ln30_reg_2447 == 1'd1) & (1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'd0 == and_ln34_7_fu_2072_p2)))) begin
        grp_fu_964_opcode = 2'd1;
    end else if ((((icmp_ln30_2_reg_2639_pp0_iter5_reg == 1'd1) & (icmp_ln30_1_reg_2555_pp0_iter5_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage3_00001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'd0 == and_ln34_23_reg_3039_pp0_iter4_reg)) | ((icmp_ln30_1_reg_2555_pp0_iter4_reg == 1'd1) & (icmp_ln30_reg_2447_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage27_00001) & (1'b1 == ap_CS_fsm_pp0_stage27) & (1'd0 == and_ln34_15_reg_3007_pp0_iter4_reg)) | ((icmp_ln30_reg_2447_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage19_00001) & (1'b1 == ap_CS_fsm_pp0_stage19) & (1'd0 == and_ln34_7_reg_2975_pp0_iter4_reg)))) begin
        grp_fu_964_opcode = 2'd0;
    end else begin
        grp_fu_964_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_964_p0 = ap_phi_reg_pp0_iter5_sum_z_5_reg_857;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_964_p0 = ap_phi_reg_pp0_iter4_sum_y_3_reg_811;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_964_p0 = ap_sig_allocacmp_sum_z_10;
    end else if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_964_p0 = p_z;
    end else begin
        grp_fu_964_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_964_p1 = reg_1096;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_964_p1 = reg_1114;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_964_p1 = reg_1108;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_964_p1 = q_z_3_reg_3079;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_964_p1 = q_z_2_reg_3028;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_964_p1 = q_z_1_reg_2996;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_964_p1 = q_z_reg_2953;
    end else begin
        grp_fu_964_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_968_p0 = ap_phi_reg_pp0_iter5_sum_x_7_reg_869;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_968_p0 = ap_phi_reg_pp0_iter4_sum_z_3_reg_822;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_968_p0 = reg_1066;
    end else begin
        grp_fu_968_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_968_p1 = reg_1014;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_968_p1 = mul184_1_reg_3276;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_968_p1 = reg_1072;
    end else begin
        grp_fu_968_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_990_p0 = reg_1033;
    end else if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        grp_fu_990_p0 = reg_1096;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_990_p0 = reg_1072;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_990_p0 = reg_1059;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_990_p0 = r2inv_2_reg_3194_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_990_p0 = r2inv_1_reg_3188_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_990_p0 = r2inv_reg_3182_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_990_p0 = r6inv_2_reg_3219;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_990_p0 = r6inv_1_reg_3213;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        grp_fu_990_p0 = r6inv_reg_3207;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_990_p0 = reg_1040;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_990_p0 = reg_1026;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_990_p0 = reg_1020;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_990_p0 = r2inv_3_reg_3200;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_990_p0 = reg_1008;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_990_p0 = r2inv_2_reg_3194;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_990_p0 = r2inv_1_reg_3188;
    end else if (((1'b0 == ap_block_pp0_stage31) & (1'b1 == ap_CS_fsm_pp0_stage31) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        grp_fu_990_p0 = r2inv_reg_3182;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_990_p0 = dz_3_reg_3146;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_990_p0 = dx_3_reg_3133;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_990_p0 = dz_2_reg_3127;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_990_p0 = dx_2_reg_3115;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_990_p0 = dz_1_reg_3108;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_990_p0 = dx_1_reg_3094;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_990_p0 = dz_reg_3061;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_990_p0 = dx_reg_3049;
    end else begin
        grp_fu_990_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_990_p1 = dz_3_reg_3146_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_990_p1 = dz_2_reg_3127_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_990_p1 = dx_2_reg_3115_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_990_p1 = dy_1_reg_3101_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_990_p1 = dx_reg_3049_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_990_p1 = reg_1047;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_990_p1 = reg_1040;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_990_p1 = reg_1026;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_990_p1 = sub177_2_reg_3240;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_990_p1 = sub177_1_reg_3235;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        grp_fu_990_p1 = reg_1090;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_990_p1 = r2inv_3_reg_3200;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_990_p1 = r2inv_2_reg_3194;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_990_p1 = r2inv_1_reg_3188;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage31) & (1'b1 == ap_CS_fsm_pp0_stage31) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        grp_fu_990_p1 = r2inv_reg_3182;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_990_p1 = dz_3_reg_3146;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_990_p1 = dx_3_reg_3133;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_990_p1 = dz_2_reg_3127;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_990_p1 = dx_2_reg_3115;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_990_p1 = dz_1_reg_3108;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_990_p1 = dx_1_reg_3094;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_990_p1 = dz_reg_3061;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_990_p1 = dx_reg_3049;
    end else begin
        grp_fu_990_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage31) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_994_p0 = reg_1033;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_994_p0 = r2inv_3_reg_3200_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_994_p0 = reg_1096;
    end else if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        grp_fu_994_p0 = reg_1072;
    end else if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_994_p0 = reg_1059;
    end else if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        grp_fu_994_p0 = r6inv_3_reg_3225;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_994_p0 = r6inv_2_reg_3219;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_994_p0 = r6inv_1_reg_3213;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_994_p0 = r6inv_reg_3207;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_994_p0 = dy_3_reg_3140;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_994_p0 = dy_2_reg_3121;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_994_p0 = dy_1_reg_3101;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_994_p0 = dy_reg_3055;
    end else begin
        grp_fu_994_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_994_p1 = dy_3_reg_3140_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage31) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_994_p1 = dx_3_reg_3133_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_994_p1 = potential_3_reg_3245;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_994_p1 = dy_2_reg_3121_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_994_p1 = dz_1_reg_3108_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_994_p1 = dx_1_reg_3094_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_994_p1 = dz_reg_3061_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_994_p1 = dy_reg_3055_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_994_p1 = reg_1090;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_994_p1 = 64'd4609434218613702656;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_994_p1 = dy_3_reg_3140;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_994_p1 = dy_2_reg_3121;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_994_p1 = dy_1_reg_3101;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_994_p1 = dy_reg_3055;
    end else begin
        grp_fu_994_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_999_p1 = add173_3_reg_3177;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_999_p1 = add173_2_reg_3172;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_999_p1 = add173_1_reg_3167;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_999_p1 = add1_reg_3162;
        end else begin
            grp_fu_999_p1 = 'bx;
        end
    end else begin
        grp_fu_999_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_0_0_0_ce0_local = 1'b1;
    end else begin
        position_0_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_0_0_0_ce1_local = 1'b1;
    end else begin
        position_0_0_0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_0_0_1_ce0_local = 1'b1;
    end else begin
        position_0_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_0_0_1_ce1_local = 1'b1;
    end else begin
        position_0_0_0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_0_1_0_ce0_local = 1'b1;
    end else begin
        position_0_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_0_1_0_ce1_local = 1'b1;
    end else begin
        position_0_0_1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_0_1_1_ce0_local = 1'b1;
    end else begin
        position_0_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_0_1_1_ce1_local = 1'b1;
    end else begin
        position_0_0_1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_1_0_0_ce0_local = 1'b1;
    end else begin
        position_0_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_1_0_0_ce1_local = 1'b1;
    end else begin
        position_0_1_0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_1_0_1_ce0_local = 1'b1;
    end else begin
        position_0_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_1_0_1_ce1_local = 1'b1;
    end else begin
        position_0_1_0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_1_1_0_ce0_local = 1'b1;
    end else begin
        position_0_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_1_1_0_ce1_local = 1'b1;
    end else begin
        position_0_1_1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_1_1_1_ce0_local = 1'b1;
    end else begin
        position_0_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_1_1_1_ce1_local = 1'b1;
    end else begin
        position_0_1_1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_0_0_0_ce0_local = 1'b1;
    end else begin
        position_1_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_0_0_0_ce1_local = 1'b1;
    end else begin
        position_1_0_0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_0_0_1_ce0_local = 1'b1;
    end else begin
        position_1_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_0_0_1_ce1_local = 1'b1;
    end else begin
        position_1_0_0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_0_1_0_ce0_local = 1'b1;
    end else begin
        position_1_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_0_1_0_ce1_local = 1'b1;
    end else begin
        position_1_0_1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_0_1_1_ce0_local = 1'b1;
    end else begin
        position_1_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_0_1_1_ce1_local = 1'b1;
    end else begin
        position_1_0_1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_1_0_0_ce0_local = 1'b1;
    end else begin
        position_1_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_1_0_0_ce1_local = 1'b1;
    end else begin
        position_1_1_0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_1_0_1_ce0_local = 1'b1;
    end else begin
        position_1_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_1_0_1_ce1_local = 1'b1;
    end else begin
        position_1_1_0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_1_1_0_ce0_local = 1'b1;
    end else begin
        position_1_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_1_1_0_ce1_local = 1'b1;
    end else begin
        position_1_1_1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_1_1_1_ce0_local = 1'b1;
    end else begin
        position_1_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_1_1_1_ce1_local = 1'b1;
    end else begin
        position_1_1_1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state184) | (1'b1 == ap_CS_fsm_state183) | (1'b1 == ap_CS_fsm_state182) | (1'b1 == ap_CS_fsm_state185))) begin
        sum_x_1_out_ap_vld = 1'b1;
    end else begin
        sum_x_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state184) | (1'b1 == ap_CS_fsm_state183) | (1'b1 == ap_CS_fsm_state182))) begin
        sum_x_3_out_ap_vld = 1'b1;
    end else begin
        sum_x_3_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state183) | (1'b1 == ap_CS_fsm_state182))) begin
        sum_x_5_out_ap_vld = 1'b1;
    end else begin
        sum_x_5_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state182)) begin
        sum_x_7_out_ap_vld = 1'b1;
    end else begin
        sum_x_7_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state184) | (1'b1 == ap_CS_fsm_state183) | (1'b1 == ap_CS_fsm_state182) | (1'b1 == ap_CS_fsm_state185))) begin
        sum_y_1_out_ap_vld = 1'b1;
    end else begin
        sum_y_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state184) | (1'b1 == ap_CS_fsm_state183) | (1'b1 == ap_CS_fsm_state182))) begin
        sum_y_3_out_ap_vld = 1'b1;
    end else begin
        sum_y_3_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state183) | (1'b1 == ap_CS_fsm_state182))) begin
        sum_y_5_out_ap_vld = 1'b1;
    end else begin
        sum_y_5_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state182)) begin
        sum_y_7_out_ap_vld = 1'b1;
    end else begin
        sum_y_7_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state184) | (1'b1 == ap_CS_fsm_state183) | (1'b1 == ap_CS_fsm_state182) | (1'b1 == ap_CS_fsm_state185))) begin
        sum_z_1_out_ap_vld = 1'b1;
    end else begin
        sum_z_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state184) | (1'b1 == ap_CS_fsm_state183) | (1'b1 == ap_CS_fsm_state182))) begin
        sum_z_3_out_ap_vld = 1'b1;
    end else begin
        sum_z_3_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state183) | (1'b1 == ap_CS_fsm_state182))) begin
        sum_z_5_out_ap_vld = 1'b1;
    end else begin
        sum_z_5_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state182)) begin
        sum_z_7_out_ap_vld = 1'b1;
    end else begin
        sum_z_7_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
            if ((~((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11)) & (1'b0 == ap_block_pp0_stage11_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_exit_tran_regpp0 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
                ap_NS_fsm = ap_ST_fsm_state185;
            end else if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_exit_tran_regpp0 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
                ap_NS_fsm = ap_ST_fsm_state184;
            end else if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_exit_tran_regpp0 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
                ap_NS_fsm = ap_ST_fsm_state183;
            end else if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_exit_tran_regpp0 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
                ap_NS_fsm = ap_ST_fsm_state182;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        ap_ST_fsm_state182 : begin
            ap_NS_fsm = ap_ST_fsm_state186;
        end
        ap_ST_fsm_state183 : begin
            ap_NS_fsm = ap_ST_fsm_state186;
        end
        ap_ST_fsm_state184 : begin
            ap_NS_fsm = ap_ST_fsm_state186;
        end
        ap_ST_fsm_state185 : begin
            ap_NS_fsm = ap_ST_fsm_state186;
        end
        ap_ST_fsm_state186 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln30_fu_2279_p2 = (q_idx_1_reg_2442 + 32'd4);
assign add_ln31_1_fu_1336_p2 = (mul_ln31 + or_ln2_fu_1328_p3);
assign add_ln31_fu_1166_p2 = (mul_ln31 + lshr_ln10_1_fu_1156_p4);
assign and_ln34_10_fu_2109_p2 = (or_ln34_3_reg_2539 & grp_fu_1004_p2);
assign and_ln34_11_fu_2114_p2 = (or_ln34_7_fu_2105_p2 & and_ln34_10_fu_2109_p2);
assign and_ln34_12_fu_2124_p2 = (or_ln34_5_reg_2547 & grp_fu_1004_p2);
assign and_ln34_13_fu_2129_p2 = (or_ln34_8_fu_2120_p2 & and_ln34_12_fu_2124_p2);
assign and_ln34_14_fu_2135_p2 = (and_ln34_13_fu_2129_p2 & and_ln34_11_reg_3002);
assign and_ln34_15_fu_2140_p2 = (and_ln34_9_reg_2991 & and_ln34_14_fu_2135_p2);
assign and_ln34_16_fu_2157_p2 = (or_ln34_9_fu_2153_p2 & or_ln34_1_reg_2531);
assign and_ln34_17_fu_2162_p2 = (grp_fu_1004_p2 & and_ln34_16_fu_2157_p2);
assign and_ln34_18_fu_2176_p2 = (or_ln34_3_reg_2539 & grp_fu_1004_p2);
assign and_ln34_19_fu_2181_p2 = (or_ln34_10_fu_2172_p2 & and_ln34_18_fu_2176_p2);
assign and_ln34_1_fu_2042_p2 = (grp_fu_1004_p2 & and_ln34_fu_2037_p2);
assign and_ln34_20_fu_2191_p2 = (or_ln34_5_reg_2547 & grp_fu_1004_p2);
assign and_ln34_21_fu_2196_p2 = (or_ln34_11_fu_2187_p2 & and_ln34_20_fu_2191_p2);
assign and_ln34_22_fu_2202_p2 = (and_ln34_21_fu_2196_p2 & and_ln34_19_reg_3034);
assign and_ln34_23_fu_2207_p2 = (and_ln34_22_fu_2202_p2 & and_ln34_17_reg_3023);
assign and_ln34_24_fu_2224_p2 = (or_ln34_1_reg_2531 & or_ln34_12_fu_2220_p2);
assign and_ln34_25_fu_2229_p2 = (grp_fu_1004_p2 & and_ln34_24_fu_2224_p2);
assign and_ln34_26_fu_2243_p2 = (or_ln34_3_reg_2539 & grp_fu_1004_p2);
assign and_ln34_27_fu_2248_p2 = (or_ln34_13_fu_2239_p2 & and_ln34_26_fu_2243_p2);
assign and_ln34_28_fu_2258_p2 = (or_ln34_5_reg_2547 & grp_fu_1004_p2);
assign and_ln34_29_fu_2263_p2 = (or_ln34_14_fu_2254_p2 & and_ln34_28_fu_2258_p2);
assign and_ln34_2_fu_2027_p2 = (or_ln34_2_fu_2023_p2 & grp_fu_1004_p2);
assign and_ln34_30_fu_2269_p2 = (and_ln34_29_fu_2263_p2 & and_ln34_27_reg_3085);
assign and_ln34_31_fu_2274_p2 = (and_ln34_30_fu_2269_p2 & and_ln34_25_reg_3074);
assign and_ln34_3_fu_2062_p2 = (and_ln34_5_fu_2056_p2 & and_ln34_2_reg_2970);
assign and_ln34_4_fu_2052_p2 = (or_ln34_5_reg_2547 & or_ln34_3_reg_2539);
assign and_ln34_5_fu_2056_p2 = (or_ln34_4_fu_2048_p2 & and_ln34_4_fu_2052_p2);
assign and_ln34_6_fu_2067_p2 = (tmp_5_reg_2959 & and_ln34_3_fu_2062_p2);
assign and_ln34_7_fu_2072_p2 = (and_ln34_6_fu_2067_p2 & and_ln34_1_fu_2042_p2);
assign and_ln34_8_fu_2090_p2 = (or_ln34_6_fu_2086_p2 & or_ln34_1_reg_2531);
assign and_ln34_9_fu_2095_p2 = (grp_fu_1004_p2 & and_ln34_8_fu_2090_p2);
assign and_ln34_fu_2037_p2 = (or_ln34_fu_2033_p2 & or_ln34_1_reg_2531);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_pp0_stage29 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage30 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state182 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_state183 = ap_CS_fsm[32'd34];
assign ap_CS_fsm_state184 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_state185 = ap_CS_fsm[32'd36];
assign ap_CS_fsm_state186 = ap_CS_fsm[32'd37];
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
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage30 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_phi_reg_pp0_iter0_sum_x_3_reg_800 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_x_5_reg_833 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_x_7_reg_869 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_x_9_reg_905 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_y_3_reg_811 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_y_5_reg_845 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_y_7_reg_881 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_y_9_reg_915 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_z_3_reg_822 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_z_5_reg_857 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_z_7_reg_893 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_z_9_reg_925 = 'bx;
always @ (*) begin
    ap_predicate_tran173to182_state33 = ((icmp_ln30_3_reg_2643 == 1'd0) & (icmp_ln30_2_reg_2639 == 1'd1) & (icmp_ln30_1_reg_2555 == 1'd1) & (icmp_ln30_reg_2447 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran173to183_state33 = ((icmp_ln30_2_reg_2639 == 1'd0) & (icmp_ln30_1_reg_2555 == 1'd1) & (icmp_ln30_reg_2447 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran173to184_state33 = ((icmp_ln30_1_reg_2555 == 1'd0) & (icmp_ln30_reg_2447 == 1'd1));
end
assign icmp_ln30_1_fu_1291_p2 = (($signed(zext_ln28_fu_1287_p1) < $signed(q_idx_range)) ? 1'b1 : 1'b0);
assign icmp_ln30_2_fu_1361_p2 = (($signed(zext_ln28_1_fu_1314_p1) < $signed(q_idx_range)) ? 1'b1 : 1'b0);
assign icmp_ln30_3_fu_1378_p2 = (($signed(zext_ln28_2_fu_1374_p1) < $signed(q_idx_range)) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_1151_p2 = (($signed(zext_ln30_fu_1147_p1) < $signed(sext_ln24_cast_reg_2437)) ? 1'b1 : 1'b0);
assign icmp_ln34_10_fu_1252_p2 = ((tmp_10_fu_1243_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_11_fu_1258_p2 = ((trunc_ln34_5 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_12_fu_1925_p2 = ((tmp_13_reg_2707 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_13_fu_1930_p2 = ((trunc_ln34_1_reg_2712 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_14_fu_1935_p2 = ((tmp_15_reg_2717 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_15_fu_1940_p2 = ((trunc_ln34_8_reg_2722 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_16_fu_1945_p2 = ((tmp_17_reg_2727 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_17_fu_1950_p2 = ((trunc_ln34_s_reg_2732 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_18_fu_1955_p2 = ((tmp_21_reg_2752 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_19_fu_1960_p2 = ((trunc_ln34_6_reg_2757 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_1_fu_1900_p2 = ((trunc_ln34_reg_2667 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_20_fu_1965_p2 = ((tmp_23_reg_2762 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_21_fu_1970_p2 = ((trunc_ln34_9_reg_2767 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_22_fu_1975_p2 = ((tmp_25_reg_2772 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_23_fu_1980_p2 = ((trunc_ln34_7_reg_2777 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_24_fu_1985_p2 = ((tmp_27_reg_2797 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_25_fu_1990_p2 = ((trunc_ln34_10_reg_2802 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_26_fu_1995_p2 = ((tmp_29_reg_2807 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_27_fu_2000_p2 = ((trunc_ln34_11_reg_2812 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_28_fu_2005_p2 = ((tmp_31_reg_2817 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_29_fu_2010_p2 = ((trunc_ln34_12_reg_2822 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_2_fu_1200_p2 = ((tmp_1_fu_1191_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_3_fu_1206_p2 = ((empty == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_4_fu_1905_p2 = ((tmp_3_reg_2672 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_5_fu_1910_p2 = ((trunc_ln34_2_reg_2677 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_6_fu_1226_p2 = ((tmp_4_fu_1217_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_7_fu_1232_p2 = ((trunc_ln34_3 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_8_fu_1915_p2 = ((tmp_s_reg_2682 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_9_fu_1920_p2 = ((trunc_ln34_4_reg_2687 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_fu_1895_p2 = ((tmp_reg_2662 != 11'd2047) ? 1'b1 : 1'b0);
assign lshr_ln10_1_fu_1156_p4 = {{q_idx_fu_204[6:1]}};
assign or_ln1_fu_1279_p3 = {{tmp_12_fu_1269_p4}, {1'd1}};
assign or_ln2_fu_1328_p3 = {{tmp_20_fu_1318_p4}, {1'd1}};
assign or_ln30_1_fu_1306_p3 = {{tmp_19_fu_1296_p4}, {2'd2}};
assign or_ln30_2_fu_1366_p3 = {{tmp_19_fu_1296_p4}, {2'd3}};
assign or_ln34_10_fu_2172_p2 = (icmp_ln34_21_reg_2908 | icmp_ln34_20_reg_2903);
assign or_ln34_11_fu_2187_p2 = (icmp_ln34_23_reg_2918 | icmp_ln34_22_reg_2913);
assign or_ln34_12_fu_2220_p2 = (icmp_ln34_25_reg_2928 | icmp_ln34_24_reg_2923);
assign or_ln34_13_fu_2239_p2 = (icmp_ln34_27_reg_2938 | icmp_ln34_26_reg_2933);
assign or_ln34_14_fu_2254_p2 = (icmp_ln34_29_reg_2948 | icmp_ln34_28_reg_2943);
assign or_ln34_1_fu_1211_p2 = (icmp_ln34_3_fu_1206_p2 | icmp_ln34_2_fu_1200_p2);
assign or_ln34_2_fu_2023_p2 = (icmp_ln34_5_reg_2848 | icmp_ln34_4_reg_2843);
assign or_ln34_3_fu_1237_p2 = (icmp_ln34_7_fu_1232_p2 | icmp_ln34_6_fu_1226_p2);
assign or_ln34_4_fu_2048_p2 = (icmp_ln34_9_reg_2858 | icmp_ln34_8_reg_2853);
assign or_ln34_5_fu_1263_p2 = (icmp_ln34_11_fu_1258_p2 | icmp_ln34_10_fu_1252_p2);
assign or_ln34_6_fu_2086_p2 = (icmp_ln34_13_reg_2868 | icmp_ln34_12_reg_2863);
assign or_ln34_7_fu_2105_p2 = (icmp_ln34_15_reg_2878 | icmp_ln34_14_reg_2873);
assign or_ln34_8_fu_2120_p2 = (icmp_ln34_17_reg_2888 | icmp_ln34_16_reg_2883);
assign or_ln34_9_fu_2153_p2 = (icmp_ln34_19_reg_2898 | icmp_ln34_18_reg_2893);
assign or_ln34_fu_2033_p2 = (icmp_ln34_reg_2833 | icmp_ln34_1_reg_2838);
assign position_0_0_0_0_address0 = zext_ln31_1_fu_1341_p1;
assign position_0_0_0_0_address1 = zext_ln31_fu_1171_p1;
assign position_0_0_0_0_ce0 = position_0_0_0_0_ce0_local;
assign position_0_0_0_0_ce1 = position_0_0_0_0_ce1_local;
assign position_0_0_0_1_address0 = zext_ln31_1_fu_1341_p1;
assign position_0_0_0_1_address1 = zext_ln31_fu_1171_p1;
assign position_0_0_0_1_ce0 = position_0_0_0_1_ce0_local;
assign position_0_0_0_1_ce1 = position_0_0_0_1_ce1_local;
assign position_0_0_1_0_address0 = zext_ln31_1_fu_1341_p1;
assign position_0_0_1_0_address1 = zext_ln31_fu_1171_p1;
assign position_0_0_1_0_ce0 = position_0_0_1_0_ce0_local;
assign position_0_0_1_0_ce1 = position_0_0_1_0_ce1_local;
assign position_0_0_1_1_address0 = zext_ln31_1_fu_1341_p1;
assign position_0_0_1_1_address1 = zext_ln31_fu_1171_p1;
assign position_0_0_1_1_ce0 = position_0_0_1_1_ce0_local;
assign position_0_0_1_1_ce1 = position_0_0_1_1_ce1_local;
assign position_0_1_0_0_address0 = zext_ln31_1_fu_1341_p1;
assign position_0_1_0_0_address1 = zext_ln31_fu_1171_p1;
assign position_0_1_0_0_ce0 = position_0_1_0_0_ce0_local;
assign position_0_1_0_0_ce1 = position_0_1_0_0_ce1_local;
assign position_0_1_0_1_address0 = zext_ln31_1_fu_1341_p1;
assign position_0_1_0_1_address1 = zext_ln31_fu_1171_p1;
assign position_0_1_0_1_ce0 = position_0_1_0_1_ce0_local;
assign position_0_1_0_1_ce1 = position_0_1_0_1_ce1_local;
assign position_0_1_1_0_address0 = zext_ln31_1_fu_1341_p1;
assign position_0_1_1_0_address1 = zext_ln31_fu_1171_p1;
assign position_0_1_1_0_ce0 = position_0_1_1_0_ce0_local;
assign position_0_1_1_0_ce1 = position_0_1_1_0_ce1_local;
assign position_0_1_1_1_address0 = zext_ln31_1_fu_1341_p1;
assign position_0_1_1_1_address1 = zext_ln31_fu_1171_p1;
assign position_0_1_1_1_ce0 = position_0_1_1_1_ce0_local;
assign position_0_1_1_1_ce1 = position_0_1_1_1_ce1_local;
assign position_1_0_0_0_address0 = zext_ln31_1_fu_1341_p1;
assign position_1_0_0_0_address1 = zext_ln31_fu_1171_p1;
assign position_1_0_0_0_ce0 = position_1_0_0_0_ce0_local;
assign position_1_0_0_0_ce1 = position_1_0_0_0_ce1_local;
assign position_1_0_0_1_address0 = zext_ln31_1_fu_1341_p1;
assign position_1_0_0_1_address1 = zext_ln31_fu_1171_p1;
assign position_1_0_0_1_ce0 = position_1_0_0_1_ce0_local;
assign position_1_0_0_1_ce1 = position_1_0_0_1_ce1_local;
assign position_1_0_1_0_address0 = zext_ln31_1_fu_1341_p1;
assign position_1_0_1_0_address1 = zext_ln31_fu_1171_p1;
assign position_1_0_1_0_ce0 = position_1_0_1_0_ce0_local;
assign position_1_0_1_0_ce1 = position_1_0_1_0_ce1_local;
assign position_1_0_1_1_address0 = zext_ln31_1_fu_1341_p1;
assign position_1_0_1_1_address1 = zext_ln31_fu_1171_p1;
assign position_1_0_1_1_ce0 = position_1_0_1_1_ce0_local;
assign position_1_0_1_1_ce1 = position_1_0_1_1_ce1_local;
assign position_1_1_0_0_address0 = zext_ln31_1_fu_1341_p1;
assign position_1_1_0_0_address1 = zext_ln31_fu_1171_p1;
assign position_1_1_0_0_ce0 = position_1_1_0_0_ce0_local;
assign position_1_1_0_0_ce1 = position_1_1_0_0_ce1_local;
assign position_1_1_0_1_address0 = zext_ln31_1_fu_1341_p1;
assign position_1_1_0_1_address1 = zext_ln31_fu_1171_p1;
assign position_1_1_0_1_ce0 = position_1_1_0_1_ce0_local;
assign position_1_1_0_1_ce1 = position_1_1_0_1_ce1_local;
assign position_1_1_1_0_address0 = zext_ln31_1_fu_1341_p1;
assign position_1_1_1_0_address1 = zext_ln31_fu_1171_p1;
assign position_1_1_1_0_ce0 = position_1_1_1_0_ce0_local;
assign position_1_1_1_0_ce1 = position_1_1_1_0_ce1_local;
assign position_1_1_1_1_address0 = zext_ln31_1_fu_1341_p1;
assign position_1_1_1_1_address1 = zext_ln31_fu_1171_p1;
assign position_1_1_1_1_ce0 = position_1_1_1_1_ce0_local;
assign position_1_1_1_1_ce1 = position_1_1_1_1_ce1_local;
assign q_x_1_fu_2078_p1 = trunc_ln31_3_reg_2692;
assign q_x_2_fu_2145_p1 = trunc_ln31_6_reg_2737;
assign q_x_3_fu_2212_p1 = trunc_ln31_9_reg_2782;
assign q_x_fu_2019_p1 = trunc_ln31_reg_2647;
assign q_y_1_fu_2082_p1 = trunc_ln31_4_reg_2697;
assign q_y_2_fu_2149_p1 = trunc_ln31_7_reg_2742;
assign q_y_3_fu_2216_p1 = trunc_ln31_s_reg_2787;
assign q_y_fu_1891_p1 = trunc_ln31_1_reg_2652;
assign q_z_1_fu_2101_p1 = trunc_ln31_5_reg_2702;
assign q_z_2_fu_2168_p1 = trunc_ln31_8_reg_2747;
assign q_z_3_fu_2235_p1 = trunc_ln31_10_reg_2792;
assign q_z_fu_2015_p1 = trunc_ln31_2_reg_2657;
assign select_ln31_10_fu_1531_p3 = ((empty_10[0:0] == 1'b1) ? position_1_0_1_1_q1 : position_1_0_0_1_q1);
assign select_ln31_11_fu_1538_p3 = ((empty_10[0:0] == 1'b1) ? position_1_1_1_1_q1 : position_1_1_0_1_q1);
assign select_ln31_12_fu_1545_p3 = ((empty_11[0:0] == 1'b1) ? select_ln31_11_fu_1538_p3 : select_ln31_10_fu_1531_p3);
assign select_ln31_13_fu_1552_p3 = ((empty_12[0:0] == 1'b1) ? select_ln31_12_fu_1545_p3 : select_ln31_9_fu_1524_p3);
assign select_ln31_14_fu_1637_p3 = ((empty_10[0:0] == 1'b1) ? position_0_0_1_0_q0 : position_0_0_0_0_q0);
assign select_ln31_15_fu_1644_p3 = ((empty_10[0:0] == 1'b1) ? position_0_1_1_0_q0 : position_0_1_0_0_q0);
assign select_ln31_16_fu_1651_p3 = ((empty_11[0:0] == 1'b1) ? select_ln31_15_fu_1644_p3 : select_ln31_14_fu_1637_p3);
assign select_ln31_17_fu_1658_p3 = ((empty_10[0:0] == 1'b1) ? position_1_0_1_0_q0 : position_1_0_0_0_q0);
assign select_ln31_18_fu_1665_p3 = ((empty_10[0:0] == 1'b1) ? position_1_1_1_0_q0 : position_1_1_0_0_q0);
assign select_ln31_19_fu_1672_p3 = ((empty_11[0:0] == 1'b1) ? select_ln31_18_fu_1665_p3 : select_ln31_17_fu_1658_p3);
assign select_ln31_1_fu_1390_p3 = ((empty_10[0:0] == 1'b1) ? position_0_1_1_0_q1 : position_0_1_0_0_q1);
assign select_ln31_20_fu_1679_p3 = ((empty_12[0:0] == 1'b1) ? select_ln31_19_fu_1672_p3 : select_ln31_16_fu_1651_p3);
assign select_ln31_21_fu_1764_p3 = ((empty_10[0:0] == 1'b1) ? position_0_0_1_1_q0 : position_0_0_0_1_q0);
assign select_ln31_22_fu_1771_p3 = ((empty_10[0:0] == 1'b1) ? position_0_1_1_1_q0 : position_0_1_0_1_q0);
assign select_ln31_23_fu_1778_p3 = ((empty_11[0:0] == 1'b1) ? select_ln31_22_fu_1771_p3 : select_ln31_21_fu_1764_p3);
assign select_ln31_24_fu_1785_p3 = ((empty_10[0:0] == 1'b1) ? position_1_0_1_1_q0 : position_1_0_0_1_q0);
assign select_ln31_25_fu_1792_p3 = ((empty_10[0:0] == 1'b1) ? position_1_1_1_1_q0 : position_1_1_0_1_q0);
assign select_ln31_26_fu_1799_p3 = ((empty_11[0:0] == 1'b1) ? select_ln31_25_fu_1792_p3 : select_ln31_24_fu_1785_p3);
assign select_ln31_27_fu_1806_p3 = ((empty_12[0:0] == 1'b1) ? select_ln31_26_fu_1799_p3 : select_ln31_23_fu_1778_p3);
assign select_ln31_2_fu_1397_p3 = ((empty_11[0:0] == 1'b1) ? select_ln31_1_fu_1390_p3 : select_ln31_fu_1383_p3);
assign select_ln31_3_fu_1404_p3 = ((empty_10[0:0] == 1'b1) ? position_1_0_1_0_q1 : position_1_0_0_0_q1);
assign select_ln31_4_fu_1411_p3 = ((empty_10[0:0] == 1'b1) ? position_1_1_1_0_q1 : position_1_1_0_0_q1);
assign select_ln31_5_fu_1418_p3 = ((empty_11[0:0] == 1'b1) ? select_ln31_4_fu_1411_p3 : select_ln31_3_fu_1404_p3);
assign select_ln31_6_fu_1425_p3 = ((empty_12[0:0] == 1'b1) ? select_ln31_5_fu_1418_p3 : select_ln31_2_fu_1397_p3);
assign select_ln31_7_fu_1510_p3 = ((empty_10[0:0] == 1'b1) ? position_0_0_1_1_q1 : position_0_0_0_1_q1);
assign select_ln31_8_fu_1517_p3 = ((empty_10[0:0] == 1'b1) ? position_0_1_1_1_q1 : position_0_1_0_1_q1);
assign select_ln31_9_fu_1524_p3 = ((empty_11[0:0] == 1'b1) ? select_ln31_8_fu_1517_p3 : select_ln31_7_fu_1510_p3);
assign select_ln31_fu_1383_p3 = ((empty_10[0:0] == 1'b1) ? position_0_0_1_0_q1 : position_0_0_0_0_q1);
assign sext_ln24_cast_fu_1120_p1 = $signed(sext_ln24);
assign sum_x_1_out = sum_x_10_reg_3250;
assign sum_x_3_out = sum_x_3_reg_800;
assign sum_x_5_out = sum_x_5_reg_833;
assign sum_x_7_out = sum_x_7_reg_869;
assign sum_y_1_out = sum_y_10_reg_3257;
assign sum_y_3_out = sum_y_3_reg_811;
assign sum_y_5_out = sum_y_5_reg_845;
assign sum_y_7_out = sum_y_7_reg_881;
assign sum_z_1_out = sum_z_10_reg_3264;
assign sum_z_3_out = sum_z_3_reg_822;
assign sum_z_5_out = sum_z_5_reg_857;
assign sum_z_7_out = sum_z_7_reg_893;
assign tmp_10_fu_1243_p4 = {{select_ln25_14[190:180]}};
assign tmp_12_fu_1269_p4 = {{q_idx_fu_204[30:1]}};
assign tmp_19_fu_1296_p4 = {{q_idx_fu_204[30:2]}};
assign tmp_1_fu_1191_p4 = {{select_ln25_14[62:52]}};
assign tmp_20_fu_1318_p4 = {{q_idx_fu_204[6:2]}};
assign tmp_4_fu_1217_p4 = {{select_ln25_14[126:116]}};
assign trunc_ln31_3_fu_1559_p1 = select_ln31_13_fu_1552_p3[63:0];
assign trunc_ln31_6_fu_1686_p1 = select_ln31_20_fu_1679_p3[63:0];
assign trunc_ln31_9_fu_1813_p1 = select_ln31_27_fu_1806_p3[63:0];
assign trunc_ln31_fu_1432_p1 = select_ln31_6_fu_1425_p3[63:0];
assign trunc_ln34_10_fu_1847_p1 = select_ln31_27_fu_1806_p3[51:0];
assign trunc_ln34_1_fu_1593_p1 = select_ln31_13_fu_1552_p3[51:0];
assign trunc_ln34_6_fu_1720_p1 = select_ln31_20_fu_1679_p3[51:0];
assign trunc_ln34_fu_1466_p1 = select_ln31_6_fu_1425_p3[51:0];
assign zext_ln28_1_fu_1314_p1 = or_ln30_1_fu_1306_p3;
assign zext_ln28_2_fu_1374_p1 = or_ln30_2_fu_1366_p3;
assign zext_ln28_fu_1287_p1 = or_ln1_fu_1279_p3;
assign zext_ln30_fu_1147_p1 = q_idx_fu_204;
assign zext_ln31_1_fu_1341_p1 = add_ln31_1_fu_1336_p2;
assign zext_ln31_fu_1171_p1 = add_ln31_fu_1166_p2;
always @ (posedge ap_clk) begin
    ap_exit_tran_regpp0[3:2] <= 2'b00;
end
endmodule 