module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,llike_4_address0,llike_4_ce0,llike_4_we0,llike_4_d0,llike_5_address0,llike_5_ce0,llike_5_we0,llike_5_d0,llike_6_address0,llike_6_ce0,llike_6_we0,llike_6_d0,llike_7_address0,llike_7_ce0,llike_7_we0,llike_7_d0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,conv3_udiv,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,emission_4_address0,emission_4_ce0,emission_4_q0,emission_4_address1,emission_4_ce1,emission_4_q1,emission_5_address0,emission_5_ce0,emission_5_q0,emission_5_address1,emission_5_ce1,emission_5_q1,emission_6_address0,emission_6_ce0,emission_6_q0,emission_6_address1,emission_6_ce1,emission_6_q1,emission_7_address0,emission_7_ce0,emission_7_q0,emission_7_address1,emission_7_ce1,emission_7_q1,empty,conv3_udiv_cast,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,init_2_address0,init_2_ce0,init_2_q0,init_2_address1,init_2_ce1,init_2_q1,init_3_address0,init_3_ce0,init_3_q0,init_3_address1,init_3_ce1,init_3_q1,init_4_address0,init_4_ce0,init_4_q0,init_4_address1,init_4_ce1,init_4_q1,init_5_address0,init_5_ce0,init_5_q0,init_5_address1,init_5_ce1,init_5_q1,init_6_address0,init_6_ce0,init_6_q0,init_6_address1,init_6_ce1,init_6_q1,init_7_address0,init_7_ce0,init_7_q0,init_7_address1,init_7_ce1,init_7_q1,grp_fu_1059_p_din0,grp_fu_1059_p_din1,grp_fu_1059_p_opcode,grp_fu_1059_p_dout0,grp_fu_1059_p_ce,grp_fu_2062_p_din0,grp_fu_2062_p_din1,grp_fu_2062_p_opcode,grp_fu_2062_p_dout0,grp_fu_2062_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
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
output  [2:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
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
input  [4:0] conv3_udiv_cast;
output  [2:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [2:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
output  [2:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [2:0] init_2_address1;
output   init_2_ce1;
input  [63:0] init_2_q1;
output  [2:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [2:0] init_3_address1;
output   init_3_ce1;
input  [63:0] init_3_q1;
output  [2:0] init_4_address0;
output   init_4_ce0;
input  [63:0] init_4_q0;
output  [2:0] init_4_address1;
output   init_4_ce1;
input  [63:0] init_4_q1;
output  [2:0] init_5_address0;
output   init_5_ce0;
input  [63:0] init_5_q0;
output  [2:0] init_5_address1;
output   init_5_ce1;
input  [63:0] init_5_q1;
output  [2:0] init_6_address0;
output   init_6_ce0;
input  [63:0] init_6_q0;
output  [2:0] init_6_address1;
output   init_6_ce1;
input  [63:0] init_6_q1;
output  [2:0] init_7_address0;
output   init_7_ce0;
input  [63:0] init_7_q0;
output  [2:0] init_7_address1;
output   init_7_ce1;
input  [63:0] init_7_q1;
output  [63:0] grp_fu_1059_p_din0;
output  [63:0] grp_fu_1059_p_din1;
output  [1:0] grp_fu_1059_p_opcode;
input  [63:0] grp_fu_1059_p_dout0;
output   grp_fu_1059_p_ce;
output  [63:0] grp_fu_2062_p_din0;
output  [63:0] grp_fu_2062_p_din1;
output  [1:0] grp_fu_2062_p_opcode;
input  [63:0] grp_fu_2062_p_dout0;
output   grp_fu_2062_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_155_reg_3447;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1660;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1668;
wire   [8:0] conv3_udiv_cast_cast_fu_1676_p1;
reg   [8:0] conv3_udiv_cast_cast_reg_3424;
reg   [6:0] s_1_reg_3439;
reg   [0:0] tmp_155_reg_3447_pp0_iter1_reg;
wire   [2:0] lshr_ln9_fu_1696_p4;
reg   [2:0] lshr_ln9_reg_3451;
wire   [63:0] zext_ln9_fu_1706_p1;
reg   [63:0] zext_ln9_reg_3459;
reg   [63:0] zext_ln9_reg_3459_pp0_iter1_reg;
wire   [3:0] tmp_169_fu_1718_p4;
reg   [3:0] tmp_169_reg_3476;
wire   [1:0] tmp_213_fu_1784_p4;
reg   [1:0] tmp_213_reg_3562;
wire   [63:0] zext_ln14_16_fu_1802_p1;
reg   [63:0] zext_ln14_16_reg_3574;
reg   [63:0] zext_ln14_16_reg_3574_pp0_iter1_reg;
reg   [63:0] zext_ln14_16_reg_3574_pp0_iter2_reg;
reg   [63:0] init_0_load_reg_3661;
wire   [63:0] tmp_fu_1846_p19;
reg   [63:0] tmp_reg_3666;
wire   [63:0] tmp_1_fu_1917_p19;
reg   [63:0] tmp_1_reg_3671;
reg   [63:0] init_1_load_reg_3756;
reg   [63:0] init_2_load_reg_3761;
reg   [63:0] init_3_load_reg_3766;
reg   [63:0] init_4_load_reg_3771;
reg   [63:0] init_5_load_reg_3776;
reg   [63:0] init_6_load_reg_3781;
reg   [63:0] init_7_load_reg_3786;
reg   [63:0] init_0_load_1_reg_3791;
reg   [63:0] init_1_load_1_reg_3796;
reg   [63:0] init_2_load_1_reg_3801;
reg   [63:0] init_3_load_1_reg_3806;
reg   [63:0] init_4_load_1_reg_3811;
reg   [63:0] init_5_load_1_reg_3816;
reg   [63:0] init_6_load_1_reg_3821;
reg   [63:0] init_7_load_1_reg_3826;
wire   [63:0] bitcast_ln14_fu_2004_p1;
wire   [63:0] tmp_2_fu_2040_p19;
reg   [63:0] tmp_2_reg_3836;
wire   [63:0] tmp_3_fu_2111_p19;
reg   [63:0] tmp_3_reg_3841;
wire   [0:0] tmp_156_fu_2170_p3;
reg   [0:0] tmp_156_reg_3886;
wire   [63:0] bitcast_ln14_121_fu_2205_p1;
wire   [63:0] tmp_4_fu_2241_p19;
reg   [63:0] tmp_4_reg_3936;
wire   [63:0] tmp_5_fu_2312_p19;
reg   [63:0] tmp_5_reg_3941;
wire   [63:0] bitcast_ln14_122_fu_2399_p1;
wire   [63:0] bitcast_ln14_123_fu_2403_p1;
wire   [63:0] tmp_6_fu_2439_p19;
reg   [63:0] tmp_6_reg_4036;
wire   [63:0] tmp_7_fu_2510_p19;
reg   [63:0] tmp_7_reg_4041;
wire   [0:0] tmp_157_fu_2549_p3;
reg   [0:0] tmp_157_reg_4046;
wire   [63:0] bitcast_ln14_124_fu_2615_p1;
wire   [63:0] bitcast_ln14_125_fu_2619_p1;
wire   [63:0] tmp_8_fu_2655_p19;
reg   [63:0] tmp_8_reg_4142;
wire   [63:0] tmp_9_fu_2726_p19;
reg   [63:0] tmp_9_reg_4147;
wire   [63:0] bitcast_ln14_126_fu_2819_p1;
wire   [63:0] bitcast_ln14_127_fu_2823_p1;
wire   [63:0] tmp_s_fu_2859_p19;
reg   [63:0] tmp_s_reg_4242;
wire   [63:0] tmp_10_fu_2930_p19;
reg   [63:0] tmp_10_reg_4247;
wire   [63:0] bitcast_ln14_128_fu_3016_p1;
wire   [63:0] bitcast_ln14_129_fu_3020_p1;
wire   [63:0] tmp_11_fu_3056_p19;
reg   [63:0] tmp_11_reg_4342;
wire   [63:0] tmp_12_fu_3127_p19;
reg   [63:0] tmp_12_reg_4347;
wire   [63:0] bitcast_ln14_130_fu_3190_p1;
wire   [63:0] bitcast_ln14_131_fu_3194_p1;
wire   [63:0] tmp_13_fu_3264_p19;
reg   [63:0] tmp_13_reg_4442;
wire   [63:0] bitcast_ln14_132_fu_3303_p1;
wire   [63:0] bitcast_ln14_133_fu_3307_p1;
wire   [63:0] tmp_14_fu_3343_p19;
reg   [63:0] tmp_14_reg_4457;
wire   [63:0] bitcast_ln14_134_fu_3382_p1;
wire   [63:0] bitcast_ln14_135_fu_3386_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1736_p1;
wire   [63:0] zext_ln14_1_fu_1772_p1;
wire   [63:0] zext_ln14_2_fu_1968_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1992_p1;
wire   [63:0] zext_ln14_4_fu_2158_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_2193_p1;
wire   [63:0] zext_ln14_6_fu_2363_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_2387_p1;
wire   [63:0] zext_ln14_8_fu_2566_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_9_fu_2603_p1;
wire   [63:0] zext_ln14_10_fu_2780_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_11_fu_2807_p1;
wire   [63:0] zext_ln14_12_fu_2977_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_13_fu_3004_p1;
wire   [63:0] zext_ln14_14_fu_3178_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_15_fu_3210_p1;
reg   [6:0] s_fu_166;
wire   [6:0] add_ln13_fu_3222_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_0_ce1_local;
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
reg    init_1_ce1_local;
reg    init_1_ce0_local;
reg    init_2_ce1_local;
reg    init_2_ce0_local;
reg    init_3_ce1_local;
reg    init_3_ce0_local;
reg    init_4_ce1_local;
reg    init_4_ce0_local;
reg    init_5_ce1_local;
reg    init_5_ce0_local;
reg    init_6_ce1_local;
reg    init_6_ce0_local;
reg    init_7_ce1_local;
reg    init_7_ce0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg   [10:0] llike_address0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg   [10:0] llike_1_address0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg   [10:0] llike_2_address0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg   [10:0] llike_3_address0_local;
reg    llike_4_we0_local;
reg    llike_4_ce0_local;
reg   [10:0] llike_4_address0_local;
reg    llike_5_we0_local;
reg    llike_5_ce0_local;
reg   [10:0] llike_5_address0_local;
reg    llike_6_we0_local;
reg    llike_6_ce0_local;
reg   [10:0] llike_6_address0_local;
reg    llike_7_we0_local;
reg    llike_7_ce0_local;
reg   [10:0] llike_7_address0_local;
reg   [63:0] grp_fu_1652_p0;
reg   [63:0] grp_fu_1652_p1;
reg   [63:0] grp_fu_1656_p0;
reg   [63:0] grp_fu_1656_p1;
wire   [8:0] or_ln_fu_1728_p3;
wire   [4:0] tmp_173_fu_1748_p4;
wire   [8:0] or_ln14_1_fu_1758_p3;
wire   [8:0] add_ln14_fu_1766_p2;
wire   [2:0] or_ln14_8_fu_1794_p3;
wire   [63:0] tmp_fu_1846_p2;
wire   [63:0] tmp_fu_1846_p4;
wire   [63:0] tmp_fu_1846_p6;
wire   [63:0] tmp_fu_1846_p8;
wire   [63:0] tmp_fu_1846_p10;
wire   [63:0] tmp_fu_1846_p12;
wire   [63:0] tmp_fu_1846_p14;
wire   [63:0] tmp_fu_1846_p16;
wire   [63:0] tmp_fu_1846_p17;
wire   [63:0] tmp_1_fu_1917_p2;
wire   [63:0] tmp_1_fu_1917_p4;
wire   [63:0] tmp_1_fu_1917_p6;
wire   [63:0] tmp_1_fu_1917_p8;
wire   [63:0] tmp_1_fu_1917_p10;
wire   [63:0] tmp_1_fu_1917_p12;
wire   [63:0] tmp_1_fu_1917_p14;
wire   [63:0] tmp_1_fu_1917_p16;
wire   [63:0] tmp_1_fu_1917_p17;
wire   [8:0] or_ln14_2_fu_1956_p3;
wire   [8:0] add_ln14_1_fu_1963_p2;
wire   [8:0] or_ln14_3_fu_1980_p3;
wire   [8:0] add_ln14_2_fu_1987_p2;
wire   [63:0] tmp_2_fu_2040_p2;
wire   [63:0] tmp_2_fu_2040_p4;
wire   [63:0] tmp_2_fu_2040_p6;
wire   [63:0] tmp_2_fu_2040_p8;
wire   [63:0] tmp_2_fu_2040_p10;
wire   [63:0] tmp_2_fu_2040_p12;
wire   [63:0] tmp_2_fu_2040_p14;
wire   [63:0] tmp_2_fu_2040_p16;
wire   [63:0] tmp_2_fu_2040_p17;
wire   [63:0] tmp_3_fu_2111_p2;
wire   [63:0] tmp_3_fu_2111_p4;
wire   [63:0] tmp_3_fu_2111_p6;
wire   [63:0] tmp_3_fu_2111_p8;
wire   [63:0] tmp_3_fu_2111_p10;
wire   [63:0] tmp_3_fu_2111_p12;
wire   [63:0] tmp_3_fu_2111_p14;
wire   [63:0] tmp_3_fu_2111_p16;
wire   [63:0] tmp_3_fu_2111_p17;
wire   [8:0] or_ln14_4_fu_2150_p4;
wire   [8:0] or_ln14_5_fu_2177_p5;
wire   [8:0] add_ln14_3_fu_2188_p2;
wire   [63:0] tmp_4_fu_2241_p2;
wire   [63:0] tmp_4_fu_2241_p4;
wire   [63:0] tmp_4_fu_2241_p6;
wire   [63:0] tmp_4_fu_2241_p8;
wire   [63:0] tmp_4_fu_2241_p10;
wire   [63:0] tmp_4_fu_2241_p12;
wire   [63:0] tmp_4_fu_2241_p14;
wire   [63:0] tmp_4_fu_2241_p16;
wire   [63:0] tmp_4_fu_2241_p17;
wire   [63:0] tmp_5_fu_2312_p2;
wire   [63:0] tmp_5_fu_2312_p4;
wire   [63:0] tmp_5_fu_2312_p6;
wire   [63:0] tmp_5_fu_2312_p8;
wire   [63:0] tmp_5_fu_2312_p10;
wire   [63:0] tmp_5_fu_2312_p12;
wire   [63:0] tmp_5_fu_2312_p14;
wire   [63:0] tmp_5_fu_2312_p16;
wire   [63:0] tmp_5_fu_2312_p17;
wire   [8:0] or_ln14_6_fu_2351_p3;
wire   [8:0] add_ln14_4_fu_2358_p2;
wire   [8:0] or_ln14_7_fu_2375_p3;
wire   [8:0] add_ln14_5_fu_2382_p2;
wire   [63:0] tmp_6_fu_2439_p2;
wire   [63:0] tmp_6_fu_2439_p4;
wire   [63:0] tmp_6_fu_2439_p6;
wire   [63:0] tmp_6_fu_2439_p8;
wire   [63:0] tmp_6_fu_2439_p10;
wire   [63:0] tmp_6_fu_2439_p12;
wire   [63:0] tmp_6_fu_2439_p14;
wire   [63:0] tmp_6_fu_2439_p16;
wire   [63:0] tmp_6_fu_2439_p17;
wire   [63:0] tmp_7_fu_2510_p2;
wire   [63:0] tmp_7_fu_2510_p4;
wire   [63:0] tmp_7_fu_2510_p6;
wire   [63:0] tmp_7_fu_2510_p8;
wire   [63:0] tmp_7_fu_2510_p10;
wire   [63:0] tmp_7_fu_2510_p12;
wire   [63:0] tmp_7_fu_2510_p14;
wire   [63:0] tmp_7_fu_2510_p16;
wire   [63:0] tmp_7_fu_2510_p17;
wire   [8:0] or_ln14_9_fu_2556_p5;
wire   [1:0] tmp_217_fu_2578_p4;
wire   [8:0] or_ln14_s_fu_2587_p5;
wire   [8:0] add_ln14_6_fu_2598_p2;
wire   [63:0] tmp_8_fu_2655_p2;
wire   [63:0] tmp_8_fu_2655_p4;
wire   [63:0] tmp_8_fu_2655_p6;
wire   [63:0] tmp_8_fu_2655_p8;
wire   [63:0] tmp_8_fu_2655_p10;
wire   [63:0] tmp_8_fu_2655_p12;
wire   [63:0] tmp_8_fu_2655_p14;
wire   [63:0] tmp_8_fu_2655_p16;
wire   [63:0] tmp_8_fu_2655_p17;
wire   [63:0] tmp_9_fu_2726_p2;
wire   [63:0] tmp_9_fu_2726_p4;
wire   [63:0] tmp_9_fu_2726_p6;
wire   [63:0] tmp_9_fu_2726_p8;
wire   [63:0] tmp_9_fu_2726_p10;
wire   [63:0] tmp_9_fu_2726_p12;
wire   [63:0] tmp_9_fu_2726_p14;
wire   [63:0] tmp_9_fu_2726_p16;
wire   [63:0] tmp_9_fu_2726_p17;
wire   [8:0] or_ln14_10_fu_2765_p5;
wire   [8:0] add_ln14_7_fu_2775_p2;
wire   [8:0] or_ln14_11_fu_2792_p5;
wire   [8:0] add_ln14_8_fu_2802_p2;
wire   [63:0] tmp_s_fu_2859_p2;
wire   [63:0] tmp_s_fu_2859_p4;
wire   [63:0] tmp_s_fu_2859_p6;
wire   [63:0] tmp_s_fu_2859_p8;
wire   [63:0] tmp_s_fu_2859_p10;
wire   [63:0] tmp_s_fu_2859_p12;
wire   [63:0] tmp_s_fu_2859_p14;
wire   [63:0] tmp_s_fu_2859_p16;
wire   [63:0] tmp_s_fu_2859_p17;
wire   [63:0] tmp_10_fu_2930_p2;
wire   [63:0] tmp_10_fu_2930_p4;
wire   [63:0] tmp_10_fu_2930_p6;
wire   [63:0] tmp_10_fu_2930_p8;
wire   [63:0] tmp_10_fu_2930_p10;
wire   [63:0] tmp_10_fu_2930_p12;
wire   [63:0] tmp_10_fu_2930_p14;
wire   [63:0] tmp_10_fu_2930_p16;
wire   [63:0] tmp_10_fu_2930_p17;
wire   [8:0] or_ln14_12_fu_2969_p4;
wire   [8:0] or_ln14_13_fu_2989_p5;
wire   [8:0] add_ln14_9_fu_2999_p2;
wire   [63:0] tmp_11_fu_3056_p2;
wire   [63:0] tmp_11_fu_3056_p4;
wire   [63:0] tmp_11_fu_3056_p6;
wire   [63:0] tmp_11_fu_3056_p8;
wire   [63:0] tmp_11_fu_3056_p10;
wire   [63:0] tmp_11_fu_3056_p12;
wire   [63:0] tmp_11_fu_3056_p14;
wire   [63:0] tmp_11_fu_3056_p16;
wire   [63:0] tmp_11_fu_3056_p17;
wire   [63:0] tmp_12_fu_3127_p2;
wire   [63:0] tmp_12_fu_3127_p4;
wire   [63:0] tmp_12_fu_3127_p6;
wire   [63:0] tmp_12_fu_3127_p8;
wire   [63:0] tmp_12_fu_3127_p10;
wire   [63:0] tmp_12_fu_3127_p12;
wire   [63:0] tmp_12_fu_3127_p14;
wire   [63:0] tmp_12_fu_3127_p16;
wire   [63:0] tmp_12_fu_3127_p17;
wire   [8:0] or_ln14_14_fu_3166_p3;
wire   [8:0] add_ln14_10_fu_3173_p2;
wire   [8:0] or_ln14_15_fu_3198_p3;
wire   [8:0] add_ln14_11_fu_3205_p2;
wire   [63:0] tmp_13_fu_3264_p2;
wire   [63:0] tmp_13_fu_3264_p4;
wire   [63:0] tmp_13_fu_3264_p6;
wire   [63:0] tmp_13_fu_3264_p8;
wire   [63:0] tmp_13_fu_3264_p10;
wire   [63:0] tmp_13_fu_3264_p12;
wire   [63:0] tmp_13_fu_3264_p14;
wire   [63:0] tmp_13_fu_3264_p16;
wire   [63:0] tmp_13_fu_3264_p17;
wire   [63:0] tmp_14_fu_3343_p2;
wire   [63:0] tmp_14_fu_3343_p4;
wire   [63:0] tmp_14_fu_3343_p6;
wire   [63:0] tmp_14_fu_3343_p8;
wire   [63:0] tmp_14_fu_3343_p10;
wire   [63:0] tmp_14_fu_3343_p12;
wire   [63:0] tmp_14_fu_3343_p14;
wire   [63:0] tmp_14_fu_3343_p16;
wire   [63:0] tmp_14_fu_3343_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage1;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
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
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire   [2:0] tmp_fu_1846_p1;
wire   [2:0] tmp_fu_1846_p3;
wire   [2:0] tmp_fu_1846_p5;
wire   [2:0] tmp_fu_1846_p7;
wire  signed [2:0] tmp_fu_1846_p9;
wire  signed [2:0] tmp_fu_1846_p11;
wire  signed [2:0] tmp_fu_1846_p13;
wire  signed [2:0] tmp_fu_1846_p15;
wire   [2:0] tmp_1_fu_1917_p1;
wire   [2:0] tmp_1_fu_1917_p3;
wire   [2:0] tmp_1_fu_1917_p5;
wire   [2:0] tmp_1_fu_1917_p7;
wire  signed [2:0] tmp_1_fu_1917_p9;
wire  signed [2:0] tmp_1_fu_1917_p11;
wire  signed [2:0] tmp_1_fu_1917_p13;
wire  signed [2:0] tmp_1_fu_1917_p15;
wire   [2:0] tmp_2_fu_2040_p1;
wire   [2:0] tmp_2_fu_2040_p3;
wire   [2:0] tmp_2_fu_2040_p5;
wire   [2:0] tmp_2_fu_2040_p7;
wire  signed [2:0] tmp_2_fu_2040_p9;
wire  signed [2:0] tmp_2_fu_2040_p11;
wire  signed [2:0] tmp_2_fu_2040_p13;
wire  signed [2:0] tmp_2_fu_2040_p15;
wire   [2:0] tmp_3_fu_2111_p1;
wire   [2:0] tmp_3_fu_2111_p3;
wire   [2:0] tmp_3_fu_2111_p5;
wire   [2:0] tmp_3_fu_2111_p7;
wire  signed [2:0] tmp_3_fu_2111_p9;
wire  signed [2:0] tmp_3_fu_2111_p11;
wire  signed [2:0] tmp_3_fu_2111_p13;
wire  signed [2:0] tmp_3_fu_2111_p15;
wire   [2:0] tmp_4_fu_2241_p1;
wire   [2:0] tmp_4_fu_2241_p3;
wire   [2:0] tmp_4_fu_2241_p5;
wire   [2:0] tmp_4_fu_2241_p7;
wire  signed [2:0] tmp_4_fu_2241_p9;
wire  signed [2:0] tmp_4_fu_2241_p11;
wire  signed [2:0] tmp_4_fu_2241_p13;
wire  signed [2:0] tmp_4_fu_2241_p15;
wire   [2:0] tmp_5_fu_2312_p1;
wire   [2:0] tmp_5_fu_2312_p3;
wire   [2:0] tmp_5_fu_2312_p5;
wire   [2:0] tmp_5_fu_2312_p7;
wire  signed [2:0] tmp_5_fu_2312_p9;
wire  signed [2:0] tmp_5_fu_2312_p11;
wire  signed [2:0] tmp_5_fu_2312_p13;
wire  signed [2:0] tmp_5_fu_2312_p15;
wire   [2:0] tmp_6_fu_2439_p1;
wire   [2:0] tmp_6_fu_2439_p3;
wire   [2:0] tmp_6_fu_2439_p5;
wire   [2:0] tmp_6_fu_2439_p7;
wire  signed [2:0] tmp_6_fu_2439_p9;
wire  signed [2:0] tmp_6_fu_2439_p11;
wire  signed [2:0] tmp_6_fu_2439_p13;
wire  signed [2:0] tmp_6_fu_2439_p15;
wire   [2:0] tmp_7_fu_2510_p1;
wire   [2:0] tmp_7_fu_2510_p3;
wire   [2:0] tmp_7_fu_2510_p5;
wire   [2:0] tmp_7_fu_2510_p7;
wire  signed [2:0] tmp_7_fu_2510_p9;
wire  signed [2:0] tmp_7_fu_2510_p11;
wire  signed [2:0] tmp_7_fu_2510_p13;
wire  signed [2:0] tmp_7_fu_2510_p15;
wire   [2:0] tmp_8_fu_2655_p1;
wire   [2:0] tmp_8_fu_2655_p3;
wire   [2:0] tmp_8_fu_2655_p5;
wire   [2:0] tmp_8_fu_2655_p7;
wire  signed [2:0] tmp_8_fu_2655_p9;
wire  signed [2:0] tmp_8_fu_2655_p11;
wire  signed [2:0] tmp_8_fu_2655_p13;
wire  signed [2:0] tmp_8_fu_2655_p15;
wire   [2:0] tmp_9_fu_2726_p1;
wire   [2:0] tmp_9_fu_2726_p3;
wire   [2:0] tmp_9_fu_2726_p5;
wire   [2:0] tmp_9_fu_2726_p7;
wire  signed [2:0] tmp_9_fu_2726_p9;
wire  signed [2:0] tmp_9_fu_2726_p11;
wire  signed [2:0] tmp_9_fu_2726_p13;
wire  signed [2:0] tmp_9_fu_2726_p15;
wire   [2:0] tmp_s_fu_2859_p1;
wire   [2:0] tmp_s_fu_2859_p3;
wire   [2:0] tmp_s_fu_2859_p5;
wire   [2:0] tmp_s_fu_2859_p7;
wire  signed [2:0] tmp_s_fu_2859_p9;
wire  signed [2:0] tmp_s_fu_2859_p11;
wire  signed [2:0] tmp_s_fu_2859_p13;
wire  signed [2:0] tmp_s_fu_2859_p15;
wire   [2:0] tmp_10_fu_2930_p1;
wire   [2:0] tmp_10_fu_2930_p3;
wire   [2:0] tmp_10_fu_2930_p5;
wire   [2:0] tmp_10_fu_2930_p7;
wire  signed [2:0] tmp_10_fu_2930_p9;
wire  signed [2:0] tmp_10_fu_2930_p11;
wire  signed [2:0] tmp_10_fu_2930_p13;
wire  signed [2:0] tmp_10_fu_2930_p15;
wire   [2:0] tmp_11_fu_3056_p1;
wire   [2:0] tmp_11_fu_3056_p3;
wire   [2:0] tmp_11_fu_3056_p5;
wire   [2:0] tmp_11_fu_3056_p7;
wire  signed [2:0] tmp_11_fu_3056_p9;
wire  signed [2:0] tmp_11_fu_3056_p11;
wire  signed [2:0] tmp_11_fu_3056_p13;
wire  signed [2:0] tmp_11_fu_3056_p15;
wire   [2:0] tmp_12_fu_3127_p1;
wire   [2:0] tmp_12_fu_3127_p3;
wire   [2:0] tmp_12_fu_3127_p5;
wire   [2:0] tmp_12_fu_3127_p7;
wire  signed [2:0] tmp_12_fu_3127_p9;
wire  signed [2:0] tmp_12_fu_3127_p11;
wire  signed [2:0] tmp_12_fu_3127_p13;
wire  signed [2:0] tmp_12_fu_3127_p15;
wire   [2:0] tmp_13_fu_3264_p1;
wire   [2:0] tmp_13_fu_3264_p3;
wire   [2:0] tmp_13_fu_3264_p5;
wire   [2:0] tmp_13_fu_3264_p7;
wire  signed [2:0] tmp_13_fu_3264_p9;
wire  signed [2:0] tmp_13_fu_3264_p11;
wire  signed [2:0] tmp_13_fu_3264_p13;
wire  signed [2:0] tmp_13_fu_3264_p15;
wire   [2:0] tmp_14_fu_3343_p1;
wire   [2:0] tmp_14_fu_3343_p3;
wire   [2:0] tmp_14_fu_3343_p5;
wire   [2:0] tmp_14_fu_3343_p7;
wire  signed [2:0] tmp_14_fu_3343_p9;
wire  signed [2:0] tmp_14_fu_3343_p11;
wire  signed [2:0] tmp_14_fu_3343_p13;
wire  signed [2:0] tmp_14_fu_3343_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_166 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U3(.din0(tmp_fu_1846_p2),.din1(tmp_fu_1846_p4),.din2(tmp_fu_1846_p6),.din3(tmp_fu_1846_p8),.din4(tmp_fu_1846_p10),.din5(tmp_fu_1846_p12),.din6(tmp_fu_1846_p14),.din7(tmp_fu_1846_p16),.def(tmp_fu_1846_p17),.sel(empty),.dout(tmp_fu_1846_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U4(.din0(tmp_1_fu_1917_p2),.din1(tmp_1_fu_1917_p4),.din2(tmp_1_fu_1917_p6),.din3(tmp_1_fu_1917_p8),.din4(tmp_1_fu_1917_p10),.din5(tmp_1_fu_1917_p12),.din6(tmp_1_fu_1917_p14),.din7(tmp_1_fu_1917_p16),.def(tmp_1_fu_1917_p17),.sel(empty),.dout(tmp_1_fu_1917_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U5(.din0(tmp_2_fu_2040_p2),.din1(tmp_2_fu_2040_p4),.din2(tmp_2_fu_2040_p6),.din3(tmp_2_fu_2040_p8),.din4(tmp_2_fu_2040_p10),.din5(tmp_2_fu_2040_p12),.din6(tmp_2_fu_2040_p14),.din7(tmp_2_fu_2040_p16),.def(tmp_2_fu_2040_p17),.sel(empty),.dout(tmp_2_fu_2040_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U6(.din0(tmp_3_fu_2111_p2),.din1(tmp_3_fu_2111_p4),.din2(tmp_3_fu_2111_p6),.din3(tmp_3_fu_2111_p8),.din4(tmp_3_fu_2111_p10),.din5(tmp_3_fu_2111_p12),.din6(tmp_3_fu_2111_p14),.din7(tmp_3_fu_2111_p16),.def(tmp_3_fu_2111_p17),.sel(empty),.dout(tmp_3_fu_2111_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U7(.din0(tmp_4_fu_2241_p2),.din1(tmp_4_fu_2241_p4),.din2(tmp_4_fu_2241_p6),.din3(tmp_4_fu_2241_p8),.din4(tmp_4_fu_2241_p10),.din5(tmp_4_fu_2241_p12),.din6(tmp_4_fu_2241_p14),.din7(tmp_4_fu_2241_p16),.def(tmp_4_fu_2241_p17),.sel(empty),.dout(tmp_4_fu_2241_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U8(.din0(tmp_5_fu_2312_p2),.din1(tmp_5_fu_2312_p4),.din2(tmp_5_fu_2312_p6),.din3(tmp_5_fu_2312_p8),.din4(tmp_5_fu_2312_p10),.din5(tmp_5_fu_2312_p12),.din6(tmp_5_fu_2312_p14),.din7(tmp_5_fu_2312_p16),.def(tmp_5_fu_2312_p17),.sel(empty),.dout(tmp_5_fu_2312_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U9(.din0(tmp_6_fu_2439_p2),.din1(tmp_6_fu_2439_p4),.din2(tmp_6_fu_2439_p6),.din3(tmp_6_fu_2439_p8),.din4(tmp_6_fu_2439_p10),.din5(tmp_6_fu_2439_p12),.din6(tmp_6_fu_2439_p14),.din7(tmp_6_fu_2439_p16),.def(tmp_6_fu_2439_p17),.sel(empty),.dout(tmp_6_fu_2439_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U10(.din0(tmp_7_fu_2510_p2),.din1(tmp_7_fu_2510_p4),.din2(tmp_7_fu_2510_p6),.din3(tmp_7_fu_2510_p8),.din4(tmp_7_fu_2510_p10),.din5(tmp_7_fu_2510_p12),.din6(tmp_7_fu_2510_p14),.din7(tmp_7_fu_2510_p16),.def(tmp_7_fu_2510_p17),.sel(empty),.dout(tmp_7_fu_2510_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U11(.din0(tmp_8_fu_2655_p2),.din1(tmp_8_fu_2655_p4),.din2(tmp_8_fu_2655_p6),.din3(tmp_8_fu_2655_p8),.din4(tmp_8_fu_2655_p10),.din5(tmp_8_fu_2655_p12),.din6(tmp_8_fu_2655_p14),.din7(tmp_8_fu_2655_p16),.def(tmp_8_fu_2655_p17),.sel(empty),.dout(tmp_8_fu_2655_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U12(.din0(tmp_9_fu_2726_p2),.din1(tmp_9_fu_2726_p4),.din2(tmp_9_fu_2726_p6),.din3(tmp_9_fu_2726_p8),.din4(tmp_9_fu_2726_p10),.din5(tmp_9_fu_2726_p12),.din6(tmp_9_fu_2726_p14),.din7(tmp_9_fu_2726_p16),.def(tmp_9_fu_2726_p17),.sel(empty),.dout(tmp_9_fu_2726_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U13(.din0(tmp_s_fu_2859_p2),.din1(tmp_s_fu_2859_p4),.din2(tmp_s_fu_2859_p6),.din3(tmp_s_fu_2859_p8),.din4(tmp_s_fu_2859_p10),.din5(tmp_s_fu_2859_p12),.din6(tmp_s_fu_2859_p14),.din7(tmp_s_fu_2859_p16),.def(tmp_s_fu_2859_p17),.sel(empty),.dout(tmp_s_fu_2859_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U14(.din0(tmp_10_fu_2930_p2),.din1(tmp_10_fu_2930_p4),.din2(tmp_10_fu_2930_p6),.din3(tmp_10_fu_2930_p8),.din4(tmp_10_fu_2930_p10),.din5(tmp_10_fu_2930_p12),.din6(tmp_10_fu_2930_p14),.din7(tmp_10_fu_2930_p16),.def(tmp_10_fu_2930_p17),.sel(empty),.dout(tmp_10_fu_2930_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U15(.din0(tmp_11_fu_3056_p2),.din1(tmp_11_fu_3056_p4),.din2(tmp_11_fu_3056_p6),.din3(tmp_11_fu_3056_p8),.din4(tmp_11_fu_3056_p10),.din5(tmp_11_fu_3056_p12),.din6(tmp_11_fu_3056_p14),.din7(tmp_11_fu_3056_p16),.def(tmp_11_fu_3056_p17),.sel(empty),.dout(tmp_11_fu_3056_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U16(.din0(tmp_12_fu_3127_p2),.din1(tmp_12_fu_3127_p4),.din2(tmp_12_fu_3127_p6),.din3(tmp_12_fu_3127_p8),.din4(tmp_12_fu_3127_p10),.din5(tmp_12_fu_3127_p12),.din6(tmp_12_fu_3127_p14),.din7(tmp_12_fu_3127_p16),.def(tmp_12_fu_3127_p17),.sel(empty),.dout(tmp_12_fu_3127_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U17(.din0(tmp_13_fu_3264_p2),.din1(tmp_13_fu_3264_p4),.din2(tmp_13_fu_3264_p6),.din3(tmp_13_fu_3264_p8),.din4(tmp_13_fu_3264_p10),.din5(tmp_13_fu_3264_p12),.din6(tmp_13_fu_3264_p14),.din7(tmp_13_fu_3264_p16),.def(tmp_13_fu_3264_p17),.sel(empty),.dout(tmp_13_fu_3264_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U18(.din0(tmp_14_fu_3343_p2),.din1(tmp_14_fu_3343_p4),.din2(tmp_14_fu_3343_p6),.din3(tmp_14_fu_3343_p8),.din4(tmp_14_fu_3343_p10),.din5(tmp_14_fu_3343_p12),.din6(tmp_14_fu_3343_p14),.din7(tmp_14_fu_3343_p16),.def(tmp_14_fu_3343_p17),.sel(empty),.dout(tmp_14_fu_3343_p19));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_166 <= 7'd0;
    end else if (((tmp_155_reg_3447 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        s_fu_166 <= add_ln13_fu_3222_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_3424[4 : 0] <= conv3_udiv_cast_cast_fu_1676_p1[4 : 0];
        lshr_ln9_reg_3451 <= {{ap_sig_allocacmp_s_1[5:3]}};
        s_1_reg_3439 <= ap_sig_allocacmp_s_1;
        tmp_13_reg_4442 <= tmp_13_fu_3264_p19;
        tmp_14_reg_4457 <= tmp_14_fu_3343_p19;
        tmp_155_reg_3447 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_155_reg_3447_pp0_iter1_reg <= tmp_155_reg_3447;
        tmp_169_reg_3476 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_213_reg_3562 <= {{ap_sig_allocacmp_s_1[5:4]}};
        zext_ln14_16_reg_3574[2 : 1] <= zext_ln14_16_fu_1802_p1[2 : 1];
        zext_ln14_16_reg_3574_pp0_iter1_reg[2 : 1] <= zext_ln14_16_reg_3574[2 : 1];
        zext_ln14_16_reg_3574_pp0_iter2_reg[2 : 1] <= zext_ln14_16_reg_3574_pp0_iter1_reg[2 : 1];
        zext_ln9_reg_3459[2 : 0] <= zext_ln9_fu_1706_p1[2 : 0];
        zext_ln9_reg_3459_pp0_iter1_reg[2 : 0] <= zext_ln9_reg_3459[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        init_0_load_1_reg_3791 <= init_0_q0;
        init_0_load_reg_3661 <= init_0_q1;
        init_1_load_1_reg_3796 <= init_1_q0;
        init_1_load_reg_3756 <= init_1_q1;
        init_2_load_1_reg_3801 <= init_2_q0;
        init_2_load_reg_3761 <= init_2_q1;
        init_3_load_1_reg_3806 <= init_3_q0;
        init_3_load_reg_3766 <= init_3_q1;
        init_4_load_1_reg_3811 <= init_4_q0;
        init_4_load_reg_3771 <= init_4_q1;
        init_5_load_1_reg_3816 <= init_5_q0;
        init_5_load_reg_3776 <= init_5_q1;
        init_6_load_1_reg_3821 <= init_6_q0;
        init_6_load_reg_3781 <= init_6_q1;
        init_7_load_1_reg_3826 <= init_7_q0;
        init_7_load_reg_3786 <= init_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1660 <= grp_fu_1059_p_dout0;
        reg_1668 <= grp_fu_2062_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_10_reg_4247 <= tmp_10_fu_2930_p19;
        tmp_s_reg_4242 <= tmp_s_fu_2859_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_11_reg_4342 <= tmp_11_fu_3056_p19;
        tmp_12_reg_4347 <= tmp_12_fu_3127_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_156_reg_3886 <= s_1_reg_3439[32'd1];
        tmp_2_reg_3836 <= tmp_2_fu_2040_p19;
        tmp_3_reg_3841 <= tmp_3_fu_2111_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_157_reg_4046 <= s_1_reg_3439[32'd2];
        tmp_6_reg_4036 <= tmp_6_fu_2439_p19;
        tmp_7_reg_4041 <= tmp_7_fu_2510_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_3671 <= tmp_1_fu_1917_p19;
        tmp_reg_3666 <= tmp_fu_1846_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_4_reg_3936 <= tmp_4_fu_2241_p19;
        tmp_5_reg_3941 <= tmp_5_fu_2312_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_8_reg_4142 <= tmp_8_fu_2655_p19;
        tmp_9_reg_4147 <= tmp_9_fu_2726_p19;
    end
end
always @ (*) begin
    if (((tmp_155_reg_3447 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (tmp_155_reg_3447_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_166;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address0_local = zext_ln14_15_fu_3210_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address0_local = zext_ln14_13_fu_3004_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address0_local = zext_ln14_11_fu_2807_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address0_local = zext_ln14_9_fu_2603_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_2387_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_2193_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1992_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1772_p1;
        end else begin
            emission_0_address0_local = 'bx;
        end
    end else begin
        emission_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address1_local = zext_ln14_14_fu_3178_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address1_local = zext_ln14_12_fu_2977_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address1_local = zext_ln14_10_fu_2780_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address1_local = zext_ln14_8_fu_2566_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_2363_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_2158_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1968_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1736_p1;
        end else begin
            emission_0_address1_local = 'bx;
        end
    end else begin
        emission_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address0_local = zext_ln14_15_fu_3210_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address0_local = zext_ln14_13_fu_3004_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address0_local = zext_ln14_11_fu_2807_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address0_local = zext_ln14_9_fu_2603_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_2387_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_2193_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1992_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1772_p1;
        end else begin
            emission_1_address0_local = 'bx;
        end
    end else begin
        emission_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address1_local = zext_ln14_14_fu_3178_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address1_local = zext_ln14_12_fu_2977_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address1_local = zext_ln14_10_fu_2780_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address1_local = zext_ln14_8_fu_2566_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_2363_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_2158_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1968_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1736_p1;
        end else begin
            emission_1_address1_local = 'bx;
        end
    end else begin
        emission_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_2_address0_local = zext_ln14_15_fu_3210_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_2_address0_local = zext_ln14_13_fu_3004_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_2_address0_local = zext_ln14_11_fu_2807_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_2_address0_local = zext_ln14_9_fu_2603_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address0_local = zext_ln14_7_fu_2387_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address0_local = zext_ln14_5_fu_2193_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address0_local = zext_ln14_3_fu_1992_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_1772_p1;
        end else begin
            emission_2_address0_local = 'bx;
        end
    end else begin
        emission_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_2_address1_local = zext_ln14_14_fu_3178_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_2_address1_local = zext_ln14_12_fu_2977_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_2_address1_local = zext_ln14_10_fu_2780_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_2_address1_local = zext_ln14_8_fu_2566_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address1_local = zext_ln14_6_fu_2363_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address1_local = zext_ln14_4_fu_2158_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address1_local = zext_ln14_2_fu_1968_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address1_local = zext_ln14_fu_1736_p1;
        end else begin
            emission_2_address1_local = 'bx;
        end
    end else begin
        emission_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_2_ce0_local = 1'b1;
    end else begin
        emission_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_2_ce1_local = 1'b1;
    end else begin
        emission_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_3_address0_local = zext_ln14_15_fu_3210_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_3_address0_local = zext_ln14_13_fu_3004_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_3_address0_local = zext_ln14_11_fu_2807_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_3_address0_local = zext_ln14_9_fu_2603_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address0_local = zext_ln14_7_fu_2387_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address0_local = zext_ln14_5_fu_2193_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address0_local = zext_ln14_3_fu_1992_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_1772_p1;
        end else begin
            emission_3_address0_local = 'bx;
        end
    end else begin
        emission_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_3_address1_local = zext_ln14_14_fu_3178_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_3_address1_local = zext_ln14_12_fu_2977_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_3_address1_local = zext_ln14_10_fu_2780_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_3_address1_local = zext_ln14_8_fu_2566_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address1_local = zext_ln14_6_fu_2363_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address1_local = zext_ln14_4_fu_2158_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address1_local = zext_ln14_2_fu_1968_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address1_local = zext_ln14_fu_1736_p1;
        end else begin
            emission_3_address1_local = 'bx;
        end
    end else begin
        emission_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_3_ce0_local = 1'b1;
    end else begin
        emission_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_3_ce1_local = 1'b1;
    end else begin
        emission_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_4_address0_local = zext_ln14_15_fu_3210_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_4_address0_local = zext_ln14_13_fu_3004_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_4_address0_local = zext_ln14_11_fu_2807_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_4_address0_local = zext_ln14_9_fu_2603_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_4_address0_local = zext_ln14_7_fu_2387_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_4_address0_local = zext_ln14_5_fu_2193_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_4_address0_local = zext_ln14_3_fu_1992_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_4_address0_local = zext_ln14_1_fu_1772_p1;
        end else begin
            emission_4_address0_local = 'bx;
        end
    end else begin
        emission_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_4_address1_local = zext_ln14_14_fu_3178_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_4_address1_local = zext_ln14_12_fu_2977_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_4_address1_local = zext_ln14_10_fu_2780_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_4_address1_local = zext_ln14_8_fu_2566_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_4_address1_local = zext_ln14_6_fu_2363_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_4_address1_local = zext_ln14_4_fu_2158_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_4_address1_local = zext_ln14_2_fu_1968_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_4_address1_local = zext_ln14_fu_1736_p1;
        end else begin
            emission_4_address1_local = 'bx;
        end
    end else begin
        emission_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_4_ce0_local = 1'b1;
    end else begin
        emission_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_4_ce1_local = 1'b1;
    end else begin
        emission_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_5_address0_local = zext_ln14_15_fu_3210_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_5_address0_local = zext_ln14_13_fu_3004_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_5_address0_local = zext_ln14_11_fu_2807_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_5_address0_local = zext_ln14_9_fu_2603_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_5_address0_local = zext_ln14_7_fu_2387_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_5_address0_local = zext_ln14_5_fu_2193_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_5_address0_local = zext_ln14_3_fu_1992_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_5_address0_local = zext_ln14_1_fu_1772_p1;
        end else begin
            emission_5_address0_local = 'bx;
        end
    end else begin
        emission_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_5_address1_local = zext_ln14_14_fu_3178_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_5_address1_local = zext_ln14_12_fu_2977_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_5_address1_local = zext_ln14_10_fu_2780_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_5_address1_local = zext_ln14_8_fu_2566_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_5_address1_local = zext_ln14_6_fu_2363_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_5_address1_local = zext_ln14_4_fu_2158_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_5_address1_local = zext_ln14_2_fu_1968_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_5_address1_local = zext_ln14_fu_1736_p1;
        end else begin
            emission_5_address1_local = 'bx;
        end
    end else begin
        emission_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_5_ce0_local = 1'b1;
    end else begin
        emission_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_5_ce1_local = 1'b1;
    end else begin
        emission_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_6_address0_local = zext_ln14_15_fu_3210_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_6_address0_local = zext_ln14_13_fu_3004_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_6_address0_local = zext_ln14_11_fu_2807_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_6_address0_local = zext_ln14_9_fu_2603_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_6_address0_local = zext_ln14_7_fu_2387_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_6_address0_local = zext_ln14_5_fu_2193_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_6_address0_local = zext_ln14_3_fu_1992_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_6_address0_local = zext_ln14_1_fu_1772_p1;
        end else begin
            emission_6_address0_local = 'bx;
        end
    end else begin
        emission_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_6_address1_local = zext_ln14_14_fu_3178_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_6_address1_local = zext_ln14_12_fu_2977_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_6_address1_local = zext_ln14_10_fu_2780_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_6_address1_local = zext_ln14_8_fu_2566_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_6_address1_local = zext_ln14_6_fu_2363_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_6_address1_local = zext_ln14_4_fu_2158_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_6_address1_local = zext_ln14_2_fu_1968_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_6_address1_local = zext_ln14_fu_1736_p1;
        end else begin
            emission_6_address1_local = 'bx;
        end
    end else begin
        emission_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_6_ce0_local = 1'b1;
    end else begin
        emission_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_6_ce1_local = 1'b1;
    end else begin
        emission_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_7_address0_local = zext_ln14_15_fu_3210_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_7_address0_local = zext_ln14_13_fu_3004_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_7_address0_local = zext_ln14_11_fu_2807_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_7_address0_local = zext_ln14_9_fu_2603_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_7_address0_local = zext_ln14_7_fu_2387_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_7_address0_local = zext_ln14_5_fu_2193_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_7_address0_local = zext_ln14_3_fu_1992_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_7_address0_local = zext_ln14_1_fu_1772_p1;
        end else begin
            emission_7_address0_local = 'bx;
        end
    end else begin
        emission_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_7_address1_local = zext_ln14_14_fu_3178_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_7_address1_local = zext_ln14_12_fu_2977_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_7_address1_local = zext_ln14_10_fu_2780_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_7_address1_local = zext_ln14_8_fu_2566_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_7_address1_local = zext_ln14_6_fu_2363_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_7_address1_local = zext_ln14_4_fu_2158_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_7_address1_local = zext_ln14_2_fu_1968_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_7_address1_local = zext_ln14_fu_1736_p1;
        end else begin
            emission_7_address1_local = 'bx;
        end
    end else begin
        emission_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_7_ce0_local = 1'b1;
    end else begin
        emission_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_7_ce1_local = 1'b1;
    end else begin
        emission_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1652_p0 = bitcast_ln14_134_fu_3382_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1652_p0 = bitcast_ln14_132_fu_3303_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1652_p0 = bitcast_ln14_130_fu_3190_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1652_p0 = bitcast_ln14_128_fu_3016_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1652_p0 = bitcast_ln14_126_fu_2819_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1652_p0 = bitcast_ln14_124_fu_2615_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1652_p0 = bitcast_ln14_122_fu_2399_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1652_p0 = bitcast_ln14_fu_2004_p1;
    end else begin
        grp_fu_1652_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1652_p1 = tmp_13_reg_4442;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1652_p1 = tmp_11_reg_4342;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1652_p1 = tmp_s_reg_4242;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1652_p1 = tmp_8_reg_4142;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1652_p1 = tmp_6_reg_4036;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1652_p1 = tmp_4_reg_3936;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1652_p1 = tmp_2_reg_3836;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1652_p1 = tmp_reg_3666;
    end else begin
        grp_fu_1652_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1656_p0 = bitcast_ln14_135_fu_3386_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1656_p0 = bitcast_ln14_133_fu_3307_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1656_p0 = bitcast_ln14_131_fu_3194_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1656_p0 = bitcast_ln14_129_fu_3020_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1656_p0 = bitcast_ln14_127_fu_2823_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1656_p0 = bitcast_ln14_125_fu_2619_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1656_p0 = bitcast_ln14_123_fu_2403_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1656_p0 = bitcast_ln14_121_fu_2205_p1;
    end else begin
        grp_fu_1656_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1656_p1 = tmp_14_reg_4457;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1656_p1 = tmp_12_reg_4347;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1656_p1 = tmp_10_reg_4247;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1656_p1 = tmp_9_reg_4147;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1656_p1 = tmp_7_reg_4041;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1656_p1 = tmp_5_reg_3941;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1656_p1 = tmp_3_reg_3841;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1656_p1 = tmp_1_reg_3671;
    end else begin
        grp_fu_1656_p1 = 'bx;
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
        init_0_ce1_local = 1'b1;
    end else begin
        init_0_ce1_local = 1'b0;
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
        init_1_ce1_local = 1'b1;
    end else begin
        init_1_ce1_local = 1'b0;
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
        init_2_ce1_local = 1'b1;
    end else begin
        init_2_ce1_local = 1'b0;
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
        init_3_ce1_local = 1'b1;
    end else begin
        init_3_ce1_local = 1'b0;
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
        init_4_ce1_local = 1'b1;
    end else begin
        init_4_ce1_local = 1'b0;
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
        init_5_ce1_local = 1'b1;
    end else begin
        init_5_ce1_local = 1'b0;
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
        init_6_ce1_local = 1'b1;
    end else begin
        init_6_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_7_ce1_local = 1'b1;
    end else begin
        init_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            llike_1_address0_local = zext_ln14_16_reg_3574_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            llike_1_address0_local = zext_ln9_reg_3459_pp0_iter1_reg;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            llike_2_address0_local = zext_ln14_16_reg_3574_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            llike_2_address0_local = zext_ln9_reg_3459_pp0_iter1_reg;
        end else begin
            llike_2_address0_local = 'bx;
        end
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            llike_3_address0_local = zext_ln14_16_reg_3574_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            llike_3_address0_local = zext_ln9_reg_3459_pp0_iter1_reg;
        end else begin
            llike_3_address0_local = 'bx;
        end
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_address0_local = zext_ln14_16_reg_3574_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_4_address0_local = zext_ln9_reg_3459_pp0_iter1_reg;
    end else begin
        llike_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_address0_local = zext_ln14_16_reg_3574_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_5_address0_local = zext_ln9_reg_3459_pp0_iter1_reg;
    end else begin
        llike_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_address0_local = zext_ln14_16_reg_3574_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_6_address0_local = zext_ln9_reg_3459_pp0_iter1_reg;
    end else begin
        llike_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_address0_local = zext_ln14_16_reg_3574_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_7_address0_local = zext_ln9_reg_3459_pp0_iter1_reg;
    end else begin
        llike_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            llike_address0_local = zext_ln14_16_reg_3574_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            llike_address0_local = zext_ln9_reg_3459_pp0_iter1_reg;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_3222_p2 = (s_1_reg_3439 + 7'd16);
assign add_ln14_10_fu_3173_p2 = (or_ln14_14_fu_3166_p3 + conv3_udiv_cast_cast_reg_3424);
assign add_ln14_11_fu_3205_p2 = (or_ln14_15_fu_3198_p3 + conv3_udiv_cast_cast_reg_3424);
assign add_ln14_1_fu_1963_p2 = (or_ln14_2_fu_1956_p3 + conv3_udiv_cast_cast_reg_3424);
assign add_ln14_2_fu_1987_p2 = (or_ln14_3_fu_1980_p3 + conv3_udiv_cast_cast_reg_3424);
assign add_ln14_3_fu_2188_p2 = (or_ln14_5_fu_2177_p5 + conv3_udiv_cast_cast_reg_3424);
assign add_ln14_4_fu_2358_p2 = (or_ln14_6_fu_2351_p3 + conv3_udiv_cast_cast_reg_3424);
assign add_ln14_5_fu_2382_p2 = (or_ln14_7_fu_2375_p3 + conv3_udiv_cast_cast_reg_3424);
assign add_ln14_6_fu_2598_p2 = (or_ln14_s_fu_2587_p5 + conv3_udiv_cast_cast_reg_3424);
assign add_ln14_7_fu_2775_p2 = (or_ln14_10_fu_2765_p5 + conv3_udiv_cast_cast_reg_3424);
assign add_ln14_8_fu_2802_p2 = (or_ln14_11_fu_2792_p5 + conv3_udiv_cast_cast_reg_3424);
assign add_ln14_9_fu_2999_p2 = (or_ln14_13_fu_2989_p5 + conv3_udiv_cast_cast_reg_3424);
assign add_ln14_fu_1766_p2 = (or_ln14_1_fu_1758_p3 + conv3_udiv_cast_cast_fu_1676_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_121_fu_2205_p1 = init_1_load_reg_3756;
assign bitcast_ln14_122_fu_2399_p1 = init_2_load_reg_3761;
assign bitcast_ln14_123_fu_2403_p1 = init_3_load_reg_3766;
assign bitcast_ln14_124_fu_2615_p1 = init_4_load_reg_3771;
assign bitcast_ln14_125_fu_2619_p1 = init_5_load_reg_3776;
assign bitcast_ln14_126_fu_2819_p1 = init_6_load_reg_3781;
assign bitcast_ln14_127_fu_2823_p1 = init_7_load_reg_3786;
assign bitcast_ln14_128_fu_3016_p1 = init_0_load_1_reg_3791;
assign bitcast_ln14_129_fu_3020_p1 = init_1_load_1_reg_3796;
assign bitcast_ln14_130_fu_3190_p1 = init_2_load_1_reg_3801;
assign bitcast_ln14_131_fu_3194_p1 = init_3_load_1_reg_3806;
assign bitcast_ln14_132_fu_3303_p1 = init_4_load_1_reg_3811;
assign bitcast_ln14_133_fu_3307_p1 = init_5_load_1_reg_3816;
assign bitcast_ln14_134_fu_3382_p1 = init_6_load_1_reg_3821;
assign bitcast_ln14_135_fu_3386_p1 = init_7_load_1_reg_3826;
assign bitcast_ln14_fu_2004_p1 = init_0_load_reg_3661;
assign conv3_udiv_cast_cast_fu_1676_p1 = conv3_udiv_cast;
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
assign grp_fu_1059_p_din0 = grp_fu_1652_p0;
assign grp_fu_1059_p_din1 = grp_fu_1652_p1;
assign grp_fu_1059_p_opcode = 2'd0;
assign grp_fu_2062_p_ce = 1'b1;
assign grp_fu_2062_p_din0 = grp_fu_1656_p0;
assign grp_fu_2062_p_din1 = grp_fu_1656_p1;
assign grp_fu_2062_p_opcode = 2'd0;
assign init_0_address0 = zext_ln14_16_fu_1802_p1;
assign init_0_address1 = zext_ln9_fu_1706_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = zext_ln14_16_fu_1802_p1;
assign init_1_address1 = zext_ln9_fu_1706_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign init_2_address0 = zext_ln14_16_fu_1802_p1;
assign init_2_address1 = zext_ln9_fu_1706_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_2_ce1 = init_2_ce1_local;
assign init_3_address0 = zext_ln14_16_fu_1802_p1;
assign init_3_address1 = zext_ln9_fu_1706_p1;
assign init_3_ce0 = init_3_ce0_local;
assign init_3_ce1 = init_3_ce1_local;
assign init_4_address0 = zext_ln14_16_fu_1802_p1;
assign init_4_address1 = zext_ln9_fu_1706_p1;
assign init_4_ce0 = init_4_ce0_local;
assign init_4_ce1 = init_4_ce1_local;
assign init_5_address0 = zext_ln14_16_fu_1802_p1;
assign init_5_address1 = zext_ln9_fu_1706_p1;
assign init_5_ce0 = init_5_ce0_local;
assign init_5_ce1 = init_5_ce1_local;
assign init_6_address0 = zext_ln14_16_fu_1802_p1;
assign init_6_address1 = zext_ln9_fu_1706_p1;
assign init_6_ce0 = init_6_ce0_local;
assign init_6_ce1 = init_6_ce1_local;
assign init_7_address0 = zext_ln14_16_fu_1802_p1;
assign init_7_address1 = zext_ln9_fu_1706_p1;
assign init_7_ce0 = init_7_ce0_local;
assign init_7_ce1 = init_7_ce1_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_1668;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_1660;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_1668;
assign llike_3_we0 = llike_3_we0_local;
assign llike_4_address0 = llike_4_address0_local;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_d0 = reg_1660;
assign llike_4_we0 = llike_4_we0_local;
assign llike_5_address0 = llike_5_address0_local;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_d0 = reg_1668;
assign llike_5_we0 = llike_5_we0_local;
assign llike_6_address0 = llike_6_address0_local;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_d0 = reg_1660;
assign llike_6_we0 = llike_6_we0_local;
assign llike_7_address0 = llike_7_address0_local;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_d0 = reg_1668;
assign llike_7_we0 = llike_7_we0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_1660;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_1696_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign or_ln14_10_fu_2765_p5 = {{{{tmp_213_reg_3562}, {1'd1}}, {tmp_157_reg_4046}}, {5'd16}};
assign or_ln14_11_fu_2792_p5 = {{{{tmp_213_reg_3562}, {1'd1}}, {tmp_157_reg_4046}}, {5'd24}};
assign or_ln14_12_fu_2969_p4 = {{{tmp_213_reg_3562}, {2'd3}}, {conv3_udiv}};
assign or_ln14_13_fu_2989_p5 = {{{{tmp_213_reg_3562}, {2'd3}}, {tmp_156_reg_3886}}, {4'd8}};
assign or_ln14_14_fu_3166_p3 = {{tmp_213_reg_3562}, {7'd112}};
assign or_ln14_15_fu_3198_p3 = {{tmp_213_reg_3562}, {7'd120}};
assign or_ln14_1_fu_1758_p3 = {{tmp_173_fu_1748_p4}, {4'd8}};
assign or_ln14_2_fu_1956_p3 = {{tmp_169_reg_3476}, {5'd16}};
assign or_ln14_3_fu_1980_p3 = {{tmp_169_reg_3476}, {5'd24}};
assign or_ln14_4_fu_2150_p4 = {{{lshr_ln9_reg_3451}, {1'd1}}, {conv3_udiv}};
assign or_ln14_5_fu_2177_p5 = {{{{lshr_ln9_reg_3451}, {1'd1}}, {tmp_156_fu_2170_p3}}, {4'd8}};
assign or_ln14_6_fu_2351_p3 = {{lshr_ln9_reg_3451}, {6'd48}};
assign or_ln14_7_fu_2375_p3 = {{lshr_ln9_reg_3451}, {6'd56}};
assign or_ln14_8_fu_1794_p3 = {{tmp_213_fu_1784_p4}, {1'd1}};
assign or_ln14_9_fu_2556_p5 = {{{{tmp_213_reg_3562}, {1'd1}}, {tmp_157_fu_2549_p3}}, {conv3_udiv}};
assign or_ln14_s_fu_2587_p5 = {{{{tmp_213_reg_3562}, {1'd1}}, {tmp_217_fu_2578_p4}}, {4'd8}};
assign or_ln_fu_1728_p3 = {{tmp_169_fu_1718_p4}, {conv3_udiv}};
assign tmp_10_fu_2930_p10 = emission_4_q0;
assign tmp_10_fu_2930_p12 = emission_5_q0;
assign tmp_10_fu_2930_p14 = emission_6_q0;
assign tmp_10_fu_2930_p16 = emission_7_q0;
assign tmp_10_fu_2930_p17 = 'bx;
assign tmp_10_fu_2930_p2 = emission_0_q0;
assign tmp_10_fu_2930_p4 = emission_1_q0;
assign tmp_10_fu_2930_p6 = emission_2_q0;
assign tmp_10_fu_2930_p8 = emission_3_q0;
assign tmp_11_fu_3056_p10 = emission_4_q1;
assign tmp_11_fu_3056_p12 = emission_5_q1;
assign tmp_11_fu_3056_p14 = emission_6_q1;
assign tmp_11_fu_3056_p16 = emission_7_q1;
assign tmp_11_fu_3056_p17 = 'bx;
assign tmp_11_fu_3056_p2 = emission_0_q1;
assign tmp_11_fu_3056_p4 = emission_1_q1;
assign tmp_11_fu_3056_p6 = emission_2_q1;
assign tmp_11_fu_3056_p8 = emission_3_q1;
assign tmp_12_fu_3127_p10 = emission_4_q0;
assign tmp_12_fu_3127_p12 = emission_5_q0;
assign tmp_12_fu_3127_p14 = emission_6_q0;
assign tmp_12_fu_3127_p16 = emission_7_q0;
assign tmp_12_fu_3127_p17 = 'bx;
assign tmp_12_fu_3127_p2 = emission_0_q0;
assign tmp_12_fu_3127_p4 = emission_1_q0;
assign tmp_12_fu_3127_p6 = emission_2_q0;
assign tmp_12_fu_3127_p8 = emission_3_q0;
assign tmp_13_fu_3264_p10 = emission_4_q1;
assign tmp_13_fu_3264_p12 = emission_5_q1;
assign tmp_13_fu_3264_p14 = emission_6_q1;
assign tmp_13_fu_3264_p16 = emission_7_q1;
assign tmp_13_fu_3264_p17 = 'bx;
assign tmp_13_fu_3264_p2 = emission_0_q1;
assign tmp_13_fu_3264_p4 = emission_1_q1;
assign tmp_13_fu_3264_p6 = emission_2_q1;
assign tmp_13_fu_3264_p8 = emission_3_q1;
assign tmp_14_fu_3343_p10 = emission_4_q0;
assign tmp_14_fu_3343_p12 = emission_5_q0;
assign tmp_14_fu_3343_p14 = emission_6_q0;
assign tmp_14_fu_3343_p16 = emission_7_q0;
assign tmp_14_fu_3343_p17 = 'bx;
assign tmp_14_fu_3343_p2 = emission_0_q0;
assign tmp_14_fu_3343_p4 = emission_1_q0;
assign tmp_14_fu_3343_p6 = emission_2_q0;
assign tmp_14_fu_3343_p8 = emission_3_q0;
assign tmp_156_fu_2170_p3 = s_1_reg_3439[32'd1];
assign tmp_157_fu_2549_p3 = s_1_reg_3439[32'd2];
assign tmp_169_fu_1718_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_173_fu_1748_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign tmp_1_fu_1917_p10 = emission_4_q0;
assign tmp_1_fu_1917_p12 = emission_5_q0;
assign tmp_1_fu_1917_p14 = emission_6_q0;
assign tmp_1_fu_1917_p16 = emission_7_q0;
assign tmp_1_fu_1917_p17 = 'bx;
assign tmp_1_fu_1917_p2 = emission_0_q0;
assign tmp_1_fu_1917_p4 = emission_1_q0;
assign tmp_1_fu_1917_p6 = emission_2_q0;
assign tmp_1_fu_1917_p8 = emission_3_q0;
assign tmp_213_fu_1784_p4 = {{ap_sig_allocacmp_s_1[5:4]}};
assign tmp_217_fu_2578_p4 = {{s_1_reg_3439[2:1]}};
assign tmp_2_fu_2040_p10 = emission_4_q1;
assign tmp_2_fu_2040_p12 = emission_5_q1;
assign tmp_2_fu_2040_p14 = emission_6_q1;
assign tmp_2_fu_2040_p16 = emission_7_q1;
assign tmp_2_fu_2040_p17 = 'bx;
assign tmp_2_fu_2040_p2 = emission_0_q1;
assign tmp_2_fu_2040_p4 = emission_1_q1;
assign tmp_2_fu_2040_p6 = emission_2_q1;
assign tmp_2_fu_2040_p8 = emission_3_q1;
assign tmp_3_fu_2111_p10 = emission_4_q0;
assign tmp_3_fu_2111_p12 = emission_5_q0;
assign tmp_3_fu_2111_p14 = emission_6_q0;
assign tmp_3_fu_2111_p16 = emission_7_q0;
assign tmp_3_fu_2111_p17 = 'bx;
assign tmp_3_fu_2111_p2 = emission_0_q0;
assign tmp_3_fu_2111_p4 = emission_1_q0;
assign tmp_3_fu_2111_p6 = emission_2_q0;
assign tmp_3_fu_2111_p8 = emission_3_q0;
assign tmp_4_fu_2241_p10 = emission_4_q1;
assign tmp_4_fu_2241_p12 = emission_5_q1;
assign tmp_4_fu_2241_p14 = emission_6_q1;
assign tmp_4_fu_2241_p16 = emission_7_q1;
assign tmp_4_fu_2241_p17 = 'bx;
assign tmp_4_fu_2241_p2 = emission_0_q1;
assign tmp_4_fu_2241_p4 = emission_1_q1;
assign tmp_4_fu_2241_p6 = emission_2_q1;
assign tmp_4_fu_2241_p8 = emission_3_q1;
assign tmp_5_fu_2312_p10 = emission_4_q0;
assign tmp_5_fu_2312_p12 = emission_5_q0;
assign tmp_5_fu_2312_p14 = emission_6_q0;
assign tmp_5_fu_2312_p16 = emission_7_q0;
assign tmp_5_fu_2312_p17 = 'bx;
assign tmp_5_fu_2312_p2 = emission_0_q0;
assign tmp_5_fu_2312_p4 = emission_1_q0;
assign tmp_5_fu_2312_p6 = emission_2_q0;
assign tmp_5_fu_2312_p8 = emission_3_q0;
assign tmp_6_fu_2439_p10 = emission_4_q1;
assign tmp_6_fu_2439_p12 = emission_5_q1;
assign tmp_6_fu_2439_p14 = emission_6_q1;
assign tmp_6_fu_2439_p16 = emission_7_q1;
assign tmp_6_fu_2439_p17 = 'bx;
assign tmp_6_fu_2439_p2 = emission_0_q1;
assign tmp_6_fu_2439_p4 = emission_1_q1;
assign tmp_6_fu_2439_p6 = emission_2_q1;
assign tmp_6_fu_2439_p8 = emission_3_q1;
assign tmp_7_fu_2510_p10 = emission_4_q0;
assign tmp_7_fu_2510_p12 = emission_5_q0;
assign tmp_7_fu_2510_p14 = emission_6_q0;
assign tmp_7_fu_2510_p16 = emission_7_q0;
assign tmp_7_fu_2510_p17 = 'bx;
assign tmp_7_fu_2510_p2 = emission_0_q0;
assign tmp_7_fu_2510_p4 = emission_1_q0;
assign tmp_7_fu_2510_p6 = emission_2_q0;
assign tmp_7_fu_2510_p8 = emission_3_q0;
assign tmp_8_fu_2655_p10 = emission_4_q1;
assign tmp_8_fu_2655_p12 = emission_5_q1;
assign tmp_8_fu_2655_p14 = emission_6_q1;
assign tmp_8_fu_2655_p16 = emission_7_q1;
assign tmp_8_fu_2655_p17 = 'bx;
assign tmp_8_fu_2655_p2 = emission_0_q1;
assign tmp_8_fu_2655_p4 = emission_1_q1;
assign tmp_8_fu_2655_p6 = emission_2_q1;
assign tmp_8_fu_2655_p8 = emission_3_q1;
assign tmp_9_fu_2726_p10 = emission_4_q0;
assign tmp_9_fu_2726_p12 = emission_5_q0;
assign tmp_9_fu_2726_p14 = emission_6_q0;
assign tmp_9_fu_2726_p16 = emission_7_q0;
assign tmp_9_fu_2726_p17 = 'bx;
assign tmp_9_fu_2726_p2 = emission_0_q0;
assign tmp_9_fu_2726_p4 = emission_1_q0;
assign tmp_9_fu_2726_p6 = emission_2_q0;
assign tmp_9_fu_2726_p8 = emission_3_q0;
assign tmp_fu_1846_p10 = emission_4_q1;
assign tmp_fu_1846_p12 = emission_5_q1;
assign tmp_fu_1846_p14 = emission_6_q1;
assign tmp_fu_1846_p16 = emission_7_q1;
assign tmp_fu_1846_p17 = 'bx;
assign tmp_fu_1846_p2 = emission_0_q1;
assign tmp_fu_1846_p4 = emission_1_q1;
assign tmp_fu_1846_p6 = emission_2_q1;
assign tmp_fu_1846_p8 = emission_3_q1;
assign tmp_s_fu_2859_p10 = emission_4_q1;
assign tmp_s_fu_2859_p12 = emission_5_q1;
assign tmp_s_fu_2859_p14 = emission_6_q1;
assign tmp_s_fu_2859_p16 = emission_7_q1;
assign tmp_s_fu_2859_p17 = 'bx;
assign tmp_s_fu_2859_p2 = emission_0_q1;
assign tmp_s_fu_2859_p4 = emission_1_q1;
assign tmp_s_fu_2859_p6 = emission_2_q1;
assign tmp_s_fu_2859_p8 = emission_3_q1;
assign zext_ln14_10_fu_2780_p1 = add_ln14_7_fu_2775_p2;
assign zext_ln14_11_fu_2807_p1 = add_ln14_8_fu_2802_p2;
assign zext_ln14_12_fu_2977_p1 = or_ln14_12_fu_2969_p4;
assign zext_ln14_13_fu_3004_p1 = add_ln14_9_fu_2999_p2;
assign zext_ln14_14_fu_3178_p1 = add_ln14_10_fu_3173_p2;
assign zext_ln14_15_fu_3210_p1 = add_ln14_11_fu_3205_p2;
assign zext_ln14_16_fu_1802_p1 = or_ln14_8_fu_1794_p3;
assign zext_ln14_1_fu_1772_p1 = add_ln14_fu_1766_p2;
assign zext_ln14_2_fu_1968_p1 = add_ln14_1_fu_1963_p2;
assign zext_ln14_3_fu_1992_p1 = add_ln14_2_fu_1987_p2;
assign zext_ln14_4_fu_2158_p1 = or_ln14_4_fu_2150_p4;
assign zext_ln14_5_fu_2193_p1 = add_ln14_3_fu_2188_p2;
assign zext_ln14_6_fu_2363_p1 = add_ln14_4_fu_2358_p2;
assign zext_ln14_7_fu_2387_p1 = add_ln14_5_fu_2382_p2;
assign zext_ln14_8_fu_2566_p1 = or_ln14_9_fu_2556_p5;
assign zext_ln14_9_fu_2603_p1 = add_ln14_6_fu_2598_p2;
assign zext_ln14_fu_1736_p1 = or_ln_fu_1728_p3;
assign zext_ln9_fu_1706_p1 = lshr_ln9_fu_1696_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_3424[8:5] <= 4'b0000;
    zext_ln9_reg_3459[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln9_reg_3459_pp0_iter1_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_16_reg_3574[0] <= 1'b1;
    zext_ln14_16_reg_3574[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_16_reg_3574_pp0_iter1_reg[0] <= 1'b1;
    zext_ln14_16_reg_3574_pp0_iter1_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_16_reg_3574_pp0_iter2_reg[0] <= 1'b1;
    zext_ln14_16_reg_3574_pp0_iter2_reg[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end
endmodule 