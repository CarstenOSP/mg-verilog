module kernel_3mm_kernel_3mm_node2_Pipeline_label_7_label_8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln277,v262_0_address0,v262_0_ce0,v262_0_q0,v262_1_address0,v262_1_ce0,v262_1_q0,v262_2_address0,v262_2_ce0,v262_2_q0,v262_3_address0,v262_3_ce0,v262_3_q0,phi_mul,v263_address0,v263_ce0,v263_q0,v263_address1,v263_ce1,v263_q1,v261_address0,v261_ce0,v261_we0,v261_d0,v261_q0,v261_address1,v261_ce1,v261_we1,v261_d1,v261_q1,cmp11); 
parameter    ap_ST_fsm_pp0_stage0 = 12'd1;
parameter    ap_ST_fsm_pp0_stage1 = 12'd2;
parameter    ap_ST_fsm_pp0_stage2 = 12'd4;
parameter    ap_ST_fsm_pp0_stage3 = 12'd8;
parameter    ap_ST_fsm_pp0_stage4 = 12'd16;
parameter    ap_ST_fsm_pp0_stage5 = 12'd32;
parameter    ap_ST_fsm_pp0_stage6 = 12'd64;
parameter    ap_ST_fsm_pp0_stage7 = 12'd128;
parameter    ap_ST_fsm_pp0_stage8 = 12'd256;
parameter    ap_ST_fsm_pp0_stage9 = 12'd512;
parameter    ap_ST_fsm_pp0_stage10 = 12'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] zext_ln277;
output  [13:0] v262_0_address0;
output   v262_0_ce0;
input  [31:0] v262_0_q0;
output  [13:0] v262_1_address0;
output   v262_1_ce0;
input  [31:0] v262_1_q0;
output  [13:0] v262_2_address0;
output   v262_2_ce0;
input  [31:0] v262_2_q0;
output  [13:0] v262_3_address0;
output   v262_3_ce0;
input  [31:0] v262_3_q0;
input  [15:0] phi_mul;
output  [15:0] v263_address0;
output   v263_ce0;
input  [31:0] v263_q0;
output  [15:0] v263_address1;
output   v263_ce1;
input  [31:0] v263_q1;
output  [15:0] v261_address0;
output   v261_ce0;
output   v261_we0;
output  [31:0] v261_d0;
input  [31:0] v261_q0;
output  [15:0] v261_address1;
output   v261_ce1;
output   v261_we1;
output  [31:0] v261_d1;
input  [31:0] v261_q1;
input  [0:0] cmp11;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] icmp_ln278_reg_1161;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_374_p3;
reg   [31:0] reg_388;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] grp_fu_381_p3;
reg   [31:0] reg_392;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] grp_fu_366_p2;
reg   [31:0] reg_396;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_400;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [13:0] zext_ln277_cast_fu_404_p1;
reg   [13:0] zext_ln277_cast_reg_1152;
wire   [0:0] icmp_ln278_fu_426_p2;
reg   [0:0] icmp_ln278_reg_1161_pp0_iter1_reg;
reg   [0:0] icmp_ln278_reg_1161_pp0_iter2_reg;
reg   [7:0] v198_load_reg_1165;
wire   [0:0] icmp_ln279_fu_450_p2;
reg   [0:0] icmp_ln279_reg_1170;
wire   [7:0] select_ln278_1_fu_456_p3;
reg   [7:0] select_ln278_1_reg_1175;
wire   [5:0] lshr_ln_fu_468_p4;
reg   [5:0] lshr_ln_reg_1184;
wire   [0:0] empty_12_fu_482_p2;
reg   [0:0] empty_12_reg_1194;
reg   [6:0] tmp_reg_1202;
wire   [15:0] mul_ln280_fu_517_p2;
reg   [15:0] mul_ln280_reg_1207;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [7:0] empty_13_fu_523_p2;
reg   [7:0] empty_13_reg_1213;
wire   [15:0] zext_ln283_fu_542_p1;
reg   [15:0] zext_ln283_reg_1223;
wire   [15:0] zext_ln289_fu_574_p1;
reg   [15:0] zext_ln289_reg_1238;
wire   [15:0] mul_ln293_fu_610_p2;
reg   [15:0] mul_ln293_reg_1253;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [7:0] empty_16_fu_616_p2;
reg   [7:0] empty_16_reg_1259;
reg   [15:0] v261_addr_reg_1269;
reg   [15:0] v261_addr_reg_1269_pp0_iter1_reg;
wire   [31:0] v202_fu_644_p1;
reg   [31:0] v202_reg_1274;
reg   [31:0] v202_reg_1274_pp0_iter1_reg;
reg   [15:0] v261_addr_1_reg_1279;
reg   [15:0] v261_addr_1_reg_1279_pp0_iter1_reg;
wire   [31:0] v207_fu_657_p1;
reg   [31:0] v207_reg_1284;
reg   [31:0] v207_reg_1284_pp0_iter1_reg;
wire   [15:0] mul_ln304_fu_671_p2;
reg   [15:0] mul_ln304_reg_1309;
reg   [15:0] v261_addr_2_reg_1315;
reg   [15:0] v261_addr_2_reg_1315_pp0_iter1_reg;
wire   [31:0] v200_fu_690_p3;
reg   [31:0] v200_reg_1320;
reg   [15:0] v261_addr_3_reg_1325;
reg   [15:0] v261_addr_3_reg_1325_pp0_iter1_reg;
wire   [31:0] v206_fu_710_p3;
reg   [31:0] v206_reg_1330;
wire   [15:0] mul_ln315_fu_725_p2;
reg   [15:0] mul_ln315_reg_1345;
wire   [7:0] empty_23_fu_731_p2;
reg   [7:0] empty_23_reg_1351;
reg   [15:0] v261_addr_4_reg_1361;
reg   [15:0] v261_addr_4_reg_1361_pp0_iter1_reg;
reg   [15:0] v261_addr_5_reg_1366;
reg   [15:0] v261_addr_5_reg_1366_pp0_iter1_reg;
wire   [31:0] v211_fu_772_p3;
reg   [31:0] v211_reg_1371;
wire   [31:0] v216_fu_783_p3;
reg   [31:0] v216_reg_1376;
wire   [31:0] v201_fu_790_p1;
reg   [31:0] v201_reg_1381;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] v221_v_fu_795_p3;
reg   [31:0] v221_v_reg_1386;
wire   [15:0] mul_ln326_fu_816_p2;
reg   [15:0] mul_ln326_reg_1401;
reg   [15:0] v261_addr_6_reg_1407;
reg   [15:0] v261_addr_6_reg_1407_pp0_iter1_reg;
reg   [15:0] v261_addr_7_reg_1412;
reg   [15:0] v261_addr_7_reg_1412_pp0_iter1_reg;
wire   [31:0] v220_fu_844_p3;
reg   [31:0] v220_reg_1417;
wire   [31:0] v225_fu_855_p3;
reg   [31:0] v225_reg_1422;
wire   [31:0] v230_v_fu_862_p3;
reg   [31:0] v230_v_reg_1427;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [15:0] v261_addr_8_reg_1442;
reg   [15:0] v261_addr_8_reg_1442_pp0_iter1_reg;
wire   [15:0] add_ln337_fu_892_p2;
reg   [15:0] add_ln337_reg_1447;
reg   [15:0] v261_addr_9_reg_1452;
reg   [15:0] v261_addr_9_reg_1452_pp0_iter1_reg;
wire   [15:0] add_ln343_fu_906_p2;
reg   [15:0] add_ln343_reg_1458;
wire   [31:0] v229_fu_915_p3;
reg   [31:0] v229_reg_1463;
wire   [31:0] v234_fu_926_p3;
reg   [31:0] v234_reg_1468;
wire   [31:0] v212_fu_933_p1;
reg   [31:0] v212_reg_1473;
reg   [15:0] v261_addr_10_reg_1488;
reg   [15:0] v261_addr_10_reg_1488_pp0_iter1_reg;
reg   [15:0] v261_addr_10_reg_1488_pp0_iter2_reg;
reg   [15:0] v261_addr_11_reg_1494;
reg   [15:0] v261_addr_11_reg_1494_pp0_iter1_reg;
reg   [15:0] v261_addr_11_reg_1494_pp0_iter2_reg;
wire   [31:0] v238_fu_955_p3;
reg   [31:0] v238_reg_1499;
wire   [31:0] v243_fu_966_p3;
reg   [31:0] v243_reg_1504;
wire   [31:0] grp_fu_370_p2;
reg   [31:0] v203_reg_1509;
wire   [31:0] v247_fu_977_p3;
reg   [31:0] v247_reg_1514;
wire   [31:0] v252_fu_988_p3;
reg   [31:0] v252_reg_1519;
wire   [31:0] v221_fu_995_p1;
reg   [31:0] v221_reg_1524;
reg   [31:0] v208_reg_1529;
reg   [31:0] v213_reg_1534;
wire   [31:0] v230_fu_999_p1;
reg   [31:0] v230_reg_1539;
reg   [31:0] v217_reg_1544;
reg   [31:0] v222_reg_1549;
wire   [31:0] v239_fu_1003_p1;
reg   [31:0] v239_reg_1554;
reg   [31:0] v226_reg_1559;
reg   [31:0] v231_reg_1564;
wire   [31:0] v248_fu_1008_p1;
reg   [31:0] v248_reg_1569;
reg   [31:0] v235_reg_1574;
reg   [31:0] v240_reg_1579;
reg   [31:0] v214_reg_1584;
reg   [31:0] v244_reg_1589;
reg   [31:0] v218_reg_1594;
reg   [31:0] v249_reg_1599;
reg   [31:0] v223_reg_1604;
reg   [31:0] v253_reg_1609;
reg   [31:0] v250_reg_1614;
reg   [31:0] v254_reg_1619;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln283_1_fu_551_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln289_1_fu_583_p1;
wire   [63:0] zext_ln280_1_fu_639_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln287_fu_652_p1;
wire   [63:0] p_cast15_fu_661_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln293_1_fu_681_p1;
wire   [63:0] zext_ln299_fu_701_p1;
wire   [63:0] p_cast_fu_717_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln304_1_fu_754_p1;
wire   [63:0] zext_ln310_fu_763_p1;
wire   [63:0] p_cast16_fu_802_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln315_1_fu_826_p1;
wire   [63:0] zext_ln321_fu_835_p1;
wire   [63:0] p_cast17_fu_869_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln326_1_fu_887_p1;
wire   [63:0] zext_ln332_fu_901_p1;
wire   [63:0] p_cast18_fu_938_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln337_1_fu_943_p1;
wire   [63:0] zext_ln343_fu_947_p1;
reg   [7:0] v198_fu_90;
wire   [7:0] add_ln279_fu_588_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v198_load;
wire    ap_block_pp0_stage0;
reg   [7:0] v197_fu_94;
reg   [7:0] ap_sig_allocacmp_v197_load;
reg   [11:0] indvar_flatten_fu_98;
wire   [11:0] add_ln278_1_fu_432_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v263_ce1_local;
reg    v263_ce0_local;
reg    v261_ce1_local;
reg   [15:0] v261_address1_local;
reg    v261_ce0_local;
reg   [15:0] v261_address0_local;
reg    v261_we1_local;
reg   [31:0] v261_d1_local;
wire   [31:0] bitcast_ln286_fu_1013_p1;
wire    ap_block_pp0_stage8;
reg    v261_we0_local;
reg   [31:0] v261_d0_local;
wire   [31:0] bitcast_ln292_fu_1018_p1;
wire   [31:0] bitcast_ln298_fu_1023_p1;
wire    ap_block_pp0_stage9;
wire   [31:0] bitcast_ln303_fu_1027_p1;
wire   [31:0] bitcast_ln309_fu_1031_p1;
wire    ap_block_pp0_stage10;
wire   [31:0] bitcast_ln314_fu_1035_p1;
wire   [31:0] bitcast_ln320_fu_1040_p1;
wire    ap_block_pp0_stage11;
wire   [31:0] bitcast_ln325_fu_1045_p1;
wire   [31:0] bitcast_ln331_fu_1050_p1;
wire   [31:0] bitcast_ln336_fu_1055_p1;
wire   [31:0] bitcast_ln342_fu_1060_p1;
wire   [31:0] bitcast_ln347_fu_1064_p1;
reg    v262_0_ce0_local;
reg   [13:0] v262_0_address0_local;
reg    v262_2_ce0_local;
reg   [13:0] v262_2_address0_local;
reg    v262_1_ce0_local;
reg   [13:0] v262_1_address0_local;
reg    v262_3_ce0_local;
reg   [13:0] v262_3_address0_local;
reg   [31:0] grp_fu_366_p0;
reg   [31:0] grp_fu_366_p1;
reg   [31:0] grp_fu_370_p0;
reg   [31:0] grp_fu_370_p1;
wire   [7:0] add_ln278_fu_444_p2;
wire   [1:0] trunc_ln278_fu_464_p1;
wire   [7:0] mul_ln280_fu_517_p0;
wire   [8:0] mul_ln280_fu_517_p1;
wire   [5:0] tmp_2_fu_528_p4;
wire   [7:0] select_ln278_fu_508_p3;
wire   [15:0] add_ln283_fu_546_p2;
wire   [6:0] tmp_5_fu_556_p4;
wire   [7:0] or_ln_fu_566_p3;
wire   [15:0] add_ln289_fu_578_p2;
wire   [7:0] tmp_1_fu_599_p3;
wire   [7:0] mul_ln293_fu_610_p0;
wire   [8:0] mul_ln293_fu_610_p1;
wire   [5:0] tmp_3_fu_621_p4;
wire   [15:0] add_ln280_fu_635_p2;
wire   [15:0] add_ln287_fu_648_p2;
wire   [13:0] grp_fu_1068_p3;
wire   [7:0] mul_ln304_fu_671_p0;
wire   [8:0] mul_ln304_fu_671_p1;
wire   [15:0] add_ln293_fu_677_p2;
wire   [31:0] v199_fu_686_p1;
wire   [15:0] add_ln299_fu_697_p2;
wire   [31:0] v205_fu_706_p1;
wire   [13:0] grp_fu_1076_p3;
wire   [7:0] mul_ln315_fu_725_p0;
wire   [8:0] mul_ln315_fu_725_p1;
wire   [5:0] tmp_4_fu_736_p4;
wire   [15:0] add_ln304_fu_750_p2;
wire   [15:0] add_ln310_fu_759_p2;
wire   [31:0] v210_fu_768_p1;
wire   [31:0] v215_fu_779_p1;
wire   [13:0] grp_fu_1084_p3;
wire   [7:0] empty_19_fu_807_p2;
wire   [7:0] mul_ln326_fu_816_p0;
wire   [8:0] mul_ln326_fu_816_p1;
wire   [15:0] add_ln315_fu_822_p2;
wire   [15:0] add_ln321_fu_831_p2;
wire   [31:0] v219_fu_840_p1;
wire   [31:0] v224_fu_851_p1;
wire   [13:0] grp_fu_1092_p4;
wire   [7:0] mul_ln337_fu_877_p0;
wire   [8:0] mul_ln337_fu_877_p1;
wire   [15:0] add_ln326_fu_883_p2;
wire   [15:0] mul_ln337_fu_877_p2;
wire   [15:0] add_ln332_fu_897_p2;
wire   [31:0] v228_fu_911_p1;
wire   [31:0] v233_fu_922_p1;
wire   [13:0] grp_fu_1101_p3;
wire   [31:0] v237_fu_951_p1;
wire   [31:0] v242_fu_962_p1;
wire   [31:0] v246_fu_973_p1;
wire   [31:0] v251_fu_984_p1;
wire   [7:0] grp_fu_1068_p0;
wire   [5:0] grp_fu_1068_p1;
wire   [7:0] grp_fu_1068_p2;
wire   [7:0] grp_fu_1076_p0;
wire   [5:0] grp_fu_1076_p1;
wire   [7:0] grp_fu_1076_p2;
wire   [7:0] grp_fu_1084_p0;
wire   [5:0] grp_fu_1084_p1;
wire   [7:0] grp_fu_1084_p2;
wire   [0:0] grp_fu_1092_p1;
wire   [7:0] grp_fu_1092_p2;
wire   [7:0] grp_fu_1092_p3;
wire   [7:0] grp_fu_1101_p0;
wire   [5:0] grp_fu_1101_p1;
wire   [7:0] grp_fu_1101_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage1;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [13:0] grp_fu_1068_p10;
wire   [13:0] grp_fu_1076_p10;
wire   [13:0] grp_fu_1084_p10;
wire   [13:0] grp_fu_1101_p10;
wire   [15:0] mul_ln280_fu_517_p00;
wire   [15:0] mul_ln293_fu_610_p00;
wire   [15:0] mul_ln304_fu_671_p00;
wire   [15:0] mul_ln315_fu_725_p00;
wire   [15:0] mul_ln326_fu_816_p00;
wire   [15:0] mul_ln337_fu_877_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v198_fu_90 = 8'd0;
#0 v197_fu_94 = 8'd0;
#0 indvar_flatten_fu_98 = 12'd0;
#0 ap_done_reg = 1'b0;
end
kernel_3mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_366_p0),.din1(grp_fu_366_p1),.ce(1'b1),.dout(grp_fu_366_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_370_p0),.din1(grp_fu_370_p1),.ce(1'b1),.dout(grp_fu_370_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U3(.din0(mul_ln280_fu_517_p0),.din1(mul_ln280_fu_517_p1),.dout(mul_ln280_fu_517_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U4(.din0(mul_ln293_fu_610_p0),.din1(mul_ln293_fu_610_p1),.dout(mul_ln293_fu_610_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U5(.din0(mul_ln304_fu_671_p0),.din1(mul_ln304_fu_671_p1),.dout(mul_ln304_fu_671_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U6(.din0(mul_ln315_fu_725_p0),.din1(mul_ln315_fu_725_p1),.dout(mul_ln315_fu_725_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U7(.din0(mul_ln326_fu_816_p0),.din1(mul_ln326_fu_816_p1),.dout(mul_ln326_fu_816_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U8(.din0(mul_ln337_fu_877_p0),.din1(mul_ln337_fu_877_p1),.dout(mul_ln337_fu_877_p2));
kernel_3mm_mac_muladd_8ns_6ns_8ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 8 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_8ns_14_4_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1068_p0),.din1(grp_fu_1068_p1),.din2(grp_fu_1068_p2),.ce(1'b1),.dout(grp_fu_1068_p3));
kernel_3mm_mac_muladd_8ns_6ns_8ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 8 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_8ns_14_4_1_U10(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1076_p0),.din1(grp_fu_1076_p1),.din2(grp_fu_1076_p2),.ce(1'b1),.dout(grp_fu_1076_p3));
kernel_3mm_mac_muladd_8ns_6ns_8ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 8 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_8ns_14_4_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1084_p0),.din1(grp_fu_1084_p1),.din2(grp_fu_1084_p2),.ce(1'b1),.dout(grp_fu_1084_p3));
kernel_3mm_ama_addmuladd_6ns_1ns_8ns_8ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 6 ),.din1_WIDTH( 1 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 14 ))
ama_addmuladd_6ns_1ns_8ns_8ns_14_4_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(lshr_ln_reg_1184),.din1(grp_fu_1092_p1),.din2(grp_fu_1092_p2),.din3(grp_fu_1092_p3),.ce(1'b1),.dout(grp_fu_1092_p4));
kernel_3mm_mac_muladd_8ns_6ns_8ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 8 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_8ns_14_4_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1101_p0),.din1(grp_fu_1101_p1),.din2(grp_fu_1101_p2),.ce(1'b1),.dout(grp_fu_1101_p3));
kernel_3mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage11),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage1) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage1) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln278_fu_426_p2 == 1'd0))) begin
            indvar_flatten_fu_98 <= add_ln278_1_fu_432_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_98 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln278_fu_426_p2 == 1'd0))) begin
            v197_fu_94 <= select_ln278_1_fu_456_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v197_fu_94 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v198_fu_90 <= 8'd0;
    end else if (((icmp_ln278_reg_1161 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v198_fu_90 <= add_ln279_fu_588_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln337_reg_1447 <= add_ln337_fu_892_p2;
        add_ln343_reg_1458 <= add_ln343_fu_906_p2;
        v229_reg_1463 <= v229_fu_915_p3;
        v230_v_reg_1427 <= v230_v_fu_862_p3;
        v234_reg_1468 <= v234_fu_926_p3;
        v261_addr_8_reg_1442 <= zext_ln326_1_fu_887_p1;
        v261_addr_8_reg_1442_pp0_iter1_reg <= v261_addr_8_reg_1442;
        v261_addr_9_reg_1452 <= zext_ln332_fu_901_p1;
        v261_addr_9_reg_1452_pp0_iter1_reg <= v261_addr_9_reg_1452;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_12_reg_1194 <= empty_12_fu_482_p2;
        icmp_ln278_reg_1161 <= icmp_ln278_fu_426_p2;
        icmp_ln278_reg_1161_pp0_iter1_reg <= icmp_ln278_reg_1161;
        icmp_ln278_reg_1161_pp0_iter2_reg <= icmp_ln278_reg_1161_pp0_iter1_reg;
        icmp_ln279_reg_1170 <= icmp_ln279_fu_450_p2;
        lshr_ln_reg_1184 <= {{select_ln278_1_fu_456_p3[7:2]}};
        select_ln278_1_reg_1175 <= select_ln278_1_fu_456_p3;
        tmp_reg_1202 <= {{select_ln278_1_fu_456_p3[7:1]}};
        v198_load_reg_1165 <= ap_sig_allocacmp_v198_load;
        zext_ln277_cast_reg_1152[7 : 0] <= zext_ln277_cast_fu_404_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_13_reg_1213 <= empty_13_fu_523_p2;
        mul_ln280_reg_1207 <= mul_ln280_fu_517_p2;
        v239_reg_1554 <= v239_fu_1003_p1;
        zext_ln283_reg_1223[7 : 0] <= zext_ln283_fu_542_p1[7 : 0];
        zext_ln289_reg_1238[7 : 1] <= zext_ln289_fu_574_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        empty_16_reg_1259 <= empty_16_fu_616_p2;
        mul_ln293_reg_1253 <= mul_ln293_fu_610_p2;
        v202_reg_1274 <= v202_fu_644_p1;
        v202_reg_1274_pp0_iter1_reg <= v202_reg_1274;
        v207_reg_1284 <= v207_fu_657_p1;
        v207_reg_1284_pp0_iter1_reg <= v207_reg_1284;
        v261_addr_1_reg_1279 <= zext_ln287_fu_652_p1;
        v261_addr_1_reg_1279_pp0_iter1_reg <= v261_addr_1_reg_1279;
        v261_addr_reg_1269 <= zext_ln280_1_fu_639_p1;
        v261_addr_reg_1269_pp0_iter1_reg <= v261_addr_reg_1269;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        empty_23_reg_1351 <= empty_23_fu_731_p2;
        mul_ln315_reg_1345 <= mul_ln315_fu_725_p2;
        v211_reg_1371 <= v211_fu_772_p3;
        v216_reg_1376 <= v216_fu_783_p3;
        v261_addr_4_reg_1361 <= zext_ln304_1_fu_754_p1;
        v261_addr_4_reg_1361_pp0_iter1_reg <= v261_addr_4_reg_1361;
        v261_addr_5_reg_1366 <= zext_ln310_fu_763_p1;
        v261_addr_5_reg_1366_pp0_iter1_reg <= v261_addr_5_reg_1366;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln304_reg_1309 <= mul_ln304_fu_671_p2;
        v200_reg_1320 <= v200_fu_690_p3;
        v206_reg_1330 <= v206_fu_710_p3;
        v248_reg_1569 <= v248_fu_1008_p1;
        v261_addr_2_reg_1315 <= zext_ln293_1_fu_681_p1;
        v261_addr_2_reg_1315_pp0_iter1_reg <= v261_addr_2_reg_1315;
        v261_addr_3_reg_1325 <= zext_ln299_fu_701_p1;
        v261_addr_3_reg_1325_pp0_iter1_reg <= v261_addr_3_reg_1325;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul_ln326_reg_1401 <= mul_ln326_fu_816_p2;
        v201_reg_1381 <= v201_fu_790_p1;
        v220_reg_1417 <= v220_fu_844_p3;
        v221_v_reg_1386 <= v221_v_fu_795_p3;
        v225_reg_1422 <= v225_fu_855_p3;
        v261_addr_6_reg_1407 <= zext_ln315_1_fu_826_p1;
        v261_addr_6_reg_1407_pp0_iter1_reg <= v261_addr_6_reg_1407;
        v261_addr_7_reg_1412 <= zext_ln321_fu_835_p1;
        v261_addr_7_reg_1412_pp0_iter1_reg <= v261_addr_7_reg_1412;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_388 <= grp_fu_374_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_392 <= grp_fu_381_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_396 <= grp_fu_366_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_400 <= grp_fu_366_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v203_reg_1509 <= grp_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v208_reg_1529 <= grp_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v212_reg_1473 <= v212_fu_933_p1;
        v238_reg_1499 <= v238_fu_955_p3;
        v243_reg_1504 <= v243_fu_966_p3;
        v261_addr_10_reg_1488 <= zext_ln337_1_fu_943_p1;
        v261_addr_10_reg_1488_pp0_iter1_reg <= v261_addr_10_reg_1488;
        v261_addr_10_reg_1488_pp0_iter2_reg <= v261_addr_10_reg_1488_pp0_iter1_reg;
        v261_addr_11_reg_1494 <= zext_ln343_fu_947_p1;
        v261_addr_11_reg_1494_pp0_iter1_reg <= v261_addr_11_reg_1494;
        v261_addr_11_reg_1494_pp0_iter2_reg <= v261_addr_11_reg_1494_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v213_reg_1534 <= grp_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v214_reg_1584 <= grp_fu_366_p2;
        v244_reg_1589 <= grp_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v217_reg_1544 <= grp_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v218_reg_1594 <= grp_fu_366_p2;
        v249_reg_1599 <= grp_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v221_reg_1524 <= v221_fu_995_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v222_reg_1549 <= grp_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v223_reg_1604 <= grp_fu_366_p2;
        v253_reg_1609 <= grp_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v226_reg_1559 <= grp_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v230_reg_1539 <= v230_fu_999_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v231_reg_1564 <= grp_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v235_reg_1574 <= grp_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v240_reg_1579 <= grp_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v247_reg_1514 <= v247_fu_977_p3;
        v252_reg_1519 <= v252_fu_988_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v250_reg_1614 <= grp_fu_366_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v254_reg_1619 <= grp_fu_366_p2;
    end
end
always @ (*) begin
    if (((icmp_ln278_reg_1161 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln278_reg_1161_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_98;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v197_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v197_load = v197_fu_94;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v198_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v198_load = v198_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_366_p0 = v252_reg_1519;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_366_p0 = v247_reg_1514;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_366_p0 = v243_reg_1504;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_366_p0 = v238_reg_1499;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_366_p0 = v234_reg_1468;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_366_p0 = v229_reg_1463;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_366_p0 = v225_reg_1422;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_366_p0 = v220_reg_1417;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_366_p0 = v216_reg_1376;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_366_p0 = v211_reg_1371;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_366_p0 = v206_reg_1330;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_366_p0 = v200_reg_1320;
    end else begin
        grp_fu_366_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_366_p1 = v253_reg_1609;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_366_p1 = v249_reg_1599;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_366_p1 = v244_reg_1589;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_366_p1 = v240_reg_1579;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_366_p1 = v235_reg_1574;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_366_p1 = v231_reg_1564;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_366_p1 = v226_reg_1559;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_366_p1 = v222_reg_1549;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_366_p1 = v217_reg_1544;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_366_p1 = v213_reg_1534;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_366_p1 = v208_reg_1529;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_366_p1 = v203_reg_1509;
    end else begin
        grp_fu_366_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_370_p0 = v248_reg_1569;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_370_p0 = v248_fu_1008_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_370_p0 = v239_reg_1554;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_370_p0 = v239_fu_1003_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_370_p0 = v230_reg_1539;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_370_p0 = v230_fu_999_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_370_p0 = v221_reg_1524;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_370_p0 = v221_fu_995_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_370_p0 = v212_reg_1473;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_370_p0 = v212_fu_933_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_370_p0 = v201_reg_1381;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_370_p0 = v201_fu_790_p1;
    end else begin
        grp_fu_370_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_370_p1 = v207_reg_1284_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_370_p1 = v202_reg_1274_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_370_p1 = v207_reg_1284;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_370_p1 = v202_reg_1274;
    end else begin
        grp_fu_370_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_address0_local = v261_addr_11_reg_1494_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_address0_local = v261_addr_10_reg_1488_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_address0_local = v261_addr_7_reg_1412_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_address0_local = v261_addr_5_reg_1366_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_address0_local = v261_addr_3_reg_1325_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_address0_local = v261_addr_1_reg_1279_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_address0_local = zext_ln343_fu_947_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_address0_local = zext_ln332_fu_901_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_address0_local = zext_ln321_fu_835_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_address0_local = zext_ln310_fu_763_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_address0_local = zext_ln299_fu_701_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_address0_local = zext_ln287_fu_652_p1;
    end else begin
        v261_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_address1_local = v261_addr_9_reg_1452_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_address1_local = v261_addr_8_reg_1442_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_address1_local = v261_addr_6_reg_1407_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_address1_local = v261_addr_4_reg_1361_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_address1_local = v261_addr_2_reg_1315_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_address1_local = v261_addr_reg_1269_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_address1_local = zext_ln337_1_fu_943_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_address1_local = zext_ln326_1_fu_887_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_address1_local = zext_ln315_1_fu_826_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_address1_local = zext_ln304_1_fu_754_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_address1_local = zext_ln293_1_fu_681_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_address1_local = zext_ln280_1_fu_639_p1;
    end else begin
        v261_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) &(ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v261_ce0_local = 1'b1;
    end else begin
        v261_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) &(ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v261_ce1_local = 1'b1;
    end else begin
        v261_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_d0_local = bitcast_ln347_fu_1064_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_d0_local = bitcast_ln342_fu_1060_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_d0_local = bitcast_ln325_fu_1045_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_d0_local = bitcast_ln314_fu_1035_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_d0_local = bitcast_ln303_fu_1027_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_d0_local = bitcast_ln292_fu_1018_p1;
    end else begin
        v261_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_d1_local = bitcast_ln336_fu_1055_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_d1_local = bitcast_ln331_fu_1050_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_d1_local = bitcast_ln320_fu_1040_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_d1_local = bitcast_ln309_fu_1031_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_d1_local = bitcast_ln298_fu_1023_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_d1_local = bitcast_ln286_fu_1013_p1;
    end else begin
        v261_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        v261_we0_local = 1'b1;
    end else begin
        v261_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        v261_we1_local = 1'b1;
    end else begin
        v261_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v262_0_address0_local = p_cast17_fu_869_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v262_0_address0_local = p_cast_fu_717_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v262_0_address0_local = p_cast15_fu_661_p1;
        end else begin
            v262_0_address0_local = 'bx;
        end
    end else begin
        v262_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v262_0_ce0_local = 1'b1;
    end else begin
        v262_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v262_1_address0_local = p_cast18_fu_938_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v262_1_address0_local = p_cast16_fu_802_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v262_1_address0_local = p_cast15_fu_661_p1;
        end else begin
            v262_1_address0_local = 'bx;
        end
    end else begin
        v262_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        v262_1_ce0_local = 1'b1;
    end else begin
        v262_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v262_2_address0_local = p_cast17_fu_869_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v262_2_address0_local = p_cast_fu_717_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v262_2_address0_local = p_cast15_fu_661_p1;
        end else begin
            v262_2_address0_local = 'bx;
        end
    end else begin
        v262_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v262_2_ce0_local = 1'b1;
    end else begin
        v262_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v262_3_address0_local = p_cast18_fu_938_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v262_3_address0_local = p_cast16_fu_802_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v262_3_address0_local = p_cast15_fu_661_p1;
        end else begin
            v262_3_address0_local = 'bx;
        end
    end else begin
        v262_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        v262_3_ce0_local = 1'b1;
    end else begin
        v262_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v263_ce0_local = 1'b1;
    end else begin
        v263_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v263_ce1_local = 1'b1;
    end else begin
        v263_ce1_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln278_1_fu_432_p2 = (ap_sig_allocacmp_indvar_flatten_load + 12'd1);
assign add_ln278_fu_444_p2 = (ap_sig_allocacmp_v197_load + 8'd6);
assign add_ln279_fu_588_p2 = (select_ln278_fu_508_p3 + 8'd2);
assign add_ln280_fu_635_p2 = (mul_ln280_reg_1207 + zext_ln283_reg_1223);
assign add_ln283_fu_546_p2 = (phi_mul + zext_ln283_fu_542_p1);
assign add_ln287_fu_648_p2 = (mul_ln280_reg_1207 + zext_ln289_reg_1238);
assign add_ln289_fu_578_p2 = (phi_mul + zext_ln289_fu_574_p1);
assign add_ln293_fu_677_p2 = (mul_ln293_reg_1253 + zext_ln283_reg_1223);
assign add_ln299_fu_697_p2 = (mul_ln293_reg_1253 + zext_ln289_reg_1238);
assign add_ln304_fu_750_p2 = (mul_ln304_reg_1309 + zext_ln283_reg_1223);
assign add_ln310_fu_759_p2 = (mul_ln304_reg_1309 + zext_ln289_reg_1238);
assign add_ln315_fu_822_p2 = (mul_ln315_reg_1345 + zext_ln283_reg_1223);
assign add_ln321_fu_831_p2 = (mul_ln315_reg_1345 + zext_ln289_reg_1238);
assign add_ln326_fu_883_p2 = (mul_ln326_reg_1401 + zext_ln283_reg_1223);
assign add_ln332_fu_897_p2 = (mul_ln326_reg_1401 + zext_ln289_reg_1238);
assign add_ln337_fu_892_p2 = (mul_ln337_fu_877_p2 + zext_ln283_reg_1223);
assign add_ln343_fu_906_p2 = (mul_ln337_fu_877_p2 + zext_ln289_reg_1238);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
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
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_ready = ap_ready_sig;
assign bitcast_ln286_fu_1013_p1 = reg_396;
assign bitcast_ln292_fu_1018_p1 = reg_400;
assign bitcast_ln298_fu_1023_p1 = v214_reg_1584;
assign bitcast_ln303_fu_1027_p1 = v218_reg_1594;
assign bitcast_ln309_fu_1031_p1 = v223_reg_1604;
assign bitcast_ln314_fu_1035_p1 = reg_396;
assign bitcast_ln320_fu_1040_p1 = reg_400;
assign bitcast_ln325_fu_1045_p1 = reg_396;
assign bitcast_ln331_fu_1050_p1 = reg_396;
assign bitcast_ln336_fu_1055_p1 = reg_396;
assign bitcast_ln342_fu_1060_p1 = v250_reg_1614;
assign bitcast_ln347_fu_1064_p1 = v254_reg_1619;
assign empty_12_fu_482_p2 = ((trunc_ln278_fu_464_p1 != 2'd0) ? 1'b1 : 1'b0);
assign empty_13_fu_523_p2 = (select_ln278_1_reg_1175 + 8'd2);
assign empty_16_fu_616_p2 = (select_ln278_1_reg_1175 + 8'd3);
assign empty_19_fu_807_p2 = (select_ln278_1_reg_1175 + 8'd4);
assign empty_23_fu_731_p2 = (select_ln278_1_reg_1175 + 8'd5);
assign grp_fu_1068_p0 = 14'd200;
assign grp_fu_1068_p1 = grp_fu_1068_p10;
assign grp_fu_1068_p10 = lshr_ln_fu_468_p4;
assign grp_fu_1068_p2 = zext_ln277_cast_reg_1152;
assign grp_fu_1076_p0 = 14'd200;
assign grp_fu_1076_p1 = grp_fu_1076_p10;
assign grp_fu_1076_p10 = tmp_2_fu_528_p4;
assign grp_fu_1076_p2 = zext_ln277_cast_reg_1152;
assign grp_fu_1084_p0 = 14'd200;
assign grp_fu_1084_p1 = grp_fu_1084_p10;
assign grp_fu_1084_p10 = tmp_3_fu_621_p4;
assign grp_fu_1084_p2 = zext_ln277_cast_reg_1152;
assign grp_fu_1092_p1 = 6'd1;
assign grp_fu_1092_p2 = 14'd200;
assign grp_fu_1092_p3 = zext_ln277_cast_reg_1152;
assign grp_fu_1101_p0 = 14'd200;
assign grp_fu_1101_p1 = grp_fu_1101_p10;
assign grp_fu_1101_p10 = tmp_4_fu_736_p4;
assign grp_fu_1101_p2 = zext_ln277_cast_reg_1152;
assign grp_fu_374_p3 = ((empty_12_reg_1194[0:0] == 1'b1) ? v262_2_q0 : v262_0_q0);
assign grp_fu_381_p3 = ((empty_12_reg_1194[0:0] == 1'b1) ? v262_3_q0 : v262_1_q0);
assign icmp_ln278_fu_426_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 12'd2850) ? 1'b1 : 1'b0);
assign icmp_ln279_fu_450_p2 = ((ap_sig_allocacmp_v198_load < 8'd190) ? 1'b1 : 1'b0);
assign lshr_ln_fu_468_p4 = {{select_ln278_1_fu_456_p3[7:2]}};
assign mul_ln280_fu_517_p0 = mul_ln280_fu_517_p00;
assign mul_ln280_fu_517_p00 = select_ln278_1_reg_1175;
assign mul_ln280_fu_517_p1 = 16'd190;
assign mul_ln293_fu_610_p0 = mul_ln293_fu_610_p00;
assign mul_ln293_fu_610_p00 = tmp_1_fu_599_p3;
assign mul_ln293_fu_610_p1 = 16'd190;
assign mul_ln304_fu_671_p0 = mul_ln304_fu_671_p00;
assign mul_ln304_fu_671_p00 = empty_13_reg_1213;
assign mul_ln304_fu_671_p1 = 16'd190;
assign mul_ln315_fu_725_p0 = mul_ln315_fu_725_p00;
assign mul_ln315_fu_725_p00 = empty_16_reg_1259;
assign mul_ln315_fu_725_p1 = 16'd190;
assign mul_ln326_fu_816_p0 = mul_ln326_fu_816_p00;
assign mul_ln326_fu_816_p00 = empty_19_fu_807_p2;
assign mul_ln326_fu_816_p1 = 16'd190;
assign mul_ln337_fu_877_p0 = mul_ln337_fu_877_p00;
assign mul_ln337_fu_877_p00 = empty_23_reg_1351;
assign mul_ln337_fu_877_p1 = 16'd190;
assign or_ln_fu_566_p3 = {{tmp_5_fu_556_p4}, {1'd1}};
assign p_cast15_fu_661_p1 = grp_fu_1068_p3;
assign p_cast16_fu_802_p1 = grp_fu_1084_p3;
assign p_cast17_fu_869_p1 = grp_fu_1092_p4;
assign p_cast18_fu_938_p1 = grp_fu_1101_p3;
assign p_cast_fu_717_p1 = grp_fu_1076_p3;
assign select_ln278_1_fu_456_p3 = ((icmp_ln279_fu_450_p2[0:0] == 1'b1) ? ap_sig_allocacmp_v197_load : add_ln278_fu_444_p2);
assign select_ln278_fu_508_p3 = ((icmp_ln279_reg_1170[0:0] == 1'b1) ? v198_load_reg_1165 : 8'd0);
assign tmp_1_fu_599_p3 = {{tmp_reg_1202}, {1'd1}};
assign tmp_2_fu_528_p4 = {{empty_13_fu_523_p2[7:2]}};
assign tmp_3_fu_621_p4 = {{empty_16_fu_616_p2[7:2]}};
assign tmp_4_fu_736_p4 = {{empty_23_fu_731_p2[7:2]}};
assign tmp_5_fu_556_p4 = {{select_ln278_fu_508_p3[7:1]}};
assign trunc_ln278_fu_464_p1 = select_ln278_1_fu_456_p3[1:0];
assign v199_fu_686_p1 = v261_q1;
assign v200_fu_690_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v199_fu_686_p1);
assign v201_fu_790_p1 = reg_388;
assign v202_fu_644_p1 = v263_q1;
assign v205_fu_706_p1 = v261_q0;
assign v206_fu_710_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v205_fu_706_p1);
assign v207_fu_657_p1 = v263_q0;
assign v210_fu_768_p1 = v261_q1;
assign v211_fu_772_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v210_fu_768_p1);
assign v212_fu_933_p1 = reg_392;
assign v215_fu_779_p1 = v261_q0;
assign v216_fu_783_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v215_fu_779_p1);
assign v219_fu_840_p1 = v261_q1;
assign v220_fu_844_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v219_fu_840_p1);
assign v221_fu_995_p1 = v221_v_reg_1386;
assign v221_v_fu_795_p3 = ((empty_12_reg_1194[0:0] == 1'b1) ? v262_0_q0 : v262_2_q0);
assign v224_fu_851_p1 = v261_q0;
assign v225_fu_855_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v224_fu_851_p1);
assign v228_fu_911_p1 = v261_q1;
assign v229_fu_915_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v228_fu_911_p1);
assign v230_fu_999_p1 = v230_v_reg_1427;
assign v230_v_fu_862_p3 = ((empty_12_reg_1194[0:0] == 1'b1) ? v262_1_q0 : v262_3_q0);
assign v233_fu_922_p1 = v261_q0;
assign v234_fu_926_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v233_fu_922_p1);
assign v237_fu_951_p1 = v261_q1;
assign v238_fu_955_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v237_fu_951_p1);
assign v239_fu_1003_p1 = reg_388;
assign v242_fu_962_p1 = v261_q0;
assign v243_fu_966_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v242_fu_962_p1);
assign v246_fu_973_p1 = v261_q1;
assign v247_fu_977_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v246_fu_973_p1);
assign v248_fu_1008_p1 = reg_392;
assign v251_fu_984_p1 = v261_q0;
assign v252_fu_988_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v251_fu_984_p1);
assign v261_address0 = v261_address0_local;
assign v261_address1 = v261_address1_local;
assign v261_ce0 = v261_ce0_local;
assign v261_ce1 = v261_ce1_local;
assign v261_d0 = v261_d0_local;
assign v261_d1 = v261_d1_local;
assign v261_we0 = v261_we0_local;
assign v261_we1 = v261_we1_local;
assign v262_0_address0 = v262_0_address0_local;
assign v262_0_ce0 = v262_0_ce0_local;
assign v262_1_address0 = v262_1_address0_local;
assign v262_1_ce0 = v262_1_ce0_local;
assign v262_2_address0 = v262_2_address0_local;
assign v262_2_ce0 = v262_2_ce0_local;
assign v262_3_address0 = v262_3_address0_local;
assign v262_3_ce0 = v262_3_ce0_local;
assign v263_address0 = zext_ln289_1_fu_583_p1;
assign v263_address1 = zext_ln283_1_fu_551_p1;
assign v263_ce0 = v263_ce0_local;
assign v263_ce1 = v263_ce1_local;
assign zext_ln277_cast_fu_404_p1 = zext_ln277;
assign zext_ln280_1_fu_639_p1 = add_ln280_fu_635_p2;
assign zext_ln283_1_fu_551_p1 = add_ln283_fu_546_p2;
assign zext_ln283_fu_542_p1 = select_ln278_fu_508_p3;
assign zext_ln287_fu_652_p1 = add_ln287_fu_648_p2;
assign zext_ln289_1_fu_583_p1 = add_ln289_fu_578_p2;
assign zext_ln289_fu_574_p1 = or_ln_fu_566_p3;
assign zext_ln293_1_fu_681_p1 = add_ln293_fu_677_p2;
assign zext_ln299_fu_701_p1 = add_ln299_fu_697_p2;
assign zext_ln304_1_fu_754_p1 = add_ln304_fu_750_p2;
assign zext_ln310_fu_763_p1 = add_ln310_fu_759_p2;
assign zext_ln315_1_fu_826_p1 = add_ln315_fu_822_p2;
assign zext_ln321_fu_835_p1 = add_ln321_fu_831_p2;
assign zext_ln326_1_fu_887_p1 = add_ln326_fu_883_p2;
assign zext_ln332_fu_901_p1 = add_ln332_fu_897_p2;
assign zext_ln337_1_fu_943_p1 = add_ln337_reg_1447;
assign zext_ln343_fu_947_p1 = add_ln343_reg_1458;
always @ (posedge ap_clk) begin
    zext_ln277_cast_reg_1152[13:8] <= 6'b000000;
    zext_ln283_reg_1223[15:8] <= 8'b00000000;
    zext_ln289_reg_1238[0] <= 1'b1;
    zext_ln289_reg_1238[15:8] <= 8'b00000000;
end
endmodule 