
module md (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,n_points_address0,n_points_ce0,n_points_q0,force_r_address0,force_r_ce0,force_r_we0,force_r_d0,force_r_q0,position_address0,position_ce0,position_q0,position_address1,position_ce1,position_q1);  
parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_state9 = 15'd256;
parameter    ap_ST_fsm_state10 = 15'd512;
parameter    ap_ST_fsm_state11 = 15'd1024;
parameter    ap_ST_fsm_state12 = 15'd2048;
parameter    ap_ST_fsm_state13 = 15'd4096;
parameter    ap_ST_fsm_state14 = 15'd8192;
parameter    ap_ST_fsm_state15 = 15'd16384;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] n_points_address0;
output   n_points_ce0;
input  [31:0] n_points_q0;
output  [9:0] force_r_address0;
output   force_r_ce0;
output   force_r_we0;
output  [191:0] force_r_d0;
input  [191:0] force_r_q0;
output  [9:0] position_address0;
output   position_ce0;
input  [191:0] position_q0;
output  [9:0] position_address1;
output   position_ce1;
input  [191:0] position_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] position_address0;
reg position_ce0;
reg position_ce1;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] add_ln14_fu_553_p2;
reg   [2:0] add_ln14_reg_1933;
wire    ap_CS_fsm_state2;
wire   [5:0] zext_ln14_fu_567_p1;
reg   [5:0] zext_ln14_reg_1938;
wire   [2:0] smax116_cast_fu_589_p1;
reg   [2:0] smax116_cast_reg_1943;
wire   [2:0] cond24_fu_605_p3;
reg   [2:0] cond24_reg_1948;
wire   [2:0] add_ln15_fu_619_p2;
reg   [2:0] add_ln15_reg_1956;
wire    ap_CS_fsm_state3;
wire   [7:0] tmp_fu_634_p3;
reg   [7:0] tmp_reg_1961;
wire   [2:0] smax111_cast_fu_660_p1;
reg   [2:0] smax111_cast_reg_1966;
wire   [2:0] cond47_fu_676_p3;
reg   [2:0] cond47_reg_1971;
wire   [2:0] add_ln16_fu_705_p2;
reg   [2:0] add_ln16_reg_1979;
wire    ap_CS_fsm_state4;
wire   [9:0] add_ln16_2_fu_749_p2;
reg   [9:0] add_ln16_2_reg_1989;
wire   [2:0] add_ln15_1_fu_755_p2;
wire   [2:0] smax_cast_fu_779_p1;
reg   [2:0] smax_cast_reg_1999;
wire    ap_CS_fsm_state5;
wire   [2:0] cond70_fu_795_p3;
reg   [2:0] cond70_reg_2004;
reg   [31:0] n_points_load_reg_2009;
wire   [5:0] zext_ln8_fu_816_p1;
reg   [5:0] zext_ln8_reg_2017;
wire    ap_CS_fsm_state6;
wire   [2:0] add_ln16_1_fu_820_p2;
wire   [7:0] tmp_75_fu_840_p3;
reg   [7:0] tmp_75_reg_2030;
wire    ap_CS_fsm_state7;
wire   [2:0] add_ln18_fu_848_p2;
wire    ap_CS_fsm_state8;
wire   [9:0] add_ln8_fu_897_p2;
reg   [9:0] add_ln8_reg_2048;
wire   [2:0] add_ln19_fu_903_p2;
reg   [31:0] q_idx_range_reg_2058;
wire    ap_CS_fsm_state9;
wire   [9:0] add_ln24_fu_918_p2;
reg   [9:0] add_ln24_reg_2067;
wire    ap_CS_fsm_state10;
reg   [9:0] force_r_addr_reg_2072;
wire   [2:0] add_ln20_fu_935_p2;
wire   [190:0] trunc_ln25_fu_941_p1;
reg   [190:0] trunc_ln25_reg_2087;
wire    ap_CS_fsm_state11;
wire   [63:0] trunc_ln25_3_fu_945_p1;
reg   [63:0] trunc_ln25_3_reg_2092;
reg   [63:0] trunc_ln25_1_reg_2097;
reg   [63:0] trunc_ln25_2_reg_2102;
wire   [51:0] trunc_ln34_fu_969_p1;
reg   [51:0] trunc_ln34_reg_2107;
reg   [51:0] trunc_ln34_3_reg_2112;
reg   [51:0] trunc_ln34_5_reg_2117;
wire   [63:0] p_x_fu_993_p1;
reg   [63:0] p_x_reg_2122;
wire    ap_CS_fsm_state12;
wire   [63:0] p_y_fu_997_p1;
reg   [63:0] p_y_reg_2127;
wire   [63:0] p_z_fu_1001_p1;
reg   [63:0] p_z_reg_2132;
wire   [63:0] sum_x_fu_1009_p1;
reg   [63:0] sum_x_reg_2137;
wire   [63:0] sum_y_fu_1024_p1;
reg   [63:0] sum_y_reg_2142;
wire   [63:0] sum_z_fu_1039_p1;
reg   [63:0] sum_z_reg_2147;
wire   [3:0] grp_md_Pipeline_loop_q_fu_464_ap_return;
reg   [3:0] targetBlock_reg_2152;
wire    ap_CS_fsm_state13;
wire   [63:0] empty_45_fu_1265_p3;
reg   [63:0] empty_45_reg_2171;
wire    ap_CS_fsm_state14;
wire   [0:0] empty_46_fu_1273_p2;
reg   [0:0] empty_46_reg_2176;
wire   [0:0] empty_48_fu_1278_p2;
reg   [0:0] empty_48_reg_2183;
wire   [0:0] empty_50_fu_1283_p2;
reg   [0:0] empty_50_reg_2190;
wire   [0:0] empty_52_fu_1288_p2;
reg   [0:0] empty_52_reg_2197;
wire   [0:0] empty_54_fu_1293_p2;
reg   [0:0] empty_54_reg_2204;
wire   [63:0] empty_64_fu_1370_p3;
reg   [63:0] empty_64_reg_2211;
wire   [63:0] empty_78_fu_1450_p3;
reg   [63:0] empty_78_reg_2216;
wire    grp_md_Pipeline_loop_q_fu_464_ap_start;
wire    grp_md_Pipeline_loop_q_fu_464_ap_done;
wire    grp_md_Pipeline_loop_q_fu_464_ap_idle;
wire    grp_md_Pipeline_loop_q_fu_464_ap_ready;
wire   [9:0] grp_md_Pipeline_loop_q_fu_464_position_address0;
wire    grp_md_Pipeline_loop_q_fu_464_position_ce0;
wire   [9:0] grp_md_Pipeline_loop_q_fu_464_position_address1;
wire    grp_md_Pipeline_loop_q_fu_464_position_ce1;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_z_1_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_z_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_y_1_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_y_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_x_1_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_x_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_x_31_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_x_31_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_y_31_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_y_31_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_z_31_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_z_31_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_x_29_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_x_29_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_y_29_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_y_29_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_z_29_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_z_29_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_x_27_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_x_27_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_y_27_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_y_27_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_z_27_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_z_27_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_x_25_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_x_25_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_y_25_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_y_25_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_z_25_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_z_25_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_x_23_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_x_23_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_y_23_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_y_23_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_z_23_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_z_23_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_x_21_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_x_21_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_y_21_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_y_21_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_z_21_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_z_21_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_x_19_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_x_19_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_y_19_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_y_19_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_z_19_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_z_19_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_x_17_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_x_17_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_y_17_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_y_17_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_z_17_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_z_17_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_x_15_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_x_15_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_y_15_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_y_15_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_z_15_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_z_15_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_x_13_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_x_13_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_y_13_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_y_13_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_z_13_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_z_13_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_x_11_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_x_11_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_y_11_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_y_11_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_z_11_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_z_11_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_x_9_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_x_9_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_y_9_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_y_9_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_z_9_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_z_9_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_x_7_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_x_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_y_7_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_y_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_z_7_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_z_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_x_5_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_x_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_y_5_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_y_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_z_5_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_z_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_x_3_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_x_3_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_y_3_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_y_3_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_464_sum_z_3_out;
wire    grp_md_Pipeline_loop_q_fu_464_sum_z_3_out_ap_vld;
reg   [2:0] b0_y_reg_376;
wire   [0:0] icmp_ln14_fu_547_p2;
wire   [0:0] icmp_ln16_fu_699_p2;
reg   [2:0] indvars_iv109_reg_387;
reg   [2:0] b0_z_reg_399;
wire   [0:0] icmp_ln15_fu_613_p2;
wire   [0:0] icmp_ln18_fu_803_p2;
reg   [2:0] indvars_iv105_reg_411;
reg   [2:0] b1_x_reg_423;
wire   [0:0] icmp_ln19_fu_826_p2;
reg   [2:0] b1_y_reg_433;
wire   [0:0] icmp_ln20_fu_854_p2;
reg   [2:0] b1_z_reg_443;
wire   [0:0] icmp_ln24_fu_913_p2;
reg   [9:0] p_idx_reg_453;
wire    ap_CS_fsm_state15;
reg    grp_md_Pipeline_loop_q_fu_464_ap_start_reg;
reg   [63:0] sum_z_1_loc_fu_326;
reg   [63:0] sum_y_1_loc_fu_322;
reg   [63:0] sum_x_1_loc_fu_318;
reg   [63:0] sum_x_31_loc_fu_314;
reg   [63:0] sum_y_31_loc_fu_310;
reg   [63:0] sum_z_31_loc_fu_306;
reg   [63:0] sum_x_29_loc_fu_302;
reg   [63:0] sum_y_29_loc_fu_298;
reg   [63:0] sum_z_29_loc_fu_294;
reg   [63:0] sum_x_27_loc_fu_290;
reg   [63:0] sum_y_27_loc_fu_286;
reg   [63:0] sum_z_27_loc_fu_282;
reg   [63:0] sum_x_25_loc_fu_278;
reg   [63:0] sum_y_25_loc_fu_274;
reg   [63:0] sum_z_25_loc_fu_270;
reg   [63:0] sum_x_23_loc_fu_266;
reg   [63:0] sum_y_23_loc_fu_262;
reg   [63:0] sum_z_23_loc_fu_258;
reg   [63:0] sum_x_21_loc_fu_254;
reg   [63:0] sum_y_21_loc_fu_250;
reg   [63:0] sum_z_21_loc_fu_246;
reg   [63:0] sum_x_19_loc_fu_242;
reg   [63:0] sum_y_19_loc_fu_238;
reg   [63:0] sum_z_19_loc_fu_234;
reg   [63:0] sum_x_17_loc_fu_230;
reg   [63:0] sum_y_17_loc_fu_226;
reg   [63:0] sum_z_17_loc_fu_222;
reg   [63:0] sum_x_15_loc_fu_218;
reg   [63:0] sum_y_15_loc_fu_214;
reg   [63:0] sum_z_15_loc_fu_210;
reg   [63:0] sum_x_13_loc_fu_206;
reg   [63:0] sum_y_13_loc_fu_202;
reg   [63:0] sum_z_13_loc_fu_198;
reg   [63:0] sum_x_11_loc_fu_194;
reg   [63:0] sum_y_11_loc_fu_190;
reg   [63:0] sum_z_11_loc_fu_186;
reg   [63:0] sum_x_9_loc_fu_182;
reg   [63:0] sum_y_9_loc_fu_178;
reg   [63:0] sum_z_9_loc_fu_174;
reg   [63:0] sum_x_7_loc_fu_170;
reg   [63:0] sum_y_7_loc_fu_166;
reg   [63:0] sum_z_7_loc_fu_162;
reg   [63:0] sum_x_5_loc_fu_158;
reg   [63:0] sum_y_5_loc_fu_154;
reg   [63:0] sum_z_5_loc_fu_150;
reg   [63:0] sum_x_3_loc_fu_146;
reg   [63:0] sum_y_3_loc_fu_142;
reg   [63:0] sum_z_3_loc_fu_138;
wire   [63:0] p_cast6_fu_720_p1;
wire   [63:0] zext_ln23_2_fu_868_p1;
wire   [63:0] zext_ln26_fu_929_p1;
reg   [2:0] indvars_iv114_fu_130;
wire   [2:0] add_ln14_1_fu_684_p2;
reg   [2:0] b0_x_fu_134;
reg    n_points_ce0_local;
reg   [5:0] n_points_address0_local;
reg    position_ce0_local;
reg    force_r_ce0_local;
reg    force_r_we0_local;
wire   [191:0] or_ln_fu_1617_p4;
wire   [4:0] tmp_10_fu_559_p3;
wire   [0:0] empty_fu_575_p2;
wire   [1:0] trunc_ln14_fu_571_p1;
wire   [1:0] smax116_fu_581_p3;
wire   [2:0] empty_19_fu_593_p2;
wire   [0:0] cmp18_fu_599_p2;
wire   [5:0] b0_y_cast_fu_625_p1;
wire   [5:0] empty_20_fu_629_p2;
wire   [0:0] empty_21_fu_646_p2;
wire   [1:0] trunc_ln15_fu_642_p1;
wire   [1:0] smax111_fu_652_p3;
wire   [2:0] empty_22_fu_664_p2;
wire   [0:0] cmp41_fu_670_p2;
wire   [7:0] b0_z_cast_fu_711_p1;
wire   [7:0] empty_23_fu_715_p2;
wire   [6:0] trunc_ln26_fu_725_p1;
wire   [8:0] tmp_74_fu_737_p3;
wire   [9:0] p_shl1_fu_729_p3;
wire   [9:0] zext_ln16_fu_745_p1;
wire   [0:0] empty_24_fu_765_p2;
wire   [1:0] trunc_ln16_fu_761_p1;
wire   [1:0] smax_fu_771_p3;
wire   [2:0] empty_25_fu_783_p2;
wire   [0:0] cmp64_fu_789_p2;
wire   [4:0] tmp_19_fu_808_p3;
wire   [5:0] zext_ln23_fu_831_p1;
wire   [5:0] add_ln23_fu_835_p2;
wire   [7:0] zext_ln23_1_fu_859_p1;
wire   [7:0] add_ln23_1_fu_863_p2;
wire   [6:0] trunc_ln31_fu_873_p1;
wire   [8:0] tmp_76_fu_885_p3;
wire   [9:0] p_shl_fu_877_p3;
wire   [9:0] zext_ln8_1_fu_893_p1;
wire   [31:0] zext_ln24_fu_909_p1;
wire   [9:0] add_ln26_fu_924_p2;
wire   [63:0] trunc_ln26_1_fu_1005_p1;
wire   [63:0] trunc_ln5_fu_1014_p4;
wire   [63:0] trunc_ln6_fu_1029_p4;
wire   [0:0] empty_26_fu_1143_p2;
wire   [0:0] empty_28_fu_1156_p2;
wire   [63:0] empty_27_fu_1148_p3;
wire   [0:0] empty_30_fu_1169_p2;
wire   [63:0] empty_29_fu_1161_p3;
wire   [0:0] empty_32_fu_1182_p2;
wire   [63:0] empty_31_fu_1174_p3;
wire   [0:0] empty_34_fu_1195_p2;
wire   [63:0] empty_33_fu_1187_p3;
wire   [0:0] empty_36_fu_1208_p2;
wire   [63:0] empty_35_fu_1200_p3;
wire   [0:0] empty_38_fu_1221_p2;
wire   [63:0] empty_37_fu_1213_p3;
wire   [0:0] empty_40_fu_1234_p2;
wire   [63:0] empty_39_fu_1226_p3;
wire   [0:0] empty_42_fu_1247_p2;
wire   [63:0] empty_41_fu_1239_p3;
wire   [0:0] empty_44_fu_1260_p2;
wire   [63:0] empty_43_fu_1252_p3;
wire   [63:0] empty_55_fu_1298_p3;
wire   [63:0] empty_56_fu_1306_p3;
wire   [63:0] empty_57_fu_1314_p3;
wire   [63:0] empty_58_fu_1322_p3;
wire   [63:0] empty_59_fu_1330_p3;
wire   [63:0] empty_60_fu_1338_p3;
wire   [63:0] empty_61_fu_1346_p3;
wire   [63:0] empty_62_fu_1354_p3;
wire   [63:0] empty_63_fu_1362_p3;
wire   [63:0] empty_69_fu_1378_p3;
wire   [63:0] empty_70_fu_1386_p3;
wire   [63:0] empty_71_fu_1394_p3;
wire   [63:0] empty_72_fu_1402_p3;
wire   [63:0] empty_73_fu_1410_p3;
wire   [63:0] empty_74_fu_1418_p3;
wire   [63:0] empty_75_fu_1426_p3;
wire   [63:0] empty_76_fu_1434_p3;
wire   [63:0] empty_77_fu_1442_p3;
wire   [63:0] empty_47_fu_1503_p3;
wire   [63:0] empty_49_fu_1509_p3;
wire   [63:0] empty_51_fu_1516_p3;
wire   [63:0] empty_53_fu_1523_p3;
wire   [63:0] empty_65_fu_1537_p3;
wire   [63:0] empty_66_fu_1543_p3;
wire   [63:0] empty_67_fu_1550_p3;
wire   [63:0] empty_68_fu_1557_p3;
wire   [63:0] empty_79_fu_1571_p3;
wire   [63:0] empty_80_fu_1577_p3;
wire   [63:0] empty_81_fu_1584_p3;
wire   [63:0] empty_82_fu_1591_p3;
wire   [63:0] sum_x_0_lcssa_ph_fu_1598_p3;
wire   [63:0] sum_y_0_lcssa_ph_fu_1564_p3;
wire   [63:0] sum_z_0_lcssa_ph_fu_1530_p3;
wire   [63:0] bitcast_ln51_fu_1613_p1;
wire   [63:0] bitcast_ln50_fu_1609_p1;
wire   [63:0] bitcast_ln49_fu_1605_p1;
reg   [14:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 grp_md_Pipeline_loop_q_fu_464_ap_start_reg = 1'b0;
#0 indvars_iv114_fu_130 = 3'd0;
#0 b0_x_fu_134 = 3'd0;
end
md_md_Pipeline_loop_q grp_md_Pipeline_loop_q_fu_464(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_md_Pipeline_loop_q_fu_464_ap_start),.ap_done(grp_md_Pipeline_loop_q_fu_464_ap_done),.ap_idle(grp_md_Pipeline_loop_q_fu_464_ap_idle),.ap_ready(grp_md_Pipeline_loop_q_fu_464_ap_ready),.sum_z(sum_z_reg_2147),.sum_y(sum_y_reg_2142),.sum_x(sum_x_reg_2137),.sext_ln24(q_idx_range_reg_2058),.p_x(p_x_reg_2122),.p_y(p_y_reg_2127),.p_z(p_z_reg_2132),.mul_ln31(add_ln8_reg_2048),.position_address0(grp_md_Pipeline_loop_q_fu_464_position_address0),.position_ce0(grp_md_Pipeline_loop_q_fu_464_position_ce0),.position_q0(position_q0),.position_address1(grp_md_Pipeline_loop_q_fu_464_position_address1),.position_ce1(grp_md_Pipeline_loop_q_fu_464_position_ce1),.position_q1(position_q1),.q_idx_range(q_idx_range_reg_2058),.position_load(trunc_ln25_reg_2087),.empty(trunc_ln34_reg_2107),.trunc_ln34_3(trunc_ln34_3_reg_2112),.trunc_ln34_5(trunc_ln34_5_reg_2117),.sum_z_1_out(grp_md_Pipeline_loop_q_fu_464_sum_z_1_out),.sum_z_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_z_1_out_ap_vld),.sum_y_1_out(grp_md_Pipeline_loop_q_fu_464_sum_y_1_out),.sum_y_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_y_1_out_ap_vld),.sum_x_1_out(grp_md_Pipeline_loop_q_fu_464_sum_x_1_out),.sum_x_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_x_1_out_ap_vld),.sum_x_31_out(grp_md_Pipeline_loop_q_fu_464_sum_x_31_out),.sum_x_31_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_x_31_out_ap_vld),.sum_y_31_out(grp_md_Pipeline_loop_q_fu_464_sum_y_31_out),.sum_y_31_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_y_31_out_ap_vld),.sum_z_31_out(grp_md_Pipeline_loop_q_fu_464_sum_z_31_out),.sum_z_31_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_z_31_out_ap_vld),.sum_x_29_out(grp_md_Pipeline_loop_q_fu_464_sum_x_29_out),.sum_x_29_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_x_29_out_ap_vld),.sum_y_29_out(grp_md_Pipeline_loop_q_fu_464_sum_y_29_out),.sum_y_29_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_y_29_out_ap_vld),.sum_z_29_out(grp_md_Pipeline_loop_q_fu_464_sum_z_29_out),.sum_z_29_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_z_29_out_ap_vld),.sum_x_27_out(grp_md_Pipeline_loop_q_fu_464_sum_x_27_out),.sum_x_27_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_x_27_out_ap_vld),.sum_y_27_out(grp_md_Pipeline_loop_q_fu_464_sum_y_27_out),.sum_y_27_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_y_27_out_ap_vld),.sum_z_27_out(grp_md_Pipeline_loop_q_fu_464_sum_z_27_out),.sum_z_27_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_z_27_out_ap_vld),.sum_x_25_out(grp_md_Pipeline_loop_q_fu_464_sum_x_25_out),.sum_x_25_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_x_25_out_ap_vld),.sum_y_25_out(grp_md_Pipeline_loop_q_fu_464_sum_y_25_out),.sum_y_25_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_y_25_out_ap_vld),.sum_z_25_out(grp_md_Pipeline_loop_q_fu_464_sum_z_25_out),.sum_z_25_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_z_25_out_ap_vld),.sum_x_23_out(grp_md_Pipeline_loop_q_fu_464_sum_x_23_out),.sum_x_23_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_x_23_out_ap_vld),.sum_y_23_out(grp_md_Pipeline_loop_q_fu_464_sum_y_23_out),.sum_y_23_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_y_23_out_ap_vld),.sum_z_23_out(grp_md_Pipeline_loop_q_fu_464_sum_z_23_out),.sum_z_23_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_z_23_out_ap_vld),.sum_x_21_out(grp_md_Pipeline_loop_q_fu_464_sum_x_21_out),.sum_x_21_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_x_21_out_ap_vld),.sum_y_21_out(grp_md_Pipeline_loop_q_fu_464_sum_y_21_out),.sum_y_21_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_y_21_out_ap_vld),.sum_z_21_out(grp_md_Pipeline_loop_q_fu_464_sum_z_21_out),.sum_z_21_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_z_21_out_ap_vld),.sum_x_19_out(grp_md_Pipeline_loop_q_fu_464_sum_x_19_out),.sum_x_19_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_x_19_out_ap_vld),.sum_y_19_out(grp_md_Pipeline_loop_q_fu_464_sum_y_19_out),.sum_y_19_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_y_19_out_ap_vld),.sum_z_19_out(grp_md_Pipeline_loop_q_fu_464_sum_z_19_out),.sum_z_19_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_z_19_out_ap_vld),.sum_x_17_out(grp_md_Pipeline_loop_q_fu_464_sum_x_17_out),.sum_x_17_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_x_17_out_ap_vld),.sum_y_17_out(grp_md_Pipeline_loop_q_fu_464_sum_y_17_out),.sum_y_17_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_y_17_out_ap_vld),.sum_z_17_out(grp_md_Pipeline_loop_q_fu_464_sum_z_17_out),.sum_z_17_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_z_17_out_ap_vld),.sum_x_15_out(grp_md_Pipeline_loop_q_fu_464_sum_x_15_out),.sum_x_15_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_x_15_out_ap_vld),.sum_y_15_out(grp_md_Pipeline_loop_q_fu_464_sum_y_15_out),.sum_y_15_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_y_15_out_ap_vld),.sum_z_15_out(grp_md_Pipeline_loop_q_fu_464_sum_z_15_out),.sum_z_15_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_z_15_out_ap_vld),.sum_x_13_out(grp_md_Pipeline_loop_q_fu_464_sum_x_13_out),.sum_x_13_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_x_13_out_ap_vld),.sum_y_13_out(grp_md_Pipeline_loop_q_fu_464_sum_y_13_out),.sum_y_13_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_y_13_out_ap_vld),.sum_z_13_out(grp_md_Pipeline_loop_q_fu_464_sum_z_13_out),.sum_z_13_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_z_13_out_ap_vld),.sum_x_11_out(grp_md_Pipeline_loop_q_fu_464_sum_x_11_out),.sum_x_11_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_x_11_out_ap_vld),.sum_y_11_out(grp_md_Pipeline_loop_q_fu_464_sum_y_11_out),.sum_y_11_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_y_11_out_ap_vld),.sum_z_11_out(grp_md_Pipeline_loop_q_fu_464_sum_z_11_out),.sum_z_11_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_z_11_out_ap_vld),.sum_x_9_out(grp_md_Pipeline_loop_q_fu_464_sum_x_9_out),.sum_x_9_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_x_9_out_ap_vld),.sum_y_9_out(grp_md_Pipeline_loop_q_fu_464_sum_y_9_out),.sum_y_9_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_y_9_out_ap_vld),.sum_z_9_out(grp_md_Pipeline_loop_q_fu_464_sum_z_9_out),.sum_z_9_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_z_9_out_ap_vld),.sum_x_7_out(grp_md_Pipeline_loop_q_fu_464_sum_x_7_out),.sum_x_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_x_7_out_ap_vld),.sum_y_7_out(grp_md_Pipeline_loop_q_fu_464_sum_y_7_out),.sum_y_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_y_7_out_ap_vld),.sum_z_7_out(grp_md_Pipeline_loop_q_fu_464_sum_z_7_out),.sum_z_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_z_7_out_ap_vld),.sum_x_5_out(grp_md_Pipeline_loop_q_fu_464_sum_x_5_out),.sum_x_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_x_5_out_ap_vld),.sum_y_5_out(grp_md_Pipeline_loop_q_fu_464_sum_y_5_out),.sum_y_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_y_5_out_ap_vld),.sum_z_5_out(grp_md_Pipeline_loop_q_fu_464_sum_z_5_out),.sum_z_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_z_5_out_ap_vld),.sum_x_3_out(grp_md_Pipeline_loop_q_fu_464_sum_x_3_out),.sum_x_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_x_3_out_ap_vld),.sum_y_3_out(grp_md_Pipeline_loop_q_fu_464_sum_y_3_out),.sum_y_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_y_3_out_ap_vld),.sum_z_3_out(grp_md_Pipeline_loop_q_fu_464_sum_z_3_out),.sum_z_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_464_sum_z_3_out_ap_vld),.ap_return(grp_md_Pipeline_loop_q_fu_464_ap_return));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_md_Pipeline_loop_q_fu_464_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_md_Pipeline_loop_q_fu_464_ap_start_reg <= 1'b1;
        end else if ((grp_md_Pipeline_loop_q_fu_464_ap_ready == 1'b1)) begin
            grp_md_Pipeline_loop_q_fu_464_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        b0_x_fu_134 <= 3'd0;
    end else if (((icmp_ln15_fu_613_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_x_fu_134 <= add_ln14_reg_1933;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_699_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        b0_y_reg_376 <= add_ln15_reg_1956;
    end else if (((icmp_ln14_fu_547_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        b0_y_reg_376 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_803_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        b0_z_reg_399 <= add_ln16_reg_1979;
    end else if (((icmp_ln15_fu_613_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_z_reg_399 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        b1_x_reg_423 <= smax116_cast_reg_1943;
    end else if (((icmp_ln19_fu_826_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_x_reg_423 <= add_ln18_fu_848_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_803_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        b1_y_reg_433 <= smax111_cast_reg_1966;
    end else if (((icmp_ln20_fu_854_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        b1_y_reg_433 <= add_ln19_fu_903_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln19_fu_826_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_z_reg_443 <= smax_cast_reg_1999;
    end else if (((icmp_ln24_fu_913_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        b1_z_reg_443 <= add_ln20_fu_935_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_803_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        indvars_iv105_reg_411 <= add_ln16_1_fu_820_p2;
    end else if (((icmp_ln15_fu_613_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv105_reg_411 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_699_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        indvars_iv109_reg_387 <= add_ln15_1_fu_755_p2;
    end else if (((icmp_ln14_fu_547_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvars_iv109_reg_387 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvars_iv114_fu_130 <= 3'd7;
    end else if (((icmp_ln15_fu_613_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv114_fu_130 <= add_ln14_1_fu_684_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        p_idx_reg_453 <= add_ln24_reg_2067;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        p_idx_reg_453 <= 10'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln14_reg_1933 <= add_ln14_fu_553_p2;
        cond24_reg_1948 <= cond24_fu_605_p3;
        smax116_cast_reg_1943[1 : 0] <= smax116_cast_fu_589_p1[1 : 0];
        zext_ln14_reg_1938[4 : 2] <= zext_ln14_fu_567_p1[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln15_reg_1956 <= add_ln15_fu_619_p2;
        cond47_reg_1971 <= cond47_fu_676_p3;
        smax111_cast_reg_1966[1 : 0] <= smax111_cast_fu_660_p1[1 : 0];
        tmp_reg_1961[7 : 2] <= tmp_fu_634_p3[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln16_2_reg_1989[9 : 1] <= add_ln16_2_fu_749_p2[9 : 1];
        add_ln16_reg_1979 <= add_ln16_fu_705_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln24_reg_2067 <= add_ln24_fu_918_p2;
        force_r_addr_reg_2072 <= zext_ln26_fu_929_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln8_reg_2048[9 : 1] <= add_ln8_fu_897_p2[9 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        cond70_reg_2004 <= cond70_fu_795_p3;
        n_points_load_reg_2009 <= n_points_q0;
        smax_cast_reg_1999[1 : 0] <= smax_cast_fu_779_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        empty_45_reg_2171 <= empty_45_fu_1265_p3;
        empty_46_reg_2176 <= empty_46_fu_1273_p2;
        empty_48_reg_2183 <= empty_48_fu_1278_p2;
        empty_50_reg_2190 <= empty_50_fu_1283_p2;
        empty_52_reg_2197 <= empty_52_fu_1288_p2;
        empty_54_reg_2204 <= empty_54_fu_1293_p2;
        empty_64_reg_2211 <= empty_64_fu_1370_p3;
        empty_78_reg_2216 <= empty_78_fu_1450_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        p_x_reg_2122 <= p_x_fu_993_p1;
        p_y_reg_2127 <= p_y_fu_997_p1;
        p_z_reg_2132 <= p_z_fu_1001_p1;
        sum_x_reg_2137 <= sum_x_fu_1009_p1;
        sum_y_reg_2142 <= sum_y_fu_1024_p1;
        sum_z_reg_2147 <= sum_z_fu_1039_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        q_idx_range_reg_2058 <= n_points_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_x_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_11_loc_fu_194 <= grp_md_Pipeline_loop_q_fu_464_sum_x_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_x_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_13_loc_fu_206 <= grp_md_Pipeline_loop_q_fu_464_sum_x_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_x_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_15_loc_fu_218 <= grp_md_Pipeline_loop_q_fu_464_sum_x_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_x_17_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_17_loc_fu_230 <= grp_md_Pipeline_loop_q_fu_464_sum_x_17_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_x_19_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_19_loc_fu_242 <= grp_md_Pipeline_loop_q_fu_464_sum_x_19_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_x_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_1_loc_fu_318 <= grp_md_Pipeline_loop_q_fu_464_sum_x_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_x_21_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_21_loc_fu_254 <= grp_md_Pipeline_loop_q_fu_464_sum_x_21_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_x_23_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_23_loc_fu_266 <= grp_md_Pipeline_loop_q_fu_464_sum_x_23_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_x_25_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_25_loc_fu_278 <= grp_md_Pipeline_loop_q_fu_464_sum_x_25_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_x_27_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_27_loc_fu_290 <= grp_md_Pipeline_loop_q_fu_464_sum_x_27_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_x_29_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_29_loc_fu_302 <= grp_md_Pipeline_loop_q_fu_464_sum_x_29_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_x_31_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_31_loc_fu_314 <= grp_md_Pipeline_loop_q_fu_464_sum_x_31_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_x_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_3_loc_fu_146 <= grp_md_Pipeline_loop_q_fu_464_sum_x_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_x_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_5_loc_fu_158 <= grp_md_Pipeline_loop_q_fu_464_sum_x_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_x_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_7_loc_fu_170 <= grp_md_Pipeline_loop_q_fu_464_sum_x_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_x_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_9_loc_fu_182 <= grp_md_Pipeline_loop_q_fu_464_sum_x_9_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_y_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_11_loc_fu_190 <= grp_md_Pipeline_loop_q_fu_464_sum_y_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_y_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_13_loc_fu_202 <= grp_md_Pipeline_loop_q_fu_464_sum_y_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_y_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_15_loc_fu_214 <= grp_md_Pipeline_loop_q_fu_464_sum_y_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_y_17_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_17_loc_fu_226 <= grp_md_Pipeline_loop_q_fu_464_sum_y_17_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_y_19_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_19_loc_fu_238 <= grp_md_Pipeline_loop_q_fu_464_sum_y_19_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_y_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_1_loc_fu_322 <= grp_md_Pipeline_loop_q_fu_464_sum_y_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_y_21_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_21_loc_fu_250 <= grp_md_Pipeline_loop_q_fu_464_sum_y_21_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_y_23_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_23_loc_fu_262 <= grp_md_Pipeline_loop_q_fu_464_sum_y_23_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_y_25_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_25_loc_fu_274 <= grp_md_Pipeline_loop_q_fu_464_sum_y_25_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_y_27_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_27_loc_fu_286 <= grp_md_Pipeline_loop_q_fu_464_sum_y_27_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_y_29_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_29_loc_fu_298 <= grp_md_Pipeline_loop_q_fu_464_sum_y_29_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_y_31_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_31_loc_fu_310 <= grp_md_Pipeline_loop_q_fu_464_sum_y_31_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_y_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_3_loc_fu_142 <= grp_md_Pipeline_loop_q_fu_464_sum_y_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_y_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_5_loc_fu_154 <= grp_md_Pipeline_loop_q_fu_464_sum_y_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_y_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_7_loc_fu_166 <= grp_md_Pipeline_loop_q_fu_464_sum_y_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_y_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_9_loc_fu_178 <= grp_md_Pipeline_loop_q_fu_464_sum_y_9_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_z_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_11_loc_fu_186 <= grp_md_Pipeline_loop_q_fu_464_sum_z_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_z_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_13_loc_fu_198 <= grp_md_Pipeline_loop_q_fu_464_sum_z_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_z_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_15_loc_fu_210 <= grp_md_Pipeline_loop_q_fu_464_sum_z_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_z_17_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_17_loc_fu_222 <= grp_md_Pipeline_loop_q_fu_464_sum_z_17_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_z_19_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_19_loc_fu_234 <= grp_md_Pipeline_loop_q_fu_464_sum_z_19_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_z_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_1_loc_fu_326 <= grp_md_Pipeline_loop_q_fu_464_sum_z_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_z_21_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_21_loc_fu_246 <= grp_md_Pipeline_loop_q_fu_464_sum_z_21_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_z_23_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_23_loc_fu_258 <= grp_md_Pipeline_loop_q_fu_464_sum_z_23_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_z_25_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_25_loc_fu_270 <= grp_md_Pipeline_loop_q_fu_464_sum_z_25_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_z_27_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_27_loc_fu_282 <= grp_md_Pipeline_loop_q_fu_464_sum_z_27_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_z_29_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_29_loc_fu_294 <= grp_md_Pipeline_loop_q_fu_464_sum_z_29_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_z_31_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_31_loc_fu_306 <= grp_md_Pipeline_loop_q_fu_464_sum_z_31_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_z_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_3_loc_fu_138 <= grp_md_Pipeline_loop_q_fu_464_sum_z_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_z_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_5_loc_fu_150 <= grp_md_Pipeline_loop_q_fu_464_sum_z_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_z_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_7_loc_fu_162 <= grp_md_Pipeline_loop_q_fu_464_sum_z_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_464_sum_z_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_9_loc_fu_174 <= grp_md_Pipeline_loop_q_fu_464_sum_z_9_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        targetBlock_reg_2152 <= grp_md_Pipeline_loop_q_fu_464_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_75_reg_2030[7 : 2] <= tmp_75_fu_840_p3[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        trunc_ln25_1_reg_2097 <= {{position_q0[127:64]}};
        trunc_ln25_2_reg_2102 <= {{position_q0[191:128]}};
        trunc_ln25_3_reg_2092 <= trunc_ln25_3_fu_945_p1;
        trunc_ln25_reg_2087 <= trunc_ln25_fu_941_p1;
        trunc_ln34_3_reg_2112 <= {{position_q0[115:64]}};
        trunc_ln34_5_reg_2117 <= {{position_q0[179:128]}};
        trunc_ln34_reg_2107 <= trunc_ln34_fu_969_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        zext_ln8_reg_2017[4 : 2] <= zext_ln8_fu_816_p1[4 : 2];
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_md_Pipeline_loop_q_fu_464_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln14_fu_547_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln14_fu_547_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state11))) begin
        force_r_ce0_local = 1'b1;
    end else begin
        force_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        force_r_we0_local = 1'b1;
    end else begin
        force_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        n_points_address0_local = zext_ln23_2_fu_868_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_address0_local = p_cast6_fu_720_p1;
    end else begin
        n_points_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state8))) begin
        n_points_ce0_local = 1'b1;
    end else begin
        n_points_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_address0 = grp_md_Pipeline_loop_q_fu_464_position_address0;
    end else begin
        position_address0 = zext_ln26_fu_929_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_ce0 = grp_md_Pipeline_loop_q_fu_464_position_ce0;
    end else begin
        position_ce0 = position_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        position_ce0_local = 1'b1;
    end else begin
        position_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_ce1 = grp_md_Pipeline_loop_q_fu_464_position_ce1;
    end else begin
        position_ce1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln14_fu_547_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln15_fu_613_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln16_fu_699_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln18_fu_803_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln19_fu_826_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln20_fu_854_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln24_fu_913_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((grp_md_Pipeline_loop_q_fu_464_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln14_1_fu_684_p2 = (indvars_iv114_fu_130 + 3'd1);
assign add_ln14_fu_553_p2 = (b0_x_fu_134 + 3'd1);
assign add_ln15_1_fu_755_p2 = (indvars_iv109_reg_387 + 3'd1);
assign add_ln15_fu_619_p2 = (b0_y_reg_376 + 3'd1);
assign add_ln16_1_fu_820_p2 = (indvars_iv105_reg_411 + 3'd1);
assign add_ln16_2_fu_749_p2 = (p_shl1_fu_729_p3 + zext_ln16_fu_745_p1);
assign add_ln16_fu_705_p2 = (b0_z_reg_399 + 3'd1);
assign add_ln18_fu_848_p2 = (b1_x_reg_423 + 3'd1);
assign add_ln19_fu_903_p2 = (b1_y_reg_433 + 3'd1);
assign add_ln20_fu_935_p2 = (b1_z_reg_443 + 3'd1);
assign add_ln23_1_fu_863_p2 = (tmp_75_reg_2030 + zext_ln23_1_fu_859_p1);
assign add_ln23_fu_835_p2 = (zext_ln8_reg_2017 + zext_ln23_fu_831_p1);
assign add_ln24_fu_918_p2 = (p_idx_reg_453 + 10'd1);
assign add_ln26_fu_924_p2 = (add_ln16_2_reg_1989 + p_idx_reg_453);
assign add_ln8_fu_897_p2 = (p_shl_fu_877_p3 + zext_ln8_1_fu_893_p1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign b0_y_cast_fu_625_p1 = b0_y_reg_376;
assign b0_z_cast_fu_711_p1 = b0_z_reg_399;
assign bitcast_ln49_fu_1605_p1 = sum_x_0_lcssa_ph_fu_1598_p3;
assign bitcast_ln50_fu_1609_p1 = sum_y_0_lcssa_ph_fu_1564_p3;
assign bitcast_ln51_fu_1613_p1 = sum_z_0_lcssa_ph_fu_1530_p3;
assign cmp18_fu_599_p2 = ((empty_19_fu_593_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp41_fu_670_p2 = ((empty_22_fu_664_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp64_fu_789_p2 = ((empty_25_fu_783_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cond24_fu_605_p3 = ((cmp18_fu_599_p2[0:0] == 1'b1) ? 3'd4 : empty_19_fu_593_p2);
assign cond47_fu_676_p3 = ((cmp41_fu_670_p2[0:0] == 1'b1) ? 3'd4 : empty_22_fu_664_p2);
assign cond70_fu_795_p3 = ((cmp64_fu_789_p2[0:0] == 1'b1) ? 3'd4 : empty_25_fu_783_p2);
assign empty_19_fu_593_p2 = (b0_x_fu_134 + 3'd2);
assign empty_20_fu_629_p2 = (zext_ln14_reg_1938 + b0_y_cast_fu_625_p1);
assign empty_21_fu_646_p2 = (($signed(indvars_iv109_reg_387) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_22_fu_664_p2 = (b0_y_reg_376 + 3'd2);
assign empty_23_fu_715_p2 = (tmp_reg_1961 + b0_z_cast_fu_711_p1);
assign empty_24_fu_765_p2 = (($signed(indvars_iv105_reg_411) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_25_fu_783_p2 = (b0_z_reg_399 + 3'd2);
assign empty_26_fu_1143_p2 = ((targetBlock_reg_2152 == 4'd0) ? 1'b1 : 1'b0);
assign empty_27_fu_1148_p3 = ((empty_26_fu_1143_p2[0:0] == 1'b1) ? sum_z_1_loc_fu_326 : sum_z_3_loc_fu_138);
assign empty_28_fu_1156_p2 = ((targetBlock_reg_2152 == 4'd1) ? 1'b1 : 1'b0);
assign empty_29_fu_1161_p3 = ((empty_28_fu_1156_p2[0:0] == 1'b1) ? sum_z_31_loc_fu_306 : empty_27_fu_1148_p3);
assign empty_30_fu_1169_p2 = ((targetBlock_reg_2152 == 4'd2) ? 1'b1 : 1'b0);
assign empty_31_fu_1174_p3 = ((empty_30_fu_1169_p2[0:0] == 1'b1) ? sum_z_29_loc_fu_294 : empty_29_fu_1161_p3);
assign empty_32_fu_1182_p2 = ((targetBlock_reg_2152 == 4'd3) ? 1'b1 : 1'b0);
assign empty_33_fu_1187_p3 = ((empty_32_fu_1182_p2[0:0] == 1'b1) ? sum_z_27_loc_fu_282 : empty_31_fu_1174_p3);
assign empty_34_fu_1195_p2 = ((targetBlock_reg_2152 == 4'd4) ? 1'b1 : 1'b0);
assign empty_35_fu_1200_p3 = ((empty_34_fu_1195_p2[0:0] == 1'b1) ? sum_z_25_loc_fu_270 : empty_33_fu_1187_p3);
assign empty_36_fu_1208_p2 = ((targetBlock_reg_2152 == 4'd5) ? 1'b1 : 1'b0);
assign empty_37_fu_1213_p3 = ((empty_36_fu_1208_p2[0:0] == 1'b1) ? sum_z_23_loc_fu_258 : empty_35_fu_1200_p3);
assign empty_38_fu_1221_p2 = ((targetBlock_reg_2152 == 4'd6) ? 1'b1 : 1'b0);
assign empty_39_fu_1226_p3 = ((empty_38_fu_1221_p2[0:0] == 1'b1) ? sum_z_21_loc_fu_246 : empty_37_fu_1213_p3);
assign empty_40_fu_1234_p2 = ((targetBlock_reg_2152 == 4'd7) ? 1'b1 : 1'b0);
assign empty_41_fu_1239_p3 = ((empty_40_fu_1234_p2[0:0] == 1'b1) ? sum_z_19_loc_fu_234 : empty_39_fu_1226_p3);
assign empty_42_fu_1247_p2 = ((targetBlock_reg_2152 == 4'd8) ? 1'b1 : 1'b0);
assign empty_43_fu_1252_p3 = ((empty_42_fu_1247_p2[0:0] == 1'b1) ? sum_z_17_loc_fu_222 : empty_41_fu_1239_p3);
assign empty_44_fu_1260_p2 = ((targetBlock_reg_2152 == 4'd9) ? 1'b1 : 1'b0);
assign empty_45_fu_1265_p3 = ((empty_44_fu_1260_p2[0:0] == 1'b1) ? sum_z_15_loc_fu_210 : empty_43_fu_1252_p3);
assign empty_46_fu_1273_p2 = ((targetBlock_reg_2152 == 4'd10) ? 1'b1 : 1'b0);
assign empty_47_fu_1503_p3 = ((empty_46_reg_2176[0:0] == 1'b1) ? sum_z_13_loc_fu_198 : empty_45_reg_2171);
assign empty_48_fu_1278_p2 = ((targetBlock_reg_2152 == 4'd11) ? 1'b1 : 1'b0);
assign empty_49_fu_1509_p3 = ((empty_48_reg_2183[0:0] == 1'b1) ? sum_z_11_loc_fu_186 : empty_47_fu_1503_p3);
assign empty_50_fu_1283_p2 = ((targetBlock_reg_2152 == 4'd12) ? 1'b1 : 1'b0);
assign empty_51_fu_1516_p3 = ((empty_50_reg_2190[0:0] == 1'b1) ? sum_z_9_loc_fu_174 : empty_49_fu_1509_p3);
assign empty_52_fu_1288_p2 = ((targetBlock_reg_2152 == 4'd13) ? 1'b1 : 1'b0);
assign empty_53_fu_1523_p3 = ((empty_52_reg_2197[0:0] == 1'b1) ? sum_z_7_loc_fu_162 : empty_51_fu_1516_p3);
assign empty_54_fu_1293_p2 = ((targetBlock_reg_2152 == 4'd14) ? 1'b1 : 1'b0);
assign empty_55_fu_1298_p3 = ((empty_26_fu_1143_p2[0:0] == 1'b1) ? sum_y_1_loc_fu_322 : sum_y_3_loc_fu_142);
assign empty_56_fu_1306_p3 = ((empty_28_fu_1156_p2[0:0] == 1'b1) ? sum_y_31_loc_fu_310 : empty_55_fu_1298_p3);
assign empty_57_fu_1314_p3 = ((empty_30_fu_1169_p2[0:0] == 1'b1) ? sum_y_29_loc_fu_298 : empty_56_fu_1306_p3);
assign empty_58_fu_1322_p3 = ((empty_32_fu_1182_p2[0:0] == 1'b1) ? sum_y_27_loc_fu_286 : empty_57_fu_1314_p3);
assign empty_59_fu_1330_p3 = ((empty_34_fu_1195_p2[0:0] == 1'b1) ? sum_y_25_loc_fu_274 : empty_58_fu_1322_p3);
assign empty_60_fu_1338_p3 = ((empty_36_fu_1208_p2[0:0] == 1'b1) ? sum_y_23_loc_fu_262 : empty_59_fu_1330_p3);
assign empty_61_fu_1346_p3 = ((empty_38_fu_1221_p2[0:0] == 1'b1) ? sum_y_21_loc_fu_250 : empty_60_fu_1338_p3);
assign empty_62_fu_1354_p3 = ((empty_40_fu_1234_p2[0:0] == 1'b1) ? sum_y_19_loc_fu_238 : empty_61_fu_1346_p3);
assign empty_63_fu_1362_p3 = ((empty_42_fu_1247_p2[0:0] == 1'b1) ? sum_y_17_loc_fu_226 : empty_62_fu_1354_p3);
assign empty_64_fu_1370_p3 = ((empty_44_fu_1260_p2[0:0] == 1'b1) ? sum_y_15_loc_fu_214 : empty_63_fu_1362_p3);
assign empty_65_fu_1537_p3 = ((empty_46_reg_2176[0:0] == 1'b1) ? sum_y_13_loc_fu_202 : empty_64_reg_2211);
assign empty_66_fu_1543_p3 = ((empty_48_reg_2183[0:0] == 1'b1) ? sum_y_11_loc_fu_190 : empty_65_fu_1537_p3);
assign empty_67_fu_1550_p3 = ((empty_50_reg_2190[0:0] == 1'b1) ? sum_y_9_loc_fu_178 : empty_66_fu_1543_p3);
assign empty_68_fu_1557_p3 = ((empty_52_reg_2197[0:0] == 1'b1) ? sum_y_7_loc_fu_166 : empty_67_fu_1550_p3);
assign empty_69_fu_1378_p3 = ((empty_26_fu_1143_p2[0:0] == 1'b1) ? sum_x_1_loc_fu_318 : sum_x_3_loc_fu_146);
assign empty_70_fu_1386_p3 = ((empty_28_fu_1156_p2[0:0] == 1'b1) ? sum_x_31_loc_fu_314 : empty_69_fu_1378_p3);
assign empty_71_fu_1394_p3 = ((empty_30_fu_1169_p2[0:0] == 1'b1) ? sum_x_29_loc_fu_302 : empty_70_fu_1386_p3);
assign empty_72_fu_1402_p3 = ((empty_32_fu_1182_p2[0:0] == 1'b1) ? sum_x_27_loc_fu_290 : empty_71_fu_1394_p3);
assign empty_73_fu_1410_p3 = ((empty_34_fu_1195_p2[0:0] == 1'b1) ? sum_x_25_loc_fu_278 : empty_72_fu_1402_p3);
assign empty_74_fu_1418_p3 = ((empty_36_fu_1208_p2[0:0] == 1'b1) ? sum_x_23_loc_fu_266 : empty_73_fu_1410_p3);
assign empty_75_fu_1426_p3 = ((empty_38_fu_1221_p2[0:0] == 1'b1) ? sum_x_21_loc_fu_254 : empty_74_fu_1418_p3);
assign empty_76_fu_1434_p3 = ((empty_40_fu_1234_p2[0:0] == 1'b1) ? sum_x_19_loc_fu_242 : empty_75_fu_1426_p3);
assign empty_77_fu_1442_p3 = ((empty_42_fu_1247_p2[0:0] == 1'b1) ? sum_x_17_loc_fu_230 : empty_76_fu_1434_p3);
assign empty_78_fu_1450_p3 = ((empty_44_fu_1260_p2[0:0] == 1'b1) ? sum_x_15_loc_fu_218 : empty_77_fu_1442_p3);
assign empty_79_fu_1571_p3 = ((empty_46_reg_2176[0:0] == 1'b1) ? sum_x_13_loc_fu_206 : empty_78_reg_2216);
assign empty_80_fu_1577_p3 = ((empty_48_reg_2183[0:0] == 1'b1) ? sum_x_11_loc_fu_194 : empty_79_fu_1571_p3);
assign empty_81_fu_1584_p3 = ((empty_50_reg_2190[0:0] == 1'b1) ? sum_x_9_loc_fu_182 : empty_80_fu_1577_p3);
assign empty_82_fu_1591_p3 = ((empty_52_reg_2197[0:0] == 1'b1) ? sum_x_7_loc_fu_170 : empty_81_fu_1584_p3);
assign empty_fu_575_p2 = (($signed(indvars_iv114_fu_130) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign force_r_address0 = force_r_addr_reg_2072;
assign force_r_ce0 = force_r_ce0_local;
assign force_r_d0 = or_ln_fu_1617_p4;
assign force_r_we0 = force_r_we0_local;
assign grp_md_Pipeline_loop_q_fu_464_ap_start = grp_md_Pipeline_loop_q_fu_464_ap_start_reg;
assign icmp_ln14_fu_547_p2 = ((b0_x_fu_134 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln15_fu_613_p2 = ((b0_y_reg_376 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_699_p2 = ((b0_z_reg_399 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_803_p2 = ((b1_x_reg_423 < cond24_reg_1948) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_826_p2 = ((b1_y_reg_433 < cond47_reg_1971) ? 1'b1 : 1'b0);
assign icmp_ln20_fu_854_p2 = ((b1_z_reg_443 < cond70_reg_2004) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_913_p2 = (($signed(zext_ln24_fu_909_p1) < $signed(n_points_load_reg_2009)) ? 1'b1 : 1'b0);
assign n_points_address0 = n_points_address0_local;
assign n_points_ce0 = n_points_ce0_local;
assign or_ln_fu_1617_p4 = {{{bitcast_ln51_fu_1613_p1}, {bitcast_ln50_fu_1609_p1}}, {bitcast_ln49_fu_1605_p1}};
assign p_cast6_fu_720_p1 = empty_23_fu_715_p2;
assign p_shl1_fu_729_p3 = {{trunc_ln26_fu_725_p1}, {3'd0}};
assign p_shl_fu_877_p3 = {{trunc_ln31_fu_873_p1}, {3'd0}};
assign p_x_fu_993_p1 = trunc_ln25_3_reg_2092;
assign p_y_fu_997_p1 = trunc_ln25_1_reg_2097;
assign p_z_fu_1001_p1 = trunc_ln25_2_reg_2102;
assign position_address1 = grp_md_Pipeline_loop_q_fu_464_position_address1;
assign smax111_cast_fu_660_p1 = smax111_fu_652_p3;
assign smax111_fu_652_p3 = ((empty_21_fu_646_p2[0:0] == 1'b1) ? trunc_ln15_fu_642_p1 : 2'd0);
assign smax116_cast_fu_589_p1 = smax116_fu_581_p3;
assign smax116_fu_581_p3 = ((empty_fu_575_p2[0:0] == 1'b1) ? trunc_ln14_fu_571_p1 : 2'd0);
assign smax_cast_fu_779_p1 = smax_fu_771_p3;
assign smax_fu_771_p3 = ((empty_24_fu_765_p2[0:0] == 1'b1) ? trunc_ln16_fu_761_p1 : 2'd0);
assign sum_x_0_lcssa_ph_fu_1598_p3 = ((empty_54_reg_2204[0:0] == 1'b1) ? sum_x_5_loc_fu_158 : empty_82_fu_1591_p3);
assign sum_x_fu_1009_p1 = trunc_ln26_1_fu_1005_p1;
assign sum_y_0_lcssa_ph_fu_1564_p3 = ((empty_54_reg_2204[0:0] == 1'b1) ? sum_y_5_loc_fu_154 : empty_68_fu_1557_p3);
assign sum_y_fu_1024_p1 = trunc_ln5_fu_1014_p4;
assign sum_z_0_lcssa_ph_fu_1530_p3 = ((empty_54_reg_2204[0:0] == 1'b1) ? sum_z_5_loc_fu_150 : empty_53_fu_1523_p3);
assign sum_z_fu_1039_p1 = trunc_ln6_fu_1029_p4;
assign tmp_10_fu_559_p3 = {{b0_x_fu_134}, {2'd0}};
assign tmp_19_fu_808_p3 = {{b1_x_reg_423}, {2'd0}};
assign tmp_74_fu_737_p3 = {{empty_23_fu_715_p2}, {1'd0}};
assign tmp_75_fu_840_p3 = {{add_ln23_fu_835_p2}, {2'd0}};
assign tmp_76_fu_885_p3 = {{add_ln23_1_fu_863_p2}, {1'd0}};
assign tmp_fu_634_p3 = {{empty_20_fu_629_p2}, {2'd0}};
assign trunc_ln14_fu_571_p1 = indvars_iv114_fu_130[1:0];
assign trunc_ln15_fu_642_p1 = indvars_iv109_reg_387[1:0];
assign trunc_ln16_fu_761_p1 = indvars_iv105_reg_411[1:0];
assign trunc_ln25_3_fu_945_p1 = position_q0[63:0];
assign trunc_ln25_fu_941_p1 = position_q0[190:0];
assign trunc_ln26_1_fu_1005_p1 = force_r_q0[63:0];
assign trunc_ln26_fu_725_p1 = empty_23_fu_715_p2[6:0];
assign trunc_ln31_fu_873_p1 = add_ln23_1_fu_863_p2[6:0];
assign trunc_ln34_fu_969_p1 = position_q0[51:0];
assign trunc_ln5_fu_1014_p4 = {{force_r_q0[127:64]}};
assign trunc_ln6_fu_1029_p4 = {{force_r_q0[191:128]}};
assign zext_ln14_fu_567_p1 = tmp_10_fu_559_p3;
assign zext_ln16_fu_745_p1 = tmp_74_fu_737_p3;
assign zext_ln23_1_fu_859_p1 = b1_z_reg_443;
assign zext_ln23_2_fu_868_p1 = add_ln23_1_fu_863_p2;
assign zext_ln23_fu_831_p1 = b1_y_reg_433;
assign zext_ln24_fu_909_p1 = p_idx_reg_453;
assign zext_ln26_fu_929_p1 = add_ln26_fu_924_p2;
assign zext_ln8_1_fu_893_p1 = tmp_76_fu_885_p3;
assign zext_ln8_fu_816_p1 = tmp_19_fu_808_p3;
always @ (posedge ap_clk) begin
    zext_ln14_reg_1938[1:0] <= 2'b00;
    zext_ln14_reg_1938[5] <= 1'b0;
    smax116_cast_reg_1943[2] <= 1'b0;
    tmp_reg_1961[1:0] <= 2'b00;
    smax111_cast_reg_1966[2] <= 1'b0;
    add_ln16_2_reg_1989[0] <= 1'b0;
    smax_cast_reg_1999[2] <= 1'b0;
    zext_ln8_reg_2017[1:0] <= 2'b00;
    zext_ln8_reg_2017[5] <= 1'b0;
    tmp_75_reg_2030[1:0] <= 2'b00;
    add_ln8_reg_2048[0] <= 1'b0;
end
endmodule 
