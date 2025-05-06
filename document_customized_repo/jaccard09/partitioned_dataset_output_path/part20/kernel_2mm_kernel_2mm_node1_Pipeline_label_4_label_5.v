
module kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,cmp11,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,zext_ln168_1,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v226_2_address0,v226_2_ce0,v226_2_q0,v226_2_address1,v226_2_ce1,v226_2_q1,v226_3_address0,v226_3_ce0,v226_3_q0,v226_3_address1,v226_3_ce1,v226_3_q1,empty_15,v113,mul_ln175,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,empty,grp_fu_227_p_din0,grp_fu_227_p_din1,grp_fu_227_p_opcode,grp_fu_227_p_dout0,grp_fu_227_p_ce,grp_fu_231_p_din0,grp_fu_231_p_din1,grp_fu_231_p_dout0,grp_fu_231_p_ce,grp_fu_235_p_din0,grp_fu_235_p_din1,grp_fu_235_p_dout0,grp_fu_235_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 10'd1;
parameter    ap_ST_fsm_pp0_stage1 = 10'd2;
parameter    ap_ST_fsm_pp0_stage2 = 10'd4;
parameter    ap_ST_fsm_pp0_stage3 = 10'd8;
parameter    ap_ST_fsm_pp0_stage4 = 10'd16;
parameter    ap_ST_fsm_pp0_stage5 = 10'd32;
parameter    ap_ST_fsm_pp0_stage6 = 10'd64;
parameter    ap_ST_fsm_pp0_stage7 = 10'd128;
parameter    ap_ST_fsm_pp0_stage8 = 10'd256;
parameter    ap_ST_fsm_pp0_stage9 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] cmp11;
output  [14:0] v225_1_address0;
output   v225_1_ce0;
output   v225_1_we0;
output  [31:0] v225_1_d0;
input  [31:0] v225_1_q0;
output  [14:0] v225_1_address1;
output   v225_1_ce1;
output   v225_1_we1;
output  [31:0] v225_1_d1;
input  [31:0] v225_1_q1;
output  [14:0] v225_0_address0;
output   v225_0_ce0;
output   v225_0_we0;
output  [31:0] v225_0_d0;
input  [31:0] v225_0_q0;
output  [14:0] v225_0_address1;
output   v225_0_ce1;
output   v225_0_we1;
output  [31:0] v225_0_d1;
input  [31:0] v225_0_q1;
input  [5:0] zext_ln168_1;
output  [13:0] v226_0_address0;
output   v226_0_ce0;
input  [31:0] v226_0_q0;
output  [13:0] v226_0_address1;
output   v226_0_ce1;
input  [31:0] v226_0_q1;
output  [13:0] v226_1_address0;
output   v226_1_ce0;
input  [31:0] v226_1_q0;
output  [13:0] v226_1_address1;
output   v226_1_ce1;
input  [31:0] v226_1_q1;
output  [13:0] v226_2_address0;
output   v226_2_ce0;
input  [31:0] v226_2_q0;
output  [13:0] v226_2_address1;
output   v226_2_ce1;
input  [31:0] v226_2_q1;
output  [13:0] v226_3_address0;
output   v226_3_ce0;
input  [31:0] v226_3_q0;
output  [13:0] v226_3_address1;
output   v226_3_ce1;
input  [31:0] v226_3_q1;
input  [1:0] empty_15;
input  [31:0] v113;
input  [14:0] mul_ln175;
output  [14:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [14:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [14:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [14:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
input  [0:0] empty;
output  [31:0] grp_fu_227_p_din0;
output  [31:0] grp_fu_227_p_din1;
output  [1:0] grp_fu_227_p_opcode;
input  [31:0] grp_fu_227_p_dout0;
output   grp_fu_227_p_ce;
output  [31:0] grp_fu_231_p_din0;
output  [31:0] grp_fu_231_p_din1;
input  [31:0] grp_fu_231_p_dout0;
output   grp_fu_231_p_ce;
output  [31:0] grp_fu_235_p_din0;
output  [31:0] grp_fu_235_p_din1;
input  [31:0] grp_fu_235_p_dout0;
output   grp_fu_235_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [0:0] icmp_ln169_reg_2611;
reg    ap_condition_exit_pp0_iter0_stage9;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_884;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_892;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] trunc_ln169_reg_2642;
reg   [0:0] trunc_ln169_reg_2642_pp0_iter1_reg;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] trunc_ln169_reg_2642_pp0_iter2_reg;
wire   [31:0] grp_fu_856_p2;
reg   [31:0] reg_896;
wire   [31:0] grp_fu_860_p2;
reg   [31:0] reg_900;
wire    ap_block_pp0_stage9_11001;
wire   [31:0] grp_fu_864_p2;
reg   [31:0] reg_904;
reg   [31:0] reg_908;
reg   [31:0] reg_912;
reg   [31:0] reg_916;
reg   [31:0] reg_920;
reg   [31:0] reg_924;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_928;
wire   [0:0] cmp11_read_reg_2560;
wire   [13:0] zext_ln168_1_cast_fu_932_p1;
reg   [13:0] zext_ln168_1_cast_reg_2598;
wire   [0:0] icmp_ln169_fu_954_p2;
reg   [0:0] icmp_ln169_reg_2611_pp0_iter1_reg;
reg   [7:0] v116_load_reg_2615;
wire   [0:0] icmp_ln170_fu_978_p2;
reg   [0:0] icmp_ln170_reg_2620;
wire   [7:0] select_ln169_1_fu_984_p3;
reg   [7:0] select_ln169_1_reg_2625;
wire   [0:0] trunc_ln169_fu_996_p1;
reg   [6:0] lshr_ln1_reg_2648;
reg   [6:0] lshr_ln1_reg_2648_pp0_iter1_reg;
wire   [14:0] mul_ln171_fu_1029_p2;
reg   [14:0] mul_ln171_reg_2657;
reg   [6:0] tmp_reg_2668;
reg   [6:0] tmp_1_reg_2678;
wire   [14:0] zext_ln175_fu_1073_p1;
reg   [14:0] zext_ln175_reg_2683;
reg   [14:0] zext_ln175_reg_2683_pp0_iter1_reg;
wire   [14:0] zext_ln182_fu_1106_p1;
reg   [14:0] zext_ln182_reg_2706;
reg   [14:0] zext_ln182_reg_2706_pp0_iter1_reg;
wire   [14:0] mul_ln186_fu_1135_p2;
reg   [14:0] mul_ln186_reg_2729;
reg   [6:0] tmp_2_reg_2740;
wire   [31:0] select_ln175_fu_1160_p3;
reg   [31:0] select_ln175_reg_2745;
wire   [31:0] select_ln182_fu_1167_p3;
reg   [31:0] select_ln182_reg_2750;
wire   [14:0] mul_ln199_fu_1190_p2;
reg   [14:0] mul_ln199_reg_2775;
reg   [6:0] tmp_3_reg_2786;
reg   [14:0] v225_0_addr_reg_2791;
reg   [14:0] v225_0_addr_reg_2791_pp0_iter1_reg;
reg   [14:0] v225_0_addr_9_reg_2796;
reg   [14:0] v225_0_addr_9_reg_2796_pp0_iter1_reg;
reg   [14:0] v225_1_addr_reg_2801;
reg   [14:0] v225_1_addr_reg_2801_pp0_iter1_reg;
reg   [14:0] v225_1_addr_1_reg_2806;
reg   [14:0] v225_1_addr_1_reg_2806_pp0_iter1_reg;
reg   [14:0] v225_0_addr_2_reg_2811;
reg   [14:0] v225_0_addr_2_reg_2811_pp0_iter1_reg;
reg   [14:0] v225_0_addr_12_reg_2816;
reg   [14:0] v225_0_addr_12_reg_2816_pp0_iter1_reg;
reg   [14:0] v225_1_addr_2_reg_2821;
reg   [14:0] v225_1_addr_2_reg_2821_pp0_iter1_reg;
reg   [14:0] v225_1_addr_4_reg_2826;
reg   [14:0] v225_1_addr_4_reg_2826_pp0_iter1_reg;
wire   [31:0] v119_fu_1271_p11;
reg   [31:0] v119_reg_2831;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [13:0] grp_fu_2462_p3;
reg   [13:0] empty_40_reg_2876;
wire   [14:0] mul_ln212_fu_1311_p2;
reg   [14:0] mul_ln212_reg_2881;
wire   [31:0] select_ln171_fu_1317_p3;
reg   [31:0] select_ln171_reg_2887;
wire   [31:0] select_ln179_fu_1324_p3;
reg   [31:0] select_ln179_reg_2892;
wire   [31:0] select_ln187_fu_1335_p3;
reg   [31:0] select_ln187_reg_2897;
wire   [31:0] select_ln194_fu_1346_p3;
reg   [31:0] select_ln194_reg_2902;
wire   [31:0] v131_fu_1357_p3;
reg   [31:0] v131_reg_2907;
wire   [31:0] v137_fu_1368_p3;
reg   [31:0] v137_reg_2912;
wire   [31:0] v132_fu_1391_p11;
reg   [31:0] v132_reg_2917;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] v143_fu_1430_p11;
reg   [31:0] v143_reg_2922;
wire   [14:0] mul_ln225_fu_1476_p2;
reg   [14:0] mul_ln225_reg_2967;
wire   [13:0] grp_fu_2478_p3;
reg   [13:0] empty_55_reg_2973;
wire   [13:0] grp_fu_2485_p4;
reg   [13:0] empty_62_reg_2978;
reg   [14:0] v225_0_addr_1_reg_2983;
reg   [14:0] v225_0_addr_1_reg_2983_pp0_iter1_reg;
reg   [14:0] v225_0_addr_11_reg_2988;
reg   [14:0] v225_0_addr_11_reg_2988_pp0_iter1_reg;
reg   [14:0] v225_1_addr_3_reg_2993;
reg   [14:0] v225_1_addr_3_reg_2993_pp0_iter1_reg;
reg   [14:0] v225_1_addr_9_reg_2998;
reg   [14:0] v225_1_addr_9_reg_2998_pp0_iter1_reg;
reg   [14:0] v225_0_addr_4_reg_3003;
reg   [14:0] v225_0_addr_4_reg_3003_pp0_iter1_reg;
reg   [14:0] v225_0_addr_14_reg_3008;
reg   [14:0] v225_0_addr_14_reg_3008_pp0_iter1_reg;
reg   [14:0] v225_1_addr_6_reg_3013;
reg   [14:0] v225_1_addr_6_reg_3013_pp0_iter1_reg;
reg   [14:0] v225_1_addr_12_reg_3018;
reg   [14:0] v225_1_addr_12_reg_3018_pp0_iter1_reg;
wire   [31:0] v154_fu_1538_p11;
reg   [31:0] v154_reg_3023;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] v165_fu_1577_p11;
reg   [31:0] v165_reg_3028;
wire   [14:0] mul_ln238_fu_1610_p2;
reg   [14:0] mul_ln238_reg_3053;
wire   [13:0] grp_fu_2493_p3;
reg   [13:0] empty_70_reg_3079;
wire   [13:0] grp_fu_2500_p4;
reg   [13:0] empty_77_reg_3084;
wire   [31:0] select_ln200_fu_1627_p3;
reg   [31:0] select_ln200_reg_3089;
wire   [31:0] select_ln207_fu_1638_p3;
reg   [31:0] select_ln207_reg_3094;
wire   [31:0] select_ln213_fu_1649_p3;
reg   [31:0] select_ln213_reg_3099;
wire   [31:0] select_ln220_fu_1660_p3;
reg   [31:0] select_ln220_reg_3104;
wire   [31:0] v142_fu_1671_p3;
reg   [31:0] v142_reg_3109;
wire   [31:0] v148_fu_1682_p3;
reg   [31:0] v148_reg_3114;
wire   [31:0] v153_fu_1693_p3;
reg   [31:0] v153_reg_3119;
wire   [31:0] v159_fu_1704_p3;
reg   [31:0] v159_reg_3124;
wire   [31:0] v176_fu_1727_p11;
reg   [31:0] v176_reg_3129;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [14:0] mul_ln251_fu_1759_p2;
reg   [14:0] mul_ln251_reg_3134;
wire   [31:0] v187_fu_1781_p11;
reg   [31:0] v187_reg_3140;
reg   [14:0] v225_0_addr_3_reg_3185;
reg   [14:0] v225_0_addr_3_reg_3185_pp0_iter1_reg;
reg   [14:0] v225_0_addr_13_reg_3190;
reg   [14:0] v225_0_addr_13_reg_3190_pp0_iter1_reg;
reg   [14:0] v225_1_addr_5_reg_3195;
reg   [14:0] v225_1_addr_5_reg_3195_pp0_iter1_reg;
reg   [14:0] v225_1_addr_11_reg_3200;
reg   [14:0] v225_1_addr_11_reg_3200_pp0_iter1_reg;
reg   [14:0] v225_0_addr_6_reg_3205;
reg   [14:0] v225_0_addr_6_reg_3205_pp0_iter1_reg;
reg   [14:0] v225_0_addr_16_reg_3210;
reg   [14:0] v225_0_addr_16_reg_3210_pp0_iter1_reg;
reg   [14:0] v225_1_addr_8_reg_3215;
reg   [14:0] v225_1_addr_8_reg_3215_pp0_iter1_reg;
reg   [14:0] v225_1_addr_14_reg_3220;
reg   [14:0] v225_1_addr_14_reg_3220_pp0_iter1_reg;
wire   [14:0] mul_ln264_fu_1861_p2;
reg   [14:0] mul_ln264_reg_3225;
wire   [31:0] v198_fu_1883_p11;
reg   [31:0] v198_reg_3231;
wire   [31:0] v209_fu_1922_p11;
reg   [31:0] v209_reg_3236;
wire   [31:0] select_ln226_fu_1949_p3;
reg   [31:0] select_ln226_reg_3241;
wire   [31:0] select_ln233_fu_1960_p3;
reg   [31:0] select_ln233_reg_3246;
wire   [31:0] select_ln239_fu_1971_p3;
reg   [31:0] select_ln239_reg_3251;
wire   [31:0] select_ln246_fu_1982_p3;
reg   [31:0] select_ln246_reg_3256;
wire   [31:0] v164_fu_1993_p3;
reg   [31:0] v164_reg_3261;
wire   [31:0] v170_fu_2004_p3;
reg   [31:0] v170_reg_3266;
wire   [31:0] v175_fu_2015_p3;
reg   [31:0] v175_reg_3271;
wire   [31:0] v181_fu_2026_p3;
reg   [31:0] v181_reg_3276;
reg   [31:0] v133_reg_3281;
reg   [31:0] v144_reg_3287;
reg   [14:0] v225_0_addr_5_reg_3293;
reg   [14:0] v225_0_addr_5_reg_3293_pp0_iter1_reg;
reg   [14:0] v225_0_addr_15_reg_3298;
reg   [14:0] v225_0_addr_15_reg_3298_pp0_iter1_reg;
reg   [14:0] v225_1_addr_7_reg_3303;
reg   [14:0] v225_1_addr_7_reg_3303_pp0_iter1_reg;
reg   [14:0] v225_1_addr_13_reg_3308;
reg   [14:0] v225_1_addr_13_reg_3308_pp0_iter1_reg;
wire   [31:0] v121_fu_2053_p1;
reg   [31:0] v121_reg_3313;
reg   [14:0] v225_0_addr_8_reg_3319;
reg   [14:0] v225_0_addr_8_reg_3319_pp0_iter1_reg;
reg   [14:0] v225_0_addr_17_reg_3324;
reg   [14:0] v225_0_addr_17_reg_3324_pp0_iter1_reg;
reg   [14:0] v225_1_addr_10_reg_3329;
reg   [14:0] v225_1_addr_10_reg_3329_pp0_iter1_reg;
reg   [14:0] v225_1_addr_16_reg_3334;
reg   [14:0] v225_1_addr_16_reg_3334_pp0_iter1_reg;
wire   [31:0] v127_fu_2077_p1;
reg   [31:0] v127_reg_3339;
reg   [31:0] v155_reg_3345;
reg   [31:0] v166_reg_3351;
wire   [31:0] select_ln252_fu_2085_p3;
reg   [31:0] select_ln252_reg_3357;
wire   [31:0] select_ln259_fu_2096_p3;
reg   [31:0] select_ln259_reg_3362;
wire   [31:0] select_ln265_fu_2107_p3;
reg   [31:0] select_ln265_reg_3367;
wire   [31:0] select_ln272_fu_2118_p3;
reg   [31:0] select_ln272_reg_3372;
wire   [31:0] v186_fu_2129_p3;
reg   [31:0] v186_reg_3377;
wire   [31:0] v192_fu_2140_p3;
reg   [31:0] v192_reg_3382;
wire   [31:0] v197_fu_2151_p3;
reg   [31:0] v197_reg_3387;
wire   [31:0] v203_fu_2162_p3;
reg   [31:0] v203_reg_3392;
reg   [31:0] v177_reg_3397;
reg   [31:0] v188_reg_3403;
reg   [31:0] v210_reg_3409;
wire   [31:0] grp_fu_876_p2;
reg   [31:0] v122_reg_3415;
wire   [31:0] grp_fu_880_p2;
reg   [31:0] v128_reg_3420;
wire   [31:0] v118_fu_2172_p3;
wire   [31:0] v125_fu_2183_p3;
reg   [31:0] v134_reg_3435;
reg   [31:0] v139_reg_3440;
reg   [31:0] v145_reg_3445;
reg   [31:0] v150_reg_3450;
reg   [31:0] v156_reg_3455;
reg   [31:0] v161_reg_3460;
reg   [31:0] v167_reg_3465;
reg   [31:0] v172_reg_3470;
reg   [31:0] v178_reg_3475;
reg   [31:0] v183_reg_3480;
reg   [31:0] v189_reg_3485;
reg   [31:0] v194_reg_3490;
reg   [31:0] v200_reg_3495;
reg   [31:0] v205_reg_3500;
reg   [31:0] v211_reg_3505;
reg   [31:0] v216_reg_3510;
wire   [6:0] empty_78_fu_2191_p2;
reg   [6:0] empty_78_reg_3515;
wire   [14:0] add_ln277_fu_2205_p2;
reg   [14:0] add_ln277_reg_3520;
wire   [14:0] add_ln284_fu_2210_p2;
reg   [14:0] add_ln284_reg_3525;
wire   [31:0] bitcast_ln178_fu_2215_p1;
reg   [31:0] bitcast_ln178_reg_3530;
wire   [31:0] bitcast_ln185_fu_2219_p1;
reg   [31:0] bitcast_ln185_reg_3536;
reg   [14:0] v225_0_addr_7_reg_3542;
reg   [14:0] v225_1_addr_15_reg_3547;
reg   [14:0] v225_0_addr_10_reg_3552;
reg   [14:0] v225_1_addr_17_reg_3557;
wire   [31:0] select_ln278_fu_2267_p3;
reg   [31:0] select_ln278_reg_3562;
wire   [31:0] select_ln285_fu_2278_p3;
reg   [31:0] select_ln285_reg_3567;
wire   [31:0] v208_fu_2299_p3;
reg   [31:0] v208_reg_3572;
wire   [31:0] v214_fu_2310_p3;
reg   [31:0] v214_reg_3577;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln175_1_fu_1082_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln182_1_fu_1115_p1;
wire   [63:0] p_cast29_fu_1174_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln171_1_fu_1219_p1;
wire   [63:0] zext_ln186_1_fu_1229_p1;
wire   [63:0] zext_ln179_fu_1239_p1;
wire   [63:0] zext_ln193_fu_1249_p1;
wire   [63:0] p_cast_fu_1294_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] p_cast30_fu_1301_p1;
wire   [63:0] p_cast31_fu_1453_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] p_cast32_fu_1460_p1;
wire   [63:0] zext_ln199_1_fu_1486_p1;
wire   [63:0] zext_ln212_1_fu_1496_p1;
wire   [63:0] zext_ln206_fu_1506_p1;
wire   [63:0] zext_ln219_fu_1516_p1;
wire   [63:0] p_cast33_fu_1600_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] p_cast34_fu_1616_p1;
wire   [63:0] p_cast35_fu_1804_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] p_cast36_fu_1811_p1;
wire   [63:0] zext_ln225_1_fu_1822_p1;
wire   [63:0] zext_ln238_1_fu_1832_p1;
wire   [63:0] zext_ln232_fu_1842_p1;
wire   [63:0] zext_ln245_fu_1852_p1;
wire   [63:0] zext_ln251_1_fu_2037_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln264_1_fu_2047_p1;
wire   [63:0] zext_ln258_fu_2061_p1;
wire   [63:0] zext_ln271_fu_2071_p1;
wire   [63:0] zext_ln277_1_fu_2223_p1;
wire   [63:0] zext_ln284_fu_2228_p1;
reg   [7:0] v116_fu_124;
wire   [7:0] add_ln170_fu_1121_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_load;
wire    ap_block_pp0_stage0;
reg   [7:0] v115_fu_128;
reg   [7:0] ap_sig_allocacmp_v115_load;
reg   [10:0] indvar_flatten_fu_132;
wire   [10:0] add_ln169_1_fu_960_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v227_0_ce1_local;
reg    v227_0_ce0_local;
reg    v227_1_ce1_local;
reg    v227_1_ce0_local;
reg    v226_0_ce0_local;
reg   [13:0] v226_0_address0_local;
reg    v226_0_ce1_local;
reg   [13:0] v226_0_address1_local;
reg    v226_1_ce0_local;
reg   [13:0] v226_1_address0_local;
reg    v226_1_ce1_local;
reg   [13:0] v226_1_address1_local;
reg    v226_2_ce0_local;
reg   [13:0] v226_2_address0_local;
reg    v226_2_ce1_local;
reg   [13:0] v226_2_address1_local;
reg    v226_3_ce0_local;
reg   [13:0] v226_3_address0_local;
reg    v226_3_ce1_local;
reg   [13:0] v226_3_address1_local;
reg    v225_0_ce1_local;
reg   [14:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [14:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln192_1_fu_2243_p1;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln198_1_fu_2248_p1;
wire    ap_block_pp0_stage2;
wire   [31:0] bitcast_ln218_1_fu_2285_p1;
wire   [31:0] bitcast_ln224_1_fu_2290_p1;
wire   [31:0] bitcast_ln205_fu_2317_p1;
wire   [31:0] bitcast_ln211_fu_2322_p1;
wire   [31:0] bitcast_ln244_1_fu_2347_p1;
wire   [31:0] bitcast_ln250_1_fu_2352_p1;
wire   [31:0] bitcast_ln231_fu_2357_p1;
wire   [31:0] bitcast_ln237_fu_2362_p1;
wire   [31:0] bitcast_ln270_1_fu_2387_p1;
wire   [31:0] bitcast_ln276_1_fu_2392_p1;
wire   [31:0] bitcast_ln257_fu_2397_p1;
wire    ap_block_pp0_stage8;
wire   [31:0] bitcast_ln263_fu_2402_p1;
wire   [31:0] bitcast_ln283_fu_2417_p1;
wire   [31:0] bitcast_ln289_fu_2422_p1;
reg    v225_1_ce1_local;
reg   [14:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [14:0] v225_1_address0_local;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln192_fu_2233_p1;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln198_fu_2238_p1;
wire   [31:0] bitcast_ln218_fu_2253_p1;
wire   [31:0] bitcast_ln224_fu_2258_p1;
wire   [31:0] bitcast_ln244_fu_2327_p1;
wire   [31:0] bitcast_ln250_fu_2332_p1;
wire   [31:0] bitcast_ln205_1_fu_2337_p1;
wire   [31:0] bitcast_ln211_1_fu_2342_p1;
wire   [31:0] bitcast_ln270_fu_2367_p1;
wire   [31:0] bitcast_ln276_fu_2372_p1;
wire   [31:0] bitcast_ln231_1_fu_2377_p1;
wire   [31:0] bitcast_ln237_1_fu_2382_p1;
wire   [31:0] bitcast_ln257_1_fu_2407_p1;
wire   [31:0] bitcast_ln263_1_fu_2412_p1;
wire   [31:0] bitcast_ln283_1_fu_2427_p1;
wire   [31:0] bitcast_ln289_1_fu_2432_p1;
reg   [31:0] grp_fu_852_p0;
reg   [31:0] grp_fu_852_p1;
reg   [31:0] grp_fu_856_p0;
reg   [31:0] grp_fu_856_p1;
reg   [31:0] grp_fu_860_p0;
reg   [31:0] grp_fu_860_p1;
reg   [31:0] grp_fu_864_p0;
reg   [31:0] grp_fu_864_p1;
reg   [31:0] grp_fu_868_p0;
reg   [31:0] grp_fu_868_p1;
reg   [31:0] grp_fu_872_p0;
reg   [31:0] grp_fu_872_p1;
reg   [31:0] grp_fu_876_p0;
reg   [31:0] grp_fu_876_p1;
reg   [31:0] grp_fu_880_p0;
reg   [31:0] grp_fu_880_p1;
wire   [7:0] add_ln169_fu_972_p2;
wire   [6:0] mul_ln171_fu_1029_p0;
wire   [8:0] mul_ln171_fu_1029_p1;
wire   [7:0] empty_23_fu_1035_p2;
wire   [7:0] empty_38_fu_1054_p2;
wire   [7:0] select_ln169_fu_1020_p3;
wire   [14:0] add_ln175_fu_1077_p2;
wire   [6:0] tmp_4_fu_1088_p4;
wire   [7:0] or_ln_fu_1098_p3;
wire   [14:0] add_ln182_fu_1110_p2;
wire   [6:0] mul_ln186_fu_1135_p0;
wire   [8:0] mul_ln186_fu_1135_p1;
wire   [7:0] empty_53_fu_1141_p2;
wire   [13:0] grp_fu_2437_p3;
wire   [6:0] empty_33_fu_1181_p2;
wire   [6:0] mul_ln199_fu_1190_p0;
wire   [8:0] mul_ln199_fu_1190_p1;
wire   [7:0] empty_68_fu_1196_p2;
wire   [14:0] add_ln171_fu_1215_p2;
wire   [14:0] add_ln186_fu_1225_p2;
wire   [14:0] add_ln179_fu_1235_p2;
wire   [14:0] add_ln193_fu_1245_p2;
wire   [31:0] v119_fu_1271_p2;
wire   [31:0] v119_fu_1271_p4;
wire   [31:0] v119_fu_1271_p6;
wire   [31:0] v119_fu_1271_p8;
wire   [31:0] v119_fu_1271_p9;
wire   [13:0] grp_fu_2445_p3;
wire   [13:0] grp_fu_2453_p4;
wire   [6:0] mul_ln212_fu_1311_p0;
wire   [8:0] mul_ln212_fu_1311_p1;
wire   [31:0] bitcast_ln186_fu_1331_p1;
wire   [31:0] bitcast_ln193_fu_1342_p1;
wire   [31:0] v130_fu_1353_p1;
wire   [31:0] v136_fu_1364_p1;
wire   [31:0] v132_fu_1391_p2;
wire   [31:0] v132_fu_1391_p4;
wire   [31:0] v132_fu_1391_p6;
wire   [31:0] v132_fu_1391_p8;
wire   [31:0] v132_fu_1391_p9;
wire   [31:0] v143_fu_1430_p2;
wire   [31:0] v143_fu_1430_p4;
wire   [31:0] v143_fu_1430_p6;
wire   [31:0] v143_fu_1430_p8;
wire   [31:0] v143_fu_1430_p9;
wire   [13:0] grp_fu_2469_p4;
wire   [6:0] empty_48_fu_1467_p2;
wire   [6:0] mul_ln225_fu_1476_p0;
wire   [8:0] mul_ln225_fu_1476_p1;
wire   [14:0] add_ln199_fu_1482_p2;
wire   [14:0] add_ln212_fu_1492_p2;
wire   [14:0] add_ln206_fu_1502_p2;
wire   [14:0] add_ln219_fu_1512_p2;
wire   [31:0] v154_fu_1538_p2;
wire   [31:0] v154_fu_1538_p4;
wire   [31:0] v154_fu_1538_p6;
wire   [31:0] v154_fu_1538_p8;
wire   [31:0] v154_fu_1538_p9;
wire   [31:0] v165_fu_1577_p2;
wire   [31:0] v165_fu_1577_p4;
wire   [31:0] v165_fu_1577_p6;
wire   [31:0] v165_fu_1577_p8;
wire   [31:0] v165_fu_1577_p9;
wire   [6:0] mul_ln238_fu_1610_p0;
wire   [8:0] mul_ln238_fu_1610_p1;
wire   [31:0] bitcast_ln199_fu_1623_p1;
wire   [31:0] bitcast_ln206_fu_1634_p1;
wire   [31:0] bitcast_ln212_fu_1645_p1;
wire   [31:0] bitcast_ln219_fu_1656_p1;
wire   [31:0] v141_fu_1667_p1;
wire   [31:0] v147_fu_1678_p1;
wire   [31:0] v152_fu_1689_p1;
wire   [31:0] v158_fu_1700_p1;
wire   [31:0] v176_fu_1727_p2;
wire   [31:0] v176_fu_1727_p4;
wire   [31:0] v176_fu_1727_p6;
wire   [31:0] v176_fu_1727_p8;
wire   [31:0] v176_fu_1727_p9;
wire   [6:0] empty_63_fu_1750_p2;
wire   [6:0] mul_ln251_fu_1759_p0;
wire   [8:0] mul_ln251_fu_1759_p1;
wire   [31:0] v187_fu_1781_p2;
wire   [31:0] v187_fu_1781_p4;
wire   [31:0] v187_fu_1781_p6;
wire   [31:0] v187_fu_1781_p8;
wire   [31:0] v187_fu_1781_p9;
wire   [14:0] add_ln225_fu_1818_p2;
wire   [14:0] add_ln238_fu_1828_p2;
wire   [14:0] add_ln232_fu_1838_p2;
wire   [14:0] add_ln245_fu_1848_p2;
wire   [6:0] mul_ln264_fu_1861_p0;
wire   [8:0] mul_ln264_fu_1861_p1;
wire   [31:0] v198_fu_1883_p2;
wire   [31:0] v198_fu_1883_p4;
wire   [31:0] v198_fu_1883_p6;
wire   [31:0] v198_fu_1883_p8;
wire   [31:0] v198_fu_1883_p9;
wire   [31:0] v209_fu_1922_p2;
wire   [31:0] v209_fu_1922_p4;
wire   [31:0] v209_fu_1922_p6;
wire   [31:0] v209_fu_1922_p8;
wire   [31:0] v209_fu_1922_p9;
wire   [31:0] bitcast_ln225_fu_1945_p1;
wire   [31:0] bitcast_ln232_fu_1956_p1;
wire   [31:0] bitcast_ln238_fu_1967_p1;
wire   [31:0] bitcast_ln245_fu_1978_p1;
wire   [31:0] v163_fu_1989_p1;
wire   [31:0] v169_fu_2000_p1;
wire   [31:0] v174_fu_2011_p1;
wire   [31:0] v180_fu_2022_p1;
wire   [14:0] add_ln251_fu_2033_p2;
wire   [14:0] add_ln264_fu_2043_p2;
wire   [14:0] add_ln258_fu_2057_p2;
wire   [14:0] add_ln271_fu_2067_p2;
wire   [31:0] bitcast_ln251_fu_2081_p1;
wire   [31:0] bitcast_ln258_fu_2092_p1;
wire   [31:0] bitcast_ln264_fu_2103_p1;
wire   [31:0] bitcast_ln271_fu_2114_p1;
wire   [31:0] v185_fu_2125_p1;
wire   [31:0] v191_fu_2136_p1;
wire   [31:0] v196_fu_2147_p1;
wire   [31:0] v202_fu_2158_p1;
wire   [31:0] v117_fu_2169_p1;
wire   [31:0] v124_fu_2180_p1;
wire   [6:0] mul_ln277_fu_2199_p0;
wire   [8:0] mul_ln277_fu_2199_p1;
wire   [14:0] mul_ln277_fu_2199_p2;
wire   [31:0] bitcast_ln277_fu_2263_p1;
wire   [31:0] bitcast_ln284_fu_2274_p1;
wire   [31:0] v207_fu_2295_p1;
wire   [31:0] v213_fu_2306_p1;
wire   [7:0] grp_fu_2437_p0;
wire   [5:0] grp_fu_2437_p1;
wire   [5:0] grp_fu_2437_p2;
wire   [7:0] grp_fu_2445_p0;
wire   [5:0] grp_fu_2445_p1;
wire   [5:0] grp_fu_2445_p2;
wire   [1:0] grp_fu_2453_p1;
wire   [5:0] grp_fu_2453_p2;
wire   [5:0] grp_fu_2453_p3;
wire   [7:0] grp_fu_2462_p0;
wire   [5:0] grp_fu_2462_p1;
wire   [5:0] grp_fu_2462_p2;
wire   [2:0] grp_fu_2469_p1;
wire   [5:0] grp_fu_2469_p2;
wire   [5:0] grp_fu_2469_p3;
wire   [7:0] grp_fu_2478_p0;
wire   [5:0] grp_fu_2478_p1;
wire   [5:0] grp_fu_2478_p2;
wire   [2:0] grp_fu_2485_p1;
wire   [5:0] grp_fu_2485_p2;
wire   [5:0] grp_fu_2485_p3;
wire   [7:0] grp_fu_2493_p0;
wire   [5:0] grp_fu_2493_p1;
wire   [5:0] grp_fu_2493_p2;
wire   [3:0] grp_fu_2500_p1;
wire   [5:0] grp_fu_2500_p2;
wire   [5:0] grp_fu_2500_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [9:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire   [13:0] grp_fu_2437_p00;
wire   [13:0] grp_fu_2445_p00;
wire   [13:0] grp_fu_2462_p00;
wire   [13:0] grp_fu_2478_p00;
wire   [13:0] grp_fu_2493_p00;
wire   [14:0] mul_ln171_fu_1029_p00;
wire   [14:0] mul_ln186_fu_1135_p00;
wire   [14:0] mul_ln199_fu_1190_p00;
wire   [14:0] mul_ln212_fu_1311_p00;
wire   [14:0] mul_ln225_fu_1476_p00;
wire   [14:0] mul_ln238_fu_1610_p00;
wire   [14:0] mul_ln251_fu_1759_p00;
wire   [14:0] mul_ln264_fu_1861_p00;
wire   [14:0] mul_ln277_fu_2199_p00;
reg    ap_condition_2296;
reg    ap_condition_2299;
reg    ap_condition_2303;
reg    ap_condition_2306;
reg    ap_condition_2310;
reg    ap_condition_2313;
reg    ap_condition_2317;
reg    ap_condition_2320;
wire   [1:0] v119_fu_1271_p1;
wire   [1:0] v119_fu_1271_p3;
wire  signed [1:0] v119_fu_1271_p5;
wire  signed [1:0] v119_fu_1271_p7;
wire   [1:0] v132_fu_1391_p1;
wire   [1:0] v132_fu_1391_p3;
wire  signed [1:0] v132_fu_1391_p5;
wire  signed [1:0] v132_fu_1391_p7;
wire   [1:0] v143_fu_1430_p1;
wire   [1:0] v143_fu_1430_p3;
wire  signed [1:0] v143_fu_1430_p5;
wire  signed [1:0] v143_fu_1430_p7;
wire   [1:0] v154_fu_1538_p1;
wire   [1:0] v154_fu_1538_p3;
wire  signed [1:0] v154_fu_1538_p5;
wire  signed [1:0] v154_fu_1538_p7;
wire   [1:0] v165_fu_1577_p1;
wire   [1:0] v165_fu_1577_p3;
wire  signed [1:0] v165_fu_1577_p5;
wire  signed [1:0] v165_fu_1577_p7;
wire   [1:0] v176_fu_1727_p1;
wire   [1:0] v176_fu_1727_p3;
wire  signed [1:0] v176_fu_1727_p5;
wire  signed [1:0] v176_fu_1727_p7;
wire   [1:0] v187_fu_1781_p1;
wire   [1:0] v187_fu_1781_p3;
wire  signed [1:0] v187_fu_1781_p5;
wire  signed [1:0] v187_fu_1781_p7;
wire   [1:0] v198_fu_1883_p1;
wire   [1:0] v198_fu_1883_p3;
wire  signed [1:0] v198_fu_1883_p5;
wire  signed [1:0] v198_fu_1883_p7;
wire   [1:0] v209_fu_1922_p1;
wire   [1:0] v209_fu_1922_p3;
wire  signed [1:0] v209_fu_1922_p5;
wire  signed [1:0] v209_fu_1922_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v116_fu_124 = 8'd0;
#0 v115_fu_128 = 8'd0;
#0 indvar_flatten_fu_132 = 11'd0;
#0 ap_done_reg = 1'b0;
end
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_856_p0),.din1(grp_fu_856_p1),.ce(1'b1),.dout(grp_fu_856_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_860_p0),.din1(grp_fu_860_p1),.ce(1'b1),.dout(grp_fu_860_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_864_p0),.din1(grp_fu_864_p1),.ce(1'b1),.dout(grp_fu_864_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_876_p0),.din1(grp_fu_876_p1),.ce(1'b1),.dout(grp_fu_876_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_880_p0),.din1(grp_fu_880_p1),.ce(1'b1),.dout(grp_fu_880_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U9(.din0(mul_ln171_fu_1029_p0),.din1(mul_ln171_fu_1029_p1),.dout(mul_ln171_fu_1029_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U10(.din0(mul_ln186_fu_1135_p0),.din1(mul_ln186_fu_1135_p1),.dout(mul_ln186_fu_1135_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U11(.din0(mul_ln199_fu_1190_p0),.din1(mul_ln199_fu_1190_p1),.dout(mul_ln199_fu_1190_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U12(.din0(v119_fu_1271_p2),.din1(v119_fu_1271_p4),.din2(v119_fu_1271_p6),.din3(v119_fu_1271_p8),.def(v119_fu_1271_p9),.sel(empty_15),.dout(v119_fu_1271_p11));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U13(.din0(mul_ln212_fu_1311_p0),.din1(mul_ln212_fu_1311_p1),.dout(mul_ln212_fu_1311_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U14(.din0(v132_fu_1391_p2),.din1(v132_fu_1391_p4),.din2(v132_fu_1391_p6),.din3(v132_fu_1391_p8),.def(v132_fu_1391_p9),.sel(empty_15),.dout(v132_fu_1391_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U15(.din0(v143_fu_1430_p2),.din1(v143_fu_1430_p4),.din2(v143_fu_1430_p6),.din3(v143_fu_1430_p8),.def(v143_fu_1430_p9),.sel(empty_15),.dout(v143_fu_1430_p11));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U16(.din0(mul_ln225_fu_1476_p0),.din1(mul_ln225_fu_1476_p1),.dout(mul_ln225_fu_1476_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U17(.din0(v154_fu_1538_p2),.din1(v154_fu_1538_p4),.din2(v154_fu_1538_p6),.din3(v154_fu_1538_p8),.def(v154_fu_1538_p9),.sel(empty_15),.dout(v154_fu_1538_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U18(.din0(v165_fu_1577_p2),.din1(v165_fu_1577_p4),.din2(v165_fu_1577_p6),.din3(v165_fu_1577_p8),.def(v165_fu_1577_p9),.sel(empty_15),.dout(v165_fu_1577_p11));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U19(.din0(mul_ln238_fu_1610_p0),.din1(mul_ln238_fu_1610_p1),.dout(mul_ln238_fu_1610_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U20(.din0(v176_fu_1727_p2),.din1(v176_fu_1727_p4),.din2(v176_fu_1727_p6),.din3(v176_fu_1727_p8),.def(v176_fu_1727_p9),.sel(empty_15),.dout(v176_fu_1727_p11));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U21(.din0(mul_ln251_fu_1759_p0),.din1(mul_ln251_fu_1759_p1),.dout(mul_ln251_fu_1759_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U22(.din0(v187_fu_1781_p2),.din1(v187_fu_1781_p4),.din2(v187_fu_1781_p6),.din3(v187_fu_1781_p8),.def(v187_fu_1781_p9),.sel(empty_15),.dout(v187_fu_1781_p11));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U23(.din0(mul_ln264_fu_1861_p0),.din1(mul_ln264_fu_1861_p1),.dout(mul_ln264_fu_1861_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U24(.din0(v198_fu_1883_p2),.din1(v198_fu_1883_p4),.din2(v198_fu_1883_p6),.din3(v198_fu_1883_p8),.def(v198_fu_1883_p9),.sel(empty_15),.dout(v198_fu_1883_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U25(.din0(v209_fu_1922_p2),.din1(v209_fu_1922_p4),.din2(v209_fu_1922_p6),.din3(v209_fu_1922_p8),.def(v209_fu_1922_p9),.sel(empty_15),.dout(v209_fu_1922_p11));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U26(.din0(mul_ln277_fu_2199_p0),.din1(mul_ln277_fu_2199_p1),.dout(mul_ln277_fu_2199_p2));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U27(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2437_p0),.din1(grp_fu_2437_p1),.din2(grp_fu_2437_p2),.ce(1'b1),.dout(grp_fu_2437_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U28(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2445_p0),.din1(grp_fu_2445_p1),.din2(grp_fu_2445_p2),.ce(1'b1),.dout(grp_fu_2445_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 6 ),.din3_WIDTH( 6 ),.dout_WIDTH( 14 ))
ama_addmuladd_8ns_2ns_6ns_6ns_14_4_1_U29(.clk(ap_clk),.reset(ap_rst),.din0(select_ln169_1_reg_2625),.din1(grp_fu_2453_p1),.din2(grp_fu_2453_p2),.din3(grp_fu_2453_p3),.ce(1'b1),.dout(grp_fu_2453_p4));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U30(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2462_p0),.din1(grp_fu_2462_p1),.din2(grp_fu_2462_p2),.ce(1'b1),.dout(grp_fu_2462_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 6 ),.din3_WIDTH( 6 ),.dout_WIDTH( 14 ))
ama_addmuladd_8ns_3ns_6ns_6ns_14_4_1_U31(.clk(ap_clk),.reset(ap_rst),.din0(select_ln169_1_reg_2625),.din1(grp_fu_2469_p1),.din2(grp_fu_2469_p2),.din3(grp_fu_2469_p3),.ce(1'b1),.dout(grp_fu_2469_p4));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U32(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2478_p0),.din1(grp_fu_2478_p1),.din2(grp_fu_2478_p2),.ce(1'b1),.dout(grp_fu_2478_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 6 ),.din3_WIDTH( 6 ),.dout_WIDTH( 14 ))
ama_addmuladd_8ns_3ns_6ns_6ns_14_4_1_U33(.clk(ap_clk),.reset(ap_rst),.din0(select_ln169_1_reg_2625),.din1(grp_fu_2485_p1),.din2(grp_fu_2485_p2),.din3(grp_fu_2485_p3),.ce(1'b1),.dout(grp_fu_2485_p4));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U34(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2493_p0),.din1(grp_fu_2493_p1),.din2(grp_fu_2493_p2),.ce(1'b1),.dout(grp_fu_2493_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 6 ),.din3_WIDTH( 6 ),.dout_WIDTH( 14 ))
ama_addmuladd_8ns_4ns_6ns_6ns_14_4_1_U35(.clk(ap_clk),.reset(ap_rst),.din0(select_ln169_1_reg_2625),.din1(grp_fu_2500_p1),.din2(grp_fu_2500_p2),.din3(grp_fu_2500_p3),.ce(1'b1),.dout(grp_fu_2500_p4));
kernel_2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage9),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage9)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln169_fu_954_p2 == 1'd0))) begin
            indvar_flatten_fu_132 <= add_ln169_1_fu_960_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_132 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln169_fu_954_p2 == 1'd0))) begin
            v115_fu_128 <= select_ln169_1_fu_984_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v115_fu_128 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_fu_124 <= 8'd0;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_fu_124 <= add_ln170_fu_1121_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln277_reg_3520 <= add_ln277_fu_2205_p2;
        add_ln284_reg_3525 <= add_ln284_fu_2210_p2;
        bitcast_ln178_reg_3530 <= bitcast_ln178_fu_2215_p1;
        bitcast_ln185_reg_3536 <= bitcast_ln185_fu_2219_p1;
        v121_reg_3313 <= v121_fu_2053_p1;
        v127_reg_3339 <= v127_fu_2077_p1;
        v225_0_addr_15_reg_3298 <= zext_ln264_1_fu_2047_p1;
        v225_0_addr_15_reg_3298_pp0_iter1_reg <= v225_0_addr_15_reg_3298;
        v225_0_addr_17_reg_3324 <= zext_ln271_fu_2071_p1;
        v225_0_addr_17_reg_3324_pp0_iter1_reg <= v225_0_addr_17_reg_3324;
        v225_0_addr_5_reg_3293 <= zext_ln251_1_fu_2037_p1;
        v225_0_addr_5_reg_3293_pp0_iter1_reg <= v225_0_addr_5_reg_3293;
        v225_0_addr_8_reg_3319 <= zext_ln258_fu_2061_p1;
        v225_0_addr_8_reg_3319_pp0_iter1_reg <= v225_0_addr_8_reg_3319;
        v225_1_addr_10_reg_3329 <= zext_ln271_fu_2071_p1;
        v225_1_addr_10_reg_3329_pp0_iter1_reg <= v225_1_addr_10_reg_3329;
        v225_1_addr_13_reg_3308 <= zext_ln251_1_fu_2037_p1;
        v225_1_addr_13_reg_3308_pp0_iter1_reg <= v225_1_addr_13_reg_3308;
        v225_1_addr_16_reg_3334 <= zext_ln258_fu_2061_p1;
        v225_1_addr_16_reg_3334_pp0_iter1_reg <= v225_1_addr_16_reg_3334;
        v225_1_addr_7_reg_3303 <= zext_ln264_1_fu_2047_p1;
        v225_1_addr_7_reg_3303_pp0_iter1_reg <= v225_1_addr_7_reg_3303;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        empty_40_reg_2876 <= grp_fu_2462_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        empty_55_reg_2973 <= grp_fu_2478_p3;
        empty_62_reg_2978 <= grp_fu_2485_p4;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        empty_70_reg_3079 <= grp_fu_2493_p3;
        empty_77_reg_3084 <= grp_fu_2500_p4;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        empty_78_reg_3515 <= empty_78_fu_2191_p2;
        mul_ln264_reg_3225 <= mul_ln264_fu_1861_p2;
        select_ln226_reg_3241 <= select_ln226_fu_1949_p3;
        select_ln233_reg_3246 <= select_ln233_fu_1960_p3;
        select_ln239_reg_3251 <= select_ln239_fu_1971_p3;
        select_ln246_reg_3256 <= select_ln246_fu_1982_p3;
        v164_reg_3261 <= v164_fu_1993_p3;
        v170_reg_3266 <= v170_fu_2004_p3;
        v175_reg_3271 <= v175_fu_2015_p3;
        v181_reg_3276 <= v181_fu_2026_p3;
        v198_reg_3231 <= v198_fu_1883_p11;
        v209_reg_3236 <= v209_fu_1922_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln169_reg_2611 <= icmp_ln169_fu_954_p2;
        icmp_ln169_reg_2611_pp0_iter1_reg <= icmp_ln169_reg_2611;
        icmp_ln170_reg_2620 <= icmp_ln170_fu_978_p2;
        lshr_ln1_reg_2648 <= {{select_ln169_1_fu_984_p3[7:1]}};
        lshr_ln1_reg_2648_pp0_iter1_reg <= lshr_ln1_reg_2648;
        select_ln169_1_reg_2625 <= select_ln169_1_fu_984_p3;
        select_ln252_reg_3357 <= select_ln252_fu_2085_p3;
        select_ln259_reg_3362 <= select_ln259_fu_2096_p3;
        select_ln265_reg_3367 <= select_ln265_fu_2107_p3;
        select_ln272_reg_3372 <= select_ln272_fu_2118_p3;
        trunc_ln169_reg_2642 <= trunc_ln169_fu_996_p1;
        trunc_ln169_reg_2642_pp0_iter1_reg <= trunc_ln169_reg_2642;
        trunc_ln169_reg_2642_pp0_iter2_reg <= trunc_ln169_reg_2642_pp0_iter1_reg;
        v116_load_reg_2615 <= ap_sig_allocacmp_v116_load;
        v186_reg_3377 <= v186_fu_2129_p3;
        v192_reg_3382 <= v192_fu_2140_p3;
        v197_reg_3387 <= v197_fu_2151_p3;
        v203_reg_3392 <= v203_fu_2162_p3;
        zext_ln168_1_cast_reg_2598[5 : 0] <= zext_ln168_1_cast_fu_932_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln171_reg_2657 <= mul_ln171_fu_1029_p2;
        tmp_1_reg_2678 <= {{empty_38_fu_1054_p2[7:1]}};
        tmp_reg_2668 <= {{empty_23_fu_1035_p2[7:1]}};
        v225_0_addr_10_reg_3552 <= zext_ln284_fu_2228_p1;
        v225_0_addr_7_reg_3542 <= zext_ln277_1_fu_2223_p1;
        v225_1_addr_15_reg_3547 <= zext_ln277_1_fu_2223_p1;
        v225_1_addr_17_reg_3557 <= zext_ln284_fu_2228_p1;
        zext_ln175_reg_2683[7 : 0] <= zext_ln175_fu_1073_p1[7 : 0];
        zext_ln175_reg_2683_pp0_iter1_reg[7 : 0] <= zext_ln175_reg_2683[7 : 0];
        zext_ln182_reg_2706[7 : 1] <= zext_ln182_fu_1106_p1[7 : 1];
        zext_ln182_reg_2706_pp0_iter1_reg[7 : 1] <= zext_ln182_reg_2706[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln186_reg_2729 <= mul_ln186_fu_1135_p2;
        select_ln175_reg_2745 <= select_ln175_fu_1160_p3;
        select_ln182_reg_2750 <= select_ln182_fu_1167_p3;
        select_ln278_reg_3562 <= select_ln278_fu_2267_p3;
        select_ln285_reg_3567 <= select_ln285_fu_2278_p3;
        tmp_2_reg_2740 <= {{empty_53_fu_1141_p2[7:1]}};
        v208_reg_3572 <= v208_fu_2299_p3;
        v214_reg_3577 <= v214_fu_2310_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln199_reg_2775 <= mul_ln199_fu_1190_p2;
        tmp_3_reg_2786 <= {{empty_68_fu_1196_p2[7:1]}};
        v225_0_addr_12_reg_2816 <= zext_ln193_fu_1249_p1;
        v225_0_addr_12_reg_2816_pp0_iter1_reg <= v225_0_addr_12_reg_2816;
        v225_0_addr_2_reg_2811 <= zext_ln179_fu_1239_p1;
        v225_0_addr_2_reg_2811_pp0_iter1_reg <= v225_0_addr_2_reg_2811;
        v225_0_addr_9_reg_2796 <= zext_ln186_1_fu_1229_p1;
        v225_0_addr_9_reg_2796_pp0_iter1_reg <= v225_0_addr_9_reg_2796;
        v225_0_addr_reg_2791 <= zext_ln171_1_fu_1219_p1;
        v225_0_addr_reg_2791_pp0_iter1_reg <= v225_0_addr_reg_2791;
        v225_1_addr_1_reg_2806 <= zext_ln186_1_fu_1229_p1;
        v225_1_addr_1_reg_2806_pp0_iter1_reg <= v225_1_addr_1_reg_2806;
        v225_1_addr_2_reg_2821 <= zext_ln179_fu_1239_p1;
        v225_1_addr_2_reg_2821_pp0_iter1_reg <= v225_1_addr_2_reg_2821;
        v225_1_addr_4_reg_2826 <= zext_ln193_fu_1249_p1;
        v225_1_addr_4_reg_2826_pp0_iter1_reg <= v225_1_addr_4_reg_2826;
        v225_1_addr_reg_2801 <= zext_ln171_1_fu_1219_p1;
        v225_1_addr_reg_2801_pp0_iter1_reg <= v225_1_addr_reg_2801;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_ln212_reg_2881 <= mul_ln212_fu_1311_p2;
        select_ln171_reg_2887 <= select_ln171_fu_1317_p3;
        select_ln179_reg_2892 <= select_ln179_fu_1324_p3;
        select_ln187_reg_2897 <= select_ln187_fu_1335_p3;
        select_ln194_reg_2902 <= select_ln194_fu_1346_p3;
        v119_reg_2831 <= v119_fu_1271_p11;
        v131_reg_2907 <= v131_fu_1357_p3;
        v137_reg_2912 <= v137_fu_1368_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul_ln225_reg_2967 <= mul_ln225_fu_1476_p2;
        v132_reg_2917 <= v132_fu_1391_p11;
        v143_reg_2922 <= v143_fu_1430_p11;
        v225_0_addr_11_reg_2988 <= zext_ln212_1_fu_1496_p1;
        v225_0_addr_11_reg_2988_pp0_iter1_reg <= v225_0_addr_11_reg_2988;
        v225_0_addr_14_reg_3008 <= zext_ln219_fu_1516_p1;
        v225_0_addr_14_reg_3008_pp0_iter1_reg <= v225_0_addr_14_reg_3008;
        v225_0_addr_1_reg_2983 <= zext_ln199_1_fu_1486_p1;
        v225_0_addr_1_reg_2983_pp0_iter1_reg <= v225_0_addr_1_reg_2983;
        v225_0_addr_4_reg_3003 <= zext_ln206_fu_1506_p1;
        v225_0_addr_4_reg_3003_pp0_iter1_reg <= v225_0_addr_4_reg_3003;
        v225_1_addr_12_reg_3018 <= zext_ln206_fu_1506_p1;
        v225_1_addr_12_reg_3018_pp0_iter1_reg <= v225_1_addr_12_reg_3018;
        v225_1_addr_3_reg_2993 <= zext_ln212_1_fu_1496_p1;
        v225_1_addr_3_reg_2993_pp0_iter1_reg <= v225_1_addr_3_reg_2993;
        v225_1_addr_6_reg_3013 <= zext_ln219_fu_1516_p1;
        v225_1_addr_6_reg_3013_pp0_iter1_reg <= v225_1_addr_6_reg_3013;
        v225_1_addr_9_reg_2998 <= zext_ln199_1_fu_1486_p1;
        v225_1_addr_9_reg_2998_pp0_iter1_reg <= v225_1_addr_9_reg_2998;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_ln238_reg_3053 <= mul_ln238_fu_1610_p2;
        select_ln200_reg_3089 <= select_ln200_fu_1627_p3;
        select_ln207_reg_3094 <= select_ln207_fu_1638_p3;
        select_ln213_reg_3099 <= select_ln213_fu_1649_p3;
        select_ln220_reg_3104 <= select_ln220_fu_1660_p3;
        v142_reg_3109 <= v142_fu_1671_p3;
        v148_reg_3114 <= v148_fu_1682_p3;
        v153_reg_3119 <= v153_fu_1693_p3;
        v154_reg_3023 <= v154_fu_1538_p11;
        v159_reg_3124 <= v159_fu_1704_p3;
        v165_reg_3028 <= v165_fu_1577_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_ln251_reg_3134 <= mul_ln251_fu_1759_p2;
        v176_reg_3129 <= v176_fu_1727_p11;
        v187_reg_3140 <= v187_fu_1781_p11;
        v225_0_addr_13_reg_3190 <= zext_ln238_1_fu_1832_p1;
        v225_0_addr_13_reg_3190_pp0_iter1_reg <= v225_0_addr_13_reg_3190;
        v225_0_addr_16_reg_3210 <= zext_ln245_fu_1852_p1;
        v225_0_addr_16_reg_3210_pp0_iter1_reg <= v225_0_addr_16_reg_3210;
        v225_0_addr_3_reg_3185 <= zext_ln225_1_fu_1822_p1;
        v225_0_addr_3_reg_3185_pp0_iter1_reg <= v225_0_addr_3_reg_3185;
        v225_0_addr_6_reg_3205 <= zext_ln232_fu_1842_p1;
        v225_0_addr_6_reg_3205_pp0_iter1_reg <= v225_0_addr_6_reg_3205;
        v225_1_addr_11_reg_3200 <= zext_ln225_1_fu_1822_p1;
        v225_1_addr_11_reg_3200_pp0_iter1_reg <= v225_1_addr_11_reg_3200;
        v225_1_addr_14_reg_3220 <= zext_ln232_fu_1842_p1;
        v225_1_addr_14_reg_3220_pp0_iter1_reg <= v225_1_addr_14_reg_3220;
        v225_1_addr_5_reg_3195 <= zext_ln238_1_fu_1832_p1;
        v225_1_addr_5_reg_3195_pp0_iter1_reg <= v225_1_addr_5_reg_3195;
        v225_1_addr_8_reg_3215 <= zext_ln245_fu_1852_p1;
        v225_1_addr_8_reg_3215_pp0_iter1_reg <= v225_1_addr_8_reg_3215;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_884 <= grp_fu_231_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)))) begin
        reg_892 <= grp_fu_227_p_dout0;
        reg_896 <= grp_fu_856_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0)))) begin
        reg_900 <= grp_fu_860_p2;
        reg_904 <= grp_fu_864_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)))) begin
        reg_908 <= grp_fu_860_p2;
        reg_912 <= grp_fu_864_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)))) begin
        reg_916 <= grp_fu_860_p2;
        reg_920 <= grp_fu_864_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)))) begin
        reg_924 <= grp_fu_227_p_dout0;
        reg_928 <= grp_fu_856_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v122_reg_3415 <= grp_fu_876_p2;
        v128_reg_3420 <= grp_fu_880_p2;
        v210_reg_3409 <= grp_fu_235_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v133_reg_3281 <= grp_fu_231_p_dout0;
        v144_reg_3287 <= grp_fu_235_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v134_reg_3435 <= grp_fu_231_p_dout0;
        v139_reg_3440 <= grp_fu_235_p_dout0;
        v145_reg_3445 <= grp_fu_876_p2;
        v150_reg_3450 <= grp_fu_880_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v155_reg_3345 <= grp_fu_231_p_dout0;
        v166_reg_3351 <= grp_fu_235_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v156_reg_3455 <= grp_fu_231_p_dout0;
        v161_reg_3460 <= grp_fu_235_p_dout0;
        v167_reg_3465 <= grp_fu_876_p2;
        v172_reg_3470 <= grp_fu_880_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v177_reg_3397 <= grp_fu_231_p_dout0;
        v188_reg_3403 <= grp_fu_235_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v178_reg_3475 <= grp_fu_231_p_dout0;
        v183_reg_3480 <= grp_fu_235_p_dout0;
        v189_reg_3485 <= grp_fu_876_p2;
        v194_reg_3490 <= grp_fu_880_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v200_reg_3495 <= grp_fu_231_p_dout0;
        v205_reg_3500 <= grp_fu_235_p_dout0;
        v211_reg_3505 <= grp_fu_876_p2;
        v216_reg_3510 <= grp_fu_880_p2;
    end
