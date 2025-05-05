module syrk_syrk_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A0_address0,buff_A0_ce0,buff_A0_q0,buff_A0_1_address0,buff_A0_1_ce0,buff_A0_1_q0,buff_A0_2_address0,buff_A0_2_ce0,buff_A0_2_q0,buff_A0_3_address0,buff_A0_3_ce0,buff_A0_3_q0,buff_A1_address0,buff_A1_ce0,buff_A1_q0,buff_A1_1_address0,buff_A1_1_ce0,buff_A1_1_q0,buff_A1_2_address0,buff_A1_2_ce0,buff_A1_2_q0,buff_A1_3_address0,buff_A1_3_ce0,buff_A1_3_q0,alpha,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_q0,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_1_q0,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_we0,buff_C_out_2_d0,buff_C_out_2_q0,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_we0,buff_C_out_3_d0,buff_C_out_3_q0,buff_C_out_4_address0,buff_C_out_4_ce0,buff_C_out_4_we0,buff_C_out_4_d0,buff_C_out_4_q0,buff_C_out_5_address0,buff_C_out_5_ce0,buff_C_out_5_we0,buff_C_out_5_d0,buff_C_out_5_q0,buff_C_out_6_address0,buff_C_out_6_ce0,buff_C_out_6_we0,buff_C_out_6_d0,buff_C_out_6_q0,buff_C_out_7_address0,buff_C_out_7_ce0,buff_C_out_7_we0,buff_C_out_7_d0,buff_C_out_7_q0,buff_C_out_8_address0,buff_C_out_8_ce0,buff_C_out_8_we0,buff_C_out_8_d0,buff_C_out_8_q0,buff_C_out_9_address0,buff_C_out_9_ce0,buff_C_out_9_we0,buff_C_out_9_d0,buff_C_out_9_q0,buff_C_out_10_address0,buff_C_out_10_ce0,buff_C_out_10_we0,buff_C_out_10_d0,buff_C_out_10_q0,buff_C_out_11_address0,buff_C_out_11_ce0,buff_C_out_11_we0,buff_C_out_11_d0,buff_C_out_11_q0,buff_C_out_12_address0,buff_C_out_12_ce0,buff_C_out_12_we0,buff_C_out_12_d0,buff_C_out_12_q0,buff_C_out_13_address0,buff_C_out_13_ce0,buff_C_out_13_we0,buff_C_out_13_d0,buff_C_out_13_q0,buff_C_out_14_address0,buff_C_out_14_ce0,buff_C_out_14_we0,buff_C_out_14_d0,buff_C_out_14_q0,buff_C_out_15_address0,buff_C_out_15_ce0,buff_C_out_15_we0,buff_C_out_15_d0,buff_C_out_15_q0,grp_fu_440_p_din0,grp_fu_440_p_din1,grp_fu_440_p_opcode,grp_fu_440_p_dout0,grp_fu_440_p_ce,grp_fu_444_p_din0,grp_fu_444_p_din1,grp_fu_444_p_dout0,grp_fu_444_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 15'd1;
parameter    ap_ST_fsm_pp0_stage1 = 15'd2;
parameter    ap_ST_fsm_pp0_stage2 = 15'd4;
parameter    ap_ST_fsm_pp0_stage3 = 15'd8;
parameter    ap_ST_fsm_pp0_stage4 = 15'd16;
parameter    ap_ST_fsm_pp0_stage5 = 15'd32;
parameter    ap_ST_fsm_pp0_stage6 = 15'd64;
parameter    ap_ST_fsm_pp0_stage7 = 15'd128;
parameter    ap_ST_fsm_pp0_stage8 = 15'd256;
parameter    ap_ST_fsm_pp0_stage9 = 15'd512;
parameter    ap_ST_fsm_pp0_stage10 = 15'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 15'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 15'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 15'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 15'd16384;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] buff_A0_address0;
output   buff_A0_ce0;
input  [31:0] buff_A0_q0;
output  [9:0] buff_A0_1_address0;
output   buff_A0_1_ce0;
input  [31:0] buff_A0_1_q0;
output  [9:0] buff_A0_2_address0;
output   buff_A0_2_ce0;
input  [31:0] buff_A0_2_q0;
output  [9:0] buff_A0_3_address0;
output   buff_A0_3_ce0;
input  [31:0] buff_A0_3_q0;
output  [9:0] buff_A1_address0;
output   buff_A1_ce0;
input  [31:0] buff_A1_q0;
output  [9:0] buff_A1_1_address0;
output   buff_A1_1_ce0;
input  [31:0] buff_A1_1_q0;
output  [9:0] buff_A1_2_address0;
output   buff_A1_2_ce0;
input  [31:0] buff_A1_2_q0;
output  [9:0] buff_A1_3_address0;
output   buff_A1_3_ce0;
input  [31:0] buff_A1_3_q0;
input  [31:0] alpha;
output  [7:0] buff_C_out_address0;
output   buff_C_out_ce0;
output   buff_C_out_we0;
output  [31:0] buff_C_out_d0;
input  [31:0] buff_C_out_q0;
output  [7:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
output   buff_C_out_1_we0;
output  [31:0] buff_C_out_1_d0;
input  [31:0] buff_C_out_1_q0;
output  [7:0] buff_C_out_2_address0;
output   buff_C_out_2_ce0;
output   buff_C_out_2_we0;
output  [31:0] buff_C_out_2_d0;
input  [31:0] buff_C_out_2_q0;
output  [7:0] buff_C_out_3_address0;
output   buff_C_out_3_ce0;
output   buff_C_out_3_we0;
output  [31:0] buff_C_out_3_d0;
input  [31:0] buff_C_out_3_q0;
output  [7:0] buff_C_out_4_address0;
output   buff_C_out_4_ce0;
output   buff_C_out_4_we0;
output  [31:0] buff_C_out_4_d0;
input  [31:0] buff_C_out_4_q0;
output  [7:0] buff_C_out_5_address0;
output   buff_C_out_5_ce0;
output   buff_C_out_5_we0;
output  [31:0] buff_C_out_5_d0;
input  [31:0] buff_C_out_5_q0;
output  [7:0] buff_C_out_6_address0;
output   buff_C_out_6_ce0;
output   buff_C_out_6_we0;
output  [31:0] buff_C_out_6_d0;
input  [31:0] buff_C_out_6_q0;
output  [7:0] buff_C_out_7_address0;
output   buff_C_out_7_ce0;
output   buff_C_out_7_we0;
output  [31:0] buff_C_out_7_d0;
input  [31:0] buff_C_out_7_q0;
output  [7:0] buff_C_out_8_address0;
output   buff_C_out_8_ce0;
output   buff_C_out_8_we0;
output  [31:0] buff_C_out_8_d0;
input  [31:0] buff_C_out_8_q0;
output  [7:0] buff_C_out_9_address0;
output   buff_C_out_9_ce0;
output   buff_C_out_9_we0;
output  [31:0] buff_C_out_9_d0;
input  [31:0] buff_C_out_9_q0;
output  [7:0] buff_C_out_10_address0;
output   buff_C_out_10_ce0;
output   buff_C_out_10_we0;
output  [31:0] buff_C_out_10_d0;
input  [31:0] buff_C_out_10_q0;
output  [7:0] buff_C_out_11_address0;
output   buff_C_out_11_ce0;
output   buff_C_out_11_we0;
output  [31:0] buff_C_out_11_d0;
input  [31:0] buff_C_out_11_q0;
output  [7:0] buff_C_out_12_address0;
output   buff_C_out_12_ce0;
output   buff_C_out_12_we0;
output  [31:0] buff_C_out_12_d0;
input  [31:0] buff_C_out_12_q0;
output  [7:0] buff_C_out_13_address0;
output   buff_C_out_13_ce0;
output   buff_C_out_13_we0;
output  [31:0] buff_C_out_13_d0;
input  [31:0] buff_C_out_13_q0;
output  [7:0] buff_C_out_14_address0;
output   buff_C_out_14_ce0;
output   buff_C_out_14_we0;
output  [31:0] buff_C_out_14_d0;
input  [31:0] buff_C_out_14_q0;
output  [7:0] buff_C_out_15_address0;
output   buff_C_out_15_ce0;
output   buff_C_out_15_we0;
output  [31:0] buff_C_out_15_d0;
input  [31:0] buff_C_out_15_q0;
output  [31:0] grp_fu_440_p_din0;
output  [31:0] grp_fu_440_p_din1;
output  [1:0] grp_fu_440_p_opcode;
input  [31:0] grp_fu_440_p_dout0;
output   grp_fu_440_p_ce;
output  [31:0] grp_fu_444_p_din0;
output  [31:0] grp_fu_444_p_din1;
input  [31:0] grp_fu_444_p_dout0;
output   grp_fu_444_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] icmp_ln20_reg_999;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [31:0] reg_468;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage10_11001;
reg   [31:0] reg_474;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln20_fu_526_p2;
wire   [0:0] icmp_ln21_fu_538_p2;
reg   [0:0] icmp_ln21_reg_1003;
wire   [0:0] first_iter_1_fu_653_p2;
reg   [0:0] first_iter_1_reg_1011;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [1:0] trunc_ln20_fu_659_p1;
reg   [1:0] trunc_ln20_reg_1015;
reg   [1:0] trunc_ln20_reg_1015_pp0_iter1_reg;
wire   [1:0] trunc_ln21_1_fu_663_p1;
reg   [1:0] trunc_ln21_1_reg_1023;
reg   [1:0] trunc_ln21_1_reg_1023_pp0_iter1_reg;
reg   [7:0] buff_C_out_addr_reg_1028;
reg   [7:0] buff_C_out_addr_reg_1028_pp0_iter1_reg;
reg   [7:0] buff_C_out_1_addr_reg_1033;
reg   [7:0] buff_C_out_1_addr_reg_1033_pp0_iter1_reg;
reg   [7:0] buff_C_out_2_addr_reg_1038;
reg   [7:0] buff_C_out_2_addr_reg_1038_pp0_iter1_reg;
reg   [7:0] buff_C_out_3_addr_reg_1043;
reg   [7:0] buff_C_out_3_addr_reg_1043_pp0_iter1_reg;
reg   [7:0] buff_C_out_4_addr_reg_1048;
reg   [7:0] buff_C_out_4_addr_reg_1048_pp0_iter1_reg;
reg   [7:0] buff_C_out_5_addr_reg_1053;
reg   [7:0] buff_C_out_5_addr_reg_1053_pp0_iter1_reg;
reg   [7:0] buff_C_out_6_addr_reg_1058;
reg   [7:0] buff_C_out_6_addr_reg_1058_pp0_iter1_reg;
reg   [7:0] buff_C_out_7_addr_reg_1063;
reg   [7:0] buff_C_out_7_addr_reg_1063_pp0_iter1_reg;
reg   [7:0] buff_C_out_8_addr_reg_1068;
reg   [7:0] buff_C_out_8_addr_reg_1068_pp0_iter1_reg;
reg   [7:0] buff_C_out_9_addr_reg_1073;
reg   [7:0] buff_C_out_9_addr_reg_1073_pp0_iter1_reg;
reg   [7:0] buff_C_out_10_addr_reg_1078;
reg   [7:0] buff_C_out_10_addr_reg_1078_pp0_iter1_reg;
reg   [7:0] buff_C_out_11_addr_reg_1083;
reg   [7:0] buff_C_out_11_addr_reg_1083_pp0_iter1_reg;
reg   [7:0] buff_C_out_12_addr_reg_1088;
reg   [7:0] buff_C_out_12_addr_reg_1088_pp0_iter1_reg;
reg   [7:0] buff_C_out_13_addr_reg_1093;
reg   [7:0] buff_C_out_13_addr_reg_1093_pp0_iter1_reg;
reg   [7:0] buff_C_out_14_addr_reg_1098;
reg   [7:0] buff_C_out_14_addr_reg_1098_pp0_iter1_reg;
reg   [7:0] buff_C_out_15_addr_reg_1103;
reg   [7:0] buff_C_out_15_addr_reg_1103_pp0_iter1_reg;
wire   [0:0] icmp_ln24_1_fu_761_p2;
reg   [0:0] icmp_ln24_1_reg_1148;
reg   [0:0] tmp_6_reg_1156;
reg   [0:0] tmp_6_reg_1156_pp0_iter1_reg;
wire   [31:0] tmp_4_fu_888_p11;
reg   [31:0] tmp_4_reg_1160;
wire   [31:0] select_ln24_fu_911_p3;
reg   [31:0] select_ln24_reg_1165;
wire   [31:0] select_ln24_1_fu_918_p3;
reg   [31:0] select_ln24_1_reg_1170;
wire   [31:0] select_ln24_2_fu_925_p3;
reg   [31:0] select_ln24_2_reg_1175;
wire   [31:0] select_ln24_3_fu_932_p3;
reg   [31:0] select_ln24_3_reg_1180;
reg   [31:0] mul_1_reg_1185;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [31:0] mul50_1_reg_1195;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] tmp_12_cast_fu_695_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln24_fu_737_p1;
wire   [63:0] zext_ln24_1_fu_753_p1;
reg   [6:0] k_fu_118;
wire   [6:0] add_ln23_fu_767_p2;
wire    ap_loop_init;
reg   [6:0] j_fu_122;
wire   [6:0] select_ln21_fu_641_p3;
reg   [12:0] indvar_flatten7_fu_126;
wire   [12:0] select_ln21_1_fu_550_p3;
reg   [12:0] ap_sig_allocacmp_indvar_flatten7_load;
wire    ap_block_pp0_stage0;
reg   [6:0] i_1_fu_130;
wire   [6:0] select_ln20_fu_616_p3;
reg   [17:0] indvar_flatten21_fu_134;
wire   [17:0] add_ln20_1_fu_532_p2;
reg   [17:0] ap_sig_allocacmp_indvar_flatten21_load;
reg   [31:0] empty_fu_138;
wire    ap_block_pp0_stage11;
reg    buff_C_out_ce0_local;
reg   [7:0] buff_C_out_address0_local;
reg    buff_C_out_we0_local;
reg    ap_predicate_pred521_state26;
wire    ap_block_pp0_stage10;
reg    buff_C_out_1_ce0_local;
reg   [7:0] buff_C_out_1_address0_local;
reg    buff_C_out_1_we0_local;
reg    ap_predicate_pred538_state26;
reg    buff_C_out_2_ce0_local;
reg   [7:0] buff_C_out_2_address0_local;
reg    buff_C_out_2_we0_local;
reg    ap_predicate_pred549_state26;
reg    buff_C_out_3_ce0_local;
reg   [7:0] buff_C_out_3_address0_local;
reg    buff_C_out_3_we0_local;
reg    ap_predicate_pred560_state26;
reg    buff_C_out_4_ce0_local;
reg   [7:0] buff_C_out_4_address0_local;
reg    buff_C_out_4_we0_local;
reg    ap_predicate_pred571_state26;
reg    buff_C_out_5_ce0_local;
reg   [7:0] buff_C_out_5_address0_local;
reg    buff_C_out_5_we0_local;
reg    ap_predicate_pred580_state26;
reg    buff_C_out_6_ce0_local;
reg   [7:0] buff_C_out_6_address0_local;
reg    buff_C_out_6_we0_local;
reg    ap_predicate_pred589_state26;
reg    buff_C_out_7_ce0_local;
reg   [7:0] buff_C_out_7_address0_local;
reg    buff_C_out_7_we0_local;
reg    ap_predicate_pred598_state26;
reg    buff_C_out_8_ce0_local;
reg   [7:0] buff_C_out_8_address0_local;
reg    buff_C_out_8_we0_local;
reg    ap_predicate_pred609_state26;
reg    buff_C_out_9_ce0_local;
reg   [7:0] buff_C_out_9_address0_local;
reg    buff_C_out_9_we0_local;
reg    ap_predicate_pred618_state26;
reg    buff_C_out_10_ce0_local;
reg   [7:0] buff_C_out_10_address0_local;
reg    buff_C_out_10_we0_local;
reg    ap_predicate_pred627_state26;
reg    buff_C_out_11_ce0_local;
reg   [7:0] buff_C_out_11_address0_local;
reg    buff_C_out_11_we0_local;
reg    ap_predicate_pred636_state26;
reg    buff_C_out_12_ce0_local;
reg   [7:0] buff_C_out_12_address0_local;
reg    buff_C_out_12_we0_local;
reg    ap_predicate_pred647_state26;
reg    buff_C_out_13_ce0_local;
reg   [7:0] buff_C_out_13_address0_local;
reg    buff_C_out_13_we0_local;
reg    ap_predicate_pred656_state26;
reg    buff_C_out_14_ce0_local;
reg   [7:0] buff_C_out_14_address0_local;
reg    buff_C_out_14_we0_local;
reg    ap_predicate_pred665_state26;
reg    buff_C_out_15_ce0_local;
reg   [7:0] buff_C_out_15_address0_local;
reg    buff_C_out_15_we0_local;
reg    ap_predicate_pred674_state26;
reg    buff_A0_ce0_local;
reg    buff_A0_2_ce0_local;
reg    buff_A1_ce0_local;
reg    buff_A1_2_ce0_local;
reg    buff_A0_1_ce0_local;
reg    buff_A0_3_ce0_local;
reg    buff_A1_1_ce0_local;
reg    buff_A1_3_ce0_local;
reg   [31:0] grp_fu_460_p0;
reg   [31:0] grp_fu_460_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
reg   [31:0] grp_fu_464_p0;
reg   [31:0] grp_fu_464_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage7;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8;
wire   [12:0] add_ln21_1_fu_544_p2;
wire   [0:0] tmp_5_fu_597_p3;
wire   [0:0] xor_ln23_fu_605_p2;
wire   [6:0] add_ln20_fu_577_p2;
wire   [6:0] select_ln5_fu_583_p3;
wire   [0:0] or_ln5_fu_611_p2;
wire   [6:0] select_ln5_1_fu_590_p3;
wire   [6:0] add_ln21_fu_627_p2;
wire   [6:0] k_mid2_fu_633_p3;
wire   [3:0] tmp_11_fu_677_p4;
wire   [3:0] lshr_ln5_4_fu_667_p4;
wire   [7:0] tmp_12_fu_687_p3;
wire   [5:0] trunc_ln21_fu_623_p1;
wire   [3:0] lshr_ln5_6_fu_719_p4;
wire   [9:0] tmp_13_fu_729_p3;
wire   [5:0] empty_12_fu_649_p1;
wire   [9:0] tmp_14_fu_745_p3;
wire   [1:0] trunc_ln23_fu_715_p1;
wire   [31:0] tmp_fu_796_p9;
wire    ap_block_pp0_stage2;
wire   [31:0] tmp_1_fu_819_p9;
wire   [31:0] tmp_2_fu_842_p9;
wire   [31:0] tmp_3_fu_865_p9;
wire   [31:0] tmp_fu_796_p11;
wire   [31:0] tmp_1_fu_819_p11;
wire   [31:0] tmp_2_fu_842_p11;
wire   [31:0] tmp_3_fu_865_p11;
wire   [31:0] tmp_4_fu_888_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [14:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_condition_1071;
wire   [1:0] tmp_fu_796_p1;
wire   [1:0] tmp_fu_796_p3;
wire  signed [1:0] tmp_fu_796_p5;
wire  signed [1:0] tmp_fu_796_p7;
wire   [1:0] tmp_1_fu_819_p1;
wire   [1:0] tmp_1_fu_819_p3;
wire  signed [1:0] tmp_1_fu_819_p5;
wire  signed [1:0] tmp_1_fu_819_p7;
wire   [1:0] tmp_2_fu_842_p1;
wire   [1:0] tmp_2_fu_842_p3;
wire  signed [1:0] tmp_2_fu_842_p5;
wire  signed [1:0] tmp_2_fu_842_p7;
wire   [1:0] tmp_3_fu_865_p1;
wire   [1:0] tmp_3_fu_865_p3;
wire  signed [1:0] tmp_3_fu_865_p5;
wire  signed [1:0] tmp_3_fu_865_p7;
wire   [1:0] tmp_4_fu_888_p1;
wire   [1:0] tmp_4_fu_888_p3;
wire  signed [1:0] tmp_4_fu_888_p5;
wire  signed [1:0] tmp_4_fu_888_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_118 = 7'd0;
#0 j_fu_122 = 7'd0;
#0 indvar_flatten7_fu_126 = 13'd0;
#0 i_1_fu_130 = 7'd0;
#0 indvar_flatten21_fu_134 = 18'd0;
#0 empty_fu_138 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U51(.din0(buff_C_out_q0),.din1(buff_C_out_1_q0),.din2(buff_C_out_2_q0),.din3(buff_C_out_3_q0),.def(tmp_fu_796_p9),.sel(trunc_ln20_reg_1015),.dout(tmp_fu_796_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U52(.din0(buff_C_out_4_q0),.din1(buff_C_out_5_q0),.din2(buff_C_out_6_q0),.din3(buff_C_out_7_q0),.def(tmp_1_fu_819_p9),.sel(trunc_ln20_reg_1015),.dout(tmp_1_fu_819_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U53(.din0(buff_C_out_8_q0),.din1(buff_C_out_9_q0),.din2(buff_C_out_10_q0),.din3(buff_C_out_11_q0),.def(tmp_2_fu_842_p9),.sel(trunc_ln20_reg_1015),.dout(tmp_2_fu_842_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U54(.din0(buff_C_out_12_q0),.din1(buff_C_out_13_q0),.din2(buff_C_out_14_q0),.din3(buff_C_out_15_q0),.def(tmp_3_fu_865_p9),.sel(trunc_ln20_reg_1015),.dout(tmp_3_fu_865_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U55(.din0(tmp_fu_796_p11),.din1(tmp_1_fu_819_p11),.din2(tmp_2_fu_842_p11),.din3(tmp_3_fu_865_p11),.def(tmp_4_fu_888_p9),.sel(trunc_ln21_1_reg_1023),.dout(tmp_4_fu_888_p11));
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage10),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        if ((1'b1 == ap_condition_1071)) begin
            empty_fu_138 <= tmp_4_reg_1160;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_138 <= reg_474;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_130 <= 7'd0;
    end else if (((icmp_ln20_reg_999 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_1_fu_130 <= select_ln20_fu_616_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln20_fu_526_p2 == 1'd0))) begin
            indvar_flatten21_fu_134 <= add_ln20_1_fu_532_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten21_fu_134 <= 18'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln20_fu_526_p2 == 1'd0))) begin
            indvar_flatten7_fu_126 <= select_ln21_1_fu_550_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten7_fu_126 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_122 <= 7'd0;
    end else if (((icmp_ln20_reg_999 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_122 <= select_ln21_fu_641_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_118 <= 7'd0;
    end else if (((icmp_ln20_reg_999 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k_fu_118 <= add_ln23_fu_767_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_predicate_pred521_state26 <= ((tmp_6_reg_1156_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1023_pp0_iter1_reg == 2'd0) & (trunc_ln20_reg_1015_pp0_iter1_reg == 2'd0));
        ap_predicate_pred538_state26 <= ((tmp_6_reg_1156_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1023_pp0_iter1_reg == 2'd0) & (trunc_ln20_reg_1015_pp0_iter1_reg == 2'd1));
        ap_predicate_pred549_state26 <= ((tmp_6_reg_1156_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1023_pp0_iter1_reg == 2'd0) & (trunc_ln20_reg_1015_pp0_iter1_reg == 2'd2));
        ap_predicate_pred560_state26 <= ((tmp_6_reg_1156_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1023_pp0_iter1_reg == 2'd0) & (trunc_ln20_reg_1015_pp0_iter1_reg == 2'd3));
        ap_predicate_pred571_state26 <= ((tmp_6_reg_1156_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1023_pp0_iter1_reg == 2'd1) & (trunc_ln20_reg_1015_pp0_iter1_reg == 2'd0));
        ap_predicate_pred580_state26 <= ((tmp_6_reg_1156_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1023_pp0_iter1_reg == 2'd1) & (trunc_ln20_reg_1015_pp0_iter1_reg == 2'd1));
        ap_predicate_pred589_state26 <= ((tmp_6_reg_1156_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1023_pp0_iter1_reg == 2'd1) & (trunc_ln20_reg_1015_pp0_iter1_reg == 2'd2));
        ap_predicate_pred598_state26 <= ((tmp_6_reg_1156_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1023_pp0_iter1_reg == 2'd1) & (trunc_ln20_reg_1015_pp0_iter1_reg == 2'd3));
        ap_predicate_pred609_state26 <= ((tmp_6_reg_1156_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1023_pp0_iter1_reg == 2'd2) & (trunc_ln20_reg_1015_pp0_iter1_reg == 2'd0));
        ap_predicate_pred618_state26 <= ((tmp_6_reg_1156_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1023_pp0_iter1_reg == 2'd2) & (trunc_ln20_reg_1015_pp0_iter1_reg == 2'd1));
        ap_predicate_pred627_state26 <= ((tmp_6_reg_1156_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1023_pp0_iter1_reg == 2'd2) & (trunc_ln20_reg_1015_pp0_iter1_reg == 2'd2));
        ap_predicate_pred636_state26 <= ((tmp_6_reg_1156_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1023_pp0_iter1_reg == 2'd2) & (trunc_ln20_reg_1015_pp0_iter1_reg == 2'd3));
        ap_predicate_pred647_state26 <= ((tmp_6_reg_1156_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1023_pp0_iter1_reg == 2'd3) & (trunc_ln20_reg_1015_pp0_iter1_reg == 2'd0));
        ap_predicate_pred656_state26 <= ((tmp_6_reg_1156_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1023_pp0_iter1_reg == 2'd3) & (trunc_ln20_reg_1015_pp0_iter1_reg == 2'd1));
        ap_predicate_pred665_state26 <= ((tmp_6_reg_1156_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1023_pp0_iter1_reg == 2'd3) & (trunc_ln20_reg_1015_pp0_iter1_reg == 2'd2));
        ap_predicate_pred674_state26 <= ((tmp_6_reg_1156_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1023_pp0_iter1_reg == 2'd3) & (trunc_ln20_reg_1015_pp0_iter1_reg == 2'd3));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_10_addr_reg_1078 <= tmp_12_cast_fu_695_p1;
        buff_C_out_10_addr_reg_1078_pp0_iter1_reg <= buff_C_out_10_addr_reg_1078;
        buff_C_out_11_addr_reg_1083 <= tmp_12_cast_fu_695_p1;
        buff_C_out_11_addr_reg_1083_pp0_iter1_reg <= buff_C_out_11_addr_reg_1083;
        buff_C_out_12_addr_reg_1088 <= tmp_12_cast_fu_695_p1;
        buff_C_out_12_addr_reg_1088_pp0_iter1_reg <= buff_C_out_12_addr_reg_1088;
        buff_C_out_13_addr_reg_1093 <= tmp_12_cast_fu_695_p1;
        buff_C_out_13_addr_reg_1093_pp0_iter1_reg <= buff_C_out_13_addr_reg_1093;
        buff_C_out_14_addr_reg_1098 <= tmp_12_cast_fu_695_p1;
        buff_C_out_14_addr_reg_1098_pp0_iter1_reg <= buff_C_out_14_addr_reg_1098;
        buff_C_out_15_addr_reg_1103 <= tmp_12_cast_fu_695_p1;
        buff_C_out_15_addr_reg_1103_pp0_iter1_reg <= buff_C_out_15_addr_reg_1103;
        buff_C_out_1_addr_reg_1033 <= tmp_12_cast_fu_695_p1;
        buff_C_out_1_addr_reg_1033_pp0_iter1_reg <= buff_C_out_1_addr_reg_1033;
        buff_C_out_2_addr_reg_1038 <= tmp_12_cast_fu_695_p1;
        buff_C_out_2_addr_reg_1038_pp0_iter1_reg <= buff_C_out_2_addr_reg_1038;
        buff_C_out_3_addr_reg_1043 <= tmp_12_cast_fu_695_p1;
        buff_C_out_3_addr_reg_1043_pp0_iter1_reg <= buff_C_out_3_addr_reg_1043;
        buff_C_out_4_addr_reg_1048 <= tmp_12_cast_fu_695_p1;
        buff_C_out_4_addr_reg_1048_pp0_iter1_reg <= buff_C_out_4_addr_reg_1048;
        buff_C_out_5_addr_reg_1053 <= tmp_12_cast_fu_695_p1;
        buff_C_out_5_addr_reg_1053_pp0_iter1_reg <= buff_C_out_5_addr_reg_1053;
        buff_C_out_6_addr_reg_1058 <= tmp_12_cast_fu_695_p1;
        buff_C_out_6_addr_reg_1058_pp0_iter1_reg <= buff_C_out_6_addr_reg_1058;
        buff_C_out_7_addr_reg_1063 <= tmp_12_cast_fu_695_p1;
        buff_C_out_7_addr_reg_1063_pp0_iter1_reg <= buff_C_out_7_addr_reg_1063;
        buff_C_out_8_addr_reg_1068 <= tmp_12_cast_fu_695_p1;
        buff_C_out_8_addr_reg_1068_pp0_iter1_reg <= buff_C_out_8_addr_reg_1068;
        buff_C_out_9_addr_reg_1073 <= tmp_12_cast_fu_695_p1;
        buff_C_out_9_addr_reg_1073_pp0_iter1_reg <= buff_C_out_9_addr_reg_1073;
        buff_C_out_addr_reg_1028 <= tmp_12_cast_fu_695_p1;
        buff_C_out_addr_reg_1028_pp0_iter1_reg <= buff_C_out_addr_reg_1028;
        first_iter_1_reg_1011 <= first_iter_1_fu_653_p2;
        icmp_ln24_1_reg_1148 <= icmp_ln24_1_fu_761_p2;
        tmp_6_reg_1156 <= add_ln23_fu_767_p2[32'd6];
        tmp_6_reg_1156_pp0_iter1_reg <= tmp_6_reg_1156;
        trunc_ln20_reg_1015 <= trunc_ln20_fu_659_p1;
        trunc_ln20_reg_1015_pp0_iter1_reg <= trunc_ln20_reg_1015;
        trunc_ln21_1_reg_1023 <= trunc_ln21_1_fu_663_p1;
        trunc_ln21_1_reg_1023_pp0_iter1_reg <= trunc_ln21_1_reg_1023;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln20_reg_999 <= icmp_ln20_fu_526_p2;
        icmp_ln21_reg_1003 <= icmp_ln21_fu_538_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul50_1_reg_1195 <= grp_fu_444_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_1_reg_1185 <= grp_fu_444_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_468 <= grp_fu_444_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_474 <= grp_fu_440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln24_1_reg_1170 <= select_ln24_1_fu_918_p3;
        select_ln24_2_reg_1175 <= select_ln24_2_fu_925_p3;
        select_ln24_3_reg_1180 <= select_ln24_3_fu_932_p3;
        select_ln24_reg_1165 <= select_ln24_fu_911_p3;
        tmp_4_reg_1160 <= tmp_4_fu_888_p11;
    end
end
always @ (*) begin
    if (((icmp_ln20_reg_999 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten21_load = 18'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten21_load = indvar_flatten21_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten7_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten7_load = indvar_flatten7_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A0_1_ce0_local = 1'b1;
    end else begin
        buff_A0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A0_2_ce0_local = 1'b1;
    end else begin
        buff_A0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A0_3_ce0_local = 1'b1;
    end else begin
        buff_A0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A0_ce0_local = 1'b1;
    end else begin
        buff_A0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A1_1_ce0_local = 1'b1;
    end else begin
        buff_A1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A1_2_ce0_local = 1'b1;
    end else begin
        buff_A1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A1_3_ce0_local = 1'b1;
    end else begin
        buff_A1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A1_ce0_local = 1'b1;
    end else begin
        buff_A1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_10_address0_local = buff_C_out_10_addr_reg_1078_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_10_address0_local = tmp_12_cast_fu_695_p1;
    end else begin
        buff_C_out_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        buff_C_out_10_ce0_local = 1'b1;
    end else begin
        buff_C_out_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred627_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_10_we0_local = 1'b1;
    end else begin
        buff_C_out_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_11_address0_local = buff_C_out_11_addr_reg_1083_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_11_address0_local = tmp_12_cast_fu_695_p1;
    end else begin
        buff_C_out_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        buff_C_out_11_ce0_local = 1'b1;
    end else begin
        buff_C_out_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred636_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_11_we0_local = 1'b1;
    end else begin
        buff_C_out_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_12_address0_local = buff_C_out_12_addr_reg_1088_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_12_address0_local = tmp_12_cast_fu_695_p1;
    end else begin
        buff_C_out_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        buff_C_out_12_ce0_local = 1'b1;
    end else begin
        buff_C_out_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred647_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_12_we0_local = 1'b1;
    end else begin
        buff_C_out_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_13_address0_local = buff_C_out_13_addr_reg_1093_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_13_address0_local = tmp_12_cast_fu_695_p1;
    end else begin
        buff_C_out_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        buff_C_out_13_ce0_local = 1'b1;
    end else begin
        buff_C_out_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred656_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_13_we0_local = 1'b1;
    end else begin
        buff_C_out_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_14_address0_local = buff_C_out_14_addr_reg_1098_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_14_address0_local = tmp_12_cast_fu_695_p1;
    end else begin
        buff_C_out_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        buff_C_out_14_ce0_local = 1'b1;
    end else begin
        buff_C_out_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred665_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_14_we0_local = 1'b1;
    end else begin
        buff_C_out_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_15_address0_local = buff_C_out_15_addr_reg_1103_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_15_address0_local = tmp_12_cast_fu_695_p1;
    end else begin
        buff_C_out_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        buff_C_out_15_ce0_local = 1'b1;
    end else begin
        buff_C_out_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred674_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_15_we0_local = 1'b1;
    end else begin
        buff_C_out_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_1_address0_local = buff_C_out_1_addr_reg_1033_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_1_address0_local = tmp_12_cast_fu_695_p1;
    end else begin
        buff_C_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred538_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_1_we0_local = 1'b1;
    end else begin
        buff_C_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_2_address0_local = buff_C_out_2_addr_reg_1038_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_2_address0_local = tmp_12_cast_fu_695_p1;
    end else begin
        buff_C_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        buff_C_out_2_ce0_local = 1'b1;
    end else begin
        buff_C_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred549_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_2_we0_local = 1'b1;
    end else begin
        buff_C_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_3_address0_local = buff_C_out_3_addr_reg_1043_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_3_address0_local = tmp_12_cast_fu_695_p1;
    end else begin
        buff_C_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        buff_C_out_3_ce0_local = 1'b1;
    end else begin
        buff_C_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred560_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_3_we0_local = 1'b1;
    end else begin
        buff_C_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_4_address0_local = buff_C_out_4_addr_reg_1048_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_4_address0_local = tmp_12_cast_fu_695_p1;
    end else begin
        buff_C_out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        buff_C_out_4_ce0_local = 1'b1;
    end else begin
        buff_C_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred571_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_4_we0_local = 1'b1;
    end else begin
        buff_C_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_5_address0_local = buff_C_out_5_addr_reg_1053_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_5_address0_local = tmp_12_cast_fu_695_p1;
    end else begin
        buff_C_out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        buff_C_out_5_ce0_local = 1'b1;
    end else begin
        buff_C_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred580_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_5_we0_local = 1'b1;
    end else begin
        buff_C_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_6_address0_local = buff_C_out_6_addr_reg_1058_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_6_address0_local = tmp_12_cast_fu_695_p1;
    end else begin
        buff_C_out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        buff_C_out_6_ce0_local = 1'b1;
    end else begin
        buff_C_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred589_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_6_we0_local = 1'b1;
    end else begin
        buff_C_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_7_address0_local = buff_C_out_7_addr_reg_1063_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_7_address0_local = tmp_12_cast_fu_695_p1;
    end else begin
        buff_C_out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        buff_C_out_7_ce0_local = 1'b1;
    end else begin
        buff_C_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred598_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_7_we0_local = 1'b1;
    end else begin
        buff_C_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_8_address0_local = buff_C_out_8_addr_reg_1068_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_8_address0_local = tmp_12_cast_fu_695_p1;
    end else begin
        buff_C_out_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        buff_C_out_8_ce0_local = 1'b1;
    end else begin
        buff_C_out_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred609_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_8_we0_local = 1'b1;
    end else begin
        buff_C_out_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_9_address0_local = buff_C_out_9_addr_reg_1073_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_9_address0_local = tmp_12_cast_fu_695_p1;
    end else begin
        buff_C_out_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        buff_C_out_9_ce0_local = 1'b1;
    end else begin
        buff_C_out_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred618_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_9_we0_local = 1'b1;
    end else begin
        buff_C_out_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_address0_local = buff_C_out_addr_reg_1028_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_address0_local = tmp_12_cast_fu_695_p1;
    end else begin
        buff_C_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred521_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_we0_local = 1'b1;
    end else begin
        buff_C_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_460_p0 = reg_474;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_460_p0 = empty_fu_138;
    end else begin
        grp_fu_460_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_460_p1 = mul50_1_reg_1195;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_460_p1 = reg_468;
    end else begin
        grp_fu_460_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_464_p0 = mul_1_reg_1185;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_464_p0 = reg_468;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_464_p0 = select_ln24_2_reg_1175;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_464_p0 = select_ln24_reg_1165;
        end else begin
            grp_fu_464_p0 = 'bx;
        end
    end else begin
        grp_fu_464_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_464_p1 = select_ln24_3_reg_1180;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_464_p1 = select_ln24_1_reg_1170;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_464_p1 = alpha;
    end else begin
        grp_fu_464_p1 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to1 == 1'b1) & (ap_start_int == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln20_1_fu_532_p2 = (ap_sig_allocacmp_indvar_flatten21_load + 18'd1);
assign add_ln20_fu_577_p2 = (i_1_fu_130 + 7'd1);
assign add_ln21_1_fu_544_p2 = (ap_sig_allocacmp_indvar_flatten7_load + 13'd1);
assign add_ln21_fu_627_p2 = (select_ln5_fu_583_p3 + 7'd1);
assign add_ln23_fu_767_p2 = (k_mid2_fu_633_p3 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1071 = ((icmp_ln20_reg_999 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (first_iter_1_reg_1011 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign buff_A0_1_address0 = zext_ln24_fu_737_p1;
assign buff_A0_1_ce0 = buff_A0_1_ce0_local;
assign buff_A0_2_address0 = zext_ln24_fu_737_p1;
assign buff_A0_2_ce0 = buff_A0_2_ce0_local;
assign buff_A0_3_address0 = zext_ln24_fu_737_p1;
assign buff_A0_3_ce0 = buff_A0_3_ce0_local;
assign buff_A0_address0 = zext_ln24_fu_737_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_A1_1_address0 = zext_ln24_1_fu_753_p1;
assign buff_A1_1_ce0 = buff_A1_1_ce0_local;
assign buff_A1_2_address0 = zext_ln24_1_fu_753_p1;
assign buff_A1_2_ce0 = buff_A1_2_ce0_local;
assign buff_A1_3_address0 = zext_ln24_1_fu_753_p1;
assign buff_A1_3_ce0 = buff_A1_3_ce0_local;
assign buff_A1_address0 = zext_ln24_1_fu_753_p1;
assign buff_A1_ce0 = buff_A1_ce0_local;
assign buff_C_out_10_address0 = buff_C_out_10_address0_local;
assign buff_C_out_10_ce0 = buff_C_out_10_ce0_local;
assign buff_C_out_10_d0 = reg_474;
assign buff_C_out_10_we0 = buff_C_out_10_we0_local;
assign buff_C_out_11_address0 = buff_C_out_11_address0_local;
assign buff_C_out_11_ce0 = buff_C_out_11_ce0_local;
assign buff_C_out_11_d0 = reg_474;
assign buff_C_out_11_we0 = buff_C_out_11_we0_local;
assign buff_C_out_12_address0 = buff_C_out_12_address0_local;
assign buff_C_out_12_ce0 = buff_C_out_12_ce0_local;
assign buff_C_out_12_d0 = reg_474;
assign buff_C_out_12_we0 = buff_C_out_12_we0_local;
assign buff_C_out_13_address0 = buff_C_out_13_address0_local;
assign buff_C_out_13_ce0 = buff_C_out_13_ce0_local;
assign buff_C_out_13_d0 = reg_474;
assign buff_C_out_13_we0 = buff_C_out_13_we0_local;
assign buff_C_out_14_address0 = buff_C_out_14_address0_local;
assign buff_C_out_14_ce0 = buff_C_out_14_ce0_local;
assign buff_C_out_14_d0 = reg_474;
assign buff_C_out_14_we0 = buff_C_out_14_we0_local;
assign buff_C_out_15_address0 = buff_C_out_15_address0_local;
assign buff_C_out_15_ce0 = buff_C_out_15_ce0_local;
assign buff_C_out_15_d0 = reg_474;
assign buff_C_out_15_we0 = buff_C_out_15_we0_local;
assign buff_C_out_1_address0 = buff_C_out_1_address0_local;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_d0 = reg_474;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_2_address0 = buff_C_out_2_address0_local;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_2_d0 = reg_474;
assign buff_C_out_2_we0 = buff_C_out_2_we0_local;
assign buff_C_out_3_address0 = buff_C_out_3_address0_local;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_3_d0 = reg_474;
assign buff_C_out_3_we0 = buff_C_out_3_we0_local;
assign buff_C_out_4_address0 = buff_C_out_4_address0_local;
assign buff_C_out_4_ce0 = buff_C_out_4_ce0_local;
assign buff_C_out_4_d0 = reg_474;
assign buff_C_out_4_we0 = buff_C_out_4_we0_local;
assign buff_C_out_5_address0 = buff_C_out_5_address0_local;
assign buff_C_out_5_ce0 = buff_C_out_5_ce0_local;
assign buff_C_out_5_d0 = reg_474;
assign buff_C_out_5_we0 = buff_C_out_5_we0_local;
assign buff_C_out_6_address0 = buff_C_out_6_address0_local;
assign buff_C_out_6_ce0 = buff_C_out_6_ce0_local;
assign buff_C_out_6_d0 = reg_474;
assign buff_C_out_6_we0 = buff_C_out_6_we0_local;
assign buff_C_out_7_address0 = buff_C_out_7_address0_local;
assign buff_C_out_7_ce0 = buff_C_out_7_ce0_local;
assign buff_C_out_7_d0 = reg_474;
assign buff_C_out_7_we0 = buff_C_out_7_we0_local;
assign buff_C_out_8_address0 = buff_C_out_8_address0_local;
assign buff_C_out_8_ce0 = buff_C_out_8_ce0_local;
assign buff_C_out_8_d0 = reg_474;
assign buff_C_out_8_we0 = buff_C_out_8_we0_local;
assign buff_C_out_9_address0 = buff_C_out_9_address0_local;
assign buff_C_out_9_ce0 = buff_C_out_9_ce0_local;
assign buff_C_out_9_d0 = reg_474;
assign buff_C_out_9_we0 = buff_C_out_9_we0_local;
assign buff_C_out_address0 = buff_C_out_address0_local;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_d0 = reg_474;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign empty_12_fu_649_p1 = select_ln21_fu_641_p3[5:0];
assign first_iter_1_fu_653_p2 = ((k_mid2_fu_633_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_440_p_ce = 1'b1;
assign grp_fu_440_p_din0 = grp_fu_460_p0;
assign grp_fu_440_p_din1 = grp_fu_460_p1;
assign grp_fu_440_p_opcode = 2'd0;
assign grp_fu_444_p_ce = 1'b1;
assign grp_fu_444_p_din0 = grp_fu_464_p0;
assign grp_fu_444_p_din1 = grp_fu_464_p1;
assign icmp_ln20_fu_526_p2 = ((ap_sig_allocacmp_indvar_flatten21_load == 18'd131072) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_538_p2 = ((ap_sig_allocacmp_indvar_flatten7_load == 13'd2048) ? 1'b1 : 1'b0);
assign icmp_ln24_1_fu_761_p2 = ((trunc_ln23_fu_715_p1 != 2'd0) ? 1'b1 : 1'b0);
assign k_mid2_fu_633_p3 = ((or_ln5_fu_611_p2[0:0] == 1'b1) ? select_ln5_1_fu_590_p3 : 7'd0);
assign lshr_ln5_4_fu_667_p4 = {{select_ln21_fu_641_p3[5:2]}};
assign lshr_ln5_6_fu_719_p4 = {{k_mid2_fu_633_p3[5:2]}};
assign or_ln5_fu_611_p2 = (xor_ln23_fu_605_p2 | icmp_ln21_reg_1003);
assign select_ln20_fu_616_p3 = ((icmp_ln21_reg_1003[0:0] == 1'b1) ? add_ln20_fu_577_p2 : i_1_fu_130);
assign select_ln21_1_fu_550_p3 = ((icmp_ln21_fu_538_p2[0:0] == 1'b1) ? 13'd1 : add_ln21_1_fu_544_p2);
assign select_ln21_fu_641_p3 = ((or_ln5_fu_611_p2[0:0] == 1'b1) ? select_ln5_fu_583_p3 : add_ln21_fu_627_p2);
assign select_ln24_1_fu_918_p3 = ((icmp_ln24_1_reg_1148[0:0] == 1'b1) ? buff_A1_2_q0 : buff_A1_q0);
assign select_ln24_2_fu_925_p3 = ((icmp_ln24_1_reg_1148[0:0] == 1'b1) ? buff_A0_3_q0 : buff_A0_1_q0);
assign select_ln24_3_fu_932_p3 = ((icmp_ln24_1_reg_1148[0:0] == 1'b1) ? buff_A1_3_q0 : buff_A1_1_q0);
assign select_ln24_fu_911_p3 = ((icmp_ln24_1_reg_1148[0:0] == 1'b1) ? buff_A0_2_q0 : buff_A0_q0);
assign select_ln5_1_fu_590_p3 = ((icmp_ln21_reg_1003[0:0] == 1'b1) ? 7'd0 : k_fu_118);
assign select_ln5_fu_583_p3 = ((icmp_ln21_reg_1003[0:0] == 1'b1) ? 7'd0 : j_fu_122);
assign tmp_11_fu_677_p4 = {{select_ln20_fu_616_p3[5:2]}};
assign tmp_12_cast_fu_695_p1 = tmp_12_fu_687_p3;
assign tmp_12_fu_687_p3 = {{tmp_11_fu_677_p4}, {lshr_ln5_4_fu_667_p4}};
assign tmp_13_fu_729_p3 = {{trunc_ln21_fu_623_p1}, {lshr_ln5_6_fu_719_p4}};
assign tmp_14_fu_745_p3 = {{empty_12_fu_649_p1}, {lshr_ln5_6_fu_719_p4}};
assign tmp_1_fu_819_p9 = 'bx;
assign tmp_2_fu_842_p9 = 'bx;
assign tmp_3_fu_865_p9 = 'bx;
assign tmp_4_fu_888_p9 = 'bx;
assign tmp_5_fu_597_p3 = k_fu_118[32'd6];
assign tmp_fu_796_p9 = 'bx;
assign trunc_ln20_fu_659_p1 = select_ln20_fu_616_p3[1:0];
assign trunc_ln21_1_fu_663_p1 = select_ln21_fu_641_p3[1:0];
assign trunc_ln21_fu_623_p1 = select_ln20_fu_616_p3[5:0];
assign trunc_ln23_fu_715_p1 = k_mid2_fu_633_p3[1:0];
assign xor_ln23_fu_605_p2 = (tmp_5_fu_597_p3 ^ 1'd1);
assign zext_ln24_1_fu_753_p1 = tmp_14_fu_745_p3;
assign zext_ln24_fu_737_p1 = tmp_13_fu_729_p3;
endmodule 