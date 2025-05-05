module spmv (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,val_0_address0,val_0_ce0,val_0_q0,val_0_address1,val_0_ce1,val_0_q1,val_1_address0,val_1_ce0,val_1_q0,val_1_address1,val_1_ce1,val_1_q1,cols_address0,cols_ce0,cols_q0,cols_address1,cols_ce1,cols_q1,rowDelimiters_0_address0,rowDelimiters_0_ce0,rowDelimiters_0_q0,rowDelimiters_0_address1,rowDelimiters_0_ce1,rowDelimiters_0_q1,rowDelimiters_1_address0,rowDelimiters_1_ce0,rowDelimiters_1_q0,rowDelimiters_1_address1,rowDelimiters_1_ce1,rowDelimiters_1_q1,vec_0_address0,vec_0_ce0,vec_0_q0,vec_0_address1,vec_0_ce1,vec_0_q1,vec_1_address0,vec_1_ce0,vec_1_q0,vec_1_address1,vec_1_ce1,vec_1_q1,out_0_address0,out_0_ce0,out_0_we0,out_0_d0,out_1_address0,out_1_ce0,out_1_we0,out_1_d0); 
parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] val_0_address0;
output   val_0_ce0;
input  [63:0] val_0_q0;
output  [9:0] val_0_address1;
output   val_0_ce1;
input  [63:0] val_0_q1;
output  [9:0] val_1_address0;
output   val_1_ce0;
input  [63:0] val_1_q0;
output  [9:0] val_1_address1;
output   val_1_ce1;
input  [63:0] val_1_q1;
output  [10:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [10:0] cols_address1;
output   cols_ce1;
input  [31:0] cols_q1;
output  [7:0] rowDelimiters_0_address0;
output   rowDelimiters_0_ce0;
input  [31:0] rowDelimiters_0_q0;
output  [7:0] rowDelimiters_0_address1;
output   rowDelimiters_0_ce1;
input  [31:0] rowDelimiters_0_q1;
output  [7:0] rowDelimiters_1_address0;
output   rowDelimiters_1_ce0;
input  [31:0] rowDelimiters_1_q0;
output  [7:0] rowDelimiters_1_address1;
output   rowDelimiters_1_ce1;
input  [31:0] rowDelimiters_1_q1;
output  [7:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [7:0] vec_0_address1;
output   vec_0_ce1;
input  [63:0] vec_0_q1;
output  [7:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [7:0] vec_1_address1;
output   vec_1_ce1;
input  [63:0] vec_1_q1;
output  [7:0] out_0_address0;
output   out_0_ce0;
output   out_0_we0;
output  [63:0] out_0_d0;
output  [7:0] out_1_address0;
output   out_1_ce0;
output   out_1_we0;
output  [63:0] out_1_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] add_ln15_fu_393_p2;
reg   [8:0] add_ln15_reg_1154;
wire    ap_CS_fsm_state2;
wire   [0:0] trunc_ln12_fu_399_p1;
reg   [0:0] trunc_ln12_reg_1159;
wire   [63:0] zext_ln9_fu_413_p1;
reg   [63:0] zext_ln9_reg_1165;
wire   [31:0] tmp_begin_fu_435_p3;
reg   [31:0] tmp_begin_reg_1191;
wire    ap_CS_fsm_state3;
wire   [31:0] tmp_end_fu_443_p3;
reg   [31:0] tmp_end_reg_1196;
wire   [4:0] grp_spmv_Pipeline_spmv_2_fu_330_ap_return;
reg   [4:0] targetBlock_reg_1202;
wire    ap_CS_fsm_state4;
wire   [0:0] empty_fu_452_p2;
reg   [0:0] empty_reg_1233;
wire   [0:0] empty_14_fu_458_p2;
reg   [0:0] empty_14_reg_1238;
wire   [0:0] empty_16_fu_464_p2;
reg   [0:0] empty_16_reg_1243;
wire   [0:0] empty_18_fu_470_p2;
reg   [0:0] empty_18_reg_1248;
wire   [63:0] empty_39_fu_671_p3;
reg   [63:0] empty_39_reg_1253;
wire    ap_CS_fsm_state5;
wire   [0:0] empty_40_fu_679_p2;
reg   [0:0] empty_40_reg_1258;
wire   [0:0] empty_42_fu_684_p2;
reg   [0:0] empty_42_reg_1263;
wire   [0:0] empty_44_fu_689_p2;
reg   [0:0] empty_44_reg_1268;
wire   [0:0] empty_46_fu_694_p2;
reg   [0:0] empty_46_reg_1273;
wire   [63:0] empty_67_fu_890_p3;
reg   [63:0] empty_67_reg_1278;
wire    ap_CS_fsm_state6;
wire   [0:0] empty_68_fu_898_p2;
reg   [0:0] empty_68_reg_1283;
wire   [0:0] empty_70_fu_903_p2;
reg   [0:0] empty_70_reg_1288;
wire   [0:0] empty_72_fu_908_p2;
reg   [0:0] empty_72_reg_1293;
wire    grp_spmv_Pipeline_spmv_2_fu_330_ap_start;
wire    grp_spmv_Pipeline_spmv_2_fu_330_ap_done;
wire    grp_spmv_Pipeline_spmv_2_fu_330_ap_idle;
wire    grp_spmv_Pipeline_spmv_2_fu_330_ap_ready;
wire   [9:0] grp_spmv_Pipeline_spmv_2_fu_330_val_0_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_330_val_0_ce0;
wire   [9:0] grp_spmv_Pipeline_spmv_2_fu_330_val_0_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_330_val_0_ce1;
wire   [9:0] grp_spmv_Pipeline_spmv_2_fu_330_val_1_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_330_val_1_ce0;
wire   [9:0] grp_spmv_Pipeline_spmv_2_fu_330_val_1_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_330_val_1_ce1;
wire   [10:0] grp_spmv_Pipeline_spmv_2_fu_330_cols_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_330_cols_ce0;
wire   [10:0] grp_spmv_Pipeline_spmv_2_fu_330_cols_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_330_cols_ce1;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_330_vec_0_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_330_vec_0_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_330_vec_0_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_330_vec_0_ce1;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_330_vec_1_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_330_vec_1_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_330_vec_1_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_330_vec_1_ce1;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_31_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_31_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_30_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_30_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_29_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_29_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_28_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_28_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_27_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_27_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_26_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_26_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_25_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_25_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_24_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_24_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_23_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_23_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_22_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_22_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_21_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_21_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_20_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_20_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_19_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_19_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_18_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_18_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_17_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_17_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_16_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_16_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_15_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_15_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_14_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_14_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_13_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_13_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_12_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_12_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_11_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_11_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_10_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_10_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_9_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_9_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_8_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_8_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_7_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_7_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_6_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_6_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_5_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_5_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_4_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_4_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_3_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_3_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_2_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_2_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_330_sum_1_out;
wire    grp_spmv_Pipeline_spmv_2_fu_330_sum_1_out_ap_vld;
reg    grp_spmv_Pipeline_spmv_2_fu_330_ap_start_reg;
reg   [63:0] sum_loc_fu_250;
reg   [63:0] sum_31_loc_fu_246;
reg   [63:0] sum_30_loc_fu_242;
reg   [63:0] sum_29_loc_fu_238;
reg   [63:0] sum_28_loc_fu_234;
reg   [63:0] sum_27_loc_fu_230;
reg   [63:0] sum_26_loc_fu_226;
reg   [63:0] sum_25_loc_fu_222;
reg   [63:0] sum_24_loc_fu_218;
reg   [63:0] sum_23_loc_fu_214;
reg   [63:0] sum_22_loc_fu_210;
reg   [63:0] sum_21_loc_fu_206;
reg   [63:0] sum_20_loc_fu_202;
reg   [63:0] sum_19_loc_fu_198;
reg   [63:0] sum_18_loc_fu_194;
reg   [63:0] sum_17_loc_fu_190;
reg   [63:0] sum_16_loc_fu_186;
reg   [63:0] sum_15_loc_fu_182;
reg   [63:0] sum_14_loc_fu_178;
reg   [63:0] sum_13_loc_fu_174;
reg   [63:0] sum_12_loc_fu_170;
reg   [63:0] sum_11_loc_fu_166;
reg   [63:0] sum_10_loc_fu_162;
reg   [63:0] sum_9_loc_fu_158;
reg   [63:0] sum_8_loc_fu_154;
reg   [63:0] sum_7_loc_fu_150;
reg   [63:0] sum_6_loc_fu_146;
reg   [63:0] sum_5_loc_fu_142;
reg   [63:0] sum_4_loc_fu_138;
reg   [63:0] sum_3_loc_fu_134;
reg   [63:0] sum_2_loc_fu_130;
reg   [63:0] sum_1_loc_fu_126;
wire   [0:0] icmp_ln12_fu_387_p2;
wire   [63:0] zext_ln15_fu_429_p1;
wire    ap_CS_fsm_state7;
reg   [8:0] i_fu_122;
reg    rowDelimiters_0_ce1_local;
reg    rowDelimiters_0_ce0_local;
reg    rowDelimiters_1_ce1_local;
reg    rowDelimiters_1_ce0_local;
reg    out_0_we0_local;
wire   [63:0] bitcast_ln20_fu_942_p1;
reg    out_0_ce0_local;
reg    out_1_we0_local;
reg    out_1_ce0_local;
wire   [7:0] lshr_ln9_fu_403_p4;
wire   [7:0] lshr_ln_fu_419_p4;
wire   [63:0] empty_13_fu_521_p3;
wire   [63:0] empty_15_fu_528_p3;
wire   [63:0] empty_17_fu_535_p3;
wire   [0:0] empty_20_fu_549_p2;
wire   [63:0] empty_19_fu_542_p3;
wire   [0:0] empty_22_fu_562_p2;
wire   [63:0] empty_21_fu_554_p3;
wire   [0:0] empty_24_fu_575_p2;
wire   [63:0] empty_23_fu_567_p3;
wire   [0:0] empty_26_fu_588_p2;
wire   [63:0] empty_25_fu_580_p3;
wire   [0:0] empty_28_fu_601_p2;
wire   [63:0] empty_27_fu_593_p3;
wire   [0:0] empty_30_fu_614_p2;
wire   [63:0] empty_29_fu_606_p3;
wire   [0:0] empty_32_fu_627_p2;
wire   [63:0] empty_31_fu_619_p3;
wire   [0:0] empty_34_fu_640_p2;
wire   [63:0] empty_33_fu_632_p3;
wire   [0:0] empty_36_fu_653_p2;
wire   [63:0] empty_35_fu_645_p3;
wire   [0:0] empty_38_fu_666_p2;
wire   [63:0] empty_37_fu_658_p3;
wire   [63:0] empty_41_fu_741_p3;
wire   [63:0] empty_43_fu_747_p3;
wire   [63:0] empty_45_fu_754_p3;
wire   [0:0] empty_48_fu_768_p2;
wire   [63:0] empty_47_fu_761_p3;
wire   [0:0] empty_50_fu_781_p2;
wire   [63:0] empty_49_fu_773_p3;
wire   [0:0] empty_52_fu_794_p2;
wire   [63:0] empty_51_fu_786_p3;
wire   [0:0] empty_54_fu_807_p2;
wire   [63:0] empty_53_fu_799_p3;
wire   [0:0] empty_56_fu_820_p2;
wire   [63:0] empty_55_fu_812_p3;
wire   [0:0] empty_58_fu_833_p2;
wire   [63:0] empty_57_fu_825_p3;
wire   [0:0] empty_60_fu_846_p2;
wire   [63:0] empty_59_fu_838_p3;
wire   [0:0] empty_62_fu_859_p2;
wire   [63:0] empty_61_fu_851_p3;
wire   [0:0] empty_64_fu_872_p2;
wire   [63:0] empty_63_fu_864_p3;
wire   [0:0] empty_66_fu_885_p2;
wire   [63:0] empty_65_fu_877_p3;
wire   [63:0] empty_69_fu_922_p3;
wire   [63:0] empty_71_fu_928_p3;
wire   [63:0] sum_0_lcssa_ph_fu_935_p3;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_spmv_Pipeline_spmv_2_fu_330_ap_start_reg = 1'b0;
#0 i_fu_122 = 9'd0;
end
spmv_spmv_Pipeline_spmv_2 grp_spmv_Pipeline_spmv_2_fu_330(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_spmv_Pipeline_spmv_2_fu_330_ap_start),.ap_done(grp_spmv_Pipeline_spmv_2_fu_330_ap_done),.ap_idle(grp_spmv_Pipeline_spmv_2_fu_330_ap_idle),.ap_ready(grp_spmv_Pipeline_spmv_2_fu_330_ap_ready),.sext_ln16(tmp_begin_reg_1191),.sext_ln16_1(tmp_end_reg_1196),.val_0_address0(grp_spmv_Pipeline_spmv_2_fu_330_val_0_address0),.val_0_ce0(grp_spmv_Pipeline_spmv_2_fu_330_val_0_ce0),.val_0_q0(val_0_q0),.val_0_address1(grp_spmv_Pipeline_spmv_2_fu_330_val_0_address1),.val_0_ce1(grp_spmv_Pipeline_spmv_2_fu_330_val_0_ce1),.val_0_q1(val_0_q1),.val_1_address0(grp_spmv_Pipeline_spmv_2_fu_330_val_1_address0),.val_1_ce0(grp_spmv_Pipeline_spmv_2_fu_330_val_1_ce0),.val_1_q0(val_1_q0),.val_1_address1(grp_spmv_Pipeline_spmv_2_fu_330_val_1_address1),.val_1_ce1(grp_spmv_Pipeline_spmv_2_fu_330_val_1_ce1),.val_1_q1(val_1_q1),.cols_address0(grp_spmv_Pipeline_spmv_2_fu_330_cols_address0),.cols_ce0(grp_spmv_Pipeline_spmv_2_fu_330_cols_ce0),.cols_q0(cols_q0),.cols_address1(grp_spmv_Pipeline_spmv_2_fu_330_cols_address1),.cols_ce1(grp_spmv_Pipeline_spmv_2_fu_330_cols_ce1),.cols_q1(cols_q1),.vec_0_address0(grp_spmv_Pipeline_spmv_2_fu_330_vec_0_address0),.vec_0_ce0(grp_spmv_Pipeline_spmv_2_fu_330_vec_0_ce0),.vec_0_q0(vec_0_q0),.vec_0_address1(grp_spmv_Pipeline_spmv_2_fu_330_vec_0_address1),.vec_0_ce1(grp_spmv_Pipeline_spmv_2_fu_330_vec_0_ce1),.vec_0_q1(vec_0_q1),.vec_1_address0(grp_spmv_Pipeline_spmv_2_fu_330_vec_1_address0),.vec_1_ce0(grp_spmv_Pipeline_spmv_2_fu_330_vec_1_ce0),.vec_1_q0(vec_1_q0),.vec_1_address1(grp_spmv_Pipeline_spmv_2_fu_330_vec_1_address1),.vec_1_ce1(grp_spmv_Pipeline_spmv_2_fu_330_vec_1_ce1),.vec_1_q1(vec_1_q1),.tmp_end(tmp_end_reg_1196),.sum_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_out),.sum_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_out_ap_vld),.sum_31_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_31_out),.sum_31_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_31_out_ap_vld),.sum_30_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_30_out),.sum_30_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_30_out_ap_vld),.sum_29_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_29_out),.sum_29_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_29_out_ap_vld),.sum_28_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_28_out),.sum_28_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_28_out_ap_vld),.sum_27_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_27_out),.sum_27_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_27_out_ap_vld),.sum_26_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_26_out),.sum_26_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_26_out_ap_vld),.sum_25_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_25_out),.sum_25_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_25_out_ap_vld),.sum_24_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_24_out),.sum_24_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_24_out_ap_vld),.sum_23_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_23_out),.sum_23_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_23_out_ap_vld),.sum_22_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_22_out),.sum_22_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_22_out_ap_vld),.sum_21_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_21_out),.sum_21_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_21_out_ap_vld),.sum_20_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_20_out),.sum_20_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_20_out_ap_vld),.sum_19_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_19_out),.sum_19_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_19_out_ap_vld),.sum_18_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_18_out),.sum_18_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_18_out_ap_vld),.sum_17_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_17_out),.sum_17_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_17_out_ap_vld),.sum_16_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_16_out),.sum_16_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_16_out_ap_vld),.sum_15_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_15_out),.sum_15_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_15_out_ap_vld),.sum_14_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_14_out),.sum_14_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_14_out_ap_vld),.sum_13_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_13_out),.sum_13_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_13_out_ap_vld),.sum_12_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_12_out),.sum_12_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_12_out_ap_vld),.sum_11_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_11_out),.sum_11_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_11_out_ap_vld),.sum_10_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_10_out),.sum_10_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_10_out_ap_vld),.sum_9_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_9_out),.sum_9_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_9_out_ap_vld),.sum_8_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_8_out),.sum_8_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_8_out_ap_vld),.sum_7_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_7_out),.sum_7_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_7_out_ap_vld),.sum_6_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_6_out),.sum_6_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_6_out_ap_vld),.sum_5_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_5_out),.sum_5_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_5_out_ap_vld),.sum_4_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_4_out),.sum_4_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_4_out_ap_vld),.sum_3_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_3_out),.sum_3_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_3_out_ap_vld),.sum_2_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_2_out),.sum_2_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_2_out_ap_vld),.sum_1_out(grp_spmv_Pipeline_spmv_2_fu_330_sum_1_out),.sum_1_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_330_sum_1_out_ap_vld),.ap_return(grp_spmv_Pipeline_spmv_2_fu_330_ap_return));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_spmv_Pipeline_spmv_2_fu_330_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_spmv_Pipeline_spmv_2_fu_330_ap_start_reg <= 1'b1;
        end else if ((grp_spmv_Pipeline_spmv_2_fu_330_ap_ready == 1'b1)) begin
            grp_spmv_Pipeline_spmv_2_fu_330_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_122 <= 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        i_fu_122 <= add_ln15_reg_1154;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln15_reg_1154 <= add_ln15_fu_393_p2;
        trunc_ln12_reg_1159 <= trunc_ln12_fu_399_p1;
        zext_ln9_reg_1165[7 : 0] <= zext_ln9_fu_413_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_14_reg_1238 <= empty_14_fu_458_p2;
        empty_16_reg_1243 <= empty_16_fu_464_p2;
        empty_18_reg_1248 <= empty_18_fu_470_p2;
        empty_reg_1233 <= empty_fu_452_p2;
        targetBlock_reg_1202 <= grp_spmv_Pipeline_spmv_2_fu_330_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_39_reg_1253 <= empty_39_fu_671_p3;
        empty_40_reg_1258 <= empty_40_fu_679_p2;
        empty_42_reg_1263 <= empty_42_fu_684_p2;
        empty_44_reg_1268 <= empty_44_fu_689_p2;
        empty_46_reg_1273 <= empty_46_fu_694_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_67_reg_1278 <= empty_67_fu_890_p3;
        empty_68_reg_1283 <= empty_68_fu_898_p2;
        empty_70_reg_1288 <= empty_70_fu_903_p2;
        empty_72_reg_1293 <= empty_72_fu_908_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_10_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_10_loc_fu_162 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_10_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_11_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_11_loc_fu_166 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_11_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_12_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_12_loc_fu_170 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_12_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_13_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_13_loc_fu_174 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_13_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_14_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_14_loc_fu_178 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_14_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_15_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_15_loc_fu_182 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_15_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_16_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_16_loc_fu_186 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_16_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_17_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_17_loc_fu_190 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_17_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_18_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_18_loc_fu_194 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_18_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_19_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_19_loc_fu_198 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_19_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_1_loc_fu_126 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_20_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_20_loc_fu_202 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_20_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_21_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_21_loc_fu_206 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_21_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_22_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_22_loc_fu_210 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_22_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_23_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_23_loc_fu_214 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_23_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_24_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_24_loc_fu_218 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_24_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_25_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_25_loc_fu_222 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_25_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_26_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_26_loc_fu_226 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_26_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_27_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_27_loc_fu_230 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_27_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_28_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_28_loc_fu_234 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_28_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_29_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_29_loc_fu_238 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_29_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_2_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_2_loc_fu_130 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_2_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_30_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_30_loc_fu_242 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_30_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_31_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_31_loc_fu_246 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_31_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_3_loc_fu_134 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_4_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_4_loc_fu_138 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_4_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_5_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_5_loc_fu_142 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_6_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_6_loc_fu_146 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_6_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_7_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_7_loc_fu_150 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_8_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_8_loc_fu_154 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_8_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_9_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_9_loc_fu_158 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_9_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_330_sum_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_loc_fu_250 <= grp_spmv_Pipeline_spmv_2_fu_330_sum_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_begin_reg_1191 <= tmp_begin_fu_435_p3;
        tmp_end_reg_1196 <= tmp_end_fu_443_p3;
    end
end
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
    if ((grp_spmv_Pipeline_spmv_2_fu_330_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln12_fu_387_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln12_fu_387_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        out_0_ce0_local = 1'b1;
    end else begin
        out_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (trunc_ln12_reg_1159 == 1'd0))) begin
        out_0_we0_local = 1'b1;
    end else begin
        out_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        out_1_ce0_local = 1'b1;
    end else begin
        out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (trunc_ln12_reg_1159 == 1'd1))) begin
        out_1_we0_local = 1'b1;
    end else begin
        out_1_we0_local = 1'b0;
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
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln12_fu_387_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_spmv_Pipeline_spmv_2_fu_330_ap_done == 1'b1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_fu_393_p2 = (i_fu_122 + 9'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign bitcast_ln20_fu_942_p1 = sum_0_lcssa_ph_fu_935_p3;
assign cols_address0 = grp_spmv_Pipeline_spmv_2_fu_330_cols_address0;
assign cols_address1 = grp_spmv_Pipeline_spmv_2_fu_330_cols_address1;
assign cols_ce0 = grp_spmv_Pipeline_spmv_2_fu_330_cols_ce0;
assign cols_ce1 = grp_spmv_Pipeline_spmv_2_fu_330_cols_ce1;
assign empty_13_fu_521_p3 = ((empty_reg_1233[0:0] == 1'b1) ? sum_loc_fu_250 : sum_1_loc_fu_126);
assign empty_14_fu_458_p2 = ((grp_spmv_Pipeline_spmv_2_fu_330_ap_return == 5'd1) ? 1'b1 : 1'b0);
assign empty_15_fu_528_p3 = ((empty_14_reg_1238[0:0] == 1'b1) ? sum_31_loc_fu_246 : empty_13_fu_521_p3);
assign empty_16_fu_464_p2 = ((grp_spmv_Pipeline_spmv_2_fu_330_ap_return == 5'd2) ? 1'b1 : 1'b0);
assign empty_17_fu_535_p3 = ((empty_16_reg_1243[0:0] == 1'b1) ? sum_30_loc_fu_242 : empty_15_fu_528_p3);
assign empty_18_fu_470_p2 = ((grp_spmv_Pipeline_spmv_2_fu_330_ap_return == 5'd3) ? 1'b1 : 1'b0);
assign empty_19_fu_542_p3 = ((empty_18_reg_1248[0:0] == 1'b1) ? sum_29_loc_fu_238 : empty_17_fu_535_p3);
assign empty_20_fu_549_p2 = ((targetBlock_reg_1202 == 5'd4) ? 1'b1 : 1'b0);
assign empty_21_fu_554_p3 = ((empty_20_fu_549_p2[0:0] == 1'b1) ? sum_28_loc_fu_234 : empty_19_fu_542_p3);
assign empty_22_fu_562_p2 = ((targetBlock_reg_1202 == 5'd5) ? 1'b1 : 1'b0);
assign empty_23_fu_567_p3 = ((empty_22_fu_562_p2[0:0] == 1'b1) ? sum_27_loc_fu_230 : empty_21_fu_554_p3);
assign empty_24_fu_575_p2 = ((targetBlock_reg_1202 == 5'd6) ? 1'b1 : 1'b0);
assign empty_25_fu_580_p3 = ((empty_24_fu_575_p2[0:0] == 1'b1) ? sum_26_loc_fu_226 : empty_23_fu_567_p3);
assign empty_26_fu_588_p2 = ((targetBlock_reg_1202 == 5'd7) ? 1'b1 : 1'b0);
assign empty_27_fu_593_p3 = ((empty_26_fu_588_p2[0:0] == 1'b1) ? sum_25_loc_fu_222 : empty_25_fu_580_p3);
assign empty_28_fu_601_p2 = ((targetBlock_reg_1202 == 5'd8) ? 1'b1 : 1'b0);
assign empty_29_fu_606_p3 = ((empty_28_fu_601_p2[0:0] == 1'b1) ? sum_24_loc_fu_218 : empty_27_fu_593_p3);
assign empty_30_fu_614_p2 = ((targetBlock_reg_1202 == 5'd9) ? 1'b1 : 1'b0);
assign empty_31_fu_619_p3 = ((empty_30_fu_614_p2[0:0] == 1'b1) ? sum_23_loc_fu_214 : empty_29_fu_606_p3);
assign empty_32_fu_627_p2 = ((targetBlock_reg_1202 == 5'd10) ? 1'b1 : 1'b0);
assign empty_33_fu_632_p3 = ((empty_32_fu_627_p2[0:0] == 1'b1) ? sum_22_loc_fu_210 : empty_31_fu_619_p3);
assign empty_34_fu_640_p2 = ((targetBlock_reg_1202 == 5'd11) ? 1'b1 : 1'b0);
assign empty_35_fu_645_p3 = ((empty_34_fu_640_p2[0:0] == 1'b1) ? sum_21_loc_fu_206 : empty_33_fu_632_p3);
assign empty_36_fu_653_p2 = ((targetBlock_reg_1202 == 5'd12) ? 1'b1 : 1'b0);
assign empty_37_fu_658_p3 = ((empty_36_fu_653_p2[0:0] == 1'b1) ? sum_20_loc_fu_202 : empty_35_fu_645_p3);
assign empty_38_fu_666_p2 = ((targetBlock_reg_1202 == 5'd13) ? 1'b1 : 1'b0);
assign empty_39_fu_671_p3 = ((empty_38_fu_666_p2[0:0] == 1'b1) ? sum_19_loc_fu_198 : empty_37_fu_658_p3);
assign empty_40_fu_679_p2 = ((targetBlock_reg_1202 == 5'd14) ? 1'b1 : 1'b0);
assign empty_41_fu_741_p3 = ((empty_40_reg_1258[0:0] == 1'b1) ? sum_18_loc_fu_194 : empty_39_reg_1253);
assign empty_42_fu_684_p2 = ((targetBlock_reg_1202 == 5'd15) ? 1'b1 : 1'b0);
assign empty_43_fu_747_p3 = ((empty_42_reg_1263[0:0] == 1'b1) ? sum_17_loc_fu_190 : empty_41_fu_741_p3);
assign empty_44_fu_689_p2 = ((targetBlock_reg_1202 == 5'd16) ? 1'b1 : 1'b0);
assign empty_45_fu_754_p3 = ((empty_44_reg_1268[0:0] == 1'b1) ? sum_16_loc_fu_186 : empty_43_fu_747_p3);
assign empty_46_fu_694_p2 = ((targetBlock_reg_1202 == 5'd17) ? 1'b1 : 1'b0);
assign empty_47_fu_761_p3 = ((empty_46_reg_1273[0:0] == 1'b1) ? sum_15_loc_fu_182 : empty_45_fu_754_p3);
assign empty_48_fu_768_p2 = ((targetBlock_reg_1202 == 5'd18) ? 1'b1 : 1'b0);
assign empty_49_fu_773_p3 = ((empty_48_fu_768_p2[0:0] == 1'b1) ? sum_14_loc_fu_178 : empty_47_fu_761_p3);
assign empty_50_fu_781_p2 = ((targetBlock_reg_1202 == 5'd19) ? 1'b1 : 1'b0);
assign empty_51_fu_786_p3 = ((empty_50_fu_781_p2[0:0] == 1'b1) ? sum_13_loc_fu_174 : empty_49_fu_773_p3);
assign empty_52_fu_794_p2 = ((targetBlock_reg_1202 == 5'd20) ? 1'b1 : 1'b0);
assign empty_53_fu_799_p3 = ((empty_52_fu_794_p2[0:0] == 1'b1) ? sum_12_loc_fu_170 : empty_51_fu_786_p3);
assign empty_54_fu_807_p2 = ((targetBlock_reg_1202 == 5'd21) ? 1'b1 : 1'b0);
assign empty_55_fu_812_p3 = ((empty_54_fu_807_p2[0:0] == 1'b1) ? sum_11_loc_fu_166 : empty_53_fu_799_p3);
assign empty_56_fu_820_p2 = ((targetBlock_reg_1202 == 5'd22) ? 1'b1 : 1'b0);
assign empty_57_fu_825_p3 = ((empty_56_fu_820_p2[0:0] == 1'b1) ? sum_10_loc_fu_162 : empty_55_fu_812_p3);
assign empty_58_fu_833_p2 = ((targetBlock_reg_1202 == 5'd23) ? 1'b1 : 1'b0);
assign empty_59_fu_838_p3 = ((empty_58_fu_833_p2[0:0] == 1'b1) ? sum_9_loc_fu_158 : empty_57_fu_825_p3);
assign empty_60_fu_846_p2 = ((targetBlock_reg_1202 == 5'd24) ? 1'b1 : 1'b0);
assign empty_61_fu_851_p3 = ((empty_60_fu_846_p2[0:0] == 1'b1) ? sum_8_loc_fu_154 : empty_59_fu_838_p3);
assign empty_62_fu_859_p2 = ((targetBlock_reg_1202 == 5'd25) ? 1'b1 : 1'b0);
assign empty_63_fu_864_p3 = ((empty_62_fu_859_p2[0:0] == 1'b1) ? sum_7_loc_fu_150 : empty_61_fu_851_p3);
assign empty_64_fu_872_p2 = ((targetBlock_reg_1202 == 5'd26) ? 1'b1 : 1'b0);
assign empty_65_fu_877_p3 = ((empty_64_fu_872_p2[0:0] == 1'b1) ? sum_6_loc_fu_146 : empty_63_fu_864_p3);
assign empty_66_fu_885_p2 = ((targetBlock_reg_1202 == 5'd27) ? 1'b1 : 1'b0);
assign empty_67_fu_890_p3 = ((empty_66_fu_885_p2[0:0] == 1'b1) ? sum_5_loc_fu_142 : empty_65_fu_877_p3);
assign empty_68_fu_898_p2 = ((targetBlock_reg_1202 == 5'd28) ? 1'b1 : 1'b0);
assign empty_69_fu_922_p3 = ((empty_68_reg_1283[0:0] == 1'b1) ? sum_4_loc_fu_138 : empty_67_reg_1278);
assign empty_70_fu_903_p2 = ((targetBlock_reg_1202 == 5'd29) ? 1'b1 : 1'b0);
assign empty_71_fu_928_p3 = ((empty_70_reg_1288[0:0] == 1'b1) ? sum_3_loc_fu_134 : empty_69_fu_922_p3);
assign empty_72_fu_908_p2 = ((targetBlock_reg_1202 == 5'd30) ? 1'b1 : 1'b0);
assign empty_fu_452_p2 = ((grp_spmv_Pipeline_spmv_2_fu_330_ap_return == 5'd0) ? 1'b1 : 1'b0);
assign grp_spmv_Pipeline_spmv_2_fu_330_ap_start = grp_spmv_Pipeline_spmv_2_fu_330_ap_start_reg;
assign icmp_ln12_fu_387_p2 = ((i_fu_122 == 9'd494) ? 1'b1 : 1'b0);
assign lshr_ln9_fu_403_p4 = {{i_fu_122[8:1]}};
assign lshr_ln_fu_419_p4 = {{add_ln15_fu_393_p2[8:1]}};
assign out_0_address0 = zext_ln9_reg_1165;
assign out_0_ce0 = out_0_ce0_local;
assign out_0_d0 = bitcast_ln20_fu_942_p1;
assign out_0_we0 = out_0_we0_local;
assign out_1_address0 = zext_ln9_reg_1165;
assign out_1_ce0 = out_1_ce0_local;
assign out_1_d0 = bitcast_ln20_fu_942_p1;
assign out_1_we0 = out_1_we0_local;
assign rowDelimiters_0_address0 = zext_ln15_fu_429_p1;
assign rowDelimiters_0_address1 = zext_ln9_fu_413_p1;
assign rowDelimiters_0_ce0 = rowDelimiters_0_ce0_local;
assign rowDelimiters_0_ce1 = rowDelimiters_0_ce1_local;
assign rowDelimiters_1_address0 = zext_ln15_fu_429_p1;
assign rowDelimiters_1_address1 = zext_ln9_fu_413_p1;
assign rowDelimiters_1_ce0 = rowDelimiters_1_ce0_local;
assign rowDelimiters_1_ce1 = rowDelimiters_1_ce1_local;
assign sum_0_lcssa_ph_fu_935_p3 = ((empty_72_reg_1293[0:0] == 1'b1) ? sum_2_loc_fu_130 : empty_71_fu_928_p3);
assign tmp_begin_fu_435_p3 = ((trunc_ln12_reg_1159[0:0] == 1'b1) ? rowDelimiters_1_q1 : rowDelimiters_0_q1);
assign tmp_end_fu_443_p3 = ((trunc_ln12_reg_1159[0:0] == 1'b1) ? rowDelimiters_0_q0 : rowDelimiters_1_q0);
assign trunc_ln12_fu_399_p1 = i_fu_122[0:0];
assign val_0_address0 = grp_spmv_Pipeline_spmv_2_fu_330_val_0_address0;
assign val_0_address1 = grp_spmv_Pipeline_spmv_2_fu_330_val_0_address1;
assign val_0_ce0 = grp_spmv_Pipeline_spmv_2_fu_330_val_0_ce0;
assign val_0_ce1 = grp_spmv_Pipeline_spmv_2_fu_330_val_0_ce1;
assign val_1_address0 = grp_spmv_Pipeline_spmv_2_fu_330_val_1_address0;
assign val_1_address1 = grp_spmv_Pipeline_spmv_2_fu_330_val_1_address1;
assign val_1_ce0 = grp_spmv_Pipeline_spmv_2_fu_330_val_1_ce0;
assign val_1_ce1 = grp_spmv_Pipeline_spmv_2_fu_330_val_1_ce1;
assign vec_0_address0 = grp_spmv_Pipeline_spmv_2_fu_330_vec_0_address0;
assign vec_0_address1 = grp_spmv_Pipeline_spmv_2_fu_330_vec_0_address1;
assign vec_0_ce0 = grp_spmv_Pipeline_spmv_2_fu_330_vec_0_ce0;
assign vec_0_ce1 = grp_spmv_Pipeline_spmv_2_fu_330_vec_0_ce1;
assign vec_1_address0 = grp_spmv_Pipeline_spmv_2_fu_330_vec_1_address0;
assign vec_1_address1 = grp_spmv_Pipeline_spmv_2_fu_330_vec_1_address1;
assign vec_1_ce0 = grp_spmv_Pipeline_spmv_2_fu_330_vec_1_ce0;
assign vec_1_ce1 = grp_spmv_Pipeline_spmv_2_fu_330_vec_1_ce1;
assign zext_ln15_fu_429_p1 = lshr_ln_fu_419_p4;
assign zext_ln9_fu_413_p1 = lshr_ln9_fu_403_p4;
always @ (posedge ap_clk) begin
    zext_ln9_reg_1165[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 