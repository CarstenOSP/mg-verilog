module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,work_x_address0,work_x_ce0,work_x_we0,work_x_d0,work_x_address1,work_x_ce1,work_x_we1,work_x_d1,work_y_address0,work_y_ce0,work_y_we0,work_y_d0,work_y_address1,work_y_ce1,work_y_we1,work_y_d1,DATA_y_8_address0,DATA_y_8_ce0,DATA_y_8_q0,DATA_y_9_address0,DATA_y_9_ce0,DATA_y_9_q0,DATA_y_10_address0,DATA_y_10_ce0,DATA_y_10_q0,DATA_y_11_address0,DATA_y_11_ce0,DATA_y_11_q0,DATA_y_12_address0,DATA_y_12_ce0,DATA_y_12_q0,DATA_y_13_address0,DATA_y_13_ce0,DATA_y_13_q0,DATA_y_14_address0,DATA_y_14_ce0,DATA_y_14_q0,DATA_y_15_address0,DATA_y_15_ce0,DATA_y_15_q0,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_q0,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_q0,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_q0,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_q0,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_q0,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_q0,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_q0,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_q0,grp_fu_672_p_din0,grp_fu_672_p_din1,grp_fu_672_p_opcode,grp_fu_672_p_dout0,grp_fu_672_p_ce,grp_fu_676_p_din0,grp_fu_676_p_din1,grp_fu_676_p_opcode,grp_fu_676_p_dout0,grp_fu_676_p_ce,grp_fu_680_p_din0,grp_fu_680_p_din1,grp_fu_680_p_opcode,grp_fu_680_p_dout0,grp_fu_680_p_ce,grp_fu_684_p_din0,grp_fu_684_p_din1,grp_fu_684_p_opcode,grp_fu_684_p_dout0,grp_fu_684_p_ce,grp_fu_688_p_din0,grp_fu_688_p_din1,grp_fu_688_p_opcode,grp_fu_688_p_dout0,grp_fu_688_p_ce,grp_fu_692_p_din0,grp_fu_692_p_din1,grp_fu_692_p_opcode,grp_fu_692_p_dout0,grp_fu_692_p_ce,grp_fu_696_p_din0,grp_fu_696_p_din1,grp_fu_696_p_opcode,grp_fu_696_p_dout0,grp_fu_696_p_ce,grp_fu_700_p_din0,grp_fu_700_p_din1,grp_fu_700_p_opcode,grp_fu_700_p_dout0,grp_fu_700_p_ce,grp_fu_704_p_din0,grp_fu_704_p_din1,grp_fu_704_p_opcode,grp_fu_704_p_dout0,grp_fu_704_p_ce,grp_fu_708_p_din0,grp_fu_708_p_din1,grp_fu_708_p_opcode,grp_fu_708_p_dout0,grp_fu_708_p_ce,grp_fu_712_p_din0,grp_fu_712_p_din1,grp_fu_712_p_opcode,grp_fu_712_p_dout0,grp_fu_712_p_ce,grp_fu_716_p_din0,grp_fu_716_p_din1,grp_fu_716_p_opcode,grp_fu_716_p_dout0,grp_fu_716_p_ce,grp_fu_720_p_din0,grp_fu_720_p_din1,grp_fu_720_p_opcode,grp_fu_720_p_dout0,grp_fu_720_p_ce,grp_fu_724_p_din0,grp_fu_724_p_din1,grp_fu_724_p_opcode,grp_fu_724_p_dout0,grp_fu_724_p_ce,grp_fu_728_p_din0,grp_fu_728_p_din1,grp_fu_728_p_opcode,grp_fu_728_p_dout0,grp_fu_728_p_ce,grp_fu_769_p_din0,grp_fu_769_p_din1,grp_fu_769_p_opcode,grp_fu_769_p_dout0,grp_fu_769_p_ce,grp_fu_773_p_din0,grp_fu_773_p_din1,grp_fu_773_p_opcode,grp_fu_773_p_dout0,grp_fu_773_p_ce,grp_fu_777_p_din0,grp_fu_777_p_din1,grp_fu_777_p_opcode,grp_fu_777_p_dout0,grp_fu_777_p_ce,grp_fu_732_p_din0,grp_fu_732_p_din1,grp_fu_732_p_dout0,grp_fu_732_p_ce,grp_fu_736_p_din0,grp_fu_736_p_din1,grp_fu_736_p_dout0,grp_fu_736_p_ce,grp_fu_740_p_din0,grp_fu_740_p_din1,grp_fu_740_p_dout0,grp_fu_740_p_ce,grp_fu_781_p_din0,grp_fu_781_p_din1,grp_fu_781_p_dout0,grp_fu_781_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 11'd1;
parameter    ap_ST_fsm_pp0_stage1 = 11'd2;
parameter    ap_ST_fsm_pp0_stage2 = 11'd4;
parameter    ap_ST_fsm_pp0_stage3 = 11'd8;
parameter    ap_ST_fsm_pp0_stage4 = 11'd16;
parameter    ap_ST_fsm_pp0_stage5 = 11'd32;
parameter    ap_ST_fsm_pp0_stage6 = 11'd64;
parameter    ap_ST_fsm_pp0_stage7 = 11'd128;
parameter    ap_ST_fsm_pp0_stage8 = 11'd256;
parameter    ap_ST_fsm_pp0_stage9 = 11'd512;
parameter    ap_ST_fsm_pp0_stage10 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [4:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [4:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [4:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [4:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
input  [63:0] DATA_y_4_q0;
output  [4:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
input  [63:0] DATA_y_5_q0;
output  [4:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
input  [63:0] DATA_y_6_q0;
output  [4:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
input  [63:0] DATA_y_7_q0;
output  [4:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [4:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [4:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [4:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [4:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [4:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [4:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [4:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
output  [8:0] work_x_address0;
output   work_x_ce0;
output   work_x_we0;
output  [63:0] work_x_d0;
output  [8:0] work_x_address1;
output   work_x_ce1;
output   work_x_we1;
output  [63:0] work_x_d1;
output  [8:0] work_y_address0;
output   work_y_ce0;
output   work_y_we0;
output  [63:0] work_y_d0;
output  [8:0] work_y_address1;
output   work_y_ce1;
output   work_y_we1;
output  [63:0] work_y_d1;
output  [4:0] DATA_y_8_address0;
output   DATA_y_8_ce0;
input  [63:0] DATA_y_8_q0;
output  [4:0] DATA_y_9_address0;
output   DATA_y_9_ce0;
input  [63:0] DATA_y_9_q0;
output  [4:0] DATA_y_10_address0;
output   DATA_y_10_ce0;
input  [63:0] DATA_y_10_q0;
output  [4:0] DATA_y_11_address0;
output   DATA_y_11_ce0;
input  [63:0] DATA_y_11_q0;
output  [4:0] DATA_y_12_address0;
output   DATA_y_12_ce0;
input  [63:0] DATA_y_12_q0;
output  [4:0] DATA_y_13_address0;
output   DATA_y_13_ce0;
input  [63:0] DATA_y_13_q0;
output  [4:0] DATA_y_14_address0;
output   DATA_y_14_ce0;
input  [63:0] DATA_y_14_q0;
output  [4:0] DATA_y_15_address0;
output   DATA_y_15_ce0;
input  [63:0] DATA_y_15_q0;
output  [4:0] DATA_x_8_address0;
output   DATA_x_8_ce0;
input  [63:0] DATA_x_8_q0;
output  [4:0] DATA_x_9_address0;
output   DATA_x_9_ce0;
input  [63:0] DATA_x_9_q0;
output  [4:0] DATA_x_10_address0;
output   DATA_x_10_ce0;
input  [63:0] DATA_x_10_q0;
output  [4:0] DATA_x_11_address0;
output   DATA_x_11_ce0;
input  [63:0] DATA_x_11_q0;
output  [4:0] DATA_x_12_address0;
output   DATA_x_12_ce0;
input  [63:0] DATA_x_12_q0;
output  [4:0] DATA_x_13_address0;
output   DATA_x_13_ce0;
input  [63:0] DATA_x_13_q0;
output  [4:0] DATA_x_14_address0;
output   DATA_x_14_ce0;
input  [63:0] DATA_x_14_q0;
output  [4:0] DATA_x_15_address0;
output   DATA_x_15_ce0;
input  [63:0] DATA_x_15_q0;
output  [63:0] grp_fu_672_p_din0;
output  [63:0] grp_fu_672_p_din1;
output  [1:0] grp_fu_672_p_opcode;
input  [63:0] grp_fu_672_p_dout0;
output   grp_fu_672_p_ce;
output  [63:0] grp_fu_676_p_din0;
output  [63:0] grp_fu_676_p_din1;
output  [1:0] grp_fu_676_p_opcode;
input  [63:0] grp_fu_676_p_dout0;
output   grp_fu_676_p_ce;
output  [63:0] grp_fu_680_p_din0;
output  [63:0] grp_fu_680_p_din1;
output  [1:0] grp_fu_680_p_opcode;
input  [63:0] grp_fu_680_p_dout0;
output   grp_fu_680_p_ce;
output  [63:0] grp_fu_684_p_din0;
output  [63:0] grp_fu_684_p_din1;
output  [1:0] grp_fu_684_p_opcode;
input  [63:0] grp_fu_684_p_dout0;
output   grp_fu_684_p_ce;
output  [63:0] grp_fu_688_p_din0;
output  [63:0] grp_fu_688_p_din1;
output  [1:0] grp_fu_688_p_opcode;
input  [63:0] grp_fu_688_p_dout0;
output   grp_fu_688_p_ce;
output  [63:0] grp_fu_692_p_din0;
output  [63:0] grp_fu_692_p_din1;
output  [1:0] grp_fu_692_p_opcode;
input  [63:0] grp_fu_692_p_dout0;
output   grp_fu_692_p_ce;
output  [63:0] grp_fu_696_p_din0;
output  [63:0] grp_fu_696_p_din1;
output  [1:0] grp_fu_696_p_opcode;
input  [63:0] grp_fu_696_p_dout0;
output   grp_fu_696_p_ce;
output  [63:0] grp_fu_700_p_din0;
output  [63:0] grp_fu_700_p_din1;
output  [1:0] grp_fu_700_p_opcode;
input  [63:0] grp_fu_700_p_dout0;
output   grp_fu_700_p_ce;
output  [63:0] grp_fu_704_p_din0;
output  [63:0] grp_fu_704_p_din1;
output  [1:0] grp_fu_704_p_opcode;
input  [63:0] grp_fu_704_p_dout0;
output   grp_fu_704_p_ce;
output  [63:0] grp_fu_708_p_din0;
output  [63:0] grp_fu_708_p_din1;
output  [1:0] grp_fu_708_p_opcode;
input  [63:0] grp_fu_708_p_dout0;
output   grp_fu_708_p_ce;
output  [63:0] grp_fu_712_p_din0;
output  [63:0] grp_fu_712_p_din1;
output  [1:0] grp_fu_712_p_opcode;
input  [63:0] grp_fu_712_p_dout0;
output   grp_fu_712_p_ce;
output  [63:0] grp_fu_716_p_din0;
output  [63:0] grp_fu_716_p_din1;
output  [1:0] grp_fu_716_p_opcode;
input  [63:0] grp_fu_716_p_dout0;
output   grp_fu_716_p_ce;
output  [63:0] grp_fu_720_p_din0;
output  [63:0] grp_fu_720_p_din1;
output  [1:0] grp_fu_720_p_opcode;
input  [63:0] grp_fu_720_p_dout0;
output   grp_fu_720_p_ce;
output  [63:0] grp_fu_724_p_din0;
output  [63:0] grp_fu_724_p_din1;
output  [1:0] grp_fu_724_p_opcode;
input  [63:0] grp_fu_724_p_dout0;
output   grp_fu_724_p_ce;
output  [63:0] grp_fu_728_p_din0;
output  [63:0] grp_fu_728_p_din1;
output  [1:0] grp_fu_728_p_opcode;
input  [63:0] grp_fu_728_p_dout0;
output   grp_fu_728_p_ce;
output  [63:0] grp_fu_769_p_din0;
output  [63:0] grp_fu_769_p_din1;
output  [1:0] grp_fu_769_p_opcode;
input  [63:0] grp_fu_769_p_dout0;
output   grp_fu_769_p_ce;
output  [63:0] grp_fu_773_p_din0;
output  [63:0] grp_fu_773_p_din1;
output  [1:0] grp_fu_773_p_opcode;
input  [63:0] grp_fu_773_p_dout0;
output   grp_fu_773_p_ce;
output  [63:0] grp_fu_777_p_din0;
output  [63:0] grp_fu_777_p_din1;
output  [1:0] grp_fu_777_p_opcode;
input  [63:0] grp_fu_777_p_dout0;
output   grp_fu_777_p_ce;
output  [63:0] grp_fu_732_p_din0;
output  [63:0] grp_fu_732_p_din1;
input  [63:0] grp_fu_732_p_dout0;
output   grp_fu_732_p_ce;
output  [63:0] grp_fu_736_p_din0;
output  [63:0] grp_fu_736_p_din1;
input  [63:0] grp_fu_736_p_dout0;
output   grp_fu_736_p_ce;
output  [63:0] grp_fu_740_p_din0;
output  [63:0] grp_fu_740_p_din1;
input  [63:0] grp_fu_740_p_dout0;
output   grp_fu_740_p_ce;
output  [63:0] grp_fu_781_p_din0;
output  [63:0] grp_fu_781_p_din1;
input  [63:0] grp_fu_781_p_dout0;
output   grp_fu_781_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] tmp_reg_2084;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_930;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_936;
reg   [63:0] reg_942;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_947;
reg   [63:0] reg_952;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_958;
reg   [6:0] tid_5_reg_2072;
reg   [6:0] tid_5_reg_2072_pp0_iter1_reg;
reg   [6:0] tid_5_reg_2072_pp0_iter2_reg;
reg   [6:0] tid_5_reg_2072_pp0_iter3_reg;
reg   [6:0] tid_5_reg_2072_pp0_iter4_reg;
reg   [6:0] tid_5_reg_2072_pp0_iter5_reg;
wire   [4:0] lshr_ln_fu_980_p4;
reg   [4:0] lshr_ln_reg_2088;
reg   [4:0] lshr_ln_reg_2088_pp0_iter1_reg;
reg   [4:0] lshr_ln_reg_2088_pp0_iter2_reg;
reg   [4:0] lshr_ln_reg_2088_pp0_iter3_reg;
reg   [4:0] lshr_ln_reg_2088_pp0_iter4_reg;
reg   [4:0] lshr_ln_reg_2088_pp0_iter5_reg;
reg   [63:0] c0_y_reg_2253;
reg   [63:0] c0_y_61_reg_2259;
reg   [63:0] c0_y_62_reg_2265;
reg   [63:0] c0_y_63_reg_2270;
reg   [63:0] DATA_y_4_load_reg_2276;
reg   [63:0] DATA_y_5_load_reg_2282;
reg   [63:0] DATA_y_6_load_reg_2288;
reg   [63:0] DATA_y_7_load_reg_2293;
reg   [63:0] c0_x_reg_2299;
reg   [63:0] c0_x_61_reg_2305;
reg   [63:0] c0_x_62_reg_2311;
reg   [63:0] c0_x_63_reg_2316;
reg   [63:0] DATA_x_4_load_reg_2322;
reg   [63:0] DATA_x_5_load_reg_2328;
reg   [63:0] DATA_x_6_load_reg_2334;
reg   [63:0] DATA_x_7_load_reg_2339;
reg   [63:0] c0_y_67_reg_2345;
reg   [63:0] c0_y_68_reg_2351;
reg   [63:0] c0_y_69_reg_2357;
reg   [63:0] c0_y_70_reg_2363;
reg   [63:0] DATA_y_12_load_reg_2369;
reg   [63:0] DATA_y_13_load_reg_2375;
reg   [63:0] DATA_y_14_load_reg_2381;
reg   [63:0] DATA_y_15_load_reg_2387;
reg   [63:0] c0_x_67_reg_2393;
reg   [63:0] c0_x_68_reg_2399;
reg   [63:0] c0_x_69_reg_2405;
reg   [63:0] c0_x_70_reg_2411;
reg   [63:0] DATA_x_12_load_reg_2417;
reg   [63:0] DATA_x_13_load_reg_2423;
reg   [63:0] DATA_x_14_load_reg_2429;
reg   [63:0] DATA_x_15_load_reg_2435;
reg   [63:0] c0_x_36_reg_2441;
reg   [63:0] c0_y_36_reg_2447;
reg   [63:0] tmp_1_reg_2453;
reg   [63:0] sub_reg_2459;
reg   [63:0] tmp_1_11_reg_2465;
reg   [63:0] sub12_reg_2471;
reg   [63:0] add12_reg_2477;
reg   [63:0] add13_reg_2483;
reg   [63:0] c0_x_41_reg_2489;
reg   [63:0] c0_y_41_reg_2495;
reg   [63:0] tmp_1_15_reg_2501;
reg   [63:0] sub1591_1_reg_2507;
reg   [63:0] tmp_1_13_reg_2513;
reg   [63:0] sub1607_1_reg_2519;
reg   [63:0] c0_x_64_reg_2525;
reg   [63:0] c0_y_64_reg_2531;
reg   [63:0] c0_x_35_reg_2537;
reg   [63:0] c0_x_35_reg_2537_pp0_iter1_reg;
reg   [63:0] c0_y_35_reg_2543;
reg   [63:0] c0_y_35_reg_2543_pp0_iter1_reg;
reg   [63:0] add_reg_2549;
reg   [63:0] add11_reg_2555;
wire   [63:0] bitcast_ln386_1_fu_1055_p1;
wire   [63:0] bitcast_ln386_3_fu_1089_p1;
wire   [63:0] bitcast_ln386_9_fu_1124_p1;
wire   [63:0] bitcast_ln386_11_fu_1160_p1;
reg   [63:0] c0_x_71_reg_2583;
reg   [63:0] c0_y_71_reg_2589;
reg   [63:0] c0_x_40_reg_2595;
reg   [63:0] c0_x_40_reg_2595_pp0_iter1_reg;
reg   [63:0] c0_y_40_reg_2601;
reg   [63:0] c0_y_40_reg_2601_pp0_iter1_reg;
reg   [63:0] add1598_1_reg_2607;
reg   [63:0] add1601_1_reg_2613;
reg   [63:0] add1614_1_reg_2619;
reg   [63:0] add1617_1_reg_2625;
wire   [63:0] bitcast_ln386_21_fu_1195_p1;
wire   [63:0] bitcast_ln386_23_fu_1229_p1;
wire   [63:0] bitcast_ln386_29_fu_1264_p1;
wire   [63:0] bitcast_ln386_31_fu_1300_p1;
reg   [63:0] mul_reg_2653;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] mul6_reg_2658;
reg   [63:0] mul1641_1_reg_2663;
reg   [63:0] mul1648_1_reg_2668;
reg   [63:0] sub14_reg_2673;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] add14_reg_2678;
wire   [63:0] bitcast_ln386_5_fu_1345_p1;
wire   [63:0] bitcast_ln386_7_fu_1379_p1;
reg   [63:0] sub16_reg_2693;
reg   [63:0] add16_reg_2698;
reg   [63:0] add17_reg_2703;
reg   [63:0] add18_reg_2709;
reg   [63:0] tmp_16_reg_2715;
reg   [63:0] sub17_reg_2721;
reg   [63:0] sub1630_1_reg_2727;
reg   [63:0] add1636_1_reg_2732;
wire   [63:0] bitcast_ln386_25_fu_1413_p1;
wire   [63:0] bitcast_ln386_27_fu_1447_p1;
reg   [63:0] sub1656_1_reg_2747;
reg   [63:0] add1662_1_reg_2752;
reg   [63:0] c0_x_65_reg_2757;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] c0_y_65_reg_2763;
reg   [63:0] c0_x_38_reg_2769;
reg   [63:0] c0_x_38_reg_2769_pp0_iter2_reg;
reg   [63:0] c0_y_38_reg_2775;
reg   [63:0] c0_y_38_reg_2775_pp0_iter2_reg;
reg   [63:0] c0_x_72_reg_2781;
reg   [63:0] c0_y_72_reg_2787;
reg   [63:0] c0_x_43_reg_2793;
reg   [63:0] c0_x_43_reg_2793_pp0_iter2_reg;
reg   [63:0] c0_y_43_reg_2799;
reg   [63:0] c0_y_43_reg_2799_pp0_iter2_reg;
reg   [63:0] add1689_1_reg_2805;
reg   [63:0] add1692_1_reg_2811;
reg   [63:0] tmp_18_reg_2817;
reg   [63:0] sub1698_1_reg_2823;
reg   [63:0] c0_x_37_reg_2829;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] c0_y_37_reg_2835;
reg   [63:0] sub15_reg_2841;
reg   [63:0] add15_reg_2847;
reg   [63:0] mul7_reg_2853;
reg   [63:0] mul8_reg_2859;
reg   [63:0] sub1644_1_reg_2865;
reg   [63:0] add1649_1_reg_2871;
reg   [63:0] c0_x_42_reg_2877;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] c0_y_42_reg_2883;
reg   [63:0] mul1657_1_reg_2889;
reg   [63:0] mul1663_1_reg_2895;
reg   [63:0] mul9_reg_2901;
reg   [63:0] mul10_reg_2906;
reg   [63:0] add19_reg_2911;
reg   [63:0] add19_reg_2911_pp0_iter3_reg;
reg   [63:0] add19_reg_2911_pp0_iter4_reg;
reg   [63:0] add20_reg_2916;
reg   [63:0] add20_reg_2916_pp0_iter3_reg;
reg   [63:0] add20_reg_2916_pp0_iter4_reg;
reg   [63:0] sub20_reg_2921;
reg   [63:0] sub20_reg_2921_pp0_iter3_reg;
reg   [63:0] sub20_reg_2921_pp0_iter4_reg;
reg   [63:0] sub21_reg_2926;
reg   [63:0] sub21_reg_2926_pp0_iter3_reg;
reg   [63:0] sub21_reg_2926_pp0_iter4_reg;
reg   [63:0] mul1702_1_reg_2931;
reg   [63:0] mul1709_1_reg_2936;
reg   [63:0] add1717_1_reg_2941;
reg   [63:0] add1717_1_reg_2941_pp0_iter3_reg;
reg   [63:0] add1717_1_reg_2941_pp0_iter4_reg;
reg   [63:0] add1720_1_reg_2946;
reg   [63:0] add1720_1_reg_2946_pp0_iter3_reg;
reg   [63:0] add1720_1_reg_2946_pp0_iter4_reg;
reg   [63:0] sub1723_1_reg_2951;
reg   [63:0] sub1723_1_reg_2951_pp0_iter3_reg;
reg   [63:0] sub1723_1_reg_2951_pp0_iter4_reg;
reg   [63:0] sub1723_1_reg_2951_pp0_iter5_reg;
reg   [63:0] sub1726_1_reg_2956;
reg   [63:0] sub1726_1_reg_2956_pp0_iter3_reg;
reg   [63:0] sub1726_1_reg_2956_pp0_iter4_reg;
reg   [63:0] sub1726_1_reg_2956_pp0_iter5_reg;
wire   [63:0] bitcast_ln386_13_fu_1481_p1;
wire   [63:0] bitcast_ln386_15_fu_1515_p1;
wire   [63:0] bitcast_ln386_33_fu_1549_p1;
wire   [63:0] bitcast_ln386_35_fu_1583_p1;
reg   [63:0] c0_x_66_reg_2981;
reg   [63:0] c0_y_66_reg_2987;
reg   [63:0] c0_x_39_reg_2993;
reg   [63:0] c0_x_39_reg_2993_pp0_iter4_reg;
reg   [63:0] c0_y_39_reg_2999;
reg   [63:0] c0_y_39_reg_2999_pp0_iter4_reg;
reg   [63:0] add23_reg_3005;
reg   [63:0] add24_reg_3011;
reg   [63:0] c0_x_73_reg_3017;
reg   [63:0] c0_y_73_reg_3023;
reg   [63:0] c0_x_44_reg_3029;
reg   [63:0] c0_x_44_reg_3029_pp0_iter4_reg;
reg   [63:0] c0_y_44_reg_3035;
reg   [63:0] c0_y_44_reg_3035_pp0_iter4_reg;
reg   [63:0] tmp_19_reg_3041;
reg   [63:0] sub1777_1_reg_3047;
reg   [63:0] sub18_reg_3053;
reg   [63:0] sub19_reg_3059;
reg   [63:0] sub1705_1_reg_3065;
reg   [63:0] sub1710_1_reg_3071;
reg   [63:0] mul11_reg_3077;
reg   [63:0] mul12_reg_3082;
wire   [63:0] bitcast_ln386_17_fu_1618_p1;
wire   [63:0] bitcast_ln386_19_fu_1653_p1;
reg   [63:0] mul1781_1_reg_3097;
reg   [63:0] mul1788_1_reg_3102;
reg   [63:0] add25_reg_3107;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] add25_reg_3107_pp0_iter4_reg;
reg   [63:0] add26_reg_3112;
reg   [63:0] add26_reg_3112_pp0_iter4_reg;
reg   [63:0] sub27_reg_3117;
reg   [63:0] sub27_reg_3117_pp0_iter4_reg;
reg   [63:0] sub28_reg_3122;
reg   [63:0] sub28_reg_3122_pp0_iter4_reg;
wire   [63:0] bitcast_ln386_37_fu_1687_p1;
wire   [63:0] bitcast_ln386_39_fu_1721_p1;
reg   [63:0] add1796_1_reg_3137;
reg   [63:0] add1796_1_reg_3137_pp0_iter4_reg;
reg   [63:0] add1799_1_reg_3142;
reg   [63:0] add1799_1_reg_3142_pp0_iter4_reg;
reg   [63:0] sub1802_1_reg_3147;
reg   [63:0] sub1802_1_reg_3147_pp0_iter4_reg;
reg   [63:0] sub1805_1_reg_3152;
reg   [63:0] sub1805_1_reg_3152_pp0_iter4_reg;
reg   [63:0] add21_reg_3157;
reg   [63:0] add22_reg_3162;
reg   [63:0] sub22_reg_3167;
reg   [63:0] sub22_reg_3167_pp0_iter5_reg;
reg   [63:0] sub23_reg_3172;
reg   [63:0] sub23_reg_3172_pp0_iter5_reg;
reg   [63:0] add1733_1_reg_3177;
reg   [63:0] add1733_1_reg_3177_pp0_iter5_reg;
reg   [63:0] add1736_1_reg_3182;
reg   [63:0] add1736_1_reg_3182_pp0_iter5_reg;
reg   [63:0] sub1739_1_reg_3187;
reg   [63:0] sub1739_1_reg_3187_pp0_iter5_reg;
reg   [63:0] sub1742_1_reg_3192;
reg   [63:0] sub1742_1_reg_3192_pp0_iter5_reg;
reg   [63:0] sub25_reg_3197;
reg   [63:0] sub26_reg_3203;
wire  signed [6:0] zext_ln390_cast_fu_1729_p3;
reg  signed [6:0] zext_ln390_cast_reg_3209;
reg   [63:0] add27_reg_3215;
reg   [63:0] add28_reg_3220;
wire  signed [7:0] zext_ln391_cast_fu_1760_p3;
reg  signed [7:0] zext_ln391_cast_reg_3225;
reg   [63:0] add1812_1_reg_3230;
reg   [63:0] add1815_1_reg_3235;
reg   [63:0] sub1818_1_reg_3240;
reg   [63:0] sub1821_1_reg_3245;
wire   [8:0] zext_ln365_1_fu_1864_p1;
reg   [8:0] zext_ln365_1_reg_3250;
wire   [5:0] tmp_s_fu_1927_p4;
reg   [5:0] tmp_s_reg_3256;
wire  signed [7:0] zext_ln391_1_cast_fu_1936_p4;
reg  signed [7:0] zext_ln391_1_cast_reg_3261;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln367_fu_990_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln390_fu_1737_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln365_fu_1751_p1;
wire   [63:0] zext_ln391_fu_1767_p1;
wire   [63:0] zext_ln392_fu_1788_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln395_fu_1801_p1;
wire   [63:0] zext_ln393_fu_1830_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln390_1_fu_1850_p1;
wire   [63:0] zext_ln394_fu_1873_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln396_fu_1886_p1;
wire   [63:0] zext_ln367_1_fu_1913_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln391_1_fu_1946_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln392_1_fu_1965_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln393_2_fu_1992_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln394_1_fu_2011_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln395_1_fu_2028_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln396_1_fu_2051_p1;
reg   [6:0] tid_fu_140;
wire   [6:0] add_ln365_fu_1306_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_5;
reg    DATA_y_ce0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_7_ce0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_7_ce0_local;
reg    DATA_y_8_ce0_local;
reg    DATA_y_9_ce0_local;
reg    DATA_y_10_ce0_local;
reg    DATA_y_11_ce0_local;
reg    DATA_y_12_ce0_local;
reg    DATA_y_13_ce0_local;
reg    DATA_y_14_ce0_local;
reg    DATA_y_15_ce0_local;
reg    DATA_x_8_ce0_local;
reg    DATA_x_9_ce0_local;
reg    DATA_x_10_ce0_local;
reg    DATA_x_11_ce0_local;
reg    DATA_x_12_ce0_local;
reg    DATA_x_13_ce0_local;
reg    DATA_x_14_ce0_local;
reg    DATA_x_15_ce0_local;
reg    work_x_we1_local;
reg   [63:0] work_x_d1_local;
wire   [63:0] bitcast_ln390_fu_1743_p1;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
wire   [63:0] bitcast_ln389_fu_1756_p1;
reg    work_x_we0_local;
reg   [63:0] work_x_d0_local;
wire   [63:0] bitcast_ln391_fu_1773_p1;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
wire   [63:0] bitcast_ln392_fu_1794_p1;
wire   [63:0] bitcast_ln395_fu_1807_p1;
wire   [63:0] bitcast_ln393_fu_1836_p1;
wire   [63:0] bitcast_ln390_1_fu_1856_p1;
wire   [63:0] bitcast_ln394_fu_1879_p1;
wire   [63:0] bitcast_ln396_fu_1892_p1;
wire   [63:0] bitcast_ln389_1_fu_1919_p1;
wire   [63:0] bitcast_ln391_1_fu_1952_p1;
wire   [63:0] bitcast_ln392_1_fu_1971_p1;
wire   [63:0] bitcast_ln393_1_fu_1998_p1;
wire   [63:0] bitcast_ln394_1_fu_2017_p1;
wire   [63:0] bitcast_ln395_1_fu_2034_p1;
wire   [63:0] bitcast_ln396_1_fu_2057_p1;
reg    work_y_we1_local;
reg   [63:0] work_y_d1_local;
wire   [63:0] bitcast_ln399_fu_1747_p1;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
wire   [63:0] bitcast_ln398_fu_1777_p1;
reg    work_y_we0_local;
reg   [63:0] work_y_d0_local;
wire   [63:0] bitcast_ln400_fu_1781_p1;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
wire   [63:0] bitcast_ln401_fu_1811_p1;
wire   [63:0] bitcast_ln404_fu_1815_p1;
wire   [63:0] bitcast_ln402_fu_1840_p1;
wire   [63:0] bitcast_ln399_1_fu_1860_p1;
wire   [63:0] bitcast_ln403_fu_1897_p1;
wire   [63:0] bitcast_ln405_fu_1901_p1;
wire   [63:0] bitcast_ln398_1_fu_1923_p1;
wire   [63:0] bitcast_ln400_1_fu_1956_p1;
wire   [63:0] bitcast_ln401_1_fu_1975_p1;
wire   [63:0] bitcast_ln402_1_fu_2002_p1;
wire   [63:0] bitcast_ln403_1_fu_2021_p1;
wire   [63:0] bitcast_ln404_1_fu_2038_p1;
wire   [63:0] bitcast_ln405_1_fu_2061_p1;
reg   [63:0] grp_fu_834_p0;
reg   [63:0] grp_fu_834_p1;
reg   [63:0] grp_fu_838_p0;
reg   [63:0] grp_fu_838_p1;
reg   [63:0] grp_fu_842_p0;
reg   [63:0] grp_fu_842_p1;
reg   [63:0] grp_fu_846_p0;
reg   [63:0] grp_fu_846_p1;
reg   [63:0] grp_fu_850_p0;
reg   [63:0] grp_fu_850_p1;
reg   [63:0] grp_fu_854_p0;
reg   [63:0] grp_fu_854_p1;
reg   [63:0] grp_fu_858_p0;
reg   [63:0] grp_fu_858_p1;
reg   [63:0] grp_fu_862_p0;
reg   [63:0] grp_fu_862_p1;
reg   [63:0] grp_fu_866_p0;
reg   [63:0] grp_fu_866_p1;
reg   [63:0] grp_fu_870_p0;
reg   [63:0] grp_fu_870_p1;
reg   [63:0] grp_fu_874_p0;
reg   [63:0] grp_fu_874_p1;
reg   [63:0] grp_fu_878_p0;
reg   [63:0] grp_fu_878_p1;
reg   [63:0] grp_fu_882_p0;
reg   [63:0] grp_fu_882_p1;
reg   [63:0] grp_fu_886_p0;
reg   [63:0] grp_fu_886_p1;
reg   [63:0] grp_fu_890_p0;
reg   [63:0] grp_fu_890_p1;
reg   [63:0] grp_fu_894_p0;
reg   [63:0] grp_fu_894_p1;
reg   [63:0] grp_fu_898_p0;
reg   [63:0] grp_fu_898_p1;
reg   [63:0] grp_fu_902_p0;
reg   [63:0] grp_fu_902_p1;
reg   [63:0] grp_fu_906_p0;
reg   [63:0] grp_fu_906_p1;
reg   [63:0] grp_fu_911_p0;
reg   [63:0] grp_fu_911_p1;
reg   [63:0] grp_fu_916_p0;
reg   [63:0] grp_fu_916_p1;
reg   [63:0] grp_fu_921_p0;
reg   [63:0] grp_fu_921_p1;
wire   [63:0] bitcast_ln386_fu_1026_p1;
wire   [0:0] bit_sel_fu_1029_p3;
wire   [0:0] xor_ln386_19_fu_1037_p2;
wire   [62:0] trunc_ln386_fu_1043_p1;
wire   [63:0] xor_ln3_fu_1047_p3;
wire   [63:0] bitcast_ln386_2_fu_1060_p1;
wire   [0:0] bit_sel40_fu_1063_p3;
wire   [0:0] xor_ln386_fu_1071_p2;
wire   [62:0] trunc_ln386_1_fu_1077_p1;
wire   [63:0] xor_ln386_1_fu_1081_p3;
wire   [63:0] bitcast_ln386_8_fu_1094_p1;
wire   [0:0] bit_sel43_fu_1098_p3;
wire   [0:0] xor_ln386_22_fu_1106_p2;
wire   [62:0] trunc_ln386_4_fu_1112_p1;
wire   [63:0] xor_ln386_4_fu_1116_p3;
wire   [63:0] bitcast_ln386_10_fu_1130_p1;
wire   [0:0] bit_sel44_fu_1134_p3;
wire   [0:0] xor_ln386_23_fu_1142_p2;
wire   [62:0] trunc_ln386_5_fu_1148_p1;
wire   [63:0] xor_ln386_5_fu_1152_p3;
wire   [63:0] bitcast_ln386_20_fu_1166_p1;
wire   [0:0] bit_sel49_fu_1169_p3;
wire   [0:0] xor_ln386_28_fu_1177_p2;
wire   [62:0] trunc_ln386_10_fu_1183_p1;
wire   [63:0] xor_ln386_s_fu_1187_p3;
wire   [63:0] bitcast_ln386_22_fu_1200_p1;
wire   [0:0] bit_sel50_fu_1203_p3;
wire   [0:0] xor_ln386_29_fu_1211_p2;
wire   [62:0] trunc_ln386_11_fu_1217_p1;
wire   [63:0] xor_ln386_10_fu_1221_p3;
wire   [63:0] bitcast_ln386_28_fu_1234_p1;
wire   [0:0] bit_sel53_fu_1238_p3;
wire   [0:0] xor_ln386_32_fu_1246_p2;
wire   [62:0] trunc_ln386_14_fu_1252_p1;
wire   [63:0] xor_ln386_13_fu_1256_p3;
wire   [63:0] bitcast_ln386_30_fu_1270_p1;
wire   [0:0] bit_sel54_fu_1274_p3;
wire   [0:0] xor_ln386_33_fu_1282_p2;
wire   [62:0] trunc_ln386_15_fu_1288_p1;
wire   [63:0] xor_ln386_14_fu_1292_p3;
wire   [63:0] bitcast_ln386_4_fu_1316_p1;
wire   [0:0] bit_sel41_fu_1319_p3;
wire   [0:0] xor_ln386_20_fu_1327_p2;
wire   [62:0] trunc_ln386_2_fu_1333_p1;
wire   [63:0] xor_ln386_2_fu_1337_p3;
wire   [63:0] bitcast_ln386_6_fu_1350_p1;
wire   [0:0] bit_sel42_fu_1353_p3;
wire   [0:0] xor_ln386_21_fu_1361_p2;
wire   [62:0] trunc_ln386_3_fu_1367_p1;
wire   [63:0] xor_ln386_3_fu_1371_p3;
wire   [63:0] bitcast_ln386_24_fu_1384_p1;
wire   [0:0] bit_sel51_fu_1387_p3;
wire   [0:0] xor_ln386_30_fu_1395_p2;
wire   [62:0] trunc_ln386_12_fu_1401_p1;
wire   [63:0] xor_ln386_11_fu_1405_p3;
wire   [63:0] bitcast_ln386_26_fu_1418_p1;
wire   [0:0] bit_sel52_fu_1421_p3;
wire   [0:0] xor_ln386_31_fu_1429_p2;
wire   [62:0] trunc_ln386_13_fu_1435_p1;
wire   [63:0] xor_ln386_12_fu_1439_p3;
wire   [63:0] bitcast_ln386_12_fu_1452_p1;
wire   [0:0] bit_sel45_fu_1455_p3;
wire   [0:0] xor_ln386_24_fu_1463_p2;
wire   [62:0] trunc_ln386_6_fu_1469_p1;
wire   [63:0] xor_ln386_6_fu_1473_p3;
wire   [63:0] bitcast_ln386_14_fu_1486_p1;
wire   [0:0] bit_sel46_fu_1489_p3;
wire   [0:0] xor_ln386_25_fu_1497_p2;
wire   [62:0] trunc_ln386_7_fu_1503_p1;
wire   [63:0] xor_ln386_7_fu_1507_p3;
wire   [63:0] bitcast_ln386_32_fu_1520_p1;
wire   [0:0] bit_sel55_fu_1523_p3;
wire   [0:0] xor_ln386_34_fu_1531_p2;
wire   [62:0] trunc_ln386_16_fu_1537_p1;
wire   [63:0] xor_ln386_15_fu_1541_p3;
wire   [63:0] bitcast_ln386_34_fu_1554_p1;
wire   [0:0] bit_sel56_fu_1557_p3;
wire   [0:0] xor_ln386_35_fu_1565_p2;
wire   [62:0] trunc_ln386_17_fu_1571_p1;
wire   [63:0] xor_ln386_16_fu_1575_p3;
wire   [63:0] bitcast_ln386_16_fu_1588_p1;
wire   [0:0] bit_sel47_fu_1592_p3;
wire   [0:0] xor_ln386_26_fu_1600_p2;
wire   [62:0] trunc_ln386_8_fu_1606_p1;
wire   [63:0] xor_ln386_8_fu_1610_p3;
wire   [63:0] bitcast_ln386_18_fu_1623_p1;
wire   [0:0] bit_sel48_fu_1627_p3;
wire   [0:0] xor_ln386_27_fu_1635_p2;
wire   [62:0] trunc_ln386_9_fu_1641_p1;
wire   [63:0] xor_ln386_9_fu_1645_p3;
wire   [63:0] bitcast_ln386_36_fu_1658_p1;
wire   [0:0] bit_sel57_fu_1661_p3;
wire   [0:0] xor_ln386_36_fu_1669_p2;
wire   [62:0] trunc_ln386_18_fu_1675_p1;
wire   [63:0] xor_ln386_17_fu_1679_p3;
wire   [63:0] bitcast_ln386_38_fu_1692_p1;
wire   [0:0] bit_sel58_fu_1695_p3;
wire   [0:0] xor_ln386_37_fu_1703_p2;
wire   [62:0] trunc_ln386_19_fu_1709_p1;
wire   [63:0] xor_ln386_18_fu_1713_p3;
wire   [5:0] trunc_ln390_fu_1726_p1;
wire  signed [7:0] sext_ln392_fu_1785_p1;
wire  signed [8:0] sext_ln395_fu_1798_p1;
wire   [7:0] zext_ln365_2_fu_1819_p1;
wire   [8:0] zext_ln393_cast_fu_1822_p3;
wire   [7:0] add_ln390_fu_1844_p2;
wire   [8:0] add_ln394_fu_1867_p2;
wire  signed [8:0] sext_ln396_fu_1883_p1;
wire   [5:0] or_ln_fu_1906_p3;
wire   [8:0] add_ln392_fu_1960_p2;
wire   [6:0] zext_ln393_1_fu_1979_p1;
wire   [8:0] zext_ln393_1_cast_fu_1982_p4;
wire   [8:0] add_ln394_1_fu_2006_p2;
wire  signed [8:0] sext_ln395_1_fu_2025_p1;
wire   [6:0] add_ln396_fu_2042_p2;
wire  signed [8:0] sext_ln396_1_fu_2047_p1;
reg   [1:0] grp_fu_834_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
reg   [1:0] grp_fu_838_opcode;
reg   [1:0] grp_fu_842_opcode;
reg   [1:0] grp_fu_846_opcode;
reg   [1:0] grp_fu_850_opcode;
reg   [1:0] grp_fu_854_opcode;
reg   [1:0] grp_fu_858_opcode;
reg   [1:0] grp_fu_862_opcode;
reg   [1:0] grp_fu_866_opcode;
reg   [1:0] grp_fu_870_opcode;
reg   [1:0] grp_fu_874_opcode;
reg   [1:0] grp_fu_878_opcode;
reg   [1:0] grp_fu_882_opcode;
reg   [1:0] grp_fu_886_opcode;
reg   [1:0] grp_fu_890_opcode;
reg   [1:0] grp_fu_894_opcode;
reg   [1:0] grp_fu_898_opcode;
reg   [1:0] grp_fu_902_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [10:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_140 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage10),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_140 <= 7'd0;
    end else if (((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tid_fu_140 <= add_ln365_fu_1306_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_12_load_reg_2417 <= DATA_x_12_q0;
        DATA_x_13_load_reg_2423 <= DATA_x_13_q0;
        DATA_x_14_load_reg_2429 <= DATA_x_14_q0;
        DATA_x_15_load_reg_2435 <= DATA_x_15_q0;
        DATA_x_4_load_reg_2322 <= DATA_x_4_q0;
        DATA_x_5_load_reg_2328 <= DATA_x_5_q0;
        DATA_x_6_load_reg_2334 <= DATA_x_6_q0;
        DATA_x_7_load_reg_2339 <= DATA_x_7_q0;
        DATA_y_12_load_reg_2369 <= DATA_y_12_q0;
        DATA_y_13_load_reg_2375 <= DATA_y_13_q0;
        DATA_y_14_load_reg_2381 <= DATA_y_14_q0;
        DATA_y_15_load_reg_2387 <= DATA_y_15_q0;
        DATA_y_4_load_reg_2276 <= DATA_y_4_q0;
        DATA_y_5_load_reg_2282 <= DATA_y_5_q0;
        DATA_y_6_load_reg_2288 <= DATA_y_6_q0;
        DATA_y_7_load_reg_2293 <= DATA_y_7_q0;
        add1733_1_reg_3177_pp0_iter5_reg <= add1733_1_reg_3177;
        add1736_1_reg_3182_pp0_iter5_reg <= add1736_1_reg_3182;
        c0_x_61_reg_2305 <= DATA_x_1_q0;
        c0_x_62_reg_2311 <= DATA_x_2_q0;
        c0_x_63_reg_2316 <= DATA_x_3_q0;
        c0_x_67_reg_2393 <= DATA_x_8_q0;
        c0_x_68_reg_2399 <= DATA_x_9_q0;
        c0_x_69_reg_2405 <= DATA_x_10_q0;
        c0_x_70_reg_2411 <= DATA_x_11_q0;
        c0_x_reg_2299 <= DATA_x_q0;
        c0_y_61_reg_2259 <= DATA_y_1_q0;
        c0_y_62_reg_2265 <= DATA_y_2_q0;
        c0_y_63_reg_2270 <= DATA_y_3_q0;
        c0_y_67_reg_2345 <= DATA_y_8_q0;
        c0_y_68_reg_2351 <= DATA_y_9_q0;
        c0_y_69_reg_2357 <= DATA_y_10_q0;
        c0_y_70_reg_2363 <= DATA_y_11_q0;
        c0_y_reg_2253 <= DATA_y_q0;
        sub1739_1_reg_3187_pp0_iter5_reg <= sub1739_1_reg_3187;
        sub1742_1_reg_3192_pp0_iter5_reg <= sub1742_1_reg_3192;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add11_reg_2555 <= grp_fu_692_p_dout0;
        add1598_1_reg_2607 <= grp_fu_712_p_dout0;
        add1601_1_reg_2613 <= grp_fu_716_p_dout0;
        add1614_1_reg_2619 <= grp_fu_720_p_dout0;
        add1617_1_reg_2625 <= grp_fu_724_p_dout0;
        add_reg_2549 <= grp_fu_688_p_dout0;
        c0_x_35_reg_2537 <= grp_fu_680_p_dout0;
        c0_x_40_reg_2595 <= grp_fu_704_p_dout0;
        c0_x_64_reg_2525 <= grp_fu_672_p_dout0;
        c0_x_71_reg_2583 <= grp_fu_696_p_dout0;
        c0_y_35_reg_2543 <= grp_fu_684_p_dout0;
        c0_y_40_reg_2601 <= grp_fu_708_p_dout0;
        c0_y_64_reg_2531 <= grp_fu_676_p_dout0;
        c0_y_71_reg_2589 <= grp_fu_700_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add12_reg_2477 <= grp_fu_696_p_dout0;
        add13_reg_2483 <= grp_fu_700_p_dout0;
        c0_x_36_reg_2441 <= grp_fu_672_p_dout0;
        c0_x_41_reg_2489 <= grp_fu_712_p_dout0;
        c0_y_36_reg_2447 <= grp_fu_676_p_dout0;
        c0_y_41_reg_2495 <= grp_fu_716_p_dout0;
        sub12_reg_2471 <= grp_fu_692_p_dout0;
        sub1591_1_reg_2507 <= grp_fu_724_p_dout0;
        sub1607_1_reg_2519 <= grp_fu_769_p_dout0;
        sub_reg_2459 <= grp_fu_684_p_dout0;
        tmp_1_11_reg_2465 <= grp_fu_688_p_dout0;
        tmp_1_13_reg_2513 <= grp_fu_728_p_dout0;
        tmp_1_15_reg_2501 <= grp_fu_720_p_dout0;
        tmp_1_reg_2453 <= grp_fu_680_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add14_reg_2678 <= grp_fu_676_p_dout0;
        add1636_1_reg_2732 <= grp_fu_708_p_dout0;
        add1662_1_reg_2752 <= grp_fu_716_p_dout0;
        add16_reg_2698 <= grp_fu_684_p_dout0;
        add17_reg_2703 <= grp_fu_688_p_dout0;
        add18_reg_2709 <= grp_fu_692_p_dout0;
        sub14_reg_2673 <= grp_fu_672_p_dout0;
        sub1630_1_reg_2727 <= grp_fu_704_p_dout0;
        sub1656_1_reg_2747 <= grp_fu_712_p_dout0;
        sub16_reg_2693 <= grp_fu_680_p_dout0;
        sub17_reg_2721 <= grp_fu_700_p_dout0;
        tmp_16_reg_2715 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add15_reg_2847 <= grp_fu_676_p_dout0;
        add1649_1_reg_2871 <= grp_fu_684_p_dout0;
        c0_x_37_reg_2829 <= grp_fu_732_p_dout0;
        c0_y_37_reg_2835 <= grp_fu_736_p_dout0;
        mul7_reg_2853 <= grp_fu_740_p_dout0;
        mul8_reg_2859 <= grp_fu_781_p_dout0;
        sub15_reg_2841 <= grp_fu_672_p_dout0;
        sub1644_1_reg_2865 <= grp_fu_680_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add1689_1_reg_2805 <= grp_fu_704_p_dout0;
        add1692_1_reg_2811 <= grp_fu_708_p_dout0;
        c0_x_38_reg_2769 <= grp_fu_680_p_dout0;
        c0_x_43_reg_2793 <= grp_fu_696_p_dout0;
        c0_x_65_reg_2757 <= grp_fu_672_p_dout0;
        c0_x_72_reg_2781 <= grp_fu_688_p_dout0;
        c0_y_38_reg_2775 <= grp_fu_684_p_dout0;
        c0_y_43_reg_2799 <= grp_fu_700_p_dout0;
        c0_y_65_reg_2763 <= grp_fu_676_p_dout0;
        c0_y_72_reg_2787 <= grp_fu_692_p_dout0;
        sub1698_1_reg_2823 <= grp_fu_716_p_dout0;
        tmp_18_reg_2817 <= grp_fu_712_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add1717_1_reg_2941 <= grp_fu_688_p_dout0;
        add1720_1_reg_2946 <= grp_fu_692_p_dout0;
        add19_reg_2911 <= grp_fu_672_p_dout0;
        add20_reg_2916 <= grp_fu_676_p_dout0;
        mul10_reg_2906 <= grp_fu_736_p_dout0;
        mul1702_1_reg_2931 <= grp_fu_740_p_dout0;
        mul1709_1_reg_2936 <= grp_fu_781_p_dout0;
        mul9_reg_2901 <= grp_fu_732_p_dout0;
        sub1723_1_reg_2951 <= grp_fu_696_p_dout0;
        sub1726_1_reg_2956 <= grp_fu_700_p_dout0;
        sub20_reg_2921 <= grp_fu_680_p_dout0;
        sub21_reg_2926 <= grp_fu_684_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add1717_1_reg_2941_pp0_iter3_reg <= add1717_1_reg_2941;
        add1717_1_reg_2941_pp0_iter4_reg <= add1717_1_reg_2941_pp0_iter3_reg;
        add1720_1_reg_2946_pp0_iter3_reg <= add1720_1_reg_2946;
        add1720_1_reg_2946_pp0_iter4_reg <= add1720_1_reg_2946_pp0_iter3_reg;
        add19_reg_2911_pp0_iter3_reg <= add19_reg_2911;
        add19_reg_2911_pp0_iter4_reg <= add19_reg_2911_pp0_iter3_reg;
        add20_reg_2916_pp0_iter3_reg <= add20_reg_2916;
        add20_reg_2916_pp0_iter4_reg <= add20_reg_2916_pp0_iter3_reg;
        sub1723_1_reg_2951_pp0_iter3_reg <= sub1723_1_reg_2951;
        sub1723_1_reg_2951_pp0_iter4_reg <= sub1723_1_reg_2951_pp0_iter3_reg;
        sub1723_1_reg_2951_pp0_iter5_reg <= sub1723_1_reg_2951_pp0_iter4_reg;
        sub1726_1_reg_2956_pp0_iter3_reg <= sub1726_1_reg_2956;
        sub1726_1_reg_2956_pp0_iter4_reg <= sub1726_1_reg_2956_pp0_iter3_reg;
        sub1726_1_reg_2956_pp0_iter5_reg <= sub1726_1_reg_2956_pp0_iter4_reg;
        sub20_reg_2921_pp0_iter3_reg <= sub20_reg_2921;
        sub20_reg_2921_pp0_iter4_reg <= sub20_reg_2921_pp0_iter3_reg;
        sub21_reg_2926_pp0_iter3_reg <= sub21_reg_2926;
        sub21_reg_2926_pp0_iter4_reg <= sub21_reg_2926_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1733_1_reg_3177 <= grp_fu_688_p_dout0;
        add1736_1_reg_3182 <= grp_fu_692_p_dout0;
        sub1739_1_reg_3187 <= grp_fu_696_p_dout0;
        sub1742_1_reg_3192 <= grp_fu_700_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add1796_1_reg_3137 <= grp_fu_688_p_dout0;
        add1799_1_reg_3142 <= grp_fu_692_p_dout0;
        add25_reg_3107 <= grp_fu_672_p_dout0;
        add26_reg_3112 <= grp_fu_676_p_dout0;
        sub1802_1_reg_3147 <= grp_fu_696_p_dout0;
        sub1805_1_reg_3152 <= grp_fu_700_p_dout0;
        sub27_reg_3117 <= grp_fu_680_p_dout0;
        sub28_reg_3122 <= grp_fu_684_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add1796_1_reg_3137_pp0_iter4_reg <= add1796_1_reg_3137;
        add1799_1_reg_3142_pp0_iter4_reg <= add1799_1_reg_3142;
        add25_reg_3107_pp0_iter4_reg <= add25_reg_3107;
        add26_reg_3112_pp0_iter4_reg <= add26_reg_3112;
        sub1802_1_reg_3147_pp0_iter4_reg <= sub1802_1_reg_3147;
        sub1805_1_reg_3152_pp0_iter4_reg <= sub1805_1_reg_3152;
        sub27_reg_3117_pp0_iter4_reg <= sub27_reg_3117;
        sub28_reg_3122_pp0_iter4_reg <= sub28_reg_3122;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1812_1_reg_3230 <= grp_fu_712_p_dout0;
        add1815_1_reg_3235 <= grp_fu_716_p_dout0;
        sub1818_1_reg_3240 <= grp_fu_720_p_dout0;
        sub1821_1_reg_3245 <= grp_fu_724_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add21_reg_3157 <= grp_fu_720_p_dout0;
        add22_reg_3162 <= grp_fu_724_p_dout0;
        sub22_reg_3167 <= grp_fu_728_p_dout0;
        sub23_reg_3172 <= grp_fu_769_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add23_reg_3005 <= grp_fu_680_p_dout0;
        add24_reg_3011 <= grp_fu_684_p_dout0;
        c0_x_39_reg_2993 <= grp_fu_672_p_dout0;
        c0_x_44_reg_3029 <= grp_fu_696_p_dout0;
        c0_x_73_reg_3017 <= grp_fu_688_p_dout0;
        c0_y_39_reg_2999 <= grp_fu_676_p_dout0;
        c0_y_44_reg_3035 <= grp_fu_700_p_dout0;
        c0_y_73_reg_3023 <= grp_fu_692_p_dout0;
        sub1777_1_reg_3047 <= grp_fu_716_p_dout0;
        tmp_19_reg_3041 <= grp_fu_712_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add27_reg_3215 <= grp_fu_773_p_dout0;
        add28_reg_3220 <= grp_fu_777_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        c0_x_35_reg_2537_pp0_iter1_reg <= c0_x_35_reg_2537;
        c0_x_40_reg_2595_pp0_iter1_reg <= c0_x_40_reg_2595;
        c0_y_35_reg_2543_pp0_iter1_reg <= c0_y_35_reg_2543;
        c0_y_40_reg_2601_pp0_iter1_reg <= c0_y_40_reg_2601;
        zext_ln390_cast_reg_3209[5 : 0] <= zext_ln390_cast_fu_1729_p3[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        c0_x_38_reg_2769_pp0_iter2_reg <= c0_x_38_reg_2769;
        c0_x_43_reg_2793_pp0_iter2_reg <= c0_x_43_reg_2793;
        c0_y_38_reg_2775_pp0_iter2_reg <= c0_y_38_reg_2775;
        c0_y_43_reg_2799_pp0_iter2_reg <= c0_y_43_reg_2799;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_39_reg_2993_pp0_iter4_reg <= c0_x_39_reg_2993;
        c0_x_44_reg_3029_pp0_iter4_reg <= c0_x_44_reg_3029;
        c0_y_39_reg_2999_pp0_iter4_reg <= c0_y_39_reg_2999;
        c0_y_44_reg_3035_pp0_iter4_reg <= c0_y_44_reg_3035;
        lshr_ln_reg_2088 <= {{ap_sig_allocacmp_tid_5[5:1]}};
        lshr_ln_reg_2088_pp0_iter1_reg <= lshr_ln_reg_2088;
        lshr_ln_reg_2088_pp0_iter2_reg <= lshr_ln_reg_2088_pp0_iter1_reg;
        lshr_ln_reg_2088_pp0_iter3_reg <= lshr_ln_reg_2088_pp0_iter2_reg;
        lshr_ln_reg_2088_pp0_iter4_reg <= lshr_ln_reg_2088_pp0_iter3_reg;
        lshr_ln_reg_2088_pp0_iter5_reg <= lshr_ln_reg_2088_pp0_iter4_reg;
        sub22_reg_3167_pp0_iter5_reg <= sub22_reg_3167;
        sub23_reg_3172_pp0_iter5_reg <= sub23_reg_3172;
        tid_5_reg_2072 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_2072_pp0_iter1_reg <= tid_5_reg_2072;
        tid_5_reg_2072_pp0_iter2_reg <= tid_5_reg_2072_pp0_iter1_reg;
        tid_5_reg_2072_pp0_iter3_reg <= tid_5_reg_2072_pp0_iter2_reg;
        tid_5_reg_2072_pp0_iter4_reg <= tid_5_reg_2072_pp0_iter3_reg;
        tid_5_reg_2072_pp0_iter5_reg <= tid_5_reg_2072_pp0_iter4_reg;
        tmp_reg_2084 <= ap_sig_allocacmp_tid_5[32'd6];
        zext_ln391_cast_reg_3225[6 : 0] <= zext_ln391_cast_fu_1760_p3[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        c0_x_42_reg_2877 <= grp_fu_732_p_dout0;
        c0_y_42_reg_2883 <= grp_fu_736_p_dout0;
        mul1657_1_reg_2889 <= grp_fu_740_p_dout0;
        mul1663_1_reg_2895 <= grp_fu_781_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        c0_x_66_reg_2981 <= grp_fu_728_p_dout0;
        c0_y_66_reg_2987 <= grp_fu_769_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul11_reg_3077 <= grp_fu_732_p_dout0;
        mul12_reg_3082 <= grp_fu_736_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul1641_1_reg_2663 <= grp_fu_740_p_dout0;
        mul1648_1_reg_2668 <= grp_fu_781_p_dout0;
        mul6_reg_2658 <= grp_fu_736_p_dout0;
        mul_reg_2653 <= grp_fu_732_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul1781_1_reg_3097 <= grp_fu_732_p_dout0;
        mul1788_1_reg_3102 <= grp_fu_736_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_930 <= grp_fu_704_p_dout0;
        reg_936 <= grp_fu_708_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_942 <= grp_fu_773_p_dout0;
        reg_947 <= grp_fu_777_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_952 <= grp_fu_704_p_dout0;
        reg_958 <= grp_fu_708_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sub1705_1_reg_3065 <= grp_fu_680_p_dout0;
        sub1710_1_reg_3071 <= grp_fu_684_p_dout0;
        sub18_reg_3053 <= grp_fu_672_p_dout0;
        sub19_reg_3059 <= grp_fu_676_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub25_reg_3197 <= grp_fu_672_p_dout0;
        sub26_reg_3203 <= grp_fu_676_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_s_reg_3256 <= {{tid_5_reg_2072_pp0_iter5_reg[6:1]}};
        zext_ln391_1_cast_reg_3261[6 : 1] <= zext_ln391_1_cast_fu_1936_p4[6 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln365_1_reg_3250[6 : 0] <= zext_ln365_1_fu_1864_p1[6 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_10_ce0_local = 1'b1;
    end else begin
        DATA_x_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_11_ce0_local = 1'b1;
    end else begin
        DATA_x_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_12_ce0_local = 1'b1;
    end else begin
        DATA_x_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_13_ce0_local = 1'b1;
    end else begin
        DATA_x_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_14_ce0_local = 1'b1;
    end else begin
        DATA_x_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_15_ce0_local = 1'b1;
    end else begin
        DATA_x_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_8_ce0_local = 1'b1;
    end else begin
        DATA_x_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_9_ce0_local = 1'b1;
    end else begin
        DATA_x_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_10_ce0_local = 1'b1;
    end else begin
        DATA_y_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_11_ce0_local = 1'b1;
    end else begin
        DATA_y_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_12_ce0_local = 1'b1;
    end else begin
        DATA_y_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_13_ce0_local = 1'b1;
    end else begin
        DATA_y_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_14_ce0_local = 1'b1;
    end else begin
        DATA_y_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_15_ce0_local = 1'b1;
    end else begin
        DATA_y_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_8_ce0_local = 1'b1;
    end else begin
        DATA_y_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_9_ce0_local = 1'b1;
    end else begin
        DATA_y_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2084 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_5 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_5 = tid_fu_140;
    end
end
always @ (*) begin
    if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_834_opcode = 2'd1;
    end else if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_834_opcode = 2'd0;
    end else begin
        grp_fu_834_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_834_p0 = mul11_reg_3077;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_834_p0 = c0_x_66_reg_2981;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_834_p0 = mul9_reg_2901;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_834_p0 = c0_x_35_reg_2537_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_834_p0 = c0_x_65_reg_2757;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_834_p0 = mul_reg_2653;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_834_p0 = c0_x_64_reg_2525;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_834_p0 = tmp_1_reg_2453;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_834_p0 = c0_x_reg_2299;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_834_p0 = c0_x_61_reg_2305;
    end else begin
        grp_fu_834_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_834_p1 = bitcast_ln386_17_fu_1618_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_834_p1 = add23_reg_3005;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_834_p1 = bitcast_ln386_13_fu_1481_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_834_p1 = sub15_reg_2841;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_834_p1 = add17_reg_2703;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_834_p1 = bitcast_ln386_5_fu_1345_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_834_p1 = add_reg_2549;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_834_p1 = bitcast_ln386_1_fu_1055_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_834_p1 = DATA_x_4_load_reg_2322;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_834_p1 = DATA_x_5_load_reg_2328;
    end else begin
        grp_fu_834_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_838_opcode = 2'd1;
    end else if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_838_opcode = 2'd0;
    end else begin
        grp_fu_838_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_838_p0 = bitcast_ln386_19_fu_1653_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_838_p0 = c0_y_66_reg_2987;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_838_p0 = bitcast_ln386_15_fu_1515_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_838_p0 = c0_y_35_reg_2543_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_838_p0 = c0_y_65_reg_2763;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_838_p0 = bitcast_ln386_7_fu_1379_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_838_p0 = c0_y_64_reg_2531;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_838_p0 = bitcast_ln386_3_fu_1089_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_838_p0 = c0_y_reg_2253;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_838_p0 = c0_y_61_reg_2259;
    end else begin
        grp_fu_838_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_838_p1 = mul12_reg_3082;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_838_p1 = add24_reg_3011;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_838_p1 = mul10_reg_2906;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_838_p1 = add15_reg_2847;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_838_p1 = add18_reg_2709;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_838_p1 = mul6_reg_2658;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_838_p1 = add11_reg_2555;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_838_p1 = sub_reg_2459;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_838_p1 = DATA_y_4_load_reg_2276;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_838_p1 = DATA_y_5_load_reg_2282;
    end else begin
        grp_fu_838_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_842_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_842_opcode = 2'd0;
    end else begin
        grp_fu_842_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_842_p0 = c0_x_66_reg_2981;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_842_p0 = mul1702_1_reg_2931;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_842_p0 = c0_x_37_reg_2829;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_842_p0 = c0_x_65_reg_2757;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_842_p0 = mul1641_1_reg_2663;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_842_p0 = c0_x_64_reg_2525;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_842_p0 = bitcast_ln386_9_fu_1124_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_842_p0 = c0_x_reg_2299;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_842_p0 = c0_x_61_reg_2305;
    end else begin
        grp_fu_842_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_842_p1 = add23_reg_3005;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_842_p1 = bitcast_ln386_33_fu_1549_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_842_p1 = mul7_reg_2853;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_842_p1 = add17_reg_2703;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_842_p1 = bitcast_ln386_25_fu_1413_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_842_p1 = add_reg_2549;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_842_p1 = bitcast_ln386_11_fu_1160_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_842_p1 = DATA_x_4_load_reg_2322;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_842_p1 = DATA_x_5_load_reg_2328;
    end else begin
        grp_fu_842_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_846_opcode = 2'd1;
    end else if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_846_opcode = 2'd0;
    end else begin
        grp_fu_846_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_846_p0 = c0_y_66_reg_2987;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_846_p0 = bitcast_ln386_35_fu_1583_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_846_p0 = c0_y_37_reg_2835;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_846_p0 = c0_y_65_reg_2763;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_846_p0 = bitcast_ln386_27_fu_1447_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_846_p0 = c0_y_64_reg_2531;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_846_p0 = bitcast_ln386_9_fu_1124_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_846_p0 = c0_y_reg_2253;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_846_p0 = c0_y_61_reg_2259;
    end else begin
        grp_fu_846_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_846_p1 = add24_reg_3011;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_846_p1 = mul1709_1_reg_2936;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_846_p1 = mul8_reg_2859;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_846_p1 = add18_reg_2709;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_846_p1 = mul1648_1_reg_2668;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_846_p1 = add11_reg_2555;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_846_p1 = bitcast_ln386_11_fu_1160_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_846_p1 = DATA_y_4_load_reg_2276;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_846_p1 = DATA_y_5_load_reg_2282;
    end else begin
        grp_fu_846_p1 = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_850_opcode = 2'd1;
    end else if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_850_opcode = 2'd0;
    end else begin
        grp_fu_850_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_850_p0 = c0_x_43_reg_2793_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_850_p0 = c0_x_73_reg_3017;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_850_p0 = c0_x_40_reg_2595_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_850_p0 = c0_x_72_reg_2781;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_850_p0 = c0_x_71_reg_2583;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_850_p0 = c0_x_36_reg_2441;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_850_p0 = c0_x_62_reg_2311;
    end else begin
        grp_fu_850_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_850_p1 = sub1705_1_reg_3065;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_850_p1 = reg_930;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_850_p1 = sub1644_1_reg_2865;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_850_p1 = add1689_1_reg_2805;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_850_p1 = add1598_1_reg_2607;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_850_p1 = add12_reg_2477;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_850_p1 = DATA_x_6_load_reg_2334;
    end else begin
        grp_fu_850_p1 = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_854_opcode = 2'd1;
    end else if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_854_opcode = 2'd0;
    end else begin
        grp_fu_854_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_854_p0 = c0_y_43_reg_2799_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_854_p0 = c0_y_73_reg_3023;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_854_p0 = c0_y_40_reg_2601_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_854_p0 = c0_y_72_reg_2787;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_854_p0 = c0_y_71_reg_2589;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_854_p0 = c0_y_36_reg_2447;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_854_p0 = c0_y_62_reg_2265;
    end else begin
        grp_fu_854_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_854_p1 = sub1710_1_reg_3071;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_854_p1 = reg_936;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_854_p1 = add1649_1_reg_2871;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_854_p1 = add1692_1_reg_2811;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_854_p1 = add1601_1_reg_2613;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_854_p1 = add13_reg_2483;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_854_p1 = DATA_y_6_load_reg_2288;
    end else begin
        grp_fu_854_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_858_opcode = 2'd1;
    end else if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_858_opcode = 2'd0;
    end else begin
        grp_fu_858_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_858_p0 = c0_x_43_reg_2793_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_858_p0 = c0_x_73_reg_3017;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_858_p0 = c0_x_40_reg_2595_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_858_p0 = c0_x_72_reg_2781;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_858_p0 = c0_x_71_reg_2583;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_858_p0 = c0_x_36_reg_2441;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_858_p0 = c0_x_67_reg_2393;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_858_p0 = c0_x_63_reg_2316;
    end else begin
        grp_fu_858_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_858_p1 = sub1705_1_reg_3065;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_858_p1 = reg_930;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_858_p1 = sub1644_1_reg_2865;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_858_p1 = add1689_1_reg_2805;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_858_p1 = add1598_1_reg_2607;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_858_p1 = add12_reg_2477;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_858_p1 = DATA_x_12_load_reg_2417;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_858_p1 = DATA_x_7_load_reg_2339;
    end else begin
        grp_fu_858_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_862_opcode = 2'd1;
    end else if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_862_opcode = 2'd0;
    end else begin
        grp_fu_862_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_862_p0 = c0_y_43_reg_2799_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_862_p0 = c0_y_73_reg_3023;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_862_p0 = c0_y_40_reg_2601_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_862_p0 = c0_y_72_reg_2787;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_862_p0 = c0_y_71_reg_2589;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_862_p0 = c0_y_36_reg_2447;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_862_p0 = c0_y_67_reg_2345;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_862_p0 = c0_y_63_reg_2270;
    end else begin
        grp_fu_862_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_862_p1 = sub1710_1_reg_3071;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_862_p1 = reg_936;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_862_p1 = add1649_1_reg_2871;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_862_p1 = add1692_1_reg_2811;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_862_p1 = add1601_1_reg_2613;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_862_p1 = add13_reg_2483;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_862_p1 = DATA_y_12_load_reg_2369;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_862_p1 = DATA_y_7_load_reg_2293;
    end else begin
        grp_fu_862_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_866_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_866_opcode = 2'd0;
    end else begin
        grp_fu_866_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_866_p0 = c0_x_39_reg_2993_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_866_p0 = mul1781_1_reg_3097;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_866_p0 = c0_x_42_reg_2877;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_866_p0 = c0_x_41_reg_2489;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_866_p0 = tmp_1_15_reg_2501;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_866_p0 = c0_x_67_reg_2393;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_866_p0 = c0_x_63_reg_2316;
    end else begin
        grp_fu_866_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_866_p1 = sub25_reg_3197;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_866_p1 = bitcast_ln386_37_fu_1687_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_866_p1 = mul1657_1_reg_2889;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_866_p1 = add1614_1_reg_2619;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_866_p1 = bitcast_ln386_21_fu_1195_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_866_p1 = DATA_x_12_load_reg_2417;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_866_p1 = DATA_x_7_load_reg_2339;
    end else begin
        grp_fu_866_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_870_opcode = 2'd1;
    end else if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_870_opcode = 2'd0;
    end else begin
        grp_fu_870_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_870_p0 = c0_y_39_reg_2999_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_870_p0 = bitcast_ln386_39_fu_1721_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_870_p0 = c0_y_42_reg_2883;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_870_p0 = c0_y_41_reg_2495;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_870_p0 = bitcast_ln386_23_fu_1229_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_870_p0 = c0_y_67_reg_2345;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_870_p0 = c0_y_63_reg_2270;
    end else begin
        grp_fu_870_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_870_p1 = sub26_reg_3203;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_870_p1 = mul1788_1_reg_3102;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_870_p1 = mul1663_1_reg_2895;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_870_p1 = add1617_1_reg_2625;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_870_p1 = sub1591_1_reg_2507;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_870_p1 = DATA_y_12_load_reg_2369;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_870_p1 = DATA_y_7_load_reg_2293;
    end else begin
        grp_fu_870_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_874_opcode = 2'd1;
    end else if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_874_opcode = 2'd0;
    end else begin
        grp_fu_874_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_874_p0 = c0_x_44_reg_3029_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_874_p0 = c0_x_42_reg_2877;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_874_p0 = c0_x_41_reg_2489;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_874_p0 = bitcast_ln386_29_fu_1264_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_874_p0 = c0_x_69_reg_2405;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_874_p0 = c0_x_68_reg_2399;
    end else begin
        grp_fu_874_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_874_p1 = reg_952;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_874_p1 = mul1657_1_reg_2889;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_874_p1 = add1614_1_reg_2619;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_874_p1 = bitcast_ln386_31_fu_1300_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_874_p1 = DATA_x_14_load_reg_2429;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_874_p1 = DATA_x_13_load_reg_2423;
    end else begin
        grp_fu_874_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_878_opcode = 2'd1;
    end else if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_878_opcode = 2'd0;
    end else begin
        grp_fu_878_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_878_p0 = c0_y_44_reg_3035_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_878_p0 = c0_y_42_reg_2883;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_878_p0 = c0_y_41_reg_2495;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_878_p0 = bitcast_ln386_29_fu_1264_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_878_p0 = c0_y_69_reg_2357;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_878_p0 = c0_y_68_reg_2351;
    end else begin
        grp_fu_878_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_878_p1 = reg_958;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_878_p1 = mul1663_1_reg_2895;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_878_p1 = add1617_1_reg_2625;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_878_p1 = bitcast_ln386_31_fu_1300_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_878_p1 = DATA_y_14_load_reg_2381;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_878_p1 = DATA_y_13_load_reg_2375;
    end else begin
        grp_fu_878_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_882_opcode = 2'd1;
    end else if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_882_opcode = 2'd0;
    end else begin
        grp_fu_882_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_882_p0 = c0_x_44_reg_3029_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_882_p0 = c0_x_38_reg_2769_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_882_p0 = c0_x_70_reg_2411;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_882_p0 = c0_x_68_reg_2399;
    end else begin
        grp_fu_882_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_882_p1 = reg_952;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_882_p1 = sub18_reg_3053;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_882_p1 = DATA_x_15_load_reg_2435;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_882_p1 = DATA_x_13_load_reg_2423;
    end else begin
        grp_fu_882_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_886_opcode = 2'd1;
    end else if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_886_opcode = 2'd0;
    end else begin
        grp_fu_886_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_886_p0 = c0_y_44_reg_3035_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_886_p0 = c0_y_38_reg_2775_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_886_p0 = c0_y_70_reg_2363;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_886_p0 = c0_y_68_reg_2351;
    end else begin
        grp_fu_886_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_886_p1 = reg_958;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_886_p1 = sub19_reg_3059;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_886_p1 = DATA_y_15_load_reg_2387;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_886_p1 = DATA_y_13_load_reg_2375;
    end else begin
        grp_fu_886_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_890_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_890_opcode = 2'd0;
    end else begin
        grp_fu_890_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_890_p0 = c0_x_38_reg_2769_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_890_p0 = c0_x_35_reg_2537_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_890_p0 = c0_x_69_reg_2405;
    end else begin
        grp_fu_890_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_890_p1 = sub18_reg_3053;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_890_p1 = sub15_reg_2841;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_890_p1 = DATA_x_14_load_reg_2429;
    end else begin
        grp_fu_890_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_894_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_894_opcode = 2'd0;
    end else begin
        grp_fu_894_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_894_p0 = c0_y_38_reg_2775_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_894_p0 = c0_y_35_reg_2543_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_894_p0 = c0_y_69_reg_2357;
    end else begin
        grp_fu_894_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_894_p1 = sub19_reg_3059;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_894_p1 = add15_reg_2847;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_894_p1 = DATA_y_14_load_reg_2381;
    end else begin
        grp_fu_894_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_898_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_898_opcode = 2'd0;
    end else begin
        grp_fu_898_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_898_p0 = c0_x_39_reg_2993_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_898_p0 = c0_x_37_reg_2829;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_898_p0 = c0_x_70_reg_2411;
    end else begin
        grp_fu_898_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_898_p1 = sub25_reg_3197;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_898_p1 = mul7_reg_2853;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_898_p1 = DATA_x_15_load_reg_2435;
    end else begin
        grp_fu_898_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_902_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_902_opcode = 2'd0;
    end else begin
        grp_fu_902_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_902_p0 = c0_y_39_reg_2999_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_902_p0 = c0_y_37_reg_2835;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_902_p0 = c0_y_70_reg_2363;
    end else begin
        grp_fu_902_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_902_p1 = sub26_reg_3203;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_902_p1 = mul8_reg_2859;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_902_p1 = DATA_y_15_load_reg_2387;
    end else begin
        grp_fu_902_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_906_p0 = tmp_19_reg_3041;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_906_p0 = reg_942;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_906_p0 = tmp_16_reg_2715;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_906_p0 = sub1630_1_reg_2727;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_906_p0 = sub14_reg_2673;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_906_p0 = tmp_1_11_reg_2465;
    end else begin
        grp_fu_906_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_906_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_906_p1 = 64'd0;
    end else begin
        grp_fu_906_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_911_p0 = sub1777_1_reg_3047;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_911_p0 = reg_947;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_911_p0 = sub17_reg_2721;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_911_p0 = add1636_1_reg_2732;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_911_p0 = add14_reg_2678;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_911_p0 = sub12_reg_2471;
    end else begin
        grp_fu_911_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_911_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_911_p1 = 64'd0;
    end else begin
        grp_fu_911_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_916_p0 = tmp_18_reg_2817;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_916_p0 = sub1656_1_reg_2747;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_916_p0 = sub16_reg_2693;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_916_p0 = tmp_1_13_reg_2513;
    end else begin
        grp_fu_916_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_916_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_916_p1 = 64'd0;
    end else begin
        grp_fu_916_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_921_p0 = sub1698_1_reg_2823;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_921_p0 = add1662_1_reg_2752;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_921_p0 = add16_reg_2698;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_921_p0 = sub1607_1_reg_2519;
    end else begin
        grp_fu_921_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_921_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_921_p1 = 64'd0;
    end else begin
        grp_fu_921_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            work_x_address0_local = zext_ln396_1_fu_2051_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_x_address0_local = zext_ln394_1_fu_2011_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_x_address0_local = zext_ln392_1_fu_1965_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_x_address0_local = zext_ln367_1_fu_1913_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_x_address0_local = zext_ln396_fu_1886_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_x_address0_local = zext_ln390_1_fu_1850_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_x_address0_local = zext_ln395_fu_1801_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_x_address0_local = zext_ln391_fu_1767_p1;
        end else begin
            work_x_address0_local = 'bx;
        end
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_x_address1_local = zext_ln395_1_fu_2028_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_x_address1_local = zext_ln393_2_fu_1992_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_x_address1_local = zext_ln391_1_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address1_local = zext_ln394_fu_1873_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address1_local = zext_ln393_fu_1830_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address1_local = zext_ln392_fu_1788_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address1_local = zext_ln365_fu_1751_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_x_address1_local = zext_ln390_fu_1737_p1;
    end else begin
        work_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_ce0_local = 1'b1;
    end else begin
        work_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        work_x_ce1_local = 1'b1;
    end else begin
        work_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            work_x_d0_local = bitcast_ln396_1_fu_2057_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_x_d0_local = bitcast_ln394_1_fu_2017_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_x_d0_local = bitcast_ln392_1_fu_1971_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_x_d0_local = bitcast_ln389_1_fu_1919_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_x_d0_local = bitcast_ln396_fu_1892_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_x_d0_local = bitcast_ln390_1_fu_1856_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_x_d0_local = bitcast_ln395_fu_1807_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_x_d0_local = bitcast_ln391_fu_1773_p1;
        end else begin
            work_x_d0_local = 'bx;
        end
    end else begin
        work_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_x_d1_local = bitcast_ln395_1_fu_2034_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_x_d1_local = bitcast_ln393_1_fu_1998_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_x_d1_local = bitcast_ln391_1_fu_1952_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d1_local = bitcast_ln394_fu_1879_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d1_local = bitcast_ln393_fu_1836_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d1_local = bitcast_ln392_fu_1794_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d1_local = bitcast_ln389_fu_1756_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_x_d1_local = bitcast_ln390_fu_1743_p1;
    end else begin
        work_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_we0_local = 1'b1;
    end else begin
        work_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        work_x_we1_local = 1'b1;
    end else begin
        work_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            work_y_address0_local = zext_ln396_1_fu_2051_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_y_address0_local = zext_ln394_1_fu_2011_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_y_address0_local = zext_ln392_1_fu_1965_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_y_address0_local = zext_ln367_1_fu_1913_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_y_address0_local = zext_ln396_fu_1886_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_y_address0_local = zext_ln390_1_fu_1850_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_y_address0_local = zext_ln395_fu_1801_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_y_address0_local = zext_ln391_fu_1767_p1;
        end else begin
            work_y_address0_local = 'bx;
        end
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_y_address1_local = zext_ln395_1_fu_2028_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_y_address1_local = zext_ln393_2_fu_1992_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_y_address1_local = zext_ln391_1_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address1_local = zext_ln394_fu_1873_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address1_local = zext_ln393_fu_1830_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address1_local = zext_ln392_fu_1788_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address1_local = zext_ln365_fu_1751_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_y_address1_local = zext_ln390_fu_1737_p1;
    end else begin
        work_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_ce0_local = 1'b1;
    end else begin
        work_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        work_y_ce1_local = 1'b1;
    end else begin
        work_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            work_y_d0_local = bitcast_ln405_1_fu_2061_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_y_d0_local = bitcast_ln403_1_fu_2021_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_y_d0_local = bitcast_ln401_1_fu_1975_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_y_d0_local = bitcast_ln398_1_fu_1923_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_y_d0_local = bitcast_ln405_fu_1901_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_y_d0_local = bitcast_ln399_1_fu_1860_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_y_d0_local = bitcast_ln404_fu_1815_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_y_d0_local = bitcast_ln400_fu_1781_p1;
        end else begin
            work_y_d0_local = 'bx;
        end
    end else begin
        work_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_y_d1_local = bitcast_ln404_1_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_y_d1_local = bitcast_ln402_1_fu_2002_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_y_d1_local = bitcast_ln400_1_fu_1956_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d1_local = bitcast_ln403_fu_1897_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d1_local = bitcast_ln402_fu_1840_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d1_local = bitcast_ln401_fu_1811_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d1_local = bitcast_ln398_fu_1777_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_y_d1_local = bitcast_ln399_fu_1747_p1;
    end else begin
        work_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_we0_local = 1'b1;
    end else begin
        work_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        work_y_we1_local = 1'b1;
    end else begin
        work_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_10_address0 = zext_ln367_fu_990_p1;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_11_address0 = zext_ln367_fu_990_p1;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_12_address0 = zext_ln367_fu_990_p1;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_13_address0 = zext_ln367_fu_990_p1;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_14_address0 = zext_ln367_fu_990_p1;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_15_address0 = zext_ln367_fu_990_p1;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_1_address0 = zext_ln367_fu_990_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_2_address0 = zext_ln367_fu_990_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_3_address0 = zext_ln367_fu_990_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_4_address0 = zext_ln367_fu_990_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_5_address0 = zext_ln367_fu_990_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_6_address0 = zext_ln367_fu_990_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_7_address0 = zext_ln367_fu_990_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_8_address0 = zext_ln367_fu_990_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_9_address0 = zext_ln367_fu_990_p1;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_address0 = zext_ln367_fu_990_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_y_10_address0 = zext_ln367_fu_990_p1;
assign DATA_y_10_ce0 = DATA_y_10_ce0_local;
assign DATA_y_11_address0 = zext_ln367_fu_990_p1;
assign DATA_y_11_ce0 = DATA_y_11_ce0_local;
assign DATA_y_12_address0 = zext_ln367_fu_990_p1;
assign DATA_y_12_ce0 = DATA_y_12_ce0_local;
assign DATA_y_13_address0 = zext_ln367_fu_990_p1;
assign DATA_y_13_ce0 = DATA_y_13_ce0_local;
assign DATA_y_14_address0 = zext_ln367_fu_990_p1;
assign DATA_y_14_ce0 = DATA_y_14_ce0_local;
assign DATA_y_15_address0 = zext_ln367_fu_990_p1;
assign DATA_y_15_ce0 = DATA_y_15_ce0_local;
assign DATA_y_1_address0 = zext_ln367_fu_990_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_2_address0 = zext_ln367_fu_990_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_3_address0 = zext_ln367_fu_990_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_4_address0 = zext_ln367_fu_990_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_5_address0 = zext_ln367_fu_990_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_6_address0 = zext_ln367_fu_990_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_7_address0 = zext_ln367_fu_990_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_8_address0 = zext_ln367_fu_990_p1;
assign DATA_y_8_ce0 = DATA_y_8_ce0_local;
assign DATA_y_9_address0 = zext_ln367_fu_990_p1;
assign DATA_y_9_ce0 = DATA_y_9_ce0_local;
assign DATA_y_address0 = zext_ln367_fu_990_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign add_ln365_fu_1306_p2 = (tid_5_reg_2072 + 7'd2);
assign add_ln390_fu_1844_p2 = (zext_ln365_2_fu_1819_p1 + 8'd65);
assign add_ln392_fu_1960_p2 = (zext_ln365_1_reg_3250 + 9'd193);
assign add_ln394_1_fu_2006_p2 = ($signed(zext_ln365_1_reg_3250) + $signed(9'd321));
assign add_ln394_fu_1867_p2 = ($signed(zext_ln365_1_fu_1864_p1) + $signed(9'd320));
assign add_ln396_fu_2042_p2 = ($signed(tid_5_reg_2072_pp0_iter5_reg) + $signed(7'd65));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
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
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign bit_sel40_fu_1063_p3 = bitcast_ln386_2_fu_1060_p1[64'd63];
assign bit_sel41_fu_1319_p3 = bitcast_ln386_4_fu_1316_p1[64'd63];
assign bit_sel42_fu_1353_p3 = bitcast_ln386_6_fu_1350_p1[64'd63];
assign bit_sel43_fu_1098_p3 = bitcast_ln386_8_fu_1094_p1[64'd63];
assign bit_sel44_fu_1134_p3 = bitcast_ln386_10_fu_1130_p1[64'd63];
assign bit_sel45_fu_1455_p3 = bitcast_ln386_12_fu_1452_p1[64'd63];
assign bit_sel46_fu_1489_p3 = bitcast_ln386_14_fu_1486_p1[64'd63];
assign bit_sel47_fu_1592_p3 = bitcast_ln386_16_fu_1588_p1[64'd63];
assign bit_sel48_fu_1627_p3 = bitcast_ln386_18_fu_1623_p1[64'd63];
assign bit_sel49_fu_1169_p3 = bitcast_ln386_20_fu_1166_p1[64'd63];
assign bit_sel50_fu_1203_p3 = bitcast_ln386_22_fu_1200_p1[64'd63];
assign bit_sel51_fu_1387_p3 = bitcast_ln386_24_fu_1384_p1[64'd63];
assign bit_sel52_fu_1421_p3 = bitcast_ln386_26_fu_1418_p1[64'd63];
assign bit_sel53_fu_1238_p3 = bitcast_ln386_28_fu_1234_p1[64'd63];
assign bit_sel54_fu_1274_p3 = bitcast_ln386_30_fu_1270_p1[64'd63];
assign bit_sel55_fu_1523_p3 = bitcast_ln386_32_fu_1520_p1[64'd63];
assign bit_sel56_fu_1557_p3 = bitcast_ln386_34_fu_1554_p1[64'd63];
assign bit_sel57_fu_1661_p3 = bitcast_ln386_36_fu_1658_p1[64'd63];
assign bit_sel58_fu_1695_p3 = bitcast_ln386_38_fu_1692_p1[64'd63];
assign bit_sel_fu_1029_p3 = bitcast_ln386_fu_1026_p1[64'd63];
assign bitcast_ln386_10_fu_1130_p1 = reg_936;
assign bitcast_ln386_11_fu_1160_p1 = xor_ln386_5_fu_1152_p3;
assign bitcast_ln386_12_fu_1452_p1 = sub17_reg_2721;
assign bitcast_ln386_13_fu_1481_p1 = xor_ln386_6_fu_1473_p3;
assign bitcast_ln386_14_fu_1486_p1 = tmp_16_reg_2715;
assign bitcast_ln386_15_fu_1515_p1 = xor_ln386_7_fu_1507_p3;
assign bitcast_ln386_16_fu_1588_p1 = reg_947;
assign bitcast_ln386_17_fu_1618_p1 = xor_ln386_8_fu_1610_p3;
assign bitcast_ln386_18_fu_1623_p1 = reg_942;
assign bitcast_ln386_19_fu_1653_p1 = xor_ln386_9_fu_1645_p3;
assign bitcast_ln386_1_fu_1055_p1 = xor_ln3_fu_1047_p3;
assign bitcast_ln386_20_fu_1166_p1 = sub1591_1_reg_2507;
assign bitcast_ln386_21_fu_1195_p1 = xor_ln386_s_fu_1187_p3;
assign bitcast_ln386_22_fu_1200_p1 = tmp_1_15_reg_2501;
assign bitcast_ln386_23_fu_1229_p1 = xor_ln386_10_fu_1221_p3;
assign bitcast_ln386_24_fu_1384_p1 = sub1607_1_reg_2519;
assign bitcast_ln386_25_fu_1413_p1 = xor_ln386_11_fu_1405_p3;
assign bitcast_ln386_26_fu_1418_p1 = tmp_1_13_reg_2513;
assign bitcast_ln386_27_fu_1447_p1 = xor_ln386_12_fu_1439_p3;
assign bitcast_ln386_28_fu_1234_p1 = reg_942;
assign bitcast_ln386_29_fu_1264_p1 = xor_ln386_13_fu_1256_p3;
assign bitcast_ln386_2_fu_1060_p1 = tmp_1_reg_2453;
assign bitcast_ln386_30_fu_1270_p1 = reg_947;
assign bitcast_ln386_31_fu_1300_p1 = xor_ln386_14_fu_1292_p3;
assign bitcast_ln386_32_fu_1520_p1 = sub1698_1_reg_2823;
assign bitcast_ln386_33_fu_1549_p1 = xor_ln386_15_fu_1541_p3;
assign bitcast_ln386_34_fu_1554_p1 = tmp_18_reg_2817;
assign bitcast_ln386_35_fu_1583_p1 = xor_ln386_16_fu_1575_p3;
assign bitcast_ln386_36_fu_1658_p1 = sub1777_1_reg_3047;
assign bitcast_ln386_37_fu_1687_p1 = xor_ln386_17_fu_1679_p3;
assign bitcast_ln386_38_fu_1692_p1 = tmp_19_reg_3041;
assign bitcast_ln386_39_fu_1721_p1 = xor_ln386_18_fu_1713_p3;
assign bitcast_ln386_3_fu_1089_p1 = xor_ln386_1_fu_1081_p3;
assign bitcast_ln386_4_fu_1316_p1 = sub12_reg_2471;
assign bitcast_ln386_5_fu_1345_p1 = xor_ln386_2_fu_1337_p3;
assign bitcast_ln386_6_fu_1350_p1 = tmp_1_11_reg_2465;
assign bitcast_ln386_7_fu_1379_p1 = xor_ln386_3_fu_1371_p3;
assign bitcast_ln386_8_fu_1094_p1 = reg_930;
assign bitcast_ln386_9_fu_1124_p1 = xor_ln386_4_fu_1116_p3;
assign bitcast_ln386_fu_1026_p1 = sub_reg_2459;
assign bitcast_ln389_1_fu_1919_p1 = add1717_1_reg_2941_pp0_iter4_reg;
assign bitcast_ln389_fu_1756_p1 = add19_reg_2911_pp0_iter4_reg;
assign bitcast_ln390_1_fu_1856_p1 = add1796_1_reg_3137_pp0_iter4_reg;
assign bitcast_ln390_fu_1743_p1 = add25_reg_3107_pp0_iter4_reg;
assign bitcast_ln391_1_fu_1952_p1 = add1733_1_reg_3177_pp0_iter5_reg;
assign bitcast_ln391_fu_1773_p1 = add21_reg_3157;
assign bitcast_ln392_1_fu_1971_p1 = add1812_1_reg_3230;
assign bitcast_ln392_fu_1794_p1 = add27_reg_3215;
assign bitcast_ln393_1_fu_1998_p1 = sub1723_1_reg_2951_pp0_iter5_reg;
assign bitcast_ln393_fu_1836_p1 = sub20_reg_2921_pp0_iter4_reg;
assign bitcast_ln394_1_fu_2017_p1 = sub1802_1_reg_3147_pp0_iter4_reg;
assign bitcast_ln394_fu_1879_p1 = sub27_reg_3117_pp0_iter4_reg;
assign bitcast_ln395_1_fu_2034_p1 = sub1739_1_reg_3187_pp0_iter5_reg;
assign bitcast_ln395_fu_1807_p1 = sub22_reg_3167_pp0_iter5_reg;
assign bitcast_ln396_1_fu_2057_p1 = sub1818_1_reg_3240;
assign bitcast_ln396_fu_1892_p1 = reg_952;
assign bitcast_ln398_1_fu_1923_p1 = add1720_1_reg_2946_pp0_iter4_reg;
assign bitcast_ln398_fu_1777_p1 = add20_reg_2916_pp0_iter4_reg;
assign bitcast_ln399_1_fu_1860_p1 = add1799_1_reg_3142_pp0_iter4_reg;
assign bitcast_ln399_fu_1747_p1 = add26_reg_3112_pp0_iter4_reg;
assign bitcast_ln400_1_fu_1956_p1 = add1736_1_reg_3182_pp0_iter5_reg;
assign bitcast_ln400_fu_1781_p1 = add22_reg_3162;
assign bitcast_ln401_1_fu_1975_p1 = add1815_1_reg_3235;
assign bitcast_ln401_fu_1811_p1 = add28_reg_3220;
assign bitcast_ln402_1_fu_2002_p1 = sub1726_1_reg_2956_pp0_iter5_reg;
assign bitcast_ln402_fu_1840_p1 = sub21_reg_2926_pp0_iter4_reg;
assign bitcast_ln403_1_fu_2021_p1 = sub1805_1_reg_3152_pp0_iter4_reg;
assign bitcast_ln403_fu_1897_p1 = sub28_reg_3122_pp0_iter4_reg;
assign bitcast_ln404_1_fu_2038_p1 = sub1742_1_reg_3192_pp0_iter5_reg;
assign bitcast_ln404_fu_1815_p1 = sub23_reg_3172_pp0_iter5_reg;
assign bitcast_ln405_1_fu_2061_p1 = sub1821_1_reg_3245;
assign bitcast_ln405_fu_1901_p1 = reg_958;
assign grp_fu_672_p_ce = 1'b1;
assign grp_fu_672_p_din0 = grp_fu_834_p0;
assign grp_fu_672_p_din1 = grp_fu_834_p1;
assign grp_fu_672_p_opcode = grp_fu_834_opcode;
assign grp_fu_676_p_ce = 1'b1;
assign grp_fu_676_p_din0 = grp_fu_838_p0;
assign grp_fu_676_p_din1 = grp_fu_838_p1;
assign grp_fu_676_p_opcode = grp_fu_838_opcode;
assign grp_fu_680_p_ce = 1'b1;
assign grp_fu_680_p_din0 = grp_fu_842_p0;
assign grp_fu_680_p_din1 = grp_fu_842_p1;
assign grp_fu_680_p_opcode = grp_fu_842_opcode;
assign grp_fu_684_p_ce = 1'b1;
assign grp_fu_684_p_din0 = grp_fu_846_p0;
assign grp_fu_684_p_din1 = grp_fu_846_p1;
assign grp_fu_684_p_opcode = grp_fu_846_opcode;
assign grp_fu_688_p_ce = 1'b1;
assign grp_fu_688_p_din0 = grp_fu_850_p0;
assign grp_fu_688_p_din1 = grp_fu_850_p1;
assign grp_fu_688_p_opcode = grp_fu_850_opcode;
assign grp_fu_692_p_ce = 1'b1;
assign grp_fu_692_p_din0 = grp_fu_854_p0;
assign grp_fu_692_p_din1 = grp_fu_854_p1;
assign grp_fu_692_p_opcode = grp_fu_854_opcode;
assign grp_fu_696_p_ce = 1'b1;
assign grp_fu_696_p_din0 = grp_fu_858_p0;
assign grp_fu_696_p_din1 = grp_fu_858_p1;
assign grp_fu_696_p_opcode = grp_fu_858_opcode;
assign grp_fu_700_p_ce = 1'b1;
assign grp_fu_700_p_din0 = grp_fu_862_p0;
assign grp_fu_700_p_din1 = grp_fu_862_p1;
assign grp_fu_700_p_opcode = grp_fu_862_opcode;
assign grp_fu_704_p_ce = 1'b1;
assign grp_fu_704_p_din0 = grp_fu_866_p0;
assign grp_fu_704_p_din1 = grp_fu_866_p1;
assign grp_fu_704_p_opcode = grp_fu_866_opcode;
assign grp_fu_708_p_ce = 1'b1;
assign grp_fu_708_p_din0 = grp_fu_870_p0;
assign grp_fu_708_p_din1 = grp_fu_870_p1;
assign grp_fu_708_p_opcode = grp_fu_870_opcode;
assign grp_fu_712_p_ce = 1'b1;
assign grp_fu_712_p_din0 = grp_fu_874_p0;
assign grp_fu_712_p_din1 = grp_fu_874_p1;
assign grp_fu_712_p_opcode = grp_fu_874_opcode;
assign grp_fu_716_p_ce = 1'b1;
assign grp_fu_716_p_din0 = grp_fu_878_p0;
assign grp_fu_716_p_din1 = grp_fu_878_p1;
assign grp_fu_716_p_opcode = grp_fu_878_opcode;
assign grp_fu_720_p_ce = 1'b1;
assign grp_fu_720_p_din0 = grp_fu_882_p0;
assign grp_fu_720_p_din1 = grp_fu_882_p1;
assign grp_fu_720_p_opcode = grp_fu_882_opcode;
assign grp_fu_724_p_ce = 1'b1;
assign grp_fu_724_p_din0 = grp_fu_886_p0;
assign grp_fu_724_p_din1 = grp_fu_886_p1;
assign grp_fu_724_p_opcode = grp_fu_886_opcode;
assign grp_fu_728_p_ce = 1'b1;
assign grp_fu_728_p_din0 = grp_fu_890_p0;
assign grp_fu_728_p_din1 = grp_fu_890_p1;
assign grp_fu_728_p_opcode = grp_fu_890_opcode;
assign grp_fu_732_p_ce = 1'b1;
assign grp_fu_732_p_din0 = grp_fu_906_p0;
assign grp_fu_732_p_din1 = grp_fu_906_p1;
assign grp_fu_736_p_ce = 1'b1;
assign grp_fu_736_p_din0 = grp_fu_911_p0;
assign grp_fu_736_p_din1 = grp_fu_911_p1;
assign grp_fu_740_p_ce = 1'b1;
assign grp_fu_740_p_din0 = grp_fu_916_p0;
assign grp_fu_740_p_din1 = grp_fu_916_p1;
assign grp_fu_769_p_ce = 1'b1;
assign grp_fu_769_p_din0 = grp_fu_894_p0;
assign grp_fu_769_p_din1 = grp_fu_894_p1;
assign grp_fu_769_p_opcode = grp_fu_894_opcode;
assign grp_fu_773_p_ce = 1'b1;
assign grp_fu_773_p_din0 = grp_fu_898_p0;
assign grp_fu_773_p_din1 = grp_fu_898_p1;
assign grp_fu_773_p_opcode = grp_fu_898_opcode;
assign grp_fu_777_p_ce = 1'b1;
assign grp_fu_777_p_din0 = grp_fu_902_p0;
assign grp_fu_777_p_din1 = grp_fu_902_p1;
assign grp_fu_777_p_opcode = grp_fu_902_opcode;
assign grp_fu_781_p_ce = 1'b1;
assign grp_fu_781_p_din0 = grp_fu_921_p0;
assign grp_fu_781_p_din1 = grp_fu_921_p1;
assign lshr_ln_fu_980_p4 = {{ap_sig_allocacmp_tid_5[5:1]}};
assign or_ln_fu_1906_p3 = {{lshr_ln_reg_2088_pp0_iter5_reg}, {1'd1}};
assign sext_ln392_fu_1785_p1 = zext_ln390_cast_reg_3209;
assign sext_ln395_1_fu_2025_p1 = zext_ln391_1_cast_reg_3261;
assign sext_ln395_fu_1798_p1 = zext_ln391_cast_reg_3225;
assign sext_ln396_1_fu_2047_p1 = $signed(add_ln396_fu_2042_p2);
assign sext_ln396_fu_1883_p1 = zext_ln390_cast_reg_3209;
assign tmp_s_fu_1927_p4 = {{tid_5_reg_2072_pp0_iter5_reg[6:1]}};
assign trunc_ln386_10_fu_1183_p1 = bitcast_ln386_20_fu_1166_p1[62:0];
assign trunc_ln386_11_fu_1217_p1 = bitcast_ln386_22_fu_1200_p1[62:0];
assign trunc_ln386_12_fu_1401_p1 = bitcast_ln386_24_fu_1384_p1[62:0];
assign trunc_ln386_13_fu_1435_p1 = bitcast_ln386_26_fu_1418_p1[62:0];
assign trunc_ln386_14_fu_1252_p1 = bitcast_ln386_28_fu_1234_p1[62:0];
assign trunc_ln386_15_fu_1288_p1 = bitcast_ln386_30_fu_1270_p1[62:0];
assign trunc_ln386_16_fu_1537_p1 = bitcast_ln386_32_fu_1520_p1[62:0];
assign trunc_ln386_17_fu_1571_p1 = bitcast_ln386_34_fu_1554_p1[62:0];
assign trunc_ln386_18_fu_1675_p1 = bitcast_ln386_36_fu_1658_p1[62:0];
assign trunc_ln386_19_fu_1709_p1 = bitcast_ln386_38_fu_1692_p1[62:0];
assign trunc_ln386_1_fu_1077_p1 = bitcast_ln386_2_fu_1060_p1[62:0];
assign trunc_ln386_2_fu_1333_p1 = bitcast_ln386_4_fu_1316_p1[62:0];
assign trunc_ln386_3_fu_1367_p1 = bitcast_ln386_6_fu_1350_p1[62:0];
assign trunc_ln386_4_fu_1112_p1 = bitcast_ln386_8_fu_1094_p1[62:0];
assign trunc_ln386_5_fu_1148_p1 = bitcast_ln386_10_fu_1130_p1[62:0];
assign trunc_ln386_6_fu_1469_p1 = bitcast_ln386_12_fu_1452_p1[62:0];
assign trunc_ln386_7_fu_1503_p1 = bitcast_ln386_14_fu_1486_p1[62:0];
assign trunc_ln386_8_fu_1606_p1 = bitcast_ln386_16_fu_1588_p1[62:0];
assign trunc_ln386_9_fu_1641_p1 = bitcast_ln386_18_fu_1623_p1[62:0];
assign trunc_ln386_fu_1043_p1 = bitcast_ln386_fu_1026_p1[62:0];
assign trunc_ln390_fu_1726_p1 = tid_5_reg_2072_pp0_iter4_reg[5:0];
assign work_x_address0 = work_x_address0_local;
assign work_x_address1 = work_x_address1_local;
assign work_x_ce0 = work_x_ce0_local;
assign work_x_ce1 = work_x_ce1_local;
assign work_x_d0 = work_x_d0_local;
assign work_x_d1 = work_x_d1_local;
assign work_x_we0 = work_x_we0_local;
assign work_x_we1 = work_x_we1_local;
assign work_y_address0 = work_y_address0_local;
assign work_y_address1 = work_y_address1_local;
assign work_y_ce0 = work_y_ce0_local;
assign work_y_ce1 = work_y_ce1_local;
assign work_y_d0 = work_y_d0_local;
assign work_y_d1 = work_y_d1_local;
assign work_y_we0 = work_y_we0_local;
assign work_y_we1 = work_y_we1_local;
assign xor_ln386_10_fu_1221_p3 = {{xor_ln386_29_fu_1211_p2}, {trunc_ln386_11_fu_1217_p1}};
assign xor_ln386_11_fu_1405_p3 = {{xor_ln386_30_fu_1395_p2}, {trunc_ln386_12_fu_1401_p1}};
assign xor_ln386_12_fu_1439_p3 = {{xor_ln386_31_fu_1429_p2}, {trunc_ln386_13_fu_1435_p1}};
assign xor_ln386_13_fu_1256_p3 = {{xor_ln386_32_fu_1246_p2}, {trunc_ln386_14_fu_1252_p1}};
assign xor_ln386_14_fu_1292_p3 = {{xor_ln386_33_fu_1282_p2}, {trunc_ln386_15_fu_1288_p1}};
assign xor_ln386_15_fu_1541_p3 = {{xor_ln386_34_fu_1531_p2}, {trunc_ln386_16_fu_1537_p1}};
assign xor_ln386_16_fu_1575_p3 = {{xor_ln386_35_fu_1565_p2}, {trunc_ln386_17_fu_1571_p1}};
assign xor_ln386_17_fu_1679_p3 = {{xor_ln386_36_fu_1669_p2}, {trunc_ln386_18_fu_1675_p1}};
assign xor_ln386_18_fu_1713_p3 = {{xor_ln386_37_fu_1703_p2}, {trunc_ln386_19_fu_1709_p1}};
assign xor_ln386_19_fu_1037_p2 = (bit_sel_fu_1029_p3 ^ 1'd1);
assign xor_ln386_1_fu_1081_p3 = {{xor_ln386_fu_1071_p2}, {trunc_ln386_1_fu_1077_p1}};
assign xor_ln386_20_fu_1327_p2 = (bit_sel41_fu_1319_p3 ^ 1'd1);
assign xor_ln386_21_fu_1361_p2 = (bit_sel42_fu_1353_p3 ^ 1'd1);
assign xor_ln386_22_fu_1106_p2 = (bit_sel43_fu_1098_p3 ^ 1'd1);
assign xor_ln386_23_fu_1142_p2 = (bit_sel44_fu_1134_p3 ^ 1'd1);
assign xor_ln386_24_fu_1463_p2 = (bit_sel45_fu_1455_p3 ^ 1'd1);
assign xor_ln386_25_fu_1497_p2 = (bit_sel46_fu_1489_p3 ^ 1'd1);
assign xor_ln386_26_fu_1600_p2 = (bit_sel47_fu_1592_p3 ^ 1'd1);
assign xor_ln386_27_fu_1635_p2 = (bit_sel48_fu_1627_p3 ^ 1'd1);
assign xor_ln386_28_fu_1177_p2 = (bit_sel49_fu_1169_p3 ^ 1'd1);
assign xor_ln386_29_fu_1211_p2 = (bit_sel50_fu_1203_p3 ^ 1'd1);
assign xor_ln386_2_fu_1337_p3 = {{xor_ln386_20_fu_1327_p2}, {trunc_ln386_2_fu_1333_p1}};
assign xor_ln386_30_fu_1395_p2 = (bit_sel51_fu_1387_p3 ^ 1'd1);
assign xor_ln386_31_fu_1429_p2 = (bit_sel52_fu_1421_p3 ^ 1'd1);
assign xor_ln386_32_fu_1246_p2 = (bit_sel53_fu_1238_p3 ^ 1'd1);
assign xor_ln386_33_fu_1282_p2 = (bit_sel54_fu_1274_p3 ^ 1'd1);
assign xor_ln386_34_fu_1531_p2 = (bit_sel55_fu_1523_p3 ^ 1'd1);
assign xor_ln386_35_fu_1565_p2 = (bit_sel56_fu_1557_p3 ^ 1'd1);
assign xor_ln386_36_fu_1669_p2 = (bit_sel57_fu_1661_p3 ^ 1'd1);
assign xor_ln386_37_fu_1703_p2 = (bit_sel58_fu_1695_p3 ^ 1'd1);
assign xor_ln386_3_fu_1371_p3 = {{xor_ln386_21_fu_1361_p2}, {trunc_ln386_3_fu_1367_p1}};
assign xor_ln386_4_fu_1116_p3 = {{xor_ln386_22_fu_1106_p2}, {trunc_ln386_4_fu_1112_p1}};
assign xor_ln386_5_fu_1152_p3 = {{xor_ln386_23_fu_1142_p2}, {trunc_ln386_5_fu_1148_p1}};
assign xor_ln386_6_fu_1473_p3 = {{xor_ln386_24_fu_1463_p2}, {trunc_ln386_6_fu_1469_p1}};
assign xor_ln386_7_fu_1507_p3 = {{xor_ln386_25_fu_1497_p2}, {trunc_ln386_7_fu_1503_p1}};
assign xor_ln386_8_fu_1610_p3 = {{xor_ln386_26_fu_1600_p2}, {trunc_ln386_8_fu_1606_p1}};
assign xor_ln386_9_fu_1645_p3 = {{xor_ln386_27_fu_1635_p2}, {trunc_ln386_9_fu_1641_p1}};
assign xor_ln386_fu_1071_p2 = (bit_sel40_fu_1063_p3 ^ 1'd1);
assign xor_ln386_s_fu_1187_p3 = {{xor_ln386_28_fu_1177_p2}, {trunc_ln386_10_fu_1183_p1}};
assign xor_ln3_fu_1047_p3 = {{xor_ln386_19_fu_1037_p2}, {trunc_ln386_fu_1043_p1}};
assign zext_ln365_1_fu_1864_p1 = tid_5_reg_2072_pp0_iter5_reg;
assign zext_ln365_2_fu_1819_p1 = tid_5_reg_2072_pp0_iter5_reg;
assign zext_ln365_fu_1751_p1 = tid_5_reg_2072_pp0_iter4_reg;
assign zext_ln367_1_fu_1913_p1 = or_ln_fu_1906_p3;
assign zext_ln367_fu_990_p1 = lshr_ln_fu_980_p4;
assign zext_ln390_1_fu_1850_p1 = add_ln390_fu_1844_p2;
assign zext_ln390_cast_fu_1729_p3 = {{1'd1}, {trunc_ln390_fu_1726_p1}};
assign zext_ln390_fu_1737_p1 = $unsigned(zext_ln390_cast_fu_1729_p3);
assign zext_ln391_1_cast_fu_1936_p4 = {{{{1'd1}, {tmp_s_fu_1927_p4}}}, {1'd1}};
assign zext_ln391_1_fu_1946_p1 = $unsigned(zext_ln391_1_cast_fu_1936_p4);
assign zext_ln391_cast_fu_1760_p3 = {{1'd1}, {tid_5_reg_2072_pp0_iter4_reg}};
assign zext_ln391_fu_1767_p1 = $unsigned(zext_ln391_cast_fu_1760_p3);
assign zext_ln392_1_fu_1965_p1 = add_ln392_fu_1960_p2;
assign zext_ln392_fu_1788_p1 = $unsigned(sext_ln392_fu_1785_p1);
assign zext_ln393_1_cast_fu_1982_p4 = {{{{1'd1}, {zext_ln393_1_fu_1979_p1}}}, {1'd1}};
assign zext_ln393_1_fu_1979_p1 = tmp_s_reg_3256;
assign zext_ln393_2_fu_1992_p1 = zext_ln393_1_cast_fu_1982_p4;
assign zext_ln393_cast_fu_1822_p3 = {{1'd1}, {zext_ln365_2_fu_1819_p1}};
assign zext_ln393_fu_1830_p1 = zext_ln393_cast_fu_1822_p3;
assign zext_ln394_1_fu_2011_p1 = add_ln394_1_fu_2006_p2;
assign zext_ln394_fu_1873_p1 = add_ln394_fu_1867_p2;
assign zext_ln395_1_fu_2028_p1 = $unsigned(sext_ln395_1_fu_2025_p1);
assign zext_ln395_fu_1801_p1 = $unsigned(sext_ln395_fu_1798_p1);
assign zext_ln396_1_fu_2051_p1 = $unsigned(sext_ln396_1_fu_2047_p1);
assign zext_ln396_fu_1886_p1 = $unsigned(sext_ln396_fu_1883_p1);
always @ (posedge ap_clk) begin
    zext_ln390_cast_reg_3209[6] <= 1'b1;
    zext_ln391_cast_reg_3225[7] <= 1'b1;
    zext_ln365_1_reg_3250[8:7] <= 2'b00;
    zext_ln391_1_cast_reg_3261[0] <= 1'b1;
    zext_ln391_1_cast_reg_3261[7] <= 1'b1;
end
endmodule 