module backprop_get_oracle_activations2_62_63_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_q1,weights3_3_address0,weights3_3_ce0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_q1,output_differences_0_0_val,output_differences_0_1_val,output_differences_0_2_val,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_0_address1,oracle_activations_0_ce1,oracle_activations_0_we1,oracle_activations_0_d1,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,oracle_activations_2_address0,oracle_activations_2_ce0,oracle_activations_2_we0,oracle_activations_2_d0,oracle_activations_3_address0,oracle_activations_3_ce0,oracle_activations_3_we0,oracle_activations_3_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_0_address1,dactivations_0_ce1,dactivations_0_q1,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_1_address1,dactivations_1_ce1,dactivations_1_q1,dactivations_2_address0,dactivations_2_ce0,dactivations_2_q0,dactivations_2_address1,dactivations_2_ce1,dactivations_2_q1,dactivations_3_address0,dactivations_3_ce0,dactivations_3_q0,dactivations_3_address1,dactivations_3_ce1,dactivations_3_q1,grp_fu_3044_p_din0,grp_fu_3044_p_din1,grp_fu_3044_p_opcode,grp_fu_3044_p_dout0,grp_fu_3044_p_ce,grp_fu_3048_p_din0,grp_fu_3048_p_din1,grp_fu_3048_p_opcode,grp_fu_3048_p_dout0,grp_fu_3048_p_ce,grp_fu_3052_p_din0,grp_fu_3052_p_din1,grp_fu_3052_p_opcode,grp_fu_3052_p_dout0,grp_fu_3052_p_ce,grp_fu_3056_p_din0,grp_fu_3056_p_din1,grp_fu_3056_p_opcode,grp_fu_3056_p_dout0,grp_fu_3056_p_ce,grp_fu_3060_p_din0,grp_fu_3060_p_din1,grp_fu_3060_p_opcode,grp_fu_3060_p_dout0,grp_fu_3060_p_ce,grp_fu_3064_p_din0,grp_fu_3064_p_din1,grp_fu_3064_p_opcode,grp_fu_3064_p_dout0,grp_fu_3064_p_ce,grp_fu_3068_p_din0,grp_fu_3068_p_din1,grp_fu_3068_p_opcode,grp_fu_3068_p_dout0,grp_fu_3068_p_ce,grp_fu_3072_p_din0,grp_fu_3072_p_din1,grp_fu_3072_p_opcode,grp_fu_3072_p_dout0,grp_fu_3072_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 12'd1;
parameter    ap_ST_fsm_pp0_stage1 = 12'd2;
parameter    ap_ST_fsm_pp0_stage2 = 12'd4;
parameter    ap_ST_fsm_pp0_stage3 = 12'd8;
parameter    ap_ST_fsm_pp0_stage4 = 12'd16;
parameter    ap_ST_fsm_pp0_stage5 = 12'd32;
parameter    ap_ST_fsm_pp0_stage6 = 12'd64;
parameter    ap_ST_fsm_pp0_stage7 = 12'd128;
parameter    ap_ST_fsm_pp0_stage8 = 12'd256;
parameter    ap_ST_fsm_pp0_stage9 = 12'd512;
parameter    ap_ST_fsm_pp0_stage10 = 12'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 12'd2048;
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
output  [3:0] oracle_activations_0_address1;
output   oracle_activations_0_ce1;
output   oracle_activations_0_we1;
output  [63:0] oracle_activations_0_d1;
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
output  [63:0] grp_fu_3044_p_din0;
output  [63:0] grp_fu_3044_p_din1;
output  [0:0] grp_fu_3044_p_opcode;
input  [63:0] grp_fu_3044_p_dout0;
output   grp_fu_3044_p_ce;
output  [63:0] grp_fu_3048_p_din0;
output  [63:0] grp_fu_3048_p_din1;
output  [0:0] grp_fu_3048_p_opcode;
input  [63:0] grp_fu_3048_p_dout0;
output   grp_fu_3048_p_ce;
output  [63:0] grp_fu_3052_p_din0;
output  [63:0] grp_fu_3052_p_din1;
output  [0:0] grp_fu_3052_p_opcode;
input  [63:0] grp_fu_3052_p_dout0;
output   grp_fu_3052_p_ce;
output  [63:0] grp_fu_3056_p_din0;
output  [63:0] grp_fu_3056_p_din1;
output  [0:0] grp_fu_3056_p_opcode;
input  [63:0] grp_fu_3056_p_dout0;
output   grp_fu_3056_p_ce;
output  [63:0] grp_fu_3060_p_din0;
output  [63:0] grp_fu_3060_p_din1;
output  [0:0] grp_fu_3060_p_opcode;
input  [63:0] grp_fu_3060_p_dout0;
output   grp_fu_3060_p_ce;
output  [63:0] grp_fu_3064_p_din0;
output  [63:0] grp_fu_3064_p_din1;
output  [0:0] grp_fu_3064_p_opcode;
input  [63:0] grp_fu_3064_p_dout0;
output   grp_fu_3064_p_ce;
output  [63:0] grp_fu_3068_p_din0;
output  [63:0] grp_fu_3068_p_din1;
output  [1:0] grp_fu_3068_p_opcode;
input  [63:0] grp_fu_3068_p_dout0;
output   grp_fu_3068_p_ce;
output  [63:0] grp_fu_3072_p_din0;
output  [63:0] grp_fu_3072_p_din1;
output  [1:0] grp_fu_3072_p_opcode;
input  [63:0] grp_fu_3072_p_dout0;
output   grp_fu_3072_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] tmp_25_reg_3617;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1708;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1712;
reg   [63:0] reg_1716;
reg   [63:0] reg_1720;
reg   [63:0] reg_1724;
reg   [63:0] reg_1728;
reg   [63:0] reg_1732;
reg   [63:0] reg_1736;
wire   [63:0] grp_fu_1696_p2;
reg   [63:0] reg_1740;
wire   [63:0] grp_fu_1700_p2;
reg   [63:0] reg_1749;
wire   [63:0] grp_fu_1704_p2;
reg   [63:0] reg_1757;
reg   [6:0] i_11_reg_3607;
reg   [0:0] tmp_25_reg_3617_pp0_iter1_reg;
reg   [0:0] tmp_25_reg_3617_pp0_iter2_reg;
reg   [0:0] tmp_25_reg_3617_pp0_iter3_reg;
wire   [63:0] zext_ln81_fu_1796_p1;
reg   [63:0] zext_ln81_reg_3621;
reg   [63:0] zext_ln81_reg_3621_pp0_iter1_reg;
reg   [63:0] zext_ln81_reg_3621_pp0_iter2_reg;
reg   [63:0] zext_ln81_reg_3621_pp0_iter3_reg;
wire   [7:0] empty_fu_1855_p2;
reg   [7:0] empty_reg_3649;
wire   [63:0] zext_ln83_1_fu_1894_p1;
reg   [63:0] zext_ln83_1_reg_3715;
reg   [63:0] zext_ln83_1_reg_3715_pp0_iter1_reg;
reg   [63:0] zext_ln83_1_reg_3715_pp0_iter2_reg;
reg   [63:0] zext_ln83_1_reg_3715_pp0_iter3_reg;
wire   [4:0] or_ln4_fu_1912_p3;
reg   [4:0] or_ln4_reg_3723;
reg   [63:0] dactivations_0_load_reg_3768;
reg   [63:0] dactivations_0_load_reg_3768_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_reg_3768_pp0_iter2_reg;
wire   [63:0] zext_ln85_3_fu_1942_p1;
reg   [63:0] zext_ln85_3_reg_3773;
wire   [63:0] zext_ln87_2_fu_1962_p1;
reg   [63:0] zext_ln87_2_reg_3778;
wire   [5:0] zext_ln87_3_fu_1967_p1;
reg   [5:0] zext_ln87_3_reg_3784;
wire   [63:0] zext_ln85_6_fu_2005_p1;
reg   [63:0] zext_ln85_6_reg_3792;
wire   [63:0] zext_ln87_7_fu_2025_p1;
reg   [63:0] zext_ln87_7_reg_3797;
wire   [0:0] tmp_26_fu_2039_p3;
reg   [0:0] tmp_26_reg_3803;
wire   [63:0] zext_ln83_2_fu_2056_p1;
reg   [63:0] zext_ln83_2_reg_3808;
reg   [63:0] zext_ln83_2_reg_3808_pp0_iter1_reg;
reg   [63:0] zext_ln83_2_reg_3808_pp0_iter2_reg;
reg   [63:0] zext_ln83_2_reg_3808_pp0_iter3_reg;
wire   [63:0] zext_ln87_8_fu_2070_p1;
reg   [63:0] zext_ln87_8_reg_3816;
wire   [63:0] zext_ln83_3_fu_2103_p1;
reg   [63:0] zext_ln83_3_reg_3842;
reg   [63:0] zext_ln83_3_reg_3842_pp0_iter1_reg;
reg   [63:0] zext_ln83_3_reg_3842_pp0_iter2_reg;
reg   [63:0] zext_ln83_3_reg_3842_pp0_iter3_reg;
wire   [63:0] zext_ln87_12_fu_2117_p1;
reg   [63:0] zext_ln87_12_reg_3850;
reg   [63:0] dactivations_1_load_reg_3916;
reg   [63:0] dactivations_1_load_reg_3916_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_reg_3916_pp0_iter2_reg;
reg   [63:0] dactivations_2_load_reg_3921;
reg   [63:0] dactivations_2_load_reg_3921_pp0_iter1_reg;
reg   [63:0] dactivations_2_load_reg_3921_pp0_iter2_reg;
reg   [63:0] dactivations_3_load_reg_3926;
reg   [63:0] dactivations_3_load_reg_3926_pp0_iter1_reg;
reg   [63:0] dactivations_3_load_reg_3926_pp0_iter2_reg;
reg   [63:0] dactivations_0_load_1_reg_3931;
reg   [63:0] dactivations_0_load_1_reg_3931_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_1_reg_3931_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_1_reg_3936;
reg   [63:0] dactivations_1_load_1_reg_3936_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_1_reg_3936_pp0_iter2_reg;
reg   [63:0] dactivations_2_load_1_reg_3941;
reg   [63:0] dactivations_2_load_1_reg_3941_pp0_iter1_reg;
reg   [63:0] dactivations_2_load_1_reg_3941_pp0_iter2_reg;
reg   [63:0] dactivations_3_load_1_reg_3946;
reg   [63:0] dactivations_3_load_1_reg_3946_pp0_iter1_reg;
reg   [63:0] dactivations_3_load_1_reg_3946_pp0_iter2_reg;
wire   [63:0] bitcast_ln85_fu_2122_p1;
wire   [63:0] bitcast_ln85_1_fu_2127_p1;
wire   [63:0] bitcast_ln85_2_fu_2132_p1;
wire   [63:0] zext_ln85_9_fu_2152_p1;
reg   [63:0] zext_ln85_9_reg_3966;
wire   [63:0] zext_ln87_11_fu_2172_p1;
reg   [63:0] zext_ln87_11_reg_3971;
wire   [63:0] zext_ln85_12_fu_2212_p1;
reg   [63:0] zext_ln85_12_reg_3977;
wire   [63:0] zext_ln87_15_fu_2232_p1;
reg   [63:0] zext_ln87_15_reg_3982;
wire   [0:0] tmp_27_fu_2237_p3;
reg   [0:0] tmp_27_reg_3988;
wire   [63:0] zext_ln83_4_fu_2263_p1;
reg   [63:0] zext_ln83_4_reg_3994;
reg   [63:0] zext_ln83_4_reg_3994_pp0_iter1_reg;
reg   [63:0] zext_ln83_4_reg_3994_pp0_iter2_reg;
reg   [63:0] zext_ln83_4_reg_3994_pp0_iter3_reg;
wire   [63:0] zext_ln87_16_fu_2276_p1;
reg   [63:0] zext_ln87_16_reg_4002;
wire   [63:0] zext_ln83_5_fu_2320_p1;
reg   [63:0] zext_ln83_5_reg_4028;
reg   [63:0] zext_ln83_5_reg_4028_pp0_iter1_reg;
reg   [63:0] zext_ln83_5_reg_4028_pp0_iter2_reg;
reg   [63:0] zext_ln83_5_reg_4028_pp0_iter3_reg;
wire   [63:0] zext_ln87_20_fu_2333_p1;
reg   [63:0] zext_ln87_20_reg_4036;
wire   [63:0] bitcast_ln85_3_fu_2338_p1;
wire   [63:0] bitcast_ln85_12_fu_2343_p1;
wire   [63:0] bitcast_ln85_13_fu_2348_p1;
wire   [63:0] bitcast_ln85_14_fu_2353_p1;
reg   [63:0] dactivations_0_load_2_reg_4122;
reg   [63:0] dactivations_0_load_2_reg_4122_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_2_reg_4122_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_2_reg_4127;
reg   [63:0] dactivations_1_load_2_reg_4127_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_2_reg_4127_pp0_iter2_reg;
reg   [63:0] dactivations_2_load_2_reg_4132;
reg   [63:0] dactivations_2_load_2_reg_4132_pp0_iter1_reg;
reg   [63:0] dactivations_2_load_2_reg_4132_pp0_iter2_reg;
reg   [63:0] dactivations_3_load_2_reg_4137;
reg   [63:0] dactivations_3_load_2_reg_4137_pp0_iter1_reg;
reg   [63:0] dactivations_3_load_2_reg_4137_pp0_iter2_reg;
reg   [63:0] dactivations_0_load_3_reg_4142;
reg   [63:0] dactivations_0_load_3_reg_4142_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_3_reg_4142_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_3_reg_4147;
reg   [63:0] dactivations_1_load_3_reg_4147_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_3_reg_4147_pp0_iter2_reg;
reg   [63:0] dactivations_2_load_3_reg_4152;
reg   [63:0] dactivations_2_load_3_reg_4152_pp0_iter1_reg;
reg   [63:0] dactivations_2_load_3_reg_4152_pp0_iter2_reg;
reg   [63:0] dactivations_3_load_3_reg_4157;
reg   [63:0] dactivations_3_load_3_reg_4157_pp0_iter1_reg;
reg   [63:0] dactivations_3_load_3_reg_4157_pp0_iter2_reg;
wire   [63:0] zext_ln85_15_fu_2373_p1;
reg   [63:0] zext_ln85_15_reg_4162;
wire   [63:0] zext_ln87_19_fu_2393_p1;
reg   [63:0] zext_ln87_19_reg_4167;
wire   [63:0] zext_ln85_18_fu_2433_p1;
reg   [63:0] zext_ln85_18_reg_4173;
wire   [63:0] zext_ln87_23_fu_2453_p1;
reg   [63:0] zext_ln87_23_reg_4178;
wire   [63:0] zext_ln83_6_fu_2466_p1;
reg   [63:0] zext_ln83_6_reg_4184;
reg   [63:0] zext_ln83_6_reg_4184_pp0_iter1_reg;
reg   [63:0] zext_ln83_6_reg_4184_pp0_iter2_reg;
reg   [63:0] zext_ln83_6_reg_4184_pp0_iter3_reg;
wire   [63:0] zext_ln87_24_fu_2479_p1;
reg   [63:0] zext_ln87_24_reg_4192;
wire   [63:0] zext_ln83_7_fu_2511_p1;
reg   [63:0] zext_ln83_7_reg_4218;
reg   [63:0] zext_ln83_7_reg_4218_pp0_iter1_reg;
reg   [63:0] zext_ln83_7_reg_4218_pp0_iter2_reg;
reg   [63:0] zext_ln83_7_reg_4218_pp0_iter3_reg;
wire   [63:0] zext_ln87_28_fu_2524_p1;
reg   [63:0] zext_ln87_28_reg_4226;
wire   [63:0] bitcast_ln85_6_fu_2529_p1;
wire   [63:0] bitcast_ln85_9_fu_2534_p1;
wire   [63:0] bitcast_ln85_15_fu_2539_p1;
wire   [63:0] bitcast_ln85_18_fu_2544_p1;
wire   [63:0] bitcast_ln85_21_fu_2549_p1;
wire   [63:0] bitcast_ln85_24_fu_2554_p1;
wire   [63:0] bitcast_ln85_27_fu_2559_p1;
wire   [63:0] bitcast_ln85_36_fu_2564_p1;
reg   [63:0] dactivations_0_load_4_reg_4332;
reg   [63:0] dactivations_0_load_4_reg_4332_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_4_reg_4332_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_4_reg_4337;
reg   [63:0] dactivations_1_load_4_reg_4337_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_4_reg_4337_pp0_iter2_reg;
reg   [63:0] dactivations_2_load_4_reg_4342;
reg   [63:0] dactivations_2_load_4_reg_4342_pp0_iter1_reg;
reg   [63:0] dactivations_2_load_4_reg_4342_pp0_iter2_reg;
reg   [63:0] dactivations_3_load_4_reg_4347;
reg   [63:0] dactivations_3_load_4_reg_4347_pp0_iter1_reg;
reg   [63:0] dactivations_3_load_4_reg_4347_pp0_iter2_reg;
reg   [63:0] dactivations_0_load_5_reg_4352;
reg   [63:0] dactivations_0_load_5_reg_4352_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_5_reg_4352_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_5_reg_4357;
reg   [63:0] dactivations_1_load_5_reg_4357_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_5_reg_4357_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_5_reg_4357_pp0_iter3_reg;
reg   [63:0] dactivations_2_load_5_reg_4362;
reg   [63:0] dactivations_2_load_5_reg_4362_pp0_iter1_reg;
reg   [63:0] dactivations_2_load_5_reg_4362_pp0_iter2_reg;
reg   [63:0] dactivations_2_load_5_reg_4362_pp0_iter3_reg;
reg   [63:0] dactivations_3_load_5_reg_4367;
reg   [63:0] dactivations_3_load_5_reg_4367_pp0_iter1_reg;
reg   [63:0] dactivations_3_load_5_reg_4367_pp0_iter2_reg;
reg   [63:0] dactivations_3_load_5_reg_4367_pp0_iter3_reg;
wire   [63:0] zext_ln85_21_fu_2624_p1;
reg   [63:0] zext_ln85_21_reg_4372;
wire   [63:0] zext_ln87_27_fu_2644_p1;
reg   [63:0] zext_ln87_27_reg_4377;
wire   [63:0] zext_ln85_24_fu_2684_p1;
reg   [63:0] zext_ln85_24_reg_4383;
wire   [63:0] zext_ln85_25_fu_2704_p1;
reg   [63:0] zext_ln85_25_reg_4388;
wire   [63:0] bitcast_ln85_30_fu_2709_p1;
wire   [63:0] bitcast_ln85_33_fu_2714_p1;
wire   [63:0] bitcast_ln85_39_fu_2719_p1;
wire   [63:0] bitcast_ln85_42_fu_2724_p1;
wire   [63:0] bitcast_ln85_45_fu_2729_p1;
wire   [63:0] bitcast_ln85_48_fu_2734_p1;
wire   [63:0] bitcast_ln85_51_fu_2739_p1;
wire   [63:0] bitcast_ln85_60_fu_2744_p1;
reg   [63:0] dactivations_0_load_6_reg_4474;
reg   [63:0] dactivations_0_load_6_reg_4474_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_6_reg_4474_pp0_iter2_reg;
reg   [63:0] dactivations_0_load_6_reg_4474_pp0_iter3_reg;
reg   [63:0] dactivations_1_load_6_reg_4479;
reg   [63:0] dactivations_1_load_6_reg_4479_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_6_reg_4479_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_6_reg_4479_pp0_iter3_reg;
reg   [63:0] dactivations_2_load_6_reg_4484;
reg   [63:0] dactivations_2_load_6_reg_4484_pp0_iter1_reg;
reg   [63:0] dactivations_2_load_6_reg_4484_pp0_iter2_reg;
reg   [63:0] dactivations_2_load_6_reg_4484_pp0_iter3_reg;
reg   [63:0] dactivations_3_load_6_reg_4489;
reg   [63:0] dactivations_3_load_6_reg_4489_pp0_iter1_reg;
reg   [63:0] dactivations_3_load_6_reg_4489_pp0_iter2_reg;
reg   [63:0] dactivations_3_load_6_reg_4489_pp0_iter3_reg;
reg   [63:0] dactivations_0_load_7_reg_4494;
reg   [63:0] dactivations_0_load_7_reg_4494_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_7_reg_4494_pp0_iter2_reg;
reg   [63:0] dactivations_0_load_7_reg_4494_pp0_iter3_reg;
reg   [63:0] dactivations_1_load_7_reg_4499;
reg   [63:0] dactivations_1_load_7_reg_4499_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_7_reg_4499_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_7_reg_4499_pp0_iter3_reg;
reg   [63:0] dactivations_2_load_7_reg_4504;
reg   [63:0] dactivations_2_load_7_reg_4504_pp0_iter1_reg;
reg   [63:0] dactivations_2_load_7_reg_4504_pp0_iter2_reg;
reg   [63:0] dactivations_2_load_7_reg_4504_pp0_iter3_reg;
reg   [63:0] dactivations_3_load_7_reg_4509;
reg   [63:0] dactivations_3_load_7_reg_4509_pp0_iter1_reg;
reg   [63:0] dactivations_3_load_7_reg_4509_pp0_iter2_reg;
reg   [63:0] dactivations_3_load_7_reg_4509_pp0_iter3_reg;
wire   [63:0] bitcast_ln85_54_fu_2789_p1;
wire   [63:0] bitcast_ln85_57_fu_2794_p1;
wire   [63:0] bitcast_ln85_63_fu_2799_p1;
wire   [63:0] bitcast_ln85_66_fu_2804_p1;
wire   [63:0] bitcast_ln85_69_fu_2809_p1;
wire   [63:0] bitcast_ln85_72_fu_2814_p1;
wire   [63:0] bitcast_ln85_75_fu_2819_p1;
wire   [63:0] bitcast_ln85_84_fu_2824_p1;
wire   [63:0] bitcast_ln85_4_fu_2869_p1;
wire   [63:0] bitcast_ln85_7_fu_2874_p1;
wire   [63:0] bitcast_ln85_16_fu_2879_p1;
wire   [63:0] bitcast_ln85_78_fu_2884_p1;
wire   [63:0] bitcast_ln85_81_fu_2889_p1;
wire   [63:0] bitcast_ln85_87_fu_2894_p1;
wire   [63:0] bitcast_ln85_90_fu_2899_p1;
wire   [63:0] bitcast_ln85_93_fu_2904_p1;
wire   [63:0] bitcast_ln85_10_fu_2949_p1;
wire   [63:0] bitcast_ln85_19_fu_2954_p1;
wire   [63:0] bitcast_ln85_22_fu_2959_p1;
wire   [63:0] bitcast_ln85_25_fu_2964_p1;
wire   [63:0] bitcast_ln85_28_fu_2969_p1;
wire   [63:0] bitcast_ln85_31_fu_2974_p1;
wire   [63:0] bitcast_ln85_37_fu_2979_p1;
wire   [63:0] bitcast_ln85_40_fu_2984_p1;
wire   [63:0] grp_fu_1664_p2;
reg   [63:0] mul8_reg_4754;
wire   [63:0] grp_fu_1668_p2;
reg   [63:0] mul8_s_reg_4759;
wire   [63:0] grp_fu_1672_p2;
reg   [63:0] mul8_43_reg_4764;
reg   [63:0] mul8_43_reg_4764_pp0_iter1_reg;
wire   [63:0] grp_fu_1676_p2;
reg   [63:0] mul8_1_reg_4769;
wire   [63:0] grp_fu_1680_p2;
reg   [63:0] mul8_4_reg_4789;
wire   [63:0] grp_fu_1684_p2;
reg   [63:0] mul8_4_1_reg_4794;
wire   [63:0] grp_fu_1688_p2;
reg   [63:0] mul8_4_2_reg_4799;
reg   [63:0] mul8_4_2_reg_4799_pp0_iter1_reg;
wire   [63:0] bitcast_ln85_34_fu_3069_p1;
wire   [63:0] bitcast_ln85_43_fu_3074_p1;
wire   [63:0] bitcast_ln85_46_fu_3079_p1;
wire   [63:0] bitcast_ln85_49_fu_3084_p1;
wire   [63:0] bitcast_ln85_52_fu_3089_p1;
wire   [63:0] bitcast_ln85_55_fu_3094_p1;
wire   [63:0] bitcast_ln85_61_fu_3099_p1;
wire   [63:0] bitcast_ln85_64_fu_3104_p1;
reg   [63:0] mul8_2_reg_4869;
reg   [63:0] mul8_3_reg_4874;
reg   [63:0] mul8_5_reg_4879;
reg   [63:0] mul8_6_reg_4884;
reg   [63:0] mul8_7_reg_4889;
reg   [63:0] mul8_8_reg_4899;
reg   [63:0] mul8_9_reg_4909;
wire   [63:0] grp_fu_1692_p2;
reg   [63:0] mul8_12_reg_4929;
wire   [63:0] bitcast_ln85_58_fu_3189_p1;
wire   [63:0] bitcast_ln85_67_fu_3194_p1;
wire   [63:0] bitcast_ln85_70_fu_3199_p1;
wire   [63:0] bitcast_ln85_73_fu_3204_p1;
wire   [63:0] bitcast_ln85_76_fu_3209_p1;
wire   [63:0] bitcast_ln85_79_fu_3214_p1;
wire   [63:0] bitcast_ln85_85_fu_3219_p1;
wire   [63:0] bitcast_ln85_88_fu_3224_p1;
wire   [63:0] bitcast_ln85_5_fu_3309_p1;
wire   [63:0] bitcast_ln85_8_fu_3314_p1;
wire   [63:0] bitcast_ln85_11_fu_3319_p1;
wire   [63:0] bitcast_ln85_17_fu_3324_p1;
wire   [63:0] bitcast_ln85_20_fu_3329_p1;
reg   [63:0] mul8_10_reg_5014;
reg   [63:0] mul8_11_reg_5019;
reg   [63:0] mul8_13_reg_5024;
reg   [63:0] mul8_14_reg_5029;
reg   [63:0] mul8_15_reg_5034;
reg   [63:0] mul8_16_reg_5044;
reg   [63:0] mul8_17_reg_5054;
reg   [63:0] mul8_20_reg_5074;
wire   [63:0] bitcast_ln85_82_fu_3334_p1;
wire   [63:0] bitcast_ln85_91_fu_3339_p1;
wire   [63:0] bitcast_ln85_94_fu_3344_p1;
wire   [63:0] bitcast_ln85_23_fu_3429_p1;
wire   [63:0] bitcast_ln85_26_fu_3434_p1;
wire   [63:0] bitcast_ln85_29_fu_3439_p1;
wire   [63:0] bitcast_ln85_32_fu_3444_p1;
wire   [63:0] bitcast_ln85_35_fu_3449_p1;
wire   [63:0] bitcast_ln85_38_fu_3454_p1;
wire   [63:0] bitcast_ln85_41_fu_3459_p1;
wire   [63:0] bitcast_ln85_44_fu_3464_p1;
reg   [63:0] mul8_18_reg_5149;
reg   [63:0] mul8_19_reg_5154;
reg   [63:0] mul8_21_reg_5159;
reg   [63:0] mul8_22_reg_5164;
reg   [63:0] mul8_23_reg_5169;
reg   [63:0] mul8_24_reg_5179;
reg   [63:0] mul8_25_reg_5189;
reg   [63:0] mul8_28_reg_5209;
reg   [63:0] mul8_1_1_reg_5229;
reg   [63:0] mul8_2_1_reg_5234;
reg   [63:0] mul8_5_1_reg_5239;
wire   [63:0] bitcast_ln85_47_fu_3479_p1;
wire   [63:0] bitcast_ln85_50_fu_3484_p1;
wire   [63:0] bitcast_ln85_53_fu_3489_p1;
wire   [63:0] bitcast_ln85_56_fu_3494_p1;
wire   [63:0] bitcast_ln85_59_fu_3499_p1;
wire   [63:0] bitcast_ln85_62_fu_3504_p1;
wire   [63:0] bitcast_ln85_65_fu_3509_p1;
wire   [63:0] bitcast_ln85_68_fu_3514_p1;
reg   [63:0] mul8_26_reg_5284;
reg   [63:0] mul8_27_reg_5289;
reg   [63:0] mul8_29_reg_5294;
reg   [63:0] mul8_30_reg_5299;
reg   [63:0] mul8_31_reg_5304;
reg   [63:0] mul8_3_1_reg_5314;
reg   [63:0] mul8_6_1_reg_5319;
reg   [63:0] mul8_7_1_reg_5324;
reg   [63:0] mul8_8_1_reg_5329;
reg   [63:0] mul8_9_1_reg_5334;
reg   [63:0] mul8_10_1_reg_5339;
reg   [63:0] mul8_12_1_reg_5344;
reg   [63:0] mul8_13_1_reg_5349;
wire   [63:0] bitcast_ln85_71_fu_3519_p1;
wire   [63:0] bitcast_ln85_74_fu_3524_p1;
wire   [63:0] bitcast_ln85_77_fu_3529_p1;
wire   [63:0] bitcast_ln85_80_fu_3534_p1;
wire   [63:0] bitcast_ln85_83_fu_3539_p1;
wire   [63:0] bitcast_ln85_86_fu_3544_p1;
wire   [63:0] bitcast_ln85_89_fu_3549_p1;
wire   [63:0] bitcast_ln85_92_fu_3554_p1;
reg   [63:0] mul8_11_1_reg_5394;
reg   [63:0] mul8_14_1_reg_5399;
reg   [63:0] mul8_15_1_reg_5404;
reg   [63:0] mul8_16_1_reg_5409;
reg   [63:0] mul8_17_1_reg_5414;
reg   [63:0] mul8_18_1_reg_5419;
reg   [63:0] mul8_20_1_reg_5424;
reg   [63:0] mul8_21_1_reg_5429;
wire   [63:0] bitcast_ln85_95_fu_3559_p1;
reg   [63:0] mul8_19_1_reg_5439;
reg   [63:0] mul8_22_1_reg_5444;
reg   [63:0] mul8_23_1_reg_5449;
reg   [63:0] mul8_24_1_reg_5454;
reg   [63:0] mul8_25_1_reg_5459;
reg   [63:0] mul8_26_1_reg_5464;
reg   [63:0] mul8_28_1_reg_5469;
reg   [63:0] mul8_29_1_reg_5474;
reg   [63:0] add_reg_5479;
reg   [63:0] add11_1_reg_5484;
reg   [63:0] mul8_1_2_reg_5489;
reg   [63:0] mul8_2_2_reg_5494;
reg   [63:0] mul8_3_2_reg_5499;
reg   [63:0] add11_4_reg_5504;
reg   [63:0] mul8_5_2_reg_5509;
reg   [63:0] mul8_6_2_reg_5514;
reg   [63:0] mul8_27_1_reg_5519;
reg   [63:0] mul8_30_1_reg_5524;
reg   [63:0] mul8_31_1_reg_5529;
reg   [63:0] add11_2_reg_5534;
reg   [63:0] add11_3_reg_5539;
reg   [63:0] add11_5_reg_5544;
reg   [63:0] add11_6_reg_5549;
reg   [63:0] add11_7_reg_5554;
reg   [63:0] mul8_7_2_reg_5559;
reg   [63:0] add11_8_reg_5564;
reg   [63:0] mul8_8_2_reg_5569;
reg   [63:0] add11_9_reg_5574;
reg   [63:0] mul8_9_2_reg_5579;
reg   [63:0] mul8_10_2_reg_5584;
reg   [63:0] mul8_11_2_reg_5589;
reg   [63:0] add11_12_reg_5594;
reg   [63:0] mul8_12_2_reg_5599;
reg   [63:0] mul8_13_2_reg_5604;
reg   [63:0] mul8_14_2_reg_5609;
reg   [63:0] add11_10_reg_5614;
reg   [63:0] add11_11_reg_5619;
reg   [63:0] add11_13_reg_5624;
reg   [63:0] add11_14_reg_5629;
reg   [63:0] add11_15_reg_5634;
reg   [63:0] mul8_15_2_reg_5639;
reg   [63:0] add11_16_reg_5644;
reg   [63:0] mul8_16_2_reg_5649;
reg   [63:0] add11_17_reg_5654;
reg   [63:0] mul8_17_2_reg_5659;
reg   [63:0] mul8_18_2_reg_5664;
reg   [63:0] mul8_19_2_reg_5669;
reg   [63:0] add11_20_reg_5674;
reg   [63:0] mul8_20_2_reg_5679;
reg   [63:0] mul8_21_2_reg_5684;
reg   [63:0] mul8_22_2_reg_5689;
reg   [63:0] add11_18_reg_5694;
reg   [63:0] add11_19_reg_5699;
reg   [63:0] add11_21_reg_5704;
reg   [63:0] add11_22_reg_5709;
reg   [63:0] add11_23_reg_5714;
reg   [63:0] mul8_23_2_reg_5719;
reg   [63:0] add11_24_reg_5724;
reg   [63:0] mul8_24_2_reg_5729;
reg   [63:0] add11_25_reg_5734;
reg   [63:0] mul8_25_2_reg_5739;
reg   [63:0] mul8_26_2_reg_5744;
reg   [63:0] mul8_27_2_reg_5749;
reg   [63:0] add11_28_reg_5754;
reg   [63:0] mul8_28_2_reg_5759;
reg   [63:0] mul8_29_2_reg_5764;
reg   [63:0] mul8_30_2_reg_5769;
reg   [63:0] add11_26_reg_5774;
reg   [63:0] add11_27_reg_5779;
reg   [63:0] add11_29_reg_5784;
reg   [63:0] add11_30_reg_5789;
reg   [63:0] add11_31_reg_5794;
reg   [63:0] mul8_31_2_reg_5799;
reg   [63:0] add11_s_reg_5804;
reg   [63:0] add11_1_1_reg_5809;
reg   [63:0] add11_4_1_reg_5814;
reg   [63:0] add11_2_1_reg_5819;
reg   [63:0] add11_3_1_reg_5824;
reg   [63:0] add11_5_1_reg_5829;
reg   [63:0] add11_6_1_reg_5834;
reg   [63:0] add11_7_1_reg_5839;
reg   [63:0] add11_8_1_reg_5844;
reg   [63:0] add11_9_1_reg_5849;
reg   [63:0] add11_12_1_reg_5854;
reg   [63:0] add11_10_1_reg_5859;
reg   [63:0] add11_11_1_reg_5864;
reg   [63:0] add11_13_1_reg_5869;
reg   [63:0] add11_14_1_reg_5874;
reg   [63:0] add11_15_1_reg_5879;
reg   [63:0] add11_16_1_reg_5884;
reg   [63:0] add11_17_1_reg_5889;
reg   [63:0] add11_20_1_reg_5894;
reg   [63:0] add11_18_1_reg_5899;
reg   [63:0] add11_19_1_reg_5904;
reg   [63:0] add11_21_1_reg_5909;
reg   [63:0] add11_22_1_reg_5914;
reg   [63:0] add11_23_1_reg_5919;
reg   [63:0] add11_24_1_reg_5924;
reg   [63:0] add11_25_1_reg_5929;
reg   [63:0] add11_28_1_reg_5934;
reg   [63:0] add11_26_1_reg_5939;
reg   [63:0] add11_27_1_reg_5944;
reg   [63:0] add11_29_1_reg_5949;
reg   [63:0] add11_30_1_reg_5954;
reg   [63:0] add11_31_1_reg_5959;
reg   [63:0] add11_43_reg_5964;
reg   [63:0] add11_1_2_reg_5969;
reg   [63:0] add11_4_2_reg_5974;
reg   [63:0] add11_2_2_reg_5979;
reg   [63:0] add11_3_2_reg_5984;
reg   [63:0] add11_5_2_reg_5989;
reg   [63:0] add11_6_2_reg_5994;
reg   [63:0] add11_7_2_reg_5999;
reg   [63:0] add11_8_2_reg_6004;
reg   [63:0] add11_9_2_reg_6009;
reg   [63:0] add11_12_2_reg_6014;
reg   [63:0] add11_10_2_reg_6019;
reg   [63:0] add11_11_2_reg_6024;
reg   [63:0] add11_13_2_reg_6029;
reg   [63:0] add11_14_2_reg_6034;
reg   [63:0] add11_15_2_reg_6039;
reg   [63:0] add11_16_2_reg_6044;
reg   [63:0] add11_17_2_reg_6049;
reg   [63:0] add11_20_2_reg_6054;
reg   [63:0] add11_18_2_reg_6059;
reg   [63:0] add11_19_2_reg_6064;
reg   [63:0] add11_21_2_reg_6069;
reg   [63:0] add11_22_2_reg_6074;
reg   [63:0] add11_23_2_reg_6079;
reg   [63:0] add11_24_2_reg_6084;
reg   [63:0] add11_25_2_reg_6089;
reg   [63:0] add11_28_2_reg_6094;
reg   [63:0] add11_26_2_reg_6099;
reg   [63:0] add11_27_2_reg_6104;
reg   [63:0] add11_29_2_reg_6109;
reg   [63:0] add11_30_2_reg_6114;
reg   [63:0] add11_31_2_reg_6119;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln85_fu_1818_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln85_1_fu_1871_p1;
wire   [63:0] zext_ln87_4_fu_1920_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln85_4_fu_1985_p1;
wire   [63:0] zext_ln85_7_fu_2090_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln85_10_fu_2192_p1;
wire   [63:0] zext_ln85_13_fu_2296_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln85_16_fu_2413_p1;
wire   [63:0] zext_ln85_19_fu_2499_p1;
wire   [63:0] zext_ln85_2_fu_2584_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln85_5_fu_2604_p1;
wire   [63:0] zext_ln85_22_fu_2664_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln85_8_fu_2764_p1;
wire   [63:0] zext_ln85_11_fu_2784_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln85_14_fu_2844_p1;
wire   [63:0] zext_ln85_17_fu_2864_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln85_20_fu_2924_p1;
wire   [63:0] zext_ln85_23_fu_2944_p1;
wire   [63:0] zext_ln87_fu_3004_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln87_1_fu_3024_p1;
wire   [63:0] zext_ln87_5_fu_3044_p1;
wire   [63:0] zext_ln87_6_fu_3064_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln87_9_fu_3124_p1;
wire   [63:0] zext_ln87_10_fu_3144_p1;
wire   [63:0] zext_ln87_13_fu_3164_p1;
wire   [63:0] zext_ln87_14_fu_3184_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln87_17_fu_3244_p1;
wire   [63:0] zext_ln87_18_fu_3264_p1;
wire   [63:0] zext_ln87_21_fu_3284_p1;
wire   [63:0] zext_ln87_22_fu_3304_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln87_25_fu_3364_p1;
wire   [63:0] zext_ln87_26_fu_3384_p1;
wire   [63:0] zext_ln87_29_fu_3404_p1;
wire   [63:0] zext_ln87_30_fu_3424_p1;
reg   [6:0] i_fu_226;
wire   [6:0] add_ln82_fu_3469_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_11;
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
reg    dactivations_0_ce1_local;
reg   [3:0] dactivations_0_address1_local;
reg    dactivations_0_ce0_local;
reg   [3:0] dactivations_0_address0_local;
reg    weights3_3_ce1_local;
reg   [5:0] weights3_3_address1_local;
reg    weights3_3_ce0_local;
reg   [5:0] weights3_3_address0_local;
reg    dactivations_1_ce1_local;
reg   [3:0] dactivations_1_address1_local;
reg    dactivations_1_ce0_local;
reg   [3:0] dactivations_1_address0_local;
reg    dactivations_2_ce1_local;
reg   [3:0] dactivations_2_address1_local;
reg    dactivations_2_ce0_local;
reg   [3:0] dactivations_2_address0_local;
reg    dactivations_3_ce1_local;
reg   [3:0] dactivations_3_address1_local;
reg    dactivations_3_ce0_local;
reg   [3:0] dactivations_3_address0_local;
reg    oracle_activations_0_we1_local;
reg   [63:0] oracle_activations_0_d1_local;
reg    oracle_activations_0_ce1_local;
reg   [3:0] oracle_activations_0_address1_local;
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
reg   [63:0] grp_fu_1624_p0;
reg   [63:0] grp_fu_1624_p1;
reg   [63:0] grp_fu_1629_p0;
reg   [63:0] grp_fu_1629_p1;
reg   [63:0] grp_fu_1634_p0;
reg   [63:0] grp_fu_1634_p1;
reg   [63:0] grp_fu_1639_p0;
reg   [63:0] grp_fu_1639_p1;
reg   [63:0] grp_fu_1644_p0;
reg   [63:0] grp_fu_1644_p1;
reg   [63:0] grp_fu_1649_p0;
reg   [63:0] grp_fu_1649_p1;
reg   [63:0] grp_fu_1654_p0;
reg   [63:0] grp_fu_1654_p1;
reg   [63:0] grp_fu_1659_p0;
reg   [63:0] grp_fu_1659_p1;
reg   [63:0] grp_fu_1664_p0;
reg   [63:0] grp_fu_1664_p1;
reg   [63:0] grp_fu_1668_p0;
reg   [63:0] grp_fu_1668_p1;
reg   [63:0] grp_fu_1672_p0;
reg   [63:0] grp_fu_1672_p1;
reg   [63:0] grp_fu_1676_p0;
reg   [63:0] grp_fu_1676_p1;
reg   [63:0] grp_fu_1680_p0;
reg   [63:0] grp_fu_1680_p1;
reg   [63:0] grp_fu_1684_p0;
reg   [63:0] grp_fu_1684_p1;
reg   [63:0] grp_fu_1688_p0;
reg   [63:0] grp_fu_1688_p1;
reg   [63:0] grp_fu_1692_p0;
reg   [63:0] grp_fu_1692_p1;
reg   [63:0] grp_fu_1696_p0;
reg   [63:0] grp_fu_1696_p1;
reg   [63:0] grp_fu_1700_p0;
reg   [63:0] grp_fu_1700_p1;
reg   [63:0] grp_fu_1704_p0;
reg   [63:0] grp_fu_1704_p1;
wire   [3:0] lshr_ln_fu_1782_p4;
wire   [5:0] p_shl5_fu_1804_p3;
wire   [5:0] zext_ln81_1_fu_1792_p1;
wire   [5:0] sub_ln85_fu_1812_p2;
wire   [4:0] tmp_fu_1825_p4;
wire   [5:0] or_ln_fu_1835_p3;
wire   [7:0] p_shl_fu_1847_p3;
wire   [7:0] zext_ln83_fu_1843_p1;
wire   [5:0] lshr_ln1_fu_1861_p4;
wire   [2:0] tmp_s_fu_1876_p4;
wire   [3:0] or_ln3_fu_1886_p3;
wire   [2:0] tmp_38_fu_1902_p4;
wire   [7:0] empty_114_fu_1927_p2;
wire   [5:0] lshr_ln85_3_fu_1932_p4;
wire   [7:0] empty_115_fu_1947_p2;
wire   [5:0] lshr_ln85_5_fu_1952_p4;
wire   [7:0] empty_116_fu_1970_p2;
wire   [5:0] lshr_ln85_6_fu_1975_p4;
wire   [7:0] empty_117_fu_1990_p2;
wire   [5:0] lshr_ln85_9_fu_1995_p4;
wire   [7:0] empty_118_fu_2010_p2;
wire   [5:0] lshr_ln85_10_fu_2015_p4;
wire   [1:0] tmp_39_fu_2030_p4;
wire   [3:0] or_ln83_1_fu_2046_p4;
wire   [5:0] add_ln85_6_fu_2064_p2;
wire   [7:0] empty_119_fu_2075_p2;
wire   [5:0] lshr_ln85_11_fu_2080_p4;
wire   [3:0] or_ln83_2_fu_2095_p3;
wire   [5:0] add_ln85_10_fu_2111_p2;
wire   [7:0] empty_120_fu_2137_p2;
wire   [5:0] lshr_ln85_14_fu_2142_p4;
wire   [7:0] empty_121_fu_2157_p2;
wire   [5:0] lshr_ln85_16_fu_2162_p4;
wire   [7:0] empty_122_fu_2177_p2;
wire   [5:0] lshr_ln85_17_fu_2182_p4;
wire   [7:0] empty_123_fu_2197_p2;
wire   [5:0] lshr_ln85_20_fu_2202_p4;
wire   [7:0] empty_124_fu_2217_p2;
wire   [5:0] lshr_ln85_22_fu_2222_p4;
wire   [1:0] tmp_40_fu_2244_p4;
wire   [3:0] or_ln83_3_fu_2253_p4;
wire   [5:0] add_ln85_14_fu_2271_p2;
wire   [7:0] empty_125_fu_2281_p2;
wire   [5:0] lshr_ln85_23_fu_2286_p4;
wire   [0:0] tmp_28_fu_2301_p3;
wire   [3:0] or_ln83_4_fu_2308_p5;
wire   [5:0] add_ln85_18_fu_2328_p2;
wire   [7:0] empty_126_fu_2358_p2;
wire   [5:0] lshr_ln85_26_fu_2363_p4;
wire   [7:0] empty_127_fu_2378_p2;
wire   [5:0] lshr_ln85_28_fu_2383_p4;
wire   [7:0] empty_128_fu_2398_p2;
wire   [5:0] lshr_ln85_29_fu_2403_p4;
wire   [7:0] empty_129_fu_2418_p2;
wire   [5:0] lshr_ln85_32_fu_2423_p4;
wire   [7:0] empty_130_fu_2438_p2;
wire   [5:0] lshr_ln85_34_fu_2443_p4;
wire   [3:0] or_ln83_5_fu_2458_p4;
wire   [5:0] add_ln85_22_fu_2474_p2;
wire   [7:0] empty_131_fu_2484_p2;
wire   [5:0] lshr_ln85_35_fu_2489_p4;
wire   [3:0] or_ln83_6_fu_2504_p3;
wire   [5:0] add_ln85_26_fu_2519_p2;
wire   [7:0] add_ln85_fu_2569_p2;
wire   [5:0] lshr_ln85_1_fu_2574_p4;
wire   [7:0] add_ln85_3_fu_2589_p2;
wire   [5:0] lshr_ln85_7_fu_2594_p4;
wire   [7:0] empty_132_fu_2609_p2;
wire   [5:0] lshr_ln85_38_fu_2614_p4;
wire   [7:0] empty_133_fu_2629_p2;
wire   [5:0] lshr_ln85_40_fu_2634_p4;
wire   [7:0] empty_134_fu_2649_p2;
wire   [5:0] lshr_ln85_41_fu_2654_p4;
wire   [7:0] empty_135_fu_2669_p2;
wire   [5:0] lshr_ln85_44_fu_2674_p4;
wire   [7:0] empty_136_fu_2689_p2;
wire   [5:0] lshr_ln85_46_fu_2694_p4;
wire   [7:0] add_ln85_7_fu_2749_p2;
wire   [5:0] lshr_ln85_12_fu_2754_p4;
wire   [7:0] add_ln85_11_fu_2769_p2;
wire   [5:0] lshr_ln85_18_fu_2774_p4;
wire   [7:0] add_ln85_15_fu_2829_p2;
wire   [5:0] lshr_ln85_24_fu_2834_p4;
wire   [7:0] add_ln85_19_fu_2849_p2;
wire   [5:0] lshr_ln85_30_fu_2854_p4;
wire   [7:0] add_ln85_23_fu_2909_p2;
wire   [5:0] lshr_ln85_36_fu_2914_p4;
wire   [7:0] add_ln85_27_fu_2929_p2;
wire   [5:0] lshr_ln85_42_fu_2934_p4;
wire   [7:0] add_ln85_1_fu_2989_p2;
wire   [5:0] lshr_ln85_2_fu_2994_p4;
wire   [7:0] add_ln85_2_fu_3009_p2;
wire   [5:0] lshr_ln85_4_fu_3014_p4;
wire   [7:0] add_ln85_4_fu_3029_p2;
wire   [5:0] lshr_ln85_8_fu_3034_p4;
wire   [7:0] add_ln85_5_fu_3049_p2;
wire   [5:0] lshr_ln85_s_fu_3054_p4;
wire   [7:0] add_ln85_8_fu_3109_p2;
wire   [5:0] lshr_ln85_13_fu_3114_p4;
wire   [7:0] add_ln85_9_fu_3129_p2;
wire   [5:0] lshr_ln85_15_fu_3134_p4;
wire   [7:0] add_ln85_12_fu_3149_p2;
wire   [5:0] lshr_ln85_19_fu_3154_p4;
wire   [7:0] add_ln85_13_fu_3169_p2;
wire   [5:0] lshr_ln85_21_fu_3174_p4;
wire   [7:0] add_ln85_16_fu_3229_p2;
wire   [5:0] lshr_ln85_25_fu_3234_p4;
wire   [7:0] add_ln85_17_fu_3249_p2;
wire   [5:0] lshr_ln85_27_fu_3254_p4;
wire   [7:0] add_ln85_20_fu_3269_p2;
wire   [5:0] lshr_ln85_31_fu_3274_p4;
wire   [7:0] add_ln85_21_fu_3289_p2;
wire   [5:0] lshr_ln85_33_fu_3294_p4;
wire   [7:0] add_ln85_24_fu_3349_p2;
wire   [5:0] lshr_ln85_37_fu_3354_p4;
wire   [7:0] add_ln85_25_fu_3369_p2;
wire   [5:0] lshr_ln85_39_fu_3374_p4;
wire   [7:0] add_ln85_28_fu_3389_p2;
wire   [5:0] lshr_ln85_43_fu_3394_p4;
wire   [7:0] add_ln85_29_fu_3409_p2;
wire   [5:0] lshr_ln85_45_fu_3414_p4;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage2;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_226 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U303(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1664_p0),.din1(grp_fu_1664_p1),.ce(1'b1),.dout(grp_fu_1664_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U304(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1668_p0),.din1(grp_fu_1668_p1),.ce(1'b1),.dout(grp_fu_1668_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U305(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1672_p0),.din1(grp_fu_1672_p1),.ce(1'b1),.dout(grp_fu_1672_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U306(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1676_p0),.din1(grp_fu_1676_p1),.ce(1'b1),.dout(grp_fu_1676_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U307(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1680_p0),.din1(grp_fu_1680_p1),.ce(1'b1),.dout(grp_fu_1680_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U308(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1684_p0),.din1(grp_fu_1684_p1),.ce(1'b1),.dout(grp_fu_1684_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U309(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1688_p0),.din1(grp_fu_1688_p1),.ce(1'b1),.dout(grp_fu_1688_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U310(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1692_p0),.din1(grp_fu_1692_p1),.ce(1'b1),.dout(grp_fu_1692_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U311(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1696_p0),.din1(grp_fu_1696_p1),.ce(1'b1),.dout(grp_fu_1696_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U312(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1700_p0),.din1(grp_fu_1700_p1),.ce(1'b1),.dout(grp_fu_1700_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U313(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1704_p0),.din1(grp_fu_1704_p1),.ce(1'b1),.dout(grp_fu_1704_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage11),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_226 <= 7'd0;
    end else if (((tmp_25_reg_3617 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        i_fu_226 <= add_ln82_fu_3469_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_10_1_reg_5859 <= grp_fu_3044_p_dout0;
        add11_11_1_reg_5864 <= grp_fu_3048_p_dout0;
        add11_13_1_reg_5869 <= grp_fu_3052_p_dout0;
        add11_14_1_reg_5874 <= grp_fu_3056_p_dout0;
        add11_15_1_reg_5879 <= grp_fu_3060_p_dout0;
        add11_16_1_reg_5884 <= grp_fu_3064_p_dout0;
        add11_17_1_reg_5889 <= grp_fu_3068_p_dout0;
        add11_20_1_reg_5894 <= grp_fu_3072_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add11_10_2_reg_6019 <= grp_fu_3044_p_dout0;
        add11_11_2_reg_6024 <= grp_fu_3048_p_dout0;
        add11_13_2_reg_6029 <= grp_fu_3052_p_dout0;
        add11_14_2_reg_6034 <= grp_fu_3056_p_dout0;
        add11_15_2_reg_6039 <= grp_fu_3060_p_dout0;
        add11_16_2_reg_6044 <= grp_fu_3064_p_dout0;
        add11_17_2_reg_6049 <= grp_fu_3068_p_dout0;
        add11_20_2_reg_6054 <= grp_fu_3072_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add11_10_reg_5614 <= grp_fu_3044_p_dout0;
        add11_11_reg_5619 <= grp_fu_3048_p_dout0;
        add11_13_reg_5624 <= grp_fu_3052_p_dout0;
        add11_14_reg_5629 <= grp_fu_3056_p_dout0;
        add11_15_reg_5634 <= grp_fu_3060_p_dout0;
        add11_16_reg_5644 <= grp_fu_3064_p_dout0;
        add11_17_reg_5654 <= grp_fu_3068_p_dout0;
        add11_20_reg_5674 <= grp_fu_3072_p_dout0;
        mul8_15_2_reg_5639 <= grp_fu_1664_p2;
        mul8_16_2_reg_5649 <= grp_fu_1668_p2;
        mul8_17_2_reg_5659 <= grp_fu_1672_p2;
        mul8_18_2_reg_5664 <= grp_fu_1676_p2;
        mul8_19_2_reg_5669 <= grp_fu_1680_p2;
        mul8_20_2_reg_5679 <= grp_fu_1684_p2;
        mul8_21_2_reg_5684 <= grp_fu_1688_p2;
        mul8_22_2_reg_5689 <= grp_fu_1692_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_12_1_reg_5854 <= grp_fu_3072_p_dout0;
        add11_2_1_reg_5819 <= grp_fu_3044_p_dout0;
        add11_3_1_reg_5824 <= grp_fu_3048_p_dout0;
        add11_5_1_reg_5829 <= grp_fu_3052_p_dout0;
        add11_6_1_reg_5834 <= grp_fu_3056_p_dout0;
        add11_7_1_reg_5839 <= grp_fu_3060_p_dout0;
        add11_8_1_reg_5844 <= grp_fu_3064_p_dout0;
        add11_9_1_reg_5849 <= grp_fu_3068_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add11_12_2_reg_6014 <= grp_fu_3072_p_dout0;
        add11_2_2_reg_5979 <= grp_fu_3044_p_dout0;
        add11_3_2_reg_5984 <= grp_fu_3048_p_dout0;
        add11_5_2_reg_5989 <= grp_fu_3052_p_dout0;
        add11_6_2_reg_5994 <= grp_fu_3056_p_dout0;
        add11_7_2_reg_5999 <= grp_fu_3060_p_dout0;
        add11_8_2_reg_6004 <= grp_fu_3064_p_dout0;
        add11_9_2_reg_6009 <= grp_fu_3068_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add11_12_reg_5594 <= grp_fu_3072_p_dout0;
        add11_2_reg_5534 <= grp_fu_3044_p_dout0;
        add11_3_reg_5539 <= grp_fu_3048_p_dout0;
        add11_5_reg_5544 <= grp_fu_3052_p_dout0;
        add11_6_reg_5549 <= grp_fu_3056_p_dout0;
        add11_7_reg_5554 <= grp_fu_3060_p_dout0;
        add11_8_reg_5564 <= grp_fu_3064_p_dout0;
        add11_9_reg_5574 <= grp_fu_3068_p_dout0;
        mul8_10_2_reg_5584 <= grp_fu_1676_p2;
        mul8_11_2_reg_5589 <= grp_fu_1680_p2;
        mul8_12_2_reg_5599 <= grp_fu_1684_p2;
        mul8_13_2_reg_5604 <= grp_fu_1688_p2;
        mul8_14_2_reg_5609 <= grp_fu_1692_p2;
        mul8_7_2_reg_5559 <= grp_fu_1664_p2;
        mul8_8_2_reg_5569 <= grp_fu_1668_p2;
        mul8_9_2_reg_5579 <= grp_fu_1672_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_18_1_reg_5899 <= grp_fu_3044_p_dout0;
        add11_19_1_reg_5904 <= grp_fu_3048_p_dout0;
        add11_21_1_reg_5909 <= grp_fu_3052_p_dout0;
        add11_22_1_reg_5914 <= grp_fu_3056_p_dout0;
        add11_23_1_reg_5919 <= grp_fu_3060_p_dout0;
        add11_24_1_reg_5924 <= grp_fu_3064_p_dout0;
        add11_25_1_reg_5929 <= grp_fu_3068_p_dout0;
        add11_28_1_reg_5934 <= grp_fu_3072_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add11_18_2_reg_6059 <= grp_fu_3044_p_dout0;
        add11_19_2_reg_6064 <= grp_fu_3048_p_dout0;
        add11_21_2_reg_6069 <= grp_fu_3052_p_dout0;
        add11_22_2_reg_6074 <= grp_fu_3056_p_dout0;
        add11_23_2_reg_6079 <= grp_fu_3060_p_dout0;
        add11_24_2_reg_6084 <= grp_fu_3064_p_dout0;
        add11_25_2_reg_6089 <= grp_fu_3068_p_dout0;
        add11_28_2_reg_6094 <= grp_fu_3072_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add11_18_reg_5694 <= grp_fu_3044_p_dout0;
        add11_19_reg_5699 <= grp_fu_3048_p_dout0;
        add11_21_reg_5704 <= grp_fu_3052_p_dout0;
        add11_22_reg_5709 <= grp_fu_3056_p_dout0;
        add11_23_reg_5714 <= grp_fu_3060_p_dout0;
        add11_24_reg_5724 <= grp_fu_3064_p_dout0;
        add11_25_reg_5734 <= grp_fu_3068_p_dout0;
        add11_28_reg_5754 <= grp_fu_3072_p_dout0;
        mul8_23_2_reg_5719 <= grp_fu_1664_p2;
        mul8_24_2_reg_5729 <= grp_fu_1668_p2;
        mul8_25_2_reg_5739 <= grp_fu_1672_p2;
        mul8_26_2_reg_5744 <= grp_fu_1676_p2;
        mul8_27_2_reg_5749 <= grp_fu_1680_p2;
        mul8_28_2_reg_5759 <= grp_fu_1684_p2;
        mul8_29_2_reg_5764 <= grp_fu_1688_p2;
        mul8_30_2_reg_5769 <= grp_fu_1692_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_1_reg_5809 <= grp_fu_3048_p_dout0;
        add11_4_1_reg_5814 <= grp_fu_3052_p_dout0;
        add11_s_reg_5804 <= grp_fu_3044_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add11_1_2_reg_5969 <= grp_fu_3068_p_dout0;
        add11_43_reg_5964 <= grp_fu_3064_p_dout0;
        add11_4_2_reg_5974 <= grp_fu_3072_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_1_reg_5484 <= grp_fu_3048_p_dout0;
        add11_4_reg_5504 <= grp_fu_3052_p_dout0;
        add_reg_5479 <= grp_fu_3044_p_dout0;
        mul8_1_2_reg_5489 <= grp_fu_1664_p2;
        mul8_27_1_reg_5519 <= grp_fu_1684_p2;
        mul8_2_2_reg_5494 <= grp_fu_1668_p2;
        mul8_30_1_reg_5524 <= grp_fu_1688_p2;
        mul8_31_1_reg_5529 <= grp_fu_1692_p2;
        mul8_3_2_reg_5499 <= grp_fu_1672_p2;
        mul8_5_2_reg_5509 <= grp_fu_1676_p2;
        mul8_6_2_reg_5514 <= grp_fu_1680_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_26_1_reg_5939 <= grp_fu_3056_p_dout0;
        add11_27_1_reg_5944 <= grp_fu_3060_p_dout0;
        add11_29_1_reg_5949 <= grp_fu_3064_p_dout0;
        add11_30_1_reg_5954 <= grp_fu_3068_p_dout0;
        add11_31_1_reg_5959 <= grp_fu_3072_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_26_2_reg_6099 <= grp_fu_3056_p_dout0;
        add11_27_2_reg_6104 <= grp_fu_3060_p_dout0;
        add11_29_2_reg_6109 <= grp_fu_3064_p_dout0;
        add11_30_2_reg_6114 <= grp_fu_3068_p_dout0;
        add11_31_2_reg_6119 <= grp_fu_3072_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add11_26_reg_5774 <= grp_fu_3044_p_dout0;
        add11_27_reg_5779 <= grp_fu_3048_p_dout0;
        add11_29_reg_5784 <= grp_fu_3052_p_dout0;
        add11_30_reg_5789 <= grp_fu_3056_p_dout0;
        add11_31_reg_5794 <= grp_fu_3060_p_dout0;
        mul8_31_2_reg_5799 <= grp_fu_1692_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations_0_load_1_reg_3931 <= dactivations_0_q0;
        dactivations_0_load_reg_3768 <= dactivations_0_q1;
        dactivations_1_load_1_reg_3936 <= dactivations_1_q0;
        dactivations_1_load_reg_3916 <= dactivations_1_q1;
        dactivations_2_load_1_reg_3941 <= dactivations_2_q0;
        dactivations_2_load_reg_3921 <= dactivations_2_q1;
        dactivations_3_load_1_reg_3946 <= dactivations_3_q0;
        dactivations_3_load_reg_3926 <= dactivations_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations_0_load_1_reg_3931_pp0_iter1_reg <= dactivations_0_load_1_reg_3931;
        dactivations_0_load_1_reg_3931_pp0_iter2_reg <= dactivations_0_load_1_reg_3931_pp0_iter1_reg;
        dactivations_0_load_reg_3768_pp0_iter1_reg <= dactivations_0_load_reg_3768;
        dactivations_0_load_reg_3768_pp0_iter2_reg <= dactivations_0_load_reg_3768_pp0_iter1_reg;
        dactivations_1_load_1_reg_3936_pp0_iter1_reg <= dactivations_1_load_1_reg_3936;
        dactivations_1_load_1_reg_3936_pp0_iter2_reg <= dactivations_1_load_1_reg_3936_pp0_iter1_reg;
        dactivations_1_load_reg_3916_pp0_iter1_reg <= dactivations_1_load_reg_3916;
        dactivations_1_load_reg_3916_pp0_iter2_reg <= dactivations_1_load_reg_3916_pp0_iter1_reg;
        dactivations_2_load_1_reg_3941_pp0_iter1_reg <= dactivations_2_load_1_reg_3941;
        dactivations_2_load_1_reg_3941_pp0_iter2_reg <= dactivations_2_load_1_reg_3941_pp0_iter1_reg;
        dactivations_2_load_reg_3921_pp0_iter1_reg <= dactivations_2_load_reg_3921;
        dactivations_2_load_reg_3921_pp0_iter2_reg <= dactivations_2_load_reg_3921_pp0_iter1_reg;
        dactivations_3_load_1_reg_3946_pp0_iter1_reg <= dactivations_3_load_1_reg_3946;
        dactivations_3_load_1_reg_3946_pp0_iter2_reg <= dactivations_3_load_1_reg_3946_pp0_iter1_reg;
        dactivations_3_load_reg_3926_pp0_iter1_reg <= dactivations_3_load_reg_3926;
        dactivations_3_load_reg_3926_pp0_iter2_reg <= dactivations_3_load_reg_3926_pp0_iter1_reg;
        tmp_26_reg_3803 <= i_11_reg_3607[32'd2];
        zext_ln83_2_reg_3808[0] <= zext_ln83_2_fu_2056_p1[0];
zext_ln83_2_reg_3808[3 : 2] <= zext_ln83_2_fu_2056_p1[3 : 2];
        zext_ln83_2_reg_3808_pp0_iter1_reg[0] <= zext_ln83_2_reg_3808[0];
zext_ln83_2_reg_3808_pp0_iter1_reg[3 : 2] <= zext_ln83_2_reg_3808[3 : 2];
        zext_ln83_2_reg_3808_pp0_iter2_reg[0] <= zext_ln83_2_reg_3808_pp0_iter1_reg[0];
zext_ln83_2_reg_3808_pp0_iter2_reg[3 : 2] <= zext_ln83_2_reg_3808_pp0_iter1_reg[3 : 2];
        zext_ln83_2_reg_3808_pp0_iter3_reg[0] <= zext_ln83_2_reg_3808_pp0_iter2_reg[0];
zext_ln83_2_reg_3808_pp0_iter3_reg[3 : 2] <= zext_ln83_2_reg_3808_pp0_iter2_reg[3 : 2];
        zext_ln83_3_reg_3842[3 : 2] <= zext_ln83_3_fu_2103_p1[3 : 2];
        zext_ln83_3_reg_3842_pp0_iter1_reg[3 : 2] <= zext_ln83_3_reg_3842[3 : 2];
        zext_ln83_3_reg_3842_pp0_iter2_reg[3 : 2] <= zext_ln83_3_reg_3842_pp0_iter1_reg[3 : 2];
        zext_ln83_3_reg_3842_pp0_iter3_reg[3 : 2] <= zext_ln83_3_reg_3842_pp0_iter2_reg[3 : 2];
        zext_ln85_3_reg_3773[5 : 0] <= zext_ln85_3_fu_1942_p1[5 : 0];
        zext_ln85_6_reg_3792[5 : 0] <= zext_ln85_6_fu_2005_p1[5 : 0];
        zext_ln87_12_reg_3850[5 : 2] <= zext_ln87_12_fu_2117_p1[5 : 2];
        zext_ln87_2_reg_3778[5 : 0] <= zext_ln87_2_fu_1962_p1[5 : 0];
        zext_ln87_3_reg_3784[4 : 2] <= zext_ln87_3_fu_1967_p1[4 : 2];
        zext_ln87_7_reg_3797[5 : 0] <= zext_ln87_7_fu_2025_p1[5 : 0];
        zext_ln87_8_reg_3816[5 : 2] <= zext_ln87_8_fu_2070_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        dactivations_0_load_2_reg_4122 <= dactivations_0_q1;
        dactivations_0_load_3_reg_4142 <= dactivations_0_q0;
        dactivations_1_load_2_reg_4127 <= dactivations_1_q1;
        dactivations_1_load_3_reg_4147 <= dactivations_1_q0;
        dactivations_2_load_2_reg_4132 <= dactivations_2_q1;
        dactivations_2_load_3_reg_4152 <= dactivations_2_q0;
        dactivations_3_load_2_reg_4137 <= dactivations_3_q1;
        dactivations_3_load_3_reg_4157 <= dactivations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        dactivations_0_load_2_reg_4122_pp0_iter1_reg <= dactivations_0_load_2_reg_4122;
        dactivations_0_load_2_reg_4122_pp0_iter2_reg <= dactivations_0_load_2_reg_4122_pp0_iter1_reg;
        dactivations_0_load_3_reg_4142_pp0_iter1_reg <= dactivations_0_load_3_reg_4142;
        dactivations_0_load_3_reg_4142_pp0_iter2_reg <= dactivations_0_load_3_reg_4142_pp0_iter1_reg;
        dactivations_1_load_2_reg_4127_pp0_iter1_reg <= dactivations_1_load_2_reg_4127;
        dactivations_1_load_2_reg_4127_pp0_iter2_reg <= dactivations_1_load_2_reg_4127_pp0_iter1_reg;
        dactivations_1_load_3_reg_4147_pp0_iter1_reg <= dactivations_1_load_3_reg_4147;
        dactivations_1_load_3_reg_4147_pp0_iter2_reg <= dactivations_1_load_3_reg_4147_pp0_iter1_reg;
        dactivations_2_load_2_reg_4132_pp0_iter1_reg <= dactivations_2_load_2_reg_4132;
        dactivations_2_load_2_reg_4132_pp0_iter2_reg <= dactivations_2_load_2_reg_4132_pp0_iter1_reg;
        dactivations_2_load_3_reg_4152_pp0_iter1_reg <= dactivations_2_load_3_reg_4152;
        dactivations_2_load_3_reg_4152_pp0_iter2_reg <= dactivations_2_load_3_reg_4152_pp0_iter1_reg;
        dactivations_3_load_2_reg_4137_pp0_iter1_reg <= dactivations_3_load_2_reg_4137;
        dactivations_3_load_2_reg_4137_pp0_iter2_reg <= dactivations_3_load_2_reg_4137_pp0_iter1_reg;
        dactivations_3_load_3_reg_4157_pp0_iter1_reg <= dactivations_3_load_3_reg_4157;
        dactivations_3_load_3_reg_4157_pp0_iter2_reg <= dactivations_3_load_3_reg_4157_pp0_iter1_reg;
        tmp_27_reg_3988 <= i_11_reg_3607[32'd5];
        zext_ln83_4_reg_3994[1 : 0] <= zext_ln83_4_fu_2263_p1[1 : 0];
zext_ln83_4_reg_3994[3] <= zext_ln83_4_fu_2263_p1[3];
        zext_ln83_4_reg_3994_pp0_iter1_reg[1 : 0] <= zext_ln83_4_reg_3994[1 : 0];
zext_ln83_4_reg_3994_pp0_iter1_reg[3] <= zext_ln83_4_reg_3994[3];
        zext_ln83_4_reg_3994_pp0_iter2_reg[1 : 0] <= zext_ln83_4_reg_3994_pp0_iter1_reg[1 : 0];
zext_ln83_4_reg_3994_pp0_iter2_reg[3] <= zext_ln83_4_reg_3994_pp0_iter1_reg[3];
        zext_ln83_4_reg_3994_pp0_iter3_reg[1 : 0] <= zext_ln83_4_reg_3994_pp0_iter2_reg[1 : 0];
zext_ln83_4_reg_3994_pp0_iter3_reg[3] <= zext_ln83_4_reg_3994_pp0_iter2_reg[3];
        zext_ln83_5_reg_4028[1] <= zext_ln83_5_fu_2320_p1[1];
zext_ln83_5_reg_4028[3] <= zext_ln83_5_fu_2320_p1[3];
        zext_ln83_5_reg_4028_pp0_iter1_reg[1] <= zext_ln83_5_reg_4028[1];
zext_ln83_5_reg_4028_pp0_iter1_reg[3] <= zext_ln83_5_reg_4028[3];
        zext_ln83_5_reg_4028_pp0_iter2_reg[1] <= zext_ln83_5_reg_4028_pp0_iter1_reg[1];
zext_ln83_5_reg_4028_pp0_iter2_reg[3] <= zext_ln83_5_reg_4028_pp0_iter1_reg[3];
        zext_ln83_5_reg_4028_pp0_iter3_reg[1] <= zext_ln83_5_reg_4028_pp0_iter2_reg[1];
zext_ln83_5_reg_4028_pp0_iter3_reg[3] <= zext_ln83_5_reg_4028_pp0_iter2_reg[3];
        zext_ln85_12_reg_3977[5 : 0] <= zext_ln85_12_fu_2212_p1[5 : 0];
        zext_ln85_9_reg_3966[5 : 0] <= zext_ln85_9_fu_2152_p1[5 : 0];
        zext_ln87_11_reg_3971[5 : 0] <= zext_ln87_11_fu_2172_p1[5 : 0];
        zext_ln87_15_reg_3982[5 : 0] <= zext_ln87_15_fu_2232_p1[5 : 0];
        zext_ln87_16_reg_4002[5 : 2] <= zext_ln87_16_fu_2276_p1[5 : 2];
        zext_ln87_20_reg_4036[5 : 2] <= zext_ln87_20_fu_2333_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        dactivations_0_load_4_reg_4332 <= dactivations_0_q1;
        dactivations_0_load_5_reg_4352 <= dactivations_0_q0;
        dactivations_1_load_4_reg_4337 <= dactivations_1_q1;
        dactivations_1_load_5_reg_4357 <= dactivations_1_q0;
        dactivations_2_load_4_reg_4342 <= dactivations_2_q1;
        dactivations_2_load_5_reg_4362 <= dactivations_2_q0;
        dactivations_3_load_4_reg_4347 <= dactivations_3_q1;
        dactivations_3_load_5_reg_4367 <= dactivations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        dactivations_0_load_4_reg_4332_pp0_iter1_reg <= dactivations_0_load_4_reg_4332;
        dactivations_0_load_4_reg_4332_pp0_iter2_reg <= dactivations_0_load_4_reg_4332_pp0_iter1_reg;
        dactivations_0_load_5_reg_4352_pp0_iter1_reg <= dactivations_0_load_5_reg_4352;
        dactivations_0_load_5_reg_4352_pp0_iter2_reg <= dactivations_0_load_5_reg_4352_pp0_iter1_reg;
        dactivations_1_load_4_reg_4337_pp0_iter1_reg <= dactivations_1_load_4_reg_4337;
        dactivations_1_load_4_reg_4337_pp0_iter2_reg <= dactivations_1_load_4_reg_4337_pp0_iter1_reg;
        dactivations_1_load_5_reg_4357_pp0_iter1_reg <= dactivations_1_load_5_reg_4357;
        dactivations_1_load_5_reg_4357_pp0_iter2_reg <= dactivations_1_load_5_reg_4357_pp0_iter1_reg;
        dactivations_1_load_5_reg_4357_pp0_iter3_reg <= dactivations_1_load_5_reg_4357_pp0_iter2_reg;
        dactivations_2_load_4_reg_4342_pp0_iter1_reg <= dactivations_2_load_4_reg_4342;
        dactivations_2_load_4_reg_4342_pp0_iter2_reg <= dactivations_2_load_4_reg_4342_pp0_iter1_reg;
        dactivations_2_load_5_reg_4362_pp0_iter1_reg <= dactivations_2_load_5_reg_4362;
        dactivations_2_load_5_reg_4362_pp0_iter2_reg <= dactivations_2_load_5_reg_4362_pp0_iter1_reg;
        dactivations_2_load_5_reg_4362_pp0_iter3_reg <= dactivations_2_load_5_reg_4362_pp0_iter2_reg;
        dactivations_3_load_4_reg_4347_pp0_iter1_reg <= dactivations_3_load_4_reg_4347;
        dactivations_3_load_4_reg_4347_pp0_iter2_reg <= dactivations_3_load_4_reg_4347_pp0_iter1_reg;
        dactivations_3_load_5_reg_4367_pp0_iter1_reg <= dactivations_3_load_5_reg_4367;
        dactivations_3_load_5_reg_4367_pp0_iter2_reg <= dactivations_3_load_5_reg_4367_pp0_iter1_reg;
        dactivations_3_load_5_reg_4367_pp0_iter3_reg <= dactivations_3_load_5_reg_4367_pp0_iter2_reg;
        zext_ln83_6_reg_4184[0] <= zext_ln83_6_fu_2466_p1[0];
zext_ln83_6_reg_4184[3] <= zext_ln83_6_fu_2466_p1[3];
        zext_ln83_6_reg_4184_pp0_iter1_reg[0] <= zext_ln83_6_reg_4184[0];
zext_ln83_6_reg_4184_pp0_iter1_reg[3] <= zext_ln83_6_reg_4184[3];
        zext_ln83_6_reg_4184_pp0_iter2_reg[0] <= zext_ln83_6_reg_4184_pp0_iter1_reg[0];
zext_ln83_6_reg_4184_pp0_iter2_reg[3] <= zext_ln83_6_reg_4184_pp0_iter1_reg[3];
        zext_ln83_6_reg_4184_pp0_iter3_reg[0] <= zext_ln83_6_reg_4184_pp0_iter2_reg[0];
zext_ln83_6_reg_4184_pp0_iter3_reg[3] <= zext_ln83_6_reg_4184_pp0_iter2_reg[3];
        zext_ln83_7_reg_4218[3] <= zext_ln83_7_fu_2511_p1[3];
        zext_ln83_7_reg_4218_pp0_iter1_reg[3] <= zext_ln83_7_reg_4218[3];
        zext_ln83_7_reg_4218_pp0_iter2_reg[3] <= zext_ln83_7_reg_4218_pp0_iter1_reg[3];
        zext_ln83_7_reg_4218_pp0_iter3_reg[3] <= zext_ln83_7_reg_4218_pp0_iter2_reg[3];
        zext_ln85_15_reg_4162[5 : 0] <= zext_ln85_15_fu_2373_p1[5 : 0];
        zext_ln85_18_reg_4173[5 : 0] <= zext_ln85_18_fu_2433_p1[5 : 0];
        zext_ln87_19_reg_4167[5 : 0] <= zext_ln87_19_fu_2393_p1[5 : 0];
        zext_ln87_23_reg_4178[5 : 0] <= zext_ln87_23_fu_2453_p1[5 : 0];
        zext_ln87_24_reg_4192[5 : 2] <= zext_ln87_24_fu_2479_p1[5 : 2];
        zext_ln87_28_reg_4226[5 : 2] <= zext_ln87_28_fu_2524_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        dactivations_0_load_6_reg_4474 <= dactivations_0_q1;
        dactivations_0_load_7_reg_4494 <= dactivations_0_q0;
        dactivations_1_load_6_reg_4479 <= dactivations_1_q1;
        dactivations_1_load_7_reg_4499 <= dactivations_1_q0;
        dactivations_2_load_6_reg_4484 <= dactivations_2_q1;
        dactivations_2_load_7_reg_4504 <= dactivations_2_q0;
        dactivations_3_load_6_reg_4489 <= dactivations_3_q1;
        dactivations_3_load_7_reg_4509 <= dactivations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        dactivations_0_load_6_reg_4474_pp0_iter1_reg <= dactivations_0_load_6_reg_4474;
        dactivations_0_load_6_reg_4474_pp0_iter2_reg <= dactivations_0_load_6_reg_4474_pp0_iter1_reg;
        dactivations_0_load_6_reg_4474_pp0_iter3_reg <= dactivations_0_load_6_reg_4474_pp0_iter2_reg;
        dactivations_0_load_7_reg_4494_pp0_iter1_reg <= dactivations_0_load_7_reg_4494;
        dactivations_0_load_7_reg_4494_pp0_iter2_reg <= dactivations_0_load_7_reg_4494_pp0_iter1_reg;
        dactivations_0_load_7_reg_4494_pp0_iter3_reg <= dactivations_0_load_7_reg_4494_pp0_iter2_reg;
        dactivations_1_load_6_reg_4479_pp0_iter1_reg <= dactivations_1_load_6_reg_4479;
        dactivations_1_load_6_reg_4479_pp0_iter2_reg <= dactivations_1_load_6_reg_4479_pp0_iter1_reg;
        dactivations_1_load_6_reg_4479_pp0_iter3_reg <= dactivations_1_load_6_reg_4479_pp0_iter2_reg;
        dactivations_1_load_7_reg_4499_pp0_iter1_reg <= dactivations_1_load_7_reg_4499;
        dactivations_1_load_7_reg_4499_pp0_iter2_reg <= dactivations_1_load_7_reg_4499_pp0_iter1_reg;
        dactivations_1_load_7_reg_4499_pp0_iter3_reg <= dactivations_1_load_7_reg_4499_pp0_iter2_reg;
        dactivations_2_load_6_reg_4484_pp0_iter1_reg <= dactivations_2_load_6_reg_4484;
        dactivations_2_load_6_reg_4484_pp0_iter2_reg <= dactivations_2_load_6_reg_4484_pp0_iter1_reg;
        dactivations_2_load_6_reg_4484_pp0_iter3_reg <= dactivations_2_load_6_reg_4484_pp0_iter2_reg;
        dactivations_2_load_7_reg_4504_pp0_iter1_reg <= dactivations_2_load_7_reg_4504;
        dactivations_2_load_7_reg_4504_pp0_iter2_reg <= dactivations_2_load_7_reg_4504_pp0_iter1_reg;
        dactivations_2_load_7_reg_4504_pp0_iter3_reg <= dactivations_2_load_7_reg_4504_pp0_iter2_reg;
        dactivations_3_load_6_reg_4489_pp0_iter1_reg <= dactivations_3_load_6_reg_4489;
        dactivations_3_load_6_reg_4489_pp0_iter2_reg <= dactivations_3_load_6_reg_4489_pp0_iter1_reg;
        dactivations_3_load_6_reg_4489_pp0_iter3_reg <= dactivations_3_load_6_reg_4489_pp0_iter2_reg;
        dactivations_3_load_7_reg_4509_pp0_iter1_reg <= dactivations_3_load_7_reg_4509;
        dactivations_3_load_7_reg_4509_pp0_iter2_reg <= dactivations_3_load_7_reg_4509_pp0_iter1_reg;
        dactivations_3_load_7_reg_4509_pp0_iter3_reg <= dactivations_3_load_7_reg_4509_pp0_iter2_reg;
        zext_ln85_21_reg_4372[5 : 0] <= zext_ln85_21_fu_2624_p1[5 : 0];
        zext_ln85_24_reg_4383[5 : 0] <= zext_ln85_24_fu_2684_p1[5 : 0];
        zext_ln85_25_reg_4388[5 : 0] <= zext_ln85_25_fu_2704_p1[5 : 0];
        zext_ln87_27_reg_4377[5 : 0] <= zext_ln87_27_fu_2644_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_3649[7 : 1] <= empty_fu_1855_p2[7 : 1];
        i_11_reg_3607 <= ap_sig_allocacmp_i_11;
        or_ln4_reg_3723[4 : 2] <= or_ln4_fu_1912_p3[4 : 2];
        tmp_25_reg_3617 <= ap_sig_allocacmp_i_11[32'd6];
        tmp_25_reg_3617_pp0_iter1_reg <= tmp_25_reg_3617;
        tmp_25_reg_3617_pp0_iter2_reg <= tmp_25_reg_3617_pp0_iter1_reg;
        tmp_25_reg_3617_pp0_iter3_reg <= tmp_25_reg_3617_pp0_iter2_reg;
        zext_ln81_reg_3621[3 : 0] <= zext_ln81_fu_1796_p1[3 : 0];
        zext_ln81_reg_3621_pp0_iter1_reg[3 : 0] <= zext_ln81_reg_3621[3 : 0];
        zext_ln81_reg_3621_pp0_iter2_reg[3 : 0] <= zext_ln81_reg_3621_pp0_iter1_reg[3 : 0];
        zext_ln81_reg_3621_pp0_iter3_reg[3 : 0] <= zext_ln81_reg_3621_pp0_iter2_reg[3 : 0];
        zext_ln83_1_reg_3715[3 : 1] <= zext_ln83_1_fu_1894_p1[3 : 1];
        zext_ln83_1_reg_3715_pp0_iter1_reg[3 : 1] <= zext_ln83_1_reg_3715[3 : 1];
        zext_ln83_1_reg_3715_pp0_iter2_reg[3 : 1] <= zext_ln83_1_reg_3715_pp0_iter1_reg[3 : 1];
        zext_ln83_1_reg_3715_pp0_iter3_reg[3 : 1] <= zext_ln83_1_reg_3715_pp0_iter2_reg[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_10_1_reg_5339 <= grp_fu_1684_p2;
        mul8_12_1_reg_5344 <= grp_fu_1688_p2;
        mul8_13_1_reg_5349 <= grp_fu_1692_p2;
        mul8_3_1_reg_5314 <= grp_fu_1664_p2;
        mul8_6_1_reg_5319 <= grp_fu_1668_p2;
        mul8_7_1_reg_5324 <= grp_fu_1672_p2;
        mul8_8_1_reg_5329 <= grp_fu_1676_p2;
        mul8_9_1_reg_5334 <= grp_fu_1680_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul8_10_reg_5014 <= grp_fu_1664_p2;
        mul8_11_reg_5019 <= grp_fu_1668_p2;
        mul8_13_reg_5024 <= grp_fu_1672_p2;
        mul8_14_reg_5029 <= grp_fu_1676_p2;
        mul8_15_reg_5034 <= grp_fu_1680_p2;
        mul8_16_reg_5044 <= grp_fu_1684_p2;
        mul8_17_reg_5054 <= grp_fu_1688_p2;
        mul8_20_reg_5074 <= grp_fu_1692_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_11_1_reg_5394 <= grp_fu_1664_p2;
        mul8_14_1_reg_5399 <= grp_fu_1668_p2;
        mul8_15_1_reg_5404 <= grp_fu_1672_p2;
        mul8_16_1_reg_5409 <= grp_fu_1676_p2;
        mul8_17_1_reg_5414 <= grp_fu_1680_p2;
        mul8_18_1_reg_5419 <= grp_fu_1684_p2;
        mul8_20_1_reg_5424 <= grp_fu_1688_p2;
        mul8_21_1_reg_5429 <= grp_fu_1692_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_12_reg_4929 <= grp_fu_1692_p2;
        mul8_2_reg_4869 <= grp_fu_1664_p2;
        mul8_3_reg_4874 <= grp_fu_1668_p2;
        mul8_5_reg_4879 <= grp_fu_1672_p2;
        mul8_6_reg_4884 <= grp_fu_1676_p2;
        mul8_7_reg_4889 <= grp_fu_1680_p2;
        mul8_8_reg_4899 <= grp_fu_1684_p2;
        mul8_9_reg_4909 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul8_18_reg_5149 <= grp_fu_1664_p2;
        mul8_19_reg_5154 <= grp_fu_1668_p2;
        mul8_21_reg_5159 <= grp_fu_1672_p2;
        mul8_22_reg_5164 <= grp_fu_1676_p2;
        mul8_23_reg_5169 <= grp_fu_1680_p2;
        mul8_24_reg_5179 <= grp_fu_1684_p2;
        mul8_25_reg_5189 <= grp_fu_1688_p2;
        mul8_28_reg_5209 <= grp_fu_1692_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_19_1_reg_5439 <= grp_fu_1664_p2;
        mul8_22_1_reg_5444 <= grp_fu_1668_p2;
        mul8_23_1_reg_5449 <= grp_fu_1672_p2;
        mul8_24_1_reg_5454 <= grp_fu_1676_p2;
        mul8_25_1_reg_5459 <= grp_fu_1680_p2;
        mul8_26_1_reg_5464 <= grp_fu_1684_p2;
        mul8_28_1_reg_5469 <= grp_fu_1688_p2;
        mul8_29_1_reg_5474 <= grp_fu_1692_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_1_1_reg_5229 <= grp_fu_1664_p2;
        mul8_26_reg_5284 <= grp_fu_1676_p2;
        mul8_27_reg_5289 <= grp_fu_1680_p2;
        mul8_29_reg_5294 <= grp_fu_1684_p2;
        mul8_2_1_reg_5234 <= grp_fu_1668_p2;
        mul8_30_reg_5299 <= grp_fu_1688_p2;
        mul8_31_reg_5304 <= grp_fu_1692_p2;
        mul8_5_1_reg_5239 <= grp_fu_1672_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_1_reg_4769 <= grp_fu_1676_p2;
        mul8_43_reg_4764 <= grp_fu_1672_p2;
        mul8_4_1_reg_4794 <= grp_fu_1684_p2;
        mul8_4_2_reg_4799 <= grp_fu_1688_p2;
        mul8_4_reg_4789 <= grp_fu_1680_p2;
        mul8_reg_4754 <= grp_fu_1664_p2;
        mul8_s_reg_4759 <= grp_fu_1668_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_43_reg_4764_pp0_iter1_reg <= mul8_43_reg_4764;
        mul8_4_2_reg_4799_pp0_iter1_reg <= mul8_4_2_reg_4799;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1708 <= weights3_0_q1;
        reg_1712 <= weights3_1_q1;
        reg_1716 <= weights3_2_q1;
        reg_1720 <= weights3_3_q1;
        reg_1724 <= weights3_0_q0;
        reg_1728 <= weights3_1_q0;
        reg_1732 <= weights3_2_q0;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1736 <= weights3_3_q0;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1740 <= grp_fu_1696_p2;
        reg_1749 <= grp_fu_1700_p2;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1757 <= grp_fu_1704_p2;
    end
end
always @ (*) begin
    if (((tmp_25_reg_3617 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (tmp_25_reg_3617_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_11 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_11 = i_fu_226;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            dactivations_0_address0_local = zext_ln83_7_fu_2511_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            dactivations_0_address0_local = zext_ln83_5_fu_2320_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_0_address0_local = zext_ln83_3_fu_2103_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_0_address0_local = zext_ln83_1_fu_1894_p1;
        end else begin
            dactivations_0_address0_local = 'bx;
        end
    end else begin
        dactivations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            dactivations_0_address1_local = zext_ln83_6_fu_2466_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            dactivations_0_address1_local = zext_ln83_4_fu_2263_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_0_address1_local = zext_ln83_2_fu_2056_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_0_address1_local = zext_ln81_fu_1796_p1;
        end else begin
            dactivations_0_address1_local = 'bx;
        end
    end else begin
        dactivations_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_0_ce0_local = 1'b1;
    end else begin
        dactivations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_0_ce1_local = 1'b1;
    end else begin
        dactivations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            dactivations_1_address0_local = zext_ln83_7_fu_2511_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            dactivations_1_address0_local = zext_ln83_5_fu_2320_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_1_address0_local = zext_ln83_3_fu_2103_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_1_address0_local = zext_ln83_1_fu_1894_p1;
        end else begin
            dactivations_1_address0_local = 'bx;
        end
    end else begin
        dactivations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            dactivations_1_address1_local = zext_ln83_6_fu_2466_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            dactivations_1_address1_local = zext_ln83_4_fu_2263_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_1_address1_local = zext_ln83_2_fu_2056_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_1_address1_local = zext_ln81_fu_1796_p1;
        end else begin
            dactivations_1_address1_local = 'bx;
        end
    end else begin
        dactivations_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_1_ce0_local = 1'b1;
    end else begin
        dactivations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_1_ce1_local = 1'b1;
    end else begin
        dactivations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            dactivations_2_address0_local = zext_ln83_7_fu_2511_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            dactivations_2_address0_local = zext_ln83_5_fu_2320_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_2_address0_local = zext_ln83_3_fu_2103_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_2_address0_local = zext_ln83_1_fu_1894_p1;
        end else begin
            dactivations_2_address0_local = 'bx;
        end
    end else begin
        dactivations_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            dactivations_2_address1_local = zext_ln83_6_fu_2466_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            dactivations_2_address1_local = zext_ln83_4_fu_2263_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_2_address1_local = zext_ln83_2_fu_2056_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_2_address1_local = zext_ln81_fu_1796_p1;
        end else begin
            dactivations_2_address1_local = 'bx;
        end
    end else begin
        dactivations_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_2_ce0_local = 1'b1;
    end else begin
        dactivations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_2_ce1_local = 1'b1;
    end else begin
        dactivations_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            dactivations_3_address0_local = zext_ln83_7_fu_2511_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            dactivations_3_address0_local = zext_ln83_5_fu_2320_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_3_address0_local = zext_ln83_3_fu_2103_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_3_address0_local = zext_ln83_1_fu_1894_p1;
        end else begin
            dactivations_3_address0_local = 'bx;
        end
    end else begin
        dactivations_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            dactivations_3_address1_local = zext_ln83_6_fu_2466_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            dactivations_3_address1_local = zext_ln83_4_fu_2263_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_3_address1_local = zext_ln83_2_fu_2056_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_3_address1_local = zext_ln81_fu_1796_p1;
        end else begin
            dactivations_3_address1_local = 'bx;
        end
    end else begin
        dactivations_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_3_ce0_local = 1'b1;
    end else begin
        dactivations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_3_ce1_local = 1'b1;
    end else begin
        dactivations_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1624_p0 = add11_18_1_reg_5899;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1624_p0 = add11_10_1_reg_5859;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1624_p0 = add11_2_1_reg_5819;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1624_p0 = add11_18_reg_5694;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1624_p0 = add11_10_reg_5614;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1624_p0 = add11_2_reg_5534;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1624_p0 = add_reg_5479;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1624_p0 = mul8_26_reg_5284;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1624_p0 = mul8_18_reg_5149;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1624_p0 = mul8_10_reg_5014;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1624_p0 = mul8_2_reg_4869;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1624_p0 = mul8_reg_4754;
    end else begin
        grp_fu_1624_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1624_p1 = mul8_18_2_reg_5664;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1624_p1 = mul8_10_2_reg_5584;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1624_p1 = mul8_2_2_reg_5494;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1624_p1 = mul8_18_1_reg_5419;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1624_p1 = mul8_10_1_reg_5339;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1624_p1 = mul8_2_1_reg_5234;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1624_p1 = mul8_s_reg_4759;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1624_p1 = 64'd0;
    end else begin
        grp_fu_1624_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1629_p0 = add11_19_1_reg_5904;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1629_p0 = add11_11_1_reg_5864;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1629_p0 = add11_3_1_reg_5824;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1629_p0 = add11_19_reg_5699;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1629_p0 = add11_11_reg_5619;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1629_p0 = add11_3_reg_5539;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1629_p0 = add11_1_reg_5484;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1629_p0 = mul8_27_reg_5289;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1629_p0 = mul8_19_reg_5154;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1629_p0 = mul8_11_reg_5019;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1629_p0 = mul8_3_reg_4874;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1629_p0 = mul8_1_reg_4769;
    end else begin
        grp_fu_1629_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1629_p1 = mul8_19_2_reg_5669;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1629_p1 = mul8_11_2_reg_5589;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1629_p1 = mul8_3_2_reg_5499;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1629_p1 = mul8_19_1_reg_5439;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1629_p1 = mul8_11_1_reg_5394;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1629_p1 = mul8_3_1_reg_5314;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1629_p1 = mul8_1_1_reg_5229;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1629_p1 = 64'd0;
    end else begin
        grp_fu_1629_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1634_p0 = add11_21_1_reg_5909;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1634_p0 = add11_13_1_reg_5869;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1634_p0 = add11_5_1_reg_5829;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1634_p0 = add11_21_reg_5704;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1634_p0 = add11_13_reg_5624;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1634_p0 = add11_5_reg_5544;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1634_p0 = add11_4_reg_5504;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1634_p0 = mul8_29_reg_5294;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1634_p0 = mul8_21_reg_5159;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1634_p0 = mul8_13_reg_5024;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1634_p0 = mul8_5_reg_4879;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1634_p0 = mul8_4_reg_4789;
    end else begin
        grp_fu_1634_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1634_p1 = mul8_21_2_reg_5684;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1634_p1 = mul8_13_2_reg_5604;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1634_p1 = mul8_5_2_reg_5509;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1634_p1 = mul8_21_1_reg_5429;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1634_p1 = mul8_13_1_reg_5349;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1634_p1 = mul8_5_1_reg_5239;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1634_p1 = mul8_4_1_reg_4794;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1634_p1 = 64'd0;
    end else begin
        grp_fu_1634_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1639_p0 = add11_26_1_reg_5939;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1639_p0 = add11_22_1_reg_5914;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1639_p0 = add11_14_1_reg_5874;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1639_p0 = add11_6_1_reg_5834;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1639_p0 = add11_26_reg_5774;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1639_p0 = add11_22_reg_5709;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1639_p0 = add11_14_reg_5629;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1639_p0 = add11_6_reg_5549;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1639_p0 = mul8_30_reg_5299;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1639_p0 = mul8_22_reg_5164;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1639_p0 = mul8_14_reg_5029;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1639_p0 = mul8_6_reg_4884;
    end else begin
        grp_fu_1639_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1639_p1 = mul8_26_2_reg_5744;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1639_p1 = mul8_22_2_reg_5689;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1639_p1 = mul8_14_2_reg_5609;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1639_p1 = mul8_6_2_reg_5514;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1639_p1 = mul8_26_1_reg_5464;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1639_p1 = mul8_22_1_reg_5444;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1639_p1 = mul8_14_1_reg_5399;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1639_p1 = mul8_6_1_reg_5319;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1639_p1 = 64'd0;
    end else begin
        grp_fu_1639_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1644_p0 = add11_27_1_reg_5944;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1644_p0 = add11_23_1_reg_5919;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1644_p0 = add11_15_1_reg_5879;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1644_p0 = add11_7_1_reg_5839;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1644_p0 = add11_27_reg_5779;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1644_p0 = add11_23_reg_5714;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1644_p0 = add11_15_reg_5634;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1644_p0 = add11_7_reg_5554;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1644_p0 = mul8_31_reg_5304;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1644_p0 = mul8_23_reg_5169;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1644_p0 = mul8_15_reg_5034;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1644_p0 = mul8_7_reg_4889;
    end else begin
        grp_fu_1644_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1644_p1 = mul8_27_2_reg_5749;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1644_p1 = mul8_23_2_reg_5719;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1644_p1 = mul8_15_2_reg_5639;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1644_p1 = mul8_7_2_reg_5559;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1644_p1 = mul8_27_1_reg_5519;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1644_p1 = mul8_23_1_reg_5449;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1644_p1 = mul8_15_1_reg_5404;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1644_p1 = mul8_7_1_reg_5324;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1644_p1 = 64'd0;
    end else begin
        grp_fu_1644_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1649_p0 = add11_29_1_reg_5949;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1649_p0 = add11_24_1_reg_5924;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1649_p0 = add11_16_1_reg_5884;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1649_p0 = add11_8_1_reg_5844;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1649_p0 = add11_s_reg_5804;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1649_p0 = add11_29_reg_5784;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1649_p0 = add11_24_reg_5724;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1649_p0 = add11_16_reg_5644;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1649_p0 = add11_8_reg_5564;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1649_p0 = mul8_24_reg_5179;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1649_p0 = mul8_16_reg_5044;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1649_p0 = mul8_8_reg_4899;
    end else begin
        grp_fu_1649_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1649_p1 = mul8_29_2_reg_5764;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1649_p1 = mul8_24_2_reg_5729;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1649_p1 = mul8_16_2_reg_5649;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1649_p1 = mul8_8_2_reg_5569;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1649_p1 = mul8_43_reg_4764_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1649_p1 = mul8_29_1_reg_5474;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1649_p1 = mul8_24_1_reg_5454;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1649_p1 = mul8_16_1_reg_5409;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1649_p1 = mul8_8_1_reg_5329;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1649_p1 = 64'd0;
    end else begin
        grp_fu_1649_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1654_p0 = add11_30_1_reg_5954;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1654_p0 = add11_25_1_reg_5929;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1654_p0 = add11_17_1_reg_5889;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1654_p0 = add11_9_1_reg_5849;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1654_p0 = add11_1_1_reg_5809;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1654_p0 = add11_30_reg_5789;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1654_p0 = add11_25_reg_5734;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1654_p0 = add11_17_reg_5654;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1654_p0 = add11_9_reg_5574;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1654_p0 = mul8_25_reg_5189;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1654_p0 = mul8_17_reg_5054;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1654_p0 = mul8_9_reg_4909;
    end else begin
        grp_fu_1654_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1654_p1 = mul8_30_2_reg_5769;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1654_p1 = mul8_25_2_reg_5739;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1654_p1 = mul8_17_2_reg_5659;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1654_p1 = mul8_9_2_reg_5579;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1654_p1 = mul8_1_2_reg_5489;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1654_p1 = mul8_30_1_reg_5524;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1654_p1 = mul8_25_1_reg_5459;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1654_p1 = mul8_17_1_reg_5414;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1654_p1 = mul8_9_1_reg_5334;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1654_p1 = 64'd0;
    end else begin
        grp_fu_1654_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1659_p0 = add11_31_1_reg_5959;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1659_p0 = add11_28_1_reg_5934;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1659_p0 = add11_20_1_reg_5894;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1659_p0 = add11_12_1_reg_5854;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1659_p0 = add11_4_1_reg_5814;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1659_p0 = add11_31_reg_5794;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1659_p0 = add11_28_reg_5754;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1659_p0 = add11_20_reg_5674;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1659_p0 = add11_12_reg_5594;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1659_p0 = mul8_28_reg_5209;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1659_p0 = mul8_20_reg_5074;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1659_p0 = mul8_12_reg_4929;
    end else begin
        grp_fu_1659_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1659_p1 = mul8_31_2_reg_5799;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1659_p1 = mul8_28_2_reg_5759;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1659_p1 = mul8_20_2_reg_5679;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1659_p1 = mul8_12_2_reg_5599;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1659_p1 = mul8_4_2_reg_4799_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1659_p1 = mul8_31_1_reg_5529;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1659_p1 = mul8_28_1_reg_5469;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1659_p1 = mul8_20_1_reg_5424;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1659_p1 = mul8_12_1_reg_5344;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1659_p1 = 64'd0;
    end else begin
        grp_fu_1659_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1664_p0 = bitcast_ln85_71_fu_3519_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1664_p0 = bitcast_ln85_47_fu_3479_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1664_p0 = bitcast_ln85_23_fu_3429_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1664_p0 = bitcast_ln85_5_fu_3309_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1664_p0 = bitcast_ln85_58_fu_3189_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1664_p0 = bitcast_ln85_34_fu_3069_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1664_p0 = bitcast_ln85_10_fu_2949_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1664_p0 = bitcast_ln85_4_fu_2869_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1664_p0 = bitcast_ln85_54_fu_2789_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1664_p0 = bitcast_ln85_30_fu_2709_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1664_p0 = bitcast_ln85_6_fu_2529_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1664_p0 = bitcast_ln85_fu_2122_p1;
    end else begin
        grp_fu_1664_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1664_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_1664_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1664_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_1664_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1668_p0 = bitcast_ln85_74_fu_3524_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1668_p0 = bitcast_ln85_50_fu_3484_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1668_p0 = bitcast_ln85_26_fu_3434_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1668_p0 = bitcast_ln85_8_fu_3314_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1668_p0 = bitcast_ln85_67_fu_3194_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1668_p0 = bitcast_ln85_43_fu_3074_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1668_p0 = bitcast_ln85_19_fu_2954_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1668_p0 = bitcast_ln85_7_fu_2874_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1668_p0 = bitcast_ln85_57_fu_2794_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1668_p0 = bitcast_ln85_33_fu_2714_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1668_p0 = bitcast_ln85_9_fu_2534_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1668_p0 = bitcast_ln85_1_fu_2127_p1;
    end else begin
        grp_fu_1668_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1668_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1668_p1 = output_differences_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1668_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_1668_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1672_p0 = bitcast_ln85_77_fu_3529_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1672_p0 = bitcast_ln85_53_fu_3489_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1672_p0 = bitcast_ln85_29_fu_3439_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1672_p0 = bitcast_ln85_11_fu_3319_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1672_p0 = bitcast_ln85_70_fu_3199_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1672_p0 = bitcast_ln85_46_fu_3079_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1672_p0 = bitcast_ln85_22_fu_2959_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1672_p0 = bitcast_ln85_16_fu_2879_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1672_p0 = bitcast_ln85_63_fu_2799_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1672_p0 = bitcast_ln85_39_fu_2719_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1672_p0 = bitcast_ln85_15_fu_2539_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1672_p0 = bitcast_ln85_2_fu_2132_p1;
    end else begin
        grp_fu_1672_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_1672_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1672_p1 = output_differences_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1672_p1 = output_differences_0_2_val;
    end else begin
        grp_fu_1672_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1676_p0 = bitcast_ln85_80_fu_3534_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1676_p0 = bitcast_ln85_56_fu_3494_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1676_p0 = bitcast_ln85_32_fu_3444_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1676_p0 = bitcast_ln85_17_fu_3324_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1676_p0 = bitcast_ln85_73_fu_3204_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1676_p0 = bitcast_ln85_49_fu_3084_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1676_p0 = bitcast_ln85_25_fu_2964_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1676_p0 = bitcast_ln85_78_fu_2884_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1676_p0 = bitcast_ln85_66_fu_2804_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1676_p0 = bitcast_ln85_42_fu_2724_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1676_p0 = bitcast_ln85_18_fu_2544_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1676_p0 = bitcast_ln85_3_fu_2338_p1;
    end else begin
        grp_fu_1676_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1676_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1676_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1676_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_1676_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1680_p0 = bitcast_ln85_83_fu_3539_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1680_p0 = bitcast_ln85_59_fu_3499_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1680_p0 = bitcast_ln85_35_fu_3449_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1680_p0 = bitcast_ln85_20_fu_3329_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1680_p0 = bitcast_ln85_76_fu_3209_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1680_p0 = bitcast_ln85_52_fu_3089_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1680_p0 = bitcast_ln85_28_fu_2969_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1680_p0 = bitcast_ln85_81_fu_2889_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1680_p0 = bitcast_ln85_69_fu_2809_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1680_p0 = bitcast_ln85_45_fu_2729_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1680_p0 = bitcast_ln85_21_fu_2549_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1680_p0 = bitcast_ln85_12_fu_2343_p1;
    end else begin
        grp_fu_1680_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1680_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1680_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1680_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_1680_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1684_p0 = bitcast_ln85_86_fu_3544_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1684_p0 = bitcast_ln85_62_fu_3504_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1684_p0 = bitcast_ln85_38_fu_3454_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1684_p0 = bitcast_ln85_82_fu_3334_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1684_p0 = bitcast_ln85_79_fu_3214_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1684_p0 = bitcast_ln85_55_fu_3094_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1684_p0 = bitcast_ln85_31_fu_2974_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1684_p0 = bitcast_ln85_87_fu_2894_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1684_p0 = bitcast_ln85_72_fu_2814_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1684_p0 = bitcast_ln85_48_fu_2734_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1684_p0 = bitcast_ln85_24_fu_2554_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1684_p0 = bitcast_ln85_13_fu_2348_p1;
    end else begin
        grp_fu_1684_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1684_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1684_p1 = output_differences_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1684_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_1684_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1688_p0 = bitcast_ln85_89_fu_3549_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1688_p0 = bitcast_ln85_65_fu_3509_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1688_p0 = bitcast_ln85_41_fu_3459_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1688_p0 = bitcast_ln85_91_fu_3339_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1688_p0 = bitcast_ln85_85_fu_3219_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1688_p0 = bitcast_ln85_61_fu_3099_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1688_p0 = bitcast_ln85_37_fu_2979_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1688_p0 = bitcast_ln85_90_fu_2899_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1688_p0 = bitcast_ln85_75_fu_2819_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1688_p0 = bitcast_ln85_51_fu_2739_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1688_p0 = bitcast_ln85_27_fu_2559_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1688_p0 = bitcast_ln85_14_fu_2353_p1;
    end else begin
        grp_fu_1688_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1688_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1688_p1 = output_differences_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1688_p1 = output_differences_0_2_val;
    end else begin
        grp_fu_1688_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1692_p0 = bitcast_ln85_95_fu_3559_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1692_p0 = bitcast_ln85_92_fu_3554_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1692_p0 = bitcast_ln85_68_fu_3514_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1692_p0 = bitcast_ln85_44_fu_3464_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1692_p0 = bitcast_ln85_94_fu_3344_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1692_p0 = bitcast_ln85_88_fu_3224_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1692_p0 = bitcast_ln85_64_fu_3104_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1692_p0 = bitcast_ln85_40_fu_2984_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1692_p0 = bitcast_ln85_93_fu_2904_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1692_p0 = bitcast_ln85_84_fu_2824_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1692_p0 = bitcast_ln85_60_fu_2744_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1692_p0 = bitcast_ln85_36_fu_2564_p1;
    end else begin
        grp_fu_1692_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1692_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1692_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1692_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_1692_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1696_p0 = add11_30_2_reg_6114;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1696_p0 = add11_27_2_reg_6104;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1696_p0 = add11_24_2_reg_6084;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1696_p0 = add11_21_2_reg_6069;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1696_p0 = add11_18_2_reg_6059;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1696_p0 = add11_15_2_reg_6039;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1696_p0 = add11_12_2_reg_6014;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1696_p0 = add11_9_2_reg_6009;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1696_p0 = add11_6_2_reg_5994;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1696_p0 = add11_2_2_reg_5979;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1696_p0 = add11_43_reg_5964;
    end else begin
        grp_fu_1696_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1696_p1 = dactivations_2_load_7_reg_4504_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1696_p1 = dactivations_3_load_6_reg_4489_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1696_p1 = dactivations_0_load_6_reg_4474_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1696_p1 = dactivations_1_load_5_reg_4357_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1696_p1 = dactivations_2_load_4_reg_4342_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1696_p1 = dactivations_3_load_3_reg_4157_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1696_p1 = dactivations_0_load_3_reg_4142_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1696_p1 = dactivations_1_load_2_reg_4127_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1696_p1 = dactivations_2_load_1_reg_3941_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1696_p1 = dactivations_2_load_reg_3921_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1696_p1 = dactivations_0_load_reg_3768_pp0_iter2_reg;
    end else begin
        grp_fu_1696_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1700_p0 = add11_31_2_reg_6119;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1700_p0 = add11_28_2_reg_6094;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1700_p0 = add11_25_2_reg_6089;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1700_p0 = add11_22_2_reg_6074;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1700_p0 = add11_19_2_reg_6064;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1700_p0 = add11_16_2_reg_6044;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1700_p0 = add11_13_2_reg_6029;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1700_p0 = add11_10_2_reg_6019;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1700_p0 = add11_7_2_reg_5999;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1700_p0 = add11_3_2_reg_5984;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1700_p0 = add11_1_2_reg_5969;
    end else begin
        grp_fu_1700_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1700_p1 = dactivations_3_load_7_reg_4509_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1700_p1 = dactivations_0_load_7_reg_4494_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1700_p1 = dactivations_1_load_6_reg_4479_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1700_p1 = dactivations_2_load_5_reg_4362_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1700_p1 = dactivations_3_load_4_reg_4347_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1700_p1 = dactivations_0_load_4_reg_4332_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1700_p1 = dactivations_1_load_3_reg_4147_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1700_p1 = dactivations_2_load_2_reg_4132_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1700_p1 = dactivations_3_load_1_reg_3946_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1700_p1 = dactivations_3_load_reg_3926_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1700_p1 = dactivations_1_load_reg_3916_pp0_iter2_reg;
    end else begin
        grp_fu_1700_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1704_p0 = add11_29_2_reg_6109;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1704_p0 = add11_26_2_reg_6099;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1704_p0 = add11_23_2_reg_6079;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1704_p0 = add11_20_2_reg_6054;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1704_p0 = add11_17_2_reg_6049;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1704_p0 = add11_14_2_reg_6034;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1704_p0 = add11_11_2_reg_6024;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1704_p0 = add11_8_2_reg_6004;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1704_p0 = add11_5_2_reg_5989;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1704_p0 = add11_4_2_reg_5974;
    end else begin
        grp_fu_1704_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1704_p1 = dactivations_1_load_7_reg_4499_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1704_p1 = dactivations_2_load_6_reg_4484_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1704_p1 = dactivations_3_load_5_reg_4367_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1704_p1 = dactivations_0_load_5_reg_4352_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1704_p1 = dactivations_1_load_4_reg_4337_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1704_p1 = dactivations_2_load_3_reg_4152_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1704_p1 = dactivations_3_load_2_reg_4137_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1704_p1 = dactivations_0_load_2_reg_4122_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1704_p1 = dactivations_1_load_1_reg_3936_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1704_p1 = dactivations_0_load_1_reg_3931_pp0_iter2_reg;
    end else begin
        grp_fu_1704_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_0_address0_local = zext_ln83_7_reg_4218_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_0_address0_local = zext_ln83_6_reg_4184_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        oracle_activations_0_address0_local = zext_ln83_4_reg_3994_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        oracle_activations_0_address0_local = zext_ln83_1_reg_3715_pp0_iter3_reg;
    end else begin
        oracle_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            oracle_activations_0_address1_local = zext_ln83_5_reg_4028_pp0_iter3_reg;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            oracle_activations_0_address1_local = zext_ln83_3_reg_3842_pp0_iter3_reg;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            oracle_activations_0_address1_local = zext_ln83_2_reg_3808_pp0_iter3_reg;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            oracle_activations_0_address1_local = zext_ln81_reg_3621_pp0_iter3_reg;
        end else begin
            oracle_activations_0_address1_local = 'bx;
        end
    end else begin
        oracle_activations_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_0_ce0_local = 1'b1;
    end else begin
        oracle_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        oracle_activations_0_ce1_local = 1'b1;
    end else begin
        oracle_activations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_0_d0_local = reg_1740;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_0_d0_local = reg_1749;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        oracle_activations_0_d0_local = reg_1757;
    end else begin
        oracle_activations_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        oracle_activations_0_d1_local = reg_1757;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        oracle_activations_0_d1_local = reg_1740;
    end else begin
        oracle_activations_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_0_we0_local = 1'b1;
    end else begin
        oracle_activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        oracle_activations_0_we1_local = 1'b1;
    end else begin
        oracle_activations_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_1_address0_local = zext_ln83_7_reg_4218_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_1_address0_local = zext_ln83_6_reg_4184_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        oracle_activations_1_address0_local = zext_ln83_5_reg_4028_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        oracle_activations_1_address0_local = zext_ln83_4_reg_3994_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        oracle_activations_1_address0_local = zext_ln83_3_reg_3842_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        oracle_activations_1_address0_local = zext_ln83_2_reg_3808_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        oracle_activations_1_address0_local = zext_ln83_1_reg_3715_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        oracle_activations_1_address0_local = zext_ln81_reg_3621_pp0_iter3_reg;
    end else begin
        oracle_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_1_ce0_local = 1'b1;
    end else begin
        oracle_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        oracle_activations_1_d0_local = reg_1740;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_1_d0_local = reg_1757;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        oracle_activations_1_d0_local = reg_1749;
    end else begin
        oracle_activations_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_1_we0_local = 1'b1;
    end else begin
        oracle_activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_2_address0_local = zext_ln83_7_reg_4218_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_2_address0_local = zext_ln83_6_reg_4184_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        oracle_activations_2_address0_local = zext_ln83_5_reg_4028_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        oracle_activations_2_address0_local = zext_ln83_4_reg_3994_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        oracle_activations_2_address0_local = zext_ln83_3_reg_3842_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        oracle_activations_2_address0_local = zext_ln83_2_reg_3808_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        oracle_activations_2_address0_local = zext_ln83_1_reg_3715_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        oracle_activations_2_address0_local = zext_ln81_reg_3621_pp0_iter3_reg;
    end else begin
        oracle_activations_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        oracle_activations_2_ce0_local = 1'b1;
    end else begin
        oracle_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        oracle_activations_2_d0_local = reg_1757;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        oracle_activations_2_d0_local = reg_1749;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        oracle_activations_2_d0_local = reg_1740;
    end else begin
        oracle_activations_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        oracle_activations_2_we0_local = 1'b1;
    end else begin
        oracle_activations_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_3_address0_local = zext_ln83_7_reg_4218_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_3_address0_local = zext_ln83_6_reg_4184_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        oracle_activations_3_address0_local = zext_ln83_5_reg_4028_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        oracle_activations_3_address0_local = zext_ln83_4_reg_3994_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        oracle_activations_3_address0_local = zext_ln83_3_reg_3842_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        oracle_activations_3_address0_local = zext_ln83_2_reg_3808_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        oracle_activations_3_address0_local = zext_ln83_1_reg_3715_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        oracle_activations_3_address0_local = zext_ln81_reg_3621_pp0_iter3_reg;
    end else begin
        oracle_activations_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_3_ce0_local = 1'b1;
    end else begin
        oracle_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_3_d0_local = reg_1740;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        oracle_activations_3_d0_local = reg_1757;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        oracle_activations_3_d0_local = reg_1749;
    end else begin
        oracle_activations_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_3_we0_local = 1'b1;
    end else begin
        oracle_activations_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_0_address0_local = zext_ln87_30_fu_3424_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_0_address0_local = zext_ln87_22_fu_3304_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_0_address0_local = zext_ln87_14_fu_3184_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_0_address0_local = zext_ln87_6_fu_3064_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_0_address0_local = zext_ln85_23_fu_2944_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_0_address0_local = zext_ln85_17_fu_2864_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_0_address0_local = zext_ln85_11_fu_2784_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_0_address0_local = zext_ln85_5_fu_2604_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_0_address0_local = zext_ln87_28_fu_2524_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_0_address0_local = zext_ln87_20_fu_2333_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address0_local = zext_ln87_12_fu_2117_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_0_address0_local = zext_ln87_4_fu_1920_p1;
        end else begin
            weights3_0_address0_local = 'bx;
        end
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_0_address1_local = zext_ln87_26_fu_3384_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_0_address1_local = zext_ln87_18_fu_3264_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_0_address1_local = zext_ln87_10_fu_3144_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_0_address1_local = zext_ln87_1_fu_3024_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_0_address1_local = zext_ln85_20_fu_2924_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_0_address1_local = zext_ln85_14_fu_2844_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_0_address1_local = zext_ln85_8_fu_2764_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_0_address1_local = zext_ln85_2_fu_2584_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_0_address1_local = zext_ln87_24_fu_2479_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_0_address1_local = zext_ln87_16_fu_2276_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address1_local = zext_ln87_8_fu_2070_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_0_address1_local = zext_ln85_fu_1818_p1;
        end else begin
            weights3_0_address1_local = 'bx;
        end
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_1_address0_local = zext_ln87_29_fu_3404_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_1_address0_local = zext_ln87_21_fu_3284_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_1_address0_local = zext_ln87_13_fu_3164_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_1_address0_local = zext_ln87_5_fu_3044_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_1_address0_local = zext_ln87_28_reg_4226;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_1_address0_local = zext_ln87_20_reg_4036;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_1_address0_local = zext_ln87_12_reg_3850;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_1_address0_local = zext_ln85_25_fu_2704_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_1_address0_local = zext_ln87_23_fu_2453_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_1_address0_local = zext_ln87_15_fu_2232_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address0_local = zext_ln87_7_fu_2025_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_1_address0_local = zext_ln87_4_fu_1920_p1;
        end else begin
            weights3_1_address0_local = 'bx;
        end
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_1_address1_local = zext_ln87_25_fu_3364_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_1_address1_local = zext_ln87_17_fu_3244_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_1_address1_local = zext_ln87_9_fu_3124_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_1_address1_local = zext_ln87_fu_3004_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_1_address1_local = zext_ln87_24_reg_4192;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_1_address1_local = zext_ln87_16_reg_4002;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_1_address1_local = zext_ln87_8_reg_3816;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_1_address1_local = zext_ln87_27_fu_2644_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_1_address1_local = zext_ln87_19_fu_2393_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_1_address1_local = zext_ln87_11_fu_2172_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address1_local = zext_ln87_2_fu_1962_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_1_address1_local = zext_ln85_fu_1818_p1;
        end else begin
            weights3_1_address1_local = 'bx;
        end
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_2_address0_local = zext_ln87_28_reg_4226;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_2_address0_local = zext_ln87_20_reg_4036;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_2_address0_local = zext_ln87_12_reg_3850;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_2_address0_local = zext_ln85_25_reg_4388;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_2_address0_local = zext_ln87_23_reg_4178;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_2_address0_local = zext_ln87_15_reg_3982;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_2_address0_local = zext_ln87_7_reg_3797;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_2_address0_local = zext_ln85_24_fu_2684_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_2_address0_local = zext_ln85_18_fu_2433_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_2_address0_local = zext_ln85_12_fu_2212_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_2_address0_local = zext_ln85_6_fu_2005_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_2_address0_local = zext_ln87_4_fu_1920_p1;
        end else begin
            weights3_2_address0_local = 'bx;
        end
    end else begin
        weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_2_address1_local = zext_ln87_24_reg_4192;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_2_address1_local = zext_ln87_16_reg_4002;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_2_address1_local = zext_ln87_8_reg_3816;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_2_address1_local = zext_ln87_27_reg_4377;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_2_address1_local = zext_ln87_19_reg_4167;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_2_address1_local = zext_ln87_11_reg_3971;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_2_address1_local = zext_ln87_2_reg_3778;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_2_address1_local = zext_ln85_21_fu_2624_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_2_address1_local = zext_ln85_15_fu_2373_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_2_address1_local = zext_ln85_9_fu_2152_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_2_address1_local = zext_ln85_3_fu_1942_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_2_address1_local = zext_ln85_fu_1818_p1;
        end else begin
            weights3_2_address1_local = 'bx;
        end
    end else begin
        weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce1_local = 1'b1;
    end else begin
        weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_address0_local = zext_ln85_25_reg_4388;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_3_address0_local = zext_ln87_27_reg_4377;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_3_address0_local = zext_ln87_19_reg_4167;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_3_address0_local = zext_ln87_11_reg_3971;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_3_address0_local = zext_ln85_24_reg_4383;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_3_address0_local = zext_ln85_21_reg_4372;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_3_address0_local = zext_ln85_15_reg_4162;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_3_address0_local = zext_ln85_9_reg_3966;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_3_address0_local = zext_ln85_22_fu_2664_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_3_address0_local = zext_ln85_19_fu_2499_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_3_address0_local = zext_ln85_13_fu_2296_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_address0_local = zext_ln85_7_fu_2090_p1;
    end else begin
        weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_3_address1_local = zext_ln87_23_reg_4178;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_3_address1_local = zext_ln87_15_reg_3982;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_3_address1_local = zext_ln87_7_reg_3797;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_3_address1_local = zext_ln87_2_reg_3778;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_3_address1_local = zext_ln85_18_reg_4173;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_3_address1_local = zext_ln85_12_reg_3977;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_3_address1_local = zext_ln85_6_reg_3792;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_3_address1_local = zext_ln85_3_reg_3773;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_3_address1_local = zext_ln85_16_fu_2413_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_3_address1_local = zext_ln85_10_fu_2192_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_3_address1_local = zext_ln85_4_fu_1985_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_3_address1_local = zext_ln85_1_fu_1871_p1;
        end else begin
            weights3_3_address1_local = 'bx;
        end
    end else begin
        weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce1_local = 1'b1;
    end else begin
        weights3_3_ce1_local = 1'b0;
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln82_fu_3469_p2 = (i_11_reg_3607 + 7'd32);
assign add_ln85_10_fu_2111_p2 = (zext_ln87_3_fu_1967_p1 + 6'd6);
assign add_ln85_11_fu_2769_p2 = (empty_reg_3649 + 8'd37);
assign add_ln85_12_fu_3149_p2 = (empty_reg_3649 + 8'd38);
assign add_ln85_13_fu_3169_p2 = (empty_reg_3649 + 8'd41);
assign add_ln85_14_fu_2271_p2 = (zext_ln87_3_reg_3784 + 6'd9);
assign add_ln85_15_fu_2829_p2 = (empty_reg_3649 + 8'd49);
assign add_ln85_16_fu_3229_p2 = (empty_reg_3649 + 8'd50);
assign add_ln85_17_fu_3249_p2 = (empty_reg_3649 + 8'd53);
assign add_ln85_18_fu_2328_p2 = (zext_ln87_3_reg_3784 + 6'd12);
assign add_ln85_19_fu_2849_p2 = (empty_reg_3649 + 8'd61);
assign add_ln85_1_fu_2989_p2 = (empty_reg_3649 + 8'd2);
assign add_ln85_20_fu_3269_p2 = (empty_reg_3649 + 8'd62);
assign add_ln85_21_fu_3289_p2 = (empty_reg_3649 + 8'd65);
assign add_ln85_22_fu_2474_p2 = (zext_ln87_3_reg_3784 + 6'd15);
assign add_ln85_23_fu_2909_p2 = (empty_reg_3649 + 8'd73);
assign add_ln85_24_fu_3349_p2 = (empty_reg_3649 + 8'd74);
assign add_ln85_25_fu_3369_p2 = (empty_reg_3649 + 8'd77);
assign add_ln85_26_fu_2519_p2 = (zext_ln87_3_reg_3784 + 6'd18);
assign add_ln85_27_fu_2929_p2 = (empty_reg_3649 + 8'd85);
assign add_ln85_28_fu_3389_p2 = (empty_reg_3649 + 8'd86);
assign add_ln85_29_fu_3409_p2 = (empty_reg_3649 + 8'd89);
assign add_ln85_2_fu_3009_p2 = (empty_reg_3649 + 8'd5);
assign add_ln85_3_fu_2589_p2 = (empty_reg_3649 + 8'd13);
assign add_ln85_4_fu_3029_p2 = (empty_reg_3649 + 8'd14);
assign add_ln85_5_fu_3049_p2 = (empty_reg_3649 + 8'd17);
assign add_ln85_6_fu_2064_p2 = (zext_ln87_3_fu_1967_p1 + 6'd3);
assign add_ln85_7_fu_2749_p2 = (empty_reg_3649 + 8'd25);
assign add_ln85_8_fu_3109_p2 = (empty_reg_3649 + 8'd26);
assign add_ln85_9_fu_3129_p2 = (empty_reg_3649 + 8'd29);
assign add_ln85_fu_2569_p2 = (empty_reg_3649 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_ready = ap_ready_sig;
assign bitcast_ln85_10_fu_2949_p1 = reg_1716;
assign bitcast_ln85_11_fu_3319_p1 = reg_1720;
assign bitcast_ln85_12_fu_2343_p1 = reg_1724;
assign bitcast_ln85_13_fu_2348_p1 = reg_1728;
assign bitcast_ln85_14_fu_2353_p1 = reg_1732;
assign bitcast_ln85_15_fu_2539_p1 = reg_1720;
assign bitcast_ln85_16_fu_2879_p1 = reg_1724;
assign bitcast_ln85_17_fu_3324_p1 = reg_1728;
assign bitcast_ln85_18_fu_2544_p1 = reg_1732;
assign bitcast_ln85_19_fu_2954_p1 = reg_1720;
assign bitcast_ln85_1_fu_2127_p1 = reg_1712;
assign bitcast_ln85_20_fu_3329_p1 = reg_1724;
assign bitcast_ln85_21_fu_2549_p1 = reg_1728;
assign bitcast_ln85_22_fu_2959_p1 = reg_1732;
assign bitcast_ln85_23_fu_3429_p1 = reg_1720;
assign bitcast_ln85_24_fu_2554_p1 = reg_1708;
assign bitcast_ln85_25_fu_2964_p1 = reg_1712;
assign bitcast_ln85_26_fu_3434_p1 = reg_1716;
assign bitcast_ln85_27_fu_2559_p1 = reg_1736;
assign bitcast_ln85_28_fu_2969_p1 = reg_1708;
assign bitcast_ln85_29_fu_3439_p1 = reg_1712;
assign bitcast_ln85_2_fu_2132_p1 = reg_1716;
assign bitcast_ln85_30_fu_2709_p1 = reg_1716;
assign bitcast_ln85_31_fu_2974_p1 = reg_1736;
assign bitcast_ln85_32_fu_3444_p1 = reg_1708;
assign bitcast_ln85_33_fu_2714_p1 = reg_1712;
assign bitcast_ln85_34_fu_3069_p1 = reg_1716;
assign bitcast_ln85_35_fu_3449_p1 = reg_1736;
assign bitcast_ln85_36_fu_2564_p1 = reg_1724;
assign bitcast_ln85_37_fu_2979_p1 = reg_1728;
assign bitcast_ln85_38_fu_3454_p1 = reg_1732;
assign bitcast_ln85_39_fu_2719_p1 = reg_1720;
assign bitcast_ln85_3_fu_2338_p1 = reg_1720;
assign bitcast_ln85_40_fu_2984_p1 = reg_1724;
assign bitcast_ln85_41_fu_3459_p1 = reg_1728;
assign bitcast_ln85_42_fu_2724_p1 = reg_1732;
assign bitcast_ln85_43_fu_3074_p1 = reg_1720;
assign bitcast_ln85_44_fu_3464_p1 = reg_1724;
assign bitcast_ln85_45_fu_2729_p1 = reg_1728;
assign bitcast_ln85_46_fu_3079_p1 = reg_1732;
assign bitcast_ln85_47_fu_3479_p1 = reg_1720;
assign bitcast_ln85_48_fu_2734_p1 = reg_1708;
assign bitcast_ln85_49_fu_3084_p1 = reg_1712;
assign bitcast_ln85_4_fu_2869_p1 = reg_1708;
assign bitcast_ln85_50_fu_3484_p1 = reg_1716;
assign bitcast_ln85_51_fu_2739_p1 = reg_1736;
assign bitcast_ln85_52_fu_3089_p1 = reg_1708;
assign bitcast_ln85_53_fu_3489_p1 = reg_1712;
assign bitcast_ln85_54_fu_2789_p1 = reg_1716;
assign bitcast_ln85_55_fu_3094_p1 = reg_1736;
assign bitcast_ln85_56_fu_3494_p1 = reg_1708;
assign bitcast_ln85_57_fu_2794_p1 = reg_1712;
assign bitcast_ln85_58_fu_3189_p1 = reg_1716;
assign bitcast_ln85_59_fu_3499_p1 = reg_1736;
assign bitcast_ln85_5_fu_3309_p1 = reg_1712;
assign bitcast_ln85_60_fu_2744_p1 = reg_1724;
assign bitcast_ln85_61_fu_3099_p1 = reg_1728;
assign bitcast_ln85_62_fu_3504_p1 = reg_1732;
assign bitcast_ln85_63_fu_2799_p1 = reg_1720;
assign bitcast_ln85_64_fu_3104_p1 = reg_1724;
assign bitcast_ln85_65_fu_3509_p1 = reg_1728;
assign bitcast_ln85_66_fu_2804_p1 = reg_1732;
assign bitcast_ln85_67_fu_3194_p1 = reg_1720;
assign bitcast_ln85_68_fu_3514_p1 = reg_1724;
assign bitcast_ln85_69_fu_2809_p1 = reg_1728;
assign bitcast_ln85_6_fu_2529_p1 = reg_1716;
assign bitcast_ln85_70_fu_3199_p1 = reg_1732;
assign bitcast_ln85_71_fu_3519_p1 = reg_1720;
assign bitcast_ln85_72_fu_2814_p1 = reg_1708;
assign bitcast_ln85_73_fu_3204_p1 = reg_1712;
assign bitcast_ln85_74_fu_3524_p1 = reg_1716;
assign bitcast_ln85_75_fu_2819_p1 = reg_1736;
assign bitcast_ln85_76_fu_3209_p1 = reg_1708;
assign bitcast_ln85_77_fu_3529_p1 = reg_1712;
assign bitcast_ln85_78_fu_2884_p1 = reg_1716;
assign bitcast_ln85_79_fu_3214_p1 = reg_1736;
assign bitcast_ln85_7_fu_2874_p1 = reg_1720;
assign bitcast_ln85_80_fu_3534_p1 = reg_1708;
assign bitcast_ln85_81_fu_2889_p1 = reg_1712;
assign bitcast_ln85_82_fu_3334_p1 = reg_1716;
assign bitcast_ln85_83_fu_3539_p1 = reg_1736;
assign bitcast_ln85_84_fu_2824_p1 = reg_1724;
assign bitcast_ln85_85_fu_3219_p1 = reg_1728;
assign bitcast_ln85_86_fu_3544_p1 = reg_1732;
assign bitcast_ln85_87_fu_2894_p1 = reg_1736;
assign bitcast_ln85_88_fu_3224_p1 = reg_1724;
assign bitcast_ln85_89_fu_3549_p1 = reg_1728;
assign bitcast_ln85_8_fu_3314_p1 = reg_1708;
assign bitcast_ln85_90_fu_2899_p1 = reg_1732;
assign bitcast_ln85_91_fu_3339_p1 = reg_1736;
assign bitcast_ln85_92_fu_3554_p1 = reg_1724;
assign bitcast_ln85_93_fu_2904_p1 = reg_1728;
assign bitcast_ln85_94_fu_3344_p1 = reg_1732;
assign bitcast_ln85_95_fu_3559_p1 = reg_1736;
assign bitcast_ln85_9_fu_2534_p1 = reg_1712;
assign bitcast_ln85_fu_2122_p1 = reg_1708;
assign dactivations_0_address0 = dactivations_0_address0_local;
assign dactivations_0_address1 = dactivations_0_address1_local;
assign dactivations_0_ce0 = dactivations_0_ce0_local;
assign dactivations_0_ce1 = dactivations_0_ce1_local;
assign dactivations_1_address0 = dactivations_1_address0_local;
assign dactivations_1_address1 = dactivations_1_address1_local;
assign dactivations_1_ce0 = dactivations_1_ce0_local;
assign dactivations_1_ce1 = dactivations_1_ce1_local;
assign dactivations_2_address0 = dactivations_2_address0_local;
assign dactivations_2_address1 = dactivations_2_address1_local;
assign dactivations_2_ce0 = dactivations_2_ce0_local;
assign dactivations_2_ce1 = dactivations_2_ce1_local;
assign dactivations_3_address0 = dactivations_3_address0_local;
assign dactivations_3_address1 = dactivations_3_address1_local;
assign dactivations_3_ce0 = dactivations_3_ce0_local;
assign dactivations_3_ce1 = dactivations_3_ce1_local;
assign empty_114_fu_1927_p2 = (empty_reg_3649 + 8'd3);
assign empty_115_fu_1947_p2 = (empty_reg_3649 + 8'd6);
assign empty_116_fu_1970_p2 = (empty_reg_3649 + 8'd12);
assign empty_117_fu_1990_p2 = (empty_reg_3649 + 8'd15);
assign empty_118_fu_2010_p2 = (empty_reg_3649 + 8'd18);
assign empty_119_fu_2075_p2 = (empty_reg_3649 + 8'd24);
assign empty_120_fu_2137_p2 = (empty_reg_3649 + 8'd27);
assign empty_121_fu_2157_p2 = (empty_reg_3649 + 8'd30);
assign empty_122_fu_2177_p2 = (empty_reg_3649 + 8'd36);
assign empty_123_fu_2197_p2 = (empty_reg_3649 + 8'd39);
assign empty_124_fu_2217_p2 = (empty_reg_3649 + 8'd42);
assign empty_125_fu_2281_p2 = (empty_reg_3649 + 8'd48);
assign empty_126_fu_2358_p2 = (empty_reg_3649 + 8'd51);
assign empty_127_fu_2378_p2 = (empty_reg_3649 + 8'd54);
assign empty_128_fu_2398_p2 = (empty_reg_3649 + 8'd60);
assign empty_129_fu_2418_p2 = (empty_reg_3649 + 8'd63);
assign empty_130_fu_2438_p2 = (empty_reg_3649 + 8'd66);
assign empty_131_fu_2484_p2 = (empty_reg_3649 + 8'd72);
assign empty_132_fu_2609_p2 = (empty_reg_3649 + 8'd75);
assign empty_133_fu_2629_p2 = (empty_reg_3649 + 8'd78);
assign empty_134_fu_2649_p2 = (empty_reg_3649 + 8'd84);
assign empty_135_fu_2669_p2 = (empty_reg_3649 + 8'd87);
assign empty_136_fu_2689_p2 = (empty_reg_3649 + 8'd90);
assign empty_fu_1855_p2 = (p_shl_fu_1847_p3 - zext_ln83_fu_1843_p1);
assign grp_fu_3044_p_ce = 1'b1;
assign grp_fu_3044_p_din0 = grp_fu_1624_p0;
assign grp_fu_3044_p_din1 = grp_fu_1624_p1;
assign grp_fu_3044_p_opcode = 2'd0;
assign grp_fu_3048_p_ce = 1'b1;
assign grp_fu_3048_p_din0 = grp_fu_1629_p0;
assign grp_fu_3048_p_din1 = grp_fu_1629_p1;
assign grp_fu_3048_p_opcode = 2'd0;
assign grp_fu_3052_p_ce = 1'b1;
assign grp_fu_3052_p_din0 = grp_fu_1634_p0;
assign grp_fu_3052_p_din1 = grp_fu_1634_p1;
assign grp_fu_3052_p_opcode = 2'd0;
assign grp_fu_3056_p_ce = 1'b1;
assign grp_fu_3056_p_din0 = grp_fu_1639_p0;
assign grp_fu_3056_p_din1 = grp_fu_1639_p1;
assign grp_fu_3056_p_opcode = 2'd0;
assign grp_fu_3060_p_ce = 1'b1;
assign grp_fu_3060_p_din0 = grp_fu_1644_p0;
assign grp_fu_3060_p_din1 = grp_fu_1644_p1;
assign grp_fu_3060_p_opcode = 2'd0;
assign grp_fu_3064_p_ce = 1'b1;
assign grp_fu_3064_p_din0 = grp_fu_1649_p0;
assign grp_fu_3064_p_din1 = grp_fu_1649_p1;
assign grp_fu_3064_p_opcode = 2'd0;
assign grp_fu_3068_p_ce = 1'b1;
assign grp_fu_3068_p_din0 = grp_fu_1654_p0;
assign grp_fu_3068_p_din1 = grp_fu_1654_p1;
assign grp_fu_3068_p_opcode = 2'd0;
assign grp_fu_3072_p_ce = 1'b1;
assign grp_fu_3072_p_din0 = grp_fu_1659_p0;
assign grp_fu_3072_p_din1 = grp_fu_1659_p1;
assign grp_fu_3072_p_opcode = 2'd0;
assign lshr_ln1_fu_1861_p4 = {{empty_fu_1855_p2[7:2]}};
assign lshr_ln85_10_fu_2015_p4 = {{empty_118_fu_2010_p2[7:2]}};
assign lshr_ln85_11_fu_2080_p4 = {{empty_119_fu_2075_p2[7:2]}};
assign lshr_ln85_12_fu_2754_p4 = {{add_ln85_7_fu_2749_p2[7:2]}};
assign lshr_ln85_13_fu_3114_p4 = {{add_ln85_8_fu_3109_p2[7:2]}};
assign lshr_ln85_14_fu_2142_p4 = {{empty_120_fu_2137_p2[7:2]}};
assign lshr_ln85_15_fu_3134_p4 = {{add_ln85_9_fu_3129_p2[7:2]}};
assign lshr_ln85_16_fu_2162_p4 = {{empty_121_fu_2157_p2[7:2]}};
assign lshr_ln85_17_fu_2182_p4 = {{empty_122_fu_2177_p2[7:2]}};
assign lshr_ln85_18_fu_2774_p4 = {{add_ln85_11_fu_2769_p2[7:2]}};
assign lshr_ln85_19_fu_3154_p4 = {{add_ln85_12_fu_3149_p2[7:2]}};
assign lshr_ln85_1_fu_2574_p4 = {{add_ln85_fu_2569_p2[7:2]}};
assign lshr_ln85_20_fu_2202_p4 = {{empty_123_fu_2197_p2[7:2]}};
assign lshr_ln85_21_fu_3174_p4 = {{add_ln85_13_fu_3169_p2[7:2]}};
assign lshr_ln85_22_fu_2222_p4 = {{empty_124_fu_2217_p2[7:2]}};
assign lshr_ln85_23_fu_2286_p4 = {{empty_125_fu_2281_p2[7:2]}};
assign lshr_ln85_24_fu_2834_p4 = {{add_ln85_15_fu_2829_p2[7:2]}};
assign lshr_ln85_25_fu_3234_p4 = {{add_ln85_16_fu_3229_p2[7:2]}};
assign lshr_ln85_26_fu_2363_p4 = {{empty_126_fu_2358_p2[7:2]}};
assign lshr_ln85_27_fu_3254_p4 = {{add_ln85_17_fu_3249_p2[7:2]}};
assign lshr_ln85_28_fu_2383_p4 = {{empty_127_fu_2378_p2[7:2]}};
assign lshr_ln85_29_fu_2403_p4 = {{empty_128_fu_2398_p2[7:2]}};
assign lshr_ln85_2_fu_2994_p4 = {{add_ln85_1_fu_2989_p2[7:2]}};
assign lshr_ln85_30_fu_2854_p4 = {{add_ln85_19_fu_2849_p2[7:2]}};
assign lshr_ln85_31_fu_3274_p4 = {{add_ln85_20_fu_3269_p2[7:2]}};
assign lshr_ln85_32_fu_2423_p4 = {{empty_129_fu_2418_p2[7:2]}};
assign lshr_ln85_33_fu_3294_p4 = {{add_ln85_21_fu_3289_p2[7:2]}};
assign lshr_ln85_34_fu_2443_p4 = {{empty_130_fu_2438_p2[7:2]}};
assign lshr_ln85_35_fu_2489_p4 = {{empty_131_fu_2484_p2[7:2]}};
assign lshr_ln85_36_fu_2914_p4 = {{add_ln85_23_fu_2909_p2[7:2]}};
assign lshr_ln85_37_fu_3354_p4 = {{add_ln85_24_fu_3349_p2[7:2]}};
assign lshr_ln85_38_fu_2614_p4 = {{empty_132_fu_2609_p2[7:2]}};
assign lshr_ln85_39_fu_3374_p4 = {{add_ln85_25_fu_3369_p2[7:2]}};
assign lshr_ln85_3_fu_1932_p4 = {{empty_114_fu_1927_p2[7:2]}};
assign lshr_ln85_40_fu_2634_p4 = {{empty_133_fu_2629_p2[7:2]}};
assign lshr_ln85_41_fu_2654_p4 = {{empty_134_fu_2649_p2[7:2]}};
assign lshr_ln85_42_fu_2934_p4 = {{add_ln85_27_fu_2929_p2[7:2]}};
assign lshr_ln85_43_fu_3394_p4 = {{add_ln85_28_fu_3389_p2[7:2]}};
assign lshr_ln85_44_fu_2674_p4 = {{empty_135_fu_2669_p2[7:2]}};
assign lshr_ln85_45_fu_3414_p4 = {{add_ln85_29_fu_3409_p2[7:2]}};
assign lshr_ln85_46_fu_2694_p4 = {{empty_136_fu_2689_p2[7:2]}};
assign lshr_ln85_4_fu_3014_p4 = {{add_ln85_2_fu_3009_p2[7:2]}};
assign lshr_ln85_5_fu_1952_p4 = {{empty_115_fu_1947_p2[7:2]}};
assign lshr_ln85_6_fu_1975_p4 = {{empty_116_fu_1970_p2[7:2]}};
assign lshr_ln85_7_fu_2594_p4 = {{add_ln85_3_fu_2589_p2[7:2]}};
assign lshr_ln85_8_fu_3034_p4 = {{add_ln85_4_fu_3029_p2[7:2]}};
assign lshr_ln85_9_fu_1995_p4 = {{empty_117_fu_1990_p2[7:2]}};
assign lshr_ln85_s_fu_3054_p4 = {{add_ln85_5_fu_3049_p2[7:2]}};
assign lshr_ln_fu_1782_p4 = {{ap_sig_allocacmp_i_11[5:2]}};
assign or_ln3_fu_1886_p3 = {{tmp_s_fu_1876_p4}, {1'd1}};
assign or_ln4_fu_1912_p3 = {{tmp_38_fu_1902_p4}, {2'd3}};
assign or_ln83_1_fu_2046_p4 = {{{tmp_39_fu_2030_p4}, {1'd1}}, {tmp_26_fu_2039_p3}};
assign or_ln83_2_fu_2095_p3 = {{tmp_39_fu_2030_p4}, {2'd3}};
assign or_ln83_3_fu_2253_p4 = {{{tmp_27_fu_2237_p3}, {1'd1}}, {tmp_40_fu_2244_p4}};
assign or_ln83_4_fu_2308_p5 = {{{{tmp_27_fu_2237_p3}, {1'd1}}, {tmp_28_fu_2301_p3}}, {1'd1}};
assign or_ln83_5_fu_2458_p4 = {{{tmp_27_reg_3988}, {2'd3}}, {tmp_26_reg_3803}};
assign or_ln83_6_fu_2504_p3 = {{tmp_27_reg_3988}, {3'd7}};
assign or_ln_fu_1835_p3 = {{tmp_fu_1825_p4}, {1'd1}};
assign oracle_activations_0_address0 = oracle_activations_0_address0_local;
assign oracle_activations_0_address1 = oracle_activations_0_address1_local;
assign oracle_activations_0_ce0 = oracle_activations_0_ce0_local;
assign oracle_activations_0_ce1 = oracle_activations_0_ce1_local;
assign oracle_activations_0_d0 = oracle_activations_0_d0_local;
assign oracle_activations_0_d1 = oracle_activations_0_d1_local;
assign oracle_activations_0_we0 = oracle_activations_0_we0_local;
assign oracle_activations_0_we1 = oracle_activations_0_we1_local;
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
assign p_shl5_fu_1804_p3 = {{lshr_ln_fu_1782_p4}, {2'd0}};
assign p_shl_fu_1847_p3 = {{tmp_fu_1825_p4}, {3'd4}};
assign sub_ln85_fu_1812_p2 = (p_shl5_fu_1804_p3 - zext_ln81_1_fu_1792_p1);
assign tmp_26_fu_2039_p3 = i_11_reg_3607[32'd2];
assign tmp_27_fu_2237_p3 = i_11_reg_3607[32'd5];
assign tmp_28_fu_2301_p3 = i_11_reg_3607[32'd3];
assign tmp_38_fu_1902_p4 = {{sub_ln85_fu_1812_p2[4:2]}};
assign tmp_39_fu_2030_p4 = {{i_11_reg_3607[5:4]}};
assign tmp_40_fu_2244_p4 = {{i_11_reg_3607[3:2]}};
assign tmp_fu_1825_p4 = {{ap_sig_allocacmp_i_11[5:1]}};
assign tmp_s_fu_1876_p4 = {{ap_sig_allocacmp_i_11[5:3]}};
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
assign zext_ln81_1_fu_1792_p1 = lshr_ln_fu_1782_p4;
assign zext_ln81_fu_1796_p1 = lshr_ln_fu_1782_p4;
assign zext_ln83_1_fu_1894_p1 = or_ln3_fu_1886_p3;
assign zext_ln83_2_fu_2056_p1 = or_ln83_1_fu_2046_p4;
assign zext_ln83_3_fu_2103_p1 = or_ln83_2_fu_2095_p3;
assign zext_ln83_4_fu_2263_p1 = or_ln83_3_fu_2253_p4;
assign zext_ln83_5_fu_2320_p1 = or_ln83_4_fu_2308_p5;
assign zext_ln83_6_fu_2466_p1 = or_ln83_5_fu_2458_p4;
assign zext_ln83_7_fu_2511_p1 = or_ln83_6_fu_2504_p3;
assign zext_ln83_fu_1843_p1 = or_ln_fu_1835_p3;
assign zext_ln85_10_fu_2192_p1 = lshr_ln85_17_fu_2182_p4;
assign zext_ln85_11_fu_2784_p1 = lshr_ln85_18_fu_2774_p4;
assign zext_ln85_12_fu_2212_p1 = lshr_ln85_20_fu_2202_p4;
assign zext_ln85_13_fu_2296_p1 = lshr_ln85_23_fu_2286_p4;
assign zext_ln85_14_fu_2844_p1 = lshr_ln85_24_fu_2834_p4;
assign zext_ln85_15_fu_2373_p1 = lshr_ln85_26_fu_2363_p4;
assign zext_ln85_16_fu_2413_p1 = lshr_ln85_29_fu_2403_p4;
assign zext_ln85_17_fu_2864_p1 = lshr_ln85_30_fu_2854_p4;
assign zext_ln85_18_fu_2433_p1 = lshr_ln85_32_fu_2423_p4;
assign zext_ln85_19_fu_2499_p1 = lshr_ln85_35_fu_2489_p4;
assign zext_ln85_1_fu_1871_p1 = lshr_ln1_fu_1861_p4;
assign zext_ln85_20_fu_2924_p1 = lshr_ln85_36_fu_2914_p4;
assign zext_ln85_21_fu_2624_p1 = lshr_ln85_38_fu_2614_p4;
assign zext_ln85_22_fu_2664_p1 = lshr_ln85_41_fu_2654_p4;
assign zext_ln85_23_fu_2944_p1 = lshr_ln85_42_fu_2934_p4;
assign zext_ln85_24_fu_2684_p1 = lshr_ln85_44_fu_2674_p4;
assign zext_ln85_25_fu_2704_p1 = lshr_ln85_46_fu_2694_p4;
assign zext_ln85_2_fu_2584_p1 = lshr_ln85_1_fu_2574_p4;
assign zext_ln85_3_fu_1942_p1 = lshr_ln85_3_fu_1932_p4;
assign zext_ln85_4_fu_1985_p1 = lshr_ln85_6_fu_1975_p4;
assign zext_ln85_5_fu_2604_p1 = lshr_ln85_7_fu_2594_p4;
assign zext_ln85_6_fu_2005_p1 = lshr_ln85_9_fu_1995_p4;
assign zext_ln85_7_fu_2090_p1 = lshr_ln85_11_fu_2080_p4;
assign zext_ln85_8_fu_2764_p1 = lshr_ln85_12_fu_2754_p4;
assign zext_ln85_9_fu_2152_p1 = lshr_ln85_14_fu_2142_p4;
assign zext_ln85_fu_1818_p1 = sub_ln85_fu_1812_p2;
assign zext_ln87_10_fu_3144_p1 = lshr_ln85_15_fu_3134_p4;
assign zext_ln87_11_fu_2172_p1 = lshr_ln85_16_fu_2162_p4;
assign zext_ln87_12_fu_2117_p1 = add_ln85_10_fu_2111_p2;
assign zext_ln87_13_fu_3164_p1 = lshr_ln85_19_fu_3154_p4;
assign zext_ln87_14_fu_3184_p1 = lshr_ln85_21_fu_3174_p4;
assign zext_ln87_15_fu_2232_p1 = lshr_ln85_22_fu_2222_p4;
assign zext_ln87_16_fu_2276_p1 = add_ln85_14_fu_2271_p2;
assign zext_ln87_17_fu_3244_p1 = lshr_ln85_25_fu_3234_p4;
assign zext_ln87_18_fu_3264_p1 = lshr_ln85_27_fu_3254_p4;
assign zext_ln87_19_fu_2393_p1 = lshr_ln85_28_fu_2383_p4;
assign zext_ln87_1_fu_3024_p1 = lshr_ln85_4_fu_3014_p4;
assign zext_ln87_20_fu_2333_p1 = add_ln85_18_fu_2328_p2;
assign zext_ln87_21_fu_3284_p1 = lshr_ln85_31_fu_3274_p4;
assign zext_ln87_22_fu_3304_p1 = lshr_ln85_33_fu_3294_p4;
assign zext_ln87_23_fu_2453_p1 = lshr_ln85_34_fu_2443_p4;
assign zext_ln87_24_fu_2479_p1 = add_ln85_22_fu_2474_p2;
assign zext_ln87_25_fu_3364_p1 = lshr_ln85_37_fu_3354_p4;
assign zext_ln87_26_fu_3384_p1 = lshr_ln85_39_fu_3374_p4;
assign zext_ln87_27_fu_2644_p1 = lshr_ln85_40_fu_2634_p4;
assign zext_ln87_28_fu_2524_p1 = add_ln85_26_fu_2519_p2;
assign zext_ln87_29_fu_3404_p1 = lshr_ln85_43_fu_3394_p4;
assign zext_ln87_2_fu_1962_p1 = lshr_ln85_5_fu_1952_p4;
assign zext_ln87_30_fu_3424_p1 = lshr_ln85_45_fu_3414_p4;
assign zext_ln87_3_fu_1967_p1 = or_ln4_reg_3723;
assign zext_ln87_4_fu_1920_p1 = or_ln4_fu_1912_p3;
assign zext_ln87_5_fu_3044_p1 = lshr_ln85_8_fu_3034_p4;
assign zext_ln87_6_fu_3064_p1 = lshr_ln85_s_fu_3054_p4;
assign zext_ln87_7_fu_2025_p1 = lshr_ln85_10_fu_2015_p4;
assign zext_ln87_8_fu_2070_p1 = add_ln85_6_fu_2064_p2;
assign zext_ln87_9_fu_3124_p1 = lshr_ln85_13_fu_3114_p4;
assign zext_ln87_fu_3004_p1 = lshr_ln85_2_fu_2994_p4;
always @ (posedge ap_clk) begin
    zext_ln81_reg_3621[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_3621_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_3621_pp0_iter2_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_3621_pp0_iter3_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    empty_reg_3649[0] <= 1'b1;
    zext_ln83_1_reg_3715[0] <= 1'b1;
    zext_ln83_1_reg_3715[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_3715_pp0_iter1_reg[0] <= 1'b1;
    zext_ln83_1_reg_3715_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_3715_pp0_iter2_reg[0] <= 1'b1;
    zext_ln83_1_reg_3715_pp0_iter2_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_3715_pp0_iter3_reg[0] <= 1'b1;
    zext_ln83_1_reg_3715_pp0_iter3_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    or_ln4_reg_3723[1:0] <= 2'b11;
    zext_ln85_3_reg_3773[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln87_2_reg_3778[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln87_3_reg_3784[1:0] <= 2'b11;
    zext_ln87_3_reg_3784[5] <= 1'b0;
    zext_ln85_6_reg_3792[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln87_7_reg_3797[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_3808[1] <= 1'b1;
    zext_ln83_2_reg_3808[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_3808_pp0_iter1_reg[1] <= 1'b1;
    zext_ln83_2_reg_3808_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_3808_pp0_iter2_reg[1] <= 1'b1;
    zext_ln83_2_reg_3808_pp0_iter2_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_3808_pp0_iter3_reg[1] <= 1'b1;
    zext_ln83_2_reg_3808_pp0_iter3_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln87_8_reg_3816[1:0] <= 2'b10;
    zext_ln87_8_reg_3816[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_3842[1:0] <= 2'b11;
    zext_ln83_3_reg_3842[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_3842_pp0_iter1_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_3842_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_3842_pp0_iter2_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_3842_pp0_iter2_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_3842_pp0_iter3_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_3842_pp0_iter3_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln87_12_reg_3850[1:0] <= 2'b01;
    zext_ln87_12_reg_3850[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln85_9_reg_3966[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln87_11_reg_3971[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln85_12_reg_3977[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln87_15_reg_3982[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_4_reg_3994[2] <= 1'b1;
    zext_ln83_4_reg_3994[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_4_reg_3994_pp0_iter1_reg[2] <= 1'b1;
    zext_ln83_4_reg_3994_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_4_reg_3994_pp0_iter2_reg[2] <= 1'b1;
    zext_ln83_4_reg_3994_pp0_iter2_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_4_reg_3994_pp0_iter3_reg[2] <= 1'b1;
    zext_ln83_4_reg_3994_pp0_iter3_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln87_16_reg_4002[1:0] <= 2'b00;
    zext_ln87_16_reg_4002[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_5_reg_4028[0] <= 1'b1;
    zext_ln83_5_reg_4028[2:2] <= 1'b1;
    zext_ln83_5_reg_4028[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_5_reg_4028_pp0_iter1_reg[0] <= 1'b1;
    zext_ln83_5_reg_4028_pp0_iter1_reg[2:2] <= 1'b1;
    zext_ln83_5_reg_4028_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_5_reg_4028_pp0_iter2_reg[0] <= 1'b1;
    zext_ln83_5_reg_4028_pp0_iter2_reg[2:2] <= 1'b1;
    zext_ln83_5_reg_4028_pp0_iter2_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_5_reg_4028_pp0_iter3_reg[0] <= 1'b1;
    zext_ln83_5_reg_4028_pp0_iter3_reg[2:2] <= 1'b1;
    zext_ln83_5_reg_4028_pp0_iter3_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln87_20_reg_4036[1:0] <= 2'b11;
    zext_ln87_20_reg_4036[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln85_15_reg_4162[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln87_19_reg_4167[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln85_18_reg_4173[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln87_23_reg_4178[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_6_reg_4184[2:1] <= 2'b11;
    zext_ln83_6_reg_4184[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_6_reg_4184_pp0_iter1_reg[2:1] <= 2'b11;
    zext_ln83_6_reg_4184_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_6_reg_4184_pp0_iter2_reg[2:1] <= 2'b11;
    zext_ln83_6_reg_4184_pp0_iter2_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_6_reg_4184_pp0_iter3_reg[2:1] <= 2'b11;
    zext_ln83_6_reg_4184_pp0_iter3_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln87_24_reg_4192[1:0] <= 2'b10;
    zext_ln87_24_reg_4192[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_7_reg_4218[2:0] <= 3'b111;
    zext_ln83_7_reg_4218[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_7_reg_4218_pp0_iter1_reg[2:0] <= 3'b111;
    zext_ln83_7_reg_4218_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_7_reg_4218_pp0_iter2_reg[2:0] <= 3'b111;
    zext_ln83_7_reg_4218_pp0_iter2_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_7_reg_4218_pp0_iter3_reg[2:0] <= 3'b111;
    zext_ln83_7_reg_4218_pp0_iter3_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln87_28_reg_4226[1:0] <= 2'b01;
    zext_ln87_28_reg_4226[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln85_21_reg_4372[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln87_27_reg_4377[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln85_24_reg_4383[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln85_25_reg_4388[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 