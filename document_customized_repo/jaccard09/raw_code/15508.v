module fft1D_512_fft1D_512_Pipeline_loop4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,smem_31_address0,smem_31_ce0,smem_31_we0,smem_31_d0,smem_31_address1,smem_31_ce1,smem_31_we1,smem_31_d1,smem_30_address0,smem_30_ce0,smem_30_we0,smem_30_d0,smem_29_address0,smem_29_ce0,smem_29_we0,smem_29_d0,smem_29_address1,smem_29_ce1,smem_29_we1,smem_29_d1,smem_28_address0,smem_28_ce0,smem_28_we0,smem_28_d0,smem_27_address0,smem_27_ce0,smem_27_we0,smem_27_d0,smem_27_address1,smem_27_ce1,smem_27_we1,smem_27_d1,smem_26_address0,smem_26_ce0,smem_26_we0,smem_26_d0,smem_25_address0,smem_25_ce0,smem_25_we0,smem_25_d0,smem_25_address1,smem_25_ce1,smem_25_we1,smem_25_d1,smem_24_address0,smem_24_ce0,smem_24_we0,smem_24_d0,smem_23_address0,smem_23_ce0,smem_23_we0,smem_23_d0,smem_23_address1,smem_23_ce1,smem_23_we1,smem_23_d1,smem_22_address0,smem_22_ce0,smem_22_we0,smem_22_d0,smem_21_address0,smem_21_ce0,smem_21_we0,smem_21_d0,smem_21_address1,smem_21_ce1,smem_21_we1,smem_21_d1,smem_20_address0,smem_20_ce0,smem_20_we0,smem_20_d0,smem_19_address0,smem_19_ce0,smem_19_we0,smem_19_d0,smem_19_address1,smem_19_ce1,smem_19_we1,smem_19_d1,smem_18_address0,smem_18_ce0,smem_18_we0,smem_18_d0,smem_17_address0,smem_17_ce0,smem_17_we0,smem_17_d0,smem_17_address1,smem_17_ce1,smem_17_we1,smem_17_d1,smem_16_address0,smem_16_ce0,smem_16_we0,smem_16_d0,smem_15_address0,smem_15_ce0,smem_15_we0,smem_15_d0,smem_15_address1,smem_15_ce1,smem_15_we1,smem_15_d1,smem_14_address0,smem_14_ce0,smem_14_we0,smem_14_d0,smem_13_address0,smem_13_ce0,smem_13_we0,smem_13_d0,smem_13_address1,smem_13_ce1,smem_13_we1,smem_13_d1,smem_12_address0,smem_12_ce0,smem_12_we0,smem_12_d0,smem_11_address0,smem_11_ce0,smem_11_we0,smem_11_d0,smem_11_address1,smem_11_ce1,smem_11_we1,smem_11_d1,smem_10_address0,smem_10_ce0,smem_10_we0,smem_10_d0,smem_9_address0,smem_9_ce0,smem_9_we0,smem_9_d0,smem_9_address1,smem_9_ce1,smem_9_we1,smem_9_d1,smem_8_address0,smem_8_ce0,smem_8_we0,smem_8_d0,smem_7_address0,smem_7_ce0,smem_7_we0,smem_7_d0,smem_7_address1,smem_7_ce1,smem_7_we1,smem_7_d1,smem_6_address0,smem_6_ce0,smem_6_we0,smem_6_d0,smem_5_address0,smem_5_ce0,smem_5_we0,smem_5_d0,smem_5_address1,smem_5_ce1,smem_5_we1,smem_5_d1,smem_4_address0,smem_4_ce0,smem_4_we0,smem_4_d0,smem_3_address0,smem_3_ce0,smem_3_we0,smem_3_d0,smem_3_address1,smem_3_ce1,smem_3_we1,smem_3_d1,smem_2_address0,smem_2_ce0,smem_2_we0,smem_2_d0,smem_1_address0,smem_1_ce0,smem_1_we0,smem_1_d0,smem_1_address1,smem_1_ce1,smem_1_we1,smem_1_d1,smem_address0,smem_ce0,smem_we0,smem_d0,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_y_8_address0,DATA_y_8_ce0,DATA_y_8_q0,DATA_y_9_address0,DATA_y_9_ce0,DATA_y_9_q0,DATA_y_12_address0,DATA_y_12_ce0,DATA_y_12_q0,DATA_y_13_address0,DATA_y_13_ce0,DATA_y_13_q0,DATA_y_10_address0,DATA_y_10_ce0,DATA_y_10_q0,DATA_y_11_address0,DATA_y_11_ce0,DATA_y_11_q0,DATA_y_14_address0,DATA_y_14_ce0,DATA_y_14_q0,DATA_y_15_address0,DATA_y_15_ce0,DATA_y_15_q0,DATA_y_16_address0,DATA_y_16_ce0,DATA_y_16_q0,DATA_y_17_address0,DATA_y_17_ce0,DATA_y_17_q0,DATA_y_20_address0,DATA_y_20_ce0,DATA_y_20_q0,DATA_y_21_address0,DATA_y_21_ce0,DATA_y_21_q0,DATA_y_18_address0,DATA_y_18_ce0,DATA_y_18_q0,DATA_y_19_address0,DATA_y_19_ce0,DATA_y_19_q0,DATA_y_22_address0,DATA_y_22_ce0,DATA_y_22_q0,DATA_y_23_address0,DATA_y_23_ce0,DATA_y_23_q0,DATA_y_24_address0,DATA_y_24_ce0,DATA_y_24_q0,DATA_y_25_address0,DATA_y_25_ce0,DATA_y_25_q0,DATA_y_28_address0,DATA_y_28_ce0,DATA_y_28_q0,DATA_y_29_address0,DATA_y_29_ce0,DATA_y_29_q0,DATA_y_26_address0,DATA_y_26_ce0,DATA_y_26_q0,DATA_y_27_address0,DATA_y_27_ce0,DATA_y_27_q0,DATA_y_30_address0,DATA_y_30_ce0,DATA_y_30_q0,DATA_y_31_address0,DATA_y_31_ce0,DATA_y_31_q0); 
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
output  [3:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [3:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [3:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
input  [63:0] DATA_y_4_q0;
output  [3:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
input  [63:0] DATA_y_5_q0;
output  [3:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [3:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [3:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
input  [63:0] DATA_y_6_q0;
output  [3:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
input  [63:0] DATA_y_7_q0;
output  [3:0] DATA_y_8_address0;
output   DATA_y_8_ce0;
input  [63:0] DATA_y_8_q0;
output  [3:0] DATA_y_9_address0;
output   DATA_y_9_ce0;
input  [63:0] DATA_y_9_q0;
output  [3:0] DATA_y_12_address0;
output   DATA_y_12_ce0;
input  [63:0] DATA_y_12_q0;
output  [3:0] DATA_y_13_address0;
output   DATA_y_13_ce0;
input  [63:0] DATA_y_13_q0;
output  [3:0] DATA_y_10_address0;
output   DATA_y_10_ce0;
input  [63:0] DATA_y_10_q0;
output  [3:0] DATA_y_11_address0;
output   DATA_y_11_ce0;
input  [63:0] DATA_y_11_q0;
output  [3:0] DATA_y_14_address0;
output   DATA_y_14_ce0;
input  [63:0] DATA_y_14_q0;
output  [3:0] DATA_y_15_address0;
output   DATA_y_15_ce0;
input  [63:0] DATA_y_15_q0;
output  [3:0] DATA_y_16_address0;
output   DATA_y_16_ce0;
input  [63:0] DATA_y_16_q0;
output  [3:0] DATA_y_17_address0;
output   DATA_y_17_ce0;
input  [63:0] DATA_y_17_q0;
output  [3:0] DATA_y_20_address0;
output   DATA_y_20_ce0;
input  [63:0] DATA_y_20_q0;
output  [3:0] DATA_y_21_address0;
output   DATA_y_21_ce0;
input  [63:0] DATA_y_21_q0;
output  [3:0] DATA_y_18_address0;
output   DATA_y_18_ce0;
input  [63:0] DATA_y_18_q0;
output  [3:0] DATA_y_19_address0;
output   DATA_y_19_ce0;
input  [63:0] DATA_y_19_q0;
output  [3:0] DATA_y_22_address0;
output   DATA_y_22_ce0;
input  [63:0] DATA_y_22_q0;
output  [3:0] DATA_y_23_address0;
output   DATA_y_23_ce0;
input  [63:0] DATA_y_23_q0;
output  [3:0] DATA_y_24_address0;
output   DATA_y_24_ce0;
input  [63:0] DATA_y_24_q0;
output  [3:0] DATA_y_25_address0;
output   DATA_y_25_ce0;
input  [63:0] DATA_y_25_q0;
output  [3:0] DATA_y_28_address0;
output   DATA_y_28_ce0;
input  [63:0] DATA_y_28_q0;
output  [3:0] DATA_y_29_address0;
output   DATA_y_29_ce0;
input  [63:0] DATA_y_29_q0;
output  [3:0] DATA_y_26_address0;
output   DATA_y_26_ce0;
input  [63:0] DATA_y_26_q0;
output  [3:0] DATA_y_27_address0;
output   DATA_y_27_ce0;
input  [63:0] DATA_y_27_q0;
output  [3:0] DATA_y_30_address0;
output   DATA_y_30_ce0;
input  [63:0] DATA_y_30_q0;
output  [3:0] DATA_y_31_address0;
output   DATA_y_31_ce0;
input  [63:0] DATA_y_31_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_3102_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [6:0] tid_reg_4115;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_4124;
wire   [3:0] lshr_ln_fu_3110_p4;
reg   [3:0] lshr_ln_reg_4128;
wire   [4:0] or_ln172_4_fu_3166_p3;
reg   [4:0] or_ln172_4_reg_4174;
wire   [4:0] or_ln172_5_fu_3184_p3;
reg   [4:0] or_ln172_5_reg_4218;
wire   [4:0] or_ln172_6_fu_3192_p3;
reg   [4:0] or_ln172_6_reg_4262;
reg   [4:0] smem_2_addr_25_reg_4309;
wire    ap_block_pp0_stage1_11001;
reg   [4:0] smem_6_addr_25_reg_4314;
reg   [4:0] smem_10_addr_25_reg_4319;
reg   [4:0] smem_14_addr_25_reg_4324;
reg   [4:0] smem_18_addr_25_reg_4329;
reg   [4:0] smem_22_addr_25_reg_4334;
reg   [4:0] smem_26_addr_25_reg_4339;
reg   [4:0] smem_30_addr_25_reg_4344;
wire   [5:0] offset_5_fu_3662_p3;
reg   [5:0] offset_5_reg_4349;
reg   [63:0] DATA_y_16_load_reg_4355;
reg   [63:0] DATA_y_17_load_reg_4367;
reg   [63:0] DATA_y_20_load_reg_4379;
reg   [63:0] DATA_y_21_load_reg_4391;
reg   [63:0] DATA_y_18_load_reg_4403;
reg   [63:0] DATA_y_19_load_reg_4415;
reg   [63:0] DATA_y_22_load_reg_4427;
reg   [63:0] DATA_y_23_load_reg_4439;
reg   [63:0] DATA_y_25_load_reg_4451;
reg   [63:0] DATA_y_28_load_reg_4463;
reg   [63:0] DATA_y_29_load_reg_4475;
reg   [63:0] DATA_y_26_load_reg_4487;
reg   [63:0] DATA_y_27_load_reg_4499;
reg   [63:0] DATA_y_30_load_reg_4511;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln209_fu_3120_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln172_5_fu_3225_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln210_fu_3277_p1;
wire   [63:0] zext_ln211_fu_3297_p1;
wire   [63:0] zext_ln212_fu_3333_p1;
wire   [63:0] zext_ln213_fu_3361_p1;
wire   [63:0] zext_ln214_fu_3393_p1;
wire   [63:0] zext_ln215_fu_3421_p1;
wire   [63:0] zext_ln216_fu_3449_p1;
wire   [63:0] zext_ln210_1_fu_3506_p1;
wire   [63:0] zext_ln212_1_fu_3534_p1;
wire   [63:0] zext_ln213_1_fu_3562_p1;
wire   [63:0] zext_ln214_1_fu_3594_p1;
wire   [63:0] zext_ln215_1_fu_3622_p1;
wire   [63:0] zext_ln216_1_fu_3650_p1;
wire   [63:0] zext_ln216_3_fu_3689_p1;
wire   [63:0] zext_ln210_2_fu_3746_p1;
wire   [63:0] zext_ln211_1_fu_3774_p1;
wire   [63:0] zext_ln212_2_fu_3802_p1;
wire   [63:0] zext_ln213_2_fu_3830_p1;
wire   [63:0] zext_ln214_2_fu_3862_p1;
wire   [63:0] zext_ln215_2_fu_3890_p1;
wire   [63:0] zext_ln216_2_fu_3918_p1;
wire   [63:0] zext_ln210_3_fu_3952_p1;
wire   [63:0] zext_ln211_2_fu_3980_p1;
wire   [63:0] zext_ln212_3_fu_4008_p1;
wire   [63:0] zext_ln213_3_fu_4036_p1;
wire   [63:0] zext_ln214_3_fu_4068_p1;
wire   [63:0] zext_ln215_3_fu_4096_p1;
reg   [6:0] tid_3_fu_266;
wire   [6:0] add_ln204_fu_3701_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
reg    DATA_y_ce0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_7_ce0_local;
reg    DATA_y_8_ce0_local;
reg    DATA_y_9_ce0_local;
reg    DATA_y_12_ce0_local;
reg    DATA_y_13_ce0_local;
reg    DATA_y_10_ce0_local;
reg    DATA_y_11_ce0_local;
reg    DATA_y_14_ce0_local;
reg    DATA_y_15_ce0_local;
reg    DATA_y_16_ce0_local;
reg    DATA_y_17_ce0_local;
reg    DATA_y_20_ce0_local;
reg    DATA_y_21_ce0_local;
reg    DATA_y_18_ce0_local;
reg    DATA_y_19_ce0_local;
reg    DATA_y_22_ce0_local;
reg    DATA_y_23_ce0_local;
reg    DATA_y_24_ce0_local;
reg    DATA_y_25_ce0_local;
reg    DATA_y_28_ce0_local;
reg    DATA_y_29_ce0_local;
reg    DATA_y_26_ce0_local;
reg    DATA_y_27_ce0_local;
reg    DATA_y_30_ce0_local;
reg    DATA_y_31_ce0_local;
reg    smem_24_we0_local;
wire   [4:0] trunc_ln172_fu_3215_p1;
reg   [63:0] smem_24_d0_local;
reg    smem_24_ce0_local;
reg   [4:0] smem_24_address0_local;
reg    ap_predicate_pred1086_state3;
reg    ap_predicate_pred1093_state3;
reg    ap_predicate_pred1100_state3;
reg    ap_predicate_pred1107_state3;
reg    smem_26_we0_local;
reg   [63:0] smem_26_d0_local;
reg    smem_26_ce0_local;
reg   [4:0] smem_26_address0_local;
reg    ap_predicate_pred1118_state3;
reg    smem_20_we0_local;
reg   [63:0] smem_20_d0_local;
reg    smem_20_ce0_local;
reg   [4:0] smem_20_address0_local;
reg    ap_predicate_pred1143_state3;
reg    smem_22_we0_local;
reg   [63:0] smem_22_d0_local;
reg    smem_22_ce0_local;
reg   [4:0] smem_22_address0_local;
reg    smem_16_we0_local;
reg   [63:0] smem_16_d0_local;
reg    smem_16_ce0_local;
reg   [4:0] smem_16_address0_local;
reg    ap_predicate_pred1173_state3;
reg    smem_18_we0_local;
reg   [63:0] smem_18_d0_local;
reg    smem_18_ce0_local;
reg   [4:0] smem_18_address0_local;
reg    smem_12_we0_local;
reg   [63:0] smem_12_d0_local;
reg    smem_12_ce0_local;
reg   [4:0] smem_12_address0_local;
reg    ap_predicate_pred1214_state3;
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
reg    ap_predicate_pred1356_state3;
reg    ap_predicate_pred1364_state3;
reg    ap_predicate_pred1372_state3;
reg    smem_21_we1_local;
reg   [63:0] smem_21_d1_local;
reg    smem_21_ce1_local;
reg   [4:0] smem_21_address1_local;
reg    smem_21_we0_local;
reg   [63:0] smem_21_d0_local;
reg    smem_21_ce0_local;
reg   [4:0] smem_21_address0_local;
reg    ap_predicate_pred1349_state3;
reg    smem_17_we1_local;
reg   [63:0] smem_17_d1_local;
reg    smem_17_ce1_local;
reg   [4:0] smem_17_address1_local;
reg    smem_17_we0_local;
reg   [63:0] smem_17_d0_local;
reg    smem_17_ce0_local;
reg   [4:0] smem_17_address0_local;
reg    ap_predicate_pred1393_state3;
reg    smem_13_we1_local;
reg   [63:0] smem_13_d1_local;
reg    smem_13_ce1_local;
reg   [4:0] smem_13_address1_local;
reg    smem_13_we0_local;
reg   [63:0] smem_13_d0_local;
reg    smem_13_ce0_local;
reg   [4:0] smem_13_address0_local;
reg    ap_predicate_pred1421_state3;
reg    smem_9_we1_local;
reg   [63:0] smem_9_d1_local;
reg    smem_9_ce1_local;
reg   [4:0] smem_9_address1_local;
reg    smem_9_we0_local;
reg   [63:0] smem_9_d0_local;
reg    smem_9_ce0_local;
reg   [4:0] smem_9_address0_local;
reg    ap_predicate_pred1518_state3;
reg    smem_5_we1_local;
reg   [63:0] smem_5_d1_local;
reg    smem_5_ce1_local;
reg   [4:0] smem_5_address1_local;
reg    smem_5_we0_local;
reg   [63:0] smem_5_d0_local;
reg    smem_5_ce0_local;
reg   [4:0] smem_5_address0_local;
reg    ap_predicate_pred1463_state3;
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
wire   [3:0] tmp_39_fu_3156_p4;
wire   [2:0] tmp_40_fu_3174_p4;
wire   [5:0] offset_fu_3200_p1;
wire   [0:0] tmp_29_fu_3218_p3;
wire   [8:0] zext_ln172_10_fu_3211_p1;
wire   [8:0] add_ln210_fu_3261_p2;
wire   [3:0] lshr_ln19_fu_3267_p4;
wire   [1:0] zext_ln_fu_3289_p3;
wire   [8:0] add_ln212_fu_3317_p2;
wire   [3:0] lshr_ln20_fu_3323_p4;
wire   [7:0] zext_ln172_9_fu_3207_p1;
wire   [7:0] add_ln213_fu_3345_p2;
wire   [2:0] lshr_ln21_fu_3351_p4;
wire   [7:0] add_ln214_fu_3373_p2;
wire   [2:0] trunc_ln7_fu_3379_p4;
wire  signed [3:0] sext_ln214_fu_3389_p1;
wire   [8:0] add_ln215_fu_3405_p2;
wire   [3:0] lshr_ln22_fu_3411_p4;
wire   [9:0] zext_ln172_fu_3203_p1;
wire   [9:0] add_ln216_fu_3433_p2;
wire   [4:0] lshr_ln23_fu_3439_p4;
wire   [4:0] tmp_s_fu_3461_p4;
wire   [5:0] offset_3_fu_3470_p3;
wire   [8:0] zext_ln172_13_fu_3486_p1;
wire   [8:0] add_ln210_1_fu_3490_p2;
wire   [3:0] lshr_ln210_1_fu_3496_p4;
wire   [8:0] add_ln212_1_fu_3518_p2;
wire   [3:0] lshr_ln212_1_fu_3524_p4;
wire   [7:0] zext_ln172_12_fu_3482_p1;
wire   [7:0] add_ln213_1_fu_3546_p2;
wire   [2:0] lshr_ln213_1_fu_3552_p4;
wire   [7:0] add_ln214_1_fu_3574_p2;
wire   [2:0] trunc_ln214_1_fu_3580_p4;
wire  signed [3:0] sext_ln214_1_fu_3590_p1;
wire   [8:0] add_ln215_1_fu_3606_p2;
wire   [3:0] lshr_ln215_1_fu_3612_p4;
wire   [9:0] zext_ln172_11_fu_3478_p1;
wire   [9:0] add_ln216_1_fu_3634_p2;
wire   [4:0] lshr_ln216_1_fu_3640_p4;
wire   [9:0] zext_ln172_17_fu_3669_p1;
wire   [9:0] add_ln216_3_fu_3673_p2;
wire   [4:0] lshr_ln216_3_fu_3679_p4;
wire   [5:0] offset_4_fu_3711_p3;
wire   [8:0] zext_ln172_16_fu_3726_p1;
wire   [8:0] add_ln210_2_fu_3730_p2;
wire   [3:0] lshr_ln210_2_fu_3736_p4;
wire   [7:0] zext_ln172_15_fu_3722_p1;
wire   [7:0] add_ln211_fu_3758_p2;
wire   [2:0] lshr_ln211_2_fu_3764_p4;
wire   [8:0] add_ln212_2_fu_3786_p2;
wire   [3:0] lshr_ln212_2_fu_3792_p4;
wire   [7:0] add_ln213_2_fu_3814_p2;
wire   [2:0] lshr_ln213_2_fu_3820_p4;
wire   [7:0] add_ln214_2_fu_3842_p2;
wire   [2:0] trunc_ln214_2_fu_3848_p4;
wire  signed [3:0] sext_ln214_2_fu_3858_p1;
wire   [8:0] add_ln215_2_fu_3874_p2;
wire   [3:0] lshr_ln215_2_fu_3880_p4;
wire   [9:0] zext_ln172_14_fu_3718_p1;
wire   [9:0] add_ln216_2_fu_3902_p2;
wire   [4:0] lshr_ln216_2_fu_3908_p4;
wire   [8:0] zext_ln172_19_fu_3933_p1;
wire   [8:0] add_ln210_3_fu_3936_p2;
wire   [3:0] lshr_ln210_3_fu_3942_p4;
wire   [7:0] zext_ln172_18_fu_3930_p1;
wire   [7:0] add_ln211_1_fu_3964_p2;
wire   [2:0] lshr_ln211_3_fu_3970_p4;
wire   [8:0] add_ln212_3_fu_3992_p2;
wire   [3:0] lshr_ln212_3_fu_3998_p4;
wire   [7:0] add_ln213_3_fu_4020_p2;
wire   [2:0] lshr_ln213_3_fu_4026_p4;
wire   [7:0] add_ln214_3_fu_4048_p2;
wire   [2:0] trunc_ln214_3_fu_4054_p4;
wire  signed [3:0] sext_ln214_3_fu_4064_p1;
wire   [8:0] add_ln215_3_fu_4080_p2;
wire   [3:0] lshr_ln215_3_fu_4086_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_2131;
reg    ap_condition_684;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_3_fu_266 = 7'd0;
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
        tid_3_fu_266 <= 7'd0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_3_fu_266 <= add_ln204_fu_3701_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_16_load_reg_4355 <= DATA_y_16_q0;
        DATA_y_17_load_reg_4367 <= DATA_y_17_q0;
        DATA_y_18_load_reg_4403 <= DATA_y_18_q0;
        DATA_y_19_load_reg_4415 <= DATA_y_19_q0;
        DATA_y_20_load_reg_4379 <= DATA_y_20_q0;
        DATA_y_21_load_reg_4391 <= DATA_y_21_q0;
        DATA_y_22_load_reg_4427 <= DATA_y_22_q0;
        DATA_y_23_load_reg_4439 <= DATA_y_23_q0;
        DATA_y_25_load_reg_4451 <= DATA_y_25_q0;
        DATA_y_26_load_reg_4487 <= DATA_y_26_q0;
        DATA_y_27_load_reg_4499 <= DATA_y_27_q0;
        DATA_y_28_load_reg_4463 <= DATA_y_28_q0;
        DATA_y_29_load_reg_4475 <= DATA_y_29_q0;
        DATA_y_30_load_reg_4511 <= DATA_y_30_q0;
        ap_predicate_pred1086_state3 <= (or_ln172_5_reg_4218 == 5'd18);
        ap_predicate_pred1093_state3 <= (or_ln172_5_reg_4218 == 5'd14);
        ap_predicate_pred1100_state3 <= (or_ln172_5_reg_4218 == 5'd10);
        ap_predicate_pred1107_state3 <= (or_ln172_5_reg_4218 == 5'd22);
        ap_predicate_pred1118_state3 <= (or_ln172_5_reg_4218 == 5'd26);
        ap_predicate_pred1143_state3 <= (or_ln172_5_reg_4218 == 5'd6);
        ap_predicate_pred1173_state3 <= (or_ln172_5_reg_4218 == 5'd2);
        ap_predicate_pred1214_state3 <= (~(or_ln172_5_reg_4218 == 5'd2) & ~(or_ln172_5_reg_4218 == 5'd6) & ~(or_ln172_5_reg_4218 == 5'd26) & ~(or_ln172_5_reg_4218 == 5'd22) & ~(or_ln172_5_reg_4218 == 5'd10) & ~(or_ln172_5_reg_4218 == 5'd14) & ~(or_ln172_5_reg_4218 == 5'd18));
        ap_predicate_pred1349_state3 <= (or_ln172_6_reg_4262 == 5'd11);
        ap_predicate_pred1356_state3 <= (or_ln172_6_reg_4262 == 5'd19);
        ap_predicate_pred1364_state3 <= (or_ln172_6_reg_4262 == 5'd15);
        ap_predicate_pred1372_state3 <= (or_ln172_6_reg_4262 == 5'd23);
        ap_predicate_pred1393_state3 <= (or_ln172_6_reg_4262 == 5'd7);
        ap_predicate_pred1421_state3 <= (or_ln172_6_reg_4262 == 5'd3);
        ap_predicate_pred1463_state3 <= (or_ln172_6_reg_4262 == 5'd27);
        ap_predicate_pred1518_state3 <= (~(or_ln172_6_reg_4262 == 5'd27) & ~(or_ln172_6_reg_4262 == 5'd3) & ~(or_ln172_6_reg_4262 == 5'd7) & ~(or_ln172_6_reg_4262 == 5'd23) & ~(or_ln172_6_reg_4262 == 5'd15) & ~(or_ln172_6_reg_4262 == 5'd19) & ~(or_ln172_6_reg_4262 == 5'd11));
        offset_5_reg_4349[5 : 2] <= offset_5_fu_3662_p3[5 : 2];
        smem_10_addr_25_reg_4319[0] <= zext_ln172_5_fu_3225_p1[0];
        smem_14_addr_25_reg_4324[0] <= zext_ln172_5_fu_3225_p1[0];
        smem_18_addr_25_reg_4329[0] <= zext_ln172_5_fu_3225_p1[0];
        smem_22_addr_25_reg_4334[0] <= zext_ln172_5_fu_3225_p1[0];
        smem_26_addr_25_reg_4339[0] <= zext_ln172_5_fu_3225_p1[0];
        smem_2_addr_25_reg_4309[0] <= zext_ln172_5_fu_3225_p1[0];
        smem_30_addr_25_reg_4344[0] <= zext_ln172_5_fu_3225_p1[0];
        smem_6_addr_25_reg_4314[0] <= zext_ln172_5_fu_3225_p1[0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_reg_4128 <= {{ap_sig_allocacmp_tid[5:2]}};
        or_ln172_4_reg_4174[4 : 1] <= or_ln172_4_fu_3166_p3[4 : 1];
        or_ln172_5_reg_4218[4 : 2] <= or_ln172_5_fu_3184_p3[4 : 2];
        or_ln172_6_reg_4262[4 : 2] <= or_ln172_6_fu_3192_p3[4 : 2];
        tid_reg_4115 <= ap_sig_allocacmp_tid;
        tmp_reg_4124 <= ap_sig_allocacmp_tid[32'd6];
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
        DATA_y_16_ce0_local = 1'b1;
    end else begin
        DATA_y_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_17_ce0_local = 1'b1;
    end else begin
        DATA_y_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_18_ce0_local = 1'b1;
    end else begin
        DATA_y_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_19_ce0_local = 1'b1;
    end else begin
        DATA_y_19_ce0_local = 1'b0;
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
        DATA_y_20_ce0_local = 1'b1;
    end else begin
        DATA_y_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_21_ce0_local = 1'b1;
    end else begin
        DATA_y_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_22_ce0_local = 1'b1;
    end else begin
        DATA_y_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_23_ce0_local = 1'b1;
    end else begin
        DATA_y_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_24_ce0_local = 1'b1;
    end else begin
        DATA_y_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_25_ce0_local = 1'b1;
    end else begin
        DATA_y_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_26_ce0_local = 1'b1;
    end else begin
        DATA_y_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_27_ce0_local = 1'b1;
    end else begin
        DATA_y_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_28_ce0_local = 1'b1;
    end else begin
        DATA_y_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_29_ce0_local = 1'b1;
    end else begin
        DATA_y_29_ce0_local = 1'b0;
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
        DATA_y_30_ce0_local = 1'b1;
    end else begin
        DATA_y_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_31_ce0_local = 1'b1;
    end else begin
        DATA_y_31_ce0_local = 1'b0;
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
    if (((tmp_fu_3102_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_tid = tid_3_fu_266;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1))) begin
        smem_10_address0_local = zext_ln214_2_fu_3862_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1))) begin
        smem_10_address0_local = zext_ln210_2_fu_3746_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1))) begin
        smem_10_address0_local = zext_ln213_2_fu_3830_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1))) begin
        smem_10_address0_local = smem_10_addr_25_reg_4319;
    end else if ((~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_address0_local = zext_ln216_fu_3449_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0))) begin
        smem_10_address0_local = zext_ln212_fu_3333_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4))) begin
        smem_10_address0_local = zext_ln215_fu_3421_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8))) begin
        smem_10_address0_local = zext_ln211_fu_3297_p1;
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1)) | (~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1))) begin
        smem_10_d0_local = DATA_y_19_load_reg_4415;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1))) begin
        smem_10_d0_local = DATA_y_17_load_reg_4367;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1))) begin
        smem_10_d0_local = DATA_y_18_load_reg_4403;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1))) begin
        smem_10_d0_local = DATA_y_16_load_reg_4355;
    end else if ((~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_10_d0_local = DATA_y_7_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0))) begin
        smem_10_d0_local = DATA_y_5_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4))) begin
        smem_10_d0_local = DATA_y_6_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8))) begin
        smem_10_d0_local = DATA_y_4_q0;
    end else begin
        smem_10_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1)) | (~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_10_we0_local = 1'b1;
    end else begin
        smem_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1))) begin
        smem_11_address0_local = zext_ln214_3_fu_4068_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1))) begin
        smem_11_address0_local = zext_ln210_3_fu_3952_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1))) begin
        smem_11_address0_local = zext_ln213_3_fu_4036_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_address0_local = zext_ln172_5_fu_3225_p1;
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((1'b1 == ap_condition_2131)) begin
            smem_11_address1_local = zext_ln216_1_fu_3650_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd1)) begin
            smem_11_address1_local = zext_ln212_1_fu_3534_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd5)) begin
            smem_11_address1_local = zext_ln215_1_fu_3622_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd9)) begin
            smem_11_address1_local = zext_ln211_fu_3297_p1;
        end else begin
            smem_11_address1_local = 'bx;
        end
    end else begin
        smem_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln172_4_reg_4174 == 5'd1) & ~(or_ln172_4_reg_4174 == 5'd5) & ~(or_ln172_4_reg_4174 == 5'd9) & ~(or_ln172_4_reg_4174 == 5'd21) & ~(or_ln172_4_reg_4174 == 5'd13) & ~(or_ln172_4_reg_4174 == 5'd17) & ~(or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd1) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd5) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd9) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_ce1_local = 1'b1;
    end else begin
        smem_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1))) begin
        smem_11_d0_local = DATA_y_27_load_reg_4499;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1))) begin
        smem_11_d0_local = DATA_y_25_load_reg_4451;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1))) begin
        smem_11_d0_local = DATA_y_26_load_reg_4487;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_11_d0_local = DATA_y_24_q0;
    end else begin
        smem_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((1'b1 == ap_condition_2131)) begin
            smem_11_d1_local = DATA_y_15_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd1)) begin
            smem_11_d1_local = DATA_y_13_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd5)) begin
            smem_11_d1_local = DATA_y_14_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd9)) begin
            smem_11_d1_local = DATA_y_12_q0;
        end else begin
            smem_11_d1_local = 'bx;
        end
    end else begin
        smem_11_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1)) | ((or_ln172_6_reg_4262 == 5'd11) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_we0_local = 1'b1;
    end else begin
        smem_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln172_4_reg_4174 == 5'd1) & ~(or_ln172_4_reg_4174 == 5'd5) & ~(or_ln172_4_reg_4174 == 5'd9) & ~(or_ln172_4_reg_4174 == 5'd21) & ~(or_ln172_4_reg_4174 == 5'd13) & ~(or_ln172_4_reg_4174 == 5'd17) & ~(or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd1) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd5) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd9) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_11_we1_local = 1'b1;
    end else begin
        smem_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1))) begin
        smem_12_address0_local = zext_ln216_2_fu_3918_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1))) begin
        smem_12_address0_local = zext_ln212_2_fu_3802_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1))) begin
        smem_12_address0_local = zext_ln215_2_fu_3890_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1))) begin
        smem_12_address0_local = zext_ln211_1_fu_3774_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0))) begin
        smem_12_address0_local = zext_ln214_fu_3393_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4))) begin
        smem_12_address0_local = zext_ln210_fu_3277_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8))) begin
        smem_12_address0_local = zext_ln213_fu_3361_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12))) begin
        smem_12_address0_local = zext_ln172_5_fu_3225_p1;
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1))) begin
        smem_12_d0_local = DATA_y_23_load_reg_4439;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1))) begin
        smem_12_d0_local = DATA_y_21_load_reg_4391;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1))) begin
        smem_12_d0_local = DATA_y_22_load_reg_4427;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1))) begin
        smem_12_d0_local = DATA_y_20_load_reg_4379;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0))) begin
        smem_12_d0_local = DATA_y_3_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4))) begin
        smem_12_d0_local = DATA_y_1_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8))) begin
        smem_12_d0_local = DATA_y_2_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12))) begin
        smem_12_d0_local = DATA_y_q0;
    end else begin
        smem_12_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1)))) begin
        smem_12_we0_local = 1'b1;
    end else begin
        smem_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1))) begin
        smem_13_address0_local = zext_ln212_3_fu_4008_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1))) begin
        smem_13_address0_local = zext_ln215_3_fu_4096_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1))) begin
        smem_13_address0_local = zext_ln211_2_fu_3980_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_13_address0_local = zext_ln216_3_fu_3689_p1;
    end else begin
        smem_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((or_ln172_4_reg_4174 == 5'd1)) begin
            smem_13_address1_local = zext_ln214_1_fu_3594_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd5)) begin
            smem_13_address1_local = zext_ln210_1_fu_3506_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd9)) begin
            smem_13_address1_local = zext_ln213_1_fu_3562_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd13)) begin
            smem_13_address1_local = zext_ln172_5_fu_3225_p1;
        end else begin
            smem_13_address1_local = 'bx;
        end
    end else begin
        smem_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1)))) begin
        smem_13_ce0_local = 1'b1;
    end else begin
        smem_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln172_4_reg_4174 == 5'd1) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd5) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd9) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd13) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_13_ce1_local = 1'b1;
    end else begin
        smem_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1))) begin
        smem_13_d0_local = DATA_y_29_load_reg_4475;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1))) begin
        smem_13_d0_local = DATA_y_30_load_reg_4511;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1))) begin
        smem_13_d0_local = DATA_y_28_load_reg_4463;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_13_d0_local = DATA_y_31_q0;
    end else begin
        smem_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((or_ln172_4_reg_4174 == 5'd1)) begin
            smem_13_d1_local = DATA_y_11_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd5)) begin
            smem_13_d1_local = DATA_y_9_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd9)) begin
            smem_13_d1_local = DATA_y_10_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd13)) begin
            smem_13_d1_local = DATA_y_8_q0;
        end else begin
            smem_13_d1_local = 'bx;
        end
    end else begin
        smem_13_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1)) | (~(or_ln172_6_reg_4262 == 5'd27) & ~(or_ln172_6_reg_4262 == 5'd3) & ~(or_ln172_6_reg_4262 == 5'd7) & ~(or_ln172_6_reg_4262 == 5'd23) & ~(or_ln172_6_reg_4262 == 5'd15) & ~(or_ln172_6_reg_4262 == 5'd19) & ~(or_ln172_6_reg_4262 == 5'd11) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_13_we0_local = 1'b1;
    end else begin
        smem_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln172_4_reg_4174 == 5'd1) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd5) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd9) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd13) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_13_we1_local = 1'b1;
    end else begin
        smem_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1))) begin
        smem_14_address0_local = zext_ln214_2_fu_3862_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1))) begin
        smem_14_address0_local = zext_ln210_2_fu_3746_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1))) begin
        smem_14_address0_local = zext_ln213_2_fu_3830_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1))) begin
        smem_14_address0_local = smem_14_addr_25_reg_4324;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0))) begin
        smem_14_address0_local = zext_ln216_fu_3449_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4))) begin
        smem_14_address0_local = zext_ln212_fu_3333_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8))) begin
        smem_14_address0_local = zext_ln215_fu_3421_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12))) begin
        smem_14_address0_local = zext_ln211_fu_3297_p1;
    end else begin
        smem_14_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1)))) begin
        smem_14_ce0_local = 1'b1;
    end else begin
        smem_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1))) begin
        smem_14_d0_local = DATA_y_19_load_reg_4415;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1))) begin
        smem_14_d0_local = DATA_y_17_load_reg_4367;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1))) begin
        smem_14_d0_local = DATA_y_18_load_reg_4403;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1))) begin
        smem_14_d0_local = DATA_y_16_load_reg_4355;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0))) begin
        smem_14_d0_local = DATA_y_7_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4))) begin
        smem_14_d0_local = DATA_y_5_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8))) begin
        smem_14_d0_local = DATA_y_6_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12))) begin
        smem_14_d0_local = DATA_y_4_q0;
    end else begin
        smem_14_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1)))) begin
        smem_14_we0_local = 1'b1;
    end else begin
        smem_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1))) begin
        smem_15_address0_local = zext_ln214_3_fu_4068_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1))) begin
        smem_15_address0_local = zext_ln210_3_fu_3952_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1))) begin
        smem_15_address0_local = zext_ln213_3_fu_4036_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_15_address0_local = zext_ln172_5_fu_3225_p1;
    end else begin
        smem_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((or_ln172_4_reg_4174 == 5'd1)) begin
            smem_15_address1_local = zext_ln216_1_fu_3650_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd5)) begin
            smem_15_address1_local = zext_ln212_1_fu_3534_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd9)) begin
            smem_15_address1_local = zext_ln215_1_fu_3622_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd13)) begin
            smem_15_address1_local = zext_ln211_fu_3297_p1;
        end else begin
            smem_15_address1_local = 'bx;
        end
    end else begin
        smem_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1)))) begin
        smem_15_ce0_local = 1'b1;
    end else begin
        smem_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln172_4_reg_4174 == 5'd1) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd5) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd9) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd13) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_15_ce1_local = 1'b1;
    end else begin
        smem_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1))) begin
        smem_15_d0_local = DATA_y_27_load_reg_4499;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1))) begin
        smem_15_d0_local = DATA_y_25_load_reg_4451;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1))) begin
        smem_15_d0_local = DATA_y_26_load_reg_4487;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_15_d0_local = DATA_y_24_q0;
    end else begin
        smem_15_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((or_ln172_4_reg_4174 == 5'd1)) begin
            smem_15_d1_local = DATA_y_15_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd5)) begin
            smem_15_d1_local = DATA_y_13_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd9)) begin
            smem_15_d1_local = DATA_y_14_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd13)) begin
            smem_15_d1_local = DATA_y_12_q0;
        end else begin
            smem_15_d1_local = 'bx;
        end
    end else begin
        smem_15_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1)) | ((or_ln172_6_reg_4262 == 5'd15) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_15_we0_local = 1'b1;
    end else begin
        smem_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln172_4_reg_4174 == 5'd1) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd5) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd9) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd13) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_15_we1_local = 1'b1;
    end else begin
        smem_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1))) begin
        smem_16_address0_local = zext_ln216_2_fu_3918_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1))) begin
        smem_16_address0_local = zext_ln212_2_fu_3802_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1))) begin
        smem_16_address0_local = zext_ln215_2_fu_3890_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1))) begin
        smem_16_address0_local = zext_ln211_1_fu_3774_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4))) begin
        smem_16_address0_local = zext_ln214_fu_3393_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8))) begin
        smem_16_address0_local = zext_ln210_fu_3277_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12))) begin
        smem_16_address0_local = zext_ln213_fu_3361_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16))) begin
        smem_16_address0_local = zext_ln172_5_fu_3225_p1;
    end else begin
        smem_16_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1)))) begin
        smem_16_ce0_local = 1'b1;
    end else begin
        smem_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1))) begin
        smem_16_d0_local = DATA_y_23_load_reg_4439;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1))) begin
        smem_16_d0_local = DATA_y_21_load_reg_4391;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1))) begin
        smem_16_d0_local = DATA_y_22_load_reg_4427;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1))) begin
        smem_16_d0_local = DATA_y_20_load_reg_4379;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4))) begin
        smem_16_d0_local = DATA_y_3_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8))) begin
        smem_16_d0_local = DATA_y_1_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12))) begin
        smem_16_d0_local = DATA_y_2_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16))) begin
        smem_16_d0_local = DATA_y_q0;
    end else begin
        smem_16_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1)))) begin
        smem_16_we0_local = 1'b1;
    end else begin
        smem_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1))) begin
        smem_17_address0_local = zext_ln212_3_fu_4008_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1))) begin
        smem_17_address0_local = zext_ln215_3_fu_4096_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1))) begin
        smem_17_address0_local = zext_ln211_2_fu_3980_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_17_address0_local = zext_ln216_3_fu_3689_p1;
    end else begin
        smem_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((or_ln172_4_reg_4174 == 5'd5)) begin
            smem_17_address1_local = zext_ln214_1_fu_3594_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd9)) begin
            smem_17_address1_local = zext_ln210_1_fu_3506_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd13)) begin
            smem_17_address1_local = zext_ln213_1_fu_3562_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd17)) begin
            smem_17_address1_local = zext_ln172_5_fu_3225_p1;
        end else begin
            smem_17_address1_local = 'bx;
        end
    end else begin
        smem_17_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1)))) begin
        smem_17_ce0_local = 1'b1;
    end else begin
        smem_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln172_4_reg_4174 == 5'd5) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd9) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd13) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd17) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_17_ce1_local = 1'b1;
    end else begin
        smem_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1))) begin
        smem_17_d0_local = DATA_y_29_load_reg_4475;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1))) begin
        smem_17_d0_local = DATA_y_30_load_reg_4511;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1))) begin
        smem_17_d0_local = DATA_y_28_load_reg_4463;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_17_d0_local = DATA_y_31_q0;
    end else begin
        smem_17_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((or_ln172_4_reg_4174 == 5'd5)) begin
            smem_17_d1_local = DATA_y_11_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd9)) begin
            smem_17_d1_local = DATA_y_9_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd13)) begin
            smem_17_d1_local = DATA_y_10_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd17)) begin
            smem_17_d1_local = DATA_y_8_q0;
        end else begin
            smem_17_d1_local = 'bx;
        end
    end else begin
        smem_17_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1)) | ((or_ln172_6_reg_4262 == 5'd3) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_17_we0_local = 1'b1;
    end else begin
        smem_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln172_4_reg_4174 == 5'd5) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd9) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd13) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd17) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_17_we1_local = 1'b1;
    end else begin
        smem_17_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1))) begin
        smem_18_address0_local = zext_ln214_2_fu_3862_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1))) begin
        smem_18_address0_local = zext_ln210_2_fu_3746_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1))) begin
        smem_18_address0_local = zext_ln213_2_fu_3830_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1))) begin
        smem_18_address0_local = smem_18_addr_25_reg_4329;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4))) begin
        smem_18_address0_local = zext_ln216_fu_3449_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8))) begin
        smem_18_address0_local = zext_ln212_fu_3333_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12))) begin
        smem_18_address0_local = zext_ln215_fu_3421_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16))) begin
        smem_18_address0_local = zext_ln211_fu_3297_p1;
    end else begin
        smem_18_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1)))) begin
        smem_18_ce0_local = 1'b1;
    end else begin
        smem_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1))) begin
        smem_18_d0_local = DATA_y_19_load_reg_4415;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1))) begin
        smem_18_d0_local = DATA_y_17_load_reg_4367;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1))) begin
        smem_18_d0_local = DATA_y_18_load_reg_4403;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1))) begin
        smem_18_d0_local = DATA_y_16_load_reg_4355;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4))) begin
        smem_18_d0_local = DATA_y_7_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8))) begin
        smem_18_d0_local = DATA_y_5_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12))) begin
        smem_18_d0_local = DATA_y_6_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16))) begin
        smem_18_d0_local = DATA_y_4_q0;
    end else begin
        smem_18_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1)))) begin
        smem_18_we0_local = 1'b1;
    end else begin
        smem_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1))) begin
        smem_19_address0_local = zext_ln214_3_fu_4068_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1))) begin
        smem_19_address0_local = zext_ln210_3_fu_3952_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1))) begin
        smem_19_address0_local = zext_ln213_3_fu_4036_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_19_address0_local = zext_ln172_5_fu_3225_p1;
    end else begin
        smem_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((or_ln172_4_reg_4174 == 5'd5)) begin
            smem_19_address1_local = zext_ln216_1_fu_3650_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd9)) begin
            smem_19_address1_local = zext_ln212_1_fu_3534_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd13)) begin
            smem_19_address1_local = zext_ln215_1_fu_3622_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd17)) begin
            smem_19_address1_local = zext_ln211_fu_3297_p1;
        end else begin
            smem_19_address1_local = 'bx;
        end
    end else begin
        smem_19_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1)))) begin
        smem_19_ce0_local = 1'b1;
    end else begin
        smem_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln172_4_reg_4174 == 5'd5) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd9) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd13) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd17) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_19_ce1_local = 1'b1;
    end else begin
        smem_19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1))) begin
        smem_19_d0_local = DATA_y_27_load_reg_4499;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1))) begin
        smem_19_d0_local = DATA_y_25_load_reg_4451;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1))) begin
        smem_19_d0_local = DATA_y_26_load_reg_4487;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_19_d0_local = DATA_y_24_q0;
    end else begin
        smem_19_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((or_ln172_4_reg_4174 == 5'd5)) begin
            smem_19_d1_local = DATA_y_15_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd9)) begin
            smem_19_d1_local = DATA_y_13_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd13)) begin
            smem_19_d1_local = DATA_y_14_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd17)) begin
            smem_19_d1_local = DATA_y_12_q0;
        end else begin
            smem_19_d1_local = 'bx;
        end
    end else begin
        smem_19_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1)) | ((or_ln172_6_reg_4262 == 5'd19) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_19_we0_local = 1'b1;
    end else begin
        smem_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln172_4_reg_4174 == 5'd5) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd9) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd13) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd17) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_19_we1_local = 1'b1;
    end else begin
        smem_19_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1))) begin
        smem_1_address0_local = zext_ln211_2_fu_3980_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1))) begin
        smem_1_address0_local = zext_ln215_3_fu_4096_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1))) begin
        smem_1_address0_local = zext_ln212_3_fu_4008_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_address0_local = zext_ln216_3_fu_3689_p1;
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((1'b1 == ap_condition_2131)) begin
            smem_1_address1_local = zext_ln213_1_fu_3562_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd25)) begin
            smem_1_address1_local = zext_ln210_1_fu_3506_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd21)) begin
            smem_1_address1_local = zext_ln214_1_fu_3594_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd1)) begin
            smem_1_address1_local = zext_ln172_5_fu_3225_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln172_4_reg_4174 == 5'd1) & ~(or_ln172_4_reg_4174 == 5'd5) & ~(or_ln172_4_reg_4174 == 5'd9) & ~(or_ln172_4_reg_4174 == 5'd21) & ~(or_ln172_4_reg_4174 == 5'd13) & ~(or_ln172_4_reg_4174 == 5'd17) & ~(or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd1) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd21) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1))) begin
        smem_1_d0_local = DATA_y_28_load_reg_4463;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1))) begin
        smem_1_d0_local = DATA_y_30_load_reg_4511;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1))) begin
        smem_1_d0_local = DATA_y_29_load_reg_4475;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_1_d0_local = DATA_y_31_q0;
    end else begin
        smem_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((1'b1 == ap_condition_2131)) begin
            smem_1_d1_local = DATA_y_10_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd25)) begin
            smem_1_d1_local = DATA_y_9_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd21)) begin
            smem_1_d1_local = DATA_y_11_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd1)) begin
            smem_1_d1_local = DATA_y_8_q0;
        end else begin
            smem_1_d1_local = 'bx;
        end
    end else begin
        smem_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1)) | ((or_ln172_6_reg_4262 == 5'd19) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we0_local = 1'b1;
    end else begin
        smem_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln172_4_reg_4174 == 5'd1) & ~(or_ln172_4_reg_4174 == 5'd5) & ~(or_ln172_4_reg_4174 == 5'd9) & ~(or_ln172_4_reg_4174 == 5'd21) & ~(or_ln172_4_reg_4174 == 5'd13) & ~(or_ln172_4_reg_4174 == 5'd17) & ~(or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd1) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd21) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_we1_local = 1'b1;
    end else begin
        smem_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1))) begin
        smem_20_address0_local = zext_ln216_2_fu_3918_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1))) begin
        smem_20_address0_local = zext_ln212_2_fu_3802_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1))) begin
        smem_20_address0_local = zext_ln215_2_fu_3890_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1))) begin
        smem_20_address0_local = zext_ln211_1_fu_3774_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8))) begin
        smem_20_address0_local = zext_ln214_fu_3393_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12))) begin
        smem_20_address0_local = zext_ln210_fu_3277_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16))) begin
        smem_20_address0_local = zext_ln213_fu_3361_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20))) begin
        smem_20_address0_local = zext_ln172_5_fu_3225_p1;
    end else begin
        smem_20_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1)))) begin
        smem_20_ce0_local = 1'b1;
    end else begin
        smem_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1))) begin
        smem_20_d0_local = DATA_y_23_load_reg_4439;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1))) begin
        smem_20_d0_local = DATA_y_21_load_reg_4391;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1))) begin
        smem_20_d0_local = DATA_y_22_load_reg_4427;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1))) begin
        smem_20_d0_local = DATA_y_20_load_reg_4379;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8))) begin
        smem_20_d0_local = DATA_y_3_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12))) begin
        smem_20_d0_local = DATA_y_1_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16))) begin
        smem_20_d0_local = DATA_y_2_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20))) begin
        smem_20_d0_local = DATA_y_q0;
    end else begin
        smem_20_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1)))) begin
        smem_20_we0_local = 1'b1;
    end else begin
        smem_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1))) begin
        smem_21_address0_local = zext_ln212_3_fu_4008_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1))) begin
        smem_21_address0_local = zext_ln215_3_fu_4096_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1))) begin
        smem_21_address0_local = zext_ln211_2_fu_3980_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_21_address0_local = zext_ln216_3_fu_3689_p1;
    end else begin
        smem_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((or_ln172_4_reg_4174 == 5'd9)) begin
            smem_21_address1_local = zext_ln214_1_fu_3594_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd13)) begin
            smem_21_address1_local = zext_ln210_1_fu_3506_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd17)) begin
            smem_21_address1_local = zext_ln213_1_fu_3562_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd21)) begin
            smem_21_address1_local = zext_ln172_5_fu_3225_p1;
        end else begin
            smem_21_address1_local = 'bx;
        end
    end else begin
        smem_21_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1)))) begin
        smem_21_ce0_local = 1'b1;
    end else begin
        smem_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln172_4_reg_4174 == 5'd9) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd21) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd13) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd17) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_21_ce1_local = 1'b1;
    end else begin
        smem_21_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1))) begin
        smem_21_d0_local = DATA_y_29_load_reg_4475;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1))) begin
        smem_21_d0_local = DATA_y_30_load_reg_4511;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1))) begin
        smem_21_d0_local = DATA_y_28_load_reg_4463;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_21_d0_local = DATA_y_31_q0;
    end else begin
        smem_21_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((or_ln172_4_reg_4174 == 5'd9)) begin
            smem_21_d1_local = DATA_y_11_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd13)) begin
            smem_21_d1_local = DATA_y_9_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd17)) begin
            smem_21_d1_local = DATA_y_10_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd21)) begin
            smem_21_d1_local = DATA_y_8_q0;
        end else begin
            smem_21_d1_local = 'bx;
        end
    end else begin
        smem_21_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1)) | ((or_ln172_6_reg_4262 == 5'd7) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_21_we0_local = 1'b1;
    end else begin
        smem_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln172_4_reg_4174 == 5'd9) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd21) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd13) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd17) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_21_we1_local = 1'b1;
    end else begin
        smem_21_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1))) begin
        smem_22_address0_local = zext_ln214_2_fu_3862_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1))) begin
        smem_22_address0_local = zext_ln210_2_fu_3746_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1))) begin
        smem_22_address0_local = zext_ln213_2_fu_3830_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1))) begin
        smem_22_address0_local = smem_22_addr_25_reg_4334;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8))) begin
        smem_22_address0_local = zext_ln216_fu_3449_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12))) begin
        smem_22_address0_local = zext_ln212_fu_3333_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16))) begin
        smem_22_address0_local = zext_ln215_fu_3421_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20))) begin
        smem_22_address0_local = zext_ln211_fu_3297_p1;
    end else begin
        smem_22_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1)))) begin
        smem_22_ce0_local = 1'b1;
    end else begin
        smem_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1))) begin
        smem_22_d0_local = DATA_y_19_load_reg_4415;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1))) begin
        smem_22_d0_local = DATA_y_17_load_reg_4367;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1))) begin
        smem_22_d0_local = DATA_y_18_load_reg_4403;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1))) begin
        smem_22_d0_local = DATA_y_16_load_reg_4355;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8))) begin
        smem_22_d0_local = DATA_y_7_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12))) begin
        smem_22_d0_local = DATA_y_5_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16))) begin
        smem_22_d0_local = DATA_y_6_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20))) begin
        smem_22_d0_local = DATA_y_4_q0;
    end else begin
        smem_22_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1)))) begin
        smem_22_we0_local = 1'b1;
    end else begin
        smem_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1))) begin
        smem_23_address0_local = zext_ln214_3_fu_4068_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1))) begin
        smem_23_address0_local = zext_ln210_3_fu_3952_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1))) begin
        smem_23_address0_local = zext_ln213_3_fu_4036_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_23_address0_local = zext_ln172_5_fu_3225_p1;
    end else begin
        smem_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((or_ln172_4_reg_4174 == 5'd21)) begin
            smem_23_address1_local = zext_ln211_fu_3297_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd9)) begin
            smem_23_address1_local = zext_ln216_1_fu_3650_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd13)) begin
            smem_23_address1_local = zext_ln212_1_fu_3534_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd17)) begin
            smem_23_address1_local = zext_ln215_1_fu_3622_p1;
        end else begin
            smem_23_address1_local = 'bx;
        end
    end else begin
        smem_23_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1)))) begin
        smem_23_ce0_local = 1'b1;
    end else begin
        smem_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln172_4_reg_4174 == 5'd9) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd21) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd13) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd17) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_23_ce1_local = 1'b1;
    end else begin
        smem_23_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1))) begin
        smem_23_d0_local = DATA_y_27_load_reg_4499;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1))) begin
        smem_23_d0_local = DATA_y_25_load_reg_4451;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1))) begin
        smem_23_d0_local = DATA_y_26_load_reg_4487;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_23_d0_local = DATA_y_24_q0;
    end else begin
        smem_23_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((or_ln172_4_reg_4174 == 5'd21)) begin
            smem_23_d1_local = DATA_y_12_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd9)) begin
            smem_23_d1_local = DATA_y_15_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd13)) begin
            smem_23_d1_local = DATA_y_13_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd17)) begin
            smem_23_d1_local = DATA_y_14_q0;
        end else begin
            smem_23_d1_local = 'bx;
        end
    end else begin
        smem_23_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1349_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1)) | ((or_ln172_6_reg_4262 == 5'd23) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_23_we0_local = 1'b1;
    end else begin
        smem_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln172_4_reg_4174 == 5'd9) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd21) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd13) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd17) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_23_we1_local = 1'b1;
    end else begin
        smem_23_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1))) begin
        smem_24_address0_local = zext_ln211_1_fu_3774_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1))) begin
        smem_24_address0_local = zext_ln216_2_fu_3918_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1))) begin
        smem_24_address0_local = zext_ln212_2_fu_3802_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1))) begin
        smem_24_address0_local = zext_ln215_2_fu_3890_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20))) begin
        smem_24_address0_local = zext_ln213_fu_3361_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12))) begin
        smem_24_address0_local = zext_ln214_fu_3393_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16))) begin
        smem_24_address0_local = zext_ln210_fu_3277_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24))) begin
        smem_24_address0_local = zext_ln172_5_fu_3225_p1;
    end else begin
        smem_24_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1)))) begin
        smem_24_ce0_local = 1'b1;
    end else begin
        smem_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1))) begin
        smem_24_d0_local = DATA_y_20_load_reg_4379;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1))) begin
        smem_24_d0_local = DATA_y_23_load_reg_4439;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1))) begin
        smem_24_d0_local = DATA_y_21_load_reg_4391;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1))) begin
        smem_24_d0_local = DATA_y_22_load_reg_4427;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20))) begin
        smem_24_d0_local = DATA_y_2_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12))) begin
        smem_24_d0_local = DATA_y_3_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16))) begin
        smem_24_d0_local = DATA_y_1_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24))) begin
        smem_24_d0_local = DATA_y_q0;
    end else begin
        smem_24_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1100_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1)))) begin
        smem_24_we0_local = 1'b1;
    end else begin
        smem_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1))) begin
        smem_25_address0_local = zext_ln211_2_fu_3980_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1))) begin
        smem_25_address0_local = zext_ln212_3_fu_4008_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1))) begin
        smem_25_address0_local = zext_ln215_3_fu_4096_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_25_address0_local = zext_ln216_3_fu_3689_p1;
    end else begin
        smem_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((or_ln172_4_reg_4174 == 5'd21)) begin
            smem_25_address1_local = zext_ln213_1_fu_3562_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd13)) begin
            smem_25_address1_local = zext_ln214_1_fu_3594_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd17)) begin
            smem_25_address1_local = zext_ln210_1_fu_3506_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd25)) begin
            smem_25_address1_local = zext_ln172_5_fu_3225_p1;
        end else begin
            smem_25_address1_local = 'bx;
        end
    end else begin
        smem_25_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1)))) begin
        smem_25_ce0_local = 1'b1;
    end else begin
        smem_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln172_4_reg_4174 == 5'd21) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd13) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd17) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_25_ce1_local = 1'b1;
    end else begin
        smem_25_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1))) begin
        smem_25_d0_local = DATA_y_28_load_reg_4463;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1))) begin
        smem_25_d0_local = DATA_y_29_load_reg_4475;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1))) begin
        smem_25_d0_local = DATA_y_30_load_reg_4511;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_25_d0_local = DATA_y_31_q0;
    end else begin
        smem_25_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((or_ln172_4_reg_4174 == 5'd21)) begin
            smem_25_d1_local = DATA_y_10_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd13)) begin
            smem_25_d1_local = DATA_y_11_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd17)) begin
            smem_25_d1_local = DATA_y_9_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd25)) begin
            smem_25_d1_local = DATA_y_8_q0;
        end else begin
            smem_25_d1_local = 'bx;
        end
    end else begin
        smem_25_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1)) | ((or_ln172_6_reg_4262 == 5'd11) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_25_we0_local = 1'b1;
    end else begin
        smem_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln172_4_reg_4174 == 5'd21) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd13) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd17) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_25_we1_local = 1'b1;
    end else begin
        smem_25_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1))) begin
        smem_26_address0_local = zext_ln213_2_fu_3830_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1))) begin
        smem_26_address0_local = zext_ln214_2_fu_3862_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1))) begin
        smem_26_address0_local = zext_ln210_2_fu_3746_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1))) begin
        smem_26_address0_local = smem_26_addr_25_reg_4339;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20))) begin
        smem_26_address0_local = zext_ln215_fu_3421_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12))) begin
        smem_26_address0_local = zext_ln216_fu_3449_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16))) begin
        smem_26_address0_local = zext_ln212_fu_3333_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24))) begin
        smem_26_address0_local = zext_ln211_fu_3297_p1;
    end else begin
        smem_26_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1)))) begin
        smem_26_ce0_local = 1'b1;
    end else begin
        smem_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1))) begin
        smem_26_d0_local = DATA_y_18_load_reg_4403;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1))) begin
        smem_26_d0_local = DATA_y_19_load_reg_4415;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1))) begin
        smem_26_d0_local = DATA_y_17_load_reg_4367;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1))) begin
        smem_26_d0_local = DATA_y_16_load_reg_4355;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20))) begin
        smem_26_d0_local = DATA_y_6_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12))) begin
        smem_26_d0_local = DATA_y_7_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16))) begin
        smem_26_d0_local = DATA_y_5_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24))) begin
        smem_26_d0_local = DATA_y_4_q0;
    end else begin
        smem_26_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd12)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1)))) begin
        smem_26_we0_local = 1'b1;
    end else begin
        smem_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1))) begin
        smem_27_address0_local = zext_ln213_3_fu_4036_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1))) begin
        smem_27_address0_local = zext_ln214_3_fu_4068_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1))) begin
        smem_27_address0_local = zext_ln210_3_fu_3952_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_27_address0_local = zext_ln172_5_fu_3225_p1;
    end else begin
        smem_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((or_ln172_4_reg_4174 == 5'd25)) begin
            smem_27_address1_local = zext_ln211_fu_3297_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd21)) begin
            smem_27_address1_local = zext_ln215_1_fu_3622_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd13)) begin
            smem_27_address1_local = zext_ln216_1_fu_3650_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd17)) begin
            smem_27_address1_local = zext_ln212_1_fu_3534_p1;
        end else begin
            smem_27_address1_local = 'bx;
        end
    end else begin
        smem_27_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1)))) begin
        smem_27_ce0_local = 1'b1;
    end else begin
        smem_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln172_4_reg_4174 == 5'd21) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd13) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd17) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_27_ce1_local = 1'b1;
    end else begin
        smem_27_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1))) begin
        smem_27_d0_local = DATA_y_26_load_reg_4487;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1))) begin
        smem_27_d0_local = DATA_y_27_load_reg_4499;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1))) begin
        smem_27_d0_local = DATA_y_25_load_reg_4451;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_27_d0_local = DATA_y_24_q0;
    end else begin
        smem_27_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((or_ln172_4_reg_4174 == 5'd25)) begin
            smem_27_d1_local = DATA_y_12_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd21)) begin
            smem_27_d1_local = DATA_y_14_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd13)) begin
            smem_27_d1_local = DATA_y_15_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd17)) begin
            smem_27_d1_local = DATA_y_13_q0;
        end else begin
            smem_27_d1_local = 'bx;
        end
    end else begin
        smem_27_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1364_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1)) | ((or_ln172_6_reg_4262 == 5'd27) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_27_we0_local = 1'b1;
    end else begin
        smem_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((or_ln172_4_reg_4174 == 5'd21) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd13) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd17) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_27_we1_local = 1'b1;
    end else begin
        smem_27_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1))) begin
        smem_28_address0_local = zext_ln211_1_fu_3774_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1))) begin
        smem_28_address0_local = zext_ln215_2_fu_3890_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1))) begin
        smem_28_address0_local = zext_ln216_2_fu_3918_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1))) begin
        smem_28_address0_local = zext_ln212_2_fu_3802_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24))) begin
        smem_28_address0_local = zext_ln213_fu_3361_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20))) begin
        smem_28_address0_local = zext_ln210_fu_3277_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16))) begin
        smem_28_address0_local = zext_ln214_fu_3393_p1;
    end else if ((~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_28_address0_local = zext_ln172_5_fu_3225_p1;
    end else begin
        smem_28_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1)) | (~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_28_ce0_local = 1'b1;
    end else begin
        smem_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1))) begin
        smem_28_d0_local = DATA_y_20_load_reg_4379;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1))) begin
        smem_28_d0_local = DATA_y_22_load_reg_4427;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1))) begin
        smem_28_d0_local = DATA_y_23_load_reg_4439;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1))) begin
        smem_28_d0_local = DATA_y_21_load_reg_4391;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24))) begin
        smem_28_d0_local = DATA_y_2_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20))) begin
        smem_28_d0_local = DATA_y_1_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16))) begin
        smem_28_d0_local = DATA_y_3_q0;
    end else if ((~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_28_d0_local = DATA_y_q0;
    end else begin
        smem_28_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1093_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1)) | (~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_28_we0_local = 1'b1;
    end else begin
        smem_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1))) begin
        smem_29_address0_local = zext_ln211_2_fu_3980_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1))) begin
        smem_29_address0_local = zext_ln215_3_fu_4096_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1))) begin
        smem_29_address0_local = zext_ln212_3_fu_4008_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_29_address0_local = zext_ln216_3_fu_3689_p1;
    end else begin
        smem_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((or_ln172_4_reg_4174 == 5'd25)) begin
            smem_29_address1_local = zext_ln213_1_fu_3562_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd21)) begin
            smem_29_address1_local = zext_ln210_1_fu_3506_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd17)) begin
            smem_29_address1_local = zext_ln214_1_fu_3594_p1;
        end else if ((1'b1 == ap_condition_2131)) begin
            smem_29_address1_local = zext_ln172_5_fu_3225_p1;
        end else begin
            smem_29_address1_local = 'bx;
        end
    end else begin
        smem_29_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1)))) begin
        smem_29_ce0_local = 1'b1;
    end else begin
        smem_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln172_4_reg_4174 == 5'd1) & ~(or_ln172_4_reg_4174 == 5'd5) & ~(or_ln172_4_reg_4174 == 5'd9) & ~(or_ln172_4_reg_4174 == 5'd21) & ~(or_ln172_4_reg_4174 == 5'd13) & ~(or_ln172_4_reg_4174 == 5'd17) & ~(or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd21) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd17) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_29_ce1_local = 1'b1;
    end else begin
        smem_29_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1))) begin
        smem_29_d0_local = DATA_y_28_load_reg_4463;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1))) begin
        smem_29_d0_local = DATA_y_30_load_reg_4511;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1))) begin
        smem_29_d0_local = DATA_y_29_load_reg_4475;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_29_d0_local = DATA_y_31_q0;
    end else begin
        smem_29_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((or_ln172_4_reg_4174 == 5'd25)) begin
            smem_29_d1_local = DATA_y_10_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd21)) begin
            smem_29_d1_local = DATA_y_9_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd17)) begin
            smem_29_d1_local = DATA_y_11_q0;
        end else if ((1'b1 == ap_condition_2131)) begin
            smem_29_d1_local = DATA_y_8_q0;
        end else begin
            smem_29_d1_local = 'bx;
        end
    end else begin
        smem_29_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1)) | ((or_ln172_6_reg_4262 == 5'd15) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_29_we0_local = 1'b1;
    end else begin
        smem_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln172_4_reg_4174 == 5'd1) & ~(or_ln172_4_reg_4174 == 5'd5) & ~(or_ln172_4_reg_4174 == 5'd9) & ~(or_ln172_4_reg_4174 == 5'd21) & ~(or_ln172_4_reg_4174 == 5'd13) & ~(or_ln172_4_reg_4174 == 5'd17) & ~(or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd21) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd17) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_29_we1_local = 1'b1;
    end else begin
        smem_29_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1))) begin
        smem_2_address0_local = zext_ln213_2_fu_3830_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1))) begin
        smem_2_address0_local = zext_ln210_2_fu_3746_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1))) begin
        smem_2_address0_local = zext_ln214_2_fu_3862_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1))) begin
        smem_2_address0_local = smem_2_addr_25_reg_4309;
    end else if ((~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_address0_local = zext_ln215_fu_3421_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24))) begin
        smem_2_address0_local = zext_ln212_fu_3333_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20))) begin
        smem_2_address0_local = zext_ln216_fu_3449_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0))) begin
        smem_2_address0_local = zext_ln211_fu_3297_p1;
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1)) | (~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1))) begin
        smem_2_d0_local = DATA_y_18_load_reg_4403;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1))) begin
        smem_2_d0_local = DATA_y_17_load_reg_4367;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1))) begin
        smem_2_d0_local = DATA_y_19_load_reg_4415;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1))) begin
        smem_2_d0_local = DATA_y_16_load_reg_4355;
    end else if ((~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_2_d0_local = DATA_y_6_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24))) begin
        smem_2_d0_local = DATA_y_5_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20))) begin
        smem_2_d0_local = DATA_y_7_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0))) begin
        smem_2_d0_local = DATA_y_4_q0;
    end else begin
        smem_2_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1)) | (~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_we0_local = 1'b1;
    end else begin
        smem_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1))) begin
        smem_30_address0_local = zext_ln213_2_fu_3830_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1))) begin
        smem_30_address0_local = zext_ln210_2_fu_3746_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1))) begin
        smem_30_address0_local = zext_ln214_2_fu_3862_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1))) begin
        smem_30_address0_local = smem_30_addr_25_reg_4344;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24))) begin
        smem_30_address0_local = zext_ln215_fu_3421_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20))) begin
        smem_30_address0_local = zext_ln212_fu_3333_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16))) begin
        smem_30_address0_local = zext_ln216_fu_3449_p1;
    end else if ((~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_30_address0_local = zext_ln211_fu_3297_p1;
    end else begin
        smem_30_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1)) | (~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_30_ce0_local = 1'b1;
    end else begin
        smem_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1))) begin
        smem_30_d0_local = DATA_y_18_load_reg_4403;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1))) begin
        smem_30_d0_local = DATA_y_17_load_reg_4367;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1))) begin
        smem_30_d0_local = DATA_y_19_load_reg_4415;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1))) begin
        smem_30_d0_local = DATA_y_16_load_reg_4355;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24))) begin
        smem_30_d0_local = DATA_y_6_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20))) begin
        smem_30_d0_local = DATA_y_5_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16))) begin
        smem_30_d0_local = DATA_y_7_q0;
    end else if ((~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_30_d0_local = DATA_y_4_q0;
    end else begin
        smem_30_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd16)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1)) | (~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_30_we0_local = 1'b1;
    end else begin
        smem_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1))) begin
        smem_31_address0_local = zext_ln213_3_fu_4036_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1))) begin
        smem_31_address0_local = zext_ln210_3_fu_3952_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1))) begin
        smem_31_address0_local = zext_ln214_3_fu_4068_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_31_address0_local = zext_ln172_5_fu_3225_p1;
    end else begin
        smem_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((1'b1 == ap_condition_2131)) begin
            smem_31_address1_local = zext_ln211_fu_3297_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd25)) begin
            smem_31_address1_local = zext_ln215_1_fu_3622_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd21)) begin
            smem_31_address1_local = zext_ln212_1_fu_3534_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd17)) begin
            smem_31_address1_local = zext_ln216_1_fu_3650_p1;
        end else begin
            smem_31_address1_local = 'bx;
        end
    end else begin
        smem_31_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1)))) begin
        smem_31_ce0_local = 1'b1;
    end else begin
        smem_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln172_4_reg_4174 == 5'd1) & ~(or_ln172_4_reg_4174 == 5'd5) & ~(or_ln172_4_reg_4174 == 5'd9) & ~(or_ln172_4_reg_4174 == 5'd21) & ~(or_ln172_4_reg_4174 == 5'd13) & ~(or_ln172_4_reg_4174 == 5'd17) & ~(or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd21) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd17) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_31_ce1_local = 1'b1;
    end else begin
        smem_31_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1))) begin
        smem_31_d0_local = DATA_y_26_load_reg_4487;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1))) begin
        smem_31_d0_local = DATA_y_25_load_reg_4451;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1))) begin
        smem_31_d0_local = DATA_y_27_load_reg_4499;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_31_d0_local = DATA_y_24_q0;
    end else begin
        smem_31_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((1'b1 == ap_condition_2131)) begin
            smem_31_d1_local = DATA_y_12_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd25)) begin
            smem_31_d1_local = DATA_y_14_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd21)) begin
            smem_31_d1_local = DATA_y_13_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd17)) begin
            smem_31_d1_local = DATA_y_15_q0;
        end else begin
            smem_31_d1_local = 'bx;
        end
    end else begin
        smem_31_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1356_state3 == 1'b1)) | (~(or_ln172_6_reg_4262 == 5'd27) & ~(or_ln172_6_reg_4262 == 5'd3) & ~(or_ln172_6_reg_4262 == 5'd7) & ~(or_ln172_6_reg_4262 == 5'd23) & ~(or_ln172_6_reg_4262 == 5'd15) & ~(or_ln172_6_reg_4262 == 5'd19) & ~(or_ln172_6_reg_4262 == 5'd11) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_31_we0_local = 1'b1;
    end else begin
        smem_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln172_4_reg_4174 == 5'd1) & ~(or_ln172_4_reg_4174 == 5'd5) & ~(or_ln172_4_reg_4174 == 5'd9) & ~(or_ln172_4_reg_4174 == 5'd21) & ~(or_ln172_4_reg_4174 == 5'd13) & ~(or_ln172_4_reg_4174 == 5'd17) & ~(or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd21) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd17) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_31_we1_local = 1'b1;
    end else begin
        smem_31_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1))) begin
        smem_3_address0_local = zext_ln213_3_fu_4036_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1))) begin
        smem_3_address0_local = zext_ln210_3_fu_3952_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1))) begin
        smem_3_address0_local = zext_ln214_3_fu_4068_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_address0_local = zext_ln172_5_fu_3225_p1;
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((1'b1 == ap_condition_2131)) begin
            smem_3_address1_local = zext_ln215_1_fu_3622_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd25)) begin
            smem_3_address1_local = zext_ln212_1_fu_3534_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd21)) begin
            smem_3_address1_local = zext_ln216_1_fu_3650_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd1)) begin
            smem_3_address1_local = zext_ln211_fu_3297_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln172_4_reg_4174 == 5'd1) & ~(or_ln172_4_reg_4174 == 5'd5) & ~(or_ln172_4_reg_4174 == 5'd9) & ~(or_ln172_4_reg_4174 == 5'd21) & ~(or_ln172_4_reg_4174 == 5'd13) & ~(or_ln172_4_reg_4174 == 5'd17) & ~(or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd1) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd21) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1))) begin
        smem_3_d0_local = DATA_y_26_load_reg_4487;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1))) begin
        smem_3_d0_local = DATA_y_25_load_reg_4451;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1))) begin
        smem_3_d0_local = DATA_y_27_load_reg_4499;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_3_d0_local = DATA_y_24_q0;
    end else begin
        smem_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((1'b1 == ap_condition_2131)) begin
            smem_3_d1_local = DATA_y_14_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd25)) begin
            smem_3_d1_local = DATA_y_13_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd21)) begin
            smem_3_d1_local = DATA_y_15_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd1)) begin
            smem_3_d1_local = DATA_y_12_q0;
        end else begin
            smem_3_d1_local = 'bx;
        end
    end else begin
        smem_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1372_state3 == 1'b1)) | ((or_ln172_6_reg_4262 == 5'd3) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_we0_local = 1'b1;
    end else begin
        smem_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln172_4_reg_4174 == 5'd1) & ~(or_ln172_4_reg_4174 == 5'd5) & ~(or_ln172_4_reg_4174 == 5'd9) & ~(or_ln172_4_reg_4174 == 5'd21) & ~(or_ln172_4_reg_4174 == 5'd13) & ~(or_ln172_4_reg_4174 == 5'd17) & ~(or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd1) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd21) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_we1_local = 1'b1;
    end else begin
        smem_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1))) begin
        smem_4_address0_local = zext_ln215_2_fu_3890_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1))) begin
        smem_4_address0_local = zext_ln212_2_fu_3802_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1))) begin
        smem_4_address0_local = zext_ln216_2_fu_3918_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1))) begin
        smem_4_address0_local = zext_ln211_1_fu_3774_p1;
    end else if ((~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_address0_local = zext_ln210_fu_3277_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24))) begin
        smem_4_address0_local = zext_ln214_fu_3393_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0))) begin
        smem_4_address0_local = zext_ln213_fu_3361_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4))) begin
        smem_4_address0_local = zext_ln172_5_fu_3225_p1;
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1)) | (~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1))) begin
        smem_4_d0_local = DATA_y_22_load_reg_4427;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1))) begin
        smem_4_d0_local = DATA_y_21_load_reg_4391;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1))) begin
        smem_4_d0_local = DATA_y_23_load_reg_4439;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1))) begin
        smem_4_d0_local = DATA_y_20_load_reg_4379;
    end else if ((~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_4_d0_local = DATA_y_1_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24))) begin
        smem_4_d0_local = DATA_y_3_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0))) begin
        smem_4_d0_local = DATA_y_2_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4))) begin
        smem_4_d0_local = DATA_y_q0;
    end else begin
        smem_4_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1)) | (~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_we0_local = 1'b1;
    end else begin
        smem_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1))) begin
        smem_5_address0_local = zext_ln215_3_fu_4096_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1))) begin
        smem_5_address0_local = zext_ln212_3_fu_4008_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1))) begin
        smem_5_address0_local = zext_ln211_2_fu_3980_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_address0_local = zext_ln216_3_fu_3689_p1;
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((1'b1 == ap_condition_2131)) begin
            smem_5_address1_local = zext_ln210_1_fu_3506_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd25)) begin
            smem_5_address1_local = zext_ln214_1_fu_3594_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd1)) begin
            smem_5_address1_local = zext_ln213_1_fu_3562_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd5)) begin
            smem_5_address1_local = zext_ln172_5_fu_3225_p1;
        end else begin
            smem_5_address1_local = 'bx;
        end
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln172_4_reg_4174 == 5'd1) & ~(or_ln172_4_reg_4174 == 5'd5) & ~(or_ln172_4_reg_4174 == 5'd9) & ~(or_ln172_4_reg_4174 == 5'd21) & ~(or_ln172_4_reg_4174 == 5'd13) & ~(or_ln172_4_reg_4174 == 5'd17) & ~(or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd1) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd5) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1))) begin
        smem_5_d0_local = DATA_y_30_load_reg_4511;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1))) begin
        smem_5_d0_local = DATA_y_29_load_reg_4475;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1))) begin
        smem_5_d0_local = DATA_y_28_load_reg_4463;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_5_d0_local = DATA_y_31_q0;
    end else begin
        smem_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((1'b1 == ap_condition_2131)) begin
            smem_5_d1_local = DATA_y_9_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd25)) begin
            smem_5_d1_local = DATA_y_11_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd1)) begin
            smem_5_d1_local = DATA_y_10_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd5)) begin
            smem_5_d1_local = DATA_y_8_q0;
        end else begin
            smem_5_d1_local = 'bx;
        end
    end else begin
        smem_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1)) | ((or_ln172_6_reg_4262 == 5'd23) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_we0_local = 1'b1;
    end else begin
        smem_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln172_4_reg_4174 == 5'd1) & ~(or_ln172_4_reg_4174 == 5'd5) & ~(or_ln172_4_reg_4174 == 5'd9) & ~(or_ln172_4_reg_4174 == 5'd21) & ~(or_ln172_4_reg_4174 == 5'd13) & ~(or_ln172_4_reg_4174 == 5'd17) & ~(or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd1) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd5) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_we1_local = 1'b1;
    end else begin
        smem_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1))) begin
        smem_6_address0_local = zext_ln210_2_fu_3746_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1))) begin
        smem_6_address0_local = zext_ln214_2_fu_3862_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1))) begin
        smem_6_address0_local = zext_ln213_2_fu_3830_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1))) begin
        smem_6_address0_local = smem_6_addr_25_reg_4314;
    end else if ((~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_address0_local = zext_ln212_fu_3333_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24))) begin
        smem_6_address0_local = zext_ln216_fu_3449_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0))) begin
        smem_6_address0_local = zext_ln215_fu_3421_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4))) begin
        smem_6_address0_local = zext_ln211_fu_3297_p1;
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1)) | (~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1))) begin
        smem_6_d0_local = DATA_y_17_load_reg_4367;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1))) begin
        smem_6_d0_local = DATA_y_19_load_reg_4415;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1))) begin
        smem_6_d0_local = DATA_y_18_load_reg_4403;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1))) begin
        smem_6_d0_local = DATA_y_16_load_reg_4355;
    end else if ((~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_6_d0_local = DATA_y_5_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24))) begin
        smem_6_d0_local = DATA_y_7_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0))) begin
        smem_6_d0_local = DATA_y_6_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4))) begin
        smem_6_d0_local = DATA_y_4_q0;
    end else begin
        smem_6_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1)) | (~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_we0_local = 1'b1;
    end else begin
        smem_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1))) begin
        smem_7_address0_local = zext_ln210_3_fu_3952_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1))) begin
        smem_7_address0_local = zext_ln214_3_fu_4068_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1))) begin
        smem_7_address0_local = zext_ln213_3_fu_4036_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_address0_local = zext_ln172_5_fu_3225_p1;
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((1'b1 == ap_condition_2131)) begin
            smem_7_address1_local = zext_ln212_1_fu_3534_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd25)) begin
            smem_7_address1_local = zext_ln216_1_fu_3650_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd1)) begin
            smem_7_address1_local = zext_ln215_1_fu_3622_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd5)) begin
            smem_7_address1_local = zext_ln211_fu_3297_p1;
        end else begin
            smem_7_address1_local = 'bx;
        end
    end else begin
        smem_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln172_4_reg_4174 == 5'd1) & ~(or_ln172_4_reg_4174 == 5'd5) & ~(or_ln172_4_reg_4174 == 5'd9) & ~(or_ln172_4_reg_4174 == 5'd21) & ~(or_ln172_4_reg_4174 == 5'd13) & ~(or_ln172_4_reg_4174 == 5'd17) & ~(or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd1) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd5) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1))) begin
        smem_7_d0_local = DATA_y_25_load_reg_4451;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1))) begin
        smem_7_d0_local = DATA_y_27_load_reg_4499;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1))) begin
        smem_7_d0_local = DATA_y_26_load_reg_4487;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_7_d0_local = DATA_y_24_q0;
    end else begin
        smem_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((1'b1 == ap_condition_2131)) begin
            smem_7_d1_local = DATA_y_13_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd25)) begin
            smem_7_d1_local = DATA_y_15_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd1)) begin
            smem_7_d1_local = DATA_y_14_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd5)) begin
            smem_7_d1_local = DATA_y_12_q0;
        end else begin
            smem_7_d1_local = 'bx;
        end
    end else begin
        smem_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1463_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1)) | ((or_ln172_6_reg_4262 == 5'd7) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_we0_local = 1'b1;
    end else begin
        smem_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln172_4_reg_4174 == 5'd1) & ~(or_ln172_4_reg_4174 == 5'd5) & ~(or_ln172_4_reg_4174 == 5'd9) & ~(or_ln172_4_reg_4174 == 5'd21) & ~(or_ln172_4_reg_4174 == 5'd13) & ~(or_ln172_4_reg_4174 == 5'd17) & ~(or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd1) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd5) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_we1_local = 1'b1;
    end else begin
        smem_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1))) begin
        smem_8_address0_local = zext_ln212_2_fu_3802_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1))) begin
        smem_8_address0_local = zext_ln216_2_fu_3918_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1))) begin
        smem_8_address0_local = zext_ln215_2_fu_3890_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1))) begin
        smem_8_address0_local = zext_ln211_1_fu_3774_p1;
    end else if ((~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_address0_local = zext_ln214_fu_3393_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0))) begin
        smem_8_address0_local = zext_ln210_fu_3277_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4))) begin
        smem_8_address0_local = zext_ln213_fu_3361_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8))) begin
        smem_8_address0_local = zext_ln172_5_fu_3225_p1;
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1)) | (~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1))) begin
        smem_8_d0_local = DATA_y_21_load_reg_4391;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1))) begin
        smem_8_d0_local = DATA_y_23_load_reg_4439;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1))) begin
        smem_8_d0_local = DATA_y_22_load_reg_4427;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1))) begin
        smem_8_d0_local = DATA_y_20_load_reg_4379;
    end else if ((~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_8_d0_local = DATA_y_3_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0))) begin
        smem_8_d0_local = DATA_y_1_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4))) begin
        smem_8_d0_local = DATA_y_2_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8))) begin
        smem_8_d0_local = DATA_y_q0;
    end else begin
        smem_8_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd4)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1173_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1143_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1)) | (~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_8_we0_local = 1'b1;
    end else begin
        smem_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1))) begin
        smem_9_address0_local = zext_ln212_3_fu_4008_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1))) begin
        smem_9_address0_local = zext_ln215_3_fu_4096_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1))) begin
        smem_9_address0_local = zext_ln211_2_fu_3980_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_address0_local = zext_ln216_3_fu_3689_p1;
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((1'b1 == ap_condition_2131)) begin
            smem_9_address1_local = zext_ln214_1_fu_3594_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd1)) begin
            smem_9_address1_local = zext_ln210_1_fu_3506_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd5)) begin
            smem_9_address1_local = zext_ln213_1_fu_3562_p1;
        end else if ((or_ln172_4_reg_4174 == 5'd9)) begin
            smem_9_address1_local = zext_ln172_5_fu_3225_p1;
        end else begin
            smem_9_address1_local = 'bx;
        end
    end else begin
        smem_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln172_4_reg_4174 == 5'd1) & ~(or_ln172_4_reg_4174 == 5'd5) & ~(or_ln172_4_reg_4174 == 5'd9) & ~(or_ln172_4_reg_4174 == 5'd21) & ~(or_ln172_4_reg_4174 == 5'd13) & ~(or_ln172_4_reg_4174 == 5'd17) & ~(or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd1) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd5) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd9) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1))) begin
        smem_9_d0_local = DATA_y_29_load_reg_4475;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1))) begin
        smem_9_d0_local = DATA_y_30_load_reg_4511;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1))) begin
        smem_9_d0_local = DATA_y_28_load_reg_4463;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_9_d0_local = DATA_y_31_q0;
    end else begin
        smem_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_684)) begin
        if ((1'b1 == ap_condition_2131)) begin
            smem_9_d1_local = DATA_y_11_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd1)) begin
            smem_9_d1_local = DATA_y_9_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd5)) begin
            smem_9_d1_local = DATA_y_10_q0;
        end else if ((or_ln172_4_reg_4174 == 5'd9)) begin
            smem_9_d1_local = DATA_y_8_q0;
        end else begin
            smem_9_d1_local = 'bx;
        end
    end else begin
        smem_9_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1518_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1421_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1393_state3 == 1'b1)) | ((or_ln172_6_reg_4262 == 5'd27) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_we0_local = 1'b1;
    end else begin
        smem_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(or_ln172_4_reg_4174 == 5'd1) & ~(or_ln172_4_reg_4174 == 5'd5) & ~(or_ln172_4_reg_4174 == 5'd9) & ~(or_ln172_4_reg_4174 == 5'd21) & ~(or_ln172_4_reg_4174 == 5'd13) & ~(or_ln172_4_reg_4174 == 5'd17) & ~(or_ln172_4_reg_4174 == 5'd25) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd1) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd5) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((or_ln172_4_reg_4174 == 5'd9) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_9_we1_local = 1'b1;
    end else begin
        smem_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1))) begin
        smem_address0_local = zext_ln211_1_fu_3774_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1))) begin
        smem_address0_local = zext_ln215_2_fu_3890_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1))) begin
        smem_address0_local = zext_ln212_2_fu_3802_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1))) begin
        smem_address0_local = zext_ln216_2_fu_3918_p1;
    end else if ((~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_address0_local = zext_ln213_fu_3361_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24))) begin
        smem_address0_local = zext_ln210_fu_3277_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20))) begin
        smem_address0_local = zext_ln214_fu_3393_p1;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0))) begin
        smem_address0_local = zext_ln172_5_fu_3225_p1;
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1)) | (~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1))) begin
        smem_d0_local = DATA_y_20_load_reg_4379;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1))) begin
        smem_d0_local = DATA_y_22_load_reg_4427;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1))) begin
        smem_d0_local = DATA_y_21_load_reg_4391;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1))) begin
        smem_d0_local = DATA_y_23_load_reg_4439;
    end else if ((~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        smem_d0_local = DATA_y_2_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24))) begin
        smem_d0_local = DATA_y_1_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20))) begin
        smem_d0_local = DATA_y_3_q0;
    end else if (((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0))) begin
        smem_d0_local = DATA_y_q0;
    end else begin
        smem_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd0)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd20)) | ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln172_fu_3215_p1 == 5'd24)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1214_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1118_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1107_state3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1086_state3 == 1'b1)) | (~(trunc_ln172_fu_3215_p1 == 5'd0) & ~(trunc_ln172_fu_3215_p1 == 5'd4) & ~(trunc_ln172_fu_3215_p1 == 5'd8) & ~(trunc_ln172_fu_3215_p1 == 5'd20) & ~(trunc_ln172_fu_3215_p1 == 5'd12) & ~(trunc_ln172_fu_3215_p1 == 5'd16) & ~(trunc_ln172_fu_3215_p1 == 5'd24) & (tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
assign DATA_y_10_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_10_ce0 = DATA_y_10_ce0_local;
assign DATA_y_11_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_11_ce0 = DATA_y_11_ce0_local;
assign DATA_y_12_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_12_ce0 = DATA_y_12_ce0_local;
assign DATA_y_13_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_13_ce0 = DATA_y_13_ce0_local;
assign DATA_y_14_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_14_ce0 = DATA_y_14_ce0_local;
assign DATA_y_15_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_15_ce0 = DATA_y_15_ce0_local;
assign DATA_y_16_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_16_ce0 = DATA_y_16_ce0_local;
assign DATA_y_17_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_17_ce0 = DATA_y_17_ce0_local;
assign DATA_y_18_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_18_ce0 = DATA_y_18_ce0_local;
assign DATA_y_19_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_19_ce0 = DATA_y_19_ce0_local;
assign DATA_y_1_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_20_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_20_ce0 = DATA_y_20_ce0_local;
assign DATA_y_21_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_21_ce0 = DATA_y_21_ce0_local;
assign DATA_y_22_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_22_ce0 = DATA_y_22_ce0_local;
assign DATA_y_23_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_23_ce0 = DATA_y_23_ce0_local;
assign DATA_y_24_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_24_ce0 = DATA_y_24_ce0_local;
assign DATA_y_25_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_25_ce0 = DATA_y_25_ce0_local;
assign DATA_y_26_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_26_ce0 = DATA_y_26_ce0_local;
assign DATA_y_27_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_27_ce0 = DATA_y_27_ce0_local;
assign DATA_y_28_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_28_ce0 = DATA_y_28_ce0_local;
assign DATA_y_29_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_29_ce0 = DATA_y_29_ce0_local;
assign DATA_y_2_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_30_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_30_ce0 = DATA_y_30_ce0_local;
assign DATA_y_31_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_31_ce0 = DATA_y_31_ce0_local;
assign DATA_y_3_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_4_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_5_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_6_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_7_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_8_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_8_ce0 = DATA_y_8_ce0_local;
assign DATA_y_9_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_9_ce0 = DATA_y_9_ce0_local;
assign DATA_y_address0 = zext_ln209_fu_3120_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign add_ln204_fu_3701_p2 = (tid_reg_4115 + 7'd4);
assign add_ln210_1_fu_3490_p2 = ($signed(zext_ln172_13_fu_3486_p1) + $signed(9'd264));
assign add_ln210_2_fu_3730_p2 = ($signed(zext_ln172_16_fu_3726_p1) + $signed(9'd264));
assign add_ln210_3_fu_3936_p2 = ($signed(zext_ln172_19_fu_3933_p1) + $signed(9'd264));
assign add_ln210_fu_3261_p2 = ($signed(zext_ln172_10_fu_3211_p1) + $signed(9'd264));
assign add_ln211_1_fu_3964_p2 = (zext_ln172_18_fu_3930_p1 + 8'd66);
assign add_ln211_fu_3758_p2 = (zext_ln172_15_fu_3722_p1 + 8'd66);
assign add_ln212_1_fu_3518_p2 = ($signed(zext_ln172_13_fu_3486_p1) + $signed(9'd330));
assign add_ln212_2_fu_3786_p2 = ($signed(zext_ln172_16_fu_3726_p1) + $signed(9'd330));
assign add_ln212_3_fu_3992_p2 = ($signed(zext_ln172_19_fu_3933_p1) + $signed(9'd330));
assign add_ln212_fu_3317_p2 = ($signed(zext_ln172_10_fu_3211_p1) + $signed(9'd330));
assign add_ln213_1_fu_3546_p2 = ($signed(zext_ln172_12_fu_3482_p1) + $signed(8'd132));
assign add_ln213_2_fu_3814_p2 = ($signed(zext_ln172_15_fu_3722_p1) + $signed(8'd132));
assign add_ln213_3_fu_4020_p2 = ($signed(zext_ln172_18_fu_3930_p1) + $signed(8'd132));
assign add_ln213_fu_3345_p2 = ($signed(zext_ln172_9_fu_3207_p1) + $signed(8'd132));
assign add_ln214_1_fu_3574_p2 = ($signed(zext_ln172_12_fu_3482_p1) + $signed(8'd140));
assign add_ln214_2_fu_3842_p2 = ($signed(zext_ln172_15_fu_3722_p1) + $signed(8'd140));
assign add_ln214_3_fu_4048_p2 = ($signed(zext_ln172_18_fu_3930_p1) + $signed(8'd140));
assign add_ln214_fu_3373_p2 = ($signed(zext_ln172_9_fu_3207_p1) + $signed(8'd140));
assign add_ln215_1_fu_3606_p2 = (zext_ln172_13_fu_3486_p1 + 9'd198);
assign add_ln215_2_fu_3874_p2 = (zext_ln172_16_fu_3726_p1 + 9'd198);
assign add_ln215_3_fu_4080_p2 = (zext_ln172_19_fu_3933_p1 + 9'd198);
assign add_ln215_fu_3405_p2 = (zext_ln172_10_fu_3211_p1 + 9'd198);
assign add_ln216_1_fu_3634_p2 = (zext_ln172_11_fu_3478_p1 + 10'd462);
assign add_ln216_2_fu_3902_p2 = (zext_ln172_14_fu_3718_p1 + 10'd462);
assign add_ln216_3_fu_3673_p2 = (zext_ln172_17_fu_3669_p1 + 10'd462);
assign add_ln216_fu_3433_p2 = (zext_ln172_fu_3203_p1 + 10'd462);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_2131 = (~(or_ln172_4_reg_4174 == 5'd1) & ~(or_ln172_4_reg_4174 == 5'd5) & ~(or_ln172_4_reg_4174 == 5'd9) & ~(or_ln172_4_reg_4174 == 5'd21) & ~(or_ln172_4_reg_4174 == 5'd13) & ~(or_ln172_4_reg_4174 == 5'd17) & ~(or_ln172_4_reg_4174 == 5'd25));
end
always @ (*) begin
    ap_condition_684 = ((tmp_reg_4124 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign lshr_ln19_fu_3267_p4 = {{add_ln210_fu_3261_p2[8:5]}};
assign lshr_ln20_fu_3323_p4 = {{add_ln212_fu_3317_p2[8:5]}};
assign lshr_ln210_1_fu_3496_p4 = {{add_ln210_1_fu_3490_p2[8:5]}};
assign lshr_ln210_2_fu_3736_p4 = {{add_ln210_2_fu_3730_p2[8:5]}};
assign lshr_ln210_3_fu_3942_p4 = {{add_ln210_3_fu_3936_p2[8:5]}};
assign lshr_ln211_2_fu_3764_p4 = {{add_ln211_fu_3758_p2[7:5]}};
assign lshr_ln211_3_fu_3970_p4 = {{add_ln211_1_fu_3964_p2[7:5]}};
assign lshr_ln212_1_fu_3524_p4 = {{add_ln212_1_fu_3518_p2[8:5]}};
assign lshr_ln212_2_fu_3792_p4 = {{add_ln212_2_fu_3786_p2[8:5]}};
assign lshr_ln212_3_fu_3998_p4 = {{add_ln212_3_fu_3992_p2[8:5]}};
assign lshr_ln213_1_fu_3552_p4 = {{add_ln213_1_fu_3546_p2[7:5]}};
assign lshr_ln213_2_fu_3820_p4 = {{add_ln213_2_fu_3814_p2[7:5]}};
assign lshr_ln213_3_fu_4026_p4 = {{add_ln213_3_fu_4020_p2[7:5]}};
assign lshr_ln215_1_fu_3612_p4 = {{add_ln215_1_fu_3606_p2[8:5]}};
assign lshr_ln215_2_fu_3880_p4 = {{add_ln215_2_fu_3874_p2[8:5]}};
assign lshr_ln215_3_fu_4086_p4 = {{add_ln215_3_fu_4080_p2[8:5]}};
assign lshr_ln216_1_fu_3640_p4 = {{add_ln216_1_fu_3634_p2[9:5]}};
assign lshr_ln216_2_fu_3908_p4 = {{add_ln216_2_fu_3902_p2[9:5]}};
assign lshr_ln216_3_fu_3679_p4 = {{add_ln216_3_fu_3673_p2[9:5]}};
assign lshr_ln21_fu_3351_p4 = {{add_ln213_fu_3345_p2[7:5]}};
assign lshr_ln22_fu_3411_p4 = {{add_ln215_fu_3405_p2[8:5]}};
assign lshr_ln23_fu_3439_p4 = {{add_ln216_fu_3433_p2[9:5]}};
assign lshr_ln_fu_3110_p4 = {{ap_sig_allocacmp_tid[5:2]}};
assign offset_3_fu_3470_p3 = {{tmp_s_fu_3461_p4}, {1'd1}};
assign offset_4_fu_3711_p3 = {{lshr_ln_reg_4128}, {2'd2}};
assign offset_5_fu_3662_p3 = {{lshr_ln_reg_4128}, {2'd3}};
assign offset_fu_3200_p1 = tid_reg_4115[5:0];
assign or_ln172_4_fu_3166_p3 = {{tmp_39_fu_3156_p4}, {1'd1}};
assign or_ln172_5_fu_3184_p3 = {{tmp_40_fu_3174_p4}, {2'd2}};
assign or_ln172_6_fu_3192_p3 = {{tmp_40_fu_3174_p4}, {2'd3}};
assign sext_ln214_1_fu_3590_p1 = $signed(trunc_ln214_1_fu_3580_p4);
assign sext_ln214_2_fu_3858_p1 = $signed(trunc_ln214_2_fu_3848_p4);
assign sext_ln214_3_fu_4064_p1 = $signed(trunc_ln214_3_fu_4054_p4);
assign sext_ln214_fu_3389_p1 = $signed(trunc_ln7_fu_3379_p4);
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
assign tmp_29_fu_3218_p3 = tid_reg_4115[32'd5];
assign tmp_39_fu_3156_p4 = {{ap_sig_allocacmp_tid[4:1]}};
assign tmp_40_fu_3174_p4 = {{ap_sig_allocacmp_tid[4:2]}};
assign tmp_fu_3102_p3 = ap_sig_allocacmp_tid[32'd6];
assign tmp_s_fu_3461_p4 = {{tid_reg_4115[5:1]}};
assign trunc_ln172_fu_3215_p1 = tid_reg_4115[4:0];
assign trunc_ln214_1_fu_3580_p4 = {{add_ln214_1_fu_3574_p2[7:5]}};
assign trunc_ln214_2_fu_3848_p4 = {{add_ln214_2_fu_3842_p2[7:5]}};
assign trunc_ln214_3_fu_4054_p4 = {{add_ln214_3_fu_4048_p2[7:5]}};
assign trunc_ln7_fu_3379_p4 = {{add_ln214_fu_3373_p2[7:5]}};
assign zext_ln172_10_fu_3211_p1 = offset_fu_3200_p1;
assign zext_ln172_11_fu_3478_p1 = offset_3_fu_3470_p3;
assign zext_ln172_12_fu_3482_p1 = offset_3_fu_3470_p3;
assign zext_ln172_13_fu_3486_p1 = offset_3_fu_3470_p3;
assign zext_ln172_14_fu_3718_p1 = offset_4_fu_3711_p3;
assign zext_ln172_15_fu_3722_p1 = offset_4_fu_3711_p3;
assign zext_ln172_16_fu_3726_p1 = offset_4_fu_3711_p3;
assign zext_ln172_17_fu_3669_p1 = offset_5_fu_3662_p3;
assign zext_ln172_18_fu_3930_p1 = offset_5_reg_4349;
assign zext_ln172_19_fu_3933_p1 = offset_5_reg_4349;
assign zext_ln172_5_fu_3225_p1 = tmp_29_fu_3218_p3;
assign zext_ln172_9_fu_3207_p1 = offset_fu_3200_p1;
assign zext_ln172_fu_3203_p1 = offset_fu_3200_p1;
assign zext_ln209_fu_3120_p1 = lshr_ln_fu_3110_p4;
assign zext_ln210_1_fu_3506_p1 = lshr_ln210_1_fu_3496_p4;
assign zext_ln210_2_fu_3746_p1 = lshr_ln210_2_fu_3736_p4;
assign zext_ln210_3_fu_3952_p1 = lshr_ln210_3_fu_3942_p4;
assign zext_ln210_fu_3277_p1 = lshr_ln19_fu_3267_p4;
assign zext_ln211_1_fu_3774_p1 = lshr_ln211_2_fu_3764_p4;
assign zext_ln211_2_fu_3980_p1 = lshr_ln211_3_fu_3970_p4;
assign zext_ln211_fu_3297_p1 = zext_ln_fu_3289_p3;
assign zext_ln212_1_fu_3534_p1 = lshr_ln212_1_fu_3524_p4;
assign zext_ln212_2_fu_3802_p1 = lshr_ln212_2_fu_3792_p4;
assign zext_ln212_3_fu_4008_p1 = lshr_ln212_3_fu_3998_p4;
assign zext_ln212_fu_3333_p1 = lshr_ln20_fu_3323_p4;
assign zext_ln213_1_fu_3562_p1 = lshr_ln213_1_fu_3552_p4;
assign zext_ln213_2_fu_3830_p1 = lshr_ln213_2_fu_3820_p4;
assign zext_ln213_3_fu_4036_p1 = lshr_ln213_3_fu_4026_p4;
assign zext_ln213_fu_3361_p1 = lshr_ln21_fu_3351_p4;
assign zext_ln214_1_fu_3594_p1 = $unsigned(sext_ln214_1_fu_3590_p1);
assign zext_ln214_2_fu_3862_p1 = $unsigned(sext_ln214_2_fu_3858_p1);
assign zext_ln214_3_fu_4068_p1 = $unsigned(sext_ln214_3_fu_4064_p1);
assign zext_ln214_fu_3393_p1 = $unsigned(sext_ln214_fu_3389_p1);
assign zext_ln215_1_fu_3622_p1 = lshr_ln215_1_fu_3612_p4;
assign zext_ln215_2_fu_3890_p1 = lshr_ln215_2_fu_3880_p4;
assign zext_ln215_3_fu_4096_p1 = lshr_ln215_3_fu_4086_p4;
assign zext_ln215_fu_3421_p1 = lshr_ln22_fu_3411_p4;
assign zext_ln216_1_fu_3650_p1 = lshr_ln216_1_fu_3640_p4;
assign zext_ln216_2_fu_3918_p1 = lshr_ln216_2_fu_3908_p4;
assign zext_ln216_3_fu_3689_p1 = lshr_ln216_3_fu_3679_p4;
assign zext_ln216_fu_3449_p1 = lshr_ln23_fu_3439_p4;
assign zext_ln_fu_3289_p3 = {{1'd1}, {tmp_29_fu_3218_p3}};
always @ (posedge ap_clk) begin
    or_ln172_4_reg_4174[0] <= 1'b1;
    or_ln172_5_reg_4218[1:0] <= 2'b10;
    or_ln172_6_reg_4262[1:0] <= 2'b11;
    smem_2_addr_25_reg_4309[4:1] <= 4'b0000;
    smem_6_addr_25_reg_4314[4:1] <= 4'b0000;
    smem_10_addr_25_reg_4319[4:1] <= 4'b0000;
    smem_14_addr_25_reg_4324[4:1] <= 4'b0000;
    smem_18_addr_25_reg_4329[4:1] <= 4'b0000;
    smem_22_addr_25_reg_4334[4:1] <= 4'b0000;
    smem_26_addr_25_reg_4339[4:1] <= 4'b0000;
    smem_30_addr_25_reg_4344[4:1] <= 4'b0000;
    offset_5_reg_4349[1:0] <= 2'b11;
end
endmodule 