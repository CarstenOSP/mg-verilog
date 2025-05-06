
module md (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,n_points_address0,n_points_ce0,n_points_q0,force_r_address0,force_r_ce0,force_r_we0,force_r_d0,force_r_q0,position_address0,position_ce0,position_q0,position_address1,position_ce1,position_q1);  
parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_state11 = 14'd1024;
parameter    ap_ST_fsm_state12 = 14'd2048;
parameter    ap_ST_fsm_state13 = 14'd4096;
parameter    ap_ST_fsm_state14 = 14'd8192;
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
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] add_ln14_fu_409_p2;
reg   [2:0] add_ln14_reg_1351;
wire    ap_CS_fsm_state2;
wire   [5:0] zext_ln14_fu_423_p1;
reg   [5:0] zext_ln14_reg_1356;
wire   [2:0] smax92_cast_fu_445_p1;
reg   [2:0] smax92_cast_reg_1361;
wire   [2:0] cond24_fu_461_p3;
reg   [2:0] cond24_reg_1366;
wire   [2:0] add_ln15_fu_475_p2;
reg   [2:0] add_ln15_reg_1374;
wire    ap_CS_fsm_state3;
wire   [7:0] tmp_fu_490_p3;
reg   [7:0] tmp_reg_1379;
wire   [2:0] smax87_cast_fu_516_p1;
reg   [2:0] smax87_cast_reg_1384;
wire   [2:0] cond47_fu_532_p3;
reg   [2:0] cond47_reg_1389;
wire   [2:0] add_ln16_fu_561_p2;
reg   [2:0] add_ln16_reg_1397;
wire    ap_CS_fsm_state4;
wire   [9:0] add_ln16_2_fu_605_p2;
reg   [9:0] add_ln16_2_reg_1407;
wire   [2:0] add_ln15_1_fu_611_p2;
wire   [2:0] smax_cast_fu_635_p1;
reg   [2:0] smax_cast_reg_1417;
wire    ap_CS_fsm_state5;
wire   [2:0] cond70_fu_651_p3;
reg   [2:0] cond70_reg_1422;
reg   [31:0] n_points_load_reg_1427;
wire   [5:0] zext_ln8_fu_672_p1;
reg   [5:0] zext_ln8_reg_1435;
wire    ap_CS_fsm_state6;
wire   [2:0] add_ln16_1_fu_676_p2;
wire   [7:0] tmp_41_fu_696_p3;
reg   [7:0] tmp_41_reg_1448;
wire    ap_CS_fsm_state7;
wire   [2:0] add_ln18_fu_704_p2;
wire    ap_CS_fsm_state8;
wire   [9:0] add_ln8_fu_753_p2;
reg   [9:0] add_ln8_reg_1466;
wire   [2:0] add_ln19_fu_759_p2;
reg   [31:0] q_idx_range_reg_1476;
wire    ap_CS_fsm_state9;
wire   [9:0] add_ln24_fu_774_p2;
reg   [9:0] add_ln24_reg_1485;
wire    ap_CS_fsm_state10;
reg   [9:0] force_r_addr_reg_1490;
wire   [2:0] add_ln20_fu_791_p2;
wire   [190:0] trunc_ln25_fu_797_p1;
reg   [190:0] trunc_ln25_reg_1505;
wire    ap_CS_fsm_state11;
wire   [63:0] trunc_ln25_3_fu_801_p1;
reg   [63:0] trunc_ln25_3_reg_1510;
reg   [63:0] trunc_ln25_1_reg_1515;
reg   [63:0] trunc_ln25_2_reg_1520;
wire   [51:0] trunc_ln34_fu_825_p1;
reg   [51:0] trunc_ln34_reg_1525;
reg   [51:0] trunc_ln34_3_reg_1530;
reg   [51:0] trunc_ln34_5_reg_1535;
wire   [63:0] p_x_fu_849_p1;
reg   [63:0] p_x_reg_1540;
wire    ap_CS_fsm_state12;
wire   [63:0] p_y_fu_853_p1;
reg   [63:0] p_y_reg_1545;
wire   [63:0] p_z_fu_857_p1;
reg   [63:0] p_z_reg_1550;
wire   [63:0] sum_x_fu_865_p1;
reg   [63:0] sum_x_reg_1555;
wire   [63:0] sum_y_fu_880_p1;
reg   [63:0] sum_y_reg_1560;
wire   [63:0] sum_z_fu_895_p1;
reg   [63:0] sum_z_reg_1565;
wire   [2:0] grp_md_Pipeline_loop_q_fu_344_ap_return;
reg   [2:0] targetBlock_reg_1570;
wire    ap_CS_fsm_state13;
wire   [0:0] empty_26_fu_900_p2;
reg   [0:0] empty_26_reg_1577;
wire   [0:0] empty_28_fu_906_p2;
reg   [0:0] empty_28_reg_1584;
wire   [0:0] empty_30_fu_912_p2;
reg   [0:0] empty_30_reg_1591;
wire   [0:0] empty_32_fu_918_p2;
reg   [0:0] empty_32_reg_1598;
wire    grp_md_Pipeline_loop_q_fu_344_ap_start;
wire    grp_md_Pipeline_loop_q_fu_344_ap_done;
wire    grp_md_Pipeline_loop_q_fu_344_ap_idle;
wire    grp_md_Pipeline_loop_q_fu_344_ap_ready;
wire   [9:0] grp_md_Pipeline_loop_q_fu_344_position_address0;
wire    grp_md_Pipeline_loop_q_fu_344_position_ce0;
wire   [9:0] grp_md_Pipeline_loop_q_fu_344_position_address1;
wire    grp_md_Pipeline_loop_q_fu_344_position_ce1;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_z_1_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_z_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_y_1_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_y_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_x_1_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_x_1_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_x_15_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_x_15_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_y_15_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_y_15_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_z_15_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_z_15_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_x_13_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_x_13_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_y_13_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_y_13_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_z_13_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_z_13_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_x_11_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_x_11_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_y_11_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_y_11_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_z_11_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_z_11_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_x_9_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_x_9_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_y_9_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_y_9_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_z_9_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_z_9_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_x_7_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_x_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_y_7_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_y_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_z_7_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_z_7_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_x_5_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_x_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_y_5_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_y_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_z_5_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_z_5_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_x_3_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_x_3_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_y_3_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_y_3_out_ap_vld;
wire   [63:0] grp_md_Pipeline_loop_q_fu_344_sum_z_3_out;
wire    grp_md_Pipeline_loop_q_fu_344_sum_z_3_out_ap_vld;
reg   [2:0] b0_y_reg_256;
wire   [0:0] icmp_ln14_fu_403_p2;
wire   [0:0] icmp_ln16_fu_555_p2;
reg   [2:0] indvars_iv85_reg_267;
reg   [2:0] b0_z_reg_279;
wire   [0:0] icmp_ln15_fu_469_p2;
wire   [0:0] icmp_ln18_fu_659_p2;
reg   [2:0] indvars_iv81_reg_291;
reg   [2:0] b1_x_reg_303;
wire   [0:0] icmp_ln19_fu_682_p2;
reg   [2:0] b1_y_reg_313;
wire   [0:0] icmp_ln20_fu_710_p2;
reg   [2:0] b1_z_reg_323;
wire   [0:0] icmp_ln24_fu_769_p2;
reg   [9:0] p_idx_reg_333;
wire    ap_CS_fsm_state14;
reg    grp_md_Pipeline_loop_q_fu_344_ap_start_reg;
reg   [63:0] sum_z_1_loc_fu_206;
reg   [63:0] sum_y_1_loc_fu_202;
reg   [63:0] sum_x_1_loc_fu_198;
reg   [63:0] sum_x_15_loc_fu_194;
reg   [63:0] sum_y_15_loc_fu_190;
reg   [63:0] sum_z_15_loc_fu_186;
reg   [63:0] sum_x_13_loc_fu_182;
reg   [63:0] sum_y_13_loc_fu_178;
reg   [63:0] sum_z_13_loc_fu_174;
reg   [63:0] sum_x_11_loc_fu_170;
reg   [63:0] sum_y_11_loc_fu_166;
reg   [63:0] sum_z_11_loc_fu_162;
reg   [63:0] sum_x_9_loc_fu_158;
reg   [63:0] sum_y_9_loc_fu_154;
reg   [63:0] sum_z_9_loc_fu_150;
reg   [63:0] sum_x_7_loc_fu_146;
reg   [63:0] sum_y_7_loc_fu_142;
reg   [63:0] sum_z_7_loc_fu_138;
reg   [63:0] sum_x_5_loc_fu_134;
reg   [63:0] sum_y_5_loc_fu_130;
reg   [63:0] sum_z_5_loc_fu_126;
reg   [63:0] sum_x_3_loc_fu_122;
reg   [63:0] sum_y_3_loc_fu_118;
reg   [63:0] sum_z_3_loc_fu_114;
wire   [63:0] p_cast6_fu_576_p1;
wire   [63:0] zext_ln23_2_fu_724_p1;
wire   [63:0] zext_ln26_fu_785_p1;
reg   [2:0] indvars_iv90_fu_106;
wire   [2:0] add_ln14_1_fu_540_p2;
reg   [2:0] b0_x_fu_110;
reg    n_points_ce0_local;
reg   [5:0] n_points_address0_local;
reg    position_ce0_local;
reg    force_r_ce0_local;
reg    force_r_we0_local;
wire   [191:0] or_ln_fu_1179_p4;
wire   [4:0] tmp_10_fu_415_p3;
wire   [0:0] empty_fu_431_p2;
wire   [1:0] trunc_ln14_fu_427_p1;
wire   [1:0] smax92_fu_437_p3;
wire   [2:0] empty_19_fu_449_p2;
wire   [0:0] cmp18_fu_455_p2;
wire   [5:0] b0_y_cast_fu_481_p1;
wire   [5:0] empty_20_fu_485_p2;
wire   [0:0] empty_21_fu_502_p2;
wire   [1:0] trunc_ln15_fu_498_p1;
wire   [1:0] smax87_fu_508_p3;
wire   [2:0] empty_22_fu_520_p2;
wire   [0:0] cmp41_fu_526_p2;
wire   [7:0] b0_z_cast_fu_567_p1;
wire   [7:0] empty_23_fu_571_p2;
wire   [6:0] trunc_ln26_fu_581_p1;
wire   [8:0] tmp_40_fu_593_p3;
wire   [9:0] p_shl1_fu_585_p3;
wire   [9:0] zext_ln16_fu_601_p1;
wire   [0:0] empty_24_fu_621_p2;
wire   [1:0] trunc_ln16_fu_617_p1;
wire   [1:0] smax_fu_627_p3;
wire   [2:0] empty_25_fu_639_p2;
wire   [0:0] cmp64_fu_645_p2;
wire   [4:0] tmp_19_fu_664_p3;
wire   [5:0] zext_ln23_fu_687_p1;
wire   [5:0] add_ln23_fu_691_p2;
wire   [7:0] zext_ln23_1_fu_715_p1;
wire   [7:0] add_ln23_1_fu_719_p2;
wire   [6:0] trunc_ln31_fu_729_p1;
wire   [8:0] tmp_42_fu_741_p3;
wire   [9:0] p_shl_fu_733_p3;
wire   [9:0] zext_ln8_1_fu_749_p1;
wire   [31:0] zext_ln24_fu_765_p1;
wire   [9:0] add_ln26_fu_780_p2;
wire   [63:0] trunc_ln26_1_fu_861_p1;
wire   [63:0] trunc_ln5_fu_870_p4;
wire   [63:0] trunc_ln6_fu_885_p4;
wire   [63:0] empty_27_fu_996_p3;
wire   [63:0] empty_29_fu_1003_p3;
wire   [63:0] empty_31_fu_1010_p3;
wire   [0:0] empty_34_fu_1024_p2;
wire   [63:0] empty_33_fu_1017_p3;
wire   [0:0] empty_36_fu_1037_p2;
wire   [63:0] empty_35_fu_1029_p3;
wire   [0:0] empty_38_fu_1050_p2;
wire   [63:0] empty_37_fu_1042_p3;
wire   [63:0] empty_39_fu_1063_p3;
wire   [63:0] empty_40_fu_1070_p3;
wire   [63:0] empty_41_fu_1077_p3;
wire   [63:0] empty_42_fu_1084_p3;
wire   [63:0] empty_43_fu_1091_p3;
wire   [63:0] empty_44_fu_1099_p3;
wire   [63:0] empty_45_fu_1115_p3;
wire   [63:0] empty_46_fu_1122_p3;
wire   [63:0] empty_47_fu_1129_p3;
wire   [63:0] empty_48_fu_1136_p3;
wire   [63:0] empty_49_fu_1143_p3;
wire   [63:0] empty_50_fu_1151_p3;
wire   [63:0] sum_x_0_lcssa_ph_fu_1159_p3;
wire   [63:0] sum_y_0_lcssa_ph_fu_1107_p3;
wire   [63:0] sum_z_0_lcssa_ph_fu_1055_p3;
wire   [63:0] bitcast_ln51_fu_1175_p1;
wire   [63:0] bitcast_ln50_fu_1171_p1;
wire   [63:0] bitcast_ln49_fu_1167_p1;
reg   [13:0] ap_NS_fsm;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 grp_md_Pipeline_loop_q_fu_344_ap_start_reg = 1'b0;
#0 indvars_iv90_fu_106 = 3'd0;
#0 b0_x_fu_110 = 3'd0;
end
md_md_Pipeline_loop_q grp_md_Pipeline_loop_q_fu_344(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_md_Pipeline_loop_q_fu_344_ap_start),.ap_done(grp_md_Pipeline_loop_q_fu_344_ap_done),.ap_idle(grp_md_Pipeline_loop_q_fu_344_ap_idle),.ap_ready(grp_md_Pipeline_loop_q_fu_344_ap_ready),.sum_z(sum_z_reg_1565),.sum_y(sum_y_reg_1560),.sum_x(sum_x_reg_1555),.sext_ln24(q_idx_range_reg_1476),.p_x(p_x_reg_1540),.p_y(p_y_reg_1545),.p_z(p_z_reg_1550),.mul_ln31(add_ln8_reg_1466),.position_address0(grp_md_Pipeline_loop_q_fu_344_position_address0),.position_ce0(grp_md_Pipeline_loop_q_fu_344_position_ce0),.position_q0(position_q0),.position_address1(grp_md_Pipeline_loop_q_fu_344_position_address1),.position_ce1(grp_md_Pipeline_loop_q_fu_344_position_ce1),.position_q1(position_q1),.q_idx_range(q_idx_range_reg_1476),.position_load(trunc_ln25_reg_1505),.empty(trunc_ln34_reg_1525),.trunc_ln34_3(trunc_ln34_3_reg_1530),.trunc_ln34_5(trunc_ln34_5_reg_1535),.sum_z_1_out(grp_md_Pipeline_loop_q_fu_344_sum_z_1_out),.sum_z_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_z_1_out_ap_vld),.sum_y_1_out(grp_md_Pipeline_loop_q_fu_344_sum_y_1_out),.sum_y_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_y_1_out_ap_vld),.sum_x_1_out(grp_md_Pipeline_loop_q_fu_344_sum_x_1_out),.sum_x_1_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_x_1_out_ap_vld),.sum_x_15_out(grp_md_Pipeline_loop_q_fu_344_sum_x_15_out),.sum_x_15_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_x_15_out_ap_vld),.sum_y_15_out(grp_md_Pipeline_loop_q_fu_344_sum_y_15_out),.sum_y_15_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_y_15_out_ap_vld),.sum_z_15_out(grp_md_Pipeline_loop_q_fu_344_sum_z_15_out),.sum_z_15_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_z_15_out_ap_vld),.sum_x_13_out(grp_md_Pipeline_loop_q_fu_344_sum_x_13_out),.sum_x_13_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_x_13_out_ap_vld),.sum_y_13_out(grp_md_Pipeline_loop_q_fu_344_sum_y_13_out),.sum_y_13_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_y_13_out_ap_vld),.sum_z_13_out(grp_md_Pipeline_loop_q_fu_344_sum_z_13_out),.sum_z_13_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_z_13_out_ap_vld),.sum_x_11_out(grp_md_Pipeline_loop_q_fu_344_sum_x_11_out),.sum_x_11_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_x_11_out_ap_vld),.sum_y_11_out(grp_md_Pipeline_loop_q_fu_344_sum_y_11_out),.sum_y_11_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_y_11_out_ap_vld),.sum_z_11_out(grp_md_Pipeline_loop_q_fu_344_sum_z_11_out),.sum_z_11_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_z_11_out_ap_vld),.sum_x_9_out(grp_md_Pipeline_loop_q_fu_344_sum_x_9_out),.sum_x_9_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_x_9_out_ap_vld),.sum_y_9_out(grp_md_Pipeline_loop_q_fu_344_sum_y_9_out),.sum_y_9_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_y_9_out_ap_vld),.sum_z_9_out(grp_md_Pipeline_loop_q_fu_344_sum_z_9_out),.sum_z_9_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_z_9_out_ap_vld),.sum_x_7_out(grp_md_Pipeline_loop_q_fu_344_sum_x_7_out),.sum_x_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_x_7_out_ap_vld),.sum_y_7_out(grp_md_Pipeline_loop_q_fu_344_sum_y_7_out),.sum_y_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_y_7_out_ap_vld),.sum_z_7_out(grp_md_Pipeline_loop_q_fu_344_sum_z_7_out),.sum_z_7_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_z_7_out_ap_vld),.sum_x_5_out(grp_md_Pipeline_loop_q_fu_344_sum_x_5_out),.sum_x_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_x_5_out_ap_vld),.sum_y_5_out(grp_md_Pipeline_loop_q_fu_344_sum_y_5_out),.sum_y_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_y_5_out_ap_vld),.sum_z_5_out(grp_md_Pipeline_loop_q_fu_344_sum_z_5_out),.sum_z_5_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_z_5_out_ap_vld),.sum_x_3_out(grp_md_Pipeline_loop_q_fu_344_sum_x_3_out),.sum_x_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_x_3_out_ap_vld),.sum_y_3_out(grp_md_Pipeline_loop_q_fu_344_sum_y_3_out),.sum_y_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_y_3_out_ap_vld),.sum_z_3_out(grp_md_Pipeline_loop_q_fu_344_sum_z_3_out),.sum_z_3_out_ap_vld(grp_md_Pipeline_loop_q_fu_344_sum_z_3_out_ap_vld),.ap_return(grp_md_Pipeline_loop_q_fu_344_ap_return));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_md_Pipeline_loop_q_fu_344_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_md_Pipeline_loop_q_fu_344_ap_start_reg <= 1'b1;
        end else if ((grp_md_Pipeline_loop_q_fu_344_ap_ready == 1'b1)) begin
            grp_md_Pipeline_loop_q_fu_344_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        b0_x_fu_110 <= 3'd0;
    end else if (((icmp_ln15_fu_469_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_x_fu_110 <= add_ln14_reg_1351;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_555_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        b0_y_reg_256 <= add_ln15_reg_1374;
    end else if (((icmp_ln14_fu_403_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        b0_y_reg_256 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_659_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        b0_z_reg_279 <= add_ln16_reg_1397;
    end else if (((icmp_ln15_fu_469_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        b0_z_reg_279 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        b1_x_reg_303 <= smax92_cast_reg_1361;
    end else if (((icmp_ln19_fu_682_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_x_reg_303 <= add_ln18_fu_704_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_659_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        b1_y_reg_313 <= smax87_cast_reg_1384;
    end else if (((icmp_ln20_fu_710_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        b1_y_reg_313 <= add_ln19_fu_759_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln19_fu_682_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        b1_z_reg_323 <= smax_cast_reg_1417;
    end else if (((icmp_ln24_fu_769_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        b1_z_reg_323 <= add_ln20_fu_791_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_659_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        indvars_iv81_reg_291 <= add_ln16_1_fu_676_p2;
    end else if (((icmp_ln15_fu_469_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv81_reg_291 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_555_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        indvars_iv85_reg_267 <= add_ln15_1_fu_611_p2;
    end else if (((icmp_ln14_fu_403_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvars_iv85_reg_267 <= 3'd7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvars_iv90_fu_106 <= 3'd7;
    end else if (((icmp_ln15_fu_469_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv90_fu_106 <= add_ln14_1_fu_540_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        p_idx_reg_333 <= add_ln24_reg_1485;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        p_idx_reg_333 <= 10'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln14_reg_1351 <= add_ln14_fu_409_p2;
        cond24_reg_1366 <= cond24_fu_461_p3;
        smax92_cast_reg_1361[1 : 0] <= smax92_cast_fu_445_p1[1 : 0];
        zext_ln14_reg_1356[4 : 2] <= zext_ln14_fu_423_p1[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln15_reg_1374 <= add_ln15_fu_475_p2;
        cond47_reg_1389 <= cond47_fu_532_p3;
        smax87_cast_reg_1384[1 : 0] <= smax87_cast_fu_516_p1[1 : 0];
        tmp_reg_1379[7 : 2] <= tmp_fu_490_p3[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln16_2_reg_1407[9 : 1] <= add_ln16_2_fu_605_p2[9 : 1];
        add_ln16_reg_1397 <= add_ln16_fu_561_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        add_ln24_reg_1485 <= add_ln24_fu_774_p2;
        force_r_addr_reg_1490 <= zext_ln26_fu_785_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln8_reg_1466[9 : 1] <= add_ln8_fu_753_p2[9 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        cond70_reg_1422 <= cond70_fu_651_p3;
        n_points_load_reg_1427 <= n_points_q0;
        smax_cast_reg_1417[1 : 0] <= smax_cast_fu_635_p1[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        empty_26_reg_1577 <= empty_26_fu_900_p2;
        empty_28_reg_1584 <= empty_28_fu_906_p2;
        empty_30_reg_1591 <= empty_30_fu_912_p2;
        empty_32_reg_1598 <= empty_32_fu_918_p2;
        targetBlock_reg_1570 <= grp_md_Pipeline_loop_q_fu_344_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        p_x_reg_1540 <= p_x_fu_849_p1;
        p_y_reg_1545 <= p_y_fu_853_p1;
        p_z_reg_1550 <= p_z_fu_857_p1;
        sum_x_reg_1555 <= sum_x_fu_865_p1;
        sum_y_reg_1560 <= sum_y_fu_880_p1;
        sum_z_reg_1565 <= sum_z_fu_895_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        q_idx_range_reg_1476 <= n_points_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_x_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_11_loc_fu_170 <= grp_md_Pipeline_loop_q_fu_344_sum_x_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_x_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_13_loc_fu_182 <= grp_md_Pipeline_loop_q_fu_344_sum_x_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_x_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_15_loc_fu_194 <= grp_md_Pipeline_loop_q_fu_344_sum_x_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_x_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_1_loc_fu_198 <= grp_md_Pipeline_loop_q_fu_344_sum_x_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_x_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_3_loc_fu_122 <= grp_md_Pipeline_loop_q_fu_344_sum_x_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_x_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_5_loc_fu_134 <= grp_md_Pipeline_loop_q_fu_344_sum_x_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_x_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_7_loc_fu_146 <= grp_md_Pipeline_loop_q_fu_344_sum_x_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_x_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_x_9_loc_fu_158 <= grp_md_Pipeline_loop_q_fu_344_sum_x_9_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_y_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_11_loc_fu_166 <= grp_md_Pipeline_loop_q_fu_344_sum_y_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_y_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_13_loc_fu_178 <= grp_md_Pipeline_loop_q_fu_344_sum_y_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_y_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_15_loc_fu_190 <= grp_md_Pipeline_loop_q_fu_344_sum_y_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_y_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_1_loc_fu_202 <= grp_md_Pipeline_loop_q_fu_344_sum_y_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_y_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_3_loc_fu_118 <= grp_md_Pipeline_loop_q_fu_344_sum_y_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_y_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_5_loc_fu_130 <= grp_md_Pipeline_loop_q_fu_344_sum_y_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_y_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_7_loc_fu_142 <= grp_md_Pipeline_loop_q_fu_344_sum_y_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_y_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_y_9_loc_fu_154 <= grp_md_Pipeline_loop_q_fu_344_sum_y_9_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_z_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_11_loc_fu_162 <= grp_md_Pipeline_loop_q_fu_344_sum_z_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_z_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_13_loc_fu_174 <= grp_md_Pipeline_loop_q_fu_344_sum_z_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_z_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_15_loc_fu_186 <= grp_md_Pipeline_loop_q_fu_344_sum_z_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_z_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_1_loc_fu_206 <= grp_md_Pipeline_loop_q_fu_344_sum_z_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_z_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_3_loc_fu_114 <= grp_md_Pipeline_loop_q_fu_344_sum_z_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_z_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_5_loc_fu_126 <= grp_md_Pipeline_loop_q_fu_344_sum_z_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_z_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_7_loc_fu_138 <= grp_md_Pipeline_loop_q_fu_344_sum_z_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_md_Pipeline_loop_q_fu_344_sum_z_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        sum_z_9_loc_fu_150 <= grp_md_Pipeline_loop_q_fu_344_sum_z_9_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_41_reg_1448[7 : 2] <= tmp_41_fu_696_p3[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        trunc_ln25_1_reg_1515 <= {{position_q0[127:64]}};
        trunc_ln25_2_reg_1520 <= {{position_q0[191:128]}};
        trunc_ln25_3_reg_1510 <= trunc_ln25_3_fu_801_p1;
        trunc_ln25_reg_1505 <= trunc_ln25_fu_797_p1;
        trunc_ln34_3_reg_1530 <= {{position_q0[115:64]}};
        trunc_ln34_5_reg_1535 <= {{position_q0[179:128]}};
        trunc_ln34_reg_1525 <= trunc_ln34_fu_825_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        zext_ln8_reg_1435[4 : 2] <= zext_ln8_fu_672_p1[4 : 2];
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_md_Pipeline_loop_q_fu_344_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
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
    if (((icmp_ln14_fu_403_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln14_fu_403_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11))) begin
        force_r_ce0_local = 1'b1;
    end else begin
        force_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        force_r_we0_local = 1'b1;
    end else begin
        force_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        n_points_address0_local = zext_ln23_2_fu_724_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        n_points_address0_local = p_cast6_fu_576_p1;
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
        position_address0 = grp_md_Pipeline_loop_q_fu_344_position_address0;
    end else begin
        position_address0 = zext_ln26_fu_785_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        position_ce0 = grp_md_Pipeline_loop_q_fu_344_position_ce0;
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
        position_ce1 = grp_md_Pipeline_loop_q_fu_344_position_ce1;
    end else begin
        position_ce1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln14_fu_403_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln15_fu_469_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln16_fu_555_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln18_fu_659_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln19_fu_682_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((icmp_ln20_fu_710_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((icmp_ln24_fu_769_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
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
            if (((grp_md_Pipeline_loop_q_fu_344_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln14_1_fu_540_p2 = (indvars_iv90_fu_106 + 3'd1);
assign add_ln14_fu_409_p2 = (b0_x_fu_110 + 3'd1);
assign add_ln15_1_fu_611_p2 = (indvars_iv85_reg_267 + 3'd1);
assign add_ln15_fu_475_p2 = (b0_y_reg_256 + 3'd1);
assign add_ln16_1_fu_676_p2 = (indvars_iv81_reg_291 + 3'd1);
assign add_ln16_2_fu_605_p2 = (p_shl1_fu_585_p3 + zext_ln16_fu_601_p1);
assign add_ln16_fu_561_p2 = (b0_z_reg_279 + 3'd1);
assign add_ln18_fu_704_p2 = (b1_x_reg_303 + 3'd1);
assign add_ln19_fu_759_p2 = (b1_y_reg_313 + 3'd1);
assign add_ln20_fu_791_p2 = (b1_z_reg_323 + 3'd1);
assign add_ln23_1_fu_719_p2 = (tmp_41_reg_1448 + zext_ln23_1_fu_715_p1);
assign add_ln23_fu_691_p2 = (zext_ln8_reg_1435 + zext_ln23_fu_687_p1);
assign add_ln24_fu_774_p2 = (p_idx_reg_333 + 10'd1);
assign add_ln26_fu_780_p2 = (add_ln16_2_reg_1407 + p_idx_reg_333);
assign add_ln8_fu_753_p2 = (p_shl_fu_733_p3 + zext_ln8_1_fu_749_p1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign b0_y_cast_fu_481_p1 = b0_y_reg_256;
assign b0_z_cast_fu_567_p1 = b0_z_reg_279;
assign bitcast_ln49_fu_1167_p1 = sum_x_0_lcssa_ph_fu_1159_p3;
assign bitcast_ln50_fu_1171_p1 = sum_y_0_lcssa_ph_fu_1107_p3;
assign bitcast_ln51_fu_1175_p1 = sum_z_0_lcssa_ph_fu_1055_p3;
assign cmp18_fu_455_p2 = ((empty_19_fu_449_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp41_fu_526_p2 = ((empty_22_fu_520_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cmp64_fu_645_p2 = ((empty_25_fu_639_p2 > 3'd4) ? 1'b1 : 1'b0);
assign cond24_fu_461_p3 = ((cmp18_fu_455_p2[0:0] == 1'b1) ? 3'd4 : empty_19_fu_449_p2);
assign cond47_fu_532_p3 = ((cmp41_fu_526_p2[0:0] == 1'b1) ? 3'd4 : empty_22_fu_520_p2);
assign cond70_fu_651_p3 = ((cmp64_fu_645_p2[0:0] == 1'b1) ? 3'd4 : empty_25_fu_639_p2);
assign empty_19_fu_449_p2 = (b0_x_fu_110 + 3'd2);
assign empty_20_fu_485_p2 = (zext_ln14_reg_1356 + b0_y_cast_fu_481_p1);
assign empty_21_fu_502_p2 = (($signed(indvars_iv85_reg_267) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_22_fu_520_p2 = (b0_y_reg_256 + 3'd2);
assign empty_23_fu_571_p2 = (tmp_reg_1379 + b0_z_cast_fu_567_p1);
assign empty_24_fu_621_p2 = (($signed(indvars_iv81_reg_291) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign empty_25_fu_639_p2 = (b0_z_reg_279 + 3'd2);
assign empty_26_fu_900_p2 = ((grp_md_Pipeline_loop_q_fu_344_ap_return == 3'd0) ? 1'b1 : 1'b0);
assign empty_27_fu_996_p3 = ((empty_26_reg_1577[0:0] == 1'b1) ? sum_z_1_loc_fu_206 : sum_z_3_loc_fu_114);
assign empty_28_fu_906_p2 = ((grp_md_Pipeline_loop_q_fu_344_ap_return == 3'd1) ? 1'b1 : 1'b0);
assign empty_29_fu_1003_p3 = ((empty_28_reg_1584[0:0] == 1'b1) ? sum_z_15_loc_fu_186 : empty_27_fu_996_p3);
assign empty_30_fu_912_p2 = ((grp_md_Pipeline_loop_q_fu_344_ap_return == 3'd2) ? 1'b1 : 1'b0);
assign empty_31_fu_1010_p3 = ((empty_30_reg_1591[0:0] == 1'b1) ? sum_z_13_loc_fu_174 : empty_29_fu_1003_p3);
assign empty_32_fu_918_p2 = ((grp_md_Pipeline_loop_q_fu_344_ap_return == 3'd3) ? 1'b1 : 1'b0);
assign empty_33_fu_1017_p3 = ((empty_32_reg_1598[0:0] == 1'b1) ? sum_z_11_loc_fu_162 : empty_31_fu_1010_p3);
assign empty_34_fu_1024_p2 = ((targetBlock_reg_1570 == 3'd4) ? 1'b1 : 1'b0);
assign empty_35_fu_1029_p3 = ((empty_34_fu_1024_p2[0:0] == 1'b1) ? sum_z_9_loc_fu_150 : empty_33_fu_1017_p3);
assign empty_36_fu_1037_p2 = ((targetBlock_reg_1570 == 3'd5) ? 1'b1 : 1'b0);
assign empty_37_fu_1042_p3 = ((empty_36_fu_1037_p2[0:0] == 1'b1) ? sum_z_7_loc_fu_138 : empty_35_fu_1029_p3);
assign empty_38_fu_1050_p2 = ((targetBlock_reg_1570 == 3'd6) ? 1'b1 : 1'b0);
assign empty_39_fu_1063_p3 = ((empty_26_reg_1577[0:0] == 1'b1) ? sum_y_1_loc_fu_202 : sum_y_3_loc_fu_118);
assign empty_40_fu_1070_p3 = ((empty_28_reg_1584[0:0] == 1'b1) ? sum_y_15_loc_fu_190 : empty_39_fu_1063_p3);
assign empty_41_fu_1077_p3 = ((empty_30_reg_1591[0:0] == 1'b1) ? sum_y_13_loc_fu_178 : empty_40_fu_1070_p3);
assign empty_42_fu_1084_p3 = ((empty_32_reg_1598[0:0] == 1'b1) ? sum_y_11_loc_fu_166 : empty_41_fu_1077_p3);
assign empty_43_fu_1091_p3 = ((empty_34_fu_1024_p2[0:0] == 1'b1) ? sum_y_9_loc_fu_154 : empty_42_fu_1084_p3);
assign empty_44_fu_1099_p3 = ((empty_36_fu_1037_p2[0:0] == 1'b1) ? sum_y_7_loc_fu_142 : empty_43_fu_1091_p3);
assign empty_45_fu_1115_p3 = ((empty_26_reg_1577[0:0] == 1'b1) ? sum_x_1_loc_fu_198 : sum_x_3_loc_fu_122);
assign empty_46_fu_1122_p3 = ((empty_28_reg_1584[0:0] == 1'b1) ? sum_x_15_loc_fu_194 : empty_45_fu_1115_p3);
assign empty_47_fu_1129_p3 = ((empty_30_reg_1591[0:0] == 1'b1) ? sum_x_13_loc_fu_182 : empty_46_fu_1122_p3);
assign empty_48_fu_1136_p3 = ((empty_32_reg_1598[0:0] == 1'b1) ? sum_x_11_loc_fu_170 : empty_47_fu_1129_p3);
assign empty_49_fu_1143_p3 = ((empty_34_fu_1024_p2[0:0] == 1'b1) ? sum_x_9_loc_fu_158 : empty_48_fu_1136_p3);
assign empty_50_fu_1151_p3 = ((empty_36_fu_1037_p2[0:0] == 1'b1) ? sum_x_7_loc_fu_146 : empty_49_fu_1143_p3);
assign empty_fu_431_p2 = (($signed(indvars_iv90_fu_106) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign force_r_address0 = force_r_addr_reg_1490;
assign force_r_ce0 = force_r_ce0_local;
assign force_r_d0 = or_ln_fu_1179_p4;
assign force_r_we0 = force_r_we0_local;
assign grp_md_Pipeline_loop_q_fu_344_ap_start = grp_md_Pipeline_loop_q_fu_344_ap_start_reg;
assign icmp_ln14_fu_403_p2 = ((b0_x_fu_110 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln15_fu_469_p2 = ((b0_y_reg_256 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_555_p2 = ((b0_z_reg_279 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_659_p2 = ((b1_x_reg_303 < cond24_reg_1366) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_682_p2 = ((b1_y_reg_313 < cond47_reg_1389) ? 1'b1 : 1'b0);
assign icmp_ln20_fu_710_p2 = ((b1_z_reg_323 < cond70_reg_1422) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_769_p2 = (($signed(zext_ln24_fu_765_p1) < $signed(n_points_load_reg_1427)) ? 1'b1 : 1'b0);
assign n_points_address0 = n_points_address0_local;
assign n_points_ce0 = n_points_ce0_local;
assign or_ln_fu_1179_p4 = {{{bitcast_ln51_fu_1175_p1}, {bitcast_ln50_fu_1171_p1}}, {bitcast_ln49_fu_1167_p1}};
assign p_cast6_fu_576_p1 = empty_23_fu_571_p2;
assign p_shl1_fu_585_p3 = {{trunc_ln26_fu_581_p1}, {3'd0}};
assign p_shl_fu_733_p3 = {{trunc_ln31_fu_729_p1}, {3'd0}};
assign p_x_fu_849_p1 = trunc_ln25_3_reg_1510;
assign p_y_fu_853_p1 = trunc_ln25_1_reg_1515;
assign p_z_fu_857_p1 = trunc_ln25_2_reg_1520;
assign position_address1 = grp_md_Pipeline_loop_q_fu_344_position_address1;
assign smax87_cast_fu_516_p1 = smax87_fu_508_p3;
assign smax87_fu_508_p3 = ((empty_21_fu_502_p2[0:0] == 1'b1) ? trunc_ln15_fu_498_p1 : 2'd0);
assign smax92_cast_fu_445_p1 = smax92_fu_437_p3;
assign smax92_fu_437_p3 = ((empty_fu_431_p2[0:0] == 1'b1) ? trunc_ln14_fu_427_p1 : 2'd0);
assign smax_cast_fu_635_p1 = smax_fu_627_p3;
assign smax_fu_627_p3 = ((empty_24_fu_621_p2[0:0] == 1'b1) ? trunc_ln16_fu_617_p1 : 2'd0);
assign sum_x_0_lcssa_ph_fu_1159_p3 = ((empty_38_fu_1050_p2[0:0] == 1'b1) ? sum_x_5_loc_fu_134 : empty_50_fu_1151_p3);
assign sum_x_fu_865_p1 = trunc_ln26_1_fu_861_p1;
assign sum_y_0_lcssa_ph_fu_1107_p3 = ((empty_38_fu_1050_p2[0:0] == 1'b1) ? sum_y_5_loc_fu_130 : empty_44_fu_1099_p3);
assign sum_y_fu_880_p1 = trunc_ln5_fu_870_p4;
assign sum_z_0_lcssa_ph_fu_1055_p3 = ((empty_38_fu_1050_p2[0:0] == 1'b1) ? sum_z_5_loc_fu_126 : empty_37_fu_1042_p3);
assign sum_z_fu_895_p1 = trunc_ln6_fu_885_p4;
assign tmp_10_fu_415_p3 = {{b0_x_fu_110}, {2'd0}};
assign tmp_19_fu_664_p3 = {{b1_x_reg_303}, {2'd0}};
assign tmp_40_fu_593_p3 = {{empty_23_fu_571_p2}, {1'd0}};
assign tmp_41_fu_696_p3 = {{add_ln23_fu_691_p2}, {2'd0}};
assign tmp_42_fu_741_p3 = {{add_ln23_1_fu_719_p2}, {1'd0}};
assign tmp_fu_490_p3 = {{empty_20_fu_485_p2}, {2'd0}};
assign trunc_ln14_fu_427_p1 = indvars_iv90_fu_106[1:0];
assign trunc_ln15_fu_498_p1 = indvars_iv85_reg_267[1:0];
assign trunc_ln16_fu_617_p1 = indvars_iv81_reg_291[1:0];
assign trunc_ln25_3_fu_801_p1 = position_q0[63:0];
assign trunc_ln25_fu_797_p1 = position_q0[190:0];
assign trunc_ln26_1_fu_861_p1 = force_r_q0[63:0];
assign trunc_ln26_fu_581_p1 = empty_23_fu_571_p2[6:0];
assign trunc_ln31_fu_729_p1 = add_ln23_1_fu_719_p2[6:0];
assign trunc_ln34_fu_825_p1 = position_q0[51:0];
assign trunc_ln5_fu_870_p4 = {{force_r_q0[127:64]}};
assign trunc_ln6_fu_885_p4 = {{force_r_q0[191:128]}};
assign zext_ln14_fu_423_p1 = tmp_10_fu_415_p3;
assign zext_ln16_fu_601_p1 = tmp_40_fu_593_p3;
assign zext_ln23_1_fu_715_p1 = b1_z_reg_323;
assign zext_ln23_2_fu_724_p1 = add_ln23_1_fu_719_p2;
assign zext_ln23_fu_687_p1 = b1_y_reg_313;
assign zext_ln24_fu_765_p1 = p_idx_reg_333;
assign zext_ln26_fu_785_p1 = add_ln26_fu_780_p2;
assign zext_ln8_1_fu_749_p1 = tmp_42_fu_741_p3;
assign zext_ln8_fu_672_p1 = tmp_19_fu_664_p3;
always @ (posedge ap_clk) begin
    zext_ln14_reg_1356[1:0] <= 2'b00;
    zext_ln14_reg_1356[5] <= 1'b0;
    smax92_cast_reg_1361[2] <= 1'b0;
    tmp_reg_1379[1:0] <= 2'b00;
    smax87_cast_reg_1384[2] <= 1'b0;
    add_ln16_2_reg_1407[0] <= 1'b0;
    smax_cast_reg_1417[2] <= 1'b0;
    zext_ln8_reg_1435[1:0] <= 2'b00;
    zext_ln8_reg_1435[5] <= 1'b0;
    tmp_41_reg_1448[1:0] <= 2'b00;
    add_ln8_reg_1466[0] <= 1'b0;
end
endmodule 
