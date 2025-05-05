module backprop_get_oracle_activations1_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_address0,weights2_ce0,weights2_q0,weights2_address1,weights2_ce1,weights2_q1,output_differences_address0,output_differences_ce0,output_differences_q0,output_differences_address1,output_differences_ce1,output_differences_q1,output_differences_address2,output_differences_ce2,output_differences_q2,output_differences_address3,output_differences_ce3,output_differences_q3,output_differences_address4,output_differences_ce4,output_differences_q4,output_differences_address5,output_differences_ce5,output_differences_q5,output_differences_address6,output_differences_ce6,output_differences_q6,output_differences_address7,output_differences_ce7,output_differences_q7,output_differences_address8,output_differences_ce8,output_differences_q8,output_differences_address9,output_differences_ce9,output_differences_q9,output_differences_address10,output_differences_ce10,output_differences_q10,output_differences_address11,output_differences_ce11,output_differences_q11,output_differences_address12,output_differences_ce12,output_differences_q12,output_differences_address13,output_differences_ce13,output_differences_q13,output_differences_address14,output_differences_ce14,output_differences_q14,output_differences_address15,output_differences_ce15,output_differences_q15,output_differences_address16,output_differences_ce16,output_differences_q16,oracle_activations_address0,oracle_activations_ce0,oracle_activations_we0,oracle_activations_d0,dactivations_address0,dactivations_ce0,dactivations_q0,grp_fu_3291_p_din0,grp_fu_3291_p_din1,grp_fu_3291_p_opcode,grp_fu_3291_p_dout0,grp_fu_3291_p_ce,grp_fu_3295_p_din0,grp_fu_3295_p_din1,grp_fu_3295_p_opcode,grp_fu_3295_p_dout0,grp_fu_3295_p_ce,grp_fu_3151_p_din0,grp_fu_3151_p_din1,grp_fu_3151_p_dout0,grp_fu_3151_p_ce,grp_fu_3155_p_din0,grp_fu_3155_p_din1,grp_fu_3155_p_dout0,grp_fu_3155_p_ce,grp_fu_3159_p_din0,grp_fu_3159_p_din1,grp_fu_3159_p_dout0,grp_fu_3159_p_ce); 
parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] weights2_address0;
output   weights2_ce0;
input  [63:0] weights2_q0;
output  [11:0] weights2_address1;
output   weights2_ce1;
input  [63:0] weights2_q1;
output  [5:0] output_differences_address0;
output   output_differences_ce0;
input  [63:0] output_differences_q0;
output  [5:0] output_differences_address1;
output   output_differences_ce1;
input  [63:0] output_differences_q1;
output  [5:0] output_differences_address2;
output   output_differences_ce2;
input  [63:0] output_differences_q2;
output  [5:0] output_differences_address3;
output   output_differences_ce3;
input  [63:0] output_differences_q3;
output  [5:0] output_differences_address4;
output   output_differences_ce4;
input  [63:0] output_differences_q4;
output  [5:0] output_differences_address5;
output   output_differences_ce5;
input  [63:0] output_differences_q5;
output  [5:0] output_differences_address6;
output   output_differences_ce6;
input  [63:0] output_differences_q6;
output  [5:0] output_differences_address7;
output   output_differences_ce7;
input  [63:0] output_differences_q7;
output  [5:0] output_differences_address8;
output   output_differences_ce8;
input  [63:0] output_differences_q8;
output  [5:0] output_differences_address9;
output   output_differences_ce9;
input  [63:0] output_differences_q9;
output  [5:0] output_differences_address10;
output   output_differences_ce10;
input  [63:0] output_differences_q10;
output  [5:0] output_differences_address11;
output   output_differences_ce11;
input  [63:0] output_differences_q11;
output  [5:0] output_differences_address12;
output   output_differences_ce12;
input  [63:0] output_differences_q12;
output  [5:0] output_differences_address13;
output   output_differences_ce13;
input  [63:0] output_differences_q13;
output  [5:0] output_differences_address14;
output   output_differences_ce14;
input  [63:0] output_differences_q14;
output  [5:0] output_differences_address15;
output   output_differences_ce15;
input  [63:0] output_differences_q15;
output  [5:0] output_differences_address16;
output   output_differences_ce16;
input  [63:0] output_differences_q16;
output  [5:0] oracle_activations_address0;
output   oracle_activations_ce0;
output   oracle_activations_we0;
output  [63:0] oracle_activations_d0;
output  [5:0] dactivations_address0;
output   dactivations_ce0;
input  [63:0] dactivations_q0;
output  [63:0] grp_fu_3291_p_din0;
output  [63:0] grp_fu_3291_p_din1;
output  [0:0] grp_fu_3291_p_opcode;
input  [63:0] grp_fu_3291_p_dout0;
output   grp_fu_3291_p_ce;
output  [63:0] grp_fu_3295_p_din0;
output  [63:0] grp_fu_3295_p_din1;
output  [0:0] grp_fu_3295_p_opcode;
input  [63:0] grp_fu_3295_p_dout0;
output   grp_fu_3295_p_ce;
output  [63:0] grp_fu_3151_p_din0;
output  [63:0] grp_fu_3151_p_din1;
input  [63:0] grp_fu_3151_p_dout0;
output   grp_fu_3151_p_ce;
output  [63:0] grp_fu_3155_p_din0;
output  [63:0] grp_fu_3155_p_din1;
input  [63:0] grp_fu_3155_p_dout0;
output   grp_fu_3155_p_ce;
output  [63:0] grp_fu_3159_p_din0;
output  [63:0] grp_fu_3159_p_din1;
input  [63:0] grp_fu_3159_p_dout0;
output   grp_fu_3159_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_differences_load_reg_949;
wire    ap_CS_fsm_state2;
reg   [63:0] output_differences_load_1_reg_954;
reg   [63:0] output_differences_load_2_reg_959;
reg   [63:0] output_differences_load_3_reg_964;
reg   [63:0] output_differences_load_4_reg_969;
reg   [63:0] output_differences_load_5_reg_974;
reg   [63:0] output_differences_load_6_reg_979;
reg   [63:0] output_differences_load_7_reg_984;
reg   [63:0] output_differences_load_8_reg_989;
reg   [63:0] output_differences_load_9_reg_994;
reg   [63:0] output_differences_load_10_reg_999;
reg   [63:0] output_differences_load_11_reg_1004;
reg   [63:0] output_differences_load_12_reg_1009;
reg   [63:0] output_differences_load_13_reg_1099;
wire    ap_CS_fsm_state3;
reg   [63:0] output_differences_load_14_reg_1104;
reg   [63:0] output_differences_load_15_reg_1109;
reg   [63:0] output_differences_load_16_reg_1114;
reg   [63:0] output_differences_load_17_reg_1119;
reg   [63:0] output_differences_load_18_reg_1124;
reg   [63:0] output_differences_load_19_reg_1129;
reg   [63:0] output_differences_load_20_reg_1134;
reg   [63:0] output_differences_load_21_reg_1139;
reg   [63:0] output_differences_load_22_reg_1144;
reg   [63:0] output_differences_load_23_reg_1149;
reg   [63:0] output_differences_load_24_reg_1154;
reg   [63:0] output_differences_load_25_reg_1159;
reg   [63:0] output_differences_load_26_reg_1164;
reg   [63:0] output_differences_load_27_reg_1169;
reg   [63:0] output_differences_load_28_reg_1174;
reg   [63:0] output_differences_load_29_reg_1179;
reg   [63:0] output_differences_load_30_reg_1269;
wire    ap_CS_fsm_state4;
reg   [63:0] output_differences_load_31_reg_1274;
reg   [63:0] output_differences_load_32_reg_1279;
reg   [63:0] output_differences_load_33_reg_1284;
reg   [63:0] output_differences_load_34_reg_1289;
reg   [63:0] output_differences_load_35_reg_1294;
reg   [63:0] output_differences_load_36_reg_1299;
reg   [63:0] output_differences_load_37_reg_1304;
reg   [63:0] output_differences_load_38_reg_1309;
reg   [63:0] output_differences_load_39_reg_1314;
reg   [63:0] output_differences_load_40_reg_1319;
reg   [63:0] output_differences_load_41_reg_1324;
reg   [63:0] output_differences_load_42_reg_1329;
reg   [63:0] output_differences_load_43_reg_1334;
reg   [63:0] output_differences_load_44_reg_1339;
reg   [63:0] output_differences_load_45_reg_1344;
reg   [63:0] output_differences_load_46_reg_1349;
reg   [63:0] output_differences_load_47_reg_1439;
wire    ap_CS_fsm_state5;
reg   [63:0] output_differences_load_48_reg_1444;
reg   [63:0] output_differences_load_49_reg_1449;
reg   [63:0] output_differences_load_50_reg_1454;
reg   [63:0] output_differences_load_51_reg_1459;
reg   [63:0] output_differences_load_52_reg_1464;
reg   [63:0] output_differences_load_53_reg_1469;
reg   [63:0] output_differences_load_54_reg_1474;
reg   [63:0] output_differences_load_55_reg_1479;
reg   [63:0] output_differences_load_56_reg_1484;
reg   [63:0] output_differences_load_57_reg_1489;
reg   [63:0] output_differences_load_58_reg_1494;
reg   [63:0] output_differences_load_59_reg_1499;
reg   [63:0] output_differences_load_60_reg_1504;
reg   [63:0] output_differences_load_61_reg_1509;
reg   [63:0] output_differences_load_62_reg_1514;
reg   [63:0] output_differences_load_63_reg_1519;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_start;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_done;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_idle;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_ready;
wire   [5:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_oracle_activations_address0;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_oracle_activations_ce0;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_oracle_activations_we0;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_oracle_activations_d0;
wire   [11:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_weights2_address0;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_weights2_ce0;
wire   [11:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_weights2_address1;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_weights2_ce1;
wire   [5:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_dactivations_address0;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_dactivations_ce0;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1524_p_din0;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1524_p_din1;
wire   [0:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1524_p_opcode;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1524_p_ce;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1528_p_din0;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1528_p_din1;
wire   [0:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1528_p_opcode;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1528_p_ce;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1532_p_din0;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1532_p_din1;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1532_p_ce;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1536_p_din0;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1536_p_din1;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1536_p_ce;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1540_p_din0;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1540_p_din1;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1540_p_ce;
reg    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    output_differences_ce12_local;
reg   [5:0] output_differences_address12_local;
reg    output_differences_ce11_local;
reg   [5:0] output_differences_address11_local;
reg    output_differences_ce10_local;
reg   [5:0] output_differences_address10_local;
reg    output_differences_ce9_local;
reg   [5:0] output_differences_address9_local;
reg    output_differences_ce8_local;
reg   [5:0] output_differences_address8_local;
reg    output_differences_ce7_local;
reg   [5:0] output_differences_address7_local;
reg    output_differences_ce6_local;
reg   [5:0] output_differences_address6_local;
reg    output_differences_ce5_local;
reg   [5:0] output_differences_address5_local;
reg    output_differences_ce4_local;
reg   [5:0] output_differences_address4_local;
reg    output_differences_ce3_local;
reg   [5:0] output_differences_address3_local;
reg    output_differences_ce2_local;
reg   [5:0] output_differences_address2_local;
reg    output_differences_ce1_local;
reg   [5:0] output_differences_address1_local;
reg    output_differences_ce0_local;
reg   [5:0] output_differences_address0_local;
reg    output_differences_ce16_local;
reg   [5:0] output_differences_address16_local;
reg    output_differences_ce15_local;
reg   [5:0] output_differences_address15_local;
reg    output_differences_ce14_local;
reg   [5:0] output_differences_address14_local;
reg    output_differences_ce13_local;
reg   [5:0] output_differences_address13_local;
reg    grp_fu_1524_ce;
reg    grp_fu_1528_ce;
reg    grp_fu_1532_ce;
reg    grp_fu_1536_ce;
reg    grp_fu_1540_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_start_reg = 1'b0;
end
backprop_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1 grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_start),.ap_done(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_done),.ap_idle(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_idle),.ap_ready(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_ready),.oracle_activations_address0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_oracle_activations_address0),.oracle_activations_ce0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_oracle_activations_ce0),.oracle_activations_we0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_oracle_activations_we0),.oracle_activations_d0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_oracle_activations_d0),.weights2_address0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_weights2_address0),.weights2_ce0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_weights2_ce0),.weights2_q0(weights2_q0),.weights2_address1(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_weights2_address1),.weights2_ce1(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_weights2_ce1),.weights2_q1(weights2_q1),.output_differences_load(output_differences_load_reg_949),.output_differences_load_1(output_differences_load_1_reg_954),.output_differences_load_2(output_differences_load_2_reg_959),.output_differences_load_3(output_differences_load_3_reg_964),.output_differences_load_4(output_differences_load_4_reg_969),.output_differences_load_5(output_differences_load_5_reg_974),.output_differences_load_6(output_differences_load_6_reg_979),.output_differences_load_7(output_differences_load_7_reg_984),.output_differences_load_8(output_differences_load_8_reg_989),.output_differences_load_9(output_differences_load_9_reg_994),.output_differences_load_10(output_differences_load_10_reg_999),.output_differences_load_11(output_differences_load_11_reg_1004),.output_differences_load_12(output_differences_load_12_reg_1009),.output_differences_load_13(output_differences_load_13_reg_1099),.output_differences_load_14(output_differences_load_14_reg_1104),.output_differences_load_15(output_differences_load_15_reg_1109),.output_differences_load_16(output_differences_load_16_reg_1114),.output_differences_load_17(output_differences_load_17_reg_1119),.output_differences_load_18(output_differences_load_18_reg_1124),.output_differences_load_19(output_differences_load_19_reg_1129),.output_differences_load_20(output_differences_load_20_reg_1134),.output_differences_load_21(output_differences_load_21_reg_1139),.output_differences_load_22(output_differences_load_22_reg_1144),.output_differences_load_23(output_differences_load_23_reg_1149),.output_differences_load_24(output_differences_load_24_reg_1154),.output_differences_load_25(output_differences_load_25_reg_1159),.output_differences_load_26(output_differences_load_26_reg_1164),.output_differences_load_27(output_differences_load_27_reg_1169),.output_differences_load_28(output_differences_load_28_reg_1174),.output_differences_load_29(output_differences_load_29_reg_1179),.output_differences_load_30(output_differences_load_30_reg_1269),.output_differences_load_31(output_differences_load_31_reg_1274),.output_differences_load_32(output_differences_load_32_reg_1279),.output_differences_load_33(output_differences_load_33_reg_1284),.output_differences_load_34(output_differences_load_34_reg_1289),.output_differences_load_35(output_differences_load_35_reg_1294),.output_differences_load_36(output_differences_load_36_reg_1299),.output_differences_load_37(output_differences_load_37_reg_1304),.output_differences_load_38(output_differences_load_38_reg_1309),.output_differences_load_39(output_differences_load_39_reg_1314),.output_differences_load_40(output_differences_load_40_reg_1319),.output_differences_load_41(output_differences_load_41_reg_1324),.output_differences_load_42(output_differences_load_42_reg_1329),.output_differences_load_43(output_differences_load_43_reg_1334),.output_differences_load_44(output_differences_load_44_reg_1339),.output_differences_load_45(output_differences_load_45_reg_1344),.output_differences_load_46(output_differences_load_46_reg_1349),.output_differences_load_47(output_differences_load_47_reg_1439),.output_differences_load_48(output_differences_load_48_reg_1444),.output_differences_load_49(output_differences_load_49_reg_1449),.output_differences_load_50(output_differences_load_50_reg_1454),.output_differences_load_51(output_differences_load_51_reg_1459),.output_differences_load_52(output_differences_load_52_reg_1464),.output_differences_load_53(output_differences_load_53_reg_1469),.output_differences_load_54(output_differences_load_54_reg_1474),.output_differences_load_55(output_differences_load_55_reg_1479),.output_differences_load_56(output_differences_load_56_reg_1484),.output_differences_load_57(output_differences_load_57_reg_1489),.output_differences_load_58(output_differences_load_58_reg_1494),.output_differences_load_59(output_differences_load_59_reg_1499),.output_differences_load_60(output_differences_load_60_reg_1504),.output_differences_load_61(output_differences_load_61_reg_1509),.output_differences_load_62(output_differences_load_62_reg_1514),.output_differences_load_63(output_differences_load_63_reg_1519),.dactivations_address0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_dactivations_address0),.dactivations_ce0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_dactivations_ce0),.dactivations_q0(dactivations_q0),.grp_fu_1524_p_din0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1524_p_din0),.grp_fu_1524_p_din1(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1524_p_din1),.grp_fu_1524_p_opcode(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1524_p_opcode),.grp_fu_1524_p_dout0(grp_fu_3291_p_dout0),.grp_fu_1524_p_ce(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1524_p_ce),.grp_fu_1528_p_din0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1528_p_din0),.grp_fu_1528_p_din1(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1528_p_din1),.grp_fu_1528_p_opcode(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1528_p_opcode),.grp_fu_1528_p_dout0(grp_fu_3295_p_dout0),.grp_fu_1528_p_ce(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1528_p_ce),.grp_fu_1532_p_din0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1532_p_din0),.grp_fu_1532_p_din1(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1532_p_din1),.grp_fu_1532_p_dout0(grp_fu_3151_p_dout0),.grp_fu_1532_p_ce(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1532_p_ce),.grp_fu_1536_p_din0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1536_p_din0),.grp_fu_1536_p_din1(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1536_p_din1),.grp_fu_1536_p_dout0(grp_fu_3155_p_dout0),.grp_fu_1536_p_ce(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1536_p_ce),.grp_fu_1540_p_din0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1540_p_din0),.grp_fu_1540_p_din1(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1540_p_din1),.grp_fu_1540_p_dout0(grp_fu_3159_p_dout0),.grp_fu_1540_p_ce(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1540_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_start_reg <= 1'b1;
        end else if ((grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_ready == 1'b1)) begin
            grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_load_10_reg_999 <= output_differences_q2;
        output_differences_load_11_reg_1004 <= output_differences_q1;
        output_differences_load_12_reg_1009 <= output_differences_q0;
        output_differences_load_1_reg_954 <= output_differences_q11;
        output_differences_load_2_reg_959 <= output_differences_q10;
        output_differences_load_3_reg_964 <= output_differences_q9;
        output_differences_load_4_reg_969 <= output_differences_q8;
        output_differences_load_5_reg_974 <= output_differences_q7;
        output_differences_load_6_reg_979 <= output_differences_q6;
        output_differences_load_7_reg_984 <= output_differences_q5;
        output_differences_load_8_reg_989 <= output_differences_q4;
        output_differences_load_9_reg_994 <= output_differences_q3;
        output_differences_load_reg_949 <= output_differences_q12;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_load_13_reg_1099 <= output_differences_q16;
        output_differences_load_14_reg_1104 <= output_differences_q15;
        output_differences_load_15_reg_1109 <= output_differences_q14;
        output_differences_load_16_reg_1114 <= output_differences_q13;
        output_differences_load_17_reg_1119 <= output_differences_q12;
        output_differences_load_18_reg_1124 <= output_differences_q11;
        output_differences_load_19_reg_1129 <= output_differences_q10;
        output_differences_load_20_reg_1134 <= output_differences_q9;
        output_differences_load_21_reg_1139 <= output_differences_q8;
        output_differences_load_22_reg_1144 <= output_differences_q7;
        output_differences_load_23_reg_1149 <= output_differences_q6;
        output_differences_load_24_reg_1154 <= output_differences_q5;
        output_differences_load_25_reg_1159 <= output_differences_q4;
        output_differences_load_26_reg_1164 <= output_differences_q3;
        output_differences_load_27_reg_1169 <= output_differences_q2;
        output_differences_load_28_reg_1174 <= output_differences_q1;
        output_differences_load_29_reg_1179 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_load_30_reg_1269 <= output_differences_q1;
        output_differences_load_31_reg_1274 <= output_differences_q2;
        output_differences_load_32_reg_1279 <= output_differences_q3;
        output_differences_load_33_reg_1284 <= output_differences_q4;
        output_differences_load_34_reg_1289 <= output_differences_q5;
        output_differences_load_35_reg_1294 <= output_differences_q6;
        output_differences_load_36_reg_1299 <= output_differences_q7;
        output_differences_load_37_reg_1304 <= output_differences_q0;
        output_differences_load_38_reg_1309 <= output_differences_q9;
        output_differences_load_39_reg_1314 <= output_differences_q10;
        output_differences_load_40_reg_1319 <= output_differences_q11;
        output_differences_load_41_reg_1324 <= output_differences_q12;
        output_differences_load_42_reg_1329 <= output_differences_q8;
        output_differences_load_43_reg_1334 <= output_differences_q13;
        output_differences_load_44_reg_1339 <= output_differences_q14;
        output_differences_load_45_reg_1344 <= output_differences_q15;
        output_differences_load_46_reg_1349 <= output_differences_q16;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        output_differences_load_47_reg_1439 <= output_differences_q1;
        output_differences_load_48_reg_1444 <= output_differences_q2;
        output_differences_load_49_reg_1449 <= output_differences_q3;
        output_differences_load_50_reg_1454 <= output_differences_q4;
        output_differences_load_51_reg_1459 <= output_differences_q5;
        output_differences_load_52_reg_1464 <= output_differences_q6;
        output_differences_load_53_reg_1469 <= output_differences_q7;
        output_differences_load_54_reg_1474 <= output_differences_q0;
        output_differences_load_55_reg_1479 <= output_differences_q9;
        output_differences_load_56_reg_1484 <= output_differences_q10;
        output_differences_load_57_reg_1489 <= output_differences_q11;
        output_differences_load_58_reg_1494 <= output_differences_q12;
        output_differences_load_59_reg_1499 <= output_differences_q8;
        output_differences_load_60_reg_1504 <= output_differences_q13;
        output_differences_load_61_reg_1509 <= output_differences_q14;
        output_differences_load_62_reg_1514 <= output_differences_q15;
        output_differences_load_63_reg_1519 <= output_differences_q16;
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
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1524_ce = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1524_p_ce;
    end else begin
        grp_fu_1524_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1528_ce = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1528_p_ce;
    end else begin
        grp_fu_1528_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1532_ce = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1532_p_ce;
    end else begin
        grp_fu_1532_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1536_ce = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1536_p_ce;
    end else begin
        grp_fu_1536_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1540_ce = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1540_p_ce;
    end else begin
        grp_fu_1540_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address0_local = 64'd54;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_address0_local = 64'd12;
    end else begin
        output_differences_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address10_local = 64'd56;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address10_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address10_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_address10_local = 64'd2;
    end else begin
        output_differences_address10_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address11_local = 64'd57;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address11_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address11_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_address11_local = 64'd1;
    end else begin
        output_differences_address11_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address12_local = 64'd58;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address12_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address12_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_address12_local = 64'd0;
    end else begin
        output_differences_address12_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address13_local = 64'd60;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address13_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address13_local = 64'd16;
    end else begin
        output_differences_address13_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address14_local = 64'd61;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address14_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address14_local = 64'd15;
    end else begin
        output_differences_address14_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address15_local = 64'd62;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address15_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address15_local = 64'd14;
    end else begin
        output_differences_address15_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address16_local = 64'd63;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address16_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address16_local = 64'd13;
    end else begin
        output_differences_address16_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address1_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_address1_local = 64'd11;
    end else begin
        output_differences_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address2_local = 64'd48;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address2_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address2_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_address2_local = 64'd10;
    end else begin
        output_differences_address2_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address3_local = 64'd49;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address3_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address3_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_address3_local = 64'd9;
    end else begin
        output_differences_address3_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address4_local = 64'd50;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address4_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address4_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_address4_local = 64'd8;
    end else begin
        output_differences_address4_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address5_local = 64'd51;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address5_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address5_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_address5_local = 64'd7;
    end else begin
        output_differences_address5_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address6_local = 64'd52;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address6_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address6_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_address6_local = 64'd6;
    end else begin
        output_differences_address6_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address7_local = 64'd53;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address7_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address7_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_address7_local = 64'd5;
    end else begin
        output_differences_address7_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address8_local = 64'd59;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address8_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address8_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_address8_local = 64'd4;
    end else begin
        output_differences_address8_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address9_local = 64'd55;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address9_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address9_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_address9_local = 64'd3;
    end else begin
        output_differences_address9_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_ce0_local = 1'b1;
    end else begin
        output_differences_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_ce10_local = 1'b1;
    end else begin
        output_differences_ce10_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_ce11_local = 1'b1;
    end else begin
        output_differences_ce11_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_ce12_local = 1'b1;
    end else begin
        output_differences_ce12_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        output_differences_ce13_local = 1'b1;
    end else begin
        output_differences_ce13_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        output_differences_ce14_local = 1'b1;
    end else begin
        output_differences_ce14_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        output_differences_ce15_local = 1'b1;
    end else begin
        output_differences_ce15_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        output_differences_ce16_local = 1'b1;
    end else begin
        output_differences_ce16_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_ce1_local = 1'b1;
    end else begin
        output_differences_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_ce2_local = 1'b1;
    end else begin
        output_differences_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_ce3_local = 1'b1;
    end else begin
        output_differences_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_ce4_local = 1'b1;
    end else begin
        output_differences_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_ce5_local = 1'b1;
    end else begin
        output_differences_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_ce6_local = 1'b1;
    end else begin
        output_differences_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_ce7_local = 1'b1;
    end else begin
        output_differences_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_ce8_local = 1'b1;
    end else begin
        output_differences_ce8_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        output_differences_ce9_local = 1'b1;
    end else begin
        output_differences_ce9_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
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
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign dactivations_address0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_dactivations_address0;
assign dactivations_ce0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_dactivations_ce0;
assign grp_fu_3151_p_ce = grp_fu_1532_ce;
assign grp_fu_3151_p_din0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1532_p_din0;
assign grp_fu_3151_p_din1 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1532_p_din1;
assign grp_fu_3155_p_ce = grp_fu_1536_ce;
assign grp_fu_3155_p_din0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1536_p_din0;
assign grp_fu_3155_p_din1 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1536_p_din1;
assign grp_fu_3159_p_ce = grp_fu_1540_ce;
assign grp_fu_3159_p_din0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1540_p_din0;
assign grp_fu_3159_p_din1 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1540_p_din1;
assign grp_fu_3291_p_ce = grp_fu_1524_ce;
assign grp_fu_3291_p_din0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1524_p_din0;
assign grp_fu_3291_p_din1 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1524_p_din1;
assign grp_fu_3291_p_opcode = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1524_p_opcode;
assign grp_fu_3295_p_ce = grp_fu_1528_ce;
assign grp_fu_3295_p_din0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1528_p_din0;
assign grp_fu_3295_p_din1 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1528_p_din1;
assign grp_fu_3295_p_opcode = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_grp_fu_1528_p_opcode;
assign grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_start = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_ap_start_reg;
assign oracle_activations_address0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_oracle_activations_address0;
assign oracle_activations_ce0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_oracle_activations_ce0;
assign oracle_activations_d0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_oracle_activations_d0;
assign oracle_activations_we0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_oracle_activations_we0;
assign output_differences_address0 = output_differences_address0_local;
assign output_differences_address1 = output_differences_address1_local;
assign output_differences_address10 = output_differences_address10_local;
assign output_differences_address11 = output_differences_address11_local;
assign output_differences_address12 = output_differences_address12_local;
assign output_differences_address13 = output_differences_address13_local;
assign output_differences_address14 = output_differences_address14_local;
assign output_differences_address15 = output_differences_address15_local;
assign output_differences_address16 = output_differences_address16_local;
assign output_differences_address2 = output_differences_address2_local;
assign output_differences_address3 = output_differences_address3_local;
assign output_differences_address4 = output_differences_address4_local;
assign output_differences_address5 = output_differences_address5_local;
assign output_differences_address6 = output_differences_address6_local;
assign output_differences_address7 = output_differences_address7_local;
assign output_differences_address8 = output_differences_address8_local;
assign output_differences_address9 = output_differences_address9_local;
assign output_differences_ce0 = output_differences_ce0_local;
assign output_differences_ce1 = output_differences_ce1_local;
assign output_differences_ce10 = output_differences_ce10_local;
assign output_differences_ce11 = output_differences_ce11_local;
assign output_differences_ce12 = output_differences_ce12_local;
assign output_differences_ce13 = output_differences_ce13_local;
assign output_differences_ce14 = output_differences_ce14_local;
assign output_differences_ce15 = output_differences_ce15_local;
assign output_differences_ce16 = output_differences_ce16_local;
assign output_differences_ce2 = output_differences_ce2_local;
assign output_differences_ce3 = output_differences_ce3_local;
assign output_differences_ce4 = output_differences_ce4_local;
assign output_differences_ce5 = output_differences_ce5_local;
assign output_differences_ce6 = output_differences_ce6_local;
assign output_differences_ce7 = output_differences_ce7_local;
assign output_differences_ce8 = output_differences_ce8_local;
assign output_differences_ce9 = output_differences_ce9_local;
assign weights2_address0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_weights2_address0;
assign weights2_address1 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_weights2_address1;
assign weights2_ce0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_weights2_ce0;
assign weights2_ce1 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_793_weights2_ce1;
endmodule 