
module kernel_2mm_kernel_2mm_node0_Pipeline_label_26 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v229_7_address0,v229_7_ce0,v229_7_we0,v229_7_d0,v229_7_q0,v229_7_address1,v229_7_ce1,v229_7_we1,v229_7_d1,v229_7_q1,v229_6_address0,v229_6_ce0,v229_6_we0,v229_6_d0,v229_6_q0,v229_6_address1,v229_6_ce1,v229_6_we1,v229_6_d1,v229_6_q1,v229_5_address0,v229_5_ce0,v229_5_we0,v229_5_d0,v229_5_q0,v229_5_address1,v229_5_ce1,v229_5_we1,v229_5_d1,v229_5_q1,v229_4_address0,v229_4_ce0,v229_4_we0,v229_4_d0,v229_4_q0,v229_4_address1,v229_4_ce1,v229_4_we1,v229_4_d1,v229_4_q1,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v5,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,mul_ln127,mul_ln140,v4,empty,v11_1,v24_1,v35_1,v46_1,v57_1,v68_1,v79_1,v90_1,v101_1,grp_fu_28120_p_din0,grp_fu_28120_p_din1,grp_fu_28120_p_opcode,grp_fu_28120_p_dout0,grp_fu_28120_p_ce,grp_fu_28124_p_din0,grp_fu_28124_p_din1,grp_fu_28124_p_opcode,grp_fu_28124_p_dout0,grp_fu_28124_p_ce,grp_fu_28128_p_din0,grp_fu_28128_p_din1,grp_fu_28128_p_opcode,grp_fu_28128_p_dout0,grp_fu_28128_p_ce,grp_fu_28132_p_din0,grp_fu_28132_p_din1,grp_fu_28132_p_opcode,grp_fu_28132_p_dout0,grp_fu_28132_p_ce,grp_fu_28136_p_din0,grp_fu_28136_p_din1,grp_fu_28136_p_opcode,grp_fu_28136_p_dout0,grp_fu_28136_p_ce,grp_fu_28140_p_din0,grp_fu_28140_p_din1,grp_fu_28140_p_dout0,grp_fu_28140_p_ce,grp_fu_28144_p_din0,grp_fu_28144_p_din1,grp_fu_28144_p_dout0,grp_fu_28144_p_ce,grp_fu_28148_p_din0,grp_fu_28148_p_din1,grp_fu_28148_p_dout0,grp_fu_28148_p_ce,grp_fu_28152_p_din0,grp_fu_28152_p_din1,grp_fu_28152_p_dout0,grp_fu_28152_p_ce,grp_fu_28156_p_din0,grp_fu_28156_p_din1,grp_fu_28156_p_dout0,grp_fu_28156_p_ce,grp_fu_28160_p_din0,grp_fu_28160_p_din1,grp_fu_28160_p_dout0,grp_fu_28160_p_ce,grp_fu_28164_p_din0,grp_fu_28164_p_din1,grp_fu_28164_p_dout0,grp_fu_28164_p_ce,grp_fu_28168_p_din0,grp_fu_28168_p_din1,grp_fu_28168_p_dout0,grp_fu_28168_p_ce,grp_fu_28172_p_din0,grp_fu_28172_p_din1,grp_fu_28172_p_dout0,grp_fu_28172_p_ce);  
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
output  [12:0] v229_7_address0;
output   v229_7_ce0;
output   v229_7_we0;
output  [31:0] v229_7_d0;
input  [31:0] v229_7_q0;
output  [12:0] v229_7_address1;
output   v229_7_ce1;
output   v229_7_we1;
output  [31:0] v229_7_d1;
input  [31:0] v229_7_q1;
output  [12:0] v229_6_address0;
output   v229_6_ce0;
output   v229_6_we0;
output  [31:0] v229_6_d0;
input  [31:0] v229_6_q0;
output  [12:0] v229_6_address1;
output   v229_6_ce1;
output   v229_6_we1;
output  [31:0] v229_6_d1;
input  [31:0] v229_6_q1;
output  [12:0] v229_5_address0;
output   v229_5_ce0;
output   v229_5_we0;
output  [31:0] v229_5_d0;
input  [31:0] v229_5_q0;
output  [12:0] v229_5_address1;
output   v229_5_ce1;
output   v229_5_we1;
output  [31:0] v229_5_d1;
input  [31:0] v229_5_q1;
output  [12:0] v229_4_address0;
output   v229_4_ce0;
output   v229_4_we0;
output  [31:0] v229_4_d0;
input  [31:0] v229_4_q0;
output  [12:0] v229_4_address1;
output   v229_4_ce1;
output   v229_4_we1;
output  [31:0] v229_4_d1;
input  [31:0] v229_4_q1;
output  [12:0] v229_3_address0;
output   v229_3_ce0;
output   v229_3_we0;
output  [31:0] v229_3_d0;
input  [31:0] v229_3_q0;
output  [12:0] v229_3_address1;
output   v229_3_ce1;
output   v229_3_we1;
output  [31:0] v229_3_d1;
input  [31:0] v229_3_q1;
output  [12:0] v229_2_address0;
output   v229_2_ce0;
output   v229_2_we0;
output  [31:0] v229_2_d0;
input  [31:0] v229_2_q0;
output  [12:0] v229_2_address1;
output   v229_2_ce1;
output   v229_2_we1;
output  [31:0] v229_2_d1;
input  [31:0] v229_2_q1;
output  [12:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [12:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
output  [12:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [12:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
input  [15:0] v5;
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
input  [12:0] mul_ln127;
input  [12:0] mul_ln140;
input  [31:0] v4;
input  [0:0] empty;
input  [31:0] v11_1;
input  [31:0] v24_1;
input  [31:0] v35_1;
input  [31:0] v46_1;
input  [31:0] v57_1;
input  [31:0] v68_1;
input  [31:0] v79_1;
input  [31:0] v90_1;
input  [31:0] v101_1;
output  [31:0] grp_fu_28120_p_din0;
output  [31:0] grp_fu_28120_p_din1;
output  [1:0] grp_fu_28120_p_opcode;
input  [31:0] grp_fu_28120_p_dout0;
output   grp_fu_28120_p_ce;
output  [31:0] grp_fu_28124_p_din0;
output  [31:0] grp_fu_28124_p_din1;
output  [1:0] grp_fu_28124_p_opcode;
input  [31:0] grp_fu_28124_p_dout0;
output   grp_fu_28124_p_ce;
output  [31:0] grp_fu_28128_p_din0;
output  [31:0] grp_fu_28128_p_din1;
output  [1:0] grp_fu_28128_p_opcode;
input  [31:0] grp_fu_28128_p_dout0;
output   grp_fu_28128_p_ce;
output  [31:0] grp_fu_28132_p_din0;
output  [31:0] grp_fu_28132_p_din1;
output  [1:0] grp_fu_28132_p_opcode;
input  [31:0] grp_fu_28132_p_dout0;
output   grp_fu_28132_p_ce;
output  [31:0] grp_fu_28136_p_din0;
output  [31:0] grp_fu_28136_p_din1;
output  [1:0] grp_fu_28136_p_opcode;
input  [31:0] grp_fu_28136_p_dout0;
output   grp_fu_28136_p_ce;
output  [31:0] grp_fu_28140_p_din0;
output  [31:0] grp_fu_28140_p_din1;
input  [31:0] grp_fu_28140_p_dout0;
output   grp_fu_28140_p_ce;
output  [31:0] grp_fu_28144_p_din0;
output  [31:0] grp_fu_28144_p_din1;
input  [31:0] grp_fu_28144_p_dout0;
output   grp_fu_28144_p_ce;
output  [31:0] grp_fu_28148_p_din0;
output  [31:0] grp_fu_28148_p_din1;
input  [31:0] grp_fu_28148_p_dout0;
output   grp_fu_28148_p_ce;
output  [31:0] grp_fu_28152_p_din0;
output  [31:0] grp_fu_28152_p_din1;
input  [31:0] grp_fu_28152_p_dout0;
output   grp_fu_28152_p_ce;
output  [31:0] grp_fu_28156_p_din0;
output  [31:0] grp_fu_28156_p_din1;
input  [31:0] grp_fu_28156_p_dout0;
output   grp_fu_28156_p_ce;
output  [31:0] grp_fu_28160_p_din0;
output  [31:0] grp_fu_28160_p_din1;
input  [31:0] grp_fu_28160_p_dout0;
output   grp_fu_28160_p_ce;
output  [31:0] grp_fu_28164_p_din0;
output  [31:0] grp_fu_28164_p_din1;
input  [31:0] grp_fu_28164_p_dout0;
output   grp_fu_28164_p_ce;
output  [31:0] grp_fu_28168_p_din0;
output  [31:0] grp_fu_28168_p_din1;
input  [31:0] grp_fu_28168_p_dout0;
output   grp_fu_28168_p_ce;
output  [31:0] grp_fu_28172_p_din0;
output  [31:0] grp_fu_28172_p_din1;
input  [31:0] grp_fu_28172_p_dout0;
output   grp_fu_28172_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln33_reg_1024;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_477;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_481;
reg   [31:0] reg_485;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_489;
reg   [31:0] reg_493;
reg   [31:0] reg_497;
reg   [31:0] reg_501;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] v7_reg_1018;
wire   [0:0] icmp_ln33_fu_513_p2;
reg   [0:0] icmp_ln33_reg_1024_pp0_iter1_reg;
reg   [0:0] icmp_ln33_reg_1024_pp0_iter2_reg;
reg   [0:0] icmp_ln33_reg_1024_pp0_iter3_reg;
wire   [15:0] mul_ln38_fu_523_p2;
reg   [15:0] mul_ln38_reg_1028;
reg   [12:0] v229_0_addr_5_reg_1034;
reg   [12:0] v229_0_addr_5_reg_1034_pp0_iter1_reg;
reg   [12:0] v229_0_addr_5_reg_1034_pp0_iter2_reg;
reg   [12:0] v229_0_addr_5_reg_1034_pp0_iter3_reg;
reg   [12:0] v229_0_addr_5_reg_1034_pp0_iter4_reg;
reg   [12:0] v229_1_addr_3_reg_1040;
reg   [12:0] v229_1_addr_3_reg_1040_pp0_iter1_reg;
reg   [12:0] v229_1_addr_3_reg_1040_pp0_iter2_reg;
reg   [12:0] v229_1_addr_3_reg_1040_pp0_iter3_reg;
reg   [12:0] v229_1_addr_5_reg_1045;
reg   [12:0] v229_1_addr_5_reg_1045_pp0_iter1_reg;
reg   [12:0] v229_1_addr_5_reg_1045_pp0_iter2_reg;
reg   [12:0] v229_1_addr_5_reg_1045_pp0_iter3_reg;
reg   [12:0] v229_1_addr_5_reg_1045_pp0_iter4_reg;
reg   [12:0] v229_2_addr_3_reg_1050;
reg   [12:0] v229_2_addr_3_reg_1050_pp0_iter1_reg;
reg   [12:0] v229_2_addr_3_reg_1050_pp0_iter2_reg;
reg   [12:0] v229_2_addr_3_reg_1050_pp0_iter3_reg;
reg   [12:0] v229_3_addr_3_reg_1055;
reg   [12:0] v229_3_addr_3_reg_1055_pp0_iter1_reg;
reg   [12:0] v229_3_addr_3_reg_1055_pp0_iter2_reg;
reg   [12:0] v229_3_addr_3_reg_1055_pp0_iter3_reg;
reg   [12:0] v229_4_addr_3_reg_1060;
reg   [12:0] v229_4_addr_3_reg_1060_pp0_iter1_reg;
reg   [12:0] v229_4_addr_3_reg_1060_pp0_iter2_reg;
reg   [12:0] v229_4_addr_3_reg_1060_pp0_iter3_reg;
reg   [12:0] v229_4_addr_3_reg_1060_pp0_iter4_reg;
reg   [12:0] v229_5_addr_3_reg_1065;
reg   [12:0] v229_5_addr_3_reg_1065_pp0_iter1_reg;
reg   [12:0] v229_5_addr_3_reg_1065_pp0_iter2_reg;
reg   [12:0] v229_5_addr_3_reg_1065_pp0_iter3_reg;
reg   [12:0] v229_5_addr_3_reg_1065_pp0_iter4_reg;
reg   [12:0] v229_6_addr_3_reg_1070;
reg   [12:0] v229_6_addr_3_reg_1070_pp0_iter1_reg;
reg   [12:0] v229_6_addr_3_reg_1070_pp0_iter2_reg;
reg   [12:0] v229_6_addr_3_reg_1070_pp0_iter3_reg;
reg   [12:0] v229_6_addr_3_reg_1070_pp0_iter4_reg;
reg   [12:0] v229_7_addr_3_reg_1075;
reg   [12:0] v229_7_addr_3_reg_1075_pp0_iter1_reg;
reg   [12:0] v229_7_addr_3_reg_1075_pp0_iter2_reg;
reg   [12:0] v229_7_addr_3_reg_1075_pp0_iter3_reg;
reg   [12:0] v229_7_addr_3_reg_1075_pp0_iter4_reg;
wire   [7:0] or_ln42_1_fu_568_p3;
reg   [7:0] or_ln42_1_reg_1080;
reg   [12:0] v229_0_addr_6_reg_1085;
reg   [12:0] v229_0_addr_6_reg_1085_pp0_iter1_reg;
reg   [12:0] v229_0_addr_6_reg_1085_pp0_iter2_reg;
reg   [12:0] v229_0_addr_6_reg_1085_pp0_iter3_reg;
reg   [12:0] v229_0_addr_6_reg_1085_pp0_iter4_reg;
reg   [12:0] v229_1_addr_4_reg_1091;
reg   [12:0] v229_1_addr_4_reg_1091_pp0_iter1_reg;
reg   [12:0] v229_1_addr_4_reg_1091_pp0_iter2_reg;
reg   [12:0] v229_1_addr_4_reg_1091_pp0_iter3_reg;
reg   [12:0] v229_1_addr_6_reg_1096;
reg   [12:0] v229_1_addr_6_reg_1096_pp0_iter1_reg;
reg   [12:0] v229_1_addr_6_reg_1096_pp0_iter2_reg;
reg   [12:0] v229_1_addr_6_reg_1096_pp0_iter3_reg;
reg   [12:0] v229_1_addr_6_reg_1096_pp0_iter4_reg;
reg   [12:0] v229_2_addr_4_reg_1101;
reg   [12:0] v229_2_addr_4_reg_1101_pp0_iter1_reg;
reg   [12:0] v229_2_addr_4_reg_1101_pp0_iter2_reg;
reg   [12:0] v229_2_addr_4_reg_1101_pp0_iter3_reg;
reg   [12:0] v229_3_addr_4_reg_1106;
reg   [12:0] v229_3_addr_4_reg_1106_pp0_iter1_reg;
reg   [12:0] v229_3_addr_4_reg_1106_pp0_iter2_reg;
reg   [12:0] v229_3_addr_4_reg_1106_pp0_iter3_reg;
reg   [12:0] v229_3_addr_4_reg_1106_pp0_iter4_reg;
reg   [12:0] v229_4_addr_4_reg_1111;
reg   [12:0] v229_4_addr_4_reg_1111_pp0_iter1_reg;
reg   [12:0] v229_4_addr_4_reg_1111_pp0_iter2_reg;
reg   [12:0] v229_4_addr_4_reg_1111_pp0_iter3_reg;
reg   [12:0] v229_4_addr_4_reg_1111_pp0_iter4_reg;
reg   [12:0] v229_5_addr_4_reg_1116;
reg   [12:0] v229_5_addr_4_reg_1116_pp0_iter1_reg;
reg   [12:0] v229_5_addr_4_reg_1116_pp0_iter2_reg;
reg   [12:0] v229_5_addr_4_reg_1116_pp0_iter3_reg;
reg   [12:0] v229_5_addr_4_reg_1116_pp0_iter4_reg;
reg   [12:0] v229_6_addr_4_reg_1121;
reg   [12:0] v229_6_addr_4_reg_1121_pp0_iter1_reg;
reg   [12:0] v229_6_addr_4_reg_1121_pp0_iter2_reg;
reg   [12:0] v229_6_addr_4_reg_1121_pp0_iter3_reg;
reg   [12:0] v229_6_addr_4_reg_1121_pp0_iter4_reg;
reg   [12:0] v229_7_addr_4_reg_1126;
reg   [12:0] v229_7_addr_4_reg_1126_pp0_iter1_reg;
reg   [12:0] v229_7_addr_4_reg_1126_pp0_iter2_reg;
reg   [12:0] v229_7_addr_4_reg_1126_pp0_iter3_reg;
reg   [12:0] v229_7_addr_4_reg_1126_pp0_iter4_reg;
reg   [31:0] v229_2_load_2_reg_1141;
reg   [31:0] v229_2_load_3_reg_1146;
reg   [31:0] v229_3_load_2_reg_1151;
reg   [31:0] v229_3_load_3_reg_1156;
reg   [31:0] v229_4_load_2_reg_1161;
reg   [31:0] v229_4_load_3_reg_1166;
reg   [31:0] v229_5_load_2_reg_1171;
reg   [31:0] v229_5_load_3_reg_1176;
reg   [31:0] v229_6_load_2_reg_1181;
reg   [31:0] v229_6_load_3_reg_1186;
reg   [31:0] v229_7_load_2_reg_1191;
reg   [31:0] v229_7_load_3_reg_1196;
reg   [31:0] v229_0_load_4_reg_1201;
reg   [31:0] v229_0_load_5_reg_1206;
wire   [31:0] v8_fu_635_p1;
reg   [31:0] v8_reg_1211;
wire   [31:0] v12_fu_640_p1;
reg   [31:0] v12_reg_1217;
wire   [31:0] v15_fu_644_p1;
reg   [31:0] v15_reg_1230;
wire   [31:0] v18_fu_649_p1;
reg   [31:0] v18_reg_1236;
wire   [31:0] v21_fu_653_p1;
reg   [31:0] v21_reg_1249;
wire   [31:0] v27_fu_657_p1;
reg   [31:0] v27_reg_1255;
wire   [31:0] v32_fu_661_p1;
reg   [31:0] v32_reg_1261;
wire   [31:0] v38_fu_665_p1;
reg   [31:0] v38_reg_1267;
wire   [31:0] v43_fu_669_p1;
reg   [31:0] v43_reg_1273;
wire   [31:0] v49_fu_673_p1;
reg   [31:0] v49_reg_1279;
wire   [31:0] v54_fu_677_p1;
reg   [31:0] v54_reg_1285;
wire   [31:0] v60_fu_681_p1;
reg   [31:0] v60_reg_1291;
wire   [31:0] v65_fu_685_p1;
reg   [31:0] v65_reg_1297;
wire   [31:0] v71_fu_689_p1;
reg   [31:0] v71_reg_1303;
wire   [31:0] v76_fu_693_p1;
reg   [31:0] v76_reg_1309;
wire   [31:0] v82_fu_697_p1;
reg   [31:0] v82_reg_1315;
wire   [31:0] v87_fu_701_p1;
reg   [31:0] v87_reg_1321;
wire   [31:0] v93_fu_705_p1;
reg   [31:0] v93_reg_1327;
wire   [31:0] v98_fu_709_p1;
reg   [31:0] v98_reg_1333;
wire   [31:0] v104_fu_714_p1;
reg   [31:0] v104_reg_1339;
wire   [31:0] v10_fu_729_p3;
reg   [31:0] v10_reg_1345;
wire   [31:0] v17_fu_735_p3;
reg   [31:0] v17_reg_1350;
wire   [31:0] v23_fu_741_p3;
reg   [31:0] v23_reg_1355;
wire   [31:0] v29_fu_747_p3;
reg   [31:0] v29_reg_1360;
wire   [31:0] v34_fu_753_p3;
reg   [31:0] v34_reg_1365;
wire   [31:0] v40_fu_759_p3;
reg   [31:0] v40_reg_1370;
wire   [31:0] v45_fu_765_p3;
reg   [31:0] v45_reg_1375;
wire   [31:0] v51_fu_771_p3;
reg   [31:0] v51_reg_1380;
wire   [31:0] v56_fu_777_p3;
reg   [31:0] v56_reg_1385;
wire   [31:0] v62_fu_783_p3;
reg   [31:0] v62_reg_1390;
wire   [31:0] v67_fu_789_p3;
reg   [31:0] v67_reg_1395;
wire   [31:0] v73_fu_795_p3;
reg   [31:0] v73_reg_1400;
wire   [31:0] v78_fu_801_p3;
reg   [31:0] v78_reg_1405;
wire   [31:0] v84_fu_807_p3;
reg   [31:0] v84_reg_1410;
wire   [31:0] v89_fu_813_p3;
reg   [31:0] v89_reg_1415;
wire   [31:0] v95_fu_819_p3;
reg   [31:0] v95_reg_1420;
reg   [31:0] v95_reg_1420_pp0_iter2_reg;
wire   [31:0] v100_fu_825_p3;
reg   [31:0] v100_reg_1425;
reg   [31:0] v100_reg_1425_pp0_iter2_reg;
wire   [31:0] v106_fu_831_p3;
reg   [31:0] v106_reg_1430;
reg   [31:0] v106_reg_1430_pp0_iter2_reg;
reg   [31:0] v13_reg_1435;
reg   [31:0] v19_reg_1440;
reg   [31:0] v25_reg_1445;
reg   [31:0] v30_reg_1450;
reg   [31:0] v36_reg_1455;
reg   [31:0] v41_reg_1460;
reg   [31:0] v47_reg_1465;
reg   [31:0] v52_reg_1470;
reg   [31:0] v58_reg_1475;
reg   [31:0] v63_reg_1480;
reg   [31:0] v69_reg_1485;
reg   [31:0] v74_reg_1490;
reg   [31:0] v80_reg_1495;
reg   [31:0] v85_reg_1500;
reg   [31:0] v91_reg_1505;
reg   [31:0] v96_reg_1510;
reg   [31:0] v102_reg_1515;
reg   [31:0] v107_reg_1520;
reg   [31:0] v70_reg_1525;
reg   [31:0] v75_reg_1530;
reg   [31:0] v81_reg_1535;
reg   [31:0] v86_reg_1540;
reg   [31:0] v92_reg_1545;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln127_fu_535_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln34_fu_547_p1;
wire   [63:0] zext_ln134_fu_586_p1;
wire   [63:0] zext_ln42_fu_598_p1;
wire   [63:0] zext_ln38_26_fu_617_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln45_26_fu_630_p1;
reg   [7:0] v7_1_fu_94;
wire   [7:0] add_ln33_fu_719_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v7;
reg    v229_1_ce1_local;
reg   [12:0] v229_1_address1_local;
reg    v229_1_ce0_local;
reg   [12:0] v229_1_address0_local;
reg    v229_1_we1_local;
reg   [31:0] v229_1_d1_local;
wire   [31:0] bitcast_ln41_fu_837_p1;
wire    ap_block_pp0_stage3;
reg    v229_1_we0_local;
reg   [31:0] v229_1_d0_local;
wire   [31:0] bitcast_ln48_fu_842_p1;
wire   [31:0] bitcast_ln146_fu_912_p1;
wire    ap_block_pp0_stage2;
wire   [31:0] bitcast_ln152_fu_917_p1;
reg    v229_2_ce1_local;
reg   [12:0] v229_2_address1_local;
reg    v229_2_ce0_local;
reg   [12:0] v229_2_address0_local;
reg    v229_2_we1_local;
wire   [31:0] bitcast_ln55_fu_847_p1;
reg    v229_2_we0_local;
wire   [31:0] bitcast_ln61_fu_852_p1;
reg    v229_3_ce1_local;
reg   [12:0] v229_3_address1_local;
reg    v229_3_ce0_local;
reg   [12:0] v229_3_address0_local;
reg    v229_3_we1_local;
wire   [31:0] bitcast_ln68_fu_857_p1;
reg    v229_3_we0_local;
wire   [31:0] bitcast_ln74_fu_862_p1;
reg    v229_4_ce1_local;
reg   [12:0] v229_4_address1_local;
reg    v229_4_ce0_local;
reg   [12:0] v229_4_address0_local;
reg    v229_4_we1_local;
wire   [31:0] bitcast_ln81_fu_867_p1;
reg    v229_4_we0_local;
wire   [31:0] bitcast_ln87_fu_872_p1;
reg    v229_5_ce1_local;
reg   [12:0] v229_5_address1_local;
reg    v229_5_ce0_local;
reg   [12:0] v229_5_address0_local;
reg    v229_5_we1_local;
wire   [31:0] bitcast_ln94_fu_877_p1;
reg    v229_5_we0_local;
wire   [31:0] bitcast_ln100_fu_882_p1;
reg    v229_6_ce1_local;
reg   [12:0] v229_6_address1_local;
reg    v229_6_ce0_local;
reg   [12:0] v229_6_address0_local;
reg    v229_6_we1_local;
wire   [31:0] bitcast_ln107_fu_887_p1;
reg    v229_6_we0_local;
wire   [31:0] bitcast_ln113_fu_891_p1;
reg    v229_7_ce1_local;
reg   [12:0] v229_7_address1_local;
reg    v229_7_ce0_local;
reg   [12:0] v229_7_address0_local;
reg    v229_7_we1_local;
wire   [31:0] bitcast_ln120_fu_895_p1;
reg    v229_7_we0_local;
wire   [31:0] bitcast_ln126_fu_899_p1;
reg    v229_0_ce1_local;
reg   [12:0] v229_0_address1_local;
reg    v229_0_ce0_local;
reg   [12:0] v229_0_address0_local;
reg    v229_0_we0_local;
wire   [31:0] bitcast_ln133_fu_903_p1;
reg    v229_0_we1_local;
wire   [31:0] bitcast_ln139_fu_907_p1;
reg    v228_ce1_local;
reg    v228_ce0_local;
reg   [31:0] grp_fu_421_p0;
reg   [31:0] grp_fu_421_p1;
reg   [31:0] grp_fu_425_p0;
reg   [31:0] grp_fu_425_p1;
reg   [31:0] grp_fu_429_p0;
reg   [31:0] grp_fu_429_p1;
reg   [31:0] grp_fu_433_p0;
reg   [31:0] grp_fu_433_p1;
reg   [31:0] grp_fu_437_p0;
reg   [31:0] grp_fu_437_p1;
reg   [31:0] grp_fu_441_p0;
reg   [31:0] grp_fu_441_p1;
reg   [31:0] grp_fu_445_p0;
reg   [31:0] grp_fu_445_p1;
reg   [31:0] grp_fu_449_p0;
reg   [31:0] grp_fu_449_p1;
reg   [31:0] grp_fu_453_p0;
reg   [31:0] grp_fu_453_p1;
reg   [31:0] grp_fu_457_p0;
reg   [31:0] grp_fu_457_p1;
reg   [31:0] grp_fu_461_p0;
reg   [31:0] grp_fu_461_p1;
reg   [31:0] grp_fu_465_p0;
reg   [31:0] grp_fu_465_p1;
reg   [31:0] grp_fu_469_p0;
reg   [31:0] grp_fu_469_p1;
reg   [31:0] grp_fu_473_p0;
reg   [31:0] grp_fu_473_p1;
wire   [8:0] mul_ln38_fu_523_p1;
wire   [12:0] zext_ln38_fu_519_p1;
wire   [12:0] add_ln127_fu_529_p2;
wire   [12:0] add_ln34_fu_541_p2;
wire   [6:0] tmp_s_fu_558_p4;
wire   [12:0] zext_ln45_fu_576_p1;
wire   [12:0] add_ln134_fu_580_p2;
wire   [12:0] add_ln42_fu_592_p2;
wire   [15:0] zext_ln38_25_fu_609_p1;
wire   [15:0] add_ln38_fu_612_p2;
wire   [15:0] zext_ln45_25_fu_622_p1;
wire   [15:0] add_ln45_fu_625_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage2;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v7_1_fu_94 = 8'd0;
#0 ap_done_reg = 1'b0;
end
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U276(.din0(v5),.din1(mul_ln38_fu_523_p1),.dout(mul_ln38_fu_523_p2));
kernel_2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage2) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage2) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage2) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_1_fu_94 <= 8'd0;
    end else if (((icmp_ln33_reg_1024 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v7_1_fu_94 <= add_ln33_fu_719_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln33_reg_1024 <= icmp_ln33_fu_513_p2;
        icmp_ln33_reg_1024_pp0_iter1_reg <= icmp_ln33_reg_1024;
        icmp_ln33_reg_1024_pp0_iter2_reg <= icmp_ln33_reg_1024_pp0_iter1_reg;
        icmp_ln33_reg_1024_pp0_iter3_reg <= icmp_ln33_reg_1024_pp0_iter2_reg;
        mul_ln38_reg_1028 <= mul_ln38_fu_523_p2;
        or_ln42_1_reg_1080[7 : 1] <= or_ln42_1_fu_568_p3[7 : 1];
        v229_0_addr_5_reg_1034 <= zext_ln127_fu_535_p1;
        v229_0_addr_5_reg_1034_pp0_iter1_reg <= v229_0_addr_5_reg_1034;
        v229_0_addr_5_reg_1034_pp0_iter2_reg <= v229_0_addr_5_reg_1034_pp0_iter1_reg;
        v229_0_addr_5_reg_1034_pp0_iter3_reg <= v229_0_addr_5_reg_1034_pp0_iter2_reg;
        v229_0_addr_5_reg_1034_pp0_iter4_reg <= v229_0_addr_5_reg_1034_pp0_iter3_reg;
        v229_0_addr_6_reg_1085 <= zext_ln134_fu_586_p1;
        v229_0_addr_6_reg_1085_pp0_iter1_reg <= v229_0_addr_6_reg_1085;
        v229_0_addr_6_reg_1085_pp0_iter2_reg <= v229_0_addr_6_reg_1085_pp0_iter1_reg;
        v229_0_addr_6_reg_1085_pp0_iter3_reg <= v229_0_addr_6_reg_1085_pp0_iter2_reg;
        v229_0_addr_6_reg_1085_pp0_iter4_reg <= v229_0_addr_6_reg_1085_pp0_iter3_reg;
        v229_1_addr_3_reg_1040 <= zext_ln34_fu_547_p1;
        v229_1_addr_3_reg_1040_pp0_iter1_reg <= v229_1_addr_3_reg_1040;
        v229_1_addr_3_reg_1040_pp0_iter2_reg <= v229_1_addr_3_reg_1040_pp0_iter1_reg;
        v229_1_addr_3_reg_1040_pp0_iter3_reg <= v229_1_addr_3_reg_1040_pp0_iter2_reg;
        v229_1_addr_4_reg_1091 <= zext_ln42_fu_598_p1;
        v229_1_addr_4_reg_1091_pp0_iter1_reg <= v229_1_addr_4_reg_1091;
        v229_1_addr_4_reg_1091_pp0_iter2_reg <= v229_1_addr_4_reg_1091_pp0_iter1_reg;
        v229_1_addr_4_reg_1091_pp0_iter3_reg <= v229_1_addr_4_reg_1091_pp0_iter2_reg;
        v229_1_addr_5_reg_1045 <= zext_ln127_fu_535_p1;
        v229_1_addr_5_reg_1045_pp0_iter1_reg <= v229_1_addr_5_reg_1045;
        v229_1_addr_5_reg_1045_pp0_iter2_reg <= v229_1_addr_5_reg_1045_pp0_iter1_reg;
        v229_1_addr_5_reg_1045_pp0_iter3_reg <= v229_1_addr_5_reg_1045_pp0_iter2_reg;
        v229_1_addr_5_reg_1045_pp0_iter4_reg <= v229_1_addr_5_reg_1045_pp0_iter3_reg;
        v229_1_addr_6_reg_1096 <= zext_ln134_fu_586_p1;
        v229_1_addr_6_reg_1096_pp0_iter1_reg <= v229_1_addr_6_reg_1096;
        v229_1_addr_6_reg_1096_pp0_iter2_reg <= v229_1_addr_6_reg_1096_pp0_iter1_reg;
        v229_1_addr_6_reg_1096_pp0_iter3_reg <= v229_1_addr_6_reg_1096_pp0_iter2_reg;
        v229_1_addr_6_reg_1096_pp0_iter4_reg <= v229_1_addr_6_reg_1096_pp0_iter3_reg;
        v229_2_addr_3_reg_1050 <= zext_ln34_fu_547_p1;
        v229_2_addr_3_reg_1050_pp0_iter1_reg <= v229_2_addr_3_reg_1050;
        v229_2_addr_3_reg_1050_pp0_iter2_reg <= v229_2_addr_3_reg_1050_pp0_iter1_reg;
        v229_2_addr_3_reg_1050_pp0_iter3_reg <= v229_2_addr_3_reg_1050_pp0_iter2_reg;
        v229_2_addr_4_reg_1101 <= zext_ln42_fu_598_p1;
        v229_2_addr_4_reg_1101_pp0_iter1_reg <= v229_2_addr_4_reg_1101;
        v229_2_addr_4_reg_1101_pp0_iter2_reg <= v229_2_addr_4_reg_1101_pp0_iter1_reg;
        v229_2_addr_4_reg_1101_pp0_iter3_reg <= v229_2_addr_4_reg_1101_pp0_iter2_reg;
        v229_3_addr_3_reg_1055 <= zext_ln34_fu_547_p1;
        v229_3_addr_3_reg_1055_pp0_iter1_reg <= v229_3_addr_3_reg_1055;
        v229_3_addr_3_reg_1055_pp0_iter2_reg <= v229_3_addr_3_reg_1055_pp0_iter1_reg;
        v229_3_addr_3_reg_1055_pp0_iter3_reg <= v229_3_addr_3_reg_1055_pp0_iter2_reg;
        v229_3_addr_4_reg_1106 <= zext_ln42_fu_598_p1;
        v229_3_addr_4_reg_1106_pp0_iter1_reg <= v229_3_addr_4_reg_1106;
        v229_3_addr_4_reg_1106_pp0_iter2_reg <= v229_3_addr_4_reg_1106_pp0_iter1_reg;
        v229_3_addr_4_reg_1106_pp0_iter3_reg <= v229_3_addr_4_reg_1106_pp0_iter2_reg;
        v229_3_addr_4_reg_1106_pp0_iter4_reg <= v229_3_addr_4_reg_1106_pp0_iter3_reg;
        v229_4_addr_3_reg_1060 <= zext_ln34_fu_547_p1;
        v229_4_addr_3_reg_1060_pp0_iter1_reg <= v229_4_addr_3_reg_1060;
        v229_4_addr_3_reg_1060_pp0_iter2_reg <= v229_4_addr_3_reg_1060_pp0_iter1_reg;
        v229_4_addr_3_reg_1060_pp0_iter3_reg <= v229_4_addr_3_reg_1060_pp0_iter2_reg;
        v229_4_addr_3_reg_1060_pp0_iter4_reg <= v229_4_addr_3_reg_1060_pp0_iter3_reg;
        v229_4_addr_4_reg_1111 <= zext_ln42_fu_598_p1;
        v229_4_addr_4_reg_1111_pp0_iter1_reg <= v229_4_addr_4_reg_1111;
        v229_4_addr_4_reg_1111_pp0_iter2_reg <= v229_4_addr_4_reg_1111_pp0_iter1_reg;
        v229_4_addr_4_reg_1111_pp0_iter3_reg <= v229_4_addr_4_reg_1111_pp0_iter2_reg;
        v229_4_addr_4_reg_1111_pp0_iter4_reg <= v229_4_addr_4_reg_1111_pp0_iter3_reg;
        v229_5_addr_3_reg_1065 <= zext_ln34_fu_547_p1;
        v229_5_addr_3_reg_1065_pp0_iter1_reg <= v229_5_addr_3_reg_1065;
        v229_5_addr_3_reg_1065_pp0_iter2_reg <= v229_5_addr_3_reg_1065_pp0_iter1_reg;
        v229_5_addr_3_reg_1065_pp0_iter3_reg <= v229_5_addr_3_reg_1065_pp0_iter2_reg;
        v229_5_addr_3_reg_1065_pp0_iter4_reg <= v229_5_addr_3_reg_1065_pp0_iter3_reg;
        v229_5_addr_4_reg_1116 <= zext_ln42_fu_598_p1;
        v229_5_addr_4_reg_1116_pp0_iter1_reg <= v229_5_addr_4_reg_1116;
        v229_5_addr_4_reg_1116_pp0_iter2_reg <= v229_5_addr_4_reg_1116_pp0_iter1_reg;
        v229_5_addr_4_reg_1116_pp0_iter3_reg <= v229_5_addr_4_reg_1116_pp0_iter2_reg;
        v229_5_addr_4_reg_1116_pp0_iter4_reg <= v229_5_addr_4_reg_1116_pp0_iter3_reg;
        v229_6_addr_3_reg_1070 <= zext_ln34_fu_547_p1;
        v229_6_addr_3_reg_1070_pp0_iter1_reg <= v229_6_addr_3_reg_1070;
        v229_6_addr_3_reg_1070_pp0_iter2_reg <= v229_6_addr_3_reg_1070_pp0_iter1_reg;
        v229_6_addr_3_reg_1070_pp0_iter3_reg <= v229_6_addr_3_reg_1070_pp0_iter2_reg;
        v229_6_addr_3_reg_1070_pp0_iter4_reg <= v229_6_addr_3_reg_1070_pp0_iter3_reg;
        v229_6_addr_4_reg_1121 <= zext_ln42_fu_598_p1;
        v229_6_addr_4_reg_1121_pp0_iter1_reg <= v229_6_addr_4_reg_1121;
        v229_6_addr_4_reg_1121_pp0_iter2_reg <= v229_6_addr_4_reg_1121_pp0_iter1_reg;
        v229_6_addr_4_reg_1121_pp0_iter3_reg <= v229_6_addr_4_reg_1121_pp0_iter2_reg;
        v229_6_addr_4_reg_1121_pp0_iter4_reg <= v229_6_addr_4_reg_1121_pp0_iter3_reg;
        v229_7_addr_3_reg_1075 <= zext_ln34_fu_547_p1;
        v229_7_addr_3_reg_1075_pp0_iter1_reg <= v229_7_addr_3_reg_1075;
        v229_7_addr_3_reg_1075_pp0_iter2_reg <= v229_7_addr_3_reg_1075_pp0_iter1_reg;
        v229_7_addr_3_reg_1075_pp0_iter3_reg <= v229_7_addr_3_reg_1075_pp0_iter2_reg;
        v229_7_addr_3_reg_1075_pp0_iter4_reg <= v229_7_addr_3_reg_1075_pp0_iter3_reg;
        v229_7_addr_4_reg_1126 <= zext_ln42_fu_598_p1;
        v229_7_addr_4_reg_1126_pp0_iter1_reg <= v229_7_addr_4_reg_1126;
        v229_7_addr_4_reg_1126_pp0_iter2_reg <= v229_7_addr_4_reg_1126_pp0_iter1_reg;
        v229_7_addr_4_reg_1126_pp0_iter3_reg <= v229_7_addr_4_reg_1126_pp0_iter2_reg;
        v229_7_addr_4_reg_1126_pp0_iter4_reg <= v229_7_addr_4_reg_1126_pp0_iter3_reg;
        v7_reg_1018 <= ap_sig_allocacmp_v7;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_477 <= v229_1_q1;
        reg_481 <= v229_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_485 <= grp_fu_28120_p_dout0;
        reg_489 <= grp_fu_28124_p_dout0;
        reg_493 <= grp_fu_28128_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_497 <= grp_fu_28132_p_dout0;
        reg_501 <= grp_fu_28136_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v100_reg_1425 <= v100_fu_825_p3;
        v100_reg_1425_pp0_iter2_reg <= v100_reg_1425;
        v106_reg_1430 <= v106_fu_831_p3;
        v106_reg_1430_pp0_iter2_reg <= v106_reg_1430;
        v12_reg_1217 <= v12_fu_640_p1;
        v15_reg_1230 <= v15_fu_644_p1;
        v18_reg_1236 <= v18_fu_649_p1;
        v21_reg_1249 <= v21_fu_653_p1;
        v27_reg_1255 <= v27_fu_657_p1;
        v32_reg_1261 <= v32_fu_661_p1;
        v38_reg_1267 <= v38_fu_665_p1;
        v43_reg_1273 <= v43_fu_669_p1;
        v49_reg_1279 <= v49_fu_673_p1;
        v54_reg_1285 <= v54_fu_677_p1;
        v62_reg_1390 <= v62_fu_783_p3;
        v67_reg_1395 <= v67_fu_789_p3;
        v73_reg_1400 <= v73_fu_795_p3;
        v78_reg_1405 <= v78_fu_801_p3;
        v84_reg_1410 <= v84_fu_807_p3;
        v89_reg_1415 <= v89_fu_813_p3;
        v8_reg_1211 <= v8_fu_635_p1;
        v95_reg_1420 <= v95_fu_819_p3;
        v95_reg_1420_pp0_iter2_reg <= v95_reg_1420;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v102_reg_1515 <= grp_fu_28168_p_dout0;
        v107_reg_1520 <= grp_fu_28172_p_dout0;
        v63_reg_1480 <= grp_fu_28140_p_dout0;
        v69_reg_1485 <= grp_fu_28144_p_dout0;
        v74_reg_1490 <= grp_fu_28148_p_dout0;
        v80_reg_1495 <= grp_fu_28152_p_dout0;
        v85_reg_1500 <= grp_fu_28156_p_dout0;
        v91_reg_1505 <= grp_fu_28160_p_dout0;
        v96_reg_1510 <= grp_fu_28164_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v104_reg_1339 <= v104_fu_714_p1;
        v60_reg_1291 <= v60_fu_681_p1;
        v65_reg_1297 <= v65_fu_685_p1;
        v71_reg_1303 <= v71_fu_689_p1;
        v76_reg_1309 <= v76_fu_693_p1;
        v82_reg_1315 <= v82_fu_697_p1;
        v87_reg_1321 <= v87_fu_701_p1;
        v93_reg_1327 <= v93_fu_705_p1;
        v98_reg_1333 <= v98_fu_709_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_reg_1345 <= v10_fu_729_p3;
        v17_reg_1350 <= v17_fu_735_p3;
        v23_reg_1355 <= v23_fu_741_p3;
        v29_reg_1360 <= v29_fu_747_p3;
        v34_reg_1365 <= v34_fu_753_p3;
        v40_reg_1370 <= v40_fu_759_p3;
        v45_reg_1375 <= v45_fu_765_p3;
        v51_reg_1380 <= v51_fu_771_p3;
        v56_reg_1385 <= v56_fu_777_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v13_reg_1435 <= grp_fu_28140_p_dout0;
        v19_reg_1440 <= grp_fu_28144_p_dout0;
        v25_reg_1445 <= grp_fu_28148_p_dout0;
        v30_reg_1450 <= grp_fu_28152_p_dout0;
        v36_reg_1455 <= grp_fu_28156_p_dout0;
        v41_reg_1460 <= grp_fu_28160_p_dout0;
        v47_reg_1465 <= grp_fu_28164_p_dout0;
        v52_reg_1470 <= grp_fu_28168_p_dout0;
        v58_reg_1475 <= grp_fu_28172_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_load_4_reg_1201 <= v229_0_q1;
        v229_0_load_5_reg_1206 <= v229_0_q0;
        v229_2_load_2_reg_1141 <= v229_2_q1;
        v229_2_load_3_reg_1146 <= v229_2_q0;
        v229_3_load_2_reg_1151 <= v229_3_q1;
        v229_3_load_3_reg_1156 <= v229_3_q0;
        v229_4_load_2_reg_1161 <= v229_4_q1;
        v229_4_load_3_reg_1166 <= v229_4_q0;
        v229_5_load_2_reg_1171 <= v229_5_q1;
        v229_5_load_3_reg_1176 <= v229_5_q0;
        v229_6_load_2_reg_1181 <= v229_6_q1;
        v229_6_load_3_reg_1186 <= v229_6_q0;
        v229_7_load_2_reg_1191 <= v229_7_q1;
        v229_7_load_3_reg_1196 <= v229_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v70_reg_1525 <= grp_fu_28120_p_dout0;
        v75_reg_1530 <= grp_fu_28124_p_dout0;
        v81_reg_1535 <= grp_fu_28128_p_dout0;
        v86_reg_1540 <= grp_fu_28132_p_dout0;
        v92_reg_1545 <= grp_fu_28136_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln33_reg_1024 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln33_reg_1024_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7 = 8'd0;
    end else begin
        ap_sig_allocacmp_v7 = v7_1_fu_94;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_421_p0 = v95_reg_1420_pp0_iter2_reg;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_421_p0 = v67_reg_1395;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_421_p0 = v40_reg_1370;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_421_p0 = v10_reg_1345;
        end else begin
            grp_fu_421_p0 = 'bx;
        end
    end else begin
        grp_fu_421_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_421_p1 = v96_reg_1510;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_421_p1 = v69_reg_1485;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_421_p1 = v41_reg_1460;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_421_p1 = v13_reg_1435;
        end else begin
            grp_fu_421_p1 = 'bx;
        end
    end else begin
        grp_fu_421_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_425_p0 = v100_reg_1425_pp0_iter2_reg;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_425_p0 = v73_reg_1400;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_425_p0 = v45_reg_1375;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_425_p0 = v17_reg_1350;
        end else begin
            grp_fu_425_p0 = 'bx;
        end
    end else begin
        grp_fu_425_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_425_p1 = v102_reg_1515;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_425_p1 = v74_reg_1490;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_425_p1 = v47_reg_1465;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_425_p1 = v19_reg_1440;
        end else begin
            grp_fu_425_p1 = 'bx;
        end
    end else begin
        grp_fu_425_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_429_p0 = v106_reg_1430_pp0_iter2_reg;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_429_p0 = v78_reg_1405;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_429_p0 = v51_reg_1380;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_429_p0 = v23_reg_1355;
        end else begin
            grp_fu_429_p0 = 'bx;
        end
    end else begin
        grp_fu_429_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_429_p1 = v107_reg_1520;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_429_p1 = v80_reg_1495;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_429_p1 = v52_reg_1470;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_429_p1 = v25_reg_1445;
        end else begin
            grp_fu_429_p1 = 'bx;
        end
    end else begin
        grp_fu_429_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_433_p0 = v84_reg_1410;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_433_p0 = v56_reg_1385;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_433_p0 = v29_reg_1360;
        end else begin
            grp_fu_433_p0 = 'bx;
        end
    end else begin
        grp_fu_433_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_433_p1 = v85_reg_1500;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_433_p1 = v58_reg_1475;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_433_p1 = v30_reg_1450;
        end else begin
            grp_fu_433_p1 = 'bx;
        end
    end else begin
        grp_fu_433_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_437_p0 = v89_reg_1415;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_437_p0 = v62_reg_1390;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_437_p0 = v34_reg_1365;
        end else begin
            grp_fu_437_p0 = 'bx;
        end
    end else begin
        grp_fu_437_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_437_p1 = v91_reg_1505;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_437_p1 = v63_reg_1480;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_437_p1 = v36_reg_1455;
        end else begin
            grp_fu_437_p1 = 'bx;
        end
    end else begin
        grp_fu_437_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_441_p0 = v57_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_441_p0 = v11_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_441_p0 = v60_fu_681_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_441_p0 = v8_fu_635_p1;
    end else begin
        grp_fu_441_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_441_p1 = v18_reg_1236;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_441_p1 = v12_reg_1217;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_441_p1 = v4;
    end else begin
        grp_fu_441_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_445_p0 = v68_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_445_p0 = v11_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_445_p0 = v65_fu_685_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_445_p0 = v15_fu_644_p1;
    end else begin
        grp_fu_445_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_445_p1 = v12_reg_1217;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_445_p1 = v18_reg_1236;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_445_p1 = v4;
    end else begin
        grp_fu_445_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_449_p0 = v68_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_449_p0 = v24_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_449_p0 = v71_fu_689_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_449_p0 = v21_fu_653_p1;
    end else begin
        grp_fu_449_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_449_p1 = v18_reg_1236;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_449_p1 = v12_reg_1217;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_449_p1 = v4;
    end else begin
        grp_fu_449_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_453_p0 = v79_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_453_p0 = v24_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_453_p0 = v76_fu_693_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_453_p0 = v27_fu_657_p1;
    end else begin
        grp_fu_453_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_453_p1 = v12_reg_1217;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_453_p1 = v18_reg_1236;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_453_p1 = v4;
    end else begin
        grp_fu_453_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_457_p0 = v79_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_457_p0 = v35_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_457_p0 = v82_fu_697_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_457_p0 = v32_fu_661_p1;
    end else begin
        grp_fu_457_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_457_p1 = v18_reg_1236;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_457_p1 = v12_reg_1217;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_457_p1 = v4;
    end else begin
        grp_fu_457_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_461_p0 = v90_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_461_p0 = v35_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_461_p0 = v87_fu_701_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_461_p0 = v38_fu_665_p1;
    end else begin
        grp_fu_461_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_461_p1 = v12_reg_1217;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_461_p1 = v18_reg_1236;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_461_p1 = v4;
    end else begin
        grp_fu_461_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_465_p0 = v90_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_465_p0 = v46_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_465_p0 = v93_fu_705_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_465_p0 = v43_fu_669_p1;
    end else begin
        grp_fu_465_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_465_p1 = v18_reg_1236;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_465_p1 = v12_reg_1217;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_465_p1 = v4;
    end else begin
        grp_fu_465_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_469_p0 = v101_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_469_p0 = v46_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_469_p0 = v98_fu_709_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_469_p0 = v49_fu_673_p1;
    end else begin
        grp_fu_469_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_469_p1 = v12_reg_1217;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_469_p1 = v18_reg_1236;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_469_p1 = v4;
    end else begin
        grp_fu_469_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_473_p0 = v101_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_473_p0 = v57_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_473_p0 = v104_fu_714_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_473_p0 = v54_fu_677_p1;
    end else begin
        grp_fu_473_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_473_p1 = v18_reg_1236;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_473_p1 = v12_reg_1217;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_473_p1 = v4;
    end else begin
        grp_fu_473_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v228_ce0_local = 1'b1;
    end else begin
        v228_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v228_ce1_local = 1'b1;
    end else begin
        v228_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = v229_0_addr_5_reg_1034_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address0_local = zext_ln134_fu_586_p1;
    end else begin
        v229_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address1_local = v229_0_addr_6_reg_1085_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address1_local = zext_ln127_fu_535_p1;
    end else begin
        v229_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce0_local = 1'b1;
    end else begin
        v229_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_0_ce1_local = 1'b1;
    end else begin
        v229_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_we0_local = 1'b1;
    end else begin
        v229_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_we1_local = 1'b1;
    end else begin
        v229_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address0_local = v229_1_addr_6_reg_1096_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_address0_local = v229_1_addr_4_reg_1091_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address0_local = v229_1_addr_6_reg_1096;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address0_local = zext_ln42_fu_598_p1;
    end else begin
        v229_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address1_local = v229_1_addr_5_reg_1045_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_address1_local = v229_1_addr_3_reg_1040_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address1_local = v229_1_addr_5_reg_1045;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address1_local = zext_ln34_fu_547_p1;
    end else begin
        v229_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce0_local = 1'b1;
    end else begin
        v229_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce1_local = 1'b1;
    end else begin
        v229_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_d0_local = bitcast_ln152_fu_917_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_d0_local = bitcast_ln48_fu_842_p1;
    end else begin
        v229_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_d1_local = bitcast_ln146_fu_912_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_d1_local = bitcast_ln41_fu_837_p1;
    end else begin
        v229_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_1_we0_local = 1'b1;
    end else begin
        v229_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_1_we1_local = 1'b1;
    end else begin
        v229_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_2_address0_local = v229_2_addr_4_reg_1101_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address0_local = zext_ln42_fu_598_p1;
    end else begin
        v229_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_2_address1_local = v229_2_addr_3_reg_1050_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address1_local = zext_ln34_fu_547_p1;
    end else begin
        v229_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_2_ce0_local = 1'b1;
    end else begin
        v229_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_2_ce1_local = 1'b1;
    end else begin
        v229_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_2_we0_local = 1'b1;
    end else begin
        v229_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_2_we1_local = 1'b1;
    end else begin
        v229_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address0_local = v229_3_addr_4_reg_1106_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address0_local = zext_ln42_fu_598_p1;
    end else begin
        v229_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_address1_local = v229_3_addr_3_reg_1055_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address1_local = zext_ln34_fu_547_p1;
    end else begin
        v229_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_3_ce0_local = 1'b1;
    end else begin
        v229_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_3_ce1_local = 1'b1;
    end else begin
        v229_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_we0_local = 1'b1;
    end else begin
        v229_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_we1_local = 1'b1;
    end else begin
        v229_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_4_address0_local = v229_4_addr_4_reg_1111_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_4_address0_local = zext_ln42_fu_598_p1;
    end else begin
        v229_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_4_address1_local = v229_4_addr_3_reg_1060_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_4_address1_local = zext_ln34_fu_547_p1;
    end else begin
        v229_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_4_ce0_local = 1'b1;
    end else begin
        v229_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_4_ce1_local = 1'b1;
    end else begin
        v229_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_4_we0_local = 1'b1;
    end else begin
        v229_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_4_we1_local = 1'b1;
    end else begin
        v229_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_5_address0_local = v229_5_addr_4_reg_1116_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_5_address0_local = zext_ln42_fu_598_p1;
    end else begin
        v229_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_5_address1_local = v229_5_addr_3_reg_1065_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_5_address1_local = zext_ln34_fu_547_p1;
    end else begin
        v229_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_5_ce0_local = 1'b1;
    end else begin
        v229_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_5_ce1_local = 1'b1;
    end else begin
        v229_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_5_we0_local = 1'b1;
    end else begin
        v229_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_5_we1_local = 1'b1;
    end else begin
        v229_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_6_address0_local = v229_6_addr_4_reg_1121_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_6_address0_local = zext_ln42_fu_598_p1;
    end else begin
        v229_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_6_address1_local = v229_6_addr_3_reg_1070_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_6_address1_local = zext_ln34_fu_547_p1;
    end else begin
        v229_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_6_ce0_local = 1'b1;
    end else begin
        v229_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_6_ce1_local = 1'b1;
    end else begin
        v229_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_6_we0_local = 1'b1;
    end else begin
        v229_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_6_we1_local = 1'b1;
    end else begin
        v229_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_7_address0_local = v229_7_addr_4_reg_1126_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_7_address0_local = zext_ln42_fu_598_p1;
    end else begin
        v229_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_7_address1_local = v229_7_addr_3_reg_1075_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_7_address1_local = zext_ln34_fu_547_p1;
    end else begin
        v229_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_7_ce0_local = 1'b1;
    end else begin
        v229_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_7_ce1_local = 1'b1;
    end else begin
        v229_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_7_we0_local = 1'b1;
    end else begin
        v229_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_7_we1_local = 1'b1;
    end else begin
        v229_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage2) & (ap_idle_pp0_0to2 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
assign add_ln127_fu_529_p2 = (mul_ln127 + zext_ln38_fu_519_p1);
assign add_ln134_fu_580_p2 = (mul_ln127 + zext_ln45_fu_576_p1);
assign add_ln33_fu_719_p2 = (v7_reg_1018 + 8'd2);
assign add_ln34_fu_541_p2 = (mul_ln140 + zext_ln38_fu_519_p1);
assign add_ln38_fu_612_p2 = (mul_ln38_reg_1028 + zext_ln38_25_fu_609_p1);
assign add_ln42_fu_592_p2 = (mul_ln140 + zext_ln45_fu_576_p1);
assign add_ln45_fu_625_p2 = (mul_ln38_reg_1028 + zext_ln45_25_fu_622_p1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln100_fu_882_p1 = reg_501;
assign bitcast_ln107_fu_887_p1 = v70_reg_1525;
assign bitcast_ln113_fu_891_p1 = v75_reg_1530;
assign bitcast_ln120_fu_895_p1 = v81_reg_1535;
assign bitcast_ln126_fu_899_p1 = v86_reg_1540;
assign bitcast_ln133_fu_903_p1 = v92_reg_1545;
assign bitcast_ln139_fu_907_p1 = reg_485;
assign bitcast_ln146_fu_912_p1 = reg_489;
assign bitcast_ln152_fu_917_p1 = reg_493;
assign bitcast_ln41_fu_837_p1 = reg_485;
assign bitcast_ln48_fu_842_p1 = reg_489;
assign bitcast_ln55_fu_847_p1 = reg_493;
assign bitcast_ln61_fu_852_p1 = reg_497;
assign bitcast_ln68_fu_857_p1 = reg_501;
assign bitcast_ln74_fu_862_p1 = reg_485;
assign bitcast_ln81_fu_867_p1 = reg_489;
assign bitcast_ln87_fu_872_p1 = reg_493;
assign bitcast_ln94_fu_877_p1 = reg_497;
assign grp_fu_28120_p_ce = 1'b1;
assign grp_fu_28120_p_din0 = grp_fu_421_p0;
assign grp_fu_28120_p_din1 = grp_fu_421_p1;
assign grp_fu_28120_p_opcode = 2'd0;
assign grp_fu_28124_p_ce = 1'b1;
assign grp_fu_28124_p_din0 = grp_fu_425_p0;
assign grp_fu_28124_p_din1 = grp_fu_425_p1;
assign grp_fu_28124_p_opcode = 2'd0;
assign grp_fu_28128_p_ce = 1'b1;
assign grp_fu_28128_p_din0 = grp_fu_429_p0;
assign grp_fu_28128_p_din1 = grp_fu_429_p1;
assign grp_fu_28128_p_opcode = 2'd0;
assign grp_fu_28132_p_ce = 1'b1;
assign grp_fu_28132_p_din0 = grp_fu_433_p0;
assign grp_fu_28132_p_din1 = grp_fu_433_p1;
assign grp_fu_28132_p_opcode = 2'd0;
assign grp_fu_28136_p_ce = 1'b1;
assign grp_fu_28136_p_din0 = grp_fu_437_p0;
assign grp_fu_28136_p_din1 = grp_fu_437_p1;
assign grp_fu_28136_p_opcode = 2'd0;
assign grp_fu_28140_p_ce = 1'b1;
assign grp_fu_28140_p_din0 = grp_fu_441_p0;
assign grp_fu_28140_p_din1 = grp_fu_441_p1;
assign grp_fu_28144_p_ce = 1'b1;
assign grp_fu_28144_p_din0 = grp_fu_445_p0;
assign grp_fu_28144_p_din1 = grp_fu_445_p1;
assign grp_fu_28148_p_ce = 1'b1;
assign grp_fu_28148_p_din0 = grp_fu_449_p0;
assign grp_fu_28148_p_din1 = grp_fu_449_p1;
assign grp_fu_28152_p_ce = 1'b1;
assign grp_fu_28152_p_din0 = grp_fu_453_p0;
assign grp_fu_28152_p_din1 = grp_fu_453_p1;
assign grp_fu_28156_p_ce = 1'b1;
assign grp_fu_28156_p_din0 = grp_fu_457_p0;
assign grp_fu_28156_p_din1 = grp_fu_457_p1;
assign grp_fu_28160_p_ce = 1'b1;
assign grp_fu_28160_p_din0 = grp_fu_461_p0;
assign grp_fu_28160_p_din1 = grp_fu_461_p1;
assign grp_fu_28164_p_ce = 1'b1;
assign grp_fu_28164_p_din0 = grp_fu_465_p0;
assign grp_fu_28164_p_din1 = grp_fu_465_p1;
assign grp_fu_28168_p_ce = 1'b1;
assign grp_fu_28168_p_din0 = grp_fu_469_p0;
assign grp_fu_28168_p_din1 = grp_fu_469_p1;
assign grp_fu_28172_p_ce = 1'b1;
assign grp_fu_28172_p_din0 = grp_fu_473_p0;
assign grp_fu_28172_p_din1 = grp_fu_473_p1;
assign icmp_ln33_fu_513_p2 = ((ap_sig_allocacmp_v7 < 8'd220) ? 1'b1 : 1'b0);
assign mul_ln38_fu_523_p1 = 16'd220;
assign or_ln42_1_fu_568_p3 = {{tmp_s_fu_558_p4}, {1'd1}};
assign tmp_s_fu_558_p4 = {{ap_sig_allocacmp_v7[7:1]}};
assign v100_fu_825_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28168_p_dout0 : v98_reg_1333);
assign v104_fu_714_p1 = reg_481;
assign v106_fu_831_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28172_p_dout0 : v104_reg_1339);
assign v10_fu_729_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28140_p_dout0 : v8_reg_1211);
assign v12_fu_640_p1 = v228_q1;
assign v15_fu_644_p1 = reg_481;
assign v17_fu_735_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28144_p_dout0 : v15_reg_1230);
assign v18_fu_649_p1 = v228_q0;
assign v21_fu_653_p1 = v229_2_load_2_reg_1141;
assign v228_address0 = zext_ln45_26_fu_630_p1;
assign v228_address1 = zext_ln38_26_fu_617_p1;
assign v228_ce0 = v228_ce0_local;
assign v228_ce1 = v228_ce1_local;
assign v229_0_address0 = v229_0_address0_local;
assign v229_0_address1 = v229_0_address1_local;
assign v229_0_ce0 = v229_0_ce0_local;
assign v229_0_ce1 = v229_0_ce1_local;
assign v229_0_d0 = bitcast_ln133_fu_903_p1;
assign v229_0_d1 = bitcast_ln139_fu_907_p1;
assign v229_0_we0 = v229_0_we0_local;
assign v229_0_we1 = v229_0_we1_local;
assign v229_1_address0 = v229_1_address0_local;
assign v229_1_address1 = v229_1_address1_local;
assign v229_1_ce0 = v229_1_ce0_local;
assign v229_1_ce1 = v229_1_ce1_local;
assign v229_1_d0 = v229_1_d0_local;
assign v229_1_d1 = v229_1_d1_local;
assign v229_1_we0 = v229_1_we0_local;
assign v229_1_we1 = v229_1_we1_local;
assign v229_2_address0 = v229_2_address0_local;
assign v229_2_address1 = v229_2_address1_local;
assign v229_2_ce0 = v229_2_ce0_local;
assign v229_2_ce1 = v229_2_ce1_local;
assign v229_2_d0 = bitcast_ln61_fu_852_p1;
assign v229_2_d1 = bitcast_ln55_fu_847_p1;
assign v229_2_we0 = v229_2_we0_local;
assign v229_2_we1 = v229_2_we1_local;
assign v229_3_address0 = v229_3_address0_local;
assign v229_3_address1 = v229_3_address1_local;
assign v229_3_ce0 = v229_3_ce0_local;
assign v229_3_ce1 = v229_3_ce1_local;
assign v229_3_d0 = bitcast_ln74_fu_862_p1;
assign v229_3_d1 = bitcast_ln68_fu_857_p1;
assign v229_3_we0 = v229_3_we0_local;
assign v229_3_we1 = v229_3_we1_local;
assign v229_4_address0 = v229_4_address0_local;
assign v229_4_address1 = v229_4_address1_local;
assign v229_4_ce0 = v229_4_ce0_local;
assign v229_4_ce1 = v229_4_ce1_local;
assign v229_4_d0 = bitcast_ln87_fu_872_p1;
assign v229_4_d1 = bitcast_ln81_fu_867_p1;
assign v229_4_we0 = v229_4_we0_local;
assign v229_4_we1 = v229_4_we1_local;
assign v229_5_address0 = v229_5_address0_local;
assign v229_5_address1 = v229_5_address1_local;
assign v229_5_ce0 = v229_5_ce0_local;
assign v229_5_ce1 = v229_5_ce1_local;
assign v229_5_d0 = bitcast_ln100_fu_882_p1;
assign v229_5_d1 = bitcast_ln94_fu_877_p1;
assign v229_5_we0 = v229_5_we0_local;
assign v229_5_we1 = v229_5_we1_local;
assign v229_6_address0 = v229_6_address0_local;
assign v229_6_address1 = v229_6_address1_local;
assign v229_6_ce0 = v229_6_ce0_local;
assign v229_6_ce1 = v229_6_ce1_local;
assign v229_6_d0 = bitcast_ln113_fu_891_p1;
assign v229_6_d1 = bitcast_ln107_fu_887_p1;
assign v229_6_we0 = v229_6_we0_local;
assign v229_6_we1 = v229_6_we1_local;
assign v229_7_address0 = v229_7_address0_local;
assign v229_7_address1 = v229_7_address1_local;
assign v229_7_ce0 = v229_7_ce0_local;
assign v229_7_ce1 = v229_7_ce1_local;
assign v229_7_d0 = bitcast_ln126_fu_899_p1;
assign v229_7_d1 = bitcast_ln120_fu_895_p1;
assign v229_7_we0 = v229_7_we0_local;
assign v229_7_we1 = v229_7_we1_local;
assign v23_fu_741_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28148_p_dout0 : v21_reg_1249);
assign v27_fu_657_p1 = v229_2_load_3_reg_1146;
assign v29_fu_747_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28152_p_dout0 : v27_reg_1255);
assign v32_fu_661_p1 = v229_3_load_2_reg_1151;
assign v34_fu_753_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28156_p_dout0 : v32_reg_1261);
assign v38_fu_665_p1 = v229_3_load_3_reg_1156;
assign v40_fu_759_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28160_p_dout0 : v38_reg_1267);
assign v43_fu_669_p1 = v229_4_load_2_reg_1161;
assign v45_fu_765_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28164_p_dout0 : v43_reg_1273);
assign v49_fu_673_p1 = v229_4_load_3_reg_1166;
assign v51_fu_771_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28168_p_dout0 : v49_reg_1279);
assign v54_fu_677_p1 = v229_5_load_2_reg_1171;
assign v56_fu_777_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28172_p_dout0 : v54_reg_1285);
assign v60_fu_681_p1 = v229_5_load_3_reg_1176;
assign v62_fu_783_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28140_p_dout0 : v60_reg_1291);
assign v65_fu_685_p1 = v229_6_load_2_reg_1181;
assign v67_fu_789_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28144_p_dout0 : v65_reg_1297);
assign v71_fu_689_p1 = v229_6_load_3_reg_1186;
assign v73_fu_795_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28148_p_dout0 : v71_reg_1303);
assign v76_fu_693_p1 = v229_7_load_2_reg_1191;
assign v78_fu_801_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28152_p_dout0 : v76_reg_1309);
assign v82_fu_697_p1 = v229_7_load_3_reg_1196;
assign v84_fu_807_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28156_p_dout0 : v82_reg_1315);
assign v87_fu_701_p1 = v229_0_load_4_reg_1201;
assign v89_fu_813_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28160_p_dout0 : v87_reg_1321);
assign v8_fu_635_p1 = reg_477;
assign v93_fu_705_p1 = v229_0_load_5_reg_1206;
assign v95_fu_819_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28164_p_dout0 : v93_reg_1327);
assign v98_fu_709_p1 = reg_477;
assign zext_ln127_fu_535_p1 = add_ln127_fu_529_p2;
assign zext_ln134_fu_586_p1 = add_ln134_fu_580_p2;
assign zext_ln34_fu_547_p1 = add_ln34_fu_541_p2;
assign zext_ln38_25_fu_609_p1 = v7_reg_1018;
assign zext_ln38_26_fu_617_p1 = add_ln38_fu_612_p2;
assign zext_ln38_fu_519_p1 = ap_sig_allocacmp_v7;
assign zext_ln42_fu_598_p1 = add_ln42_fu_592_p2;
assign zext_ln45_25_fu_622_p1 = or_ln42_1_reg_1080;
assign zext_ln45_26_fu_630_p1 = add_ln45_fu_625_p2;
assign zext_ln45_fu_576_p1 = or_ln42_1_fu_568_p3;
always @ (posedge ap_clk) begin
    or_ln42_1_reg_1080[0] <= 1'b1;
end
endmodule 
