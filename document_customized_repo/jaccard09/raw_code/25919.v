module backprop_get_oracle_activations2_62_63_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_q1,weights3_3_address0,weights3_3_ce0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_q1,weights3_4_address0,weights3_4_ce0,weights3_4_q0,weights3_4_address1,weights3_4_ce1,weights3_4_q1,weights3_5_address0,weights3_5_ce0,weights3_5_q0,weights3_5_address1,weights3_5_ce1,weights3_5_q1,weights3_6_address0,weights3_6_ce0,weights3_6_q0,weights3_6_address1,weights3_6_ce1,weights3_6_q1,weights3_7_address0,weights3_7_ce0,weights3_7_q0,weights3_7_address1,weights3_7_ce1,weights3_7_q1,output_differences_0_0_val,output_differences_0_1_val,output_differences_0_2_val,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,oracle_activations_2_address0,oracle_activations_2_ce0,oracle_activations_2_we0,oracle_activations_2_d0,oracle_activations_3_address0,oracle_activations_3_ce0,oracle_activations_3_we0,oracle_activations_3_d0,oracle_activations_4_address0,oracle_activations_4_ce0,oracle_activations_4_we0,oracle_activations_4_d0,oracle_activations_5_address0,oracle_activations_5_ce0,oracle_activations_5_we0,oracle_activations_5_d0,oracle_activations_6_address0,oracle_activations_6_ce0,oracle_activations_6_we0,oracle_activations_6_d0,oracle_activations_7_address0,oracle_activations_7_ce0,oracle_activations_7_we0,oracle_activations_7_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_0_address1,dactivations_0_ce1,dactivations_0_q1,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_1_address1,dactivations_1_ce1,dactivations_1_q1,dactivations_2_address0,dactivations_2_ce0,dactivations_2_q0,dactivations_2_address1,dactivations_2_ce1,dactivations_2_q1,dactivations_3_address0,dactivations_3_ce0,dactivations_3_q0,dactivations_3_address1,dactivations_3_ce1,dactivations_3_q1,dactivations_4_address0,dactivations_4_ce0,dactivations_4_q0,dactivations_4_address1,dactivations_4_ce1,dactivations_4_q1,dactivations_5_address0,dactivations_5_ce0,dactivations_5_q0,dactivations_5_address1,dactivations_5_ce1,dactivations_5_q1,dactivations_6_address0,dactivations_6_ce0,dactivations_6_q0,dactivations_6_address1,dactivations_6_ce1,dactivations_6_q1,dactivations_7_address0,dactivations_7_ce0,dactivations_7_q0,dactivations_7_address1,dactivations_7_ce1,dactivations_7_q1,grp_fu_3556_p_din0,grp_fu_3556_p_din1,grp_fu_3556_p_opcode,grp_fu_3556_p_dout0,grp_fu_3556_p_ce,grp_fu_3560_p_din0,grp_fu_3560_p_din1,grp_fu_3560_p_opcode,grp_fu_3560_p_dout0,grp_fu_3560_p_ce,grp_fu_3564_p_din0,grp_fu_3564_p_din1,grp_fu_3564_p_opcode,grp_fu_3564_p_dout0,grp_fu_3564_p_ce,grp_fu_3568_p_din0,grp_fu_3568_p_din1,grp_fu_3568_p_opcode,grp_fu_3568_p_dout0,grp_fu_3568_p_ce,grp_fu_3572_p_din0,grp_fu_3572_p_din1,grp_fu_3572_p_opcode,grp_fu_3572_p_dout0,grp_fu_3572_p_ce,grp_fu_3576_p_din0,grp_fu_3576_p_din1,grp_fu_3576_p_opcode,grp_fu_3576_p_dout0,grp_fu_3576_p_ce,grp_fu_3580_p_din0,grp_fu_3580_p_din1,grp_fu_3580_p_opcode,grp_fu_3580_p_dout0,grp_fu_3580_p_ce,grp_fu_3584_p_din0,grp_fu_3584_p_din1,grp_fu_3584_p_opcode,grp_fu_3584_p_dout0,grp_fu_3584_p_ce,grp_fu_3588_p_din0,grp_fu_3588_p_din1,grp_fu_3588_p_opcode,grp_fu_3588_p_dout0,grp_fu_3588_p_ce,grp_fu_3592_p_din0,grp_fu_3592_p_din1,grp_fu_3592_p_opcode,grp_fu_3592_p_dout0,grp_fu_3592_p_ce,grp_fu_3596_p_din0,grp_fu_3596_p_din1,grp_fu_3596_p_opcode,grp_fu_3596_p_dout0,grp_fu_3596_p_ce,grp_fu_3600_p_din0,grp_fu_3600_p_din1,grp_fu_3600_p_opcode,grp_fu_3600_p_dout0,grp_fu_3600_p_ce,grp_fu_3604_p_din0,grp_fu_3604_p_din1,grp_fu_3604_p_opcode,grp_fu_3604_p_dout0,grp_fu_3604_p_ce,grp_fu_3608_p_din0,grp_fu_3608_p_din1,grp_fu_3608_p_opcode,grp_fu_3608_p_dout0,grp_fu_3608_p_ce,grp_fu_3612_p_din0,grp_fu_3612_p_din1,grp_fu_3612_p_opcode,grp_fu_3612_p_dout0,grp_fu_3612_p_ce,grp_fu_3616_p_din0,grp_fu_3616_p_din1,grp_fu_3616_p_opcode,grp_fu_3616_p_dout0,grp_fu_3616_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
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
output  [2:0] dactivations_0_address1;
output   dactivations_0_ce1;
input  [63:0] dactivations_0_q1;
output  [2:0] dactivations_1_address0;
output   dactivations_1_ce0;
input  [63:0] dactivations_1_q0;
output  [2:0] dactivations_1_address1;
output   dactivations_1_ce1;
input  [63:0] dactivations_1_q1;
output  [2:0] dactivations_2_address0;
output   dactivations_2_ce0;
input  [63:0] dactivations_2_q0;
output  [2:0] dactivations_2_address1;
output   dactivations_2_ce1;
input  [63:0] dactivations_2_q1;
output  [2:0] dactivations_3_address0;
output   dactivations_3_ce0;
input  [63:0] dactivations_3_q0;
output  [2:0] dactivations_3_address1;
output   dactivations_3_ce1;
input  [63:0] dactivations_3_q1;
output  [2:0] dactivations_4_address0;
output   dactivations_4_ce0;
input  [63:0] dactivations_4_q0;
output  [2:0] dactivations_4_address1;
output   dactivations_4_ce1;
input  [63:0] dactivations_4_q1;
output  [2:0] dactivations_5_address0;
output   dactivations_5_ce0;
input  [63:0] dactivations_5_q0;
output  [2:0] dactivations_5_address1;
output   dactivations_5_ce1;
input  [63:0] dactivations_5_q1;
output  [2:0] dactivations_6_address0;
output   dactivations_6_ce0;
input  [63:0] dactivations_6_q0;
output  [2:0] dactivations_6_address1;
output   dactivations_6_ce1;
input  [63:0] dactivations_6_q1;
output  [2:0] dactivations_7_address0;
output   dactivations_7_ce0;
input  [63:0] dactivations_7_q0;
output  [2:0] dactivations_7_address1;
output   dactivations_7_ce1;
input  [63:0] dactivations_7_q1;
output  [63:0] grp_fu_3556_p_din0;
output  [63:0] grp_fu_3556_p_din1;
output  [0:0] grp_fu_3556_p_opcode;
input  [63:0] grp_fu_3556_p_dout0;
output   grp_fu_3556_p_ce;
output  [63:0] grp_fu_3560_p_din0;
output  [63:0] grp_fu_3560_p_din1;
output  [0:0] grp_fu_3560_p_opcode;
input  [63:0] grp_fu_3560_p_dout0;
output   grp_fu_3560_p_ce;
output  [63:0] grp_fu_3564_p_din0;
output  [63:0] grp_fu_3564_p_din1;
output  [0:0] grp_fu_3564_p_opcode;
input  [63:0] grp_fu_3564_p_dout0;
output   grp_fu_3564_p_ce;
output  [63:0] grp_fu_3568_p_din0;
output  [63:0] grp_fu_3568_p_din1;
output  [0:0] grp_fu_3568_p_opcode;
input  [63:0] grp_fu_3568_p_dout0;
output   grp_fu_3568_p_ce;
output  [63:0] grp_fu_3572_p_din0;
output  [63:0] grp_fu_3572_p_din1;
output  [0:0] grp_fu_3572_p_opcode;
input  [63:0] grp_fu_3572_p_dout0;
output   grp_fu_3572_p_ce;
output  [63:0] grp_fu_3576_p_din0;
output  [63:0] grp_fu_3576_p_din1;
output  [0:0] grp_fu_3576_p_opcode;
input  [63:0] grp_fu_3576_p_dout0;
output   grp_fu_3576_p_ce;
output  [63:0] grp_fu_3580_p_din0;
output  [63:0] grp_fu_3580_p_din1;
output  [1:0] grp_fu_3580_p_opcode;
input  [63:0] grp_fu_3580_p_dout0;
output   grp_fu_3580_p_ce;
output  [63:0] grp_fu_3584_p_din0;
output  [63:0] grp_fu_3584_p_din1;
output  [1:0] grp_fu_3584_p_opcode;
input  [63:0] grp_fu_3584_p_dout0;
output   grp_fu_3584_p_ce;
output  [63:0] grp_fu_3588_p_din0;
output  [63:0] grp_fu_3588_p_din1;
output  [1:0] grp_fu_3588_p_opcode;
input  [63:0] grp_fu_3588_p_dout0;
output   grp_fu_3588_p_ce;
output  [63:0] grp_fu_3592_p_din0;
output  [63:0] grp_fu_3592_p_din1;
output  [1:0] grp_fu_3592_p_opcode;
input  [63:0] grp_fu_3592_p_dout0;
output   grp_fu_3592_p_ce;
output  [63:0] grp_fu_3596_p_din0;
output  [63:0] grp_fu_3596_p_din1;
output  [1:0] grp_fu_3596_p_opcode;
input  [63:0] grp_fu_3596_p_dout0;
output   grp_fu_3596_p_ce;
output  [63:0] grp_fu_3600_p_din0;
output  [63:0] grp_fu_3600_p_din1;
output  [1:0] grp_fu_3600_p_opcode;
input  [63:0] grp_fu_3600_p_dout0;
output   grp_fu_3600_p_ce;
output  [63:0] grp_fu_3604_p_din0;
output  [63:0] grp_fu_3604_p_din1;
output  [1:0] grp_fu_3604_p_opcode;
input  [63:0] grp_fu_3604_p_dout0;
output   grp_fu_3604_p_ce;
output  [63:0] grp_fu_3608_p_din0;
output  [63:0] grp_fu_3608_p_din1;
output  [1:0] grp_fu_3608_p_opcode;
input  [63:0] grp_fu_3608_p_dout0;
output   grp_fu_3608_p_ce;
output  [63:0] grp_fu_3612_p_din0;
output  [63:0] grp_fu_3612_p_din1;
output  [1:0] grp_fu_3612_p_opcode;
input  [63:0] grp_fu_3612_p_dout0;
output   grp_fu_3612_p_ce;
output  [63:0] grp_fu_3616_p_din0;
output  [63:0] grp_fu_3616_p_din1;
output  [1:0] grp_fu_3616_p_opcode;
input  [63:0] grp_fu_3616_p_dout0;
output   grp_fu_3616_p_ce;
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
reg   [0:0] tmp_reg_2125;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1172;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1176;
reg   [63:0] reg_1180;
reg   [63:0] reg_1184;
reg   [63:0] reg_1188;
reg   [63:0] reg_1192;
reg   [63:0] reg_1196;
reg   [63:0] reg_1200;
reg   [63:0] reg_1204;
reg   [63:0] reg_1208;
reg   [63:0] reg_1212;
reg   [63:0] reg_1216;
reg   [63:0] reg_1220;
reg   [63:0] reg_1224;
reg   [63:0] reg_1228;
reg   [63:0] reg_1232;
wire   [63:0] grp_fu_1148_p2;
reg   [63:0] reg_1236;
wire   [63:0] grp_fu_1152_p2;
reg   [63:0] reg_1242;
wire   [63:0] grp_fu_1156_p2;
reg   [63:0] reg_1248;
wire   [63:0] grp_fu_1160_p2;
reg   [63:0] reg_1255;
wire   [63:0] grp_fu_1164_p2;
reg   [63:0] reg_1262;
wire   [63:0] grp_fu_1168_p2;
reg   [63:0] reg_1268;
reg   [6:0] i_10_reg_2119;
reg   [0:0] tmp_reg_2125_pp0_iter1_reg;
reg   [0:0] tmp_reg_2125_pp0_iter2_reg;
reg   [0:0] tmp_reg_2125_pp0_iter3_reg;
reg   [0:0] tmp_reg_2125_pp0_iter4_reg;
reg   [0:0] tmp_reg_2125_pp0_iter5_reg;
reg   [0:0] tmp_reg_2125_pp0_iter6_reg;
reg   [0:0] tmp_reg_2125_pp0_iter7_reg;
reg   [0:0] tmp_reg_2125_pp0_iter8_reg;
reg   [0:0] tmp_reg_2125_pp0_iter9_reg;
reg   [0:0] tmp_reg_2125_pp0_iter10_reg;
reg   [0:0] tmp_reg_2125_pp0_iter11_reg;
reg   [0:0] tmp_reg_2125_pp0_iter12_reg;
reg   [0:0] tmp_reg_2125_pp0_iter13_reg;
wire   [2:0] lshr_ln_fu_1290_p4;
reg   [2:0] lshr_ln_reg_2129;
reg   [2:0] lshr_ln_reg_2129_pp0_iter1_reg;
reg   [2:0] lshr_ln_reg_2129_pp0_iter2_reg;
reg   [2:0] lshr_ln_reg_2129_pp0_iter3_reg;
reg   [2:0] lshr_ln_reg_2129_pp0_iter4_reg;
reg   [2:0] lshr_ln_reg_2129_pp0_iter5_reg;
reg   [2:0] lshr_ln_reg_2129_pp0_iter6_reg;
reg   [2:0] lshr_ln_reg_2129_pp0_iter7_reg;
reg   [2:0] lshr_ln_reg_2129_pp0_iter8_reg;
reg   [2:0] lshr_ln_reg_2129_pp0_iter9_reg;
wire   [4:0] sub_ln85_fu_1312_p2;
reg   [4:0] sub_ln85_reg_2134;
wire   [7:0] empty_fu_1355_p2;
reg   [7:0] empty_reg_2154;
wire   [63:0] zext_ln85_1_fu_1393_p1;
reg   [63:0] zext_ln85_1_reg_2192;
wire   [63:0] zext_ln87_2_fu_1413_p1;
reg   [63:0] zext_ln87_2_reg_2197;
wire   [63:0] zext_ln87_3_fu_1433_p1;
reg   [63:0] zext_ln87_3_reg_2203;
wire   [63:0] zext_ln87_5_fu_1493_p1;
reg   [63:0] zext_ln87_5_reg_2209;
wire   [63:0] zext_ln87_6_fu_1514_p1;
reg   [63:0] zext_ln87_6_reg_2214;
wire   [63:0] zext_ln87_7_fu_1524_p1;
reg   [63:0] zext_ln87_7_reg_2220;
wire   [63:0] zext_ln87_8_fu_1544_p1;
reg   [63:0] zext_ln87_8_reg_2226;
wire   [63:0] zext_ln85_4_fu_1564_p1;
reg   [63:0] zext_ln85_4_reg_2232;
wire   [63:0] zext_ln87_10_fu_1584_p1;
reg   [63:0] zext_ln87_10_reg_2237;
wire   [63:0] zext_ln87_11_fu_1604_p1;
reg   [63:0] zext_ln87_11_reg_2243;
wire   [63:0] zext_ln87_13_fu_1644_p1;
reg   [63:0] zext_ln87_13_reg_2249;
wire   [63:0] zext_ln85_7_fu_1664_p1;
reg   [63:0] zext_ln85_7_reg_2255;
wire   [63:0] bitcast_ln85_fu_1669_p1;
wire   [63:0] bitcast_ln85_1_fu_1674_p1;
wire   [63:0] bitcast_ln85_2_fu_1679_p1;
reg   [1:0] tmp_30_reg_2356;
reg   [1:0] tmp_30_reg_2356_pp0_iter1_reg;
reg   [1:0] tmp_30_reg_2356_pp0_iter2_reg;
reg   [1:0] tmp_30_reg_2356_pp0_iter3_reg;
reg   [1:0] tmp_30_reg_2356_pp0_iter4_reg;
reg   [1:0] tmp_30_reg_2356_pp0_iter5_reg;
reg   [1:0] tmp_30_reg_2356_pp0_iter6_reg;
reg   [1:0] tmp_30_reg_2356_pp0_iter7_reg;
reg   [1:0] tmp_30_reg_2356_pp0_iter8_reg;
reg   [1:0] tmp_30_reg_2356_pp0_iter9_reg;
reg   [1:0] tmp_30_reg_2356_pp0_iter10_reg;
wire   [63:0] bitcast_ln85_3_fu_1753_p1;
wire   [63:0] bitcast_ln85_4_fu_1758_p1;
wire   [63:0] bitcast_ln85_5_fu_1763_p1;
wire   [63:0] bitcast_ln85_6_fu_1818_p1;
wire   [63:0] bitcast_ln85_9_fu_1823_p1;
wire   [63:0] bitcast_ln85_12_fu_1828_p1;
wire   [63:0] bitcast_ln85_15_fu_1833_p1;
wire   [63:0] bitcast_ln85_16_fu_1838_p1;
wire   [63:0] bitcast_ln85_18_fu_1843_p1;
wire   [63:0] bitcast_ln85_19_fu_1848_p1;
wire   [63:0] bitcast_ln85_21_fu_1853_p1;
wire   [63:0] bitcast_ln85_24_fu_1858_p1;
wire   [63:0] bitcast_ln85_27_fu_1863_p1;
wire   [63:0] bitcast_ln85_30_fu_1868_p1;
wire   [63:0] bitcast_ln85_33_fu_1873_p1;
wire   [63:0] bitcast_ln85_36_fu_1878_p1;
wire   [63:0] bitcast_ln85_39_fu_1883_p1;
wire   [63:0] bitcast_ln85_42_fu_1888_p1;
wire   [63:0] bitcast_ln85_45_fu_1893_p1;
wire   [63:0] bitcast_ln85_7_fu_1898_p1;
wire   [63:0] bitcast_ln85_8_fu_1903_p1;
wire   [63:0] bitcast_ln85_10_fu_1908_p1;
wire   [63:0] bitcast_ln85_11_fu_1913_p1;
wire   [63:0] bitcast_ln85_13_fu_1918_p1;
wire   [63:0] bitcast_ln85_17_fu_1923_p1;
wire   [63:0] bitcast_ln85_20_fu_1928_p1;
wire   [63:0] bitcast_ln85_22_fu_1933_p1;
wire   [63:0] bitcast_ln85_25_fu_1938_p1;
wire   [63:0] bitcast_ln85_28_fu_1943_p1;
wire   [63:0] bitcast_ln85_31_fu_1948_p1;
wire   [63:0] bitcast_ln85_34_fu_1953_p1;
wire   [63:0] bitcast_ln85_37_fu_1958_p1;
wire   [63:0] bitcast_ln85_40_fu_1963_p1;
wire   [63:0] bitcast_ln85_43_fu_1968_p1;
wire   [63:0] bitcast_ln85_46_fu_1973_p1;
wire   [63:0] bitcast_ln85_14_fu_1978_p1;
wire   [63:0] bitcast_ln85_23_fu_1983_p1;
wire   [63:0] bitcast_ln85_26_fu_1988_p1;
wire   [63:0] bitcast_ln85_29_fu_1993_p1;
wire   [63:0] bitcast_ln85_32_fu_1998_p1;
wire   [63:0] bitcast_ln85_35_fu_2003_p1;
wire   [63:0] bitcast_ln85_38_fu_2008_p1;
wire   [63:0] bitcast_ln85_41_fu_2013_p1;
wire   [63:0] bitcast_ln85_44_fu_2018_p1;
wire   [63:0] bitcast_ln85_47_fu_2023_p1;
wire   [63:0] grp_fu_1084_p2;
reg   [63:0] mul8_reg_2716;
wire   [63:0] grp_fu_1088_p2;
reg   [63:0] mul8_s_reg_2721;
reg   [63:0] mul8_s_reg_2721_pp0_iter3_reg;
reg   [63:0] mul8_s_reg_2721_pp0_iter4_reg;
wire   [63:0] grp_fu_1092_p2;
reg   [63:0] mul8_27_reg_2726;
reg   [63:0] mul8_27_reg_2726_pp0_iter3_reg;
reg   [63:0] mul8_27_reg_2726_pp0_iter4_reg;
reg   [63:0] mul8_27_reg_2726_pp0_iter5_reg;
reg   [63:0] mul8_27_reg_2726_pp0_iter6_reg;
reg   [63:0] mul8_27_reg_2726_pp0_iter7_reg;
wire   [63:0] grp_fu_1096_p2;
reg   [63:0] mul8_1_reg_2731;
wire   [63:0] grp_fu_1100_p2;
reg   [63:0] mul8_1_1_reg_2736;
reg   [63:0] mul8_1_1_reg_2736_pp0_iter3_reg;
reg   [63:0] mul8_1_1_reg_2736_pp0_iter4_reg;
wire   [63:0] grp_fu_1104_p2;
reg   [63:0] mul8_1_2_reg_2741;
reg   [63:0] mul8_1_2_reg_2741_pp0_iter3_reg;
reg   [63:0] mul8_1_2_reg_2741_pp0_iter4_reg;
reg   [63:0] mul8_1_2_reg_2741_pp0_iter5_reg;
reg   [63:0] mul8_1_2_reg_2741_pp0_iter6_reg;
reg   [63:0] mul8_1_2_reg_2741_pp0_iter7_reg;
reg   [63:0] mul8_2_reg_2746;
reg   [63:0] mul8_3_reg_2751;
reg   [63:0] mul8_4_reg_2756;
reg   [63:0] mul8_5_reg_2761;
reg   [63:0] mul8_5_1_reg_2766;
reg   [63:0] mul8_5_1_reg_2766_pp0_iter4_reg;
reg   [63:0] mul8_5_1_reg_2766_pp0_iter5_reg;
reg   [63:0] mul8_6_reg_2771;
wire   [63:0] grp_fu_1108_p2;
reg   [63:0] mul8_6_1_reg_2776;
reg   [63:0] mul8_6_1_reg_2776_pp0_iter4_reg;
reg   [63:0] mul8_6_1_reg_2776_pp0_iter5_reg;
wire   [63:0] grp_fu_1112_p2;
reg   [63:0] mul8_7_reg_2781;
wire   [63:0] grp_fu_1116_p2;
reg   [63:0] mul8_8_reg_2786;
wire   [63:0] grp_fu_1120_p2;
reg   [63:0] mul8_9_reg_2791;
wire   [63:0] grp_fu_1124_p2;
reg   [63:0] mul8_10_reg_2796;
wire   [63:0] grp_fu_1128_p2;
reg   [63:0] mul8_11_reg_2801;
wire   [63:0] grp_fu_1132_p2;
reg   [63:0] mul8_12_reg_2806;
wire   [63:0] grp_fu_1136_p2;
reg   [63:0] mul8_13_reg_2811;
wire   [63:0] grp_fu_1140_p2;
reg   [63:0] mul8_14_reg_2816;
wire   [63:0] grp_fu_1144_p2;
reg   [63:0] mul8_15_reg_2821;
reg   [63:0] mul8_2_1_reg_2826;
reg   [63:0] mul8_2_1_reg_2826_pp0_iter4_reg;
reg   [63:0] mul8_2_1_reg_2826_pp0_iter5_reg;
reg   [63:0] mul8_2_2_reg_2831;
reg   [63:0] mul8_2_2_reg_2831_pp0_iter4_reg;
reg   [63:0] mul8_2_2_reg_2831_pp0_iter5_reg;
reg   [63:0] mul8_2_2_reg_2831_pp0_iter6_reg;
reg   [63:0] mul8_2_2_reg_2831_pp0_iter7_reg;
reg   [63:0] mul8_2_2_reg_2831_pp0_iter8_reg;
reg   [63:0] mul8_3_1_reg_2836;
reg   [63:0] mul8_3_1_reg_2836_pp0_iter4_reg;
reg   [63:0] mul8_3_1_reg_2836_pp0_iter5_reg;
reg   [63:0] mul8_3_2_reg_2841;
reg   [63:0] mul8_3_2_reg_2841_pp0_iter4_reg;
reg   [63:0] mul8_3_2_reg_2841_pp0_iter5_reg;
reg   [63:0] mul8_3_2_reg_2841_pp0_iter6_reg;
reg   [63:0] mul8_3_2_reg_2841_pp0_iter7_reg;
reg   [63:0] mul8_3_2_reg_2841_pp0_iter8_reg;
reg   [63:0] mul8_4_1_reg_2846;
reg   [63:0] mul8_4_1_reg_2846_pp0_iter4_reg;
reg   [63:0] mul8_4_1_reg_2846_pp0_iter5_reg;
reg   [63:0] mul8_5_2_reg_2851;
reg   [63:0] mul8_5_2_reg_2851_pp0_iter4_reg;
reg   [63:0] mul8_5_2_reg_2851_pp0_iter5_reg;
reg   [63:0] mul8_5_2_reg_2851_pp0_iter6_reg;
reg   [63:0] mul8_5_2_reg_2851_pp0_iter7_reg;
reg   [63:0] mul8_5_2_reg_2851_pp0_iter8_reg;
reg   [63:0] mul8_6_2_reg_2856;
reg   [63:0] mul8_6_2_reg_2856_pp0_iter4_reg;
reg   [63:0] mul8_6_2_reg_2856_pp0_iter5_reg;
reg   [63:0] mul8_6_2_reg_2856_pp0_iter6_reg;
reg   [63:0] mul8_6_2_reg_2856_pp0_iter7_reg;
reg   [63:0] mul8_6_2_reg_2856_pp0_iter8_reg;
reg   [63:0] mul8_7_1_reg_2861;
reg   [63:0] mul8_7_1_reg_2861_pp0_iter4_reg;
reg   [63:0] mul8_7_1_reg_2861_pp0_iter5_reg;
reg   [63:0] mul8_8_1_reg_2866;
reg   [63:0] mul8_8_1_reg_2866_pp0_iter4_reg;
reg   [63:0] mul8_8_1_reg_2866_pp0_iter5_reg;
reg   [63:0] mul8_9_1_reg_2871;
reg   [63:0] mul8_9_1_reg_2871_pp0_iter4_reg;
reg   [63:0] mul8_9_1_reg_2871_pp0_iter5_reg;
reg   [63:0] mul8_10_1_reg_2876;
reg   [63:0] mul8_10_1_reg_2876_pp0_iter4_reg;
reg   [63:0] mul8_10_1_reg_2876_pp0_iter5_reg;
reg   [63:0] mul8_11_1_reg_2881;
reg   [63:0] mul8_11_1_reg_2881_pp0_iter4_reg;
reg   [63:0] mul8_11_1_reg_2881_pp0_iter5_reg;
reg   [63:0] mul8_12_1_reg_2886;
reg   [63:0] mul8_12_1_reg_2886_pp0_iter4_reg;
reg   [63:0] mul8_12_1_reg_2886_pp0_iter5_reg;
reg   [63:0] mul8_13_1_reg_2891;
reg   [63:0] mul8_13_1_reg_2891_pp0_iter4_reg;
reg   [63:0] mul8_13_1_reg_2891_pp0_iter5_reg;
reg   [63:0] mul8_14_1_reg_2896;
reg   [63:0] mul8_14_1_reg_2896_pp0_iter4_reg;
reg   [63:0] mul8_14_1_reg_2896_pp0_iter5_reg;
reg   [63:0] mul8_15_1_reg_2901;
reg   [63:0] mul8_15_1_reg_2901_pp0_iter4_reg;
reg   [63:0] mul8_15_1_reg_2901_pp0_iter5_reg;
reg   [63:0] mul8_4_2_reg_2906;
reg   [63:0] mul8_4_2_reg_2906_pp0_iter4_reg;
reg   [63:0] mul8_4_2_reg_2906_pp0_iter5_reg;
reg   [63:0] mul8_4_2_reg_2906_pp0_iter6_reg;
reg   [63:0] mul8_4_2_reg_2906_pp0_iter7_reg;
reg   [63:0] mul8_7_2_reg_2911;
reg   [63:0] mul8_7_2_reg_2911_pp0_iter4_reg;
reg   [63:0] mul8_7_2_reg_2911_pp0_iter5_reg;
reg   [63:0] mul8_7_2_reg_2911_pp0_iter6_reg;
reg   [63:0] mul8_7_2_reg_2911_pp0_iter7_reg;
reg   [63:0] mul8_8_2_reg_2916;
reg   [63:0] mul8_8_2_reg_2916_pp0_iter4_reg;
reg   [63:0] mul8_8_2_reg_2916_pp0_iter5_reg;
reg   [63:0] mul8_8_2_reg_2916_pp0_iter6_reg;
reg   [63:0] mul8_8_2_reg_2916_pp0_iter7_reg;
reg   [63:0] mul8_9_2_reg_2921;
reg   [63:0] mul8_9_2_reg_2921_pp0_iter4_reg;
reg   [63:0] mul8_9_2_reg_2921_pp0_iter5_reg;
reg   [63:0] mul8_9_2_reg_2921_pp0_iter6_reg;
reg   [63:0] mul8_9_2_reg_2921_pp0_iter7_reg;
reg   [63:0] mul8_10_2_reg_2926;
reg   [63:0] mul8_10_2_reg_2926_pp0_iter4_reg;
reg   [63:0] mul8_10_2_reg_2926_pp0_iter5_reg;
reg   [63:0] mul8_10_2_reg_2926_pp0_iter6_reg;
reg   [63:0] mul8_10_2_reg_2926_pp0_iter7_reg;
reg   [63:0] mul8_11_2_reg_2931;
reg   [63:0] mul8_11_2_reg_2931_pp0_iter4_reg;
reg   [63:0] mul8_11_2_reg_2931_pp0_iter5_reg;
reg   [63:0] mul8_11_2_reg_2931_pp0_iter6_reg;
reg   [63:0] mul8_11_2_reg_2931_pp0_iter7_reg;
reg   [63:0] mul8_12_2_reg_2936;
reg   [63:0] mul8_12_2_reg_2936_pp0_iter4_reg;
reg   [63:0] mul8_12_2_reg_2936_pp0_iter5_reg;
reg   [63:0] mul8_12_2_reg_2936_pp0_iter6_reg;
reg   [63:0] mul8_12_2_reg_2936_pp0_iter7_reg;
reg   [63:0] mul8_13_2_reg_2941;
reg   [63:0] mul8_13_2_reg_2941_pp0_iter4_reg;
reg   [63:0] mul8_13_2_reg_2941_pp0_iter5_reg;
reg   [63:0] mul8_13_2_reg_2941_pp0_iter6_reg;
reg   [63:0] mul8_13_2_reg_2941_pp0_iter7_reg;
reg   [63:0] mul8_14_2_reg_2946;
reg   [63:0] mul8_14_2_reg_2946_pp0_iter4_reg;
reg   [63:0] mul8_14_2_reg_2946_pp0_iter5_reg;
reg   [63:0] mul8_14_2_reg_2946_pp0_iter6_reg;
reg   [63:0] mul8_14_2_reg_2946_pp0_iter7_reg;
reg   [63:0] mul8_15_2_reg_2951;
reg   [63:0] mul8_15_2_reg_2951_pp0_iter4_reg;
reg   [63:0] mul8_15_2_reg_2951_pp0_iter5_reg;
reg   [63:0] mul8_15_2_reg_2951_pp0_iter6_reg;
reg   [63:0] mul8_15_2_reg_2951_pp0_iter7_reg;
reg   [63:0] add_reg_2956;
reg   [63:0] add11_1_reg_2961;
reg   [63:0] add11_2_reg_2966;
reg   [63:0] add11_3_reg_2971;
reg   [63:0] add11_4_reg_2976;
reg   [63:0] add11_5_reg_2981;
reg   [63:0] add11_6_reg_2986;
reg   [63:0] add11_7_reg_2991;
reg   [63:0] add11_8_reg_2996;
reg   [63:0] add11_9_reg_3001;
reg   [63:0] add11_10_reg_3006;
reg   [63:0] add11_11_reg_3011;
reg   [63:0] add11_12_reg_3016;
reg   [63:0] add11_13_reg_3021;
reg   [63:0] add11_14_reg_3026;
reg   [63:0] add11_15_reg_3031;
reg   [63:0] add11_s_reg_3036;
reg   [63:0] add11_1_1_reg_3041;
reg   [63:0] add11_2_1_reg_3046;
reg   [63:0] add11_3_1_reg_3051;
reg   [63:0] add11_4_1_reg_3056;
reg   [63:0] add11_5_1_reg_3061;
reg   [63:0] add11_6_1_reg_3066;
reg   [63:0] add11_7_1_reg_3071;
reg   [63:0] add11_8_1_reg_3076;
reg   [63:0] add11_9_1_reg_3081;
reg   [63:0] add11_10_1_reg_3086;
reg   [63:0] add11_11_1_reg_3091;
reg   [63:0] add11_12_1_reg_3096;
reg   [63:0] add11_13_1_reg_3101;
reg   [63:0] add11_14_1_reg_3106;
reg   [63:0] add11_15_1_reg_3111;
wire   [63:0] zext_ln81_fu_2028_p1;
reg   [63:0] zext_ln81_reg_3116;
reg   [63:0] zext_ln81_reg_3116_pp0_iter11_reg;
reg   [63:0] zext_ln81_reg_3116_pp0_iter12_reg;
reg   [63:0] zext_ln81_reg_3116_pp0_iter13_reg;
reg   [63:0] dactivations_0_load_reg_3168;
reg   [63:0] dactivations_1_load_reg_3173;
reg   [63:0] dactivations_2_load_reg_3178;
reg   [63:0] dactivations_3_load_reg_3183;
reg   [63:0] dactivations_4_load_reg_3188;
reg   [63:0] dactivations_5_load_reg_3193;
reg   [63:0] dactivations_6_load_reg_3198;
reg   [63:0] dactivations_7_load_reg_3203;
reg   [63:0] add11_27_reg_3208;
reg   [63:0] add11_1_2_reg_3213;
wire   [63:0] zext_ln83_1_fu_2046_p1;
reg   [63:0] zext_ln83_1_reg_3218;
reg   [63:0] zext_ln83_1_reg_3218_pp0_iter12_reg;
reg   [63:0] zext_ln83_1_reg_3218_pp0_iter13_reg;
reg   [63:0] zext_ln83_1_reg_3218_pp0_iter14_reg;
reg   [63:0] add11_2_2_reg_3265;
reg   [63:0] add11_3_2_reg_3270;
reg   [63:0] add11_4_2_reg_3275;
reg   [63:0] add11_5_2_reg_3280;
reg   [63:0] add11_6_2_reg_3285;
reg   [63:0] add11_7_2_reg_3290;
reg   [63:0] add11_8_2_reg_3295;
reg   [63:0] add11_9_2_reg_3300;
reg   [63:0] add11_10_2_reg_3305;
reg   [63:0] add11_11_2_reg_3310;
reg   [63:0] add11_12_2_reg_3315;
reg   [63:0] add11_13_2_reg_3320;
reg   [63:0] add11_14_2_reg_3325;
reg   [63:0] add11_15_2_reg_3330;
reg   [63:0] dactivations_0_load_1_reg_3340;
reg   [63:0] dactivations_1_load_1_reg_3345;
reg   [63:0] dactivations_2_load_1_reg_3350;
reg   [63:0] dactivations_3_load_1_reg_3355;
reg   [63:0] dactivations_4_load_1_reg_3360;
reg   [63:0] dactivations_5_load_1_reg_3365;
reg   [63:0] dactivations_6_load_1_reg_3370;
reg   [63:0] dactivations_7_load_1_reg_3375;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln85_fu_1318_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln87_fu_1371_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln85_2_fu_1453_p1;
wire   [63:0] zext_ln85_3_fu_1473_p1;
wire   [63:0] zext_ln85_5_fu_1624_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln87_1_fu_1699_p1;
wire   [63:0] zext_ln87_4_fu_1719_p1;
wire   [63:0] zext_ln85_6_fu_1748_p1;
wire   [63:0] zext_ln87_9_fu_1793_p1;
wire   [63:0] zext_ln87_12_fu_1813_p1;
reg   [6:0] i_fu_160;
wire   [6:0] add_ln82_fu_1768_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_10;
reg    weights3_0_ce1_local;
reg   [4:0] weights3_0_address1_local;
reg    weights3_0_ce0_local;
reg   [4:0] weights3_0_address0_local;
reg    weights3_1_ce1_local;
reg   [4:0] weights3_1_address1_local;
reg    weights3_1_ce0_local;
reg   [4:0] weights3_1_address0_local;
reg    weights3_2_ce1_local;
reg   [4:0] weights3_2_address1_local;
reg    weights3_2_ce0_local;
reg   [4:0] weights3_2_address0_local;
reg    weights3_3_ce1_local;
reg   [4:0] weights3_3_address1_local;
reg    weights3_3_ce0_local;
reg   [4:0] weights3_3_address0_local;
reg    weights3_4_ce1_local;
reg   [4:0] weights3_4_address1_local;
reg    weights3_4_ce0_local;
reg   [4:0] weights3_4_address0_local;
reg    weights3_5_ce1_local;
reg   [4:0] weights3_5_address1_local;
reg    weights3_5_ce0_local;
reg   [4:0] weights3_5_address0_local;
reg    weights3_6_ce1_local;
reg   [4:0] weights3_6_address1_local;
reg    weights3_6_ce0_local;
reg   [4:0] weights3_6_address0_local;
reg    weights3_7_ce1_local;
reg   [4:0] weights3_7_address1_local;
reg    weights3_7_ce0_local;
reg   [4:0] weights3_7_address0_local;
reg    dactivations_0_ce1_local;
reg    dactivations_0_ce0_local;
reg    dactivations_1_ce1_local;
reg    dactivations_1_ce0_local;
reg    dactivations_2_ce1_local;
reg    dactivations_2_ce0_local;
reg    dactivations_3_ce1_local;
reg    dactivations_3_ce0_local;
reg    dactivations_4_ce1_local;
reg    dactivations_4_ce0_local;
reg    dactivations_5_ce1_local;
reg    dactivations_5_ce0_local;
reg    dactivations_6_ce1_local;
reg    dactivations_6_ce0_local;
reg    dactivations_7_ce1_local;
reg    dactivations_7_ce0_local;
reg    oracle_activations_0_we0_local;
reg    oracle_activations_0_ce0_local;
reg   [2:0] oracle_activations_0_address0_local;
reg    oracle_activations_1_we0_local;
reg    oracle_activations_1_ce0_local;
reg   [2:0] oracle_activations_1_address0_local;
reg    oracle_activations_2_we0_local;
reg   [63:0] oracle_activations_2_d0_local;
reg    oracle_activations_2_ce0_local;
reg   [2:0] oracle_activations_2_address0_local;
reg    oracle_activations_3_we0_local;
reg   [63:0] oracle_activations_3_d0_local;
reg    oracle_activations_3_ce0_local;
reg   [2:0] oracle_activations_3_address0_local;
reg    oracle_activations_4_we0_local;
reg   [63:0] oracle_activations_4_d0_local;
reg    oracle_activations_4_ce0_local;
reg   [2:0] oracle_activations_4_address0_local;
reg    oracle_activations_5_we0_local;
reg   [63:0] oracle_activations_5_d0_local;
reg    oracle_activations_5_ce0_local;
reg   [2:0] oracle_activations_5_address0_local;
reg    oracle_activations_6_we0_local;
reg   [63:0] oracle_activations_6_d0_local;
reg    oracle_activations_6_ce0_local;
reg   [2:0] oracle_activations_6_address0_local;
reg    oracle_activations_7_we0_local;
reg   [63:0] oracle_activations_7_d0_local;
reg    oracle_activations_7_ce0_local;
reg   [2:0] oracle_activations_7_address0_local;
reg   [63:0] grp_fu_1006_p0;
reg   [63:0] grp_fu_1006_p1;
reg   [63:0] grp_fu_1011_p0;
reg   [63:0] grp_fu_1011_p1;
reg   [63:0] grp_fu_1016_p0;
reg   [63:0] grp_fu_1016_p1;
reg   [63:0] grp_fu_1021_p0;
reg   [63:0] grp_fu_1021_p1;
reg   [63:0] grp_fu_1026_p0;
reg   [63:0] grp_fu_1026_p1;
reg   [63:0] grp_fu_1031_p0;
reg   [63:0] grp_fu_1031_p1;
reg   [63:0] grp_fu_1036_p0;
reg   [63:0] grp_fu_1036_p1;
reg   [63:0] grp_fu_1041_p0;
reg   [63:0] grp_fu_1041_p1;
reg   [63:0] grp_fu_1046_p0;
reg   [63:0] grp_fu_1046_p1;
reg   [63:0] grp_fu_1051_p0;
reg   [63:0] grp_fu_1051_p1;
reg   [63:0] grp_fu_1056_p0;
reg   [63:0] grp_fu_1056_p1;
reg   [63:0] grp_fu_1061_p0;
reg   [63:0] grp_fu_1061_p1;
reg   [63:0] grp_fu_1066_p0;
reg   [63:0] grp_fu_1066_p1;
reg   [63:0] grp_fu_1071_p0;
reg   [63:0] grp_fu_1071_p1;
reg   [63:0] grp_fu_1076_p0;
reg   [63:0] grp_fu_1076_p1;
reg   [63:0] grp_fu_1080_p0;
reg   [63:0] grp_fu_1080_p1;
reg   [63:0] grp_fu_1084_p0;
reg   [63:0] grp_fu_1084_p1;
reg   [63:0] grp_fu_1088_p0;
reg   [63:0] grp_fu_1088_p1;
reg   [63:0] grp_fu_1092_p0;
reg   [63:0] grp_fu_1092_p1;
reg   [63:0] grp_fu_1096_p0;
reg   [63:0] grp_fu_1096_p1;
reg   [63:0] grp_fu_1100_p0;
reg   [63:0] grp_fu_1104_p0;
reg   [63:0] grp_fu_1104_p1;
reg   [63:0] grp_fu_1108_p0;
reg   [63:0] grp_fu_1108_p1;
reg   [63:0] grp_fu_1112_p0;
reg   [63:0] grp_fu_1112_p1;
reg   [63:0] grp_fu_1116_p0;
reg   [63:0] grp_fu_1116_p1;
reg   [63:0] grp_fu_1120_p0;
reg   [63:0] grp_fu_1120_p1;
reg   [63:0] grp_fu_1124_p0;
reg   [63:0] grp_fu_1124_p1;
reg   [63:0] grp_fu_1128_p0;
reg   [63:0] grp_fu_1128_p1;
reg   [63:0] grp_fu_1132_p0;
reg   [63:0] grp_fu_1132_p1;
reg   [63:0] grp_fu_1136_p0;
reg   [63:0] grp_fu_1136_p1;
reg   [63:0] grp_fu_1140_p0;
reg   [63:0] grp_fu_1140_p1;
reg   [63:0] grp_fu_1144_p0;
reg   [63:0] grp_fu_1144_p1;
reg   [63:0] grp_fu_1148_p0;
reg   [63:0] grp_fu_1148_p1;
reg   [63:0] grp_fu_1152_p0;
reg   [63:0] grp_fu_1152_p1;
reg   [63:0] grp_fu_1156_p0;
reg   [63:0] grp_fu_1156_p1;
reg   [63:0] grp_fu_1160_p0;
reg   [63:0] grp_fu_1160_p1;
reg   [63:0] grp_fu_1164_p0;
reg   [63:0] grp_fu_1164_p1;
reg   [63:0] grp_fu_1168_p0;
reg   [63:0] grp_fu_1168_p1;
wire   [4:0] p_shl5_fu_1304_p3;
wire   [4:0] zext_ln81_1_fu_1300_p1;
wire   [4:0] tmp_s_fu_1325_p4;
wire   [5:0] or_ln_fu_1335_p3;
wire   [7:0] p_shl_fu_1347_p3;
wire   [7:0] zext_ln83_fu_1343_p1;
wire   [4:0] lshr_ln1_fu_1361_p4;
wire   [7:0] empty_152_fu_1378_p2;
wire   [4:0] lshr_ln85_1_fu_1383_p4;
wire   [7:0] empty_153_fu_1398_p2;
wire   [4:0] lshr_ln85_3_fu_1403_p4;
wire   [7:0] empty_154_fu_1418_p2;
wire   [4:0] lshr_ln85_4_fu_1423_p4;
wire   [7:0] empty_155_fu_1438_p2;
wire   [4:0] lshr_ln85_5_fu_1443_p4;
wire   [7:0] add_ln85_1_fu_1458_p2;
wire   [4:0] lshr_ln85_6_fu_1463_p4;
wire   [7:0] empty_156_fu_1478_p2;
wire   [4:0] lshr_ln85_8_fu_1483_p4;
wire   [7:0] empty_157_fu_1499_p2;
wire   [4:0] lshr_ln85_9_fu_1504_p4;
wire   [4:0] add_ln85_3_fu_1519_p2;
wire   [7:0] empty_158_fu_1529_p2;
wire   [4:0] lshr_ln85_s_fu_1534_p4;
wire   [7:0] empty_159_fu_1549_p2;
wire   [4:0] lshr_ln85_10_fu_1554_p4;
wire   [7:0] empty_160_fu_1569_p2;
wire   [4:0] lshr_ln85_12_fu_1574_p4;
wire   [7:0] empty_161_fu_1589_p2;
wire   [4:0] lshr_ln85_13_fu_1594_p4;
wire   [7:0] empty_162_fu_1609_p2;
wire   [4:0] lshr_ln85_14_fu_1614_p4;
wire   [7:0] empty_163_fu_1629_p2;
wire   [4:0] lshr_ln85_17_fu_1634_p4;
wire   [7:0] empty_164_fu_1649_p2;
wire   [4:0] lshr_ln85_18_fu_1654_p4;
wire   [7:0] add_ln85_fu_1684_p2;
wire   [4:0] lshr_ln85_2_fu_1689_p4;
wire   [7:0] add_ln85_2_fu_1704_p2;
wire   [4:0] lshr_ln85_7_fu_1709_p4;
wire   [7:0] add_ln85_5_fu_1733_p2;
wire   [4:0] lshr_ln85_15_fu_1738_p4;
wire   [7:0] add_ln85_4_fu_1778_p2;
wire   [4:0] lshr_ln85_11_fu_1783_p4;
wire   [7:0] add_ln85_6_fu_1798_p2;
wire   [4:0] lshr_ln85_16_fu_1803_p4;
wire   [2:0] or_ln3_fu_2039_p3;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter13_stage1;
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
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to14;
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
#0 i_fu_160 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U458(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1084_p0),.din1(grp_fu_1084_p1),.ce(1'b1),.dout(grp_fu_1084_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U459(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1088_p0),.din1(grp_fu_1088_p1),.ce(1'b1),.dout(grp_fu_1088_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U460(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1092_p0),.din1(grp_fu_1092_p1),.ce(1'b1),.dout(grp_fu_1092_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U461(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1096_p0),.din1(grp_fu_1096_p1),.ce(1'b1),.dout(grp_fu_1096_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U462(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1100_p0),.din1(output_differences_0_1_val),.ce(1'b1),.dout(grp_fu_1100_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U463(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1104_p0),.din1(grp_fu_1104_p1),.ce(1'b1),.dout(grp_fu_1104_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U464(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1108_p0),.din1(grp_fu_1108_p1),.ce(1'b1),.dout(grp_fu_1108_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U465(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1112_p0),.din1(grp_fu_1112_p1),.ce(1'b1),.dout(grp_fu_1112_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U466(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1116_p0),.din1(grp_fu_1116_p1),.ce(1'b1),.dout(grp_fu_1116_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U467(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1120_p0),.din1(grp_fu_1120_p1),.ce(1'b1),.dout(grp_fu_1120_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U468(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1124_p0),.din1(grp_fu_1124_p1),.ce(1'b1),.dout(grp_fu_1124_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U469(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1128_p0),.din1(grp_fu_1128_p1),.ce(1'b1),.dout(grp_fu_1128_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U470(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1132_p0),.din1(grp_fu_1132_p1),.ce(1'b1),.dout(grp_fu_1132_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U471(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1136_p0),.din1(grp_fu_1136_p1),.ce(1'b1),.dout(grp_fu_1136_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U472(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1140_p0),.din1(grp_fu_1140_p1),.ce(1'b1),.dout(grp_fu_1140_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U473(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1144_p0),.din1(grp_fu_1144_p1),.ce(1'b1),.dout(grp_fu_1144_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U474(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1148_p0),.din1(grp_fu_1148_p1),.ce(1'b1),.dout(grp_fu_1148_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U475(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1152_p0),.din1(grp_fu_1152_p1),.ce(1'b1),.dout(grp_fu_1152_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U476(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1156_p0),.din1(grp_fu_1156_p1),.ce(1'b1),.dout(grp_fu_1156_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U477(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1160_p0),.din1(grp_fu_1160_p1),.ce(1'b1),.dout(grp_fu_1160_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U478(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1164_p0),.din1(grp_fu_1164_p1),.ce(1'b1),.dout(grp_fu_1164_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U479(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1168_p0),.din1(grp_fu_1168_p1),.ce(1'b1),.dout(grp_fu_1168_p2));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage1))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage1))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage1))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_160 <= 7'd0;
    end else if (((tmp_reg_2125 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_160 <= add_ln82_fu_1768_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_10_1_reg_3086 <= grp_fu_3596_p_dout0;
        add11_11_1_reg_3091 <= grp_fu_3600_p_dout0;
        add11_12_1_reg_3096 <= grp_fu_3604_p_dout0;
        add11_13_1_reg_3101 <= grp_fu_3608_p_dout0;
        add11_14_1_reg_3106 <= grp_fu_3612_p_dout0;
        add11_15_1_reg_3111 <= grp_fu_3616_p_dout0;
        add11_2_1_reg_3046 <= grp_fu_3564_p_dout0;
        add11_3_1_reg_3051 <= grp_fu_3568_p_dout0;
        add11_4_1_reg_3056 <= grp_fu_3572_p_dout0;
        add11_5_1_reg_3061 <= grp_fu_3576_p_dout0;
        add11_6_1_reg_3066 <= grp_fu_3580_p_dout0;
        add11_7_1_reg_3071 <= grp_fu_3584_p_dout0;
        add11_8_1_reg_3076 <= grp_fu_3588_p_dout0;
        add11_9_1_reg_3081 <= grp_fu_3592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_10_2_reg_3305 <= grp_fu_3596_p_dout0;
        add11_11_2_reg_3310 <= grp_fu_3600_p_dout0;
        add11_12_2_reg_3315 <= grp_fu_3604_p_dout0;
        add11_13_2_reg_3320 <= grp_fu_3608_p_dout0;
        add11_14_2_reg_3325 <= grp_fu_3612_p_dout0;
        add11_15_2_reg_3330 <= grp_fu_3616_p_dout0;
        add11_2_2_reg_3265 <= grp_fu_3564_p_dout0;
        add11_3_2_reg_3270 <= grp_fu_3568_p_dout0;
        add11_4_2_reg_3275 <= grp_fu_3572_p_dout0;
        add11_5_2_reg_3280 <= grp_fu_3576_p_dout0;
        add11_6_2_reg_3285 <= grp_fu_3580_p_dout0;
        add11_7_2_reg_3290 <= grp_fu_3584_p_dout0;
        add11_8_2_reg_3295 <= grp_fu_3588_p_dout0;
        add11_9_2_reg_3300 <= grp_fu_3592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_10_reg_3006 <= grp_fu_3588_p_dout0;
        add11_11_reg_3011 <= grp_fu_3592_p_dout0;
        add11_12_reg_3016 <= grp_fu_3596_p_dout0;
        add11_13_reg_3021 <= grp_fu_3600_p_dout0;
        add11_14_reg_3026 <= grp_fu_3604_p_dout0;
        add11_15_reg_3031 <= grp_fu_3608_p_dout0;
        add11_2_reg_2966 <= grp_fu_3556_p_dout0;
        add11_3_reg_2971 <= grp_fu_3560_p_dout0;
        add11_4_reg_2976 <= grp_fu_3564_p_dout0;
        add11_5_reg_2981 <= grp_fu_3568_p_dout0;
        add11_6_reg_2986 <= grp_fu_3572_p_dout0;
        add11_7_reg_2991 <= grp_fu_3576_p_dout0;
        add11_8_reg_2996 <= grp_fu_3580_p_dout0;
        add11_9_reg_3001 <= grp_fu_3584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_1_reg_3041 <= grp_fu_3560_p_dout0;
        add11_s_reg_3036 <= grp_fu_3556_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_1_2_reg_3213 <= grp_fu_3616_p_dout0;
        add11_27_reg_3208 <= grp_fu_3612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_1_reg_2961 <= grp_fu_3560_p_dout0;
        add_reg_2956 <= grp_fu_3556_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations_0_load_1_reg_3340 <= dactivations_0_q0;
        dactivations_1_load_1_reg_3345 <= dactivations_1_q0;
        dactivations_2_load_1_reg_3350 <= dactivations_2_q0;
        dactivations_3_load_1_reg_3355 <= dactivations_3_q0;
        dactivations_4_load_1_reg_3360 <= dactivations_4_q0;
        dactivations_5_load_1_reg_3365 <= dactivations_5_q0;
        dactivations_6_load_1_reg_3370 <= dactivations_6_q0;
        dactivations_7_load_1_reg_3375 <= dactivations_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations_0_load_reg_3168 <= dactivations_0_q1;
        dactivations_1_load_reg_3173 <= dactivations_1_q1;
        dactivations_2_load_reg_3178 <= dactivations_2_q1;
        dactivations_3_load_reg_3183 <= dactivations_3_q1;
        dactivations_4_load_reg_3188 <= dactivations_4_q1;
        dactivations_5_load_reg_3193 <= dactivations_5_q1;
        dactivations_6_load_reg_3198 <= dactivations_6_q1;
        dactivations_7_load_reg_3203 <= dactivations_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_2154[7 : 1] <= empty_fu_1355_p2[7 : 1];
        i_10_reg_2119 <= ap_sig_allocacmp_i_10;
        lshr_ln_reg_2129 <= {{ap_sig_allocacmp_i_10[5:3]}};
        lshr_ln_reg_2129_pp0_iter1_reg <= lshr_ln_reg_2129;
        lshr_ln_reg_2129_pp0_iter2_reg <= lshr_ln_reg_2129_pp0_iter1_reg;
        lshr_ln_reg_2129_pp0_iter3_reg <= lshr_ln_reg_2129_pp0_iter2_reg;
        lshr_ln_reg_2129_pp0_iter4_reg <= lshr_ln_reg_2129_pp0_iter3_reg;
        lshr_ln_reg_2129_pp0_iter5_reg <= lshr_ln_reg_2129_pp0_iter4_reg;
        lshr_ln_reg_2129_pp0_iter6_reg <= lshr_ln_reg_2129_pp0_iter5_reg;
        lshr_ln_reg_2129_pp0_iter7_reg <= lshr_ln_reg_2129_pp0_iter6_reg;
        lshr_ln_reg_2129_pp0_iter8_reg <= lshr_ln_reg_2129_pp0_iter7_reg;
        lshr_ln_reg_2129_pp0_iter9_reg <= lshr_ln_reg_2129_pp0_iter8_reg;
        mul8_5_1_reg_2766_pp0_iter4_reg <= mul8_5_1_reg_2766;
        mul8_5_1_reg_2766_pp0_iter5_reg <= mul8_5_1_reg_2766_pp0_iter4_reg;
        mul8_6_1_reg_2776_pp0_iter4_reg <= mul8_6_1_reg_2776;
        mul8_6_1_reg_2776_pp0_iter5_reg <= mul8_6_1_reg_2776_pp0_iter4_reg;
        sub_ln85_reg_2134 <= sub_ln85_fu_1312_p2;
        tmp_reg_2125 <= ap_sig_allocacmp_i_10[32'd6];
        tmp_reg_2125_pp0_iter10_reg <= tmp_reg_2125_pp0_iter9_reg;
        tmp_reg_2125_pp0_iter11_reg <= tmp_reg_2125_pp0_iter10_reg;
        tmp_reg_2125_pp0_iter12_reg <= tmp_reg_2125_pp0_iter11_reg;
        tmp_reg_2125_pp0_iter13_reg <= tmp_reg_2125_pp0_iter12_reg;
        tmp_reg_2125_pp0_iter1_reg <= tmp_reg_2125;
        tmp_reg_2125_pp0_iter2_reg <= tmp_reg_2125_pp0_iter1_reg;
        tmp_reg_2125_pp0_iter3_reg <= tmp_reg_2125_pp0_iter2_reg;
        tmp_reg_2125_pp0_iter4_reg <= tmp_reg_2125_pp0_iter3_reg;
        tmp_reg_2125_pp0_iter5_reg <= tmp_reg_2125_pp0_iter4_reg;
        tmp_reg_2125_pp0_iter6_reg <= tmp_reg_2125_pp0_iter5_reg;
        tmp_reg_2125_pp0_iter7_reg <= tmp_reg_2125_pp0_iter6_reg;
        tmp_reg_2125_pp0_iter8_reg <= tmp_reg_2125_pp0_iter7_reg;
        tmp_reg_2125_pp0_iter9_reg <= tmp_reg_2125_pp0_iter8_reg;
        zext_ln81_reg_3116[2 : 0] <= zext_ln81_fu_2028_p1[2 : 0];
        zext_ln81_reg_3116_pp0_iter11_reg[2 : 0] <= zext_ln81_reg_3116[2 : 0];
        zext_ln81_reg_3116_pp0_iter12_reg[2 : 0] <= zext_ln81_reg_3116_pp0_iter11_reg[2 : 0];
        zext_ln81_reg_3116_pp0_iter13_reg[2 : 0] <= zext_ln81_reg_3116_pp0_iter12_reg[2 : 0];
        zext_ln83_1_reg_3218[2 : 1] <= zext_ln83_1_fu_2046_p1[2 : 1];
        zext_ln83_1_reg_3218_pp0_iter12_reg[2 : 1] <= zext_ln83_1_reg_3218[2 : 1];
        zext_ln83_1_reg_3218_pp0_iter13_reg[2 : 1] <= zext_ln83_1_reg_3218_pp0_iter12_reg[2 : 1];
        zext_ln83_1_reg_3218_pp0_iter14_reg[2 : 1] <= zext_ln83_1_reg_3218_pp0_iter13_reg[2 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_10_1_reg_2876 <= grp_fu_1124_p2;
        mul8_11_1_reg_2881 <= grp_fu_1128_p2;
        mul8_12_1_reg_2886 <= grp_fu_1132_p2;
        mul8_13_1_reg_2891 <= grp_fu_1136_p2;
        mul8_14_1_reg_2896 <= grp_fu_1140_p2;
        mul8_15_1_reg_2901 <= grp_fu_1144_p2;
        mul8_2_1_reg_2826 <= grp_fu_1084_p2;
        mul8_2_2_reg_2831 <= grp_fu_1088_p2;
        mul8_3_1_reg_2836 <= grp_fu_1092_p2;
        mul8_3_2_reg_2841 <= grp_fu_1096_p2;
        mul8_4_1_reg_2846 <= grp_fu_1100_p2;
        mul8_5_2_reg_2851 <= grp_fu_1104_p2;
        mul8_6_2_reg_2856 <= grp_fu_1108_p2;
        mul8_7_1_reg_2861 <= grp_fu_1112_p2;
        mul8_8_1_reg_2866 <= grp_fu_1116_p2;
        mul8_9_1_reg_2871 <= grp_fu_1120_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_10_1_reg_2876_pp0_iter4_reg <= mul8_10_1_reg_2876;
        mul8_10_1_reg_2876_pp0_iter5_reg <= mul8_10_1_reg_2876_pp0_iter4_reg;
        mul8_11_1_reg_2881_pp0_iter4_reg <= mul8_11_1_reg_2881;
        mul8_11_1_reg_2881_pp0_iter5_reg <= mul8_11_1_reg_2881_pp0_iter4_reg;
        mul8_12_1_reg_2886_pp0_iter4_reg <= mul8_12_1_reg_2886;
        mul8_12_1_reg_2886_pp0_iter5_reg <= mul8_12_1_reg_2886_pp0_iter4_reg;
        mul8_13_1_reg_2891_pp0_iter4_reg <= mul8_13_1_reg_2891;
        mul8_13_1_reg_2891_pp0_iter5_reg <= mul8_13_1_reg_2891_pp0_iter4_reg;
        mul8_14_1_reg_2896_pp0_iter4_reg <= mul8_14_1_reg_2896;
        mul8_14_1_reg_2896_pp0_iter5_reg <= mul8_14_1_reg_2896_pp0_iter4_reg;
        mul8_15_1_reg_2901_pp0_iter4_reg <= mul8_15_1_reg_2901;
        mul8_15_1_reg_2901_pp0_iter5_reg <= mul8_15_1_reg_2901_pp0_iter4_reg;
        mul8_2_1_reg_2826_pp0_iter4_reg <= mul8_2_1_reg_2826;
        mul8_2_1_reg_2826_pp0_iter5_reg <= mul8_2_1_reg_2826_pp0_iter4_reg;
        mul8_2_2_reg_2831_pp0_iter4_reg <= mul8_2_2_reg_2831;
        mul8_2_2_reg_2831_pp0_iter5_reg <= mul8_2_2_reg_2831_pp0_iter4_reg;
        mul8_2_2_reg_2831_pp0_iter6_reg <= mul8_2_2_reg_2831_pp0_iter5_reg;
        mul8_2_2_reg_2831_pp0_iter7_reg <= mul8_2_2_reg_2831_pp0_iter6_reg;
        mul8_2_2_reg_2831_pp0_iter8_reg <= mul8_2_2_reg_2831_pp0_iter7_reg;
        mul8_3_1_reg_2836_pp0_iter4_reg <= mul8_3_1_reg_2836;
        mul8_3_1_reg_2836_pp0_iter5_reg <= mul8_3_1_reg_2836_pp0_iter4_reg;
        mul8_3_2_reg_2841_pp0_iter4_reg <= mul8_3_2_reg_2841;
        mul8_3_2_reg_2841_pp0_iter5_reg <= mul8_3_2_reg_2841_pp0_iter4_reg;
        mul8_3_2_reg_2841_pp0_iter6_reg <= mul8_3_2_reg_2841_pp0_iter5_reg;
        mul8_3_2_reg_2841_pp0_iter7_reg <= mul8_3_2_reg_2841_pp0_iter6_reg;
        mul8_3_2_reg_2841_pp0_iter8_reg <= mul8_3_2_reg_2841_pp0_iter7_reg;
        mul8_4_1_reg_2846_pp0_iter4_reg <= mul8_4_1_reg_2846;
        mul8_4_1_reg_2846_pp0_iter5_reg <= mul8_4_1_reg_2846_pp0_iter4_reg;
        mul8_5_2_reg_2851_pp0_iter4_reg <= mul8_5_2_reg_2851;
        mul8_5_2_reg_2851_pp0_iter5_reg <= mul8_5_2_reg_2851_pp0_iter4_reg;
        mul8_5_2_reg_2851_pp0_iter6_reg <= mul8_5_2_reg_2851_pp0_iter5_reg;
        mul8_5_2_reg_2851_pp0_iter7_reg <= mul8_5_2_reg_2851_pp0_iter6_reg;
        mul8_5_2_reg_2851_pp0_iter8_reg <= mul8_5_2_reg_2851_pp0_iter7_reg;
        mul8_6_2_reg_2856_pp0_iter4_reg <= mul8_6_2_reg_2856;
        mul8_6_2_reg_2856_pp0_iter5_reg <= mul8_6_2_reg_2856_pp0_iter4_reg;
        mul8_6_2_reg_2856_pp0_iter6_reg <= mul8_6_2_reg_2856_pp0_iter5_reg;
        mul8_6_2_reg_2856_pp0_iter7_reg <= mul8_6_2_reg_2856_pp0_iter6_reg;
        mul8_6_2_reg_2856_pp0_iter8_reg <= mul8_6_2_reg_2856_pp0_iter7_reg;
        mul8_7_1_reg_2861_pp0_iter4_reg <= mul8_7_1_reg_2861;
        mul8_7_1_reg_2861_pp0_iter5_reg <= mul8_7_1_reg_2861_pp0_iter4_reg;
        mul8_8_1_reg_2866_pp0_iter4_reg <= mul8_8_1_reg_2866;
        mul8_8_1_reg_2866_pp0_iter5_reg <= mul8_8_1_reg_2866_pp0_iter4_reg;
        mul8_9_1_reg_2871_pp0_iter4_reg <= mul8_9_1_reg_2871;
        mul8_9_1_reg_2871_pp0_iter5_reg <= mul8_9_1_reg_2871_pp0_iter4_reg;
        zext_ln85_1_reg_2192[4 : 0] <= zext_ln85_1_fu_1393_p1[4 : 0];
        zext_ln85_4_reg_2232[4 : 0] <= zext_ln85_4_fu_1564_p1[4 : 0];
        zext_ln85_7_reg_2255[4 : 0] <= zext_ln85_7_fu_1664_p1[4 : 0];
        zext_ln87_10_reg_2237[4 : 0] <= zext_ln87_10_fu_1584_p1[4 : 0];
        zext_ln87_11_reg_2243[4 : 0] <= zext_ln87_11_fu_1604_p1[4 : 0];
        zext_ln87_13_reg_2249[4 : 0] <= zext_ln87_13_fu_1644_p1[4 : 0];
        zext_ln87_2_reg_2197[4 : 0] <= zext_ln87_2_fu_1413_p1[4 : 0];
        zext_ln87_3_reg_2203[4 : 0] <= zext_ln87_3_fu_1433_p1[4 : 0];
        zext_ln87_5_reg_2209[4 : 0] <= zext_ln87_5_fu_1493_p1[4 : 0];
        zext_ln87_6_reg_2214[4 : 0] <= zext_ln87_6_fu_1514_p1[4 : 0];
        zext_ln87_7_reg_2220[4 : 0] <= zext_ln87_7_fu_1524_p1[4 : 0];
        zext_ln87_8_reg_2226[4 : 0] <= zext_ln87_8_fu_1544_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_10_2_reg_2926 <= grp_fu_1124_p2;
        mul8_11_2_reg_2931 <= grp_fu_1128_p2;
        mul8_12_2_reg_2936 <= grp_fu_1132_p2;
        mul8_13_2_reg_2941 <= grp_fu_1136_p2;
        mul8_14_2_reg_2946 <= grp_fu_1140_p2;
        mul8_15_2_reg_2951 <= grp_fu_1144_p2;
        mul8_4_2_reg_2906 <= grp_fu_1108_p2;
        mul8_7_2_reg_2911 <= grp_fu_1112_p2;
        mul8_8_2_reg_2916 <= grp_fu_1116_p2;
        mul8_9_2_reg_2921 <= grp_fu_1120_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_10_2_reg_2926_pp0_iter4_reg <= mul8_10_2_reg_2926;
        mul8_10_2_reg_2926_pp0_iter5_reg <= mul8_10_2_reg_2926_pp0_iter4_reg;
        mul8_10_2_reg_2926_pp0_iter6_reg <= mul8_10_2_reg_2926_pp0_iter5_reg;
        mul8_10_2_reg_2926_pp0_iter7_reg <= mul8_10_2_reg_2926_pp0_iter6_reg;
        mul8_11_2_reg_2931_pp0_iter4_reg <= mul8_11_2_reg_2931;
        mul8_11_2_reg_2931_pp0_iter5_reg <= mul8_11_2_reg_2931_pp0_iter4_reg;
        mul8_11_2_reg_2931_pp0_iter6_reg <= mul8_11_2_reg_2931_pp0_iter5_reg;
        mul8_11_2_reg_2931_pp0_iter7_reg <= mul8_11_2_reg_2931_pp0_iter6_reg;
        mul8_12_2_reg_2936_pp0_iter4_reg <= mul8_12_2_reg_2936;
        mul8_12_2_reg_2936_pp0_iter5_reg <= mul8_12_2_reg_2936_pp0_iter4_reg;
        mul8_12_2_reg_2936_pp0_iter6_reg <= mul8_12_2_reg_2936_pp0_iter5_reg;
        mul8_12_2_reg_2936_pp0_iter7_reg <= mul8_12_2_reg_2936_pp0_iter6_reg;
        mul8_13_2_reg_2941_pp0_iter4_reg <= mul8_13_2_reg_2941;
        mul8_13_2_reg_2941_pp0_iter5_reg <= mul8_13_2_reg_2941_pp0_iter4_reg;
        mul8_13_2_reg_2941_pp0_iter6_reg <= mul8_13_2_reg_2941_pp0_iter5_reg;
        mul8_13_2_reg_2941_pp0_iter7_reg <= mul8_13_2_reg_2941_pp0_iter6_reg;
        mul8_14_2_reg_2946_pp0_iter4_reg <= mul8_14_2_reg_2946;
        mul8_14_2_reg_2946_pp0_iter5_reg <= mul8_14_2_reg_2946_pp0_iter4_reg;
        mul8_14_2_reg_2946_pp0_iter6_reg <= mul8_14_2_reg_2946_pp0_iter5_reg;
        mul8_14_2_reg_2946_pp0_iter7_reg <= mul8_14_2_reg_2946_pp0_iter6_reg;
        mul8_15_2_reg_2951_pp0_iter4_reg <= mul8_15_2_reg_2951;
        mul8_15_2_reg_2951_pp0_iter5_reg <= mul8_15_2_reg_2951_pp0_iter4_reg;
        mul8_15_2_reg_2951_pp0_iter6_reg <= mul8_15_2_reg_2951_pp0_iter5_reg;
        mul8_15_2_reg_2951_pp0_iter7_reg <= mul8_15_2_reg_2951_pp0_iter6_reg;
        mul8_1_1_reg_2736_pp0_iter3_reg <= mul8_1_1_reg_2736;
        mul8_1_1_reg_2736_pp0_iter4_reg <= mul8_1_1_reg_2736_pp0_iter3_reg;
        mul8_1_2_reg_2741_pp0_iter3_reg <= mul8_1_2_reg_2741;
        mul8_1_2_reg_2741_pp0_iter4_reg <= mul8_1_2_reg_2741_pp0_iter3_reg;
        mul8_1_2_reg_2741_pp0_iter5_reg <= mul8_1_2_reg_2741_pp0_iter4_reg;
        mul8_1_2_reg_2741_pp0_iter6_reg <= mul8_1_2_reg_2741_pp0_iter5_reg;
        mul8_1_2_reg_2741_pp0_iter7_reg <= mul8_1_2_reg_2741_pp0_iter6_reg;
        mul8_27_reg_2726_pp0_iter3_reg <= mul8_27_reg_2726;
        mul8_27_reg_2726_pp0_iter4_reg <= mul8_27_reg_2726_pp0_iter3_reg;
        mul8_27_reg_2726_pp0_iter5_reg <= mul8_27_reg_2726_pp0_iter4_reg;
        mul8_27_reg_2726_pp0_iter6_reg <= mul8_27_reg_2726_pp0_iter5_reg;
        mul8_27_reg_2726_pp0_iter7_reg <= mul8_27_reg_2726_pp0_iter6_reg;
        mul8_4_2_reg_2906_pp0_iter4_reg <= mul8_4_2_reg_2906;
        mul8_4_2_reg_2906_pp0_iter5_reg <= mul8_4_2_reg_2906_pp0_iter4_reg;
        mul8_4_2_reg_2906_pp0_iter6_reg <= mul8_4_2_reg_2906_pp0_iter5_reg;
        mul8_4_2_reg_2906_pp0_iter7_reg <= mul8_4_2_reg_2906_pp0_iter6_reg;
        mul8_7_2_reg_2911_pp0_iter4_reg <= mul8_7_2_reg_2911;
        mul8_7_2_reg_2911_pp0_iter5_reg <= mul8_7_2_reg_2911_pp0_iter4_reg;
        mul8_7_2_reg_2911_pp0_iter6_reg <= mul8_7_2_reg_2911_pp0_iter5_reg;
        mul8_7_2_reg_2911_pp0_iter7_reg <= mul8_7_2_reg_2911_pp0_iter6_reg;
        mul8_8_2_reg_2916_pp0_iter4_reg <= mul8_8_2_reg_2916;
        mul8_8_2_reg_2916_pp0_iter5_reg <= mul8_8_2_reg_2916_pp0_iter4_reg;
        mul8_8_2_reg_2916_pp0_iter6_reg <= mul8_8_2_reg_2916_pp0_iter5_reg;
        mul8_8_2_reg_2916_pp0_iter7_reg <= mul8_8_2_reg_2916_pp0_iter6_reg;
        mul8_9_2_reg_2921_pp0_iter4_reg <= mul8_9_2_reg_2921;
        mul8_9_2_reg_2921_pp0_iter5_reg <= mul8_9_2_reg_2921_pp0_iter4_reg;
        mul8_9_2_reg_2921_pp0_iter6_reg <= mul8_9_2_reg_2921_pp0_iter5_reg;
        mul8_9_2_reg_2921_pp0_iter7_reg <= mul8_9_2_reg_2921_pp0_iter6_reg;
        mul8_s_reg_2721_pp0_iter3_reg <= mul8_s_reg_2721;
        mul8_s_reg_2721_pp0_iter4_reg <= mul8_s_reg_2721_pp0_iter3_reg;
        tmp_30_reg_2356 <= {{i_10_reg_2119[5:4]}};
        tmp_30_reg_2356_pp0_iter10_reg <= tmp_30_reg_2356_pp0_iter9_reg;
        tmp_30_reg_2356_pp0_iter1_reg <= tmp_30_reg_2356;
        tmp_30_reg_2356_pp0_iter2_reg <= tmp_30_reg_2356_pp0_iter1_reg;
        tmp_30_reg_2356_pp0_iter3_reg <= tmp_30_reg_2356_pp0_iter2_reg;
        tmp_30_reg_2356_pp0_iter4_reg <= tmp_30_reg_2356_pp0_iter3_reg;
        tmp_30_reg_2356_pp0_iter5_reg <= tmp_30_reg_2356_pp0_iter4_reg;
        tmp_30_reg_2356_pp0_iter6_reg <= tmp_30_reg_2356_pp0_iter5_reg;
        tmp_30_reg_2356_pp0_iter7_reg <= tmp_30_reg_2356_pp0_iter6_reg;
        tmp_30_reg_2356_pp0_iter8_reg <= tmp_30_reg_2356_pp0_iter7_reg;
        tmp_30_reg_2356_pp0_iter9_reg <= tmp_30_reg_2356_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_10_reg_2796 <= grp_fu_1124_p2;
        mul8_11_reg_2801 <= grp_fu_1128_p2;
        mul8_12_reg_2806 <= grp_fu_1132_p2;
        mul8_13_reg_2811 <= grp_fu_1136_p2;
        mul8_14_reg_2816 <= grp_fu_1140_p2;
        mul8_15_reg_2821 <= grp_fu_1144_p2;
        mul8_2_reg_2746 <= grp_fu_1084_p2;
        mul8_3_reg_2751 <= grp_fu_1088_p2;
        mul8_4_reg_2756 <= grp_fu_1092_p2;
        mul8_5_1_reg_2766 <= grp_fu_1100_p2;
        mul8_5_reg_2761 <= grp_fu_1096_p2;
        mul8_6_1_reg_2776 <= grp_fu_1108_p2;
        mul8_6_reg_2771 <= grp_fu_1104_p2;
        mul8_7_reg_2781 <= grp_fu_1112_p2;
        mul8_8_reg_2786 <= grp_fu_1116_p2;
        mul8_9_reg_2791 <= grp_fu_1120_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_1_1_reg_2736 <= grp_fu_1100_p2;
        mul8_1_2_reg_2741 <= grp_fu_1104_p2;
        mul8_1_reg_2731 <= grp_fu_1096_p2;
        mul8_27_reg_2726 <= grp_fu_1092_p2;
        mul8_reg_2716 <= grp_fu_1084_p2;
        mul8_s_reg_2721 <= grp_fu_1088_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1172 <= weights3_0_q1;
        reg_1176 <= weights3_1_q1;
        reg_1180 <= weights3_2_q1;
        reg_1184 <= weights3_3_q1;
        reg_1188 <= weights3_4_q1;
        reg_1192 <= weights3_5_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1196 <= weights3_6_q1;
        reg_1200 <= weights3_7_q1;
        reg_1204 <= weights3_0_q0;
        reg_1208 <= weights3_3_q0;
        reg_1212 <= weights3_6_q0;
        reg_1216 <= weights3_1_q0;
        reg_1220 <= weights3_4_q0;
        reg_1224 <= weights3_7_q0;
        reg_1228 <= weights3_2_q0;
        reg_1232 <= weights3_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1236 <= grp_fu_1148_p2;
        reg_1242 <= grp_fu_1152_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1248 <= grp_fu_1156_p2;
        reg_1255 <= grp_fu_1160_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1262 <= grp_fu_1164_p2;
        reg_1268 <= grp_fu_1168_p2;
    end
end
always @ (*) begin
    if (((tmp_reg_2125 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter13 == 1'b1) & (tmp_reg_2125_pp0_iter13_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter13_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter13_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_10 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_10 = i_fu_160;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_4_ce0_local = 1'b1;
    end else begin
        dactivations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_4_ce1_local = 1'b1;
    end else begin
        dactivations_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_5_ce0_local = 1'b1;
    end else begin
        dactivations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_5_ce1_local = 1'b1;
    end else begin
        dactivations_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_6_ce0_local = 1'b1;
    end else begin
        dactivations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_6_ce1_local = 1'b1;
    end else begin
        dactivations_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_7_ce0_local = 1'b1;
    end else begin
        dactivations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations_7_ce1_local = 1'b1;
    end else begin
        dactivations_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1006_p0 = add_reg_2956;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1006_p0 = mul8_2_reg_2746;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1006_p0 = mul8_reg_2716;
    end else begin
        grp_fu_1006_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1006_p1 = mul8_s_reg_2721_pp0_iter4_reg;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1006_p1 = 64'd0;
    end else begin
        grp_fu_1006_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1011_p0 = add11_1_reg_2961;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1011_p0 = mul8_3_reg_2751;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1011_p0 = mul8_1_reg_2731;
    end else begin
        grp_fu_1011_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1011_p1 = mul8_1_1_reg_2736_pp0_iter4_reg;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1011_p1 = 64'd0;
    end else begin
        grp_fu_1011_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1016_p0 = add11_2_1_reg_3046;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1016_p0 = add11_2_reg_2966;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1016_p0 = mul8_4_reg_2756;
    end else begin
        grp_fu_1016_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1016_p1 = mul8_2_2_reg_2831_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1016_p1 = mul8_2_1_reg_2826_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1016_p1 = 64'd0;
    end else begin
        grp_fu_1016_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1021_p0 = add11_3_1_reg_3051;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1021_p0 = add11_3_reg_2971;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1021_p0 = mul8_5_reg_2761;
    end else begin
        grp_fu_1021_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1021_p1 = mul8_3_2_reg_2841_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1021_p1 = mul8_3_1_reg_2836_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1021_p1 = 64'd0;
    end else begin
        grp_fu_1021_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1026_p0 = add11_4_1_reg_3056;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1026_p0 = add11_4_reg_2976;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1026_p0 = mul8_6_reg_2771;
    end else begin
        grp_fu_1026_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1026_p1 = mul8_4_2_reg_2906_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1026_p1 = mul8_4_1_reg_2846_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1026_p1 = 64'd0;
    end else begin
        grp_fu_1026_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1031_p0 = add11_5_1_reg_3061;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1031_p0 = add11_5_reg_2981;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1031_p0 = mul8_7_reg_2781;
    end else begin
        grp_fu_1031_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1031_p1 = mul8_5_2_reg_2851_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1031_p1 = mul8_5_1_reg_2766_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1031_p1 = 64'd0;
    end else begin
        grp_fu_1031_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1036_p0 = add11_6_1_reg_3066;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1036_p0 = add11_6_reg_2986;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1036_p0 = mul8_8_reg_2786;
    end else begin
        grp_fu_1036_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1036_p1 = mul8_6_2_reg_2856_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1036_p1 = mul8_6_1_reg_2776_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1036_p1 = 64'd0;
    end else begin
        grp_fu_1036_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1041_p0 = add11_7_1_reg_3071;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1041_p0 = add11_7_reg_2991;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1041_p0 = mul8_9_reg_2791;
    end else begin
        grp_fu_1041_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1041_p1 = mul8_7_2_reg_2911_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1041_p1 = mul8_7_1_reg_2861_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1041_p1 = 64'd0;
    end else begin
        grp_fu_1041_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1046_p0 = add11_8_1_reg_3076;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1046_p0 = add11_8_reg_2996;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1046_p0 = mul8_10_reg_2796;
    end else begin
        grp_fu_1046_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1046_p1 = mul8_8_2_reg_2916_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1046_p1 = mul8_8_1_reg_2866_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1046_p1 = 64'd0;
    end else begin
        grp_fu_1046_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1051_p0 = add11_9_1_reg_3081;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1051_p0 = add11_9_reg_3001;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1051_p0 = mul8_11_reg_2801;
    end else begin
        grp_fu_1051_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1051_p1 = mul8_9_2_reg_2921_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1051_p1 = mul8_9_1_reg_2871_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1051_p1 = 64'd0;
    end else begin
        grp_fu_1051_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1056_p0 = add11_10_1_reg_3086;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1056_p0 = add11_10_reg_3006;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1056_p0 = mul8_12_reg_2806;
    end else begin
        grp_fu_1056_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1056_p1 = mul8_10_2_reg_2926_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1056_p1 = mul8_10_1_reg_2876_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1056_p1 = 64'd0;
    end else begin
        grp_fu_1056_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1061_p0 = add11_11_1_reg_3091;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1061_p0 = add11_11_reg_3011;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1061_p0 = mul8_13_reg_2811;
    end else begin
        grp_fu_1061_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1061_p1 = mul8_11_2_reg_2931_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1061_p1 = mul8_11_1_reg_2881_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1061_p1 = 64'd0;
    end else begin
        grp_fu_1061_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1066_p0 = add11_12_1_reg_3096;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1066_p0 = add11_12_reg_3016;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1066_p0 = mul8_14_reg_2816;
    end else begin
        grp_fu_1066_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1066_p1 = mul8_12_2_reg_2936_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1066_p1 = mul8_12_1_reg_2886_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1066_p1 = 64'd0;
    end else begin
        grp_fu_1066_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1071_p0 = add11_13_1_reg_3101;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1071_p0 = add11_13_reg_3021;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1071_p0 = mul8_15_reg_2821;
    end else begin
        grp_fu_1071_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1071_p1 = mul8_13_2_reg_2941_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1071_p1 = mul8_13_1_reg_2891_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1071_p1 = 64'd0;
    end else begin
        grp_fu_1071_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1076_p0 = add11_14_1_reg_3106;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1076_p0 = add11_s_reg_3036;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1076_p0 = add11_14_reg_3026;
    end else begin
        grp_fu_1076_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1076_p1 = mul8_14_2_reg_2946_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1076_p1 = mul8_27_reg_2726_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1076_p1 = mul8_14_1_reg_2896_pp0_iter5_reg;
    end else begin
        grp_fu_1076_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1080_p0 = add11_15_1_reg_3111;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1080_p0 = add11_1_1_reg_3041;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1080_p0 = add11_15_reg_3031;
    end else begin
        grp_fu_1080_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1080_p1 = mul8_15_2_reg_2951_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1080_p1 = mul8_1_2_reg_2741_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1080_p1 = mul8_15_1_reg_2901_pp0_iter5_reg;
    end else begin
        grp_fu_1080_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1084_p0 = bitcast_ln85_7_fu_1898_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1084_p0 = bitcast_ln85_6_fu_1818_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1084_p0 = bitcast_ln85_fu_1669_p1;
    end else begin
        grp_fu_1084_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1084_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1084_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_1084_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1088_p0 = bitcast_ln85_8_fu_1903_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1088_p0 = bitcast_ln85_9_fu_1823_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1088_p0 = bitcast_ln85_1_fu_1674_p1;
    end else begin
        grp_fu_1088_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1088_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1088_p1 = output_differences_0_0_val;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1088_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_1088_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1092_p0 = bitcast_ln85_10_fu_1908_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1092_p0 = bitcast_ln85_12_fu_1828_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1092_p0 = bitcast_ln85_2_fu_1679_p1;
    end else begin
        grp_fu_1092_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1092_p1 = output_differences_0_1_val;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1092_p1 = output_differences_0_0_val;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1092_p1 = output_differences_0_2_val;
    end else begin
        grp_fu_1092_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1096_p0 = bitcast_ln85_11_fu_1913_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1096_p0 = bitcast_ln85_15_fu_1833_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1096_p0 = bitcast_ln85_3_fu_1753_p1;
    end else begin
        grp_fu_1096_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1096_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1096_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_1096_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1100_p0 = bitcast_ln85_13_fu_1918_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1100_p0 = bitcast_ln85_16_fu_1838_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1100_p0 = bitcast_ln85_4_fu_1758_p1;
    end else begin
        grp_fu_1100_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1104_p0 = bitcast_ln85_17_fu_1923_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1104_p0 = bitcast_ln85_18_fu_1843_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1104_p0 = bitcast_ln85_5_fu_1763_p1;
    end else begin
        grp_fu_1104_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1104_p1 = output_differences_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1104_p1 = output_differences_0_2_val;
    end else begin
        grp_fu_1104_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1108_p0 = bitcast_ln85_14_fu_1978_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1108_p0 = bitcast_ln85_20_fu_1928_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1108_p0 = bitcast_ln85_19_fu_1848_p1;
        end else begin
            grp_fu_1108_p0 = 'bx;
        end
    end else begin
        grp_fu_1108_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1108_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1108_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_1108_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1112_p0 = bitcast_ln85_23_fu_1983_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1112_p0 = bitcast_ln85_22_fu_1933_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1112_p0 = bitcast_ln85_21_fu_1853_p1;
        end else begin
            grp_fu_1112_p0 = 'bx;
        end
    end else begin
        grp_fu_1112_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1112_p1 = output_differences_0_2_val;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1112_p1 = output_differences_0_1_val;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1112_p1 = output_differences_0_0_val;
        end else begin
            grp_fu_1112_p1 = 'bx;
        end
    end else begin
        grp_fu_1112_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1116_p0 = bitcast_ln85_26_fu_1988_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1116_p0 = bitcast_ln85_25_fu_1938_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1116_p0 = bitcast_ln85_24_fu_1858_p1;
        end else begin
            grp_fu_1116_p0 = 'bx;
        end
    end else begin
        grp_fu_1116_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1116_p1 = output_differences_0_2_val;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1116_p1 = output_differences_0_1_val;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1116_p1 = output_differences_0_0_val;
        end else begin
            grp_fu_1116_p1 = 'bx;
        end
    end else begin
        grp_fu_1116_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1120_p0 = bitcast_ln85_29_fu_1993_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1120_p0 = bitcast_ln85_28_fu_1943_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1120_p0 = bitcast_ln85_27_fu_1863_p1;
        end else begin
            grp_fu_1120_p0 = 'bx;
        end
    end else begin
        grp_fu_1120_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1120_p1 = output_differences_0_2_val;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1120_p1 = output_differences_0_1_val;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1120_p1 = output_differences_0_0_val;
        end else begin
            grp_fu_1120_p1 = 'bx;
        end
    end else begin
        grp_fu_1120_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1124_p0 = bitcast_ln85_32_fu_1998_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1124_p0 = bitcast_ln85_31_fu_1948_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1124_p0 = bitcast_ln85_30_fu_1868_p1;
        end else begin
            grp_fu_1124_p0 = 'bx;
        end
    end else begin
        grp_fu_1124_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1124_p1 = output_differences_0_2_val;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1124_p1 = output_differences_0_1_val;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1124_p1 = output_differences_0_0_val;
        end else begin
            grp_fu_1124_p1 = 'bx;
        end
    end else begin
        grp_fu_1124_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1128_p0 = bitcast_ln85_35_fu_2003_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1128_p0 = bitcast_ln85_34_fu_1953_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1128_p0 = bitcast_ln85_33_fu_1873_p1;
        end else begin
            grp_fu_1128_p0 = 'bx;
        end
    end else begin
        grp_fu_1128_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1128_p1 = output_differences_0_2_val;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1128_p1 = output_differences_0_1_val;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1128_p1 = output_differences_0_0_val;
        end else begin
            grp_fu_1128_p1 = 'bx;
        end
    end else begin
        grp_fu_1128_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1132_p0 = bitcast_ln85_38_fu_2008_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1132_p0 = bitcast_ln85_37_fu_1958_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1132_p0 = bitcast_ln85_36_fu_1878_p1;
        end else begin
            grp_fu_1132_p0 = 'bx;
        end
    end else begin
        grp_fu_1132_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1132_p1 = output_differences_0_2_val;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1132_p1 = output_differences_0_1_val;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1132_p1 = output_differences_0_0_val;
        end else begin
            grp_fu_1132_p1 = 'bx;
        end
    end else begin
        grp_fu_1132_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1136_p0 = bitcast_ln85_41_fu_2013_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1136_p0 = bitcast_ln85_40_fu_1963_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1136_p0 = bitcast_ln85_39_fu_1883_p1;
        end else begin
            grp_fu_1136_p0 = 'bx;
        end
    end else begin
        grp_fu_1136_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1136_p1 = output_differences_0_2_val;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1136_p1 = output_differences_0_1_val;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1136_p1 = output_differences_0_0_val;
        end else begin
            grp_fu_1136_p1 = 'bx;
        end
    end else begin
        grp_fu_1136_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1140_p0 = bitcast_ln85_44_fu_2018_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1140_p0 = bitcast_ln85_43_fu_1968_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1140_p0 = bitcast_ln85_42_fu_1888_p1;
        end else begin
            grp_fu_1140_p0 = 'bx;
        end
    end else begin
        grp_fu_1140_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1140_p1 = output_differences_0_2_val;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1140_p1 = output_differences_0_1_val;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1140_p1 = output_differences_0_0_val;
        end else begin
            grp_fu_1140_p1 = 'bx;
        end
    end else begin
        grp_fu_1140_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1144_p0 = bitcast_ln85_47_fu_2023_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1144_p0 = bitcast_ln85_46_fu_1973_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1144_p0 = bitcast_ln85_45_fu_1893_p1;
        end else begin
            grp_fu_1144_p0 = 'bx;
        end
    end else begin
        grp_fu_1144_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1144_p1 = output_differences_0_2_val;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1144_p1 = output_differences_0_1_val;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1144_p1 = output_differences_0_0_val;
        end else begin
            grp_fu_1144_p1 = 'bx;
        end
    end else begin
        grp_fu_1144_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1148_p0 = add11_8_2_reg_3295;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1148_p0 = add11_2_2_reg_3265;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1148_p0 = add11_27_reg_3208;
        end else begin
            grp_fu_1148_p0 = 'bx;
        end
    end else begin
        grp_fu_1148_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1148_p1 = dactivations_0_load_1_reg_3340;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1148_p1 = dactivations_2_load_reg_3178;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1148_p1 = dactivations_0_load_reg_3168;
        end else begin
            grp_fu_1148_p1 = 'bx;
        end
    end else begin
        grp_fu_1148_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1152_p0 = add11_9_2_reg_3300;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1152_p0 = add11_3_2_reg_3270;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1152_p0 = add11_1_2_reg_3213;
        end else begin
            grp_fu_1152_p0 = 'bx;
        end
    end else begin
        grp_fu_1152_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1152_p1 = dactivations_1_load_1_reg_3345;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1152_p1 = dactivations_3_load_reg_3183;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1152_p1 = dactivations_1_load_reg_3173;
        end else begin
            grp_fu_1152_p1 = 'bx;
        end
    end else begin
        grp_fu_1152_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1156_p0 = add11_14_2_reg_3325;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1156_p0 = add11_10_2_reg_3305;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1156_p0 = add11_4_2_reg_3275;
    end else begin
        grp_fu_1156_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1156_p1 = dactivations_6_load_1_reg_3370;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1156_p1 = dactivations_2_load_1_reg_3350;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1156_p1 = dactivations_4_load_reg_3188;
    end else begin
        grp_fu_1156_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1160_p0 = add11_15_2_reg_3330;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1160_p0 = add11_11_2_reg_3310;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1160_p0 = add11_5_2_reg_3280;
    end else begin
        grp_fu_1160_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1160_p1 = dactivations_7_load_1_reg_3375;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1160_p1 = dactivations_3_load_1_reg_3355;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1160_p1 = dactivations_5_load_reg_3193;
    end else begin
        grp_fu_1160_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1164_p0 = add11_12_2_reg_3315;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1164_p0 = add11_6_2_reg_3285;
        end else begin
            grp_fu_1164_p0 = 'bx;
        end
    end else begin
        grp_fu_1164_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1164_p1 = dactivations_4_load_1_reg_3360;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1164_p1 = dactivations_6_load_reg_3198;
        end else begin
            grp_fu_1164_p1 = 'bx;
        end
    end else begin
        grp_fu_1164_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1168_p0 = add11_13_2_reg_3320;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1168_p0 = add11_7_2_reg_3290;
        end else begin
            grp_fu_1168_p0 = 'bx;
        end
    end else begin
        grp_fu_1168_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter11 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1168_p1 = dactivations_5_load_1_reg_3365;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1168_p1 = dactivations_7_load_reg_3203;
        end else begin
            grp_fu_1168_p1 = 'bx;
        end
    end else begin
        grp_fu_1168_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_0_address0_local = zext_ln83_1_reg_3218_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_0_address0_local = zext_ln81_reg_3116_pp0_iter13_reg;
    end else begin
        oracle_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_0_ce0_local = 1'b1;
    end else begin
        oracle_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_0_we0_local = 1'b1;
    end else begin
        oracle_activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_1_address0_local = zext_ln83_1_reg_3218_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_1_address0_local = zext_ln81_reg_3116_pp0_iter13_reg;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_1_we0_local = 1'b1;
    end else begin
        oracle_activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_2_address0_local = zext_ln83_1_reg_3218_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_2_address0_local = zext_ln81_reg_3116_pp0_iter13_reg;
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
        oracle_activations_2_d0_local = reg_1248;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_2_d0_local = reg_1236;
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
        oracle_activations_3_address0_local = zext_ln83_1_reg_3218_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_3_address0_local = zext_ln81_reg_3116_pp0_iter13_reg;
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
        oracle_activations_3_d0_local = reg_1255;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_3_d0_local = reg_1242;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_4_address0_local = zext_ln83_1_reg_3218_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_4_address0_local = zext_ln81_reg_3116_pp0_iter13_reg;
    end else begin
        oracle_activations_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        oracle_activations_4_ce0_local = 1'b1;
    end else begin
        oracle_activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_4_d0_local = reg_1262;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_4_d0_local = reg_1248;
    end else begin
        oracle_activations_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        oracle_activations_4_we0_local = 1'b1;
    end else begin
        oracle_activations_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_5_address0_local = zext_ln83_1_reg_3218_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_5_address0_local = zext_ln81_reg_3116_pp0_iter13_reg;
    end else begin
        oracle_activations_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        oracle_activations_5_ce0_local = 1'b1;
    end else begin
        oracle_activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_5_d0_local = reg_1268;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_5_d0_local = reg_1255;
    end else begin
        oracle_activations_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        oracle_activations_5_we0_local = 1'b1;
    end else begin
        oracle_activations_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_6_address0_local = zext_ln83_1_reg_3218_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_6_address0_local = zext_ln81_reg_3116_pp0_iter13_reg;
    end else begin
        oracle_activations_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_6_ce0_local = 1'b1;
    end else begin
        oracle_activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_6_d0_local = reg_1248;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_6_d0_local = reg_1262;
    end else begin
        oracle_activations_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_6_we0_local = 1'b1;
    end else begin
        oracle_activations_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_7_address0_local = zext_ln83_1_reg_3218_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_7_address0_local = zext_ln81_reg_3116_pp0_iter13_reg;
    end else begin
        oracle_activations_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_7_ce0_local = 1'b1;
    end else begin
        oracle_activations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_7_d0_local = reg_1255;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_7_d0_local = reg_1268;
    end else begin
        oracle_activations_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_7_we0_local = 1'b1;
    end else begin
        oracle_activations_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address0_local = zext_ln87_9_fu_1793_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address0_local = zext_ln85_6_fu_1748_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address0_local = zext_ln87_7_fu_1524_p1;
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_0_address1_local = zext_ln87_1_fu_1699_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address1_local = zext_ln85_3_fu_1473_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_0_address1_local = zext_ln85_fu_1318_p1;
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
        weights3_1_address0_local = zext_ln87_12_fu_1813_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address0_local = zext_ln87_7_reg_2220;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address0_local = zext_ln87_10_fu_1584_p1;
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_1_address1_local = zext_ln87_4_fu_1719_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address1_local = zext_ln87_2_fu_1413_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_1_address1_local = zext_ln85_fu_1318_p1;
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
        weights3_2_address0_local = zext_ln87_7_reg_2220;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_2_address0_local = zext_ln87_10_reg_2237;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_2_address0_local = zext_ln87_13_fu_1644_p1;
    end else begin
        weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_2_address1_local = zext_ln87_2_reg_2197;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_2_address1_local = zext_ln87_5_fu_1493_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_2_address1_local = zext_ln85_fu_1318_p1;
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
        weights3_3_address0_local = zext_ln87_10_reg_2237;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_3_address0_local = zext_ln87_13_reg_2249;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_address0_local = zext_ln87_8_fu_1544_p1;
    end else begin
        weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_3_address1_local = zext_ln87_2_reg_2197;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_3_address1_local = zext_ln87_5_fu_1493_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_3_address1_local = zext_ln87_fu_1371_p1;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_4_address0_local = zext_ln87_13_reg_2249;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_4_address0_local = zext_ln87_8_reg_2226;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_4_address0_local = zext_ln87_11_fu_1604_p1;
    end else begin
        weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_4_address1_local = zext_ln87_5_reg_2209;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_4_address1_local = zext_ln87_3_fu_1433_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_4_address1_local = zext_ln87_fu_1371_p1;
        end else begin
            weights3_4_address1_local = 'bx;
        end
    end else begin
        weights3_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_4_ce0_local = 1'b1;
    end else begin
        weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_4_ce1_local = 1'b1;
    end else begin
        weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_5_address0_local = zext_ln87_8_reg_2226;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_5_address0_local = zext_ln87_11_reg_2243;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_5_address0_local = zext_ln85_7_fu_1664_p1;
    end else begin
        weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_5_address1_local = zext_ln87_3_reg_2203;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_5_address1_local = zext_ln87_6_fu_1514_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_5_address1_local = zext_ln87_fu_1371_p1;
        end else begin
            weights3_5_address1_local = 'bx;
        end
    end else begin
        weights3_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_5_ce0_local = 1'b1;
    end else begin
        weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_5_ce1_local = 1'b1;
    end else begin
        weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_6_address0_local = zext_ln87_11_reg_2243;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_6_address0_local = zext_ln85_7_reg_2255;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_6_address0_local = zext_ln85_4_fu_1564_p1;
    end else begin
        weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_6_address1_local = zext_ln87_3_reg_2203;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_6_address1_local = zext_ln87_6_reg_2214;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_6_address1_local = zext_ln85_1_fu_1393_p1;
    end else begin
        weights3_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_6_ce0_local = 1'b1;
    end else begin
        weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_6_ce1_local = 1'b1;
    end else begin
        weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_7_address0_local = zext_ln85_7_reg_2255;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_7_address0_local = zext_ln85_4_reg_2232;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_7_address0_local = zext_ln85_5_fu_1624_p1;
    end else begin
        weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_7_address1_local = zext_ln87_6_reg_2214;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_7_address1_local = zext_ln85_1_reg_2192;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_7_address1_local = zext_ln85_2_fu_1453_p1;
    end else begin
        weights3_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_7_ce0_local = 1'b1;
    end else begin
        weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_7_ce1_local = 1'b1;
    end else begin
        weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to14 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_idle_pp0_0to12 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter13_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
assign add_ln82_fu_1768_p2 = (i_10_reg_2119 + 7'd16);
assign add_ln85_1_fu_1458_p2 = (empty_reg_2154 + 8'd13);
assign add_ln85_2_fu_1704_p2 = (empty_reg_2154 + 8'd14);
assign add_ln85_3_fu_1519_p2 = (sub_ln85_reg_2134 + 5'd3);
assign add_ln85_4_fu_1778_p2 = (empty_reg_2154 + 8'd29);
assign add_ln85_5_fu_1733_p2 = (empty_reg_2154 + 8'd37);
assign add_ln85_6_fu_1798_p2 = (empty_reg_2154 + 8'd38);
assign add_ln85_fu_1684_p2 = (empty_reg_2154 + 8'd5);
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
assign bitcast_ln85_10_fu_1908_p1 = reg_1180;
assign bitcast_ln85_11_fu_1913_p1 = reg_1184;
assign bitcast_ln85_12_fu_1828_p1 = reg_1188;
assign bitcast_ln85_13_fu_1918_p1 = reg_1192;
assign bitcast_ln85_14_fu_1978_p1 = reg_1196;
assign bitcast_ln85_15_fu_1833_p1 = reg_1200;
assign bitcast_ln85_16_fu_1838_p1 = reg_1172;
assign bitcast_ln85_17_fu_1923_p1 = reg_1176;
assign bitcast_ln85_18_fu_1843_p1 = reg_1180;
assign bitcast_ln85_19_fu_1848_p1 = reg_1184;
assign bitcast_ln85_1_fu_1674_p1 = reg_1176;
assign bitcast_ln85_20_fu_1928_p1 = reg_1188;
assign bitcast_ln85_21_fu_1853_p1 = reg_1192;
assign bitcast_ln85_22_fu_1933_p1 = reg_1196;
assign bitcast_ln85_23_fu_1983_p1 = reg_1200;
assign bitcast_ln85_24_fu_1858_p1 = reg_1204;
assign bitcast_ln85_25_fu_1938_p1 = reg_1216;
assign bitcast_ln85_26_fu_1988_p1 = reg_1228;
assign bitcast_ln85_27_fu_1863_p1 = reg_1208;
assign bitcast_ln85_28_fu_1943_p1 = reg_1220;
assign bitcast_ln85_29_fu_1993_p1 = reg_1232;
assign bitcast_ln85_2_fu_1679_p1 = reg_1180;
assign bitcast_ln85_30_fu_1868_p1 = reg_1212;
assign bitcast_ln85_31_fu_1948_p1 = reg_1224;
assign bitcast_ln85_32_fu_1998_p1 = reg_1204;
assign bitcast_ln85_33_fu_1873_p1 = reg_1216;
assign bitcast_ln85_34_fu_1953_p1 = reg_1228;
assign bitcast_ln85_35_fu_2003_p1 = reg_1208;
assign bitcast_ln85_36_fu_1878_p1 = reg_1220;
assign bitcast_ln85_37_fu_1958_p1 = reg_1232;
assign bitcast_ln85_38_fu_2008_p1 = reg_1212;
assign bitcast_ln85_39_fu_1883_p1 = reg_1224;
assign bitcast_ln85_3_fu_1753_p1 = reg_1184;
assign bitcast_ln85_40_fu_1963_p1 = reg_1204;
assign bitcast_ln85_41_fu_2013_p1 = reg_1216;
assign bitcast_ln85_42_fu_1888_p1 = reg_1228;
assign bitcast_ln85_43_fu_1968_p1 = reg_1208;
assign bitcast_ln85_44_fu_2018_p1 = reg_1220;
assign bitcast_ln85_45_fu_1893_p1 = reg_1232;
assign bitcast_ln85_46_fu_1973_p1 = reg_1212;
assign bitcast_ln85_47_fu_2023_p1 = reg_1224;
assign bitcast_ln85_4_fu_1758_p1 = reg_1188;
assign bitcast_ln85_5_fu_1763_p1 = reg_1192;
assign bitcast_ln85_6_fu_1818_p1 = reg_1196;
assign bitcast_ln85_7_fu_1898_p1 = reg_1200;
assign bitcast_ln85_8_fu_1903_p1 = reg_1172;
assign bitcast_ln85_9_fu_1823_p1 = reg_1176;
assign bitcast_ln85_fu_1669_p1 = reg_1172;
assign dactivations_0_address0 = zext_ln83_1_fu_2046_p1;
assign dactivations_0_address1 = zext_ln81_fu_2028_p1;
assign dactivations_0_ce0 = dactivations_0_ce0_local;
assign dactivations_0_ce1 = dactivations_0_ce1_local;
assign dactivations_1_address0 = zext_ln83_1_fu_2046_p1;
assign dactivations_1_address1 = zext_ln81_fu_2028_p1;
assign dactivations_1_ce0 = dactivations_1_ce0_local;
assign dactivations_1_ce1 = dactivations_1_ce1_local;
assign dactivations_2_address0 = zext_ln83_1_fu_2046_p1;
assign dactivations_2_address1 = zext_ln81_fu_2028_p1;
assign dactivations_2_ce0 = dactivations_2_ce0_local;
assign dactivations_2_ce1 = dactivations_2_ce1_local;
assign dactivations_3_address0 = zext_ln83_1_fu_2046_p1;
assign dactivations_3_address1 = zext_ln81_fu_2028_p1;
assign dactivations_3_ce0 = dactivations_3_ce0_local;
assign dactivations_3_ce1 = dactivations_3_ce1_local;
assign dactivations_4_address0 = zext_ln83_1_fu_2046_p1;
assign dactivations_4_address1 = zext_ln81_fu_2028_p1;
assign dactivations_4_ce0 = dactivations_4_ce0_local;
assign dactivations_4_ce1 = dactivations_4_ce1_local;
assign dactivations_5_address0 = zext_ln83_1_fu_2046_p1;
assign dactivations_5_address1 = zext_ln81_fu_2028_p1;
assign dactivations_5_ce0 = dactivations_5_ce0_local;
assign dactivations_5_ce1 = dactivations_5_ce1_local;
assign dactivations_6_address0 = zext_ln83_1_fu_2046_p1;
assign dactivations_6_address1 = zext_ln81_fu_2028_p1;
assign dactivations_6_ce0 = dactivations_6_ce0_local;
assign dactivations_6_ce1 = dactivations_6_ce1_local;
assign dactivations_7_address0 = zext_ln83_1_fu_2046_p1;
assign dactivations_7_address1 = zext_ln81_fu_2028_p1;
assign dactivations_7_ce0 = dactivations_7_ce0_local;
assign dactivations_7_ce1 = dactivations_7_ce1_local;
assign empty_152_fu_1378_p2 = (empty_reg_2154 + 8'd3);
assign empty_153_fu_1398_p2 = (empty_reg_2154 + 8'd6);
assign empty_154_fu_1418_p2 = (empty_reg_2154 + 8'd9);
assign empty_155_fu_1438_p2 = (empty_reg_2154 + 8'd12);
assign empty_156_fu_1478_p2 = (empty_reg_2154 + 8'd15);
assign empty_157_fu_1499_p2 = (empty_reg_2154 + 8'd18);
assign empty_158_fu_1529_p2 = (empty_reg_2154 + 8'd24);
assign empty_159_fu_1549_p2 = (empty_reg_2154 + 8'd27);
assign empty_160_fu_1569_p2 = (empty_reg_2154 + 8'd30);
assign empty_161_fu_1589_p2 = (empty_reg_2154 + 8'd33);
assign empty_162_fu_1609_p2 = (empty_reg_2154 + 8'd36);
assign empty_163_fu_1629_p2 = (empty_reg_2154 + 8'd39);
assign empty_164_fu_1649_p2 = (empty_reg_2154 + 8'd42);
assign empty_fu_1355_p2 = (p_shl_fu_1347_p3 - zext_ln83_fu_1343_p1);
assign grp_fu_3556_p_ce = 1'b1;
assign grp_fu_3556_p_din0 = grp_fu_1006_p0;
assign grp_fu_3556_p_din1 = grp_fu_1006_p1;
assign grp_fu_3556_p_opcode = 2'd0;
assign grp_fu_3560_p_ce = 1'b1;
assign grp_fu_3560_p_din0 = grp_fu_1011_p0;
assign grp_fu_3560_p_din1 = grp_fu_1011_p1;
assign grp_fu_3560_p_opcode = 2'd0;
assign grp_fu_3564_p_ce = 1'b1;
assign grp_fu_3564_p_din0 = grp_fu_1016_p0;
assign grp_fu_3564_p_din1 = grp_fu_1016_p1;
assign grp_fu_3564_p_opcode = 2'd0;
assign grp_fu_3568_p_ce = 1'b1;
assign grp_fu_3568_p_din0 = grp_fu_1021_p0;
assign grp_fu_3568_p_din1 = grp_fu_1021_p1;
assign grp_fu_3568_p_opcode = 2'd0;
assign grp_fu_3572_p_ce = 1'b1;
assign grp_fu_3572_p_din0 = grp_fu_1026_p0;
assign grp_fu_3572_p_din1 = grp_fu_1026_p1;
assign grp_fu_3572_p_opcode = 2'd0;
assign grp_fu_3576_p_ce = 1'b1;
assign grp_fu_3576_p_din0 = grp_fu_1031_p0;
assign grp_fu_3576_p_din1 = grp_fu_1031_p1;
assign grp_fu_3576_p_opcode = 2'd0;
assign grp_fu_3580_p_ce = 1'b1;
assign grp_fu_3580_p_din0 = grp_fu_1036_p0;
assign grp_fu_3580_p_din1 = grp_fu_1036_p1;
assign grp_fu_3580_p_opcode = 2'd0;
assign grp_fu_3584_p_ce = 1'b1;
assign grp_fu_3584_p_din0 = grp_fu_1041_p0;
assign grp_fu_3584_p_din1 = grp_fu_1041_p1;
assign grp_fu_3584_p_opcode = 2'd0;
assign grp_fu_3588_p_ce = 1'b1;
assign grp_fu_3588_p_din0 = grp_fu_1046_p0;
assign grp_fu_3588_p_din1 = grp_fu_1046_p1;
assign grp_fu_3588_p_opcode = 2'd0;
assign grp_fu_3592_p_ce = 1'b1;
assign grp_fu_3592_p_din0 = grp_fu_1051_p0;
assign grp_fu_3592_p_din1 = grp_fu_1051_p1;
assign grp_fu_3592_p_opcode = 2'd0;
assign grp_fu_3596_p_ce = 1'b1;
assign grp_fu_3596_p_din0 = grp_fu_1056_p0;
assign grp_fu_3596_p_din1 = grp_fu_1056_p1;
assign grp_fu_3596_p_opcode = 2'd0;
assign grp_fu_3600_p_ce = 1'b1;
assign grp_fu_3600_p_din0 = grp_fu_1061_p0;
assign grp_fu_3600_p_din1 = grp_fu_1061_p1;
assign grp_fu_3600_p_opcode = 2'd0;
assign grp_fu_3604_p_ce = 1'b1;
assign grp_fu_3604_p_din0 = grp_fu_1066_p0;
assign grp_fu_3604_p_din1 = grp_fu_1066_p1;
assign grp_fu_3604_p_opcode = 2'd0;
assign grp_fu_3608_p_ce = 1'b1;
assign grp_fu_3608_p_din0 = grp_fu_1071_p0;
assign grp_fu_3608_p_din1 = grp_fu_1071_p1;
assign grp_fu_3608_p_opcode = 2'd0;
assign grp_fu_3612_p_ce = 1'b1;
assign grp_fu_3612_p_din0 = grp_fu_1076_p0;
assign grp_fu_3612_p_din1 = grp_fu_1076_p1;
assign grp_fu_3612_p_opcode = 2'd0;
assign grp_fu_3616_p_ce = 1'b1;
assign grp_fu_3616_p_din0 = grp_fu_1080_p0;
assign grp_fu_3616_p_din1 = grp_fu_1080_p1;
assign grp_fu_3616_p_opcode = 2'd0;
assign lshr_ln1_fu_1361_p4 = {{empty_fu_1355_p2[7:3]}};
assign lshr_ln85_10_fu_1554_p4 = {{empty_159_fu_1549_p2[7:3]}};
assign lshr_ln85_11_fu_1783_p4 = {{add_ln85_4_fu_1778_p2[7:3]}};
assign lshr_ln85_12_fu_1574_p4 = {{empty_160_fu_1569_p2[7:3]}};
assign lshr_ln85_13_fu_1594_p4 = {{empty_161_fu_1589_p2[7:3]}};
assign lshr_ln85_14_fu_1614_p4 = {{empty_162_fu_1609_p2[7:3]}};
assign lshr_ln85_15_fu_1738_p4 = {{add_ln85_5_fu_1733_p2[7:3]}};
assign lshr_ln85_16_fu_1803_p4 = {{add_ln85_6_fu_1798_p2[7:3]}};
assign lshr_ln85_17_fu_1634_p4 = {{empty_163_fu_1629_p2[7:3]}};
assign lshr_ln85_18_fu_1654_p4 = {{empty_164_fu_1649_p2[7:3]}};
assign lshr_ln85_1_fu_1383_p4 = {{empty_152_fu_1378_p2[7:3]}};
assign lshr_ln85_2_fu_1689_p4 = {{add_ln85_fu_1684_p2[7:3]}};
assign lshr_ln85_3_fu_1403_p4 = {{empty_153_fu_1398_p2[7:3]}};
assign lshr_ln85_4_fu_1423_p4 = {{empty_154_fu_1418_p2[7:3]}};
assign lshr_ln85_5_fu_1443_p4 = {{empty_155_fu_1438_p2[7:3]}};
assign lshr_ln85_6_fu_1463_p4 = {{add_ln85_1_fu_1458_p2[7:3]}};
assign lshr_ln85_7_fu_1709_p4 = {{add_ln85_2_fu_1704_p2[7:3]}};
assign lshr_ln85_8_fu_1483_p4 = {{empty_156_fu_1478_p2[7:3]}};
assign lshr_ln85_9_fu_1504_p4 = {{empty_157_fu_1499_p2[7:3]}};
assign lshr_ln85_s_fu_1534_p4 = {{empty_158_fu_1529_p2[7:3]}};
assign lshr_ln_fu_1290_p4 = {{ap_sig_allocacmp_i_10[5:3]}};
assign or_ln3_fu_2039_p3 = {{tmp_30_reg_2356_pp0_iter10_reg}, {1'd1}};
assign or_ln_fu_1335_p3 = {{tmp_s_fu_1325_p4}, {1'd1}};
assign oracle_activations_0_address0 = oracle_activations_0_address0_local;
assign oracle_activations_0_ce0 = oracle_activations_0_ce0_local;
assign oracle_activations_0_d0 = reg_1236;
assign oracle_activations_0_we0 = oracle_activations_0_we0_local;
assign oracle_activations_1_address0 = oracle_activations_1_address0_local;
assign oracle_activations_1_ce0 = oracle_activations_1_ce0_local;
assign oracle_activations_1_d0 = reg_1242;
assign oracle_activations_1_we0 = oracle_activations_1_we0_local;
assign oracle_activations_2_address0 = oracle_activations_2_address0_local;
assign oracle_activations_2_ce0 = oracle_activations_2_ce0_local;
assign oracle_activations_2_d0 = oracle_activations_2_d0_local;
assign oracle_activations_2_we0 = oracle_activations_2_we0_local;
assign oracle_activations_3_address0 = oracle_activations_3_address0_local;
assign oracle_activations_3_ce0 = oracle_activations_3_ce0_local;
assign oracle_activations_3_d0 = oracle_activations_3_d0_local;
assign oracle_activations_3_we0 = oracle_activations_3_we0_local;
assign oracle_activations_4_address0 = oracle_activations_4_address0_local;
assign oracle_activations_4_ce0 = oracle_activations_4_ce0_local;
assign oracle_activations_4_d0 = oracle_activations_4_d0_local;
assign oracle_activations_4_we0 = oracle_activations_4_we0_local;
assign oracle_activations_5_address0 = oracle_activations_5_address0_local;
assign oracle_activations_5_ce0 = oracle_activations_5_ce0_local;
assign oracle_activations_5_d0 = oracle_activations_5_d0_local;
assign oracle_activations_5_we0 = oracle_activations_5_we0_local;
assign oracle_activations_6_address0 = oracle_activations_6_address0_local;
assign oracle_activations_6_ce0 = oracle_activations_6_ce0_local;
assign oracle_activations_6_d0 = oracle_activations_6_d0_local;
assign oracle_activations_6_we0 = oracle_activations_6_we0_local;
assign oracle_activations_7_address0 = oracle_activations_7_address0_local;
assign oracle_activations_7_ce0 = oracle_activations_7_ce0_local;
assign oracle_activations_7_d0 = oracle_activations_7_d0_local;
assign oracle_activations_7_we0 = oracle_activations_7_we0_local;
assign p_shl5_fu_1304_p3 = {{lshr_ln_fu_1290_p4}, {2'd0}};
assign p_shl_fu_1347_p3 = {{tmp_s_fu_1325_p4}, {3'd4}};
assign sub_ln85_fu_1312_p2 = (p_shl5_fu_1304_p3 - zext_ln81_1_fu_1300_p1);
assign tmp_s_fu_1325_p4 = {{ap_sig_allocacmp_i_10[5:1]}};
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
assign weights3_4_address0 = weights3_4_address0_local;
assign weights3_4_address1 = weights3_4_address1_local;
assign weights3_4_ce0 = weights3_4_ce0_local;
assign weights3_4_ce1 = weights3_4_ce1_local;
assign weights3_5_address0 = weights3_5_address0_local;
assign weights3_5_address1 = weights3_5_address1_local;
assign weights3_5_ce0 = weights3_5_ce0_local;
assign weights3_5_ce1 = weights3_5_ce1_local;
assign weights3_6_address0 = weights3_6_address0_local;
assign weights3_6_address1 = weights3_6_address1_local;
assign weights3_6_ce0 = weights3_6_ce0_local;
assign weights3_6_ce1 = weights3_6_ce1_local;
assign weights3_7_address0 = weights3_7_address0_local;
assign weights3_7_address1 = weights3_7_address1_local;
assign weights3_7_ce0 = weights3_7_ce0_local;
assign weights3_7_ce1 = weights3_7_ce1_local;
assign zext_ln81_1_fu_1300_p1 = lshr_ln_fu_1290_p4;
assign zext_ln81_fu_2028_p1 = lshr_ln_reg_2129_pp0_iter9_reg;
assign zext_ln83_1_fu_2046_p1 = or_ln3_fu_2039_p3;
assign zext_ln83_fu_1343_p1 = or_ln_fu_1335_p3;
assign zext_ln85_1_fu_1393_p1 = lshr_ln85_1_fu_1383_p4;
assign zext_ln85_2_fu_1453_p1 = lshr_ln85_5_fu_1443_p4;
assign zext_ln85_3_fu_1473_p1 = lshr_ln85_6_fu_1463_p4;
assign zext_ln85_4_fu_1564_p1 = lshr_ln85_10_fu_1554_p4;
assign zext_ln85_5_fu_1624_p1 = lshr_ln85_14_fu_1614_p4;
assign zext_ln85_6_fu_1748_p1 = lshr_ln85_15_fu_1738_p4;
assign zext_ln85_7_fu_1664_p1 = lshr_ln85_18_fu_1654_p4;
assign zext_ln85_fu_1318_p1 = sub_ln85_fu_1312_p2;
assign zext_ln87_10_fu_1584_p1 = lshr_ln85_12_fu_1574_p4;
assign zext_ln87_11_fu_1604_p1 = lshr_ln85_13_fu_1594_p4;
assign zext_ln87_12_fu_1813_p1 = lshr_ln85_16_fu_1803_p4;
assign zext_ln87_13_fu_1644_p1 = lshr_ln85_17_fu_1634_p4;
assign zext_ln87_1_fu_1699_p1 = lshr_ln85_2_fu_1689_p4;
assign zext_ln87_2_fu_1413_p1 = lshr_ln85_3_fu_1403_p4;
assign zext_ln87_3_fu_1433_p1 = lshr_ln85_4_fu_1423_p4;
assign zext_ln87_4_fu_1719_p1 = lshr_ln85_7_fu_1709_p4;
assign zext_ln87_5_fu_1493_p1 = lshr_ln85_8_fu_1483_p4;
assign zext_ln87_6_fu_1514_p1 = lshr_ln85_9_fu_1504_p4;
assign zext_ln87_7_fu_1524_p1 = add_ln85_3_fu_1519_p2;
assign zext_ln87_8_fu_1544_p1 = lshr_ln85_s_fu_1534_p4;
assign zext_ln87_9_fu_1793_p1 = lshr_ln85_11_fu_1783_p4;
assign zext_ln87_fu_1371_p1 = lshr_ln1_fu_1361_p4;
always @ (posedge ap_clk) begin
    empty_reg_2154[0] <= 1'b1;
    zext_ln85_1_reg_2192[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln87_2_reg_2197[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln87_3_reg_2203[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln87_5_reg_2209[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln87_6_reg_2214[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln87_7_reg_2220[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln87_8_reg_2226[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln85_4_reg_2232[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln87_10_reg_2237[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln87_11_reg_2243[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln87_13_reg_2249[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln85_7_reg_2255[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_3116[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_3116_pp0_iter11_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_3116_pp0_iter12_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_3116_pp0_iter13_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_3218[0] <= 1'b1;
    zext_ln83_1_reg_3218[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_3218_pp0_iter12_reg[0] <= 1'b1;
    zext_ln83_1_reg_3218_pp0_iter12_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_3218_pp0_iter13_reg[0] <= 1'b1;
    zext_ln83_1_reg_3218_pp0_iter13_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_3218_pp0_iter14_reg[0] <= 1'b1;
    zext_ln83_1_reg_3218_pp0_iter14_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end
endmodule 