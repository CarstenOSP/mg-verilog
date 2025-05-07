module backprop_backprop_Pipeline_activations2_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,oracle_activations2_3_address0,oracle_activations2_3_ce0,oracle_activations2_3_we0,oracle_activations2_3_d0,oracle_activations2_2_address0,oracle_activations2_2_ce0,oracle_activations2_2_we0,oracle_activations2_2_d0,oracle_activations2_1_address0,oracle_activations2_1_ce0,oracle_activations2_1_we0,oracle_activations2_1_d0,oracle_activations2_address0,oracle_activations2_ce0,oracle_activations2_we0,oracle_activations2_d0,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,p_reload86,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,p_reload85,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_q1,p_reload,dactivations2_address0,dactivations2_ce0,dactivations2_q0,dactivations2_1_address0,dactivations2_1_ce0,dactivations2_1_q0,dactivations2_2_address0,dactivations2_2_ce0,dactivations2_2_q0,weights3_3_address0,weights3_3_ce0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_q1,dactivations2_3_address0,dactivations2_3_ce0,dactivations2_3_q0,grp_fu_3491_p_din0,grp_fu_3491_p_din1,grp_fu_3491_p_opcode,grp_fu_3491_p_dout0,grp_fu_3491_p_ce,grp_fu_3495_p_din0,grp_fu_3495_p_din1,grp_fu_3495_p_opcode,grp_fu_3495_p_dout0,grp_fu_3495_p_ce,grp_fu_3499_p_din0,grp_fu_3499_p_din1,grp_fu_3499_p_opcode,grp_fu_3499_p_dout0,grp_fu_3499_p_ce,grp_fu_3503_p_din0,grp_fu_3503_p_din1,grp_fu_3503_p_opcode,grp_fu_3503_p_dout0,grp_fu_3503_p_ce,grp_fu_3507_p_din0,grp_fu_3507_p_din1,grp_fu_3507_p_opcode,grp_fu_3507_p_dout0,grp_fu_3507_p_ce,grp_fu_3511_p_din0,grp_fu_3511_p_din1,grp_fu_3511_p_opcode,grp_fu_3511_p_dout0,grp_fu_3511_p_ce,grp_fu_2070_p_din0,grp_fu_2070_p_din1,grp_fu_2070_p_dout0,grp_fu_2070_p_ce,grp_fu_3523_p_din0,grp_fu_3523_p_din1,grp_fu_3523_p_dout0,grp_fu_3523_p_ce,grp_fu_3527_p_din0,grp_fu_3527_p_din1,grp_fu_3527_p_dout0,grp_fu_3527_p_ce,grp_fu_3531_p_din0,grp_fu_3531_p_din1,grp_fu_3531_p_dout0,grp_fu_3531_p_ce,grp_fu_3535_p_din0,grp_fu_3535_p_din1,grp_fu_3535_p_dout0,grp_fu_3535_p_ce,grp_fu_3539_p_din0,grp_fu_3539_p_din1,grp_fu_3539_p_dout0,grp_fu_3539_p_ce,grp_fu_3543_p_din0,grp_fu_3543_p_din1,grp_fu_3543_p_dout0,grp_fu_3543_p_ce,grp_fu_3547_p_din0,grp_fu_3547_p_din1,grp_fu_3547_p_dout0,grp_fu_3547_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] oracle_activations2_3_address0;
output   oracle_activations2_3_ce0;
output   oracle_activations2_3_we0;
output  [63:0] oracle_activations2_3_d0;
output  [3:0] oracle_activations2_2_address0;
output   oracle_activations2_2_ce0;
output   oracle_activations2_2_we0;
output  [63:0] oracle_activations2_2_d0;
output  [3:0] oracle_activations2_1_address0;
output   oracle_activations2_1_ce0;
output   oracle_activations2_1_we0;
output  [63:0] oracle_activations2_1_d0;
output  [3:0] oracle_activations2_address0;
output   oracle_activations2_ce0;
output   oracle_activations2_we0;
output  [63:0] oracle_activations2_d0;
output  [5:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [5:0] weights3_0_address1;
output   weights3_0_ce1;
input  [63:0] weights3_0_q1;
input  [63:0] p_reload86;
output  [5:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [5:0] weights3_1_address1;
output   weights3_1_ce1;
input  [63:0] weights3_1_q1;
input  [63:0] p_reload85;
output  [5:0] weights3_2_address0;
output   weights3_2_ce0;
input  [63:0] weights3_2_q0;
output  [5:0] weights3_2_address1;
output   weights3_2_ce1;
input  [63:0] weights3_2_q1;
input  [63:0] p_reload;
output  [3:0] dactivations2_address0;
output   dactivations2_ce0;
input  [63:0] dactivations2_q0;
output  [3:0] dactivations2_1_address0;
output   dactivations2_1_ce0;
input  [63:0] dactivations2_1_q0;
output  [3:0] dactivations2_2_address0;
output   dactivations2_2_ce0;
input  [63:0] dactivations2_2_q0;
output  [5:0] weights3_3_address0;
output   weights3_3_ce0;
input  [63:0] weights3_3_q0;
output  [5:0] weights3_3_address1;
output   weights3_3_ce1;
input  [63:0] weights3_3_q1;
output  [3:0] dactivations2_3_address0;
output   dactivations2_3_ce0;
input  [63:0] dactivations2_3_q0;
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
output  [1:0] grp_fu_3507_p_opcode;
input  [63:0] grp_fu_3507_p_dout0;
output   grp_fu_3507_p_ce;
output  [63:0] grp_fu_3511_p_din0;
output  [63:0] grp_fu_3511_p_din1;
output  [0:0] grp_fu_3511_p_opcode;
input  [63:0] grp_fu_3511_p_dout0;
output   grp_fu_3511_p_ce;
output  [63:0] grp_fu_2070_p_din0;
output  [63:0] grp_fu_2070_p_din1;
input  [63:0] grp_fu_2070_p_dout0;
output   grp_fu_2070_p_ce;
output  [63:0] grp_fu_3523_p_din0;
output  [63:0] grp_fu_3523_p_din1;
input  [63:0] grp_fu_3523_p_dout0;
output   grp_fu_3523_p_ce;
output  [63:0] grp_fu_3527_p_din0;
output  [63:0] grp_fu_3527_p_din1;
input  [63:0] grp_fu_3527_p_dout0;
output   grp_fu_3527_p_ce;
output  [63:0] grp_fu_3531_p_din0;
output  [63:0] grp_fu_3531_p_din1;
input  [63:0] grp_fu_3531_p_dout0;
output   grp_fu_3531_p_ce;
output  [63:0] grp_fu_3535_p_din0;
output  [63:0] grp_fu_3535_p_din1;
input  [63:0] grp_fu_3535_p_dout0;
output   grp_fu_3535_p_ce;
output  [63:0] grp_fu_3539_p_din0;
output  [63:0] grp_fu_3539_p_din1;
input  [63:0] grp_fu_3539_p_dout0;
output   grp_fu_3539_p_ce;
output  [63:0] grp_fu_3543_p_din0;
output  [63:0] grp_fu_3543_p_din1;
input  [63:0] grp_fu_3543_p_dout0;
output   grp_fu_3543_p_ce;
output  [63:0] grp_fu_3547_p_din0;
output  [63:0] grp_fu_3547_p_din1;
input  [63:0] grp_fu_3547_p_dout0;
output   grp_fu_3547_p_ce;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_750;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_416;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_421;
reg   [63:0] reg_426;
reg   [63:0] reg_431;
reg   [6:0] i_9_reg_745;
wire   [3:0] lshr_ln_fu_452_p4;
reg   [3:0] lshr_ln_reg_754;
reg   [3:0] lshr_ln_reg_754_pp0_iter1_reg;
reg   [3:0] lshr_ln_reg_754_pp0_iter2_reg;
reg   [3:0] lshr_ln_reg_754_pp0_iter3_reg;
reg   [3:0] lshr_ln_reg_754_pp0_iter4_reg;
reg   [3:0] lshr_ln_reg_754_pp0_iter5_reg;
reg   [3:0] lshr_ln_reg_754_pp0_iter6_reg;
reg   [3:0] lshr_ln_reg_754_pp0_iter7_reg;
reg   [3:0] lshr_ln_reg_754_pp0_iter8_reg;
reg   [3:0] lshr_ln_reg_754_pp0_iter9_reg;
reg   [3:0] lshr_ln_reg_754_pp0_iter10_reg;
reg   [3:0] lshr_ln_reg_754_pp0_iter11_reg;
reg   [3:0] lshr_ln_reg_754_pp0_iter12_reg;
reg   [3:0] lshr_ln_reg_754_pp0_iter13_reg;
reg   [3:0] lshr_ln_reg_754_pp0_iter14_reg;
reg   [3:0] lshr_ln_reg_754_pp0_iter15_reg;
wire   [7:0] empty_fu_517_p2;
reg   [7:0] empty_reg_774;
wire   [63:0] bitcast_ln85_fu_651_p1;
wire   [63:0] bitcast_ln85_1_fu_656_p1;
wire   [63:0] bitcast_ln85_2_fu_661_p1;
wire   [63:0] bitcast_ln85_3_fu_666_p1;
reg   [63:0] weights3_0_load_24_reg_848;
reg   [63:0] weights3_1_load_24_reg_853;
reg   [63:0] weights3_2_load_24_reg_858;
reg   [63:0] weights3_3_load_24_reg_863;
wire   [63:0] bitcast_ln85_4_fu_671_p1;
wire   [63:0] bitcast_ln85_5_fu_676_p1;
wire   [63:0] bitcast_ln85_6_fu_681_p1;
wire   [63:0] bitcast_ln85_7_fu_686_p1;
wire   [63:0] bitcast_ln85_8_fu_691_p1;
wire   [63:0] bitcast_ln85_9_fu_695_p1;
wire   [63:0] bitcast_ln85_10_fu_699_p1;
wire   [63:0] bitcast_ln85_11_fu_703_p1;
reg   [63:0] mul8_i2_reg_908;
reg   [63:0] mul8_111_i_reg_913;
reg   [63:0] mul8_111_i_reg_913_pp0_iter5_reg;
reg   [63:0] mul8_111_i_reg_913_pp0_iter6_reg;
reg   [63:0] mul8_111_i_reg_913_pp0_iter7_reg;
reg   [63:0] mul8_111_i_reg_913_pp0_iter8_reg;
reg   [63:0] mul8_223_i_reg_918;
reg   [63:0] mul8_223_i_reg_918_pp0_iter5_reg;
reg   [63:0] mul8_223_i_reg_918_pp0_iter6_reg;
reg   [63:0] mul8_223_i_reg_918_pp0_iter7_reg;
reg   [63:0] mul8_223_i_reg_918_pp0_iter8_reg;
reg   [63:0] mul8_223_i_reg_918_pp0_iter9_reg;
reg   [63:0] mul8_223_i_reg_918_pp0_iter10_reg;
reg   [63:0] mul8_223_i_reg_918_pp0_iter11_reg;
reg   [63:0] mul8_223_i_reg_918_pp0_iter12_reg;
reg   [63:0] mul8_1_i2_reg_923;
reg   [63:0] mul8_1_1_i_reg_928;
reg   [63:0] mul8_1_1_i_reg_928_pp0_iter5_reg;
reg   [63:0] mul8_1_1_i_reg_928_pp0_iter6_reg;
reg   [63:0] mul8_1_1_i_reg_928_pp0_iter7_reg;
reg   [63:0] mul8_1_2_i_reg_933;
reg   [63:0] mul8_1_2_i_reg_933_pp0_iter5_reg;
reg   [63:0] mul8_1_2_i_reg_933_pp0_iter6_reg;
reg   [63:0] mul8_1_2_i_reg_933_pp0_iter7_reg;
reg   [63:0] mul8_1_2_i_reg_933_pp0_iter8_reg;
reg   [63:0] mul8_1_2_i_reg_933_pp0_iter9_reg;
reg   [63:0] mul8_1_2_i_reg_933_pp0_iter10_reg;
reg   [63:0] mul8_1_2_i_reg_933_pp0_iter11_reg;
reg   [63:0] mul8_2_i2_reg_938;
reg   [63:0] mul8_2_1_i_reg_943;
reg   [63:0] mul8_2_1_i_reg_943_pp0_iter5_reg;
reg   [63:0] mul8_2_1_i_reg_943_pp0_iter6_reg;
reg   [63:0] mul8_2_1_i_reg_943_pp0_iter7_reg;
reg   [63:0] mul8_2_1_i_reg_943_pp0_iter8_reg;
reg   [63:0] mul8_2_2_i_reg_948;
reg   [63:0] mul8_2_2_i_reg_948_pp0_iter5_reg;
reg   [63:0] mul8_2_2_i_reg_948_pp0_iter6_reg;
reg   [63:0] mul8_2_2_i_reg_948_pp0_iter7_reg;
reg   [63:0] mul8_2_2_i_reg_948_pp0_iter8_reg;
reg   [63:0] mul8_2_2_i_reg_948_pp0_iter9_reg;
reg   [63:0] mul8_2_2_i_reg_948_pp0_iter10_reg;
reg   [63:0] mul8_2_2_i_reg_948_pp0_iter11_reg;
reg   [63:0] mul8_2_2_i_reg_948_pp0_iter12_reg;
reg   [63:0] mul8_3_i2_reg_953;
reg   [63:0] mul8_3_1_i_reg_958;
reg   [63:0] mul8_3_1_i_reg_958_pp0_iter5_reg;
reg   [63:0] mul8_3_1_i_reg_958_pp0_iter6_reg;
reg   [63:0] mul8_3_1_i_reg_958_pp0_iter7_reg;
reg   [63:0] mul8_3_1_i_reg_958_pp0_iter8_reg;
reg   [63:0] mul8_3_2_i_reg_963;
reg   [63:0] mul8_3_2_i_reg_963_pp0_iter5_reg;
reg   [63:0] mul8_3_2_i_reg_963_pp0_iter6_reg;
reg   [63:0] mul8_3_2_i_reg_963_pp0_iter7_reg;
reg   [63:0] mul8_3_2_i_reg_963_pp0_iter8_reg;
reg   [63:0] mul8_3_2_i_reg_963_pp0_iter9_reg;
reg   [63:0] mul8_3_2_i_reg_963_pp0_iter10_reg;
reg   [63:0] mul8_3_2_i_reg_963_pp0_iter11_reg;
reg   [63:0] mul8_3_2_i_reg_963_pp0_iter12_reg;
reg   [63:0] add11_i2_reg_968;
reg   [63:0] add11_1_i2_reg_973;
reg   [63:0] add11_2_i2_reg_978;
reg   [63:0] add11_3_i2_reg_983;
reg   [63:0] add11_112_i_reg_988;
reg   [63:0] add11_1_1_i_reg_993;
reg   [63:0] add11_2_1_i_reg_998;
reg   [63:0] add11_3_1_i_reg_1003;
wire   [63:0] zext_ln81_fu_707_p1;
reg   [63:0] zext_ln81_reg_1008;
reg   [63:0] zext_ln81_reg_1008_pp0_iter17_reg;
reg   [63:0] zext_ln81_reg_1008_pp0_iter18_reg;
reg   [63:0] zext_ln81_reg_1008_pp0_iter19_reg;
reg   [63:0] zext_ln81_reg_1008_pp0_iter20_reg;
reg   [63:0] add11_224_i_reg_1016;
reg   [63:0] add11_1_2_i_reg_1036;
reg   [63:0] dactivations2_load_reg_1046;
reg   [63:0] add11_2_2_i_reg_1051;
reg   [63:0] add11_3_2_i_reg_1056;
reg   [63:0] dactivations2_1_load_reg_1061;
reg   [63:0] dactivations2_2_load_reg_1066;
reg   [63:0] dactivations2_3_load_reg_1071;
reg   [63:0] mul16_i_reg_1076;
reg   [63:0] mul16_1_i_reg_1081;
reg   [63:0] mul16_2_i_reg_1086;
reg   [63:0] mul16_3_i_reg_1091;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln85_fu_480_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln85_1_fu_533_p1;
wire   [63:0] zext_ln85_2_fu_553_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln87_fu_573_p1;
wire   [63:0] zext_ln85_3_fu_593_p1;
wire   [63:0] zext_ln87_1_fu_614_p1;
wire   [63:0] zext_ln85_4_fu_634_p1;
reg   [6:0] i_fu_100;
wire   [6:0] add_ln82_fu_641_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_9;
reg    weights3_0_ce0_local;
reg   [5:0] weights3_0_address0_local;
reg    weights3_0_ce1_local;
reg    weights3_1_ce0_local;
reg   [5:0] weights3_1_address0_local;
reg    weights3_1_ce1_local;
reg    weights3_2_ce0_local;
reg   [5:0] weights3_2_address0_local;
reg    weights3_2_ce1_local;
reg    weights3_3_ce0_local;
reg   [5:0] weights3_3_address0_local;
reg    weights3_3_ce1_local;
reg    dactivations2_ce0_local;
reg    dactivations2_1_ce0_local;
reg    dactivations2_2_ce0_local;
reg    dactivations2_3_ce0_local;
reg    oracle_activations2_we0_local;
reg    oracle_activations2_ce0_local;
reg    oracle_activations2_1_we0_local;
reg    oracle_activations2_1_ce0_local;
reg    oracle_activations2_2_we0_local;
reg    oracle_activations2_2_ce0_local;
reg    oracle_activations2_3_we0_local;
reg    oracle_activations2_3_ce0_local;
reg   [63:0] grp_fu_358_p0;
reg   [63:0] grp_fu_363_p0;
reg   [63:0] grp_fu_368_p0;
reg   [63:0] grp_fu_368_p1;
reg   [63:0] grp_fu_372_p0;
reg   [63:0] grp_fu_372_p1;
reg   [63:0] grp_fu_376_p0;
reg   [63:0] grp_fu_376_p1;
reg   [63:0] grp_fu_380_p0;
reg   [63:0] grp_fu_380_p1;
reg   [63:0] grp_fu_384_p0;
reg   [63:0] grp_fu_384_p1;
reg   [63:0] grp_fu_388_p0;
reg   [63:0] grp_fu_388_p1;
reg   [63:0] grp_fu_392_p0;
reg   [63:0] grp_fu_392_p1;
reg   [63:0] grp_fu_396_p0;
reg   [63:0] grp_fu_396_p1;
reg   [63:0] grp_fu_400_p0;
reg   [63:0] grp_fu_400_p1;
reg   [63:0] grp_fu_404_p0;
reg   [63:0] grp_fu_404_p1;
reg   [63:0] grp_fu_408_p0;
reg   [63:0] grp_fu_408_p1;
reg   [63:0] grp_fu_412_p0;
reg   [63:0] grp_fu_412_p1;
wire   [5:0] p_shl4_fu_466_p3;
wire   [5:0] zext_ln81_1_fu_462_p1;
wire   [5:0] sub_ln85_fu_474_p2;
wire   [4:0] tmp_s_fu_487_p4;
wire   [5:0] or_ln7_fu_497_p3;
wire   [7:0] p_shl_fu_509_p3;
wire   [7:0] zext_ln83_fu_505_p1;
wire   [5:0] lshr_ln2_fu_523_p4;
wire   [7:0] add_ln85_fu_538_p2;
wire   [5:0] lshr_ln85_1_fu_543_p4;
wire   [7:0] add_ln85_1_fu_558_p2;
wire   [5:0] lshr_ln85_2_fu_563_p4;
wire   [7:0] empty_119_fu_578_p2;
wire   [5:0] lshr_ln85_3_fu_583_p4;
wire   [7:0] add_ln85_2_fu_599_p2;
wire   [5:0] lshr_ln85_4_fu_604_p4;
wire   [7:0] empty_120_fu_619_p2;
wire   [5:0] lshr_ln85_5_fu_624_p4;
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
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to20;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_100 = 7'd0;
#0 ap_done_reg = 1'b0;
end
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter19_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_100 <= 7'd0;
    end else if (((tmp_reg_750 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_100 <= add_ln82_fu_641_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_416 <= weights3_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_416 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_421 <= weights3_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_421 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_426 <= weights3_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_426 <= weights3_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_431 <= weights3_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_431 <= weights3_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_112_i_reg_988 <= grp_fu_3499_p_dout0;
        add11_1_1_i_reg_993 <= grp_fu_3503_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_2_i_reg_1036 <= grp_fu_3511_p_dout0;
        add11_224_i_reg_1016 <= grp_fu_3507_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_i2_reg_973 <= grp_fu_3495_p_dout0;
        add11_i2_reg_968 <= grp_fu_3491_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_2_1_i_reg_998 <= grp_fu_3499_p_dout0;
        add11_3_1_i_reg_1003 <= grp_fu_3503_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_2_2_i_reg_1051 <= grp_fu_3507_p_dout0;
        add11_3_2_i_reg_1056 <= grp_fu_3511_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_2_i2_reg_978 <= grp_fu_3491_p_dout0;
        add11_3_i2_reg_983 <= grp_fu_3495_p_dout0;
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
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        dactivations2_1_load_reg_1061 <= dactivations2_1_q0;
        dactivations2_2_load_reg_1066 <= dactivations2_2_q0;
        dactivations2_3_load_reg_1071 <= dactivations2_3_q0;
        dactivations2_load_reg_1046 <= dactivations2_q0;
        mul8_1_1_i_reg_928_pp0_iter5_reg <= mul8_1_1_i_reg_928;
        mul8_1_1_i_reg_928_pp0_iter6_reg <= mul8_1_1_i_reg_928_pp0_iter5_reg;
        mul8_1_1_i_reg_928_pp0_iter7_reg <= mul8_1_1_i_reg_928_pp0_iter6_reg;
        mul8_1_2_i_reg_933_pp0_iter10_reg <= mul8_1_2_i_reg_933_pp0_iter9_reg;
        mul8_1_2_i_reg_933_pp0_iter11_reg <= mul8_1_2_i_reg_933_pp0_iter10_reg;
        mul8_1_2_i_reg_933_pp0_iter5_reg <= mul8_1_2_i_reg_933;
        mul8_1_2_i_reg_933_pp0_iter6_reg <= mul8_1_2_i_reg_933_pp0_iter5_reg;
        mul8_1_2_i_reg_933_pp0_iter7_reg <= mul8_1_2_i_reg_933_pp0_iter6_reg;
        mul8_1_2_i_reg_933_pp0_iter8_reg <= mul8_1_2_i_reg_933_pp0_iter7_reg;
        mul8_1_2_i_reg_933_pp0_iter9_reg <= mul8_1_2_i_reg_933_pp0_iter8_reg;
        mul8_2_1_i_reg_943_pp0_iter5_reg <= mul8_2_1_i_reg_943;
        mul8_2_1_i_reg_943_pp0_iter6_reg <= mul8_2_1_i_reg_943_pp0_iter5_reg;
        mul8_2_1_i_reg_943_pp0_iter7_reg <= mul8_2_1_i_reg_943_pp0_iter6_reg;
        mul8_2_1_i_reg_943_pp0_iter8_reg <= mul8_2_1_i_reg_943_pp0_iter7_reg;
        mul8_2_2_i_reg_948_pp0_iter10_reg <= mul8_2_2_i_reg_948_pp0_iter9_reg;
        mul8_2_2_i_reg_948_pp0_iter11_reg <= mul8_2_2_i_reg_948_pp0_iter10_reg;
        mul8_2_2_i_reg_948_pp0_iter12_reg <= mul8_2_2_i_reg_948_pp0_iter11_reg;
        mul8_2_2_i_reg_948_pp0_iter5_reg <= mul8_2_2_i_reg_948;
        mul8_2_2_i_reg_948_pp0_iter6_reg <= mul8_2_2_i_reg_948_pp0_iter5_reg;
        mul8_2_2_i_reg_948_pp0_iter7_reg <= mul8_2_2_i_reg_948_pp0_iter6_reg;
        mul8_2_2_i_reg_948_pp0_iter8_reg <= mul8_2_2_i_reg_948_pp0_iter7_reg;
        mul8_2_2_i_reg_948_pp0_iter9_reg <= mul8_2_2_i_reg_948_pp0_iter8_reg;
        mul8_3_1_i_reg_958_pp0_iter5_reg <= mul8_3_1_i_reg_958;
        mul8_3_1_i_reg_958_pp0_iter6_reg <= mul8_3_1_i_reg_958_pp0_iter5_reg;
        mul8_3_1_i_reg_958_pp0_iter7_reg <= mul8_3_1_i_reg_958_pp0_iter6_reg;
        mul8_3_1_i_reg_958_pp0_iter8_reg <= mul8_3_1_i_reg_958_pp0_iter7_reg;
        mul8_3_2_i_reg_963_pp0_iter10_reg <= mul8_3_2_i_reg_963_pp0_iter9_reg;
        mul8_3_2_i_reg_963_pp0_iter11_reg <= mul8_3_2_i_reg_963_pp0_iter10_reg;
        mul8_3_2_i_reg_963_pp0_iter12_reg <= mul8_3_2_i_reg_963_pp0_iter11_reg;
        mul8_3_2_i_reg_963_pp0_iter5_reg <= mul8_3_2_i_reg_963;
        mul8_3_2_i_reg_963_pp0_iter6_reg <= mul8_3_2_i_reg_963_pp0_iter5_reg;
        mul8_3_2_i_reg_963_pp0_iter7_reg <= mul8_3_2_i_reg_963_pp0_iter6_reg;
        mul8_3_2_i_reg_963_pp0_iter8_reg <= mul8_3_2_i_reg_963_pp0_iter7_reg;
        mul8_3_2_i_reg_963_pp0_iter9_reg <= mul8_3_2_i_reg_963_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_774[7 : 1] <= empty_fu_517_p2[7 : 1];
        i_9_reg_745 <= ap_sig_allocacmp_i_9;
        lshr_ln_reg_754 <= {{ap_sig_allocacmp_i_9[5:2]}};
        lshr_ln_reg_754_pp0_iter10_reg <= lshr_ln_reg_754_pp0_iter9_reg;
        lshr_ln_reg_754_pp0_iter11_reg <= lshr_ln_reg_754_pp0_iter10_reg;
        lshr_ln_reg_754_pp0_iter12_reg <= lshr_ln_reg_754_pp0_iter11_reg;
        lshr_ln_reg_754_pp0_iter13_reg <= lshr_ln_reg_754_pp0_iter12_reg;
        lshr_ln_reg_754_pp0_iter14_reg <= lshr_ln_reg_754_pp0_iter13_reg;
        lshr_ln_reg_754_pp0_iter15_reg <= lshr_ln_reg_754_pp0_iter14_reg;
        lshr_ln_reg_754_pp0_iter1_reg <= lshr_ln_reg_754;
        lshr_ln_reg_754_pp0_iter2_reg <= lshr_ln_reg_754_pp0_iter1_reg;
        lshr_ln_reg_754_pp0_iter3_reg <= lshr_ln_reg_754_pp0_iter2_reg;
        lshr_ln_reg_754_pp0_iter4_reg <= lshr_ln_reg_754_pp0_iter3_reg;
        lshr_ln_reg_754_pp0_iter5_reg <= lshr_ln_reg_754_pp0_iter4_reg;
        lshr_ln_reg_754_pp0_iter6_reg <= lshr_ln_reg_754_pp0_iter5_reg;
        lshr_ln_reg_754_pp0_iter7_reg <= lshr_ln_reg_754_pp0_iter6_reg;
        lshr_ln_reg_754_pp0_iter8_reg <= lshr_ln_reg_754_pp0_iter7_reg;
        lshr_ln_reg_754_pp0_iter9_reg <= lshr_ln_reg_754_pp0_iter8_reg;
        mul8_111_i_reg_913_pp0_iter5_reg <= mul8_111_i_reg_913;
        mul8_111_i_reg_913_pp0_iter6_reg <= mul8_111_i_reg_913_pp0_iter5_reg;
        mul8_111_i_reg_913_pp0_iter7_reg <= mul8_111_i_reg_913_pp0_iter6_reg;
        mul8_111_i_reg_913_pp0_iter8_reg <= mul8_111_i_reg_913_pp0_iter7_reg;
        mul8_223_i_reg_918_pp0_iter10_reg <= mul8_223_i_reg_918_pp0_iter9_reg;
        mul8_223_i_reg_918_pp0_iter11_reg <= mul8_223_i_reg_918_pp0_iter10_reg;
        mul8_223_i_reg_918_pp0_iter12_reg <= mul8_223_i_reg_918_pp0_iter11_reg;
        mul8_223_i_reg_918_pp0_iter5_reg <= mul8_223_i_reg_918;
        mul8_223_i_reg_918_pp0_iter6_reg <= mul8_223_i_reg_918_pp0_iter5_reg;
        mul8_223_i_reg_918_pp0_iter7_reg <= mul8_223_i_reg_918_pp0_iter6_reg;
        mul8_223_i_reg_918_pp0_iter8_reg <= mul8_223_i_reg_918_pp0_iter7_reg;
        mul8_223_i_reg_918_pp0_iter9_reg <= mul8_223_i_reg_918_pp0_iter8_reg;
        tmp_reg_750 <= ap_sig_allocacmp_i_9[32'd6];
        zext_ln81_reg_1008[3 : 0] <= zext_ln81_fu_707_p1[3 : 0];
        zext_ln81_reg_1008_pp0_iter17_reg[3 : 0] <= zext_ln81_reg_1008[3 : 0];
        zext_ln81_reg_1008_pp0_iter18_reg[3 : 0] <= zext_ln81_reg_1008_pp0_iter17_reg[3 : 0];
        zext_ln81_reg_1008_pp0_iter19_reg[3 : 0] <= zext_ln81_reg_1008_pp0_iter18_reg[3 : 0];
        zext_ln81_reg_1008_pp0_iter20_reg[3 : 0] <= zext_ln81_reg_1008_pp0_iter19_reg[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul16_1_i_reg_1081 <= grp_fu_3539_p_dout0;
        mul16_2_i_reg_1086 <= grp_fu_3543_p_dout0;
        mul16_3_i_reg_1091 <= grp_fu_3547_p_dout0;
        mul16_i_reg_1076 <= grp_fu_3535_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_111_i_reg_913 <= grp_fu_3523_p_dout0;
        mul8_1_i2_reg_923 <= grp_fu_3531_p_dout0;
        mul8_223_i_reg_918 <= grp_fu_3527_p_dout0;
        mul8_i2_reg_908 <= grp_fu_2070_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_1_1_i_reg_928 <= grp_fu_2070_p_dout0;
        mul8_1_2_i_reg_933 <= grp_fu_3523_p_dout0;
        mul8_2_1_i_reg_943 <= grp_fu_3531_p_dout0;
        mul8_2_2_i_reg_948 <= grp_fu_3535_p_dout0;
        mul8_2_i2_reg_938 <= grp_fu_3527_p_dout0;
        mul8_3_1_i_reg_958 <= grp_fu_3543_p_dout0;
        mul8_3_2_i_reg_963 <= grp_fu_3547_p_dout0;
        mul8_3_i2_reg_953 <= grp_fu_3539_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_load_24_reg_848 <= weights3_0_q0;
        weights3_1_load_24_reg_853 <= weights3_1_q0;
        weights3_2_load_24_reg_858 <= weights3_2_q0;
        weights3_3_load_24_reg_863 <= weights3_3_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_750 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter19_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to20 = 1'b1;
    end else begin
        ap_idle_pp0_1to20 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_9 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_9 = i_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations2_1_ce0_local = 1'b1;
    end else begin
        dactivations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations2_2_ce0_local = 1'b1;
    end else begin
        dactivations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations2_3_ce0_local = 1'b1;
    end else begin
        dactivations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dactivations2_ce0_local = 1'b1;
    end else begin
        dactivations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_358_p0 = mul8_2_i2_reg_938;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_358_p0 = mul8_i2_reg_908;
    end else begin
        grp_fu_358_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_363_p0 = mul8_3_i2_reg_953;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_363_p0 = mul8_1_i2_reg_923;
    end else begin
        grp_fu_363_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_368_p0 = add11_2_i2_reg_978;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_368_p0 = add11_i2_reg_968;
    end else begin
        grp_fu_368_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_368_p1 = mul8_2_1_i_reg_943_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_368_p1 = mul8_111_i_reg_913_pp0_iter8_reg;
    end else begin
        grp_fu_368_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_372_p0 = add11_3_i2_reg_983;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_372_p0 = add11_1_i2_reg_973;
    end else begin
        grp_fu_372_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_372_p1 = mul8_3_1_i_reg_958_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_372_p1 = mul8_1_1_i_reg_928_pp0_iter7_reg;
    end else begin
        grp_fu_372_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_376_p0 = add11_2_1_i_reg_998;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_376_p0 = add11_112_i_reg_988;
    end else begin
        grp_fu_376_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_376_p1 = mul8_2_2_i_reg_948_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_376_p1 = mul8_223_i_reg_918_pp0_iter12_reg;
    end else begin
        grp_fu_376_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_380_p0 = add11_3_1_i_reg_1003;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_380_p0 = add11_1_1_i_reg_993;
    end else begin
        grp_fu_380_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_380_p1 = mul8_3_2_i_reg_963_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_380_p1 = mul8_1_2_i_reg_933_pp0_iter11_reg;
    end else begin
        grp_fu_380_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_384_p0 = p_reload85;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_384_p0 = p_reload86;
        end else begin
            grp_fu_384_p0 = 'bx;
        end
    end else begin
        grp_fu_384_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_384_p1 = bitcast_ln85_4_fu_671_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_384_p1 = bitcast_ln85_fu_651_p1;
        end else begin
            grp_fu_384_p1 = 'bx;
        end
    end else begin
        grp_fu_384_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_388_p0 = p_reload;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_388_p0 = p_reload85;
        end else begin
            grp_fu_388_p0 = 'bx;
        end
    end else begin
        grp_fu_388_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_388_p1 = bitcast_ln85_5_fu_676_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_388_p1 = bitcast_ln85_1_fu_656_p1;
        end else begin
            grp_fu_388_p1 = 'bx;
        end
    end else begin
        grp_fu_388_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_392_p0 = p_reload86;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_392_p0 = p_reload;
        end else begin
            grp_fu_392_p0 = 'bx;
        end
    end else begin
        grp_fu_392_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_392_p1 = bitcast_ln85_6_fu_681_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_392_p1 = bitcast_ln85_2_fu_661_p1;
        end else begin
            grp_fu_392_p1 = 'bx;
        end
    end else begin
        grp_fu_392_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_396_p0 = p_reload85;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_396_p0 = p_reload86;
        end else begin
            grp_fu_396_p0 = 'bx;
        end
    end else begin
        grp_fu_396_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_396_p1 = bitcast_ln85_7_fu_686_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_396_p1 = bitcast_ln85_3_fu_666_p1;
        end else begin
            grp_fu_396_p1 = 'bx;
        end
    end else begin
        grp_fu_396_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_400_p0 = add11_224_i_reg_1016;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_400_p0 = p_reload;
    end else begin
        grp_fu_400_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_400_p1 = dactivations2_load_reg_1046;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_400_p1 = bitcast_ln85_8_fu_691_p1;
    end else begin
        grp_fu_400_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_404_p0 = add11_1_2_i_reg_1036;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_404_p0 = p_reload86;
    end else begin
        grp_fu_404_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_404_p1 = dactivations2_1_load_reg_1061;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_404_p1 = bitcast_ln85_9_fu_695_p1;
    end else begin
        grp_fu_404_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_408_p0 = add11_2_2_i_reg_1051;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_408_p0 = p_reload85;
    end else begin
        grp_fu_408_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_408_p1 = dactivations2_2_load_reg_1066;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_408_p1 = bitcast_ln85_10_fu_699_p1;
    end else begin
        grp_fu_408_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_412_p0 = add11_3_2_i_reg_1056;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_412_p0 = p_reload;
    end else begin
        grp_fu_412_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_412_p1 = dactivations2_3_load_reg_1071;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_412_p1 = bitcast_ln85_11_fu_703_p1;
    end else begin
        grp_fu_412_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations2_1_ce0_local = 1'b1;
    end else begin
        oracle_activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations2_1_we0_local = 1'b1;
    end else begin
        oracle_activations2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations2_2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations2_2_we0_local = 1'b1;
    end else begin
        oracle_activations2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations2_3_ce0_local = 1'b1;
    end else begin
        oracle_activations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations2_3_we0_local = 1'b1;
    end else begin
        oracle_activations2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations2_we0_local = 1'b1;
    end else begin
        oracle_activations2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address0_local = zext_ln87_1_fu_614_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_0_address0_local = zext_ln85_fu_480_p1;
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
            weights3_1_address0_local = zext_ln85_4_fu_634_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_1_address0_local = zext_ln85_fu_480_p1;
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
            weights3_2_address0_local = zext_ln85_4_fu_634_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_2_address0_local = zext_ln85_fu_480_p1;
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
            weights3_3_address0_local = zext_ln85_4_fu_634_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_3_address0_local = zext_ln85_1_fu_533_p1;
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
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to20 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln82_fu_641_p2 = (i_9_reg_745 + 7'd4);
assign add_ln85_1_fu_558_p2 = (empty_reg_774 + 8'd2);
assign add_ln85_2_fu_599_p2 = (empty_reg_774 + 8'd5);
assign add_ln85_fu_538_p2 = (empty_reg_774 + 8'd1);
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
assign bitcast_ln85_10_fu_699_p1 = weights3_2_load_24_reg_858;
assign bitcast_ln85_11_fu_703_p1 = weights3_3_load_24_reg_863;
assign bitcast_ln85_1_fu_656_p1 = reg_421;
assign bitcast_ln85_2_fu_661_p1 = reg_426;
assign bitcast_ln85_3_fu_666_p1 = reg_431;
assign bitcast_ln85_4_fu_671_p1 = reg_416;
assign bitcast_ln85_5_fu_676_p1 = reg_421;
assign bitcast_ln85_6_fu_681_p1 = reg_426;
assign bitcast_ln85_7_fu_686_p1 = reg_431;
assign bitcast_ln85_8_fu_691_p1 = weights3_0_load_24_reg_848;
assign bitcast_ln85_9_fu_695_p1 = weights3_1_load_24_reg_853;
assign bitcast_ln85_fu_651_p1 = reg_416;
assign dactivations2_1_address0 = zext_ln81_fu_707_p1;
assign dactivations2_1_ce0 = dactivations2_1_ce0_local;
assign dactivations2_2_address0 = zext_ln81_fu_707_p1;
assign dactivations2_2_ce0 = dactivations2_2_ce0_local;
assign dactivations2_3_address0 = zext_ln81_fu_707_p1;
assign dactivations2_3_ce0 = dactivations2_3_ce0_local;
assign dactivations2_address0 = zext_ln81_fu_707_p1;
assign dactivations2_ce0 = dactivations2_ce0_local;
assign empty_119_fu_578_p2 = (empty_reg_774 + 8'd3);
assign empty_120_fu_619_p2 = (empty_reg_774 + 8'd6);
assign empty_fu_517_p2 = (p_shl_fu_509_p3 - zext_ln83_fu_505_p1);
assign grp_fu_2070_p_ce = 1'b1;
assign grp_fu_2070_p_din0 = grp_fu_384_p0;
assign grp_fu_2070_p_din1 = grp_fu_384_p1;
assign grp_fu_3491_p_ce = 1'b1;
assign grp_fu_3491_p_din0 = grp_fu_358_p0;
assign grp_fu_3491_p_din1 = 64'd0;
assign grp_fu_3491_p_opcode = 2'd0;
assign grp_fu_3495_p_ce = 1'b1;
assign grp_fu_3495_p_din0 = grp_fu_363_p0;
assign grp_fu_3495_p_din1 = 64'd0;
assign grp_fu_3495_p_opcode = 2'd0;
assign grp_fu_3499_p_ce = 1'b1;
assign grp_fu_3499_p_din0 = grp_fu_368_p0;
assign grp_fu_3499_p_din1 = grp_fu_368_p1;
assign grp_fu_3499_p_opcode = 2'd0;
assign grp_fu_3503_p_ce = 1'b1;
assign grp_fu_3503_p_din0 = grp_fu_372_p0;
assign grp_fu_3503_p_din1 = grp_fu_372_p1;
assign grp_fu_3503_p_opcode = 2'd0;
assign grp_fu_3507_p_ce = 1'b1;
assign grp_fu_3507_p_din0 = grp_fu_376_p0;
assign grp_fu_3507_p_din1 = grp_fu_376_p1;
assign grp_fu_3507_p_opcode = 2'd0;
assign grp_fu_3511_p_ce = 1'b1;
assign grp_fu_3511_p_din0 = grp_fu_380_p0;
assign grp_fu_3511_p_din1 = grp_fu_380_p1;
assign grp_fu_3511_p_opcode = 2'd0;
assign grp_fu_3523_p_ce = 1'b1;
assign grp_fu_3523_p_din0 = grp_fu_388_p0;
assign grp_fu_3523_p_din1 = grp_fu_388_p1;
assign grp_fu_3527_p_ce = 1'b1;
assign grp_fu_3527_p_din0 = grp_fu_392_p0;
assign grp_fu_3527_p_din1 = grp_fu_392_p1;
assign grp_fu_3531_p_ce = 1'b1;
assign grp_fu_3531_p_din0 = grp_fu_396_p0;
assign grp_fu_3531_p_din1 = grp_fu_396_p1;
assign grp_fu_3535_p_ce = 1'b1;
assign grp_fu_3535_p_din0 = grp_fu_400_p0;
assign grp_fu_3535_p_din1 = grp_fu_400_p1;
assign grp_fu_3539_p_ce = 1'b1;
assign grp_fu_3539_p_din0 = grp_fu_404_p0;
assign grp_fu_3539_p_din1 = grp_fu_404_p1;
assign grp_fu_3543_p_ce = 1'b1;
assign grp_fu_3543_p_din0 = grp_fu_408_p0;
assign grp_fu_3543_p_din1 = grp_fu_408_p1;
assign grp_fu_3547_p_ce = 1'b1;
assign grp_fu_3547_p_din0 = grp_fu_412_p0;
assign grp_fu_3547_p_din1 = grp_fu_412_p1;
assign lshr_ln2_fu_523_p4 = {{empty_fu_517_p2[7:2]}};
assign lshr_ln85_1_fu_543_p4 = {{add_ln85_fu_538_p2[7:2]}};
assign lshr_ln85_2_fu_563_p4 = {{add_ln85_1_fu_558_p2[7:2]}};
assign lshr_ln85_3_fu_583_p4 = {{empty_119_fu_578_p2[7:2]}};
assign lshr_ln85_4_fu_604_p4 = {{add_ln85_2_fu_599_p2[7:2]}};
assign lshr_ln85_5_fu_624_p4 = {{empty_120_fu_619_p2[7:2]}};
assign lshr_ln_fu_452_p4 = {{ap_sig_allocacmp_i_9[5:2]}};
assign or_ln7_fu_497_p3 = {{tmp_s_fu_487_p4}, {1'd1}};
assign oracle_activations2_1_address0 = zext_ln81_reg_1008_pp0_iter20_reg;
assign oracle_activations2_1_ce0 = oracle_activations2_1_ce0_local;
assign oracle_activations2_1_d0 = mul16_1_i_reg_1081;
assign oracle_activations2_1_we0 = oracle_activations2_1_we0_local;
assign oracle_activations2_2_address0 = zext_ln81_reg_1008_pp0_iter20_reg;
assign oracle_activations2_2_ce0 = oracle_activations2_2_ce0_local;
assign oracle_activations2_2_d0 = mul16_2_i_reg_1086;
assign oracle_activations2_2_we0 = oracle_activations2_2_we0_local;
assign oracle_activations2_3_address0 = zext_ln81_reg_1008_pp0_iter20_reg;
assign oracle_activations2_3_ce0 = oracle_activations2_3_ce0_local;
assign oracle_activations2_3_d0 = mul16_3_i_reg_1091;
assign oracle_activations2_3_we0 = oracle_activations2_3_we0_local;
assign oracle_activations2_address0 = zext_ln81_reg_1008_pp0_iter20_reg;
assign oracle_activations2_ce0 = oracle_activations2_ce0_local;
assign oracle_activations2_d0 = mul16_i_reg_1076;
assign oracle_activations2_we0 = oracle_activations2_we0_local;
assign p_shl4_fu_466_p3 = {{lshr_ln_fu_452_p4}, {2'd0}};
assign p_shl_fu_509_p3 = {{tmp_s_fu_487_p4}, {3'd4}};
assign sub_ln85_fu_474_p2 = (p_shl4_fu_466_p3 - zext_ln81_1_fu_462_p1);
assign tmp_s_fu_487_p4 = {{ap_sig_allocacmp_i_9[5:1]}};
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = zext_ln85_2_fu_553_p1;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = zext_ln87_fu_573_p1;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign weights3_2_address0 = weights3_2_address0_local;
assign weights3_2_address1 = zext_ln85_3_fu_593_p1;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_2_ce1 = weights3_2_ce1_local;
assign weights3_3_address0 = weights3_3_address0_local;
assign weights3_3_address1 = zext_ln85_3_fu_593_p1;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_3_ce1 = weights3_3_ce1_local;
assign zext_ln81_1_fu_462_p1 = lshr_ln_fu_452_p4;
assign zext_ln81_fu_707_p1 = lshr_ln_reg_754_pp0_iter15_reg;
assign zext_ln83_fu_505_p1 = or_ln7_fu_497_p3;
assign zext_ln85_1_fu_533_p1 = lshr_ln2_fu_523_p4;
assign zext_ln85_2_fu_553_p1 = lshr_ln85_1_fu_543_p4;
assign zext_ln85_3_fu_593_p1 = lshr_ln85_3_fu_583_p4;
assign zext_ln85_4_fu_634_p1 = lshr_ln85_5_fu_624_p4;
assign zext_ln85_fu_480_p1 = sub_ln85_fu_474_p2;
assign zext_ln87_1_fu_614_p1 = lshr_ln85_4_fu_604_p4;
assign zext_ln87_fu_573_p1 = lshr_ln85_2_fu_563_p4;
always @ (posedge ap_clk) begin
    empty_reg_774[0] <= 1'b1;
    zext_ln81_reg_1008[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1008_pp0_iter17_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1008_pp0_iter18_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1008_pp0_iter19_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_1008_pp0_iter20_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 