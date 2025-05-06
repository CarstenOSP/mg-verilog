
module backprop_get_oracle_activations2_62_63_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_q1,weights3_3_address0,weights3_3_ce0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_q1,output_differences_0_0_val,output_differences_0_1_val,output_differences_0_2_val,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_0_address1,oracle_activations_0_ce1,oracle_activations_0_we1,oracle_activations_0_d1,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,oracle_activations_2_address0,oracle_activations_2_ce0,oracle_activations_2_we0,oracle_activations_2_d0,oracle_activations_3_address0,oracle_activations_3_ce0,oracle_activations_3_we0,oracle_activations_3_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_0_address1,dactivations_0_ce1,dactivations_0_q1,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_1_address1,dactivations_1_ce1,dactivations_1_q1,dactivations_2_address0,dactivations_2_ce0,dactivations_2_q0,dactivations_2_address1,dactivations_2_ce1,dactivations_2_q1,dactivations_3_address0,dactivations_3_ce0,dactivations_3_q0,dactivations_3_address1,dactivations_3_ce1,dactivations_3_q1,grp_fu_3044_p_din0,grp_fu_3044_p_din1,grp_fu_3044_p_opcode,grp_fu_3044_p_dout0,grp_fu_3044_p_ce,grp_fu_3048_p_din0,grp_fu_3048_p_din1,grp_fu_3048_p_opcode,grp_fu_3048_p_dout0,grp_fu_3048_p_ce,grp_fu_3052_p_din0,grp_fu_3052_p_din1,grp_fu_3052_p_opcode,grp_fu_3052_p_dout0,grp_fu_3052_p_ce,grp_fu_3056_p_din0,grp_fu_3056_p_din1,grp_fu_3056_p_opcode,grp_fu_3056_p_dout0,grp_fu_3056_p_ce,grp_fu_3060_p_din0,grp_fu_3060_p_din1,grp_fu_3060_p_opcode,grp_fu_3060_p_dout0,grp_fu_3060_p_ce,grp_fu_3064_p_din0,grp_fu_3064_p_din1,grp_fu_3064_p_opcode,grp_fu_3064_p_dout0,grp_fu_3064_p_ce,grp_fu_3068_p_din0,grp_fu_3068_p_din1,grp_fu_3068_p_opcode,grp_fu_3068_p_dout0,grp_fu_3068_p_ce,grp_fu_3072_p_din0,grp_fu_3072_p_din1,grp_fu_3072_p_opcode,grp_fu_3072_p_dout0,grp_fu_3072_p_ce,grp_fu_3116_p_din0,grp_fu_3116_p_din1,grp_fu_3116_p_dout0,grp_fu_3116_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
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
output  [1:0] grp_fu_3060_p_opcode;
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
output  [0:0] grp_fu_3072_p_opcode;
input  [63:0] grp_fu_3072_p_dout0;
output   grp_fu_3072_p_ce;
output  [63:0] grp_fu_3116_p_din0;
output  [63:0] grp_fu_3116_p_din1;
input  [63:0] grp_fu_3116_p_dout0;
output   grp_fu_3116_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] tmp_19_reg_2047;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1000;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1004;
reg   [63:0] reg_1008;
reg   [63:0] reg_1012;
reg   [63:0] reg_1016;
reg   [63:0] reg_1020;
reg   [63:0] reg_1024;
reg   [63:0] reg_1028;
wire   [63:0] grp_fu_988_p2;
reg   [63:0] reg_1032;
wire   [63:0] grp_fu_992_p2;
reg   [63:0] reg_1041;
wire   [63:0] grp_fu_996_p2;
reg   [63:0] reg_1048;
reg   [6:0] i_11_reg_2040;
reg   [0:0] tmp_19_reg_2047_pp0_iter1_reg;
reg   [0:0] tmp_19_reg_2047_pp0_iter2_reg;
reg   [0:0] tmp_19_reg_2047_pp0_iter3_reg;
reg   [0:0] tmp_19_reg_2047_pp0_iter4_reg;
reg   [0:0] tmp_19_reg_2047_pp0_iter5_reg;
reg   [0:0] tmp_19_reg_2047_pp0_iter6_reg;
wire   [63:0] zext_ln81_fu_1086_p1;
reg   [63:0] zext_ln81_reg_2051;
reg   [63:0] zext_ln81_reg_2051_pp0_iter1_reg;
reg   [63:0] zext_ln81_reg_2051_pp0_iter2_reg;
reg   [63:0] zext_ln81_reg_2051_pp0_iter3_reg;
reg   [63:0] zext_ln81_reg_2051_pp0_iter4_reg;
reg   [63:0] zext_ln81_reg_2051_pp0_iter5_reg;
reg   [63:0] zext_ln81_reg_2051_pp0_iter6_reg;
wire   [7:0] empty_fu_1145_p2;
reg   [7:0] empty_reg_2079;
wire   [63:0] zext_ln83_1_fu_1184_p1;
reg   [63:0] zext_ln83_1_reg_2121;
reg   [63:0] zext_ln83_1_reg_2121_pp0_iter1_reg;
reg   [63:0] zext_ln83_1_reg_2121_pp0_iter2_reg;
reg   [63:0] zext_ln83_1_reg_2121_pp0_iter3_reg;
reg   [63:0] zext_ln83_1_reg_2121_pp0_iter4_reg;
reg   [63:0] zext_ln83_1_reg_2121_pp0_iter5_reg;
reg   [63:0] zext_ln83_1_reg_2121_pp0_iter6_reg;
wire   [5:0] or_ln9_fu_1202_p3;
reg   [5:0] or_ln9_reg_2129;
reg   [63:0] dactivations_0_load_reg_2175;
reg   [63:0] dactivations_0_load_reg_2175_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_reg_2175_pp0_iter2_reg;
reg   [63:0] dactivations_0_load_reg_2175_pp0_iter3_reg;
reg   [63:0] dactivations_0_load_reg_2175_pp0_iter4_reg;
reg   [63:0] dactivations_0_load_reg_2175_pp0_iter5_reg;
wire   [63:0] zext_ln85_3_fu_1232_p1;
reg   [63:0] zext_ln85_3_reg_2180;
wire   [63:0] zext_ln87_2_fu_1252_p1;
reg   [63:0] zext_ln87_2_reg_2185;
wire   [63:0] zext_ln85_6_fu_1292_p1;
reg   [63:0] zext_ln85_6_reg_2191;
wire   [63:0] zext_ln87_6_fu_1312_p1;
reg   [63:0] zext_ln87_6_reg_2196;
wire   [63:0] zext_ln83_2_fu_1343_p1;
reg   [63:0] zext_ln83_2_reg_2202;
reg   [63:0] zext_ln83_2_reg_2202_pp0_iter1_reg;
reg   [63:0] zext_ln83_2_reg_2202_pp0_iter2_reg;
reg   [63:0] zext_ln83_2_reg_2202_pp0_iter3_reg;
reg   [63:0] zext_ln83_2_reg_2202_pp0_iter4_reg;
reg   [63:0] zext_ln83_2_reg_2202_pp0_iter5_reg;
reg   [63:0] zext_ln83_2_reg_2202_pp0_iter6_reg;
wire   [63:0] zext_ln87_7_fu_1356_p1;
reg   [63:0] zext_ln87_7_reg_2210;
wire   [63:0] zext_ln83_3_fu_1389_p1;
reg   [63:0] zext_ln83_3_reg_2236;
reg   [63:0] zext_ln83_3_reg_2236_pp0_iter1_reg;
reg   [63:0] zext_ln83_3_reg_2236_pp0_iter2_reg;
reg   [63:0] zext_ln83_3_reg_2236_pp0_iter3_reg;
reg   [63:0] zext_ln83_3_reg_2236_pp0_iter4_reg;
reg   [63:0] zext_ln83_3_reg_2236_pp0_iter5_reg;
reg   [63:0] zext_ln83_3_reg_2236_pp0_iter6_reg;
reg   [63:0] zext_ln83_3_reg_2236_pp0_iter7_reg;
wire   [63:0] zext_ln87_11_fu_1402_p1;
reg   [63:0] zext_ln87_11_reg_2244;
reg   [63:0] dactivations_1_load_reg_2310;
reg   [63:0] dactivations_1_load_reg_2310_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_reg_2310_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_reg_2310_pp0_iter3_reg;
reg   [63:0] dactivations_1_load_reg_2310_pp0_iter4_reg;
reg   [63:0] dactivations_1_load_reg_2310_pp0_iter5_reg;
reg   [63:0] dactivations_2_load_reg_2315;
reg   [63:0] dactivations_2_load_reg_2315_pp0_iter1_reg;
reg   [63:0] dactivations_2_load_reg_2315_pp0_iter2_reg;
reg   [63:0] dactivations_2_load_reg_2315_pp0_iter3_reg;
reg   [63:0] dactivations_2_load_reg_2315_pp0_iter4_reg;
reg   [63:0] dactivations_2_load_reg_2315_pp0_iter5_reg;
reg   [63:0] dactivations_3_load_reg_2320;
reg   [63:0] dactivations_3_load_reg_2320_pp0_iter1_reg;
reg   [63:0] dactivations_3_load_reg_2320_pp0_iter2_reg;
reg   [63:0] dactivations_3_load_reg_2320_pp0_iter3_reg;
reg   [63:0] dactivations_3_load_reg_2320_pp0_iter4_reg;
reg   [63:0] dactivations_3_load_reg_2320_pp0_iter5_reg;
reg   [63:0] dactivations_0_load_1_reg_2325;
reg   [63:0] dactivations_0_load_1_reg_2325_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_1_reg_2325_pp0_iter2_reg;
reg   [63:0] dactivations_0_load_1_reg_2325_pp0_iter3_reg;
reg   [63:0] dactivations_0_load_1_reg_2325_pp0_iter4_reg;
reg   [63:0] dactivations_0_load_1_reg_2325_pp0_iter5_reg;
reg   [63:0] dactivations_1_load_1_reg_2330;
reg   [63:0] dactivations_1_load_1_reg_2330_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_1_reg_2330_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_1_reg_2330_pp0_iter3_reg;
reg   [63:0] dactivations_1_load_1_reg_2330_pp0_iter4_reg;
reg   [63:0] dactivations_1_load_1_reg_2330_pp0_iter5_reg;
reg   [63:0] dactivations_2_load_1_reg_2335;
reg   [63:0] dactivations_2_load_1_reg_2335_pp0_iter1_reg;
reg   [63:0] dactivations_2_load_1_reg_2335_pp0_iter2_reg;
reg   [63:0] dactivations_2_load_1_reg_2335_pp0_iter3_reg;
reg   [63:0] dactivations_2_load_1_reg_2335_pp0_iter4_reg;
reg   [63:0] dactivations_2_load_1_reg_2335_pp0_iter5_reg;
reg   [63:0] dactivations_3_load_1_reg_2340;
reg   [63:0] dactivations_3_load_1_reg_2340_pp0_iter1_reg;
reg   [63:0] dactivations_3_load_1_reg_2340_pp0_iter2_reg;
reg   [63:0] dactivations_3_load_1_reg_2340_pp0_iter3_reg;
reg   [63:0] dactivations_3_load_1_reg_2340_pp0_iter4_reg;
reg   [63:0] dactivations_3_load_1_reg_2340_pp0_iter5_reg;
wire   [63:0] bitcast_ln85_fu_1407_p1;
wire   [63:0] bitcast_ln85_1_fu_1412_p1;
wire   [63:0] bitcast_ln85_2_fu_1417_p1;
wire   [63:0] zext_ln85_9_fu_1477_p1;
reg   [63:0] zext_ln85_9_reg_2360;
wire   [63:0] zext_ln87_10_fu_1497_p1;
reg   [63:0] zext_ln87_10_reg_2365;
wire   [63:0] zext_ln85_12_fu_1537_p1;
reg   [63:0] zext_ln85_12_reg_2371;
wire   [63:0] zext_ln85_13_fu_1557_p1;
reg   [63:0] zext_ln85_13_reg_2376;
wire   [63:0] bitcast_ln85_3_fu_1562_p1;
wire   [63:0] bitcast_ln85_12_fu_1567_p1;
wire   [63:0] bitcast_ln85_13_fu_1572_p1;
wire   [63:0] bitcast_ln85_14_fu_1577_p1;
reg   [63:0] dactivations_0_load_2_reg_2442;
reg   [63:0] dactivations_0_load_2_reg_2442_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_2_reg_2442_pp0_iter2_reg;
reg   [63:0] dactivations_0_load_2_reg_2442_pp0_iter3_reg;
reg   [63:0] dactivations_0_load_2_reg_2442_pp0_iter4_reg;
reg   [63:0] dactivations_0_load_2_reg_2442_pp0_iter5_reg;
reg   [63:0] dactivations_1_load_2_reg_2447;
reg   [63:0] dactivations_1_load_2_reg_2447_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_2_reg_2447_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_2_reg_2447_pp0_iter3_reg;
reg   [63:0] dactivations_1_load_2_reg_2447_pp0_iter4_reg;
reg   [63:0] dactivations_1_load_2_reg_2447_pp0_iter5_reg;
reg   [63:0] dactivations_2_load_2_reg_2452;
reg   [63:0] dactivations_2_load_2_reg_2452_pp0_iter1_reg;
reg   [63:0] dactivations_2_load_2_reg_2452_pp0_iter2_reg;
reg   [63:0] dactivations_2_load_2_reg_2452_pp0_iter3_reg;
reg   [63:0] dactivations_2_load_2_reg_2452_pp0_iter4_reg;
reg   [63:0] dactivations_2_load_2_reg_2452_pp0_iter5_reg;
reg   [63:0] dactivations_3_load_2_reg_2457;
reg   [63:0] dactivations_3_load_2_reg_2457_pp0_iter1_reg;
reg   [63:0] dactivations_3_load_2_reg_2457_pp0_iter2_reg;
reg   [63:0] dactivations_3_load_2_reg_2457_pp0_iter3_reg;
reg   [63:0] dactivations_3_load_2_reg_2457_pp0_iter4_reg;
reg   [63:0] dactivations_3_load_2_reg_2457_pp0_iter5_reg;
reg   [63:0] dactivations_0_load_3_reg_2462;
reg   [63:0] dactivations_0_load_3_reg_2462_pp0_iter1_reg;
reg   [63:0] dactivations_0_load_3_reg_2462_pp0_iter2_reg;
reg   [63:0] dactivations_0_load_3_reg_2462_pp0_iter3_reg;
reg   [63:0] dactivations_0_load_3_reg_2462_pp0_iter4_reg;
reg   [63:0] dactivations_0_load_3_reg_2462_pp0_iter5_reg;
reg   [63:0] dactivations_1_load_3_reg_2467;
reg   [63:0] dactivations_1_load_3_reg_2467_pp0_iter1_reg;
reg   [63:0] dactivations_1_load_3_reg_2467_pp0_iter2_reg;
reg   [63:0] dactivations_1_load_3_reg_2467_pp0_iter3_reg;
reg   [63:0] dactivations_1_load_3_reg_2467_pp0_iter4_reg;
reg   [63:0] dactivations_1_load_3_reg_2467_pp0_iter5_reg;
reg   [63:0] dactivations_2_load_3_reg_2472;
reg   [63:0] dactivations_2_load_3_reg_2472_pp0_iter1_reg;
reg   [63:0] dactivations_2_load_3_reg_2472_pp0_iter2_reg;
reg   [63:0] dactivations_2_load_3_reg_2472_pp0_iter3_reg;
reg   [63:0] dactivations_2_load_3_reg_2472_pp0_iter4_reg;
reg   [63:0] dactivations_2_load_3_reg_2472_pp0_iter5_reg;
reg   [63:0] dactivations_3_load_3_reg_2477;
reg   [63:0] dactivations_3_load_3_reg_2477_pp0_iter1_reg;
reg   [63:0] dactivations_3_load_3_reg_2477_pp0_iter2_reg;
reg   [63:0] dactivations_3_load_3_reg_2477_pp0_iter3_reg;
reg   [63:0] dactivations_3_load_3_reg_2477_pp0_iter4_reg;
reg   [63:0] dactivations_3_load_3_reg_2477_pp0_iter5_reg;
wire   [63:0] bitcast_ln85_6_fu_1622_p1;
wire   [63:0] bitcast_ln85_9_fu_1627_p1;
wire   [63:0] bitcast_ln85_15_fu_1632_p1;
wire   [63:0] bitcast_ln85_18_fu_1637_p1;
wire   [63:0] bitcast_ln85_21_fu_1642_p1;
wire   [63:0] bitcast_ln85_24_fu_1647_p1;
wire   [63:0] bitcast_ln85_27_fu_1652_p1;
wire   [63:0] bitcast_ln85_36_fu_1657_p1;
wire   [63:0] bitcast_ln85_4_fu_1742_p1;
wire   [63:0] bitcast_ln85_7_fu_1747_p1;
wire   [63:0] bitcast_ln85_16_fu_1752_p1;
wire   [63:0] bitcast_ln85_30_fu_1757_p1;
wire   [63:0] bitcast_ln85_33_fu_1762_p1;
wire   [63:0] bitcast_ln85_39_fu_1767_p1;
wire   [63:0] bitcast_ln85_42_fu_1772_p1;
wire   [63:0] bitcast_ln85_45_fu_1777_p1;
wire   [63:0] bitcast_ln85_10_fu_1862_p1;
wire   [63:0] bitcast_ln85_19_fu_1867_p1;
wire   [63:0] bitcast_ln85_22_fu_1872_p1;
wire   [63:0] bitcast_ln85_25_fu_1877_p1;
wire   [63:0] bitcast_ln85_28_fu_1882_p1;
wire   [63:0] bitcast_ln85_31_fu_1887_p1;
wire   [63:0] bitcast_ln85_37_fu_1892_p1;
wire   [63:0] bitcast_ln85_40_fu_1897_p1;
wire   [63:0] bitcast_ln85_5_fu_1912_p1;
wire   [63:0] bitcast_ln85_8_fu_1917_p1;
wire   [63:0] bitcast_ln85_11_fu_1922_p1;
wire   [63:0] bitcast_ln85_17_fu_1927_p1;
wire   [63:0] bitcast_ln85_20_fu_1932_p1;
wire   [63:0] bitcast_ln85_34_fu_1937_p1;
wire   [63:0] bitcast_ln85_43_fu_1942_p1;
wire   [63:0] bitcast_ln85_46_fu_1947_p1;
wire   [63:0] bitcast_ln85_23_fu_1952_p1;
wire   [63:0] bitcast_ln85_26_fu_1957_p1;
wire   [63:0] bitcast_ln85_29_fu_1962_p1;
wire   [63:0] bitcast_ln85_32_fu_1967_p1;
wire   [63:0] bitcast_ln85_35_fu_1972_p1;
wire   [63:0] bitcast_ln85_38_fu_1977_p1;
wire   [63:0] bitcast_ln85_41_fu_1982_p1;
wire   [63:0] bitcast_ln85_44_fu_1987_p1;
reg   [63:0] mul8_reg_2807;
wire   [63:0] grp_fu_960_p2;
reg   [63:0] mul8_s_reg_2812;
reg   [63:0] mul8_s_reg_2812_pp0_iter2_reg;
wire   [63:0] grp_fu_964_p2;
reg   [63:0] mul8_27_reg_2817;
reg   [63:0] mul8_27_reg_2817_pp0_iter2_reg;
reg   [63:0] mul8_27_reg_2817_pp0_iter3_reg;
wire   [63:0] grp_fu_968_p2;
reg   [63:0] mul8_1_reg_2822;
wire   [63:0] grp_fu_972_p2;
reg   [63:0] mul8_4_reg_2827;
wire   [63:0] grp_fu_976_p2;
reg   [63:0] mul8_4_1_reg_2832;
reg   [63:0] mul8_4_1_reg_2832_pp0_iter2_reg;
wire   [63:0] grp_fu_980_p2;
reg   [63:0] mul8_4_2_reg_2837;
reg   [63:0] mul8_4_2_reg_2837_pp0_iter2_reg;
reg   [63:0] mul8_4_2_reg_2837_pp0_iter3_reg;
wire   [63:0] bitcast_ln85_47_fu_1992_p1;
reg   [63:0] mul8_2_reg_2847;
reg   [63:0] mul8_3_reg_2852;
reg   [63:0] mul8_5_reg_2857;
reg   [63:0] mul8_6_reg_2862;
reg   [63:0] mul8_7_reg_2867;
reg   [63:0] mul8_8_reg_2872;
reg   [63:0] mul8_9_reg_2877;
wire   [63:0] grp_fu_984_p2;
reg   [63:0] mul8_12_reg_2882;
reg   [63:0] mul8_1_1_reg_2887;
reg   [63:0] mul8_1_1_reg_2887_pp0_iter2_reg;
reg   [63:0] mul8_2_1_reg_2892;
reg   [63:0] mul8_2_1_reg_2892_pp0_iter2_reg;
reg   [63:0] mul8_5_1_reg_2897;
reg   [63:0] mul8_5_1_reg_2897_pp0_iter2_reg;
reg   [63:0] mul8_10_reg_2902;
reg   [63:0] mul8_11_reg_2907;
reg   [63:0] mul8_13_reg_2912;
reg   [63:0] mul8_14_reg_2917;
reg   [63:0] mul8_15_reg_2922;
reg   [63:0] mul8_3_1_reg_2927;
reg   [63:0] mul8_3_1_reg_2927_pp0_iter2_reg;
reg   [63:0] mul8_6_1_reg_2932;
reg   [63:0] mul8_6_1_reg_2932_pp0_iter2_reg;
reg   [63:0] mul8_7_1_reg_2937;
reg   [63:0] mul8_7_1_reg_2937_pp0_iter2_reg;
reg   [63:0] mul8_8_1_reg_2942;
reg   [63:0] mul8_8_1_reg_2942_pp0_iter2_reg;
reg   [63:0] mul8_9_1_reg_2947;
reg   [63:0] mul8_9_1_reg_2947_pp0_iter2_reg;
reg   [63:0] mul8_10_1_reg_2952;
reg   [63:0] mul8_10_1_reg_2952_pp0_iter2_reg;
reg   [63:0] mul8_12_1_reg_2957;
reg   [63:0] mul8_12_1_reg_2957_pp0_iter2_reg;
reg   [63:0] mul8_13_1_reg_2962;
reg   [63:0] mul8_13_1_reg_2962_pp0_iter2_reg;
reg   [63:0] mul8_1_2_reg_2967;
reg   [63:0] mul8_1_2_reg_2967_pp0_iter3_reg;
reg   [63:0] mul8_1_2_reg_2967_pp0_iter4_reg;
reg   [63:0] mul8_2_2_reg_2972;
reg   [63:0] mul8_2_2_reg_2972_pp0_iter3_reg;
reg   [63:0] mul8_2_2_reg_2972_pp0_iter4_reg;
reg   [63:0] mul8_3_2_reg_2977;
reg   [63:0] mul8_3_2_reg_2977_pp0_iter3_reg;
reg   [63:0] mul8_3_2_reg_2977_pp0_iter4_reg;
reg   [63:0] mul8_5_2_reg_2982;
reg   [63:0] mul8_5_2_reg_2982_pp0_iter3_reg;
reg   [63:0] mul8_5_2_reg_2982_pp0_iter4_reg;
reg   [63:0] mul8_6_2_reg_2987;
reg   [63:0] mul8_6_2_reg_2987_pp0_iter3_reg;
reg   [63:0] mul8_6_2_reg_2987_pp0_iter4_reg;
reg   [63:0] mul8_11_1_reg_2992;
reg   [63:0] mul8_11_1_reg_2992_pp0_iter3_reg;
reg   [63:0] mul8_14_1_reg_2997;
reg   [63:0] mul8_14_1_reg_2997_pp0_iter3_reg;
reg   [63:0] mul8_15_1_reg_3002;
reg   [63:0] mul8_15_1_reg_3002_pp0_iter3_reg;
reg   [63:0] mul8_7_2_reg_3007;
reg   [63:0] mul8_7_2_reg_3007_pp0_iter3_reg;
reg   [63:0] mul8_7_2_reg_3007_pp0_iter4_reg;
reg   [63:0] mul8_8_2_reg_3012;
reg   [63:0] mul8_8_2_reg_3012_pp0_iter3_reg;
reg   [63:0] mul8_8_2_reg_3012_pp0_iter4_reg;
reg   [63:0] mul8_9_2_reg_3017;
reg   [63:0] mul8_9_2_reg_3017_pp0_iter3_reg;
reg   [63:0] mul8_9_2_reg_3017_pp0_iter4_reg;
reg   [63:0] mul8_10_2_reg_3022;
reg   [63:0] mul8_10_2_reg_3022_pp0_iter3_reg;
reg   [63:0] mul8_10_2_reg_3022_pp0_iter4_reg;
reg   [63:0] mul8_11_2_reg_3027;
reg   [63:0] mul8_11_2_reg_3027_pp0_iter3_reg;
reg   [63:0] mul8_11_2_reg_3027_pp0_iter4_reg;
reg   [63:0] mul8_12_2_reg_3032;
reg   [63:0] mul8_12_2_reg_3032_pp0_iter3_reg;
reg   [63:0] mul8_12_2_reg_3032_pp0_iter4_reg;
reg   [63:0] mul8_13_2_reg_3037;
reg   [63:0] mul8_13_2_reg_3037_pp0_iter3_reg;
reg   [63:0] mul8_13_2_reg_3037_pp0_iter4_reg;
reg   [63:0] mul8_14_2_reg_3042;
reg   [63:0] mul8_14_2_reg_3042_pp0_iter3_reg;
reg   [63:0] mul8_14_2_reg_3042_pp0_iter4_reg;
reg   [63:0] mul8_15_2_reg_3047;
reg   [63:0] mul8_15_2_reg_3047_pp0_iter3_reg;
reg   [63:0] mul8_15_2_reg_3047_pp0_iter4_reg;
reg   [63:0] add_reg_3052;
reg   [63:0] add11_1_reg_3057;
reg   [63:0] add11_4_reg_3062;
reg   [63:0] add11_2_reg_3067;
reg   [63:0] add11_3_reg_3072;
reg   [63:0] add11_5_reg_3077;
reg   [63:0] add11_6_reg_3082;
reg   [63:0] add11_7_reg_3087;
reg   [63:0] add11_8_reg_3092;
reg   [63:0] add11_9_reg_3097;
reg   [63:0] add11_12_reg_3102;
reg   [63:0] add11_10_reg_3107;
reg   [63:0] add11_11_reg_3112;
reg   [63:0] add11_13_reg_3117;
reg   [63:0] add11_14_reg_3122;
reg   [63:0] add11_15_reg_3127;
reg   [63:0] add11_s_reg_3132;
reg   [63:0] add11_1_1_reg_3137;
reg   [63:0] add11_4_1_reg_3142;
reg   [63:0] add11_2_1_reg_3147;
reg   [63:0] add11_3_1_reg_3152;
reg   [63:0] add11_5_1_reg_3157;
reg   [63:0] add11_6_1_reg_3162;
reg   [63:0] add11_7_1_reg_3167;
reg   [63:0] add11_8_1_reg_3172;
reg   [63:0] add11_9_1_reg_3177;
reg   [63:0] add11_12_1_reg_3182;
reg   [63:0] add11_10_1_reg_3187;
reg   [63:0] add11_11_1_reg_3192;
reg   [63:0] add11_13_1_reg_3197;
reg   [63:0] add11_14_1_reg_3202;
reg   [63:0] add11_15_1_reg_3207;
reg   [63:0] add11_27_reg_3212;
reg   [63:0] add11_1_2_reg_3217;
reg   [63:0] add11_4_2_reg_3222;
reg   [63:0] add11_2_2_reg_3227;
reg   [63:0] add11_3_2_reg_3232;
reg   [63:0] add11_5_2_reg_3237;
reg   [63:0] add11_6_2_reg_3242;
reg   [63:0] add11_7_2_reg_3247;
reg   [63:0] add11_8_2_reg_3252;
reg   [63:0] add11_9_2_reg_3257;
reg   [63:0] add11_12_2_reg_3262;
reg   [63:0] add11_10_2_reg_3267;
reg   [63:0] add11_11_2_reg_3272;
reg   [63:0] add11_13_2_reg_3277;
reg   [63:0] add11_14_2_reg_3282;
reg   [63:0] add11_15_2_reg_3287;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] zext_ln85_fu_1108_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln85_1_fu_1161_p1;
wire   [63:0] zext_ln87_3_fu_1210_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln85_4_fu_1272_p1;
wire   [63:0] zext_ln85_7_fu_1376_p1;
wire   [63:0] zext_ln85_2_fu_1437_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln85_5_fu_1457_p1;
wire   [63:0] zext_ln85_10_fu_1517_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln85_8_fu_1597_p1;
wire   [63:0] zext_ln85_11_fu_1617_p1;
wire   [63:0] zext_ln87_fu_1677_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln87_1_fu_1697_p1;
wire   [63:0] zext_ln87_4_fu_1717_p1;
wire   [63:0] zext_ln87_5_fu_1737_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln87_8_fu_1797_p1;
wire   [63:0] zext_ln87_9_fu_1817_p1;
wire   [63:0] zext_ln87_12_fu_1837_p1;
wire   [63:0] zext_ln87_13_fu_1857_p1;
reg   [6:0] i_fu_158;
wire   [6:0] add_ln82_fu_1902_p2;
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
reg    oracle_activations_0_ce1_local;
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
reg   [63:0] grp_fu_916_p0;
reg   [63:0] grp_fu_916_p1;
reg   [63:0] grp_fu_921_p0;
reg   [63:0] grp_fu_921_p1;
reg   [63:0] grp_fu_926_p0;
reg   [63:0] grp_fu_926_p1;
reg   [63:0] grp_fu_931_p0;
reg   [63:0] grp_fu_931_p1;
reg   [63:0] grp_fu_936_p0;
reg   [63:0] grp_fu_936_p1;
reg   [63:0] grp_fu_941_p0;
reg   [63:0] grp_fu_941_p1;
reg   [63:0] grp_fu_946_p0;
reg   [63:0] grp_fu_946_p1;
reg   [63:0] grp_fu_951_p0;
reg   [63:0] grp_fu_951_p1;
reg   [63:0] grp_fu_956_p0;
reg   [63:0] grp_fu_956_p1;
reg   [63:0] grp_fu_960_p0;
reg   [63:0] grp_fu_960_p1;
reg   [63:0] grp_fu_964_p0;
reg   [63:0] grp_fu_964_p1;
reg   [63:0] grp_fu_968_p0;
reg   [63:0] grp_fu_968_p1;
reg   [63:0] grp_fu_972_p0;
reg   [63:0] grp_fu_972_p1;
reg   [63:0] grp_fu_976_p0;
reg   [63:0] grp_fu_976_p1;
reg   [63:0] grp_fu_980_p0;
reg   [63:0] grp_fu_980_p1;
reg   [63:0] grp_fu_984_p0;
reg   [63:0] grp_fu_984_p1;
reg   [63:0] grp_fu_988_p0;
reg   [63:0] grp_fu_988_p1;
reg   [63:0] grp_fu_992_p0;
reg   [63:0] grp_fu_992_p1;
reg   [63:0] grp_fu_996_p0;
reg   [63:0] grp_fu_996_p1;
wire   [3:0] lshr_ln_fu_1072_p4;
wire   [5:0] p_shl5_fu_1094_p3;
wire   [5:0] zext_ln81_1_fu_1082_p1;
wire   [5:0] sub_ln85_fu_1102_p2;
wire   [4:0] tmp_fu_1115_p4;
wire   [5:0] or_ln_fu_1125_p3;
wire   [7:0] p_shl_fu_1137_p3;
wire   [7:0] zext_ln83_fu_1133_p1;
wire   [5:0] lshr_ln1_fu_1151_p4;
wire   [2:0] tmp_s_fu_1166_p4;
wire   [3:0] or_ln8_fu_1176_p3;
wire   [3:0] tmp_32_fu_1192_p4;
wire   [7:0] empty_124_fu_1217_p2;
wire   [5:0] lshr_ln85_3_fu_1222_p4;
wire   [7:0] empty_125_fu_1237_p2;
wire   [5:0] lshr_ln85_5_fu_1242_p4;
wire   [7:0] empty_126_fu_1257_p2;
wire   [5:0] lshr_ln85_6_fu_1262_p4;
wire   [7:0] empty_127_fu_1277_p2;
wire   [5:0] lshr_ln85_9_fu_1282_p4;
wire   [7:0] empty_128_fu_1297_p2;
wire   [5:0] lshr_ln85_10_fu_1302_p4;
wire   [1:0] tmp_33_fu_1317_p4;
wire   [0:0] tmp_20_fu_1326_p3;
wire   [3:0] or_ln83_1_fu_1333_p4;
wire   [5:0] add_ln85_6_fu_1351_p2;
wire   [7:0] empty_129_fu_1361_p2;
wire   [5:0] lshr_ln85_11_fu_1366_p4;
wire   [3:0] or_ln83_2_fu_1381_p3;
wire   [5:0] add_ln85_10_fu_1397_p2;
wire   [7:0] add_ln85_fu_1422_p2;
wire   [5:0] lshr_ln85_1_fu_1427_p4;
wire   [7:0] add_ln85_3_fu_1442_p2;
wire   [5:0] lshr_ln85_7_fu_1447_p4;
wire   [7:0] empty_130_fu_1462_p2;
wire   [5:0] lshr_ln85_14_fu_1467_p4;
wire   [7:0] empty_131_fu_1482_p2;
wire   [5:0] lshr_ln85_16_fu_1487_p4;
wire   [7:0] empty_132_fu_1502_p2;
wire   [5:0] lshr_ln85_17_fu_1507_p4;
wire   [7:0] empty_133_fu_1522_p2;
wire   [5:0] lshr_ln85_20_fu_1527_p4;
wire   [7:0] empty_134_fu_1542_p2;
wire   [5:0] lshr_ln85_22_fu_1547_p4;
wire   [7:0] add_ln85_7_fu_1582_p2;
wire   [5:0] lshr_ln85_12_fu_1587_p4;
wire   [7:0] add_ln85_11_fu_1602_p2;
wire   [5:0] lshr_ln85_18_fu_1607_p4;
wire   [7:0] add_ln85_1_fu_1662_p2;
wire   [5:0] lshr_ln85_2_fu_1667_p4;
wire   [7:0] add_ln85_2_fu_1682_p2;
wire   [5:0] lshr_ln85_4_fu_1687_p4;
wire   [7:0] add_ln85_4_fu_1702_p2;
wire   [5:0] lshr_ln85_8_fu_1707_p4;
wire   [7:0] add_ln85_5_fu_1722_p2;
wire   [5:0] lshr_ln85_s_fu_1727_p4;
wire   [7:0] add_ln85_8_fu_1782_p2;
wire   [5:0] lshr_ln85_13_fu_1787_p4;
wire   [7:0] add_ln85_9_fu_1802_p2;
wire   [5:0] lshr_ln85_15_fu_1807_p4;
wire   [7:0] add_ln85_12_fu_1822_p2;
wire   [5:0] lshr_ln85_19_fu_1827_p4;
wire   [7:0] add_ln85_13_fu_1842_p2;
wire   [5:0] lshr_ln85_21_fu_1847_p4;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter6_stage3;
reg    ap_idle_pp0_0to5;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_158 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U300(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_960_p0),.din1(grp_fu_960_p1),.ce(1'b1),.dout(grp_fu_960_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U301(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_964_p0),.din1(grp_fu_964_p1),.ce(1'b1),.dout(grp_fu_964_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U302(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_968_p0),.din1(grp_fu_968_p1),.ce(1'b1),.dout(grp_fu_968_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U303(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_972_p0),.din1(grp_fu_972_p1),.ce(1'b1),.dout(grp_fu_972_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U304(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_976_p0),.din1(grp_fu_976_p1),.ce(1'b1),.dout(grp_fu_976_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U305(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_980_p0),.din1(grp_fu_980_p1),.ce(1'b1),.dout(grp_fu_980_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U306(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_984_p0),.din1(grp_fu_984_p1),.ce(1'b1),.dout(grp_fu_984_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U307(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_988_p0),.din1(grp_fu_988_p1),.ce(1'b1),.dout(grp_fu_988_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U308(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_992_p0),.din1(grp_fu_992_p1),.ce(1'b1),.dout(grp_fu_992_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U309(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_996_p0),.din1(grp_fu_996_p1),.ce(1'b1),.dout(grp_fu_996_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage3))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage3))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage3))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_158 <= 7'd0;
    end else if (((tmp_19_reg_2047 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        i_fu_158 <= add_ln82_fu_1902_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_10_1_reg_3187 <= grp_fu_3044_p_dout0;
        add11_11_1_reg_3192 <= grp_fu_3048_p_dout0;
        add11_13_1_reg_3197 <= grp_fu_3052_p_dout0;
        add11_14_1_reg_3202 <= grp_fu_3056_p_dout0;
        add11_15_1_reg_3207 <= grp_fu_3060_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_10_2_reg_3267 <= grp_fu_3056_p_dout0;
        add11_11_2_reg_3272 <= grp_fu_3060_p_dout0;
        add11_13_2_reg_3277 <= grp_fu_3064_p_dout0;
        add11_14_2_reg_3282 <= grp_fu_3068_p_dout0;
        add11_15_2_reg_3287 <= grp_fu_3072_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_10_reg_3107 <= grp_fu_3044_p_dout0;
        add11_11_reg_3112 <= grp_fu_3048_p_dout0;
        add11_13_reg_3117 <= grp_fu_3052_p_dout0;
        add11_14_reg_3122 <= grp_fu_3056_p_dout0;
        add11_15_reg_3127 <= grp_fu_3060_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_12_1_reg_3182 <= grp_fu_3072_p_dout0;
        add11_2_1_reg_3147 <= grp_fu_3044_p_dout0;
        add11_3_1_reg_3152 <= grp_fu_3048_p_dout0;
        add11_5_1_reg_3157 <= grp_fu_3052_p_dout0;
        add11_6_1_reg_3162 <= grp_fu_3056_p_dout0;
        add11_7_1_reg_3167 <= grp_fu_3060_p_dout0;
        add11_8_1_reg_3172 <= grp_fu_3064_p_dout0;
        add11_9_1_reg_3177 <= grp_fu_3068_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_12_2_reg_3262 <= grp_fu_3072_p_dout0;
        add11_2_2_reg_3227 <= grp_fu_3044_p_dout0;
        add11_3_2_reg_3232 <= grp_fu_3048_p_dout0;
        add11_5_2_reg_3237 <= grp_fu_3052_p_dout0;
        add11_6_2_reg_3242 <= grp_fu_3056_p_dout0;
        add11_7_2_reg_3247 <= grp_fu_3060_p_dout0;
        add11_8_2_reg_3252 <= grp_fu_3064_p_dout0;
        add11_9_2_reg_3257 <= grp_fu_3068_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add11_12_reg_3102 <= grp_fu_3072_p_dout0;
        add11_2_reg_3067 <= grp_fu_3044_p_dout0;
        add11_3_reg_3072 <= grp_fu_3048_p_dout0;
        add11_5_reg_3077 <= grp_fu_3052_p_dout0;
        add11_6_reg_3082 <= grp_fu_3056_p_dout0;
        add11_7_reg_3087 <= grp_fu_3060_p_dout0;
        add11_8_reg_3092 <= grp_fu_3064_p_dout0;
        add11_9_reg_3097 <= grp_fu_3068_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_1_reg_3137 <= grp_fu_3068_p_dout0;
        add11_4_1_reg_3142 <= grp_fu_3072_p_dout0;
        add11_s_reg_3132 <= grp_fu_3064_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_1_2_reg_3217 <= grp_fu_3068_p_dout0;
        add11_27_reg_3212 <= grp_fu_3064_p_dout0;
        add11_4_2_reg_3222 <= grp_fu_3072_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_1_reg_3057 <= grp_fu_3048_p_dout0;
        add11_4_reg_3062 <= grp_fu_3052_p_dout0;
        add_reg_3052 <= grp_fu_3044_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations_0_load_1_reg_2325 <= dactivations_0_q0;
        dactivations_0_load_reg_2175 <= dactivations_0_q1;
        dactivations_1_load_1_reg_2330 <= dactivations_1_q0;
        dactivations_1_load_reg_2310 <= dactivations_1_q1;
        dactivations_2_load_1_reg_2335 <= dactivations_2_q0;
        dactivations_2_load_reg_2315 <= dactivations_2_q1;
        dactivations_3_load_1_reg_2340 <= dactivations_3_q0;
        dactivations_3_load_reg_2320 <= dactivations_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        dactivations_0_load_1_reg_2325_pp0_iter1_reg <= dactivations_0_load_1_reg_2325;
        dactivations_0_load_1_reg_2325_pp0_iter2_reg <= dactivations_0_load_1_reg_2325_pp0_iter1_reg;
        dactivations_0_load_1_reg_2325_pp0_iter3_reg <= dactivations_0_load_1_reg_2325_pp0_iter2_reg;
        dactivations_0_load_1_reg_2325_pp0_iter4_reg <= dactivations_0_load_1_reg_2325_pp0_iter3_reg;
        dactivations_0_load_1_reg_2325_pp0_iter5_reg <= dactivations_0_load_1_reg_2325_pp0_iter4_reg;
        dactivations_0_load_reg_2175_pp0_iter1_reg <= dactivations_0_load_reg_2175;
        dactivations_0_load_reg_2175_pp0_iter2_reg <= dactivations_0_load_reg_2175_pp0_iter1_reg;
        dactivations_0_load_reg_2175_pp0_iter3_reg <= dactivations_0_load_reg_2175_pp0_iter2_reg;
        dactivations_0_load_reg_2175_pp0_iter4_reg <= dactivations_0_load_reg_2175_pp0_iter3_reg;
        dactivations_0_load_reg_2175_pp0_iter5_reg <= dactivations_0_load_reg_2175_pp0_iter4_reg;
        dactivations_1_load_1_reg_2330_pp0_iter1_reg <= dactivations_1_load_1_reg_2330;
        dactivations_1_load_1_reg_2330_pp0_iter2_reg <= dactivations_1_load_1_reg_2330_pp0_iter1_reg;
        dactivations_1_load_1_reg_2330_pp0_iter3_reg <= dactivations_1_load_1_reg_2330_pp0_iter2_reg;
        dactivations_1_load_1_reg_2330_pp0_iter4_reg <= dactivations_1_load_1_reg_2330_pp0_iter3_reg;
        dactivations_1_load_1_reg_2330_pp0_iter5_reg <= dactivations_1_load_1_reg_2330_pp0_iter4_reg;
        dactivations_1_load_reg_2310_pp0_iter1_reg <= dactivations_1_load_reg_2310;
        dactivations_1_load_reg_2310_pp0_iter2_reg <= dactivations_1_load_reg_2310_pp0_iter1_reg;
        dactivations_1_load_reg_2310_pp0_iter3_reg <= dactivations_1_load_reg_2310_pp0_iter2_reg;
        dactivations_1_load_reg_2310_pp0_iter4_reg <= dactivations_1_load_reg_2310_pp0_iter3_reg;
        dactivations_1_load_reg_2310_pp0_iter5_reg <= dactivations_1_load_reg_2310_pp0_iter4_reg;
        dactivations_2_load_1_reg_2335_pp0_iter1_reg <= dactivations_2_load_1_reg_2335;
        dactivations_2_load_1_reg_2335_pp0_iter2_reg <= dactivations_2_load_1_reg_2335_pp0_iter1_reg;
        dactivations_2_load_1_reg_2335_pp0_iter3_reg <= dactivations_2_load_1_reg_2335_pp0_iter2_reg;
        dactivations_2_load_1_reg_2335_pp0_iter4_reg <= dactivations_2_load_1_reg_2335_pp0_iter3_reg;
        dactivations_2_load_1_reg_2335_pp0_iter5_reg <= dactivations_2_load_1_reg_2335_pp0_iter4_reg;
        dactivations_2_load_reg_2315_pp0_iter1_reg <= dactivations_2_load_reg_2315;
        dactivations_2_load_reg_2315_pp0_iter2_reg <= dactivations_2_load_reg_2315_pp0_iter1_reg;
        dactivations_2_load_reg_2315_pp0_iter3_reg <= dactivations_2_load_reg_2315_pp0_iter2_reg;
        dactivations_2_load_reg_2315_pp0_iter4_reg <= dactivations_2_load_reg_2315_pp0_iter3_reg;
        dactivations_2_load_reg_2315_pp0_iter5_reg <= dactivations_2_load_reg_2315_pp0_iter4_reg;
        dactivations_3_load_1_reg_2340_pp0_iter1_reg <= dactivations_3_load_1_reg_2340;
        dactivations_3_load_1_reg_2340_pp0_iter2_reg <= dactivations_3_load_1_reg_2340_pp0_iter1_reg;
        dactivations_3_load_1_reg_2340_pp0_iter3_reg <= dactivations_3_load_1_reg_2340_pp0_iter2_reg;
        dactivations_3_load_1_reg_2340_pp0_iter4_reg <= dactivations_3_load_1_reg_2340_pp0_iter3_reg;
        dactivations_3_load_1_reg_2340_pp0_iter5_reg <= dactivations_3_load_1_reg_2340_pp0_iter4_reg;
        dactivations_3_load_reg_2320_pp0_iter1_reg <= dactivations_3_load_reg_2320;
        dactivations_3_load_reg_2320_pp0_iter2_reg <= dactivations_3_load_reg_2320_pp0_iter1_reg;
        dactivations_3_load_reg_2320_pp0_iter3_reg <= dactivations_3_load_reg_2320_pp0_iter2_reg;
        dactivations_3_load_reg_2320_pp0_iter4_reg <= dactivations_3_load_reg_2320_pp0_iter3_reg;
        dactivations_3_load_reg_2320_pp0_iter5_reg <= dactivations_3_load_reg_2320_pp0_iter4_reg;
        mul8_10_2_reg_3022_pp0_iter3_reg <= mul8_10_2_reg_3022;
        mul8_10_2_reg_3022_pp0_iter4_reg <= mul8_10_2_reg_3022_pp0_iter3_reg;
        mul8_11_2_reg_3027_pp0_iter3_reg <= mul8_11_2_reg_3027;
        mul8_11_2_reg_3027_pp0_iter4_reg <= mul8_11_2_reg_3027_pp0_iter3_reg;
        mul8_12_2_reg_3032_pp0_iter3_reg <= mul8_12_2_reg_3032;
        mul8_12_2_reg_3032_pp0_iter4_reg <= mul8_12_2_reg_3032_pp0_iter3_reg;
        mul8_13_2_reg_3037_pp0_iter3_reg <= mul8_13_2_reg_3037;
        mul8_13_2_reg_3037_pp0_iter4_reg <= mul8_13_2_reg_3037_pp0_iter3_reg;
        mul8_14_2_reg_3042_pp0_iter3_reg <= mul8_14_2_reg_3042;
        mul8_14_2_reg_3042_pp0_iter4_reg <= mul8_14_2_reg_3042_pp0_iter3_reg;
        mul8_7_2_reg_3007_pp0_iter3_reg <= mul8_7_2_reg_3007;
        mul8_7_2_reg_3007_pp0_iter4_reg <= mul8_7_2_reg_3007_pp0_iter3_reg;
        mul8_8_2_reg_3012_pp0_iter3_reg <= mul8_8_2_reg_3012;
        mul8_8_2_reg_3012_pp0_iter4_reg <= mul8_8_2_reg_3012_pp0_iter3_reg;
        mul8_9_2_reg_3017_pp0_iter3_reg <= mul8_9_2_reg_3017;
        mul8_9_2_reg_3017_pp0_iter4_reg <= mul8_9_2_reg_3017_pp0_iter3_reg;
        zext_ln83_2_reg_2202[0] <= zext_ln83_2_fu_1343_p1[0];
zext_ln83_2_reg_2202[3 : 2] <= zext_ln83_2_fu_1343_p1[3 : 2];
        zext_ln83_2_reg_2202_pp0_iter1_reg[0] <= zext_ln83_2_reg_2202[0];
zext_ln83_2_reg_2202_pp0_iter1_reg[3 : 2] <= zext_ln83_2_reg_2202[3 : 2];
        zext_ln83_2_reg_2202_pp0_iter2_reg[0] <= zext_ln83_2_reg_2202_pp0_iter1_reg[0];
zext_ln83_2_reg_2202_pp0_iter2_reg[3 : 2] <= zext_ln83_2_reg_2202_pp0_iter1_reg[3 : 2];
        zext_ln83_2_reg_2202_pp0_iter3_reg[0] <= zext_ln83_2_reg_2202_pp0_iter2_reg[0];
zext_ln83_2_reg_2202_pp0_iter3_reg[3 : 2] <= zext_ln83_2_reg_2202_pp0_iter2_reg[3 : 2];
        zext_ln83_2_reg_2202_pp0_iter4_reg[0] <= zext_ln83_2_reg_2202_pp0_iter3_reg[0];
zext_ln83_2_reg_2202_pp0_iter4_reg[3 : 2] <= zext_ln83_2_reg_2202_pp0_iter3_reg[3 : 2];
        zext_ln83_2_reg_2202_pp0_iter5_reg[0] <= zext_ln83_2_reg_2202_pp0_iter4_reg[0];
zext_ln83_2_reg_2202_pp0_iter5_reg[3 : 2] <= zext_ln83_2_reg_2202_pp0_iter4_reg[3 : 2];
        zext_ln83_2_reg_2202_pp0_iter6_reg[0] <= zext_ln83_2_reg_2202_pp0_iter5_reg[0];
zext_ln83_2_reg_2202_pp0_iter6_reg[3 : 2] <= zext_ln83_2_reg_2202_pp0_iter5_reg[3 : 2];
        zext_ln83_3_reg_2236[3 : 2] <= zext_ln83_3_fu_1389_p1[3 : 2];
        zext_ln83_3_reg_2236_pp0_iter1_reg[3 : 2] <= zext_ln83_3_reg_2236[3 : 2];
        zext_ln83_3_reg_2236_pp0_iter2_reg[3 : 2] <= zext_ln83_3_reg_2236_pp0_iter1_reg[3 : 2];
        zext_ln83_3_reg_2236_pp0_iter3_reg[3 : 2] <= zext_ln83_3_reg_2236_pp0_iter2_reg[3 : 2];
        zext_ln83_3_reg_2236_pp0_iter4_reg[3 : 2] <= zext_ln83_3_reg_2236_pp0_iter3_reg[3 : 2];
        zext_ln83_3_reg_2236_pp0_iter5_reg[3 : 2] <= zext_ln83_3_reg_2236_pp0_iter4_reg[3 : 2];
        zext_ln83_3_reg_2236_pp0_iter6_reg[3 : 2] <= zext_ln83_3_reg_2236_pp0_iter5_reg[3 : 2];
        zext_ln83_3_reg_2236_pp0_iter7_reg[3 : 2] <= zext_ln83_3_reg_2236_pp0_iter6_reg[3 : 2];
        zext_ln85_3_reg_2180[5 : 0] <= zext_ln85_3_fu_1232_p1[5 : 0];
        zext_ln85_6_reg_2191[5 : 0] <= zext_ln85_6_fu_1292_p1[5 : 0];
        zext_ln87_11_reg_2244[5 : 2] <= zext_ln87_11_fu_1402_p1[5 : 2];
        zext_ln87_2_reg_2185[5 : 0] <= zext_ln87_2_fu_1252_p1[5 : 0];
        zext_ln87_6_reg_2196[5 : 0] <= zext_ln87_6_fu_1312_p1[5 : 0];
        zext_ln87_7_reg_2210[5 : 2] <= zext_ln87_7_fu_1356_p1[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        dactivations_0_load_2_reg_2442 <= dactivations_0_q1;
        dactivations_0_load_3_reg_2462 <= dactivations_0_q0;
        dactivations_1_load_2_reg_2447 <= dactivations_1_q1;
        dactivations_1_load_3_reg_2467 <= dactivations_1_q0;
        dactivations_2_load_2_reg_2452 <= dactivations_2_q1;
        dactivations_2_load_3_reg_2472 <= dactivations_2_q0;
        dactivations_3_load_2_reg_2457 <= dactivations_3_q1;
        dactivations_3_load_3_reg_2477 <= dactivations_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        dactivations_0_load_2_reg_2442_pp0_iter1_reg <= dactivations_0_load_2_reg_2442;
        dactivations_0_load_2_reg_2442_pp0_iter2_reg <= dactivations_0_load_2_reg_2442_pp0_iter1_reg;
        dactivations_0_load_2_reg_2442_pp0_iter3_reg <= dactivations_0_load_2_reg_2442_pp0_iter2_reg;
        dactivations_0_load_2_reg_2442_pp0_iter4_reg <= dactivations_0_load_2_reg_2442_pp0_iter3_reg;
        dactivations_0_load_2_reg_2442_pp0_iter5_reg <= dactivations_0_load_2_reg_2442_pp0_iter4_reg;
        dactivations_0_load_3_reg_2462_pp0_iter1_reg <= dactivations_0_load_3_reg_2462;
        dactivations_0_load_3_reg_2462_pp0_iter2_reg <= dactivations_0_load_3_reg_2462_pp0_iter1_reg;
        dactivations_0_load_3_reg_2462_pp0_iter3_reg <= dactivations_0_load_3_reg_2462_pp0_iter2_reg;
        dactivations_0_load_3_reg_2462_pp0_iter4_reg <= dactivations_0_load_3_reg_2462_pp0_iter3_reg;
        dactivations_0_load_3_reg_2462_pp0_iter5_reg <= dactivations_0_load_3_reg_2462_pp0_iter4_reg;
        dactivations_1_load_2_reg_2447_pp0_iter1_reg <= dactivations_1_load_2_reg_2447;
        dactivations_1_load_2_reg_2447_pp0_iter2_reg <= dactivations_1_load_2_reg_2447_pp0_iter1_reg;
        dactivations_1_load_2_reg_2447_pp0_iter3_reg <= dactivations_1_load_2_reg_2447_pp0_iter2_reg;
        dactivations_1_load_2_reg_2447_pp0_iter4_reg <= dactivations_1_load_2_reg_2447_pp0_iter3_reg;
        dactivations_1_load_2_reg_2447_pp0_iter5_reg <= dactivations_1_load_2_reg_2447_pp0_iter4_reg;
        dactivations_1_load_3_reg_2467_pp0_iter1_reg <= dactivations_1_load_3_reg_2467;
        dactivations_1_load_3_reg_2467_pp0_iter2_reg <= dactivations_1_load_3_reg_2467_pp0_iter1_reg;
        dactivations_1_load_3_reg_2467_pp0_iter3_reg <= dactivations_1_load_3_reg_2467_pp0_iter2_reg;
        dactivations_1_load_3_reg_2467_pp0_iter4_reg <= dactivations_1_load_3_reg_2467_pp0_iter3_reg;
        dactivations_1_load_3_reg_2467_pp0_iter5_reg <= dactivations_1_load_3_reg_2467_pp0_iter4_reg;
        dactivations_2_load_2_reg_2452_pp0_iter1_reg <= dactivations_2_load_2_reg_2452;
        dactivations_2_load_2_reg_2452_pp0_iter2_reg <= dactivations_2_load_2_reg_2452_pp0_iter1_reg;
        dactivations_2_load_2_reg_2452_pp0_iter3_reg <= dactivations_2_load_2_reg_2452_pp0_iter2_reg;
        dactivations_2_load_2_reg_2452_pp0_iter4_reg <= dactivations_2_load_2_reg_2452_pp0_iter3_reg;
        dactivations_2_load_2_reg_2452_pp0_iter5_reg <= dactivations_2_load_2_reg_2452_pp0_iter4_reg;
        dactivations_2_load_3_reg_2472_pp0_iter1_reg <= dactivations_2_load_3_reg_2472;
        dactivations_2_load_3_reg_2472_pp0_iter2_reg <= dactivations_2_load_3_reg_2472_pp0_iter1_reg;
        dactivations_2_load_3_reg_2472_pp0_iter3_reg <= dactivations_2_load_3_reg_2472_pp0_iter2_reg;
        dactivations_2_load_3_reg_2472_pp0_iter4_reg <= dactivations_2_load_3_reg_2472_pp0_iter3_reg;
        dactivations_2_load_3_reg_2472_pp0_iter5_reg <= dactivations_2_load_3_reg_2472_pp0_iter4_reg;
        dactivations_3_load_2_reg_2457_pp0_iter1_reg <= dactivations_3_load_2_reg_2457;
        dactivations_3_load_2_reg_2457_pp0_iter2_reg <= dactivations_3_load_2_reg_2457_pp0_iter1_reg;
        dactivations_3_load_2_reg_2457_pp0_iter3_reg <= dactivations_3_load_2_reg_2457_pp0_iter2_reg;
        dactivations_3_load_2_reg_2457_pp0_iter4_reg <= dactivations_3_load_2_reg_2457_pp0_iter3_reg;
        dactivations_3_load_2_reg_2457_pp0_iter5_reg <= dactivations_3_load_2_reg_2457_pp0_iter4_reg;
        dactivations_3_load_3_reg_2477_pp0_iter1_reg <= dactivations_3_load_3_reg_2477;
        dactivations_3_load_3_reg_2477_pp0_iter2_reg <= dactivations_3_load_3_reg_2477_pp0_iter1_reg;
        dactivations_3_load_3_reg_2477_pp0_iter3_reg <= dactivations_3_load_3_reg_2477_pp0_iter2_reg;
        dactivations_3_load_3_reg_2477_pp0_iter4_reg <= dactivations_3_load_3_reg_2477_pp0_iter3_reg;
        dactivations_3_load_3_reg_2477_pp0_iter5_reg <= dactivations_3_load_3_reg_2477_pp0_iter4_reg;
        mul8_15_2_reg_3047_pp0_iter3_reg <= mul8_15_2_reg_3047;
        mul8_15_2_reg_3047_pp0_iter4_reg <= mul8_15_2_reg_3047_pp0_iter3_reg;
        mul8_27_reg_2817_pp0_iter2_reg <= mul8_27_reg_2817;
        mul8_27_reg_2817_pp0_iter3_reg <= mul8_27_reg_2817_pp0_iter2_reg;
        mul8_4_1_reg_2832_pp0_iter2_reg <= mul8_4_1_reg_2832;
        mul8_4_2_reg_2837_pp0_iter2_reg <= mul8_4_2_reg_2837;
        mul8_4_2_reg_2837_pp0_iter3_reg <= mul8_4_2_reg_2837_pp0_iter2_reg;
        mul8_s_reg_2812_pp0_iter2_reg <= mul8_s_reg_2812;
        zext_ln85_12_reg_2371[5 : 0] <= zext_ln85_12_fu_1537_p1[5 : 0];
        zext_ln85_13_reg_2376[5 : 0] <= zext_ln85_13_fu_1557_p1[5 : 0];
        zext_ln85_9_reg_2360[5 : 0] <= zext_ln85_9_fu_1477_p1[5 : 0];
        zext_ln87_10_reg_2365[5 : 0] <= zext_ln87_10_fu_1497_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_2079[7 : 1] <= empty_fu_1145_p2[7 : 1];
        i_11_reg_2040 <= ap_sig_allocacmp_i_11;
        mul8_11_1_reg_2992_pp0_iter3_reg <= mul8_11_1_reg_2992;
        mul8_14_1_reg_2997_pp0_iter3_reg <= mul8_14_1_reg_2997;
        mul8_15_1_reg_3002_pp0_iter3_reg <= mul8_15_1_reg_3002;
        mul8_1_2_reg_2967_pp0_iter3_reg <= mul8_1_2_reg_2967;
        mul8_1_2_reg_2967_pp0_iter4_reg <= mul8_1_2_reg_2967_pp0_iter3_reg;
        mul8_2_2_reg_2972_pp0_iter3_reg <= mul8_2_2_reg_2972;
        mul8_2_2_reg_2972_pp0_iter4_reg <= mul8_2_2_reg_2972_pp0_iter3_reg;
        mul8_3_2_reg_2977_pp0_iter3_reg <= mul8_3_2_reg_2977;
        mul8_3_2_reg_2977_pp0_iter4_reg <= mul8_3_2_reg_2977_pp0_iter3_reg;
        mul8_5_2_reg_2982_pp0_iter3_reg <= mul8_5_2_reg_2982;
        mul8_5_2_reg_2982_pp0_iter4_reg <= mul8_5_2_reg_2982_pp0_iter3_reg;
        mul8_6_2_reg_2987_pp0_iter3_reg <= mul8_6_2_reg_2987;
        mul8_6_2_reg_2987_pp0_iter4_reg <= mul8_6_2_reg_2987_pp0_iter3_reg;
        or_ln9_reg_2129[5 : 2] <= or_ln9_fu_1202_p3[5 : 2];
        tmp_19_reg_2047 <= ap_sig_allocacmp_i_11[32'd6];
        tmp_19_reg_2047_pp0_iter1_reg <= tmp_19_reg_2047;
        tmp_19_reg_2047_pp0_iter2_reg <= tmp_19_reg_2047_pp0_iter1_reg;
        tmp_19_reg_2047_pp0_iter3_reg <= tmp_19_reg_2047_pp0_iter2_reg;
        tmp_19_reg_2047_pp0_iter4_reg <= tmp_19_reg_2047_pp0_iter3_reg;
        tmp_19_reg_2047_pp0_iter5_reg <= tmp_19_reg_2047_pp0_iter4_reg;
        tmp_19_reg_2047_pp0_iter6_reg <= tmp_19_reg_2047_pp0_iter5_reg;
        zext_ln81_reg_2051[3 : 0] <= zext_ln81_fu_1086_p1[3 : 0];
        zext_ln81_reg_2051_pp0_iter1_reg[3 : 0] <= zext_ln81_reg_2051[3 : 0];
        zext_ln81_reg_2051_pp0_iter2_reg[3 : 0] <= zext_ln81_reg_2051_pp0_iter1_reg[3 : 0];
        zext_ln81_reg_2051_pp0_iter3_reg[3 : 0] <= zext_ln81_reg_2051_pp0_iter2_reg[3 : 0];
        zext_ln81_reg_2051_pp0_iter4_reg[3 : 0] <= zext_ln81_reg_2051_pp0_iter3_reg[3 : 0];
        zext_ln81_reg_2051_pp0_iter5_reg[3 : 0] <= zext_ln81_reg_2051_pp0_iter4_reg[3 : 0];
        zext_ln81_reg_2051_pp0_iter6_reg[3 : 0] <= zext_ln81_reg_2051_pp0_iter5_reg[3 : 0];
        zext_ln83_1_reg_2121[3 : 1] <= zext_ln83_1_fu_1184_p1[3 : 1];
        zext_ln83_1_reg_2121_pp0_iter1_reg[3 : 1] <= zext_ln83_1_reg_2121[3 : 1];
        zext_ln83_1_reg_2121_pp0_iter2_reg[3 : 1] <= zext_ln83_1_reg_2121_pp0_iter1_reg[3 : 1];
        zext_ln83_1_reg_2121_pp0_iter3_reg[3 : 1] <= zext_ln83_1_reg_2121_pp0_iter2_reg[3 : 1];
        zext_ln83_1_reg_2121_pp0_iter4_reg[3 : 1] <= zext_ln83_1_reg_2121_pp0_iter3_reg[3 : 1];
        zext_ln83_1_reg_2121_pp0_iter5_reg[3 : 1] <= zext_ln83_1_reg_2121_pp0_iter4_reg[3 : 1];
        zext_ln83_1_reg_2121_pp0_iter6_reg[3 : 1] <= zext_ln83_1_reg_2121_pp0_iter5_reg[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul8_10_1_reg_2952 <= grp_fu_976_p2;
        mul8_12_1_reg_2957 <= grp_fu_980_p2;
        mul8_13_1_reg_2962 <= grp_fu_984_p2;
        mul8_3_1_reg_2927 <= grp_fu_3116_p_dout0;
        mul8_6_1_reg_2932 <= grp_fu_960_p2;
        mul8_7_1_reg_2937 <= grp_fu_964_p2;
        mul8_8_1_reg_2942 <= grp_fu_968_p2;
        mul8_9_1_reg_2947 <= grp_fu_972_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul8_10_1_reg_2952_pp0_iter2_reg <= mul8_10_1_reg_2952;
        mul8_12_1_reg_2957_pp0_iter2_reg <= mul8_12_1_reg_2957;
        mul8_13_1_reg_2962_pp0_iter2_reg <= mul8_13_1_reg_2962;
        mul8_3_1_reg_2927_pp0_iter2_reg <= mul8_3_1_reg_2927;
        mul8_6_1_reg_2932_pp0_iter2_reg <= mul8_6_1_reg_2932;
        mul8_7_1_reg_2937_pp0_iter2_reg <= mul8_7_1_reg_2937;
        mul8_8_1_reg_2942_pp0_iter2_reg <= mul8_8_1_reg_2942;
        mul8_9_1_reg_2947_pp0_iter2_reg <= mul8_9_1_reg_2947;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_10_2_reg_3022 <= grp_fu_968_p2;
        mul8_11_2_reg_3027 <= grp_fu_972_p2;
        mul8_12_2_reg_3032 <= grp_fu_976_p2;
        mul8_13_2_reg_3037 <= grp_fu_980_p2;
        mul8_14_2_reg_3042 <= grp_fu_984_p2;
        mul8_7_2_reg_3007 <= grp_fu_3116_p_dout0;
        mul8_8_2_reg_3012 <= grp_fu_960_p2;
        mul8_9_2_reg_3017 <= grp_fu_964_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul8_10_reg_2902 <= grp_fu_968_p2;
        mul8_11_reg_2907 <= grp_fu_972_p2;
        mul8_13_reg_2912 <= grp_fu_976_p2;
        mul8_14_reg_2917 <= grp_fu_980_p2;
        mul8_15_reg_2922 <= grp_fu_984_p2;
        mul8_1_1_reg_2887 <= grp_fu_3116_p_dout0;
        mul8_2_1_reg_2892 <= grp_fu_960_p2;
        mul8_5_1_reg_2897 <= grp_fu_964_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_11_1_reg_2992 <= grp_fu_976_p2;
        mul8_14_1_reg_2997 <= grp_fu_980_p2;
        mul8_15_1_reg_3002 <= grp_fu_984_p2;
        mul8_1_2_reg_2967 <= grp_fu_3116_p_dout0;
        mul8_2_2_reg_2972 <= grp_fu_960_p2;
        mul8_3_2_reg_2977 <= grp_fu_964_p2;
        mul8_5_2_reg_2982 <= grp_fu_968_p2;
        mul8_6_2_reg_2987 <= grp_fu_972_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_12_reg_2882 <= grp_fu_984_p2;
        mul8_2_reg_2847 <= grp_fu_3116_p_dout0;
        mul8_3_reg_2852 <= grp_fu_960_p2;
        mul8_5_reg_2857 <= grp_fu_964_p2;
        mul8_6_reg_2862 <= grp_fu_968_p2;
        mul8_7_reg_2867 <= grp_fu_972_p2;
        mul8_8_reg_2872 <= grp_fu_976_p2;
        mul8_9_reg_2877 <= grp_fu_980_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_15_2_reg_3047 <= grp_fu_984_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul8_1_1_reg_2887_pp0_iter2_reg <= mul8_1_1_reg_2887;
        mul8_2_1_reg_2892_pp0_iter2_reg <= mul8_2_1_reg_2892;
        mul8_5_1_reg_2897_pp0_iter2_reg <= mul8_5_1_reg_2897;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_1_reg_2822 <= grp_fu_968_p2;
        mul8_27_reg_2817 <= grp_fu_964_p2;
        mul8_4_1_reg_2832 <= grp_fu_976_p2;
        mul8_4_2_reg_2837 <= grp_fu_980_p2;
        mul8_4_reg_2827 <= grp_fu_972_p2;
        mul8_reg_2807 <= grp_fu_3116_p_dout0;
        mul8_s_reg_2812 <= grp_fu_960_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1000 <= weights3_0_q1;
        reg_1004 <= weights3_1_q1;
        reg_1008 <= weights3_2_q1;
        reg_1012 <= weights3_3_q1;
        reg_1016 <= weights3_0_q0;
        reg_1020 <= weights3_1_q0;
        reg_1024 <= weights3_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1028 <= weights3_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1032 <= grp_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1041 <= grp_fu_992_p2;
        reg_1048 <= grp_fu_996_p2;
    end
end
always @ (*) begin
    if (((tmp_19_reg_2047 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (tmp_19_reg_2047_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter6_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter6_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to5 = 1'b1;
    end else begin
        ap_idle_pp0_0to5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_11 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_11 = i_fu_158;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_0_address0_local = zext_ln83_3_fu_1389_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_0_address0_local = zext_ln83_1_fu_1184_p1;
        end else begin
            dactivations_0_address0_local = 'bx;
        end
    end else begin
        dactivations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_0_address1_local = zext_ln83_2_fu_1343_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_0_address1_local = zext_ln81_fu_1086_p1;
        end else begin
            dactivations_0_address1_local = 'bx;
        end
    end else begin
        dactivations_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_0_ce0_local = 1'b1;
    end else begin
        dactivations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_0_ce1_local = 1'b1;
    end else begin
        dactivations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_1_address0_local = zext_ln83_3_fu_1389_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_1_address0_local = zext_ln83_1_fu_1184_p1;
        end else begin
            dactivations_1_address0_local = 'bx;
        end
    end else begin
        dactivations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_1_address1_local = zext_ln83_2_fu_1343_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_1_address1_local = zext_ln81_fu_1086_p1;
        end else begin
            dactivations_1_address1_local = 'bx;
        end
    end else begin
        dactivations_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_1_ce0_local = 1'b1;
    end else begin
        dactivations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_1_ce1_local = 1'b1;
    end else begin
        dactivations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_2_address0_local = zext_ln83_3_fu_1389_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_2_address0_local = zext_ln83_1_fu_1184_p1;
        end else begin
            dactivations_2_address0_local = 'bx;
        end
    end else begin
        dactivations_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_2_address1_local = zext_ln83_2_fu_1343_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_2_address1_local = zext_ln81_fu_1086_p1;
        end else begin
            dactivations_2_address1_local = 'bx;
        end
    end else begin
        dactivations_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_2_ce0_local = 1'b1;
    end else begin
        dactivations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_2_ce1_local = 1'b1;
    end else begin
        dactivations_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_3_address0_local = zext_ln83_3_fu_1389_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_3_address0_local = zext_ln83_1_fu_1184_p1;
        end else begin
            dactivations_3_address0_local = 'bx;
        end
    end else begin
        dactivations_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            dactivations_3_address1_local = zext_ln83_2_fu_1343_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            dactivations_3_address1_local = zext_ln81_fu_1086_p1;
        end else begin
            dactivations_3_address1_local = 'bx;
        end
    end else begin
        dactivations_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_3_ce0_local = 1'b1;
    end else begin
        dactivations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        dactivations_3_ce1_local = 1'b1;
    end else begin
        dactivations_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_916_p0 = add11_2_1_reg_3147;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_916_p0 = add11_10_reg_3107;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_916_p0 = add11_2_reg_3067;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_916_p0 = mul8_10_reg_2902;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_916_p0 = mul8_2_reg_2847;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_916_p0 = mul8_reg_2807;
    end else begin
        grp_fu_916_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_916_p1 = mul8_2_2_reg_2972_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_916_p1 = mul8_10_1_reg_2952_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_916_p1 = mul8_2_1_reg_2892_pp0_iter2_reg;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_916_p1 = 64'd0;
    end else begin
        grp_fu_916_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_921_p0 = add11_3_1_reg_3152;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_921_p0 = add11_11_reg_3112;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_921_p0 = add11_3_reg_3072;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_921_p0 = mul8_11_reg_2907;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_921_p0 = mul8_3_reg_2852;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_921_p0 = mul8_1_reg_2822;
    end else begin
        grp_fu_921_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_921_p1 = mul8_3_2_reg_2977_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_921_p1 = mul8_11_1_reg_2992_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_921_p1 = mul8_3_1_reg_2927_pp0_iter2_reg;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_921_p1 = 64'd0;
    end else begin
        grp_fu_921_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_926_p0 = add11_5_1_reg_3157;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_926_p0 = add11_13_reg_3117;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_926_p0 = add11_5_reg_3077;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_926_p0 = mul8_13_reg_2912;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_926_p0 = mul8_5_reg_2857;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_926_p0 = mul8_4_reg_2827;
    end else begin
        grp_fu_926_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_926_p1 = mul8_5_2_reg_2982_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_926_p1 = mul8_13_1_reg_2962_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_926_p1 = mul8_5_1_reg_2897_pp0_iter2_reg;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_926_p1 = 64'd0;
    end else begin
        grp_fu_926_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_931_p0 = add11_10_1_reg_3187;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_931_p0 = add11_6_1_reg_3162;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_931_p0 = add11_14_reg_3122;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_931_p0 = add11_6_reg_3082;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_931_p0 = mul8_14_reg_2917;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_931_p0 = mul8_6_reg_2862;
    end else begin
        grp_fu_931_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_931_p1 = mul8_10_2_reg_3022_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_931_p1 = mul8_6_2_reg_2987_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_931_p1 = mul8_14_1_reg_2997_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_931_p1 = mul8_6_1_reg_2932_pp0_iter2_reg;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_931_p1 = 64'd0;
    end else begin
        grp_fu_931_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_936_p0 = add11_11_1_reg_3192;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_936_p0 = add11_7_1_reg_3167;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_936_p0 = add11_15_reg_3127;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_936_p0 = add11_7_reg_3087;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_936_p0 = mul8_15_reg_2922;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_936_p0 = mul8_7_reg_2867;
    end else begin
        grp_fu_936_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_936_p1 = mul8_11_2_reg_3027_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_936_p1 = mul8_7_2_reg_3007_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_936_p1 = mul8_15_1_reg_3002_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_936_p1 = mul8_7_1_reg_2937_pp0_iter2_reg;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_936_p1 = 64'd0;
    end else begin
        grp_fu_936_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_941_p0 = add11_13_1_reg_3197;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_941_p0 = add11_8_1_reg_3172;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_941_p0 = add11_s_reg_3132;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_941_p0 = add11_8_reg_3092;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_941_p0 = add_reg_3052;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_941_p0 = mul8_8_reg_2872;
    end else begin
        grp_fu_941_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_941_p1 = mul8_13_2_reg_3037_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_941_p1 = mul8_8_2_reg_3012_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_941_p1 = mul8_27_reg_2817_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_941_p1 = mul8_8_1_reg_2942_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_941_p1 = mul8_s_reg_2812_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_941_p1 = 64'd0;
    end else begin
        grp_fu_941_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_946_p0 = add11_14_1_reg_3202;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_946_p0 = add11_9_1_reg_3177;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_946_p0 = add11_1_1_reg_3137;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_946_p0 = add11_9_reg_3097;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_946_p0 = add11_1_reg_3057;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_946_p0 = mul8_9_reg_2877;
    end else begin
        grp_fu_946_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_946_p1 = mul8_14_2_reg_3042_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_946_p1 = mul8_9_2_reg_3017_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_946_p1 = mul8_1_2_reg_2967_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_946_p1 = mul8_9_1_reg_2947_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_946_p1 = mul8_1_1_reg_2887_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_946_p1 = 64'd0;
    end else begin
        grp_fu_946_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_951_p0 = add11_15_1_reg_3207;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_951_p0 = add11_12_1_reg_3182;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_951_p0 = add11_4_1_reg_3142;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_951_p0 = add11_12_reg_3102;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_951_p0 = add11_4_reg_3062;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_951_p0 = mul8_12_reg_2882;
    end else begin
        grp_fu_951_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_951_p1 = mul8_15_2_reg_3047_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_951_p1 = mul8_12_2_reg_3032_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_951_p1 = mul8_4_2_reg_2837_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_951_p1 = mul8_12_1_reg_2957_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_951_p1 = mul8_4_1_reg_2832_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_951_p1 = 64'd0;
    end else begin
        grp_fu_951_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_956_p0 = bitcast_ln85_23_fu_1952_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_956_p0 = bitcast_ln85_5_fu_1912_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_956_p0 = bitcast_ln85_10_fu_1862_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_956_p0 = bitcast_ln85_4_fu_1742_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_956_p0 = bitcast_ln85_6_fu_1622_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_956_p0 = bitcast_ln85_fu_1407_p1;
    end else begin
        grp_fu_956_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_956_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_956_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_956_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_956_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_960_p0 = bitcast_ln85_26_fu_1957_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_960_p0 = bitcast_ln85_8_fu_1917_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_960_p0 = bitcast_ln85_19_fu_1867_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_960_p0 = bitcast_ln85_7_fu_1747_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_960_p0 = bitcast_ln85_9_fu_1627_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_960_p0 = bitcast_ln85_1_fu_1412_p1;
    end else begin
        grp_fu_960_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_960_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_960_p1 = output_differences_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_960_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_960_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_964_p0 = bitcast_ln85_29_fu_1962_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_964_p0 = bitcast_ln85_11_fu_1922_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_964_p0 = bitcast_ln85_22_fu_1872_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_964_p0 = bitcast_ln85_16_fu_1752_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_964_p0 = bitcast_ln85_15_fu_1632_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_964_p0 = bitcast_ln85_2_fu_1417_p1;
    end else begin
        grp_fu_964_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_964_p1 = output_differences_0_1_val;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_964_p1 = output_differences_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_964_p1 = output_differences_0_2_val;
    end else begin
        grp_fu_964_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_968_p0 = bitcast_ln85_32_fu_1967_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_968_p0 = bitcast_ln85_17_fu_1927_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_968_p0 = bitcast_ln85_25_fu_1877_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_968_p0 = bitcast_ln85_30_fu_1757_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_968_p0 = bitcast_ln85_18_fu_1637_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_968_p0 = bitcast_ln85_3_fu_1562_p1;
    end else begin
        grp_fu_968_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_968_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_968_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_968_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_968_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_972_p0 = bitcast_ln85_35_fu_1972_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_972_p0 = bitcast_ln85_20_fu_1932_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_972_p0 = bitcast_ln85_28_fu_1882_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_972_p0 = bitcast_ln85_33_fu_1762_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_972_p0 = bitcast_ln85_21_fu_1642_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_972_p0 = bitcast_ln85_12_fu_1567_p1;
    end else begin
        grp_fu_972_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_972_p1 = output_differences_0_2_val;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_972_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_972_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_972_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_976_p0 = bitcast_ln85_38_fu_1977_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_976_p0 = bitcast_ln85_34_fu_1937_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_976_p0 = bitcast_ln85_31_fu_1887_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_976_p0 = bitcast_ln85_39_fu_1767_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_976_p0 = bitcast_ln85_24_fu_1647_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_976_p0 = bitcast_ln85_13_fu_1572_p1;
    end else begin
        grp_fu_976_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_976_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_976_p1 = output_differences_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_976_p1 = output_differences_0_1_val;
    end else begin
        grp_fu_976_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_980_p0 = bitcast_ln85_41_fu_1982_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_980_p0 = bitcast_ln85_43_fu_1942_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_980_p0 = bitcast_ln85_37_fu_1892_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_980_p0 = bitcast_ln85_42_fu_1772_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_980_p0 = bitcast_ln85_27_fu_1652_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_980_p0 = bitcast_ln85_14_fu_1577_p1;
    end else begin
        grp_fu_980_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_980_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_980_p1 = output_differences_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_980_p1 = output_differences_0_2_val;
    end else begin
        grp_fu_980_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_984_p0 = bitcast_ln85_47_fu_1992_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_984_p0 = bitcast_ln85_44_fu_1987_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_984_p0 = bitcast_ln85_46_fu_1947_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_984_p0 = bitcast_ln85_40_fu_1897_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_984_p0 = bitcast_ln85_45_fu_1777_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_984_p0 = bitcast_ln85_36_fu_1657_p1;
    end else begin
        grp_fu_984_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_984_p1 = output_differences_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_984_p1 = output_differences_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_984_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_984_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_988_p0 = add11_15_2_reg_3287;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_988_p0 = add11_12_2_reg_3262;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_988_p0 = add11_9_2_reg_3257;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_988_p0 = add11_6_2_reg_3242;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_988_p0 = add11_2_2_reg_3227;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_988_p0 = add11_27_reg_3212;
    end else begin
        grp_fu_988_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_988_p1 = dactivations_3_load_3_reg_2477_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_988_p1 = dactivations_0_load_3_reg_2462_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_988_p1 = dactivations_1_load_2_reg_2447_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_988_p1 = dactivations_2_load_1_reg_2335_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_988_p1 = dactivations_2_load_reg_2315_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_988_p1 = dactivations_0_load_reg_2175_pp0_iter5_reg;
    end else begin
        grp_fu_988_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_992_p0 = add11_13_2_reg_3277;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_992_p0 = add11_10_2_reg_3267;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_992_p0 = add11_7_2_reg_3247;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_992_p0 = add11_3_2_reg_3232;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_992_p0 = add11_1_2_reg_3217;
    end else begin
        grp_fu_992_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_992_p1 = dactivations_1_load_3_reg_2467_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_992_p1 = dactivations_2_load_2_reg_2452_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_992_p1 = dactivations_3_load_1_reg_2340_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_992_p1 = dactivations_3_load_reg_2320_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_992_p1 = dactivations_1_load_reg_2310_pp0_iter5_reg;
    end else begin
        grp_fu_992_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_996_p0 = add11_14_2_reg_3282;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_996_p0 = add11_11_2_reg_3272;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_996_p0 = add11_8_2_reg_3252;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_996_p0 = add11_5_2_reg_3237;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_996_p0 = add11_4_2_reg_3222;
    end else begin
        grp_fu_996_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_996_p1 = dactivations_2_load_3_reg_2472_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_996_p1 = dactivations_3_load_2_reg_2457_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_996_p1 = dactivations_0_load_2_reg_2442_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_996_p1 = dactivations_1_load_1_reg_2330_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_996_p1 = dactivations_0_load_1_reg_2325_pp0_iter5_reg;
    end else begin
        grp_fu_996_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_0_address0_local = zext_ln83_3_reg_2236_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_0_address0_local = zext_ln83_2_reg_2202_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        oracle_activations_0_address0_local = zext_ln83_1_reg_2121_pp0_iter6_reg;
    end else begin
        oracle_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        oracle_activations_0_ce0_local = 1'b1;
    end else begin
        oracle_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        oracle_activations_0_ce1_local = 1'b1;
    end else begin
        oracle_activations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_0_d0_local = reg_1032;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        oracle_activations_0_d0_local = reg_1048;
    end else begin
        oracle_activations_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        oracle_activations_0_we0_local = 1'b1;
    end else begin
        oracle_activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        oracle_activations_0_we1_local = 1'b1;
    end else begin
        oracle_activations_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_1_address0_local = zext_ln83_3_reg_2236_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_1_address0_local = zext_ln83_2_reg_2202_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        oracle_activations_1_address0_local = zext_ln83_1_reg_2121_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        oracle_activations_1_address0_local = zext_ln81_reg_2051_pp0_iter6_reg;
    end else begin
        oracle_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_1_ce0_local = 1'b1;
    end else begin
        oracle_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_1_d0_local = reg_1032;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        oracle_activations_1_d0_local = reg_1048;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        oracle_activations_1_d0_local = reg_1041;
    end else begin
        oracle_activations_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_1_we0_local = 1'b1;
    end else begin
        oracle_activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_2_address0_local = zext_ln83_3_reg_2236_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_2_address0_local = zext_ln83_2_reg_2202_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_2_address0_local = zext_ln83_1_reg_2121_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        oracle_activations_2_address0_local = zext_ln81_reg_2051_pp0_iter6_reg;
    end else begin
        oracle_activations_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_2_ce0_local = 1'b1;
    end else begin
        oracle_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        oracle_activations_2_d0_local = reg_1048;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_2_d0_local = reg_1041;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        oracle_activations_2_d0_local = reg_1032;
    end else begin
        oracle_activations_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_2_we0_local = 1'b1;
    end else begin
        oracle_activations_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        oracle_activations_3_address0_local = zext_ln83_3_reg_2236_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_3_address0_local = zext_ln83_2_reg_2202_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations_3_address0_local = zext_ln83_1_reg_2121_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        oracle_activations_3_address0_local = zext_ln81_reg_2051_pp0_iter6_reg;
    end else begin
        oracle_activations_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_3_ce0_local = 1'b1;
    end else begin
        oracle_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        oracle_activations_3_d0_local = reg_1032;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        oracle_activations_3_d0_local = reg_1048;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        oracle_activations_3_d0_local = reg_1041;
    end else begin
        oracle_activations_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        oracle_activations_3_we0_local = 1'b1;
    end else begin
        oracle_activations_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_0_address0_local = zext_ln87_13_fu_1857_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_0_address0_local = zext_ln87_5_fu_1737_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_0_address0_local = zext_ln85_11_fu_1617_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_0_address0_local = zext_ln85_5_fu_1457_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address0_local = zext_ln87_11_fu_1402_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_0_address0_local = zext_ln87_3_fu_1210_p1;
        end else begin
            weights3_0_address0_local = 'bx;
        end
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_0_address1_local = zext_ln87_9_fu_1817_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_0_address1_local = zext_ln87_1_fu_1697_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_0_address1_local = zext_ln85_8_fu_1597_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_0_address1_local = zext_ln85_2_fu_1437_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_0_address1_local = zext_ln87_7_fu_1356_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_0_address1_local = zext_ln85_fu_1108_p1;
        end else begin
            weights3_0_address1_local = 'bx;
        end
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_1_address0_local = zext_ln87_12_fu_1837_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_1_address0_local = zext_ln87_4_fu_1717_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_1_address0_local = zext_ln87_11_reg_2244;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_1_address0_local = zext_ln85_13_fu_1557_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address0_local = zext_ln87_6_fu_1312_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_1_address0_local = zext_ln87_3_fu_1210_p1;
        end else begin
            weights3_1_address0_local = 'bx;
        end
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_1_address1_local = zext_ln87_8_fu_1797_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_1_address1_local = zext_ln87_fu_1677_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_1_address1_local = zext_ln87_7_reg_2210;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_1_address1_local = zext_ln87_10_fu_1497_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_1_address1_local = zext_ln87_2_fu_1252_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_1_address1_local = zext_ln85_fu_1108_p1;
        end else begin
            weights3_1_address1_local = 'bx;
        end
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_2_address0_local = zext_ln87_11_reg_2244;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_2_address0_local = zext_ln85_13_reg_2376;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_2_address0_local = zext_ln87_6_reg_2196;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_2_address0_local = zext_ln85_12_fu_1537_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_2_address0_local = zext_ln85_6_fu_1292_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_2_address0_local = zext_ln87_3_fu_1210_p1;
        end else begin
            weights3_2_address0_local = 'bx;
        end
    end else begin
        weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_2_address1_local = zext_ln87_7_reg_2210;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_2_address1_local = zext_ln87_10_reg_2365;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_2_address1_local = zext_ln87_2_reg_2185;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_2_address1_local = zext_ln85_9_fu_1477_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_2_address1_local = zext_ln85_3_fu_1232_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_2_address1_local = zext_ln85_fu_1108_p1;
        end else begin
            weights3_2_address1_local = 'bx;
        end
    end else begin
        weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce1_local = 1'b1;
    end else begin
        weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_address0_local = zext_ln85_13_reg_2376;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_3_address0_local = zext_ln87_10_reg_2365;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_3_address0_local = zext_ln85_12_reg_2371;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_3_address0_local = zext_ln85_9_reg_2360;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_3_address0_local = zext_ln85_10_fu_1517_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_address0_local = zext_ln85_7_fu_1376_p1;
    end else begin
        weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_3_address1_local = zext_ln87_6_reg_2196;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_3_address1_local = zext_ln87_2_reg_2185;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights3_3_address1_local = zext_ln85_6_reg_2191;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_3_address1_local = zext_ln85_3_reg_2180;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_3_address1_local = zext_ln85_4_fu_1272_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_3_address1_local = zext_ln85_1_fu_1161_p1;
        end else begin
            weights3_3_address1_local = 'bx;
        end
    end else begin
        weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce1_local = 1'b1;
    end else begin
        weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to5 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter6_stage3))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln82_fu_1902_p2 = (i_11_reg_2040 + 7'd16);
assign add_ln85_10_fu_1397_p2 = (or_ln9_reg_2129 + 6'd6);
assign add_ln85_11_fu_1602_p2 = (empty_reg_2079 + 8'd37);
assign add_ln85_12_fu_1822_p2 = (empty_reg_2079 + 8'd38);
assign add_ln85_13_fu_1842_p2 = (empty_reg_2079 + 8'd41);
assign add_ln85_1_fu_1662_p2 = (empty_reg_2079 + 8'd2);
assign add_ln85_2_fu_1682_p2 = (empty_reg_2079 + 8'd5);
assign add_ln85_3_fu_1442_p2 = (empty_reg_2079 + 8'd13);
assign add_ln85_4_fu_1702_p2 = (empty_reg_2079 + 8'd14);
assign add_ln85_5_fu_1722_p2 = (empty_reg_2079 + 8'd17);
assign add_ln85_6_fu_1351_p2 = (or_ln9_reg_2129 + 6'd3);
assign add_ln85_7_fu_1582_p2 = (empty_reg_2079 + 8'd25);
assign add_ln85_8_fu_1782_p2 = (empty_reg_2079 + 8'd26);
assign add_ln85_9_fu_1802_p2 = (empty_reg_2079 + 8'd29);
assign add_ln85_fu_1422_p2 = (empty_reg_2079 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign bitcast_ln85_10_fu_1862_p1 = reg_1008;
assign bitcast_ln85_11_fu_1922_p1 = reg_1012;
assign bitcast_ln85_12_fu_1567_p1 = reg_1016;
assign bitcast_ln85_13_fu_1572_p1 = reg_1020;
assign bitcast_ln85_14_fu_1577_p1 = reg_1024;
assign bitcast_ln85_15_fu_1632_p1 = reg_1012;
assign bitcast_ln85_16_fu_1752_p1 = reg_1016;
assign bitcast_ln85_17_fu_1927_p1 = reg_1020;
assign bitcast_ln85_18_fu_1637_p1 = reg_1024;
assign bitcast_ln85_19_fu_1867_p1 = reg_1012;
assign bitcast_ln85_1_fu_1412_p1 = reg_1004;
assign bitcast_ln85_20_fu_1932_p1 = reg_1016;
assign bitcast_ln85_21_fu_1642_p1 = reg_1020;
assign bitcast_ln85_22_fu_1872_p1 = reg_1024;
assign bitcast_ln85_23_fu_1952_p1 = reg_1012;
assign bitcast_ln85_24_fu_1647_p1 = reg_1000;
assign bitcast_ln85_25_fu_1877_p1 = reg_1004;
assign bitcast_ln85_26_fu_1957_p1 = reg_1008;
assign bitcast_ln85_27_fu_1652_p1 = reg_1028;
assign bitcast_ln85_28_fu_1882_p1 = reg_1000;
assign bitcast_ln85_29_fu_1962_p1 = reg_1004;
assign bitcast_ln85_2_fu_1417_p1 = reg_1008;
assign bitcast_ln85_30_fu_1757_p1 = reg_1008;
assign bitcast_ln85_31_fu_1887_p1 = reg_1028;
assign bitcast_ln85_32_fu_1967_p1 = reg_1000;
assign bitcast_ln85_33_fu_1762_p1 = reg_1004;
assign bitcast_ln85_34_fu_1937_p1 = reg_1008;
assign bitcast_ln85_35_fu_1972_p1 = reg_1028;
assign bitcast_ln85_36_fu_1657_p1 = reg_1016;
assign bitcast_ln85_37_fu_1892_p1 = reg_1020;
assign bitcast_ln85_38_fu_1977_p1 = reg_1024;
assign bitcast_ln85_39_fu_1767_p1 = reg_1028;
assign bitcast_ln85_3_fu_1562_p1 = reg_1012;
assign bitcast_ln85_40_fu_1897_p1 = reg_1016;
assign bitcast_ln85_41_fu_1982_p1 = reg_1020;
assign bitcast_ln85_42_fu_1772_p1 = reg_1024;
assign bitcast_ln85_43_fu_1942_p1 = reg_1028;
assign bitcast_ln85_44_fu_1987_p1 = reg_1016;
assign bitcast_ln85_45_fu_1777_p1 = reg_1020;
assign bitcast_ln85_46_fu_1947_p1 = reg_1024;
assign bitcast_ln85_47_fu_1992_p1 = reg_1028;
assign bitcast_ln85_4_fu_1742_p1 = reg_1000;
assign bitcast_ln85_5_fu_1912_p1 = reg_1004;
assign bitcast_ln85_6_fu_1622_p1 = reg_1008;
assign bitcast_ln85_7_fu_1747_p1 = reg_1012;
assign bitcast_ln85_8_fu_1917_p1 = reg_1000;
assign bitcast_ln85_9_fu_1627_p1 = reg_1004;
assign bitcast_ln85_fu_1407_p1 = reg_1000;
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
assign empty_124_fu_1217_p2 = (empty_reg_2079 + 8'd3);
assign empty_125_fu_1237_p2 = (empty_reg_2079 + 8'd6);
assign empty_126_fu_1257_p2 = (empty_reg_2079 + 8'd12);
assign empty_127_fu_1277_p2 = (empty_reg_2079 + 8'd15);
assign empty_128_fu_1297_p2 = (empty_reg_2079 + 8'd18);
assign empty_129_fu_1361_p2 = (empty_reg_2079 + 8'd24);
assign empty_130_fu_1462_p2 = (empty_reg_2079 + 8'd27);
assign empty_131_fu_1482_p2 = (empty_reg_2079 + 8'd30);
assign empty_132_fu_1502_p2 = (empty_reg_2079 + 8'd36);
assign empty_133_fu_1522_p2 = (empty_reg_2079 + 8'd39);
assign empty_134_fu_1542_p2 = (empty_reg_2079 + 8'd42);
assign empty_fu_1145_p2 = (p_shl_fu_1137_p3 - zext_ln83_fu_1133_p1);
assign grp_fu_3044_p_ce = 1'b1;
assign grp_fu_3044_p_din0 = grp_fu_916_p0;
assign grp_fu_3044_p_din1 = grp_fu_916_p1;
assign grp_fu_3044_p_opcode = 2'd0;
assign grp_fu_3048_p_ce = 1'b1;
assign grp_fu_3048_p_din0 = grp_fu_921_p0;
assign grp_fu_3048_p_din1 = grp_fu_921_p1;
assign grp_fu_3048_p_opcode = 2'd0;
assign grp_fu_3052_p_ce = 1'b1;
assign grp_fu_3052_p_din0 = grp_fu_926_p0;
assign grp_fu_3052_p_din1 = grp_fu_926_p1;
assign grp_fu_3052_p_opcode = 2'd0;
assign grp_fu_3056_p_ce = 1'b1;
assign grp_fu_3056_p_din0 = grp_fu_931_p0;
assign grp_fu_3056_p_din1 = grp_fu_931_p1;
assign grp_fu_3056_p_opcode = 2'd0;
assign grp_fu_3060_p_ce = 1'b1;
assign grp_fu_3060_p_din0 = grp_fu_936_p0;
assign grp_fu_3060_p_din1 = grp_fu_936_p1;
assign grp_fu_3060_p_opcode = 2'd0;
assign grp_fu_3064_p_ce = 1'b1;
assign grp_fu_3064_p_din0 = grp_fu_941_p0;
assign grp_fu_3064_p_din1 = grp_fu_941_p1;
assign grp_fu_3064_p_opcode = 2'd0;
assign grp_fu_3068_p_ce = 1'b1;
assign grp_fu_3068_p_din0 = grp_fu_946_p0;
assign grp_fu_3068_p_din1 = grp_fu_946_p1;
assign grp_fu_3068_p_opcode = 2'd0;
assign grp_fu_3072_p_ce = 1'b1;
assign grp_fu_3072_p_din0 = grp_fu_951_p0;
assign grp_fu_3072_p_din1 = grp_fu_951_p1;
assign grp_fu_3072_p_opcode = 2'd0;
assign grp_fu_3116_p_ce = 1'b1;
assign grp_fu_3116_p_din0 = grp_fu_956_p0;
assign grp_fu_3116_p_din1 = grp_fu_956_p1;
assign lshr_ln1_fu_1151_p4 = {{empty_fu_1145_p2[7:2]}};
assign lshr_ln85_10_fu_1302_p4 = {{empty_128_fu_1297_p2[7:2]}};
assign lshr_ln85_11_fu_1366_p4 = {{empty_129_fu_1361_p2[7:2]}};
assign lshr_ln85_12_fu_1587_p4 = {{add_ln85_7_fu_1582_p2[7:2]}};
assign lshr_ln85_13_fu_1787_p4 = {{add_ln85_8_fu_1782_p2[7:2]}};
assign lshr_ln85_14_fu_1467_p4 = {{empty_130_fu_1462_p2[7:2]}};
assign lshr_ln85_15_fu_1807_p4 = {{add_ln85_9_fu_1802_p2[7:2]}};
assign lshr_ln85_16_fu_1487_p4 = {{empty_131_fu_1482_p2[7:2]}};
assign lshr_ln85_17_fu_1507_p4 = {{empty_132_fu_1502_p2[7:2]}};
assign lshr_ln85_18_fu_1607_p4 = {{add_ln85_11_fu_1602_p2[7:2]}};
assign lshr_ln85_19_fu_1827_p4 = {{add_ln85_12_fu_1822_p2[7:2]}};
assign lshr_ln85_1_fu_1427_p4 = {{add_ln85_fu_1422_p2[7:2]}};
assign lshr_ln85_20_fu_1527_p4 = {{empty_133_fu_1522_p2[7:2]}};
assign lshr_ln85_21_fu_1847_p4 = {{add_ln85_13_fu_1842_p2[7:2]}};
assign lshr_ln85_22_fu_1547_p4 = {{empty_134_fu_1542_p2[7:2]}};
assign lshr_ln85_2_fu_1667_p4 = {{add_ln85_1_fu_1662_p2[7:2]}};
assign lshr_ln85_3_fu_1222_p4 = {{empty_124_fu_1217_p2[7:2]}};
assign lshr_ln85_4_fu_1687_p4 = {{add_ln85_2_fu_1682_p2[7:2]}};
assign lshr_ln85_5_fu_1242_p4 = {{empty_125_fu_1237_p2[7:2]}};
assign lshr_ln85_6_fu_1262_p4 = {{empty_126_fu_1257_p2[7:2]}};
assign lshr_ln85_7_fu_1447_p4 = {{add_ln85_3_fu_1442_p2[7:2]}};
assign lshr_ln85_8_fu_1707_p4 = {{add_ln85_4_fu_1702_p2[7:2]}};
assign lshr_ln85_9_fu_1282_p4 = {{empty_127_fu_1277_p2[7:2]}};
assign lshr_ln85_s_fu_1727_p4 = {{add_ln85_5_fu_1722_p2[7:2]}};
assign lshr_ln_fu_1072_p4 = {{ap_sig_allocacmp_i_11[5:2]}};
assign or_ln83_1_fu_1333_p4 = {{{tmp_33_fu_1317_p4}, {1'd1}}, {tmp_20_fu_1326_p3}};
assign or_ln83_2_fu_1381_p3 = {{tmp_33_fu_1317_p4}, {2'd3}};
assign or_ln8_fu_1176_p3 = {{tmp_s_fu_1166_p4}, {1'd1}};
assign or_ln9_fu_1202_p3 = {{tmp_32_fu_1192_p4}, {2'd3}};
assign or_ln_fu_1125_p3 = {{tmp_fu_1115_p4}, {1'd1}};
assign oracle_activations_0_address0 = oracle_activations_0_address0_local;
assign oracle_activations_0_address1 = zext_ln81_reg_2051_pp0_iter6_reg;
assign oracle_activations_0_ce0 = oracle_activations_0_ce0_local;
assign oracle_activations_0_ce1 = oracle_activations_0_ce1_local;
assign oracle_activations_0_d0 = oracle_activations_0_d0_local;
assign oracle_activations_0_d1 = reg_1032;
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
assign p_shl5_fu_1094_p3 = {{lshr_ln_fu_1072_p4}, {2'd0}};
assign p_shl_fu_1137_p3 = {{tmp_fu_1115_p4}, {3'd4}};
assign sub_ln85_fu_1102_p2 = (p_shl5_fu_1094_p3 - zext_ln81_1_fu_1082_p1);
assign tmp_20_fu_1326_p3 = i_11_reg_2040[32'd2];
assign tmp_32_fu_1192_p4 = {{sub_ln85_fu_1102_p2[5:2]}};
assign tmp_33_fu_1317_p4 = {{i_11_reg_2040[5:4]}};
assign tmp_fu_1115_p4 = {{ap_sig_allocacmp_i_11[5:1]}};
assign tmp_s_fu_1166_p4 = {{ap_sig_allocacmp_i_11[5:3]}};
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
assign zext_ln81_1_fu_1082_p1 = lshr_ln_fu_1072_p4;
assign zext_ln81_fu_1086_p1 = lshr_ln_fu_1072_p4;
assign zext_ln83_1_fu_1184_p1 = or_ln8_fu_1176_p3;
assign zext_ln83_2_fu_1343_p1 = or_ln83_1_fu_1333_p4;
assign zext_ln83_3_fu_1389_p1 = or_ln83_2_fu_1381_p3;
assign zext_ln83_fu_1133_p1 = or_ln_fu_1125_p3;
assign zext_ln85_10_fu_1517_p1 = lshr_ln85_17_fu_1507_p4;
assign zext_ln85_11_fu_1617_p1 = lshr_ln85_18_fu_1607_p4;
assign zext_ln85_12_fu_1537_p1 = lshr_ln85_20_fu_1527_p4;
assign zext_ln85_13_fu_1557_p1 = lshr_ln85_22_fu_1547_p4;
assign zext_ln85_1_fu_1161_p1 = lshr_ln1_fu_1151_p4;
assign zext_ln85_2_fu_1437_p1 = lshr_ln85_1_fu_1427_p4;
assign zext_ln85_3_fu_1232_p1 = lshr_ln85_3_fu_1222_p4;
assign zext_ln85_4_fu_1272_p1 = lshr_ln85_6_fu_1262_p4;
assign zext_ln85_5_fu_1457_p1 = lshr_ln85_7_fu_1447_p4;
assign zext_ln85_6_fu_1292_p1 = lshr_ln85_9_fu_1282_p4;
assign zext_ln85_7_fu_1376_p1 = lshr_ln85_11_fu_1366_p4;
assign zext_ln85_8_fu_1597_p1 = lshr_ln85_12_fu_1587_p4;
assign zext_ln85_9_fu_1477_p1 = lshr_ln85_14_fu_1467_p4;
assign zext_ln85_fu_1108_p1 = sub_ln85_fu_1102_p2;
assign zext_ln87_10_fu_1497_p1 = lshr_ln85_16_fu_1487_p4;
assign zext_ln87_11_fu_1402_p1 = add_ln85_10_fu_1397_p2;
assign zext_ln87_12_fu_1837_p1 = lshr_ln85_19_fu_1827_p4;
assign zext_ln87_13_fu_1857_p1 = lshr_ln85_21_fu_1847_p4;
assign zext_ln87_1_fu_1697_p1 = lshr_ln85_4_fu_1687_p4;
assign zext_ln87_2_fu_1252_p1 = lshr_ln85_5_fu_1242_p4;
assign zext_ln87_3_fu_1210_p1 = or_ln9_fu_1202_p3;
assign zext_ln87_4_fu_1717_p1 = lshr_ln85_8_fu_1707_p4;
assign zext_ln87_5_fu_1737_p1 = lshr_ln85_s_fu_1727_p4;
assign zext_ln87_6_fu_1312_p1 = lshr_ln85_10_fu_1302_p4;
assign zext_ln87_7_fu_1356_p1 = add_ln85_6_fu_1351_p2;
assign zext_ln87_8_fu_1797_p1 = lshr_ln85_13_fu_1787_p4;
assign zext_ln87_9_fu_1817_p1 = lshr_ln85_15_fu_1807_p4;
assign zext_ln87_fu_1677_p1 = lshr_ln85_2_fu_1667_p4;
always @ (posedge ap_clk) begin
    zext_ln81_reg_2051[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_2051_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_2051_pp0_iter2_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_2051_pp0_iter3_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_2051_pp0_iter4_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_2051_pp0_iter5_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln81_reg_2051_pp0_iter6_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    empty_reg_2079[0] <= 1'b1;
    zext_ln83_1_reg_2121[0] <= 1'b1;
    zext_ln83_1_reg_2121[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_2121_pp0_iter1_reg[0] <= 1'b1;
    zext_ln83_1_reg_2121_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_2121_pp0_iter2_reg[0] <= 1'b1;
    zext_ln83_1_reg_2121_pp0_iter2_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_2121_pp0_iter3_reg[0] <= 1'b1;
    zext_ln83_1_reg_2121_pp0_iter3_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_2121_pp0_iter4_reg[0] <= 1'b1;
    zext_ln83_1_reg_2121_pp0_iter4_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_2121_pp0_iter5_reg[0] <= 1'b1;
    zext_ln83_1_reg_2121_pp0_iter5_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_2121_pp0_iter6_reg[0] <= 1'b1;
    zext_ln83_1_reg_2121_pp0_iter6_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    or_ln9_reg_2129[1:0] <= 2'b11;
    zext_ln85_3_reg_2180[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln87_2_reg_2185[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln85_6_reg_2191[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln87_6_reg_2196[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_2202[1] <= 1'b1;
    zext_ln83_2_reg_2202[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_2202_pp0_iter1_reg[1] <= 1'b1;
    zext_ln83_2_reg_2202_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_2202_pp0_iter2_reg[1] <= 1'b1;
    zext_ln83_2_reg_2202_pp0_iter2_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_2202_pp0_iter3_reg[1] <= 1'b1;
    zext_ln83_2_reg_2202_pp0_iter3_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_2202_pp0_iter4_reg[1] <= 1'b1;
    zext_ln83_2_reg_2202_pp0_iter4_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_2202_pp0_iter5_reg[1] <= 1'b1;
    zext_ln83_2_reg_2202_pp0_iter5_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_2202_pp0_iter6_reg[1] <= 1'b1;
    zext_ln83_2_reg_2202_pp0_iter6_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln87_7_reg_2210[1:0] <= 2'b10;
    zext_ln87_7_reg_2210[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_2236[1:0] <= 2'b11;
    zext_ln83_3_reg_2236[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_2236_pp0_iter1_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_2236_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_2236_pp0_iter2_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_2236_pp0_iter2_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_2236_pp0_iter3_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_2236_pp0_iter3_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_2236_pp0_iter4_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_2236_pp0_iter4_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_2236_pp0_iter5_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_2236_pp0_iter5_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_2236_pp0_iter6_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_2236_pp0_iter6_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln83_3_reg_2236_pp0_iter7_reg[1:0] <= 2'b11;
    zext_ln83_3_reg_2236_pp0_iter7_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln87_11_reg_2244[1:0] <= 2'b01;
    zext_ln87_11_reg_2244[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln85_9_reg_2360[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln87_10_reg_2365[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln85_12_reg_2371[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln85_13_reg_2376[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 
