
module backprop_backprop_Pipeline_label_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v20_3_address0,v20_3_ce0,v20_3_we0,v20_3_d0,v20_2_address0,v20_2_ce0,v20_2_we0,v20_2_d0,v20_1_address0,v20_1_ce0,v20_1_we0,v20_1_d0,v20_address0,v20_ce0,v20_we0,v20_d0,v0_address0,v0_ce0,v0_q0,v0_address1,v0_ce1,v0_q1,v26,v26_1,v26_2,v26_3,v26_4,v26_5,v26_6,v26_7,v26_8,v26_9,v26_10,v26_11,v26_12,grp_fu_4642_p_din0,grp_fu_4642_p_din1,grp_fu_4642_p_opcode,grp_fu_4642_p_dout0,grp_fu_4642_p_ce,grp_fu_4646_p_din0,grp_fu_4646_p_din1,grp_fu_4646_p_opcode,grp_fu_4646_p_dout0,grp_fu_4646_p_ce,grp_fu_4650_p_din0,grp_fu_4650_p_din1,grp_fu_4650_p_dout0,grp_fu_4650_p_ce,grp_fu_4654_p_din0,grp_fu_4654_p_din1,grp_fu_4654_p_dout0,grp_fu_4654_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] v20_3_address0;
output   v20_3_ce0;
output   v20_3_we0;
output  [63:0] v20_3_d0;
output  [3:0] v20_2_address0;
output   v20_2_ce0;
output   v20_2_we0;
output  [63:0] v20_2_d0;
output  [3:0] v20_1_address0;
output   v20_1_ce0;
output   v20_1_we0;
output  [63:0] v20_1_d0;
output  [3:0] v20_address0;
output   v20_ce0;
output   v20_we0;
output  [63:0] v20_d0;
output  [9:0] v0_address0;
output   v0_ce0;
input  [63:0] v0_q0;
output  [9:0] v0_address1;
output   v0_ce1;
input  [63:0] v0_q1;
input  [63:0] v26;
input  [63:0] v26_1;
input  [63:0] v26_2;
input  [63:0] v26_3;
input  [63:0] v26_4;
input  [63:0] v26_5;
input  [63:0] v26_6;
input  [63:0] v26_7;
input  [63:0] v26_8;
input  [63:0] v26_9;
input  [63:0] v26_10;
input  [63:0] v26_11;
input  [63:0] v26_12;
output  [63:0] grp_fu_4642_p_din0;
output  [63:0] grp_fu_4642_p_din1;
output  [0:0] grp_fu_4642_p_opcode;
input  [63:0] grp_fu_4642_p_dout0;
output   grp_fu_4642_p_ce;
output  [63:0] grp_fu_4646_p_din0;
output  [63:0] grp_fu_4646_p_din1;
output  [0:0] grp_fu_4646_p_opcode;
input  [63:0] grp_fu_4646_p_dout0;
output   grp_fu_4646_p_ce;
output  [63:0] grp_fu_4650_p_din0;
output  [63:0] grp_fu_4650_p_din1;
input  [63:0] grp_fu_4650_p_dout0;
output   grp_fu_4650_p_ce;
output  [63:0] grp_fu_4654_p_din0;
output  [63:0] grp_fu_4654_p_din1;
input  [63:0] grp_fu_4654_p_dout0;
output   grp_fu_4654_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
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
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln66_reg_721;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_378;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_383;
wire   [0:0] icmp_ln66_fu_400_p2;
reg   [0:0] icmp_ln66_reg_721_pp0_iter1_reg;
reg   [0:0] icmp_ln66_reg_721_pp0_iter2_reg;
reg   [0:0] icmp_ln66_reg_721_pp0_iter3_reg;
reg   [0:0] icmp_ln66_reg_721_pp0_iter4_reg;
reg   [0:0] icmp_ln66_reg_721_pp0_iter5_reg;
reg   [0:0] icmp_ln66_reg_721_pp0_iter6_reg;
reg   [0:0] icmp_ln66_reg_721_pp0_iter7_reg;
reg   [0:0] icmp_ln66_reg_721_pp0_iter8_reg;
reg   [0:0] icmp_ln66_reg_721_pp0_iter9_reg;
reg   [0:0] icmp_ln66_reg_721_pp0_iter10_reg;
reg   [0:0] icmp_ln66_reg_721_pp0_iter11_reg;
reg   [0:0] icmp_ln66_reg_721_pp0_iter12_reg;
reg   [0:0] icmp_ln66_reg_721_pp0_iter13_reg;
reg   [0:0] icmp_ln66_reg_721_pp0_iter14_reg;
reg   [0:0] icmp_ln66_reg_721_pp0_iter15_reg;
reg   [9:0] phi_mul_load_reg_725;
wire   [1:0] trunc_ln66_fu_415_p1;
reg   [1:0] trunc_ln66_reg_741;
reg   [1:0] trunc_ln66_reg_741_pp0_iter1_reg;
reg   [1:0] trunc_ln66_reg_741_pp0_iter2_reg;
reg   [1:0] trunc_ln66_reg_741_pp0_iter3_reg;
reg   [1:0] trunc_ln66_reg_741_pp0_iter4_reg;
reg   [1:0] trunc_ln66_reg_741_pp0_iter5_reg;
reg   [1:0] trunc_ln66_reg_741_pp0_iter6_reg;
reg   [1:0] trunc_ln66_reg_741_pp0_iter7_reg;
reg   [1:0] trunc_ln66_reg_741_pp0_iter8_reg;
reg   [1:0] trunc_ln66_reg_741_pp0_iter9_reg;
reg   [1:0] trunc_ln66_reg_741_pp0_iter10_reg;
reg   [1:0] trunc_ln66_reg_741_pp0_iter11_reg;
reg   [1:0] trunc_ln66_reg_741_pp0_iter12_reg;
reg   [1:0] trunc_ln66_reg_741_pp0_iter13_reg;
reg   [1:0] trunc_ln66_reg_741_pp0_iter14_reg;
reg   [1:0] trunc_ln66_reg_741_pp0_iter15_reg;
reg   [1:0] trunc_ln66_reg_741_pp0_iter16_reg;
reg   [3:0] lshr_ln1_reg_745;
reg   [3:0] lshr_ln1_reg_745_pp0_iter1_reg;
reg   [3:0] lshr_ln1_reg_745_pp0_iter2_reg;
reg   [3:0] lshr_ln1_reg_745_pp0_iter3_reg;
reg   [3:0] lshr_ln1_reg_745_pp0_iter4_reg;
reg   [3:0] lshr_ln1_reg_745_pp0_iter5_reg;
reg   [3:0] lshr_ln1_reg_745_pp0_iter6_reg;
reg   [3:0] lshr_ln1_reg_745_pp0_iter7_reg;
reg   [3:0] lshr_ln1_reg_745_pp0_iter8_reg;
reg   [3:0] lshr_ln1_reg_745_pp0_iter9_reg;
reg   [3:0] lshr_ln1_reg_745_pp0_iter10_reg;
reg   [3:0] lshr_ln1_reg_745_pp0_iter11_reg;
reg   [3:0] lshr_ln1_reg_745_pp0_iter12_reg;
reg   [3:0] lshr_ln1_reg_745_pp0_iter13_reg;
reg   [3:0] lshr_ln1_reg_745_pp0_iter14_reg;
reg   [3:0] lshr_ln1_reg_745_pp0_iter15_reg;
reg   [3:0] lshr_ln1_reg_745_pp0_iter16_reg;
wire   [63:0] v25_fu_470_p1;
wire   [63:0] v25_1_fu_475_p1;
wire   [63:0] v25_2_fu_500_p1;
wire   [63:0] v25_3_fu_505_p1;
wire   [63:0] v25_4_fu_530_p1;
wire   [63:0] v25_5_fu_535_p1;
wire   [63:0] v25_6_fu_560_p1;
wire   [63:0] v25_7_fu_565_p1;
wire   [63:0] v25_8_fu_595_p1;
wire   [63:0] v25_9_fu_600_p1;
wire   [63:0] v25_10_fu_620_p1;
wire   [63:0] v25_11_fu_625_p1;
reg   [63:0] v27_reg_875;
reg   [63:0] v27_1_reg_880;
reg   [63:0] v27_1_reg_880_pp0_iter2_reg;
wire   [63:0] v25_12_fu_630_p1;
reg   [63:0] v27_2_reg_890;
reg   [63:0] v27_2_reg_890_pp0_iter2_reg;
reg   [63:0] v27_2_reg_890_pp0_iter3_reg;
reg   [63:0] v27_3_reg_895;
reg   [63:0] v27_3_reg_895_pp0_iter2_reg;
reg   [63:0] v27_3_reg_895_pp0_iter3_reg;
reg   [63:0] v27_3_reg_895_pp0_iter4_reg;
reg   [63:0] v27_4_reg_900;
reg   [63:0] v27_4_reg_900_pp0_iter2_reg;
reg   [63:0] v27_4_reg_900_pp0_iter3_reg;
reg   [63:0] v27_4_reg_900_pp0_iter4_reg;
reg   [63:0] v27_4_reg_900_pp0_iter5_reg;
reg   [63:0] v27_5_reg_905;
reg   [63:0] v27_5_reg_905_pp0_iter2_reg;
reg   [63:0] v27_5_reg_905_pp0_iter3_reg;
reg   [63:0] v27_5_reg_905_pp0_iter4_reg;
reg   [63:0] v27_5_reg_905_pp0_iter5_reg;
reg   [63:0] v27_5_reg_905_pp0_iter6_reg;
reg   [63:0] v27_6_reg_910;
reg   [63:0] v27_6_reg_910_pp0_iter2_reg;
reg   [63:0] v27_6_reg_910_pp0_iter3_reg;
reg   [63:0] v27_6_reg_910_pp0_iter4_reg;
reg   [63:0] v27_6_reg_910_pp0_iter5_reg;
reg   [63:0] v27_6_reg_910_pp0_iter6_reg;
reg   [63:0] v27_6_reg_910_pp0_iter7_reg;
reg   [63:0] v27_7_reg_915;
reg   [63:0] v27_7_reg_915_pp0_iter2_reg;
reg   [63:0] v27_7_reg_915_pp0_iter3_reg;
reg   [63:0] v27_7_reg_915_pp0_iter4_reg;
reg   [63:0] v27_7_reg_915_pp0_iter5_reg;
reg   [63:0] v27_7_reg_915_pp0_iter6_reg;
reg   [63:0] v27_7_reg_915_pp0_iter7_reg;
reg   [63:0] v27_7_reg_915_pp0_iter8_reg;
reg   [63:0] v27_8_reg_920;
reg   [63:0] v27_8_reg_920_pp0_iter2_reg;
reg   [63:0] v27_8_reg_920_pp0_iter3_reg;
reg   [63:0] v27_8_reg_920_pp0_iter4_reg;
reg   [63:0] v27_8_reg_920_pp0_iter5_reg;
reg   [63:0] v27_8_reg_920_pp0_iter6_reg;
reg   [63:0] v27_8_reg_920_pp0_iter7_reg;
reg   [63:0] v27_8_reg_920_pp0_iter8_reg;
reg   [63:0] v27_8_reg_920_pp0_iter9_reg;
reg   [63:0] v27_9_reg_925;
reg   [63:0] v27_9_reg_925_pp0_iter2_reg;
reg   [63:0] v27_9_reg_925_pp0_iter3_reg;
reg   [63:0] v27_9_reg_925_pp0_iter4_reg;
reg   [63:0] v27_9_reg_925_pp0_iter5_reg;
reg   [63:0] v27_9_reg_925_pp0_iter6_reg;
reg   [63:0] v27_9_reg_925_pp0_iter7_reg;
reg   [63:0] v27_9_reg_925_pp0_iter8_reg;
reg   [63:0] v27_9_reg_925_pp0_iter9_reg;
reg   [63:0] v27_9_reg_925_pp0_iter10_reg;
reg   [63:0] v27_10_reg_930;
reg   [63:0] v27_10_reg_930_pp0_iter2_reg;
reg   [63:0] v27_10_reg_930_pp0_iter3_reg;
reg   [63:0] v27_10_reg_930_pp0_iter4_reg;
reg   [63:0] v27_10_reg_930_pp0_iter5_reg;
reg   [63:0] v27_10_reg_930_pp0_iter6_reg;
reg   [63:0] v27_10_reg_930_pp0_iter7_reg;
reg   [63:0] v27_10_reg_930_pp0_iter8_reg;
reg   [63:0] v27_10_reg_930_pp0_iter9_reg;
reg   [63:0] v27_10_reg_930_pp0_iter10_reg;
reg   [63:0] v27_10_reg_930_pp0_iter11_reg;
reg   [63:0] v27_11_reg_935;
reg   [63:0] v27_11_reg_935_pp0_iter2_reg;
reg   [63:0] v27_11_reg_935_pp0_iter3_reg;
reg   [63:0] v27_11_reg_935_pp0_iter4_reg;
reg   [63:0] v27_11_reg_935_pp0_iter5_reg;
reg   [63:0] v27_11_reg_935_pp0_iter6_reg;
reg   [63:0] v27_11_reg_935_pp0_iter7_reg;
reg   [63:0] v27_11_reg_935_pp0_iter8_reg;
reg   [63:0] v27_11_reg_935_pp0_iter9_reg;
reg   [63:0] v27_11_reg_935_pp0_iter10_reg;
reg   [63:0] v27_11_reg_935_pp0_iter11_reg;
reg   [63:0] v27_11_reg_935_pp0_iter12_reg;
reg   [63:0] v27_12_reg_940;
reg   [63:0] v27_12_reg_940_pp0_iter3_reg;
reg   [63:0] v27_12_reg_940_pp0_iter4_reg;
reg   [63:0] v27_12_reg_940_pp0_iter5_reg;
reg   [63:0] v27_12_reg_940_pp0_iter6_reg;
reg   [63:0] v27_12_reg_940_pp0_iter7_reg;
reg   [63:0] v27_12_reg_940_pp0_iter8_reg;
reg   [63:0] v27_12_reg_940_pp0_iter9_reg;
reg   [63:0] v27_12_reg_940_pp0_iter10_reg;
reg   [63:0] v27_12_reg_940_pp0_iter11_reg;
reg   [63:0] v27_12_reg_940_pp0_iter12_reg;
reg   [63:0] v27_12_reg_940_pp0_iter13_reg;
reg   [63:0] v27_12_reg_940_pp0_iter14_reg;
reg   [63:0] v29_13_reg_945;
reg   [63:0] v29_14_reg_950;
reg   [63:0] v29_15_reg_955;
reg   [63:0] v29_16_reg_960;
reg   [63:0] v29_17_reg_965;
reg   [63:0] v29_18_reg_970;
reg   [63:0] v29_19_reg_975;
reg   [63:0] v29_20_reg_980;
reg   [63:0] v29_21_reg_985;
reg   [63:0] v29_22_reg_990;
reg   [63:0] v29_23_reg_995;
reg   [63:0] v29_24_reg_1000;
reg   [63:0] v29_reg_1005;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln69_fu_429_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln69_1_fu_440_p1;
wire   [63:0] zext_ln69_2_fu_455_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln69_3_fu_465_p1;
wire   [63:0] zext_ln69_4_fu_485_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln69_5_fu_495_p1;
wire   [63:0] zext_ln69_6_fu_515_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln69_7_fu_525_p1;
wire   [63:0] zext_ln69_8_fu_545_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln69_9_fu_555_p1;
wire   [63:0] zext_ln69_10_fu_575_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln69_11_fu_585_p1;
wire   [63:0] zext_ln69_12_fu_610_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln66_fu_635_p1;
reg   [9:0] phi_mul_fu_110;
wire   [9:0] next_mul_fu_590_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_phi_mul_load;
reg   [6:0] v23_fu_114;
wire   [6:0] add_ln66_fu_406_p2;
reg   [6:0] ap_sig_allocacmp_v23_1;
reg    v0_ce1_local;
reg   [9:0] v0_address1_local;
reg    v0_ce0_local;
reg   [9:0] v0_address0_local;
reg    v20_2_we0_local;
reg    v20_2_ce0_local;
reg    v20_1_we0_local;
reg    v20_1_ce0_local;
reg    v20_we0_local;
reg    v20_ce0_local;
reg    v20_3_we0_local;
reg    v20_3_ce0_local;
reg   [63:0] grp_fu_361_p0;
reg   [63:0] grp_fu_361_p1;
reg   [63:0] grp_fu_366_p0;
reg   [63:0] grp_fu_366_p1;
reg   [63:0] grp_fu_370_p0;
reg   [63:0] grp_fu_370_p1;
reg   [63:0] grp_fu_374_p0;
reg   [63:0] grp_fu_374_p1;
wire   [9:0] add_ln69_fu_434_p2;
wire   [9:0] add_ln69_1_fu_450_p2;
wire   [9:0] add_ln69_2_fu_460_p2;
wire   [9:0] add_ln69_3_fu_480_p2;
wire   [9:0] add_ln69_4_fu_490_p2;
wire   [9:0] add_ln69_5_fu_510_p2;
wire   [9:0] add_ln69_6_fu_520_p2;
wire   [9:0] add_ln69_7_fu_540_p2;
wire   [9:0] add_ln69_8_fu_550_p2;
wire   [9:0] add_ln69_9_fu_570_p2;
wire   [9:0] add_ln69_10_fu_580_p2;
wire   [9:0] add_ln69_11_fu_605_p2;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter15_stage1;
reg    ap_idle_pp0_0to14;
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
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to16;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
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
#0 phi_mul_fu_110 = 10'd0;
#0 v23_fu_114 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter16 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        phi_mul_fu_110 <= 10'd0;
    end else if (((icmp_ln66_reg_721 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        phi_mul_fu_110 <= next_mul_fu_590_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_378 <= v0_q0;
    end else if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_378 <= v0_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln66_fu_400_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v23_fu_114 <= add_ln66_fu_406_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v23_fu_114 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln66_reg_721 <= icmp_ln66_fu_400_p2;
        icmp_ln66_reg_721_pp0_iter10_reg <= icmp_ln66_reg_721_pp0_iter9_reg;
        icmp_ln66_reg_721_pp0_iter11_reg <= icmp_ln66_reg_721_pp0_iter10_reg;
        icmp_ln66_reg_721_pp0_iter12_reg <= icmp_ln66_reg_721_pp0_iter11_reg;
        icmp_ln66_reg_721_pp0_iter13_reg <= icmp_ln66_reg_721_pp0_iter12_reg;
        icmp_ln66_reg_721_pp0_iter14_reg <= icmp_ln66_reg_721_pp0_iter13_reg;
        icmp_ln66_reg_721_pp0_iter15_reg <= icmp_ln66_reg_721_pp0_iter14_reg;
        icmp_ln66_reg_721_pp0_iter1_reg <= icmp_ln66_reg_721;
        icmp_ln66_reg_721_pp0_iter2_reg <= icmp_ln66_reg_721_pp0_iter1_reg;
        icmp_ln66_reg_721_pp0_iter3_reg <= icmp_ln66_reg_721_pp0_iter2_reg;
        icmp_ln66_reg_721_pp0_iter4_reg <= icmp_ln66_reg_721_pp0_iter3_reg;
        icmp_ln66_reg_721_pp0_iter5_reg <= icmp_ln66_reg_721_pp0_iter4_reg;
        icmp_ln66_reg_721_pp0_iter6_reg <= icmp_ln66_reg_721_pp0_iter5_reg;
        icmp_ln66_reg_721_pp0_iter7_reg <= icmp_ln66_reg_721_pp0_iter6_reg;
        icmp_ln66_reg_721_pp0_iter8_reg <= icmp_ln66_reg_721_pp0_iter7_reg;
        icmp_ln66_reg_721_pp0_iter9_reg <= icmp_ln66_reg_721_pp0_iter8_reg;
        lshr_ln1_reg_745 <= {{ap_sig_allocacmp_v23_1[5:2]}};
        lshr_ln1_reg_745_pp0_iter10_reg <= lshr_ln1_reg_745_pp0_iter9_reg;
        lshr_ln1_reg_745_pp0_iter11_reg <= lshr_ln1_reg_745_pp0_iter10_reg;
        lshr_ln1_reg_745_pp0_iter12_reg <= lshr_ln1_reg_745_pp0_iter11_reg;
        lshr_ln1_reg_745_pp0_iter13_reg <= lshr_ln1_reg_745_pp0_iter12_reg;
        lshr_ln1_reg_745_pp0_iter14_reg <= lshr_ln1_reg_745_pp0_iter13_reg;
        lshr_ln1_reg_745_pp0_iter15_reg <= lshr_ln1_reg_745_pp0_iter14_reg;
        lshr_ln1_reg_745_pp0_iter16_reg <= lshr_ln1_reg_745_pp0_iter15_reg;
        lshr_ln1_reg_745_pp0_iter1_reg <= lshr_ln1_reg_745;
        lshr_ln1_reg_745_pp0_iter2_reg <= lshr_ln1_reg_745_pp0_iter1_reg;
        lshr_ln1_reg_745_pp0_iter3_reg <= lshr_ln1_reg_745_pp0_iter2_reg;
        lshr_ln1_reg_745_pp0_iter4_reg <= lshr_ln1_reg_745_pp0_iter3_reg;
        lshr_ln1_reg_745_pp0_iter5_reg <= lshr_ln1_reg_745_pp0_iter4_reg;
        lshr_ln1_reg_745_pp0_iter6_reg <= lshr_ln1_reg_745_pp0_iter5_reg;
        lshr_ln1_reg_745_pp0_iter7_reg <= lshr_ln1_reg_745_pp0_iter6_reg;
        lshr_ln1_reg_745_pp0_iter8_reg <= lshr_ln1_reg_745_pp0_iter7_reg;
        lshr_ln1_reg_745_pp0_iter9_reg <= lshr_ln1_reg_745_pp0_iter8_reg;
        phi_mul_load_reg_725 <= ap_sig_allocacmp_phi_mul_load;
        trunc_ln66_reg_741 <= trunc_ln66_fu_415_p1;
        trunc_ln66_reg_741_pp0_iter10_reg <= trunc_ln66_reg_741_pp0_iter9_reg;
        trunc_ln66_reg_741_pp0_iter11_reg <= trunc_ln66_reg_741_pp0_iter10_reg;
        trunc_ln66_reg_741_pp0_iter12_reg <= trunc_ln66_reg_741_pp0_iter11_reg;
        trunc_ln66_reg_741_pp0_iter13_reg <= trunc_ln66_reg_741_pp0_iter12_reg;
        trunc_ln66_reg_741_pp0_iter14_reg <= trunc_ln66_reg_741_pp0_iter13_reg;
        trunc_ln66_reg_741_pp0_iter15_reg <= trunc_ln66_reg_741_pp0_iter14_reg;
        trunc_ln66_reg_741_pp0_iter16_reg <= trunc_ln66_reg_741_pp0_iter15_reg;
        trunc_ln66_reg_741_pp0_iter1_reg <= trunc_ln66_reg_741;
        trunc_ln66_reg_741_pp0_iter2_reg <= trunc_ln66_reg_741_pp0_iter1_reg;
        trunc_ln66_reg_741_pp0_iter3_reg <= trunc_ln66_reg_741_pp0_iter2_reg;
        trunc_ln66_reg_741_pp0_iter4_reg <= trunc_ln66_reg_741_pp0_iter3_reg;
        trunc_ln66_reg_741_pp0_iter5_reg <= trunc_ln66_reg_741_pp0_iter4_reg;
        trunc_ln66_reg_741_pp0_iter6_reg <= trunc_ln66_reg_741_pp0_iter5_reg;
        trunc_ln66_reg_741_pp0_iter7_reg <= trunc_ln66_reg_741_pp0_iter6_reg;
        trunc_ln66_reg_741_pp0_iter8_reg <= trunc_ln66_reg_741_pp0_iter7_reg;
        trunc_ln66_reg_741_pp0_iter9_reg <= trunc_ln66_reg_741_pp0_iter8_reg;
        v27_12_reg_940_pp0_iter10_reg <= v27_12_reg_940_pp0_iter9_reg;
        v27_12_reg_940_pp0_iter11_reg <= v27_12_reg_940_pp0_iter10_reg;
        v27_12_reg_940_pp0_iter12_reg <= v27_12_reg_940_pp0_iter11_reg;
        v27_12_reg_940_pp0_iter13_reg <= v27_12_reg_940_pp0_iter12_reg;
        v27_12_reg_940_pp0_iter14_reg <= v27_12_reg_940_pp0_iter13_reg;
        v27_12_reg_940_pp0_iter3_reg <= v27_12_reg_940;
        v27_12_reg_940_pp0_iter4_reg <= v27_12_reg_940_pp0_iter3_reg;
        v27_12_reg_940_pp0_iter5_reg <= v27_12_reg_940_pp0_iter4_reg;
        v27_12_reg_940_pp0_iter6_reg <= v27_12_reg_940_pp0_iter5_reg;
        v27_12_reg_940_pp0_iter7_reg <= v27_12_reg_940_pp0_iter6_reg;
        v27_12_reg_940_pp0_iter8_reg <= v27_12_reg_940_pp0_iter7_reg;
        v27_12_reg_940_pp0_iter9_reg <= v27_12_reg_940_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_383 <= v0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v27_10_reg_930 <= grp_fu_4650_p_dout0;
        v27_11_reg_935 <= grp_fu_4654_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v27_10_reg_930_pp0_iter10_reg <= v27_10_reg_930_pp0_iter9_reg;
        v27_10_reg_930_pp0_iter11_reg <= v27_10_reg_930_pp0_iter10_reg;
        v27_10_reg_930_pp0_iter2_reg <= v27_10_reg_930;
        v27_10_reg_930_pp0_iter3_reg <= v27_10_reg_930_pp0_iter2_reg;
        v27_10_reg_930_pp0_iter4_reg <= v27_10_reg_930_pp0_iter3_reg;
        v27_10_reg_930_pp0_iter5_reg <= v27_10_reg_930_pp0_iter4_reg;
        v27_10_reg_930_pp0_iter6_reg <= v27_10_reg_930_pp0_iter5_reg;
        v27_10_reg_930_pp0_iter7_reg <= v27_10_reg_930_pp0_iter6_reg;
        v27_10_reg_930_pp0_iter8_reg <= v27_10_reg_930_pp0_iter7_reg;
        v27_10_reg_930_pp0_iter9_reg <= v27_10_reg_930_pp0_iter8_reg;
        v27_11_reg_935_pp0_iter10_reg <= v27_11_reg_935_pp0_iter9_reg;
        v27_11_reg_935_pp0_iter11_reg <= v27_11_reg_935_pp0_iter10_reg;
        v27_11_reg_935_pp0_iter12_reg <= v27_11_reg_935_pp0_iter11_reg;
        v27_11_reg_935_pp0_iter2_reg <= v27_11_reg_935;
        v27_11_reg_935_pp0_iter3_reg <= v27_11_reg_935_pp0_iter2_reg;
        v27_11_reg_935_pp0_iter4_reg <= v27_11_reg_935_pp0_iter3_reg;
        v27_11_reg_935_pp0_iter5_reg <= v27_11_reg_935_pp0_iter4_reg;
        v27_11_reg_935_pp0_iter6_reg <= v27_11_reg_935_pp0_iter5_reg;
        v27_11_reg_935_pp0_iter7_reg <= v27_11_reg_935_pp0_iter6_reg;
        v27_11_reg_935_pp0_iter8_reg <= v27_11_reg_935_pp0_iter7_reg;
        v27_11_reg_935_pp0_iter9_reg <= v27_11_reg_935_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_12_reg_940 <= grp_fu_4650_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_1_reg_880 <= grp_fu_4654_p_dout0;
        v27_reg_875 <= grp_fu_4650_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_1_reg_880_pp0_iter2_reg <= v27_1_reg_880;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_2_reg_890 <= grp_fu_4650_p_dout0;
        v27_3_reg_895 <= grp_fu_4654_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_2_reg_890_pp0_iter2_reg <= v27_2_reg_890;
        v27_2_reg_890_pp0_iter3_reg <= v27_2_reg_890_pp0_iter2_reg;
        v27_3_reg_895_pp0_iter2_reg <= v27_3_reg_895;
        v27_3_reg_895_pp0_iter3_reg <= v27_3_reg_895_pp0_iter2_reg;
        v27_3_reg_895_pp0_iter4_reg <= v27_3_reg_895_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_4_reg_900 <= grp_fu_4650_p_dout0;
        v27_5_reg_905 <= grp_fu_4654_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_4_reg_900_pp0_iter2_reg <= v27_4_reg_900;
        v27_4_reg_900_pp0_iter3_reg <= v27_4_reg_900_pp0_iter2_reg;
        v27_4_reg_900_pp0_iter4_reg <= v27_4_reg_900_pp0_iter3_reg;
        v27_4_reg_900_pp0_iter5_reg <= v27_4_reg_900_pp0_iter4_reg;
        v27_5_reg_905_pp0_iter2_reg <= v27_5_reg_905;
        v27_5_reg_905_pp0_iter3_reg <= v27_5_reg_905_pp0_iter2_reg;
        v27_5_reg_905_pp0_iter4_reg <= v27_5_reg_905_pp0_iter3_reg;
        v27_5_reg_905_pp0_iter5_reg <= v27_5_reg_905_pp0_iter4_reg;
        v27_5_reg_905_pp0_iter6_reg <= v27_5_reg_905_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v27_6_reg_910 <= grp_fu_4650_p_dout0;
        v27_7_reg_915 <= grp_fu_4654_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v27_6_reg_910_pp0_iter2_reg <= v27_6_reg_910;
        v27_6_reg_910_pp0_iter3_reg <= v27_6_reg_910_pp0_iter2_reg;
        v27_6_reg_910_pp0_iter4_reg <= v27_6_reg_910_pp0_iter3_reg;
        v27_6_reg_910_pp0_iter5_reg <= v27_6_reg_910_pp0_iter4_reg;
        v27_6_reg_910_pp0_iter6_reg <= v27_6_reg_910_pp0_iter5_reg;
        v27_6_reg_910_pp0_iter7_reg <= v27_6_reg_910_pp0_iter6_reg;
        v27_7_reg_915_pp0_iter2_reg <= v27_7_reg_915;
        v27_7_reg_915_pp0_iter3_reg <= v27_7_reg_915_pp0_iter2_reg;
        v27_7_reg_915_pp0_iter4_reg <= v27_7_reg_915_pp0_iter3_reg;
        v27_7_reg_915_pp0_iter5_reg <= v27_7_reg_915_pp0_iter4_reg;
        v27_7_reg_915_pp0_iter6_reg <= v27_7_reg_915_pp0_iter5_reg;
        v27_7_reg_915_pp0_iter7_reg <= v27_7_reg_915_pp0_iter6_reg;
        v27_7_reg_915_pp0_iter8_reg <= v27_7_reg_915_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v27_8_reg_920 <= grp_fu_4650_p_dout0;
        v27_9_reg_925 <= grp_fu_4654_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v27_8_reg_920_pp0_iter2_reg <= v27_8_reg_920;
        v27_8_reg_920_pp0_iter3_reg <= v27_8_reg_920_pp0_iter2_reg;
        v27_8_reg_920_pp0_iter4_reg <= v27_8_reg_920_pp0_iter3_reg;
        v27_8_reg_920_pp0_iter5_reg <= v27_8_reg_920_pp0_iter4_reg;
        v27_8_reg_920_pp0_iter6_reg <= v27_8_reg_920_pp0_iter5_reg;
        v27_8_reg_920_pp0_iter7_reg <= v27_8_reg_920_pp0_iter6_reg;
        v27_8_reg_920_pp0_iter8_reg <= v27_8_reg_920_pp0_iter7_reg;
        v27_8_reg_920_pp0_iter9_reg <= v27_8_reg_920_pp0_iter8_reg;
        v27_9_reg_925_pp0_iter10_reg <= v27_9_reg_925_pp0_iter9_reg;
        v27_9_reg_925_pp0_iter2_reg <= v27_9_reg_925;
        v27_9_reg_925_pp0_iter3_reg <= v27_9_reg_925_pp0_iter2_reg;
        v27_9_reg_925_pp0_iter4_reg <= v27_9_reg_925_pp0_iter3_reg;
        v27_9_reg_925_pp0_iter5_reg <= v27_9_reg_925_pp0_iter4_reg;
        v27_9_reg_925_pp0_iter6_reg <= v27_9_reg_925_pp0_iter5_reg;
        v27_9_reg_925_pp0_iter7_reg <= v27_9_reg_925_pp0_iter6_reg;
        v27_9_reg_925_pp0_iter8_reg <= v27_9_reg_925_pp0_iter7_reg;
        v27_9_reg_925_pp0_iter9_reg <= v27_9_reg_925_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_13_reg_945 <= grp_fu_4642_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_14_reg_950 <= grp_fu_4642_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v29_15_reg_955 <= grp_fu_4642_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v29_16_reg_960 <= grp_fu_4642_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v29_17_reg_965 <= grp_fu_4642_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_18_reg_970 <= grp_fu_4642_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_19_reg_975 <= grp_fu_4642_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_20_reg_980 <= grp_fu_4646_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_21_reg_985 <= grp_fu_4646_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v29_22_reg_990 <= grp_fu_4646_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v29_23_reg_995 <= grp_fu_4646_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v29_24_reg_1000 <= grp_fu_4646_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_reg_1005 <= grp_fu_4646_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln66_reg_721 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln66_reg_721_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter15_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter15_stage1 = 1'b0;
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
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to14 = 1'b1;
    end else begin
        ap_idle_pp0_0to14 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_phi_mul_load = 10'd0;
    end else begin
        ap_sig_allocacmp_phi_mul_load = phi_mul_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v23_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v23_1 = v23_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_361_p0 = v29_18_reg_970;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_361_p0 = v29_17_reg_965;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_361_p0 = v29_16_reg_960;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_361_p0 = v29_15_reg_955;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_361_p0 = v29_14_reg_950;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_361_p0 = v29_13_reg_945;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_361_p0 = v27_reg_875;
    end else begin
        grp_fu_361_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_361_p1 = v27_6_reg_910_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_361_p1 = v27_5_reg_905_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_361_p1 = v27_4_reg_900_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_361_p1 = v27_3_reg_895_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_361_p1 = v27_2_reg_890_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_361_p1 = v27_1_reg_880_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_361_p1 = 64'd0;
    end else begin
        grp_fu_361_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_366_p0 = v29_24_reg_1000;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_366_p0 = v29_23_reg_995;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_366_p0 = v29_22_reg_990;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_366_p0 = v29_21_reg_985;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_366_p0 = v29_20_reg_980;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_366_p0 = v29_19_reg_975;
    end else begin
        grp_fu_366_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_366_p1 = v27_12_reg_940_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_366_p1 = v27_11_reg_935_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_366_p1 = v27_10_reg_930_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_366_p1 = v27_9_reg_925_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_366_p1 = v27_8_reg_920_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_366_p1 = v27_7_reg_915_pp0_iter8_reg;
    end else begin
        grp_fu_366_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_370_p0 = v25_12_fu_630_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_370_p0 = v25_10_fu_620_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_370_p0 = v25_8_fu_595_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_370_p0 = v25_6_fu_560_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_370_p0 = v25_4_fu_530_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_370_p0 = v25_2_fu_500_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_370_p0 = v25_fu_470_p1;
    end else begin
        grp_fu_370_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_370_p1 = v26_12;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_370_p1 = v26_10;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_370_p1 = v26_8;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_370_p1 = v26_6;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_370_p1 = v26_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_370_p1 = v26_2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_370_p1 = v26;
    end else begin
        grp_fu_370_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_374_p0 = v25_11_fu_625_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_374_p0 = v25_9_fu_600_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_374_p0 = v25_7_fu_565_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_374_p0 = v25_5_fu_535_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_374_p0 = v25_3_fu_505_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_374_p0 = v25_1_fu_475_p1;
    end else begin
        grp_fu_374_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_374_p1 = v26_11;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_374_p1 = v26_9;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_374_p1 = v26_7;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_374_p1 = v26_5;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_374_p1 = v26_3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_374_p1 = v26_1;
    end else begin
        grp_fu_374_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v0_address0_local = zext_ln69_12_fu_610_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v0_address0_local = zext_ln69_11_fu_585_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v0_address0_local = zext_ln69_9_fu_555_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v0_address0_local = zext_ln69_7_fu_525_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v0_address0_local = zext_ln69_5_fu_495_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_address0_local = zext_ln69_3_fu_465_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_address0_local = zext_ln69_1_fu_440_p1;
        end else begin
            v0_address0_local = 'bx;
        end
    end else begin
        v0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v0_address1_local = zext_ln69_10_fu_575_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v0_address1_local = zext_ln69_8_fu_545_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v0_address1_local = zext_ln69_6_fu_515_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v0_address1_local = zext_ln69_4_fu_485_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_address1_local = zext_ln69_2_fu_455_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_address1_local = zext_ln69_fu_429_p1;
        end else begin
            v0_address1_local = 'bx;
        end
    end else begin
        v0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_ce0_local = 1'b1;
    end else begin
        v0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_ce1_local = 1'b1;
    end else begin
        v0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_1_ce0_local = 1'b1;
    end else begin
        v20_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (trunc_ln66_reg_741_pp0_iter16_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_1_we0_local = 1'b1;
    end else begin
        v20_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_2_ce0_local = 1'b1;
    end else begin
        v20_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (trunc_ln66_reg_741_pp0_iter16_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_2_we0_local = 1'b1;
    end else begin
        v20_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_3_ce0_local = 1'b1;
    end else begin
        v20_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (trunc_ln66_reg_741_pp0_iter16_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_3_we0_local = 1'b1;
    end else begin
        v20_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (trunc_ln66_reg_741_pp0_iter16_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v20_we0_local = 1'b1;
    end else begin
        v20_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to16 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln66_fu_406_p2 = (ap_sig_allocacmp_v23_1 + 7'd1);
assign add_ln69_10_fu_580_p2 = (phi_mul_load_reg_725 + 10'd11);
assign add_ln69_11_fu_605_p2 = (phi_mul_load_reg_725 + 10'd12);
assign add_ln69_1_fu_450_p2 = (phi_mul_load_reg_725 + 10'd2);
assign add_ln69_2_fu_460_p2 = (phi_mul_load_reg_725 + 10'd3);
assign add_ln69_3_fu_480_p2 = (phi_mul_load_reg_725 + 10'd4);
assign add_ln69_4_fu_490_p2 = (phi_mul_load_reg_725 + 10'd5);
assign add_ln69_5_fu_510_p2 = (phi_mul_load_reg_725 + 10'd6);
assign add_ln69_6_fu_520_p2 = (phi_mul_load_reg_725 + 10'd7);
assign add_ln69_7_fu_540_p2 = (phi_mul_load_reg_725 + 10'd8);
assign add_ln69_8_fu_550_p2 = (phi_mul_load_reg_725 + 10'd9);
assign add_ln69_9_fu_570_p2 = (phi_mul_load_reg_725 + 10'd10);
assign add_ln69_fu_434_p2 = (ap_sig_allocacmp_phi_mul_load + 10'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign grp_fu_4642_p_ce = 1'b1;
assign grp_fu_4642_p_din0 = grp_fu_361_p0;
assign grp_fu_4642_p_din1 = grp_fu_361_p1;
assign grp_fu_4642_p_opcode = 2'd0;
assign grp_fu_4646_p_ce = 1'b1;
assign grp_fu_4646_p_din0 = grp_fu_366_p0;
assign grp_fu_4646_p_din1 = grp_fu_366_p1;
assign grp_fu_4646_p_opcode = 2'd0;
assign grp_fu_4650_p_ce = 1'b1;
assign grp_fu_4650_p_din0 = grp_fu_370_p0;
assign grp_fu_4650_p_din1 = grp_fu_370_p1;
assign grp_fu_4654_p_ce = 1'b1;
assign grp_fu_4654_p_din0 = grp_fu_374_p0;
assign grp_fu_4654_p_din1 = grp_fu_374_p1;
assign icmp_ln66_fu_400_p2 = ((ap_sig_allocacmp_v23_1 == 7'd64) ? 1'b1 : 1'b0);
assign next_mul_fu_590_p2 = (phi_mul_load_reg_725 + 10'd13);
assign trunc_ln66_fu_415_p1 = ap_sig_allocacmp_v23_1[1:0];
assign v0_address0 = v0_address0_local;
assign v0_address1 = v0_address1_local;
assign v0_ce0 = v0_ce0_local;
assign v0_ce1 = v0_ce1_local;
assign v20_1_address0 = zext_ln66_fu_635_p1;
assign v20_1_ce0 = v20_1_ce0_local;
assign v20_1_d0 = v29_reg_1005;
assign v20_1_we0 = v20_1_we0_local;
assign v20_2_address0 = zext_ln66_fu_635_p1;
assign v20_2_ce0 = v20_2_ce0_local;
assign v20_2_d0 = v29_reg_1005;
assign v20_2_we0 = v20_2_we0_local;
assign v20_3_address0 = zext_ln66_fu_635_p1;
assign v20_3_ce0 = v20_3_ce0_local;
assign v20_3_d0 = v29_reg_1005;
assign v20_3_we0 = v20_3_we0_local;
assign v20_address0 = zext_ln66_fu_635_p1;
assign v20_ce0 = v20_ce0_local;
assign v20_d0 = v29_reg_1005;
assign v20_we0 = v20_we0_local;
assign v25_10_fu_620_p1 = reg_378;
assign v25_11_fu_625_p1 = reg_383;
assign v25_12_fu_630_p1 = reg_378;
assign v25_1_fu_475_p1 = reg_383;
assign v25_2_fu_500_p1 = reg_378;
assign v25_3_fu_505_p1 = reg_383;
assign v25_4_fu_530_p1 = reg_378;
assign v25_5_fu_535_p1 = reg_383;
assign v25_6_fu_560_p1 = reg_378;
assign v25_7_fu_565_p1 = reg_383;
assign v25_8_fu_595_p1 = reg_378;
assign v25_9_fu_600_p1 = reg_383;
assign v25_fu_470_p1 = reg_378;
assign zext_ln66_fu_635_p1 = lshr_ln1_reg_745_pp0_iter16_reg;
assign zext_ln69_10_fu_575_p1 = add_ln69_9_fu_570_p2;
assign zext_ln69_11_fu_585_p1 = add_ln69_10_fu_580_p2;
assign zext_ln69_12_fu_610_p1 = add_ln69_11_fu_605_p2;
assign zext_ln69_1_fu_440_p1 = add_ln69_fu_434_p2;
assign zext_ln69_2_fu_455_p1 = add_ln69_1_fu_450_p2;
assign zext_ln69_3_fu_465_p1 = add_ln69_2_fu_460_p2;
assign zext_ln69_4_fu_485_p1 = add_ln69_3_fu_480_p2;
assign zext_ln69_5_fu_495_p1 = add_ln69_4_fu_490_p2;
assign zext_ln69_6_fu_515_p1 = add_ln69_5_fu_510_p2;
assign zext_ln69_7_fu_525_p1 = add_ln69_6_fu_520_p2;
assign zext_ln69_8_fu_545_p1 = add_ln69_7_fu_540_p2;
assign zext_ln69_9_fu_555_p1 = add_ln69_8_fu_550_p2;
assign zext_ln69_fu_429_p1 = ap_sig_allocacmp_phi_mul_load;
endmodule 
