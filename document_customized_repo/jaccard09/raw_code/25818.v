module backprop_backprop_Pipeline_mvp_product_input_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations1_1_address0,activations1_1_ce0,activations1_1_we0,activations1_1_d0,activations1_address0,activations1_ce0,activations1_we0,activations1_d0,weights1_0_address0,weights1_0_ce0,weights1_0_q0,weights1_0_address1,weights1_0_ce1,weights1_0_q1,weights1_1_address0,weights1_1_ce0,weights1_1_q0,weights1_1_address1,weights1_1_ce1,weights1_1_q1,bitcast_ln36,bitcast_ln36_1,bitcast_ln36_2,bitcast_ln36_3,bitcast_ln36_4,bitcast_ln36_5,bitcast_ln36_6,bitcast_ln36_7,bitcast_ln36_8,bitcast_ln36_9,bitcast_ln36_10,bitcast_ln36_11,bitcast_ln36_12,grp_fu_5871_p_din0,grp_fu_5871_p_din1,grp_fu_5871_p_opcode,grp_fu_5871_p_dout0,grp_fu_5871_p_ce,grp_fu_5875_p_din0,grp_fu_5875_p_din1,grp_fu_5875_p_opcode,grp_fu_5875_p_dout0,grp_fu_5875_p_ce,grp_fu_5879_p_din0,grp_fu_5879_p_din1,grp_fu_5879_p_opcode,grp_fu_5879_p_dout0,grp_fu_5879_p_ce,grp_fu_5883_p_din0,grp_fu_5883_p_din1,grp_fu_5883_p_opcode,grp_fu_5883_p_dout0,grp_fu_5883_p_ce,grp_fu_5887_p_din0,grp_fu_5887_p_din1,grp_fu_5887_p_dout0,grp_fu_5887_p_ce,grp_fu_5891_p_din0,grp_fu_5891_p_din1,grp_fu_5891_p_dout0,grp_fu_5891_p_ce,grp_fu_5895_p_din0,grp_fu_5895_p_din1,grp_fu_5895_p_dout0,grp_fu_5895_p_ce,grp_fu_5899_p_din0,grp_fu_5899_p_din1,grp_fu_5899_p_dout0,grp_fu_5899_p_ce); 
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
output  [4:0] activations1_1_address0;
output   activations1_1_ce0;
output   activations1_1_we0;
output  [63:0] activations1_1_d0;
output  [4:0] activations1_address0;
output   activations1_ce0;
output   activations1_we0;
output  [63:0] activations1_d0;
output  [8:0] weights1_0_address0;
output   weights1_0_ce0;
input  [63:0] weights1_0_q0;
output  [8:0] weights1_0_address1;
output   weights1_0_ce1;
input  [63:0] weights1_0_q1;
output  [8:0] weights1_1_address0;
output   weights1_1_ce0;
input  [63:0] weights1_1_q0;
output  [8:0] weights1_1_address1;
output   weights1_1_ce1;
input  [63:0] weights1_1_q1;
input  [63:0] bitcast_ln36;
input  [63:0] bitcast_ln36_1;
input  [63:0] bitcast_ln36_2;
input  [63:0] bitcast_ln36_3;
input  [63:0] bitcast_ln36_4;
input  [63:0] bitcast_ln36_5;
input  [63:0] bitcast_ln36_6;
input  [63:0] bitcast_ln36_7;
input  [63:0] bitcast_ln36_8;
input  [63:0] bitcast_ln36_9;
input  [63:0] bitcast_ln36_10;
input  [63:0] bitcast_ln36_11;
input  [63:0] bitcast_ln36_12;
output  [63:0] grp_fu_5871_p_din0;
output  [63:0] grp_fu_5871_p_din1;
output  [0:0] grp_fu_5871_p_opcode;
input  [63:0] grp_fu_5871_p_dout0;
output   grp_fu_5871_p_ce;
output  [63:0] grp_fu_5875_p_din0;
output  [63:0] grp_fu_5875_p_din1;
output  [0:0] grp_fu_5875_p_opcode;
input  [63:0] grp_fu_5875_p_dout0;
output   grp_fu_5875_p_ce;
output  [63:0] grp_fu_5879_p_din0;
output  [63:0] grp_fu_5879_p_din1;
output  [0:0] grp_fu_5879_p_opcode;
input  [63:0] grp_fu_5879_p_dout0;
output   grp_fu_5879_p_ce;
output  [63:0] grp_fu_5883_p_din0;
output  [63:0] grp_fu_5883_p_din1;
output  [0:0] grp_fu_5883_p_opcode;
input  [63:0] grp_fu_5883_p_dout0;
output   grp_fu_5883_p_ce;
output  [63:0] grp_fu_5887_p_din0;
output  [63:0] grp_fu_5887_p_din1;
input  [63:0] grp_fu_5887_p_dout0;
output   grp_fu_5887_p_ce;
output  [63:0] grp_fu_5891_p_din0;
output  [63:0] grp_fu_5891_p_din1;
input  [63:0] grp_fu_5891_p_dout0;
output   grp_fu_5891_p_ce;
output  [63:0] grp_fu_5895_p_din0;
output  [63:0] grp_fu_5895_p_din1;
input  [63:0] grp_fu_5895_p_dout0;
output   grp_fu_5895_p_ce;
output  [63:0] grp_fu_5899_p_din0;
output  [63:0] grp_fu_5899_p_din1;
input  [63:0] grp_fu_5899_p_dout0;
output   grp_fu_5899_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
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
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_enable_reg_pp0_iter22;
reg    ap_enable_reg_pp0_iter23;
reg    ap_enable_reg_pp0_iter24;
reg    ap_enable_reg_pp0_iter25;
reg    ap_enable_reg_pp0_iter26;
reg    ap_enable_reg_pp0_iter27;
reg    ap_enable_reg_pp0_iter28;
reg    ap_enable_reg_pp0_iter29;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln33_reg_965;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_475_p3;
reg   [63:0] reg_510;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] grp_fu_482_p3;
reg   [63:0] reg_514;
wire   [63:0] grp_fu_489_p3;
reg   [63:0] reg_518;
wire   [63:0] grp_fu_496_p3;
reg   [63:0] reg_522;
wire   [63:0] grp_fu_503_p3;
reg   [63:0] reg_526;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln33_fu_543_p2;
reg   [0:0] icmp_ln33_reg_965_pp0_iter1_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter2_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter3_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter4_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter5_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter6_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter7_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter8_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter9_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter10_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter11_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter12_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter13_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter14_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter15_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter16_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter17_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter18_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter19_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter20_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter21_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter22_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter23_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter24_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter25_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter26_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter27_reg;
reg   [0:0] icmp_ln33_reg_965_pp0_iter28_reg;
wire   [0:0] trunc_ln33_fu_555_p1;
reg   [0:0] trunc_ln33_reg_969;
reg   [0:0] trunc_ln33_reg_969_pp0_iter1_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter2_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter3_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter4_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter5_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter6_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter7_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter8_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter9_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter10_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter11_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter12_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter13_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter14_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter15_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter16_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter17_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter18_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter19_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter20_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter21_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter22_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter23_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter24_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter25_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter26_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter27_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter28_reg;
reg   [0:0] trunc_ln33_reg_969_pp0_iter29_reg;
reg   [4:0] lshr_ln8_reg_981;
reg   [4:0] lshr_ln8_reg_981_pp0_iter1_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter2_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter3_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter4_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter5_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter6_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter7_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter8_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter9_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter10_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter11_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter12_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter13_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter14_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter15_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter16_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter17_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter18_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter19_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter20_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter21_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter22_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter23_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter24_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter25_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter26_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter27_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter28_reg;
reg   [4:0] lshr_ln8_reg_981_pp0_iter29_reg;
reg   [9:0] phi_mul_load_reg_986;
wire   [8:0] lshr_ln_fu_577_p4;
reg   [8:0] lshr_ln_reg_995;
wire   [63:0] bitcast_ln36_13_fu_718_p1;
wire   [63:0] bitcast_ln36_14_fu_723_p1;
wire   [63:0] bitcast_ln36_15_fu_728_p1;
wire   [63:0] bitcast_ln36_16_fu_733_p1;
wire   [63:0] bitcast_ln36_17_fu_807_p1;
wire   [63:0] bitcast_ln36_18_fu_812_p1;
wire   [63:0] bitcast_ln36_19_fu_817_p1;
wire   [63:0] bitcast_ln36_20_fu_822_p1;
wire   [63:0] select_ln36_9_fu_827_p3;
reg   [63:0] select_ln36_9_reg_1164;
wire   [63:0] select_ln36_10_fu_834_p3;
reg   [63:0] select_ln36_10_reg_1169;
wire   [63:0] select_ln36_11_fu_841_p3;
reg   [63:0] select_ln36_11_reg_1174;
wire   [63:0] bitcast_ln36_21_fu_859_p1;
wire   [63:0] bitcast_ln36_22_fu_864_p1;
wire   [63:0] bitcast_ln36_23_fu_868_p1;
wire   [63:0] bitcast_ln36_24_fu_872_p1;
wire   [63:0] bitcast_ln36_25_fu_876_p1;
reg   [63:0] mul8_i_reg_1214;
reg   [63:0] mul8_i_1_reg_1219;
reg   [63:0] mul8_i_1_reg_1219_pp0_iter3_reg;
reg   [63:0] mul8_i_1_reg_1219_pp0_iter4_reg;
reg   [63:0] mul8_i_2_reg_1224;
reg   [63:0] mul8_i_2_reg_1224_pp0_iter3_reg;
reg   [63:0] mul8_i_2_reg_1224_pp0_iter4_reg;
reg   [63:0] mul8_i_2_reg_1224_pp0_iter5_reg;
reg   [63:0] mul8_i_2_reg_1224_pp0_iter6_reg;
reg   [63:0] mul8_i_3_reg_1229;
reg   [63:0] mul8_i_3_reg_1229_pp0_iter3_reg;
reg   [63:0] mul8_i_3_reg_1229_pp0_iter4_reg;
reg   [63:0] mul8_i_3_reg_1229_pp0_iter5_reg;
reg   [63:0] mul8_i_3_reg_1229_pp0_iter6_reg;
reg   [63:0] mul8_i_3_reg_1229_pp0_iter7_reg;
reg   [63:0] mul8_i_3_reg_1229_pp0_iter8_reg;
reg   [63:0] mul8_i_4_reg_1234;
reg   [63:0] mul8_i_4_reg_1234_pp0_iter3_reg;
reg   [63:0] mul8_i_4_reg_1234_pp0_iter4_reg;
reg   [63:0] mul8_i_4_reg_1234_pp0_iter5_reg;
reg   [63:0] mul8_i_4_reg_1234_pp0_iter6_reg;
reg   [63:0] mul8_i_4_reg_1234_pp0_iter7_reg;
reg   [63:0] mul8_i_4_reg_1234_pp0_iter8_reg;
reg   [63:0] mul8_i_4_reg_1234_pp0_iter9_reg;
reg   [63:0] mul8_i_4_reg_1234_pp0_iter10_reg;
reg   [63:0] mul8_i_5_reg_1239;
reg   [63:0] mul8_i_5_reg_1239_pp0_iter3_reg;
reg   [63:0] mul8_i_5_reg_1239_pp0_iter4_reg;
reg   [63:0] mul8_i_5_reg_1239_pp0_iter5_reg;
reg   [63:0] mul8_i_5_reg_1239_pp0_iter6_reg;
reg   [63:0] mul8_i_5_reg_1239_pp0_iter7_reg;
reg   [63:0] mul8_i_5_reg_1239_pp0_iter8_reg;
reg   [63:0] mul8_i_5_reg_1239_pp0_iter9_reg;
reg   [63:0] mul8_i_5_reg_1239_pp0_iter10_reg;
reg   [63:0] mul8_i_5_reg_1239_pp0_iter11_reg;
reg   [63:0] mul8_i_5_reg_1239_pp0_iter12_reg;
reg   [63:0] mul8_i_6_reg_1244;
reg   [63:0] mul8_i_6_reg_1244_pp0_iter3_reg;
reg   [63:0] mul8_i_6_reg_1244_pp0_iter4_reg;
reg   [63:0] mul8_i_6_reg_1244_pp0_iter5_reg;
reg   [63:0] mul8_i_6_reg_1244_pp0_iter6_reg;
reg   [63:0] mul8_i_6_reg_1244_pp0_iter7_reg;
reg   [63:0] mul8_i_6_reg_1244_pp0_iter8_reg;
reg   [63:0] mul8_i_6_reg_1244_pp0_iter9_reg;
reg   [63:0] mul8_i_6_reg_1244_pp0_iter10_reg;
reg   [63:0] mul8_i_6_reg_1244_pp0_iter11_reg;
reg   [63:0] mul8_i_6_reg_1244_pp0_iter12_reg;
reg   [63:0] mul8_i_6_reg_1244_pp0_iter13_reg;
reg   [63:0] mul8_i_6_reg_1244_pp0_iter14_reg;
reg   [63:0] mul8_i_7_reg_1249;
reg   [63:0] mul8_i_7_reg_1249_pp0_iter3_reg;
reg   [63:0] mul8_i_7_reg_1249_pp0_iter4_reg;
reg   [63:0] mul8_i_7_reg_1249_pp0_iter5_reg;
reg   [63:0] mul8_i_7_reg_1249_pp0_iter6_reg;
reg   [63:0] mul8_i_7_reg_1249_pp0_iter7_reg;
reg   [63:0] mul8_i_7_reg_1249_pp0_iter8_reg;
reg   [63:0] mul8_i_7_reg_1249_pp0_iter9_reg;
reg   [63:0] mul8_i_7_reg_1249_pp0_iter10_reg;
reg   [63:0] mul8_i_7_reg_1249_pp0_iter11_reg;
reg   [63:0] mul8_i_7_reg_1249_pp0_iter12_reg;
reg   [63:0] mul8_i_7_reg_1249_pp0_iter13_reg;
reg   [63:0] mul8_i_7_reg_1249_pp0_iter14_reg;
reg   [63:0] mul8_i_7_reg_1249_pp0_iter15_reg;
reg   [63:0] mul8_i_7_reg_1249_pp0_iter16_reg;
reg   [63:0] mul8_i_8_reg_1254;
reg   [63:0] mul8_i_8_reg_1254_pp0_iter3_reg;
reg   [63:0] mul8_i_8_reg_1254_pp0_iter4_reg;
reg   [63:0] mul8_i_8_reg_1254_pp0_iter5_reg;
reg   [63:0] mul8_i_8_reg_1254_pp0_iter6_reg;
reg   [63:0] mul8_i_8_reg_1254_pp0_iter7_reg;
reg   [63:0] mul8_i_8_reg_1254_pp0_iter8_reg;
reg   [63:0] mul8_i_8_reg_1254_pp0_iter9_reg;
reg   [63:0] mul8_i_8_reg_1254_pp0_iter10_reg;
reg   [63:0] mul8_i_8_reg_1254_pp0_iter11_reg;
reg   [63:0] mul8_i_8_reg_1254_pp0_iter12_reg;
reg   [63:0] mul8_i_8_reg_1254_pp0_iter13_reg;
reg   [63:0] mul8_i_8_reg_1254_pp0_iter14_reg;
reg   [63:0] mul8_i_8_reg_1254_pp0_iter15_reg;
reg   [63:0] mul8_i_8_reg_1254_pp0_iter16_reg;
reg   [63:0] mul8_i_8_reg_1254_pp0_iter17_reg;
reg   [63:0] mul8_i_8_reg_1254_pp0_iter18_reg;
reg   [63:0] mul8_i_9_reg_1259;
reg   [63:0] mul8_i_9_reg_1259_pp0_iter3_reg;
reg   [63:0] mul8_i_9_reg_1259_pp0_iter4_reg;
reg   [63:0] mul8_i_9_reg_1259_pp0_iter5_reg;
reg   [63:0] mul8_i_9_reg_1259_pp0_iter6_reg;
reg   [63:0] mul8_i_9_reg_1259_pp0_iter7_reg;
reg   [63:0] mul8_i_9_reg_1259_pp0_iter8_reg;
reg   [63:0] mul8_i_9_reg_1259_pp0_iter9_reg;
reg   [63:0] mul8_i_9_reg_1259_pp0_iter10_reg;
reg   [63:0] mul8_i_9_reg_1259_pp0_iter11_reg;
reg   [63:0] mul8_i_9_reg_1259_pp0_iter12_reg;
reg   [63:0] mul8_i_9_reg_1259_pp0_iter13_reg;
reg   [63:0] mul8_i_9_reg_1259_pp0_iter14_reg;
reg   [63:0] mul8_i_9_reg_1259_pp0_iter15_reg;
reg   [63:0] mul8_i_9_reg_1259_pp0_iter16_reg;
reg   [63:0] mul8_i_9_reg_1259_pp0_iter17_reg;
reg   [63:0] mul8_i_9_reg_1259_pp0_iter18_reg;
reg   [63:0] mul8_i_9_reg_1259_pp0_iter19_reg;
reg   [63:0] mul8_i_9_reg_1259_pp0_iter20_reg;
reg   [63:0] mul8_i_s_reg_1264;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter3_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter4_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter5_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter6_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter7_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter8_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter9_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter10_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter11_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter12_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter13_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter14_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter15_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter16_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter17_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter18_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter19_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter20_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter21_reg;
reg   [63:0] mul8_i_s_reg_1264_pp0_iter22_reg;
reg   [63:0] mul8_i_10_reg_1269;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter3_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter4_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter5_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter6_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter7_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter8_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter9_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter10_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter11_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter12_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter13_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter14_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter15_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter16_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter17_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter18_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter19_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter20_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter21_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter22_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter23_reg;
reg   [63:0] mul8_i_10_reg_1269_pp0_iter24_reg;
reg   [63:0] mul8_i_11_reg_1274;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter4_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter5_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter6_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter7_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter8_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter9_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter10_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter11_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter12_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter13_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter14_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter15_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter16_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter17_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter18_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter19_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter20_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter21_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter22_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter23_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter24_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter25_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter26_reg;
reg   [63:0] mul8_i_11_reg_1274_pp0_iter27_reg;
reg   [63:0] add11_i_reg_1279;
reg   [63:0] add11_i_1_reg_1284;
reg   [63:0] add11_i_2_reg_1289;
reg   [63:0] add11_i_3_reg_1294;
reg   [63:0] add11_i_4_reg_1299;
reg   [63:0] add11_i_5_reg_1304;
reg   [63:0] add11_i_6_reg_1309;
reg   [63:0] add11_i_7_reg_1314;
reg   [63:0] add11_i_8_reg_1319;
reg   [63:0] add11_i_9_reg_1324;
reg   [63:0] add11_i_s_reg_1329;
reg   [63:0] add11_i_10_reg_1334;
reg   [63:0] add11_i_11_reg_1339;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln36_fu_587_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln36_1_fu_609_p1;
wire   [63:0] zext_ln36_2_fu_621_p1;
wire   [63:0] zext_ln36_3_fu_643_p1;
wire   [63:0] zext_ln36_4_fu_654_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln36_5_fu_675_p1;
wire   [63:0] zext_ln36_6_fu_686_p1;
wire   [63:0] zext_ln36_7_fu_707_p1;
wire   [63:0] zext_ln36_8_fu_743_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln36_9_fu_764_p1;
wire   [63:0] zext_ln36_10_fu_775_p1;
wire   [63:0] zext_ln36_11_fu_796_p1;
wire   [63:0] zext_ln36_12_fu_853_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln34_fu_881_p1;
reg   [9:0] phi_mul_fu_104;
wire   [9:0] add_ln36_12_fu_713_p2;
wire    ap_loop_init;
reg   [6:0] j_fu_108;
wire   [6:0] add_ln33_fu_549_p2;
reg   [6:0] ap_sig_allocacmp_j_1;
reg    weights1_0_ce1_local;
reg   [8:0] weights1_0_address1_local;
reg    weights1_0_ce0_local;
reg   [8:0] weights1_0_address0_local;
reg    weights1_1_ce1_local;
reg   [8:0] weights1_1_address1_local;
reg    weights1_1_ce0_local;
reg   [8:0] weights1_1_address0_local;
reg    activations1_we0_local;
reg    activations1_ce0_local;
reg    activations1_1_we0_local;
reg    activations1_1_ce0_local;
reg   [63:0] grp_fu_442_p0;
reg   [63:0] grp_fu_442_p1;
reg   [63:0] grp_fu_447_p0;
reg   [63:0] grp_fu_447_p1;
reg   [63:0] grp_fu_451_p0;
reg   [63:0] grp_fu_451_p1;
reg   [63:0] grp_fu_455_p0;
reg   [63:0] grp_fu_455_p1;
reg   [63:0] grp_fu_459_p0;
reg   [63:0] grp_fu_459_p1;
reg   [63:0] grp_fu_463_p0;
reg   [63:0] grp_fu_463_p1;
reg   [63:0] grp_fu_467_p0;
reg   [63:0] grp_fu_467_p1;
reg   [63:0] grp_fu_471_p0;
reg   [63:0] grp_fu_471_p1;
reg   [0:0] grp_fu_503_p0;
wire   [9:0] add_ln36_fu_593_p2;
wire   [8:0] lshr_ln36_1_fu_599_p4;
wire   [8:0] add_ln36_1_fu_615_p2;
wire   [9:0] add_ln36_2_fu_627_p2;
wire   [8:0] lshr_ln36_2_fu_633_p4;
wire   [8:0] add_ln36_3_fu_649_p2;
wire   [9:0] add_ln36_4_fu_660_p2;
wire   [8:0] lshr_ln36_3_fu_665_p4;
wire   [8:0] add_ln36_5_fu_681_p2;
wire   [9:0] add_ln36_6_fu_692_p2;
wire   [8:0] lshr_ln36_4_fu_697_p4;
wire   [8:0] add_ln36_7_fu_738_p2;
wire   [9:0] add_ln36_8_fu_749_p2;
wire   [8:0] lshr_ln36_5_fu_754_p4;
wire   [8:0] add_ln36_9_fu_770_p2;
wire   [9:0] add_ln36_10_fu_781_p2;
wire   [8:0] lshr_ln36_6_fu_786_p4;
wire   [8:0] add_ln36_11_fu_848_p2;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter28_stage1;
reg    ap_idle_pp0_0to27;
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
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg    ap_loop_exit_ready_pp0_iter21_reg;
reg    ap_loop_exit_ready_pp0_iter22_reg;
reg    ap_loop_exit_ready_pp0_iter23_reg;
reg    ap_loop_exit_ready_pp0_iter24_reg;
reg    ap_loop_exit_ready_pp0_iter25_reg;
reg    ap_loop_exit_ready_pp0_iter26_reg;
reg    ap_loop_exit_ready_pp0_iter27_reg;
reg    ap_loop_exit_ready_pp0_iter28_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to29;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1370;
reg    ap_condition_1374;
reg    ap_condition_1378;
reg    ap_condition_1382;
reg    ap_condition_1386;
reg    ap_condition_1390;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
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
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter24 = 1'b0;
#0 ap_enable_reg_pp0_iter25 = 1'b0;
#0 ap_enable_reg_pp0_iter26 = 1'b0;
#0 ap_enable_reg_pp0_iter27 = 1'b0;
#0 ap_enable_reg_pp0_iter28 = 1'b0;
#0 ap_enable_reg_pp0_iter29 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 phi_mul_fu_104 = 10'd0;
#0 j_fu_108 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter28_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
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
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter24 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter24 <= ap_enable_reg_pp0_iter23;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter25 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter25 <= ap_enable_reg_pp0_iter24;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter26 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter26 <= ap_enable_reg_pp0_iter25;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter27 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter27 <= ap_enable_reg_pp0_iter26;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter28 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter28 <= ap_enable_reg_pp0_iter27;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter29 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter29 == 1'b1))) begin
            ap_enable_reg_pp0_iter29 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter29 <= ap_enable_reg_pp0_iter28;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter21_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter22_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter23_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter23_reg <= ap_loop_exit_ready_pp0_iter22_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter24_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter24_reg <= ap_loop_exit_ready_pp0_iter23_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter25_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter25_reg <= ap_loop_exit_ready_pp0_iter24_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter26_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter26_reg <= ap_loop_exit_ready_pp0_iter25_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter27_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter27_reg <= ap_loop_exit_ready_pp0_iter26_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter28_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter28_reg <= ap_loop_exit_ready_pp0_iter27_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((icmp_ln33_fu_543_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_108 <= add_ln33_fu_549_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_108 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        phi_mul_fu_104 <= 10'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        phi_mul_fu_104 <= add_ln36_12_fu_713_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter26 == 1'b1))) begin
        add11_i_10_reg_1334 <= grp_fu_5883_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter29 == 1'b1))) begin
        add11_i_11_reg_1339 <= grp_fu_5871_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add11_i_1_reg_1284 <= grp_fu_5875_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add11_i_2_reg_1289 <= grp_fu_5879_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add11_i_3_reg_1294 <= grp_fu_5883_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        add11_i_4_reg_1299 <= grp_fu_5871_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        add11_i_5_reg_1304 <= grp_fu_5875_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        add11_i_6_reg_1309 <= grp_fu_5879_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        add11_i_7_reg_1314 <= grp_fu_5883_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add11_i_8_reg_1319 <= grp_fu_5871_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add11_i_9_reg_1324 <= grp_fu_5875_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add11_i_reg_1279 <= grp_fu_5871_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter24 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add11_i_s_reg_1329 <= grp_fu_5879_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln33_reg_965 <= icmp_ln33_fu_543_p2;
        icmp_ln33_reg_965_pp0_iter10_reg <= icmp_ln33_reg_965_pp0_iter9_reg;
        icmp_ln33_reg_965_pp0_iter11_reg <= icmp_ln33_reg_965_pp0_iter10_reg;
        icmp_ln33_reg_965_pp0_iter12_reg <= icmp_ln33_reg_965_pp0_iter11_reg;
        icmp_ln33_reg_965_pp0_iter13_reg <= icmp_ln33_reg_965_pp0_iter12_reg;
        icmp_ln33_reg_965_pp0_iter14_reg <= icmp_ln33_reg_965_pp0_iter13_reg;
        icmp_ln33_reg_965_pp0_iter15_reg <= icmp_ln33_reg_965_pp0_iter14_reg;
        icmp_ln33_reg_965_pp0_iter16_reg <= icmp_ln33_reg_965_pp0_iter15_reg;
        icmp_ln33_reg_965_pp0_iter17_reg <= icmp_ln33_reg_965_pp0_iter16_reg;
        icmp_ln33_reg_965_pp0_iter18_reg <= icmp_ln33_reg_965_pp0_iter17_reg;
        icmp_ln33_reg_965_pp0_iter19_reg <= icmp_ln33_reg_965_pp0_iter18_reg;
        icmp_ln33_reg_965_pp0_iter1_reg <= icmp_ln33_reg_965;
        icmp_ln33_reg_965_pp0_iter20_reg <= icmp_ln33_reg_965_pp0_iter19_reg;
        icmp_ln33_reg_965_pp0_iter21_reg <= icmp_ln33_reg_965_pp0_iter20_reg;
        icmp_ln33_reg_965_pp0_iter22_reg <= icmp_ln33_reg_965_pp0_iter21_reg;
        icmp_ln33_reg_965_pp0_iter23_reg <= icmp_ln33_reg_965_pp0_iter22_reg;
        icmp_ln33_reg_965_pp0_iter24_reg <= icmp_ln33_reg_965_pp0_iter23_reg;
        icmp_ln33_reg_965_pp0_iter25_reg <= icmp_ln33_reg_965_pp0_iter24_reg;
        icmp_ln33_reg_965_pp0_iter26_reg <= icmp_ln33_reg_965_pp0_iter25_reg;
        icmp_ln33_reg_965_pp0_iter27_reg <= icmp_ln33_reg_965_pp0_iter26_reg;
        icmp_ln33_reg_965_pp0_iter28_reg <= icmp_ln33_reg_965_pp0_iter27_reg;
        icmp_ln33_reg_965_pp0_iter2_reg <= icmp_ln33_reg_965_pp0_iter1_reg;
        icmp_ln33_reg_965_pp0_iter3_reg <= icmp_ln33_reg_965_pp0_iter2_reg;
        icmp_ln33_reg_965_pp0_iter4_reg <= icmp_ln33_reg_965_pp0_iter3_reg;
        icmp_ln33_reg_965_pp0_iter5_reg <= icmp_ln33_reg_965_pp0_iter4_reg;
        icmp_ln33_reg_965_pp0_iter6_reg <= icmp_ln33_reg_965_pp0_iter5_reg;
        icmp_ln33_reg_965_pp0_iter7_reg <= icmp_ln33_reg_965_pp0_iter6_reg;
        icmp_ln33_reg_965_pp0_iter8_reg <= icmp_ln33_reg_965_pp0_iter7_reg;
        icmp_ln33_reg_965_pp0_iter9_reg <= icmp_ln33_reg_965_pp0_iter8_reg;
        lshr_ln8_reg_981 <= {{ap_sig_allocacmp_j_1[5:1]}};
        lshr_ln8_reg_981_pp0_iter10_reg <= lshr_ln8_reg_981_pp0_iter9_reg;
        lshr_ln8_reg_981_pp0_iter11_reg <= lshr_ln8_reg_981_pp0_iter10_reg;
        lshr_ln8_reg_981_pp0_iter12_reg <= lshr_ln8_reg_981_pp0_iter11_reg;
        lshr_ln8_reg_981_pp0_iter13_reg <= lshr_ln8_reg_981_pp0_iter12_reg;
        lshr_ln8_reg_981_pp0_iter14_reg <= lshr_ln8_reg_981_pp0_iter13_reg;
        lshr_ln8_reg_981_pp0_iter15_reg <= lshr_ln8_reg_981_pp0_iter14_reg;
        lshr_ln8_reg_981_pp0_iter16_reg <= lshr_ln8_reg_981_pp0_iter15_reg;
        lshr_ln8_reg_981_pp0_iter17_reg <= lshr_ln8_reg_981_pp0_iter16_reg;
        lshr_ln8_reg_981_pp0_iter18_reg <= lshr_ln8_reg_981_pp0_iter17_reg;
        lshr_ln8_reg_981_pp0_iter19_reg <= lshr_ln8_reg_981_pp0_iter18_reg;
        lshr_ln8_reg_981_pp0_iter1_reg <= lshr_ln8_reg_981;
        lshr_ln8_reg_981_pp0_iter20_reg <= lshr_ln8_reg_981_pp0_iter19_reg;
        lshr_ln8_reg_981_pp0_iter21_reg <= lshr_ln8_reg_981_pp0_iter20_reg;
        lshr_ln8_reg_981_pp0_iter22_reg <= lshr_ln8_reg_981_pp0_iter21_reg;
        lshr_ln8_reg_981_pp0_iter23_reg <= lshr_ln8_reg_981_pp0_iter22_reg;
        lshr_ln8_reg_981_pp0_iter24_reg <= lshr_ln8_reg_981_pp0_iter23_reg;
        lshr_ln8_reg_981_pp0_iter25_reg <= lshr_ln8_reg_981_pp0_iter24_reg;
        lshr_ln8_reg_981_pp0_iter26_reg <= lshr_ln8_reg_981_pp0_iter25_reg;
        lshr_ln8_reg_981_pp0_iter27_reg <= lshr_ln8_reg_981_pp0_iter26_reg;
        lshr_ln8_reg_981_pp0_iter28_reg <= lshr_ln8_reg_981_pp0_iter27_reg;
        lshr_ln8_reg_981_pp0_iter29_reg <= lshr_ln8_reg_981_pp0_iter28_reg;
        lshr_ln8_reg_981_pp0_iter2_reg <= lshr_ln8_reg_981_pp0_iter1_reg;
        lshr_ln8_reg_981_pp0_iter3_reg <= lshr_ln8_reg_981_pp0_iter2_reg;
        lshr_ln8_reg_981_pp0_iter4_reg <= lshr_ln8_reg_981_pp0_iter3_reg;
        lshr_ln8_reg_981_pp0_iter5_reg <= lshr_ln8_reg_981_pp0_iter4_reg;
        lshr_ln8_reg_981_pp0_iter6_reg <= lshr_ln8_reg_981_pp0_iter5_reg;
        lshr_ln8_reg_981_pp0_iter7_reg <= lshr_ln8_reg_981_pp0_iter6_reg;
        lshr_ln8_reg_981_pp0_iter8_reg <= lshr_ln8_reg_981_pp0_iter7_reg;
        lshr_ln8_reg_981_pp0_iter9_reg <= lshr_ln8_reg_981_pp0_iter8_reg;
        mul8_i_11_reg_1274_pp0_iter10_reg <= mul8_i_11_reg_1274_pp0_iter9_reg;
        mul8_i_11_reg_1274_pp0_iter11_reg <= mul8_i_11_reg_1274_pp0_iter10_reg;
        mul8_i_11_reg_1274_pp0_iter12_reg <= mul8_i_11_reg_1274_pp0_iter11_reg;
        mul8_i_11_reg_1274_pp0_iter13_reg <= mul8_i_11_reg_1274_pp0_iter12_reg;
        mul8_i_11_reg_1274_pp0_iter14_reg <= mul8_i_11_reg_1274_pp0_iter13_reg;
        mul8_i_11_reg_1274_pp0_iter15_reg <= mul8_i_11_reg_1274_pp0_iter14_reg;
        mul8_i_11_reg_1274_pp0_iter16_reg <= mul8_i_11_reg_1274_pp0_iter15_reg;
        mul8_i_11_reg_1274_pp0_iter17_reg <= mul8_i_11_reg_1274_pp0_iter16_reg;
        mul8_i_11_reg_1274_pp0_iter18_reg <= mul8_i_11_reg_1274_pp0_iter17_reg;
        mul8_i_11_reg_1274_pp0_iter19_reg <= mul8_i_11_reg_1274_pp0_iter18_reg;
        mul8_i_11_reg_1274_pp0_iter20_reg <= mul8_i_11_reg_1274_pp0_iter19_reg;
        mul8_i_11_reg_1274_pp0_iter21_reg <= mul8_i_11_reg_1274_pp0_iter20_reg;
        mul8_i_11_reg_1274_pp0_iter22_reg <= mul8_i_11_reg_1274_pp0_iter21_reg;
        mul8_i_11_reg_1274_pp0_iter23_reg <= mul8_i_11_reg_1274_pp0_iter22_reg;
        mul8_i_11_reg_1274_pp0_iter24_reg <= mul8_i_11_reg_1274_pp0_iter23_reg;
        mul8_i_11_reg_1274_pp0_iter25_reg <= mul8_i_11_reg_1274_pp0_iter24_reg;
        mul8_i_11_reg_1274_pp0_iter26_reg <= mul8_i_11_reg_1274_pp0_iter25_reg;
        mul8_i_11_reg_1274_pp0_iter27_reg <= mul8_i_11_reg_1274_pp0_iter26_reg;
        mul8_i_11_reg_1274_pp0_iter4_reg <= mul8_i_11_reg_1274;
        mul8_i_11_reg_1274_pp0_iter5_reg <= mul8_i_11_reg_1274_pp0_iter4_reg;
        mul8_i_11_reg_1274_pp0_iter6_reg <= mul8_i_11_reg_1274_pp0_iter5_reg;
        mul8_i_11_reg_1274_pp0_iter7_reg <= mul8_i_11_reg_1274_pp0_iter6_reg;
        mul8_i_11_reg_1274_pp0_iter8_reg <= mul8_i_11_reg_1274_pp0_iter7_reg;
        mul8_i_11_reg_1274_pp0_iter9_reg <= mul8_i_11_reg_1274_pp0_iter8_reg;
        select_ln36_10_reg_1169 <= select_ln36_10_fu_834_p3;
        select_ln36_11_reg_1174 <= select_ln36_11_fu_841_p3;
        select_ln36_9_reg_1164 <= select_ln36_9_fu_827_p3;
        trunc_ln33_reg_969 <= trunc_ln33_fu_555_p1;
        trunc_ln33_reg_969_pp0_iter10_reg <= trunc_ln33_reg_969_pp0_iter9_reg;
        trunc_ln33_reg_969_pp0_iter11_reg <= trunc_ln33_reg_969_pp0_iter10_reg;
        trunc_ln33_reg_969_pp0_iter12_reg <= trunc_ln33_reg_969_pp0_iter11_reg;
        trunc_ln33_reg_969_pp0_iter13_reg <= trunc_ln33_reg_969_pp0_iter12_reg;
        trunc_ln33_reg_969_pp0_iter14_reg <= trunc_ln33_reg_969_pp0_iter13_reg;
        trunc_ln33_reg_969_pp0_iter15_reg <= trunc_ln33_reg_969_pp0_iter14_reg;
        trunc_ln33_reg_969_pp0_iter16_reg <= trunc_ln33_reg_969_pp0_iter15_reg;
        trunc_ln33_reg_969_pp0_iter17_reg <= trunc_ln33_reg_969_pp0_iter16_reg;
        trunc_ln33_reg_969_pp0_iter18_reg <= trunc_ln33_reg_969_pp0_iter17_reg;
        trunc_ln33_reg_969_pp0_iter19_reg <= trunc_ln33_reg_969_pp0_iter18_reg;
        trunc_ln33_reg_969_pp0_iter1_reg <= trunc_ln33_reg_969;
        trunc_ln33_reg_969_pp0_iter20_reg <= trunc_ln33_reg_969_pp0_iter19_reg;
        trunc_ln33_reg_969_pp0_iter21_reg <= trunc_ln33_reg_969_pp0_iter20_reg;
        trunc_ln33_reg_969_pp0_iter22_reg <= trunc_ln33_reg_969_pp0_iter21_reg;
        trunc_ln33_reg_969_pp0_iter23_reg <= trunc_ln33_reg_969_pp0_iter22_reg;
        trunc_ln33_reg_969_pp0_iter24_reg <= trunc_ln33_reg_969_pp0_iter23_reg;
        trunc_ln33_reg_969_pp0_iter25_reg <= trunc_ln33_reg_969_pp0_iter24_reg;
        trunc_ln33_reg_969_pp0_iter26_reg <= trunc_ln33_reg_969_pp0_iter25_reg;
        trunc_ln33_reg_969_pp0_iter27_reg <= trunc_ln33_reg_969_pp0_iter26_reg;
        trunc_ln33_reg_969_pp0_iter28_reg <= trunc_ln33_reg_969_pp0_iter27_reg;
        trunc_ln33_reg_969_pp0_iter29_reg <= trunc_ln33_reg_969_pp0_iter28_reg;
        trunc_ln33_reg_969_pp0_iter2_reg <= trunc_ln33_reg_969_pp0_iter1_reg;
        trunc_ln33_reg_969_pp0_iter3_reg <= trunc_ln33_reg_969_pp0_iter2_reg;
        trunc_ln33_reg_969_pp0_iter4_reg <= trunc_ln33_reg_969_pp0_iter3_reg;
        trunc_ln33_reg_969_pp0_iter5_reg <= trunc_ln33_reg_969_pp0_iter4_reg;
        trunc_ln33_reg_969_pp0_iter6_reg <= trunc_ln33_reg_969_pp0_iter5_reg;
        trunc_ln33_reg_969_pp0_iter7_reg <= trunc_ln33_reg_969_pp0_iter6_reg;
        trunc_ln33_reg_969_pp0_iter8_reg <= trunc_ln33_reg_969_pp0_iter7_reg;
        trunc_ln33_reg_969_pp0_iter9_reg <= trunc_ln33_reg_969_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        lshr_ln_reg_995 <= {{phi_mul_fu_104[9:1]}};
        mul8_i_1_reg_1219_pp0_iter3_reg <= mul8_i_1_reg_1219;
        mul8_i_1_reg_1219_pp0_iter4_reg <= mul8_i_1_reg_1219_pp0_iter3_reg;
        mul8_i_2_reg_1224_pp0_iter3_reg <= mul8_i_2_reg_1224;
        mul8_i_2_reg_1224_pp0_iter4_reg <= mul8_i_2_reg_1224_pp0_iter3_reg;
        mul8_i_2_reg_1224_pp0_iter5_reg <= mul8_i_2_reg_1224_pp0_iter4_reg;
        mul8_i_2_reg_1224_pp0_iter6_reg <= mul8_i_2_reg_1224_pp0_iter5_reg;
        mul8_i_3_reg_1229_pp0_iter3_reg <= mul8_i_3_reg_1229;
        mul8_i_3_reg_1229_pp0_iter4_reg <= mul8_i_3_reg_1229_pp0_iter3_reg;
        mul8_i_3_reg_1229_pp0_iter5_reg <= mul8_i_3_reg_1229_pp0_iter4_reg;
        mul8_i_3_reg_1229_pp0_iter6_reg <= mul8_i_3_reg_1229_pp0_iter5_reg;
        mul8_i_3_reg_1229_pp0_iter7_reg <= mul8_i_3_reg_1229_pp0_iter6_reg;
        mul8_i_3_reg_1229_pp0_iter8_reg <= mul8_i_3_reg_1229_pp0_iter7_reg;
        phi_mul_load_reg_986 <= phi_mul_fu_104;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        mul8_i_10_reg_1269 <= grp_fu_5899_p_dout0;
        mul8_i_8_reg_1254 <= grp_fu_5887_p_dout0;
        mul8_i_9_reg_1259 <= grp_fu_5891_p_dout0;
        mul8_i_s_reg_1264 <= grp_fu_5895_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        mul8_i_10_reg_1269_pp0_iter10_reg <= mul8_i_10_reg_1269_pp0_iter9_reg;
        mul8_i_10_reg_1269_pp0_iter11_reg <= mul8_i_10_reg_1269_pp0_iter10_reg;
        mul8_i_10_reg_1269_pp0_iter12_reg <= mul8_i_10_reg_1269_pp0_iter11_reg;
        mul8_i_10_reg_1269_pp0_iter13_reg <= mul8_i_10_reg_1269_pp0_iter12_reg;
        mul8_i_10_reg_1269_pp0_iter14_reg <= mul8_i_10_reg_1269_pp0_iter13_reg;
        mul8_i_10_reg_1269_pp0_iter15_reg <= mul8_i_10_reg_1269_pp0_iter14_reg;
        mul8_i_10_reg_1269_pp0_iter16_reg <= mul8_i_10_reg_1269_pp0_iter15_reg;
        mul8_i_10_reg_1269_pp0_iter17_reg <= mul8_i_10_reg_1269_pp0_iter16_reg;
        mul8_i_10_reg_1269_pp0_iter18_reg <= mul8_i_10_reg_1269_pp0_iter17_reg;
        mul8_i_10_reg_1269_pp0_iter19_reg <= mul8_i_10_reg_1269_pp0_iter18_reg;
        mul8_i_10_reg_1269_pp0_iter20_reg <= mul8_i_10_reg_1269_pp0_iter19_reg;
        mul8_i_10_reg_1269_pp0_iter21_reg <= mul8_i_10_reg_1269_pp0_iter20_reg;
        mul8_i_10_reg_1269_pp0_iter22_reg <= mul8_i_10_reg_1269_pp0_iter21_reg;
        mul8_i_10_reg_1269_pp0_iter23_reg <= mul8_i_10_reg_1269_pp0_iter22_reg;
        mul8_i_10_reg_1269_pp0_iter24_reg <= mul8_i_10_reg_1269_pp0_iter23_reg;
        mul8_i_10_reg_1269_pp0_iter3_reg <= mul8_i_10_reg_1269;
        mul8_i_10_reg_1269_pp0_iter4_reg <= mul8_i_10_reg_1269_pp0_iter3_reg;
        mul8_i_10_reg_1269_pp0_iter5_reg <= mul8_i_10_reg_1269_pp0_iter4_reg;
        mul8_i_10_reg_1269_pp0_iter6_reg <= mul8_i_10_reg_1269_pp0_iter5_reg;
        mul8_i_10_reg_1269_pp0_iter7_reg <= mul8_i_10_reg_1269_pp0_iter6_reg;
        mul8_i_10_reg_1269_pp0_iter8_reg <= mul8_i_10_reg_1269_pp0_iter7_reg;
        mul8_i_10_reg_1269_pp0_iter9_reg <= mul8_i_10_reg_1269_pp0_iter8_reg;
        mul8_i_8_reg_1254_pp0_iter10_reg <= mul8_i_8_reg_1254_pp0_iter9_reg;
        mul8_i_8_reg_1254_pp0_iter11_reg <= mul8_i_8_reg_1254_pp0_iter10_reg;
        mul8_i_8_reg_1254_pp0_iter12_reg <= mul8_i_8_reg_1254_pp0_iter11_reg;
        mul8_i_8_reg_1254_pp0_iter13_reg <= mul8_i_8_reg_1254_pp0_iter12_reg;
        mul8_i_8_reg_1254_pp0_iter14_reg <= mul8_i_8_reg_1254_pp0_iter13_reg;
        mul8_i_8_reg_1254_pp0_iter15_reg <= mul8_i_8_reg_1254_pp0_iter14_reg;
        mul8_i_8_reg_1254_pp0_iter16_reg <= mul8_i_8_reg_1254_pp0_iter15_reg;
        mul8_i_8_reg_1254_pp0_iter17_reg <= mul8_i_8_reg_1254_pp0_iter16_reg;
        mul8_i_8_reg_1254_pp0_iter18_reg <= mul8_i_8_reg_1254_pp0_iter17_reg;
        mul8_i_8_reg_1254_pp0_iter3_reg <= mul8_i_8_reg_1254;
        mul8_i_8_reg_1254_pp0_iter4_reg <= mul8_i_8_reg_1254_pp0_iter3_reg;
        mul8_i_8_reg_1254_pp0_iter5_reg <= mul8_i_8_reg_1254_pp0_iter4_reg;
        mul8_i_8_reg_1254_pp0_iter6_reg <= mul8_i_8_reg_1254_pp0_iter5_reg;
        mul8_i_8_reg_1254_pp0_iter7_reg <= mul8_i_8_reg_1254_pp0_iter6_reg;
        mul8_i_8_reg_1254_pp0_iter8_reg <= mul8_i_8_reg_1254_pp0_iter7_reg;
        mul8_i_8_reg_1254_pp0_iter9_reg <= mul8_i_8_reg_1254_pp0_iter8_reg;
        mul8_i_9_reg_1259_pp0_iter10_reg <= mul8_i_9_reg_1259_pp0_iter9_reg;
        mul8_i_9_reg_1259_pp0_iter11_reg <= mul8_i_9_reg_1259_pp0_iter10_reg;
        mul8_i_9_reg_1259_pp0_iter12_reg <= mul8_i_9_reg_1259_pp0_iter11_reg;
        mul8_i_9_reg_1259_pp0_iter13_reg <= mul8_i_9_reg_1259_pp0_iter12_reg;
        mul8_i_9_reg_1259_pp0_iter14_reg <= mul8_i_9_reg_1259_pp0_iter13_reg;
        mul8_i_9_reg_1259_pp0_iter15_reg <= mul8_i_9_reg_1259_pp0_iter14_reg;
        mul8_i_9_reg_1259_pp0_iter16_reg <= mul8_i_9_reg_1259_pp0_iter15_reg;
        mul8_i_9_reg_1259_pp0_iter17_reg <= mul8_i_9_reg_1259_pp0_iter16_reg;
        mul8_i_9_reg_1259_pp0_iter18_reg <= mul8_i_9_reg_1259_pp0_iter17_reg;
        mul8_i_9_reg_1259_pp0_iter19_reg <= mul8_i_9_reg_1259_pp0_iter18_reg;
        mul8_i_9_reg_1259_pp0_iter20_reg <= mul8_i_9_reg_1259_pp0_iter19_reg;
        mul8_i_9_reg_1259_pp0_iter3_reg <= mul8_i_9_reg_1259;
        mul8_i_9_reg_1259_pp0_iter4_reg <= mul8_i_9_reg_1259_pp0_iter3_reg;
        mul8_i_9_reg_1259_pp0_iter5_reg <= mul8_i_9_reg_1259_pp0_iter4_reg;
        mul8_i_9_reg_1259_pp0_iter6_reg <= mul8_i_9_reg_1259_pp0_iter5_reg;
        mul8_i_9_reg_1259_pp0_iter7_reg <= mul8_i_9_reg_1259_pp0_iter6_reg;
        mul8_i_9_reg_1259_pp0_iter8_reg <= mul8_i_9_reg_1259_pp0_iter7_reg;
        mul8_i_9_reg_1259_pp0_iter9_reg <= mul8_i_9_reg_1259_pp0_iter8_reg;
        mul8_i_s_reg_1264_pp0_iter10_reg <= mul8_i_s_reg_1264_pp0_iter9_reg;
        mul8_i_s_reg_1264_pp0_iter11_reg <= mul8_i_s_reg_1264_pp0_iter10_reg;
        mul8_i_s_reg_1264_pp0_iter12_reg <= mul8_i_s_reg_1264_pp0_iter11_reg;
        mul8_i_s_reg_1264_pp0_iter13_reg <= mul8_i_s_reg_1264_pp0_iter12_reg;
        mul8_i_s_reg_1264_pp0_iter14_reg <= mul8_i_s_reg_1264_pp0_iter13_reg;
        mul8_i_s_reg_1264_pp0_iter15_reg <= mul8_i_s_reg_1264_pp0_iter14_reg;
        mul8_i_s_reg_1264_pp0_iter16_reg <= mul8_i_s_reg_1264_pp0_iter15_reg;
        mul8_i_s_reg_1264_pp0_iter17_reg <= mul8_i_s_reg_1264_pp0_iter16_reg;
        mul8_i_s_reg_1264_pp0_iter18_reg <= mul8_i_s_reg_1264_pp0_iter17_reg;
        mul8_i_s_reg_1264_pp0_iter19_reg <= mul8_i_s_reg_1264_pp0_iter18_reg;
        mul8_i_s_reg_1264_pp0_iter20_reg <= mul8_i_s_reg_1264_pp0_iter19_reg;
        mul8_i_s_reg_1264_pp0_iter21_reg <= mul8_i_s_reg_1264_pp0_iter20_reg;
        mul8_i_s_reg_1264_pp0_iter22_reg <= mul8_i_s_reg_1264_pp0_iter21_reg;
        mul8_i_s_reg_1264_pp0_iter3_reg <= mul8_i_s_reg_1264;
        mul8_i_s_reg_1264_pp0_iter4_reg <= mul8_i_s_reg_1264_pp0_iter3_reg;
        mul8_i_s_reg_1264_pp0_iter5_reg <= mul8_i_s_reg_1264_pp0_iter4_reg;
        mul8_i_s_reg_1264_pp0_iter6_reg <= mul8_i_s_reg_1264_pp0_iter5_reg;
        mul8_i_s_reg_1264_pp0_iter7_reg <= mul8_i_s_reg_1264_pp0_iter6_reg;
        mul8_i_s_reg_1264_pp0_iter8_reg <= mul8_i_s_reg_1264_pp0_iter7_reg;
        mul8_i_s_reg_1264_pp0_iter9_reg <= mul8_i_s_reg_1264_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul8_i_11_reg_1274 <= grp_fu_5887_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        mul8_i_1_reg_1219 <= grp_fu_5891_p_dout0;
        mul8_i_2_reg_1224 <= grp_fu_5895_p_dout0;
        mul8_i_3_reg_1229 <= grp_fu_5899_p_dout0;
        mul8_i_reg_1214 <= grp_fu_5887_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        mul8_i_4_reg_1234 <= grp_fu_5887_p_dout0;
        mul8_i_5_reg_1239 <= grp_fu_5891_p_dout0;
        mul8_i_6_reg_1244 <= grp_fu_5895_p_dout0;
        mul8_i_7_reg_1249 <= grp_fu_5899_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        mul8_i_4_reg_1234_pp0_iter10_reg <= mul8_i_4_reg_1234_pp0_iter9_reg;
        mul8_i_4_reg_1234_pp0_iter3_reg <= mul8_i_4_reg_1234;
        mul8_i_4_reg_1234_pp0_iter4_reg <= mul8_i_4_reg_1234_pp0_iter3_reg;
        mul8_i_4_reg_1234_pp0_iter5_reg <= mul8_i_4_reg_1234_pp0_iter4_reg;
        mul8_i_4_reg_1234_pp0_iter6_reg <= mul8_i_4_reg_1234_pp0_iter5_reg;
        mul8_i_4_reg_1234_pp0_iter7_reg <= mul8_i_4_reg_1234_pp0_iter6_reg;
        mul8_i_4_reg_1234_pp0_iter8_reg <= mul8_i_4_reg_1234_pp0_iter7_reg;
        mul8_i_4_reg_1234_pp0_iter9_reg <= mul8_i_4_reg_1234_pp0_iter8_reg;
        mul8_i_5_reg_1239_pp0_iter10_reg <= mul8_i_5_reg_1239_pp0_iter9_reg;
        mul8_i_5_reg_1239_pp0_iter11_reg <= mul8_i_5_reg_1239_pp0_iter10_reg;
        mul8_i_5_reg_1239_pp0_iter12_reg <= mul8_i_5_reg_1239_pp0_iter11_reg;
        mul8_i_5_reg_1239_pp0_iter3_reg <= mul8_i_5_reg_1239;
        mul8_i_5_reg_1239_pp0_iter4_reg <= mul8_i_5_reg_1239_pp0_iter3_reg;
        mul8_i_5_reg_1239_pp0_iter5_reg <= mul8_i_5_reg_1239_pp0_iter4_reg;
        mul8_i_5_reg_1239_pp0_iter6_reg <= mul8_i_5_reg_1239_pp0_iter5_reg;
        mul8_i_5_reg_1239_pp0_iter7_reg <= mul8_i_5_reg_1239_pp0_iter6_reg;
        mul8_i_5_reg_1239_pp0_iter8_reg <= mul8_i_5_reg_1239_pp0_iter7_reg;
        mul8_i_5_reg_1239_pp0_iter9_reg <= mul8_i_5_reg_1239_pp0_iter8_reg;
        mul8_i_6_reg_1244_pp0_iter10_reg <= mul8_i_6_reg_1244_pp0_iter9_reg;
        mul8_i_6_reg_1244_pp0_iter11_reg <= mul8_i_6_reg_1244_pp0_iter10_reg;
        mul8_i_6_reg_1244_pp0_iter12_reg <= mul8_i_6_reg_1244_pp0_iter11_reg;
        mul8_i_6_reg_1244_pp0_iter13_reg <= mul8_i_6_reg_1244_pp0_iter12_reg;
        mul8_i_6_reg_1244_pp0_iter14_reg <= mul8_i_6_reg_1244_pp0_iter13_reg;
        mul8_i_6_reg_1244_pp0_iter3_reg <= mul8_i_6_reg_1244;
        mul8_i_6_reg_1244_pp0_iter4_reg <= mul8_i_6_reg_1244_pp0_iter3_reg;
        mul8_i_6_reg_1244_pp0_iter5_reg <= mul8_i_6_reg_1244_pp0_iter4_reg;
        mul8_i_6_reg_1244_pp0_iter6_reg <= mul8_i_6_reg_1244_pp0_iter5_reg;
        mul8_i_6_reg_1244_pp0_iter7_reg <= mul8_i_6_reg_1244_pp0_iter6_reg;
        mul8_i_6_reg_1244_pp0_iter8_reg <= mul8_i_6_reg_1244_pp0_iter7_reg;
        mul8_i_6_reg_1244_pp0_iter9_reg <= mul8_i_6_reg_1244_pp0_iter8_reg;
        mul8_i_7_reg_1249_pp0_iter10_reg <= mul8_i_7_reg_1249_pp0_iter9_reg;
        mul8_i_7_reg_1249_pp0_iter11_reg <= mul8_i_7_reg_1249_pp0_iter10_reg;
        mul8_i_7_reg_1249_pp0_iter12_reg <= mul8_i_7_reg_1249_pp0_iter11_reg;
        mul8_i_7_reg_1249_pp0_iter13_reg <= mul8_i_7_reg_1249_pp0_iter12_reg;
        mul8_i_7_reg_1249_pp0_iter14_reg <= mul8_i_7_reg_1249_pp0_iter13_reg;
        mul8_i_7_reg_1249_pp0_iter15_reg <= mul8_i_7_reg_1249_pp0_iter14_reg;
        mul8_i_7_reg_1249_pp0_iter16_reg <= mul8_i_7_reg_1249_pp0_iter15_reg;
        mul8_i_7_reg_1249_pp0_iter3_reg <= mul8_i_7_reg_1249;
        mul8_i_7_reg_1249_pp0_iter4_reg <= mul8_i_7_reg_1249_pp0_iter3_reg;
        mul8_i_7_reg_1249_pp0_iter5_reg <= mul8_i_7_reg_1249_pp0_iter4_reg;
        mul8_i_7_reg_1249_pp0_iter6_reg <= mul8_i_7_reg_1249_pp0_iter5_reg;
        mul8_i_7_reg_1249_pp0_iter7_reg <= mul8_i_7_reg_1249_pp0_iter6_reg;
        mul8_i_7_reg_1249_pp0_iter8_reg <= mul8_i_7_reg_1249_pp0_iter7_reg;
        mul8_i_7_reg_1249_pp0_iter9_reg <= mul8_i_7_reg_1249_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        reg_510 <= grp_fu_475_p3;
        reg_514 <= grp_fu_482_p3;
        reg_518 <= grp_fu_489_p3;
        reg_522 <= grp_fu_496_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        reg_526 <= grp_fu_503_p3;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter29 == 1'b1))) begin
        activations1_1_ce0_local = 1'b1;
    end else begin
        activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln33_reg_969_pp0_iter29_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter29 == 1'b1))) begin
        activations1_1_we0_local = 1'b1;
    end else begin
        activations1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter29 == 1'b1))) begin
        activations1_ce0_local = 1'b1;
    end else begin
        activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln33_reg_969_pp0_iter29_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter29 == 1'b1))) begin
        activations1_we0_local = 1'b1;
    end else begin
        activations1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln33_reg_965 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln33_reg_965_pp0_iter28_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter28 == 1'b1))) begin
        ap_condition_exit_pp0_iter28_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter28_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter28_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
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
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
if (((ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0)& (ap_enable_reg_pp0_iter27 == 1'b0) & (ap_enable_reg_pp0_iter26 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0) & (ap_enable_reg_pp0_iter26 == 1'b0))) begin
        ap_idle_pp0_0to27 = 1'b1;
    end else begin
        ap_idle_pp0_0to27 = 1'b0;
    end
