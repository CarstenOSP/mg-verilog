module Gsm_LPC_Analysis_Reflection_coefficients (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,L_ACF_0_val,L_ACF_1_val,L_ACF_2_val,L_ACF_3_val,L_ACF_4_val,L_ACF_5_val,L_ACF_6_val,L_ACF_7_val,L_ACF_8_val,LARc_address0,LARc_ce0,LARc_we0,LARc_d0,bitoff_address0,bitoff_ce0,bitoff_q0,bitoff_address1,bitoff_ce1,bitoff_q1,bitoff_address2,bitoff_ce2,bitoff_q2,bitoff_address3,bitoff_ce3,bitoff_q3); 
parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] L_ACF_0_val;
input  [31:0] L_ACF_1_val;
input  [31:0] L_ACF_2_val;
input  [31:0] L_ACF_3_val;
input  [31:0] L_ACF_4_val;
input  [31:0] L_ACF_5_val;
input  [31:0] L_ACF_6_val;
input  [31:0] L_ACF_7_val;
input  [31:0] L_ACF_8_val;
output  [2:0] LARc_address0;
output   LARc_ce0;
output   LARc_we0;
output  [15:0] LARc_d0;
output  [7:0] bitoff_address0;
output   bitoff_ce0;
input  [3:0] bitoff_q0;
output  [7:0] bitoff_address1;
output   bitoff_ce1;
input  [3:0] bitoff_q1;
output  [7:0] bitoff_address2;
output   bitoff_ce2;
input  [3:0] bitoff_q2;
output  [7:0] bitoff_address3;
output   bitoff_ce3;
input  [3:0] bitoff_q3;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[2:0] LARc_address0;
reg LARc_ce0;
reg LARc_we0;
reg[15:0] LARc_d0;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] empty_fu_486_p1;
reg   [31:0] empty_reg_1237;
wire   [0:0] icmp_ln174_fu_490_p2;
reg   [0:0] icmp_ln174_reg_1327;
wire   [0:0] icmp_ln115_fu_496_p2;
reg   [0:0] icmp_ln115_reg_1359;
wire   [0:0] and_ln115_fu_622_p2;
reg   [0:0] and_ln115_reg_1384;
wire   [0:0] and_ln115_2_fu_640_p2;
reg   [0:0] and_ln115_2_reg_1389;
wire   [0:0] and_ln115_4_fu_658_p2;
reg   [0:0] and_ln115_4_reg_1394;
wire   [5:0] temp_fu_735_p13;
reg   [5:0] temp_reg_1399;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln165_fu_868_p1;
reg   [63:0] zext_ln165_reg_1416;
wire    ap_CS_fsm_state8;
wire   [3:0] add_ln195_1_fu_887_p2;
reg   [3:0] add_ln195_1_reg_1427;
wire   [15:0] zext_ln69_fu_913_p1;
reg   [15:0] P_0_load_1_reg_1437;
wire    ap_CS_fsm_state9;
wire   [0:0] icmp_ln200_fu_917_p2;
reg   [0:0] icmp_ln200_reg_1443;
wire  signed [16:0] sext_ln130_fu_923_p1;
reg  signed [16:0] sext_ln130_reg_1447;
wire   [0:0] icmp_ln143_fu_927_p2;
reg   [0:0] icmp_ln143_reg_1452;
wire   [2:0] trunc_ln165_fu_933_p1;
reg   [2:0] trunc_ln165_reg_1456;
wire   [31:0] trunc_ln163_fu_937_p1;
reg   [31:0] trunc_ln163_reg_1461;
wire   [30:0] select_ln202_fu_952_p3;
reg   [30:0] select_ln202_reg_1466;
wire  signed [15:0] select_ln209_fu_976_p3;
reg   [15:0] select_ln209_reg_1471;
wire    ap_CS_fsm_state11;
wire   [0:0] icmp_ln56_1_fu_991_p2;
reg   [0:0] icmp_ln56_1_reg_1480;
reg   [63:0] indvars_iv26_load_reg_1495;
wire    ap_CS_fsm_state12;
wire   [0:0] icmp_ln56_fu_1022_p2;
reg   [0:0] icmp_ln56_reg_1500;
wire  signed [15:0] temp_3_fu_1052_p3;
reg  signed [15:0] temp_3_reg_1506;
wire    ap_CS_fsm_state14;
wire    grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_ap_start;
wire    grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_ap_done;
wire    grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_ap_idle;
wire    grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_ap_ready;
wire   [2:0] grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_LARc_address0;
wire    grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_LARc_ce0;
wire    grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_LARc_we0;
wire   [15:0] grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_LARc_d0;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ap_start;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ap_done;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ap_idle;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ap_ready;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_17_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_17_out_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_16_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_16_out_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_15_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_15_out_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_14_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_14_out_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_13_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_13_out_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_12_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_12_out_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_11_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_11_out_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_out_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_8_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_8_out_ap_vld;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_ap_start;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_ap_done;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_ap_idle;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_ap_ready;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_P_9_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_P_9_out_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_select_ln191_out;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_select_ln191_out_ap_vld;
wire    grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_ap_start;
wire    grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_ap_done;
wire    grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_ap_idle;
wire    grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_ap_ready;
wire   [15:0] grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_div_out;
wire    grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_div_out_ap_vld;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_ap_start;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_ap_done;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_ap_idle;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_ap_ready;
wire   [2:0] grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_LARc_address0;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_LARc_ce0;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_LARc_we0;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_LARc_d0;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_start;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_done;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_idle;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_ready;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_1;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_1_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_6_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_6_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_5_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_5_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_4_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_4_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_3_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_3_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_2_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_2_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_1_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_1_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_7_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_7_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_6_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_6_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_5_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_5_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_4_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_4_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_3_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_3_o_ap_vld;
wire   [15:0] grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_2_o;
wire    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_2_o_ap_vld;
reg   [15:0] temp_5_reg_380;
wire   [0:0] tmp_7_fu_879_p3;
reg   [15:0] ap_phi_mux_retval_0_i53_phi_fu_394_p4;
reg   [15:0] retval_0_i53_reg_390;
reg    grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_ap_start_reg;
wire    ap_CS_fsm_state17;
reg    grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg   [15:0] ACF_8_loc_fu_156;
reg    grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg   [15:0] P_0_fu_260;
reg   [15:0] select_ln191_loc_fu_152;
reg    grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_ap_start_reg;
wire    ap_CS_fsm_state10;
reg    grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_ap_start_reg;
wire    ap_CS_fsm_state16;
reg    grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_start_reg;
wire    ap_CS_fsm_state13;
reg  signed [15:0] P_fu_192;
reg   [15:0] K_fu_220;
reg   [15:0] K_6_fu_244;
reg   [15:0] K_5_fu_240;
reg   [15:0] K_4_fu_236;
reg   [15:0] K_3_fu_232;
reg   [15:0] K_2_fu_228;
reg   [15:0] K_1_fu_224;
reg   [15:0] P_6_fu_216;
reg   [15:0] P_5_fu_212;
reg   [15:0] P_4_fu_208;
reg   [15:0] P_3_fu_204;
reg   [15:0] P_2_fu_200;
reg   [15:0] P_1_fu_196;
wire   [63:0] zext_ln123_fu_560_p1;
wire   [63:0] zext_ln123_3_fu_575_p1;
wire   [63:0] zext_ln122_1_fu_590_p1;
wire   [63:0] zext_ln121_1_fu_595_p1;
reg   [3:0] idx_fu_248;
wire   [0:0] icmp_ln211_fu_985_p2;
reg   [63:0] i_fu_252;
wire   [63:0] add_ln195_fu_1003_p2;
reg   [63:0] indvars_iv26_fu_256;
wire   [63:0] add_ln195_2_fu_1028_p2;
wire   [15:0] P_14_fu_1109_p3;
wire    ap_CS_fsm_state15;
reg    bitoff_ce3_local;
reg    bitoff_ce2_local;
reg    bitoff_ce1_local;
reg    bitoff_ce0_local;
reg    LARc_we0_local;
reg    LARc_ce0_local;
wire   [0:0] tmp_fu_502_p3;
wire   [31:0] a_assign_fu_510_p3;
wire   [31:0] a_assign_1_fu_518_p2;
wire   [15:0] tmp_4_fu_528_p4;
wire   [7:0] tmp_5_fu_544_p4;
wire   [7:0] trunc_ln92_fu_524_p1;
wire   [7:0] trunc_ln_fu_565_p4;
wire   [7:0] trunc_ln1_fu_580_p4;
wire   [23:0] tmp_6_fu_606_p4;
wire   [0:0] icmp_ln123_fu_616_p2;
wire   [0:0] xor_ln115_fu_600_p2;
wire   [0:0] icmp_ln123_1_fu_628_p2;
wire   [0:0] and_ln115_1_fu_634_p2;
wire   [0:0] icmp_ln120_fu_538_p2;
wire   [0:0] xor_ln120_fu_646_p2;
wire   [0:0] and_ln115_3_fu_652_p2;
wire   [0:0] icmp_ln121_fu_554_p2;
wire   [4:0] zext_ln123_1_fu_679_p1;
wire   [4:0] add_ln123_fu_683_p2;
wire   [4:0] zext_ln123_4_fu_693_p1;
wire   [4:0] add_ln123_1_fu_697_p2;
wire   [3:0] add_ln122_fu_707_p2;
wire   [3:0] add_ln121_fu_717_p2;
wire   [5:0] temp_fu_735_p4;
wire   [5:0] temp_fu_735_p6;
wire   [5:0] temp_fu_735_p8;
wire  signed [5:0] temp_fu_735_p10;
wire   [5:0] temp_fu_735_p11;
wire   [3:0] temp_fu_735_p12;
wire  signed [15:0] trunc_ln166_fu_875_p0;
wire  signed [15:0] tmp_7_fu_879_p1;
wire  signed [15:0] icmp_ln69_fu_893_p0;
wire   [14:0] trunc_ln166_fu_875_p1;
wire   [0:0] icmp_ln69_fu_893_p2;
wire   [14:0] sub_ln69_fu_899_p2;
wire   [14:0] select_ln69_fu_905_p3;
wire  signed [15:0] icmp_ln200_fu_917_p0;
wire  signed [15:0] sext_ln130_fu_923_p0;
wire   [0:0] icmp_ln202_fu_946_p2;
wire   [30:0] trunc_ln165_1_fu_942_p1;
wire  signed [15:0] icmp_ln209_fu_965_p0;
wire   [0:0] icmp_ln209_fu_965_p2;
wire   [15:0] sub_ln210_fu_970_p2;
wire  signed [15:0] icmp_ln56_1_fu_991_p0;
wire  signed [30:0] trunc_ln7_fu_1043_p1;
wire   [30:0] grp_fu_1122_p3;
wire   [0:0] and_ln56_fu_1039_p2;
wire   [15:0] trunc_ln7_fu_1043_p4;
wire  signed [16:0] sext_ln39_fu_1060_p1;
wire   [16:0] sum_fu_1068_p2;
wire   [1:0] tmp_8_fu_1079_p4;
wire   [0:0] icmp_ln40_fu_1073_p2;
wire   [0:0] icmp_ln40_4_fu_1089_p2;
wire   [0:0] or_ln40_fu_1103_p2;
wire   [15:0] select_ln40_fu_1095_p3;
wire   [15:0] add_ln39_fu_1063_p2;
wire   [14:0] grp_fu_1122_p2;
reg    grp_fu_1122_ce;
reg   [16:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
reg    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire  signed [3:0] temp_fu_735_p1;
wire   [3:0] temp_fu_735_p3;
wire   [3:0] temp_fu_735_p5;
wire   [3:0] temp_fu_735_p7;
wire   [3:0] temp_fu_735_p9;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_ap_start_reg = 1'b0;
#0 grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ap_start_reg = 1'b0;
#0 grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_ap_start_reg = 1'b0;
#0 P_0_fu_260 = 16'd0;
#0 grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_ap_start_reg = 1'b0;
#0 grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_ap_start_reg = 1'b0;
#0 grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_start_reg = 1'b0;
#0 P_fu_192 = 16'd0;
#0 K_fu_220 = 16'd0;
#0 K_6_fu_244 = 16'd0;
#0 K_5_fu_240 = 16'd0;
#0 K_4_fu_236 = 16'd0;
#0 K_3_fu_232 = 16'd0;
#0 K_2_fu_228 = 16'd0;
#0 K_1_fu_224 = 16'd0;
#0 P_6_fu_216 = 16'd0;
#0 P_5_fu_212 = 16'd0;
#0 P_4_fu_208 = 16'd0;
#0 P_3_fu_204 = 16'd0;
#0 P_2_fu_200 = 16'd0;
#0 P_1_fu_196 = 16'd0;
#0 idx_fu_248 = 4'd0;
#0 i_fu_252 = 64'd0;
#0 indvars_iv26_fu_256 = 64'd0;
end
Gsm_LPC_Analysis_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1 grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_ap_start),.ap_done(grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_ap_done),.ap_idle(grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_ap_idle),.ap_ready(grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_ap_ready),.LARc_address0(grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_LARc_address0),.LARc_ce0(grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_LARc_ce0),.LARc_we0(grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_LARc_we0),.LARc_d0(grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_LARc_d0));
Gsm_LPC_Analysis_Reflection_coefficients_Pipeline_Reflc_lp1 grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ap_start),.ap_done(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ap_done),.ap_idle(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ap_idle),.ap_ready(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ap_ready),.L_ACF_8_val(L_ACF_8_val),.empty(empty_reg_1237),.sh_prom_cast_cast(temp_reg_1399),.L_ACF_1_val_cast(L_ACF_1_val),.L_ACF_2_val_cast(L_ACF_2_val),.L_ACF_3_val_cast(L_ACF_3_val),.L_ACF_4_val_cast(L_ACF_4_val),.L_ACF_5_val_cast(L_ACF_5_val),.L_ACF_6_val_cast(L_ACF_6_val),.L_ACF_7_val_cast(L_ACF_7_val),.ACF_17_out(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_17_out),.ACF_17_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_17_out_ap_vld),.ACF_16_out(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_16_out),.ACF_16_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_16_out_ap_vld),.ACF_15_out(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_15_out),.ACF_15_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_15_out_ap_vld),.ACF_14_out(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_14_out),.ACF_14_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_14_out_ap_vld),.ACF_13_out(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_13_out),.ACF_13_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_13_out_ap_vld),.ACF_12_out(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_12_out),.ACF_12_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_12_out_ap_vld),.ACF_11_out(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_11_out),.ACF_11_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_11_out_ap_vld),.ACF_out(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_out),.ACF_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_out_ap_vld),.ACF_8_out(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_8_out),.ACF_8_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_8_out_ap_vld));
Gsm_LPC_Analysis_Reflection_coefficients_Pipeline_Reflc_lp3 grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_ap_start),.ap_done(grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_ap_done),.ap_idle(grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_ap_idle),.ap_ready(grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_ap_ready),.ACF_8_reload(ACF_8_loc_fu_156),.ACF_reload(grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_out),.P_9_out(grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_P_9_out),.P_9_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_P_9_out_ap_vld),.select_ln191_out(grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_select_ln191_out),.select_ln191_out_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_select_ln191_out_ap_vld));
Gsm_LPC_Analysis_Reflection_coefficients_Pipeline_gsmdiv_lp grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_ap_start),.ap_done(grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_ap_done),.ap_idle(grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_ap_idle),.ap_ready(grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_ap_ready),.sext_ln129(temp_5_reg_380),.sext_ln135(P_0_load_1_reg_1437),.sext_ln130(P_0_load_1_reg_1437),.div_out(grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_div_out),.div_out_ap_vld(grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_div_out_ap_vld));
Gsm_LPC_Analysis_Reflection_coefficients_Pipeline_Reflc_lp5 grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_ap_start),.ap_done(grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_ap_done),.ap_idle(grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_ap_idle),.ap_ready(grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_ap_ready),.empty_35(trunc_ln163_reg_1461),.zext_ln202(select_ln202_reg_1466),.empty(trunc_ln165_reg_1456),.LARc_address0(grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_LARc_address0),.LARc_ce0(grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_LARc_ce0),.LARc_we0(grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_LARc_we0),.LARc_d0(grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_LARc_d0));
Gsm_LPC_Analysis_Reflection_coefficients_Pipeline_Reflc_lp6 grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_start),.ap_done(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_done),.ap_idle(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_idle),.ap_ready(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_ready),.indvars_iv26(indvars_iv26_load_reg_1495),.P_1(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_1),.P_1_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_1_ap_vld),.K_i(K_fu_220),.K_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_o),.K_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_o_ap_vld),.K_6_i(K_6_fu_244),.K_6_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_6_o),.K_6_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_6_o_ap_vld),.K_5_i(K_5_fu_240),.K_5_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_5_o),.K_5_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_5_o_ap_vld),.K_4_i(K_4_fu_236),.K_4_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_4_o),.K_4_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_4_o_ap_vld),.K_3_i(K_3_fu_232),.K_3_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_3_o),.K_3_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_3_o_ap_vld),.K_2_i(K_2_fu_228),.K_2_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_2_o),.K_2_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_2_o_ap_vld),.K_1_i(K_1_fu_224),.K_1_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_1_o),.K_1_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_1_o_ap_vld),.P_7_i(P_6_fu_216),.P_7_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_7_o),.P_7_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_7_o_ap_vld),.P_6_i(P_5_fu_212),.P_6_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_6_o),.P_6_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_6_o_ap_vld),.P_5_i(P_4_fu_208),.P_5_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_5_o),.P_5_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_5_o_ap_vld),.P_4_i(P_3_fu_204),.P_4_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_4_o),.P_4_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_4_o_ap_vld),.P_3_i(P_2_fu_200),.P_3_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_3_o),.P_3_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_3_o_ap_vld),.P_2_i(P_1_fu_196),.P_2_o(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_2_o),.P_2_o_ap_vld(grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_2_o_ap_vld),.icmp_ln56(icmp_ln56_reg_1500),.sext_ln60(select_ln209_reg_1471),.select_ln191_reload(select_ln191_loc_fu_152));
(* dissolve_hierarchy = "yes" *) Gsm_LPC_Analysis_sparsemux_11_4_6_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 6 ),.CASE1( 4'h4 ),.din1_WIDTH( 6 ),.CASE2( 4'h2 ),.din2_WIDTH( 6 ),.CASE3( 4'h1 ),.din3_WIDTH( 6 ),.CASE4( 4'h0 ),.din4_WIDTH( 6 ),.def_WIDTH( 6 ),.sel_WIDTH( 4 ),.dout_WIDTH( 6 ))
sparsemux_11_4_6_1_1_U1102(.din0(6'd0),.din1(temp_fu_735_p4),.din2(temp_fu_735_p6),.din3(temp_fu_735_p8),.din4(temp_fu_735_p10),.def(temp_fu_735_p11),.sel(temp_fu_735_p12),.dout(temp_fu_735_p13));
Gsm_LPC_Analysis_mac_muladd_16s_16s_15ns_31_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 16 ),.din1_WIDTH( 16 ),.din2_WIDTH( 15 ),.dout_WIDTH( 31 ))
mac_muladd_16s_16s_15ns_31_4_1_U1103(.clk(ap_clk),.reset(ap_rst),.din0(select_ln209_fu_976_p3),.din1(P_fu_192),.din2(grp_fu_1122_p2),.ce(grp_fu_1122_ce),.dout(grp_fu_1122_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ap_start_reg <= 1'b1;
        end else if ((grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ap_ready == 1'b1)) begin
            grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_ap_start_reg <= 1'b1;
        end else if ((grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_ap_ready == 1'b1)) begin
            grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln200_fu_917_p2 == 1'd1))) begin
            grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_ap_start_reg <= 1'b1;
        end else if ((grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_ap_ready == 1'b1)) begin
            grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_start_reg <= 1'b1;
        end else if ((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_ready == 1'b1)) begin
            grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln174_fu_490_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_ap_start_reg <= 1'b1;
        end else if ((grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_ap_ready == 1'b1)) begin
            grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln143_fu_927_p2 == 1'd0) & (icmp_ln200_fu_917_p2 == 1'd0))) begin
            grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_ap_start_reg <= 1'b1;
        end else if ((grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_ap_ready == 1'b1)) begin
            grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        K_1_fu_224 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_12_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_1_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        K_1_fu_224 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_1_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        K_2_fu_228 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_13_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_2_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        K_2_fu_228 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_2_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        K_3_fu_232 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_14_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_3_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        K_3_fu_232 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_3_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        K_4_fu_236 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_15_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_4_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        K_4_fu_236 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_4_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        K_5_fu_240 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_16_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_5_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        K_5_fu_240 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_5_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        K_6_fu_244 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_17_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_6_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        K_6_fu_244 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_6_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        K_fu_220 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_11_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        K_fu_220 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_K_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        P_0_fu_260 <= P_14_fu_1109_p3;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_P_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        P_0_fu_260 <= grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_P_9_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        P_1_fu_196 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_12_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_2_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        P_1_fu_196 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_2_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        P_2_fu_200 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_13_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_3_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        P_2_fu_200 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_3_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        P_3_fu_204 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_14_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_4_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        P_3_fu_204 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_4_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        P_4_fu_208 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_15_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_5_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        P_4_fu_208 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_5_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        P_5_fu_212 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_16_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_6_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        P_5_fu_212 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_6_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        P_6_fu_216 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_17_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_7_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        P_6_fu_216 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_7_o;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        P_fu_192 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_11_out;
    end else if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_1_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        P_fu_192 <= grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_P_1;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln174_fu_490_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_252 <= 64'd1;
    end else if (((icmp_ln174_reg_1327 == 1'd0) & (icmp_ln211_fu_985_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11) & (icmp_ln200_reg_1443 == 1'd0))) begin
        i_fu_252 <= add_ln195_fu_1003_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln174_fu_490_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        idx_fu_248 <= 4'd0;
    end else if (((icmp_ln174_reg_1327 == 1'd0) & (icmp_ln211_fu_985_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11) & (icmp_ln200_reg_1443 == 1'd0))) begin
        idx_fu_248 <= add_ln195_1_reg_1427;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln174_fu_490_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvars_iv26_fu_256 <= 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        indvars_iv26_fu_256 <= add_ln195_2_fu_1028_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln143_fu_927_p2 == 1'd1) & (icmp_ln200_fu_917_p2 == 1'd0))) begin
        retval_0_i53_reg_390 <= 16'd0;
    end else if (((icmp_ln174_reg_1327 == 1'd0) & (1'b1 == ap_CS_fsm_state11) & (icmp_ln143_reg_1452 == 1'd0) & (icmp_ln200_reg_1443 == 1'd0))) begin
        retval_0_i53_reg_390 <= grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_div_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        if ((tmp_7_fu_879_p3 == 1'd0)) begin
            temp_5_reg_380 <= P_fu_192;
        end else if ((tmp_7_fu_879_p3 == 1'd1)) begin
            temp_5_reg_380 <= zext_ln69_fu_913_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_8_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ACF_8_loc_fu_156 <= grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ACF_8_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        P_0_load_1_reg_1437 <= P_0_fu_260;
        icmp_ln143_reg_1452 <= icmp_ln143_fu_927_p2;
        icmp_ln200_reg_1443 <= icmp_ln200_fu_917_p2;
        select_ln202_reg_1466 <= select_ln202_fu_952_p3;
        sext_ln130_reg_1447 <= sext_ln130_fu_923_p1;
        trunc_ln163_reg_1461 <= trunc_ln163_fu_937_p1;
        trunc_ln165_reg_1456 <= trunc_ln165_fu_933_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln195_1_reg_1427 <= add_ln195_1_fu_887_p2;
        zext_ln165_reg_1416[3 : 0] <= zext_ln165_fu_868_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        and_ln115_2_reg_1389 <= and_ln115_2_fu_640_p2;
        and_ln115_4_reg_1394 <= and_ln115_4_fu_658_p2;
        and_ln115_reg_1384 <= and_ln115_fu_622_p2;
        empty_reg_1237 <= empty_fu_486_p1;
        icmp_ln115_reg_1359 <= icmp_ln115_fu_496_p2;
        icmp_ln174_reg_1327 <= icmp_ln174_fu_490_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        icmp_ln56_1_reg_1480 <= icmp_ln56_1_fu_991_p2;
        select_ln209_reg_1471 <= select_ln209_fu_976_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        icmp_ln56_reg_1500 <= icmp_ln56_fu_1022_p2;
        indvars_iv26_load_reg_1495 <= indvars_iv26_fu_256;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_select_ln191_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        select_ln191_loc_fu_152 <= grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_select_ln191_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        temp_3_reg_1506 <= temp_3_fu_1052_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        temp_reg_1399 <= temp_fu_735_p13;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        LARc_address0 = grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_LARc_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        LARc_address0 = grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_LARc_address0;
    end else begin
        LARc_address0 = zext_ln165_reg_1416;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        LARc_ce0 = grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_LARc_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        LARc_ce0 = grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_LARc_ce0;
    end else begin
        LARc_ce0 = LARc_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        LARc_ce0_local = 1'b1;
    end else begin
        LARc_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        LARc_d0 = grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_LARc_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        LARc_d0 = grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_LARc_d0;
    end else begin
        LARc_d0 = select_ln209_fu_976_p3;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        LARc_we0 = grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_LARc_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        LARc_we0 = grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_LARc_we0;
    end else begin
        LARc_we0 = LARc_we0_local;
    end
end
always @ (*) begin
    if (((icmp_ln174_reg_1327 == 1'd0) & (1'b1 == ap_CS_fsm_state11) & (icmp_ln200_reg_1443 == 1'd0))) begin
        LARc_we0_local = 1'b1;
    end else begin
        LARc_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_ap_done == 1'b0)) begin
        ap_ST_fsm_state16_blk = 1'b1;
    end else begin
        ap_ST_fsm_state16_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
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
    if ((grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state11) & ((icmp_ln174_reg_1327 == 1'd1) | ((icmp_ln211_fu_985_p2 == 1'd1) | (icmp_ln200_reg_1443 == 1'd1)))))) begin
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
    if (((icmp_ln174_reg_1327 == 1'd0) & (1'b1 == ap_CS_fsm_state11) & (icmp_ln143_reg_1452 == 1'd0) & (icmp_ln200_reg_1443 == 1'd0))) begin
        ap_phi_mux_retval_0_i53_phi_fu_394_p4 = grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_div_out;
    end else begin
        ap_phi_mux_retval_0_i53_phi_fu_394_p4 = retval_0_i53_reg_390;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & ((icmp_ln174_reg_1327 == 1'd1) | ((icmp_ln211_fu_985_p2 == 1'd1) | (icmp_ln200_reg_1443 == 1'd1))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        bitoff_ce0_local = 1'b1;
    end else begin
        bitoff_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        bitoff_ce1_local = 1'b1;
    end else begin
        bitoff_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        bitoff_ce2_local = 1'b1;
    end else begin
        bitoff_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        bitoff_ce3_local = 1'b1;
    end else begin
        bitoff_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | ((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1122_ce = 1'b1;
    end else begin
        grp_fu_1122_ce = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln174_fu_490_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else if (((icmp_ln174_fu_490_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
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
            if (((1'b1 == ap_CS_fsm_state4) & (grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln143_fu_927_p2 == 1'd1) & (icmp_ln200_fu_917_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln143_fu_927_p2 == 1'd0) & (icmp_ln200_fu_917_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & ((icmp_ln174_reg_1327 == 1'd1) | ((icmp_ln211_fu_985_p2 == 1'd1) | (icmp_ln200_reg_1443 == 1'd1))))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state16 : begin
            if (((grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state17 : begin
            if (((1'b1 == ap_CS_fsm_state17) & (grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign P_14_fu_1109_p3 = ((or_ln40_fu_1103_p2[0:0] == 1'b1) ? select_ln40_fu_1095_p3 : add_ln39_fu_1063_p2);
assign a_assign_1_fu_518_p2 = (empty_fu_486_p1 ^ a_assign_fu_510_p3);
assign a_assign_fu_510_p3 = ((tmp_fu_502_p3[0:0] == 1'b1) ? 32'd4294967295 : 32'd0);
assign add_ln121_fu_717_p2 = ($signed(bitoff_q0) + $signed(4'd15));
assign add_ln122_fu_707_p2 = (bitoff_q1 + 4'd7);
assign add_ln123_1_fu_697_p2 = (zext_ln123_4_fu_693_p1 + 5'd15);
assign add_ln123_fu_683_p2 = ($signed(zext_ln123_1_fu_679_p1) + $signed(5'd23));
assign add_ln195_1_fu_887_p2 = (idx_fu_248 + 4'd1);
assign add_ln195_2_fu_1028_p2 = ($signed(indvars_iv26_fu_256) + $signed(64'd18446744073709551615));
assign add_ln195_fu_1003_p2 = (i_fu_252 + 64'd1);
assign add_ln39_fu_1063_p2 = ($signed(temp_3_reg_1506) + $signed(P_0_fu_260));
assign and_ln115_1_fu_634_p2 = (xor_ln115_fu_600_p2 & icmp_ln123_1_fu_628_p2);
assign and_ln115_2_fu_640_p2 = (icmp_ln120_fu_538_p2 & and_ln115_1_fu_634_p2);
assign and_ln115_3_fu_652_p2 = (xor_ln120_fu_646_p2 & xor_ln115_fu_600_p2);
assign and_ln115_4_fu_658_p2 = (icmp_ln121_fu_554_p2 & and_ln115_3_fu_652_p2);
assign and_ln115_fu_622_p2 = (xor_ln115_fu_600_p2 & icmp_ln123_fu_616_p2);
assign and_ln56_fu_1039_p2 = (icmp_ln56_reg_1500 & icmp_ln56_1_reg_1480);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitoff_address0 = zext_ln121_1_fu_595_p1;
assign bitoff_address1 = zext_ln122_1_fu_590_p1;
assign bitoff_address2 = zext_ln123_3_fu_575_p1;
assign bitoff_address3 = zext_ln123_fu_560_p1;
assign bitoff_ce0 = bitoff_ce0_local;
assign bitoff_ce1 = bitoff_ce1_local;
assign bitoff_ce2 = bitoff_ce2_local;
assign bitoff_ce3 = bitoff_ce3_local;
assign empty_fu_486_p1 = L_ACF_0_val[31:0];
assign grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ap_start = grp_Reflection_coefficients_Pipeline_Reflc_lp1_fu_407_ap_start_reg;
assign grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_ap_start = grp_Reflection_coefficients_Pipeline_Reflc_lp3_fu_430_ap_start_reg;
assign grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_ap_start = grp_Reflection_coefficients_Pipeline_Reflc_lp5_fu_447_ap_start_reg;
assign grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_start = grp_Reflection_coefficients_Pipeline_Reflc_lp6_fu_456_ap_start_reg;
assign grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_ap_start = grp_Reflection_coefficients_Pipeline_VITIS_LOOP_176_1_fu_401_ap_start_reg;
assign grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_ap_start = grp_Reflection_coefficients_Pipeline_gsmdiv_lp_fu_438_ap_start_reg;
assign grp_fu_1122_p2 = 31'd16384;
assign icmp_ln115_fu_496_p2 = (($signed(L_ACF_0_val) < $signed(64'd18446744072635809793)) ? 1'b1 : 1'b0);
assign icmp_ln120_fu_538_p2 = ((tmp_4_fu_528_p4 == 16'd0) ? 1'b1 : 1'b0);
assign icmp_ln121_fu_554_p2 = ((tmp_5_fu_544_p4 == 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln123_1_fu_628_p2 = ((trunc_ln_fu_565_p4 != 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln123_fu_616_p2 = ((tmp_6_fu_606_p4 == 24'd0) ? 1'b1 : 1'b0);
assign icmp_ln143_fu_927_p2 = ((temp_5_reg_380 == 16'd0) ? 1'b1 : 1'b0);
assign icmp_ln174_fu_490_p2 = ((L_ACF_0_val == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln200_fu_917_p0 = P_0_fu_260;
assign icmp_ln200_fu_917_p2 = (($signed(icmp_ln200_fu_917_p0) < $signed(temp_5_reg_380)) ? 1'b1 : 1'b0);
assign icmp_ln202_fu_946_p2 = (($signed(trunc_ln163_fu_937_p1) > $signed(32'd8)) ? 1'b1 : 1'b0);
assign icmp_ln209_fu_965_p0 = P_fu_192;
assign icmp_ln209_fu_965_p2 = (($signed(icmp_ln209_fu_965_p0) > $signed(16'd0)) ? 1'b1 : 1'b0);
assign icmp_ln211_fu_985_p2 = ((i_fu_252 == 64'd8) ? 1'b1 : 1'b0);
assign icmp_ln40_4_fu_1089_p2 = ((tmp_8_fu_1079_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_1073_p2 = (($signed(sum_fu_1068_p2) < $signed(17'd98304)) ? 1'b1 : 1'b0);
assign icmp_ln56_1_fu_991_p0 = P_fu_192;
assign icmp_ln56_1_fu_991_p2 = ((icmp_ln56_1_fu_991_p0 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln56_fu_1022_p2 = ((select_ln209_reg_1471 == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln69_fu_893_p0 = P_fu_192;
assign icmp_ln69_fu_893_p2 = ((icmp_ln69_fu_893_p0 == 16'd32768) ? 1'b1 : 1'b0);
assign or_ln40_fu_1103_p2 = (icmp_ln40_fu_1073_p2 | icmp_ln40_4_fu_1089_p2);
assign select_ln202_fu_952_p3 = ((icmp_ln202_fu_946_p2[0:0] == 1'b1) ? trunc_ln165_1_fu_942_p1 : 31'd8);
assign select_ln209_fu_976_p3 = ((icmp_ln209_fu_965_p2[0:0] == 1'b1) ? sub_ln210_fu_970_p2 : ap_phi_mux_retval_0_i53_phi_fu_394_p4);
assign select_ln40_fu_1095_p3 = ((icmp_ln40_fu_1073_p2[0:0] == 1'b1) ? 16'd32768 : 16'd32767);
assign select_ln69_fu_905_p3 = ((icmp_ln69_fu_893_p2[0:0] == 1'b1) ? 15'd32767 : sub_ln69_fu_899_p2);
assign sext_ln130_fu_923_p0 = P_0_fu_260;
assign sext_ln130_fu_923_p1 = sext_ln130_fu_923_p0;
assign sext_ln39_fu_1060_p1 = temp_3_reg_1506;
assign sub_ln210_fu_970_p2 = (16'd0 - ap_phi_mux_retval_0_i53_phi_fu_394_p4);
assign sub_ln69_fu_899_p2 = (15'd0 - trunc_ln166_fu_875_p1);
assign sum_fu_1068_p2 = ($signed(sext_ln39_fu_1060_p1) + $signed(sext_ln130_reg_1447));
assign temp_3_fu_1052_p3 = ((and_ln56_fu_1039_p2[0:0] == 1'b1) ? 16'd32767 : trunc_ln7_fu_1043_p4);
assign temp_fu_735_p10 = $signed(add_ln121_fu_717_p2);
assign temp_fu_735_p11 = 'bx;
assign temp_fu_735_p12 = {{{{icmp_ln115_reg_1359}, {and_ln115_reg_1384}}, {and_ln115_2_reg_1389}}, {and_ln115_4_reg_1394}};
assign temp_fu_735_p4 = add_ln123_fu_683_p2;
assign temp_fu_735_p6 = add_ln123_1_fu_697_p2;
assign temp_fu_735_p8 = add_ln122_fu_707_p2;
assign tmp_4_fu_528_p4 = {{a_assign_1_fu_518_p2[31:16]}};
assign tmp_5_fu_544_p4 = {{a_assign_1_fu_518_p2[31:24]}};
assign tmp_6_fu_606_p4 = {{a_assign_1_fu_518_p2[31:8]}};
assign tmp_7_fu_879_p1 = P_fu_192;
assign tmp_7_fu_879_p3 = tmp_7_fu_879_p1[32'd15];
assign tmp_8_fu_1079_p4 = {{sum_fu_1068_p2[16:15]}};
assign tmp_fu_502_p3 = L_ACF_0_val[32'd63];
assign trunc_ln163_fu_937_p1 = i_fu_252[31:0];
assign trunc_ln165_1_fu_942_p1 = i_fu_252[30:0];
assign trunc_ln165_fu_933_p1 = idx_fu_248[2:0];
assign trunc_ln166_fu_875_p0 = P_fu_192;
assign trunc_ln166_fu_875_p1 = trunc_ln166_fu_875_p0[14:0];
assign trunc_ln1_fu_580_p4 = {{a_assign_1_fu_518_p2[23:16]}};
assign trunc_ln7_fu_1043_p1 = grp_fu_1122_p3;
assign trunc_ln7_fu_1043_p4 = {{trunc_ln7_fu_1043_p1[30:15]}};
assign trunc_ln92_fu_524_p1 = a_assign_1_fu_518_p2[7:0];
assign trunc_ln_fu_565_p4 = {{a_assign_1_fu_518_p2[15:8]}};
assign xor_ln115_fu_600_p2 = (icmp_ln115_fu_496_p2 ^ 1'd1);
assign xor_ln120_fu_646_p2 = (icmp_ln120_fu_538_p2 ^ 1'd1);
assign zext_ln121_1_fu_595_p1 = tmp_5_fu_544_p4;
assign zext_ln122_1_fu_590_p1 = trunc_ln1_fu_580_p4;
assign zext_ln123_1_fu_679_p1 = bitoff_q3;
assign zext_ln123_3_fu_575_p1 = trunc_ln_fu_565_p4;
assign zext_ln123_4_fu_693_p1 = bitoff_q2;
assign zext_ln123_fu_560_p1 = trunc_ln92_fu_524_p1;
assign zext_ln165_fu_868_p1 = idx_fu_248;
assign zext_ln69_fu_913_p1 = select_ln69_fu_905_p3;
always @ (posedge ap_clk) begin
    zext_ln165_reg_1416[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 