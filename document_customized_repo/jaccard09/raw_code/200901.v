module SgdLR_sw_SgdLR_sw_Pipeline_label_49 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_q0,v2_0_address1,v2_0_ce1,v2_0_we1,v2_0_d1,v2_0_q1,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_q0,v2_1_address1,v2_1_ce1,v2_1_we1,v2_1_d1,v2_1_q1,v2_2_address0,v2_2_ce0,v2_2_we0,v2_2_d0,v2_2_q0,v2_2_address1,v2_2_ce1,v2_2_we1,v2_2_d1,v2_2_q1,v2_3_address0,v2_3_ce0,v2_3_we0,v2_3_d0,v2_3_q0,v2_3_address1,v2_3_ce1,v2_3_we1,v2_3_d1,v2_3_q1,v2_4_address0,v2_4_ce0,v2_4_we0,v2_4_d0,v2_4_q0,v2_4_address1,v2_4_ce1,v2_4_we1,v2_4_d1,v2_4_q1,v2_5_address0,v2_5_ce0,v2_5_we0,v2_5_d0,v2_5_q0,v2_5_address1,v2_5_ce1,v2_5_we1,v2_5_d1,v2_5_q1,v2_6_address0,v2_6_ce0,v2_6_we0,v2_6_d0,v2_6_q0,v2_6_address1,v2_6_ce1,v2_6_we1,v2_6_d1,v2_6_q1,v2_7_address0,v2_7_ce0,v2_7_we0,v2_7_d0,v2_7_q0,v2_7_address1,v2_7_ce1,v2_7_we1,v2_7_d1,v2_7_q1,grp_fu_441_p_din0,grp_fu_441_p_din1,grp_fu_441_p_opcode,grp_fu_441_p_dout0,grp_fu_441_p_ce,grp_fu_949_p_din0,grp_fu_949_p_din1,grp_fu_949_p_dout0,grp_fu_949_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [9:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
output  [6:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
input  [31:0] v2_0_q0;
output  [6:0] v2_0_address1;
output   v2_0_ce1;
output   v2_0_we1;
output  [31:0] v2_0_d1;
input  [31:0] v2_0_q1;
output  [6:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
input  [31:0] v2_1_q0;
output  [6:0] v2_1_address1;
output   v2_1_ce1;
output   v2_1_we1;
output  [31:0] v2_1_d1;
input  [31:0] v2_1_q1;
output  [6:0] v2_2_address0;
output   v2_2_ce0;
output   v2_2_we0;
output  [31:0] v2_2_d0;
input  [31:0] v2_2_q0;
output  [6:0] v2_2_address1;
output   v2_2_ce1;
output   v2_2_we1;
output  [31:0] v2_2_d1;
input  [31:0] v2_2_q1;
output  [6:0] v2_3_address0;
output   v2_3_ce0;
output   v2_3_we0;
output  [31:0] v2_3_d0;
input  [31:0] v2_3_q0;
output  [6:0] v2_3_address1;
output   v2_3_ce1;
output   v2_3_we1;
output  [31:0] v2_3_d1;
input  [31:0] v2_3_q1;
output  [6:0] v2_4_address0;
output   v2_4_ce0;
output   v2_4_we0;
output  [31:0] v2_4_d0;
input  [31:0] v2_4_q0;
output  [6:0] v2_4_address1;
output   v2_4_ce1;
output   v2_4_we1;
output  [31:0] v2_4_d1;
input  [31:0] v2_4_q1;
output  [6:0] v2_5_address0;
output   v2_5_ce0;
output   v2_5_we0;
output  [31:0] v2_5_d0;
input  [31:0] v2_5_q0;
output  [6:0] v2_5_address1;
output   v2_5_ce1;
output   v2_5_we1;
output  [31:0] v2_5_d1;
input  [31:0] v2_5_q1;
output  [6:0] v2_6_address0;
output   v2_6_ce0;
output   v2_6_we0;
output  [31:0] v2_6_d0;
input  [31:0] v2_6_q0;
output  [6:0] v2_6_address1;
output   v2_6_ce1;
output   v2_6_we1;
output  [31:0] v2_6_d1;
input  [31:0] v2_6_q1;
output  [6:0] v2_7_address0;
output   v2_7_ce0;
output   v2_7_we0;
output  [31:0] v2_7_d0;
input  [31:0] v2_7_q0;
output  [6:0] v2_7_address1;
output   v2_7_ce1;
output   v2_7_we1;
output  [31:0] v2_7_d1;
input  [31:0] v2_7_q1;
output  [31:0] grp_fu_441_p_din0;
output  [31:0] grp_fu_441_p_din1;
output  [0:0] grp_fu_441_p_opcode;
input  [31:0] grp_fu_441_p_dout0;
output   grp_fu_441_p_ce;
output  [31:0] grp_fu_949_p_din0;
output  [31:0] grp_fu_949_p_din1;
input  [31:0] grp_fu_949_p_dout0;
output   grp_fu_949_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_992;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [10:0] v25_1_reg_983;
wire    ap_block_pp0_stage0_11001;
reg   [2:0] trunc_ln55_s_reg_996;
reg   [2:0] trunc_ln55_s_reg_996_pp0_iter1_reg;
reg   [2:0] trunc_ln55_s_reg_996_pp0_iter2_reg;
reg   [2:0] trunc_ln55_s_reg_996_pp0_iter3_reg;
reg   [2:0] trunc_ln55_s_reg_996_pp0_iter4_reg;
reg   [31:0] v26_reg_1014;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] v26_1_reg_1019;
reg   [31:0] v26_2_reg_1034;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] v26_3_reg_1039;
reg   [6:0] v2_0_addr_reg_1044;
reg   [6:0] v2_0_addr_reg_1044_pp0_iter2_reg;
reg   [6:0] v2_0_addr_reg_1044_pp0_iter3_reg;
reg   [6:0] v2_1_addr_reg_1049;
reg   [6:0] v2_1_addr_reg_1049_pp0_iter2_reg;
reg   [6:0] v2_1_addr_reg_1049_pp0_iter3_reg;
reg   [6:0] v2_2_addr_reg_1054;
reg   [6:0] v2_2_addr_reg_1054_pp0_iter2_reg;
reg   [6:0] v2_2_addr_reg_1054_pp0_iter3_reg;
reg   [6:0] v2_3_addr_reg_1059;
reg   [6:0] v2_3_addr_reg_1059_pp0_iter2_reg;
reg   [6:0] v2_3_addr_reg_1059_pp0_iter3_reg;
reg   [6:0] v2_4_addr_reg_1064;
reg   [6:0] v2_4_addr_reg_1064_pp0_iter2_reg;
reg   [6:0] v2_4_addr_reg_1064_pp0_iter3_reg;
reg   [6:0] v2_5_addr_reg_1069;
reg   [6:0] v2_5_addr_reg_1069_pp0_iter2_reg;
reg   [6:0] v2_5_addr_reg_1069_pp0_iter3_reg;
reg   [6:0] v2_6_addr_reg_1074;
reg   [6:0] v2_6_addr_reg_1074_pp0_iter2_reg;
reg   [6:0] v2_6_addr_reg_1074_pp0_iter3_reg;
reg   [6:0] v2_7_addr_reg_1079;
reg   [6:0] v2_7_addr_reg_1079_pp0_iter2_reg;
reg   [6:0] v2_7_addr_reg_1079_pp0_iter3_reg;
reg   [6:0] v2_0_addr_1_reg_1084;
reg   [6:0] v2_0_addr_1_reg_1084_pp0_iter2_reg;
reg   [6:0] v2_0_addr_1_reg_1084_pp0_iter3_reg;
reg   [6:0] v2_1_addr_1_reg_1089;
reg   [6:0] v2_1_addr_1_reg_1089_pp0_iter2_reg;
reg   [6:0] v2_1_addr_1_reg_1089_pp0_iter3_reg;
reg   [6:0] v2_2_addr_1_reg_1094;
reg   [6:0] v2_2_addr_1_reg_1094_pp0_iter2_reg;
reg   [6:0] v2_2_addr_1_reg_1094_pp0_iter3_reg;
reg   [6:0] v2_3_addr_1_reg_1099;
reg   [6:0] v2_3_addr_1_reg_1099_pp0_iter2_reg;
reg   [6:0] v2_3_addr_1_reg_1099_pp0_iter3_reg;
reg   [6:0] v2_4_addr_1_reg_1104;
reg   [6:0] v2_4_addr_1_reg_1104_pp0_iter2_reg;
reg   [6:0] v2_4_addr_1_reg_1104_pp0_iter3_reg;
reg   [6:0] v2_5_addr_1_reg_1109;
reg   [6:0] v2_5_addr_1_reg_1109_pp0_iter2_reg;
reg   [6:0] v2_5_addr_1_reg_1109_pp0_iter3_reg;
reg   [6:0] v2_6_addr_1_reg_1114;
reg   [6:0] v2_6_addr_1_reg_1114_pp0_iter2_reg;
reg   [6:0] v2_6_addr_1_reg_1114_pp0_iter3_reg;
reg   [6:0] v2_7_addr_1_reg_1119;
reg   [6:0] v2_7_addr_1_reg_1119_pp0_iter2_reg;
reg   [6:0] v2_7_addr_1_reg_1119_pp0_iter3_reg;
reg   [4:0] tmp_4_reg_1124;
reg   [31:0] v27_reg_1130;
wire   [31:0] v28_fu_670_p19;
reg   [31:0] v28_reg_1135;
wire   [31:0] v28_1_fu_741_p19;
reg   [31:0] v28_1_reg_1140;
reg   [6:0] v2_0_addr_2_reg_1145;
reg   [6:0] v2_0_addr_2_reg_1145_pp0_iter2_reg;
reg   [6:0] v2_0_addr_2_reg_1145_pp0_iter3_reg;
reg   [6:0] v2_1_addr_2_reg_1150;
reg   [6:0] v2_1_addr_2_reg_1150_pp0_iter2_reg;
reg   [6:0] v2_1_addr_2_reg_1150_pp0_iter3_reg;
reg   [6:0] v2_2_addr_2_reg_1155;
reg   [6:0] v2_2_addr_2_reg_1155_pp0_iter2_reg;
reg   [6:0] v2_2_addr_2_reg_1155_pp0_iter3_reg;
reg   [6:0] v2_3_addr_2_reg_1160;
reg   [6:0] v2_3_addr_2_reg_1160_pp0_iter2_reg;
reg   [6:0] v2_3_addr_2_reg_1160_pp0_iter3_reg;
reg   [6:0] v2_4_addr_2_reg_1165;
reg   [6:0] v2_4_addr_2_reg_1165_pp0_iter2_reg;
reg   [6:0] v2_4_addr_2_reg_1165_pp0_iter3_reg;
reg   [6:0] v2_5_addr_2_reg_1170;
reg   [6:0] v2_5_addr_2_reg_1170_pp0_iter2_reg;
reg   [6:0] v2_5_addr_2_reg_1170_pp0_iter3_reg;
reg   [6:0] v2_6_addr_2_reg_1175;
reg   [6:0] v2_6_addr_2_reg_1175_pp0_iter2_reg;
reg   [6:0] v2_6_addr_2_reg_1175_pp0_iter3_reg;
reg   [6:0] v2_7_addr_2_reg_1180;
reg   [6:0] v2_7_addr_2_reg_1180_pp0_iter2_reg;
reg   [6:0] v2_7_addr_2_reg_1180_pp0_iter3_reg;
reg   [6:0] v2_0_addr_3_reg_1185;
reg   [6:0] v2_0_addr_3_reg_1185_pp0_iter2_reg;
reg   [6:0] v2_0_addr_3_reg_1185_pp0_iter3_reg;
reg   [6:0] v2_0_addr_3_reg_1185_pp0_iter4_reg;
reg   [6:0] v2_1_addr_3_reg_1190;
reg   [6:0] v2_1_addr_3_reg_1190_pp0_iter2_reg;
reg   [6:0] v2_1_addr_3_reg_1190_pp0_iter3_reg;
reg   [6:0] v2_1_addr_3_reg_1190_pp0_iter4_reg;
reg   [6:0] v2_2_addr_3_reg_1195;
reg   [6:0] v2_2_addr_3_reg_1195_pp0_iter2_reg;
reg   [6:0] v2_2_addr_3_reg_1195_pp0_iter3_reg;
reg   [6:0] v2_2_addr_3_reg_1195_pp0_iter4_reg;
reg   [6:0] v2_3_addr_3_reg_1200;
reg   [6:0] v2_3_addr_3_reg_1200_pp0_iter2_reg;
reg   [6:0] v2_3_addr_3_reg_1200_pp0_iter3_reg;
reg   [6:0] v2_3_addr_3_reg_1200_pp0_iter4_reg;
reg   [6:0] v2_4_addr_3_reg_1205;
reg   [6:0] v2_4_addr_3_reg_1205_pp0_iter2_reg;
reg   [6:0] v2_4_addr_3_reg_1205_pp0_iter3_reg;
reg   [6:0] v2_4_addr_3_reg_1205_pp0_iter4_reg;
reg   [6:0] v2_5_addr_3_reg_1210;
reg   [6:0] v2_5_addr_3_reg_1210_pp0_iter2_reg;
reg   [6:0] v2_5_addr_3_reg_1210_pp0_iter3_reg;
reg   [6:0] v2_5_addr_3_reg_1210_pp0_iter4_reg;
reg   [6:0] v2_6_addr_3_reg_1215;
reg   [6:0] v2_6_addr_3_reg_1215_pp0_iter2_reg;
reg   [6:0] v2_6_addr_3_reg_1215_pp0_iter3_reg;
reg   [6:0] v2_6_addr_3_reg_1215_pp0_iter4_reg;
reg   [6:0] v2_7_addr_3_reg_1220;
reg   [6:0] v2_7_addr_3_reg_1220_pp0_iter2_reg;
reg   [6:0] v2_7_addr_3_reg_1220_pp0_iter3_reg;
reg   [6:0] v2_7_addr_3_reg_1220_pp0_iter4_reg;
reg   [31:0] v27_1_reg_1225;
wire   [31:0] v28_2_fu_850_p19;
reg   [31:0] v28_2_reg_1230;
wire   [31:0] v28_3_fu_921_p19;
reg   [31:0] v28_3_reg_1235;
reg   [31:0] v27_2_reg_1240;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] v27_3_reg_1245;
wire   [31:0] bitcast_ln60_fu_960_p1;
reg   [31:0] bitcast_ln60_reg_1250;
wire   [31:0] bitcast_ln60_2_fu_964_p1;
reg   [31:0] bitcast_ln60_2_reg_1262;
wire   [31:0] bitcast_ln60_1_fu_968_p1;
reg   [31:0] bitcast_ln60_1_reg_1274;
wire   [31:0] bitcast_ln60_3_fu_972_p1;
reg   [31:0] bitcast_ln60_3_reg_1286;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_fu_502_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln56_fu_535_p1;
wire   [63:0] zext_ln56_2_fu_557_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln56_4_fu_570_p1;
wire   [63:0] zext_ln55_1_fu_588_p1;
wire   [63:0] zext_ln56_1_fu_617_p1;
wire   [63:0] zext_ln56_3_fu_787_p1;
wire   [63:0] zext_ln56_5_fu_806_p1;
reg   [10:0] v25_fu_104;
wire   [10:0] add_ln55_fu_575_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_1;
reg    v3_ce1_local;
reg   [9:0] v3_address1_local;
reg    v3_ce0_local;
reg   [9:0] v3_address0_local;
reg    v2_0_ce1_local;
reg   [6:0] v2_0_address1_local;
reg    v2_0_ce0_local;
reg   [6:0] v2_0_address0_local;
reg    v2_0_we1_local;
reg   [31:0] v2_0_d1_local;
wire    ap_block_pp0_stage2;
reg    v2_0_we0_local;
reg   [31:0] v2_0_d0_local;
wire    ap_block_pp0_stage3;
reg    v2_1_ce1_local;
reg   [6:0] v2_1_address1_local;
reg    v2_1_ce0_local;
reg   [6:0] v2_1_address0_local;
reg    v2_1_we1_local;
reg   [31:0] v2_1_d1_local;
reg    v2_1_we0_local;
reg   [31:0] v2_1_d0_local;
reg    v2_2_ce1_local;
reg   [6:0] v2_2_address1_local;
reg    v2_2_ce0_local;
reg   [6:0] v2_2_address0_local;
reg    v2_2_we1_local;
reg   [31:0] v2_2_d1_local;
reg    v2_2_we0_local;
reg   [31:0] v2_2_d0_local;
reg    v2_3_ce1_local;
reg   [6:0] v2_3_address1_local;
reg    v2_3_ce0_local;
reg   [6:0] v2_3_address0_local;
reg    v2_3_we1_local;
reg   [31:0] v2_3_d1_local;
reg    v2_3_we0_local;
reg   [31:0] v2_3_d0_local;
reg    v2_4_ce1_local;
reg   [6:0] v2_4_address1_local;
reg    v2_4_ce0_local;
reg   [6:0] v2_4_address0_local;
reg    v2_4_we1_local;
reg   [31:0] v2_4_d1_local;
reg    v2_4_we0_local;
reg   [31:0] v2_4_d0_local;
reg    v2_5_ce1_local;
reg   [6:0] v2_5_address1_local;
reg    v2_5_ce0_local;
reg   [6:0] v2_5_address0_local;
reg    v2_5_we1_local;
reg   [31:0] v2_5_d1_local;
reg    v2_5_we0_local;
reg   [31:0] v2_5_d0_local;
reg    v2_6_ce1_local;
reg   [6:0] v2_6_address1_local;
reg    v2_6_ce0_local;
reg   [6:0] v2_6_address0_local;
reg    v2_6_we1_local;
reg   [31:0] v2_6_d1_local;
reg    v2_6_we0_local;
reg   [31:0] v2_6_d0_local;
reg    v2_7_ce1_local;
reg   [6:0] v2_7_address1_local;
reg    v2_7_ce0_local;
reg   [6:0] v2_7_address0_local;
reg    v2_7_we1_local;
reg   [31:0] v2_7_d1_local;
reg    v2_7_we0_local;
reg   [31:0] v2_7_d0_local;
reg   [31:0] grp_fu_477_p0;
reg   [31:0] grp_fu_477_p1;
reg   [31:0] grp_fu_481_p0;
wire   [8:0] tmp_s_fu_517_p4;
wire   [9:0] or_ln55_6_fu_527_p3;
wire   [7:0] tmp_3_fu_540_p4;
wire   [9:0] or_ln55_9_fu_549_p3;
wire   [9:0] or_ln55_s_fu_562_p3;
wire   [6:0] trunc_ln55_fu_585_p1;
wire   [5:0] tmp_2_fu_600_p4;
wire   [6:0] or_ln56_6_fu_609_p3;
wire   [31:0] v28_fu_670_p2;
wire   [31:0] v28_fu_670_p4;
wire   [31:0] v28_fu_670_p6;
wire   [31:0] v28_fu_670_p8;
wire   [31:0] v28_fu_670_p10;
wire   [31:0] v28_fu_670_p12;
wire   [31:0] v28_fu_670_p14;
wire   [31:0] v28_fu_670_p16;
wire   [31:0] v28_fu_670_p17;
wire   [31:0] v28_1_fu_741_p2;
wire   [31:0] v28_1_fu_741_p4;
wire   [31:0] v28_1_fu_741_p6;
wire   [31:0] v28_1_fu_741_p8;
wire   [31:0] v28_1_fu_741_p10;
wire   [31:0] v28_1_fu_741_p12;
wire   [31:0] v28_1_fu_741_p14;
wire   [31:0] v28_1_fu_741_p16;
wire   [31:0] v28_1_fu_741_p17;
wire   [6:0] or_ln56_9_fu_780_p3;
wire   [6:0] or_ln56_s_fu_799_p3;
wire   [31:0] v28_2_fu_850_p2;
wire   [31:0] v28_2_fu_850_p4;
wire   [31:0] v28_2_fu_850_p6;
wire   [31:0] v28_2_fu_850_p8;
wire   [31:0] v28_2_fu_850_p10;
wire   [31:0] v28_2_fu_850_p12;
wire   [31:0] v28_2_fu_850_p14;
wire   [31:0] v28_2_fu_850_p16;
wire   [31:0] v28_2_fu_850_p17;
wire   [31:0] v28_3_fu_921_p2;
wire   [31:0] v28_3_fu_921_p4;
wire   [31:0] v28_3_fu_921_p6;
wire   [31:0] v28_3_fu_921_p8;
wire   [31:0] v28_3_fu_921_p10;
wire   [31:0] v28_3_fu_921_p12;
wire   [31:0] v28_3_fu_921_p14;
wire   [31:0] v28_3_fu_921_p16;
wire   [31:0] v28_3_fu_921_p17;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] v28_fu_670_p1;
wire   [2:0] v28_fu_670_p3;
wire   [2:0] v28_fu_670_p5;
wire   [2:0] v28_fu_670_p7;
wire  signed [2:0] v28_fu_670_p9;
wire  signed [2:0] v28_fu_670_p11;
wire  signed [2:0] v28_fu_670_p13;
wire  signed [2:0] v28_fu_670_p15;
wire   [2:0] v28_1_fu_741_p1;
wire   [2:0] v28_1_fu_741_p3;
wire   [2:0] v28_1_fu_741_p5;
wire   [2:0] v28_1_fu_741_p7;
wire  signed [2:0] v28_1_fu_741_p9;
wire  signed [2:0] v28_1_fu_741_p11;
wire  signed [2:0] v28_1_fu_741_p13;
wire  signed [2:0] v28_1_fu_741_p15;
wire   [2:0] v28_2_fu_850_p1;
wire   [2:0] v28_2_fu_850_p3;
wire   [2:0] v28_2_fu_850_p5;
wire   [2:0] v28_2_fu_850_p7;
wire  signed [2:0] v28_2_fu_850_p9;
wire  signed [2:0] v28_2_fu_850_p11;
wire  signed [2:0] v28_2_fu_850_p13;
wire  signed [2:0] v28_2_fu_850_p15;
wire   [2:0] v28_3_fu_921_p1;
wire   [2:0] v28_3_fu_921_p3;
wire   [2:0] v28_3_fu_921_p5;
wire   [2:0] v28_3_fu_921_p7;
wire  signed [2:0] v28_3_fu_921_p9;
wire  signed [2:0] v28_3_fu_921_p11;
wire  signed [2:0] v28_3_fu_921_p13;
wire  signed [2:0] v28_3_fu_921_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v25_fu_104 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U133(.din0(v28_fu_670_p2),.din1(v28_fu_670_p4),.din2(v28_fu_670_p6),.din3(v28_fu_670_p8),.din4(v28_fu_670_p10),.din5(v28_fu_670_p12),.din6(v28_fu_670_p14),.din7(v28_fu_670_p16),.def(v28_fu_670_p17),.sel(trunc_ln55_s_reg_996_pp0_iter1_reg),.dout(v28_fu_670_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U134(.din0(v28_1_fu_741_p2),.din1(v28_1_fu_741_p4),.din2(v28_1_fu_741_p6),.din3(v28_1_fu_741_p8),.din4(v28_1_fu_741_p10),.din5(v28_1_fu_741_p12),.din6(v28_1_fu_741_p14),.din7(v28_1_fu_741_p16),.def(v28_1_fu_741_p17),.sel(trunc_ln55_s_reg_996_pp0_iter1_reg),.dout(v28_1_fu_741_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U135(.din0(v28_2_fu_850_p2),.din1(v28_2_fu_850_p4),.din2(v28_2_fu_850_p6),.din3(v28_2_fu_850_p8),.din4(v28_2_fu_850_p10),.din5(v28_2_fu_850_p12),.din6(v28_2_fu_850_p14),.din7(v28_2_fu_850_p16),.def(v28_2_fu_850_p17),.sel(trunc_ln55_s_reg_996_pp0_iter1_reg),.dout(v28_2_fu_850_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U136(.din0(v28_3_fu_921_p2),.din1(v28_3_fu_921_p4),.din2(v28_3_fu_921_p6),.din3(v28_3_fu_921_p8),.din4(v28_3_fu_921_p10),.din5(v28_3_fu_921_p12),.din6(v28_3_fu_921_p14),.din7(v28_3_fu_921_p16),.def(v28_3_fu_921_p17),.sel(trunc_ln55_s_reg_996_pp0_iter1_reg),.dout(v28_3_fu_921_p19));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v25_fu_104 <= 11'd0;
    end else if (((tmp_reg_992 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v25_fu_104 <= add_ln55_fu_575_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        bitcast_ln60_3_reg_1286 <= bitcast_ln60_3_fu_972_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bitcast_ln60_1_reg_1274 <= bitcast_ln60_1_fu_968_p1;
        v28_1_reg_1140 <= v28_1_fu_741_p19;
        v28_reg_1135 <= v28_fu_670_p19;
        v2_0_addr_2_reg_1145[6 : 2] <= zext_ln56_3_fu_787_p1[6 : 2];
        v2_0_addr_2_reg_1145_pp0_iter2_reg[6 : 2] <= v2_0_addr_2_reg_1145[6 : 2];
        v2_0_addr_2_reg_1145_pp0_iter3_reg[6 : 2] <= v2_0_addr_2_reg_1145_pp0_iter2_reg[6 : 2];
        v2_0_addr_3_reg_1185[6 : 2] <= zext_ln56_5_fu_806_p1[6 : 2];
        v2_0_addr_3_reg_1185_pp0_iter2_reg[6 : 2] <= v2_0_addr_3_reg_1185[6 : 2];
        v2_0_addr_3_reg_1185_pp0_iter3_reg[6 : 2] <= v2_0_addr_3_reg_1185_pp0_iter2_reg[6 : 2];
        v2_0_addr_3_reg_1185_pp0_iter4_reg[6 : 2] <= v2_0_addr_3_reg_1185_pp0_iter3_reg[6 : 2];
        v2_1_addr_2_reg_1150[6 : 2] <= zext_ln56_3_fu_787_p1[6 : 2];
        v2_1_addr_2_reg_1150_pp0_iter2_reg[6 : 2] <= v2_1_addr_2_reg_1150[6 : 2];
        v2_1_addr_2_reg_1150_pp0_iter3_reg[6 : 2] <= v2_1_addr_2_reg_1150_pp0_iter2_reg[6 : 2];
        v2_1_addr_3_reg_1190[6 : 2] <= zext_ln56_5_fu_806_p1[6 : 2];
        v2_1_addr_3_reg_1190_pp0_iter2_reg[6 : 2] <= v2_1_addr_3_reg_1190[6 : 2];
        v2_1_addr_3_reg_1190_pp0_iter3_reg[6 : 2] <= v2_1_addr_3_reg_1190_pp0_iter2_reg[6 : 2];
        v2_1_addr_3_reg_1190_pp0_iter4_reg[6 : 2] <= v2_1_addr_3_reg_1190_pp0_iter3_reg[6 : 2];
        v2_2_addr_2_reg_1155[6 : 2] <= zext_ln56_3_fu_787_p1[6 : 2];
        v2_2_addr_2_reg_1155_pp0_iter2_reg[6 : 2] <= v2_2_addr_2_reg_1155[6 : 2];
        v2_2_addr_2_reg_1155_pp0_iter3_reg[6 : 2] <= v2_2_addr_2_reg_1155_pp0_iter2_reg[6 : 2];
        v2_2_addr_3_reg_1195[6 : 2] <= zext_ln56_5_fu_806_p1[6 : 2];
        v2_2_addr_3_reg_1195_pp0_iter2_reg[6 : 2] <= v2_2_addr_3_reg_1195[6 : 2];
        v2_2_addr_3_reg_1195_pp0_iter3_reg[6 : 2] <= v2_2_addr_3_reg_1195_pp0_iter2_reg[6 : 2];
        v2_2_addr_3_reg_1195_pp0_iter4_reg[6 : 2] <= v2_2_addr_3_reg_1195_pp0_iter3_reg[6 : 2];
        v2_3_addr_2_reg_1160[6 : 2] <= zext_ln56_3_fu_787_p1[6 : 2];
        v2_3_addr_2_reg_1160_pp0_iter2_reg[6 : 2] <= v2_3_addr_2_reg_1160[6 : 2];
        v2_3_addr_2_reg_1160_pp0_iter3_reg[6 : 2] <= v2_3_addr_2_reg_1160_pp0_iter2_reg[6 : 2];
        v2_3_addr_3_reg_1200[6 : 2] <= zext_ln56_5_fu_806_p1[6 : 2];
        v2_3_addr_3_reg_1200_pp0_iter2_reg[6 : 2] <= v2_3_addr_3_reg_1200[6 : 2];
        v2_3_addr_3_reg_1200_pp0_iter3_reg[6 : 2] <= v2_3_addr_3_reg_1200_pp0_iter2_reg[6 : 2];
        v2_3_addr_3_reg_1200_pp0_iter4_reg[6 : 2] <= v2_3_addr_3_reg_1200_pp0_iter3_reg[6 : 2];
        v2_4_addr_2_reg_1165[6 : 2] <= zext_ln56_3_fu_787_p1[6 : 2];
        v2_4_addr_2_reg_1165_pp0_iter2_reg[6 : 2] <= v2_4_addr_2_reg_1165[6 : 2];
        v2_4_addr_2_reg_1165_pp0_iter3_reg[6 : 2] <= v2_4_addr_2_reg_1165_pp0_iter2_reg[6 : 2];
        v2_4_addr_3_reg_1205[6 : 2] <= zext_ln56_5_fu_806_p1[6 : 2];
        v2_4_addr_3_reg_1205_pp0_iter2_reg[6 : 2] <= v2_4_addr_3_reg_1205[6 : 2];
        v2_4_addr_3_reg_1205_pp0_iter3_reg[6 : 2] <= v2_4_addr_3_reg_1205_pp0_iter2_reg[6 : 2];
        v2_4_addr_3_reg_1205_pp0_iter4_reg[6 : 2] <= v2_4_addr_3_reg_1205_pp0_iter3_reg[6 : 2];
        v2_5_addr_2_reg_1170[6 : 2] <= zext_ln56_3_fu_787_p1[6 : 2];
        v2_5_addr_2_reg_1170_pp0_iter2_reg[6 : 2] <= v2_5_addr_2_reg_1170[6 : 2];
        v2_5_addr_2_reg_1170_pp0_iter3_reg[6 : 2] <= v2_5_addr_2_reg_1170_pp0_iter2_reg[6 : 2];
        v2_5_addr_3_reg_1210[6 : 2] <= zext_ln56_5_fu_806_p1[6 : 2];
        v2_5_addr_3_reg_1210_pp0_iter2_reg[6 : 2] <= v2_5_addr_3_reg_1210[6 : 2];
        v2_5_addr_3_reg_1210_pp0_iter3_reg[6 : 2] <= v2_5_addr_3_reg_1210_pp0_iter2_reg[6 : 2];
        v2_5_addr_3_reg_1210_pp0_iter4_reg[6 : 2] <= v2_5_addr_3_reg_1210_pp0_iter3_reg[6 : 2];
        v2_6_addr_2_reg_1175[6 : 2] <= zext_ln56_3_fu_787_p1[6 : 2];
        v2_6_addr_2_reg_1175_pp0_iter2_reg[6 : 2] <= v2_6_addr_2_reg_1175[6 : 2];
        v2_6_addr_2_reg_1175_pp0_iter3_reg[6 : 2] <= v2_6_addr_2_reg_1175_pp0_iter2_reg[6 : 2];
        v2_6_addr_3_reg_1215[6 : 2] <= zext_ln56_5_fu_806_p1[6 : 2];
        v2_6_addr_3_reg_1215_pp0_iter2_reg[6 : 2] <= v2_6_addr_3_reg_1215[6 : 2];
        v2_6_addr_3_reg_1215_pp0_iter3_reg[6 : 2] <= v2_6_addr_3_reg_1215_pp0_iter2_reg[6 : 2];
        v2_6_addr_3_reg_1215_pp0_iter4_reg[6 : 2] <= v2_6_addr_3_reg_1215_pp0_iter3_reg[6 : 2];
        v2_7_addr_2_reg_1180[6 : 2] <= zext_ln56_3_fu_787_p1[6 : 2];
        v2_7_addr_2_reg_1180_pp0_iter2_reg[6 : 2] <= v2_7_addr_2_reg_1180[6 : 2];
        v2_7_addr_2_reg_1180_pp0_iter3_reg[6 : 2] <= v2_7_addr_2_reg_1180_pp0_iter2_reg[6 : 2];
        v2_7_addr_3_reg_1220[6 : 2] <= zext_ln56_5_fu_806_p1[6 : 2];
        v2_7_addr_3_reg_1220_pp0_iter2_reg[6 : 2] <= v2_7_addr_3_reg_1220[6 : 2];
        v2_7_addr_3_reg_1220_pp0_iter3_reg[6 : 2] <= v2_7_addr_3_reg_1220_pp0_iter2_reg[6 : 2];
        v2_7_addr_3_reg_1220_pp0_iter4_reg[6 : 2] <= v2_7_addr_3_reg_1220_pp0_iter3_reg[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bitcast_ln60_2_reg_1262 <= bitcast_ln60_2_fu_964_p1;
        v28_2_reg_1230 <= v28_2_fu_850_p19;
        v28_3_reg_1235 <= v28_3_fu_921_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bitcast_ln60_reg_1250 <= bitcast_ln60_fu_960_p1;
        tmp_4_reg_1124 <= {{v25_1_reg_983[6:2]}};
        tmp_reg_992 <= ap_sig_allocacmp_v25_1[32'd10];
        trunc_ln55_s_reg_996 <= {{ap_sig_allocacmp_v25_1[9:7]}};
        trunc_ln55_s_reg_996_pp0_iter1_reg <= trunc_ln55_s_reg_996;
        trunc_ln55_s_reg_996_pp0_iter2_reg <= trunc_ln55_s_reg_996_pp0_iter1_reg;
        trunc_ln55_s_reg_996_pp0_iter3_reg <= trunc_ln55_s_reg_996_pp0_iter2_reg;
        trunc_ln55_s_reg_996_pp0_iter4_reg <= trunc_ln55_s_reg_996_pp0_iter3_reg;
        v25_1_reg_983 <= ap_sig_allocacmp_v25_1;
        v2_0_addr_1_reg_1084[6 : 1] <= zext_ln56_1_fu_617_p1[6 : 1];
        v2_0_addr_1_reg_1084_pp0_iter2_reg[6 : 1] <= v2_0_addr_1_reg_1084[6 : 1];
        v2_0_addr_1_reg_1084_pp0_iter3_reg[6 : 1] <= v2_0_addr_1_reg_1084_pp0_iter2_reg[6 : 1];
        v2_0_addr_reg_1044 <= zext_ln55_1_fu_588_p1;
        v2_0_addr_reg_1044_pp0_iter2_reg <= v2_0_addr_reg_1044;
        v2_0_addr_reg_1044_pp0_iter3_reg <= v2_0_addr_reg_1044_pp0_iter2_reg;
        v2_1_addr_1_reg_1089[6 : 1] <= zext_ln56_1_fu_617_p1[6 : 1];
        v2_1_addr_1_reg_1089_pp0_iter2_reg[6 : 1] <= v2_1_addr_1_reg_1089[6 : 1];
        v2_1_addr_1_reg_1089_pp0_iter3_reg[6 : 1] <= v2_1_addr_1_reg_1089_pp0_iter2_reg[6 : 1];
        v2_1_addr_reg_1049 <= zext_ln55_1_fu_588_p1;
        v2_1_addr_reg_1049_pp0_iter2_reg <= v2_1_addr_reg_1049;
        v2_1_addr_reg_1049_pp0_iter3_reg <= v2_1_addr_reg_1049_pp0_iter2_reg;
        v2_2_addr_1_reg_1094[6 : 1] <= zext_ln56_1_fu_617_p1[6 : 1];
        v2_2_addr_1_reg_1094_pp0_iter2_reg[6 : 1] <= v2_2_addr_1_reg_1094[6 : 1];
        v2_2_addr_1_reg_1094_pp0_iter3_reg[6 : 1] <= v2_2_addr_1_reg_1094_pp0_iter2_reg[6 : 1];
        v2_2_addr_reg_1054 <= zext_ln55_1_fu_588_p1;
        v2_2_addr_reg_1054_pp0_iter2_reg <= v2_2_addr_reg_1054;
        v2_2_addr_reg_1054_pp0_iter3_reg <= v2_2_addr_reg_1054_pp0_iter2_reg;
        v2_3_addr_1_reg_1099[6 : 1] <= zext_ln56_1_fu_617_p1[6 : 1];
        v2_3_addr_1_reg_1099_pp0_iter2_reg[6 : 1] <= v2_3_addr_1_reg_1099[6 : 1];
        v2_3_addr_1_reg_1099_pp0_iter3_reg[6 : 1] <= v2_3_addr_1_reg_1099_pp0_iter2_reg[6 : 1];
        v2_3_addr_reg_1059 <= zext_ln55_1_fu_588_p1;
        v2_3_addr_reg_1059_pp0_iter2_reg <= v2_3_addr_reg_1059;
        v2_3_addr_reg_1059_pp0_iter3_reg <= v2_3_addr_reg_1059_pp0_iter2_reg;
        v2_4_addr_1_reg_1104[6 : 1] <= zext_ln56_1_fu_617_p1[6 : 1];
        v2_4_addr_1_reg_1104_pp0_iter2_reg[6 : 1] <= v2_4_addr_1_reg_1104[6 : 1];
        v2_4_addr_1_reg_1104_pp0_iter3_reg[6 : 1] <= v2_4_addr_1_reg_1104_pp0_iter2_reg[6 : 1];
        v2_4_addr_reg_1064 <= zext_ln55_1_fu_588_p1;
        v2_4_addr_reg_1064_pp0_iter2_reg <= v2_4_addr_reg_1064;
        v2_4_addr_reg_1064_pp0_iter3_reg <= v2_4_addr_reg_1064_pp0_iter2_reg;
        v2_5_addr_1_reg_1109[6 : 1] <= zext_ln56_1_fu_617_p1[6 : 1];
        v2_5_addr_1_reg_1109_pp0_iter2_reg[6 : 1] <= v2_5_addr_1_reg_1109[6 : 1];
        v2_5_addr_1_reg_1109_pp0_iter3_reg[6 : 1] <= v2_5_addr_1_reg_1109_pp0_iter2_reg[6 : 1];
        v2_5_addr_reg_1069 <= zext_ln55_1_fu_588_p1;
        v2_5_addr_reg_1069_pp0_iter2_reg <= v2_5_addr_reg_1069;
        v2_5_addr_reg_1069_pp0_iter3_reg <= v2_5_addr_reg_1069_pp0_iter2_reg;
        v2_6_addr_1_reg_1114[6 : 1] <= zext_ln56_1_fu_617_p1[6 : 1];
        v2_6_addr_1_reg_1114_pp0_iter2_reg[6 : 1] <= v2_6_addr_1_reg_1114[6 : 1];
        v2_6_addr_1_reg_1114_pp0_iter3_reg[6 : 1] <= v2_6_addr_1_reg_1114_pp0_iter2_reg[6 : 1];
        v2_6_addr_reg_1074 <= zext_ln55_1_fu_588_p1;
        v2_6_addr_reg_1074_pp0_iter2_reg <= v2_6_addr_reg_1074;
        v2_6_addr_reg_1074_pp0_iter3_reg <= v2_6_addr_reg_1074_pp0_iter2_reg;
        v2_7_addr_1_reg_1119[6 : 1] <= zext_ln56_1_fu_617_p1[6 : 1];
        v2_7_addr_1_reg_1119_pp0_iter2_reg[6 : 1] <= v2_7_addr_1_reg_1119[6 : 1];
        v2_7_addr_1_reg_1119_pp0_iter3_reg[6 : 1] <= v2_7_addr_1_reg_1119_pp0_iter2_reg[6 : 1];
        v2_7_addr_reg_1079 <= zext_ln55_1_fu_588_p1;
        v2_7_addr_reg_1079_pp0_iter2_reg <= v2_7_addr_reg_1079;
        v2_7_addr_reg_1079_pp0_iter3_reg <= v2_7_addr_reg_1079_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v26_1_reg_1019 <= v3_q0;
        v26_reg_1014 <= v3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v26_2_reg_1034 <= v3_q1;
        v26_3_reg_1039 <= v3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_1_reg_1225 <= grp_fu_949_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_2_reg_1240 <= grp_fu_949_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_3_reg_1245 <= grp_fu_949_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_reg_1130 <= grp_fu_949_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_992 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v25_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_1 = v25_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_477_p0 = v28_3_reg_1235;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_477_p0 = v28_2_reg_1230;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_477_p0 = v28_1_reg_1140;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_477_p0 = v28_reg_1135;
    end else begin
        grp_fu_477_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_477_p1 = v27_3_reg_1245;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_477_p1 = v27_2_reg_1240;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_477_p1 = v27_1_reg_1225;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_477_p1 = v27_reg_1130;
    end else begin
        grp_fu_477_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_481_p0 = v26_3_reg_1039;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_481_p0 = v26_2_reg_1034;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_481_p0 = v26_1_reg_1019;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_481_p0 = v26_reg_1014;
    end else begin
        grp_fu_481_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_address0_local = v2_0_addr_3_reg_1185_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_address0_local = v2_0_addr_1_reg_1084_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address0_local = zext_ln56_5_fu_806_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address0_local = zext_ln56_1_fu_617_p1;
    end else begin
        v2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_address1_local = v2_0_addr_2_reg_1145_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_address1_local = v2_0_addr_reg_1044_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address1_local = zext_ln56_3_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address1_local = zext_ln55_1_fu_588_p1;
    end else begin
        v2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_0_ce1_local = 1'b1;
    end else begin
        v2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_0_d0_local = bitcast_ln60_3_reg_1286;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_d0_local = bitcast_ln60_1_reg_1274;
    end else begin
        v2_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_0_d1_local = bitcast_ln60_2_reg_1262;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_0_d1_local = bitcast_ln60_reg_1250;
        end else begin
            v2_0_d1_local = 'bx;
        end
    end else begin
        v2_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter4_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_0_we1_local = 1'b1;
    end else begin
        v2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_address0_local = v2_1_addr_3_reg_1190_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_address0_local = v2_1_addr_1_reg_1089_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address0_local = zext_ln56_5_fu_806_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address0_local = zext_ln56_1_fu_617_p1;
    end else begin
        v2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_address1_local = v2_1_addr_2_reg_1150_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_address1_local = v2_1_addr_reg_1049_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address1_local = zext_ln56_3_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address1_local = zext_ln55_1_fu_588_p1;
    end else begin
        v2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_1_ce1_local = 1'b1;
    end else begin
        v2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_1_d0_local = bitcast_ln60_3_reg_1286;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_d0_local = bitcast_ln60_1_reg_1274;
    end else begin
        v2_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_1_d1_local = bitcast_ln60_2_reg_1262;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_1_d1_local = bitcast_ln60_reg_1250;
        end else begin
            v2_1_d1_local = 'bx;
        end
    end else begin
        v2_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter4_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_1_we1_local = 1'b1;
    end else begin
        v2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_2_address0_local = v2_2_addr_3_reg_1195_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_2_address0_local = v2_2_addr_1_reg_1094_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_2_address0_local = zext_ln56_5_fu_806_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_2_address0_local = zext_ln56_1_fu_617_p1;
    end else begin
        v2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_2_address1_local = v2_2_addr_2_reg_1155_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_2_address1_local = v2_2_addr_reg_1054_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_2_address1_local = zext_ln56_3_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_2_address1_local = zext_ln55_1_fu_588_p1;
    end else begin
        v2_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_2_ce1_local = 1'b1;
    end else begin
        v2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_2_d0_local = bitcast_ln60_3_reg_1286;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_2_d0_local = bitcast_ln60_1_reg_1274;
    end else begin
        v2_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_2_d1_local = bitcast_ln60_2_reg_1262;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_2_d1_local = bitcast_ln60_reg_1250;
        end else begin
            v2_2_d1_local = 'bx;
        end
    end else begin
        v2_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter4_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_2_we0_local = 1'b1;
    end else begin
        v2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_2_we1_local = 1'b1;
    end else begin
        v2_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_3_address0_local = v2_3_addr_3_reg_1200_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_3_address0_local = v2_3_addr_1_reg_1099_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_3_address0_local = zext_ln56_5_fu_806_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_3_address0_local = zext_ln56_1_fu_617_p1;
    end else begin
        v2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_3_address1_local = v2_3_addr_2_reg_1160_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_3_address1_local = v2_3_addr_reg_1059_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_3_address1_local = zext_ln56_3_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_3_address1_local = zext_ln55_1_fu_588_p1;
    end else begin
        v2_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_3_ce1_local = 1'b1;
    end else begin
        v2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_3_d0_local = bitcast_ln60_3_reg_1286;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_3_d0_local = bitcast_ln60_1_reg_1274;
    end else begin
        v2_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_3_d1_local = bitcast_ln60_2_reg_1262;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_3_d1_local = bitcast_ln60_reg_1250;
        end else begin
            v2_3_d1_local = 'bx;
        end
    end else begin
        v2_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter4_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_3_we0_local = 1'b1;
    end else begin
        v2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_3_we1_local = 1'b1;
    end else begin
        v2_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_4_address0_local = v2_4_addr_3_reg_1205_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_4_address0_local = v2_4_addr_1_reg_1104_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_4_address0_local = zext_ln56_5_fu_806_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_4_address0_local = zext_ln56_1_fu_617_p1;
    end else begin
        v2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_4_address1_local = v2_4_addr_2_reg_1165_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_4_address1_local = v2_4_addr_reg_1064_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_4_address1_local = zext_ln56_3_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_4_address1_local = zext_ln55_1_fu_588_p1;
    end else begin
        v2_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_4_ce0_local = 1'b1;
    end else begin
        v2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_4_ce1_local = 1'b1;
    end else begin
        v2_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_4_d0_local = bitcast_ln60_3_reg_1286;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_4_d0_local = bitcast_ln60_1_reg_1274;
    end else begin
        v2_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_4_d1_local = bitcast_ln60_2_reg_1262;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_4_d1_local = bitcast_ln60_reg_1250;
        end else begin
            v2_4_d1_local = 'bx;
        end
    end else begin
        v2_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter4_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_4_we0_local = 1'b1;
    end else begin
        v2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_4_we1_local = 1'b1;
    end else begin
        v2_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_5_address0_local = v2_5_addr_3_reg_1210_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_5_address0_local = v2_5_addr_1_reg_1109_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_5_address0_local = zext_ln56_5_fu_806_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_5_address0_local = zext_ln56_1_fu_617_p1;
    end else begin
        v2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_5_address1_local = v2_5_addr_2_reg_1170_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_5_address1_local = v2_5_addr_reg_1069_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_5_address1_local = zext_ln56_3_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_5_address1_local = zext_ln55_1_fu_588_p1;
    end else begin
        v2_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_5_ce0_local = 1'b1;
    end else begin
        v2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_5_ce1_local = 1'b1;
    end else begin
        v2_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_5_d0_local = bitcast_ln60_3_reg_1286;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_5_d0_local = bitcast_ln60_1_reg_1274;
    end else begin
        v2_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_5_d1_local = bitcast_ln60_2_reg_1262;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_5_d1_local = bitcast_ln60_reg_1250;
        end else begin
            v2_5_d1_local = 'bx;
        end
    end else begin
        v2_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter4_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_5_we0_local = 1'b1;
    end else begin
        v2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_5_we1_local = 1'b1;
    end else begin
        v2_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_6_address0_local = v2_6_addr_3_reg_1215_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_6_address0_local = v2_6_addr_1_reg_1114_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_6_address0_local = zext_ln56_5_fu_806_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_6_address0_local = zext_ln56_1_fu_617_p1;
    end else begin
        v2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_6_address1_local = v2_6_addr_2_reg_1175_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_6_address1_local = v2_6_addr_reg_1074_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_6_address1_local = zext_ln56_3_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_6_address1_local = zext_ln55_1_fu_588_p1;
    end else begin
        v2_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_6_ce0_local = 1'b1;
    end else begin
        v2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_6_ce1_local = 1'b1;
    end else begin
        v2_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_6_d0_local = bitcast_ln60_3_reg_1286;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_6_d0_local = bitcast_ln60_1_reg_1274;
    end else begin
        v2_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_6_d1_local = bitcast_ln60_2_reg_1262;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_6_d1_local = bitcast_ln60_reg_1250;
        end else begin
            v2_6_d1_local = 'bx;
        end
    end else begin
        v2_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter4_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_6_we0_local = 1'b1;
    end else begin
        v2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_6_we1_local = 1'b1;
    end else begin
        v2_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_7_address0_local = v2_7_addr_3_reg_1220_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_7_address0_local = v2_7_addr_1_reg_1119_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_7_address0_local = zext_ln56_5_fu_806_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_7_address0_local = zext_ln56_1_fu_617_p1;
    end else begin
        v2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_7_address1_local = v2_7_addr_2_reg_1180_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_7_address1_local = v2_7_addr_reg_1079_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_7_address1_local = zext_ln56_3_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_7_address1_local = zext_ln55_1_fu_588_p1;
    end else begin
        v2_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_7_ce0_local = 1'b1;
    end else begin
        v2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_7_ce1_local = 1'b1;
    end else begin
        v2_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_7_d0_local = bitcast_ln60_3_reg_1286;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_7_d0_local = bitcast_ln60_1_reg_1274;
    end else begin
        v2_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v2_7_d1_local = bitcast_ln60_2_reg_1262;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v2_7_d1_local = bitcast_ln60_reg_1250;
        end else begin
            v2_7_d1_local = 'bx;
        end
    end else begin
        v2_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter4_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_7_we0_local = 1'b1;
    end else begin
        v2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln55_s_reg_996_pp0_iter3_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_7_we1_local = 1'b1;
    end else begin
        v2_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address0_local = zext_ln56_4_fu_570_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address0_local = zext_ln56_fu_535_p1;
        end else begin
            v3_address0_local = 'bx;
        end
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address1_local = zext_ln56_2_fu_557_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address1_local = zext_ln55_fu_502_p1;
        end else begin
            v3_address1_local = 'bx;
        end
    end else begin
        v3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln55_fu_575_p2 = (v25_1_reg_983 + 11'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_1_fu_968_p1 = grp_fu_441_p_dout0;
assign bitcast_ln60_2_fu_964_p1 = grp_fu_441_p_dout0;
assign bitcast_ln60_3_fu_972_p1 = grp_fu_441_p_dout0;
assign bitcast_ln60_fu_960_p1 = grp_fu_441_p_dout0;
assign grp_fu_441_p_ce = 1'b1;
assign grp_fu_441_p_din0 = grp_fu_477_p0;
assign grp_fu_441_p_din1 = grp_fu_477_p1;
assign grp_fu_441_p_opcode = 2'd0;
assign grp_fu_949_p_ce = 1'b1;
assign grp_fu_949_p_din0 = grp_fu_481_p0;
assign grp_fu_949_p_din1 = 32'd3345637376;
assign or_ln55_6_fu_527_p3 = {{tmp_s_fu_517_p4}, {1'd1}};
assign or_ln55_9_fu_549_p3 = {{tmp_3_fu_540_p4}, {2'd2}};
assign or_ln55_s_fu_562_p3 = {{tmp_3_fu_540_p4}, {2'd3}};
assign or_ln56_6_fu_609_p3 = {{tmp_2_fu_600_p4}, {1'd1}};
assign or_ln56_9_fu_780_p3 = {{tmp_4_reg_1124}, {2'd2}};
assign or_ln56_s_fu_799_p3 = {{tmp_4_reg_1124}, {2'd3}};
assign tmp_2_fu_600_p4 = {{v25_1_reg_983[6:1]}};
assign tmp_3_fu_540_p4 = {{v25_1_reg_983[9:2]}};
assign tmp_s_fu_517_p4 = {{ap_sig_allocacmp_v25_1[9:1]}};
assign trunc_ln55_fu_585_p1 = v25_1_reg_983[6:0];
assign v28_1_fu_741_p10 = v2_4_q0;
assign v28_1_fu_741_p12 = v2_5_q0;
assign v28_1_fu_741_p14 = v2_6_q0;
assign v28_1_fu_741_p16 = v2_7_q0;
assign v28_1_fu_741_p17 = 'bx;
assign v28_1_fu_741_p2 = v2_0_q0;
assign v28_1_fu_741_p4 = v2_1_q0;
assign v28_1_fu_741_p6 = v2_2_q0;
assign v28_1_fu_741_p8 = v2_3_q0;
assign v28_2_fu_850_p10 = v2_4_q1;
assign v28_2_fu_850_p12 = v2_5_q1;
assign v28_2_fu_850_p14 = v2_6_q1;
assign v28_2_fu_850_p16 = v2_7_q1;
assign v28_2_fu_850_p17 = 'bx;
assign v28_2_fu_850_p2 = v2_0_q1;
assign v28_2_fu_850_p4 = v2_1_q1;
assign v28_2_fu_850_p6 = v2_2_q1;
assign v28_2_fu_850_p8 = v2_3_q1;
assign v28_3_fu_921_p10 = v2_4_q0;
assign v28_3_fu_921_p12 = v2_5_q0;
assign v28_3_fu_921_p14 = v2_6_q0;
assign v28_3_fu_921_p16 = v2_7_q0;
assign v28_3_fu_921_p17 = 'bx;
assign v28_3_fu_921_p2 = v2_0_q0;
assign v28_3_fu_921_p4 = v2_1_q0;
assign v28_3_fu_921_p6 = v2_2_q0;
assign v28_3_fu_921_p8 = v2_3_q0;
assign v28_fu_670_p10 = v2_4_q1;
assign v28_fu_670_p12 = v2_5_q1;
assign v28_fu_670_p14 = v2_6_q1;
assign v28_fu_670_p16 = v2_7_q1;
assign v28_fu_670_p17 = 'bx;
assign v28_fu_670_p2 = v2_0_q1;
assign v28_fu_670_p4 = v2_1_q1;
assign v28_fu_670_p6 = v2_2_q1;
assign v28_fu_670_p8 = v2_3_q1;
assign v2_0_address0 = v2_0_address0_local;
assign v2_0_address1 = v2_0_address1_local;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = v2_0_d0_local;
assign v2_0_d1 = v2_0_d1_local;
assign v2_0_we0 = v2_0_we0_local;
assign v2_0_we1 = v2_0_we1_local;
assign v2_1_address0 = v2_1_address0_local;
assign v2_1_address1 = v2_1_address1_local;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = v2_1_d0_local;
assign v2_1_d1 = v2_1_d1_local;
assign v2_1_we0 = v2_1_we0_local;
assign v2_1_we1 = v2_1_we1_local;
assign v2_2_address0 = v2_2_address0_local;
assign v2_2_address1 = v2_2_address1_local;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_2_ce1 = v2_2_ce1_local;
assign v2_2_d0 = v2_2_d0_local;
assign v2_2_d1 = v2_2_d1_local;
assign v2_2_we0 = v2_2_we0_local;
assign v2_2_we1 = v2_2_we1_local;
assign v2_3_address0 = v2_3_address0_local;
assign v2_3_address1 = v2_3_address1_local;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_3_ce1 = v2_3_ce1_local;
assign v2_3_d0 = v2_3_d0_local;
assign v2_3_d1 = v2_3_d1_local;
assign v2_3_we0 = v2_3_we0_local;
assign v2_3_we1 = v2_3_we1_local;
assign v2_4_address0 = v2_4_address0_local;
assign v2_4_address1 = v2_4_address1_local;
assign v2_4_ce0 = v2_4_ce0_local;
assign v2_4_ce1 = v2_4_ce1_local;
assign v2_4_d0 = v2_4_d0_local;
assign v2_4_d1 = v2_4_d1_local;
assign v2_4_we0 = v2_4_we0_local;
assign v2_4_we1 = v2_4_we1_local;
assign v2_5_address0 = v2_5_address0_local;
assign v2_5_address1 = v2_5_address1_local;
assign v2_5_ce0 = v2_5_ce0_local;
assign v2_5_ce1 = v2_5_ce1_local;
assign v2_5_d0 = v2_5_d0_local;
assign v2_5_d1 = v2_5_d1_local;
assign v2_5_we0 = v2_5_we0_local;
assign v2_5_we1 = v2_5_we1_local;
assign v2_6_address0 = v2_6_address0_local;
assign v2_6_address1 = v2_6_address1_local;
assign v2_6_ce0 = v2_6_ce0_local;
assign v2_6_ce1 = v2_6_ce1_local;
assign v2_6_d0 = v2_6_d0_local;
assign v2_6_d1 = v2_6_d1_local;
assign v2_6_we0 = v2_6_we0_local;
assign v2_6_we1 = v2_6_we1_local;
assign v2_7_address0 = v2_7_address0_local;
assign v2_7_address1 = v2_7_address1_local;
assign v2_7_ce0 = v2_7_ce0_local;
assign v2_7_ce1 = v2_7_ce1_local;
assign v2_7_d0 = v2_7_d0_local;
assign v2_7_d1 = v2_7_d1_local;
assign v2_7_we0 = v2_7_we0_local;
assign v2_7_we1 = v2_7_we1_local;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign zext_ln55_1_fu_588_p1 = trunc_ln55_fu_585_p1;
assign zext_ln55_fu_502_p1 = ap_sig_allocacmp_v25_1;
assign zext_ln56_1_fu_617_p1 = or_ln56_6_fu_609_p3;
assign zext_ln56_2_fu_557_p1 = or_ln55_9_fu_549_p3;
assign zext_ln56_3_fu_787_p1 = or_ln56_9_fu_780_p3;
assign zext_ln56_4_fu_570_p1 = or_ln55_s_fu_562_p3;
assign zext_ln56_5_fu_806_p1 = or_ln56_s_fu_799_p3;
assign zext_ln56_fu_535_p1 = or_ln55_6_fu_527_p3;
always @ (posedge ap_clk) begin
    v2_0_addr_1_reg_1084[0] <= 1'b1;
    v2_0_addr_1_reg_1084_pp0_iter2_reg[0] <= 1'b1;
    v2_0_addr_1_reg_1084_pp0_iter3_reg[0] <= 1'b1;
    v2_1_addr_1_reg_1089[0] <= 1'b1;
    v2_1_addr_1_reg_1089_pp0_iter2_reg[0] <= 1'b1;
    v2_1_addr_1_reg_1089_pp0_iter3_reg[0] <= 1'b1;
    v2_2_addr_1_reg_1094[0] <= 1'b1;
    v2_2_addr_1_reg_1094_pp0_iter2_reg[0] <= 1'b1;
    v2_2_addr_1_reg_1094_pp0_iter3_reg[0] <= 1'b1;
    v2_3_addr_1_reg_1099[0] <= 1'b1;
    v2_3_addr_1_reg_1099_pp0_iter2_reg[0] <= 1'b1;
    v2_3_addr_1_reg_1099_pp0_iter3_reg[0] <= 1'b1;
    v2_4_addr_1_reg_1104[0] <= 1'b1;
    v2_4_addr_1_reg_1104_pp0_iter2_reg[0] <= 1'b1;
    v2_4_addr_1_reg_1104_pp0_iter3_reg[0] <= 1'b1;
    v2_5_addr_1_reg_1109[0] <= 1'b1;
    v2_5_addr_1_reg_1109_pp0_iter2_reg[0] <= 1'b1;
    v2_5_addr_1_reg_1109_pp0_iter3_reg[0] <= 1'b1;
    v2_6_addr_1_reg_1114[0] <= 1'b1;
    v2_6_addr_1_reg_1114_pp0_iter2_reg[0] <= 1'b1;
    v2_6_addr_1_reg_1114_pp0_iter3_reg[0] <= 1'b1;
    v2_7_addr_1_reg_1119[0] <= 1'b1;
    v2_7_addr_1_reg_1119_pp0_iter2_reg[0] <= 1'b1;
    v2_7_addr_1_reg_1119_pp0_iter3_reg[0] <= 1'b1;
    v2_0_addr_2_reg_1145[1:0] <= 2'b10;
    v2_0_addr_2_reg_1145_pp0_iter2_reg[1:0] <= 2'b10;
    v2_0_addr_2_reg_1145_pp0_iter3_reg[1:0] <= 2'b10;
    v2_1_addr_2_reg_1150[1:0] <= 2'b10;
    v2_1_addr_2_reg_1150_pp0_iter2_reg[1:0] <= 2'b10;
    v2_1_addr_2_reg_1150_pp0_iter3_reg[1:0] <= 2'b10;
    v2_2_addr_2_reg_1155[1:0] <= 2'b10;
    v2_2_addr_2_reg_1155_pp0_iter2_reg[1:0] <= 2'b10;
    v2_2_addr_2_reg_1155_pp0_iter3_reg[1:0] <= 2'b10;
    v2_3_addr_2_reg_1160[1:0] <= 2'b10;
    v2_3_addr_2_reg_1160_pp0_iter2_reg[1:0] <= 2'b10;
    v2_3_addr_2_reg_1160_pp0_iter3_reg[1:0] <= 2'b10;
    v2_4_addr_2_reg_1165[1:0] <= 2'b10;
    v2_4_addr_2_reg_1165_pp0_iter2_reg[1:0] <= 2'b10;
    v2_4_addr_2_reg_1165_pp0_iter3_reg[1:0] <= 2'b10;
    v2_5_addr_2_reg_1170[1:0] <= 2'b10;
    v2_5_addr_2_reg_1170_pp0_iter2_reg[1:0] <= 2'b10;
    v2_5_addr_2_reg_1170_pp0_iter3_reg[1:0] <= 2'b10;
    v2_6_addr_2_reg_1175[1:0] <= 2'b10;
    v2_6_addr_2_reg_1175_pp0_iter2_reg[1:0] <= 2'b10;
    v2_6_addr_2_reg_1175_pp0_iter3_reg[1:0] <= 2'b10;
    v2_7_addr_2_reg_1180[1:0] <= 2'b10;
    v2_7_addr_2_reg_1180_pp0_iter2_reg[1:0] <= 2'b10;
    v2_7_addr_2_reg_1180_pp0_iter3_reg[1:0] <= 2'b10;
    v2_0_addr_3_reg_1185[1:0] <= 2'b11;
    v2_0_addr_3_reg_1185_pp0_iter2_reg[1:0] <= 2'b11;
    v2_0_addr_3_reg_1185_pp0_iter3_reg[1:0] <= 2'b11;
    v2_0_addr_3_reg_1185_pp0_iter4_reg[1:0] <= 2'b11;
    v2_1_addr_3_reg_1190[1:0] <= 2'b11;
    v2_1_addr_3_reg_1190_pp0_iter2_reg[1:0] <= 2'b11;
    v2_1_addr_3_reg_1190_pp0_iter3_reg[1:0] <= 2'b11;
    v2_1_addr_3_reg_1190_pp0_iter4_reg[1:0] <= 2'b11;
    v2_2_addr_3_reg_1195[1:0] <= 2'b11;
    v2_2_addr_3_reg_1195_pp0_iter2_reg[1:0] <= 2'b11;
    v2_2_addr_3_reg_1195_pp0_iter3_reg[1:0] <= 2'b11;
    v2_2_addr_3_reg_1195_pp0_iter4_reg[1:0] <= 2'b11;
    v2_3_addr_3_reg_1200[1:0] <= 2'b11;
    v2_3_addr_3_reg_1200_pp0_iter2_reg[1:0] <= 2'b11;
    v2_3_addr_3_reg_1200_pp0_iter3_reg[1:0] <= 2'b11;
    v2_3_addr_3_reg_1200_pp0_iter4_reg[1:0] <= 2'b11;
    v2_4_addr_3_reg_1205[1:0] <= 2'b11;
    v2_4_addr_3_reg_1205_pp0_iter2_reg[1:0] <= 2'b11;
    v2_4_addr_3_reg_1205_pp0_iter3_reg[1:0] <= 2'b11;
    v2_4_addr_3_reg_1205_pp0_iter4_reg[1:0] <= 2'b11;
    v2_5_addr_3_reg_1210[1:0] <= 2'b11;
    v2_5_addr_3_reg_1210_pp0_iter2_reg[1:0] <= 2'b11;
    v2_5_addr_3_reg_1210_pp0_iter3_reg[1:0] <= 2'b11;
    v2_5_addr_3_reg_1210_pp0_iter4_reg[1:0] <= 2'b11;
    v2_6_addr_3_reg_1215[1:0] <= 2'b11;
    v2_6_addr_3_reg_1215_pp0_iter2_reg[1:0] <= 2'b11;
    v2_6_addr_3_reg_1215_pp0_iter3_reg[1:0] <= 2'b11;
    v2_6_addr_3_reg_1215_pp0_iter4_reg[1:0] <= 2'b11;
    v2_7_addr_3_reg_1220[1:0] <= 2'b11;
    v2_7_addr_3_reg_1220_pp0_iter2_reg[1:0] <= 2'b11;
    v2_7_addr_3_reg_1220_pp0_iter3_reg[1:0] <= 2'b11;
    v2_7_addr_3_reg_1220_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 