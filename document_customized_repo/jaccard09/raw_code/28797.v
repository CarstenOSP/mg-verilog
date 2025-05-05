module viterbi (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,obs_0_address0,obs_0_ce0,obs_0_q0,obs_1_address0,obs_1_ce0,obs_1_q0,obs_2_address0,obs_2_ce0,obs_2_q0,obs_3_address0,obs_3_ce0,obs_3_q0,init_0_address0,init_0_ce0,init_0_q0,init_1_address0,init_1_ce0,init_1_q0,init_2_address0,init_2_ce0,init_2_q0,init_3_address0,init_3_ce0,init_3_q0,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,emission_0_address0,emission_0_ce0,emission_0_q0,emission_1_address0,emission_1_ce0,emission_1_q0,emission_2_address0,emission_2_ce0,emission_2_q0,emission_3_address0,emission_3_ce0,emission_3_q0,path_0_address0,path_0_ce0,path_0_we0,path_0_d0,path_0_q0,path_1_address0,path_1_ce0,path_1_we0,path_1_d0,path_1_q0,path_2_address0,path_2_ce0,path_2_we0,path_2_d0,path_2_q0,path_3_address0,path_3_ce0,path_3_we0,path_3_d0,path_3_q0,ap_return); 
parameter    ap_ST_fsm_state1 = 26'd1;
parameter    ap_ST_fsm_state2 = 26'd2;
parameter    ap_ST_fsm_state3 = 26'd4;
parameter    ap_ST_fsm_state4 = 26'd8;
parameter    ap_ST_fsm_state5 = 26'd16;
parameter    ap_ST_fsm_state6 = 26'd32;
parameter    ap_ST_fsm_state7 = 26'd64;
parameter    ap_ST_fsm_state8 = 26'd128;
parameter    ap_ST_fsm_state9 = 26'd256;
parameter    ap_ST_fsm_state10 = 26'd512;
parameter    ap_ST_fsm_state11 = 26'd1024;
parameter    ap_ST_fsm_state12 = 26'd2048;
parameter    ap_ST_fsm_state13 = 26'd4096;
parameter    ap_ST_fsm_state14 = 26'd8192;
parameter    ap_ST_fsm_state15 = 26'd16384;
parameter    ap_ST_fsm_state16 = 26'd32768;
parameter    ap_ST_fsm_state17 = 26'd65536;
parameter    ap_ST_fsm_state18 = 26'd131072;
parameter    ap_ST_fsm_state19 = 26'd262144;
parameter    ap_ST_fsm_state20 = 26'd524288;
parameter    ap_ST_fsm_state21 = 26'd1048576;
parameter    ap_ST_fsm_state22 = 26'd2097152;
parameter    ap_ST_fsm_state23 = 26'd4194304;
parameter    ap_ST_fsm_state24 = 26'd8388608;
parameter    ap_ST_fsm_state25 = 26'd16777216;
parameter    ap_ST_fsm_state26 = 26'd33554432;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] obs_0_address0;
output   obs_0_ce0;
input  [7:0] obs_0_q0;
output  [5:0] obs_1_address0;
output   obs_1_ce0;
input  [7:0] obs_1_q0;
output  [5:0] obs_2_address0;
output   obs_2_ce0;
input  [7:0] obs_2_q0;
output  [5:0] obs_3_address0;
output   obs_3_ce0;
input  [7:0] obs_3_q0;
output  [3:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [3:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [3:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [3:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [9:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [9:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [9:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [9:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
output  [9:0] transition_2_address0;
output   transition_2_ce0;
input  [63:0] transition_2_q0;
output  [9:0] transition_2_address1;
output   transition_2_ce1;
input  [63:0] transition_2_q1;
output  [9:0] transition_3_address0;
output   transition_3_ce0;
input  [63:0] transition_3_q0;
output  [9:0] transition_3_address1;
output   transition_3_ce1;
input  [63:0] transition_3_q1;
output  [9:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [9:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [9:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [9:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
output  [5:0] path_0_address0;
output   path_0_ce0;
output   path_0_we0;
output  [7:0] path_0_d0;
input  [7:0] path_0_q0;
output  [5:0] path_1_address0;
output   path_1_ce0;
output   path_1_we0;
output  [7:0] path_1_d0;
input  [7:0] path_1_q0;
output  [5:0] path_2_address0;
output   path_2_ce0;
output   path_2_we0;
output  [7:0] path_2_d0;
input  [7:0] path_2_q0;
output  [5:0] path_3_address0;
output   path_3_ce0;
output   path_3_we0;
output  [7:0] path_3_d0;
input  [7:0] path_3_q0;
output  [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] transition_0_address0;
reg transition_0_ce0;
reg[9:0] transition_0_address1;
reg transition_0_ce1;
reg[9:0] transition_1_address0;
reg transition_1_ce0;
reg[9:0] transition_1_address1;
reg transition_1_ce1;
reg[9:0] transition_2_address0;
reg transition_2_ce0;
reg[9:0] transition_2_address1;
reg transition_2_ce1;
reg[9:0] transition_3_address0;
reg transition_3_ce0;
reg[9:0] transition_3_address1;
reg transition_3_ce1;
reg[9:0] emission_0_address0;
reg emission_0_ce0;
reg[9:0] emission_1_address0;
reg emission_1_ce0;
reg[9:0] emission_2_address0;
reg emission_2_ce0;
reg[9:0] emission_3_address0;
reg emission_3_ce0;
(* fsm_encoding = "none" *) reg   [25:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_550;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state15;
wire   [1:0] empty_fu_561_p1;
reg   [1:0] empty_reg_1121;
wire    ap_CS_fsm_state2;
reg   [5:0] conv3_udiv_reg_1126;
wire    ap_CS_fsm_state4;
reg   [7:0] t_2_reg_1136;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_53_fu_621_p2;
reg   [7:0] empty_53_reg_1173;
wire    ap_CS_fsm_state6;
wire   [1:0] empty_54_fu_650_p1;
reg   [1:0] empty_54_reg_1209;
reg   [5:0] conv32_udiv_reg_1214;
wire   [12:0] tmp_287_fu_664_p3;
reg   [12:0] tmp_287_reg_1219;
wire    ap_CS_fsm_state7;
wire   [12:0] tmp_288_fu_672_p3;
reg   [12:0] tmp_288_reg_1224;
wire   [12:0] tmp_s_fu_680_p3;
reg   [12:0] tmp_s_reg_1229;
wire   [12:0] tmp_289_fu_688_p3;
reg   [12:0] tmp_289_reg_1234;
wire   [12:0] tmp_290_fu_696_p3;
reg   [12:0] tmp_290_reg_1239;
wire   [12:0] tmp_291_fu_704_p3;
reg   [12:0] tmp_291_reg_1244;
wire   [12:0] tmp_292_fu_712_p3;
reg   [12:0] tmp_292_reg_1249;
wire   [12:0] tmp_293_fu_720_p3;
reg   [12:0] tmp_293_reg_1254;
wire   [12:0] tmp_294_fu_728_p3;
reg   [12:0] tmp_294_reg_1259;
wire   [12:0] tmp_295_fu_736_p3;
reg   [12:0] tmp_295_reg_1264;
wire   [12:0] tmp_296_fu_744_p3;
reg   [12:0] tmp_296_reg_1269;
wire   [12:0] tmp_297_fu_752_p3;
reg   [12:0] tmp_297_reg_1274;
wire   [12:0] tmp_298_fu_760_p3;
reg   [12:0] tmp_298_reg_1279;
wire   [12:0] tmp_299_fu_768_p3;
reg   [12:0] tmp_299_reg_1284;
wire   [12:0] tmp_300_fu_776_p3;
reg   [12:0] tmp_300_reg_1289;
wire   [12:0] tmp_301_fu_784_p3;
reg   [12:0] tmp_301_reg_1294;
wire   [12:0] tmp_302_fu_792_p3;
reg   [12:0] tmp_302_reg_1299;
wire   [12:0] tmp_303_fu_800_p3;
reg   [12:0] tmp_303_reg_1304;
wire   [12:0] tmp_304_fu_808_p3;
reg   [12:0] tmp_304_reg_1309;
wire   [12:0] tmp_305_fu_816_p3;
reg   [12:0] tmp_305_reg_1314;
wire   [12:0] tmp_306_fu_824_p3;
reg   [12:0] tmp_306_reg_1319;
wire   [12:0] tmp_307_fu_832_p3;
reg   [12:0] tmp_307_reg_1324;
wire   [12:0] tmp_308_fu_840_p3;
reg   [12:0] tmp_308_reg_1329;
wire   [12:0] tmp_309_fu_848_p3;
reg   [12:0] tmp_309_reg_1334;
wire   [12:0] tmp_310_fu_856_p3;
reg   [12:0] tmp_310_reg_1339;
wire   [12:0] tmp_311_fu_864_p3;
reg   [12:0] tmp_311_reg_1344;
wire   [12:0] tmp_312_fu_872_p3;
reg   [12:0] tmp_312_reg_1349;
wire   [12:0] tmp_313_fu_880_p3;
reg   [12:0] tmp_313_reg_1354;
wire   [12:0] tmp_314_fu_888_p3;
reg   [12:0] tmp_314_reg_1359;
wire   [12:0] tmp_315_fu_896_p3;
reg   [12:0] tmp_315_reg_1364;
wire   [12:0] tmp_316_fu_904_p3;
reg   [12:0] tmp_316_reg_1369;
wire   [12:0] tmp_317_fu_912_p3;
reg   [12:0] tmp_317_reg_1374;
wire   [7:0] trunc_ln50_fu_935_p1;
reg   [7:0] trunc_ln50_reg_1385;
wire    ap_CS_fsm_state13;
wire   [12:0] tmp_318_fu_963_p3;
reg   [12:0] tmp_318_reg_1411;
wire    ap_CS_fsm_state14;
wire   [1:0] trunc_ln50_1_fu_975_p1;
reg   [1:0] trunc_ln50_1_reg_1421;
wire   [1:0] trunc_ln52_fu_1002_p1;
reg   [1:0] trunc_ln52_reg_1425;
wire   [5:0] lshr_ln52_1_fu_1006_p4;
reg   [5:0] lshr_ln52_1_reg_1431;
wire   [63:0] tmp_68_fu_1040_p11;
reg   [63:0] tmp_68_reg_1456;
wire   [63:0] grp_fu_546_p2;
reg   [63:0] min_p_204_reg_1461;
wire    ap_CS_fsm_state23;
reg   [12:0] llike_address0;
reg    llike_ce0;
reg    llike_we0;
reg   [63:0] llike_d0;
wire   [63:0] llike_q0;
reg    llike_ce1;
wire   [63:0] llike_q1;
reg   [12:0] llike_1_address0;
reg    llike_1_ce0;
reg    llike_1_we0;
reg   [63:0] llike_1_d0;
wire   [63:0] llike_1_q0;
reg   [12:0] llike_1_address1;
reg    llike_1_ce1;
wire   [63:0] llike_1_q1;
wire    grp_viterbi_Pipeline_L_init_fu_437_ap_start;
wire    grp_viterbi_Pipeline_L_init_fu_437_ap_done;
wire    grp_viterbi_Pipeline_L_init_fu_437_ap_idle;
wire    grp_viterbi_Pipeline_L_init_fu_437_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_init_fu_437_llike_address0;
wire    grp_viterbi_Pipeline_L_init_fu_437_llike_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_437_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_437_llike_d0;
wire   [12:0] grp_viterbi_Pipeline_L_init_fu_437_llike_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_437_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_init_fu_437_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_437_llike_1_d0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_437_init_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_437_init_0_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_437_init_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_437_init_1_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_437_init_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_437_init_2_ce0;
wire   [3:0] grp_viterbi_Pipeline_L_init_fu_437_init_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_437_init_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_437_emission_0_address0;
wire    grp_viterbi_Pipeline_L_init_fu_437_emission_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_437_emission_1_address0;
wire    grp_viterbi_Pipeline_L_init_fu_437_emission_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_437_emission_2_address0;
wire    grp_viterbi_Pipeline_L_init_fu_437_emission_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_init_fu_437_emission_3_address0;
wire    grp_viterbi_Pipeline_L_init_fu_437_emission_3_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_437_grp_fu_546_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_init_fu_437_grp_fu_546_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_init_fu_437_grp_fu_546_p_opcode;
wire    grp_viterbi_Pipeline_L_init_fu_437_grp_fu_546_p_ce;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_ap_start;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_ap_done;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_ap_idle;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_461_llike_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_llike_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_llike_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_461_llike_d0;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_461_llike_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_llike_ce1;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_461_llike_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_llike_1_ce0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_llike_1_we0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_461_llike_1_d0;
wire   [12:0] grp_viterbi_Pipeline_L_curr_state_fu_461_llike_1_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_llike_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_461_transition_0_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_transition_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_461_transition_0_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_transition_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_461_transition_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_transition_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_461_transition_1_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_transition_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_461_transition_2_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_transition_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_461_transition_2_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_transition_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_461_transition_3_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_transition_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_461_transition_3_address1;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_transition_3_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_461_emission_0_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_emission_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_461_emission_1_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_emission_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_461_emission_2_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_emission_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_curr_state_fu_461_emission_3_address0;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_emission_3_ce0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_546_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_546_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_546_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_546_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_1466_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_1466_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_1466_p_opcode;
wire    grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_1466_p_ce;
wire    grp_viterbi_Pipeline_L_end_fu_518_ap_start;
wire    grp_viterbi_Pipeline_L_end_fu_518_ap_done;
wire    grp_viterbi_Pipeline_L_end_fu_518_ap_idle;
wire    grp_viterbi_Pipeline_L_end_fu_518_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_518_llike_1_address0;
wire    grp_viterbi_Pipeline_L_end_fu_518_llike_1_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_518_llike_1_address1;
wire    grp_viterbi_Pipeline_L_end_fu_518_llike_1_ce1;
wire   [12:0] grp_viterbi_Pipeline_L_end_fu_518_llike_address0;
wire    grp_viterbi_Pipeline_L_end_fu_518_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_end_fu_518_min_s_4_out;
wire    grp_viterbi_Pipeline_L_end_fu_518_min_s_4_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_518_grp_fu_1466_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_end_fu_518_grp_fu_1466_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_end_fu_518_grp_fu_1466_p_opcode;
wire    grp_viterbi_Pipeline_L_end_fu_518_grp_fu_1466_p_ce;
wire    grp_viterbi_Pipeline_L_state_fu_526_ap_start;
wire    grp_viterbi_Pipeline_L_state_fu_526_ap_done;
wire    grp_viterbi_Pipeline_L_state_fu_526_ap_idle;
wire    grp_viterbi_Pipeline_L_state_fu_526_ap_ready;
wire   [12:0] grp_viterbi_Pipeline_L_state_fu_526_llike_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_526_llike_1_ce0;
wire   [12:0] grp_viterbi_Pipeline_L_state_fu_526_llike_1_address1;
wire    grp_viterbi_Pipeline_L_state_fu_526_llike_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_526_transition_0_address0;
wire    grp_viterbi_Pipeline_L_state_fu_526_transition_0_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_526_transition_0_address1;
wire    grp_viterbi_Pipeline_L_state_fu_526_transition_0_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_526_transition_1_address0;
wire    grp_viterbi_Pipeline_L_state_fu_526_transition_1_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_526_transition_1_address1;
wire    grp_viterbi_Pipeline_L_state_fu_526_transition_1_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_526_transition_2_address0;
wire    grp_viterbi_Pipeline_L_state_fu_526_transition_2_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_526_transition_2_address1;
wire    grp_viterbi_Pipeline_L_state_fu_526_transition_2_ce1;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_526_transition_3_address0;
wire    grp_viterbi_Pipeline_L_state_fu_526_transition_3_ce0;
wire   [9:0] grp_viterbi_Pipeline_L_state_fu_526_transition_3_address1;
wire    grp_viterbi_Pipeline_L_state_fu_526_transition_3_ce1;
wire   [12:0] grp_viterbi_Pipeline_L_state_fu_526_llike_address0;
wire    grp_viterbi_Pipeline_L_state_fu_526_llike_ce0;
wire   [7:0] grp_viterbi_Pipeline_L_state_fu_526_min_s_10_out;
wire    grp_viterbi_Pipeline_L_state_fu_526_min_s_10_out_ap_vld;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_526_grp_fu_546_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_526_grp_fu_546_p_din1;
wire   [1:0] grp_viterbi_Pipeline_L_state_fu_526_grp_fu_546_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_526_grp_fu_546_p_ce;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_526_grp_fu_1466_p_din0;
wire   [63:0] grp_viterbi_Pipeline_L_state_fu_526_grp_fu_1466_p_din1;
wire   [4:0] grp_viterbi_Pipeline_L_state_fu_526_grp_fu_1466_p_opcode;
wire    grp_viterbi_Pipeline_L_state_fu_526_grp_fu_1466_p_ce;
reg    grp_viterbi_Pipeline_L_init_fu_437_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_viterbi_Pipeline_L_curr_state_fu_461_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    grp_viterbi_Pipeline_L_end_fu_518_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
reg   [7:0] min_s_4_loc_fu_196;
reg    grp_viterbi_Pipeline_L_state_fu_526_ap_start_reg;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state25;
reg   [7:0] min_s_10_loc_fu_192;
wire   [63:0] zext_ln6_fu_594_p1;
wire   [0:0] icmp_ln18_fu_578_p2;
wire    ap_CS_fsm_state12;
wire   [63:0] zext_ln52_fu_955_p1;
wire   [0:0] tmp_fu_927_p3;
wire   [63:0] zext_ln52_2_fu_970_p1;
wire   [63:0] zext_ln52_1_fu_1016_p1;
wire   [63:0] zext_ln6_1_fu_1072_p1;
wire    ap_CS_fsm_state26;
reg   [7:0] t_fu_188;
wire   [7:0] add_ln18_fu_602_p2;
reg   [8:0] t_1_fu_208;
wire   [8:0] add_ln50_fu_1087_p2;
reg    obs_0_ce0_local;
reg   [5:0] obs_0_address0_local;
reg    obs_1_ce0_local;
reg    obs_2_ce0_local;
reg    obs_3_ce0_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg    path_3_we0_local;
reg   [7:0] path_3_d0_local;
reg    path_3_ce0_local;
reg   [5:0] path_3_address0_local;
reg    path_0_ce0_local;
reg   [5:0] path_0_address0_local;
reg    path_0_we0_local;
reg    path_1_ce0_local;
reg   [5:0] path_1_address0_local;
reg    path_1_we0_local;
reg    path_2_ce0_local;
reg   [5:0] path_2_address0_local;
reg    path_2_we0_local;
reg    transition_0_ce0_local;
reg    transition_1_ce0_local;
reg    transition_2_ce0_local;
reg    transition_3_ce0_local;
reg   [63:0] grp_fu_546_p0;
reg   [63:0] grp_fu_546_p1;
wire    ap_CS_fsm_state16;
wire   [5:0] lshr_ln6_fu_584_p4;
wire   [7:0] tmp_2_fu_626_p9;
wire   [1:0] tmp_2_fu_626_p10;
wire   [7:0] tmp_2_fu_626_p11;
wire   [7:0] add_ln52_fu_939_p2;
wire   [5:0] lshr_ln1_fu_945_p4;
wire   [7:0] tmp_67_fu_978_p9;
wire   [1:0] tmp_67_fu_978_p10;
wire   [7:0] tmp_67_fu_978_p11;
wire   [63:0] tmp_68_fu_1040_p2;
wire   [63:0] tmp_68_fu_1040_p4;
wire   [63:0] tmp_68_fu_1040_p6;
wire   [63:0] tmp_68_fu_1040_p8;
wire   [63:0] tmp_68_fu_1040_p9;
wire   [5:0] lshr_ln6_1_fu_1063_p4;
reg    grp_fu_546_ce;
wire   [0:0] grp_fu_1466_p2;
reg   [63:0] grp_fu_1466_p0;
reg   [63:0] grp_fu_1466_p1;
reg    grp_fu_1466_ce;
reg   [4:0] grp_fu_1466_opcode;
reg   [25:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
reg    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire   [1:0] tmp_2_fu_626_p1;
wire   [1:0] tmp_2_fu_626_p3;
wire  signed [1:0] tmp_2_fu_626_p5;
wire  signed [1:0] tmp_2_fu_626_p7;
wire  signed [1:0] tmp_67_fu_978_p1;
wire   [1:0] tmp_67_fu_978_p3;
wire   [1:0] tmp_67_fu_978_p5;
wire  signed [1:0] tmp_67_fu_978_p7;
wire   [1:0] tmp_68_fu_1040_p1;
wire   [1:0] tmp_68_fu_1040_p3;
wire  signed [1:0] tmp_68_fu_1040_p5;
wire  signed [1:0] tmp_68_fu_1040_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 26'd1;
#0 grp_viterbi_Pipeline_L_init_fu_437_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_curr_state_fu_461_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_end_fu_518_ap_start_reg = 1'b0;
#0 grp_viterbi_Pipeline_L_state_fu_526_ap_start_reg = 1'b0;
#0 t_fu_188 = 8'd0;
#0 t_1_fu_208 = 9'd0;
end
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 4480 ),.AddressWidth( 13 ))
llike_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_address0),.ce0(llike_ce0),.we0(llike_we0),.d0(llike_d0),.q0(llike_q0),.address1(grp_viterbi_Pipeline_L_curr_state_fu_461_llike_address1),.ce1(llike_ce1),.q1(llike_q1));
viterbi_llike_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 4480 ),.AddressWidth( 13 ))
llike_1_U(.clk(ap_clk),.reset(ap_rst),.address0(llike_1_address0),.ce0(llike_1_ce0),.we0(llike_1_we0),.d0(llike_1_d0),.q0(llike_1_q0),.address1(llike_1_address1),.ce1(llike_1_ce1),.q1(llike_1_q1));
viterbi_viterbi_Pipeline_L_init grp_viterbi_Pipeline_L_init_fu_437(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_init_fu_437_ap_start),.ap_done(grp_viterbi_Pipeline_L_init_fu_437_ap_done),.ap_idle(grp_viterbi_Pipeline_L_init_fu_437_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_init_fu_437_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_init_fu_437_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_init_fu_437_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_init_fu_437_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_init_fu_437_llike_d0),.llike_1_address0(grp_viterbi_Pipeline_L_init_fu_437_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_init_fu_437_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_init_fu_437_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_init_fu_437_llike_1_d0),.init_0_address0(grp_viterbi_Pipeline_L_init_fu_437_init_0_address0),.init_0_ce0(grp_viterbi_Pipeline_L_init_fu_437_init_0_ce0),.init_0_q0(init_0_q0),.init_1_address0(grp_viterbi_Pipeline_L_init_fu_437_init_1_address0),.init_1_ce0(grp_viterbi_Pipeline_L_init_fu_437_init_1_ce0),.init_1_q0(init_1_q0),.init_2_address0(grp_viterbi_Pipeline_L_init_fu_437_init_2_address0),.init_2_ce0(grp_viterbi_Pipeline_L_init_fu_437_init_2_ce0),.init_2_q0(init_2_q0),.init_3_address0(grp_viterbi_Pipeline_L_init_fu_437_init_3_address0),.init_3_ce0(grp_viterbi_Pipeline_L_init_fu_437_init_3_ce0),.init_3_q0(init_3_q0),.conv3_udiv_cast(conv3_udiv_reg_1126),.emission_0_address0(grp_viterbi_Pipeline_L_init_fu_437_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_init_fu_437_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_init_fu_437_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_init_fu_437_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_2_address0(grp_viterbi_Pipeline_L_init_fu_437_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_init_fu_437_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_3_address0(grp_viterbi_Pipeline_L_init_fu_437_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_init_fu_437_emission_3_ce0),.emission_3_q0(emission_3_q0),.empty(empty_reg_1121),.grp_fu_546_p_din0(grp_viterbi_Pipeline_L_init_fu_437_grp_fu_546_p_din0),.grp_fu_546_p_din1(grp_viterbi_Pipeline_L_init_fu_437_grp_fu_546_p_din1),.grp_fu_546_p_opcode(grp_viterbi_Pipeline_L_init_fu_437_grp_fu_546_p_opcode),.grp_fu_546_p_dout0(grp_fu_546_p2),.grp_fu_546_p_ce(grp_viterbi_Pipeline_L_init_fu_437_grp_fu_546_p_ce));
viterbi_viterbi_Pipeline_L_curr_state grp_viterbi_Pipeline_L_curr_state_fu_461(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_curr_state_fu_461_ap_start),.ap_done(grp_viterbi_Pipeline_L_curr_state_fu_461_ap_done),.ap_idle(grp_viterbi_Pipeline_L_curr_state_fu_461_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_curr_state_fu_461_ap_ready),.llike_address0(grp_viterbi_Pipeline_L_curr_state_fu_461_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_curr_state_fu_461_llike_ce0),.llike_we0(grp_viterbi_Pipeline_L_curr_state_fu_461_llike_we0),.llike_d0(grp_viterbi_Pipeline_L_curr_state_fu_461_llike_d0),.llike_q0(llike_q0),.llike_address1(grp_viterbi_Pipeline_L_curr_state_fu_461_llike_address1),.llike_ce1(grp_viterbi_Pipeline_L_curr_state_fu_461_llike_ce1),.llike_q1(llike_q1),.empty_8(tmp_287_reg_1219),.llike_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_461_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_461_llike_1_ce0),.llike_1_we0(grp_viterbi_Pipeline_L_curr_state_fu_461_llike_1_we0),.llike_1_d0(grp_viterbi_Pipeline_L_curr_state_fu_461_llike_1_d0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_curr_state_fu_461_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_curr_state_fu_461_llike_1_ce1),.llike_1_q1(llike_1_q1),.empty_9(tmp_288_reg_1224),.empty_10(tmp_s_reg_1229),.empty_11(tmp_289_reg_1234),.empty_12(tmp_290_reg_1239),.empty_13(tmp_291_reg_1244),.empty_14(tmp_292_reg_1249),.empty_15(tmp_293_reg_1254),.empty_16(tmp_294_reg_1259),.empty_17(tmp_295_reg_1264),.empty_18(tmp_296_reg_1269),.empty_19(tmp_297_reg_1274),.empty_20(tmp_298_reg_1279),.empty_21(tmp_299_reg_1284),.empty_22(tmp_300_reg_1289),.empty_23(tmp_301_reg_1294),.empty_24(tmp_302_reg_1299),.empty_25(tmp_303_reg_1304),.empty_26(tmp_304_reg_1309),.empty_27(tmp_305_reg_1314),.empty_28(tmp_306_reg_1319),.empty_29(tmp_307_reg_1324),.empty_30(tmp_308_reg_1329),.empty_31(tmp_309_reg_1334),.empty_32(tmp_310_reg_1339),.empty_33(tmp_311_reg_1344),.empty_34(tmp_312_reg_1349),.empty_35(tmp_313_reg_1354),.empty_36(tmp_314_reg_1359),.empty_37(tmp_315_reg_1364),.empty_38(tmp_316_reg_1369),.empty_39(tmp_317_reg_1374),.t(t_2_reg_1136),.transition_0_address0(grp_viterbi_Pipeline_L_curr_state_fu_461_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_curr_state_fu_461_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_curr_state_fu_461_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_curr_state_fu_461_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_461_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_461_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_curr_state_fu_461_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_curr_state_fu_461_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_curr_state_fu_461_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_curr_state_fu_461_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_curr_state_fu_461_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_curr_state_fu_461_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_curr_state_fu_461_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_curr_state_fu_461_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_curr_state_fu_461_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_curr_state_fu_461_transition_3_ce1),.transition_3_q1(transition_3_q1),.conv32_udiv_cast(conv32_udiv_reg_1214),.emission_0_address0(grp_viterbi_Pipeline_L_curr_state_fu_461_emission_0_address0),.emission_0_ce0(grp_viterbi_Pipeline_L_curr_state_fu_461_emission_0_ce0),.emission_0_q0(emission_0_q0),.emission_1_address0(grp_viterbi_Pipeline_L_curr_state_fu_461_emission_1_address0),.emission_1_ce0(grp_viterbi_Pipeline_L_curr_state_fu_461_emission_1_ce0),.emission_1_q0(emission_1_q0),.emission_2_address0(grp_viterbi_Pipeline_L_curr_state_fu_461_emission_2_address0),.emission_2_ce0(grp_viterbi_Pipeline_L_curr_state_fu_461_emission_2_ce0),.emission_2_q0(emission_2_q0),.emission_3_address0(grp_viterbi_Pipeline_L_curr_state_fu_461_emission_3_address0),.emission_3_ce0(grp_viterbi_Pipeline_L_curr_state_fu_461_emission_3_ce0),.emission_3_q0(emission_3_q0),.empty(empty_54_reg_1209),.grp_fu_546_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_546_p_din0),.grp_fu_546_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_546_p_din1),.grp_fu_546_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_546_p_opcode),.grp_fu_546_p_dout0(grp_fu_546_p2),.grp_fu_546_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_546_p_ce),.grp_fu_1466_p_din0(grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_1466_p_din0),.grp_fu_1466_p_din1(grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_1466_p_din1),.grp_fu_1466_p_opcode(grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_1466_p_opcode),.grp_fu_1466_p_dout0(grp_fu_1466_p2),.grp_fu_1466_p_ce(grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_1466_p_ce));
viterbi_viterbi_Pipeline_L_end grp_viterbi_Pipeline_L_end_fu_518(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_end_fu_518_ap_start),.ap_done(grp_viterbi_Pipeline_L_end_fu_518_ap_done),.ap_idle(grp_viterbi_Pipeline_L_end_fu_518_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_end_fu_518_ap_ready),.min_p(reg_550),.llike_1_address0(grp_viterbi_Pipeline_L_end_fu_518_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_end_fu_518_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_end_fu_518_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_end_fu_518_llike_1_ce1),.llike_1_q1(llike_1_q1),.llike_address0(grp_viterbi_Pipeline_L_end_fu_518_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_end_fu_518_llike_ce0),.llike_q0(llike_q0),.min_s_4_out(grp_viterbi_Pipeline_L_end_fu_518_min_s_4_out),.min_s_4_out_ap_vld(grp_viterbi_Pipeline_L_end_fu_518_min_s_4_out_ap_vld),.grp_fu_1466_p_din0(grp_viterbi_Pipeline_L_end_fu_518_grp_fu_1466_p_din0),.grp_fu_1466_p_din1(grp_viterbi_Pipeline_L_end_fu_518_grp_fu_1466_p_din1),.grp_fu_1466_p_opcode(grp_viterbi_Pipeline_L_end_fu_518_grp_fu_1466_p_opcode),.grp_fu_1466_p_dout0(grp_fu_1466_p2),.grp_fu_1466_p_ce(grp_viterbi_Pipeline_L_end_fu_518_grp_fu_1466_p_ce));
viterbi_viterbi_Pipeline_L_state grp_viterbi_Pipeline_L_state_fu_526(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_viterbi_Pipeline_L_state_fu_526_ap_start),.ap_done(grp_viterbi_Pipeline_L_state_fu_526_ap_done),.ap_idle(grp_viterbi_Pipeline_L_state_fu_526_ap_idle),.ap_ready(grp_viterbi_Pipeline_L_state_fu_526_ap_ready),.min_p_137(min_p_204_reg_1461),.t_1(trunc_ln50_reg_1385),.llike_1_address0(grp_viterbi_Pipeline_L_state_fu_526_llike_1_address0),.llike_1_ce0(grp_viterbi_Pipeline_L_state_fu_526_llike_1_ce0),.llike_1_q0(llike_1_q0),.llike_1_address1(grp_viterbi_Pipeline_L_state_fu_526_llike_1_address1),.llike_1_ce1(grp_viterbi_Pipeline_L_state_fu_526_llike_1_ce1),.llike_1_q1(llike_1_q1),.zext_ln52_2(lshr_ln52_1_reg_1431),.transition_0_address0(grp_viterbi_Pipeline_L_state_fu_526_transition_0_address0),.transition_0_ce0(grp_viterbi_Pipeline_L_state_fu_526_transition_0_ce0),.transition_0_q0(transition_0_q0),.transition_0_address1(grp_viterbi_Pipeline_L_state_fu_526_transition_0_address1),.transition_0_ce1(grp_viterbi_Pipeline_L_state_fu_526_transition_0_ce1),.transition_0_q1(transition_0_q1),.transition_1_address0(grp_viterbi_Pipeline_L_state_fu_526_transition_1_address0),.transition_1_ce0(grp_viterbi_Pipeline_L_state_fu_526_transition_1_ce0),.transition_1_q0(transition_1_q0),.transition_1_address1(grp_viterbi_Pipeline_L_state_fu_526_transition_1_address1),.transition_1_ce1(grp_viterbi_Pipeline_L_state_fu_526_transition_1_ce1),.transition_1_q1(transition_1_q1),.transition_2_address0(grp_viterbi_Pipeline_L_state_fu_526_transition_2_address0),.transition_2_ce0(grp_viterbi_Pipeline_L_state_fu_526_transition_2_ce0),.transition_2_q0(transition_2_q0),.transition_2_address1(grp_viterbi_Pipeline_L_state_fu_526_transition_2_address1),.transition_2_ce1(grp_viterbi_Pipeline_L_state_fu_526_transition_2_ce1),.transition_2_q1(transition_2_q1),.transition_3_address0(grp_viterbi_Pipeline_L_state_fu_526_transition_3_address0),.transition_3_ce0(grp_viterbi_Pipeline_L_state_fu_526_transition_3_ce0),.transition_3_q0(transition_3_q0),.transition_3_address1(grp_viterbi_Pipeline_L_state_fu_526_transition_3_address1),.transition_3_ce1(grp_viterbi_Pipeline_L_state_fu_526_transition_3_ce1),.transition_3_q1(transition_3_q1),.empty(trunc_ln52_reg_1425),.llike_address0(grp_viterbi_Pipeline_L_state_fu_526_llike_address0),.llike_ce0(grp_viterbi_Pipeline_L_state_fu_526_llike_ce0),.llike_q0(llike_q0),.zext_ln52_3(tmp_318_reg_1411),.min_s_10_out(grp_viterbi_Pipeline_L_state_fu_526_min_s_10_out),.min_s_10_out_ap_vld(grp_viterbi_Pipeline_L_state_fu_526_min_s_10_out_ap_vld),.grp_fu_546_p_din0(grp_viterbi_Pipeline_L_state_fu_526_grp_fu_546_p_din0),.grp_fu_546_p_din1(grp_viterbi_Pipeline_L_state_fu_526_grp_fu_546_p_din1),.grp_fu_546_p_opcode(grp_viterbi_Pipeline_L_state_fu_526_grp_fu_546_p_opcode),.grp_fu_546_p_dout0(grp_fu_546_p2),.grp_fu_546_p_ce(grp_viterbi_Pipeline_L_state_fu_526_grp_fu_546_p_ce),.grp_fu_1466_p_din0(grp_viterbi_Pipeline_L_state_fu_526_grp_fu_1466_p_din0),.grp_fu_1466_p_din1(grp_viterbi_Pipeline_L_state_fu_526_grp_fu_1466_p_din1),.grp_fu_1466_p_opcode(grp_viterbi_Pipeline_L_state_fu_526_grp_fu_1466_p_opcode),.grp_fu_1466_p_dout0(grp_fu_1466_p2),.grp_fu_1466_p_ce(grp_viterbi_Pipeline_L_state_fu_526_grp_fu_1466_p_ce));
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U157(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_546_p0),.din1(grp_fu_546_p1),.ce(grp_fu_546_ce),.dout(grp_fu_546_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U158(.din0(obs_0_q0),.din1(obs_1_q0),.din2(obs_2_q0),.din3(obs_3_q0),.def(tmp_2_fu_626_p9),.sel(tmp_2_fu_626_p10),.dout(tmp_2_fu_626_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U159(.din0(path_0_q0),.din1(path_1_q0),.din2(path_2_q0),.din3(path_3_q0),.def(tmp_67_fu_978_p9),.sel(tmp_67_fu_978_p10),.dout(tmp_67_fu_978_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U160(.din0(tmp_68_fu_1040_p2),.din1(tmp_68_fu_1040_p4),.din2(tmp_68_fu_1040_p6),.din3(tmp_68_fu_1040_p8),.def(tmp_68_fu_1040_p9),.sel(trunc_ln52_reg_1425),.dout(tmp_68_fu_1040_p11));
viterbi_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U161(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1466_p0),.din1(grp_fu_1466_p1),.ce(grp_fu_1466_ce),.opcode(grp_fu_1466_opcode),.dout(grp_fu_1466_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_curr_state_fu_461_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_461_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_curr_state_fu_461_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_curr_state_fu_461_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_end_fu_518_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_viterbi_Pipeline_L_end_fu_518_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_end_fu_518_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_end_fu_518_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_init_fu_437_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_viterbi_Pipeline_L_init_fu_437_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_init_fu_437_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_init_fu_437_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_viterbi_Pipeline_L_state_fu_526_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state24)) begin
            grp_viterbi_Pipeline_L_state_fu_526_ap_start_reg <= 1'b1;
        end else if ((grp_viterbi_Pipeline_L_state_fu_526_ap_ready == 1'b1)) begin
            grp_viterbi_Pipeline_L_state_fu_526_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_578_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        t_1_fu_208 <= 9'd138;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        t_1_fu_208 <= add_ln50_fu_1087_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_fu_188 <= 8'd1;
    end else if (((icmp_ln18_fu_578_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        t_fu_188 <= add_ln18_fu_602_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        conv32_udiv_reg_1214 <= {{tmp_2_fu_626_p11[7:2]}};
        empty_53_reg_1173 <= empty_53_fu_621_p2;
        empty_54_reg_1209 <= empty_54_fu_650_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        conv3_udiv_reg_1126 <= {{obs_0_q0[7:2]}};
        empty_reg_1121 <= empty_fu_561_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        lshr_ln52_1_reg_1431 <= {{tmp_67_fu_978_p11[7:2]}};
        tmp_318_reg_1411[12 : 5] <= tmp_318_fu_963_p3[12 : 5];
        trunc_ln50_1_reg_1421 <= trunc_ln50_1_fu_975_p1;
        trunc_ln52_reg_1425 <= trunc_ln52_fu_1002_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        min_p_204_reg_1461 <= grp_fu_546_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_state_fu_526_min_s_10_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state25))) begin
        min_s_10_loc_fu_192 <= grp_viterbi_Pipeline_L_state_fu_526_min_s_10_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_viterbi_Pipeline_L_end_fu_518_min_s_4_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        min_s_4_loc_fu_196 <= grp_viterbi_Pipeline_L_end_fu_518_min_s_4_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_550 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        t_2_reg_1136 <= t_fu_188;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_287_reg_1219[12 : 5] <= tmp_287_fu_664_p3[12 : 5];
        tmp_288_reg_1224[12 : 5] <= tmp_288_fu_672_p3[12 : 5];
        tmp_289_reg_1234[12 : 5] <= tmp_289_fu_688_p3[12 : 5];
        tmp_290_reg_1239[12 : 5] <= tmp_290_fu_696_p3[12 : 5];
        tmp_291_reg_1244[12 : 5] <= tmp_291_fu_704_p3[12 : 5];
        tmp_292_reg_1249[12 : 5] <= tmp_292_fu_712_p3[12 : 5];
        tmp_293_reg_1254[12 : 5] <= tmp_293_fu_720_p3[12 : 5];
        tmp_294_reg_1259[12 : 5] <= tmp_294_fu_728_p3[12 : 5];
        tmp_295_reg_1264[12 : 5] <= tmp_295_fu_736_p3[12 : 5];
        tmp_296_reg_1269[12 : 5] <= tmp_296_fu_744_p3[12 : 5];
        tmp_297_reg_1274[12 : 5] <= tmp_297_fu_752_p3[12 : 5];
        tmp_298_reg_1279[12 : 5] <= tmp_298_fu_760_p3[12 : 5];
        tmp_299_reg_1284[12 : 5] <= tmp_299_fu_768_p3[12 : 5];
        tmp_300_reg_1289[12 : 5] <= tmp_300_fu_776_p3[12 : 5];
        tmp_301_reg_1294[12 : 5] <= tmp_301_fu_784_p3[12 : 5];
        tmp_302_reg_1299[12 : 5] <= tmp_302_fu_792_p3[12 : 5];
        tmp_303_reg_1304[12 : 5] <= tmp_303_fu_800_p3[12 : 5];
        tmp_304_reg_1309[12 : 5] <= tmp_304_fu_808_p3[12 : 5];
        tmp_305_reg_1314[12 : 5] <= tmp_305_fu_816_p3[12 : 5];
        tmp_306_reg_1319[12 : 5] <= tmp_306_fu_824_p3[12 : 5];
        tmp_307_reg_1324[12 : 5] <= tmp_307_fu_832_p3[12 : 5];
        tmp_308_reg_1329[12 : 5] <= tmp_308_fu_840_p3[12 : 5];
        tmp_309_reg_1334[12 : 5] <= tmp_309_fu_848_p3[12 : 5];
        tmp_310_reg_1339[12 : 5] <= tmp_310_fu_856_p3[12 : 5];
        tmp_311_reg_1344[12 : 5] <= tmp_311_fu_864_p3[12 : 5];
        tmp_312_reg_1349[12 : 5] <= tmp_312_fu_872_p3[12 : 5];
        tmp_313_reg_1354[12 : 5] <= tmp_313_fu_880_p3[12 : 5];
        tmp_314_reg_1359[12 : 5] <= tmp_314_fu_888_p3[12 : 5];
        tmp_315_reg_1364[12 : 5] <= tmp_315_fu_896_p3[12 : 5];
        tmp_316_reg_1369[12 : 5] <= tmp_316_fu_904_p3[12 : 5];
        tmp_317_reg_1374[12 : 5] <= tmp_317_fu_912_p3[12 : 5];
        tmp_s_reg_1229[12 : 5] <= tmp_s_fu_680_p3[12 : 5];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp_68_reg_1456 <= tmp_68_fu_1040_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        trunc_ln50_reg_1385 <= trunc_ln50_fu_935_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_end_fu_518_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_state_fu_526_ap_done == 1'b0)) begin
        ap_ST_fsm_state25_blk = 1'b1;
    end else begin
        ap_ST_fsm_state25_blk = 1'b0;
    end
end
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_init_fu_437_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_viterbi_Pipeline_L_curr_state_fu_461_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((tmp_fu_927_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
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
    if (((tmp_fu_927_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_curr_state_fu_461_emission_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_address0 = grp_viterbi_Pipeline_L_init_fu_437_emission_0_address0;
    end else begin
        emission_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_461_emission_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_0_ce0 = grp_viterbi_Pipeline_L_init_fu_437_emission_0_ce0;
    end else begin
        emission_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_461_emission_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_address0 = grp_viterbi_Pipeline_L_init_fu_437_emission_1_address0;
    end else begin
        emission_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_461_emission_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_1_ce0 = grp_viterbi_Pipeline_L_init_fu_437_emission_1_ce0;
    end else begin
        emission_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_curr_state_fu_461_emission_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_address0 = grp_viterbi_Pipeline_L_init_fu_437_emission_2_address0;
    end else begin
        emission_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_461_emission_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_2_ce0 = grp_viterbi_Pipeline_L_init_fu_437_emission_2_ce0;
    end else begin
        emission_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_curr_state_fu_461_emission_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_address0 = grp_viterbi_Pipeline_L_init_fu_437_emission_3_address0;
    end else begin
        emission_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_461_emission_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        emission_3_ce0 = grp_viterbi_Pipeline_L_init_fu_437_emission_3_ce0;
    end else begin
        emission_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1466_ce = grp_viterbi_Pipeline_L_state_fu_526_grp_fu_1466_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1466_ce = grp_viterbi_Pipeline_L_end_fu_518_grp_fu_1466_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1466_ce = grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_1466_p_ce;
    end else begin
        grp_fu_1466_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1466_opcode = grp_viterbi_Pipeline_L_state_fu_526_grp_fu_1466_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1466_opcode = grp_viterbi_Pipeline_L_end_fu_518_grp_fu_1466_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1466_opcode = grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_1466_p_opcode;
    end else begin
        grp_fu_1466_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1466_p0 = grp_viterbi_Pipeline_L_state_fu_526_grp_fu_1466_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1466_p0 = grp_viterbi_Pipeline_L_end_fu_518_grp_fu_1466_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1466_p0 = grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_1466_p_din0;
    end else begin
        grp_fu_1466_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1466_p1 = grp_viterbi_Pipeline_L_state_fu_526_grp_fu_1466_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_1466_p1 = grp_viterbi_Pipeline_L_end_fu_518_grp_fu_1466_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_1466_p1 = grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_1466_p_din1;
    end else begin
        grp_fu_1466_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_546_ce = grp_viterbi_Pipeline_L_state_fu_526_grp_fu_546_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_546_ce = grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_546_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_546_ce = grp_viterbi_Pipeline_L_init_fu_437_grp_fu_546_p_ce;
    end else begin
        grp_fu_546_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_546_p0 = grp_viterbi_Pipeline_L_state_fu_526_grp_fu_546_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_546_p0 = grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_546_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_546_p0 = grp_viterbi_Pipeline_L_init_fu_437_grp_fu_546_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_546_p0 = reg_550;
    end else begin
        grp_fu_546_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_546_p1 = grp_viterbi_Pipeline_L_state_fu_526_grp_fu_546_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_546_p1 = grp_viterbi_Pipeline_L_curr_state_fu_461_grp_fu_546_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_546_p1 = grp_viterbi_Pipeline_L_init_fu_437_grp_fu_546_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_546_p1 = tmp_68_reg_1456;
    end else begin
        grp_fu_546_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_state_fu_526_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_end_fu_518_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_461_llike_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_address0 = grp_viterbi_Pipeline_L_init_fu_437_llike_1_address0;
    end else begin
        llike_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_state_fu_526_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_end_fu_518_llike_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_address1 = grp_viterbi_Pipeline_L_curr_state_fu_461_llike_1_address1;
    end else begin
        llike_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_state_fu_526_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_end_fu_518_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_461_llike_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_ce0 = grp_viterbi_Pipeline_L_init_fu_437_llike_1_ce0;
    end else begin
        llike_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_state_fu_526_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_end_fu_518_llike_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_461_llike_1_ce1;
    end else begin
        llike_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_curr_state_fu_461_llike_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_d0 = grp_viterbi_Pipeline_L_init_fu_437_llike_1_d0;
    end else begin
        llike_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_curr_state_fu_461_llike_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_1_we0 = grp_viterbi_Pipeline_L_init_fu_437_llike_1_we0;
    end else begin
        llike_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_address0 = grp_viterbi_Pipeline_L_state_fu_526_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_address0 = grp_viterbi_Pipeline_L_end_fu_518_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_address0 = grp_viterbi_Pipeline_L_curr_state_fu_461_llike_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_address0 = grp_viterbi_Pipeline_L_init_fu_437_llike_address0;
    end else begin
        llike_address0 = llike_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        llike_address0_local = zext_ln52_2_fu_970_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        llike_address0_local = 64'd4448;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_state_fu_526_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_end_fu_518_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_461_llike_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_ce0 = grp_viterbi_Pipeline_L_init_fu_437_llike_ce0;
    end else begin
        llike_ce0 = llike_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_461_llike_ce1;
    end else begin
        llike_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_d0 = grp_viterbi_Pipeline_L_curr_state_fu_461_llike_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_d0 = grp_viterbi_Pipeline_L_init_fu_437_llike_d0;
    end else begin
        llike_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        llike_we0 = grp_viterbi_Pipeline_L_curr_state_fu_461_llike_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        llike_we0 = grp_viterbi_Pipeline_L_init_fu_437_llike_we0;
    end else begin
        llike_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_0_address0_local = zext_ln6_fu_594_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        obs_0_address0_local = 64'd0;
    end else begin
        obs_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        obs_0_ce0_local = 1'b1;
    end else begin
        obs_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_1_ce0_local = 1'b1;
    end else begin
        obs_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_2_ce0_local = 1'b1;
    end else begin
        obs_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        obs_3_ce0_local = 1'b1;
    end else begin
        obs_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_0_address0_local = zext_ln6_1_fu_1072_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_0_address0_local = zext_ln52_fu_955_p1;
    end else begin
        path_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state13))) begin
        path_0_ce0_local = 1'b1;
    end else begin
        path_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1421 == 2'd0) & (1'b1 == ap_CS_fsm_state26))) begin
        path_0_we0_local = 1'b1;
    end else begin
        path_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_1_address0_local = zext_ln6_1_fu_1072_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_1_address0_local = zext_ln52_fu_955_p1;
    end else begin
        path_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state13))) begin
        path_1_ce0_local = 1'b1;
    end else begin
        path_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1421 == 2'd1) & (1'b1 == ap_CS_fsm_state26))) begin
        path_1_we0_local = 1'b1;
    end else begin
        path_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_2_address0_local = zext_ln6_1_fu_1072_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_2_address0_local = zext_ln52_fu_955_p1;
    end else begin
        path_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state13))) begin
        path_2_ce0_local = 1'b1;
    end else begin
        path_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln50_1_reg_1421 == 2'd2) & (1'b1 == ap_CS_fsm_state26))) begin
        path_2_we0_local = 1'b1;
    end else begin
        path_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_3_address0_local = zext_ln6_1_fu_1072_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        path_3_address0_local = zext_ln52_fu_955_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_3_address0_local = 64'd34;
    end else begin
        path_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state13))) begin
        path_3_ce0_local = 1'b1;
    end else begin
        path_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        path_3_d0_local = min_s_10_loc_fu_192;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        path_3_d0_local = min_s_4_loc_fu_196;
    end else begin
        path_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | ((trunc_ln50_1_reg_1421 == 2'd3) & (1'b1 == ap_CS_fsm_state26)))) begin
        path_3_we0_local = 1'b1;
    end else begin
        path_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_state_fu_526_transition_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_address0 = grp_viterbi_Pipeline_L_curr_state_fu_461_transition_0_address0;
    end else begin
        transition_0_address0 = zext_ln52_1_fu_1016_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_state_fu_526_transition_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_address1 = grp_viterbi_Pipeline_L_curr_state_fu_461_transition_0_address1;
    end else begin
        transition_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_state_fu_526_transition_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_461_transition_0_ce0;
    end else begin
        transition_0_ce0 = transition_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_state_fu_526_transition_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_0_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_461_transition_0_ce1;
    end else begin
        transition_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_state_fu_526_transition_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_address0 = grp_viterbi_Pipeline_L_curr_state_fu_461_transition_1_address0;
    end else begin
        transition_1_address0 = zext_ln52_1_fu_1016_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_state_fu_526_transition_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_address1 = grp_viterbi_Pipeline_L_curr_state_fu_461_transition_1_address1;
    end else begin
        transition_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_state_fu_526_transition_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_461_transition_1_ce0;
    end else begin
        transition_1_ce0 = transition_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_state_fu_526_transition_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_1_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_461_transition_1_ce1;
    end else begin
        transition_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_state_fu_526_transition_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_address0 = grp_viterbi_Pipeline_L_curr_state_fu_461_transition_2_address0;
    end else begin
        transition_2_address0 = zext_ln52_1_fu_1016_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_state_fu_526_transition_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_address1 = grp_viterbi_Pipeline_L_curr_state_fu_461_transition_2_address1;
    end else begin
        transition_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_state_fu_526_transition_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_461_transition_2_ce0;
    end else begin
        transition_2_ce0 = transition_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_state_fu_526_transition_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_2_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_461_transition_2_ce1;
    end else begin
        transition_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_state_fu_526_transition_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_address0 = grp_viterbi_Pipeline_L_curr_state_fu_461_transition_3_address0;
    end else begin
        transition_3_address0 = zext_ln52_1_fu_1016_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_state_fu_526_transition_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_address1 = grp_viterbi_Pipeline_L_curr_state_fu_461_transition_3_address1;
    end else begin
        transition_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_state_fu_526_transition_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_ce0 = grp_viterbi_Pipeline_L_curr_state_fu_461_transition_3_ce0;
    end else begin
        transition_3_ce0 = transition_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_state_fu_526_transition_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        transition_3_ce1 = grp_viterbi_Pipeline_L_curr_state_fu_461_transition_3_ce1;
    end else begin
        transition_3_ce1 = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_viterbi_Pipeline_L_init_fu_437_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln18_fu_578_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_viterbi_Pipeline_L_curr_state_fu_461_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_viterbi_Pipeline_L_end_fu_518_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((tmp_fu_927_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            if (((grp_viterbi_Pipeline_L_state_fu_526_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state25))) begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln18_fu_602_p2 = (t_fu_188 + 8'd1);
assign add_ln50_fu_1087_p2 = ($signed(t_1_fu_208) + $signed(9'd511));
assign add_ln52_fu_939_p2 = (trunc_ln50_fu_935_p1 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign empty_53_fu_621_p2 = ($signed(t_2_reg_1136) + $signed(8'd255));
assign empty_54_fu_650_p1 = tmp_2_fu_626_p11[1:0];
assign empty_fu_561_p1 = obs_0_q0[1:0];
assign grp_viterbi_Pipeline_L_curr_state_fu_461_ap_start = grp_viterbi_Pipeline_L_curr_state_fu_461_ap_start_reg;
assign grp_viterbi_Pipeline_L_end_fu_518_ap_start = grp_viterbi_Pipeline_L_end_fu_518_ap_start_reg;
assign grp_viterbi_Pipeline_L_init_fu_437_ap_start = grp_viterbi_Pipeline_L_init_fu_437_ap_start_reg;
assign grp_viterbi_Pipeline_L_state_fu_526_ap_start = grp_viterbi_Pipeline_L_state_fu_526_ap_start_reg;
assign icmp_ln18_fu_578_p2 = ((t_fu_188 == 8'd140) ? 1'b1 : 1'b0);
assign init_0_address0 = grp_viterbi_Pipeline_L_init_fu_437_init_0_address0;
assign init_0_ce0 = grp_viterbi_Pipeline_L_init_fu_437_init_0_ce0;
assign init_1_address0 = grp_viterbi_Pipeline_L_init_fu_437_init_1_address0;
assign init_1_ce0 = grp_viterbi_Pipeline_L_init_fu_437_init_1_ce0;
assign init_2_address0 = grp_viterbi_Pipeline_L_init_fu_437_init_2_address0;
assign init_2_ce0 = grp_viterbi_Pipeline_L_init_fu_437_init_2_ce0;
assign init_3_address0 = grp_viterbi_Pipeline_L_init_fu_437_init_3_address0;
assign init_3_ce0 = grp_viterbi_Pipeline_L_init_fu_437_init_3_ce0;
assign lshr_ln1_fu_945_p4 = {{add_ln52_fu_939_p2[7:2]}};
assign lshr_ln52_1_fu_1006_p4 = {{tmp_67_fu_978_p11[7:2]}};
assign lshr_ln6_1_fu_1063_p4 = {{t_1_fu_208[7:2]}};
assign lshr_ln6_fu_584_p4 = {{t_fu_188[7:2]}};
assign obs_0_address0 = obs_0_address0_local;
assign obs_0_ce0 = obs_0_ce0_local;
assign obs_1_address0 = zext_ln6_fu_594_p1;
assign obs_1_ce0 = obs_1_ce0_local;
assign obs_2_address0 = zext_ln6_fu_594_p1;
assign obs_2_ce0 = obs_2_ce0_local;
assign obs_3_address0 = zext_ln6_fu_594_p1;
assign obs_3_ce0 = obs_3_ce0_local;
assign path_0_address0 = path_0_address0_local;
assign path_0_ce0 = path_0_ce0_local;
assign path_0_d0 = min_s_10_loc_fu_192;
assign path_0_we0 = path_0_we0_local;
assign path_1_address0 = path_1_address0_local;
assign path_1_ce0 = path_1_ce0_local;
assign path_1_d0 = min_s_10_loc_fu_192;
assign path_1_we0 = path_1_we0_local;
assign path_2_address0 = path_2_address0_local;
assign path_2_ce0 = path_2_ce0_local;
assign path_2_d0 = min_s_10_loc_fu_192;
assign path_2_we0 = path_2_we0_local;
assign path_3_address0 = path_3_address0_local;
assign path_3_ce0 = path_3_ce0_local;
assign path_3_d0 = path_3_d0_local;
assign path_3_we0 = path_3_we0_local;
assign tmp_287_fu_664_p3 = {{empty_53_reg_1173}, {5'd0}};
assign tmp_288_fu_672_p3 = {{empty_53_reg_1173}, {5'd1}};
assign tmp_289_fu_688_p3 = {{empty_53_reg_1173}, {5'd3}};
assign tmp_290_fu_696_p3 = {{empty_53_reg_1173}, {5'd4}};
assign tmp_291_fu_704_p3 = {{empty_53_reg_1173}, {5'd5}};
assign tmp_292_fu_712_p3 = {{empty_53_reg_1173}, {5'd6}};
assign tmp_293_fu_720_p3 = {{empty_53_reg_1173}, {5'd7}};
assign tmp_294_fu_728_p3 = {{empty_53_reg_1173}, {5'd8}};
assign tmp_295_fu_736_p3 = {{empty_53_reg_1173}, {5'd9}};
assign tmp_296_fu_744_p3 = {{empty_53_reg_1173}, {5'd10}};
assign tmp_297_fu_752_p3 = {{empty_53_reg_1173}, {5'd11}};
assign tmp_298_fu_760_p3 = {{empty_53_reg_1173}, {5'd12}};
assign tmp_299_fu_768_p3 = {{empty_53_reg_1173}, {5'd13}};
assign tmp_2_fu_626_p10 = t_2_reg_1136[1:0];
assign tmp_2_fu_626_p9 = 'bx;
assign tmp_300_fu_776_p3 = {{empty_53_reg_1173}, {5'd14}};
assign tmp_301_fu_784_p3 = {{empty_53_reg_1173}, {5'd15}};
assign tmp_302_fu_792_p3 = {{empty_53_reg_1173}, {5'd16}};
assign tmp_303_fu_800_p3 = {{empty_53_reg_1173}, {5'd17}};
assign tmp_304_fu_808_p3 = {{empty_53_reg_1173}, {5'd18}};
assign tmp_305_fu_816_p3 = {{empty_53_reg_1173}, {5'd19}};
assign tmp_306_fu_824_p3 = {{empty_53_reg_1173}, {5'd20}};
assign tmp_307_fu_832_p3 = {{empty_53_reg_1173}, {5'd21}};
assign tmp_308_fu_840_p3 = {{empty_53_reg_1173}, {5'd22}};
assign tmp_309_fu_848_p3 = {{empty_53_reg_1173}, {5'd23}};
assign tmp_310_fu_856_p3 = {{empty_53_reg_1173}, {5'd24}};
assign tmp_311_fu_864_p3 = {{empty_53_reg_1173}, {5'd25}};
assign tmp_312_fu_872_p3 = {{empty_53_reg_1173}, {5'd26}};
assign tmp_313_fu_880_p3 = {{empty_53_reg_1173}, {5'd27}};
assign tmp_314_fu_888_p3 = {{empty_53_reg_1173}, {5'd28}};
assign tmp_315_fu_896_p3 = {{empty_53_reg_1173}, {5'd29}};
assign tmp_316_fu_904_p3 = {{empty_53_reg_1173}, {5'd30}};
assign tmp_317_fu_912_p3 = {{empty_53_reg_1173}, {5'd31}};
assign tmp_318_fu_963_p3 = {{trunc_ln50_reg_1385}, {5'd0}};
assign tmp_67_fu_978_p10 = t_1_fu_208[1:0];
assign tmp_67_fu_978_p9 = 'bx;
assign tmp_68_fu_1040_p2 = transition_0_q0;
assign tmp_68_fu_1040_p4 = transition_1_q0;
assign tmp_68_fu_1040_p6 = transition_2_q0;
assign tmp_68_fu_1040_p8 = transition_3_q0;
assign tmp_68_fu_1040_p9 = 'bx;
assign tmp_fu_927_p3 = t_1_fu_208[32'd8];
assign tmp_s_fu_680_p3 = {{empty_53_reg_1173}, {5'd2}};
assign trunc_ln50_1_fu_975_p1 = t_1_fu_208[1:0];
assign trunc_ln50_fu_935_p1 = t_1_fu_208[7:0];
assign trunc_ln52_fu_1002_p1 = tmp_67_fu_978_p11[1:0];
assign zext_ln52_1_fu_1016_p1 = lshr_ln52_1_fu_1006_p4;
assign zext_ln52_2_fu_970_p1 = tmp_318_fu_963_p3;
assign zext_ln52_fu_955_p1 = lshr_ln1_fu_945_p4;
assign zext_ln6_1_fu_1072_p1 = lshr_ln6_1_fu_1063_p4;
assign zext_ln6_fu_594_p1 = lshr_ln6_fu_584_p4;
always @ (posedge ap_clk) begin
    tmp_287_reg_1219[4:0] <= 5'b00000;
    tmp_288_reg_1224[4:0] <= 5'b00001;
    tmp_s_reg_1229[4:0] <= 5'b00010;
    tmp_289_reg_1234[4:0] <= 5'b00011;
    tmp_290_reg_1239[4:0] <= 5'b00100;
    tmp_291_reg_1244[4:0] <= 5'b00101;
    tmp_292_reg_1249[4:0] <= 5'b00110;
    tmp_293_reg_1254[4:0] <= 5'b00111;
    tmp_294_reg_1259[4:0] <= 5'b01000;
    tmp_295_reg_1264[4:0] <= 5'b01001;
    tmp_296_reg_1269[4:0] <= 5'b01010;
    tmp_297_reg_1274[4:0] <= 5'b01011;
    tmp_298_reg_1279[4:0] <= 5'b01100;
    tmp_299_reg_1284[4:0] <= 5'b01101;
    tmp_300_reg_1289[4:0] <= 5'b01110;
    tmp_301_reg_1294[4:0] <= 5'b01111;
    tmp_302_reg_1299[4:0] <= 5'b10000;
    tmp_303_reg_1304[4:0] <= 5'b10001;
    tmp_304_reg_1309[4:0] <= 5'b10010;
    tmp_305_reg_1314[4:0] <= 5'b10011;
    tmp_306_reg_1319[4:0] <= 5'b10100;
    tmp_307_reg_1324[4:0] <= 5'b10101;
    tmp_308_reg_1329[4:0] <= 5'b10110;
    tmp_309_reg_1334[4:0] <= 5'b10111;
    tmp_310_reg_1339[4:0] <= 5'b11000;
    tmp_311_reg_1344[4:0] <= 5'b11001;
    tmp_312_reg_1349[4:0] <= 5'b11010;
    tmp_313_reg_1354[4:0] <= 5'b11011;
    tmp_314_reg_1359[4:0] <= 5'b11100;
    tmp_315_reg_1364[4:0] <= 5'b11101;
    tmp_316_reg_1369[4:0] <= 5'b11110;
    tmp_317_reg_1374[4:0] <= 5'b11111;
    tmp_318_reg_1411[4:0] <= 5'b00000;
end
endmodule 