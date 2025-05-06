
module backprop_backprop_Pipeline_label_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v26,v26_1,v26_2,v26_3,v26_4,v26_5,v26_6,v26_7,v26_8,v26_9,v26_10,v26_11,v26_12,v20_address0,v20_ce0,v20_we0,v20_d0,grp_fu_2178_p_din0,grp_fu_2178_p_din1,grp_fu_2178_p_opcode,grp_fu_2178_p_dout0,grp_fu_2178_p_ce,grp_fu_2182_p_din0,grp_fu_2182_p_din1,grp_fu_2182_p_opcode,grp_fu_2182_p_dout0,grp_fu_2182_p_ce,grp_fu_4941_p_din0,grp_fu_4941_p_din1,grp_fu_4941_p_opcode,grp_fu_4941_p_dout0,grp_fu_4941_p_ce,grp_fu_2186_p_din0,grp_fu_2186_p_din1,grp_fu_2186_p_dout0,grp_fu_2186_p_ce,grp_fu_2190_p_din0,grp_fu_2190_p_din1,grp_fu_2190_p_dout0,grp_fu_2190_p_ce,grp_fu_4945_p_din0,grp_fu_4945_p_din1,grp_fu_4945_p_dout0,grp_fu_4945_p_ce,grp_fu_4949_p_din0,grp_fu_4949_p_din1,grp_fu_4949_p_dout0,grp_fu_4949_p_ce);  
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
output  [8:0] v0_0_address0;
output   v0_0_ce0;
input  [63:0] v0_0_q0;
output  [8:0] v0_0_address1;
output   v0_0_ce1;
input  [63:0] v0_0_q1;
output  [8:0] v0_1_address0;
output   v0_1_ce0;
input  [63:0] v0_1_q0;
output  [8:0] v0_1_address1;
output   v0_1_ce1;
input  [63:0] v0_1_q1;
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
output  [5:0] v20_address0;
output   v20_ce0;
output   v20_we0;
output  [63:0] v20_d0;
output  [63:0] grp_fu_2178_p_din0;
output  [63:0] grp_fu_2178_p_din1;
output  [0:0] grp_fu_2178_p_opcode;
input  [63:0] grp_fu_2178_p_dout0;
output   grp_fu_2178_p_ce;
output  [63:0] grp_fu_2182_p_din0;
output  [63:0] grp_fu_2182_p_din1;
output  [0:0] grp_fu_2182_p_opcode;
input  [63:0] grp_fu_2182_p_dout0;
output   grp_fu_2182_p_ce;
output  [63:0] grp_fu_4941_p_din0;
output  [63:0] grp_fu_4941_p_din1;
output  [0:0] grp_fu_4941_p_opcode;
input  [63:0] grp_fu_4941_p_dout0;
output   grp_fu_4941_p_ce;
output  [63:0] grp_fu_2186_p_din0;
output  [63:0] grp_fu_2186_p_din1;
input  [63:0] grp_fu_2186_p_dout0;
output   grp_fu_2186_p_ce;
output  [63:0] grp_fu_2190_p_din0;
output  [63:0] grp_fu_2190_p_din1;
input  [63:0] grp_fu_2190_p_dout0;
output   grp_fu_2190_p_ce;
output  [63:0] grp_fu_4945_p_din0;
output  [63:0] grp_fu_4945_p_din1;
input  [63:0] grp_fu_4945_p_dout0;
output   grp_fu_4945_p_ce;
output  [63:0] grp_fu_4949_p_din0;
output  [63:0] grp_fu_4949_p_din1;
input  [63:0] grp_fu_4949_p_dout0;
output   grp_fu_4949_p_ce;
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
reg   [0:0] icmp_ln66_reg_940;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_456_p3;
reg   [63:0] reg_491;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] grp_fu_463_p3;
reg   [63:0] reg_495;
wire   [63:0] grp_fu_470_p3;
reg   [63:0] reg_499;
wire   [63:0] grp_fu_477_p3;
reg   [63:0] reg_503;
wire   [63:0] grp_fu_484_p3;
reg   [63:0] reg_507;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [6:0] v23_1_reg_935;
reg   [6:0] v23_1_reg_935_pp0_iter1_reg;
reg   [6:0] v23_1_reg_935_pp0_iter2_reg;
reg   [6:0] v23_1_reg_935_pp0_iter3_reg;
reg   [6:0] v23_1_reg_935_pp0_iter4_reg;
reg   [6:0] v23_1_reg_935_pp0_iter5_reg;
reg   [6:0] v23_1_reg_935_pp0_iter6_reg;
reg   [6:0] v23_1_reg_935_pp0_iter7_reg;
reg   [6:0] v23_1_reg_935_pp0_iter8_reg;
reg   [6:0] v23_1_reg_935_pp0_iter9_reg;
reg   [6:0] v23_1_reg_935_pp0_iter10_reg;
reg   [6:0] v23_1_reg_935_pp0_iter11_reg;
reg   [6:0] v23_1_reg_935_pp0_iter12_reg;
reg   [6:0] v23_1_reg_935_pp0_iter13_reg;
reg   [6:0] v23_1_reg_935_pp0_iter14_reg;
reg   [6:0] v23_1_reg_935_pp0_iter15_reg;
reg   [6:0] v23_1_reg_935_pp0_iter16_reg;
reg   [6:0] v23_1_reg_935_pp0_iter17_reg;
reg   [6:0] v23_1_reg_935_pp0_iter18_reg;
reg   [6:0] v23_1_reg_935_pp0_iter19_reg;
reg   [6:0] v23_1_reg_935_pp0_iter20_reg;
reg   [6:0] v23_1_reg_935_pp0_iter21_reg;
reg   [6:0] v23_1_reg_935_pp0_iter22_reg;
reg   [6:0] v23_1_reg_935_pp0_iter23_reg;
reg   [6:0] v23_1_reg_935_pp0_iter24_reg;
reg   [6:0] v23_1_reg_935_pp0_iter25_reg;
reg   [6:0] v23_1_reg_935_pp0_iter26_reg;
reg   [6:0] v23_1_reg_935_pp0_iter27_reg;
reg   [6:0] v23_1_reg_935_pp0_iter28_reg;
reg   [6:0] v23_1_reg_935_pp0_iter29_reg;
wire   [0:0] icmp_ln66_fu_524_p2;
reg   [0:0] icmp_ln66_reg_940_pp0_iter1_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter2_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter3_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter4_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter5_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter6_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter7_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter8_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter9_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter10_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter11_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter12_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter13_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter14_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter15_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter16_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter17_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter18_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter19_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter20_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter21_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter22_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter23_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter24_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter25_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter26_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter27_reg;
reg   [0:0] icmp_ln66_reg_940_pp0_iter28_reg;
wire   [0:0] trunc_ln66_fu_536_p1;
reg   [0:0] trunc_ln66_reg_944;
reg   [0:0] trunc_ln66_reg_944_pp0_iter1_reg;
reg   [9:0] phi_mul_load_reg_956;
wire   [8:0] lshr_ln_fu_548_p4;
reg   [8:0] lshr_ln_reg_965;
wire   [63:0] v25_fu_684_p1;
wire   [63:0] v25_1_fu_689_p1;
wire   [63:0] v25_2_fu_694_p1;
wire   [63:0] v25_3_fu_699_p1;
wire   [63:0] v25_4_fu_773_p1;
wire   [63:0] v25_5_fu_778_p1;
wire   [63:0] v25_6_fu_783_p1;
wire   [63:0] v25_7_fu_788_p1;
wire   [63:0] select_ln69_9_fu_793_p3;
reg   [63:0] select_ln69_9_reg_1134;
wire   [63:0] select_ln69_10_fu_800_p3;
reg   [63:0] select_ln69_10_reg_1139;
wire   [63:0] select_ln69_11_fu_807_p3;
reg   [63:0] select_ln69_11_reg_1144;
wire   [63:0] v25_8_fu_830_p1;
wire   [63:0] v25_9_fu_835_p1;
wire   [63:0] v25_10_fu_839_p1;
wire   [63:0] v25_11_fu_843_p1;
wire   [63:0] v25_12_fu_847_p1;
reg   [63:0] v27_reg_1184;
reg   [63:0] v27_1_reg_1189;
reg   [63:0] v27_1_reg_1189_pp0_iter3_reg;
reg   [63:0] v27_1_reg_1189_pp0_iter4_reg;
reg   [63:0] v27_2_reg_1194;
reg   [63:0] v27_2_reg_1194_pp0_iter3_reg;
reg   [63:0] v27_2_reg_1194_pp0_iter4_reg;
reg   [63:0] v27_2_reg_1194_pp0_iter5_reg;
reg   [63:0] v27_2_reg_1194_pp0_iter6_reg;
reg   [63:0] v27_3_reg_1199;
reg   [63:0] v27_3_reg_1199_pp0_iter3_reg;
reg   [63:0] v27_3_reg_1199_pp0_iter4_reg;
reg   [63:0] v27_3_reg_1199_pp0_iter5_reg;
reg   [63:0] v27_3_reg_1199_pp0_iter6_reg;
reg   [63:0] v27_3_reg_1199_pp0_iter7_reg;
reg   [63:0] v27_3_reg_1199_pp0_iter8_reg;
reg   [63:0] v27_4_reg_1204;
reg   [63:0] v27_4_reg_1204_pp0_iter3_reg;
reg   [63:0] v27_4_reg_1204_pp0_iter4_reg;
reg   [63:0] v27_4_reg_1204_pp0_iter5_reg;
reg   [63:0] v27_4_reg_1204_pp0_iter6_reg;
reg   [63:0] v27_4_reg_1204_pp0_iter7_reg;
reg   [63:0] v27_4_reg_1204_pp0_iter8_reg;
reg   [63:0] v27_4_reg_1204_pp0_iter9_reg;
reg   [63:0] v27_4_reg_1204_pp0_iter10_reg;
reg   [63:0] v27_5_reg_1209;
reg   [63:0] v27_5_reg_1209_pp0_iter3_reg;
reg   [63:0] v27_5_reg_1209_pp0_iter4_reg;
reg   [63:0] v27_5_reg_1209_pp0_iter5_reg;
reg   [63:0] v27_5_reg_1209_pp0_iter6_reg;
reg   [63:0] v27_5_reg_1209_pp0_iter7_reg;
reg   [63:0] v27_5_reg_1209_pp0_iter8_reg;
reg   [63:0] v27_5_reg_1209_pp0_iter9_reg;
reg   [63:0] v27_5_reg_1209_pp0_iter10_reg;
reg   [63:0] v27_5_reg_1209_pp0_iter11_reg;
reg   [63:0] v27_5_reg_1209_pp0_iter12_reg;
reg   [63:0] v27_6_reg_1214;
reg   [63:0] v27_6_reg_1214_pp0_iter3_reg;
reg   [63:0] v27_6_reg_1214_pp0_iter4_reg;
reg   [63:0] v27_6_reg_1214_pp0_iter5_reg;
reg   [63:0] v27_6_reg_1214_pp0_iter6_reg;
reg   [63:0] v27_6_reg_1214_pp0_iter7_reg;
reg   [63:0] v27_6_reg_1214_pp0_iter8_reg;
reg   [63:0] v27_6_reg_1214_pp0_iter9_reg;
reg   [63:0] v27_6_reg_1214_pp0_iter10_reg;
reg   [63:0] v27_6_reg_1214_pp0_iter11_reg;
reg   [63:0] v27_6_reg_1214_pp0_iter12_reg;
reg   [63:0] v27_6_reg_1214_pp0_iter13_reg;
reg   [63:0] v27_6_reg_1214_pp0_iter14_reg;
reg   [63:0] v27_7_reg_1219;
reg   [63:0] v27_7_reg_1219_pp0_iter3_reg;
reg   [63:0] v27_7_reg_1219_pp0_iter4_reg;
reg   [63:0] v27_7_reg_1219_pp0_iter5_reg;
reg   [63:0] v27_7_reg_1219_pp0_iter6_reg;
reg   [63:0] v27_7_reg_1219_pp0_iter7_reg;
reg   [63:0] v27_7_reg_1219_pp0_iter8_reg;
reg   [63:0] v27_7_reg_1219_pp0_iter9_reg;
reg   [63:0] v27_7_reg_1219_pp0_iter10_reg;
reg   [63:0] v27_7_reg_1219_pp0_iter11_reg;
reg   [63:0] v27_7_reg_1219_pp0_iter12_reg;
reg   [63:0] v27_7_reg_1219_pp0_iter13_reg;
reg   [63:0] v27_7_reg_1219_pp0_iter14_reg;
reg   [63:0] v27_7_reg_1219_pp0_iter15_reg;
reg   [63:0] v27_7_reg_1219_pp0_iter16_reg;
reg   [63:0] v27_8_reg_1224;
reg   [63:0] v27_8_reg_1224_pp0_iter3_reg;
reg   [63:0] v27_8_reg_1224_pp0_iter4_reg;
reg   [63:0] v27_8_reg_1224_pp0_iter5_reg;
reg   [63:0] v27_8_reg_1224_pp0_iter6_reg;
reg   [63:0] v27_8_reg_1224_pp0_iter7_reg;
reg   [63:0] v27_8_reg_1224_pp0_iter8_reg;
reg   [63:0] v27_8_reg_1224_pp0_iter9_reg;
reg   [63:0] v27_8_reg_1224_pp0_iter10_reg;
reg   [63:0] v27_8_reg_1224_pp0_iter11_reg;
reg   [63:0] v27_8_reg_1224_pp0_iter12_reg;
reg   [63:0] v27_8_reg_1224_pp0_iter13_reg;
reg   [63:0] v27_8_reg_1224_pp0_iter14_reg;
reg   [63:0] v27_8_reg_1224_pp0_iter15_reg;
reg   [63:0] v27_8_reg_1224_pp0_iter16_reg;
reg   [63:0] v27_8_reg_1224_pp0_iter17_reg;
reg   [63:0] v27_8_reg_1224_pp0_iter18_reg;
reg   [63:0] v27_9_reg_1229;
reg   [63:0] v27_9_reg_1229_pp0_iter3_reg;
reg   [63:0] v27_9_reg_1229_pp0_iter4_reg;
reg   [63:0] v27_9_reg_1229_pp0_iter5_reg;
reg   [63:0] v27_9_reg_1229_pp0_iter6_reg;
reg   [63:0] v27_9_reg_1229_pp0_iter7_reg;
reg   [63:0] v27_9_reg_1229_pp0_iter8_reg;
reg   [63:0] v27_9_reg_1229_pp0_iter9_reg;
reg   [63:0] v27_9_reg_1229_pp0_iter10_reg;
reg   [63:0] v27_9_reg_1229_pp0_iter11_reg;
reg   [63:0] v27_9_reg_1229_pp0_iter12_reg;
reg   [63:0] v27_9_reg_1229_pp0_iter13_reg;
reg   [63:0] v27_9_reg_1229_pp0_iter14_reg;
reg   [63:0] v27_9_reg_1229_pp0_iter15_reg;
reg   [63:0] v27_9_reg_1229_pp0_iter16_reg;
reg   [63:0] v27_9_reg_1229_pp0_iter17_reg;
reg   [63:0] v27_9_reg_1229_pp0_iter18_reg;
reg   [63:0] v27_9_reg_1229_pp0_iter19_reg;
reg   [63:0] v27_9_reg_1229_pp0_iter20_reg;
reg   [63:0] v27_10_reg_1234;
reg   [63:0] v27_10_reg_1234_pp0_iter3_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter4_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter5_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter6_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter7_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter8_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter9_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter10_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter11_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter12_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter13_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter14_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter15_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter16_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter17_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter18_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter19_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter20_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter21_reg;
reg   [63:0] v27_10_reg_1234_pp0_iter22_reg;
reg   [63:0] v27_11_reg_1239;
reg   [63:0] v27_11_reg_1239_pp0_iter3_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter4_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter5_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter6_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter7_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter8_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter9_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter10_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter11_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter12_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter13_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter14_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter15_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter16_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter17_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter18_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter19_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter20_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter21_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter22_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter23_reg;
reg   [63:0] v27_11_reg_1239_pp0_iter24_reg;
reg   [63:0] v27_12_reg_1244;
reg   [63:0] v27_12_reg_1244_pp0_iter4_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter5_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter6_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter7_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter8_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter9_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter10_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter11_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter12_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter13_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter14_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter15_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter16_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter17_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter18_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter19_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter20_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter21_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter22_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter23_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter24_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter25_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter26_reg;
reg   [63:0] v27_12_reg_1244_pp0_iter27_reg;
reg   [63:0] v29_13_reg_1249;
reg   [63:0] v29_14_reg_1254;
reg   [63:0] v29_15_reg_1259;
wire   [63:0] grp_fu_436_p2;
reg   [63:0] v29_16_reg_1264;
reg   [63:0] v29_17_reg_1269;
reg   [63:0] v29_18_reg_1274;
reg   [63:0] v29_19_reg_1279;
reg   [63:0] v29_20_reg_1284;
reg   [63:0] v29_21_reg_1289;
reg   [63:0] v29_22_reg_1294;
reg   [63:0] v29_23_reg_1299;
reg   [63:0] v29_24_reg_1304;
reg   [63:0] v29_reg_1309;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln69_fu_558_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln69_1_fu_580_p1;
wire   [63:0] zext_ln69_2_fu_592_p1;
wire   [63:0] zext_ln69_3_fu_614_p1;
wire   [63:0] zext_ln69_4_fu_625_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln69_5_fu_646_p1;
wire   [63:0] zext_ln69_6_fu_657_p1;
wire   [63:0] zext_ln69_7_fu_678_p1;
wire   [63:0] zext_ln69_8_fu_709_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln69_9_fu_730_p1;
wire   [63:0] zext_ln69_10_fu_741_p1;
wire   [63:0] zext_ln69_11_fu_762_p1;
wire   [63:0] zext_ln69_12_fu_819_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln66_fu_852_p1;
reg   [9:0] phi_mul_fu_98;
wire   [9:0] add_ln69_12_fu_768_p2;
wire    ap_loop_init;
reg   [6:0] v23_fu_102;
wire   [6:0] add_ln66_fu_530_p2;
reg   [6:0] ap_sig_allocacmp_v23_1;
reg    v0_0_ce1_local;
reg   [8:0] v0_0_address1_local;
reg    v0_0_ce0_local;
reg   [8:0] v0_0_address0_local;
reg    v0_1_ce1_local;
reg   [8:0] v0_1_address1_local;
reg    v0_1_ce0_local;
reg   [8:0] v0_1_address0_local;
reg    v20_we0_local;
reg    v20_ce0_local;
reg   [63:0] grp_fu_423_p0;
reg   [63:0] grp_fu_423_p1;
reg   [63:0] grp_fu_428_p0;
reg   [63:0] grp_fu_428_p1;
reg   [63:0] grp_fu_432_p0;
reg   [63:0] grp_fu_432_p1;
reg   [63:0] grp_fu_436_p0;
reg   [63:0] grp_fu_436_p1;
reg   [63:0] grp_fu_440_p0;
reg   [63:0] grp_fu_440_p1;
reg   [63:0] grp_fu_444_p0;
reg   [63:0] grp_fu_444_p1;
reg   [63:0] grp_fu_448_p0;
reg   [63:0] grp_fu_448_p1;
reg   [63:0] grp_fu_452_p0;
reg   [63:0] grp_fu_452_p1;
reg   [0:0] grp_fu_484_p0;
wire   [9:0] add_ln69_fu_564_p2;
wire   [8:0] lshr_ln69_1_fu_570_p4;
wire   [8:0] add_ln69_1_fu_586_p2;
wire   [9:0] add_ln69_2_fu_598_p2;
wire   [8:0] lshr_ln69_2_fu_604_p4;
wire   [8:0] add_ln69_3_fu_620_p2;
wire   [9:0] add_ln69_4_fu_631_p2;
wire   [8:0] lshr_ln69_3_fu_636_p4;
wire   [8:0] add_ln69_5_fu_652_p2;
wire   [9:0] add_ln69_6_fu_663_p2;
wire   [8:0] lshr_ln69_4_fu_668_p4;
wire   [8:0] add_ln69_7_fu_704_p2;
wire   [9:0] add_ln69_8_fu_715_p2;
wire   [8:0] lshr_ln69_5_fu_720_p4;
wire   [8:0] add_ln69_9_fu_736_p2;
wire   [9:0] add_ln69_10_fu_747_p2;
wire   [8:0] lshr_ln69_6_fu_752_p4;
wire   [8:0] add_ln69_11_fu_814_p2;
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
reg    ap_condition_1308;
reg    ap_condition_1312;
reg    ap_condition_1316;
reg    ap_condition_1320;
reg    ap_condition_1324;
reg    ap_condition_1328;
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
#0 phi_mul_fu_98 = 10'd0;
#0 v23_fu_102 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_436_p0),.din1(grp_fu_436_p1),.ce(1'b1),.dout(grp_fu_436_p2));
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
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter28_reg == 1'b1))) begin
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
        if ((ap_loop_init == 1'b1)) begin
            phi_mul_fu_98 <= 10'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            phi_mul_fu_98 <= add_ln69_12_fu_768_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((icmp_ln66_fu_524_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v23_fu_102 <= add_ln66_fu_530_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v23_fu_102 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln66_reg_940 <= icmp_ln66_fu_524_p2;
        icmp_ln66_reg_940_pp0_iter10_reg <= icmp_ln66_reg_940_pp0_iter9_reg;
        icmp_ln66_reg_940_pp0_iter11_reg <= icmp_ln66_reg_940_pp0_iter10_reg;
        icmp_ln66_reg_940_pp0_iter12_reg <= icmp_ln66_reg_940_pp0_iter11_reg;
        icmp_ln66_reg_940_pp0_iter13_reg <= icmp_ln66_reg_940_pp0_iter12_reg;
        icmp_ln66_reg_940_pp0_iter14_reg <= icmp_ln66_reg_940_pp0_iter13_reg;
        icmp_ln66_reg_940_pp0_iter15_reg <= icmp_ln66_reg_940_pp0_iter14_reg;
        icmp_ln66_reg_940_pp0_iter16_reg <= icmp_ln66_reg_940_pp0_iter15_reg;
        icmp_ln66_reg_940_pp0_iter17_reg <= icmp_ln66_reg_940_pp0_iter16_reg;
        icmp_ln66_reg_940_pp0_iter18_reg <= icmp_ln66_reg_940_pp0_iter17_reg;
        icmp_ln66_reg_940_pp0_iter19_reg <= icmp_ln66_reg_940_pp0_iter18_reg;
        icmp_ln66_reg_940_pp0_iter1_reg <= icmp_ln66_reg_940;
        icmp_ln66_reg_940_pp0_iter20_reg <= icmp_ln66_reg_940_pp0_iter19_reg;
        icmp_ln66_reg_940_pp0_iter21_reg <= icmp_ln66_reg_940_pp0_iter20_reg;
        icmp_ln66_reg_940_pp0_iter22_reg <= icmp_ln66_reg_940_pp0_iter21_reg;
        icmp_ln66_reg_940_pp0_iter23_reg <= icmp_ln66_reg_940_pp0_iter22_reg;
        icmp_ln66_reg_940_pp0_iter24_reg <= icmp_ln66_reg_940_pp0_iter23_reg;
        icmp_ln66_reg_940_pp0_iter25_reg <= icmp_ln66_reg_940_pp0_iter24_reg;
        icmp_ln66_reg_940_pp0_iter26_reg <= icmp_ln66_reg_940_pp0_iter25_reg;
        icmp_ln66_reg_940_pp0_iter27_reg <= icmp_ln66_reg_940_pp0_iter26_reg;
        icmp_ln66_reg_940_pp0_iter28_reg <= icmp_ln66_reg_940_pp0_iter27_reg;
        icmp_ln66_reg_940_pp0_iter2_reg <= icmp_ln66_reg_940_pp0_iter1_reg;
        icmp_ln66_reg_940_pp0_iter3_reg <= icmp_ln66_reg_940_pp0_iter2_reg;
        icmp_ln66_reg_940_pp0_iter4_reg <= icmp_ln66_reg_940_pp0_iter3_reg;
        icmp_ln66_reg_940_pp0_iter5_reg <= icmp_ln66_reg_940_pp0_iter4_reg;
        icmp_ln66_reg_940_pp0_iter6_reg <= icmp_ln66_reg_940_pp0_iter5_reg;
        icmp_ln66_reg_940_pp0_iter7_reg <= icmp_ln66_reg_940_pp0_iter6_reg;
        icmp_ln66_reg_940_pp0_iter8_reg <= icmp_ln66_reg_940_pp0_iter7_reg;
        icmp_ln66_reg_940_pp0_iter9_reg <= icmp_ln66_reg_940_pp0_iter8_reg;
        select_ln69_10_reg_1139 <= select_ln69_10_fu_800_p3;
        select_ln69_11_reg_1144 <= select_ln69_11_fu_807_p3;
        select_ln69_9_reg_1134 <= select_ln69_9_fu_793_p3;
        trunc_ln66_reg_944 <= trunc_ln66_fu_536_p1;
        trunc_ln66_reg_944_pp0_iter1_reg <= trunc_ln66_reg_944;
        v23_1_reg_935 <= ap_sig_allocacmp_v23_1;
        v23_1_reg_935_pp0_iter10_reg <= v23_1_reg_935_pp0_iter9_reg;
        v23_1_reg_935_pp0_iter11_reg <= v23_1_reg_935_pp0_iter10_reg;
        v23_1_reg_935_pp0_iter12_reg <= v23_1_reg_935_pp0_iter11_reg;
        v23_1_reg_935_pp0_iter13_reg <= v23_1_reg_935_pp0_iter12_reg;
        v23_1_reg_935_pp0_iter14_reg <= v23_1_reg_935_pp0_iter13_reg;
        v23_1_reg_935_pp0_iter15_reg <= v23_1_reg_935_pp0_iter14_reg;
        v23_1_reg_935_pp0_iter16_reg <= v23_1_reg_935_pp0_iter15_reg;
        v23_1_reg_935_pp0_iter17_reg <= v23_1_reg_935_pp0_iter16_reg;
        v23_1_reg_935_pp0_iter18_reg <= v23_1_reg_935_pp0_iter17_reg;
        v23_1_reg_935_pp0_iter19_reg <= v23_1_reg_935_pp0_iter18_reg;
        v23_1_reg_935_pp0_iter1_reg <= v23_1_reg_935;
        v23_1_reg_935_pp0_iter20_reg <= v23_1_reg_935_pp0_iter19_reg;
        v23_1_reg_935_pp0_iter21_reg <= v23_1_reg_935_pp0_iter20_reg;
        v23_1_reg_935_pp0_iter22_reg <= v23_1_reg_935_pp0_iter21_reg;
        v23_1_reg_935_pp0_iter23_reg <= v23_1_reg_935_pp0_iter22_reg;
        v23_1_reg_935_pp0_iter24_reg <= v23_1_reg_935_pp0_iter23_reg;
        v23_1_reg_935_pp0_iter25_reg <= v23_1_reg_935_pp0_iter24_reg;
        v23_1_reg_935_pp0_iter26_reg <= v23_1_reg_935_pp0_iter25_reg;
        v23_1_reg_935_pp0_iter27_reg <= v23_1_reg_935_pp0_iter26_reg;
        v23_1_reg_935_pp0_iter28_reg <= v23_1_reg_935_pp0_iter27_reg;
        v23_1_reg_935_pp0_iter29_reg <= v23_1_reg_935_pp0_iter28_reg;
        v23_1_reg_935_pp0_iter2_reg <= v23_1_reg_935_pp0_iter1_reg;
        v23_1_reg_935_pp0_iter3_reg <= v23_1_reg_935_pp0_iter2_reg;
        v23_1_reg_935_pp0_iter4_reg <= v23_1_reg_935_pp0_iter3_reg;
        v23_1_reg_935_pp0_iter5_reg <= v23_1_reg_935_pp0_iter4_reg;
        v23_1_reg_935_pp0_iter6_reg <= v23_1_reg_935_pp0_iter5_reg;
        v23_1_reg_935_pp0_iter7_reg <= v23_1_reg_935_pp0_iter6_reg;
        v23_1_reg_935_pp0_iter8_reg <= v23_1_reg_935_pp0_iter7_reg;
        v23_1_reg_935_pp0_iter9_reg <= v23_1_reg_935_pp0_iter8_reg;
        v27_12_reg_1244_pp0_iter10_reg <= v27_12_reg_1244_pp0_iter9_reg;
        v27_12_reg_1244_pp0_iter11_reg <= v27_12_reg_1244_pp0_iter10_reg;
        v27_12_reg_1244_pp0_iter12_reg <= v27_12_reg_1244_pp0_iter11_reg;
        v27_12_reg_1244_pp0_iter13_reg <= v27_12_reg_1244_pp0_iter12_reg;
        v27_12_reg_1244_pp0_iter14_reg <= v27_12_reg_1244_pp0_iter13_reg;
        v27_12_reg_1244_pp0_iter15_reg <= v27_12_reg_1244_pp0_iter14_reg;
        v27_12_reg_1244_pp0_iter16_reg <= v27_12_reg_1244_pp0_iter15_reg;
        v27_12_reg_1244_pp0_iter17_reg <= v27_12_reg_1244_pp0_iter16_reg;
        v27_12_reg_1244_pp0_iter18_reg <= v27_12_reg_1244_pp0_iter17_reg;
        v27_12_reg_1244_pp0_iter19_reg <= v27_12_reg_1244_pp0_iter18_reg;
        v27_12_reg_1244_pp0_iter20_reg <= v27_12_reg_1244_pp0_iter19_reg;
        v27_12_reg_1244_pp0_iter21_reg <= v27_12_reg_1244_pp0_iter20_reg;
        v27_12_reg_1244_pp0_iter22_reg <= v27_12_reg_1244_pp0_iter21_reg;
        v27_12_reg_1244_pp0_iter23_reg <= v27_12_reg_1244_pp0_iter22_reg;
        v27_12_reg_1244_pp0_iter24_reg <= v27_12_reg_1244_pp0_iter23_reg;
        v27_12_reg_1244_pp0_iter25_reg <= v27_12_reg_1244_pp0_iter24_reg;
        v27_12_reg_1244_pp0_iter26_reg <= v27_12_reg_1244_pp0_iter25_reg;
        v27_12_reg_1244_pp0_iter27_reg <= v27_12_reg_1244_pp0_iter26_reg;
        v27_12_reg_1244_pp0_iter4_reg <= v27_12_reg_1244;
        v27_12_reg_1244_pp0_iter5_reg <= v27_12_reg_1244_pp0_iter4_reg;
        v27_12_reg_1244_pp0_iter6_reg <= v27_12_reg_1244_pp0_iter5_reg;
        v27_12_reg_1244_pp0_iter7_reg <= v27_12_reg_1244_pp0_iter6_reg;
        v27_12_reg_1244_pp0_iter8_reg <= v27_12_reg_1244_pp0_iter7_reg;
        v27_12_reg_1244_pp0_iter9_reg <= v27_12_reg_1244_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        lshr_ln_reg_965 <= {{phi_mul_fu_98[9:1]}};
        phi_mul_load_reg_956 <= phi_mul_fu_98;
        v27_1_reg_1189_pp0_iter3_reg <= v27_1_reg_1189;
        v27_1_reg_1189_pp0_iter4_reg <= v27_1_reg_1189_pp0_iter3_reg;
        v27_2_reg_1194_pp0_iter3_reg <= v27_2_reg_1194;
        v27_2_reg_1194_pp0_iter4_reg <= v27_2_reg_1194_pp0_iter3_reg;
        v27_2_reg_1194_pp0_iter5_reg <= v27_2_reg_1194_pp0_iter4_reg;
        v27_2_reg_1194_pp0_iter6_reg <= v27_2_reg_1194_pp0_iter5_reg;
        v27_3_reg_1199_pp0_iter3_reg <= v27_3_reg_1199;
        v27_3_reg_1199_pp0_iter4_reg <= v27_3_reg_1199_pp0_iter3_reg;
        v27_3_reg_1199_pp0_iter5_reg <= v27_3_reg_1199_pp0_iter4_reg;
        v27_3_reg_1199_pp0_iter6_reg <= v27_3_reg_1199_pp0_iter5_reg;
        v27_3_reg_1199_pp0_iter7_reg <= v27_3_reg_1199_pp0_iter6_reg;
        v27_3_reg_1199_pp0_iter8_reg <= v27_3_reg_1199_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        reg_491 <= grp_fu_456_p3;
        reg_495 <= grp_fu_463_p3;
        reg_499 <= grp_fu_470_p3;
        reg_503 <= grp_fu_477_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        reg_507 <= grp_fu_484_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        v27_10_reg_1234 <= grp_fu_4945_p_dout0;
        v27_11_reg_1239 <= grp_fu_4949_p_dout0;
        v27_8_reg_1224 <= grp_fu_2186_p_dout0;
        v27_9_reg_1229 <= grp_fu_2190_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        v27_10_reg_1234_pp0_iter10_reg <= v27_10_reg_1234_pp0_iter9_reg;
        v27_10_reg_1234_pp0_iter11_reg <= v27_10_reg_1234_pp0_iter10_reg;
        v27_10_reg_1234_pp0_iter12_reg <= v27_10_reg_1234_pp0_iter11_reg;
        v27_10_reg_1234_pp0_iter13_reg <= v27_10_reg_1234_pp0_iter12_reg;
        v27_10_reg_1234_pp0_iter14_reg <= v27_10_reg_1234_pp0_iter13_reg;
        v27_10_reg_1234_pp0_iter15_reg <= v27_10_reg_1234_pp0_iter14_reg;
        v27_10_reg_1234_pp0_iter16_reg <= v27_10_reg_1234_pp0_iter15_reg;
        v27_10_reg_1234_pp0_iter17_reg <= v27_10_reg_1234_pp0_iter16_reg;
        v27_10_reg_1234_pp0_iter18_reg <= v27_10_reg_1234_pp0_iter17_reg;
        v27_10_reg_1234_pp0_iter19_reg <= v27_10_reg_1234_pp0_iter18_reg;
        v27_10_reg_1234_pp0_iter20_reg <= v27_10_reg_1234_pp0_iter19_reg;
        v27_10_reg_1234_pp0_iter21_reg <= v27_10_reg_1234_pp0_iter20_reg;
        v27_10_reg_1234_pp0_iter22_reg <= v27_10_reg_1234_pp0_iter21_reg;
        v27_10_reg_1234_pp0_iter3_reg <= v27_10_reg_1234;
        v27_10_reg_1234_pp0_iter4_reg <= v27_10_reg_1234_pp0_iter3_reg;
        v27_10_reg_1234_pp0_iter5_reg <= v27_10_reg_1234_pp0_iter4_reg;
        v27_10_reg_1234_pp0_iter6_reg <= v27_10_reg_1234_pp0_iter5_reg;
        v27_10_reg_1234_pp0_iter7_reg <= v27_10_reg_1234_pp0_iter6_reg;
        v27_10_reg_1234_pp0_iter8_reg <= v27_10_reg_1234_pp0_iter7_reg;
        v27_10_reg_1234_pp0_iter9_reg <= v27_10_reg_1234_pp0_iter8_reg;
        v27_11_reg_1239_pp0_iter10_reg <= v27_11_reg_1239_pp0_iter9_reg;
        v27_11_reg_1239_pp0_iter11_reg <= v27_11_reg_1239_pp0_iter10_reg;
        v27_11_reg_1239_pp0_iter12_reg <= v27_11_reg_1239_pp0_iter11_reg;
        v27_11_reg_1239_pp0_iter13_reg <= v27_11_reg_1239_pp0_iter12_reg;
        v27_11_reg_1239_pp0_iter14_reg <= v27_11_reg_1239_pp0_iter13_reg;
        v27_11_reg_1239_pp0_iter15_reg <= v27_11_reg_1239_pp0_iter14_reg;
        v27_11_reg_1239_pp0_iter16_reg <= v27_11_reg_1239_pp0_iter15_reg;
        v27_11_reg_1239_pp0_iter17_reg <= v27_11_reg_1239_pp0_iter16_reg;
        v27_11_reg_1239_pp0_iter18_reg <= v27_11_reg_1239_pp0_iter17_reg;
        v27_11_reg_1239_pp0_iter19_reg <= v27_11_reg_1239_pp0_iter18_reg;
        v27_11_reg_1239_pp0_iter20_reg <= v27_11_reg_1239_pp0_iter19_reg;
        v27_11_reg_1239_pp0_iter21_reg <= v27_11_reg_1239_pp0_iter20_reg;
        v27_11_reg_1239_pp0_iter22_reg <= v27_11_reg_1239_pp0_iter21_reg;
        v27_11_reg_1239_pp0_iter23_reg <= v27_11_reg_1239_pp0_iter22_reg;
        v27_11_reg_1239_pp0_iter24_reg <= v27_11_reg_1239_pp0_iter23_reg;
        v27_11_reg_1239_pp0_iter3_reg <= v27_11_reg_1239;
        v27_11_reg_1239_pp0_iter4_reg <= v27_11_reg_1239_pp0_iter3_reg;
        v27_11_reg_1239_pp0_iter5_reg <= v27_11_reg_1239_pp0_iter4_reg;
        v27_11_reg_1239_pp0_iter6_reg <= v27_11_reg_1239_pp0_iter5_reg;
        v27_11_reg_1239_pp0_iter7_reg <= v27_11_reg_1239_pp0_iter6_reg;
        v27_11_reg_1239_pp0_iter8_reg <= v27_11_reg_1239_pp0_iter7_reg;
        v27_11_reg_1239_pp0_iter9_reg <= v27_11_reg_1239_pp0_iter8_reg;
        v27_8_reg_1224_pp0_iter10_reg <= v27_8_reg_1224_pp0_iter9_reg;
        v27_8_reg_1224_pp0_iter11_reg <= v27_8_reg_1224_pp0_iter10_reg;
        v27_8_reg_1224_pp0_iter12_reg <= v27_8_reg_1224_pp0_iter11_reg;
        v27_8_reg_1224_pp0_iter13_reg <= v27_8_reg_1224_pp0_iter12_reg;
        v27_8_reg_1224_pp0_iter14_reg <= v27_8_reg_1224_pp0_iter13_reg;
        v27_8_reg_1224_pp0_iter15_reg <= v27_8_reg_1224_pp0_iter14_reg;
        v27_8_reg_1224_pp0_iter16_reg <= v27_8_reg_1224_pp0_iter15_reg;
        v27_8_reg_1224_pp0_iter17_reg <= v27_8_reg_1224_pp0_iter16_reg;
        v27_8_reg_1224_pp0_iter18_reg <= v27_8_reg_1224_pp0_iter17_reg;
        v27_8_reg_1224_pp0_iter3_reg <= v27_8_reg_1224;
        v27_8_reg_1224_pp0_iter4_reg <= v27_8_reg_1224_pp0_iter3_reg;
        v27_8_reg_1224_pp0_iter5_reg <= v27_8_reg_1224_pp0_iter4_reg;
        v27_8_reg_1224_pp0_iter6_reg <= v27_8_reg_1224_pp0_iter5_reg;
        v27_8_reg_1224_pp0_iter7_reg <= v27_8_reg_1224_pp0_iter6_reg;
        v27_8_reg_1224_pp0_iter8_reg <= v27_8_reg_1224_pp0_iter7_reg;
        v27_8_reg_1224_pp0_iter9_reg <= v27_8_reg_1224_pp0_iter8_reg;
        v27_9_reg_1229_pp0_iter10_reg <= v27_9_reg_1229_pp0_iter9_reg;
        v27_9_reg_1229_pp0_iter11_reg <= v27_9_reg_1229_pp0_iter10_reg;
        v27_9_reg_1229_pp0_iter12_reg <= v27_9_reg_1229_pp0_iter11_reg;
        v27_9_reg_1229_pp0_iter13_reg <= v27_9_reg_1229_pp0_iter12_reg;
        v27_9_reg_1229_pp0_iter14_reg <= v27_9_reg_1229_pp0_iter13_reg;
        v27_9_reg_1229_pp0_iter15_reg <= v27_9_reg_1229_pp0_iter14_reg;
        v27_9_reg_1229_pp0_iter16_reg <= v27_9_reg_1229_pp0_iter15_reg;
        v27_9_reg_1229_pp0_iter17_reg <= v27_9_reg_1229_pp0_iter16_reg;
        v27_9_reg_1229_pp0_iter18_reg <= v27_9_reg_1229_pp0_iter17_reg;
        v27_9_reg_1229_pp0_iter19_reg <= v27_9_reg_1229_pp0_iter18_reg;
        v27_9_reg_1229_pp0_iter20_reg <= v27_9_reg_1229_pp0_iter19_reg;
        v27_9_reg_1229_pp0_iter3_reg <= v27_9_reg_1229;
        v27_9_reg_1229_pp0_iter4_reg <= v27_9_reg_1229_pp0_iter3_reg;
        v27_9_reg_1229_pp0_iter5_reg <= v27_9_reg_1229_pp0_iter4_reg;
        v27_9_reg_1229_pp0_iter6_reg <= v27_9_reg_1229_pp0_iter5_reg;
        v27_9_reg_1229_pp0_iter7_reg <= v27_9_reg_1229_pp0_iter6_reg;
        v27_9_reg_1229_pp0_iter8_reg <= v27_9_reg_1229_pp0_iter7_reg;
        v27_9_reg_1229_pp0_iter9_reg <= v27_9_reg_1229_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v27_12_reg_1244 <= grp_fu_2186_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        v27_1_reg_1189 <= grp_fu_2190_p_dout0;
        v27_2_reg_1194 <= grp_fu_4945_p_dout0;
        v27_3_reg_1199 <= grp_fu_4949_p_dout0;
        v27_reg_1184 <= grp_fu_2186_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        v27_4_reg_1204 <= grp_fu_2186_p_dout0;
        v27_5_reg_1209 <= grp_fu_2190_p_dout0;
        v27_6_reg_1214 <= grp_fu_4945_p_dout0;
        v27_7_reg_1219 <= grp_fu_4949_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        v27_4_reg_1204_pp0_iter10_reg <= v27_4_reg_1204_pp0_iter9_reg;
        v27_4_reg_1204_pp0_iter3_reg <= v27_4_reg_1204;
        v27_4_reg_1204_pp0_iter4_reg <= v27_4_reg_1204_pp0_iter3_reg;
        v27_4_reg_1204_pp0_iter5_reg <= v27_4_reg_1204_pp0_iter4_reg;
        v27_4_reg_1204_pp0_iter6_reg <= v27_4_reg_1204_pp0_iter5_reg;
        v27_4_reg_1204_pp0_iter7_reg <= v27_4_reg_1204_pp0_iter6_reg;
        v27_4_reg_1204_pp0_iter8_reg <= v27_4_reg_1204_pp0_iter7_reg;
        v27_4_reg_1204_pp0_iter9_reg <= v27_4_reg_1204_pp0_iter8_reg;
        v27_5_reg_1209_pp0_iter10_reg <= v27_5_reg_1209_pp0_iter9_reg;
        v27_5_reg_1209_pp0_iter11_reg <= v27_5_reg_1209_pp0_iter10_reg;
        v27_5_reg_1209_pp0_iter12_reg <= v27_5_reg_1209_pp0_iter11_reg;
        v27_5_reg_1209_pp0_iter3_reg <= v27_5_reg_1209;
        v27_5_reg_1209_pp0_iter4_reg <= v27_5_reg_1209_pp0_iter3_reg;
        v27_5_reg_1209_pp0_iter5_reg <= v27_5_reg_1209_pp0_iter4_reg;
        v27_5_reg_1209_pp0_iter6_reg <= v27_5_reg_1209_pp0_iter5_reg;
        v27_5_reg_1209_pp0_iter7_reg <= v27_5_reg_1209_pp0_iter6_reg;
        v27_5_reg_1209_pp0_iter8_reg <= v27_5_reg_1209_pp0_iter7_reg;
        v27_5_reg_1209_pp0_iter9_reg <= v27_5_reg_1209_pp0_iter8_reg;
        v27_6_reg_1214_pp0_iter10_reg <= v27_6_reg_1214_pp0_iter9_reg;
        v27_6_reg_1214_pp0_iter11_reg <= v27_6_reg_1214_pp0_iter10_reg;
        v27_6_reg_1214_pp0_iter12_reg <= v27_6_reg_1214_pp0_iter11_reg;
        v27_6_reg_1214_pp0_iter13_reg <= v27_6_reg_1214_pp0_iter12_reg;
        v27_6_reg_1214_pp0_iter14_reg <= v27_6_reg_1214_pp0_iter13_reg;
        v27_6_reg_1214_pp0_iter3_reg <= v27_6_reg_1214;
        v27_6_reg_1214_pp0_iter4_reg <= v27_6_reg_1214_pp0_iter3_reg;
        v27_6_reg_1214_pp0_iter5_reg <= v27_6_reg_1214_pp0_iter4_reg;
        v27_6_reg_1214_pp0_iter6_reg <= v27_6_reg_1214_pp0_iter5_reg;
        v27_6_reg_1214_pp0_iter7_reg <= v27_6_reg_1214_pp0_iter6_reg;
        v27_6_reg_1214_pp0_iter8_reg <= v27_6_reg_1214_pp0_iter7_reg;
        v27_6_reg_1214_pp0_iter9_reg <= v27_6_reg_1214_pp0_iter8_reg;
        v27_7_reg_1219_pp0_iter10_reg <= v27_7_reg_1219_pp0_iter9_reg;
        v27_7_reg_1219_pp0_iter11_reg <= v27_7_reg_1219_pp0_iter10_reg;
        v27_7_reg_1219_pp0_iter12_reg <= v27_7_reg_1219_pp0_iter11_reg;
        v27_7_reg_1219_pp0_iter13_reg <= v27_7_reg_1219_pp0_iter12_reg;
        v27_7_reg_1219_pp0_iter14_reg <= v27_7_reg_1219_pp0_iter13_reg;
        v27_7_reg_1219_pp0_iter15_reg <= v27_7_reg_1219_pp0_iter14_reg;
        v27_7_reg_1219_pp0_iter16_reg <= v27_7_reg_1219_pp0_iter15_reg;
        v27_7_reg_1219_pp0_iter3_reg <= v27_7_reg_1219;
        v27_7_reg_1219_pp0_iter4_reg <= v27_7_reg_1219_pp0_iter3_reg;
        v27_7_reg_1219_pp0_iter5_reg <= v27_7_reg_1219_pp0_iter4_reg;
        v27_7_reg_1219_pp0_iter6_reg <= v27_7_reg_1219_pp0_iter5_reg;
        v27_7_reg_1219_pp0_iter7_reg <= v27_7_reg_1219_pp0_iter6_reg;
        v27_7_reg_1219_pp0_iter8_reg <= v27_7_reg_1219_pp0_iter7_reg;
        v27_7_reg_1219_pp0_iter9_reg <= v27_7_reg_1219_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        v29_13_reg_1249 <= grp_fu_2178_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        v29_14_reg_1254 <= grp_fu_2182_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        v29_15_reg_1259 <= grp_fu_4941_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        v29_16_reg_1264 <= grp_fu_436_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        v29_17_reg_1269 <= grp_fu_2178_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        v29_18_reg_1274 <= grp_fu_2182_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        v29_19_reg_1279 <= grp_fu_4941_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        v29_20_reg_1284 <= grp_fu_436_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        v29_21_reg_1289 <= grp_fu_2178_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        v29_22_reg_1294 <= grp_fu_2182_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter24 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        v29_23_reg_1299 <= grp_fu_4941_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter26 == 1'b1))) begin
        v29_24_reg_1304 <= grp_fu_436_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter29 == 1'b1))) begin
        v29_reg_1309 <= grp_fu_2178_p_dout0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln66_reg_940 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln66_reg_940_pp0_iter28_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter28 == 1'b1))) begin
        ap_condition_exit_pp0_iter28_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter28_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter28_reg == 1'b1))) begin
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
        ap_sig_allocacmp_v23_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v23_1 = v23_fu_102;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter27 == 1'b1))) begin
        grp_fu_423_p0 = v29_24_reg_1304;
    end else if (((ap_enable_reg_pp0_iter19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_423_p0 = v29_20_reg_1284;
    end else if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_423_p0 = v29_16_reg_1264;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_423_p0 = v27_reg_1184;
    end else begin
        grp_fu_423_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter27 == 1'b1))) begin
        grp_fu_423_p1 = v27_12_reg_1244_pp0_iter27_reg;
    end else if (((ap_enable_reg_pp0_iter19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_423_p1 = v27_8_reg_1224_pp0_iter18_reg;
    end else if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_423_p1 = v27_4_reg_1204_pp0_iter10_reg;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_423_p1 = 64'd0;
    end else begin
        grp_fu_423_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_428_p0 = v29_21_reg_1289;
    end else if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_428_p0 = v29_17_reg_1269;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_428_p0 = v29_13_reg_1249;
    end else begin
        grp_fu_428_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_428_p1 = v27_9_reg_1229_pp0_iter20_reg;
    end else if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_428_p1 = v27_5_reg_1209_pp0_iter12_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_428_p1 = v27_1_reg_1189_pp0_iter4_reg;
    end else begin
        grp_fu_428_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_432_p0 = v29_22_reg_1294;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_432_p0 = v29_18_reg_1274;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_432_p0 = v29_14_reg_1254;
    end else begin
        grp_fu_432_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_432_p1 = v27_10_reg_1234_pp0_iter22_reg;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_432_p1 = v27_6_reg_1214_pp0_iter14_reg;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_432_p1 = v27_2_reg_1194_pp0_iter6_reg;
    end else begin
        grp_fu_432_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_436_p0 = v29_23_reg_1299;
    end else if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_436_p0 = v29_19_reg_1279;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_436_p0 = v29_15_reg_1259;
    end else begin
        grp_fu_436_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_436_p1 = v27_11_reg_1239_pp0_iter24_reg;
    end else if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_436_p1 = v27_7_reg_1219_pp0_iter16_reg;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_436_p1 = v27_3_reg_1199_pp0_iter8_reg;
    end else begin
        grp_fu_436_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_440_p0 = v25_12_fu_847_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_440_p0 = v25_8_fu_830_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_440_p0 = v25_4_fu_773_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_440_p0 = v25_fu_684_p1;
    end else begin
        grp_fu_440_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_440_p1 = v26_12;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_440_p1 = v26_8;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_440_p1 = v26_4;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_440_p1 = v26;
    end else begin
        grp_fu_440_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_444_p0 = v25_9_fu_835_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_444_p0 = v25_5_fu_778_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_444_p0 = v25_1_fu_689_p1;
    end else begin
        grp_fu_444_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_444_p1 = v26_9;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_444_p1 = v26_5;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_444_p1 = v26_1;
    end else begin
        grp_fu_444_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_448_p0 = v25_10_fu_839_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_448_p0 = v25_6_fu_783_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_448_p0 = v25_2_fu_694_p1;
    end else begin
        grp_fu_448_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_448_p1 = v26_10;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_448_p1 = v26_6;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_448_p1 = v26_2;
    end else begin
        grp_fu_448_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_452_p0 = v25_11_fu_843_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_452_p0 = v25_7_fu_788_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_452_p0 = v25_3_fu_699_p1;
    end else begin
        grp_fu_452_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_452_p1 = v26_11;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_452_p1 = v26_7;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_452_p1 = v26_3;
    end else begin
        grp_fu_452_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            grp_fu_484_p0 = trunc_ln66_reg_944_pp0_iter1_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            grp_fu_484_p0 = trunc_ln66_reg_944;
        end else begin
            grp_fu_484_p0 = 'bx;
        end
    end else begin
        grp_fu_484_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        v0_0_address0_local = zext_ln69_12_fu_819_p1;
    end else if (((trunc_ln66_reg_944 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage3))) begin
        v0_0_address0_local = zext_ln69_9_fu_730_p1;
    end else if (((trunc_ln66_reg_944 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage3))) begin
        v0_0_address0_local = zext_ln69_8_fu_709_p1;
    end else if (((trunc_ln66_reg_944 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage2))) begin
        v0_0_address0_local = zext_ln69_5_fu_646_p1;
    end else if (((trunc_ln66_reg_944 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage2))) begin
        v0_0_address0_local = zext_ln69_4_fu_625_p1;
    end else if (((trunc_ln66_reg_944 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage1))) begin
        v0_0_address0_local = zext_ln69_3_fu_614_p1;
    end else if (((trunc_ln66_reg_944 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage1))) begin
        v0_0_address0_local = zext_ln69_2_fu_592_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln66_reg_940 == 1'd0))) begin
        if ((1'b1 == ap_condition_1328)) begin
            v0_0_address1_local = zext_ln69_11_fu_762_p1;
        end else if ((1'b1 == ap_condition_1324)) begin
            v0_0_address1_local = zext_ln69_10_fu_741_p1;
        end else if ((1'b1 == ap_condition_1320)) begin
            v0_0_address1_local = zext_ln69_7_fu_678_p1;
        end else if ((1'b1 == ap_condition_1316)) begin
            v0_0_address1_local = zext_ln69_6_fu_657_p1;
        end else if ((1'b1 == ap_condition_1312)) begin
            v0_0_address1_local = zext_ln69_1_fu_580_p1;
        end else if ((1'b1 == ap_condition_1308)) begin
            v0_0_address1_local = zext_ln69_fu_558_p1;
        end else begin
            v0_0_address1_local = 'bx;
        end
    end else begin
        v0_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln66_reg_944 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001)) | ((trunc_ln66_reg_944 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001)) | ((trunc_ln66_reg_944 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001)) | ((trunc_ln66_reg_944 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001)) | ((trunc_ln66_reg_944 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001)) | ((trunc_ln66_reg_944 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln66_reg_944 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001)) | ((trunc_ln66_reg_944 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001)) | ((trunc_ln66_reg_944 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001)) | ((trunc_ln66_reg_944 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001)) | ((trunc_ln66_reg_944 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001)) | ((trunc_ln66_reg_944 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        v0_0_ce1_local = 1'b1;
    end else begin
        v0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        v0_1_address0_local = zext_ln69_12_fu_819_p1;
    end else if (((trunc_ln66_reg_944 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage3))) begin
        v0_1_address0_local = zext_ln69_9_fu_730_p1;
    end else if (((trunc_ln66_reg_944 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage3))) begin
        v0_1_address0_local = zext_ln69_8_fu_709_p1;
    end else if (((trunc_ln66_reg_944 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage2))) begin
        v0_1_address0_local = zext_ln69_5_fu_646_p1;
    end else if (((trunc_ln66_reg_944 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage2))) begin
        v0_1_address0_local = zext_ln69_4_fu_625_p1;
    end else if (((trunc_ln66_reg_944 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage1))) begin
        v0_1_address0_local = zext_ln69_3_fu_614_p1;
    end else if (((trunc_ln66_reg_944 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage1))) begin
        v0_1_address0_local = zext_ln69_2_fu_592_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln66_reg_940 == 1'd0))) begin
        if ((1'b1 == ap_condition_1324)) begin
            v0_1_address1_local = zext_ln69_11_fu_762_p1;
        end else if ((1'b1 == ap_condition_1328)) begin
            v0_1_address1_local = zext_ln69_10_fu_741_p1;
        end else if ((1'b1 == ap_condition_1316)) begin
            v0_1_address1_local = zext_ln69_7_fu_678_p1;
        end else if ((1'b1 == ap_condition_1320)) begin
            v0_1_address1_local = zext_ln69_6_fu_657_p1;
        end else if ((1'b1 == ap_condition_1308)) begin
            v0_1_address1_local = zext_ln69_1_fu_580_p1;
        end else if ((1'b1 == ap_condition_1312)) begin
            v0_1_address1_local = zext_ln69_fu_558_p1;
        end else begin
            v0_1_address1_local = 'bx;
        end
    end else begin
        v0_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln66_reg_944 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001)) | ((trunc_ln66_reg_944 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001)) | ((trunc_ln66_reg_944 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001)) | ((trunc_ln66_reg_944 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001)) | ((trunc_ln66_reg_944 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001)) | ((trunc_ln66_reg_944 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((trunc_ln66_reg_944 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001)) | ((trunc_ln66_reg_944 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001)) | ((trunc_ln66_reg_944 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001)) | ((trunc_ln66_reg_944 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001)) | ((trunc_ln66_reg_944 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001)) | ((trunc_ln66_reg_944 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln66_reg_940 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        v0_1_ce1_local = 1'b1;
    end else begin
        v0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter29 == 1'b1))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter29 == 1'b1))) begin
        v20_we0_local = 1'b1;
    end else begin
        v20_we0_local = 1'b0;
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
assign add_ln66_fu_530_p2 = (ap_sig_allocacmp_v23_1 + 7'd1);
assign add_ln69_10_fu_747_p2 = (phi_mul_load_reg_956 + 10'd11);
assign add_ln69_11_fu_814_p2 = (lshr_ln_reg_965 + 9'd6);
assign add_ln69_12_fu_768_p2 = (phi_mul_load_reg_956 + 10'd13);
assign add_ln69_1_fu_586_p2 = (lshr_ln_fu_548_p4 + 9'd1);
assign add_ln69_2_fu_598_p2 = (phi_mul_fu_98 + 10'd3);
assign add_ln69_3_fu_620_p2 = (lshr_ln_reg_965 + 9'd2);
assign add_ln69_4_fu_631_p2 = (phi_mul_load_reg_956 + 10'd5);
assign add_ln69_5_fu_652_p2 = (lshr_ln_reg_965 + 9'd3);
assign add_ln69_6_fu_663_p2 = (phi_mul_load_reg_956 + 10'd7);
assign add_ln69_7_fu_704_p2 = (lshr_ln_reg_965 + 9'd4);
assign add_ln69_8_fu_715_p2 = (phi_mul_load_reg_956 + 10'd9);
assign add_ln69_9_fu_736_p2 = (lshr_ln_reg_965 + 9'd5);
assign add_ln69_fu_564_p2 = (phi_mul_fu_98 + 10'd1);
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
    ap_condition_1308 = ((trunc_ln66_reg_944 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1));
end
always @ (*) begin
    ap_condition_1312 = ((trunc_ln66_reg_944 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1));
end
always @ (*) begin
    ap_condition_1316 = ((trunc_ln66_reg_944 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1320 = ((trunc_ln66_reg_944 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1324 = ((trunc_ln66_reg_944 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3));
end
always @ (*) begin
    ap_condition_1328 = ((trunc_ln66_reg_944 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_2178_p_ce = 1'b1;
assign grp_fu_2178_p_din0 = grp_fu_423_p0;
assign grp_fu_2178_p_din1 = grp_fu_423_p1;
assign grp_fu_2178_p_opcode = 2'd0;
assign grp_fu_2182_p_ce = 1'b1;
assign grp_fu_2182_p_din0 = grp_fu_428_p0;
assign grp_fu_2182_p_din1 = grp_fu_428_p1;
assign grp_fu_2182_p_opcode = 2'd0;
assign grp_fu_2186_p_ce = 1'b1;
assign grp_fu_2186_p_din0 = grp_fu_440_p0;
assign grp_fu_2186_p_din1 = grp_fu_440_p1;
assign grp_fu_2190_p_ce = 1'b1;
assign grp_fu_2190_p_din0 = grp_fu_444_p0;
assign grp_fu_2190_p_din1 = grp_fu_444_p1;
assign grp_fu_456_p3 = ((trunc_ln66_reg_944[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign grp_fu_463_p3 = ((trunc_ln66_reg_944[0:0] == 1'b1) ? v0_0_q1 : v0_1_q1);
assign grp_fu_470_p3 = ((trunc_ln66_reg_944[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign grp_fu_477_p3 = ((trunc_ln66_reg_944[0:0] == 1'b1) ? v0_0_q0 : v0_1_q0);
assign grp_fu_484_p3 = ((grp_fu_484_p0[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign grp_fu_4941_p_ce = 1'b1;
assign grp_fu_4941_p_din0 = grp_fu_432_p0;
assign grp_fu_4941_p_din1 = grp_fu_432_p1;
assign grp_fu_4941_p_opcode = 2'd0;
assign grp_fu_4945_p_ce = 1'b1;
assign grp_fu_4945_p_din0 = grp_fu_448_p0;
assign grp_fu_4945_p_din1 = grp_fu_448_p1;
assign grp_fu_4949_p_ce = 1'b1;
assign grp_fu_4949_p_din0 = grp_fu_452_p0;
assign grp_fu_4949_p_din1 = grp_fu_452_p1;
assign icmp_ln66_fu_524_p2 = ((ap_sig_allocacmp_v23_1 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln69_1_fu_570_p4 = {{add_ln69_fu_564_p2[9:1]}};
assign lshr_ln69_2_fu_604_p4 = {{add_ln69_2_fu_598_p2[9:1]}};
assign lshr_ln69_3_fu_636_p4 = {{add_ln69_4_fu_631_p2[9:1]}};
assign lshr_ln69_4_fu_668_p4 = {{add_ln69_6_fu_663_p2[9:1]}};
assign lshr_ln69_5_fu_720_p4 = {{add_ln69_8_fu_715_p2[9:1]}};
assign lshr_ln69_6_fu_752_p4 = {{add_ln69_10_fu_747_p2[9:1]}};
assign lshr_ln_fu_548_p4 = {{phi_mul_fu_98[9:1]}};
assign select_ln69_10_fu_800_p3 = ((trunc_ln66_reg_944[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign select_ln69_11_fu_807_p3 = ((trunc_ln66_reg_944[0:0] == 1'b1) ? v0_0_q1 : v0_1_q1);
assign select_ln69_9_fu_793_p3 = ((trunc_ln66_reg_944[0:0] == 1'b1) ? v0_0_q0 : v0_1_q0);
assign trunc_ln66_fu_536_p1 = ap_sig_allocacmp_v23_1[0:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_address1 = v0_0_address1_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_address1 = v0_1_address1_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v20_address0 = zext_ln66_fu_852_p1;
assign v20_ce0 = v20_ce0_local;
assign v20_d0 = v29_reg_1309;
assign v20_we0 = v20_we0_local;
assign v25_10_fu_839_p1 = select_ln69_10_reg_1139;
assign v25_11_fu_843_p1 = select_ln69_11_reg_1144;
assign v25_12_fu_847_p1 = reg_507;
assign v25_1_fu_689_p1 = reg_495;
assign v25_2_fu_694_p1 = reg_499;
assign v25_3_fu_699_p1 = reg_503;
assign v25_4_fu_773_p1 = reg_499;
assign v25_5_fu_778_p1 = reg_503;
assign v25_6_fu_783_p1 = reg_491;
assign v25_7_fu_788_p1 = reg_495;
assign v25_8_fu_830_p1 = reg_507;
assign v25_9_fu_835_p1 = select_ln69_9_reg_1134;
assign v25_fu_684_p1 = reg_491;
assign zext_ln66_fu_852_p1 = v23_1_reg_935_pp0_iter29_reg;
assign zext_ln69_10_fu_741_p1 = add_ln69_9_fu_736_p2;
assign zext_ln69_11_fu_762_p1 = lshr_ln69_6_fu_752_p4;
assign zext_ln69_12_fu_819_p1 = add_ln69_11_fu_814_p2;
assign zext_ln69_1_fu_580_p1 = lshr_ln69_1_fu_570_p4;
assign zext_ln69_2_fu_592_p1 = add_ln69_1_fu_586_p2;
assign zext_ln69_3_fu_614_p1 = lshr_ln69_2_fu_604_p4;
assign zext_ln69_4_fu_625_p1 = add_ln69_3_fu_620_p2;
assign zext_ln69_5_fu_646_p1 = lshr_ln69_3_fu_636_p4;
assign zext_ln69_6_fu_657_p1 = add_ln69_5_fu_652_p2;
assign zext_ln69_7_fu_678_p1 = lshr_ln69_4_fu_668_p4;
assign zext_ln69_8_fu_709_p1 = add_ln69_7_fu_704_p2;
assign zext_ln69_9_fu_730_p1 = lshr_ln69_5_fu_720_p4;
assign zext_ln69_fu_558_p1 = lshr_ln_fu_548_p4;
endmodule 
