module kernel_3mm_kernel_3mm_node2_Pipeline_label_7_label_8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln277,v262_address0,v262_ce0,v262_q0,v261_address0,v261_ce0,v261_we0,v261_d0,v261_q0,v261_address1,v261_ce1,v261_we1,v261_d1,v261_q1,mul_ln283,v263_0_0_address0,v263_0_0_ce0,v263_0_0_q0,v263_0_1_address0,v263_0_1_ce0,v263_0_1_q0,v263_1_0_address0,v263_1_0_ce0,v263_1_0_q0,v263_1_1_address0,v263_1_1_ce0,v263_1_1_q0,cmp11,add_ln277_1); 
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
output  [15:0] v262_address0;
output   v262_ce0;
input  [31:0] v262_q0;
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
input  [13:0] mul_ln283;
output  [13:0] v263_0_0_address0;
output   v263_0_0_ce0;
input  [31:0] v263_0_0_q0;
output  [13:0] v263_0_1_address0;
output   v263_0_1_ce0;
input  [31:0] v263_0_1_q0;
output  [13:0] v263_1_0_address0;
output   v263_1_0_ce0;
input  [31:0] v263_1_0_q0;
output  [13:0] v263_1_1_address0;
output   v263_1_1_ce0;
input  [31:0] v263_1_1_q0;
input  [0:0] cmp11;
input  [7:0] add_ln277_1;
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
reg   [0:0] icmp_ln278_reg_1170;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_380;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] grp_fu_372_p2;
reg   [31:0] reg_384;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage11_11001;
reg   [31:0] reg_388;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_392;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [15:0] zext_ln277_cast_fu_396_p1;
reg   [15:0] zext_ln277_cast_reg_1160;
wire   [0:0] icmp_ln278_fu_418_p2;
reg   [0:0] icmp_ln278_reg_1170_pp0_iter1_reg;
reg   [0:0] icmp_ln278_reg_1170_pp0_iter2_reg;
reg   [7:0] v198_load_reg_1174;
wire   [0:0] icmp_ln279_fu_442_p2;
reg   [0:0] icmp_ln279_reg_1179;
wire   [7:0] select_ln278_1_fu_448_p3;
reg   [7:0] select_ln278_1_reg_1184;
wire   [15:0] select_ln278_1_cast_fu_456_p1;
reg   [15:0] select_ln278_1_cast_reg_1192;
reg   [15:0] select_ln278_1_cast_reg_1192_pp0_iter1_reg;
reg   [6:0] tmp_reg_1198;
wire   [0:0] icmp_ln283_1_fu_470_p2;
reg   [0:0] icmp_ln283_1_reg_1203;
reg   [0:0] icmp_ln283_1_reg_1203_pp0_iter1_reg;
wire   [7:0] select_ln278_fu_486_p3;
reg   [7:0] select_ln278_reg_1209;
reg   [7:0] select_ln278_reg_1209_pp0_iter1_reg;
wire   [15:0] tmp_1_cast_fu_499_p1;
reg   [15:0] tmp_1_cast_reg_1216;
reg   [15:0] tmp_1_cast_reg_1216_pp0_iter1_reg;
reg   [6:0] tmp_2_reg_1222;
wire   [15:0] p_cast1_fu_535_p1;
reg   [15:0] p_cast1_reg_1227;
reg   [15:0] p_cast1_reg_1227_pp0_iter1_reg;
wire   [7:0] or_ln_fu_539_p3;
reg   [7:0] or_ln_reg_1233;
wire   [15:0] p_cast6_fu_561_p1;
reg   [15:0] p_cast6_reg_1245;
reg   [15:0] p_cast6_reg_1245_pp0_iter1_reg;
reg   [31:0] v262_load_reg_1251;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [15:0] p_cast7_fu_574_p1;
reg   [15:0] p_cast7_reg_1261;
reg   [15:0] p_cast7_reg_1261_pp0_iter1_reg;
reg   [31:0] v262_load_1_reg_1267;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [15:0] grp_fu_1089_p3;
reg   [15:0] empty_16_reg_1272;
wire   [15:0] p_cast8_fu_583_p1;
reg   [15:0] p_cast8_reg_1277;
reg   [15:0] p_cast8_reg_1277_pp0_iter1_reg;
wire   [15:0] grp_fu_1096_p3;
reg   [15:0] empty_19_reg_1283;
wire   [15:0] grp_fu_1103_p3;
reg   [15:0] empty_22_reg_1288;
wire   [15:0] grp_fu_1110_p3;
reg   [15:0] empty_25_reg_1293;
wire   [7:0] grp_fu_503_p2;
reg   [7:0] urem_ln279_reg_1298;
wire   [15:0] mul_ln280_fu_587_p2;
reg   [15:0] mul_ln280_reg_1303;
wire   [7:0] grp_fu_546_p2;
reg   [7:0] urem_ln287_reg_1329;
wire   [15:0] mul_ln293_fu_608_p2;
reg   [15:0] mul_ln293_reg_1334;
wire   [15:0] zext_ln280_fu_613_p1;
reg   [15:0] zext_ln280_reg_1340;
reg   [15:0] v261_addr_reg_1349;
reg   [15:0] v261_addr_reg_1349_pp0_iter2_reg;
wire   [31:0] select_ln283_2_fu_653_p3;
reg   [31:0] select_ln283_2_reg_1354;
wire   [15:0] zext_ln287_fu_660_p1;
reg   [15:0] zext_ln287_reg_1359;
reg   [15:0] v261_addr_1_reg_1368;
reg   [15:0] v261_addr_1_reg_1368_pp0_iter2_reg;
wire   [0:0] icmp_ln289_fu_698_p2;
reg   [0:0] icmp_ln289_reg_1393;
wire   [31:0] v201_fu_704_p1;
reg   [31:0] v201_reg_1399;
wire   [15:0] mul_ln304_fu_708_p2;
reg   [15:0] mul_ln304_reg_1404;
reg   [15:0] v261_addr_2_reg_1410;
reg   [15:0] v261_addr_2_reg_1410_pp0_iter2_reg;
wire   [31:0] v200_fu_726_p3;
reg   [31:0] v200_reg_1415;
wire   [31:0] v202_fu_733_p1;
reg   [31:0] v202_reg_1420;
reg   [15:0] v261_addr_3_reg_1425;
reg   [15:0] v261_addr_3_reg_1425_pp0_iter2_reg;
wire   [31:0] v206_fu_750_p3;
reg   [31:0] v206_reg_1430;
wire   [31:0] select_ln289_2_fu_771_p3;
reg   [31:0] select_ln289_2_reg_1435;
wire   [15:0] mul_ln315_fu_778_p2;
reg   [15:0] mul_ln315_reg_1440;
reg   [15:0] v261_addr_4_reg_1446;
reg   [15:0] v261_addr_4_reg_1446_pp0_iter2_reg;
reg   [15:0] v261_addr_5_reg_1451;
reg   [15:0] v261_addr_5_reg_1451_pp0_iter2_reg;
wire   [31:0] v207_fu_801_p1;
reg   [31:0] v207_reg_1456;
wire   [31:0] v211_fu_809_p3;
reg   [31:0] v211_reg_1461;
wire   [31:0] v216_fu_820_p3;
reg   [31:0] v216_reg_1466;
wire   [31:0] v212_fu_827_p1;
reg   [31:0] v212_reg_1471;
wire   [15:0] mul_ln326_fu_835_p2;
reg   [15:0] mul_ln326_reg_1481;
reg   [15:0] v261_addr_6_reg_1487;
reg   [15:0] v261_addr_6_reg_1487_pp0_iter2_reg;
reg   [15:0] v261_addr_7_reg_1492;
reg   [15:0] v261_addr_7_reg_1492_pp0_iter2_reg;
wire   [31:0] v220_fu_862_p3;
reg   [31:0] v220_reg_1497;
wire   [31:0] v225_fu_873_p3;
reg   [31:0] v225_reg_1502;
reg   [15:0] v261_addr_8_reg_1512;
reg   [15:0] v261_addr_8_reg_1512_pp0_iter2_reg;
wire   [15:0] add_ln337_fu_898_p2;
reg   [15:0] add_ln337_reg_1517;
wire   [31:0] grp_fu_376_p2;
reg   [31:0] v203_reg_1522;
reg   [15:0] v261_addr_9_reg_1527;
reg   [15:0] v261_addr_9_reg_1527_pp0_iter2_reg;
wire   [15:0] add_ln343_fu_912_p2;
reg   [15:0] add_ln343_reg_1532;
wire   [31:0] v229_fu_921_p3;
reg   [31:0] v229_reg_1537;
wire   [31:0] v234_fu_932_p3;
reg   [31:0] v234_reg_1542;
wire   [31:0] v221_fu_939_p1;
reg   [31:0] v221_reg_1547;
reg   [15:0] v261_addr_10_reg_1557;
reg   [15:0] v261_addr_10_reg_1557_pp0_iter2_reg;
reg   [15:0] v261_addr_11_reg_1562;
reg   [15:0] v261_addr_11_reg_1562_pp0_iter2_reg;
reg   [31:0] v208_reg_1567;
wire   [31:0] v238_fu_960_p3;
reg   [31:0] v238_reg_1572;
wire   [31:0] v243_fu_971_p3;
reg   [31:0] v243_reg_1577;
reg   [31:0] v262_load_4_reg_1582;
reg   [31:0] v213_reg_1592;
wire   [31:0] v247_fu_986_p3;
reg   [31:0] v247_reg_1597;
wire   [31:0] v252_fu_997_p3;
reg   [31:0] v252_reg_1602;
wire   [31:0] v230_fu_1004_p1;
reg   [31:0] v230_reg_1607;
wire   [31:0] v248_fu_1009_p1;
reg   [31:0] v248_reg_1612;
reg   [31:0] v217_reg_1617;
reg   [31:0] v222_reg_1622;
wire   [31:0] v239_fu_1013_p1;
reg   [31:0] v239_reg_1627;
reg   [31:0] v226_reg_1632;
reg   [31:0] v231_reg_1637;
reg   [31:0] v235_reg_1642;
reg   [31:0] v240_reg_1647;
reg   [31:0] v244_reg_1652;
reg   [31:0] v218_reg_1657;
reg   [31:0] v249_reg_1662;
reg   [31:0] v223_reg_1667;
reg   [31:0] v253_reg_1672;
reg   [31:0] v227_reg_1677;
reg   [31:0] v232_reg_1682;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] p_cast9_fu_552_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] p_cast_fu_565_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln283_1_fu_600_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln280_1_fu_621_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln287_2_fu_668_p1;
wire   [63:0] zext_ln289_1_fu_684_p1;
wire   [63:0] zext_ln293_fu_717_p1;
wire   [63:0] zext_ln299_fu_741_p1;
wire   [63:0] zext_ln304_fu_787_p1;
wire   [63:0] zext_ln310_fu_796_p1;
wire   [63:0] p_cast10_fu_831_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln315_fu_844_p1;
wire   [63:0] zext_ln321_fu_853_p1;
wire   [63:0] p_cast11_fu_880_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln326_fu_893_p1;
wire   [63:0] zext_ln332_fu_907_p1;
wire   [63:0] p_cast12_fu_944_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln337_fu_948_p1;
wire   [63:0] zext_ln343_fu_952_p1;
wire   [63:0] p_cast13_fu_978_p1;
wire    ap_block_pp0_stage8;
reg   [7:0] v198_fu_94;
wire   [7:0] add_ln279_fu_519_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v198_load;
wire    ap_block_pp0_stage0;
reg   [7:0] v197_fu_98;
reg   [7:0] ap_sig_allocacmp_v197_load;
reg   [11:0] indvar_flatten_fu_102;
wire   [11:0] add_ln278_1_fu_424_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v262_ce0_local;
reg   [15:0] v262_address0_local;
reg    v263_0_0_ce0_local;
reg   [13:0] v263_0_0_address0_local;
reg    v263_0_1_ce0_local;
reg   [13:0] v263_0_1_address0_local;
reg    v263_1_0_ce0_local;
reg   [13:0] v263_1_0_address0_local;
reg    v263_1_1_ce0_local;
reg   [13:0] v263_1_1_address0_local;
reg    v261_ce1_local;
reg   [15:0] v261_address1_local;
reg    v261_ce0_local;
reg   [15:0] v261_address0_local;
reg    v261_we1_local;
reg   [31:0] v261_d1_local;
wire   [31:0] bitcast_ln286_fu_1017_p1;
reg    v261_we0_local;
reg   [31:0] v261_d0_local;
wire   [31:0] bitcast_ln292_fu_1022_p1;
wire   [31:0] bitcast_ln298_fu_1027_p1;
wire    ap_block_pp0_stage9;
wire   [31:0] bitcast_ln303_fu_1032_p1;
wire   [31:0] bitcast_ln309_fu_1036_p1;
wire    ap_block_pp0_stage10;
wire   [31:0] bitcast_ln314_fu_1040_p1;
wire   [31:0] bitcast_ln320_fu_1044_p1;
wire    ap_block_pp0_stage11;
wire   [31:0] bitcast_ln325_fu_1048_p1;
wire   [31:0] bitcast_ln331_fu_1053_p1;
wire   [31:0] bitcast_ln336_fu_1058_p1;
wire   [31:0] bitcast_ln342_fu_1063_p1;
wire   [31:0] bitcast_ln347_fu_1068_p1;
reg   [31:0] grp_fu_372_p0;
reg   [31:0] grp_fu_372_p1;
reg   [31:0] grp_fu_376_p0;
reg   [31:0] grp_fu_376_p1;
wire   [7:0] add_ln278_fu_436_p2;
wire   [7:0] tmp_1_fu_492_p3;
wire   [7:0] empty_14_fu_530_p2;
wire   [7:0] grp_fu_546_p0;
wire   [15:0] grp_fu_1073_p3;
wire   [7:0] empty_17_fu_556_p2;
wire   [15:0] grp_fu_1081_p3;
wire   [7:0] empty_20_fu_569_p2;
wire   [7:0] empty_23_fu_578_p2;
wire   [7:0] mul_ln280_fu_587_p0;
wire   [8:0] mul_ln280_fu_587_p1;
wire   [13:0] zext_ln283_fu_592_p1;
wire   [13:0] add_ln283_1_fu_595_p2;
wire   [7:0] mul_ln293_fu_608_p0;
wire   [8:0] mul_ln293_fu_608_p1;
wire   [15:0] add_ln280_fu_616_p2;
wire   [7:0] add_ln283_fu_626_p2;
wire   [0:0] icmp_ln283_fu_631_p2;
wire   [31:0] select_ln283_1_fu_645_p3;
wire   [31:0] select_ln283_fu_637_p3;
wire   [15:0] add_ln287_fu_663_p2;
wire   [13:0] zext_ln289_fu_676_p1;
wire   [13:0] add_ln289_1_fu_679_p2;
wire   [8:0] zext_ln287_1_fu_673_p1;
wire   [8:0] add_ln289_fu_692_p2;
wire   [7:0] mul_ln304_fu_708_p0;
wire   [8:0] mul_ln304_fu_708_p1;
wire   [15:0] add_ln293_fu_713_p2;
wire   [31:0] v199_fu_722_p1;
wire   [15:0] add_ln299_fu_737_p2;
wire   [31:0] v205_fu_746_p1;
wire   [31:0] select_ln289_1_fu_764_p3;
wire   [31:0] select_ln289_fu_757_p3;
wire   [7:0] mul_ln315_fu_778_p0;
wire   [8:0] mul_ln315_fu_778_p1;
wire   [15:0] add_ln304_fu_783_p2;
wire   [15:0] add_ln310_fu_792_p2;
wire   [31:0] v210_fu_805_p1;
wire   [31:0] v215_fu_816_p1;
wire   [7:0] mul_ln326_fu_835_p0;
wire   [8:0] mul_ln326_fu_835_p1;
wire   [15:0] add_ln315_fu_840_p2;
wire   [15:0] add_ln321_fu_849_p2;
wire   [31:0] v219_fu_858_p1;
wire   [31:0] v224_fu_869_p1;
wire   [7:0] mul_ln337_fu_884_p0;
wire   [8:0] mul_ln337_fu_884_p1;
wire   [15:0] add_ln326_fu_889_p2;
wire   [15:0] mul_ln337_fu_884_p2;
wire   [15:0] add_ln332_fu_903_p2;
wire   [31:0] v228_fu_917_p1;
wire   [31:0] v233_fu_928_p1;
wire   [31:0] v237_fu_956_p1;
wire   [31:0] v242_fu_967_p1;
wire   [31:0] v246_fu_982_p1;
wire   [31:0] v251_fu_993_p1;
wire   [7:0] grp_fu_1073_p0;
wire   [7:0] grp_fu_1073_p1;
wire   [7:0] grp_fu_1073_p2;
wire   [7:0] grp_fu_1081_p0;
wire   [7:0] grp_fu_1081_p1;
wire   [7:0] grp_fu_1081_p2;
wire   [7:0] grp_fu_1089_p0;
wire   [7:0] grp_fu_1089_p1;
wire   [7:0] grp_fu_1089_p2;
wire   [7:0] grp_fu_1096_p0;
wire   [7:0] grp_fu_1096_p1;
wire   [7:0] grp_fu_1096_p2;
wire   [7:0] grp_fu_1103_p0;
wire   [7:0] grp_fu_1103_p1;
wire   [7:0] grp_fu_1103_p2;
wire   [7:0] grp_fu_1110_p0;
wire   [7:0] grp_fu_1110_p1;
wire   [7:0] grp_fu_1110_p2;
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
wire   [15:0] grp_fu_1073_p00;
wire   [15:0] grp_fu_1081_p00;
wire   [15:0] grp_fu_1089_p00;
wire   [15:0] grp_fu_1096_p00;
wire   [15:0] grp_fu_1103_p00;
wire   [15:0] grp_fu_1110_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v198_fu_94 = 8'd0;
#0 v197_fu_98 = 8'd0;
#0 indvar_flatten_fu_102 = 12'd0;
#0 ap_done_reg = 1'b0;
end
kernel_3mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_372_p0),.din1(grp_fu_372_p1),.ce(1'b1),.dout(grp_fu_372_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_376_p0),.din1(grp_fu_376_p1),.ce(1'b1),.dout(grp_fu_376_p2));
kernel_3mm_urem_8ns_8ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
urem_8ns_8ns_8_12_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(select_ln278_fu_486_p3),.din1(8'd95),.ce(1'b1),.dout(grp_fu_503_p2));
kernel_3mm_urem_8ns_8ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
urem_8ns_8ns_8_12_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_546_p0),.din1(8'd95),.ce(1'b1),.dout(grp_fu_546_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U5(.din0(mul_ln280_fu_587_p0),.din1(mul_ln280_fu_587_p1),.dout(mul_ln280_fu_587_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U6(.din0(mul_ln293_fu_608_p0),.din1(mul_ln293_fu_608_p1),.dout(mul_ln293_fu_608_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U7(.din0(mul_ln304_fu_708_p0),.din1(mul_ln304_fu_708_p1),.dout(mul_ln304_fu_708_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U8(.din0(mul_ln315_fu_778_p0),.din1(mul_ln315_fu_778_p1),.dout(mul_ln315_fu_778_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U9(.din0(mul_ln326_fu_835_p0),.din1(mul_ln326_fu_835_p1),.dout(mul_ln326_fu_835_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U10(.din0(mul_ln337_fu_884_p0),.din1(mul_ln337_fu_884_p1),.dout(mul_ln337_fu_884_p2));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1073_p0),.din1(grp_fu_1073_p1),.din2(grp_fu_1073_p2),.ce(1'b1),.dout(grp_fu_1073_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1081_p0),.din1(grp_fu_1081_p1),.din2(grp_fu_1081_p2),.ce(1'b1),.dout(grp_fu_1081_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1089_p0),.din1(grp_fu_1089_p1),.din2(grp_fu_1089_p2),.ce(1'b1),.dout(grp_fu_1089_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U14(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1096_p0),.din1(grp_fu_1096_p1),.din2(grp_fu_1096_p2),.ce(1'b1),.dout(grp_fu_1096_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U15(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1103_p0),.din1(grp_fu_1103_p1),.din2(grp_fu_1103_p2),.ce(1'b1),.dout(grp_fu_1103_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1110_p0),.din1(grp_fu_1110_p1),.din2(grp_fu_1110_p2),.ce(1'b1),.dout(grp_fu_1110_p3));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln278_fu_418_p2 == 1'd0))) begin
            indvar_flatten_fu_102 <= add_ln278_1_fu_424_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_102 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln278_fu_418_p2 == 1'd0))) begin
            v197_fu_98 <= select_ln278_1_fu_448_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v197_fu_98 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v198_fu_94 <= 8'd0;
    end else if (((icmp_ln278_reg_1170 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v198_fu_94 <= add_ln279_fu_519_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln337_reg_1517 <= add_ln337_fu_898_p2;
        add_ln343_reg_1532 <= add_ln343_fu_912_p2;
        v229_reg_1537 <= v229_fu_921_p3;
        v234_reg_1542 <= v234_fu_932_p3;
        v261_addr_8_reg_1512 <= zext_ln326_fu_893_p1;
        v261_addr_8_reg_1512_pp0_iter2_reg <= v261_addr_8_reg_1512;
        v261_addr_9_reg_1527 <= zext_ln332_fu_907_p1;
        v261_addr_9_reg_1527_pp0_iter2_reg <= v261_addr_9_reg_1527;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        empty_16_reg_1272 <= grp_fu_1089_p3;
        v262_load_1_reg_1267 <= v262_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        empty_19_reg_1283 <= grp_fu_1096_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        empty_22_reg_1288 <= grp_fu_1103_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        empty_25_reg_1293 <= grp_fu_1110_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln278_reg_1170 <= icmp_ln278_fu_418_p2;
        icmp_ln278_reg_1170_pp0_iter1_reg <= icmp_ln278_reg_1170;
        icmp_ln278_reg_1170_pp0_iter2_reg <= icmp_ln278_reg_1170_pp0_iter1_reg;
        icmp_ln279_reg_1179 <= icmp_ln279_fu_442_p2;
        icmp_ln283_1_reg_1203 <= icmp_ln283_1_fu_470_p2;
        icmp_ln283_1_reg_1203_pp0_iter1_reg <= icmp_ln283_1_reg_1203;
        select_ln278_1_cast_reg_1192[7 : 0] <= select_ln278_1_cast_fu_456_p1[7 : 0];
        select_ln278_1_cast_reg_1192_pp0_iter1_reg[7 : 0] <= select_ln278_1_cast_reg_1192[7 : 0];
        select_ln278_1_reg_1184 <= select_ln278_1_fu_448_p3;
        tmp_reg_1198 <= {{select_ln278_1_fu_448_p3[7:1]}};
        urem_ln279_reg_1298 <= grp_fu_503_p2;
        v198_load_reg_1174 <= ap_sig_allocacmp_v198_load;
        zext_ln277_cast_reg_1160[7 : 0] <= zext_ln277_cast_fu_396_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln289_reg_1393 <= icmp_ln289_fu_698_p2;
        mul_ln293_reg_1334 <= mul_ln293_fu_608_p2;
        or_ln_reg_1233[7 : 1] <= or_ln_fu_539_p3[7 : 1];
        p_cast1_reg_1227[7 : 0] <= p_cast1_fu_535_p1[7 : 0];
        p_cast1_reg_1227_pp0_iter1_reg[7 : 0] <= p_cast1_reg_1227[7 : 0];
        select_ln283_2_reg_1354 <= select_ln283_2_fu_653_p3;
        v261_addr_1_reg_1368 <= zext_ln287_2_fu_668_p1;
        v261_addr_1_reg_1368_pp0_iter2_reg <= v261_addr_1_reg_1368;
        v261_addr_reg_1349 <= zext_ln280_1_fu_621_p1;
        v261_addr_reg_1349_pp0_iter2_reg <= v261_addr_reg_1349;
        zext_ln280_reg_1340[7 : 0] <= zext_ln280_fu_613_p1[7 : 0];
        zext_ln287_reg_1359[7 : 1] <= zext_ln287_fu_660_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln280_reg_1303 <= mul_ln280_fu_587_p2;
        select_ln278_reg_1209 <= select_ln278_fu_486_p3;
        select_ln278_reg_1209_pp0_iter1_reg <= select_ln278_reg_1209;
        tmp_1_cast_reg_1216[7 : 1] <= tmp_1_cast_fu_499_p1[7 : 1];
        tmp_1_cast_reg_1216_pp0_iter1_reg[7 : 1] <= tmp_1_cast_reg_1216[7 : 1];
        tmp_2_reg_1222 <= {{select_ln278_fu_486_p3[7:1]}};
        urem_ln287_reg_1329 <= grp_fu_546_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln304_reg_1404 <= mul_ln304_fu_708_p2;
        p_cast6_reg_1245[7 : 0] <= p_cast6_fu_561_p1[7 : 0];
        p_cast6_reg_1245_pp0_iter1_reg[7 : 0] <= p_cast6_reg_1245[7 : 0];
        select_ln289_2_reg_1435 <= select_ln289_2_fu_771_p3;
        v200_reg_1415 <= v200_fu_726_p3;
        v201_reg_1399 <= v201_fu_704_p1;
        v202_reg_1420 <= v202_fu_733_p1;
        v206_reg_1430 <= v206_fu_750_p3;
        v261_addr_2_reg_1410 <= zext_ln293_fu_717_p1;
        v261_addr_2_reg_1410_pp0_iter2_reg <= v261_addr_2_reg_1410;
        v261_addr_3_reg_1425 <= zext_ln299_fu_741_p1;
        v261_addr_3_reg_1425_pp0_iter2_reg <= v261_addr_3_reg_1425;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_ln315_reg_1440 <= mul_ln315_fu_778_p2;
        p_cast7_reg_1261[7 : 0] <= p_cast7_fu_574_p1[7 : 0];
        p_cast7_reg_1261_pp0_iter1_reg[7 : 0] <= p_cast7_reg_1261[7 : 0];
        v207_reg_1456 <= v207_fu_801_p1;
        v211_reg_1461 <= v211_fu_809_p3;
        v216_reg_1466 <= v216_fu_820_p3;
        v261_addr_4_reg_1446 <= zext_ln304_fu_787_p1;
        v261_addr_4_reg_1446_pp0_iter2_reg <= v261_addr_4_reg_1446;
        v261_addr_5_reg_1451 <= zext_ln310_fu_796_p1;
        v261_addr_5_reg_1451_pp0_iter2_reg <= v261_addr_5_reg_1451;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul_ln326_reg_1481 <= mul_ln326_fu_835_p2;
        p_cast8_reg_1277[7 : 0] <= p_cast8_fu_583_p1[7 : 0];
        p_cast8_reg_1277_pp0_iter1_reg[7 : 0] <= p_cast8_reg_1277[7 : 0];
        v212_reg_1471 <= v212_fu_827_p1;
        v220_reg_1497 <= v220_fu_862_p3;
        v225_reg_1502 <= v225_fu_873_p3;
        v261_addr_6_reg_1487 <= zext_ln315_fu_844_p1;
        v261_addr_6_reg_1487_pp0_iter2_reg <= v261_addr_6_reg_1487;
        v261_addr_7_reg_1492 <= zext_ln321_fu_853_p1;
        v261_addr_7_reg_1492_pp0_iter2_reg <= v261_addr_7_reg_1492;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_380 <= v262_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_384 <= grp_fu_372_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_388 <= grp_fu_372_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_392 <= grp_fu_372_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v203_reg_1522 <= grp_fu_376_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v208_reg_1567 <= grp_fu_376_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v213_reg_1592 <= grp_fu_376_p2;
        v262_load_4_reg_1582 <= v262_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v217_reg_1617 <= grp_fu_376_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v218_reg_1657 <= grp_fu_372_p2;
        v249_reg_1662 <= grp_fu_376_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v221_reg_1547 <= v221_fu_939_p1;
        v238_reg_1572 <= v238_fu_960_p3;
        v243_reg_1577 <= v243_fu_971_p3;
        v261_addr_10_reg_1557 <= zext_ln337_fu_948_p1;
        v261_addr_10_reg_1557_pp0_iter2_reg <= v261_addr_10_reg_1557;
        v261_addr_11_reg_1562 <= zext_ln343_fu_952_p1;
        v261_addr_11_reg_1562_pp0_iter2_reg <= v261_addr_11_reg_1562;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v222_reg_1622 <= grp_fu_376_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v223_reg_1667 <= grp_fu_372_p2;
        v253_reg_1672 <= grp_fu_376_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v226_reg_1632 <= grp_fu_376_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v227_reg_1677 <= grp_fu_372_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v230_reg_1607 <= v230_fu_1004_p1;
        v248_reg_1612 <= v248_fu_1009_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v231_reg_1637 <= grp_fu_376_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v232_reg_1682 <= grp_fu_372_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v235_reg_1642 <= grp_fu_376_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v239_reg_1627 <= v239_fu_1013_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v240_reg_1647 <= grp_fu_376_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v244_reg_1652 <= grp_fu_376_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v247_reg_1597 <= v247_fu_986_p3;
        v252_reg_1602 <= v252_fu_997_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v262_load_reg_1251 <= v262_q0;
    end
end
always @ (*) begin
    if (((icmp_ln278_reg_1170 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln278_reg_1170_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_102;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v197_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v197_load = v197_fu_98;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v198_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v198_load = v198_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_372_p0 = v252_reg_1602;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_372_p0 = v247_reg_1597;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_372_p0 = v243_reg_1577;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_372_p0 = v238_reg_1572;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_372_p0 = v234_reg_1542;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_372_p0 = v229_reg_1537;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_372_p0 = v225_reg_1502;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_372_p0 = v220_reg_1497;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_372_p0 = v216_reg_1466;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_372_p0 = v211_reg_1461;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_372_p0 = v206_reg_1430;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_372_p0 = v200_reg_1415;
    end else begin
        grp_fu_372_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_372_p1 = v253_reg_1672;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_372_p1 = v249_reg_1662;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_372_p1 = v244_reg_1652;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_372_p1 = v240_reg_1647;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_372_p1 = v235_reg_1642;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_372_p1 = v231_reg_1637;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_372_p1 = v226_reg_1632;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_372_p1 = v222_reg_1622;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_372_p1 = v217_reg_1617;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_372_p1 = v213_reg_1592;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_372_p1 = v208_reg_1567;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_372_p1 = v203_reg_1522;
    end else begin
        grp_fu_372_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_376_p0 = v248_reg_1612;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_376_p0 = v239_reg_1627;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_376_p0 = v239_fu_1013_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_376_p0 = v230_reg_1607;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_376_p0 = v230_fu_1004_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_376_p0 = v221_reg_1547;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_376_p0 = v221_fu_939_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_376_p0 = v212_reg_1471;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_376_p0 = v212_fu_827_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_376_p0 = v201_reg_1399;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_376_p0 = v201_fu_704_p1;
    end else begin
        grp_fu_376_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_376_p1 = v207_reg_1456;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_376_p1 = v202_reg_1420;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_376_p1 = v207_fu_801_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_376_p1 = v202_fu_733_p1;
    end else begin
        grp_fu_376_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_address0_local = v261_addr_11_reg_1562_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_address0_local = v261_addr_9_reg_1527_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_address0_local = v261_addr_7_reg_1492_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_address0_local = v261_addr_5_reg_1451_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_address0_local = v261_addr_3_reg_1425_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_address0_local = v261_addr_1_reg_1368_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_address0_local = zext_ln343_fu_952_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_address0_local = zext_ln332_fu_907_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_address0_local = zext_ln321_fu_853_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_address0_local = zext_ln310_fu_796_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_address0_local = zext_ln299_fu_741_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_address0_local = zext_ln287_2_fu_668_p1;
    end else begin
        v261_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_address1_local = v261_addr_10_reg_1557_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_address1_local = v261_addr_8_reg_1512_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_address1_local = v261_addr_6_reg_1487_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_address1_local = v261_addr_4_reg_1446_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_address1_local = v261_addr_2_reg_1410_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_address1_local = v261_addr_reg_1349_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_address1_local = zext_ln337_fu_948_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_address1_local = zext_ln326_fu_893_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_address1_local = zext_ln315_fu_844_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_address1_local = zext_ln304_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_address1_local = zext_ln293_fu_717_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_address1_local = zext_ln280_1_fu_621_p1;
    end else begin
        v261_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage1_11001) &(ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        v261_ce0_local = 1'b1;
    end else begin
        v261_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage1_11001) &(ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        v261_ce1_local = 1'b1;
    end else begin
        v261_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_d0_local = bitcast_ln347_fu_1068_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_d0_local = bitcast_ln336_fu_1058_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_d0_local = bitcast_ln325_fu_1048_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_d0_local = bitcast_ln314_fu_1040_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_d0_local = bitcast_ln303_fu_1032_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_d0_local = bitcast_ln292_fu_1022_p1;
    end else begin
        v261_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_d1_local = bitcast_ln342_fu_1063_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_d1_local = bitcast_ln331_fu_1053_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_d1_local = bitcast_ln320_fu_1044_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_d1_local = bitcast_ln309_fu_1036_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_d1_local = bitcast_ln298_fu_1027_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_d1_local = bitcast_ln286_fu_1017_p1;
    end else begin
        v261_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v261_we0_local = 1'b1;
    end else begin
        v261_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v261_we1_local = 1'b1;
    end else begin
        v261_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v262_address0_local = p_cast13_fu_978_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v262_address0_local = p_cast12_fu_944_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v262_address0_local = p_cast11_fu_880_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v262_address0_local = p_cast10_fu_831_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v262_address0_local = p_cast_fu_565_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v262_address0_local = p_cast9_fu_552_p1;
    end else begin
        v262_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        v262_ce0_local = 1'b1;
    end else begin
        v262_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v263_0_0_address0_local = zext_ln289_1_fu_684_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v263_0_0_address0_local = zext_ln283_1_fu_600_p1;
        end else begin
            v263_0_0_address0_local = 'bx;
        end
    end else begin
        v263_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v263_0_0_ce0_local = 1'b1;
    end else begin
        v263_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v263_0_1_address0_local = zext_ln289_1_fu_684_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v263_0_1_address0_local = zext_ln283_1_fu_600_p1;
        end else begin
            v263_0_1_address0_local = 'bx;
        end
    end else begin
        v263_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v263_0_1_ce0_local = 1'b1;
    end else begin
        v263_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v263_1_0_address0_local = zext_ln289_1_fu_684_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v263_1_0_address0_local = zext_ln283_1_fu_600_p1;
        end else begin
            v263_1_0_address0_local = 'bx;
        end
    end else begin
        v263_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v263_1_0_ce0_local = 1'b1;
    end else begin
        v263_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v263_1_1_address0_local = zext_ln289_1_fu_684_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v263_1_1_address0_local = zext_ln283_1_fu_600_p1;
        end else begin
            v263_1_1_address0_local = 'bx;
        end
    end else begin
        v263_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v263_1_1_ce0_local = 1'b1;
    end else begin
        v263_1_1_ce0_local = 1'b0;
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
assign add_ln278_1_fu_424_p2 = (ap_sig_allocacmp_indvar_flatten_load + 12'd1);
assign add_ln278_fu_436_p2 = (ap_sig_allocacmp_v197_load + 8'd6);
assign add_ln279_fu_519_p2 = (select_ln278_fu_486_p3 + 8'd2);
assign add_ln280_fu_616_p2 = (mul_ln280_reg_1303 + zext_ln280_fu_613_p1);
assign add_ln283_1_fu_595_p2 = (mul_ln283 + zext_ln283_fu_592_p1);
assign add_ln283_fu_626_p2 = ($signed(select_ln278_reg_1209_pp0_iter1_reg) + $signed(8'd161));
assign add_ln287_fu_663_p2 = (mul_ln280_reg_1303 + zext_ln287_fu_660_p1);
assign add_ln289_1_fu_679_p2 = (mul_ln283 + zext_ln289_fu_676_p1);
assign add_ln289_fu_692_p2 = ($signed(zext_ln287_1_fu_673_p1) + $signed(9'd417));
assign add_ln293_fu_713_p2 = (mul_ln293_reg_1334 + zext_ln280_reg_1340);
assign add_ln299_fu_737_p2 = (mul_ln293_reg_1334 + zext_ln287_reg_1359);
assign add_ln304_fu_783_p2 = (mul_ln304_reg_1404 + zext_ln280_reg_1340);
assign add_ln310_fu_792_p2 = (mul_ln304_reg_1404 + zext_ln287_reg_1359);
assign add_ln315_fu_840_p2 = (mul_ln315_reg_1440 + zext_ln280_reg_1340);
assign add_ln321_fu_849_p2 = (mul_ln315_reg_1440 + zext_ln287_reg_1359);
assign add_ln326_fu_889_p2 = (mul_ln326_reg_1481 + zext_ln280_reg_1340);
assign add_ln332_fu_903_p2 = (mul_ln326_reg_1481 + zext_ln287_reg_1359);
assign add_ln337_fu_898_p2 = (mul_ln337_fu_884_p2 + zext_ln280_reg_1340);
assign add_ln343_fu_912_p2 = (mul_ln337_fu_884_p2 + zext_ln287_reg_1359);
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
assign bitcast_ln286_fu_1017_p1 = reg_384;
assign bitcast_ln292_fu_1022_p1 = reg_388;
assign bitcast_ln298_fu_1027_p1 = reg_392;
assign bitcast_ln303_fu_1032_p1 = v218_reg_1657;
assign bitcast_ln309_fu_1036_p1 = v223_reg_1667;
assign bitcast_ln314_fu_1040_p1 = v227_reg_1677;
assign bitcast_ln320_fu_1044_p1 = v232_reg_1682;
assign bitcast_ln325_fu_1048_p1 = reg_384;
assign bitcast_ln331_fu_1053_p1 = reg_388;
assign bitcast_ln336_fu_1058_p1 = reg_392;
assign bitcast_ln342_fu_1063_p1 = reg_384;
assign bitcast_ln347_fu_1068_p1 = reg_388;
assign empty_14_fu_530_p2 = (select_ln278_1_reg_1184 + 8'd2);
assign empty_17_fu_556_p2 = (select_ln278_1_reg_1184 + 8'd3);
assign empty_20_fu_569_p2 = (select_ln278_1_reg_1184 + 8'd4);
assign empty_23_fu_578_p2 = (select_ln278_1_reg_1184 + 8'd5);
assign grp_fu_1073_p0 = grp_fu_1073_p00;
assign grp_fu_1073_p00 = select_ln278_1_fu_448_p3;
assign grp_fu_1073_p1 = 16'd200;
assign grp_fu_1073_p2 = zext_ln277_cast_reg_1160;
assign grp_fu_1081_p0 = grp_fu_1081_p00;
assign grp_fu_1081_p00 = tmp_1_fu_492_p3;
assign grp_fu_1081_p1 = 16'd200;
assign grp_fu_1081_p2 = zext_ln277_cast_reg_1160;
assign grp_fu_1089_p0 = grp_fu_1089_p00;
assign grp_fu_1089_p00 = empty_14_fu_530_p2;
assign grp_fu_1089_p1 = 16'd200;
assign grp_fu_1089_p2 = zext_ln277_cast_reg_1160;
assign grp_fu_1096_p0 = grp_fu_1096_p00;
assign grp_fu_1096_p00 = empty_17_fu_556_p2;
assign grp_fu_1096_p1 = 16'd200;
assign grp_fu_1096_p2 = zext_ln277_cast_reg_1160;
assign grp_fu_1103_p0 = grp_fu_1103_p00;
assign grp_fu_1103_p00 = empty_20_fu_569_p2;
assign grp_fu_1103_p1 = 16'd200;
assign grp_fu_1103_p2 = zext_ln277_cast_reg_1160;
assign grp_fu_1110_p0 = grp_fu_1110_p00;
assign grp_fu_1110_p00 = empty_23_fu_578_p2;
assign grp_fu_1110_p1 = 16'd200;
assign grp_fu_1110_p2 = zext_ln277_cast_reg_1160;
assign grp_fu_546_p0 = {{tmp_2_reg_1222}, {1'd1}};
assign icmp_ln278_fu_418_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 12'd2850) ? 1'b1 : 1'b0);
assign icmp_ln279_fu_442_p2 = ((ap_sig_allocacmp_v198_load < 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln283_1_fu_470_p2 = ((add_ln277_1 < 8'd100) ? 1'b1 : 1'b0);
assign icmp_ln283_fu_631_p2 = ((add_ln283_fu_626_p2 < 8'd95) ? 1'b1 : 1'b0);
assign icmp_ln289_fu_698_p2 = ((add_ln289_fu_692_p2 < 9'd95) ? 1'b1 : 1'b0);
assign mul_ln280_fu_587_p0 = select_ln278_1_cast_reg_1192_pp0_iter1_reg;
assign mul_ln280_fu_587_p1 = 16'd190;
assign mul_ln293_fu_608_p0 = tmp_1_cast_reg_1216_pp0_iter1_reg;
assign mul_ln293_fu_608_p1 = 16'd190;
assign mul_ln304_fu_708_p0 = p_cast1_reg_1227_pp0_iter1_reg;
assign mul_ln304_fu_708_p1 = 16'd190;
assign mul_ln315_fu_778_p0 = p_cast6_reg_1245_pp0_iter1_reg;
assign mul_ln315_fu_778_p1 = 16'd190;
assign mul_ln326_fu_835_p0 = p_cast7_reg_1261_pp0_iter1_reg;
assign mul_ln326_fu_835_p1 = 16'd190;
assign mul_ln337_fu_884_p0 = p_cast8_reg_1277_pp0_iter1_reg;
assign mul_ln337_fu_884_p1 = 16'd190;
assign or_ln_fu_539_p3 = {{tmp_2_reg_1222}, {1'd1}};
assign p_cast10_fu_831_p1 = empty_16_reg_1272;
assign p_cast11_fu_880_p1 = empty_19_reg_1283;
assign p_cast12_fu_944_p1 = empty_22_reg_1288;
assign p_cast13_fu_978_p1 = empty_25_reg_1293;
assign p_cast1_fu_535_p1 = empty_14_fu_530_p2;
assign p_cast6_fu_561_p1 = empty_17_fu_556_p2;
assign p_cast7_fu_574_p1 = empty_20_fu_569_p2;
assign p_cast8_fu_583_p1 = empty_23_fu_578_p2;
assign p_cast9_fu_552_p1 = grp_fu_1073_p3;
assign p_cast_fu_565_p1 = grp_fu_1081_p3;
assign select_ln278_1_cast_fu_456_p1 = select_ln278_1_fu_448_p3;
assign select_ln278_1_fu_448_p3 = ((icmp_ln279_fu_442_p2[0:0] == 1'b1) ? ap_sig_allocacmp_v197_load : add_ln278_fu_436_p2);
assign select_ln278_fu_486_p3 = ((icmp_ln279_reg_1179[0:0] == 1'b1) ? v198_load_reg_1174 : 8'd0);
assign select_ln283_1_fu_645_p3 = ((icmp_ln283_fu_631_p2[0:0] == 1'b1) ? v263_1_1_q0 : v263_1_0_q0);
assign select_ln283_2_fu_653_p3 = ((icmp_ln283_1_reg_1203_pp0_iter1_reg[0:0] == 1'b1) ? select_ln283_1_fu_645_p3 : select_ln283_fu_637_p3);
assign select_ln283_fu_637_p3 = ((icmp_ln283_fu_631_p2[0:0] == 1'b1) ? v263_0_1_q0 : v263_0_0_q0);
assign select_ln289_1_fu_764_p3 = ((icmp_ln289_reg_1393[0:0] == 1'b1) ? v263_1_1_q0 : v263_1_0_q0);
assign select_ln289_2_fu_771_p3 = ((icmp_ln283_1_reg_1203_pp0_iter1_reg[0:0] == 1'b1) ? select_ln289_1_fu_764_p3 : select_ln289_fu_757_p3);
assign select_ln289_fu_757_p3 = ((icmp_ln289_reg_1393[0:0] == 1'b1) ? v263_0_1_q0 : v263_0_0_q0);
assign tmp_1_cast_fu_499_p1 = tmp_1_fu_492_p3;
assign tmp_1_fu_492_p3 = {{tmp_reg_1198}, {1'd1}};
assign v199_fu_722_p1 = v261_q1;
assign v200_fu_726_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v199_fu_722_p1);
assign v201_fu_704_p1 = v262_load_reg_1251;
assign v202_fu_733_p1 = select_ln283_2_reg_1354;
assign v205_fu_746_p1 = v261_q0;
assign v206_fu_750_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v205_fu_746_p1);
assign v207_fu_801_p1 = select_ln289_2_reg_1435;
assign v210_fu_805_p1 = v261_q1;
assign v211_fu_809_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v210_fu_805_p1);
assign v212_fu_827_p1 = v262_load_1_reg_1267;
assign v215_fu_816_p1 = v261_q0;
assign v216_fu_820_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v215_fu_816_p1);
assign v219_fu_858_p1 = v261_q1;
assign v220_fu_862_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v219_fu_858_p1);
assign v221_fu_939_p1 = reg_380;
assign v224_fu_869_p1 = v261_q0;
assign v225_fu_873_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v224_fu_869_p1);
assign v228_fu_917_p1 = v261_q1;
assign v229_fu_921_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v228_fu_917_p1);
assign v230_fu_1004_p1 = reg_380;
assign v233_fu_928_p1 = v261_q0;
assign v234_fu_932_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v233_fu_928_p1);
assign v237_fu_956_p1 = v261_q1;
assign v238_fu_960_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v237_fu_956_p1);
assign v239_fu_1013_p1 = v262_load_4_reg_1582;
assign v242_fu_967_p1 = v261_q0;
assign v243_fu_971_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v242_fu_967_p1);
assign v246_fu_982_p1 = v261_q1;
assign v247_fu_986_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v246_fu_982_p1);
assign v248_fu_1009_p1 = v262_q0;
assign v251_fu_993_p1 = v261_q0;
assign v252_fu_997_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v251_fu_993_p1);
assign v261_address0 = v261_address0_local;
assign v261_address1 = v261_address1_local;
assign v261_ce0 = v261_ce0_local;
assign v261_ce1 = v261_ce1_local;
assign v261_d0 = v261_d0_local;
assign v261_d1 = v261_d1_local;
assign v261_we0 = v261_we0_local;
assign v261_we1 = v261_we1_local;
assign v262_address0 = v262_address0_local;
assign v262_ce0 = v262_ce0_local;
assign v263_0_0_address0 = v263_0_0_address0_local;
assign v263_0_0_ce0 = v263_0_0_ce0_local;
assign v263_0_1_address0 = v263_0_1_address0_local;
assign v263_0_1_ce0 = v263_0_1_ce0_local;
assign v263_1_0_address0 = v263_1_0_address0_local;
assign v263_1_0_ce0 = v263_1_0_ce0_local;
assign v263_1_1_address0 = v263_1_1_address0_local;
assign v263_1_1_ce0 = v263_1_1_ce0_local;
assign zext_ln277_cast_fu_396_p1 = zext_ln277;
assign zext_ln280_1_fu_621_p1 = add_ln280_fu_616_p2;
assign zext_ln280_fu_613_p1 = select_ln278_reg_1209_pp0_iter1_reg;
assign zext_ln283_1_fu_600_p1 = add_ln283_1_fu_595_p2;
assign zext_ln283_fu_592_p1 = urem_ln279_reg_1298;
assign zext_ln287_1_fu_673_p1 = or_ln_reg_1233;
assign zext_ln287_2_fu_668_p1 = add_ln287_fu_663_p2;
assign zext_ln287_fu_660_p1 = or_ln_reg_1233;
assign zext_ln289_1_fu_684_p1 = add_ln289_1_fu_679_p2;
assign zext_ln289_fu_676_p1 = urem_ln287_reg_1329;
assign zext_ln293_fu_717_p1 = add_ln293_fu_713_p2;
assign zext_ln299_fu_741_p1 = add_ln299_fu_737_p2;
assign zext_ln304_fu_787_p1 = add_ln304_fu_783_p2;
assign zext_ln310_fu_796_p1 = add_ln310_fu_792_p2;
assign zext_ln315_fu_844_p1 = add_ln315_fu_840_p2;
assign zext_ln321_fu_853_p1 = add_ln321_fu_849_p2;
assign zext_ln326_fu_893_p1 = add_ln326_fu_889_p2;
assign zext_ln332_fu_907_p1 = add_ln332_fu_903_p2;
assign zext_ln337_fu_948_p1 = add_ln337_reg_1517;
assign zext_ln343_fu_952_p1 = add_ln343_reg_1532;
always @ (posedge ap_clk) begin
    zext_ln277_cast_reg_1160[15:8] <= 8'b00000000;
    select_ln278_1_cast_reg_1192[15:8] <= 8'b00000000;
    select_ln278_1_cast_reg_1192_pp0_iter1_reg[15:8] <= 8'b00000000;
    tmp_1_cast_reg_1216[0] <= 1'b1;
    tmp_1_cast_reg_1216[15:8] <= 8'b00000000;
    tmp_1_cast_reg_1216_pp0_iter1_reg[0] <= 1'b1;
    tmp_1_cast_reg_1216_pp0_iter1_reg[15:8] <= 8'b00000000;
    p_cast1_reg_1227[15:8] <= 8'b00000000;
    p_cast1_reg_1227_pp0_iter1_reg[15:8] <= 8'b00000000;
    or_ln_reg_1233[0] <= 1'b1;
    p_cast6_reg_1245[15:8] <= 8'b00000000;
    p_cast6_reg_1245_pp0_iter1_reg[15:8] <= 8'b00000000;
    p_cast7_reg_1261[15:8] <= 8'b00000000;
    p_cast7_reg_1261_pp0_iter1_reg[15:8] <= 8'b00000000;
    p_cast8_reg_1277[15:8] <= 8'b00000000;
    p_cast8_reg_1277_pp0_iter1_reg[15:8] <= 8'b00000000;
    zext_ln280_reg_1340[15:8] <= 8'b00000000;
    zext_ln287_reg_1359[0] <= 1'b1;
    zext_ln287_reg_1359[15:8] <= 8'b00000000;
end
endmodule 