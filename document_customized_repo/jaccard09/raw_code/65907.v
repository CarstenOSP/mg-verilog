module backprop_get_oracle_activations2_43_44_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_q1,weights3_3_address0,weights3_3_ce0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_q1,output_differences_0_0_val,output_differences_0_1_val,output_differences_0_2_val,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,oracle_activations_2_address0,oracle_activations_2_ce0,oracle_activations_2_we0,oracle_activations_2_d0,oracle_activations_3_address0,oracle_activations_3_ce0,oracle_activations_3_we0,oracle_activations_3_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_0_address1,dactivations_0_ce1,dactivations_0_q1,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_1_address1,dactivations_1_ce1,dactivations_1_q1,dactivations_2_address0,dactivations_2_ce0,dactivations_2_q0,dactivations_2_address1,dactivations_2_ce1,dactivations_2_q1,dactivations_3_address0,dactivations_3_ce0,dactivations_3_q0,dactivations_3_address1,dactivations_3_ce1,dactivations_3_q1,grp_fu_3491_p_din0,grp_fu_3491_p_din1,grp_fu_3491_p_opcode,grp_fu_3491_p_dout0,grp_fu_3491_p_ce,grp_fu_3495_p_din0,grp_fu_3495_p_din1,grp_fu_3495_p_opcode,grp_fu_3495_p_dout0,grp_fu_3495_p_ce,grp_fu_3499_p_din0,grp_fu_3499_p_din1,grp_fu_3499_p_opcode,grp_fu_3499_p_dout0,grp_fu_3499_p_ce,grp_fu_3503_p_din0,grp_fu_3503_p_din1,grp_fu_3503_p_opcode,grp_fu_3503_p_dout0,grp_fu_3503_p_ce,grp_fu_3507_p_din0,grp_fu_3507_p_din1,grp_fu_3507_p_opcode,grp_fu_3507_p_dout0,grp_fu_3507_p_ce,grp_fu_3511_p_din0,grp_fu_3511_p_din1,grp_fu_3511_p_opcode,grp_fu_3511_p_dout0,grp_fu_3511_p_ce,grp_fu_3515_p_din0,grp_fu_3515_p_din1,grp_fu_3515_p_opcode,grp_fu_3515_p_dout0,grp_fu_3515_p_ce,grp_fu_3519_p_din0,grp_fu_3519_p_din1,grp_fu_3519_p_opcode,grp_fu_3519_p_dout0,grp_fu_3519_p_ce,grp_fu_3559_p_din0,grp_fu_3559_p_din1,grp_fu_3559_p_dout0,grp_fu_3559_p_ce,grp_fu_3563_p_din0,grp_fu_3563_p_din1,grp_fu_3563_p_dout0,grp_fu_3563_p_ce,grp_fu_3567_p_din0,grp_fu_3567_p_din1,grp_fu_3567_p_dout0,grp_fu_3567_p_ce,grp_fu_3571_p_din0,grp_fu_3571_p_din1,grp_fu_3571_p_dout0,grp_fu_3571_p_ce,grp_fu_3575_p_din0,grp_fu_3575_p_din1,grp_fu_3575_p_dout0,grp_fu_3575_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [5:0] weights3_0_address1;
output   weights3_0_ce1;
input  [63:0] weights3_0_q1;
output  [5:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [5:0] weights3_1_address1;
output   weights3_1_ce1;
input  [63:0] weights3_1_q1;
output  [5:0] weights3_2_address0;
output   weights3_2_ce0;
input  [63:0] weights3_2_q0;
output  [5:0] weights3_2_address1;
output   weights3_2_ce1;
input  [63:0] weights3_2_q1;
output  [5:0] weights3_3_address0;
output   weights3_3_ce0;
input  [63:0] weights3_3_q0;
output  [5:0] weights3_3_address1;
output   weights3_3_ce1;
input  [63:0] weights3_3_q1;
input  [63:0] output_differences_0_0_val;
input  [63:0] output_differences_0_1_val;
input  [63:0] output_differences_0_2_val;
output  [3:0] oracle_activations_0_address0;
output   oracle_activations_0_ce0;
output   oracle_activations_0_we0;
output  [63:0] oracle_activations_0_d0;
output  [3:0] oracle_activations_1_address0;
output   oracle_activations_1_ce0;
output   oracle_activations_1_we0;
output  [63:0] oracle_activations_1_d0;
output  [3:0] oracle_activations_2_address0;
output   oracle_activations_2_ce0;
output   oracle_activations_2_we0;
output  [63:0] oracle_activations_2_d0;
output  [3:0] oracle_activations_3_address0;
output   oracle_activations_3_ce0;
output   oracle_activations_3_we0;
output  [63:0] oracle_activations_3_d0;
output  [3:0] dactivations_0_address0;
output   dactivations_0_ce0;
input  [63:0] dactivations_0_q0;
output  [3:0] dactivations_0_address1;
output   dactivations_0_ce1;
input  [63:0] dactivations_0_q1;
output  [3:0] dactivations_1_address0;
output   dactivations_1_ce0;
input  [63:0] dactivations_1_q0;
output  [3:0] dactivations_1_address1;
output   dactivations_1_ce1;
input  [63:0] dactivations_1_q1;
output  [3:0] dactivations_2_address0;
output   dactivations_2_ce0;
input  [63:0] dactivations_2_q0;
output  [3:0] dactivations_2_address1;
output   dactivations_2_ce1;
input  [63:0] dactivations_2_q1;
output  [3:0] dactivations_3_address0;
output   dactivations_3_ce0;
input  [63:0] dactivations_3_q0;
output  [3:0] dactivations_3_address1;
output   dactivations_3_ce1;
input  [63:0] dactivations_3_q1;
output  [63:0] grp_fu_3491_p_din0;
output  [63:0] grp_fu_3491_p_din1;
output  [0:0] grp_fu_3491_p_opcode;
input  [63:0] grp_fu_3491_p_dout0;
output   grp_fu_3491_p_ce;
output  [63:0] grp_fu_3495_p_din0;
output  [63:0] grp_fu_3495_p_din1;
output  [0:0] grp_fu_3495_p_opcode;
input  [63:0] grp_fu_3495_p_dout0;
output   grp_fu_3495_p_ce;
output  [63:0] grp_fu_3499_p_din0;
output  [63:0] grp_fu_3499_p_din1;
output  [0:0] grp_fu_3499_p_opcode;
input  [63:0] grp_fu_3499_p_dout0;
output   grp_fu_3499_p_ce;
output  [63:0] grp_fu_3503_p_din0;
output  [63:0] grp_fu_3503_p_din1;
output  [0:0] grp_fu_3503_p_opcode;
input  [63:0] grp_fu_3503_p_dout0;
output   grp_fu_3503_p_ce;
output  [63:0] grp_fu_3507_p_din0;
output  [63:0] grp_fu_3507_p_din1;
output  [0:0] grp_fu_3507_p_opcode;
input  [63:0] grp_fu_3507_p_dout0;
output   grp_fu_3507_p_ce;
output  [63:0] grp_fu_3511_p_din0;
output  [63:0] grp_fu_3511_p_din1;
output  [0:0] grp_fu_3511_p_opcode;
input  [63:0] grp_fu_3511_p_dout0;
output   grp_fu_3511_p_ce;
output  [63:0] grp_fu_3515_p_din0;
output  [63:0] grp_fu_3515_p_din1;
output  [0:0] grp_fu_3515_p_opcode;
input  [63:0] grp_fu_3515_p_dout0;
output   grp_fu_3515_p_ce;
output  [63:0] grp_fu_3519_p_din0;
output  [63:0] grp_fu_3519_p_din1;
output  [0:0] grp_fu_3519_p_opcode;
input  [63:0] grp_fu_3519_p_dout0;
output   grp_fu_3519_p_ce;
output  [63:0] grp_fu_3559_p_din0;
output  [63:0] grp_fu_3559_p_din1;
input  [63:0] grp_fu_3559_p_dout0;
output   grp_fu_3559_p_ce;
output  [63:0] grp_fu_3563_p_din0;
output  [63:0] grp_fu_3563_p_din1;
input  [63:0] grp_fu_3563_p_dout0;
output   grp_fu_3563_p_ce;
output  [63:0] grp_fu_3567_p_din0;
output  [63:0] grp_fu_3567_p_din1;
input  [63:0] grp_fu_3567_p_dout0;
output   grp_fu_3567_p_ce;
output  [63:0] grp_fu_3571_p_din0;
output  [63:0] grp_fu_3571_p_din1;
input  [63:0] grp_fu_3571_p_dout0;
output   grp_fu_3571_p_ce;
output  [63:0] grp_fu_3575_p_din0;
output  [63:0] grp_fu_3575_p_din1;
input  [63:0] grp_fu_3575_p_dout0;
output   grp_fu_3575_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
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
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_34_reg_1226;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_636;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_640;
reg   [63:0] reg_644;
reg   [63:0] reg_648;
reg   [63:0] reg_652;
reg   [63:0] reg_656;
reg   [63:0] reg_660;
reg   [63:0] reg_664;
wire   [63:0] grp_fu_624_p2;
reg   [63:0] reg_668;
wire   [63:0] grp_fu_628_p2;
reg   [63:0] reg_675;
wire   [63:0] grp_fu_632_p2;
reg   [63:0] reg_682;
reg   [6:0] i_8_reg_1220;
reg   [0:0] tmp_34_reg_1226_pp0_iter1_reg;
reg   [0:0] tmp_34_reg_1226_pp0_iter2_reg;
reg   [0:0] tmp_34_reg_1226_pp0_iter3_reg;
reg   [0:0] tmp_34_reg_1226_pp0_iter4_reg;
reg   [0:0] tmp_34_reg_1226_pp0_iter5_reg;
reg   [0:0] tmp_34_reg_1226_pp0_iter6_reg;
reg   [0:0] tmp_34_reg_1226_pp0_iter7_reg;
reg   [0:0] tmp_34_reg_1226_pp0_iter8_reg;
reg   [0:0] tmp_34_reg_1226_pp0_iter9_reg;
reg   [0:0] tmp_34_reg_1226_pp0_iter10_reg;
reg   [0:0] tmp_34_reg_1226_pp0_iter11_reg;
reg   [0:0] tmp_34_reg_1226_pp0_iter12_reg;
wire   [3:0] lshr_ln_fu_704_p4;
reg   [3:0] lshr_ln_reg_1230;
reg   [3:0] lshr_ln_reg_1230_pp0_iter1_reg;
reg   [3:0] lshr_ln_reg_1230_pp0_iter2_reg;
reg   [3:0] lshr_ln_reg_1230_pp0_iter3_reg;
reg   [3:0] lshr_ln_reg_1230_pp0_iter4_reg;
reg   [3:0] lshr_ln_reg_1230_pp0_iter5_reg;
reg   [3:0] lshr_ln_reg_1230_pp0_iter6_reg;
reg   [3:0] lshr_ln_reg_1230_pp0_iter7_reg;
reg   [3:0] lshr_ln_reg_1230_pp0_iter8_reg;
reg   [3:0] lshr_ln_reg_1230_pp0_iter9_reg;
wire   [5:0] sub_ln85_fu_726_p2;
reg   [5:0] sub_ln85_reg_1235;
wire   [7:0] empty_fu_769_p2;
reg   [7:0] empty_reg_1255;
wire   [63:0] zext_ln87_2_fu_846_p1;
reg   [63:0] zext_ln87_2_reg_1275;
wire   [63:0] zext_ln87_3_fu_856_p1;
reg   [63:0] zext_ln87_3_reg_1281;
wire   [63:0] zext_ln85_6_fu_896_p1;
reg   [63:0] zext_ln85_6_reg_1287;
wire   [63:0] zext_ln85_7_fu_916_p1;
reg   [63:0] zext_ln85_7_reg_1292;
wire   [63:0] bitcast_ln85_fu_921_p1;
wire   [63:0] bitcast_ln85_1_fu_926_p1;
wire   [63:0] bitcast_ln85_2_fu_931_p1;
reg   [2:0] tmp_s_reg_1353;
reg   [2:0] tmp_s_reg_1353_pp0_iter1_reg;
reg   [2:0] tmp_s_reg_1353_pp0_iter2_reg;
reg   [2:0] tmp_s_reg_1353_pp0_iter3_reg;
reg   [2:0] tmp_s_reg_1353_pp0_iter4_reg;
reg   [2:0] tmp_s_reg_1353_pp0_iter5_reg;
reg   [2:0] tmp_s_reg_1353_pp0_iter6_reg;
reg   [2:0] tmp_s_reg_1353_pp0_iter7_reg;
reg   [2:0] tmp_s_reg_1353_pp0_iter8_reg;
reg   [2:0] tmp_s_reg_1353_pp0_iter9_reg;
wire   [63:0] bitcast_ln85_3_fu_1005_p1;
wire   [63:0] bitcast_ln85_4_fu_1060_p1;
wire   [63:0] bitcast_ln85_6_fu_1065_p1;
wire   [63:0] bitcast_ln85_7_fu_1070_p1;
wire   [63:0] bitcast_ln85_9_fu_1075_p1;
wire   [63:0] bitcast_ln85_12_fu_1080_p1;
wire   [63:0] bitcast_ln85_15_fu_1085_p1;
wire   [63:0] bitcast_ln85_18_fu_1090_p1;
wire   [63:0] bitcast_ln85_21_fu_1095_p1;
wire   [63:0] bitcast_ln85_5_fu_1100_p1;
wire   [63:0] bitcast_ln85_8_fu_1105_p1;
wire   [63:0] bitcast_ln85_10_fu_1110_p1;
wire   [63:0] bitcast_ln85_11_fu_1115_p1;
wire   [63:0] bitcast_ln85_13_fu_1120_p1;
wire   [63:0] bitcast_ln85_16_fu_1125_p1;
wire   [63:0] bitcast_ln85_19_fu_1130_p1;
wire   [63:0] bitcast_ln85_22_fu_1135_p1;
wire   [63:0] bitcast_ln85_14_fu_1140_p1;
wire   [63:0] bitcast_ln85_17_fu_1145_p1;
wire   [63:0] bitcast_ln85_20_fu_1150_p1;
wire   [63:0] bitcast_ln85_23_fu_1155_p1;
reg   [63:0] mul8_reg_1523;
reg   [63:0] mul8_s_reg_1528;
reg   [63:0] mul8_s_reg_1528_pp0_iter3_reg;
reg   [63:0] mul8_s_reg_1528_pp0_iter4_reg;
reg   [63:0] mul8_19_reg_1533;
reg   [63:0] mul8_19_reg_1533_pp0_iter3_reg;
reg   [63:0] mul8_19_reg_1533_pp0_iter4_reg;
reg   [63:0] mul8_19_reg_1533_pp0_iter5_reg;
reg   [63:0] mul8_19_reg_1533_pp0_iter6_reg;
reg   [63:0] mul8_19_reg_1533_pp0_iter7_reg;
reg   [63:0] mul8_1_reg_1538;
reg   [63:0] mul8_1_1_reg_1543;
reg   [63:0] mul8_1_1_reg_1543_pp0_iter4_reg;
reg   [63:0] mul8_1_1_reg_1543_pp0_iter5_reg;
reg   [63:0] mul8_2_reg_1548;
reg   [63:0] mul8_2_1_reg_1553;
reg   [63:0] mul8_2_1_reg_1553_pp0_iter4_reg;
reg   [63:0] mul8_2_1_reg_1553_pp0_iter5_reg;
reg   [63:0] mul8_3_reg_1558;
reg   [63:0] mul8_4_reg_1563;
wire   [63:0] grp_fu_612_p2;
reg   [63:0] mul8_5_reg_1568;
wire   [63:0] grp_fu_616_p2;
reg   [63:0] mul8_6_reg_1573;
wire   [63:0] grp_fu_620_p2;
reg   [63:0] mul8_7_reg_1578;
reg   [63:0] mul8_1_2_reg_1583;
reg   [63:0] mul8_1_2_reg_1583_pp0_iter4_reg;
reg   [63:0] mul8_1_2_reg_1583_pp0_iter5_reg;
reg   [63:0] mul8_1_2_reg_1583_pp0_iter6_reg;
reg   [63:0] mul8_1_2_reg_1583_pp0_iter7_reg;
reg   [63:0] mul8_2_2_reg_1588;
reg   [63:0] mul8_2_2_reg_1588_pp0_iter4_reg;
reg   [63:0] mul8_2_2_reg_1588_pp0_iter5_reg;
reg   [63:0] mul8_2_2_reg_1588_pp0_iter6_reg;
reg   [63:0] mul8_2_2_reg_1588_pp0_iter7_reg;
reg   [63:0] mul8_2_2_reg_1588_pp0_iter8_reg;
reg   [63:0] mul8_3_1_reg_1593;
reg   [63:0] mul8_3_1_reg_1593_pp0_iter4_reg;
reg   [63:0] mul8_3_1_reg_1593_pp0_iter5_reg;
reg   [63:0] mul8_3_2_reg_1598;
reg   [63:0] mul8_3_2_reg_1598_pp0_iter4_reg;
reg   [63:0] mul8_3_2_reg_1598_pp0_iter5_reg;
reg   [63:0] mul8_3_2_reg_1598_pp0_iter6_reg;
reg   [63:0] mul8_3_2_reg_1598_pp0_iter7_reg;
reg   [63:0] mul8_3_2_reg_1598_pp0_iter8_reg;
reg   [63:0] mul8_4_1_reg_1603;
reg   [63:0] mul8_4_1_reg_1603_pp0_iter4_reg;
reg   [63:0] mul8_4_1_reg_1603_pp0_iter5_reg;
reg   [63:0] mul8_5_1_reg_1608;
reg   [63:0] mul8_5_1_reg_1608_pp0_iter4_reg;
reg   [63:0] mul8_5_1_reg_1608_pp0_iter5_reg;
reg   [63:0] mul8_6_1_reg_1613;
reg   [63:0] mul8_6_1_reg_1613_pp0_iter4_reg;
reg   [63:0] mul8_6_1_reg_1613_pp0_iter5_reg;
reg   [63:0] mul8_7_1_reg_1618;
reg   [63:0] mul8_7_1_reg_1618_pp0_iter4_reg;
reg   [63:0] mul8_7_1_reg_1618_pp0_iter5_reg;
reg   [63:0] mul8_4_2_reg_1623;
reg   [63:0] mul8_4_2_reg_1623_pp0_iter4_reg;
reg   [63:0] mul8_4_2_reg_1623_pp0_iter5_reg;
reg   [63:0] mul8_4_2_reg_1623_pp0_iter6_reg;
reg   [63:0] mul8_4_2_reg_1623_pp0_iter7_reg;
reg   [63:0] mul8_5_2_reg_1628;
reg   [63:0] mul8_5_2_reg_1628_pp0_iter4_reg;
reg   [63:0] mul8_5_2_reg_1628_pp0_iter5_reg;
reg   [63:0] mul8_5_2_reg_1628_pp0_iter6_reg;
reg   [63:0] mul8_5_2_reg_1628_pp0_iter7_reg;
reg   [63:0] mul8_6_2_reg_1633;
reg   [63:0] mul8_6_2_reg_1633_pp0_iter4_reg;
reg   [63:0] mul8_6_2_reg_1633_pp0_iter5_reg;
reg   [63:0] mul8_6_2_reg_1633_pp0_iter6_reg;
reg   [63:0] mul8_6_2_reg_1633_pp0_iter7_reg;
reg   [63:0] mul8_7_2_reg_1638;
reg   [63:0] mul8_7_2_reg_1638_pp0_iter4_reg;
reg   [63:0] mul8_7_2_reg_1638_pp0_iter5_reg;
reg   [63:0] mul8_7_2_reg_1638_pp0_iter6_reg;
reg   [63:0] mul8_7_2_reg_1638_pp0_iter7_reg;
reg   [63:0] add_reg_1643;
reg   [63:0] add11_1_reg_1648;
reg   [63:0] add11_2_reg_1653;
reg   [63:0] add11_3_reg_1658;
reg   [63:0] add11_4_reg_1663;
reg   [63:0] add11_5_reg_1668;
reg   [63:0] add11_6_reg_1673;
reg   [63:0] add11_7_reg_1678;
reg   [63:0] add11_s_reg_1683;
reg   [63:0] add11_1_1_reg_1688;
reg   [63:0] add11_2_1_reg_1693;
reg   [63:0] add11_3_1_reg_1698;
reg   [63:0] add11_4_1_reg_1703;
reg   [63:0] add11_5_1_reg_1708;
reg   [63:0] add11_6_1_reg_1713;
reg   [63:0] add11_7_1_reg_1718;
wire   [63:0] zext_ln81_fu_1160_p1;
reg   [63:0] zext_ln81_reg_1723;
reg   [63:0] zext_ln81_reg_1723_pp0_iter11_reg;
reg   [63:0] zext_ln81_reg_1723_pp0_iter12_reg;
reg   [63:0] zext_ln81_reg_1723_pp0_iter13_reg;
wire   [63:0] zext_ln83_1_fu_1174_p1;
reg   [63:0] zext_ln83_1_reg_1751;
reg   [63:0] zext_ln83_1_reg_1751_pp0_iter11_reg;
reg   [63:0] zext_ln83_1_reg_1751_pp0_iter12_reg;
reg   [63:0] zext_ln83_1_reg_1751_pp0_iter13_reg;
reg   [63:0] dactivations_0_load_reg_1767;
reg   [63:0] dactivations_1_load_reg_1772;
reg   [63:0] dactivations_2_load_reg_1777;
reg   [63:0] dactivations_3_load_reg_1782;
reg   [63:0] dactivations_0_load_1_reg_1787;
reg   [63:0] add11_19_reg_1792;
reg   [63:0] add11_1_2_reg_1797;
reg   [63:0] add11_2_2_reg_1812;
reg   [63:0] add11_3_2_reg_1817;
reg   [63:0] add11_4_2_reg_1822;
reg   [63:0] add11_5_2_reg_1827;
reg   [63:0] add11_6_2_reg_1832;
reg   [63:0] add11_7_2_reg_1837;
reg   [63:0] dactivations_1_load_1_reg_1847;
reg   [63:0] dactivations_2_load_1_reg_1852;
reg   [63:0] dactivations_3_load_1_reg_1857;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln85_fu_732_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln85_1_fu_785_p1;
wire   [63:0] zext_ln85_2_fu_805_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln85_3_fu_825_p1;
wire   [63:0] zext_ln85_4_fu_876_p1;
wire   [63:0] zext_ln87_fu_951_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln87_1_fu_971_p1;
wire   [63:0] zext_ln85_5_fu_1000_p1;
wire   [63:0] zext_ln87_4_fu_1035_p1;
wire   [63:0] zext_ln87_5_fu_1055_p1;
reg   [6:0] i_fu_120;
wire   [6:0] add_ln82_fu_1010_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_8;
reg    weights3_0_ce1_local;
reg   [5:0] weights3_0_address1_local;
reg    weights3_0_ce0_local;
reg   [5:0] weights3_0_address0_local;
reg    weights3_1_ce1_local;
reg   [5:0] weights3_1_address1_local;
reg    weights3_1_ce0_local;
reg   [5:0] weights3_1_address0_local;
reg    weights3_2_ce1_local;
reg   [5:0] weights3_2_address1_local;
reg    weights3_2_ce0_local;
reg   [5:0] weights3_2_address0_local;
reg    weights3_3_ce1_local;
reg   [5:0] weights3_3_address1_local;
reg    weights3_3_ce0_local;
reg   [5:0] weights3_3_address0_local;
reg    dactivations_0_ce1_local;
reg    dactivations_0_ce0_local;
reg    dactivations_1_ce1_local;
reg    dactivations_1_ce0_local;
reg    dactivations_2_ce1_local;
reg    dactivations_2_ce0_local;
reg    dactivations_3_ce1_local;
reg    dactivations_3_ce0_local;
reg    oracle_activations_0_we0_local;
reg   [63:0] oracle_activations_0_d0_local;
reg    oracle_activations_0_ce0_local;
reg   [3:0] oracle_activations_0_address0_local;
reg    oracle_activations_1_we0_local;
reg   [63:0] oracle_activations_1_d0_local;
reg    oracle_activations_1_ce0_local;
reg   [3:0] oracle_activations_1_address0_local;
reg    oracle_activations_2_we0_local;
reg   [63:0] oracle_activations_2_d0_local;
reg    oracle_activations_2_ce0_local;
reg   [3:0] oracle_activations_2_address0_local;
reg    oracle_activations_3_we0_local;
reg   [63:0] oracle_activations_3_d0_local;
reg    oracle_activations_3_ce0_local;
reg   [3:0] oracle_activations_3_address0_local;
reg   [63:0] grp_fu_554_p0;
reg   [63:0] grp_fu_554_p1;
reg   [63:0] grp_fu_559_p0;
reg   [63:0] grp_fu_559_p1;
reg   [63:0] grp_fu_564_p0;
reg   [63:0] grp_fu_564_p1;
reg   [63:0] grp_fu_569_p0;
reg   [63:0] grp_fu_569_p1;
reg   [63:0] grp_fu_574_p0;
reg   [63:0] grp_fu_574_p1;
reg   [63:0] grp_fu_579_p0;
reg   [63:0] grp_fu_579_p1;
reg   [63:0] grp_fu_584_p0;
reg   [63:0] grp_fu_584_p1;
reg   [63:0] grp_fu_588_p0;
reg   [63:0] grp_fu_588_p1;
reg   [63:0] grp_fu_592_p0;
reg   [63:0] grp_fu_592_p1;
reg   [63:0] grp_fu_596_p0;
reg   [63:0] grp_fu_596_p1;
reg   [63:0] grp_fu_600_p0;
reg   [63:0] grp_fu_600_p1;
reg   [63:0] grp_fu_604_p0;
reg   [63:0] grp_fu_604_p1;
reg   [63:0] grp_fu_608_p0;
reg   [63:0] grp_fu_608_p1;
reg   [63:0] grp_fu_612_p0;
reg   [63:0] grp_fu_612_p1;
reg   [63:0] grp_fu_616_p0;
reg   [63:0] grp_fu_616_p1;
reg   [63:0] grp_fu_620_p0;
reg   [63:0] grp_fu_620_p1;
reg   [63:0] grp_fu_624_p0;
reg   [63:0] grp_fu_624_p1;
reg   [63:0] grp_fu_628_p0;
reg   [63:0] grp_fu_628_p1;
reg   [63:0] grp_fu_632_p0;
reg   [63:0] grp_fu_632_p1;
wire   [5:0] p_shl5_fu_718_p3;
wire   [5:0] zext_ln81_1_fu_714_p1;
wire   [4:0] tmp_fu_739_p4;
wire   [5:0] or_ln_fu_749_p3;
wire   [7:0] p_shl_fu_761_p3;
wire   [7:0] zext_ln83_fu_757_p1;
wire   [5:0] lshr_ln1_fu_775_p4;
wire   [7:0] add_ln85_fu_790_p2;
wire   [5:0] lshr_ln85_1_fu_795_p4;
wire   [7:0] empty_142_fu_810_p2;
wire   [5:0] lshr_ln85_3_fu_815_p4;
wire   [7:0] empty_143_fu_831_p2;
wire   [5:0] lshr_ln85_5_fu_836_p4;
wire   [5:0] add_ln85_3_fu_851_p2;
wire   [7:0] empty_144_fu_861_p2;
wire   [5:0] lshr_ln85_6_fu_866_p4;
wire   [7:0] empty_145_fu_881_p2;
wire   [5:0] lshr_ln85_9_fu_886_p4;
wire   [7:0] empty_146_fu_901_p2;
wire   [5:0] lshr_ln85_10_fu_906_p4;
wire   [7:0] add_ln85_1_fu_936_p2;
wire   [5:0] lshr_ln85_2_fu_941_p4;
wire   [7:0] add_ln85_2_fu_956_p2;
wire   [5:0] lshr_ln85_4_fu_961_p4;
wire   [7:0] add_ln85_4_fu_985_p2;
wire   [5:0] lshr_ln85_7_fu_990_p4;
wire   [7:0] add_ln85_5_fu_1020_p2;
wire   [5:0] lshr_ln85_8_fu_1025_p4;
wire   [7:0] add_ln85_6_fu_1040_p2;
wire   [5:0] lshr_ln85_s_fu_1045_p4;
wire   [3:0] or_ln8_fu_1167_p3;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter13_stage0;
reg    ap_idle_pp0_0to12;
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
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to14;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
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
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_120 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U273(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_612_p0),.din1(grp_fu_612_p1),.ce(1'b1),.dout(grp_fu_612_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U274(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_616_p0),.din1(grp_fu_616_p1),.ce(1'b1),.dout(grp_fu_616_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U275(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_620_p0),.din1(grp_fu_620_p1),.ce(1'b1),.dout(grp_fu_620_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U276(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_624_p0),.din1(grp_fu_624_p1),.ce(1'b1),.dout(grp_fu_624_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U277(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_628_p0),.din1(grp_fu_628_p1),.ce(1'b1),.dout(grp_fu_628_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U278(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_632_p0),.din1(grp_fu_632_p1),.ce(1'b1),.dout(grp_fu_632_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter14 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage0) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage0) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage0) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage0) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage0) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage0) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage0) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage0) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage0) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage0) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage0) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage0) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage0) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_120 <= 7'd0;
    end else if (((tmp_34_reg_1226 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_120 <= add_ln82_fu_1010_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_19_reg_1792 <= grp_fu_3515_p_dout0;
        add11_1_2_reg_1797 <= grp_fu_3519_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_1_reg_1688 <= grp_fu_3495_p_dout0;
        add11_s_reg_1683 <= grp_fu_3491_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_1_reg_1648 <= grp_fu_3495_p_dout0;
        add_reg_1643 <= grp_fu_3491_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_2_1_reg_1693 <= grp_fu_3499_p_dout0;
        add11_3_1_reg_1698 <= grp_fu_3503_p_dout0;
        add11_4_1_reg_1703 <= grp_fu_3507_p_dout0;
        add11_5_1_reg_1708 <= grp_fu_3511_p_dout0;
        add11_6_1_reg_1713 <= grp_fu_3515_p_dout0;
        add11_7_1_reg_1718 <= grp_fu_3519_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_2_2_reg_1812 <= grp_fu_3499_p_dout0;
        add11_3_2_reg_1817 <= grp_fu_3503_p_dout0;
        add11_4_2_reg_1822 <= grp_fu_3507_p_dout0;
        add11_5_2_reg_1827 <= grp_fu_3511_p_dout0;
        add11_6_2_reg_1832 <= grp_fu_3515_p_dout0;
        add11_7_2_reg_1837 <= grp_fu_3519_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_2_reg_1653 <= grp_fu_3491_p_dout0;
        add11_3_reg_1658 <= grp_fu_3495_p_dout0;
        add11_4_reg_1663 <= grp_fu_3499_p_dout0;
        add11_5_reg_1668 <= grp_fu_3503_p_dout0;
        add11_6_reg_1673 <= grp_fu_3507_p_dout0;
        add11_7_reg_1678 <= grp_fu_3511_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations_0_load_1_reg_1787 <= dactivations_0_q0;
        dactivations_0_load_reg_1767 <= dactivations_0_q1;
        dactivations_1_load_reg_1772 <= dactivations_1_q1;
        dactivations_2_load_reg_1777 <= dactivations_2_q1;
        dactivations_3_load_reg_1782 <= dactivations_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations_1_load_1_reg_1847 <= dactivations_1_q0;
        dactivations_2_load_1_reg_1852 <= dactivations_2_q0;
        dactivations_3_load_1_reg_1857 <= dactivations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_1255[7 : 1] <= empty_fu_769_p2[7 : 1];
        i_8_reg_1220 <= ap_sig_allocacmp_i_8;
        lshr_ln_reg_1230 <= {{ap_sig_allocacmp_i_8[5:2]}};
        lshr_ln_reg_1230_pp0_iter1_reg <= lshr_ln_reg_1230;
        lshr_ln_reg_1230_pp0_iter2_reg <= lshr_ln_reg_1230_pp0_iter1_reg;
        lshr_ln_reg_1230_pp0_iter3_reg <= lshr_ln_reg_1230_pp0_iter2_reg;
        lshr_ln_reg_1230_pp0_iter4_reg <= lshr_ln_reg_1230_pp0_iter3_reg;
        lshr_ln_reg_1230_pp0_iter5_reg <= lshr_ln_reg_1230_pp0_iter4_reg;
        lshr_ln_reg_1230_pp0_iter6_reg <= lshr_ln_reg_1230_pp0_iter5_reg;
        lshr_ln_reg_1230_pp0_iter7_reg <= lshr_ln_reg_1230_pp0_iter6_reg;
        lshr_ln_reg_1230_pp0_iter8_reg <= lshr_ln_reg_1230_pp0_iter7_reg;
        lshr_ln_reg_1230_pp0_iter9_reg <= lshr_ln_reg_1230_pp0_iter8_reg;
        mul8_1_1_reg_1543_pp0_iter4_reg <= mul8_1_1_reg_1543;
        mul8_1_1_reg_1543_pp0_iter5_reg <= mul8_1_1_reg_1543_pp0_iter4_reg;
        mul8_2_1_reg_1553_pp0_iter4_reg <= mul8_2_1_reg_1553;
        mul8_2_1_reg_1553_pp0_iter5_reg <= mul8_2_1_reg_1553_pp0_iter4_reg;
        sub_ln85_reg_1235 <= sub_ln85_fu_726_p2;
        tmp_34_reg_1226 <= ap_sig_allocacmp_i_8[32'd6];
        tmp_34_reg_1226_pp0_iter10_reg <= tmp_34_reg_1226_pp0_iter9_reg;
        tmp_34_reg_1226_pp0_iter11_reg <= tmp_34_reg_1226_pp0_iter10_reg;
        tmp_34_reg_1226_pp0_iter12_reg <= tmp_34_reg_1226_pp0_iter11_reg;
        tmp_34_reg_1226_pp0_iter1_reg <= tmp_34_reg_1226;
        tmp_34_reg_1226_pp0_iter2_reg <= tmp_34_reg_1226_pp0_iter1_reg;
        tmp_34_reg_1226_pp0_iter3_reg <= tmp_34_reg_1226_pp0_iter2_reg;
        tmp_34_reg_1226_pp0_iter4_reg <= tmp_34_reg_1226_pp0_iter3_reg;
        tmp_34_reg_1226_pp0_iter5_reg <= tmp_34_reg_1226_pp0_iter4_reg;
        tmp_34_reg_1226_pp0_iter6_reg <= tmp_34_reg_1226_pp0_iter5_reg;
        tmp_34_reg_1226_pp0_iter7_reg <= tmp_34_reg_1226_pp0_iter6_reg;
        tmp_34_reg_1226_pp0_iter8_reg <= tmp_34_reg_1226_pp0_iter7_reg;
        tmp_34_reg_1226_pp0_iter9_reg <= tmp_34_reg_1226_pp0_iter8_reg;
        zext_ln81_reg_1723[3 : 0] <= zext_ln81_fu_1160_p1[3 : 0];
        zext_ln81_reg_1723_pp0_iter11_reg[3 : 0] <= zext_ln81_reg_1723[3 : 0];
        zext_ln81_reg_1723_pp0_iter12_reg[3 : 0] <= zext_ln81_reg_1723_pp0_iter11_reg[3 : 0];
        zext_ln81_reg_1723_pp0_iter13_reg[3 : 0] <= zext_ln81_reg_1723_pp0_iter12_reg[3 : 0];
        zext_ln83_1_reg_1751[3 : 1] <= zext_ln83_1_fu_1174_p1[3 : 1];
        zext_ln83_1_reg_1751_pp0_iter11_reg[3 : 1] <= zext_ln83_1_reg_1751[3 : 1];
        zext_ln83_1_reg_1751_pp0_iter12_reg[3 : 1] <= zext_ln83_1_reg_1751_pp0_iter11_reg[3 : 1];
        zext_ln83_1_reg_1751_pp0_iter13_reg[3 : 1] <= zext_ln83_1_reg_1751_pp0_iter12_reg[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_19_reg_1533 <= grp_fu_3567_p_dout0;
        mul8_1_reg_1538 <= grp_fu_3571_p_dout0;
        mul8_reg_1523 <= grp_fu_3559_p_dout0;
        mul8_s_reg_1528 <= grp_fu_3563_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_19_reg_1533_pp0_iter3_reg <= mul8_19_reg_1533;
        mul8_19_reg_1533_pp0_iter4_reg <= mul8_19_reg_1533_pp0_iter3_reg;
        mul8_19_reg_1533_pp0_iter5_reg <= mul8_19_reg_1533_pp0_iter4_reg;
        mul8_19_reg_1533_pp0_iter6_reg <= mul8_19_reg_1533_pp0_iter5_reg;
        mul8_19_reg_1533_pp0_iter7_reg <= mul8_19_reg_1533_pp0_iter6_reg;
        mul8_4_2_reg_1623_pp0_iter4_reg <= mul8_4_2_reg_1623;
        mul8_4_2_reg_1623_pp0_iter5_reg <= mul8_4_2_reg_1623_pp0_iter4_reg;
        mul8_4_2_reg_1623_pp0_iter6_reg <= mul8_4_2_reg_1623_pp0_iter5_reg;
        mul8_4_2_reg_1623_pp0_iter7_reg <= mul8_4_2_reg_1623_pp0_iter6_reg;
        mul8_5_2_reg_1628_pp0_iter4_reg <= mul8_5_2_reg_1628;
        mul8_5_2_reg_1628_pp0_iter5_reg <= mul8_5_2_reg_1628_pp0_iter4_reg;
        mul8_5_2_reg_1628_pp0_iter6_reg <= mul8_5_2_reg_1628_pp0_iter5_reg;
        mul8_5_2_reg_1628_pp0_iter7_reg <= mul8_5_2_reg_1628_pp0_iter6_reg;
        mul8_6_2_reg_1633_pp0_iter4_reg <= mul8_6_2_reg_1633;
        mul8_6_2_reg_1633_pp0_iter5_reg <= mul8_6_2_reg_1633_pp0_iter4_reg;
        mul8_6_2_reg_1633_pp0_iter6_reg <= mul8_6_2_reg_1633_pp0_iter5_reg;
        mul8_6_2_reg_1633_pp0_iter7_reg <= mul8_6_2_reg_1633_pp0_iter6_reg;
        mul8_7_2_reg_1638_pp0_iter4_reg <= mul8_7_2_reg_1638;
        mul8_7_2_reg_1638_pp0_iter5_reg <= mul8_7_2_reg_1638_pp0_iter4_reg;
        mul8_7_2_reg_1638_pp0_iter6_reg <= mul8_7_2_reg_1638_pp0_iter5_reg;
        mul8_7_2_reg_1638_pp0_iter7_reg <= mul8_7_2_reg_1638_pp0_iter6_reg;
        mul8_s_reg_1528_pp0_iter3_reg <= mul8_s_reg_1528;
        mul8_s_reg_1528_pp0_iter4_reg <= mul8_s_reg_1528_pp0_iter3_reg;
        tmp_s_reg_1353 <= {{i_8_reg_1220[5:3]}};
        tmp_s_reg_1353_pp0_iter1_reg <= tmp_s_reg_1353;
        tmp_s_reg_1353_pp0_iter2_reg <= tmp_s_reg_1353_pp0_iter1_reg;
        tmp_s_reg_1353_pp0_iter3_reg <= tmp_s_reg_1353_pp0_iter2_reg;
        tmp_s_reg_1353_pp0_iter4_reg <= tmp_s_reg_1353_pp0_iter3_reg;
        tmp_s_reg_1353_pp0_iter5_reg <= tmp_s_reg_1353_pp0_iter4_reg;
        tmp_s_reg_1353_pp0_iter6_reg <= tmp_s_reg_1353_pp0_iter5_reg;
        tmp_s_reg_1353_pp0_iter7_reg <= tmp_s_reg_1353_pp0_iter6_reg;
        tmp_s_reg_1353_pp0_iter8_reg <= tmp_s_reg_1353_pp0_iter7_reg;
        tmp_s_reg_1353_pp0_iter9_reg <= tmp_s_reg_1353_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_1_1_reg_1543 <= grp_fu_3559_p_dout0;
        mul8_2_1_reg_1553 <= grp_fu_3567_p_dout0;
        mul8_2_reg_1548 <= grp_fu_3563_p_dout0;
        mul8_3_reg_1558 <= grp_fu_3571_p_dout0;
        mul8_4_reg_1563 <= grp_fu_3575_p_dout0;
        mul8_5_reg_1568 <= grp_fu_612_p2;
        mul8_6_reg_1573 <= grp_fu_616_p2;
        mul8_7_reg_1578 <= grp_fu_620_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_1_2_reg_1583 <= grp_fu_3559_p_dout0;
        mul8_2_2_reg_1588 <= grp_fu_3563_p_dout0;
        mul8_3_1_reg_1593 <= grp_fu_3567_p_dout0;
        mul8_3_2_reg_1598 <= grp_fu_3571_p_dout0;
        mul8_4_1_reg_1603 <= grp_fu_3575_p_dout0;
        mul8_5_1_reg_1608 <= grp_fu_612_p2;
        mul8_6_1_reg_1613 <= grp_fu_616_p2;
        mul8_7_1_reg_1618 <= grp_fu_620_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_1_2_reg_1583_pp0_iter4_reg <= mul8_1_2_reg_1583;
        mul8_1_2_reg_1583_pp0_iter5_reg <= mul8_1_2_reg_1583_pp0_iter4_reg;
        mul8_1_2_reg_1583_pp0_iter6_reg <= mul8_1_2_reg_1583_pp0_iter5_reg;
        mul8_1_2_reg_1583_pp0_iter7_reg <= mul8_1_2_reg_1583_pp0_iter6_reg;
        mul8_2_2_reg_1588_pp0_iter4_reg <= mul8_2_2_reg_1588;
        mul8_2_2_reg_1588_pp0_iter5_reg <= mul8_2_2_reg_1588_pp0_iter4_reg;
        mul8_2_2_reg_1588_pp0_iter6_reg <= mul8_2_2_reg_1588_pp0_iter5_reg;
        mul8_2_2_reg_1588_pp0_iter7_reg <= mul8_2_2_reg_1588_pp0_iter6_reg;
        mul8_2_2_reg_1588_pp0_iter8_reg <= mul8_2_2_reg_1588_pp0_iter7_reg;
        mul8_3_1_reg_1593_pp0_iter4_reg <= mul8_3_1_reg_1593;
        mul8_3_1_reg_1593_pp0_iter5_reg <= mul8_3_1_reg_1593_pp0_iter4_reg;
        mul8_3_2_reg_1598_pp0_iter4_reg <= mul8_3_2_reg_1598;
        mul8_3_2_reg_1598_pp0_iter5_reg <= mul8_3_2_reg_1598_pp0_iter4_reg;
        mul8_3_2_reg_1598_pp0_iter6_reg <= mul8_3_2_reg_1598_pp0_iter5_reg;
        mul8_3_2_reg_1598_pp0_iter7_reg <= mul8_3_2_reg_1598_pp0_iter6_reg;
        mul8_3_2_reg_1598_pp0_iter8_reg <= mul8_3_2_reg_1598_pp0_iter7_reg;
        mul8_4_1_reg_1603_pp0_iter4_reg <= mul8_4_1_reg_1603;
        mul8_4_1_reg_1603_pp0_iter5_reg <= mul8_4_1_reg_1603_pp0_iter4_reg;
        mul8_5_1_reg_1608_pp0_iter4_reg <= mul8_5_1_reg_1608;
        mul8_5_1_reg_1608_pp0_iter5_reg <= mul8_5_1_reg_1608_pp0_iter4_reg;
        mul8_6_1_reg_1613_pp0_iter4_reg <= mul8_6_1_reg_1613;
        mul8_6_1_reg_1613_pp0_iter5_reg <= mul8_6_1_reg_1613_pp0_iter4_reg;
        mul8_7_1_reg_1618_pp0_iter4_reg <= mul8_7_1_reg_1618;
        mul8_7_1_reg_1618_pp0_iter5_reg <= mul8_7_1_reg_1618_pp0_iter4_reg;
        zext_ln85_6_reg_1287[5 : 0] <= zext_ln85_6_fu_896_p1[5 : 0];
        zext_ln85_7_reg_1292[5 : 0] <= zext_ln85_7_fu_916_p1[5 : 0];
        zext_ln87_2_reg_1275[5 : 0] <= zext_ln87_2_fu_846_p1[5 : 0];
        zext_ln87_3_reg_1281[5 : 0] <= zext_ln87_3_fu_856_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_4_2_reg_1623 <= grp_fu_3575_p_dout0;
        mul8_5_2_reg_1628 <= grp_fu_612_p2;
        mul8_6_2_reg_1633 <= grp_fu_616_p2;
        mul8_7_2_reg_1638 <= grp_fu_620_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_636 <= weights3_0_q1;
        reg_640 <= weights3_1_q1;
        reg_644 <= weights3_2_q1;
        reg_648 <= weights3_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_652 <= weights3_0_q0;
        reg_656 <= weights3_3_q0;
        reg_660 <= weights3_2_q0;
        reg_664 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_668 <= grp_fu_624_p2;
        reg_675 <= grp_fu_628_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_682 <= grp_fu_632_p2;
    end
end
always @ (*) begin
    if (((tmp_34_reg_1226 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter13 == 1'b1) & (tmp_34_reg_1226_pp0_iter12_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter13_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter13_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to12 = 1'b1;
    end else begin
        ap_idle_pp0_0to12 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to14 = 1'b1;
    end else begin
        ap_idle_pp0_1to14 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_8 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_8 = i_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_0_ce0_local = 1'b1;
    end else begin
        dactivations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_0_ce1_local = 1'b1;
    end else begin
        dactivations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_1_ce0_local = 1'b1;
    end else begin
        dactivations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_1_ce1_local = 1'b1;
    end else begin
        dactivations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_2_ce0_local = 1'b1;
    end else begin
        dactivations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_2_ce1_local = 1'b1;
    end else begin
        dactivations_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_3_ce0_local = 1'b1;
    end else begin
        dactivations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_3_ce1_local = 1'b1;
    end else begin
        dactivations_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_554_p0 = add_reg_1643;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_554_p0 = mul8_2_reg_1548;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_554_p0 = mul8_reg_1523;
    end else begin
        grp_fu_554_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_554_p1 = mul8_s_reg_1528_pp0_iter4_reg;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_554_p1 = 64'd0;
    end else begin
        grp_fu_554_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_559_p0 = add11_1_reg_1648;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_559_p0 = mul8_3_reg_1558;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_559_p0 = mul8_1_reg_1538;
    end else begin
        grp_fu_559_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_559_p1 = mul8_1_1_reg_1543_pp0_iter5_reg;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_559_p1 = 64'd0;
    end else begin
        grp_fu_559_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_564_p0 = add11_2_1_reg_1693;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_564_p0 = add11_2_reg_1653;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_564_p0 = mul8_4_reg_1563;
    end else begin
        grp_fu_564_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_564_p1 = mul8_2_2_reg_1588_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_564_p1 = mul8_2_1_reg_1553_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_564_p1 = 64'd0;
    end else begin
        grp_fu_564_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_569_p0 = add11_3_1_reg_1698;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_569_p0 = add11_3_reg_1658;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_569_p0 = mul8_5_reg_1568;
    end else begin
        grp_fu_569_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_569_p1 = mul8_3_2_reg_1598_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_569_p1 = mul8_3_1_reg_1593_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_569_p1 = 64'd0;
    end else begin
        grp_fu_569_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_574_p0 = add11_4_1_reg_1703;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_574_p0 = add11_4_reg_1663;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_574_p0 = mul8_6_reg_1573;
    end else begin
        grp_fu_574_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_574_p1 = mul8_4_2_reg_1623_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_574_p1 = mul8_4_1_reg_1603_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_574_p1 = 64'd0;
    end else begin
        grp_fu_574_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_579_p0 = add11_5_1_reg_1708;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_579_p0 = add11_5_reg_1668;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_579_p0 = mul8_7_reg_1578;
    end else begin
        grp_fu_579_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_579_p1 = mul8_5_2_reg_1628_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_579_p1 = mul8_5_1_reg_1608_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_579_p1 = 64'd0;
    end else begin
        grp_fu_579_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_584_p0 = add11_6_1_reg_1713;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_584_p0 = add11_s_reg_1683;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_584_p0 = add11_6_reg_1673;
    end else begin
        grp_fu_584_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_584_p1 = mul8_6_2_reg_1633_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_584_p1 = mul8_19_reg_1533_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_584_p1 = mul8_6_1_reg_1613_pp0_iter5_reg;
    end else begin
        grp_fu_584_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_588_p0 = add11_7_1_reg_1718;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_588_p0 = add11_1_1_reg_1688;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_588_p0 = add11_7_reg_1678;
    end else begin
        grp_fu_588_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_588_p1 = mul8_7_2_reg_1638_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_588_p1 = mul8_1_2_reg_1583_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_588_p1 = mul8_7_1_reg_1618_pp0_iter5_reg;
    end else begin
        grp_fu_588_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_592_p0 = bitcast_ln85_5_fu_1100_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_592_p0 = bitcast_ln85_4_fu_1060_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_592_p0 = bitcast_ln85_fu_921_p1;
    end else begin
        grp_fu_592_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_592_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_592_p1 = output_differences_0_1_val;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_592_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_592_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_596_p0 = bitcast_ln85_8_fu_1105_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_596_p0 = bitcast_ln85_6_fu_1065_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_596_p0 = bitcast_ln85_1_fu_926_p1;
    end else begin
        grp_fu_596_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_596_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_596_p1 = output_differences_0_0_val;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_596_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_596_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_600_p0 = bitcast_ln85_10_fu_1110_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_600_p0 = bitcast_ln85_7_fu_1070_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_600_p0 = bitcast_ln85_2_fu_931_p1;
    end else begin
        grp_fu_600_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_600_p1 = output_differences_0_1_val;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_600_p1 = output_differences_0_2_val;
    end else begin
        grp_fu_600_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_604_p0 = bitcast_ln85_11_fu_1115_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_604_p0 = bitcast_ln85_9_fu_1075_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_604_p0 = bitcast_ln85_3_fu_1005_p1;
    end else begin
        grp_fu_604_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_604_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_604_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_604_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_608_p0 = bitcast_ln85_14_fu_1140_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_608_p0 = bitcast_ln85_13_fu_1120_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_608_p0 = bitcast_ln85_12_fu_1080_p1;
        end else begin
            grp_fu_608_p0 = 'bx;
        end
    end else begin
        grp_fu_608_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_608_p1 = output_differences_0_2_val;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_608_p1 = output_differences_0_1_val;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_608_p1 = output_differences_0_0_val;
        end else begin
            grp_fu_608_p1 = 'bx;
        end
    end else begin
        grp_fu_608_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_612_p0 = bitcast_ln85_17_fu_1145_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_612_p0 = bitcast_ln85_16_fu_1125_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_612_p0 = bitcast_ln85_15_fu_1085_p1;
        end else begin
            grp_fu_612_p0 = 'bx;
        end
    end else begin
        grp_fu_612_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_612_p1 = output_differences_0_2_val;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_612_p1 = output_differences_0_1_val;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_612_p1 = output_differences_0_0_val;
        end else begin
            grp_fu_612_p1 = 'bx;
        end
    end else begin
        grp_fu_612_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_616_p0 = bitcast_ln85_20_fu_1150_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_616_p0 = bitcast_ln85_19_fu_1130_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_616_p0 = bitcast_ln85_18_fu_1090_p1;
        end else begin
            grp_fu_616_p0 = 'bx;
        end
    end else begin
        grp_fu_616_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_616_p1 = output_differences_0_2_val;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_616_p1 = output_differences_0_1_val;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_616_p1 = output_differences_0_0_val;
        end else begin
            grp_fu_616_p1 = 'bx;
        end
    end else begin
        grp_fu_616_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_620_p0 = bitcast_ln85_23_fu_1155_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_620_p0 = bitcast_ln85_22_fu_1135_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_620_p0 = bitcast_ln85_21_fu_1095_p1;
        end else begin
            grp_fu_620_p0 = 'bx;
        end
    end else begin
        grp_fu_620_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_620_p1 = output_differences_0_2_val;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_620_p1 = output_differences_0_1_val;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_620_p1 = output_differences_0_0_val;
        end else begin
            grp_fu_620_p1 = 'bx;
        end
    end else begin
        grp_fu_620_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_624_p0 = add11_5_2_reg_1827;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_624_p0 = add11_2_2_reg_1812;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_624_p0 = add11_19_reg_1792;
        end else begin
            grp_fu_624_p0 = 'bx;
        end
    end else begin
        grp_fu_624_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_624_p1 = dactivations_1_load_1_reg_1847;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_624_p1 = dactivations_2_load_reg_1777;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_624_p1 = dactivations_0_load_reg_1767;
        end else begin
            grp_fu_624_p1 = 'bx;
        end
    end else begin
        grp_fu_624_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_628_p0 = add11_6_2_reg_1832;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_628_p0 = add11_3_2_reg_1817;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_628_p0 = add11_1_2_reg_1797;
        end else begin
            grp_fu_628_p0 = 'bx;
        end
    end else begin
        grp_fu_628_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_628_p1 = dactivations_2_load_1_reg_1852;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_628_p1 = dactivations_3_load_reg_1782;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_628_p1 = dactivations_1_load_reg_1772;
        end else begin
            grp_fu_628_p1 = 'bx;
        end
    end else begin
        grp_fu_628_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_632_p0 = add11_7_2_reg_1837;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_632_p0 = add11_4_2_reg_1822;
        end else begin
            grp_fu_632_p0 = 'bx;
        end
    end else begin
        grp_fu_632_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_632_p1 = dactivations_3_load_1_reg_1857;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_632_p1 = dactivations_0_load_1_reg_1787;
        end else begin
            grp_fu_632_p1 = 'bx;
        end
    end else begin
        grp_fu_632_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            oracle_activations_0_address0_local = zext_ln83_1_reg_1751_pp0_iter13_reg;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            oracle_activations_0_address0_local = zext_ln81_reg_1723_pp0_iter13_reg;
        end else begin
            oracle_activations_0_address0_local = 'bx;
        end
    end else begin
        oracle_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_0_ce0_local = 1'b1;
    end else begin
        oracle_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            oracle_activations_0_d0_local = reg_682;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            oracle_activations_0_d0_local = reg_668;
        end else begin
            oracle_activations_0_d0_local = 'bx;
        end
    end else begin
        oracle_activations_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_0_we0_local = 1'b1;
    end else begin
        oracle_activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_1_address0_local = zext_ln83_1_reg_1751_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_1_address0_local = zext_ln81_reg_1723_pp0_iter13_reg;
    end else begin
        oracle_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_1_ce0_local = 1'b1;
    end else begin
        oracle_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_1_d0_local = reg_668;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_1_d0_local = reg_675;
    end else begin
        oracle_activations_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_1_we0_local = 1'b1;
    end else begin
        oracle_activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_2_address0_local = zext_ln83_1_reg_1751_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_2_address0_local = zext_ln81_reg_1723_pp0_iter13_reg;
    end else begin
        oracle_activations_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        oracle_activations_2_ce0_local = 1'b1;
    end else begin
        oracle_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_2_d0_local = reg_675;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_2_d0_local = reg_668;
    end else begin
        oracle_activations_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        oracle_activations_2_we0_local = 1'b1;
    end else begin
        oracle_activations_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_3_address0_local = zext_ln83_1_reg_1751_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_3_address0_local = zext_ln81_reg_1723_pp0_iter13_reg;
    end else begin
        oracle_activations_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        oracle_activations_3_ce0_local = 1'b1;
    end else begin
        oracle_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_3_d0_local = reg_682;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_3_d0_local = reg_675;
    end else begin
        oracle_activations_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        oracle_activations_3_we0_local = 1'b1;
    end else begin
        oracle_activations_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address0_local = zext_ln87_5_fu_1055_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address0_local = zext_ln85_5_fu_1000_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address0_local = zext_ln87_3_fu_856_p1;
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_0_address1_local = zext_ln87_1_fu_971_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address1_local = zext_ln85_2_fu_805_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_0_address1_local = zext_ln85_fu_732_p1;
        end else begin
            weights3_0_address1_local = 'bx;
        end
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address0_local = zext_ln87_4_fu_1035_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address0_local = zext_ln87_3_reg_1281;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address0_local = zext_ln85_7_fu_916_p1;
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_1_address1_local = zext_ln87_fu_951_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address1_local = zext_ln87_2_fu_846_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_1_address1_local = zext_ln85_fu_732_p1;
        end else begin
            weights3_1_address1_local = 'bx;
        end
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_2_address0_local = zext_ln87_3_reg_1281;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_2_address0_local = zext_ln85_7_reg_1292;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_2_address0_local = zext_ln85_6_fu_896_p1;
    end else begin
        weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_2_address1_local = zext_ln87_2_reg_1275;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_2_address1_local = zext_ln85_3_fu_825_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_2_address1_local = zext_ln85_fu_732_p1;
        end else begin
            weights3_2_address1_local = 'bx;
        end
    end else begin
        weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce1_local = 1'b1;
    end else begin
        weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_address0_local = zext_ln85_7_reg_1292;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_3_address0_local = zext_ln85_6_reg_1287;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_address0_local = zext_ln85_4_fu_876_p1;
    end else begin
        weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_3_address1_local = zext_ln87_2_reg_1275;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_3_address1_local = zext_ln85_3_fu_825_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_3_address1_local = zext_ln85_1_fu_785_p1;
        end else begin
            weights3_3_address1_local = 'bx;
        end
    end else begin
        weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce1_local = 1'b1;
    end else begin
        weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter13_stage0) & (ap_idle_pp0_0to12 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to14 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln82_fu_1010_p2 = (i_8_reg_1220 + 7'd8);
assign add_ln85_1_fu_936_p2 = (empty_reg_1255 + 8'd2);
assign add_ln85_2_fu_956_p2 = (empty_reg_1255 + 8'd5);
assign add_ln85_3_fu_851_p2 = (sub_ln85_reg_1235 + 6'd3);
assign add_ln85_4_fu_985_p2 = (empty_reg_1255 + 8'd13);
assign add_ln85_5_fu_1020_p2 = (empty_reg_1255 + 8'd14);
assign add_ln85_6_fu_1040_p2 = (empty_reg_1255 + 8'd17);
assign add_ln85_fu_790_p2 = (empty_reg_1255 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign bitcast_ln85_10_fu_1110_p1 = reg_644;
assign bitcast_ln85_11_fu_1115_p1 = reg_648;
assign bitcast_ln85_12_fu_1080_p1 = reg_652;
assign bitcast_ln85_13_fu_1120_p1 = reg_664;
assign bitcast_ln85_14_fu_1140_p1 = reg_660;
assign bitcast_ln85_15_fu_1085_p1 = reg_656;
assign bitcast_ln85_16_fu_1125_p1 = reg_652;
assign bitcast_ln85_17_fu_1145_p1 = reg_664;
assign bitcast_ln85_18_fu_1090_p1 = reg_660;
assign bitcast_ln85_19_fu_1130_p1 = reg_656;
assign bitcast_ln85_1_fu_926_p1 = reg_640;
assign bitcast_ln85_20_fu_1150_p1 = reg_652;
assign bitcast_ln85_21_fu_1095_p1 = reg_664;
assign bitcast_ln85_22_fu_1135_p1 = reg_660;
assign bitcast_ln85_23_fu_1155_p1 = reg_656;
assign bitcast_ln85_2_fu_931_p1 = reg_644;
assign bitcast_ln85_3_fu_1005_p1 = reg_648;
assign bitcast_ln85_4_fu_1060_p1 = reg_636;
assign bitcast_ln85_5_fu_1100_p1 = reg_640;
assign bitcast_ln85_6_fu_1065_p1 = reg_644;
assign bitcast_ln85_7_fu_1070_p1 = reg_648;
assign bitcast_ln85_8_fu_1105_p1 = reg_636;
assign bitcast_ln85_9_fu_1075_p1 = reg_640;
assign bitcast_ln85_fu_921_p1 = reg_636;
assign dactivations_0_address0 = zext_ln83_1_fu_1174_p1;
assign dactivations_0_address1 = zext_ln81_fu_1160_p1;
assign dactivations_0_ce0 = dactivations_0_ce0_local;
assign dactivations_0_ce1 = dactivations_0_ce1_local;
assign dactivations_1_address0 = zext_ln83_1_reg_1751;
assign dactivations_1_address1 = zext_ln81_fu_1160_p1;
assign dactivations_1_ce0 = dactivations_1_ce0_local;
assign dactivations_1_ce1 = dactivations_1_ce1_local;
assign dactivations_2_address0 = zext_ln83_1_reg_1751;
assign dactivations_2_address1 = zext_ln81_fu_1160_p1;
assign dactivations_2_ce0 = dactivations_2_ce0_local;
assign dactivations_2_ce1 = dactivations_2_ce1_local;
assign dactivations_3_address0 = zext_ln83_1_reg_1751;
assign dactivations_3_address1 = zext_ln81_fu_1160_p1;
assign dactivations_3_ce0 = dactivations_3_ce0_local;
assign dactivations_3_ce1 = dactivations_3_ce1_local;
assign empty_142_fu_810_p2 = (empty_reg_1255 + 8'd3);
assign empty_143_fu_831_p2 = (empty_reg_1255 + 8'd6);
assign empty_144_fu_861_p2 = (empty_reg_1255 + 8'd12);
assign empty_145_fu_881_p2 = (empty_reg_1255 + 8'd15);
assign empty_146_fu_901_p2 = (empty_reg_1255 + 8'd18);
assign empty_fu_769_p2 = (p_shl_fu_761_p3 - zext_ln83_fu_757_p1);
assign grp_fu_3491_p_ce = 1'b1;
assign grp_fu_3491_p_din0 = grp_fu_554_p0;
assign grp_fu_3491_p_din1 = grp_fu_554_p1;
assign grp_fu_3491_p_opcode = 2'd0;
assign grp_fu_3495_p_ce = 1'b1;
assign grp_fu_3495_p_din0 = grp_fu_559_p0;
assign grp_fu_3495_p_din1 = grp_fu_559_p1;
assign grp_fu_3495_p_opcode = 2'd0;
assign grp_fu_3499_p_ce = 1'b1;
assign grp_fu_3499_p_din0 = grp_fu_564_p0;
assign grp_fu_3499_p_din1 = grp_fu_564_p1;
assign grp_fu_3499_p_opcode = 2'd0;
assign grp_fu_3503_p_ce = 1'b1;
assign grp_fu_3503_p_din0 = grp_fu_569_p0;
assign grp_fu_3503_p_din1 = grp_fu_569_p1;
assign grp_fu_3503_p_opcode = 2'd0;
assign grp_fu_3507_p_ce = 1'b1;
assign grp_fu_3507_p_din0 = grp_fu_574_p0;
assign grp_fu_3507_p_din1 = grp_fu_574_p1;
assign grp_fu_3507_p_opcode = 2'd0;
assign grp_fu_3511_p_ce = 1'b1;
assign grp_fu_3511_p_din0 = grp_fu_579_p0;
assign grp_fu_3511_p_din1 = grp_fu_579_p1;
assign grp_fu_3511_p_opcode = 2'd0;
assign grp_fu_3515_p_ce = 1'b1;
assign grp_fu_3515_p_din0 = grp_fu_584_p0;
assign grp_fu_3515_p_din1 = grp_fu_584_p1;
assign grp_fu_3515_p_opcode = 2'd0;
assign grp_fu_3519_p_ce = 1'b1;
assign grp_fu_3519_p_din0 = grp_fu_588_p0;
assign grp_fu_3519_p_din1 = grp_fu_588_p1;
assign grp_fu_3519_p_opcode = 2'd0;
assign grp_fu_3559_p_ce = 1'b1;
assign grp_fu_3559_p_din0 = grp_fu_592_p0;
assign grp_fu_3559_p_din1 = grp_fu_592_p1;
assign grp_fu_3563_p_ce = 1'b1;
assign grp_fu_3563_p_din0 = grp_fu_596_p0;
assign grp_fu_3563_p_din1 = grp_fu_596_p1;
assign grp_fu_3567_p_ce = 1'b1;
assign grp_fu_3567_p_din0 = grp_fu_600_p0;
assign grp_fu_3567_p_din1 = grp_fu_600_p1;
assign grp_fu_3571_p_ce = 1'b1;
assign grp_fu_3571_p_din0 = grp_fu_604_p0;
assign grp_fu_3571_p_din1 = grp_fu_604_p1;
assign grp_fu_3575_p_ce = 1'b1;
assign grp_fu_3575_p_din0 = grp_fu_608_p0;
assign grp_fu_3575_p_din1 = grp_fu_608_p1;
assign lshr_ln1_fu_775_p4 = {{empty_fu_769_p2[7:2]}};
assign lshr_ln85_10_fu_906_p4 = {{empty_146_fu_901_p2[7:2]}};
assign lshr_ln85_1_fu_795_p4 = {{add_ln85_fu_790_p2[7:2]}};
assign lshr_ln85_2_fu_941_p4 = {{add_ln85_1_fu_936_p2[7:2]}};
assign lshr_ln85_3_fu_815_p4 = {{empty_142_fu_810_p2[7:2]}};
assign lshr_ln85_4_fu_961_p4 = {{add_ln85_2_fu_956_p2[7:2]}};
assign lshr_ln85_5_fu_836_p4 = {{empty_143_fu_831_p2[7:2]}};
assign lshr_ln85_6_fu_866_p4 = {{empty_144_fu_861_p2[7:2]}};
assign lshr_ln85_7_fu_990_p4 = {{add_ln85_4_fu_985_p2[7:2]}};
assign lshr_ln85_8_fu_1025_p4 = {{add_ln85_5_fu_1020_p2[7:2]}};
assign lshr_ln85_9_fu_886_p4 = {{empty_145_fu_881_p2[7:2]}};
assign lshr_ln85_s_fu_1045_p4 = {{add_ln85_6_fu_1040_p2[7:2]}};
assign lshr_ln_fu_704_p4 = {{ap_sig_allocacmp_i_8[5:2]}};
assign or_ln8_fu_1167_p3 = {{tmp_s_reg_1353_pp0_iter9_reg}, {1'd1}};
assign or_ln_fu_749_p3 = {{tmp_fu_739_p4}, {1'd1}};
assign oracle_activations_0_address0 = oracle_activations_0_address0_local;
assign oracle_activations_0_ce0 = oracle_activations_0_ce0_local;
assign oracle_activations_0_d0 = oracle_activations_0_d0_local;
assign oracle_activations_0_we0 = oracle_activations_0_we0_local;
assign oracle_activations_1_address0 = oracle_activations_1_address0_local;
assign oracle_activations_1_ce0 = oracle_activations_1_ce0_local;
assign oracle_activations_1_d0 = oracle_activations_1_d0_local;
assign oracle_activations_1_we0 = oracle_activations_1_we0_local;
assign oracle_activations_2_address0 = oracle_activations_2_address0_local;
assign oracle_activations_2_ce0 = oracle_activations_2_ce0_local;
assign oracle_activations_2_d0 = oracle_activations_2_d0_local;
assign oracle_activations_2_we0 = oracle_activations_2_we0_local;
assign oracle_activations_3_address0 = oracle_activations_3_address0_local;
assign oracle_activations_3_ce0 = oracle_activations_3_ce0_local;
assign oracle_activations_3_d0 = oracle_activations_3_d0_local;
assign oracle_activations_3_we0 = oracle_activations_3_we0_local;
assign p_shl5_fu_718_p3 = {{lshr_ln_fu_704_p4}, {2'd0}};
assign p_shl_fu_761_p3 = {{tmp_fu_739_p4}, {3'd4}};
assign sub_ln85_fu_726_p2 = (p_shl5_fu_718_p3 - zext_ln81_1_fu_714_p1);
assign tmp_fu_739_p4 = {{ap_sig_allocacmp_i_8[5:1]}};
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = weights3_0_address1_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = weights3_1_address1_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign weights3_2_address0 = weights3_2_address0_local;
assign weights3_2_address1 = weights3_2_address1_local;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_2_ce1 = weights3_2_ce1_local;
assign weights3_3_address0 = weights3_3_address0_local;
assign weights3_3_address1 = weights3_3_address1_local;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_3_ce1 = weights3_3_ce1_local;
assign zext_ln81_1_fu_714_p1 = lshr_ln_fu_704_p4;
assign zext_ln81_fu_1160_p1 = lshr_ln_reg_1230_pp0_iter9_reg;
assign zext_ln83_1_fu_1174_p1 = or_ln8_fu_1167_p3;
assign zext_ln83_fu_757_p1 = or_ln_fu_749_p3;
assign zext_ln85_1_fu_785_p1 = lshr_ln1_fu_775_p4;
assign zext_ln85_2_fu_805_p1 = lshr_ln85_1_fu_795_p4;
assign zext_ln85_3_fu_825_p1 = lshr_ln85_3_fu_815_p4;
assign zext_ln85_4_fu_876_p1 = lshr_ln85_6_fu_866_p4;
assign zext_ln85_5_fu_1000_p1 = lshr_ln85_7_fu_990_p4;
assign zext_ln85_6_fu_896_p1 = lshr_ln85_9_fu_886_p4;
assign zext_ln85_7_fu_916_p1 = lshr_ln85_10_fu_906_p4;
assign zext_ln85_fu_732_p1 = sub_ln85_fu_726_p2;
assign zext_ln87_1_fu_971_p1 = lshr_ln85_4_fu_961_p4;
assign zext_ln87_2_fu_846_p1 = lshr_ln85_5_fu_836_p4;
assign zext_ln87_3_fu_856_p1 = add_ln85_3_fu_851_p2;
assign zext_ln87_4_fu_1035_p1 = lshr_ln85_8_fu_1025_p4;
assign zext_ln87_5_fu_1055_p1 = lshr_ln85_s_fu_1045_p4;
assign zext_ln87_fu_951_p1 = lshr_ln85_2_fu_941_p4;
always @ (posedge ap_clk) begin
    empty_reg_1255[0] <= 1'b1;
    zext_ln87_2_reg_1275[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln87_3_reg_1281[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln85_6_reg_1287[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln85_7_reg_1292[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1723[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1723_pp0_iter11_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1723_pp0_iter12_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1723_pp0_iter13_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_1751[0] <= 1'b1;
    zext_ln83_1_reg_1751[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_1751_pp0_iter11_reg[0] <= 1'b1;
    zext_ln83_1_reg_1751_pp0_iter11_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_1751_pp0_iter12_reg[0] <= 1'b1;
    zext_ln83_1_reg_1751_pp0_iter12_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_1751_pp0_iter13_reg[0] <= 1'b1;
    zext_ln83_1_reg_1751_pp0_iter13_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 