end
always @ (*) begin
    if (((icmp_ln169_reg_2611 == 1'd1) & (1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln169_reg_2611_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_132;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v115_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v115_load = v115_fu_128;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v116_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v116_load = v116_fu_124;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_2320)) begin
            grp_fu_852_p0 = v197_reg_3387;
        end else if ((1'b1 == ap_condition_2317)) begin
            grp_fu_852_p0 = select_ln265_reg_3367;
        end else if ((1'b1 == ap_condition_2313)) begin
            grp_fu_852_p0 = v175_reg_3271;
        end else if ((1'b1 == ap_condition_2310)) begin
            grp_fu_852_p0 = select_ln239_reg_3251;
        end else if ((1'b1 == ap_condition_2306)) begin
            grp_fu_852_p0 = v153_reg_3119;
        end else if ((1'b1 == ap_condition_2303)) begin
            grp_fu_852_p0 = select_ln213_reg_3099;
        end else if ((1'b1 == ap_condition_2299)) begin
            grp_fu_852_p0 = v131_reg_2907;
        end else if ((1'b1 == ap_condition_2296)) begin
            grp_fu_852_p0 = select_ln187_reg_2897;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_852_p0 = v118_fu_2172_p3;
        end else begin
            grp_fu_852_p0 = 'bx;
        end
    end else begin
        grp_fu_852_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_852_p1 = v200_reg_3495;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_852_p1 = v178_reg_3475;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_852_p1 = v156_reg_3455;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_852_p1 = v134_reg_3435;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_852_p1 = v122_reg_3415;
    end else begin
        grp_fu_852_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_2320)) begin
            grp_fu_856_p0 = v203_reg_3392;
        end else if ((1'b1 == ap_condition_2317)) begin
            grp_fu_856_p0 = select_ln272_reg_3372;
        end else if ((1'b1 == ap_condition_2313)) begin
            grp_fu_856_p0 = v181_reg_3276;
        end else if ((1'b1 == ap_condition_2310)) begin
            grp_fu_856_p0 = select_ln246_reg_3256;
        end else if ((1'b1 == ap_condition_2306)) begin
            grp_fu_856_p0 = v159_reg_3124;
        end else if ((1'b1 == ap_condition_2303)) begin
            grp_fu_856_p0 = select_ln220_reg_3104;
        end else if ((1'b1 == ap_condition_2299)) begin
            grp_fu_856_p0 = v137_reg_2912;
        end else if ((1'b1 == ap_condition_2296)) begin
            grp_fu_856_p0 = select_ln194_reg_2902;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_856_p0 = v125_fu_2183_p3;
        end else begin
            grp_fu_856_p0 = 'bx;
        end
    end else begin
        grp_fu_856_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_856_p1 = v205_reg_3500;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_856_p1 = v183_reg_3480;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_856_p1 = v161_reg_3460;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_856_p1 = v139_reg_3440;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_856_p1 = v128_reg_3420;
    end else begin
        grp_fu_856_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        grp_fu_860_p0 = v208_reg_3572;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        grp_fu_860_p0 = select_ln278_reg_3562;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1))) begin
        grp_fu_860_p0 = v186_reg_3377;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0))) begin
        grp_fu_860_p0 = select_ln252_reg_3357;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1))) begin
        grp_fu_860_p0 = v164_reg_3261;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0))) begin
        grp_fu_860_p0 = select_ln226_reg_3241;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1))) begin
        grp_fu_860_p0 = v142_reg_3109;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0))) begin
        grp_fu_860_p0 = select_ln200_reg_3089;
    end else begin
        grp_fu_860_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)))) begin
        grp_fu_860_p1 = v211_reg_3505;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_860_p1 = v189_reg_3485;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_860_p1 = v167_reg_3465;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_860_p1 = v145_reg_3445;
    end else begin
        grp_fu_860_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        grp_fu_864_p0 = v214_reg_3577;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        grp_fu_864_p0 = select_ln285_reg_3567;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1))) begin
        grp_fu_864_p0 = v192_reg_3382;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0))) begin
        grp_fu_864_p0 = select_ln259_reg_3362;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1))) begin
        grp_fu_864_p0 = v170_reg_3266;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0))) begin
        grp_fu_864_p0 = select_ln233_reg_3246;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1))) begin
        grp_fu_864_p0 = v148_reg_3114;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0))) begin
        grp_fu_864_p0 = select_ln207_reg_3094;
    end else begin
        grp_fu_864_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)))) begin
        grp_fu_864_p1 = v216_reg_3510;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_864_p1 = v194_reg_3490;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_864_p1 = v172_reg_3470;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0)))) begin
        grp_fu_864_p1 = v150_reg_3450;
    end else begin
        grp_fu_864_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_868_p0 = reg_884;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_868_p0 = v177_reg_3397;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_868_p0 = v155_reg_3345;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_868_p0 = v133_reg_3281;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_868_p0 = v198_reg_3231;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_868_p0 = v176_reg_3129;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_868_p0 = v154_reg_3023;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_868_p0 = v132_reg_2917;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_868_p0 = v119_reg_2831;
    end else begin
        grp_fu_868_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_868_p1 = v121_reg_3313;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_868_p1 = v113;
    end else begin
        grp_fu_868_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_872_p0 = reg_884;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_872_p0 = v177_reg_3397;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_872_p0 = v155_reg_3345;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_872_p0 = v133_reg_3281;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_872_p0 = v209_reg_3236;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_872_p0 = v187_reg_3140;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_872_p0 = v165_reg_3028;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_872_p0 = v143_reg_2922;
    end else begin
        grp_fu_872_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_872_p1 = v127_reg_3339;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_872_p1 = v113;
    end else begin
        grp_fu_872_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_876_p0 = v210_reg_3409;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_876_p0 = v188_reg_3403;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_876_p0 = v166_reg_3351;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_876_p0 = v144_reg_3287;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_876_p0 = reg_884;
    end else begin
        grp_fu_876_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_876_p1 = v121_reg_3313;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_876_p1 = v121_fu_2053_p1;
    end else begin
        grp_fu_876_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_880_p0 = v210_reg_3409;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_880_p0 = v188_reg_3403;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_880_p0 = v166_reg_3351;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_880_p0 = v144_reg_3287;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_880_p0 = reg_884;
    end else begin
        grp_fu_880_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_880_p1 = v127_reg_3339;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_880_p1 = v127_fu_2077_p1;
    end else begin
        grp_fu_880_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = v225_0_addr_10_reg_3552;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v225_0_address0_local = v225_0_addr_8_reg_3319_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_0_address0_local = v225_0_addr_17_reg_3324_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_0_address0_local = v225_0_addr_6_reg_3205_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_0_address0_local = v225_0_addr_16_reg_3210_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_0_address0_local = v225_0_addr_4_reg_3003_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_0_address0_local = v225_0_addr_14_reg_3008_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_0_address0_local = v225_0_addr_2_reg_2811_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_0_address0_local = v225_0_addr_12_reg_2816_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_0_address0_local = zext_ln284_fu_2228_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln169_reg_2642 == 1'd1))) begin
        v225_0_address0_local = zext_ln271_fu_2071_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln169_reg_2642 == 1'd0))) begin
        v225_0_address0_local = zext_ln258_fu_2061_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642 == 1'd1))) begin
        v225_0_address0_local = zext_ln245_fu_1852_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642 == 1'd0))) begin
        v225_0_address0_local = zext_ln232_fu_1842_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642 == 1'd1))) begin
        v225_0_address0_local = zext_ln219_fu_1516_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642 == 1'd0))) begin
        v225_0_address0_local = zext_ln206_fu_1506_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642 == 1'd1))) begin
        v225_0_address0_local = zext_ln193_fu_1249_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642 == 1'd0))) begin
        v225_0_address0_local = zext_ln179_fu_1239_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = v225_0_addr_7_reg_3542;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v225_0_address1_local = v225_0_addr_5_reg_3293_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_0_address1_local = v225_0_addr_15_reg_3298_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_0_address1_local = v225_0_addr_3_reg_3185_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_0_address1_local = v225_0_addr_13_reg_3190_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_0_address1_local = v225_0_addr_1_reg_2983_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_0_address1_local = v225_0_addr_11_reg_2988_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_0_address1_local = v225_0_addr_reg_2791_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_0_address1_local = v225_0_addr_9_reg_2796_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_0_address1_local = zext_ln277_1_fu_2223_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln169_reg_2642 == 1'd1))) begin
        v225_0_address1_local = zext_ln264_1_fu_2047_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln169_reg_2642 == 1'd0))) begin
        v225_0_address1_local = zext_ln251_1_fu_2037_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642 == 1'd1))) begin
        v225_0_address1_local = zext_ln238_1_fu_1832_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642 == 1'd0))) begin
        v225_0_address1_local = zext_ln225_1_fu_1822_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642 == 1'd1))) begin
        v225_0_address1_local = zext_ln212_1_fu_1496_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642 == 1'd0))) begin
        v225_0_address1_local = zext_ln199_1_fu_1486_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642 == 1'd1))) begin
        v225_0_address1_local = zext_ln186_1_fu_1229_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642 == 1'd0))) begin
        v225_0_address1_local = zext_ln171_1_fu_1219_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642 == 1'd0)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642 == 1'd1)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642 == 1'd0)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642 == 1'd1)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642 == 1'd0))| ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642 == 1'd1)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln169_reg_2642 == 1'd0)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln169_reg_2642 == 1'd1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)& (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642 == 1'd0)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642 == 1'd1)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642 == 1'd0)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642 == 1'd1)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642 == 1'd0))| ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642 == 1'd1)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln169_reg_2642 == 1'd0)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln169_reg_2642 == 1'd1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)& (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_d0_local = bitcast_ln289_fu_2422_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v225_0_d0_local = bitcast_ln263_fu_2402_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_0_d0_local = bitcast_ln276_1_fu_2392_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_0_d0_local = bitcast_ln237_fu_2362_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_0_d0_local = bitcast_ln250_1_fu_2352_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_0_d0_local = bitcast_ln211_fu_2322_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_0_d0_local = bitcast_ln224_1_fu_2290_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_0_d0_local = bitcast_ln185_reg_3536;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_0_d0_local = bitcast_ln198_1_fu_2248_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_d1_local = bitcast_ln283_fu_2417_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v225_0_d1_local = bitcast_ln257_fu_2397_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_0_d1_local = bitcast_ln270_1_fu_2387_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_0_d1_local = bitcast_ln231_fu_2357_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_0_d1_local = bitcast_ln244_1_fu_2347_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_0_d1_local = bitcast_ln205_fu_2317_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_0_d1_local = bitcast_ln218_1_fu_2285_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_0_d1_local = bitcast_ln178_reg_3530;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_0_d1_local = bitcast_ln192_1_fu_2243_p1;
    end else begin
        v225_0_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)& (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)))) begin
        v225_0_we0_local = 1'b1;
    end else begin
        v225_0_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)& (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)))) begin
        v225_0_we1_local = 1'b1;
    end else begin
        v225_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = v225_1_addr_17_reg_3557;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v225_1_address0_local = v225_1_addr_16_reg_3334_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_1_address0_local = v225_1_addr_14_reg_3220_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_1_address0_local = v225_1_addr_10_reg_3329_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_1_address0_local = v225_1_addr_12_reg_3018_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_1_address0_local = v225_1_addr_8_reg_3215_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_1_address0_local = v225_1_addr_2_reg_2821_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_1_address0_local = v225_1_addr_6_reg_3013_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_1_address0_local = zext_ln284_fu_2228_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_1_address0_local = v225_1_addr_4_reg_2826_pp0_iter1_reg;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln169_reg_2642 == 1'd1))) begin
        v225_1_address0_local = zext_ln258_fu_2061_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln169_reg_2642 == 1'd0))) begin
        v225_1_address0_local = zext_ln271_fu_2071_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642 == 1'd1))) begin
        v225_1_address0_local = zext_ln232_fu_1842_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642 == 1'd0))) begin
        v225_1_address0_local = zext_ln245_fu_1852_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642 == 1'd1))) begin
        v225_1_address0_local = zext_ln206_fu_1506_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642 == 1'd0))) begin
        v225_1_address0_local = zext_ln219_fu_1516_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642 == 1'd0))) begin
        v225_1_address0_local = zext_ln193_fu_1249_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642 == 1'd1))) begin
        v225_1_address0_local = zext_ln179_fu_1239_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = v225_1_addr_15_reg_3547;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v225_1_address1_local = v225_1_addr_13_reg_3308_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_1_address1_local = v225_1_addr_11_reg_3200_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_1_address1_local = v225_1_addr_7_reg_3303_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_1_address1_local = v225_1_addr_9_reg_2998_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_1_address1_local = v225_1_addr_5_reg_3195_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_1_address1_local = v225_1_addr_reg_2801_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_1_address1_local = v225_1_addr_3_reg_2993_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_1_address1_local = zext_ln277_1_fu_2223_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_1_address1_local = v225_1_addr_1_reg_2806_pp0_iter1_reg;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln169_reg_2642 == 1'd1))) begin
        v225_1_address1_local = zext_ln251_1_fu_2037_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln169_reg_2642 == 1'd0))) begin
        v225_1_address1_local = zext_ln264_1_fu_2047_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642 == 1'd1))) begin
        v225_1_address1_local = zext_ln225_1_fu_1822_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642 == 1'd0))) begin
        v225_1_address1_local = zext_ln238_1_fu_1832_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642 == 1'd1))) begin
        v225_1_address1_local = zext_ln199_1_fu_1486_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642 == 1'd0))) begin
        v225_1_address1_local = zext_ln212_1_fu_1496_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642 == 1'd0))) begin
        v225_1_address1_local = zext_ln186_1_fu_1229_p1;
    end else if (((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642 == 1'd1))) begin
        v225_1_address1_local = zext_ln171_1_fu_1219_p1;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642 == 1'd0)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642 == 1'd1)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642 == 1'd0)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642 == 1'd1)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642 == 1'd0))| ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642 == 1'd1)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln169_reg_2642 == 1'd0)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln169_reg_2642 == 1'd1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)& (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642 == 1'd0)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642 == 1'd1)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642 == 1'd0)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642 == 1'd1)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642 == 1'd0))| ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln169_reg_2642 == 1'd1)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln169_reg_2642 == 1'd0)) | ((icmp_ln169_reg_2611 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9) & (trunc_ln169_reg_2642 == 1'd1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)& (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cmp11_read_reg_2560 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_d0_local = bitcast_ln289_1_fu_2432_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v225_1_d0_local = bitcast_ln263_1_fu_2412_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_1_d0_local = bitcast_ln237_1_fu_2382_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_1_d0_local = bitcast_ln276_fu_2372_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_1_d0_local = bitcast_ln211_1_fu_2342_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_1_d0_local = bitcast_ln250_fu_2332_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_1_d0_local = bitcast_ln185_reg_3536;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_1_d0_local = bitcast_ln224_fu_2258_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_1_d0_local = bitcast_ln198_fu_2238_p1;
    end else begin
        v225_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_d1_local = bitcast_ln283_1_fu_2427_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v225_1_d1_local = bitcast_ln257_1_fu_2407_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_1_d1_local = bitcast_ln231_1_fu_2377_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_1_d1_local = bitcast_ln270_fu_2367_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_1_d1_local = bitcast_ln205_1_fu_2337_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_1_d1_local = bitcast_ln244_fu_2327_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1))) begin
        v225_1_d1_local = bitcast_ln178_reg_3530;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_1_d1_local = bitcast_ln218_fu_2253_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0))) begin
        v225_1_d1_local = bitcast_ln192_fu_2233_p1;
    end else begin
        v225_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)& (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)))) begin
        v225_1_we0_local = 1'b1;
    end else begin
        v225_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)& (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (trunc_ln169_reg_2642_pp0_iter2_reg == 1'd1)))) begin
        v225_1_we1_local = 1'b1;
    end else begin
        v225_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v226_0_address0_local = p_cast35_fu_1804_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v226_0_address0_local = p_cast33_fu_1600_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v226_0_address0_local = p_cast31_fu_1453_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v226_0_address0_local = p_cast30_fu_1301_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v226_0_address0_local = p_cast29_fu_1174_p1;
        end else begin
            v226_0_address0_local = 'bx;
        end
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v226_0_address1_local = p_cast36_fu_1811_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v226_0_address1_local = p_cast34_fu_1616_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v226_0_address1_local = p_cast32_fu_1460_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v226_0_address1_local = p_cast_fu_1294_p1;
        end else begin
            v226_0_address1_local = 'bx;
        end
    end else begin
        v226_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v226_0_ce0_local = 1'b1;
    end else begin
        v226_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v226_0_ce1_local = 1'b1;
    end else begin
        v226_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v226_1_address0_local = p_cast35_fu_1804_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v226_1_address0_local = p_cast33_fu_1600_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v226_1_address0_local = p_cast31_fu_1453_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v226_1_address0_local = p_cast30_fu_1301_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v226_1_address0_local = p_cast29_fu_1174_p1;
        end else begin
            v226_1_address0_local = 'bx;
        end
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v226_1_address1_local = p_cast36_fu_1811_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v226_1_address1_local = p_cast34_fu_1616_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v226_1_address1_local = p_cast32_fu_1460_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v226_1_address1_local = p_cast_fu_1294_p1;
        end else begin
            v226_1_address1_local = 'bx;
        end
    end else begin
        v226_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v226_1_ce0_local = 1'b1;
    end else begin
        v226_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v226_1_ce1_local = 1'b1;
    end else begin
        v226_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v226_2_address0_local = p_cast35_fu_1804_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v226_2_address0_local = p_cast33_fu_1600_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v226_2_address0_local = p_cast31_fu_1453_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v226_2_address0_local = p_cast30_fu_1301_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v226_2_address0_local = p_cast29_fu_1174_p1;
        end else begin
            v226_2_address0_local = 'bx;
        end
    end else begin
        v226_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v226_2_address1_local = p_cast36_fu_1811_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v226_2_address1_local = p_cast34_fu_1616_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v226_2_address1_local = p_cast32_fu_1460_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v226_2_address1_local = p_cast_fu_1294_p1;
        end else begin
            v226_2_address1_local = 'bx;
        end
    end else begin
        v226_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v226_2_ce0_local = 1'b1;
    end else begin
        v226_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v226_2_ce1_local = 1'b1;
    end else begin
        v226_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v226_3_address0_local = p_cast35_fu_1804_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v226_3_address0_local = p_cast33_fu_1600_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v226_3_address0_local = p_cast31_fu_1453_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v226_3_address0_local = p_cast30_fu_1301_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v226_3_address0_local = p_cast29_fu_1174_p1;
        end else begin
            v226_3_address0_local = 'bx;
        end
    end else begin
        v226_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v226_3_address1_local = p_cast36_fu_1811_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v226_3_address1_local = p_cast34_fu_1616_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v226_3_address1_local = p_cast32_fu_1460_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v226_3_address1_local = p_cast_fu_1294_p1;
        end else begin
            v226_3_address1_local = 'bx;
        end
    end else begin
        v226_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v226_3_ce0_local = 1'b1;
    end else begin
        v226_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v226_3_ce1_local = 1'b1;
    end else begin
        v226_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v227_0_ce0_local = 1'b1;
    end else begin
        v227_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v227_0_ce1_local = 1'b1;
    end else begin
        v227_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v227_1_ce0_local = 1'b1;
    end else begin
        v227_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v227_1_ce1_local = 1'b1;
    end else begin
        v227_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln169_1_fu_960_p2 = (ap_sig_allocacmp_indvar_flatten_load + 11'd1);
assign add_ln169_fu_972_p2 = (ap_sig_allocacmp_v115_load + 8'd9);
assign add_ln170_fu_1121_p2 = (select_ln169_fu_1020_p3 + 8'd2);
assign add_ln171_fu_1215_p2 = (mul_ln171_reg_2657 + zext_ln175_reg_2683);
assign add_ln175_fu_1077_p2 = (mul_ln175 + zext_ln175_fu_1073_p1);
assign add_ln179_fu_1235_p2 = (mul_ln171_reg_2657 + zext_ln182_reg_2706);
assign add_ln182_fu_1110_p2 = (mul_ln175 + zext_ln182_fu_1106_p1);
assign add_ln186_fu_1225_p2 = (mul_ln186_reg_2729 + zext_ln175_reg_2683);
assign add_ln193_fu_1245_p2 = (mul_ln186_reg_2729 + zext_ln182_reg_2706);
assign add_ln199_fu_1482_p2 = (mul_ln199_reg_2775 + zext_ln175_reg_2683);
assign add_ln206_fu_1502_p2 = (mul_ln199_reg_2775 + zext_ln182_reg_2706);
assign add_ln212_fu_1492_p2 = (mul_ln212_reg_2881 + zext_ln175_reg_2683);
assign add_ln219_fu_1512_p2 = (mul_ln212_reg_2881 + zext_ln182_reg_2706);
assign add_ln225_fu_1818_p2 = (mul_ln225_reg_2967 + zext_ln175_reg_2683);
assign add_ln232_fu_1838_p2 = (mul_ln225_reg_2967 + zext_ln182_reg_2706);
assign add_ln238_fu_1828_p2 = (mul_ln238_reg_3053 + zext_ln175_reg_2683);
assign add_ln245_fu_1848_p2 = (mul_ln238_reg_3053 + zext_ln182_reg_2706);
assign add_ln251_fu_2033_p2 = (mul_ln251_reg_3134 + zext_ln175_reg_2683);
assign add_ln258_fu_2057_p2 = (mul_ln251_reg_3134 + zext_ln182_reg_2706);
assign add_ln264_fu_2043_p2 = (mul_ln264_reg_3225 + zext_ln175_reg_2683);
assign add_ln271_fu_2067_p2 = (mul_ln264_reg_3225 + zext_ln182_reg_2706);
assign add_ln277_fu_2205_p2 = (mul_ln277_fu_2199_p2 + zext_ln175_reg_2683_pp0_iter1_reg);
assign add_ln284_fu_2210_p2 = (mul_ln277_fu_2199_p2 + zext_ln182_reg_2706_pp0_iter1_reg);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
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
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_2296 = ((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0));
end
always @ (*) begin
    ap_condition_2299 = ((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1));
end
always @ (*) begin
    ap_condition_2303 = ((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0));
end
always @ (*) begin
    ap_condition_2306 = ((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1));
end
always @ (*) begin
    ap_condition_2310 = ((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0));
end
always @ (*) begin
    ap_condition_2313 = ((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1));
end
always @ (*) begin
    ap_condition_2317 = ((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd0));
end
always @ (*) begin
    ap_condition_2320 = ((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7) & (trunc_ln169_reg_2642_pp0_iter1_reg == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage9;
assign ap_ready = ap_ready_sig;
assign bitcast_ln178_fu_2215_p1 = grp_fu_227_p_dout0;
assign bitcast_ln185_fu_2219_p1 = grp_fu_856_p2;
assign bitcast_ln186_fu_1331_p1 = v225_1_q1;
assign bitcast_ln192_1_fu_2243_p1 = reg_892;
assign bitcast_ln192_fu_2233_p1 = reg_892;
assign bitcast_ln193_fu_1342_p1 = v225_1_q0;
assign bitcast_ln198_1_fu_2248_p1 = reg_896;
assign bitcast_ln198_fu_2238_p1 = reg_896;
assign bitcast_ln199_fu_1623_p1 = v225_0_q1;
assign bitcast_ln205_1_fu_2337_p1 = reg_900;
assign bitcast_ln205_fu_2317_p1 = reg_900;
assign bitcast_ln206_fu_1634_p1 = v225_0_q0;
assign bitcast_ln211_1_fu_2342_p1 = reg_904;
assign bitcast_ln211_fu_2322_p1 = reg_904;
assign bitcast_ln212_fu_1645_p1 = v225_1_q1;
assign bitcast_ln218_1_fu_2285_p1 = reg_892;
assign bitcast_ln218_fu_2253_p1 = reg_892;
assign bitcast_ln219_fu_1656_p1 = v225_1_q0;
assign bitcast_ln224_1_fu_2290_p1 = reg_896;
assign bitcast_ln224_fu_2258_p1 = reg_896;
assign bitcast_ln225_fu_1945_p1 = v225_0_q1;
assign bitcast_ln231_1_fu_2377_p1 = reg_908;
assign bitcast_ln231_fu_2357_p1 = reg_908;
assign bitcast_ln232_fu_1956_p1 = v225_0_q0;
assign bitcast_ln237_1_fu_2382_p1 = reg_912;
assign bitcast_ln237_fu_2362_p1 = reg_912;
assign bitcast_ln238_fu_1967_p1 = v225_1_q1;
assign bitcast_ln244_1_fu_2347_p1 = reg_892;
assign bitcast_ln244_fu_2327_p1 = reg_892;
assign bitcast_ln245_fu_1978_p1 = v225_1_q0;
assign bitcast_ln250_1_fu_2352_p1 = reg_896;
assign bitcast_ln250_fu_2332_p1 = reg_896;
assign bitcast_ln251_fu_2081_p1 = v225_0_q1;
assign bitcast_ln257_1_fu_2407_p1 = reg_916;
assign bitcast_ln257_fu_2397_p1 = reg_916;
assign bitcast_ln258_fu_2092_p1 = v225_0_q0;
assign bitcast_ln263_1_fu_2412_p1 = reg_920;
assign bitcast_ln263_fu_2402_p1 = reg_920;
assign bitcast_ln264_fu_2103_p1 = v225_1_q1;
assign bitcast_ln270_1_fu_2387_p1 = reg_924;
assign bitcast_ln270_fu_2367_p1 = reg_924;
assign bitcast_ln271_fu_2114_p1 = v225_1_q0;
assign bitcast_ln276_1_fu_2392_p1 = reg_928;
assign bitcast_ln276_fu_2372_p1 = reg_928;
assign bitcast_ln277_fu_2263_p1 = v225_0_q1;
assign bitcast_ln283_1_fu_2427_p1 = reg_900;
assign bitcast_ln283_fu_2417_p1 = reg_900;
assign bitcast_ln284_fu_2274_p1 = v225_0_q0;
assign bitcast_ln289_1_fu_2432_p1 = reg_904;
assign bitcast_ln289_fu_2422_p1 = reg_904;
assign cmp11_read_reg_2560 = cmp11;
assign empty_23_fu_1035_p2 = (select_ln169_1_reg_2625 + 8'd1);
assign empty_33_fu_1181_p2 = (lshr_ln1_reg_2648 + 7'd1);
assign empty_38_fu_1054_p2 = (select_ln169_1_reg_2625 + 8'd3);
assign empty_48_fu_1467_p2 = (lshr_ln1_reg_2648 + 7'd2);
assign empty_53_fu_1141_p2 = (select_ln169_1_reg_2625 + 8'd5);
assign empty_63_fu_1750_p2 = (lshr_ln1_reg_2648 + 7'd3);
assign empty_68_fu_1196_p2 = (select_ln169_1_reg_2625 + 8'd7);
assign empty_78_fu_2191_p2 = (lshr_ln1_reg_2648_pp0_iter1_reg + 7'd4);
assign grp_fu_227_p_ce = 1'b1;
assign grp_fu_227_p_din0 = grp_fu_852_p0;
assign grp_fu_227_p_din1 = grp_fu_852_p1;
assign grp_fu_227_p_opcode = 2'd0;
assign grp_fu_231_p_ce = 1'b1;
assign grp_fu_231_p_din0 = grp_fu_868_p0;
assign grp_fu_231_p_din1 = grp_fu_868_p1;
assign grp_fu_235_p_ce = 1'b1;
assign grp_fu_235_p_din0 = grp_fu_872_p0;
assign grp_fu_235_p_din1 = grp_fu_872_p1;
assign grp_fu_2437_p0 = grp_fu_2437_p00;
assign grp_fu_2437_p00 = select_ln169_1_fu_984_p3;
assign grp_fu_2437_p1 = 14'd53;
assign grp_fu_2437_p2 = zext_ln168_1_cast_reg_2598;
assign grp_fu_2445_p0 = grp_fu_2445_p00;
assign grp_fu_2445_p00 = empty_23_fu_1035_p2;
assign grp_fu_2445_p1 = 14'd53;
assign grp_fu_2445_p2 = zext_ln168_1_cast_reg_2598;
assign grp_fu_2453_p1 = 8'd2;
assign grp_fu_2453_p2 = 14'd53;
assign grp_fu_2453_p3 = zext_ln168_1_cast_reg_2598;
assign grp_fu_2462_p0 = grp_fu_2462_p00;
assign grp_fu_2462_p00 = empty_38_fu_1054_p2;
assign grp_fu_2462_p1 = 14'd53;
assign grp_fu_2462_p2 = zext_ln168_1_cast_reg_2598;
assign grp_fu_2469_p1 = 8'd4;
assign grp_fu_2469_p2 = 14'd53;
assign grp_fu_2469_p3 = zext_ln168_1_cast_reg_2598;
assign grp_fu_2478_p0 = grp_fu_2478_p00;
assign grp_fu_2478_p00 = empty_53_fu_1141_p2;
assign grp_fu_2478_p1 = 14'd53;
assign grp_fu_2478_p2 = zext_ln168_1_cast_reg_2598;
assign grp_fu_2485_p1 = 8'd6;
assign grp_fu_2485_p2 = 14'd53;
assign grp_fu_2485_p3 = zext_ln168_1_cast_reg_2598;
assign grp_fu_2493_p0 = grp_fu_2493_p00;
assign grp_fu_2493_p00 = empty_68_fu_1196_p2;
assign grp_fu_2493_p1 = 14'd53;
assign grp_fu_2493_p2 = zext_ln168_1_cast_reg_2598;
assign grp_fu_2500_p1 = 8'd8;
assign grp_fu_2500_p2 = 14'd53;
assign grp_fu_2500_p3 = zext_ln168_1_cast_reg_2598;
assign icmp_ln169_fu_954_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 11'd1900) ? 1'b1 : 1'b0);
assign icmp_ln170_fu_978_p2 = ((ap_sig_allocacmp_v116_load < 8'd190) ? 1'b1 : 1'b0);
assign mul_ln171_fu_1029_p0 = mul_ln171_fu_1029_p00;
assign mul_ln171_fu_1029_p00 = lshr_ln1_reg_2648;
assign mul_ln171_fu_1029_p1 = 15'd190;
assign mul_ln186_fu_1135_p0 = mul_ln186_fu_1135_p00;
assign mul_ln186_fu_1135_p00 = tmp_reg_2668;
assign mul_ln186_fu_1135_p1 = 15'd190;
assign mul_ln199_fu_1190_p0 = mul_ln199_fu_1190_p00;
assign mul_ln199_fu_1190_p00 = empty_33_fu_1181_p2;
assign mul_ln199_fu_1190_p1 = 15'd190;
assign mul_ln212_fu_1311_p0 = mul_ln212_fu_1311_p00;
assign mul_ln212_fu_1311_p00 = tmp_1_reg_2678;
assign mul_ln212_fu_1311_p1 = 15'd190;
assign mul_ln225_fu_1476_p0 = mul_ln225_fu_1476_p00;
assign mul_ln225_fu_1476_p00 = empty_48_fu_1467_p2;
assign mul_ln225_fu_1476_p1 = 15'd190;
assign mul_ln238_fu_1610_p0 = mul_ln238_fu_1610_p00;
assign mul_ln238_fu_1610_p00 = tmp_2_reg_2740;
assign mul_ln238_fu_1610_p1 = 15'd190;
assign mul_ln251_fu_1759_p0 = mul_ln251_fu_1759_p00;
assign mul_ln251_fu_1759_p00 = empty_63_fu_1750_p2;
assign mul_ln251_fu_1759_p1 = 15'd190;
assign mul_ln264_fu_1861_p0 = mul_ln264_fu_1861_p00;
assign mul_ln264_fu_1861_p00 = tmp_3_reg_2786;
assign mul_ln264_fu_1861_p1 = 15'd190;
assign mul_ln277_fu_2199_p0 = mul_ln277_fu_2199_p00;
assign mul_ln277_fu_2199_p00 = empty_78_reg_3515;
assign mul_ln277_fu_2199_p1 = 15'd190;
assign or_ln_fu_1098_p3 = {{tmp_4_fu_1088_p4}, {1'd1}};
assign p_cast29_fu_1174_p1 = grp_fu_2437_p3;
assign p_cast30_fu_1301_p1 = grp_fu_2453_p4;
assign p_cast31_fu_1453_p1 = empty_40_reg_2876;
assign p_cast32_fu_1460_p1 = grp_fu_2469_p4;
assign p_cast33_fu_1600_p1 = empty_55_reg_2973;
assign p_cast34_fu_1616_p1 = empty_62_reg_2978;
assign p_cast35_fu_1804_p1 = empty_70_reg_3079;
assign p_cast36_fu_1811_p1 = empty_77_reg_3084;
assign p_cast_fu_1294_p1 = grp_fu_2445_p3;
assign select_ln169_1_fu_984_p3 = ((icmp_ln170_fu_978_p2[0:0] == 1'b1) ? ap_sig_allocacmp_v115_load : add_ln169_fu_972_p2);
assign select_ln169_fu_1020_p3 = ((icmp_ln170_reg_2620[0:0] == 1'b1) ? v116_load_reg_2615 : 8'd0);
assign select_ln171_fu_1317_p3 = ((trunc_ln169_reg_2642[0:0] == 1'b1) ? v225_1_q1 : v225_0_q1);
assign select_ln175_fu_1160_p3 = ((empty[0:0] == 1'b1) ? v227_1_q1 : v227_0_q1);
assign select_ln179_fu_1324_p3 = ((trunc_ln169_reg_2642[0:0] == 1'b1) ? v225_1_q0 : v225_0_q0);
assign select_ln182_fu_1167_p3 = ((empty[0:0] == 1'b1) ? v227_1_q0 : v227_0_q0);
assign select_ln187_fu_1335_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln186_fu_1331_p1);
assign select_ln194_fu_1346_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln193_fu_1342_p1);
assign select_ln200_fu_1627_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln199_fu_1623_p1);
assign select_ln207_fu_1638_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln206_fu_1634_p1);
assign select_ln213_fu_1649_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln212_fu_1645_p1);
assign select_ln220_fu_1660_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln219_fu_1656_p1);
assign select_ln226_fu_1949_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln225_fu_1945_p1);
assign select_ln233_fu_1960_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln232_fu_1956_p1);
assign select_ln239_fu_1971_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln238_fu_1967_p1);
assign select_ln246_fu_1982_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln245_fu_1978_p1);
assign select_ln252_fu_2085_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln251_fu_2081_p1);
assign select_ln259_fu_2096_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln258_fu_2092_p1);
assign select_ln265_fu_2107_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln264_fu_2103_p1);
assign select_ln272_fu_2118_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln271_fu_2114_p1);
assign select_ln278_fu_2267_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln277_fu_2263_p1);
assign select_ln285_fu_2278_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln284_fu_2274_p1);
assign tmp_4_fu_1088_p4 = {{select_ln169_fu_1020_p3[7:1]}};
assign trunc_ln169_fu_996_p1 = select_ln169_1_fu_984_p3[0:0];
assign v117_fu_2169_p1 = select_ln171_reg_2887;
assign v118_fu_2172_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v117_fu_2169_p1);
assign v119_fu_1271_p2 = v226_0_q0;
assign v119_fu_1271_p4 = v226_1_q0;
assign v119_fu_1271_p6 = v226_2_q0;
assign v119_fu_1271_p8 = v226_3_q0;
assign v119_fu_1271_p9 = 'bx;
assign v121_fu_2053_p1 = select_ln175_reg_2745;
assign v124_fu_2180_p1 = select_ln179_reg_2892;
assign v125_fu_2183_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v124_fu_2180_p1);
assign v127_fu_2077_p1 = select_ln182_reg_2750;
assign v130_fu_1353_p1 = v225_0_q1;
assign v131_fu_1357_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v130_fu_1353_p1);
assign v132_fu_1391_p2 = v226_0_q1;
assign v132_fu_1391_p4 = v226_1_q1;
assign v132_fu_1391_p6 = v226_2_q1;
assign v132_fu_1391_p8 = v226_3_q1;
assign v132_fu_1391_p9 = 'bx;
assign v136_fu_1364_p1 = v225_0_q0;
assign v137_fu_1368_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v136_fu_1364_p1);
assign v141_fu_1667_p1 = v225_1_q1;
assign v142_fu_1671_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v141_fu_1667_p1);
assign v143_fu_1430_p2 = v226_0_q0;
assign v143_fu_1430_p4 = v226_1_q0;
assign v143_fu_1430_p6 = v226_2_q0;
assign v143_fu_1430_p8 = v226_3_q0;
assign v143_fu_1430_p9 = 'bx;
assign v147_fu_1678_p1 = v225_1_q0;
assign v148_fu_1682_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v147_fu_1678_p1);
assign v152_fu_1689_p1 = v225_0_q1;
assign v153_fu_1693_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v152_fu_1689_p1);
assign v154_fu_1538_p2 = v226_0_q0;
assign v154_fu_1538_p4 = v226_1_q0;
assign v154_fu_1538_p6 = v226_2_q0;
assign v154_fu_1538_p8 = v226_3_q0;
assign v154_fu_1538_p9 = 'bx;
assign v158_fu_1700_p1 = v225_0_q0;
assign v159_fu_1704_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v158_fu_1700_p1);
assign v163_fu_1989_p1 = v225_1_q1;
assign v164_fu_1993_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v163_fu_1989_p1);
assign v165_fu_1577_p2 = v226_0_q1;
assign v165_fu_1577_p4 = v226_1_q1;
assign v165_fu_1577_p6 = v226_2_q1;
assign v165_fu_1577_p8 = v226_3_q1;
assign v165_fu_1577_p9 = 'bx;
assign v169_fu_2000_p1 = v225_1_q0;
assign v170_fu_2004_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v169_fu_2000_p1);
assign v174_fu_2011_p1 = v225_0_q1;
assign v175_fu_2015_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v174_fu_2011_p1);
assign v176_fu_1727_p2 = v226_0_q0;
assign v176_fu_1727_p4 = v226_1_q0;
assign v176_fu_1727_p6 = v226_2_q0;
assign v176_fu_1727_p8 = v226_3_q0;
assign v176_fu_1727_p9 = 'bx;
assign v180_fu_2022_p1 = v225_0_q0;
assign v181_fu_2026_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v180_fu_2022_p1);
assign v185_fu_2125_p1 = v225_1_q1;
assign v186_fu_2129_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v185_fu_2125_p1);
assign v187_fu_1781_p2 = v226_0_q1;
assign v187_fu_1781_p4 = v226_1_q1;
assign v187_fu_1781_p6 = v226_2_q1;
assign v187_fu_1781_p8 = v226_3_q1;
assign v187_fu_1781_p9 = 'bx;
assign v191_fu_2136_p1 = v225_1_q0;
assign v192_fu_2140_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v191_fu_2136_p1);
assign v196_fu_2147_p1 = v225_0_q1;
assign v197_fu_2151_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v196_fu_2147_p1);
assign v198_fu_1883_p2 = v226_0_q0;
assign v198_fu_1883_p4 = v226_1_q0;
assign v198_fu_1883_p6 = v226_2_q0;
assign v198_fu_1883_p8 = v226_3_q0;
assign v198_fu_1883_p9 = 'bx;
assign v202_fu_2158_p1 = v225_0_q0;
assign v203_fu_2162_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v202_fu_2158_p1);
assign v207_fu_2295_p1 = v225_1_q1;
assign v208_fu_2299_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v207_fu_2295_p1);
assign v209_fu_1922_p2 = v226_0_q1;
assign v209_fu_1922_p4 = v226_1_q1;
assign v209_fu_1922_p6 = v226_2_q1;
assign v209_fu_1922_p8 = v226_3_q1;
assign v209_fu_1922_p9 = 'bx;
assign v213_fu_2306_p1 = v225_1_q0;
assign v214_fu_2310_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v213_fu_2306_p1);
assign v225_0_address0 = v225_0_address0_local;
assign v225_0_address1 = v225_0_address1_local;
assign v225_0_ce0 = v225_0_ce0_local;
assign v225_0_ce1 = v225_0_ce1_local;
assign v225_0_d0 = v225_0_d0_local;
assign v225_0_d1 = v225_0_d1_local;
assign v225_0_we0 = v225_0_we0_local;
assign v225_0_we1 = v225_0_we1_local;
assign v225_1_address0 = v225_1_address0_local;
assign v225_1_address1 = v225_1_address1_local;
assign v225_1_ce0 = v225_1_ce0_local;
assign v225_1_ce1 = v225_1_ce1_local;
assign v225_1_d0 = v225_1_d0_local;
assign v225_1_d1 = v225_1_d1_local;
assign v225_1_we0 = v225_1_we0_local;
assign v225_1_we1 = v225_1_we1_local;
assign v226_0_address0 = v226_0_address0_local;
assign v226_0_address1 = v226_0_address1_local;
assign v226_0_ce0 = v226_0_ce0_local;
assign v226_0_ce1 = v226_0_ce1_local;
assign v226_1_address0 = v226_1_address0_local;
assign v226_1_address1 = v226_1_address1_local;
assign v226_1_ce0 = v226_1_ce0_local;
assign v226_1_ce1 = v226_1_ce1_local;
assign v226_2_address0 = v226_2_address0_local;
assign v226_2_address1 = v226_2_address1_local;
assign v226_2_ce0 = v226_2_ce0_local;
assign v226_2_ce1 = v226_2_ce1_local;
assign v226_3_address0 = v226_3_address0_local;
assign v226_3_address1 = v226_3_address1_local;
assign v226_3_ce0 = v226_3_ce0_local;
assign v226_3_ce1 = v226_3_ce1_local;
assign v227_0_address0 = zext_ln182_1_fu_1115_p1;
assign v227_0_address1 = zext_ln175_1_fu_1082_p1;
assign v227_0_ce0 = v227_0_ce0_local;
assign v227_0_ce1 = v227_0_ce1_local;
assign v227_1_address0 = zext_ln182_1_fu_1115_p1;
assign v227_1_address1 = zext_ln175_1_fu_1082_p1;
assign v227_1_ce0 = v227_1_ce0_local;
assign v227_1_ce1 = v227_1_ce1_local;
assign zext_ln168_1_cast_fu_932_p1 = zext_ln168_1;
assign zext_ln171_1_fu_1219_p1 = add_ln171_fu_1215_p2;
assign zext_ln175_1_fu_1082_p1 = add_ln175_fu_1077_p2;
assign zext_ln175_fu_1073_p1 = select_ln169_fu_1020_p3;
assign zext_ln179_fu_1239_p1 = add_ln179_fu_1235_p2;
assign zext_ln182_1_fu_1115_p1 = add_ln182_fu_1110_p2;
assign zext_ln182_fu_1106_p1 = or_ln_fu_1098_p3;
assign zext_ln186_1_fu_1229_p1 = add_ln186_fu_1225_p2;
assign zext_ln193_fu_1249_p1 = add_ln193_fu_1245_p2;
assign zext_ln199_1_fu_1486_p1 = add_ln199_fu_1482_p2;
assign zext_ln206_fu_1506_p1 = add_ln206_fu_1502_p2;
assign zext_ln212_1_fu_1496_p1 = add_ln212_fu_1492_p2;
assign zext_ln219_fu_1516_p1 = add_ln219_fu_1512_p2;
assign zext_ln225_1_fu_1822_p1 = add_ln225_fu_1818_p2;
assign zext_ln232_fu_1842_p1 = add_ln232_fu_1838_p2;
assign zext_ln238_1_fu_1832_p1 = add_ln238_fu_1828_p2;
assign zext_ln245_fu_1852_p1 = add_ln245_fu_1848_p2;
assign zext_ln251_1_fu_2037_p1 = add_ln251_fu_2033_p2;
assign zext_ln258_fu_2061_p1 = add_ln258_fu_2057_p2;
assign zext_ln264_1_fu_2047_p1 = add_ln264_fu_2043_p2;
assign zext_ln271_fu_2071_p1 = add_ln271_fu_2067_p2;
assign zext_ln277_1_fu_2223_p1 = add_ln277_reg_3520;
assign zext_ln284_fu_2228_p1 = add_ln284_reg_3525;
always @ (posedge ap_clk) begin
    zext_ln168_1_cast_reg_2598[13:6] <= 8'b00000000;
    zext_ln175_reg_2683[14:8] <= 7'b0000000;
    zext_ln175_reg_2683_pp0_iter1_reg[14:8] <= 7'b0000000;
    zext_ln182_reg_2706[0] <= 1'b1;
    zext_ln182_reg_2706[14:8] <= 7'b0000000;
    zext_ln182_reg_2706_pp0_iter1_reg[0] <= 1'b1;
    zext_ln182_reg_2706_pp0_iter1_reg[14:8] <= 7'b0000000;
end
endmodule 
