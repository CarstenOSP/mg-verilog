
module backprop_get_oracle_activations2_43_44_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_q1,weights3_3_address0,weights3_3_ce0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_q1,weights3_4_address0,weights3_4_ce0,weights3_4_q0,weights3_4_address1,weights3_4_ce1,weights3_4_q1,weights3_5_address0,weights3_5_ce0,weights3_5_q0,weights3_5_address1,weights3_5_ce1,weights3_5_q1,weights3_6_address0,weights3_6_ce0,weights3_6_q0,weights3_6_address1,weights3_6_ce1,weights3_6_q1,weights3_7_address0,weights3_7_ce0,weights3_7_q0,weights3_7_address1,weights3_7_ce1,weights3_7_q1,output_differences_0_0_val,output_differences_0_1_val,output_differences_0_2_val,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,oracle_activations_2_address0,oracle_activations_2_ce0,oracle_activations_2_we0,oracle_activations_2_d0,oracle_activations_3_address0,oracle_activations_3_ce0,oracle_activations_3_we0,oracle_activations_3_d0,oracle_activations_4_address0,oracle_activations_4_ce0,oracle_activations_4_we0,oracle_activations_4_d0,oracle_activations_5_address0,oracle_activations_5_ce0,oracle_activations_5_we0,oracle_activations_5_d0,oracle_activations_6_address0,oracle_activations_6_ce0,oracle_activations_6_we0,oracle_activations_6_d0,oracle_activations_7_address0,oracle_activations_7_ce0,oracle_activations_7_we0,oracle_activations_7_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_2_address0,dactivations_2_ce0,dactivations_2_q0,dactivations_3_address0,dactivations_3_ce0,dactivations_3_q0,dactivations_4_address0,dactivations_4_ce0,dactivations_4_q0,dactivations_5_address0,dactivations_5_ce0,dactivations_5_q0,dactivations_6_address0,dactivations_6_ce0,dactivations_6_q0,dactivations_7_address0,dactivations_7_ce0,dactivations_7_q0,grp_fu_4181_p_din0,grp_fu_4181_p_din1,grp_fu_4181_p_opcode,grp_fu_4181_p_dout0,grp_fu_4181_p_ce,grp_fu_4185_p_din0,grp_fu_4185_p_din1,grp_fu_4185_p_opcode,grp_fu_4185_p_dout0,grp_fu_4185_p_ce,grp_fu_4189_p_din0,grp_fu_4189_p_din1,grp_fu_4189_p_opcode,grp_fu_4189_p_dout0,grp_fu_4189_p_ce,grp_fu_4193_p_din0,grp_fu_4193_p_din1,grp_fu_4193_p_opcode,grp_fu_4193_p_dout0,grp_fu_4193_p_ce,grp_fu_4197_p_din0,grp_fu_4197_p_din1,grp_fu_4197_p_opcode,grp_fu_4197_p_dout0,grp_fu_4197_p_ce,grp_fu_4201_p_din0,grp_fu_4201_p_din1,grp_fu_4201_p_opcode,grp_fu_4201_p_dout0,grp_fu_4201_p_ce,grp_fu_4205_p_din0,grp_fu_4205_p_din1,grp_fu_4205_p_opcode,grp_fu_4205_p_dout0,grp_fu_4205_p_ce,grp_fu_4209_p_din0,grp_fu_4209_p_din1,grp_fu_4209_p_opcode,grp_fu_4209_p_dout0,grp_fu_4209_p_ce,grp_fu_4213_p_din0,grp_fu_4213_p_din1,grp_fu_4213_p_opcode,grp_fu_4213_p_dout0,grp_fu_4213_p_ce,grp_fu_4217_p_din0,grp_fu_4217_p_din1,grp_fu_4217_p_opcode,grp_fu_4217_p_dout0,grp_fu_4217_p_ce,grp_fu_4221_p_din0,grp_fu_4221_p_din1,grp_fu_4221_p_opcode,grp_fu_4221_p_dout0,grp_fu_4221_p_ce,grp_fu_4225_p_din0,grp_fu_4225_p_din1,grp_fu_4225_p_opcode,grp_fu_4225_p_dout0,grp_fu_4225_p_ce,grp_fu_4277_p_din0,grp_fu_4277_p_din1,grp_fu_4277_p_dout0,grp_fu_4277_p_ce,grp_fu_4281_p_din0,grp_fu_4281_p_din1,grp_fu_4281_p_dout0,grp_fu_4281_p_ce,grp_fu_4285_p_din0,grp_fu_4285_p_din1,grp_fu_4285_p_dout0,grp_fu_4285_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [4:0] weights3_0_address1;
output   weights3_0_ce1;
input  [63:0] weights3_0_q1;
output  [4:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [4:0] weights3_1_address1;
output   weights3_1_ce1;
input  [63:0] weights3_1_q1;
output  [4:0] weights3_2_address0;
output   weights3_2_ce0;
input  [63:0] weights3_2_q0;
output  [4:0] weights3_2_address1;
output   weights3_2_ce1;
input  [63:0] weights3_2_q1;
output  [4:0] weights3_3_address0;
output   weights3_3_ce0;
input  [63:0] weights3_3_q0;
output  [4:0] weights3_3_address1;
output   weights3_3_ce1;
input  [63:0] weights3_3_q1;
output  [4:0] weights3_4_address0;
output   weights3_4_ce0;
input  [63:0] weights3_4_q0;
output  [4:0] weights3_4_address1;
output   weights3_4_ce1;
input  [63:0] weights3_4_q1;
output  [4:0] weights3_5_address0;
output   weights3_5_ce0;
input  [63:0] weights3_5_q0;
output  [4:0] weights3_5_address1;
output   weights3_5_ce1;
input  [63:0] weights3_5_q1;
output  [4:0] weights3_6_address0;
output   weights3_6_ce0;
input  [63:0] weights3_6_q0;
output  [4:0] weights3_6_address1;
output   weights3_6_ce1;
input  [63:0] weights3_6_q1;
output  [4:0] weights3_7_address0;
output   weights3_7_ce0;
input  [63:0] weights3_7_q0;
output  [4:0] weights3_7_address1;
output   weights3_7_ce1;
input  [63:0] weights3_7_q1;
input  [63:0] output_differences_0_0_val;
input  [63:0] output_differences_0_1_val;
input  [63:0] output_differences_0_2_val;
output  [2:0] oracle_activations_0_address0;
output   oracle_activations_0_ce0;
output   oracle_activations_0_we0;
output  [63:0] oracle_activations_0_d0;
output  [2:0] oracle_activations_1_address0;
output   oracle_activations_1_ce0;
output   oracle_activations_1_we0;
output  [63:0] oracle_activations_1_d0;
output  [2:0] oracle_activations_2_address0;
output   oracle_activations_2_ce0;
output   oracle_activations_2_we0;
output  [63:0] oracle_activations_2_d0;
output  [2:0] oracle_activations_3_address0;
output   oracle_activations_3_ce0;
output   oracle_activations_3_we0;
output  [63:0] oracle_activations_3_d0;
output  [2:0] oracle_activations_4_address0;
output   oracle_activations_4_ce0;
output   oracle_activations_4_we0;
output  [63:0] oracle_activations_4_d0;
output  [2:0] oracle_activations_5_address0;
output   oracle_activations_5_ce0;
output   oracle_activations_5_we0;
output  [63:0] oracle_activations_5_d0;
output  [2:0] oracle_activations_6_address0;
output   oracle_activations_6_ce0;
output   oracle_activations_6_we0;
output  [63:0] oracle_activations_6_d0;
output  [2:0] oracle_activations_7_address0;
output   oracle_activations_7_ce0;
output   oracle_activations_7_we0;
output  [63:0] oracle_activations_7_d0;
output  [2:0] dactivations_0_address0;
output   dactivations_0_ce0;
input  [63:0] dactivations_0_q0;
output  [2:0] dactivations_1_address0;
output   dactivations_1_ce0;
input  [63:0] dactivations_1_q0;
output  [2:0] dactivations_2_address0;
output   dactivations_2_ce0;
input  [63:0] dactivations_2_q0;
output  [2:0] dactivations_3_address0;
output   dactivations_3_ce0;
input  [63:0] dactivations_3_q0;
output  [2:0] dactivations_4_address0;
output   dactivations_4_ce0;
input  [63:0] dactivations_4_q0;
output  [2:0] dactivations_5_address0;
output   dactivations_5_ce0;
input  [63:0] dactivations_5_q0;
output  [2:0] dactivations_6_address0;
output   dactivations_6_ce0;
input  [63:0] dactivations_6_q0;
output  [2:0] dactivations_7_address0;
output   dactivations_7_ce0;
input  [63:0] dactivations_7_q0;
output  [63:0] grp_fu_4181_p_din0;
output  [63:0] grp_fu_4181_p_din1;
output  [0:0] grp_fu_4181_p_opcode;
input  [63:0] grp_fu_4181_p_dout0;
output   grp_fu_4181_p_ce;
output  [63:0] grp_fu_4185_p_din0;
output  [63:0] grp_fu_4185_p_din1;
output  [1:0] grp_fu_4185_p_opcode;
input  [63:0] grp_fu_4185_p_dout0;
output   grp_fu_4185_p_ce;
output  [63:0] grp_fu_4189_p_din0;
output  [63:0] grp_fu_4189_p_din1;
output  [0:0] grp_fu_4189_p_opcode;
input  [63:0] grp_fu_4189_p_dout0;
output   grp_fu_4189_p_ce;
output  [63:0] grp_fu_4193_p_din0;
output  [63:0] grp_fu_4193_p_din1;
output  [0:0] grp_fu_4193_p_opcode;
input  [63:0] grp_fu_4193_p_dout0;
output   grp_fu_4193_p_ce;
output  [63:0] grp_fu_4197_p_din0;
output  [63:0] grp_fu_4197_p_din1;
output  [0:0] grp_fu_4197_p_opcode;
input  [63:0] grp_fu_4197_p_dout0;
output   grp_fu_4197_p_ce;
output  [63:0] grp_fu_4201_p_din0;
output  [63:0] grp_fu_4201_p_din1;
output  [0:0] grp_fu_4201_p_opcode;
input  [63:0] grp_fu_4201_p_dout0;
output   grp_fu_4201_p_ce;
output  [63:0] grp_fu_4205_p_din0;
output  [63:0] grp_fu_4205_p_din1;
output  [1:0] grp_fu_4205_p_opcode;
input  [63:0] grp_fu_4205_p_dout0;
output   grp_fu_4205_p_ce;
output  [63:0] grp_fu_4209_p_din0;
output  [63:0] grp_fu_4209_p_din1;
output  [0:0] grp_fu_4209_p_opcode;
input  [63:0] grp_fu_4209_p_dout0;
output   grp_fu_4209_p_ce;
output  [63:0] grp_fu_4213_p_din0;
output  [63:0] grp_fu_4213_p_din1;
output  [1:0] grp_fu_4213_p_opcode;
input  [63:0] grp_fu_4213_p_dout0;
output   grp_fu_4213_p_ce;
output  [63:0] grp_fu_4217_p_din0;
output  [63:0] grp_fu_4217_p_din1;
output  [0:0] grp_fu_4217_p_opcode;
input  [63:0] grp_fu_4217_p_dout0;
output   grp_fu_4217_p_ce;
output  [63:0] grp_fu_4221_p_din0;
output  [63:0] grp_fu_4221_p_din1;
output  [0:0] grp_fu_4221_p_opcode;
input  [63:0] grp_fu_4221_p_dout0;
output   grp_fu_4221_p_ce;
output  [63:0] grp_fu_4225_p_din0;
output  [63:0] grp_fu_4225_p_din1;
output  [0:0] grp_fu_4225_p_opcode;
input  [63:0] grp_fu_4225_p_dout0;
output   grp_fu_4225_p_ce;
output  [63:0] grp_fu_4277_p_din0;
output  [63:0] grp_fu_4277_p_din1;
input  [63:0] grp_fu_4277_p_dout0;
output   grp_fu_4277_p_ce;
output  [63:0] grp_fu_4281_p_din0;
output  [63:0] grp_fu_4281_p_din1;
input  [63:0] grp_fu_4281_p_dout0;
output   grp_fu_4281_p_ce;
output  [63:0] grp_fu_4285_p_din0;
output  [63:0] grp_fu_4285_p_din1;
input  [63:0] grp_fu_4285_p_dout0;
output   grp_fu_4285_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
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
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_1244;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_744;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_749;
reg   [63:0] reg_754;
reg   [63:0] reg_759;
reg   [63:0] reg_764;
reg   [63:0] reg_769;
reg   [63:0] reg_774;
reg   [63:0] reg_779;
reg   [6:0] i_8_reg_1239;
wire   [2:0] lshr_ln_fu_800_p4;
reg   [2:0] lshr_ln_reg_1248;
reg   [2:0] lshr_ln_reg_1248_pp0_iter1_reg;
reg   [2:0] lshr_ln_reg_1248_pp0_iter2_reg;
reg   [2:0] lshr_ln_reg_1248_pp0_iter3_reg;
reg   [2:0] lshr_ln_reg_1248_pp0_iter4_reg;
reg   [2:0] lshr_ln_reg_1248_pp0_iter5_reg;
reg   [2:0] lshr_ln_reg_1248_pp0_iter6_reg;
reg   [2:0] lshr_ln_reg_1248_pp0_iter7_reg;
reg   [2:0] lshr_ln_reg_1248_pp0_iter8_reg;
reg   [2:0] lshr_ln_reg_1248_pp0_iter9_reg;
reg   [2:0] lshr_ln_reg_1248_pp0_iter10_reg;
reg   [2:0] lshr_ln_reg_1248_pp0_iter11_reg;
reg   [2:0] lshr_ln_reg_1248_pp0_iter12_reg;
reg   [2:0] lshr_ln_reg_1248_pp0_iter13_reg;
reg   [2:0] lshr_ln_reg_1248_pp0_iter14_reg;
reg   [2:0] lshr_ln_reg_1248_pp0_iter15_reg;
wire   [7:0] empty_fu_865_p2;
reg   [7:0] empty_reg_1268;
wire   [63:0] zext_ln87_3_fu_966_p1;
reg   [63:0] zext_ln87_3_reg_1296;
wire   [63:0] zext_ln85_4_fu_1069_p1;
reg   [63:0] zext_ln85_4_reg_1301;
wire   [63:0] bitcast_ln85_fu_1085_p1;
wire   [63:0] bitcast_ln85_1_fu_1090_p1;
wire   [63:0] bitcast_ln85_2_fu_1095_p1;
wire   [63:0] bitcast_ln85_3_fu_1100_p1;
wire   [63:0] bitcast_ln85_4_fu_1105_p1;
wire   [63:0] bitcast_ln85_5_fu_1110_p1;
reg   [63:0] weights3_7_load_11_reg_1421;
reg   [63:0] weights3_0_load_12_reg_1426;
reg   [63:0] weights3_1_load_12_reg_1431;
reg   [63:0] weights3_2_load_12_reg_1436;
reg   [63:0] weights3_3_load_12_reg_1441;
reg   [63:0] weights3_4_load_12_reg_1446;
reg   [63:0] weights3_5_load_12_reg_1451;
reg   [63:0] weights3_6_load_12_reg_1456;
wire   [63:0] bitcast_ln85_6_fu_1115_p1;
wire   [63:0] bitcast_ln85_7_fu_1120_p1;
wire   [63:0] bitcast_ln85_8_fu_1125_p1;
wire   [63:0] bitcast_ln85_9_fu_1130_p1;
wire   [63:0] bitcast_ln85_10_fu_1135_p1;
wire   [63:0] bitcast_ln85_11_fu_1140_p1;
wire   [63:0] bitcast_ln85_12_fu_1145_p1;
wire   [63:0] bitcast_ln85_13_fu_1150_p1;
wire   [63:0] bitcast_ln85_15_fu_1155_p1;
wire   [63:0] bitcast_ln85_16_fu_1159_p1;
wire   [63:0] bitcast_ln85_17_fu_1163_p1;
wire   [63:0] bitcast_ln85_18_fu_1167_p1;
wire   [63:0] bitcast_ln85_19_fu_1171_p1;
wire   [63:0] bitcast_ln85_20_fu_1175_p1;
wire   [63:0] bitcast_ln85_21_fu_1179_p1;
wire   [63:0] bitcast_ln85_22_fu_1183_p1;
wire   [63:0] bitcast_ln85_14_fu_1187_p1;
wire   [63:0] bitcast_ln85_23_fu_1192_p1;
reg   [63:0] mul8_reg_1556;
reg   [63:0] mul8_s_reg_1561;
reg   [63:0] mul8_s_reg_1561_pp0_iter5_reg;
reg   [63:0] mul8_s_reg_1561_pp0_iter6_reg;
reg   [63:0] mul8_s_reg_1561_pp0_iter7_reg;
reg   [63:0] mul8_s_reg_1561_pp0_iter8_reg;
reg   [63:0] mul8_19_reg_1566;
reg   [63:0] mul8_19_reg_1566_pp0_iter5_reg;
reg   [63:0] mul8_19_reg_1566_pp0_iter6_reg;
reg   [63:0] mul8_19_reg_1566_pp0_iter7_reg;
reg   [63:0] mul8_19_reg_1566_pp0_iter8_reg;
reg   [63:0] mul8_19_reg_1566_pp0_iter9_reg;
reg   [63:0] mul8_19_reg_1566_pp0_iter10_reg;
reg   [63:0] mul8_19_reg_1566_pp0_iter11_reg;
reg   [63:0] mul8_19_reg_1566_pp0_iter12_reg;
wire   [63:0] grp_fu_692_p2;
reg   [63:0] mul8_1_reg_1571;
wire   [63:0] grp_fu_696_p2;
reg   [63:0] mul8_1_1_reg_1576;
reg   [63:0] mul8_1_1_reg_1576_pp0_iter5_reg;
reg   [63:0] mul8_1_1_reg_1576_pp0_iter6_reg;
reg   [63:0] mul8_1_1_reg_1576_pp0_iter7_reg;
reg   [63:0] mul8_1_1_reg_1576_pp0_iter8_reg;
wire   [63:0] grp_fu_700_p2;
reg   [63:0] mul8_1_2_reg_1581;
reg   [63:0] mul8_1_2_reg_1581_pp0_iter5_reg;
reg   [63:0] mul8_1_2_reg_1581_pp0_iter6_reg;
reg   [63:0] mul8_1_2_reg_1581_pp0_iter7_reg;
reg   [63:0] mul8_1_2_reg_1581_pp0_iter8_reg;
reg   [63:0] mul8_1_2_reg_1581_pp0_iter9_reg;
reg   [63:0] mul8_1_2_reg_1581_pp0_iter10_reg;
reg   [63:0] mul8_1_2_reg_1581_pp0_iter11_reg;
reg   [63:0] mul8_1_2_reg_1581_pp0_iter12_reg;
reg   [63:0] mul8_2_reg_1586;
reg   [63:0] mul8_2_1_reg_1591;
reg   [63:0] mul8_2_1_reg_1591_pp0_iter5_reg;
reg   [63:0] mul8_2_1_reg_1591_pp0_iter6_reg;
reg   [63:0] mul8_2_1_reg_1591_pp0_iter7_reg;
reg   [63:0] mul8_2_1_reg_1591_pp0_iter8_reg;
reg   [63:0] mul8_2_2_reg_1596;
reg   [63:0] mul8_2_2_reg_1596_pp0_iter5_reg;
reg   [63:0] mul8_2_2_reg_1596_pp0_iter6_reg;
reg   [63:0] mul8_2_2_reg_1596_pp0_iter7_reg;
reg   [63:0] mul8_2_2_reg_1596_pp0_iter8_reg;
reg   [63:0] mul8_2_2_reg_1596_pp0_iter9_reg;
reg   [63:0] mul8_2_2_reg_1596_pp0_iter10_reg;
reg   [63:0] mul8_2_2_reg_1596_pp0_iter11_reg;
reg   [63:0] mul8_2_2_reg_1596_pp0_iter12_reg;
reg   [63:0] mul8_3_reg_1601;
reg   [63:0] mul8_3_1_reg_1606;
reg   [63:0] mul8_3_1_reg_1606_pp0_iter5_reg;
reg   [63:0] mul8_3_1_reg_1606_pp0_iter6_reg;
reg   [63:0] mul8_3_1_reg_1606_pp0_iter7_reg;
reg   [63:0] mul8_3_1_reg_1606_pp0_iter8_reg;
reg   [63:0] mul8_3_2_reg_1611;
reg   [63:0] mul8_3_2_reg_1611_pp0_iter5_reg;
reg   [63:0] mul8_3_2_reg_1611_pp0_iter6_reg;
reg   [63:0] mul8_3_2_reg_1611_pp0_iter7_reg;
reg   [63:0] mul8_3_2_reg_1611_pp0_iter8_reg;
reg   [63:0] mul8_3_2_reg_1611_pp0_iter9_reg;
reg   [63:0] mul8_3_2_reg_1611_pp0_iter10_reg;
reg   [63:0] mul8_3_2_reg_1611_pp0_iter11_reg;
reg   [63:0] mul8_3_2_reg_1611_pp0_iter12_reg;
wire   [63:0] grp_fu_704_p2;
reg   [63:0] mul8_4_reg_1616;
wire   [63:0] grp_fu_708_p2;
reg   [63:0] mul8_4_1_reg_1621;
reg   [63:0] mul8_4_1_reg_1621_pp0_iter5_reg;
reg   [63:0] mul8_4_1_reg_1621_pp0_iter6_reg;
reg   [63:0] mul8_4_1_reg_1621_pp0_iter7_reg;
reg   [63:0] mul8_4_1_reg_1621_pp0_iter8_reg;
wire   [63:0] grp_fu_712_p2;
reg   [63:0] mul8_5_reg_1626;
wire   [63:0] grp_fu_716_p2;
reg   [63:0] mul8_5_1_reg_1631;
reg   [63:0] mul8_5_1_reg_1631_pp0_iter5_reg;
reg   [63:0] mul8_5_1_reg_1631_pp0_iter6_reg;
reg   [63:0] mul8_5_1_reg_1631_pp0_iter7_reg;
reg   [63:0] mul8_5_1_reg_1631_pp0_iter8_reg;
wire   [63:0] grp_fu_720_p2;
reg   [63:0] mul8_5_2_reg_1636;
reg   [63:0] mul8_5_2_reg_1636_pp0_iter5_reg;
reg   [63:0] mul8_5_2_reg_1636_pp0_iter6_reg;
reg   [63:0] mul8_5_2_reg_1636_pp0_iter7_reg;
reg   [63:0] mul8_5_2_reg_1636_pp0_iter8_reg;
reg   [63:0] mul8_5_2_reg_1636_pp0_iter9_reg;
reg   [63:0] mul8_5_2_reg_1636_pp0_iter10_reg;
reg   [63:0] mul8_5_2_reg_1636_pp0_iter11_reg;
reg   [63:0] mul8_5_2_reg_1636_pp0_iter12_reg;
wire   [63:0] grp_fu_724_p2;
reg   [63:0] mul8_6_reg_1641;
wire   [63:0] grp_fu_728_p2;
reg   [63:0] mul8_6_1_reg_1646;
reg   [63:0] mul8_6_1_reg_1646_pp0_iter5_reg;
reg   [63:0] mul8_6_1_reg_1646_pp0_iter6_reg;
reg   [63:0] mul8_6_1_reg_1646_pp0_iter7_reg;
reg   [63:0] mul8_6_1_reg_1646_pp0_iter8_reg;
wire   [63:0] grp_fu_732_p2;
reg   [63:0] mul8_6_2_reg_1651;
reg   [63:0] mul8_6_2_reg_1651_pp0_iter5_reg;
reg   [63:0] mul8_6_2_reg_1651_pp0_iter6_reg;
reg   [63:0] mul8_6_2_reg_1651_pp0_iter7_reg;
reg   [63:0] mul8_6_2_reg_1651_pp0_iter8_reg;
reg   [63:0] mul8_6_2_reg_1651_pp0_iter9_reg;
reg   [63:0] mul8_6_2_reg_1651_pp0_iter10_reg;
reg   [63:0] mul8_6_2_reg_1651_pp0_iter11_reg;
reg   [63:0] mul8_6_2_reg_1651_pp0_iter12_reg;
wire   [63:0] grp_fu_736_p2;
reg   [63:0] mul8_7_reg_1656;
wire   [63:0] grp_fu_740_p2;
reg   [63:0] mul8_7_1_reg_1661;
reg   [63:0] mul8_7_1_reg_1661_pp0_iter5_reg;
reg   [63:0] mul8_7_1_reg_1661_pp0_iter6_reg;
reg   [63:0] mul8_7_1_reg_1661_pp0_iter7_reg;
reg   [63:0] mul8_7_1_reg_1661_pp0_iter8_reg;
reg   [63:0] mul8_4_2_reg_1666;
reg   [63:0] mul8_4_2_reg_1666_pp0_iter6_reg;
reg   [63:0] mul8_4_2_reg_1666_pp0_iter7_reg;
reg   [63:0] mul8_4_2_reg_1666_pp0_iter8_reg;
reg   [63:0] mul8_4_2_reg_1666_pp0_iter9_reg;
reg   [63:0] mul8_4_2_reg_1666_pp0_iter10_reg;
reg   [63:0] mul8_4_2_reg_1666_pp0_iter11_reg;
reg   [63:0] mul8_4_2_reg_1666_pp0_iter12_reg;
reg   [63:0] mul8_4_2_reg_1666_pp0_iter13_reg;
reg   [63:0] mul8_7_2_reg_1671;
reg   [63:0] mul8_7_2_reg_1671_pp0_iter6_reg;
reg   [63:0] mul8_7_2_reg_1671_pp0_iter7_reg;
reg   [63:0] mul8_7_2_reg_1671_pp0_iter8_reg;
reg   [63:0] mul8_7_2_reg_1671_pp0_iter9_reg;
reg   [63:0] mul8_7_2_reg_1671_pp0_iter10_reg;
reg   [63:0] mul8_7_2_reg_1671_pp0_iter11_reg;
reg   [63:0] mul8_7_2_reg_1671_pp0_iter12_reg;
reg   [63:0] mul8_7_2_reg_1671_pp0_iter13_reg;
reg   [63:0] add_reg_1676;
reg   [63:0] add11_1_reg_1681;
reg   [63:0] add11_2_reg_1686;
reg   [63:0] add11_3_reg_1691;
reg   [63:0] add11_4_reg_1696;
reg   [63:0] add11_5_reg_1701;
reg   [63:0] add11_6_reg_1706;
reg   [63:0] add11_7_reg_1711;
reg   [63:0] add11_s_reg_1716;
reg   [63:0] add11_1_1_reg_1721;
reg   [63:0] add11_2_1_reg_1726;
reg   [63:0] add11_3_1_reg_1731;
reg   [63:0] add11_4_1_reg_1736;
reg   [63:0] add11_5_1_reg_1741;
reg   [63:0] add11_6_1_reg_1746;
reg   [63:0] add11_7_1_reg_1751;
wire   [63:0] zext_ln81_fu_1197_p1;
reg   [63:0] zext_ln81_reg_1756;
reg   [63:0] zext_ln81_reg_1756_pp0_iter17_reg;
reg   [63:0] zext_ln81_reg_1756_pp0_iter18_reg;
reg   [63:0] zext_ln81_reg_1756_pp0_iter19_reg;
reg   [63:0] zext_ln81_reg_1756_pp0_iter20_reg;
reg   [63:0] zext_ln81_reg_1756_pp0_iter21_reg;
reg   [63:0] add11_19_reg_1774;
reg   [63:0] add11_1_2_reg_1789;
reg   [63:0] dactivations_0_load_reg_1794;
reg   [63:0] dactivations_1_load_reg_1799;
reg   [63:0] add11_2_2_reg_1829;
reg   [63:0] add11_3_2_reg_1834;
reg   [63:0] add11_4_2_reg_1839;
reg   [63:0] add11_5_2_reg_1844;
reg   [63:0] add11_6_2_reg_1849;
reg   [63:0] add11_7_2_reg_1854;
reg   [63:0] dactivations_2_load_reg_1864;
reg   [63:0] dactivations_3_load_reg_1869;
reg   [63:0] dactivations_4_load_reg_1874;
reg   [63:0] dactivations_5_load_reg_1879;
reg   [63:0] dactivations_6_load_reg_1884;
reg   [63:0] dactivations_7_load_reg_1889;
reg   [63:0] mul_reg_1894;
reg   [63:0] mul16_1_reg_1899;
reg   [63:0] mul16_2_reg_1904;
reg   [63:0] mul16_3_reg_1909;
reg   [63:0] mul16_4_reg_1914;
reg   [63:0] mul16_5_reg_1919;
reg   [63:0] mul16_6_reg_1924;
reg   [63:0] mul16_7_reg_1929;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln85_fu_828_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln87_fu_881_p1;
wire   [63:0] zext_ln85_1_fu_903_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln87_1_fu_924_p1;
wire   [63:0] zext_ln87_2_fu_944_p1;
wire   [63:0] zext_ln85_2_fu_987_p1;
wire   [63:0] zext_ln85_3_fu_1007_p1;
wire   [63:0] zext_ln87_4_fu_1027_p1;
wire   [63:0] zext_ln87_5_fu_1047_p1;
reg   [6:0] i_fu_132;
wire   [6:0] add_ln82_fu_1075_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_8;
reg    weights3_0_ce0_local;
reg   [4:0] weights3_0_address0_local;
reg    weights3_0_ce1_local;
reg    weights3_1_ce0_local;
reg   [4:0] weights3_1_address0_local;
reg    weights3_1_ce1_local;
reg    weights3_2_ce0_local;
reg   [4:0] weights3_2_address0_local;
reg    weights3_2_ce1_local;
reg    weights3_3_ce0_local;
reg   [4:0] weights3_3_address0_local;
reg    weights3_3_ce1_local;
reg    weights3_4_ce0_local;
reg   [4:0] weights3_4_address0_local;
reg    weights3_4_ce1_local;
reg    weights3_5_ce0_local;
reg   [4:0] weights3_5_address0_local;
reg    weights3_5_ce1_local;
reg    weights3_6_ce1_local;
reg    weights3_6_ce0_local;
reg   [4:0] weights3_6_address0_local;
reg    weights3_7_ce1_local;
reg    weights3_7_ce0_local;
reg   [4:0] weights3_7_address0_local;
reg    dactivations_0_ce0_local;
reg    dactivations_1_ce0_local;
reg    dactivations_2_ce0_local;
reg    dactivations_3_ce0_local;
reg    dactivations_4_ce0_local;
reg    dactivations_5_ce0_local;
reg    dactivations_6_ce0_local;
reg    dactivations_7_ce0_local;
reg    oracle_activations_0_we0_local;
reg    oracle_activations_0_ce0_local;
reg    oracle_activations_1_we0_local;
reg    oracle_activations_1_ce0_local;
reg    oracle_activations_2_we0_local;
reg    oracle_activations_2_ce0_local;
reg    oracle_activations_3_we0_local;
reg    oracle_activations_3_ce0_local;
reg    oracle_activations_4_we0_local;
reg    oracle_activations_4_ce0_local;
reg    oracle_activations_5_we0_local;
reg    oracle_activations_5_ce0_local;
reg    oracle_activations_6_we0_local;
reg    oracle_activations_6_ce0_local;
reg    oracle_activations_7_we0_local;
reg    oracle_activations_7_ce0_local;
reg   [63:0] grp_fu_626_p0;
reg   [63:0] grp_fu_631_p0;
reg   [63:0] grp_fu_636_p0;
reg   [63:0] grp_fu_636_p1;
reg   [63:0] grp_fu_641_p0;
reg   [63:0] grp_fu_641_p1;
reg   [63:0] grp_fu_646_p0;
reg   [63:0] grp_fu_646_p1;
reg   [63:0] grp_fu_651_p0;
reg   [63:0] grp_fu_651_p1;
reg   [63:0] grp_fu_656_p0;
reg   [63:0] grp_fu_656_p1;
reg   [63:0] grp_fu_660_p0;
reg   [63:0] grp_fu_660_p1;
reg   [63:0] grp_fu_664_p0;
reg   [63:0] grp_fu_664_p1;
reg   [63:0] grp_fu_668_p0;
reg   [63:0] grp_fu_668_p1;
reg   [63:0] grp_fu_672_p0;
reg   [63:0] grp_fu_672_p1;
reg   [63:0] grp_fu_676_p0;
reg   [63:0] grp_fu_676_p1;
reg   [63:0] grp_fu_680_p0;
reg   [63:0] grp_fu_684_p0;
reg   [63:0] grp_fu_688_p0;
reg   [63:0] grp_fu_692_p0;
reg   [63:0] grp_fu_696_p0;
reg   [63:0] grp_fu_700_p0;
reg   [63:0] grp_fu_704_p0;
reg   [63:0] grp_fu_704_p1;
reg   [63:0] grp_fu_708_p0;
reg   [63:0] grp_fu_708_p1;
reg   [63:0] grp_fu_712_p0;
reg   [63:0] grp_fu_712_p1;
reg   [63:0] grp_fu_716_p0;
reg   [63:0] grp_fu_716_p1;
reg   [63:0] grp_fu_720_p0;
reg   [63:0] grp_fu_720_p1;
reg   [63:0] grp_fu_724_p0;
reg   [63:0] grp_fu_724_p1;
reg   [63:0] grp_fu_728_p0;
reg   [63:0] grp_fu_728_p1;
reg   [63:0] grp_fu_732_p0;
reg   [63:0] grp_fu_732_p1;
reg   [63:0] grp_fu_736_p0;
reg   [63:0] grp_fu_736_p1;
reg   [63:0] grp_fu_740_p0;
reg   [63:0] grp_fu_740_p1;
wire   [4:0] p_shl5_fu_814_p3;
wire   [4:0] zext_ln81_1_fu_810_p1;
wire   [4:0] sub_ln85_fu_822_p2;
wire   [4:0] tmp_s_fu_835_p4;
wire   [5:0] or_ln_fu_845_p3;
wire   [7:0] p_shl_fu_857_p3;
wire   [7:0] zext_ln83_fu_853_p1;
wire   [4:0] lshr_ln9_fu_871_p4;
wire   [7:0] empty_173_fu_888_p2;
wire   [4:0] lshr_ln85_1_fu_893_p4;
wire   [7:0] add_ln85_fu_909_p2;
wire   [4:0] lshr_ln85_2_fu_914_p4;
wire   [7:0] empty_174_fu_929_p2;
wire   [4:0] lshr_ln85_3_fu_934_p4;
wire   [7:0] empty_175_fu_951_p2;
wire   [4:0] lshr_ln85_4_fu_956_p4;
wire   [7:0] empty_176_fu_972_p2;
wire   [4:0] lshr_ln85_5_fu_977_p4;
wire   [7:0] add_ln85_1_fu_992_p2;
wire   [4:0] lshr_ln85_6_fu_997_p4;
wire   [7:0] add_ln85_2_fu_1012_p2;
wire   [4:0] lshr_ln85_7_fu_1017_p4;
wire   [7:0] empty_177_fu_1032_p2;
wire   [4:0] lshr_ln85_8_fu_1037_p4;
wire   [7:0] empty_178_fu_1054_p2;
wire   [4:0] lshr_ln85_9_fu_1059_p4;
wire    ap_block_pp0_stage1_00001;
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
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to21;
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
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_132 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U393(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_692_p0),.din1(output_differences_0_0_val),.ce(1'b1),.dout(grp_fu_692_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U394(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_696_p0),.din1(output_differences_0_1_val),.ce(1'b1),.dout(grp_fu_696_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U395(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_700_p0),.din1(output_differences_0_2_val),.ce(1'b1),.dout(grp_fu_700_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U396(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_704_p0),.din1(grp_fu_704_p1),.ce(1'b1),.dout(grp_fu_704_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U397(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_708_p0),.din1(grp_fu_708_p1),.ce(1'b1),.dout(grp_fu_708_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U398(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_712_p0),.din1(grp_fu_712_p1),.ce(1'b1),.dout(grp_fu_712_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U399(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_716_p0),.din1(grp_fu_716_p1),.ce(1'b1),.dout(grp_fu_716_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U400(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_720_p0),.din1(grp_fu_720_p1),.ce(1'b1),.dout(grp_fu_720_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U401(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_724_p0),.din1(grp_fu_724_p1),.ce(1'b1),.dout(grp_fu_724_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U402(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_728_p0),.din1(grp_fu_728_p1),.ce(1'b1),.dout(grp_fu_728_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U403(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_732_p0),.din1(grp_fu_732_p1),.ce(1'b1),.dout(grp_fu_732_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U404(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_736_p0),.din1(grp_fu_736_p1),.ce(1'b1),.dout(grp_fu_736_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U405(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_740_p0),.din1(grp_fu_740_p1),.ce(1'b1),.dout(grp_fu_740_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter20_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
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
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_132 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_1244 == 1'd0))) begin
        i_fu_132 <= add_ln82_fu_1075_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_744 <= weights3_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_744 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_749 <= weights3_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_749 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_754 <= weights3_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_754 <= weights3_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_759 <= weights3_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_759 <= weights3_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_764 <= weights3_4_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_764 <= weights3_4_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_769 <= weights3_5_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_769 <= weights3_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_774 <= weights3_6_q0;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            reg_774 <= weights3_6_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_779 <= weights3_7_q0;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            reg_779 <= weights3_7_q1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_19_reg_1774 <= grp_fu_4197_p_dout0;
        add11_1_2_reg_1789 <= grp_fu_4201_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_1_reg_1721 <= grp_fu_4193_p_dout0;
        add11_s_reg_1716 <= grp_fu_4189_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_reg_1681 <= grp_fu_4185_p_dout0;
        add_reg_1676 <= grp_fu_4181_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_2_1_reg_1726 <= grp_fu_4205_p_dout0;
        add11_3_1_reg_1731 <= grp_fu_4209_p_dout0;
        add11_4_1_reg_1736 <= grp_fu_4213_p_dout0;
        add11_5_1_reg_1741 <= grp_fu_4217_p_dout0;
        add11_6_1_reg_1746 <= grp_fu_4221_p_dout0;
        add11_7_1_reg_1751 <= grp_fu_4225_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_2_2_reg_1829 <= grp_fu_4205_p_dout0;
        add11_3_2_reg_1834 <= grp_fu_4209_p_dout0;
        add11_4_2_reg_1839 <= grp_fu_4213_p_dout0;
        add11_5_2_reg_1844 <= grp_fu_4217_p_dout0;
        add11_6_2_reg_1849 <= grp_fu_4221_p_dout0;
        add11_7_2_reg_1854 <= grp_fu_4225_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_2_reg_1686 <= grp_fu_4181_p_dout0;
        add11_3_reg_1691 <= grp_fu_4185_p_dout0;
        add11_4_reg_1696 <= grp_fu_4189_p_dout0;
        add11_5_reg_1701 <= grp_fu_4193_p_dout0;
        add11_6_reg_1706 <= grp_fu_4197_p_dout0;
        add11_7_reg_1711 <= grp_fu_4201_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        dactivations_0_load_reg_1794 <= dactivations_0_q0;
        dactivations_1_load_reg_1799 <= dactivations_1_q0;
        dactivations_2_load_reg_1864 <= dactivations_2_q0;
        dactivations_3_load_reg_1869 <= dactivations_3_q0;
        dactivations_4_load_reg_1874 <= dactivations_4_q0;
        dactivations_5_load_reg_1879 <= dactivations_5_q0;
        dactivations_6_load_reg_1884 <= dactivations_6_q0;
        dactivations_7_load_reg_1889 <= dactivations_7_q0;
        mul8_2_1_reg_1591_pp0_iter5_reg <= mul8_2_1_reg_1591;
        mul8_2_1_reg_1591_pp0_iter6_reg <= mul8_2_1_reg_1591_pp0_iter5_reg;
        mul8_2_1_reg_1591_pp0_iter7_reg <= mul8_2_1_reg_1591_pp0_iter6_reg;
        mul8_2_1_reg_1591_pp0_iter8_reg <= mul8_2_1_reg_1591_pp0_iter7_reg;
        mul8_2_2_reg_1596_pp0_iter10_reg <= mul8_2_2_reg_1596_pp0_iter9_reg;
        mul8_2_2_reg_1596_pp0_iter11_reg <= mul8_2_2_reg_1596_pp0_iter10_reg;
        mul8_2_2_reg_1596_pp0_iter12_reg <= mul8_2_2_reg_1596_pp0_iter11_reg;
        mul8_2_2_reg_1596_pp0_iter5_reg <= mul8_2_2_reg_1596;
        mul8_2_2_reg_1596_pp0_iter6_reg <= mul8_2_2_reg_1596_pp0_iter5_reg;
        mul8_2_2_reg_1596_pp0_iter7_reg <= mul8_2_2_reg_1596_pp0_iter6_reg;
        mul8_2_2_reg_1596_pp0_iter8_reg <= mul8_2_2_reg_1596_pp0_iter7_reg;
        mul8_2_2_reg_1596_pp0_iter9_reg <= mul8_2_2_reg_1596_pp0_iter8_reg;
        mul8_3_1_reg_1606_pp0_iter5_reg <= mul8_3_1_reg_1606;
        mul8_3_1_reg_1606_pp0_iter6_reg <= mul8_3_1_reg_1606_pp0_iter5_reg;
        mul8_3_1_reg_1606_pp0_iter7_reg <= mul8_3_1_reg_1606_pp0_iter6_reg;
        mul8_3_1_reg_1606_pp0_iter8_reg <= mul8_3_1_reg_1606_pp0_iter7_reg;
        mul8_3_2_reg_1611_pp0_iter10_reg <= mul8_3_2_reg_1611_pp0_iter9_reg;
        mul8_3_2_reg_1611_pp0_iter11_reg <= mul8_3_2_reg_1611_pp0_iter10_reg;
        mul8_3_2_reg_1611_pp0_iter12_reg <= mul8_3_2_reg_1611_pp0_iter11_reg;
        mul8_3_2_reg_1611_pp0_iter5_reg <= mul8_3_2_reg_1611;
        mul8_3_2_reg_1611_pp0_iter6_reg <= mul8_3_2_reg_1611_pp0_iter5_reg;
        mul8_3_2_reg_1611_pp0_iter7_reg <= mul8_3_2_reg_1611_pp0_iter6_reg;
        mul8_3_2_reg_1611_pp0_iter8_reg <= mul8_3_2_reg_1611_pp0_iter7_reg;
        mul8_3_2_reg_1611_pp0_iter9_reg <= mul8_3_2_reg_1611_pp0_iter8_reg;
        mul8_4_1_reg_1621_pp0_iter5_reg <= mul8_4_1_reg_1621;
        mul8_4_1_reg_1621_pp0_iter6_reg <= mul8_4_1_reg_1621_pp0_iter5_reg;
        mul8_4_1_reg_1621_pp0_iter7_reg <= mul8_4_1_reg_1621_pp0_iter6_reg;
        mul8_4_1_reg_1621_pp0_iter8_reg <= mul8_4_1_reg_1621_pp0_iter7_reg;
        mul8_5_1_reg_1631_pp0_iter5_reg <= mul8_5_1_reg_1631;
        mul8_5_1_reg_1631_pp0_iter6_reg <= mul8_5_1_reg_1631_pp0_iter5_reg;
        mul8_5_1_reg_1631_pp0_iter7_reg <= mul8_5_1_reg_1631_pp0_iter6_reg;
        mul8_5_1_reg_1631_pp0_iter8_reg <= mul8_5_1_reg_1631_pp0_iter7_reg;
        mul8_5_2_reg_1636_pp0_iter10_reg <= mul8_5_2_reg_1636_pp0_iter9_reg;
        mul8_5_2_reg_1636_pp0_iter11_reg <= mul8_5_2_reg_1636_pp0_iter10_reg;
        mul8_5_2_reg_1636_pp0_iter12_reg <= mul8_5_2_reg_1636_pp0_iter11_reg;
        mul8_5_2_reg_1636_pp0_iter5_reg <= mul8_5_2_reg_1636;
        mul8_5_2_reg_1636_pp0_iter6_reg <= mul8_5_2_reg_1636_pp0_iter5_reg;
        mul8_5_2_reg_1636_pp0_iter7_reg <= mul8_5_2_reg_1636_pp0_iter6_reg;
        mul8_5_2_reg_1636_pp0_iter8_reg <= mul8_5_2_reg_1636_pp0_iter7_reg;
        mul8_5_2_reg_1636_pp0_iter9_reg <= mul8_5_2_reg_1636_pp0_iter8_reg;
        mul8_6_1_reg_1646_pp0_iter5_reg <= mul8_6_1_reg_1646;
        mul8_6_1_reg_1646_pp0_iter6_reg <= mul8_6_1_reg_1646_pp0_iter5_reg;
        mul8_6_1_reg_1646_pp0_iter7_reg <= mul8_6_1_reg_1646_pp0_iter6_reg;
        mul8_6_1_reg_1646_pp0_iter8_reg <= mul8_6_1_reg_1646_pp0_iter7_reg;
        mul8_6_2_reg_1651_pp0_iter10_reg <= mul8_6_2_reg_1651_pp0_iter9_reg;
        mul8_6_2_reg_1651_pp0_iter11_reg <= mul8_6_2_reg_1651_pp0_iter10_reg;
        mul8_6_2_reg_1651_pp0_iter12_reg <= mul8_6_2_reg_1651_pp0_iter11_reg;
        mul8_6_2_reg_1651_pp0_iter5_reg <= mul8_6_2_reg_1651;
        mul8_6_2_reg_1651_pp0_iter6_reg <= mul8_6_2_reg_1651_pp0_iter5_reg;
        mul8_6_2_reg_1651_pp0_iter7_reg <= mul8_6_2_reg_1651_pp0_iter6_reg;
        mul8_6_2_reg_1651_pp0_iter8_reg <= mul8_6_2_reg_1651_pp0_iter7_reg;
        mul8_6_2_reg_1651_pp0_iter9_reg <= mul8_6_2_reg_1651_pp0_iter8_reg;
        mul8_7_1_reg_1661_pp0_iter5_reg <= mul8_7_1_reg_1661;
        mul8_7_1_reg_1661_pp0_iter6_reg <= mul8_7_1_reg_1661_pp0_iter5_reg;
        mul8_7_1_reg_1661_pp0_iter7_reg <= mul8_7_1_reg_1661_pp0_iter6_reg;
        mul8_7_1_reg_1661_pp0_iter8_reg <= mul8_7_1_reg_1661_pp0_iter7_reg;
        zext_ln85_4_reg_1301[4 : 0] <= zext_ln85_4_fu_1069_p1[4 : 0];
        zext_ln87_3_reg_1296[4 : 0] <= zext_ln87_3_fu_966_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_1268[7 : 1] <= empty_fu_865_p2[7 : 1];
        i_8_reg_1239 <= ap_sig_allocacmp_i_8;
        lshr_ln_reg_1248 <= {{ap_sig_allocacmp_i_8[5:3]}};
        lshr_ln_reg_1248_pp0_iter10_reg <= lshr_ln_reg_1248_pp0_iter9_reg;
        lshr_ln_reg_1248_pp0_iter11_reg <= lshr_ln_reg_1248_pp0_iter10_reg;
        lshr_ln_reg_1248_pp0_iter12_reg <= lshr_ln_reg_1248_pp0_iter11_reg;
        lshr_ln_reg_1248_pp0_iter13_reg <= lshr_ln_reg_1248_pp0_iter12_reg;
        lshr_ln_reg_1248_pp0_iter14_reg <= lshr_ln_reg_1248_pp0_iter13_reg;
        lshr_ln_reg_1248_pp0_iter15_reg <= lshr_ln_reg_1248_pp0_iter14_reg;
        lshr_ln_reg_1248_pp0_iter1_reg <= lshr_ln_reg_1248;
        lshr_ln_reg_1248_pp0_iter2_reg <= lshr_ln_reg_1248_pp0_iter1_reg;
        lshr_ln_reg_1248_pp0_iter3_reg <= lshr_ln_reg_1248_pp0_iter2_reg;
        lshr_ln_reg_1248_pp0_iter4_reg <= lshr_ln_reg_1248_pp0_iter3_reg;
        lshr_ln_reg_1248_pp0_iter5_reg <= lshr_ln_reg_1248_pp0_iter4_reg;
        lshr_ln_reg_1248_pp0_iter6_reg <= lshr_ln_reg_1248_pp0_iter5_reg;
        lshr_ln_reg_1248_pp0_iter7_reg <= lshr_ln_reg_1248_pp0_iter6_reg;
        lshr_ln_reg_1248_pp0_iter8_reg <= lshr_ln_reg_1248_pp0_iter7_reg;
        lshr_ln_reg_1248_pp0_iter9_reg <= lshr_ln_reg_1248_pp0_iter8_reg;
        mul8_19_reg_1566_pp0_iter10_reg <= mul8_19_reg_1566_pp0_iter9_reg;
        mul8_19_reg_1566_pp0_iter11_reg <= mul8_19_reg_1566_pp0_iter10_reg;
        mul8_19_reg_1566_pp0_iter12_reg <= mul8_19_reg_1566_pp0_iter11_reg;
        mul8_19_reg_1566_pp0_iter5_reg <= mul8_19_reg_1566;
        mul8_19_reg_1566_pp0_iter6_reg <= mul8_19_reg_1566_pp0_iter5_reg;
        mul8_19_reg_1566_pp0_iter7_reg <= mul8_19_reg_1566_pp0_iter6_reg;
        mul8_19_reg_1566_pp0_iter8_reg <= mul8_19_reg_1566_pp0_iter7_reg;
        mul8_19_reg_1566_pp0_iter9_reg <= mul8_19_reg_1566_pp0_iter8_reg;
        mul8_1_1_reg_1576_pp0_iter5_reg <= mul8_1_1_reg_1576;
        mul8_1_1_reg_1576_pp0_iter6_reg <= mul8_1_1_reg_1576_pp0_iter5_reg;
        mul8_1_1_reg_1576_pp0_iter7_reg <= mul8_1_1_reg_1576_pp0_iter6_reg;
        mul8_1_1_reg_1576_pp0_iter8_reg <= mul8_1_1_reg_1576_pp0_iter7_reg;
        mul8_1_2_reg_1581_pp0_iter10_reg <= mul8_1_2_reg_1581_pp0_iter9_reg;
        mul8_1_2_reg_1581_pp0_iter11_reg <= mul8_1_2_reg_1581_pp0_iter10_reg;
        mul8_1_2_reg_1581_pp0_iter12_reg <= mul8_1_2_reg_1581_pp0_iter11_reg;
        mul8_1_2_reg_1581_pp0_iter5_reg <= mul8_1_2_reg_1581;
        mul8_1_2_reg_1581_pp0_iter6_reg <= mul8_1_2_reg_1581_pp0_iter5_reg;
        mul8_1_2_reg_1581_pp0_iter7_reg <= mul8_1_2_reg_1581_pp0_iter6_reg;
        mul8_1_2_reg_1581_pp0_iter8_reg <= mul8_1_2_reg_1581_pp0_iter7_reg;
        mul8_1_2_reg_1581_pp0_iter9_reg <= mul8_1_2_reg_1581_pp0_iter8_reg;
        mul8_4_2_reg_1666_pp0_iter10_reg <= mul8_4_2_reg_1666_pp0_iter9_reg;
        mul8_4_2_reg_1666_pp0_iter11_reg <= mul8_4_2_reg_1666_pp0_iter10_reg;
        mul8_4_2_reg_1666_pp0_iter12_reg <= mul8_4_2_reg_1666_pp0_iter11_reg;
        mul8_4_2_reg_1666_pp0_iter13_reg <= mul8_4_2_reg_1666_pp0_iter12_reg;
        mul8_4_2_reg_1666_pp0_iter6_reg <= mul8_4_2_reg_1666;
        mul8_4_2_reg_1666_pp0_iter7_reg <= mul8_4_2_reg_1666_pp0_iter6_reg;
        mul8_4_2_reg_1666_pp0_iter8_reg <= mul8_4_2_reg_1666_pp0_iter7_reg;
        mul8_4_2_reg_1666_pp0_iter9_reg <= mul8_4_2_reg_1666_pp0_iter8_reg;
        mul8_7_2_reg_1671_pp0_iter10_reg <= mul8_7_2_reg_1671_pp0_iter9_reg;
        mul8_7_2_reg_1671_pp0_iter11_reg <= mul8_7_2_reg_1671_pp0_iter10_reg;
        mul8_7_2_reg_1671_pp0_iter12_reg <= mul8_7_2_reg_1671_pp0_iter11_reg;
        mul8_7_2_reg_1671_pp0_iter13_reg <= mul8_7_2_reg_1671_pp0_iter12_reg;
        mul8_7_2_reg_1671_pp0_iter6_reg <= mul8_7_2_reg_1671;
        mul8_7_2_reg_1671_pp0_iter7_reg <= mul8_7_2_reg_1671_pp0_iter6_reg;
        mul8_7_2_reg_1671_pp0_iter8_reg <= mul8_7_2_reg_1671_pp0_iter7_reg;
        mul8_7_2_reg_1671_pp0_iter9_reg <= mul8_7_2_reg_1671_pp0_iter8_reg;
        mul8_s_reg_1561_pp0_iter5_reg <= mul8_s_reg_1561;
        mul8_s_reg_1561_pp0_iter6_reg <= mul8_s_reg_1561_pp0_iter5_reg;
        mul8_s_reg_1561_pp0_iter7_reg <= mul8_s_reg_1561_pp0_iter6_reg;
        mul8_s_reg_1561_pp0_iter8_reg <= mul8_s_reg_1561_pp0_iter7_reg;
        tmp_reg_1244 <= ap_sig_allocacmp_i_8[32'd6];
        zext_ln81_reg_1756[2 : 0] <= zext_ln81_fu_1197_p1[2 : 0];
        zext_ln81_reg_1756_pp0_iter17_reg[2 : 0] <= zext_ln81_reg_1756[2 : 0];
        zext_ln81_reg_1756_pp0_iter18_reg[2 : 0] <= zext_ln81_reg_1756_pp0_iter17_reg[2 : 0];
        zext_ln81_reg_1756_pp0_iter19_reg[2 : 0] <= zext_ln81_reg_1756_pp0_iter18_reg[2 : 0];
        zext_ln81_reg_1756_pp0_iter20_reg[2 : 0] <= zext_ln81_reg_1756_pp0_iter19_reg[2 : 0];
        zext_ln81_reg_1756_pp0_iter21_reg[2 : 0] <= zext_ln81_reg_1756_pp0_iter20_reg[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul16_1_reg_1899 <= grp_fu_716_p2;
        mul_reg_1894 <= grp_fu_712_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul16_2_reg_1904 <= grp_fu_720_p2;
        mul16_3_reg_1909 <= grp_fu_724_p2;
        mul16_4_reg_1914 <= grp_fu_728_p2;
        mul16_5_reg_1919 <= grp_fu_732_p2;
        mul16_6_reg_1924 <= grp_fu_736_p2;
        mul16_7_reg_1929 <= grp_fu_740_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_19_reg_1566 <= grp_fu_4285_p_dout0;
        mul8_1_1_reg_1576 <= grp_fu_696_p2;
        mul8_1_2_reg_1581 <= grp_fu_700_p2;
        mul8_1_reg_1571 <= grp_fu_692_p2;
        mul8_reg_1556 <= grp_fu_4277_p_dout0;
        mul8_s_reg_1561 <= grp_fu_4281_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_2_1_reg_1591 <= grp_fu_4281_p_dout0;
        mul8_2_2_reg_1596 <= grp_fu_4285_p_dout0;
        mul8_2_reg_1586 <= grp_fu_4277_p_dout0;
        mul8_3_1_reg_1606 <= grp_fu_696_p2;
        mul8_3_2_reg_1611 <= grp_fu_700_p2;
        mul8_3_reg_1601 <= grp_fu_692_p2;
        mul8_4_1_reg_1621 <= grp_fu_708_p2;
        mul8_4_reg_1616 <= grp_fu_704_p2;
        mul8_5_1_reg_1631 <= grp_fu_716_p2;
        mul8_5_2_reg_1636 <= grp_fu_720_p2;
        mul8_5_reg_1626 <= grp_fu_712_p2;
        mul8_6_1_reg_1646 <= grp_fu_728_p2;
        mul8_6_2_reg_1651 <= grp_fu_732_p2;
        mul8_6_reg_1641 <= grp_fu_724_p2;
        mul8_7_1_reg_1661 <= grp_fu_740_p2;
        mul8_7_reg_1656 <= grp_fu_736_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_4_2_reg_1666 <= grp_fu_704_p2;
        mul8_7_2_reg_1671 <= grp_fu_708_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_load_12_reg_1426 <= weights3_0_q0;
        weights3_1_load_12_reg_1431 <= weights3_1_q0;
        weights3_2_load_12_reg_1436 <= weights3_2_q0;
        weights3_3_load_12_reg_1441 <= weights3_3_q0;
        weights3_4_load_12_reg_1446 <= weights3_4_q0;
        weights3_5_load_12_reg_1451 <= weights3_5_q0;
        weights3_6_load_12_reg_1456 <= weights3_6_q0;
        weights3_7_load_11_reg_1421 <= weights3_7_q0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_1244 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter20_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to21 = 1'b1;
    end else begin
        ap_idle_pp0_1to21 = 1'b0;
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
        ap_sig_allocacmp_i_8 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_8 = i_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_0_ce0_local = 1'b1;
    end else begin
        dactivations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_1_ce0_local = 1'b1;
    end else begin
        dactivations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_2_ce0_local = 1'b1;
    end else begin
        dactivations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_3_ce0_local = 1'b1;
    end else begin
        dactivations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_4_ce0_local = 1'b1;
    end else begin
        dactivations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_5_ce0_local = 1'b1;
    end else begin
        dactivations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_6_ce0_local = 1'b1;
    end else begin
        dactivations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_7_ce0_local = 1'b1;
    end else begin
        dactivations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_626_p0 = mul8_2_reg_1586;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_626_p0 = mul8_reg_1556;
    end else begin
        grp_fu_626_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_631_p0 = mul8_3_reg_1601;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_631_p0 = mul8_1_reg_1571;
    end else begin
        grp_fu_631_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_636_p0 = add_reg_1676;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_636_p0 = mul8_4_reg_1616;
    end else begin
        grp_fu_636_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_636_p1 = mul8_s_reg_1561_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_636_p1 = 64'd0;
    end else begin
        grp_fu_636_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_641_p0 = add11_1_reg_1681;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_641_p0 = mul8_5_reg_1626;
    end else begin
        grp_fu_641_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_641_p1 = mul8_1_1_reg_1576_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_641_p1 = 64'd0;
    end else begin
        grp_fu_641_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_646_p0 = add11_s_reg_1716;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_646_p0 = mul8_6_reg_1641;
    end else begin
        grp_fu_646_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_646_p1 = mul8_19_reg_1566_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_646_p1 = 64'd0;
    end else begin
        grp_fu_646_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_651_p0 = add11_1_1_reg_1721;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_651_p0 = mul8_7_reg_1656;
    end else begin
        grp_fu_651_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_651_p1 = mul8_1_2_reg_1581_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_651_p1 = 64'd0;
    end else begin
        grp_fu_651_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_656_p0 = add11_2_1_reg_1726;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_656_p0 = add11_2_reg_1686;
    end else begin
        grp_fu_656_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_656_p1 = mul8_2_2_reg_1596_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_656_p1 = mul8_2_1_reg_1591_pp0_iter8_reg;
    end else begin
        grp_fu_656_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_660_p0 = add11_3_1_reg_1731;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_660_p0 = add11_3_reg_1691;
    end else begin
        grp_fu_660_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_660_p1 = mul8_3_2_reg_1611_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_660_p1 = mul8_3_1_reg_1606_pp0_iter8_reg;
    end else begin
        grp_fu_660_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_664_p0 = add11_4_1_reg_1736;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_664_p0 = add11_4_reg_1696;
    end else begin
        grp_fu_664_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_664_p1 = mul8_4_2_reg_1666_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_664_p1 = mul8_4_1_reg_1621_pp0_iter8_reg;
    end else begin
        grp_fu_664_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_668_p0 = add11_5_1_reg_1741;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_668_p0 = add11_5_reg_1701;
    end else begin
        grp_fu_668_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_668_p1 = mul8_5_2_reg_1636_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_668_p1 = mul8_5_1_reg_1631_pp0_iter8_reg;
    end else begin
        grp_fu_668_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_672_p0 = add11_6_1_reg_1746;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_672_p0 = add11_6_reg_1706;
    end else begin
        grp_fu_672_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_672_p1 = mul8_6_2_reg_1651_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_672_p1 = mul8_6_1_reg_1646_pp0_iter8_reg;
    end else begin
        grp_fu_672_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_676_p0 = add11_7_1_reg_1751;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_676_p0 = add11_7_reg_1711;
    end else begin
        grp_fu_676_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_676_p1 = mul8_7_2_reg_1671_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_676_p1 = mul8_7_1_reg_1661_pp0_iter8_reg;
    end else begin
        grp_fu_676_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_680_p0 = bitcast_ln85_6_fu_1115_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_680_p0 = bitcast_ln85_fu_1085_p1;
        end else begin
            grp_fu_680_p0 = 'bx;
        end
    end else begin
        grp_fu_680_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_684_p0 = bitcast_ln85_7_fu_1120_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_684_p0 = bitcast_ln85_1_fu_1090_p1;
        end else begin
            grp_fu_684_p0 = 'bx;
        end
    end else begin
        grp_fu_684_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_688_p0 = bitcast_ln85_8_fu_1125_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_688_p0 = bitcast_ln85_2_fu_1095_p1;
        end else begin
            grp_fu_688_p0 = 'bx;
        end
    end else begin
        grp_fu_688_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_692_p0 = bitcast_ln85_9_fu_1130_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_692_p0 = bitcast_ln85_3_fu_1100_p1;
        end else begin
            grp_fu_692_p0 = 'bx;
        end
    end else begin
        grp_fu_692_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_696_p0 = bitcast_ln85_10_fu_1135_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_696_p0 = bitcast_ln85_4_fu_1105_p1;
        end else begin
            grp_fu_696_p0 = 'bx;
        end
    end else begin
        grp_fu_696_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_700_p0 = bitcast_ln85_11_fu_1140_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_700_p0 = bitcast_ln85_5_fu_1110_p1;
        end else begin
            grp_fu_700_p0 = 'bx;
        end
    end else begin
        grp_fu_700_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_704_p0 = bitcast_ln85_14_fu_1187_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_704_p0 = bitcast_ln85_12_fu_1145_p1;
    end else begin
        grp_fu_704_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_704_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_704_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_704_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_708_p0 = bitcast_ln85_23_fu_1192_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_708_p0 = bitcast_ln85_13_fu_1150_p1;
    end else begin
        grp_fu_708_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_708_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_708_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_708_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_712_p0 = add11_19_reg_1774;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_712_p0 = bitcast_ln85_15_fu_1155_p1;
    end else begin
        grp_fu_712_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_712_p1 = dactivations_0_load_reg_1794;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_712_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_712_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_716_p0 = add11_1_2_reg_1789;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_716_p0 = bitcast_ln85_16_fu_1159_p1;
    end else begin
        grp_fu_716_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_716_p1 = dactivations_1_load_reg_1799;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_716_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_716_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_720_p0 = add11_2_2_reg_1829;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_720_p0 = bitcast_ln85_17_fu_1163_p1;
    end else begin
        grp_fu_720_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_720_p1 = dactivations_2_load_reg_1864;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_720_p1 = output_differences_0_2_val;
    end else begin
        grp_fu_720_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_724_p0 = add11_3_2_reg_1834;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_724_p0 = bitcast_ln85_18_fu_1167_p1;
    end else begin
        grp_fu_724_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_724_p1 = dactivations_3_load_reg_1869;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_724_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_724_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_728_p0 = add11_4_2_reg_1839;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_728_p0 = bitcast_ln85_19_fu_1171_p1;
    end else begin
        grp_fu_728_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_728_p1 = dactivations_4_load_reg_1874;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_728_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_728_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_732_p0 = add11_5_2_reg_1844;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_732_p0 = bitcast_ln85_20_fu_1175_p1;
    end else begin
        grp_fu_732_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_732_p1 = dactivations_5_load_reg_1879;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_732_p1 = output_differences_0_2_val;
    end else begin
        grp_fu_732_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_736_p0 = add11_6_2_reg_1849;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_736_p0 = bitcast_ln85_21_fu_1179_p1;
    end else begin
        grp_fu_736_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_736_p1 = dactivations_6_load_reg_1884;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_736_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_736_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_740_p0 = add11_7_2_reg_1854;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_740_p0 = bitcast_ln85_22_fu_1183_p1;
    end else begin
        grp_fu_740_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_740_p1 = dactivations_7_load_reg_1889;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_740_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_740_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_0_ce0_local = 1'b1;
    end else begin
        oracle_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_0_we0_local = 1'b1;
    end else begin
        oracle_activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_1_ce0_local = 1'b1;
    end else begin
        oracle_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_1_we0_local = 1'b1;
    end else begin
        oracle_activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_2_ce0_local = 1'b1;
    end else begin
        oracle_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_2_we0_local = 1'b1;
    end else begin
        oracle_activations_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_3_ce0_local = 1'b1;
    end else begin
        oracle_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_3_we0_local = 1'b1;
    end else begin
        oracle_activations_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_4_ce0_local = 1'b1;
    end else begin
        oracle_activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_4_we0_local = 1'b1;
    end else begin
        oracle_activations_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_5_ce0_local = 1'b1;
    end else begin
        oracle_activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_5_we0_local = 1'b1;
    end else begin
        oracle_activations_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_6_ce0_local = 1'b1;
    end else begin
        oracle_activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_6_we0_local = 1'b1;
    end else begin
        oracle_activations_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_7_ce0_local = 1'b1;
    end else begin
        oracle_activations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_7_we0_local = 1'b1;
    end else begin
        oracle_activations_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address0_local = zext_ln85_3_fu_1007_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_0_address0_local = zext_ln85_fu_828_p1;
        end else begin
            weights3_0_address0_local = 'bx;
        end
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address0_local = zext_ln87_4_fu_1027_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_1_address0_local = zext_ln85_fu_828_p1;
        end else begin
            weights3_1_address0_local = 'bx;
        end
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_2_address0_local = zext_ln87_5_fu_1047_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_2_address0_local = zext_ln85_fu_828_p1;
        end else begin
            weights3_2_address0_local = 'bx;
        end
    end else begin
        weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_2_ce1_local = 1'b1;
    end else begin
        weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_3_address0_local = zext_ln87_5_fu_1047_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_3_address0_local = zext_ln87_fu_881_p1;
        end else begin
            weights3_3_address0_local = 'bx;
        end
    end else begin
        weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_ce1_local = 1'b1;
    end else begin
        weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_4_address0_local = zext_ln87_5_fu_1047_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_4_address0_local = zext_ln87_fu_881_p1;
        end else begin
            weights3_4_address0_local = 'bx;
        end
    end else begin
        weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_4_ce0_local = 1'b1;
    end else begin
        weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_4_ce1_local = 1'b1;
    end else begin
        weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_5_address0_local = zext_ln85_4_fu_1069_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_5_address0_local = zext_ln87_fu_881_p1;
        end else begin
            weights3_5_address0_local = 'bx;
        end
    end else begin
        weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_5_ce0_local = 1'b1;
    end else begin
        weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_5_ce1_local = 1'b1;
    end else begin
        weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_6_address0_local = zext_ln87_3_reg_1296;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_6_address0_local = zext_ln85_4_fu_1069_p1;
    end else begin
        weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_6_ce0_local = 1'b1;
    end else begin
        weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_6_ce1_local = 1'b1;
    end else begin
        weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_7_address0_local = zext_ln85_4_reg_1301;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_7_address0_local = zext_ln85_2_fu_987_p1;
    end else begin
        weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_7_ce0_local = 1'b1;
    end else begin
        weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_7_ce1_local = 1'b1;
    end else begin
        weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to21 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln82_fu_1075_p2 = (i_8_reg_1239 + 7'd8);
assign add_ln85_1_fu_992_p2 = (empty_reg_1268 + 8'd13);
assign add_ln85_2_fu_1012_p2 = (empty_reg_1268 + 8'd14);
assign add_ln85_fu_909_p2 = (empty_reg_1268 + 8'd5);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln85_10_fu_1135_p1 = reg_754;
assign bitcast_ln85_11_fu_1140_p1 = reg_759;
assign bitcast_ln85_12_fu_1145_p1 = reg_764;
assign bitcast_ln85_13_fu_1150_p1 = reg_769;
assign bitcast_ln85_14_fu_1187_p1 = reg_774;
assign bitcast_ln85_15_fu_1155_p1 = weights3_7_load_11_reg_1421;
assign bitcast_ln85_16_fu_1159_p1 = weights3_0_load_12_reg_1426;
assign bitcast_ln85_17_fu_1163_p1 = weights3_1_load_12_reg_1431;
assign bitcast_ln85_18_fu_1167_p1 = weights3_2_load_12_reg_1436;
assign bitcast_ln85_19_fu_1171_p1 = weights3_3_load_12_reg_1441;
assign bitcast_ln85_1_fu_1090_p1 = reg_749;
assign bitcast_ln85_20_fu_1175_p1 = weights3_4_load_12_reg_1446;
assign bitcast_ln85_21_fu_1179_p1 = weights3_5_load_12_reg_1451;
assign bitcast_ln85_22_fu_1183_p1 = weights3_6_load_12_reg_1456;
assign bitcast_ln85_23_fu_1192_p1 = reg_779;
assign bitcast_ln85_2_fu_1095_p1 = reg_754;
assign bitcast_ln85_3_fu_1100_p1 = reg_759;
assign bitcast_ln85_4_fu_1105_p1 = reg_764;
assign bitcast_ln85_5_fu_1110_p1 = reg_769;
assign bitcast_ln85_6_fu_1115_p1 = reg_774;
assign bitcast_ln85_7_fu_1120_p1 = reg_779;
assign bitcast_ln85_8_fu_1125_p1 = reg_744;
assign bitcast_ln85_9_fu_1130_p1 = reg_749;
assign bitcast_ln85_fu_1085_p1 = reg_744;
assign dactivations_0_address0 = zext_ln81_fu_1197_p1;
assign dactivations_0_ce0 = dactivations_0_ce0_local;
assign dactivations_1_address0 = zext_ln81_fu_1197_p1;
assign dactivations_1_ce0 = dactivations_1_ce0_local;
assign dactivations_2_address0 = zext_ln81_reg_1756;
assign dactivations_2_ce0 = dactivations_2_ce0_local;
assign dactivations_3_address0 = zext_ln81_reg_1756;
assign dactivations_3_ce0 = dactivations_3_ce0_local;
assign dactivations_4_address0 = zext_ln81_reg_1756;
assign dactivations_4_ce0 = dactivations_4_ce0_local;
assign dactivations_5_address0 = zext_ln81_reg_1756;
assign dactivations_5_ce0 = dactivations_5_ce0_local;
assign dactivations_6_address0 = zext_ln81_reg_1756;
assign dactivations_6_ce0 = dactivations_6_ce0_local;
assign dactivations_7_address0 = zext_ln81_reg_1756;
assign dactivations_7_ce0 = dactivations_7_ce0_local;
assign empty_173_fu_888_p2 = (empty_reg_1268 + 8'd3);
assign empty_174_fu_929_p2 = (empty_reg_1268 + 8'd6);
assign empty_175_fu_951_p2 = (empty_reg_1268 + 8'd9);
assign empty_176_fu_972_p2 = (empty_reg_1268 + 8'd12);
assign empty_177_fu_1032_p2 = (empty_reg_1268 + 8'd15);
assign empty_178_fu_1054_p2 = (empty_reg_1268 + 8'd18);
assign empty_fu_865_p2 = (p_shl_fu_857_p3 - zext_ln83_fu_853_p1);
assign grp_fu_4181_p_ce = 1'b1;
assign grp_fu_4181_p_din0 = grp_fu_626_p0;
assign grp_fu_4181_p_din1 = 64'd0;
assign grp_fu_4181_p_opcode = 2'd0;
assign grp_fu_4185_p_ce = 1'b1;
assign grp_fu_4185_p_din0 = grp_fu_631_p0;
assign grp_fu_4185_p_din1 = 64'd0;
assign grp_fu_4185_p_opcode = 2'd0;
assign grp_fu_4189_p_ce = 1'b1;
assign grp_fu_4189_p_din0 = grp_fu_636_p0;
assign grp_fu_4189_p_din1 = grp_fu_636_p1;
assign grp_fu_4189_p_opcode = 2'd0;
assign grp_fu_4193_p_ce = 1'b1;
assign grp_fu_4193_p_din0 = grp_fu_641_p0;
assign grp_fu_4193_p_din1 = grp_fu_641_p1;
assign grp_fu_4193_p_opcode = 2'd0;
assign grp_fu_4197_p_ce = 1'b1;
assign grp_fu_4197_p_din0 = grp_fu_646_p0;
assign grp_fu_4197_p_din1 = grp_fu_646_p1;
assign grp_fu_4197_p_opcode = 2'd0;
assign grp_fu_4201_p_ce = 1'b1;
assign grp_fu_4201_p_din0 = grp_fu_651_p0;
assign grp_fu_4201_p_din1 = grp_fu_651_p1;
assign grp_fu_4201_p_opcode = 2'd0;
assign grp_fu_4205_p_ce = 1'b1;
assign grp_fu_4205_p_din0 = grp_fu_656_p0;
assign grp_fu_4205_p_din1 = grp_fu_656_p1;
assign grp_fu_4205_p_opcode = 2'd0;
assign grp_fu_4209_p_ce = 1'b1;
assign grp_fu_4209_p_din0 = grp_fu_660_p0;
assign grp_fu_4209_p_din1 = grp_fu_660_p1;
assign grp_fu_4209_p_opcode = 2'd0;
assign grp_fu_4213_p_ce = 1'b1;
assign grp_fu_4213_p_din0 = grp_fu_664_p0;
assign grp_fu_4213_p_din1 = grp_fu_664_p1;
assign grp_fu_4213_p_opcode = 2'd0;
assign grp_fu_4217_p_ce = 1'b1;
assign grp_fu_4217_p_din0 = grp_fu_668_p0;
assign grp_fu_4217_p_din1 = grp_fu_668_p1;
assign grp_fu_4217_p_opcode = 2'd0;
assign grp_fu_4221_p_ce = 1'b1;
assign grp_fu_4221_p_din0 = grp_fu_672_p0;
assign grp_fu_4221_p_din1 = grp_fu_672_p1;
assign grp_fu_4221_p_opcode = 2'd0;
assign grp_fu_4225_p_ce = 1'b1;
assign grp_fu_4225_p_din0 = grp_fu_676_p0;
assign grp_fu_4225_p_din1 = grp_fu_676_p1;
assign grp_fu_4225_p_opcode = 2'd0;
assign grp_fu_4277_p_ce = 1'b1;
assign grp_fu_4277_p_din0 = grp_fu_680_p0;
assign grp_fu_4277_p_din1 = output_differences_0_0_val;
assign grp_fu_4281_p_ce = 1'b1;
assign grp_fu_4281_p_din0 = grp_fu_684_p0;
assign grp_fu_4281_p_din1 = output_differences_0_1_val;
assign grp_fu_4285_p_ce = 1'b1;
assign grp_fu_4285_p_din0 = grp_fu_688_p0;
assign grp_fu_4285_p_din1 = output_differences_0_2_val;
assign lshr_ln85_1_fu_893_p4 = {{empty_173_fu_888_p2[7:3]}};
assign lshr_ln85_2_fu_914_p4 = {{add_ln85_fu_909_p2[7:3]}};
assign lshr_ln85_3_fu_934_p4 = {{empty_174_fu_929_p2[7:3]}};
assign lshr_ln85_4_fu_956_p4 = {{empty_175_fu_951_p2[7:3]}};
assign lshr_ln85_5_fu_977_p4 = {{empty_176_fu_972_p2[7:3]}};
assign lshr_ln85_6_fu_997_p4 = {{add_ln85_1_fu_992_p2[7:3]}};
assign lshr_ln85_7_fu_1017_p4 = {{add_ln85_2_fu_1012_p2[7:3]}};
assign lshr_ln85_8_fu_1037_p4 = {{empty_177_fu_1032_p2[7:3]}};
assign lshr_ln85_9_fu_1059_p4 = {{empty_178_fu_1054_p2[7:3]}};
assign lshr_ln9_fu_871_p4 = {{empty_fu_865_p2[7:3]}};
assign lshr_ln_fu_800_p4 = {{ap_sig_allocacmp_i_8[5:3]}};
assign or_ln_fu_845_p3 = {{tmp_s_fu_835_p4}, {1'd1}};
assign oracle_activations_0_address0 = zext_ln81_reg_1756_pp0_iter20_reg;
assign oracle_activations_0_ce0 = oracle_activations_0_ce0_local;
assign oracle_activations_0_d0 = mul_reg_1894;
assign oracle_activations_0_we0 = oracle_activations_0_we0_local;
assign oracle_activations_1_address0 = zext_ln81_reg_1756_pp0_iter20_reg;
assign oracle_activations_1_ce0 = oracle_activations_1_ce0_local;
assign oracle_activations_1_d0 = mul16_1_reg_1899;
assign oracle_activations_1_we0 = oracle_activations_1_we0_local;
assign oracle_activations_2_address0 = zext_ln81_reg_1756_pp0_iter21_reg;
assign oracle_activations_2_ce0 = oracle_activations_2_ce0_local;
assign oracle_activations_2_d0 = mul16_2_reg_1904;
assign oracle_activations_2_we0 = oracle_activations_2_we0_local;
assign oracle_activations_3_address0 = zext_ln81_reg_1756_pp0_iter21_reg;
assign oracle_activations_3_ce0 = oracle_activations_3_ce0_local;
assign oracle_activations_3_d0 = mul16_3_reg_1909;
assign oracle_activations_3_we0 = oracle_activations_3_we0_local;
assign oracle_activations_4_address0 = zext_ln81_reg_1756_pp0_iter21_reg;
assign oracle_activations_4_ce0 = oracle_activations_4_ce0_local;
assign oracle_activations_4_d0 = mul16_4_reg_1914;
assign oracle_activations_4_we0 = oracle_activations_4_we0_local;
assign oracle_activations_5_address0 = zext_ln81_reg_1756_pp0_iter21_reg;
assign oracle_activations_5_ce0 = oracle_activations_5_ce0_local;
assign oracle_activations_5_d0 = mul16_5_reg_1919;
assign oracle_activations_5_we0 = oracle_activations_5_we0_local;
assign oracle_activations_6_address0 = zext_ln81_reg_1756_pp0_iter21_reg;
assign oracle_activations_6_ce0 = oracle_activations_6_ce0_local;
assign oracle_activations_6_d0 = mul16_6_reg_1924;
assign oracle_activations_6_we0 = oracle_activations_6_we0_local;
assign oracle_activations_7_address0 = zext_ln81_reg_1756_pp0_iter21_reg;
assign oracle_activations_7_ce0 = oracle_activations_7_ce0_local;
assign oracle_activations_7_d0 = mul16_7_reg_1929;
assign oracle_activations_7_we0 = oracle_activations_7_we0_local;
assign p_shl5_fu_814_p3 = {{lshr_ln_fu_800_p4}, {2'd0}};
assign p_shl_fu_857_p3 = {{tmp_s_fu_835_p4}, {3'd4}};
assign sub_ln85_fu_822_p2 = (p_shl5_fu_814_p3 - zext_ln81_1_fu_810_p1);
assign tmp_s_fu_835_p4 = {{ap_sig_allocacmp_i_8[5:1]}};
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = zext_ln87_1_fu_924_p1;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = zext_ln87_2_fu_944_p1;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign weights3_2_address0 = weights3_2_address0_local;
assign weights3_2_address1 = zext_ln87_2_fu_944_p1;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_2_ce1 = weights3_2_ce1_local;
assign weights3_3_address0 = weights3_3_address0_local;
assign weights3_3_address1 = zext_ln87_2_fu_944_p1;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_3_ce1 = weights3_3_ce1_local;
assign weights3_4_address0 = weights3_4_address0_local;
assign weights3_4_address1 = zext_ln87_3_fu_966_p1;
assign weights3_4_ce0 = weights3_4_ce0_local;
assign weights3_4_ce1 = weights3_4_ce1_local;
assign weights3_5_address0 = weights3_5_address0_local;
assign weights3_5_address1 = zext_ln87_3_fu_966_p1;
assign weights3_5_ce0 = weights3_5_ce0_local;
assign weights3_5_ce1 = weights3_5_ce1_local;
assign weights3_6_address0 = weights3_6_address0_local;
assign weights3_6_address1 = zext_ln85_1_fu_903_p1;
assign weights3_6_ce0 = weights3_6_ce0_local;
assign weights3_6_ce1 = weights3_6_ce1_local;
assign weights3_7_address0 = weights3_7_address0_local;
assign weights3_7_address1 = zext_ln85_1_fu_903_p1;
assign weights3_7_ce0 = weights3_7_ce0_local;
assign weights3_7_ce1 = weights3_7_ce1_local;
assign zext_ln81_1_fu_810_p1 = lshr_ln_fu_800_p4;
assign zext_ln81_fu_1197_p1 = lshr_ln_reg_1248_pp0_iter15_reg;
assign zext_ln83_fu_853_p1 = or_ln_fu_845_p3;
assign zext_ln85_1_fu_903_p1 = lshr_ln85_1_fu_893_p4;
assign zext_ln85_2_fu_987_p1 = lshr_ln85_5_fu_977_p4;
assign zext_ln85_3_fu_1007_p1 = lshr_ln85_6_fu_997_p4;
assign zext_ln85_4_fu_1069_p1 = lshr_ln85_9_fu_1059_p4;
assign zext_ln85_fu_828_p1 = sub_ln85_fu_822_p2;
assign zext_ln87_1_fu_924_p1 = lshr_ln85_2_fu_914_p4;
assign zext_ln87_2_fu_944_p1 = lshr_ln85_3_fu_934_p4;
assign zext_ln87_3_fu_966_p1 = lshr_ln85_4_fu_956_p4;
assign zext_ln87_4_fu_1027_p1 = lshr_ln85_7_fu_1017_p4;
assign zext_ln87_5_fu_1047_p1 = lshr_ln85_8_fu_1037_p4;
assign zext_ln87_fu_881_p1 = lshr_ln9_fu_871_p4;
always @ (posedge ap_clk) begin
    empty_reg_1268[0] <= 1'b1;
    zext_ln87_3_reg_1296[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln85_4_reg_1301[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1756[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1756_pp0_iter17_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1756_pp0_iter18_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1756_pp0_iter19_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1756_pp0_iter20_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1756_pp0_iter21_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end
endmodule 
