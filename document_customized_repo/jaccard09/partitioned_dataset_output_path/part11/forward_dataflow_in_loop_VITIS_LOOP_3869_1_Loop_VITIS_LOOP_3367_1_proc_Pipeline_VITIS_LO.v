
module forward_dataflow_in_loop_VITIS_LOOP_3869_1_Loop_VITIS_LOOP_3367_1_proc_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2740_3_address0,v2740_3_ce0,v2740_3_q0,v2740_2_address0,v2740_2_ce0,v2740_2_q0,v2740_1_address0,v2740_1_ce0,v2740_1_q0,v2740_address0,v2740_ce0,v2740_q0,sext_ln3367,tmp,v2739_31_address0,v2739_31_ce0,v2739_31_q0,v2739_27_address0,v2739_27_ce0,v2739_27_q0,v2739_23_address0,v2739_23_ce0,v2739_23_q0,v2739_19_address0,v2739_19_ce0,v2739_19_q0,v2739_15_address0,v2739_15_ce0,v2739_15_q0,v2739_11_address0,v2739_11_ce0,v2739_11_q0,v2739_7_address0,v2739_7_ce0,v2739_7_q0,v2739_3_address0,v2739_3_ce0,v2739_3_q0,v2739_30_address0,v2739_30_ce0,v2739_30_q0,v2739_26_address0,v2739_26_ce0,v2739_26_q0,v2739_22_address0,v2739_22_ce0,v2739_22_q0,v2739_18_address0,v2739_18_ce0,v2739_18_q0,v2739_14_address0,v2739_14_ce0,v2739_14_q0,v2739_10_address0,v2739_10_ce0,v2739_10_q0,v2739_6_address0,v2739_6_ce0,v2739_6_q0,v2739_2_address0,v2739_2_ce0,v2739_2_q0,v2739_29_address0,v2739_29_ce0,v2739_29_q0,v2739_25_address0,v2739_25_ce0,v2739_25_q0,v2739_21_address0,v2739_21_ce0,v2739_21_q0,v2739_17_address0,v2739_17_ce0,v2739_17_q0,v2739_13_address0,v2739_13_ce0,v2739_13_q0,v2739_9_address0,v2739_9_ce0,v2739_9_q0,v2739_5_address0,v2739_5_ce0,v2739_5_q0,v2739_1_address0,v2739_1_ce0,v2739_1_q0,v2739_28_address0,v2739_28_ce0,v2739_28_q0,v2739_24_address0,v2739_24_ce0,v2739_24_q0,v2739_20_address0,v2739_20_ce0,v2739_20_q0,v2739_16_address0,v2739_16_ce0,v2739_16_q0,v2739_12_address0,v2739_12_ce0,v2739_12_q0,v2739_8_address0,v2739_8_ce0,v2739_8_q0,v2739_4_address0,v2739_4_ce0,v2739_4_q0,v2739_address0,v2739_ce0,v2739_q0,v2738_7_address0,v2738_7_ce0,v2738_7_q0,v2741_7_address0,v2741_7_ce0,v2741_7_we0,v2741_7_d0,v2741_7_address1,v2741_7_ce1,v2741_7_q1,v2738_6_address0,v2738_6_ce0,v2738_6_q0,v2741_6_address0,v2741_6_ce0,v2741_6_we0,v2741_6_d0,v2741_6_address1,v2741_6_ce1,v2741_6_q1,v2738_5_address0,v2738_5_ce0,v2738_5_q0,v2741_5_address0,v2741_5_ce0,v2741_5_we0,v2741_5_d0,v2741_5_address1,v2741_5_ce1,v2741_5_q1,v2738_4_address0,v2738_4_ce0,v2738_4_q0,v2741_4_address0,v2741_4_ce0,v2741_4_we0,v2741_4_d0,v2741_4_address1,v2741_4_ce1,v2741_4_q1,v2738_3_address0,v2738_3_ce0,v2738_3_q0,v2741_3_address0,v2741_3_ce0,v2741_3_we0,v2741_3_d0,v2741_3_address1,v2741_3_ce1,v2741_3_q1,v2738_2_address0,v2738_2_ce0,v2738_2_q0,v2741_2_address0,v2741_2_ce0,v2741_2_we0,v2741_2_d0,v2741_2_address1,v2741_2_ce1,v2741_2_q1,v2738_1_address0,v2738_1_ce0,v2738_1_q0,v2741_1_address0,v2741_1_ce0,v2741_1_we0,v2741_1_d0,v2741_1_address1,v2741_1_ce1,v2741_1_q1,v2738_address0,v2738_ce0,v2738_q0,v2741_address0,v2741_ce0,v2741_we0,v2741_d0,v2741_address1,v2741_ce1,v2741_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] v2740_3_address0;
output   v2740_3_ce0;
input  [7:0] v2740_3_q0;
output  [2:0] v2740_2_address0;
output   v2740_2_ce0;
input  [7:0] v2740_2_q0;
output  [2:0] v2740_1_address0;
output   v2740_1_ce0;
input  [7:0] v2740_1_q0;
output  [2:0] v2740_address0;
output   v2740_ce0;
input  [7:0] v2740_q0;
input  [8:0] sext_ln3367;
input  [0:0] tmp;
output  [4:0] v2739_31_address0;
output   v2739_31_ce0;
input  [7:0] v2739_31_q0;
output  [4:0] v2739_27_address0;
output   v2739_27_ce0;
input  [7:0] v2739_27_q0;
output  [4:0] v2739_23_address0;
output   v2739_23_ce0;
input  [7:0] v2739_23_q0;
output  [4:0] v2739_19_address0;
output   v2739_19_ce0;
input  [7:0] v2739_19_q0;
output  [4:0] v2739_15_address0;
output   v2739_15_ce0;
input  [7:0] v2739_15_q0;
output  [4:0] v2739_11_address0;
output   v2739_11_ce0;
input  [7:0] v2739_11_q0;
output  [4:0] v2739_7_address0;
output   v2739_7_ce0;
input  [7:0] v2739_7_q0;
output  [4:0] v2739_3_address0;
output   v2739_3_ce0;
input  [7:0] v2739_3_q0;
output  [4:0] v2739_30_address0;
output   v2739_30_ce0;
input  [7:0] v2739_30_q0;
output  [4:0] v2739_26_address0;
output   v2739_26_ce0;
input  [7:0] v2739_26_q0;
output  [4:0] v2739_22_address0;
output   v2739_22_ce0;
input  [7:0] v2739_22_q0;
output  [4:0] v2739_18_address0;
output   v2739_18_ce0;
input  [7:0] v2739_18_q0;
output  [4:0] v2739_14_address0;
output   v2739_14_ce0;
input  [7:0] v2739_14_q0;
output  [4:0] v2739_10_address0;
output   v2739_10_ce0;
input  [7:0] v2739_10_q0;
output  [4:0] v2739_6_address0;
output   v2739_6_ce0;
input  [7:0] v2739_6_q0;
output  [4:0] v2739_2_address0;
output   v2739_2_ce0;
input  [7:0] v2739_2_q0;
output  [4:0] v2739_29_address0;
output   v2739_29_ce0;
input  [7:0] v2739_29_q0;
output  [4:0] v2739_25_address0;
output   v2739_25_ce0;
input  [7:0] v2739_25_q0;
output  [4:0] v2739_21_address0;
output   v2739_21_ce0;
input  [7:0] v2739_21_q0;
output  [4:0] v2739_17_address0;
output   v2739_17_ce0;
input  [7:0] v2739_17_q0;
output  [4:0] v2739_13_address0;
output   v2739_13_ce0;
input  [7:0] v2739_13_q0;
output  [4:0] v2739_9_address0;
output   v2739_9_ce0;
input  [7:0] v2739_9_q0;
output  [4:0] v2739_5_address0;
output   v2739_5_ce0;
input  [7:0] v2739_5_q0;
output  [4:0] v2739_1_address0;
output   v2739_1_ce0;
input  [7:0] v2739_1_q0;
output  [4:0] v2739_28_address0;
output   v2739_28_ce0;
input  [7:0] v2739_28_q0;
output  [4:0] v2739_24_address0;
output   v2739_24_ce0;
input  [7:0] v2739_24_q0;
output  [4:0] v2739_20_address0;
output   v2739_20_ce0;
input  [7:0] v2739_20_q0;
output  [4:0] v2739_16_address0;
output   v2739_16_ce0;
input  [7:0] v2739_16_q0;
output  [4:0] v2739_12_address0;
output   v2739_12_ce0;
input  [7:0] v2739_12_q0;
output  [4:0] v2739_8_address0;
output   v2739_8_ce0;
input  [7:0] v2739_8_q0;
output  [4:0] v2739_4_address0;
output   v2739_4_ce0;
input  [7:0] v2739_4_q0;
output  [4:0] v2739_address0;
output   v2739_ce0;
input  [7:0] v2739_q0;
output  [1:0] v2738_7_address0;
output   v2738_7_ce0;
input  [7:0] v2738_7_q0;
output  [1:0] v2741_7_address0;
output   v2741_7_ce0;
output   v2741_7_we0;
output  [7:0] v2741_7_d0;
output  [1:0] v2741_7_address1;
output   v2741_7_ce1;
input  [7:0] v2741_7_q1;
output  [1:0] v2738_6_address0;
output   v2738_6_ce0;
input  [7:0] v2738_6_q0;
output  [1:0] v2741_6_address0;
output   v2741_6_ce0;
output   v2741_6_we0;
output  [7:0] v2741_6_d0;
output  [1:0] v2741_6_address1;
output   v2741_6_ce1;
input  [7:0] v2741_6_q1;
output  [1:0] v2738_5_address0;
output   v2738_5_ce0;
input  [7:0] v2738_5_q0;
output  [1:0] v2741_5_address0;
output   v2741_5_ce0;
output   v2741_5_we0;
output  [7:0] v2741_5_d0;
output  [1:0] v2741_5_address1;
output   v2741_5_ce1;
input  [7:0] v2741_5_q1;
output  [1:0] v2738_4_address0;
output   v2738_4_ce0;
input  [7:0] v2738_4_q0;
output  [1:0] v2741_4_address0;
output   v2741_4_ce0;
output   v2741_4_we0;
output  [7:0] v2741_4_d0;
output  [1:0] v2741_4_address1;
output   v2741_4_ce1;
input  [7:0] v2741_4_q1;
output  [1:0] v2738_3_address0;
output   v2738_3_ce0;
input  [7:0] v2738_3_q0;
output  [1:0] v2741_3_address0;
output   v2741_3_ce0;
output   v2741_3_we0;
output  [7:0] v2741_3_d0;
output  [1:0] v2741_3_address1;
output   v2741_3_ce1;
input  [7:0] v2741_3_q1;
output  [1:0] v2738_2_address0;
output   v2738_2_ce0;
input  [7:0] v2738_2_q0;
output  [1:0] v2741_2_address0;
output   v2741_2_ce0;
output   v2741_2_we0;
output  [7:0] v2741_2_d0;
output  [1:0] v2741_2_address1;
output   v2741_2_ce1;
input  [7:0] v2741_2_q1;
output  [1:0] v2738_1_address0;
output   v2738_1_ce0;
input  [7:0] v2738_1_q0;
output  [1:0] v2741_1_address0;
output   v2741_1_ce0;
output   v2741_1_we0;
output  [7:0] v2741_1_d0;
output  [1:0] v2741_1_address1;
output   v2741_1_ce1;
input  [7:0] v2741_1_q1;
output  [1:0] v2738_address0;
output   v2738_ce0;
input  [7:0] v2738_q0;
output  [1:0] v2741_address0;
output   v2741_ce0;
output   v2741_we0;
output  [7:0] v2741_d0;
output  [1:0] v2741_address1;
output   v2741_ce1;
input  [7:0] v2741_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln3367_fu_1079_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] zext_ln3367_fu_976_p1;
reg   [63:0] zext_ln3367_reg_1652;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] zext_ln3367_reg_1652_pp0_iter1_reg;
wire   [0:0] cmp13_i_i_fu_985_p2;
reg   [0:0] cmp13_i_i_reg_1659;
reg   [0:0] cmp13_i_i_reg_1659_pp0_iter1_reg;
reg   [0:0] cmp13_i_i_reg_1659_pp0_iter2_reg;
wire   [0:0] brmerge207_i_fu_1011_p2;
reg   [0:0] brmerge207_i_reg_1676;
reg   [0:0] brmerge207_i_reg_1676_pp0_iter1_reg;
reg   [0:0] brmerge207_i_reg_1676_pp0_iter2_reg;
reg   [0:0] brmerge207_i_reg_1676_pp0_iter3_reg;
reg   [0:0] brmerge207_i_reg_1676_pp0_iter4_reg;
wire   [1:0] lshr_ln67_fu_1017_p4;
reg   [1:0] lshr_ln67_reg_1688;
reg   [1:0] lshr_ln67_reg_1688_pp0_iter1_reg;
wire   [63:0] zext_ln3372_fu_1041_p1;
reg   [63:0] zext_ln3372_reg_1693;
reg   [63:0] zext_ln3372_reg_1693_pp0_iter1_reg;
wire   [0:0] xor_ln3369_fu_1073_p2;
reg   [0:0] xor_ln3369_reg_1761;
reg   [0:0] icmp_ln3367_reg_1766;
reg   [1:0] v2741_7_addr_reg_1991;
reg   [1:0] v2741_7_addr_reg_1991_pp0_iter3_reg;
reg   [1:0] v2741_7_addr_reg_1991_pp0_iter4_reg;
reg   [1:0] v2741_6_addr_reg_2007;
reg   [1:0] v2741_6_addr_reg_2007_pp0_iter3_reg;
reg   [1:0] v2741_6_addr_reg_2007_pp0_iter4_reg;
reg   [1:0] v2741_5_addr_reg_2023;
reg   [1:0] v2741_5_addr_reg_2023_pp0_iter3_reg;
reg   [1:0] v2741_5_addr_reg_2023_pp0_iter4_reg;
reg   [1:0] v2741_4_addr_reg_2039;
reg   [1:0] v2741_4_addr_reg_2039_pp0_iter3_reg;
reg   [1:0] v2741_4_addr_reg_2039_pp0_iter4_reg;
reg   [1:0] v2741_3_addr_reg_2055;
reg   [1:0] v2741_3_addr_reg_2055_pp0_iter3_reg;
reg   [1:0] v2741_3_addr_reg_2055_pp0_iter4_reg;
reg   [1:0] v2741_2_addr_reg_2071;
reg   [1:0] v2741_2_addr_reg_2071_pp0_iter3_reg;
reg   [1:0] v2741_2_addr_reg_2071_pp0_iter4_reg;
reg   [1:0] v2741_1_addr_reg_2087;
reg   [1:0] v2741_1_addr_reg_2087_pp0_iter3_reg;
reg   [1:0] v2741_1_addr_reg_2087_pp0_iter4_reg;
reg   [1:0] v2741_addr_reg_2103;
reg   [1:0] v2741_addr_reg_2103_pp0_iter3_reg;
reg   [1:0] v2741_addr_reg_2103_pp0_iter4_reg;
wire   [7:0] mul_ln3533_2_fu_1175_p2;
reg   [7:0] mul_ln3533_2_reg_2189;
wire   [7:0] mul_ln3543_2_fu_1181_p2;
reg   [7:0] mul_ln3543_2_reg_2194;
wire   [7:0] mul_ln3553_2_fu_1187_p2;
reg   [7:0] mul_ln3553_2_reg_2199;
wire   [7:0] mul_ln3563_2_fu_1193_p2;
reg   [7:0] mul_ln3563_2_reg_2204;
wire   [7:0] mul_ln3573_2_fu_1199_p2;
reg   [7:0] mul_ln3573_2_reg_2209;
wire   [7:0] mul_ln3583_2_fu_1205_p2;
reg   [7:0] mul_ln3583_2_reg_2214;
wire   [7:0] mul_ln3593_2_fu_1211_p2;
reg   [7:0] mul_ln3593_2_reg_2219;
wire   [7:0] mul_ln3603_2_fu_1217_p2;
reg   [7:0] mul_ln3603_2_reg_2224;
wire   [7:0] grp_fu_1431_p3;
wire   [7:0] grp_fu_1439_p3;
wire   [7:0] grp_fu_1447_p3;
wire   [7:0] grp_fu_1455_p3;
wire   [7:0] grp_fu_1463_p3;
wire   [7:0] grp_fu_1471_p3;
wire   [7:0] grp_fu_1479_p3;
wire   [7:0] grp_fu_1487_p3;
reg   [0:0] ap_phi_mux_icmp_ln3369312_phi_fu_909_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln3371_fu_1100_p1;
reg   [4:0] indvar_flatten309_fu_174;
wire   [4:0] add_ln3367_1_fu_1059_p2;
reg   [4:0] ap_sig_allocacmp_indvar_flatten309_load;
reg   [5:0] v2338310_fu_178;
wire   [5:0] v2338_fu_958_p3;
reg   [5:0] ap_sig_allocacmp_v2338310_load;
reg   [5:0] v2339311_fu_182;
wire   [5:0] v2339_fu_1053_p2;
reg   [5:0] ap_sig_allocacmp_v2339311_load;
reg    v2740_ce0_local;
reg    v2739_28_ce0_local;
reg    v2739_24_ce0_local;
reg    v2739_20_ce0_local;
reg    v2739_16_ce0_local;
reg    v2739_12_ce0_local;
reg    v2739_8_ce0_local;
reg    v2739_4_ce0_local;
reg    v2739_ce0_local;
reg    v2740_3_ce0_local;
reg    v2740_1_ce0_local;
reg    v2739_31_ce0_local;
reg    v2739_27_ce0_local;
reg    v2739_23_ce0_local;
reg    v2739_19_ce0_local;
reg    v2739_15_ce0_local;
reg    v2739_11_ce0_local;
reg    v2739_7_ce0_local;
reg    v2739_3_ce0_local;
reg    v2739_29_ce0_local;
reg    v2739_25_ce0_local;
reg    v2739_21_ce0_local;
reg    v2739_17_ce0_local;
reg    v2739_13_ce0_local;
reg    v2739_9_ce0_local;
reg    v2739_5_ce0_local;
reg    v2739_1_ce0_local;
reg    v2740_2_ce0_local;
reg    v2738_7_ce0_local;
reg    v2741_7_ce1_local;
reg    v2741_7_we0_local;
wire   [7:0] select_ln3620_fu_1241_p3;
reg    v2741_7_ce0_local;
reg    v2738_6_ce0_local;
reg    v2741_6_ce1_local;
reg    v2741_6_we0_local;
wire   [7:0] select_ln3631_fu_1267_p3;
reg    v2741_6_ce0_local;
reg    v2738_5_ce0_local;
reg    v2741_5_ce1_local;
reg    v2741_5_we0_local;
wire   [7:0] select_ln3642_fu_1293_p3;
reg    v2741_5_ce0_local;
reg    v2738_4_ce0_local;
reg    v2741_4_ce1_local;
reg    v2741_4_we0_local;
wire   [7:0] select_ln3653_fu_1319_p3;
reg    v2741_4_ce0_local;
reg    v2738_3_ce0_local;
reg    v2741_3_ce1_local;
reg    v2741_3_we0_local;
wire   [7:0] select_ln3664_fu_1345_p3;
reg    v2741_3_ce0_local;
reg    v2738_2_ce0_local;
reg    v2741_2_ce1_local;
reg    v2741_2_we0_local;
wire   [7:0] select_ln3675_fu_1371_p3;
reg    v2741_2_ce0_local;
reg    v2738_1_ce0_local;
reg    v2741_1_ce1_local;
reg    v2741_1_we0_local;
wire   [7:0] select_ln3686_fu_1397_p3;
reg    v2741_1_ce0_local;
reg    v2738_ce0_local;
reg    v2741_ce1_local;
reg    v2741_we0_local;
wire   [7:0] select_ln3697_fu_1423_p3;
reg    v2741_ce0_local;
reg    v2739_30_ce0_local;
reg    v2739_26_ce0_local;
reg    v2739_22_ce0_local;
reg    v2739_18_ce0_local;
reg    v2739_14_ce0_local;
reg    v2739_10_ce0_local;
reg    v2739_6_ce0_local;
reg    v2739_2_ce0_local;
wire   [5:0] add_ln3367_fu_944_p2;
wire   [3:0] lshr_ln_fu_966_p4;
wire   [4:0] empty_fu_991_p1;
wire  signed [9:0] sext_ln3367_cast_fu_916_p1;
wire   [9:0] v2338_cast7_cast_i_fu_995_p1;
wire   [9:0] empty_348_fu_999_p2;
wire   [0:0] cmp777_i_not_i_fu_1005_p2;
wire   [5:0] select_ln3367_fu_950_p3;
wire   [4:0] tmp_s_fu_1027_p3;
wire   [4:0] lshr_ln_cast_fu_981_p1;
wire   [4:0] add_ln3372_fu_1035_p2;
wire   [0:0] tmp_315_fu_1065_p3;
wire  signed [7:0] v2585_fu_1223_p0;
wire   [7:0] grp_fu_1503_p3;
wire  signed [7:0] v2585_fu_1223_p1;
wire   [7:0] grp_fu_1495_p3;
(* use_dsp48 = "no" *) wire   [7:0] v2585_fu_1223_p2;
wire   [0:0] v2586_fu_1227_p2;
wire   [7:0] v2587_1_fu_1233_p3;
wire  signed [7:0] v2595_fu_1249_p0;
wire   [7:0] grp_fu_1520_p3;
wire  signed [7:0] v2595_fu_1249_p1;
wire   [7:0] grp_fu_1512_p3;
(* use_dsp48 = "no" *) wire   [7:0] v2595_fu_1249_p2;
wire   [0:0] v2596_fu_1253_p2;
wire   [7:0] v2597_1_fu_1259_p3;
wire  signed [7:0] v2605_fu_1275_p0;
wire   [7:0] grp_fu_1537_p3;
wire  signed [7:0] v2605_fu_1275_p1;
wire   [7:0] grp_fu_1529_p3;
(* use_dsp48 = "no" *) wire   [7:0] v2605_fu_1275_p2;
wire   [0:0] v2606_fu_1279_p2;
wire   [7:0] v2607_1_fu_1285_p3;
wire  signed [7:0] v2615_fu_1301_p0;
wire   [7:0] grp_fu_1554_p3;
wire  signed [7:0] v2615_fu_1301_p1;
wire   [7:0] grp_fu_1546_p3;
(* use_dsp48 = "no" *) wire   [7:0] v2615_fu_1301_p2;
wire   [0:0] v2616_fu_1305_p2;
wire   [7:0] v2617_1_fu_1311_p3;
wire  signed [7:0] v2625_fu_1327_p0;
wire   [7:0] grp_fu_1571_p3;
wire  signed [7:0] v2625_fu_1327_p1;
wire   [7:0] grp_fu_1563_p3;
(* use_dsp48 = "no" *) wire   [7:0] v2625_fu_1327_p2;
wire   [0:0] v2626_fu_1331_p2;
wire   [7:0] v2627_1_fu_1337_p3;
wire  signed [7:0] v2635_fu_1353_p0;
wire   [7:0] grp_fu_1588_p3;
wire  signed [7:0] v2635_fu_1353_p1;
wire   [7:0] grp_fu_1580_p3;
(* use_dsp48 = "no" *) wire   [7:0] v2635_fu_1353_p2;
wire   [0:0] v2636_fu_1357_p2;
wire   [7:0] v2637_1_fu_1363_p3;
wire  signed [7:0] v2645_fu_1379_p0;
wire   [7:0] grp_fu_1605_p3;
wire  signed [7:0] v2645_fu_1379_p1;
wire   [7:0] grp_fu_1597_p3;
(* use_dsp48 = "no" *) wire   [7:0] v2645_fu_1379_p2;
wire   [0:0] v2646_fu_1383_p2;
wire   [7:0] v2647_1_fu_1389_p3;
wire  signed [7:0] v2655_fu_1405_p0;
wire   [7:0] grp_fu_1622_p3;
wire  signed [7:0] v2655_fu_1405_p1;
wire   [7:0] grp_fu_1614_p3;
(* use_dsp48 = "no" *) wire   [7:0] v2655_fu_1405_p2;
wire   [0:0] v2656_fu_1409_p2;
wire   [7:0] v2657_1_fu_1415_p3;
wire   [7:0] grp_fu_1431_p2;
wire   [7:0] grp_fu_1439_p2;
wire   [7:0] grp_fu_1447_p2;
wire   [7:0] grp_fu_1455_p2;
wire   [7:0] grp_fu_1463_p2;
wire   [7:0] grp_fu_1471_p2;
wire   [7:0] grp_fu_1479_p2;
wire   [7:0] grp_fu_1487_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1358;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 indvar_flatten309_fu_174 = 5'd0;
#0 v2338310_fu_178 = 6'd0;
#0 v2339311_fu_182 = 6'd0;
#0 ap_done_reg = 1'b0;
end
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9590(.din0(v2739_30_q0),.din1(v2740_2_q0),.dout(mul_ln3533_2_fu_1175_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9591(.din0(v2739_26_q0),.din1(v2740_2_q0),.dout(mul_ln3543_2_fu_1181_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9592(.din0(v2739_22_q0),.din1(v2740_2_q0),.dout(mul_ln3553_2_fu_1187_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9593(.din0(v2739_18_q0),.din1(v2740_2_q0),.dout(mul_ln3563_2_fu_1193_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9594(.din0(v2739_14_q0),.din1(v2740_2_q0),.dout(mul_ln3573_2_fu_1199_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9595(.din0(v2739_10_q0),.din1(v2740_2_q0),.dout(mul_ln3583_2_fu_1205_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9596(.din0(v2739_6_q0),.din1(v2740_2_q0),.dout(mul_ln3593_2_fu_1211_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9597(.din0(v2739_2_q0),.din1(v2740_2_q0),.dout(mul_ln3603_2_fu_1217_p2));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9598(.clk(ap_clk),.reset(ap_rst),.din0(v2739_28_q0),.din1(v2740_q0),.din2(grp_fu_1431_p2),.ce(1'b1),.dout(grp_fu_1431_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9599(.clk(ap_clk),.reset(ap_rst),.din0(v2739_24_q0),.din1(v2740_q0),.din2(grp_fu_1439_p2),.ce(1'b1),.dout(grp_fu_1439_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9600(.clk(ap_clk),.reset(ap_rst),.din0(v2739_20_q0),.din1(v2740_q0),.din2(grp_fu_1447_p2),.ce(1'b1),.dout(grp_fu_1447_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9601(.clk(ap_clk),.reset(ap_rst),.din0(v2739_16_q0),.din1(v2740_q0),.din2(grp_fu_1455_p2),.ce(1'b1),.dout(grp_fu_1455_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9602(.clk(ap_clk),.reset(ap_rst),.din0(v2739_12_q0),.din1(v2740_q0),.din2(grp_fu_1463_p2),.ce(1'b1),.dout(grp_fu_1463_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9603(.clk(ap_clk),.reset(ap_rst),.din0(v2739_8_q0),.din1(v2740_q0),.din2(grp_fu_1471_p2),.ce(1'b1),.dout(grp_fu_1471_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9604(.clk(ap_clk),.reset(ap_rst),.din0(v2739_4_q0),.din1(v2740_q0),.din2(grp_fu_1479_p2),.ce(1'b1),.dout(grp_fu_1479_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9605(.clk(ap_clk),.reset(ap_rst),.din0(v2739_q0),.din1(v2740_q0),.din2(grp_fu_1487_p2),.ce(1'b1),.dout(grp_fu_1487_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9606(.clk(ap_clk),.reset(ap_rst),.din0(v2739_29_q0),.din1(v2740_1_q0),.din2(mul_ln3533_2_reg_2189),.ce(1'b1),.dout(grp_fu_1495_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9607(.clk(ap_clk),.reset(ap_rst),.din0(v2739_31_q0),.din1(v2740_3_q0),.din2(grp_fu_1431_p3),.ce(1'b1),.dout(grp_fu_1503_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9608(.clk(ap_clk),.reset(ap_rst),.din0(v2739_25_q0),.din1(v2740_1_q0),.din2(mul_ln3543_2_reg_2194),.ce(1'b1),.dout(grp_fu_1512_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9609(.clk(ap_clk),.reset(ap_rst),.din0(v2739_27_q0),.din1(v2740_3_q0),.din2(grp_fu_1439_p3),.ce(1'b1),.dout(grp_fu_1520_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9610(.clk(ap_clk),.reset(ap_rst),.din0(v2739_21_q0),.din1(v2740_1_q0),.din2(mul_ln3553_2_reg_2199),.ce(1'b1),.dout(grp_fu_1529_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9611(.clk(ap_clk),.reset(ap_rst),.din0(v2739_23_q0),.din1(v2740_3_q0),.din2(grp_fu_1447_p3),.ce(1'b1),.dout(grp_fu_1537_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9612(.clk(ap_clk),.reset(ap_rst),.din0(v2739_17_q0),.din1(v2740_1_q0),.din2(mul_ln3563_2_reg_2204),.ce(1'b1),.dout(grp_fu_1546_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9613(.clk(ap_clk),.reset(ap_rst),.din0(v2739_19_q0),.din1(v2740_3_q0),.din2(grp_fu_1455_p3),.ce(1'b1),.dout(grp_fu_1554_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9614(.clk(ap_clk),.reset(ap_rst),.din0(v2739_13_q0),.din1(v2740_1_q0),.din2(mul_ln3573_2_reg_2209),.ce(1'b1),.dout(grp_fu_1563_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9615(.clk(ap_clk),.reset(ap_rst),.din0(v2739_15_q0),.din1(v2740_3_q0),.din2(grp_fu_1463_p3),.ce(1'b1),.dout(grp_fu_1571_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9616(.clk(ap_clk),.reset(ap_rst),.din0(v2739_9_q0),.din1(v2740_1_q0),.din2(mul_ln3583_2_reg_2214),.ce(1'b1),.dout(grp_fu_1580_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9617(.clk(ap_clk),.reset(ap_rst),.din0(v2739_11_q0),.din1(v2740_3_q0),.din2(grp_fu_1471_p3),.ce(1'b1),.dout(grp_fu_1588_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9618(.clk(ap_clk),.reset(ap_rst),.din0(v2739_5_q0),.din1(v2740_1_q0),.din2(mul_ln3593_2_reg_2219),.ce(1'b1),.dout(grp_fu_1597_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9619(.clk(ap_clk),.reset(ap_rst),.din0(v2739_7_q0),.din1(v2740_3_q0),.din2(grp_fu_1479_p3),.ce(1'b1),.dout(grp_fu_1605_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9620(.clk(ap_clk),.reset(ap_rst),.din0(v2739_1_q0),.din1(v2740_1_q0),.din2(mul_ln3603_2_reg_2224),.ce(1'b1),.dout(grp_fu_1614_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9621(.clk(ap_clk),.reset(ap_rst),.din0(v2739_3_q0),.din1(v2740_3_q0),.din2(grp_fu_1487_p3),.ce(1'b1),.dout(grp_fu_1622_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten309_fu_174 <= add_ln3367_1_fu_1059_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten309_fu_174 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v2338310_fu_178 <= v2338_fu_958_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v2338310_fu_178 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v2339311_fu_182 <= v2339_fu_1053_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v2339311_fu_182 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        brmerge207_i_reg_1676 <= brmerge207_i_fu_1011_p2;
        brmerge207_i_reg_1676_pp0_iter1_reg <= brmerge207_i_reg_1676;
        cmp13_i_i_reg_1659 <= cmp13_i_i_fu_985_p2;
        cmp13_i_i_reg_1659_pp0_iter1_reg <= cmp13_i_i_reg_1659;
        icmp_ln3367_reg_1766 <= icmp_ln3367_fu_1079_p2;
        lshr_ln67_reg_1688 <= {{select_ln3367_fu_950_p3[4:3]}};
        lshr_ln67_reg_1688_pp0_iter1_reg <= lshr_ln67_reg_1688;
        zext_ln3367_reg_1652[3 : 0] <= zext_ln3367_fu_976_p1[3 : 0];
        zext_ln3367_reg_1652_pp0_iter1_reg[3 : 0] <= zext_ln3367_reg_1652[3 : 0];
        zext_ln3372_reg_1693[4 : 0] <= zext_ln3372_fu_1041_p1[4 : 0];
        zext_ln3372_reg_1693_pp0_iter1_reg[4 : 0] <= zext_ln3372_reg_1693[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        brmerge207_i_reg_1676_pp0_iter2_reg <= brmerge207_i_reg_1676_pp0_iter1_reg;
        brmerge207_i_reg_1676_pp0_iter3_reg <= brmerge207_i_reg_1676_pp0_iter2_reg;
        brmerge207_i_reg_1676_pp0_iter4_reg <= brmerge207_i_reg_1676_pp0_iter3_reg;
        cmp13_i_i_reg_1659_pp0_iter2_reg <= cmp13_i_i_reg_1659_pp0_iter1_reg;
        mul_ln3533_2_reg_2189 <= mul_ln3533_2_fu_1175_p2;
        mul_ln3543_2_reg_2194 <= mul_ln3543_2_fu_1181_p2;
        mul_ln3553_2_reg_2199 <= mul_ln3553_2_fu_1187_p2;
        mul_ln3563_2_reg_2204 <= mul_ln3563_2_fu_1193_p2;
        mul_ln3573_2_reg_2209 <= mul_ln3573_2_fu_1199_p2;
        mul_ln3583_2_reg_2214 <= mul_ln3583_2_fu_1205_p2;
        mul_ln3593_2_reg_2219 <= mul_ln3593_2_fu_1211_p2;
        mul_ln3603_2_reg_2224 <= mul_ln3603_2_fu_1217_p2;
        v2741_1_addr_reg_2087 <= zext_ln3371_fu_1100_p1;
        v2741_1_addr_reg_2087_pp0_iter3_reg <= v2741_1_addr_reg_2087;
        v2741_1_addr_reg_2087_pp0_iter4_reg <= v2741_1_addr_reg_2087_pp0_iter3_reg;
        v2741_2_addr_reg_2071 <= zext_ln3371_fu_1100_p1;
        v2741_2_addr_reg_2071_pp0_iter3_reg <= v2741_2_addr_reg_2071;
        v2741_2_addr_reg_2071_pp0_iter4_reg <= v2741_2_addr_reg_2071_pp0_iter3_reg;
        v2741_3_addr_reg_2055 <= zext_ln3371_fu_1100_p1;
        v2741_3_addr_reg_2055_pp0_iter3_reg <= v2741_3_addr_reg_2055;
        v2741_3_addr_reg_2055_pp0_iter4_reg <= v2741_3_addr_reg_2055_pp0_iter3_reg;
        v2741_4_addr_reg_2039 <= zext_ln3371_fu_1100_p1;
        v2741_4_addr_reg_2039_pp0_iter3_reg <= v2741_4_addr_reg_2039;
        v2741_4_addr_reg_2039_pp0_iter4_reg <= v2741_4_addr_reg_2039_pp0_iter3_reg;
        v2741_5_addr_reg_2023 <= zext_ln3371_fu_1100_p1;
        v2741_5_addr_reg_2023_pp0_iter3_reg <= v2741_5_addr_reg_2023;
        v2741_5_addr_reg_2023_pp0_iter4_reg <= v2741_5_addr_reg_2023_pp0_iter3_reg;
        v2741_6_addr_reg_2007 <= zext_ln3371_fu_1100_p1;
        v2741_6_addr_reg_2007_pp0_iter3_reg <= v2741_6_addr_reg_2007;
        v2741_6_addr_reg_2007_pp0_iter4_reg <= v2741_6_addr_reg_2007_pp0_iter3_reg;
        v2741_7_addr_reg_1991 <= zext_ln3371_fu_1100_p1;
        v2741_7_addr_reg_1991_pp0_iter3_reg <= v2741_7_addr_reg_1991;
        v2741_7_addr_reg_1991_pp0_iter4_reg <= v2741_7_addr_reg_1991_pp0_iter3_reg;
        v2741_addr_reg_2103 <= zext_ln3371_fu_1100_p1;
        v2741_addr_reg_2103_pp0_iter3_reg <= v2741_addr_reg_2103;
        v2741_addr_reg_2103_pp0_iter4_reg <= v2741_addr_reg_2103_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln3369_reg_1761 <= xor_ln3369_fu_1073_p2;
    end
end
always @ (*) begin
    if (((icmp_ln3367_fu_1079_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1358)) begin
            ap_phi_mux_icmp_ln3369312_phi_fu_909_p4 = xor_ln3369_reg_1761;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3369312_phi_fu_909_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln3369312_phi_fu_909_p4 = xor_ln3369_reg_1761;
        end
    end else begin
        ap_phi_mux_icmp_ln3369312_phi_fu_909_p4 = xor_ln3369_reg_1761;
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
        ap_sig_allocacmp_indvar_flatten309_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten309_load = indvar_flatten309_fu_174;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v2338310_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v2338310_load = v2338310_fu_178;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v2339311_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v2339311_load = v2339311_fu_182;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2738_1_ce0_local = 1'b1;
    end else begin
        v2738_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2738_2_ce0_local = 1'b1;
    end else begin
        v2738_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2738_3_ce0_local = 1'b1;
    end else begin
        v2738_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2738_4_ce0_local = 1'b1;
    end else begin
        v2738_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2738_5_ce0_local = 1'b1;
    end else begin
        v2738_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2738_6_ce0_local = 1'b1;
    end else begin
        v2738_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2738_7_ce0_local = 1'b1;
    end else begin
        v2738_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2738_ce0_local = 1'b1;
    end else begin
        v2738_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2739_10_ce0_local = 1'b1;
    end else begin
        v2739_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_11_ce0_local = 1'b1;
    end else begin
        v2739_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_12_ce0_local = 1'b1;
    end else begin
        v2739_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_13_ce0_local = 1'b1;
    end else begin
        v2739_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2739_14_ce0_local = 1'b1;
    end else begin
        v2739_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_15_ce0_local = 1'b1;
    end else begin
        v2739_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_16_ce0_local = 1'b1;
    end else begin
        v2739_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_17_ce0_local = 1'b1;
    end else begin
        v2739_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2739_18_ce0_local = 1'b1;
    end else begin
        v2739_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_19_ce0_local = 1'b1;
    end else begin
        v2739_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_1_ce0_local = 1'b1;
    end else begin
        v2739_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_20_ce0_local = 1'b1;
    end else begin
        v2739_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_21_ce0_local = 1'b1;
    end else begin
        v2739_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2739_22_ce0_local = 1'b1;
    end else begin
        v2739_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_23_ce0_local = 1'b1;
    end else begin
        v2739_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_24_ce0_local = 1'b1;
    end else begin
        v2739_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_25_ce0_local = 1'b1;
    end else begin
        v2739_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2739_26_ce0_local = 1'b1;
    end else begin
        v2739_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_27_ce0_local = 1'b1;
    end else begin
        v2739_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_28_ce0_local = 1'b1;
    end else begin
        v2739_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_29_ce0_local = 1'b1;
    end else begin
        v2739_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2739_2_ce0_local = 1'b1;
    end else begin
        v2739_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2739_30_ce0_local = 1'b1;
    end else begin
        v2739_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_31_ce0_local = 1'b1;
    end else begin
        v2739_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_3_ce0_local = 1'b1;
    end else begin
        v2739_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_4_ce0_local = 1'b1;
    end else begin
        v2739_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_5_ce0_local = 1'b1;
    end else begin
        v2739_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2739_6_ce0_local = 1'b1;
    end else begin
        v2739_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_7_ce0_local = 1'b1;
    end else begin
        v2739_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_8_ce0_local = 1'b1;
    end else begin
        v2739_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_9_ce0_local = 1'b1;
    end else begin
        v2739_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2739_ce0_local = 1'b1;
    end else begin
        v2739_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2740_1_ce0_local = 1'b1;
    end else begin
        v2740_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2740_2_ce0_local = 1'b1;
    end else begin
        v2740_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2740_3_ce0_local = 1'b1;
    end else begin
        v2740_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2740_ce0_local = 1'b1;
    end else begin
        v2740_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2741_1_ce0_local = 1'b1;
    end else begin
        v2741_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2741_1_ce1_local = 1'b1;
    end else begin
        v2741_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2741_1_we0_local = 1'b1;
    end else begin
        v2741_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2741_2_ce0_local = 1'b1;
    end else begin
        v2741_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2741_2_ce1_local = 1'b1;
    end else begin
        v2741_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2741_2_we0_local = 1'b1;
    end else begin
        v2741_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2741_3_ce0_local = 1'b1;
    end else begin
        v2741_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2741_3_ce1_local = 1'b1;
    end else begin
        v2741_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2741_3_we0_local = 1'b1;
    end else begin
        v2741_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2741_4_ce0_local = 1'b1;
    end else begin
        v2741_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2741_4_ce1_local = 1'b1;
    end else begin
        v2741_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2741_4_we0_local = 1'b1;
    end else begin
        v2741_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2741_5_ce0_local = 1'b1;
    end else begin
        v2741_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2741_5_ce1_local = 1'b1;
    end else begin
        v2741_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2741_5_we0_local = 1'b1;
    end else begin
        v2741_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2741_6_ce0_local = 1'b1;
    end else begin
        v2741_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2741_6_ce1_local = 1'b1;
    end else begin
        v2741_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2741_6_we0_local = 1'b1;
    end else begin
        v2741_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2741_7_ce0_local = 1'b1;
    end else begin
        v2741_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2741_7_ce1_local = 1'b1;
    end else begin
        v2741_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2741_7_we0_local = 1'b1;
    end else begin
        v2741_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2741_ce0_local = 1'b1;
    end else begin
        v2741_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v2741_ce1_local = 1'b1;
    end else begin
        v2741_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2741_we0_local = 1'b1;
    end else begin
        v2741_we0_local = 1'b0;
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
assign add_ln3367_1_fu_1059_p2 = (ap_sig_allocacmp_indvar_flatten309_load + 5'd1);
assign add_ln3367_fu_944_p2 = (ap_sig_allocacmp_v2338310_load + 6'd4);
assign add_ln3372_fu_1035_p2 = (tmp_s_fu_1027_p3 + lshr_ln_cast_fu_981_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1358 = ((icmp_ln3367_reg_1766 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign brmerge207_i_fu_1011_p2 = (tmp | cmp777_i_not_i_fu_1005_p2);
assign cmp13_i_i_fu_985_p2 = ((v2338_fu_958_p3 == 6'd0) ? 1'b1 : 1'b0);
assign cmp777_i_not_i_fu_1005_p2 = ((empty_348_fu_999_p2 != 10'd769) ? 1'b1 : 1'b0);
assign empty_348_fu_999_p2 = ($signed(sext_ln3367_cast_fu_916_p1) - $signed(v2338_cast7_cast_i_fu_995_p1));
assign empty_fu_991_p1 = v2338_fu_958_p3[4:0];
assign grp_fu_1431_p2 = ((cmp13_i_i_reg_1659_pp0_iter2_reg[0:0] == 1'b1) ? v2738_7_q0 : v2741_7_q1);
assign grp_fu_1439_p2 = ((cmp13_i_i_reg_1659_pp0_iter2_reg[0:0] == 1'b1) ? v2738_6_q0 : v2741_6_q1);
assign grp_fu_1447_p2 = ((cmp13_i_i_reg_1659_pp0_iter2_reg[0:0] == 1'b1) ? v2738_5_q0 : v2741_5_q1);
assign grp_fu_1455_p2 = ((cmp13_i_i_reg_1659_pp0_iter2_reg[0:0] == 1'b1) ? v2738_4_q0 : v2741_4_q1);
assign grp_fu_1463_p2 = ((cmp13_i_i_reg_1659_pp0_iter2_reg[0:0] == 1'b1) ? v2738_3_q0 : v2741_3_q1);
assign grp_fu_1471_p2 = ((cmp13_i_i_reg_1659_pp0_iter2_reg[0:0] == 1'b1) ? v2738_2_q0 : v2741_2_q1);
assign grp_fu_1479_p2 = ((cmp13_i_i_reg_1659_pp0_iter2_reg[0:0] == 1'b1) ? v2738_1_q0 : v2741_1_q1);
assign grp_fu_1487_p2 = ((cmp13_i_i_reg_1659_pp0_iter2_reg[0:0] == 1'b1) ? v2738_q0 : v2741_q1);
assign icmp_ln3367_fu_1079_p2 = ((ap_sig_allocacmp_indvar_flatten309_load == 5'd31) ? 1'b1 : 1'b0);
assign lshr_ln67_fu_1017_p4 = {{select_ln3367_fu_950_p3[4:3]}};
assign lshr_ln_cast_fu_981_p1 = lshr_ln_fu_966_p4;
assign lshr_ln_fu_966_p4 = {{v2338_fu_958_p3[5:2]}};
assign select_ln3367_fu_950_p3 = ((ap_phi_mux_icmp_ln3369312_phi_fu_909_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v2339311_load : 6'd0);
assign select_ln3620_fu_1241_p3 = ((brmerge207_i_reg_1676_pp0_iter4_reg[0:0] == 1'b1) ? v2585_fu_1223_p2 : v2587_1_fu_1233_p3);
assign select_ln3631_fu_1267_p3 = ((brmerge207_i_reg_1676_pp0_iter4_reg[0:0] == 1'b1) ? v2595_fu_1249_p2 : v2597_1_fu_1259_p3);
assign select_ln3642_fu_1293_p3 = ((brmerge207_i_reg_1676_pp0_iter4_reg[0:0] == 1'b1) ? v2605_fu_1275_p2 : v2607_1_fu_1285_p3);
assign select_ln3653_fu_1319_p3 = ((brmerge207_i_reg_1676_pp0_iter4_reg[0:0] == 1'b1) ? v2615_fu_1301_p2 : v2617_1_fu_1311_p3);
assign select_ln3664_fu_1345_p3 = ((brmerge207_i_reg_1676_pp0_iter4_reg[0:0] == 1'b1) ? v2625_fu_1327_p2 : v2627_1_fu_1337_p3);
assign select_ln3675_fu_1371_p3 = ((brmerge207_i_reg_1676_pp0_iter4_reg[0:0] == 1'b1) ? v2635_fu_1353_p2 : v2637_1_fu_1363_p3);
assign select_ln3686_fu_1397_p3 = ((brmerge207_i_reg_1676_pp0_iter4_reg[0:0] == 1'b1) ? v2645_fu_1379_p2 : v2647_1_fu_1389_p3);
assign select_ln3697_fu_1423_p3 = ((brmerge207_i_reg_1676_pp0_iter4_reg[0:0] == 1'b1) ? v2655_fu_1405_p2 : v2657_1_fu_1415_p3);
assign sext_ln3367_cast_fu_916_p1 = $signed(sext_ln3367);
assign tmp_315_fu_1065_p3 = v2339_fu_1053_p2[32'd5];
assign tmp_s_fu_1027_p3 = {{lshr_ln67_fu_1017_p4}, {3'd0}};
assign v2338_cast7_cast_i_fu_995_p1 = empty_fu_991_p1;
assign v2338_fu_958_p3 = ((ap_phi_mux_icmp_ln3369312_phi_fu_909_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v2338310_load : add_ln3367_fu_944_p2);
assign v2339_fu_1053_p2 = (select_ln3367_fu_950_p3 + 6'd8);
assign v2585_fu_1223_p0 = grp_fu_1503_p3;
assign v2585_fu_1223_p1 = grp_fu_1495_p3;
assign v2585_fu_1223_p2 = ($signed(v2585_fu_1223_p0) + $signed(v2585_fu_1223_p1));
assign v2586_fu_1227_p2 = (($signed(v2585_fu_1223_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v2587_1_fu_1233_p3 = ((v2586_fu_1227_p2[0:0] == 1'b1) ? v2585_fu_1223_p2 : 8'd229);
assign v2595_fu_1249_p0 = grp_fu_1520_p3;
assign v2595_fu_1249_p1 = grp_fu_1512_p3;
assign v2595_fu_1249_p2 = ($signed(v2595_fu_1249_p0) + $signed(v2595_fu_1249_p1));
assign v2596_fu_1253_p2 = (($signed(v2595_fu_1249_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v2597_1_fu_1259_p3 = ((v2596_fu_1253_p2[0:0] == 1'b1) ? v2595_fu_1249_p2 : 8'd229);
assign v2605_fu_1275_p0 = grp_fu_1537_p3;
assign v2605_fu_1275_p1 = grp_fu_1529_p3;
assign v2605_fu_1275_p2 = ($signed(v2605_fu_1275_p0) + $signed(v2605_fu_1275_p1));
assign v2606_fu_1279_p2 = (($signed(v2605_fu_1275_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v2607_1_fu_1285_p3 = ((v2606_fu_1279_p2[0:0] == 1'b1) ? v2605_fu_1275_p2 : 8'd229);
assign v2615_fu_1301_p0 = grp_fu_1554_p3;
assign v2615_fu_1301_p1 = grp_fu_1546_p3;
assign v2615_fu_1301_p2 = ($signed(v2615_fu_1301_p0) + $signed(v2615_fu_1301_p1));
assign v2616_fu_1305_p2 = (($signed(v2615_fu_1301_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v2617_1_fu_1311_p3 = ((v2616_fu_1305_p2[0:0] == 1'b1) ? v2615_fu_1301_p2 : 8'd229);
assign v2625_fu_1327_p0 = grp_fu_1571_p3;
assign v2625_fu_1327_p1 = grp_fu_1563_p3;
assign v2625_fu_1327_p2 = ($signed(v2625_fu_1327_p0) + $signed(v2625_fu_1327_p1));
assign v2626_fu_1331_p2 = (($signed(v2625_fu_1327_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v2627_1_fu_1337_p3 = ((v2626_fu_1331_p2[0:0] == 1'b1) ? v2625_fu_1327_p2 : 8'd229);
assign v2635_fu_1353_p0 = grp_fu_1588_p3;
assign v2635_fu_1353_p1 = grp_fu_1580_p3;
assign v2635_fu_1353_p2 = ($signed(v2635_fu_1353_p0) + $signed(v2635_fu_1353_p1));
assign v2636_fu_1357_p2 = (($signed(v2635_fu_1353_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v2637_1_fu_1363_p3 = ((v2636_fu_1357_p2[0:0] == 1'b1) ? v2635_fu_1353_p2 : 8'd229);
assign v2645_fu_1379_p0 = grp_fu_1605_p3;
assign v2645_fu_1379_p1 = grp_fu_1597_p3;
assign v2645_fu_1379_p2 = ($signed(v2645_fu_1379_p0) + $signed(v2645_fu_1379_p1));
assign v2646_fu_1383_p2 = (($signed(v2645_fu_1379_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v2647_1_fu_1389_p3 = ((v2646_fu_1383_p2[0:0] == 1'b1) ? v2645_fu_1379_p2 : 8'd229);
assign v2655_fu_1405_p0 = grp_fu_1622_p3;
assign v2655_fu_1405_p1 = grp_fu_1614_p3;
assign v2655_fu_1405_p2 = ($signed(v2655_fu_1405_p0) + $signed(v2655_fu_1405_p1));
assign v2656_fu_1409_p2 = (($signed(v2655_fu_1405_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v2657_1_fu_1415_p3 = ((v2656_fu_1409_p2[0:0] == 1'b1) ? v2655_fu_1405_p2 : 8'd229);
assign v2738_1_address0 = zext_ln3371_fu_1100_p1;
assign v2738_1_ce0 = v2738_1_ce0_local;
assign v2738_2_address0 = zext_ln3371_fu_1100_p1;
assign v2738_2_ce0 = v2738_2_ce0_local;
assign v2738_3_address0 = zext_ln3371_fu_1100_p1;
assign v2738_3_ce0 = v2738_3_ce0_local;
assign v2738_4_address0 = zext_ln3371_fu_1100_p1;
assign v2738_4_ce0 = v2738_4_ce0_local;
assign v2738_5_address0 = zext_ln3371_fu_1100_p1;
assign v2738_5_ce0 = v2738_5_ce0_local;
assign v2738_6_address0 = zext_ln3371_fu_1100_p1;
assign v2738_6_ce0 = v2738_6_ce0_local;
assign v2738_7_address0 = zext_ln3371_fu_1100_p1;
assign v2738_7_ce0 = v2738_7_ce0_local;
assign v2738_address0 = zext_ln3371_fu_1100_p1;
assign v2738_ce0 = v2738_ce0_local;
assign v2739_10_address0 = zext_ln3372_reg_1693_pp0_iter1_reg;
assign v2739_10_ce0 = v2739_10_ce0_local;
assign v2739_11_address0 = zext_ln3372_reg_1693;
assign v2739_11_ce0 = v2739_11_ce0_local;
assign v2739_12_address0 = zext_ln3372_fu_1041_p1;
assign v2739_12_ce0 = v2739_12_ce0_local;
assign v2739_13_address0 = zext_ln3372_reg_1693;
assign v2739_13_ce0 = v2739_13_ce0_local;
assign v2739_14_address0 = zext_ln3372_reg_1693_pp0_iter1_reg;
assign v2739_14_ce0 = v2739_14_ce0_local;
assign v2739_15_address0 = zext_ln3372_reg_1693;
assign v2739_15_ce0 = v2739_15_ce0_local;
assign v2739_16_address0 = zext_ln3372_fu_1041_p1;
assign v2739_16_ce0 = v2739_16_ce0_local;
assign v2739_17_address0 = zext_ln3372_reg_1693;
assign v2739_17_ce0 = v2739_17_ce0_local;
assign v2739_18_address0 = zext_ln3372_reg_1693_pp0_iter1_reg;
assign v2739_18_ce0 = v2739_18_ce0_local;
assign v2739_19_address0 = zext_ln3372_reg_1693;
assign v2739_19_ce0 = v2739_19_ce0_local;
assign v2739_1_address0 = zext_ln3372_reg_1693;
assign v2739_1_ce0 = v2739_1_ce0_local;
assign v2739_20_address0 = zext_ln3372_fu_1041_p1;
assign v2739_20_ce0 = v2739_20_ce0_local;
assign v2739_21_address0 = zext_ln3372_reg_1693;
assign v2739_21_ce0 = v2739_21_ce0_local;
assign v2739_22_address0 = zext_ln3372_reg_1693_pp0_iter1_reg;
assign v2739_22_ce0 = v2739_22_ce0_local;
assign v2739_23_address0 = zext_ln3372_reg_1693;
assign v2739_23_ce0 = v2739_23_ce0_local;
assign v2739_24_address0 = zext_ln3372_fu_1041_p1;
assign v2739_24_ce0 = v2739_24_ce0_local;
assign v2739_25_address0 = zext_ln3372_reg_1693;
assign v2739_25_ce0 = v2739_25_ce0_local;
assign v2739_26_address0 = zext_ln3372_reg_1693_pp0_iter1_reg;
assign v2739_26_ce0 = v2739_26_ce0_local;
assign v2739_27_address0 = zext_ln3372_reg_1693;
assign v2739_27_ce0 = v2739_27_ce0_local;
assign v2739_28_address0 = zext_ln3372_fu_1041_p1;
assign v2739_28_ce0 = v2739_28_ce0_local;
assign v2739_29_address0 = zext_ln3372_reg_1693;
assign v2739_29_ce0 = v2739_29_ce0_local;
assign v2739_2_address0 = zext_ln3372_reg_1693_pp0_iter1_reg;
assign v2739_2_ce0 = v2739_2_ce0_local;
assign v2739_30_address0 = zext_ln3372_reg_1693_pp0_iter1_reg;
assign v2739_30_ce0 = v2739_30_ce0_local;
assign v2739_31_address0 = zext_ln3372_reg_1693;
assign v2739_31_ce0 = v2739_31_ce0_local;
assign v2739_3_address0 = zext_ln3372_reg_1693;
assign v2739_3_ce0 = v2739_3_ce0_local;
assign v2739_4_address0 = zext_ln3372_fu_1041_p1;
assign v2739_4_ce0 = v2739_4_ce0_local;
assign v2739_5_address0 = zext_ln3372_reg_1693;
assign v2739_5_ce0 = v2739_5_ce0_local;
assign v2739_6_address0 = zext_ln3372_reg_1693_pp0_iter1_reg;
assign v2739_6_ce0 = v2739_6_ce0_local;
assign v2739_7_address0 = zext_ln3372_reg_1693;
assign v2739_7_ce0 = v2739_7_ce0_local;
assign v2739_8_address0 = zext_ln3372_fu_1041_p1;
assign v2739_8_ce0 = v2739_8_ce0_local;
assign v2739_9_address0 = zext_ln3372_reg_1693;
assign v2739_9_ce0 = v2739_9_ce0_local;
assign v2739_address0 = zext_ln3372_fu_1041_p1;
assign v2739_ce0 = v2739_ce0_local;
assign v2740_1_address0 = zext_ln3367_reg_1652;
assign v2740_1_ce0 = v2740_1_ce0_local;
assign v2740_2_address0 = zext_ln3367_reg_1652_pp0_iter1_reg;
assign v2740_2_ce0 = v2740_2_ce0_local;
assign v2740_3_address0 = zext_ln3367_reg_1652;
assign v2740_3_ce0 = v2740_3_ce0_local;
assign v2740_address0 = zext_ln3367_fu_976_p1;
assign v2740_ce0 = v2740_ce0_local;
assign v2741_1_address0 = v2741_1_addr_reg_2087_pp0_iter4_reg;
assign v2741_1_address1 = zext_ln3371_fu_1100_p1;
assign v2741_1_ce0 = v2741_1_ce0_local;
assign v2741_1_ce1 = v2741_1_ce1_local;
assign v2741_1_d0 = select_ln3686_fu_1397_p3;
assign v2741_1_we0 = v2741_1_we0_local;
assign v2741_2_address0 = v2741_2_addr_reg_2071_pp0_iter4_reg;
assign v2741_2_address1 = zext_ln3371_fu_1100_p1;
assign v2741_2_ce0 = v2741_2_ce0_local;
assign v2741_2_ce1 = v2741_2_ce1_local;
assign v2741_2_d0 = select_ln3675_fu_1371_p3;
assign v2741_2_we0 = v2741_2_we0_local;
assign v2741_3_address0 = v2741_3_addr_reg_2055_pp0_iter4_reg;
assign v2741_3_address1 = zext_ln3371_fu_1100_p1;
assign v2741_3_ce0 = v2741_3_ce0_local;
assign v2741_3_ce1 = v2741_3_ce1_local;
assign v2741_3_d0 = select_ln3664_fu_1345_p3;
assign v2741_3_we0 = v2741_3_we0_local;
assign v2741_4_address0 = v2741_4_addr_reg_2039_pp0_iter4_reg;
assign v2741_4_address1 = zext_ln3371_fu_1100_p1;
assign v2741_4_ce0 = v2741_4_ce0_local;
assign v2741_4_ce1 = v2741_4_ce1_local;
assign v2741_4_d0 = select_ln3653_fu_1319_p3;
assign v2741_4_we0 = v2741_4_we0_local;
assign v2741_5_address0 = v2741_5_addr_reg_2023_pp0_iter4_reg;
assign v2741_5_address1 = zext_ln3371_fu_1100_p1;
assign v2741_5_ce0 = v2741_5_ce0_local;
assign v2741_5_ce1 = v2741_5_ce1_local;
assign v2741_5_d0 = select_ln3642_fu_1293_p3;
assign v2741_5_we0 = v2741_5_we0_local;
assign v2741_6_address0 = v2741_6_addr_reg_2007_pp0_iter4_reg;
assign v2741_6_address1 = zext_ln3371_fu_1100_p1;
assign v2741_6_ce0 = v2741_6_ce0_local;
assign v2741_6_ce1 = v2741_6_ce1_local;
assign v2741_6_d0 = select_ln3631_fu_1267_p3;
assign v2741_6_we0 = v2741_6_we0_local;
assign v2741_7_address0 = v2741_7_addr_reg_1991_pp0_iter4_reg;
assign v2741_7_address1 = zext_ln3371_fu_1100_p1;
assign v2741_7_ce0 = v2741_7_ce0_local;
assign v2741_7_ce1 = v2741_7_ce1_local;
assign v2741_7_d0 = select_ln3620_fu_1241_p3;
assign v2741_7_we0 = v2741_7_we0_local;
assign v2741_address0 = v2741_addr_reg_2103_pp0_iter4_reg;
assign v2741_address1 = zext_ln3371_fu_1100_p1;
assign v2741_ce0 = v2741_ce0_local;
assign v2741_ce1 = v2741_ce1_local;
assign v2741_d0 = select_ln3697_fu_1423_p3;
assign v2741_we0 = v2741_we0_local;
assign xor_ln3369_fu_1073_p2 = (tmp_315_fu_1065_p3 ^ 1'd1);
assign zext_ln3367_fu_976_p1 = lshr_ln_fu_966_p4;
assign zext_ln3371_fu_1100_p1 = lshr_ln67_reg_1688_pp0_iter1_reg;
assign zext_ln3372_fu_1041_p1 = add_ln3372_fu_1035_p2;
always @ (posedge ap_clk) begin
    zext_ln3367_reg_1652[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln3367_reg_1652_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln3372_reg_1693[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln3372_reg_1693_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 
