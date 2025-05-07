module backprop_get_delta_matrix_weights2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights2_0_address0,delta_weights2_0_ce0,delta_weights2_0_we0,delta_weights2_0_d0,delta_weights2_0_address1,delta_weights2_0_ce1,delta_weights2_0_we1,delta_weights2_0_d1,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_1_address1,delta_weights2_1_ce1,delta_weights2_1_we1,delta_weights2_1_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,grp_fu_2874_p_din0,grp_fu_2874_p_din1,grp_fu_2874_p_dout0,grp_fu_2874_p_ce,grp_fu_2878_p_din0,grp_fu_2878_p_din1,grp_fu_2878_p_dout0,grp_fu_2878_p_ce,grp_fu_2882_p_din0,grp_fu_2882_p_din1,grp_fu_2882_p_dout0,grp_fu_2882_p_ce,grp_fu_2886_p_din0,grp_fu_2886_p_din1,grp_fu_2886_p_dout0,grp_fu_2886_p_ce); 
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
output  [4:0] output_difference_1_address0;
output   output_difference_1_ce0;
input  [63:0] output_difference_1_q0;
output  [4:0] output_difference_1_address1;
output   output_difference_1_ce1;
input  [63:0] output_difference_1_q1;
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
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] output_difference_0_load_reg_772;
wire    ap_CS_fsm_state2;
reg   [63:0] output_difference_1_load_reg_777;
reg   [63:0] output_difference_0_load_1_reg_782;
reg   [63:0] output_difference_1_load_1_reg_787;
reg   [63:0] output_difference_0_load_2_reg_812;
wire    ap_CS_fsm_state3;
reg   [63:0] output_difference_1_load_2_reg_817;
reg   [63:0] output_difference_0_load_3_reg_822;
reg   [63:0] output_difference_1_load_3_reg_827;
reg   [63:0] output_difference_0_load_4_reg_852;
wire    ap_CS_fsm_state4;
reg   [63:0] output_difference_1_load_4_reg_857;
reg   [63:0] output_difference_0_load_5_reg_862;
reg   [63:0] output_difference_1_load_5_reg_867;
reg   [63:0] output_difference_0_load_6_reg_892;
wire    ap_CS_fsm_state5;
reg   [63:0] output_difference_1_load_6_reg_897;
reg   [63:0] output_difference_0_load_7_reg_902;
reg   [63:0] output_difference_1_load_7_reg_907;
reg   [63:0] output_difference_0_load_8_reg_932;
wire    ap_CS_fsm_state6;
reg   [63:0] output_difference_1_load_8_reg_937;
reg   [63:0] output_difference_0_load_9_reg_942;
reg   [63:0] output_difference_1_load_9_reg_947;
reg   [63:0] output_difference_0_load_10_reg_972;
wire    ap_CS_fsm_state7;
reg   [63:0] output_difference_1_load_10_reg_977;
reg   [63:0] output_difference_0_load_11_reg_982;
reg   [63:0] output_difference_1_load_11_reg_987;
reg   [63:0] output_difference_0_load_12_reg_1012;
wire    ap_CS_fsm_state8;
reg   [63:0] output_difference_1_load_12_reg_1017;
reg   [63:0] output_difference_0_load_13_reg_1022;
reg   [63:0] output_difference_1_load_13_reg_1027;
reg   [63:0] output_difference_0_load_14_reg_1052;
wire    ap_CS_fsm_state9;
reg   [63:0] output_difference_1_load_14_reg_1057;
reg   [63:0] output_difference_0_load_15_reg_1062;
reg   [63:0] output_difference_1_load_15_reg_1067;
reg   [63:0] output_difference_0_load_16_reg_1092;
wire    ap_CS_fsm_state10;
reg   [63:0] output_difference_1_load_16_reg_1097;
reg   [63:0] output_difference_0_load_17_reg_1102;
reg   [63:0] output_difference_1_load_17_reg_1107;
reg   [63:0] output_difference_0_load_18_reg_1132;
wire    ap_CS_fsm_state11;
reg   [63:0] output_difference_1_load_18_reg_1137;
reg   [63:0] output_difference_0_load_19_reg_1142;
reg   [63:0] output_difference_1_load_19_reg_1147;
reg   [63:0] output_difference_0_load_20_reg_1172;
wire    ap_CS_fsm_state12;
reg   [63:0] output_difference_1_load_20_reg_1177;
reg   [63:0] output_difference_0_load_21_reg_1182;
reg   [63:0] output_difference_1_load_21_reg_1187;
reg   [63:0] output_difference_0_load_22_reg_1212;
wire    ap_CS_fsm_state13;
reg   [63:0] output_difference_1_load_22_reg_1217;
reg   [63:0] output_difference_0_load_23_reg_1222;
reg   [63:0] output_difference_1_load_23_reg_1227;
reg   [63:0] output_difference_0_load_24_reg_1252;
wire    ap_CS_fsm_state14;
reg   [63:0] output_difference_1_load_24_reg_1257;
reg   [63:0] output_difference_0_load_25_reg_1262;
reg   [63:0] output_difference_1_load_25_reg_1267;
reg   [63:0] output_difference_0_load_26_reg_1292;
wire    ap_CS_fsm_state15;
reg   [63:0] output_difference_1_load_26_reg_1297;
reg   [63:0] output_difference_0_load_27_reg_1302;
reg   [63:0] output_difference_1_load_27_reg_1307;
reg   [63:0] output_difference_0_load_28_reg_1332;
wire    ap_CS_fsm_state16;
reg   [63:0] output_difference_1_load_28_reg_1337;
reg   [63:0] output_difference_0_load_29_reg_1342;
reg   [63:0] output_difference_1_load_29_reg_1347;
reg   [63:0] output_difference_0_load_30_reg_1372;
wire    ap_CS_fsm_state17;
reg   [63:0] output_difference_1_load_30_reg_1377;
reg   [63:0] output_difference_0_load_31_reg_1382;
reg   [63:0] output_difference_1_load_31_reg_1387;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_start;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_done;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_idle;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_ready;
wire   [10:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_d0;
wire   [10:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_d1;
wire   [10:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_ce0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_we0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_d0;
wire   [10:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_address1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_ce1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_we1;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_d1;
wire   [4:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_last_activations_0_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_last_activations_0_ce0;
wire   [4:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_last_activations_1_address0;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_last_activations_1_ce0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1392_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1392_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1392_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1396_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1396_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1396_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1400_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1400_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1400_p_ce;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1404_p_din0;
wire   [63:0] grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1404_p_din1;
wire    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1404_p_ce;
reg    grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_start_reg;
wire    ap_CS_fsm_state18;
reg    output_difference_0_ce1_local;
reg   [4:0] output_difference_0_address1_local;
reg    output_difference_0_ce0_local;
reg   [4:0] output_difference_0_address0_local;
reg    output_difference_1_ce1_local;
reg   [4:0] output_difference_1_address1_local;
reg    output_difference_1_ce0_local;
reg   [4:0] output_difference_1_address0_local;
reg    grp_fu_1392_ce;
reg    grp_fu_1396_ce;
reg    grp_fu_1400_ce;
reg    grp_fu_1404_ce;
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
#0 grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_start_reg = 1'b0;
end
backprop_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1 grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_start),.ap_done(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_done),.ap_idle(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_idle),.ap_ready(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_ready),.delta_weights2_1_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_address0),.delta_weights2_1_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_ce0),.delta_weights2_1_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_we0),.delta_weights2_1_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_d0),.delta_weights2_1_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_address1),.delta_weights2_1_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_ce1),.delta_weights2_1_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_we1),.delta_weights2_1_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_d1),.delta_weights2_0_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_address0),.delta_weights2_0_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_ce0),.delta_weights2_0_we0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_we0),.delta_weights2_0_d0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_d0),.delta_weights2_0_address1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_address1),.delta_weights2_0_ce1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_ce1),.delta_weights2_0_we1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_we1),.delta_weights2_0_d1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_d1),.last_activations_0_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_last_activations_0_address0),.last_activations_0_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_last_activations_0_ce0),.last_activations_0_q0(last_activations_0_q0),.last_activations_1_address0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_last_activations_1_address0),.last_activations_1_ce0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_last_activations_1_ce0),.last_activations_1_q0(last_activations_1_q0),.output_difference_0_load(output_difference_0_load_reg_772),.output_difference_1_load(output_difference_1_load_reg_777),.output_difference_0_load_1(output_difference_0_load_1_reg_782),.output_difference_1_load_1(output_difference_1_load_1_reg_787),.output_difference_0_load_2(output_difference_0_load_2_reg_812),.output_difference_1_load_2(output_difference_1_load_2_reg_817),.output_difference_0_load_3(output_difference_0_load_3_reg_822),.output_difference_1_load_3(output_difference_1_load_3_reg_827),.output_difference_0_load_4(output_difference_0_load_4_reg_852),.output_difference_1_load_4(output_difference_1_load_4_reg_857),.output_difference_0_load_5(output_difference_0_load_5_reg_862),.output_difference_1_load_5(output_difference_1_load_5_reg_867),.output_difference_0_load_6(output_difference_0_load_6_reg_892),.output_difference_1_load_6(output_difference_1_load_6_reg_897),.output_difference_0_load_7(output_difference_0_load_7_reg_902),.output_difference_1_load_7(output_difference_1_load_7_reg_907),.output_difference_0_load_8(output_difference_0_load_8_reg_932),.output_difference_1_load_8(output_difference_1_load_8_reg_937),.output_difference_0_load_9(output_difference_0_load_9_reg_942),.output_difference_1_load_9(output_difference_1_load_9_reg_947),.output_difference_0_load_10(output_difference_0_load_10_reg_972),.output_difference_1_load_10(output_difference_1_load_10_reg_977),.output_difference_0_load_11(output_difference_0_load_11_reg_982),.output_difference_1_load_11(output_difference_1_load_11_reg_987),.output_difference_0_load_12(output_difference_0_load_12_reg_1012),.output_difference_1_load_12(output_difference_1_load_12_reg_1017),.output_difference_0_load_13(output_difference_0_load_13_reg_1022),.output_difference_1_load_13(output_difference_1_load_13_reg_1027),.output_difference_0_load_14(output_difference_0_load_14_reg_1052),.output_difference_1_load_14(output_difference_1_load_14_reg_1057),.output_difference_0_load_15(output_difference_0_load_15_reg_1062),.output_difference_1_load_15(output_difference_1_load_15_reg_1067),.output_difference_0_load_16(output_difference_0_load_16_reg_1092),.output_difference_1_load_16(output_difference_1_load_16_reg_1097),.output_difference_0_load_17(output_difference_0_load_17_reg_1102),.output_difference_1_load_17(output_difference_1_load_17_reg_1107),.output_difference_0_load_18(output_difference_0_load_18_reg_1132),.output_difference_1_load_18(output_difference_1_load_18_reg_1137),.output_difference_0_load_19(output_difference_0_load_19_reg_1142),.output_difference_1_load_19(output_difference_1_load_19_reg_1147),.output_difference_0_load_20(output_difference_0_load_20_reg_1172),.output_difference_1_load_20(output_difference_1_load_20_reg_1177),.output_difference_0_load_21(output_difference_0_load_21_reg_1182),.output_difference_1_load_21(output_difference_1_load_21_reg_1187),.output_difference_0_load_22(output_difference_0_load_22_reg_1212),.output_difference_1_load_22(output_difference_1_load_22_reg_1217),.output_difference_0_load_23(output_difference_0_load_23_reg_1222),.output_difference_1_load_23(output_difference_1_load_23_reg_1227),.output_difference_0_load_24(output_difference_0_load_24_reg_1252),.output_difference_1_load_24(output_difference_1_load_24_reg_1257),.output_difference_0_load_25(output_difference_0_load_25_reg_1262),.output_difference_1_load_25(output_difference_1_load_25_reg_1267),.output_difference_0_load_26(output_difference_0_load_26_reg_1292),.output_difference_1_load_26(output_difference_1_load_26_reg_1297),.output_difference_0_load_27(output_difference_0_load_27_reg_1302),.output_difference_1_load_27(output_difference_1_load_27_reg_1307),.output_difference_0_load_28(output_difference_0_load_28_reg_1332),.output_difference_1_load_28(output_difference_1_load_28_reg_1337),.output_difference_0_load_29(output_difference_0_load_29_reg_1342),.output_difference_1_load_29(output_difference_1_load_29_reg_1347),.output_difference_0_load_30(output_difference_0_load_30_reg_1372),.output_difference_1_load_30(output_difference_1_load_30_reg_1377),.output_difference_0_load_31(output_difference_0_load_31_reg_1382),.output_difference_1_load_31(output_difference_1_load_31_reg_1387),.grp_fu_1392_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1392_p_din0),.grp_fu_1392_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1392_p_din1),.grp_fu_1392_p_dout0(grp_fu_2874_p_dout0),.grp_fu_1392_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1392_p_ce),.grp_fu_1396_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1396_p_din0),.grp_fu_1396_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1396_p_din1),.grp_fu_1396_p_dout0(grp_fu_2878_p_dout0),.grp_fu_1396_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1396_p_ce),.grp_fu_1400_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1400_p_din0),.grp_fu_1400_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1400_p_din1),.grp_fu_1400_p_dout0(grp_fu_2882_p_dout0),.grp_fu_1400_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1400_p_ce),.grp_fu_1404_p_din0(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1404_p_din0),.grp_fu_1404_p_din1(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1404_p_din1),.grp_fu_1404_p_dout0(grp_fu_2886_p_dout0),.grp_fu_1404_p_ce(grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1404_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state17)) begin
            grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_start_reg <= 1'b1;
        end else if ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_ready == 1'b1)) begin
            grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        output_difference_0_load_10_reg_972 <= output_difference_0_q1;
        output_difference_0_load_11_reg_982 <= output_difference_0_q0;
        output_difference_1_load_10_reg_977 <= output_difference_1_q1;
        output_difference_1_load_11_reg_987 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_difference_0_load_12_reg_1012 <= output_difference_0_q1;
        output_difference_0_load_13_reg_1022 <= output_difference_0_q0;
        output_difference_1_load_12_reg_1017 <= output_difference_1_q1;
        output_difference_1_load_13_reg_1027 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        output_difference_0_load_14_reg_1052 <= output_difference_0_q1;
        output_difference_0_load_15_reg_1062 <= output_difference_0_q0;
        output_difference_1_load_14_reg_1057 <= output_difference_1_q1;
        output_difference_1_load_15_reg_1067 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        output_difference_0_load_16_reg_1092 <= output_difference_0_q1;
        output_difference_0_load_17_reg_1102 <= output_difference_0_q0;
        output_difference_1_load_16_reg_1097 <= output_difference_1_q1;
        output_difference_1_load_17_reg_1107 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        output_difference_0_load_18_reg_1132 <= output_difference_0_q1;
        output_difference_0_load_19_reg_1142 <= output_difference_0_q0;
        output_difference_1_load_18_reg_1137 <= output_difference_1_q1;
        output_difference_1_load_19_reg_1147 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_difference_0_load_1_reg_782 <= output_difference_0_q0;
        output_difference_0_load_reg_772 <= output_difference_0_q1;
        output_difference_1_load_1_reg_787 <= output_difference_1_q0;
        output_difference_1_load_reg_777 <= output_difference_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        output_difference_0_load_20_reg_1172 <= output_difference_0_q1;
        output_difference_0_load_21_reg_1182 <= output_difference_0_q0;
        output_difference_1_load_20_reg_1177 <= output_difference_1_q1;
        output_difference_1_load_21_reg_1187 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        output_difference_0_load_22_reg_1212 <= output_difference_0_q1;
        output_difference_0_load_23_reg_1222 <= output_difference_0_q0;
        output_difference_1_load_22_reg_1217 <= output_difference_1_q1;
        output_difference_1_load_23_reg_1227 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        output_difference_0_load_24_reg_1252 <= output_difference_0_q1;
        output_difference_0_load_25_reg_1262 <= output_difference_0_q0;
        output_difference_1_load_24_reg_1257 <= output_difference_1_q1;
        output_difference_1_load_25_reg_1267 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        output_difference_0_load_26_reg_1292 <= output_difference_0_q1;
        output_difference_0_load_27_reg_1302 <= output_difference_0_q0;
        output_difference_1_load_26_reg_1297 <= output_difference_1_q1;
        output_difference_1_load_27_reg_1307 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        output_difference_0_load_28_reg_1332 <= output_difference_0_q1;
        output_difference_0_load_29_reg_1342 <= output_difference_0_q0;
        output_difference_1_load_28_reg_1337 <= output_difference_1_q1;
        output_difference_1_load_29_reg_1347 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_difference_0_load_2_reg_812 <= output_difference_0_q1;
        output_difference_0_load_3_reg_822 <= output_difference_0_q0;
        output_difference_1_load_2_reg_817 <= output_difference_1_q1;
        output_difference_1_load_3_reg_827 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        output_difference_0_load_30_reg_1372 <= output_difference_0_q1;
        output_difference_0_load_31_reg_1382 <= output_difference_0_q0;
        output_difference_1_load_30_reg_1377 <= output_difference_1_q1;
        output_difference_1_load_31_reg_1387 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_difference_0_load_4_reg_852 <= output_difference_0_q1;
        output_difference_0_load_5_reg_862 <= output_difference_0_q0;
        output_difference_1_load_4_reg_857 <= output_difference_1_q1;
        output_difference_1_load_5_reg_867 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        output_difference_0_load_6_reg_892 <= output_difference_0_q1;
        output_difference_0_load_7_reg_902 <= output_difference_0_q0;
        output_difference_1_load_6_reg_897 <= output_difference_1_q1;
        output_difference_1_load_7_reg_907 <= output_difference_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        output_difference_0_load_8_reg_932 <= output_difference_0_q1;
        output_difference_0_load_9_reg_942 <= output_difference_0_q0;
        output_difference_1_load_8_reg_937 <= output_difference_1_q1;
        output_difference_1_load_9_reg_947 <= output_difference_1_q0;
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
    if ((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_done == 1'b0)) begin
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
    if ((((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1392_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1392_p_ce;
    end else begin
        grp_fu_1392_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1396_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1396_p_ce;
    end else begin
        grp_fu_1396_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1400_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1400_p_ce;
    end else begin
        grp_fu_1400_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_1404_ce = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1404_p_ce;
    end else begin
        grp_fu_1404_ce = 1'b1;
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
            if (((grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
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
assign delta_weights2_0_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_address0;
assign delta_weights2_0_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_address1;
assign delta_weights2_0_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_ce0;
assign delta_weights2_0_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_ce1;
assign delta_weights2_0_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_d0;
assign delta_weights2_0_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_d1;
assign delta_weights2_0_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_we0;
assign delta_weights2_0_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_0_we1;
assign delta_weights2_1_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_address0;
assign delta_weights2_1_address1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_address1;
assign delta_weights2_1_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_ce0;
assign delta_weights2_1_ce1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_ce1;
assign delta_weights2_1_d0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_d0;
assign delta_weights2_1_d1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_d1;
assign delta_weights2_1_we0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_we0;
assign delta_weights2_1_we1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_delta_weights2_1_we1;
assign grp_fu_2874_p_ce = grp_fu_1392_ce;
assign grp_fu_2874_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1392_p_din0;
assign grp_fu_2874_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1392_p_din1;
assign grp_fu_2878_p_ce = grp_fu_1396_ce;
assign grp_fu_2878_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1396_p_din0;
assign grp_fu_2878_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1396_p_din1;
assign grp_fu_2882_p_ce = grp_fu_1400_ce;
assign grp_fu_2882_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1400_p_din0;
assign grp_fu_2882_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1400_p_din1;
assign grp_fu_2886_p_ce = grp_fu_1404_ce;
assign grp_fu_2886_p_din0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1404_p_din0;
assign grp_fu_2886_p_din1 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_grp_fu_1404_p_din1;
assign grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_start = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_ap_start_reg;
assign last_activations_0_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_last_activations_0_address0;
assign last_activations_0_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_last_activations_0_ce0;
assign last_activations_1_address0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_last_activations_1_address0;
assign last_activations_1_ce0 = grp_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1_fu_672_last_activations_1_ce0;
assign output_difference_0_address0 = output_difference_0_address0_local;
assign output_difference_0_address1 = output_difference_0_address1_local;
assign output_difference_0_ce0 = output_difference_0_ce0_local;
assign output_difference_0_ce1 = output_difference_0_ce1_local;
assign output_difference_1_address0 = output_difference_1_address0_local;
assign output_difference_1_address1 = output_difference_1_address1_local;
assign output_difference_1_ce0 = output_difference_1_ce0_local;
assign output_difference_1_ce1 = output_difference_1_ce1_local;
endmodule 