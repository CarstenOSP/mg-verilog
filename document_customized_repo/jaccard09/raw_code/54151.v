module backprop_get_oracle_activations1_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_address0,weights2_ce0,weights2_q0,weights2_address1,weights2_ce1,weights2_q1,output_differences_address0,output_differences_ce0,output_differences_q0,output_differences_address1,output_differences_ce1,output_differences_q1,oracle_activations_address0,oracle_activations_ce0,oracle_activations_we0,oracle_activations_d0,dactivations_address0,dactivations_ce0,dactivations_q0,grp_fu_3291_p_din0,grp_fu_3291_p_din1,grp_fu_3291_p_opcode,grp_fu_3291_p_dout0,grp_fu_3291_p_ce,grp_fu_3295_p_din0,grp_fu_3295_p_din1,grp_fu_3295_p_opcode,grp_fu_3295_p_dout0,grp_fu_3295_p_ce,grp_fu_3151_p_din0,grp_fu_3151_p_din1,grp_fu_3151_p_dout0,grp_fu_3151_p_ce,grp_fu_3155_p_din0,grp_fu_3155_p_din1,grp_fu_3155_p_dout0,grp_fu_3155_p_ce,grp_fu_3159_p_din0,grp_fu_3159_p_din1,grp_fu_3159_p_dout0,grp_fu_3159_p_ce); 
parameter    ap_ST_fsm_state1 = 34'd1;
parameter    ap_ST_fsm_state2 = 34'd2;
parameter    ap_ST_fsm_state3 = 34'd4;
parameter    ap_ST_fsm_state4 = 34'd8;
parameter    ap_ST_fsm_state5 = 34'd16;
parameter    ap_ST_fsm_state6 = 34'd32;
parameter    ap_ST_fsm_state7 = 34'd64;
parameter    ap_ST_fsm_state8 = 34'd128;
parameter    ap_ST_fsm_state9 = 34'd256;
parameter    ap_ST_fsm_state10 = 34'd512;
parameter    ap_ST_fsm_state11 = 34'd1024;
parameter    ap_ST_fsm_state12 = 34'd2048;
parameter    ap_ST_fsm_state13 = 34'd4096;
parameter    ap_ST_fsm_state14 = 34'd8192;
parameter    ap_ST_fsm_state15 = 34'd16384;
parameter    ap_ST_fsm_state16 = 34'd32768;
parameter    ap_ST_fsm_state17 = 34'd65536;
parameter    ap_ST_fsm_state18 = 34'd131072;
parameter    ap_ST_fsm_state19 = 34'd262144;
parameter    ap_ST_fsm_state20 = 34'd524288;
parameter    ap_ST_fsm_state21 = 34'd1048576;
parameter    ap_ST_fsm_state22 = 34'd2097152;
parameter    ap_ST_fsm_state23 = 34'd4194304;
parameter    ap_ST_fsm_state24 = 34'd8388608;
parameter    ap_ST_fsm_state25 = 34'd16777216;
parameter    ap_ST_fsm_state26 = 34'd33554432;
parameter    ap_ST_fsm_state27 = 34'd67108864;
parameter    ap_ST_fsm_state28 = 34'd134217728;
parameter    ap_ST_fsm_state29 = 34'd268435456;
parameter    ap_ST_fsm_state30 = 34'd536870912;
parameter    ap_ST_fsm_state31 = 34'd1073741824;
parameter    ap_ST_fsm_state32 = 34'd2147483648;
parameter    ap_ST_fsm_state33 = 34'd4294967296;
parameter    ap_ST_fsm_state34 = 34'd8589934592;
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
(* fsm_encoding = "none" *) reg   [33:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_differences_load_reg_819;
wire    ap_CS_fsm_state2;
reg   [63:0] output_differences_load_1_reg_824;
reg   [63:0] output_differences_load_2_reg_839;
wire    ap_CS_fsm_state3;
reg   [63:0] output_differences_load_3_reg_844;
reg   [63:0] output_differences_load_4_reg_859;
wire    ap_CS_fsm_state4;
reg   [63:0] output_differences_load_5_reg_864;
reg   [63:0] output_differences_load_6_reg_879;
wire    ap_CS_fsm_state5;
reg   [63:0] output_differences_load_7_reg_884;
reg   [63:0] output_differences_load_8_reg_899;
wire    ap_CS_fsm_state6;
reg   [63:0] output_differences_load_9_reg_904;
reg   [63:0] output_differences_load_10_reg_919;
wire    ap_CS_fsm_state7;
reg   [63:0] output_differences_load_11_reg_924;
reg   [63:0] output_differences_load_12_reg_939;
wire    ap_CS_fsm_state8;
reg   [63:0] output_differences_load_13_reg_944;
reg   [63:0] output_differences_load_14_reg_959;
wire    ap_CS_fsm_state9;
reg   [63:0] output_differences_load_15_reg_964;
reg   [63:0] output_differences_load_16_reg_979;
wire    ap_CS_fsm_state10;
reg   [63:0] output_differences_load_17_reg_984;
reg   [63:0] output_differences_load_18_reg_999;
wire    ap_CS_fsm_state11;
reg   [63:0] output_differences_load_19_reg_1004;
reg   [63:0] output_differences_load_20_reg_1019;
wire    ap_CS_fsm_state12;
reg   [63:0] output_differences_load_21_reg_1024;
reg   [63:0] output_differences_load_22_reg_1039;
wire    ap_CS_fsm_state13;
reg   [63:0] output_differences_load_23_reg_1044;
reg   [63:0] output_differences_load_24_reg_1059;
wire    ap_CS_fsm_state14;
reg   [63:0] output_differences_load_25_reg_1064;
reg   [63:0] output_differences_load_26_reg_1079;
wire    ap_CS_fsm_state15;
reg   [63:0] output_differences_load_27_reg_1084;
reg   [63:0] output_differences_load_28_reg_1099;
wire    ap_CS_fsm_state16;
reg   [63:0] output_differences_load_29_reg_1104;
reg   [63:0] output_differences_load_30_reg_1119;
wire    ap_CS_fsm_state17;
reg   [63:0] output_differences_load_31_reg_1124;
reg   [63:0] output_differences_load_32_reg_1139;
wire    ap_CS_fsm_state18;
reg   [63:0] output_differences_load_33_reg_1144;
reg   [63:0] output_differences_load_34_reg_1159;
wire    ap_CS_fsm_state19;
reg   [63:0] output_differences_load_35_reg_1164;
reg   [63:0] output_differences_load_36_reg_1179;
wire    ap_CS_fsm_state20;
reg   [63:0] output_differences_load_37_reg_1184;
reg   [63:0] output_differences_load_38_reg_1199;
wire    ap_CS_fsm_state21;
reg   [63:0] output_differences_load_39_reg_1204;
reg   [63:0] output_differences_load_40_reg_1219;
wire    ap_CS_fsm_state22;
reg   [63:0] output_differences_load_41_reg_1224;
reg   [63:0] output_differences_load_42_reg_1239;
wire    ap_CS_fsm_state23;
reg   [63:0] output_differences_load_43_reg_1244;
reg   [63:0] output_differences_load_44_reg_1259;
wire    ap_CS_fsm_state24;
reg   [63:0] output_differences_load_45_reg_1264;
reg   [63:0] output_differences_load_46_reg_1279;
wire    ap_CS_fsm_state25;
reg   [63:0] output_differences_load_47_reg_1284;
reg   [63:0] output_differences_load_48_reg_1299;
wire    ap_CS_fsm_state26;
reg   [63:0] output_differences_load_49_reg_1304;
reg   [63:0] output_differences_load_50_reg_1319;
wire    ap_CS_fsm_state27;
reg   [63:0] output_differences_load_51_reg_1324;
reg   [63:0] output_differences_load_52_reg_1339;
wire    ap_CS_fsm_state28;
reg   [63:0] output_differences_load_53_reg_1344;
reg   [63:0] output_differences_load_54_reg_1359;
wire    ap_CS_fsm_state29;
reg   [63:0] output_differences_load_55_reg_1364;
reg   [63:0] output_differences_load_56_reg_1379;
wire    ap_CS_fsm_state30;
reg   [63:0] output_differences_load_57_reg_1384;
reg   [63:0] output_differences_load_58_reg_1399;
wire    ap_CS_fsm_state31;
reg   [63:0] output_differences_load_59_reg_1404;
reg   [63:0] output_differences_load_60_reg_1419;
wire    ap_CS_fsm_state32;
reg   [63:0] output_differences_load_61_reg_1424;
reg   [63:0] output_differences_load_62_reg_1439;
wire    ap_CS_fsm_state33;
reg   [63:0] output_differences_load_63_reg_1444;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_start;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_done;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_idle;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_ready;
wire   [5:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_oracle_activations_address0;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_oracle_activations_ce0;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_oracle_activations_we0;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_oracle_activations_d0;
wire   [11:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_weights2_address0;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_weights2_ce0;
wire   [11:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_weights2_address1;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_weights2_ce1;
wire   [5:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_dactivations_address0;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_dactivations_ce0;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1449_p_din0;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1449_p_din1;
wire   [0:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1449_p_opcode;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1449_p_ce;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1453_p_din0;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1453_p_din1;
wire   [0:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1453_p_opcode;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1453_p_ce;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1457_p_din0;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1457_p_din1;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1457_p_ce;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1461_p_din0;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1461_p_din1;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1461_p_ce;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1465_p_din0;
wire   [63:0] grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1465_p_din1;
wire    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1465_p_ce;
reg    grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_start_reg;
wire    ap_CS_fsm_state34;
reg    output_differences_ce1_local;
reg   [5:0] output_differences_address1_local;
reg    output_differences_ce0_local;
reg   [5:0] output_differences_address0_local;
reg    grp_fu_1449_ce;
reg    grp_fu_1453_ce;
reg    grp_fu_1457_ce;
reg    grp_fu_1461_ce;
reg    grp_fu_1465_ce;
reg   [33:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
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
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
wire    ap_ST_fsm_state31_blk;
wire    ap_ST_fsm_state32_blk;
wire    ap_ST_fsm_state33_blk;
reg    ap_ST_fsm_state34_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 34'd1;
#0 grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_start_reg = 1'b0;
end
backprop_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1 grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_start),.ap_done(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_done),.ap_idle(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_idle),.ap_ready(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_ready),.oracle_activations_address0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_oracle_activations_address0),.oracle_activations_ce0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_oracle_activations_ce0),.oracle_activations_we0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_oracle_activations_we0),.oracle_activations_d0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_oracle_activations_d0),.weights2_address0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_weights2_address0),.weights2_ce0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_weights2_ce0),.weights2_q0(weights2_q0),.weights2_address1(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_weights2_address1),.weights2_ce1(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_weights2_ce1),.weights2_q1(weights2_q1),.output_differences_load(output_differences_load_reg_819),.output_differences_load_1(output_differences_load_1_reg_824),.output_differences_load_2(output_differences_load_2_reg_839),.output_differences_load_3(output_differences_load_3_reg_844),.output_differences_load_4(output_differences_load_4_reg_859),.output_differences_load_5(output_differences_load_5_reg_864),.output_differences_load_6(output_differences_load_6_reg_879),.output_differences_load_7(output_differences_load_7_reg_884),.output_differences_load_8(output_differences_load_8_reg_899),.output_differences_load_9(output_differences_load_9_reg_904),.output_differences_load_10(output_differences_load_10_reg_919),.output_differences_load_11(output_differences_load_11_reg_924),.output_differences_load_12(output_differences_load_12_reg_939),.output_differences_load_13(output_differences_load_13_reg_944),.output_differences_load_14(output_differences_load_14_reg_959),.output_differences_load_15(output_differences_load_15_reg_964),.output_differences_load_16(output_differences_load_16_reg_979),.output_differences_load_17(output_differences_load_17_reg_984),.output_differences_load_18(output_differences_load_18_reg_999),.output_differences_load_19(output_differences_load_19_reg_1004),.output_differences_load_20(output_differences_load_20_reg_1019),.output_differences_load_21(output_differences_load_21_reg_1024),.output_differences_load_22(output_differences_load_22_reg_1039),.output_differences_load_23(output_differences_load_23_reg_1044),.output_differences_load_24(output_differences_load_24_reg_1059),.output_differences_load_25(output_differences_load_25_reg_1064),.output_differences_load_26(output_differences_load_26_reg_1079),.output_differences_load_27(output_differences_load_27_reg_1084),.output_differences_load_28(output_differences_load_28_reg_1099),.output_differences_load_29(output_differences_load_29_reg_1104),.output_differences_load_30(output_differences_load_30_reg_1119),.output_differences_load_31(output_differences_load_31_reg_1124),.output_differences_load_32(output_differences_load_32_reg_1139),.output_differences_load_33(output_differences_load_33_reg_1144),.output_differences_load_34(output_differences_load_34_reg_1159),.output_differences_load_35(output_differences_load_35_reg_1164),.output_differences_load_36(output_differences_load_36_reg_1179),.output_differences_load_37(output_differences_load_37_reg_1184),.output_differences_load_38(output_differences_load_38_reg_1199),.output_differences_load_39(output_differences_load_39_reg_1204),.output_differences_load_40(output_differences_load_40_reg_1219),.output_differences_load_41(output_differences_load_41_reg_1224),.output_differences_load_42(output_differences_load_42_reg_1239),.output_differences_load_43(output_differences_load_43_reg_1244),.output_differences_load_44(output_differences_load_44_reg_1259),.output_differences_load_45(output_differences_load_45_reg_1264),.output_differences_load_46(output_differences_load_46_reg_1279),.output_differences_load_47(output_differences_load_47_reg_1284),.output_differences_load_48(output_differences_load_48_reg_1299),.output_differences_load_49(output_differences_load_49_reg_1304),.output_differences_load_50(output_differences_load_50_reg_1319),.output_differences_load_51(output_differences_load_51_reg_1324),.output_differences_load_52(output_differences_load_52_reg_1339),.output_differences_load_53(output_differences_load_53_reg_1344),.output_differences_load_54(output_differences_load_54_reg_1359),.output_differences_load_55(output_differences_load_55_reg_1364),.output_differences_load_56(output_differences_load_56_reg_1379),.output_differences_load_57(output_differences_load_57_reg_1384),.output_differences_load_58(output_differences_load_58_reg_1399),.output_differences_load_59(output_differences_load_59_reg_1404),.output_differences_load_60(output_differences_load_60_reg_1419),.output_differences_load_61(output_differences_load_61_reg_1424),.output_differences_load_62(output_differences_load_62_reg_1439),.output_differences_load_63(output_differences_load_63_reg_1444),.dactivations_address0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_dactivations_address0),.dactivations_ce0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_dactivations_ce0),.dactivations_q0(dactivations_q0),.grp_fu_1449_p_din0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1449_p_din0),.grp_fu_1449_p_din1(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1449_p_din1),.grp_fu_1449_p_opcode(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1449_p_opcode),.grp_fu_1449_p_dout0(grp_fu_3291_p_dout0),.grp_fu_1449_p_ce(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1449_p_ce),.grp_fu_1453_p_din0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1453_p_din0),.grp_fu_1453_p_din1(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1453_p_din1),.grp_fu_1453_p_opcode(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1453_p_opcode),.grp_fu_1453_p_dout0(grp_fu_3295_p_dout0),.grp_fu_1453_p_ce(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1453_p_ce),.grp_fu_1457_p_din0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1457_p_din0),.grp_fu_1457_p_din1(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1457_p_din1),.grp_fu_1457_p_dout0(grp_fu_3151_p_dout0),.grp_fu_1457_p_ce(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1457_p_ce),.grp_fu_1461_p_din0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1461_p_din0),.grp_fu_1461_p_din1(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1461_p_din1),.grp_fu_1461_p_dout0(grp_fu_3155_p_dout0),.grp_fu_1461_p_ce(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1461_p_ce),.grp_fu_1465_p_din0(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1465_p_din0),.grp_fu_1465_p_din1(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1465_p_din1),.grp_fu_1465_p_dout0(grp_fu_3159_p_dout0),.grp_fu_1465_p_ce(grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1465_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state33)) begin
            grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_start_reg <= 1'b1;
        end else if ((grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_ready == 1'b1)) begin
            grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        output_differences_load_10_reg_919 <= output_differences_q1;
        output_differences_load_11_reg_924 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_differences_load_12_reg_939 <= output_differences_q1;
        output_differences_load_13_reg_944 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        output_differences_load_14_reg_959 <= output_differences_q1;
        output_differences_load_15_reg_964 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        output_differences_load_16_reg_979 <= output_differences_q1;
        output_differences_load_17_reg_984 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        output_differences_load_18_reg_999 <= output_differences_q1;
        output_differences_load_19_reg_1004 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_load_1_reg_824 <= output_differences_q0;
        output_differences_load_reg_819 <= output_differences_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        output_differences_load_20_reg_1019 <= output_differences_q1;
        output_differences_load_21_reg_1024 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        output_differences_load_22_reg_1039 <= output_differences_q1;
        output_differences_load_23_reg_1044 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        output_differences_load_24_reg_1059 <= output_differences_q1;
        output_differences_load_25_reg_1064 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        output_differences_load_26_reg_1079 <= output_differences_q1;
        output_differences_load_27_reg_1084 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        output_differences_load_28_reg_1099 <= output_differences_q1;
        output_differences_load_29_reg_1104 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_load_2_reg_839 <= output_differences_q1;
        output_differences_load_3_reg_844 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        output_differences_load_30_reg_1119 <= output_differences_q1;
        output_differences_load_31_reg_1124 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        output_differences_load_32_reg_1139 <= output_differences_q1;
        output_differences_load_33_reg_1144 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        output_differences_load_34_reg_1159 <= output_differences_q1;
        output_differences_load_35_reg_1164 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        output_differences_load_36_reg_1179 <= output_differences_q1;
        output_differences_load_37_reg_1184 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        output_differences_load_38_reg_1199 <= output_differences_q1;
        output_differences_load_39_reg_1204 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        output_differences_load_40_reg_1219 <= output_differences_q1;
        output_differences_load_41_reg_1224 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        output_differences_load_42_reg_1239 <= output_differences_q1;
        output_differences_load_43_reg_1244 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        output_differences_load_44_reg_1259 <= output_differences_q1;
        output_differences_load_45_reg_1264 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        output_differences_load_46_reg_1279 <= output_differences_q1;
        output_differences_load_47_reg_1284 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        output_differences_load_48_reg_1299 <= output_differences_q1;
        output_differences_load_49_reg_1304 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_load_4_reg_859 <= output_differences_q1;
        output_differences_load_5_reg_864 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        output_differences_load_50_reg_1319 <= output_differences_q1;
        output_differences_load_51_reg_1324 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        output_differences_load_52_reg_1339 <= output_differences_q1;
        output_differences_load_53_reg_1344 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        output_differences_load_54_reg_1359 <= output_differences_q1;
        output_differences_load_55_reg_1364 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        output_differences_load_56_reg_1379 <= output_differences_q1;
        output_differences_load_57_reg_1384 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        output_differences_load_58_reg_1399 <= output_differences_q1;
        output_differences_load_59_reg_1404 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        output_differences_load_60_reg_1419 <= output_differences_q1;
        output_differences_load_61_reg_1424 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        output_differences_load_62_reg_1439 <= output_differences_q1;
        output_differences_load_63_reg_1444 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        output_differences_load_6_reg_879 <= output_differences_q1;
        output_differences_load_7_reg_884 <= output_differences_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        output_differences_load_8_reg_899 <= output_differences_q1;
        output_differences_load_9_reg_904 <= output_differences_q0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
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
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state30_blk = 1'b0;
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
assign ap_ST_fsm_state33_blk = 1'b0;
always @ (*) begin
    if ((grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_done == 1'b0)) begin
        ap_ST_fsm_state34_blk = 1'b1;
    end else begin
        ap_ST_fsm_state34_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state34)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state34))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1449_ce = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1449_p_ce;
    end else begin
        grp_fu_1449_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1453_ce = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1453_p_ce;
    end else begin
        grp_fu_1453_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1457_ce = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1457_p_ce;
    end else begin
        grp_fu_1457_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1461_ce = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1461_p_ce;
    end else begin
        grp_fu_1461_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_1465_ce = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1465_p_ce;
    end else begin
        grp_fu_1465_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        output_differences_address0_local = 64'd63;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        output_differences_address0_local = 64'd61;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        output_differences_address0_local = 64'd59;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        output_differences_address0_local = 64'd57;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        output_differences_address0_local = 64'd55;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        output_differences_address0_local = 64'd53;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        output_differences_address0_local = 64'd51;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        output_differences_address0_local = 64'd49;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        output_differences_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        output_differences_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        output_differences_address0_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        output_differences_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        output_differences_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        output_differences_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        output_differences_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        output_differences_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        output_differences_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        output_differences_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        output_differences_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        output_differences_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        output_differences_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_differences_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        output_differences_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        output_differences_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        output_differences_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_differences_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_differences_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_differences_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_address0_local = 64'd1;
    end else begin
        output_differences_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        output_differences_address1_local = 64'd62;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        output_differences_address1_local = 64'd60;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        output_differences_address1_local = 64'd58;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        output_differences_address1_local = 64'd56;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        output_differences_address1_local = 64'd54;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        output_differences_address1_local = 64'd52;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        output_differences_address1_local = 64'd50;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        output_differences_address1_local = 64'd48;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        output_differences_address1_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        output_differences_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        output_differences_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        output_differences_address1_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        output_differences_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        output_differences_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        output_differences_address1_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        output_differences_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        output_differences_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        output_differences_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        output_differences_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        output_differences_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        output_differences_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_differences_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        output_differences_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        output_differences_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        output_differences_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_differences_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_differences_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_differences_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_address1_local = 64'd0;
    end else begin
        output_differences_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_ce0_local = 1'b1;
    end else begin
        output_differences_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_ce1_local = 1'b1;
    end else begin
        output_differences_ce1_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
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
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            if (((grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state34))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state34;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_state34 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign dactivations_address0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_dactivations_address0;
assign dactivations_ce0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_dactivations_ce0;
assign grp_fu_3151_p_ce = grp_fu_1457_ce;
assign grp_fu_3151_p_din0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1457_p_din0;
assign grp_fu_3151_p_din1 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1457_p_din1;
assign grp_fu_3155_p_ce = grp_fu_1461_ce;
assign grp_fu_3155_p_din0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1461_p_din0;
assign grp_fu_3155_p_din1 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1461_p_din1;
assign grp_fu_3159_p_ce = grp_fu_1465_ce;
assign grp_fu_3159_p_din0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1465_p_din0;
assign grp_fu_3159_p_din1 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1465_p_din1;
assign grp_fu_3291_p_ce = grp_fu_1449_ce;
assign grp_fu_3291_p_din0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1449_p_din0;
assign grp_fu_3291_p_din1 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1449_p_din1;
assign grp_fu_3291_p_opcode = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1449_p_opcode;
assign grp_fu_3295_p_ce = grp_fu_1453_ce;
assign grp_fu_3295_p_din0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1453_p_din0;
assign grp_fu_3295_p_din1 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1453_p_din1;
assign grp_fu_3295_p_opcode = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_grp_fu_1453_p_opcode;
assign grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_start = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_ap_start_reg;
assign oracle_activations_address0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_oracle_activations_address0;
assign oracle_activations_ce0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_oracle_activations_ce0;
assign oracle_activations_d0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_oracle_activations_d0;
assign oracle_activations_we0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_oracle_activations_we0;
assign output_differences_address0 = output_differences_address0_local;
assign output_differences_address1 = output_differences_address1_local;
assign output_differences_ce0 = output_differences_ce0_local;
assign output_differences_ce1 = output_differences_ce1_local;
assign weights2_address0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_weights2_address0;
assign weights2_address1 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_weights2_address1;
assign weights2_ce0 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_weights2_ce0;
assign weights2_ce1 = grp_get_oracle_activations1_1_Pipeline_VITIS_LOOP_102_1_fu_733_weights2_ce1;
endmodule 