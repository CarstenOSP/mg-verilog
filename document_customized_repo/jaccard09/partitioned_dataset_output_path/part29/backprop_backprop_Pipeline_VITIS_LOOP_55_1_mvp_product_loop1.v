
module backprop_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations3_2_load,activations3_load,activations3_1_load,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_3_address0,weights3_3_ce0,weights3_3_q0,weights3_5_address0,weights3_5_ce0,weights3_5_q0,weights3_7_address0,weights3_7_ce0,weights3_7_q0,weights3_9_address0,weights3_9_ce0,weights3_9_q0,weights3_11_address0,weights3_11_ce0,weights3_11_q0,weights3_13_address0,weights3_13_ce0,weights3_13_q0,weights3_15_address0,weights3_15_ce0,weights3_15_q0,weights3_17_address0,weights3_17_ce0,weights3_17_q0,weights3_19_address0,weights3_19_ce0,weights3_19_q0,weights3_21_address0,weights3_21_ce0,weights3_21_q0,weights3_23_address0,weights3_23_ce0,weights3_23_q0,weights3_25_address0,weights3_25_ce0,weights3_25_q0,weights3_27_address0,weights3_27_ce0,weights3_27_q0,weights3_29_address0,weights3_29_ce0,weights3_29_q0,weights3_31_address0,weights3_31_ce0,weights3_31_q0,weights3_33_address0,weights3_33_ce0,weights3_33_q0,weights3_35_address0,weights3_35_ce0,weights3_35_q0,weights3_37_address0,weights3_37_ce0,weights3_37_q0,weights3_39_address0,weights3_39_ce0,weights3_39_q0,weights3_41_address0,weights3_41_ce0,weights3_41_q0,weights3_43_address0,weights3_43_ce0,weights3_43_q0,weights3_45_address0,weights3_45_ce0,weights3_45_q0,weights3_47_address0,weights3_47_ce0,weights3_47_q0,weights3_49_address0,weights3_49_ce0,weights3_49_q0,weights3_51_address0,weights3_51_ce0,weights3_51_q0,weights3_53_address0,weights3_53_ce0,weights3_53_q0,weights3_55_address0,weights3_55_ce0,weights3_55_q0,weights3_57_address0,weights3_57_ce0,weights3_57_q0,weights3_59_address0,weights3_59_ce0,weights3_59_q0,weights3_61_address0,weights3_61_ce0,weights3_61_q0,weights3_63_address0,weights3_63_ce0,weights3_63_q0,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_4_address0,weights3_4_ce0,weights3_4_q0,weights3_6_address0,weights3_6_ce0,weights3_6_q0,weights3_8_address0,weights3_8_ce0,weights3_8_q0,weights3_10_address0,weights3_10_ce0,weights3_10_q0,weights3_12_address0,weights3_12_ce0,weights3_12_q0,weights3_14_address0,weights3_14_ce0,weights3_14_q0,weights3_16_address0,weights3_16_ce0,weights3_16_q0,weights3_18_address0,weights3_18_ce0,weights3_18_q0,weights3_20_address0,weights3_20_ce0,weights3_20_q0,weights3_22_address0,weights3_22_ce0,weights3_22_q0,weights3_24_address0,weights3_24_ce0,weights3_24_q0,weights3_26_address0,weights3_26_ce0,weights3_26_q0,weights3_28_address0,weights3_28_ce0,weights3_28_q0,weights3_30_address0,weights3_30_ce0,weights3_30_q0,weights3_32_address0,weights3_32_ce0,weights3_32_q0,weights3_34_address0,weights3_34_ce0,weights3_34_q0,weights3_36_address0,weights3_36_ce0,weights3_36_q0,weights3_38_address0,weights3_38_ce0,weights3_38_q0,weights3_40_address0,weights3_40_ce0,weights3_40_q0,weights3_42_address0,weights3_42_ce0,weights3_42_q0,weights3_44_address0,weights3_44_ce0,weights3_44_q0,weights3_46_address0,weights3_46_ce0,weights3_46_q0,weights3_48_address0,weights3_48_ce0,weights3_48_q0,weights3_50_address0,weights3_50_ce0,weights3_50_q0,weights3_52_address0,weights3_52_ce0,weights3_52_q0,weights3_54_address0,weights3_54_ce0,weights3_54_q0,weights3_56_address0,weights3_56_ce0,weights3_56_q0,weights3_58_address0,weights3_58_ce0,weights3_58_q0,weights3_60_address0,weights3_60_ce0,weights3_60_q0,weights3_62_address0,weights3_62_ce0,weights3_62_q0,activations2_load_2,activations2_2_load_2,activations2_4_load_2,activations2_6_load_2,activations2_8_load_2,activations2_10_load_2,activations2_12_load_2,activations2_14_load_2,activations2_16_load_2,activations2_18_load_2,activations2_20_load_2,activations2_22_load_2,activations2_24_load_2,activations2_26_load_2,activations2_28_load_2,activations2_30_load_2,activations2_32_load_2,activations2_34_load_2,activations2_36_load_2,activations2_38_load_2,activations2_40_load_2,activations2_42_load_2,activations2_44_load_2,activations2_46_load_2,activations2_48_load_2,activations2_50_load_2,activations2_52_load_2,activations2_54_load_2,activations2_56_load_2,activations2_58_load_2,activations2_60_load_2,activations2_62_load_2,activations2_1_load_2,activations2_3_load_2,activations2_5_load_2,activations2_7_load_2,activations2_9_load_2,activations2_11_load_2,activations2_13_load_2,activations2_15_load_2,activations2_17_load_2,activations2_19_load_2,activations2_21_load_2,activations2_23_load_2,activations2_25_load_2,activations2_27_load_2,activations2_29_load_2,activations2_31_load_2,activations2_33_load_2,activations2_35_load_2,activations2_37_load_2,activations2_39_load_2,activations2_41_load_2,activations2_43_load_2,activations2_45_load_2,activations2_47_load_2,activations2_49_load_2,activations2_51_load_2,activations2_53_load_2,activations2_55_load_2,activations2_57_load_2,activations2_59_load_2,activations2_61_load_2,activations2_63_load_2,activations3_10_out_i,activations3_10_out_o,activations3_10_out_o_ap_vld,activations3_9_out_i,activations3_9_out_o,activations3_9_out_o_ap_vld,activations3_8_out_i,activations3_8_out_o,activations3_8_out_o_ap_vld,grp_fu_26875_p_din0,grp_fu_26875_p_din1,grp_fu_26875_p_opcode,grp_fu_26875_p_dout0,grp_fu_26875_p_ce,grp_fu_26919_p_din0,grp_fu_26919_p_din1,grp_fu_26919_p_dout0,grp_fu_26919_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] activations3_2_load;
input  [63:0] activations3_load;
input  [63:0] activations3_1_load;
output  [1:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [1:0] weights3_3_address0;
output   weights3_3_ce0;
input  [63:0] weights3_3_q0;
output  [1:0] weights3_5_address0;
output   weights3_5_ce0;
input  [63:0] weights3_5_q0;
output  [1:0] weights3_7_address0;
output   weights3_7_ce0;
input  [63:0] weights3_7_q0;
output  [1:0] weights3_9_address0;
output   weights3_9_ce0;
input  [63:0] weights3_9_q0;
output  [1:0] weights3_11_address0;
output   weights3_11_ce0;
input  [63:0] weights3_11_q0;
output  [1:0] weights3_13_address0;
output   weights3_13_ce0;
input  [63:0] weights3_13_q0;
output  [1:0] weights3_15_address0;
output   weights3_15_ce0;
input  [63:0] weights3_15_q0;
output  [1:0] weights3_17_address0;
output   weights3_17_ce0;
input  [63:0] weights3_17_q0;
output  [1:0] weights3_19_address0;
output   weights3_19_ce0;
input  [63:0] weights3_19_q0;
output  [1:0] weights3_21_address0;
output   weights3_21_ce0;
input  [63:0] weights3_21_q0;
output  [1:0] weights3_23_address0;
output   weights3_23_ce0;
input  [63:0] weights3_23_q0;
output  [1:0] weights3_25_address0;
output   weights3_25_ce0;
input  [63:0] weights3_25_q0;
output  [1:0] weights3_27_address0;
output   weights3_27_ce0;
input  [63:0] weights3_27_q0;
output  [1:0] weights3_29_address0;
output   weights3_29_ce0;
input  [63:0] weights3_29_q0;
output  [1:0] weights3_31_address0;
output   weights3_31_ce0;
input  [63:0] weights3_31_q0;
output  [1:0] weights3_33_address0;
output   weights3_33_ce0;
input  [63:0] weights3_33_q0;
output  [1:0] weights3_35_address0;
output   weights3_35_ce0;
input  [63:0] weights3_35_q0;
output  [1:0] weights3_37_address0;
output   weights3_37_ce0;
input  [63:0] weights3_37_q0;
output  [1:0] weights3_39_address0;
output   weights3_39_ce0;
input  [63:0] weights3_39_q0;
output  [1:0] weights3_41_address0;
output   weights3_41_ce0;
input  [63:0] weights3_41_q0;
output  [1:0] weights3_43_address0;
output   weights3_43_ce0;
input  [63:0] weights3_43_q0;
output  [1:0] weights3_45_address0;
output   weights3_45_ce0;
input  [63:0] weights3_45_q0;
output  [1:0] weights3_47_address0;
output   weights3_47_ce0;
input  [63:0] weights3_47_q0;
output  [1:0] weights3_49_address0;
output   weights3_49_ce0;
input  [63:0] weights3_49_q0;
output  [1:0] weights3_51_address0;
output   weights3_51_ce0;
input  [63:0] weights3_51_q0;
output  [1:0] weights3_53_address0;
output   weights3_53_ce0;
input  [63:0] weights3_53_q0;
output  [1:0] weights3_55_address0;
output   weights3_55_ce0;
input  [63:0] weights3_55_q0;
output  [1:0] weights3_57_address0;
output   weights3_57_ce0;
input  [63:0] weights3_57_q0;
output  [1:0] weights3_59_address0;
output   weights3_59_ce0;
input  [63:0] weights3_59_q0;
output  [1:0] weights3_61_address0;
output   weights3_61_ce0;
input  [63:0] weights3_61_q0;
output  [1:0] weights3_63_address0;
output   weights3_63_ce0;
input  [63:0] weights3_63_q0;
output  [1:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [1:0] weights3_2_address0;
output   weights3_2_ce0;
input  [63:0] weights3_2_q0;
output  [1:0] weights3_4_address0;
output   weights3_4_ce0;
input  [63:0] weights3_4_q0;
output  [1:0] weights3_6_address0;
output   weights3_6_ce0;
input  [63:0] weights3_6_q0;
output  [1:0] weights3_8_address0;
output   weights3_8_ce0;
input  [63:0] weights3_8_q0;
output  [1:0] weights3_10_address0;
output   weights3_10_ce0;
input  [63:0] weights3_10_q0;
output  [1:0] weights3_12_address0;
output   weights3_12_ce0;
input  [63:0] weights3_12_q0;
output  [1:0] weights3_14_address0;
output   weights3_14_ce0;
input  [63:0] weights3_14_q0;
output  [1:0] weights3_16_address0;
output   weights3_16_ce0;
input  [63:0] weights3_16_q0;
output  [1:0] weights3_18_address0;
output   weights3_18_ce0;
input  [63:0] weights3_18_q0;
output  [1:0] weights3_20_address0;
output   weights3_20_ce0;
input  [63:0] weights3_20_q0;
output  [1:0] weights3_22_address0;
output   weights3_22_ce0;
input  [63:0] weights3_22_q0;
output  [1:0] weights3_24_address0;
output   weights3_24_ce0;
input  [63:0] weights3_24_q0;
output  [1:0] weights3_26_address0;
output   weights3_26_ce0;
input  [63:0] weights3_26_q0;
output  [1:0] weights3_28_address0;
output   weights3_28_ce0;
input  [63:0] weights3_28_q0;
output  [1:0] weights3_30_address0;
output   weights3_30_ce0;
input  [63:0] weights3_30_q0;
output  [1:0] weights3_32_address0;
output   weights3_32_ce0;
input  [63:0] weights3_32_q0;
output  [1:0] weights3_34_address0;
output   weights3_34_ce0;
input  [63:0] weights3_34_q0;
output  [1:0] weights3_36_address0;
output   weights3_36_ce0;
input  [63:0] weights3_36_q0;
output  [1:0] weights3_38_address0;
output   weights3_38_ce0;
input  [63:0] weights3_38_q0;
output  [1:0] weights3_40_address0;
output   weights3_40_ce0;
input  [63:0] weights3_40_q0;
output  [1:0] weights3_42_address0;
output   weights3_42_ce0;
input  [63:0] weights3_42_q0;
output  [1:0] weights3_44_address0;
output   weights3_44_ce0;
input  [63:0] weights3_44_q0;
output  [1:0] weights3_46_address0;
output   weights3_46_ce0;
input  [63:0] weights3_46_q0;
output  [1:0] weights3_48_address0;
output   weights3_48_ce0;
input  [63:0] weights3_48_q0;
output  [1:0] weights3_50_address0;
output   weights3_50_ce0;
input  [63:0] weights3_50_q0;
output  [1:0] weights3_52_address0;
output   weights3_52_ce0;
input  [63:0] weights3_52_q0;
output  [1:0] weights3_54_address0;
output   weights3_54_ce0;
input  [63:0] weights3_54_q0;
output  [1:0] weights3_56_address0;
output   weights3_56_ce0;
input  [63:0] weights3_56_q0;
output  [1:0] weights3_58_address0;
output   weights3_58_ce0;
input  [63:0] weights3_58_q0;
output  [1:0] weights3_60_address0;
output   weights3_60_ce0;
input  [63:0] weights3_60_q0;
output  [1:0] weights3_62_address0;
output   weights3_62_ce0;
input  [63:0] weights3_62_q0;
input  [63:0] activations2_load_2;
input  [63:0] activations2_2_load_2;
input  [63:0] activations2_4_load_2;
input  [63:0] activations2_6_load_2;
input  [63:0] activations2_8_load_2;
input  [63:0] activations2_10_load_2;
input  [63:0] activations2_12_load_2;
input  [63:0] activations2_14_load_2;
input  [63:0] activations2_16_load_2;
input  [63:0] activations2_18_load_2;
input  [63:0] activations2_20_load_2;
input  [63:0] activations2_22_load_2;
input  [63:0] activations2_24_load_2;
input  [63:0] activations2_26_load_2;
input  [63:0] activations2_28_load_2;
input  [63:0] activations2_30_load_2;
input  [63:0] activations2_32_load_2;
input  [63:0] activations2_34_load_2;
input  [63:0] activations2_36_load_2;
input  [63:0] activations2_38_load_2;
input  [63:0] activations2_40_load_2;
input  [63:0] activations2_42_load_2;
input  [63:0] activations2_44_load_2;
input  [63:0] activations2_46_load_2;
input  [63:0] activations2_48_load_2;
input  [63:0] activations2_50_load_2;
input  [63:0] activations2_52_load_2;
input  [63:0] activations2_54_load_2;
input  [63:0] activations2_56_load_2;
input  [63:0] activations2_58_load_2;
input  [63:0] activations2_60_load_2;
input  [63:0] activations2_62_load_2;
input  [63:0] activations2_1_load_2;
input  [63:0] activations2_3_load_2;
input  [63:0] activations2_5_load_2;
input  [63:0] activations2_7_load_2;
input  [63:0] activations2_9_load_2;
input  [63:0] activations2_11_load_2;
input  [63:0] activations2_13_load_2;
input  [63:0] activations2_15_load_2;
input  [63:0] activations2_17_load_2;
input  [63:0] activations2_19_load_2;
input  [63:0] activations2_21_load_2;
input  [63:0] activations2_23_load_2;
input  [63:0] activations2_25_load_2;
input  [63:0] activations2_27_load_2;
input  [63:0] activations2_29_load_2;
input  [63:0] activations2_31_load_2;
input  [63:0] activations2_33_load_2;
input  [63:0] activations2_35_load_2;
input  [63:0] activations2_37_load_2;
input  [63:0] activations2_39_load_2;
input  [63:0] activations2_41_load_2;
input  [63:0] activations2_43_load_2;
input  [63:0] activations2_45_load_2;
input  [63:0] activations2_47_load_2;
input  [63:0] activations2_49_load_2;
input  [63:0] activations2_51_load_2;
input  [63:0] activations2_53_load_2;
input  [63:0] activations2_55_load_2;
input  [63:0] activations2_57_load_2;
input  [63:0] activations2_59_load_2;
input  [63:0] activations2_61_load_2;
input  [63:0] activations2_63_load_2;
input  [63:0] activations3_10_out_i;
output  [63:0] activations3_10_out_o;
output   activations3_10_out_o_ap_vld;
input  [63:0] activations3_9_out_i;
output  [63:0] activations3_9_out_o;
output   activations3_9_out_o_ap_vld;
input  [63:0] activations3_8_out_i;
output  [63:0] activations3_8_out_o;
output   activations3_8_out_o_ap_vld;
output  [63:0] grp_fu_26875_p_din0;
output  [63:0] grp_fu_26875_p_din1;
output  [0:0] grp_fu_26875_p_opcode;
input  [63:0] grp_fu_26875_p_dout0;
output   grp_fu_26875_p_ce;
output  [63:0] grp_fu_26919_p_din0;
output  [63:0] grp_fu_26919_p_din1;
input  [63:0] grp_fu_26919_p_dout0;
output   grp_fu_26919_p_ce;
reg ap_idle;
reg[63:0] activations3_10_out_o;
reg activations3_10_out_o_ap_vld;
reg[63:0] activations3_9_out_o;
reg activations3_9_out_o_ap_vld;
reg[63:0] activations3_8_out_o;
reg activations3_8_out_o_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] icmp_ln55_reg_2828;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln55_fu_1706_p2;
wire   [0:0] tmp_fu_1724_p3;
reg   [0:0] tmp_reg_2832;
wire   [6:0] select_ln54_fu_1732_p3;
reg   [6:0] select_ln54_reg_2840;
wire   [1:0] select_ln55_3_fu_1746_p3;
reg   [1:0] select_ln55_3_reg_2845;
reg   [1:0] select_ln55_3_reg_2845_pp0_iter1_reg;
wire   [5:0] trunc_ln57_fu_1822_p1;
reg   [5:0] trunc_ln57_reg_3169;
wire   [63:0] tmp_157_fu_1826_p67;
reg   [63:0] tmp_157_reg_3175;
wire   [63:0] tmp_159_fu_1962_p67;
reg   [63:0] tmp_159_reg_3180;
wire   [63:0] tmp_s_fu_2364_p67;
reg   [63:0] tmp_s_reg_3185;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_158_fu_2499_p67;
reg   [63:0] tmp_158_reg_3190;
reg   [63:0] mul8_i1_reg_3195;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] select_ln54_1_fu_2637_p3;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] mul8_1_i1_reg_3205;
wire   [0:0] tmp_19_fu_2692_p3;
reg   [0:0] tmp_19_reg_3210;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] add11_i1_reg_3214;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_fu_1754_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] select_ln55_fu_2666_p3;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage15;
wire    ap_loop_init;
wire   [63:0] select_ln55_1_fu_2673_p3;
wire   [63:0] select_ln55_2_fu_2680_p3;
reg   [63:0] add114_i77_fu_380;
wire    ap_block_pp0_stage9;
reg   [6:0] i_fu_384;
wire   [6:0] add_ln57_fu_2687_p2;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [1:0] j_fu_388;
reg   [1:0] ap_sig_allocacmp_j_load;
reg   [63:0] activations3_fu_392;
reg   [63:0] activations3_1_fu_396;
reg   [63:0] activations3_2_fu_400;
reg   [6:0] indvar_flatten396_fu_404;
wire   [6:0] add_ln55_fu_1712_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten396_load;
reg    weights3_1_ce0_local;
reg    weights3_3_ce0_local;
reg    weights3_5_ce0_local;
reg    weights3_7_ce0_local;
reg    weights3_9_ce0_local;
reg    weights3_11_ce0_local;
reg    weights3_13_ce0_local;
reg    weights3_15_ce0_local;
reg    weights3_17_ce0_local;
reg    weights3_19_ce0_local;
reg    weights3_21_ce0_local;
reg    weights3_23_ce0_local;
reg    weights3_25_ce0_local;
reg    weights3_27_ce0_local;
reg    weights3_29_ce0_local;
reg    weights3_31_ce0_local;
reg    weights3_33_ce0_local;
reg    weights3_35_ce0_local;
reg    weights3_37_ce0_local;
reg    weights3_39_ce0_local;
reg    weights3_41_ce0_local;
reg    weights3_43_ce0_local;
reg    weights3_45_ce0_local;
reg    weights3_47_ce0_local;
reg    weights3_49_ce0_local;
reg    weights3_51_ce0_local;
reg    weights3_53_ce0_local;
reg    weights3_55_ce0_local;
reg    weights3_57_ce0_local;
reg    weights3_59_ce0_local;
reg    weights3_61_ce0_local;
reg    weights3_63_ce0_local;
reg    weights3_0_ce0_local;
reg    weights3_2_ce0_local;
reg    weights3_4_ce0_local;
reg    weights3_6_ce0_local;
reg    weights3_8_ce0_local;
reg    weights3_10_ce0_local;
reg    weights3_12_ce0_local;
reg    weights3_14_ce0_local;
reg    weights3_16_ce0_local;
reg    weights3_18_ce0_local;
reg    weights3_20_ce0_local;
reg    weights3_22_ce0_local;
reg    weights3_24_ce0_local;
reg    weights3_26_ce0_local;
reg    weights3_28_ce0_local;
reg    weights3_30_ce0_local;
reg    weights3_32_ce0_local;
reg    weights3_34_ce0_local;
reg    weights3_36_ce0_local;
reg    weights3_38_ce0_local;
reg    weights3_40_ce0_local;
reg    weights3_42_ce0_local;
reg    weights3_44_ce0_local;
reg    weights3_46_ce0_local;
reg    weights3_48_ce0_local;
reg    weights3_50_ce0_local;
reg    weights3_52_ce0_local;
reg    weights3_54_ce0_local;
reg    weights3_56_ce0_local;
reg    weights3_58_ce0_local;
reg    weights3_60_ce0_local;
reg    weights3_62_ce0_local;
reg   [63:0] grp_fu_1642_p0;
reg   [63:0] grp_fu_1642_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_1646_p0;
reg   [63:0] grp_fu_1646_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire   [1:0] add_ln55_1_fu_1740_p2;
wire   [63:0] tmp_157_fu_1826_p65;
wire   [63:0] tmp_159_fu_1962_p65;
wire   [63:0] tmp_s_fu_2364_p2;
wire   [63:0] tmp_s_fu_2364_p4;
wire   [63:0] tmp_s_fu_2364_p6;
wire   [63:0] tmp_s_fu_2364_p8;
wire   [63:0] tmp_s_fu_2364_p10;
wire   [63:0] tmp_s_fu_2364_p12;
wire   [63:0] tmp_s_fu_2364_p14;
wire   [63:0] tmp_s_fu_2364_p16;
wire   [63:0] tmp_s_fu_2364_p18;
wire   [63:0] tmp_s_fu_2364_p20;
wire   [63:0] tmp_s_fu_2364_p22;
wire   [63:0] tmp_s_fu_2364_p24;
wire   [63:0] tmp_s_fu_2364_p26;
wire   [63:0] tmp_s_fu_2364_p28;
wire   [63:0] tmp_s_fu_2364_p30;
wire   [63:0] tmp_s_fu_2364_p32;
wire   [63:0] tmp_s_fu_2364_p34;
wire   [63:0] tmp_s_fu_2364_p36;
wire   [63:0] tmp_s_fu_2364_p38;
wire   [63:0] tmp_s_fu_2364_p40;
wire   [63:0] tmp_s_fu_2364_p42;
wire   [63:0] tmp_s_fu_2364_p44;
wire   [63:0] tmp_s_fu_2364_p46;
wire   [63:0] tmp_s_fu_2364_p48;
wire   [63:0] tmp_s_fu_2364_p50;
wire   [63:0] tmp_s_fu_2364_p52;
wire   [63:0] tmp_s_fu_2364_p54;
wire   [63:0] tmp_s_fu_2364_p56;
wire   [63:0] tmp_s_fu_2364_p58;
wire   [63:0] tmp_s_fu_2364_p60;
wire   [63:0] tmp_s_fu_2364_p62;
wire   [63:0] tmp_s_fu_2364_p64;
wire   [63:0] tmp_s_fu_2364_p65;
wire   [63:0] tmp_158_fu_2499_p2;
wire   [63:0] tmp_158_fu_2499_p4;
wire   [63:0] tmp_158_fu_2499_p6;
wire   [63:0] tmp_158_fu_2499_p8;
wire   [63:0] tmp_158_fu_2499_p10;
wire   [63:0] tmp_158_fu_2499_p12;
wire   [63:0] tmp_158_fu_2499_p14;
wire   [63:0] tmp_158_fu_2499_p16;
wire   [63:0] tmp_158_fu_2499_p18;
wire   [63:0] tmp_158_fu_2499_p20;
wire   [63:0] tmp_158_fu_2499_p22;
wire   [63:0] tmp_158_fu_2499_p24;
wire   [63:0] tmp_158_fu_2499_p26;
wire   [63:0] tmp_158_fu_2499_p28;
wire   [63:0] tmp_158_fu_2499_p30;
wire   [63:0] tmp_158_fu_2499_p32;
wire   [63:0] tmp_158_fu_2499_p34;
wire   [63:0] tmp_158_fu_2499_p36;
wire   [63:0] tmp_158_fu_2499_p38;
wire   [63:0] tmp_158_fu_2499_p40;
wire   [63:0] tmp_158_fu_2499_p42;
wire   [63:0] tmp_158_fu_2499_p44;
wire   [63:0] tmp_158_fu_2499_p46;
wire   [63:0] tmp_158_fu_2499_p48;
wire   [63:0] tmp_158_fu_2499_p50;
wire   [63:0] tmp_158_fu_2499_p52;
wire   [63:0] tmp_158_fu_2499_p54;
wire   [63:0] tmp_158_fu_2499_p56;
wire   [63:0] tmp_158_fu_2499_p58;
wire   [63:0] tmp_158_fu_2499_p60;
wire   [63:0] tmp_158_fu_2499_p62;
wire   [63:0] tmp_158_fu_2499_p64;
wire   [63:0] tmp_158_fu_2499_p65;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] tmp_157_fu_1826_p1;
wire   [5:0] tmp_157_fu_1826_p3;
wire   [5:0] tmp_157_fu_1826_p5;
wire   [5:0] tmp_157_fu_1826_p7;
wire   [5:0] tmp_157_fu_1826_p9;
wire   [5:0] tmp_157_fu_1826_p11;
wire   [5:0] tmp_157_fu_1826_p13;
wire   [5:0] tmp_157_fu_1826_p15;
wire   [5:0] tmp_157_fu_1826_p17;
wire   [5:0] tmp_157_fu_1826_p19;
wire   [5:0] tmp_157_fu_1826_p21;
wire   [5:0] tmp_157_fu_1826_p23;
wire   [5:0] tmp_157_fu_1826_p25;
wire   [5:0] tmp_157_fu_1826_p27;
wire   [5:0] tmp_157_fu_1826_p29;
wire   [5:0] tmp_157_fu_1826_p31;
wire  signed [5:0] tmp_157_fu_1826_p33;
wire  signed [5:0] tmp_157_fu_1826_p35;
wire  signed [5:0] tmp_157_fu_1826_p37;
wire  signed [5:0] tmp_157_fu_1826_p39;
wire  signed [5:0] tmp_157_fu_1826_p41;
wire  signed [5:0] tmp_157_fu_1826_p43;
wire  signed [5:0] tmp_157_fu_1826_p45;
wire  signed [5:0] tmp_157_fu_1826_p47;
wire  signed [5:0] tmp_157_fu_1826_p49;
wire  signed [5:0] tmp_157_fu_1826_p51;
wire  signed [5:0] tmp_157_fu_1826_p53;
wire  signed [5:0] tmp_157_fu_1826_p55;
wire  signed [5:0] tmp_157_fu_1826_p57;
wire  signed [5:0] tmp_157_fu_1826_p59;
wire  signed [5:0] tmp_157_fu_1826_p61;
wire  signed [5:0] tmp_157_fu_1826_p63;
wire   [5:0] tmp_159_fu_1962_p1;
wire   [5:0] tmp_159_fu_1962_p3;
wire   [5:0] tmp_159_fu_1962_p5;
wire   [5:0] tmp_159_fu_1962_p7;
wire   [5:0] tmp_159_fu_1962_p9;
wire   [5:0] tmp_159_fu_1962_p11;
wire   [5:0] tmp_159_fu_1962_p13;
wire   [5:0] tmp_159_fu_1962_p15;
wire   [5:0] tmp_159_fu_1962_p17;
wire   [5:0] tmp_159_fu_1962_p19;
wire   [5:0] tmp_159_fu_1962_p21;
wire   [5:0] tmp_159_fu_1962_p23;
wire   [5:0] tmp_159_fu_1962_p25;
wire   [5:0] tmp_159_fu_1962_p27;
wire   [5:0] tmp_159_fu_1962_p29;
wire   [5:0] tmp_159_fu_1962_p31;
wire  signed [5:0] tmp_159_fu_1962_p33;
wire  signed [5:0] tmp_159_fu_1962_p35;
wire  signed [5:0] tmp_159_fu_1962_p37;
wire  signed [5:0] tmp_159_fu_1962_p39;
wire  signed [5:0] tmp_159_fu_1962_p41;
wire  signed [5:0] tmp_159_fu_1962_p43;
wire  signed [5:0] tmp_159_fu_1962_p45;
wire  signed [5:0] tmp_159_fu_1962_p47;
wire  signed [5:0] tmp_159_fu_1962_p49;
wire  signed [5:0] tmp_159_fu_1962_p51;
wire  signed [5:0] tmp_159_fu_1962_p53;
wire  signed [5:0] tmp_159_fu_1962_p55;
wire  signed [5:0] tmp_159_fu_1962_p57;
wire  signed [5:0] tmp_159_fu_1962_p59;
wire  signed [5:0] tmp_159_fu_1962_p61;
wire  signed [5:0] tmp_159_fu_1962_p63;
wire   [5:0] tmp_s_fu_2364_p1;
wire   [5:0] tmp_s_fu_2364_p3;
wire   [5:0] tmp_s_fu_2364_p5;
wire   [5:0] tmp_s_fu_2364_p7;
wire   [5:0] tmp_s_fu_2364_p9;
wire   [5:0] tmp_s_fu_2364_p11;
wire   [5:0] tmp_s_fu_2364_p13;
wire   [5:0] tmp_s_fu_2364_p15;
wire   [5:0] tmp_s_fu_2364_p17;
wire   [5:0] tmp_s_fu_2364_p19;
wire   [5:0] tmp_s_fu_2364_p21;
wire   [5:0] tmp_s_fu_2364_p23;
wire   [5:0] tmp_s_fu_2364_p25;
wire   [5:0] tmp_s_fu_2364_p27;
wire   [5:0] tmp_s_fu_2364_p29;
wire   [5:0] tmp_s_fu_2364_p31;
wire  signed [5:0] tmp_s_fu_2364_p33;
wire  signed [5:0] tmp_s_fu_2364_p35;
wire  signed [5:0] tmp_s_fu_2364_p37;
wire  signed [5:0] tmp_s_fu_2364_p39;
wire  signed [5:0] tmp_s_fu_2364_p41;
wire  signed [5:0] tmp_s_fu_2364_p43;
wire  signed [5:0] tmp_s_fu_2364_p45;
wire  signed [5:0] tmp_s_fu_2364_p47;
wire  signed [5:0] tmp_s_fu_2364_p49;
wire  signed [5:0] tmp_s_fu_2364_p51;
wire  signed [5:0] tmp_s_fu_2364_p53;
wire  signed [5:0] tmp_s_fu_2364_p55;
wire  signed [5:0] tmp_s_fu_2364_p57;
wire  signed [5:0] tmp_s_fu_2364_p59;
wire  signed [5:0] tmp_s_fu_2364_p61;
wire  signed [5:0] tmp_s_fu_2364_p63;
wire   [5:0] tmp_158_fu_2499_p1;
wire   [5:0] tmp_158_fu_2499_p3;
wire   [5:0] tmp_158_fu_2499_p5;
wire   [5:0] tmp_158_fu_2499_p7;
wire   [5:0] tmp_158_fu_2499_p9;
wire   [5:0] tmp_158_fu_2499_p11;
wire   [5:0] tmp_158_fu_2499_p13;
wire   [5:0] tmp_158_fu_2499_p15;
wire   [5:0] tmp_158_fu_2499_p17;
wire   [5:0] tmp_158_fu_2499_p19;
wire   [5:0] tmp_158_fu_2499_p21;
wire   [5:0] tmp_158_fu_2499_p23;
wire   [5:0] tmp_158_fu_2499_p25;
wire   [5:0] tmp_158_fu_2499_p27;
wire   [5:0] tmp_158_fu_2499_p29;
wire   [5:0] tmp_158_fu_2499_p31;
wire  signed [5:0] tmp_158_fu_2499_p33;
wire  signed [5:0] tmp_158_fu_2499_p35;
wire  signed [5:0] tmp_158_fu_2499_p37;
wire  signed [5:0] tmp_158_fu_2499_p39;
wire  signed [5:0] tmp_158_fu_2499_p41;
wire  signed [5:0] tmp_158_fu_2499_p43;
wire  signed [5:0] tmp_158_fu_2499_p45;
wire  signed [5:0] tmp_158_fu_2499_p47;
wire  signed [5:0] tmp_158_fu_2499_p49;
wire  signed [5:0] tmp_158_fu_2499_p51;
wire  signed [5:0] tmp_158_fu_2499_p53;
wire  signed [5:0] tmp_158_fu_2499_p55;
wire  signed [5:0] tmp_158_fu_2499_p57;
wire  signed [5:0] tmp_158_fu_2499_p59;
wire  signed [5:0] tmp_158_fu_2499_p61;
wire  signed [5:0] tmp_158_fu_2499_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 add114_i77_fu_380 = 64'd0;
#0 i_fu_384 = 7'd0;
#0 j_fu_388 = 2'd0;
#0 activations3_fu_392 = 64'd0;
#0 activations3_1_fu_396 = 64'd0;
#0 activations3_2_fu_400 = 64'd0;
#0 indvar_flatten396_fu_404 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_x_U1468(.din0(activations2_load_2),.din1(activations2_2_load_2),.din2(activations2_4_load_2),.din3(activations2_6_load_2),.din4(activations2_8_load_2),.din5(activations2_10_load_2),.din6(activations2_12_load_2),.din7(activations2_14_load_2),.din8(activations2_16_load_2),.din9(activations2_18_load_2),.din10(activations2_20_load_2),.din11(activations2_22_load_2),.din12(activations2_24_load_2),.din13(activations2_26_load_2),.din14(activations2_28_load_2),.din15(activations2_30_load_2),.din16(activations2_32_load_2),.din17(activations2_34_load_2),.din18(activations2_36_load_2),.din19(activations2_38_load_2),.din20(activations2_40_load_2),.din21(activations2_42_load_2),.din22(activations2_44_load_2),.din23(activations2_46_load_2),.din24(activations2_48_load_2),.din25(activations2_50_load_2),.din26(activations2_52_load_2),.din27(activations2_54_load_2),.din28(activations2_56_load_2),.din29(activations2_58_load_2),.din30(activations2_60_load_2),.din31(activations2_62_load_2),.def(tmp_157_fu_1826_p65),.sel(trunc_ln57_fu_1822_p1),.dout(tmp_157_fu_1826_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_x_U1469(.din0(activations2_1_load_2),.din1(activations2_3_load_2),.din2(activations2_5_load_2),.din3(activations2_7_load_2),.din4(activations2_9_load_2),.din5(activations2_11_load_2),.din6(activations2_13_load_2),.din7(activations2_15_load_2),.din8(activations2_17_load_2),.din9(activations2_19_load_2),.din10(activations2_21_load_2),.din11(activations2_23_load_2),.din12(activations2_25_load_2),.din13(activations2_27_load_2),.din14(activations2_29_load_2),.din15(activations2_31_load_2),.din16(activations2_33_load_2),.din17(activations2_35_load_2),.din18(activations2_37_load_2),.din19(activations2_39_load_2),.din20(activations2_41_load_2),.din21(activations2_43_load_2),.din22(activations2_45_load_2),.din23(activations2_47_load_2),.din24(activations2_49_load_2),.din25(activations2_51_load_2),.din26(activations2_53_load_2),.din27(activations2_55_load_2),.din28(activations2_57_load_2),.din29(activations2_59_load_2),.din30(activations2_61_load_2),.din31(activations2_63_load_2),.def(tmp_159_fu_1962_p65),.sel(trunc_ln57_fu_1822_p1),.dout(tmp_159_fu_1962_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_x_U1470(.din0(tmp_s_fu_2364_p2),.din1(tmp_s_fu_2364_p4),.din2(tmp_s_fu_2364_p6),.din3(tmp_s_fu_2364_p8),.din4(tmp_s_fu_2364_p10),.din5(tmp_s_fu_2364_p12),.din6(tmp_s_fu_2364_p14),.din7(tmp_s_fu_2364_p16),.din8(tmp_s_fu_2364_p18),.din9(tmp_s_fu_2364_p20),.din10(tmp_s_fu_2364_p22),.din11(tmp_s_fu_2364_p24),.din12(tmp_s_fu_2364_p26),.din13(tmp_s_fu_2364_p28),.din14(tmp_s_fu_2364_p30),.din15(tmp_s_fu_2364_p32),.din16(tmp_s_fu_2364_p34),.din17(tmp_s_fu_2364_p36),.din18(tmp_s_fu_2364_p38),.din19(tmp_s_fu_2364_p40),.din20(tmp_s_fu_2364_p42),.din21(tmp_s_fu_2364_p44),.din22(tmp_s_fu_2364_p46),.din23(tmp_s_fu_2364_p48),.din24(tmp_s_fu_2364_p50),.din25(tmp_s_fu_2364_p52),.din26(tmp_s_fu_2364_p54),.din27(tmp_s_fu_2364_p56),.din28(tmp_s_fu_2364_p58),.din29(tmp_s_fu_2364_p60),.din30(tmp_s_fu_2364_p62),.din31(tmp_s_fu_2364_p64),.def(tmp_s_fu_2364_p65),.sel(trunc_ln57_reg_3169),.dout(tmp_s_fu_2364_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_x_U1471(.din0(tmp_158_fu_2499_p2),.din1(tmp_158_fu_2499_p4),.din2(tmp_158_fu_2499_p6),.din3(tmp_158_fu_2499_p8),.din4(tmp_158_fu_2499_p10),.din5(tmp_158_fu_2499_p12),.din6(tmp_158_fu_2499_p14),.din7(tmp_158_fu_2499_p16),.din8(tmp_158_fu_2499_p18),.din9(tmp_158_fu_2499_p20),.din10(tmp_158_fu_2499_p22),.din11(tmp_158_fu_2499_p24),.din12(tmp_158_fu_2499_p26),.din13(tmp_158_fu_2499_p28),.din14(tmp_158_fu_2499_p30),.din15(tmp_158_fu_2499_p32),.din16(tmp_158_fu_2499_p34),.din17(tmp_158_fu_2499_p36),.din18(tmp_158_fu_2499_p38),.din19(tmp_158_fu_2499_p40),.din20(tmp_158_fu_2499_p42),.din21(tmp_158_fu_2499_p44),.din22(tmp_158_fu_2499_p46),.din23(tmp_158_fu_2499_p48),.din24(tmp_158_fu_2499_p50),.din25(tmp_158_fu_2499_p52),.din26(tmp_158_fu_2499_p54),.din27(tmp_158_fu_2499_p56),.din28(tmp_158_fu_2499_p58),.din29(tmp_158_fu_2499_p60),.din30(tmp_158_fu_2499_p62),.din31(tmp_158_fu_2499_p64),.def(tmp_158_fu_2499_p65),.sel(trunc_ln57_reg_3169),.dout(tmp_158_fu_2499_p67));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
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
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_1_fu_396 <= activations3_load;
    end else if (((icmp_ln55_reg_2828 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        activations3_1_fu_396 <= select_ln55_1_fu_2673_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_2_fu_400 <= activations3_2_load;
    end else if (((icmp_ln55_reg_2828 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        activations3_2_fu_400 <= select_ln55_fu_2666_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_fu_392 <= activations3_1_load;
    end else if (((icmp_ln55_reg_2828 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        activations3_fu_392 <= select_ln55_2_fu_2680_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add114_i77_fu_380 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add114_i77_fu_380 <= grp_fu_26875_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_384 <= 7'd0;
    end else if (((icmp_ln55_reg_2828 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        i_fu_384 <= add_ln57_fu_2687_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln55_fu_1706_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten396_fu_404 <= add_ln55_fu_1712_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten396_fu_404 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln55_fu_1706_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_388 <= select_ln55_3_fu_1746_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_388 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_i1_reg_3214 <= grp_fu_26875_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln55_reg_2828 <= icmp_ln55_fu_1706_p2;
        select_ln54_reg_2840 <= select_ln54_fu_1732_p3;
        select_ln55_3_reg_2845 <= select_ln55_3_fu_1746_p3;
        select_ln55_3_reg_2845_pp0_iter1_reg <= select_ln55_3_reg_2845;
        tmp_157_reg_3175 <= tmp_157_fu_1826_p67;
        tmp_159_reg_3180 <= tmp_159_fu_1962_p67;
        tmp_reg_2832 <= ap_sig_allocacmp_i_load[32'd6];
        trunc_ln57_reg_3169 <= trunc_ln57_fu_1822_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_1_i1_reg_3205 <= grp_fu_26919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_i1_reg_3195 <= grp_fu_26919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_158_reg_3190 <= tmp_158_fu_2499_p67;
        tmp_s_reg_3185 <= tmp_s_fu_2364_p67;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        tmp_19_reg_3210 <= add_ln57_fu_2687_p2[32'd6];
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_10_out_o = 'bx;
    end else if ((((tmp_19_fu_2692_p3 == 1'd1) & (icmp_ln55_reg_2828 == 1'd0) & (select_ln55_3_reg_2845 == 2'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_19_fu_2692_p3 == 1'd1) & (icmp_ln55_reg_2828 == 1'd0) & (select_ln55_3_reg_2845 == 2'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        activations3_10_out_o = select_ln55_fu_2666_p3;
    end else if ((~(select_ln55_3_reg_2845_pp0_iter1_reg == 2'd1) & ~(select_ln55_3_reg_2845_pp0_iter1_reg == 2'd0) & (tmp_19_reg_3210 == 1'd1) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        activations3_10_out_o = grp_fu_26875_p_dout0;
    end else begin
        activations3_10_out_o = activations3_10_out_i;
    end
end
always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_19_fu_2692_p3 == 1'd1) & (icmp_ln55_reg_2828 == 1'd0) & (select_ln55_3_reg_2845 == 2'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_19_fu_2692_p3 == 1'd1) & (icmp_ln55_reg_2828 == 1'd0) & (select_ln55_3_reg_2845 == 2'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | (~(select_ln55_3_reg_2845_pp0_iter1_reg == 2'd1) & ~(select_ln55_3_reg_2845_pp0_iter1_reg == 2'd0) & (tmp_19_reg_3210 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        activations3_10_out_o_ap_vld = 1'b1;
    end else begin
        activations3_10_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_8_out_o = 'bx;
    end else if (((~(select_ln55_3_reg_2845 == 2'd0) & ~(select_ln55_3_reg_2845 == 2'd1) & (tmp_19_fu_2692_p3 == 1'd1) & (icmp_ln55_reg_2828 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_19_fu_2692_p3 == 1'd1) & (icmp_ln55_reg_2828 == 1'd0) & (select_ln55_3_reg_2845 == 2'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        activations3_8_out_o = select_ln55_2_fu_2680_p3;
    end else if (((tmp_19_reg_3210 == 1'd1) & (select_ln55_3_reg_2845_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        activations3_8_out_o = grp_fu_26875_p_dout0;
    end else begin
        activations3_8_out_o = activations3_8_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln55_3_reg_2845 == 2'd0) & ~(select_ln55_3_reg_2845 == 2'd1) & (tmp_19_fu_2692_p3 == 1'd1) & (icmp_ln55_reg_2828 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_19_fu_2692_p3 == 1'd1) & (icmp_ln55_reg_2828 == 1'd0) & (select_ln55_3_reg_2845 == 2'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_19_reg_3210 == 1'd1) & (select_ln55_3_reg_2845_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        activations3_8_out_o_ap_vld = 1'b1;
    end else begin
        activations3_8_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_9_out_o = 'bx;
    end else if (((~(select_ln55_3_reg_2845 == 2'd0) & ~(select_ln55_3_reg_2845 == 2'd1) & (tmp_19_fu_2692_p3 == 1'd1) & (icmp_ln55_reg_2828 == 1'd0) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_19_fu_2692_p3 == 1'd1) & (icmp_ln55_reg_2828 == 1'd0) & (select_ln55_3_reg_2845 == 2'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        activations3_9_out_o = select_ln55_1_fu_2673_p3;
    end else if (((tmp_19_reg_3210 == 1'd1) & (select_ln55_3_reg_2845_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        activations3_9_out_o = grp_fu_26875_p_dout0;
    end else begin
        activations3_9_out_o = activations3_9_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln55_3_reg_2845 == 2'd0) & ~(select_ln55_3_reg_2845 == 2'd1) & (tmp_19_fu_2692_p3 == 1'd1) & (icmp_ln55_reg_2828 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_19_fu_2692_p3 == 1'd1) & (icmp_ln55_reg_2828 == 1'd0) & (select_ln55_3_reg_2845 == 2'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_19_reg_3210 == 1'd1) & (select_ln55_3_reg_2845_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        activations3_9_out_o_ap_vld = 1'b1;
    end else begin
        activations3_9_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln55_reg_2828 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_384;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten396_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten396_load = indvar_flatten396_fu_404;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 2'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_388;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1642_p0 = add11_i1_reg_3214;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1642_p0 = select_ln54_1_fu_2637_p3;
    end else begin
        grp_fu_1642_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1642_p1 = mul8_1_i1_reg_3205;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1642_p1 = mul8_i1_reg_3195;
    end else begin
        grp_fu_1642_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1646_p0 = tmp_158_reg_3190;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1646_p0 = tmp_s_reg_3185;
        end else begin
            grp_fu_1646_p0 = 'bx;
        end
    end else begin
        grp_fu_1646_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1646_p1 = tmp_159_reg_3180;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1646_p1 = tmp_157_reg_3175;
        end else begin
            grp_fu_1646_p1 = 'bx;
        end
    end else begin
        grp_fu_1646_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_10_ce0_local = 1'b1;
    end else begin
        weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_11_ce0_local = 1'b1;
    end else begin
        weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_12_ce0_local = 1'b1;
    end else begin
        weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_13_ce0_local = 1'b1;
    end else begin
        weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_14_ce0_local = 1'b1;
    end else begin
        weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_15_ce0_local = 1'b1;
    end else begin
        weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_16_ce0_local = 1'b1;
    end else begin
        weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_17_ce0_local = 1'b1;
    end else begin
        weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_18_ce0_local = 1'b1;
    end else begin
        weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_19_ce0_local = 1'b1;
    end else begin
        weights3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_20_ce0_local = 1'b1;
    end else begin
        weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_21_ce0_local = 1'b1;
    end else begin
        weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_22_ce0_local = 1'b1;
    end else begin
        weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_23_ce0_local = 1'b1;
    end else begin
        weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_24_ce0_local = 1'b1;
    end else begin
        weights3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_25_ce0_local = 1'b1;
    end else begin
        weights3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_26_ce0_local = 1'b1;
    end else begin
        weights3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_27_ce0_local = 1'b1;
    end else begin
        weights3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_28_ce0_local = 1'b1;
    end else begin
        weights3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_29_ce0_local = 1'b1;
    end else begin
        weights3_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_30_ce0_local = 1'b1;
    end else begin
        weights3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_31_ce0_local = 1'b1;
    end else begin
        weights3_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_32_ce0_local = 1'b1;
    end else begin
        weights3_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_33_ce0_local = 1'b1;
    end else begin
        weights3_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_34_ce0_local = 1'b1;
    end else begin
        weights3_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_35_ce0_local = 1'b1;
    end else begin
        weights3_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_36_ce0_local = 1'b1;
    end else begin
        weights3_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_37_ce0_local = 1'b1;
    end else begin
        weights3_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_38_ce0_local = 1'b1;
    end else begin
        weights3_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_39_ce0_local = 1'b1;
    end else begin
        weights3_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_40_ce0_local = 1'b1;
    end else begin
        weights3_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_41_ce0_local = 1'b1;
    end else begin
        weights3_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_42_ce0_local = 1'b1;
    end else begin
        weights3_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_43_ce0_local = 1'b1;
    end else begin
        weights3_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_44_ce0_local = 1'b1;
    end else begin
        weights3_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_45_ce0_local = 1'b1;
    end else begin
        weights3_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_46_ce0_local = 1'b1;
    end else begin
        weights3_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_47_ce0_local = 1'b1;
    end else begin
        weights3_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_48_ce0_local = 1'b1;
    end else begin
        weights3_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_49_ce0_local = 1'b1;
    end else begin
        weights3_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_4_ce0_local = 1'b1;
    end else begin
        weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_50_ce0_local = 1'b1;
    end else begin
        weights3_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_51_ce0_local = 1'b1;
    end else begin
        weights3_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_52_ce0_local = 1'b1;
    end else begin
        weights3_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_53_ce0_local = 1'b1;
    end else begin
        weights3_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_54_ce0_local = 1'b1;
    end else begin
        weights3_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_55_ce0_local = 1'b1;
    end else begin
        weights3_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_56_ce0_local = 1'b1;
    end else begin
        weights3_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_57_ce0_local = 1'b1;
    end else begin
        weights3_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_58_ce0_local = 1'b1;
    end else begin
        weights3_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_59_ce0_local = 1'b1;
    end else begin
        weights3_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_5_ce0_local = 1'b1;
    end else begin
        weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_60_ce0_local = 1'b1;
    end else begin
        weights3_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_61_ce0_local = 1'b1;
    end else begin
        weights3_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_62_ce0_local = 1'b1;
    end else begin
        weights3_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_63_ce0_local = 1'b1;
    end else begin
        weights3_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_6_ce0_local = 1'b1;
    end else begin
        weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_7_ce0_local = 1'b1;
    end else begin
        weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_8_ce0_local = 1'b1;
    end else begin
        weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_9_ce0_local = 1'b1;
    end else begin
        weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln55_1_fu_1740_p2 = (ap_sig_allocacmp_j_load + 2'd1);
assign add_ln55_fu_1712_p2 = (ap_sig_allocacmp_indvar_flatten396_load + 7'd1);
assign add_ln57_fu_2687_p2 = (select_ln54_reg_2840 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign grp_fu_26875_p_ce = 1'b1;
assign grp_fu_26875_p_din0 = grp_fu_1642_p0;
assign grp_fu_26875_p_din1 = grp_fu_1642_p1;
assign grp_fu_26875_p_opcode = 2'd0;
assign grp_fu_26919_p_ce = 1'b1;
assign grp_fu_26919_p_din0 = grp_fu_1646_p0;
assign grp_fu_26919_p_din1 = grp_fu_1646_p1;
assign icmp_ln55_fu_1706_p2 = ((ap_sig_allocacmp_indvar_flatten396_load == 7'd96) ? 1'b1 : 1'b0);
assign select_ln54_1_fu_2637_p3 = ((tmp_reg_2832[0:0] == 1'b1) ? 64'd0 : add114_i77_fu_380);
assign select_ln54_fu_1732_p3 = ((tmp_fu_1724_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_i_load);
assign select_ln55_1_fu_2673_p3 = ((tmp_reg_2832[0:0] == 1'b1) ? activations3_9_out_i : activations3_1_fu_396);
assign select_ln55_2_fu_2680_p3 = ((tmp_reg_2832[0:0] == 1'b1) ? activations3_8_out_i : activations3_fu_392);
assign select_ln55_3_fu_1746_p3 = ((tmp_fu_1724_p3[0:0] == 1'b1) ? add_ln55_1_fu_1740_p2 : ap_sig_allocacmp_j_load);
assign select_ln55_fu_2666_p3 = ((tmp_reg_2832[0:0] == 1'b1) ? activations3_10_out_i : activations3_2_fu_400);
assign tmp_157_fu_1826_p65 = 'bx;
assign tmp_158_fu_2499_p10 = weights3_9_q0;
assign tmp_158_fu_2499_p12 = weights3_11_q0;
assign tmp_158_fu_2499_p14 = weights3_13_q0;
assign tmp_158_fu_2499_p16 = weights3_15_q0;
assign tmp_158_fu_2499_p18 = weights3_17_q0;
assign tmp_158_fu_2499_p2 = weights3_1_q0;
assign tmp_158_fu_2499_p20 = weights3_19_q0;
assign tmp_158_fu_2499_p22 = weights3_21_q0;
assign tmp_158_fu_2499_p24 = weights3_23_q0;
assign tmp_158_fu_2499_p26 = weights3_25_q0;
assign tmp_158_fu_2499_p28 = weights3_27_q0;
assign tmp_158_fu_2499_p30 = weights3_29_q0;
assign tmp_158_fu_2499_p32 = weights3_31_q0;
assign tmp_158_fu_2499_p34 = weights3_33_q0;
assign tmp_158_fu_2499_p36 = weights3_35_q0;
assign tmp_158_fu_2499_p38 = weights3_37_q0;
assign tmp_158_fu_2499_p4 = weights3_3_q0;
assign tmp_158_fu_2499_p40 = weights3_39_q0;
assign tmp_158_fu_2499_p42 = weights3_41_q0;
assign tmp_158_fu_2499_p44 = weights3_43_q0;
assign tmp_158_fu_2499_p46 = weights3_45_q0;
assign tmp_158_fu_2499_p48 = weights3_47_q0;
assign tmp_158_fu_2499_p50 = weights3_49_q0;
assign tmp_158_fu_2499_p52 = weights3_51_q0;
assign tmp_158_fu_2499_p54 = weights3_53_q0;
assign tmp_158_fu_2499_p56 = weights3_55_q0;
assign tmp_158_fu_2499_p58 = weights3_57_q0;
assign tmp_158_fu_2499_p6 = weights3_5_q0;
assign tmp_158_fu_2499_p60 = weights3_59_q0;
assign tmp_158_fu_2499_p62 = weights3_61_q0;
assign tmp_158_fu_2499_p64 = weights3_63_q0;
assign tmp_158_fu_2499_p65 = 'bx;
assign tmp_158_fu_2499_p8 = weights3_7_q0;
assign tmp_159_fu_1962_p65 = 'bx;
assign tmp_19_fu_2692_p3 = add_ln57_fu_2687_p2[32'd6];
assign tmp_fu_1724_p3 = ap_sig_allocacmp_i_load[32'd6];
assign tmp_s_fu_2364_p10 = weights3_8_q0;
assign tmp_s_fu_2364_p12 = weights3_10_q0;
assign tmp_s_fu_2364_p14 = weights3_12_q0;
assign tmp_s_fu_2364_p16 = weights3_14_q0;
assign tmp_s_fu_2364_p18 = weights3_16_q0;
assign tmp_s_fu_2364_p2 = weights3_0_q0;
assign tmp_s_fu_2364_p20 = weights3_18_q0;
assign tmp_s_fu_2364_p22 = weights3_20_q0;
assign tmp_s_fu_2364_p24 = weights3_22_q0;
assign tmp_s_fu_2364_p26 = weights3_24_q0;
assign tmp_s_fu_2364_p28 = weights3_26_q0;
assign tmp_s_fu_2364_p30 = weights3_28_q0;
assign tmp_s_fu_2364_p32 = weights3_30_q0;
assign tmp_s_fu_2364_p34 = weights3_32_q0;
assign tmp_s_fu_2364_p36 = weights3_34_q0;
assign tmp_s_fu_2364_p38 = weights3_36_q0;
assign tmp_s_fu_2364_p4 = weights3_2_q0;
assign tmp_s_fu_2364_p40 = weights3_38_q0;
assign tmp_s_fu_2364_p42 = weights3_40_q0;
assign tmp_s_fu_2364_p44 = weights3_42_q0;
assign tmp_s_fu_2364_p46 = weights3_44_q0;
assign tmp_s_fu_2364_p48 = weights3_46_q0;
assign tmp_s_fu_2364_p50 = weights3_48_q0;
assign tmp_s_fu_2364_p52 = weights3_50_q0;
assign tmp_s_fu_2364_p54 = weights3_52_q0;
assign tmp_s_fu_2364_p56 = weights3_54_q0;
assign tmp_s_fu_2364_p58 = weights3_56_q0;
assign tmp_s_fu_2364_p6 = weights3_4_q0;
assign tmp_s_fu_2364_p60 = weights3_58_q0;
assign tmp_s_fu_2364_p62 = weights3_60_q0;
assign tmp_s_fu_2364_p64 = weights3_62_q0;
assign tmp_s_fu_2364_p65 = 'bx;
assign tmp_s_fu_2364_p8 = weights3_6_q0;
assign trunc_ln57_fu_1822_p1 = select_ln54_fu_1732_p3[5:0];
assign weights3_0_address0 = zext_ln55_fu_1754_p1;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_10_address0 = zext_ln55_fu_1754_p1;
assign weights3_10_ce0 = weights3_10_ce0_local;
assign weights3_11_address0 = zext_ln55_fu_1754_p1;
assign weights3_11_ce0 = weights3_11_ce0_local;
assign weights3_12_address0 = zext_ln55_fu_1754_p1;
assign weights3_12_ce0 = weights3_12_ce0_local;
assign weights3_13_address0 = zext_ln55_fu_1754_p1;
assign weights3_13_ce0 = weights3_13_ce0_local;
assign weights3_14_address0 = zext_ln55_fu_1754_p1;
assign weights3_14_ce0 = weights3_14_ce0_local;
assign weights3_15_address0 = zext_ln55_fu_1754_p1;
assign weights3_15_ce0 = weights3_15_ce0_local;
assign weights3_16_address0 = zext_ln55_fu_1754_p1;
assign weights3_16_ce0 = weights3_16_ce0_local;
assign weights3_17_address0 = zext_ln55_fu_1754_p1;
assign weights3_17_ce0 = weights3_17_ce0_local;
assign weights3_18_address0 = zext_ln55_fu_1754_p1;
assign weights3_18_ce0 = weights3_18_ce0_local;
assign weights3_19_address0 = zext_ln55_fu_1754_p1;
assign weights3_19_ce0 = weights3_19_ce0_local;
assign weights3_1_address0 = zext_ln55_fu_1754_p1;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_20_address0 = zext_ln55_fu_1754_p1;
assign weights3_20_ce0 = weights3_20_ce0_local;
assign weights3_21_address0 = zext_ln55_fu_1754_p1;
assign weights3_21_ce0 = weights3_21_ce0_local;
assign weights3_22_address0 = zext_ln55_fu_1754_p1;
assign weights3_22_ce0 = weights3_22_ce0_local;
assign weights3_23_address0 = zext_ln55_fu_1754_p1;
assign weights3_23_ce0 = weights3_23_ce0_local;
assign weights3_24_address0 = zext_ln55_fu_1754_p1;
assign weights3_24_ce0 = weights3_24_ce0_local;
assign weights3_25_address0 = zext_ln55_fu_1754_p1;
assign weights3_25_ce0 = weights3_25_ce0_local;
assign weights3_26_address0 = zext_ln55_fu_1754_p1;
assign weights3_26_ce0 = weights3_26_ce0_local;
assign weights3_27_address0 = zext_ln55_fu_1754_p1;
assign weights3_27_ce0 = weights3_27_ce0_local;
assign weights3_28_address0 = zext_ln55_fu_1754_p1;
assign weights3_28_ce0 = weights3_28_ce0_local;
assign weights3_29_address0 = zext_ln55_fu_1754_p1;
assign weights3_29_ce0 = weights3_29_ce0_local;
assign weights3_2_address0 = zext_ln55_fu_1754_p1;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_30_address0 = zext_ln55_fu_1754_p1;
assign weights3_30_ce0 = weights3_30_ce0_local;
assign weights3_31_address0 = zext_ln55_fu_1754_p1;
assign weights3_31_ce0 = weights3_31_ce0_local;
assign weights3_32_address0 = zext_ln55_fu_1754_p1;
assign weights3_32_ce0 = weights3_32_ce0_local;
assign weights3_33_address0 = zext_ln55_fu_1754_p1;
assign weights3_33_ce0 = weights3_33_ce0_local;
assign weights3_34_address0 = zext_ln55_fu_1754_p1;
assign weights3_34_ce0 = weights3_34_ce0_local;
assign weights3_35_address0 = zext_ln55_fu_1754_p1;
assign weights3_35_ce0 = weights3_35_ce0_local;
assign weights3_36_address0 = zext_ln55_fu_1754_p1;
assign weights3_36_ce0 = weights3_36_ce0_local;
assign weights3_37_address0 = zext_ln55_fu_1754_p1;
assign weights3_37_ce0 = weights3_37_ce0_local;
assign weights3_38_address0 = zext_ln55_fu_1754_p1;
assign weights3_38_ce0 = weights3_38_ce0_local;
assign weights3_39_address0 = zext_ln55_fu_1754_p1;
assign weights3_39_ce0 = weights3_39_ce0_local;
assign weights3_3_address0 = zext_ln55_fu_1754_p1;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_40_address0 = zext_ln55_fu_1754_p1;
assign weights3_40_ce0 = weights3_40_ce0_local;
assign weights3_41_address0 = zext_ln55_fu_1754_p1;
assign weights3_41_ce0 = weights3_41_ce0_local;
assign weights3_42_address0 = zext_ln55_fu_1754_p1;
assign weights3_42_ce0 = weights3_42_ce0_local;
assign weights3_43_address0 = zext_ln55_fu_1754_p1;
assign weights3_43_ce0 = weights3_43_ce0_local;
assign weights3_44_address0 = zext_ln55_fu_1754_p1;
assign weights3_44_ce0 = weights3_44_ce0_local;
assign weights3_45_address0 = zext_ln55_fu_1754_p1;
assign weights3_45_ce0 = weights3_45_ce0_local;
assign weights3_46_address0 = zext_ln55_fu_1754_p1;
assign weights3_46_ce0 = weights3_46_ce0_local;
assign weights3_47_address0 = zext_ln55_fu_1754_p1;
assign weights3_47_ce0 = weights3_47_ce0_local;
assign weights3_48_address0 = zext_ln55_fu_1754_p1;
assign weights3_48_ce0 = weights3_48_ce0_local;
assign weights3_49_address0 = zext_ln55_fu_1754_p1;
assign weights3_49_ce0 = weights3_49_ce0_local;
assign weights3_4_address0 = zext_ln55_fu_1754_p1;
assign weights3_4_ce0 = weights3_4_ce0_local;
assign weights3_50_address0 = zext_ln55_fu_1754_p1;
assign weights3_50_ce0 = weights3_50_ce0_local;
assign weights3_51_address0 = zext_ln55_fu_1754_p1;
assign weights3_51_ce0 = weights3_51_ce0_local;
assign weights3_52_address0 = zext_ln55_fu_1754_p1;
assign weights3_52_ce0 = weights3_52_ce0_local;
assign weights3_53_address0 = zext_ln55_fu_1754_p1;
assign weights3_53_ce0 = weights3_53_ce0_local;
assign weights3_54_address0 = zext_ln55_fu_1754_p1;
assign weights3_54_ce0 = weights3_54_ce0_local;
assign weights3_55_address0 = zext_ln55_fu_1754_p1;
assign weights3_55_ce0 = weights3_55_ce0_local;
assign weights3_56_address0 = zext_ln55_fu_1754_p1;
assign weights3_56_ce0 = weights3_56_ce0_local;
assign weights3_57_address0 = zext_ln55_fu_1754_p1;
assign weights3_57_ce0 = weights3_57_ce0_local;
assign weights3_58_address0 = zext_ln55_fu_1754_p1;
assign weights3_58_ce0 = weights3_58_ce0_local;
assign weights3_59_address0 = zext_ln55_fu_1754_p1;
assign weights3_59_ce0 = weights3_59_ce0_local;
assign weights3_5_address0 = zext_ln55_fu_1754_p1;
assign weights3_5_ce0 = weights3_5_ce0_local;
assign weights3_60_address0 = zext_ln55_fu_1754_p1;
assign weights3_60_ce0 = weights3_60_ce0_local;
assign weights3_61_address0 = zext_ln55_fu_1754_p1;
assign weights3_61_ce0 = weights3_61_ce0_local;
assign weights3_62_address0 = zext_ln55_fu_1754_p1;
assign weights3_62_ce0 = weights3_62_ce0_local;
assign weights3_63_address0 = zext_ln55_fu_1754_p1;
assign weights3_63_ce0 = weights3_63_ce0_local;
assign weights3_6_address0 = zext_ln55_fu_1754_p1;
assign weights3_6_ce0 = weights3_6_ce0_local;
assign weights3_7_address0 = zext_ln55_fu_1754_p1;
assign weights3_7_ce0 = weights3_7_ce0_local;
assign weights3_8_address0 = zext_ln55_fu_1754_p1;
assign weights3_8_ce0 = weights3_8_ce0_local;
assign weights3_9_address0 = zext_ln55_fu_1754_p1;
assign weights3_9_ce0 = weights3_9_ce0_local;
assign zext_ln55_fu_1754_p1 = select_ln55_3_fu_1746_p3;
endmodule 