end
always @ (*) begin
if (((ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0)& (ap_enable_reg_pp0_iter26 == 1'b0))) begin
        ap_idle_pp0_1to29 = 1'b1;
    end else begin
        ap_idle_pp0_1to29 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_j_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_108;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter27 == 1'b1))) begin
        grp_fu_442_p0 = add11_i_10_reg_1334;
    end else if (((ap_enable_reg_pp0_iter19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_442_p0 = add11_i_7_reg_1314;
    end else if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_442_p0 = add11_i_3_reg_1294;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_442_p0 = mul8_i_reg_1214;
    end else begin
        grp_fu_442_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter27 == 1'b1))) begin
        grp_fu_442_p1 = mul8_i_11_reg_1274_pp0_iter27_reg;
    end else if (((ap_enable_reg_pp0_iter19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_442_p1 = mul8_i_8_reg_1254_pp0_iter18_reg;
    end else if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_442_p1 = mul8_i_4_reg_1234_pp0_iter10_reg;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_442_p1 = 64'd0;
    end else begin
        grp_fu_442_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_447_p0 = add11_i_8_reg_1319;
    end else if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_447_p0 = add11_i_4_reg_1299;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_447_p0 = add11_i_reg_1279;
    end else begin
        grp_fu_447_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_447_p1 = mul8_i_9_reg_1259_pp0_iter20_reg;
    end else if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_447_p1 = mul8_i_5_reg_1239_pp0_iter12_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_447_p1 = mul8_i_1_reg_1219_pp0_iter4_reg;
    end else begin
        grp_fu_447_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_451_p0 = add11_i_9_reg_1324;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_451_p0 = add11_i_5_reg_1304;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_451_p0 = add11_i_1_reg_1284;
    end else begin
        grp_fu_451_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_451_p1 = mul8_i_s_reg_1264_pp0_iter22_reg;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_451_p1 = mul8_i_6_reg_1244_pp0_iter14_reg;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_451_p1 = mul8_i_2_reg_1224_pp0_iter6_reg;
    end else begin
        grp_fu_451_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_455_p0 = add11_i_s_reg_1329;
    end else if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_455_p0 = add11_i_6_reg_1309;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_455_p0 = add11_i_2_reg_1289;
    end else begin
        grp_fu_455_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_455_p1 = mul8_i_10_reg_1269_pp0_iter24_reg;
    end else if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_455_p1 = mul8_i_7_reg_1249_pp0_iter16_reg;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_455_p1 = mul8_i_3_reg_1229_pp0_iter8_reg;
    end else begin
        grp_fu_455_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_459_p0 = bitcast_ln36_25_fu_876_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_459_p0 = bitcast_ln36_21_fu_859_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_459_p0 = bitcast_ln36_17_fu_807_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_459_p0 = bitcast_ln36_13_fu_718_p1;
    end else begin
        grp_fu_459_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_459_p1 = bitcast_ln36_12;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_459_p1 = bitcast_ln36_8;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_459_p1 = bitcast_ln36_4;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_459_p1 = bitcast_ln36;
    end else begin
        grp_fu_459_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_463_p0 = bitcast_ln36_22_fu_864_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_463_p0 = bitcast_ln36_18_fu_812_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_463_p0 = bitcast_ln36_14_fu_723_p1;
    end else begin
        grp_fu_463_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_463_p1 = bitcast_ln36_9;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_463_p1 = bitcast_ln36_5;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_463_p1 = bitcast_ln36_1;
    end else begin
        grp_fu_463_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_467_p0 = bitcast_ln36_23_fu_868_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_467_p0 = bitcast_ln36_19_fu_817_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_467_p0 = bitcast_ln36_15_fu_728_p1;
    end else begin
        grp_fu_467_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_467_p1 = bitcast_ln36_10;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_467_p1 = bitcast_ln36_6;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_467_p1 = bitcast_ln36_2;
    end else begin
        grp_fu_467_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_471_p0 = bitcast_ln36_24_fu_872_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_471_p0 = bitcast_ln36_20_fu_822_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_471_p0 = bitcast_ln36_16_fu_733_p1;
    end else begin
        grp_fu_471_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_471_p1 = bitcast_ln36_11;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_471_p1 = bitcast_ln36_7;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_471_p1 = bitcast_ln36_3;
    end else begin
        grp_fu_471_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            grp_fu_503_p0 = trunc_ln33_reg_969_pp0_iter1_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            grp_fu_503_p0 = trunc_ln33_reg_969;
        end else begin
            grp_fu_503_p0 = 'bx;
        end
    end else begin
        grp_fu_503_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        weights1_0_address0_local = zext_ln36_12_fu_853_p1;
    end else if (((trunc_ln33_reg_969 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage3))) begin
        weights1_0_address0_local = zext_ln36_9_fu_764_p1;
    end else if (((trunc_ln33_reg_969 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage3))) begin
        weights1_0_address0_local = zext_ln36_8_fu_743_p1;
    end else if (((trunc_ln33_reg_969 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage2))) begin
        weights1_0_address0_local = zext_ln36_5_fu_675_p1;
    end else if (((trunc_ln33_reg_969 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage2))) begin
        weights1_0_address0_local = zext_ln36_4_fu_654_p1;
    end else if (((trunc_ln33_reg_969 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage1))) begin
        weights1_0_address0_local = zext_ln36_3_fu_643_p1;
    end else if (((trunc_ln33_reg_969 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage1))) begin
        weights1_0_address0_local = zext_ln36_2_fu_621_p1;
    end else begin
        weights1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln33_reg_965 == 1'd0))) begin
        if ((1'b1 == ap_condition_1390)) begin
            weights1_0_address1_local = zext_ln36_11_fu_796_p1;
        end else if ((1'b1 == ap_condition_1386)) begin
            weights1_0_address1_local = zext_ln36_10_fu_775_p1;
        end else if ((1'b1 == ap_condition_1382)) begin
            weights1_0_address1_local = zext_ln36_7_fu_707_p1;
        end else if ((1'b1 == ap_condition_1378)) begin
            weights1_0_address1_local = zext_ln36_6_fu_686_p1;
        end else if ((1'b1 == ap_condition_1374)) begin
            weights1_0_address1_local = zext_ln36_1_fu_609_p1;
        end else if ((1'b1 == ap_condition_1370)) begin
            weights1_0_address1_local = zext_ln36_fu_587_p1;
        end else begin
            weights1_0_address1_local = 'bx;
        end
    end else begin
        weights1_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln33_reg_969 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001)) | ((trunc_ln33_reg_969 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001)) | ((trunc_ln33_reg_969 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001)) | ((trunc_ln33_reg_969 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001)) | ((trunc_ln33_reg_969 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001)) | ((trunc_ln33_reg_969 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        weights1_0_ce0_local = 1'b1;
    end else begin
        weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln33_reg_969 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001)) | ((trunc_ln33_reg_969 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001)) | ((trunc_ln33_reg_969 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001)) | ((trunc_ln33_reg_969 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001)) | ((trunc_ln33_reg_969 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001)) | ((trunc_ln33_reg_969 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        weights1_0_ce1_local = 1'b1;
    end else begin
        weights1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        weights1_1_address0_local = zext_ln36_12_fu_853_p1;
    end else if (((trunc_ln33_reg_969 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage3))) begin
        weights1_1_address0_local = zext_ln36_9_fu_764_p1;
    end else if (((trunc_ln33_reg_969 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage3))) begin
        weights1_1_address0_local = zext_ln36_8_fu_743_p1;
    end else if (((trunc_ln33_reg_969 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage2))) begin
        weights1_1_address0_local = zext_ln36_5_fu_675_p1;
    end else if (((trunc_ln33_reg_969 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage2))) begin
        weights1_1_address0_local = zext_ln36_4_fu_654_p1;
    end else if (((trunc_ln33_reg_969 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage1))) begin
        weights1_1_address0_local = zext_ln36_3_fu_643_p1;
    end else if (((trunc_ln33_reg_969 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage1))) begin
        weights1_1_address0_local = zext_ln36_2_fu_621_p1;
    end else begin
        weights1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln33_reg_965 == 1'd0))) begin
        if ((1'b1 == ap_condition_1386)) begin
            weights1_1_address1_local = zext_ln36_11_fu_796_p1;
        end else if ((1'b1 == ap_condition_1390)) begin
            weights1_1_address1_local = zext_ln36_10_fu_775_p1;
        end else if ((1'b1 == ap_condition_1378)) begin
            weights1_1_address1_local = zext_ln36_7_fu_707_p1;
        end else if ((1'b1 == ap_condition_1382)) begin
            weights1_1_address1_local = zext_ln36_6_fu_686_p1;
        end else if ((1'b1 == ap_condition_1370)) begin
            weights1_1_address1_local = zext_ln36_1_fu_609_p1;
        end else if ((1'b1 == ap_condition_1374)) begin
            weights1_1_address1_local = zext_ln36_fu_587_p1;
        end else begin
            weights1_1_address1_local = 'bx;
        end
    end else begin
        weights1_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln33_reg_969 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001)) | ((trunc_ln33_reg_969 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001)) | ((trunc_ln33_reg_969 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001)) | ((trunc_ln33_reg_969 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001)) | ((trunc_ln33_reg_969 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001)) | ((trunc_ln33_reg_969 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        weights1_1_ce0_local = 1'b1;
    end else begin
        weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln33_reg_969 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001)) | ((trunc_ln33_reg_969 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001)) | ((trunc_ln33_reg_969 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001)) | ((trunc_ln33_reg_969 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001)) | ((trunc_ln33_reg_969 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001)) | ((trunc_ln33_reg_969 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln33_reg_965 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        weights1_1_ce1_local = 1'b1;
    end else begin
        weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to29 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter28_stage1) & (ap_idle_pp0_0to27 == 1'b1))) begin
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
assign activations1_1_address0 = zext_ln34_fu_881_p1;
assign activations1_1_ce0 = activations1_1_ce0_local;
assign activations1_1_d0 = add11_i_11_reg_1339;
assign activations1_1_we0 = activations1_1_we0_local;
assign activations1_address0 = zext_ln34_fu_881_p1;
assign activations1_ce0 = activations1_ce0_local;
assign activations1_d0 = add11_i_11_reg_1339;
assign activations1_we0 = activations1_we0_local;
assign add_ln33_fu_549_p2 = (ap_sig_allocacmp_j_1 + 7'd1);
assign add_ln36_10_fu_781_p2 = (phi_mul_load_reg_986 + 10'd11);
assign add_ln36_11_fu_848_p2 = (lshr_ln_reg_995 + 9'd6);
assign add_ln36_12_fu_713_p2 = (phi_mul_load_reg_986 + 10'd13);
assign add_ln36_1_fu_615_p2 = (lshr_ln_fu_577_p4 + 9'd1);
assign add_ln36_2_fu_627_p2 = (phi_mul_fu_104 + 10'd3);
assign add_ln36_3_fu_649_p2 = (lshr_ln_reg_995 + 9'd2);
assign add_ln36_4_fu_660_p2 = (phi_mul_load_reg_986 + 10'd5);
assign add_ln36_5_fu_681_p2 = (lshr_ln_reg_995 + 9'd3);
assign add_ln36_6_fu_692_p2 = (phi_mul_load_reg_986 + 10'd7);
assign add_ln36_7_fu_738_p2 = (lshr_ln_reg_995 + 9'd4);
assign add_ln36_8_fu_749_p2 = (phi_mul_load_reg_986 + 10'd9);
assign add_ln36_9_fu_770_p2 = (lshr_ln_reg_995 + 9'd5);
assign add_ln36_fu_593_p2 = (phi_mul_fu_104 + 10'd1);
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
always @ (*) begin
    ap_condition_1370 = ((trunc_ln33_reg_969 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1));
end
always @ (*) begin
    ap_condition_1374 = ((trunc_ln33_reg_969 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1));
end
always @ (*) begin
    ap_condition_1378 = ((trunc_ln33_reg_969 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1382 = ((trunc_ln33_reg_969 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1386 = ((trunc_ln33_reg_969 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3));
end
always @ (*) begin
    ap_condition_1390 = ((trunc_ln33_reg_969 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_13_fu_718_p1 = reg_510;
assign bitcast_ln36_14_fu_723_p1 = reg_514;
assign bitcast_ln36_15_fu_728_p1 = reg_518;
assign bitcast_ln36_16_fu_733_p1 = reg_522;
assign bitcast_ln36_17_fu_807_p1 = reg_518;
assign bitcast_ln36_18_fu_812_p1 = reg_522;
assign bitcast_ln36_19_fu_817_p1 = reg_510;
assign bitcast_ln36_20_fu_822_p1 = reg_514;
assign bitcast_ln36_21_fu_859_p1 = reg_526;
assign bitcast_ln36_22_fu_864_p1 = select_ln36_9_reg_1164;
assign bitcast_ln36_23_fu_868_p1 = select_ln36_10_reg_1169;
assign bitcast_ln36_24_fu_872_p1 = select_ln36_11_reg_1174;
assign bitcast_ln36_25_fu_876_p1 = reg_526;
assign grp_fu_475_p3 = ((trunc_ln33_reg_969[0:0] == 1'b1) ? weights1_1_q1 : weights1_0_q1);
assign grp_fu_482_p3 = ((trunc_ln33_reg_969[0:0] == 1'b1) ? weights1_0_q1 : weights1_1_q1);
assign grp_fu_489_p3 = ((trunc_ln33_reg_969[0:0] == 1'b1) ? weights1_1_q0 : weights1_0_q0);
assign grp_fu_496_p3 = ((trunc_ln33_reg_969[0:0] == 1'b1) ? weights1_0_q0 : weights1_1_q0);
assign grp_fu_503_p3 = ((grp_fu_503_p0[0:0] == 1'b1) ? weights1_1_q0 : weights1_0_q0);
assign grp_fu_5871_p_ce = 1'b1;
assign grp_fu_5871_p_din0 = grp_fu_442_p0;
assign grp_fu_5871_p_din1 = grp_fu_442_p1;
assign grp_fu_5871_p_opcode = 2'd0;
assign grp_fu_5875_p_ce = 1'b1;
assign grp_fu_5875_p_din0 = grp_fu_447_p0;
assign grp_fu_5875_p_din1 = grp_fu_447_p1;
assign grp_fu_5875_p_opcode = 2'd0;
assign grp_fu_5879_p_ce = 1'b1;
assign grp_fu_5879_p_din0 = grp_fu_451_p0;
assign grp_fu_5879_p_din1 = grp_fu_451_p1;
assign grp_fu_5879_p_opcode = 2'd0;
assign grp_fu_5883_p_ce = 1'b1;
assign grp_fu_5883_p_din0 = grp_fu_455_p0;
assign grp_fu_5883_p_din1 = grp_fu_455_p1;
assign grp_fu_5883_p_opcode = 2'd0;
assign grp_fu_5887_p_ce = 1'b1;
assign grp_fu_5887_p_din0 = grp_fu_459_p0;
assign grp_fu_5887_p_din1 = grp_fu_459_p1;
assign grp_fu_5891_p_ce = 1'b1;
assign grp_fu_5891_p_din0 = grp_fu_463_p0;
assign grp_fu_5891_p_din1 = grp_fu_463_p1;
assign grp_fu_5895_p_ce = 1'b1;
assign grp_fu_5895_p_din0 = grp_fu_467_p0;
assign grp_fu_5895_p_din1 = grp_fu_467_p1;
assign grp_fu_5899_p_ce = 1'b1;
assign grp_fu_5899_p_din0 = grp_fu_471_p0;
assign grp_fu_5899_p_din1 = grp_fu_471_p1;
assign icmp_ln33_fu_543_p2 = ((ap_sig_allocacmp_j_1 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln36_1_fu_599_p4 = {{add_ln36_fu_593_p2[9:1]}};
assign lshr_ln36_2_fu_633_p4 = {{add_ln36_2_fu_627_p2[9:1]}};
assign lshr_ln36_3_fu_665_p4 = {{add_ln36_4_fu_660_p2[9:1]}};
assign lshr_ln36_4_fu_697_p4 = {{add_ln36_6_fu_692_p2[9:1]}};
assign lshr_ln36_5_fu_754_p4 = {{add_ln36_8_fu_749_p2[9:1]}};
assign lshr_ln36_6_fu_786_p4 = {{add_ln36_10_fu_781_p2[9:1]}};
assign lshr_ln_fu_577_p4 = {{phi_mul_fu_104[9:1]}};
assign select_ln36_10_fu_834_p3 = ((trunc_ln33_reg_969[0:0] == 1'b1) ? weights1_1_q1 : weights1_0_q1);
assign select_ln36_11_fu_841_p3 = ((trunc_ln33_reg_969[0:0] == 1'b1) ? weights1_0_q1 : weights1_1_q1);
assign select_ln36_9_fu_827_p3 = ((trunc_ln33_reg_969[0:0] == 1'b1) ? weights1_0_q0 : weights1_1_q0);
assign trunc_ln33_fu_555_p1 = ap_sig_allocacmp_j_1[0:0];
assign weights1_0_address0 = weights1_0_address0_local;
assign weights1_0_address1 = weights1_0_address1_local;
assign weights1_0_ce0 = weights1_0_ce0_local;
assign weights1_0_ce1 = weights1_0_ce1_local;
assign weights1_1_address0 = weights1_1_address0_local;
assign weights1_1_address1 = weights1_1_address1_local;
assign weights1_1_ce0 = weights1_1_ce0_local;
assign weights1_1_ce1 = weights1_1_ce1_local;
assign zext_ln34_fu_881_p1 = lshr_ln8_reg_981_pp0_iter29_reg;
assign zext_ln36_10_fu_775_p1 = add_ln36_9_fu_770_p2;
assign zext_ln36_11_fu_796_p1 = lshr_ln36_6_fu_786_p4;
assign zext_ln36_12_fu_853_p1 = add_ln36_11_fu_848_p2;
assign zext_ln36_1_fu_609_p1 = lshr_ln36_1_fu_599_p4;
assign zext_ln36_2_fu_621_p1 = add_ln36_1_fu_615_p2;
assign zext_ln36_3_fu_643_p1 = lshr_ln36_2_fu_633_p4;
assign zext_ln36_4_fu_654_p1 = add_ln36_3_fu_649_p2;
assign zext_ln36_5_fu_675_p1 = lshr_ln36_3_fu_665_p4;
assign zext_ln36_6_fu_686_p1 = add_ln36_5_fu_681_p2;
assign zext_ln36_7_fu_707_p1 = lshr_ln36_4_fu_697_p4;
assign zext_ln36_8_fu_743_p1 = add_ln36_7_fu_738_p2;
assign zext_ln36_9_fu_764_p1 = lshr_ln36_5_fu_754_p4;
assign zext_ln36_fu_587_p1 = lshr_ln_fu_577_p4;
endmodule 