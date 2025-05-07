module backprop_get_oracle_activations1_64_65_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_q1,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_q1,output_differences_0_address0,output_differences_0_ce0,output_differences_0_q0,output_differences_0_address1,output_differences_0_ce1,output_differences_0_q1,output_differences_1_address0,output_differences_1_ce0,output_differences_1_q0,output_differences_1_address1,output_differences_1_ce1,output_differences_1_q1,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,grp_fu_2842_p_din0,grp_fu_2842_p_din1,grp_fu_2842_p_opcode,grp_fu_2842_p_dout0,grp_fu_2842_p_ce,grp_fu_2846_p_din0,grp_fu_2846_p_din1,grp_fu_2846_p_opcode,grp_fu_2846_p_dout0,grp_fu_2846_p_ce,grp_fu_2850_p_din0,grp_fu_2850_p_din1,grp_fu_2850_p_opcode,grp_fu_2850_p_dout0,grp_fu_2850_p_ce,grp_fu_2854_p_din0,grp_fu_2854_p_din1,grp_fu_2854_p_opcode,grp_fu_2854_p_dout0,grp_fu_2854_p_ce,grp_fu_2874_p_din0,grp_fu_2874_p_din1,grp_fu_2874_p_dout0,grp_fu_2874_p_ce,grp_fu_2878_p_din0,grp_fu_2878_p_din1,grp_fu_2878_p_dout0,grp_fu_2878_p_ce,grp_fu_2882_p_din0,grp_fu_2882_p_din1,grp_fu_2882_p_dout0,grp_fu_2882_p_ce,grp_fu_2886_p_din0,grp_fu_2886_p_din1,grp_fu_2886_p_dout0,grp_fu_2886_p_ce,grp_fu_2890_p_din0,grp_fu_2890_p_din1,grp_fu_2890_p_dout0,grp_fu_2890_p_ce); 
parameter    ap_ST_fsm_state1 = 18'd1;
parameter    ap_ST_fsm_state2 = 18'd2;
parameter    ap_ST_fsm_state3 = 18'd4;
parameter    ap_ST_fsm_state4 = 18'd8;
parameter    ap_ST_fsm_state5 = 18'd16;
parameter    ap_ST_fsm_state6 = 18'd32;
parameter    ap_ST_fsm_state7 = 18'd64;
parameter    ap_ST_fsm_state8 = 18'd128;
parameter    ap_ST_fsm_state9 = 18'd256;
parameter    ap_ST_fsm_state10 = 18'd512;
parameter    ap_ST_fsm_state11 = 18'd1024;
parameter    ap_ST_fsm_state12 = 18'd2048;
parameter    ap_ST_fsm_state13 = 18'd4096;
parameter    ap_ST_fsm_state14 = 18'd8192;
parameter    ap_ST_fsm_state15 = 18'd16384;
parameter    ap_ST_fsm_state16 = 18'd32768;
parameter    ap_ST_fsm_state17 = 18'd65536;
parameter    ap_ST_fsm_state18 = 18'd131072;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] weights2_0_address0;
output   weights2_0_ce0;
input  [63:0] weights2_0_q0;
output  [10:0] weights2_0_address1;
output   weights2_0_ce1;
input  [63:0] weights2_0_q1;
output  [10:0] weights2_1_address0;
output   weights2_1_ce0;
input  [63:0] weights2_1_q0;
output  [10:0] weights2_1_address1;
output   weights2_1_ce1;
input  [63:0] weights2_1_q1;
output  [4:0] output_differences_0_address0;
output   output_differences_0_ce0;
input  [63:0] output_differences_0_q0;
output  [4:0] output_differences_0_address1;
output   output_differences_0_ce1;
input  [63:0] output_differences_0_q1;
output  [4:0] output_differences_1_address0;
output   output_differences_1_ce0;
input  [63:0] output_differences_1_q0;
output  [4:0] output_differences_1_address1;
output   output_differences_1_ce1;
input  [63:0] output_differences_1_q1;
output  [4:0] oracle_activations_0_address0;
output   oracle_activations_0_ce0;
output   oracle_activations_0_we0;
output  [63:0] oracle_activations_0_d0;
output  [4:0] oracle_activations_1_address0;
output   oracle_activations_1_ce0;
output   oracle_activations_1_we0;
output  [63:0] oracle_activations_1_d0;
output  [4:0] dactivations_0_address0;
output   dactivations_0_ce0;
input  [63:0] dactivations_0_q0;
output  [4:0] dactivations_1_address0;
output   dactivations_1_ce0;
input  [63:0] dactivations_1_q0;
output  [63:0] grp_fu_2842_p_din0;
output  [63:0] grp_fu_2842_p_din1;
output  [0:0] grp_fu_2842_p_opcode;
input  [63:0] grp_fu_2842_p_dout0;
output   grp_fu_2842_p_ce;
output  [63:0] grp_fu_2846_p_din0;
output  [63:0] grp_fu_2846_p_din1;
output  [0:0] grp_fu_2846_p_opcode;
input  [63:0] grp_fu_2846_p_dout0;
output   grp_fu_2846_p_ce;
output  [63:0] grp_fu_2850_p_din0;
output  [63:0] grp_fu_2850_p_din1;
output  [0:0] grp_fu_2850_p_opcode;
input  [63:0] grp_fu_2850_p_dout0;
output   grp_fu_2850_p_ce;
output  [63:0] grp_fu_2854_p_din0;
output  [63:0] grp_fu_2854_p_din1;
output  [0:0] grp_fu_2854_p_opcode;
input  [63:0] grp_fu_2854_p_dout0;
output   grp_fu_2854_p_ce;
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
output  [63:0] grp_fu_2890_p_din0;
output  [63:0] grp_fu_2890_p_din1;
input  [63:0] grp_fu_2890_p_dout0;
output   grp_fu_2890_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_differences_0_load_reg_790;
wire    ap_CS_fsm_state2;
reg   [63:0] output_differences_1_load_reg_795;
reg   [63:0] output_differences_0_load_1_reg_800;
reg   [63:0] output_differences_1_load_1_reg_805;
reg   [63:0] output_differences_0_load_2_reg_830;
wire    ap_CS_fsm_state3;
reg   [63:0] output_differences_1_load_2_reg_835;
reg   [63:0] output_differences_0_load_3_reg_840;
reg   [63:0] output_differences_1_load_3_reg_845;
reg   [63:0] output_differences_0_load_4_reg_870;
wire    ap_CS_fsm_state4;
reg   [63:0] output_differences_1_load_4_reg_875;
reg   [63:0] output_differences_0_load_5_reg_880;
reg   [63:0] output_differences_1_load_5_reg_885;
reg   [63:0] output_differences_0_load_6_reg_910;
wire    ap_CS_fsm_state5;
reg   [63:0] output_differences_1_load_6_reg_915;
reg   [63:0] output_differences_0_load_7_reg_920;
reg   [63:0] output_differences_1_load_7_reg_925;
reg   [63:0] output_differences_0_load_8_reg_950;
wire    ap_CS_fsm_state6;
reg   [63:0] output_differences_1_load_8_reg_955;
reg   [63:0] output_differences_0_load_9_reg_960;
reg   [63:0] output_differences_1_load_9_reg_965;
reg   [63:0] output_differences_0_load_10_reg_990;
wire    ap_CS_fsm_state7;
reg   [63:0] output_differences_1_load_10_reg_995;
reg   [63:0] output_differences_0_load_11_reg_1000;
reg   [63:0] output_differences_1_load_11_reg_1005;
reg   [63:0] output_differences_0_load_12_reg_1030;
wire    ap_CS_fsm_state8;
reg   [63:0] output_differences_1_load_12_reg_1035;
reg   [63:0] output_differences_0_load_13_reg_1040;
reg   [63:0] output_differences_1_load_13_reg_1045;
reg   [63:0] output_differences_0_load_14_reg_1070;
wire    ap_CS_fsm_state9;
reg   [63:0] output_differences_1_load_14_reg_1075;
reg   [63:0] output_differences_0_load_15_reg_1080;
reg   [63:0] output_differences_1_load_15_reg_1085;
reg   [63:0] output_differences_0_load_16_reg_1110;
wire    ap_CS_fsm_state10;
reg   [63:0] output_differences_1_load_16_reg_1115;
reg   [63:0] output_differences_0_load_17_reg_1120;
reg   [63:0] output_differences_1_load_17_reg_1125;
reg   [63:0] output_differences_0_load_18_reg_1150;
wire    ap_CS_fsm_state11;
reg   [63:0] output_differences_1_load_18_reg_1155;
reg   [63:0] output_differences_0_load_19_reg_1160;
reg   [63:0] output_differences_1_load_19_reg_1165;
reg   [63:0] output_differences_0_load_20_reg_1190;
wire    ap_CS_fsm_state12;
reg   [63:0] output_differences_1_load_20_reg_1195;
reg   [63:0] output_differences_0_load_21_reg_1200;
reg   [63:0] output_differences_1_load_21_reg_1205;
reg   [63:0] output_differences_0_load_22_reg_1230;
wire    ap_CS_fsm_state13;
reg   [63:0] output_differences_1_load_22_reg_1235;
reg   [63:0] output_differences_0_load_23_reg_1240;
reg   [63:0] output_differences_1_load_23_reg_1245;
reg   [63:0] output_differences_0_load_24_reg_1270;
wire    ap_CS_fsm_state14;
reg   [63:0] output_differences_1_load_24_reg_1275;
reg   [63:0] output_differences_0_load_25_reg_1280;
reg   [63:0] output_differences_1_load_25_reg_1285;
reg   [63:0] output_differences_0_load_26_reg_1310;
wire    ap_CS_fsm_state15;
reg   [63:0] output_differences_1_load_26_reg_1315;
reg   [63:0] output_differences_0_load_27_reg_1320;
reg   [63:0] output_differences_1_load_27_reg_1325;
reg   [63:0] output_differences_0_load_28_reg_1350;
wire    ap_CS_fsm_state16;
reg   [63:0] output_differences_1_load_28_reg_1355;
reg   [63:0] output_differences_0_load_29_reg_1360;
reg   [63:0] output_differences_1_load_29_reg_1365;
reg   [63:0] output_differences_0_load_30_reg_1390;
wire    ap_CS_fsm_state17;
reg   [63:0] output_differences_1_load_30_reg_1395;
reg   [63:0] output_differences_0_load_31_reg_1400;
reg   [63:0] output_differences_1_load_31_reg_1405;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_start;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_done;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_idle;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_ready;
wire   [4:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_1_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_1_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_1_d0;
wire   [4:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_0_ce0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_0_we0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_0_d0;
wire   [10:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_0_ce0;
wire   [10:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_0_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_0_ce1;
wire   [10:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_1_ce0;
wire   [10:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_1_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_1_ce1;
wire   [4:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_dactivations_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_dactivations_0_ce0;
wire   [4:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_dactivations_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_dactivations_1_ce0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1410_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1410_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1410_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1410_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1414_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1414_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1414_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1414_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1418_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1418_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1418_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1418_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1422_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1422_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1422_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1422_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1426_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1426_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1426_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1430_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1430_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1430_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1434_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1434_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1434_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1438_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1438_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1438_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1442_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1442_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1442_p_ce;
reg    grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_start_reg;
wire    ap_CS_fsm_state18;
reg    output_differences_0_ce1_local;
reg   [4:0] output_differences_0_address1_local;
reg    output_differences_0_ce0_local;
reg   [4:0] output_differences_0_address0_local;
reg    output_differences_1_ce1_local;
reg   [4:0] output_differences_1_address1_local;
reg    output_differences_1_ce0_local;
reg   [4:0] output_differences_1_address0_local;
reg    grp_fu_1410_ce;
reg    grp_fu_1414_ce;
reg    grp_fu_1418_ce;
reg    grp_fu_1422_ce;
reg    grp_fu_1426_ce;
reg    grp_fu_1430_ce;
reg    grp_fu_1434_ce;
reg    grp_fu_1438_ce;
reg    grp_fu_1442_ce;
reg   [17:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state18_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 18'd1;
#0 grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_start_reg = 1'b0;
end
backprop_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1 grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_start),.ap_done(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_done),.ap_idle(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_idle),.ap_ready(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_ready),.oracle_activations_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_1_address0),.oracle_activations_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_1_ce0),.oracle_activations_1_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_1_we0),.oracle_activations_1_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_1_d0),.oracle_activations_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_0_address0),.oracle_activations_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_0_ce0),.oracle_activations_0_we0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_0_we0),.oracle_activations_0_d0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_0_d0),.weights2_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_0_address0),.weights2_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_0_address1),.weights2_0_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.output_differences_0_load(output_differences_0_load_reg_790),.weights2_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_1_address0),.weights2_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_1_address1),.weights2_1_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.output_differences_1_load(output_differences_1_load_reg_795),.output_differences_0_load_1(output_differences_0_load_1_reg_800),.output_differences_1_load_1(output_differences_1_load_1_reg_805),.output_differences_0_load_2(output_differences_0_load_2_reg_830),.output_differences_1_load_2(output_differences_1_load_2_reg_835),.output_differences_0_load_3(output_differences_0_load_3_reg_840),.output_differences_1_load_3(output_differences_1_load_3_reg_845),.output_differences_0_load_4(output_differences_0_load_4_reg_870),.output_differences_1_load_4(output_differences_1_load_4_reg_875),.output_differences_0_load_5(output_differences_0_load_5_reg_880),.output_differences_1_load_5(output_differences_1_load_5_reg_885),.output_differences_0_load_6(output_differences_0_load_6_reg_910),.output_differences_1_load_6(output_differences_1_load_6_reg_915),.output_differences_0_load_7(output_differences_0_load_7_reg_920),.output_differences_1_load_7(output_differences_1_load_7_reg_925),.output_differences_0_load_8(output_differences_0_load_8_reg_950),.output_differences_1_load_8(output_differences_1_load_8_reg_955),.output_differences_0_load_9(output_differences_0_load_9_reg_960),.output_differences_1_load_9(output_differences_1_load_9_reg_965),.output_differences_0_load_10(output_differences_0_load_10_reg_990),.output_differences_1_load_10(output_differences_1_load_10_reg_995),.output_differences_0_load_11(output_differences_0_load_11_reg_1000),.output_differences_1_load_11(output_differences_1_load_11_reg_1005),.output_differences_0_load_12(output_differences_0_load_12_reg_1030),.output_differences_1_load_12(output_differences_1_load_12_reg_1035),.output_differences_0_load_13(output_differences_0_load_13_reg_1040),.output_differences_1_load_13(output_differences_1_load_13_reg_1045),.output_differences_0_load_14(output_differences_0_load_14_reg_1070),.output_differences_1_load_14(output_differences_1_load_14_reg_1075),.output_differences_0_load_15(output_differences_0_load_15_reg_1080),.output_differences_1_load_15(output_differences_1_load_15_reg_1085),.output_differences_0_load_16(output_differences_0_load_16_reg_1110),.output_differences_1_load_16(output_differences_1_load_16_reg_1115),.output_differences_0_load_17(output_differences_0_load_17_reg_1120),.output_differences_1_load_17(output_differences_1_load_17_reg_1125),.output_differences_0_load_18(output_differences_0_load_18_reg_1150),.output_differences_1_load_18(output_differences_1_load_18_reg_1155),.output_differences_0_load_19(output_differences_0_load_19_reg_1160),.output_differences_1_load_19(output_differences_1_load_19_reg_1165),.output_differences_0_load_20(output_differences_0_load_20_reg_1190),.output_differences_1_load_20(output_differences_1_load_20_reg_1195),.output_differences_0_load_21(output_differences_0_load_21_reg_1200),.output_differences_1_load_21(output_differences_1_load_21_reg_1205),.output_differences_0_load_22(output_differences_0_load_22_reg_1230),.output_differences_1_load_22(output_differences_1_load_22_reg_1235),.output_differences_0_load_23(output_differences_0_load_23_reg_1240),.output_differences_1_load_23(output_differences_1_load_23_reg_1245),.output_differences_0_load_24(output_differences_0_load_24_reg_1270),.output_differences_1_load_24(output_differences_1_load_24_reg_1275),.output_differences_0_load_25(output_differences_0_load_25_reg_1280),.output_differences_1_load_25(output_differences_1_load_25_reg_1285),.output_differences_0_load_26(output_differences_0_load_26_reg_1310),.output_differences_1_load_26(output_differences_1_load_26_reg_1315),.output_differences_0_load_27(output_differences_0_load_27_reg_1320),.output_differences_1_load_27(output_differences_1_load_27_reg_1325),.output_differences_0_load_28(output_differences_0_load_28_reg_1350),.output_differences_1_load_28(output_differences_1_load_28_reg_1355),.output_differences_0_load_29(output_differences_0_load_29_reg_1360),.output_differences_1_load_29(output_differences_1_load_29_reg_1365),.output_differences_0_load_30(output_differences_0_load_30_reg_1390),.output_differences_1_load_30(output_differences_1_load_30_reg_1395),.output_differences_0_load_31(output_differences_0_load_31_reg_1400),.output_differences_1_load_31(output_differences_1_load_31_reg_1405),.dactivations_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_dactivations_0_address0),.dactivations_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_dactivations_0_ce0),.dactivations_0_q0(dactivations_0_q0),.dactivations_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_dactivations_1_address0),.dactivations_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_dactivations_1_ce0),.dactivations_1_q0(dactivations_1_q0),.grp_fu_1410_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1410_p_din0),.grp_fu_1410_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1410_p_din1),.grp_fu_1410_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1410_p_opcode),.grp_fu_1410_p_dout0(grp_fu_2842_p_dout0),.grp_fu_1410_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1410_p_ce),.grp_fu_1414_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1414_p_din0),.grp_fu_1414_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1414_p_din1),.grp_fu_1414_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1414_p_opcode),.grp_fu_1414_p_dout0(grp_fu_2846_p_dout0),.grp_fu_1414_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1414_p_ce),.grp_fu_1418_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1418_p_din0),.grp_fu_1418_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1418_p_din1),.grp_fu_1418_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1418_p_opcode),.grp_fu_1418_p_dout0(grp_fu_2850_p_dout0),.grp_fu_1418_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1418_p_ce),.grp_fu_1422_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1422_p_din0),.grp_fu_1422_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1422_p_din1),.grp_fu_1422_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1422_p_opcode),.grp_fu_1422_p_dout0(grp_fu_2854_p_dout0),.grp_fu_1422_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1422_p_ce),.grp_fu_1426_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1426_p_din0),.grp_fu_1426_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1426_p_din1),.grp_fu_1426_p_dout0(grp_fu_2874_p_dout0),.grp_fu_1426_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1426_p_ce),.grp_fu_1430_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1430_p_din0),.grp_fu_1430_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1430_p_din1),.grp_fu_1430_p_dout0(grp_fu_2878_p_dout0),.grp_fu_1430_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1430_p_ce),.grp_fu_1434_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1434_p_din0),.grp_fu_1434_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1434_p_din1),.grp_fu_1434_p_dout0(grp_fu_2882_p_dout0),.grp_fu_1434_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1434_p_ce),.grp_fu_1438_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1438_p_din0),.grp_fu_1438_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1438_p_din1),.grp_fu_1438_p_dout0(grp_fu_2886_p_dout0),.grp_fu_1438_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1438_p_ce),.grp_fu_1442_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1442_p_din0),.grp_fu_1442_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1442_p_din1),.grp_fu_1442_p_dout0(grp_fu_2890_p_dout0),.grp_fu_1442_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1442_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state17)) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_start_reg <= 1'b1;
        end else if ((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_ready == 1'b1)) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        output_differences_0_load_10_reg_990 <= output_differences_0_q1;
        output_differences_0_load_11_reg_1000 <= output_differences_0_q0;
        output_differences_1_load_10_reg_995 <= output_differences_1_q1;
        output_differences_1_load_11_reg_1005 <= output_differences_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_differences_0_load_12_reg_1030 <= output_differences_0_q1;
        output_differences_0_load_13_reg_1040 <= output_differences_0_q0;
        output_differences_1_load_12_reg_1035 <= output_differences_1_q1;
        output_differences_1_load_13_reg_1045 <= output_differences_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        output_differences_0_load_14_reg_1070 <= output_differences_0_q1;
        output_differences_0_load_15_reg_1080 <= output_differences_0_q0;
        output_differences_1_load_14_reg_1075 <= output_differences_1_q1;
        output_differences_1_load_15_reg_1085 <= output_differences_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        output_differences_0_load_16_reg_1110 <= output_differences_0_q1;
        output_differences_0_load_17_reg_1120 <= output_differences_0_q0;
        output_differences_1_load_16_reg_1115 <= output_differences_1_q1;
        output_differences_1_load_17_reg_1125 <= output_differences_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        output_differences_0_load_18_reg_1150 <= output_differences_0_q1;
        output_differences_0_load_19_reg_1160 <= output_differences_0_q0;
        output_differences_1_load_18_reg_1155 <= output_differences_1_q1;
        output_differences_1_load_19_reg_1165 <= output_differences_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_load_1_reg_800 <= output_differences_0_q0;
        output_differences_0_load_reg_790 <= output_differences_0_q1;
        output_differences_1_load_1_reg_805 <= output_differences_1_q0;
        output_differences_1_load_reg_795 <= output_differences_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        output_differences_0_load_20_reg_1190 <= output_differences_0_q1;
        output_differences_0_load_21_reg_1200 <= output_differences_0_q0;
        output_differences_1_load_20_reg_1195 <= output_differences_1_q1;
        output_differences_1_load_21_reg_1205 <= output_differences_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        output_differences_0_load_22_reg_1230 <= output_differences_0_q1;
        output_differences_0_load_23_reg_1240 <= output_differences_0_q0;
        output_differences_1_load_22_reg_1235 <= output_differences_1_q1;
        output_differences_1_load_23_reg_1245 <= output_differences_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        output_differences_0_load_24_reg_1270 <= output_differences_0_q1;
        output_differences_0_load_25_reg_1280 <= output_differences_0_q0;
        output_differences_1_load_24_reg_1275 <= output_differences_1_q1;
        output_differences_1_load_25_reg_1285 <= output_differences_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        output_differences_0_load_26_reg_1310 <= output_differences_0_q1;
        output_differences_0_load_27_reg_1320 <= output_differences_0_q0;
        output_differences_1_load_26_reg_1315 <= output_differences_1_q1;
        output_differences_1_load_27_reg_1325 <= output_differences_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        output_differences_0_load_28_reg_1350 <= output_differences_0_q1;
        output_differences_0_load_29_reg_1360 <= output_differences_0_q0;
        output_differences_1_load_28_reg_1355 <= output_differences_1_q1;
        output_differences_1_load_29_reg_1365 <= output_differences_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_0_load_2_reg_830 <= output_differences_0_q1;
        output_differences_0_load_3_reg_840 <= output_differences_0_q0;
        output_differences_1_load_2_reg_835 <= output_differences_1_q1;
        output_differences_1_load_3_reg_845 <= output_differences_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        output_differences_0_load_30_reg_1390 <= output_differences_0_q1;
        output_differences_0_load_31_reg_1400 <= output_differences_0_q0;
        output_differences_1_load_30_reg_1395 <= output_differences_1_q1;
        output_differences_1_load_31_reg_1405 <= output_differences_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_0_load_4_reg_870 <= output_differences_0_q1;
        output_differences_0_load_5_reg_880 <= output_differences_0_q0;
        output_differences_1_load_4_reg_875 <= output_differences_1_q1;
        output_differences_1_load_5_reg_885 <= output_differences_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        output_differences_0_load_6_reg_910 <= output_differences_0_q1;
        output_differences_0_load_7_reg_920 <= output_differences_0_q0;
        output_differences_1_load_6_reg_915 <= output_differences_1_q1;
        output_differences_1_load_7_reg_925 <= output_differences_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        output_differences_0_load_8_reg_950 <= output_differences_0_q1;
        output_differences_0_load_9_reg_960 <= output_differences_0_q0;
        output_differences_1_load_8_reg_955 <= output_differences_1_q1;
        output_differences_1_load_9_reg_965 <= output_differences_1_q0;
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
always @ (*) begin
    if ((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_done == 1'b0)) begin
        ap_ST_fsm_state18_blk = 1'b1;
    end else begin
        ap_ST_fsm_state18_blk = 1'b0;
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
    if ((((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1410_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1410_p_ce;
    end else begin
        grp_fu_1410_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1414_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1414_p_ce;
    end else begin
        grp_fu_1414_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1418_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1418_p_ce;
    end else begin
        grp_fu_1418_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1422_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1422_p_ce;
    end else begin
        grp_fu_1422_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1426_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1426_p_ce;
    end else begin
        grp_fu_1426_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1430_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1430_p_ce;
    end else begin
        grp_fu_1430_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1434_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1434_p_ce;
    end else begin
        grp_fu_1434_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1438_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1438_p_ce;
    end else begin
        grp_fu_1438_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1442_ce = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1442_p_ce;
    end else begin
        grp_fu_1442_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        output_differences_0_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        output_differences_0_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        output_differences_0_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        output_differences_0_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        output_differences_0_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_differences_0_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        output_differences_0_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        output_differences_0_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        output_differences_0_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_differences_0_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_differences_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_differences_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address0_local = 64'd1;
    end else begin
        output_differences_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        output_differences_0_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        output_differences_0_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        output_differences_0_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        output_differences_0_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        output_differences_0_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_differences_0_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        output_differences_0_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        output_differences_0_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        output_differences_0_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_differences_0_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_differences_0_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_differences_0_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_0_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_0_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_0_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_0_address1_local = 64'd0;
    end else begin
        output_differences_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce0_local = 1'b1;
    end else begin
        output_differences_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_0_ce1_local = 1'b1;
    end else begin
        output_differences_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        output_differences_1_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        output_differences_1_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        output_differences_1_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        output_differences_1_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        output_differences_1_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_differences_1_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        output_differences_1_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        output_differences_1_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        output_differences_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_differences_1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_differences_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_differences_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address0_local = 64'd1;
    end else begin
        output_differences_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        output_differences_1_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        output_differences_1_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        output_differences_1_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        output_differences_1_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        output_differences_1_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_differences_1_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        output_differences_1_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        output_differences_1_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        output_differences_1_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_differences_1_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_differences_1_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_differences_1_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        output_differences_1_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_differences_1_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_differences_1_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_differences_1_address1_local = 64'd0;
    end else begin
        output_differences_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce0_local = 1'b1;
    end else begin
        output_differences_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_differences_1_ce1_local = 1'b1;
    end else begin
        output_differences_1_ce1_local = 1'b0;
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
            if (((grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
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
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign dactivations_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_dactivations_0_address0;
assign dactivations_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_dactivations_0_ce0;
assign dactivations_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_dactivations_1_address0;
assign dactivations_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_dactivations_1_ce0;
assign grp_fu_2842_p_ce = grp_fu_1410_ce;
assign grp_fu_2842_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1410_p_din0;
assign grp_fu_2842_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1410_p_din1;
assign grp_fu_2842_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1410_p_opcode;
assign grp_fu_2846_p_ce = grp_fu_1414_ce;
assign grp_fu_2846_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1414_p_din0;
assign grp_fu_2846_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1414_p_din1;
assign grp_fu_2846_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1414_p_opcode;
assign grp_fu_2850_p_ce = grp_fu_1418_ce;
assign grp_fu_2850_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1418_p_din0;
assign grp_fu_2850_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1418_p_din1;
assign grp_fu_2850_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1418_p_opcode;
assign grp_fu_2854_p_ce = grp_fu_1422_ce;
assign grp_fu_2854_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1422_p_din0;
assign grp_fu_2854_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1422_p_din1;
assign grp_fu_2854_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1422_p_opcode;
assign grp_fu_2874_p_ce = grp_fu_1426_ce;
assign grp_fu_2874_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1426_p_din0;
assign grp_fu_2874_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1426_p_din1;
assign grp_fu_2878_p_ce = grp_fu_1430_ce;
assign grp_fu_2878_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1430_p_din0;
assign grp_fu_2878_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1430_p_din1;
assign grp_fu_2882_p_ce = grp_fu_1434_ce;
assign grp_fu_2882_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1434_p_din0;
assign grp_fu_2882_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1434_p_din1;
assign grp_fu_2886_p_ce = grp_fu_1438_ce;
assign grp_fu_2886_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1438_p_din0;
assign grp_fu_2886_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1438_p_din1;
assign grp_fu_2890_p_ce = grp_fu_1442_ce;
assign grp_fu_2890_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1442_p_din0;
assign grp_fu_2890_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_grp_fu_1442_p_din1;
assign grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_start = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_ap_start_reg;
assign oracle_activations_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_0_address0;
assign oracle_activations_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_0_ce0;
assign oracle_activations_0_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_0_d0;
assign oracle_activations_0_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_0_we0;
assign oracle_activations_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_1_address0;
assign oracle_activations_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_1_ce0;
assign oracle_activations_1_d0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_1_d0;
assign oracle_activations_1_we0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_oracle_activations_1_we0;
assign output_differences_0_address0 = output_differences_0_address0_local;
assign output_differences_0_address1 = output_differences_0_address1_local;
assign output_differences_0_ce0 = output_differences_0_ce0_local;
assign output_differences_0_ce1 = output_differences_0_ce1_local;
assign output_differences_1_address0 = output_differences_1_address0_local;
assign output_differences_1_address1 = output_differences_1_address1_local;
assign output_differences_1_ce0 = output_differences_1_ce0_local;
assign output_differences_1_ce1 = output_differences_1_ce1_local;
assign weights2_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_0_address0;
assign weights2_0_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_0_address1;
assign weights2_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_0_ce0;
assign weights2_0_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_0_ce1;
assign weights2_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_1_address0;
assign weights2_1_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_1_address1;
assign weights2_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_1_ce0;
assign weights2_1_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_VITIS_LOOP_102_1_fu_686_weights2_1_ce1;
endmodule 