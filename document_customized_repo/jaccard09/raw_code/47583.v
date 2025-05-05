module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,conv3_udiv,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,emission_4_address0,emission_4_ce0,emission_4_q0,emission_4_address1,emission_4_ce1,emission_4_q1,emission_5_address0,emission_5_ce0,emission_5_q0,emission_5_address1,emission_5_ce1,emission_5_q1,emission_6_address0,emission_6_ce0,emission_6_q0,emission_6_address1,emission_6_ce1,emission_6_q1,emission_7_address0,emission_7_ce0,emission_7_q0,emission_7_address1,emission_7_ce1,emission_7_q1,empty,conv3_udiv_cast,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,init_2_address0,init_2_ce0,init_2_q0,init_2_address1,init_2_ce1,init_2_q1,init_3_address0,init_3_ce0,init_3_q0,init_3_address1,init_3_ce1,init_3_q1,init_4_address0,init_4_ce0,init_4_q0,init_4_address1,init_4_ce1,init_4_q1,init_5_address0,init_5_ce0,init_5_q0,init_5_address1,init_5_ce1,init_5_q1,init_6_address0,init_6_ce0,init_6_q0,init_6_address1,init_6_ce1,init_6_q1,init_7_address0,init_7_ce0,init_7_q0,init_7_address1,init_7_ce1,init_7_q1,grp_fu_944_p_din0,grp_fu_944_p_din1,grp_fu_944_p_opcode,grp_fu_944_p_dout0,grp_fu_944_p_ce,grp_fu_1957_p_din0,grp_fu_1957_p_din1,grp_fu_1957_p_opcode,grp_fu_1957_p_dout0,grp_fu_1957_p_ce); 
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
output  [12:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
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
output  [63:0] grp_fu_944_p_din0;
output  [63:0] grp_fu_944_p_din1;
output  [1:0] grp_fu_944_p_opcode;
input  [63:0] grp_fu_944_p_dout0;
output   grp_fu_944_p_ce;
output  [63:0] grp_fu_1957_p_din0;
output  [63:0] grp_fu_1957_p_din1;
output  [1:0] grp_fu_1957_p_opcode;
input  [63:0] grp_fu_1957_p_dout0;
output   grp_fu_1957_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_16_reg_3515;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1632;
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
reg   [63:0] reg_1637;
wire   [8:0] conv3_udiv_cast_cast_fu_1642_p1;
reg   [8:0] conv3_udiv_cast_cast_reg_3492;
reg   [6:0] s_1_reg_3507;
reg   [0:0] tmp_16_reg_3515_pp0_iter1_reg;
wire   [2:0] lshr_ln9_fu_1662_p4;
reg   [2:0] lshr_ln9_reg_3519;
reg   [2:0] lshr_ln9_reg_3519_pp0_iter1_reg;
wire   [4:0] lshr_ln9_1_fu_1684_p4;
reg   [4:0] lshr_ln9_1_reg_3529;
reg   [4:0] lshr_ln9_1_reg_3529_pp0_iter1_reg;
wire   [3:0] tmp_49_fu_1694_p4;
reg   [3:0] tmp_49_reg_3539;
reg   [3:0] tmp_49_reg_3539_pp0_iter1_reg;
wire   [1:0] tmp_96_fu_1750_p4;
reg   [1:0] tmp_96_reg_3626;
reg   [1:0] tmp_96_reg_3626_pp0_iter1_reg;
reg   [1:0] tmp_96_reg_3626_pp0_iter2_reg;
reg   [63:0] init_0_load_reg_3717;
wire   [63:0] tmp_fu_1812_p19;
reg   [63:0] tmp_reg_3722;
wire   [63:0] tmp_1_fu_1883_p19;
reg   [63:0] tmp_1_reg_3727;
reg   [63:0] init_1_load_reg_3812;
reg   [63:0] init_2_load_reg_3817;
reg   [63:0] init_3_load_reg_3822;
reg   [63:0] init_4_load_reg_3827;
reg   [63:0] init_5_load_reg_3832;
reg   [63:0] init_6_load_reg_3837;
reg   [63:0] init_7_load_reg_3842;
reg   [63:0] init_0_load_1_reg_3847;
reg   [63:0] init_1_load_1_reg_3852;
reg   [63:0] init_2_load_1_reg_3857;
reg   [63:0] init_3_load_1_reg_3862;
reg   [63:0] init_4_load_1_reg_3867;
reg   [63:0] init_5_load_1_reg_3872;
reg   [63:0] init_6_load_1_reg_3877;
reg   [63:0] init_7_load_1_reg_3882;
wire   [63:0] bitcast_ln14_fu_1970_p1;
wire   [63:0] tmp_2_fu_2006_p19;
reg   [63:0] tmp_2_reg_3892;
wire   [63:0] tmp_3_fu_2077_p19;
reg   [63:0] tmp_3_reg_3897;
wire   [0:0] tmp_17_fu_2116_p3;
reg   [0:0] tmp_17_reg_3902;
reg   [0:0] tmp_17_reg_3902_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_121_fu_2171_p1;
wire   [63:0] tmp_4_fu_2207_p19;
reg   [63:0] tmp_4_reg_3994;
wire   [63:0] tmp_5_fu_2278_p19;
reg   [63:0] tmp_5_reg_3999;
wire   [63:0] bitcast_ln14_122_fu_2365_p1;
wire   [63:0] bitcast_ln14_123_fu_2369_p1;
wire   [63:0] tmp_6_fu_2405_p19;
reg   [63:0] tmp_6_reg_4094;
wire   [63:0] tmp_7_fu_2476_p19;
reg   [63:0] tmp_7_reg_4099;
wire   [1:0] tmp_97_fu_2515_p4;
reg   [1:0] tmp_97_reg_4104;
reg   [1:0] tmp_97_reg_4104_pp0_iter1_reg;
wire   [0:0] tmp_18_fu_2524_p3;
reg   [0:0] tmp_18_reg_4109;
reg   [0:0] tmp_18_reg_4109_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_124_fu_2581_p1;
wire   [63:0] bitcast_ln14_125_fu_2585_p1;
wire   [63:0] tmp_8_fu_2621_p19;
reg   [63:0] tmp_8_reg_4206;
wire   [63:0] tmp_9_fu_2692_p19;
reg   [63:0] tmp_9_reg_4211;
wire   [63:0] bitcast_ln14_126_fu_2785_p1;
wire   [63:0] bitcast_ln14_127_fu_2789_p1;
wire   [63:0] tmp_s_fu_2825_p19;
reg   [63:0] tmp_s_reg_4306;
wire   [63:0] tmp_10_fu_2896_p19;
reg   [63:0] tmp_10_reg_4311;
wire   [63:0] bitcast_ln14_128_fu_2982_p1;
wire   [63:0] bitcast_ln14_129_fu_2986_p1;
wire   [63:0] tmp_11_fu_3022_p19;
reg   [63:0] tmp_11_reg_4406;
wire   [63:0] tmp_12_fu_3093_p19;
reg   [63:0] tmp_12_reg_4411;
wire   [63:0] bitcast_ln14_130_fu_3156_p1;
wire   [63:0] bitcast_ln14_131_fu_3160_p1;
wire   [63:0] tmp_13_fu_3230_p19;
reg   [63:0] tmp_13_reg_4506;
wire   [63:0] bitcast_ln14_132_fu_3269_p1;
wire   [63:0] bitcast_ln14_133_fu_3273_p1;
wire   [63:0] tmp_14_fu_3309_p19;
reg   [63:0] tmp_14_reg_4521;
wire   [63:0] bitcast_ln14_134_fu_3348_p1;
wire   [63:0] bitcast_ln14_135_fu_3352_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln9_fu_1672_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1712_p1;
wire   [63:0] zext_ln14_1_fu_1738_p1;
wire   [63:0] zext_ln14_19_fu_1768_p1;
wire   [63:0] zext_ln14_2_fu_1934_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1958_p1;
wire   [63:0] zext_ln14_4_fu_2131_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_2159_p1;
wire   [63:0] zext_ln14_6_fu_2329_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_2353_p1;
wire   [63:0] zext_ln14_8_fu_2541_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_9_fu_2569_p1;
wire   [63:0] zext_ln14_10_fu_2746_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_11_fu_2773_p1;
wire   [63:0] zext_ln14_12_fu_2943_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_13_fu_2970_p1;
wire   [63:0] zext_ln14_14_fu_3144_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_15_fu_3176_p1;
wire   [63:0] zext_ln9_1_fu_3356_p1;
wire   [63:0] zext_ln14_16_fu_3368_p1;
wire   [63:0] zext_ln14_17_fu_3382_p1;
wire   [63:0] zext_ln14_18_fu_3395_p1;
wire   [63:0] zext_ln14_20_fu_3409_p1;
wire   [63:0] zext_ln14_21_fu_3425_p1;
wire   [63:0] zext_ln14_22_fu_3439_p1;
wire   [63:0] zext_ln14_23_fu_3452_p1;
reg   [6:0] s_fu_168;
wire   [6:0] add_ln13_fu_3188_p2;
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
reg   [12:0] llike_address0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg   [12:0] llike_1_address0_local;
reg   [63:0] grp_fu_1624_p0;
reg   [63:0] grp_fu_1624_p1;
reg   [63:0] grp_fu_1628_p0;
reg   [63:0] grp_fu_1628_p1;
wire   [8:0] or_ln_fu_1704_p3;
wire   [8:0] or_ln14_1_fu_1724_p3;
wire   [8:0] add_ln14_fu_1732_p2;
wire   [2:0] or_ln14_10_fu_1760_p3;
wire   [63:0] tmp_fu_1812_p2;
wire   [63:0] tmp_fu_1812_p4;
wire   [63:0] tmp_fu_1812_p6;
wire   [63:0] tmp_fu_1812_p8;
wire   [63:0] tmp_fu_1812_p10;
wire   [63:0] tmp_fu_1812_p12;
wire   [63:0] tmp_fu_1812_p14;
wire   [63:0] tmp_fu_1812_p16;
wire   [63:0] tmp_fu_1812_p17;
wire   [63:0] tmp_1_fu_1883_p2;
wire   [63:0] tmp_1_fu_1883_p4;
wire   [63:0] tmp_1_fu_1883_p6;
wire   [63:0] tmp_1_fu_1883_p8;
wire   [63:0] tmp_1_fu_1883_p10;
wire   [63:0] tmp_1_fu_1883_p12;
wire   [63:0] tmp_1_fu_1883_p14;
wire   [63:0] tmp_1_fu_1883_p16;
wire   [63:0] tmp_1_fu_1883_p17;
wire   [8:0] or_ln14_3_fu_1922_p3;
wire   [8:0] add_ln14_1_fu_1929_p2;
wire   [8:0] or_ln14_4_fu_1946_p3;
wire   [8:0] add_ln14_2_fu_1953_p2;
wire   [63:0] tmp_2_fu_2006_p2;
wire   [63:0] tmp_2_fu_2006_p4;
wire   [63:0] tmp_2_fu_2006_p6;
wire   [63:0] tmp_2_fu_2006_p8;
wire   [63:0] tmp_2_fu_2006_p10;
wire   [63:0] tmp_2_fu_2006_p12;
wire   [63:0] tmp_2_fu_2006_p14;
wire   [63:0] tmp_2_fu_2006_p16;
wire   [63:0] tmp_2_fu_2006_p17;
wire   [63:0] tmp_3_fu_2077_p2;
wire   [63:0] tmp_3_fu_2077_p4;
wire   [63:0] tmp_3_fu_2077_p6;
wire   [63:0] tmp_3_fu_2077_p8;
wire   [63:0] tmp_3_fu_2077_p10;
wire   [63:0] tmp_3_fu_2077_p12;
wire   [63:0] tmp_3_fu_2077_p14;
wire   [63:0] tmp_3_fu_2077_p16;
wire   [63:0] tmp_3_fu_2077_p17;
wire   [8:0] or_ln14_6_fu_2123_p4;
wire   [8:0] or_ln14_7_fu_2143_p5;
wire   [8:0] add_ln14_3_fu_2154_p2;
wire   [63:0] tmp_4_fu_2207_p2;
wire   [63:0] tmp_4_fu_2207_p4;
wire   [63:0] tmp_4_fu_2207_p6;
wire   [63:0] tmp_4_fu_2207_p8;
wire   [63:0] tmp_4_fu_2207_p10;
wire   [63:0] tmp_4_fu_2207_p12;
wire   [63:0] tmp_4_fu_2207_p14;
wire   [63:0] tmp_4_fu_2207_p16;
wire   [63:0] tmp_4_fu_2207_p17;
wire   [63:0] tmp_5_fu_2278_p2;
wire   [63:0] tmp_5_fu_2278_p4;
wire   [63:0] tmp_5_fu_2278_p6;
wire   [63:0] tmp_5_fu_2278_p8;
wire   [63:0] tmp_5_fu_2278_p10;
wire   [63:0] tmp_5_fu_2278_p12;
wire   [63:0] tmp_5_fu_2278_p14;
wire   [63:0] tmp_5_fu_2278_p16;
wire   [63:0] tmp_5_fu_2278_p17;
wire   [8:0] or_ln14_9_fu_2317_p3;
wire   [8:0] add_ln14_4_fu_2324_p2;
wire   [8:0] or_ln14_s_fu_2341_p3;
wire   [8:0] add_ln14_5_fu_2348_p2;
wire   [63:0] tmp_6_fu_2405_p2;
wire   [63:0] tmp_6_fu_2405_p4;
wire   [63:0] tmp_6_fu_2405_p6;
wire   [63:0] tmp_6_fu_2405_p8;
wire   [63:0] tmp_6_fu_2405_p10;
wire   [63:0] tmp_6_fu_2405_p12;
wire   [63:0] tmp_6_fu_2405_p14;
wire   [63:0] tmp_6_fu_2405_p16;
wire   [63:0] tmp_6_fu_2405_p17;
wire   [63:0] tmp_7_fu_2476_p2;
wire   [63:0] tmp_7_fu_2476_p4;
wire   [63:0] tmp_7_fu_2476_p6;
wire   [63:0] tmp_7_fu_2476_p8;
wire   [63:0] tmp_7_fu_2476_p10;
wire   [63:0] tmp_7_fu_2476_p12;
wire   [63:0] tmp_7_fu_2476_p14;
wire   [63:0] tmp_7_fu_2476_p16;
wire   [63:0] tmp_7_fu_2476_p17;
wire   [8:0] or_ln14_12_fu_2531_p5;
wire   [8:0] or_ln14_13_fu_2553_p5;
wire   [8:0] add_ln14_6_fu_2564_p2;
wire   [63:0] tmp_8_fu_2621_p2;
wire   [63:0] tmp_8_fu_2621_p4;
wire   [63:0] tmp_8_fu_2621_p6;
wire   [63:0] tmp_8_fu_2621_p8;
wire   [63:0] tmp_8_fu_2621_p10;
wire   [63:0] tmp_8_fu_2621_p12;
wire   [63:0] tmp_8_fu_2621_p14;
wire   [63:0] tmp_8_fu_2621_p16;
wire   [63:0] tmp_8_fu_2621_p17;
wire   [63:0] tmp_9_fu_2692_p2;
wire   [63:0] tmp_9_fu_2692_p4;
wire   [63:0] tmp_9_fu_2692_p6;
wire   [63:0] tmp_9_fu_2692_p8;
wire   [63:0] tmp_9_fu_2692_p10;
wire   [63:0] tmp_9_fu_2692_p12;
wire   [63:0] tmp_9_fu_2692_p14;
wire   [63:0] tmp_9_fu_2692_p16;
wire   [63:0] tmp_9_fu_2692_p17;
wire   [8:0] or_ln14_15_fu_2731_p5;
wire   [8:0] add_ln14_7_fu_2741_p2;
wire   [8:0] or_ln14_16_fu_2758_p5;
wire   [8:0] add_ln14_8_fu_2768_p2;
wire   [63:0] tmp_s_fu_2825_p2;
wire   [63:0] tmp_s_fu_2825_p4;
wire   [63:0] tmp_s_fu_2825_p6;
wire   [63:0] tmp_s_fu_2825_p8;
wire   [63:0] tmp_s_fu_2825_p10;
wire   [63:0] tmp_s_fu_2825_p12;
wire   [63:0] tmp_s_fu_2825_p14;
wire   [63:0] tmp_s_fu_2825_p16;
wire   [63:0] tmp_s_fu_2825_p17;
wire   [63:0] tmp_10_fu_2896_p2;
wire   [63:0] tmp_10_fu_2896_p4;
wire   [63:0] tmp_10_fu_2896_p6;
wire   [63:0] tmp_10_fu_2896_p8;
wire   [63:0] tmp_10_fu_2896_p10;
wire   [63:0] tmp_10_fu_2896_p12;
wire   [63:0] tmp_10_fu_2896_p14;
wire   [63:0] tmp_10_fu_2896_p16;
wire   [63:0] tmp_10_fu_2896_p17;
wire   [8:0] or_ln14_18_fu_2935_p4;
wire   [8:0] or_ln14_19_fu_2955_p5;
wire   [8:0] add_ln14_9_fu_2965_p2;
wire   [63:0] tmp_11_fu_3022_p2;
wire   [63:0] tmp_11_fu_3022_p4;
wire   [63:0] tmp_11_fu_3022_p6;
wire   [63:0] tmp_11_fu_3022_p8;
wire   [63:0] tmp_11_fu_3022_p10;
wire   [63:0] tmp_11_fu_3022_p12;
wire   [63:0] tmp_11_fu_3022_p14;
wire   [63:0] tmp_11_fu_3022_p16;
wire   [63:0] tmp_11_fu_3022_p17;
wire   [63:0] tmp_12_fu_3093_p2;
wire   [63:0] tmp_12_fu_3093_p4;
wire   [63:0] tmp_12_fu_3093_p6;
wire   [63:0] tmp_12_fu_3093_p8;
wire   [63:0] tmp_12_fu_3093_p10;
wire   [63:0] tmp_12_fu_3093_p12;
wire   [63:0] tmp_12_fu_3093_p14;
wire   [63:0] tmp_12_fu_3093_p16;
wire   [63:0] tmp_12_fu_3093_p17;
wire   [8:0] or_ln14_21_fu_3132_p3;
wire   [8:0] add_ln14_10_fu_3139_p2;
wire   [8:0] or_ln14_22_fu_3164_p3;
wire   [8:0] add_ln14_11_fu_3171_p2;
wire   [63:0] tmp_13_fu_3230_p2;
wire   [63:0] tmp_13_fu_3230_p4;
wire   [63:0] tmp_13_fu_3230_p6;
wire   [63:0] tmp_13_fu_3230_p8;
wire   [63:0] tmp_13_fu_3230_p10;
wire   [63:0] tmp_13_fu_3230_p12;
wire   [63:0] tmp_13_fu_3230_p14;
wire   [63:0] tmp_13_fu_3230_p16;
wire   [63:0] tmp_13_fu_3230_p17;
wire   [63:0] tmp_14_fu_3309_p2;
wire   [63:0] tmp_14_fu_3309_p4;
wire   [63:0] tmp_14_fu_3309_p6;
wire   [63:0] tmp_14_fu_3309_p8;
wire   [63:0] tmp_14_fu_3309_p10;
wire   [63:0] tmp_14_fu_3309_p12;
wire   [63:0] tmp_14_fu_3309_p14;
wire   [63:0] tmp_14_fu_3309_p16;
wire   [63:0] tmp_14_fu_3309_p17;
wire   [4:0] or_ln14_2_fu_3361_p3;
wire   [4:0] or_ln14_5_fu_3374_p4;
wire   [4:0] or_ln14_8_fu_3388_p3;
wire   [4:0] or_ln14_11_fu_3401_p4;
wire   [4:0] or_ln14_14_fu_3415_p5;
wire   [4:0] or_ln14_17_fu_3431_p4;
wire   [4:0] or_ln14_20_fu_3445_p3;
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
wire   [2:0] tmp_fu_1812_p1;
wire   [2:0] tmp_fu_1812_p3;
wire   [2:0] tmp_fu_1812_p5;
wire   [2:0] tmp_fu_1812_p7;
wire  signed [2:0] tmp_fu_1812_p9;
wire  signed [2:0] tmp_fu_1812_p11;
wire  signed [2:0] tmp_fu_1812_p13;
wire  signed [2:0] tmp_fu_1812_p15;
wire   [2:0] tmp_1_fu_1883_p1;
wire   [2:0] tmp_1_fu_1883_p3;
wire   [2:0] tmp_1_fu_1883_p5;
wire   [2:0] tmp_1_fu_1883_p7;
wire  signed [2:0] tmp_1_fu_1883_p9;
wire  signed [2:0] tmp_1_fu_1883_p11;
wire  signed [2:0] tmp_1_fu_1883_p13;
wire  signed [2:0] tmp_1_fu_1883_p15;
wire   [2:0] tmp_2_fu_2006_p1;
wire   [2:0] tmp_2_fu_2006_p3;
wire   [2:0] tmp_2_fu_2006_p5;
wire   [2:0] tmp_2_fu_2006_p7;
wire  signed [2:0] tmp_2_fu_2006_p9;
wire  signed [2:0] tmp_2_fu_2006_p11;
wire  signed [2:0] tmp_2_fu_2006_p13;
wire  signed [2:0] tmp_2_fu_2006_p15;
wire   [2:0] tmp_3_fu_2077_p1;
wire   [2:0] tmp_3_fu_2077_p3;
wire   [2:0] tmp_3_fu_2077_p5;
wire   [2:0] tmp_3_fu_2077_p7;
wire  signed [2:0] tmp_3_fu_2077_p9;
wire  signed [2:0] tmp_3_fu_2077_p11;
wire  signed [2:0] tmp_3_fu_2077_p13;
wire  signed [2:0] tmp_3_fu_2077_p15;
wire   [2:0] tmp_4_fu_2207_p1;
wire   [2:0] tmp_4_fu_2207_p3;
wire   [2:0] tmp_4_fu_2207_p5;
wire   [2:0] tmp_4_fu_2207_p7;
wire  signed [2:0] tmp_4_fu_2207_p9;
wire  signed [2:0] tmp_4_fu_2207_p11;
wire  signed [2:0] tmp_4_fu_2207_p13;
wire  signed [2:0] tmp_4_fu_2207_p15;
wire   [2:0] tmp_5_fu_2278_p1;
wire   [2:0] tmp_5_fu_2278_p3;
wire   [2:0] tmp_5_fu_2278_p5;
wire   [2:0] tmp_5_fu_2278_p7;
wire  signed [2:0] tmp_5_fu_2278_p9;
wire  signed [2:0] tmp_5_fu_2278_p11;
wire  signed [2:0] tmp_5_fu_2278_p13;
wire  signed [2:0] tmp_5_fu_2278_p15;
wire   [2:0] tmp_6_fu_2405_p1;
wire   [2:0] tmp_6_fu_2405_p3;
wire   [2:0] tmp_6_fu_2405_p5;
wire   [2:0] tmp_6_fu_2405_p7;
wire  signed [2:0] tmp_6_fu_2405_p9;
wire  signed [2:0] tmp_6_fu_2405_p11;
wire  signed [2:0] tmp_6_fu_2405_p13;
wire  signed [2:0] tmp_6_fu_2405_p15;
wire   [2:0] tmp_7_fu_2476_p1;
wire   [2:0] tmp_7_fu_2476_p3;
wire   [2:0] tmp_7_fu_2476_p5;
wire   [2:0] tmp_7_fu_2476_p7;
wire  signed [2:0] tmp_7_fu_2476_p9;
wire  signed [2:0] tmp_7_fu_2476_p11;
wire  signed [2:0] tmp_7_fu_2476_p13;
wire  signed [2:0] tmp_7_fu_2476_p15;
wire   [2:0] tmp_8_fu_2621_p1;
wire   [2:0] tmp_8_fu_2621_p3;
wire   [2:0] tmp_8_fu_2621_p5;
wire   [2:0] tmp_8_fu_2621_p7;
wire  signed [2:0] tmp_8_fu_2621_p9;
wire  signed [2:0] tmp_8_fu_2621_p11;
wire  signed [2:0] tmp_8_fu_2621_p13;
wire  signed [2:0] tmp_8_fu_2621_p15;
wire   [2:0] tmp_9_fu_2692_p1;
wire   [2:0] tmp_9_fu_2692_p3;
wire   [2:0] tmp_9_fu_2692_p5;
wire   [2:0] tmp_9_fu_2692_p7;
wire  signed [2:0] tmp_9_fu_2692_p9;
wire  signed [2:0] tmp_9_fu_2692_p11;
wire  signed [2:0] tmp_9_fu_2692_p13;
wire  signed [2:0] tmp_9_fu_2692_p15;
wire   [2:0] tmp_s_fu_2825_p1;
wire   [2:0] tmp_s_fu_2825_p3;
wire   [2:0] tmp_s_fu_2825_p5;
wire   [2:0] tmp_s_fu_2825_p7;
wire  signed [2:0] tmp_s_fu_2825_p9;
wire  signed [2:0] tmp_s_fu_2825_p11;
wire  signed [2:0] tmp_s_fu_2825_p13;
wire  signed [2:0] tmp_s_fu_2825_p15;
wire   [2:0] tmp_10_fu_2896_p1;
wire   [2:0] tmp_10_fu_2896_p3;
wire   [2:0] tmp_10_fu_2896_p5;
wire   [2:0] tmp_10_fu_2896_p7;
wire  signed [2:0] tmp_10_fu_2896_p9;
wire  signed [2:0] tmp_10_fu_2896_p11;
wire  signed [2:0] tmp_10_fu_2896_p13;
wire  signed [2:0] tmp_10_fu_2896_p15;
wire   [2:0] tmp_11_fu_3022_p1;
wire   [2:0] tmp_11_fu_3022_p3;
wire   [2:0] tmp_11_fu_3022_p5;
wire   [2:0] tmp_11_fu_3022_p7;
wire  signed [2:0] tmp_11_fu_3022_p9;
wire  signed [2:0] tmp_11_fu_3022_p11;
wire  signed [2:0] tmp_11_fu_3022_p13;
wire  signed [2:0] tmp_11_fu_3022_p15;
wire   [2:0] tmp_12_fu_3093_p1;
wire   [2:0] tmp_12_fu_3093_p3;
wire   [2:0] tmp_12_fu_3093_p5;
wire   [2:0] tmp_12_fu_3093_p7;
wire  signed [2:0] tmp_12_fu_3093_p9;
wire  signed [2:0] tmp_12_fu_3093_p11;
wire  signed [2:0] tmp_12_fu_3093_p13;
wire  signed [2:0] tmp_12_fu_3093_p15;
wire   [2:0] tmp_13_fu_3230_p1;
wire   [2:0] tmp_13_fu_3230_p3;
wire   [2:0] tmp_13_fu_3230_p5;
wire   [2:0] tmp_13_fu_3230_p7;
wire  signed [2:0] tmp_13_fu_3230_p9;
wire  signed [2:0] tmp_13_fu_3230_p11;
wire  signed [2:0] tmp_13_fu_3230_p13;
wire  signed [2:0] tmp_13_fu_3230_p15;
wire   [2:0] tmp_14_fu_3309_p1;
wire   [2:0] tmp_14_fu_3309_p3;
wire   [2:0] tmp_14_fu_3309_p5;
wire   [2:0] tmp_14_fu_3309_p7;
wire  signed [2:0] tmp_14_fu_3309_p9;
wire  signed [2:0] tmp_14_fu_3309_p11;
wire  signed [2:0] tmp_14_fu_3309_p13;
wire  signed [2:0] tmp_14_fu_3309_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_168 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U3(.din0(tmp_fu_1812_p2),.din1(tmp_fu_1812_p4),.din2(tmp_fu_1812_p6),.din3(tmp_fu_1812_p8),.din4(tmp_fu_1812_p10),.din5(tmp_fu_1812_p12),.din6(tmp_fu_1812_p14),.din7(tmp_fu_1812_p16),.def(tmp_fu_1812_p17),.sel(empty),.dout(tmp_fu_1812_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U4(.din0(tmp_1_fu_1883_p2),.din1(tmp_1_fu_1883_p4),.din2(tmp_1_fu_1883_p6),.din3(tmp_1_fu_1883_p8),.din4(tmp_1_fu_1883_p10),.din5(tmp_1_fu_1883_p12),.din6(tmp_1_fu_1883_p14),.din7(tmp_1_fu_1883_p16),.def(tmp_1_fu_1883_p17),.sel(empty),.dout(tmp_1_fu_1883_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U5(.din0(tmp_2_fu_2006_p2),.din1(tmp_2_fu_2006_p4),.din2(tmp_2_fu_2006_p6),.din3(tmp_2_fu_2006_p8),.din4(tmp_2_fu_2006_p10),.din5(tmp_2_fu_2006_p12),.din6(tmp_2_fu_2006_p14),.din7(tmp_2_fu_2006_p16),.def(tmp_2_fu_2006_p17),.sel(empty),.dout(tmp_2_fu_2006_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U6(.din0(tmp_3_fu_2077_p2),.din1(tmp_3_fu_2077_p4),.din2(tmp_3_fu_2077_p6),.din3(tmp_3_fu_2077_p8),.din4(tmp_3_fu_2077_p10),.din5(tmp_3_fu_2077_p12),.din6(tmp_3_fu_2077_p14),.din7(tmp_3_fu_2077_p16),.def(tmp_3_fu_2077_p17),.sel(empty),.dout(tmp_3_fu_2077_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U7(.din0(tmp_4_fu_2207_p2),.din1(tmp_4_fu_2207_p4),.din2(tmp_4_fu_2207_p6),.din3(tmp_4_fu_2207_p8),.din4(tmp_4_fu_2207_p10),.din5(tmp_4_fu_2207_p12),.din6(tmp_4_fu_2207_p14),.din7(tmp_4_fu_2207_p16),.def(tmp_4_fu_2207_p17),.sel(empty),.dout(tmp_4_fu_2207_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U8(.din0(tmp_5_fu_2278_p2),.din1(tmp_5_fu_2278_p4),.din2(tmp_5_fu_2278_p6),.din3(tmp_5_fu_2278_p8),.din4(tmp_5_fu_2278_p10),.din5(tmp_5_fu_2278_p12),.din6(tmp_5_fu_2278_p14),.din7(tmp_5_fu_2278_p16),.def(tmp_5_fu_2278_p17),.sel(empty),.dout(tmp_5_fu_2278_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U9(.din0(tmp_6_fu_2405_p2),.din1(tmp_6_fu_2405_p4),.din2(tmp_6_fu_2405_p6),.din3(tmp_6_fu_2405_p8),.din4(tmp_6_fu_2405_p10),.din5(tmp_6_fu_2405_p12),.din6(tmp_6_fu_2405_p14),.din7(tmp_6_fu_2405_p16),.def(tmp_6_fu_2405_p17),.sel(empty),.dout(tmp_6_fu_2405_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U10(.din0(tmp_7_fu_2476_p2),.din1(tmp_7_fu_2476_p4),.din2(tmp_7_fu_2476_p6),.din3(tmp_7_fu_2476_p8),.din4(tmp_7_fu_2476_p10),.din5(tmp_7_fu_2476_p12),.din6(tmp_7_fu_2476_p14),.din7(tmp_7_fu_2476_p16),.def(tmp_7_fu_2476_p17),.sel(empty),.dout(tmp_7_fu_2476_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U11(.din0(tmp_8_fu_2621_p2),.din1(tmp_8_fu_2621_p4),.din2(tmp_8_fu_2621_p6),.din3(tmp_8_fu_2621_p8),.din4(tmp_8_fu_2621_p10),.din5(tmp_8_fu_2621_p12),.din6(tmp_8_fu_2621_p14),.din7(tmp_8_fu_2621_p16),.def(tmp_8_fu_2621_p17),.sel(empty),.dout(tmp_8_fu_2621_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U12(.din0(tmp_9_fu_2692_p2),.din1(tmp_9_fu_2692_p4),.din2(tmp_9_fu_2692_p6),.din3(tmp_9_fu_2692_p8),.din4(tmp_9_fu_2692_p10),.din5(tmp_9_fu_2692_p12),.din6(tmp_9_fu_2692_p14),.din7(tmp_9_fu_2692_p16),.def(tmp_9_fu_2692_p17),.sel(empty),.dout(tmp_9_fu_2692_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U13(.din0(tmp_s_fu_2825_p2),.din1(tmp_s_fu_2825_p4),.din2(tmp_s_fu_2825_p6),.din3(tmp_s_fu_2825_p8),.din4(tmp_s_fu_2825_p10),.din5(tmp_s_fu_2825_p12),.din6(tmp_s_fu_2825_p14),.din7(tmp_s_fu_2825_p16),.def(tmp_s_fu_2825_p17),.sel(empty),.dout(tmp_s_fu_2825_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U14(.din0(tmp_10_fu_2896_p2),.din1(tmp_10_fu_2896_p4),.din2(tmp_10_fu_2896_p6),.din3(tmp_10_fu_2896_p8),.din4(tmp_10_fu_2896_p10),.din5(tmp_10_fu_2896_p12),.din6(tmp_10_fu_2896_p14),.din7(tmp_10_fu_2896_p16),.def(tmp_10_fu_2896_p17),.sel(empty),.dout(tmp_10_fu_2896_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U15(.din0(tmp_11_fu_3022_p2),.din1(tmp_11_fu_3022_p4),.din2(tmp_11_fu_3022_p6),.din3(tmp_11_fu_3022_p8),.din4(tmp_11_fu_3022_p10),.din5(tmp_11_fu_3022_p12),.din6(tmp_11_fu_3022_p14),.din7(tmp_11_fu_3022_p16),.def(tmp_11_fu_3022_p17),.sel(empty),.dout(tmp_11_fu_3022_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U16(.din0(tmp_12_fu_3093_p2),.din1(tmp_12_fu_3093_p4),.din2(tmp_12_fu_3093_p6),.din3(tmp_12_fu_3093_p8),.din4(tmp_12_fu_3093_p10),.din5(tmp_12_fu_3093_p12),.din6(tmp_12_fu_3093_p14),.din7(tmp_12_fu_3093_p16),.def(tmp_12_fu_3093_p17),.sel(empty),.dout(tmp_12_fu_3093_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U17(.din0(tmp_13_fu_3230_p2),.din1(tmp_13_fu_3230_p4),.din2(tmp_13_fu_3230_p6),.din3(tmp_13_fu_3230_p8),.din4(tmp_13_fu_3230_p10),.din5(tmp_13_fu_3230_p12),.din6(tmp_13_fu_3230_p14),.din7(tmp_13_fu_3230_p16),.def(tmp_13_fu_3230_p17),.sel(empty),.dout(tmp_13_fu_3230_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U18(.din0(tmp_14_fu_3309_p2),.din1(tmp_14_fu_3309_p4),.din2(tmp_14_fu_3309_p6),.din3(tmp_14_fu_3309_p8),.din4(tmp_14_fu_3309_p10),.din5(tmp_14_fu_3309_p12),.din6(tmp_14_fu_3309_p14),.din7(tmp_14_fu_3309_p16),.def(tmp_14_fu_3309_p17),.sel(empty),.dout(tmp_14_fu_3309_p19));
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
        s_fu_168 <= 7'd0;
    end else if (((tmp_16_reg_3515 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        s_fu_168 <= add_ln13_fu_3188_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_3492[4 : 0] <= conv3_udiv_cast_cast_fu_1642_p1[4 : 0];
        lshr_ln9_1_reg_3529 <= {{ap_sig_allocacmp_s_1[5:1]}};
        lshr_ln9_1_reg_3529_pp0_iter1_reg <= lshr_ln9_1_reg_3529;
        lshr_ln9_reg_3519 <= {{ap_sig_allocacmp_s_1[5:3]}};
        lshr_ln9_reg_3519_pp0_iter1_reg <= lshr_ln9_reg_3519;
        s_1_reg_3507 <= ap_sig_allocacmp_s_1;
        tmp_13_reg_4506 <= tmp_13_fu_3230_p19;
        tmp_14_reg_4521 <= tmp_14_fu_3309_p19;
        tmp_16_reg_3515 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_16_reg_3515_pp0_iter1_reg <= tmp_16_reg_3515;
        tmp_49_reg_3539 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_49_reg_3539_pp0_iter1_reg <= tmp_49_reg_3539;
        tmp_96_reg_3626 <= {{ap_sig_allocacmp_s_1[5:4]}};
        tmp_96_reg_3626_pp0_iter1_reg <= tmp_96_reg_3626;
        tmp_96_reg_3626_pp0_iter2_reg <= tmp_96_reg_3626_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        init_0_load_1_reg_3847 <= init_0_q0;
        init_0_load_reg_3717 <= init_0_q1;
        init_1_load_1_reg_3852 <= init_1_q0;
        init_1_load_reg_3812 <= init_1_q1;
        init_2_load_1_reg_3857 <= init_2_q0;
        init_2_load_reg_3817 <= init_2_q1;
        init_3_load_1_reg_3862 <= init_3_q0;
        init_3_load_reg_3822 <= init_3_q1;
        init_4_load_1_reg_3867 <= init_4_q0;
        init_4_load_reg_3827 <= init_4_q1;
        init_5_load_1_reg_3872 <= init_5_q0;
        init_5_load_reg_3832 <= init_5_q1;
        init_6_load_1_reg_3877 <= init_6_q0;
        init_6_load_reg_3837 <= init_6_q1;
        init_7_load_1_reg_3882 <= init_7_q0;
        init_7_load_reg_3842 <= init_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1632 <= grp_fu_944_p_dout0;
        reg_1637 <= grp_fu_1957_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        tmp_10_reg_4311 <= tmp_10_fu_2896_p19;
        tmp_s_reg_4306 <= tmp_s_fu_2825_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_11_reg_4406 <= tmp_11_fu_3022_p19;
        tmp_12_reg_4411 <= tmp_12_fu_3093_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_17_reg_3902 <= s_1_reg_3507[32'd1];
        tmp_17_reg_3902_pp0_iter1_reg <= tmp_17_reg_3902;
        tmp_2_reg_3892 <= tmp_2_fu_2006_p19;
        tmp_3_reg_3897 <= tmp_3_fu_2077_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_18_reg_4109 <= s_1_reg_3507[32'd2];
        tmp_18_reg_4109_pp0_iter1_reg <= tmp_18_reg_4109;
        tmp_6_reg_4094 <= tmp_6_fu_2405_p19;
        tmp_7_reg_4099 <= tmp_7_fu_2476_p19;
        tmp_97_reg_4104 <= {{s_1_reg_3507[2:1]}};
        tmp_97_reg_4104_pp0_iter1_reg <= tmp_97_reg_4104;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_3727 <= tmp_1_fu_1883_p19;
        tmp_reg_3722 <= tmp_fu_1812_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_4_reg_3994 <= tmp_4_fu_2207_p19;
        tmp_5_reg_3999 <= tmp_5_fu_2278_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_8_reg_4206 <= tmp_8_fu_2621_p19;
        tmp_9_reg_4211 <= tmp_9_fu_2692_p19;
    end
end
always @ (*) begin
    if (((tmp_16_reg_3515 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (tmp_16_reg_3515_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_168;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address0_local = zext_ln14_15_fu_3176_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address0_local = zext_ln14_13_fu_2970_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address0_local = zext_ln14_11_fu_2773_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address0_local = zext_ln14_9_fu_2569_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_2353_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_2159_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1958_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1738_p1;
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
            emission_0_address1_local = zext_ln14_14_fu_3144_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address1_local = zext_ln14_12_fu_2943_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address1_local = zext_ln14_10_fu_2746_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address1_local = zext_ln14_8_fu_2541_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_2329_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_2131_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1934_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1712_p1;
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
            emission_1_address0_local = zext_ln14_15_fu_3176_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address0_local = zext_ln14_13_fu_2970_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address0_local = zext_ln14_11_fu_2773_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address0_local = zext_ln14_9_fu_2569_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_2353_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_2159_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1958_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1738_p1;
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
            emission_1_address1_local = zext_ln14_14_fu_3144_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address1_local = zext_ln14_12_fu_2943_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address1_local = zext_ln14_10_fu_2746_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address1_local = zext_ln14_8_fu_2541_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_2329_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_2131_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1934_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1712_p1;
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
            emission_2_address0_local = zext_ln14_15_fu_3176_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_2_address0_local = zext_ln14_13_fu_2970_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_2_address0_local = zext_ln14_11_fu_2773_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_2_address0_local = zext_ln14_9_fu_2569_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address0_local = zext_ln14_7_fu_2353_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address0_local = zext_ln14_5_fu_2159_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address0_local = zext_ln14_3_fu_1958_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_1738_p1;
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
            emission_2_address1_local = zext_ln14_14_fu_3144_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_2_address1_local = zext_ln14_12_fu_2943_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_2_address1_local = zext_ln14_10_fu_2746_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_2_address1_local = zext_ln14_8_fu_2541_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address1_local = zext_ln14_6_fu_2329_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address1_local = zext_ln14_4_fu_2131_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address1_local = zext_ln14_2_fu_1934_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address1_local = zext_ln14_fu_1712_p1;
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
            emission_3_address0_local = zext_ln14_15_fu_3176_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_3_address0_local = zext_ln14_13_fu_2970_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_3_address0_local = zext_ln14_11_fu_2773_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_3_address0_local = zext_ln14_9_fu_2569_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address0_local = zext_ln14_7_fu_2353_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address0_local = zext_ln14_5_fu_2159_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address0_local = zext_ln14_3_fu_1958_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_1738_p1;
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
            emission_3_address1_local = zext_ln14_14_fu_3144_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_3_address1_local = zext_ln14_12_fu_2943_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_3_address1_local = zext_ln14_10_fu_2746_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_3_address1_local = zext_ln14_8_fu_2541_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address1_local = zext_ln14_6_fu_2329_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address1_local = zext_ln14_4_fu_2131_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address1_local = zext_ln14_2_fu_1934_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address1_local = zext_ln14_fu_1712_p1;
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
            emission_4_address0_local = zext_ln14_15_fu_3176_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_4_address0_local = zext_ln14_13_fu_2970_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_4_address0_local = zext_ln14_11_fu_2773_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_4_address0_local = zext_ln14_9_fu_2569_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_4_address0_local = zext_ln14_7_fu_2353_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_4_address0_local = zext_ln14_5_fu_2159_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_4_address0_local = zext_ln14_3_fu_1958_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_4_address0_local = zext_ln14_1_fu_1738_p1;
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
            emission_4_address1_local = zext_ln14_14_fu_3144_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_4_address1_local = zext_ln14_12_fu_2943_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_4_address1_local = zext_ln14_10_fu_2746_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_4_address1_local = zext_ln14_8_fu_2541_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_4_address1_local = zext_ln14_6_fu_2329_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_4_address1_local = zext_ln14_4_fu_2131_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_4_address1_local = zext_ln14_2_fu_1934_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_4_address1_local = zext_ln14_fu_1712_p1;
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
            emission_5_address0_local = zext_ln14_15_fu_3176_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_5_address0_local = zext_ln14_13_fu_2970_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_5_address0_local = zext_ln14_11_fu_2773_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_5_address0_local = zext_ln14_9_fu_2569_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_5_address0_local = zext_ln14_7_fu_2353_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_5_address0_local = zext_ln14_5_fu_2159_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_5_address0_local = zext_ln14_3_fu_1958_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_5_address0_local = zext_ln14_1_fu_1738_p1;
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
            emission_5_address1_local = zext_ln14_14_fu_3144_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_5_address1_local = zext_ln14_12_fu_2943_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_5_address1_local = zext_ln14_10_fu_2746_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_5_address1_local = zext_ln14_8_fu_2541_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_5_address1_local = zext_ln14_6_fu_2329_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_5_address1_local = zext_ln14_4_fu_2131_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_5_address1_local = zext_ln14_2_fu_1934_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_5_address1_local = zext_ln14_fu_1712_p1;
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
            emission_6_address0_local = zext_ln14_15_fu_3176_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_6_address0_local = zext_ln14_13_fu_2970_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_6_address0_local = zext_ln14_11_fu_2773_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_6_address0_local = zext_ln14_9_fu_2569_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_6_address0_local = zext_ln14_7_fu_2353_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_6_address0_local = zext_ln14_5_fu_2159_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_6_address0_local = zext_ln14_3_fu_1958_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_6_address0_local = zext_ln14_1_fu_1738_p1;
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
            emission_6_address1_local = zext_ln14_14_fu_3144_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_6_address1_local = zext_ln14_12_fu_2943_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_6_address1_local = zext_ln14_10_fu_2746_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_6_address1_local = zext_ln14_8_fu_2541_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_6_address1_local = zext_ln14_6_fu_2329_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_6_address1_local = zext_ln14_4_fu_2131_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_6_address1_local = zext_ln14_2_fu_1934_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_6_address1_local = zext_ln14_fu_1712_p1;
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
            emission_7_address0_local = zext_ln14_15_fu_3176_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_7_address0_local = zext_ln14_13_fu_2970_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_7_address0_local = zext_ln14_11_fu_2773_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_7_address0_local = zext_ln14_9_fu_2569_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_7_address0_local = zext_ln14_7_fu_2353_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_7_address0_local = zext_ln14_5_fu_2159_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_7_address0_local = zext_ln14_3_fu_1958_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_7_address0_local = zext_ln14_1_fu_1738_p1;
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
            emission_7_address1_local = zext_ln14_14_fu_3144_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_7_address1_local = zext_ln14_12_fu_2943_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_7_address1_local = zext_ln14_10_fu_2746_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_7_address1_local = zext_ln14_8_fu_2541_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_7_address1_local = zext_ln14_6_fu_2329_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_7_address1_local = zext_ln14_4_fu_2131_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_7_address1_local = zext_ln14_2_fu_1934_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_7_address1_local = zext_ln14_fu_1712_p1;
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
        grp_fu_1624_p0 = bitcast_ln14_134_fu_3348_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1624_p0 = bitcast_ln14_132_fu_3269_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1624_p0 = bitcast_ln14_130_fu_3156_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1624_p0 = bitcast_ln14_128_fu_2982_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1624_p0 = bitcast_ln14_126_fu_2785_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1624_p0 = bitcast_ln14_124_fu_2581_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1624_p0 = bitcast_ln14_122_fu_2365_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1624_p0 = bitcast_ln14_fu_1970_p1;
    end else begin
        grp_fu_1624_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1624_p1 = tmp_13_reg_4506;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1624_p1 = tmp_11_reg_4406;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1624_p1 = tmp_s_reg_4306;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1624_p1 = tmp_8_reg_4206;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1624_p1 = tmp_6_reg_4094;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1624_p1 = tmp_4_reg_3994;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1624_p1 = tmp_2_reg_3892;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1624_p1 = tmp_reg_3722;
    end else begin
        grp_fu_1624_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1628_p0 = bitcast_ln14_135_fu_3352_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1628_p0 = bitcast_ln14_133_fu_3273_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1628_p0 = bitcast_ln14_131_fu_3160_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1628_p0 = bitcast_ln14_129_fu_2986_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1628_p0 = bitcast_ln14_127_fu_2789_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1628_p0 = bitcast_ln14_125_fu_2585_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1628_p0 = bitcast_ln14_123_fu_2369_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1628_p0 = bitcast_ln14_121_fu_2171_p1;
    end else begin
        grp_fu_1628_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1628_p1 = tmp_14_reg_4521;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1628_p1 = tmp_12_reg_4411;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1628_p1 = tmp_10_reg_4311;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1628_p1 = tmp_9_reg_4211;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1628_p1 = tmp_7_reg_4099;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1628_p1 = tmp_5_reg_3999;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1628_p1 = tmp_3_reg_3897;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1628_p1 = tmp_1_reg_3727;
    end else begin
        grp_fu_1628_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_address0_local = zext_ln14_23_fu_3452_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_address0_local = zext_ln14_22_fu_3439_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_1_address0_local = zext_ln14_21_fu_3425_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_1_address0_local = zext_ln14_20_fu_3409_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_1_address0_local = zext_ln14_18_fu_3395_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_1_address0_local = zext_ln14_17_fu_3382_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_1_address0_local = zext_ln14_16_fu_3368_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_address0_local = zext_ln9_1_fu_3356_p1;
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_address0_local = zext_ln14_23_fu_3452_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address0_local = zext_ln14_22_fu_3439_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_address0_local = zext_ln14_21_fu_3425_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address0_local = zext_ln14_20_fu_3409_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_address0_local = zext_ln14_18_fu_3395_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address0_local = zext_ln14_17_fu_3382_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_address0_local = zext_ln14_16_fu_3368_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln9_1_fu_3356_p1;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
assign add_ln13_fu_3188_p2 = (s_1_reg_3507 + 7'd16);
assign add_ln14_10_fu_3139_p2 = (or_ln14_21_fu_3132_p3 + conv3_udiv_cast_cast_reg_3492);
assign add_ln14_11_fu_3171_p2 = (or_ln14_22_fu_3164_p3 + conv3_udiv_cast_cast_reg_3492);
assign add_ln14_1_fu_1929_p2 = (or_ln14_3_fu_1922_p3 + conv3_udiv_cast_cast_reg_3492);
assign add_ln14_2_fu_1953_p2 = (or_ln14_4_fu_1946_p3 + conv3_udiv_cast_cast_reg_3492);
assign add_ln14_3_fu_2154_p2 = (or_ln14_7_fu_2143_p5 + conv3_udiv_cast_cast_reg_3492);
assign add_ln14_4_fu_2324_p2 = (or_ln14_9_fu_2317_p3 + conv3_udiv_cast_cast_reg_3492);
assign add_ln14_5_fu_2348_p2 = (or_ln14_s_fu_2341_p3 + conv3_udiv_cast_cast_reg_3492);
assign add_ln14_6_fu_2564_p2 = (or_ln14_13_fu_2553_p5 + conv3_udiv_cast_cast_reg_3492);
assign add_ln14_7_fu_2741_p2 = (or_ln14_15_fu_2731_p5 + conv3_udiv_cast_cast_reg_3492);
assign add_ln14_8_fu_2768_p2 = (or_ln14_16_fu_2758_p5 + conv3_udiv_cast_cast_reg_3492);
assign add_ln14_9_fu_2965_p2 = (or_ln14_19_fu_2955_p5 + conv3_udiv_cast_cast_reg_3492);
assign add_ln14_fu_1732_p2 = (or_ln14_1_fu_1724_p3 + conv3_udiv_cast_cast_fu_1642_p1);
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
assign bitcast_ln14_121_fu_2171_p1 = init_1_load_reg_3812;
assign bitcast_ln14_122_fu_2365_p1 = init_2_load_reg_3817;
assign bitcast_ln14_123_fu_2369_p1 = init_3_load_reg_3822;
assign bitcast_ln14_124_fu_2581_p1 = init_4_load_reg_3827;
assign bitcast_ln14_125_fu_2585_p1 = init_5_load_reg_3832;
assign bitcast_ln14_126_fu_2785_p1 = init_6_load_reg_3837;
assign bitcast_ln14_127_fu_2789_p1 = init_7_load_reg_3842;
assign bitcast_ln14_128_fu_2982_p1 = init_0_load_1_reg_3847;
assign bitcast_ln14_129_fu_2986_p1 = init_1_load_1_reg_3852;
assign bitcast_ln14_130_fu_3156_p1 = init_2_load_1_reg_3857;
assign bitcast_ln14_131_fu_3160_p1 = init_3_load_1_reg_3862;
assign bitcast_ln14_132_fu_3269_p1 = init_4_load_1_reg_3867;
assign bitcast_ln14_133_fu_3273_p1 = init_5_load_1_reg_3872;
assign bitcast_ln14_134_fu_3348_p1 = init_6_load_1_reg_3877;
assign bitcast_ln14_135_fu_3352_p1 = init_7_load_1_reg_3882;
assign bitcast_ln14_fu_1970_p1 = init_0_load_reg_3717;
assign conv3_udiv_cast_cast_fu_1642_p1 = conv3_udiv_cast;
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
assign grp_fu_1957_p_ce = 1'b1;
assign grp_fu_1957_p_din0 = grp_fu_1628_p0;
assign grp_fu_1957_p_din1 = grp_fu_1628_p1;
assign grp_fu_1957_p_opcode = 2'd0;
assign grp_fu_944_p_ce = 1'b1;
assign grp_fu_944_p_din0 = grp_fu_1624_p0;
assign grp_fu_944_p_din1 = grp_fu_1624_p1;
assign grp_fu_944_p_opcode = 2'd0;
assign init_0_address0 = zext_ln14_19_fu_1768_p1;
assign init_0_address1 = zext_ln9_fu_1672_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = zext_ln14_19_fu_1768_p1;
assign init_1_address1 = zext_ln9_fu_1672_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign init_2_address0 = zext_ln14_19_fu_1768_p1;
assign init_2_address1 = zext_ln9_fu_1672_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_2_ce1 = init_2_ce1_local;
assign init_3_address0 = zext_ln14_19_fu_1768_p1;
assign init_3_address1 = zext_ln9_fu_1672_p1;
assign init_3_ce0 = init_3_ce0_local;
assign init_3_ce1 = init_3_ce1_local;
assign init_4_address0 = zext_ln14_19_fu_1768_p1;
assign init_4_address1 = zext_ln9_fu_1672_p1;
assign init_4_ce0 = init_4_ce0_local;
assign init_4_ce1 = init_4_ce1_local;
assign init_5_address0 = zext_ln14_19_fu_1768_p1;
assign init_5_address1 = zext_ln9_fu_1672_p1;
assign init_5_ce0 = init_5_ce0_local;
assign init_5_ce1 = init_5_ce1_local;
assign init_6_address0 = zext_ln14_19_fu_1768_p1;
assign init_6_address1 = zext_ln9_fu_1672_p1;
assign init_6_ce0 = init_6_ce0_local;
assign init_6_ce1 = init_6_ce1_local;
assign init_7_address0 = zext_ln14_19_fu_1768_p1;
assign init_7_address1 = zext_ln9_fu_1672_p1;
assign init_7_ce0 = init_7_ce0_local;
assign init_7_ce1 = init_7_ce1_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_1637;
assign llike_1_we0 = llike_1_we0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_1632;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_1_fu_1684_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign lshr_ln9_fu_1662_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign or_ln14_10_fu_1760_p3 = {{tmp_96_fu_1750_p4}, {1'd1}};
assign or_ln14_11_fu_3401_p4 = {{{tmp_96_reg_3626_pp0_iter1_reg}, {1'd1}}, {tmp_97_reg_4104_pp0_iter1_reg}};
assign or_ln14_12_fu_2531_p5 = {{{{tmp_96_reg_3626}, {1'd1}}, {tmp_18_fu_2524_p3}}, {conv3_udiv}};
assign or_ln14_13_fu_2553_p5 = {{{{tmp_96_reg_3626}, {1'd1}}, {tmp_97_fu_2515_p4}}, {4'd8}};
assign or_ln14_14_fu_3415_p5 = {{{{tmp_96_reg_3626_pp0_iter1_reg}, {1'd1}}, {tmp_18_reg_4109_pp0_iter1_reg}}, {1'd1}};
assign or_ln14_15_fu_2731_p5 = {{{{tmp_96_reg_3626}, {1'd1}}, {tmp_18_reg_4109}}, {5'd16}};
assign or_ln14_16_fu_2758_p5 = {{{{tmp_96_reg_3626}, {1'd1}}, {tmp_18_reg_4109}}, {5'd24}};
assign or_ln14_17_fu_3431_p4 = {{{tmp_96_reg_3626_pp0_iter1_reg}, {2'd3}}, {tmp_17_reg_3902_pp0_iter1_reg}};
assign or_ln14_18_fu_2935_p4 = {{{tmp_96_reg_3626}, {2'd3}}, {conv3_udiv}};
assign or_ln14_19_fu_2955_p5 = {{{{tmp_96_reg_3626}, {2'd3}}, {tmp_17_reg_3902}}, {4'd8}};
assign or_ln14_1_fu_1724_p3 = {{lshr_ln9_1_fu_1684_p4}, {4'd8}};
assign or_ln14_20_fu_3445_p3 = {{tmp_96_reg_3626_pp0_iter2_reg}, {3'd7}};
assign or_ln14_21_fu_3132_p3 = {{tmp_96_reg_3626}, {7'd112}};
assign or_ln14_22_fu_3164_p3 = {{tmp_96_reg_3626}, {7'd120}};
assign or_ln14_2_fu_3361_p3 = {{tmp_49_reg_3539_pp0_iter1_reg}, {1'd1}};
assign or_ln14_3_fu_1922_p3 = {{tmp_49_reg_3539}, {5'd16}};
assign or_ln14_4_fu_1946_p3 = {{tmp_49_reg_3539}, {5'd24}};
assign or_ln14_5_fu_3374_p4 = {{{lshr_ln9_reg_3519_pp0_iter1_reg}, {1'd1}}, {tmp_17_reg_3902_pp0_iter1_reg}};
assign or_ln14_6_fu_2123_p4 = {{{lshr_ln9_reg_3519}, {1'd1}}, {conv3_udiv}};
assign or_ln14_7_fu_2143_p5 = {{{{lshr_ln9_reg_3519}, {1'd1}}, {tmp_17_fu_2116_p3}}, {4'd8}};
assign or_ln14_8_fu_3388_p3 = {{lshr_ln9_reg_3519_pp0_iter1_reg}, {2'd3}};
assign or_ln14_9_fu_2317_p3 = {{lshr_ln9_reg_3519}, {6'd48}};
assign or_ln14_s_fu_2341_p3 = {{lshr_ln9_reg_3519}, {6'd56}};
assign or_ln_fu_1704_p3 = {{tmp_49_fu_1694_p4}, {conv3_udiv}};
assign tmp_10_fu_2896_p10 = emission_4_q0;
assign tmp_10_fu_2896_p12 = emission_5_q0;
assign tmp_10_fu_2896_p14 = emission_6_q0;
assign tmp_10_fu_2896_p16 = emission_7_q0;
assign tmp_10_fu_2896_p17 = 'bx;
assign tmp_10_fu_2896_p2 = emission_0_q0;
assign tmp_10_fu_2896_p4 = emission_1_q0;
assign tmp_10_fu_2896_p6 = emission_2_q0;
assign tmp_10_fu_2896_p8 = emission_3_q0;
assign tmp_11_fu_3022_p10 = emission_4_q1;
assign tmp_11_fu_3022_p12 = emission_5_q1;
assign tmp_11_fu_3022_p14 = emission_6_q1;
assign tmp_11_fu_3022_p16 = emission_7_q1;
assign tmp_11_fu_3022_p17 = 'bx;
assign tmp_11_fu_3022_p2 = emission_0_q1;
assign tmp_11_fu_3022_p4 = emission_1_q1;
assign tmp_11_fu_3022_p6 = emission_2_q1;
assign tmp_11_fu_3022_p8 = emission_3_q1;
assign tmp_12_fu_3093_p10 = emission_4_q0;
assign tmp_12_fu_3093_p12 = emission_5_q0;
assign tmp_12_fu_3093_p14 = emission_6_q0;
assign tmp_12_fu_3093_p16 = emission_7_q0;
assign tmp_12_fu_3093_p17 = 'bx;
assign tmp_12_fu_3093_p2 = emission_0_q0;
assign tmp_12_fu_3093_p4 = emission_1_q0;
assign tmp_12_fu_3093_p6 = emission_2_q0;
assign tmp_12_fu_3093_p8 = emission_3_q0;
assign tmp_13_fu_3230_p10 = emission_4_q1;
assign tmp_13_fu_3230_p12 = emission_5_q1;
assign tmp_13_fu_3230_p14 = emission_6_q1;
assign tmp_13_fu_3230_p16 = emission_7_q1;
assign tmp_13_fu_3230_p17 = 'bx;
assign tmp_13_fu_3230_p2 = emission_0_q1;
assign tmp_13_fu_3230_p4 = emission_1_q1;
assign tmp_13_fu_3230_p6 = emission_2_q1;
assign tmp_13_fu_3230_p8 = emission_3_q1;
assign tmp_14_fu_3309_p10 = emission_4_q0;
assign tmp_14_fu_3309_p12 = emission_5_q0;
assign tmp_14_fu_3309_p14 = emission_6_q0;
assign tmp_14_fu_3309_p16 = emission_7_q0;
assign tmp_14_fu_3309_p17 = 'bx;
assign tmp_14_fu_3309_p2 = emission_0_q0;
assign tmp_14_fu_3309_p4 = emission_1_q0;
assign tmp_14_fu_3309_p6 = emission_2_q0;
assign tmp_14_fu_3309_p8 = emission_3_q0;
assign tmp_17_fu_2116_p3 = s_1_reg_3507[32'd1];
assign tmp_18_fu_2524_p3 = s_1_reg_3507[32'd2];
assign tmp_1_fu_1883_p10 = emission_4_q0;
assign tmp_1_fu_1883_p12 = emission_5_q0;
assign tmp_1_fu_1883_p14 = emission_6_q0;
assign tmp_1_fu_1883_p16 = emission_7_q0;
assign tmp_1_fu_1883_p17 = 'bx;
assign tmp_1_fu_1883_p2 = emission_0_q0;
assign tmp_1_fu_1883_p4 = emission_1_q0;
assign tmp_1_fu_1883_p6 = emission_2_q0;
assign tmp_1_fu_1883_p8 = emission_3_q0;
assign tmp_2_fu_2006_p10 = emission_4_q1;
assign tmp_2_fu_2006_p12 = emission_5_q1;
assign tmp_2_fu_2006_p14 = emission_6_q1;
assign tmp_2_fu_2006_p16 = emission_7_q1;
assign tmp_2_fu_2006_p17 = 'bx;
assign tmp_2_fu_2006_p2 = emission_0_q1;
assign tmp_2_fu_2006_p4 = emission_1_q1;
assign tmp_2_fu_2006_p6 = emission_2_q1;
assign tmp_2_fu_2006_p8 = emission_3_q1;
assign tmp_3_fu_2077_p10 = emission_4_q0;
assign tmp_3_fu_2077_p12 = emission_5_q0;
assign tmp_3_fu_2077_p14 = emission_6_q0;
assign tmp_3_fu_2077_p16 = emission_7_q0;
assign tmp_3_fu_2077_p17 = 'bx;
assign tmp_3_fu_2077_p2 = emission_0_q0;
assign tmp_3_fu_2077_p4 = emission_1_q0;
assign tmp_3_fu_2077_p6 = emission_2_q0;
assign tmp_3_fu_2077_p8 = emission_3_q0;
assign tmp_49_fu_1694_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_4_fu_2207_p10 = emission_4_q1;
assign tmp_4_fu_2207_p12 = emission_5_q1;
assign tmp_4_fu_2207_p14 = emission_6_q1;
assign tmp_4_fu_2207_p16 = emission_7_q1;
assign tmp_4_fu_2207_p17 = 'bx;
assign tmp_4_fu_2207_p2 = emission_0_q1;
assign tmp_4_fu_2207_p4 = emission_1_q1;
assign tmp_4_fu_2207_p6 = emission_2_q1;
assign tmp_4_fu_2207_p8 = emission_3_q1;
assign tmp_5_fu_2278_p10 = emission_4_q0;
assign tmp_5_fu_2278_p12 = emission_5_q0;
assign tmp_5_fu_2278_p14 = emission_6_q0;
assign tmp_5_fu_2278_p16 = emission_7_q0;
assign tmp_5_fu_2278_p17 = 'bx;
assign tmp_5_fu_2278_p2 = emission_0_q0;
assign tmp_5_fu_2278_p4 = emission_1_q0;
assign tmp_5_fu_2278_p6 = emission_2_q0;
assign tmp_5_fu_2278_p8 = emission_3_q0;
assign tmp_6_fu_2405_p10 = emission_4_q1;
assign tmp_6_fu_2405_p12 = emission_5_q1;
assign tmp_6_fu_2405_p14 = emission_6_q1;
assign tmp_6_fu_2405_p16 = emission_7_q1;
assign tmp_6_fu_2405_p17 = 'bx;
assign tmp_6_fu_2405_p2 = emission_0_q1;
assign tmp_6_fu_2405_p4 = emission_1_q1;
assign tmp_6_fu_2405_p6 = emission_2_q1;
assign tmp_6_fu_2405_p8 = emission_3_q1;
assign tmp_7_fu_2476_p10 = emission_4_q0;
assign tmp_7_fu_2476_p12 = emission_5_q0;
assign tmp_7_fu_2476_p14 = emission_6_q0;
assign tmp_7_fu_2476_p16 = emission_7_q0;
assign tmp_7_fu_2476_p17 = 'bx;
assign tmp_7_fu_2476_p2 = emission_0_q0;
assign tmp_7_fu_2476_p4 = emission_1_q0;
assign tmp_7_fu_2476_p6 = emission_2_q0;
assign tmp_7_fu_2476_p8 = emission_3_q0;
assign tmp_8_fu_2621_p10 = emission_4_q1;
assign tmp_8_fu_2621_p12 = emission_5_q1;
assign tmp_8_fu_2621_p14 = emission_6_q1;
assign tmp_8_fu_2621_p16 = emission_7_q1;
assign tmp_8_fu_2621_p17 = 'bx;
assign tmp_8_fu_2621_p2 = emission_0_q1;
assign tmp_8_fu_2621_p4 = emission_1_q1;
assign tmp_8_fu_2621_p6 = emission_2_q1;
assign tmp_8_fu_2621_p8 = emission_3_q1;
assign tmp_96_fu_1750_p4 = {{ap_sig_allocacmp_s_1[5:4]}};
assign tmp_97_fu_2515_p4 = {{s_1_reg_3507[2:1]}};
assign tmp_9_fu_2692_p10 = emission_4_q0;
assign tmp_9_fu_2692_p12 = emission_5_q0;
assign tmp_9_fu_2692_p14 = emission_6_q0;
assign tmp_9_fu_2692_p16 = emission_7_q0;
assign tmp_9_fu_2692_p17 = 'bx;
assign tmp_9_fu_2692_p2 = emission_0_q0;
assign tmp_9_fu_2692_p4 = emission_1_q0;
assign tmp_9_fu_2692_p6 = emission_2_q0;
assign tmp_9_fu_2692_p8 = emission_3_q0;
assign tmp_fu_1812_p10 = emission_4_q1;
assign tmp_fu_1812_p12 = emission_5_q1;
assign tmp_fu_1812_p14 = emission_6_q1;
assign tmp_fu_1812_p16 = emission_7_q1;
assign tmp_fu_1812_p17 = 'bx;
assign tmp_fu_1812_p2 = emission_0_q1;
assign tmp_fu_1812_p4 = emission_1_q1;
assign tmp_fu_1812_p6 = emission_2_q1;
assign tmp_fu_1812_p8 = emission_3_q1;
assign tmp_s_fu_2825_p10 = emission_4_q1;
assign tmp_s_fu_2825_p12 = emission_5_q1;
assign tmp_s_fu_2825_p14 = emission_6_q1;
assign tmp_s_fu_2825_p16 = emission_7_q1;
assign tmp_s_fu_2825_p17 = 'bx;
assign tmp_s_fu_2825_p2 = emission_0_q1;
assign tmp_s_fu_2825_p4 = emission_1_q1;
assign tmp_s_fu_2825_p6 = emission_2_q1;
assign tmp_s_fu_2825_p8 = emission_3_q1;
assign zext_ln14_10_fu_2746_p1 = add_ln14_7_fu_2741_p2;
assign zext_ln14_11_fu_2773_p1 = add_ln14_8_fu_2768_p2;
assign zext_ln14_12_fu_2943_p1 = or_ln14_18_fu_2935_p4;
assign zext_ln14_13_fu_2970_p1 = add_ln14_9_fu_2965_p2;
assign zext_ln14_14_fu_3144_p1 = add_ln14_10_fu_3139_p2;
assign zext_ln14_15_fu_3176_p1 = add_ln14_11_fu_3171_p2;
assign zext_ln14_16_fu_3368_p1 = or_ln14_2_fu_3361_p3;
assign zext_ln14_17_fu_3382_p1 = or_ln14_5_fu_3374_p4;
assign zext_ln14_18_fu_3395_p1 = or_ln14_8_fu_3388_p3;
assign zext_ln14_19_fu_1768_p1 = or_ln14_10_fu_1760_p3;
assign zext_ln14_1_fu_1738_p1 = add_ln14_fu_1732_p2;
assign zext_ln14_20_fu_3409_p1 = or_ln14_11_fu_3401_p4;
assign zext_ln14_21_fu_3425_p1 = or_ln14_14_fu_3415_p5;
assign zext_ln14_22_fu_3439_p1 = or_ln14_17_fu_3431_p4;
assign zext_ln14_23_fu_3452_p1 = or_ln14_20_fu_3445_p3;
assign zext_ln14_2_fu_1934_p1 = add_ln14_1_fu_1929_p2;
assign zext_ln14_3_fu_1958_p1 = add_ln14_2_fu_1953_p2;
assign zext_ln14_4_fu_2131_p1 = or_ln14_6_fu_2123_p4;
assign zext_ln14_5_fu_2159_p1 = add_ln14_3_fu_2154_p2;
assign zext_ln14_6_fu_2329_p1 = add_ln14_4_fu_2324_p2;
assign zext_ln14_7_fu_2353_p1 = add_ln14_5_fu_2348_p2;
assign zext_ln14_8_fu_2541_p1 = or_ln14_12_fu_2531_p5;
assign zext_ln14_9_fu_2569_p1 = add_ln14_6_fu_2564_p2;
assign zext_ln14_fu_1712_p1 = or_ln_fu_1704_p3;
assign zext_ln9_1_fu_3356_p1 = lshr_ln9_1_reg_3529_pp0_iter1_reg;
assign zext_ln9_fu_1672_p1 = lshr_ln9_fu_1662_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_3492[8:5] <= 4'b0000;
end
endmodule 