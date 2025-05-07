module SgdLR_sw_SgdLR_sw_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_1_address1,v3_1_ce1,v3_1_we1,v3_1_d1,v3_address0,v3_ce0,v3_we0,v3_d0,v3_address1,v3_ce1,v3_we1,v3_d1,tmp,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,v0_4_address0,v0_4_ce0,v0_4_q0,v0_4_address1,v0_4_ce1,v0_4_q1,v0_5_address0,v0_5_ce0,v0_5_q0,v0_5_address1,v0_5_ce1,v0_5_q1,v0_6_address0,v0_6_ce0,v0_6_q0,v0_6_address1,v0_6_ce1,v0_6_q1,v0_7_address0,v0_7_ce0,v0_7_q0,v0_7_address1,v0_7_ce1,v0_7_q1,v22,v5,grp_fu_374_p_din0,grp_fu_374_p_din1,grp_fu_374_p_dout0,grp_fu_374_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [31:0] v3_1_d0;
output  [8:0] v3_1_address1;
output   v3_1_ce1;
output   v3_1_we1;
output  [31:0] v3_1_d1;
output  [8:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
output  [8:0] v3_address1;
output   v3_ce1;
output   v3_we1;
output  [31:0] v3_d1;
input  [22:0] tmp;
output  [19:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [19:0] v0_0_address1;
output   v0_0_ce1;
input  [31:0] v0_0_q1;
output  [19:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [19:0] v0_1_address1;
output   v0_1_ce1;
input  [31:0] v0_1_q1;
output  [19:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [19:0] v0_2_address1;
output   v0_2_ce1;
input  [31:0] v0_2_q1;
output  [19:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [19:0] v0_3_address1;
output   v0_3_ce1;
input  [31:0] v0_3_q1;
output  [19:0] v0_4_address0;
output   v0_4_ce0;
input  [31:0] v0_4_q0;
output  [19:0] v0_4_address1;
output   v0_4_ce1;
input  [31:0] v0_4_q1;
output  [19:0] v0_5_address0;
output   v0_5_ce0;
input  [31:0] v0_5_q0;
output  [19:0] v0_5_address1;
output   v0_5_ce1;
input  [31:0] v0_5_q1;
output  [19:0] v0_6_address0;
output   v0_6_ce0;
input  [31:0] v0_6_q0;
output  [19:0] v0_6_address1;
output   v0_6_ce1;
input  [31:0] v0_6_q1;
output  [19:0] v0_7_address0;
output   v0_7_ce0;
input  [31:0] v0_7_q0;
output  [19:0] v0_7_address1;
output   v0_7_ce1;
input  [31:0] v0_7_q1;
input  [31:0] v22;
input  [12:0] v5;
output  [31:0] grp_fu_374_p_din0;
output  [31:0] grp_fu_374_p_din1;
input  [31:0] grp_fu_374_p_dout0;
output   grp_fu_374_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
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
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_1_reg_1175;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_594;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_560_p2;
reg   [31:0] reg_600;
reg   [10:0] v19_1_reg_1166;
reg   [10:0] v19_1_reg_1166_pp0_iter1_reg;
reg   [10:0] v19_1_reg_1166_pp0_iter2_reg;
reg   [10:0] v19_1_reg_1166_pp0_iter3_reg;
reg   [10:0] v19_1_reg_1166_pp0_iter4_reg;
reg   [10:0] v19_1_reg_1166_pp0_iter5_reg;
reg   [10:0] v19_1_reg_1166_pp0_iter6_reg;
reg   [10:0] v19_1_reg_1166_pp0_iter7_reg;
reg   [10:0] v19_1_reg_1166_pp0_iter8_reg;
reg   [10:0] v19_1_reg_1166_pp0_iter9_reg;
reg   [10:0] v19_1_reg_1166_pp0_iter10_reg;
reg   [10:0] v19_1_reg_1166_pp0_iter11_reg;
reg   [10:0] v19_1_reg_1166_pp0_iter12_reg;
reg   [10:0] v19_1_reg_1166_pp0_iter13_reg;
reg   [10:0] v19_1_reg_1166_pp0_iter14_reg;
reg   [10:0] v19_1_reg_1166_pp0_iter15_reg;
wire   [0:0] tmp_1_fu_614_p3;
wire   [22:0] add_ln51_1_fu_632_p4;
reg   [22:0] add_ln51_1_reg_1179;
reg   [22:0] add_ln51_1_reg_1179_pp0_iter1_reg;
reg   [22:0] add_ln51_1_reg_1179_pp0_iter2_reg;
reg   [22:0] add_ln51_1_reg_1179_pp0_iter3_reg;
reg   [22:0] add_ln51_1_reg_1179_pp0_iter4_reg;
reg   [22:0] add_ln51_1_reg_1179_pp0_iter5_reg;
reg   [22:0] add_ln51_1_reg_1179_pp0_iter6_reg;
reg   [22:0] add_ln51_1_reg_1179_pp0_iter7_reg;
reg   [22:0] add_ln51_1_reg_1179_pp0_iter8_reg;
reg   [22:0] add_ln51_1_reg_1179_pp0_iter9_reg;
reg   [22:0] add_ln51_1_reg_1179_pp0_iter10_reg;
reg   [22:0] add_ln51_1_reg_1179_pp0_iter11_reg;
reg   [22:0] add_ln51_1_reg_1179_pp0_iter12_reg;
wire   [7:0] tmp_9_fu_648_p4;
reg   [7:0] tmp_9_reg_1185;
wire   [22:0] add_ln51_2_fu_658_p4;
reg   [22:0] add_ln51_2_reg_1190;
reg   [22:0] add_ln51_2_reg_1190_pp0_iter1_reg;
reg   [22:0] add_ln51_2_reg_1190_pp0_iter2_reg;
reg   [22:0] add_ln51_2_reg_1190_pp0_iter3_reg;
reg   [22:0] add_ln51_2_reg_1190_pp0_iter4_reg;
reg   [22:0] add_ln51_2_reg_1190_pp0_iter5_reg;
reg   [22:0] add_ln51_2_reg_1190_pp0_iter6_reg;
reg   [22:0] add_ln51_2_reg_1190_pp0_iter7_reg;
reg   [22:0] add_ln51_2_reg_1190_pp0_iter8_reg;
reg   [22:0] add_ln51_2_reg_1190_pp0_iter9_reg;
reg   [22:0] add_ln51_2_reg_1190_pp0_iter10_reg;
reg   [22:0] add_ln51_2_reg_1190_pp0_iter11_reg;
reg   [22:0] add_ln51_2_reg_1190_pp0_iter12_reg;
wire   [0:0] icmp_ln53_fu_684_p2;
reg   [0:0] icmp_ln53_reg_1196;
reg   [0:0] icmp_ln53_reg_1196_pp0_iter1_reg;
reg   [0:0] icmp_ln53_reg_1196_pp0_iter2_reg;
reg   [0:0] icmp_ln53_reg_1196_pp0_iter3_reg;
reg   [0:0] icmp_ln53_reg_1196_pp0_iter4_reg;
reg   [0:0] icmp_ln53_reg_1196_pp0_iter5_reg;
reg   [0:0] icmp_ln53_reg_1196_pp0_iter6_reg;
reg   [0:0] icmp_ln53_reg_1196_pp0_iter7_reg;
reg   [0:0] icmp_ln53_reg_1196_pp0_iter8_reg;
reg   [0:0] icmp_ln53_reg_1196_pp0_iter9_reg;
reg   [0:0] icmp_ln53_reg_1196_pp0_iter10_reg;
reg   [0:0] icmp_ln53_reg_1196_pp0_iter11_reg;
reg   [0:0] icmp_ln53_reg_1196_pp0_iter12_reg;
reg   [0:0] icmp_ln53_reg_1196_pp0_iter13_reg;
reg   [0:0] icmp_ln53_reg_1196_pp0_iter14_reg;
reg   [0:0] icmp_ln53_reg_1196_pp0_iter15_reg;
reg   [0:0] icmp_ln53_reg_1196_pp0_iter16_reg;
wire   [22:0] add_ln51_fu_693_p2;
reg   [22:0] add_ln51_reg_1200;
reg   [22:0] add_ln51_reg_1200_pp0_iter1_reg;
reg   [22:0] add_ln51_reg_1200_pp0_iter2_reg;
reg   [22:0] add_ln51_reg_1200_pp0_iter3_reg;
reg   [22:0] add_ln51_reg_1200_pp0_iter4_reg;
reg   [22:0] add_ln51_reg_1200_pp0_iter5_reg;
reg   [22:0] add_ln51_reg_1200_pp0_iter6_reg;
reg   [22:0] add_ln51_reg_1200_pp0_iter7_reg;
reg   [22:0] add_ln51_reg_1200_pp0_iter8_reg;
reg   [22:0] add_ln51_reg_1200_pp0_iter9_reg;
reg   [22:0] add_ln51_reg_1200_pp0_iter10_reg;
reg   [22:0] add_ln51_reg_1200_pp0_iter11_reg;
reg   [22:0] add_ln51_reg_1200_pp0_iter12_reg;
wire   [22:0] add_ln51_3_fu_704_p4;
reg   [22:0] add_ln51_3_reg_1206;
reg   [22:0] add_ln51_3_reg_1206_pp0_iter1_reg;
reg   [22:0] add_ln51_3_reg_1206_pp0_iter2_reg;
reg   [22:0] add_ln51_3_reg_1206_pp0_iter3_reg;
reg   [22:0] add_ln51_3_reg_1206_pp0_iter4_reg;
reg   [22:0] add_ln51_3_reg_1206_pp0_iter5_reg;
reg   [22:0] add_ln51_3_reg_1206_pp0_iter6_reg;
reg   [22:0] add_ln51_3_reg_1206_pp0_iter7_reg;
reg   [22:0] add_ln51_3_reg_1206_pp0_iter8_reg;
reg   [22:0] add_ln51_3_reg_1206_pp0_iter9_reg;
reg   [22:0] add_ln51_3_reg_1206_pp0_iter10_reg;
reg   [22:0] add_ln51_3_reg_1206_pp0_iter11_reg;
reg   [22:0] add_ln51_3_reg_1206_pp0_iter12_reg;
reg   [2:0] trunc_ln51_1_reg_1212;
reg   [2:0] trunc_ln51_2_reg_1257;
reg   [2:0] trunc_ln51_3_reg_1302;
reg   [2:0] trunc_ln2_reg_1307;
wire   [31:0] v23_1_fu_812_p19;
reg   [31:0] v23_1_reg_1352;
wire   [31:0] v23_2_fu_883_p19;
reg   [31:0] v23_2_reg_1357;
wire   [31:0] v23_fu_966_p19;
reg   [31:0] v23_reg_1402;
wire   [31:0] v23_3_fu_1037_p19;
reg   [31:0] v23_3_reg_1407;
wire   [8:0] trunc_ln47_fu_1076_p1;
reg   [8:0] trunc_ln47_reg_1412;
wire   [6:0] tmp_7_fu_1102_p4;
reg   [6:0] tmp_7_reg_1417;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln51_2_fu_732_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_4_fu_744_p1;
wire   [63:0] zext_ln51_fu_764_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_6_fu_922_p1;
wire   [63:0] zext_ln51_1_fu_1096_p1;
wire   [63:0] zext_ln51_3_fu_1119_p1;
wire   [63:0] zext_ln48_fu_1125_p1;
wire   [63:0] zext_ln51_5_fu_1137_p1;
reg   [10:0] v19_fu_124;
wire   [10:0] add_ln47_fu_718_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_1;
reg    v0_0_ce1_local;
reg   [19:0] v0_0_address1_local;
reg    v0_0_ce0_local;
reg   [19:0] v0_0_address0_local;
reg    v0_1_ce1_local;
reg   [19:0] v0_1_address1_local;
reg    v0_1_ce0_local;
reg   [19:0] v0_1_address0_local;
reg    v0_2_ce1_local;
reg   [19:0] v0_2_address1_local;
reg    v0_2_ce0_local;
reg   [19:0] v0_2_address0_local;
reg    v0_3_ce1_local;
reg   [19:0] v0_3_address1_local;
reg    v0_3_ce0_local;
reg   [19:0] v0_3_address0_local;
reg    v0_4_ce1_local;
reg   [19:0] v0_4_address1_local;
reg    v0_4_ce0_local;
reg   [19:0] v0_4_address0_local;
reg    v0_5_ce1_local;
reg   [19:0] v0_5_address1_local;
reg    v0_5_ce0_local;
reg   [19:0] v0_5_address0_local;
reg    v0_6_ce1_local;
reg   [19:0] v0_6_address1_local;
reg    v0_6_ce0_local;
reg   [19:0] v0_6_address0_local;
reg    v0_7_ce1_local;
reg   [19:0] v0_7_address1_local;
reg    v0_7_ce0_local;
reg   [19:0] v0_7_address0_local;
reg    v3_1_we1_local;
reg    v3_1_ce1_local;
reg   [8:0] v3_1_address1_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
reg   [8:0] v3_1_address0_local;
reg    v3_we1_local;
reg    v3_ce1_local;
reg   [8:0] v3_address1_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg   [8:0] v3_address0_local;
reg   [31:0] grp_fu_556_p1;
reg   [31:0] grp_fu_560_p1;
reg   [22:0] grp_fu_564_p0;
wire   [46:0] zext_ln51_8_fu_728_p1;
wire   [46:0] zext_ln51_9_fu_756_p1;
wire   [24:0] grp_fu_564_p1;
reg   [22:0] grp_fu_569_p0;
wire   [46:0] zext_ln51_10_fu_760_p1;
wire   [46:0] zext_ln51_7_fu_776_p1;
wire   [24:0] grp_fu_569_p1;
wire   [46:0] grp_fu_564_p2;
wire   [46:0] grp_fu_569_p2;
wire   [8:0] tmp_6_fu_622_p4;
wire   [22:0] grp_fu_642_p0;
wire   [20:0] grp_fu_642_p1;
wire   [22:0] grp_fu_668_p0;
wire   [20:0] grp_fu_668_p1;
wire   [1:0] tmp_2_fu_674_p4;
wire   [22:0] zext_ln47_fu_690_p1;
wire   [22:0] grp_fu_698_p0;
wire   [20:0] grp_fu_698_p1;
wire   [22:0] grp_fu_712_p0;
wire   [20:0] grp_fu_712_p1;
wire   [22:0] grp_fu_642_p2;
wire   [22:0] grp_fu_668_p2;
wire   [22:0] grp_fu_698_p2;
wire   [31:0] v23_1_fu_812_p2;
wire   [31:0] v23_1_fu_812_p4;
wire   [31:0] v23_1_fu_812_p6;
wire   [31:0] v23_1_fu_812_p8;
wire   [31:0] v23_1_fu_812_p10;
wire   [31:0] v23_1_fu_812_p12;
wire   [31:0] v23_1_fu_812_p14;
wire   [31:0] v23_1_fu_812_p16;
wire   [31:0] v23_1_fu_812_p17;
wire   [31:0] v23_2_fu_883_p2;
wire   [31:0] v23_2_fu_883_p4;
wire   [31:0] v23_2_fu_883_p6;
wire   [31:0] v23_2_fu_883_p8;
wire   [31:0] v23_2_fu_883_p10;
wire   [31:0] v23_2_fu_883_p12;
wire   [31:0] v23_2_fu_883_p14;
wire   [31:0] v23_2_fu_883_p16;
wire   [31:0] v23_2_fu_883_p17;
wire   [22:0] grp_fu_712_p2;
wire   [31:0] v23_fu_966_p2;
wire   [31:0] v23_fu_966_p4;
wire   [31:0] v23_fu_966_p6;
wire   [31:0] v23_fu_966_p8;
wire   [31:0] v23_fu_966_p10;
wire   [31:0] v23_fu_966_p12;
wire   [31:0] v23_fu_966_p14;
wire   [31:0] v23_fu_966_p16;
wire   [31:0] v23_fu_966_p17;
wire   [31:0] v23_3_fu_1037_p2;
wire   [31:0] v23_3_fu_1037_p4;
wire   [31:0] v23_3_fu_1037_p6;
wire   [31:0] v23_3_fu_1037_p8;
wire   [31:0] v23_3_fu_1037_p10;
wire   [31:0] v23_3_fu_1037_p12;
wire   [31:0] v23_3_fu_1037_p14;
wire   [31:0] v23_3_fu_1037_p16;
wire   [31:0] v23_3_fu_1037_p17;
wire   [7:0] tmp_5_fu_1079_p4;
wire   [8:0] or_ln1_fu_1088_p3;
wire   [8:0] or_ln48_1_fu_1111_p3;
wire   [8:0] or_ln48_2_fu_1130_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to16;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] v23_1_fu_812_p1;
wire   [2:0] v23_1_fu_812_p3;
wire   [2:0] v23_1_fu_812_p5;
wire   [2:0] v23_1_fu_812_p7;
wire  signed [2:0] v23_1_fu_812_p9;
wire  signed [2:0] v23_1_fu_812_p11;
wire  signed [2:0] v23_1_fu_812_p13;
wire  signed [2:0] v23_1_fu_812_p15;
wire   [2:0] v23_2_fu_883_p1;
wire   [2:0] v23_2_fu_883_p3;
wire   [2:0] v23_2_fu_883_p5;
wire   [2:0] v23_2_fu_883_p7;
wire  signed [2:0] v23_2_fu_883_p9;
wire  signed [2:0] v23_2_fu_883_p11;
wire  signed [2:0] v23_2_fu_883_p13;
wire  signed [2:0] v23_2_fu_883_p15;
wire   [2:0] v23_fu_966_p1;
wire   [2:0] v23_fu_966_p3;
wire   [2:0] v23_fu_966_p5;
wire   [2:0] v23_fu_966_p7;
wire  signed [2:0] v23_fu_966_p9;
wire  signed [2:0] v23_fu_966_p11;
wire  signed [2:0] v23_fu_966_p13;
wire  signed [2:0] v23_fu_966_p15;
wire   [2:0] v23_3_fu_1037_p1;
wire   [2:0] v23_3_fu_1037_p3;
wire   [2:0] v23_3_fu_1037_p5;
wire   [2:0] v23_3_fu_1037_p7;
wire  signed [2:0] v23_3_fu_1037_p9;
wire  signed [2:0] v23_3_fu_1037_p11;
wire  signed [2:0] v23_3_fu_1037_p13;
wire  signed [2:0] v23_3_fu_1037_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
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
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v19_fu_124 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U28(.clk(ap_clk),.reset(ap_rst),.din0(v22),.din1(grp_fu_560_p1),.ce(1'b1),.dout(grp_fu_560_p2));
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U29(.din0(grp_fu_564_p0),.din1(grp_fu_564_p1),.dout(grp_fu_564_p2));
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U30(.din0(grp_fu_569_p0),.din1(grp_fu_569_p1),.dout(grp_fu_569_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U31(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_642_p0),.din1(grp_fu_642_p1),.ce(1'b1),.dout(grp_fu_642_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U32(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_668_p0),.din1(grp_fu_668_p1),.ce(1'b1),.dout(grp_fu_668_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U33(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_698_p0),.din1(grp_fu_698_p1),.ce(1'b1),.dout(grp_fu_698_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U34(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_712_p0),.din1(grp_fu_712_p1),.ce(1'b1),.dout(grp_fu_712_p2));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U35(.din0(v23_1_fu_812_p2),.din1(v23_1_fu_812_p4),.din2(v23_1_fu_812_p6),.din3(v23_1_fu_812_p8),.din4(v23_1_fu_812_p10),.din5(v23_1_fu_812_p12),.din6(v23_1_fu_812_p14),.din7(v23_1_fu_812_p16),.def(v23_1_fu_812_p17),.sel(trunc_ln51_1_reg_1212),.dout(v23_1_fu_812_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U36(.din0(v23_2_fu_883_p2),.din1(v23_2_fu_883_p4),.din2(v23_2_fu_883_p6),.din3(v23_2_fu_883_p8),.din4(v23_2_fu_883_p10),.din5(v23_2_fu_883_p12),.din6(v23_2_fu_883_p14),.din7(v23_2_fu_883_p16),.def(v23_2_fu_883_p17),.sel(trunc_ln51_2_reg_1257),.dout(v23_2_fu_883_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U37(.din0(v23_fu_966_p2),.din1(v23_fu_966_p4),.din2(v23_fu_966_p6),.din3(v23_fu_966_p8),.din4(v23_fu_966_p10),.din5(v23_fu_966_p12),.din6(v23_fu_966_p14),.din7(v23_fu_966_p16),.def(v23_fu_966_p17),.sel(trunc_ln2_reg_1307),.dout(v23_fu_966_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U38(.din0(v23_3_fu_1037_p2),.din1(v23_3_fu_1037_p4),.din2(v23_3_fu_1037_p6),.din3(v23_3_fu_1037_p8),.din4(v23_3_fu_1037_p10),.din5(v23_3_fu_1037_p12),.din6(v23_3_fu_1037_p14),.din7(v23_3_fu_1037_p16),.def(v23_3_fu_1037_p17),.sel(trunc_ln51_3_reg_1302),.dout(v23_3_fu_1037_p19));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter15_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_fu_124 <= 11'd0;
    end else if (((tmp_1_reg_1175 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_fu_124 <= add_ln47_fu_718_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln51_1_reg_1179[22 : 1] <= add_ln51_1_fu_632_p4[22 : 1];
        add_ln51_1_reg_1179_pp0_iter10_reg[22 : 1] <= add_ln51_1_reg_1179_pp0_iter9_reg[22 : 1];
        add_ln51_1_reg_1179_pp0_iter11_reg[22 : 1] <= add_ln51_1_reg_1179_pp0_iter10_reg[22 : 1];
        add_ln51_1_reg_1179_pp0_iter12_reg[22 : 1] <= add_ln51_1_reg_1179_pp0_iter11_reg[22 : 1];
        add_ln51_1_reg_1179_pp0_iter1_reg[22 : 1] <= add_ln51_1_reg_1179[22 : 1];
        add_ln51_1_reg_1179_pp0_iter2_reg[22 : 1] <= add_ln51_1_reg_1179_pp0_iter1_reg[22 : 1];
        add_ln51_1_reg_1179_pp0_iter3_reg[22 : 1] <= add_ln51_1_reg_1179_pp0_iter2_reg[22 : 1];
        add_ln51_1_reg_1179_pp0_iter4_reg[22 : 1] <= add_ln51_1_reg_1179_pp0_iter3_reg[22 : 1];
        add_ln51_1_reg_1179_pp0_iter5_reg[22 : 1] <= add_ln51_1_reg_1179_pp0_iter4_reg[22 : 1];
        add_ln51_1_reg_1179_pp0_iter6_reg[22 : 1] <= add_ln51_1_reg_1179_pp0_iter5_reg[22 : 1];
        add_ln51_1_reg_1179_pp0_iter7_reg[22 : 1] <= add_ln51_1_reg_1179_pp0_iter6_reg[22 : 1];
        add_ln51_1_reg_1179_pp0_iter8_reg[22 : 1] <= add_ln51_1_reg_1179_pp0_iter7_reg[22 : 1];
        add_ln51_1_reg_1179_pp0_iter9_reg[22 : 1] <= add_ln51_1_reg_1179_pp0_iter8_reg[22 : 1];
        add_ln51_2_reg_1190[22 : 2] <= add_ln51_2_fu_658_p4[22 : 2];
        add_ln51_2_reg_1190_pp0_iter10_reg[22 : 2] <= add_ln51_2_reg_1190_pp0_iter9_reg[22 : 2];
        add_ln51_2_reg_1190_pp0_iter11_reg[22 : 2] <= add_ln51_2_reg_1190_pp0_iter10_reg[22 : 2];
        add_ln51_2_reg_1190_pp0_iter12_reg[22 : 2] <= add_ln51_2_reg_1190_pp0_iter11_reg[22 : 2];
        add_ln51_2_reg_1190_pp0_iter1_reg[22 : 2] <= add_ln51_2_reg_1190[22 : 2];
        add_ln51_2_reg_1190_pp0_iter2_reg[22 : 2] <= add_ln51_2_reg_1190_pp0_iter1_reg[22 : 2];
        add_ln51_2_reg_1190_pp0_iter3_reg[22 : 2] <= add_ln51_2_reg_1190_pp0_iter2_reg[22 : 2];
        add_ln51_2_reg_1190_pp0_iter4_reg[22 : 2] <= add_ln51_2_reg_1190_pp0_iter3_reg[22 : 2];
        add_ln51_2_reg_1190_pp0_iter5_reg[22 : 2] <= add_ln51_2_reg_1190_pp0_iter4_reg[22 : 2];
        add_ln51_2_reg_1190_pp0_iter6_reg[22 : 2] <= add_ln51_2_reg_1190_pp0_iter5_reg[22 : 2];
        add_ln51_2_reg_1190_pp0_iter7_reg[22 : 2] <= add_ln51_2_reg_1190_pp0_iter6_reg[22 : 2];
        add_ln51_2_reg_1190_pp0_iter8_reg[22 : 2] <= add_ln51_2_reg_1190_pp0_iter7_reg[22 : 2];
        add_ln51_2_reg_1190_pp0_iter9_reg[22 : 2] <= add_ln51_2_reg_1190_pp0_iter8_reg[22 : 2];
        icmp_ln53_reg_1196 <= icmp_ln53_fu_684_p2;
        icmp_ln53_reg_1196_pp0_iter10_reg <= icmp_ln53_reg_1196_pp0_iter9_reg;
        icmp_ln53_reg_1196_pp0_iter11_reg <= icmp_ln53_reg_1196_pp0_iter10_reg;
        icmp_ln53_reg_1196_pp0_iter12_reg <= icmp_ln53_reg_1196_pp0_iter11_reg;
        icmp_ln53_reg_1196_pp0_iter13_reg <= icmp_ln53_reg_1196_pp0_iter12_reg;
        icmp_ln53_reg_1196_pp0_iter14_reg <= icmp_ln53_reg_1196_pp0_iter13_reg;
        icmp_ln53_reg_1196_pp0_iter15_reg <= icmp_ln53_reg_1196_pp0_iter14_reg;
        icmp_ln53_reg_1196_pp0_iter16_reg <= icmp_ln53_reg_1196_pp0_iter15_reg;
        icmp_ln53_reg_1196_pp0_iter1_reg <= icmp_ln53_reg_1196;
        icmp_ln53_reg_1196_pp0_iter2_reg <= icmp_ln53_reg_1196_pp0_iter1_reg;
        icmp_ln53_reg_1196_pp0_iter3_reg <= icmp_ln53_reg_1196_pp0_iter2_reg;
        icmp_ln53_reg_1196_pp0_iter4_reg <= icmp_ln53_reg_1196_pp0_iter3_reg;
        icmp_ln53_reg_1196_pp0_iter5_reg <= icmp_ln53_reg_1196_pp0_iter4_reg;
        icmp_ln53_reg_1196_pp0_iter6_reg <= icmp_ln53_reg_1196_pp0_iter5_reg;
        icmp_ln53_reg_1196_pp0_iter7_reg <= icmp_ln53_reg_1196_pp0_iter6_reg;
        icmp_ln53_reg_1196_pp0_iter8_reg <= icmp_ln53_reg_1196_pp0_iter7_reg;
        icmp_ln53_reg_1196_pp0_iter9_reg <= icmp_ln53_reg_1196_pp0_iter8_reg;
        tmp_1_reg_1175 <= ap_sig_allocacmp_v19_1[32'd10];
        tmp_7_reg_1417 <= {{v19_1_reg_1166_pp0_iter15_reg[8:2]}};
        tmp_9_reg_1185 <= {{ap_sig_allocacmp_v19_1[9:2]}};
        trunc_ln47_reg_1412 <= trunc_ln47_fu_1076_p1;
        v19_1_reg_1166 <= ap_sig_allocacmp_v19_1;
        v19_1_reg_1166_pp0_iter10_reg <= v19_1_reg_1166_pp0_iter9_reg;
        v19_1_reg_1166_pp0_iter11_reg <= v19_1_reg_1166_pp0_iter10_reg;
        v19_1_reg_1166_pp0_iter12_reg <= v19_1_reg_1166_pp0_iter11_reg;
        v19_1_reg_1166_pp0_iter13_reg <= v19_1_reg_1166_pp0_iter12_reg;
        v19_1_reg_1166_pp0_iter14_reg <= v19_1_reg_1166_pp0_iter13_reg;
        v19_1_reg_1166_pp0_iter15_reg <= v19_1_reg_1166_pp0_iter14_reg;
        v19_1_reg_1166_pp0_iter1_reg <= v19_1_reg_1166;
        v19_1_reg_1166_pp0_iter2_reg <= v19_1_reg_1166_pp0_iter1_reg;
        v19_1_reg_1166_pp0_iter3_reg <= v19_1_reg_1166_pp0_iter2_reg;
        v19_1_reg_1166_pp0_iter4_reg <= v19_1_reg_1166_pp0_iter3_reg;
        v19_1_reg_1166_pp0_iter5_reg <= v19_1_reg_1166_pp0_iter4_reg;
        v19_1_reg_1166_pp0_iter6_reg <= v19_1_reg_1166_pp0_iter5_reg;
        v19_1_reg_1166_pp0_iter7_reg <= v19_1_reg_1166_pp0_iter6_reg;
        v19_1_reg_1166_pp0_iter8_reg <= v19_1_reg_1166_pp0_iter7_reg;
        v19_1_reg_1166_pp0_iter9_reg <= v19_1_reg_1166_pp0_iter8_reg;
        v23_3_reg_1407 <= v23_3_fu_1037_p19;
        v23_reg_1402 <= v23_fu_966_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln51_3_reg_1206[22 : 2] <= add_ln51_3_fu_704_p4[22 : 2];
        add_ln51_3_reg_1206_pp0_iter10_reg[22 : 2] <= add_ln51_3_reg_1206_pp0_iter9_reg[22 : 2];
        add_ln51_3_reg_1206_pp0_iter11_reg[22 : 2] <= add_ln51_3_reg_1206_pp0_iter10_reg[22 : 2];
        add_ln51_3_reg_1206_pp0_iter12_reg[22 : 2] <= add_ln51_3_reg_1206_pp0_iter11_reg[22 : 2];
        add_ln51_3_reg_1206_pp0_iter1_reg[22 : 2] <= add_ln51_3_reg_1206[22 : 2];
        add_ln51_3_reg_1206_pp0_iter2_reg[22 : 2] <= add_ln51_3_reg_1206_pp0_iter1_reg[22 : 2];
        add_ln51_3_reg_1206_pp0_iter3_reg[22 : 2] <= add_ln51_3_reg_1206_pp0_iter2_reg[22 : 2];
        add_ln51_3_reg_1206_pp0_iter4_reg[22 : 2] <= add_ln51_3_reg_1206_pp0_iter3_reg[22 : 2];
        add_ln51_3_reg_1206_pp0_iter5_reg[22 : 2] <= add_ln51_3_reg_1206_pp0_iter4_reg[22 : 2];
        add_ln51_3_reg_1206_pp0_iter6_reg[22 : 2] <= add_ln51_3_reg_1206_pp0_iter5_reg[22 : 2];
        add_ln51_3_reg_1206_pp0_iter7_reg[22 : 2] <= add_ln51_3_reg_1206_pp0_iter6_reg[22 : 2];
        add_ln51_3_reg_1206_pp0_iter8_reg[22 : 2] <= add_ln51_3_reg_1206_pp0_iter7_reg[22 : 2];
        add_ln51_3_reg_1206_pp0_iter9_reg[22 : 2] <= add_ln51_3_reg_1206_pp0_iter8_reg[22 : 2];
        add_ln51_reg_1200 <= add_ln51_fu_693_p2;
        add_ln51_reg_1200_pp0_iter10_reg <= add_ln51_reg_1200_pp0_iter9_reg;
        add_ln51_reg_1200_pp0_iter11_reg <= add_ln51_reg_1200_pp0_iter10_reg;
        add_ln51_reg_1200_pp0_iter12_reg <= add_ln51_reg_1200_pp0_iter11_reg;
        add_ln51_reg_1200_pp0_iter1_reg <= add_ln51_reg_1200;
        add_ln51_reg_1200_pp0_iter2_reg <= add_ln51_reg_1200_pp0_iter1_reg;
        add_ln51_reg_1200_pp0_iter3_reg <= add_ln51_reg_1200_pp0_iter2_reg;
        add_ln51_reg_1200_pp0_iter4_reg <= add_ln51_reg_1200_pp0_iter3_reg;
        add_ln51_reg_1200_pp0_iter5_reg <= add_ln51_reg_1200_pp0_iter4_reg;
        add_ln51_reg_1200_pp0_iter6_reg <= add_ln51_reg_1200_pp0_iter5_reg;
        add_ln51_reg_1200_pp0_iter7_reg <= add_ln51_reg_1200_pp0_iter6_reg;
        add_ln51_reg_1200_pp0_iter8_reg <= add_ln51_reg_1200_pp0_iter7_reg;
        add_ln51_reg_1200_pp0_iter9_reg <= add_ln51_reg_1200_pp0_iter8_reg;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        v23_1_reg_1352 <= v23_1_fu_812_p19;
        v23_2_reg_1357 <= v23_2_fu_883_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_594 <= grp_fu_374_p_dout0;
        reg_600 <= grp_fu_560_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln2_reg_1307 <= {{grp_fu_569_p2[45:43]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln51_1_reg_1212 <= {{grp_fu_564_p2[45:43]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln51_2_reg_1257 <= {{grp_fu_564_p2[45:43]}};
        trunc_ln51_3_reg_1302 <= {{grp_fu_569_p2[45:43]}};
    end
end
always @ (*) begin
    if (((tmp_1_reg_1175 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter15_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to16 = 1'b1;
    end else begin
        ap_idle_pp0_1to16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v19_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_1 = v19_fu_124;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter14 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_556_p1 = v23_reg_1402;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_556_p1 = v23_1_reg_1352;
        end else begin
            grp_fu_556_p1 = 'bx;
        end
    end else begin
        grp_fu_556_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter14 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_560_p1 = v23_3_reg_1407;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_560_p1 = v23_2_reg_1357;
        end else begin
            grp_fu_560_p1 = 'bx;
        end
    end else begin
        grp_fu_560_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_564_p0 = zext_ln51_9_fu_756_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_564_p0 = zext_ln51_8_fu_728_p1;
    end else begin
        grp_fu_564_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_569_p0 = zext_ln51_7_fu_776_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_569_p0 = zext_ln51_10_fu_760_p1;
        end else begin
            grp_fu_569_p0 = 'bx;
        end
    end else begin
        grp_fu_569_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_0_address0_local = zext_ln51_6_fu_922_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address0_local = zext_ln51_4_fu_744_p1;
        end else begin
            v0_0_address0_local = 'bx;
        end
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_0_address1_local = zext_ln51_fu_764_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address1_local = zext_ln51_2_fu_732_p1;
        end else begin
            v0_0_address1_local = 'bx;
        end
    end else begin
        v0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce1_local = 1'b1;
    end else begin
        v0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_1_address0_local = zext_ln51_6_fu_922_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address0_local = zext_ln51_4_fu_744_p1;
        end else begin
            v0_1_address0_local = 'bx;
        end
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_1_address1_local = zext_ln51_fu_764_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address1_local = zext_ln51_2_fu_732_p1;
        end else begin
            v0_1_address1_local = 'bx;
        end
    end else begin
        v0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce1_local = 1'b1;
    end else begin
        v0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_2_address0_local = zext_ln51_6_fu_922_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_2_address0_local = zext_ln51_4_fu_744_p1;
        end else begin
            v0_2_address0_local = 'bx;
        end
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_2_address1_local = zext_ln51_fu_764_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_2_address1_local = zext_ln51_2_fu_732_p1;
        end else begin
            v0_2_address1_local = 'bx;
        end
    end else begin
        v0_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce1_local = 1'b1;
    end else begin
        v0_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_3_address0_local = zext_ln51_6_fu_922_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_3_address0_local = zext_ln51_4_fu_744_p1;
        end else begin
            v0_3_address0_local = 'bx;
        end
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_3_address1_local = zext_ln51_fu_764_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_3_address1_local = zext_ln51_2_fu_732_p1;
        end else begin
            v0_3_address1_local = 'bx;
        end
    end else begin
        v0_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce1_local = 1'b1;
    end else begin
        v0_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_4_address0_local = zext_ln51_6_fu_922_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_4_address0_local = zext_ln51_4_fu_744_p1;
        end else begin
            v0_4_address0_local = 'bx;
        end
    end else begin
        v0_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_4_address1_local = zext_ln51_fu_764_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_4_address1_local = zext_ln51_2_fu_732_p1;
        end else begin
            v0_4_address1_local = 'bx;
        end
    end else begin
        v0_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_4_ce1_local = 1'b1;
    end else begin
        v0_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_5_address0_local = zext_ln51_6_fu_922_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_5_address0_local = zext_ln51_4_fu_744_p1;
        end else begin
            v0_5_address0_local = 'bx;
        end
    end else begin
        v0_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_5_address1_local = zext_ln51_fu_764_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_5_address1_local = zext_ln51_2_fu_732_p1;
        end else begin
            v0_5_address1_local = 'bx;
        end
    end else begin
        v0_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_5_ce1_local = 1'b1;
    end else begin
        v0_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_6_address0_local = zext_ln51_6_fu_922_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_6_address0_local = zext_ln51_4_fu_744_p1;
        end else begin
            v0_6_address0_local = 'bx;
        end
    end else begin
        v0_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_6_address1_local = zext_ln51_fu_764_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_6_address1_local = zext_ln51_2_fu_732_p1;
        end else begin
            v0_6_address1_local = 'bx;
        end
    end else begin
        v0_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_6_ce1_local = 1'b1;
    end else begin
        v0_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_7_address0_local = zext_ln51_6_fu_922_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_7_address0_local = zext_ln51_4_fu_744_p1;
        end else begin
            v0_7_address0_local = 'bx;
        end
    end else begin
        v0_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_7_address1_local = zext_ln51_fu_764_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_7_address1_local = zext_ln51_2_fu_732_p1;
        end else begin
            v0_7_address1_local = 'bx;
        end
    end else begin
        v0_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_7_ce1_local = 1'b1;
    end else begin
        v0_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter16 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_1_address0_local = zext_ln51_5_fu_1137_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_1_address0_local = zext_ln51_3_fu_1119_p1;
        end else begin
            v3_1_address0_local = 'bx;
        end
    end else begin
        v3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter16 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_1_address1_local = zext_ln48_fu_1125_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_1_address1_local = zext_ln51_1_fu_1096_p1;
        end else begin
            v3_1_address1_local = 'bx;
        end
    end else begin
        v3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_1_ce1_local = 1'b1;
    end else begin
        v3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_1196_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_1196_pp0_iter16_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_1196_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_1196_pp0_iter16_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_1_we1_local = 1'b1;
    end else begin
        v3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter16 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address0_local = zext_ln51_5_fu_1137_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address0_local = zext_ln51_3_fu_1119_p1;
        end else begin
            v3_address0_local = 'bx;
        end
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter16 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address1_local = zext_ln48_fu_1125_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address1_local = zext_ln51_1_fu_1096_p1;
        end else begin
            v3_address1_local = 'bx;
        end
    end else begin
        v3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_1196_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_1196_pp0_iter16_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_1196_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_1196_pp0_iter16_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_we1_local = 1'b1;
    end else begin
        v3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to16 == 1'b1) & (ap_start_int == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln47_fu_718_p2 = (v19_1_reg_1166 + 11'd4);
assign add_ln51_1_fu_632_p4 = {{{v5}, {tmp_6_fu_622_p4}}, {1'd1}};
assign add_ln51_2_fu_658_p4 = {{{v5}, {tmp_9_fu_648_p4}}, {2'd2}};
assign add_ln51_3_fu_704_p4 = {{{v5}, {tmp_9_reg_1185}}, {2'd3}};
assign add_ln51_fu_693_p2 = (zext_ln47_fu_690_p1 + tmp);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_374_p_ce = 1'b1;
assign grp_fu_374_p_din0 = v22;
assign grp_fu_374_p_din1 = grp_fu_556_p1;
assign grp_fu_564_p1 = 47'd15270995;
assign grp_fu_569_p1 = 47'd15270995;
assign grp_fu_642_p0 = {{{v5}, {tmp_6_fu_622_p4}}, {1'd1}};
assign grp_fu_642_p1 = 23'd576000;
assign grp_fu_668_p0 = {{{v5}, {tmp_9_fu_648_p4}}, {2'd2}};
assign grp_fu_668_p1 = 23'd576000;
assign grp_fu_698_p0 = (zext_ln47_fu_690_p1 + tmp);
assign grp_fu_698_p1 = 23'd576000;
assign grp_fu_712_p0 = {{{v5}, {tmp_9_reg_1185}}, {2'd3}};
assign grp_fu_712_p1 = 23'd576000;
assign icmp_ln53_fu_684_p2 = ((tmp_2_fu_674_p4 == 2'd0) ? 1'b1 : 1'b0);
assign or_ln1_fu_1088_p3 = {{tmp_5_fu_1079_p4}, {1'd1}};
assign or_ln48_1_fu_1111_p3 = {{tmp_7_fu_1102_p4}, {2'd2}};
assign or_ln48_2_fu_1130_p3 = {{tmp_7_reg_1417}, {2'd3}};
assign tmp_1_fu_614_p3 = ap_sig_allocacmp_v19_1[32'd10];
assign tmp_2_fu_674_p4 = {{ap_sig_allocacmp_v19_1[10:9]}};
assign tmp_5_fu_1079_p4 = {{v19_1_reg_1166_pp0_iter15_reg[8:1]}};
assign tmp_6_fu_622_p4 = {{ap_sig_allocacmp_v19_1[9:1]}};
assign tmp_7_fu_1102_p4 = {{v19_1_reg_1166_pp0_iter15_reg[8:2]}};
assign tmp_9_fu_648_p4 = {{ap_sig_allocacmp_v19_1[9:2]}};
assign trunc_ln47_fu_1076_p1 = v19_1_reg_1166_pp0_iter15_reg[8:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_address1 = v0_0_address1_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_address1 = v0_1_address1_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_address1 = v0_2_address1_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_2_ce1 = v0_2_ce1_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_address1 = v0_3_address1_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_3_ce1 = v0_3_ce1_local;
assign v0_4_address0 = v0_4_address0_local;
assign v0_4_address1 = v0_4_address1_local;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_4_ce1 = v0_4_ce1_local;
assign v0_5_address0 = v0_5_address0_local;
assign v0_5_address1 = v0_5_address1_local;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_5_ce1 = v0_5_ce1_local;
assign v0_6_address0 = v0_6_address0_local;
assign v0_6_address1 = v0_6_address1_local;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_6_ce1 = v0_6_ce1_local;
assign v0_7_address0 = v0_7_address0_local;
assign v0_7_address1 = v0_7_address1_local;
assign v0_7_ce0 = v0_7_ce0_local;
assign v0_7_ce1 = v0_7_ce1_local;
assign v23_1_fu_812_p10 = v0_4_q1;
assign v23_1_fu_812_p12 = v0_5_q1;
assign v23_1_fu_812_p14 = v0_6_q1;
assign v23_1_fu_812_p16 = v0_7_q1;
assign v23_1_fu_812_p17 = 'bx;
assign v23_1_fu_812_p2 = v0_0_q1;
assign v23_1_fu_812_p4 = v0_1_q1;
assign v23_1_fu_812_p6 = v0_2_q1;
assign v23_1_fu_812_p8 = v0_3_q1;
assign v23_2_fu_883_p10 = v0_4_q0;
assign v23_2_fu_883_p12 = v0_5_q0;
assign v23_2_fu_883_p14 = v0_6_q0;
assign v23_2_fu_883_p16 = v0_7_q0;
assign v23_2_fu_883_p17 = 'bx;
assign v23_2_fu_883_p2 = v0_0_q0;
assign v23_2_fu_883_p4 = v0_1_q0;
assign v23_2_fu_883_p6 = v0_2_q0;
assign v23_2_fu_883_p8 = v0_3_q0;
assign v23_3_fu_1037_p10 = v0_4_q0;
assign v23_3_fu_1037_p12 = v0_5_q0;
assign v23_3_fu_1037_p14 = v0_6_q0;
assign v23_3_fu_1037_p16 = v0_7_q0;
assign v23_3_fu_1037_p17 = 'bx;
assign v23_3_fu_1037_p2 = v0_0_q0;
assign v23_3_fu_1037_p4 = v0_1_q0;
assign v23_3_fu_1037_p6 = v0_2_q0;
assign v23_3_fu_1037_p8 = v0_3_q0;
assign v23_fu_966_p10 = v0_4_q1;
assign v23_fu_966_p12 = v0_5_q1;
assign v23_fu_966_p14 = v0_6_q1;
assign v23_fu_966_p16 = v0_7_q1;
assign v23_fu_966_p17 = 'bx;
assign v23_fu_966_p2 = v0_0_q1;
assign v23_fu_966_p4 = v0_1_q1;
assign v23_fu_966_p6 = v0_2_q1;
assign v23_fu_966_p8 = v0_3_q1;
assign v3_1_address0 = v3_1_address0_local;
assign v3_1_address1 = v3_1_address1_local;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_ce1 = v3_1_ce1_local;
assign v3_1_d0 = reg_600;
assign v3_1_d1 = reg_594;
assign v3_1_we0 = v3_1_we0_local;
assign v3_1_we1 = v3_1_we1_local;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign v3_d0 = reg_600;
assign v3_d1 = reg_594;
assign v3_we0 = v3_we0_local;
assign v3_we1 = v3_we1_local;
assign zext_ln47_fu_690_p1 = v19_1_reg_1166;
assign zext_ln48_fu_1125_p1 = trunc_ln47_reg_1412;
assign zext_ln51_10_fu_760_p1 = add_ln51_3_reg_1206_pp0_iter12_reg;
assign zext_ln51_1_fu_1096_p1 = or_ln1_fu_1088_p3;
assign zext_ln51_2_fu_732_p1 = grp_fu_642_p2;
assign zext_ln51_3_fu_1119_p1 = or_ln48_1_fu_1111_p3;
assign zext_ln51_4_fu_744_p1 = grp_fu_668_p2;
assign zext_ln51_5_fu_1137_p1 = or_ln48_2_fu_1130_p3;
assign zext_ln51_6_fu_922_p1 = grp_fu_712_p2;
assign zext_ln51_7_fu_776_p1 = add_ln51_reg_1200_pp0_iter12_reg;
assign zext_ln51_8_fu_728_p1 = add_ln51_1_reg_1179_pp0_iter12_reg;
assign zext_ln51_9_fu_756_p1 = add_ln51_2_reg_1190_pp0_iter12_reg;
assign zext_ln51_fu_764_p1 = grp_fu_698_p2;
always @ (posedge ap_clk) begin
    add_ln51_1_reg_1179[0] <= 1'b1;
    add_ln51_1_reg_1179_pp0_iter1_reg[0] <= 1'b1;
    add_ln51_1_reg_1179_pp0_iter2_reg[0] <= 1'b1;
    add_ln51_1_reg_1179_pp0_iter3_reg[0] <= 1'b1;
    add_ln51_1_reg_1179_pp0_iter4_reg[0] <= 1'b1;
    add_ln51_1_reg_1179_pp0_iter5_reg[0] <= 1'b1;
    add_ln51_1_reg_1179_pp0_iter6_reg[0] <= 1'b1;
    add_ln51_1_reg_1179_pp0_iter7_reg[0] <= 1'b1;
    add_ln51_1_reg_1179_pp0_iter8_reg[0] <= 1'b1;
    add_ln51_1_reg_1179_pp0_iter9_reg[0] <= 1'b1;
    add_ln51_1_reg_1179_pp0_iter10_reg[0] <= 1'b1;
    add_ln51_1_reg_1179_pp0_iter11_reg[0] <= 1'b1;
    add_ln51_1_reg_1179_pp0_iter12_reg[0] <= 1'b1;
    add_ln51_2_reg_1190[1:0] <= 2'b10;
    add_ln51_2_reg_1190_pp0_iter1_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1190_pp0_iter2_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1190_pp0_iter3_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1190_pp0_iter4_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1190_pp0_iter5_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1190_pp0_iter6_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1190_pp0_iter7_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1190_pp0_iter8_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1190_pp0_iter9_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1190_pp0_iter10_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1190_pp0_iter11_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1190_pp0_iter12_reg[1:0] <= 2'b10;
    add_ln51_3_reg_1206[1:0] <= 2'b11;
    add_ln51_3_reg_1206_pp0_iter1_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1206_pp0_iter2_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1206_pp0_iter3_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1206_pp0_iter4_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1206_pp0_iter5_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1206_pp0_iter6_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1206_pp0_iter7_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1206_pp0_iter8_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1206_pp0_iter9_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1206_pp0_iter10_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1206_pp0_iter11_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1206_pp0_iter12_reg[1:0] <= 2'b11;
end
endmodule 