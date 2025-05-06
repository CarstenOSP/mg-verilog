
module spmv (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,val_0_address0,val_0_ce0,val_0_q0,val_1_address0,val_1_ce0,val_1_q0,val_2_address0,val_2_ce0,val_2_q0,val_3_address0,val_3_ce0,val_3_q0,cols_address0,cols_ce0,cols_q0,rowDelimiters_0_address0,rowDelimiters_0_ce0,rowDelimiters_0_q0,rowDelimiters_0_address1,rowDelimiters_0_ce1,rowDelimiters_0_q1,rowDelimiters_1_address0,rowDelimiters_1_ce0,rowDelimiters_1_q0,rowDelimiters_1_address1,rowDelimiters_1_ce1,rowDelimiters_1_q1,rowDelimiters_2_address0,rowDelimiters_2_ce0,rowDelimiters_2_q0,rowDelimiters_2_address1,rowDelimiters_2_ce1,rowDelimiters_2_q1,rowDelimiters_3_address0,rowDelimiters_3_ce0,rowDelimiters_3_q0,rowDelimiters_3_address1,rowDelimiters_3_ce1,rowDelimiters_3_q1,vec_0_address0,vec_0_ce0,vec_0_q0,vec_1_address0,vec_1_ce0,vec_1_q0,vec_2_address0,vec_2_ce0,vec_2_q0,vec_3_address0,vec_3_ce0,vec_3_q0,out_0_address0,out_0_ce0,out_0_we0,out_0_d0,out_1_address0,out_1_ce0,out_1_we0,out_1_d0,out_2_address0,out_2_ce0,out_2_we0,out_2_d0,out_3_address0,out_3_ce0,out_3_we0,out_3_d0);  
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] val_0_address0;
output   val_0_ce0;
input  [63:0] val_0_q0;
output  [8:0] val_1_address0;
output   val_1_ce0;
input  [63:0] val_1_q0;
output  [8:0] val_2_address0;
output   val_2_ce0;
input  [63:0] val_2_q0;
output  [8:0] val_3_address0;
output   val_3_ce0;
input  [63:0] val_3_q0;
output  [10:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [6:0] rowDelimiters_0_address0;
output   rowDelimiters_0_ce0;
input  [31:0] rowDelimiters_0_q0;
output  [6:0] rowDelimiters_0_address1;
output   rowDelimiters_0_ce1;
input  [31:0] rowDelimiters_0_q1;
output  [6:0] rowDelimiters_1_address0;
output   rowDelimiters_1_ce0;
input  [31:0] rowDelimiters_1_q0;
output  [6:0] rowDelimiters_1_address1;
output   rowDelimiters_1_ce1;
input  [31:0] rowDelimiters_1_q1;
output  [6:0] rowDelimiters_2_address0;
output   rowDelimiters_2_ce0;
input  [31:0] rowDelimiters_2_q0;
output  [6:0] rowDelimiters_2_address1;
output   rowDelimiters_2_ce1;
input  [31:0] rowDelimiters_2_q1;
output  [6:0] rowDelimiters_3_address0;
output   rowDelimiters_3_ce0;
input  [31:0] rowDelimiters_3_q0;
output  [6:0] rowDelimiters_3_address1;
output   rowDelimiters_3_ce1;
input  [31:0] rowDelimiters_3_q1;
output  [6:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [6:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [6:0] vec_2_address0;
output   vec_2_ce0;
input  [63:0] vec_2_q0;
output  [6:0] vec_3_address0;
output   vec_3_ce0;
input  [63:0] vec_3_q0;
output  [6:0] out_0_address0;
output   out_0_ce0;
output   out_0_we0;
output  [63:0] out_0_d0;
output  [6:0] out_1_address0;
output   out_1_ce0;
output   out_1_we0;
output  [63:0] out_1_d0;
output  [6:0] out_2_address0;
output   out_2_ce0;
output   out_2_we0;
output  [63:0] out_2_d0;
output  [6:0] out_3_address0;
output   out_3_ce0;
output   out_3_we0;
output  [63:0] out_3_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] add_ln15_fu_731_p2;
reg   [8:0] add_ln15_reg_2216;
wire    ap_CS_fsm_state2;
wire   [1:0] trunc_ln12_fu_737_p1;
reg   [1:0] trunc_ln12_reg_2221;
wire   [63:0] zext_ln9_fu_751_p1;
reg   [63:0] zext_ln9_reg_2227;
wire   [31:0] tmp_begin_fu_777_p11;
reg   [31:0] tmp_begin_reg_2275;
wire    ap_CS_fsm_state3;
wire   [31:0] tmp_end_fu_801_p11;
reg   [31:0] tmp_end_reg_2280;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_628_ap_return;
reg   [5:0] targetBlock_reg_2286;
wire    ap_CS_fsm_state4;
wire   [0:0] empty_fu_826_p2;
reg   [0:0] empty_reg_2353;
wire    ap_CS_fsm_state5;
wire   [0:0] empty_14_fu_831_p2;
reg   [0:0] empty_14_reg_2358;
wire   [0:0] empty_16_fu_836_p2;
reg   [0:0] empty_16_reg_2363;
wire   [0:0] empty_18_fu_841_p2;
reg   [0:0] empty_18_reg_2368;
wire   [63:0] empty_39_fu_1041_p3;
reg   [63:0] empty_39_reg_2373;
wire    ap_CS_fsm_state6;
wire   [0:0] empty_40_fu_1049_p2;
reg   [0:0] empty_40_reg_2378;
wire   [0:0] empty_42_fu_1054_p2;
reg   [0:0] empty_42_reg_2383;
wire   [0:0] empty_44_fu_1059_p2;
reg   [0:0] empty_44_reg_2388;
wire   [0:0] empty_46_fu_1064_p2;
reg   [0:0] empty_46_reg_2393;
wire   [63:0] empty_67_fu_1260_p3;
reg   [63:0] empty_67_reg_2398;
wire    ap_CS_fsm_state7;
wire   [0:0] empty_68_fu_1268_p2;
reg   [0:0] empty_68_reg_2403;
wire   [0:0] empty_70_fu_1273_p2;
reg   [0:0] empty_70_reg_2408;
wire   [0:0] empty_72_fu_1278_p2;
reg   [0:0] empty_72_reg_2413;
wire   [0:0] empty_74_fu_1283_p2;
reg   [0:0] empty_74_reg_2418;
wire   [63:0] empty_95_fu_1479_p3;
reg   [63:0] empty_95_reg_2423;
wire    ap_CS_fsm_state8;
wire   [0:0] empty_96_fu_1487_p2;
reg   [0:0] empty_96_reg_2428;
wire   [0:0] empty_98_fu_1492_p2;
reg   [0:0] empty_98_reg_2433;
wire   [0:0] empty_100_fu_1497_p2;
reg   [0:0] empty_100_reg_2438;
wire   [0:0] empty_102_fu_1502_p2;
reg   [0:0] empty_102_reg_2443;
wire   [63:0] empty_123_fu_1698_p3;
reg   [63:0] empty_123_reg_2448;
wire    ap_CS_fsm_state9;
wire   [0:0] empty_124_fu_1706_p2;
reg   [0:0] empty_124_reg_2453;
wire   [0:0] empty_126_fu_1711_p2;
reg   [0:0] empty_126_reg_2458;
wire   [0:0] empty_128_fu_1716_p2;
reg   [0:0] empty_128_reg_2463;
wire   [0:0] empty_130_fu_1721_p2;
reg   [0:0] empty_130_reg_2468;
wire   [0:0] empty_132_fu_1726_p2;
reg   [0:0] empty_132_reg_2473;
wire   [0:0] empty_134_fu_1731_p2;
reg   [0:0] empty_134_reg_2478;
wire   [0:0] empty_136_fu_1736_p2;
reg   [0:0] empty_136_reg_2483;
wire    grp_spmv_Pipeline_spmv_2_fu_628_ap_start;
wire    grp_spmv_Pipeline_spmv_2_fu_628_ap_done;
wire    grp_spmv_Pipeline_spmv_2_fu_628_ap_idle;
wire    grp_spmv_Pipeline_spmv_2_fu_628_ap_ready;
wire   [8:0] grp_spmv_Pipeline_spmv_2_fu_628_val_0_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_628_val_0_ce0;
wire   [8:0] grp_spmv_Pipeline_spmv_2_fu_628_val_1_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_628_val_1_ce0;
wire   [8:0] grp_spmv_Pipeline_spmv_2_fu_628_val_2_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_628_val_2_ce0;
wire   [8:0] grp_spmv_Pipeline_spmv_2_fu_628_val_3_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_628_val_3_ce0;
wire   [10:0] grp_spmv_Pipeline_spmv_2_fu_628_cols_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_628_cols_ce0;
wire   [6:0] grp_spmv_Pipeline_spmv_2_fu_628_vec_0_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_628_vec_0_ce0;
wire   [6:0] grp_spmv_Pipeline_spmv_2_fu_628_vec_1_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_628_vec_1_ce0;
wire   [6:0] grp_spmv_Pipeline_spmv_2_fu_628_vec_2_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_628_vec_2_ce0;
wire   [6:0] grp_spmv_Pipeline_spmv_2_fu_628_vec_3_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_628_vec_3_ce0;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_63_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_63_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_62_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_62_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_61_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_61_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_60_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_60_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_59_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_59_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_58_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_58_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_57_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_57_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_56_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_56_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_55_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_55_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_54_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_54_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_53_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_53_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_52_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_52_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_51_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_51_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_50_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_50_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_49_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_49_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_48_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_48_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_47_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_47_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_46_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_46_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_45_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_45_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_44_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_44_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_43_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_43_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_42_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_42_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_41_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_41_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_40_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_40_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_39_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_39_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_38_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_38_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_37_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_37_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_36_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_36_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_35_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_35_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_34_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_34_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_33_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_33_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_32_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_32_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_31_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_31_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_30_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_30_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_29_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_29_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_28_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_28_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_27_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_27_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_26_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_26_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_25_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_25_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_24_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_24_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_23_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_23_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_22_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_22_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_21_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_21_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_20_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_20_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_19_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_19_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_18_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_18_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_17_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_17_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_16_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_16_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_15_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_15_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_14_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_14_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_13_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_13_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_12_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_12_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_11_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_11_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_10_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_10_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_9_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_9_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_8_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_8_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_7_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_7_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_6_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_6_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_5_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_5_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_4_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_4_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_3_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_3_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_2_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_2_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_628_sum_1_out;
wire    grp_spmv_Pipeline_spmv_2_fu_628_sum_1_out_ap_vld;
reg    grp_spmv_Pipeline_spmv_2_fu_628_ap_start_reg;
reg   [63:0] sum_loc_fu_472;
reg   [63:0] sum_63_loc_fu_468;
reg   [63:0] sum_62_loc_fu_464;
reg   [63:0] sum_61_loc_fu_460;
reg   [63:0] sum_60_loc_fu_456;
reg   [63:0] sum_59_loc_fu_452;
reg   [63:0] sum_58_loc_fu_448;
reg   [63:0] sum_57_loc_fu_444;
reg   [63:0] sum_56_loc_fu_440;
reg   [63:0] sum_55_loc_fu_436;
reg   [63:0] sum_54_loc_fu_432;
reg   [63:0] sum_53_loc_fu_428;
reg   [63:0] sum_52_loc_fu_424;
reg   [63:0] sum_51_loc_fu_420;
reg   [63:0] sum_50_loc_fu_416;
reg   [63:0] sum_49_loc_fu_412;
reg   [63:0] sum_48_loc_fu_408;
reg   [63:0] sum_47_loc_fu_404;
reg   [63:0] sum_46_loc_fu_400;
reg   [63:0] sum_45_loc_fu_396;
reg   [63:0] sum_44_loc_fu_392;
reg   [63:0] sum_43_loc_fu_388;
reg   [63:0] sum_42_loc_fu_384;
reg   [63:0] sum_41_loc_fu_380;
reg   [63:0] sum_40_loc_fu_376;
reg   [63:0] sum_39_loc_fu_372;
reg   [63:0] sum_38_loc_fu_368;
reg   [63:0] sum_37_loc_fu_364;
reg   [63:0] sum_36_loc_fu_360;
reg   [63:0] sum_35_loc_fu_356;
reg   [63:0] sum_34_loc_fu_352;
reg   [63:0] sum_33_loc_fu_348;
reg   [63:0] sum_32_loc_fu_344;
reg   [63:0] sum_31_loc_fu_340;
reg   [63:0] sum_30_loc_fu_336;
reg   [63:0] sum_29_loc_fu_332;
reg   [63:0] sum_28_loc_fu_328;
reg   [63:0] sum_27_loc_fu_324;
reg   [63:0] sum_26_loc_fu_320;
reg   [63:0] sum_25_loc_fu_316;
reg   [63:0] sum_24_loc_fu_312;
reg   [63:0] sum_23_loc_fu_308;
reg   [63:0] sum_22_loc_fu_304;
reg   [63:0] sum_21_loc_fu_300;
reg   [63:0] sum_20_loc_fu_296;
reg   [63:0] sum_19_loc_fu_292;
reg   [63:0] sum_18_loc_fu_288;
reg   [63:0] sum_17_loc_fu_284;
reg   [63:0] sum_16_loc_fu_280;
reg   [63:0] sum_15_loc_fu_276;
reg   [63:0] sum_14_loc_fu_272;
reg   [63:0] sum_13_loc_fu_268;
reg   [63:0] sum_12_loc_fu_264;
reg   [63:0] sum_11_loc_fu_260;
reg   [63:0] sum_10_loc_fu_256;
reg   [63:0] sum_9_loc_fu_252;
reg   [63:0] sum_8_loc_fu_248;
reg   [63:0] sum_7_loc_fu_244;
reg   [63:0] sum_6_loc_fu_240;
reg   [63:0] sum_5_loc_fu_236;
reg   [63:0] sum_4_loc_fu_232;
reg   [63:0] sum_3_loc_fu_228;
reg   [63:0] sum_2_loc_fu_224;
reg   [63:0] sum_1_loc_fu_220;
wire   [0:0] icmp_ln12_fu_725_p2;
wire   [63:0] zext_ln15_fu_769_p1;
wire    ap_CS_fsm_state10;
reg   [8:0] i_fu_216;
reg    rowDelimiters_0_ce1_local;
reg    rowDelimiters_0_ce0_local;
reg    rowDelimiters_1_ce1_local;
reg    rowDelimiters_1_ce0_local;
reg    rowDelimiters_2_ce1_local;
reg    rowDelimiters_2_ce0_local;
reg    rowDelimiters_3_ce1_local;
reg    rowDelimiters_3_ce0_local;
reg    out_2_we0_local;
wire   [63:0] bitcast_ln20_fu_1810_p1;
reg    out_2_ce0_local;
reg    out_1_we0_local;
reg    out_1_ce0_local;
reg    out_0_we0_local;
reg    out_0_ce0_local;
reg    out_3_we0_local;
reg    out_3_ce0_local;
wire   [6:0] lshr_ln9_fu_741_p4;
wire   [6:0] lshr_ln_fu_759_p4;
wire   [31:0] tmp_begin_fu_777_p9;
wire   [31:0] tmp_end_fu_801_p9;
wire   [63:0] empty_13_fu_891_p3;
wire   [63:0] empty_15_fu_898_p3;
wire   [63:0] empty_17_fu_905_p3;
wire   [0:0] empty_20_fu_919_p2;
wire   [63:0] empty_19_fu_912_p3;
wire   [0:0] empty_22_fu_932_p2;
wire   [63:0] empty_21_fu_924_p3;
wire   [0:0] empty_24_fu_945_p2;
wire   [63:0] empty_23_fu_937_p3;
wire   [0:0] empty_26_fu_958_p2;
wire   [63:0] empty_25_fu_950_p3;
wire   [0:0] empty_28_fu_971_p2;
wire   [63:0] empty_27_fu_963_p3;
wire   [0:0] empty_30_fu_984_p2;
wire   [63:0] empty_29_fu_976_p3;
wire   [0:0] empty_32_fu_997_p2;
wire   [63:0] empty_31_fu_989_p3;
wire   [0:0] empty_34_fu_1010_p2;
wire   [63:0] empty_33_fu_1002_p3;
wire   [0:0] empty_36_fu_1023_p2;
wire   [63:0] empty_35_fu_1015_p3;
wire   [0:0] empty_38_fu_1036_p2;
wire   [63:0] empty_37_fu_1028_p3;
wire   [63:0] empty_41_fu_1111_p3;
wire   [63:0] empty_43_fu_1117_p3;
wire   [63:0] empty_45_fu_1124_p3;
wire   [0:0] empty_48_fu_1138_p2;
wire   [63:0] empty_47_fu_1131_p3;
wire   [0:0] empty_50_fu_1151_p2;
wire   [63:0] empty_49_fu_1143_p3;
wire   [0:0] empty_52_fu_1164_p2;
wire   [63:0] empty_51_fu_1156_p3;
wire   [0:0] empty_54_fu_1177_p2;
wire   [63:0] empty_53_fu_1169_p3;
wire   [0:0] empty_56_fu_1190_p2;
wire   [63:0] empty_55_fu_1182_p3;
wire   [0:0] empty_58_fu_1203_p2;
wire   [63:0] empty_57_fu_1195_p3;
wire   [0:0] empty_60_fu_1216_p2;
wire   [63:0] empty_59_fu_1208_p3;
wire   [0:0] empty_62_fu_1229_p2;
wire   [63:0] empty_61_fu_1221_p3;
wire   [0:0] empty_64_fu_1242_p2;
wire   [63:0] empty_63_fu_1234_p3;
wire   [0:0] empty_66_fu_1255_p2;
wire   [63:0] empty_65_fu_1247_p3;
wire   [63:0] empty_69_fu_1330_p3;
wire   [63:0] empty_71_fu_1336_p3;
wire   [63:0] empty_73_fu_1343_p3;
wire   [0:0] empty_76_fu_1357_p2;
wire   [63:0] empty_75_fu_1350_p3;
wire   [0:0] empty_78_fu_1370_p2;
wire   [63:0] empty_77_fu_1362_p3;
wire   [0:0] empty_80_fu_1383_p2;
wire   [63:0] empty_79_fu_1375_p3;
wire   [0:0] empty_82_fu_1396_p2;
wire   [63:0] empty_81_fu_1388_p3;
wire   [0:0] empty_84_fu_1409_p2;
wire   [63:0] empty_83_fu_1401_p3;
wire   [0:0] empty_86_fu_1422_p2;
wire   [63:0] empty_85_fu_1414_p3;
wire   [0:0] empty_88_fu_1435_p2;
wire   [63:0] empty_87_fu_1427_p3;
wire   [0:0] empty_90_fu_1448_p2;
wire   [63:0] empty_89_fu_1440_p3;
wire   [0:0] empty_92_fu_1461_p2;
wire   [63:0] empty_91_fu_1453_p3;
wire   [0:0] empty_94_fu_1474_p2;
wire   [63:0] empty_93_fu_1466_p3;
wire   [63:0] empty_97_fu_1549_p3;
wire   [63:0] empty_99_fu_1555_p3;
wire   [63:0] empty_101_fu_1562_p3;
wire   [0:0] empty_104_fu_1576_p2;
wire   [63:0] empty_103_fu_1569_p3;
wire   [0:0] empty_106_fu_1589_p2;
wire   [63:0] empty_105_fu_1581_p3;
wire   [0:0] empty_108_fu_1602_p2;
wire   [63:0] empty_107_fu_1594_p3;
wire   [0:0] empty_110_fu_1615_p2;
wire   [63:0] empty_109_fu_1607_p3;
wire   [0:0] empty_112_fu_1628_p2;
wire   [63:0] empty_111_fu_1620_p3;
wire   [0:0] empty_114_fu_1641_p2;
wire   [63:0] empty_113_fu_1633_p3;
wire   [0:0] empty_116_fu_1654_p2;
wire   [63:0] empty_115_fu_1646_p3;
wire   [0:0] empty_118_fu_1667_p2;
wire   [63:0] empty_117_fu_1659_p3;
wire   [0:0] empty_120_fu_1680_p2;
wire   [63:0] empty_119_fu_1672_p3;
wire   [0:0] empty_122_fu_1693_p2;
wire   [63:0] empty_121_fu_1685_p3;
wire   [63:0] empty_125_fu_1762_p3;
wire   [63:0] empty_127_fu_1768_p3;
wire   [63:0] empty_129_fu_1775_p3;
wire   [63:0] empty_131_fu_1782_p3;
wire   [63:0] empty_133_fu_1789_p3;
wire   [63:0] empty_135_fu_1796_p3;
wire   [63:0] sum_0_lcssa_ph_fu_1803_p3;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire   [1:0] tmp_begin_fu_777_p1;
wire   [1:0] tmp_begin_fu_777_p3;
wire  signed [1:0] tmp_begin_fu_777_p5;
wire  signed [1:0] tmp_begin_fu_777_p7;
wire  signed [1:0] tmp_end_fu_801_p1;
wire   [1:0] tmp_end_fu_801_p3;
wire   [1:0] tmp_end_fu_801_p5;
wire  signed [1:0] tmp_end_fu_801_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_spmv_Pipeline_spmv_2_fu_628_ap_start_reg = 1'b0;
#0 i_fu_216 = 9'd0;
end
spmv_spmv_Pipeline_spmv_2 grp_spmv_Pipeline_spmv_2_fu_628(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_spmv_Pipeline_spmv_2_fu_628_ap_start),.ap_done(grp_spmv_Pipeline_spmv_2_fu_628_ap_done),.ap_idle(grp_spmv_Pipeline_spmv_2_fu_628_ap_idle),.ap_ready(grp_spmv_Pipeline_spmv_2_fu_628_ap_ready),.sext_ln16(tmp_begin_reg_2275),.sext_ln16_1(tmp_end_reg_2280),.val_0_address0(grp_spmv_Pipeline_spmv_2_fu_628_val_0_address0),.val_0_ce0(grp_spmv_Pipeline_spmv_2_fu_628_val_0_ce0),.val_0_q0(val_0_q0),.val_1_address0(grp_spmv_Pipeline_spmv_2_fu_628_val_1_address0),.val_1_ce0(grp_spmv_Pipeline_spmv_2_fu_628_val_1_ce0),.val_1_q0(val_1_q0),.val_2_address0(grp_spmv_Pipeline_spmv_2_fu_628_val_2_address0),.val_2_ce0(grp_spmv_Pipeline_spmv_2_fu_628_val_2_ce0),.val_2_q0(val_2_q0),.val_3_address0(grp_spmv_Pipeline_spmv_2_fu_628_val_3_address0),.val_3_ce0(grp_spmv_Pipeline_spmv_2_fu_628_val_3_ce0),.val_3_q0(val_3_q0),.cols_address0(grp_spmv_Pipeline_spmv_2_fu_628_cols_address0),.cols_ce0(grp_spmv_Pipeline_spmv_2_fu_628_cols_ce0),.cols_q0(cols_q0),.vec_0_address0(grp_spmv_Pipeline_spmv_2_fu_628_vec_0_address0),.vec_0_ce0(grp_spmv_Pipeline_spmv_2_fu_628_vec_0_ce0),.vec_0_q0(vec_0_q0),.vec_1_address0(grp_spmv_Pipeline_spmv_2_fu_628_vec_1_address0),.vec_1_ce0(grp_spmv_Pipeline_spmv_2_fu_628_vec_1_ce0),.vec_1_q0(vec_1_q0),.vec_2_address0(grp_spmv_Pipeline_spmv_2_fu_628_vec_2_address0),.vec_2_ce0(grp_spmv_Pipeline_spmv_2_fu_628_vec_2_ce0),.vec_2_q0(vec_2_q0),.vec_3_address0(grp_spmv_Pipeline_spmv_2_fu_628_vec_3_address0),.vec_3_ce0(grp_spmv_Pipeline_spmv_2_fu_628_vec_3_ce0),.vec_3_q0(vec_3_q0),.tmp_end(tmp_end_reg_2280),.sum_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_out),.sum_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_out_ap_vld),.sum_63_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_63_out),.sum_63_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_63_out_ap_vld),.sum_62_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_62_out),.sum_62_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_62_out_ap_vld),.sum_61_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_61_out),.sum_61_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_61_out_ap_vld),.sum_60_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_60_out),.sum_60_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_60_out_ap_vld),.sum_59_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_59_out),.sum_59_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_59_out_ap_vld),.sum_58_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_58_out),.sum_58_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_58_out_ap_vld),.sum_57_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_57_out),.sum_57_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_57_out_ap_vld),.sum_56_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_56_out),.sum_56_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_56_out_ap_vld),.sum_55_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_55_out),.sum_55_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_55_out_ap_vld),.sum_54_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_54_out),.sum_54_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_54_out_ap_vld),.sum_53_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_53_out),.sum_53_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_53_out_ap_vld),.sum_52_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_52_out),.sum_52_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_52_out_ap_vld),.sum_51_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_51_out),.sum_51_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_51_out_ap_vld),.sum_50_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_50_out),.sum_50_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_50_out_ap_vld),.sum_49_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_49_out),.sum_49_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_49_out_ap_vld),.sum_48_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_48_out),.sum_48_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_48_out_ap_vld),.sum_47_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_47_out),.sum_47_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_47_out_ap_vld),.sum_46_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_46_out),.sum_46_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_46_out_ap_vld),.sum_45_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_45_out),.sum_45_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_45_out_ap_vld),.sum_44_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_44_out),.sum_44_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_44_out_ap_vld),.sum_43_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_43_out),.sum_43_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_43_out_ap_vld),.sum_42_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_42_out),.sum_42_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_42_out_ap_vld),.sum_41_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_41_out),.sum_41_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_41_out_ap_vld),.sum_40_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_40_out),.sum_40_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_40_out_ap_vld),.sum_39_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_39_out),.sum_39_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_39_out_ap_vld),.sum_38_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_38_out),.sum_38_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_38_out_ap_vld),.sum_37_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_37_out),.sum_37_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_37_out_ap_vld),.sum_36_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_36_out),.sum_36_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_36_out_ap_vld),.sum_35_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_35_out),.sum_35_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_35_out_ap_vld),.sum_34_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_34_out),.sum_34_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_34_out_ap_vld),.sum_33_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_33_out),.sum_33_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_33_out_ap_vld),.sum_32_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_32_out),.sum_32_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_32_out_ap_vld),.sum_31_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_31_out),.sum_31_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_31_out_ap_vld),.sum_30_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_30_out),.sum_30_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_30_out_ap_vld),.sum_29_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_29_out),.sum_29_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_29_out_ap_vld),.sum_28_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_28_out),.sum_28_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_28_out_ap_vld),.sum_27_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_27_out),.sum_27_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_27_out_ap_vld),.sum_26_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_26_out),.sum_26_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_26_out_ap_vld),.sum_25_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_25_out),.sum_25_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_25_out_ap_vld),.sum_24_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_24_out),.sum_24_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_24_out_ap_vld),.sum_23_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_23_out),.sum_23_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_23_out_ap_vld),.sum_22_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_22_out),.sum_22_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_22_out_ap_vld),.sum_21_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_21_out),.sum_21_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_21_out_ap_vld),.sum_20_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_20_out),.sum_20_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_20_out_ap_vld),.sum_19_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_19_out),.sum_19_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_19_out_ap_vld),.sum_18_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_18_out),.sum_18_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_18_out_ap_vld),.sum_17_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_17_out),.sum_17_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_17_out_ap_vld),.sum_16_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_16_out),.sum_16_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_16_out_ap_vld),.sum_15_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_15_out),.sum_15_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_15_out_ap_vld),.sum_14_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_14_out),.sum_14_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_14_out_ap_vld),.sum_13_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_13_out),.sum_13_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_13_out_ap_vld),.sum_12_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_12_out),.sum_12_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_12_out_ap_vld),.sum_11_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_11_out),.sum_11_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_11_out_ap_vld),.sum_10_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_10_out),.sum_10_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_10_out_ap_vld),.sum_9_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_9_out),.sum_9_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_9_out_ap_vld),.sum_8_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_8_out),.sum_8_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_8_out_ap_vld),.sum_7_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_7_out),.sum_7_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_7_out_ap_vld),.sum_6_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_6_out),.sum_6_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_6_out_ap_vld),.sum_5_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_5_out),.sum_5_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_5_out_ap_vld),.sum_4_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_4_out),.sum_4_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_4_out_ap_vld),.sum_3_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_3_out),.sum_3_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_3_out_ap_vld),.sum_2_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_2_out),.sum_2_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_2_out_ap_vld),.sum_1_out(grp_spmv_Pipeline_spmv_2_fu_628_sum_1_out),.sum_1_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_628_sum_1_out_ap_vld),.ap_return(grp_spmv_Pipeline_spmv_2_fu_628_ap_return));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U213(.din0(rowDelimiters_0_q1),.din1(rowDelimiters_1_q1),.din2(rowDelimiters_2_q1),.din3(rowDelimiters_3_q1),.def(tmp_begin_fu_777_p9),.sel(trunc_ln12_reg_2221),.dout(tmp_begin_fu_777_p11));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U214(.din0(rowDelimiters_0_q0),.din1(rowDelimiters_1_q0),.din2(rowDelimiters_2_q0),.din3(rowDelimiters_3_q0),.def(tmp_end_fu_801_p9),.sel(trunc_ln12_reg_2221),.dout(tmp_end_fu_801_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_spmv_Pipeline_spmv_2_fu_628_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_spmv_Pipeline_spmv_2_fu_628_ap_start_reg <= 1'b1;
        end else if ((grp_spmv_Pipeline_spmv_2_fu_628_ap_ready == 1'b1)) begin
            grp_spmv_Pipeline_spmv_2_fu_628_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_216 <= 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        i_fu_216 <= add_ln15_reg_2216;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln15_reg_2216 <= add_ln15_fu_731_p2;
        trunc_ln12_reg_2221 <= trunc_ln12_fu_737_p1;
        zext_ln9_reg_2227[6 : 0] <= zext_ln9_fu_751_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_100_reg_2438 <= empty_100_fu_1497_p2;
        empty_102_reg_2443 <= empty_102_fu_1502_p2;
        empty_95_reg_2423 <= empty_95_fu_1479_p3;
        empty_96_reg_2428 <= empty_96_fu_1487_p2;
        empty_98_reg_2433 <= empty_98_fu_1492_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_123_reg_2448 <= empty_123_fu_1698_p3;
        empty_124_reg_2453 <= empty_124_fu_1706_p2;
        empty_126_reg_2458 <= empty_126_fu_1711_p2;
        empty_128_reg_2463 <= empty_128_fu_1716_p2;
        empty_130_reg_2468 <= empty_130_fu_1721_p2;
        empty_132_reg_2473 <= empty_132_fu_1726_p2;
        empty_134_reg_2478 <= empty_134_fu_1731_p2;
        empty_136_reg_2483 <= empty_136_fu_1736_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_14_reg_2358 <= empty_14_fu_831_p2;
        empty_16_reg_2363 <= empty_16_fu_836_p2;
        empty_18_reg_2368 <= empty_18_fu_841_p2;
        empty_reg_2353 <= empty_fu_826_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_39_reg_2373 <= empty_39_fu_1041_p3;
        empty_40_reg_2378 <= empty_40_fu_1049_p2;
        empty_42_reg_2383 <= empty_42_fu_1054_p2;
        empty_44_reg_2388 <= empty_44_fu_1059_p2;
        empty_46_reg_2393 <= empty_46_fu_1064_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        empty_67_reg_2398 <= empty_67_fu_1260_p3;
        empty_68_reg_2403 <= empty_68_fu_1268_p2;
        empty_70_reg_2408 <= empty_70_fu_1273_p2;
        empty_72_reg_2413 <= empty_72_fu_1278_p2;
        empty_74_reg_2418 <= empty_74_fu_1283_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_10_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_10_loc_fu_256 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_10_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_11_loc_fu_260 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_12_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_12_loc_fu_264 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_12_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_13_loc_fu_268 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_14_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_14_loc_fu_272 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_14_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_15_loc_fu_276 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_16_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_16_loc_fu_280 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_16_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_17_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_17_loc_fu_284 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_17_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_18_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_18_loc_fu_288 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_18_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_19_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_19_loc_fu_292 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_19_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_1_loc_fu_220 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_20_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_20_loc_fu_296 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_20_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_21_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_21_loc_fu_300 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_21_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_22_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_22_loc_fu_304 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_22_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_23_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_23_loc_fu_308 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_23_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_24_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_24_loc_fu_312 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_24_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_25_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_25_loc_fu_316 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_25_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_26_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_26_loc_fu_320 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_26_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_27_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_27_loc_fu_324 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_27_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_28_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_28_loc_fu_328 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_28_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_29_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_29_loc_fu_332 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_29_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_2_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_2_loc_fu_224 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_2_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_30_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_30_loc_fu_336 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_30_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_31_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_31_loc_fu_340 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_31_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_32_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_32_loc_fu_344 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_32_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_33_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_33_loc_fu_348 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_33_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_34_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_34_loc_fu_352 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_34_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_35_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_35_loc_fu_356 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_35_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_36_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_36_loc_fu_360 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_36_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_37_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_37_loc_fu_364 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_37_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_38_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_38_loc_fu_368 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_38_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_39_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_39_loc_fu_372 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_39_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_3_loc_fu_228 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_40_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_40_loc_fu_376 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_40_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_41_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_41_loc_fu_380 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_41_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_42_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_42_loc_fu_384 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_42_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_43_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_43_loc_fu_388 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_43_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_44_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_44_loc_fu_392 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_44_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_45_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_45_loc_fu_396 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_45_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_46_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_46_loc_fu_400 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_46_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_47_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_47_loc_fu_404 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_47_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_48_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_48_loc_fu_408 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_48_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_49_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_49_loc_fu_412 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_49_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_4_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_4_loc_fu_232 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_4_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_50_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_50_loc_fu_416 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_50_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_51_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_51_loc_fu_420 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_51_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_52_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_52_loc_fu_424 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_52_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_53_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_53_loc_fu_428 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_53_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_54_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_54_loc_fu_432 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_54_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_55_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_55_loc_fu_436 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_55_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_56_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_56_loc_fu_440 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_56_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_57_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_57_loc_fu_444 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_57_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_58_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_58_loc_fu_448 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_58_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_59_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_59_loc_fu_452 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_59_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_5_loc_fu_236 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_60_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_60_loc_fu_456 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_60_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_61_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_61_loc_fu_460 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_61_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_62_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_62_loc_fu_464 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_62_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_63_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_63_loc_fu_468 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_63_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_6_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_6_loc_fu_240 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_6_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_7_loc_fu_244 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_8_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_8_loc_fu_248 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_8_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_9_loc_fu_252 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_9_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_628_sum_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_loc_fu_472 <= grp_spmv_Pipeline_spmv_2_fu_628_sum_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        targetBlock_reg_2286 <= grp_spmv_Pipeline_spmv_2_fu_628_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_begin_reg_2275 <= tmp_begin_fu_777_p11;
        tmp_end_reg_2280 <= tmp_end_fu_801_p11;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_spmv_Pipeline_spmv_2_fu_628_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln12_fu_725_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln12_fu_725_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        out_0_ce0_local = 1'b1;
    end else begin
        out_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln12_reg_2221 == 2'd0))) begin
        out_0_we0_local = 1'b1;
    end else begin
        out_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        out_1_ce0_local = 1'b1;
    end else begin
        out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln12_reg_2221 == 2'd1))) begin
        out_1_we0_local = 1'b1;
    end else begin
        out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        out_2_ce0_local = 1'b1;
    end else begin
        out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln12_reg_2221 == 2'd2))) begin
        out_2_we0_local = 1'b1;
    end else begin
        out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        out_3_ce0_local = 1'b1;
    end else begin
        out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (trunc_ln12_reg_2221 == 2'd3))) begin
        out_3_we0_local = 1'b1;
    end else begin
        out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_0_ce0_local = 1'b1;
    end else begin
        rowDelimiters_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_0_ce1_local = 1'b1;
    end else begin
        rowDelimiters_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_1_ce0_local = 1'b1;
    end else begin
        rowDelimiters_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_1_ce1_local = 1'b1;
    end else begin
        rowDelimiters_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_2_ce0_local = 1'b1;
    end else begin
        rowDelimiters_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_2_ce1_local = 1'b1;
    end else begin
        rowDelimiters_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_3_ce0_local = 1'b1;
    end else begin
        rowDelimiters_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_3_ce1_local = 1'b1;
    end else begin
        rowDelimiters_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln12_fu_725_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_spmv_Pipeline_spmv_2_fu_628_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_fu_731_p2 = (i_fu_216 + 9'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln20_fu_1810_p1 = sum_0_lcssa_ph_fu_1803_p3;
assign cols_address0 = grp_spmv_Pipeline_spmv_2_fu_628_cols_address0;
assign cols_ce0 = grp_spmv_Pipeline_spmv_2_fu_628_cols_ce0;
assign empty_100_fu_1497_p2 = ((targetBlock_reg_2286 == 6'd44) ? 1'b1 : 1'b0);
assign empty_101_fu_1562_p3 = ((empty_100_reg_2438[0:0] == 1'b1) ? sum_20_loc_fu_296 : empty_99_fu_1555_p3);
assign empty_102_fu_1502_p2 = ((targetBlock_reg_2286 == 6'd45) ? 1'b1 : 1'b0);
assign empty_103_fu_1569_p3 = ((empty_102_reg_2443[0:0] == 1'b1) ? sum_19_loc_fu_292 : empty_101_fu_1562_p3);
assign empty_104_fu_1576_p2 = ((targetBlock_reg_2286 == 6'd46) ? 1'b1 : 1'b0);
assign empty_105_fu_1581_p3 = ((empty_104_fu_1576_p2[0:0] == 1'b1) ? sum_18_loc_fu_288 : empty_103_fu_1569_p3);
assign empty_106_fu_1589_p2 = ((targetBlock_reg_2286 == 6'd47) ? 1'b1 : 1'b0);
assign empty_107_fu_1594_p3 = ((empty_106_fu_1589_p2[0:0] == 1'b1) ? sum_17_loc_fu_284 : empty_105_fu_1581_p3);
assign empty_108_fu_1602_p2 = ((targetBlock_reg_2286 == 6'd48) ? 1'b1 : 1'b0);
assign empty_109_fu_1607_p3 = ((empty_108_fu_1602_p2[0:0] == 1'b1) ? sum_16_loc_fu_280 : empty_107_fu_1594_p3);
assign empty_110_fu_1615_p2 = ((targetBlock_reg_2286 == 6'd49) ? 1'b1 : 1'b0);
assign empty_111_fu_1620_p3 = ((empty_110_fu_1615_p2[0:0] == 1'b1) ? sum_15_loc_fu_276 : empty_109_fu_1607_p3);
assign empty_112_fu_1628_p2 = ((targetBlock_reg_2286 == 6'd50) ? 1'b1 : 1'b0);
assign empty_113_fu_1633_p3 = ((empty_112_fu_1628_p2[0:0] == 1'b1) ? sum_14_loc_fu_272 : empty_111_fu_1620_p3);
assign empty_114_fu_1641_p2 = ((targetBlock_reg_2286 == 6'd51) ? 1'b1 : 1'b0);
assign empty_115_fu_1646_p3 = ((empty_114_fu_1641_p2[0:0] == 1'b1) ? sum_13_loc_fu_268 : empty_113_fu_1633_p3);
assign empty_116_fu_1654_p2 = ((targetBlock_reg_2286 == 6'd52) ? 1'b1 : 1'b0);
assign empty_117_fu_1659_p3 = ((empty_116_fu_1654_p2[0:0] == 1'b1) ? sum_12_loc_fu_264 : empty_115_fu_1646_p3);
assign empty_118_fu_1667_p2 = ((targetBlock_reg_2286 == 6'd53) ? 1'b1 : 1'b0);
assign empty_119_fu_1672_p3 = ((empty_118_fu_1667_p2[0:0] == 1'b1) ? sum_11_loc_fu_260 : empty_117_fu_1659_p3);
assign empty_120_fu_1680_p2 = ((targetBlock_reg_2286 == 6'd54) ? 1'b1 : 1'b0);
assign empty_121_fu_1685_p3 = ((empty_120_fu_1680_p2[0:0] == 1'b1) ? sum_10_loc_fu_256 : empty_119_fu_1672_p3);
assign empty_122_fu_1693_p2 = ((targetBlock_reg_2286 == 6'd55) ? 1'b1 : 1'b0);
assign empty_123_fu_1698_p3 = ((empty_122_fu_1693_p2[0:0] == 1'b1) ? sum_9_loc_fu_252 : empty_121_fu_1685_p3);
assign empty_124_fu_1706_p2 = ((targetBlock_reg_2286 == 6'd56) ? 1'b1 : 1'b0);
assign empty_125_fu_1762_p3 = ((empty_124_reg_2453[0:0] == 1'b1) ? sum_8_loc_fu_248 : empty_123_reg_2448);
assign empty_126_fu_1711_p2 = ((targetBlock_reg_2286 == 6'd57) ? 1'b1 : 1'b0);
assign empty_127_fu_1768_p3 = ((empty_126_reg_2458[0:0] == 1'b1) ? sum_7_loc_fu_244 : empty_125_fu_1762_p3);
assign empty_128_fu_1716_p2 = ((targetBlock_reg_2286 == 6'd58) ? 1'b1 : 1'b0);
assign empty_129_fu_1775_p3 = ((empty_128_reg_2463[0:0] == 1'b1) ? sum_6_loc_fu_240 : empty_127_fu_1768_p3);
assign empty_130_fu_1721_p2 = ((targetBlock_reg_2286 == 6'd59) ? 1'b1 : 1'b0);
assign empty_131_fu_1782_p3 = ((empty_130_reg_2468[0:0] == 1'b1) ? sum_5_loc_fu_236 : empty_129_fu_1775_p3);
assign empty_132_fu_1726_p2 = ((targetBlock_reg_2286 == 6'd60) ? 1'b1 : 1'b0);
assign empty_133_fu_1789_p3 = ((empty_132_reg_2473[0:0] == 1'b1) ? sum_4_loc_fu_232 : empty_131_fu_1782_p3);
assign empty_134_fu_1731_p2 = ((targetBlock_reg_2286 == 6'd61) ? 1'b1 : 1'b0);
assign empty_135_fu_1796_p3 = ((empty_134_reg_2478[0:0] == 1'b1) ? sum_3_loc_fu_228 : empty_133_fu_1789_p3);
assign empty_136_fu_1736_p2 = ((targetBlock_reg_2286 == 6'd62) ? 1'b1 : 1'b0);
assign empty_13_fu_891_p3 = ((empty_reg_2353[0:0] == 1'b1) ? sum_loc_fu_472 : sum_1_loc_fu_220);
assign empty_14_fu_831_p2 = ((targetBlock_reg_2286 == 6'd1) ? 1'b1 : 1'b0);
assign empty_15_fu_898_p3 = ((empty_14_reg_2358[0:0] == 1'b1) ? sum_63_loc_fu_468 : empty_13_fu_891_p3);
assign empty_16_fu_836_p2 = ((targetBlock_reg_2286 == 6'd2) ? 1'b1 : 1'b0);
assign empty_17_fu_905_p3 = ((empty_16_reg_2363[0:0] == 1'b1) ? sum_62_loc_fu_464 : empty_15_fu_898_p3);
assign empty_18_fu_841_p2 = ((targetBlock_reg_2286 == 6'd3) ? 1'b1 : 1'b0);
assign empty_19_fu_912_p3 = ((empty_18_reg_2368[0:0] == 1'b1) ? sum_61_loc_fu_460 : empty_17_fu_905_p3);
assign empty_20_fu_919_p2 = ((targetBlock_reg_2286 == 6'd4) ? 1'b1 : 1'b0);
assign empty_21_fu_924_p3 = ((empty_20_fu_919_p2[0:0] == 1'b1) ? sum_60_loc_fu_456 : empty_19_fu_912_p3);
assign empty_22_fu_932_p2 = ((targetBlock_reg_2286 == 6'd5) ? 1'b1 : 1'b0);
assign empty_23_fu_937_p3 = ((empty_22_fu_932_p2[0:0] == 1'b1) ? sum_59_loc_fu_452 : empty_21_fu_924_p3);
assign empty_24_fu_945_p2 = ((targetBlock_reg_2286 == 6'd6) ? 1'b1 : 1'b0);
assign empty_25_fu_950_p3 = ((empty_24_fu_945_p2[0:0] == 1'b1) ? sum_58_loc_fu_448 : empty_23_fu_937_p3);
assign empty_26_fu_958_p2 = ((targetBlock_reg_2286 == 6'd7) ? 1'b1 : 1'b0);
assign empty_27_fu_963_p3 = ((empty_26_fu_958_p2[0:0] == 1'b1) ? sum_57_loc_fu_444 : empty_25_fu_950_p3);
assign empty_28_fu_971_p2 = ((targetBlock_reg_2286 == 6'd8) ? 1'b1 : 1'b0);
assign empty_29_fu_976_p3 = ((empty_28_fu_971_p2[0:0] == 1'b1) ? sum_56_loc_fu_440 : empty_27_fu_963_p3);
assign empty_30_fu_984_p2 = ((targetBlock_reg_2286 == 6'd9) ? 1'b1 : 1'b0);
assign empty_31_fu_989_p3 = ((empty_30_fu_984_p2[0:0] == 1'b1) ? sum_55_loc_fu_436 : empty_29_fu_976_p3);
assign empty_32_fu_997_p2 = ((targetBlock_reg_2286 == 6'd10) ? 1'b1 : 1'b0);
assign empty_33_fu_1002_p3 = ((empty_32_fu_997_p2[0:0] == 1'b1) ? sum_54_loc_fu_432 : empty_31_fu_989_p3);
assign empty_34_fu_1010_p2 = ((targetBlock_reg_2286 == 6'd11) ? 1'b1 : 1'b0);
assign empty_35_fu_1015_p3 = ((empty_34_fu_1010_p2[0:0] == 1'b1) ? sum_53_loc_fu_428 : empty_33_fu_1002_p3);
assign empty_36_fu_1023_p2 = ((targetBlock_reg_2286 == 6'd12) ? 1'b1 : 1'b0);
assign empty_37_fu_1028_p3 = ((empty_36_fu_1023_p2[0:0] == 1'b1) ? sum_52_loc_fu_424 : empty_35_fu_1015_p3);
assign empty_38_fu_1036_p2 = ((targetBlock_reg_2286 == 6'd13) ? 1'b1 : 1'b0);
assign empty_39_fu_1041_p3 = ((empty_38_fu_1036_p2[0:0] == 1'b1) ? sum_51_loc_fu_420 : empty_37_fu_1028_p3);
assign empty_40_fu_1049_p2 = ((targetBlock_reg_2286 == 6'd14) ? 1'b1 : 1'b0);
assign empty_41_fu_1111_p3 = ((empty_40_reg_2378[0:0] == 1'b1) ? sum_50_loc_fu_416 : empty_39_reg_2373);
assign empty_42_fu_1054_p2 = ((targetBlock_reg_2286 == 6'd15) ? 1'b1 : 1'b0);
assign empty_43_fu_1117_p3 = ((empty_42_reg_2383[0:0] == 1'b1) ? sum_49_loc_fu_412 : empty_41_fu_1111_p3);
assign empty_44_fu_1059_p2 = ((targetBlock_reg_2286 == 6'd16) ? 1'b1 : 1'b0);
assign empty_45_fu_1124_p3 = ((empty_44_reg_2388[0:0] == 1'b1) ? sum_48_loc_fu_408 : empty_43_fu_1117_p3);
assign empty_46_fu_1064_p2 = ((targetBlock_reg_2286 == 6'd17) ? 1'b1 : 1'b0);
assign empty_47_fu_1131_p3 = ((empty_46_reg_2393[0:0] == 1'b1) ? sum_47_loc_fu_404 : empty_45_fu_1124_p3);
assign empty_48_fu_1138_p2 = ((targetBlock_reg_2286 == 6'd18) ? 1'b1 : 1'b0);
assign empty_49_fu_1143_p3 = ((empty_48_fu_1138_p2[0:0] == 1'b1) ? sum_46_loc_fu_400 : empty_47_fu_1131_p3);
assign empty_50_fu_1151_p2 = ((targetBlock_reg_2286 == 6'd19) ? 1'b1 : 1'b0);
assign empty_51_fu_1156_p3 = ((empty_50_fu_1151_p2[0:0] == 1'b1) ? sum_45_loc_fu_396 : empty_49_fu_1143_p3);
assign empty_52_fu_1164_p2 = ((targetBlock_reg_2286 == 6'd20) ? 1'b1 : 1'b0);
assign empty_53_fu_1169_p3 = ((empty_52_fu_1164_p2[0:0] == 1'b1) ? sum_44_loc_fu_392 : empty_51_fu_1156_p3);
assign empty_54_fu_1177_p2 = ((targetBlock_reg_2286 == 6'd21) ? 1'b1 : 1'b0);
assign empty_55_fu_1182_p3 = ((empty_54_fu_1177_p2[0:0] == 1'b1) ? sum_43_loc_fu_388 : empty_53_fu_1169_p3);
assign empty_56_fu_1190_p2 = ((targetBlock_reg_2286 == 6'd22) ? 1'b1 : 1'b0);
assign empty_57_fu_1195_p3 = ((empty_56_fu_1190_p2[0:0] == 1'b1) ? sum_42_loc_fu_384 : empty_55_fu_1182_p3);
assign empty_58_fu_1203_p2 = ((targetBlock_reg_2286 == 6'd23) ? 1'b1 : 1'b0);
assign empty_59_fu_1208_p3 = ((empty_58_fu_1203_p2[0:0] == 1'b1) ? sum_41_loc_fu_380 : empty_57_fu_1195_p3);
assign empty_60_fu_1216_p2 = ((targetBlock_reg_2286 == 6'd24) ? 1'b1 : 1'b0);
assign empty_61_fu_1221_p3 = ((empty_60_fu_1216_p2[0:0] == 1'b1) ? sum_40_loc_fu_376 : empty_59_fu_1208_p3);
assign empty_62_fu_1229_p2 = ((targetBlock_reg_2286 == 6'd25) ? 1'b1 : 1'b0);
assign empty_63_fu_1234_p3 = ((empty_62_fu_1229_p2[0:0] == 1'b1) ? sum_39_loc_fu_372 : empty_61_fu_1221_p3);
assign empty_64_fu_1242_p2 = ((targetBlock_reg_2286 == 6'd26) ? 1'b1 : 1'b0);
assign empty_65_fu_1247_p3 = ((empty_64_fu_1242_p2[0:0] == 1'b1) ? sum_38_loc_fu_368 : empty_63_fu_1234_p3);
assign empty_66_fu_1255_p2 = ((targetBlock_reg_2286 == 6'd27) ? 1'b1 : 1'b0);
assign empty_67_fu_1260_p3 = ((empty_66_fu_1255_p2[0:0] == 1'b1) ? sum_37_loc_fu_364 : empty_65_fu_1247_p3);
assign empty_68_fu_1268_p2 = ((targetBlock_reg_2286 == 6'd28) ? 1'b1 : 1'b0);
assign empty_69_fu_1330_p3 = ((empty_68_reg_2403[0:0] == 1'b1) ? sum_36_loc_fu_360 : empty_67_reg_2398);
assign empty_70_fu_1273_p2 = ((targetBlock_reg_2286 == 6'd29) ? 1'b1 : 1'b0);
assign empty_71_fu_1336_p3 = ((empty_70_reg_2408[0:0] == 1'b1) ? sum_35_loc_fu_356 : empty_69_fu_1330_p3);
assign empty_72_fu_1278_p2 = ((targetBlock_reg_2286 == 6'd30) ? 1'b1 : 1'b0);
assign empty_73_fu_1343_p3 = ((empty_72_reg_2413[0:0] == 1'b1) ? sum_34_loc_fu_352 : empty_71_fu_1336_p3);
assign empty_74_fu_1283_p2 = ((targetBlock_reg_2286 == 6'd31) ? 1'b1 : 1'b0);
assign empty_75_fu_1350_p3 = ((empty_74_reg_2418[0:0] == 1'b1) ? sum_33_loc_fu_348 : empty_73_fu_1343_p3);
assign empty_76_fu_1357_p2 = ((targetBlock_reg_2286 == 6'd32) ? 1'b1 : 1'b0);
assign empty_77_fu_1362_p3 = ((empty_76_fu_1357_p2[0:0] == 1'b1) ? sum_32_loc_fu_344 : empty_75_fu_1350_p3);
assign empty_78_fu_1370_p2 = ((targetBlock_reg_2286 == 6'd33) ? 1'b1 : 1'b0);
assign empty_79_fu_1375_p3 = ((empty_78_fu_1370_p2[0:0] == 1'b1) ? sum_31_loc_fu_340 : empty_77_fu_1362_p3);
assign empty_80_fu_1383_p2 = ((targetBlock_reg_2286 == 6'd34) ? 1'b1 : 1'b0);
assign empty_81_fu_1388_p3 = ((empty_80_fu_1383_p2[0:0] == 1'b1) ? sum_30_loc_fu_336 : empty_79_fu_1375_p3);
assign empty_82_fu_1396_p2 = ((targetBlock_reg_2286 == 6'd35) ? 1'b1 : 1'b0);
assign empty_83_fu_1401_p3 = ((empty_82_fu_1396_p2[0:0] == 1'b1) ? sum_29_loc_fu_332 : empty_81_fu_1388_p3);
assign empty_84_fu_1409_p2 = ((targetBlock_reg_2286 == 6'd36) ? 1'b1 : 1'b0);
assign empty_85_fu_1414_p3 = ((empty_84_fu_1409_p2[0:0] == 1'b1) ? sum_28_loc_fu_328 : empty_83_fu_1401_p3);
assign empty_86_fu_1422_p2 = ((targetBlock_reg_2286 == 6'd37) ? 1'b1 : 1'b0);
assign empty_87_fu_1427_p3 = ((empty_86_fu_1422_p2[0:0] == 1'b1) ? sum_27_loc_fu_324 : empty_85_fu_1414_p3);
assign empty_88_fu_1435_p2 = ((targetBlock_reg_2286 == 6'd38) ? 1'b1 : 1'b0);
assign empty_89_fu_1440_p3 = ((empty_88_fu_1435_p2[0:0] == 1'b1) ? sum_26_loc_fu_320 : empty_87_fu_1427_p3);
assign empty_90_fu_1448_p2 = ((targetBlock_reg_2286 == 6'd39) ? 1'b1 : 1'b0);
assign empty_91_fu_1453_p3 = ((empty_90_fu_1448_p2[0:0] == 1'b1) ? sum_25_loc_fu_316 : empty_89_fu_1440_p3);
assign empty_92_fu_1461_p2 = ((targetBlock_reg_2286 == 6'd40) ? 1'b1 : 1'b0);
assign empty_93_fu_1466_p3 = ((empty_92_fu_1461_p2[0:0] == 1'b1) ? sum_24_loc_fu_312 : empty_91_fu_1453_p3);
assign empty_94_fu_1474_p2 = ((targetBlock_reg_2286 == 6'd41) ? 1'b1 : 1'b0);
assign empty_95_fu_1479_p3 = ((empty_94_fu_1474_p2[0:0] == 1'b1) ? sum_23_loc_fu_308 : empty_93_fu_1466_p3);
assign empty_96_fu_1487_p2 = ((targetBlock_reg_2286 == 6'd42) ? 1'b1 : 1'b0);
assign empty_97_fu_1549_p3 = ((empty_96_reg_2428[0:0] == 1'b1) ? sum_22_loc_fu_304 : empty_95_reg_2423);
assign empty_98_fu_1492_p2 = ((targetBlock_reg_2286 == 6'd43) ? 1'b1 : 1'b0);
assign empty_99_fu_1555_p3 = ((empty_98_reg_2433[0:0] == 1'b1) ? sum_21_loc_fu_300 : empty_97_fu_1549_p3);
assign empty_fu_826_p2 = ((targetBlock_reg_2286 == 6'd0) ? 1'b1 : 1'b0);
assign grp_spmv_Pipeline_spmv_2_fu_628_ap_start = grp_spmv_Pipeline_spmv_2_fu_628_ap_start_reg;
assign icmp_ln12_fu_725_p2 = ((i_fu_216 == 9'd494) ? 1'b1 : 1'b0);
assign lshr_ln9_fu_741_p4 = {{i_fu_216[8:2]}};
assign lshr_ln_fu_759_p4 = {{add_ln15_fu_731_p2[8:2]}};
assign out_0_address0 = zext_ln9_reg_2227;
assign out_0_ce0 = out_0_ce0_local;
assign out_0_d0 = bitcast_ln20_fu_1810_p1;
assign out_0_we0 = out_0_we0_local;
assign out_1_address0 = zext_ln9_reg_2227;
assign out_1_ce0 = out_1_ce0_local;
assign out_1_d0 = bitcast_ln20_fu_1810_p1;
assign out_1_we0 = out_1_we0_local;
assign out_2_address0 = zext_ln9_reg_2227;
assign out_2_ce0 = out_2_ce0_local;
assign out_2_d0 = bitcast_ln20_fu_1810_p1;
assign out_2_we0 = out_2_we0_local;
assign out_3_address0 = zext_ln9_reg_2227;
assign out_3_ce0 = out_3_ce0_local;
assign out_3_d0 = bitcast_ln20_fu_1810_p1;
assign out_3_we0 = out_3_we0_local;
assign rowDelimiters_0_address0 = zext_ln15_fu_769_p1;
assign rowDelimiters_0_address1 = zext_ln9_fu_751_p1;
assign rowDelimiters_0_ce0 = rowDelimiters_0_ce0_local;
assign rowDelimiters_0_ce1 = rowDelimiters_0_ce1_local;
assign rowDelimiters_1_address0 = zext_ln15_fu_769_p1;
assign rowDelimiters_1_address1 = zext_ln9_fu_751_p1;
assign rowDelimiters_1_ce0 = rowDelimiters_1_ce0_local;
assign rowDelimiters_1_ce1 = rowDelimiters_1_ce1_local;
assign rowDelimiters_2_address0 = zext_ln15_fu_769_p1;
assign rowDelimiters_2_address1 = zext_ln9_fu_751_p1;
assign rowDelimiters_2_ce0 = rowDelimiters_2_ce0_local;
assign rowDelimiters_2_ce1 = rowDelimiters_2_ce1_local;
assign rowDelimiters_3_address0 = zext_ln15_fu_769_p1;
assign rowDelimiters_3_address1 = zext_ln9_fu_751_p1;
assign rowDelimiters_3_ce0 = rowDelimiters_3_ce0_local;
assign rowDelimiters_3_ce1 = rowDelimiters_3_ce1_local;
assign sum_0_lcssa_ph_fu_1803_p3 = ((empty_136_reg_2483[0:0] == 1'b1) ? sum_2_loc_fu_224 : empty_135_fu_1796_p3);
assign tmp_begin_fu_777_p9 = 'bx;
assign tmp_end_fu_801_p9 = 'bx;
assign trunc_ln12_fu_737_p1 = i_fu_216[1:0];
assign val_0_address0 = grp_spmv_Pipeline_spmv_2_fu_628_val_0_address0;
assign val_0_ce0 = grp_spmv_Pipeline_spmv_2_fu_628_val_0_ce0;
assign val_1_address0 = grp_spmv_Pipeline_spmv_2_fu_628_val_1_address0;
assign val_1_ce0 = grp_spmv_Pipeline_spmv_2_fu_628_val_1_ce0;
assign val_2_address0 = grp_spmv_Pipeline_spmv_2_fu_628_val_2_address0;
assign val_2_ce0 = grp_spmv_Pipeline_spmv_2_fu_628_val_2_ce0;
assign val_3_address0 = grp_spmv_Pipeline_spmv_2_fu_628_val_3_address0;
assign val_3_ce0 = grp_spmv_Pipeline_spmv_2_fu_628_val_3_ce0;
assign vec_0_address0 = grp_spmv_Pipeline_spmv_2_fu_628_vec_0_address0;
assign vec_0_ce0 = grp_spmv_Pipeline_spmv_2_fu_628_vec_0_ce0;
assign vec_1_address0 = grp_spmv_Pipeline_spmv_2_fu_628_vec_1_address0;
assign vec_1_ce0 = grp_spmv_Pipeline_spmv_2_fu_628_vec_1_ce0;
assign vec_2_address0 = grp_spmv_Pipeline_spmv_2_fu_628_vec_2_address0;
assign vec_2_ce0 = grp_spmv_Pipeline_spmv_2_fu_628_vec_2_ce0;
assign vec_3_address0 = grp_spmv_Pipeline_spmv_2_fu_628_vec_3_address0;
assign vec_3_ce0 = grp_spmv_Pipeline_spmv_2_fu_628_vec_3_ce0;
assign zext_ln15_fu_769_p1 = lshr_ln_fu_759_p4;
assign zext_ln9_fu_751_p1 = lshr_ln9_fu_741_p4;
always @ (posedge ap_clk) begin
    zext_ln9_reg_2227[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 
