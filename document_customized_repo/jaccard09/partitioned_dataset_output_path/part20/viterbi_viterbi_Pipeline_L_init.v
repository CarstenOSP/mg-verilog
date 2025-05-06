
module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,empty_9,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,empty,conv3_udiv_cast,conv3_udiv,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,init_2_address0,init_2_ce0,init_2_q0,init_2_address1,init_2_ce1,init_2_q1,init_3_address0,init_3_ce0,init_3_q0,init_3_address1,init_3_ce1,init_3_q1,add6_15130_out,add6_15130_out_ap_vld,add6_14128_out,add6_14128_out_ap_vld,add6_13126_out,add6_13126_out_ap_vld,add6_12124_out,add6_12124_out_ap_vld,add6_11122_out,add6_11122_out_ap_vld,add6_10120_out,add6_10120_out_ap_vld,add6_9118_out,add6_9118_out_ap_vld,add6_8116_out,add6_8116_out_ap_vld,add6_7114_out,add6_7114_out_ap_vld,add6_6112_out,add6_6112_out_ap_vld,add6_5110_out,add6_5110_out_ap_vld,add6_4108_out,add6_4108_out_ap_vld,add6_3106_out,add6_3106_out_ap_vld,add6_2104_out,add6_2104_out_ap_vld,add6_1102_out,add6_1102_out_ap_vld,add6100_out,add6100_out_ap_vld,add6_1598_out,add6_1598_out_ap_vld,add6_1496_out,add6_1496_out_ap_vld,add6_1394_out,add6_1394_out_ap_vld,add6_1292_out,add6_1292_out_ap_vld,add6_1190_out,add6_1190_out_ap_vld,add6_1088_out,add6_1088_out_ap_vld,add6_986_out,add6_986_out_ap_vld,add6_884_out,add6_884_out_ap_vld,add6_782_out,add6_782_out_ap_vld,add6_680_out,add6_680_out_ap_vld,add6_578_out,add6_578_out_ap_vld,add6_476_out,add6_476_out_ap_vld,add6_374_out,add6_374_out_ap_vld,add6_272_out,add6_272_out_ap_vld,add6_170_out,add6_170_out_ap_vld,add668_out,add668_out_ap_vld,add6_1566_out,add6_1566_out_ap_vld,add6_1464_out,add6_1464_out_ap_vld,add6_1362_out,add6_1362_out_ap_vld,add6_1260_out,add6_1260_out_ap_vld,add6_1158_out,add6_1158_out_ap_vld,add6_1056_out,add6_1056_out_ap_vld,add6_954_out,add6_954_out_ap_vld,add6_852_out,add6_852_out_ap_vld,add6_750_out,add6_750_out_ap_vld,add6_648_out,add6_648_out_ap_vld,add6_546_out,add6_546_out_ap_vld,add6_444_out,add6_444_out_ap_vld,add6_342_out,add6_342_out_ap_vld,add6_240_out,add6_240_out_ap_vld,add6_138_out,add6_138_out_ap_vld,add636_out,add636_out_ap_vld,add6_1534_out,add6_1534_out_ap_vld,add6_1432_out,add6_1432_out_ap_vld,add6_1330_out,add6_1330_out_ap_vld,add6_1228_out,add6_1228_out_ap_vld,add6_1126_out,add6_1126_out_ap_vld,add6_1024_out,add6_1024_out_ap_vld,add6_922_out,add6_922_out_ap_vld,add6_820_out,add6_820_out_ap_vld,add6_718_out,add6_718_out_ap_vld,add6_616_out,add6_616_out_ap_vld,add6_514_out,add6_514_out_ap_vld,add6_412_out,add6_412_out_ap_vld,add6_310_out,add6_310_out_ap_vld,add6_28_out,add6_28_out_ap_vld,add6_16_out,add6_16_out_ap_vld,add61_out,add61_out_ap_vld,grp_fu_4102_p_din0,grp_fu_4102_p_din1,grp_fu_4102_p_opcode,grp_fu_4102_p_dout0,grp_fu_4102_p_ce,grp_fu_7392_p_din0,grp_fu_7392_p_din1,grp_fu_7392_p_opcode,grp_fu_7392_p_dout0,grp_fu_7392_p_ce);  
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
output  [3:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [3:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
input  [5:0] empty_9;
output  [9:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [9:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [9:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [9:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
output  [9:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [9:0] emission_2_address1;
output   emission_2_ce1;
input  [63:0] emission_2_q1;
output  [9:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
output  [9:0] emission_3_address1;
output   emission_3_ce1;
input  [63:0] emission_3_q1;
input  [1:0] empty;
input  [5:0] conv3_udiv_cast;
input  [5:0] conv3_udiv;
output  [3:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [3:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
output  [3:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [3:0] init_2_address1;
output   init_2_ce1;
input  [63:0] init_2_q1;
output  [3:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [3:0] init_3_address1;
output   init_3_ce1;
input  [63:0] init_3_q1;
output  [63:0] add6_15130_out;
output   add6_15130_out_ap_vld;
output  [63:0] add6_14128_out;
output   add6_14128_out_ap_vld;
output  [63:0] add6_13126_out;
output   add6_13126_out_ap_vld;
output  [63:0] add6_12124_out;
output   add6_12124_out_ap_vld;
output  [63:0] add6_11122_out;
output   add6_11122_out_ap_vld;
output  [63:0] add6_10120_out;
output   add6_10120_out_ap_vld;
output  [63:0] add6_9118_out;
output   add6_9118_out_ap_vld;
output  [63:0] add6_8116_out;
output   add6_8116_out_ap_vld;
output  [63:0] add6_7114_out;
output   add6_7114_out_ap_vld;
output  [63:0] add6_6112_out;
output   add6_6112_out_ap_vld;
output  [63:0] add6_5110_out;
output   add6_5110_out_ap_vld;
output  [63:0] add6_4108_out;
output   add6_4108_out_ap_vld;
output  [63:0] add6_3106_out;
output   add6_3106_out_ap_vld;
output  [63:0] add6_2104_out;
output   add6_2104_out_ap_vld;
output  [63:0] add6_1102_out;
output   add6_1102_out_ap_vld;
output  [63:0] add6100_out;
output   add6100_out_ap_vld;
output  [63:0] add6_1598_out;
output   add6_1598_out_ap_vld;
output  [63:0] add6_1496_out;
output   add6_1496_out_ap_vld;
output  [63:0] add6_1394_out;
output   add6_1394_out_ap_vld;
output  [63:0] add6_1292_out;
output   add6_1292_out_ap_vld;
output  [63:0] add6_1190_out;
output   add6_1190_out_ap_vld;
output  [63:0] add6_1088_out;
output   add6_1088_out_ap_vld;
output  [63:0] add6_986_out;
output   add6_986_out_ap_vld;
output  [63:0] add6_884_out;
output   add6_884_out_ap_vld;
output  [63:0] add6_782_out;
output   add6_782_out_ap_vld;
output  [63:0] add6_680_out;
output   add6_680_out_ap_vld;
output  [63:0] add6_578_out;
output   add6_578_out_ap_vld;
output  [63:0] add6_476_out;
output   add6_476_out_ap_vld;
output  [63:0] add6_374_out;
output   add6_374_out_ap_vld;
output  [63:0] add6_272_out;
output   add6_272_out_ap_vld;
output  [63:0] add6_170_out;
output   add6_170_out_ap_vld;
output  [63:0] add668_out;
output   add668_out_ap_vld;
output  [63:0] add6_1566_out;
output   add6_1566_out_ap_vld;
output  [63:0] add6_1464_out;
output   add6_1464_out_ap_vld;
output  [63:0] add6_1362_out;
output   add6_1362_out_ap_vld;
output  [63:0] add6_1260_out;
output   add6_1260_out_ap_vld;
output  [63:0] add6_1158_out;
output   add6_1158_out_ap_vld;
output  [63:0] add6_1056_out;
output   add6_1056_out_ap_vld;
output  [63:0] add6_954_out;
output   add6_954_out_ap_vld;
output  [63:0] add6_852_out;
output   add6_852_out_ap_vld;
output  [63:0] add6_750_out;
output   add6_750_out_ap_vld;
output  [63:0] add6_648_out;
output   add6_648_out_ap_vld;
output  [63:0] add6_546_out;
output   add6_546_out_ap_vld;
output  [63:0] add6_444_out;
output   add6_444_out_ap_vld;
output  [63:0] add6_342_out;
output   add6_342_out_ap_vld;
output  [63:0] add6_240_out;
output   add6_240_out_ap_vld;
output  [63:0] add6_138_out;
output   add6_138_out_ap_vld;
output  [63:0] add636_out;
output   add636_out_ap_vld;
output  [63:0] add6_1534_out;
output   add6_1534_out_ap_vld;
output  [63:0] add6_1432_out;
output   add6_1432_out_ap_vld;
output  [63:0] add6_1330_out;
output   add6_1330_out_ap_vld;
output  [63:0] add6_1228_out;
output   add6_1228_out_ap_vld;
output  [63:0] add6_1126_out;
output   add6_1126_out_ap_vld;
output  [63:0] add6_1024_out;
output   add6_1024_out_ap_vld;
output  [63:0] add6_922_out;
output   add6_922_out_ap_vld;
output  [63:0] add6_820_out;
output   add6_820_out_ap_vld;
output  [63:0] add6_718_out;
output   add6_718_out_ap_vld;
output  [63:0] add6_616_out;
output   add6_616_out_ap_vld;
output  [63:0] add6_514_out;
output   add6_514_out_ap_vld;
output  [63:0] add6_412_out;
output   add6_412_out_ap_vld;
output  [63:0] add6_310_out;
output   add6_310_out_ap_vld;
output  [63:0] add6_28_out;
output   add6_28_out_ap_vld;
output  [63:0] add6_16_out;
output   add6_16_out_ap_vld;
output  [63:0] add61_out;
output   add61_out_ap_vld;
output  [63:0] grp_fu_4102_p_din0;
output  [63:0] grp_fu_4102_p_din1;
output  [1:0] grp_fu_4102_p_opcode;
input  [63:0] grp_fu_4102_p_dout0;
output   grp_fu_4102_p_ce;
output  [63:0] grp_fu_7392_p_din0;
output  [63:0] grp_fu_7392_p_din1;
output  [1:0] grp_fu_7392_p_opcode;
input  [63:0] grp_fu_7392_p_dout0;
output   grp_fu_7392_p_ce;
reg ap_idle;
reg add6_15130_out_ap_vld;
reg add6_14128_out_ap_vld;
reg add6_13126_out_ap_vld;
reg add6_12124_out_ap_vld;
reg add6_11122_out_ap_vld;
reg add6_10120_out_ap_vld;
reg add6_9118_out_ap_vld;
reg add6_8116_out_ap_vld;
reg add6_7114_out_ap_vld;
reg add6_6112_out_ap_vld;
reg add6_5110_out_ap_vld;
reg add6_4108_out_ap_vld;
reg add6_3106_out_ap_vld;
reg add6_2104_out_ap_vld;
reg add6_1102_out_ap_vld;
reg add6100_out_ap_vld;
reg add6_1598_out_ap_vld;
reg add6_1496_out_ap_vld;
reg add6_1394_out_ap_vld;
reg add6_1292_out_ap_vld;
reg add6_1190_out_ap_vld;
reg add6_1088_out_ap_vld;
reg add6_986_out_ap_vld;
reg add6_884_out_ap_vld;
reg add6_782_out_ap_vld;
reg add6_680_out_ap_vld;
reg add6_578_out_ap_vld;
reg add6_476_out_ap_vld;
reg add6_374_out_ap_vld;
reg add6_272_out_ap_vld;
reg add6_170_out_ap_vld;
reg add668_out_ap_vld;
reg add6_1566_out_ap_vld;
reg add6_1464_out_ap_vld;
reg add6_1362_out_ap_vld;
reg add6_1260_out_ap_vld;
reg add6_1158_out_ap_vld;
reg add6_1056_out_ap_vld;
reg add6_954_out_ap_vld;
reg add6_852_out_ap_vld;
reg add6_750_out_ap_vld;
reg add6_648_out_ap_vld;
reg add6_546_out_ap_vld;
reg add6_444_out_ap_vld;
reg add6_342_out_ap_vld;
reg add6_240_out_ap_vld;
reg add6_138_out_ap_vld;
reg add636_out_ap_vld;
reg add6_1534_out_ap_vld;
reg add6_1432_out_ap_vld;
reg add6_1330_out_ap_vld;
reg add6_1228_out_ap_vld;
reg add6_1126_out_ap_vld;
reg add6_1024_out_ap_vld;
reg add6_922_out_ap_vld;
reg add6_820_out_ap_vld;
reg add6_718_out_ap_vld;
reg add6_616_out_ap_vld;
reg add6_514_out_ap_vld;
reg add6_412_out_ap_vld;
reg add6_310_out_ap_vld;
reg add6_28_out_ap_vld;
reg add6_16_out_ap_vld;
reg add61_out_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_161_reg_3917;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1716;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_1720;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] conv3_udiv_cast_cast_fu_1724_p1;
reg   [9:0] conv3_udiv_cast_cast_reg_3894;
reg   [6:0] s_1_reg_3909;
wire   [5:0] trunc_ln13_fu_1748_p1;
reg   [5:0] trunc_ln13_reg_3921;
reg   [5:0] trunc_ln13_reg_3921_pp0_iter1_reg;
wire   [3:0] lshr_ln9_fu_1752_p4;
reg   [3:0] lshr_ln9_reg_3925;
wire   [1:0] tmp_116_fu_1770_p4;
reg   [1:0] tmp_116_reg_3936;
wire   [2:0] tmp_222_fu_1828_p4;
reg   [2:0] tmp_222_reg_3991;
wire   [63:0] tmp_fu_1870_p11;
reg   [63:0] tmp_reg_4033;
wire   [63:0] tmp_1_fu_1909_p11;
reg   [63:0] tmp_1_reg_4038;
wire   [0:0] tmp_163_fu_1972_p3;
reg   [0:0] tmp_163_reg_4083;
reg   [63:0] init_0_load_1_reg_4089;
reg   [63:0] init_1_load_1_reg_4104;
reg   [63:0] init_2_load_reg_4119;
reg   [63:0] init_2_load_1_reg_4124;
reg   [63:0] init_3_load_reg_4139;
reg   [63:0] init_3_load_1_reg_4144;
wire   [63:0] bitcast_ln14_fu_2011_p1;
wire   [63:0] tmp_2_fu_2032_p11;
reg   [63:0] tmp_2_reg_4164;
wire   [63:0] tmp_3_fu_2071_p11;
reg   [63:0] tmp_3_reg_4169;
wire   [0:0] tmp_162_fu_2110_p3;
reg   [0:0] tmp_162_reg_4194;
reg   [63:0] init_0_load_3_reg_4219;
wire   [63:0] bitcast_ln14_56_fu_2141_p1;
reg   [63:0] init_1_load_3_reg_4229;
reg   [63:0] init_2_load_2_reg_4234;
reg   [63:0] init_2_load_3_reg_4239;
reg   [63:0] init_3_load_2_reg_4244;
reg   [63:0] init_3_load_3_reg_4249;
wire   [63:0] tmp_4_fu_2162_p11;
reg   [63:0] tmp_4_reg_4254;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] tmp_5_fu_2201_p11;
reg   [63:0] tmp_5_reg_4259;
wire   [63:0] bitcast_ln14_64_fu_2264_p1;
wire   [63:0] bitcast_ln14_72_fu_2268_p1;
wire   [63:0] tmp_6_fu_2288_p11;
reg   [63:0] tmp_6_reg_4314;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] tmp_7_fu_2327_p11;
reg   [63:0] tmp_7_reg_4319;
wire   [63:0] bitcast_ln14_49_fu_2403_p1;
wire   [63:0] bitcast_ln14_57_fu_2407_p1;
wire   [63:0] tmp_8_fu_2437_p11;
reg   [63:0] tmp_8_reg_4374;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] tmp_9_fu_2476_p11;
reg   [63:0] tmp_9_reg_4379;
wire   [63:0] bitcast_ln14_65_fu_2545_p1;
wire   [63:0] bitcast_ln14_73_fu_2549_p1;
wire   [63:0] tmp_s_fu_2569_p11;
reg   [63:0] tmp_s_reg_4434;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] tmp_10_fu_2608_p11;
reg   [63:0] tmp_10_reg_4439;
wire   [63:0] bitcast_ln14_50_fu_2631_p1;
wire   [63:0] bitcast_ln14_58_fu_2652_p1;
wire   [63:0] tmp_11_fu_2696_p11;
reg   [63:0] tmp_11_reg_4494;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] tmp_12_fu_2735_p11;
reg   [63:0] tmp_12_reg_4499;
wire   [63:0] bitcast_ln14_66_fu_2758_p1;
wire   [63:0] bitcast_ln14_74_fu_2782_p1;
wire   [63:0] bitcast_ln14_51_fu_2806_p1;
wire   [63:0] bitcast_ln14_59_fu_2810_p1;
wire   [63:0] tmp_13_fu_2830_p11;
reg   [63:0] tmp_13_reg_4564;
wire   [63:0] tmp_14_fu_2869_p11;
reg   [63:0] tmp_14_reg_4569;
wire   [63:0] bitcast_ln14_67_fu_2892_p1;
wire   [63:0] bitcast_ln14_75_fu_2896_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln9_fu_1762_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1788_p1;
wire   [63:0] zext_ln14_1_fu_1820_p1;
wire   [63:0] zext_ln14_16_fu_1846_p1;
wire   [63:0] zext_ln14_2_fu_1944_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1964_p1;
wire   [63:0] zext_ln14_17_fu_1988_p1;
wire   [63:0] zext_ln14_19_fu_2003_p1;
wire   [63:0] zext_ln14_4_fu_2102_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_2133_p1;
wire   [63:0] zext_ln14_6_fu_2236_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_2256_p1;
wire   [63:0] zext_ln14_8_fu_2362_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_9_fu_2395_p1;
wire   [63:0] zext_ln14_10_fu_2514_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_11_fu_2537_p1;
wire   [63:0] zext_ln14_12_fu_2644_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_13_fu_2672_p1;
wire   [63:0] zext_ln14_14_fu_2774_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_15_fu_2798_p1;
reg   [6:0] s_fu_264;
wire   [6:0] add_ln13_fu_2411_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg   [63:0] add61_fu_268;
reg    ap_predicate_pred932_state10;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [63:0] add6_16_fu_272;
reg   [63:0] add6_28_fu_276;
reg    ap_predicate_pred956_state11;
reg   [63:0] add6_310_fu_280;
reg   [63:0] add6_412_fu_284;
reg    ap_predicate_pred956_state12;
reg   [63:0] add6_514_fu_288;
reg   [63:0] add6_616_fu_292;
reg    ap_predicate_pred956_state13;
reg   [63:0] add6_718_fu_296;
reg   [63:0] add6_820_fu_300;
reg    ap_predicate_pred956_state14;
reg   [63:0] add6_922_fu_304;
reg   [63:0] add6_1024_fu_308;
reg    ap_predicate_pred956_state15;
reg   [63:0] add6_1126_fu_312;
reg   [63:0] add6_1228_fu_316;
reg    ap_predicate_pred956_state16;
reg   [63:0] add6_1330_fu_320;
reg   [63:0] add6_1432_fu_324;
reg    ap_predicate_pred956_state17;
reg   [63:0] add6_1534_fu_328;
reg   [63:0] add636_fu_332;
reg    ap_predicate_pred1035_state10;
reg   [63:0] add6_138_fu_336;
reg   [63:0] add6_240_fu_340;
reg    ap_predicate_pred1045_state11;
reg   [63:0] add6_342_fu_344;
reg   [63:0] add6_444_fu_348;
reg    ap_predicate_pred1045_state12;
reg   [63:0] add6_546_fu_352;
reg   [63:0] add6_648_fu_356;
reg    ap_predicate_pred1045_state13;
reg   [63:0] add6_750_fu_360;
reg   [63:0] add6_852_fu_364;
reg    ap_predicate_pred1045_state14;
reg   [63:0] add6_954_fu_368;
reg   [63:0] add6_1056_fu_372;
reg    ap_predicate_pred1045_state15;
reg   [63:0] add6_1158_fu_376;
reg   [63:0] add6_1260_fu_380;
reg    ap_predicate_pred1045_state16;
reg   [63:0] add6_1362_fu_384;
reg   [63:0] add6_1464_fu_388;
reg    ap_predicate_pred1045_state17;
reg   [63:0] add6_1566_fu_392;
reg   [63:0] add668_fu_396;
reg    ap_predicate_pred1111_state10;
reg   [63:0] add6_170_fu_400;
reg   [63:0] add6_272_fu_404;
reg    ap_predicate_pred1121_state11;
reg   [63:0] add6_374_fu_408;
reg   [63:0] add6_476_fu_412;
reg    ap_predicate_pred1121_state12;
reg   [63:0] add6_578_fu_416;
reg   [63:0] add6_680_fu_420;
reg    ap_predicate_pred1121_state13;
reg   [63:0] add6_782_fu_424;
reg   [63:0] add6_884_fu_428;
reg    ap_predicate_pred1121_state14;
reg   [63:0] add6_986_fu_432;
reg   [63:0] add6_1088_fu_436;
reg    ap_predicate_pred1121_state15;
reg   [63:0] add6_1190_fu_440;
reg   [63:0] add6_1292_fu_444;
reg    ap_predicate_pred1121_state16;
reg   [63:0] add6_1394_fu_448;
reg   [63:0] add6_1496_fu_452;
reg    ap_predicate_pred1121_state17;
reg   [63:0] add6_1598_fu_456;
reg   [63:0] add6100_fu_460;
reg    ap_predicate_pred1190_state10;
reg   [63:0] add6_1102_fu_464;
reg   [63:0] add6_2104_fu_468;
reg    ap_predicate_pred1204_state11;
reg   [63:0] add6_3106_fu_472;
reg   [63:0] add6_4108_fu_476;
reg    ap_predicate_pred1204_state12;
reg   [63:0] add6_5110_fu_480;
reg   [63:0] add6_6112_fu_484;
reg    ap_predicate_pred1204_state13;
reg   [63:0] add6_7114_fu_488;
reg   [63:0] add6_8116_fu_492;
reg    ap_predicate_pred1204_state14;
reg   [63:0] add6_9118_fu_496;
reg   [63:0] add6_10120_fu_500;
reg    ap_predicate_pred1204_state15;
reg   [63:0] add6_11122_fu_504;
reg   [63:0] add6_12124_fu_508;
reg    ap_predicate_pred1204_state16;
reg   [63:0] add6_13126_fu_512;
reg   [63:0] add6_14128_fu_516;
reg    ap_predicate_pred1204_state17;
reg   [63:0] add6_15130_fu_520;
wire    ap_block_pp0_stage0_01001;
reg    init_0_ce1_local;
reg   [3:0] init_0_address1_local;
reg    init_0_ce0_local;
reg   [3:0] init_0_address0_local;
reg    emission_0_ce1_local;
reg   [9:0] emission_0_address1_local;
reg    emission_0_ce0_local;
reg   [9:0] emission_0_address0_local;
reg    emission_1_ce1_local;
reg   [9:0] emission_1_address1_local;
reg    emission_1_ce0_local;
reg   [9:0] emission_1_address0_local;
reg    emission_2_ce1_local;
reg   [9:0] emission_2_address1_local;
reg    emission_2_ce0_local;
reg   [9:0] emission_2_address0_local;
reg    emission_3_ce1_local;
reg   [9:0] emission_3_address1_local;
reg    emission_3_ce0_local;
reg   [9:0] emission_3_address0_local;
reg    init_1_ce1_local;
reg   [3:0] init_1_address1_local;
reg    init_1_ce0_local;
reg   [3:0] init_1_address0_local;
reg    init_2_ce1_local;
reg   [3:0] init_2_address1_local;
reg    init_2_ce0_local;
reg   [3:0] init_2_address0_local;
reg    init_3_ce1_local;
reg   [3:0] init_3_address1_local;
reg    init_3_ce0_local;
reg   [3:0] init_3_address0_local;
reg   [63:0] grp_fu_1708_p0;
reg   [63:0] grp_fu_1708_p1;
reg   [63:0] grp_fu_1712_p0;
reg   [63:0] grp_fu_1712_p1;
wire   [7:0] p_cast_fu_1728_p1;
wire   [9:0] or_ln_fu_1780_p3;
wire   [4:0] tmp_213_fu_1796_p4;
wire   [9:0] or_ln1_fu_1806_p3;
wire   [9:0] add_ln14_fu_1814_p2;
wire   [3:0] or_ln14_3_fu_1838_p3;
wire   [63:0] tmp_fu_1870_p2;
wire   [63:0] tmp_fu_1870_p4;
wire   [63:0] tmp_fu_1870_p6;
wire   [63:0] tmp_fu_1870_p8;
wire   [63:0] tmp_fu_1870_p9;
wire   [63:0] tmp_1_fu_1909_p2;
wire   [63:0] tmp_1_fu_1909_p4;
wire   [63:0] tmp_1_fu_1909_p6;
wire   [63:0] tmp_1_fu_1909_p8;
wire   [63:0] tmp_1_fu_1909_p9;
wire   [9:0] or_ln14_1_fu_1932_p3;
wire   [9:0] add_ln14_1_fu_1939_p2;
wire   [9:0] or_ln14_2_fu_1952_p3;
wire   [9:0] add_ln14_2_fu_1959_p2;
wire   [3:0] or_ln14_8_fu_1979_p4;
wire   [3:0] or_ln14_12_fu_1996_p3;
wire   [63:0] tmp_2_fu_2032_p2;
wire   [63:0] tmp_2_fu_2032_p4;
wire   [63:0] tmp_2_fu_2032_p6;
wire   [63:0] tmp_2_fu_2032_p8;
wire   [63:0] tmp_2_fu_2032_p9;
wire   [63:0] tmp_3_fu_2071_p2;
wire   [63:0] tmp_3_fu_2071_p4;
wire   [63:0] tmp_3_fu_2071_p6;
wire   [63:0] tmp_3_fu_2071_p8;
wire   [63:0] tmp_3_fu_2071_p9;
wire   [9:0] or_ln14_4_fu_2094_p4;
wire   [9:0] or_ln14_5_fu_2117_p5;
wire   [9:0] add_ln14_3_fu_2128_p2;
wire   [63:0] tmp_4_fu_2162_p2;
wire   [63:0] tmp_4_fu_2162_p4;
wire   [63:0] tmp_4_fu_2162_p6;
wire   [63:0] tmp_4_fu_2162_p8;
wire   [63:0] tmp_4_fu_2162_p9;
wire   [63:0] tmp_5_fu_2201_p2;
wire   [63:0] tmp_5_fu_2201_p4;
wire   [63:0] tmp_5_fu_2201_p6;
wire   [63:0] tmp_5_fu_2201_p8;
wire   [63:0] tmp_5_fu_2201_p9;
wire   [9:0] or_ln14_6_fu_2224_p3;
wire   [9:0] add_ln14_4_fu_2231_p2;
wire   [9:0] or_ln14_7_fu_2244_p3;
wire   [9:0] add_ln14_5_fu_2251_p2;
wire   [63:0] tmp_6_fu_2288_p2;
wire   [63:0] tmp_6_fu_2288_p4;
wire   [63:0] tmp_6_fu_2288_p6;
wire   [63:0] tmp_6_fu_2288_p8;
wire   [63:0] tmp_6_fu_2288_p9;
wire   [63:0] tmp_7_fu_2327_p2;
wire   [63:0] tmp_7_fu_2327_p4;
wire   [63:0] tmp_7_fu_2327_p6;
wire   [63:0] tmp_7_fu_2327_p8;
wire   [63:0] tmp_7_fu_2327_p9;
wire   [6:0] zext_ln14_18_fu_2350_p1;
wire   [9:0] or_ln14_9_fu_2353_p4;
wire   [1:0] tmp_223_fu_2370_p4;
wire   [9:0] or_ln14_s_fu_2379_p5;
wire   [9:0] add_ln14_6_fu_2390_p2;
wire   [63:0] tmp_8_fu_2437_p2;
wire   [63:0] tmp_8_fu_2437_p4;
wire   [63:0] tmp_8_fu_2437_p6;
wire   [63:0] tmp_8_fu_2437_p8;
wire   [63:0] tmp_8_fu_2437_p9;
wire   [63:0] tmp_9_fu_2476_p2;
wire   [63:0] tmp_9_fu_2476_p4;
wire   [63:0] tmp_9_fu_2476_p6;
wire   [63:0] tmp_9_fu_2476_p8;
wire   [63:0] tmp_9_fu_2476_p9;
wire   [9:0] or_ln14_10_fu_2499_p5;
wire   [9:0] add_ln14_7_fu_2509_p2;
wire   [9:0] or_ln14_11_fu_2522_p5;
wire   [9:0] add_ln14_8_fu_2532_p2;
wire   [63:0] tmp_s_fu_2569_p2;
wire   [63:0] tmp_s_fu_2569_p4;
wire   [63:0] tmp_s_fu_2569_p6;
wire   [63:0] tmp_s_fu_2569_p8;
wire   [63:0] tmp_s_fu_2569_p9;
wire   [63:0] tmp_10_fu_2608_p2;
wire   [63:0] tmp_10_fu_2608_p4;
wire   [63:0] tmp_10_fu_2608_p6;
wire   [63:0] tmp_10_fu_2608_p8;
wire   [63:0] tmp_10_fu_2608_p9;
wire   [9:0] or_ln14_13_fu_2636_p4;
wire   [9:0] or_ln14_14_fu_2657_p5;
wire   [9:0] add_ln14_9_fu_2667_p2;
wire   [63:0] tmp_11_fu_2696_p2;
wire   [63:0] tmp_11_fu_2696_p4;
wire   [63:0] tmp_11_fu_2696_p6;
wire   [63:0] tmp_11_fu_2696_p8;
wire   [63:0] tmp_11_fu_2696_p9;
wire   [63:0] tmp_12_fu_2735_p2;
wire   [63:0] tmp_12_fu_2735_p4;
wire   [63:0] tmp_12_fu_2735_p6;
wire   [63:0] tmp_12_fu_2735_p8;
wire   [63:0] tmp_12_fu_2735_p9;
wire   [9:0] or_ln14_15_fu_2762_p3;
wire   [9:0] add_ln14_10_fu_2769_p2;
wire   [9:0] or_ln14_16_fu_2786_p3;
wire   [9:0] add_ln14_11_fu_2793_p2;
wire   [63:0] tmp_13_fu_2830_p2;
wire   [63:0] tmp_13_fu_2830_p4;
wire   [63:0] tmp_13_fu_2830_p6;
wire   [63:0] tmp_13_fu_2830_p8;
wire   [63:0] tmp_13_fu_2830_p9;
wire   [63:0] tmp_14_fu_2869_p2;
wire   [63:0] tmp_14_fu_2869_p4;
wire   [63:0] tmp_14_fu_2869_p6;
wire   [63:0] tmp_14_fu_2869_p8;
wire   [63:0] tmp_14_fu_2869_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
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
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire   [1:0] tmp_fu_1870_p1;
wire   [1:0] tmp_fu_1870_p3;
wire  signed [1:0] tmp_fu_1870_p5;
wire  signed [1:0] tmp_fu_1870_p7;
wire   [1:0] tmp_1_fu_1909_p1;
wire   [1:0] tmp_1_fu_1909_p3;
wire  signed [1:0] tmp_1_fu_1909_p5;
wire  signed [1:0] tmp_1_fu_1909_p7;
wire   [1:0] tmp_2_fu_2032_p1;
wire   [1:0] tmp_2_fu_2032_p3;
wire  signed [1:0] tmp_2_fu_2032_p5;
wire  signed [1:0] tmp_2_fu_2032_p7;
wire   [1:0] tmp_3_fu_2071_p1;
wire   [1:0] tmp_3_fu_2071_p3;
wire  signed [1:0] tmp_3_fu_2071_p5;
wire  signed [1:0] tmp_3_fu_2071_p7;
wire   [1:0] tmp_4_fu_2162_p1;
wire   [1:0] tmp_4_fu_2162_p3;
wire  signed [1:0] tmp_4_fu_2162_p5;
wire  signed [1:0] tmp_4_fu_2162_p7;
wire   [1:0] tmp_5_fu_2201_p1;
wire   [1:0] tmp_5_fu_2201_p3;
wire  signed [1:0] tmp_5_fu_2201_p5;
wire  signed [1:0] tmp_5_fu_2201_p7;
wire   [1:0] tmp_6_fu_2288_p1;
wire   [1:0] tmp_6_fu_2288_p3;
wire  signed [1:0] tmp_6_fu_2288_p5;
wire  signed [1:0] tmp_6_fu_2288_p7;
wire   [1:0] tmp_7_fu_2327_p1;
wire   [1:0] tmp_7_fu_2327_p3;
wire  signed [1:0] tmp_7_fu_2327_p5;
wire  signed [1:0] tmp_7_fu_2327_p7;
wire   [1:0] tmp_8_fu_2437_p1;
wire   [1:0] tmp_8_fu_2437_p3;
wire  signed [1:0] tmp_8_fu_2437_p5;
wire  signed [1:0] tmp_8_fu_2437_p7;
wire   [1:0] tmp_9_fu_2476_p1;
wire   [1:0] tmp_9_fu_2476_p3;
wire  signed [1:0] tmp_9_fu_2476_p5;
wire  signed [1:0] tmp_9_fu_2476_p7;
wire   [1:0] tmp_s_fu_2569_p1;
wire   [1:0] tmp_s_fu_2569_p3;
wire  signed [1:0] tmp_s_fu_2569_p5;
wire  signed [1:0] tmp_s_fu_2569_p7;
wire   [1:0] tmp_10_fu_2608_p1;
wire   [1:0] tmp_10_fu_2608_p3;
wire  signed [1:0] tmp_10_fu_2608_p5;
wire  signed [1:0] tmp_10_fu_2608_p7;
wire   [1:0] tmp_11_fu_2696_p1;
wire   [1:0] tmp_11_fu_2696_p3;
wire  signed [1:0] tmp_11_fu_2696_p5;
wire  signed [1:0] tmp_11_fu_2696_p7;
wire   [1:0] tmp_12_fu_2735_p1;
wire   [1:0] tmp_12_fu_2735_p3;
wire  signed [1:0] tmp_12_fu_2735_p5;
wire  signed [1:0] tmp_12_fu_2735_p7;
wire   [1:0] tmp_13_fu_2830_p1;
wire   [1:0] tmp_13_fu_2830_p3;
wire  signed [1:0] tmp_13_fu_2830_p5;
wire  signed [1:0] tmp_13_fu_2830_p7;
wire   [1:0] tmp_14_fu_2869_p1;
wire   [1:0] tmp_14_fu_2869_p3;
wire  signed [1:0] tmp_14_fu_2869_p5;
wire  signed [1:0] tmp_14_fu_2869_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_264 = 7'd0;
#0 add61_fu_268 = 64'd0;
#0 add6_16_fu_272 = 64'd0;
#0 add6_28_fu_276 = 64'd0;
#0 add6_310_fu_280 = 64'd0;
#0 add6_412_fu_284 = 64'd0;
#0 add6_514_fu_288 = 64'd0;
#0 add6_616_fu_292 = 64'd0;
#0 add6_718_fu_296 = 64'd0;
#0 add6_820_fu_300 = 64'd0;
#0 add6_922_fu_304 = 64'd0;
#0 add6_1024_fu_308 = 64'd0;
#0 add6_1126_fu_312 = 64'd0;
#0 add6_1228_fu_316 = 64'd0;
#0 add6_1330_fu_320 = 64'd0;
#0 add6_1432_fu_324 = 64'd0;
#0 add6_1534_fu_328 = 64'd0;
#0 add636_fu_332 = 64'd0;
#0 add6_138_fu_336 = 64'd0;
#0 add6_240_fu_340 = 64'd0;
#0 add6_342_fu_344 = 64'd0;
#0 add6_444_fu_348 = 64'd0;
#0 add6_546_fu_352 = 64'd0;
#0 add6_648_fu_356 = 64'd0;
#0 add6_750_fu_360 = 64'd0;
#0 add6_852_fu_364 = 64'd0;
#0 add6_954_fu_368 = 64'd0;
#0 add6_1056_fu_372 = 64'd0;
#0 add6_1158_fu_376 = 64'd0;
#0 add6_1260_fu_380 = 64'd0;
#0 add6_1362_fu_384 = 64'd0;
#0 add6_1464_fu_388 = 64'd0;
#0 add6_1566_fu_392 = 64'd0;
#0 add668_fu_396 = 64'd0;
#0 add6_170_fu_400 = 64'd0;
#0 add6_272_fu_404 = 64'd0;
#0 add6_374_fu_408 = 64'd0;
#0 add6_476_fu_412 = 64'd0;
#0 add6_578_fu_416 = 64'd0;
#0 add6_680_fu_420 = 64'd0;
#0 add6_782_fu_424 = 64'd0;
#0 add6_884_fu_428 = 64'd0;
#0 add6_986_fu_432 = 64'd0;
#0 add6_1088_fu_436 = 64'd0;
#0 add6_1190_fu_440 = 64'd0;
#0 add6_1292_fu_444 = 64'd0;
#0 add6_1394_fu_448 = 64'd0;
#0 add6_1496_fu_452 = 64'd0;
#0 add6_1598_fu_456 = 64'd0;
#0 add6100_fu_460 = 64'd0;
#0 add6_1102_fu_464 = 64'd0;
#0 add6_2104_fu_468 = 64'd0;
#0 add6_3106_fu_472 = 64'd0;
#0 add6_4108_fu_476 = 64'd0;
#0 add6_5110_fu_480 = 64'd0;
#0 add6_6112_fu_484 = 64'd0;
#0 add6_7114_fu_488 = 64'd0;
#0 add6_8116_fu_492 = 64'd0;
#0 add6_9118_fu_496 = 64'd0;
#0 add6_10120_fu_500 = 64'd0;
#0 add6_11122_fu_504 = 64'd0;
#0 add6_12124_fu_508 = 64'd0;
#0 add6_13126_fu_512 = 64'd0;
#0 add6_14128_fu_516 = 64'd0;
#0 add6_15130_fu_520 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U3(.din0(tmp_fu_1870_p2),.din1(tmp_fu_1870_p4),.din2(tmp_fu_1870_p6),.din3(tmp_fu_1870_p8),.def(tmp_fu_1870_p9),.sel(empty),.dout(tmp_fu_1870_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U4(.din0(tmp_1_fu_1909_p2),.din1(tmp_1_fu_1909_p4),.din2(tmp_1_fu_1909_p6),.din3(tmp_1_fu_1909_p8),.def(tmp_1_fu_1909_p9),.sel(empty),.dout(tmp_1_fu_1909_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U5(.din0(tmp_2_fu_2032_p2),.din1(tmp_2_fu_2032_p4),.din2(tmp_2_fu_2032_p6),.din3(tmp_2_fu_2032_p8),.def(tmp_2_fu_2032_p9),.sel(empty),.dout(tmp_2_fu_2032_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U6(.din0(tmp_3_fu_2071_p2),.din1(tmp_3_fu_2071_p4),.din2(tmp_3_fu_2071_p6),.din3(tmp_3_fu_2071_p8),.def(tmp_3_fu_2071_p9),.sel(empty),.dout(tmp_3_fu_2071_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U7(.din0(tmp_4_fu_2162_p2),.din1(tmp_4_fu_2162_p4),.din2(tmp_4_fu_2162_p6),.din3(tmp_4_fu_2162_p8),.def(tmp_4_fu_2162_p9),.sel(empty),.dout(tmp_4_fu_2162_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U8(.din0(tmp_5_fu_2201_p2),.din1(tmp_5_fu_2201_p4),.din2(tmp_5_fu_2201_p6),.din3(tmp_5_fu_2201_p8),.def(tmp_5_fu_2201_p9),.sel(empty),.dout(tmp_5_fu_2201_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U9(.din0(tmp_6_fu_2288_p2),.din1(tmp_6_fu_2288_p4),.din2(tmp_6_fu_2288_p6),.din3(tmp_6_fu_2288_p8),.def(tmp_6_fu_2288_p9),.sel(empty),.dout(tmp_6_fu_2288_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U10(.din0(tmp_7_fu_2327_p2),.din1(tmp_7_fu_2327_p4),.din2(tmp_7_fu_2327_p6),.din3(tmp_7_fu_2327_p8),.def(tmp_7_fu_2327_p9),.sel(empty),.dout(tmp_7_fu_2327_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U11(.din0(tmp_8_fu_2437_p2),.din1(tmp_8_fu_2437_p4),.din2(tmp_8_fu_2437_p6),.din3(tmp_8_fu_2437_p8),.def(tmp_8_fu_2437_p9),.sel(empty),.dout(tmp_8_fu_2437_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U12(.din0(tmp_9_fu_2476_p2),.din1(tmp_9_fu_2476_p4),.din2(tmp_9_fu_2476_p6),.din3(tmp_9_fu_2476_p8),.def(tmp_9_fu_2476_p9),.sel(empty),.dout(tmp_9_fu_2476_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U13(.din0(tmp_s_fu_2569_p2),.din1(tmp_s_fu_2569_p4),.din2(tmp_s_fu_2569_p6),.din3(tmp_s_fu_2569_p8),.def(tmp_s_fu_2569_p9),.sel(empty),.dout(tmp_s_fu_2569_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U14(.din0(tmp_10_fu_2608_p2),.din1(tmp_10_fu_2608_p4),.din2(tmp_10_fu_2608_p6),.din3(tmp_10_fu_2608_p8),.def(tmp_10_fu_2608_p9),.sel(empty),.dout(tmp_10_fu_2608_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U15(.din0(tmp_11_fu_2696_p2),.din1(tmp_11_fu_2696_p4),.din2(tmp_11_fu_2696_p6),.din3(tmp_11_fu_2696_p8),.def(tmp_11_fu_2696_p9),.sel(empty),.dout(tmp_11_fu_2696_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U16(.din0(tmp_12_fu_2735_p2),.din1(tmp_12_fu_2735_p4),.din2(tmp_12_fu_2735_p6),.din3(tmp_12_fu_2735_p8),.def(tmp_12_fu_2735_p9),.sel(empty),.dout(tmp_12_fu_2735_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U17(.din0(tmp_13_fu_2830_p2),.din1(tmp_13_fu_2830_p4),.din2(tmp_13_fu_2830_p6),.din3(tmp_13_fu_2830_p8),.def(tmp_13_fu_2830_p9),.sel(empty),.dout(tmp_13_fu_2830_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U18(.din0(tmp_14_fu_2869_p2),.din1(tmp_14_fu_2869_p4),.din2(tmp_14_fu_2869_p6),.din3(tmp_14_fu_2869_p8),.def(tmp_14_fu_2869_p9),.sel(empty),.dout(tmp_14_fu_2869_p11));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_264 <= 7'd0;
    end else if (((tmp_161_reg_3917 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        s_fu_264 <= add_ln13_fu_2411_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1190_state10 == 1'b1))) begin
        add6100_fu_460 <= grp_fu_4102_p_dout0;
        add6_1102_fu_464 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred932_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add61_fu_268 <= grp_fu_4102_p_dout0;
        add6_16_fu_272 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1035_state10 == 1'b1))) begin
        add636_fu_332 <= grp_fu_4102_p_dout0;
        add6_138_fu_336 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1111_state10 == 1'b1))) begin
        add668_fu_396 <= grp_fu_4102_p_dout0;
        add6_170_fu_400 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_predicate_pred1204_state15 == 1'b1))) begin
        add6_10120_fu_500 <= grp_fu_4102_p_dout0;
        add6_11122_fu_504 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_predicate_pred956_state15 == 1'b1))) begin
        add6_1024_fu_308 <= grp_fu_4102_p_dout0;
        add6_1126_fu_312 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_predicate_pred1045_state15 == 1'b1))) begin
        add6_1056_fu_372 <= grp_fu_4102_p_dout0;
        add6_1158_fu_376 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_predicate_pred1121_state15 == 1'b1))) begin
        add6_1088_fu_436 <= grp_fu_4102_p_dout0;
        add6_1190_fu_440 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_predicate_pred1204_state16 == 1'b1))) begin
        add6_12124_fu_508 <= grp_fu_4102_p_dout0;
        add6_13126_fu_512 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_predicate_pred956_state16 == 1'b1))) begin
        add6_1228_fu_316 <= grp_fu_4102_p_dout0;
        add6_1330_fu_320 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_predicate_pred1045_state16 == 1'b1))) begin
        add6_1260_fu_380 <= grp_fu_4102_p_dout0;
        add6_1362_fu_384 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_predicate_pred1121_state16 == 1'b1))) begin
        add6_1292_fu_444 <= grp_fu_4102_p_dout0;
        add6_1394_fu_448 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1204_state17 == 1'b1))) begin
        add6_14128_fu_516 <= grp_fu_4102_p_dout0;
        add6_15130_fu_520 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred956_state17 == 1'b1))) begin
        add6_1432_fu_324 <= grp_fu_4102_p_dout0;
        add6_1534_fu_328 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1045_state17 == 1'b1))) begin
        add6_1464_fu_388 <= grp_fu_4102_p_dout0;
        add6_1566_fu_392 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1121_state17 == 1'b1))) begin
        add6_1496_fu_452 <= grp_fu_4102_p_dout0;
        add6_1598_fu_456 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1204_state11 == 1'b1))) begin
        add6_2104_fu_468 <= grp_fu_4102_p_dout0;
        add6_3106_fu_472 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1045_state11 == 1'b1))) begin
        add6_240_fu_340 <= grp_fu_4102_p_dout0;
        add6_342_fu_344 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1121_state11 == 1'b1))) begin
        add6_272_fu_404 <= grp_fu_4102_p_dout0;
        add6_374_fu_408 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred956_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_28_fu_276 <= grp_fu_4102_p_dout0;
        add6_310_fu_280 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1204_state12 == 1'b1))) begin
        add6_4108_fu_476 <= grp_fu_4102_p_dout0;
        add6_5110_fu_480 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred956_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_412_fu_284 <= grp_fu_4102_p_dout0;
        add6_514_fu_288 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1045_state12 == 1'b1))) begin
        add6_444_fu_348 <= grp_fu_4102_p_dout0;
        add6_546_fu_352 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1121_state12 == 1'b1))) begin
        add6_476_fu_412 <= grp_fu_4102_p_dout0;
        add6_578_fu_416 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1204_state13 == 1'b1))) begin
        add6_6112_fu_484 <= grp_fu_4102_p_dout0;
        add6_7114_fu_488 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred956_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add6_616_fu_292 <= grp_fu_4102_p_dout0;
        add6_718_fu_296 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1045_state13 == 1'b1))) begin
        add6_648_fu_356 <= grp_fu_4102_p_dout0;
        add6_750_fu_360 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1121_state13 == 1'b1))) begin
        add6_680_fu_420 <= grp_fu_4102_p_dout0;
        add6_782_fu_424 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_predicate_pred1204_state14 == 1'b1))) begin
        add6_8116_fu_492 <= grp_fu_4102_p_dout0;
        add6_9118_fu_496 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred956_state14 == 1'b1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add6_820_fu_300 <= grp_fu_4102_p_dout0;
        add6_922_fu_304 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_predicate_pred1045_state14 == 1'b1))) begin
        add6_852_fu_364 <= grp_fu_4102_p_dout0;
        add6_954_fu_368 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_predicate_pred1121_state14 == 1'b1))) begin
        add6_884_fu_428 <= grp_fu_4102_p_dout0;
        add6_986_fu_432 <= grp_fu_7392_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_predicate_pred1035_state10 <= (trunc_ln13_reg_3921 == 6'd16);
        ap_predicate_pred1111_state10 <= (trunc_ln13_reg_3921 == 6'd0);
        ap_predicate_pred1190_state10 <= (~(trunc_ln13_reg_3921 == 6'd32) & ~(trunc_ln13_reg_3921 == 6'd0) & ~(trunc_ln13_reg_3921 == 6'd16));
        ap_predicate_pred932_state10 <= (trunc_ln13_reg_3921 == 6'd32);
        conv3_udiv_cast_cast_reg_3894[5 : 0] <= conv3_udiv_cast_cast_fu_1724_p1[5 : 0];
        lshr_ln9_reg_3925 <= {{ap_sig_allocacmp_s_1[5:2]}};
        s_1_reg_3909 <= ap_sig_allocacmp_s_1;
        tmp_116_reg_3936 <= {{ap_sig_allocacmp_s_1[5:4]}};
        tmp_13_reg_4564 <= tmp_13_fu_2830_p11;
        tmp_14_reg_4569 <= tmp_14_fu_2869_p11;
        tmp_161_reg_3917 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_222_reg_3991 <= {{ap_sig_allocacmp_s_1[5:3]}};
        trunc_ln13_reg_3921 <= trunc_ln13_fu_1748_p1;
        trunc_ln13_reg_3921_pp0_iter1_reg <= trunc_ln13_reg_3921;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_predicate_pred1045_state11 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd16);
        ap_predicate_pred1121_state11 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd0);
        ap_predicate_pred1204_state11 <= (~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd32) & ~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd0) & ~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd16));
        ap_predicate_pred956_state11 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd32);
        tmp_163_reg_4083 <= s_1_reg_3909[32'd2];
        tmp_1_reg_4038 <= tmp_1_fu_1909_p11;
        tmp_reg_4033 <= tmp_fu_1870_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_predicate_pred1045_state12 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd16);
        ap_predicate_pred1121_state12 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd0);
        ap_predicate_pred1204_state12 <= (~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd32) & ~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd0) & ~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd16));
        ap_predicate_pred956_state12 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd32);
        tmp_162_reg_4194 <= s_1_reg_3909[32'd1];
        tmp_2_reg_4164 <= tmp_2_fu_2032_p11;
        tmp_3_reg_4169 <= tmp_3_fu_2071_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_predicate_pred1045_state13 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd16);
        ap_predicate_pred1121_state13 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd0);
        ap_predicate_pred1204_state13 <= (~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd32) & ~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd0) & ~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd16));
        ap_predicate_pred956_state13 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd32);
        tmp_4_reg_4254 <= tmp_4_fu_2162_p11;
        tmp_5_reg_4259 <= tmp_5_fu_2201_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_predicate_pred1045_state14 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd16);
        ap_predicate_pred1121_state14 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd0);
        ap_predicate_pred1204_state14 <= (~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd32) & ~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd0) & ~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd16));
        ap_predicate_pred956_state14 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd32);
        tmp_6_reg_4314 <= tmp_6_fu_2288_p11;
        tmp_7_reg_4319 <= tmp_7_fu_2327_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_predicate_pred1045_state15 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd16);
        ap_predicate_pred1121_state15 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd0);
        ap_predicate_pred1204_state15 <= (~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd32) & ~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd0) & ~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd16));
        ap_predicate_pred956_state15 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd32);
        tmp_8_reg_4374 <= tmp_8_fu_2437_p11;
        tmp_9_reg_4379 <= tmp_9_fu_2476_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_predicate_pred1045_state16 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd16);
        ap_predicate_pred1121_state16 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd0);
        ap_predicate_pred1204_state16 <= (~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd32) & ~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd0) & ~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd16));
        ap_predicate_pred956_state16 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd32);
        tmp_10_reg_4439 <= tmp_10_fu_2608_p11;
        tmp_s_reg_4434 <= tmp_s_fu_2569_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_predicate_pred1045_state17 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd16);
        ap_predicate_pred1121_state17 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd0);
        ap_predicate_pred1204_state17 <= (~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd32) & ~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd0) & ~(trunc_ln13_reg_3921_pp0_iter1_reg == 6'd16));
        ap_predicate_pred956_state17 <= (trunc_ln13_reg_3921_pp0_iter1_reg == 6'd32);
        tmp_11_reg_4494 <= tmp_11_fu_2696_p11;
        tmp_12_reg_4499 <= tmp_12_fu_2735_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        init_0_load_1_reg_4089 <= init_0_q0;
        init_1_load_1_reg_4104 <= init_1_q0;
        init_2_load_1_reg_4124 <= init_2_q0;
        init_2_load_reg_4119 <= init_2_q1;
        init_3_load_1_reg_4144 <= init_3_q0;
        init_3_load_reg_4139 <= init_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        init_0_load_3_reg_4219 <= init_0_q0;
        init_1_load_3_reg_4229 <= init_1_q0;
        init_2_load_2_reg_4234 <= init_2_q1;
        init_2_load_3_reg_4239 <= init_2_q0;
        init_3_load_2_reg_4244 <= init_3_q1;
        init_3_load_3_reg_4249 <= init_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1716 <= init_0_q1;
        reg_1720 <= init_1_q1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6100_out_ap_vld = 1'b1;
    end else begin
        add6100_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add61_out_ap_vld = 1'b1;
    end else begin
        add61_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add636_out_ap_vld = 1'b1;
    end else begin
        add636_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add668_out_ap_vld = 1'b1;
    end else begin
        add668_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_10120_out_ap_vld = 1'b1;
    end else begin
        add6_10120_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1024_out_ap_vld = 1'b1;
    end else begin
        add6_1024_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1056_out_ap_vld = 1'b1;
    end else begin
        add6_1056_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1088_out_ap_vld = 1'b1;
    end else begin
        add6_1088_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1102_out_ap_vld = 1'b1;
    end else begin
        add6_1102_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_11122_out_ap_vld = 1'b1;
    end else begin
        add6_11122_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1126_out_ap_vld = 1'b1;
    end else begin
        add6_1126_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1158_out_ap_vld = 1'b1;
    end else begin
        add6_1158_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1190_out_ap_vld = 1'b1;
    end else begin
        add6_1190_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_12124_out_ap_vld = 1'b1;
    end else begin
        add6_12124_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1228_out_ap_vld = 1'b1;
    end else begin
        add6_1228_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1260_out_ap_vld = 1'b1;
    end else begin
        add6_1260_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1292_out_ap_vld = 1'b1;
    end else begin
        add6_1292_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_13126_out_ap_vld = 1'b1;
    end else begin
        add6_13126_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1330_out_ap_vld = 1'b1;
    end else begin
        add6_1330_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1362_out_ap_vld = 1'b1;
    end else begin
        add6_1362_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_138_out_ap_vld = 1'b1;
    end else begin
        add6_138_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1394_out_ap_vld = 1'b1;
    end else begin
        add6_1394_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_14128_out_ap_vld = 1'b1;
    end else begin
        add6_14128_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1432_out_ap_vld = 1'b1;
    end else begin
        add6_1432_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1464_out_ap_vld = 1'b1;
    end else begin
        add6_1464_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1496_out_ap_vld = 1'b1;
    end else begin
        add6_1496_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_15130_out_ap_vld = 1'b1;
    end else begin
        add6_15130_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1534_out_ap_vld = 1'b1;
    end else begin
        add6_1534_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1566_out_ap_vld = 1'b1;
    end else begin
        add6_1566_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1598_out_ap_vld = 1'b1;
    end else begin
        add6_1598_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_16_out_ap_vld = 1'b1;
    end else begin
        add6_16_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_170_out_ap_vld = 1'b1;
    end else begin
        add6_170_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2104_out_ap_vld = 1'b1;
    end else begin
        add6_2104_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_240_out_ap_vld = 1'b1;
    end else begin
        add6_240_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_272_out_ap_vld = 1'b1;
    end else begin
        add6_272_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_28_out_ap_vld = 1'b1;
    end else begin
        add6_28_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3106_out_ap_vld = 1'b1;
    end else begin
        add6_3106_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_310_out_ap_vld = 1'b1;
    end else begin
        add6_310_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_342_out_ap_vld = 1'b1;
    end else begin
        add6_342_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_374_out_ap_vld = 1'b1;
    end else begin
        add6_374_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_4108_out_ap_vld = 1'b1;
    end else begin
        add6_4108_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_412_out_ap_vld = 1'b1;
    end else begin
        add6_412_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_444_out_ap_vld = 1'b1;
    end else begin
        add6_444_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_476_out_ap_vld = 1'b1;
    end else begin
        add6_476_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_5110_out_ap_vld = 1'b1;
    end else begin
        add6_5110_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_514_out_ap_vld = 1'b1;
    end else begin
        add6_514_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_546_out_ap_vld = 1'b1;
    end else begin
        add6_546_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_578_out_ap_vld = 1'b1;
    end else begin
        add6_578_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_6112_out_ap_vld = 1'b1;
    end else begin
        add6_6112_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_616_out_ap_vld = 1'b1;
    end else begin
        add6_616_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_648_out_ap_vld = 1'b1;
    end else begin
        add6_648_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_680_out_ap_vld = 1'b1;
    end else begin
        add6_680_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_7114_out_ap_vld = 1'b1;
    end else begin
        add6_7114_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_718_out_ap_vld = 1'b1;
    end else begin
        add6_718_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_750_out_ap_vld = 1'b1;
    end else begin
        add6_750_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_782_out_ap_vld = 1'b1;
    end else begin
        add6_782_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_8116_out_ap_vld = 1'b1;
    end else begin
        add6_8116_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_820_out_ap_vld = 1'b1;
    end else begin
        add6_820_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_852_out_ap_vld = 1'b1;
    end else begin
        add6_852_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_884_out_ap_vld = 1'b1;
    end else begin
        add6_884_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_9118_out_ap_vld = 1'b1;
    end else begin
        add6_9118_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_922_out_ap_vld = 1'b1;
    end else begin
        add6_922_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_954_out_ap_vld = 1'b1;
    end else begin
        add6_954_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_986_out_ap_vld = 1'b1;
    end else begin
        add6_986_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_161_reg_3917 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_264;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address0_local = zext_ln14_15_fu_2798_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address0_local = zext_ln14_13_fu_2672_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address0_local = zext_ln14_11_fu_2537_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address0_local = zext_ln14_9_fu_2395_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_2256_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_2133_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1964_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1820_p1;
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
            emission_0_address1_local = zext_ln14_14_fu_2774_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address1_local = zext_ln14_12_fu_2644_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address1_local = zext_ln14_10_fu_2514_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address1_local = zext_ln14_8_fu_2362_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_2236_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_2102_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1944_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1788_p1;
        end else begin
            emission_0_address1_local = 'bx;
        end
    end else begin
        emission_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address0_local = zext_ln14_15_fu_2798_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address0_local = zext_ln14_13_fu_2672_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address0_local = zext_ln14_11_fu_2537_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address0_local = zext_ln14_9_fu_2395_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_2256_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_2133_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1964_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1820_p1;
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
            emission_1_address1_local = zext_ln14_14_fu_2774_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address1_local = zext_ln14_12_fu_2644_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address1_local = zext_ln14_10_fu_2514_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address1_local = zext_ln14_8_fu_2362_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_2236_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_2102_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1944_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1788_p1;
        end else begin
            emission_1_address1_local = 'bx;
        end
    end else begin
        emission_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_2_address0_local = zext_ln14_15_fu_2798_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_2_address0_local = zext_ln14_13_fu_2672_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_2_address0_local = zext_ln14_11_fu_2537_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_2_address0_local = zext_ln14_9_fu_2395_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address0_local = zext_ln14_7_fu_2256_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address0_local = zext_ln14_5_fu_2133_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address0_local = zext_ln14_3_fu_1964_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_1820_p1;
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
            emission_2_address1_local = zext_ln14_14_fu_2774_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_2_address1_local = zext_ln14_12_fu_2644_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_2_address1_local = zext_ln14_10_fu_2514_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_2_address1_local = zext_ln14_8_fu_2362_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address1_local = zext_ln14_6_fu_2236_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address1_local = zext_ln14_4_fu_2102_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address1_local = zext_ln14_2_fu_1944_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address1_local = zext_ln14_fu_1788_p1;
        end else begin
            emission_2_address1_local = 'bx;
        end
    end else begin
        emission_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_2_ce0_local = 1'b1;
    end else begin
        emission_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_2_ce1_local = 1'b1;
    end else begin
        emission_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_3_address0_local = zext_ln14_15_fu_2798_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_3_address0_local = zext_ln14_13_fu_2672_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_3_address0_local = zext_ln14_11_fu_2537_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_3_address0_local = zext_ln14_9_fu_2395_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address0_local = zext_ln14_7_fu_2256_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address0_local = zext_ln14_5_fu_2133_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address0_local = zext_ln14_3_fu_1964_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_1820_p1;
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
            emission_3_address1_local = zext_ln14_14_fu_2774_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_3_address1_local = zext_ln14_12_fu_2644_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_3_address1_local = zext_ln14_10_fu_2514_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_3_address1_local = zext_ln14_8_fu_2362_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address1_local = zext_ln14_6_fu_2236_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address1_local = zext_ln14_4_fu_2102_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address1_local = zext_ln14_2_fu_1944_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address1_local = zext_ln14_fu_1788_p1;
        end else begin
            emission_3_address1_local = 'bx;
        end
    end else begin
        emission_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_3_ce0_local = 1'b1;
    end else begin
        emission_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_3_ce1_local = 1'b1;
    end else begin
        emission_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1708_p0 = bitcast_ln14_67_fu_2892_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1708_p0 = bitcast_ln14_51_fu_2806_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1708_p0 = bitcast_ln14_66_fu_2758_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1708_p0 = bitcast_ln14_50_fu_2631_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1708_p0 = bitcast_ln14_65_fu_2545_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1708_p0 = bitcast_ln14_49_fu_2403_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1708_p0 = bitcast_ln14_64_fu_2264_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1708_p0 = bitcast_ln14_fu_2011_p1;
    end else begin
        grp_fu_1708_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1708_p1 = tmp_13_reg_4564;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1708_p1 = tmp_11_reg_4494;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1708_p1 = tmp_s_reg_4434;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1708_p1 = tmp_8_reg_4374;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1708_p1 = tmp_6_reg_4314;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1708_p1 = tmp_4_reg_4254;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1708_p1 = tmp_2_reg_4164;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1708_p1 = tmp_reg_4033;
    end else begin
        grp_fu_1708_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1712_p0 = bitcast_ln14_75_fu_2896_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1712_p0 = bitcast_ln14_59_fu_2810_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1712_p0 = bitcast_ln14_74_fu_2782_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1712_p0 = bitcast_ln14_58_fu_2652_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1712_p0 = bitcast_ln14_73_fu_2549_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1712_p0 = bitcast_ln14_57_fu_2407_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1712_p0 = bitcast_ln14_72_fu_2268_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1712_p0 = bitcast_ln14_56_fu_2141_p1;
    end else begin
        grp_fu_1712_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1712_p1 = tmp_14_reg_4569;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1712_p1 = tmp_12_reg_4499;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1712_p1 = tmp_10_reg_4439;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1712_p1 = tmp_9_reg_4379;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1712_p1 = tmp_7_reg_4319;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1712_p1 = tmp_5_reg_4259;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1712_p1 = tmp_3_reg_4169;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1712_p1 = tmp_1_reg_4038;
    end else begin
        grp_fu_1712_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address0_local = zext_ln14_19_fu_2003_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address0_local = zext_ln14_16_fu_1846_p1;
        end else begin
            init_0_address0_local = 'bx;
        end
    end else begin
        init_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address1_local = zext_ln14_17_fu_1988_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address1_local = zext_ln9_fu_1762_p1;
        end else begin
            init_0_address1_local = 'bx;
        end
    end else begin
        init_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_0_ce0_local = 1'b1;
    end else begin
        init_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_0_ce1_local = 1'b1;
    end else begin
        init_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address0_local = zext_ln14_19_fu_2003_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address0_local = zext_ln14_16_fu_1846_p1;
        end else begin
            init_1_address0_local = 'bx;
        end
    end else begin
        init_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address1_local = zext_ln14_17_fu_1988_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address1_local = zext_ln9_fu_1762_p1;
        end else begin
            init_1_address1_local = 'bx;
        end
    end else begin
        init_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_1_ce1_local = 1'b1;
    end else begin
        init_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_2_address0_local = zext_ln14_19_fu_2003_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_2_address0_local = zext_ln14_16_fu_1846_p1;
        end else begin
            init_2_address0_local = 'bx;
        end
    end else begin
        init_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_2_address1_local = zext_ln14_17_fu_1988_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_2_address1_local = zext_ln9_fu_1762_p1;
        end else begin
            init_2_address1_local = 'bx;
        end
    end else begin
        init_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_2_ce0_local = 1'b1;
    end else begin
        init_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_2_ce1_local = 1'b1;
    end else begin
        init_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_3_address0_local = zext_ln14_19_fu_2003_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_3_address0_local = zext_ln14_16_fu_1846_p1;
        end else begin
            init_3_address0_local = 'bx;
        end
    end else begin
        init_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_3_address1_local = zext_ln14_17_fu_1988_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_3_address1_local = zext_ln9_fu_1762_p1;
        end else begin
            init_3_address1_local = 'bx;
        end
    end else begin
        init_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_3_ce0_local = 1'b1;
    end else begin
        init_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_3_ce1_local = 1'b1;
    end else begin
        init_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add6100_out = add6100_fu_460;
assign add61_out = add61_fu_268;
assign add636_out = add636_fu_332;
assign add668_out = add668_fu_396;
assign add6_10120_out = add6_10120_fu_500;
assign add6_1024_out = add6_1024_fu_308;
assign add6_1056_out = add6_1056_fu_372;
assign add6_1088_out = add6_1088_fu_436;
assign add6_1102_out = add6_1102_fu_464;
assign add6_11122_out = add6_11122_fu_504;
assign add6_1126_out = add6_1126_fu_312;
assign add6_1158_out = add6_1158_fu_376;
assign add6_1190_out = add6_1190_fu_440;
assign add6_12124_out = add6_12124_fu_508;
assign add6_1228_out = add6_1228_fu_316;
assign add6_1260_out = add6_1260_fu_380;
assign add6_1292_out = add6_1292_fu_444;
assign add6_13126_out = add6_13126_fu_512;
assign add6_1330_out = add6_1330_fu_320;
assign add6_1362_out = add6_1362_fu_384;
assign add6_138_out = add6_138_fu_336;
assign add6_1394_out = add6_1394_fu_448;
assign add6_14128_out = add6_14128_fu_516;
assign add6_1432_out = add6_1432_fu_324;
assign add6_1464_out = add6_1464_fu_388;
assign add6_1496_out = add6_1496_fu_452;
assign add6_15130_out = add6_15130_fu_520;
assign add6_1534_out = add6_1534_fu_328;
assign add6_1566_out = add6_1566_fu_392;
assign add6_1598_out = add6_1598_fu_456;
assign add6_16_out = add6_16_fu_272;
assign add6_170_out = add6_170_fu_400;
assign add6_2104_out = add6_2104_fu_468;
assign add6_240_out = add6_240_fu_340;
assign add6_272_out = add6_272_fu_404;
assign add6_28_out = add6_28_fu_276;
assign add6_3106_out = add6_3106_fu_472;
assign add6_310_out = add6_310_fu_280;
assign add6_342_out = add6_342_fu_344;
assign add6_374_out = add6_374_fu_408;
assign add6_4108_out = add6_4108_fu_476;
assign add6_412_out = add6_412_fu_284;
assign add6_444_out = add6_444_fu_348;
assign add6_476_out = add6_476_fu_412;
assign add6_5110_out = add6_5110_fu_480;
assign add6_514_out = add6_514_fu_288;
assign add6_546_out = add6_546_fu_352;
assign add6_578_out = add6_578_fu_416;
assign add6_6112_out = add6_6112_fu_484;
assign add6_616_out = add6_616_fu_292;
assign add6_648_out = add6_648_fu_356;
assign add6_680_out = add6_680_fu_420;
assign add6_7114_out = add6_7114_fu_488;
assign add6_718_out = add6_718_fu_296;
assign add6_750_out = add6_750_fu_360;
assign add6_782_out = add6_782_fu_424;
assign add6_8116_out = add6_8116_fu_492;
assign add6_820_out = add6_820_fu_300;
assign add6_852_out = add6_852_fu_364;
assign add6_884_out = add6_884_fu_428;
assign add6_9118_out = add6_9118_fu_496;
assign add6_922_out = add6_922_fu_304;
assign add6_954_out = add6_954_fu_368;
assign add6_986_out = add6_986_fu_432;
assign add_ln13_fu_2411_p2 = (s_1_reg_3909 + 7'd16);
assign add_ln14_10_fu_2769_p2 = (or_ln14_15_fu_2762_p3 + conv3_udiv_cast_cast_reg_3894);
assign add_ln14_11_fu_2793_p2 = (or_ln14_16_fu_2786_p3 + conv3_udiv_cast_cast_reg_3894);
assign add_ln14_1_fu_1939_p2 = (or_ln14_1_fu_1932_p3 + conv3_udiv_cast_cast_reg_3894);
assign add_ln14_2_fu_1959_p2 = (or_ln14_2_fu_1952_p3 + conv3_udiv_cast_cast_reg_3894);
assign add_ln14_3_fu_2128_p2 = (or_ln14_5_fu_2117_p5 + conv3_udiv_cast_cast_reg_3894);
assign add_ln14_4_fu_2231_p2 = (or_ln14_6_fu_2224_p3 + conv3_udiv_cast_cast_reg_3894);
assign add_ln14_5_fu_2251_p2 = (or_ln14_7_fu_2244_p3 + conv3_udiv_cast_cast_reg_3894);
assign add_ln14_6_fu_2390_p2 = (or_ln14_s_fu_2379_p5 + conv3_udiv_cast_cast_reg_3894);
assign add_ln14_7_fu_2509_p2 = (or_ln14_10_fu_2499_p5 + conv3_udiv_cast_cast_reg_3894);
assign add_ln14_8_fu_2532_p2 = (or_ln14_11_fu_2522_p5 + conv3_udiv_cast_cast_reg_3894);
assign add_ln14_9_fu_2667_p2 = (or_ln14_14_fu_2657_p5 + conv3_udiv_cast_cast_reg_3894);
assign add_ln14_fu_1814_p2 = (or_ln1_fu_1806_p3 + conv3_udiv_cast_cast_fu_1724_p1);
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
assign bitcast_ln14_49_fu_2403_p1 = init_0_load_1_reg_4089;
assign bitcast_ln14_50_fu_2631_p1 = reg_1716;
assign bitcast_ln14_51_fu_2806_p1 = init_0_load_3_reg_4219;
assign bitcast_ln14_56_fu_2141_p1 = reg_1720;
assign bitcast_ln14_57_fu_2407_p1 = init_1_load_1_reg_4104;
assign bitcast_ln14_58_fu_2652_p1 = reg_1720;
assign bitcast_ln14_59_fu_2810_p1 = init_1_load_3_reg_4229;
assign bitcast_ln14_64_fu_2264_p1 = init_2_load_reg_4119;
assign bitcast_ln14_65_fu_2545_p1 = init_2_load_1_reg_4124;
assign bitcast_ln14_66_fu_2758_p1 = init_2_load_2_reg_4234;
assign bitcast_ln14_67_fu_2892_p1 = init_2_load_3_reg_4239;
assign bitcast_ln14_72_fu_2268_p1 = init_3_load_reg_4139;
assign bitcast_ln14_73_fu_2549_p1 = init_3_load_1_reg_4144;
assign bitcast_ln14_74_fu_2782_p1 = init_3_load_2_reg_4244;
assign bitcast_ln14_75_fu_2896_p1 = init_3_load_3_reg_4249;
assign bitcast_ln14_fu_2011_p1 = reg_1716;
assign conv3_udiv_cast_cast_fu_1724_p1 = conv3_udiv_cast;
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
assign grp_fu_4102_p_ce = 1'b1;
assign grp_fu_4102_p_din0 = grp_fu_1708_p0;
assign grp_fu_4102_p_din1 = grp_fu_1708_p1;
assign grp_fu_4102_p_opcode = 2'd0;
assign grp_fu_7392_p_ce = 1'b1;
assign grp_fu_7392_p_din0 = grp_fu_1712_p0;
assign grp_fu_7392_p_din1 = grp_fu_1712_p1;
assign grp_fu_7392_p_opcode = 2'd0;
assign init_0_address0 = init_0_address0_local;
assign init_0_address1 = init_0_address1_local;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = init_1_address0_local;
assign init_1_address1 = init_1_address1_local;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign init_2_address0 = init_2_address0_local;
assign init_2_address1 = init_2_address1_local;
assign init_2_ce0 = init_2_ce0_local;
assign init_2_ce1 = init_2_ce1_local;
assign init_3_address0 = init_3_address0_local;
assign init_3_address1 = init_3_address1_local;
assign init_3_ce0 = init_3_ce0_local;
assign init_3_ce1 = init_3_ce1_local;
assign lshr_ln9_fu_1752_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign or_ln14_10_fu_2499_p5 = {{{{tmp_116_reg_3936}, {1'd1}}, {tmp_163_reg_4083}}, {6'd32}};
assign or_ln14_11_fu_2522_p5 = {{{{tmp_116_reg_3936}, {1'd1}}, {tmp_163_reg_4083}}, {6'd48}};
assign or_ln14_12_fu_1996_p3 = {{tmp_116_reg_3936}, {2'd3}};
assign or_ln14_13_fu_2636_p4 = {{{tmp_116_reg_3936}, {2'd3}}, {conv3_udiv}};
assign or_ln14_14_fu_2657_p5 = {{{{tmp_116_reg_3936}, {2'd3}}, {tmp_162_reg_4194}}, {5'd16}};
assign or_ln14_15_fu_2762_p3 = {{tmp_116_reg_3936}, {8'd224}};
assign or_ln14_16_fu_2786_p3 = {{tmp_116_reg_3936}, {8'd240}};
assign or_ln14_1_fu_1932_p3 = {{lshr_ln9_reg_3925}, {6'd32}};
assign or_ln14_2_fu_1952_p3 = {{lshr_ln9_reg_3925}, {6'd48}};
assign or_ln14_3_fu_1838_p3 = {{tmp_222_fu_1828_p4}, {1'd1}};
assign or_ln14_4_fu_2094_p4 = {{{tmp_116_reg_3936}, {2'd1}}, {conv3_udiv}};
assign or_ln14_5_fu_2117_p5 = {{{{tmp_222_reg_3991}, {1'd1}}, {tmp_162_fu_2110_p3}}, {5'd16}};
assign or_ln14_6_fu_2224_p3 = {{tmp_222_reg_3991}, {7'd96}};
assign or_ln14_7_fu_2244_p3 = {{tmp_222_reg_3991}, {7'd112}};
assign or_ln14_8_fu_1979_p4 = {{{tmp_116_reg_3936}, {1'd1}}, {tmp_163_fu_1972_p3}};
assign or_ln14_9_fu_2353_p4 = {{{tmp_116_reg_3936}, {1'd1}}, {zext_ln14_18_fu_2350_p1}};
assign or_ln14_s_fu_2379_p5 = {{{{tmp_116_reg_3936}, {1'd1}}, {tmp_223_fu_2370_p4}}, {5'd16}};
assign or_ln1_fu_1806_p3 = {{tmp_213_fu_1796_p4}, {5'd16}};
assign or_ln_fu_1780_p3 = {{tmp_116_fu_1770_p4}, {p_cast_fu_1728_p1}};
assign p_cast_fu_1728_p1 = empty_9;
assign tmp_10_fu_2608_p2 = emission_0_q0;
assign tmp_10_fu_2608_p4 = emission_1_q0;
assign tmp_10_fu_2608_p6 = emission_2_q0;
assign tmp_10_fu_2608_p8 = emission_3_q0;
assign tmp_10_fu_2608_p9 = 'bx;
assign tmp_116_fu_1770_p4 = {{ap_sig_allocacmp_s_1[5:4]}};
assign tmp_11_fu_2696_p2 = emission_0_q1;
assign tmp_11_fu_2696_p4 = emission_1_q1;
assign tmp_11_fu_2696_p6 = emission_2_q1;
assign tmp_11_fu_2696_p8 = emission_3_q1;
assign tmp_11_fu_2696_p9 = 'bx;
assign tmp_12_fu_2735_p2 = emission_0_q0;
assign tmp_12_fu_2735_p4 = emission_1_q0;
assign tmp_12_fu_2735_p6 = emission_2_q0;
assign tmp_12_fu_2735_p8 = emission_3_q0;
assign tmp_12_fu_2735_p9 = 'bx;
assign tmp_13_fu_2830_p2 = emission_0_q1;
assign tmp_13_fu_2830_p4 = emission_1_q1;
assign tmp_13_fu_2830_p6 = emission_2_q1;
assign tmp_13_fu_2830_p8 = emission_3_q1;
assign tmp_13_fu_2830_p9 = 'bx;
assign tmp_14_fu_2869_p2 = emission_0_q0;
assign tmp_14_fu_2869_p4 = emission_1_q0;
assign tmp_14_fu_2869_p6 = emission_2_q0;
assign tmp_14_fu_2869_p8 = emission_3_q0;
assign tmp_14_fu_2869_p9 = 'bx;
assign tmp_162_fu_2110_p3 = s_1_reg_3909[32'd1];
assign tmp_163_fu_1972_p3 = s_1_reg_3909[32'd2];
assign tmp_1_fu_1909_p2 = emission_0_q0;
assign tmp_1_fu_1909_p4 = emission_1_q0;
assign tmp_1_fu_1909_p6 = emission_2_q0;
assign tmp_1_fu_1909_p8 = emission_3_q0;
assign tmp_1_fu_1909_p9 = 'bx;
assign tmp_213_fu_1796_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign tmp_222_fu_1828_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign tmp_223_fu_2370_p4 = {{s_1_reg_3909[2:1]}};
assign tmp_2_fu_2032_p2 = emission_0_q1;
assign tmp_2_fu_2032_p4 = emission_1_q1;
assign tmp_2_fu_2032_p6 = emission_2_q1;
assign tmp_2_fu_2032_p8 = emission_3_q1;
assign tmp_2_fu_2032_p9 = 'bx;
assign tmp_3_fu_2071_p2 = emission_0_q0;
assign tmp_3_fu_2071_p4 = emission_1_q0;
assign tmp_3_fu_2071_p6 = emission_2_q0;
assign tmp_3_fu_2071_p8 = emission_3_q0;
assign tmp_3_fu_2071_p9 = 'bx;
assign tmp_4_fu_2162_p2 = emission_0_q1;
assign tmp_4_fu_2162_p4 = emission_1_q1;
assign tmp_4_fu_2162_p6 = emission_2_q1;
assign tmp_4_fu_2162_p8 = emission_3_q1;
assign tmp_4_fu_2162_p9 = 'bx;
assign tmp_5_fu_2201_p2 = emission_0_q0;
assign tmp_5_fu_2201_p4 = emission_1_q0;
assign tmp_5_fu_2201_p6 = emission_2_q0;
assign tmp_5_fu_2201_p8 = emission_3_q0;
assign tmp_5_fu_2201_p9 = 'bx;
assign tmp_6_fu_2288_p2 = emission_0_q1;
assign tmp_6_fu_2288_p4 = emission_1_q1;
assign tmp_6_fu_2288_p6 = emission_2_q1;
assign tmp_6_fu_2288_p8 = emission_3_q1;
assign tmp_6_fu_2288_p9 = 'bx;
assign tmp_7_fu_2327_p2 = emission_0_q0;
assign tmp_7_fu_2327_p4 = emission_1_q0;
assign tmp_7_fu_2327_p6 = emission_2_q0;
assign tmp_7_fu_2327_p8 = emission_3_q0;
assign tmp_7_fu_2327_p9 = 'bx;
assign tmp_8_fu_2437_p2 = emission_0_q1;
assign tmp_8_fu_2437_p4 = emission_1_q1;
assign tmp_8_fu_2437_p6 = emission_2_q1;
assign tmp_8_fu_2437_p8 = emission_3_q1;
assign tmp_8_fu_2437_p9 = 'bx;
assign tmp_9_fu_2476_p2 = emission_0_q0;
assign tmp_9_fu_2476_p4 = emission_1_q0;
assign tmp_9_fu_2476_p6 = emission_2_q0;
assign tmp_9_fu_2476_p8 = emission_3_q0;
assign tmp_9_fu_2476_p9 = 'bx;
assign tmp_fu_1870_p2 = emission_0_q1;
assign tmp_fu_1870_p4 = emission_1_q1;
assign tmp_fu_1870_p6 = emission_2_q1;
assign tmp_fu_1870_p8 = emission_3_q1;
assign tmp_fu_1870_p9 = 'bx;
assign tmp_s_fu_2569_p2 = emission_0_q1;
assign tmp_s_fu_2569_p4 = emission_1_q1;
assign tmp_s_fu_2569_p6 = emission_2_q1;
assign tmp_s_fu_2569_p8 = emission_3_q1;
assign tmp_s_fu_2569_p9 = 'bx;
assign trunc_ln13_fu_1748_p1 = ap_sig_allocacmp_s_1[5:0];
assign zext_ln14_10_fu_2514_p1 = add_ln14_7_fu_2509_p2;
assign zext_ln14_11_fu_2537_p1 = add_ln14_8_fu_2532_p2;
assign zext_ln14_12_fu_2644_p1 = or_ln14_13_fu_2636_p4;
assign zext_ln14_13_fu_2672_p1 = add_ln14_9_fu_2667_p2;
assign zext_ln14_14_fu_2774_p1 = add_ln14_10_fu_2769_p2;
assign zext_ln14_15_fu_2798_p1 = add_ln14_11_fu_2793_p2;
assign zext_ln14_16_fu_1846_p1 = or_ln14_3_fu_1838_p3;
assign zext_ln14_17_fu_1988_p1 = or_ln14_8_fu_1979_p4;
assign zext_ln14_18_fu_2350_p1 = conv3_udiv;
assign zext_ln14_19_fu_2003_p1 = or_ln14_12_fu_1996_p3;
assign zext_ln14_1_fu_1820_p1 = add_ln14_fu_1814_p2;
assign zext_ln14_2_fu_1944_p1 = add_ln14_1_fu_1939_p2;
assign zext_ln14_3_fu_1964_p1 = add_ln14_2_fu_1959_p2;
assign zext_ln14_4_fu_2102_p1 = or_ln14_4_fu_2094_p4;
assign zext_ln14_5_fu_2133_p1 = add_ln14_3_fu_2128_p2;
assign zext_ln14_6_fu_2236_p1 = add_ln14_4_fu_2231_p2;
assign zext_ln14_7_fu_2256_p1 = add_ln14_5_fu_2251_p2;
assign zext_ln14_8_fu_2362_p1 = or_ln14_9_fu_2353_p4;
assign zext_ln14_9_fu_2395_p1 = add_ln14_6_fu_2390_p2;
assign zext_ln14_fu_1788_p1 = or_ln_fu_1780_p3;
assign zext_ln9_fu_1762_p1 = lshr_ln9_fu_1752_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_3894[9:6] <= 4'b0000;
end
endmodule 
