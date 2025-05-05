module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_0_address1,delta_weights3_0_ce1,delta_weights3_0_we1,delta_weights3_0_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_0_address1,last_activations_0_ce1,last_activations_0_q1,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_1_address1,last_activations_1_ce1,last_activations_1_q1,grp_fu_2848_p_din0,grp_fu_2848_p_din1,grp_fu_2848_p_dout0,grp_fu_2848_p_ce,grp_fu_2852_p_din0,grp_fu_2852_p_din1,grp_fu_2852_p_dout0,grp_fu_2852_p_ce,grp_fu_2856_p_din0,grp_fu_2856_p_din1,grp_fu_2856_p_dout0,grp_fu_2856_p_ce,grp_fu_2860_p_din0,grp_fu_2860_p_din1,grp_fu_2860_p_dout0,grp_fu_2860_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 24'd1;
parameter    ap_ST_fsm_pp0_stage1 = 24'd2;
parameter    ap_ST_fsm_pp0_stage2 = 24'd4;
parameter    ap_ST_fsm_pp0_stage3 = 24'd8;
parameter    ap_ST_fsm_pp0_stage4 = 24'd16;
parameter    ap_ST_fsm_pp0_stage5 = 24'd32;
parameter    ap_ST_fsm_pp0_stage6 = 24'd64;
parameter    ap_ST_fsm_pp0_stage7 = 24'd128;
parameter    ap_ST_fsm_pp0_stage8 = 24'd256;
parameter    ap_ST_fsm_pp0_stage9 = 24'd512;
parameter    ap_ST_fsm_pp0_stage10 = 24'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 24'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 24'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 24'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 24'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 24'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 24'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 24'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 24'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 24'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 24'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 24'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 24'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 24'd8388608;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] delta_weights3_0_address0;
output   delta_weights3_0_ce0;
output   delta_weights3_0_we0;
output  [63:0] delta_weights3_0_d0;
output  [6:0] delta_weights3_0_address1;
output   delta_weights3_0_ce1;
output   delta_weights3_0_we1;
output  [63:0] delta_weights3_0_d1;
output  [6:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [6:0] delta_weights3_1_address1;
output   delta_weights3_1_ce1;
output   delta_weights3_1_we1;
output  [63:0] delta_weights3_1_d1;
input  [63:0] output_difference_0_0_val;
input  [63:0] output_difference_0_1_val;
input  [63:0] output_difference_0_2_val;
output  [4:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [4:0] last_activations_0_address1;
output   last_activations_0_ce1;
input  [63:0] last_activations_0_q1;
output  [4:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [4:0] last_activations_1_address1;
output   last_activations_1_ce1;
input  [63:0] last_activations_1_q1;
output  [63:0] grp_fu_2848_p_din0;
output  [63:0] grp_fu_2848_p_din1;
input  [63:0] grp_fu_2848_p_dout0;
output   grp_fu_2848_p_ce;
output  [63:0] grp_fu_2852_p_din0;
output  [63:0] grp_fu_2852_p_din1;
input  [63:0] grp_fu_2852_p_dout0;
output   grp_fu_2852_p_ce;
output  [63:0] grp_fu_2856_p_din0;
output  [63:0] grp_fu_2856_p_din1;
input  [63:0] grp_fu_2856_p_dout0;
output   grp_fu_2856_p_ce;
output  [63:0] grp_fu_2860_p_din0;
output  [63:0] grp_fu_2860_p_din1;
input  [63:0] grp_fu_2860_p_dout0;
output   grp_fu_2860_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_44_reg_2970;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_subdone;
reg   [63:0] reg_1322;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire    ap_block_pp0_stage23_11001;
wire    ap_block_pp0_stage0_11001;
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
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_1327;
reg   [63:0] reg_1332;
reg   [63:0] reg_1337;
reg   [6:0] i_13_reg_2955;
wire   [5:0] lshr_ln_fu_1358_p4;
reg   [5:0] lshr_ln_reg_2974;
reg   [63:0] last_activations_0_load_reg_2999;
wire   [0:0] tmp_46_fu_1407_p3;
reg   [0:0] tmp_46_reg_3006;
reg   [63:0] last_activations_1_load_reg_3033;
reg   [63:0] last_activations_0_load_1_reg_3040;
reg   [63:0] last_activations_1_load_1_reg_3047;
wire   [1:0] tmp_78_fu_1444_p4;
reg   [1:0] tmp_78_reg_3054;
wire   [1:0] tmp_79_fu_1453_p4;
reg   [1:0] tmp_79_reg_3060;
wire   [0:0] tmp_47_fu_1478_p3;
reg   [0:0] tmp_47_reg_3075;
reg   [63:0] last_activations_0_load_2_reg_3090;
reg   [63:0] last_activations_1_load_2_reg_3097;
reg   [63:0] last_activations_0_load_3_reg_3104;
reg   [63:0] last_activations_1_load_3_reg_3111;
reg   [63:0] last_activations_0_load_4_reg_3138;
reg   [63:0] last_activations_1_load_4_reg_3145;
reg   [63:0] last_activations_0_load_5_reg_3152;
reg   [63:0] last_activations_1_load_5_reg_3159;
wire   [0:0] tmp_48_fu_1530_p3;
reg   [0:0] tmp_48_reg_3166;
reg   [63:0] last_activations_0_load_6_reg_3196;
reg   [63:0] last_activations_1_load_6_reg_3203;
reg   [63:0] last_activations_0_load_7_reg_3210;
reg   [63:0] last_activations_1_load_7_reg_3217;
reg   [63:0] last_activations_0_load_8_reg_3244;
reg   [63:0] last_activations_1_load_8_reg_3251;
reg   [63:0] last_activations_0_load_9_reg_3258;
reg   [63:0] last_activations_1_load_9_reg_3265;
reg   [63:0] last_activations_0_load_10_reg_3292;
reg   [63:0] last_activations_1_load_10_reg_3299;
reg   [63:0] last_activations_0_load_11_reg_3306;
reg   [63:0] last_activations_1_load_11_reg_3313;
reg   [63:0] last_activations_0_load_12_reg_3340;
reg   [63:0] last_activations_1_load_12_reg_3347;
reg   [63:0] last_activations_0_load_13_reg_3354;
reg   [63:0] last_activations_1_load_13_reg_3361;
reg   [63:0] last_activations_0_load_14_reg_3368;
reg   [63:0] last_activations_1_load_14_reg_3375;
reg   [63:0] last_activations_0_load_15_reg_3382;
reg   [63:0] last_activations_1_load_15_reg_3389;
wire   [7:0] empty_fu_1763_p2;
reg   [7:0] empty_reg_3396;
wire   [6:0] lshr_ln2_fu_1769_p4;
reg   [6:0] lshr_ln2_reg_3431;
reg   [3:0] tmp_73_reg_3436;
reg   [2:0] tmp_76_reg_3441;
reg   [1:0] tmp_82_reg_3446;
wire   [5:0] or_ln75_1_fu_1844_p3;
reg   [5:0] or_ln75_1_reg_3451;
reg   [6:0] lshr_ln75_2_reg_3456;
wire   [6:0] zext_ln75_5_fu_1872_p1;
reg   [6:0] zext_ln75_5_reg_3462;
wire   [6:0] lshr_ln75_4_fu_1948_p4;
reg   [6:0] lshr_ln75_4_reg_3471;
reg   [6:0] lshr_ln75_6_reg_3476;
wire   [6:0] lshr_ln75_8_fu_2089_p4;
reg   [6:0] lshr_ln75_8_reg_3482;
wire   [5:0] or_ln75_3_fu_2134_p3;
reg   [5:0] or_ln75_3_reg_3487;
reg   [6:0] lshr_ln75_s_reg_3492;
wire   [6:0] zext_ln75_26_fu_2162_p1;
reg   [6:0] zext_ln75_26_reg_3498;
wire   [6:0] lshr_ln75_11_fu_2236_p4;
reg   [6:0] lshr_ln75_11_reg_3522;
reg   [6:0] lshr_ln75_13_reg_3527;
wire   [6:0] lshr_ln75_15_fu_2377_p4;
reg   [6:0] lshr_ln75_15_reg_3533;
reg   [6:0] lshr_ln75_17_reg_3538;
wire   [6:0] lshr_ln75_19_fu_2528_p4;
reg   [6:0] lshr_ln75_19_reg_3544;
reg   [6:0] lshr_ln75_21_reg_3549;
wire   [6:0] lshr_ln75_23_fu_2669_p4;
reg   [6:0] lshr_ln75_23_reg_3555;
reg   [6:0] lshr_ln75_25_reg_3560;
wire   [6:0] lshr_ln75_27_fu_2810_p4;
reg   [6:0] lshr_ln75_27_reg_3566;
reg   [6:0] lshr_ln75_29_reg_3571;
reg   [6:0] lshr_ln75_30_reg_3577;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln72_fu_1368_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] p_cast_fu_1392_p1;
wire   [63:0] p_cast5_fu_1424_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] p_cast7_fu_1438_p1;
wire   [63:0] p_cast9_fu_1472_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] p_cast11_fu_1497_p1;
wire   [63:0] p_cast13_fu_1511_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] p_cast15_fu_1524_p1;
wire   [63:0] p_cast17_fu_1556_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] p_cast19_fu_1583_p1;
wire   [63:0] p_cast21_fu_1608_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] p_cast23_fu_1625_p1;
wire   [63:0] p_cast25_fu_1639_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] p_cast27_fu_1655_p1;
wire   [63:0] p_cast29_fu_1669_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] p_cast31_fu_1682_p1;
wire   [63:0] zext_ln75_fu_1714_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln75_1_fu_1738_p1;
wire   [63:0] zext_ln75_2_fu_1779_p1;
wire   [63:0] zext_ln75_3_fu_1829_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln75_4_fu_1839_p1;
wire   [63:0] zext_ln75_6_fu_1851_p1;
wire   [63:0] zext_ln75_7_fu_1881_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln75_8_fu_1886_p1;
wire   [63:0] zext_ln75_9_fu_1905_p1;
wire   [63:0] zext_ln75_10_fu_1915_p1;
wire   [63:0] zext_ln75_11_fu_1925_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln75_12_fu_1938_p1;
wire   [63:0] zext_ln75_13_fu_1958_p1;
wire   [63:0] zext_ln75_14_fu_1978_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln75_15_fu_1988_p1;
wire   [63:0] zext_ln75_16_fu_1998_p1;
wire   [63:0] zext_ln75_17_fu_2024_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln75_18_fu_2029_p1;
wire   [63:0] zext_ln75_19_fu_2048_p1;
wire   [63:0] zext_ln75_20_fu_2058_p1;
wire   [63:0] zext_ln75_21_fu_2068_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln75_22_fu_2079_p1;
wire   [63:0] zext_ln75_23_fu_2099_p1;
wire   [63:0] zext_ln75_24_fu_2119_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln75_25_fu_2129_p1;
wire   [63:0] zext_ln75_27_fu_2141_p1;
wire   [63:0] zext_ln75_28_fu_2171_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln75_29_fu_2176_p1;
wire   [63:0] zext_ln75_30_fu_2195_p1;
wire   [63:0] zext_ln75_31_fu_2205_p1;
wire   [63:0] zext_ln75_32_fu_2215_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln75_33_fu_2226_p1;
wire   [63:0] zext_ln75_34_fu_2246_p1;
wire   [63:0] zext_ln75_35_fu_2266_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] zext_ln75_36_fu_2276_p1;
wire   [63:0] zext_ln75_37_fu_2286_p1;
wire   [63:0] zext_ln75_38_fu_2312_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] zext_ln75_39_fu_2317_p1;
wire   [63:0] zext_ln75_40_fu_2336_p1;
wire   [63:0] zext_ln75_41_fu_2346_p1;
wire   [63:0] zext_ln75_42_fu_2356_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] zext_ln75_43_fu_2367_p1;
wire   [63:0] zext_ln75_44_fu_2387_p1;
wire   [63:0] zext_ln75_45_fu_2407_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] zext_ln75_46_fu_2417_p1;
wire   [63:0] zext_ln75_47_fu_2427_p1;
wire   [63:0] zext_ln75_48_fu_2453_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] zext_ln75_49_fu_2458_p1;
wire   [63:0] zext_ln75_50_fu_2477_p1;
wire   [63:0] zext_ln75_51_fu_2487_p1;
wire   [63:0] zext_ln75_52_fu_2507_p1;
wire   [63:0] zext_ln75_53_fu_2518_p1;
wire   [63:0] zext_ln75_54_fu_2538_p1;
wire   [63:0] zext_ln75_55_fu_2558_p1;
wire   [63:0] zext_ln75_56_fu_2568_p1;
wire   [63:0] zext_ln75_57_fu_2578_p1;
wire   [63:0] zext_ln75_58_fu_2604_p1;
wire   [63:0] zext_ln75_59_fu_2609_p1;
wire   [63:0] zext_ln75_60_fu_2628_p1;
wire   [63:0] zext_ln75_61_fu_2638_p1;
wire   [63:0] zext_ln75_62_fu_2648_p1;
wire   [63:0] zext_ln75_63_fu_2659_p1;
wire   [63:0] zext_ln75_64_fu_2679_p1;
wire   [63:0] zext_ln75_65_fu_2699_p1;
wire   [63:0] zext_ln75_66_fu_2709_p1;
wire   [63:0] zext_ln75_67_fu_2719_p1;
wire   [63:0] zext_ln75_68_fu_2745_p1;
wire   [63:0] zext_ln75_69_fu_2750_p1;
wire   [63:0] zext_ln75_70_fu_2769_p1;
wire   [63:0] zext_ln75_71_fu_2779_p1;
wire   [63:0] zext_ln75_72_fu_2789_p1;
wire   [63:0] zext_ln75_73_fu_2800_p1;
wire   [63:0] zext_ln75_74_fu_2820_p1;
wire   [63:0] zext_ln75_75_fu_2840_p1;
wire   [63:0] zext_ln75_76_fu_2850_p1;
wire   [63:0] zext_ln75_77_fu_2860_p1;
wire   [63:0] zext_ln75_78_fu_2901_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln75_79_fu_2906_p1;
wire   [63:0] zext_ln75_80_fu_2910_p1;
wire   [63:0] zext_ln75_81_fu_2919_p1;
reg   [6:0] i_fu_224;
wire   [6:0] add_ln73_fu_2492_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_13;
reg    last_activations_0_ce1_local;
reg   [4:0] last_activations_0_address1_local;
reg    last_activations_0_ce0_local;
reg   [4:0] last_activations_0_address0_local;
reg    last_activations_1_ce1_local;
reg   [4:0] last_activations_1_address1_local;
reg    last_activations_1_ce0_local;
reg   [4:0] last_activations_1_address0_local;
reg    delta_weights3_0_we1_local;
reg    delta_weights3_0_ce1_local;
reg   [6:0] delta_weights3_0_address1_local;
reg    delta_weights3_0_we0_local;
reg    delta_weights3_0_ce0_local;
reg   [6:0] delta_weights3_0_address0_local;
reg    delta_weights3_1_we1_local;
reg    delta_weights3_1_ce1_local;
reg   [6:0] delta_weights3_1_address1_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
reg   [6:0] delta_weights3_1_address0_local;
reg   [63:0] grp_fu_1306_p0;
reg   [63:0] grp_fu_1306_p1;
reg   [63:0] grp_fu_1310_p0;
reg   [63:0] grp_fu_1310_p1;
reg   [63:0] grp_fu_1314_p0;
reg   [63:0] grp_fu_1314_p1;
reg   [63:0] grp_fu_1318_p0;
reg   [63:0] grp_fu_1318_p1;
wire   [3:0] tmp_s_fu_1374_p4;
wire   [4:0] tmp_72_fu_1384_p3;
wire   [2:0] tmp_74_fu_1398_p4;
wire   [4:0] tmp_75_fu_1414_p4;
wire   [4:0] tmp_77_fu_1430_p3;
wire   [4:0] tmp_80_fu_1462_p4;
wire   [4:0] tmp_81_fu_1485_p5;
wire   [4:0] tmp_83_fu_1503_p4;
wire   [4:0] tmp_84_fu_1517_p3;
wire   [2:0] tmp_85_fu_1537_p4;
wire   [4:0] tmp_86_fu_1546_p4;
wire   [1:0] tmp_87_fu_1562_p4;
wire   [4:0] tmp_88_fu_1571_p5;
wire   [0:0] tmp_49_fu_1589_p3;
wire   [4:0] tmp_89_fu_1596_p6;
wire   [4:0] tmp_90_fu_1614_p5;
wire   [4:0] tmp_91_fu_1631_p4;
wire   [4:0] tmp_92_fu_1645_p5;
wire   [4:0] tmp_93_fu_1661_p4;
wire   [4:0] tmp_94_fu_1675_p3;
wire   [4:0] tmp_45_fu_1691_p4;
wire   [6:0] p_shl5_fu_1700_p3;
wire   [6:0] zext_ln72_1_fu_1688_p1;
wire   [6:0] sub_ln75_fu_1708_p2;
wire   [4:0] tmp_fu_1720_p4;
wire   [5:0] or_ln_fu_1730_p3;
wire   [5:0] or_ln2_fu_1743_p3;
wire   [7:0] p_shl_fu_1755_p3;
wire   [7:0] or_ln73_cast_fu_1751_p1;
wire   [7:0] add_ln75_fu_1814_p2;
wire   [6:0] lshr_ln75_1_fu_1819_p4;
wire   [6:0] add_ln75_1_fu_1834_p2;
wire   [7:0] empty_82_fu_1857_p2;
wire   [6:0] add_ln75_2_fu_1875_p2;
wire   [7:0] add_ln75_3_fu_1890_p2;
wire   [6:0] lshr_ln75_3_fu_1895_p4;
wire   [6:0] add_ln75_4_fu_1910_p2;
wire   [6:0] add_ln75_5_fu_1920_p2;
wire   [5:0] or_ln75_2_fu_1931_p3;
wire   [7:0] empty_83_fu_1943_p2;
wire   [7:0] add_ln75_6_fu_1963_p2;
wire   [6:0] lshr_ln75_5_fu_1968_p4;
wire   [6:0] add_ln75_7_fu_1983_p2;
wire   [6:0] add_ln75_8_fu_1993_p2;
wire   [7:0] empty_84_fu_2004_p2;
wire   [6:0] add_ln75_9_fu_2019_p2;
wire   [7:0] add_ln75_10_fu_2033_p2;
wire   [6:0] lshr_ln75_7_fu_2038_p4;
wire   [6:0] add_ln75_11_fu_2053_p2;
wire   [6:0] add_ln75_12_fu_2063_p2;
wire   [6:0] add_ln75_13_fu_2074_p2;
wire   [7:0] empty_85_fu_2084_p2;
wire   [7:0] add_ln75_14_fu_2104_p2;
wire   [6:0] lshr_ln75_9_fu_2109_p4;
wire   [6:0] add_ln75_15_fu_2124_p2;
wire   [7:0] empty_86_fu_2147_p2;
wire   [6:0] add_ln75_16_fu_2165_p2;
wire   [7:0] add_ln75_17_fu_2180_p2;
wire   [6:0] lshr_ln75_10_fu_2185_p4;
wire   [6:0] add_ln75_18_fu_2200_p2;
wire   [6:0] add_ln75_19_fu_2210_p2;
wire   [6:0] add_ln75_20_fu_2221_p2;
wire   [7:0] empty_87_fu_2231_p2;
wire   [7:0] add_ln75_21_fu_2251_p2;
wire   [6:0] lshr_ln75_12_fu_2256_p4;
wire   [6:0] add_ln75_22_fu_2271_p2;
wire   [6:0] add_ln75_23_fu_2281_p2;
wire   [7:0] empty_88_fu_2292_p2;
wire   [6:0] add_ln75_24_fu_2307_p2;
wire   [7:0] add_ln75_25_fu_2321_p2;
wire   [6:0] lshr_ln75_14_fu_2326_p4;
wire   [6:0] add_ln75_26_fu_2341_p2;
wire   [6:0] add_ln75_27_fu_2351_p2;
wire   [6:0] add_ln75_28_fu_2362_p2;
wire   [7:0] empty_89_fu_2372_p2;
wire   [7:0] add_ln75_29_fu_2392_p2;
wire   [6:0] lshr_ln75_16_fu_2397_p4;
wire   [6:0] add_ln75_30_fu_2412_p2;
wire   [6:0] add_ln75_31_fu_2422_p2;
wire   [7:0] empty_90_fu_2433_p2;
wire   [6:0] add_ln75_32_fu_2448_p2;
wire   [7:0] add_ln75_33_fu_2462_p2;
wire   [6:0] lshr_ln75_18_fu_2467_p4;
wire   [6:0] add_ln75_34_fu_2482_p2;
wire   [6:0] add_ln75_35_fu_2502_p2;
wire   [6:0] add_ln75_36_fu_2513_p2;
wire   [7:0] empty_91_fu_2523_p2;
wire   [7:0] add_ln75_37_fu_2543_p2;
wire   [6:0] lshr_ln75_20_fu_2548_p4;
wire   [6:0] add_ln75_38_fu_2563_p2;
wire   [6:0] add_ln75_39_fu_2573_p2;
wire   [7:0] empty_92_fu_2584_p2;
wire   [6:0] add_ln75_40_fu_2599_p2;
wire   [7:0] add_ln75_41_fu_2613_p2;
wire   [6:0] lshr_ln75_22_fu_2618_p4;
wire   [6:0] add_ln75_42_fu_2633_p2;
wire   [6:0] add_ln75_43_fu_2643_p2;
wire   [6:0] add_ln75_44_fu_2654_p2;
wire   [7:0] empty_93_fu_2664_p2;
wire   [7:0] add_ln75_45_fu_2684_p2;
wire   [6:0] lshr_ln75_24_fu_2689_p4;
wire   [6:0] add_ln75_46_fu_2704_p2;
wire   [6:0] add_ln75_47_fu_2714_p2;
wire   [7:0] empty_94_fu_2725_p2;
wire   [6:0] add_ln75_48_fu_2740_p2;
wire   [7:0] add_ln75_49_fu_2754_p2;
wire   [6:0] lshr_ln75_26_fu_2759_p4;
wire   [6:0] add_ln75_50_fu_2774_p2;
wire   [6:0] add_ln75_51_fu_2784_p2;
wire   [6:0] add_ln75_52_fu_2795_p2;
wire   [7:0] empty_95_fu_2805_p2;
wire   [7:0] add_ln75_53_fu_2825_p2;
wire   [6:0] lshr_ln75_28_fu_2830_p4;
wire   [6:0] add_ln75_54_fu_2845_p2;
wire   [6:0] add_ln75_55_fu_2855_p2;
wire   [7:0] empty_96_fu_2866_p2;
wire   [7:0] add_ln75_57_fu_2881_p2;
wire   [6:0] add_ln75_56_fu_2896_p2;
wire   [6:0] add_ln75_58_fu_2914_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [23:0] ap_NS_fsm;
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
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 24'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_224 = 7'd0;
#0 ap_done_reg = 1'b0;
end
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
        end else if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_224 <= 7'd0;
    end else if (((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        i_fu_224 <= add_ln73_fu_2492_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        empty_reg_3396[7 : 1] <= empty_fu_1763_p2[7 : 1];
        lshr_ln2_reg_3431 <= {{empty_fu_1763_p2[7:1]}};
        tmp_73_reg_3436 <= {{sub_ln75_fu_1708_p2[5:2]}};
        tmp_76_reg_3441 <= {{sub_ln75_fu_1708_p2[5:3]}};
        tmp_82_reg_3446 <= {{sub_ln75_fu_1708_p2[5:4]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_13_reg_2955 <= ap_sig_allocacmp_i_13;
        lshr_ln75_19_reg_3544 <= {{empty_91_fu_2523_p2[7:1]}};
        lshr_ln_reg_2974 <= {{ap_sig_allocacmp_i_13[6:1]}};
        tmp_44_reg_2970 <= ap_sig_allocacmp_i_13[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        last_activations_0_load_10_reg_3292 <= last_activations_0_q1;
        last_activations_0_load_11_reg_3306 <= last_activations_0_q0;
        last_activations_1_load_10_reg_3299 <= last_activations_1_q1;
        last_activations_1_load_11_reg_3313 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        last_activations_0_load_12_reg_3340 <= last_activations_0_q1;
        last_activations_0_load_13_reg_3354 <= last_activations_0_q0;
        last_activations_1_load_12_reg_3347 <= last_activations_1_q1;
        last_activations_1_load_13_reg_3361 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        last_activations_0_load_14_reg_3368 <= last_activations_0_q1;
        last_activations_0_load_15_reg_3382 <= last_activations_0_q0;
        last_activations_1_load_14_reg_3375 <= last_activations_1_q1;
        last_activations_1_load_15_reg_3389 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        last_activations_0_load_1_reg_3040 <= last_activations_0_q0;
        last_activations_0_load_reg_2999 <= last_activations_0_q1;
        last_activations_1_load_1_reg_3047 <= last_activations_1_q0;
        last_activations_1_load_reg_3033 <= last_activations_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        last_activations_0_load_2_reg_3090 <= last_activations_0_q1;
        last_activations_0_load_3_reg_3104 <= last_activations_0_q0;
        last_activations_1_load_2_reg_3097 <= last_activations_1_q1;
        last_activations_1_load_3_reg_3111 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        last_activations_0_load_4_reg_3138 <= last_activations_0_q1;
        last_activations_0_load_5_reg_3152 <= last_activations_0_q0;
        last_activations_1_load_4_reg_3145 <= last_activations_1_q1;
        last_activations_1_load_5_reg_3159 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        last_activations_0_load_6_reg_3196 <= last_activations_0_q1;
        last_activations_0_load_7_reg_3210 <= last_activations_0_q0;
        last_activations_1_load_6_reg_3203 <= last_activations_1_q1;
        last_activations_1_load_7_reg_3217 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        last_activations_0_load_8_reg_3244 <= last_activations_0_q1;
        last_activations_0_load_9_reg_3258 <= last_activations_0_q0;
        last_activations_1_load_8_reg_3251 <= last_activations_1_q1;
        last_activations_1_load_9_reg_3265 <= last_activations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        lshr_ln75_11_reg_3522 <= {{empty_87_fu_2231_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        lshr_ln75_13_reg_3527 <= {{empty_88_fu_2292_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        lshr_ln75_15_reg_3533 <= {{empty_89_fu_2372_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        lshr_ln75_17_reg_3538 <= {{empty_90_fu_2433_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln75_21_reg_3549 <= {{empty_92_fu_2584_p2[7:1]}};
        tmp_46_reg_3006 <= i_13_reg_2955[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln75_23_reg_3555 <= {{empty_93_fu_2664_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln75_25_reg_3560 <= {{empty_94_fu_2725_p2[7:1]}};
        tmp_48_reg_3166 <= i_13_reg_2955[32'd5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln75_27_reg_3566 <= {{empty_95_fu_2805_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        lshr_ln75_29_reg_3571 <= {{empty_96_fu_2866_p2[7:1]}};
        lshr_ln75_30_reg_3577 <= {{add_ln75_57_fu_2881_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        lshr_ln75_2_reg_3456 <= {{empty_82_fu_1857_p2[7:1]}};
        or_ln75_1_reg_3451[5 : 2] <= or_ln75_1_fu_1844_p3[5 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        lshr_ln75_4_reg_3471 <= {{empty_83_fu_1943_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        lshr_ln75_6_reg_3476 <= {{empty_84_fu_2004_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        lshr_ln75_8_reg_3482 <= {{empty_85_fu_2084_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        lshr_ln75_s_reg_3492 <= {{empty_86_fu_2147_p2[7:1]}};
        or_ln75_3_reg_3487[5 : 4] <= or_ln75_3_fu_2134_p3[5 : 4];
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))| ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_1322 <= grp_fu_2848_p_dout0;
        reg_1327 <= grp_fu_2852_p_dout0;
        reg_1332 <= grp_fu_2856_p_dout0;
        reg_1337 <= grp_fu_2860_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_47_reg_3075 <= i_13_reg_2955[32'd2];
        tmp_78_reg_3054 <= {{i_13_reg_2955[5:4]}};
        tmp_79_reg_3060 <= {{i_13_reg_2955[2:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        zext_ln75_26_reg_3498[5 : 4] <= zext_ln75_26_fu_2162_p1[5 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        zext_ln75_5_reg_3462[5 : 2] <= zext_ln75_5_fu_1872_p1[5 : 2];
    end
end
always @ (*) begin
    if (((tmp_44_reg_2970 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_13 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_13 = i_fu_224;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        delta_weights3_0_address0_local = zext_ln75_80_fu_2910_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights3_0_address0_local = zext_ln75_77_fu_2860_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights3_0_address0_local = zext_ln75_73_fu_2800_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_0_address0_local = zext_ln75_70_fu_2769_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_0_address0_local = zext_ln75_67_fu_2719_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_0_address0_local = zext_ln75_63_fu_2659_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_0_address0_local = zext_ln75_60_fu_2628_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_0_address0_local = zext_ln75_57_fu_2578_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_0_address0_local = zext_ln75_53_fu_2518_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        delta_weights3_0_address0_local = zext_ln75_50_fu_2477_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        delta_weights3_0_address0_local = zext_ln75_47_fu_2427_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        delta_weights3_0_address0_local = zext_ln75_43_fu_2367_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        delta_weights3_0_address0_local = zext_ln75_40_fu_2336_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        delta_weights3_0_address0_local = zext_ln75_37_fu_2286_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        delta_weights3_0_address0_local = zext_ln75_33_fu_2226_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        delta_weights3_0_address0_local = zext_ln75_30_fu_2195_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        delta_weights3_0_address0_local = zext_ln75_27_fu_2141_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        delta_weights3_0_address0_local = zext_ln75_22_fu_2079_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        delta_weights3_0_address0_local = zext_ln75_19_fu_2048_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        delta_weights3_0_address0_local = zext_ln75_16_fu_1998_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        delta_weights3_0_address0_local = zext_ln75_12_fu_1938_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_0_address0_local = zext_ln75_9_fu_1905_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_0_address0_local = zext_ln75_6_fu_1851_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_0_address0_local = zext_ln75_1_fu_1738_p1;
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        delta_weights3_0_address1_local = zext_ln75_78_fu_2901_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights3_0_address1_local = zext_ln75_75_fu_2840_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights3_0_address1_local = zext_ln75_72_fu_2789_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_0_address1_local = zext_ln75_68_fu_2745_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_0_address1_local = zext_ln75_65_fu_2699_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_0_address1_local = zext_ln75_62_fu_2648_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_0_address1_local = zext_ln75_58_fu_2604_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_0_address1_local = zext_ln75_55_fu_2558_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_0_address1_local = zext_ln75_52_fu_2507_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        delta_weights3_0_address1_local = zext_ln75_48_fu_2453_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        delta_weights3_0_address1_local = zext_ln75_45_fu_2407_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        delta_weights3_0_address1_local = zext_ln75_42_fu_2356_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        delta_weights3_0_address1_local = zext_ln75_38_fu_2312_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        delta_weights3_0_address1_local = zext_ln75_35_fu_2266_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        delta_weights3_0_address1_local = zext_ln75_32_fu_2215_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        delta_weights3_0_address1_local = zext_ln75_28_fu_2171_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        delta_weights3_0_address1_local = zext_ln75_24_fu_2119_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        delta_weights3_0_address1_local = zext_ln75_21_fu_2068_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        delta_weights3_0_address1_local = zext_ln75_17_fu_2024_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        delta_weights3_0_address1_local = zext_ln75_14_fu_1978_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        delta_weights3_0_address1_local = zext_ln75_11_fu_1925_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_0_address1_local = zext_ln75_7_fu_1881_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_0_address1_local = zext_ln75_3_fu_1829_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_0_address1_local = zext_ln75_fu_1714_p1;
    end else begin
        delta_weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))| ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))| ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_0_ce1_local = 1'b1;
    end else begin
        delta_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))| ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))| ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_0_we1_local = 1'b1;
    end else begin
        delta_weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        delta_weights3_1_address0_local = zext_ln75_81_fu_2919_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights3_1_address0_local = zext_ln75_77_fu_2860_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights3_1_address0_local = zext_ln75_74_fu_2820_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_1_address0_local = zext_ln75_71_fu_2779_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_1_address0_local = zext_ln75_67_fu_2719_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_1_address0_local = zext_ln75_64_fu_2679_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_1_address0_local = zext_ln75_61_fu_2638_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_1_address0_local = zext_ln75_57_fu_2578_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_1_address0_local = zext_ln75_54_fu_2538_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        delta_weights3_1_address0_local = zext_ln75_51_fu_2487_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        delta_weights3_1_address0_local = zext_ln75_47_fu_2427_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        delta_weights3_1_address0_local = zext_ln75_44_fu_2387_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        delta_weights3_1_address0_local = zext_ln75_41_fu_2346_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        delta_weights3_1_address0_local = zext_ln75_37_fu_2286_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        delta_weights3_1_address0_local = zext_ln75_34_fu_2246_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        delta_weights3_1_address0_local = zext_ln75_31_fu_2205_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        delta_weights3_1_address0_local = zext_ln75_27_fu_2141_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        delta_weights3_1_address0_local = zext_ln75_23_fu_2099_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        delta_weights3_1_address0_local = zext_ln75_20_fu_2058_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        delta_weights3_1_address0_local = zext_ln75_16_fu_1998_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        delta_weights3_1_address0_local = zext_ln75_13_fu_1958_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_1_address0_local = zext_ln75_10_fu_1915_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_1_address0_local = zext_ln75_6_fu_1851_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_1_address0_local = zext_ln75_2_fu_1779_p1;
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        delta_weights3_1_address1_local = zext_ln75_79_fu_2906_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        delta_weights3_1_address1_local = zext_ln75_76_fu_2850_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        delta_weights3_1_address1_local = zext_ln75_72_fu_2789_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        delta_weights3_1_address1_local = zext_ln75_69_fu_2750_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        delta_weights3_1_address1_local = zext_ln75_66_fu_2709_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights3_1_address1_local = zext_ln75_62_fu_2648_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights3_1_address1_local = zext_ln75_59_fu_2609_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_1_address1_local = zext_ln75_56_fu_2568_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_1_address1_local = zext_ln75_52_fu_2507_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        delta_weights3_1_address1_local = zext_ln75_49_fu_2458_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        delta_weights3_1_address1_local = zext_ln75_46_fu_2417_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        delta_weights3_1_address1_local = zext_ln75_42_fu_2356_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        delta_weights3_1_address1_local = zext_ln75_39_fu_2317_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        delta_weights3_1_address1_local = zext_ln75_36_fu_2276_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        delta_weights3_1_address1_local = zext_ln75_32_fu_2215_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        delta_weights3_1_address1_local = zext_ln75_29_fu_2176_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        delta_weights3_1_address1_local = zext_ln75_25_fu_2129_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        delta_weights3_1_address1_local = zext_ln75_21_fu_2068_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        delta_weights3_1_address1_local = zext_ln75_18_fu_2029_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        delta_weights3_1_address1_local = zext_ln75_15_fu_1988_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        delta_weights3_1_address1_local = zext_ln75_11_fu_1925_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        delta_weights3_1_address1_local = zext_ln75_8_fu_1886_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        delta_weights3_1_address1_local = zext_ln75_4_fu_1839_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        delta_weights3_1_address1_local = zext_ln75_fu_1714_p1;
    end else begin
        delta_weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))| ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))| ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))| ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_44_reg_2970 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))| ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1306_p0 = last_activations_0_load_15_reg_3382;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1306_p0 = last_activations_1_load_14_reg_3375;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1306_p0 = last_activations_0_load_14_reg_3368;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1306_p0 = last_activations_0_load_13_reg_3354;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1306_p0 = last_activations_1_load_12_reg_3347;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1306_p0 = last_activations_0_load_12_reg_3340;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1306_p0 = last_activations_0_load_11_reg_3306;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1306_p0 = last_activations_1_load_10_reg_3299;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1306_p0 = last_activations_0_load_10_reg_3292;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1306_p0 = last_activations_0_load_9_reg_3258;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1306_p0 = last_activations_1_load_8_reg_3251;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1306_p0 = last_activations_0_load_8_reg_3244;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1306_p0 = last_activations_0_load_7_reg_3210;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1306_p0 = last_activations_1_load_6_reg_3203;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1306_p0 = last_activations_0_load_6_reg_3196;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1306_p0 = last_activations_0_load_5_reg_3152;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1306_p0 = last_activations_1_load_4_reg_3145;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1306_p0 = last_activations_0_load_4_reg_3138;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1306_p0 = last_activations_0_load_3_reg_3104;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1306_p0 = last_activations_1_load_2_reg_3097;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1306_p0 = last_activations_0_load_2_reg_3090;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1306_p0 = last_activations_0_load_1_reg_3040;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1306_p0 = last_activations_1_load_reg_3033;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1306_p0 = last_activations_0_load_reg_2999;
    end else begin
        grp_fu_1306_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1306_p1 = output_difference_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1306_p1 = output_difference_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1306_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_1306_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1310_p0 = last_activations_1_load_15_reg_3389;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1310_p0 = last_activations_1_load_14_reg_3375;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1310_p0 = last_activations_0_load_14_reg_3368;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1310_p0 = last_activations_1_load_13_reg_3361;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1310_p0 = last_activations_1_load_12_reg_3347;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1310_p0 = last_activations_0_load_12_reg_3340;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1310_p0 = last_activations_1_load_11_reg_3313;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1310_p0 = last_activations_1_load_10_reg_3299;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1310_p0 = last_activations_0_load_10_reg_3292;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1310_p0 = last_activations_1_load_9_reg_3265;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1310_p0 = last_activations_1_load_8_reg_3251;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1310_p0 = last_activations_0_load_8_reg_3244;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1310_p0 = last_activations_1_load_7_reg_3217;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1310_p0 = last_activations_1_load_6_reg_3203;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1310_p0 = last_activations_0_load_6_reg_3196;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1310_p0 = last_activations_1_load_5_reg_3159;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1310_p0 = last_activations_1_load_4_reg_3145;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1310_p0 = last_activations_0_load_4_reg_3138;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1310_p0 = last_activations_1_load_3_reg_3111;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1310_p0 = last_activations_1_load_2_reg_3097;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1310_p0 = last_activations_0_load_2_reg_3090;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1310_p0 = last_activations_1_load_1_reg_3047;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1310_p0 = last_activations_1_load_reg_3033;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1310_p0 = last_activations_0_load_reg_2999;
    end else begin
        grp_fu_1310_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1310_p1 = output_difference_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1310_p1 = output_difference_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1310_p1 = output_difference_0_1_val;
    end else begin
        grp_fu_1310_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1314_p0 = last_activations_1_load_15_reg_3389;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1314_p0 = last_activations_0_load_15_reg_3382;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1314_p0 = last_activations_0_load_14_reg_3368;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1314_p0 = last_activations_1_load_13_reg_3361;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1314_p0 = last_activations_0_load_13_reg_3354;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1314_p0 = last_activations_0_load_12_reg_3340;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1314_p0 = last_activations_1_load_11_reg_3313;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1314_p0 = last_activations_0_load_11_reg_3306;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1314_p0 = last_activations_0_load_10_reg_3292;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1314_p0 = last_activations_1_load_9_reg_3265;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1314_p0 = last_activations_0_load_9_reg_3258;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1314_p0 = last_activations_0_load_8_reg_3244;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1314_p0 = last_activations_1_load_7_reg_3217;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1314_p0 = last_activations_0_load_7_reg_3210;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1314_p0 = last_activations_0_load_6_reg_3196;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1314_p0 = last_activations_1_load_5_reg_3159;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1314_p0 = last_activations_0_load_5_reg_3152;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1314_p0 = last_activations_0_load_4_reg_3138;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1314_p0 = last_activations_1_load_3_reg_3111;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1314_p0 = last_activations_0_load_3_reg_3104;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1314_p0 = last_activations_0_load_2_reg_3090;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1314_p0 = last_activations_1_load_1_reg_3047;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1314_p0 = last_activations_0_load_1_reg_3040;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1314_p0 = last_activations_0_load_reg_2999;
    end else begin
        grp_fu_1314_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1314_p1 = output_difference_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1314_p1 = output_difference_0_0_val;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1314_p1 = output_difference_0_2_val;
    end else begin
        grp_fu_1314_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1318_p0 = last_activations_1_load_15_reg_3389;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1318_p0 = last_activations_0_load_15_reg_3382;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1318_p0 = last_activations_1_load_14_reg_3375;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_1318_p0 = last_activations_1_load_13_reg_3361;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1318_p0 = last_activations_0_load_13_reg_3354;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1318_p0 = last_activations_1_load_12_reg_3347;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1318_p0 = last_activations_1_load_11_reg_3313;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1318_p0 = last_activations_0_load_11_reg_3306;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1318_p0 = last_activations_1_load_10_reg_3299;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1318_p0 = last_activations_1_load_9_reg_3265;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1318_p0 = last_activations_0_load_9_reg_3258;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_1318_p0 = last_activations_1_load_8_reg_3251;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1318_p0 = last_activations_1_load_7_reg_3217;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1318_p0 = last_activations_0_load_7_reg_3210;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1318_p0 = last_activations_1_load_6_reg_3203;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1318_p0 = last_activations_1_load_5_reg_3159;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1318_p0 = last_activations_0_load_5_reg_3152;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1318_p0 = last_activations_1_load_4_reg_3145;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1318_p0 = last_activations_1_load_3_reg_3111;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1318_p0 = last_activations_0_load_3_reg_3104;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1318_p0 = last_activations_1_load_2_reg_3097;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1318_p0 = last_activations_1_load_1_reg_3047;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1318_p0 = last_activations_0_load_1_reg_3040;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1318_p0 = last_activations_1_load_reg_3033;
    end else begin
        grp_fu_1318_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1318_p1 = output_difference_0_2_val;
    end else if ((((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1318_p1 = output_difference_0_1_val;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1318_p1 = output_difference_0_0_val;
    end else begin
        grp_fu_1318_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            last_activations_0_address0_local = p_cast31_fu_1682_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            last_activations_0_address0_local = p_cast27_fu_1655_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            last_activations_0_address0_local = p_cast23_fu_1625_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            last_activations_0_address0_local = p_cast19_fu_1583_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            last_activations_0_address0_local = p_cast15_fu_1524_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            last_activations_0_address0_local = p_cast11_fu_1497_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_0_address0_local = p_cast7_fu_1438_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_0_address0_local = p_cast_fu_1392_p1;
        end else begin
            last_activations_0_address0_local = 'bx;
        end
    end else begin
        last_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            last_activations_0_address1_local = p_cast29_fu_1669_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            last_activations_0_address1_local = p_cast25_fu_1639_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            last_activations_0_address1_local = p_cast21_fu_1608_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            last_activations_0_address1_local = p_cast17_fu_1556_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            last_activations_0_address1_local = p_cast13_fu_1511_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            last_activations_0_address1_local = p_cast9_fu_1472_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_0_address1_local = p_cast5_fu_1424_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_0_address1_local = zext_ln72_fu_1368_p1;
        end else begin
            last_activations_0_address1_local = 'bx;
        end
    end else begin
        last_activations_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_0_ce0_local = 1'b1;
    end else begin
        last_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_0_ce1_local = 1'b1;
    end else begin
        last_activations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            last_activations_1_address0_local = p_cast31_fu_1682_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            last_activations_1_address0_local = p_cast27_fu_1655_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            last_activations_1_address0_local = p_cast23_fu_1625_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            last_activations_1_address0_local = p_cast19_fu_1583_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            last_activations_1_address0_local = p_cast15_fu_1524_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            last_activations_1_address0_local = p_cast11_fu_1497_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_1_address0_local = p_cast7_fu_1438_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_1_address0_local = p_cast_fu_1392_p1;
        end else begin
            last_activations_1_address0_local = 'bx;
        end
    end else begin
        last_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            last_activations_1_address1_local = p_cast29_fu_1669_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            last_activations_1_address1_local = p_cast25_fu_1639_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            last_activations_1_address1_local = p_cast21_fu_1608_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            last_activations_1_address1_local = p_cast17_fu_1556_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            last_activations_1_address1_local = p_cast13_fu_1511_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            last_activations_1_address1_local = p_cast9_fu_1472_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            last_activations_1_address1_local = p_cast5_fu_1424_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            last_activations_1_address1_local = zext_ln72_fu_1368_p1;
        end else begin
            last_activations_1_address1_local = 'bx;
        end
    end else begin
        last_activations_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        last_activations_1_ce1_local = 1'b1;
    end else begin
        last_activations_1_ce1_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln73_fu_2492_p2 = (i_13_reg_2955 + 7'd32);
assign add_ln75_10_fu_2033_p2 = (empty_reg_3396 + 8'd19);
assign add_ln75_11_fu_2053_p2 = (lshr_ln75_6_reg_3476 + 7'd1);
assign add_ln75_12_fu_2063_p2 = (zext_ln75_5_reg_3462 + 7'd9);
assign add_ln75_13_fu_2074_p2 = (zext_ln75_5_reg_3462 + 7'd10);
assign add_ln75_14_fu_2104_p2 = (empty_reg_3396 + 8'd25);
assign add_ln75_15_fu_2124_p2 = (lshr_ln75_8_reg_3482 + 7'd1);
assign add_ln75_16_fu_2165_p2 = (zext_ln75_26_fu_2162_p1 + 7'd1);
assign add_ln75_17_fu_2180_p2 = (empty_reg_3396 + 8'd31);
assign add_ln75_18_fu_2200_p2 = (lshr_ln75_s_reg_3492 + 7'd1);
assign add_ln75_19_fu_2210_p2 = (zext_ln75_26_reg_3498 + 7'd3);
assign add_ln75_1_fu_1834_p2 = (lshr_ln2_reg_3431 + 7'd1);
assign add_ln75_20_fu_2221_p2 = (zext_ln75_26_reg_3498 + 7'd4);
assign add_ln75_21_fu_2251_p2 = (empty_reg_3396 + 8'd37);
assign add_ln75_22_fu_2271_p2 = (lshr_ln75_11_reg_3522 + 7'd1);
assign add_ln75_23_fu_2281_p2 = (zext_ln75_26_reg_3498 + 7'd6);
assign add_ln75_24_fu_2307_p2 = (zext_ln75_26_reg_3498 + 7'd7);
assign add_ln75_25_fu_2321_p2 = (empty_reg_3396 + 8'd43);
assign add_ln75_26_fu_2341_p2 = (lshr_ln75_13_reg_3527 + 7'd1);
assign add_ln75_27_fu_2351_p2 = (zext_ln75_26_reg_3498 + 7'd9);
assign add_ln75_28_fu_2362_p2 = (zext_ln75_26_reg_3498 + 7'd10);
assign add_ln75_29_fu_2392_p2 = (empty_reg_3396 + 8'd49);
assign add_ln75_2_fu_1875_p2 = (zext_ln75_5_fu_1872_p1 + 7'd1);
assign add_ln75_30_fu_2412_p2 = (lshr_ln75_15_reg_3533 + 7'd1);
assign add_ln75_31_fu_2422_p2 = (zext_ln75_26_reg_3498 + 7'd12);
assign add_ln75_32_fu_2448_p2 = (zext_ln75_26_reg_3498 + 7'd13);
assign add_ln75_33_fu_2462_p2 = (empty_reg_3396 + 8'd55);
assign add_ln75_34_fu_2482_p2 = (lshr_ln75_17_reg_3538 + 7'd1);
assign add_ln75_35_fu_2502_p2 = (zext_ln75_26_reg_3498 + 7'd15);
assign add_ln75_36_fu_2513_p2 = (zext_ln75_26_reg_3498 + 7'd16);
assign add_ln75_37_fu_2543_p2 = (empty_reg_3396 + 8'd61);
assign add_ln75_38_fu_2563_p2 = (lshr_ln75_19_reg_3544 + 7'd1);
assign add_ln75_39_fu_2573_p2 = (zext_ln75_26_reg_3498 + 7'd18);
assign add_ln75_3_fu_1890_p2 = (empty_reg_3396 + 8'd7);
assign add_ln75_40_fu_2599_p2 = (zext_ln75_26_reg_3498 + 7'd19);
assign add_ln75_41_fu_2613_p2 = (empty_reg_3396 + 8'd67);
assign add_ln75_42_fu_2633_p2 = (lshr_ln75_21_reg_3549 + 7'd1);
assign add_ln75_43_fu_2643_p2 = (zext_ln75_26_reg_3498 + 7'd21);
assign add_ln75_44_fu_2654_p2 = (zext_ln75_26_reg_3498 + 7'd22);
assign add_ln75_45_fu_2684_p2 = (empty_reg_3396 + 8'd73);
assign add_ln75_46_fu_2704_p2 = (lshr_ln75_23_reg_3555 + 7'd1);
assign add_ln75_47_fu_2714_p2 = (zext_ln75_26_reg_3498 + 7'd24);
assign add_ln75_48_fu_2740_p2 = (zext_ln75_26_reg_3498 + 7'd25);
assign add_ln75_49_fu_2754_p2 = (empty_reg_3396 + 8'd79);
assign add_ln75_4_fu_1910_p2 = (lshr_ln75_2_reg_3456 + 7'd1);
assign add_ln75_50_fu_2774_p2 = (lshr_ln75_25_reg_3560 + 7'd1);
assign add_ln75_51_fu_2784_p2 = (zext_ln75_26_reg_3498 + 7'd27);
assign add_ln75_52_fu_2795_p2 = (zext_ln75_26_reg_3498 + 7'd28);
assign add_ln75_53_fu_2825_p2 = (empty_reg_3396 + 8'd85);
assign add_ln75_54_fu_2845_p2 = (lshr_ln75_27_reg_3566 + 7'd1);
assign add_ln75_55_fu_2855_p2 = (zext_ln75_26_reg_3498 + 7'd30);
assign add_ln75_56_fu_2896_p2 = (zext_ln75_26_reg_3498 + 7'd31);
assign add_ln75_57_fu_2881_p2 = (empty_reg_3396 + 8'd91);
assign add_ln75_58_fu_2914_p2 = (lshr_ln75_29_reg_3571 + 7'd1);
assign add_ln75_5_fu_1920_p2 = (zext_ln75_5_reg_3462 + 7'd3);
assign add_ln75_6_fu_1963_p2 = (empty_reg_3396 + 8'd13);
assign add_ln75_7_fu_1983_p2 = (lshr_ln75_4_reg_3471 + 7'd1);
assign add_ln75_8_fu_1993_p2 = (zext_ln75_5_reg_3462 + 7'd6);
assign add_ln75_9_fu_2019_p2 = (zext_ln75_5_reg_3462 + 7'd7);
assign add_ln75_fu_1814_p2 = (empty_reg_3396 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
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
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign delta_weights3_0_address0 = delta_weights3_0_address0_local;
assign delta_weights3_0_address1 = delta_weights3_0_address1_local;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_ce1 = delta_weights3_0_ce1_local;
assign delta_weights3_0_d0 = reg_1332;
assign delta_weights3_0_d1 = reg_1322;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_0_we1 = delta_weights3_0_we1_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_address1 = delta_weights3_1_address1_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = reg_1337;
assign delta_weights3_1_d1 = reg_1327;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign empty_82_fu_1857_p2 = (empty_reg_3396 + 8'd6);
assign empty_83_fu_1943_p2 = (empty_reg_3396 + 8'd12);
assign empty_84_fu_2004_p2 = (empty_reg_3396 + 8'd18);
assign empty_85_fu_2084_p2 = (empty_reg_3396 + 8'd24);
assign empty_86_fu_2147_p2 = (empty_reg_3396 + 8'd30);
assign empty_87_fu_2231_p2 = (empty_reg_3396 + 8'd36);
assign empty_88_fu_2292_p2 = (empty_reg_3396 + 8'd42);
assign empty_89_fu_2372_p2 = (empty_reg_3396 + 8'd48);
assign empty_90_fu_2433_p2 = (empty_reg_3396 + 8'd54);
assign empty_91_fu_2523_p2 = (empty_reg_3396 + 8'd60);
assign empty_92_fu_2584_p2 = (empty_reg_3396 + 8'd66);
assign empty_93_fu_2664_p2 = (empty_reg_3396 + 8'd72);
assign empty_94_fu_2725_p2 = (empty_reg_3396 + 8'd78);
assign empty_95_fu_2805_p2 = (empty_reg_3396 + 8'd84);
assign empty_96_fu_2866_p2 = (empty_reg_3396 + 8'd90);
assign empty_fu_1763_p2 = (p_shl_fu_1755_p3 - or_ln73_cast_fu_1751_p1);
assign grp_fu_2848_p_ce = 1'b1;
assign grp_fu_2848_p_din0 = grp_fu_1306_p0;
assign grp_fu_2848_p_din1 = grp_fu_1306_p1;
assign grp_fu_2852_p_ce = 1'b1;
assign grp_fu_2852_p_din0 = grp_fu_1310_p0;
assign grp_fu_2852_p_din1 = grp_fu_1310_p1;
assign grp_fu_2856_p_ce = 1'b1;
assign grp_fu_2856_p_din0 = grp_fu_1314_p0;
assign grp_fu_2856_p_din1 = grp_fu_1314_p1;
assign grp_fu_2860_p_ce = 1'b1;
assign grp_fu_2860_p_din0 = grp_fu_1318_p0;
assign grp_fu_2860_p_din1 = grp_fu_1318_p1;
assign last_activations_0_address0 = last_activations_0_address0_local;
assign last_activations_0_address1 = last_activations_0_address1_local;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_0_ce1 = last_activations_0_ce1_local;
assign last_activations_1_address0 = last_activations_1_address0_local;
assign last_activations_1_address1 = last_activations_1_address1_local;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_1_ce1 = last_activations_1_ce1_local;
assign lshr_ln2_fu_1769_p4 = {{empty_fu_1763_p2[7:1]}};
assign lshr_ln75_10_fu_2185_p4 = {{add_ln75_17_fu_2180_p2[7:1]}};
assign lshr_ln75_11_fu_2236_p4 = {{empty_87_fu_2231_p2[7:1]}};
assign lshr_ln75_12_fu_2256_p4 = {{add_ln75_21_fu_2251_p2[7:1]}};
assign lshr_ln75_14_fu_2326_p4 = {{add_ln75_25_fu_2321_p2[7:1]}};
assign lshr_ln75_15_fu_2377_p4 = {{empty_89_fu_2372_p2[7:1]}};
assign lshr_ln75_16_fu_2397_p4 = {{add_ln75_29_fu_2392_p2[7:1]}};
assign lshr_ln75_18_fu_2467_p4 = {{add_ln75_33_fu_2462_p2[7:1]}};
assign lshr_ln75_19_fu_2528_p4 = {{empty_91_fu_2523_p2[7:1]}};
assign lshr_ln75_1_fu_1819_p4 = {{add_ln75_fu_1814_p2[7:1]}};
assign lshr_ln75_20_fu_2548_p4 = {{add_ln75_37_fu_2543_p2[7:1]}};
assign lshr_ln75_22_fu_2618_p4 = {{add_ln75_41_fu_2613_p2[7:1]}};
assign lshr_ln75_23_fu_2669_p4 = {{empty_93_fu_2664_p2[7:1]}};
assign lshr_ln75_24_fu_2689_p4 = {{add_ln75_45_fu_2684_p2[7:1]}};
assign lshr_ln75_26_fu_2759_p4 = {{add_ln75_49_fu_2754_p2[7:1]}};
assign lshr_ln75_27_fu_2810_p4 = {{empty_95_fu_2805_p2[7:1]}};
assign lshr_ln75_28_fu_2830_p4 = {{add_ln75_53_fu_2825_p2[7:1]}};
assign lshr_ln75_3_fu_1895_p4 = {{add_ln75_3_fu_1890_p2[7:1]}};
assign lshr_ln75_4_fu_1948_p4 = {{empty_83_fu_1943_p2[7:1]}};
assign lshr_ln75_5_fu_1968_p4 = {{add_ln75_6_fu_1963_p2[7:1]}};
assign lshr_ln75_7_fu_2038_p4 = {{add_ln75_10_fu_2033_p2[7:1]}};
assign lshr_ln75_8_fu_2089_p4 = {{empty_85_fu_2084_p2[7:1]}};
assign lshr_ln75_9_fu_2109_p4 = {{add_ln75_14_fu_2104_p2[7:1]}};
assign lshr_ln_fu_1358_p4 = {{ap_sig_allocacmp_i_13[6:1]}};
assign or_ln2_fu_1743_p3 = {{tmp_45_fu_1691_p4}, {1'd1}};
assign or_ln73_cast_fu_1751_p1 = or_ln2_fu_1743_p3;
assign or_ln75_1_fu_1844_p3 = {{tmp_73_reg_3436}, {2'd3}};
assign or_ln75_2_fu_1931_p3 = {{tmp_76_reg_3441}, {3'd7}};
assign or_ln75_3_fu_2134_p3 = {{tmp_82_reg_3446}, {4'd15}};
assign or_ln_fu_1730_p3 = {{tmp_fu_1720_p4}, {1'd1}};
assign p_cast11_fu_1497_p1 = tmp_81_fu_1485_p5;
assign p_cast13_fu_1511_p1 = tmp_83_fu_1503_p4;
assign p_cast15_fu_1524_p1 = tmp_84_fu_1517_p3;
assign p_cast17_fu_1556_p1 = tmp_86_fu_1546_p4;
assign p_cast19_fu_1583_p1 = tmp_88_fu_1571_p5;
assign p_cast21_fu_1608_p1 = tmp_89_fu_1596_p6;
assign p_cast23_fu_1625_p1 = tmp_90_fu_1614_p5;
assign p_cast25_fu_1639_p1 = tmp_91_fu_1631_p4;
assign p_cast27_fu_1655_p1 = tmp_92_fu_1645_p5;
assign p_cast29_fu_1669_p1 = tmp_93_fu_1661_p4;
assign p_cast31_fu_1682_p1 = tmp_94_fu_1675_p3;
assign p_cast5_fu_1424_p1 = tmp_75_fu_1414_p4;
assign p_cast7_fu_1438_p1 = tmp_77_fu_1430_p3;
assign p_cast9_fu_1472_p1 = tmp_80_fu_1462_p4;
assign p_cast_fu_1392_p1 = tmp_72_fu_1384_p3;
assign p_shl5_fu_1700_p3 = {{tmp_45_fu_1691_p4}, {2'd0}};
assign p_shl_fu_1755_p3 = {{tmp_45_fu_1691_p4}, {3'd4}};
assign sub_ln75_fu_1708_p2 = (p_shl5_fu_1700_p3 - zext_ln72_1_fu_1688_p1);
assign tmp_45_fu_1691_p4 = {{i_13_reg_2955[5:1]}};
assign tmp_46_fu_1407_p3 = i_13_reg_2955[32'd1];
assign tmp_47_fu_1478_p3 = i_13_reg_2955[32'd2];
assign tmp_48_fu_1530_p3 = i_13_reg_2955[32'd5];
assign tmp_49_fu_1589_p3 = i_13_reg_2955[32'd3];
assign tmp_72_fu_1384_p3 = {{tmp_s_fu_1374_p4}, {1'd1}};
assign tmp_74_fu_1398_p4 = {{i_13_reg_2955[5:3]}};
assign tmp_75_fu_1414_p4 = {{{tmp_74_fu_1398_p4}, {1'd1}}, {tmp_46_fu_1407_p3}};
assign tmp_77_fu_1430_p3 = {{tmp_74_fu_1398_p4}, {2'd3}};
assign tmp_78_fu_1444_p4 = {{i_13_reg_2955[5:4]}};
assign tmp_79_fu_1453_p4 = {{i_13_reg_2955[2:1]}};
assign tmp_80_fu_1462_p4 = {{{tmp_78_fu_1444_p4}, {1'd1}}, {tmp_79_fu_1453_p4}};
assign tmp_81_fu_1485_p5 = {{{{tmp_78_fu_1444_p4}, {1'd1}}, {tmp_47_fu_1478_p3}}, {1'd1}};
assign tmp_83_fu_1503_p4 = {{{tmp_78_reg_3054}, {2'd3}}, {tmp_46_reg_3006}};
assign tmp_84_fu_1517_p3 = {{tmp_78_reg_3054}, {3'd7}};
assign tmp_85_fu_1537_p4 = {{i_13_reg_2955[3:1]}};
assign tmp_86_fu_1546_p4 = {{{tmp_48_fu_1530_p3}, {1'd1}}, {tmp_85_fu_1537_p4}};
assign tmp_87_fu_1562_p4 = {{i_13_reg_2955[3:2]}};
assign tmp_88_fu_1571_p5 = {{{{tmp_48_fu_1530_p3}, {1'd1}}, {tmp_87_fu_1562_p4}}, {1'd1}};
assign tmp_89_fu_1596_p6 = {{{{{tmp_48_reg_3166}, {1'd1}}, {tmp_49_fu_1589_p3}}, {1'd1}}, {tmp_46_reg_3006}};
assign tmp_90_fu_1614_p5 = {{{{tmp_48_reg_3166}, {1'd1}}, {tmp_49_fu_1589_p3}}, {2'd3}};
assign tmp_91_fu_1631_p4 = {{{tmp_48_reg_3166}, {2'd3}}, {tmp_79_reg_3060}};
assign tmp_92_fu_1645_p5 = {{{{tmp_48_reg_3166}, {2'd3}}, {tmp_47_reg_3075}}, {1'd1}};
assign tmp_93_fu_1661_p4 = {{{tmp_48_reg_3166}, {3'd7}}, {tmp_46_reg_3006}};
assign tmp_94_fu_1675_p3 = {{tmp_48_reg_3166}, {4'd15}};
assign tmp_fu_1720_p4 = {{sub_ln75_fu_1708_p2[5:1]}};
assign tmp_s_fu_1374_p4 = {{ap_sig_allocacmp_i_13[5:2]}};
assign zext_ln72_1_fu_1688_p1 = lshr_ln_reg_2974;
assign zext_ln72_fu_1368_p1 = lshr_ln_fu_1358_p4;
assign zext_ln75_10_fu_1915_p1 = add_ln75_4_fu_1910_p2;
assign zext_ln75_11_fu_1925_p1 = add_ln75_5_fu_1920_p2;
assign zext_ln75_12_fu_1938_p1 = or_ln75_2_fu_1931_p3;
assign zext_ln75_13_fu_1958_p1 = lshr_ln75_4_fu_1948_p4;
assign zext_ln75_14_fu_1978_p1 = lshr_ln75_5_fu_1968_p4;
assign zext_ln75_15_fu_1988_p1 = add_ln75_7_fu_1983_p2;
assign zext_ln75_16_fu_1998_p1 = add_ln75_8_fu_1993_p2;
assign zext_ln75_17_fu_2024_p1 = add_ln75_9_fu_2019_p2;
assign zext_ln75_18_fu_2029_p1 = lshr_ln75_6_reg_3476;
assign zext_ln75_19_fu_2048_p1 = lshr_ln75_7_fu_2038_p4;
assign zext_ln75_1_fu_1738_p1 = or_ln_fu_1730_p3;
assign zext_ln75_20_fu_2058_p1 = add_ln75_11_fu_2053_p2;
assign zext_ln75_21_fu_2068_p1 = add_ln75_12_fu_2063_p2;
assign zext_ln75_22_fu_2079_p1 = add_ln75_13_fu_2074_p2;
assign zext_ln75_23_fu_2099_p1 = lshr_ln75_8_fu_2089_p4;
assign zext_ln75_24_fu_2119_p1 = lshr_ln75_9_fu_2109_p4;
assign zext_ln75_25_fu_2129_p1 = add_ln75_15_fu_2124_p2;
assign zext_ln75_26_fu_2162_p1 = or_ln75_3_reg_3487;
assign zext_ln75_27_fu_2141_p1 = or_ln75_3_fu_2134_p3;
assign zext_ln75_28_fu_2171_p1 = add_ln75_16_fu_2165_p2;
assign zext_ln75_29_fu_2176_p1 = lshr_ln75_s_reg_3492;
assign zext_ln75_2_fu_1779_p1 = lshr_ln2_fu_1769_p4;
assign zext_ln75_30_fu_2195_p1 = lshr_ln75_10_fu_2185_p4;
assign zext_ln75_31_fu_2205_p1 = add_ln75_18_fu_2200_p2;
assign zext_ln75_32_fu_2215_p1 = add_ln75_19_fu_2210_p2;
assign zext_ln75_33_fu_2226_p1 = add_ln75_20_fu_2221_p2;
assign zext_ln75_34_fu_2246_p1 = lshr_ln75_11_fu_2236_p4;
assign zext_ln75_35_fu_2266_p1 = lshr_ln75_12_fu_2256_p4;
assign zext_ln75_36_fu_2276_p1 = add_ln75_22_fu_2271_p2;
assign zext_ln75_37_fu_2286_p1 = add_ln75_23_fu_2281_p2;
assign zext_ln75_38_fu_2312_p1 = add_ln75_24_fu_2307_p2;
assign zext_ln75_39_fu_2317_p1 = lshr_ln75_13_reg_3527;
assign zext_ln75_3_fu_1829_p1 = lshr_ln75_1_fu_1819_p4;
assign zext_ln75_40_fu_2336_p1 = lshr_ln75_14_fu_2326_p4;
assign zext_ln75_41_fu_2346_p1 = add_ln75_26_fu_2341_p2;
assign zext_ln75_42_fu_2356_p1 = add_ln75_27_fu_2351_p2;
assign zext_ln75_43_fu_2367_p1 = add_ln75_28_fu_2362_p2;
assign zext_ln75_44_fu_2387_p1 = lshr_ln75_15_fu_2377_p4;
assign zext_ln75_45_fu_2407_p1 = lshr_ln75_16_fu_2397_p4;
assign zext_ln75_46_fu_2417_p1 = add_ln75_30_fu_2412_p2;
assign zext_ln75_47_fu_2427_p1 = add_ln75_31_fu_2422_p2;
assign zext_ln75_48_fu_2453_p1 = add_ln75_32_fu_2448_p2;
assign zext_ln75_49_fu_2458_p1 = lshr_ln75_17_reg_3538;
assign zext_ln75_4_fu_1839_p1 = add_ln75_1_fu_1834_p2;
assign zext_ln75_50_fu_2477_p1 = lshr_ln75_18_fu_2467_p4;
assign zext_ln75_51_fu_2487_p1 = add_ln75_34_fu_2482_p2;
assign zext_ln75_52_fu_2507_p1 = add_ln75_35_fu_2502_p2;
assign zext_ln75_53_fu_2518_p1 = add_ln75_36_fu_2513_p2;
assign zext_ln75_54_fu_2538_p1 = lshr_ln75_19_fu_2528_p4;
assign zext_ln75_55_fu_2558_p1 = lshr_ln75_20_fu_2548_p4;
assign zext_ln75_56_fu_2568_p1 = add_ln75_38_fu_2563_p2;
assign zext_ln75_57_fu_2578_p1 = add_ln75_39_fu_2573_p2;
assign zext_ln75_58_fu_2604_p1 = add_ln75_40_fu_2599_p2;
assign zext_ln75_59_fu_2609_p1 = lshr_ln75_21_reg_3549;
assign zext_ln75_5_fu_1872_p1 = or_ln75_1_reg_3451;
assign zext_ln75_60_fu_2628_p1 = lshr_ln75_22_fu_2618_p4;
assign zext_ln75_61_fu_2638_p1 = add_ln75_42_fu_2633_p2;
assign zext_ln75_62_fu_2648_p1 = add_ln75_43_fu_2643_p2;
assign zext_ln75_63_fu_2659_p1 = add_ln75_44_fu_2654_p2;
assign zext_ln75_64_fu_2679_p1 = lshr_ln75_23_fu_2669_p4;
assign zext_ln75_65_fu_2699_p1 = lshr_ln75_24_fu_2689_p4;
assign zext_ln75_66_fu_2709_p1 = add_ln75_46_fu_2704_p2;
assign zext_ln75_67_fu_2719_p1 = add_ln75_47_fu_2714_p2;
assign zext_ln75_68_fu_2745_p1 = add_ln75_48_fu_2740_p2;
assign zext_ln75_69_fu_2750_p1 = lshr_ln75_25_reg_3560;
assign zext_ln75_6_fu_1851_p1 = or_ln75_1_fu_1844_p3;
assign zext_ln75_70_fu_2769_p1 = lshr_ln75_26_fu_2759_p4;
assign zext_ln75_71_fu_2779_p1 = add_ln75_50_fu_2774_p2;
assign zext_ln75_72_fu_2789_p1 = add_ln75_51_fu_2784_p2;
assign zext_ln75_73_fu_2800_p1 = add_ln75_52_fu_2795_p2;
assign zext_ln75_74_fu_2820_p1 = lshr_ln75_27_fu_2810_p4;
assign zext_ln75_75_fu_2840_p1 = lshr_ln75_28_fu_2830_p4;
assign zext_ln75_76_fu_2850_p1 = add_ln75_54_fu_2845_p2;
assign zext_ln75_77_fu_2860_p1 = add_ln75_55_fu_2855_p2;
assign zext_ln75_78_fu_2901_p1 = add_ln75_56_fu_2896_p2;
assign zext_ln75_79_fu_2906_p1 = lshr_ln75_29_reg_3571;
assign zext_ln75_7_fu_1881_p1 = add_ln75_2_fu_1875_p2;
assign zext_ln75_80_fu_2910_p1 = lshr_ln75_30_reg_3577;
assign zext_ln75_81_fu_2919_p1 = add_ln75_58_fu_2914_p2;
assign zext_ln75_8_fu_1886_p1 = lshr_ln75_2_reg_3456;
assign zext_ln75_9_fu_1905_p1 = lshr_ln75_3_fu_1895_p4;
assign zext_ln75_fu_1714_p1 = sub_ln75_fu_1708_p2;
always @ (posedge ap_clk) begin
    empty_reg_3396[0] <= 1'b1;
    or_ln75_1_reg_3451[1:0] <= 2'b11;
    zext_ln75_5_reg_3462[1:0] <= 2'b11;
    zext_ln75_5_reg_3462[6] <= 1'b0;
    or_ln75_3_reg_3487[3:0] <= 4'b1111;
    zext_ln75_26_reg_3498[3:0] <= 4'b1111;
    zext_ln75_26_reg_3498[6] <= 1'b0;
end
endmodule 