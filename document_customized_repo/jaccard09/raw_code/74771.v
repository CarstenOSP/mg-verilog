module backprop_get_delta_matrix_weights2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights2_0_address0,delta_weights2_0_ce0,delta_weights2_0_we0,delta_weights2_0_d0,delta_weights2_0_address1,delta_weights2_0_ce1,delta_weights2_0_we1,delta_weights2_0_d1,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_1_address1,delta_weights2_1_ce1,delta_weights2_1_we1,delta_weights2_1_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_0_address2,output_difference_0_ce2,output_difference_0_q2,output_difference_0_address3,output_difference_0_ce3,output_difference_0_q3,output_difference_0_address4,output_difference_0_ce4,output_difference_0_q4,output_difference_0_address5,output_difference_0_ce5,output_difference_0_q5,output_difference_0_address6,output_difference_0_ce6,output_difference_0_q6,output_difference_0_address7,output_difference_0_ce7,output_difference_0_q7,output_difference_0_address8,output_difference_0_ce8,output_difference_0_q8,output_difference_0_address9,output_difference_0_ce9,output_difference_0_q9,output_difference_0_address10,output_difference_0_ce10,output_difference_0_q10,output_difference_0_address11,output_difference_0_ce11,output_difference_0_q11,output_difference_0_address12,output_difference_0_ce12,output_difference_0_q12,output_difference_0_address13,output_difference_0_ce13,output_difference_0_q13,output_difference_0_address14,output_difference_0_ce14,output_difference_0_q14,output_difference_0_address15,output_difference_0_ce15,output_difference_0_q15,output_difference_0_address16,output_difference_0_ce16,output_difference_0_q16,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_1_address2,output_difference_1_ce2,output_difference_1_q2,output_difference_1_address3,output_difference_1_ce3,output_difference_1_q3,output_difference_1_address4,output_difference_1_ce4,output_difference_1_q4,output_difference_1_address5,output_difference_1_ce5,output_difference_1_q5,output_difference_1_address6,output_difference_1_ce6,output_difference_1_q6,output_difference_1_address7,output_difference_1_ce7,output_difference_1_q7,output_difference_1_address8,output_difference_1_ce8,output_difference_1_q8,output_difference_1_address9,output_difference_1_ce9,output_difference_1_q9,output_difference_1_address10,output_difference_1_ce10,output_difference_1_q10,output_difference_1_address11,output_difference_1_ce11,output_difference_1_q11,output_difference_1_address12,output_difference_1_ce12,output_difference_1_q12,output_difference_1_address13,output_difference_1_ce13,output_difference_1_q13,output_difference_1_address14,output_difference_1_ce14,output_difference_1_q14,output_difference_1_address15,output_difference_1_ce15,output_difference_1_q15,output_difference_1_address16,output_difference_1_ce16,output_difference_1_q16,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,grp_fu_2874_p_din0,grp_fu_2874_p_din1,grp_fu_2874_p_dout0,grp_fu_2874_p_ce,grp_fu_2878_p_din0,grp_fu_2878_p_din1,grp_fu_2878_p_dout0,grp_fu_2878_p_ce,grp_fu_2882_p_din0,grp_fu_2882_p_din1,grp_fu_2882_p_dout0,grp_fu_2882_p_ce,grp_fu_2886_p_din0,grp_fu_2886_p_din1,grp_fu_2886_p_dout0,grp_fu_2886_p_ce); 
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] delta_weights2_0_address0;
output   delta_weights2_0_ce0;
output   delta_weights2_0_we0;
output  [63:0] delta_weights2_0_d0;
output  [10:0] delta_weights2_0_address1;
output   delta_weights2_0_ce1;
output   delta_weights2_0_we1;
output  [63:0] delta_weights2_0_d1;
output  [10:0] delta_weights2_1_address0;
output   delta_weights2_1_ce0;
output   delta_weights2_1_we0;
output  [63:0] delta_weights2_1_d0;
output  [10:0] delta_weights2_1_address1;
output   delta_weights2_1_ce1;
output   delta_weights2_1_we1;
output  [63:0] delta_weights2_1_d1;
output  [4:0] output_difference_0_address0;
output   output_difference_0_ce0;
input  [63:0] output_difference_0_q0;
output  [4:0] output_difference_0_address1;
output   output_difference_0_ce1;
input  [63:0] output_difference_0_q1;
output  [4:0] output_difference_0_address2;
output   output_difference_0_ce2;
input  [63:0] output_difference_0_q2;
output  [4:0] output_difference_0_address3;
output   output_difference_0_ce3;
input  [63:0] output_difference_0_q3;
output  [4:0] output_difference_0_address4;
output   output_difference_0_ce4;
input  [63:0] output_difference_0_q4;
output  [4:0] output_difference_0_address5;
output   output_difference_0_ce5;
input  [63:0] output_difference_0_q5;
output  [4:0] output_difference_0_address6;
output   output_difference_0_ce6;
input  [63:0] output_difference_0_q6;
output  [4:0] output_difference_0_address7;
output   output_difference_0_ce7;
input  [63:0] output_difference_0_q7;
output  [4:0] output_difference_0_address8;
output   output_difference_0_ce8;
input  [63:0] output_difference_0_q8;
output  [4:0] output_difference_0_address9;
output   output_difference_0_ce9;
input  [63:0] output_difference_0_q9;
output  [4:0] output_difference_0_address10;
output   output_difference_0_ce10;
input  [63:0] output_difference_0_q10;
output  [4:0] output_difference_0_address11;
output   output_difference_0_ce11;
input  [63:0] output_difference_0_q11;
output  [4:0] output_difference_0_address12;
output   output_difference_0_ce12;
input  [63:0] output_difference_0_q12;
output  [4:0] output_difference_0_address13;
output   output_difference_0_ce13;
input  [63:0] output_difference_0_q13;
output  [4:0] output_difference_0_address14;
output   output_difference_0_ce14;
input  [63:0] output_difference_0_q14;
output  [4:0] output_difference_0_address15;
output   output_difference_0_ce15;
input  [63:0] output_difference_0_q15;
output  [4:0] output_difference_0_address16;
output   output_difference_0_ce16;
input  [63:0] output_difference_0_q16;
output  [4:0] output_difference_1_address0;
output   output_difference_1_ce0;
input  [63:0] output_difference_1_q0;
output  [4:0] output_difference_1_address1;
output   output_difference_1_ce1;
input  [63:0] output_difference_1_q1;
output  [4:0] output_difference_1_address2;
output   output_difference_1_ce2;
input  [63:0] output_difference_1_q2;
output  [4:0] output_difference_1_address3;
output   output_difference_1_ce3;
input  [63:0] output_difference_1_q3;
output  [4:0] output_difference_1_address4;
output   output_difference_1_ce4;
input  [63:0] output_difference_1_q4;
output  [4:0] output_difference_1_address5;
output   output_difference_1_ce5;
input  [63:0] output_difference_1_q5;
output  [4:0] output_difference_1_address6;
output   output_difference_1_ce6;
input  [63:0] output_difference_1_q6;
output  [4:0] output_difference_1_address7;
output   output_difference_1_ce7;
input  [63:0] output_difference_1_q7;
output  [4:0] output_difference_1_address8;
output   output_difference_1_ce8;
input  [63:0] output_difference_1_q8;
output  [4:0] output_difference_1_address9;
output   output_difference_1_ce9;
input  [63:0] output_difference_1_q9;
output  [4:0] output_difference_1_address10;
output   output_difference_1_ce10;
input  [63:0] output_difference_1_q10;
output  [4:0] output_difference_1_address11;
output   output_difference_1_ce11;
input  [63:0] output_difference_1_q11;
output  [4:0] output_difference_1_address12;
output   output_difference_1_ce12;
input  [63:0] output_difference_1_q12;
output  [4:0] output_difference_1_address13;
output   output_difference_1_ce13;
input  [63:0] output_difference_1_q13;
output  [4:0] output_difference_1_address14;
output   output_difference_1_ce14;
input  [63:0] output_difference_1_q14;
output  [4:0] output_difference_1_address15;
output   output_difference_1_ce15;
input  [63:0] output_difference_1_q15;
output  [4:0] output_difference_1_address16;
output   output_difference_1_ce16;
input  [63:0] output_difference_1_q16;
output  [4:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [4:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [63:0] grp_fu_2874_p_din0;
output  [63:0] grp_fu_2874_p_din1;
input  [63:0] grp_fu_2874_p_dout0;
output   grp_fu_2874_p_ce;
output  [63:0] grp_fu_2878_p_din0;
output  [63:0] grp_fu_2878_p_din1;
input  [63:0] grp_fu_2878_p_dout0;
output   grp_fu_2878_p_ce;
output  [63:0] grp_fu_2882_p_din0;
output  [63:0] grp_fu_2882_p_din1;
input  [63:0] grp_fu_2882_p_dout0;
output   grp_fu_2882_p_ce;
output  [63:0] grp_fu_2886_p_din0;
output  [63:0] grp_fu_2886_p_din1;
input  [63:0] grp_fu_2886_p_dout0;
output   grp_fu_2886_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_difference_0_load_reg_1052;
wire    ap_CS_fsm_state2;
reg   [63:0] output_difference_1_load_reg_1057;
reg   [63:0] output_difference_0_load_1_reg_1062;
reg   [63:0] output_difference_1_load_1_reg_1067;
reg   [63:0] output_difference_0_load_2_reg_1072;
reg   [63:0] output_difference_1_load_2_reg_1077;
reg   [63:0] output_difference_0_load_3_reg_1082;
reg   [63:0] output_difference_1_load_3_reg_1087;
reg   [63:0] output_difference_0_load_4_reg_1092;
reg   [63:0] output_difference_1_load_4_reg_1097;
reg   [63:0] output_difference_0_load_5_reg_1102;
reg   [63:0] output_difference_1_load_5_reg_1107;
reg   [63:0] output_difference_0_load_6_reg_1112;
reg   [63:0] output_difference_1_load_6_reg_1117;
reg   [63:0] output_difference_0_load_7_reg_1122;
reg   [63:0] output_difference_1_load_7_reg_1127;
reg   [63:0] output_difference_0_load_8_reg_1132;
reg   [63:0] output_difference_1_load_8_reg_1137;
reg   [63:0] output_difference_0_load_9_reg_1142;
reg   [63:0] output_difference_1_load_9_reg_1147;
reg   [63:0] output_difference_0_load_10_reg_1152;
reg   [63:0] output_difference_1_load_10_reg_1157;
reg   [63:0] output_difference_0_load_11_reg_1162;
reg   [63:0] output_difference_1_load_11_reg_1167;
reg   [63:0] output_difference_0_load_12_reg_1172;
reg   [63:0] output_difference_1_load_12_reg_1177;
reg   [63:0] output_difference_0_load_13_reg_1182;
reg   [63:0] output_difference_1_load_13_reg_1187;
reg   [63:0] output_difference_0_load_14_reg_1192;
reg   [63:0] output_difference_1_load_14_reg_1197;
reg   [63:0] output_difference_0_load_15_reg_1372;
wire    ap_CS_fsm_state3;
reg   [63:0] output_difference_1_load_15_reg_1377;
reg   [63:0] output_difference_0_load_16_reg_1382;
reg   [63:0] output_difference_1_load_16_reg_1387;
reg   [63:0] output_difference_0_load_17_reg_1392;
reg   [63:0] output_difference_1_load_17_reg_1397;
reg   [63:0] output_difference_0_load_18_reg_1402;
reg   [63:0] output_difference_1_load_18_reg_1407;
reg   [63:0] output_difference_0_load_19_reg_1412;
reg   [63:0] output_difference_1_load_19_reg_1417;
reg   [63:0] output_difference_0_load_20_reg_1422;
reg   [63:0] output_difference_1_load_20_reg_1427;
reg   [63:0] output_difference_0_load_21_reg_1432;
reg   [63:0] output_difference_1_load_21_reg_1437;
reg   [63:0] output_difference_0_load_22_reg_1442;
reg   [63:0] output_difference_1_load_22_reg_1447;
reg   [63:0] output_difference_0_load_23_reg_1452;
reg   [63:0] output_difference_1_load_23_reg_1457;
reg   [63:0] output_difference_0_load_24_reg_1462;
reg   [63:0] output_difference_1_load_24_reg_1467;
reg   [63:0] output_difference_0_load_25_reg_1472;
reg   [63:0] output_difference_1_load_25_reg_1477;
reg   [63:0] output_difference_0_load_26_reg_1482;
reg   [63:0] output_difference_1_load_26_reg_1487;
reg   [63:0] output_difference_0_load_27_reg_1492;
reg   [63:0] output_difference_1_load_27_reg_1497;
reg   [63:0] output_difference_0_load_28_reg_1502;
reg   [63:0] output_difference_1_load_28_reg_1507;
reg   [63:0] output_difference_0_load_29_reg_1512;
reg   [63:0] output_difference_1_load_29_reg_1517;
reg   [63:0] output_difference_0_load_30_reg_1522;
reg   [63:0] output_difference_1_load_30_reg_1527;
reg   [63:0] output_difference_0_load_31_reg_1532;
reg   [63:0] output_difference_1_load_31_reg_1537;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_start;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_done;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_idle;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_ready;
wire   [10:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_d0;
wire   [10:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_d1;
wire   [10:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_d0;
wire   [10:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_d1;
wire   [4:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_last_activations_0_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_last_activations_0_ce0;
wire   [4:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_last_activations_1_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_last_activations_1_ce0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1542_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1542_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1542_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1546_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1546_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1546_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1550_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1550_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1550_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1554_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1554_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1554_p_ce;
reg    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    output_difference_0_ce14_local;
reg   [4:0] output_difference_0_address14_local;
reg    output_difference_0_ce13_local;
reg   [4:0] output_difference_0_address13_local;
reg    output_difference_0_ce12_local;
reg   [4:0] output_difference_0_address12_local;
reg    output_difference_0_ce11_local;
reg   [4:0] output_difference_0_address11_local;
reg    output_difference_0_ce10_local;
reg   [4:0] output_difference_0_address10_local;
reg    output_difference_0_ce9_local;
reg   [4:0] output_difference_0_address9_local;
reg    output_difference_0_ce8_local;
reg   [4:0] output_difference_0_address8_local;
reg    output_difference_0_ce7_local;
reg   [4:0] output_difference_0_address7_local;
reg    output_difference_0_ce6_local;
reg   [4:0] output_difference_0_address6_local;
reg    output_difference_0_ce5_local;
reg   [4:0] output_difference_0_address5_local;
reg    output_difference_0_ce4_local;
reg   [4:0] output_difference_0_address4_local;
reg    output_difference_0_ce3_local;
reg   [4:0] output_difference_0_address3_local;
reg    output_difference_0_ce2_local;
reg   [4:0] output_difference_0_address2_local;
reg    output_difference_0_ce1_local;
reg   [4:0] output_difference_0_address1_local;
reg    output_difference_0_ce0_local;
reg   [4:0] output_difference_0_address0_local;
reg    output_difference_0_ce16_local;
reg    output_difference_0_ce15_local;
reg    output_difference_1_ce14_local;
reg   [4:0] output_difference_1_address14_local;
reg    output_difference_1_ce13_local;
reg   [4:0] output_difference_1_address13_local;
reg    output_difference_1_ce12_local;
reg   [4:0] output_difference_1_address12_local;
reg    output_difference_1_ce11_local;
reg   [4:0] output_difference_1_address11_local;
reg    output_difference_1_ce10_local;
reg   [4:0] output_difference_1_address10_local;
reg    output_difference_1_ce9_local;
reg   [4:0] output_difference_1_address9_local;
reg    output_difference_1_ce8_local;
reg   [4:0] output_difference_1_address8_local;
reg    output_difference_1_ce7_local;
reg   [4:0] output_difference_1_address7_local;
reg    output_difference_1_ce6_local;
reg   [4:0] output_difference_1_address6_local;
reg    output_difference_1_ce5_local;
reg   [4:0] output_difference_1_address5_local;
reg    output_difference_1_ce4_local;
reg   [4:0] output_difference_1_address4_local;
reg    output_difference_1_ce3_local;
reg   [4:0] output_difference_1_address3_local;
reg    output_difference_1_ce2_local;
reg   [4:0] output_difference_1_address2_local;
reg    output_difference_1_ce1_local;
reg   [4:0] output_difference_1_address1_local;
reg    output_difference_1_ce0_local;
reg   [4:0] output_difference_1_address0_local;
reg    output_difference_1_ce16_local;
reg    output_difference_1_ce15_local;
reg    grp_fu_1542_ce;
reg    grp_fu_1546_ce;
reg    grp_fu_1550_ce;
reg    grp_fu_1554_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_start_reg = 1'b0;
end
backprop_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1 grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_start),.ap_done(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_done),.ap_idle(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_idle),.ap_ready(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_ready),.delta_weights2_1_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_address0),.delta_weights2_1_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_ce0),.delta_weights2_1_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_we0),.delta_weights2_1_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_d0),.delta_weights2_1_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_address1),.delta_weights2_1_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_ce1),.delta_weights2_1_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_we1),.delta_weights2_1_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_d1),.delta_weights2_0_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_address0),.delta_weights2_0_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_ce0),.delta_weights2_0_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_we0),.delta_weights2_0_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_d0),.delta_weights2_0_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_address1),.delta_weights2_0_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_ce1),.delta_weights2_0_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_we1),.delta_weights2_0_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_d1),.last_activations_0_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_last_activations_0_address0),.last_activations_0_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_last_activations_0_ce0),.last_activations_0_q0(last_activations_0_q0),.last_activations_1_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_last_activations_1_address0),.last_activations_1_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_last_activations_1_ce0),.last_activations_1_q0(last_activations_1_q0),.output_difference_0_load(output_difference_0_load_reg_1052),.output_difference_1_load(output_difference_1_load_reg_1057),.output_difference_0_load_1(output_difference_0_load_1_reg_1062),.output_difference_1_load_1(output_difference_1_load_1_reg_1067),.output_difference_0_load_2(output_difference_0_load_2_reg_1072),.output_difference_1_load_2(output_difference_1_load_2_reg_1077),.output_difference_0_load_3(output_difference_0_load_3_reg_1082),.output_difference_1_load_3(output_difference_1_load_3_reg_1087),.output_difference_0_load_4(output_difference_0_load_4_reg_1092),.output_difference_1_load_4(output_difference_1_load_4_reg_1097),.output_difference_0_load_5(output_difference_0_load_5_reg_1102),.output_difference_1_load_5(output_difference_1_load_5_reg_1107),.output_difference_0_load_6(output_difference_0_load_6_reg_1112),.output_difference_1_load_6(output_difference_1_load_6_reg_1117),.output_difference_0_load_7(output_difference_0_load_7_reg_1122),.output_difference_1_load_7(output_difference_1_load_7_reg_1127),.output_difference_0_load_8(output_difference_0_load_8_reg_1132),.output_difference_1_load_8(output_difference_1_load_8_reg_1137),.output_difference_0_load_9(output_difference_0_load_9_reg_1142),.output_difference_1_load_9(output_difference_1_load_9_reg_1147),.output_difference_0_load_10(output_difference_0_load_10_reg_1152),.output_difference_1_load_10(output_difference_1_load_10_reg_1157),.output_difference_0_load_11(output_difference_0_load_11_reg_1162),.output_difference_1_load_11(output_difference_1_load_11_reg_1167),.output_difference_0_load_12(output_difference_0_load_12_reg_1172),.output_difference_1_load_12(output_difference_1_load_12_reg_1177),.output_difference_0_load_13(output_difference_0_load_13_reg_1182),.output_difference_1_load_13(output_difference_1_load_13_reg_1187),.output_difference_0_load_14(output_difference_0_load_14_reg_1192),.output_difference_1_load_14(output_difference_1_load_14_reg_1197),.output_difference_0_load_15(output_difference_0_load_15_reg_1372),.output_difference_1_load_15(output_difference_1_load_15_reg_1377),.output_difference_0_load_16(output_difference_0_load_16_reg_1382),.output_difference_1_load_16(output_difference_1_load_16_reg_1387),.output_difference_0_load_17(output_difference_0_load_17_reg_1392),.output_difference_1_load_17(output_difference_1_load_17_reg_1397),.output_difference_0_load_18(output_difference_0_load_18_reg_1402),.output_difference_1_load_18(output_difference_1_load_18_reg_1407),.output_difference_0_load_19(output_difference_0_load_19_reg_1412),.output_difference_1_load_19(output_difference_1_load_19_reg_1417),.output_difference_0_load_20(output_difference_0_load_20_reg_1422),.output_difference_1_load_20(output_difference_1_load_20_reg_1427),.output_difference_0_load_21(output_difference_0_load_21_reg_1432),.output_difference_1_load_21(output_difference_1_load_21_reg_1437),.output_difference_0_load_22(output_difference_0_load_22_reg_1442),.output_difference_1_load_22(output_difference_1_load_22_reg_1447),.output_difference_0_load_23(output_difference_0_load_23_reg_1452),.output_difference_1_load_23(output_difference_1_load_23_reg_1457),.output_difference_0_load_24(output_difference_0_load_24_reg_1462),.output_difference_1_load_24(output_difference_1_load_24_reg_1467),.output_difference_0_load_25(output_difference_0_load_25_reg_1472),.output_difference_1_load_25(output_difference_1_load_25_reg_1477),.output_difference_0_load_26(output_difference_0_load_26_reg_1482),.output_difference_1_load_26(output_difference_1_load_26_reg_1487),.output_difference_0_load_27(output_difference_0_load_27_reg_1492),.output_difference_1_load_27(output_difference_1_load_27_reg_1497),.output_difference_0_load_28(output_difference_0_load_28_reg_1502),.output_difference_1_load_28(output_difference_1_load_28_reg_1507),.output_difference_0_load_29(output_difference_0_load_29_reg_1512),.output_difference_1_load_29(output_difference_1_load_29_reg_1517),.output_difference_0_load_30(output_difference_0_load_30_reg_1522),.output_difference_1_load_30(output_difference_1_load_30_reg_1527),.output_difference_0_load_31(output_difference_0_load_31_reg_1532),.output_difference_1_load_31(output_difference_1_load_31_reg_1537),.grp_fu_1542_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1542_p_din0),.grp_fu_1542_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1542_p_din1),.grp_fu_1542_p_dout0(grp_fu_2874_p_dout0),.grp_fu_1542_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1542_p_ce),.grp_fu_1546_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1546_p_din0),.grp_fu_1546_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1546_p_din1),.grp_fu_1546_p_dout0(grp_fu_2878_p_dout0),.grp_fu_1546_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1546_p_ce),.grp_fu_1550_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1550_p_din0),.grp_fu_1550_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1550_p_din1),.grp_fu_1550_p_dout0(grp_fu_2882_p_dout0),.grp_fu_1550_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1550_p_ce),.grp_fu_1554_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1554_p_din0),.grp_fu_1554_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1554_p_din1),.grp_fu_1554_p_dout0(grp_fu_2886_p_dout0),.grp_fu_1554_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1554_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_load_10_reg_1152 <= output_difference_0_q4;
        output_difference_0_load_11_reg_1162 <= output_difference_0_q3;
        output_difference_0_load_12_reg_1172 <= output_difference_0_q2;
        output_difference_0_load_13_reg_1182 <= output_difference_0_q1;
        output_difference_0_load_14_reg_1192 <= output_difference_0_q0;
        output_difference_0_load_1_reg_1062 <= output_difference_0_q13;
        output_difference_0_load_2_reg_1072 <= output_difference_0_q12;
        output_difference_0_load_3_reg_1082 <= output_difference_0_q11;
        output_difference_0_load_4_reg_1092 <= output_difference_0_q10;
        output_difference_0_load_5_reg_1102 <= output_difference_0_q9;
        output_difference_0_load_6_reg_1112 <= output_difference_0_q8;
        output_difference_0_load_7_reg_1122 <= output_difference_0_q7;
        output_difference_0_load_8_reg_1132 <= output_difference_0_q6;
        output_difference_0_load_9_reg_1142 <= output_difference_0_q5;
        output_difference_0_load_reg_1052 <= output_difference_0_q14;
        output_difference_1_load_10_reg_1157 <= output_difference_1_q4;
        output_difference_1_load_11_reg_1167 <= output_difference_1_q3;
        output_difference_1_load_12_reg_1177 <= output_difference_1_q2;
        output_difference_1_load_13_reg_1187 <= output_difference_1_q1;
        output_difference_1_load_14_reg_1197 <= output_difference_1_q0;
        output_difference_1_load_1_reg_1067 <= output_difference_1_q13;
        output_difference_1_load_2_reg_1077 <= output_difference_1_q12;
        output_difference_1_load_3_reg_1087 <= output_difference_1_q11;
        output_difference_1_load_4_reg_1097 <= output_difference_1_q10;
        output_difference_1_load_5_reg_1107 <= output_difference_1_q9;
        output_difference_1_load_6_reg_1117 <= output_difference_1_q8;
        output_difference_1_load_7_reg_1127 <= output_difference_1_q7;
        output_difference_1_load_8_reg_1137 <= output_difference_1_q6;
        output_difference_1_load_9_reg_1147 <= output_difference_1_q5;
        output_difference_1_load_reg_1057 <= output_difference_1_q14;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_0_load_15_reg_1372 <= output_difference_0_q16;
        output_difference_0_load_16_reg_1382 <= output_difference_0_q15;
        output_difference_0_load_17_reg_1392 <= output_difference_0_q14;
        output_difference_0_load_18_reg_1402 <= output_difference_0_q13;
        output_difference_0_load_19_reg_1412 <= output_difference_0_q12;
        output_difference_0_load_20_reg_1422 <= output_difference_0_q11;
        output_difference_0_load_21_reg_1432 <= output_difference_0_q10;
        output_difference_0_load_22_reg_1442 <= output_difference_0_q9;
        output_difference_0_load_23_reg_1452 <= output_difference_0_q8;
        output_difference_0_load_24_reg_1462 <= output_difference_0_q7;
        output_difference_0_load_25_reg_1472 <= output_difference_0_q6;
        output_difference_0_load_26_reg_1482 <= output_difference_0_q5;
        output_difference_0_load_27_reg_1492 <= output_difference_0_q4;
        output_difference_0_load_28_reg_1502 <= output_difference_0_q3;
        output_difference_0_load_29_reg_1512 <= output_difference_0_q2;
        output_difference_0_load_30_reg_1522 <= output_difference_0_q1;
        output_difference_0_load_31_reg_1532 <= output_difference_0_q0;
        output_difference_1_load_15_reg_1377 <= output_difference_1_q16;
        output_difference_1_load_16_reg_1387 <= output_difference_1_q15;
        output_difference_1_load_17_reg_1397 <= output_difference_1_q14;
        output_difference_1_load_18_reg_1407 <= output_difference_1_q13;
        output_difference_1_load_19_reg_1417 <= output_difference_1_q12;
        output_difference_1_load_20_reg_1427 <= output_difference_1_q11;
        output_difference_1_load_21_reg_1437 <= output_difference_1_q10;
        output_difference_1_load_22_reg_1447 <= output_difference_1_q9;
        output_difference_1_load_23_reg_1457 <= output_difference_1_q8;
        output_difference_1_load_24_reg_1467 <= output_difference_1_q7;
        output_difference_1_load_25_reg_1477 <= output_difference_1_q6;
        output_difference_1_load_26_reg_1487 <= output_difference_1_q5;
        output_difference_1_load_27_reg_1497 <= output_difference_1_q4;
        output_difference_1_load_28_reg_1507 <= output_difference_1_q3;
        output_difference_1_load_29_reg_1517 <= output_difference_1_q2;
        output_difference_1_load_30_reg_1527 <= output_difference_1_q1;
        output_difference_1_load_31_reg_1537 <= output_difference_1_q0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1542_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1542_p_ce;
    end else begin
        grp_fu_1542_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1546_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1546_p_ce;
    end else begin
        grp_fu_1546_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1550_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1550_p_ce;
    end else begin
        grp_fu_1550_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1554_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1554_p_ce;
    end else begin
        grp_fu_1554_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address0_local = 64'd14;
    end else begin
        output_difference_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address10_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address10_local = 64'd4;
    end else begin
        output_difference_0_address10_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address11_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address11_local = 64'd3;
    end else begin
        output_difference_0_address11_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address12_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address12_local = 64'd2;
    end else begin
        output_difference_0_address12_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address13_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address13_local = 64'd1;
    end else begin
        output_difference_0_address13_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address14_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address14_local = 64'd0;
    end else begin
        output_difference_0_address14_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address1_local = 64'd13;
    end else begin
        output_difference_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address2_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address2_local = 64'd12;
    end else begin
        output_difference_0_address2_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address3_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address3_local = 64'd11;
    end else begin
        output_difference_0_address3_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address4_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address4_local = 64'd10;
    end else begin
        output_difference_0_address4_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address5_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address5_local = 64'd9;
    end else begin
        output_difference_0_address5_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address6_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address6_local = 64'd8;
    end else begin
        output_difference_0_address6_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address7_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address7_local = 64'd7;
    end else begin
        output_difference_0_address7_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address8_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address8_local = 64'd6;
    end else begin
        output_difference_0_address8_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address9_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address9_local = 64'd5;
    end else begin
        output_difference_0_address9_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_0_ce0_local = 1'b1;
    end else begin
        output_difference_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_0_ce10_local = 1'b1;
    end else begin
        output_difference_0_ce10_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_0_ce11_local = 1'b1;
    end else begin
        output_difference_0_ce11_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_0_ce12_local = 1'b1;
    end else begin
        output_difference_0_ce12_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_0_ce13_local = 1'b1;
    end else begin
        output_difference_0_ce13_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_0_ce14_local = 1'b1;
    end else begin
        output_difference_0_ce14_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_ce15_local = 1'b1;
    end else begin
        output_difference_0_ce15_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_ce16_local = 1'b1;
    end else begin
        output_difference_0_ce16_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_0_ce1_local = 1'b1;
    end else begin
        output_difference_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_0_ce2_local = 1'b1;
    end else begin
        output_difference_0_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_0_ce3_local = 1'b1;
    end else begin
        output_difference_0_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_0_ce4_local = 1'b1;
    end else begin
        output_difference_0_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_0_ce5_local = 1'b1;
    end else begin
        output_difference_0_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_0_ce6_local = 1'b1;
    end else begin
        output_difference_0_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_0_ce7_local = 1'b1;
    end else begin
        output_difference_0_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_0_ce8_local = 1'b1;
    end else begin
        output_difference_0_ce8_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_0_ce9_local = 1'b1;
    end else begin
        output_difference_0_ce9_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address0_local = 64'd14;
    end else begin
        output_difference_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address10_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address10_local = 64'd4;
    end else begin
        output_difference_1_address10_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address11_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address11_local = 64'd3;
    end else begin
        output_difference_1_address11_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address12_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address12_local = 64'd2;
    end else begin
        output_difference_1_address12_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address13_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address13_local = 64'd1;
    end else begin
        output_difference_1_address13_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address14_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address14_local = 64'd0;
    end else begin
        output_difference_1_address14_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address1_local = 64'd13;
    end else begin
        output_difference_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address2_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address2_local = 64'd12;
    end else begin
        output_difference_1_address2_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address3_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address3_local = 64'd11;
    end else begin
        output_difference_1_address3_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address4_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address4_local = 64'd10;
    end else begin
        output_difference_1_address4_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address5_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address5_local = 64'd9;
    end else begin
        output_difference_1_address5_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address6_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address6_local = 64'd8;
    end else begin
        output_difference_1_address6_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address7_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address7_local = 64'd7;
    end else begin
        output_difference_1_address7_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address8_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address8_local = 64'd6;
    end else begin
        output_difference_1_address8_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address9_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address9_local = 64'd5;
    end else begin
        output_difference_1_address9_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_1_ce0_local = 1'b1;
    end else begin
        output_difference_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_1_ce10_local = 1'b1;
    end else begin
        output_difference_1_ce10_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_1_ce11_local = 1'b1;
    end else begin
        output_difference_1_ce11_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_1_ce12_local = 1'b1;
    end else begin
        output_difference_1_ce12_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_1_ce13_local = 1'b1;
    end else begin
        output_difference_1_ce13_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_1_ce14_local = 1'b1;
    end else begin
        output_difference_1_ce14_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_ce15_local = 1'b1;
    end else begin
        output_difference_1_ce15_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_ce16_local = 1'b1;
    end else begin
        output_difference_1_ce16_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_1_ce1_local = 1'b1;
    end else begin
        output_difference_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_1_ce2_local = 1'b1;
    end else begin
        output_difference_1_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_1_ce3_local = 1'b1;
    end else begin
        output_difference_1_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_1_ce4_local = 1'b1;
    end else begin
        output_difference_1_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_1_ce5_local = 1'b1;
    end else begin
        output_difference_1_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_1_ce6_local = 1'b1;
    end else begin
        output_difference_1_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_1_ce7_local = 1'b1;
    end else begin
        output_difference_1_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_1_ce8_local = 1'b1;
    end else begin
        output_difference_1_ce8_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_1_ce9_local = 1'b1;
    end else begin
        output_difference_1_ce9_local = 1'b0;
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
            if (((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign delta_weights2_0_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_address0;
assign delta_weights2_0_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_address1;
assign delta_weights2_0_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_ce0;
assign delta_weights2_0_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_ce1;
assign delta_weights2_0_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_d0;
assign delta_weights2_0_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_d1;
assign delta_weights2_0_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_we0;
assign delta_weights2_0_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_0_we1;
assign delta_weights2_1_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_address0;
assign delta_weights2_1_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_address1;
assign delta_weights2_1_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_ce0;
assign delta_weights2_1_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_ce1;
assign delta_weights2_1_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_d0;
assign delta_weights2_1_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_d1;
assign delta_weights2_1_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_we0;
assign delta_weights2_1_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_delta_weights2_1_we1;
assign grp_fu_2874_p_ce = grp_fu_1542_ce;
assign grp_fu_2874_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1542_p_din0;
assign grp_fu_2874_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1542_p_din1;
assign grp_fu_2878_p_ce = grp_fu_1546_ce;
assign grp_fu_2878_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1546_p_din0;
assign grp_fu_2878_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1546_p_din1;
assign grp_fu_2882_p_ce = grp_fu_1550_ce;
assign grp_fu_2882_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1550_p_din0;
assign grp_fu_2882_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1550_p_din1;
assign grp_fu_2886_p_ce = grp_fu_1554_ce;
assign grp_fu_2886_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1554_p_din0;
assign grp_fu_2886_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_grp_fu_1554_p_din1;
assign grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_start = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_ap_start_reg;
assign last_activations_0_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_last_activations_0_address0;
assign last_activations_0_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_last_activations_0_ce0;
assign last_activations_1_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_last_activations_1_address0;
assign last_activations_1_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_792_last_activations_1_ce0;
assign output_difference_0_address0 = output_difference_0_address0_local;
assign output_difference_0_address1 = output_difference_0_address1_local;
assign output_difference_0_address10 = output_difference_0_address10_local;
assign output_difference_0_address11 = output_difference_0_address11_local;
assign output_difference_0_address12 = output_difference_0_address12_local;
assign output_difference_0_address13 = output_difference_0_address13_local;
assign output_difference_0_address14 = output_difference_0_address14_local;
assign output_difference_0_address15 = 64'd16;
assign output_difference_0_address16 = 64'd15;
assign output_difference_0_address2 = output_difference_0_address2_local;
assign output_difference_0_address3 = output_difference_0_address3_local;
assign output_difference_0_address4 = output_difference_0_address4_local;
assign output_difference_0_address5 = output_difference_0_address5_local;
assign output_difference_0_address6 = output_difference_0_address6_local;
assign output_difference_0_address7 = output_difference_0_address7_local;
assign output_difference_0_address8 = output_difference_0_address8_local;
assign output_difference_0_address9 = output_difference_0_address9_local;
assign output_difference_0_ce0 = output_difference_0_ce0_local;
assign output_difference_0_ce1 = output_difference_0_ce1_local;
assign output_difference_0_ce10 = output_difference_0_ce10_local;
assign output_difference_0_ce11 = output_difference_0_ce11_local;
assign output_difference_0_ce12 = output_difference_0_ce12_local;
assign output_difference_0_ce13 = output_difference_0_ce13_local;
assign output_difference_0_ce14 = output_difference_0_ce14_local;
assign output_difference_0_ce15 = output_difference_0_ce15_local;
assign output_difference_0_ce16 = output_difference_0_ce16_local;
assign output_difference_0_ce2 = output_difference_0_ce2_local;
assign output_difference_0_ce3 = output_difference_0_ce3_local;
assign output_difference_0_ce4 = output_difference_0_ce4_local;
assign output_difference_0_ce5 = output_difference_0_ce5_local;
assign output_difference_0_ce6 = output_difference_0_ce6_local;
assign output_difference_0_ce7 = output_difference_0_ce7_local;
assign output_difference_0_ce8 = output_difference_0_ce8_local;
assign output_difference_0_ce9 = output_difference_0_ce9_local;
assign output_difference_1_address0 = output_difference_1_address0_local;
assign output_difference_1_address1 = output_difference_1_address1_local;
assign output_difference_1_address10 = output_difference_1_address10_local;
assign output_difference_1_address11 = output_difference_1_address11_local;
assign output_difference_1_address12 = output_difference_1_address12_local;
assign output_difference_1_address13 = output_difference_1_address13_local;
assign output_difference_1_address14 = output_difference_1_address14_local;
assign output_difference_1_address15 = 64'd16;
assign output_difference_1_address16 = 64'd15;
assign output_difference_1_address2 = output_difference_1_address2_local;
assign output_difference_1_address3 = output_difference_1_address3_local;
assign output_difference_1_address4 = output_difference_1_address4_local;
assign output_difference_1_address5 = output_difference_1_address5_local;
assign output_difference_1_address6 = output_difference_1_address6_local;
assign output_difference_1_address7 = output_difference_1_address7_local;
assign output_difference_1_address8 = output_difference_1_address8_local;
assign output_difference_1_address9 = output_difference_1_address9_local;
assign output_difference_1_ce0 = output_difference_1_ce0_local;
assign output_difference_1_ce1 = output_difference_1_ce1_local;
assign output_difference_1_ce10 = output_difference_1_ce10_local;
assign output_difference_1_ce11 = output_difference_1_ce11_local;
assign output_difference_1_ce12 = output_difference_1_ce12_local;
assign output_difference_1_ce13 = output_difference_1_ce13_local;
assign output_difference_1_ce14 = output_difference_1_ce14_local;
assign output_difference_1_ce15 = output_difference_1_ce15_local;
assign output_difference_1_ce16 = output_difference_1_ce16_local;
assign output_difference_1_ce2 = output_difference_1_ce2_local;
assign output_difference_1_ce3 = output_difference_1_ce3_local;
assign output_difference_1_ce4 = output_difference_1_ce4_local;
assign output_difference_1_ce5 = output_difference_1_ce5_local;
assign output_difference_1_ce6 = output_difference_1_ce6_local;
assign output_difference_1_ce7 = output_difference_1_ce7_local;
assign output_difference_1_ce8 = output_difference_1_ce8_local;
assign output_difference_1_ce9 = output_difference_1_ce9_local;
endmodule 