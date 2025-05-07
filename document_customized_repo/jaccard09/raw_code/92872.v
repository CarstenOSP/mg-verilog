module syr2k_syr2k_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B0_address0,buff_B0_ce0,buff_B0_q0,buff_B0_2_address0,buff_B0_2_ce0,buff_B0_2_q0,buff_B0_4_address0,buff_B0_4_ce0,buff_B0_4_q0,buff_B0_6_address0,buff_B0_6_ce0,buff_B0_6_q0,buff_B0_8_address0,buff_B0_8_ce0,buff_B0_8_q0,buff_B0_10_address0,buff_B0_10_ce0,buff_B0_10_q0,buff_B0_12_address0,buff_B0_12_ce0,buff_B0_12_q0,buff_B0_14_address0,buff_B0_14_ce0,buff_B0_14_q0,buff_B0_16_address0,buff_B0_16_ce0,buff_B0_16_q0,buff_B0_18_address0,buff_B0_18_ce0,buff_B0_18_q0,buff_B0_20_address0,buff_B0_20_ce0,buff_B0_20_q0,buff_B0_22_address0,buff_B0_22_ce0,buff_B0_22_q0,buff_B0_24_address0,buff_B0_24_ce0,buff_B0_24_q0,buff_B0_26_address0,buff_B0_26_ce0,buff_B0_26_q0,buff_B0_28_address0,buff_B0_28_ce0,buff_B0_28_q0,buff_B0_30_address0,buff_B0_30_ce0,buff_B0_30_q0,buff_B0_32_address0,buff_B0_32_ce0,buff_B0_32_q0,buff_B0_34_address0,buff_B0_34_ce0,buff_B0_34_q0,buff_B0_36_address0,buff_B0_36_ce0,buff_B0_36_q0,buff_B0_38_address0,buff_B0_38_ce0,buff_B0_38_q0,buff_B0_40_address0,buff_B0_40_ce0,buff_B0_40_q0,buff_B0_42_address0,buff_B0_42_ce0,buff_B0_42_q0,buff_B0_44_address0,buff_B0_44_ce0,buff_B0_44_q0,buff_B0_46_address0,buff_B0_46_ce0,buff_B0_46_q0,buff_B0_48_address0,buff_B0_48_ce0,buff_B0_48_q0,buff_B0_50_address0,buff_B0_50_ce0,buff_B0_50_q0,buff_B0_52_address0,buff_B0_52_ce0,buff_B0_52_q0,buff_B0_54_address0,buff_B0_54_ce0,buff_B0_54_q0,buff_B0_56_address0,buff_B0_56_ce0,buff_B0_56_q0,buff_B0_58_address0,buff_B0_58_ce0,buff_B0_58_q0,buff_B0_60_address0,buff_B0_60_ce0,buff_B0_60_q0,buff_B0_62_address0,buff_B0_62_ce0,buff_B0_62_q0,buff_B0_1_address0,buff_B0_1_ce0,buff_B0_1_q0,buff_B0_3_address0,buff_B0_3_ce0,buff_B0_3_q0,buff_B0_5_address0,buff_B0_5_ce0,buff_B0_5_q0,buff_B0_7_address0,buff_B0_7_ce0,buff_B0_7_q0,buff_B0_9_address0,buff_B0_9_ce0,buff_B0_9_q0,buff_B0_11_address0,buff_B0_11_ce0,buff_B0_11_q0,buff_B0_13_address0,buff_B0_13_ce0,buff_B0_13_q0,buff_B0_15_address0,buff_B0_15_ce0,buff_B0_15_q0,buff_B0_17_address0,buff_B0_17_ce0,buff_B0_17_q0,buff_B0_19_address0,buff_B0_19_ce0,buff_B0_19_q0,buff_B0_21_address0,buff_B0_21_ce0,buff_B0_21_q0,buff_B0_23_address0,buff_B0_23_ce0,buff_B0_23_q0,buff_B0_25_address0,buff_B0_25_ce0,buff_B0_25_q0,buff_B0_27_address0,buff_B0_27_ce0,buff_B0_27_q0,buff_B0_29_address0,buff_B0_29_ce0,buff_B0_29_q0,buff_B0_31_address0,buff_B0_31_ce0,buff_B0_31_q0,buff_B0_33_address0,buff_B0_33_ce0,buff_B0_33_q0,buff_B0_35_address0,buff_B0_35_ce0,buff_B0_35_q0,buff_B0_37_address0,buff_B0_37_ce0,buff_B0_37_q0,buff_B0_39_address0,buff_B0_39_ce0,buff_B0_39_q0,buff_B0_41_address0,buff_B0_41_ce0,buff_B0_41_q0,buff_B0_43_address0,buff_B0_43_ce0,buff_B0_43_q0,buff_B0_45_address0,buff_B0_45_ce0,buff_B0_45_q0,buff_B0_47_address0,buff_B0_47_ce0,buff_B0_47_q0,buff_B0_49_address0,buff_B0_49_ce0,buff_B0_49_q0,buff_B0_51_address0,buff_B0_51_ce0,buff_B0_51_q0,buff_B0_53_address0,buff_B0_53_ce0,buff_B0_53_q0,buff_B0_55_address0,buff_B0_55_ce0,buff_B0_55_q0,buff_B0_57_address0,buff_B0_57_ce0,buff_B0_57_q0,buff_B0_59_address0,buff_B0_59_ce0,buff_B0_59_q0,buff_B0_61_address0,buff_B0_61_ce0,buff_B0_61_q0,buff_B0_63_address0,buff_B0_63_ce0,buff_B0_63_q0,buff_A0_address0,buff_A0_ce0,buff_A0_q0,buff_A0_address1,buff_A0_ce1,buff_A0_q1,alpha,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_we0,tmp1_1_d0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_we0,tmp1_2_d0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_we0,tmp1_3_d0,tmp1_3_q0,grp_fu_1195_p_din0,grp_fu_1195_p_din1,grp_fu_1195_p_opcode,grp_fu_1195_p_dout0,grp_fu_1195_p_ce,grp_fu_1199_p_din0,grp_fu_1199_p_din1,grp_fu_1199_p_dout0,grp_fu_1199_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 15'd1;
parameter    ap_ST_fsm_pp0_stage1 = 15'd2;
parameter    ap_ST_fsm_pp0_stage2 = 15'd4;
parameter    ap_ST_fsm_pp0_stage3 = 15'd8;
parameter    ap_ST_fsm_pp0_stage4 = 15'd16;
parameter    ap_ST_fsm_pp0_stage5 = 15'd32;
parameter    ap_ST_fsm_pp0_stage6 = 15'd64;
parameter    ap_ST_fsm_pp0_stage7 = 15'd128;
parameter    ap_ST_fsm_pp0_stage8 = 15'd256;
parameter    ap_ST_fsm_pp0_stage9 = 15'd512;
parameter    ap_ST_fsm_pp0_stage10 = 15'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 15'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 15'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 15'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 15'd16384;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] buff_B0_address0;
output   buff_B0_ce0;
input  [31:0] buff_B0_q0;
output  [5:0] buff_B0_2_address0;
output   buff_B0_2_ce0;
input  [31:0] buff_B0_2_q0;
output  [5:0] buff_B0_4_address0;
output   buff_B0_4_ce0;
input  [31:0] buff_B0_4_q0;
output  [5:0] buff_B0_6_address0;
output   buff_B0_6_ce0;
input  [31:0] buff_B0_6_q0;
output  [5:0] buff_B0_8_address0;
output   buff_B0_8_ce0;
input  [31:0] buff_B0_8_q0;
output  [5:0] buff_B0_10_address0;
output   buff_B0_10_ce0;
input  [31:0] buff_B0_10_q0;
output  [5:0] buff_B0_12_address0;
output   buff_B0_12_ce0;
input  [31:0] buff_B0_12_q0;
output  [5:0] buff_B0_14_address0;
output   buff_B0_14_ce0;
input  [31:0] buff_B0_14_q0;
output  [5:0] buff_B0_16_address0;
output   buff_B0_16_ce0;
input  [31:0] buff_B0_16_q0;
output  [5:0] buff_B0_18_address0;
output   buff_B0_18_ce0;
input  [31:0] buff_B0_18_q0;
output  [5:0] buff_B0_20_address0;
output   buff_B0_20_ce0;
input  [31:0] buff_B0_20_q0;
output  [5:0] buff_B0_22_address0;
output   buff_B0_22_ce0;
input  [31:0] buff_B0_22_q0;
output  [5:0] buff_B0_24_address0;
output   buff_B0_24_ce0;
input  [31:0] buff_B0_24_q0;
output  [5:0] buff_B0_26_address0;
output   buff_B0_26_ce0;
input  [31:0] buff_B0_26_q0;
output  [5:0] buff_B0_28_address0;
output   buff_B0_28_ce0;
input  [31:0] buff_B0_28_q0;
output  [5:0] buff_B0_30_address0;
output   buff_B0_30_ce0;
input  [31:0] buff_B0_30_q0;
output  [5:0] buff_B0_32_address0;
output   buff_B0_32_ce0;
input  [31:0] buff_B0_32_q0;
output  [5:0] buff_B0_34_address0;
output   buff_B0_34_ce0;
input  [31:0] buff_B0_34_q0;
output  [5:0] buff_B0_36_address0;
output   buff_B0_36_ce0;
input  [31:0] buff_B0_36_q0;
output  [5:0] buff_B0_38_address0;
output   buff_B0_38_ce0;
input  [31:0] buff_B0_38_q0;
output  [5:0] buff_B0_40_address0;
output   buff_B0_40_ce0;
input  [31:0] buff_B0_40_q0;
output  [5:0] buff_B0_42_address0;
output   buff_B0_42_ce0;
input  [31:0] buff_B0_42_q0;
output  [5:0] buff_B0_44_address0;
output   buff_B0_44_ce0;
input  [31:0] buff_B0_44_q0;
output  [5:0] buff_B0_46_address0;
output   buff_B0_46_ce0;
input  [31:0] buff_B0_46_q0;
output  [5:0] buff_B0_48_address0;
output   buff_B0_48_ce0;
input  [31:0] buff_B0_48_q0;
output  [5:0] buff_B0_50_address0;
output   buff_B0_50_ce0;
input  [31:0] buff_B0_50_q0;
output  [5:0] buff_B0_52_address0;
output   buff_B0_52_ce0;
input  [31:0] buff_B0_52_q0;
output  [5:0] buff_B0_54_address0;
output   buff_B0_54_ce0;
input  [31:0] buff_B0_54_q0;
output  [5:0] buff_B0_56_address0;
output   buff_B0_56_ce0;
input  [31:0] buff_B0_56_q0;
output  [5:0] buff_B0_58_address0;
output   buff_B0_58_ce0;
input  [31:0] buff_B0_58_q0;
output  [5:0] buff_B0_60_address0;
output   buff_B0_60_ce0;
input  [31:0] buff_B0_60_q0;
output  [5:0] buff_B0_62_address0;
output   buff_B0_62_ce0;
input  [31:0] buff_B0_62_q0;
output  [5:0] buff_B0_1_address0;
output   buff_B0_1_ce0;
input  [31:0] buff_B0_1_q0;
output  [5:0] buff_B0_3_address0;
output   buff_B0_3_ce0;
input  [31:0] buff_B0_3_q0;
output  [5:0] buff_B0_5_address0;
output   buff_B0_5_ce0;
input  [31:0] buff_B0_5_q0;
output  [5:0] buff_B0_7_address0;
output   buff_B0_7_ce0;
input  [31:0] buff_B0_7_q0;
output  [5:0] buff_B0_9_address0;
output   buff_B0_9_ce0;
input  [31:0] buff_B0_9_q0;
output  [5:0] buff_B0_11_address0;
output   buff_B0_11_ce0;
input  [31:0] buff_B0_11_q0;
output  [5:0] buff_B0_13_address0;
output   buff_B0_13_ce0;
input  [31:0] buff_B0_13_q0;
output  [5:0] buff_B0_15_address0;
output   buff_B0_15_ce0;
input  [31:0] buff_B0_15_q0;
output  [5:0] buff_B0_17_address0;
output   buff_B0_17_ce0;
input  [31:0] buff_B0_17_q0;
output  [5:0] buff_B0_19_address0;
output   buff_B0_19_ce0;
input  [31:0] buff_B0_19_q0;
output  [5:0] buff_B0_21_address0;
output   buff_B0_21_ce0;
input  [31:0] buff_B0_21_q0;
output  [5:0] buff_B0_23_address0;
output   buff_B0_23_ce0;
input  [31:0] buff_B0_23_q0;
output  [5:0] buff_B0_25_address0;
output   buff_B0_25_ce0;
input  [31:0] buff_B0_25_q0;
output  [5:0] buff_B0_27_address0;
output   buff_B0_27_ce0;
input  [31:0] buff_B0_27_q0;
output  [5:0] buff_B0_29_address0;
output   buff_B0_29_ce0;
input  [31:0] buff_B0_29_q0;
output  [5:0] buff_B0_31_address0;
output   buff_B0_31_ce0;
input  [31:0] buff_B0_31_q0;
output  [5:0] buff_B0_33_address0;
output   buff_B0_33_ce0;
input  [31:0] buff_B0_33_q0;
output  [5:0] buff_B0_35_address0;
output   buff_B0_35_ce0;
input  [31:0] buff_B0_35_q0;
output  [5:0] buff_B0_37_address0;
output   buff_B0_37_ce0;
input  [31:0] buff_B0_37_q0;
output  [5:0] buff_B0_39_address0;
output   buff_B0_39_ce0;
input  [31:0] buff_B0_39_q0;
output  [5:0] buff_B0_41_address0;
output   buff_B0_41_ce0;
input  [31:0] buff_B0_41_q0;
output  [5:0] buff_B0_43_address0;
output   buff_B0_43_ce0;
input  [31:0] buff_B0_43_q0;
output  [5:0] buff_B0_45_address0;
output   buff_B0_45_ce0;
input  [31:0] buff_B0_45_q0;
output  [5:0] buff_B0_47_address0;
output   buff_B0_47_ce0;
input  [31:0] buff_B0_47_q0;
output  [5:0] buff_B0_49_address0;
output   buff_B0_49_ce0;
input  [31:0] buff_B0_49_q0;
output  [5:0] buff_B0_51_address0;
output   buff_B0_51_ce0;
input  [31:0] buff_B0_51_q0;
output  [5:0] buff_B0_53_address0;
output   buff_B0_53_ce0;
input  [31:0] buff_B0_53_q0;
output  [5:0] buff_B0_55_address0;
output   buff_B0_55_ce0;
input  [31:0] buff_B0_55_q0;
output  [5:0] buff_B0_57_address0;
output   buff_B0_57_ce0;
input  [31:0] buff_B0_57_q0;
output  [5:0] buff_B0_59_address0;
output   buff_B0_59_ce0;
input  [31:0] buff_B0_59_q0;
output  [5:0] buff_B0_61_address0;
output   buff_B0_61_ce0;
input  [31:0] buff_B0_61_q0;
output  [5:0] buff_B0_63_address0;
output   buff_B0_63_ce0;
input  [31:0] buff_B0_63_q0;
output  [11:0] buff_A0_address0;
output   buff_A0_ce0;
input  [31:0] buff_A0_q0;
output  [11:0] buff_A0_address1;
output   buff_A0_ce1;
input  [31:0] buff_A0_q1;
input  [31:0] alpha;
output  [9:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
input  [31:0] tmp1_q0;
output  [9:0] tmp1_1_address0;
output   tmp1_1_ce0;
output   tmp1_1_we0;
output  [31:0] tmp1_1_d0;
input  [31:0] tmp1_1_q0;
output  [9:0] tmp1_2_address0;
output   tmp1_2_ce0;
output   tmp1_2_we0;
output  [31:0] tmp1_2_d0;
input  [31:0] tmp1_2_q0;
output  [9:0] tmp1_3_address0;
output   tmp1_3_ce0;
output   tmp1_3_we0;
output  [31:0] tmp1_3_d0;
input  [31:0] tmp1_3_q0;
output  [31:0] grp_fu_1195_p_din0;
output  [31:0] grp_fu_1195_p_din1;
output  [1:0] grp_fu_1195_p_opcode;
input  [31:0] grp_fu_1195_p_dout0;
output   grp_fu_1195_p_ce;
output  [31:0] grp_fu_1199_p_din0;
output  [31:0] grp_fu_1199_p_din1;
input  [31:0] grp_fu_1199_p_dout0;
output   grp_fu_1199_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] icmp_ln27_reg_1928;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [31:0] reg_1225;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage11_11001;
reg   [31:0] reg_1231;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln27_fu_1271_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [6:0] k_load_reg_1932;
wire   [0:0] icmp_ln28_fu_1295_p2;
reg   [0:0] icmp_ln28_reg_1937;
wire   [0:0] or_ln5_fu_1315_p2;
reg   [0:0] or_ln5_reg_1943;
wire   [5:0] trunc_ln28_fu_1329_p1;
reg   [5:0] trunc_ln28_reg_1949;
wire   [0:0] first_iter_1_fu_1398_p2;
reg   [0:0] first_iter_1_reg_1956;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [1:0] trunc_ln28_1_fu_1411_p1;
reg   [1:0] trunc_ln28_1_reg_1960;
reg   [1:0] trunc_ln28_1_reg_1960_pp0_iter1_reg;
reg   [9:0] tmp1_addr_reg_1965;
reg   [9:0] tmp1_addr_reg_1965_pp0_iter1_reg;
reg   [9:0] tmp1_1_addr_reg_1970;
reg   [9:0] tmp1_1_addr_reg_1970_pp0_iter1_reg;
reg   [9:0] tmp1_2_addr_reg_1975;
reg   [9:0] tmp1_2_addr_reg_1975_pp0_iter1_reg;
reg   [9:0] tmp1_3_addr_reg_1980;
reg   [9:0] tmp1_3_addr_reg_1980_pp0_iter1_reg;
wire   [5:0] trunc_ln30_fu_1523_p1;
reg   [5:0] trunc_ln30_reg_2310;
reg   [0:0] tmp_4_reg_2321;
reg   [0:0] tmp_4_reg_2321_pp0_iter1_reg;
wire   [31:0] tmp_fu_1575_p11;
reg   [31:0] tmp_reg_2325;
reg   [31:0] buff_A0_load_reg_2330;
wire   [31:0] tmp_2_fu_1598_p67;
reg   [31:0] tmp_2_reg_2335;
reg   [31:0] buff_A0_load_1_reg_2340;
wire   [31:0] tmp_3_fu_1733_p67;
reg   [31:0] tmp_3_reg_2345;
reg   [31:0] mul_1_reg_2350;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [31:0] mul74_1_reg_2360;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] tmp_8_cast_fu_1432_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln28_fu_1440_p1;
wire   [63:0] zext_ln31_2_fu_1518_p1;
wire   [63:0] zext_ln31_1_fu_1546_p1;
reg   [6:0] k_fu_278;
wire   [6:0] add_ln30_fu_1551_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_282;
wire   [6:0] select_ln28_fu_1391_p3;
reg   [12:0] indvar_flatten9_fu_286;
wire   [12:0] select_ln28_1_fu_1339_p3;
reg   [6:0] i_fu_290;
wire   [6:0] select_ln27_fu_1321_p3;
reg   [17:0] indvar_flatten23_fu_294;
wire   [17:0] add_ln27_1_fu_1277_p2;
reg   [31:0] empty_fu_298;
wire    ap_block_pp0_stage12;
reg    tmp1_ce0_local;
reg   [9:0] tmp1_address0_local;
reg    tmp1_we0_local;
wire    ap_block_pp0_stage11;
reg    tmp1_1_ce0_local;
reg   [9:0] tmp1_1_address0_local;
reg    tmp1_1_we0_local;
reg    tmp1_2_ce0_local;
reg   [9:0] tmp1_2_address0_local;
reg    tmp1_2_we0_local;
reg    tmp1_3_ce0_local;
reg   [9:0] tmp1_3_address0_local;
reg    tmp1_3_we0_local;
reg    buff_B0_ce0_local;
reg    buff_B0_2_ce0_local;
reg    buff_B0_4_ce0_local;
reg    buff_B0_6_ce0_local;
reg    buff_B0_8_ce0_local;
reg    buff_B0_10_ce0_local;
reg    buff_B0_12_ce0_local;
reg    buff_B0_14_ce0_local;
reg    buff_B0_16_ce0_local;
reg    buff_B0_18_ce0_local;
reg    buff_B0_20_ce0_local;
reg    buff_B0_22_ce0_local;
reg    buff_B0_24_ce0_local;
reg    buff_B0_26_ce0_local;
reg    buff_B0_28_ce0_local;
reg    buff_B0_30_ce0_local;
reg    buff_B0_32_ce0_local;
reg    buff_B0_34_ce0_local;
reg    buff_B0_36_ce0_local;
reg    buff_B0_38_ce0_local;
reg    buff_B0_40_ce0_local;
reg    buff_B0_42_ce0_local;
reg    buff_B0_44_ce0_local;
reg    buff_B0_46_ce0_local;
reg    buff_B0_48_ce0_local;
reg    buff_B0_50_ce0_local;
reg    buff_B0_52_ce0_local;
reg    buff_B0_54_ce0_local;
reg    buff_B0_56_ce0_local;
reg    buff_B0_58_ce0_local;
reg    buff_B0_60_ce0_local;
reg    buff_B0_62_ce0_local;
reg    buff_B0_1_ce0_local;
reg    buff_B0_3_ce0_local;
reg    buff_B0_5_ce0_local;
reg    buff_B0_7_ce0_local;
reg    buff_B0_9_ce0_local;
reg    buff_B0_11_ce0_local;
reg    buff_B0_13_ce0_local;
reg    buff_B0_15_ce0_local;
reg    buff_B0_17_ce0_local;
reg    buff_B0_19_ce0_local;
reg    buff_B0_21_ce0_local;
reg    buff_B0_23_ce0_local;
reg    buff_B0_25_ce0_local;
reg    buff_B0_27_ce0_local;
reg    buff_B0_29_ce0_local;
reg    buff_B0_31_ce0_local;
reg    buff_B0_33_ce0_local;
reg    buff_B0_35_ce0_local;
reg    buff_B0_37_ce0_local;
reg    buff_B0_39_ce0_local;
reg    buff_B0_41_ce0_local;
reg    buff_B0_43_ce0_local;
reg    buff_B0_45_ce0_local;
reg    buff_B0_47_ce0_local;
reg    buff_B0_49_ce0_local;
reg    buff_B0_51_ce0_local;
reg    buff_B0_53_ce0_local;
reg    buff_B0_55_ce0_local;
reg    buff_B0_57_ce0_local;
reg    buff_B0_59_ce0_local;
reg    buff_B0_61_ce0_local;
reg    buff_B0_63_ce0_local;
reg    buff_A0_ce1_local;
reg    buff_A0_ce0_local;
wire    ap_block_pp0_stage0;
reg   [31:0] grp_fu_1217_p0;
reg   [31:0] grp_fu_1217_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
reg   [31:0] grp_fu_1221_p0;
reg   [31:0] grp_fu_1221_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage8;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9;
wire   [0:0] tmp_1_fu_1301_p3;
wire   [0:0] xor_ln30_fu_1309_p2;
wire   [6:0] add_ln27_fu_1289_p2;
wire   [12:0] add_ln28_1_fu_1333_p2;
wire   [6:0] select_ln5_fu_1365_p3;
wire   [6:0] select_ln5_1_fu_1372_p3;
wire   [6:0] add_ln28_fu_1378_p2;
wire   [6:0] k_mid2_fu_1384_p3;
wire   [3:0] lshr_ln5_1_fu_1415_p4;
wire   [9:0] tmp_8_fu_1425_p3;
wire   [11:0] tmp_7_fu_1404_p3;
wire   [11:0] zext_ln31_fu_1508_p1;
wire   [11:0] add_ln31_fu_1512_p2;
wire   [4:0] tmp_9_fu_1527_p4;
wire   [11:0] tmp_s_fu_1537_p4;
wire   [31:0] tmp_fu_1575_p9;
wire    ap_block_pp0_stage3;
wire   [31:0] tmp_2_fu_1598_p65;
wire   [31:0] tmp_3_fu_1733_p65;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [14:0] ap_NS_fsm;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage4_00001;
reg    ap_condition_1549;
wire   [1:0] tmp_fu_1575_p1;
wire   [1:0] tmp_fu_1575_p3;
wire  signed [1:0] tmp_fu_1575_p5;
wire  signed [1:0] tmp_fu_1575_p7;
wire   [5:0] tmp_2_fu_1598_p1;
wire   [5:0] tmp_2_fu_1598_p3;
wire   [5:0] tmp_2_fu_1598_p5;
wire   [5:0] tmp_2_fu_1598_p7;
wire   [5:0] tmp_2_fu_1598_p9;
wire   [5:0] tmp_2_fu_1598_p11;
wire   [5:0] tmp_2_fu_1598_p13;
wire   [5:0] tmp_2_fu_1598_p15;
wire   [5:0] tmp_2_fu_1598_p17;
wire   [5:0] tmp_2_fu_1598_p19;
wire   [5:0] tmp_2_fu_1598_p21;
wire   [5:0] tmp_2_fu_1598_p23;
wire   [5:0] tmp_2_fu_1598_p25;
wire   [5:0] tmp_2_fu_1598_p27;
wire   [5:0] tmp_2_fu_1598_p29;
wire   [5:0] tmp_2_fu_1598_p31;
wire  signed [5:0] tmp_2_fu_1598_p33;
wire  signed [5:0] tmp_2_fu_1598_p35;
wire  signed [5:0] tmp_2_fu_1598_p37;
wire  signed [5:0] tmp_2_fu_1598_p39;
wire  signed [5:0] tmp_2_fu_1598_p41;
wire  signed [5:0] tmp_2_fu_1598_p43;
wire  signed [5:0] tmp_2_fu_1598_p45;
wire  signed [5:0] tmp_2_fu_1598_p47;
wire  signed [5:0] tmp_2_fu_1598_p49;
wire  signed [5:0] tmp_2_fu_1598_p51;
wire  signed [5:0] tmp_2_fu_1598_p53;
wire  signed [5:0] tmp_2_fu_1598_p55;
wire  signed [5:0] tmp_2_fu_1598_p57;
wire  signed [5:0] tmp_2_fu_1598_p59;
wire  signed [5:0] tmp_2_fu_1598_p61;
wire  signed [5:0] tmp_2_fu_1598_p63;
wire   [5:0] tmp_3_fu_1733_p1;
wire   [5:0] tmp_3_fu_1733_p3;
wire   [5:0] tmp_3_fu_1733_p5;
wire   [5:0] tmp_3_fu_1733_p7;
wire   [5:0] tmp_3_fu_1733_p9;
wire   [5:0] tmp_3_fu_1733_p11;
wire   [5:0] tmp_3_fu_1733_p13;
wire   [5:0] tmp_3_fu_1733_p15;
wire   [5:0] tmp_3_fu_1733_p17;
wire   [5:0] tmp_3_fu_1733_p19;
wire   [5:0] tmp_3_fu_1733_p21;
wire   [5:0] tmp_3_fu_1733_p23;
wire   [5:0] tmp_3_fu_1733_p25;
wire   [5:0] tmp_3_fu_1733_p27;
wire   [5:0] tmp_3_fu_1733_p29;
wire   [5:0] tmp_3_fu_1733_p31;
wire  signed [5:0] tmp_3_fu_1733_p33;
wire  signed [5:0] tmp_3_fu_1733_p35;
wire  signed [5:0] tmp_3_fu_1733_p37;
wire  signed [5:0] tmp_3_fu_1733_p39;
wire  signed [5:0] tmp_3_fu_1733_p41;
wire  signed [5:0] tmp_3_fu_1733_p43;
wire  signed [5:0] tmp_3_fu_1733_p45;
wire  signed [5:0] tmp_3_fu_1733_p47;
wire  signed [5:0] tmp_3_fu_1733_p49;
wire  signed [5:0] tmp_3_fu_1733_p51;
wire  signed [5:0] tmp_3_fu_1733_p53;
wire  signed [5:0] tmp_3_fu_1733_p55;
wire  signed [5:0] tmp_3_fu_1733_p57;
wire  signed [5:0] tmp_3_fu_1733_p59;
wire  signed [5:0] tmp_3_fu_1733_p61;
wire  signed [5:0] tmp_3_fu_1733_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_278 = 7'd0;
#0 j_fu_282 = 7'd0;
#0 indvar_flatten9_fu_286 = 13'd0;
#0 i_fu_290 = 7'd0;
#0 indvar_flatten23_fu_294 = 18'd0;
#0 empty_fu_298 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U151(.din0(tmp1_q0),.din1(tmp1_1_q0),.din2(tmp1_2_q0),.din3(tmp1_3_q0),.def(tmp_fu_1575_p9),.sel(trunc_ln28_1_reg_1960),.dout(tmp_fu_1575_p11));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_65_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h2 ),.din1_WIDTH( 32 ),.CASE2( 6'h4 ),.din2_WIDTH( 32 ),.CASE3( 6'h6 ),.din3_WIDTH( 32 ),.CASE4( 6'h8 ),.din4_WIDTH( 32 ),.CASE5( 6'hA ),.din5_WIDTH( 32 ),.CASE6( 6'hC ),.din6_WIDTH( 32 ),.CASE7( 6'hE ),.din7_WIDTH( 32 ),.CASE8( 6'h10 ),.din8_WIDTH( 32 ),.CASE9( 6'h12 ),.din9_WIDTH( 32 ),.CASE10( 6'h14 ),.din10_WIDTH( 32 ),.CASE11( 6'h16 ),.din11_WIDTH( 32 ),.CASE12( 6'h18 ),.din12_WIDTH( 32 ),.CASE13( 6'h1A ),.din13_WIDTH( 32 ),.CASE14( 6'h1C ),.din14_WIDTH( 32 ),.CASE15( 6'h1E ),.din15_WIDTH( 32 ),.CASE16( 6'h20 ),.din16_WIDTH( 32 ),.CASE17( 6'h22 ),.din17_WIDTH( 32 ),.CASE18( 6'h24 ),.din18_WIDTH( 32 ),.CASE19( 6'h26 ),.din19_WIDTH( 32 ),.CASE20( 6'h28 ),.din20_WIDTH( 32 ),.CASE21( 6'h2A ),.din21_WIDTH( 32 ),.CASE22( 6'h2C ),.din22_WIDTH( 32 ),.CASE23( 6'h2E ),.din23_WIDTH( 32 ),.CASE24( 6'h30 ),.din24_WIDTH( 32 ),.CASE25( 6'h32 ),.din25_WIDTH( 32 ),.CASE26( 6'h34 ),.din26_WIDTH( 32 ),.CASE27( 6'h36 ),.din27_WIDTH( 32 ),.CASE28( 6'h38 ),.din28_WIDTH( 32 ),.CASE29( 6'h3A ),.din29_WIDTH( 32 ),.CASE30( 6'h3C ),.din30_WIDTH( 32 ),.CASE31( 6'h3E ),.din31_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_65_6_32_1_1_U152(.din0(buff_B0_q0),.din1(buff_B0_2_q0),.din2(buff_B0_4_q0),.din3(buff_B0_6_q0),.din4(buff_B0_8_q0),.din5(buff_B0_10_q0),.din6(buff_B0_12_q0),.din7(buff_B0_14_q0),.din8(buff_B0_16_q0),.din9(buff_B0_18_q0),.din10(buff_B0_20_q0),.din11(buff_B0_22_q0),.din12(buff_B0_24_q0),.din13(buff_B0_26_q0),.din14(buff_B0_28_q0),.din15(buff_B0_30_q0),.din16(buff_B0_32_q0),.din17(buff_B0_34_q0),.din18(buff_B0_36_q0),.din19(buff_B0_38_q0),.din20(buff_B0_40_q0),.din21(buff_B0_42_q0),.din22(buff_B0_44_q0),.din23(buff_B0_46_q0),.din24(buff_B0_48_q0),.din25(buff_B0_50_q0),.din26(buff_B0_52_q0),.din27(buff_B0_54_q0),.din28(buff_B0_56_q0),.din29(buff_B0_58_q0),.din30(buff_B0_60_q0),.din31(buff_B0_62_q0),.def(tmp_2_fu_1598_p65),.sel(trunc_ln30_reg_2310),.dout(tmp_2_fu_1598_p67));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_65_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h2 ),.din1_WIDTH( 32 ),.CASE2( 6'h4 ),.din2_WIDTH( 32 ),.CASE3( 6'h6 ),.din3_WIDTH( 32 ),.CASE4( 6'h8 ),.din4_WIDTH( 32 ),.CASE5( 6'hA ),.din5_WIDTH( 32 ),.CASE6( 6'hC ),.din6_WIDTH( 32 ),.CASE7( 6'hE ),.din7_WIDTH( 32 ),.CASE8( 6'h10 ),.din8_WIDTH( 32 ),.CASE9( 6'h12 ),.din9_WIDTH( 32 ),.CASE10( 6'h14 ),.din10_WIDTH( 32 ),.CASE11( 6'h16 ),.din11_WIDTH( 32 ),.CASE12( 6'h18 ),.din12_WIDTH( 32 ),.CASE13( 6'h1A ),.din13_WIDTH( 32 ),.CASE14( 6'h1C ),.din14_WIDTH( 32 ),.CASE15( 6'h1E ),.din15_WIDTH( 32 ),.CASE16( 6'h20 ),.din16_WIDTH( 32 ),.CASE17( 6'h22 ),.din17_WIDTH( 32 ),.CASE18( 6'h24 ),.din18_WIDTH( 32 ),.CASE19( 6'h26 ),.din19_WIDTH( 32 ),.CASE20( 6'h28 ),.din20_WIDTH( 32 ),.CASE21( 6'h2A ),.din21_WIDTH( 32 ),.CASE22( 6'h2C ),.din22_WIDTH( 32 ),.CASE23( 6'h2E ),.din23_WIDTH( 32 ),.CASE24( 6'h30 ),.din24_WIDTH( 32 ),.CASE25( 6'h32 ),.din25_WIDTH( 32 ),.CASE26( 6'h34 ),.din26_WIDTH( 32 ),.CASE27( 6'h36 ),.din27_WIDTH( 32 ),.CASE28( 6'h38 ),.din28_WIDTH( 32 ),.CASE29( 6'h3A ),.din29_WIDTH( 32 ),.CASE30( 6'h3C ),.din30_WIDTH( 32 ),.CASE31( 6'h3E ),.din31_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_65_6_32_1_1_U153(.din0(buff_B0_1_q0),.din1(buff_B0_3_q0),.din2(buff_B0_5_q0),.din3(buff_B0_7_q0),.din4(buff_B0_9_q0),.din5(buff_B0_11_q0),.din6(buff_B0_13_q0),.din7(buff_B0_15_q0),.din8(buff_B0_17_q0),.din9(buff_B0_19_q0),.din10(buff_B0_21_q0),.din11(buff_B0_23_q0),.din12(buff_B0_25_q0),.din13(buff_B0_27_q0),.din14(buff_B0_29_q0),.din15(buff_B0_31_q0),.din16(buff_B0_33_q0),.din17(buff_B0_35_q0),.din18(buff_B0_37_q0),.din19(buff_B0_39_q0),.din20(buff_B0_41_q0),.din21(buff_B0_43_q0),.din22(buff_B0_45_q0),.din23(buff_B0_47_q0),.din24(buff_B0_49_q0),.din25(buff_B0_51_q0),.din26(buff_B0_53_q0),.din27(buff_B0_55_q0),.din28(buff_B0_57_q0),.din29(buff_B0_59_q0),.din30(buff_B0_61_q0),.din31(buff_B0_63_q0),.def(tmp_3_fu_1733_p65),.sel(trunc_ln30_reg_2310),.dout(tmp_3_fu_1733_p67));
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
        end else if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        if ((1'b1 == ap_condition_1549)) begin
            empty_fu_298 <= tmp_reg_2325;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_298 <= reg_1231;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_290 <= 7'd0;
    end else if (((icmp_ln27_fu_1271_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_290 <= select_ln27_fu_1321_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten23_fu_294 <= 18'd0;
    end else if (((icmp_ln27_fu_1271_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten23_fu_294 <= add_ln27_1_fu_1277_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten9_fu_286 <= 13'd0;
    end else if (((icmp_ln27_fu_1271_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten9_fu_286 <= select_ln28_1_fu_1339_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_282 <= 7'd0;
    end else if (((icmp_ln27_reg_1928 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_282 <= select_ln28_fu_1391_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_278 <= 7'd0;
    end else if (((icmp_ln27_reg_1928 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_278 <= add_ln30_fu_1551_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_A0_load_1_reg_2340 <= buff_A0_q0;
        buff_A0_load_reg_2330 <= buff_A0_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        first_iter_1_reg_1956 <= first_iter_1_fu_1398_p2;
        tmp1_1_addr_reg_1970 <= tmp_8_cast_fu_1432_p1;
        tmp1_1_addr_reg_1970_pp0_iter1_reg <= tmp1_1_addr_reg_1970;
        tmp1_2_addr_reg_1975 <= tmp_8_cast_fu_1432_p1;
        tmp1_2_addr_reg_1975_pp0_iter1_reg <= tmp1_2_addr_reg_1975;
        tmp1_3_addr_reg_1980 <= tmp_8_cast_fu_1432_p1;
        tmp1_3_addr_reg_1980_pp0_iter1_reg <= tmp1_3_addr_reg_1980;
        tmp1_addr_reg_1965 <= tmp_8_cast_fu_1432_p1;
        tmp1_addr_reg_1965_pp0_iter1_reg <= tmp1_addr_reg_1965;
        tmp_4_reg_2321 <= add_ln30_fu_1551_p2[32'd6];
        tmp_4_reg_2321_pp0_iter1_reg <= tmp_4_reg_2321;
        trunc_ln28_1_reg_1960 <= trunc_ln28_1_fu_1411_p1;
        trunc_ln28_1_reg_1960_pp0_iter1_reg <= trunc_ln28_1_reg_1960;
        trunc_ln30_reg_2310 <= trunc_ln30_fu_1523_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln27_reg_1928 <= icmp_ln27_fu_1271_p2;
        icmp_ln28_reg_1937 <= icmp_ln28_fu_1295_p2;
        k_load_reg_1932 <= k_fu_278;
        or_ln5_reg_1943 <= or_ln5_fu_1315_p2;
        trunc_ln28_reg_1949 <= trunc_ln28_fu_1329_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul74_1_reg_2360 <= grp_fu_1199_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul_1_reg_2350 <= grp_fu_1199_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1225 <= grp_fu_1199_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1231 <= grp_fu_1195_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_2_reg_2335 <= tmp_2_fu_1598_p67;
        tmp_3_reg_2345 <= tmp_3_fu_1733_p67;
        tmp_reg_2325 <= tmp_fu_1575_p11;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_1928 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
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
    if (((1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1217_p0 = reg_1231;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1217_p0 = empty_fu_298;
    end else begin
        grp_fu_1217_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1217_p1 = mul74_1_reg_2360;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1217_p1 = reg_1225;
    end else begin
        grp_fu_1217_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_1221_p0 = mul_1_reg_2350;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_1221_p0 = reg_1225;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1221_p0 = buff_A0_load_1_reg_2340;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1221_p0 = buff_A0_load_reg_2330;
        end else begin
            grp_fu_1221_p0 = 'bx;
        end
    end else begin
        grp_fu_1221_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1221_p1 = tmp_3_reg_2345;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1221_p1 = tmp_2_reg_2335;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_1221_p1 = alpha;
    end else begin
        grp_fu_1221_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        tmp1_1_address0_local = tmp1_1_addr_reg_1970_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_1_address0_local = tmp_8_cast_fu_1432_p1;
    end else begin
        tmp1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_4_reg_2321_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1960_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        tmp1_2_address0_local = tmp1_2_addr_reg_1975_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_2_address0_local = tmp_8_cast_fu_1432_p1;
    end else begin
        tmp1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_4_reg_2321_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1960_pp0_iter1_reg == 2'd2) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        tmp1_3_address0_local = tmp1_3_addr_reg_1980_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_3_address0_local = tmp_8_cast_fu_1432_p1;
    end else begin
        tmp1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_4_reg_2321_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1960_pp0_iter1_reg == 2'd3) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        tmp1_address0_local = tmp1_addr_reg_1965_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_address0_local = tmp_8_cast_fu_1432_p1;
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
    if (((tmp_4_reg_2321_pp0_iter1_reg == 1'd1) & (trunc_ln28_1_reg_1960_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln27_1_fu_1277_p2 = (indvar_flatten23_fu_294 + 18'd1);
assign add_ln27_fu_1289_p2 = (i_fu_290 + 7'd1);
assign add_ln28_1_fu_1333_p2 = (indvar_flatten9_fu_286 + 13'd1);
assign add_ln28_fu_1378_p2 = (select_ln5_fu_1365_p3 + 7'd1);
assign add_ln30_fu_1551_p2 = (k_mid2_fu_1384_p3 + 7'd2);
assign add_ln31_fu_1512_p2 = (tmp_7_fu_1404_p3 + zext_ln31_fu_1508_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1549 = ((first_iter_1_reg_1956 == 1'd1) & (icmp_ln27_reg_1928 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_ready = ap_ready_sig;
assign buff_A0_address0 = zext_ln31_1_fu_1546_p1;
assign buff_A0_address1 = zext_ln31_2_fu_1518_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_A0_ce1 = buff_A0_ce1_local;
assign buff_B0_10_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_10_ce0 = buff_B0_10_ce0_local;
assign buff_B0_11_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_11_ce0 = buff_B0_11_ce0_local;
assign buff_B0_12_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_12_ce0 = buff_B0_12_ce0_local;
assign buff_B0_13_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_13_ce0 = buff_B0_13_ce0_local;
assign buff_B0_14_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_14_ce0 = buff_B0_14_ce0_local;
assign buff_B0_15_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_15_ce0 = buff_B0_15_ce0_local;
assign buff_B0_16_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_16_ce0 = buff_B0_16_ce0_local;
assign buff_B0_17_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_17_ce0 = buff_B0_17_ce0_local;
assign buff_B0_18_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_18_ce0 = buff_B0_18_ce0_local;
assign buff_B0_19_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_19_ce0 = buff_B0_19_ce0_local;
assign buff_B0_1_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_1_ce0 = buff_B0_1_ce0_local;
assign buff_B0_20_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_20_ce0 = buff_B0_20_ce0_local;
assign buff_B0_21_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_21_ce0 = buff_B0_21_ce0_local;
assign buff_B0_22_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_22_ce0 = buff_B0_22_ce0_local;
assign buff_B0_23_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_23_ce0 = buff_B0_23_ce0_local;
assign buff_B0_24_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_24_ce0 = buff_B0_24_ce0_local;
assign buff_B0_25_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_25_ce0 = buff_B0_25_ce0_local;
assign buff_B0_26_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_26_ce0 = buff_B0_26_ce0_local;
assign buff_B0_27_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_27_ce0 = buff_B0_27_ce0_local;
assign buff_B0_28_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_28_ce0 = buff_B0_28_ce0_local;
assign buff_B0_29_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_29_ce0 = buff_B0_29_ce0_local;
assign buff_B0_2_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_2_ce0 = buff_B0_2_ce0_local;
assign buff_B0_30_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_30_ce0 = buff_B0_30_ce0_local;
assign buff_B0_31_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_31_ce0 = buff_B0_31_ce0_local;
assign buff_B0_32_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_32_ce0 = buff_B0_32_ce0_local;
assign buff_B0_33_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_33_ce0 = buff_B0_33_ce0_local;
assign buff_B0_34_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_34_ce0 = buff_B0_34_ce0_local;
assign buff_B0_35_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_35_ce0 = buff_B0_35_ce0_local;
assign buff_B0_36_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_36_ce0 = buff_B0_36_ce0_local;
assign buff_B0_37_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_37_ce0 = buff_B0_37_ce0_local;
assign buff_B0_38_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_38_ce0 = buff_B0_38_ce0_local;
assign buff_B0_39_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_39_ce0 = buff_B0_39_ce0_local;
assign buff_B0_3_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_3_ce0 = buff_B0_3_ce0_local;
assign buff_B0_40_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_40_ce0 = buff_B0_40_ce0_local;
assign buff_B0_41_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_41_ce0 = buff_B0_41_ce0_local;
assign buff_B0_42_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_42_ce0 = buff_B0_42_ce0_local;
assign buff_B0_43_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_43_ce0 = buff_B0_43_ce0_local;
assign buff_B0_44_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_44_ce0 = buff_B0_44_ce0_local;
assign buff_B0_45_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_45_ce0 = buff_B0_45_ce0_local;
assign buff_B0_46_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_46_ce0 = buff_B0_46_ce0_local;
assign buff_B0_47_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_47_ce0 = buff_B0_47_ce0_local;
assign buff_B0_48_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_48_ce0 = buff_B0_48_ce0_local;
assign buff_B0_49_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_49_ce0 = buff_B0_49_ce0_local;
assign buff_B0_4_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_4_ce0 = buff_B0_4_ce0_local;
assign buff_B0_50_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_50_ce0 = buff_B0_50_ce0_local;
assign buff_B0_51_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_51_ce0 = buff_B0_51_ce0_local;
assign buff_B0_52_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_52_ce0 = buff_B0_52_ce0_local;
assign buff_B0_53_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_53_ce0 = buff_B0_53_ce0_local;
assign buff_B0_54_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_54_ce0 = buff_B0_54_ce0_local;
assign buff_B0_55_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_55_ce0 = buff_B0_55_ce0_local;
assign buff_B0_56_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_56_ce0 = buff_B0_56_ce0_local;
assign buff_B0_57_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_57_ce0 = buff_B0_57_ce0_local;
assign buff_B0_58_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_58_ce0 = buff_B0_58_ce0_local;
assign buff_B0_59_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_59_ce0 = buff_B0_59_ce0_local;
assign buff_B0_5_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_5_ce0 = buff_B0_5_ce0_local;
assign buff_B0_60_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_60_ce0 = buff_B0_60_ce0_local;
assign buff_B0_61_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_61_ce0 = buff_B0_61_ce0_local;
assign buff_B0_62_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_62_ce0 = buff_B0_62_ce0_local;
assign buff_B0_63_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_63_ce0 = buff_B0_63_ce0_local;
assign buff_B0_6_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_6_ce0 = buff_B0_6_ce0_local;
assign buff_B0_7_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_7_ce0 = buff_B0_7_ce0_local;
assign buff_B0_8_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_8_ce0 = buff_B0_8_ce0_local;
assign buff_B0_9_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_9_ce0 = buff_B0_9_ce0_local;
assign buff_B0_address0 = zext_ln28_fu_1440_p1;
assign buff_B0_ce0 = buff_B0_ce0_local;
assign first_iter_1_fu_1398_p2 = ((k_mid2_fu_1384_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_1195_p_ce = 1'b1;
assign grp_fu_1195_p_din0 = grp_fu_1217_p0;
assign grp_fu_1195_p_din1 = grp_fu_1217_p1;
assign grp_fu_1195_p_opcode = 2'd0;
assign grp_fu_1199_p_ce = 1'b1;
assign grp_fu_1199_p_din0 = grp_fu_1221_p0;
assign grp_fu_1199_p_din1 = grp_fu_1221_p1;
assign icmp_ln27_fu_1271_p2 = ((indvar_flatten23_fu_294 == 18'd131072) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_1295_p2 = ((indvar_flatten9_fu_286 == 13'd2048) ? 1'b1 : 1'b0);
assign k_mid2_fu_1384_p3 = ((or_ln5_reg_1943[0:0] == 1'b1) ? select_ln5_1_fu_1372_p3 : 7'd0);
assign lshr_ln5_1_fu_1415_p4 = {{select_ln28_fu_1391_p3[5:2]}};
assign or_ln5_fu_1315_p2 = (xor_ln30_fu_1309_p2 | icmp_ln28_fu_1295_p2);
assign select_ln27_fu_1321_p3 = ((icmp_ln28_fu_1295_p2[0:0] == 1'b1) ? add_ln27_fu_1289_p2 : i_fu_290);
assign select_ln28_1_fu_1339_p3 = ((icmp_ln28_fu_1295_p2[0:0] == 1'b1) ? 13'd1 : add_ln28_1_fu_1333_p2);
assign select_ln28_fu_1391_p3 = ((or_ln5_reg_1943[0:0] == 1'b1) ? select_ln5_fu_1365_p3 : add_ln28_fu_1378_p2);
assign select_ln5_1_fu_1372_p3 = ((icmp_ln28_reg_1937[0:0] == 1'b1) ? 7'd0 : k_load_reg_1932);
assign select_ln5_fu_1365_p3 = ((icmp_ln28_reg_1937[0:0] == 1'b1) ? 7'd0 : j_fu_282);
assign tmp1_1_address0 = tmp1_1_address0_local;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_1_d0 = reg_1231;
assign tmp1_1_we0 = tmp1_1_we0_local;
assign tmp1_2_address0 = tmp1_2_address0_local;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_2_d0 = reg_1231;
assign tmp1_2_we0 = tmp1_2_we0_local;
assign tmp1_3_address0 = tmp1_3_address0_local;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_3_d0 = reg_1231;
assign tmp1_3_we0 = tmp1_3_we0_local;
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = reg_1231;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_1_fu_1301_p3 = k_fu_278[32'd6];
assign tmp_2_fu_1598_p65 = 'bx;
assign tmp_3_fu_1733_p65 = 'bx;
assign tmp_7_fu_1404_p3 = {{trunc_ln28_reg_1949}, {6'd0}};
assign tmp_8_cast_fu_1432_p1 = tmp_8_fu_1425_p3;
assign tmp_8_fu_1425_p3 = {{trunc_ln28_reg_1949}, {lshr_ln5_1_fu_1415_p4}};
assign tmp_9_fu_1527_p4 = {{k_mid2_fu_1384_p3[5:1]}};
assign tmp_fu_1575_p9 = 'bx;
assign tmp_s_fu_1537_p4 = {{{trunc_ln28_reg_1949}, {tmp_9_fu_1527_p4}}, {1'd1}};
assign trunc_ln28_1_fu_1411_p1 = select_ln28_fu_1391_p3[1:0];
assign trunc_ln28_fu_1329_p1 = select_ln27_fu_1321_p3[5:0];
assign trunc_ln30_fu_1523_p1 = k_mid2_fu_1384_p3[5:0];
assign xor_ln30_fu_1309_p2 = (tmp_1_fu_1301_p3 ^ 1'd1);
assign zext_ln28_fu_1440_p1 = select_ln28_fu_1391_p3;
assign zext_ln31_1_fu_1546_p1 = tmp_s_fu_1537_p4;
assign zext_ln31_2_fu_1518_p1 = add_ln31_fu_1512_p2;
assign zext_ln31_fu_1508_p1 = k_mid2_fu_1384_p3;
endmodule 