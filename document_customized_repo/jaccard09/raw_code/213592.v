module SgdLR_sw_SgdLR_sw_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp_1,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,v22,v3_address0,v3_ce0,v3_we0,v3_d0,v3_address1,v3_ce1,v3_we1,v3_d1,v5,grp_fu_535_p_din0,grp_fu_535_p_din1,grp_fu_535_p_dout0,grp_fu_535_p_ce,grp_fu_539_p_din0,grp_fu_539_p_din1,grp_fu_539_p_dout0,grp_fu_539_p_ce); 
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
input  [22:0] tmp_1;
output  [20:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [20:0] v0_0_address1;
output   v0_0_ce1;
input  [31:0] v0_0_q1;
output  [20:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [20:0] v0_1_address1;
output   v0_1_ce1;
input  [31:0] v0_1_q1;
output  [20:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [20:0] v0_2_address1;
output   v0_2_ce1;
input  [31:0] v0_2_q1;
output  [20:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [20:0] v0_3_address1;
output   v0_3_ce1;
input  [31:0] v0_3_q1;
input  [31:0] v22;
output  [9:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
output  [9:0] v3_address1;
output   v3_ce1;
output   v3_we1;
output  [31:0] v3_d1;
input  [12:0] v5;
output  [31:0] grp_fu_535_p_din0;
output  [31:0] grp_fu_535_p_din1;
input  [31:0] grp_fu_535_p_dout0;
output   grp_fu_535_p_ce;
output  [31:0] grp_fu_539_p_din0;
output  [31:0] grp_fu_539_p_din1;
input  [31:0] grp_fu_539_p_dout0;
output   grp_fu_539_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_1284;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [1:0] reg_537;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] reg_541;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [1:0] reg_545;
reg   [31:0] reg_549;
reg   [31:0] reg_554;
reg   [10:0] v19_2_reg_1275;
reg   [10:0] v19_2_reg_1275_pp0_iter1_reg;
reg   [10:0] v19_2_reg_1275_pp0_iter2_reg;
reg   [10:0] v19_2_reg_1275_pp0_iter3_reg;
reg   [10:0] v19_2_reg_1275_pp0_iter4_reg;
reg   [10:0] v19_2_reg_1275_pp0_iter5_reg;
reg   [10:0] v19_2_reg_1275_pp0_iter6_reg;
reg   [10:0] v19_2_reg_1275_pp0_iter7_reg;
reg   [10:0] v19_2_reg_1275_pp0_iter8_reg;
wire   [8:0] tmp_7_fu_575_p4;
reg   [8:0] tmp_7_reg_1288;
reg   [8:0] tmp_7_reg_1288_pp0_iter1_reg;
reg   [8:0] tmp_7_reg_1288_pp0_iter2_reg;
reg   [8:0] tmp_7_reg_1288_pp0_iter3_reg;
reg   [8:0] tmp_7_reg_1288_pp0_iter4_reg;
reg   [8:0] tmp_7_reg_1288_pp0_iter5_reg;
reg   [8:0] tmp_7_reg_1288_pp0_iter6_reg;
reg   [8:0] tmp_7_reg_1288_pp0_iter7_reg;
wire   [22:0] add_ln51_1_fu_585_p4;
reg   [22:0] add_ln51_1_reg_1293;
reg   [22:0] add_ln51_1_reg_1293_pp0_iter1_reg;
reg   [22:0] add_ln51_1_reg_1293_pp0_iter2_reg;
reg   [22:0] add_ln51_1_reg_1293_pp0_iter3_reg;
reg   [22:0] add_ln51_1_reg_1293_pp0_iter4_reg;
reg   [22:0] add_ln51_1_reg_1293_pp0_iter5_reg;
reg   [22:0] add_ln51_1_reg_1293_pp0_iter6_reg;
wire   [7:0] tmp_8_fu_601_p4;
reg   [7:0] tmp_8_reg_1299;
reg   [7:0] tmp_8_reg_1299_pp0_iter1_reg;
reg   [7:0] tmp_8_reg_1299_pp0_iter2_reg;
reg   [7:0] tmp_8_reg_1299_pp0_iter3_reg;
reg   [7:0] tmp_8_reg_1299_pp0_iter4_reg;
reg   [7:0] tmp_8_reg_1299_pp0_iter5_reg;
reg   [7:0] tmp_8_reg_1299_pp0_iter6_reg;
reg   [7:0] tmp_8_reg_1299_pp0_iter7_reg;
reg   [7:0] tmp_8_reg_1299_pp0_iter8_reg;
wire   [22:0] add_ln51_2_fu_611_p4;
reg   [22:0] add_ln51_2_reg_1306;
reg   [22:0] add_ln51_2_reg_1306_pp0_iter1_reg;
reg   [22:0] add_ln51_2_reg_1306_pp0_iter2_reg;
reg   [22:0] add_ln51_2_reg_1306_pp0_iter3_reg;
reg   [22:0] add_ln51_2_reg_1306_pp0_iter4_reg;
reg   [22:0] add_ln51_2_reg_1306_pp0_iter5_reg;
reg   [22:0] add_ln51_2_reg_1306_pp0_iter6_reg;
wire   [22:0] add_ln51_3_fu_627_p4;
reg   [22:0] add_ln51_3_reg_1312;
reg   [22:0] add_ln51_3_reg_1312_pp0_iter1_reg;
reg   [22:0] add_ln51_3_reg_1312_pp0_iter2_reg;
reg   [22:0] add_ln51_3_reg_1312_pp0_iter3_reg;
reg   [22:0] add_ln51_3_reg_1312_pp0_iter4_reg;
reg   [22:0] add_ln51_3_reg_1312_pp0_iter5_reg;
reg   [22:0] add_ln51_3_reg_1312_pp0_iter6_reg;
wire   [6:0] tmp_s_fu_641_p4;
reg   [6:0] tmp_s_reg_1318;
reg   [6:0] tmp_s_reg_1318_pp0_iter1_reg;
reg   [6:0] tmp_s_reg_1318_pp0_iter2_reg;
reg   [6:0] tmp_s_reg_1318_pp0_iter3_reg;
reg   [6:0] tmp_s_reg_1318_pp0_iter4_reg;
reg   [6:0] tmp_s_reg_1318_pp0_iter5_reg;
reg   [6:0] tmp_s_reg_1318_pp0_iter6_reg;
reg   [6:0] tmp_s_reg_1318_pp0_iter7_reg;
reg   [6:0] tmp_s_reg_1318_pp0_iter8_reg;
wire   [22:0] add_ln51_4_fu_650_p4;
reg   [22:0] add_ln51_4_reg_1329;
reg   [22:0] add_ln51_4_reg_1329_pp0_iter1_reg;
reg   [22:0] add_ln51_4_reg_1329_pp0_iter2_reg;
reg   [22:0] add_ln51_4_reg_1329_pp0_iter3_reg;
reg   [22:0] add_ln51_4_reg_1329_pp0_iter4_reg;
reg   [22:0] add_ln51_4_reg_1329_pp0_iter5_reg;
reg   [22:0] add_ln51_4_reg_1329_pp0_iter6_reg;
wire   [0:0] tmp_4_fu_665_p3;
reg   [0:0] tmp_4_reg_1335;
reg   [0:0] tmp_4_reg_1335_pp0_iter1_reg;
reg   [0:0] tmp_4_reg_1335_pp0_iter2_reg;
reg   [0:0] tmp_4_reg_1335_pp0_iter3_reg;
reg   [0:0] tmp_4_reg_1335_pp0_iter4_reg;
reg   [0:0] tmp_4_reg_1335_pp0_iter5_reg;
reg   [0:0] tmp_4_reg_1335_pp0_iter6_reg;
reg   [0:0] tmp_4_reg_1335_pp0_iter7_reg;
wire   [22:0] add_ln51_5_fu_672_p6;
reg   [22:0] add_ln51_5_reg_1340;
reg   [22:0] add_ln51_5_reg_1340_pp0_iter1_reg;
reg   [22:0] add_ln51_5_reg_1340_pp0_iter2_reg;
reg   [22:0] add_ln51_5_reg_1340_pp0_iter3_reg;
reg   [22:0] add_ln51_5_reg_1340_pp0_iter4_reg;
reg   [22:0] add_ln51_5_reg_1340_pp0_iter5_reg;
reg   [22:0] add_ln51_5_reg_1340_pp0_iter6_reg;
wire   [22:0] add_ln51_6_fu_690_p4;
reg   [22:0] add_ln51_6_reg_1346;
reg   [22:0] add_ln51_6_reg_1346_pp0_iter1_reg;
reg   [22:0] add_ln51_6_reg_1346_pp0_iter2_reg;
reg   [22:0] add_ln51_6_reg_1346_pp0_iter3_reg;
reg   [22:0] add_ln51_6_reg_1346_pp0_iter4_reg;
reg   [22:0] add_ln51_6_reg_1346_pp0_iter5_reg;
reg   [22:0] add_ln51_6_reg_1346_pp0_iter6_reg;
wire   [22:0] add_ln51_fu_707_p2;
reg   [22:0] add_ln51_reg_1352;
reg   [22:0] add_ln51_reg_1352_pp0_iter1_reg;
reg   [22:0] add_ln51_reg_1352_pp0_iter2_reg;
reg   [22:0] add_ln51_reg_1352_pp0_iter3_reg;
reg   [22:0] add_ln51_reg_1352_pp0_iter4_reg;
reg   [22:0] add_ln51_reg_1352_pp0_iter5_reg;
reg   [22:0] add_ln51_reg_1352_pp0_iter6_reg;
wire   [22:0] add_ln51_7_fu_718_p4;
reg   [22:0] add_ln51_7_reg_1358;
reg   [22:0] add_ln51_7_reg_1358_pp0_iter1_reg;
reg   [22:0] add_ln51_7_reg_1358_pp0_iter2_reg;
reg   [22:0] add_ln51_7_reg_1358_pp0_iter3_reg;
reg   [22:0] add_ln51_7_reg_1358_pp0_iter4_reg;
reg   [22:0] add_ln51_7_reg_1358_pp0_iter5_reg;
reg   [22:0] add_ln51_7_reg_1358_pp0_iter6_reg;
reg   [1:0] trunc_ln51_2_reg_1384;
wire   [31:0] v23_1_fu_786_p11;
reg   [31:0] v23_1_reg_1409;
wire   [31:0] v23_2_fu_826_p11;
reg   [31:0] v23_2_reg_1414;
wire   [31:0] v23_3_fu_889_p11;
reg   [31:0] v23_3_reg_1459;
wire   [31:0] v23_4_fu_929_p11;
reg   [31:0] v23_4_reg_1464;
wire   [31:0] v23_5_fu_1005_p11;
reg   [31:0] v23_5_reg_1529;
wire   [31:0] v23_6_fu_1045_p11;
reg   [31:0] v23_6_reg_1534;
wire   [31:0] v23_fu_1093_p11;
reg   [31:0] v23_reg_1559;
wire   [31:0] v23_7_fu_1133_p11;
reg   [31:0] v23_7_reg_1564;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln51_2_fu_746_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln51_4_fu_754_p1;
wire   [63:0] zext_ln51_6_fu_849_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln51_8_fu_857_p1;
wire   [63:0] zext_ln51_10_fu_953_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_12_fu_961_p1;
wire   [63:0] zext_ln51_fu_977_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_14_fu_1069_p1;
wire   [63:0] zext_ln51_1_fu_1164_p1;
wire   [63:0] zext_ln51_3_fu_1176_p1;
wire   [63:0] zext_ln51_5_fu_1188_p1;
wire   [63:0] zext_ln51_7_fu_1200_p1;
wire   [63:0] zext_ln51_9_fu_1215_p1;
wire   [63:0] zext_ln51_11_fu_1227_p1;
wire   [63:0] zext_ln47_fu_1232_p1;
wire   [63:0] zext_ln51_13_fu_1243_p1;
reg   [10:0] v19_fu_112;
wire   [10:0] add_ln47_fu_732_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_2;
reg    v0_0_ce1_local;
reg   [20:0] v0_0_address1_local;
reg    v0_0_ce0_local;
reg   [20:0] v0_0_address0_local;
reg    v0_1_ce1_local;
reg   [20:0] v0_1_address1_local;
reg    v0_1_ce0_local;
reg   [20:0] v0_1_address0_local;
reg    v0_2_ce1_local;
reg   [20:0] v0_2_address1_local;
reg    v0_2_ce0_local;
reg   [20:0] v0_2_address0_local;
reg    v0_3_ce1_local;
reg   [20:0] v0_3_address1_local;
reg    v0_3_ce0_local;
reg   [20:0] v0_3_address0_local;
reg    v3_we1_local;
reg    v3_ce1_local;
reg   [9:0] v3_address1_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg   [9:0] v3_address0_local;
reg   [31:0] grp_fu_499_p1;
reg   [31:0] grp_fu_503_p1;
reg   [22:0] grp_fu_507_p0;
wire   [46:0] zext_ln51_24_fu_742_p1;
wire   [46:0] zext_ln51_25_fu_762_p1;
wire   [46:0] zext_ln51_27_fu_865_p1;
wire   [46:0] zext_ln51_29_fu_969_p1;
wire   [24:0] grp_fu_507_p1;
reg   [22:0] grp_fu_512_p0;
wire   [46:0] zext_ln51_26_fu_766_p1;
wire   [46:0] zext_ln51_28_fu_869_p1;
wire   [46:0] zext_ln51_30_fu_973_p1;
wire   [46:0] zext_ln51_23_fu_985_p1;
wire   [24:0] grp_fu_512_p1;
wire   [46:0] grp_fu_507_p2;
wire   [46:0] grp_fu_512_p2;
wire   [22:0] grp_fu_595_p0;
wire   [21:0] grp_fu_595_p1;
wire   [22:0] grp_fu_621_p0;
wire   [21:0] grp_fu_621_p1;
wire   [22:0] grp_fu_635_p0;
wire   [21:0] grp_fu_635_p1;
wire   [22:0] grp_fu_659_p0;
wire   [21:0] grp_fu_659_p1;
wire   [22:0] grp_fu_684_p0;
wire   [21:0] grp_fu_684_p1;
wire   [22:0] grp_fu_698_p0;
wire   [21:0] grp_fu_698_p1;
wire   [22:0] zext_ln47_1_fu_704_p1;
wire   [22:0] grp_fu_712_p0;
wire   [21:0] grp_fu_712_p1;
wire   [22:0] grp_fu_726_p0;
wire   [21:0] grp_fu_726_p1;
wire   [22:0] grp_fu_595_p2;
wire   [22:0] grp_fu_621_p2;
wire   [31:0] v23_1_fu_786_p2;
wire   [31:0] v23_1_fu_786_p4;
wire   [31:0] v23_1_fu_786_p6;
wire   [31:0] v23_1_fu_786_p8;
wire   [31:0] v23_1_fu_786_p9;
wire   [31:0] v23_2_fu_826_p2;
wire   [31:0] v23_2_fu_826_p4;
wire   [31:0] v23_2_fu_826_p6;
wire   [31:0] v23_2_fu_826_p8;
wire   [31:0] v23_2_fu_826_p9;
wire   [22:0] grp_fu_635_p2;
wire   [22:0] grp_fu_659_p2;
wire   [31:0] v23_3_fu_889_p2;
wire   [31:0] v23_3_fu_889_p4;
wire   [31:0] v23_3_fu_889_p6;
wire   [31:0] v23_3_fu_889_p8;
wire   [31:0] v23_3_fu_889_p9;
wire   [31:0] v23_4_fu_929_p2;
wire   [31:0] v23_4_fu_929_p4;
wire   [31:0] v23_4_fu_929_p6;
wire   [31:0] v23_4_fu_929_p8;
wire   [31:0] v23_4_fu_929_p9;
wire   [22:0] grp_fu_684_p2;
wire   [22:0] grp_fu_698_p2;
wire   [22:0] grp_fu_712_p2;
wire   [31:0] v23_5_fu_1005_p2;
wire   [31:0] v23_5_fu_1005_p4;
wire   [31:0] v23_5_fu_1005_p6;
wire   [31:0] v23_5_fu_1005_p8;
wire   [31:0] v23_5_fu_1005_p9;
wire   [31:0] v23_6_fu_1045_p2;
wire   [31:0] v23_6_fu_1045_p4;
wire   [31:0] v23_6_fu_1045_p6;
wire   [31:0] v23_6_fu_1045_p8;
wire   [31:0] v23_6_fu_1045_p9;
wire   [22:0] grp_fu_726_p2;
wire   [31:0] v23_fu_1093_p2;
wire   [31:0] v23_fu_1093_p4;
wire   [31:0] v23_fu_1093_p6;
wire   [31:0] v23_fu_1093_p8;
wire   [31:0] v23_fu_1093_p9;
wire   [31:0] v23_7_fu_1133_p2;
wire   [31:0] v23_7_fu_1133_p4;
wire   [31:0] v23_7_fu_1133_p6;
wire   [31:0] v23_7_fu_1133_p8;
wire   [31:0] v23_7_fu_1133_p9;
wire   [9:0] or_ln1_fu_1157_p3;
wire   [9:0] or_ln47_1_fu_1169_p3;
wire   [9:0] or_ln47_2_fu_1181_p3;
wire   [9:0] or_ln47_3_fu_1193_p3;
wire   [9:0] or_ln47_4_fu_1205_p5;
wire   [9:0] or_ln47_5_fu_1220_p3;
wire   [9:0] or_ln47_6_fu_1236_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to8;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] v23_1_fu_786_p1;
wire   [1:0] v23_1_fu_786_p3;
wire  signed [1:0] v23_1_fu_786_p5;
wire  signed [1:0] v23_1_fu_786_p7;
wire   [1:0] v23_2_fu_826_p1;
wire   [1:0] v23_2_fu_826_p3;
wire  signed [1:0] v23_2_fu_826_p5;
wire  signed [1:0] v23_2_fu_826_p7;
wire   [1:0] v23_3_fu_889_p1;
wire   [1:0] v23_3_fu_889_p3;
wire  signed [1:0] v23_3_fu_889_p5;
wire  signed [1:0] v23_3_fu_889_p7;
wire   [1:0] v23_4_fu_929_p1;
wire   [1:0] v23_4_fu_929_p3;
wire  signed [1:0] v23_4_fu_929_p5;
wire  signed [1:0] v23_4_fu_929_p7;
wire   [1:0] v23_5_fu_1005_p1;
wire   [1:0] v23_5_fu_1005_p3;
wire  signed [1:0] v23_5_fu_1005_p5;
wire  signed [1:0] v23_5_fu_1005_p7;
wire   [1:0] v23_6_fu_1045_p1;
wire   [1:0] v23_6_fu_1045_p3;
wire  signed [1:0] v23_6_fu_1045_p5;
wire  signed [1:0] v23_6_fu_1045_p7;
wire   [1:0] v23_fu_1093_p1;
wire   [1:0] v23_fu_1093_p3;
wire  signed [1:0] v23_fu_1093_p5;
wire  signed [1:0] v23_fu_1093_p7;
wire   [1:0] v23_7_fu_1133_p1;
wire   [1:0] v23_7_fu_1133_p3;
wire  signed [1:0] v23_7_fu_1133_p5;
wire  signed [1:0] v23_7_fu_1133_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v19_fu_112 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U25(.din0(grp_fu_507_p0),.din1(grp_fu_507_p1),.dout(grp_fu_507_p2));
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U26(.din0(grp_fu_512_p0),.din1(grp_fu_512_p1),.dout(grp_fu_512_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U27(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_595_p0),.din1(grp_fu_595_p1),.ce(1'b1),.dout(grp_fu_595_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U28(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_621_p0),.din1(grp_fu_621_p1),.ce(1'b1),.dout(grp_fu_621_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U29(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_635_p0),.din1(grp_fu_635_p1),.ce(1'b1),.dout(grp_fu_635_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U30(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_659_p0),.din1(grp_fu_659_p1),.ce(1'b1),.dout(grp_fu_659_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U31(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_684_p0),.din1(grp_fu_684_p1),.ce(1'b1),.dout(grp_fu_684_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U32(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_698_p0),.din1(grp_fu_698_p1),.ce(1'b1),.dout(grp_fu_698_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U33(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_712_p0),.din1(grp_fu_712_p1),.ce(1'b1),.dout(grp_fu_712_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U34(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_726_p0),.din1(grp_fu_726_p1),.ce(1'b1),.dout(grp_fu_726_p2));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U35(.din0(v23_1_fu_786_p2),.din1(v23_1_fu_786_p4),.din2(v23_1_fu_786_p6),.din3(v23_1_fu_786_p8),.def(v23_1_fu_786_p9),.sel(reg_537),.dout(v23_1_fu_786_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U36(.din0(v23_2_fu_826_p2),.din1(v23_2_fu_826_p4),.din2(v23_2_fu_826_p6),.din3(v23_2_fu_826_p8),.def(v23_2_fu_826_p9),.sel(trunc_ln51_2_reg_1384),.dout(v23_2_fu_826_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U37(.din0(v23_3_fu_889_p2),.din1(v23_3_fu_889_p4),.din2(v23_3_fu_889_p6),.din3(v23_3_fu_889_p8),.def(v23_3_fu_889_p9),.sel(reg_541),.dout(v23_3_fu_889_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U38(.din0(v23_4_fu_929_p2),.din1(v23_4_fu_929_p4),.din2(v23_4_fu_929_p6),.din3(v23_4_fu_929_p8),.def(v23_4_fu_929_p9),.sel(reg_537),.dout(v23_4_fu_929_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U39(.din0(v23_5_fu_1005_p2),.din1(v23_5_fu_1005_p4),.din2(v23_5_fu_1005_p6),.din3(v23_5_fu_1005_p8),.def(v23_5_fu_1005_p9),.sel(reg_545),.dout(v23_5_fu_1005_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U40(.din0(v23_6_fu_1045_p2),.din1(v23_6_fu_1045_p4),.din2(v23_6_fu_1045_p6),.din3(v23_6_fu_1045_p8),.def(v23_6_fu_1045_p9),.sel(reg_537),.dout(v23_6_fu_1045_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U41(.din0(v23_fu_1093_p2),.din1(v23_fu_1093_p4),.din2(v23_fu_1093_p6),.din3(v23_fu_1093_p8),.def(v23_fu_1093_p9),.sel(reg_545),.dout(v23_fu_1093_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U42(.din0(v23_7_fu_1133_p2),.din1(v23_7_fu_1133_p4),.din2(v23_7_fu_1133_p6),.din3(v23_7_fu_1133_p8),.def(v23_7_fu_1133_p9),.sel(reg_541),.dout(v23_7_fu_1133_p11));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_fu_112 <= 11'd0;
    end else if (((tmp_reg_1284 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v19_fu_112 <= add_ln47_fu_732_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln51_1_reg_1293[22 : 1] <= add_ln51_1_fu_585_p4[22 : 1];
        add_ln51_1_reg_1293_pp0_iter1_reg[22 : 1] <= add_ln51_1_reg_1293[22 : 1];
        add_ln51_1_reg_1293_pp0_iter2_reg[22 : 1] <= add_ln51_1_reg_1293_pp0_iter1_reg[22 : 1];
        add_ln51_1_reg_1293_pp0_iter3_reg[22 : 1] <= add_ln51_1_reg_1293_pp0_iter2_reg[22 : 1];
        add_ln51_1_reg_1293_pp0_iter4_reg[22 : 1] <= add_ln51_1_reg_1293_pp0_iter3_reg[22 : 1];
        add_ln51_1_reg_1293_pp0_iter5_reg[22 : 1] <= add_ln51_1_reg_1293_pp0_iter4_reg[22 : 1];
        add_ln51_1_reg_1293_pp0_iter6_reg[22 : 1] <= add_ln51_1_reg_1293_pp0_iter5_reg[22 : 1];
        add_ln51_2_reg_1306[22 : 2] <= add_ln51_2_fu_611_p4[22 : 2];
        add_ln51_2_reg_1306_pp0_iter1_reg[22 : 2] <= add_ln51_2_reg_1306[22 : 2];
        add_ln51_2_reg_1306_pp0_iter2_reg[22 : 2] <= add_ln51_2_reg_1306_pp0_iter1_reg[22 : 2];
        add_ln51_2_reg_1306_pp0_iter3_reg[22 : 2] <= add_ln51_2_reg_1306_pp0_iter2_reg[22 : 2];
        add_ln51_2_reg_1306_pp0_iter4_reg[22 : 2] <= add_ln51_2_reg_1306_pp0_iter3_reg[22 : 2];
        add_ln51_2_reg_1306_pp0_iter5_reg[22 : 2] <= add_ln51_2_reg_1306_pp0_iter4_reg[22 : 2];
        add_ln51_2_reg_1306_pp0_iter6_reg[22 : 2] <= add_ln51_2_reg_1306_pp0_iter5_reg[22 : 2];
        tmp_7_reg_1288 <= {{ap_sig_allocacmp_v19_2[9:1]}};
        tmp_7_reg_1288_pp0_iter1_reg <= tmp_7_reg_1288;
        tmp_7_reg_1288_pp0_iter2_reg <= tmp_7_reg_1288_pp0_iter1_reg;
        tmp_7_reg_1288_pp0_iter3_reg <= tmp_7_reg_1288_pp0_iter2_reg;
        tmp_7_reg_1288_pp0_iter4_reg <= tmp_7_reg_1288_pp0_iter3_reg;
        tmp_7_reg_1288_pp0_iter5_reg <= tmp_7_reg_1288_pp0_iter4_reg;
        tmp_7_reg_1288_pp0_iter6_reg <= tmp_7_reg_1288_pp0_iter5_reg;
        tmp_7_reg_1288_pp0_iter7_reg <= tmp_7_reg_1288_pp0_iter6_reg;
        tmp_8_reg_1299 <= {{ap_sig_allocacmp_v19_2[9:2]}};
        tmp_8_reg_1299_pp0_iter1_reg <= tmp_8_reg_1299;
        tmp_8_reg_1299_pp0_iter2_reg <= tmp_8_reg_1299_pp0_iter1_reg;
        tmp_8_reg_1299_pp0_iter3_reg <= tmp_8_reg_1299_pp0_iter2_reg;
        tmp_8_reg_1299_pp0_iter4_reg <= tmp_8_reg_1299_pp0_iter3_reg;
        tmp_8_reg_1299_pp0_iter5_reg <= tmp_8_reg_1299_pp0_iter4_reg;
        tmp_8_reg_1299_pp0_iter6_reg <= tmp_8_reg_1299_pp0_iter5_reg;
        tmp_8_reg_1299_pp0_iter7_reg <= tmp_8_reg_1299_pp0_iter6_reg;
        tmp_8_reg_1299_pp0_iter8_reg <= tmp_8_reg_1299_pp0_iter7_reg;
        tmp_reg_1284 <= ap_sig_allocacmp_v19_2[32'd10];
        v19_2_reg_1275 <= ap_sig_allocacmp_v19_2;
        v19_2_reg_1275_pp0_iter1_reg <= v19_2_reg_1275;
        v19_2_reg_1275_pp0_iter2_reg <= v19_2_reg_1275_pp0_iter1_reg;
        v19_2_reg_1275_pp0_iter3_reg <= v19_2_reg_1275_pp0_iter2_reg;
        v19_2_reg_1275_pp0_iter4_reg <= v19_2_reg_1275_pp0_iter3_reg;
        v19_2_reg_1275_pp0_iter5_reg <= v19_2_reg_1275_pp0_iter4_reg;
        v19_2_reg_1275_pp0_iter6_reg <= v19_2_reg_1275_pp0_iter5_reg;
        v19_2_reg_1275_pp0_iter7_reg <= v19_2_reg_1275_pp0_iter6_reg;
        v19_2_reg_1275_pp0_iter8_reg <= v19_2_reg_1275_pp0_iter7_reg;
        v23_3_reg_1459 <= v23_3_fu_889_p11;
        v23_4_reg_1464 <= v23_4_fu_929_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln51_3_reg_1312[22 : 2] <= add_ln51_3_fu_627_p4[22 : 2];
        add_ln51_3_reg_1312_pp0_iter1_reg[22 : 2] <= add_ln51_3_reg_1312[22 : 2];
        add_ln51_3_reg_1312_pp0_iter2_reg[22 : 2] <= add_ln51_3_reg_1312_pp0_iter1_reg[22 : 2];
        add_ln51_3_reg_1312_pp0_iter3_reg[22 : 2] <= add_ln51_3_reg_1312_pp0_iter2_reg[22 : 2];
        add_ln51_3_reg_1312_pp0_iter4_reg[22 : 2] <= add_ln51_3_reg_1312_pp0_iter3_reg[22 : 2];
        add_ln51_3_reg_1312_pp0_iter5_reg[22 : 2] <= add_ln51_3_reg_1312_pp0_iter4_reg[22 : 2];
        add_ln51_3_reg_1312_pp0_iter6_reg[22 : 2] <= add_ln51_3_reg_1312_pp0_iter5_reg[22 : 2];
        add_ln51_4_reg_1329[22 : 3] <= add_ln51_4_fu_650_p4[22 : 3];
        add_ln51_4_reg_1329_pp0_iter1_reg[22 : 3] <= add_ln51_4_reg_1329[22 : 3];
        add_ln51_4_reg_1329_pp0_iter2_reg[22 : 3] <= add_ln51_4_reg_1329_pp0_iter1_reg[22 : 3];
        add_ln51_4_reg_1329_pp0_iter3_reg[22 : 3] <= add_ln51_4_reg_1329_pp0_iter2_reg[22 : 3];
        add_ln51_4_reg_1329_pp0_iter4_reg[22 : 3] <= add_ln51_4_reg_1329_pp0_iter3_reg[22 : 3];
        add_ln51_4_reg_1329_pp0_iter5_reg[22 : 3] <= add_ln51_4_reg_1329_pp0_iter4_reg[22 : 3];
        add_ln51_4_reg_1329_pp0_iter6_reg[22 : 3] <= add_ln51_4_reg_1329_pp0_iter5_reg[22 : 3];
        tmp_s_reg_1318 <= {{v19_2_reg_1275[9:3]}};
        tmp_s_reg_1318_pp0_iter1_reg <= tmp_s_reg_1318;
        tmp_s_reg_1318_pp0_iter2_reg <= tmp_s_reg_1318_pp0_iter1_reg;
        tmp_s_reg_1318_pp0_iter3_reg <= tmp_s_reg_1318_pp0_iter2_reg;
        tmp_s_reg_1318_pp0_iter4_reg <= tmp_s_reg_1318_pp0_iter3_reg;
        tmp_s_reg_1318_pp0_iter5_reg <= tmp_s_reg_1318_pp0_iter4_reg;
        tmp_s_reg_1318_pp0_iter6_reg <= tmp_s_reg_1318_pp0_iter5_reg;
        tmp_s_reg_1318_pp0_iter7_reg <= tmp_s_reg_1318_pp0_iter6_reg;
        tmp_s_reg_1318_pp0_iter8_reg <= tmp_s_reg_1318_pp0_iter7_reg;
        v23_5_reg_1529 <= v23_5_fu_1005_p11;
        v23_6_reg_1534 <= v23_6_fu_1045_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln51_5_reg_1340[1] <= add_ln51_5_fu_672_p6[1];
add_ln51_5_reg_1340[22 : 3] <= add_ln51_5_fu_672_p6[22 : 3];
        add_ln51_5_reg_1340_pp0_iter1_reg[1] <= add_ln51_5_reg_1340[1];
add_ln51_5_reg_1340_pp0_iter1_reg[22 : 3] <= add_ln51_5_reg_1340[22 : 3];
        add_ln51_5_reg_1340_pp0_iter2_reg[1] <= add_ln51_5_reg_1340_pp0_iter1_reg[1];
add_ln51_5_reg_1340_pp0_iter2_reg[22 : 3] <= add_ln51_5_reg_1340_pp0_iter1_reg[22 : 3];
        add_ln51_5_reg_1340_pp0_iter3_reg[1] <= add_ln51_5_reg_1340_pp0_iter2_reg[1];
add_ln51_5_reg_1340_pp0_iter3_reg[22 : 3] <= add_ln51_5_reg_1340_pp0_iter2_reg[22 : 3];
        add_ln51_5_reg_1340_pp0_iter4_reg[1] <= add_ln51_5_reg_1340_pp0_iter3_reg[1];
add_ln51_5_reg_1340_pp0_iter4_reg[22 : 3] <= add_ln51_5_reg_1340_pp0_iter3_reg[22 : 3];
        add_ln51_5_reg_1340_pp0_iter5_reg[1] <= add_ln51_5_reg_1340_pp0_iter4_reg[1];
add_ln51_5_reg_1340_pp0_iter5_reg[22 : 3] <= add_ln51_5_reg_1340_pp0_iter4_reg[22 : 3];
        add_ln51_5_reg_1340_pp0_iter6_reg[1] <= add_ln51_5_reg_1340_pp0_iter5_reg[1];
add_ln51_5_reg_1340_pp0_iter6_reg[22 : 3] <= add_ln51_5_reg_1340_pp0_iter5_reg[22 : 3];
        add_ln51_6_reg_1346[22 : 3] <= add_ln51_6_fu_690_p4[22 : 3];
        add_ln51_6_reg_1346_pp0_iter1_reg[22 : 3] <= add_ln51_6_reg_1346[22 : 3];
        add_ln51_6_reg_1346_pp0_iter2_reg[22 : 3] <= add_ln51_6_reg_1346_pp0_iter1_reg[22 : 3];
        add_ln51_6_reg_1346_pp0_iter3_reg[22 : 3] <= add_ln51_6_reg_1346_pp0_iter2_reg[22 : 3];
        add_ln51_6_reg_1346_pp0_iter4_reg[22 : 3] <= add_ln51_6_reg_1346_pp0_iter3_reg[22 : 3];
        add_ln51_6_reg_1346_pp0_iter5_reg[22 : 3] <= add_ln51_6_reg_1346_pp0_iter4_reg[22 : 3];
        add_ln51_6_reg_1346_pp0_iter6_reg[22 : 3] <= add_ln51_6_reg_1346_pp0_iter5_reg[22 : 3];
        tmp_4_reg_1335 <= v19_2_reg_1275[32'd1];
        tmp_4_reg_1335_pp0_iter1_reg <= tmp_4_reg_1335;
        tmp_4_reg_1335_pp0_iter2_reg <= tmp_4_reg_1335_pp0_iter1_reg;
        tmp_4_reg_1335_pp0_iter3_reg <= tmp_4_reg_1335_pp0_iter2_reg;
        tmp_4_reg_1335_pp0_iter4_reg <= tmp_4_reg_1335_pp0_iter3_reg;
        tmp_4_reg_1335_pp0_iter5_reg <= tmp_4_reg_1335_pp0_iter4_reg;
        tmp_4_reg_1335_pp0_iter6_reg <= tmp_4_reg_1335_pp0_iter5_reg;
        tmp_4_reg_1335_pp0_iter7_reg <= tmp_4_reg_1335_pp0_iter6_reg;
        v23_7_reg_1564 <= v23_7_fu_1133_p11;
        v23_reg_1559 <= v23_fu_1093_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln51_7_reg_1358[22 : 3] <= add_ln51_7_fu_718_p4[22 : 3];
        add_ln51_7_reg_1358_pp0_iter1_reg[22 : 3] <= add_ln51_7_reg_1358[22 : 3];
        add_ln51_7_reg_1358_pp0_iter2_reg[22 : 3] <= add_ln51_7_reg_1358_pp0_iter1_reg[22 : 3];
        add_ln51_7_reg_1358_pp0_iter3_reg[22 : 3] <= add_ln51_7_reg_1358_pp0_iter2_reg[22 : 3];
        add_ln51_7_reg_1358_pp0_iter4_reg[22 : 3] <= add_ln51_7_reg_1358_pp0_iter3_reg[22 : 3];
        add_ln51_7_reg_1358_pp0_iter5_reg[22 : 3] <= add_ln51_7_reg_1358_pp0_iter4_reg[22 : 3];
        add_ln51_7_reg_1358_pp0_iter6_reg[22 : 3] <= add_ln51_7_reg_1358_pp0_iter5_reg[22 : 3];
        add_ln51_reg_1352 <= add_ln51_fu_707_p2;
        add_ln51_reg_1352_pp0_iter1_reg <= add_ln51_reg_1352;
        add_ln51_reg_1352_pp0_iter2_reg <= add_ln51_reg_1352_pp0_iter1_reg;
        add_ln51_reg_1352_pp0_iter3_reg <= add_ln51_reg_1352_pp0_iter2_reg;
        add_ln51_reg_1352_pp0_iter4_reg <= add_ln51_reg_1352_pp0_iter3_reg;
        add_ln51_reg_1352_pp0_iter5_reg <= add_ln51_reg_1352_pp0_iter4_reg;
        add_ln51_reg_1352_pp0_iter6_reg <= add_ln51_reg_1352_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        v23_1_reg_1409 <= v23_1_fu_786_p11;
        v23_2_reg_1414 <= v23_2_fu_826_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_537 <= {{grp_fu_507_p2[45:44]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_541 <= {{grp_fu_512_p2[45:44]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_545 <= {{grp_fu_512_p2[45:44]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_549 <= grp_fu_535_p_dout0;
        reg_554 <= grp_fu_539_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln51_2_reg_1384 <= {{grp_fu_507_p2[45:44]}};
    end
end
always @ (*) begin
    if (((tmp_reg_1284 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to8 = 1'b1;
    end else begin
        ap_idle_pp0_1to8 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v19_2 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_2 = v19_fu_112;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_499_p1 = v23_reg_1559;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_499_p1 = v23_5_reg_1529;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_499_p1 = v23_3_reg_1459;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_499_p1 = v23_1_reg_1409;
        end else begin
            grp_fu_499_p1 = 'bx;
        end
    end else begin
        grp_fu_499_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_503_p1 = v23_7_reg_1564;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_503_p1 = v23_6_reg_1534;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_503_p1 = v23_4_reg_1464;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_503_p1 = v23_2_reg_1414;
        end else begin
            grp_fu_503_p1 = 'bx;
        end
    end else begin
        grp_fu_503_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_507_p0 = zext_ln51_29_fu_969_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_507_p0 = zext_ln51_27_fu_865_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_507_p0 = zext_ln51_25_fu_762_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_507_p0 = zext_ln51_24_fu_742_p1;
    end else begin
        grp_fu_507_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_512_p0 = zext_ln51_23_fu_985_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_512_p0 = zext_ln51_30_fu_973_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_512_p0 = zext_ln51_28_fu_869_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_512_p0 = zext_ln51_26_fu_766_p1;
    end else begin
        grp_fu_512_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address0_local = zext_ln51_14_fu_1069_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address0_local = zext_ln51_12_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address0_local = zext_ln51_8_fu_857_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address0_local = zext_ln51_4_fu_754_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address1_local = zext_ln51_fu_977_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address1_local = zext_ln51_10_fu_953_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address1_local = zext_ln51_6_fu_849_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address1_local = zext_ln51_2_fu_746_p1;
    end else begin
        v0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce1_local = 1'b1;
    end else begin
        v0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address0_local = zext_ln51_14_fu_1069_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address0_local = zext_ln51_12_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address0_local = zext_ln51_8_fu_857_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address0_local = zext_ln51_4_fu_754_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address1_local = zext_ln51_fu_977_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address1_local = zext_ln51_10_fu_953_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address1_local = zext_ln51_6_fu_849_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address1_local = zext_ln51_2_fu_746_p1;
    end else begin
        v0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce1_local = 1'b1;
    end else begin
        v0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address0_local = zext_ln51_14_fu_1069_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address0_local = zext_ln51_12_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address0_local = zext_ln51_8_fu_857_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_2_address0_local = zext_ln51_4_fu_754_p1;
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address1_local = zext_ln51_fu_977_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address1_local = zext_ln51_10_fu_953_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address1_local = zext_ln51_6_fu_849_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_2_address1_local = zext_ln51_2_fu_746_p1;
    end else begin
        v0_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce1_local = 1'b1;
    end else begin
        v0_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address0_local = zext_ln51_14_fu_1069_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address0_local = zext_ln51_12_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address0_local = zext_ln51_8_fu_857_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_3_address0_local = zext_ln51_4_fu_754_p1;
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address1_local = zext_ln51_fu_977_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address1_local = zext_ln51_10_fu_953_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address1_local = zext_ln51_6_fu_849_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_3_address1_local = zext_ln51_2_fu_746_p1;
    end else begin
        v0_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce1_local = 1'b1;
    end else begin
        v0_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_address0_local = zext_ln51_13_fu_1243_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address0_local = zext_ln51_11_fu_1227_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address0_local = zext_ln51_7_fu_1200_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address0_local = zext_ln51_3_fu_1176_p1;
        end else begin
            v3_address0_local = 'bx;
        end
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_address1_local = zext_ln47_fu_1232_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address1_local = zext_ln51_9_fu_1215_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address1_local = zext_ln51_5_fu_1188_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address1_local = zext_ln51_1_fu_1164_p1;
        end else begin
            v3_address1_local = 'bx;
        end
    end else begin
        v3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_we1_local = 1'b1;
    end else begin
        v3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to8 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln47_fu_732_p2 = (v19_2_reg_1275 + 11'd8);
assign add_ln51_1_fu_585_p4 = {{{v5}, {tmp_7_fu_575_p4}}, {1'd1}};
assign add_ln51_2_fu_611_p4 = {{{v5}, {tmp_8_fu_601_p4}}, {2'd2}};
assign add_ln51_3_fu_627_p4 = {{{v5}, {tmp_8_reg_1299}}, {2'd3}};
assign add_ln51_4_fu_650_p4 = {{{v5}, {tmp_s_fu_641_p4}}, {3'd4}};
assign add_ln51_5_fu_672_p6 = {{{{{v5}, {tmp_s_reg_1318}}, {1'd1}}, {tmp_4_fu_665_p3}}, {1'd1}};
assign add_ln51_6_fu_690_p4 = {{{v5}, {tmp_s_reg_1318}}, {3'd6}};
assign add_ln51_7_fu_718_p4 = {{{v5}, {tmp_s_reg_1318}}, {3'd7}};
assign add_ln51_fu_707_p2 = (zext_ln47_1_fu_704_p1 + tmp_1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_507_p1 = 47'd15270995;
assign grp_fu_512_p1 = 47'd15270995;
assign grp_fu_535_p_ce = 1'b1;
assign grp_fu_535_p_din0 = v22;
assign grp_fu_535_p_din1 = grp_fu_499_p1;
assign grp_fu_539_p_ce = 1'b1;
assign grp_fu_539_p_din0 = v22;
assign grp_fu_539_p_din1 = grp_fu_503_p1;
assign grp_fu_595_p0 = {{{v5}, {tmp_7_fu_575_p4}}, {1'd1}};
assign grp_fu_595_p1 = 23'd1152000;
assign grp_fu_621_p0 = {{{v5}, {tmp_8_fu_601_p4}}, {2'd2}};
assign grp_fu_621_p1 = 23'd1152000;
assign grp_fu_635_p0 = {{{v5}, {tmp_8_reg_1299}}, {2'd3}};
assign grp_fu_635_p1 = 23'd1152000;
assign grp_fu_659_p0 = {{{v5}, {tmp_s_fu_641_p4}}, {3'd4}};
assign grp_fu_659_p1 = 23'd1152000;
assign grp_fu_684_p0 = {{{{{v5}, {tmp_s_reg_1318}}, {1'd1}}, {tmp_4_fu_665_p3}}, {1'd1}};
assign grp_fu_684_p1 = 23'd1152000;
assign grp_fu_698_p0 = {{{v5}, {tmp_s_reg_1318}}, {3'd6}};
assign grp_fu_698_p1 = 23'd1152000;
assign grp_fu_712_p0 = (zext_ln47_1_fu_704_p1 + tmp_1);
assign grp_fu_712_p1 = 23'd1152000;
assign grp_fu_726_p0 = {{{v5}, {tmp_s_reg_1318}}, {3'd7}};
assign grp_fu_726_p1 = 23'd1152000;
assign or_ln1_fu_1157_p3 = {{tmp_7_reg_1288_pp0_iter7_reg}, {1'd1}};
assign or_ln47_1_fu_1169_p3 = {{tmp_8_reg_1299_pp0_iter7_reg}, {2'd2}};
assign or_ln47_2_fu_1181_p3 = {{tmp_8_reg_1299_pp0_iter8_reg}, {2'd3}};
assign or_ln47_3_fu_1193_p3 = {{tmp_s_reg_1318_pp0_iter7_reg}, {3'd4}};
assign or_ln47_4_fu_1205_p5 = {{{{tmp_s_reg_1318_pp0_iter8_reg}, {1'd1}}, {tmp_4_reg_1335_pp0_iter7_reg}}, {1'd1}};
assign or_ln47_5_fu_1220_p3 = {{tmp_s_reg_1318_pp0_iter8_reg}, {3'd6}};
assign or_ln47_6_fu_1236_p3 = {{tmp_s_reg_1318_pp0_iter8_reg}, {3'd7}};
assign tmp_4_fu_665_p3 = v19_2_reg_1275[32'd1];
assign tmp_7_fu_575_p4 = {{ap_sig_allocacmp_v19_2[9:1]}};
assign tmp_8_fu_601_p4 = {{ap_sig_allocacmp_v19_2[9:2]}};
assign tmp_s_fu_641_p4 = {{v19_2_reg_1275[9:3]}};
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
assign v23_1_fu_786_p2 = v0_0_q1;
assign v23_1_fu_786_p4 = v0_1_q1;
assign v23_1_fu_786_p6 = v0_2_q1;
assign v23_1_fu_786_p8 = v0_3_q1;
assign v23_1_fu_786_p9 = 'bx;
assign v23_2_fu_826_p2 = v0_0_q0;
assign v23_2_fu_826_p4 = v0_1_q0;
assign v23_2_fu_826_p6 = v0_2_q0;
assign v23_2_fu_826_p8 = v0_3_q0;
assign v23_2_fu_826_p9 = 'bx;
assign v23_3_fu_889_p2 = v0_0_q1;
assign v23_3_fu_889_p4 = v0_1_q1;
assign v23_3_fu_889_p6 = v0_2_q1;
assign v23_3_fu_889_p8 = v0_3_q1;
assign v23_3_fu_889_p9 = 'bx;
assign v23_4_fu_929_p2 = v0_0_q0;
assign v23_4_fu_929_p4 = v0_1_q0;
assign v23_4_fu_929_p6 = v0_2_q0;
assign v23_4_fu_929_p8 = v0_3_q0;
assign v23_4_fu_929_p9 = 'bx;
assign v23_5_fu_1005_p2 = v0_0_q1;
assign v23_5_fu_1005_p4 = v0_1_q1;
assign v23_5_fu_1005_p6 = v0_2_q1;
assign v23_5_fu_1005_p8 = v0_3_q1;
assign v23_5_fu_1005_p9 = 'bx;
assign v23_6_fu_1045_p2 = v0_0_q0;
assign v23_6_fu_1045_p4 = v0_1_q0;
assign v23_6_fu_1045_p6 = v0_2_q0;
assign v23_6_fu_1045_p8 = v0_3_q0;
assign v23_6_fu_1045_p9 = 'bx;
assign v23_7_fu_1133_p2 = v0_0_q0;
assign v23_7_fu_1133_p4 = v0_1_q0;
assign v23_7_fu_1133_p6 = v0_2_q0;
assign v23_7_fu_1133_p8 = v0_3_q0;
assign v23_7_fu_1133_p9 = 'bx;
assign v23_fu_1093_p2 = v0_0_q1;
assign v23_fu_1093_p4 = v0_1_q1;
assign v23_fu_1093_p6 = v0_2_q1;
assign v23_fu_1093_p8 = v0_3_q1;
assign v23_fu_1093_p9 = 'bx;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign v3_d0 = reg_554;
assign v3_d1 = reg_549;
assign v3_we0 = v3_we0_local;
assign v3_we1 = v3_we1_local;
assign zext_ln47_1_fu_704_p1 = v19_2_reg_1275;
assign zext_ln47_fu_1232_p1 = v19_2_reg_1275_pp0_iter8_reg;
assign zext_ln51_10_fu_953_p1 = grp_fu_684_p2;
assign zext_ln51_11_fu_1227_p1 = or_ln47_5_fu_1220_p3;
assign zext_ln51_12_fu_961_p1 = grp_fu_698_p2;
assign zext_ln51_13_fu_1243_p1 = or_ln47_6_fu_1236_p3;
assign zext_ln51_14_fu_1069_p1 = grp_fu_726_p2;
assign zext_ln51_1_fu_1164_p1 = or_ln1_fu_1157_p3;
assign zext_ln51_23_fu_985_p1 = add_ln51_reg_1352_pp0_iter6_reg;
assign zext_ln51_24_fu_742_p1 = add_ln51_1_reg_1293_pp0_iter6_reg;
assign zext_ln51_25_fu_762_p1 = add_ln51_2_reg_1306_pp0_iter6_reg;
assign zext_ln51_26_fu_766_p1 = add_ln51_3_reg_1312_pp0_iter6_reg;
assign zext_ln51_27_fu_865_p1 = add_ln51_4_reg_1329_pp0_iter6_reg;
assign zext_ln51_28_fu_869_p1 = add_ln51_5_reg_1340_pp0_iter6_reg;
assign zext_ln51_29_fu_969_p1 = add_ln51_6_reg_1346_pp0_iter6_reg;
assign zext_ln51_2_fu_746_p1 = grp_fu_595_p2;
assign zext_ln51_30_fu_973_p1 = add_ln51_7_reg_1358_pp0_iter6_reg;
assign zext_ln51_3_fu_1176_p1 = or_ln47_1_fu_1169_p3;
assign zext_ln51_4_fu_754_p1 = grp_fu_621_p2;
assign zext_ln51_5_fu_1188_p1 = or_ln47_2_fu_1181_p3;
assign zext_ln51_6_fu_849_p1 = grp_fu_635_p2;
assign zext_ln51_7_fu_1200_p1 = or_ln47_3_fu_1193_p3;
assign zext_ln51_8_fu_857_p1 = grp_fu_659_p2;
assign zext_ln51_9_fu_1215_p1 = or_ln47_4_fu_1205_p5;
assign zext_ln51_fu_977_p1 = grp_fu_712_p2;
always @ (posedge ap_clk) begin
    add_ln51_1_reg_1293[0] <= 1'b1;
    add_ln51_1_reg_1293_pp0_iter1_reg[0] <= 1'b1;
    add_ln51_1_reg_1293_pp0_iter2_reg[0] <= 1'b1;
    add_ln51_1_reg_1293_pp0_iter3_reg[0] <= 1'b1;
    add_ln51_1_reg_1293_pp0_iter4_reg[0] <= 1'b1;
    add_ln51_1_reg_1293_pp0_iter5_reg[0] <= 1'b1;
    add_ln51_1_reg_1293_pp0_iter6_reg[0] <= 1'b1;
    add_ln51_2_reg_1306[1:0] <= 2'b10;
    add_ln51_2_reg_1306_pp0_iter1_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1306_pp0_iter2_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1306_pp0_iter3_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1306_pp0_iter4_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1306_pp0_iter5_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1306_pp0_iter6_reg[1:0] <= 2'b10;
    add_ln51_3_reg_1312[1:0] <= 2'b11;
    add_ln51_3_reg_1312_pp0_iter1_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1312_pp0_iter2_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1312_pp0_iter3_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1312_pp0_iter4_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1312_pp0_iter5_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1312_pp0_iter6_reg[1:0] <= 2'b11;
    add_ln51_4_reg_1329[2:0] <= 3'b100;
    add_ln51_4_reg_1329_pp0_iter1_reg[2:0] <= 3'b100;
    add_ln51_4_reg_1329_pp0_iter2_reg[2:0] <= 3'b100;
    add_ln51_4_reg_1329_pp0_iter3_reg[2:0] <= 3'b100;
    add_ln51_4_reg_1329_pp0_iter4_reg[2:0] <= 3'b100;
    add_ln51_4_reg_1329_pp0_iter5_reg[2:0] <= 3'b100;
    add_ln51_4_reg_1329_pp0_iter6_reg[2:0] <= 3'b100;
    add_ln51_5_reg_1340[0] <= 1'b1;
    add_ln51_5_reg_1340[2] <= 1'b1;
    add_ln51_5_reg_1340_pp0_iter1_reg[0] <= 1'b1;
    add_ln51_5_reg_1340_pp0_iter1_reg[2] <= 1'b1;
    add_ln51_5_reg_1340_pp0_iter2_reg[0] <= 1'b1;
    add_ln51_5_reg_1340_pp0_iter2_reg[2] <= 1'b1;
    add_ln51_5_reg_1340_pp0_iter3_reg[0] <= 1'b1;
    add_ln51_5_reg_1340_pp0_iter3_reg[2] <= 1'b1;
    add_ln51_5_reg_1340_pp0_iter4_reg[0] <= 1'b1;
    add_ln51_5_reg_1340_pp0_iter4_reg[2] <= 1'b1;
    add_ln51_5_reg_1340_pp0_iter5_reg[0] <= 1'b1;
    add_ln51_5_reg_1340_pp0_iter5_reg[2] <= 1'b1;
    add_ln51_5_reg_1340_pp0_iter6_reg[0] <= 1'b1;
    add_ln51_5_reg_1340_pp0_iter6_reg[2] <= 1'b1;
    add_ln51_6_reg_1346[2:0] <= 3'b110;
    add_ln51_6_reg_1346_pp0_iter1_reg[2:0] <= 3'b110;
    add_ln51_6_reg_1346_pp0_iter2_reg[2:0] <= 3'b110;
    add_ln51_6_reg_1346_pp0_iter3_reg[2:0] <= 3'b110;
    add_ln51_6_reg_1346_pp0_iter4_reg[2:0] <= 3'b110;
    add_ln51_6_reg_1346_pp0_iter5_reg[2:0] <= 3'b110;
    add_ln51_6_reg_1346_pp0_iter6_reg[2:0] <= 3'b110;
    add_ln51_7_reg_1358[2:0] <= 3'b111;
    add_ln51_7_reg_1358_pp0_iter1_reg[2:0] <= 3'b111;
    add_ln51_7_reg_1358_pp0_iter2_reg[2:0] <= 3'b111;
    add_ln51_7_reg_1358_pp0_iter3_reg[2:0] <= 3'b111;
    add_ln51_7_reg_1358_pp0_iter4_reg[2:0] <= 3'b111;
    add_ln51_7_reg_1358_pp0_iter5_reg[2:0] <= 3'b111;
    add_ln51_7_reg_1358_pp0_iter6_reg[2:0] <= 3'b111;
end
endmodule 