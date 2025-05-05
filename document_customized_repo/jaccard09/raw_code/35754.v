module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_147,t_1,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_8_address0,llike_8_ce0,llike_8_q0,llike_9_address0,llike_9_ce0,llike_9_q0,llike_10_address0,llike_10_ce0,llike_10_q0,llike_11_address0,llike_11_ce0,llike_11_q0,llike_12_address0,llike_12_ce0,llike_12_q0,llike_13_address0,llike_13_ce0,llike_13_q0,llike_14_address0,llike_14_ce0,llike_14_q0,llike_15_address0,llike_15_ce0,llike_15_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,empty,zext_ln52_3,min_s_10_out,min_s_10_out_ap_vld,grp_fu_745_p_din0,grp_fu_745_p_din1,grp_fu_745_p_opcode,grp_fu_745_p_dout0,grp_fu_745_p_ce,grp_fu_1181_p_din0,grp_fu_1181_p_din1,grp_fu_1181_p_opcode,grp_fu_1181_p_dout0,grp_fu_1181_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_147;
input  [7:0] t_1;
output  [9:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [9:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [9:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [9:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [9:0] llike_4_address0;
output   llike_4_ce0;
input  [63:0] llike_4_q0;
output  [9:0] llike_5_address0;
output   llike_5_ce0;
input  [63:0] llike_5_q0;
output  [9:0] llike_6_address0;
output   llike_6_ce0;
input  [63:0] llike_6_q0;
output  [9:0] llike_7_address0;
output   llike_7_ce0;
input  [63:0] llike_7_q0;
output  [9:0] llike_8_address0;
output   llike_8_ce0;
input  [63:0] llike_8_q0;
output  [9:0] llike_9_address0;
output   llike_9_ce0;
input  [63:0] llike_9_q0;
output  [9:0] llike_10_address0;
output   llike_10_ce0;
input  [63:0] llike_10_q0;
output  [9:0] llike_11_address0;
output   llike_11_ce0;
input  [63:0] llike_11_q0;
output  [9:0] llike_12_address0;
output   llike_12_ce0;
input  [63:0] llike_12_q0;
output  [9:0] llike_13_address0;
output   llike_13_ce0;
input  [63:0] llike_13_q0;
output  [9:0] llike_14_address0;
output   llike_14_ce0;
input  [63:0] llike_14_q0;
output  [9:0] llike_15_address0;
output   llike_15_ce0;
input  [63:0] llike_15_q0;
input  [4:0] zext_ln52_2;
output  [8:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [8:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [8:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [8:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
output  [8:0] transition_2_address0;
output   transition_2_ce0;
input  [63:0] transition_2_q0;
output  [8:0] transition_2_address1;
output   transition_2_ce1;
input  [63:0] transition_2_q1;
output  [8:0] transition_3_address0;
output   transition_3_ce0;
input  [63:0] transition_3_q0;
output  [8:0] transition_3_address1;
output   transition_3_ce1;
input  [63:0] transition_3_q1;
output  [8:0] transition_4_address0;
output   transition_4_ce0;
input  [63:0] transition_4_q0;
output  [8:0] transition_4_address1;
output   transition_4_ce1;
input  [63:0] transition_4_q1;
output  [8:0] transition_5_address0;
output   transition_5_ce0;
input  [63:0] transition_5_q0;
output  [8:0] transition_5_address1;
output   transition_5_ce1;
input  [63:0] transition_5_q1;
output  [8:0] transition_6_address0;
output   transition_6_ce0;
input  [63:0] transition_6_q0;
output  [8:0] transition_6_address1;
output   transition_6_ce1;
input  [63:0] transition_6_q1;
output  [8:0] transition_7_address0;
output   transition_7_ce0;
input  [63:0] transition_7_q0;
output  [8:0] transition_7_address1;
output   transition_7_ce1;
input  [63:0] transition_7_q1;
input  [2:0] empty;
input  [9:0] zext_ln52_3;
output  [7:0] min_s_10_out;
output   min_s_10_out_ap_vld;
output  [63:0] grp_fu_745_p_din0;
output  [63:0] grp_fu_745_p_din1;
output  [1:0] grp_fu_745_p_opcode;
input  [63:0] grp_fu_745_p_dout0;
output   grp_fu_745_p_ce;
output  [63:0] grp_fu_1181_p_din0;
output  [63:0] grp_fu_1181_p_din1;
output  [4:0] grp_fu_1181_p_opcode;
input  [0:0] grp_fu_1181_p_dout0;
output   grp_fu_1181_p_ce;
reg ap_idle;
reg min_s_10_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_1_reg_2329;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_907;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [8:0] zext_ln52_2_cast_fu_912_p1;
reg   [8:0] zext_ln52_2_cast_reg_2170;
reg   [5:0] s_reg_2177;
reg   [5:0] s_reg_2177_pp0_iter1_reg;
wire   [3:0] trunc_ln17_fu_938_p1;
reg   [3:0] trunc_ln17_reg_2183;
wire   [5:0] add_ln53_fu_1006_p2;
reg   [5:0] add_ln53_reg_2311;
reg   [5:0] add_ln53_reg_2311_pp0_iter1_reg;
wire   [5:0] add_ln53_1_fu_1012_p2;
reg   [5:0] add_ln53_1_reg_2317;
reg   [5:0] add_ln53_1_reg_2317_pp0_iter1_reg;
wire   [6:0] add_ln53_2_fu_1018_p2;
reg   [6:0] add_ln53_2_reg_2323;
reg   [0:0] tmp_1_reg_2329_pp0_iter1_reg;
wire   [63:0] tmp_69_fu_1032_p35;
reg   [63:0] tmp_69_reg_2333;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_70_fu_1135_p19;
reg   [63:0] tmp_70_reg_2338;
wire   [63:0] tmp_71_fu_1174_p35;
reg   [63:0] tmp_71_reg_2343;
wire   [63:0] tmp_73_fu_1269_p35;
reg   [63:0] tmp_73_reg_2388;
wire   [63:0] tmp_72_fu_1434_p19;
reg   [63:0] tmp_72_reg_2513;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_74_fu_1505_p19;
reg   [63:0] tmp_74_reg_2518;
wire   [63:0] tmp_75_fu_1544_p35;
reg   [63:0] tmp_75_reg_2523;
wire   [5:0] trunc_ln54_fu_1615_p1;
reg   [5:0] trunc_ln54_reg_2528;
reg   [5:0] trunc_ln54_reg_2528_pp0_iter1_reg;
wire   [63:0] tmp_76_fu_1675_p19;
reg   [63:0] tmp_76_reg_2573;
reg   [63:0] min_p_127_reg_2578;
reg   [63:0] p_63_reg_2585;
wire   [0:0] and_ln55_1_fu_1805_p2;
reg   [0:0] and_ln55_1_reg_2592;
reg   [63:0] p_64_reg_2598;
wire   [63:0] min_p_129_fu_1811_p3;
reg   [63:0] min_p_129_reg_2605;
wire   [0:0] and_ln55_3_fu_1894_p2;
reg   [0:0] and_ln55_3_reg_2612;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] min_p_131_fu_1913_p3;
reg   [63:0] min_p_131_reg_2618;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [7:0] min_s_5_fu_1922_p3;
reg   [7:0] min_s_5_reg_2625;
wire   [0:0] and_ln55_5_fu_2005_p2;
reg   [0:0] and_ln55_5_reg_2630;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_6_fu_2014_p3;
reg   [7:0] min_s_6_reg_2636;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_133_fu_2021_p3;
reg   [63:0] min_p_133_reg_2641;
reg   [0:0] tmp_271_reg_2648;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln54_4_fu_960_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_994_p1;
wire   [63:0] zext_ln54_1_fu_1257_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_1352_p1;
wire   [63:0] zext_ln54_6_fu_1382_p1;
wire   [63:0] zext_ln54_3_fu_1631_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] min_p_fu_186;
wire   [63:0] min_p_135_fu_2109_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_190;
wire   [7:0] min_s_7_fu_2119_p3;
wire    ap_block_pp0_stage5;
reg   [5:0] min_s_1_fu_194;
wire   [5:0] add_ln53_3_fu_1714_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_ce0_local;
reg   [9:0] llike_address0_local;
reg    llike_1_ce0_local;
reg   [9:0] llike_1_address0_local;
reg    llike_2_ce0_local;
reg   [9:0] llike_2_address0_local;
reg    llike_3_ce0_local;
reg   [9:0] llike_3_address0_local;
reg    llike_4_ce0_local;
reg   [9:0] llike_4_address0_local;
reg    llike_5_ce0_local;
reg   [9:0] llike_5_address0_local;
reg    llike_6_ce0_local;
reg   [9:0] llike_6_address0_local;
reg    llike_7_ce0_local;
reg   [9:0] llike_7_address0_local;
reg    llike_8_ce0_local;
reg   [9:0] llike_8_address0_local;
reg    llike_9_ce0_local;
reg   [9:0] llike_9_address0_local;
reg    llike_10_ce0_local;
reg   [9:0] llike_10_address0_local;
reg    llike_11_ce0_local;
reg   [9:0] llike_11_address0_local;
reg    llike_12_ce0_local;
reg   [9:0] llike_12_address0_local;
reg    llike_13_ce0_local;
reg   [9:0] llike_13_address0_local;
reg    llike_14_ce0_local;
reg   [9:0] llike_14_address0_local;
reg    llike_15_ce0_local;
reg   [9:0] llike_15_address0_local;
reg    transition_0_ce0_local;
reg   [8:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [8:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [8:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [8:0] transition_1_address1_local;
reg    transition_2_ce0_local;
reg   [8:0] transition_2_address0_local;
reg    transition_2_ce1_local;
reg   [8:0] transition_2_address1_local;
reg    transition_3_ce0_local;
reg   [8:0] transition_3_address0_local;
reg    transition_3_ce1_local;
reg   [8:0] transition_3_address1_local;
reg    transition_4_ce0_local;
reg   [8:0] transition_4_address0_local;
reg    transition_4_ce1_local;
reg   [8:0] transition_4_address1_local;
reg    transition_5_ce0_local;
reg   [8:0] transition_5_address0_local;
reg    transition_5_ce1_local;
reg   [8:0] transition_5_address1_local;
reg    transition_6_ce0_local;
reg   [8:0] transition_6_address0_local;
reg    transition_6_ce1_local;
reg   [8:0] transition_6_address1_local;
reg    transition_7_ce0_local;
reg   [8:0] transition_7_address0_local;
reg    transition_7_ce1_local;
reg   [8:0] transition_7_address1_local;
reg   [63:0] grp_fu_899_p0;
reg   [63:0] grp_fu_899_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg   [63:0] grp_fu_903_p0;
reg   [63:0] grp_fu_903_p1;
wire    ap_block_pp0_stage7;
wire   [1:0] lshr_ln8_1_fu_942_p4;
wire   [9:0] tmp_s_fu_952_p3;
wire   [8:0] shl_ln2_fu_980_p3;
wire   [8:0] add_ln54_fu_988_p2;
wire   [6:0] zext_ln17_fu_934_p1;
wire   [63:0] tmp_69_fu_1032_p33;
wire   [63:0] tmp_70_fu_1135_p2;
wire   [63:0] tmp_70_fu_1135_p4;
wire   [63:0] tmp_70_fu_1135_p6;
wire   [63:0] tmp_70_fu_1135_p8;
wire   [63:0] tmp_70_fu_1135_p10;
wire   [63:0] tmp_70_fu_1135_p12;
wire   [63:0] tmp_70_fu_1135_p14;
wire   [63:0] tmp_70_fu_1135_p16;
wire   [63:0] tmp_70_fu_1135_p17;
wire   [63:0] tmp_71_fu_1174_p33;
wire   [8:0] shl_ln54_1_fu_1245_p3;
wire   [8:0] add_ln54_1_fu_1252_p2;
wire   [63:0] tmp_73_fu_1269_p33;
wire   [8:0] shl_ln54_2_fu_1340_p3;
wire   [8:0] add_ln54_2_fu_1347_p2;
wire   [2:0] lshr_ln9_3_fu_1364_p4;
wire   [9:0] zext_ln54_5_fu_1373_p1;
wire   [9:0] add_ln54_4_fu_1377_p2;
wire   [63:0] tmp_72_fu_1434_p2;
wire   [63:0] tmp_72_fu_1434_p4;
wire   [63:0] tmp_72_fu_1434_p6;
wire   [63:0] tmp_72_fu_1434_p8;
wire   [63:0] tmp_72_fu_1434_p10;
wire   [63:0] tmp_72_fu_1434_p12;
wire   [63:0] tmp_72_fu_1434_p14;
wire   [63:0] tmp_72_fu_1434_p16;
wire   [63:0] tmp_72_fu_1434_p17;
wire   [63:0] tmp_74_fu_1505_p2;
wire   [63:0] tmp_74_fu_1505_p4;
wire   [63:0] tmp_74_fu_1505_p6;
wire   [63:0] tmp_74_fu_1505_p8;
wire   [63:0] tmp_74_fu_1505_p10;
wire   [63:0] tmp_74_fu_1505_p12;
wire   [63:0] tmp_74_fu_1505_p14;
wire   [63:0] tmp_74_fu_1505_p16;
wire   [63:0] tmp_74_fu_1505_p17;
wire   [63:0] tmp_75_fu_1544_p33;
wire   [8:0] shl_ln54_3_fu_1618_p3;
wire   [8:0] add_ln54_3_fu_1626_p2;
wire   [63:0] tmp_76_fu_1675_p2;
wire   [63:0] tmp_76_fu_1675_p4;
wire   [63:0] tmp_76_fu_1675_p6;
wire   [63:0] tmp_76_fu_1675_p8;
wire   [63:0] tmp_76_fu_1675_p10;
wire   [63:0] tmp_76_fu_1675_p12;
wire   [63:0] tmp_76_fu_1675_p14;
wire   [63:0] tmp_76_fu_1675_p16;
wire   [63:0] tmp_76_fu_1675_p17;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln55_fu_1728_p1;
wire   [63:0] bitcast_ln55_1_fu_1746_p1;
wire   [10:0] tmp_260_fu_1732_p4;
wire   [51:0] trunc_ln55_fu_1742_p1;
wire   [0:0] icmp_ln55_1_fu_1769_p2;
wire   [0:0] icmp_ln55_fu_1763_p2;
wire   [10:0] tmp_261_fu_1749_p4;
wire   [51:0] trunc_ln55_1_fu_1759_p1;
wire   [0:0] icmp_ln55_3_fu_1787_p2;
wire   [0:0] icmp_ln55_2_fu_1781_p2;
wire   [0:0] or_ln55_fu_1775_p2;
wire   [0:0] and_ln55_fu_1799_p2;
wire   [0:0] or_ln55_1_fu_1793_p2;
wire   [63:0] bitcast_ln55_2_fu_1818_p1;
wire   [63:0] bitcast_ln55_3_fu_1835_p1;
wire   [10:0] tmp_263_fu_1821_p4;
wire   [51:0] trunc_ln55_2_fu_1831_p1;
wire   [0:0] icmp_ln55_5_fu_1858_p2;
wire   [0:0] icmp_ln55_4_fu_1852_p2;
wire   [10:0] tmp_264_fu_1838_p4;
wire   [51:0] trunc_ln55_3_fu_1848_p1;
wire   [0:0] icmp_ln55_7_fu_1876_p2;
wire   [0:0] icmp_ln55_6_fu_1870_p2;
wire   [0:0] or_ln55_3_fu_1882_p2;
wire   [0:0] or_ln55_2_fu_1864_p2;
wire   [0:0] and_ln55_2_fu_1888_p2;
wire   [7:0] zext_ln55_fu_1903_p1;
wire   [7:0] zext_ln55_1_fu_1919_p1;
wire   [7:0] min_s_4_fu_1906_p3;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln55_4_fu_1929_p1;
wire   [63:0] bitcast_ln55_5_fu_1946_p1;
wire   [10:0] tmp_266_fu_1932_p4;
wire   [51:0] trunc_ln55_4_fu_1942_p1;
wire   [0:0] icmp_ln55_9_fu_1969_p2;
wire   [0:0] icmp_ln55_8_fu_1963_p2;
wire   [10:0] tmp_267_fu_1949_p4;
wire   [51:0] trunc_ln55_5_fu_1959_p1;
wire   [0:0] icmp_ln55_11_fu_1987_p2;
wire   [0:0] icmp_ln55_10_fu_1981_p2;
wire   [0:0] or_ln55_5_fu_1993_p2;
wire   [0:0] or_ln55_4_fu_1975_p2;
wire   [0:0] and_ln55_4_fu_1999_p2;
wire   [7:0] zext_ln55_2_fu_2011_p1;
wire   [63:0] bitcast_ln55_6_fu_2027_p1;
wire   [63:0] bitcast_ln55_7_fu_2045_p1;
wire   [10:0] tmp_269_fu_2031_p4;
wire   [51:0] trunc_ln55_6_fu_2041_p1;
wire   [0:0] icmp_ln55_13_fu_2068_p2;
wire   [0:0] icmp_ln55_12_fu_2062_p2;
wire   [10:0] tmp_270_fu_2048_p4;
wire   [51:0] trunc_ln55_7_fu_2058_p1;
wire   [0:0] icmp_ln55_15_fu_2086_p2;
wire   [0:0] icmp_ln55_14_fu_2080_p2;
wire   [0:0] or_ln55_7_fu_2092_p2;
wire   [0:0] or_ln55_6_fu_2074_p2;
wire   [0:0] and_ln55_6_fu_2098_p2;
wire   [0:0] and_ln55_7_fu_2104_p2;
wire   [7:0] zext_ln55_3_fu_2116_p1;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire   [3:0] tmp_69_fu_1032_p1;
wire   [3:0] tmp_69_fu_1032_p3;
wire   [3:0] tmp_69_fu_1032_p5;
wire   [3:0] tmp_69_fu_1032_p7;
wire   [3:0] tmp_69_fu_1032_p9;
wire   [3:0] tmp_69_fu_1032_p11;
wire   [3:0] tmp_69_fu_1032_p13;
wire   [3:0] tmp_69_fu_1032_p15;
wire  signed [3:0] tmp_69_fu_1032_p17;
wire  signed [3:0] tmp_69_fu_1032_p19;
wire  signed [3:0] tmp_69_fu_1032_p21;
wire  signed [3:0] tmp_69_fu_1032_p23;
wire  signed [3:0] tmp_69_fu_1032_p25;
wire  signed [3:0] tmp_69_fu_1032_p27;
wire  signed [3:0] tmp_69_fu_1032_p29;
wire  signed [3:0] tmp_69_fu_1032_p31;
wire   [2:0] tmp_70_fu_1135_p1;
wire   [2:0] tmp_70_fu_1135_p3;
wire   [2:0] tmp_70_fu_1135_p5;
wire   [2:0] tmp_70_fu_1135_p7;
wire  signed [2:0] tmp_70_fu_1135_p9;
wire  signed [2:0] tmp_70_fu_1135_p11;
wire  signed [2:0] tmp_70_fu_1135_p13;
wire  signed [2:0] tmp_70_fu_1135_p15;
wire  signed [3:0] tmp_71_fu_1174_p1;
wire   [3:0] tmp_71_fu_1174_p3;
wire   [3:0] tmp_71_fu_1174_p5;
wire   [3:0] tmp_71_fu_1174_p7;
wire   [3:0] tmp_71_fu_1174_p9;
wire   [3:0] tmp_71_fu_1174_p11;
wire   [3:0] tmp_71_fu_1174_p13;
wire   [3:0] tmp_71_fu_1174_p15;
wire   [3:0] tmp_71_fu_1174_p17;
wire  signed [3:0] tmp_71_fu_1174_p19;
wire  signed [3:0] tmp_71_fu_1174_p21;
wire  signed [3:0] tmp_71_fu_1174_p23;
wire  signed [3:0] tmp_71_fu_1174_p25;
wire  signed [3:0] tmp_71_fu_1174_p27;
wire  signed [3:0] tmp_71_fu_1174_p29;
wire  signed [3:0] tmp_71_fu_1174_p31;
wire  signed [3:0] tmp_73_fu_1269_p1;
wire  signed [3:0] tmp_73_fu_1269_p3;
wire   [3:0] tmp_73_fu_1269_p5;
wire   [3:0] tmp_73_fu_1269_p7;
wire   [3:0] tmp_73_fu_1269_p9;
wire   [3:0] tmp_73_fu_1269_p11;
wire   [3:0] tmp_73_fu_1269_p13;
wire   [3:0] tmp_73_fu_1269_p15;
wire   [3:0] tmp_73_fu_1269_p17;
wire   [3:0] tmp_73_fu_1269_p19;
wire  signed [3:0] tmp_73_fu_1269_p21;
wire  signed [3:0] tmp_73_fu_1269_p23;
wire  signed [3:0] tmp_73_fu_1269_p25;
wire  signed [3:0] tmp_73_fu_1269_p27;
wire  signed [3:0] tmp_73_fu_1269_p29;
wire  signed [3:0] tmp_73_fu_1269_p31;
wire   [2:0] tmp_72_fu_1434_p1;
wire   [2:0] tmp_72_fu_1434_p3;
wire   [2:0] tmp_72_fu_1434_p5;
wire   [2:0] tmp_72_fu_1434_p7;
wire  signed [2:0] tmp_72_fu_1434_p9;
wire  signed [2:0] tmp_72_fu_1434_p11;
wire  signed [2:0] tmp_72_fu_1434_p13;
wire  signed [2:0] tmp_72_fu_1434_p15;
wire   [2:0] tmp_74_fu_1505_p1;
wire   [2:0] tmp_74_fu_1505_p3;
wire   [2:0] tmp_74_fu_1505_p5;
wire   [2:0] tmp_74_fu_1505_p7;
wire  signed [2:0] tmp_74_fu_1505_p9;
wire  signed [2:0] tmp_74_fu_1505_p11;
wire  signed [2:0] tmp_74_fu_1505_p13;
wire  signed [2:0] tmp_74_fu_1505_p15;
wire  signed [3:0] tmp_75_fu_1544_p1;
wire  signed [3:0] tmp_75_fu_1544_p3;
wire  signed [3:0] tmp_75_fu_1544_p5;
wire   [3:0] tmp_75_fu_1544_p7;
wire   [3:0] tmp_75_fu_1544_p9;
wire   [3:0] tmp_75_fu_1544_p11;
wire   [3:0] tmp_75_fu_1544_p13;
wire   [3:0] tmp_75_fu_1544_p15;
wire   [3:0] tmp_75_fu_1544_p17;
wire   [3:0] tmp_75_fu_1544_p19;
wire   [3:0] tmp_75_fu_1544_p21;
wire  signed [3:0] tmp_75_fu_1544_p23;
wire  signed [3:0] tmp_75_fu_1544_p25;
wire  signed [3:0] tmp_75_fu_1544_p27;
wire  signed [3:0] tmp_75_fu_1544_p29;
wire  signed [3:0] tmp_75_fu_1544_p31;
wire   [2:0] tmp_76_fu_1675_p1;
wire   [2:0] tmp_76_fu_1675_p3;
wire   [2:0] tmp_76_fu_1675_p5;
wire   [2:0] tmp_76_fu_1675_p7;
wire  signed [2:0] tmp_76_fu_1675_p9;
wire  signed [2:0] tmp_76_fu_1675_p11;
wire  signed [2:0] tmp_76_fu_1675_p13;
wire  signed [2:0] tmp_76_fu_1675_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_186 = 64'd0;
#0 min_s_fu_190 = 8'd0;
#0 min_s_1_fu_194 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U182(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_69_fu_1032_p33),.sel(trunc_ln17_reg_2183),.dout(tmp_69_fu_1032_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U183(.din0(tmp_70_fu_1135_p2),.din1(tmp_70_fu_1135_p4),.din2(tmp_70_fu_1135_p6),.din3(tmp_70_fu_1135_p8),.din4(tmp_70_fu_1135_p10),.din5(tmp_70_fu_1135_p12),.din6(tmp_70_fu_1135_p14),.din7(tmp_70_fu_1135_p16),.def(tmp_70_fu_1135_p17),.sel(empty),.dout(tmp_70_fu_1135_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hF ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.CASE13( 4'hC ),.din13_WIDTH( 64 ),.CASE14( 4'hD ),.din14_WIDTH( 64 ),.CASE15( 4'hE ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U184(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_71_fu_1174_p33),.sel(trunc_ln17_reg_2183),.dout(tmp_71_fu_1174_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 64 ),.CASE1( 4'hF ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.CASE11( 4'h9 ),.din11_WIDTH( 64 ),.CASE12( 4'hA ),.din12_WIDTH( 64 ),.CASE13( 4'hB ),.din13_WIDTH( 64 ),.CASE14( 4'hC ),.din14_WIDTH( 64 ),.CASE15( 4'hD ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U185(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_73_fu_1269_p33),.sel(trunc_ln17_reg_2183),.dout(tmp_73_fu_1269_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U186(.din0(tmp_72_fu_1434_p2),.din1(tmp_72_fu_1434_p4),.din2(tmp_72_fu_1434_p6),.din3(tmp_72_fu_1434_p8),.din4(tmp_72_fu_1434_p10),.din5(tmp_72_fu_1434_p12),.din6(tmp_72_fu_1434_p14),.din7(tmp_72_fu_1434_p16),.def(tmp_72_fu_1434_p17),.sel(empty),.dout(tmp_72_fu_1434_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U187(.din0(tmp_74_fu_1505_p2),.din1(tmp_74_fu_1505_p4),.din2(tmp_74_fu_1505_p6),.din3(tmp_74_fu_1505_p8),.din4(tmp_74_fu_1505_p10),.din5(tmp_74_fu_1505_p12),.din6(tmp_74_fu_1505_p14),.din7(tmp_74_fu_1505_p16),.def(tmp_74_fu_1505_p17),.sel(empty),.dout(tmp_74_fu_1505_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hD ),.din0_WIDTH( 64 ),.CASE1( 4'hE ),.din1_WIDTH( 64 ),.CASE2( 4'hF ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.CASE13( 4'hA ),.din13_WIDTH( 64 ),.CASE14( 4'hB ),.din14_WIDTH( 64 ),.CASE15( 4'hC ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U188(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(tmp_75_fu_1544_p33),.sel(trunc_ln17_reg_2183),.dout(tmp_75_fu_1544_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U189(.din0(tmp_76_fu_1675_p2),.din1(tmp_76_fu_1675_p4),.din2(tmp_76_fu_1675_p6),.din3(tmp_76_fu_1675_p8),.din4(tmp_76_fu_1675_p10),.din5(tmp_76_fu_1675_p12),.din6(tmp_76_fu_1675_p14),.din7(tmp_76_fu_1675_p16),.def(tmp_76_fu_1675_p17),.sel(empty),.dout(tmp_76_fu_1675_p19));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_p_fu_186 <= min_p_147;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_186 <= min_p_135_fu_2109_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_194 <= 6'd1;
    end else if (((tmp_1_reg_2329 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_1_fu_194 <= add_ln53_3_fu_1714_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_s_fu_190 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_s_fu_190 <= min_s_7_fu_2119_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_2317 <= add_ln53_1_fu_1012_p2;
        add_ln53_1_reg_2317_pp0_iter1_reg <= add_ln53_1_reg_2317;
        add_ln53_2_reg_2323 <= add_ln53_2_fu_1018_p2;
        add_ln53_reg_2311 <= add_ln53_fu_1006_p2;
        add_ln53_reg_2311_pp0_iter1_reg <= add_ln53_reg_2311;
        s_reg_2177 <= ap_sig_allocacmp_s;
        s_reg_2177_pp0_iter1_reg <= s_reg_2177;
        tmp_1_reg_2329 <= add_ln53_2_fu_1018_p2[32'd6];
        tmp_1_reg_2329_pp0_iter1_reg <= tmp_1_reg_2329;
        trunc_ln17_reg_2183 <= trunc_ln17_fu_938_p1;
        zext_ln52_2_cast_reg_2170[4 : 0] <= zext_ln52_2_cast_fu_912_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_1_reg_2592 <= and_ln55_1_fu_1805_p2;
        tmp_72_reg_2513 <= tmp_72_fu_1434_p19;
        tmp_74_reg_2518 <= tmp_74_fu_1505_p19;
        tmp_75_reg_2523 <= tmp_75_fu_1544_p35;
        trunc_ln54_reg_2528 <= trunc_ln54_fu_1615_p1;
        trunc_ln54_reg_2528_pp0_iter1_reg <= trunc_ln54_reg_2528;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_3_reg_2612 <= and_ln55_3_fu_1894_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_5_reg_2630 <= and_ln55_5_fu_2005_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_127_reg_2578 <= min_p_fu_186;
        tmp_69_reg_2333 <= tmp_69_fu_1032_p35;
        tmp_70_reg_2338 <= tmp_70_fu_1135_p19;
        tmp_71_reg_2343 <= tmp_71_fu_1174_p35;
        tmp_73_reg_2388 <= tmp_73_fu_1269_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_129_reg_2605 <= min_p_129_fu_1811_p3;
        tmp_76_reg_2573 <= tmp_76_fu_1675_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_131_reg_2618 <= min_p_131_fu_1913_p3;
        min_s_5_reg_2625 <= min_s_5_fu_1922_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_133_reg_2641 <= min_p_133_fu_2021_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_6_reg_2636 <= min_s_6_fu_2014_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_63_reg_2585 <= grp_fu_745_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_64_reg_2598 <= grp_fu_745_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_907 <= grp_fu_745_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_271_reg_2648 <= grp_fu_1181_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_1_reg_2329 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_1_reg_2329_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_1_fu_194;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_899_p0 = tmp_75_reg_2523;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_899_p0 = tmp_73_reg_2388;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_899_p0 = tmp_71_reg_2343;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_899_p0 = tmp_69_reg_2333;
        end else begin
            grp_fu_899_p0 = 'bx;
        end
    end else begin
        grp_fu_899_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_899_p1 = tmp_76_reg_2573;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_899_p1 = tmp_74_reg_2518;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_899_p1 = tmp_72_reg_2513;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_899_p1 = tmp_70_reg_2338;
        end else begin
            grp_fu_899_p1 = 'bx;
        end
    end else begin
        grp_fu_899_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_903_p0 = p_64_reg_2598;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_903_p0 = p_63_reg_2585;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_903_p0 = reg_907;
    end else begin
        grp_fu_903_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_903_p1 = min_p_133_fu_2021_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_903_p1 = min_p_131_fu_1913_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_903_p1 = min_p_129_fu_1811_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_903_p1 = min_p_fu_186;
        end else begin
            grp_fu_903_p1 = 'bx;
        end
    end else begin
        grp_fu_903_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_10_address0_local = zext_ln54_6_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_10_address0_local = zext_ln54_4_fu_960_p1;
        end else begin
            llike_10_address0_local = 'bx;
        end
    end else begin
        llike_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_11_address0_local = zext_ln54_6_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_11_address0_local = zext_ln54_4_fu_960_p1;
        end else begin
            llike_11_address0_local = 'bx;
        end
    end else begin
        llike_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_12_address0_local = zext_ln54_6_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_12_address0_local = zext_ln54_4_fu_960_p1;
        end else begin
            llike_12_address0_local = 'bx;
        end
    end else begin
        llike_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_13_address0_local = zext_ln54_6_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_13_address0_local = zext_ln54_4_fu_960_p1;
        end else begin
            llike_13_address0_local = 'bx;
        end
    end else begin
        llike_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_14_address0_local = zext_ln54_6_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_14_address0_local = zext_ln54_4_fu_960_p1;
        end else begin
            llike_14_address0_local = 'bx;
        end
    end else begin
        llike_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_15_address0_local = zext_ln54_6_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_15_address0_local = zext_ln54_4_fu_960_p1;
        end else begin
            llike_15_address0_local = 'bx;
        end
    end else begin
        llike_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln54_6_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_4_fu_960_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address0_local = zext_ln54_6_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln54_4_fu_960_p1;
        end else begin
            llike_2_address0_local = 'bx;
        end
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address0_local = zext_ln54_6_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln54_4_fu_960_p1;
        end else begin
            llike_3_address0_local = 'bx;
        end
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_4_address0_local = zext_ln54_6_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln54_4_fu_960_p1;
        end else begin
            llike_4_address0_local = 'bx;
        end
    end else begin
        llike_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_5_address0_local = zext_ln54_6_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln54_4_fu_960_p1;
        end else begin
            llike_5_address0_local = 'bx;
        end
    end else begin
        llike_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_6_address0_local = zext_ln54_6_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln54_4_fu_960_p1;
        end else begin
            llike_6_address0_local = 'bx;
        end
    end else begin
        llike_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_7_address0_local = zext_ln54_6_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln54_4_fu_960_p1;
        end else begin
            llike_7_address0_local = 'bx;
        end
    end else begin
        llike_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_8_address0_local = zext_ln54_6_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_8_address0_local = zext_ln54_4_fu_960_p1;
        end else begin
            llike_8_address0_local = 'bx;
        end
    end else begin
        llike_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_9_address0_local = zext_ln54_6_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_9_address0_local = zext_ln54_4_fu_960_p1;
        end else begin
            llike_9_address0_local = 'bx;
        end
    end else begin
        llike_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln54_6_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_4_fu_960_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_1_reg_2329_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_out_ap_vld = 1'b1;
    end else begin
        min_s_10_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_1352_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_994_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_3_fu_1631_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_1257_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_1352_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_994_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_3_fu_1631_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_1257_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln54_2_fu_1352_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_994_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_2_address1_local = zext_ln54_3_fu_1631_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln54_1_fu_1257_p1;
        end else begin
            transition_2_address1_local = 'bx;
        end
    end else begin
        transition_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_2_ce1_local = 1'b1;
    end else begin
        transition_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln54_2_fu_1352_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_994_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_3_address1_local = zext_ln54_3_fu_1631_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln54_1_fu_1257_p1;
        end else begin
            transition_3_address1_local = 'bx;
        end
    end else begin
        transition_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_3_ce1_local = 1'b1;
    end else begin
        transition_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address0_local = zext_ln54_2_fu_1352_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address0_local = zext_ln54_fu_994_p1;
        end else begin
            transition_4_address0_local = 'bx;
        end
    end else begin
        transition_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_4_address1_local = zext_ln54_3_fu_1631_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address1_local = zext_ln54_1_fu_1257_p1;
        end else begin
            transition_4_address1_local = 'bx;
        end
    end else begin
        transition_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_4_ce0_local = 1'b1;
    end else begin
        transition_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_4_ce1_local = 1'b1;
    end else begin
        transition_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address0_local = zext_ln54_2_fu_1352_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address0_local = zext_ln54_fu_994_p1;
        end else begin
            transition_5_address0_local = 'bx;
        end
    end else begin
        transition_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_5_address1_local = zext_ln54_3_fu_1631_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address1_local = zext_ln54_1_fu_1257_p1;
        end else begin
            transition_5_address1_local = 'bx;
        end
    end else begin
        transition_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_5_ce0_local = 1'b1;
    end else begin
        transition_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_5_ce1_local = 1'b1;
    end else begin
        transition_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address0_local = zext_ln54_2_fu_1352_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address0_local = zext_ln54_fu_994_p1;
        end else begin
            transition_6_address0_local = 'bx;
        end
    end else begin
        transition_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_6_address1_local = zext_ln54_3_fu_1631_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address1_local = zext_ln54_1_fu_1257_p1;
        end else begin
            transition_6_address1_local = 'bx;
        end
    end else begin
        transition_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_6_ce0_local = 1'b1;
    end else begin
        transition_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_6_ce1_local = 1'b1;
    end else begin
        transition_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address0_local = zext_ln54_2_fu_1352_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address0_local = zext_ln54_fu_994_p1;
        end else begin
            transition_7_address0_local = 'bx;
        end
    end else begin
        transition_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_7_address1_local = zext_ln54_3_fu_1631_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address1_local = zext_ln54_1_fu_1257_p1;
        end else begin
            transition_7_address1_local = 'bx;
        end
    end else begin
        transition_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_7_ce0_local = 1'b1;
    end else begin
        transition_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_7_ce1_local = 1'b1;
    end else begin
        transition_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln53_1_fu_1012_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_1018_p2 = (zext_ln17_fu_934_p1 + 7'd3);
assign add_ln53_3_fu_1714_p2 = (s_reg_2177 + 6'd4);
assign add_ln53_fu_1006_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_1252_p2 = (shl_ln54_1_fu_1245_p3 + zext_ln52_2_cast_reg_2170);
assign add_ln54_2_fu_1347_p2 = (shl_ln54_2_fu_1340_p3 + zext_ln52_2_cast_reg_2170);
assign add_ln54_3_fu_1626_p2 = (shl_ln54_3_fu_1618_p3 + zext_ln52_2_cast_reg_2170);
assign add_ln54_4_fu_1377_p2 = (zext_ln52_3 + zext_ln54_5_fu_1373_p1);
assign add_ln54_fu_988_p2 = (shl_ln2_fu_980_p3 + zext_ln52_2_cast_fu_912_p1);
assign and_ln55_1_fu_1805_p2 = (or_ln55_1_fu_1793_p2 & and_ln55_fu_1799_p2);
assign and_ln55_2_fu_1888_p2 = (or_ln55_3_fu_1882_p2 & or_ln55_2_fu_1864_p2);
assign and_ln55_3_fu_1894_p2 = (grp_fu_1181_p_dout0 & and_ln55_2_fu_1888_p2);
assign and_ln55_4_fu_1999_p2 = (or_ln55_5_fu_1993_p2 & or_ln55_4_fu_1975_p2);
assign and_ln55_5_fu_2005_p2 = (grp_fu_1181_p_dout0 & and_ln55_4_fu_1999_p2);
assign and_ln55_6_fu_2098_p2 = (or_ln55_7_fu_2092_p2 & or_ln55_6_fu_2074_p2);
assign and_ln55_7_fu_2104_p2 = (tmp_271_reg_2648 & and_ln55_6_fu_2098_p2);
assign and_ln55_fu_1799_p2 = (or_ln55_fu_1775_p2 & grp_fu_1181_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign bitcast_ln55_1_fu_1746_p1 = min_p_127_reg_2578;
assign bitcast_ln55_2_fu_1818_p1 = p_63_reg_2585;
assign bitcast_ln55_3_fu_1835_p1 = min_p_129_reg_2605;
assign bitcast_ln55_4_fu_1929_p1 = p_64_reg_2598;
assign bitcast_ln55_5_fu_1946_p1 = min_p_131_reg_2618;
assign bitcast_ln55_6_fu_2027_p1 = reg_907;
assign bitcast_ln55_7_fu_2045_p1 = min_p_133_reg_2641;
assign bitcast_ln55_fu_1728_p1 = reg_907;
assign grp_fu_1181_p_ce = 1'b1;
assign grp_fu_1181_p_din0 = grp_fu_903_p0;
assign grp_fu_1181_p_din1 = grp_fu_903_p1;
assign grp_fu_1181_p_opcode = 5'd4;
assign grp_fu_745_p_ce = 1'b1;
assign grp_fu_745_p_din0 = grp_fu_899_p0;
assign grp_fu_745_p_din1 = grp_fu_899_p1;
assign grp_fu_745_p_opcode = 2'd0;
assign icmp_ln55_10_fu_1981_p2 = ((tmp_267_fu_1949_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1987_p2 = ((trunc_ln55_5_fu_1959_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_2062_p2 = ((tmp_269_fu_2031_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_2068_p2 = ((trunc_ln55_6_fu_2041_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_2080_p2 = ((tmp_270_fu_2048_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_2086_p2 = ((trunc_ln55_7_fu_2058_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_1769_p2 = ((trunc_ln55_fu_1742_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_1781_p2 = ((tmp_261_fu_1749_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_1787_p2 = ((trunc_ln55_1_fu_1759_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_1852_p2 = ((tmp_263_fu_1821_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_1858_p2 = ((trunc_ln55_2_fu_1831_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1870_p2 = ((tmp_264_fu_1838_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1876_p2 = ((trunc_ln55_3_fu_1848_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1963_p2 = ((tmp_266_fu_1932_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1969_p2 = ((trunc_ln55_4_fu_1942_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_1763_p2 = ((tmp_260_fu_1732_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_10_address0 = llike_10_address0_local;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_11_address0 = llike_11_address0_local;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_12_address0 = llike_12_address0_local;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_13_address0 = llike_13_address0_local;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_14_address0 = llike_14_address0_local;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_15_address0 = llike_15_address0_local;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = llike_4_address0_local;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = llike_5_address0_local;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = llike_6_address0_local;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = llike_7_address0_local;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_8_address0 = llike_8_address0_local;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_9_address0 = llike_9_address0_local;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_1_fu_942_p4 = {{ap_sig_allocacmp_s[5:4]}};
assign lshr_ln9_3_fu_1364_p4 = {{add_ln53_2_reg_2323[6:4]}};
assign min_p_129_fu_1811_p3 = ((and_ln55_1_reg_2592[0:0] == 1'b1) ? reg_907 : min_p_127_reg_2578);
assign min_p_131_fu_1913_p3 = ((and_ln55_3_reg_2612[0:0] == 1'b1) ? p_63_reg_2585 : min_p_129_reg_2605);
assign min_p_133_fu_2021_p3 = ((and_ln55_5_reg_2630[0:0] == 1'b1) ? p_64_reg_2598 : min_p_131_reg_2618);
assign min_p_135_fu_2109_p3 = ((and_ln55_7_fu_2104_p2[0:0] == 1'b1) ? reg_907 : min_p_133_reg_2641);
assign min_s_10_out = ((and_ln55_5_reg_2630[0:0] == 1'b1) ? zext_ln55_2_fu_2011_p1 : min_s_5_reg_2625);
assign min_s_4_fu_1906_p3 = ((and_ln55_1_reg_2592[0:0] == 1'b1) ? zext_ln55_fu_1903_p1 : min_s_fu_190);
assign min_s_5_fu_1922_p3 = ((and_ln55_3_reg_2612[0:0] == 1'b1) ? zext_ln55_1_fu_1919_p1 : min_s_4_fu_1906_p3);
assign min_s_6_fu_2014_p3 = ((and_ln55_5_reg_2630[0:0] == 1'b1) ? zext_ln55_2_fu_2011_p1 : min_s_5_reg_2625);
assign min_s_7_fu_2119_p3 = ((and_ln55_7_fu_2104_p2[0:0] == 1'b1) ? zext_ln55_3_fu_2116_p1 : min_s_6_reg_2636);
assign or_ln55_1_fu_1793_p2 = (icmp_ln55_3_fu_1787_p2 | icmp_ln55_2_fu_1781_p2);
assign or_ln55_2_fu_1864_p2 = (icmp_ln55_5_fu_1858_p2 | icmp_ln55_4_fu_1852_p2);
assign or_ln55_3_fu_1882_p2 = (icmp_ln55_7_fu_1876_p2 | icmp_ln55_6_fu_1870_p2);
assign or_ln55_4_fu_1975_p2 = (icmp_ln55_9_fu_1969_p2 | icmp_ln55_8_fu_1963_p2);
assign or_ln55_5_fu_1993_p2 = (icmp_ln55_11_fu_1987_p2 | icmp_ln55_10_fu_1981_p2);
assign or_ln55_6_fu_2074_p2 = (icmp_ln55_13_fu_2068_p2 | icmp_ln55_12_fu_2062_p2);
assign or_ln55_7_fu_2092_p2 = (icmp_ln55_15_fu_2086_p2 | icmp_ln55_14_fu_2080_p2);
assign or_ln55_fu_1775_p2 = (icmp_ln55_fu_1763_p2 | icmp_ln55_1_fu_1769_p2);
assign shl_ln2_fu_980_p3 = {{ap_sig_allocacmp_s}, {3'd0}};
assign shl_ln54_1_fu_1245_p3 = {{add_ln53_reg_2311}, {3'd0}};
assign shl_ln54_2_fu_1340_p3 = {{add_ln53_1_reg_2317}, {3'd0}};
assign shl_ln54_3_fu_1618_p3 = {{trunc_ln54_fu_1615_p1}, {3'd0}};
assign tmp_260_fu_1732_p4 = {{bitcast_ln55_fu_1728_p1[62:52]}};
assign tmp_261_fu_1749_p4 = {{bitcast_ln55_1_fu_1746_p1[62:52]}};
assign tmp_263_fu_1821_p4 = {{bitcast_ln55_2_fu_1818_p1[62:52]}};
assign tmp_264_fu_1838_p4 = {{bitcast_ln55_3_fu_1835_p1[62:52]}};
assign tmp_266_fu_1932_p4 = {{bitcast_ln55_4_fu_1929_p1[62:52]}};
assign tmp_267_fu_1949_p4 = {{bitcast_ln55_5_fu_1946_p1[62:52]}};
assign tmp_269_fu_2031_p4 = {{bitcast_ln55_6_fu_2027_p1[62:52]}};
assign tmp_270_fu_2048_p4 = {{bitcast_ln55_7_fu_2045_p1[62:52]}};
assign tmp_69_fu_1032_p33 = 'bx;
assign tmp_70_fu_1135_p10 = transition_4_q0;
assign tmp_70_fu_1135_p12 = transition_5_q0;
assign tmp_70_fu_1135_p14 = transition_6_q0;
assign tmp_70_fu_1135_p16 = transition_7_q0;
assign tmp_70_fu_1135_p17 = 'bx;
assign tmp_70_fu_1135_p2 = transition_0_q0;
assign tmp_70_fu_1135_p4 = transition_1_q0;
assign tmp_70_fu_1135_p6 = transition_2_q0;
assign tmp_70_fu_1135_p8 = transition_3_q0;
assign tmp_71_fu_1174_p33 = 'bx;
assign tmp_72_fu_1434_p10 = transition_4_q1;
assign tmp_72_fu_1434_p12 = transition_5_q1;
assign tmp_72_fu_1434_p14 = transition_6_q1;
assign tmp_72_fu_1434_p16 = transition_7_q1;
assign tmp_72_fu_1434_p17 = 'bx;
assign tmp_72_fu_1434_p2 = transition_0_q1;
assign tmp_72_fu_1434_p4 = transition_1_q1;
assign tmp_72_fu_1434_p6 = transition_2_q1;
assign tmp_72_fu_1434_p8 = transition_3_q1;
assign tmp_73_fu_1269_p33 = 'bx;
assign tmp_74_fu_1505_p10 = transition_4_q0;
assign tmp_74_fu_1505_p12 = transition_5_q0;
assign tmp_74_fu_1505_p14 = transition_6_q0;
assign tmp_74_fu_1505_p16 = transition_7_q0;
assign tmp_74_fu_1505_p17 = 'bx;
assign tmp_74_fu_1505_p2 = transition_0_q0;
assign tmp_74_fu_1505_p4 = transition_1_q0;
assign tmp_74_fu_1505_p6 = transition_2_q0;
assign tmp_74_fu_1505_p8 = transition_3_q0;
assign tmp_75_fu_1544_p33 = 'bx;
assign tmp_76_fu_1675_p10 = transition_4_q1;
assign tmp_76_fu_1675_p12 = transition_5_q1;
assign tmp_76_fu_1675_p14 = transition_6_q1;
assign tmp_76_fu_1675_p16 = transition_7_q1;
assign tmp_76_fu_1675_p17 = 'bx;
assign tmp_76_fu_1675_p2 = transition_0_q1;
assign tmp_76_fu_1675_p4 = transition_1_q1;
assign tmp_76_fu_1675_p6 = transition_2_q1;
assign tmp_76_fu_1675_p8 = transition_3_q1;
assign tmp_s_fu_952_p3 = {{t_1}, {lshr_ln8_1_fu_942_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign transition_2_address0 = transition_2_address0_local;
assign transition_2_address1 = transition_2_address1_local;
assign transition_2_ce0 = transition_2_ce0_local;
assign transition_2_ce1 = transition_2_ce1_local;
assign transition_3_address0 = transition_3_address0_local;
assign transition_3_address1 = transition_3_address1_local;
assign transition_3_ce0 = transition_3_ce0_local;
assign transition_3_ce1 = transition_3_ce1_local;
assign transition_4_address0 = transition_4_address0_local;
assign transition_4_address1 = transition_4_address1_local;
assign transition_4_ce0 = transition_4_ce0_local;
assign transition_4_ce1 = transition_4_ce1_local;
assign transition_5_address0 = transition_5_address0_local;
assign transition_5_address1 = transition_5_address1_local;
assign transition_5_ce0 = transition_5_ce0_local;
assign transition_5_ce1 = transition_5_ce1_local;
assign transition_6_address0 = transition_6_address0_local;
assign transition_6_address1 = transition_6_address1_local;
assign transition_6_ce0 = transition_6_ce0_local;
assign transition_6_ce1 = transition_6_ce1_local;
assign transition_7_address0 = transition_7_address0_local;
assign transition_7_address1 = transition_7_address1_local;
assign transition_7_ce0 = transition_7_ce0_local;
assign transition_7_ce1 = transition_7_ce1_local;
assign trunc_ln17_fu_938_p1 = ap_sig_allocacmp_s[3:0];
assign trunc_ln54_fu_1615_p1 = add_ln53_2_reg_2323[5:0];
assign trunc_ln55_1_fu_1759_p1 = bitcast_ln55_1_fu_1746_p1[51:0];
assign trunc_ln55_2_fu_1831_p1 = bitcast_ln55_2_fu_1818_p1[51:0];
assign trunc_ln55_3_fu_1848_p1 = bitcast_ln55_3_fu_1835_p1[51:0];
assign trunc_ln55_4_fu_1942_p1 = bitcast_ln55_4_fu_1929_p1[51:0];
assign trunc_ln55_5_fu_1959_p1 = bitcast_ln55_5_fu_1946_p1[51:0];
assign trunc_ln55_6_fu_2041_p1 = bitcast_ln55_6_fu_2027_p1[51:0];
assign trunc_ln55_7_fu_2058_p1 = bitcast_ln55_7_fu_2045_p1[51:0];
assign trunc_ln55_fu_1742_p1 = bitcast_ln55_fu_1728_p1[51:0];
assign zext_ln17_fu_934_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_912_p1 = zext_ln52_2;
assign zext_ln54_1_fu_1257_p1 = add_ln54_1_fu_1252_p2;
assign zext_ln54_2_fu_1352_p1 = add_ln54_2_fu_1347_p2;
assign zext_ln54_3_fu_1631_p1 = add_ln54_3_fu_1626_p2;
assign zext_ln54_4_fu_960_p1 = tmp_s_fu_952_p3;
assign zext_ln54_5_fu_1373_p1 = lshr_ln9_3_fu_1364_p4;
assign zext_ln54_6_fu_1382_p1 = add_ln54_4_fu_1377_p2;
assign zext_ln54_fu_994_p1 = add_ln54_fu_988_p2;
assign zext_ln55_1_fu_1919_p1 = add_ln53_reg_2311_pp0_iter1_reg;
assign zext_ln55_2_fu_2011_p1 = add_ln53_1_reg_2317_pp0_iter1_reg;
assign zext_ln55_3_fu_2116_p1 = trunc_ln54_reg_2528_pp0_iter1_reg;
assign zext_ln55_fu_1903_p1 = s_reg_2177_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_2170[8:5] <= 4'b0000;
end
endmodule 