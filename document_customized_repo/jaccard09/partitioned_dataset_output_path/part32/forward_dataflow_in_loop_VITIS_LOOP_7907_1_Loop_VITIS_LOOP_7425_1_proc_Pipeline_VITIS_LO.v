
module forward_dataflow_in_loop_VITIS_LOOP_7907_1_Loop_VITIS_LOOP_7425_1_proc_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i64_cast_i,tmp,v5280_7_address0,v5280_7_ce0,v5280_7_q0,v5280_5_address0,v5280_5_ce0,v5280_5_q0,v5280_3_address0,v5280_3_ce0,v5280_3_q0,v5280_1_address0,v5280_1_ce0,v5280_1_q0,v5280_6_address0,v5280_6_ce0,v5280_6_q0,v5280_4_address0,v5280_4_ce0,v5280_4_q0,v5280_2_address0,v5280_2_ce0,v5280_2_q0,v5280_address0,v5280_ce0,v5280_q0,v5282_address0,v5282_ce0,v5282_we0,v5282_d0,v5282_address1,v5282_ce1,v5282_q1,v5282_1_address0,v5282_1_ce0,v5282_1_we0,v5282_1_d0,v5282_1_address1,v5282_1_ce1,v5282_1_q1,v5282_2_address0,v5282_2_ce0,v5282_2_we0,v5282_2_d0,v5282_2_address1,v5282_2_ce1,v5282_2_q1,v5282_3_address0,v5282_3_ce0,v5282_3_we0,v5282_3_d0,v5282_3_address1,v5282_3_ce1,v5282_3_q1,v5282_4_address0,v5282_4_ce0,v5282_4_we0,v5282_4_d0,v5282_4_address1,v5282_4_ce1,v5282_4_q1,v5282_5_address0,v5282_5_ce0,v5282_5_we0,v5282_5_d0,v5282_5_address1,v5282_5_ce1,v5282_5_q1,v5282_6_address0,v5282_6_ce0,v5282_6_we0,v5282_6_d0,v5282_6_address1,v5282_6_ce1,v5282_6_q1,v5282_7_address0,v5282_7_ce0,v5282_7_we0,v5282_7_d0,v5282_7_address1,v5282_7_ce1,v5282_7_q1,v5282_8_address0,v5282_8_ce0,v5282_8_we0,v5282_8_d0,v5282_8_address1,v5282_8_ce1,v5282_8_q1,v5282_9_address0,v5282_9_ce0,v5282_9_we0,v5282_9_d0,v5282_9_address1,v5282_9_ce1,v5282_9_q1,v5282_10_address0,v5282_10_ce0,v5282_10_we0,v5282_10_d0,v5282_10_address1,v5282_10_ce1,v5282_10_q1,v5282_11_address0,v5282_11_ce0,v5282_11_we0,v5282_11_d0,v5282_11_address1,v5282_11_ce1,v5282_11_q1,v5282_12_address0,v5282_12_ce0,v5282_12_we0,v5282_12_d0,v5282_12_address1,v5282_12_ce1,v5282_12_q1,v5282_13_address0,v5282_13_ce0,v5282_13_we0,v5282_13_d0,v5282_13_address1,v5282_13_ce1,v5282_13_q1,v5282_14_address0,v5282_14_ce0,v5282_14_we0,v5282_14_d0,v5282_14_address1,v5282_14_ce1,v5282_14_q1,v5282_15_address0,v5282_15_ce0,v5282_15_we0,v5282_15_d0,v5282_15_address1,v5282_15_ce1,v5282_15_q1,v5281_7_address0,v5281_7_ce0,v5281_7_q0,v5279_15_address0,v5279_15_ce0,v5279_15_q0,v5281_6_address0,v5281_6_ce0,v5281_6_q0,v5279_14_address0,v5279_14_ce0,v5279_14_q0,v5281_5_address0,v5281_5_ce0,v5281_5_q0,v5279_13_address0,v5279_13_ce0,v5279_13_q0,v5281_4_address0,v5281_4_ce0,v5281_4_q0,v5279_12_address0,v5279_12_ce0,v5279_12_q0,v5279_11_address0,v5279_11_ce0,v5279_11_q0,v5279_10_address0,v5279_10_ce0,v5279_10_q0,v5279_9_address0,v5279_9_ce0,v5279_9_q0,v5279_8_address0,v5279_8_ce0,v5279_8_q0,v5279_7_address0,v5279_7_ce0,v5279_7_q0,v5279_6_address0,v5279_6_ce0,v5279_6_q0,v5279_5_address0,v5279_5_ce0,v5279_5_q0,v5279_4_address0,v5279_4_ce0,v5279_4_q0,v5279_3_address0,v5279_3_ce0,v5279_3_q0,v5279_2_address0,v5279_2_ce0,v5279_2_q0,v5279_1_address0,v5279_1_ce0,v5279_1_q0,v5279_address0,v5279_ce0,v5279_q0,v5281_3_address0,v5281_3_ce0,v5281_3_q0,v5281_2_address0,v5281_2_ce0,v5281_2_q0,v5281_1_address0,v5281_1_ce0,v5281_1_q0,v5281_address0,v5281_ce0,v5281_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] mul_i64_cast_i;
input  [0:0] tmp;
output  [6:0] v5280_7_address0;
output   v5280_7_ce0;
input  [7:0] v5280_7_q0;
output  [6:0] v5280_5_address0;
output   v5280_5_ce0;
input  [7:0] v5280_5_q0;
output  [6:0] v5280_3_address0;
output   v5280_3_ce0;
input  [7:0] v5280_3_q0;
output  [6:0] v5280_1_address0;
output   v5280_1_ce0;
input  [7:0] v5280_1_q0;
output  [6:0] v5280_6_address0;
output   v5280_6_ce0;
input  [7:0] v5280_6_q0;
output  [6:0] v5280_4_address0;
output   v5280_4_ce0;
input  [7:0] v5280_4_q0;
output  [6:0] v5280_2_address0;
output   v5280_2_ce0;
input  [7:0] v5280_2_q0;
output  [6:0] v5280_address0;
output   v5280_ce0;
input  [7:0] v5280_q0;
output  [8:0] v5282_address0;
output   v5282_ce0;
output   v5282_we0;
output  [7:0] v5282_d0;
output  [8:0] v5282_address1;
output   v5282_ce1;
input  [7:0] v5282_q1;
output  [8:0] v5282_1_address0;
output   v5282_1_ce0;
output   v5282_1_we0;
output  [7:0] v5282_1_d0;
output  [8:0] v5282_1_address1;
output   v5282_1_ce1;
input  [7:0] v5282_1_q1;
output  [8:0] v5282_2_address0;
output   v5282_2_ce0;
output   v5282_2_we0;
output  [7:0] v5282_2_d0;
output  [8:0] v5282_2_address1;
output   v5282_2_ce1;
input  [7:0] v5282_2_q1;
output  [8:0] v5282_3_address0;
output   v5282_3_ce0;
output   v5282_3_we0;
output  [7:0] v5282_3_d0;
output  [8:0] v5282_3_address1;
output   v5282_3_ce1;
input  [7:0] v5282_3_q1;
output  [8:0] v5282_4_address0;
output   v5282_4_ce0;
output   v5282_4_we0;
output  [7:0] v5282_4_d0;
output  [8:0] v5282_4_address1;
output   v5282_4_ce1;
input  [7:0] v5282_4_q1;
output  [8:0] v5282_5_address0;
output   v5282_5_ce0;
output   v5282_5_we0;
output  [7:0] v5282_5_d0;
output  [8:0] v5282_5_address1;
output   v5282_5_ce1;
input  [7:0] v5282_5_q1;
output  [8:0] v5282_6_address0;
output   v5282_6_ce0;
output   v5282_6_we0;
output  [7:0] v5282_6_d0;
output  [8:0] v5282_6_address1;
output   v5282_6_ce1;
input  [7:0] v5282_6_q1;
output  [8:0] v5282_7_address0;
output   v5282_7_ce0;
output   v5282_7_we0;
output  [7:0] v5282_7_d0;
output  [8:0] v5282_7_address1;
output   v5282_7_ce1;
input  [7:0] v5282_7_q1;
output  [8:0] v5282_8_address0;
output   v5282_8_ce0;
output   v5282_8_we0;
output  [7:0] v5282_8_d0;
output  [8:0] v5282_8_address1;
output   v5282_8_ce1;
input  [7:0] v5282_8_q1;
output  [8:0] v5282_9_address0;
output   v5282_9_ce0;
output   v5282_9_we0;
output  [7:0] v5282_9_d0;
output  [8:0] v5282_9_address1;
output   v5282_9_ce1;
input  [7:0] v5282_9_q1;
output  [8:0] v5282_10_address0;
output   v5282_10_ce0;
output   v5282_10_we0;
output  [7:0] v5282_10_d0;
output  [8:0] v5282_10_address1;
output   v5282_10_ce1;
input  [7:0] v5282_10_q1;
output  [8:0] v5282_11_address0;
output   v5282_11_ce0;
output   v5282_11_we0;
output  [7:0] v5282_11_d0;
output  [8:0] v5282_11_address1;
output   v5282_11_ce1;
input  [7:0] v5282_11_q1;
output  [8:0] v5282_12_address0;
output   v5282_12_ce0;
output   v5282_12_we0;
output  [7:0] v5282_12_d0;
output  [8:0] v5282_12_address1;
output   v5282_12_ce1;
input  [7:0] v5282_12_q1;
output  [8:0] v5282_13_address0;
output   v5282_13_ce0;
output   v5282_13_we0;
output  [7:0] v5282_13_d0;
output  [8:0] v5282_13_address1;
output   v5282_13_ce1;
input  [7:0] v5282_13_q1;
output  [8:0] v5282_14_address0;
output   v5282_14_ce0;
output   v5282_14_we0;
output  [7:0] v5282_14_d0;
output  [8:0] v5282_14_address1;
output   v5282_14_ce1;
input  [7:0] v5282_14_q1;
output  [8:0] v5282_15_address0;
output   v5282_15_ce0;
output   v5282_15_we0;
output  [7:0] v5282_15_d0;
output  [8:0] v5282_15_address1;
output   v5282_15_ce1;
input  [7:0] v5282_15_q1;
output  [9:0] v5281_7_address0;
output   v5281_7_ce0;
input  [7:0] v5281_7_q0;
output  [8:0] v5279_15_address0;
output   v5279_15_ce0;
input  [7:0] v5279_15_q0;
output  [9:0] v5281_6_address0;
output   v5281_6_ce0;
input  [7:0] v5281_6_q0;
output  [8:0] v5279_14_address0;
output   v5279_14_ce0;
input  [7:0] v5279_14_q0;
output  [9:0] v5281_5_address0;
output   v5281_5_ce0;
input  [7:0] v5281_5_q0;
output  [8:0] v5279_13_address0;
output   v5279_13_ce0;
input  [7:0] v5279_13_q0;
output  [9:0] v5281_4_address0;
output   v5281_4_ce0;
input  [7:0] v5281_4_q0;
output  [8:0] v5279_12_address0;
output   v5279_12_ce0;
input  [7:0] v5279_12_q0;
output  [8:0] v5279_11_address0;
output   v5279_11_ce0;
input  [7:0] v5279_11_q0;
output  [8:0] v5279_10_address0;
output   v5279_10_ce0;
input  [7:0] v5279_10_q0;
output  [8:0] v5279_9_address0;
output   v5279_9_ce0;
input  [7:0] v5279_9_q0;
output  [8:0] v5279_8_address0;
output   v5279_8_ce0;
input  [7:0] v5279_8_q0;
output  [8:0] v5279_7_address0;
output   v5279_7_ce0;
input  [7:0] v5279_7_q0;
output  [8:0] v5279_6_address0;
output   v5279_6_ce0;
input  [7:0] v5279_6_q0;
output  [8:0] v5279_5_address0;
output   v5279_5_ce0;
input  [7:0] v5279_5_q0;
output  [8:0] v5279_4_address0;
output   v5279_4_ce0;
input  [7:0] v5279_4_q0;
output  [8:0] v5279_3_address0;
output   v5279_3_ce0;
input  [7:0] v5279_3_q0;
output  [8:0] v5279_2_address0;
output   v5279_2_ce0;
input  [7:0] v5279_2_q0;
output  [8:0] v5279_1_address0;
output   v5279_1_ce0;
input  [7:0] v5279_1_q0;
output  [8:0] v5279_address0;
output   v5279_ce0;
input  [7:0] v5279_q0;
output  [9:0] v5281_3_address0;
output   v5281_3_ce0;
input  [7:0] v5281_3_q0;
output  [9:0] v5281_2_address0;
output   v5281_2_ce0;
input  [7:0] v5281_2_q0;
output  [9:0] v5281_1_address0;
output   v5281_1_ce0;
input  [7:0] v5281_1_q0;
output  [9:0] v5281_address0;
output   v5281_ce0;
input  [7:0] v5281_q0;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln7425_fu_1032_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln7427294_reg_922;
reg   [0:0] icmp_ln7428293_reg_933;
reg   [0:0] icmp_ln7429292_reg_944;
wire    ap_block_pp0_stage0_11001;
wire  signed [8:0] mul_i64_cast_i_cast_fu_955_p1;
reg  signed [8:0] mul_i64_cast_i_cast_reg_2277;
wire   [0:0] xor_ln7425_fu_1000_p2;
reg   [0:0] xor_ln7425_reg_2282;
wire   [0:0] icmp_ln7427_fu_1026_p2;
reg   [0:0] icmp_ln7427_reg_2288;
reg   [0:0] icmp_ln7425_reg_2293;
reg   [0:0] icmp_ln7425_reg_2293_pp0_iter1_reg;
wire   [4:0] lshr_ln_fu_1175_p4;
reg   [4:0] lshr_ln_reg_2297;
wire   [0:0] cmp33_i_i_fu_1203_p2;
reg   [0:0] cmp33_i_i_reg_2302;
reg   [0:0] cmp33_i_i_reg_2302_pp0_iter2_reg;
reg   [0:0] cmp33_i_i_reg_2302_pp0_iter3_reg;
reg   [0:0] cmp33_i_i_reg_2302_pp0_iter4_reg;
reg   [0:0] cmp33_i_i_reg_2302_pp0_iter5_reg;
wire   [0:0] brmerge203_i_fu_1238_p2;
reg   [0:0] brmerge203_i_reg_2322;
reg   [0:0] brmerge203_i_reg_2322_pp0_iter2_reg;
reg   [0:0] brmerge203_i_reg_2322_pp0_iter3_reg;
reg   [0:0] brmerge203_i_reg_2322_pp0_iter4_reg;
reg   [0:0] brmerge203_i_reg_2322_pp0_iter5_reg;
reg   [2:0] lshr_ln29_reg_2342;
reg   [2:0] lshr_ln29_reg_2342_pp0_iter2_reg;
reg   [2:0] lshr_ln29_reg_2342_pp0_iter3_reg;
wire   [2:0] lshr_ln30_fu_1253_p4;
reg   [2:0] lshr_ln30_reg_2349;
reg   [2:0] lshr_ln30_reg_2349_pp0_iter2_reg;
reg   [2:0] lshr_ln30_reg_2349_pp0_iter3_reg;
wire   [7:0] add_ln7431_fu_1267_p2;
reg   [7:0] add_ln7431_reg_2354;
wire   [6:0] trunc_ln7431_fu_1273_p1;
reg   [6:0] trunc_ln7431_reg_2359;
reg   [2:0] lshr_ln31_reg_2364;
reg   [2:0] lshr_ln31_reg_2364_pp0_iter2_reg;
reg   [2:0] lshr_ln31_reg_2364_pp0_iter3_reg;
reg   [2:0] lshr_ln31_reg_2364_pp0_iter4_reg;
wire   [0:0] icmp_ln7429_fu_1307_p2;
reg   [0:0] icmp_ln7429_reg_2370;
wire   [0:0] icmp_ln7428_fu_1313_p2;
reg   [0:0] icmp_ln7428_reg_2375;
wire   [63:0] p_cast_fu_1360_p1;
reg   [63:0] p_cast_reg_2380;
wire   [63:0] zext_ln7431_3_fu_1393_p1;
reg   [63:0] zext_ln7431_3_reg_2408;
reg  signed [7:0] v4920_reg_2540;
reg  signed [7:0] v4956_reg_2548;
reg  signed [7:0] v4989_reg_2556;
reg  signed [7:0] v5022_reg_2564;
wire   [5:0] add_ln7560_fu_1420_p2;
reg   [5:0] add_ln7560_reg_2572;
reg  signed [7:0] v4919_reg_2578;
reg  signed [7:0] v4929_reg_2586;
reg  signed [7:0] v4938_reg_2594;
reg  signed [7:0] v4947_reg_2602;
reg   [8:0] v5282_addr_reg_2610;
reg   [8:0] v5282_addr_reg_2610_pp0_iter6_reg;
reg   [8:0] v5282_1_addr_reg_2616;
reg   [8:0] v5282_1_addr_reg_2616_pp0_iter6_reg;
reg   [8:0] v5282_2_addr_reg_2622;
reg   [8:0] v5282_2_addr_reg_2622_pp0_iter6_reg;
reg   [8:0] v5282_3_addr_reg_2628;
reg   [8:0] v5282_3_addr_reg_2628_pp0_iter6_reg;
reg   [8:0] v5282_4_addr_reg_2634;
reg   [8:0] v5282_4_addr_reg_2634_pp0_iter6_reg;
reg   [8:0] v5282_5_addr_reg_2640;
reg   [8:0] v5282_5_addr_reg_2640_pp0_iter6_reg;
reg   [8:0] v5282_6_addr_reg_2646;
reg   [8:0] v5282_6_addr_reg_2646_pp0_iter6_reg;
reg   [8:0] v5282_7_addr_reg_2652;
reg   [8:0] v5282_7_addr_reg_2652_pp0_iter6_reg;
reg   [8:0] v5282_8_addr_reg_2658;
reg   [8:0] v5282_8_addr_reg_2658_pp0_iter6_reg;
reg   [8:0] v5282_9_addr_reg_2664;
reg   [8:0] v5282_9_addr_reg_2664_pp0_iter6_reg;
reg   [8:0] v5282_10_addr_reg_2670;
reg   [8:0] v5282_10_addr_reg_2670_pp0_iter6_reg;
reg   [8:0] v5282_11_addr_reg_2676;
reg   [8:0] v5282_11_addr_reg_2676_pp0_iter6_reg;
reg   [8:0] v5282_12_addr_reg_2682;
reg   [8:0] v5282_12_addr_reg_2682_pp0_iter6_reg;
reg   [8:0] v5282_13_addr_reg_2688;
reg   [8:0] v5282_13_addr_reg_2688_pp0_iter6_reg;
reg   [8:0] v5282_14_addr_reg_2694;
reg   [8:0] v5282_14_addr_reg_2694_pp0_iter6_reg;
reg   [8:0] v5282_15_addr_reg_2700;
reg   [8:0] v5282_15_addr_reg_2700_pp0_iter6_reg;
wire   [7:0] mul_ln7436_fu_1487_p2;
wire   [7:0] mul_ln7445_fu_1491_p2;
wire   [7:0] mul_ln7454_fu_1495_p2;
wire   [7:0] mul_ln7463_fu_1499_p2;
wire   [7:0] mul_ln7472_fu_1503_p2;
wire   [7:0] mul_ln7480_fu_1507_p2;
wire   [7:0] mul_ln7488_fu_1511_p2;
wire   [7:0] mul_ln7496_fu_1515_p2;
wire   [7:0] mul_ln7505_fu_1519_p2;
wire   [7:0] mul_ln7513_fu_1523_p2;
wire   [7:0] mul_ln7521_fu_1527_p2;
wire   [7:0] mul_ln7529_fu_1531_p2;
wire   [7:0] mul_ln7538_fu_1535_p2;
wire   [7:0] mul_ln7546_fu_1539_p2;
wire   [7:0] mul_ln7554_fu_1543_p2;
wire   [7:0] mul_ln7562_fu_1547_p2;
wire   [7:0] select_ln7579_fu_1682_p3;
reg   [7:0] select_ln7579_reg_2866;
wire   [7:0] select_ln7590_fu_1708_p3;
reg   [7:0] select_ln7590_reg_2871;
wire   [7:0] select_ln7601_fu_1734_p3;
reg   [7:0] select_ln7601_reg_2876;
wire   [7:0] select_ln7612_fu_1760_p3;
reg   [7:0] select_ln7612_reg_2881;
wire   [7:0] select_ln7623_fu_1786_p3;
reg   [7:0] select_ln7623_reg_2886;
wire   [7:0] select_ln7633_fu_1812_p3;
reg   [7:0] select_ln7633_reg_2891;
wire   [7:0] select_ln7643_fu_1838_p3;
reg   [7:0] select_ln7643_reg_2896;
wire   [7:0] select_ln7653_fu_1864_p3;
reg   [7:0] select_ln7653_reg_2901;
wire   [7:0] select_ln7664_fu_1890_p3;
reg   [7:0] select_ln7664_reg_2906;
wire   [7:0] select_ln7674_fu_1916_p3;
reg   [7:0] select_ln7674_reg_2911;
wire   [7:0] select_ln7684_fu_1942_p3;
reg   [7:0] select_ln7684_reg_2916;
wire   [7:0] select_ln7694_fu_1968_p3;
reg   [7:0] select_ln7694_reg_2921;
wire   [7:0] select_ln7705_fu_1994_p3;
reg   [7:0] select_ln7705_reg_2926;
wire   [7:0] select_ln7715_fu_2020_p3;
reg   [7:0] select_ln7715_reg_2931;
wire   [7:0] select_ln7725_fu_2046_p3;
reg   [7:0] select_ln7725_reg_2936;
wire   [7:0] select_ln7735_fu_2072_p3;
reg   [7:0] select_ln7735_reg_2941;
reg   [0:0] ap_phi_mux_icmp_ln7427294_phi_fu_925_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln7428293_phi_fu_937_p4;
reg   [0:0] ap_phi_mux_icmp_ln7429292_phi_fu_948_p4;
wire   [63:0] zext_ln7560_6_fu_1451_p1;
reg   [12:0] indvar_flatten35285_fu_194;
wire   [12:0] add_ln7425_1_fu_1020_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten35285_load;
reg   [5:0] v4915286_fu_198;
wire   [5:0] v4915_fu_1087_p3;
reg   [9:0] indvar_flatten12287_fu_202;
wire   [9:0] select_ln7427_1_fu_1012_p3;
reg   [9:0] ap_sig_allocacmp_indvar_flatten12287_load;
reg   [5:0] v4916288_fu_206;
wire   [5:0] v4916_fu_1133_p3;
reg   [5:0] indvar_flatten289_fu_210;
wire   [5:0] select_ln7428_1_fu_1299_p3;
reg   [3:0] v4917290_fu_214;
wire   [3:0] v4917_fu_1167_p3;
reg   [3:0] v4918291_fu_218;
wire   [3:0] v4918_fu_1287_p2;
reg    v5280_6_ce0_local;
reg    v5280_4_ce0_local;
reg    v5280_2_ce0_local;
reg    v5280_ce0_local;
reg    v5281_3_ce0_local;
reg    v5281_2_ce0_local;
reg    v5281_1_ce0_local;
reg    v5281_ce0_local;
reg    v5280_7_ce0_local;
reg    v5280_5_ce0_local;
reg    v5280_3_ce0_local;
reg    v5280_1_ce0_local;
reg    v5281_7_ce0_local;
reg    v5281_6_ce0_local;
reg    v5281_5_ce0_local;
reg    v5281_4_ce0_local;
reg    v5279_15_ce0_local;
reg    v5282_15_ce1_local;
reg    v5282_15_we0_local;
reg    v5282_15_ce0_local;
reg    v5279_14_ce0_local;
reg    v5282_14_ce1_local;
reg    v5282_14_we0_local;
reg    v5282_14_ce0_local;
reg    v5279_13_ce0_local;
reg    v5282_13_ce1_local;
reg    v5282_13_we0_local;
reg    v5282_13_ce0_local;
reg    v5279_12_ce0_local;
reg    v5282_12_ce1_local;
reg    v5282_12_we0_local;
reg    v5282_12_ce0_local;
reg    v5279_11_ce0_local;
reg    v5282_11_ce1_local;
reg    v5282_11_we0_local;
reg    v5282_11_ce0_local;
reg    v5279_10_ce0_local;
reg    v5282_10_ce1_local;
reg    v5282_10_we0_local;
reg    v5282_10_ce0_local;
reg    v5279_9_ce0_local;
reg    v5282_9_ce1_local;
reg    v5282_9_we0_local;
reg    v5282_9_ce0_local;
reg    v5279_8_ce0_local;
reg    v5282_8_ce1_local;
reg    v5282_8_we0_local;
reg    v5282_8_ce0_local;
reg    v5279_7_ce0_local;
reg    v5282_7_ce1_local;
reg    v5282_7_we0_local;
reg    v5282_7_ce0_local;
reg    v5279_6_ce0_local;
reg    v5282_6_ce1_local;
reg    v5282_6_we0_local;
reg    v5282_6_ce0_local;
reg    v5279_5_ce0_local;
reg    v5282_5_ce1_local;
reg    v5282_5_we0_local;
reg    v5282_5_ce0_local;
reg    v5279_4_ce0_local;
reg    v5282_4_ce1_local;
reg    v5282_4_we0_local;
reg    v5282_4_ce0_local;
reg    v5279_3_ce0_local;
reg    v5282_3_ce1_local;
reg    v5282_3_we0_local;
reg    v5282_3_ce0_local;
reg    v5279_2_ce0_local;
reg    v5282_2_ce1_local;
reg    v5282_2_we0_local;
reg    v5282_2_ce0_local;
reg    v5279_1_ce0_local;
reg    v5282_1_ce1_local;
reg    v5282_1_we0_local;
reg    v5282_1_ce0_local;
reg    v5279_ce0_local;
reg    v5282_ce1_local;
reg    v5282_we0_local;
reg    v5282_ce0_local;
wire   [9:0] add_ln7427_1_fu_1006_p2;
wire   [5:0] add_ln7425_fu_1063_p2;
wire   [5:0] select_ln7425_fu_1069_p3;
wire   [0:0] and_ln7425_1_fu_1082_p2;
wire   [0:0] empty_fu_1101_p2;
wire   [0:0] exitcond_flatten_not_fu_1115_p2;
wire   [0:0] and_ln7425_fu_1077_p2;
wire   [0:0] not_exitcond_flatten_mid234_fu_1121_p2;
wire   [5:0] add_ln7427_fu_1095_p2;
wire   [3:0] v4917_mid26_fu_1107_p3;
wire   [0:0] icmp_ln7429_mid211_fu_1127_p2;
wire   [0:0] empty_215_fu_1147_p2;
wire   [0:0] empty_216_fu_1153_p2;
wire   [3:0] add_ln7428_fu_1141_p2;
wire   [7:0] p_shl24_fu_1189_p3;
wire   [7:0] zext_ln7431_1_fu_1185_p1;
wire   [4:0] empty_217_fu_1209_p1;
wire   [5:0] v4915_cast12_cast_i_fu_1213_p1;
wire   [5:0] empty_218_fu_1217_p2;
wire  signed [8:0] p_cast13_i_fu_1223_p1;
wire   [8:0] empty_219_fu_1227_p2;
wire   [0:0] cmp472_i_not_i_fu_1232_p2;
wire   [7:0] sub_ln7431_fu_1197_p2;
wire   [7:0] zext_ln7560_1_fu_1263_p1;
wire   [3:0] v4918_mid2_fu_1159_p3;
wire   [5:0] add_ln7428_1_fu_1293_p2;
wire   [6:0] tmp_s_fu_1347_p3;
wire   [6:0] zext_ln7431_fu_1344_p1;
wire   [6:0] empty_220_fu_1354_p2;
wire   [9:0] tmp_118_fu_1368_p3;
wire   [9:0] zext_ln7431_2_fu_1375_p1;
wire   [9:0] sub_ln7430_fu_1378_p2;
wire   [9:0] zext_ln7560_4_fu_1384_p1;
wire   [9:0] add_ln7431_1_fu_1387_p2;
wire   [5:0] p_shl23_fu_1404_p3;
wire   [5:0] zext_ln7560_fu_1401_p1;
wire   [5:0] sub_ln7560_fu_1411_p2;
wire   [5:0] zext_ln7560_2_fu_1417_p1;
wire   [8:0] p_shl22_fu_1429_p3;
wire   [8:0] zext_ln7560_3_fu_1426_p1;
wire   [8:0] sub_ln7560_1_fu_1436_p2;
wire   [8:0] zext_ln7560_5_fu_1442_p1;
wire   [8:0] add_ln7560_1_fu_1445_p2;
wire  signed [7:0] v5063_fu_1663_p0;
wire   [7:0] grp_fu_2079_p3;
wire   [7:0] v4923_fu_1551_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5063_fu_1663_p2;
wire   [0:0] v5064_fu_1668_p2;
wire   [7:0] v5065_1_fu_1674_p3;
wire  signed [7:0] v5073_fu_1689_p0;
wire   [7:0] grp_fu_2088_p3;
wire   [7:0] v4932_fu_1558_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5073_fu_1689_p2;
wire   [0:0] v5074_fu_1694_p2;
wire   [7:0] v5075_1_fu_1700_p3;
wire  signed [7:0] v5083_fu_1715_p0;
wire   [7:0] grp_fu_2097_p3;
wire   [7:0] v4941_fu_1565_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5083_fu_1715_p2;
wire   [0:0] v5084_fu_1720_p2;
wire   [7:0] v5085_1_fu_1726_p3;
wire  signed [7:0] v5093_fu_1741_p0;
wire   [7:0] grp_fu_2106_p3;
wire   [7:0] v4950_fu_1572_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5093_fu_1741_p2;
wire   [0:0] v5094_fu_1746_p2;
wire   [7:0] v5095_1_fu_1752_p3;
wire  signed [7:0] v5103_fu_1767_p0;
wire   [7:0] grp_fu_2115_p3;
wire   [7:0] v4959_fu_1579_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5103_fu_1767_p2;
wire   [0:0] v5104_fu_1772_p2;
wire   [7:0] v5105_1_fu_1778_p3;
wire  signed [7:0] v5112_fu_1793_p0;
wire   [7:0] grp_fu_2124_p3;
wire   [7:0] v4967_fu_1586_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5112_fu_1793_p2;
wire   [0:0] v5113_fu_1798_p2;
wire   [7:0] v5114_1_fu_1804_p3;
wire  signed [7:0] v5121_fu_1819_p0;
wire   [7:0] grp_fu_2133_p3;
wire   [7:0] v4975_fu_1593_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5121_fu_1819_p2;
wire   [0:0] v5122_fu_1824_p2;
wire   [7:0] v5123_1_fu_1830_p3;
wire  signed [7:0] v5130_fu_1845_p0;
wire   [7:0] grp_fu_2142_p3;
wire   [7:0] v4983_fu_1600_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5130_fu_1845_p2;
wire   [0:0] v5131_fu_1850_p2;
wire   [7:0] v5132_1_fu_1856_p3;
wire  signed [7:0] v5140_fu_1871_p0;
wire   [7:0] grp_fu_2151_p3;
wire   [7:0] v4992_fu_1607_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5140_fu_1871_p2;
wire   [0:0] v5141_fu_1876_p2;
wire   [7:0] v5142_1_fu_1882_p3;
wire  signed [7:0] v5149_fu_1897_p0;
wire   [7:0] grp_fu_2160_p3;
wire   [7:0] v5000_fu_1614_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5149_fu_1897_p2;
wire   [0:0] v5150_fu_1902_p2;
wire   [7:0] v5151_1_fu_1908_p3;
wire  signed [7:0] v5158_fu_1923_p0;
wire   [7:0] grp_fu_2169_p3;
wire   [7:0] v5008_fu_1621_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5158_fu_1923_p2;
wire   [0:0] v5159_fu_1928_p2;
wire   [7:0] v5160_1_fu_1934_p3;
wire  signed [7:0] v5167_fu_1949_p0;
wire   [7:0] grp_fu_2178_p3;
wire   [7:0] v5016_fu_1628_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5167_fu_1949_p2;
wire   [0:0] v5168_fu_1954_p2;
wire   [7:0] v5169_1_fu_1960_p3;
wire  signed [7:0] v5177_fu_1975_p0;
wire   [7:0] grp_fu_2187_p3;
wire   [7:0] v5025_fu_1635_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5177_fu_1975_p2;
wire   [0:0] v5178_fu_1980_p2;
wire   [7:0] v5179_1_fu_1986_p3;
wire  signed [7:0] v5186_fu_2001_p0;
wire   [7:0] grp_fu_2196_p3;
wire   [7:0] v5033_fu_1642_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5186_fu_2001_p2;
wire   [0:0] v5187_fu_2006_p2;
wire   [7:0] v5188_1_fu_2012_p3;
wire  signed [7:0] v5195_fu_2027_p0;
wire   [7:0] grp_fu_2205_p3;
wire   [7:0] v5041_fu_1649_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5195_fu_2027_p2;
wire   [0:0] v5196_fu_2032_p2;
wire   [7:0] v5197_1_fu_2038_p3;
wire  signed [7:0] v5204_fu_2053_p0;
wire   [7:0] grp_fu_2214_p3;
wire   [7:0] v5049_fu_1656_p3;
(* use_dsp48 = "no" *) wire   [7:0] v5204_fu_2053_p2;
wire   [0:0] v5205_fu_2058_p2;
wire   [7:0] v5206_1_fu_2064_p3;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1798;
reg    ap_condition_1803;
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
#0 indvar_flatten35285_fu_194 = 13'd0;
#0 v4915286_fu_198 = 6'd0;
#0 indvar_flatten12287_fu_202 = 10'd0;
#0 v4916288_fu_206 = 6'd0;
#0 indvar_flatten289_fu_210 = 6'd0;
#0 v4917290_fu_214 = 4'd0;
#0 v4918291_fu_218 = 4'd0;
#0 ap_done_reg = 1'b0;
end
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6377(.din0(v4919_reg_2578),.din1(v4920_reg_2540),.dout(mul_ln7436_fu_1487_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6378(.din0(v4929_reg_2586),.din1(v4920_reg_2540),.dout(mul_ln7445_fu_1491_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6379(.din0(v4938_reg_2594),.din1(v4920_reg_2540),.dout(mul_ln7454_fu_1495_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6380(.din0(v4947_reg_2602),.din1(v4920_reg_2540),.dout(mul_ln7463_fu_1499_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6381(.din0(v4919_reg_2578),.din1(v4956_reg_2548),.dout(mul_ln7472_fu_1503_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6382(.din0(v4929_reg_2586),.din1(v4956_reg_2548),.dout(mul_ln7480_fu_1507_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6383(.din0(v4938_reg_2594),.din1(v4956_reg_2548),.dout(mul_ln7488_fu_1511_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6384(.din0(v4947_reg_2602),.din1(v4956_reg_2548),.dout(mul_ln7496_fu_1515_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6385(.din0(v4919_reg_2578),.din1(v4989_reg_2556),.dout(mul_ln7505_fu_1519_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6386(.din0(v4929_reg_2586),.din1(v4989_reg_2556),.dout(mul_ln7513_fu_1523_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6387(.din0(v4938_reg_2594),.din1(v4989_reg_2556),.dout(mul_ln7521_fu_1527_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6388(.din0(v4947_reg_2602),.din1(v4989_reg_2556),.dout(mul_ln7529_fu_1531_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6389(.din0(v4919_reg_2578),.din1(v5022_reg_2564),.dout(mul_ln7538_fu_1535_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6390(.din0(v4929_reg_2586),.din1(v5022_reg_2564),.dout(mul_ln7546_fu_1539_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6391(.din0(v4938_reg_2594),.din1(v5022_reg_2564),.dout(mul_ln7554_fu_1543_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6392(.din0(v4947_reg_2602),.din1(v5022_reg_2564),.dout(mul_ln7562_fu_1547_p2));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6393(.clk(ap_clk),.reset(ap_rst),.din0(v5281_3_q0),.din1(v5280_6_q0),.din2(mul_ln7436_fu_1487_p2),.ce(1'b1),.dout(grp_fu_2079_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6394(.clk(ap_clk),.reset(ap_rst),.din0(v5281_2_q0),.din1(v5280_6_q0),.din2(mul_ln7445_fu_1491_p2),.ce(1'b1),.dout(grp_fu_2088_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6395(.clk(ap_clk),.reset(ap_rst),.din0(v5281_1_q0),.din1(v5280_6_q0),.din2(mul_ln7454_fu_1495_p2),.ce(1'b1),.dout(grp_fu_2097_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6396(.clk(ap_clk),.reset(ap_rst),.din0(v5281_q0),.din1(v5280_6_q0),.din2(mul_ln7463_fu_1499_p2),.ce(1'b1),.dout(grp_fu_2106_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6397(.clk(ap_clk),.reset(ap_rst),.din0(v5281_3_q0),.din1(v5280_4_q0),.din2(mul_ln7472_fu_1503_p2),.ce(1'b1),.dout(grp_fu_2115_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6398(.clk(ap_clk),.reset(ap_rst),.din0(v5281_2_q0),.din1(v5280_4_q0),.din2(mul_ln7480_fu_1507_p2),.ce(1'b1),.dout(grp_fu_2124_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6399(.clk(ap_clk),.reset(ap_rst),.din0(v5281_1_q0),.din1(v5280_4_q0),.din2(mul_ln7488_fu_1511_p2),.ce(1'b1),.dout(grp_fu_2133_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6400(.clk(ap_clk),.reset(ap_rst),.din0(v5281_q0),.din1(v5280_4_q0),.din2(mul_ln7496_fu_1515_p2),.ce(1'b1),.dout(grp_fu_2142_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6401(.clk(ap_clk),.reset(ap_rst),.din0(v5281_3_q0),.din1(v5280_2_q0),.din2(mul_ln7505_fu_1519_p2),.ce(1'b1),.dout(grp_fu_2151_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6402(.clk(ap_clk),.reset(ap_rst),.din0(v5281_2_q0),.din1(v5280_2_q0),.din2(mul_ln7513_fu_1523_p2),.ce(1'b1),.dout(grp_fu_2160_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6403(.clk(ap_clk),.reset(ap_rst),.din0(v5281_1_q0),.din1(v5280_2_q0),.din2(mul_ln7521_fu_1527_p2),.ce(1'b1),.dout(grp_fu_2169_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6404(.clk(ap_clk),.reset(ap_rst),.din0(v5281_q0),.din1(v5280_2_q0),.din2(mul_ln7529_fu_1531_p2),.ce(1'b1),.dout(grp_fu_2178_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6405(.clk(ap_clk),.reset(ap_rst),.din0(v5281_3_q0),.din1(v5280_q0),.din2(mul_ln7538_fu_1535_p2),.ce(1'b1),.dout(grp_fu_2187_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6406(.clk(ap_clk),.reset(ap_rst),.din0(v5281_2_q0),.din1(v5280_q0),.din2(mul_ln7546_fu_1539_p2),.ce(1'b1),.dout(grp_fu_2196_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6407(.clk(ap_clk),.reset(ap_rst),.din0(v5281_1_q0),.din1(v5280_q0),.din2(mul_ln7554_fu_1543_p2),.ce(1'b1),.dout(grp_fu_2205_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U6408(.clk(ap_clk),.reset(ap_rst),.din0(v5281_q0),.din1(v5280_q0),.din2(mul_ln7562_fu_1547_p2),.ce(1'b1),.dout(grp_fu_2214_p3));
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1803)) begin
            icmp_ln7427294_reg_922 <= icmp_ln7427_reg_2288;
        end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            icmp_ln7427294_reg_922 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln7425_reg_2293_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln7428293_reg_933 <= icmp_ln7428_reg_2375;
    end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln7428293_reg_933 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln7425_reg_2293_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln7429292_reg_944 <= icmp_ln7429_reg_2370;
    end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln7429292_reg_944 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten12287_fu_202 <= select_ln7427_1_fu_1012_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12287_fu_202 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten289_fu_210 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten289_fu_210 <= select_ln7428_1_fu_1299_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten35285_fu_194 <= add_ln7425_1_fu_1020_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35285_fu_194 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v4915286_fu_198 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v4915286_fu_198 <= v4915_fu_1087_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v4916288_fu_206 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v4916288_fu_206 <= v4916_fu_1133_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v4917290_fu_214 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v4917290_fu_214 <= v4917_fu_1167_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v4918291_fu_218 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v4918291_fu_218 <= v4918_fu_1287_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln7431_reg_2354 <= add_ln7431_fu_1267_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        brmerge203_i_reg_2322 <= brmerge203_i_fu_1238_p2;
        cmp33_i_i_reg_2302 <= cmp33_i_i_fu_1203_p2;
        icmp_ln7425_reg_2293 <= icmp_ln7425_fu_1032_p2;
        icmp_ln7425_reg_2293_pp0_iter1_reg <= icmp_ln7425_reg_2293;
        lshr_ln29_reg_2342 <= {{v4916_fu_1133_p3[4:2]}};
        lshr_ln30_reg_2349 <= {{v4917_fu_1167_p3[3:1]}};
        lshr_ln31_reg_2364 <= {{v4918_mid2_fu_1159_p3[3:1]}};
        lshr_ln_reg_2297 <= {{v4915_fu_1087_p3[5:1]}};
        mul_i64_cast_i_cast_reg_2277 <= mul_i64_cast_i_cast_fu_955_p1;
        trunc_ln7431_reg_2359 <= trunc_ln7431_fu_1273_p1;
        xor_ln7425_reg_2282 <= xor_ln7425_fu_1000_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln7560_reg_2572 <= add_ln7560_fu_1420_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        brmerge203_i_reg_2322_pp0_iter2_reg <= brmerge203_i_reg_2322;
        brmerge203_i_reg_2322_pp0_iter3_reg <= brmerge203_i_reg_2322_pp0_iter2_reg;
        brmerge203_i_reg_2322_pp0_iter4_reg <= brmerge203_i_reg_2322_pp0_iter3_reg;
        brmerge203_i_reg_2322_pp0_iter5_reg <= brmerge203_i_reg_2322_pp0_iter4_reg;
        cmp33_i_i_reg_2302_pp0_iter2_reg <= cmp33_i_i_reg_2302;
        cmp33_i_i_reg_2302_pp0_iter3_reg <= cmp33_i_i_reg_2302_pp0_iter2_reg;
        cmp33_i_i_reg_2302_pp0_iter4_reg <= cmp33_i_i_reg_2302_pp0_iter3_reg;
        cmp33_i_i_reg_2302_pp0_iter5_reg <= cmp33_i_i_reg_2302_pp0_iter4_reg;
        lshr_ln29_reg_2342_pp0_iter2_reg <= lshr_ln29_reg_2342;
        lshr_ln29_reg_2342_pp0_iter3_reg <= lshr_ln29_reg_2342_pp0_iter2_reg;
        lshr_ln30_reg_2349_pp0_iter2_reg <= lshr_ln30_reg_2349;
        lshr_ln30_reg_2349_pp0_iter3_reg <= lshr_ln30_reg_2349_pp0_iter2_reg;
        lshr_ln31_reg_2364_pp0_iter2_reg <= lshr_ln31_reg_2364;
        lshr_ln31_reg_2364_pp0_iter3_reg <= lshr_ln31_reg_2364_pp0_iter2_reg;
        lshr_ln31_reg_2364_pp0_iter4_reg <= lshr_ln31_reg_2364_pp0_iter3_reg;
        p_cast_reg_2380[6 : 0] <= p_cast_fu_1360_p1[6 : 0];
        select_ln7579_reg_2866 <= select_ln7579_fu_1682_p3;
        select_ln7590_reg_2871 <= select_ln7590_fu_1708_p3;
        select_ln7601_reg_2876 <= select_ln7601_fu_1734_p3;
        select_ln7612_reg_2881 <= select_ln7612_fu_1760_p3;
        select_ln7623_reg_2886 <= select_ln7623_fu_1786_p3;
        select_ln7633_reg_2891 <= select_ln7633_fu_1812_p3;
        select_ln7643_reg_2896 <= select_ln7643_fu_1838_p3;
        select_ln7653_reg_2901 <= select_ln7653_fu_1864_p3;
        select_ln7664_reg_2906 <= select_ln7664_fu_1890_p3;
        select_ln7674_reg_2911 <= select_ln7674_fu_1916_p3;
        select_ln7684_reg_2916 <= select_ln7684_fu_1942_p3;
        select_ln7694_reg_2921 <= select_ln7694_fu_1968_p3;
        select_ln7705_reg_2926 <= select_ln7705_fu_1994_p3;
        select_ln7715_reg_2931 <= select_ln7715_fu_2020_p3;
        select_ln7725_reg_2936 <= select_ln7725_fu_2046_p3;
        select_ln7735_reg_2941 <= select_ln7735_fu_2072_p3;
        v4919_reg_2578 <= v5281_7_q0;
        v4920_reg_2540 <= v5280_7_q0;
        v4929_reg_2586 <= v5281_6_q0;
        v4938_reg_2594 <= v5281_5_q0;
        v4947_reg_2602 <= v5281_4_q0;
        v4956_reg_2548 <= v5280_5_q0;
        v4989_reg_2556 <= v5280_3_q0;
        v5022_reg_2564 <= v5280_1_q0;
        v5282_10_addr_reg_2670 <= zext_ln7560_6_fu_1451_p1;
        v5282_10_addr_reg_2670_pp0_iter6_reg <= v5282_10_addr_reg_2670;
        v5282_11_addr_reg_2676 <= zext_ln7560_6_fu_1451_p1;
        v5282_11_addr_reg_2676_pp0_iter6_reg <= v5282_11_addr_reg_2676;
        v5282_12_addr_reg_2682 <= zext_ln7560_6_fu_1451_p1;
        v5282_12_addr_reg_2682_pp0_iter6_reg <= v5282_12_addr_reg_2682;
        v5282_13_addr_reg_2688 <= zext_ln7560_6_fu_1451_p1;
        v5282_13_addr_reg_2688_pp0_iter6_reg <= v5282_13_addr_reg_2688;
        v5282_14_addr_reg_2694 <= zext_ln7560_6_fu_1451_p1;
        v5282_14_addr_reg_2694_pp0_iter6_reg <= v5282_14_addr_reg_2694;
        v5282_15_addr_reg_2700 <= zext_ln7560_6_fu_1451_p1;
        v5282_15_addr_reg_2700_pp0_iter6_reg <= v5282_15_addr_reg_2700;
        v5282_1_addr_reg_2616 <= zext_ln7560_6_fu_1451_p1;
        v5282_1_addr_reg_2616_pp0_iter6_reg <= v5282_1_addr_reg_2616;
        v5282_2_addr_reg_2622 <= zext_ln7560_6_fu_1451_p1;
        v5282_2_addr_reg_2622_pp0_iter6_reg <= v5282_2_addr_reg_2622;
        v5282_3_addr_reg_2628 <= zext_ln7560_6_fu_1451_p1;
        v5282_3_addr_reg_2628_pp0_iter6_reg <= v5282_3_addr_reg_2628;
        v5282_4_addr_reg_2634 <= zext_ln7560_6_fu_1451_p1;
        v5282_4_addr_reg_2634_pp0_iter6_reg <= v5282_4_addr_reg_2634;
        v5282_5_addr_reg_2640 <= zext_ln7560_6_fu_1451_p1;
        v5282_5_addr_reg_2640_pp0_iter6_reg <= v5282_5_addr_reg_2640;
        v5282_6_addr_reg_2646 <= zext_ln7560_6_fu_1451_p1;
        v5282_6_addr_reg_2646_pp0_iter6_reg <= v5282_6_addr_reg_2646;
        v5282_7_addr_reg_2652 <= zext_ln7560_6_fu_1451_p1;
        v5282_7_addr_reg_2652_pp0_iter6_reg <= v5282_7_addr_reg_2652;
        v5282_8_addr_reg_2658 <= zext_ln7560_6_fu_1451_p1;
        v5282_8_addr_reg_2658_pp0_iter6_reg <= v5282_8_addr_reg_2658;
        v5282_9_addr_reg_2664 <= zext_ln7560_6_fu_1451_p1;
        v5282_9_addr_reg_2664_pp0_iter6_reg <= v5282_9_addr_reg_2664;
        v5282_addr_reg_2610 <= zext_ln7560_6_fu_1451_p1;
        v5282_addr_reg_2610_pp0_iter6_reg <= v5282_addr_reg_2610;
        zext_ln7431_3_reg_2408[9 : 0] <= zext_ln7431_3_fu_1393_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln7427_reg_2288 <= icmp_ln7427_fu_1026_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln7428_reg_2375 <= icmp_ln7428_fu_1313_p2;
        icmp_ln7429_reg_2370 <= icmp_ln7429_fu_1307_p2;
    end
end
always @ (*) begin
    if (((icmp_ln7425_fu_1032_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1798)) begin
            ap_phi_mux_icmp_ln7427294_phi_fu_925_p4 = icmp_ln7427_reg_2288;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln7427294_phi_fu_925_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln7427294_phi_fu_925_p4 = icmp_ln7427_reg_2288;
        end
    end else begin
        ap_phi_mux_icmp_ln7427294_phi_fu_925_p4 = icmp_ln7427_reg_2288;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln7425_reg_2293_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln7428293_phi_fu_937_p4 = icmp_ln7428_reg_2375;
    end else begin
        ap_phi_mux_icmp_ln7428293_phi_fu_937_p4 = icmp_ln7428293_reg_933;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln7425_reg_2293_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln7429292_phi_fu_948_p4 = icmp_ln7429_reg_2370;
    end else begin
        ap_phi_mux_icmp_ln7429292_phi_fu_948_p4 = icmp_ln7429292_reg_944;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12287_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12287_load = indvar_flatten12287_fu_202;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten35285_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35285_load = indvar_flatten35285_fu_194;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5279_10_ce0_local = 1'b1;
    end else begin
        v5279_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5279_11_ce0_local = 1'b1;
    end else begin
        v5279_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5279_12_ce0_local = 1'b1;
    end else begin
        v5279_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5279_13_ce0_local = 1'b1;
    end else begin
        v5279_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5279_14_ce0_local = 1'b1;
    end else begin
        v5279_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5279_15_ce0_local = 1'b1;
    end else begin
        v5279_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5279_1_ce0_local = 1'b1;
    end else begin
        v5279_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5279_2_ce0_local = 1'b1;
    end else begin
        v5279_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5279_3_ce0_local = 1'b1;
    end else begin
        v5279_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5279_4_ce0_local = 1'b1;
    end else begin
        v5279_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5279_5_ce0_local = 1'b1;
    end else begin
        v5279_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5279_6_ce0_local = 1'b1;
    end else begin
        v5279_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5279_7_ce0_local = 1'b1;
    end else begin
        v5279_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5279_8_ce0_local = 1'b1;
    end else begin
        v5279_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5279_9_ce0_local = 1'b1;
    end else begin
        v5279_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5279_ce0_local = 1'b1;
    end else begin
        v5279_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5280_1_ce0_local = 1'b1;
    end else begin
        v5280_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5280_2_ce0_local = 1'b1;
    end else begin
        v5280_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5280_3_ce0_local = 1'b1;
    end else begin
        v5280_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5280_4_ce0_local = 1'b1;
    end else begin
        v5280_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5280_5_ce0_local = 1'b1;
    end else begin
        v5280_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5280_6_ce0_local = 1'b1;
    end else begin
        v5280_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5280_7_ce0_local = 1'b1;
    end else begin
        v5280_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5280_ce0_local = 1'b1;
    end else begin
        v5280_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5281_1_ce0_local = 1'b1;
    end else begin
        v5281_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5281_2_ce0_local = 1'b1;
    end else begin
        v5281_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5281_3_ce0_local = 1'b1;
    end else begin
        v5281_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5281_4_ce0_local = 1'b1;
    end else begin
        v5281_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5281_5_ce0_local = 1'b1;
    end else begin
        v5281_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5281_6_ce0_local = 1'b1;
    end else begin
        v5281_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5281_7_ce0_local = 1'b1;
    end else begin
        v5281_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5281_ce0_local = 1'b1;
    end else begin
        v5281_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_10_ce0_local = 1'b1;
    end else begin
        v5282_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5282_10_ce1_local = 1'b1;
    end else begin
        v5282_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_10_we0_local = 1'b1;
    end else begin
        v5282_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_11_ce0_local = 1'b1;
    end else begin
        v5282_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5282_11_ce1_local = 1'b1;
    end else begin
        v5282_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_11_we0_local = 1'b1;
    end else begin
        v5282_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_12_ce0_local = 1'b1;
    end else begin
        v5282_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5282_12_ce1_local = 1'b1;
    end else begin
        v5282_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_12_we0_local = 1'b1;
    end else begin
        v5282_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_13_ce0_local = 1'b1;
    end else begin
        v5282_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5282_13_ce1_local = 1'b1;
    end else begin
        v5282_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_13_we0_local = 1'b1;
    end else begin
        v5282_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_14_ce0_local = 1'b1;
    end else begin
        v5282_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5282_14_ce1_local = 1'b1;
    end else begin
        v5282_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_14_we0_local = 1'b1;
    end else begin
        v5282_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_15_ce0_local = 1'b1;
    end else begin
        v5282_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5282_15_ce1_local = 1'b1;
    end else begin
        v5282_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_15_we0_local = 1'b1;
    end else begin
        v5282_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_1_ce0_local = 1'b1;
    end else begin
        v5282_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5282_1_ce1_local = 1'b1;
    end else begin
        v5282_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_1_we0_local = 1'b1;
    end else begin
        v5282_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_2_ce0_local = 1'b1;
    end else begin
        v5282_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5282_2_ce1_local = 1'b1;
    end else begin
        v5282_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_2_we0_local = 1'b1;
    end else begin
        v5282_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_3_ce0_local = 1'b1;
    end else begin
        v5282_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5282_3_ce1_local = 1'b1;
    end else begin
        v5282_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_3_we0_local = 1'b1;
    end else begin
        v5282_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_4_ce0_local = 1'b1;
    end else begin
        v5282_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5282_4_ce1_local = 1'b1;
    end else begin
        v5282_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_4_we0_local = 1'b1;
    end else begin
        v5282_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_5_ce0_local = 1'b1;
    end else begin
        v5282_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5282_5_ce1_local = 1'b1;
    end else begin
        v5282_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_5_we0_local = 1'b1;
    end else begin
        v5282_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_6_ce0_local = 1'b1;
    end else begin
        v5282_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5282_6_ce1_local = 1'b1;
    end else begin
        v5282_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_6_we0_local = 1'b1;
    end else begin
        v5282_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_7_ce0_local = 1'b1;
    end else begin
        v5282_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5282_7_ce1_local = 1'b1;
    end else begin
        v5282_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_7_we0_local = 1'b1;
    end else begin
        v5282_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_8_ce0_local = 1'b1;
    end else begin
        v5282_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5282_8_ce1_local = 1'b1;
    end else begin
        v5282_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_8_we0_local = 1'b1;
    end else begin
        v5282_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_9_ce0_local = 1'b1;
    end else begin
        v5282_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5282_9_ce1_local = 1'b1;
    end else begin
        v5282_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_9_we0_local = 1'b1;
    end else begin
        v5282_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_ce0_local = 1'b1;
    end else begin
        v5282_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v5282_ce1_local = 1'b1;
    end else begin
        v5282_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v5282_we0_local = 1'b1;
    end else begin
        v5282_we0_local = 1'b0;
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
assign add_ln7425_1_fu_1020_p2 = (ap_sig_allocacmp_indvar_flatten35285_load + 13'd1);
assign add_ln7425_fu_1063_p2 = (v4915286_fu_198 + 6'd2);
assign add_ln7427_1_fu_1006_p2 = (ap_sig_allocacmp_indvar_flatten12287_load + 10'd1);
assign add_ln7427_fu_1095_p2 = (select_ln7425_fu_1069_p3 + 6'd4);
assign add_ln7428_1_fu_1293_p2 = (indvar_flatten289_fu_210 + 6'd1);
assign add_ln7428_fu_1141_p2 = (v4917_mid26_fu_1107_p3 + 4'd2);
assign add_ln7431_1_fu_1387_p2 = (sub_ln7430_fu_1378_p2 + zext_ln7560_4_fu_1384_p1);
assign add_ln7431_fu_1267_p2 = (sub_ln7431_fu_1197_p2 + zext_ln7560_1_fu_1263_p1);
assign add_ln7560_1_fu_1445_p2 = (sub_ln7560_1_fu_1436_p2 + zext_ln7560_5_fu_1442_p1);
assign add_ln7560_fu_1420_p2 = (sub_ln7560_fu_1411_p2 + zext_ln7560_2_fu_1417_p1);
assign and_ln7425_1_fu_1082_p2 = (xor_ln7425_reg_2282 & ap_phi_mux_icmp_ln7428293_phi_fu_937_p4);
assign and_ln7425_fu_1077_p2 = (xor_ln7425_reg_2282 & ap_phi_mux_icmp_ln7429292_phi_fu_948_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1798 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln7425_reg_2293 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_1803 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln7425_reg_2293 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign brmerge203_i_fu_1238_p2 = (tmp | cmp472_i_not_i_fu_1232_p2);
assign cmp33_i_i_fu_1203_p2 = ((v4915_fu_1087_p3 == 6'd0) ? 1'b1 : 1'b0);
assign cmp472_i_not_i_fu_1232_p2 = ((empty_219_fu_1227_p2 != 9'd385) ? 1'b1 : 1'b0);
assign empty_215_fu_1147_p2 = (icmp_ln7429_mid211_fu_1127_p2 | and_ln7425_1_fu_1082_p2);
assign empty_216_fu_1153_p2 = (icmp_ln7427294_reg_922 | empty_215_fu_1147_p2);
assign empty_217_fu_1209_p1 = v4915_fu_1087_p3[4:0];
assign empty_218_fu_1217_p2 = (v4915_cast12_cast_i_fu_1213_p1 ^ 6'd63);
assign empty_219_fu_1227_p2 = ($signed(mul_i64_cast_i_cast_reg_2277) + $signed(p_cast13_i_fu_1223_p1));
assign empty_220_fu_1354_p2 = (tmp_s_fu_1347_p3 + zext_ln7431_fu_1344_p1);
assign empty_fu_1101_p2 = (icmp_ln7427294_reg_922 | and_ln7425_1_fu_1082_p2);
assign exitcond_flatten_not_fu_1115_p2 = (ap_phi_mux_icmp_ln7428293_phi_fu_937_p4 ^ 1'd1);
assign icmp_ln7425_fu_1032_p2 = ((ap_sig_allocacmp_indvar_flatten35285_load == 13'd6271) ? 1'b1 : 1'b0);
assign icmp_ln7427_fu_1026_p2 = ((select_ln7427_1_fu_1012_p3 == 10'd392) ? 1'b1 : 1'b0);
assign icmp_ln7428_fu_1313_p2 = ((select_ln7428_1_fu_1299_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln7429_fu_1307_p2 = ((v4918_fu_1287_p2 == 4'd14) ? 1'b1 : 1'b0);
assign icmp_ln7429_mid211_fu_1127_p2 = (not_exitcond_flatten_mid234_fu_1121_p2 & and_ln7425_fu_1077_p2);
assign lshr_ln30_fu_1253_p4 = {{v4917_fu_1167_p3[3:1]}};
assign lshr_ln_fu_1175_p4 = {{v4915_fu_1087_p3[5:1]}};
assign mul_i64_cast_i_cast_fu_955_p1 = $signed(mul_i64_cast_i);
assign not_exitcond_flatten_mid234_fu_1121_p2 = (icmp_ln7427294_reg_922 | exitcond_flatten_not_fu_1115_p2);
assign p_cast13_i_fu_1223_p1 = $signed(empty_218_fu_1217_p2);
assign p_cast_fu_1360_p1 = empty_220_fu_1354_p2;
assign p_shl22_fu_1429_p3 = {{add_ln7560_reg_2572}, {3'd0}};
assign p_shl23_fu_1404_p3 = {{lshr_ln29_reg_2342_pp0_iter3_reg}, {3'd0}};
assign p_shl24_fu_1189_p3 = {{lshr_ln_fu_1175_p4}, {3'd0}};
assign select_ln7425_fu_1069_p3 = ((icmp_ln7427294_reg_922[0:0] == 1'b1) ? 6'd0 : v4916288_fu_206);
assign select_ln7427_1_fu_1012_p3 = ((ap_phi_mux_icmp_ln7427294_phi_fu_925_p4[0:0] == 1'b1) ? 10'd1 : add_ln7427_1_fu_1006_p2);
assign select_ln7428_1_fu_1299_p3 = ((empty_fu_1101_p2[0:0] == 1'b1) ? 6'd1 : add_ln7428_1_fu_1293_p2);
assign select_ln7579_fu_1682_p3 = ((brmerge203_i_reg_2322_pp0_iter5_reg[0:0] == 1'b1) ? v5063_fu_1663_p2 : v5065_1_fu_1674_p3);
assign select_ln7590_fu_1708_p3 = ((brmerge203_i_reg_2322_pp0_iter5_reg[0:0] == 1'b1) ? v5073_fu_1689_p2 : v5075_1_fu_1700_p3);
assign select_ln7601_fu_1734_p3 = ((brmerge203_i_reg_2322_pp0_iter5_reg[0:0] == 1'b1) ? v5083_fu_1715_p2 : v5085_1_fu_1726_p3);
assign select_ln7612_fu_1760_p3 = ((brmerge203_i_reg_2322_pp0_iter5_reg[0:0] == 1'b1) ? v5093_fu_1741_p2 : v5095_1_fu_1752_p3);
assign select_ln7623_fu_1786_p3 = ((brmerge203_i_reg_2322_pp0_iter5_reg[0:0] == 1'b1) ? v5103_fu_1767_p2 : v5105_1_fu_1778_p3);
assign select_ln7633_fu_1812_p3 = ((brmerge203_i_reg_2322_pp0_iter5_reg[0:0] == 1'b1) ? v5112_fu_1793_p2 : v5114_1_fu_1804_p3);
assign select_ln7643_fu_1838_p3 = ((brmerge203_i_reg_2322_pp0_iter5_reg[0:0] == 1'b1) ? v5121_fu_1819_p2 : v5123_1_fu_1830_p3);
assign select_ln7653_fu_1864_p3 = ((brmerge203_i_reg_2322_pp0_iter5_reg[0:0] == 1'b1) ? v5130_fu_1845_p2 : v5132_1_fu_1856_p3);
assign select_ln7664_fu_1890_p3 = ((brmerge203_i_reg_2322_pp0_iter5_reg[0:0] == 1'b1) ? v5140_fu_1871_p2 : v5142_1_fu_1882_p3);
assign select_ln7674_fu_1916_p3 = ((brmerge203_i_reg_2322_pp0_iter5_reg[0:0] == 1'b1) ? v5149_fu_1897_p2 : v5151_1_fu_1908_p3);
assign select_ln7684_fu_1942_p3 = ((brmerge203_i_reg_2322_pp0_iter5_reg[0:0] == 1'b1) ? v5158_fu_1923_p2 : v5160_1_fu_1934_p3);
assign select_ln7694_fu_1968_p3 = ((brmerge203_i_reg_2322_pp0_iter5_reg[0:0] == 1'b1) ? v5167_fu_1949_p2 : v5169_1_fu_1960_p3);
assign select_ln7705_fu_1994_p3 = ((brmerge203_i_reg_2322_pp0_iter5_reg[0:0] == 1'b1) ? v5177_fu_1975_p2 : v5179_1_fu_1986_p3);
assign select_ln7715_fu_2020_p3 = ((brmerge203_i_reg_2322_pp0_iter5_reg[0:0] == 1'b1) ? v5186_fu_2001_p2 : v5188_1_fu_2012_p3);
assign select_ln7725_fu_2046_p3 = ((brmerge203_i_reg_2322_pp0_iter5_reg[0:0] == 1'b1) ? v5195_fu_2027_p2 : v5197_1_fu_2038_p3);
assign select_ln7735_fu_2072_p3 = ((brmerge203_i_reg_2322_pp0_iter5_reg[0:0] == 1'b1) ? v5204_fu_2053_p2 : v5206_1_fu_2064_p3);
assign sub_ln7430_fu_1378_p2 = (tmp_118_fu_1368_p3 - zext_ln7431_2_fu_1375_p1);
assign sub_ln7431_fu_1197_p2 = (p_shl24_fu_1189_p3 - zext_ln7431_1_fu_1185_p1);
assign sub_ln7560_1_fu_1436_p2 = (p_shl22_fu_1429_p3 - zext_ln7560_3_fu_1426_p1);
assign sub_ln7560_fu_1411_p2 = (p_shl23_fu_1404_p3 - zext_ln7560_fu_1401_p1);
assign tmp_118_fu_1368_p3 = {{trunc_ln7431_reg_2359}, {3'd0}};
assign tmp_s_fu_1347_p3 = {{lshr_ln29_reg_2342}, {4'd0}};
assign trunc_ln7431_fu_1273_p1 = add_ln7431_fu_1267_p2[6:0];
assign v4915_cast12_cast_i_fu_1213_p1 = empty_217_fu_1209_p1;
assign v4915_fu_1087_p3 = ((icmp_ln7427294_reg_922[0:0] == 1'b1) ? add_ln7425_fu_1063_p2 : v4915286_fu_198);
assign v4916_fu_1133_p3 = ((and_ln7425_1_fu_1082_p2[0:0] == 1'b1) ? add_ln7427_fu_1095_p2 : select_ln7425_fu_1069_p3);
assign v4917_fu_1167_p3 = ((icmp_ln7429_mid211_fu_1127_p2[0:0] == 1'b1) ? add_ln7428_fu_1141_p2 : v4917_mid26_fu_1107_p3);
assign v4917_mid26_fu_1107_p3 = ((empty_fu_1101_p2[0:0] == 1'b1) ? 4'd0 : v4917290_fu_214);
assign v4918_fu_1287_p2 = (v4918_mid2_fu_1159_p3 + 4'd2);
assign v4918_mid2_fu_1159_p3 = ((empty_216_fu_1153_p2[0:0] == 1'b1) ? 4'd0 : v4918291_fu_218);
assign v4923_fu_1551_p3 = ((cmp33_i_i_reg_2302_pp0_iter5_reg[0:0] == 1'b1) ? v5279_15_q0 : v5282_15_q1);
assign v4932_fu_1558_p3 = ((cmp33_i_i_reg_2302_pp0_iter5_reg[0:0] == 1'b1) ? v5279_14_q0 : v5282_14_q1);
assign v4941_fu_1565_p3 = ((cmp33_i_i_reg_2302_pp0_iter5_reg[0:0] == 1'b1) ? v5279_13_q0 : v5282_13_q1);
assign v4950_fu_1572_p3 = ((cmp33_i_i_reg_2302_pp0_iter5_reg[0:0] == 1'b1) ? v5279_12_q0 : v5282_12_q1);
assign v4959_fu_1579_p3 = ((cmp33_i_i_reg_2302_pp0_iter5_reg[0:0] == 1'b1) ? v5279_11_q0 : v5282_11_q1);
assign v4967_fu_1586_p3 = ((cmp33_i_i_reg_2302_pp0_iter5_reg[0:0] == 1'b1) ? v5279_10_q0 : v5282_10_q1);
assign v4975_fu_1593_p3 = ((cmp33_i_i_reg_2302_pp0_iter5_reg[0:0] == 1'b1) ? v5279_9_q0 : v5282_9_q1);
assign v4983_fu_1600_p3 = ((cmp33_i_i_reg_2302_pp0_iter5_reg[0:0] == 1'b1) ? v5279_8_q0 : v5282_8_q1);
assign v4992_fu_1607_p3 = ((cmp33_i_i_reg_2302_pp0_iter5_reg[0:0] == 1'b1) ? v5279_7_q0 : v5282_7_q1);
assign v5000_fu_1614_p3 = ((cmp33_i_i_reg_2302_pp0_iter5_reg[0:0] == 1'b1) ? v5279_6_q0 : v5282_6_q1);
assign v5008_fu_1621_p3 = ((cmp33_i_i_reg_2302_pp0_iter5_reg[0:0] == 1'b1) ? v5279_5_q0 : v5282_5_q1);
assign v5016_fu_1628_p3 = ((cmp33_i_i_reg_2302_pp0_iter5_reg[0:0] == 1'b1) ? v5279_4_q0 : v5282_4_q1);
assign v5025_fu_1635_p3 = ((cmp33_i_i_reg_2302_pp0_iter5_reg[0:0] == 1'b1) ? v5279_3_q0 : v5282_3_q1);
assign v5033_fu_1642_p3 = ((cmp33_i_i_reg_2302_pp0_iter5_reg[0:0] == 1'b1) ? v5279_2_q0 : v5282_2_q1);
assign v5041_fu_1649_p3 = ((cmp33_i_i_reg_2302_pp0_iter5_reg[0:0] == 1'b1) ? v5279_1_q0 : v5282_1_q1);
assign v5049_fu_1656_p3 = ((cmp33_i_i_reg_2302_pp0_iter5_reg[0:0] == 1'b1) ? v5279_q0 : v5282_q1);
assign v5063_fu_1663_p0 = grp_fu_2079_p3;
assign v5063_fu_1663_p2 = ($signed(v5063_fu_1663_p0) + $signed(v4923_fu_1551_p3));
assign v5064_fu_1668_p2 = (($signed(v5063_fu_1663_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5065_1_fu_1674_p3 = ((v5064_fu_1668_p2[0:0] == 1'b1) ? v5063_fu_1663_p2 : 8'd229);
assign v5073_fu_1689_p0 = grp_fu_2088_p3;
assign v5073_fu_1689_p2 = ($signed(v5073_fu_1689_p0) + $signed(v4932_fu_1558_p3));
assign v5074_fu_1694_p2 = (($signed(v5073_fu_1689_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5075_1_fu_1700_p3 = ((v5074_fu_1694_p2[0:0] == 1'b1) ? v5073_fu_1689_p2 : 8'd229);
assign v5083_fu_1715_p0 = grp_fu_2097_p3;
assign v5083_fu_1715_p2 = ($signed(v5083_fu_1715_p0) + $signed(v4941_fu_1565_p3));
assign v5084_fu_1720_p2 = (($signed(v5083_fu_1715_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5085_1_fu_1726_p3 = ((v5084_fu_1720_p2[0:0] == 1'b1) ? v5083_fu_1715_p2 : 8'd229);
assign v5093_fu_1741_p0 = grp_fu_2106_p3;
assign v5093_fu_1741_p2 = ($signed(v5093_fu_1741_p0) + $signed(v4950_fu_1572_p3));
assign v5094_fu_1746_p2 = (($signed(v5093_fu_1741_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5095_1_fu_1752_p3 = ((v5094_fu_1746_p2[0:0] == 1'b1) ? v5093_fu_1741_p2 : 8'd229);
assign v5103_fu_1767_p0 = grp_fu_2115_p3;
assign v5103_fu_1767_p2 = ($signed(v5103_fu_1767_p0) + $signed(v4959_fu_1579_p3));
assign v5104_fu_1772_p2 = (($signed(v5103_fu_1767_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5105_1_fu_1778_p3 = ((v5104_fu_1772_p2[0:0] == 1'b1) ? v5103_fu_1767_p2 : 8'd229);
assign v5112_fu_1793_p0 = grp_fu_2124_p3;
assign v5112_fu_1793_p2 = ($signed(v5112_fu_1793_p0) + $signed(v4967_fu_1586_p3));
assign v5113_fu_1798_p2 = (($signed(v5112_fu_1793_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5114_1_fu_1804_p3 = ((v5113_fu_1798_p2[0:0] == 1'b1) ? v5112_fu_1793_p2 : 8'd229);
assign v5121_fu_1819_p0 = grp_fu_2133_p3;
assign v5121_fu_1819_p2 = ($signed(v5121_fu_1819_p0) + $signed(v4975_fu_1593_p3));
assign v5122_fu_1824_p2 = (($signed(v5121_fu_1819_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5123_1_fu_1830_p3 = ((v5122_fu_1824_p2[0:0] == 1'b1) ? v5121_fu_1819_p2 : 8'd229);
assign v5130_fu_1845_p0 = grp_fu_2142_p3;
assign v5130_fu_1845_p2 = ($signed(v5130_fu_1845_p0) + $signed(v4983_fu_1600_p3));
assign v5131_fu_1850_p2 = (($signed(v5130_fu_1845_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5132_1_fu_1856_p3 = ((v5131_fu_1850_p2[0:0] == 1'b1) ? v5130_fu_1845_p2 : 8'd229);
assign v5140_fu_1871_p0 = grp_fu_2151_p3;
assign v5140_fu_1871_p2 = ($signed(v5140_fu_1871_p0) + $signed(v4992_fu_1607_p3));
assign v5141_fu_1876_p2 = (($signed(v5140_fu_1871_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5142_1_fu_1882_p3 = ((v5141_fu_1876_p2[0:0] == 1'b1) ? v5140_fu_1871_p2 : 8'd229);
assign v5149_fu_1897_p0 = grp_fu_2160_p3;
assign v5149_fu_1897_p2 = ($signed(v5149_fu_1897_p0) + $signed(v5000_fu_1614_p3));
assign v5150_fu_1902_p2 = (($signed(v5149_fu_1897_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5151_1_fu_1908_p3 = ((v5150_fu_1902_p2[0:0] == 1'b1) ? v5149_fu_1897_p2 : 8'd229);
assign v5158_fu_1923_p0 = grp_fu_2169_p3;
assign v5158_fu_1923_p2 = ($signed(v5158_fu_1923_p0) + $signed(v5008_fu_1621_p3));
assign v5159_fu_1928_p2 = (($signed(v5158_fu_1923_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5160_1_fu_1934_p3 = ((v5159_fu_1928_p2[0:0] == 1'b1) ? v5158_fu_1923_p2 : 8'd229);
assign v5167_fu_1949_p0 = grp_fu_2178_p3;
assign v5167_fu_1949_p2 = ($signed(v5167_fu_1949_p0) + $signed(v5016_fu_1628_p3));
assign v5168_fu_1954_p2 = (($signed(v5167_fu_1949_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5169_1_fu_1960_p3 = ((v5168_fu_1954_p2[0:0] == 1'b1) ? v5167_fu_1949_p2 : 8'd229);
assign v5177_fu_1975_p0 = grp_fu_2187_p3;
assign v5177_fu_1975_p2 = ($signed(v5177_fu_1975_p0) + $signed(v5025_fu_1635_p3));
assign v5178_fu_1980_p2 = (($signed(v5177_fu_1975_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5179_1_fu_1986_p3 = ((v5178_fu_1980_p2[0:0] == 1'b1) ? v5177_fu_1975_p2 : 8'd229);
assign v5186_fu_2001_p0 = grp_fu_2196_p3;
assign v5186_fu_2001_p2 = ($signed(v5186_fu_2001_p0) + $signed(v5033_fu_1642_p3));
assign v5187_fu_2006_p2 = (($signed(v5186_fu_2001_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5188_1_fu_2012_p3 = ((v5187_fu_2006_p2[0:0] == 1'b1) ? v5186_fu_2001_p2 : 8'd229);
assign v5195_fu_2027_p0 = grp_fu_2205_p3;
assign v5195_fu_2027_p2 = ($signed(v5195_fu_2027_p0) + $signed(v5041_fu_1649_p3));
assign v5196_fu_2032_p2 = (($signed(v5195_fu_2027_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5197_1_fu_2038_p3 = ((v5196_fu_2032_p2[0:0] == 1'b1) ? v5195_fu_2027_p2 : 8'd229);
assign v5204_fu_2053_p0 = grp_fu_2214_p3;
assign v5204_fu_2053_p2 = ($signed(v5204_fu_2053_p0) + $signed(v5049_fu_1656_p3));
assign v5205_fu_2058_p2 = (($signed(v5204_fu_2053_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v5206_1_fu_2064_p3 = ((v5205_fu_2058_p2[0:0] == 1'b1) ? v5204_fu_2053_p2 : 8'd229);
assign v5279_10_address0 = zext_ln7560_6_fu_1451_p1;
assign v5279_10_ce0 = v5279_10_ce0_local;
assign v5279_11_address0 = zext_ln7560_6_fu_1451_p1;
assign v5279_11_ce0 = v5279_11_ce0_local;
assign v5279_12_address0 = zext_ln7560_6_fu_1451_p1;
assign v5279_12_ce0 = v5279_12_ce0_local;
assign v5279_13_address0 = zext_ln7560_6_fu_1451_p1;
assign v5279_13_ce0 = v5279_13_ce0_local;
assign v5279_14_address0 = zext_ln7560_6_fu_1451_p1;
assign v5279_14_ce0 = v5279_14_ce0_local;
assign v5279_15_address0 = zext_ln7560_6_fu_1451_p1;
assign v5279_15_ce0 = v5279_15_ce0_local;
assign v5279_1_address0 = zext_ln7560_6_fu_1451_p1;
assign v5279_1_ce0 = v5279_1_ce0_local;
assign v5279_2_address0 = zext_ln7560_6_fu_1451_p1;
assign v5279_2_ce0 = v5279_2_ce0_local;
assign v5279_3_address0 = zext_ln7560_6_fu_1451_p1;
assign v5279_3_ce0 = v5279_3_ce0_local;
assign v5279_4_address0 = zext_ln7560_6_fu_1451_p1;
assign v5279_4_ce0 = v5279_4_ce0_local;
assign v5279_5_address0 = zext_ln7560_6_fu_1451_p1;
assign v5279_5_ce0 = v5279_5_ce0_local;
assign v5279_6_address0 = zext_ln7560_6_fu_1451_p1;
assign v5279_6_ce0 = v5279_6_ce0_local;
assign v5279_7_address0 = zext_ln7560_6_fu_1451_p1;
assign v5279_7_ce0 = v5279_7_ce0_local;
assign v5279_8_address0 = zext_ln7560_6_fu_1451_p1;
assign v5279_8_ce0 = v5279_8_ce0_local;
assign v5279_9_address0 = zext_ln7560_6_fu_1451_p1;
assign v5279_9_ce0 = v5279_9_ce0_local;
assign v5279_address0 = zext_ln7560_6_fu_1451_p1;
assign v5279_ce0 = v5279_ce0_local;
assign v5280_1_address0 = p_cast_reg_2380;
assign v5280_1_ce0 = v5280_1_ce0_local;
assign v5280_2_address0 = p_cast_fu_1360_p1;
assign v5280_2_ce0 = v5280_2_ce0_local;
assign v5280_3_address0 = p_cast_reg_2380;
assign v5280_3_ce0 = v5280_3_ce0_local;
assign v5280_4_address0 = p_cast_fu_1360_p1;
assign v5280_4_ce0 = v5280_4_ce0_local;
assign v5280_5_address0 = p_cast_reg_2380;
assign v5280_5_ce0 = v5280_5_ce0_local;
assign v5280_6_address0 = p_cast_fu_1360_p1;
assign v5280_6_ce0 = v5280_6_ce0_local;
assign v5280_7_address0 = p_cast_reg_2380;
assign v5280_7_ce0 = v5280_7_ce0_local;
assign v5280_address0 = p_cast_fu_1360_p1;
assign v5280_ce0 = v5280_ce0_local;
assign v5281_1_address0 = zext_ln7431_3_fu_1393_p1;
assign v5281_1_ce0 = v5281_1_ce0_local;
assign v5281_2_address0 = zext_ln7431_3_fu_1393_p1;
assign v5281_2_ce0 = v5281_2_ce0_local;
assign v5281_3_address0 = zext_ln7431_3_fu_1393_p1;
assign v5281_3_ce0 = v5281_3_ce0_local;
assign v5281_4_address0 = zext_ln7431_3_reg_2408;
assign v5281_4_ce0 = v5281_4_ce0_local;
assign v5281_5_address0 = zext_ln7431_3_reg_2408;
assign v5281_5_ce0 = v5281_5_ce0_local;
assign v5281_6_address0 = zext_ln7431_3_reg_2408;
assign v5281_6_ce0 = v5281_6_ce0_local;
assign v5281_7_address0 = zext_ln7431_3_reg_2408;
assign v5281_7_ce0 = v5281_7_ce0_local;
assign v5281_address0 = zext_ln7431_3_fu_1393_p1;
assign v5281_ce0 = v5281_ce0_local;
assign v5282_10_address0 = v5282_10_addr_reg_2670_pp0_iter6_reg;
assign v5282_10_address1 = zext_ln7560_6_fu_1451_p1;
assign v5282_10_ce0 = v5282_10_ce0_local;
assign v5282_10_ce1 = v5282_10_ce1_local;
assign v5282_10_d0 = select_ln7633_reg_2891;
assign v5282_10_we0 = v5282_10_we0_local;
assign v5282_11_address0 = v5282_11_addr_reg_2676_pp0_iter6_reg;
assign v5282_11_address1 = zext_ln7560_6_fu_1451_p1;
assign v5282_11_ce0 = v5282_11_ce0_local;
assign v5282_11_ce1 = v5282_11_ce1_local;
assign v5282_11_d0 = select_ln7623_reg_2886;
assign v5282_11_we0 = v5282_11_we0_local;
assign v5282_12_address0 = v5282_12_addr_reg_2682_pp0_iter6_reg;
assign v5282_12_address1 = zext_ln7560_6_fu_1451_p1;
assign v5282_12_ce0 = v5282_12_ce0_local;
assign v5282_12_ce1 = v5282_12_ce1_local;
assign v5282_12_d0 = select_ln7612_reg_2881;
assign v5282_12_we0 = v5282_12_we0_local;
assign v5282_13_address0 = v5282_13_addr_reg_2688_pp0_iter6_reg;
assign v5282_13_address1 = zext_ln7560_6_fu_1451_p1;
assign v5282_13_ce0 = v5282_13_ce0_local;
assign v5282_13_ce1 = v5282_13_ce1_local;
assign v5282_13_d0 = select_ln7601_reg_2876;
assign v5282_13_we0 = v5282_13_we0_local;
assign v5282_14_address0 = v5282_14_addr_reg_2694_pp0_iter6_reg;
assign v5282_14_address1 = zext_ln7560_6_fu_1451_p1;
assign v5282_14_ce0 = v5282_14_ce0_local;
assign v5282_14_ce1 = v5282_14_ce1_local;
assign v5282_14_d0 = select_ln7590_reg_2871;
assign v5282_14_we0 = v5282_14_we0_local;
assign v5282_15_address0 = v5282_15_addr_reg_2700_pp0_iter6_reg;
assign v5282_15_address1 = zext_ln7560_6_fu_1451_p1;
assign v5282_15_ce0 = v5282_15_ce0_local;
assign v5282_15_ce1 = v5282_15_ce1_local;
assign v5282_15_d0 = select_ln7579_reg_2866;
assign v5282_15_we0 = v5282_15_we0_local;
assign v5282_1_address0 = v5282_1_addr_reg_2616_pp0_iter6_reg;
assign v5282_1_address1 = zext_ln7560_6_fu_1451_p1;
assign v5282_1_ce0 = v5282_1_ce0_local;
assign v5282_1_ce1 = v5282_1_ce1_local;
assign v5282_1_d0 = select_ln7725_reg_2936;
assign v5282_1_we0 = v5282_1_we0_local;
assign v5282_2_address0 = v5282_2_addr_reg_2622_pp0_iter6_reg;
assign v5282_2_address1 = zext_ln7560_6_fu_1451_p1;
assign v5282_2_ce0 = v5282_2_ce0_local;
assign v5282_2_ce1 = v5282_2_ce1_local;
assign v5282_2_d0 = select_ln7715_reg_2931;
assign v5282_2_we0 = v5282_2_we0_local;
assign v5282_3_address0 = v5282_3_addr_reg_2628_pp0_iter6_reg;
assign v5282_3_address1 = zext_ln7560_6_fu_1451_p1;
assign v5282_3_ce0 = v5282_3_ce0_local;
assign v5282_3_ce1 = v5282_3_ce1_local;
assign v5282_3_d0 = select_ln7705_reg_2926;
assign v5282_3_we0 = v5282_3_we0_local;
assign v5282_4_address0 = v5282_4_addr_reg_2634_pp0_iter6_reg;
assign v5282_4_address1 = zext_ln7560_6_fu_1451_p1;
assign v5282_4_ce0 = v5282_4_ce0_local;
assign v5282_4_ce1 = v5282_4_ce1_local;
assign v5282_4_d0 = select_ln7694_reg_2921;
assign v5282_4_we0 = v5282_4_we0_local;
assign v5282_5_address0 = v5282_5_addr_reg_2640_pp0_iter6_reg;
assign v5282_5_address1 = zext_ln7560_6_fu_1451_p1;
assign v5282_5_ce0 = v5282_5_ce0_local;
assign v5282_5_ce1 = v5282_5_ce1_local;
assign v5282_5_d0 = select_ln7684_reg_2916;
assign v5282_5_we0 = v5282_5_we0_local;
assign v5282_6_address0 = v5282_6_addr_reg_2646_pp0_iter6_reg;
assign v5282_6_address1 = zext_ln7560_6_fu_1451_p1;
assign v5282_6_ce0 = v5282_6_ce0_local;
assign v5282_6_ce1 = v5282_6_ce1_local;
assign v5282_6_d0 = select_ln7674_reg_2911;
assign v5282_6_we0 = v5282_6_we0_local;
assign v5282_7_address0 = v5282_7_addr_reg_2652_pp0_iter6_reg;
assign v5282_7_address1 = zext_ln7560_6_fu_1451_p1;
assign v5282_7_ce0 = v5282_7_ce0_local;
assign v5282_7_ce1 = v5282_7_ce1_local;
assign v5282_7_d0 = select_ln7664_reg_2906;
assign v5282_7_we0 = v5282_7_we0_local;
assign v5282_8_address0 = v5282_8_addr_reg_2658_pp0_iter6_reg;
assign v5282_8_address1 = zext_ln7560_6_fu_1451_p1;
assign v5282_8_ce0 = v5282_8_ce0_local;
assign v5282_8_ce1 = v5282_8_ce1_local;
assign v5282_8_d0 = select_ln7653_reg_2901;
assign v5282_8_we0 = v5282_8_we0_local;
assign v5282_9_address0 = v5282_9_addr_reg_2664_pp0_iter6_reg;
assign v5282_9_address1 = zext_ln7560_6_fu_1451_p1;
assign v5282_9_ce0 = v5282_9_ce0_local;
assign v5282_9_ce1 = v5282_9_ce1_local;
assign v5282_9_d0 = select_ln7643_reg_2896;
assign v5282_9_we0 = v5282_9_we0_local;
assign v5282_address0 = v5282_addr_reg_2610_pp0_iter6_reg;
assign v5282_address1 = zext_ln7560_6_fu_1451_p1;
assign v5282_ce0 = v5282_ce0_local;
assign v5282_ce1 = v5282_ce1_local;
assign v5282_d0 = select_ln7735_reg_2941;
assign v5282_we0 = v5282_we0_local;
assign xor_ln7425_fu_1000_p2 = (ap_phi_mux_icmp_ln7427294_phi_fu_925_p4 ^ 1'd1);
assign zext_ln7431_1_fu_1185_p1 = lshr_ln_fu_1175_p4;
assign zext_ln7431_2_fu_1375_p1 = add_ln7431_reg_2354;
assign zext_ln7431_3_fu_1393_p1 = add_ln7431_1_fu_1387_p2;
assign zext_ln7431_fu_1344_p1 = lshr_ln_reg_2297;
assign zext_ln7560_1_fu_1263_p1 = lshr_ln30_fu_1253_p4;
assign zext_ln7560_2_fu_1417_p1 = lshr_ln30_reg_2349_pp0_iter3_reg;
assign zext_ln7560_3_fu_1426_p1 = add_ln7560_reg_2572;
assign zext_ln7560_4_fu_1384_p1 = lshr_ln31_reg_2364;
assign zext_ln7560_5_fu_1442_p1 = lshr_ln31_reg_2364_pp0_iter4_reg;
assign zext_ln7560_6_fu_1451_p1 = add_ln7560_1_fu_1445_p2;
assign zext_ln7560_fu_1401_p1 = lshr_ln29_reg_2342_pp0_iter3_reg;
always @ (posedge ap_clk) begin
    p_cast_reg_2380[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln7431_3_reg_2408[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 
