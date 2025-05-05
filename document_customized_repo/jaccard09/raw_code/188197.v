module kernel_2mm_kernel_2mm_node0_Pipeline_label_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v229_7_address0,v229_7_ce0,v229_7_we0,v229_7_d0,v229_7_q0,v229_7_address1,v229_7_ce1,v229_7_we1,v229_7_d1,v229_7_q1,v229_6_address0,v229_6_ce0,v229_6_we0,v229_6_d0,v229_6_q0,v229_6_address1,v229_6_ce1,v229_6_we1,v229_6_d1,v229_6_q1,v229_5_address0,v229_5_ce0,v229_5_we0,v229_5_d0,v229_5_q0,v229_5_address1,v229_5_ce1,v229_5_we1,v229_5_d1,v229_5_q1,v229_4_address0,v229_4_ce0,v229_4_we0,v229_4_d0,v229_4_q0,v229_4_address1,v229_4_ce1,v229_4_we1,v229_4_d1,v229_4_q1,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v5,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,mul_ln34,mul_ln140,v4,empty,v11,v24,v35,v46,v57,v68,v79,v90,v101,grp_fu_28120_p_din0,grp_fu_28120_p_din1,grp_fu_28120_p_opcode,grp_fu_28120_p_dout0,grp_fu_28120_p_ce,grp_fu_28124_p_din0,grp_fu_28124_p_din1,grp_fu_28124_p_opcode,grp_fu_28124_p_dout0,grp_fu_28124_p_ce,grp_fu_28128_p_din0,grp_fu_28128_p_din1,grp_fu_28128_p_opcode,grp_fu_28128_p_dout0,grp_fu_28128_p_ce,grp_fu_28132_p_din0,grp_fu_28132_p_din1,grp_fu_28132_p_opcode,grp_fu_28132_p_dout0,grp_fu_28132_p_ce,grp_fu_28136_p_din0,grp_fu_28136_p_din1,grp_fu_28136_p_opcode,grp_fu_28136_p_dout0,grp_fu_28136_p_ce,grp_fu_28140_p_din0,grp_fu_28140_p_din1,grp_fu_28140_p_dout0,grp_fu_28140_p_ce,grp_fu_28144_p_din0,grp_fu_28144_p_din1,grp_fu_28144_p_dout0,grp_fu_28144_p_ce,grp_fu_28148_p_din0,grp_fu_28148_p_din1,grp_fu_28148_p_dout0,grp_fu_28148_p_ce,grp_fu_28152_p_din0,grp_fu_28152_p_din1,grp_fu_28152_p_dout0,grp_fu_28152_p_ce,grp_fu_28156_p_din0,grp_fu_28156_p_din1,grp_fu_28156_p_dout0,grp_fu_28156_p_ce,grp_fu_28160_p_din0,grp_fu_28160_p_din1,grp_fu_28160_p_dout0,grp_fu_28160_p_ce,grp_fu_28164_p_din0,grp_fu_28164_p_din1,grp_fu_28164_p_dout0,grp_fu_28164_p_ce,grp_fu_28168_p_din0,grp_fu_28168_p_din1,grp_fu_28168_p_dout0,grp_fu_28168_p_ce,grp_fu_28172_p_din0,grp_fu_28172_p_din1,grp_fu_28172_p_dout0,grp_fu_28172_p_ce); 
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
input  [11:0] mul_ln34;
input  [12:0] mul_ln140;
input  [31:0] v4;
input  [0:0] empty;
input  [31:0] v11;
input  [31:0] v24;
input  [31:0] v35;
input  [31:0] v46;
input  [31:0] v57;
input  [31:0] v68;
input  [31:0] v79;
input  [31:0] v90;
input  [31:0] v101;
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
reg   [0:0] icmp_ln33_reg_1030;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_481;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_485;
reg   [31:0] reg_489;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_493;
reg   [31:0] reg_497;
reg   [31:0] reg_501;
reg   [31:0] reg_505;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] v7_34_reg_1024;
wire   [0:0] icmp_ln33_fu_521_p2;
reg   [0:0] icmp_ln33_reg_1030_pp0_iter1_reg;
reg   [0:0] icmp_ln33_reg_1030_pp0_iter2_reg;
reg   [0:0] icmp_ln33_reg_1030_pp0_iter3_reg;
wire   [15:0] mul_ln38_fu_531_p2;
reg   [15:0] mul_ln38_reg_1034;
reg   [12:0] v229_0_addr_1_reg_1040;
reg   [12:0] v229_0_addr_1_reg_1040_pp0_iter1_reg;
reg   [12:0] v229_0_addr_1_reg_1040_pp0_iter2_reg;
reg   [12:0] v229_0_addr_1_reg_1040_pp0_iter3_reg;
wire   [12:0] add_ln140_fu_555_p2;
reg   [12:0] add_ln140_reg_1045;
reg   [12:0] v229_1_addr_1_reg_1050;
reg   [12:0] v229_1_addr_1_reg_1050_pp0_iter1_reg;
reg   [12:0] v229_1_addr_1_reg_1050_pp0_iter2_reg;
reg   [12:0] v229_1_addr_1_reg_1050_pp0_iter3_reg;
reg   [12:0] v229_2_addr_1_reg_1055;
reg   [12:0] v229_2_addr_1_reg_1055_pp0_iter1_reg;
reg   [12:0] v229_2_addr_1_reg_1055_pp0_iter2_reg;
reg   [12:0] v229_2_addr_1_reg_1055_pp0_iter3_reg;
reg   [12:0] v229_3_addr_1_reg_1060;
reg   [12:0] v229_3_addr_1_reg_1060_pp0_iter1_reg;
reg   [12:0] v229_3_addr_1_reg_1060_pp0_iter2_reg;
reg   [12:0] v229_3_addr_1_reg_1060_pp0_iter3_reg;
reg   [12:0] v229_3_addr_1_reg_1060_pp0_iter4_reg;
reg   [12:0] v229_4_addr_1_reg_1065;
reg   [12:0] v229_4_addr_1_reg_1065_pp0_iter1_reg;
reg   [12:0] v229_4_addr_1_reg_1065_pp0_iter2_reg;
reg   [12:0] v229_4_addr_1_reg_1065_pp0_iter3_reg;
reg   [12:0] v229_4_addr_1_reg_1065_pp0_iter4_reg;
reg   [12:0] v229_5_addr_1_reg_1070;
reg   [12:0] v229_5_addr_1_reg_1070_pp0_iter1_reg;
reg   [12:0] v229_5_addr_1_reg_1070_pp0_iter2_reg;
reg   [12:0] v229_5_addr_1_reg_1070_pp0_iter3_reg;
reg   [12:0] v229_5_addr_1_reg_1070_pp0_iter4_reg;
reg   [12:0] v229_6_addr_1_reg_1075;
reg   [12:0] v229_6_addr_1_reg_1075_pp0_iter1_reg;
reg   [12:0] v229_6_addr_1_reg_1075_pp0_iter2_reg;
reg   [12:0] v229_6_addr_1_reg_1075_pp0_iter3_reg;
reg   [12:0] v229_6_addr_1_reg_1075_pp0_iter4_reg;
reg   [12:0] v229_7_addr_1_reg_1080;
reg   [12:0] v229_7_addr_1_reg_1080_pp0_iter1_reg;
reg   [12:0] v229_7_addr_1_reg_1080_pp0_iter2_reg;
reg   [12:0] v229_7_addr_1_reg_1080_pp0_iter3_reg;
reg   [12:0] v229_7_addr_1_reg_1080_pp0_iter4_reg;
wire   [7:0] or_ln_fu_571_p3;
reg   [7:0] or_ln_reg_1086;
reg   [12:0] v229_0_addr_2_reg_1091;
reg   [12:0] v229_0_addr_2_reg_1091_pp0_iter1_reg;
reg   [12:0] v229_0_addr_2_reg_1091_pp0_iter2_reg;
reg   [12:0] v229_0_addr_2_reg_1091_pp0_iter3_reg;
wire   [12:0] add_ln147_fu_601_p2;
reg   [12:0] add_ln147_reg_1096;
reg   [12:0] v229_1_addr_2_reg_1101;
reg   [12:0] v229_1_addr_2_reg_1101_pp0_iter1_reg;
reg   [12:0] v229_1_addr_2_reg_1101_pp0_iter2_reg;
reg   [12:0] v229_1_addr_2_reg_1101_pp0_iter3_reg;
reg   [12:0] v229_2_addr_2_reg_1106;
reg   [12:0] v229_2_addr_2_reg_1106_pp0_iter1_reg;
reg   [12:0] v229_2_addr_2_reg_1106_pp0_iter2_reg;
reg   [12:0] v229_2_addr_2_reg_1106_pp0_iter3_reg;
reg   [12:0] v229_2_addr_2_reg_1106_pp0_iter4_reg;
reg   [12:0] v229_3_addr_2_reg_1111;
reg   [12:0] v229_3_addr_2_reg_1111_pp0_iter1_reg;
reg   [12:0] v229_3_addr_2_reg_1111_pp0_iter2_reg;
reg   [12:0] v229_3_addr_2_reg_1111_pp0_iter3_reg;
reg   [12:0] v229_3_addr_2_reg_1111_pp0_iter4_reg;
reg   [12:0] v229_4_addr_2_reg_1116;
reg   [12:0] v229_4_addr_2_reg_1116_pp0_iter1_reg;
reg   [12:0] v229_4_addr_2_reg_1116_pp0_iter2_reg;
reg   [12:0] v229_4_addr_2_reg_1116_pp0_iter3_reg;
reg   [12:0] v229_4_addr_2_reg_1116_pp0_iter4_reg;
reg   [12:0] v229_5_addr_2_reg_1121;
reg   [12:0] v229_5_addr_2_reg_1121_pp0_iter1_reg;
reg   [12:0] v229_5_addr_2_reg_1121_pp0_iter2_reg;
reg   [12:0] v229_5_addr_2_reg_1121_pp0_iter3_reg;
reg   [12:0] v229_5_addr_2_reg_1121_pp0_iter4_reg;
reg   [12:0] v229_6_addr_2_reg_1126;
reg   [12:0] v229_6_addr_2_reg_1126_pp0_iter1_reg;
reg   [12:0] v229_6_addr_2_reg_1126_pp0_iter2_reg;
reg   [12:0] v229_6_addr_2_reg_1126_pp0_iter3_reg;
reg   [12:0] v229_6_addr_2_reg_1126_pp0_iter4_reg;
reg   [12:0] v229_7_addr_2_reg_1131;
reg   [12:0] v229_7_addr_2_reg_1131_pp0_iter1_reg;
reg   [12:0] v229_7_addr_2_reg_1131_pp0_iter2_reg;
reg   [12:0] v229_7_addr_2_reg_1131_pp0_iter3_reg;
reg   [12:0] v229_7_addr_2_reg_1131_pp0_iter4_reg;
reg   [12:0] v229_0_addr_3_reg_1142;
reg   [12:0] v229_0_addr_3_reg_1142_pp0_iter1_reg;
reg   [12:0] v229_0_addr_3_reg_1142_pp0_iter2_reg;
reg   [12:0] v229_0_addr_3_reg_1142_pp0_iter3_reg;
reg   [12:0] v229_0_addr_3_reg_1142_pp0_iter4_reg;
reg   [12:0] v229_0_addr_4_reg_1152;
reg   [12:0] v229_0_addr_4_reg_1152_pp0_iter1_reg;
reg   [12:0] v229_0_addr_4_reg_1152_pp0_iter2_reg;
reg   [12:0] v229_0_addr_4_reg_1152_pp0_iter3_reg;
reg   [12:0] v229_0_addr_4_reg_1152_pp0_iter4_reg;
reg   [31:0] v229_1_load_reg_1157;
reg   [31:0] v229_1_load_1_reg_1162;
reg   [31:0] v229_2_load_reg_1167;
reg   [31:0] v229_2_load_1_reg_1172;
reg   [31:0] v229_3_load_reg_1177;
reg   [31:0] v229_3_load_1_reg_1182;
reg   [31:0] v229_4_load_reg_1187;
reg   [31:0] v229_4_load_1_reg_1192;
reg   [31:0] v229_5_load_reg_1197;
reg   [31:0] v229_5_load_1_reg_1202;
reg   [31:0] v229_6_load_reg_1207;
reg   [31:0] v229_6_load_1_reg_1212;
reg   [31:0] v229_7_load_reg_1217;
reg   [31:0] v229_7_load_1_reg_1222;
wire   [31:0] v8_fu_641_p1;
reg   [31:0] v8_reg_1227;
wire   [31:0] v12_fu_646_p1;
reg   [31:0] v12_reg_1233;
wire   [31:0] v15_fu_650_p1;
reg   [31:0] v15_reg_1246;
wire   [31:0] v18_fu_655_p1;
reg   [31:0] v18_reg_1252;
wire   [31:0] v21_fu_659_p1;
reg   [31:0] v21_reg_1265;
wire   [31:0] v27_fu_663_p1;
reg   [31:0] v27_reg_1271;
wire   [31:0] v32_fu_667_p1;
reg   [31:0] v32_reg_1277;
wire   [31:0] v38_fu_671_p1;
reg   [31:0] v38_reg_1283;
wire   [31:0] v43_fu_675_p1;
reg   [31:0] v43_reg_1289;
wire   [31:0] v49_fu_679_p1;
reg   [31:0] v49_reg_1295;
wire   [31:0] v54_fu_683_p1;
reg   [31:0] v54_reg_1301;
wire   [31:0] v60_fu_687_p1;
reg   [31:0] v60_reg_1307;
wire   [31:0] v65_fu_691_p1;
reg   [31:0] v65_reg_1313;
wire   [31:0] v71_fu_695_p1;
reg   [31:0] v71_reg_1319;
wire   [31:0] v76_fu_699_p1;
reg   [31:0] v76_reg_1325;
wire   [31:0] v82_fu_703_p1;
reg   [31:0] v82_reg_1331;
wire   [31:0] v87_fu_707_p1;
reg   [31:0] v87_reg_1337;
wire   [31:0] v93_fu_711_p1;
reg   [31:0] v93_reg_1343;
wire   [31:0] v98_fu_715_p1;
reg   [31:0] v98_reg_1349;
wire   [31:0] v104_fu_720_p1;
reg   [31:0] v104_reg_1355;
wire   [31:0] v10_fu_735_p3;
reg   [31:0] v10_reg_1361;
wire   [31:0] v17_fu_741_p3;
reg   [31:0] v17_reg_1366;
wire   [31:0] v23_fu_747_p3;
reg   [31:0] v23_reg_1371;
wire   [31:0] v29_fu_753_p3;
reg   [31:0] v29_reg_1376;
wire   [31:0] v34_fu_759_p3;
reg   [31:0] v34_reg_1381;
wire   [31:0] v40_fu_765_p3;
reg   [31:0] v40_reg_1386;
wire   [31:0] v45_fu_771_p3;
reg   [31:0] v45_reg_1391;
wire   [31:0] v51_fu_777_p3;
reg   [31:0] v51_reg_1396;
wire   [31:0] v56_fu_783_p3;
reg   [31:0] v56_reg_1401;
wire   [31:0] v62_fu_789_p3;
reg   [31:0] v62_reg_1406;
wire   [31:0] v67_fu_795_p3;
reg   [31:0] v67_reg_1411;
wire   [31:0] v73_fu_801_p3;
reg   [31:0] v73_reg_1416;
wire   [31:0] v78_fu_807_p3;
reg   [31:0] v78_reg_1421;
wire   [31:0] v84_fu_813_p3;
reg   [31:0] v84_reg_1426;
wire   [31:0] v89_fu_819_p3;
reg   [31:0] v89_reg_1431;
wire   [31:0] v95_fu_825_p3;
reg   [31:0] v95_reg_1436;
reg   [31:0] v95_reg_1436_pp0_iter2_reg;
wire   [31:0] v100_fu_831_p3;
reg   [31:0] v100_reg_1441;
reg   [31:0] v100_reg_1441_pp0_iter2_reg;
wire   [31:0] v106_fu_837_p3;
reg   [31:0] v106_reg_1446;
reg   [31:0] v106_reg_1446_pp0_iter2_reg;
reg   [31:0] v13_reg_1451;
reg   [31:0] v19_reg_1456;
reg   [31:0] v25_reg_1461;
reg   [31:0] v30_reg_1466;
reg   [31:0] v36_reg_1471;
reg   [31:0] v41_reg_1476;
reg   [31:0] v47_reg_1481;
reg   [31:0] v52_reg_1486;
reg   [31:0] v58_reg_1491;
reg   [31:0] v63_reg_1496;
reg   [31:0] v69_reg_1501;
reg   [31:0] v74_reg_1506;
reg   [31:0] v80_reg_1511;
reg   [31:0] v85_reg_1516;
reg   [31:0] v91_reg_1521;
reg   [31:0] v96_reg_1526;
reg   [31:0] v102_reg_1531;
reg   [31:0] v107_reg_1536;
reg   [31:0] v70_reg_1541;
reg   [31:0] v75_reg_1546;
reg   [31:0] v81_reg_1551;
reg   [31:0] v86_reg_1556;
reg   [31:0] v92_reg_1561;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln34_fu_543_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln42_fu_589_p1;
wire   [63:0] zext_ln38_128_fu_615_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln140_fu_620_p1;
wire   [63:0] zext_ln45_128_fu_632_p1;
wire   [63:0] zext_ln147_fu_637_p1;
reg   [7:0] v7_fu_96;
wire   [7:0] add_ln33_fu_725_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v7_34;
reg    v229_0_ce1_local;
reg   [12:0] v229_0_address1_local;
reg    v229_0_ce0_local;
reg   [12:0] v229_0_address0_local;
reg    v229_0_we1_local;
reg   [31:0] v229_0_d1_local;
wire   [31:0] bitcast_ln41_fu_843_p1;
wire    ap_block_pp0_stage3;
reg    v229_0_we0_local;
reg   [31:0] v229_0_d0_local;
wire   [31:0] bitcast_ln48_fu_848_p1;
wire   [31:0] bitcast_ln146_fu_918_p1;
wire    ap_block_pp0_stage2;
wire   [31:0] bitcast_ln152_fu_923_p1;
reg    v229_1_ce1_local;
reg   [12:0] v229_1_address1_local;
reg    v229_1_ce0_local;
reg   [12:0] v229_1_address0_local;
reg    v229_1_we1_local;
wire   [31:0] bitcast_ln55_fu_853_p1;
reg    v229_1_we0_local;
wire   [31:0] bitcast_ln61_fu_858_p1;
reg    v229_2_ce1_local;
reg   [12:0] v229_2_address1_local;
reg    v229_2_ce0_local;
reg   [12:0] v229_2_address0_local;
reg    v229_2_we1_local;
wire   [31:0] bitcast_ln68_fu_863_p1;
reg    v229_2_we0_local;
wire   [31:0] bitcast_ln74_fu_868_p1;
reg    v229_3_ce1_local;
reg   [12:0] v229_3_address1_local;
reg    v229_3_ce0_local;
reg   [12:0] v229_3_address0_local;
reg    v229_3_we1_local;
wire   [31:0] bitcast_ln81_fu_873_p1;
reg    v229_3_we0_local;
wire   [31:0] bitcast_ln87_fu_878_p1;
reg    v229_4_ce1_local;
reg   [12:0] v229_4_address1_local;
reg    v229_4_ce0_local;
reg   [12:0] v229_4_address0_local;
reg    v229_4_we1_local;
wire   [31:0] bitcast_ln94_fu_883_p1;
reg    v229_4_we0_local;
wire   [31:0] bitcast_ln100_fu_888_p1;
reg    v229_5_ce1_local;
reg   [12:0] v229_5_address1_local;
reg    v229_5_ce0_local;
reg   [12:0] v229_5_address0_local;
reg    v229_5_we1_local;
wire   [31:0] bitcast_ln107_fu_893_p1;
reg    v229_5_we0_local;
wire   [31:0] bitcast_ln113_fu_897_p1;
reg    v229_6_ce1_local;
reg   [12:0] v229_6_address1_local;
reg    v229_6_ce0_local;
reg   [12:0] v229_6_address0_local;
reg    v229_6_we1_local;
wire   [31:0] bitcast_ln120_fu_901_p1;
reg    v229_6_we0_local;
wire   [31:0] bitcast_ln126_fu_905_p1;
reg    v229_7_ce1_local;
reg   [12:0] v229_7_address1_local;
reg    v229_7_ce0_local;
reg   [12:0] v229_7_address0_local;
reg    v229_7_we0_local;
wire   [31:0] bitcast_ln133_fu_909_p1;
reg    v229_7_we1_local;
wire   [31:0] bitcast_ln139_fu_913_p1;
reg    v228_ce1_local;
reg    v228_ce0_local;
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
reg   [31:0] grp_fu_477_p0;
reg   [31:0] grp_fu_477_p1;
wire   [8:0] mul_ln38_fu_531_p1;
wire   [12:0] mul_ln34_cast_fu_509_p1;
wire   [12:0] zext_ln38_fu_527_p1;
wire   [12:0] add_ln34_fu_537_p2;
wire   [6:0] tmp_s_fu_561_p4;
wire   [12:0] zext_ln45_fu_579_p1;
wire   [12:0] add_ln42_fu_583_p2;
wire   [15:0] zext_ln38_127_fu_607_p1;
wire   [15:0] add_ln38_fu_610_p2;
wire   [15:0] zext_ln45_127_fu_624_p1;
wire   [15:0] add_ln45_fu_627_p2;
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
#0 v7_fu_96 = 8'd0;
#0 ap_done_reg = 1'b0;
end
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U237(.din0(v5),.din1(mul_ln38_fu_531_p1),.dout(mul_ln38_fu_531_p2));
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
        v7_fu_96 <= 8'd0;
    end else if (((icmp_ln33_reg_1030 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v7_fu_96 <= add_ln33_fu_725_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln140_reg_1045 <= add_ln140_fu_555_p2;
        add_ln147_reg_1096 <= add_ln147_fu_601_p2;
        icmp_ln33_reg_1030 <= icmp_ln33_fu_521_p2;
        icmp_ln33_reg_1030_pp0_iter1_reg <= icmp_ln33_reg_1030;
        icmp_ln33_reg_1030_pp0_iter2_reg <= icmp_ln33_reg_1030_pp0_iter1_reg;
        icmp_ln33_reg_1030_pp0_iter3_reg <= icmp_ln33_reg_1030_pp0_iter2_reg;
        mul_ln38_reg_1034 <= mul_ln38_fu_531_p2;
        or_ln_reg_1086[7 : 1] <= or_ln_fu_571_p3[7 : 1];
        v229_0_addr_1_reg_1040 <= zext_ln34_fu_543_p1;
        v229_0_addr_1_reg_1040_pp0_iter1_reg <= v229_0_addr_1_reg_1040;
        v229_0_addr_1_reg_1040_pp0_iter2_reg <= v229_0_addr_1_reg_1040_pp0_iter1_reg;
        v229_0_addr_1_reg_1040_pp0_iter3_reg <= v229_0_addr_1_reg_1040_pp0_iter2_reg;
        v229_0_addr_2_reg_1091 <= zext_ln42_fu_589_p1;
        v229_0_addr_2_reg_1091_pp0_iter1_reg <= v229_0_addr_2_reg_1091;
        v229_0_addr_2_reg_1091_pp0_iter2_reg <= v229_0_addr_2_reg_1091_pp0_iter1_reg;
        v229_0_addr_2_reg_1091_pp0_iter3_reg <= v229_0_addr_2_reg_1091_pp0_iter2_reg;
        v229_1_addr_1_reg_1050 <= zext_ln34_fu_543_p1;
        v229_1_addr_1_reg_1050_pp0_iter1_reg <= v229_1_addr_1_reg_1050;
        v229_1_addr_1_reg_1050_pp0_iter2_reg <= v229_1_addr_1_reg_1050_pp0_iter1_reg;
        v229_1_addr_1_reg_1050_pp0_iter3_reg <= v229_1_addr_1_reg_1050_pp0_iter2_reg;
        v229_1_addr_2_reg_1101 <= zext_ln42_fu_589_p1;
        v229_1_addr_2_reg_1101_pp0_iter1_reg <= v229_1_addr_2_reg_1101;
        v229_1_addr_2_reg_1101_pp0_iter2_reg <= v229_1_addr_2_reg_1101_pp0_iter1_reg;
        v229_1_addr_2_reg_1101_pp0_iter3_reg <= v229_1_addr_2_reg_1101_pp0_iter2_reg;
        v229_2_addr_1_reg_1055 <= zext_ln34_fu_543_p1;
        v229_2_addr_1_reg_1055_pp0_iter1_reg <= v229_2_addr_1_reg_1055;
        v229_2_addr_1_reg_1055_pp0_iter2_reg <= v229_2_addr_1_reg_1055_pp0_iter1_reg;
        v229_2_addr_1_reg_1055_pp0_iter3_reg <= v229_2_addr_1_reg_1055_pp0_iter2_reg;
        v229_2_addr_2_reg_1106 <= zext_ln42_fu_589_p1;
        v229_2_addr_2_reg_1106_pp0_iter1_reg <= v229_2_addr_2_reg_1106;
        v229_2_addr_2_reg_1106_pp0_iter2_reg <= v229_2_addr_2_reg_1106_pp0_iter1_reg;
        v229_2_addr_2_reg_1106_pp0_iter3_reg <= v229_2_addr_2_reg_1106_pp0_iter2_reg;
        v229_2_addr_2_reg_1106_pp0_iter4_reg <= v229_2_addr_2_reg_1106_pp0_iter3_reg;
        v229_3_addr_1_reg_1060 <= zext_ln34_fu_543_p1;
        v229_3_addr_1_reg_1060_pp0_iter1_reg <= v229_3_addr_1_reg_1060;
        v229_3_addr_1_reg_1060_pp0_iter2_reg <= v229_3_addr_1_reg_1060_pp0_iter1_reg;
        v229_3_addr_1_reg_1060_pp0_iter3_reg <= v229_3_addr_1_reg_1060_pp0_iter2_reg;
        v229_3_addr_1_reg_1060_pp0_iter4_reg <= v229_3_addr_1_reg_1060_pp0_iter3_reg;
        v229_3_addr_2_reg_1111 <= zext_ln42_fu_589_p1;
        v229_3_addr_2_reg_1111_pp0_iter1_reg <= v229_3_addr_2_reg_1111;
        v229_3_addr_2_reg_1111_pp0_iter2_reg <= v229_3_addr_2_reg_1111_pp0_iter1_reg;
        v229_3_addr_2_reg_1111_pp0_iter3_reg <= v229_3_addr_2_reg_1111_pp0_iter2_reg;
        v229_3_addr_2_reg_1111_pp0_iter4_reg <= v229_3_addr_2_reg_1111_pp0_iter3_reg;
        v229_4_addr_1_reg_1065 <= zext_ln34_fu_543_p1;
        v229_4_addr_1_reg_1065_pp0_iter1_reg <= v229_4_addr_1_reg_1065;
        v229_4_addr_1_reg_1065_pp0_iter2_reg <= v229_4_addr_1_reg_1065_pp0_iter1_reg;
        v229_4_addr_1_reg_1065_pp0_iter3_reg <= v229_4_addr_1_reg_1065_pp0_iter2_reg;
        v229_4_addr_1_reg_1065_pp0_iter4_reg <= v229_4_addr_1_reg_1065_pp0_iter3_reg;
        v229_4_addr_2_reg_1116 <= zext_ln42_fu_589_p1;
        v229_4_addr_2_reg_1116_pp0_iter1_reg <= v229_4_addr_2_reg_1116;
        v229_4_addr_2_reg_1116_pp0_iter2_reg <= v229_4_addr_2_reg_1116_pp0_iter1_reg;
        v229_4_addr_2_reg_1116_pp0_iter3_reg <= v229_4_addr_2_reg_1116_pp0_iter2_reg;
        v229_4_addr_2_reg_1116_pp0_iter4_reg <= v229_4_addr_2_reg_1116_pp0_iter3_reg;
        v229_5_addr_1_reg_1070 <= zext_ln34_fu_543_p1;
        v229_5_addr_1_reg_1070_pp0_iter1_reg <= v229_5_addr_1_reg_1070;
        v229_5_addr_1_reg_1070_pp0_iter2_reg <= v229_5_addr_1_reg_1070_pp0_iter1_reg;
        v229_5_addr_1_reg_1070_pp0_iter3_reg <= v229_5_addr_1_reg_1070_pp0_iter2_reg;
        v229_5_addr_1_reg_1070_pp0_iter4_reg <= v229_5_addr_1_reg_1070_pp0_iter3_reg;
        v229_5_addr_2_reg_1121 <= zext_ln42_fu_589_p1;
        v229_5_addr_2_reg_1121_pp0_iter1_reg <= v229_5_addr_2_reg_1121;
        v229_5_addr_2_reg_1121_pp0_iter2_reg <= v229_5_addr_2_reg_1121_pp0_iter1_reg;
        v229_5_addr_2_reg_1121_pp0_iter3_reg <= v229_5_addr_2_reg_1121_pp0_iter2_reg;
        v229_5_addr_2_reg_1121_pp0_iter4_reg <= v229_5_addr_2_reg_1121_pp0_iter3_reg;
        v229_6_addr_1_reg_1075 <= zext_ln34_fu_543_p1;
        v229_6_addr_1_reg_1075_pp0_iter1_reg <= v229_6_addr_1_reg_1075;
        v229_6_addr_1_reg_1075_pp0_iter2_reg <= v229_6_addr_1_reg_1075_pp0_iter1_reg;
        v229_6_addr_1_reg_1075_pp0_iter3_reg <= v229_6_addr_1_reg_1075_pp0_iter2_reg;
        v229_6_addr_1_reg_1075_pp0_iter4_reg <= v229_6_addr_1_reg_1075_pp0_iter3_reg;
        v229_6_addr_2_reg_1126 <= zext_ln42_fu_589_p1;
        v229_6_addr_2_reg_1126_pp0_iter1_reg <= v229_6_addr_2_reg_1126;
        v229_6_addr_2_reg_1126_pp0_iter2_reg <= v229_6_addr_2_reg_1126_pp0_iter1_reg;
        v229_6_addr_2_reg_1126_pp0_iter3_reg <= v229_6_addr_2_reg_1126_pp0_iter2_reg;
        v229_6_addr_2_reg_1126_pp0_iter4_reg <= v229_6_addr_2_reg_1126_pp0_iter3_reg;
        v229_7_addr_1_reg_1080 <= zext_ln34_fu_543_p1;
        v229_7_addr_1_reg_1080_pp0_iter1_reg <= v229_7_addr_1_reg_1080;
        v229_7_addr_1_reg_1080_pp0_iter2_reg <= v229_7_addr_1_reg_1080_pp0_iter1_reg;
        v229_7_addr_1_reg_1080_pp0_iter3_reg <= v229_7_addr_1_reg_1080_pp0_iter2_reg;
        v229_7_addr_1_reg_1080_pp0_iter4_reg <= v229_7_addr_1_reg_1080_pp0_iter3_reg;
        v229_7_addr_2_reg_1131 <= zext_ln42_fu_589_p1;
        v229_7_addr_2_reg_1131_pp0_iter1_reg <= v229_7_addr_2_reg_1131;
        v229_7_addr_2_reg_1131_pp0_iter2_reg <= v229_7_addr_2_reg_1131_pp0_iter1_reg;
        v229_7_addr_2_reg_1131_pp0_iter3_reg <= v229_7_addr_2_reg_1131_pp0_iter2_reg;
        v229_7_addr_2_reg_1131_pp0_iter4_reg <= v229_7_addr_2_reg_1131_pp0_iter3_reg;
        v7_34_reg_1024 <= ap_sig_allocacmp_v7_34;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_481 <= v229_0_q1;
        reg_485 <= v229_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_489 <= grp_fu_28120_p_dout0;
        reg_493 <= grp_fu_28124_p_dout0;
        reg_497 <= grp_fu_28128_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_501 <= grp_fu_28132_p_dout0;
        reg_505 <= grp_fu_28136_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v100_reg_1441 <= v100_fu_831_p3;
        v100_reg_1441_pp0_iter2_reg <= v100_reg_1441;
        v106_reg_1446 <= v106_fu_837_p3;
        v106_reg_1446_pp0_iter2_reg <= v106_reg_1446;
        v12_reg_1233 <= v12_fu_646_p1;
        v15_reg_1246 <= v15_fu_650_p1;
        v18_reg_1252 <= v18_fu_655_p1;
        v21_reg_1265 <= v21_fu_659_p1;
        v27_reg_1271 <= v27_fu_663_p1;
        v32_reg_1277 <= v32_fu_667_p1;
        v38_reg_1283 <= v38_fu_671_p1;
        v43_reg_1289 <= v43_fu_675_p1;
        v49_reg_1295 <= v49_fu_679_p1;
        v54_reg_1301 <= v54_fu_683_p1;
        v62_reg_1406 <= v62_fu_789_p3;
        v67_reg_1411 <= v67_fu_795_p3;
        v73_reg_1416 <= v73_fu_801_p3;
        v78_reg_1421 <= v78_fu_807_p3;
        v84_reg_1426 <= v84_fu_813_p3;
        v89_reg_1431 <= v89_fu_819_p3;
        v8_reg_1227 <= v8_fu_641_p1;
        v95_reg_1436 <= v95_fu_825_p3;
        v95_reg_1436_pp0_iter2_reg <= v95_reg_1436;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v102_reg_1531 <= grp_fu_28168_p_dout0;
        v107_reg_1536 <= grp_fu_28172_p_dout0;
        v63_reg_1496 <= grp_fu_28140_p_dout0;
        v69_reg_1501 <= grp_fu_28144_p_dout0;
        v74_reg_1506 <= grp_fu_28148_p_dout0;
        v80_reg_1511 <= grp_fu_28152_p_dout0;
        v85_reg_1516 <= grp_fu_28156_p_dout0;
        v91_reg_1521 <= grp_fu_28160_p_dout0;
        v96_reg_1526 <= grp_fu_28164_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v104_reg_1355 <= v104_fu_720_p1;
        v60_reg_1307 <= v60_fu_687_p1;
        v65_reg_1313 <= v65_fu_691_p1;
        v71_reg_1319 <= v71_fu_695_p1;
        v76_reg_1325 <= v76_fu_699_p1;
        v82_reg_1331 <= v82_fu_703_p1;
        v87_reg_1337 <= v87_fu_707_p1;
        v93_reg_1343 <= v93_fu_711_p1;
        v98_reg_1349 <= v98_fu_715_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_reg_1361 <= v10_fu_735_p3;
        v17_reg_1366 <= v17_fu_741_p3;
        v229_0_addr_3_reg_1142 <= zext_ln140_fu_620_p1;
        v229_0_addr_3_reg_1142_pp0_iter1_reg <= v229_0_addr_3_reg_1142;
        v229_0_addr_3_reg_1142_pp0_iter2_reg <= v229_0_addr_3_reg_1142_pp0_iter1_reg;
        v229_0_addr_3_reg_1142_pp0_iter3_reg <= v229_0_addr_3_reg_1142_pp0_iter2_reg;
        v229_0_addr_3_reg_1142_pp0_iter4_reg <= v229_0_addr_3_reg_1142_pp0_iter3_reg;
        v229_0_addr_4_reg_1152 <= zext_ln147_fu_637_p1;
        v229_0_addr_4_reg_1152_pp0_iter1_reg <= v229_0_addr_4_reg_1152;
        v229_0_addr_4_reg_1152_pp0_iter2_reg <= v229_0_addr_4_reg_1152_pp0_iter1_reg;
        v229_0_addr_4_reg_1152_pp0_iter3_reg <= v229_0_addr_4_reg_1152_pp0_iter2_reg;
        v229_0_addr_4_reg_1152_pp0_iter4_reg <= v229_0_addr_4_reg_1152_pp0_iter3_reg;
        v23_reg_1371 <= v23_fu_747_p3;
        v29_reg_1376 <= v29_fu_753_p3;
        v34_reg_1381 <= v34_fu_759_p3;
        v40_reg_1386 <= v40_fu_765_p3;
        v45_reg_1391 <= v45_fu_771_p3;
        v51_reg_1396 <= v51_fu_777_p3;
        v56_reg_1401 <= v56_fu_783_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v13_reg_1451 <= grp_fu_28140_p_dout0;
        v19_reg_1456 <= grp_fu_28144_p_dout0;
        v25_reg_1461 <= grp_fu_28148_p_dout0;
        v30_reg_1466 <= grp_fu_28152_p_dout0;
        v36_reg_1471 <= grp_fu_28156_p_dout0;
        v41_reg_1476 <= grp_fu_28160_p_dout0;
        v47_reg_1481 <= grp_fu_28164_p_dout0;
        v52_reg_1486 <= grp_fu_28168_p_dout0;
        v58_reg_1491 <= grp_fu_28172_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_load_1_reg_1162 <= v229_1_q0;
        v229_1_load_reg_1157 <= v229_1_q1;
        v229_2_load_1_reg_1172 <= v229_2_q0;
        v229_2_load_reg_1167 <= v229_2_q1;
        v229_3_load_1_reg_1182 <= v229_3_q0;
        v229_3_load_reg_1177 <= v229_3_q1;
        v229_4_load_1_reg_1192 <= v229_4_q0;
        v229_4_load_reg_1187 <= v229_4_q1;
        v229_5_load_1_reg_1202 <= v229_5_q0;
        v229_5_load_reg_1197 <= v229_5_q1;
        v229_6_load_1_reg_1212 <= v229_6_q0;
        v229_6_load_reg_1207 <= v229_6_q1;
        v229_7_load_1_reg_1222 <= v229_7_q0;
        v229_7_load_reg_1217 <= v229_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v70_reg_1541 <= grp_fu_28120_p_dout0;
        v75_reg_1546 <= grp_fu_28124_p_dout0;
        v81_reg_1551 <= grp_fu_28128_p_dout0;
        v86_reg_1556 <= grp_fu_28132_p_dout0;
        v92_reg_1561 <= grp_fu_28136_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln33_reg_1030 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln33_reg_1030_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        ap_sig_allocacmp_v7_34 = 8'd0;
    end else begin
        ap_sig_allocacmp_v7_34 = v7_fu_96;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_425_p0 = v95_reg_1436_pp0_iter2_reg;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_425_p0 = v67_reg_1411;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_425_p0 = v40_reg_1386;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_425_p0 = v10_reg_1361;
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
            grp_fu_425_p1 = v96_reg_1526;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_425_p1 = v69_reg_1501;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_425_p1 = v41_reg_1476;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_425_p1 = v13_reg_1451;
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
            grp_fu_429_p0 = v100_reg_1441_pp0_iter2_reg;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_429_p0 = v73_reg_1416;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_429_p0 = v45_reg_1391;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_429_p0 = v17_reg_1366;
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
            grp_fu_429_p1 = v102_reg_1531;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_429_p1 = v74_reg_1506;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_429_p1 = v47_reg_1481;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_429_p1 = v19_reg_1456;
        end else begin
            grp_fu_429_p1 = 'bx;
        end
    end else begin
        grp_fu_429_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_433_p0 = v106_reg_1446_pp0_iter2_reg;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_433_p0 = v78_reg_1421;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_433_p0 = v51_reg_1396;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_433_p0 = v23_reg_1371;
        end else begin
            grp_fu_433_p0 = 'bx;
        end
    end else begin
        grp_fu_433_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_433_p1 = v107_reg_1536;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_433_p1 = v80_reg_1511;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_433_p1 = v52_reg_1486;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_433_p1 = v25_reg_1461;
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
            grp_fu_437_p0 = v84_reg_1426;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_437_p0 = v56_reg_1401;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_437_p0 = v29_reg_1376;
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
            grp_fu_437_p1 = v85_reg_1516;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_437_p1 = v58_reg_1491;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_437_p1 = v30_reg_1466;
        end else begin
            grp_fu_437_p1 = 'bx;
        end
    end else begin
        grp_fu_437_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_441_p0 = v89_reg_1431;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_441_p0 = v62_reg_1406;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_441_p0 = v34_reg_1381;
        end else begin
            grp_fu_441_p0 = 'bx;
        end
    end else begin
        grp_fu_441_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_441_p1 = v91_reg_1521;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_441_p1 = v63_reg_1496;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_441_p1 = v36_reg_1471;
        end else begin
            grp_fu_441_p1 = 'bx;
        end
    end else begin
        grp_fu_441_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_445_p0 = v57;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_445_p0 = v11;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_445_p0 = v60_fu_687_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_445_p0 = v8_fu_641_p1;
    end else begin
        grp_fu_445_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_445_p1 = v18_reg_1252;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_445_p1 = v12_reg_1233;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_445_p1 = v4;
    end else begin
        grp_fu_445_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_449_p0 = v68;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_449_p0 = v11;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_449_p0 = v65_fu_691_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_449_p0 = v15_fu_650_p1;
    end else begin
        grp_fu_449_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_449_p1 = v12_reg_1233;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_449_p1 = v18_reg_1252;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_449_p1 = v4;
    end else begin
        grp_fu_449_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_453_p0 = v68;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_453_p0 = v24;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_453_p0 = v71_fu_695_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_453_p0 = v21_fu_659_p1;
    end else begin
        grp_fu_453_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_453_p1 = v18_reg_1252;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_453_p1 = v12_reg_1233;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_453_p1 = v4;
    end else begin
        grp_fu_453_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_457_p0 = v79;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_457_p0 = v24;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_457_p0 = v76_fu_699_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_457_p0 = v27_fu_663_p1;
    end else begin
        grp_fu_457_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_457_p1 = v12_reg_1233;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_457_p1 = v18_reg_1252;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_457_p1 = v4;
    end else begin
        grp_fu_457_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_461_p0 = v79;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_461_p0 = v35;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_461_p0 = v82_fu_703_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_461_p0 = v32_fu_667_p1;
    end else begin
        grp_fu_461_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_461_p1 = v18_reg_1252;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_461_p1 = v12_reg_1233;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_461_p1 = v4;
    end else begin
        grp_fu_461_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_465_p0 = v90;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_465_p0 = v35;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_465_p0 = v87_fu_707_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_465_p0 = v38_fu_671_p1;
    end else begin
        grp_fu_465_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_465_p1 = v12_reg_1233;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_465_p1 = v18_reg_1252;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_465_p1 = v4;
    end else begin
        grp_fu_465_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_469_p0 = v90;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_469_p0 = v46;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_469_p0 = v93_fu_711_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_469_p0 = v43_fu_675_p1;
    end else begin
        grp_fu_469_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_469_p1 = v18_reg_1252;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_469_p1 = v12_reg_1233;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_469_p1 = v4;
    end else begin
        grp_fu_469_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_473_p0 = v101;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_473_p0 = v46;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_473_p0 = v98_fu_715_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_473_p0 = v49_fu_679_p1;
    end else begin
        grp_fu_473_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_473_p1 = v12_reg_1233;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_473_p1 = v18_reg_1252;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_473_p1 = v4;
    end else begin
        grp_fu_473_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_477_p0 = v101;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_477_p0 = v57;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_477_p0 = v104_fu_720_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_477_p0 = v54_fu_683_p1;
    end else begin
        grp_fu_477_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_477_p1 = v18_reg_1252;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_477_p1 = v12_reg_1233;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_477_p1 = v4;
    end else begin
        grp_fu_477_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address0_local = v229_0_addr_4_reg_1152_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_address0_local = v229_0_addr_2_reg_1091_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = zext_ln147_fu_637_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address0_local = zext_ln42_fu_589_p1;
    end else begin
        v229_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address1_local = v229_0_addr_3_reg_1142_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_address1_local = v229_0_addr_1_reg_1040_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address1_local = zext_ln140_fu_620_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address1_local = zext_ln34_fu_543_p1;
    end else begin
        v229_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce0_local = 1'b1;
    end else begin
        v229_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce1_local = 1'b1;
    end else begin
        v229_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_d0_local = bitcast_ln152_fu_923_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_d0_local = bitcast_ln48_fu_848_p1;
    end else begin
        v229_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_d1_local = bitcast_ln146_fu_918_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_d1_local = bitcast_ln41_fu_843_p1;
    end else begin
        v229_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_0_we0_local = 1'b1;
    end else begin
        v229_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_0_we1_local = 1'b1;
    end else begin
        v229_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_address0_local = v229_1_addr_2_reg_1101_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address0_local = zext_ln42_fu_589_p1;
    end else begin
        v229_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_address1_local = v229_1_addr_1_reg_1050_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address1_local = zext_ln34_fu_543_p1;
    end else begin
        v229_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_1_ce0_local = 1'b1;
    end else begin
        v229_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_1_ce1_local = 1'b1;
    end else begin
        v229_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_we0_local = 1'b1;
    end else begin
        v229_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_we1_local = 1'b1;
    end else begin
        v229_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address0_local = v229_2_addr_2_reg_1106_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address0_local = zext_ln42_fu_589_p1;
    end else begin
        v229_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_2_address1_local = v229_2_addr_1_reg_1055_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address1_local = zext_ln34_fu_543_p1;
    end else begin
        v229_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        v229_3_address0_local = v229_3_addr_2_reg_1111_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address0_local = zext_ln42_fu_589_p1;
    end else begin
        v229_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address1_local = v229_3_addr_1_reg_1060_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address1_local = zext_ln34_fu_543_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_we1_local = 1'b1;
    end else begin
        v229_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_4_address0_local = v229_4_addr_2_reg_1116_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_4_address0_local = zext_ln42_fu_589_p1;
    end else begin
        v229_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_4_address1_local = v229_4_addr_1_reg_1065_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_4_address1_local = zext_ln34_fu_543_p1;
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
        v229_5_address0_local = v229_5_addr_2_reg_1121_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_5_address0_local = zext_ln42_fu_589_p1;
    end else begin
        v229_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_5_address1_local = v229_5_addr_1_reg_1070_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_5_address1_local = zext_ln34_fu_543_p1;
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
        v229_6_address0_local = v229_6_addr_2_reg_1126_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_6_address0_local = zext_ln42_fu_589_p1;
    end else begin
        v229_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_6_address1_local = v229_6_addr_1_reg_1075_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_6_address1_local = zext_ln34_fu_543_p1;
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
        v229_7_address0_local = v229_7_addr_1_reg_1080_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_7_address0_local = zext_ln42_fu_589_p1;
    end else begin
        v229_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_7_address1_local = v229_7_addr_2_reg_1131_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_7_address1_local = zext_ln34_fu_543_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
assign add_ln140_fu_555_p2 = (mul_ln140 + zext_ln38_fu_527_p1);
assign add_ln147_fu_601_p2 = (mul_ln140 + zext_ln45_fu_579_p1);
assign add_ln33_fu_725_p2 = (v7_34_reg_1024 + 8'd2);
assign add_ln34_fu_537_p2 = (mul_ln34_cast_fu_509_p1 + zext_ln38_fu_527_p1);
assign add_ln38_fu_610_p2 = (mul_ln38_reg_1034 + zext_ln38_127_fu_607_p1);
assign add_ln42_fu_583_p2 = (mul_ln34_cast_fu_509_p1 + zext_ln45_fu_579_p1);
assign add_ln45_fu_627_p2 = (mul_ln38_reg_1034 + zext_ln45_127_fu_624_p1);
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
assign bitcast_ln100_fu_888_p1 = reg_505;
assign bitcast_ln107_fu_893_p1 = v70_reg_1541;
assign bitcast_ln113_fu_897_p1 = v75_reg_1546;
assign bitcast_ln120_fu_901_p1 = v81_reg_1551;
assign bitcast_ln126_fu_905_p1 = v86_reg_1556;
assign bitcast_ln133_fu_909_p1 = v92_reg_1561;
assign bitcast_ln139_fu_913_p1 = reg_489;
assign bitcast_ln146_fu_918_p1 = reg_493;
assign bitcast_ln152_fu_923_p1 = reg_497;
assign bitcast_ln41_fu_843_p1 = reg_489;
assign bitcast_ln48_fu_848_p1 = reg_493;
assign bitcast_ln55_fu_853_p1 = reg_497;
assign bitcast_ln61_fu_858_p1 = reg_501;
assign bitcast_ln68_fu_863_p1 = reg_505;
assign bitcast_ln74_fu_868_p1 = reg_489;
assign bitcast_ln81_fu_873_p1 = reg_493;
assign bitcast_ln87_fu_878_p1 = reg_497;
assign bitcast_ln94_fu_883_p1 = reg_501;
assign grp_fu_28120_p_ce = 1'b1;
assign grp_fu_28120_p_din0 = grp_fu_425_p0;
assign grp_fu_28120_p_din1 = grp_fu_425_p1;
assign grp_fu_28120_p_opcode = 2'd0;
assign grp_fu_28124_p_ce = 1'b1;
assign grp_fu_28124_p_din0 = grp_fu_429_p0;
assign grp_fu_28124_p_din1 = grp_fu_429_p1;
assign grp_fu_28124_p_opcode = 2'd0;
assign grp_fu_28128_p_ce = 1'b1;
assign grp_fu_28128_p_din0 = grp_fu_433_p0;
assign grp_fu_28128_p_din1 = grp_fu_433_p1;
assign grp_fu_28128_p_opcode = 2'd0;
assign grp_fu_28132_p_ce = 1'b1;
assign grp_fu_28132_p_din0 = grp_fu_437_p0;
assign grp_fu_28132_p_din1 = grp_fu_437_p1;
assign grp_fu_28132_p_opcode = 2'd0;
assign grp_fu_28136_p_ce = 1'b1;
assign grp_fu_28136_p_din0 = grp_fu_441_p0;
assign grp_fu_28136_p_din1 = grp_fu_441_p1;
assign grp_fu_28136_p_opcode = 2'd0;
assign grp_fu_28140_p_ce = 1'b1;
assign grp_fu_28140_p_din0 = grp_fu_445_p0;
assign grp_fu_28140_p_din1 = grp_fu_445_p1;
assign grp_fu_28144_p_ce = 1'b1;
assign grp_fu_28144_p_din0 = grp_fu_449_p0;
assign grp_fu_28144_p_din1 = grp_fu_449_p1;
assign grp_fu_28148_p_ce = 1'b1;
assign grp_fu_28148_p_din0 = grp_fu_453_p0;
assign grp_fu_28148_p_din1 = grp_fu_453_p1;
assign grp_fu_28152_p_ce = 1'b1;
assign grp_fu_28152_p_din0 = grp_fu_457_p0;
assign grp_fu_28152_p_din1 = grp_fu_457_p1;
assign grp_fu_28156_p_ce = 1'b1;
assign grp_fu_28156_p_din0 = grp_fu_461_p0;
assign grp_fu_28156_p_din1 = grp_fu_461_p1;
assign grp_fu_28160_p_ce = 1'b1;
assign grp_fu_28160_p_din0 = grp_fu_465_p0;
assign grp_fu_28160_p_din1 = grp_fu_465_p1;
assign grp_fu_28164_p_ce = 1'b1;
assign grp_fu_28164_p_din0 = grp_fu_469_p0;
assign grp_fu_28164_p_din1 = grp_fu_469_p1;
assign grp_fu_28168_p_ce = 1'b1;
assign grp_fu_28168_p_din0 = grp_fu_473_p0;
assign grp_fu_28168_p_din1 = grp_fu_473_p1;
assign grp_fu_28172_p_ce = 1'b1;
assign grp_fu_28172_p_din0 = grp_fu_477_p0;
assign grp_fu_28172_p_din1 = grp_fu_477_p1;
assign icmp_ln33_fu_521_p2 = ((ap_sig_allocacmp_v7_34 < 8'd220) ? 1'b1 : 1'b0);
assign mul_ln34_cast_fu_509_p1 = mul_ln34;
assign mul_ln38_fu_531_p1 = 16'd220;
assign or_ln_fu_571_p3 = {{tmp_s_fu_561_p4}, {1'd1}};
assign tmp_s_fu_561_p4 = {{ap_sig_allocacmp_v7_34[7:1]}};
assign v100_fu_831_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28168_p_dout0 : v98_reg_1349);
assign v104_fu_720_p1 = reg_485;
assign v106_fu_837_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28172_p_dout0 : v104_reg_1355);
assign v10_fu_735_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28140_p_dout0 : v8_reg_1227);
assign v12_fu_646_p1 = v228_q1;
assign v15_fu_650_p1 = reg_485;
assign v17_fu_741_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28144_p_dout0 : v15_reg_1246);
assign v18_fu_655_p1 = v228_q0;
assign v21_fu_659_p1 = v229_1_load_reg_1157;
assign v228_address0 = zext_ln45_128_fu_632_p1;
assign v228_address1 = zext_ln38_128_fu_615_p1;
assign v228_ce0 = v228_ce0_local;
assign v228_ce1 = v228_ce1_local;
assign v229_0_address0 = v229_0_address0_local;
assign v229_0_address1 = v229_0_address1_local;
assign v229_0_ce0 = v229_0_ce0_local;
assign v229_0_ce1 = v229_0_ce1_local;
assign v229_0_d0 = v229_0_d0_local;
assign v229_0_d1 = v229_0_d1_local;
assign v229_0_we0 = v229_0_we0_local;
assign v229_0_we1 = v229_0_we1_local;
assign v229_1_address0 = v229_1_address0_local;
assign v229_1_address1 = v229_1_address1_local;
assign v229_1_ce0 = v229_1_ce0_local;
assign v229_1_ce1 = v229_1_ce1_local;
assign v229_1_d0 = bitcast_ln61_fu_858_p1;
assign v229_1_d1 = bitcast_ln55_fu_853_p1;
assign v229_1_we0 = v229_1_we0_local;
assign v229_1_we1 = v229_1_we1_local;
assign v229_2_address0 = v229_2_address0_local;
assign v229_2_address1 = v229_2_address1_local;
assign v229_2_ce0 = v229_2_ce0_local;
assign v229_2_ce1 = v229_2_ce1_local;
assign v229_2_d0 = bitcast_ln74_fu_868_p1;
assign v229_2_d1 = bitcast_ln68_fu_863_p1;
assign v229_2_we0 = v229_2_we0_local;
assign v229_2_we1 = v229_2_we1_local;
assign v229_3_address0 = v229_3_address0_local;
assign v229_3_address1 = v229_3_address1_local;
assign v229_3_ce0 = v229_3_ce0_local;
assign v229_3_ce1 = v229_3_ce1_local;
assign v229_3_d0 = bitcast_ln87_fu_878_p1;
assign v229_3_d1 = bitcast_ln81_fu_873_p1;
assign v229_3_we0 = v229_3_we0_local;
assign v229_3_we1 = v229_3_we1_local;
assign v229_4_address0 = v229_4_address0_local;
assign v229_4_address1 = v229_4_address1_local;
assign v229_4_ce0 = v229_4_ce0_local;
assign v229_4_ce1 = v229_4_ce1_local;
assign v229_4_d0 = bitcast_ln100_fu_888_p1;
assign v229_4_d1 = bitcast_ln94_fu_883_p1;
assign v229_4_we0 = v229_4_we0_local;
assign v229_4_we1 = v229_4_we1_local;
assign v229_5_address0 = v229_5_address0_local;
assign v229_5_address1 = v229_5_address1_local;
assign v229_5_ce0 = v229_5_ce0_local;
assign v229_5_ce1 = v229_5_ce1_local;
assign v229_5_d0 = bitcast_ln113_fu_897_p1;
assign v229_5_d1 = bitcast_ln107_fu_893_p1;
assign v229_5_we0 = v229_5_we0_local;
assign v229_5_we1 = v229_5_we1_local;
assign v229_6_address0 = v229_6_address0_local;
assign v229_6_address1 = v229_6_address1_local;
assign v229_6_ce0 = v229_6_ce0_local;
assign v229_6_ce1 = v229_6_ce1_local;
assign v229_6_d0 = bitcast_ln126_fu_905_p1;
assign v229_6_d1 = bitcast_ln120_fu_901_p1;
assign v229_6_we0 = v229_6_we0_local;
assign v229_6_we1 = v229_6_we1_local;
assign v229_7_address0 = v229_7_address0_local;
assign v229_7_address1 = v229_7_address1_local;
assign v229_7_ce0 = v229_7_ce0_local;
assign v229_7_ce1 = v229_7_ce1_local;
assign v229_7_d0 = bitcast_ln133_fu_909_p1;
assign v229_7_d1 = bitcast_ln139_fu_913_p1;
assign v229_7_we0 = v229_7_we0_local;
assign v229_7_we1 = v229_7_we1_local;
assign v23_fu_747_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28148_p_dout0 : v21_reg_1265);
assign v27_fu_663_p1 = v229_1_load_1_reg_1162;
assign v29_fu_753_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28152_p_dout0 : v27_reg_1271);
assign v32_fu_667_p1 = v229_2_load_reg_1167;
assign v34_fu_759_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28156_p_dout0 : v32_reg_1277);
assign v38_fu_671_p1 = v229_2_load_1_reg_1172;
assign v40_fu_765_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28160_p_dout0 : v38_reg_1283);
assign v43_fu_675_p1 = v229_3_load_reg_1177;
assign v45_fu_771_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28164_p_dout0 : v43_reg_1289);
assign v49_fu_679_p1 = v229_3_load_1_reg_1182;
assign v51_fu_777_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28168_p_dout0 : v49_reg_1295);
assign v54_fu_683_p1 = v229_4_load_reg_1187;
assign v56_fu_783_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28172_p_dout0 : v54_reg_1301);
assign v60_fu_687_p1 = v229_4_load_1_reg_1192;
assign v62_fu_789_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28140_p_dout0 : v60_reg_1307);
assign v65_fu_691_p1 = v229_5_load_reg_1197;
assign v67_fu_795_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28144_p_dout0 : v65_reg_1313);
assign v71_fu_695_p1 = v229_5_load_1_reg_1202;
assign v73_fu_801_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28148_p_dout0 : v71_reg_1319);
assign v76_fu_699_p1 = v229_6_load_reg_1207;
assign v78_fu_807_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28152_p_dout0 : v76_reg_1325);
assign v82_fu_703_p1 = v229_6_load_1_reg_1212;
assign v84_fu_813_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28156_p_dout0 : v82_reg_1331);
assign v87_fu_707_p1 = v229_7_load_reg_1217;
assign v89_fu_819_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28160_p_dout0 : v87_reg_1337);
assign v8_fu_641_p1 = reg_481;
assign v93_fu_711_p1 = v229_7_load_1_reg_1222;
assign v95_fu_825_p3 = ((empty[0:0] == 1'b1) ? grp_fu_28164_p_dout0 : v93_reg_1343);
assign v98_fu_715_p1 = reg_481;
assign zext_ln140_fu_620_p1 = add_ln140_reg_1045;
assign zext_ln147_fu_637_p1 = add_ln147_reg_1096;
assign zext_ln34_fu_543_p1 = add_ln34_fu_537_p2;
assign zext_ln38_127_fu_607_p1 = v7_34_reg_1024;
assign zext_ln38_128_fu_615_p1 = add_ln38_fu_610_p2;
assign zext_ln38_fu_527_p1 = ap_sig_allocacmp_v7_34;
assign zext_ln42_fu_589_p1 = add_ln42_fu_583_p2;
assign zext_ln45_127_fu_624_p1 = or_ln_reg_1086;
assign zext_ln45_128_fu_632_p1 = add_ln45_fu_627_p2;
assign zext_ln45_fu_579_p1 = or_ln_fu_571_p3;
always @ (posedge ap_clk) begin
    or_ln_reg_1086[0] <= 1'b1;
end
endmodule 