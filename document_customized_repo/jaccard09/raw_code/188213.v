module kernel_2mm_kernel_2mm_node0_Pipeline_label_221 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v229_7_address0,v229_7_ce0,v229_7_we0,v229_7_d0,v229_7_q0,v229_7_address1,v229_7_ce1,v229_7_we1,v229_7_d1,v229_7_q1,v229_6_address0,v229_6_ce0,v229_6_we0,v229_6_d0,v229_6_q0,v229_6_address1,v229_6_ce1,v229_6_we1,v229_6_d1,v229_6_q1,v229_5_address0,v229_5_ce0,v229_5_we0,v229_5_d0,v229_5_q0,v229_5_address1,v229_5_ce1,v229_5_we1,v229_5_d1,v229_5_q1,v229_4_address0,v229_4_ce0,v229_4_we0,v229_4_d0,v229_4_q0,v229_4_address1,v229_4_ce1,v229_4_we1,v229_4_d1,v229_4_q1,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,mul_ln38_2,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,mul_ln34_2,mul_ln140_2,v11_13,v24_13,v35_13,v46_13,v57_13,v68_13,v79_13,v90_13,v101_13,grp_fu_28120_p_din0,grp_fu_28120_p_din1,grp_fu_28120_p_opcode,grp_fu_28120_p_dout0,grp_fu_28120_p_ce,grp_fu_28124_p_din0,grp_fu_28124_p_din1,grp_fu_28124_p_opcode,grp_fu_28124_p_dout0,grp_fu_28124_p_ce,grp_fu_28128_p_din0,grp_fu_28128_p_din1,grp_fu_28128_p_opcode,grp_fu_28128_p_dout0,grp_fu_28128_p_ce,grp_fu_28132_p_din0,grp_fu_28132_p_din1,grp_fu_28132_p_opcode,grp_fu_28132_p_dout0,grp_fu_28132_p_ce,grp_fu_28136_p_din0,grp_fu_28136_p_din1,grp_fu_28136_p_opcode,grp_fu_28136_p_dout0,grp_fu_28136_p_ce,grp_fu_28140_p_din0,grp_fu_28140_p_din1,grp_fu_28140_p_dout0,grp_fu_28140_p_ce,grp_fu_28144_p_din0,grp_fu_28144_p_din1,grp_fu_28144_p_dout0,grp_fu_28144_p_ce,grp_fu_28148_p_din0,grp_fu_28148_p_din1,grp_fu_28148_p_dout0,grp_fu_28148_p_ce,grp_fu_28152_p_din0,grp_fu_28152_p_din1,grp_fu_28152_p_dout0,grp_fu_28152_p_ce,grp_fu_28156_p_din0,grp_fu_28156_p_din1,grp_fu_28156_p_dout0,grp_fu_28156_p_ce); 
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
input  [15:0] mul_ln38_2;
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
input  [11:0] mul_ln34_2;
input  [12:0] mul_ln140_2;
input  [31:0] v11_13;
input  [31:0] v24_13;
input  [31:0] v35_13;
input  [31:0] v46_13;
input  [31:0] v57_13;
input  [31:0] v68_13;
input  [31:0] v79_13;
input  [31:0] v90_13;
input  [31:0] v101_13;
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
reg   [0:0] icmp_ln33_reg_864;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_445;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_449;
reg   [31:0] reg_453;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_457;
reg   [31:0] reg_461;
reg   [31:0] reg_465;
reg   [31:0] reg_469;
reg   [31:0] reg_473;
wire    ap_block_pp0_stage3_11001;
wire   [12:0] mul_ln34_2_cast_fu_477_p1;
reg   [12:0] mul_ln34_2_cast_reg_852;
reg   [7:0] v7_reg_858;
wire   [0:0] icmp_ln33_fu_489_p2;
wire   [7:0] or_ln42_s_fu_520_p3;
reg   [7:0] or_ln42_s_reg_873;
reg   [31:0] v228_load_26_reg_883;
reg   [31:0] v228_load_27_reg_888;
wire   [31:0] v12_fu_543_p1;
reg   [31:0] v12_reg_893;
wire   [31:0] v18_fu_549_p1;
reg   [31:0] v18_reg_902;
reg   [12:0] v229_0_addr_31_reg_911;
reg   [12:0] v229_0_addr_31_reg_911_pp0_iter2_reg;
reg   [12:0] v229_0_addr_31_reg_911_pp0_iter3_reg;
wire   [12:0] add_ln140_fu_584_p2;
reg   [12:0] add_ln140_reg_916;
reg   [12:0] v229_1_addr_31_reg_921;
reg   [12:0] v229_1_addr_31_reg_921_pp0_iter2_reg;
reg   [12:0] v229_1_addr_31_reg_921_pp0_iter3_reg;
reg   [12:0] v229_2_addr_31_reg_926;
reg   [12:0] v229_2_addr_31_reg_926_pp0_iter2_reg;
reg   [12:0] v229_2_addr_31_reg_926_pp0_iter3_reg;
reg   [12:0] v229_3_addr_31_reg_932;
reg   [12:0] v229_3_addr_31_reg_932_pp0_iter2_reg;
reg   [12:0] v229_3_addr_31_reg_932_pp0_iter3_reg;
reg   [12:0] v229_4_addr_31_reg_937;
reg   [12:0] v229_4_addr_31_reg_937_pp0_iter2_reg;
reg   [12:0] v229_4_addr_31_reg_937_pp0_iter3_reg;
reg   [12:0] v229_5_addr_29_reg_942;
reg   [12:0] v229_5_addr_29_reg_942_pp0_iter2_reg;
reg   [12:0] v229_5_addr_29_reg_942_pp0_iter3_reg;
reg   [12:0] v229_6_addr_29_reg_947;
reg   [12:0] v229_6_addr_29_reg_947_pp0_iter2_reg;
reg   [12:0] v229_6_addr_29_reg_947_pp0_iter3_reg;
reg   [12:0] v229_7_addr_29_reg_952;
reg   [12:0] v229_7_addr_29_reg_952_pp0_iter2_reg;
reg   [12:0] v229_7_addr_29_reg_952_pp0_iter3_reg;
reg   [12:0] v229_0_addr_32_reg_957;
reg   [12:0] v229_0_addr_32_reg_957_pp0_iter2_reg;
reg   [12:0] v229_0_addr_32_reg_957_pp0_iter3_reg;
wire   [12:0] add_ln147_fu_609_p2;
reg   [12:0] add_ln147_reg_962;
reg   [12:0] v229_1_addr_32_reg_967;
reg   [12:0] v229_1_addr_32_reg_967_pp0_iter2_reg;
reg   [12:0] v229_1_addr_32_reg_967_pp0_iter3_reg;
reg   [12:0] v229_2_addr_32_reg_972;
reg   [12:0] v229_2_addr_32_reg_972_pp0_iter2_reg;
reg   [12:0] v229_2_addr_32_reg_972_pp0_iter3_reg;
reg   [12:0] v229_3_addr_32_reg_978;
reg   [12:0] v229_3_addr_32_reg_978_pp0_iter2_reg;
reg   [12:0] v229_3_addr_32_reg_978_pp0_iter3_reg;
reg   [12:0] v229_4_addr_32_reg_983;
reg   [12:0] v229_4_addr_32_reg_983_pp0_iter2_reg;
reg   [12:0] v229_4_addr_32_reg_983_pp0_iter3_reg;
reg   [12:0] v229_5_addr_30_reg_988;
reg   [12:0] v229_5_addr_30_reg_988_pp0_iter2_reg;
reg   [12:0] v229_5_addr_30_reg_988_pp0_iter3_reg;
reg   [12:0] v229_6_addr_30_reg_993;
reg   [12:0] v229_6_addr_30_reg_993_pp0_iter2_reg;
reg   [12:0] v229_6_addr_30_reg_993_pp0_iter3_reg;
reg   [12:0] v229_7_addr_30_reg_998;
reg   [12:0] v229_7_addr_30_reg_998_pp0_iter2_reg;
reg   [12:0] v229_7_addr_30_reg_998_pp0_iter3_reg;
reg   [12:0] v229_7_addr_30_reg_998_pp0_iter4_reg;
reg   [12:0] v229_0_addr_33_reg_1003;
reg   [12:0] v229_0_addr_33_reg_1003_pp0_iter2_reg;
reg   [12:0] v229_0_addr_33_reg_1003_pp0_iter3_reg;
reg   [12:0] v229_0_addr_33_reg_1003_pp0_iter4_reg;
reg   [31:0] v13_reg_1008;
reg   [12:0] v229_0_addr_34_reg_1013;
reg   [12:0] v229_0_addr_34_reg_1013_pp0_iter2_reg;
reg   [12:0] v229_0_addr_34_reg_1013_pp0_iter3_reg;
reg   [12:0] v229_0_addr_34_reg_1013_pp0_iter4_reg;
reg   [31:0] v19_reg_1018;
reg   [31:0] v229_1_load_30_reg_1023;
reg   [31:0] v25_reg_1028;
reg   [31:0] v229_1_load_31_reg_1033;
reg   [31:0] v30_reg_1038;
reg   [31:0] v229_2_load_30_reg_1043;
reg   [31:0] v36_reg_1048;
reg   [31:0] v229_2_load_31_reg_1053;
reg   [31:0] v229_3_load_30_reg_1058;
reg   [31:0] v229_3_load_31_reg_1063;
reg   [31:0] v229_4_load_30_reg_1068;
reg   [31:0] v229_4_load_31_reg_1073;
reg   [31:0] v229_5_load_28_reg_1078;
reg   [31:0] v229_5_load_29_reg_1083;
reg   [31:0] v229_6_load_28_reg_1088;
reg   [31:0] v229_6_load_29_reg_1093;
reg   [31:0] v229_7_load_28_reg_1098;
reg   [31:0] v229_7_load_29_reg_1103;
wire   [31:0] v8_fu_622_p1;
wire   [31:0] v15_fu_627_p1;
wire   [31:0] v21_fu_632_p1;
wire   [31:0] v27_fu_636_p1;
wire   [31:0] v32_fu_640_p1;
reg   [31:0] v41_reg_1133;
reg   [31:0] v47_reg_1138;
reg   [31:0] v52_reg_1143;
reg   [31:0] v58_reg_1148;
reg   [31:0] v63_reg_1153;
wire   [31:0] v38_fu_644_p1;
wire   [31:0] v43_fu_648_p1;
wire   [31:0] v49_fu_652_p1;
wire   [31:0] v54_fu_656_p1;
wire   [31:0] v60_fu_660_p1;
reg   [31:0] v69_reg_1183;
reg   [31:0] v74_reg_1188;
reg   [31:0] v80_reg_1193;
reg   [31:0] v85_reg_1198;
reg   [31:0] v91_reg_1203;
wire   [31:0] v65_fu_664_p1;
wire   [31:0] v71_fu_668_p1;
wire   [31:0] v76_fu_672_p1;
wire   [31:0] v82_fu_676_p1;
wire   [31:0] v87_fu_680_p1;
reg   [31:0] v96_reg_1233;
reg   [31:0] v102_reg_1238;
reg   [31:0] v107_reg_1243;
wire   [31:0] v93_fu_684_p1;
wire   [31:0] v98_fu_688_p1;
wire   [31:0] v104_fu_693_p1;
reg   [31:0] v48_reg_1263;
reg   [31:0] v103_reg_1268;
reg   [31:0] v108_reg_1273;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln38_104_fu_505_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln45_104_fu_538_p1;
wire   [63:0] zext_ln34_fu_572_p1;
wire   [63:0] zext_ln42_fu_597_p1;
wire   [63:0] zext_ln140_fu_614_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln147_fu_618_p1;
reg   [7:0] v7_13_fu_88;
wire   [7:0] add_ln33_fu_554_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v7;
reg    v228_ce1_local;
reg    v228_ce0_local;
reg    v229_0_ce1_local;
reg   [12:0] v229_0_address1_local;
reg    v229_0_ce0_local;
reg   [12:0] v229_0_address0_local;
reg    v229_0_we1_local;
reg   [31:0] v229_0_d1_local;
wire   [31:0] bitcast_ln41_fu_713_p1;
wire    ap_block_pp0_stage2;
reg    v229_0_we0_local;
reg   [31:0] v229_0_d0_local;
wire   [31:0] bitcast_ln48_fu_718_p1;
wire   [31:0] bitcast_ln146_fu_777_p1;
wire    ap_block_pp0_stage3;
wire   [31:0] bitcast_ln152_fu_781_p1;
reg    v229_1_ce1_local;
reg   [12:0] v229_1_address1_local;
reg    v229_1_ce0_local;
reg   [12:0] v229_1_address0_local;
reg    v229_1_we1_local;
wire   [31:0] bitcast_ln55_fu_698_p1;
reg    v229_1_we0_local;
wire   [31:0] bitcast_ln61_fu_703_p1;
reg    v229_2_ce1_local;
reg   [12:0] v229_2_address1_local;
reg    v229_2_ce0_local;
reg   [12:0] v229_2_address0_local;
reg    v229_2_we0_local;
wire   [31:0] bitcast_ln68_fu_708_p1;
reg    v229_2_we1_local;
wire   [31:0] bitcast_ln74_fu_723_p1;
reg    v229_3_ce1_local;
reg   [12:0] v229_3_address1_local;
reg    v229_3_ce0_local;
reg   [12:0] v229_3_address0_local;
reg    v229_3_we1_local;
wire   [31:0] bitcast_ln81_fu_728_p1;
reg    v229_3_we0_local;
wire   [31:0] bitcast_ln87_fu_732_p1;
reg    v229_4_ce1_local;
reg   [12:0] v229_4_address1_local;
reg    v229_4_ce0_local;
reg   [12:0] v229_4_address0_local;
reg    v229_4_we1_local;
wire   [31:0] bitcast_ln94_fu_737_p1;
reg    v229_4_we0_local;
wire   [31:0] bitcast_ln100_fu_742_p1;
reg    v229_5_ce1_local;
reg   [12:0] v229_5_address1_local;
reg    v229_5_ce0_local;
reg   [12:0] v229_5_address0_local;
reg    v229_5_we1_local;
wire   [31:0] bitcast_ln107_fu_747_p1;
reg    v229_5_we0_local;
wire   [31:0] bitcast_ln113_fu_752_p1;
reg    v229_6_ce1_local;
reg   [12:0] v229_6_address1_local;
reg    v229_6_ce0_local;
reg   [12:0] v229_6_address0_local;
reg    v229_6_we1_local;
wire   [31:0] bitcast_ln120_fu_757_p1;
reg    v229_6_we0_local;
wire   [31:0] bitcast_ln126_fu_762_p1;
reg    v229_7_ce1_local;
reg   [12:0] v229_7_address1_local;
reg    v229_7_ce0_local;
reg   [12:0] v229_7_address0_local;
reg    v229_7_we1_local;
wire   [31:0] bitcast_ln133_fu_767_p1;
reg    v229_7_we0_local;
wire   [31:0] bitcast_ln139_fu_772_p1;
reg   [31:0] grp_fu_405_p0;
reg   [31:0] grp_fu_405_p1;
reg   [31:0] grp_fu_409_p0;
reg   [31:0] grp_fu_409_p1;
reg   [31:0] grp_fu_413_p0;
reg   [31:0] grp_fu_413_p1;
reg   [31:0] grp_fu_417_p0;
reg   [31:0] grp_fu_417_p1;
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
wire   [15:0] zext_ln38_103_fu_495_p1;
wire   [15:0] add_ln38_fu_499_p2;
wire   [6:0] tmp_s_fu_510_p4;
wire   [15:0] zext_ln45_103_fu_528_p1;
wire   [15:0] add_ln45_fu_532_p2;
wire   [12:0] zext_ln38_fu_564_p1;
wire   [12:0] add_ln34_fu_567_p2;
wire   [12:0] zext_ln45_fu_589_p1;
wire   [12:0] add_ln42_fu_592_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v7_13_fu_88 = 8'd0;
#0 ap_done_reg = 1'b0;
end
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_13_fu_88 <= 8'd0;
    end else if (((icmp_ln33_reg_864 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v7_13_fu_88 <= add_ln33_fu_554_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln140_reg_916 <= add_ln140_fu_584_p2;
        add_ln147_reg_962 <= add_ln147_fu_609_p2;
        icmp_ln33_reg_864 <= icmp_ln33_fu_489_p2;
        mul_ln34_2_cast_reg_852[11 : 0] <= mul_ln34_2_cast_fu_477_p1[11 : 0];
        or_ln42_s_reg_873[7 : 1] <= or_ln42_s_fu_520_p3[7 : 1];
        v229_0_addr_31_reg_911 <= zext_ln34_fu_572_p1;
        v229_0_addr_31_reg_911_pp0_iter2_reg <= v229_0_addr_31_reg_911;
        v229_0_addr_31_reg_911_pp0_iter3_reg <= v229_0_addr_31_reg_911_pp0_iter2_reg;
        v229_0_addr_32_reg_957 <= zext_ln42_fu_597_p1;
        v229_0_addr_32_reg_957_pp0_iter2_reg <= v229_0_addr_32_reg_957;
        v229_0_addr_32_reg_957_pp0_iter3_reg <= v229_0_addr_32_reg_957_pp0_iter2_reg;
        v229_1_addr_31_reg_921 <= zext_ln34_fu_572_p1;
        v229_1_addr_31_reg_921_pp0_iter2_reg <= v229_1_addr_31_reg_921;
        v229_1_addr_31_reg_921_pp0_iter3_reg <= v229_1_addr_31_reg_921_pp0_iter2_reg;
        v229_1_addr_32_reg_967 <= zext_ln42_fu_597_p1;
        v229_1_addr_32_reg_967_pp0_iter2_reg <= v229_1_addr_32_reg_967;
        v229_1_addr_32_reg_967_pp0_iter3_reg <= v229_1_addr_32_reg_967_pp0_iter2_reg;
        v229_2_addr_31_reg_926 <= zext_ln34_fu_572_p1;
        v229_2_addr_31_reg_926_pp0_iter2_reg <= v229_2_addr_31_reg_926;
        v229_2_addr_31_reg_926_pp0_iter3_reg <= v229_2_addr_31_reg_926_pp0_iter2_reg;
        v229_2_addr_32_reg_972 <= zext_ln42_fu_597_p1;
        v229_2_addr_32_reg_972_pp0_iter2_reg <= v229_2_addr_32_reg_972;
        v229_2_addr_32_reg_972_pp0_iter3_reg <= v229_2_addr_32_reg_972_pp0_iter2_reg;
        v229_3_addr_31_reg_932 <= zext_ln34_fu_572_p1;
        v229_3_addr_31_reg_932_pp0_iter2_reg <= v229_3_addr_31_reg_932;
        v229_3_addr_31_reg_932_pp0_iter3_reg <= v229_3_addr_31_reg_932_pp0_iter2_reg;
        v229_3_addr_32_reg_978 <= zext_ln42_fu_597_p1;
        v229_3_addr_32_reg_978_pp0_iter2_reg <= v229_3_addr_32_reg_978;
        v229_3_addr_32_reg_978_pp0_iter3_reg <= v229_3_addr_32_reg_978_pp0_iter2_reg;
        v229_4_addr_31_reg_937 <= zext_ln34_fu_572_p1;
        v229_4_addr_31_reg_937_pp0_iter2_reg <= v229_4_addr_31_reg_937;
        v229_4_addr_31_reg_937_pp0_iter3_reg <= v229_4_addr_31_reg_937_pp0_iter2_reg;
        v229_4_addr_32_reg_983 <= zext_ln42_fu_597_p1;
        v229_4_addr_32_reg_983_pp0_iter2_reg <= v229_4_addr_32_reg_983;
        v229_4_addr_32_reg_983_pp0_iter3_reg <= v229_4_addr_32_reg_983_pp0_iter2_reg;
        v229_5_addr_29_reg_942 <= zext_ln34_fu_572_p1;
        v229_5_addr_29_reg_942_pp0_iter2_reg <= v229_5_addr_29_reg_942;
        v229_5_addr_29_reg_942_pp0_iter3_reg <= v229_5_addr_29_reg_942_pp0_iter2_reg;
        v229_5_addr_30_reg_988 <= zext_ln42_fu_597_p1;
        v229_5_addr_30_reg_988_pp0_iter2_reg <= v229_5_addr_30_reg_988;
        v229_5_addr_30_reg_988_pp0_iter3_reg <= v229_5_addr_30_reg_988_pp0_iter2_reg;
        v229_6_addr_29_reg_947 <= zext_ln34_fu_572_p1;
        v229_6_addr_29_reg_947_pp0_iter2_reg <= v229_6_addr_29_reg_947;
        v229_6_addr_29_reg_947_pp0_iter3_reg <= v229_6_addr_29_reg_947_pp0_iter2_reg;
        v229_6_addr_30_reg_993 <= zext_ln42_fu_597_p1;
        v229_6_addr_30_reg_993_pp0_iter2_reg <= v229_6_addr_30_reg_993;
        v229_6_addr_30_reg_993_pp0_iter3_reg <= v229_6_addr_30_reg_993_pp0_iter2_reg;
        v229_7_addr_29_reg_952 <= zext_ln34_fu_572_p1;
        v229_7_addr_29_reg_952_pp0_iter2_reg <= v229_7_addr_29_reg_952;
        v229_7_addr_29_reg_952_pp0_iter3_reg <= v229_7_addr_29_reg_952_pp0_iter2_reg;
        v229_7_addr_30_reg_998 <= zext_ln42_fu_597_p1;
        v229_7_addr_30_reg_998_pp0_iter2_reg <= v229_7_addr_30_reg_998;
        v229_7_addr_30_reg_998_pp0_iter3_reg <= v229_7_addr_30_reg_998_pp0_iter2_reg;
        v229_7_addr_30_reg_998_pp0_iter4_reg <= v229_7_addr_30_reg_998_pp0_iter3_reg;
        v7_reg_858 <= ap_sig_allocacmp_v7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_445 <= v229_0_q1;
        reg_449 <= v229_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_453 <= grp_fu_28120_p_dout0;
        reg_457 <= grp_fu_28124_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_461 <= grp_fu_28128_p_dout0;
        reg_465 <= grp_fu_28132_p_dout0;
        reg_469 <= grp_fu_28136_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_473 <= grp_fu_28120_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v102_reg_1238 <= grp_fu_28144_p_dout0;
        v107_reg_1243 <= grp_fu_28148_p_dout0;
        v96_reg_1233 <= grp_fu_28140_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v103_reg_1268 <= grp_fu_28124_p_dout0;
        v108_reg_1273 <= grp_fu_28128_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v12_reg_893 <= v12_fu_543_p1;
        v18_reg_902 <= v18_fu_549_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v13_reg_1008 <= grp_fu_28140_p_dout0;
        v19_reg_1018 <= grp_fu_28144_p_dout0;
        v229_1_load_30_reg_1023 <= v229_1_q1;
        v229_1_load_31_reg_1033 <= v229_1_q0;
        v229_2_load_30_reg_1043 <= v229_2_q1;
        v229_2_load_31_reg_1053 <= v229_2_q0;
        v229_3_load_30_reg_1058 <= v229_3_q1;
        v229_3_load_31_reg_1063 <= v229_3_q0;
        v229_4_load_30_reg_1068 <= v229_4_q1;
        v229_4_load_31_reg_1073 <= v229_4_q0;
        v229_5_load_28_reg_1078 <= v229_5_q1;
        v229_5_load_29_reg_1083 <= v229_5_q0;
        v229_6_load_28_reg_1088 <= v229_6_q1;
        v229_6_load_29_reg_1093 <= v229_6_q0;
        v229_7_load_28_reg_1098 <= v229_7_q1;
        v229_7_load_29_reg_1103 <= v229_7_q0;
        v25_reg_1028 <= grp_fu_28148_p_dout0;
        v30_reg_1038 <= grp_fu_28152_p_dout0;
        v36_reg_1048 <= grp_fu_28156_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v228_load_26_reg_883 <= v228_q1;
        v228_load_27_reg_888 <= v228_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_addr_33_reg_1003 <= zext_ln140_fu_614_p1;
        v229_0_addr_33_reg_1003_pp0_iter2_reg <= v229_0_addr_33_reg_1003;
        v229_0_addr_33_reg_1003_pp0_iter3_reg <= v229_0_addr_33_reg_1003_pp0_iter2_reg;
        v229_0_addr_33_reg_1003_pp0_iter4_reg <= v229_0_addr_33_reg_1003_pp0_iter3_reg;
        v229_0_addr_34_reg_1013 <= zext_ln147_fu_618_p1;
        v229_0_addr_34_reg_1013_pp0_iter2_reg <= v229_0_addr_34_reg_1013;
        v229_0_addr_34_reg_1013_pp0_iter3_reg <= v229_0_addr_34_reg_1013_pp0_iter2_reg;
        v229_0_addr_34_reg_1013_pp0_iter4_reg <= v229_0_addr_34_reg_1013_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v41_reg_1133 <= grp_fu_28140_p_dout0;
        v47_reg_1138 <= grp_fu_28144_p_dout0;
        v52_reg_1143 <= grp_fu_28148_p_dout0;
        v58_reg_1148 <= grp_fu_28152_p_dout0;
        v63_reg_1153 <= grp_fu_28156_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v48_reg_1263 <= grp_fu_28124_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v69_reg_1183 <= grp_fu_28140_p_dout0;
        v74_reg_1188 <= grp_fu_28144_p_dout0;
        v80_reg_1193 <= grp_fu_28148_p_dout0;
        v85_reg_1198 <= grp_fu_28152_p_dout0;
        v91_reg_1203 <= grp_fu_28156_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln33_reg_864 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v7 = v7_13_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_405_p0 = v93_fu_684_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_405_p0 = v65_fu_664_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_405_p0 = v38_fu_644_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_405_p0 = v8_fu_622_p1;
    end else begin
        grp_fu_405_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_405_p1 = v96_reg_1233;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_405_p1 = v69_reg_1183;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_405_p1 = v41_reg_1133;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_405_p1 = v13_reg_1008;
    end else begin
        grp_fu_405_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_409_p0 = v98_fu_688_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_409_p0 = v71_fu_668_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_409_p0 = v43_fu_648_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_409_p0 = v15_fu_627_p1;
    end else begin
        grp_fu_409_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_409_p1 = v102_reg_1238;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_409_p1 = v74_reg_1188;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_409_p1 = v47_reg_1138;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_409_p1 = v19_reg_1018;
    end else begin
        grp_fu_409_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_413_p0 = v104_fu_693_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_413_p0 = v76_fu_672_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_413_p0 = v49_fu_652_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_413_p0 = v21_fu_632_p1;
    end else begin
        grp_fu_413_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_413_p1 = v107_reg_1243;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_413_p1 = v80_reg_1193;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_413_p1 = v52_reg_1143;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_413_p1 = v25_reg_1028;
    end else begin
        grp_fu_413_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_417_p0 = v82_fu_676_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_417_p0 = v54_fu_656_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_417_p0 = v27_fu_636_p1;
    end else begin
        grp_fu_417_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_417_p1 = v85_reg_1198;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_417_p1 = v58_reg_1148;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_417_p1 = v30_reg_1038;
    end else begin
        grp_fu_417_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_421_p0 = v87_fu_680_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_421_p0 = v60_fu_660_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_421_p0 = v32_fu_640_p1;
    end else begin
        grp_fu_421_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_421_p1 = v91_reg_1203;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_421_p1 = v63_reg_1153;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_421_p1 = v36_reg_1048;
    end else begin
        grp_fu_421_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_425_p0 = v90_13;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_425_p0 = v68_13;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_425_p0 = v35_13;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_425_p0 = v11_13;
    end else begin
        grp_fu_425_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_425_p1 = v12_reg_893;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_425_p1 = v18_reg_902;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_425_p1 = v12_fu_543_p1;
    end else begin
        grp_fu_425_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_429_p0 = v101_13;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_429_p0 = v68_13;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_429_p0 = v46_13;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_429_p0 = v11_13;
    end else begin
        grp_fu_429_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_429_p1 = v18_reg_902;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_429_p1 = v12_reg_893;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_429_p1 = v18_fu_549_p1;
    end else begin
        grp_fu_429_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_433_p0 = v101_13;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_433_p0 = v79_13;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_433_p0 = v46_13;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_433_p0 = v24_13;
    end else begin
        grp_fu_433_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_433_p1 = v12_reg_893;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_433_p1 = v18_reg_902;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_433_p1 = v12_fu_543_p1;
    end else begin
        grp_fu_433_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_437_p0 = v79_13;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_437_p0 = v57_13;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_437_p0 = v24_13;
    end else begin
        grp_fu_437_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_437_p1 = v18_reg_902;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_437_p1 = v12_reg_893;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_437_p1 = v18_fu_549_p1;
    end else begin
        grp_fu_437_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_441_p0 = v90_13;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_441_p0 = v57_13;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_441_p0 = v35_13;
    end else begin
        grp_fu_441_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_441_p1 = v12_reg_893;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_441_p1 = v18_reg_902;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_441_p1 = v12_fu_543_p1;
    end else begin
        grp_fu_441_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_ce0_local = 1'b1;
    end else begin
        v228_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_ce1_local = 1'b1;
    end else begin
        v228_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_address0_local = v229_0_addr_34_reg_1013_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address0_local = v229_0_addr_32_reg_957_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = zext_ln147_fu_618_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address0_local = zext_ln42_fu_597_p1;
    end else begin
        v229_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_address1_local = v229_0_addr_33_reg_1003_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address1_local = v229_0_addr_31_reg_911_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address1_local = zext_ln140_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address1_local = zext_ln34_fu_572_p1;
    end else begin
        v229_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce0_local = 1'b1;
    end else begin
        v229_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce1_local = 1'b1;
    end else begin
        v229_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_d0_local = bitcast_ln152_fu_781_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_d0_local = bitcast_ln48_fu_718_p1;
    end else begin
        v229_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_d1_local = bitcast_ln146_fu_777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_d1_local = bitcast_ln41_fu_713_p1;
    end else begin
        v229_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_0_we0_local = 1'b1;
    end else begin
        v229_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_0_we1_local = 1'b1;
    end else begin
        v229_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address0_local = v229_1_addr_32_reg_967_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address0_local = zext_ln42_fu_597_p1;
    end else begin
        v229_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address1_local = v229_1_addr_31_reg_921_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address1_local = zext_ln34_fu_572_p1;
    end else begin
        v229_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce0_local = 1'b1;
    end else begin
        v229_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce1_local = 1'b1;
    end else begin
        v229_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_we0_local = 1'b1;
    end else begin
        v229_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_we1_local = 1'b1;
    end else begin
        v229_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address0_local = v229_2_addr_31_reg_926_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address0_local = zext_ln42_fu_597_p1;
    end else begin
        v229_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address1_local = v229_2_addr_32_reg_972_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address1_local = zext_ln34_fu_572_p1;
    end else begin
        v229_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_2_ce0_local = 1'b1;
    end else begin
        v229_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_2_ce1_local = 1'b1;
    end else begin
        v229_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_we0_local = 1'b1;
    end else begin
        v229_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_we1_local = 1'b1;
    end else begin
        v229_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_address0_local = v229_3_addr_32_reg_978_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address0_local = zext_ln42_fu_597_p1;
    end else begin
        v229_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_address1_local = v229_3_addr_31_reg_932_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address1_local = zext_ln34_fu_572_p1;
    end else begin
        v229_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_3_ce0_local = 1'b1;
    end else begin
        v229_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_3_ce1_local = 1'b1;
    end else begin
        v229_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_we0_local = 1'b1;
    end else begin
        v229_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_we1_local = 1'b1;
    end else begin
        v229_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_4_address0_local = v229_4_addr_32_reg_983_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_4_address0_local = zext_ln42_fu_597_p1;
    end else begin
        v229_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_4_address1_local = v229_4_addr_31_reg_937_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_4_address1_local = zext_ln34_fu_572_p1;
    end else begin
        v229_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_4_ce0_local = 1'b1;
    end else begin
        v229_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_4_ce1_local = 1'b1;
    end else begin
        v229_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_4_we0_local = 1'b1;
    end else begin
        v229_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_4_we1_local = 1'b1;
    end else begin
        v229_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_5_address0_local = v229_5_addr_30_reg_988_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_5_address0_local = zext_ln42_fu_597_p1;
    end else begin
        v229_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_5_address1_local = v229_5_addr_29_reg_942_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_5_address1_local = zext_ln34_fu_572_p1;
    end else begin
        v229_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v229_5_ce0_local = 1'b1;
    end else begin
        v229_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v229_5_ce1_local = 1'b1;
    end else begin
        v229_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_5_we0_local = 1'b1;
    end else begin
        v229_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_5_we1_local = 1'b1;
    end else begin
        v229_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_6_address0_local = v229_6_addr_30_reg_993_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_6_address0_local = zext_ln42_fu_597_p1;
    end else begin
        v229_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_6_address1_local = v229_6_addr_29_reg_947_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_6_address1_local = zext_ln34_fu_572_p1;
    end else begin
        v229_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v229_6_ce0_local = 1'b1;
    end else begin
        v229_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v229_6_ce1_local = 1'b1;
    end else begin
        v229_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_6_we0_local = 1'b1;
    end else begin
        v229_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_6_we1_local = 1'b1;
    end else begin
        v229_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_7_address0_local = v229_7_addr_30_reg_998_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_7_address0_local = zext_ln42_fu_597_p1;
    end else begin
        v229_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_7_address1_local = v229_7_addr_29_reg_952_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_7_address1_local = zext_ln34_fu_572_p1;
    end else begin
        v229_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_7_ce0_local = 1'b1;
    end else begin
        v229_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
assign add_ln140_fu_584_p2 = (mul_ln140_2 + zext_ln38_fu_564_p1);
assign add_ln147_fu_609_p2 = (mul_ln140_2 + zext_ln45_fu_589_p1);
assign add_ln33_fu_554_p2 = (v7_reg_858 + 8'd2);
assign add_ln34_fu_567_p2 = (mul_ln34_2_cast_reg_852 + zext_ln38_fu_564_p1);
assign add_ln38_fu_499_p2 = (mul_ln38_2 + zext_ln38_103_fu_495_p1);
assign add_ln42_fu_592_p2 = (mul_ln34_2_cast_reg_852 + zext_ln45_fu_589_p1);
assign add_ln45_fu_532_p2 = (mul_ln38_2 + zext_ln45_103_fu_528_p1);
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
assign bitcast_ln100_fu_742_p1 = reg_469;
assign bitcast_ln107_fu_747_p1 = reg_453;
assign bitcast_ln113_fu_752_p1 = reg_457;
assign bitcast_ln120_fu_757_p1 = reg_461;
assign bitcast_ln126_fu_762_p1 = reg_465;
assign bitcast_ln133_fu_767_p1 = reg_469;
assign bitcast_ln139_fu_772_p1 = reg_473;
assign bitcast_ln146_fu_777_p1 = v103_reg_1268;
assign bitcast_ln152_fu_781_p1 = v108_reg_1273;
assign bitcast_ln41_fu_713_p1 = reg_453;
assign bitcast_ln48_fu_718_p1 = reg_457;
assign bitcast_ln55_fu_698_p1 = reg_461;
assign bitcast_ln61_fu_703_p1 = reg_465;
assign bitcast_ln68_fu_708_p1 = reg_469;
assign bitcast_ln74_fu_723_p1 = reg_473;
assign bitcast_ln81_fu_728_p1 = v48_reg_1263;
assign bitcast_ln87_fu_732_p1 = reg_461;
assign bitcast_ln94_fu_737_p1 = reg_465;
assign grp_fu_28120_p_ce = 1'b1;
assign grp_fu_28120_p_din0 = grp_fu_405_p0;
assign grp_fu_28120_p_din1 = grp_fu_405_p1;
assign grp_fu_28120_p_opcode = 2'd0;
assign grp_fu_28124_p_ce = 1'b1;
assign grp_fu_28124_p_din0 = grp_fu_409_p0;
assign grp_fu_28124_p_din1 = grp_fu_409_p1;
assign grp_fu_28124_p_opcode = 2'd0;
assign grp_fu_28128_p_ce = 1'b1;
assign grp_fu_28128_p_din0 = grp_fu_413_p0;
assign grp_fu_28128_p_din1 = grp_fu_413_p1;
assign grp_fu_28128_p_opcode = 2'd0;
assign grp_fu_28132_p_ce = 1'b1;
assign grp_fu_28132_p_din0 = grp_fu_417_p0;
assign grp_fu_28132_p_din1 = grp_fu_417_p1;
assign grp_fu_28132_p_opcode = 2'd0;
assign grp_fu_28136_p_ce = 1'b1;
assign grp_fu_28136_p_din0 = grp_fu_421_p0;
assign grp_fu_28136_p_din1 = grp_fu_421_p1;
assign grp_fu_28136_p_opcode = 2'd0;
assign grp_fu_28140_p_ce = 1'b1;
assign grp_fu_28140_p_din0 = grp_fu_425_p0;
assign grp_fu_28140_p_din1 = grp_fu_425_p1;
assign grp_fu_28144_p_ce = 1'b1;
assign grp_fu_28144_p_din0 = grp_fu_429_p0;
assign grp_fu_28144_p_din1 = grp_fu_429_p1;
assign grp_fu_28148_p_ce = 1'b1;
assign grp_fu_28148_p_din0 = grp_fu_433_p0;
assign grp_fu_28148_p_din1 = grp_fu_433_p1;
assign grp_fu_28152_p_ce = 1'b1;
assign grp_fu_28152_p_din0 = grp_fu_437_p0;
assign grp_fu_28152_p_din1 = grp_fu_437_p1;
assign grp_fu_28156_p_ce = 1'b1;
assign grp_fu_28156_p_din0 = grp_fu_441_p0;
assign grp_fu_28156_p_din1 = grp_fu_441_p1;
assign icmp_ln33_fu_489_p2 = ((ap_sig_allocacmp_v7 < 8'd220) ? 1'b1 : 1'b0);
assign mul_ln34_2_cast_fu_477_p1 = mul_ln34_2;
assign or_ln42_s_fu_520_p3 = {{tmp_s_fu_510_p4}, {1'd1}};
assign tmp_s_fu_510_p4 = {{ap_sig_allocacmp_v7[7:1]}};
assign v104_fu_693_p1 = reg_449;
assign v12_fu_543_p1 = v228_load_26_reg_883;
assign v15_fu_627_p1 = reg_449;
assign v18_fu_549_p1 = v228_load_27_reg_888;
assign v21_fu_632_p1 = v229_1_load_30_reg_1023;
assign v228_address0 = zext_ln45_104_fu_538_p1;
assign v228_address1 = zext_ln38_104_fu_505_p1;
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
assign v229_1_d0 = bitcast_ln61_fu_703_p1;
assign v229_1_d1 = bitcast_ln55_fu_698_p1;
assign v229_1_we0 = v229_1_we0_local;
assign v229_1_we1 = v229_1_we1_local;
assign v229_2_address0 = v229_2_address0_local;
assign v229_2_address1 = v229_2_address1_local;
assign v229_2_ce0 = v229_2_ce0_local;
assign v229_2_ce1 = v229_2_ce1_local;
assign v229_2_d0 = bitcast_ln68_fu_708_p1;
assign v229_2_d1 = bitcast_ln74_fu_723_p1;
assign v229_2_we0 = v229_2_we0_local;
assign v229_2_we1 = v229_2_we1_local;
assign v229_3_address0 = v229_3_address0_local;
assign v229_3_address1 = v229_3_address1_local;
assign v229_3_ce0 = v229_3_ce0_local;
assign v229_3_ce1 = v229_3_ce1_local;
assign v229_3_d0 = bitcast_ln87_fu_732_p1;
assign v229_3_d1 = bitcast_ln81_fu_728_p1;
assign v229_3_we0 = v229_3_we0_local;
assign v229_3_we1 = v229_3_we1_local;
assign v229_4_address0 = v229_4_address0_local;
assign v229_4_address1 = v229_4_address1_local;
assign v229_4_ce0 = v229_4_ce0_local;
assign v229_4_ce1 = v229_4_ce1_local;
assign v229_4_d0 = bitcast_ln100_fu_742_p1;
assign v229_4_d1 = bitcast_ln94_fu_737_p1;
assign v229_4_we0 = v229_4_we0_local;
assign v229_4_we1 = v229_4_we1_local;
assign v229_5_address0 = v229_5_address0_local;
assign v229_5_address1 = v229_5_address1_local;
assign v229_5_ce0 = v229_5_ce0_local;
assign v229_5_ce1 = v229_5_ce1_local;
assign v229_5_d0 = bitcast_ln113_fu_752_p1;
assign v229_5_d1 = bitcast_ln107_fu_747_p1;
assign v229_5_we0 = v229_5_we0_local;
assign v229_5_we1 = v229_5_we1_local;
assign v229_6_address0 = v229_6_address0_local;
assign v229_6_address1 = v229_6_address1_local;
assign v229_6_ce0 = v229_6_ce0_local;
assign v229_6_ce1 = v229_6_ce1_local;
assign v229_6_d0 = bitcast_ln126_fu_762_p1;
assign v229_6_d1 = bitcast_ln120_fu_757_p1;
assign v229_6_we0 = v229_6_we0_local;
assign v229_6_we1 = v229_6_we1_local;
assign v229_7_address0 = v229_7_address0_local;
assign v229_7_address1 = v229_7_address1_local;
assign v229_7_ce0 = v229_7_ce0_local;
assign v229_7_ce1 = v229_7_ce1_local;
assign v229_7_d0 = bitcast_ln139_fu_772_p1;
assign v229_7_d1 = bitcast_ln133_fu_767_p1;
assign v229_7_we0 = v229_7_we0_local;
assign v229_7_we1 = v229_7_we1_local;
assign v27_fu_636_p1 = v229_1_load_31_reg_1033;
assign v32_fu_640_p1 = v229_2_load_30_reg_1043;
assign v38_fu_644_p1 = v229_2_load_31_reg_1053;
assign v43_fu_648_p1 = v229_3_load_30_reg_1058;
assign v49_fu_652_p1 = v229_3_load_31_reg_1063;
assign v54_fu_656_p1 = v229_4_load_30_reg_1068;
assign v60_fu_660_p1 = v229_4_load_31_reg_1073;
assign v65_fu_664_p1 = v229_5_load_28_reg_1078;
assign v71_fu_668_p1 = v229_5_load_29_reg_1083;
assign v76_fu_672_p1 = v229_6_load_28_reg_1088;
assign v82_fu_676_p1 = v229_6_load_29_reg_1093;
assign v87_fu_680_p1 = v229_7_load_28_reg_1098;
assign v8_fu_622_p1 = reg_445;
assign v93_fu_684_p1 = v229_7_load_29_reg_1103;
assign v98_fu_688_p1 = reg_445;
assign zext_ln140_fu_614_p1 = add_ln140_reg_916;
assign zext_ln147_fu_618_p1 = add_ln147_reg_962;
assign zext_ln34_fu_572_p1 = add_ln34_fu_567_p2;
assign zext_ln38_103_fu_495_p1 = ap_sig_allocacmp_v7;
assign zext_ln38_104_fu_505_p1 = add_ln38_fu_499_p2;
assign zext_ln38_fu_564_p1 = v7_reg_858;
assign zext_ln42_fu_597_p1 = add_ln42_fu_592_p2;
assign zext_ln45_103_fu_528_p1 = or_ln42_s_fu_520_p3;
assign zext_ln45_104_fu_538_p1 = add_ln45_fu_532_p2;
assign zext_ln45_fu_589_p1 = or_ln42_s_reg_873;
always @ (posedge ap_clk) begin
    mul_ln34_2_cast_reg_852[12] <= 1'b0;
    or_ln42_s_reg_873[0] <= 1'b1;
end
endmodule 