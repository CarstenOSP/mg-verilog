module SgdLR_sw_SgdLR_sw_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_31_address0,v3_31_ce0,v3_31_we0,v3_31_d0,v3_30_address0,v3_30_ce0,v3_30_we0,v3_30_d0,v3_29_address0,v3_29_ce0,v3_29_we0,v3_29_d0,v3_28_address0,v3_28_ce0,v3_28_we0,v3_28_d0,v3_27_address0,v3_27_ce0,v3_27_we0,v3_27_d0,v3_26_address0,v3_26_ce0,v3_26_we0,v3_26_d0,v3_25_address0,v3_25_ce0,v3_25_we0,v3_25_d0,v3_24_address0,v3_24_ce0,v3_24_we0,v3_24_d0,v3_23_address0,v3_23_ce0,v3_23_we0,v3_23_d0,v3_22_address0,v3_22_ce0,v3_22_we0,v3_22_d0,v3_21_address0,v3_21_ce0,v3_21_we0,v3_21_d0,v3_20_address0,v3_20_ce0,v3_20_we0,v3_20_d0,v3_19_address0,v3_19_ce0,v3_19_we0,v3_19_d0,v3_18_address0,v3_18_ce0,v3_18_we0,v3_18_d0,v3_17_address0,v3_17_ce0,v3_17_we0,v3_17_d0,v3_16_address0,v3_16_ce0,v3_16_we0,v3_16_d0,v3_15_address0,v3_15_ce0,v3_15_we0,v3_15_d0,v3_14_address0,v3_14_ce0,v3_14_we0,v3_14_d0,v3_13_address0,v3_13_ce0,v3_13_we0,v3_13_d0,v3_12_address0,v3_12_ce0,v3_12_we0,v3_12_d0,v3_11_address0,v3_11_ce0,v3_11_we0,v3_11_d0,v3_10_address0,v3_10_ce0,v3_10_we0,v3_10_d0,v3_9_address0,v3_9_ce0,v3_9_we0,v3_9_d0,v3_8_address0,v3_8_ce0,v3_8_we0,v3_8_d0,v3_7_address0,v3_7_ce0,v3_7_we0,v3_7_d0,v3_6_address0,v3_6_ce0,v3_6_we0,v3_6_d0,v3_5_address0,v3_5_ce0,v3_5_we0,v3_5_d0,v3_4_address0,v3_4_ce0,v3_4_we0,v3_4_d0,v3_3_address0,v3_3_ce0,v3_3_we0,v3_3_d0,v3_2_address0,v3_2_ce0,v3_2_we0,v3_2_d0,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_address0,v3_ce0,v3_we0,v3_d0,v5,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v146,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,v0_4_address0,v0_4_ce0,v0_4_q0,v0_4_address1,v0_4_ce1,v0_4_q1,v0_5_address0,v0_5_ce0,v0_5_q0,v0_5_address1,v0_5_ce1,v0_5_q1,v0_6_address0,v0_6_ce0,v0_6_q0,v0_6_address1,v0_6_ce1,v0_6_q1,v0_7_address0,v0_7_ce0,v0_7_q0,v0_7_address1,v0_7_ce1,v0_7_q1,grp_fu_35611_p_din0,grp_fu_35611_p_din1,grp_fu_35611_p_dout0,grp_fu_35611_p_ce,grp_fu_35615_p_din0,grp_fu_35615_p_din1,grp_fu_35615_p_dout0,grp_fu_35615_p_ce,grp_fu_35619_p_din0,grp_fu_35619_p_din1,grp_fu_35619_p_dout0,grp_fu_35619_p_ce,grp_fu_35623_p_din0,grp_fu_35623_p_din1,grp_fu_35623_p_dout0,grp_fu_35623_p_ce,grp_fu_35627_p_din0,grp_fu_35627_p_din1,grp_fu_35627_p_dout0,grp_fu_35627_p_ce,grp_fu_35631_p_din0,grp_fu_35631_p_din1,grp_fu_35631_p_dout0,grp_fu_35631_p_ce,grp_fu_35635_p_din0,grp_fu_35635_p_din1,grp_fu_35635_p_dout0,grp_fu_35635_p_ce,grp_fu_35639_p_din0,grp_fu_35639_p_din1,grp_fu_35639_p_dout0,grp_fu_35639_p_ce,grp_fu_35643_p_din0,grp_fu_35643_p_din1,grp_fu_35643_p_dout0,grp_fu_35643_p_ce,grp_fu_35647_p_din0,grp_fu_35647_p_din1,grp_fu_35647_p_dout0,grp_fu_35647_p_ce,grp_fu_35651_p_din0,grp_fu_35651_p_din1,grp_fu_35651_p_dout0,grp_fu_35651_p_ce,grp_fu_35655_p_din0,grp_fu_35655_p_din1,grp_fu_35655_p_dout0,grp_fu_35655_p_ce,grp_fu_35659_p_din0,grp_fu_35659_p_din1,grp_fu_35659_p_dout0,grp_fu_35659_p_ce,grp_fu_35663_p_din0,grp_fu_35663_p_din1,grp_fu_35663_p_dout0,grp_fu_35663_p_ce,grp_fu_35667_p_din0,grp_fu_35667_p_din1,grp_fu_35667_p_dout0,grp_fu_35667_p_ce,grp_fu_35671_p_din0,grp_fu_35671_p_din1,grp_fu_35671_p_dout0,grp_fu_35671_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] v3_31_address0;
output   v3_31_ce0;
output   v3_31_we0;
output  [31:0] v3_31_d0;
output  [4:0] v3_30_address0;
output   v3_30_ce0;
output   v3_30_we0;
output  [31:0] v3_30_d0;
output  [4:0] v3_29_address0;
output   v3_29_ce0;
output   v3_29_we0;
output  [31:0] v3_29_d0;
output  [4:0] v3_28_address0;
output   v3_28_ce0;
output   v3_28_we0;
output  [31:0] v3_28_d0;
output  [4:0] v3_27_address0;
output   v3_27_ce0;
output   v3_27_we0;
output  [31:0] v3_27_d0;
output  [4:0] v3_26_address0;
output   v3_26_ce0;
output   v3_26_we0;
output  [31:0] v3_26_d0;
output  [4:0] v3_25_address0;
output   v3_25_ce0;
output   v3_25_we0;
output  [31:0] v3_25_d0;
output  [4:0] v3_24_address0;
output   v3_24_ce0;
output   v3_24_we0;
output  [31:0] v3_24_d0;
output  [4:0] v3_23_address0;
output   v3_23_ce0;
output   v3_23_we0;
output  [31:0] v3_23_d0;
output  [4:0] v3_22_address0;
output   v3_22_ce0;
output   v3_22_we0;
output  [31:0] v3_22_d0;
output  [4:0] v3_21_address0;
output   v3_21_ce0;
output   v3_21_we0;
output  [31:0] v3_21_d0;
output  [4:0] v3_20_address0;
output   v3_20_ce0;
output   v3_20_we0;
output  [31:0] v3_20_d0;
output  [4:0] v3_19_address0;
output   v3_19_ce0;
output   v3_19_we0;
output  [31:0] v3_19_d0;
output  [4:0] v3_18_address0;
output   v3_18_ce0;
output   v3_18_we0;
output  [31:0] v3_18_d0;
output  [4:0] v3_17_address0;
output   v3_17_ce0;
output   v3_17_we0;
output  [31:0] v3_17_d0;
output  [4:0] v3_16_address0;
output   v3_16_ce0;
output   v3_16_we0;
output  [31:0] v3_16_d0;
output  [4:0] v3_15_address0;
output   v3_15_ce0;
output   v3_15_we0;
output  [31:0] v3_15_d0;
output  [4:0] v3_14_address0;
output   v3_14_ce0;
output   v3_14_we0;
output  [31:0] v3_14_d0;
output  [4:0] v3_13_address0;
output   v3_13_ce0;
output   v3_13_we0;
output  [31:0] v3_13_d0;
output  [4:0] v3_12_address0;
output   v3_12_ce0;
output   v3_12_we0;
output  [31:0] v3_12_d0;
output  [4:0] v3_11_address0;
output   v3_11_ce0;
output   v3_11_we0;
output  [31:0] v3_11_d0;
output  [4:0] v3_10_address0;
output   v3_10_ce0;
output   v3_10_we0;
output  [31:0] v3_10_d0;
output  [4:0] v3_9_address0;
output   v3_9_ce0;
output   v3_9_we0;
output  [31:0] v3_9_d0;
output  [4:0] v3_8_address0;
output   v3_8_ce0;
output   v3_8_we0;
output  [31:0] v3_8_d0;
output  [4:0] v3_7_address0;
output   v3_7_ce0;
output   v3_7_we0;
output  [31:0] v3_7_d0;
output  [4:0] v3_6_address0;
output   v3_6_ce0;
output   v3_6_we0;
output  [31:0] v3_6_d0;
output  [4:0] v3_5_address0;
output   v3_5_ce0;
output   v3_5_we0;
output  [31:0] v3_5_d0;
output  [4:0] v3_4_address0;
output   v3_4_ce0;
output   v3_4_we0;
output  [31:0] v3_4_d0;
output  [4:0] v3_3_address0;
output   v3_3_ce0;
output   v3_3_we0;
output  [31:0] v3_3_d0;
output  [4:0] v3_2_address0;
output   v3_2_ce0;
output   v3_2_we0;
output  [31:0] v3_2_d0;
output  [4:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [31:0] v3_1_d0;
output  [4:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
input  [12:0] v5;
output  [19:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [19:0] v0_0_address1;
output   v0_0_ce1;
input  [31:0] v0_0_q1;
input  [31:0] v146;
output  [19:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [19:0] v0_1_address1;
output   v0_1_ce1;
input  [31:0] v0_1_q1;
output  [19:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [19:0] v0_2_address1;
output   v0_2_ce1;
input  [31:0] v0_2_q1;
output  [19:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [19:0] v0_3_address1;
output   v0_3_ce1;
input  [31:0] v0_3_q1;
output  [19:0] v0_4_address0;
output   v0_4_ce0;
input  [31:0] v0_4_q0;
output  [19:0] v0_4_address1;
output   v0_4_ce1;
input  [31:0] v0_4_q1;
output  [19:0] v0_5_address0;
output   v0_5_ce0;
input  [31:0] v0_5_q0;
output  [19:0] v0_5_address1;
output   v0_5_ce1;
input  [31:0] v0_5_q1;
output  [19:0] v0_6_address0;
output   v0_6_ce0;
input  [31:0] v0_6_q0;
output  [19:0] v0_6_address1;
output   v0_6_ce1;
input  [31:0] v0_6_q1;
output  [19:0] v0_7_address0;
output   v0_7_ce0;
input  [31:0] v0_7_q0;
output  [19:0] v0_7_address1;
output   v0_7_ce1;
input  [31:0] v0_7_q1;
output  [31:0] grp_fu_35611_p_din0;
output  [31:0] grp_fu_35611_p_din1;
input  [31:0] grp_fu_35611_p_dout0;
output   grp_fu_35611_p_ce;
output  [31:0] grp_fu_35615_p_din0;
output  [31:0] grp_fu_35615_p_din1;
input  [31:0] grp_fu_35615_p_dout0;
output   grp_fu_35615_p_ce;
output  [31:0] grp_fu_35619_p_din0;
output  [31:0] grp_fu_35619_p_din1;
input  [31:0] grp_fu_35619_p_dout0;
output   grp_fu_35619_p_ce;
output  [31:0] grp_fu_35623_p_din0;
output  [31:0] grp_fu_35623_p_din1;
input  [31:0] grp_fu_35623_p_dout0;
output   grp_fu_35623_p_ce;
output  [31:0] grp_fu_35627_p_din0;
output  [31:0] grp_fu_35627_p_din1;
input  [31:0] grp_fu_35627_p_dout0;
output   grp_fu_35627_p_ce;
output  [31:0] grp_fu_35631_p_din0;
output  [31:0] grp_fu_35631_p_din1;
input  [31:0] grp_fu_35631_p_dout0;
output   grp_fu_35631_p_ce;
output  [31:0] grp_fu_35635_p_din0;
output  [31:0] grp_fu_35635_p_din1;
input  [31:0] grp_fu_35635_p_dout0;
output   grp_fu_35635_p_ce;
output  [31:0] grp_fu_35639_p_din0;
output  [31:0] grp_fu_35639_p_din1;
input  [31:0] grp_fu_35639_p_dout0;
output   grp_fu_35639_p_ce;
output  [31:0] grp_fu_35643_p_din0;
output  [31:0] grp_fu_35643_p_din1;
input  [31:0] grp_fu_35643_p_dout0;
output   grp_fu_35643_p_ce;
output  [31:0] grp_fu_35647_p_din0;
output  [31:0] grp_fu_35647_p_din1;
input  [31:0] grp_fu_35647_p_dout0;
output   grp_fu_35647_p_ce;
output  [31:0] grp_fu_35651_p_din0;
output  [31:0] grp_fu_35651_p_din1;
input  [31:0] grp_fu_35651_p_dout0;
output   grp_fu_35651_p_ce;
output  [31:0] grp_fu_35655_p_din0;
output  [31:0] grp_fu_35655_p_din1;
input  [31:0] grp_fu_35655_p_dout0;
output   grp_fu_35655_p_ce;
output  [31:0] grp_fu_35659_p_din0;
output  [31:0] grp_fu_35659_p_din1;
input  [31:0] grp_fu_35659_p_dout0;
output   grp_fu_35659_p_ce;
output  [31:0] grp_fu_35663_p_din0;
output  [31:0] grp_fu_35663_p_din1;
input  [31:0] grp_fu_35663_p_dout0;
output   grp_fu_35663_p_ce;
output  [31:0] grp_fu_35667_p_din0;
output  [31:0] grp_fu_35667_p_din1;
input  [31:0] grp_fu_35667_p_dout0;
output   grp_fu_35667_p_ce;
output  [31:0] grp_fu_35671_p_din0;
output  [31:0] grp_fu_35671_p_din1;
input  [31:0] grp_fu_35671_p_dout0;
output   grp_fu_35671_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln177_reg_1442;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_952;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_956;
reg   [31:0] reg_960;
reg   [31:0] reg_964;
reg   [31:0] reg_968;
reg   [31:0] reg_972;
reg   [31:0] reg_976;
reg   [31:0] reg_980;
reg   [31:0] reg_984;
reg   [31:0] reg_988;
reg   [31:0] reg_992;
reg   [31:0] reg_996;
reg   [31:0] reg_1000;
reg   [31:0] reg_1004;
reg   [31:0] reg_1008;
reg   [31:0] reg_1012;
reg   [31:0] reg_1016;
reg   [31:0] reg_1022;
reg   [31:0] reg_1028;
reg   [31:0] reg_1034;
reg   [31:0] reg_1040;
reg   [31:0] reg_1046;
reg   [31:0] reg_1052;
reg   [31:0] reg_1058;
reg   [31:0] reg_1064;
reg   [31:0] reg_1070;
reg   [31:0] reg_1076;
reg   [31:0] reg_1082;
reg   [31:0] reg_1088;
reg   [31:0] reg_1094;
reg   [31:0] reg_1100;
reg   [31:0] reg_1106;
reg   [5:0] v143_2_reg_1437;
reg   [5:0] v143_2_reg_1437_pp0_iter1_reg;
reg   [5:0] v143_2_reg_1437_pp0_iter2_reg;
wire   [0:0] icmp_ln177_fu_1120_p2;
wire   [4:0] trunc_ln181_fu_1132_p1;
reg   [4:0] trunc_ln181_reg_1446;
wire   [31:0] v147_fu_1225_p1;
wire   [31:0] v149_fu_1230_p1;
wire   [31:0] v151_fu_1235_p1;
wire   [31:0] v153_fu_1240_p1;
wire   [31:0] v155_fu_1245_p1;
wire   [31:0] v157_fu_1250_p1;
wire   [31:0] v159_fu_1255_p1;
wire   [31:0] v161_fu_1260_p1;
wire   [31:0] v163_fu_1265_p1;
wire   [31:0] v165_fu_1270_p1;
wire   [31:0] v167_fu_1275_p1;
wire   [31:0] v169_fu_1280_p1;
wire   [31:0] v171_fu_1285_p1;
wire   [31:0] v173_fu_1290_p1;
wire   [31:0] v175_fu_1295_p1;
wire   [31:0] v177_fu_1300_p1;
wire   [31:0] v179_fu_1305_p1;
wire   [31:0] v181_fu_1310_p1;
wire   [31:0] v183_fu_1315_p1;
wire   [31:0] v185_fu_1320_p1;
wire   [31:0] v187_fu_1325_p1;
wire   [31:0] v189_fu_1330_p1;
wire   [31:0] v191_fu_1335_p1;
wire   [31:0] v193_fu_1340_p1;
wire   [31:0] v195_fu_1345_p1;
wire   [31:0] v197_fu_1350_p1;
wire   [31:0] v199_fu_1355_p1;
wire   [31:0] v201_fu_1360_p1;
wire   [31:0] v203_fu_1365_p1;
wire   [31:0] v205_fu_1370_p1;
wire   [31:0] v207_fu_1375_p1;
wire   [31:0] v209_fu_1380_p1;
wire   [63:0] zext_ln177_fu_1385_p1;
reg   [63:0] zext_ln177_reg_1772;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln181_fu_1146_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln205_fu_1168_p1;
wire   [63:0] zext_ln229_fu_1193_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln253_fu_1213_p1;
reg   [5:0] v143_fu_128;
wire   [5:0] add_ln177_fu_1126_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v143_2;
reg    v0_0_ce1_local;
reg   [19:0] v0_0_address1_local;
reg    v0_0_ce0_local;
reg   [19:0] v0_0_address0_local;
reg    v0_1_ce1_local;
reg   [19:0] v0_1_address1_local;
reg    v0_1_ce0_local;
reg   [19:0] v0_1_address0_local;
reg    v0_2_ce1_local;
reg   [19:0] v0_2_address1_local;
reg    v0_2_ce0_local;
reg   [19:0] v0_2_address0_local;
reg    v0_3_ce1_local;
reg   [19:0] v0_3_address1_local;
reg    v0_3_ce0_local;
reg   [19:0] v0_3_address0_local;
reg    v0_4_ce1_local;
reg   [19:0] v0_4_address1_local;
reg    v0_4_ce0_local;
reg   [19:0] v0_4_address0_local;
reg    v0_5_ce1_local;
reg   [19:0] v0_5_address1_local;
reg    v0_5_ce0_local;
reg   [19:0] v0_5_address0_local;
reg    v0_6_ce1_local;
reg   [19:0] v0_6_address1_local;
reg    v0_6_ce0_local;
reg   [19:0] v0_6_address0_local;
reg    v0_7_ce1_local;
reg   [19:0] v0_7_address1_local;
reg    v0_7_ce0_local;
reg   [19:0] v0_7_address0_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
reg    v3_2_we0_local;
reg    v3_2_ce0_local;
reg    v3_3_we0_local;
reg    v3_3_ce0_local;
reg    v3_4_we0_local;
reg    v3_4_ce0_local;
reg    v3_5_we0_local;
reg    v3_5_ce0_local;
reg    v3_6_we0_local;
reg    v3_6_ce0_local;
reg    v3_7_we0_local;
reg    v3_7_ce0_local;
reg    v3_8_we0_local;
reg    v3_8_ce0_local;
reg    v3_9_we0_local;
reg    v3_9_ce0_local;
reg    v3_10_we0_local;
reg    v3_10_ce0_local;
reg    v3_11_we0_local;
reg    v3_11_ce0_local;
reg    v3_12_we0_local;
reg    v3_12_ce0_local;
reg    v3_13_we0_local;
reg    v3_13_ce0_local;
reg    v3_14_we0_local;
reg    v3_14_ce0_local;
reg    v3_15_we0_local;
reg    v3_15_ce0_local;
reg    v3_16_we0_local;
reg    v3_16_ce0_local;
reg    v3_17_we0_local;
reg    v3_17_ce0_local;
reg    v3_18_we0_local;
reg    v3_18_ce0_local;
reg    v3_19_we0_local;
reg    v3_19_ce0_local;
reg    v3_20_we0_local;
reg    v3_20_ce0_local;
reg    v3_21_we0_local;
reg    v3_21_ce0_local;
reg    v3_22_we0_local;
reg    v3_22_ce0_local;
reg    v3_23_we0_local;
reg    v3_23_ce0_local;
reg    v3_24_we0_local;
reg    v3_24_ce0_local;
reg    v3_25_we0_local;
reg    v3_25_ce0_local;
reg    v3_26_we0_local;
reg    v3_26_ce0_local;
reg    v3_27_we0_local;
reg    v3_27_ce0_local;
reg    v3_28_we0_local;
reg    v3_28_ce0_local;
reg    v3_29_we0_local;
reg    v3_29_ce0_local;
reg    v3_30_we0_local;
reg    v3_30_ce0_local;
reg    v3_31_we0_local;
reg    v3_31_ce0_local;
reg   [31:0] grp_fu_888_p1;
reg   [31:0] grp_fu_892_p1;
reg   [31:0] grp_fu_896_p1;
reg   [31:0] grp_fu_900_p1;
reg   [31:0] grp_fu_904_p1;
reg   [31:0] grp_fu_908_p1;
reg   [31:0] grp_fu_912_p1;
reg   [31:0] grp_fu_916_p1;
reg   [31:0] grp_fu_920_p1;
reg   [31:0] grp_fu_924_p1;
reg   [31:0] grp_fu_928_p1;
reg   [31:0] grp_fu_932_p1;
reg   [31:0] grp_fu_936_p1;
reg   [31:0] grp_fu_940_p1;
reg   [31:0] grp_fu_944_p1;
reg   [31:0] grp_fu_948_p1;
wire   [19:0] add_ln1_fu_1136_p4;
wire   [19:0] or_ln3_fu_1158_p4;
wire   [19:0] or_ln4_fu_1185_p4;
wire   [19:0] or_ln5_fu_1205_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v143_fu_128 = 6'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln177_fu_1120_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v143_fu_128 <= add_ln177_fu_1126_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v143_fu_128 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln177_reg_1442 <= icmp_ln177_fu_1120_p2;
        trunc_ln181_reg_1446 <= trunc_ln181_fu_1132_p1;
        v143_2_reg_1437 <= ap_sig_allocacmp_v143_2;
        v143_2_reg_1437_pp0_iter1_reg <= v143_2_reg_1437;
        v143_2_reg_1437_pp0_iter2_reg <= v143_2_reg_1437_pp0_iter1_reg;
        zext_ln177_reg_1772[5 : 0] <= zext_ln177_fu_1385_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1000 <= v0_4_q0;
        reg_1004 <= v0_5_q0;
        reg_1008 <= v0_6_q0;
        reg_1012 <= v0_7_q0;
        reg_952 <= v0_0_q1;
        reg_956 <= v0_1_q1;
        reg_960 <= v0_2_q1;
        reg_964 <= v0_3_q1;
        reg_968 <= v0_4_q1;
        reg_972 <= v0_5_q1;
        reg_976 <= v0_6_q1;
        reg_980 <= v0_7_q1;
        reg_984 <= v0_0_q0;
        reg_988 <= v0_1_q0;
        reg_992 <= v0_2_q0;
        reg_996 <= v0_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1016 <= grp_fu_35611_p_dout0;
        reg_1022 <= grp_fu_35615_p_dout0;
        reg_1028 <= grp_fu_35619_p_dout0;
        reg_1034 <= grp_fu_35623_p_dout0;
        reg_1040 <= grp_fu_35627_p_dout0;
        reg_1046 <= grp_fu_35631_p_dout0;
        reg_1052 <= grp_fu_35635_p_dout0;
        reg_1058 <= grp_fu_35639_p_dout0;
        reg_1064 <= grp_fu_35643_p_dout0;
        reg_1070 <= grp_fu_35647_p_dout0;
        reg_1076 <= grp_fu_35651_p_dout0;
        reg_1082 <= grp_fu_35655_p_dout0;
        reg_1088 <= grp_fu_35659_p_dout0;
        reg_1094 <= grp_fu_35663_p_dout0;
        reg_1100 <= grp_fu_35667_p_dout0;
        reg_1106 <= grp_fu_35671_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln177_reg_1442 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v143_2 = 6'd0;
    end else begin
        ap_sig_allocacmp_v143_2 = v143_fu_128;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_888_p1 = v179_fu_1305_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_888_p1 = v147_fu_1225_p1;
        end else begin
            grp_fu_888_p1 = 'bx;
        end
    end else begin
        grp_fu_888_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_892_p1 = v181_fu_1310_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_892_p1 = v149_fu_1230_p1;
        end else begin
            grp_fu_892_p1 = 'bx;
        end
    end else begin
        grp_fu_892_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_896_p1 = v183_fu_1315_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_896_p1 = v151_fu_1235_p1;
        end else begin
            grp_fu_896_p1 = 'bx;
        end
    end else begin
        grp_fu_896_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_900_p1 = v185_fu_1320_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_900_p1 = v153_fu_1240_p1;
        end else begin
            grp_fu_900_p1 = 'bx;
        end
    end else begin
        grp_fu_900_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_904_p1 = v187_fu_1325_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_904_p1 = v155_fu_1245_p1;
        end else begin
            grp_fu_904_p1 = 'bx;
        end
    end else begin
        grp_fu_904_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_908_p1 = v189_fu_1330_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_908_p1 = v157_fu_1250_p1;
        end else begin
            grp_fu_908_p1 = 'bx;
        end
    end else begin
        grp_fu_908_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_912_p1 = v191_fu_1335_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_912_p1 = v159_fu_1255_p1;
        end else begin
            grp_fu_912_p1 = 'bx;
        end
    end else begin
        grp_fu_912_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_916_p1 = v193_fu_1340_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_916_p1 = v161_fu_1260_p1;
        end else begin
            grp_fu_916_p1 = 'bx;
        end
    end else begin
        grp_fu_916_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_920_p1 = v195_fu_1345_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_920_p1 = v163_fu_1265_p1;
        end else begin
            grp_fu_920_p1 = 'bx;
        end
    end else begin
        grp_fu_920_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_924_p1 = v197_fu_1350_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_924_p1 = v165_fu_1270_p1;
        end else begin
            grp_fu_924_p1 = 'bx;
        end
    end else begin
        grp_fu_924_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_928_p1 = v199_fu_1355_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_928_p1 = v167_fu_1275_p1;
        end else begin
            grp_fu_928_p1 = 'bx;
        end
    end else begin
        grp_fu_928_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_932_p1 = v201_fu_1360_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_932_p1 = v169_fu_1280_p1;
        end else begin
            grp_fu_932_p1 = 'bx;
        end
    end else begin
        grp_fu_932_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_936_p1 = v203_fu_1365_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_936_p1 = v171_fu_1285_p1;
        end else begin
            grp_fu_936_p1 = 'bx;
        end
    end else begin
        grp_fu_936_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_940_p1 = v205_fu_1370_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_940_p1 = v173_fu_1290_p1;
        end else begin
            grp_fu_940_p1 = 'bx;
        end
    end else begin
        grp_fu_940_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_944_p1 = v207_fu_1375_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_944_p1 = v175_fu_1295_p1;
        end else begin
            grp_fu_944_p1 = 'bx;
        end
    end else begin
        grp_fu_944_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_948_p1 = v209_fu_1380_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_948_p1 = v177_fu_1300_p1;
        end else begin
            grp_fu_948_p1 = 'bx;
        end
    end else begin
        grp_fu_948_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_0_address0_local = zext_ln253_fu_1213_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address0_local = zext_ln205_fu_1168_p1;
        end else begin
            v0_0_address0_local = 'bx;
        end
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_0_address1_local = zext_ln229_fu_1193_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address1_local = zext_ln181_fu_1146_p1;
        end else begin
            v0_0_address1_local = 'bx;
        end
    end else begin
        v0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce1_local = 1'b1;
    end else begin
        v0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_1_address0_local = zext_ln253_fu_1213_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address0_local = zext_ln205_fu_1168_p1;
        end else begin
            v0_1_address0_local = 'bx;
        end
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_1_address1_local = zext_ln229_fu_1193_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address1_local = zext_ln181_fu_1146_p1;
        end else begin
            v0_1_address1_local = 'bx;
        end
    end else begin
        v0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce1_local = 1'b1;
    end else begin
        v0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_2_address0_local = zext_ln253_fu_1213_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_2_address0_local = zext_ln205_fu_1168_p1;
        end else begin
            v0_2_address0_local = 'bx;
        end
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_2_address1_local = zext_ln229_fu_1193_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_2_address1_local = zext_ln181_fu_1146_p1;
        end else begin
            v0_2_address1_local = 'bx;
        end
    end else begin
        v0_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce1_local = 1'b1;
    end else begin
        v0_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_3_address0_local = zext_ln253_fu_1213_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_3_address0_local = zext_ln205_fu_1168_p1;
        end else begin
            v0_3_address0_local = 'bx;
        end
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_3_address1_local = zext_ln229_fu_1193_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_3_address1_local = zext_ln181_fu_1146_p1;
        end else begin
            v0_3_address1_local = 'bx;
        end
    end else begin
        v0_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce1_local = 1'b1;
    end else begin
        v0_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_4_address0_local = zext_ln253_fu_1213_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_4_address0_local = zext_ln205_fu_1168_p1;
        end else begin
            v0_4_address0_local = 'bx;
        end
    end else begin
        v0_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_4_address1_local = zext_ln229_fu_1193_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_4_address1_local = zext_ln181_fu_1146_p1;
        end else begin
            v0_4_address1_local = 'bx;
        end
    end else begin
        v0_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_4_ce1_local = 1'b1;
    end else begin
        v0_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_5_address0_local = zext_ln253_fu_1213_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_5_address0_local = zext_ln205_fu_1168_p1;
        end else begin
            v0_5_address0_local = 'bx;
        end
    end else begin
        v0_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_5_address1_local = zext_ln229_fu_1193_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_5_address1_local = zext_ln181_fu_1146_p1;
        end else begin
            v0_5_address1_local = 'bx;
        end
    end else begin
        v0_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_5_ce1_local = 1'b1;
    end else begin
        v0_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_6_address0_local = zext_ln253_fu_1213_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_6_address0_local = zext_ln205_fu_1168_p1;
        end else begin
            v0_6_address0_local = 'bx;
        end
    end else begin
        v0_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_6_address1_local = zext_ln229_fu_1193_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_6_address1_local = zext_ln181_fu_1146_p1;
        end else begin
            v0_6_address1_local = 'bx;
        end
    end else begin
        v0_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_6_ce1_local = 1'b1;
    end else begin
        v0_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_7_address0_local = zext_ln253_fu_1213_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_7_address0_local = zext_ln205_fu_1168_p1;
        end else begin
            v0_7_address0_local = 'bx;
        end
    end else begin
        v0_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_7_address1_local = zext_ln229_fu_1193_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_7_address1_local = zext_ln181_fu_1146_p1;
        end else begin
            v0_7_address1_local = 'bx;
        end
    end else begin
        v0_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_7_ce1_local = 1'b1;
    end else begin
        v0_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_10_ce0_local = 1'b1;
    end else begin
        v3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_10_we0_local = 1'b1;
    end else begin
        v3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_11_ce0_local = 1'b1;
    end else begin
        v3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_11_we0_local = 1'b1;
    end else begin
        v3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_12_ce0_local = 1'b1;
    end else begin
        v3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_12_we0_local = 1'b1;
    end else begin
        v3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_13_ce0_local = 1'b1;
    end else begin
        v3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_13_we0_local = 1'b1;
    end else begin
        v3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_14_ce0_local = 1'b1;
    end else begin
        v3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_14_we0_local = 1'b1;
    end else begin
        v3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_15_ce0_local = 1'b1;
    end else begin
        v3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_15_we0_local = 1'b1;
    end else begin
        v3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_16_ce0_local = 1'b1;
    end else begin
        v3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_16_we0_local = 1'b1;
    end else begin
        v3_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_17_ce0_local = 1'b1;
    end else begin
        v3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_17_we0_local = 1'b1;
    end else begin
        v3_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_18_ce0_local = 1'b1;
    end else begin
        v3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_18_we0_local = 1'b1;
    end else begin
        v3_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_19_ce0_local = 1'b1;
    end else begin
        v3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_19_we0_local = 1'b1;
    end else begin
        v3_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_20_ce0_local = 1'b1;
    end else begin
        v3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_20_we0_local = 1'b1;
    end else begin
        v3_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_21_ce0_local = 1'b1;
    end else begin
        v3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_21_we0_local = 1'b1;
    end else begin
        v3_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_22_ce0_local = 1'b1;
    end else begin
        v3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_22_we0_local = 1'b1;
    end else begin
        v3_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_23_ce0_local = 1'b1;
    end else begin
        v3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_23_we0_local = 1'b1;
    end else begin
        v3_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_24_ce0_local = 1'b1;
    end else begin
        v3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_24_we0_local = 1'b1;
    end else begin
        v3_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_25_ce0_local = 1'b1;
    end else begin
        v3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_25_we0_local = 1'b1;
    end else begin
        v3_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_26_ce0_local = 1'b1;
    end else begin
        v3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_26_we0_local = 1'b1;
    end else begin
        v3_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_27_ce0_local = 1'b1;
    end else begin
        v3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_27_we0_local = 1'b1;
    end else begin
        v3_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_28_ce0_local = 1'b1;
    end else begin
        v3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_28_we0_local = 1'b1;
    end else begin
        v3_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_29_ce0_local = 1'b1;
    end else begin
        v3_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_29_we0_local = 1'b1;
    end else begin
        v3_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_we0_local = 1'b1;
    end else begin
        v3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_30_ce0_local = 1'b1;
    end else begin
        v3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_30_we0_local = 1'b1;
    end else begin
        v3_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_31_ce0_local = 1'b1;
    end else begin
        v3_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_31_we0_local = 1'b1;
    end else begin
        v3_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_3_we0_local = 1'b1;
    end else begin
        v3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_4_ce0_local = 1'b1;
    end else begin
        v3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_4_we0_local = 1'b1;
    end else begin
        v3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_5_ce0_local = 1'b1;
    end else begin
        v3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_5_we0_local = 1'b1;
    end else begin
        v3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_6_ce0_local = 1'b1;
    end else begin
        v3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_6_we0_local = 1'b1;
    end else begin
        v3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_7_ce0_local = 1'b1;
    end else begin
        v3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_7_we0_local = 1'b1;
    end else begin
        v3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_8_ce0_local = 1'b1;
    end else begin
        v3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_8_we0_local = 1'b1;
    end else begin
        v3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_9_ce0_local = 1'b1;
    end else begin
        v3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_9_we0_local = 1'b1;
    end else begin
        v3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln177_fu_1126_p2 = (ap_sig_allocacmp_v143_2 + 6'd1);
assign add_ln1_fu_1136_p4 = {{{v5}, {trunc_ln181_fu_1132_p1}}, {2'd0}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_35611_p_ce = 1'b1;
assign grp_fu_35611_p_din0 = v146;
assign grp_fu_35611_p_din1 = grp_fu_888_p1;
assign grp_fu_35615_p_ce = 1'b1;
assign grp_fu_35615_p_din0 = v146;
assign grp_fu_35615_p_din1 = grp_fu_892_p1;
assign grp_fu_35619_p_ce = 1'b1;
assign grp_fu_35619_p_din0 = v146;
assign grp_fu_35619_p_din1 = grp_fu_896_p1;
assign grp_fu_35623_p_ce = 1'b1;
assign grp_fu_35623_p_din0 = v146;
assign grp_fu_35623_p_din1 = grp_fu_900_p1;
assign grp_fu_35627_p_ce = 1'b1;
assign grp_fu_35627_p_din0 = v146;
assign grp_fu_35627_p_din1 = grp_fu_904_p1;
assign grp_fu_35631_p_ce = 1'b1;
assign grp_fu_35631_p_din0 = v146;
assign grp_fu_35631_p_din1 = grp_fu_908_p1;
assign grp_fu_35635_p_ce = 1'b1;
assign grp_fu_35635_p_din0 = v146;
assign grp_fu_35635_p_din1 = grp_fu_912_p1;
assign grp_fu_35639_p_ce = 1'b1;
assign grp_fu_35639_p_din0 = v146;
assign grp_fu_35639_p_din1 = grp_fu_916_p1;
assign grp_fu_35643_p_ce = 1'b1;
assign grp_fu_35643_p_din0 = v146;
assign grp_fu_35643_p_din1 = grp_fu_920_p1;
assign grp_fu_35647_p_ce = 1'b1;
assign grp_fu_35647_p_din0 = v146;
assign grp_fu_35647_p_din1 = grp_fu_924_p1;
assign grp_fu_35651_p_ce = 1'b1;
assign grp_fu_35651_p_din0 = v146;
assign grp_fu_35651_p_din1 = grp_fu_928_p1;
assign grp_fu_35655_p_ce = 1'b1;
assign grp_fu_35655_p_din0 = v146;
assign grp_fu_35655_p_din1 = grp_fu_932_p1;
assign grp_fu_35659_p_ce = 1'b1;
assign grp_fu_35659_p_din0 = v146;
assign grp_fu_35659_p_din1 = grp_fu_936_p1;
assign grp_fu_35663_p_ce = 1'b1;
assign grp_fu_35663_p_din0 = v146;
assign grp_fu_35663_p_din1 = grp_fu_940_p1;
assign grp_fu_35667_p_ce = 1'b1;
assign grp_fu_35667_p_din0 = v146;
assign grp_fu_35667_p_din1 = grp_fu_944_p1;
assign grp_fu_35671_p_ce = 1'b1;
assign grp_fu_35671_p_din0 = v146;
assign grp_fu_35671_p_din1 = grp_fu_948_p1;
assign icmp_ln177_fu_1120_p2 = ((ap_sig_allocacmp_v143_2 == 6'd32) ? 1'b1 : 1'b0);
assign or_ln3_fu_1158_p4 = {{{v5}, {trunc_ln181_fu_1132_p1}}, {2'd1}};
assign or_ln4_fu_1185_p4 = {{{v5}, {trunc_ln181_reg_1446}}, {2'd2}};
assign or_ln5_fu_1205_p4 = {{{v5}, {trunc_ln181_reg_1446}}, {2'd3}};
assign trunc_ln181_fu_1132_p1 = ap_sig_allocacmp_v143_2[4:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_address1 = v0_0_address1_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_address1 = v0_1_address1_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_address1 = v0_2_address1_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_2_ce1 = v0_2_ce1_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_address1 = v0_3_address1_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_3_ce1 = v0_3_ce1_local;
assign v0_4_address0 = v0_4_address0_local;
assign v0_4_address1 = v0_4_address1_local;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_4_ce1 = v0_4_ce1_local;
assign v0_5_address0 = v0_5_address0_local;
assign v0_5_address1 = v0_5_address1_local;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_5_ce1 = v0_5_ce1_local;
assign v0_6_address0 = v0_6_address0_local;
assign v0_6_address1 = v0_6_address1_local;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_6_ce1 = v0_6_ce1_local;
assign v0_7_address0 = v0_7_address0_local;
assign v0_7_address1 = v0_7_address1_local;
assign v0_7_ce0 = v0_7_ce0_local;
assign v0_7_ce1 = v0_7_ce1_local;
assign v147_fu_1225_p1 = reg_952;
assign v149_fu_1230_p1 = reg_956;
assign v151_fu_1235_p1 = reg_960;
assign v153_fu_1240_p1 = reg_964;
assign v155_fu_1245_p1 = reg_968;
assign v157_fu_1250_p1 = reg_972;
assign v159_fu_1255_p1 = reg_976;
assign v161_fu_1260_p1 = reg_980;
assign v163_fu_1265_p1 = reg_984;
assign v165_fu_1270_p1 = reg_988;
assign v167_fu_1275_p1 = reg_992;
assign v169_fu_1280_p1 = reg_996;
assign v171_fu_1285_p1 = reg_1000;
assign v173_fu_1290_p1 = reg_1004;
assign v175_fu_1295_p1 = reg_1008;
assign v177_fu_1300_p1 = reg_1012;
assign v179_fu_1305_p1 = reg_952;
assign v181_fu_1310_p1 = reg_956;
assign v183_fu_1315_p1 = reg_960;
assign v185_fu_1320_p1 = reg_964;
assign v187_fu_1325_p1 = reg_968;
assign v189_fu_1330_p1 = reg_972;
assign v191_fu_1335_p1 = reg_976;
assign v193_fu_1340_p1 = reg_980;
assign v195_fu_1345_p1 = reg_984;
assign v197_fu_1350_p1 = reg_988;
assign v199_fu_1355_p1 = reg_992;
assign v201_fu_1360_p1 = reg_996;
assign v203_fu_1365_p1 = reg_1000;
assign v205_fu_1370_p1 = reg_1004;
assign v207_fu_1375_p1 = reg_1008;
assign v209_fu_1380_p1 = reg_1012;
assign v3_10_address0 = zext_ln177_fu_1385_p1;
assign v3_10_ce0 = v3_10_ce0_local;
assign v3_10_d0 = reg_1076;
assign v3_10_we0 = v3_10_we0_local;
assign v3_11_address0 = zext_ln177_fu_1385_p1;
assign v3_11_ce0 = v3_11_ce0_local;
assign v3_11_d0 = reg_1082;
assign v3_11_we0 = v3_11_we0_local;
assign v3_12_address0 = zext_ln177_fu_1385_p1;
assign v3_12_ce0 = v3_12_ce0_local;
assign v3_12_d0 = reg_1088;
assign v3_12_we0 = v3_12_we0_local;
assign v3_13_address0 = zext_ln177_fu_1385_p1;
assign v3_13_ce0 = v3_13_ce0_local;
assign v3_13_d0 = reg_1094;
assign v3_13_we0 = v3_13_we0_local;
assign v3_14_address0 = zext_ln177_fu_1385_p1;
assign v3_14_ce0 = v3_14_ce0_local;
assign v3_14_d0 = reg_1100;
assign v3_14_we0 = v3_14_we0_local;
assign v3_15_address0 = zext_ln177_fu_1385_p1;
assign v3_15_ce0 = v3_15_ce0_local;
assign v3_15_d0 = reg_1106;
assign v3_15_we0 = v3_15_we0_local;
assign v3_16_address0 = zext_ln177_reg_1772;
assign v3_16_ce0 = v3_16_ce0_local;
assign v3_16_d0 = reg_1016;
assign v3_16_we0 = v3_16_we0_local;
assign v3_17_address0 = zext_ln177_reg_1772;
assign v3_17_ce0 = v3_17_ce0_local;
assign v3_17_d0 = reg_1022;
assign v3_17_we0 = v3_17_we0_local;
assign v3_18_address0 = zext_ln177_reg_1772;
assign v3_18_ce0 = v3_18_ce0_local;
assign v3_18_d0 = reg_1028;
assign v3_18_we0 = v3_18_we0_local;
assign v3_19_address0 = zext_ln177_reg_1772;
assign v3_19_ce0 = v3_19_ce0_local;
assign v3_19_d0 = reg_1034;
assign v3_19_we0 = v3_19_we0_local;
assign v3_1_address0 = zext_ln177_fu_1385_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_d0 = reg_1022;
assign v3_1_we0 = v3_1_we0_local;
assign v3_20_address0 = zext_ln177_reg_1772;
assign v3_20_ce0 = v3_20_ce0_local;
assign v3_20_d0 = reg_1040;
assign v3_20_we0 = v3_20_we0_local;
assign v3_21_address0 = zext_ln177_reg_1772;
assign v3_21_ce0 = v3_21_ce0_local;
assign v3_21_d0 = reg_1046;
assign v3_21_we0 = v3_21_we0_local;
assign v3_22_address0 = zext_ln177_reg_1772;
assign v3_22_ce0 = v3_22_ce0_local;
assign v3_22_d0 = reg_1052;
assign v3_22_we0 = v3_22_we0_local;
assign v3_23_address0 = zext_ln177_reg_1772;
assign v3_23_ce0 = v3_23_ce0_local;
assign v3_23_d0 = reg_1058;
assign v3_23_we0 = v3_23_we0_local;
assign v3_24_address0 = zext_ln177_reg_1772;
assign v3_24_ce0 = v3_24_ce0_local;
assign v3_24_d0 = reg_1064;
assign v3_24_we0 = v3_24_we0_local;
assign v3_25_address0 = zext_ln177_reg_1772;
assign v3_25_ce0 = v3_25_ce0_local;
assign v3_25_d0 = reg_1070;
assign v3_25_we0 = v3_25_we0_local;
assign v3_26_address0 = zext_ln177_reg_1772;
assign v3_26_ce0 = v3_26_ce0_local;
assign v3_26_d0 = reg_1076;
assign v3_26_we0 = v3_26_we0_local;
assign v3_27_address0 = zext_ln177_reg_1772;
assign v3_27_ce0 = v3_27_ce0_local;
assign v3_27_d0 = reg_1082;
assign v3_27_we0 = v3_27_we0_local;
assign v3_28_address0 = zext_ln177_reg_1772;
assign v3_28_ce0 = v3_28_ce0_local;
assign v3_28_d0 = reg_1088;
assign v3_28_we0 = v3_28_we0_local;
assign v3_29_address0 = zext_ln177_reg_1772;
assign v3_29_ce0 = v3_29_ce0_local;
assign v3_29_d0 = reg_1094;
assign v3_29_we0 = v3_29_we0_local;
assign v3_2_address0 = zext_ln177_fu_1385_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_d0 = reg_1028;
assign v3_2_we0 = v3_2_we0_local;
assign v3_30_address0 = zext_ln177_reg_1772;
assign v3_30_ce0 = v3_30_ce0_local;
assign v3_30_d0 = reg_1100;
assign v3_30_we0 = v3_30_we0_local;
assign v3_31_address0 = zext_ln177_reg_1772;
assign v3_31_ce0 = v3_31_ce0_local;
assign v3_31_d0 = reg_1106;
assign v3_31_we0 = v3_31_we0_local;
assign v3_3_address0 = zext_ln177_fu_1385_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_d0 = reg_1034;
assign v3_3_we0 = v3_3_we0_local;
assign v3_4_address0 = zext_ln177_fu_1385_p1;
assign v3_4_ce0 = v3_4_ce0_local;
assign v3_4_d0 = reg_1040;
assign v3_4_we0 = v3_4_we0_local;
assign v3_5_address0 = zext_ln177_fu_1385_p1;
assign v3_5_ce0 = v3_5_ce0_local;
assign v3_5_d0 = reg_1046;
assign v3_5_we0 = v3_5_we0_local;
assign v3_6_address0 = zext_ln177_fu_1385_p1;
assign v3_6_ce0 = v3_6_ce0_local;
assign v3_6_d0 = reg_1052;
assign v3_6_we0 = v3_6_we0_local;
assign v3_7_address0 = zext_ln177_fu_1385_p1;
assign v3_7_ce0 = v3_7_ce0_local;
assign v3_7_d0 = reg_1058;
assign v3_7_we0 = v3_7_we0_local;
assign v3_8_address0 = zext_ln177_fu_1385_p1;
assign v3_8_ce0 = v3_8_ce0_local;
assign v3_8_d0 = reg_1064;
assign v3_8_we0 = v3_8_we0_local;
assign v3_9_address0 = zext_ln177_fu_1385_p1;
assign v3_9_ce0 = v3_9_ce0_local;
assign v3_9_d0 = reg_1070;
assign v3_9_we0 = v3_9_we0_local;
assign v3_address0 = zext_ln177_fu_1385_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_d0 = reg_1016;
assign v3_we0 = v3_we0_local;
assign zext_ln177_fu_1385_p1 = v143_2_reg_1437_pp0_iter2_reg;
assign zext_ln181_fu_1146_p1 = add_ln1_fu_1136_p4;
assign zext_ln205_fu_1168_p1 = or_ln3_fu_1158_p4;
assign zext_ln229_fu_1193_p1 = or_ln4_fu_1185_p4;
assign zext_ln253_fu_1213_p1 = or_ln5_fu_1205_p4;
always @ (posedge ap_clk) begin
    zext_ln177_reg_1772[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 