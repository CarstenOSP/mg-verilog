
module syrk_syrk_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A0_address0,buff_A0_ce0,buff_A0_q0,buff_A0_1_address0,buff_A0_1_ce0,buff_A0_1_q0,buff_A0_2_address0,buff_A0_2_ce0,buff_A0_2_q0,buff_A0_3_address0,buff_A0_3_ce0,buff_A0_3_q0,buff_A0_4_address0,buff_A0_4_ce0,buff_A0_4_q0,buff_A0_5_address0,buff_A0_5_ce0,buff_A0_5_q0,buff_A0_6_address0,buff_A0_6_ce0,buff_A0_6_q0,buff_A0_7_address0,buff_A0_7_ce0,buff_A0_7_q0,buff_A1_address0,buff_A1_ce0,buff_A1_q0,buff_A1_1_address0,buff_A1_1_ce0,buff_A1_1_q0,buff_A1_2_address0,buff_A1_2_ce0,buff_A1_2_q0,buff_A1_3_address0,buff_A1_3_ce0,buff_A1_3_q0,buff_A1_4_address0,buff_A1_4_ce0,buff_A1_4_q0,buff_A1_5_address0,buff_A1_5_ce0,buff_A1_5_q0,buff_A1_6_address0,buff_A1_6_ce0,buff_A1_6_q0,buff_A1_7_address0,buff_A1_7_ce0,buff_A1_7_q0,alpha,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_q0,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_1_q0,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_we0,buff_C_out_2_d0,buff_C_out_2_q0,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_we0,buff_C_out_3_d0,buff_C_out_3_q0,buff_C_out_4_address0,buff_C_out_4_ce0,buff_C_out_4_we0,buff_C_out_4_d0,buff_C_out_4_q0,buff_C_out_5_address0,buff_C_out_5_ce0,buff_C_out_5_we0,buff_C_out_5_d0,buff_C_out_5_q0,buff_C_out_6_address0,buff_C_out_6_ce0,buff_C_out_6_we0,buff_C_out_6_d0,buff_C_out_6_q0,buff_C_out_7_address0,buff_C_out_7_ce0,buff_C_out_7_we0,buff_C_out_7_d0,buff_C_out_7_q0,buff_C_out_8_address0,buff_C_out_8_ce0,buff_C_out_8_we0,buff_C_out_8_d0,buff_C_out_8_q0,buff_C_out_9_address0,buff_C_out_9_ce0,buff_C_out_9_we0,buff_C_out_9_d0,buff_C_out_9_q0,buff_C_out_10_address0,buff_C_out_10_ce0,buff_C_out_10_we0,buff_C_out_10_d0,buff_C_out_10_q0,buff_C_out_11_address0,buff_C_out_11_ce0,buff_C_out_11_we0,buff_C_out_11_d0,buff_C_out_11_q0,buff_C_out_12_address0,buff_C_out_12_ce0,buff_C_out_12_we0,buff_C_out_12_d0,buff_C_out_12_q0,buff_C_out_13_address0,buff_C_out_13_ce0,buff_C_out_13_we0,buff_C_out_13_d0,buff_C_out_13_q0,buff_C_out_14_address0,buff_C_out_14_ce0,buff_C_out_14_we0,buff_C_out_14_d0,buff_C_out_14_q0,buff_C_out_15_address0,buff_C_out_15_ce0,buff_C_out_15_we0,buff_C_out_15_d0,buff_C_out_15_q0,grp_fu_544_p_din0,grp_fu_544_p_din1,grp_fu_544_p_opcode,grp_fu_544_p_dout0,grp_fu_544_p_ce,grp_fu_548_p_din0,grp_fu_548_p_din1,grp_fu_548_p_dout0,grp_fu_548_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 29'd1;
parameter    ap_ST_fsm_pp0_stage1 = 29'd2;
parameter    ap_ST_fsm_pp0_stage2 = 29'd4;
parameter    ap_ST_fsm_pp0_stage3 = 29'd8;
parameter    ap_ST_fsm_pp0_stage4 = 29'd16;
parameter    ap_ST_fsm_pp0_stage5 = 29'd32;
parameter    ap_ST_fsm_pp0_stage6 = 29'd64;
parameter    ap_ST_fsm_pp0_stage7 = 29'd128;
parameter    ap_ST_fsm_pp0_stage8 = 29'd256;
parameter    ap_ST_fsm_pp0_stage9 = 29'd512;
parameter    ap_ST_fsm_pp0_stage10 = 29'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 29'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 29'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 29'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 29'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 29'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 29'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 29'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 29'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 29'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 29'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 29'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 29'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 29'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 29'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 29'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 29'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 29'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 29'd268435456;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] buff_A0_address0;
output   buff_A0_ce0;
input  [31:0] buff_A0_q0;
output  [8:0] buff_A0_1_address0;
output   buff_A0_1_ce0;
input  [31:0] buff_A0_1_q0;
output  [8:0] buff_A0_2_address0;
output   buff_A0_2_ce0;
input  [31:0] buff_A0_2_q0;
output  [8:0] buff_A0_3_address0;
output   buff_A0_3_ce0;
input  [31:0] buff_A0_3_q0;
output  [8:0] buff_A0_4_address0;
output   buff_A0_4_ce0;
input  [31:0] buff_A0_4_q0;
output  [8:0] buff_A0_5_address0;
output   buff_A0_5_ce0;
input  [31:0] buff_A0_5_q0;
output  [8:0] buff_A0_6_address0;
output   buff_A0_6_ce0;
input  [31:0] buff_A0_6_q0;
output  [8:0] buff_A0_7_address0;
output   buff_A0_7_ce0;
input  [31:0] buff_A0_7_q0;
output  [8:0] buff_A1_address0;
output   buff_A1_ce0;
input  [31:0] buff_A1_q0;
output  [8:0] buff_A1_1_address0;
output   buff_A1_1_ce0;
input  [31:0] buff_A1_1_q0;
output  [8:0] buff_A1_2_address0;
output   buff_A1_2_ce0;
input  [31:0] buff_A1_2_q0;
output  [8:0] buff_A1_3_address0;
output   buff_A1_3_ce0;
input  [31:0] buff_A1_3_q0;
output  [8:0] buff_A1_4_address0;
output   buff_A1_4_ce0;
input  [31:0] buff_A1_4_q0;
output  [8:0] buff_A1_5_address0;
output   buff_A1_5_ce0;
input  [31:0] buff_A1_5_q0;
output  [8:0] buff_A1_6_address0;
output   buff_A1_6_ce0;
input  [31:0] buff_A1_6_q0;
output  [8:0] buff_A1_7_address0;
output   buff_A1_7_ce0;
input  [31:0] buff_A1_7_q0;
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
output  [31:0] grp_fu_544_p_din0;
output  [31:0] grp_fu_544_p_din1;
output  [1:0] grp_fu_544_p_opcode;
input  [31:0] grp_fu_544_p_dout0;
output   grp_fu_544_p_ce;
output  [31:0] grp_fu_548_p_din0;
output  [31:0] grp_fu_548_p_din1;
input  [31:0] grp_fu_548_p_dout0;
output   grp_fu_548_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [28:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] icmp_ln20_reg_1163;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_subdone;
reg   [31:0] reg_598;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage10_11001;
reg   [31:0] reg_604;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [31:0] reg_610;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [31:0] reg_616;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [31:0] reg_622;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln20_fu_674_p2;
wire   [0:0] icmp_ln21_fu_686_p2;
reg   [0:0] icmp_ln21_reg_1167;
wire   [0:0] first_iter_1_fu_801_p2;
reg   [0:0] first_iter_1_reg_1175;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] trunc_ln20_fu_807_p1;
reg   [0:0] trunc_ln20_reg_1179;
reg   [0:0] trunc_ln20_reg_1179_pp0_iter1_reg;
wire   [2:0] trunc_ln21_1_fu_811_p1;
reg   [2:0] trunc_ln21_1_reg_1191;
reg   [2:0] trunc_ln21_1_reg_1191_pp0_iter1_reg;
reg   [7:0] buff_C_out_addr_reg_1196;
reg   [7:0] buff_C_out_addr_reg_1196_pp0_iter1_reg;
reg   [7:0] buff_C_out_1_addr_reg_1201;
reg   [7:0] buff_C_out_1_addr_reg_1201_pp0_iter1_reg;
reg   [7:0] buff_C_out_2_addr_reg_1206;
reg   [7:0] buff_C_out_2_addr_reg_1206_pp0_iter1_reg;
reg   [7:0] buff_C_out_3_addr_reg_1211;
reg   [7:0] buff_C_out_3_addr_reg_1211_pp0_iter1_reg;
reg   [7:0] buff_C_out_4_addr_reg_1216;
reg   [7:0] buff_C_out_4_addr_reg_1216_pp0_iter1_reg;
reg   [7:0] buff_C_out_5_addr_reg_1221;
reg   [7:0] buff_C_out_5_addr_reg_1221_pp0_iter1_reg;
reg   [7:0] buff_C_out_6_addr_reg_1226;
reg   [7:0] buff_C_out_6_addr_reg_1226_pp0_iter1_reg;
reg   [7:0] buff_C_out_7_addr_reg_1231;
reg   [7:0] buff_C_out_7_addr_reg_1231_pp0_iter1_reg;
reg   [7:0] buff_C_out_8_addr_reg_1236;
reg   [7:0] buff_C_out_8_addr_reg_1236_pp0_iter1_reg;
reg   [7:0] buff_C_out_9_addr_reg_1241;
reg   [7:0] buff_C_out_9_addr_reg_1241_pp0_iter1_reg;
reg   [7:0] buff_C_out_10_addr_reg_1246;
reg   [7:0] buff_C_out_10_addr_reg_1246_pp0_iter1_reg;
reg   [7:0] buff_C_out_11_addr_reg_1251;
reg   [7:0] buff_C_out_11_addr_reg_1251_pp0_iter1_reg;
reg   [7:0] buff_C_out_12_addr_reg_1256;
reg   [7:0] buff_C_out_12_addr_reg_1256_pp0_iter1_reg;
reg   [7:0] buff_C_out_13_addr_reg_1261;
reg   [7:0] buff_C_out_13_addr_reg_1261_pp0_iter1_reg;
reg   [7:0] buff_C_out_14_addr_reg_1266;
reg   [7:0] buff_C_out_14_addr_reg_1266_pp0_iter1_reg;
reg   [7:0] buff_C_out_15_addr_reg_1271;
reg   [7:0] buff_C_out_15_addr_reg_1271_pp0_iter1_reg;
wire   [0:0] icmp_ln24_1_fu_917_p2;
reg   [0:0] icmp_ln24_1_reg_1356;
reg   [0:0] tmp_7_reg_1368;
reg   [0:0] tmp_7_reg_1368_pp0_iter1_reg;
wire   [31:0] tmp_8_fu_1008_p19;
reg   [31:0] tmp_8_reg_1372;
wire   [31:0] select_ln24_8_fu_1047_p3;
reg   [31:0] select_ln24_8_reg_1377;
wire   [31:0] select_ln24_9_fu_1054_p3;
reg   [31:0] select_ln24_9_reg_1382;
wire   [31:0] select_ln24_10_fu_1061_p3;
reg   [31:0] select_ln24_10_reg_1387;
wire   [31:0] select_ln24_11_fu_1068_p3;
reg   [31:0] select_ln24_11_reg_1392;
wire   [31:0] select_ln24_12_fu_1075_p3;
reg   [31:0] select_ln24_12_reg_1397;
wire   [31:0] select_ln24_13_fu_1082_p3;
reg   [31:0] select_ln24_13_reg_1402;
wire   [31:0] select_ln24_14_fu_1089_p3;
reg   [31:0] select_ln24_14_reg_1407;
wire   [31:0] select_ln24_15_fu_1096_p3;
reg   [31:0] select_ln24_15_reg_1412;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] tmp_4_cast_fu_843_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln24_fu_885_p1;
wire   [63:0] zext_ln24_1_fu_905_p1;
reg   [6:0] k_fu_144;
wire   [6:0] add_ln23_fu_923_p2;
wire    ap_loop_init;
reg   [6:0] j_fu_148;
wire   [6:0] select_ln21_fu_789_p3;
reg   [11:0] indvar_flatten7_fu_152;
wire   [11:0] select_ln21_1_fu_698_p3;
reg   [11:0] ap_sig_allocacmp_indvar_flatten7_load;
wire    ap_block_pp0_stage0;
reg   [6:0] i_1_fu_156;
wire   [6:0] select_ln20_fu_764_p3;
reg   [16:0] indvar_flatten21_fu_160;
wire   [16:0] add_ln20_1_fu_680_p2;
reg   [16:0] ap_sig_allocacmp_indvar_flatten21_load;
reg   [31:0] empty_fu_164;
wire    ap_block_pp0_stage11;
reg    buff_C_out_ce0_local;
reg   [7:0] buff_C_out_address0_local;
reg    buff_C_out_we0_local;
reg    ap_predicate_pred665_state40;
wire    ap_block_pp0_stage10;
reg    buff_C_out_1_ce0_local;
reg   [7:0] buff_C_out_1_address0_local;
reg    buff_C_out_1_we0_local;
reg    ap_predicate_pred681_state40;
reg    buff_C_out_2_ce0_local;
reg   [7:0] buff_C_out_2_address0_local;
reg    buff_C_out_2_we0_local;
reg    ap_predicate_pred693_state40;
reg    buff_C_out_3_ce0_local;
reg   [7:0] buff_C_out_3_address0_local;
reg    buff_C_out_3_we0_local;
reg    ap_predicate_pred702_state40;
reg    buff_C_out_4_ce0_local;
reg   [7:0] buff_C_out_4_address0_local;
reg    buff_C_out_4_we0_local;
reg    ap_predicate_pred714_state40;
reg    buff_C_out_5_ce0_local;
reg   [7:0] buff_C_out_5_address0_local;
reg    buff_C_out_5_we0_local;
reg    ap_predicate_pred723_state40;
reg    buff_C_out_6_ce0_local;
reg   [7:0] buff_C_out_6_address0_local;
reg    buff_C_out_6_we0_local;
reg    ap_predicate_pred735_state40;
reg    buff_C_out_7_ce0_local;
reg   [7:0] buff_C_out_7_address0_local;
reg    buff_C_out_7_we0_local;
reg    ap_predicate_pred744_state40;
reg    buff_C_out_8_ce0_local;
reg   [7:0] buff_C_out_8_address0_local;
reg    buff_C_out_8_we0_local;
reg    ap_predicate_pred756_state40;
reg    buff_C_out_9_ce0_local;
reg   [7:0] buff_C_out_9_address0_local;
reg    buff_C_out_9_we0_local;
reg    ap_predicate_pred765_state40;
reg    buff_C_out_10_ce0_local;
reg   [7:0] buff_C_out_10_address0_local;
reg    buff_C_out_10_we0_local;
reg    ap_predicate_pred777_state40;
reg    buff_C_out_11_ce0_local;
reg   [7:0] buff_C_out_11_address0_local;
reg    buff_C_out_11_we0_local;
reg    ap_predicate_pred786_state40;
reg    buff_C_out_12_ce0_local;
reg   [7:0] buff_C_out_12_address0_local;
reg    buff_C_out_12_we0_local;
reg    ap_predicate_pred798_state40;
reg    buff_C_out_13_ce0_local;
reg   [7:0] buff_C_out_13_address0_local;
reg    buff_C_out_13_we0_local;
reg    ap_predicate_pred807_state40;
reg    buff_C_out_14_ce0_local;
reg   [7:0] buff_C_out_14_address0_local;
reg    buff_C_out_14_we0_local;
reg    ap_predicate_pred819_state40;
reg    buff_C_out_15_ce0_local;
reg   [7:0] buff_C_out_15_address0_local;
reg    buff_C_out_15_we0_local;
reg    ap_predicate_pred828_state40;
reg    buff_A0_ce0_local;
reg    buff_A0_4_ce0_local;
reg    buff_A1_ce0_local;
reg    buff_A1_4_ce0_local;
reg    buff_A0_1_ce0_local;
reg    buff_A0_5_ce0_local;
reg    buff_A1_1_ce0_local;
reg    buff_A1_5_ce0_local;
reg    buff_A0_2_ce0_local;
reg    buff_A0_6_ce0_local;
reg    buff_A1_2_ce0_local;
reg    buff_A1_6_ce0_local;
reg    buff_A0_3_ce0_local;
reg    buff_A0_7_ce0_local;
reg    buff_A1_3_ce0_local;
reg    buff_A1_7_ce0_local;
reg   [31:0] grp_fu_590_p0;
reg   [31:0] grp_fu_590_p1;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
reg   [31:0] grp_fu_594_p0;
reg   [31:0] grp_fu_594_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire   [11:0] add_ln21_1_fu_692_p2;
wire   [0:0] tmp_fu_745_p3;
wire   [0:0] xor_ln23_fu_753_p2;
wire   [6:0] add_ln20_fu_725_p2;
wire   [6:0] select_ln5_fu_731_p3;
wire   [0:0] or_ln5_fu_759_p2;
wire   [6:0] select_ln5_1_fu_738_p3;
wire   [6:0] add_ln21_fu_775_p2;
wire   [6:0] k_mid2_fu_781_p3;
wire   [4:0] tmp_3_fu_825_p4;
wire   [2:0] lshr_ln5_4_fu_815_p4;
wire   [7:0] tmp_4_fu_835_p3;
wire   [5:0] trunc_ln21_fu_771_p1;
wire   [2:0] lshr_ln5_6_fu_867_p4;
wire   [8:0] tmp_5_fu_877_p3;
wire   [5:0] empty_11_fu_797_p1;
wire   [8:0] tmp_6_fu_897_p3;
wire   [2:0] trunc_ln23_fu_863_p1;
wire    ap_block_pp0_stage2;
wire   [31:0] tmp_8_fu_1008_p2;
wire   [31:0] tmp_8_fu_1008_p4;
wire   [31:0] tmp_8_fu_1008_p6;
wire   [31:0] tmp_8_fu_1008_p8;
wire   [31:0] tmp_8_fu_1008_p10;
wire   [31:0] tmp_8_fu_1008_p12;
wire   [31:0] tmp_8_fu_1008_p14;
wire   [31:0] tmp_8_fu_1008_p16;
wire   [31:0] tmp_8_fu_1008_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [28:0] ap_NS_fsm;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage18_00001;
wire    ap_block_pp0_stage25_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_condition_1370;
wire   [2:0] tmp_8_fu_1008_p1;
wire   [2:0] tmp_8_fu_1008_p3;
wire   [2:0] tmp_8_fu_1008_p5;
wire   [2:0] tmp_8_fu_1008_p7;
wire  signed [2:0] tmp_8_fu_1008_p9;
wire  signed [2:0] tmp_8_fu_1008_p11;
wire  signed [2:0] tmp_8_fu_1008_p13;
wire  signed [2:0] tmp_8_fu_1008_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 29'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_144 = 7'd0;
#0 j_fu_148 = 7'd0;
#0 indvar_flatten7_fu_152 = 12'd0;
#0 i_1_fu_156 = 7'd0;
#0 indvar_flatten21_fu_160 = 17'd0;
#0 empty_fu_164 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U67(.din0(tmp_8_fu_1008_p2),.din1(tmp_8_fu_1008_p4),.din2(tmp_8_fu_1008_p6),.din3(tmp_8_fu_1008_p8),.din4(tmp_8_fu_1008_p10),.din5(tmp_8_fu_1008_p12),.din6(tmp_8_fu_1008_p14),.din7(tmp_8_fu_1008_p16),.def(tmp_8_fu_1008_p17),.sel(trunc_ln21_1_reg_1191),.dout(tmp_8_fu_1008_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage28_subdone) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        if ((1'b1 == ap_condition_1370)) begin
            empty_fu_164 <= tmp_8_reg_1372;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_164 <= reg_622;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_156 <= 7'd0;
    end else if (((icmp_ln20_reg_1163 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_1_fu_156 <= select_ln20_fu_764_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln20_fu_674_p2 == 1'd0))) begin
            indvar_flatten21_fu_160 <= add_ln20_1_fu_680_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten21_fu_160 <= 17'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln20_fu_674_p2 == 1'd0))) begin
            indvar_flatten7_fu_152 <= select_ln21_1_fu_698_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten7_fu_152 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_148 <= 7'd0;
    end else if (((icmp_ln20_reg_1163 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_148 <= select_ln21_fu_789_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_144 <= 7'd0;
    end else if (((icmp_ln20_reg_1163 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k_fu_144 <= add_ln23_fu_923_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_predicate_pred665_state40 <= ((tmp_7_reg_1368_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1191_pp0_iter1_reg == 3'd0) & (trunc_ln20_reg_1179_pp0_iter1_reg == 1'd0));
        ap_predicate_pred681_state40 <= ((tmp_7_reg_1368_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1191_pp0_iter1_reg == 3'd0) & (trunc_ln20_reg_1179_pp0_iter1_reg == 1'd1));
        ap_predicate_pred693_state40 <= ((tmp_7_reg_1368_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1191_pp0_iter1_reg == 3'd1) & (trunc_ln20_reg_1179_pp0_iter1_reg == 1'd0));
        ap_predicate_pred702_state40 <= ((tmp_7_reg_1368_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1191_pp0_iter1_reg == 3'd1) & (trunc_ln20_reg_1179_pp0_iter1_reg == 1'd1));
        ap_predicate_pred714_state40 <= ((tmp_7_reg_1368_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1191_pp0_iter1_reg == 3'd2) & (trunc_ln20_reg_1179_pp0_iter1_reg == 1'd0));
        ap_predicate_pred723_state40 <= ((tmp_7_reg_1368_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1191_pp0_iter1_reg == 3'd2) & (trunc_ln20_reg_1179_pp0_iter1_reg == 1'd1));
        ap_predicate_pred735_state40 <= ((tmp_7_reg_1368_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1191_pp0_iter1_reg == 3'd3) & (trunc_ln20_reg_1179_pp0_iter1_reg == 1'd0));
        ap_predicate_pred744_state40 <= ((tmp_7_reg_1368_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1191_pp0_iter1_reg == 3'd3) & (trunc_ln20_reg_1179_pp0_iter1_reg == 1'd1));
        ap_predicate_pred756_state40 <= ((tmp_7_reg_1368_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1191_pp0_iter1_reg == 3'd4) & (trunc_ln20_reg_1179_pp0_iter1_reg == 1'd0));
        ap_predicate_pred765_state40 <= ((tmp_7_reg_1368_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1191_pp0_iter1_reg == 3'd4) & (trunc_ln20_reg_1179_pp0_iter1_reg == 1'd1));
        ap_predicate_pred777_state40 <= ((tmp_7_reg_1368_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1191_pp0_iter1_reg == 3'd5) & (trunc_ln20_reg_1179_pp0_iter1_reg == 1'd0));
        ap_predicate_pred786_state40 <= ((tmp_7_reg_1368_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1191_pp0_iter1_reg == 3'd5) & (trunc_ln20_reg_1179_pp0_iter1_reg == 1'd1));
        ap_predicate_pred798_state40 <= ((tmp_7_reg_1368_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1191_pp0_iter1_reg == 3'd6) & (trunc_ln20_reg_1179_pp0_iter1_reg == 1'd0));
        ap_predicate_pred807_state40 <= ((tmp_7_reg_1368_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1191_pp0_iter1_reg == 3'd6) & (trunc_ln20_reg_1179_pp0_iter1_reg == 1'd1));
        ap_predicate_pred819_state40 <= ((tmp_7_reg_1368_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1191_pp0_iter1_reg == 3'd7) & (trunc_ln20_reg_1179_pp0_iter1_reg == 1'd0));
        ap_predicate_pred828_state40 <= ((tmp_7_reg_1368_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1191_pp0_iter1_reg == 3'd7) & (trunc_ln20_reg_1179_pp0_iter1_reg == 1'd1));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_10_addr_reg_1246 <= tmp_4_cast_fu_843_p1;
        buff_C_out_10_addr_reg_1246_pp0_iter1_reg <= buff_C_out_10_addr_reg_1246;
        buff_C_out_11_addr_reg_1251 <= tmp_4_cast_fu_843_p1;
        buff_C_out_11_addr_reg_1251_pp0_iter1_reg <= buff_C_out_11_addr_reg_1251;
        buff_C_out_12_addr_reg_1256 <= tmp_4_cast_fu_843_p1;
        buff_C_out_12_addr_reg_1256_pp0_iter1_reg <= buff_C_out_12_addr_reg_1256;
        buff_C_out_13_addr_reg_1261 <= tmp_4_cast_fu_843_p1;
        buff_C_out_13_addr_reg_1261_pp0_iter1_reg <= buff_C_out_13_addr_reg_1261;
        buff_C_out_14_addr_reg_1266 <= tmp_4_cast_fu_843_p1;
        buff_C_out_14_addr_reg_1266_pp0_iter1_reg <= buff_C_out_14_addr_reg_1266;
        buff_C_out_15_addr_reg_1271 <= tmp_4_cast_fu_843_p1;
        buff_C_out_15_addr_reg_1271_pp0_iter1_reg <= buff_C_out_15_addr_reg_1271;
        buff_C_out_1_addr_reg_1201 <= tmp_4_cast_fu_843_p1;
        buff_C_out_1_addr_reg_1201_pp0_iter1_reg <= buff_C_out_1_addr_reg_1201;
        buff_C_out_2_addr_reg_1206 <= tmp_4_cast_fu_843_p1;
        buff_C_out_2_addr_reg_1206_pp0_iter1_reg <= buff_C_out_2_addr_reg_1206;
        buff_C_out_3_addr_reg_1211 <= tmp_4_cast_fu_843_p1;
        buff_C_out_3_addr_reg_1211_pp0_iter1_reg <= buff_C_out_3_addr_reg_1211;
        buff_C_out_4_addr_reg_1216 <= tmp_4_cast_fu_843_p1;
        buff_C_out_4_addr_reg_1216_pp0_iter1_reg <= buff_C_out_4_addr_reg_1216;
        buff_C_out_5_addr_reg_1221 <= tmp_4_cast_fu_843_p1;
        buff_C_out_5_addr_reg_1221_pp0_iter1_reg <= buff_C_out_5_addr_reg_1221;
        buff_C_out_6_addr_reg_1226 <= tmp_4_cast_fu_843_p1;
        buff_C_out_6_addr_reg_1226_pp0_iter1_reg <= buff_C_out_6_addr_reg_1226;
        buff_C_out_7_addr_reg_1231 <= tmp_4_cast_fu_843_p1;
        buff_C_out_7_addr_reg_1231_pp0_iter1_reg <= buff_C_out_7_addr_reg_1231;
        buff_C_out_8_addr_reg_1236 <= tmp_4_cast_fu_843_p1;
        buff_C_out_8_addr_reg_1236_pp0_iter1_reg <= buff_C_out_8_addr_reg_1236;
        buff_C_out_9_addr_reg_1241 <= tmp_4_cast_fu_843_p1;
        buff_C_out_9_addr_reg_1241_pp0_iter1_reg <= buff_C_out_9_addr_reg_1241;
        buff_C_out_addr_reg_1196 <= tmp_4_cast_fu_843_p1;
        buff_C_out_addr_reg_1196_pp0_iter1_reg <= buff_C_out_addr_reg_1196;
        first_iter_1_reg_1175 <= first_iter_1_fu_801_p2;
        icmp_ln24_1_reg_1356 <= icmp_ln24_1_fu_917_p2;
        tmp_7_reg_1368 <= add_ln23_fu_923_p2[32'd6];
        tmp_7_reg_1368_pp0_iter1_reg <= tmp_7_reg_1368;
        trunc_ln20_reg_1179 <= trunc_ln20_fu_807_p1;
        trunc_ln20_reg_1179_pp0_iter1_reg <= trunc_ln20_reg_1179;
        trunc_ln21_1_reg_1191 <= trunc_ln21_1_fu_811_p1;
        trunc_ln21_1_reg_1191_pp0_iter1_reg <= trunc_ln21_1_reg_1191;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln20_reg_1163 <= icmp_ln20_fu_674_p2;
        icmp_ln21_reg_1167 <= icmp_ln21_fu_686_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_598 <= grp_fu_548_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_604 <= grp_fu_548_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_610 <= grp_fu_548_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_616 <= grp_fu_548_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_622 <= grp_fu_544_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln24_10_reg_1387 <= select_ln24_10_fu_1061_p3;
        select_ln24_11_reg_1392 <= select_ln24_11_fu_1068_p3;
        select_ln24_12_reg_1397 <= select_ln24_12_fu_1075_p3;
        select_ln24_13_reg_1402 <= select_ln24_13_fu_1082_p3;
        select_ln24_14_reg_1407 <= select_ln24_14_fu_1089_p3;
        select_ln24_15_reg_1412 <= select_ln24_15_fu_1096_p3;
        select_ln24_8_reg_1377 <= select_ln24_8_fu_1047_p3;
        select_ln24_9_reg_1382 <= select_ln24_9_fu_1054_p3;
        tmp_8_reg_1372 <= tmp_8_fu_1008_p19;
    end
end
always @ (*) begin
    if (((icmp_ln20_reg_1163 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
    if (((1'b0 == ap_block_pp0_stage28_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten21_load = 17'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten21_load = indvar_flatten21_fu_160;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten7_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten7_load = indvar_flatten7_fu_152;
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
        buff_A0_4_ce0_local = 1'b1;
    end else begin
        buff_A0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A0_5_ce0_local = 1'b1;
    end else begin
        buff_A0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A0_6_ce0_local = 1'b1;
    end else begin
        buff_A0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A0_7_ce0_local = 1'b1;
    end else begin
        buff_A0_7_ce0_local = 1'b0;
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
        buff_A1_4_ce0_local = 1'b1;
    end else begin
        buff_A1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A1_5_ce0_local = 1'b1;
    end else begin
        buff_A1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A1_6_ce0_local = 1'b1;
    end else begin
        buff_A1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A1_7_ce0_local = 1'b1;
    end else begin
        buff_A1_7_ce0_local = 1'b0;
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
        buff_C_out_10_address0_local = buff_C_out_10_addr_reg_1246_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_10_address0_local = tmp_4_cast_fu_843_p1;
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
    if (((ap_predicate_pred777_state40 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_10_we0_local = 1'b1;
    end else begin
        buff_C_out_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_11_address0_local = buff_C_out_11_addr_reg_1251_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_11_address0_local = tmp_4_cast_fu_843_p1;
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
    if (((ap_predicate_pred786_state40 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_11_we0_local = 1'b1;
    end else begin
        buff_C_out_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_12_address0_local = buff_C_out_12_addr_reg_1256_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_12_address0_local = tmp_4_cast_fu_843_p1;
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
    if (((ap_predicate_pred798_state40 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_12_we0_local = 1'b1;
    end else begin
        buff_C_out_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_13_address0_local = buff_C_out_13_addr_reg_1261_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_13_address0_local = tmp_4_cast_fu_843_p1;
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
    if (((ap_predicate_pred807_state40 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_13_we0_local = 1'b1;
    end else begin
        buff_C_out_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_14_address0_local = buff_C_out_14_addr_reg_1266_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_14_address0_local = tmp_4_cast_fu_843_p1;
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
    if (((ap_predicate_pred819_state40 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_14_we0_local = 1'b1;
    end else begin
        buff_C_out_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_15_address0_local = buff_C_out_15_addr_reg_1271_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_15_address0_local = tmp_4_cast_fu_843_p1;
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
    if (((ap_predicate_pred828_state40 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_15_we0_local = 1'b1;
    end else begin
        buff_C_out_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_1_address0_local = buff_C_out_1_addr_reg_1201_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_1_address0_local = tmp_4_cast_fu_843_p1;
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
    if (((ap_predicate_pred681_state40 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_1_we0_local = 1'b1;
    end else begin
        buff_C_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_2_address0_local = buff_C_out_2_addr_reg_1206_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_2_address0_local = tmp_4_cast_fu_843_p1;
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
    if (((ap_predicate_pred693_state40 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_2_we0_local = 1'b1;
    end else begin
        buff_C_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_3_address0_local = buff_C_out_3_addr_reg_1211_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_3_address0_local = tmp_4_cast_fu_843_p1;
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
    if (((ap_predicate_pred702_state40 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_3_we0_local = 1'b1;
    end else begin
        buff_C_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_4_address0_local = buff_C_out_4_addr_reg_1216_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_4_address0_local = tmp_4_cast_fu_843_p1;
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
    if (((ap_predicate_pred714_state40 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_4_we0_local = 1'b1;
    end else begin
        buff_C_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_5_address0_local = buff_C_out_5_addr_reg_1221_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_5_address0_local = tmp_4_cast_fu_843_p1;
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
    if (((ap_predicate_pred723_state40 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_5_we0_local = 1'b1;
    end else begin
        buff_C_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_6_address0_local = buff_C_out_6_addr_reg_1226_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_6_address0_local = tmp_4_cast_fu_843_p1;
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
    if (((ap_predicate_pred735_state40 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_6_we0_local = 1'b1;
    end else begin
        buff_C_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_7_address0_local = buff_C_out_7_addr_reg_1231_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_7_address0_local = tmp_4_cast_fu_843_p1;
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
    if (((ap_predicate_pred744_state40 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_7_we0_local = 1'b1;
    end else begin
        buff_C_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_8_address0_local = buff_C_out_8_addr_reg_1236_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_8_address0_local = tmp_4_cast_fu_843_p1;
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
    if (((ap_predicate_pred756_state40 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_8_we0_local = 1'b1;
    end else begin
        buff_C_out_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_9_address0_local = buff_C_out_9_addr_reg_1241_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_9_address0_local = tmp_4_cast_fu_843_p1;
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
    if (((ap_predicate_pred765_state40 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_9_we0_local = 1'b1;
    end else begin
        buff_C_out_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_address0_local = buff_C_out_addr_reg_1196_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_C_out_address0_local = tmp_4_cast_fu_843_p1;
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
    if (((ap_predicate_pred665_state40 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        buff_C_out_we0_local = 1'b1;
    end else begin
        buff_C_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        grp_fu_590_p0 = reg_622;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_590_p0 = empty_fu_164;
    end else begin
        grp_fu_590_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_590_p1 = reg_616;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_590_p1 = reg_610;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_590_p1 = reg_604;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_590_p1 = reg_598;
    end else begin
        grp_fu_590_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_594_p0 = reg_616;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_594_p0 = reg_610;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_594_p0 = reg_604;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_594_p0 = reg_598;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_594_p0 = select_ln24_14_reg_1407;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_594_p0 = select_ln24_12_reg_1397;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_594_p0 = select_ln24_10_reg_1387;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_594_p0 = select_ln24_8_reg_1377;
        end else begin
            grp_fu_594_p0 = 'bx;
        end
    end else begin
        grp_fu_594_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_594_p1 = select_ln24_15_reg_1412;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_594_p1 = select_ln24_13_reg_1402;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_594_p1 = select_ln24_11_reg_1392;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_594_p1 = select_ln24_9_reg_1382;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_594_p1 = alpha;
    end else begin
        grp_fu_594_p1 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln20_1_fu_680_p2 = (ap_sig_allocacmp_indvar_flatten21_load + 17'd1);
assign add_ln20_fu_725_p2 = (i_1_fu_156 + 7'd1);
assign add_ln21_1_fu_692_p2 = (ap_sig_allocacmp_indvar_flatten7_load + 12'd1);
assign add_ln21_fu_775_p2 = (select_ln5_fu_731_p3 + 7'd1);
assign add_ln23_fu_923_p2 = (k_mid2_fu_781_p3 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
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
always @ (*) begin
    ap_condition_1370 = ((icmp_ln20_reg_1163 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (first_iter_1_reg_1175 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign buff_A0_1_address0 = zext_ln24_fu_885_p1;
assign buff_A0_1_ce0 = buff_A0_1_ce0_local;
assign buff_A0_2_address0 = zext_ln24_fu_885_p1;
assign buff_A0_2_ce0 = buff_A0_2_ce0_local;
assign buff_A0_3_address0 = zext_ln24_fu_885_p1;
assign buff_A0_3_ce0 = buff_A0_3_ce0_local;
assign buff_A0_4_address0 = zext_ln24_fu_885_p1;
assign buff_A0_4_ce0 = buff_A0_4_ce0_local;
assign buff_A0_5_address0 = zext_ln24_fu_885_p1;
assign buff_A0_5_ce0 = buff_A0_5_ce0_local;
assign buff_A0_6_address0 = zext_ln24_fu_885_p1;
assign buff_A0_6_ce0 = buff_A0_6_ce0_local;
assign buff_A0_7_address0 = zext_ln24_fu_885_p1;
assign buff_A0_7_ce0 = buff_A0_7_ce0_local;
assign buff_A0_address0 = zext_ln24_fu_885_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_A1_1_address0 = zext_ln24_1_fu_905_p1;
assign buff_A1_1_ce0 = buff_A1_1_ce0_local;
assign buff_A1_2_address0 = zext_ln24_1_fu_905_p1;
assign buff_A1_2_ce0 = buff_A1_2_ce0_local;
assign buff_A1_3_address0 = zext_ln24_1_fu_905_p1;
assign buff_A1_3_ce0 = buff_A1_3_ce0_local;
assign buff_A1_4_address0 = zext_ln24_1_fu_905_p1;
assign buff_A1_4_ce0 = buff_A1_4_ce0_local;
assign buff_A1_5_address0 = zext_ln24_1_fu_905_p1;
assign buff_A1_5_ce0 = buff_A1_5_ce0_local;
assign buff_A1_6_address0 = zext_ln24_1_fu_905_p1;
assign buff_A1_6_ce0 = buff_A1_6_ce0_local;
assign buff_A1_7_address0 = zext_ln24_1_fu_905_p1;
assign buff_A1_7_ce0 = buff_A1_7_ce0_local;
assign buff_A1_address0 = zext_ln24_1_fu_905_p1;
assign buff_A1_ce0 = buff_A1_ce0_local;
assign buff_C_out_10_address0 = buff_C_out_10_address0_local;
assign buff_C_out_10_ce0 = buff_C_out_10_ce0_local;
assign buff_C_out_10_d0 = reg_622;
assign buff_C_out_10_we0 = buff_C_out_10_we0_local;
assign buff_C_out_11_address0 = buff_C_out_11_address0_local;
assign buff_C_out_11_ce0 = buff_C_out_11_ce0_local;
assign buff_C_out_11_d0 = reg_622;
assign buff_C_out_11_we0 = buff_C_out_11_we0_local;
assign buff_C_out_12_address0 = buff_C_out_12_address0_local;
assign buff_C_out_12_ce0 = buff_C_out_12_ce0_local;
assign buff_C_out_12_d0 = reg_622;
assign buff_C_out_12_we0 = buff_C_out_12_we0_local;
assign buff_C_out_13_address0 = buff_C_out_13_address0_local;
assign buff_C_out_13_ce0 = buff_C_out_13_ce0_local;
assign buff_C_out_13_d0 = reg_622;
assign buff_C_out_13_we0 = buff_C_out_13_we0_local;
assign buff_C_out_14_address0 = buff_C_out_14_address0_local;
assign buff_C_out_14_ce0 = buff_C_out_14_ce0_local;
assign buff_C_out_14_d0 = reg_622;
assign buff_C_out_14_we0 = buff_C_out_14_we0_local;
assign buff_C_out_15_address0 = buff_C_out_15_address0_local;
assign buff_C_out_15_ce0 = buff_C_out_15_ce0_local;
assign buff_C_out_15_d0 = reg_622;
assign buff_C_out_15_we0 = buff_C_out_15_we0_local;
assign buff_C_out_1_address0 = buff_C_out_1_address0_local;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_d0 = reg_622;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_2_address0 = buff_C_out_2_address0_local;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_2_d0 = reg_622;
assign buff_C_out_2_we0 = buff_C_out_2_we0_local;
assign buff_C_out_3_address0 = buff_C_out_3_address0_local;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_3_d0 = reg_622;
assign buff_C_out_3_we0 = buff_C_out_3_we0_local;
assign buff_C_out_4_address0 = buff_C_out_4_address0_local;
assign buff_C_out_4_ce0 = buff_C_out_4_ce0_local;
assign buff_C_out_4_d0 = reg_622;
assign buff_C_out_4_we0 = buff_C_out_4_we0_local;
assign buff_C_out_5_address0 = buff_C_out_5_address0_local;
assign buff_C_out_5_ce0 = buff_C_out_5_ce0_local;
assign buff_C_out_5_d0 = reg_622;
assign buff_C_out_5_we0 = buff_C_out_5_we0_local;
assign buff_C_out_6_address0 = buff_C_out_6_address0_local;
assign buff_C_out_6_ce0 = buff_C_out_6_ce0_local;
assign buff_C_out_6_d0 = reg_622;
assign buff_C_out_6_we0 = buff_C_out_6_we0_local;
assign buff_C_out_7_address0 = buff_C_out_7_address0_local;
assign buff_C_out_7_ce0 = buff_C_out_7_ce0_local;
assign buff_C_out_7_d0 = reg_622;
assign buff_C_out_7_we0 = buff_C_out_7_we0_local;
assign buff_C_out_8_address0 = buff_C_out_8_address0_local;
assign buff_C_out_8_ce0 = buff_C_out_8_ce0_local;
assign buff_C_out_8_d0 = reg_622;
assign buff_C_out_8_we0 = buff_C_out_8_we0_local;
assign buff_C_out_9_address0 = buff_C_out_9_address0_local;
assign buff_C_out_9_ce0 = buff_C_out_9_ce0_local;
assign buff_C_out_9_d0 = reg_622;
assign buff_C_out_9_we0 = buff_C_out_9_we0_local;
assign buff_C_out_address0 = buff_C_out_address0_local;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_d0 = reg_622;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign empty_11_fu_797_p1 = select_ln21_fu_789_p3[5:0];
assign first_iter_1_fu_801_p2 = ((k_mid2_fu_781_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_544_p_ce = 1'b1;
assign grp_fu_544_p_din0 = grp_fu_590_p0;
assign grp_fu_544_p_din1 = grp_fu_590_p1;
assign grp_fu_544_p_opcode = 2'd0;
assign grp_fu_548_p_ce = 1'b1;
assign grp_fu_548_p_din0 = grp_fu_594_p0;
assign grp_fu_548_p_din1 = grp_fu_594_p1;
assign icmp_ln20_fu_674_p2 = ((ap_sig_allocacmp_indvar_flatten21_load == 17'd65536) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_686_p2 = ((ap_sig_allocacmp_indvar_flatten7_load == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln24_1_fu_917_p2 = ((trunc_ln23_fu_863_p1 != 3'd0) ? 1'b1 : 1'b0);
assign k_mid2_fu_781_p3 = ((or_ln5_fu_759_p2[0:0] == 1'b1) ? select_ln5_1_fu_738_p3 : 7'd0);
assign lshr_ln5_4_fu_815_p4 = {{select_ln21_fu_789_p3[5:3]}};
assign lshr_ln5_6_fu_867_p4 = {{k_mid2_fu_781_p3[5:3]}};
assign or_ln5_fu_759_p2 = (xor_ln23_fu_753_p2 | icmp_ln21_reg_1167);
assign select_ln20_fu_764_p3 = ((icmp_ln21_reg_1167[0:0] == 1'b1) ? add_ln20_fu_725_p2 : i_1_fu_156);
assign select_ln21_1_fu_698_p3 = ((icmp_ln21_fu_686_p2[0:0] == 1'b1) ? 12'd1 : add_ln21_1_fu_692_p2);
assign select_ln21_fu_789_p3 = ((or_ln5_fu_759_p2[0:0] == 1'b1) ? select_ln5_fu_731_p3 : add_ln21_fu_775_p2);
assign select_ln24_10_fu_1061_p3 = ((icmp_ln24_1_reg_1356[0:0] == 1'b1) ? buff_A0_5_q0 : buff_A0_1_q0);
assign select_ln24_11_fu_1068_p3 = ((icmp_ln24_1_reg_1356[0:0] == 1'b1) ? buff_A1_5_q0 : buff_A1_1_q0);
assign select_ln24_12_fu_1075_p3 = ((icmp_ln24_1_reg_1356[0:0] == 1'b1) ? buff_A0_6_q0 : buff_A0_2_q0);
assign select_ln24_13_fu_1082_p3 = ((icmp_ln24_1_reg_1356[0:0] == 1'b1) ? buff_A1_6_q0 : buff_A1_2_q0);
assign select_ln24_14_fu_1089_p3 = ((icmp_ln24_1_reg_1356[0:0] == 1'b1) ? buff_A0_7_q0 : buff_A0_3_q0);
assign select_ln24_15_fu_1096_p3 = ((icmp_ln24_1_reg_1356[0:0] == 1'b1) ? buff_A1_7_q0 : buff_A1_3_q0);
assign select_ln24_8_fu_1047_p3 = ((icmp_ln24_1_reg_1356[0:0] == 1'b1) ? buff_A0_4_q0 : buff_A0_q0);
assign select_ln24_9_fu_1054_p3 = ((icmp_ln24_1_reg_1356[0:0] == 1'b1) ? buff_A1_4_q0 : buff_A1_q0);
assign select_ln5_1_fu_738_p3 = ((icmp_ln21_reg_1167[0:0] == 1'b1) ? 7'd0 : k_fu_144);
assign select_ln5_fu_731_p3 = ((icmp_ln21_reg_1167[0:0] == 1'b1) ? 7'd0 : j_fu_148);
assign tmp_3_fu_825_p4 = {{select_ln20_fu_764_p3[5:1]}};
assign tmp_4_cast_fu_843_p1 = tmp_4_fu_835_p3;
assign tmp_4_fu_835_p3 = {{tmp_3_fu_825_p4}, {lshr_ln5_4_fu_815_p4}};
assign tmp_5_fu_877_p3 = {{trunc_ln21_fu_771_p1}, {lshr_ln5_6_fu_867_p4}};
assign tmp_6_fu_897_p3 = {{empty_11_fu_797_p1}, {lshr_ln5_6_fu_867_p4}};
assign tmp_8_fu_1008_p10 = ((trunc_ln20_reg_1179[0:0] == 1'b1) ? buff_C_out_9_q0 : buff_C_out_8_q0);
assign tmp_8_fu_1008_p12 = ((trunc_ln20_reg_1179[0:0] == 1'b1) ? buff_C_out_11_q0 : buff_C_out_10_q0);
assign tmp_8_fu_1008_p14 = ((trunc_ln20_reg_1179[0:0] == 1'b1) ? buff_C_out_13_q0 : buff_C_out_12_q0);
assign tmp_8_fu_1008_p16 = ((trunc_ln20_reg_1179[0:0] == 1'b1) ? buff_C_out_15_q0 : buff_C_out_14_q0);
assign tmp_8_fu_1008_p17 = 'bx;
assign tmp_8_fu_1008_p2 = ((trunc_ln20_reg_1179[0:0] == 1'b1) ? buff_C_out_1_q0 : buff_C_out_q0);
assign tmp_8_fu_1008_p4 = ((trunc_ln20_reg_1179[0:0] == 1'b1) ? buff_C_out_3_q0 : buff_C_out_2_q0);
assign tmp_8_fu_1008_p6 = ((trunc_ln20_reg_1179[0:0] == 1'b1) ? buff_C_out_5_q0 : buff_C_out_4_q0);
assign tmp_8_fu_1008_p8 = ((trunc_ln20_reg_1179[0:0] == 1'b1) ? buff_C_out_7_q0 : buff_C_out_6_q0);
assign tmp_fu_745_p3 = k_fu_144[32'd6];
assign trunc_ln20_fu_807_p1 = select_ln20_fu_764_p3[0:0];
assign trunc_ln21_1_fu_811_p1 = select_ln21_fu_789_p3[2:0];
assign trunc_ln21_fu_771_p1 = select_ln20_fu_764_p3[5:0];
assign trunc_ln23_fu_863_p1 = k_mid2_fu_781_p3[2:0];
assign xor_ln23_fu_753_p2 = (tmp_fu_745_p3 ^ 1'd1);
assign zext_ln24_1_fu_905_p1 = tmp_6_fu_897_p3;
assign zext_ln24_fu_885_p1 = tmp_5_fu_877_p3;
endmodule 
