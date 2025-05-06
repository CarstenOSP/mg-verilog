
module fft1D_512_fft1D_512_Pipeline_loop2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_31_address0,smem_31_ce0,smem_31_we0,smem_31_d0,smem_31_address1,smem_31_ce1,smem_31_we1,smem_31_d1,smem_30_address0,smem_30_ce0,smem_30_we0,smem_30_d0,smem_29_address0,smem_29_ce0,smem_29_we0,smem_29_d0,smem_29_address1,smem_29_ce1,smem_29_we1,smem_29_d1,smem_28_address0,smem_28_ce0,smem_28_we0,smem_28_d0,smem_27_address0,smem_27_ce0,smem_27_we0,smem_27_d0,smem_27_address1,smem_27_ce1,smem_27_we1,smem_27_d1,smem_26_address0,smem_26_ce0,smem_26_we0,smem_26_d0,smem_25_address0,smem_25_ce0,smem_25_we0,smem_25_d0,smem_25_address1,smem_25_ce1,smem_25_we1,smem_25_d1,smem_24_address0,smem_24_ce0,smem_24_we0,smem_24_d0,smem_23_address0,smem_23_ce0,smem_23_we0,smem_23_d0,smem_23_address1,smem_23_ce1,smem_23_we1,smem_23_d1,smem_22_address0,smem_22_ce0,smem_22_we0,smem_22_d0,smem_21_address0,smem_21_ce0,smem_21_we0,smem_21_d0,smem_21_address1,smem_21_ce1,smem_21_we1,smem_21_d1,smem_20_address0,smem_20_ce0,smem_20_we0,smem_20_d0,smem_19_address0,smem_19_ce0,smem_19_we0,smem_19_d0,smem_19_address1,smem_19_ce1,smem_19_we1,smem_19_d1,smem_18_address0,smem_18_ce0,smem_18_we0,smem_18_d0,smem_17_address0,smem_17_ce0,smem_17_we0,smem_17_d0,smem_17_address1,smem_17_ce1,smem_17_we1,smem_17_d1,smem_16_address0,smem_16_ce0,smem_16_we0,smem_16_d0,smem_15_address0,smem_15_ce0,smem_15_we0,smem_15_d0,smem_15_address1,smem_15_ce1,smem_15_we1,smem_15_d1,smem_14_address0,smem_14_ce0,smem_14_we0,smem_14_d0,smem_13_address0,smem_13_ce0,smem_13_we0,smem_13_d0,smem_13_address1,smem_13_ce1,smem_13_we1,smem_13_d1,smem_12_address0,smem_12_ce0,smem_12_we0,smem_12_d0,smem_11_address0,smem_11_ce0,smem_11_we0,smem_11_d0,smem_11_address1,smem_11_ce1,smem_11_we1,smem_11_d1,smem_10_address0,smem_10_ce0,smem_10_we0,smem_10_d0,smem_9_address0,smem_9_ce0,smem_9_we0,smem_9_d0,smem_9_address1,smem_9_ce1,smem_9_we1,smem_9_d1,smem_8_address0,smem_8_ce0,smem_8_we0,smem_8_d0,smem_7_address0,smem_7_ce0,smem_7_we0,smem_7_d0,smem_7_address1,smem_7_ce1,smem_7_we1,smem_7_d1,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_5_address1,smem_5_ce1,smem_5_we1,smem_5_d1,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_3_address1,smem_3_ce1,smem_3_we1,smem_3_d1,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_4_address1,DATA_x_4_ce1,DATA_x_4_q1,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_5_address1,DATA_x_5_ce1,DATA_x_5_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_6_address1,DATA_x_6_ce1,DATA_x_6_q1,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_7_address1,DATA_x_7_ce1,DATA_x_7_q1,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_q0,DATA_x_8_address1,DATA_x_8_ce1,DATA_x_8_q1,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_q0,DATA_x_9_address1,DATA_x_9_ce1,DATA_x_9_q1,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_q0,DATA_x_12_address1,DATA_x_12_ce1,DATA_x_12_q1,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_q0,DATA_x_13_address1,DATA_x_13_ce1,DATA_x_13_q1,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_q0,DATA_x_10_address1,DATA_x_10_ce1,DATA_x_10_q1,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_q0,DATA_x_11_address1,DATA_x_11_ce1,DATA_x_11_q1,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_q0,DATA_x_14_address1,DATA_x_14_ce1,DATA_x_14_q1,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_q0,DATA_x_15_address1,DATA_x_15_ce1,DATA_x_15_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] smem_31_address0;
output   smem_31_ce0;
output   smem_31_we0;
output  [63:0] smem_31_d0;
output  [4:0] smem_31_address1;
output   smem_31_ce1;
output   smem_31_we1;
output  [63:0] smem_31_d1;
output  [4:0] smem_30_address0;
output   smem_30_ce0;
output   smem_30_we0;
output  [63:0] smem_30_d0;
output  [4:0] smem_29_address0;
output   smem_29_ce0;
output   smem_29_we0;
output  [63:0] smem_29_d0;
output  [4:0] smem_29_address1;
output   smem_29_ce1;
output   smem_29_we1;
output  [63:0] smem_29_d1;
output  [4:0] smem_28_address0;
output   smem_28_ce0;
output   smem_28_we0;
output  [63:0] smem_28_d0;
output  [4:0] smem_27_address0;
output   smem_27_ce0;
output   smem_27_we0;
output  [63:0] smem_27_d0;
output  [4:0] smem_27_address1;
output   smem_27_ce1;
output   smem_27_we1;
output  [63:0] smem_27_d1;
output  [4:0] smem_26_address0;
output   smem_26_ce0;
output   smem_26_we0;
output  [63:0] smem_26_d0;
output  [4:0] smem_25_address0;
output   smem_25_ce0;
output   smem_25_we0;
output  [63:0] smem_25_d0;
output  [4:0] smem_25_address1;
output   smem_25_ce1;
output   smem_25_we1;
output  [63:0] smem_25_d1;
output  [4:0] smem_24_address0;
output   smem_24_ce0;
output   smem_24_we0;
output  [63:0] smem_24_d0;
output  [4:0] smem_23_address0;
output   smem_23_ce0;
output   smem_23_we0;
output  [63:0] smem_23_d0;
output  [4:0] smem_23_address1;
output   smem_23_ce1;
output   smem_23_we1;
output  [63:0] smem_23_d1;
output  [4:0] smem_22_address0;
output   smem_22_ce0;
output   smem_22_we0;
output  [63:0] smem_22_d0;
output  [4:0] smem_21_address0;
output   smem_21_ce0;
output   smem_21_we0;
output  [63:0] smem_21_d0;
output  [4:0] smem_21_address1;
output   smem_21_ce1;
output   smem_21_we1;
output  [63:0] smem_21_d1;
output  [4:0] smem_20_address0;
output   smem_20_ce0;
output   smem_20_we0;
output  [63:0] smem_20_d0;
output  [4:0] smem_19_address0;
output   smem_19_ce0;
output   smem_19_we0;
output  [63:0] smem_19_d0;
output  [4:0] smem_19_address1;
output   smem_19_ce1;
output   smem_19_we1;
output  [63:0] smem_19_d1;
output  [4:0] smem_18_address0;
output   smem_18_ce0;
output   smem_18_we0;
output  [63:0] smem_18_d0;
output  [4:0] smem_17_address0;
output   smem_17_ce0;
output   smem_17_we0;
output  [63:0] smem_17_d0;
output  [4:0] smem_17_address1;
output   smem_17_ce1;
output   smem_17_we1;
output  [63:0] smem_17_d1;
output  [4:0] smem_16_address0;
output   smem_16_ce0;
output   smem_16_we0;
output  [63:0] smem_16_d0;
output  [4:0] smem_15_address0;
output   smem_15_ce0;
output   smem_15_we0;
output  [63:0] smem_15_d0;
output  [4:0] smem_15_address1;
output   smem_15_ce1;
output   smem_15_we1;
output  [63:0] smem_15_d1;
output  [4:0] smem_14_address0;
output   smem_14_ce0;
output   smem_14_we0;
output  [63:0] smem_14_d0;
output  [4:0] smem_13_address0;
output   smem_13_ce0;
output   smem_13_we0;
output  [63:0] smem_13_d0;
output  [4:0] smem_13_address1;
output   smem_13_ce1;
output   smem_13_we1;
output  [63:0] smem_13_d1;
output  [4:0] smem_12_address0;
output   smem_12_ce0;
output   smem_12_we0;
output  [63:0] smem_12_d0;
output  [4:0] smem_11_address0;
output   smem_11_ce0;
output   smem_11_we0;
output  [63:0] smem_11_d0;
output  [4:0] smem_11_address1;
output   smem_11_ce1;
output   smem_11_we1;
output  [63:0] smem_11_d1;
output  [4:0] smem_10_address0;
output   smem_10_ce0;
output   smem_10_we0;
output  [63:0] smem_10_d0;
output  [4:0] smem_9_address0;
output   smem_9_ce0;
output   smem_9_we0;
output  [63:0] smem_9_d0;
output  [4:0] smem_9_address1;
output   smem_9_ce1;
output   smem_9_we1;
output  [63:0] smem_9_d1;
output  [4:0] smem_8_address0;
output   smem_8_ce0;
output   smem_8_we0;
output  [63:0] smem_8_d0;
output  [4:0] smem_7_address0;
output   smem_7_ce0;
output   smem_7_we0;
output  [63:0] smem_7_d0;
output  [4:0] smem_7_address1;
output   smem_7_ce1;
output   smem_7_we1;
output  [63:0] smem_7_d1;
output  [4:0] smem_6_address0;
output   smem_6_ce0;
output   smem_6_we0;
output  [63:0] smem_6_d0;
output  [4:0] smem_5_address0;
output   smem_5_ce0;
output   smem_5_we0;
output  [63:0] smem_5_d0;
output  [4:0] smem_5_address1;
output   smem_5_ce1;
output   smem_5_we1;
output  [63:0] smem_5_d1;
output  [4:0] smem_4_address0;
output   smem_4_ce0;
output   smem_4_we0;
output  [63:0] smem_4_d0;
output  [4:0] smem_3_address0;
output   smem_3_ce0;
output   smem_3_we0;
output  [63:0] smem_3_d0;
output  [4:0] smem_3_address1;
output   smem_3_ce1;
output   smem_3_we1;
output  [63:0] smem_3_d1;
output  [4:0] smem_2_address0;
output   smem_2_ce0;
output   smem_2_we0;
output  [63:0] smem_2_d0;
output  [4:0] smem_1_address0;
output   smem_1_ce0;
output   smem_1_we0;
output  [63:0] smem_1_d0;
output  [4:0] smem_1_address1;
output   smem_1_ce1;
output   smem_1_we1;
output  [63:0] smem_1_d1;
output  [4:0] smem_address0;
output   smem_ce0;
output   smem_we0;
output  [63:0] smem_d0;
output  [4:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [4:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [4:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [4:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [4:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [4:0] DATA_x_4_address1;
output   DATA_x_4_ce1;
input  [63:0] DATA_x_4_q1;
output  [4:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [4:0] DATA_x_5_address1;
output   DATA_x_5_ce1;
input  [63:0] DATA_x_5_q1;
output  [4:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [4:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
input  [63:0] DATA_x_2_q1;
output  [4:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [4:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
input  [63:0] DATA_x_3_q1;
output  [4:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [4:0] DATA_x_6_address1;
output   DATA_x_6_ce1;
input  [63:0] DATA_x_6_q1;
output  [4:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
output  [4:0] DATA_x_7_address1;
output   DATA_x_7_ce1;
input  [63:0] DATA_x_7_q1;
output  [4:0] DATA_x_8_address0;
output   DATA_x_8_ce0;
input  [63:0] DATA_x_8_q0;
output  [4:0] DATA_x_8_address1;
output   DATA_x_8_ce1;
input  [63:0] DATA_x_8_q1;
output  [4:0] DATA_x_9_address0;
output   DATA_x_9_ce0;
input  [63:0] DATA_x_9_q0;
output  [4:0] DATA_x_9_address1;
output   DATA_x_9_ce1;
input  [63:0] DATA_x_9_q1;
output  [4:0] DATA_x_12_address0;
output   DATA_x_12_ce0;
input  [63:0] DATA_x_12_q0;
output  [4:0] DATA_x_12_address1;
output   DATA_x_12_ce1;
input  [63:0] DATA_x_12_q1;
output  [4:0] DATA_x_13_address0;
output   DATA_x_13_ce0;
input  [63:0] DATA_x_13_q0;
output  [4:0] DATA_x_13_address1;
output   DATA_x_13_ce1;
input  [63:0] DATA_x_13_q1;
output  [4:0] DATA_x_10_address0;
output   DATA_x_10_ce0;
input  [63:0] DATA_x_10_q0;
output  [4:0] DATA_x_10_address1;
output   DATA_x_10_ce1;
input  [63:0] DATA_x_10_q1;
output  [4:0] DATA_x_11_address0;
output   DATA_x_11_ce0;
input  [63:0] DATA_x_11_q0;
output  [4:0] DATA_x_11_address1;
output   DATA_x_11_ce1;
input  [63:0] DATA_x_11_q1;
output  [4:0] DATA_x_14_address0;
output   DATA_x_14_ce0;
input  [63:0] DATA_x_14_q0;
output  [4:0] DATA_x_14_address1;
output   DATA_x_14_ce1;
input  [63:0] DATA_x_14_q1;
output  [4:0] DATA_x_15_address0;
output   DATA_x_15_ce0;
input  [63:0] DATA_x_15_q0;
output  [4:0] DATA_x_15_address1;
output   DATA_x_15_ce1;
input  [63:0] DATA_x_15_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_3054_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [6:0] tid_reg_4079;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_4087;
wire   [4:0] lshr_ln9_fu_3062_p4;
reg   [4:0] lshr_ln9_reg_4091;
wire   [4:0] or_ln5_fu_3102_p3;
reg   [4:0] or_ln5_reg_4136;
wire   [3:0] tmp_69_fu_3110_p4;
reg   [3:0] tmp_69_reg_4180;
wire   [4:0] or_ln172_1_fu_3130_p3;
reg   [4:0] or_ln172_1_reg_4186;
wire   [4:0] or_ln172_2_fu_3166_p3;
reg   [4:0] or_ln172_2_reg_4230;
reg   [4:0] smem_2_addr_4_reg_4277;
wire    ap_block_pp0_stage1_11001;
reg   [4:0] smem_6_addr_4_reg_4282;
reg   [4:0] smem_10_addr_4_reg_4287;
reg   [4:0] smem_14_addr_4_reg_4292;
reg   [4:0] smem_18_addr_4_reg_4297;
reg   [4:0] smem_22_addr_4_reg_4302;
reg   [4:0] smem_26_addr_4_reg_4307;
reg   [4:0] smem_30_addr_4_reg_4312;
wire   [5:0] offset_3_fu_3626_p3;
reg   [5:0] offset_3_reg_4317;
reg   [63:0] DATA_x_load_1_reg_4323;
reg   [63:0] DATA_x_1_load_1_reg_4335;
reg   [63:0] DATA_x_4_load_1_reg_4347;
reg   [63:0] DATA_x_5_load_1_reg_4359;
reg   [63:0] DATA_x_2_load_1_reg_4371;
reg   [63:0] DATA_x_3_load_1_reg_4383;
reg   [63:0] DATA_x_6_load_1_reg_4395;
reg   [63:0] DATA_x_7_load_1_reg_4407;
reg   [63:0] DATA_x_9_load_1_reg_4419;
reg   [63:0] DATA_x_12_load_1_reg_4431;
reg   [63:0] DATA_x_13_load_1_reg_4443;
reg   [63:0] DATA_x_10_load_1_reg_4455;
reg   [63:0] DATA_x_11_load_1_reg_4467;
reg   [63:0] DATA_x_14_load_1_reg_4479;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln178_fu_3072_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln178_1_fu_3146_p1;
wire   [63:0] zext_ln172_fu_3199_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln179_fu_3251_p1;
wire   [63:0] zext_ln180_fu_3271_p1;
wire   [63:0] zext_ln181_fu_3307_p1;
wire   [63:0] zext_ln182_fu_3335_p1;
wire   [63:0] zext_ln183_fu_3367_p1;
wire   [63:0] zext_ln184_fu_3395_p1;
wire   [63:0] zext_ln185_fu_3423_p1;
wire   [63:0] zext_ln179_1_fu_3470_p1;
wire   [63:0] zext_ln181_1_fu_3498_p1;
wire   [63:0] zext_ln182_1_fu_3526_p1;
wire   [63:0] zext_ln183_1_fu_3558_p1;
wire   [63:0] zext_ln184_1_fu_3586_p1;
wire   [63:0] zext_ln185_1_fu_3614_p1;
wire   [63:0] zext_ln185_3_fu_3653_p1;
wire   [63:0] zext_ln179_2_fu_3710_p1;
wire   [63:0] zext_ln180_1_fu_3738_p1;
wire   [63:0] zext_ln181_2_fu_3766_p1;
wire   [63:0] zext_ln182_2_fu_3794_p1;
wire   [63:0] zext_ln183_2_fu_3826_p1;
wire   [63:0] zext_ln184_2_fu_3854_p1;
wire   [63:0] zext_ln185_2_fu_3882_p1;
wire   [63:0] zext_ln179_3_fu_3916_p1;
wire   [63:0] zext_ln180_2_fu_3944_p1;
wire   [63:0] zext_ln181_3_fu_3972_p1;
wire   [63:0] zext_ln182_3_fu_4000_p1;
wire   [63:0] zext_ln183_3_fu_4032_p1;
wire   [63:0] zext_ln184_3_fu_4060_p1;
reg   [6:0] tid_1_fu_234;
wire   [6:0] add_ln174_fu_3665_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    DATA_x_ce1_local;
reg    DATA_x_ce0_local;
reg    DATA_x_1_ce1_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_4_ce1_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_5_ce1_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_2_ce1_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_3_ce1_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_6_ce1_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_7_ce1_local;
reg    DATA_x_7_ce0_local;
reg    DATA_x_8_ce1_local;
reg    DATA_x_8_ce0_local;
reg    DATA_x_9_ce1_local;
reg    DATA_x_9_ce0_local;
reg    DATA_x_12_ce1_local;
reg    DATA_x_12_ce0_local;
reg    DATA_x_13_ce1_local;
reg    DATA_x_13_ce0_local;
reg    DATA_x_10_ce1_local;
reg    DATA_x_10_ce0_local;
reg    DATA_x_11_ce1_local;
reg    DATA_x_11_ce0_local;
reg    DATA_x_14_ce1_local;
reg    DATA_x_14_ce0_local;
reg    DATA_x_15_ce1_local;
reg    DATA_x_15_ce0_local;
reg    smem_24_we0_local;
wire   [4:0] trunc_ln172_fu_3189_p1;
reg   [63:0] smem_24_d0_local;
reg    smem_24_ce0_local;
reg   [4:0] smem_24_address0_local;
reg    ap_predicate_pred1041_state3;
reg    ap_predicate_pred1048_state3;
reg    ap_predicate_pred1055_state3;
reg    ap_predicate_pred1062_state3;
reg    smem_26_we0_local;
reg   [63:0] smem_26_d0_local;
reg    smem_26_ce0_local;
reg   [4:0] smem_26_address0_local;
reg    ap_predicate_pred1073_state3;
reg    smem_20_we0_local;
reg   [63:0] smem_20_d0_local;
reg    smem_20_ce0_local;
reg   [4:0] smem_20_address0_local;
reg    ap_predicate_pred1098_state3;
reg    smem_22_we0_local;
reg   [63:0] smem_22_d0_local;
reg    smem_22_ce0_local;
reg   [4:0] smem_22_address0_local;
reg    smem_16_we0_local;
reg   [63:0] smem_16_d0_local;
reg    smem_16_ce0_local;
reg   [4:0] smem_16_address0_local;
reg    ap_predicate_pred1128_state3;
reg    smem_18_we0_local;
reg   [63:0] smem_18_d0_local;
reg    smem_18_ce0_local;
reg   [4:0] smem_18_address0_local;
reg    smem_12_we0_local;
reg   [63:0] smem_12_d0_local;
reg    smem_12_ce0_local;
reg   [4:0] smem_12_address0_local;
reg    ap_predicate_pred1169_state3;
reg    smem_14_we0_local;
reg   [63:0] smem_14_d0_local;
reg    smem_14_ce0_local;
reg   [4:0] smem_14_address0_local;
reg    smem_8_we0_local;
reg   [63:0] smem_8_d0_local;
reg    smem_8_ce0_local;
reg   [4:0] smem_8_address0_local;
reg    smem_10_we0_local;
reg   [63:0] smem_10_d0_local;
reg    smem_10_ce0_local;
reg   [4:0] smem_10_address0_local;
reg    smem_4_we0_local;
reg   [63:0] smem_4_d0_local;
reg    smem_4_ce0_local;
reg   [4:0] smem_4_address0_local;
reg    smem_6_we0_local;
reg   [63:0] smem_6_d0_local;
reg    smem_6_ce0_local;
reg   [4:0] smem_6_address0_local;
reg    smem_we0_local;
reg   [63:0] smem_d0_local;
reg    smem_ce0_local;
reg   [4:0] smem_address0_local;
reg    smem_2_we0_local;
reg   [63:0] smem_2_d0_local;
reg    smem_2_ce0_local;
reg   [4:0] smem_2_address0_local;
reg    smem_28_we0_local;
reg   [63:0] smem_28_d0_local;
reg    smem_28_ce0_local;
reg   [4:0] smem_28_address0_local;
reg    smem_30_we0_local;
reg   [63:0] smem_30_d0_local;
reg    smem_30_ce0_local;
reg   [4:0] smem_30_address0_local;
reg    smem_25_we1_local;
reg   [63:0] smem_25_d1_local;
reg    smem_25_ce1_local;
reg   [4:0] smem_25_address1_local;
reg    smem_25_we0_local;
reg   [63:0] smem_25_d0_local;
reg    smem_25_ce0_local;
reg   [4:0] smem_25_address0_local;
reg    ap_predicate_pred1311_state3;
reg    ap_predicate_pred1319_state3;
reg    ap_predicate_pred1327_state3;
reg    smem_21_we1_local;
reg   [63:0] smem_21_d1_local;
reg    smem_21_ce1_local;
reg   [4:0] smem_21_address1_local;
reg    smem_21_we0_local;
reg   [63:0] smem_21_d0_local;
reg    smem_21_ce0_local;
reg   [4:0] smem_21_address0_local;
reg    ap_predicate_pred1304_state3;
reg    smem_17_we1_local;
reg   [63:0] smem_17_d1_local;
reg    smem_17_ce1_local;
reg   [4:0] smem_17_address1_local;
reg    smem_17_we0_local;
reg   [63:0] smem_17_d0_local;
reg    smem_17_ce0_local;
reg   [4:0] smem_17_address0_local;
reg    ap_predicate_pred1348_state3;
reg    smem_13_we1_local;
reg   [63:0] smem_13_d1_local;
reg    smem_13_ce1_local;
reg   [4:0] smem_13_address1_local;
reg    smem_13_we0_local;
reg   [63:0] smem_13_d0_local;
reg    smem_13_ce0_local;
reg   [4:0] smem_13_address0_local;
reg    ap_predicate_pred1376_state3;
reg    smem_9_we1_local;
reg   [63:0] smem_9_d1_local;
reg    smem_9_ce1_local;
reg   [4:0] smem_9_address1_local;
reg    smem_9_we0_local;
reg   [63:0] smem_9_d0_local;
reg    smem_9_ce0_local;
reg   [4:0] smem_9_address0_local;
reg    ap_predicate_pred1473_state3;
reg    smem_5_we1_local;
reg   [63:0] smem_5_d1_local;
reg    smem_5_ce1_local;
reg   [4:0] smem_5_address1_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [4:0] smem_5_address0_local;
reg    ap_predicate_pred1418_state3;
reg    smem_1_we1_local;
reg   [63:0] smem_1_d1_local;
reg    smem_1_ce1_local;
reg   [4:0] smem_1_address1_local;
reg    smem_1_we0_local;
reg   [63:0] smem_1_d0_local;
reg    smem_1_ce0_local;
reg   [4:0] smem_1_address0_local;
reg    smem_29_we1_local;
reg   [63:0] smem_29_d1_local;
reg    smem_29_ce1_local;
reg   [4:0] smem_29_address1_local;
reg    smem_29_we0_local;
reg   [63:0] smem_29_d0_local;
reg    smem_29_ce0_local;
reg   [4:0] smem_29_address0_local;
reg    smem_19_we1_local;
reg   [63:0] smem_19_d1_local;
reg    smem_19_ce1_local;
reg   [4:0] smem_19_address1_local;
reg    smem_19_we0_local;
reg   [63:0] smem_19_d0_local;
reg    smem_19_ce0_local;
reg   [4:0] smem_19_address0_local;
reg    smem_27_we1_local;
reg   [63:0] smem_27_d1_local;
reg    smem_27_ce1_local;
reg   [4:0] smem_27_address1_local;
reg    smem_27_we0_local;
reg   [63:0] smem_27_d0_local;
reg    smem_27_ce0_local;
reg   [4:0] smem_27_address0_local;
reg    smem_23_we1_local;
reg   [63:0] smem_23_d1_local;
reg    smem_23_ce1_local;
reg   [4:0] smem_23_address1_local;
reg    smem_23_we0_local;
reg   [63:0] smem_23_d0_local;
reg    smem_23_ce0_local;
reg   [4:0] smem_23_address0_local;
reg    smem_31_we1_local;
reg   [63:0] smem_31_d1_local;
reg    smem_31_ce1_local;
reg   [4:0] smem_31_address1_local;
reg    smem_31_we0_local;
reg   [63:0] smem_31_d0_local;
reg    smem_31_ce0_local;
reg   [4:0] smem_31_address0_local;
reg    smem_15_we1_local;
reg   [63:0] smem_15_d1_local;
reg    smem_15_ce1_local;
reg   [4:0] smem_15_address1_local;
reg    smem_15_we0_local;
reg   [63:0] smem_15_d0_local;
reg    smem_15_ce0_local;
reg   [4:0] smem_15_address0_local;
reg    smem_11_we1_local;
reg   [63:0] smem_11_d1_local;
reg    smem_11_ce1_local;
reg   [4:0] smem_11_address1_local;
reg    smem_11_we0_local;
reg   [63:0] smem_11_d0_local;
reg    smem_11_ce0_local;
reg   [4:0] smem_11_address0_local;
reg    smem_7_we1_local;
reg   [63:0] smem_7_d1_local;
reg    smem_7_ce1_local;
reg   [4:0] smem_7_address1_local;
reg    smem_7_we0_local;
reg   [63:0] smem_7_d0_local;
reg    smem_7_ce0_local;
reg   [4:0] smem_7_address0_local;
reg    smem_3_we1_local;
reg   [63:0] smem_3_d1_local;
reg    smem_3_ce1_local;
reg   [4:0] smem_3_address1_local;
reg    smem_3_we0_local;
reg   [63:0] smem_3_d0_local;
reg    smem_3_ce0_local;
reg   [4:0] smem_3_address0_local;
wire   [3:0] tmp_s_fu_3092_p4;
wire   [2:0] tmp_70_fu_3120_p4;
wire   [4:0] or_ln6_fu_3138_p3;
wire   [5:0] offset_fu_3174_p1;
wire   [0:0] tmp_68_fu_3192_p3;
wire   [8:0] zext_ln172_10_fu_3185_p1;
wire   [8:0] add_ln179_fu_3235_p2;
wire   [3:0] lshr_ln10_fu_3241_p4;
wire   [1:0] zext_ln_fu_3263_p3;
wire   [8:0] add_ln181_fu_3291_p2;
wire   [3:0] lshr_ln11_fu_3297_p4;
wire   [7:0] zext_ln172_9_fu_3181_p1;
wire   [7:0] add_ln182_fu_3319_p2;
wire   [2:0] lshr_ln12_fu_3325_p4;
wire   [7:0] add_ln183_fu_3347_p2;
wire   [2:0] trunc_ln5_fu_3353_p4;
wire  signed [3:0] sext_ln183_fu_3363_p1;
wire   [8:0] add_ln184_fu_3379_p2;
wire   [3:0] lshr_ln13_fu_3385_p4;
wire   [9:0] zext_ln172_8_fu_3177_p1;
wire   [9:0] add_ln185_fu_3407_p2;
wire   [4:0] lshr_ln14_fu_3413_p4;
wire   [5:0] offset_1_fu_3435_p3;
wire   [8:0] zext_ln172_13_fu_3450_p1;
wire   [8:0] add_ln179_1_fu_3454_p2;
wire   [3:0] lshr_ln179_1_fu_3460_p4;
wire   [8:0] add_ln181_1_fu_3482_p2;
wire   [3:0] lshr_ln181_1_fu_3488_p4;
wire   [7:0] zext_ln172_12_fu_3446_p1;
wire   [7:0] add_ln182_1_fu_3510_p2;
wire   [2:0] lshr_ln182_1_fu_3516_p4;
wire   [7:0] add_ln183_1_fu_3538_p2;
wire   [2:0] trunc_ln183_1_fu_3544_p4;
wire  signed [3:0] sext_ln183_1_fu_3554_p1;
wire   [8:0] add_ln184_1_fu_3570_p2;
wire   [3:0] lshr_ln184_1_fu_3576_p4;
wire   [9:0] zext_ln172_11_fu_3442_p1;
wire   [9:0] add_ln185_1_fu_3598_p2;
wire   [4:0] lshr_ln185_1_fu_3604_p4;
wire   [9:0] zext_ln172_17_fu_3633_p1;
wire   [9:0] add_ln185_3_fu_3637_p2;
wire   [4:0] lshr_ln185_3_fu_3643_p4;
wire   [5:0] offset_2_fu_3675_p3;
wire   [8:0] zext_ln172_16_fu_3690_p1;
wire   [8:0] add_ln179_2_fu_3694_p2;
wire   [3:0] lshr_ln179_2_fu_3700_p4;
wire   [7:0] zext_ln172_15_fu_3686_p1;
wire   [7:0] add_ln180_fu_3722_p2;
wire   [2:0] lshr_ln180_2_fu_3728_p4;
wire   [8:0] add_ln181_2_fu_3750_p2;
wire   [3:0] lshr_ln181_2_fu_3756_p4;
wire   [7:0] add_ln182_2_fu_3778_p2;
wire   [2:0] lshr_ln182_2_fu_3784_p4;
wire   [7:0] add_ln183_2_fu_3806_p2;
wire   [2:0] trunc_ln183_2_fu_3812_p4;
wire  signed [3:0] sext_ln183_2_fu_3822_p1;
wire   [8:0] add_ln184_2_fu_3838_p2;
wire   [3:0] lshr_ln184_2_fu_3844_p4;
wire   [9:0] zext_ln172_14_fu_3682_p1;
wire   [9:0] add_ln185_2_fu_3866_p2;
wire   [4:0] lshr_ln185_2_fu_3872_p4;
wire   [8:0] zext_ln172_19_fu_3897_p1;
wire   [8:0] add_ln179_3_fu_3900_p2;
wire   [3:0] lshr_ln179_3_fu_3906_p4;
wire   [7:0] zext_ln172_18_fu_3894_p1;
wire   [7:0] add_ln180_1_fu_3928_p2;
wire   [2:0] lshr_ln180_3_fu_3934_p4;
wire   [8:0] add_ln181_3_fu_3956_p2;
wire   [3:0] lshr_ln181_3_fu_3962_p4;
wire   [7:0] add_ln182_3_fu_3984_p2;
wire   [2:0] lshr_ln182_3_fu_3990_p4;
wire   [7:0] add_ln183_3_fu_4012_p2;
wire   [2:0] trunc_ln183_3_fu_4018_p4;
wire  signed [3:0] sext_ln183_3_fu_4028_p1;
wire   [8:0] add_ln184_3_fu_4044_p2;
wire   [3:0] lshr_ln184_3_fu_4050_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_2091;
reg    ap_condition_640;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_1_fu_234 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_1_fu_234 <= 7'd0;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_1_fu_234 <= add_ln174_fu_3665_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_10_load_1_reg_4455 <= DATA_x_10_q0;
        DATA_x_11_load_1_reg_4467 <= DATA_x_11_q0;
        DATA_x_12_load_1_reg_4431 <= DATA_x_12_q0;
        DATA_x_13_load_1_reg_4443 <= DATA_x_13_q0;
        DATA_x_14_load_1_reg_4479 <= DATA_x_14_q0;
        DATA_x_1_load_1_reg_4335 <= DATA_x_1_q0;
        DATA_x_2_load_1_reg_4371 <= DATA_x_2_q0;
        DATA_x_3_load_1_reg_4383 <= DATA_x_3_q0;
        DATA_x_4_load_1_reg_4347 <= DATA_x_4_q0;
        DATA_x_5_load_1_reg_4359 <= DATA_x_5_q0;
        DATA_x_6_load_1_reg_4395 <= DATA_x_6_q0;
        DATA_x_7_load_1_reg_4407 <= DATA_x_7_q0;
        DATA_x_9_load_1_reg_4419 <= DATA_x_9_q0;
        DATA_x_load_1_reg_4323 <= DATA_x_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_predicate_pred1041_state3 <= (or_ln172_1_reg_4186 == 5'd18);
        ap_predicate_pred1048_state3 <= (or_ln172_1_reg_4186 == 5'd14);
        ap_predicate_pred1055_state3 <= (or_ln172_1_reg_4186 == 5'd10);
        ap_predicate_pred1062_state3 <= (or_ln172_1_reg_4186 == 5'd22);
        ap_predicate_pred1073_state3 <= (or_ln172_1_reg_4186 == 5'd26);
        ap_predicate_pred1098_state3 <= (or_ln172_1_reg_4186 == 5'd6);
        ap_predicate_pred1128_state3 <= (or_ln172_1_reg_4186 == 5'd2);
        ap_predicate_pred1169_state3 <= (~(or_ln172_1_reg_4186 == 5'd2) & ~(or_ln172_1_reg_4186 == 5'd6) & ~(or_ln172_1_reg_4186 == 5'd26) & ~(or_ln172_1_reg_4186 == 5'd22) & ~(or_ln172_1_reg_4186 == 5'd10) & ~(or_ln172_1_reg_4186 == 5'd14) & ~(or_ln172_1_reg_4186 == 5'd18));
        ap_predicate_pred1304_state3 <= (or_ln172_2_reg_4230 == 5'd11);
        ap_predicate_pred1311_state3 <= (or_ln172_2_reg_4230 == 5'd19);
        ap_predicate_pred1319_state3 <= (or_ln172_2_reg_4230 == 5'd15);
        ap_predicate_pred1327_state3 <= (or_ln172_2_reg_4230 == 5'd23);
        ap_predicate_pred1348_state3 <= (or_ln172_2_reg_4230 == 5'd7);
        ap_predicate_pred1376_state3 <= (or_ln172_2_reg_4230 == 5'd3);
        ap_predicate_pred1418_state3 <= (or_ln172_2_reg_4230 == 5'd27);
        ap_predicate_pred1473_state3 <= (~(or_ln172_2_reg_4230 == 5'd27) & ~(or_ln172_2_reg_4230 == 5'd3) & ~(or_ln172_2_reg_4230 == 5'd7) & ~(or_ln172_2_reg_4230 == 5'd23) & ~(or_ln172_2_reg_4230 == 5'd15) & ~(or_ln172_2_reg_4230 == 5'd19) & ~(or_ln172_2_reg_4230 == 5'd11));
        offset_3_reg_4317[5 : 2] <= offset_3_fu_3626_p3[5 : 2];
        smem_10_addr_4_reg_4287[0] <= zext_ln172_fu_3199_p1[0];
        smem_14_addr_4_reg_4292[0] <= zext_ln172_fu_3199_p1[0];
        smem_18_addr_4_reg_4297[0] <= zext_ln172_fu_3199_p1[0];
        smem_22_addr_4_reg_4302[0] <= zext_ln172_fu_3199_p1[0];
        smem_26_addr_4_reg_4307[0] <= zext_ln172_fu_3199_p1[0];
        smem_2_addr_4_reg_4277[0] <= zext_ln172_fu_3199_p1[0];
        smem_30_addr_4_reg_4312[0] <= zext_ln172_fu_3199_p1[0];
        smem_6_addr_4_reg_4282[0] <= zext_ln172_fu_3199_p1[0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln9_reg_4091 <= {{ap_sig_allocacmp_tid[5:1]}};
        or_ln172_1_reg_4186[4 : 2] <= or_ln172_1_fu_3130_p3[4 : 2];
        or_ln172_2_reg_4230[4 : 2] <= or_ln172_2_fu_3166_p3[4 : 2];
        or_ln5_reg_4136[4 : 1] <= or_ln5_fu_3102_p3[4 : 1];
        tid_reg_4079 <= ap_sig_allocacmp_tid;
        tmp_69_reg_4180 <= {{ap_sig_allocacmp_tid[5:2]}};
        tmp_reg_4087 <= ap_sig_allocacmp_tid[32'd6];
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
        DATA_x_10_ce1_local = 1'b1;
    end else begin
        DATA_x_10_ce1_local = 1'b0;
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
        DATA_x_11_ce1_local = 1'b1;
    end else begin
        DATA_x_11_ce1_local = 1'b0;
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
        DATA_x_12_ce1_local = 1'b1;
    end else begin
        DATA_x_12_ce1_local = 1'b0;
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
        DATA_x_13_ce1_local = 1'b1;
    end else begin
        DATA_x_13_ce1_local = 1'b0;
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
        DATA_x_14_ce1_local = 1'b1;
    end else begin
        DATA_x_14_ce1_local = 1'b0;
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
        DATA_x_15_ce1_local = 1'b1;
    end else begin
        DATA_x_15_ce1_local = 1'b0;
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
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
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
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
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
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
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
        DATA_x_4_ce1_local = 1'b1;
    end else begin
        DATA_x_4_ce1_local = 1'b0;
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
        DATA_x_5_ce1_local = 1'b1;
    end else begin
        DATA_x_5_ce1_local = 1'b0;
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
        DATA_x_6_ce1_local = 1'b1;
    end else begin
        DATA_x_6_ce1_local = 1'b0;
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
        DATA_x_7_ce1_local = 1'b1;
    end else begin
        DATA_x_7_ce1_local = 1'b0;
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
        DATA_x_8_ce1_local = 1'b1;
    end else begin
        DATA_x_8_ce1_local = 1'b0;
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
        DATA_x_9_ce1_local = 1'b1;
    end else begin
        DATA_x_9_ce1_local = 1'b0;
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
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_3054_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_1_fu_234;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1))) begin
        smem_10_address0_local = zext_ln183_2_fu_3826_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1))) begin
        smem_10_address0_local = zext_ln179_2_fu_3710_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1))) begin
        smem_10_address0_local = zext_ln182_2_fu_3794_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1))) begin
        smem_10_address0_local = smem_10_addr_4_reg_4287;
    end else if ((~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln185_fu_3423_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0))) begin
        smem_10_address0_local = zext_ln181_fu_3307_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4))) begin
        smem_10_address0_local = zext_ln184_fu_3395_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8))) begin
        smem_10_address0_local = zext_ln180_fu_3271_p1;
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1)) | (~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1))) begin
        smem_10_d0_local = DATA_x_3_load_1_reg_4383;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1))) begin
        smem_10_d0_local = DATA_x_1_load_1_reg_4335;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1))) begin
        smem_10_d0_local = DATA_x_2_load_1_reg_4371;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1))) begin
        smem_10_d0_local = DATA_x_load_1_reg_4323;
    end else if ((~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_x_7_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0))) begin
        smem_10_d0_local = DATA_x_5_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4))) begin
        smem_10_d0_local = DATA_x_6_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8))) begin
        smem_10_d0_local = DATA_x_4_q1;
    end else begin
        smem_10_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1)) | (~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_we0_local = 1'b1;
    end else begin
        smem_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1))) begin
        smem_11_address0_local = zext_ln183_3_fu_4032_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1))) begin
        smem_11_address0_local = zext_ln179_3_fu_3916_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1))) begin
        smem_11_address0_local = zext_ln182_3_fu_4000_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln172_fu_3199_p1;
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((1'b1 == ap_condition_2091)) begin
            smem_11_address1_local = zext_ln185_1_fu_3614_p1;
        end else if ((or_ln5_reg_4136 == 5'd1)) begin
            smem_11_address1_local = zext_ln181_1_fu_3498_p1;
        end else if ((or_ln5_reg_4136 == 5'd5)) begin
            smem_11_address1_local = zext_ln184_1_fu_3586_p1;
        end else if ((or_ln5_reg_4136 == 5'd9)) begin
            smem_11_address1_local = zext_ln180_fu_3271_p1;
        end else begin
            smem_11_address1_local = 'bx;
        end
    end else begin
        smem_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln5_reg_4136 == 5'd1) & ~(or_ln5_reg_4136 == 5'd5) & ~(or_ln5_reg_4136 == 5'd9) & ~(or_ln5_reg_4136 == 5'd21) & ~(or_ln5_reg_4136 == 5'd13) & ~(or_ln5_reg_4136 == 5'd17) & ~(or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd1) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd5) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd9) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_ce1_local = 1'b1;
    end else begin
        smem_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1))) begin
        smem_11_d0_local = DATA_x_11_load_1_reg_4467;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1))) begin
        smem_11_d0_local = DATA_x_9_load_1_reg_4419;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1))) begin
        smem_11_d0_local = DATA_x_10_load_1_reg_4455;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_x_8_q0;
    end else begin
        smem_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((1'b1 == ap_condition_2091)) begin
            smem_11_d1_local = DATA_x_15_q1;
        end else if ((or_ln5_reg_4136 == 5'd1)) begin
            smem_11_d1_local = DATA_x_13_q1;
        end else if ((or_ln5_reg_4136 == 5'd5)) begin
            smem_11_d1_local = DATA_x_14_q1;
        end else if ((or_ln5_reg_4136 == 5'd9)) begin
            smem_11_d1_local = DATA_x_12_q1;
        end else begin
            smem_11_d1_local = 'bx;
        end
    end else begin
        smem_11_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1)) | ((or_ln172_2_reg_4230 == 5'd11) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_we0_local = 1'b1;
    end else begin
        smem_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln5_reg_4136 == 5'd1) & ~(or_ln5_reg_4136 == 5'd5) & ~(or_ln5_reg_4136 == 5'd9) & ~(or_ln5_reg_4136 == 5'd21) & ~(or_ln5_reg_4136 == 5'd13) & ~(or_ln5_reg_4136 == 5'd17) & ~(or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd1) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd5) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd9) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_we1_local = 1'b1;
    end else begin
        smem_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1))) begin
        smem_12_address0_local = zext_ln185_2_fu_3882_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1))) begin
        smem_12_address0_local = zext_ln181_2_fu_3766_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1))) begin
        smem_12_address0_local = zext_ln184_2_fu_3854_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1))) begin
        smem_12_address0_local = zext_ln180_1_fu_3738_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0))) begin
        smem_12_address0_local = zext_ln183_fu_3367_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4))) begin
        smem_12_address0_local = zext_ln179_fu_3251_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8))) begin
        smem_12_address0_local = zext_ln182_fu_3335_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12))) begin
        smem_12_address0_local = zext_ln172_fu_3199_p1;
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1))) begin
        smem_12_d0_local = DATA_x_7_load_1_reg_4407;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1))) begin
        smem_12_d0_local = DATA_x_5_load_1_reg_4359;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1))) begin
        smem_12_d0_local = DATA_x_6_load_1_reg_4395;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1))) begin
        smem_12_d0_local = DATA_x_4_load_1_reg_4347;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0))) begin
        smem_12_d0_local = DATA_x_3_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4))) begin
        smem_12_d0_local = DATA_x_1_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8))) begin
        smem_12_d0_local = DATA_x_2_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12))) begin
        smem_12_d0_local = DATA_x_q1;
    end else begin
        smem_12_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1)))) begin
        smem_12_we0_local = 1'b1;
    end else begin
        smem_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1))) begin
        smem_13_address0_local = zext_ln181_3_fu_3972_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1))) begin
        smem_13_address0_local = zext_ln184_3_fu_4060_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1))) begin
        smem_13_address0_local = zext_ln180_2_fu_3944_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_13_address0_local = zext_ln185_3_fu_3653_p1;
    end else begin
        smem_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((or_ln5_reg_4136 == 5'd1)) begin
            smem_13_address1_local = zext_ln183_1_fu_3558_p1;
        end else if ((or_ln5_reg_4136 == 5'd5)) begin
            smem_13_address1_local = zext_ln179_1_fu_3470_p1;
        end else if ((or_ln5_reg_4136 == 5'd9)) begin
            smem_13_address1_local = zext_ln182_1_fu_3526_p1;
        end else if ((or_ln5_reg_4136 == 5'd13)) begin
            smem_13_address1_local = zext_ln172_fu_3199_p1;
        end else begin
            smem_13_address1_local = 'bx;
        end
    end else begin
        smem_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1)))) begin
        smem_13_ce0_local = 1'b1;
    end else begin
        smem_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln5_reg_4136 == 5'd1) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd5) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd9) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd13) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_13_ce1_local = 1'b1;
    end else begin
        smem_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1))) begin
        smem_13_d0_local = DATA_x_13_load_1_reg_4443;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1))) begin
        smem_13_d0_local = DATA_x_14_load_1_reg_4479;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1))) begin
        smem_13_d0_local = DATA_x_12_load_1_reg_4431;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_13_d0_local = DATA_x_15_q0;
    end else begin
        smem_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((or_ln5_reg_4136 == 5'd1)) begin
            smem_13_d1_local = DATA_x_11_q1;
        end else if ((or_ln5_reg_4136 == 5'd5)) begin
            smem_13_d1_local = DATA_x_9_q1;
        end else if ((or_ln5_reg_4136 == 5'd9)) begin
            smem_13_d1_local = DATA_x_10_q1;
        end else if ((or_ln5_reg_4136 == 5'd13)) begin
            smem_13_d1_local = DATA_x_8_q1;
        end else begin
            smem_13_d1_local = 'bx;
        end
    end else begin
        smem_13_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1)) | (~(or_ln172_2_reg_4230 == 5'd27) & ~(or_ln172_2_reg_4230 == 5'd3) & ~(or_ln172_2_reg_4230 == 5'd7) & ~(or_ln172_2_reg_4230 == 5'd23) & ~(or_ln172_2_reg_4230 == 5'd15) & ~(or_ln172_2_reg_4230 == 5'd19) & ~(or_ln172_2_reg_4230 == 5'd11) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_13_we0_local = 1'b1;
    end else begin
        smem_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln5_reg_4136 == 5'd1) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd5) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd9) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd13) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_13_we1_local = 1'b1;
    end else begin
        smem_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1))) begin
        smem_14_address0_local = zext_ln183_2_fu_3826_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1))) begin
        smem_14_address0_local = zext_ln179_2_fu_3710_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1))) begin
        smem_14_address0_local = zext_ln182_2_fu_3794_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1))) begin
        smem_14_address0_local = smem_14_addr_4_reg_4292;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0))) begin
        smem_14_address0_local = zext_ln185_fu_3423_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4))) begin
        smem_14_address0_local = zext_ln181_fu_3307_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8))) begin
        smem_14_address0_local = zext_ln184_fu_3395_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12))) begin
        smem_14_address0_local = zext_ln180_fu_3271_p1;
    end else begin
        smem_14_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1)))) begin
        smem_14_ce0_local = 1'b1;
    end else begin
        smem_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1))) begin
        smem_14_d0_local = DATA_x_3_load_1_reg_4383;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1))) begin
        smem_14_d0_local = DATA_x_1_load_1_reg_4335;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1))) begin
        smem_14_d0_local = DATA_x_2_load_1_reg_4371;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1))) begin
        smem_14_d0_local = DATA_x_load_1_reg_4323;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0))) begin
        smem_14_d0_local = DATA_x_7_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4))) begin
        smem_14_d0_local = DATA_x_5_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8))) begin
        smem_14_d0_local = DATA_x_6_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12))) begin
        smem_14_d0_local = DATA_x_4_q1;
    end else begin
        smem_14_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1)))) begin
        smem_14_we0_local = 1'b1;
    end else begin
        smem_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1))) begin
        smem_15_address0_local = zext_ln183_3_fu_4032_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1))) begin
        smem_15_address0_local = zext_ln179_3_fu_3916_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1))) begin
        smem_15_address0_local = zext_ln182_3_fu_4000_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_15_address0_local = zext_ln172_fu_3199_p1;
    end else begin
        smem_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((or_ln5_reg_4136 == 5'd1)) begin
            smem_15_address1_local = zext_ln185_1_fu_3614_p1;
        end else if ((or_ln5_reg_4136 == 5'd5)) begin
            smem_15_address1_local = zext_ln181_1_fu_3498_p1;
        end else if ((or_ln5_reg_4136 == 5'd9)) begin
            smem_15_address1_local = zext_ln184_1_fu_3586_p1;
        end else if ((or_ln5_reg_4136 == 5'd13)) begin
            smem_15_address1_local = zext_ln180_fu_3271_p1;
        end else begin
            smem_15_address1_local = 'bx;
        end
    end else begin
        smem_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1)))) begin
        smem_15_ce0_local = 1'b1;
    end else begin
        smem_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln5_reg_4136 == 5'd1) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd5) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd9) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd13) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_15_ce1_local = 1'b1;
    end else begin
        smem_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1))) begin
        smem_15_d0_local = DATA_x_11_load_1_reg_4467;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1))) begin
        smem_15_d0_local = DATA_x_9_load_1_reg_4419;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1))) begin
        smem_15_d0_local = DATA_x_10_load_1_reg_4455;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_15_d0_local = DATA_x_8_q0;
    end else begin
        smem_15_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((or_ln5_reg_4136 == 5'd1)) begin
            smem_15_d1_local = DATA_x_15_q1;
        end else if ((or_ln5_reg_4136 == 5'd5)) begin
            smem_15_d1_local = DATA_x_13_q1;
        end else if ((or_ln5_reg_4136 == 5'd9)) begin
            smem_15_d1_local = DATA_x_14_q1;
        end else if ((or_ln5_reg_4136 == 5'd13)) begin
            smem_15_d1_local = DATA_x_12_q1;
        end else begin
            smem_15_d1_local = 'bx;
        end
    end else begin
        smem_15_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1)) | ((or_ln172_2_reg_4230 == 5'd15) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_15_we0_local = 1'b1;
    end else begin
        smem_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln5_reg_4136 == 5'd1) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd5) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd9) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd13) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_15_we1_local = 1'b1;
    end else begin
        smem_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1))) begin
        smem_16_address0_local = zext_ln185_2_fu_3882_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1))) begin
        smem_16_address0_local = zext_ln181_2_fu_3766_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1))) begin
        smem_16_address0_local = zext_ln184_2_fu_3854_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1))) begin
        smem_16_address0_local = zext_ln180_1_fu_3738_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4))) begin
        smem_16_address0_local = zext_ln183_fu_3367_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8))) begin
        smem_16_address0_local = zext_ln179_fu_3251_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12))) begin
        smem_16_address0_local = zext_ln182_fu_3335_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16))) begin
        smem_16_address0_local = zext_ln172_fu_3199_p1;
    end else begin
        smem_16_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1)))) begin
        smem_16_ce0_local = 1'b1;
    end else begin
        smem_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1))) begin
        smem_16_d0_local = DATA_x_7_load_1_reg_4407;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1))) begin
        smem_16_d0_local = DATA_x_5_load_1_reg_4359;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1))) begin
        smem_16_d0_local = DATA_x_6_load_1_reg_4395;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1))) begin
        smem_16_d0_local = DATA_x_4_load_1_reg_4347;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4))) begin
        smem_16_d0_local = DATA_x_3_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8))) begin
        smem_16_d0_local = DATA_x_1_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12))) begin
        smem_16_d0_local = DATA_x_2_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16))) begin
        smem_16_d0_local = DATA_x_q1;
    end else begin
        smem_16_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1)))) begin
        smem_16_we0_local = 1'b1;
    end else begin
        smem_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1))) begin
        smem_17_address0_local = zext_ln181_3_fu_3972_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1))) begin
        smem_17_address0_local = zext_ln184_3_fu_4060_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1))) begin
        smem_17_address0_local = zext_ln180_2_fu_3944_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_17_address0_local = zext_ln185_3_fu_3653_p1;
    end else begin
        smem_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((or_ln5_reg_4136 == 5'd5)) begin
            smem_17_address1_local = zext_ln183_1_fu_3558_p1;
        end else if ((or_ln5_reg_4136 == 5'd9)) begin
            smem_17_address1_local = zext_ln179_1_fu_3470_p1;
        end else if ((or_ln5_reg_4136 == 5'd13)) begin
            smem_17_address1_local = zext_ln182_1_fu_3526_p1;
        end else if ((or_ln5_reg_4136 == 5'd17)) begin
            smem_17_address1_local = zext_ln172_fu_3199_p1;
        end else begin
            smem_17_address1_local = 'bx;
        end
    end else begin
        smem_17_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1)))) begin
        smem_17_ce0_local = 1'b1;
    end else begin
        smem_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln5_reg_4136 == 5'd5) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd9) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd13) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd17) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_17_ce1_local = 1'b1;
    end else begin
        smem_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1))) begin
        smem_17_d0_local = DATA_x_13_load_1_reg_4443;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1))) begin
        smem_17_d0_local = DATA_x_14_load_1_reg_4479;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1))) begin
        smem_17_d0_local = DATA_x_12_load_1_reg_4431;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_17_d0_local = DATA_x_15_q0;
    end else begin
        smem_17_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((or_ln5_reg_4136 == 5'd5)) begin
            smem_17_d1_local = DATA_x_11_q1;
        end else if ((or_ln5_reg_4136 == 5'd9)) begin
            smem_17_d1_local = DATA_x_9_q1;
        end else if ((or_ln5_reg_4136 == 5'd13)) begin
            smem_17_d1_local = DATA_x_10_q1;
        end else if ((or_ln5_reg_4136 == 5'd17)) begin
            smem_17_d1_local = DATA_x_8_q1;
        end else begin
            smem_17_d1_local = 'bx;
        end
    end else begin
        smem_17_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1)) | ((or_ln172_2_reg_4230 == 5'd3) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_17_we0_local = 1'b1;
    end else begin
        smem_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln5_reg_4136 == 5'd5) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd9) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd13) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd17) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_17_we1_local = 1'b1;
    end else begin
        smem_17_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1))) begin
        smem_18_address0_local = zext_ln183_2_fu_3826_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1))) begin
        smem_18_address0_local = zext_ln179_2_fu_3710_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1))) begin
        smem_18_address0_local = zext_ln182_2_fu_3794_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1))) begin
        smem_18_address0_local = smem_18_addr_4_reg_4297;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4))) begin
        smem_18_address0_local = zext_ln185_fu_3423_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8))) begin
        smem_18_address0_local = zext_ln181_fu_3307_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12))) begin
        smem_18_address0_local = zext_ln184_fu_3395_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16))) begin
        smem_18_address0_local = zext_ln180_fu_3271_p1;
    end else begin
        smem_18_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1)))) begin
        smem_18_ce0_local = 1'b1;
    end else begin
        smem_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1))) begin
        smem_18_d0_local = DATA_x_3_load_1_reg_4383;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1))) begin
        smem_18_d0_local = DATA_x_1_load_1_reg_4335;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1))) begin
        smem_18_d0_local = DATA_x_2_load_1_reg_4371;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1))) begin
        smem_18_d0_local = DATA_x_load_1_reg_4323;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4))) begin
        smem_18_d0_local = DATA_x_7_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8))) begin
        smem_18_d0_local = DATA_x_5_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12))) begin
        smem_18_d0_local = DATA_x_6_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16))) begin
        smem_18_d0_local = DATA_x_4_q1;
    end else begin
        smem_18_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1)))) begin
        smem_18_we0_local = 1'b1;
    end else begin
        smem_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1))) begin
        smem_19_address0_local = zext_ln183_3_fu_4032_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1))) begin
        smem_19_address0_local = zext_ln179_3_fu_3916_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1))) begin
        smem_19_address0_local = zext_ln182_3_fu_4000_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_19_address0_local = zext_ln172_fu_3199_p1;
    end else begin
        smem_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((or_ln5_reg_4136 == 5'd5)) begin
            smem_19_address1_local = zext_ln185_1_fu_3614_p1;
        end else if ((or_ln5_reg_4136 == 5'd9)) begin
            smem_19_address1_local = zext_ln181_1_fu_3498_p1;
        end else if ((or_ln5_reg_4136 == 5'd13)) begin
            smem_19_address1_local = zext_ln184_1_fu_3586_p1;
        end else if ((or_ln5_reg_4136 == 5'd17)) begin
            smem_19_address1_local = zext_ln180_fu_3271_p1;
        end else begin
            smem_19_address1_local = 'bx;
        end
    end else begin
        smem_19_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1)))) begin
        smem_19_ce0_local = 1'b1;
    end else begin
        smem_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln5_reg_4136 == 5'd5) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd9) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd13) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd17) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_19_ce1_local = 1'b1;
    end else begin
        smem_19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1))) begin
        smem_19_d0_local = DATA_x_11_load_1_reg_4467;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1))) begin
        smem_19_d0_local = DATA_x_9_load_1_reg_4419;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1))) begin
        smem_19_d0_local = DATA_x_10_load_1_reg_4455;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_19_d0_local = DATA_x_8_q0;
    end else begin
        smem_19_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((or_ln5_reg_4136 == 5'd5)) begin
            smem_19_d1_local = DATA_x_15_q1;
        end else if ((or_ln5_reg_4136 == 5'd9)) begin
            smem_19_d1_local = DATA_x_13_q1;
        end else if ((or_ln5_reg_4136 == 5'd13)) begin
            smem_19_d1_local = DATA_x_14_q1;
        end else if ((or_ln5_reg_4136 == 5'd17)) begin
            smem_19_d1_local = DATA_x_12_q1;
        end else begin
            smem_19_d1_local = 'bx;
        end
    end else begin
        smem_19_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1)) | ((or_ln172_2_reg_4230 == 5'd19) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_19_we0_local = 1'b1;
    end else begin
        smem_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln5_reg_4136 == 5'd5) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd9) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd13) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd17) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_19_we1_local = 1'b1;
    end else begin
        smem_19_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1))) begin
        smem_1_address0_local = zext_ln180_2_fu_3944_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1))) begin
        smem_1_address0_local = zext_ln184_3_fu_4060_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1))) begin
        smem_1_address0_local = zext_ln181_3_fu_3972_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln185_3_fu_3653_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((1'b1 == ap_condition_2091)) begin
            smem_1_address1_local = zext_ln182_1_fu_3526_p1;
        end else if ((or_ln5_reg_4136 == 5'd25)) begin
            smem_1_address1_local = zext_ln179_1_fu_3470_p1;
        end else if ((or_ln5_reg_4136 == 5'd21)) begin
            smem_1_address1_local = zext_ln183_1_fu_3558_p1;
        end else if ((or_ln5_reg_4136 == 5'd1)) begin
            smem_1_address1_local = zext_ln172_fu_3199_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln5_reg_4136 == 5'd1) & ~(or_ln5_reg_4136 == 5'd5) & ~(or_ln5_reg_4136 == 5'd9) & ~(or_ln5_reg_4136 == 5'd21) & ~(or_ln5_reg_4136 == 5'd13) & ~(or_ln5_reg_4136 == 5'd17) & ~(or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd1) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd21) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1))) begin
        smem_1_d0_local = DATA_x_12_load_1_reg_4431;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1))) begin
        smem_1_d0_local = DATA_x_14_load_1_reg_4479;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1))) begin
        smem_1_d0_local = DATA_x_13_load_1_reg_4443;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_x_15_q0;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((1'b1 == ap_condition_2091)) begin
            smem_1_d1_local = DATA_x_10_q1;
        end else if ((or_ln5_reg_4136 == 5'd25)) begin
            smem_1_d1_local = DATA_x_9_q1;
        end else if ((or_ln5_reg_4136 == 5'd21)) begin
            smem_1_d1_local = DATA_x_11_q1;
        end else if ((or_ln5_reg_4136 == 5'd1)) begin
            smem_1_d1_local = DATA_x_8_q1;
        end else begin
            smem_1_d1_local = 'bx;
        end
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1)) | ((or_ln172_2_reg_4230 == 5'd19) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln5_reg_4136 == 5'd1) & ~(or_ln5_reg_4136 == 5'd5) & ~(or_ln5_reg_4136 == 5'd9) & ~(or_ln5_reg_4136 == 5'd21) & ~(or_ln5_reg_4136 == 5'd13) & ~(or_ln5_reg_4136 == 5'd17) & ~(or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd1) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd21) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1))) begin
        smem_20_address0_local = zext_ln185_2_fu_3882_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1))) begin
        smem_20_address0_local = zext_ln181_2_fu_3766_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1))) begin
        smem_20_address0_local = zext_ln184_2_fu_3854_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1))) begin
        smem_20_address0_local = zext_ln180_1_fu_3738_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8))) begin
        smem_20_address0_local = zext_ln183_fu_3367_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12))) begin
        smem_20_address0_local = zext_ln179_fu_3251_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16))) begin
        smem_20_address0_local = zext_ln182_fu_3335_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20))) begin
        smem_20_address0_local = zext_ln172_fu_3199_p1;
    end else begin
        smem_20_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1)))) begin
        smem_20_ce0_local = 1'b1;
    end else begin
        smem_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1))) begin
        smem_20_d0_local = DATA_x_7_load_1_reg_4407;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1))) begin
        smem_20_d0_local = DATA_x_5_load_1_reg_4359;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1))) begin
        smem_20_d0_local = DATA_x_6_load_1_reg_4395;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1))) begin
        smem_20_d0_local = DATA_x_4_load_1_reg_4347;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8))) begin
        smem_20_d0_local = DATA_x_3_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12))) begin
        smem_20_d0_local = DATA_x_1_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16))) begin
        smem_20_d0_local = DATA_x_2_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20))) begin
        smem_20_d0_local = DATA_x_q1;
    end else begin
        smem_20_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1)))) begin
        smem_20_we0_local = 1'b1;
    end else begin
        smem_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1))) begin
        smem_21_address0_local = zext_ln181_3_fu_3972_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1))) begin
        smem_21_address0_local = zext_ln184_3_fu_4060_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1))) begin
        smem_21_address0_local = zext_ln180_2_fu_3944_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_21_address0_local = zext_ln185_3_fu_3653_p1;
    end else begin
        smem_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((or_ln5_reg_4136 == 5'd9)) begin
            smem_21_address1_local = zext_ln183_1_fu_3558_p1;
        end else if ((or_ln5_reg_4136 == 5'd13)) begin
            smem_21_address1_local = zext_ln179_1_fu_3470_p1;
        end else if ((or_ln5_reg_4136 == 5'd17)) begin
            smem_21_address1_local = zext_ln182_1_fu_3526_p1;
        end else if ((or_ln5_reg_4136 == 5'd21)) begin
            smem_21_address1_local = zext_ln172_fu_3199_p1;
        end else begin
            smem_21_address1_local = 'bx;
        end
    end else begin
        smem_21_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1)))) begin
        smem_21_ce0_local = 1'b1;
    end else begin
        smem_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln5_reg_4136 == 5'd9) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd21) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd13) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd17) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_21_ce1_local = 1'b1;
    end else begin
        smem_21_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1))) begin
        smem_21_d0_local = DATA_x_13_load_1_reg_4443;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1))) begin
        smem_21_d0_local = DATA_x_14_load_1_reg_4479;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1))) begin
        smem_21_d0_local = DATA_x_12_load_1_reg_4431;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_21_d0_local = DATA_x_15_q0;
    end else begin
        smem_21_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((or_ln5_reg_4136 == 5'd9)) begin
            smem_21_d1_local = DATA_x_11_q1;
        end else if ((or_ln5_reg_4136 == 5'd13)) begin
            smem_21_d1_local = DATA_x_9_q1;
        end else if ((or_ln5_reg_4136 == 5'd17)) begin
            smem_21_d1_local = DATA_x_10_q1;
        end else if ((or_ln5_reg_4136 == 5'd21)) begin
            smem_21_d1_local = DATA_x_8_q1;
        end else begin
            smem_21_d1_local = 'bx;
        end
    end else begin
        smem_21_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1)) | ((or_ln172_2_reg_4230 == 5'd7) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_21_we0_local = 1'b1;
    end else begin
        smem_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln5_reg_4136 == 5'd9) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd21) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd13) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd17) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_21_we1_local = 1'b1;
    end else begin
        smem_21_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1))) begin
        smem_22_address0_local = zext_ln183_2_fu_3826_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1))) begin
        smem_22_address0_local = zext_ln179_2_fu_3710_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1))) begin
        smem_22_address0_local = zext_ln182_2_fu_3794_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1))) begin
        smem_22_address0_local = smem_22_addr_4_reg_4302;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8))) begin
        smem_22_address0_local = zext_ln185_fu_3423_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12))) begin
        smem_22_address0_local = zext_ln181_fu_3307_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16))) begin
        smem_22_address0_local = zext_ln184_fu_3395_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20))) begin
        smem_22_address0_local = zext_ln180_fu_3271_p1;
    end else begin
        smem_22_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1)))) begin
        smem_22_ce0_local = 1'b1;
    end else begin
        smem_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1))) begin
        smem_22_d0_local = DATA_x_3_load_1_reg_4383;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1))) begin
        smem_22_d0_local = DATA_x_1_load_1_reg_4335;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1))) begin
        smem_22_d0_local = DATA_x_2_load_1_reg_4371;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1))) begin
        smem_22_d0_local = DATA_x_load_1_reg_4323;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8))) begin
        smem_22_d0_local = DATA_x_7_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12))) begin
        smem_22_d0_local = DATA_x_5_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16))) begin
        smem_22_d0_local = DATA_x_6_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20))) begin
        smem_22_d0_local = DATA_x_4_q1;
    end else begin
        smem_22_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1)))) begin
        smem_22_we0_local = 1'b1;
    end else begin
        smem_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1))) begin
        smem_23_address0_local = zext_ln183_3_fu_4032_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1))) begin
        smem_23_address0_local = zext_ln179_3_fu_3916_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1))) begin
        smem_23_address0_local = zext_ln182_3_fu_4000_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_23_address0_local = zext_ln172_fu_3199_p1;
    end else begin
        smem_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((or_ln5_reg_4136 == 5'd21)) begin
            smem_23_address1_local = zext_ln180_fu_3271_p1;
        end else if ((or_ln5_reg_4136 == 5'd9)) begin
            smem_23_address1_local = zext_ln185_1_fu_3614_p1;
        end else if ((or_ln5_reg_4136 == 5'd13)) begin
            smem_23_address1_local = zext_ln181_1_fu_3498_p1;
        end else if ((or_ln5_reg_4136 == 5'd17)) begin
            smem_23_address1_local = zext_ln184_1_fu_3586_p1;
        end else begin
            smem_23_address1_local = 'bx;
        end
    end else begin
        smem_23_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1)))) begin
        smem_23_ce0_local = 1'b1;
    end else begin
        smem_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln5_reg_4136 == 5'd9) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd21) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd13) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd17) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_23_ce1_local = 1'b1;
    end else begin
        smem_23_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1))) begin
        smem_23_d0_local = DATA_x_11_load_1_reg_4467;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1))) begin
        smem_23_d0_local = DATA_x_9_load_1_reg_4419;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1))) begin
        smem_23_d0_local = DATA_x_10_load_1_reg_4455;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_23_d0_local = DATA_x_8_q0;
    end else begin
        smem_23_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((or_ln5_reg_4136 == 5'd21)) begin
            smem_23_d1_local = DATA_x_12_q1;
        end else if ((or_ln5_reg_4136 == 5'd9)) begin
            smem_23_d1_local = DATA_x_15_q1;
        end else if ((or_ln5_reg_4136 == 5'd13)) begin
            smem_23_d1_local = DATA_x_13_q1;
        end else if ((or_ln5_reg_4136 == 5'd17)) begin
            smem_23_d1_local = DATA_x_14_q1;
        end else begin
            smem_23_d1_local = 'bx;
        end
    end else begin
        smem_23_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1304_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1)) | ((or_ln172_2_reg_4230 == 5'd23) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_23_we0_local = 1'b1;
    end else begin
        smem_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln5_reg_4136 == 5'd9) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd21) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd13) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd17) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_23_we1_local = 1'b1;
    end else begin
        smem_23_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1))) begin
        smem_24_address0_local = zext_ln180_1_fu_3738_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1))) begin
        smem_24_address0_local = zext_ln185_2_fu_3882_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1))) begin
        smem_24_address0_local = zext_ln181_2_fu_3766_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1))) begin
        smem_24_address0_local = zext_ln184_2_fu_3854_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20))) begin
        smem_24_address0_local = zext_ln182_fu_3335_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12))) begin
        smem_24_address0_local = zext_ln183_fu_3367_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16))) begin
        smem_24_address0_local = zext_ln179_fu_3251_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24))) begin
        smem_24_address0_local = zext_ln172_fu_3199_p1;
    end else begin
        smem_24_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1)))) begin
        smem_24_ce0_local = 1'b1;
    end else begin
        smem_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1))) begin
        smem_24_d0_local = DATA_x_4_load_1_reg_4347;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1))) begin
        smem_24_d0_local = DATA_x_7_load_1_reg_4407;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1))) begin
        smem_24_d0_local = DATA_x_5_load_1_reg_4359;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1))) begin
        smem_24_d0_local = DATA_x_6_load_1_reg_4395;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20))) begin
        smem_24_d0_local = DATA_x_2_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12))) begin
        smem_24_d0_local = DATA_x_3_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16))) begin
        smem_24_d0_local = DATA_x_1_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24))) begin
        smem_24_d0_local = DATA_x_q1;
    end else begin
        smem_24_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1055_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1)))) begin
        smem_24_we0_local = 1'b1;
    end else begin
        smem_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1))) begin
        smem_25_address0_local = zext_ln180_2_fu_3944_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1))) begin
        smem_25_address0_local = zext_ln181_3_fu_3972_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1))) begin
        smem_25_address0_local = zext_ln184_3_fu_4060_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_25_address0_local = zext_ln185_3_fu_3653_p1;
    end else begin
        smem_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((or_ln5_reg_4136 == 5'd21)) begin
            smem_25_address1_local = zext_ln182_1_fu_3526_p1;
        end else if ((or_ln5_reg_4136 == 5'd13)) begin
            smem_25_address1_local = zext_ln183_1_fu_3558_p1;
        end else if ((or_ln5_reg_4136 == 5'd17)) begin
            smem_25_address1_local = zext_ln179_1_fu_3470_p1;
        end else if ((or_ln5_reg_4136 == 5'd25)) begin
            smem_25_address1_local = zext_ln172_fu_3199_p1;
        end else begin
            smem_25_address1_local = 'bx;
        end
    end else begin
        smem_25_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1)))) begin
        smem_25_ce0_local = 1'b1;
    end else begin
        smem_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln5_reg_4136 == 5'd21) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd13) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd17) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_25_ce1_local = 1'b1;
    end else begin
        smem_25_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1))) begin
        smem_25_d0_local = DATA_x_12_load_1_reg_4431;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1))) begin
        smem_25_d0_local = DATA_x_13_load_1_reg_4443;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1))) begin
        smem_25_d0_local = DATA_x_14_load_1_reg_4479;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_25_d0_local = DATA_x_15_q0;
    end else begin
        smem_25_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((or_ln5_reg_4136 == 5'd21)) begin
            smem_25_d1_local = DATA_x_10_q1;
        end else if ((or_ln5_reg_4136 == 5'd13)) begin
            smem_25_d1_local = DATA_x_11_q1;
        end else if ((or_ln5_reg_4136 == 5'd17)) begin
            smem_25_d1_local = DATA_x_9_q1;
        end else if ((or_ln5_reg_4136 == 5'd25)) begin
            smem_25_d1_local = DATA_x_8_q1;
        end else begin
            smem_25_d1_local = 'bx;
        end
    end else begin
        smem_25_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1)) | ((or_ln172_2_reg_4230 == 5'd11) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_25_we0_local = 1'b1;
    end else begin
        smem_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln5_reg_4136 == 5'd21) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd13) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd17) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_25_we1_local = 1'b1;
    end else begin
        smem_25_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1))) begin
        smem_26_address0_local = zext_ln182_2_fu_3794_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1))) begin
        smem_26_address0_local = zext_ln183_2_fu_3826_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1))) begin
        smem_26_address0_local = zext_ln179_2_fu_3710_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1))) begin
        smem_26_address0_local = smem_26_addr_4_reg_4307;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20))) begin
        smem_26_address0_local = zext_ln184_fu_3395_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12))) begin
        smem_26_address0_local = zext_ln185_fu_3423_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16))) begin
        smem_26_address0_local = zext_ln181_fu_3307_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24))) begin
        smem_26_address0_local = zext_ln180_fu_3271_p1;
    end else begin
        smem_26_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1)))) begin
        smem_26_ce0_local = 1'b1;
    end else begin
        smem_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1))) begin
        smem_26_d0_local = DATA_x_2_load_1_reg_4371;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1))) begin
        smem_26_d0_local = DATA_x_3_load_1_reg_4383;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1))) begin
        smem_26_d0_local = DATA_x_1_load_1_reg_4335;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1))) begin
        smem_26_d0_local = DATA_x_load_1_reg_4323;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20))) begin
        smem_26_d0_local = DATA_x_6_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12))) begin
        smem_26_d0_local = DATA_x_7_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16))) begin
        smem_26_d0_local = DATA_x_5_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24))) begin
        smem_26_d0_local = DATA_x_4_q1;
    end else begin
        smem_26_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd12)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1)))) begin
        smem_26_we0_local = 1'b1;
    end else begin
        smem_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1))) begin
        smem_27_address0_local = zext_ln182_3_fu_4000_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1))) begin
        smem_27_address0_local = zext_ln183_3_fu_4032_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1))) begin
        smem_27_address0_local = zext_ln179_3_fu_3916_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_27_address0_local = zext_ln172_fu_3199_p1;
    end else begin
        smem_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((or_ln5_reg_4136 == 5'd25)) begin
            smem_27_address1_local = zext_ln180_fu_3271_p1;
        end else if ((or_ln5_reg_4136 == 5'd21)) begin
            smem_27_address1_local = zext_ln184_1_fu_3586_p1;
        end else if ((or_ln5_reg_4136 == 5'd13)) begin
            smem_27_address1_local = zext_ln185_1_fu_3614_p1;
        end else if ((or_ln5_reg_4136 == 5'd17)) begin
            smem_27_address1_local = zext_ln181_1_fu_3498_p1;
        end else begin
            smem_27_address1_local = 'bx;
        end
    end else begin
        smem_27_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1)))) begin
        smem_27_ce0_local = 1'b1;
    end else begin
        smem_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln5_reg_4136 == 5'd21) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd13) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd17) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_27_ce1_local = 1'b1;
    end else begin
        smem_27_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1))) begin
        smem_27_d0_local = DATA_x_10_load_1_reg_4455;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1))) begin
        smem_27_d0_local = DATA_x_11_load_1_reg_4467;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1))) begin
        smem_27_d0_local = DATA_x_9_load_1_reg_4419;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_27_d0_local = DATA_x_8_q0;
    end else begin
        smem_27_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((or_ln5_reg_4136 == 5'd25)) begin
            smem_27_d1_local = DATA_x_12_q1;
        end else if ((or_ln5_reg_4136 == 5'd21)) begin
            smem_27_d1_local = DATA_x_14_q1;
        end else if ((or_ln5_reg_4136 == 5'd13)) begin
            smem_27_d1_local = DATA_x_15_q1;
        end else if ((or_ln5_reg_4136 == 5'd17)) begin
            smem_27_d1_local = DATA_x_13_q1;
        end else begin
            smem_27_d1_local = 'bx;
        end
    end else begin
        smem_27_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1319_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1)) | ((or_ln172_2_reg_4230 == 5'd27) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_27_we0_local = 1'b1;
    end else begin
        smem_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln5_reg_4136 == 5'd21) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd13) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd17) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_27_we1_local = 1'b1;
    end else begin
        smem_27_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1))) begin
        smem_28_address0_local = zext_ln180_1_fu_3738_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1))) begin
        smem_28_address0_local = zext_ln184_2_fu_3854_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1))) begin
        smem_28_address0_local = zext_ln185_2_fu_3882_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1))) begin
        smem_28_address0_local = zext_ln181_2_fu_3766_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24))) begin
        smem_28_address0_local = zext_ln182_fu_3335_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20))) begin
        smem_28_address0_local = zext_ln179_fu_3251_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16))) begin
        smem_28_address0_local = zext_ln183_fu_3367_p1;
    end else if ((~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_28_address0_local = zext_ln172_fu_3199_p1;
    end else begin
        smem_28_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1)) | (~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_28_ce0_local = 1'b1;
    end else begin
        smem_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1))) begin
        smem_28_d0_local = DATA_x_4_load_1_reg_4347;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1))) begin
        smem_28_d0_local = DATA_x_6_load_1_reg_4395;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1))) begin
        smem_28_d0_local = DATA_x_7_load_1_reg_4407;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1))) begin
        smem_28_d0_local = DATA_x_5_load_1_reg_4359;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24))) begin
        smem_28_d0_local = DATA_x_2_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20))) begin
        smem_28_d0_local = DATA_x_1_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16))) begin
        smem_28_d0_local = DATA_x_3_q1;
    end else if ((~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_28_d0_local = DATA_x_q1;
    end else begin
        smem_28_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1048_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1)) | (~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_28_we0_local = 1'b1;
    end else begin
        smem_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1))) begin
        smem_29_address0_local = zext_ln180_2_fu_3944_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1))) begin
        smem_29_address0_local = zext_ln184_3_fu_4060_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1))) begin
        smem_29_address0_local = zext_ln181_3_fu_3972_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_29_address0_local = zext_ln185_3_fu_3653_p1;
    end else begin
        smem_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((or_ln5_reg_4136 == 5'd25)) begin
            smem_29_address1_local = zext_ln182_1_fu_3526_p1;
        end else if ((or_ln5_reg_4136 == 5'd21)) begin
            smem_29_address1_local = zext_ln179_1_fu_3470_p1;
        end else if ((or_ln5_reg_4136 == 5'd17)) begin
            smem_29_address1_local = zext_ln183_1_fu_3558_p1;
        end else if ((1'b1 == ap_condition_2091)) begin
            smem_29_address1_local = zext_ln172_fu_3199_p1;
        end else begin
            smem_29_address1_local = 'bx;
        end
    end else begin
        smem_29_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1)))) begin
        smem_29_ce0_local = 1'b1;
    end else begin
        smem_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln5_reg_4136 == 5'd1) & ~(or_ln5_reg_4136 == 5'd5) & ~(or_ln5_reg_4136 == 5'd9) & ~(or_ln5_reg_4136 == 5'd21) & ~(or_ln5_reg_4136 == 5'd13) & ~(or_ln5_reg_4136 == 5'd17) & ~(or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd21) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd17) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_29_ce1_local = 1'b1;
    end else begin
        smem_29_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1))) begin
        smem_29_d0_local = DATA_x_12_load_1_reg_4431;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1))) begin
        smem_29_d0_local = DATA_x_14_load_1_reg_4479;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1))) begin
        smem_29_d0_local = DATA_x_13_load_1_reg_4443;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_29_d0_local = DATA_x_15_q0;
    end else begin
        smem_29_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((or_ln5_reg_4136 == 5'd25)) begin
            smem_29_d1_local = DATA_x_10_q1;
        end else if ((or_ln5_reg_4136 == 5'd21)) begin
            smem_29_d1_local = DATA_x_9_q1;
        end else if ((or_ln5_reg_4136 == 5'd17)) begin
            smem_29_d1_local = DATA_x_11_q1;
        end else if ((1'b1 == ap_condition_2091)) begin
            smem_29_d1_local = DATA_x_8_q1;
        end else begin
            smem_29_d1_local = 'bx;
        end
    end else begin
        smem_29_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1)) | ((or_ln172_2_reg_4230 == 5'd15) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_29_we0_local = 1'b1;
    end else begin
        smem_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln5_reg_4136 == 5'd1) & ~(or_ln5_reg_4136 == 5'd5) & ~(or_ln5_reg_4136 == 5'd9) & ~(or_ln5_reg_4136 == 5'd21) & ~(or_ln5_reg_4136 == 5'd13) & ~(or_ln5_reg_4136 == 5'd17) & ~(or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd21) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd17) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_29_we1_local = 1'b1;
    end else begin
        smem_29_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1))) begin
        smem_2_address0_local = zext_ln182_2_fu_3794_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1))) begin
        smem_2_address0_local = zext_ln179_2_fu_3710_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1))) begin
        smem_2_address0_local = zext_ln183_2_fu_3826_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1))) begin
        smem_2_address0_local = smem_2_addr_4_reg_4277;
    end else if ((~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln184_fu_3395_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24))) begin
        smem_2_address0_local = zext_ln181_fu_3307_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20))) begin
        smem_2_address0_local = zext_ln185_fu_3423_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0))) begin
        smem_2_address0_local = zext_ln180_fu_3271_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1)) | (~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1))) begin
        smem_2_d0_local = DATA_x_2_load_1_reg_4371;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1))) begin
        smem_2_d0_local = DATA_x_1_load_1_reg_4335;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1))) begin
        smem_2_d0_local = DATA_x_3_load_1_reg_4383;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1))) begin
        smem_2_d0_local = DATA_x_load_1_reg_4323;
    end else if ((~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_x_6_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24))) begin
        smem_2_d0_local = DATA_x_5_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20))) begin
        smem_2_d0_local = DATA_x_7_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0))) begin
        smem_2_d0_local = DATA_x_4_q1;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1)) | (~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1))) begin
        smem_30_address0_local = zext_ln182_2_fu_3794_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1))) begin
        smem_30_address0_local = zext_ln179_2_fu_3710_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1))) begin
        smem_30_address0_local = zext_ln183_2_fu_3826_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1))) begin
        smem_30_address0_local = smem_30_addr_4_reg_4312;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24))) begin
        smem_30_address0_local = zext_ln184_fu_3395_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20))) begin
        smem_30_address0_local = zext_ln181_fu_3307_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16))) begin
        smem_30_address0_local = zext_ln185_fu_3423_p1;
    end else if ((~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_30_address0_local = zext_ln180_fu_3271_p1;
    end else begin
        smem_30_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1)) | (~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_30_ce0_local = 1'b1;
    end else begin
        smem_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1))) begin
        smem_30_d0_local = DATA_x_2_load_1_reg_4371;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1))) begin
        smem_30_d0_local = DATA_x_1_load_1_reg_4335;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1))) begin
        smem_30_d0_local = DATA_x_3_load_1_reg_4383;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1))) begin
        smem_30_d0_local = DATA_x_load_1_reg_4323;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24))) begin
        smem_30_d0_local = DATA_x_6_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20))) begin
        smem_30_d0_local = DATA_x_5_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16))) begin
        smem_30_d0_local = DATA_x_7_q1;
    end else if ((~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_30_d0_local = DATA_x_4_q1;
    end else begin
        smem_30_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd16)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1)) | (~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_30_we0_local = 1'b1;
    end else begin
        smem_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1))) begin
        smem_31_address0_local = zext_ln182_3_fu_4000_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1))) begin
        smem_31_address0_local = zext_ln179_3_fu_3916_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1))) begin
        smem_31_address0_local = zext_ln183_3_fu_4032_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_31_address0_local = zext_ln172_fu_3199_p1;
    end else begin
        smem_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((1'b1 == ap_condition_2091)) begin
            smem_31_address1_local = zext_ln180_fu_3271_p1;
        end else if ((or_ln5_reg_4136 == 5'd25)) begin
            smem_31_address1_local = zext_ln184_1_fu_3586_p1;
        end else if ((or_ln5_reg_4136 == 5'd21)) begin
            smem_31_address1_local = zext_ln181_1_fu_3498_p1;
        end else if ((or_ln5_reg_4136 == 5'd17)) begin
            smem_31_address1_local = zext_ln185_1_fu_3614_p1;
        end else begin
            smem_31_address1_local = 'bx;
        end
    end else begin
        smem_31_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1)))) begin
        smem_31_ce0_local = 1'b1;
    end else begin
        smem_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln5_reg_4136 == 5'd1) & ~(or_ln5_reg_4136 == 5'd5) & ~(or_ln5_reg_4136 == 5'd9) & ~(or_ln5_reg_4136 == 5'd21) & ~(or_ln5_reg_4136 == 5'd13) & ~(or_ln5_reg_4136 == 5'd17) & ~(or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd21) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd17) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_31_ce1_local = 1'b1;
    end else begin
        smem_31_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1))) begin
        smem_31_d0_local = DATA_x_10_load_1_reg_4455;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1))) begin
        smem_31_d0_local = DATA_x_9_load_1_reg_4419;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1))) begin
        smem_31_d0_local = DATA_x_11_load_1_reg_4467;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_31_d0_local = DATA_x_8_q0;
    end else begin
        smem_31_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((1'b1 == ap_condition_2091)) begin
            smem_31_d1_local = DATA_x_12_q1;
        end else if ((or_ln5_reg_4136 == 5'd25)) begin
            smem_31_d1_local = DATA_x_14_q1;
        end else if ((or_ln5_reg_4136 == 5'd21)) begin
            smem_31_d1_local = DATA_x_13_q1;
        end else if ((or_ln5_reg_4136 == 5'd17)) begin
            smem_31_d1_local = DATA_x_15_q1;
        end else begin
            smem_31_d1_local = 'bx;
        end
    end else begin
        smem_31_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1311_state3 == 1'b1)) | (~(or_ln172_2_reg_4230 == 5'd27) & ~(or_ln172_2_reg_4230 == 5'd3) & ~(or_ln172_2_reg_4230 == 5'd7) & ~(or_ln172_2_reg_4230 == 5'd23) & ~(or_ln172_2_reg_4230 == 5'd15) & ~(or_ln172_2_reg_4230 == 5'd19) & ~(or_ln172_2_reg_4230 == 5'd11) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_31_we0_local = 1'b1;
    end else begin
        smem_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln5_reg_4136 == 5'd1) & ~(or_ln5_reg_4136 == 5'd5) & ~(or_ln5_reg_4136 == 5'd9) & ~(or_ln5_reg_4136 == 5'd21) & ~(or_ln5_reg_4136 == 5'd13) & ~(or_ln5_reg_4136 == 5'd17) & ~(or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd21) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd17) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_31_we1_local = 1'b1;
    end else begin
        smem_31_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1))) begin
        smem_3_address0_local = zext_ln182_3_fu_4000_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1))) begin
        smem_3_address0_local = zext_ln179_3_fu_3916_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1))) begin
        smem_3_address0_local = zext_ln183_3_fu_4032_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_fu_3199_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((1'b1 == ap_condition_2091)) begin
            smem_3_address1_local = zext_ln184_1_fu_3586_p1;
        end else if ((or_ln5_reg_4136 == 5'd25)) begin
            smem_3_address1_local = zext_ln181_1_fu_3498_p1;
        end else if ((or_ln5_reg_4136 == 5'd21)) begin
            smem_3_address1_local = zext_ln185_1_fu_3614_p1;
        end else if ((or_ln5_reg_4136 == 5'd1)) begin
            smem_3_address1_local = zext_ln180_fu_3271_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln5_reg_4136 == 5'd1) & ~(or_ln5_reg_4136 == 5'd5) & ~(or_ln5_reg_4136 == 5'd9) & ~(or_ln5_reg_4136 == 5'd21) & ~(or_ln5_reg_4136 == 5'd13) & ~(or_ln5_reg_4136 == 5'd17) & ~(or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd1) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd21) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1))) begin
        smem_3_d0_local = DATA_x_10_load_1_reg_4455;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1))) begin
        smem_3_d0_local = DATA_x_9_load_1_reg_4419;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1))) begin
        smem_3_d0_local = DATA_x_11_load_1_reg_4467;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_x_8_q0;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((1'b1 == ap_condition_2091)) begin
            smem_3_d1_local = DATA_x_14_q1;
        end else if ((or_ln5_reg_4136 == 5'd25)) begin
            smem_3_d1_local = DATA_x_13_q1;
        end else if ((or_ln5_reg_4136 == 5'd21)) begin
            smem_3_d1_local = DATA_x_15_q1;
        end else if ((or_ln5_reg_4136 == 5'd1)) begin
            smem_3_d1_local = DATA_x_12_q1;
        end else begin
            smem_3_d1_local = 'bx;
        end
    end else begin
        smem_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1327_state3 == 1'b1)) | ((or_ln172_2_reg_4230 == 5'd3) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln5_reg_4136 == 5'd1) & ~(or_ln5_reg_4136 == 5'd5) & ~(or_ln5_reg_4136 == 5'd9) & ~(or_ln5_reg_4136 == 5'd21) & ~(or_ln5_reg_4136 == 5'd13) & ~(or_ln5_reg_4136 == 5'd17) & ~(or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd1) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd21) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_we1_local = 1'b1;
    end else begin
        smem_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1))) begin
        smem_4_address0_local = zext_ln184_2_fu_3854_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1))) begin
        smem_4_address0_local = zext_ln181_2_fu_3766_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1))) begin
        smem_4_address0_local = zext_ln185_2_fu_3882_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1))) begin
        smem_4_address0_local = zext_ln180_1_fu_3738_p1;
    end else if ((~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln179_fu_3251_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24))) begin
        smem_4_address0_local = zext_ln183_fu_3367_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0))) begin
        smem_4_address0_local = zext_ln182_fu_3335_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4))) begin
        smem_4_address0_local = zext_ln172_fu_3199_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1)) | (~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1))) begin
        smem_4_d0_local = DATA_x_6_load_1_reg_4395;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1))) begin
        smem_4_d0_local = DATA_x_5_load_1_reg_4359;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1))) begin
        smem_4_d0_local = DATA_x_7_load_1_reg_4407;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1))) begin
        smem_4_d0_local = DATA_x_4_load_1_reg_4347;
    end else if ((~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_x_1_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24))) begin
        smem_4_d0_local = DATA_x_3_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0))) begin
        smem_4_d0_local = DATA_x_2_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4))) begin
        smem_4_d0_local = DATA_x_q1;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1)) | (~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1))) begin
        smem_5_address0_local = zext_ln184_3_fu_4060_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1))) begin
        smem_5_address0_local = zext_ln181_3_fu_3972_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1))) begin
        smem_5_address0_local = zext_ln180_2_fu_3944_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln185_3_fu_3653_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((1'b1 == ap_condition_2091)) begin
            smem_5_address1_local = zext_ln179_1_fu_3470_p1;
        end else if ((or_ln5_reg_4136 == 5'd25)) begin
            smem_5_address1_local = zext_ln183_1_fu_3558_p1;
        end else if ((or_ln5_reg_4136 == 5'd1)) begin
            smem_5_address1_local = zext_ln182_1_fu_3526_p1;
        end else if ((or_ln5_reg_4136 == 5'd5)) begin
            smem_5_address1_local = zext_ln172_fu_3199_p1;
        end else begin
            smem_5_address1_local = 'bx;
        end
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln5_reg_4136 == 5'd1) & ~(or_ln5_reg_4136 == 5'd5) & ~(or_ln5_reg_4136 == 5'd9) & ~(or_ln5_reg_4136 == 5'd21) & ~(or_ln5_reg_4136 == 5'd13) & ~(or_ln5_reg_4136 == 5'd17) & ~(or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd1) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd5) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1))) begin
        smem_5_d0_local = DATA_x_14_load_1_reg_4479;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1))) begin
        smem_5_d0_local = DATA_x_13_load_1_reg_4443;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1))) begin
        smem_5_d0_local = DATA_x_12_load_1_reg_4431;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_x_15_q0;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((1'b1 == ap_condition_2091)) begin
            smem_5_d1_local = DATA_x_9_q1;
        end else if ((or_ln5_reg_4136 == 5'd25)) begin
            smem_5_d1_local = DATA_x_11_q1;
        end else if ((or_ln5_reg_4136 == 5'd1)) begin
            smem_5_d1_local = DATA_x_10_q1;
        end else if ((or_ln5_reg_4136 == 5'd5)) begin
            smem_5_d1_local = DATA_x_8_q1;
        end else begin
            smem_5_d1_local = 'bx;
        end
    end else begin
        smem_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1)) | ((or_ln172_2_reg_4230 == 5'd23) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln5_reg_4136 == 5'd1) & ~(or_ln5_reg_4136 == 5'd5) & ~(or_ln5_reg_4136 == 5'd9) & ~(or_ln5_reg_4136 == 5'd21) & ~(or_ln5_reg_4136 == 5'd13) & ~(or_ln5_reg_4136 == 5'd17) & ~(or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd1) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd5) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_we1_local = 1'b1;
    end else begin
        smem_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1))) begin
        smem_6_address0_local = zext_ln179_2_fu_3710_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1))) begin
        smem_6_address0_local = zext_ln183_2_fu_3826_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1))) begin
        smem_6_address0_local = zext_ln182_2_fu_3794_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1))) begin
        smem_6_address0_local = smem_6_addr_4_reg_4282;
    end else if ((~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln181_fu_3307_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24))) begin
        smem_6_address0_local = zext_ln185_fu_3423_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0))) begin
        smem_6_address0_local = zext_ln184_fu_3395_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4))) begin
        smem_6_address0_local = zext_ln180_fu_3271_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1)) | (~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1))) begin
        smem_6_d0_local = DATA_x_1_load_1_reg_4335;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1))) begin
        smem_6_d0_local = DATA_x_3_load_1_reg_4383;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1))) begin
        smem_6_d0_local = DATA_x_2_load_1_reg_4371;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1))) begin
        smem_6_d0_local = DATA_x_load_1_reg_4323;
    end else if ((~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_x_5_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24))) begin
        smem_6_d0_local = DATA_x_7_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0))) begin
        smem_6_d0_local = DATA_x_6_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4))) begin
        smem_6_d0_local = DATA_x_4_q1;
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1)) | (~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1))) begin
        smem_7_address0_local = zext_ln179_3_fu_3916_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1))) begin
        smem_7_address0_local = zext_ln183_3_fu_4032_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1))) begin
        smem_7_address0_local = zext_ln182_3_fu_4000_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln172_fu_3199_p1;
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((1'b1 == ap_condition_2091)) begin
            smem_7_address1_local = zext_ln181_1_fu_3498_p1;
        end else if ((or_ln5_reg_4136 == 5'd25)) begin
            smem_7_address1_local = zext_ln185_1_fu_3614_p1;
        end else if ((or_ln5_reg_4136 == 5'd1)) begin
            smem_7_address1_local = zext_ln184_1_fu_3586_p1;
        end else if ((or_ln5_reg_4136 == 5'd5)) begin
            smem_7_address1_local = zext_ln180_fu_3271_p1;
        end else begin
            smem_7_address1_local = 'bx;
        end
    end else begin
        smem_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln5_reg_4136 == 5'd1) & ~(or_ln5_reg_4136 == 5'd5) & ~(or_ln5_reg_4136 == 5'd9) & ~(or_ln5_reg_4136 == 5'd21) & ~(or_ln5_reg_4136 == 5'd13) & ~(or_ln5_reg_4136 == 5'd17) & ~(or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd1) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd5) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1))) begin
        smem_7_d0_local = DATA_x_9_load_1_reg_4419;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1))) begin
        smem_7_d0_local = DATA_x_11_load_1_reg_4467;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1))) begin
        smem_7_d0_local = DATA_x_10_load_1_reg_4455;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_x_8_q0;
    end else begin
        smem_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((1'b1 == ap_condition_2091)) begin
            smem_7_d1_local = DATA_x_13_q1;
        end else if ((or_ln5_reg_4136 == 5'd25)) begin
            smem_7_d1_local = DATA_x_15_q1;
        end else if ((or_ln5_reg_4136 == 5'd1)) begin
            smem_7_d1_local = DATA_x_14_q1;
        end else if ((or_ln5_reg_4136 == 5'd5)) begin
            smem_7_d1_local = DATA_x_12_q1;
        end else begin
            smem_7_d1_local = 'bx;
        end
    end else begin
        smem_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1418_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1)) | ((or_ln172_2_reg_4230 == 5'd7) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_we0_local = 1'b1;
    end else begin
        smem_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln5_reg_4136 == 5'd1) & ~(or_ln5_reg_4136 == 5'd5) & ~(or_ln5_reg_4136 == 5'd9) & ~(or_ln5_reg_4136 == 5'd21) & ~(or_ln5_reg_4136 == 5'd13) & ~(or_ln5_reg_4136 == 5'd17) & ~(or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd1) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd5) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_we1_local = 1'b1;
    end else begin
        smem_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1))) begin
        smem_8_address0_local = zext_ln181_2_fu_3766_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1))) begin
        smem_8_address0_local = zext_ln185_2_fu_3882_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1))) begin
        smem_8_address0_local = zext_ln184_2_fu_3854_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1))) begin
        smem_8_address0_local = zext_ln180_1_fu_3738_p1;
    end else if ((~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln183_fu_3367_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0))) begin
        smem_8_address0_local = zext_ln179_fu_3251_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4))) begin
        smem_8_address0_local = zext_ln182_fu_3335_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8))) begin
        smem_8_address0_local = zext_ln172_fu_3199_p1;
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1)) | (~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1))) begin
        smem_8_d0_local = DATA_x_5_load_1_reg_4359;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1))) begin
        smem_8_d0_local = DATA_x_7_load_1_reg_4407;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1))) begin
        smem_8_d0_local = DATA_x_6_load_1_reg_4395;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1))) begin
        smem_8_d0_local = DATA_x_4_load_1_reg_4347;
    end else if ((~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_x_3_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0))) begin
        smem_8_d0_local = DATA_x_1_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4))) begin
        smem_8_d0_local = DATA_x_2_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8))) begin
        smem_8_d0_local = DATA_x_q1;
    end else begin
        smem_8_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd4)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1128_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1098_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1)) | (~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_we0_local = 1'b1;
    end else begin
        smem_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1))) begin
        smem_9_address0_local = zext_ln181_3_fu_3972_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1))) begin
        smem_9_address0_local = zext_ln184_3_fu_4060_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1))) begin
        smem_9_address0_local = zext_ln180_2_fu_3944_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln185_3_fu_3653_p1;
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((1'b1 == ap_condition_2091)) begin
            smem_9_address1_local = zext_ln183_1_fu_3558_p1;
        end else if ((or_ln5_reg_4136 == 5'd1)) begin
            smem_9_address1_local = zext_ln179_1_fu_3470_p1;
        end else if ((or_ln5_reg_4136 == 5'd5)) begin
            smem_9_address1_local = zext_ln182_1_fu_3526_p1;
        end else if ((or_ln5_reg_4136 == 5'd9)) begin
            smem_9_address1_local = zext_ln172_fu_3199_p1;
        end else begin
            smem_9_address1_local = 'bx;
        end
    end else begin
        smem_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln5_reg_4136 == 5'd1) & ~(or_ln5_reg_4136 == 5'd5) & ~(or_ln5_reg_4136 == 5'd9) & ~(or_ln5_reg_4136 == 5'd21) & ~(or_ln5_reg_4136 == 5'd13) & ~(or_ln5_reg_4136 == 5'd17) & ~(or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd1) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd5) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd9) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1))) begin
        smem_9_d0_local = DATA_x_13_load_1_reg_4443;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1))) begin
        smem_9_d0_local = DATA_x_14_load_1_reg_4479;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1))) begin
        smem_9_d0_local = DATA_x_12_load_1_reg_4431;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_x_15_q0;
    end else begin
        smem_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_640)) begin
        if ((1'b1 == ap_condition_2091)) begin
            smem_9_d1_local = DATA_x_11_q1;
        end else if ((or_ln5_reg_4136 == 5'd1)) begin
            smem_9_d1_local = DATA_x_9_q1;
        end else if ((or_ln5_reg_4136 == 5'd5)) begin
            smem_9_d1_local = DATA_x_10_q1;
        end else if ((or_ln5_reg_4136 == 5'd9)) begin
            smem_9_d1_local = DATA_x_8_q1;
        end else begin
            smem_9_d1_local = 'bx;
        end
    end else begin
        smem_9_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1473_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1348_state3 == 1'b1)) | ((or_ln172_2_reg_4230 == 5'd27) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_we0_local = 1'b1;
    end else begin
        smem_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln5_reg_4136 == 5'd1) & ~(or_ln5_reg_4136 == 5'd5) & ~(or_ln5_reg_4136 == 5'd9) & ~(or_ln5_reg_4136 == 5'd21) & ~(or_ln5_reg_4136 == 5'd13) & ~(or_ln5_reg_4136 == 5'd17) & ~(or_ln5_reg_4136 == 5'd25) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd1) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd5) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln5_reg_4136 == 5'd9) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_we1_local = 1'b1;
    end else begin
        smem_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1))) begin
        smem_address0_local = zext_ln180_1_fu_3738_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1))) begin
        smem_address0_local = zext_ln184_2_fu_3854_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1))) begin
        smem_address0_local = zext_ln181_2_fu_3766_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1))) begin
        smem_address0_local = zext_ln185_2_fu_3882_p1;
    end else if ((~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln182_fu_3335_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24))) begin
        smem_address0_local = zext_ln179_fu_3251_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20))) begin
        smem_address0_local = zext_ln183_fu_3367_p1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0))) begin
        smem_address0_local = zext_ln172_fu_3199_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1)) | (~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1))) begin
        smem_d0_local = DATA_x_4_load_1_reg_4347;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1))) begin
        smem_d0_local = DATA_x_6_load_1_reg_4395;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1))) begin
        smem_d0_local = DATA_x_5_load_1_reg_4359;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1))) begin
        smem_d0_local = DATA_x_7_load_1_reg_4407;
    end else if ((~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_x_2_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24))) begin
        smem_d0_local = DATA_x_1_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20))) begin
        smem_d0_local = DATA_x_3_q1;
    end else if (((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0))) begin
        smem_d0_local = DATA_x_q1;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd0)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd20)) | ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3189_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1169_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1073_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1062_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1041_state3 == 1'b1)) | (~(trunc_ln172_fu_3189_p1 == 5'd0) & ~(trunc_ln172_fu_3189_p1 == 5'd4) & ~(trunc_ln172_fu_3189_p1 == 5'd8) & ~(trunc_ln172_fu_3189_p1 == 5'd20) & ~(trunc_ln172_fu_3189_p1 == 5'd12) & ~(trunc_ln172_fu_3189_p1 == 5'd16) & ~(trunc_ln172_fu_3189_p1 == 5'd24) & (tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_we0_local = 1'b1;
    end else begin
        smem_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign DATA_x_10_address0 = zext_ln178_1_fu_3146_p1;
assign DATA_x_10_address1 = zext_ln178_fu_3072_p1;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_10_ce1 = DATA_x_10_ce1_local;
assign DATA_x_11_address0 = zext_ln178_1_fu_3146_p1;
assign DATA_x_11_address1 = zext_ln178_fu_3072_p1;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_11_ce1 = DATA_x_11_ce1_local;
assign DATA_x_12_address0 = zext_ln178_1_fu_3146_p1;
assign DATA_x_12_address1 = zext_ln178_fu_3072_p1;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_12_ce1 = DATA_x_12_ce1_local;
assign DATA_x_13_address0 = zext_ln178_1_fu_3146_p1;
assign DATA_x_13_address1 = zext_ln178_fu_3072_p1;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_13_ce1 = DATA_x_13_ce1_local;
assign DATA_x_14_address0 = zext_ln178_1_fu_3146_p1;
assign DATA_x_14_address1 = zext_ln178_fu_3072_p1;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_14_ce1 = DATA_x_14_ce1_local;
assign DATA_x_15_address0 = zext_ln178_1_fu_3146_p1;
assign DATA_x_15_address1 = zext_ln178_fu_3072_p1;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_15_ce1 = DATA_x_15_ce1_local;
assign DATA_x_1_address0 = zext_ln178_1_fu_3146_p1;
assign DATA_x_1_address1 = zext_ln178_fu_3072_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_2_address0 = zext_ln178_1_fu_3146_p1;
assign DATA_x_2_address1 = zext_ln178_fu_3072_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_3_address0 = zext_ln178_1_fu_3146_p1;
assign DATA_x_3_address1 = zext_ln178_fu_3072_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_4_address0 = zext_ln178_1_fu_3146_p1;
assign DATA_x_4_address1 = zext_ln178_fu_3072_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_ce1 = DATA_x_4_ce1_local;
assign DATA_x_5_address0 = zext_ln178_1_fu_3146_p1;
assign DATA_x_5_address1 = zext_ln178_fu_3072_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_ce1 = DATA_x_5_ce1_local;
assign DATA_x_6_address0 = zext_ln178_1_fu_3146_p1;
assign DATA_x_6_address1 = zext_ln178_fu_3072_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_ce1 = DATA_x_6_ce1_local;
assign DATA_x_7_address0 = zext_ln178_1_fu_3146_p1;
assign DATA_x_7_address1 = zext_ln178_fu_3072_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_ce1 = DATA_x_7_ce1_local;
assign DATA_x_8_address0 = zext_ln178_1_fu_3146_p1;
assign DATA_x_8_address1 = zext_ln178_fu_3072_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_8_ce1 = DATA_x_8_ce1_local;
assign DATA_x_9_address0 = zext_ln178_1_fu_3146_p1;
assign DATA_x_9_address1 = zext_ln178_fu_3072_p1;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_9_ce1 = DATA_x_9_ce1_local;
assign DATA_x_address0 = zext_ln178_1_fu_3146_p1;
assign DATA_x_address1 = zext_ln178_fu_3072_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign add_ln174_fu_3665_p2 = (tid_reg_4079 + 7'd4);
assign add_ln179_1_fu_3454_p2 = ($signed(zext_ln172_13_fu_3450_p1) + $signed(9'd264));
assign add_ln179_2_fu_3694_p2 = ($signed(zext_ln172_16_fu_3690_p1) + $signed(9'd264));
assign add_ln179_3_fu_3900_p2 = ($signed(zext_ln172_19_fu_3897_p1) + $signed(9'd264));
assign add_ln179_fu_3235_p2 = ($signed(zext_ln172_10_fu_3185_p1) + $signed(9'd264));
assign add_ln180_1_fu_3928_p2 = (zext_ln172_18_fu_3894_p1 + 8'd66);
assign add_ln180_fu_3722_p2 = (zext_ln172_15_fu_3686_p1 + 8'd66);
assign add_ln181_1_fu_3482_p2 = ($signed(zext_ln172_13_fu_3450_p1) + $signed(9'd330));
assign add_ln181_2_fu_3750_p2 = ($signed(zext_ln172_16_fu_3690_p1) + $signed(9'd330));
assign add_ln181_3_fu_3956_p2 = ($signed(zext_ln172_19_fu_3897_p1) + $signed(9'd330));
assign add_ln181_fu_3291_p2 = ($signed(zext_ln172_10_fu_3185_p1) + $signed(9'd330));
assign add_ln182_1_fu_3510_p2 = ($signed(zext_ln172_12_fu_3446_p1) + $signed(8'd132));
assign add_ln182_2_fu_3778_p2 = ($signed(zext_ln172_15_fu_3686_p1) + $signed(8'd132));
assign add_ln182_3_fu_3984_p2 = ($signed(zext_ln172_18_fu_3894_p1) + $signed(8'd132));
assign add_ln182_fu_3319_p2 = ($signed(zext_ln172_9_fu_3181_p1) + $signed(8'd132));
assign add_ln183_1_fu_3538_p2 = ($signed(zext_ln172_12_fu_3446_p1) + $signed(8'd140));
assign add_ln183_2_fu_3806_p2 = ($signed(zext_ln172_15_fu_3686_p1) + $signed(8'd140));
assign add_ln183_3_fu_4012_p2 = ($signed(zext_ln172_18_fu_3894_p1) + $signed(8'd140));
assign add_ln183_fu_3347_p2 = ($signed(zext_ln172_9_fu_3181_p1) + $signed(8'd140));
assign add_ln184_1_fu_3570_p2 = (zext_ln172_13_fu_3450_p1 + 9'd198);
assign add_ln184_2_fu_3838_p2 = (zext_ln172_16_fu_3690_p1 + 9'd198);
assign add_ln184_3_fu_4044_p2 = (zext_ln172_19_fu_3897_p1 + 9'd198);
assign add_ln184_fu_3379_p2 = (zext_ln172_10_fu_3185_p1 + 9'd198);
assign add_ln185_1_fu_3598_p2 = (zext_ln172_11_fu_3442_p1 + 10'd462);
assign add_ln185_2_fu_3866_p2 = (zext_ln172_14_fu_3682_p1 + 10'd462);
assign add_ln185_3_fu_3637_p2 = (zext_ln172_17_fu_3633_p1 + 10'd462);
assign add_ln185_fu_3407_p2 = (zext_ln172_8_fu_3177_p1 + 10'd462);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_2091 = (~(or_ln5_reg_4136 == 5'd1) & ~(or_ln5_reg_4136 == 5'd5) & ~(or_ln5_reg_4136 == 5'd9) & ~(or_ln5_reg_4136 == 5'd21) & ~(or_ln5_reg_4136 == 5'd13) & ~(or_ln5_reg_4136 == 5'd17) & ~(or_ln5_reg_4136 == 5'd25));
end
always @ (*) begin
    ap_condition_640 = ((tmp_reg_4087 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign lshr_ln10_fu_3241_p4 = {{add_ln179_fu_3235_p2[8:5]}};
assign lshr_ln11_fu_3297_p4 = {{add_ln181_fu_3291_p2[8:5]}};
assign lshr_ln12_fu_3325_p4 = {{add_ln182_fu_3319_p2[7:5]}};
assign lshr_ln13_fu_3385_p4 = {{add_ln184_fu_3379_p2[8:5]}};
assign lshr_ln14_fu_3413_p4 = {{add_ln185_fu_3407_p2[9:5]}};
assign lshr_ln179_1_fu_3460_p4 = {{add_ln179_1_fu_3454_p2[8:5]}};
assign lshr_ln179_2_fu_3700_p4 = {{add_ln179_2_fu_3694_p2[8:5]}};
assign lshr_ln179_3_fu_3906_p4 = {{add_ln179_3_fu_3900_p2[8:5]}};
assign lshr_ln180_2_fu_3728_p4 = {{add_ln180_fu_3722_p2[7:5]}};
assign lshr_ln180_3_fu_3934_p4 = {{add_ln180_1_fu_3928_p2[7:5]}};
assign lshr_ln181_1_fu_3488_p4 = {{add_ln181_1_fu_3482_p2[8:5]}};
assign lshr_ln181_2_fu_3756_p4 = {{add_ln181_2_fu_3750_p2[8:5]}};
assign lshr_ln181_3_fu_3962_p4 = {{add_ln181_3_fu_3956_p2[8:5]}};
assign lshr_ln182_1_fu_3516_p4 = {{add_ln182_1_fu_3510_p2[7:5]}};
assign lshr_ln182_2_fu_3784_p4 = {{add_ln182_2_fu_3778_p2[7:5]}};
assign lshr_ln182_3_fu_3990_p4 = {{add_ln182_3_fu_3984_p2[7:5]}};
assign lshr_ln184_1_fu_3576_p4 = {{add_ln184_1_fu_3570_p2[8:5]}};
assign lshr_ln184_2_fu_3844_p4 = {{add_ln184_2_fu_3838_p2[8:5]}};
assign lshr_ln184_3_fu_4050_p4 = {{add_ln184_3_fu_4044_p2[8:5]}};
assign lshr_ln185_1_fu_3604_p4 = {{add_ln185_1_fu_3598_p2[9:5]}};
assign lshr_ln185_2_fu_3872_p4 = {{add_ln185_2_fu_3866_p2[9:5]}};
assign lshr_ln185_3_fu_3643_p4 = {{add_ln185_3_fu_3637_p2[9:5]}};
assign lshr_ln9_fu_3062_p4 = {{ap_sig_allocacmp_tid[5:1]}};
assign offset_1_fu_3435_p3 = {{lshr_ln9_reg_4091}, {1'd1}};
assign offset_2_fu_3675_p3 = {{tmp_69_reg_4180}, {2'd2}};
assign offset_3_fu_3626_p3 = {{tmp_69_reg_4180}, {2'd3}};
assign offset_fu_3174_p1 = tid_reg_4079[5:0];
assign or_ln172_1_fu_3130_p3 = {{tmp_70_fu_3120_p4}, {2'd2}};
assign or_ln172_2_fu_3166_p3 = {{tmp_70_fu_3120_p4}, {2'd3}};
assign or_ln5_fu_3102_p3 = {{tmp_s_fu_3092_p4}, {1'd1}};
assign or_ln6_fu_3138_p3 = {{tmp_69_fu_3110_p4}, {1'd1}};
assign sext_ln183_1_fu_3554_p1 = $signed(trunc_ln183_1_fu_3544_p4);
assign sext_ln183_2_fu_3822_p1 = $signed(trunc_ln183_2_fu_3812_p4);
assign sext_ln183_3_fu_4028_p1 = $signed(trunc_ln183_3_fu_4018_p4);
assign sext_ln183_fu_3363_p1 = $signed(trunc_ln5_fu_3353_p4);
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_d0 = smem_10_d0_local;
assign smem_10_we0 = smem_10_we0_local;
assign smem_11_address0 = smem_11_address0_local;
assign smem_11_address1 = smem_11_address1_local;
assign smem_11_ce0 = smem_11_ce0_local;
assign smem_11_ce1 = smem_11_ce1_local;
assign smem_11_d0 = smem_11_d0_local;
assign smem_11_d1 = smem_11_d1_local;
assign smem_11_we0 = smem_11_we0_local;
assign smem_11_we1 = smem_11_we1_local;
assign smem_12_address0 = smem_12_address0_local;
assign smem_12_ce0 = smem_12_ce0_local;
assign smem_12_d0 = smem_12_d0_local;
assign smem_12_we0 = smem_12_we0_local;
assign smem_13_address0 = smem_13_address0_local;
assign smem_13_address1 = smem_13_address1_local;
assign smem_13_ce0 = smem_13_ce0_local;
assign smem_13_ce1 = smem_13_ce1_local;
assign smem_13_d0 = smem_13_d0_local;
assign smem_13_d1 = smem_13_d1_local;
assign smem_13_we0 = smem_13_we0_local;
assign smem_13_we1 = smem_13_we1_local;
assign smem_14_address0 = smem_14_address0_local;
assign smem_14_ce0 = smem_14_ce0_local;
assign smem_14_d0 = smem_14_d0_local;
assign smem_14_we0 = smem_14_we0_local;
assign smem_15_address0 = smem_15_address0_local;
assign smem_15_address1 = smem_15_address1_local;
assign smem_15_ce0 = smem_15_ce0_local;
assign smem_15_ce1 = smem_15_ce1_local;
assign smem_15_d0 = smem_15_d0_local;
assign smem_15_d1 = smem_15_d1_local;
assign smem_15_we0 = smem_15_we0_local;
assign smem_15_we1 = smem_15_we1_local;
assign smem_16_address0 = smem_16_address0_local;
assign smem_16_ce0 = smem_16_ce0_local;
assign smem_16_d0 = smem_16_d0_local;
assign smem_16_we0 = smem_16_we0_local;
assign smem_17_address0 = smem_17_address0_local;
assign smem_17_address1 = smem_17_address1_local;
assign smem_17_ce0 = smem_17_ce0_local;
assign smem_17_ce1 = smem_17_ce1_local;
assign smem_17_d0 = smem_17_d0_local;
assign smem_17_d1 = smem_17_d1_local;
assign smem_17_we0 = smem_17_we0_local;
assign smem_17_we1 = smem_17_we1_local;
assign smem_18_address0 = smem_18_address0_local;
assign smem_18_ce0 = smem_18_ce0_local;
assign smem_18_d0 = smem_18_d0_local;
assign smem_18_we0 = smem_18_we0_local;
assign smem_19_address0 = smem_19_address0_local;
assign smem_19_address1 = smem_19_address1_local;
assign smem_19_ce0 = smem_19_ce0_local;
assign smem_19_ce1 = smem_19_ce1_local;
assign smem_19_d0 = smem_19_d0_local;
assign smem_19_d1 = smem_19_d1_local;
assign smem_19_we0 = smem_19_we0_local;
assign smem_19_we1 = smem_19_we1_local;
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_1_d0 = smem_1_d0_local;
assign smem_1_d1 = smem_1_d1_local;
assign smem_1_we0 = smem_1_we0_local;
assign smem_1_we1 = smem_1_we1_local;
assign smem_20_address0 = smem_20_address0_local;
assign smem_20_ce0 = smem_20_ce0_local;
assign smem_20_d0 = smem_20_d0_local;
assign smem_20_we0 = smem_20_we0_local;
assign smem_21_address0 = smem_21_address0_local;
assign smem_21_address1 = smem_21_address1_local;
assign smem_21_ce0 = smem_21_ce0_local;
assign smem_21_ce1 = smem_21_ce1_local;
assign smem_21_d0 = smem_21_d0_local;
assign smem_21_d1 = smem_21_d1_local;
assign smem_21_we0 = smem_21_we0_local;
assign smem_21_we1 = smem_21_we1_local;
assign smem_22_address0 = smem_22_address0_local;
assign smem_22_ce0 = smem_22_ce0_local;
assign smem_22_d0 = smem_22_d0_local;
assign smem_22_we0 = smem_22_we0_local;
assign smem_23_address0 = smem_23_address0_local;
assign smem_23_address1 = smem_23_address1_local;
assign smem_23_ce0 = smem_23_ce0_local;
assign smem_23_ce1 = smem_23_ce1_local;
assign smem_23_d0 = smem_23_d0_local;
assign smem_23_d1 = smem_23_d1_local;
assign smem_23_we0 = smem_23_we0_local;
assign smem_23_we1 = smem_23_we1_local;
assign smem_24_address0 = smem_24_address0_local;
assign smem_24_ce0 = smem_24_ce0_local;
assign smem_24_d0 = smem_24_d0_local;
assign smem_24_we0 = smem_24_we0_local;
assign smem_25_address0 = smem_25_address0_local;
assign smem_25_address1 = smem_25_address1_local;
assign smem_25_ce0 = smem_25_ce0_local;
assign smem_25_ce1 = smem_25_ce1_local;
assign smem_25_d0 = smem_25_d0_local;
assign smem_25_d1 = smem_25_d1_local;
assign smem_25_we0 = smem_25_we0_local;
assign smem_25_we1 = smem_25_we1_local;
assign smem_26_address0 = smem_26_address0_local;
assign smem_26_ce0 = smem_26_ce0_local;
assign smem_26_d0 = smem_26_d0_local;
assign smem_26_we0 = smem_26_we0_local;
assign smem_27_address0 = smem_27_address0_local;
assign smem_27_address1 = smem_27_address1_local;
assign smem_27_ce0 = smem_27_ce0_local;
assign smem_27_ce1 = smem_27_ce1_local;
assign smem_27_d0 = smem_27_d0_local;
assign smem_27_d1 = smem_27_d1_local;
assign smem_27_we0 = smem_27_we0_local;
assign smem_27_we1 = smem_27_we1_local;
assign smem_28_address0 = smem_28_address0_local;
assign smem_28_ce0 = smem_28_ce0_local;
assign smem_28_d0 = smem_28_d0_local;
assign smem_28_we0 = smem_28_we0_local;
assign smem_29_address0 = smem_29_address0_local;
assign smem_29_address1 = smem_29_address1_local;
assign smem_29_ce0 = smem_29_ce0_local;
assign smem_29_ce1 = smem_29_ce1_local;
assign smem_29_d0 = smem_29_d0_local;
assign smem_29_d1 = smem_29_d1_local;
assign smem_29_we0 = smem_29_we0_local;
assign smem_29_we1 = smem_29_we1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_d0 = smem_2_d0_local;
assign smem_2_we0 = smem_2_we0_local;
assign smem_30_address0 = smem_30_address0_local;
assign smem_30_ce0 = smem_30_ce0_local;
assign smem_30_d0 = smem_30_d0_local;
assign smem_30_we0 = smem_30_we0_local;
assign smem_31_address0 = smem_31_address0_local;
assign smem_31_address1 = smem_31_address1_local;
assign smem_31_ce0 = smem_31_ce0_local;
assign smem_31_ce1 = smem_31_ce1_local;
assign smem_31_d0 = smem_31_d0_local;
assign smem_31_d1 = smem_31_d1_local;
assign smem_31_we0 = smem_31_we0_local;
assign smem_31_we1 = smem_31_we1_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_address1 = smem_3_address1_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_ce1 = smem_3_ce1_local;
assign smem_3_d0 = smem_3_d0_local;
assign smem_3_d1 = smem_3_d1_local;
assign smem_3_we0 = smem_3_we0_local;
assign smem_3_we1 = smem_3_we1_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_d0 = smem_4_d0_local;
assign smem_4_we0 = smem_4_we0_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_address1 = smem_5_address1_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_5_ce1 = smem_5_ce1_local;
assign smem_5_d0 = smem_5_d0_local;
assign smem_5_d1 = smem_5_d1_local;
assign smem_5_we0 = smem_5_we0_local;
assign smem_5_we1 = smem_5_we1_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_d0 = smem_6_d0_local;
assign smem_6_we0 = smem_6_we0_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_address1 = smem_7_address1_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_ce1 = smem_7_ce1_local;
assign smem_7_d0 = smem_7_d0_local;
assign smem_7_d1 = smem_7_d1_local;
assign smem_7_we0 = smem_7_we0_local;
assign smem_7_we1 = smem_7_we1_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_8_d0 = smem_8_d0_local;
assign smem_8_we0 = smem_8_we0_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_address1 = smem_9_address1_local;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_9_ce1 = smem_9_ce1_local;
assign smem_9_d0 = smem_9_d0_local;
assign smem_9_d1 = smem_9_d1_local;
assign smem_9_we0 = smem_9_we0_local;
assign smem_9_we1 = smem_9_we1_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign smem_d0 = smem_d0_local;
assign smem_we0 = smem_we0_local;
assign tmp_68_fu_3192_p3 = tid_reg_4079[32'd5];
assign tmp_69_fu_3110_p4 = {{ap_sig_allocacmp_tid[5:2]}};
assign tmp_70_fu_3120_p4 = {{ap_sig_allocacmp_tid[4:2]}};
assign tmp_fu_3054_p3 = ap_sig_allocacmp_tid[32'd6];
assign tmp_s_fu_3092_p4 = {{ap_sig_allocacmp_tid[4:1]}};
assign trunc_ln172_fu_3189_p1 = tid_reg_4079[4:0];
assign trunc_ln183_1_fu_3544_p4 = {{add_ln183_1_fu_3538_p2[7:5]}};
assign trunc_ln183_2_fu_3812_p4 = {{add_ln183_2_fu_3806_p2[7:5]}};
assign trunc_ln183_3_fu_4018_p4 = {{add_ln183_3_fu_4012_p2[7:5]}};
assign trunc_ln5_fu_3353_p4 = {{add_ln183_fu_3347_p2[7:5]}};
assign zext_ln172_10_fu_3185_p1 = offset_fu_3174_p1;
assign zext_ln172_11_fu_3442_p1 = offset_1_fu_3435_p3;
assign zext_ln172_12_fu_3446_p1 = offset_1_fu_3435_p3;
assign zext_ln172_13_fu_3450_p1 = offset_1_fu_3435_p3;
assign zext_ln172_14_fu_3682_p1 = offset_2_fu_3675_p3;
assign zext_ln172_15_fu_3686_p1 = offset_2_fu_3675_p3;
assign zext_ln172_16_fu_3690_p1 = offset_2_fu_3675_p3;
assign zext_ln172_17_fu_3633_p1 = offset_3_fu_3626_p3;
assign zext_ln172_18_fu_3894_p1 = offset_3_reg_4317;
assign zext_ln172_19_fu_3897_p1 = offset_3_reg_4317;
assign zext_ln172_8_fu_3177_p1 = offset_fu_3174_p1;
assign zext_ln172_9_fu_3181_p1 = offset_fu_3174_p1;
assign zext_ln172_fu_3199_p1 = tmp_68_fu_3192_p3;
assign zext_ln178_1_fu_3146_p1 = or_ln6_fu_3138_p3;
assign zext_ln178_fu_3072_p1 = lshr_ln9_fu_3062_p4;
assign zext_ln179_1_fu_3470_p1 = lshr_ln179_1_fu_3460_p4;
assign zext_ln179_2_fu_3710_p1 = lshr_ln179_2_fu_3700_p4;
assign zext_ln179_3_fu_3916_p1 = lshr_ln179_3_fu_3906_p4;
assign zext_ln179_fu_3251_p1 = lshr_ln10_fu_3241_p4;
assign zext_ln180_1_fu_3738_p1 = lshr_ln180_2_fu_3728_p4;
assign zext_ln180_2_fu_3944_p1 = lshr_ln180_3_fu_3934_p4;
assign zext_ln180_fu_3271_p1 = zext_ln_fu_3263_p3;
assign zext_ln181_1_fu_3498_p1 = lshr_ln181_1_fu_3488_p4;
assign zext_ln181_2_fu_3766_p1 = lshr_ln181_2_fu_3756_p4;
assign zext_ln181_3_fu_3972_p1 = lshr_ln181_3_fu_3962_p4;
assign zext_ln181_fu_3307_p1 = lshr_ln11_fu_3297_p4;
assign zext_ln182_1_fu_3526_p1 = lshr_ln182_1_fu_3516_p4;
assign zext_ln182_2_fu_3794_p1 = lshr_ln182_2_fu_3784_p4;
assign zext_ln182_3_fu_4000_p1 = lshr_ln182_3_fu_3990_p4;
assign zext_ln182_fu_3335_p1 = lshr_ln12_fu_3325_p4;
assign zext_ln183_1_fu_3558_p1 = $unsigned(sext_ln183_1_fu_3554_p1);
assign zext_ln183_2_fu_3826_p1 = $unsigned(sext_ln183_2_fu_3822_p1);
assign zext_ln183_3_fu_4032_p1 = $unsigned(sext_ln183_3_fu_4028_p1);
assign zext_ln183_fu_3367_p1 = $unsigned(sext_ln183_fu_3363_p1);
assign zext_ln184_1_fu_3586_p1 = lshr_ln184_1_fu_3576_p4;
assign zext_ln184_2_fu_3854_p1 = lshr_ln184_2_fu_3844_p4;
assign zext_ln184_3_fu_4060_p1 = lshr_ln184_3_fu_4050_p4;
assign zext_ln184_fu_3395_p1 = lshr_ln13_fu_3385_p4;
assign zext_ln185_1_fu_3614_p1 = lshr_ln185_1_fu_3604_p4;
assign zext_ln185_2_fu_3882_p1 = lshr_ln185_2_fu_3872_p4;
assign zext_ln185_3_fu_3653_p1 = lshr_ln185_3_fu_3643_p4;
assign zext_ln185_fu_3423_p1 = lshr_ln14_fu_3413_p4;
assign zext_ln_fu_3263_p3 = {{1'd1}, {tmp_68_fu_3192_p3}};
always @ (posedge ap_clk) begin
    or_ln5_reg_4136[0] <= 1'b1;
    or_ln172_1_reg_4186[1:0] <= 2'b10;
    or_ln172_2_reg_4230[1:0] <= 2'b11;
    smem_2_addr_4_reg_4277[4:1] <= 4'b0000;
    smem_6_addr_4_reg_4282[4:1] <= 4'b0000;
    smem_10_addr_4_reg_4287[4:1] <= 4'b0000;
    smem_14_addr_4_reg_4292[4:1] <= 4'b0000;
    smem_18_addr_4_reg_4297[4:1] <= 4'b0000;
    smem_22_addr_4_reg_4302[4:1] <= 4'b0000;
    smem_26_addr_4_reg_4307[4:1] <= 4'b0000;
    smem_30_addr_4_reg_4312[4:1] <= 4'b0000;
    offset_3_reg_4317[1:0] <= 2'b11;
end
endmodule 
