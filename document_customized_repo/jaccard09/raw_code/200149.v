module SgdLR_sw_SgdLR_sw_Pipeline_label_445 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_7_address0,v2_7_ce0,v2_7_we0,v2_7_d0,v2_7_address1,v2_7_ce1,v2_7_q1,v2_6_address0,v2_6_ce0,v2_6_we0,v2_6_d0,v2_6_address1,v2_6_ce1,v2_6_q1,v2_5_address0,v2_5_ce0,v2_5_we0,v2_5_d0,v2_5_address1,v2_5_ce1,v2_5_q1,v2_4_address0,v2_4_ce0,v2_4_we0,v2_4_d0,v2_4_address1,v2_4_ce1,v2_4_q1,v2_3_address0,v2_3_ce0,v2_3_we0,v2_3_d0,v2_3_address1,v2_3_ce1,v2_3_q1,v2_2_address0,v2_2_ce0,v2_2_we0,v2_2_d0,v2_2_address1,v2_2_ce1,v2_2_q1,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_address1,v2_1_ce1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_address1,v2_0_ce1,v2_0_q1,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,v3_address2,v3_ce2,v3_q2,v3_address3,v3_ce3,v3_q3,v3_address4,v3_ce4,v3_q4,v3_address5,v3_ce5,v3_q5,v3_address6,v3_ce6,v3_q6,v3_address7,v3_ce7,v3_q7,grp_fu_1655_p_din0,grp_fu_1655_p_din1,grp_fu_1655_p_opcode,grp_fu_1655_p_dout0,grp_fu_1655_p_ce,grp_fu_3797_p_din0,grp_fu_3797_p_din1,grp_fu_3797_p_opcode,grp_fu_3797_p_dout0,grp_fu_3797_p_ce,grp_fu_3801_p_din0,grp_fu_3801_p_din1,grp_fu_3801_p_opcode,grp_fu_3801_p_dout0,grp_fu_3801_p_ce,grp_fu_3805_p_din0,grp_fu_3805_p_din1,grp_fu_3805_p_opcode,grp_fu_3805_p_dout0,grp_fu_3805_p_ce,grp_fu_3809_p_din0,grp_fu_3809_p_din1,grp_fu_3809_p_opcode,grp_fu_3809_p_dout0,grp_fu_3809_p_ce,grp_fu_3813_p_din0,grp_fu_3813_p_din1,grp_fu_3813_p_opcode,grp_fu_3813_p_dout0,grp_fu_3813_p_ce,grp_fu_3817_p_din0,grp_fu_3817_p_din1,grp_fu_3817_p_opcode,grp_fu_3817_p_dout0,grp_fu_3817_p_ce,grp_fu_3821_p_din0,grp_fu_3821_p_din1,grp_fu_3821_p_opcode,grp_fu_3821_p_dout0,grp_fu_3821_p_ce,grp_fu_3793_p_din0,grp_fu_3793_p_din1,grp_fu_3793_p_dout0,grp_fu_3793_p_ce,grp_fu_3825_p_din0,grp_fu_3825_p_din1,grp_fu_3825_p_dout0,grp_fu_3825_p_ce,grp_fu_3829_p_din0,grp_fu_3829_p_din1,grp_fu_3829_p_dout0,grp_fu_3829_p_ce,grp_fu_3833_p_din0,grp_fu_3833_p_din1,grp_fu_3833_p_dout0,grp_fu_3833_p_ce,grp_fu_3837_p_din0,grp_fu_3837_p_din1,grp_fu_3837_p_dout0,grp_fu_3837_p_ce,grp_fu_3841_p_din0,grp_fu_3841_p_din1,grp_fu_3841_p_dout0,grp_fu_3841_p_ce,grp_fu_3845_p_din0,grp_fu_3845_p_din1,grp_fu_3845_p_dout0,grp_fu_3845_p_ce,grp_fu_3849_p_din0,grp_fu_3849_p_din1,grp_fu_3849_p_dout0,grp_fu_3849_p_ce); 
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
output  [9:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [9:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
output  [9:0] v3_address2;
output   v3_ce2;
input  [31:0] v3_q2;
output  [9:0] v3_address3;
output   v3_ce3;
input  [31:0] v3_q3;
output  [9:0] v3_address4;
output   v3_ce4;
input  [31:0] v3_q4;
output  [9:0] v3_address5;
output   v3_ce5;
input  [31:0] v3_q5;
output  [9:0] v3_address6;
output   v3_ce6;
input  [31:0] v3_q6;
output  [9:0] v3_address7;
output   v3_ce7;
input  [31:0] v3_q7;
output  [31:0] grp_fu_1655_p_din0;
output  [31:0] grp_fu_1655_p_din1;
output  [0:0] grp_fu_1655_p_opcode;
input  [31:0] grp_fu_1655_p_dout0;
output   grp_fu_1655_p_ce;
output  [31:0] grp_fu_3797_p_din0;
output  [31:0] grp_fu_3797_p_din1;
output  [1:0] grp_fu_3797_p_opcode;
input  [31:0] grp_fu_3797_p_dout0;
output   grp_fu_3797_p_ce;
output  [31:0] grp_fu_3801_p_din0;
output  [31:0] grp_fu_3801_p_din1;
output  [1:0] grp_fu_3801_p_opcode;
input  [31:0] grp_fu_3801_p_dout0;
output   grp_fu_3801_p_ce;
output  [31:0] grp_fu_3805_p_din0;
output  [31:0] grp_fu_3805_p_din1;
output  [1:0] grp_fu_3805_p_opcode;
input  [31:0] grp_fu_3805_p_dout0;
output   grp_fu_3805_p_ce;
output  [31:0] grp_fu_3809_p_din0;
output  [31:0] grp_fu_3809_p_din1;
output  [1:0] grp_fu_3809_p_opcode;
input  [31:0] grp_fu_3809_p_dout0;
output   grp_fu_3809_p_ce;
output  [31:0] grp_fu_3813_p_din0;
output  [31:0] grp_fu_3813_p_din1;
output  [1:0] grp_fu_3813_p_opcode;
input  [31:0] grp_fu_3813_p_dout0;
output   grp_fu_3813_p_ce;
output  [31:0] grp_fu_3817_p_din0;
output  [31:0] grp_fu_3817_p_din1;
output  [1:0] grp_fu_3817_p_opcode;
input  [31:0] grp_fu_3817_p_dout0;
output   grp_fu_3817_p_ce;
output  [31:0] grp_fu_3821_p_din0;
output  [31:0] grp_fu_3821_p_din1;
output  [1:0] grp_fu_3821_p_opcode;
input  [31:0] grp_fu_3821_p_dout0;
output   grp_fu_3821_p_ce;
output  [31:0] grp_fu_3793_p_din0;
output  [31:0] grp_fu_3793_p_din1;
input  [31:0] grp_fu_3793_p_dout0;
output   grp_fu_3793_p_ce;
output  [31:0] grp_fu_3825_p_din0;
output  [31:0] grp_fu_3825_p_din1;
input  [31:0] grp_fu_3825_p_dout0;
output   grp_fu_3825_p_ce;
output  [31:0] grp_fu_3829_p_din0;
output  [31:0] grp_fu_3829_p_din1;
input  [31:0] grp_fu_3829_p_dout0;
output   grp_fu_3829_p_ce;
output  [31:0] grp_fu_3833_p_din0;
output  [31:0] grp_fu_3833_p_din1;
input  [31:0] grp_fu_3833_p_dout0;
output   grp_fu_3833_p_ce;
output  [31:0] grp_fu_3837_p_din0;
output  [31:0] grp_fu_3837_p_din1;
input  [31:0] grp_fu_3837_p_dout0;
output   grp_fu_3837_p_ce;
output  [31:0] grp_fu_3841_p_din0;
output  [31:0] grp_fu_3841_p_din1;
input  [31:0] grp_fu_3841_p_dout0;
output   grp_fu_3841_p_ce;
output  [31:0] grp_fu_3845_p_din0;
output  [31:0] grp_fu_3845_p_din1;
input  [31:0] grp_fu_3845_p_dout0;
output   grp_fu_3845_p_ce;
output  [31:0] grp_fu_3849_p_din0;
output  [31:0] grp_fu_3849_p_din1;
input  [31:0] grp_fu_3849_p_dout0;
output   grp_fu_3849_p_ce;
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
wire   [0:0] tmp_fu_401_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] lshr_ln55_s_fu_414_p4;
reg   [6:0] lshr_ln55_s_reg_644;
reg   [6:0] lshr_ln55_s_reg_644_pp0_iter1_reg;
reg   [6:0] lshr_ln55_s_reg_644_pp0_iter2_reg;
reg   [6:0] lshr_ln55_s_reg_644_pp0_iter3_reg;
reg   [31:0] v26_reg_689;
reg   [31:0] v26_43_reg_694;
reg   [31:0] v26_44_reg_699;
reg   [31:0] v26_45_reg_704;
reg   [31:0] v26_46_reg_709;
reg   [31:0] v26_47_reg_714;
reg   [31:0] v26_48_reg_719;
reg   [31:0] v26_49_reg_724;
reg   [6:0] v2_0_addr_reg_729;
reg   [6:0] v2_0_addr_reg_729_pp0_iter5_reg;
reg   [6:0] v2_0_addr_reg_729_pp0_iter6_reg;
reg   [6:0] v2_0_addr_reg_729_pp0_iter7_reg;
reg   [6:0] v2_0_addr_reg_729_pp0_iter8_reg;
reg   [6:0] v2_0_addr_reg_729_pp0_iter9_reg;
reg   [6:0] v2_0_addr_reg_729_pp0_iter10_reg;
reg   [6:0] v2_0_addr_reg_729_pp0_iter11_reg;
reg   [6:0] v2_0_addr_reg_729_pp0_iter12_reg;
reg   [6:0] v2_1_addr_reg_735;
reg   [6:0] v2_1_addr_reg_735_pp0_iter5_reg;
reg   [6:0] v2_1_addr_reg_735_pp0_iter6_reg;
reg   [6:0] v2_1_addr_reg_735_pp0_iter7_reg;
reg   [6:0] v2_1_addr_reg_735_pp0_iter8_reg;
reg   [6:0] v2_1_addr_reg_735_pp0_iter9_reg;
reg   [6:0] v2_1_addr_reg_735_pp0_iter10_reg;
reg   [6:0] v2_1_addr_reg_735_pp0_iter11_reg;
reg   [6:0] v2_1_addr_reg_735_pp0_iter12_reg;
reg   [6:0] v2_2_addr_reg_741;
reg   [6:0] v2_2_addr_reg_741_pp0_iter5_reg;
reg   [6:0] v2_2_addr_reg_741_pp0_iter6_reg;
reg   [6:0] v2_2_addr_reg_741_pp0_iter7_reg;
reg   [6:0] v2_2_addr_reg_741_pp0_iter8_reg;
reg   [6:0] v2_2_addr_reg_741_pp0_iter9_reg;
reg   [6:0] v2_2_addr_reg_741_pp0_iter10_reg;
reg   [6:0] v2_2_addr_reg_741_pp0_iter11_reg;
reg   [6:0] v2_2_addr_reg_741_pp0_iter12_reg;
reg   [6:0] v2_3_addr_reg_747;
reg   [6:0] v2_3_addr_reg_747_pp0_iter5_reg;
reg   [6:0] v2_3_addr_reg_747_pp0_iter6_reg;
reg   [6:0] v2_3_addr_reg_747_pp0_iter7_reg;
reg   [6:0] v2_3_addr_reg_747_pp0_iter8_reg;
reg   [6:0] v2_3_addr_reg_747_pp0_iter9_reg;
reg   [6:0] v2_3_addr_reg_747_pp0_iter10_reg;
reg   [6:0] v2_3_addr_reg_747_pp0_iter11_reg;
reg   [6:0] v2_3_addr_reg_747_pp0_iter12_reg;
reg   [6:0] v2_4_addr_reg_753;
reg   [6:0] v2_4_addr_reg_753_pp0_iter5_reg;
reg   [6:0] v2_4_addr_reg_753_pp0_iter6_reg;
reg   [6:0] v2_4_addr_reg_753_pp0_iter7_reg;
reg   [6:0] v2_4_addr_reg_753_pp0_iter8_reg;
reg   [6:0] v2_4_addr_reg_753_pp0_iter9_reg;
reg   [6:0] v2_4_addr_reg_753_pp0_iter10_reg;
reg   [6:0] v2_4_addr_reg_753_pp0_iter11_reg;
reg   [6:0] v2_4_addr_reg_753_pp0_iter12_reg;
reg   [6:0] v2_5_addr_reg_759;
reg   [6:0] v2_5_addr_reg_759_pp0_iter5_reg;
reg   [6:0] v2_5_addr_reg_759_pp0_iter6_reg;
reg   [6:0] v2_5_addr_reg_759_pp0_iter7_reg;
reg   [6:0] v2_5_addr_reg_759_pp0_iter8_reg;
reg   [6:0] v2_5_addr_reg_759_pp0_iter9_reg;
reg   [6:0] v2_5_addr_reg_759_pp0_iter10_reg;
reg   [6:0] v2_5_addr_reg_759_pp0_iter11_reg;
reg   [6:0] v2_5_addr_reg_759_pp0_iter12_reg;
reg   [6:0] v2_6_addr_reg_765;
reg   [6:0] v2_6_addr_reg_765_pp0_iter5_reg;
reg   [6:0] v2_6_addr_reg_765_pp0_iter6_reg;
reg   [6:0] v2_6_addr_reg_765_pp0_iter7_reg;
reg   [6:0] v2_6_addr_reg_765_pp0_iter8_reg;
reg   [6:0] v2_6_addr_reg_765_pp0_iter9_reg;
reg   [6:0] v2_6_addr_reg_765_pp0_iter10_reg;
reg   [6:0] v2_6_addr_reg_765_pp0_iter11_reg;
reg   [6:0] v2_6_addr_reg_765_pp0_iter12_reg;
reg   [6:0] v2_7_addr_reg_771;
reg   [6:0] v2_7_addr_reg_771_pp0_iter5_reg;
reg   [6:0] v2_7_addr_reg_771_pp0_iter6_reg;
reg   [6:0] v2_7_addr_reg_771_pp0_iter7_reg;
reg   [6:0] v2_7_addr_reg_771_pp0_iter8_reg;
reg   [6:0] v2_7_addr_reg_771_pp0_iter9_reg;
reg   [6:0] v2_7_addr_reg_771_pp0_iter10_reg;
reg   [6:0] v2_7_addr_reg_771_pp0_iter11_reg;
reg   [6:0] v2_7_addr_reg_771_pp0_iter12_reg;
reg   [31:0] v27_reg_777;
reg   [31:0] v2_0_load_reg_782;
reg   [31:0] v27_43_reg_787;
reg   [31:0] v2_1_load_reg_792;
reg   [31:0] v27_44_reg_797;
reg   [31:0] v2_2_load_reg_802;
reg   [31:0] v27_45_reg_807;
reg   [31:0] v2_3_load_reg_812;
reg   [31:0] v27_46_reg_817;
reg   [31:0] v2_4_load_reg_822;
reg   [31:0] v27_47_reg_827;
reg   [31:0] v2_5_load_reg_832;
reg   [31:0] v27_48_reg_837;
reg   [31:0] v2_6_load_reg_842;
reg   [31:0] v27_49_reg_847;
reg   [31:0] v2_7_load_reg_852;
wire   [31:0] v28_fu_569_p1;
wire   [31:0] v28_43_fu_573_p1;
wire   [31:0] v28_44_fu_577_p1;
wire   [31:0] v28_45_fu_581_p1;
wire   [31:0] v28_46_fu_585_p1;
wire   [31:0] v28_47_fu_589_p1;
wire   [31:0] v28_48_fu_593_p1;
wire   [31:0] v28_49_fu_597_p1;
reg   [31:0] v29_reg_897;
reg   [31:0] v29_43_reg_902;
reg   [31:0] v29_44_reg_907;
reg   [31:0] v29_45_reg_912;
reg   [31:0] v29_46_reg_917;
reg   [31:0] v29_47_reg_922;
reg   [31:0] v29_48_reg_927;
reg   [31:0] v29_49_reg_932;
wire   [63:0] zext_ln55_fu_409_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln56_fu_442_p1;
wire   [63:0] zext_ln56_37_fu_465_p1;
wire   [63:0] zext_ln56_38_fu_478_p1;
wire   [63:0] zext_ln56_39_fu_491_p1;
wire   [63:0] zext_ln56_40_fu_516_p1;
wire   [63:0] zext_ln56_41_fu_529_p1;
wire   [63:0] zext_ln56_42_fu_542_p1;
wire   [63:0] zext_ln55_7_fu_558_p1;
reg   [10:0] v25_fu_84;
wire   [10:0] add_ln55_fu_547_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_7;
reg    v3_ce7_local;
reg    v3_ce6_local;
reg    v3_ce5_local;
reg    v3_ce4_local;
reg    v3_ce3_local;
reg    v3_ce2_local;
reg    v3_ce1_local;
reg    v3_ce0_local;
reg    v2_0_ce1_local;
reg    v2_0_we0_local;
wire   [31:0] bitcast_ln60_fu_601_p1;
reg    v2_0_ce0_local;
reg    v2_1_ce1_local;
reg    v2_1_we0_local;
wire   [31:0] bitcast_ln60_43_fu_605_p1;
reg    v2_1_ce0_local;
reg    v2_2_ce1_local;
reg    v2_2_we0_local;
wire   [31:0] bitcast_ln60_44_fu_609_p1;
reg    v2_2_ce0_local;
reg    v2_3_ce1_local;
reg    v2_3_we0_local;
wire   [31:0] bitcast_ln60_45_fu_613_p1;
reg    v2_3_ce0_local;
reg    v2_4_ce1_local;
reg    v2_4_we0_local;
wire   [31:0] bitcast_ln60_46_fu_617_p1;
reg    v2_4_ce0_local;
reg    v2_5_ce1_local;
reg    v2_5_we0_local;
wire   [31:0] bitcast_ln60_47_fu_621_p1;
reg    v2_5_ce0_local;
reg    v2_6_ce1_local;
reg    v2_6_we0_local;
wire   [31:0] bitcast_ln60_48_fu_625_p1;
reg    v2_6_ce0_local;
reg    v2_7_ce1_local;
reg    v2_7_we0_local;
wire   [31:0] bitcast_ln60_49_fu_629_p1;
reg    v2_7_ce0_local;
wire   [8:0] tmp_s_fu_424_p4;
wire   [9:0] or_ln55_s_fu_434_p3;
wire   [7:0] tmp_7_fu_447_p4;
wire   [9:0] or_ln55_37_fu_457_p3;
wire   [9:0] or_ln55_38_fu_470_p3;
wire   [9:0] or_ln55_39_fu_483_p3;
wire   [0:0] tmp_8_fu_496_p3;
wire   [9:0] or_ln55_40_fu_504_p5;
wire   [9:0] or_ln55_41_fu_521_p3;
wire   [9:0] or_ln55_42_fu_534_p3;
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
#0 v25_fu_84 = 11'd0;
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
        if (((tmp_fu_401_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v25_fu_84 <= add_ln55_fu_547_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_fu_84 <= 11'd0;
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
        lshr_ln55_s_reg_644_pp0_iter2_reg <= lshr_ln55_s_reg_644_pp0_iter1_reg;
        lshr_ln55_s_reg_644_pp0_iter3_reg <= lshr_ln55_s_reg_644_pp0_iter2_reg;
        v27_43_reg_787 <= grp_fu_3825_p_dout0;
        v27_44_reg_797 <= grp_fu_3829_p_dout0;
        v27_45_reg_807 <= grp_fu_3833_p_dout0;
        v27_46_reg_817 <= grp_fu_3837_p_dout0;
        v27_47_reg_827 <= grp_fu_3841_p_dout0;
        v27_48_reg_837 <= grp_fu_3845_p_dout0;
        v27_49_reg_847 <= grp_fu_3849_p_dout0;
        v27_reg_777 <= grp_fu_3793_p_dout0;
        v29_43_reg_902 <= grp_fu_3797_p_dout0;
        v29_44_reg_907 <= grp_fu_3801_p_dout0;
        v29_45_reg_912 <= grp_fu_3805_p_dout0;
        v29_46_reg_917 <= grp_fu_3809_p_dout0;
        v29_47_reg_922 <= grp_fu_3813_p_dout0;
        v29_48_reg_927 <= grp_fu_3817_p_dout0;
        v29_49_reg_932 <= grp_fu_3821_p_dout0;
        v29_reg_897 <= grp_fu_1655_p_dout0;
        v2_0_addr_reg_729 <= zext_ln55_7_fu_558_p1;
        v2_0_addr_reg_729_pp0_iter10_reg <= v2_0_addr_reg_729_pp0_iter9_reg;
        v2_0_addr_reg_729_pp0_iter11_reg <= v2_0_addr_reg_729_pp0_iter10_reg;
        v2_0_addr_reg_729_pp0_iter12_reg <= v2_0_addr_reg_729_pp0_iter11_reg;
        v2_0_addr_reg_729_pp0_iter5_reg <= v2_0_addr_reg_729;
        v2_0_addr_reg_729_pp0_iter6_reg <= v2_0_addr_reg_729_pp0_iter5_reg;
        v2_0_addr_reg_729_pp0_iter7_reg <= v2_0_addr_reg_729_pp0_iter6_reg;
        v2_0_addr_reg_729_pp0_iter8_reg <= v2_0_addr_reg_729_pp0_iter7_reg;
        v2_0_addr_reg_729_pp0_iter9_reg <= v2_0_addr_reg_729_pp0_iter8_reg;
        v2_1_addr_reg_735 <= zext_ln55_7_fu_558_p1;
        v2_1_addr_reg_735_pp0_iter10_reg <= v2_1_addr_reg_735_pp0_iter9_reg;
        v2_1_addr_reg_735_pp0_iter11_reg <= v2_1_addr_reg_735_pp0_iter10_reg;
        v2_1_addr_reg_735_pp0_iter12_reg <= v2_1_addr_reg_735_pp0_iter11_reg;
        v2_1_addr_reg_735_pp0_iter5_reg <= v2_1_addr_reg_735;
        v2_1_addr_reg_735_pp0_iter6_reg <= v2_1_addr_reg_735_pp0_iter5_reg;
        v2_1_addr_reg_735_pp0_iter7_reg <= v2_1_addr_reg_735_pp0_iter6_reg;
        v2_1_addr_reg_735_pp0_iter8_reg <= v2_1_addr_reg_735_pp0_iter7_reg;
        v2_1_addr_reg_735_pp0_iter9_reg <= v2_1_addr_reg_735_pp0_iter8_reg;
        v2_2_addr_reg_741 <= zext_ln55_7_fu_558_p1;
        v2_2_addr_reg_741_pp0_iter10_reg <= v2_2_addr_reg_741_pp0_iter9_reg;
        v2_2_addr_reg_741_pp0_iter11_reg <= v2_2_addr_reg_741_pp0_iter10_reg;
        v2_2_addr_reg_741_pp0_iter12_reg <= v2_2_addr_reg_741_pp0_iter11_reg;
        v2_2_addr_reg_741_pp0_iter5_reg <= v2_2_addr_reg_741;
        v2_2_addr_reg_741_pp0_iter6_reg <= v2_2_addr_reg_741_pp0_iter5_reg;
        v2_2_addr_reg_741_pp0_iter7_reg <= v2_2_addr_reg_741_pp0_iter6_reg;
        v2_2_addr_reg_741_pp0_iter8_reg <= v2_2_addr_reg_741_pp0_iter7_reg;
        v2_2_addr_reg_741_pp0_iter9_reg <= v2_2_addr_reg_741_pp0_iter8_reg;
        v2_3_addr_reg_747 <= zext_ln55_7_fu_558_p1;
        v2_3_addr_reg_747_pp0_iter10_reg <= v2_3_addr_reg_747_pp0_iter9_reg;
        v2_3_addr_reg_747_pp0_iter11_reg <= v2_3_addr_reg_747_pp0_iter10_reg;
        v2_3_addr_reg_747_pp0_iter12_reg <= v2_3_addr_reg_747_pp0_iter11_reg;
        v2_3_addr_reg_747_pp0_iter5_reg <= v2_3_addr_reg_747;
        v2_3_addr_reg_747_pp0_iter6_reg <= v2_3_addr_reg_747_pp0_iter5_reg;
        v2_3_addr_reg_747_pp0_iter7_reg <= v2_3_addr_reg_747_pp0_iter6_reg;
        v2_3_addr_reg_747_pp0_iter8_reg <= v2_3_addr_reg_747_pp0_iter7_reg;
        v2_3_addr_reg_747_pp0_iter9_reg <= v2_3_addr_reg_747_pp0_iter8_reg;
        v2_4_addr_reg_753 <= zext_ln55_7_fu_558_p1;
        v2_4_addr_reg_753_pp0_iter10_reg <= v2_4_addr_reg_753_pp0_iter9_reg;
        v2_4_addr_reg_753_pp0_iter11_reg <= v2_4_addr_reg_753_pp0_iter10_reg;
        v2_4_addr_reg_753_pp0_iter12_reg <= v2_4_addr_reg_753_pp0_iter11_reg;
        v2_4_addr_reg_753_pp0_iter5_reg <= v2_4_addr_reg_753;
        v2_4_addr_reg_753_pp0_iter6_reg <= v2_4_addr_reg_753_pp0_iter5_reg;
        v2_4_addr_reg_753_pp0_iter7_reg <= v2_4_addr_reg_753_pp0_iter6_reg;
        v2_4_addr_reg_753_pp0_iter8_reg <= v2_4_addr_reg_753_pp0_iter7_reg;
        v2_4_addr_reg_753_pp0_iter9_reg <= v2_4_addr_reg_753_pp0_iter8_reg;
        v2_5_addr_reg_759 <= zext_ln55_7_fu_558_p1;
        v2_5_addr_reg_759_pp0_iter10_reg <= v2_5_addr_reg_759_pp0_iter9_reg;
        v2_5_addr_reg_759_pp0_iter11_reg <= v2_5_addr_reg_759_pp0_iter10_reg;
        v2_5_addr_reg_759_pp0_iter12_reg <= v2_5_addr_reg_759_pp0_iter11_reg;
        v2_5_addr_reg_759_pp0_iter5_reg <= v2_5_addr_reg_759;
        v2_5_addr_reg_759_pp0_iter6_reg <= v2_5_addr_reg_759_pp0_iter5_reg;
        v2_5_addr_reg_759_pp0_iter7_reg <= v2_5_addr_reg_759_pp0_iter6_reg;
        v2_5_addr_reg_759_pp0_iter8_reg <= v2_5_addr_reg_759_pp0_iter7_reg;
        v2_5_addr_reg_759_pp0_iter9_reg <= v2_5_addr_reg_759_pp0_iter8_reg;
        v2_6_addr_reg_765 <= zext_ln55_7_fu_558_p1;
        v2_6_addr_reg_765_pp0_iter10_reg <= v2_6_addr_reg_765_pp0_iter9_reg;
        v2_6_addr_reg_765_pp0_iter11_reg <= v2_6_addr_reg_765_pp0_iter10_reg;
        v2_6_addr_reg_765_pp0_iter12_reg <= v2_6_addr_reg_765_pp0_iter11_reg;
        v2_6_addr_reg_765_pp0_iter5_reg <= v2_6_addr_reg_765;
        v2_6_addr_reg_765_pp0_iter6_reg <= v2_6_addr_reg_765_pp0_iter5_reg;
        v2_6_addr_reg_765_pp0_iter7_reg <= v2_6_addr_reg_765_pp0_iter6_reg;
        v2_6_addr_reg_765_pp0_iter8_reg <= v2_6_addr_reg_765_pp0_iter7_reg;
        v2_6_addr_reg_765_pp0_iter9_reg <= v2_6_addr_reg_765_pp0_iter8_reg;
        v2_7_addr_reg_771 <= zext_ln55_7_fu_558_p1;
        v2_7_addr_reg_771_pp0_iter10_reg <= v2_7_addr_reg_771_pp0_iter9_reg;
        v2_7_addr_reg_771_pp0_iter11_reg <= v2_7_addr_reg_771_pp0_iter10_reg;
        v2_7_addr_reg_771_pp0_iter12_reg <= v2_7_addr_reg_771_pp0_iter11_reg;
        v2_7_addr_reg_771_pp0_iter5_reg <= v2_7_addr_reg_771;
        v2_7_addr_reg_771_pp0_iter6_reg <= v2_7_addr_reg_771_pp0_iter5_reg;
        v2_7_addr_reg_771_pp0_iter7_reg <= v2_7_addr_reg_771_pp0_iter6_reg;
        v2_7_addr_reg_771_pp0_iter8_reg <= v2_7_addr_reg_771_pp0_iter7_reg;
        v2_7_addr_reg_771_pp0_iter9_reg <= v2_7_addr_reg_771_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln55_s_reg_644 <= {{ap_sig_allocacmp_v25_7[9:3]}};
        lshr_ln55_s_reg_644_pp0_iter1_reg <= lshr_ln55_s_reg_644;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_43_reg_694 <= v3_q6;
        v26_44_reg_699 <= v3_q5;
        v26_45_reg_704 <= v3_q4;
        v26_46_reg_709 <= v3_q3;
        v26_47_reg_714 <= v3_q2;
        v26_48_reg_719 <= v3_q1;
        v26_49_reg_724 <= v3_q0;
        v26_reg_689 <= v3_q7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2_0_load_reg_782 <= v2_0_q1;
        v2_1_load_reg_792 <= v2_1_q1;
        v2_2_load_reg_802 <= v2_2_q1;
        v2_3_load_reg_812 <= v2_3_q1;
        v2_4_load_reg_822 <= v2_4_q1;
        v2_5_load_reg_832 <= v2_5_q1;
        v2_6_load_reg_842 <= v2_6_q1;
        v2_7_load_reg_852 <= v2_7_q1;
    end
end
always @ (*) begin
    if (((tmp_fu_401_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v25_7 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_7 = v25_fu_84;
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
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce2_local = 1'b1;
    end else begin
        v3_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce3_local = 1'b1;
    end else begin
        v3_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce4_local = 1'b1;
    end else begin
        v3_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce5_local = 1'b1;
    end else begin
        v3_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce6_local = 1'b1;
    end else begin
        v3_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce7_local = 1'b1;
    end else begin
        v3_ce7_local = 1'b0;
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
assign add_ln55_fu_547_p2 = (ap_sig_allocacmp_v25_7 + 11'd8);
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
assign bitcast_ln60_43_fu_605_p1 = v29_43_reg_902;
assign bitcast_ln60_44_fu_609_p1 = v29_44_reg_907;
assign bitcast_ln60_45_fu_613_p1 = v29_45_reg_912;
assign bitcast_ln60_46_fu_617_p1 = v29_46_reg_917;
assign bitcast_ln60_47_fu_621_p1 = v29_47_reg_922;
assign bitcast_ln60_48_fu_625_p1 = v29_48_reg_927;
assign bitcast_ln60_49_fu_629_p1 = v29_49_reg_932;
assign bitcast_ln60_fu_601_p1 = v29_reg_897;
assign grp_fu_1655_p_ce = 1'b1;
assign grp_fu_1655_p_din0 = v28_fu_569_p1;
assign grp_fu_1655_p_din1 = v27_reg_777;
assign grp_fu_1655_p_opcode = 2'd0;
assign grp_fu_3793_p_ce = 1'b1;
assign grp_fu_3793_p_din0 = v26_reg_689;
assign grp_fu_3793_p_din1 = 32'd3345637376;
assign grp_fu_3797_p_ce = 1'b1;
assign grp_fu_3797_p_din0 = v28_43_fu_573_p1;
assign grp_fu_3797_p_din1 = v27_43_reg_787;
assign grp_fu_3797_p_opcode = 2'd0;
assign grp_fu_3801_p_ce = 1'b1;
assign grp_fu_3801_p_din0 = v28_44_fu_577_p1;
assign grp_fu_3801_p_din1 = v27_44_reg_797;
assign grp_fu_3801_p_opcode = 2'd0;
assign grp_fu_3805_p_ce = 1'b1;
assign grp_fu_3805_p_din0 = v28_45_fu_581_p1;
assign grp_fu_3805_p_din1 = v27_45_reg_807;
assign grp_fu_3805_p_opcode = 2'd0;
assign grp_fu_3809_p_ce = 1'b1;
assign grp_fu_3809_p_din0 = v28_46_fu_585_p1;
assign grp_fu_3809_p_din1 = v27_46_reg_817;
assign grp_fu_3809_p_opcode = 2'd0;
assign grp_fu_3813_p_ce = 1'b1;
assign grp_fu_3813_p_din0 = v28_47_fu_589_p1;
assign grp_fu_3813_p_din1 = v27_47_reg_827;
assign grp_fu_3813_p_opcode = 2'd0;
assign grp_fu_3817_p_ce = 1'b1;
assign grp_fu_3817_p_din0 = v28_48_fu_593_p1;
assign grp_fu_3817_p_din1 = v27_48_reg_837;
assign grp_fu_3817_p_opcode = 2'd0;
assign grp_fu_3821_p_ce = 1'b1;
assign grp_fu_3821_p_din0 = v28_49_fu_597_p1;
assign grp_fu_3821_p_din1 = v27_49_reg_847;
assign grp_fu_3821_p_opcode = 2'd0;
assign grp_fu_3825_p_ce = 1'b1;
assign grp_fu_3825_p_din0 = v26_43_reg_694;
assign grp_fu_3825_p_din1 = 32'd3345637376;
assign grp_fu_3829_p_ce = 1'b1;
assign grp_fu_3829_p_din0 = v26_44_reg_699;
assign grp_fu_3829_p_din1 = 32'd3345637376;
assign grp_fu_3833_p_ce = 1'b1;
assign grp_fu_3833_p_din0 = v26_45_reg_704;
assign grp_fu_3833_p_din1 = 32'd3345637376;
assign grp_fu_3837_p_ce = 1'b1;
assign grp_fu_3837_p_din0 = v26_46_reg_709;
assign grp_fu_3837_p_din1 = 32'd3345637376;
assign grp_fu_3841_p_ce = 1'b1;
assign grp_fu_3841_p_din0 = v26_47_reg_714;
assign grp_fu_3841_p_din1 = 32'd3345637376;
assign grp_fu_3845_p_ce = 1'b1;
assign grp_fu_3845_p_din0 = v26_48_reg_719;
assign grp_fu_3845_p_din1 = 32'd3345637376;
assign grp_fu_3849_p_ce = 1'b1;
assign grp_fu_3849_p_din0 = v26_49_reg_724;
assign grp_fu_3849_p_din1 = 32'd3345637376;
assign lshr_ln55_s_fu_414_p4 = {{ap_sig_allocacmp_v25_7[9:3]}};
assign or_ln55_37_fu_457_p3 = {{tmp_7_fu_447_p4}, {2'd2}};
assign or_ln55_38_fu_470_p3 = {{tmp_7_fu_447_p4}, {2'd3}};
assign or_ln55_39_fu_483_p3 = {{lshr_ln55_s_fu_414_p4}, {3'd4}};
assign or_ln55_40_fu_504_p5 = {{{{lshr_ln55_s_fu_414_p4}, {1'd1}}, {tmp_8_fu_496_p3}}, {1'd1}};
assign or_ln55_41_fu_521_p3 = {{lshr_ln55_s_fu_414_p4}, {3'd6}};
assign or_ln55_42_fu_534_p3 = {{lshr_ln55_s_fu_414_p4}, {3'd7}};
assign or_ln55_s_fu_434_p3 = {{tmp_s_fu_424_p4}, {1'd1}};
assign tmp_7_fu_447_p4 = {{ap_sig_allocacmp_v25_7[9:2]}};
assign tmp_8_fu_496_p3 = ap_sig_allocacmp_v25_7[32'd1];
assign tmp_fu_401_p3 = ap_sig_allocacmp_v25_7[32'd10];
assign tmp_s_fu_424_p4 = {{ap_sig_allocacmp_v25_7[9:1]}};
assign v28_43_fu_573_p1 = v2_1_load_reg_792;
assign v28_44_fu_577_p1 = v2_2_load_reg_802;
assign v28_45_fu_581_p1 = v2_3_load_reg_812;
assign v28_46_fu_585_p1 = v2_4_load_reg_822;
assign v28_47_fu_589_p1 = v2_5_load_reg_832;
assign v28_48_fu_593_p1 = v2_6_load_reg_842;
assign v28_49_fu_597_p1 = v2_7_load_reg_852;
assign v28_fu_569_p1 = v2_0_load_reg_782;
assign v2_0_address0 = v2_0_addr_reg_729_pp0_iter12_reg;
assign v2_0_address1 = zext_ln55_7_fu_558_p1;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = bitcast_ln60_fu_601_p1;
assign v2_0_we0 = v2_0_we0_local;
assign v2_1_address0 = v2_1_addr_reg_735_pp0_iter12_reg;
assign v2_1_address1 = zext_ln55_7_fu_558_p1;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = bitcast_ln60_43_fu_605_p1;
assign v2_1_we0 = v2_1_we0_local;
assign v2_2_address0 = v2_2_addr_reg_741_pp0_iter12_reg;
assign v2_2_address1 = zext_ln55_7_fu_558_p1;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_2_ce1 = v2_2_ce1_local;
assign v2_2_d0 = bitcast_ln60_44_fu_609_p1;
assign v2_2_we0 = v2_2_we0_local;
assign v2_3_address0 = v2_3_addr_reg_747_pp0_iter12_reg;
assign v2_3_address1 = zext_ln55_7_fu_558_p1;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_3_ce1 = v2_3_ce1_local;
assign v2_3_d0 = bitcast_ln60_45_fu_613_p1;
assign v2_3_we0 = v2_3_we0_local;
assign v2_4_address0 = v2_4_addr_reg_753_pp0_iter12_reg;
assign v2_4_address1 = zext_ln55_7_fu_558_p1;
assign v2_4_ce0 = v2_4_ce0_local;
assign v2_4_ce1 = v2_4_ce1_local;
assign v2_4_d0 = bitcast_ln60_46_fu_617_p1;
assign v2_4_we0 = v2_4_we0_local;
assign v2_5_address0 = v2_5_addr_reg_759_pp0_iter12_reg;
assign v2_5_address1 = zext_ln55_7_fu_558_p1;
assign v2_5_ce0 = v2_5_ce0_local;
assign v2_5_ce1 = v2_5_ce1_local;
assign v2_5_d0 = bitcast_ln60_47_fu_621_p1;
assign v2_5_we0 = v2_5_we0_local;
assign v2_6_address0 = v2_6_addr_reg_765_pp0_iter12_reg;
assign v2_6_address1 = zext_ln55_7_fu_558_p1;
assign v2_6_ce0 = v2_6_ce0_local;
assign v2_6_ce1 = v2_6_ce1_local;
assign v2_6_d0 = bitcast_ln60_48_fu_625_p1;
assign v2_6_we0 = v2_6_we0_local;
assign v2_7_address0 = v2_7_addr_reg_771_pp0_iter12_reg;
assign v2_7_address1 = zext_ln55_7_fu_558_p1;
assign v2_7_ce0 = v2_7_ce0_local;
assign v2_7_ce1 = v2_7_ce1_local;
assign v2_7_d0 = bitcast_ln60_49_fu_629_p1;
assign v2_7_we0 = v2_7_we0_local;
assign v3_address0 = zext_ln56_42_fu_542_p1;
assign v3_address1 = zext_ln56_41_fu_529_p1;
assign v3_address2 = zext_ln56_40_fu_516_p1;
assign v3_address3 = zext_ln56_39_fu_491_p1;
assign v3_address4 = zext_ln56_38_fu_478_p1;
assign v3_address5 = zext_ln56_37_fu_465_p1;
assign v3_address6 = zext_ln56_fu_442_p1;
assign v3_address7 = zext_ln55_fu_409_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign v3_ce2 = v3_ce2_local;
assign v3_ce3 = v3_ce3_local;
assign v3_ce4 = v3_ce4_local;
assign v3_ce5 = v3_ce5_local;
assign v3_ce6 = v3_ce6_local;
assign v3_ce7 = v3_ce7_local;
assign zext_ln55_7_fu_558_p1 = lshr_ln55_s_reg_644_pp0_iter3_reg;
assign zext_ln55_fu_409_p1 = ap_sig_allocacmp_v25_7;
assign zext_ln56_37_fu_465_p1 = or_ln55_37_fu_457_p3;
assign zext_ln56_38_fu_478_p1 = or_ln55_38_fu_470_p3;
assign zext_ln56_39_fu_491_p1 = or_ln55_39_fu_483_p3;
assign zext_ln56_40_fu_516_p1 = or_ln55_40_fu_504_p5;
assign zext_ln56_41_fu_529_p1 = or_ln55_41_fu_521_p3;
assign zext_ln56_42_fu_542_p1 = or_ln55_42_fu_534_p3;
assign zext_ln56_fu_442_p1 = or_ln55_s_fu_434_p3;
endmodule 