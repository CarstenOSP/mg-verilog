module SgdLR_sw_SgdLR_sw_Pipeline_label_4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_7_address0,v2_7_ce0,v2_7_we0,v2_7_d0,v2_7_address1,v2_7_ce1,v2_7_q1,v2_6_address0,v2_6_ce0,v2_6_we0,v2_6_d0,v2_6_address1,v2_6_ce1,v2_6_q1,v2_5_address0,v2_5_ce0,v2_5_we0,v2_5_d0,v2_5_address1,v2_5_ce1,v2_5_q1,v2_4_address0,v2_4_ce0,v2_4_we0,v2_4_d0,v2_4_address1,v2_4_ce1,v2_4_q1,v2_3_address0,v2_3_ce0,v2_3_we0,v2_3_d0,v2_3_address1,v2_3_ce1,v2_3_q1,v2_2_address0,v2_2_ce0,v2_2_we0,v2_2_d0,v2_2_address1,v2_2_ce1,v2_2_q1,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_address1,v2_1_ce1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_address1,v2_0_ce1,v2_0_q1,v3_address0,v3_ce0,v3_q0,v3_1_address0,v3_1_ce0,v3_1_q0,v3_2_address0,v3_2_ce0,v3_2_q0,v3_3_address0,v3_3_ce0,v3_3_q0,v3_4_address0,v3_4_ce0,v3_4_q0,v3_5_address0,v3_5_ce0,v3_5_q0,v3_6_address0,v3_6_ce0,v3_6_q0,v3_7_address0,v3_7_ce0,v3_7_q0,grp_fu_525_p_din0,grp_fu_525_p_din1,grp_fu_525_p_opcode,grp_fu_525_p_dout0,grp_fu_525_p_ce,grp_fu_1037_p_din0,grp_fu_1037_p_din1,grp_fu_1037_p_opcode,grp_fu_1037_p_dout0,grp_fu_1037_p_ce,grp_fu_1041_p_din0,grp_fu_1041_p_din1,grp_fu_1041_p_opcode,grp_fu_1041_p_dout0,grp_fu_1041_p_ce,grp_fu_1045_p_din0,grp_fu_1045_p_din1,grp_fu_1045_p_opcode,grp_fu_1045_p_dout0,grp_fu_1045_p_ce,grp_fu_1049_p_din0,grp_fu_1049_p_din1,grp_fu_1049_p_opcode,grp_fu_1049_p_dout0,grp_fu_1049_p_ce,grp_fu_1053_p_din0,grp_fu_1053_p_din1,grp_fu_1053_p_opcode,grp_fu_1053_p_dout0,grp_fu_1053_p_ce,grp_fu_1057_p_din0,grp_fu_1057_p_din1,grp_fu_1057_p_opcode,grp_fu_1057_p_dout0,grp_fu_1057_p_ce,grp_fu_1061_p_din0,grp_fu_1061_p_din1,grp_fu_1061_p_opcode,grp_fu_1061_p_dout0,grp_fu_1061_p_ce,grp_fu_1033_p_din0,grp_fu_1033_p_din1,grp_fu_1033_p_dout0,grp_fu_1033_p_ce,grp_fu_1065_p_din0,grp_fu_1065_p_din1,grp_fu_1065_p_dout0,grp_fu_1065_p_ce,grp_fu_1069_p_din0,grp_fu_1069_p_din1,grp_fu_1069_p_dout0,grp_fu_1069_p_ce,grp_fu_1073_p_din0,grp_fu_1073_p_din1,grp_fu_1073_p_dout0,grp_fu_1073_p_ce,grp_fu_1077_p_din0,grp_fu_1077_p_din1,grp_fu_1077_p_dout0,grp_fu_1077_p_ce,grp_fu_1081_p_din0,grp_fu_1081_p_din1,grp_fu_1081_p_dout0,grp_fu_1081_p_ce,grp_fu_1085_p_din0,grp_fu_1085_p_din1,grp_fu_1085_p_dout0,grp_fu_1085_p_ce,grp_fu_1089_p_din0,grp_fu_1089_p_din1,grp_fu_1089_p_dout0,grp_fu_1089_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] v2_7_address0;
output   v2_7_ce0;
output   v2_7_we0;
output  [31:0] v2_7_d0;
output  [6:0] v2_7_address1;
output   v2_7_ce1;
input  [31:0] v2_7_q1;
output  [6:0] v2_6_address0;
output   v2_6_ce0;
output   v2_6_we0;
output  [31:0] v2_6_d0;
output  [6:0] v2_6_address1;
output   v2_6_ce1;
input  [31:0] v2_6_q1;
output  [6:0] v2_5_address0;
output   v2_5_ce0;
output   v2_5_we0;
output  [31:0] v2_5_d0;
output  [6:0] v2_5_address1;
output   v2_5_ce1;
input  [31:0] v2_5_q1;
output  [6:0] v2_4_address0;
output   v2_4_ce0;
output   v2_4_we0;
output  [31:0] v2_4_d0;
output  [6:0] v2_4_address1;
output   v2_4_ce1;
input  [31:0] v2_4_q1;
output  [6:0] v2_3_address0;
output   v2_3_ce0;
output   v2_3_we0;
output  [31:0] v2_3_d0;
output  [6:0] v2_3_address1;
output   v2_3_ce1;
input  [31:0] v2_3_q1;
output  [6:0] v2_2_address0;
output   v2_2_ce0;
output   v2_2_we0;
output  [31:0] v2_2_d0;
output  [6:0] v2_2_address1;
output   v2_2_ce1;
input  [31:0] v2_2_q1;
output  [6:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
output  [6:0] v2_1_address1;
output   v2_1_ce1;
input  [31:0] v2_1_q1;
output  [6:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
output  [6:0] v2_0_address1;
output   v2_0_ce1;
input  [31:0] v2_0_q1;
output  [6:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [6:0] v3_1_address0;
output   v3_1_ce0;
input  [31:0] v3_1_q0;
output  [6:0] v3_2_address0;
output   v3_2_ce0;
input  [31:0] v3_2_q0;
output  [6:0] v3_3_address0;
output   v3_3_ce0;
input  [31:0] v3_3_q0;
output  [6:0] v3_4_address0;
output   v3_4_ce0;
input  [31:0] v3_4_q0;
output  [6:0] v3_5_address0;
output   v3_5_ce0;
input  [31:0] v3_5_q0;
output  [6:0] v3_6_address0;
output   v3_6_ce0;
input  [31:0] v3_6_q0;
output  [6:0] v3_7_address0;
output   v3_7_ce0;
input  [31:0] v3_7_q0;
output  [31:0] grp_fu_525_p_din0;
output  [31:0] grp_fu_525_p_din1;
output  [0:0] grp_fu_525_p_opcode;
input  [31:0] grp_fu_525_p_dout0;
output   grp_fu_525_p_ce;
output  [31:0] grp_fu_1037_p_din0;
output  [31:0] grp_fu_1037_p_din1;
output  [1:0] grp_fu_1037_p_opcode;
input  [31:0] grp_fu_1037_p_dout0;
output   grp_fu_1037_p_ce;
output  [31:0] grp_fu_1041_p_din0;
output  [31:0] grp_fu_1041_p_din1;
output  [1:0] grp_fu_1041_p_opcode;
input  [31:0] grp_fu_1041_p_dout0;
output   grp_fu_1041_p_ce;
output  [31:0] grp_fu_1045_p_din0;
output  [31:0] grp_fu_1045_p_din1;
output  [1:0] grp_fu_1045_p_opcode;
input  [31:0] grp_fu_1045_p_dout0;
output   grp_fu_1045_p_ce;
output  [31:0] grp_fu_1049_p_din0;
output  [31:0] grp_fu_1049_p_din1;
output  [1:0] grp_fu_1049_p_opcode;
input  [31:0] grp_fu_1049_p_dout0;
output   grp_fu_1049_p_ce;
output  [31:0] grp_fu_1053_p_din0;
output  [31:0] grp_fu_1053_p_din1;
output  [1:0] grp_fu_1053_p_opcode;
input  [31:0] grp_fu_1053_p_dout0;
output   grp_fu_1053_p_ce;
output  [31:0] grp_fu_1057_p_din0;
output  [31:0] grp_fu_1057_p_din1;
output  [1:0] grp_fu_1057_p_opcode;
input  [31:0] grp_fu_1057_p_dout0;
output   grp_fu_1057_p_ce;
output  [31:0] grp_fu_1061_p_din0;
output  [31:0] grp_fu_1061_p_din1;
output  [1:0] grp_fu_1061_p_opcode;
input  [31:0] grp_fu_1061_p_dout0;
output   grp_fu_1061_p_ce;
output  [31:0] grp_fu_1033_p_din0;
output  [31:0] grp_fu_1033_p_din1;
input  [31:0] grp_fu_1033_p_dout0;
output   grp_fu_1033_p_ce;
output  [31:0] grp_fu_1065_p_din0;
output  [31:0] grp_fu_1065_p_din1;
input  [31:0] grp_fu_1065_p_dout0;
output   grp_fu_1065_p_ce;
output  [31:0] grp_fu_1069_p_din0;
output  [31:0] grp_fu_1069_p_din1;
input  [31:0] grp_fu_1069_p_dout0;
output   grp_fu_1069_p_ce;
output  [31:0] grp_fu_1073_p_din0;
output  [31:0] grp_fu_1073_p_din1;
input  [31:0] grp_fu_1073_p_dout0;
output   grp_fu_1073_p_ce;
output  [31:0] grp_fu_1077_p_din0;
output  [31:0] grp_fu_1077_p_din1;
input  [31:0] grp_fu_1077_p_dout0;
output   grp_fu_1077_p_ce;
output  [31:0] grp_fu_1081_p_din0;
output  [31:0] grp_fu_1081_p_din1;
input  [31:0] grp_fu_1081_p_dout0;
output   grp_fu_1081_p_ce;
output  [31:0] grp_fu_1085_p_din0;
output  [31:0] grp_fu_1085_p_din1;
input  [31:0] grp_fu_1085_p_dout0;
output   grp_fu_1085_p_ce;
output  [31:0] grp_fu_1089_p_din0;
output  [31:0] grp_fu_1089_p_din1;
input  [31:0] grp_fu_1089_p_dout0;
output   grp_fu_1089_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_388_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v2_0_addr_reg_517;
reg   [6:0] v2_0_addr_reg_517_pp0_iter1_reg;
reg   [6:0] v2_0_addr_reg_517_pp0_iter2_reg;
reg   [6:0] v2_0_addr_reg_517_pp0_iter3_reg;
reg   [6:0] v2_0_addr_reg_517_pp0_iter4_reg;
reg   [6:0] v2_0_addr_reg_517_pp0_iter5_reg;
reg   [6:0] v2_0_addr_reg_517_pp0_iter6_reg;
reg   [6:0] v2_0_addr_reg_517_pp0_iter7_reg;
reg   [6:0] v2_0_addr_reg_517_pp0_iter8_reg;
reg   [6:0] v2_0_addr_reg_517_pp0_iter9_reg;
reg   [6:0] v2_0_addr_reg_517_pp0_iter10_reg;
reg   [6:0] v2_0_addr_reg_517_pp0_iter11_reg;
reg   [6:0] v2_0_addr_reg_517_pp0_iter12_reg;
reg   [6:0] v2_1_addr_reg_528;
reg   [6:0] v2_1_addr_reg_528_pp0_iter1_reg;
reg   [6:0] v2_1_addr_reg_528_pp0_iter2_reg;
reg   [6:0] v2_1_addr_reg_528_pp0_iter3_reg;
reg   [6:0] v2_1_addr_reg_528_pp0_iter4_reg;
reg   [6:0] v2_1_addr_reg_528_pp0_iter5_reg;
reg   [6:0] v2_1_addr_reg_528_pp0_iter6_reg;
reg   [6:0] v2_1_addr_reg_528_pp0_iter7_reg;
reg   [6:0] v2_1_addr_reg_528_pp0_iter8_reg;
reg   [6:0] v2_1_addr_reg_528_pp0_iter9_reg;
reg   [6:0] v2_1_addr_reg_528_pp0_iter10_reg;
reg   [6:0] v2_1_addr_reg_528_pp0_iter11_reg;
reg   [6:0] v2_1_addr_reg_528_pp0_iter12_reg;
reg   [6:0] v2_2_addr_reg_539;
reg   [6:0] v2_2_addr_reg_539_pp0_iter1_reg;
reg   [6:0] v2_2_addr_reg_539_pp0_iter2_reg;
reg   [6:0] v2_2_addr_reg_539_pp0_iter3_reg;
reg   [6:0] v2_2_addr_reg_539_pp0_iter4_reg;
reg   [6:0] v2_2_addr_reg_539_pp0_iter5_reg;
reg   [6:0] v2_2_addr_reg_539_pp0_iter6_reg;
reg   [6:0] v2_2_addr_reg_539_pp0_iter7_reg;
reg   [6:0] v2_2_addr_reg_539_pp0_iter8_reg;
reg   [6:0] v2_2_addr_reg_539_pp0_iter9_reg;
reg   [6:0] v2_2_addr_reg_539_pp0_iter10_reg;
reg   [6:0] v2_2_addr_reg_539_pp0_iter11_reg;
reg   [6:0] v2_2_addr_reg_539_pp0_iter12_reg;
reg   [6:0] v2_3_addr_reg_550;
reg   [6:0] v2_3_addr_reg_550_pp0_iter1_reg;
reg   [6:0] v2_3_addr_reg_550_pp0_iter2_reg;
reg   [6:0] v2_3_addr_reg_550_pp0_iter3_reg;
reg   [6:0] v2_3_addr_reg_550_pp0_iter4_reg;
reg   [6:0] v2_3_addr_reg_550_pp0_iter5_reg;
reg   [6:0] v2_3_addr_reg_550_pp0_iter6_reg;
reg   [6:0] v2_3_addr_reg_550_pp0_iter7_reg;
reg   [6:0] v2_3_addr_reg_550_pp0_iter8_reg;
reg   [6:0] v2_3_addr_reg_550_pp0_iter9_reg;
reg   [6:0] v2_3_addr_reg_550_pp0_iter10_reg;
reg   [6:0] v2_3_addr_reg_550_pp0_iter11_reg;
reg   [6:0] v2_3_addr_reg_550_pp0_iter12_reg;
reg   [6:0] v2_4_addr_reg_561;
reg   [6:0] v2_4_addr_reg_561_pp0_iter1_reg;
reg   [6:0] v2_4_addr_reg_561_pp0_iter2_reg;
reg   [6:0] v2_4_addr_reg_561_pp0_iter3_reg;
reg   [6:0] v2_4_addr_reg_561_pp0_iter4_reg;
reg   [6:0] v2_4_addr_reg_561_pp0_iter5_reg;
reg   [6:0] v2_4_addr_reg_561_pp0_iter6_reg;
reg   [6:0] v2_4_addr_reg_561_pp0_iter7_reg;
reg   [6:0] v2_4_addr_reg_561_pp0_iter8_reg;
reg   [6:0] v2_4_addr_reg_561_pp0_iter9_reg;
reg   [6:0] v2_4_addr_reg_561_pp0_iter10_reg;
reg   [6:0] v2_4_addr_reg_561_pp0_iter11_reg;
reg   [6:0] v2_4_addr_reg_561_pp0_iter12_reg;
reg   [6:0] v2_5_addr_reg_572;
reg   [6:0] v2_5_addr_reg_572_pp0_iter1_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter2_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter3_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter4_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter5_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter6_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter7_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter8_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter9_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter10_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter11_reg;
reg   [6:0] v2_5_addr_reg_572_pp0_iter12_reg;
reg   [6:0] v2_6_addr_reg_583;
reg   [6:0] v2_6_addr_reg_583_pp0_iter1_reg;
reg   [6:0] v2_6_addr_reg_583_pp0_iter2_reg;
reg   [6:0] v2_6_addr_reg_583_pp0_iter3_reg;
reg   [6:0] v2_6_addr_reg_583_pp0_iter4_reg;
reg   [6:0] v2_6_addr_reg_583_pp0_iter5_reg;
reg   [6:0] v2_6_addr_reg_583_pp0_iter6_reg;
reg   [6:0] v2_6_addr_reg_583_pp0_iter7_reg;
reg   [6:0] v2_6_addr_reg_583_pp0_iter8_reg;
reg   [6:0] v2_6_addr_reg_583_pp0_iter9_reg;
reg   [6:0] v2_6_addr_reg_583_pp0_iter10_reg;
reg   [6:0] v2_6_addr_reg_583_pp0_iter11_reg;
reg   [6:0] v2_6_addr_reg_583_pp0_iter12_reg;
reg   [6:0] v2_7_addr_reg_594;
reg   [6:0] v2_7_addr_reg_594_pp0_iter1_reg;
reg   [6:0] v2_7_addr_reg_594_pp0_iter2_reg;
reg   [6:0] v2_7_addr_reg_594_pp0_iter3_reg;
reg   [6:0] v2_7_addr_reg_594_pp0_iter4_reg;
reg   [6:0] v2_7_addr_reg_594_pp0_iter5_reg;
reg   [6:0] v2_7_addr_reg_594_pp0_iter6_reg;
reg   [6:0] v2_7_addr_reg_594_pp0_iter7_reg;
reg   [6:0] v2_7_addr_reg_594_pp0_iter8_reg;
reg   [6:0] v2_7_addr_reg_594_pp0_iter9_reg;
reg   [6:0] v2_7_addr_reg_594_pp0_iter10_reg;
reg   [6:0] v2_7_addr_reg_594_pp0_iter11_reg;
reg   [6:0] v2_7_addr_reg_594_pp0_iter12_reg;
reg   [31:0] v26_reg_600;
reg   [31:0] v26_23_reg_605;
reg   [31:0] v26_24_reg_610;
reg   [31:0] v26_25_reg_615;
reg   [31:0] v26_26_reg_620;
reg   [31:0] v26_27_reg_625;
reg   [31:0] v26_28_reg_630;
reg   [31:0] v26_29_reg_635;
reg   [31:0] v27_reg_640;
reg   [31:0] v2_0_load_reg_645;
reg   [31:0] v27_1_reg_650;
reg   [31:0] v2_1_load_reg_655;
reg   [31:0] v27_2_reg_660;
reg   [31:0] v2_2_load_reg_665;
reg   [31:0] v27_3_reg_670;
reg   [31:0] v2_3_load_reg_675;
reg   [31:0] v27_4_reg_680;
reg   [31:0] v2_4_load_reg_685;
reg   [31:0] v27_5_reg_690;
reg   [31:0] v2_5_load_reg_695;
reg   [31:0] v27_6_reg_700;
reg   [31:0] v2_6_load_reg_705;
reg   [31:0] v27_7_reg_710;
reg   [31:0] v2_7_load_reg_715;
wire   [31:0] v28_fu_437_p1;
wire   [31:0] v28_23_fu_441_p1;
wire   [31:0] v28_24_fu_445_p1;
wire   [31:0] v28_25_fu_449_p1;
wire   [31:0] v28_26_fu_453_p1;
wire   [31:0] v28_27_fu_457_p1;
wire   [31:0] v28_28_fu_461_p1;
wire   [31:0] v28_29_fu_465_p1;
reg   [31:0] v29_reg_760;
reg   [31:0] v29_1_reg_765;
reg   [31:0] v29_2_reg_770;
reg   [31:0] v29_3_reg_775;
reg   [31:0] v29_4_reg_780;
reg   [31:0] v29_5_reg_785;
reg   [31:0] v29_6_reg_790;
reg   [31:0] v29_7_reg_795;
wire   [63:0] zext_ln55_fu_406_p1;
wire    ap_block_pp0_stage0;
reg   [10:0] v25_fu_72;
wire   [10:0] add_ln55_fu_426_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_3;
reg    v3_ce0_local;
reg    v3_1_ce0_local;
reg    v3_2_ce0_local;
reg    v3_3_ce0_local;
reg    v3_4_ce0_local;
reg    v3_5_ce0_local;
reg    v3_6_ce0_local;
reg    v3_7_ce0_local;
reg    v2_0_ce1_local;
reg    v2_0_we0_local;
wire   [31:0] bitcast_ln60_fu_469_p1;
reg    v2_0_ce0_local;
reg    v2_1_ce1_local;
reg    v2_1_we0_local;
wire   [31:0] bitcast_ln60_1_fu_473_p1;
reg    v2_1_ce0_local;
reg    v2_2_ce1_local;
reg    v2_2_we0_local;
wire   [31:0] bitcast_ln60_2_fu_477_p1;
reg    v2_2_ce0_local;
reg    v2_3_ce1_local;
reg    v2_3_we0_local;
wire   [31:0] bitcast_ln60_3_fu_481_p1;
reg    v2_3_ce0_local;
reg    v2_4_ce1_local;
reg    v2_4_we0_local;
wire   [31:0] bitcast_ln60_4_fu_485_p1;
reg    v2_4_ce0_local;
reg    v2_5_ce1_local;
reg    v2_5_we0_local;
wire   [31:0] bitcast_ln60_5_fu_489_p1;
reg    v2_5_ce0_local;
reg    v2_6_ce1_local;
reg    v2_6_we0_local;
wire   [31:0] bitcast_ln60_6_fu_493_p1;
reg    v2_6_ce0_local;
reg    v2_7_ce1_local;
reg    v2_7_we0_local;
wire   [31:0] bitcast_ln60_7_fu_497_p1;
reg    v2_7_ce0_local;
wire   [6:0] lshr_ln2_fu_396_p4;
wire    ap_block_pp0_stage0_00001;
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
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 v25_fu_72 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter12_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_388_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v25_fu_72 <= add_ln55_fu_426_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_fu_72 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        v27_1_reg_650 <= grp_fu_1065_p_dout0;
        v27_2_reg_660 <= grp_fu_1069_p_dout0;
        v27_3_reg_670 <= grp_fu_1073_p_dout0;
        v27_4_reg_680 <= grp_fu_1077_p_dout0;
        v27_5_reg_690 <= grp_fu_1081_p_dout0;
        v27_6_reg_700 <= grp_fu_1085_p_dout0;
        v27_7_reg_710 <= grp_fu_1089_p_dout0;
        v27_reg_640 <= grp_fu_1033_p_dout0;
        v29_1_reg_765 <= grp_fu_1037_p_dout0;
        v29_2_reg_770 <= grp_fu_1041_p_dout0;
        v29_3_reg_775 <= grp_fu_1045_p_dout0;
        v29_4_reg_780 <= grp_fu_1049_p_dout0;
        v29_5_reg_785 <= grp_fu_1053_p_dout0;
        v29_6_reg_790 <= grp_fu_1057_p_dout0;
        v29_7_reg_795 <= grp_fu_1061_p_dout0;
        v29_reg_760 <= grp_fu_525_p_dout0;
        v2_0_addr_reg_517_pp0_iter10_reg <= v2_0_addr_reg_517_pp0_iter9_reg;
        v2_0_addr_reg_517_pp0_iter11_reg <= v2_0_addr_reg_517_pp0_iter10_reg;
        v2_0_addr_reg_517_pp0_iter12_reg <= v2_0_addr_reg_517_pp0_iter11_reg;
        v2_0_addr_reg_517_pp0_iter2_reg <= v2_0_addr_reg_517_pp0_iter1_reg;
        v2_0_addr_reg_517_pp0_iter3_reg <= v2_0_addr_reg_517_pp0_iter2_reg;
        v2_0_addr_reg_517_pp0_iter4_reg <= v2_0_addr_reg_517_pp0_iter3_reg;
        v2_0_addr_reg_517_pp0_iter5_reg <= v2_0_addr_reg_517_pp0_iter4_reg;
        v2_0_addr_reg_517_pp0_iter6_reg <= v2_0_addr_reg_517_pp0_iter5_reg;
        v2_0_addr_reg_517_pp0_iter7_reg <= v2_0_addr_reg_517_pp0_iter6_reg;
        v2_0_addr_reg_517_pp0_iter8_reg <= v2_0_addr_reg_517_pp0_iter7_reg;
        v2_0_addr_reg_517_pp0_iter9_reg <= v2_0_addr_reg_517_pp0_iter8_reg;
        v2_1_addr_reg_528_pp0_iter10_reg <= v2_1_addr_reg_528_pp0_iter9_reg;
        v2_1_addr_reg_528_pp0_iter11_reg <= v2_1_addr_reg_528_pp0_iter10_reg;
        v2_1_addr_reg_528_pp0_iter12_reg <= v2_1_addr_reg_528_pp0_iter11_reg;
        v2_1_addr_reg_528_pp0_iter2_reg <= v2_1_addr_reg_528_pp0_iter1_reg;
        v2_1_addr_reg_528_pp0_iter3_reg <= v2_1_addr_reg_528_pp0_iter2_reg;
        v2_1_addr_reg_528_pp0_iter4_reg <= v2_1_addr_reg_528_pp0_iter3_reg;
        v2_1_addr_reg_528_pp0_iter5_reg <= v2_1_addr_reg_528_pp0_iter4_reg;
        v2_1_addr_reg_528_pp0_iter6_reg <= v2_1_addr_reg_528_pp0_iter5_reg;
        v2_1_addr_reg_528_pp0_iter7_reg <= v2_1_addr_reg_528_pp0_iter6_reg;
        v2_1_addr_reg_528_pp0_iter8_reg <= v2_1_addr_reg_528_pp0_iter7_reg;
        v2_1_addr_reg_528_pp0_iter9_reg <= v2_1_addr_reg_528_pp0_iter8_reg;
        v2_2_addr_reg_539_pp0_iter10_reg <= v2_2_addr_reg_539_pp0_iter9_reg;
        v2_2_addr_reg_539_pp0_iter11_reg <= v2_2_addr_reg_539_pp0_iter10_reg;
        v2_2_addr_reg_539_pp0_iter12_reg <= v2_2_addr_reg_539_pp0_iter11_reg;
        v2_2_addr_reg_539_pp0_iter2_reg <= v2_2_addr_reg_539_pp0_iter1_reg;
        v2_2_addr_reg_539_pp0_iter3_reg <= v2_2_addr_reg_539_pp0_iter2_reg;
        v2_2_addr_reg_539_pp0_iter4_reg <= v2_2_addr_reg_539_pp0_iter3_reg;
        v2_2_addr_reg_539_pp0_iter5_reg <= v2_2_addr_reg_539_pp0_iter4_reg;
        v2_2_addr_reg_539_pp0_iter6_reg <= v2_2_addr_reg_539_pp0_iter5_reg;
        v2_2_addr_reg_539_pp0_iter7_reg <= v2_2_addr_reg_539_pp0_iter6_reg;
        v2_2_addr_reg_539_pp0_iter8_reg <= v2_2_addr_reg_539_pp0_iter7_reg;
        v2_2_addr_reg_539_pp0_iter9_reg <= v2_2_addr_reg_539_pp0_iter8_reg;
        v2_3_addr_reg_550_pp0_iter10_reg <= v2_3_addr_reg_550_pp0_iter9_reg;
        v2_3_addr_reg_550_pp0_iter11_reg <= v2_3_addr_reg_550_pp0_iter10_reg;
        v2_3_addr_reg_550_pp0_iter12_reg <= v2_3_addr_reg_550_pp0_iter11_reg;
        v2_3_addr_reg_550_pp0_iter2_reg <= v2_3_addr_reg_550_pp0_iter1_reg;
        v2_3_addr_reg_550_pp0_iter3_reg <= v2_3_addr_reg_550_pp0_iter2_reg;
        v2_3_addr_reg_550_pp0_iter4_reg <= v2_3_addr_reg_550_pp0_iter3_reg;
        v2_3_addr_reg_550_pp0_iter5_reg <= v2_3_addr_reg_550_pp0_iter4_reg;
        v2_3_addr_reg_550_pp0_iter6_reg <= v2_3_addr_reg_550_pp0_iter5_reg;
        v2_3_addr_reg_550_pp0_iter7_reg <= v2_3_addr_reg_550_pp0_iter6_reg;
        v2_3_addr_reg_550_pp0_iter8_reg <= v2_3_addr_reg_550_pp0_iter7_reg;
        v2_3_addr_reg_550_pp0_iter9_reg <= v2_3_addr_reg_550_pp0_iter8_reg;
        v2_4_addr_reg_561_pp0_iter10_reg <= v2_4_addr_reg_561_pp0_iter9_reg;
        v2_4_addr_reg_561_pp0_iter11_reg <= v2_4_addr_reg_561_pp0_iter10_reg;
        v2_4_addr_reg_561_pp0_iter12_reg <= v2_4_addr_reg_561_pp0_iter11_reg;
        v2_4_addr_reg_561_pp0_iter2_reg <= v2_4_addr_reg_561_pp0_iter1_reg;
        v2_4_addr_reg_561_pp0_iter3_reg <= v2_4_addr_reg_561_pp0_iter2_reg;
        v2_4_addr_reg_561_pp0_iter4_reg <= v2_4_addr_reg_561_pp0_iter3_reg;
        v2_4_addr_reg_561_pp0_iter5_reg <= v2_4_addr_reg_561_pp0_iter4_reg;
        v2_4_addr_reg_561_pp0_iter6_reg <= v2_4_addr_reg_561_pp0_iter5_reg;
        v2_4_addr_reg_561_pp0_iter7_reg <= v2_4_addr_reg_561_pp0_iter6_reg;
        v2_4_addr_reg_561_pp0_iter8_reg <= v2_4_addr_reg_561_pp0_iter7_reg;
        v2_4_addr_reg_561_pp0_iter9_reg <= v2_4_addr_reg_561_pp0_iter8_reg;
        v2_5_addr_reg_572_pp0_iter10_reg <= v2_5_addr_reg_572_pp0_iter9_reg;
        v2_5_addr_reg_572_pp0_iter11_reg <= v2_5_addr_reg_572_pp0_iter10_reg;
        v2_5_addr_reg_572_pp0_iter12_reg <= v2_5_addr_reg_572_pp0_iter11_reg;
        v2_5_addr_reg_572_pp0_iter2_reg <= v2_5_addr_reg_572_pp0_iter1_reg;
        v2_5_addr_reg_572_pp0_iter3_reg <= v2_5_addr_reg_572_pp0_iter2_reg;
        v2_5_addr_reg_572_pp0_iter4_reg <= v2_5_addr_reg_572_pp0_iter3_reg;
        v2_5_addr_reg_572_pp0_iter5_reg <= v2_5_addr_reg_572_pp0_iter4_reg;
        v2_5_addr_reg_572_pp0_iter6_reg <= v2_5_addr_reg_572_pp0_iter5_reg;
        v2_5_addr_reg_572_pp0_iter7_reg <= v2_5_addr_reg_572_pp0_iter6_reg;
        v2_5_addr_reg_572_pp0_iter8_reg <= v2_5_addr_reg_572_pp0_iter7_reg;
        v2_5_addr_reg_572_pp0_iter9_reg <= v2_5_addr_reg_572_pp0_iter8_reg;
        v2_6_addr_reg_583_pp0_iter10_reg <= v2_6_addr_reg_583_pp0_iter9_reg;
        v2_6_addr_reg_583_pp0_iter11_reg <= v2_6_addr_reg_583_pp0_iter10_reg;
        v2_6_addr_reg_583_pp0_iter12_reg <= v2_6_addr_reg_583_pp0_iter11_reg;
        v2_6_addr_reg_583_pp0_iter2_reg <= v2_6_addr_reg_583_pp0_iter1_reg;
        v2_6_addr_reg_583_pp0_iter3_reg <= v2_6_addr_reg_583_pp0_iter2_reg;
        v2_6_addr_reg_583_pp0_iter4_reg <= v2_6_addr_reg_583_pp0_iter3_reg;
        v2_6_addr_reg_583_pp0_iter5_reg <= v2_6_addr_reg_583_pp0_iter4_reg;
        v2_6_addr_reg_583_pp0_iter6_reg <= v2_6_addr_reg_583_pp0_iter5_reg;
        v2_6_addr_reg_583_pp0_iter7_reg <= v2_6_addr_reg_583_pp0_iter6_reg;
        v2_6_addr_reg_583_pp0_iter8_reg <= v2_6_addr_reg_583_pp0_iter7_reg;
        v2_6_addr_reg_583_pp0_iter9_reg <= v2_6_addr_reg_583_pp0_iter8_reg;
        v2_7_addr_reg_594_pp0_iter10_reg <= v2_7_addr_reg_594_pp0_iter9_reg;
        v2_7_addr_reg_594_pp0_iter11_reg <= v2_7_addr_reg_594_pp0_iter10_reg;
        v2_7_addr_reg_594_pp0_iter12_reg <= v2_7_addr_reg_594_pp0_iter11_reg;
        v2_7_addr_reg_594_pp0_iter2_reg <= v2_7_addr_reg_594_pp0_iter1_reg;
        v2_7_addr_reg_594_pp0_iter3_reg <= v2_7_addr_reg_594_pp0_iter2_reg;
        v2_7_addr_reg_594_pp0_iter4_reg <= v2_7_addr_reg_594_pp0_iter3_reg;
        v2_7_addr_reg_594_pp0_iter5_reg <= v2_7_addr_reg_594_pp0_iter4_reg;
        v2_7_addr_reg_594_pp0_iter6_reg <= v2_7_addr_reg_594_pp0_iter5_reg;
        v2_7_addr_reg_594_pp0_iter7_reg <= v2_7_addr_reg_594_pp0_iter6_reg;
        v2_7_addr_reg_594_pp0_iter8_reg <= v2_7_addr_reg_594_pp0_iter7_reg;
        v2_7_addr_reg_594_pp0_iter9_reg <= v2_7_addr_reg_594_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        v26_23_reg_605 <= v3_1_q0;
        v26_24_reg_610 <= v3_2_q0;
        v26_25_reg_615 <= v3_3_q0;
        v26_26_reg_620 <= v3_4_q0;
        v26_27_reg_625 <= v3_5_q0;
        v26_28_reg_630 <= v3_6_q0;
        v26_29_reg_635 <= v3_7_q0;
        v26_reg_600 <= v3_q0;
        v2_0_addr_reg_517 <= zext_ln55_fu_406_p1;
        v2_0_addr_reg_517_pp0_iter1_reg <= v2_0_addr_reg_517;
        v2_1_addr_reg_528 <= zext_ln55_fu_406_p1;
        v2_1_addr_reg_528_pp0_iter1_reg <= v2_1_addr_reg_528;
        v2_2_addr_reg_539 <= zext_ln55_fu_406_p1;
        v2_2_addr_reg_539_pp0_iter1_reg <= v2_2_addr_reg_539;
        v2_3_addr_reg_550 <= zext_ln55_fu_406_p1;
        v2_3_addr_reg_550_pp0_iter1_reg <= v2_3_addr_reg_550;
        v2_4_addr_reg_561 <= zext_ln55_fu_406_p1;
        v2_4_addr_reg_561_pp0_iter1_reg <= v2_4_addr_reg_561;
        v2_5_addr_reg_572 <= zext_ln55_fu_406_p1;
        v2_5_addr_reg_572_pp0_iter1_reg <= v2_5_addr_reg_572;
        v2_6_addr_reg_583 <= zext_ln55_fu_406_p1;
        v2_6_addr_reg_583_pp0_iter1_reg <= v2_6_addr_reg_583;
        v2_7_addr_reg_594 <= zext_ln55_fu_406_p1;
        v2_7_addr_reg_594_pp0_iter1_reg <= v2_7_addr_reg_594;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2_0_load_reg_645 <= v2_0_q1;
        v2_1_load_reg_655 <= v2_1_q1;
        v2_2_load_reg_665 <= v2_2_q1;
        v2_3_load_reg_675 <= v2_3_q1;
        v2_4_load_reg_685 <= v2_4_q1;
        v2_5_load_reg_695 <= v2_5_q1;
        v2_6_load_reg_705 <= v2_6_q1;
        v2_7_load_reg_715 <= v2_7_q1;
    end
end
always @ (*) begin
    if (((tmp_fu_388_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter12_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v25_3 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_3 = v25_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_0_ce1_local = 1'b1;
    end else begin
        v2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_1_ce1_local = 1'b1;
    end else begin
        v2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_2_ce1_local = 1'b1;
    end else begin
        v2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_2_we0_local = 1'b1;
    end else begin
        v2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_3_ce1_local = 1'b1;
    end else begin
        v2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_3_we0_local = 1'b1;
    end else begin
        v2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_4_ce0_local = 1'b1;
    end else begin
        v2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_4_ce1_local = 1'b1;
    end else begin
        v2_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_4_we0_local = 1'b1;
    end else begin
        v2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_5_ce0_local = 1'b1;
    end else begin
        v2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_5_ce1_local = 1'b1;
    end else begin
        v2_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_5_we0_local = 1'b1;
    end else begin
        v2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_6_ce0_local = 1'b1;
    end else begin
        v2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_6_ce1_local = 1'b1;
    end else begin
        v2_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_6_we0_local = 1'b1;
    end else begin
        v2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_7_ce0_local = 1'b1;
    end else begin
        v2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_7_ce1_local = 1'b1;
    end else begin
        v2_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_7_we0_local = 1'b1;
    end else begin
        v2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_4_ce0_local = 1'b1;
    end else begin
        v3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_5_ce0_local = 1'b1;
    end else begin
        v3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_6_ce0_local = 1'b1;
    end else begin
        v3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_7_ce0_local = 1'b1;
    end else begin
        v3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln55_fu_426_p2 = (ap_sig_allocacmp_v25_3 + 11'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_1_fu_473_p1 = v29_1_reg_765;
assign bitcast_ln60_2_fu_477_p1 = v29_2_reg_770;
assign bitcast_ln60_3_fu_481_p1 = v29_3_reg_775;
assign bitcast_ln60_4_fu_485_p1 = v29_4_reg_780;
assign bitcast_ln60_5_fu_489_p1 = v29_5_reg_785;
assign bitcast_ln60_6_fu_493_p1 = v29_6_reg_790;
assign bitcast_ln60_7_fu_497_p1 = v29_7_reg_795;
assign bitcast_ln60_fu_469_p1 = v29_reg_760;
assign grp_fu_1033_p_ce = 1'b1;
assign grp_fu_1033_p_din0 = v26_reg_600;
assign grp_fu_1033_p_din1 = 32'd3345637376;
assign grp_fu_1037_p_ce = 1'b1;
assign grp_fu_1037_p_din0 = v28_23_fu_441_p1;
assign grp_fu_1037_p_din1 = v27_1_reg_650;
assign grp_fu_1037_p_opcode = 2'd0;
assign grp_fu_1041_p_ce = 1'b1;
assign grp_fu_1041_p_din0 = v28_24_fu_445_p1;
assign grp_fu_1041_p_din1 = v27_2_reg_660;
assign grp_fu_1041_p_opcode = 2'd0;
assign grp_fu_1045_p_ce = 1'b1;
assign grp_fu_1045_p_din0 = v28_25_fu_449_p1;
assign grp_fu_1045_p_din1 = v27_3_reg_670;
assign grp_fu_1045_p_opcode = 2'd0;
assign grp_fu_1049_p_ce = 1'b1;
assign grp_fu_1049_p_din0 = v28_26_fu_453_p1;
assign grp_fu_1049_p_din1 = v27_4_reg_680;
assign grp_fu_1049_p_opcode = 2'd0;
assign grp_fu_1053_p_ce = 1'b1;
assign grp_fu_1053_p_din0 = v28_27_fu_457_p1;
assign grp_fu_1053_p_din1 = v27_5_reg_690;
assign grp_fu_1053_p_opcode = 2'd0;
assign grp_fu_1057_p_ce = 1'b1;
assign grp_fu_1057_p_din0 = v28_28_fu_461_p1;
assign grp_fu_1057_p_din1 = v27_6_reg_700;
assign grp_fu_1057_p_opcode = 2'd0;
assign grp_fu_1061_p_ce = 1'b1;
assign grp_fu_1061_p_din0 = v28_29_fu_465_p1;
assign grp_fu_1061_p_din1 = v27_7_reg_710;
assign grp_fu_1061_p_opcode = 2'd0;
assign grp_fu_1065_p_ce = 1'b1;
assign grp_fu_1065_p_din0 = v26_23_reg_605;
assign grp_fu_1065_p_din1 = 32'd3345637376;
assign grp_fu_1069_p_ce = 1'b1;
assign grp_fu_1069_p_din0 = v26_24_reg_610;
assign grp_fu_1069_p_din1 = 32'd3345637376;
assign grp_fu_1073_p_ce = 1'b1;
assign grp_fu_1073_p_din0 = v26_25_reg_615;
assign grp_fu_1073_p_din1 = 32'd3345637376;
assign grp_fu_1077_p_ce = 1'b1;
assign grp_fu_1077_p_din0 = v26_26_reg_620;
assign grp_fu_1077_p_din1 = 32'd3345637376;
assign grp_fu_1081_p_ce = 1'b1;
assign grp_fu_1081_p_din0 = v26_27_reg_625;
assign grp_fu_1081_p_din1 = 32'd3345637376;
assign grp_fu_1085_p_ce = 1'b1;
assign grp_fu_1085_p_din0 = v26_28_reg_630;
assign grp_fu_1085_p_din1 = 32'd3345637376;
assign grp_fu_1089_p_ce = 1'b1;
assign grp_fu_1089_p_din0 = v26_29_reg_635;
assign grp_fu_1089_p_din1 = 32'd3345637376;
assign grp_fu_525_p_ce = 1'b1;
assign grp_fu_525_p_din0 = v28_fu_437_p1;
assign grp_fu_525_p_din1 = v27_reg_640;
assign grp_fu_525_p_opcode = 2'd0;
assign lshr_ln2_fu_396_p4 = {{ap_sig_allocacmp_v25_3[9:3]}};
assign tmp_fu_388_p3 = ap_sig_allocacmp_v25_3[32'd10];
assign v28_23_fu_441_p1 = v2_1_load_reg_655;
assign v28_24_fu_445_p1 = v2_2_load_reg_665;
assign v28_25_fu_449_p1 = v2_3_load_reg_675;
assign v28_26_fu_453_p1 = v2_4_load_reg_685;
assign v28_27_fu_457_p1 = v2_5_load_reg_695;
assign v28_28_fu_461_p1 = v2_6_load_reg_705;
assign v28_29_fu_465_p1 = v2_7_load_reg_715;
assign v28_fu_437_p1 = v2_0_load_reg_645;
assign v2_0_address0 = v2_0_addr_reg_517_pp0_iter12_reg;
assign v2_0_address1 = v2_0_addr_reg_517_pp0_iter3_reg;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = bitcast_ln60_fu_469_p1;
assign v2_0_we0 = v2_0_we0_local;
assign v2_1_address0 = v2_1_addr_reg_528_pp0_iter12_reg;
assign v2_1_address1 = v2_1_addr_reg_528_pp0_iter3_reg;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = bitcast_ln60_1_fu_473_p1;
assign v2_1_we0 = v2_1_we0_local;
assign v2_2_address0 = v2_2_addr_reg_539_pp0_iter12_reg;
assign v2_2_address1 = v2_2_addr_reg_539_pp0_iter3_reg;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_2_ce1 = v2_2_ce1_local;
assign v2_2_d0 = bitcast_ln60_2_fu_477_p1;
assign v2_2_we0 = v2_2_we0_local;
assign v2_3_address0 = v2_3_addr_reg_550_pp0_iter12_reg;
assign v2_3_address1 = v2_3_addr_reg_550_pp0_iter3_reg;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_3_ce1 = v2_3_ce1_local;
assign v2_3_d0 = bitcast_ln60_3_fu_481_p1;
assign v2_3_we0 = v2_3_we0_local;
assign v2_4_address0 = v2_4_addr_reg_561_pp0_iter12_reg;
assign v2_4_address1 = v2_4_addr_reg_561_pp0_iter3_reg;
assign v2_4_ce0 = v2_4_ce0_local;
assign v2_4_ce1 = v2_4_ce1_local;
assign v2_4_d0 = bitcast_ln60_4_fu_485_p1;
assign v2_4_we0 = v2_4_we0_local;
assign v2_5_address0 = v2_5_addr_reg_572_pp0_iter12_reg;
assign v2_5_address1 = v2_5_addr_reg_572_pp0_iter3_reg;
assign v2_5_ce0 = v2_5_ce0_local;
assign v2_5_ce1 = v2_5_ce1_local;
assign v2_5_d0 = bitcast_ln60_5_fu_489_p1;
assign v2_5_we0 = v2_5_we0_local;
assign v2_6_address0 = v2_6_addr_reg_583_pp0_iter12_reg;
assign v2_6_address1 = v2_6_addr_reg_583_pp0_iter3_reg;
assign v2_6_ce0 = v2_6_ce0_local;
assign v2_6_ce1 = v2_6_ce1_local;
assign v2_6_d0 = bitcast_ln60_6_fu_493_p1;
assign v2_6_we0 = v2_6_we0_local;
assign v2_7_address0 = v2_7_addr_reg_594_pp0_iter12_reg;
assign v2_7_address1 = v2_7_addr_reg_594_pp0_iter3_reg;
assign v2_7_ce0 = v2_7_ce0_local;
assign v2_7_ce1 = v2_7_ce1_local;
assign v2_7_d0 = bitcast_ln60_7_fu_497_p1;
assign v2_7_we0 = v2_7_we0_local;
assign v3_1_address0 = zext_ln55_fu_406_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_2_address0 = zext_ln55_fu_406_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_3_address0 = zext_ln55_fu_406_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_4_address0 = zext_ln55_fu_406_p1;
assign v3_4_ce0 = v3_4_ce0_local;
assign v3_5_address0 = zext_ln55_fu_406_p1;
assign v3_5_ce0 = v3_5_ce0_local;
assign v3_6_address0 = zext_ln55_fu_406_p1;
assign v3_6_ce0 = v3_6_ce0_local;
assign v3_7_address0 = zext_ln55_fu_406_p1;
assign v3_7_ce0 = v3_7_ce0_local;
assign v3_address0 = zext_ln55_fu_406_p1;
assign v3_ce0 = v3_ce0_local;
assign zext_ln55_fu_406_p1 = lshr_ln2_fu_396_p4;
endmodule 