
module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_6,empty_9,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_8_address0,llike_8_ce0,llike_8_q0,llike_9_address0,llike_9_ce0,llike_9_q0,llike_10_address0,llike_10_ce0,llike_10_q0,llike_11_address0,llike_11_ce0,llike_11_q0,llike_12_address0,llike_12_ce0,llike_12_q0,llike_13_address0,llike_13_ce0,llike_13_q0,llike_14_address0,llike_14_ce0,llike_14_q0,llike_15_address0,llike_15_ce0,llike_15_q0,llike_16_address0,llike_16_ce0,llike_16_q0,llike_17_address0,llike_17_ce0,llike_17_q0,llike_18_address0,llike_18_ce0,llike_18_q0,llike_19_address0,llike_19_ce0,llike_19_q0,llike_20_address0,llike_20_ce0,llike_20_q0,llike_21_address0,llike_21_ce0,llike_21_q0,llike_22_address0,llike_22_ce0,llike_22_q0,llike_23_address0,llike_23_ce0,llike_23_q0,llike_24_address0,llike_24_ce0,llike_24_q0,llike_25_address0,llike_25_ce0,llike_25_q0,llike_26_address0,llike_26_ce0,llike_26_q0,llike_27_address0,llike_27_ce0,llike_27_q0,llike_28_address0,llike_28_ce0,llike_28_q0,llike_29_address0,llike_29_ce0,llike_29_q0,llike_30_address0,llike_30_ce0,llike_30_q0,llike_31_address0,llike_31_ce0,llike_31_q0,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,transition_4_address0,transition_4_ce0,transition_4_q0,transition_4_address1,transition_4_ce1,transition_4_q1,transition_5_address0,transition_5_ce0,transition_5_q0,transition_5_address1,transition_5_ce1,transition_5_q1,transition_6_address0,transition_6_ce0,transition_6_q0,transition_6_address1,transition_6_ce1,transition_6_q1,transition_7_address0,transition_7_ce0,transition_7_q0,transition_7_address1,transition_7_ce1,transition_7_q1,empty_10,tmp_8,empty,min_p_10_out,min_p_10_out_ap_vld,grp_fu_1607_p_din0,grp_fu_1607_p_din1,grp_fu_1607_p_opcode,grp_fu_1607_p_dout0,grp_fu_1607_p_ce,grp_fu_2674_p_din0,grp_fu_2674_p_din1,grp_fu_2674_p_opcode,grp_fu_2674_p_dout0,grp_fu_2674_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_6;
input  [7:0] empty_9;
output  [8:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [8:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [8:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [8:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [8:0] llike_4_address0;
output   llike_4_ce0;
input  [63:0] llike_4_q0;
output  [8:0] llike_5_address0;
output   llike_5_ce0;
input  [63:0] llike_5_q0;
output  [8:0] llike_6_address0;
output   llike_6_ce0;
input  [63:0] llike_6_q0;
output  [8:0] llike_7_address0;
output   llike_7_ce0;
input  [63:0] llike_7_q0;
output  [8:0] llike_8_address0;
output   llike_8_ce0;
input  [63:0] llike_8_q0;
output  [8:0] llike_9_address0;
output   llike_9_ce0;
input  [63:0] llike_9_q0;
output  [8:0] llike_10_address0;
output   llike_10_ce0;
input  [63:0] llike_10_q0;
output  [8:0] llike_11_address0;
output   llike_11_ce0;
input  [63:0] llike_11_q0;
output  [8:0] llike_12_address0;
output   llike_12_ce0;
input  [63:0] llike_12_q0;
output  [8:0] llike_13_address0;
output   llike_13_ce0;
input  [63:0] llike_13_q0;
output  [8:0] llike_14_address0;
output   llike_14_ce0;
input  [63:0] llike_14_q0;
output  [8:0] llike_15_address0;
output   llike_15_ce0;
input  [63:0] llike_15_q0;
output  [8:0] llike_16_address0;
output   llike_16_ce0;
input  [63:0] llike_16_q0;
output  [8:0] llike_17_address0;
output   llike_17_ce0;
input  [63:0] llike_17_q0;
output  [8:0] llike_18_address0;
output   llike_18_ce0;
input  [63:0] llike_18_q0;
output  [8:0] llike_19_address0;
output   llike_19_ce0;
input  [63:0] llike_19_q0;
output  [8:0] llike_20_address0;
output   llike_20_ce0;
input  [63:0] llike_20_q0;
output  [8:0] llike_21_address0;
output   llike_21_ce0;
input  [63:0] llike_21_q0;
output  [8:0] llike_22_address0;
output   llike_22_ce0;
input  [63:0] llike_22_q0;
output  [8:0] llike_23_address0;
output   llike_23_ce0;
input  [63:0] llike_23_q0;
output  [8:0] llike_24_address0;
output   llike_24_ce0;
input  [63:0] llike_24_q0;
output  [8:0] llike_25_address0;
output   llike_25_ce0;
input  [63:0] llike_25_q0;
output  [8:0] llike_26_address0;
output   llike_26_ce0;
input  [63:0] llike_26_q0;
output  [8:0] llike_27_address0;
output   llike_27_ce0;
input  [63:0] llike_27_q0;
output  [8:0] llike_28_address0;
output   llike_28_ce0;
input  [63:0] llike_28_q0;
output  [8:0] llike_29_address0;
output   llike_29_ce0;
input  [63:0] llike_29_q0;
output  [8:0] llike_30_address0;
output   llike_30_ce0;
input  [63:0] llike_30_q0;
output  [8:0] llike_31_address0;
output   llike_31_ce0;
input  [63:0] llike_31_q0;
input  [2:0] lshr_ln;
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
input  [2:0] empty_10;
input  [63:0] tmp_8;
input  [8:0] empty;
output  [63:0] min_p_10_out;
output   min_p_10_out_ap_vld;
output  [63:0] grp_fu_1607_p_din0;
output  [63:0] grp_fu_1607_p_din1;
output  [1:0] grp_fu_1607_p_opcode;
input  [63:0] grp_fu_1607_p_dout0;
output   grp_fu_1607_p_ce;
output  [63:0] grp_fu_2674_p_din0;
output  [63:0] grp_fu_2674_p_din1;
output  [4:0] grp_fu_2674_p_opcode;
input  [0:0] grp_fu_2674_p_dout0;
output   grp_fu_2674_p_ce;
reg ap_idle;
reg min_p_10_out_ap_vld;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
reg   [0:0] tmp_19_reg_2209;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] trunc_ln16_fu_1192_p1;
reg   [4:0] trunc_ln16_reg_1998;
wire   [6:0] add_ln25_fu_1268_p2;
reg   [6:0] add_ln25_reg_2204;
wire   [0:0] tmp_19_fu_1274_p3;
reg   [0:0] tmp_19_reg_2209_pp0_iter1_reg;
reg   [0:0] tmp_19_reg_2209_pp0_iter2_reg;
reg   [0:0] tmp_19_reg_2209_pp0_iter3_reg;
reg   [0:0] tmp_19_reg_2209_pp0_iter4_reg;
wire   [63:0] tmp_9_fu_1317_p67;
reg   [63:0] tmp_9_reg_2253;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_s_fu_1484_p19;
reg   [63:0] tmp_s_reg_2258;
wire   [63:0] tmp_11_fu_1609_p19;
reg   [63:0] tmp_11_reg_2423;
wire   [63:0] tmp_10_fu_1648_p67;
reg   [63:0] tmp_10_reg_2428;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] add1_reg_2433;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] add52_1_reg_2438;
reg   [63:0] p_reg_2443;
reg   [63:0] min_p_7_reg_2450;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] p_2_reg_2457;
wire   [0:0] and_ln29_1_fu_1863_p2;
reg   [0:0] and_ln29_1_reg_2464;
wire   [63:0] min_p_9_fu_1869_p3;
reg   [63:0] min_p_9_reg_2469;
reg   [0:0] tmp_22_reg_2476;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter4_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln26_fu_1212_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_1256_p1;
wire   [63:0] zext_ln27_1_fu_1294_p1;
wire   [63:0] zext_ln26_2_fu_1541_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] min_p_fu_244;
wire   [63:0] min_p_11_fu_1957_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_248;
wire   [5:0] add_ln25_1_fu_1306_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
wire    ap_block_pp0_stage0_01001;
reg    llike_ce0_local;
reg   [8:0] llike_address0_local;
reg    llike_1_ce0_local;
reg   [8:0] llike_1_address0_local;
reg    llike_2_ce0_local;
reg   [8:0] llike_2_address0_local;
reg    llike_3_ce0_local;
reg   [8:0] llike_3_address0_local;
reg    llike_4_ce0_local;
reg   [8:0] llike_4_address0_local;
reg    llike_5_ce0_local;
reg   [8:0] llike_5_address0_local;
reg    llike_6_ce0_local;
reg   [8:0] llike_6_address0_local;
reg    llike_7_ce0_local;
reg   [8:0] llike_7_address0_local;
reg    llike_8_ce0_local;
reg   [8:0] llike_8_address0_local;
reg    llike_9_ce0_local;
reg   [8:0] llike_9_address0_local;
reg    llike_10_ce0_local;
reg   [8:0] llike_10_address0_local;
reg    llike_11_ce0_local;
reg   [8:0] llike_11_address0_local;
reg    llike_12_ce0_local;
reg   [8:0] llike_12_address0_local;
reg    llike_13_ce0_local;
reg   [8:0] llike_13_address0_local;
reg    llike_14_ce0_local;
reg   [8:0] llike_14_address0_local;
reg    llike_15_ce0_local;
reg   [8:0] llike_15_address0_local;
reg    llike_16_ce0_local;
reg   [8:0] llike_16_address0_local;
reg    llike_17_ce0_local;
reg   [8:0] llike_17_address0_local;
reg    llike_18_ce0_local;
reg   [8:0] llike_18_address0_local;
reg    llike_19_ce0_local;
reg   [8:0] llike_19_address0_local;
reg    llike_20_ce0_local;
reg   [8:0] llike_20_address0_local;
reg    llike_21_ce0_local;
reg   [8:0] llike_21_address0_local;
reg    llike_22_ce0_local;
reg   [8:0] llike_22_address0_local;
reg    llike_23_ce0_local;
reg   [8:0] llike_23_address0_local;
reg    llike_24_ce0_local;
reg   [8:0] llike_24_address0_local;
reg    llike_25_ce0_local;
reg   [8:0] llike_25_address0_local;
reg    llike_26_ce0_local;
reg   [8:0] llike_26_address0_local;
reg    llike_27_ce0_local;
reg   [8:0] llike_27_address0_local;
reg    llike_28_ce0_local;
reg   [8:0] llike_28_address0_local;
reg    llike_29_ce0_local;
reg   [8:0] llike_29_address0_local;
reg    llike_30_ce0_local;
reg   [8:0] llike_30_address0_local;
reg    llike_31_ce0_local;
reg   [8:0] llike_31_address0_local;
reg    transition_0_ce1_local;
reg    transition_0_ce0_local;
reg    transition_1_ce1_local;
reg    transition_1_ce0_local;
reg    transition_2_ce1_local;
reg    transition_2_ce0_local;
reg    transition_3_ce1_local;
reg    transition_3_ce0_local;
reg    transition_4_ce1_local;
reg    transition_4_ce0_local;
reg    transition_5_ce1_local;
reg    transition_5_ce0_local;
reg    transition_6_ce1_local;
reg    transition_6_ce0_local;
reg    transition_7_ce1_local;
reg    transition_7_ce0_local;
reg   [63:0] grp_fu_1167_p0;
reg   [63:0] grp_fu_1167_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_1171_p0;
reg   [63:0] grp_fu_1171_p1;
wire   [0:0] tmp_14_fu_1196_p3;
wire   [8:0] tmp_15_fu_1204_p3;
wire   [8:0] add_ln_fu_1248_p3;
wire   [6:0] zext_ln16_fu_1188_p1;
wire   [5:0] trunc_ln27_fu_1282_p1;
wire   [8:0] add_ln27_1_fu_1286_p3;
wire   [63:0] tmp_9_fu_1317_p65;
wire   [63:0] tmp_s_fu_1484_p2;
wire   [63:0] tmp_s_fu_1484_p4;
wire   [63:0] tmp_s_fu_1484_p6;
wire   [63:0] tmp_s_fu_1484_p8;
wire   [63:0] tmp_s_fu_1484_p10;
wire   [63:0] tmp_s_fu_1484_p12;
wire   [63:0] tmp_s_fu_1484_p14;
wire   [63:0] tmp_s_fu_1484_p16;
wire   [63:0] tmp_s_fu_1484_p17;
wire   [1:0] lshr_ln8_1_fu_1523_p4;
wire   [8:0] zext_ln26_1_fu_1532_p1;
wire   [8:0] add_ln26_fu_1536_p2;
wire   [63:0] tmp_11_fu_1609_p2;
wire   [63:0] tmp_11_fu_1609_p4;
wire   [63:0] tmp_11_fu_1609_p6;
wire   [63:0] tmp_11_fu_1609_p8;
wire   [63:0] tmp_11_fu_1609_p10;
wire   [63:0] tmp_11_fu_1609_p12;
wire   [63:0] tmp_11_fu_1609_p14;
wire   [63:0] tmp_11_fu_1609_p16;
wire   [63:0] tmp_11_fu_1609_p17;
wire   [63:0] tmp_10_fu_1648_p65;
wire    ap_block_pp0_stage4;
wire   [63:0] bitcast_ln29_fu_1787_p1;
wire   [63:0] bitcast_ln29_1_fu_1804_p1;
wire   [10:0] tmp_16_fu_1790_p4;
wire   [51:0] trunc_ln29_fu_1800_p1;
wire   [0:0] icmp_ln29_1_fu_1827_p2;
wire   [0:0] icmp_ln29_fu_1821_p2;
wire   [10:0] tmp_17_fu_1807_p4;
wire   [51:0] trunc_ln29_1_fu_1817_p1;
wire   [0:0] icmp_ln29_3_fu_1845_p2;
wire   [0:0] icmp_ln29_2_fu_1839_p2;
wire   [0:0] or_ln29_fu_1833_p2;
wire   [0:0] and_ln29_fu_1857_p2;
wire   [0:0] or_ln29_1_fu_1851_p2;
wire   [63:0] bitcast_ln29_2_fu_1876_p1;
wire   [63:0] bitcast_ln29_3_fu_1893_p1;
wire   [10:0] tmp_20_fu_1879_p4;
wire   [51:0] trunc_ln29_2_fu_1889_p1;
wire   [0:0] icmp_ln29_5_fu_1916_p2;
wire   [0:0] icmp_ln29_4_fu_1910_p2;
wire   [10:0] tmp_21_fu_1896_p4;
wire   [51:0] trunc_ln29_3_fu_1906_p1;
wire   [0:0] icmp_ln29_7_fu_1934_p2;
wire   [0:0] icmp_ln29_6_fu_1928_p2;
wire   [0:0] or_ln29_3_fu_1940_p2;
wire   [0:0] or_ln29_2_fu_1922_p2;
wire   [0:0] and_ln29_2_fu_1946_p2;
wire   [0:0] and_ln29_3_fu_1952_p2;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage1_00001;
wire   [4:0] tmp_9_fu_1317_p1;
wire   [4:0] tmp_9_fu_1317_p3;
wire   [4:0] tmp_9_fu_1317_p5;
wire   [4:0] tmp_9_fu_1317_p7;
wire   [4:0] tmp_9_fu_1317_p9;
wire   [4:0] tmp_9_fu_1317_p11;
wire   [4:0] tmp_9_fu_1317_p13;
wire   [4:0] tmp_9_fu_1317_p15;
wire   [4:0] tmp_9_fu_1317_p17;
wire   [4:0] tmp_9_fu_1317_p19;
wire   [4:0] tmp_9_fu_1317_p21;
wire   [4:0] tmp_9_fu_1317_p23;
wire   [4:0] tmp_9_fu_1317_p25;
wire   [4:0] tmp_9_fu_1317_p27;
wire   [4:0] tmp_9_fu_1317_p29;
wire   [4:0] tmp_9_fu_1317_p31;
wire  signed [4:0] tmp_9_fu_1317_p33;
wire  signed [4:0] tmp_9_fu_1317_p35;
wire  signed [4:0] tmp_9_fu_1317_p37;
wire  signed [4:0] tmp_9_fu_1317_p39;
wire  signed [4:0] tmp_9_fu_1317_p41;
wire  signed [4:0] tmp_9_fu_1317_p43;
wire  signed [4:0] tmp_9_fu_1317_p45;
wire  signed [4:0] tmp_9_fu_1317_p47;
wire  signed [4:0] tmp_9_fu_1317_p49;
wire  signed [4:0] tmp_9_fu_1317_p51;
wire  signed [4:0] tmp_9_fu_1317_p53;
wire  signed [4:0] tmp_9_fu_1317_p55;
wire  signed [4:0] tmp_9_fu_1317_p57;
wire  signed [4:0] tmp_9_fu_1317_p59;
wire  signed [4:0] tmp_9_fu_1317_p61;
wire  signed [4:0] tmp_9_fu_1317_p63;
wire   [2:0] tmp_s_fu_1484_p1;
wire   [2:0] tmp_s_fu_1484_p3;
wire   [2:0] tmp_s_fu_1484_p5;
wire   [2:0] tmp_s_fu_1484_p7;
wire  signed [2:0] tmp_s_fu_1484_p9;
wire  signed [2:0] tmp_s_fu_1484_p11;
wire  signed [2:0] tmp_s_fu_1484_p13;
wire  signed [2:0] tmp_s_fu_1484_p15;
wire   [2:0] tmp_11_fu_1609_p1;
wire   [2:0] tmp_11_fu_1609_p3;
wire   [2:0] tmp_11_fu_1609_p5;
wire   [2:0] tmp_11_fu_1609_p7;
wire  signed [2:0] tmp_11_fu_1609_p9;
wire  signed [2:0] tmp_11_fu_1609_p11;
wire  signed [2:0] tmp_11_fu_1609_p13;
wire  signed [2:0] tmp_11_fu_1609_p15;
wire  signed [4:0] tmp_10_fu_1648_p1;
wire   [4:0] tmp_10_fu_1648_p3;
wire   [4:0] tmp_10_fu_1648_p5;
wire   [4:0] tmp_10_fu_1648_p7;
wire   [4:0] tmp_10_fu_1648_p9;
wire   [4:0] tmp_10_fu_1648_p11;
wire   [4:0] tmp_10_fu_1648_p13;
wire   [4:0] tmp_10_fu_1648_p15;
wire   [4:0] tmp_10_fu_1648_p17;
wire   [4:0] tmp_10_fu_1648_p19;
wire   [4:0] tmp_10_fu_1648_p21;
wire   [4:0] tmp_10_fu_1648_p23;
wire   [4:0] tmp_10_fu_1648_p25;
wire   [4:0] tmp_10_fu_1648_p27;
wire   [4:0] tmp_10_fu_1648_p29;
wire   [4:0] tmp_10_fu_1648_p31;
wire   [4:0] tmp_10_fu_1648_p33;
wire  signed [4:0] tmp_10_fu_1648_p35;
wire  signed [4:0] tmp_10_fu_1648_p37;
wire  signed [4:0] tmp_10_fu_1648_p39;
wire  signed [4:0] tmp_10_fu_1648_p41;
wire  signed [4:0] tmp_10_fu_1648_p43;
wire  signed [4:0] tmp_10_fu_1648_p45;
wire  signed [4:0] tmp_10_fu_1648_p47;
wire  signed [4:0] tmp_10_fu_1648_p49;
wire  signed [4:0] tmp_10_fu_1648_p51;
wire  signed [4:0] tmp_10_fu_1648_p53;
wire  signed [4:0] tmp_10_fu_1648_p55;
wire  signed [4:0] tmp_10_fu_1648_p57;
wire  signed [4:0] tmp_10_fu_1648_p59;
wire  signed [4:0] tmp_10_fu_1648_p61;
wire  signed [4:0] tmp_10_fu_1648_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_244 = 64'd0;
#0 prev_fu_248 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U62(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.din16(llike_16_q0),.din17(llike_17_q0),.din18(llike_18_q0),.din19(llike_19_q0),.din20(llike_20_q0),.din21(llike_21_q0),.din22(llike_22_q0),.din23(llike_23_q0),.din24(llike_24_q0),.din25(llike_25_q0),.din26(llike_26_q0),.din27(llike_27_q0),.din28(llike_28_q0),.din29(llike_29_q0),.din30(llike_30_q0),.din31(llike_31_q0),.def(tmp_9_fu_1317_p65),.sel(trunc_ln16_reg_1998),.dout(tmp_9_fu_1317_p67));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U63(.din0(tmp_s_fu_1484_p2),.din1(tmp_s_fu_1484_p4),.din2(tmp_s_fu_1484_p6),.din3(tmp_s_fu_1484_p8),.din4(tmp_s_fu_1484_p10),.din5(tmp_s_fu_1484_p12),.din6(tmp_s_fu_1484_p14),.din7(tmp_s_fu_1484_p16),.def(tmp_s_fu_1484_p17),.sel(empty_10),.dout(tmp_s_fu_1484_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U64(.din0(tmp_11_fu_1609_p2),.din1(tmp_11_fu_1609_p4),.din2(tmp_11_fu_1609_p6),.din3(tmp_11_fu_1609_p8),.din4(tmp_11_fu_1609_p10),.din5(tmp_11_fu_1609_p12),.din6(tmp_11_fu_1609_p14),.din7(tmp_11_fu_1609_p16),.def(tmp_11_fu_1609_p17),.sel(empty_10),.dout(tmp_11_fu_1609_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h1F ),.din0_WIDTH( 64 ),.CASE1( 5'h0 ),.din1_WIDTH( 64 ),.CASE2( 5'h1 ),.din2_WIDTH( 64 ),.CASE3( 5'h2 ),.din3_WIDTH( 64 ),.CASE4( 5'h3 ),.din4_WIDTH( 64 ),.CASE5( 5'h4 ),.din5_WIDTH( 64 ),.CASE6( 5'h5 ),.din6_WIDTH( 64 ),.CASE7( 5'h6 ),.din7_WIDTH( 64 ),.CASE8( 5'h7 ),.din8_WIDTH( 64 ),.CASE9( 5'h8 ),.din9_WIDTH( 64 ),.CASE10( 5'h9 ),.din10_WIDTH( 64 ),.CASE11( 5'hA ),.din11_WIDTH( 64 ),.CASE12( 5'hB ),.din12_WIDTH( 64 ),.CASE13( 5'hC ),.din13_WIDTH( 64 ),.CASE14( 5'hD ),.din14_WIDTH( 64 ),.CASE15( 5'hE ),.din15_WIDTH( 64 ),.CASE16( 5'hF ),.din16_WIDTH( 64 ),.CASE17( 5'h10 ),.din17_WIDTH( 64 ),.CASE18( 5'h11 ),.din18_WIDTH( 64 ),.CASE19( 5'h12 ),.din19_WIDTH( 64 ),.CASE20( 5'h13 ),.din20_WIDTH( 64 ),.CASE21( 5'h14 ),.din21_WIDTH( 64 ),.CASE22( 5'h15 ),.din22_WIDTH( 64 ),.CASE23( 5'h16 ),.din23_WIDTH( 64 ),.CASE24( 5'h17 ),.din24_WIDTH( 64 ),.CASE25( 5'h18 ),.din25_WIDTH( 64 ),.CASE26( 5'h19 ),.din26_WIDTH( 64 ),.CASE27( 5'h1A ),.din27_WIDTH( 64 ),.CASE28( 5'h1B ),.din28_WIDTH( 64 ),.CASE29( 5'h1C ),.din29_WIDTH( 64 ),.CASE30( 5'h1D ),.din30_WIDTH( 64 ),.CASE31( 5'h1E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U65(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.din16(llike_16_q0),.din17(llike_17_q0),.din18(llike_18_q0),.din19(llike_19_q0),.din20(llike_20_q0),.din21(llike_21_q0),.din22(llike_22_q0),.din23(llike_23_q0),.din24(llike_24_q0),.din25(llike_25_q0),.din26(llike_26_q0),.din27(llike_27_q0),.din28(llike_28_q0),.din29(llike_29_q0),.din30(llike_30_q0),.din31(llike_31_q0),.def(tmp_10_fu_1648_p65),.sel(trunc_ln16_reg_1998),.dout(tmp_10_fu_1648_p67));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage4),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter3_reg == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0)))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_244 <= min_p_6;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (tmp_19_reg_2209_pp0_iter4_reg == 1'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_fu_244 <= min_p_11_fu_1957_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_19_fu_1274_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            prev_fu_248 <= add_ln25_1_fu_1306_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            prev_fu_248 <= 6'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add1_reg_2433 <= grp_fu_1607_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add52_1_reg_2438 <= grp_fu_1607_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_2204 <= add_ln25_fu_1268_p2;
        tmp_19_reg_2209 <= add_ln25_fu_1268_p2[32'd6];
        tmp_19_reg_2209_pp0_iter1_reg <= tmp_19_reg_2209;
        tmp_19_reg_2209_pp0_iter2_reg <= tmp_19_reg_2209_pp0_iter1_reg;
        tmp_19_reg_2209_pp0_iter3_reg <= tmp_19_reg_2209_pp0_iter2_reg;
        tmp_19_reg_2209_pp0_iter4_reg <= tmp_19_reg_2209_pp0_iter3_reg;
        trunc_ln16_reg_1998 <= trunc_ln16_fu_1192_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_2464 <= and_ln29_1_fu_1863_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_7_reg_2450 <= min_p_fu_244;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_9_reg_2469 <= min_p_9_fu_1869_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        p_2_reg_2457 <= grp_fu_1607_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_reg_2443 <= grp_fu_1607_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_10_reg_2428 <= tmp_10_fu_1648_p67;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_11_reg_2423 <= tmp_11_fu_1609_p19;
        tmp_9_reg_2253 <= tmp_9_fu_1317_p67;
        tmp_s_reg_2258 <= tmp_s_fu_1484_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_22_reg_2476 <= grp_fu_2674_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_19_reg_2209 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (tmp_19_reg_2209_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_248;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1167_p0 = add52_1_reg_2438;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1167_p0 = add1_reg_2433;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1167_p0 = tmp_10_reg_2428;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1167_p0 = tmp_9_reg_2253;
    end else begin
        grp_fu_1167_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1167_p1 = tmp_8;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1167_p1 = tmp_11_reg_2423;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1167_p1 = tmp_s_reg_2258;
    end else begin
        grp_fu_1167_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1171_p0 = p_2_reg_2457;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1171_p0 = p_reg_2443;
    end else begin
        grp_fu_1171_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1171_p1 = min_p_9_fu_1869_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1171_p1 = min_p_fu_244;
    end else begin
        grp_fu_1171_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_10_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_10_address0_local = zext_ln26_fu_1212_p1;
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
            llike_11_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_11_address0_local = zext_ln26_fu_1212_p1;
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
            llike_12_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_12_address0_local = zext_ln26_fu_1212_p1;
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
            llike_13_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_13_address0_local = zext_ln26_fu_1212_p1;
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
            llike_14_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_14_address0_local = zext_ln26_fu_1212_p1;
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
            llike_15_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_15_address0_local = zext_ln26_fu_1212_p1;
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
            llike_16_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_16_address0_local = zext_ln26_fu_1212_p1;
        end else begin
            llike_16_address0_local = 'bx;
        end
    end else begin
        llike_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_16_ce0_local = 1'b1;
    end else begin
        llike_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_17_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_17_address0_local = zext_ln26_fu_1212_p1;
        end else begin
            llike_17_address0_local = 'bx;
        end
    end else begin
        llike_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_17_ce0_local = 1'b1;
    end else begin
        llike_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_18_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_18_address0_local = zext_ln26_fu_1212_p1;
        end else begin
            llike_18_address0_local = 'bx;
        end
    end else begin
        llike_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_18_ce0_local = 1'b1;
    end else begin
        llike_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_19_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_19_address0_local = zext_ln26_fu_1212_p1;
        end else begin
            llike_19_address0_local = 'bx;
        end
    end else begin
        llike_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_19_ce0_local = 1'b1;
    end else begin
        llike_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln26_fu_1212_p1;
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
            llike_20_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_20_address0_local = zext_ln26_fu_1212_p1;
        end else begin
            llike_20_address0_local = 'bx;
        end
    end else begin
        llike_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_20_ce0_local = 1'b1;
    end else begin
        llike_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_21_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_21_address0_local = zext_ln26_fu_1212_p1;
        end else begin
            llike_21_address0_local = 'bx;
        end
    end else begin
        llike_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_21_ce0_local = 1'b1;
    end else begin
        llike_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_22_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_22_address0_local = zext_ln26_fu_1212_p1;
        end else begin
            llike_22_address0_local = 'bx;
        end
    end else begin
        llike_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_22_ce0_local = 1'b1;
    end else begin
        llike_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_23_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_23_address0_local = zext_ln26_fu_1212_p1;
        end else begin
            llike_23_address0_local = 'bx;
        end
    end else begin
        llike_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_23_ce0_local = 1'b1;
    end else begin
        llike_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_24_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_24_address0_local = zext_ln26_fu_1212_p1;
        end else begin
            llike_24_address0_local = 'bx;
        end
    end else begin
        llike_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_24_ce0_local = 1'b1;
    end else begin
        llike_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_25_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_25_address0_local = zext_ln26_fu_1212_p1;
        end else begin
            llike_25_address0_local = 'bx;
        end
    end else begin
        llike_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_25_ce0_local = 1'b1;
    end else begin
        llike_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_26_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_26_address0_local = zext_ln26_fu_1212_p1;
        end else begin
            llike_26_address0_local = 'bx;
        end
    end else begin
        llike_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_26_ce0_local = 1'b1;
    end else begin
        llike_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_27_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_27_address0_local = zext_ln26_fu_1212_p1;
        end else begin
            llike_27_address0_local = 'bx;
        end
    end else begin
        llike_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_27_ce0_local = 1'b1;
    end else begin
        llike_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_28_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_28_address0_local = zext_ln26_fu_1212_p1;
        end else begin
            llike_28_address0_local = 'bx;
        end
    end else begin
        llike_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_28_ce0_local = 1'b1;
    end else begin
        llike_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_29_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_29_address0_local = zext_ln26_fu_1212_p1;
        end else begin
            llike_29_address0_local = 'bx;
        end
    end else begin
        llike_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_29_ce0_local = 1'b1;
    end else begin
        llike_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln26_fu_1212_p1;
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
            llike_30_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_30_address0_local = zext_ln26_fu_1212_p1;
        end else begin
            llike_30_address0_local = 'bx;
        end
    end else begin
        llike_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_30_ce0_local = 1'b1;
    end else begin
        llike_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_31_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_31_address0_local = zext_ln26_fu_1212_p1;
        end else begin
            llike_31_address0_local = 'bx;
        end
    end else begin
        llike_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_31_ce0_local = 1'b1;
    end else begin
        llike_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln26_fu_1212_p1;
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
            llike_4_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln26_fu_1212_p1;
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
            llike_5_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln26_fu_1212_p1;
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
            llike_6_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln26_fu_1212_p1;
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
            llike_7_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln26_fu_1212_p1;
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
            llike_8_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_8_address0_local = zext_ln26_fu_1212_p1;
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
            llike_9_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_9_address0_local = zext_ln26_fu_1212_p1;
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
            llike_address0_local = zext_ln26_2_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_fu_1212_p1;
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
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_19_reg_2209_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_10_out_ap_vld = 1'b1;
    end else begin
        min_p_10_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_2_ce1_local = 1'b1;
    end else begin
        transition_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_3_ce1_local = 1'b1;
    end else begin
        transition_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_4_ce0_local = 1'b1;
    end else begin
        transition_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_4_ce1_local = 1'b1;
    end else begin
        transition_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_5_ce0_local = 1'b1;
    end else begin
        transition_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_5_ce1_local = 1'b1;
    end else begin
        transition_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_6_ce0_local = 1'b1;
    end else begin
        transition_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_6_ce1_local = 1'b1;
    end else begin
        transition_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_7_ce0_local = 1'b1;
    end else begin
        transition_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_7_ce1_local = 1'b1;
    end else begin
        transition_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln25_1_fu_1306_p2 = (ap_sig_allocacmp_prev_1 + 6'd2);
assign add_ln25_fu_1268_p2 = (zext_ln16_fu_1188_p1 + 7'd1);
assign add_ln26_fu_1536_p2 = (empty + zext_ln26_1_fu_1532_p1);
assign add_ln27_1_fu_1286_p3 = {{trunc_ln27_fu_1282_p1}, {lshr_ln}};
assign add_ln_fu_1248_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_1_fu_1863_p2 = (or_ln29_1_fu_1851_p2 & and_ln29_fu_1857_p2);
assign and_ln29_2_fu_1946_p2 = (or_ln29_3_fu_1940_p2 & or_ln29_2_fu_1922_p2);
assign and_ln29_3_fu_1952_p2 = (tmp_22_reg_2476 & and_ln29_2_fu_1946_p2);
assign and_ln29_fu_1857_p2 = (or_ln29_fu_1833_p2 & grp_fu_2674_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;
assign ap_ready = ap_ready_sig;
assign bitcast_ln29_1_fu_1804_p1 = min_p_7_reg_2450;
assign bitcast_ln29_2_fu_1876_p1 = p_2_reg_2457;
assign bitcast_ln29_3_fu_1893_p1 = min_p_9_reg_2469;
assign bitcast_ln29_fu_1787_p1 = p_reg_2443;
assign grp_fu_1607_p_ce = 1'b1;
assign grp_fu_1607_p_din0 = grp_fu_1167_p0;
assign grp_fu_1607_p_din1 = grp_fu_1167_p1;
assign grp_fu_1607_p_opcode = 2'd0;
assign grp_fu_2674_p_ce = 1'b1;
assign grp_fu_2674_p_din0 = grp_fu_1171_p0;
assign grp_fu_2674_p_din1 = grp_fu_1171_p1;
assign grp_fu_2674_p_opcode = 5'd4;
assign icmp_ln29_1_fu_1827_p2 = ((trunc_ln29_fu_1800_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_1839_p2 = ((tmp_17_fu_1807_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_1845_p2 = ((trunc_ln29_1_fu_1817_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1910_p2 = ((tmp_20_fu_1879_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1916_p2 = ((trunc_ln29_2_fu_1889_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1928_p2 = ((tmp_21_fu_1896_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1934_p2 = ((trunc_ln29_3_fu_1906_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1821_p2 = ((tmp_16_fu_1790_p4 != 11'd2047) ? 1'b1 : 1'b0);
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
assign llike_16_address0 = llike_16_address0_local;
assign llike_16_ce0 = llike_16_ce0_local;
assign llike_17_address0 = llike_17_address0_local;
assign llike_17_ce0 = llike_17_ce0_local;
assign llike_18_address0 = llike_18_address0_local;
assign llike_18_ce0 = llike_18_ce0_local;
assign llike_19_address0 = llike_19_address0_local;
assign llike_19_ce0 = llike_19_ce0_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_20_address0 = llike_20_address0_local;
assign llike_20_ce0 = llike_20_ce0_local;
assign llike_21_address0 = llike_21_address0_local;
assign llike_21_ce0 = llike_21_ce0_local;
assign llike_22_address0 = llike_22_address0_local;
assign llike_22_ce0 = llike_22_ce0_local;
assign llike_23_address0 = llike_23_address0_local;
assign llike_23_ce0 = llike_23_ce0_local;
assign llike_24_address0 = llike_24_address0_local;
assign llike_24_ce0 = llike_24_ce0_local;
assign llike_25_address0 = llike_25_address0_local;
assign llike_25_ce0 = llike_25_ce0_local;
assign llike_26_address0 = llike_26_address0_local;
assign llike_26_ce0 = llike_26_ce0_local;
assign llike_27_address0 = llike_27_address0_local;
assign llike_27_ce0 = llike_27_ce0_local;
assign llike_28_address0 = llike_28_address0_local;
assign llike_28_ce0 = llike_28_ce0_local;
assign llike_29_address0 = llike_29_address0_local;
assign llike_29_ce0 = llike_29_ce0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_30_address0 = llike_30_address0_local;
assign llike_30_ce0 = llike_30_ce0_local;
assign llike_31_address0 = llike_31_address0_local;
assign llike_31_ce0 = llike_31_ce0_local;
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
assign lshr_ln8_1_fu_1523_p4 = {{add_ln25_reg_2204[6:5]}};
assign min_p_10_out = ((and_ln29_1_reg_2464[0:0] == 1'b1) ? p_reg_2443 : min_p_7_reg_2450);
assign min_p_11_fu_1957_p3 = ((and_ln29_3_fu_1952_p2[0:0] == 1'b1) ? p_2_reg_2457 : min_p_9_reg_2469);
assign min_p_9_fu_1869_p3 = ((and_ln29_1_reg_2464[0:0] == 1'b1) ? p_reg_2443 : min_p_7_reg_2450);
assign or_ln29_1_fu_1851_p2 = (icmp_ln29_3_fu_1845_p2 | icmp_ln29_2_fu_1839_p2);
assign or_ln29_2_fu_1922_p2 = (icmp_ln29_5_fu_1916_p2 | icmp_ln29_4_fu_1910_p2);
assign or_ln29_3_fu_1940_p2 = (icmp_ln29_7_fu_1934_p2 | icmp_ln29_6_fu_1928_p2);
assign or_ln29_fu_1833_p2 = (icmp_ln29_fu_1821_p2 | icmp_ln29_1_fu_1827_p2);
assign tmp_10_fu_1648_p65 = 'bx;
assign tmp_11_fu_1609_p10 = transition_4_q0;
assign tmp_11_fu_1609_p12 = transition_5_q0;
assign tmp_11_fu_1609_p14 = transition_6_q0;
assign tmp_11_fu_1609_p16 = transition_7_q0;
assign tmp_11_fu_1609_p17 = 'bx;
assign tmp_11_fu_1609_p2 = transition_0_q0;
assign tmp_11_fu_1609_p4 = transition_1_q0;
assign tmp_11_fu_1609_p6 = transition_2_q0;
assign tmp_11_fu_1609_p8 = transition_3_q0;
assign tmp_14_fu_1196_p3 = ap_sig_allocacmp_prev_1[32'd5];
assign tmp_15_fu_1204_p3 = {{empty_9}, {tmp_14_fu_1196_p3}};
assign tmp_16_fu_1790_p4 = {{bitcast_ln29_fu_1787_p1[62:52]}};
assign tmp_17_fu_1807_p4 = {{bitcast_ln29_1_fu_1804_p1[62:52]}};
assign tmp_19_fu_1274_p3 = add_ln25_fu_1268_p2[32'd6];
assign tmp_20_fu_1879_p4 = {{bitcast_ln29_2_fu_1876_p1[62:52]}};
assign tmp_21_fu_1896_p4 = {{bitcast_ln29_3_fu_1893_p1[62:52]}};
assign tmp_9_fu_1317_p65 = 'bx;
assign tmp_s_fu_1484_p10 = transition_4_q1;
assign tmp_s_fu_1484_p12 = transition_5_q1;
assign tmp_s_fu_1484_p14 = transition_6_q1;
assign tmp_s_fu_1484_p16 = transition_7_q1;
assign tmp_s_fu_1484_p17 = 'bx;
assign tmp_s_fu_1484_p2 = transition_0_q1;
assign tmp_s_fu_1484_p4 = transition_1_q1;
assign tmp_s_fu_1484_p6 = transition_2_q1;
assign tmp_s_fu_1484_p8 = transition_3_q1;
assign transition_0_address0 = zext_ln27_1_fu_1294_p1;
assign transition_0_address1 = zext_ln27_fu_1256_p1;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = zext_ln27_1_fu_1294_p1;
assign transition_1_address1 = zext_ln27_fu_1256_p1;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign transition_2_address0 = zext_ln27_1_fu_1294_p1;
assign transition_2_address1 = zext_ln27_fu_1256_p1;
assign transition_2_ce0 = transition_2_ce0_local;
assign transition_2_ce1 = transition_2_ce1_local;
assign transition_3_address0 = zext_ln27_1_fu_1294_p1;
assign transition_3_address1 = zext_ln27_fu_1256_p1;
assign transition_3_ce0 = transition_3_ce0_local;
assign transition_3_ce1 = transition_3_ce1_local;
assign transition_4_address0 = zext_ln27_1_fu_1294_p1;
assign transition_4_address1 = zext_ln27_fu_1256_p1;
assign transition_4_ce0 = transition_4_ce0_local;
assign transition_4_ce1 = transition_4_ce1_local;
assign transition_5_address0 = zext_ln27_1_fu_1294_p1;
assign transition_5_address1 = zext_ln27_fu_1256_p1;
assign transition_5_ce0 = transition_5_ce0_local;
assign transition_5_ce1 = transition_5_ce1_local;
assign transition_6_address0 = zext_ln27_1_fu_1294_p1;
assign transition_6_address1 = zext_ln27_fu_1256_p1;
assign transition_6_ce0 = transition_6_ce0_local;
assign transition_6_ce1 = transition_6_ce1_local;
assign transition_7_address0 = zext_ln27_1_fu_1294_p1;
assign transition_7_address1 = zext_ln27_fu_1256_p1;
assign transition_7_ce0 = transition_7_ce0_local;
assign transition_7_ce1 = transition_7_ce1_local;
assign trunc_ln16_fu_1192_p1 = ap_sig_allocacmp_prev_1[4:0];
assign trunc_ln27_fu_1282_p1 = add_ln25_fu_1268_p2[5:0];
assign trunc_ln29_1_fu_1817_p1 = bitcast_ln29_1_fu_1804_p1[51:0];
assign trunc_ln29_2_fu_1889_p1 = bitcast_ln29_2_fu_1876_p1[51:0];
assign trunc_ln29_3_fu_1906_p1 = bitcast_ln29_3_fu_1893_p1[51:0];
assign trunc_ln29_fu_1800_p1 = bitcast_ln29_fu_1787_p1[51:0];
assign zext_ln16_fu_1188_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_1532_p1 = lshr_ln8_1_fu_1523_p4;
assign zext_ln26_2_fu_1541_p1 = add_ln26_fu_1536_p2;
assign zext_ln26_fu_1212_p1 = tmp_15_fu_1204_p3;
assign zext_ln27_1_fu_1294_p1 = add_ln27_1_fu_1286_p3;
assign zext_ln27_fu_1256_p1 = add_ln_fu_1248_p3;
endmodule 
