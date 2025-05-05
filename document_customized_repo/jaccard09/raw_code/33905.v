module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,llike_4_address0,llike_4_ce0,llike_4_we0,llike_4_d0,llike_5_address0,llike_5_ce0,llike_5_we0,llike_5_d0,llike_6_address0,llike_6_ce0,llike_6_we0,llike_6_d0,llike_7_address0,llike_7_ce0,llike_7_we0,llike_7_d0,init_0_address0,init_0_ce0,init_0_q0,conv3_udiv,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,emission_4_address0,emission_4_ce0,emission_4_q0,emission_4_address1,emission_4_ce1,emission_4_q1,emission_5_address0,emission_5_ce0,emission_5_q0,emission_5_address1,emission_5_ce1,emission_5_q1,emission_6_address0,emission_6_ce0,emission_6_q0,emission_6_address1,emission_6_ce1,emission_6_q1,emission_7_address0,emission_7_ce0,emission_7_q0,emission_7_address1,emission_7_ce1,emission_7_q1,empty,init_1_address0,init_1_ce0,init_1_q0,conv3_udiv_cast,init_2_address0,init_2_ce0,init_2_q0,init_3_address0,init_3_ce0,init_3_q0,init_4_address0,init_4_ce0,init_4_q0,init_5_address0,init_5_ce0,init_5_q0,init_6_address0,init_6_ce0,init_6_q0,init_7_address0,init_7_ce0,init_7_q0,grp_fu_1059_p_din0,grp_fu_1059_p_din1,grp_fu_1059_p_opcode,grp_fu_1059_p_dout0,grp_fu_1059_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [10:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [10:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [10:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
output  [10:0] llike_4_address0;
output   llike_4_ce0;
output   llike_4_we0;
output  [63:0] llike_4_d0;
output  [10:0] llike_5_address0;
output   llike_5_ce0;
output   llike_5_we0;
output  [63:0] llike_5_d0;
output  [10:0] llike_6_address0;
output   llike_6_ce0;
output   llike_6_we0;
output  [63:0] llike_6_d0;
output  [10:0] llike_7_address0;
output   llike_7_ce0;
output   llike_7_we0;
output  [63:0] llike_7_d0;
output  [2:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
input  [4:0] conv3_udiv;
output  [8:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [8:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [8:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [8:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
output  [8:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [8:0] emission_2_address1;
output   emission_2_ce1;
input  [63:0] emission_2_q1;
output  [8:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
output  [8:0] emission_3_address1;
output   emission_3_ce1;
input  [63:0] emission_3_q1;
output  [8:0] emission_4_address0;
output   emission_4_ce0;
input  [63:0] emission_4_q0;
output  [8:0] emission_4_address1;
output   emission_4_ce1;
input  [63:0] emission_4_q1;
output  [8:0] emission_5_address0;
output   emission_5_ce0;
input  [63:0] emission_5_q0;
output  [8:0] emission_5_address1;
output   emission_5_ce1;
input  [63:0] emission_5_q1;
output  [8:0] emission_6_address0;
output   emission_6_ce0;
input  [63:0] emission_6_q0;
output  [8:0] emission_6_address1;
output   emission_6_ce1;
input  [63:0] emission_6_q1;
output  [8:0] emission_7_address0;
output   emission_7_ce0;
input  [63:0] emission_7_q0;
output  [8:0] emission_7_address1;
output   emission_7_ce1;
input  [63:0] emission_7_q1;
input  [2:0] empty;
output  [2:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
input  [4:0] conv3_udiv_cast;
output  [2:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [2:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [2:0] init_4_address0;
output   init_4_ce0;
input  [63:0] init_4_q0;
output  [2:0] init_5_address0;
output   init_5_ce0;
input  [63:0] init_5_q0;
output  [2:0] init_6_address0;
output   init_6_ce0;
input  [63:0] init_6_q0;
output  [2:0] init_7_address0;
output   init_7_ce0;
input  [63:0] init_7_q0;
output  [63:0] grp_fu_1059_p_din0;
output  [63:0] grp_fu_1059_p_din1;
output  [1:0] grp_fu_1059_p_opcode;
input  [63:0] grp_fu_1059_p_dout0;
output   grp_fu_1059_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_75_reg_1890;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_966;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] grp_fu_962_p2;
reg   [63:0] reg_974;
wire   [8:0] conv3_udiv_cast_cast_fu_982_p1;
reg   [8:0] conv3_udiv_cast_cast_reg_1875;
reg   [6:0] s_1_reg_1884;
reg   [0:0] tmp_75_reg_1890_pp0_iter1_reg;
reg   [0:0] tmp_75_reg_1890_pp0_iter2_reg;
wire   [2:0] lshr_ln9_fu_1002_p4;
reg   [2:0] lshr_ln9_reg_1894;
wire   [63:0] zext_ln9_fu_1012_p1;
reg   [63:0] zext_ln9_reg_1902;
reg   [63:0] zext_ln9_reg_1902_pp0_iter1_reg;
reg   [63:0] zext_ln9_reg_1902_pp0_iter2_reg;
reg   [63:0] zext_ln9_reg_1902_pp0_iter3_reg;
wire   [3:0] tmp_89_fu_1024_p4;
reg   [3:0] tmp_89_reg_1919;
reg   [63:0] init_0_load_reg_2040;
wire   [63:0] tmp_fu_1122_p19;
reg   [63:0] tmp_reg_2045;
reg   [63:0] init_1_load_reg_2050;
wire   [63:0] tmp_1_fu_1193_p19;
reg   [63:0] tmp_1_reg_2055;
reg   [63:0] init_2_load_reg_2060;
reg   [63:0] init_3_load_reg_2105;
reg   [63:0] init_4_load_reg_2150;
reg   [63:0] init_5_load_reg_2155;
reg   [63:0] init_6_load_reg_2160;
reg   [63:0] init_7_load_reg_2165;
wire   [63:0] bitcast_ln14_fu_1280_p1;
wire   [63:0] bitcast_ln14_9_fu_1284_p1;
wire   [63:0] tmp_2_fu_1320_p19;
reg   [63:0] tmp_2_reg_2180;
wire   [63:0] tmp_3_fu_1391_p19;
reg   [63:0] tmp_3_reg_2185;
wire   [63:0] bitcast_ln14_18_fu_1485_p1;
wire   [63:0] bitcast_ln14_27_fu_1489_p1;
wire   [63:0] tmp_4_fu_1525_p19;
reg   [63:0] tmp_4_reg_2280;
wire   [63:0] tmp_5_fu_1596_p19;
reg   [63:0] tmp_5_reg_2285;
wire   [63:0] bitcast_ln14_36_fu_1693_p1;
wire   [63:0] bitcast_ln14_45_fu_1697_p1;
wire   [63:0] tmp_6_fu_1733_p19;
reg   [63:0] tmp_6_reg_2380;
wire   [63:0] tmp_7_fu_1804_p19;
reg   [63:0] tmp_7_reg_2385;
wire   [63:0] bitcast_ln14_54_fu_1843_p1;
wire   [63:0] bitcast_ln14_63_fu_1847_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1042_p1;
wire   [63:0] zext_ln14_1_fu_1078_p1;
wire   [63:0] zext_ln14_2_fu_1244_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1268_p1;
wire   [63:0] zext_ln14_4_fu_1438_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_1473_p1;
wire   [63:0] zext_ln14_6_fu_1647_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1671_p1;
reg   [6:0] s_fu_144;
wire   [6:0] add_ln13_fu_1683_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_0_ce0_local;
reg    emission_0_ce1_local;
reg   [8:0] emission_0_address1_local;
reg    emission_0_ce0_local;
reg   [8:0] emission_0_address0_local;
reg    emission_1_ce1_local;
reg   [8:0] emission_1_address1_local;
reg    emission_1_ce0_local;
reg   [8:0] emission_1_address0_local;
reg    emission_2_ce1_local;
reg   [8:0] emission_2_address1_local;
reg    emission_2_ce0_local;
reg   [8:0] emission_2_address0_local;
reg    emission_3_ce1_local;
reg   [8:0] emission_3_address1_local;
reg    emission_3_ce0_local;
reg   [8:0] emission_3_address0_local;
reg    emission_4_ce1_local;
reg   [8:0] emission_4_address1_local;
reg    emission_4_ce0_local;
reg   [8:0] emission_4_address0_local;
reg    emission_5_ce1_local;
reg   [8:0] emission_5_address1_local;
reg    emission_5_ce0_local;
reg   [8:0] emission_5_address0_local;
reg    emission_6_ce1_local;
reg   [8:0] emission_6_address1_local;
reg    emission_6_ce0_local;
reg   [8:0] emission_6_address0_local;
reg    emission_7_ce1_local;
reg   [8:0] emission_7_address1_local;
reg    emission_7_ce0_local;
reg   [8:0] emission_7_address0_local;
reg    init_1_ce0_local;
reg    init_2_ce0_local;
reg    init_3_ce0_local;
reg    init_4_ce0_local;
reg    init_5_ce0_local;
reg    init_6_ce0_local;
reg    init_7_ce0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg    llike_4_we0_local;
reg    llike_4_ce0_local;
reg    llike_5_we0_local;
reg    llike_5_ce0_local;
reg    llike_6_we0_local;
reg    llike_6_ce0_local;
reg    llike_7_we0_local;
reg    llike_7_ce0_local;
reg   [63:0] grp_fu_958_p0;
reg   [63:0] grp_fu_958_p1;
reg   [63:0] grp_fu_962_p0;
reg   [63:0] grp_fu_962_p1;
wire   [8:0] or_ln_fu_1034_p3;
wire   [4:0] tmp_93_fu_1054_p4;
wire   [8:0] or_ln14_1_fu_1064_p3;
wire   [8:0] add_ln14_fu_1072_p2;
wire   [63:0] tmp_fu_1122_p2;
wire   [63:0] tmp_fu_1122_p4;
wire   [63:0] tmp_fu_1122_p6;
wire   [63:0] tmp_fu_1122_p8;
wire   [63:0] tmp_fu_1122_p10;
wire   [63:0] tmp_fu_1122_p12;
wire   [63:0] tmp_fu_1122_p14;
wire   [63:0] tmp_fu_1122_p16;
wire   [63:0] tmp_fu_1122_p17;
wire   [63:0] tmp_1_fu_1193_p2;
wire   [63:0] tmp_1_fu_1193_p4;
wire   [63:0] tmp_1_fu_1193_p6;
wire   [63:0] tmp_1_fu_1193_p8;
wire   [63:0] tmp_1_fu_1193_p10;
wire   [63:0] tmp_1_fu_1193_p12;
wire   [63:0] tmp_1_fu_1193_p14;
wire   [63:0] tmp_1_fu_1193_p16;
wire   [63:0] tmp_1_fu_1193_p17;
wire   [8:0] or_ln14_2_fu_1232_p3;
wire   [8:0] add_ln14_1_fu_1239_p2;
wire   [8:0] or_ln14_3_fu_1256_p3;
wire   [8:0] add_ln14_2_fu_1263_p2;
wire   [63:0] tmp_2_fu_1320_p2;
wire   [63:0] tmp_2_fu_1320_p4;
wire   [63:0] tmp_2_fu_1320_p6;
wire   [63:0] tmp_2_fu_1320_p8;
wire   [63:0] tmp_2_fu_1320_p10;
wire   [63:0] tmp_2_fu_1320_p12;
wire   [63:0] tmp_2_fu_1320_p14;
wire   [63:0] tmp_2_fu_1320_p16;
wire   [63:0] tmp_2_fu_1320_p17;
wire   [63:0] tmp_3_fu_1391_p2;
wire   [63:0] tmp_3_fu_1391_p4;
wire   [63:0] tmp_3_fu_1391_p6;
wire   [63:0] tmp_3_fu_1391_p8;
wire   [63:0] tmp_3_fu_1391_p10;
wire   [63:0] tmp_3_fu_1391_p12;
wire   [63:0] tmp_3_fu_1391_p14;
wire   [63:0] tmp_3_fu_1391_p16;
wire   [63:0] tmp_3_fu_1391_p17;
wire   [8:0] or_ln14_4_fu_1430_p4;
wire   [0:0] tmp_76_fu_1450_p3;
wire   [8:0] or_ln14_5_fu_1457_p5;
wire   [8:0] add_ln14_3_fu_1468_p2;
wire   [63:0] tmp_4_fu_1525_p2;
wire   [63:0] tmp_4_fu_1525_p4;
wire   [63:0] tmp_4_fu_1525_p6;
wire   [63:0] tmp_4_fu_1525_p8;
wire   [63:0] tmp_4_fu_1525_p10;
wire   [63:0] tmp_4_fu_1525_p12;
wire   [63:0] tmp_4_fu_1525_p14;
wire   [63:0] tmp_4_fu_1525_p16;
wire   [63:0] tmp_4_fu_1525_p17;
wire   [63:0] tmp_5_fu_1596_p2;
wire   [63:0] tmp_5_fu_1596_p4;
wire   [63:0] tmp_5_fu_1596_p6;
wire   [63:0] tmp_5_fu_1596_p8;
wire   [63:0] tmp_5_fu_1596_p10;
wire   [63:0] tmp_5_fu_1596_p12;
wire   [63:0] tmp_5_fu_1596_p14;
wire   [63:0] tmp_5_fu_1596_p16;
wire   [63:0] tmp_5_fu_1596_p17;
wire   [8:0] or_ln14_6_fu_1635_p3;
wire   [8:0] add_ln14_4_fu_1642_p2;
wire   [8:0] or_ln14_7_fu_1659_p3;
wire   [8:0] add_ln14_5_fu_1666_p2;
wire   [63:0] tmp_6_fu_1733_p2;
wire   [63:0] tmp_6_fu_1733_p4;
wire   [63:0] tmp_6_fu_1733_p6;
wire   [63:0] tmp_6_fu_1733_p8;
wire   [63:0] tmp_6_fu_1733_p10;
wire   [63:0] tmp_6_fu_1733_p12;
wire   [63:0] tmp_6_fu_1733_p14;
wire   [63:0] tmp_6_fu_1733_p16;
wire   [63:0] tmp_6_fu_1733_p17;
wire   [63:0] tmp_7_fu_1804_p2;
wire   [63:0] tmp_7_fu_1804_p4;
wire   [63:0] tmp_7_fu_1804_p6;
wire   [63:0] tmp_7_fu_1804_p8;
wire   [63:0] tmp_7_fu_1804_p10;
wire   [63:0] tmp_7_fu_1804_p12;
wire   [63:0] tmp_7_fu_1804_p14;
wire   [63:0] tmp_7_fu_1804_p16;
wire   [63:0] tmp_7_fu_1804_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage1;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire   [2:0] tmp_fu_1122_p1;
wire   [2:0] tmp_fu_1122_p3;
wire   [2:0] tmp_fu_1122_p5;
wire   [2:0] tmp_fu_1122_p7;
wire  signed [2:0] tmp_fu_1122_p9;
wire  signed [2:0] tmp_fu_1122_p11;
wire  signed [2:0] tmp_fu_1122_p13;
wire  signed [2:0] tmp_fu_1122_p15;
wire   [2:0] tmp_1_fu_1193_p1;
wire   [2:0] tmp_1_fu_1193_p3;
wire   [2:0] tmp_1_fu_1193_p5;
wire   [2:0] tmp_1_fu_1193_p7;
wire  signed [2:0] tmp_1_fu_1193_p9;
wire  signed [2:0] tmp_1_fu_1193_p11;
wire  signed [2:0] tmp_1_fu_1193_p13;
wire  signed [2:0] tmp_1_fu_1193_p15;
wire   [2:0] tmp_2_fu_1320_p1;
wire   [2:0] tmp_2_fu_1320_p3;
wire   [2:0] tmp_2_fu_1320_p5;
wire   [2:0] tmp_2_fu_1320_p7;
wire  signed [2:0] tmp_2_fu_1320_p9;
wire  signed [2:0] tmp_2_fu_1320_p11;
wire  signed [2:0] tmp_2_fu_1320_p13;
wire  signed [2:0] tmp_2_fu_1320_p15;
wire   [2:0] tmp_3_fu_1391_p1;
wire   [2:0] tmp_3_fu_1391_p3;
wire   [2:0] tmp_3_fu_1391_p5;
wire   [2:0] tmp_3_fu_1391_p7;
wire  signed [2:0] tmp_3_fu_1391_p9;
wire  signed [2:0] tmp_3_fu_1391_p11;
wire  signed [2:0] tmp_3_fu_1391_p13;
wire  signed [2:0] tmp_3_fu_1391_p15;
wire   [2:0] tmp_4_fu_1525_p1;
wire   [2:0] tmp_4_fu_1525_p3;
wire   [2:0] tmp_4_fu_1525_p5;
wire   [2:0] tmp_4_fu_1525_p7;
wire  signed [2:0] tmp_4_fu_1525_p9;
wire  signed [2:0] tmp_4_fu_1525_p11;
wire  signed [2:0] tmp_4_fu_1525_p13;
wire  signed [2:0] tmp_4_fu_1525_p15;
wire   [2:0] tmp_5_fu_1596_p1;
wire   [2:0] tmp_5_fu_1596_p3;
wire   [2:0] tmp_5_fu_1596_p5;
wire   [2:0] tmp_5_fu_1596_p7;
wire  signed [2:0] tmp_5_fu_1596_p9;
wire  signed [2:0] tmp_5_fu_1596_p11;
wire  signed [2:0] tmp_5_fu_1596_p13;
wire  signed [2:0] tmp_5_fu_1596_p15;
wire   [2:0] tmp_6_fu_1733_p1;
wire   [2:0] tmp_6_fu_1733_p3;
wire   [2:0] tmp_6_fu_1733_p5;
wire   [2:0] tmp_6_fu_1733_p7;
wire  signed [2:0] tmp_6_fu_1733_p9;
wire  signed [2:0] tmp_6_fu_1733_p11;
wire  signed [2:0] tmp_6_fu_1733_p13;
wire  signed [2:0] tmp_6_fu_1733_p15;
wire   [2:0] tmp_7_fu_1804_p1;
wire   [2:0] tmp_7_fu_1804_p3;
wire   [2:0] tmp_7_fu_1804_p5;
wire   [2:0] tmp_7_fu_1804_p7;
wire  signed [2:0] tmp_7_fu_1804_p9;
wire  signed [2:0] tmp_7_fu_1804_p11;
wire  signed [2:0] tmp_7_fu_1804_p13;
wire  signed [2:0] tmp_7_fu_1804_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_144 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_962_p0),.din1(grp_fu_962_p1),.ce(1'b1),.dout(grp_fu_962_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U3(.din0(tmp_fu_1122_p2),.din1(tmp_fu_1122_p4),.din2(tmp_fu_1122_p6),.din3(tmp_fu_1122_p8),.din4(tmp_fu_1122_p10),.din5(tmp_fu_1122_p12),.din6(tmp_fu_1122_p14),.din7(tmp_fu_1122_p16),.def(tmp_fu_1122_p17),.sel(empty),.dout(tmp_fu_1122_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U4(.din0(tmp_1_fu_1193_p2),.din1(tmp_1_fu_1193_p4),.din2(tmp_1_fu_1193_p6),.din3(tmp_1_fu_1193_p8),.din4(tmp_1_fu_1193_p10),.din5(tmp_1_fu_1193_p12),.din6(tmp_1_fu_1193_p14),.din7(tmp_1_fu_1193_p16),.def(tmp_1_fu_1193_p17),.sel(empty),.dout(tmp_1_fu_1193_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U5(.din0(tmp_2_fu_1320_p2),.din1(tmp_2_fu_1320_p4),.din2(tmp_2_fu_1320_p6),.din3(tmp_2_fu_1320_p8),.din4(tmp_2_fu_1320_p10),.din5(tmp_2_fu_1320_p12),.din6(tmp_2_fu_1320_p14),.din7(tmp_2_fu_1320_p16),.def(tmp_2_fu_1320_p17),.sel(empty),.dout(tmp_2_fu_1320_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U6(.din0(tmp_3_fu_1391_p2),.din1(tmp_3_fu_1391_p4),.din2(tmp_3_fu_1391_p6),.din3(tmp_3_fu_1391_p8),.din4(tmp_3_fu_1391_p10),.din5(tmp_3_fu_1391_p12),.din6(tmp_3_fu_1391_p14),.din7(tmp_3_fu_1391_p16),.def(tmp_3_fu_1391_p17),.sel(empty),.dout(tmp_3_fu_1391_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U7(.din0(tmp_4_fu_1525_p2),.din1(tmp_4_fu_1525_p4),.din2(tmp_4_fu_1525_p6),.din3(tmp_4_fu_1525_p8),.din4(tmp_4_fu_1525_p10),.din5(tmp_4_fu_1525_p12),.din6(tmp_4_fu_1525_p14),.din7(tmp_4_fu_1525_p16),.def(tmp_4_fu_1525_p17),.sel(empty),.dout(tmp_4_fu_1525_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U8(.din0(tmp_5_fu_1596_p2),.din1(tmp_5_fu_1596_p4),.din2(tmp_5_fu_1596_p6),.din3(tmp_5_fu_1596_p8),.din4(tmp_5_fu_1596_p10),.din5(tmp_5_fu_1596_p12),.din6(tmp_5_fu_1596_p14),.din7(tmp_5_fu_1596_p16),.def(tmp_5_fu_1596_p17),.sel(empty),.dout(tmp_5_fu_1596_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U9(.din0(tmp_6_fu_1733_p2),.din1(tmp_6_fu_1733_p4),.din2(tmp_6_fu_1733_p6),.din3(tmp_6_fu_1733_p8),.din4(tmp_6_fu_1733_p10),.din5(tmp_6_fu_1733_p12),.din6(tmp_6_fu_1733_p14),.din7(tmp_6_fu_1733_p16),.def(tmp_6_fu_1733_p17),.sel(empty),.dout(tmp_6_fu_1733_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U10(.din0(tmp_7_fu_1804_p2),.din1(tmp_7_fu_1804_p4),.din2(tmp_7_fu_1804_p6),.din3(tmp_7_fu_1804_p8),.din4(tmp_7_fu_1804_p10),.din5(tmp_7_fu_1804_p12),.din6(tmp_7_fu_1804_p14),.din7(tmp_7_fu_1804_p16),.def(tmp_7_fu_1804_p17),.sel(empty),.dout(tmp_7_fu_1804_p19));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage1) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage1) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_144 <= 7'd0;
    end else if (((tmp_75_reg_1890 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        s_fu_144 <= add_ln13_fu_1683_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_1875[4 : 0] <= conv3_udiv_cast_cast_fu_982_p1[4 : 0];
        lshr_ln9_reg_1894 <= {{ap_sig_allocacmp_s_1[5:3]}};
        s_1_reg_1884 <= ap_sig_allocacmp_s_1;
        tmp_6_reg_2380 <= tmp_6_fu_1733_p19;
        tmp_75_reg_1890 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_75_reg_1890_pp0_iter1_reg <= tmp_75_reg_1890;
        tmp_75_reg_1890_pp0_iter2_reg <= tmp_75_reg_1890_pp0_iter1_reg;
        tmp_7_reg_2385 <= tmp_7_fu_1804_p19;
        tmp_89_reg_1919 <= {{ap_sig_allocacmp_s_1[5:2]}};
        zext_ln9_reg_1902[2 : 0] <= zext_ln9_fu_1012_p1[2 : 0];
        zext_ln9_reg_1902_pp0_iter1_reg[2 : 0] <= zext_ln9_reg_1902[2 : 0];
        zext_ln9_reg_1902_pp0_iter2_reg[2 : 0] <= zext_ln9_reg_1902_pp0_iter1_reg[2 : 0];
        zext_ln9_reg_1902_pp0_iter3_reg[2 : 0] <= zext_ln9_reg_1902_pp0_iter2_reg[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        init_0_load_reg_2040 <= init_0_q0;
        init_1_load_reg_2050 <= init_1_q0;
        init_2_load_reg_2060 <= init_2_q0;
        init_3_load_reg_2105 <= init_3_q0;
        init_4_load_reg_2150 <= init_4_q0;
        init_5_load_reg_2155 <= init_5_q0;
        init_6_load_reg_2160 <= init_6_q0;
        init_7_load_reg_2165 <= init_7_q0;
        tmp_1_reg_2055 <= tmp_1_fu_1193_p19;
        tmp_reg_2045 <= tmp_fu_1122_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_966 <= grp_fu_1059_p_dout0;
        reg_974 <= grp_fu_962_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_2_reg_2180 <= tmp_2_fu_1320_p19;
        tmp_3_reg_2185 <= tmp_3_fu_1391_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_4_reg_2280 <= tmp_4_fu_1525_p19;
        tmp_5_reg_2285 <= tmp_5_fu_1596_p19;
    end
end
always @ (*) begin
    if (((tmp_75_reg_1890 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_75_reg_1890_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_144;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1671_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_1473_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1268_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1078_p1;
        end else begin
            emission_0_address0_local = 'bx;
        end
    end else begin
        emission_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_1647_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_1438_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1042_p1;
        end else begin
            emission_0_address1_local = 'bx;
        end
    end else begin
        emission_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_1671_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_1473_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1268_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1078_p1;
        end else begin
            emission_1_address0_local = 'bx;
        end
    end else begin
        emission_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_1647_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_1438_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1042_p1;
        end else begin
            emission_1_address1_local = 'bx;
        end
    end else begin
        emission_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address0_local = zext_ln14_7_fu_1671_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address0_local = zext_ln14_5_fu_1473_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address0_local = zext_ln14_3_fu_1268_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_1078_p1;
        end else begin
            emission_2_address0_local = 'bx;
        end
    end else begin
        emission_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address1_local = zext_ln14_6_fu_1647_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address1_local = zext_ln14_4_fu_1438_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address1_local = zext_ln14_2_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address1_local = zext_ln14_fu_1042_p1;
        end else begin
            emission_2_address1_local = 'bx;
        end
    end else begin
        emission_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_2_ce0_local = 1'b1;
    end else begin
        emission_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_2_ce1_local = 1'b1;
    end else begin
        emission_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address0_local = zext_ln14_7_fu_1671_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address0_local = zext_ln14_5_fu_1473_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address0_local = zext_ln14_3_fu_1268_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_1078_p1;
        end else begin
            emission_3_address0_local = 'bx;
        end
    end else begin
        emission_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address1_local = zext_ln14_6_fu_1647_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address1_local = zext_ln14_4_fu_1438_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address1_local = zext_ln14_2_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address1_local = zext_ln14_fu_1042_p1;
        end else begin
            emission_3_address1_local = 'bx;
        end
    end else begin
        emission_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_3_ce0_local = 1'b1;
    end else begin
        emission_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_3_ce1_local = 1'b1;
    end else begin
        emission_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_4_address0_local = zext_ln14_7_fu_1671_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_4_address0_local = zext_ln14_5_fu_1473_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_4_address0_local = zext_ln14_3_fu_1268_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_4_address0_local = zext_ln14_1_fu_1078_p1;
        end else begin
            emission_4_address0_local = 'bx;
        end
    end else begin
        emission_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_4_address1_local = zext_ln14_6_fu_1647_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_4_address1_local = zext_ln14_4_fu_1438_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_4_address1_local = zext_ln14_2_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_4_address1_local = zext_ln14_fu_1042_p1;
        end else begin
            emission_4_address1_local = 'bx;
        end
    end else begin
        emission_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_4_ce0_local = 1'b1;
    end else begin
        emission_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_4_ce1_local = 1'b1;
    end else begin
        emission_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_5_address0_local = zext_ln14_7_fu_1671_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_5_address0_local = zext_ln14_5_fu_1473_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_5_address0_local = zext_ln14_3_fu_1268_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_5_address0_local = zext_ln14_1_fu_1078_p1;
        end else begin
            emission_5_address0_local = 'bx;
        end
    end else begin
        emission_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_5_address1_local = zext_ln14_6_fu_1647_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_5_address1_local = zext_ln14_4_fu_1438_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_5_address1_local = zext_ln14_2_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_5_address1_local = zext_ln14_fu_1042_p1;
        end else begin
            emission_5_address1_local = 'bx;
        end
    end else begin
        emission_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_5_ce0_local = 1'b1;
    end else begin
        emission_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_5_ce1_local = 1'b1;
    end else begin
        emission_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_6_address0_local = zext_ln14_7_fu_1671_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_6_address0_local = zext_ln14_5_fu_1473_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_6_address0_local = zext_ln14_3_fu_1268_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_6_address0_local = zext_ln14_1_fu_1078_p1;
        end else begin
            emission_6_address0_local = 'bx;
        end
    end else begin
        emission_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_6_address1_local = zext_ln14_6_fu_1647_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_6_address1_local = zext_ln14_4_fu_1438_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_6_address1_local = zext_ln14_2_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_6_address1_local = zext_ln14_fu_1042_p1;
        end else begin
            emission_6_address1_local = 'bx;
        end
    end else begin
        emission_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_6_ce0_local = 1'b1;
    end else begin
        emission_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_6_ce1_local = 1'b1;
    end else begin
        emission_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_7_address0_local = zext_ln14_7_fu_1671_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_7_address0_local = zext_ln14_5_fu_1473_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_7_address0_local = zext_ln14_3_fu_1268_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_7_address0_local = zext_ln14_1_fu_1078_p1;
        end else begin
            emission_7_address0_local = 'bx;
        end
    end else begin
        emission_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_7_address1_local = zext_ln14_6_fu_1647_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_7_address1_local = zext_ln14_4_fu_1438_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_7_address1_local = zext_ln14_2_fu_1244_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_7_address1_local = zext_ln14_fu_1042_p1;
        end else begin
            emission_7_address1_local = 'bx;
        end
    end else begin
        emission_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_7_ce0_local = 1'b1;
    end else begin
        emission_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_7_ce1_local = 1'b1;
    end else begin
        emission_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_958_p0 = bitcast_ln14_54_fu_1843_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_958_p0 = bitcast_ln14_36_fu_1693_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_958_p0 = bitcast_ln14_18_fu_1485_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_958_p0 = bitcast_ln14_fu_1280_p1;
    end else begin
        grp_fu_958_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_958_p1 = tmp_6_reg_2380;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_958_p1 = tmp_4_reg_2280;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_958_p1 = tmp_2_reg_2180;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_958_p1 = tmp_reg_2045;
    end else begin
        grp_fu_958_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_962_p0 = bitcast_ln14_63_fu_1847_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_962_p0 = bitcast_ln14_45_fu_1697_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_962_p0 = bitcast_ln14_27_fu_1489_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_962_p0 = bitcast_ln14_9_fu_1284_p1;
    end else begin
        grp_fu_962_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_962_p1 = tmp_7_reg_2385;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_962_p1 = tmp_5_reg_2285;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_962_p1 = tmp_3_reg_2185;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_962_p1 = tmp_1_reg_2055;
    end else begin
        grp_fu_962_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_0_ce0_local = 1'b1;
    end else begin
        init_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_2_ce0_local = 1'b1;
    end else begin
        init_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_3_ce0_local = 1'b1;
    end else begin
        init_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_4_ce0_local = 1'b1;
    end else begin
        init_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_5_ce0_local = 1'b1;
    end else begin
        init_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_6_ce0_local = 1'b1;
    end else begin
        init_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_7_ce0_local = 1'b1;
    end else begin
        init_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter2_stage1) & (ap_idle_pp0_0to1 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_1683_p2 = (s_1_reg_1884 + 7'd8);
assign add_ln14_1_fu_1239_p2 = (or_ln14_2_fu_1232_p3 + conv3_udiv_cast_cast_reg_1875);
assign add_ln14_2_fu_1263_p2 = (or_ln14_3_fu_1256_p3 + conv3_udiv_cast_cast_reg_1875);
assign add_ln14_3_fu_1468_p2 = (or_ln14_5_fu_1457_p5 + conv3_udiv_cast_cast_reg_1875);
assign add_ln14_4_fu_1642_p2 = (or_ln14_6_fu_1635_p3 + conv3_udiv_cast_cast_reg_1875);
assign add_ln14_5_fu_1666_p2 = (or_ln14_7_fu_1659_p3 + conv3_udiv_cast_cast_reg_1875);
assign add_ln14_fu_1072_p2 = (or_ln14_1_fu_1064_p3 + conv3_udiv_cast_cast_fu_982_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_18_fu_1485_p1 = init_2_load_reg_2060;
assign bitcast_ln14_27_fu_1489_p1 = init_3_load_reg_2105;
assign bitcast_ln14_36_fu_1693_p1 = init_4_load_reg_2150;
assign bitcast_ln14_45_fu_1697_p1 = init_5_load_reg_2155;
assign bitcast_ln14_54_fu_1843_p1 = init_6_load_reg_2160;
assign bitcast_ln14_63_fu_1847_p1 = init_7_load_reg_2165;
assign bitcast_ln14_9_fu_1284_p1 = init_1_load_reg_2050;
assign bitcast_ln14_fu_1280_p1 = init_0_load_reg_2040;
assign conv3_udiv_cast_cast_fu_982_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign emission_2_address0 = emission_2_address0_local;
assign emission_2_address1 = emission_2_address1_local;
assign emission_2_ce0 = emission_2_ce0_local;
assign emission_2_ce1 = emission_2_ce1_local;
assign emission_3_address0 = emission_3_address0_local;
assign emission_3_address1 = emission_3_address1_local;
assign emission_3_ce0 = emission_3_ce0_local;
assign emission_3_ce1 = emission_3_ce1_local;
assign emission_4_address0 = emission_4_address0_local;
assign emission_4_address1 = emission_4_address1_local;
assign emission_4_ce0 = emission_4_ce0_local;
assign emission_4_ce1 = emission_4_ce1_local;
assign emission_5_address0 = emission_5_address0_local;
assign emission_5_address1 = emission_5_address1_local;
assign emission_5_ce0 = emission_5_ce0_local;
assign emission_5_ce1 = emission_5_ce1_local;
assign emission_6_address0 = emission_6_address0_local;
assign emission_6_address1 = emission_6_address1_local;
assign emission_6_ce0 = emission_6_ce0_local;
assign emission_6_ce1 = emission_6_ce1_local;
assign emission_7_address0 = emission_7_address0_local;
assign emission_7_address1 = emission_7_address1_local;
assign emission_7_ce0 = emission_7_ce0_local;
assign emission_7_ce1 = emission_7_ce1_local;
assign grp_fu_1059_p_ce = 1'b1;
assign grp_fu_1059_p_din0 = grp_fu_958_p0;
assign grp_fu_1059_p_din1 = grp_fu_958_p1;
assign grp_fu_1059_p_opcode = 2'd0;
assign init_0_address0 = zext_ln9_fu_1012_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_1_address0 = zext_ln9_fu_1012_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_2_address0 = zext_ln9_fu_1012_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_3_address0 = zext_ln9_fu_1012_p1;
assign init_3_ce0 = init_3_ce0_local;
assign init_4_address0 = zext_ln9_fu_1012_p1;
assign init_4_ce0 = init_4_ce0_local;
assign init_5_address0 = zext_ln9_fu_1012_p1;
assign init_5_ce0 = init_5_ce0_local;
assign init_6_address0 = zext_ln9_fu_1012_p1;
assign init_6_ce0 = init_6_ce0_local;
assign init_7_address0 = zext_ln9_fu_1012_p1;
assign init_7_ce0 = init_7_ce0_local;
assign llike_1_address0 = zext_ln9_reg_1902_pp0_iter2_reg;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_974;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = zext_ln9_reg_1902_pp0_iter2_reg;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_966;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = zext_ln9_reg_1902_pp0_iter2_reg;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_974;
assign llike_3_we0 = llike_3_we0_local;
assign llike_4_address0 = zext_ln9_reg_1902_pp0_iter2_reg;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_d0 = reg_966;
assign llike_4_we0 = llike_4_we0_local;
assign llike_5_address0 = zext_ln9_reg_1902_pp0_iter2_reg;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_d0 = reg_974;
assign llike_5_we0 = llike_5_we0_local;
assign llike_6_address0 = zext_ln9_reg_1902_pp0_iter3_reg;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_d0 = reg_966;
assign llike_6_we0 = llike_6_we0_local;
assign llike_7_address0 = zext_ln9_reg_1902_pp0_iter3_reg;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_d0 = reg_974;
assign llike_7_we0 = llike_7_we0_local;
assign llike_address0 = zext_ln9_reg_1902_pp0_iter2_reg;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_966;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_1002_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign or_ln14_1_fu_1064_p3 = {{tmp_93_fu_1054_p4}, {4'd8}};
assign or_ln14_2_fu_1232_p3 = {{tmp_89_reg_1919}, {5'd16}};
assign or_ln14_3_fu_1256_p3 = {{tmp_89_reg_1919}, {5'd24}};
assign or_ln14_4_fu_1430_p4 = {{{lshr_ln9_reg_1894}, {1'd1}}, {conv3_udiv}};
assign or_ln14_5_fu_1457_p5 = {{{{lshr_ln9_reg_1894}, {1'd1}}, {tmp_76_fu_1450_p3}}, {4'd8}};
assign or_ln14_6_fu_1635_p3 = {{lshr_ln9_reg_1894}, {6'd48}};
assign or_ln14_7_fu_1659_p3 = {{lshr_ln9_reg_1894}, {6'd56}};
assign or_ln_fu_1034_p3 = {{tmp_89_fu_1024_p4}, {conv3_udiv}};
assign tmp_1_fu_1193_p10 = emission_4_q0;
assign tmp_1_fu_1193_p12 = emission_5_q0;
assign tmp_1_fu_1193_p14 = emission_6_q0;
assign tmp_1_fu_1193_p16 = emission_7_q0;
assign tmp_1_fu_1193_p17 = 'bx;
assign tmp_1_fu_1193_p2 = emission_0_q0;
assign tmp_1_fu_1193_p4 = emission_1_q0;
assign tmp_1_fu_1193_p6 = emission_2_q0;
assign tmp_1_fu_1193_p8 = emission_3_q0;
assign tmp_2_fu_1320_p10 = emission_4_q1;
assign tmp_2_fu_1320_p12 = emission_5_q1;
assign tmp_2_fu_1320_p14 = emission_6_q1;
assign tmp_2_fu_1320_p16 = emission_7_q1;
assign tmp_2_fu_1320_p17 = 'bx;
assign tmp_2_fu_1320_p2 = emission_0_q1;
assign tmp_2_fu_1320_p4 = emission_1_q1;
assign tmp_2_fu_1320_p6 = emission_2_q1;
assign tmp_2_fu_1320_p8 = emission_3_q1;
assign tmp_3_fu_1391_p10 = emission_4_q0;
assign tmp_3_fu_1391_p12 = emission_5_q0;
assign tmp_3_fu_1391_p14 = emission_6_q0;
assign tmp_3_fu_1391_p16 = emission_7_q0;
assign tmp_3_fu_1391_p17 = 'bx;
assign tmp_3_fu_1391_p2 = emission_0_q0;
assign tmp_3_fu_1391_p4 = emission_1_q0;
assign tmp_3_fu_1391_p6 = emission_2_q0;
assign tmp_3_fu_1391_p8 = emission_3_q0;
assign tmp_4_fu_1525_p10 = emission_4_q1;
assign tmp_4_fu_1525_p12 = emission_5_q1;
assign tmp_4_fu_1525_p14 = emission_6_q1;
assign tmp_4_fu_1525_p16 = emission_7_q1;
assign tmp_4_fu_1525_p17 = 'bx;
assign tmp_4_fu_1525_p2 = emission_0_q1;
assign tmp_4_fu_1525_p4 = emission_1_q1;
assign tmp_4_fu_1525_p6 = emission_2_q1;
assign tmp_4_fu_1525_p8 = emission_3_q1;
assign tmp_5_fu_1596_p10 = emission_4_q0;
assign tmp_5_fu_1596_p12 = emission_5_q0;
assign tmp_5_fu_1596_p14 = emission_6_q0;
assign tmp_5_fu_1596_p16 = emission_7_q0;
assign tmp_5_fu_1596_p17 = 'bx;
assign tmp_5_fu_1596_p2 = emission_0_q0;
assign tmp_5_fu_1596_p4 = emission_1_q0;
assign tmp_5_fu_1596_p6 = emission_2_q0;
assign tmp_5_fu_1596_p8 = emission_3_q0;
assign tmp_6_fu_1733_p10 = emission_4_q1;
assign tmp_6_fu_1733_p12 = emission_5_q1;
assign tmp_6_fu_1733_p14 = emission_6_q1;
assign tmp_6_fu_1733_p16 = emission_7_q1;
assign tmp_6_fu_1733_p17 = 'bx;
assign tmp_6_fu_1733_p2 = emission_0_q1;
assign tmp_6_fu_1733_p4 = emission_1_q1;
assign tmp_6_fu_1733_p6 = emission_2_q1;
assign tmp_6_fu_1733_p8 = emission_3_q1;
assign tmp_76_fu_1450_p3 = s_1_reg_1884[32'd1];
assign tmp_7_fu_1804_p10 = emission_4_q0;
assign tmp_7_fu_1804_p12 = emission_5_q0;
assign tmp_7_fu_1804_p14 = emission_6_q0;
assign tmp_7_fu_1804_p16 = emission_7_q0;
assign tmp_7_fu_1804_p17 = 'bx;
assign tmp_7_fu_1804_p2 = emission_0_q0;
assign tmp_7_fu_1804_p4 = emission_1_q0;
assign tmp_7_fu_1804_p6 = emission_2_q0;
assign tmp_7_fu_1804_p8 = emission_3_q0;
assign tmp_89_fu_1024_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_93_fu_1054_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign tmp_fu_1122_p10 = emission_4_q1;
assign tmp_fu_1122_p12 = emission_5_q1;
assign tmp_fu_1122_p14 = emission_6_q1;
assign tmp_fu_1122_p16 = emission_7_q1;
assign tmp_fu_1122_p17 = 'bx;
assign tmp_fu_1122_p2 = emission_0_q1;
assign tmp_fu_1122_p4 = emission_1_q1;
assign tmp_fu_1122_p6 = emission_2_q1;
assign tmp_fu_1122_p8 = emission_3_q1;
assign zext_ln14_1_fu_1078_p1 = add_ln14_fu_1072_p2;
assign zext_ln14_2_fu_1244_p1 = add_ln14_1_fu_1239_p2;
assign zext_ln14_3_fu_1268_p1 = add_ln14_2_fu_1263_p2;
assign zext_ln14_4_fu_1438_p1 = or_ln14_4_fu_1430_p4;
assign zext_ln14_5_fu_1473_p1 = add_ln14_3_fu_1468_p2;
assign zext_ln14_6_fu_1647_p1 = add_ln14_4_fu_1642_p2;
assign zext_ln14_7_fu_1671_p1 = add_ln14_5_fu_1666_p2;
assign zext_ln14_fu_1042_p1 = or_ln_fu_1034_p3;
assign zext_ln9_fu_1012_p1 = lshr_ln9_fu_1002_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_1875[8:5] <= 4'b0000;
    zext_ln9_reg_1902[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln9_reg_1902_pp0_iter1_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln9_reg_1902_pp0_iter2_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln9_reg_1902_pp0_iter3_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end
endmodule 