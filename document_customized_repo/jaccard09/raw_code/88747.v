module syr2k_syr2k_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B0_address0,buff_B0_ce0,buff_B0_q0,buff_B0_4_address0,buff_B0_4_ce0,buff_B0_4_q0,buff_B0_8_address0,buff_B0_8_ce0,buff_B0_8_q0,buff_B0_12_address0,buff_B0_12_ce0,buff_B0_12_q0,buff_B0_16_address0,buff_B0_16_ce0,buff_B0_16_q0,buff_B0_20_address0,buff_B0_20_ce0,buff_B0_20_q0,buff_B0_24_address0,buff_B0_24_ce0,buff_B0_24_q0,buff_B0_28_address0,buff_B0_28_ce0,buff_B0_28_q0,buff_B0_32_address0,buff_B0_32_ce0,buff_B0_32_q0,buff_B0_36_address0,buff_B0_36_ce0,buff_B0_36_q0,buff_B0_40_address0,buff_B0_40_ce0,buff_B0_40_q0,buff_B0_44_address0,buff_B0_44_ce0,buff_B0_44_q0,buff_B0_48_address0,buff_B0_48_ce0,buff_B0_48_q0,buff_B0_52_address0,buff_B0_52_ce0,buff_B0_52_q0,buff_B0_56_address0,buff_B0_56_ce0,buff_B0_56_q0,buff_B0_60_address0,buff_B0_60_ce0,buff_B0_60_q0,buff_B0_1_address0,buff_B0_1_ce0,buff_B0_1_q0,buff_B0_5_address0,buff_B0_5_ce0,buff_B0_5_q0,buff_B0_9_address0,buff_B0_9_ce0,buff_B0_9_q0,buff_B0_13_address0,buff_B0_13_ce0,buff_B0_13_q0,buff_B0_17_address0,buff_B0_17_ce0,buff_B0_17_q0,buff_B0_21_address0,buff_B0_21_ce0,buff_B0_21_q0,buff_B0_25_address0,buff_B0_25_ce0,buff_B0_25_q0,buff_B0_29_address0,buff_B0_29_ce0,buff_B0_29_q0,buff_B0_33_address0,buff_B0_33_ce0,buff_B0_33_q0,buff_B0_37_address0,buff_B0_37_ce0,buff_B0_37_q0,buff_B0_41_address0,buff_B0_41_ce0,buff_B0_41_q0,buff_B0_45_address0,buff_B0_45_ce0,buff_B0_45_q0,buff_B0_49_address0,buff_B0_49_ce0,buff_B0_49_q0,buff_B0_53_address0,buff_B0_53_ce0,buff_B0_53_q0,buff_B0_57_address0,buff_B0_57_ce0,buff_B0_57_q0,buff_B0_61_address0,buff_B0_61_ce0,buff_B0_61_q0,buff_B0_2_address0,buff_B0_2_ce0,buff_B0_2_q0,buff_B0_6_address0,buff_B0_6_ce0,buff_B0_6_q0,buff_B0_10_address0,buff_B0_10_ce0,buff_B0_10_q0,buff_B0_14_address0,buff_B0_14_ce0,buff_B0_14_q0,buff_B0_18_address0,buff_B0_18_ce0,buff_B0_18_q0,buff_B0_22_address0,buff_B0_22_ce0,buff_B0_22_q0,buff_B0_26_address0,buff_B0_26_ce0,buff_B0_26_q0,buff_B0_30_address0,buff_B0_30_ce0,buff_B0_30_q0,buff_B0_34_address0,buff_B0_34_ce0,buff_B0_34_q0,buff_B0_38_address0,buff_B0_38_ce0,buff_B0_38_q0,buff_B0_42_address0,buff_B0_42_ce0,buff_B0_42_q0,buff_B0_46_address0,buff_B0_46_ce0,buff_B0_46_q0,buff_B0_50_address0,buff_B0_50_ce0,buff_B0_50_q0,buff_B0_54_address0,buff_B0_54_ce0,buff_B0_54_q0,buff_B0_58_address0,buff_B0_58_ce0,buff_B0_58_q0,buff_B0_62_address0,buff_B0_62_ce0,buff_B0_62_q0,buff_B0_3_address0,buff_B0_3_ce0,buff_B0_3_q0,buff_B0_7_address0,buff_B0_7_ce0,buff_B0_7_q0,buff_B0_11_address0,buff_B0_11_ce0,buff_B0_11_q0,buff_B0_15_address0,buff_B0_15_ce0,buff_B0_15_q0,buff_B0_19_address0,buff_B0_19_ce0,buff_B0_19_q0,buff_B0_23_address0,buff_B0_23_ce0,buff_B0_23_q0,buff_B0_27_address0,buff_B0_27_ce0,buff_B0_27_q0,buff_B0_31_address0,buff_B0_31_ce0,buff_B0_31_q0,buff_B0_35_address0,buff_B0_35_ce0,buff_B0_35_q0,buff_B0_39_address0,buff_B0_39_ce0,buff_B0_39_q0,buff_B0_43_address0,buff_B0_43_ce0,buff_B0_43_q0,buff_B0_47_address0,buff_B0_47_ce0,buff_B0_47_q0,buff_B0_51_address0,buff_B0_51_ce0,buff_B0_51_q0,buff_B0_55_address0,buff_B0_55_ce0,buff_B0_55_q0,buff_B0_59_address0,buff_B0_59_ce0,buff_B0_59_q0,buff_B0_63_address0,buff_B0_63_ce0,buff_B0_63_q0,buff_A0_address0,buff_A0_ce0,buff_A0_q0,buff_A0_address1,buff_A0_ce1,buff_A0_q1,buff_A0_1_address0,buff_A0_1_ce0,buff_A0_1_q0,buff_A0_1_address1,buff_A0_1_ce1,buff_A0_1_q1,alpha,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_q0,grp_fu_1109_p_din0,grp_fu_1109_p_din1,grp_fu_1109_p_opcode,grp_fu_1109_p_dout0,grp_fu_1109_p_ce,grp_fu_1113_p_din0,grp_fu_1113_p_din1,grp_fu_1113_p_dout0,grp_fu_1113_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 29'd1;
parameter    ap_ST_fsm_pp0_stage1 = 29'd2;
parameter    ap_ST_fsm_pp0_stage2 = 29'd4;
parameter    ap_ST_fsm_pp0_stage3 = 29'd8;
parameter    ap_ST_fsm_pp0_stage4 = 29'd16;
parameter    ap_ST_fsm_pp0_stage5 = 29'd32;
parameter    ap_ST_fsm_pp0_stage6 = 29'd64;
parameter    ap_ST_fsm_pp0_stage7 = 29'd128;
parameter    ap_ST_fsm_pp0_stage8 = 29'd256;
parameter    ap_ST_fsm_pp0_stage9 = 29'd512;
parameter    ap_ST_fsm_pp0_stage10 = 29'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 29'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 29'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 29'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 29'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 29'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 29'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 29'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 29'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 29'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 29'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 29'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 29'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 29'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 29'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 29'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 29'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 29'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 29'd268435456;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] buff_B0_address0;
output   buff_B0_ce0;
input  [31:0] buff_B0_q0;
output  [5:0] buff_B0_4_address0;
output   buff_B0_4_ce0;
input  [31:0] buff_B0_4_q0;
output  [5:0] buff_B0_8_address0;
output   buff_B0_8_ce0;
input  [31:0] buff_B0_8_q0;
output  [5:0] buff_B0_12_address0;
output   buff_B0_12_ce0;
input  [31:0] buff_B0_12_q0;
output  [5:0] buff_B0_16_address0;
output   buff_B0_16_ce0;
input  [31:0] buff_B0_16_q0;
output  [5:0] buff_B0_20_address0;
output   buff_B0_20_ce0;
input  [31:0] buff_B0_20_q0;
output  [5:0] buff_B0_24_address0;
output   buff_B0_24_ce0;
input  [31:0] buff_B0_24_q0;
output  [5:0] buff_B0_28_address0;
output   buff_B0_28_ce0;
input  [31:0] buff_B0_28_q0;
output  [5:0] buff_B0_32_address0;
output   buff_B0_32_ce0;
input  [31:0] buff_B0_32_q0;
output  [5:0] buff_B0_36_address0;
output   buff_B0_36_ce0;
input  [31:0] buff_B0_36_q0;
output  [5:0] buff_B0_40_address0;
output   buff_B0_40_ce0;
input  [31:0] buff_B0_40_q0;
output  [5:0] buff_B0_44_address0;
output   buff_B0_44_ce0;
input  [31:0] buff_B0_44_q0;
output  [5:0] buff_B0_48_address0;
output   buff_B0_48_ce0;
input  [31:0] buff_B0_48_q0;
output  [5:0] buff_B0_52_address0;
output   buff_B0_52_ce0;
input  [31:0] buff_B0_52_q0;
output  [5:0] buff_B0_56_address0;
output   buff_B0_56_ce0;
input  [31:0] buff_B0_56_q0;
output  [5:0] buff_B0_60_address0;
output   buff_B0_60_ce0;
input  [31:0] buff_B0_60_q0;
output  [5:0] buff_B0_1_address0;
output   buff_B0_1_ce0;
input  [31:0] buff_B0_1_q0;
output  [5:0] buff_B0_5_address0;
output   buff_B0_5_ce0;
input  [31:0] buff_B0_5_q0;
output  [5:0] buff_B0_9_address0;
output   buff_B0_9_ce0;
input  [31:0] buff_B0_9_q0;
output  [5:0] buff_B0_13_address0;
output   buff_B0_13_ce0;
input  [31:0] buff_B0_13_q0;
output  [5:0] buff_B0_17_address0;
output   buff_B0_17_ce0;
input  [31:0] buff_B0_17_q0;
output  [5:0] buff_B0_21_address0;
output   buff_B0_21_ce0;
input  [31:0] buff_B0_21_q0;
output  [5:0] buff_B0_25_address0;
output   buff_B0_25_ce0;
input  [31:0] buff_B0_25_q0;
output  [5:0] buff_B0_29_address0;
output   buff_B0_29_ce0;
input  [31:0] buff_B0_29_q0;
output  [5:0] buff_B0_33_address0;
output   buff_B0_33_ce0;
input  [31:0] buff_B0_33_q0;
output  [5:0] buff_B0_37_address0;
output   buff_B0_37_ce0;
input  [31:0] buff_B0_37_q0;
output  [5:0] buff_B0_41_address0;
output   buff_B0_41_ce0;
input  [31:0] buff_B0_41_q0;
output  [5:0] buff_B0_45_address0;
output   buff_B0_45_ce0;
input  [31:0] buff_B0_45_q0;
output  [5:0] buff_B0_49_address0;
output   buff_B0_49_ce0;
input  [31:0] buff_B0_49_q0;
output  [5:0] buff_B0_53_address0;
output   buff_B0_53_ce0;
input  [31:0] buff_B0_53_q0;
output  [5:0] buff_B0_57_address0;
output   buff_B0_57_ce0;
input  [31:0] buff_B0_57_q0;
output  [5:0] buff_B0_61_address0;
output   buff_B0_61_ce0;
input  [31:0] buff_B0_61_q0;
output  [5:0] buff_B0_2_address0;
output   buff_B0_2_ce0;
input  [31:0] buff_B0_2_q0;
output  [5:0] buff_B0_6_address0;
output   buff_B0_6_ce0;
input  [31:0] buff_B0_6_q0;
output  [5:0] buff_B0_10_address0;
output   buff_B0_10_ce0;
input  [31:0] buff_B0_10_q0;
output  [5:0] buff_B0_14_address0;
output   buff_B0_14_ce0;
input  [31:0] buff_B0_14_q0;
output  [5:0] buff_B0_18_address0;
output   buff_B0_18_ce0;
input  [31:0] buff_B0_18_q0;
output  [5:0] buff_B0_22_address0;
output   buff_B0_22_ce0;
input  [31:0] buff_B0_22_q0;
output  [5:0] buff_B0_26_address0;
output   buff_B0_26_ce0;
input  [31:0] buff_B0_26_q0;
output  [5:0] buff_B0_30_address0;
output   buff_B0_30_ce0;
input  [31:0] buff_B0_30_q0;
output  [5:0] buff_B0_34_address0;
output   buff_B0_34_ce0;
input  [31:0] buff_B0_34_q0;
output  [5:0] buff_B0_38_address0;
output   buff_B0_38_ce0;
input  [31:0] buff_B0_38_q0;
output  [5:0] buff_B0_42_address0;
output   buff_B0_42_ce0;
input  [31:0] buff_B0_42_q0;
output  [5:0] buff_B0_46_address0;
output   buff_B0_46_ce0;
input  [31:0] buff_B0_46_q0;
output  [5:0] buff_B0_50_address0;
output   buff_B0_50_ce0;
input  [31:0] buff_B0_50_q0;
output  [5:0] buff_B0_54_address0;
output   buff_B0_54_ce0;
input  [31:0] buff_B0_54_q0;
output  [5:0] buff_B0_58_address0;
output   buff_B0_58_ce0;
input  [31:0] buff_B0_58_q0;
output  [5:0] buff_B0_62_address0;
output   buff_B0_62_ce0;
input  [31:0] buff_B0_62_q0;
output  [5:0] buff_B0_3_address0;
output   buff_B0_3_ce0;
input  [31:0] buff_B0_3_q0;
output  [5:0] buff_B0_7_address0;
output   buff_B0_7_ce0;
input  [31:0] buff_B0_7_q0;
output  [5:0] buff_B0_11_address0;
output   buff_B0_11_ce0;
input  [31:0] buff_B0_11_q0;
output  [5:0] buff_B0_15_address0;
output   buff_B0_15_ce0;
input  [31:0] buff_B0_15_q0;
output  [5:0] buff_B0_19_address0;
output   buff_B0_19_ce0;
input  [31:0] buff_B0_19_q0;
output  [5:0] buff_B0_23_address0;
output   buff_B0_23_ce0;
input  [31:0] buff_B0_23_q0;
output  [5:0] buff_B0_27_address0;
output   buff_B0_27_ce0;
input  [31:0] buff_B0_27_q0;
output  [5:0] buff_B0_31_address0;
output   buff_B0_31_ce0;
input  [31:0] buff_B0_31_q0;
output  [5:0] buff_B0_35_address0;
output   buff_B0_35_ce0;
input  [31:0] buff_B0_35_q0;
output  [5:0] buff_B0_39_address0;
output   buff_B0_39_ce0;
input  [31:0] buff_B0_39_q0;
output  [5:0] buff_B0_43_address0;
output   buff_B0_43_ce0;
input  [31:0] buff_B0_43_q0;
output  [5:0] buff_B0_47_address0;
output   buff_B0_47_ce0;
input  [31:0] buff_B0_47_q0;
output  [5:0] buff_B0_51_address0;
output   buff_B0_51_ce0;
input  [31:0] buff_B0_51_q0;
output  [5:0] buff_B0_55_address0;
output   buff_B0_55_ce0;
input  [31:0] buff_B0_55_q0;
output  [5:0] buff_B0_59_address0;
output   buff_B0_59_ce0;
input  [31:0] buff_B0_59_q0;
output  [5:0] buff_B0_63_address0;
output   buff_B0_63_ce0;
input  [31:0] buff_B0_63_q0;
output  [10:0] buff_A0_address0;
output   buff_A0_ce0;
input  [31:0] buff_A0_q0;
output  [10:0] buff_A0_address1;
output   buff_A0_ce1;
input  [31:0] buff_A0_q1;
output  [10:0] buff_A0_1_address0;
output   buff_A0_1_ce0;
input  [31:0] buff_A0_1_q0;
output  [10:0] buff_A0_1_address1;
output   buff_A0_1_ce1;
input  [31:0] buff_A0_1_q1;
input  [31:0] alpha;
output  [11:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
input  [31:0] tmp1_q0;
output  [31:0] grp_fu_1109_p_din0;
output  [31:0] grp_fu_1109_p_din1;
output  [1:0] grp_fu_1109_p_opcode;
input  [31:0] grp_fu_1109_p_dout0;
output   grp_fu_1109_p_ce;
output  [31:0] grp_fu_1113_p_din0;
output  [31:0] grp_fu_1113_p_din1;
input  [31:0] grp_fu_1113_p_dout0;
output   grp_fu_1113_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [28:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] icmp_ln27_reg_1866;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_subdone;
reg   [31:0] reg_1165;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage11_11001;
reg   [31:0] reg_1171;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [31:0] reg_1177;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [31:0] reg_1183;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [31:0] reg_1189;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln27_fu_1226_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [6:0] select_ln5_fu_1259_p3;
reg   [6:0] select_ln5_reg_1870;
wire   [0:0] or_ln5_fu_1289_p2;
reg   [0:0] or_ln5_reg_1875;
wire   [5:0] trunc_ln28_fu_1303_p1;
reg   [5:0] trunc_ln28_reg_1880;
wire   [6:0] add_ln28_fu_1307_p2;
reg   [6:0] add_ln28_reg_1887;
wire   [6:0] k_mid2_fu_1313_p3;
reg   [6:0] k_mid2_reg_1892;
wire   [0:0] first_iter_1_fu_1355_p2;
reg   [0:0] first_iter_1_reg_1901;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [11:0] tmp1_addr_reg_1905;
reg   [11:0] tmp1_addr_reg_1905_pp0_iter1_reg;
wire   [5:0] trunc_ln30_fu_1450_p1;
reg   [5:0] trunc_ln30_reg_2230;
reg   [0:0] tmp_5_reg_2258;
reg   [0:0] tmp_5_reg_2258_pp0_iter1_reg;
reg   [31:0] arrayidx7813_promoted_reg_2262;
reg   [31:0] buff_A0_load_reg_2267;
wire   [31:0] tmp_fu_1522_p35;
reg   [31:0] tmp_reg_2272;
reg   [31:0] buff_A0_1_load_reg_2277;
wire   [31:0] tmp_1_fu_1593_p35;
reg   [31:0] tmp_1_reg_2282;
reg   [31:0] buff_A0_load_1_reg_2287;
wire   [31:0] tmp_2_fu_1664_p35;
reg   [31:0] tmp_2_reg_2292;
reg   [31:0] buff_A0_1_load_1_reg_2297;
wire   [31:0] tmp_3_fu_1735_p35;
reg   [31:0] tmp_3_reg_2302;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] p_cast_fu_1445_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln28_fu_1367_p1;
wire   [63:0] zext_ln31_fu_1469_p1;
wire   [63:0] zext_ln31_1_fu_1493_p1;
reg   [6:0] k_fu_232;
wire   [6:0] add_ln30_fu_1499_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_236;
wire   [6:0] select_ln28_fu_1350_p3;
reg   [11:0] indvar_flatten7_fu_240;
wire   [11:0] select_ln28_1_fu_1327_p3;
reg   [6:0] i_fu_244;
wire   [6:0] select_ln27_fu_1295_p3;
reg   [16:0] indvar_flatten21_fu_248;
wire   [16:0] add_ln27_1_fu_1232_p2;
reg   [31:0] empty_fu_252;
wire    ap_block_pp0_stage12;
reg    tmp1_ce0_local;
reg   [11:0] tmp1_address0_local;
reg    tmp1_we0_local;
wire    ap_block_pp0_stage11;
reg    buff_B0_ce0_local;
reg    buff_B0_4_ce0_local;
reg    buff_B0_8_ce0_local;
reg    buff_B0_12_ce0_local;
reg    buff_B0_16_ce0_local;
reg    buff_B0_20_ce0_local;
reg    buff_B0_24_ce0_local;
reg    buff_B0_28_ce0_local;
reg    buff_B0_32_ce0_local;
reg    buff_B0_36_ce0_local;
reg    buff_B0_40_ce0_local;
reg    buff_B0_44_ce0_local;
reg    buff_B0_48_ce0_local;
reg    buff_B0_52_ce0_local;
reg    buff_B0_56_ce0_local;
reg    buff_B0_60_ce0_local;
reg    buff_B0_1_ce0_local;
reg    buff_B0_5_ce0_local;
reg    buff_B0_9_ce0_local;
reg    buff_B0_13_ce0_local;
reg    buff_B0_17_ce0_local;
reg    buff_B0_21_ce0_local;
reg    buff_B0_25_ce0_local;
reg    buff_B0_29_ce0_local;
reg    buff_B0_33_ce0_local;
reg    buff_B0_37_ce0_local;
reg    buff_B0_41_ce0_local;
reg    buff_B0_45_ce0_local;
reg    buff_B0_49_ce0_local;
reg    buff_B0_53_ce0_local;
reg    buff_B0_57_ce0_local;
reg    buff_B0_61_ce0_local;
reg    buff_B0_2_ce0_local;
reg    buff_B0_6_ce0_local;
reg    buff_B0_10_ce0_local;
reg    buff_B0_14_ce0_local;
reg    buff_B0_18_ce0_local;
reg    buff_B0_22_ce0_local;
reg    buff_B0_26_ce0_local;
reg    buff_B0_30_ce0_local;
reg    buff_B0_34_ce0_local;
reg    buff_B0_38_ce0_local;
reg    buff_B0_42_ce0_local;
reg    buff_B0_46_ce0_local;
reg    buff_B0_50_ce0_local;
reg    buff_B0_54_ce0_local;
reg    buff_B0_58_ce0_local;
reg    buff_B0_62_ce0_local;
reg    buff_B0_3_ce0_local;
reg    buff_B0_7_ce0_local;
reg    buff_B0_11_ce0_local;
reg    buff_B0_15_ce0_local;
reg    buff_B0_19_ce0_local;
reg    buff_B0_23_ce0_local;
reg    buff_B0_27_ce0_local;
reg    buff_B0_31_ce0_local;
reg    buff_B0_35_ce0_local;
reg    buff_B0_39_ce0_local;
reg    buff_B0_43_ce0_local;
reg    buff_B0_47_ce0_local;
reg    buff_B0_51_ce0_local;
reg    buff_B0_55_ce0_local;
reg    buff_B0_59_ce0_local;
reg    buff_B0_63_ce0_local;
reg    buff_A0_ce1_local;
reg    buff_A0_ce0_local;
reg    buff_A0_1_ce1_local;
reg    buff_A0_1_ce0_local;
wire    ap_block_pp0_stage0;
reg   [31:0] grp_fu_1157_p0;
reg   [31:0] grp_fu_1157_p1;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
reg   [31:0] grp_fu_1161_p0;
reg   [31:0] grp_fu_1161_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire   [0:0] icmp_ln28_fu_1253_p2;
wire   [0:0] tmp_4_fu_1275_p3;
wire   [0:0] xor_ln30_fu_1283_p2;
wire   [6:0] add_ln27_fu_1247_p2;
wire   [6:0] select_ln5_1_fu_1267_p3;
wire   [11:0] add_ln28_1_fu_1321_p2;
wire   [11:0] tmp_6_fu_1360_p3;
wire   [11:0] select_ln28_cast_fu_1435_p1;
wire   [11:0] empty_13_fu_1439_p2;
wire   [4:0] lshr_ln5_1_fu_1453_p4;
wire   [10:0] tmp_8_fu_1462_p3;
wire   [3:0] tmp_9_fu_1475_p4;
wire   [10:0] tmp_s_fu_1484_p4;
wire   [31:0] tmp_fu_1522_p33;
wire    ap_block_pp0_stage3;
wire   [31:0] tmp_1_fu_1593_p33;
wire   [31:0] tmp_2_fu_1664_p33;
wire   [31:0] tmp_3_fu_1735_p33;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [28:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage19_00001;
wire    ap_block_pp0_stage26_00001;
wire    ap_block_pp0_stage4_00001;
reg    ap_condition_1656;
wire   [5:0] tmp_fu_1522_p1;
wire   [5:0] tmp_fu_1522_p3;
wire   [5:0] tmp_fu_1522_p5;
wire   [5:0] tmp_fu_1522_p7;
wire   [5:0] tmp_fu_1522_p9;
wire   [5:0] tmp_fu_1522_p11;
wire   [5:0] tmp_fu_1522_p13;
wire   [5:0] tmp_fu_1522_p15;
wire  signed [5:0] tmp_fu_1522_p17;
wire  signed [5:0] tmp_fu_1522_p19;
wire  signed [5:0] tmp_fu_1522_p21;
wire  signed [5:0] tmp_fu_1522_p23;
wire  signed [5:0] tmp_fu_1522_p25;
wire  signed [5:0] tmp_fu_1522_p27;
wire  signed [5:0] tmp_fu_1522_p29;
wire  signed [5:0] tmp_fu_1522_p31;
wire   [5:0] tmp_1_fu_1593_p1;
wire   [5:0] tmp_1_fu_1593_p3;
wire   [5:0] tmp_1_fu_1593_p5;
wire   [5:0] tmp_1_fu_1593_p7;
wire   [5:0] tmp_1_fu_1593_p9;
wire   [5:0] tmp_1_fu_1593_p11;
wire   [5:0] tmp_1_fu_1593_p13;
wire   [5:0] tmp_1_fu_1593_p15;
wire  signed [5:0] tmp_1_fu_1593_p17;
wire  signed [5:0] tmp_1_fu_1593_p19;
wire  signed [5:0] tmp_1_fu_1593_p21;
wire  signed [5:0] tmp_1_fu_1593_p23;
wire  signed [5:0] tmp_1_fu_1593_p25;
wire  signed [5:0] tmp_1_fu_1593_p27;
wire  signed [5:0] tmp_1_fu_1593_p29;
wire  signed [5:0] tmp_1_fu_1593_p31;
wire   [5:0] tmp_2_fu_1664_p1;
wire   [5:0] tmp_2_fu_1664_p3;
wire   [5:0] tmp_2_fu_1664_p5;
wire   [5:0] tmp_2_fu_1664_p7;
wire   [5:0] tmp_2_fu_1664_p9;
wire   [5:0] tmp_2_fu_1664_p11;
wire   [5:0] tmp_2_fu_1664_p13;
wire   [5:0] tmp_2_fu_1664_p15;
wire  signed [5:0] tmp_2_fu_1664_p17;
wire  signed [5:0] tmp_2_fu_1664_p19;
wire  signed [5:0] tmp_2_fu_1664_p21;
wire  signed [5:0] tmp_2_fu_1664_p23;
wire  signed [5:0] tmp_2_fu_1664_p25;
wire  signed [5:0] tmp_2_fu_1664_p27;
wire  signed [5:0] tmp_2_fu_1664_p29;
wire  signed [5:0] tmp_2_fu_1664_p31;
wire   [5:0] tmp_3_fu_1735_p1;
wire   [5:0] tmp_3_fu_1735_p3;
wire   [5:0] tmp_3_fu_1735_p5;
wire   [5:0] tmp_3_fu_1735_p7;
wire   [5:0] tmp_3_fu_1735_p9;
wire   [5:0] tmp_3_fu_1735_p11;
wire   [5:0] tmp_3_fu_1735_p13;
wire   [5:0] tmp_3_fu_1735_p15;
wire  signed [5:0] tmp_3_fu_1735_p17;
wire  signed [5:0] tmp_3_fu_1735_p19;
wire  signed [5:0] tmp_3_fu_1735_p21;
wire  signed [5:0] tmp_3_fu_1735_p23;
wire  signed [5:0] tmp_3_fu_1735_p25;
wire  signed [5:0] tmp_3_fu_1735_p27;
wire  signed [5:0] tmp_3_fu_1735_p29;
wire  signed [5:0] tmp_3_fu_1735_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 29'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_232 = 7'd0;
#0 j_fu_236 = 7'd0;
#0 indvar_flatten7_fu_240 = 12'd0;
#0 i_fu_244 = 7'd0;
#0 indvar_flatten21_fu_248 = 17'd0;
#0 empty_fu_252 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_33_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h4 ),.din1_WIDTH( 32 ),.CASE2( 6'h8 ),.din2_WIDTH( 32 ),.CASE3( 6'hC ),.din3_WIDTH( 32 ),.CASE4( 6'h10 ),.din4_WIDTH( 32 ),.CASE5( 6'h14 ),.din5_WIDTH( 32 ),.CASE6( 6'h18 ),.din6_WIDTH( 32 ),.CASE7( 6'h1C ),.din7_WIDTH( 32 ),.CASE8( 6'h20 ),.din8_WIDTH( 32 ),.CASE9( 6'h24 ),.din9_WIDTH( 32 ),.CASE10( 6'h28 ),.din10_WIDTH( 32 ),.CASE11( 6'h2C ),.din11_WIDTH( 32 ),.CASE12( 6'h30 ),.din12_WIDTH( 32 ),.CASE13( 6'h34 ),.din13_WIDTH( 32 ),.CASE14( 6'h38 ),.din14_WIDTH( 32 ),.CASE15( 6'h3C ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_33_6_32_1_1_U140(.din0(buff_B0_q0),.din1(buff_B0_4_q0),.din2(buff_B0_8_q0),.din3(buff_B0_12_q0),.din4(buff_B0_16_q0),.din5(buff_B0_20_q0),.din6(buff_B0_24_q0),.din7(buff_B0_28_q0),.din8(buff_B0_32_q0),.din9(buff_B0_36_q0),.din10(buff_B0_40_q0),.din11(buff_B0_44_q0),.din12(buff_B0_48_q0),.din13(buff_B0_52_q0),.din14(buff_B0_56_q0),.din15(buff_B0_60_q0),.def(tmp_fu_1522_p33),.sel(trunc_ln30_reg_2230),.dout(tmp_fu_1522_p35));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_33_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h4 ),.din1_WIDTH( 32 ),.CASE2( 6'h8 ),.din2_WIDTH( 32 ),.CASE3( 6'hC ),.din3_WIDTH( 32 ),.CASE4( 6'h10 ),.din4_WIDTH( 32 ),.CASE5( 6'h14 ),.din5_WIDTH( 32 ),.CASE6( 6'h18 ),.din6_WIDTH( 32 ),.CASE7( 6'h1C ),.din7_WIDTH( 32 ),.CASE8( 6'h20 ),.din8_WIDTH( 32 ),.CASE9( 6'h24 ),.din9_WIDTH( 32 ),.CASE10( 6'h28 ),.din10_WIDTH( 32 ),.CASE11( 6'h2C ),.din11_WIDTH( 32 ),.CASE12( 6'h30 ),.din12_WIDTH( 32 ),.CASE13( 6'h34 ),.din13_WIDTH( 32 ),.CASE14( 6'h38 ),.din14_WIDTH( 32 ),.CASE15( 6'h3C ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_33_6_32_1_1_U141(.din0(buff_B0_1_q0),.din1(buff_B0_5_q0),.din2(buff_B0_9_q0),.din3(buff_B0_13_q0),.din4(buff_B0_17_q0),.din5(buff_B0_21_q0),.din6(buff_B0_25_q0),.din7(buff_B0_29_q0),.din8(buff_B0_33_q0),.din9(buff_B0_37_q0),.din10(buff_B0_41_q0),.din11(buff_B0_45_q0),.din12(buff_B0_49_q0),.din13(buff_B0_53_q0),.din14(buff_B0_57_q0),.din15(buff_B0_61_q0),.def(tmp_1_fu_1593_p33),.sel(trunc_ln30_reg_2230),.dout(tmp_1_fu_1593_p35));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_33_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h4 ),.din1_WIDTH( 32 ),.CASE2( 6'h8 ),.din2_WIDTH( 32 ),.CASE3( 6'hC ),.din3_WIDTH( 32 ),.CASE4( 6'h10 ),.din4_WIDTH( 32 ),.CASE5( 6'h14 ),.din5_WIDTH( 32 ),.CASE6( 6'h18 ),.din6_WIDTH( 32 ),.CASE7( 6'h1C ),.din7_WIDTH( 32 ),.CASE8( 6'h20 ),.din8_WIDTH( 32 ),.CASE9( 6'h24 ),.din9_WIDTH( 32 ),.CASE10( 6'h28 ),.din10_WIDTH( 32 ),.CASE11( 6'h2C ),.din11_WIDTH( 32 ),.CASE12( 6'h30 ),.din12_WIDTH( 32 ),.CASE13( 6'h34 ),.din13_WIDTH( 32 ),.CASE14( 6'h38 ),.din14_WIDTH( 32 ),.CASE15( 6'h3C ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_33_6_32_1_1_U142(.din0(buff_B0_2_q0),.din1(buff_B0_6_q0),.din2(buff_B0_10_q0),.din3(buff_B0_14_q0),.din4(buff_B0_18_q0),.din5(buff_B0_22_q0),.din6(buff_B0_26_q0),.din7(buff_B0_30_q0),.din8(buff_B0_34_q0),.din9(buff_B0_38_q0),.din10(buff_B0_42_q0),.din11(buff_B0_46_q0),.din12(buff_B0_50_q0),.din13(buff_B0_54_q0),.din14(buff_B0_58_q0),.din15(buff_B0_62_q0),.def(tmp_2_fu_1664_p33),.sel(trunc_ln30_reg_2230),.dout(tmp_2_fu_1664_p35));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_33_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h4 ),.din1_WIDTH( 32 ),.CASE2( 6'h8 ),.din2_WIDTH( 32 ),.CASE3( 6'hC ),.din3_WIDTH( 32 ),.CASE4( 6'h10 ),.din4_WIDTH( 32 ),.CASE5( 6'h14 ),.din5_WIDTH( 32 ),.CASE6( 6'h18 ),.din6_WIDTH( 32 ),.CASE7( 6'h1C ),.din7_WIDTH( 32 ),.CASE8( 6'h20 ),.din8_WIDTH( 32 ),.CASE9( 6'h24 ),.din9_WIDTH( 32 ),.CASE10( 6'h28 ),.din10_WIDTH( 32 ),.CASE11( 6'h2C ),.din11_WIDTH( 32 ),.CASE12( 6'h30 ),.din12_WIDTH( 32 ),.CASE13( 6'h34 ),.din13_WIDTH( 32 ),.CASE14( 6'h38 ),.din14_WIDTH( 32 ),.CASE15( 6'h3C ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_33_6_32_1_1_U143(.din0(buff_B0_3_q0),.din1(buff_B0_7_q0),.din2(buff_B0_11_q0),.din3(buff_B0_15_q0),.din4(buff_B0_19_q0),.din5(buff_B0_23_q0),.din6(buff_B0_27_q0),.din7(buff_B0_31_q0),.din8(buff_B0_35_q0),.din9(buff_B0_39_q0),.din10(buff_B0_43_q0),.din11(buff_B0_47_q0),.din12(buff_B0_51_q0),.din13(buff_B0_55_q0),.din14(buff_B0_59_q0),.din15(buff_B0_63_q0),.def(tmp_3_fu_1735_p33),.sel(trunc_ln30_reg_2230),.dout(tmp_3_fu_1735_p35));
syr2k_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage11),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
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
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage28_subdone) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        if ((1'b1 == ap_condition_1656)) begin
            empty_fu_252 <= arrayidx7813_promoted_reg_2262;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_252 <= reg_1189;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_244 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln27_fu_1226_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_244 <= select_ln27_fu_1295_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten21_fu_248 <= 17'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln27_fu_1226_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten21_fu_248 <= add_ln27_1_fu_1232_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten7_fu_240 <= 12'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln27_fu_1226_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten7_fu_240 <= select_ln28_1_fu_1327_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_236 <= 7'd0;
    end else if (((icmp_ln27_reg_1866 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_236 <= select_ln28_fu_1350_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_232 <= 7'd0;
    end else if (((icmp_ln27_reg_1866 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_232 <= add_ln30_fu_1499_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln28_reg_1887 <= add_ln28_fu_1307_p2;
        icmp_ln27_reg_1866 <= icmp_ln27_fu_1226_p2;
        k_mid2_reg_1892 <= k_mid2_fu_1313_p3;
        or_ln5_reg_1875 <= or_ln5_fu_1289_p2;
        select_ln5_reg_1870 <= select_ln5_fu_1259_p3;
        trunc_ln28_reg_1880 <= trunc_ln28_fu_1303_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        arrayidx7813_promoted_reg_2262 <= tmp1_q0;
        buff_A0_1_load_1_reg_2297 <= buff_A0_1_q0;
        buff_A0_1_load_reg_2277 <= buff_A0_1_q1;
        buff_A0_load_1_reg_2287 <= buff_A0_q0;
        buff_A0_load_reg_2267 <= buff_A0_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        first_iter_1_reg_1901 <= first_iter_1_fu_1355_p2;
        tmp1_addr_reg_1905 <= p_cast_fu_1445_p1;
        tmp1_addr_reg_1905_pp0_iter1_reg <= tmp1_addr_reg_1905;
        tmp_5_reg_2258 <= add_ln30_fu_1499_p2[32'd6];
        tmp_5_reg_2258_pp0_iter1_reg <= tmp_5_reg_2258;
        trunc_ln30_reg_2230 <= trunc_ln30_fu_1450_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1165 <= grp_fu_1113_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_1171 <= grp_fu_1113_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_1177 <= grp_fu_1113_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_1183 <= grp_fu_1113_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_1189 <= grp_fu_1109_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_1_reg_2282 <= tmp_1_fu_1593_p35;
        tmp_2_reg_2292 <= tmp_2_fu_1664_p35;
        tmp_3_reg_2302 <= tmp_3_fu_1735_p35;
        tmp_reg_2272 <= tmp_fu_1522_p35;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_1866 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
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
    if (((1'b0 == ap_block_pp0_stage28_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_1_ce0_local = 1'b1;
    end else begin
        buff_A0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_1_ce1_local = 1'b1;
    end else begin
        buff_A0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_ce0_local = 1'b1;
    end else begin
        buff_A0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_ce1_local = 1'b1;
    end else begin
        buff_A0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_10_ce0_local = 1'b1;
    end else begin
        buff_B0_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_11_ce0_local = 1'b1;
    end else begin
        buff_B0_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_12_ce0_local = 1'b1;
    end else begin
        buff_B0_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_13_ce0_local = 1'b1;
    end else begin
        buff_B0_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_14_ce0_local = 1'b1;
    end else begin
        buff_B0_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_15_ce0_local = 1'b1;
    end else begin
        buff_B0_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_16_ce0_local = 1'b1;
    end else begin
        buff_B0_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_17_ce0_local = 1'b1;
    end else begin
        buff_B0_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_18_ce0_local = 1'b1;
    end else begin
        buff_B0_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_19_ce0_local = 1'b1;
    end else begin
        buff_B0_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_1_ce0_local = 1'b1;
    end else begin
        buff_B0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_20_ce0_local = 1'b1;
    end else begin
        buff_B0_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_21_ce0_local = 1'b1;
    end else begin
        buff_B0_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_22_ce0_local = 1'b1;
    end else begin
        buff_B0_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_23_ce0_local = 1'b1;
    end else begin
        buff_B0_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_24_ce0_local = 1'b1;
    end else begin
        buff_B0_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_25_ce0_local = 1'b1;
    end else begin
        buff_B0_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_26_ce0_local = 1'b1;
    end else begin
        buff_B0_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_27_ce0_local = 1'b1;
    end else begin
        buff_B0_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_28_ce0_local = 1'b1;
    end else begin
        buff_B0_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_29_ce0_local = 1'b1;
    end else begin
        buff_B0_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_2_ce0_local = 1'b1;
    end else begin
        buff_B0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_30_ce0_local = 1'b1;
    end else begin
        buff_B0_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_31_ce0_local = 1'b1;
    end else begin
        buff_B0_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_32_ce0_local = 1'b1;
    end else begin
        buff_B0_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_33_ce0_local = 1'b1;
    end else begin
        buff_B0_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_34_ce0_local = 1'b1;
    end else begin
        buff_B0_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_35_ce0_local = 1'b1;
    end else begin
        buff_B0_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_36_ce0_local = 1'b1;
    end else begin
        buff_B0_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_37_ce0_local = 1'b1;
    end else begin
        buff_B0_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_38_ce0_local = 1'b1;
    end else begin
        buff_B0_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_39_ce0_local = 1'b1;
    end else begin
        buff_B0_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_3_ce0_local = 1'b1;
    end else begin
        buff_B0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_40_ce0_local = 1'b1;
    end else begin
        buff_B0_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_41_ce0_local = 1'b1;
    end else begin
        buff_B0_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_42_ce0_local = 1'b1;
    end else begin
        buff_B0_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_43_ce0_local = 1'b1;
    end else begin
        buff_B0_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_44_ce0_local = 1'b1;
    end else begin
        buff_B0_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_45_ce0_local = 1'b1;
    end else begin
        buff_B0_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_46_ce0_local = 1'b1;
    end else begin
        buff_B0_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_47_ce0_local = 1'b1;
    end else begin
        buff_B0_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_48_ce0_local = 1'b1;
    end else begin
        buff_B0_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_49_ce0_local = 1'b1;
    end else begin
        buff_B0_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_4_ce0_local = 1'b1;
    end else begin
        buff_B0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_50_ce0_local = 1'b1;
    end else begin
        buff_B0_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_51_ce0_local = 1'b1;
    end else begin
        buff_B0_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_52_ce0_local = 1'b1;
    end else begin
        buff_B0_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_53_ce0_local = 1'b1;
    end else begin
        buff_B0_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_54_ce0_local = 1'b1;
    end else begin
        buff_B0_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_55_ce0_local = 1'b1;
    end else begin
        buff_B0_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_56_ce0_local = 1'b1;
    end else begin
        buff_B0_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_57_ce0_local = 1'b1;
    end else begin
        buff_B0_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_58_ce0_local = 1'b1;
    end else begin
        buff_B0_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_59_ce0_local = 1'b1;
    end else begin
        buff_B0_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_5_ce0_local = 1'b1;
    end else begin
        buff_B0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_60_ce0_local = 1'b1;
    end else begin
        buff_B0_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_61_ce0_local = 1'b1;
    end else begin
        buff_B0_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_62_ce0_local = 1'b1;
    end else begin
        buff_B0_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_63_ce0_local = 1'b1;
    end else begin
        buff_B0_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_6_ce0_local = 1'b1;
    end else begin
        buff_B0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_7_ce0_local = 1'b1;
    end else begin
        buff_B0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_8_ce0_local = 1'b1;
    end else begin
        buff_B0_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_9_ce0_local = 1'b1;
    end else begin
        buff_B0_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_ce0_local = 1'b1;
    end else begin
        buff_B0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        grp_fu_1157_p0 = reg_1189;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1157_p0 = empty_fu_252;
    end else begin
        grp_fu_1157_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1157_p1 = reg_1183;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_1157_p1 = reg_1177;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1157_p1 = reg_1171;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1157_p1 = reg_1165;
    end else begin
        grp_fu_1157_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_1161_p0 = reg_1183;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_1161_p0 = reg_1177;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_1161_p0 = reg_1171;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_1161_p0 = reg_1165;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_1161_p0 = buff_A0_1_load_1_reg_2297;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1161_p0 = buff_A0_load_1_reg_2287;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1161_p0 = buff_A0_1_load_reg_2277;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1161_p0 = buff_A0_load_reg_2267;
        end else begin
            grp_fu_1161_p0 = 'bx;
        end
    end else begin
        grp_fu_1161_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1161_p1 = tmp_3_reg_2302;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1161_p1 = tmp_2_reg_2292;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1161_p1 = tmp_1_reg_2282;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1161_p1 = tmp_reg_2272;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_1161_p1 = alpha;
    end else begin
        grp_fu_1161_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        tmp1_address0_local = tmp1_addr_reg_1905_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_address0_local = p_cast_fu_1445_p1;
    end else begin
        tmp1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_5_reg_2258_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln27_1_fu_1232_p2 = (indvar_flatten21_fu_248 + 17'd1);
assign add_ln27_fu_1247_p2 = (i_fu_244 + 7'd1);
assign add_ln28_1_fu_1321_p2 = (indvar_flatten7_fu_240 + 12'd1);
assign add_ln28_fu_1307_p2 = (select_ln5_fu_1259_p3 + 7'd1);
assign add_ln30_fu_1499_p2 = (k_mid2_reg_1892 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1656 = ((icmp_ln27_reg_1866 == 1'd0) & (first_iter_1_reg_1901 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_ready = ap_ready_sig;
assign buff_A0_1_address0 = zext_ln31_1_fu_1493_p1;
assign buff_A0_1_address1 = zext_ln31_fu_1469_p1;
assign buff_A0_1_ce0 = buff_A0_1_ce0_local;
assign buff_A0_1_ce1 = buff_A0_1_ce1_local;
assign buff_A0_address0 = zext_ln31_1_fu_1493_p1;
assign buff_A0_address1 = zext_ln31_fu_1469_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_A0_ce1 = buff_A0_ce1_local;
assign buff_B0_10_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_10_ce0 = buff_B0_10_ce0_local;
assign buff_B0_11_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_11_ce0 = buff_B0_11_ce0_local;
assign buff_B0_12_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_12_ce0 = buff_B0_12_ce0_local;
assign buff_B0_13_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_13_ce0 = buff_B0_13_ce0_local;
assign buff_B0_14_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_14_ce0 = buff_B0_14_ce0_local;
assign buff_B0_15_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_15_ce0 = buff_B0_15_ce0_local;
assign buff_B0_16_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_16_ce0 = buff_B0_16_ce0_local;
assign buff_B0_17_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_17_ce0 = buff_B0_17_ce0_local;
assign buff_B0_18_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_18_ce0 = buff_B0_18_ce0_local;
assign buff_B0_19_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_19_ce0 = buff_B0_19_ce0_local;
assign buff_B0_1_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_1_ce0 = buff_B0_1_ce0_local;
assign buff_B0_20_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_20_ce0 = buff_B0_20_ce0_local;
assign buff_B0_21_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_21_ce0 = buff_B0_21_ce0_local;
assign buff_B0_22_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_22_ce0 = buff_B0_22_ce0_local;
assign buff_B0_23_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_23_ce0 = buff_B0_23_ce0_local;
assign buff_B0_24_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_24_ce0 = buff_B0_24_ce0_local;
assign buff_B0_25_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_25_ce0 = buff_B0_25_ce0_local;
assign buff_B0_26_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_26_ce0 = buff_B0_26_ce0_local;
assign buff_B0_27_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_27_ce0 = buff_B0_27_ce0_local;
assign buff_B0_28_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_28_ce0 = buff_B0_28_ce0_local;
assign buff_B0_29_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_29_ce0 = buff_B0_29_ce0_local;
assign buff_B0_2_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_2_ce0 = buff_B0_2_ce0_local;
assign buff_B0_30_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_30_ce0 = buff_B0_30_ce0_local;
assign buff_B0_31_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_31_ce0 = buff_B0_31_ce0_local;
assign buff_B0_32_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_32_ce0 = buff_B0_32_ce0_local;
assign buff_B0_33_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_33_ce0 = buff_B0_33_ce0_local;
assign buff_B0_34_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_34_ce0 = buff_B0_34_ce0_local;
assign buff_B0_35_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_35_ce0 = buff_B0_35_ce0_local;
assign buff_B0_36_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_36_ce0 = buff_B0_36_ce0_local;
assign buff_B0_37_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_37_ce0 = buff_B0_37_ce0_local;
assign buff_B0_38_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_38_ce0 = buff_B0_38_ce0_local;
assign buff_B0_39_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_39_ce0 = buff_B0_39_ce0_local;
assign buff_B0_3_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_3_ce0 = buff_B0_3_ce0_local;
assign buff_B0_40_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_40_ce0 = buff_B0_40_ce0_local;
assign buff_B0_41_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_41_ce0 = buff_B0_41_ce0_local;
assign buff_B0_42_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_42_ce0 = buff_B0_42_ce0_local;
assign buff_B0_43_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_43_ce0 = buff_B0_43_ce0_local;
assign buff_B0_44_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_44_ce0 = buff_B0_44_ce0_local;
assign buff_B0_45_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_45_ce0 = buff_B0_45_ce0_local;
assign buff_B0_46_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_46_ce0 = buff_B0_46_ce0_local;
assign buff_B0_47_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_47_ce0 = buff_B0_47_ce0_local;
assign buff_B0_48_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_48_ce0 = buff_B0_48_ce0_local;
assign buff_B0_49_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_49_ce0 = buff_B0_49_ce0_local;
assign buff_B0_4_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_4_ce0 = buff_B0_4_ce0_local;
assign buff_B0_50_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_50_ce0 = buff_B0_50_ce0_local;
assign buff_B0_51_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_51_ce0 = buff_B0_51_ce0_local;
assign buff_B0_52_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_52_ce0 = buff_B0_52_ce0_local;
assign buff_B0_53_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_53_ce0 = buff_B0_53_ce0_local;
assign buff_B0_54_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_54_ce0 = buff_B0_54_ce0_local;
assign buff_B0_55_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_55_ce0 = buff_B0_55_ce0_local;
assign buff_B0_56_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_56_ce0 = buff_B0_56_ce0_local;
assign buff_B0_57_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_57_ce0 = buff_B0_57_ce0_local;
assign buff_B0_58_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_58_ce0 = buff_B0_58_ce0_local;
assign buff_B0_59_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_59_ce0 = buff_B0_59_ce0_local;
assign buff_B0_5_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_5_ce0 = buff_B0_5_ce0_local;
assign buff_B0_60_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_60_ce0 = buff_B0_60_ce0_local;
assign buff_B0_61_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_61_ce0 = buff_B0_61_ce0_local;
assign buff_B0_62_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_62_ce0 = buff_B0_62_ce0_local;
assign buff_B0_63_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_63_ce0 = buff_B0_63_ce0_local;
assign buff_B0_6_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_6_ce0 = buff_B0_6_ce0_local;
assign buff_B0_7_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_7_ce0 = buff_B0_7_ce0_local;
assign buff_B0_8_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_8_ce0 = buff_B0_8_ce0_local;
assign buff_B0_9_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_9_ce0 = buff_B0_9_ce0_local;
assign buff_B0_address0 = zext_ln28_fu_1367_p1;
assign buff_B0_ce0 = buff_B0_ce0_local;
assign empty_13_fu_1439_p2 = (tmp_6_fu_1360_p3 + select_ln28_cast_fu_1435_p1);
assign first_iter_1_fu_1355_p2 = ((k_mid2_reg_1892 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_1109_p_ce = 1'b1;
assign grp_fu_1109_p_din0 = grp_fu_1157_p0;
assign grp_fu_1109_p_din1 = grp_fu_1157_p1;
assign grp_fu_1109_p_opcode = 2'd0;
assign grp_fu_1113_p_ce = 1'b1;
assign grp_fu_1113_p_din0 = grp_fu_1161_p0;
assign grp_fu_1113_p_din1 = grp_fu_1161_p1;
assign icmp_ln27_fu_1226_p2 = ((indvar_flatten21_fu_248 == 17'd65536) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_1253_p2 = ((indvar_flatten7_fu_240 == 12'd1024) ? 1'b1 : 1'b0);
assign k_mid2_fu_1313_p3 = ((or_ln5_fu_1289_p2[0:0] == 1'b1) ? select_ln5_1_fu_1267_p3 : 7'd0);
assign lshr_ln5_1_fu_1453_p4 = {{k_mid2_reg_1892[5:1]}};
assign or_ln5_fu_1289_p2 = (xor_ln30_fu_1283_p2 | icmp_ln28_fu_1253_p2);
assign p_cast_fu_1445_p1 = empty_13_fu_1439_p2;
assign select_ln27_fu_1295_p3 = ((icmp_ln28_fu_1253_p2[0:0] == 1'b1) ? add_ln27_fu_1247_p2 : i_fu_244);
assign select_ln28_1_fu_1327_p3 = ((icmp_ln28_fu_1253_p2[0:0] == 1'b1) ? 12'd1 : add_ln28_1_fu_1321_p2);
assign select_ln28_cast_fu_1435_p1 = select_ln28_fu_1350_p3;
assign select_ln28_fu_1350_p3 = ((or_ln5_reg_1875[0:0] == 1'b1) ? select_ln5_reg_1870 : add_ln28_reg_1887);
assign select_ln5_1_fu_1267_p3 = ((icmp_ln28_fu_1253_p2[0:0] == 1'b1) ? 7'd0 : k_fu_232);
assign select_ln5_fu_1259_p3 = ((icmp_ln28_fu_1253_p2[0:0] == 1'b1) ? 7'd0 : j_fu_236);
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = reg_1189;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_1_fu_1593_p33 = 'bx;
assign tmp_2_fu_1664_p33 = 'bx;
assign tmp_3_fu_1735_p33 = 'bx;
assign tmp_4_fu_1275_p3 = k_fu_232[32'd6];
assign tmp_6_fu_1360_p3 = {{trunc_ln28_reg_1880}, {6'd0}};
assign tmp_8_fu_1462_p3 = {{trunc_ln28_reg_1880}, {lshr_ln5_1_fu_1453_p4}};
assign tmp_9_fu_1475_p4 = {{k_mid2_reg_1892[5:2]}};
assign tmp_fu_1522_p33 = 'bx;
assign tmp_s_fu_1484_p4 = {{{trunc_ln28_reg_1880}, {tmp_9_fu_1475_p4}}, {1'd1}};
assign trunc_ln28_fu_1303_p1 = select_ln27_fu_1295_p3[5:0];
assign trunc_ln30_fu_1450_p1 = k_mid2_reg_1892[5:0];
assign xor_ln30_fu_1283_p2 = (tmp_4_fu_1275_p3 ^ 1'd1);
assign zext_ln28_fu_1367_p1 = select_ln28_fu_1350_p3;
assign zext_ln31_1_fu_1493_p1 = tmp_s_fu_1484_p4;
assign zext_ln31_fu_1469_p1 = tmp_8_fu_1462_p3;
endmodule 