module backprop_get_delta_matrix_weights1_66_67_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_0_address1,delta_weights1_0_ce1,delta_weights1_0_we1,delta_weights1_0_d1,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,idx,grp_fu_2874_p_din0,grp_fu_2874_p_din1,grp_fu_2874_p_dout0,grp_fu_2874_p_ce,grp_fu_2878_p_din0,grp_fu_2878_p_din1,grp_fu_2878_p_dout0,grp_fu_2878_p_ce,grp_fu_2882_p_din0,grp_fu_2882_p_din1,grp_fu_2882_p_dout0,grp_fu_2882_p_ce,grp_fu_2886_p_din0,grp_fu_2886_p_din1,grp_fu_2886_p_dout0,grp_fu_2886_p_ce); 
parameter    ap_ST_fsm_state1 = 19'd1;
parameter    ap_ST_fsm_state2 = 19'd2;
parameter    ap_ST_fsm_state3 = 19'd4;
parameter    ap_ST_fsm_state4 = 19'd8;
parameter    ap_ST_fsm_state5 = 19'd16;
parameter    ap_ST_fsm_state6 = 19'd32;
parameter    ap_ST_fsm_state7 = 19'd64;
parameter    ap_ST_fsm_state8 = 19'd128;
parameter    ap_ST_fsm_state9 = 19'd256;
parameter    ap_ST_fsm_state10 = 19'd512;
parameter    ap_ST_fsm_state11 = 19'd1024;
parameter    ap_ST_fsm_state12 = 19'd2048;
parameter    ap_ST_fsm_state13 = 19'd4096;
parameter    ap_ST_fsm_state14 = 19'd8192;
parameter    ap_ST_fsm_state15 = 19'd16384;
parameter    ap_ST_fsm_state16 = 19'd32768;
parameter    ap_ST_fsm_state17 = 19'd65536;
parameter    ap_ST_fsm_state18 = 19'd131072;
parameter    ap_ST_fsm_state19 = 19'd262144;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] delta_weights1_0_address0;
output   delta_weights1_0_ce0;
output   delta_weights1_0_we0;
output  [63:0] delta_weights1_0_d0;
output  [8:0] delta_weights1_0_address1;
output   delta_weights1_0_ce1;
output   delta_weights1_0_we1;
output  [63:0] delta_weights1_0_d1;
output  [8:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [8:0] delta_weights1_1_address1;
output   delta_weights1_1_ce1;
output   delta_weights1_1_we1;
output  [63:0] delta_weights1_1_d1;
output  [4:0] output_difference_0_address0;
output   output_difference_0_ce0;
input  [63:0] output_difference_0_q0;
output  [4:0] output_difference_0_address1;
output   output_difference_0_ce1;
input  [63:0] output_difference_0_q1;
output  [4:0] output_difference_1_address0;
output   output_difference_1_ce0;
input  [63:0] output_difference_1_q0;
output  [4:0] output_difference_1_address1;
output   output_difference_1_ce1;
input  [63:0] output_difference_1_q1;
output  [10:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [10:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
input  [11:0] idx;
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
(* fsm_encoding = "none" *) reg   [18:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_difference_0_load_reg_790;
wire    ap_CS_fsm_state2;
reg   [63:0] output_difference_1_load_reg_795;
reg   [63:0] output_difference_0_load_32_reg_800;
reg   [63:0] output_difference_1_load_32_reg_805;
reg   [63:0] output_difference_0_load_33_reg_830;
wire    ap_CS_fsm_state3;
reg   [63:0] output_difference_1_load_33_reg_835;
reg   [63:0] output_difference_0_load_34_reg_840;
reg   [63:0] output_difference_1_load_34_reg_845;
reg   [63:0] output_difference_0_load_35_reg_870;
wire    ap_CS_fsm_state4;
reg   [63:0] output_difference_1_load_35_reg_875;
reg   [63:0] output_difference_0_load_36_reg_880;
reg   [63:0] output_difference_1_load_36_reg_885;
reg   [63:0] output_difference_0_load_37_reg_910;
wire    ap_CS_fsm_state5;
reg   [63:0] output_difference_1_load_37_reg_915;
reg   [63:0] output_difference_0_load_38_reg_920;
reg   [63:0] output_difference_1_load_38_reg_925;
reg   [63:0] output_difference_0_load_39_reg_950;
wire    ap_CS_fsm_state6;
reg   [63:0] output_difference_1_load_39_reg_955;
reg   [63:0] output_difference_0_load_40_reg_960;
reg   [63:0] output_difference_1_load_40_reg_965;
reg   [63:0] output_difference_0_load_41_reg_990;
wire    ap_CS_fsm_state7;
reg   [63:0] output_difference_1_load_41_reg_995;
reg   [63:0] output_difference_0_load_42_reg_1000;
reg   [63:0] output_difference_1_load_42_reg_1005;
reg   [63:0] output_difference_0_load_43_reg_1030;
wire    ap_CS_fsm_state8;
reg   [63:0] output_difference_1_load_43_reg_1035;
reg   [63:0] output_difference_0_load_44_reg_1040;
reg   [63:0] output_difference_1_load_44_reg_1045;
reg   [63:0] output_difference_0_load_45_reg_1070;
wire    ap_CS_fsm_state9;
reg   [63:0] output_difference_1_load_45_reg_1075;
reg   [63:0] output_difference_0_load_46_reg_1080;
reg   [63:0] output_difference_1_load_46_reg_1085;
reg   [63:0] output_difference_0_load_47_reg_1110;
wire    ap_CS_fsm_state10;
reg   [63:0] output_difference_1_load_47_reg_1115;
reg   [63:0] output_difference_0_load_48_reg_1120;
reg   [63:0] output_difference_1_load_48_reg_1125;
reg   [63:0] output_difference_0_load_49_reg_1150;
wire    ap_CS_fsm_state11;
reg   [63:0] output_difference_1_load_49_reg_1155;
reg   [63:0] output_difference_0_load_50_reg_1160;
reg   [63:0] output_difference_1_load_50_reg_1165;
reg   [63:0] output_difference_0_load_51_reg_1190;
wire    ap_CS_fsm_state12;
reg   [63:0] output_difference_1_load_51_reg_1195;
reg   [63:0] output_difference_0_load_52_reg_1200;
reg   [63:0] output_difference_1_load_52_reg_1205;
reg   [63:0] output_difference_0_load_53_reg_1230;
wire    ap_CS_fsm_state13;
reg   [63:0] output_difference_1_load_53_reg_1235;
reg   [63:0] output_difference_0_load_54_reg_1240;
reg   [63:0] output_difference_1_load_54_reg_1245;
reg   [63:0] output_difference_0_load_55_reg_1270;
wire    ap_CS_fsm_state14;
reg   [63:0] output_difference_1_load_55_reg_1275;
reg   [63:0] output_difference_0_load_56_reg_1280;
reg   [63:0] output_difference_1_load_56_reg_1285;
reg   [63:0] output_difference_0_load_57_reg_1310;
wire    ap_CS_fsm_state15;
reg   [63:0] output_difference_1_load_57_reg_1315;
reg   [63:0] output_difference_0_load_58_reg_1320;
reg   [63:0] output_difference_1_load_58_reg_1325;
reg   [63:0] output_difference_0_load_59_reg_1350;
wire    ap_CS_fsm_state16;
reg   [63:0] output_difference_1_load_59_reg_1355;
reg   [63:0] output_difference_0_load_60_reg_1360;
reg   [63:0] output_difference_1_load_60_reg_1365;
reg   [63:0] output_difference_0_load_61_reg_1390;
wire    ap_CS_fsm_state17;
reg   [63:0] output_difference_1_load_61_reg_1395;
reg   [63:0] output_difference_0_load_62_reg_1400;
reg   [63:0] output_difference_1_load_62_reg_1405;
wire    ap_CS_fsm_state18;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_start;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_done;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_idle;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_ready;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_d0;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_d1;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_ce0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_we0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_d0;
wire   [8:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_address1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_ce1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_we1;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_d1;
wire   [10:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_training_data_0_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_training_data_0_ce0;
wire   [10:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_training_data_1_address0;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_training_data_1_ce0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1415_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1415_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1415_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1419_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1419_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1419_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1423_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1423_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1423_p_ce;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1427_p_din0;
wire   [63:0] grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1427_p_din1;
wire    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1427_p_ce;
reg    grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_start_reg;
wire    ap_CS_fsm_state19;
reg    output_difference_0_ce1_local;
reg   [4:0] output_difference_0_address1_local;
reg    output_difference_0_ce0_local;
reg   [4:0] output_difference_0_address0_local;
reg    output_difference_1_ce1_local;
reg   [4:0] output_difference_1_address1_local;
reg    output_difference_1_ce0_local;
reg   [4:0] output_difference_1_address0_local;
reg    grp_fu_1415_ce;
reg    grp_fu_1419_ce;
reg    grp_fu_1423_ce;
reg    grp_fu_1427_ce;
reg   [18:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state19_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 19'd1;
#0 grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_start_reg = 1'b0;
end
backprop_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1 grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_start),.ap_done(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_done),.ap_idle(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_idle),.ap_ready(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_ready),.delta_weights1_1_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_address0),.delta_weights1_1_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_ce0),.delta_weights1_1_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_we0),.delta_weights1_1_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_d0),.delta_weights1_1_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_address1),.delta_weights1_1_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_ce1),.delta_weights1_1_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_we1),.delta_weights1_1_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_d1),.delta_weights1_0_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_address0),.delta_weights1_0_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_ce0),.delta_weights1_0_we0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_we0),.delta_weights1_0_d0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_d0),.delta_weights1_0_address1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_address1),.delta_weights1_0_ce1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_ce1),.delta_weights1_0_we1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_we1),.delta_weights1_0_d1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_d1),.idx(idx),.training_data_0_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_training_data_0_address0),.training_data_0_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_training_data_0_ce0),.training_data_0_q0(training_data_0_q0),.training_data_1_address0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_training_data_1_address0),.training_data_1_ce0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_training_data_1_ce0),.training_data_1_q0(training_data_1_q0),.output_difference_0_load(output_difference_0_load_reg_790),.output_difference_1_load(output_difference_1_load_reg_795),.output_difference_0_load_32(output_difference_0_load_32_reg_800),.output_difference_1_load_32(output_difference_1_load_32_reg_805),.output_difference_0_load_33(output_difference_0_load_33_reg_830),.output_difference_1_load_33(output_difference_1_load_33_reg_835),.output_difference_0_load_34(output_difference_0_load_34_reg_840),.output_difference_1_load_34(output_difference_1_load_34_reg_845),.output_difference_0_load_35(output_difference_0_load_35_reg_870),.output_difference_1_load_35(output_difference_1_load_35_reg_875),.output_difference_0_load_36(output_difference_0_load_36_reg_880),.output_difference_1_load_36(output_difference_1_load_36_reg_885),.output_difference_0_load_37(output_difference_0_load_37_reg_910),.output_difference_1_load_37(output_difference_1_load_37_reg_915),.output_difference_0_load_38(output_difference_0_load_38_reg_920),.output_difference_1_load_38(output_difference_1_load_38_reg_925),.output_difference_0_load_39(output_difference_0_load_39_reg_950),.output_difference_1_load_39(output_difference_1_load_39_reg_955),.output_difference_0_load_40(output_difference_0_load_40_reg_960),.output_difference_1_load_40(output_difference_1_load_40_reg_965),.output_difference_0_load_41(output_difference_0_load_41_reg_990),.output_difference_1_load_41(output_difference_1_load_41_reg_995),.output_difference_0_load_42(output_difference_0_load_42_reg_1000),.output_difference_1_load_42(output_difference_1_load_42_reg_1005),.output_difference_0_load_43(output_difference_0_load_43_reg_1030),.output_difference_1_load_43(output_difference_1_load_43_reg_1035),.output_difference_0_load_44(output_difference_0_load_44_reg_1040),.output_difference_1_load_44(output_difference_1_load_44_reg_1045),.output_difference_0_load_45(output_difference_0_load_45_reg_1070),.output_difference_1_load_45(output_difference_1_load_45_reg_1075),.output_difference_0_load_46(output_difference_0_load_46_reg_1080),.output_difference_1_load_46(output_difference_1_load_46_reg_1085),.output_difference_0_load_47(output_difference_0_load_47_reg_1110),.output_difference_1_load_47(output_difference_1_load_47_reg_1115),.output_difference_0_load_48(output_difference_0_load_48_reg_1120),.output_difference_1_load_48(output_difference_1_load_48_reg_1125),.output_difference_0_load_49(output_difference_0_load_49_reg_1150),.output_difference_1_load_49(output_difference_1_load_49_reg_1155),.output_difference_0_load_50(output_difference_0_load_50_reg_1160),.output_difference_1_load_50(output_difference_1_load_50_reg_1165),.output_difference_0_load_51(output_difference_0_load_51_reg_1190),.output_difference_1_load_51(output_difference_1_load_51_reg_1195),.output_difference_0_load_52(output_difference_0_load_52_reg_1200),.output_difference_1_load_52(output_difference_1_load_52_reg_1205),.output_difference_0_load_53(output_difference_0_load_53_reg_1230),.output_difference_1_load_53(output_difference_1_load_53_reg_1235),.output_difference_0_load_54(output_difference_0_load_54_reg_1240),.output_difference_1_load_54(output_difference_1_load_54_reg_1245),.output_difference_0_load_55(output_difference_0_load_55_reg_1270),.output_difference_1_load_55(output_difference_1_load_55_reg_1275),.output_difference_0_load_56(output_difference_0_load_56_reg_1280),.output_difference_1_load_56(output_difference_1_load_56_reg_1285),.output_difference_0_load_57(output_difference_0_load_57_reg_1310),.output_difference_1_load_57(output_difference_1_load_57_reg_1315),.output_difference_0_load_58(output_difference_0_load_58_reg_1320),.output_difference_1_load_58(output_difference_1_load_58_reg_1325),.output_difference_0_load_59(output_difference_0_load_59_reg_1350),.output_difference_1_load_59(output_difference_1_load_59_reg_1355),.output_difference_0_load_60(output_difference_0_load_60_reg_1360),.output_difference_1_load_60(output_difference_1_load_60_reg_1365),.output_difference_0_load_61(output_difference_0_load_61_reg_1390),.output_difference_1_load_61(output_difference_1_load_61_reg_1395),.output_difference_0_load_62(output_difference_0_load_62_reg_1400),.output_difference_1_load_62(output_difference_1_load_62_reg_1405),.grp_fu_1415_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1415_p_din0),.grp_fu_1415_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1415_p_din1),.grp_fu_1415_p_dout0(grp_fu_2874_p_dout0),.grp_fu_1415_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1415_p_ce),.grp_fu_1419_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1419_p_din0),.grp_fu_1419_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1419_p_din1),.grp_fu_1419_p_dout0(grp_fu_2878_p_dout0),.grp_fu_1419_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1419_p_ce),.grp_fu_1423_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1423_p_din0),.grp_fu_1423_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1423_p_din1),.grp_fu_1423_p_dout0(grp_fu_2882_p_dout0),.grp_fu_1423_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1423_p_ce),.grp_fu_1427_p_din0(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1427_p_din0),.grp_fu_1427_p_din1(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1427_p_din1),.grp_fu_1427_p_dout0(grp_fu_2886_p_dout0),.grp_fu_1427_p_ce(grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1427_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state18)) begin
            grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_load_32_reg_800 <= output_difference_0_q0;
        output_difference_0_load_reg_790 <= output_difference_0_q1;
        output_difference_1_load_32_reg_805 <= output_difference_1_q0;
        output_difference_1_load_reg_795 <= output_difference_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_0_load_33_reg_830 <= output_difference_0_q1;
        output_difference_0_load_34_reg_840 <= output_difference_0_q0;
        output_difference_1_load_33_reg_835 <= output_difference_1_q1;
        output_difference_1_load_34_reg_845 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_0_load_35_reg_870 <= output_difference_0_q1;
        output_difference_0_load_36_reg_880 <= output_difference_0_q0;
        output_difference_1_load_35_reg_875 <= output_difference_1_q1;
        output_difference_1_load_36_reg_885 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_0_load_37_reg_910 <= output_difference_0_q1;
        output_difference_0_load_38_reg_920 <= output_difference_0_q0;
        output_difference_1_load_37_reg_915 <= output_difference_1_q1;
        output_difference_1_load_38_reg_925 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_0_load_39_reg_950 <= output_difference_0_q1;
        output_difference_0_load_40_reg_960 <= output_difference_0_q0;
        output_difference_1_load_39_reg_955 <= output_difference_1_q1;
        output_difference_1_load_40_reg_965 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_0_load_41_reg_990 <= output_difference_0_q1;
        output_difference_0_load_42_reg_1000 <= output_difference_0_q0;
        output_difference_1_load_41_reg_995 <= output_difference_1_q1;
        output_difference_1_load_42_reg_1005 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_0_load_43_reg_1030 <= output_difference_0_q1;
        output_difference_0_load_44_reg_1040 <= output_difference_0_q0;
        output_difference_1_load_43_reg_1035 <= output_difference_1_q1;
        output_difference_1_load_44_reg_1045 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        output_difference_0_load_45_reg_1070 <= output_difference_0_q1;
        output_difference_0_load_46_reg_1080 <= output_difference_0_q0;
        output_difference_1_load_45_reg_1075 <= output_difference_1_q1;
        output_difference_1_load_46_reg_1085 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        output_difference_0_load_47_reg_1110 <= output_difference_0_q1;
        output_difference_0_load_48_reg_1120 <= output_difference_0_q0;
        output_difference_1_load_47_reg_1115 <= output_difference_1_q1;
        output_difference_1_load_48_reg_1125 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        output_difference_0_load_49_reg_1150 <= output_difference_0_q1;
        output_difference_0_load_50_reg_1160 <= output_difference_0_q0;
        output_difference_1_load_49_reg_1155 <= output_difference_1_q1;
        output_difference_1_load_50_reg_1165 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        output_difference_0_load_51_reg_1190 <= output_difference_0_q1;
        output_difference_0_load_52_reg_1200 <= output_difference_0_q0;
        output_difference_1_load_51_reg_1195 <= output_difference_1_q1;
        output_difference_1_load_52_reg_1205 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        output_difference_0_load_53_reg_1230 <= output_difference_0_q1;
        output_difference_0_load_54_reg_1240 <= output_difference_0_q0;
        output_difference_1_load_53_reg_1235 <= output_difference_1_q1;
        output_difference_1_load_54_reg_1245 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        output_difference_0_load_55_reg_1270 <= output_difference_0_q1;
        output_difference_0_load_56_reg_1280 <= output_difference_0_q0;
        output_difference_1_load_55_reg_1275 <= output_difference_1_q1;
        output_difference_1_load_56_reg_1285 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        output_difference_0_load_57_reg_1310 <= output_difference_0_q1;
        output_difference_0_load_58_reg_1320 <= output_difference_0_q0;
        output_difference_1_load_57_reg_1315 <= output_difference_1_q1;
        output_difference_1_load_58_reg_1325 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        output_difference_0_load_59_reg_1350 <= output_difference_0_q1;
        output_difference_0_load_60_reg_1360 <= output_difference_0_q0;
        output_difference_1_load_59_reg_1355 <= output_difference_1_q1;
        output_difference_1_load_60_reg_1365 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        output_difference_0_load_61_reg_1390 <= output_difference_0_q1;
        output_difference_0_load_62_reg_1400 <= output_difference_0_q0;
        output_difference_1_load_61_reg_1395 <= output_difference_1_q1;
        output_difference_1_load_62_reg_1405 <= output_difference_1_q0;
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
always @ (*) begin
    if ((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_done == 1'b0)) begin
        ap_ST_fsm_state19_blk = 1'b1;
    end else begin
        ap_ST_fsm_state19_blk = 1'b0;
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
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_1415_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1415_p_ce;
    end else begin
        grp_fu_1415_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_1419_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1419_p_ce;
    end else begin
        grp_fu_1419_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_1423_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1423_p_ce;
    end else begin
        grp_fu_1423_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_1427_ce = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1427_p_ce;
    end else begin
        grp_fu_1427_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        output_difference_0_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        output_difference_0_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        output_difference_0_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        output_difference_0_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        output_difference_0_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_difference_0_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        output_difference_0_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        output_difference_0_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_0_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_0_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address0_local = 64'd1;
    end else begin
        output_difference_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        output_difference_0_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        output_difference_0_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        output_difference_0_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        output_difference_0_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        output_difference_0_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_difference_0_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        output_difference_0_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        output_difference_0_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_0_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_0_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_0_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_0_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_0_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_0_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_0_address1_local = 64'd0;
    end else begin
        output_difference_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_0_ce0_local = 1'b1;
    end else begin
        output_difference_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_0_ce1_local = 1'b1;
    end else begin
        output_difference_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        output_difference_1_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        output_difference_1_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        output_difference_1_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        output_difference_1_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        output_difference_1_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_difference_1_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        output_difference_1_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        output_difference_1_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address0_local = 64'd1;
    end else begin
        output_difference_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        output_difference_1_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        output_difference_1_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        output_difference_1_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        output_difference_1_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        output_difference_1_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_difference_1_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        output_difference_1_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        output_difference_1_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_1_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_1_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_1_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_1_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_1_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_1_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_difference_1_address1_local = 64'd0;
    end else begin
        output_difference_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_1_ce0_local = 1'b1;
    end else begin
        output_difference_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_difference_1_ce1_local = 1'b1;
    end else begin
        output_difference_1_ce1_local = 1'b0;
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
            if (((grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
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
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign delta_weights1_0_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_address0;
assign delta_weights1_0_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_address1;
assign delta_weights1_0_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_ce0;
assign delta_weights1_0_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_ce1;
assign delta_weights1_0_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_d0;
assign delta_weights1_0_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_d1;
assign delta_weights1_0_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_we0;
assign delta_weights1_0_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_0_we1;
assign delta_weights1_1_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_address0;
assign delta_weights1_1_address1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_address1;
assign delta_weights1_1_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_ce0;
assign delta_weights1_1_ce1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_ce1;
assign delta_weights1_1_d0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_d0;
assign delta_weights1_1_d1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_d1;
assign delta_weights1_1_we0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_we0;
assign delta_weights1_1_we1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_delta_weights1_1_we1;
assign grp_fu_2874_p_ce = grp_fu_1415_ce;
assign grp_fu_2874_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1415_p_din0;
assign grp_fu_2874_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1415_p_din1;
assign grp_fu_2878_p_ce = grp_fu_1419_ce;
assign grp_fu_2878_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1419_p_din0;
assign grp_fu_2878_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1419_p_din1;
assign grp_fu_2882_p_ce = grp_fu_1423_ce;
assign grp_fu_2882_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1423_p_din0;
assign grp_fu_2882_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1423_p_din1;
assign grp_fu_2886_p_ce = grp_fu_1427_ce;
assign grp_fu_2886_p_din0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1427_p_din0;
assign grp_fu_2886_p_din1 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_grp_fu_1427_p_din1;
assign grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_start = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_ap_start_reg;
assign output_difference_0_address0 = output_difference_0_address0_local;
assign output_difference_0_address1 = output_difference_0_address1_local;
assign output_difference_0_ce0 = output_difference_0_ce0_local;
assign output_difference_0_ce1 = output_difference_0_ce1_local;
assign output_difference_1_address0 = output_difference_1_address0_local;
assign output_difference_1_address1 = output_difference_1_address1_local;
assign output_difference_1_ce0 = output_difference_1_ce0_local;
assign output_difference_1_ce1 = output_difference_1_ce1_local;
assign training_data_0_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_training_data_0_address0;
assign training_data_0_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_training_data_0_ce0;
assign training_data_1_address0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_training_data_1_address0;
assign training_data_1_ce0 = grp_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1_fu_692_training_data_1_ce0;
endmodule 