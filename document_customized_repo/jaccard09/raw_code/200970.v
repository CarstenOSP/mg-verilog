module kernel_3mm_kernel_3mm_node2_Pipeline_label_7_label_8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,cmp11,v261_1_address0,v261_1_ce0,v261_1_we0,v261_1_d0,v261_1_q0,v261_1_address1,v261_1_ce1,v261_1_we1,v261_1_d1,v261_1_q1,v261_0_address0,v261_0_ce0,v261_0_we0,v261_0_d0,v261_0_q0,v261_0_address1,v261_0_ce1,v261_0_we1,v261_0_d1,v261_0_q1,zext_ln277,v262_address0,v262_ce0,v262_q0,phi_mul,v263_address0,v263_ce0,v263_q0,v263_address1,v263_ce1,v263_q1); 
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
input  [0:0] cmp11;
output  [14:0] v261_1_address0;
output   v261_1_ce0;
output   v261_1_we0;
output  [31:0] v261_1_d0;
input  [31:0] v261_1_q0;
output  [14:0] v261_1_address1;
output   v261_1_ce1;
output   v261_1_we1;
output  [31:0] v261_1_d1;
input  [31:0] v261_1_q1;
output  [14:0] v261_0_address0;
output   v261_0_ce0;
output   v261_0_we0;
output  [31:0] v261_0_d0;
input  [31:0] v261_0_q0;
output  [14:0] v261_0_address1;
output   v261_0_ce1;
output   v261_0_we1;
output  [31:0] v261_0_d1;
input  [31:0] v261_0_q1;
input  [7:0] zext_ln277;
output  [15:0] v262_address0;
output   v262_ce0;
input  [31:0] v262_q0;
input  [15:0] phi_mul;
output  [15:0] v263_address0;
output   v263_ce0;
input  [31:0] v263_q0;
output  [15:0] v263_address1;
output   v263_ce1;
input  [31:0] v263_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] icmp_ln278_reg_1227;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_429;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] grp_fu_400_p2;
reg   [31:0] reg_433;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] grp_fu_408_p3;
reg   [31:0] reg_437;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] grp_fu_415_p3;
reg   [31:0] reg_441;
wire   [15:0] zext_ln277_cast_fu_445_p1;
reg   [15:0] zext_ln277_cast_reg_1217;
wire   [0:0] icmp_ln278_fu_467_p2;
reg   [0:0] icmp_ln278_reg_1227_pp0_iter1_reg;
reg   [0:0] icmp_ln278_reg_1227_pp0_iter2_reg;
reg   [0:0] icmp_ln278_reg_1227_pp0_iter3_reg;
reg   [7:0] v198_load_reg_1231;
wire   [0:0] icmp_ln279_fu_491_p2;
reg   [0:0] icmp_ln279_reg_1236;
wire   [7:0] select_ln278_1_fu_497_p3;
reg   [7:0] select_ln278_1_reg_1241;
reg   [6:0] tmp_reg_1257;
wire   [7:0] select_ln278_fu_529_p3;
reg   [7:0] select_ln278_reg_1262;
reg   [7:0] select_ln278_reg_1262_pp0_iter1_reg;
wire   [7:0] tmp_1_fu_540_p3;
reg   [7:0] tmp_1_reg_1267;
wire   [7:0] or_ln_fu_575_p3;
reg   [7:0] or_ln_reg_1282;
reg   [7:0] or_ln_reg_1282_pp0_iter1_reg;
wire   [7:0] empty_21_fu_613_p2;
reg   [7:0] empty_21_reg_1292;
reg   [31:0] v263_load_reg_1302;
reg   [31:0] v263_load_1_reg_1307;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [7:0] empty_25_fu_631_p2;
reg   [7:0] empty_25_reg_1317;
wire   [7:0] empty_29_fu_649_p2;
reg   [7:0] empty_29_reg_1332;
wire   [31:0] v201_fu_658_p1;
reg   [31:0] v201_reg_1342;
wire   [7:0] empty_33_fu_672_p2;
reg   [7:0] empty_33_reg_1352;
wire   [0:0] empty_37_fu_681_p2;
reg   [0:0] empty_37_reg_1362;
reg   [0:0] empty_37_reg_1362_pp0_iter1_reg;
reg   [0:0] empty_37_reg_1362_pp0_iter2_reg;
reg   [0:0] empty_37_reg_1362_pp0_iter3_reg;
reg   [0:0] empty_37_reg_1362_pp0_iter4_reg;
wire   [0:0] empty_38_fu_691_p2;
reg   [0:0] empty_38_reg_1366;
reg   [0:0] empty_38_reg_1366_pp0_iter1_reg;
reg   [0:0] empty_38_reg_1366_pp0_iter2_reg;
reg   [0:0] empty_38_reg_1366_pp0_iter3_reg;
wire   [31:0] v202_fu_697_p1;
reg   [31:0] v202_reg_1375;
reg   [31:0] v262_load_2_reg_1380;
wire   [31:0] v207_fu_710_p1;
reg   [31:0] v207_reg_1390;
wire   [31:0] v212_fu_714_p1;
reg   [31:0] v212_reg_1395;
reg   [31:0] v262_load_4_reg_1405;
wire   [31:0] grp_fu_404_p2;
reg   [31:0] v203_reg_1415;
wire   [31:0] v221_fu_727_p1;
reg   [31:0] v221_reg_1420;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [31:0] v248_fu_731_p1;
reg   [31:0] v248_reg_1425;
reg   [31:0] v208_reg_1430;
reg   [31:0] v213_reg_1435;
reg   [31:0] v213_reg_1435_pp0_iter1_reg;
wire   [31:0] v230_fu_735_p1;
reg   [31:0] v230_reg_1440;
reg   [31:0] v217_reg_1445;
reg   [31:0] v217_reg_1445_pp0_iter1_reg;
wire   [7:0] grp_fu_535_p2;
reg   [7:0] urem_ln278_reg_1450;
reg   [31:0] v222_reg_1455;
reg   [31:0] v222_reg_1455_pp0_iter2_reg;
wire   [14:0] mul_ln280_fu_743_p2;
reg   [14:0] mul_ln280_reg_1460;
wire   [7:0] grp_fu_608_p2;
reg   [7:0] empty_20_reg_1466;
wire   [31:0] v239_fu_749_p1;
reg   [31:0] v239_reg_1471;
reg   [31:0] v226_reg_1476;
reg   [31:0] v226_reg_1476_pp0_iter2_reg;
wire   [14:0] mul_ln293_fu_756_p2;
reg   [14:0] mul_ln293_reg_1481;
wire   [7:0] grp_fu_626_p2;
reg   [7:0] empty_24_reg_1487;
reg   [7:0] empty_24_reg_1487_pp0_iter2_reg;
wire   [14:0] zext_ln283_fu_762_p1;
reg   [14:0] zext_ln283_reg_1492;
reg   [14:0] zext_ln283_reg_1492_pp0_iter2_reg;
reg   [14:0] zext_ln283_reg_1492_pp0_iter3_reg;
reg   [14:0] v261_0_addr_reg_1501;
reg   [14:0] v261_1_addr_reg_1507;
wire   [14:0] zext_ln289_fu_776_p1;
reg   [14:0] zext_ln289_reg_1513;
reg   [14:0] zext_ln289_reg_1513_pp0_iter2_reg;
reg   [14:0] zext_ln289_reg_1513_pp0_iter3_reg;
reg   [14:0] v261_0_addr_2_reg_1522;
reg   [14:0] v261_1_addr_2_reg_1527;
reg   [31:0] v231_reg_1532;
reg   [31:0] v231_reg_1532_pp0_iter2_reg;
reg   [31:0] v231_reg_1532_pp0_iter3_reg;
wire   [7:0] grp_fu_644_p2;
reg   [7:0] empty_28_reg_1537;
reg   [7:0] empty_28_reg_1537_pp0_iter2_reg;
wire   [31:0] select_ln280_fu_790_p3;
reg   [31:0] select_ln280_reg_1542;
wire   [31:0] select_ln287_fu_797_p3;
reg   [31:0] select_ln287_reg_1547;
reg   [31:0] v235_reg_1552;
reg   [31:0] v235_reg_1552_pp0_iter2_reg;
reg   [31:0] v235_reg_1552_pp0_iter3_reg;
wire   [7:0] grp_fu_667_p2;
reg   [7:0] empty_32_reg_1557;
reg   [7:0] empty_32_reg_1557_pp0_iter2_reg;
wire   [31:0] v200_fu_807_p3;
reg   [31:0] v240_reg_1567;
reg   [31:0] v240_reg_1567_pp0_iter2_reg;
reg   [31:0] v240_reg_1567_pp0_iter3_reg;
wire   [7:0] grp_fu_705_p2;
reg   [7:0] empty_36_reg_1572;
reg   [7:0] empty_36_reg_1572_pp0_iter2_reg;
wire   [31:0] v206_fu_818_p3;
reg   [31:0] v244_reg_1582;
reg   [31:0] v244_reg_1582_pp0_iter2_reg;
reg   [31:0] v244_reg_1582_pp0_iter3_reg;
reg   [31:0] v249_reg_1587;
reg   [31:0] v249_reg_1587_pp0_iter2_reg;
reg   [31:0] v249_reg_1587_pp0_iter3_reg;
reg   [31:0] v253_reg_1592;
reg   [31:0] v253_reg_1592_pp0_iter2_reg;
reg   [31:0] v253_reg_1592_pp0_iter3_reg;
reg   [14:0] v261_0_addr_1_reg_1597;
reg   [14:0] v261_1_addr_1_reg_1602;
reg   [14:0] v261_0_addr_4_reg_1607;
reg   [14:0] v261_1_addr_4_reg_1613;
wire   [31:0] v211_fu_862_p3;
wire   [14:0] mul_ln304_fu_873_p2;
reg   [14:0] mul_ln304_reg_1624;
wire   [31:0] v216_fu_883_p3;
wire   [14:0] mul_ln315_fu_894_p2;
reg   [14:0] mul_ln315_reg_1635;
wire   [14:0] mul_ln326_fu_903_p2;
reg   [14:0] mul_ln326_reg_1641;
wire   [14:0] mul_ln337_fu_912_p2;
reg   [14:0] mul_ln337_reg_1647;
wire   [31:0] bitcast_ln303_fu_924_p1;
reg   [31:0] bitcast_ln303_reg_1653;
reg   [14:0] v261_0_addr_3_reg_1659;
reg   [14:0] v261_1_addr_3_reg_1664;
reg   [14:0] v261_0_addr_6_reg_1669;
reg   [14:0] v261_1_addr_6_reg_1674;
wire   [31:0] v220_fu_952_p3;
reg   [14:0] v261_0_addr_5_reg_1684;
reg   [14:0] v261_0_addr_5_reg_1684_pp0_iter4_reg;
reg   [14:0] v261_1_addr_5_reg_1689;
reg   [14:0] v261_1_addr_5_reg_1689_pp0_iter4_reg;
wire   [31:0] v225_fu_974_p3;
wire   [31:0] grp_fu_422_p3;
reg   [31:0] select_ln315_reg_1699;
reg   [14:0] v261_0_addr_7_reg_1704;
reg   [14:0] v261_0_addr_7_reg_1704_pp0_iter4_reg;
wire   [14:0] add_ln337_fu_992_p2;
reg   [14:0] add_ln337_reg_1709;
reg   [14:0] v261_1_addr_7_reg_1714;
reg   [14:0] v261_1_addr_7_reg_1714_pp0_iter4_reg;
reg   [14:0] v261_0_addr_8_reg_1719;
reg   [14:0] v261_0_addr_8_reg_1719_pp0_iter4_reg;
wire   [14:0] add_ln332_fu_1006_p2;
reg   [14:0] add_ln332_reg_1724;
wire   [14:0] add_ln343_fu_1010_p2;
reg   [14:0] add_ln343_reg_1729;
reg   [14:0] v261_1_addr_8_reg_1734;
reg   [14:0] v261_1_addr_8_reg_1734_pp0_iter4_reg;
reg   [14:0] v261_0_addr_9_reg_1739;
reg   [14:0] v261_0_addr_9_reg_1739_pp0_iter4_reg;
reg   [14:0] v261_1_addr_9_reg_1744;
reg   [14:0] v261_1_addr_9_reg_1744_pp0_iter4_reg;
reg   [14:0] v261_0_addr_10_reg_1749;
reg   [14:0] v261_0_addr_10_reg_1749_pp0_iter4_reg;
reg   [14:0] v261_1_addr_10_reg_1755;
reg   [14:0] v261_1_addr_10_reg_1755_pp0_iter4_reg;
reg   [31:0] select_ln326_reg_1761;
reg   [14:0] v261_0_addr_11_reg_1766;
reg   [14:0] v261_0_addr_11_reg_1766_pp0_iter4_reg;
reg   [14:0] v261_1_addr_11_reg_1772;
reg   [14:0] v261_1_addr_11_reg_1772_pp0_iter4_reg;
reg   [31:0] select_ln332_reg_1778;
reg   [31:0] select_ln337_reg_1783;
wire   [31:0] v229_fu_1032_p3;
wire   [31:0] v234_fu_1044_p3;
reg   [31:0] v234_reg_1793;
wire   [31:0] v238_fu_1054_p3;
reg   [31:0] v238_reg_1798;
wire   [31:0] v243_fu_1064_p3;
reg   [31:0] v243_reg_1803;
wire   [31:0] v247_fu_1074_p3;
reg   [31:0] v247_reg_1808;
wire   [31:0] v252_fu_1085_p3;
reg   [31:0] v252_reg_1813;
wire   [31:0] bitcast_ln314_fu_1098_p1;
reg   [31:0] bitcast_ln314_reg_1818;
wire   [31:0] bitcast_ln320_fu_1102_p1;
reg   [31:0] bitcast_ln320_reg_1824;
wire   [31:0] bitcast_ln325_fu_1106_p1;
reg   [31:0] bitcast_ln325_reg_1830;
wire   [31:0] bitcast_ln342_fu_1110_p1;
reg   [31:0] bitcast_ln342_reg_1836;
wire   [31:0] bitcast_ln347_fu_1114_p1;
reg   [31:0] bitcast_ln347_reg_1842;
wire   [31:0] bitcast_ln331_fu_1118_p1;
reg   [31:0] bitcast_ln331_reg_1848;
wire   [31:0] bitcast_ln336_fu_1122_p1;
reg   [31:0] bitcast_ln336_reg_1854;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln283_2_fu_560_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln289_2_fu_592_p1;
wire   [63:0] p_cast21_fu_622_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] p_cast_fu_640_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] p_cast22_fu_663_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] p_cast23_fu_701_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] p_cast24_fu_719_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] p_cast25_fu_723_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln280_1_fu_770_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln287_fu_784_p1;
wire   [63:0] zext_ln293_1_fu_836_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln299_fu_852_p1;
wire   [63:0] zext_ln304_1_fu_932_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln310_fu_942_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln315_1_fu_964_p1;
wire   [63:0] zext_ln326_1_fu_986_p1;
wire   [63:0] zext_ln321_fu_1000_p1;
wire   [63:0] zext_ln337_1_fu_1014_p1;
wire   [63:0] zext_ln332_fu_1019_p1;
wire   [63:0] zext_ln343_fu_1024_p1;
reg   [7:0] v198_fu_82;
wire   [7:0] add_ln279_fu_597_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v198_load;
reg   [7:0] v197_fu_86;
reg   [7:0] ap_sig_allocacmp_v197_load;
reg   [11:0] indvar_flatten_fu_90;
wire   [11:0] add_ln278_1_fu_473_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v263_ce1_local;
reg    v263_ce0_local;
reg    v262_ce0_local;
reg   [15:0] v262_address0_local;
reg    v261_0_ce1_local;
reg   [14:0] v261_0_address1_local;
reg    v261_0_ce0_local;
reg   [14:0] v261_0_address0_local;
reg    v261_0_we0_local;
reg   [31:0] v261_0_d0_local;
wire   [31:0] bitcast_ln286_fu_826_p1;
wire   [31:0] bitcast_ln292_fu_842_p1;
reg    v261_0_we1_local;
reg   [31:0] v261_0_d1_local;
wire   [31:0] bitcast_ln298_fu_918_p1;
wire    ap_block_pp0_stage9;
wire   [31:0] bitcast_ln309_fu_1092_p1;
reg    v261_1_ce1_local;
reg   [14:0] v261_1_address1_local;
reg    v261_1_ce0_local;
reg   [14:0] v261_1_address0_local;
reg    v261_1_we0_local;
reg   [31:0] v261_1_d0_local;
reg    v261_1_we1_local;
reg   [31:0] v261_1_d1_local;
reg   [31:0] grp_fu_400_p0;
reg   [31:0] grp_fu_400_p1;
reg   [31:0] grp_fu_404_p0;
reg   [31:0] grp_fu_404_p1;
reg   [0:0] grp_fu_408_p0;
reg   [0:0] grp_fu_415_p0;
wire   [7:0] add_ln278_fu_485_p2;
wire   [15:0] zext_ln283_1_fu_551_p1;
wire   [15:0] add_ln283_fu_555_p2;
wire   [6:0] tmp_2_fu_565_p4;
wire   [15:0] zext_ln289_1_fu_583_p1;
wire   [15:0] add_ln289_fu_587_p2;
wire   [15:0] grp_fu_1126_p3;
wire   [15:0] grp_fu_1134_p3;
wire   [15:0] grp_fu_1142_p3;
wire   [7:0] indvars_iv5_off_fu_686_p2;
wire   [15:0] grp_fu_1150_p3;
wire   [15:0] grp_fu_1158_p3;
wire   [15:0] grp_fu_1166_p3;
wire   [7:0] mul_ln280_fu_743_p0;
wire   [8:0] mul_ln280_fu_743_p1;
wire   [7:0] mul_ln293_fu_756_p0;
wire   [8:0] mul_ln293_fu_756_p1;
wire   [14:0] add_ln280_fu_765_p2;
wire   [14:0] add_ln287_fu_779_p2;
wire   [31:0] v199_fu_804_p1;
wire   [31:0] v205_fu_815_p1;
wire   [14:0] add_ln293_fu_832_p2;
wire   [14:0] add_ln299_fu_848_p2;
wire   [31:0] v210_fu_858_p1;
wire   [7:0] mul_ln304_fu_873_p0;
wire   [8:0] mul_ln304_fu_873_p1;
wire   [31:0] v215_fu_879_p1;
wire   [7:0] mul_ln315_fu_894_p0;
wire   [8:0] mul_ln315_fu_894_p1;
wire   [7:0] mul_ln326_fu_903_p0;
wire   [8:0] mul_ln326_fu_903_p1;
wire   [7:0] mul_ln337_fu_912_p0;
wire   [8:0] mul_ln337_fu_912_p1;
wire   [14:0] add_ln304_fu_928_p2;
wire   [14:0] add_ln310_fu_938_p2;
wire   [31:0] v219_fu_948_p1;
wire   [14:0] add_ln315_fu_960_p2;
wire   [31:0] v224_fu_970_p1;
wire   [14:0] add_ln326_fu_982_p2;
wire   [14:0] add_ln321_fu_996_p2;
wire   [31:0] v228_fu_1029_p1;
wire   [31:0] v233_fu_1040_p1;
wire   [31:0] v237_fu_1051_p1;
wire   [31:0] v242_fu_1061_p1;
wire   [31:0] v246_fu_1071_p1;
wire   [31:0] v251_fu_1081_p1;
wire   [7:0] grp_fu_1126_p0;
wire   [7:0] grp_fu_1126_p1;
wire   [7:0] grp_fu_1126_p2;
wire   [7:0] grp_fu_1134_p0;
wire   [7:0] grp_fu_1134_p1;
wire   [7:0] grp_fu_1134_p2;
wire   [7:0] grp_fu_1142_p0;
wire   [7:0] grp_fu_1142_p1;
wire   [7:0] grp_fu_1142_p2;
wire   [7:0] grp_fu_1150_p0;
wire   [7:0] grp_fu_1150_p1;
wire   [7:0] grp_fu_1150_p2;
wire   [7:0] grp_fu_1158_p0;
wire   [7:0] grp_fu_1158_p1;
wire   [7:0] grp_fu_1158_p2;
wire   [7:0] grp_fu_1166_p0;
wire   [7:0] grp_fu_1166_p1;
wire   [7:0] grp_fu_1166_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage9;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [15:0] grp_fu_1126_p00;
wire   [15:0] grp_fu_1134_p00;
wire   [15:0] grp_fu_1142_p00;
wire   [15:0] grp_fu_1150_p00;
wire   [15:0] grp_fu_1158_p00;
wire   [15:0] grp_fu_1166_p00;
wire   [14:0] mul_ln280_fu_743_p00;
wire   [14:0] mul_ln293_fu_756_p00;
wire   [14:0] mul_ln304_fu_873_p00;
wire   [14:0] mul_ln315_fu_894_p00;
wire   [14:0] mul_ln326_fu_903_p00;
wire   [14:0] mul_ln337_fu_912_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v198_fu_82 = 8'd0;
#0 v197_fu_86 = 8'd0;
#0 indvar_flatten_fu_90 = 12'd0;
#0 ap_done_reg = 1'b0;
end
kernel_3mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_400_p0),.din1(grp_fu_400_p1),.ce(1'b1),.dout(grp_fu_400_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_404_p0),.din1(grp_fu_404_p1),.ce(1'b1),.dout(grp_fu_404_p2));
kernel_3mm_urem_8ns_8ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
urem_8ns_8ns_8_12_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(select_ln278_1_reg_1241),.din1(8'd90),.ce(1'b1),.dout(grp_fu_535_p2));
kernel_3mm_urem_8ns_8ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
urem_8ns_8ns_8_12_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(tmp_1_reg_1267),.din1(8'd90),.ce(1'b1),.dout(grp_fu_608_p2));
kernel_3mm_urem_8ns_8ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
urem_8ns_8ns_8_12_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(empty_21_reg_1292),.din1(8'd90),.ce(1'b1),.dout(grp_fu_626_p2));
kernel_3mm_urem_8ns_8ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
urem_8ns_8ns_8_12_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(empty_25_reg_1317),.din1(8'd90),.ce(1'b1),.dout(grp_fu_644_p2));
kernel_3mm_urem_8ns_8ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
urem_8ns_8ns_8_12_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(empty_29_reg_1332),.din1(8'd90),.ce(1'b1),.dout(grp_fu_667_p2));
kernel_3mm_urem_8ns_8ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
urem_8ns_8ns_8_12_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(empty_33_reg_1352),.din1(8'd90),.ce(1'b1),.dout(grp_fu_705_p2));
kernel_3mm_mul_8ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_8ns_9ns_15_1_1_U9(.din0(mul_ln280_fu_743_p0),.din1(mul_ln280_fu_743_p1),.dout(mul_ln280_fu_743_p2));
kernel_3mm_mul_8ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_8ns_9ns_15_1_1_U10(.din0(mul_ln293_fu_756_p0),.din1(mul_ln293_fu_756_p1),.dout(mul_ln293_fu_756_p2));
kernel_3mm_mul_8ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_8ns_9ns_15_1_1_U11(.din0(mul_ln304_fu_873_p0),.din1(mul_ln304_fu_873_p1),.dout(mul_ln304_fu_873_p2));
kernel_3mm_mul_8ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_8ns_9ns_15_1_1_U12(.din0(mul_ln315_fu_894_p0),.din1(mul_ln315_fu_894_p1),.dout(mul_ln315_fu_894_p2));
kernel_3mm_mul_8ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_8ns_9ns_15_1_1_U13(.din0(mul_ln326_fu_903_p0),.din1(mul_ln326_fu_903_p1),.dout(mul_ln326_fu_903_p2));
kernel_3mm_mul_8ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_8ns_9ns_15_1_1_U14(.din0(mul_ln337_fu_912_p0),.din1(mul_ln337_fu_912_p1),.dout(mul_ln337_fu_912_p2));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U15(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1126_p0),.din1(grp_fu_1126_p1),.din2(grp_fu_1126_p2),.ce(1'b1),.dout(grp_fu_1126_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1134_p0),.din1(grp_fu_1134_p1),.din2(grp_fu_1134_p2),.ce(1'b1),.dout(grp_fu_1134_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U17(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1142_p0),.din1(grp_fu_1142_p1),.din2(grp_fu_1142_p2),.ce(1'b1),.dout(grp_fu_1142_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1150_p0),.din1(grp_fu_1150_p1),.din2(grp_fu_1150_p2),.ce(1'b1),.dout(grp_fu_1150_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U19(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1158_p0),.din1(grp_fu_1158_p1),.din2(grp_fu_1158_p2),.ce(1'b1),.dout(grp_fu_1158_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1166_p0),.din1(grp_fu_1166_p1),.din2(grp_fu_1166_p2),.ce(1'b1),.dout(grp_fu_1166_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage9) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage9) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage9) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln278_fu_467_p2 == 1'd0))) begin
            indvar_flatten_fu_90 <= add_ln278_1_fu_473_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_90 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln278_fu_467_p2 == 1'd0))) begin
            v197_fu_86 <= select_ln278_1_fu_497_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v197_fu_86 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v198_fu_82 <= 8'd0;
    end else if (((icmp_ln278_reg_1227 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v198_fu_82 <= add_ln279_fu_597_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln332_reg_1724 <= add_ln332_fu_1006_p2;
        add_ln337_reg_1709 <= add_ln337_fu_992_p2;
        add_ln343_reg_1729 <= add_ln343_fu_1010_p2;
        bitcast_ln331_reg_1848 <= bitcast_ln331_fu_1118_p1;
        bitcast_ln336_reg_1854 <= bitcast_ln336_fu_1122_p1;
        empty_25_reg_1317 <= empty_25_fu_631_p2;
        empty_28_reg_1537 <= grp_fu_644_p2;
        empty_28_reg_1537_pp0_iter2_reg <= empty_28_reg_1537;
        mul_ln304_reg_1624 <= mul_ln304_fu_873_p2;
        select_ln280_reg_1542 <= select_ln280_fu_790_p3;
        select_ln287_reg_1547 <= select_ln287_fu_797_p3;
        v235_reg_1552_pp0_iter2_reg <= v235_reg_1552;
        v235_reg_1552_pp0_iter3_reg <= v235_reg_1552_pp0_iter2_reg;
        v261_0_addr_7_reg_1704 <= zext_ln326_1_fu_986_p1;
        v261_0_addr_7_reg_1704_pp0_iter4_reg <= v261_0_addr_7_reg_1704;
        v261_0_addr_8_reg_1719 <= zext_ln321_fu_1000_p1;
        v261_0_addr_8_reg_1719_pp0_iter4_reg <= v261_0_addr_8_reg_1719;
        v261_1_addr_7_reg_1714 <= zext_ln326_1_fu_986_p1;
        v261_1_addr_7_reg_1714_pp0_iter4_reg <= v261_1_addr_7_reg_1714;
        v261_1_addr_8_reg_1734 <= zext_ln321_fu_1000_p1;
        v261_1_addr_8_reg_1734_pp0_iter4_reg <= v261_1_addr_8_reg_1734;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bitcast_ln303_reg_1653 <= bitcast_ln303_fu_924_p1;
        v221_reg_1420 <= v221_fu_727_p1;
        v248_reg_1425 <= v248_fu_731_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bitcast_ln314_reg_1818 <= bitcast_ln314_fu_1098_p1;
        v212_reg_1395 <= v212_fu_714_p1;
        v253_reg_1592_pp0_iter2_reg <= v253_reg_1592;
        v253_reg_1592_pp0_iter3_reg <= v253_reg_1592_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bitcast_ln320_reg_1824 <= bitcast_ln320_fu_1102_p1;
        bitcast_ln325_reg_1830 <= bitcast_ln325_fu_1106_p1;
        empty_20_reg_1466 <= grp_fu_608_p2;
        mul_ln280_reg_1460 <= mul_ln280_fu_743_p2;
        or_ln_reg_1282[7 : 1] <= or_ln_fu_575_p3[7 : 1];
        or_ln_reg_1282_pp0_iter1_reg[7 : 1] <= or_ln_reg_1282[7 : 1];
        select_ln278_reg_1262 <= select_ln278_fu_529_p3;
        select_ln278_reg_1262_pp0_iter1_reg <= select_ln278_reg_1262;
        tmp_1_reg_1267[7 : 1] <= tmp_1_fu_540_p3[7 : 1];
        v226_reg_1476_pp0_iter2_reg <= v226_reg_1476;
        v239_reg_1471 <= v239_fu_749_p1;
        v261_0_addr_4_reg_1607 <= zext_ln299_fu_852_p1;
        v261_0_addr_5_reg_1684 <= zext_ln315_1_fu_964_p1;
        v261_0_addr_5_reg_1684_pp0_iter4_reg <= v261_0_addr_5_reg_1684;
        v261_1_addr_4_reg_1613 <= zext_ln299_fu_852_p1;
        v261_1_addr_5_reg_1689 <= zext_ln315_1_fu_964_p1;
        v261_1_addr_5_reg_1689_pp0_iter4_reg <= v261_1_addr_5_reg_1689;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bitcast_ln342_reg_1836 <= bitcast_ln342_fu_1110_p1;
        bitcast_ln347_reg_1842 <= bitcast_ln347_fu_1114_p1;
        empty_33_reg_1352 <= empty_33_fu_672_p2;
        empty_36_reg_1572 <= grp_fu_705_p2;
        empty_36_reg_1572_pp0_iter2_reg <= empty_36_reg_1572;
        empty_37_reg_1362 <= empty_37_fu_681_p2;
        empty_37_reg_1362_pp0_iter1_reg <= empty_37_reg_1362;
        empty_37_reg_1362_pp0_iter2_reg <= empty_37_reg_1362_pp0_iter1_reg;
        empty_37_reg_1362_pp0_iter3_reg <= empty_37_reg_1362_pp0_iter2_reg;
        empty_37_reg_1362_pp0_iter4_reg <= empty_37_reg_1362_pp0_iter3_reg;
        empty_38_reg_1366 <= empty_38_fu_691_p2;
        empty_38_reg_1366_pp0_iter1_reg <= empty_38_reg_1366;
        empty_38_reg_1366_pp0_iter2_reg <= empty_38_reg_1366_pp0_iter1_reg;
        empty_38_reg_1366_pp0_iter3_reg <= empty_38_reg_1366_pp0_iter2_reg;
        mul_ln326_reg_1641 <= mul_ln326_fu_903_p2;
        v201_reg_1342 <= v201_fu_658_p1;
        v202_reg_1375 <= v202_fu_697_p1;
        v244_reg_1582_pp0_iter2_reg <= v244_reg_1582;
        v244_reg_1582_pp0_iter3_reg <= v244_reg_1582_pp0_iter2_reg;
        v261_0_addr_11_reg_1766 <= zext_ln343_fu_1024_p1;
        v261_0_addr_11_reg_1766_pp0_iter4_reg <= v261_0_addr_11_reg_1766;
        v261_1_addr_11_reg_1772 <= zext_ln343_fu_1024_p1;
        v261_1_addr_11_reg_1772_pp0_iter4_reg <= v261_1_addr_11_reg_1772;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        empty_21_reg_1292 <= empty_21_fu_613_p2;
        empty_24_reg_1487 <= grp_fu_626_p2;
        empty_24_reg_1487_pp0_iter2_reg <= empty_24_reg_1487;
        mul_ln293_reg_1481 <= mul_ln293_fu_756_p2;
        v231_reg_1532_pp0_iter2_reg <= v231_reg_1532;
        v231_reg_1532_pp0_iter3_reg <= v231_reg_1532_pp0_iter2_reg;
        v261_0_addr_2_reg_1522 <= zext_ln287_fu_784_p1;
        v261_0_addr_reg_1501 <= zext_ln280_1_fu_770_p1;
        v261_1_addr_2_reg_1527 <= zext_ln287_fu_784_p1;
        v261_1_addr_reg_1507 <= zext_ln280_1_fu_770_p1;
        zext_ln283_reg_1492[7 : 0] <= zext_ln283_fu_762_p1[7 : 0];
        zext_ln283_reg_1492_pp0_iter2_reg[7 : 0] <= zext_ln283_reg_1492[7 : 0];
        zext_ln283_reg_1492_pp0_iter3_reg[7 : 0] <= zext_ln283_reg_1492_pp0_iter2_reg[7 : 0];
        zext_ln289_reg_1513[7 : 1] <= zext_ln289_fu_776_p1[7 : 1];
        zext_ln289_reg_1513_pp0_iter2_reg[7 : 1] <= zext_ln289_reg_1513[7 : 1];
        zext_ln289_reg_1513_pp0_iter3_reg[7 : 1] <= zext_ln289_reg_1513_pp0_iter2_reg[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        empty_29_reg_1332 <= empty_29_fu_649_p2;
        empty_32_reg_1557 <= grp_fu_667_p2;
        empty_32_reg_1557_pp0_iter2_reg <= empty_32_reg_1557;
        mul_ln315_reg_1635 <= mul_ln315_fu_894_p2;
        v240_reg_1567_pp0_iter2_reg <= v240_reg_1567;
        v240_reg_1567_pp0_iter3_reg <= v240_reg_1567_pp0_iter2_reg;
        v261_0_addr_10_reg_1749 <= zext_ln332_fu_1019_p1;
        v261_0_addr_10_reg_1749_pp0_iter4_reg <= v261_0_addr_10_reg_1749;
        v261_0_addr_9_reg_1739 <= zext_ln337_1_fu_1014_p1;
        v261_0_addr_9_reg_1739_pp0_iter4_reg <= v261_0_addr_9_reg_1739;
        v261_1_addr_10_reg_1755 <= zext_ln332_fu_1019_p1;
        v261_1_addr_10_reg_1755_pp0_iter4_reg <= v261_1_addr_10_reg_1755;
        v261_1_addr_9_reg_1744 <= zext_ln337_1_fu_1014_p1;
        v261_1_addr_9_reg_1744_pp0_iter4_reg <= v261_1_addr_9_reg_1744;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln278_reg_1227 <= icmp_ln278_fu_467_p2;
        icmp_ln278_reg_1227_pp0_iter1_reg <= icmp_ln278_reg_1227;
        icmp_ln278_reg_1227_pp0_iter2_reg <= icmp_ln278_reg_1227_pp0_iter1_reg;
        icmp_ln278_reg_1227_pp0_iter3_reg <= icmp_ln278_reg_1227_pp0_iter2_reg;
        icmp_ln279_reg_1236 <= icmp_ln279_fu_491_p2;
        select_ln278_1_reg_1241 <= select_ln278_1_fu_497_p3;
        tmp_reg_1257 <= {{select_ln278_1_fu_497_p3[7:1]}};
        urem_ln278_reg_1450 <= grp_fu_535_p2;
        v198_load_reg_1231 <= ap_sig_allocacmp_v198_load;
        v222_reg_1455_pp0_iter2_reg <= v222_reg_1455;
        v261_0_addr_1_reg_1597 <= zext_ln293_1_fu_836_p1;
        v261_1_addr_1_reg_1602 <= zext_ln293_1_fu_836_p1;
        zext_ln277_cast_reg_1217[7 : 0] <= zext_ln277_cast_fu_445_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul_ln337_reg_1647 <= mul_ln337_fu_912_p2;
        v207_reg_1390 <= v207_fu_710_p1;
        v234_reg_1793 <= v234_fu_1044_p3;
        v238_reg_1798 <= v238_fu_1054_p3;
        v243_reg_1803 <= v243_fu_1064_p3;
        v247_reg_1808 <= v247_fu_1074_p3;
        v249_reg_1587_pp0_iter2_reg <= v249_reg_1587;
        v249_reg_1587_pp0_iter3_reg <= v249_reg_1587_pp0_iter2_reg;
        v252_reg_1813 <= v252_fu_1085_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_429 <= v262_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_433 <= grp_fu_400_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_437 <= grp_fu_408_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_441 <= grp_fu_415_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln315_reg_1699 <= grp_fu_422_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        select_ln326_reg_1761 <= grp_fu_422_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        select_ln332_reg_1778 <= grp_fu_415_p3;
        select_ln337_reg_1783 <= grp_fu_422_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v203_reg_1415 <= grp_fu_404_p2;
        v262_load_4_reg_1405 <= v262_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v208_reg_1430 <= grp_fu_404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v213_reg_1435 <= grp_fu_404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v213_reg_1435_pp0_iter1_reg <= v213_reg_1435;
        v261_0_addr_3_reg_1659 <= zext_ln304_1_fu_932_p1;
        v261_1_addr_3_reg_1664 <= zext_ln304_1_fu_932_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v217_reg_1445 <= grp_fu_404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v217_reg_1445_pp0_iter1_reg <= v217_reg_1445;
        v230_reg_1440 <= v230_fu_735_p1;
        v261_0_addr_6_reg_1669 <= zext_ln310_fu_942_p1;
        v261_1_addr_6_reg_1674 <= zext_ln310_fu_942_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v222_reg_1455 <= grp_fu_404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v226_reg_1476 <= grp_fu_404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v231_reg_1532 <= grp_fu_404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v235_reg_1552 <= grp_fu_404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v240_reg_1567 <= grp_fu_404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v244_reg_1582 <= grp_fu_404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v249_reg_1587 <= grp_fu_404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v253_reg_1592 <= grp_fu_404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v262_load_2_reg_1380 <= v262_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v263_load_1_reg_1307 <= v263_q0;
        v263_load_reg_1302 <= v263_q1;
    end
end
always @ (*) begin
    if (((icmp_ln278_reg_1227 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln278_reg_1227_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_condition_exit_pp0_iter3_stage9 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_90;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v197_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v197_load = v197_fu_86;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v198_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v198_load = v198_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_400_p0 = v252_reg_1813;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_400_p0 = v247_reg_1808;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_400_p0 = v243_reg_1803;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_400_p0 = v238_reg_1798;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_400_p0 = v234_reg_1793;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_400_p0 = v229_fu_1032_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_400_p0 = v225_fu_974_p3;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_400_p0 = v220_fu_952_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_400_p0 = v216_fu_883_p3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_400_p0 = v211_fu_862_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_400_p0 = v206_fu_818_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_400_p0 = v200_fu_807_p3;
    end else begin
        grp_fu_400_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_400_p1 = v253_reg_1592_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_400_p1 = v249_reg_1587_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_400_p1 = v244_reg_1582_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_400_p1 = v240_reg_1567_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_400_p1 = v235_reg_1552_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_400_p1 = v231_reg_1532_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_400_p1 = v226_reg_1476_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_400_p1 = v222_reg_1455_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_400_p1 = v217_reg_1445_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_400_p1 = v213_reg_1435_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_400_p1 = v208_reg_1430;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_400_p1 = v203_reg_1415;
    end else begin
        grp_fu_400_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_404_p0 = v248_reg_1425;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_404_p0 = v239_reg_1471;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_404_p0 = v239_fu_749_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_404_p0 = v230_reg_1440;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_404_p0 = v230_fu_735_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_404_p0 = v221_reg_1420;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_404_p0 = v221_fu_727_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_404_p0 = v212_reg_1395;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_404_p0 = v212_fu_714_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_404_p0 = v201_reg_1342;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_404_p0 = v201_fu_658_p1;
    end else begin
        grp_fu_404_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_404_p1 = v207_reg_1390;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_404_p1 = v202_reg_1375;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_404_p1 = v207_fu_710_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_404_p1 = v202_fu_697_p1;
    end else begin
        grp_fu_404_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_408_p0 = empty_38_reg_1366_pp0_iter2_reg;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_408_p0 = empty_38_reg_1366_pp0_iter1_reg;
    end else begin
        grp_fu_408_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_415_p0 = empty_38_reg_1366_pp0_iter3_reg;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_415_p0 = empty_38_reg_1366_pp0_iter2_reg;
    end else begin
        grp_fu_415_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_0_address0_local = v261_0_addr_11_reg_1766_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_0_address0_local = v261_0_addr_9_reg_1739_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_0_address0_local = v261_0_addr_10_reg_1749_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_0_address0_local = v261_0_addr_7_reg_1704_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_0_address0_local = v261_0_addr_5_reg_1684_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_0_address0_local = zext_ln337_1_fu_1014_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_0_address0_local = zext_ln326_1_fu_986_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_0_address0_local = zext_ln315_1_fu_964_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_0_address0_local = v261_0_addr_4_reg_1607;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_0_address0_local = v261_0_addr_2_reg_1522;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_0_address0_local = v261_0_addr_reg_1501;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_0_address0_local = zext_ln287_fu_784_p1;
    end else begin
        v261_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_0_address1_local = v261_0_addr_8_reg_1719_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_0_address1_local = v261_0_addr_6_reg_1669;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_0_address1_local = v261_0_addr_3_reg_1659;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_0_address1_local = zext_ln343_fu_1024_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_0_address1_local = zext_ln332_fu_1019_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_0_address1_local = zext_ln321_fu_1000_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_0_address1_local = zext_ln310_fu_942_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_0_address1_local = zext_ln304_1_fu_932_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_0_address1_local = v261_0_addr_1_reg_1597;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_0_address1_local = zext_ln299_fu_852_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_0_address1_local = zext_ln293_1_fu_836_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_0_address1_local = zext_ln280_1_fu_770_p1;
    end else begin
        v261_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) &(ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v261_0_ce0_local = 1'b1;
    end else begin
        v261_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) &(ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v261_0_ce1_local = 1'b1;
    end else begin
        v261_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_0_d0_local = bitcast_ln347_reg_1842;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_0_d0_local = bitcast_ln342_reg_1836;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_0_d0_local = bitcast_ln336_reg_1854;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_0_d0_local = bitcast_ln331_reg_1848;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_0_d0_local = bitcast_ln320_reg_1824;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_0_d0_local = bitcast_ln303_reg_1653;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_0_d0_local = bitcast_ln292_fu_842_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_0_d0_local = bitcast_ln286_fu_826_p1;
    end else begin
        v261_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_0_d1_local = bitcast_ln325_reg_1830;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_0_d1_local = bitcast_ln314_reg_1818;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_0_d1_local = bitcast_ln309_fu_1092_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_0_d1_local = bitcast_ln298_fu_918_p1;
    end else begin
        v261_0_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (empty_37_reg_1362_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_37_reg_1362_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (empty_37_reg_1362_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (empty_37_reg_1362_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (empty_37_reg_1362_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_37_reg_1362_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (empty_37_reg_1362_pp0_iter4_reg== 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (empty_37_reg_1362_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        v261_0_we0_local = 1'b1;
    end else begin
        v261_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_37_reg_1362_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (empty_37_reg_1362_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (empty_37_reg_1362_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (empty_37_reg_1362_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        v261_0_we1_local = 1'b1;
    end else begin
        v261_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_1_address0_local = v261_1_addr_11_reg_1772_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_1_address0_local = v261_1_addr_9_reg_1744_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_1_address0_local = v261_1_addr_10_reg_1755_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_1_address0_local = v261_1_addr_7_reg_1714_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_1_address0_local = v261_1_addr_5_reg_1689_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_1_address0_local = zext_ln337_1_fu_1014_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_1_address0_local = zext_ln326_1_fu_986_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_1_address0_local = zext_ln315_1_fu_964_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_1_address0_local = v261_1_addr_4_reg_1613;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_1_address0_local = v261_1_addr_2_reg_1527;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_1_address0_local = v261_1_addr_reg_1507;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_1_address0_local = zext_ln287_fu_784_p1;
    end else begin
        v261_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_1_address1_local = v261_1_addr_8_reg_1734_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_1_address1_local = v261_1_addr_6_reg_1674;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_1_address1_local = v261_1_addr_3_reg_1664;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_1_address1_local = zext_ln343_fu_1024_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_1_address1_local = zext_ln332_fu_1019_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_1_address1_local = zext_ln321_fu_1000_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_1_address1_local = zext_ln310_fu_942_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_1_address1_local = zext_ln304_1_fu_932_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_1_address1_local = v261_1_addr_1_reg_1602;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_1_address1_local = zext_ln299_fu_852_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_1_address1_local = zext_ln293_1_fu_836_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_1_address1_local = zext_ln280_1_fu_770_p1;
    end else begin
        v261_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) &(ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v261_1_ce0_local = 1'b1;
    end else begin
        v261_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) &(ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v261_1_ce1_local = 1'b1;
    end else begin
        v261_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_1_d0_local = bitcast_ln347_reg_1842;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_1_d0_local = bitcast_ln342_reg_1836;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_1_d0_local = bitcast_ln336_reg_1854;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_1_d0_local = bitcast_ln331_reg_1848;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_1_d0_local = bitcast_ln320_reg_1824;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_1_d0_local = bitcast_ln303_reg_1653;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_1_d0_local = bitcast_ln292_fu_842_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_1_d0_local = bitcast_ln286_fu_826_p1;
    end else begin
        v261_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_1_d1_local = bitcast_ln325_reg_1830;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_1_d1_local = bitcast_ln314_reg_1818;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_1_d1_local = bitcast_ln309_fu_1092_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_1_d1_local = bitcast_ln298_fu_918_p1;
    end else begin
        v261_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (empty_37_reg_1362_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_37_reg_1362_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (empty_37_reg_1362_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (empty_37_reg_1362_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (empty_37_reg_1362_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_37_reg_1362_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (empty_37_reg_1362_pp0_iter4_reg== 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (empty_37_reg_1362_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        v261_1_we0_local = 1'b1;
    end else begin
        v261_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_37_reg_1362_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (empty_37_reg_1362_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (empty_37_reg_1362_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (empty_37_reg_1362_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        v261_1_we1_local = 1'b1;
    end else begin
        v261_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            v262_address0_local = p_cast25_fu_723_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v262_address0_local = p_cast24_fu_719_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v262_address0_local = p_cast23_fu_701_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v262_address0_local = p_cast22_fu_663_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v262_address0_local = p_cast_fu_640_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v262_address0_local = p_cast21_fu_622_p1;
        end else begin
            v262_address0_local = 'bx;
        end
    end else begin
        v262_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v262_ce0_local = 1'b1;
    end else begin
        v262_ce0_local = 1'b0;
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
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage9) & (ap_idle_pp0_0to2 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
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
assign add_ln278_1_fu_473_p2 = (ap_sig_allocacmp_indvar_flatten_load + 12'd1);
assign add_ln278_fu_485_p2 = (ap_sig_allocacmp_v197_load + 8'd6);
assign add_ln279_fu_597_p2 = (select_ln278_fu_529_p3 + 8'd2);
assign add_ln280_fu_765_p2 = (mul_ln280_reg_1460 + zext_ln283_fu_762_p1);
assign add_ln283_fu_555_p2 = (phi_mul + zext_ln283_1_fu_551_p1);
assign add_ln287_fu_779_p2 = (mul_ln280_reg_1460 + zext_ln289_fu_776_p1);
assign add_ln289_fu_587_p2 = (phi_mul + zext_ln289_1_fu_583_p1);
assign add_ln293_fu_832_p2 = (mul_ln293_reg_1481 + zext_ln283_reg_1492);
assign add_ln299_fu_848_p2 = (mul_ln293_reg_1481 + zext_ln289_reg_1513);
assign add_ln304_fu_928_p2 = (mul_ln304_reg_1624 + zext_ln283_reg_1492_pp0_iter2_reg);
assign add_ln310_fu_938_p2 = (mul_ln304_reg_1624 + zext_ln289_reg_1513_pp0_iter2_reg);
assign add_ln315_fu_960_p2 = (mul_ln315_reg_1635 + zext_ln283_reg_1492_pp0_iter2_reg);
assign add_ln321_fu_996_p2 = (mul_ln315_reg_1635 + zext_ln289_reg_1513_pp0_iter3_reg);
assign add_ln326_fu_982_p2 = (mul_ln326_reg_1641 + zext_ln283_reg_1492_pp0_iter3_reg);
assign add_ln332_fu_1006_p2 = (mul_ln326_reg_1641 + zext_ln289_reg_1513_pp0_iter3_reg);
assign add_ln337_fu_992_p2 = (mul_ln337_reg_1647 + zext_ln283_reg_1492_pp0_iter3_reg);
assign add_ln343_fu_1010_p2 = (mul_ln337_reg_1647 + zext_ln289_reg_1513_pp0_iter3_reg);
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
assign bitcast_ln286_fu_826_p1 = reg_433;
assign bitcast_ln292_fu_842_p1 = reg_433;
assign bitcast_ln298_fu_918_p1 = reg_433;
assign bitcast_ln303_fu_924_p1 = grp_fu_400_p2;
assign bitcast_ln309_fu_1092_p1 = reg_433;
assign bitcast_ln314_fu_1098_p1 = grp_fu_400_p2;
assign bitcast_ln320_fu_1102_p1 = reg_433;
assign bitcast_ln325_fu_1106_p1 = grp_fu_400_p2;
assign bitcast_ln331_fu_1118_p1 = reg_433;
assign bitcast_ln336_fu_1122_p1 = grp_fu_400_p2;
assign bitcast_ln342_fu_1110_p1 = reg_433;
assign bitcast_ln347_fu_1114_p1 = grp_fu_400_p2;
assign empty_21_fu_613_p2 = (select_ln278_1_reg_1241 + 8'd2);
assign empty_25_fu_631_p2 = (select_ln278_1_reg_1241 + 8'd3);
assign empty_29_fu_649_p2 = (select_ln278_1_reg_1241 + 8'd4);
assign empty_33_fu_672_p2 = (select_ln278_1_reg_1241 + 8'd5);
assign empty_37_fu_681_p2 = ((select_ln278_1_reg_1241 < 8'd90) ? 1'b1 : 1'b0);
assign empty_38_fu_691_p2 = ((indvars_iv5_off_fu_686_p2 < 8'd90) ? 1'b1 : 1'b0);
assign grp_fu_1126_p0 = grp_fu_1126_p00;
assign grp_fu_1126_p00 = select_ln278_1_fu_497_p3;
assign grp_fu_1126_p1 = 16'd200;
assign grp_fu_1126_p2 = zext_ln277_cast_reg_1217;
assign grp_fu_1134_p0 = grp_fu_1134_p00;
assign grp_fu_1134_p00 = tmp_1_fu_540_p3;
assign grp_fu_1134_p1 = 16'd200;
assign grp_fu_1134_p2 = zext_ln277_cast_reg_1217;
assign grp_fu_1142_p0 = grp_fu_1142_p00;
assign grp_fu_1142_p00 = empty_21_fu_613_p2;
assign grp_fu_1142_p1 = 16'd200;
assign grp_fu_1142_p2 = zext_ln277_cast_reg_1217;
assign grp_fu_1150_p0 = grp_fu_1150_p00;
assign grp_fu_1150_p00 = empty_25_fu_631_p2;
assign grp_fu_1150_p1 = 16'd200;
assign grp_fu_1150_p2 = zext_ln277_cast_reg_1217;
assign grp_fu_1158_p0 = grp_fu_1158_p00;
assign grp_fu_1158_p00 = empty_29_fu_649_p2;
assign grp_fu_1158_p1 = 16'd200;
assign grp_fu_1158_p2 = zext_ln277_cast_reg_1217;
assign grp_fu_1166_p0 = grp_fu_1166_p00;
assign grp_fu_1166_p00 = empty_33_fu_672_p2;
assign grp_fu_1166_p1 = 16'd200;
assign grp_fu_1166_p2 = zext_ln277_cast_reg_1217;
assign grp_fu_408_p3 = ((grp_fu_408_p0[0:0] == 1'b1) ? v261_1_q1 : v261_0_q1);
assign grp_fu_415_p3 = ((grp_fu_415_p0[0:0] == 1'b1) ? v261_1_q1 : v261_0_q1);
assign grp_fu_422_p3 = ((empty_38_reg_1366_pp0_iter2_reg[0:0] == 1'b1) ? v261_1_q0 : v261_0_q0);
assign icmp_ln278_fu_467_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 12'd2850) ? 1'b1 : 1'b0);
assign icmp_ln279_fu_491_p2 = ((ap_sig_allocacmp_v198_load < 8'd190) ? 1'b1 : 1'b0);
assign indvars_iv5_off_fu_686_p2 = ($signed(select_ln278_1_reg_1241) + $signed(8'd166));
assign mul_ln280_fu_743_p0 = mul_ln280_fu_743_p00;
assign mul_ln280_fu_743_p00 = urem_ln278_reg_1450;
assign mul_ln280_fu_743_p1 = 15'd190;
assign mul_ln293_fu_756_p0 = mul_ln293_fu_756_p00;
assign mul_ln293_fu_756_p00 = empty_20_reg_1466;
assign mul_ln293_fu_756_p1 = 15'd190;
assign mul_ln304_fu_873_p0 = mul_ln304_fu_873_p00;
assign mul_ln304_fu_873_p00 = empty_24_reg_1487_pp0_iter2_reg;
assign mul_ln304_fu_873_p1 = 15'd190;
assign mul_ln315_fu_894_p0 = mul_ln315_fu_894_p00;
assign mul_ln315_fu_894_p00 = empty_28_reg_1537_pp0_iter2_reg;
assign mul_ln315_fu_894_p1 = 15'd190;
assign mul_ln326_fu_903_p0 = mul_ln326_fu_903_p00;
assign mul_ln326_fu_903_p00 = empty_32_reg_1557_pp0_iter2_reg;
assign mul_ln326_fu_903_p1 = 15'd190;
assign mul_ln337_fu_912_p0 = mul_ln337_fu_912_p00;
assign mul_ln337_fu_912_p00 = empty_36_reg_1572_pp0_iter2_reg;
assign mul_ln337_fu_912_p1 = 15'd190;
assign or_ln_fu_575_p3 = {{tmp_2_fu_565_p4}, {1'd1}};
assign p_cast21_fu_622_p1 = grp_fu_1126_p3;
assign p_cast22_fu_663_p1 = grp_fu_1142_p3;
assign p_cast23_fu_701_p1 = grp_fu_1150_p3;
assign p_cast24_fu_719_p1 = grp_fu_1158_p3;
assign p_cast25_fu_723_p1 = grp_fu_1166_p3;
assign p_cast_fu_640_p1 = grp_fu_1134_p3;
assign select_ln278_1_fu_497_p3 = ((icmp_ln279_fu_491_p2[0:0] == 1'b1) ? ap_sig_allocacmp_v197_load : add_ln278_fu_485_p2);
assign select_ln278_fu_529_p3 = ((icmp_ln279_reg_1236[0:0] == 1'b1) ? v198_load_reg_1231 : 8'd0);
assign select_ln280_fu_790_p3 = ((empty_38_reg_1366[0:0] == 1'b1) ? v261_1_q1 : v261_0_q1);
assign select_ln287_fu_797_p3 = ((empty_38_reg_1366[0:0] == 1'b1) ? v261_1_q0 : v261_0_q0);
assign tmp_1_fu_540_p3 = {{tmp_reg_1257}, {1'd1}};
assign tmp_2_fu_565_p4 = {{select_ln278_fu_529_p3[7:1]}};
assign v199_fu_804_p1 = select_ln280_reg_1542;
assign v200_fu_807_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v199_fu_804_p1);
assign v201_fu_658_p1 = reg_429;
assign v202_fu_697_p1 = v263_load_reg_1302;
assign v205_fu_815_p1 = select_ln287_reg_1547;
assign v206_fu_818_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v205_fu_815_p1);
assign v207_fu_710_p1 = v263_load_1_reg_1307;
assign v210_fu_858_p1 = reg_437;
assign v211_fu_862_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v210_fu_858_p1);
assign v212_fu_714_p1 = reg_429;
assign v215_fu_879_p1 = reg_437;
assign v216_fu_883_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v215_fu_879_p1);
assign v219_fu_948_p1 = reg_437;
assign v220_fu_952_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v219_fu_948_p1);
assign v221_fu_727_p1 = v262_load_2_reg_1380;
assign v224_fu_970_p1 = reg_441;
assign v225_fu_974_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v224_fu_970_p1);
assign v228_fu_1029_p1 = select_ln315_reg_1699;
assign v229_fu_1032_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v228_fu_1029_p1);
assign v230_fu_735_p1 = reg_429;
assign v233_fu_1040_p1 = reg_441;
assign v234_fu_1044_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v233_fu_1040_p1);
assign v237_fu_1051_p1 = select_ln326_reg_1761;
assign v238_fu_1054_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v237_fu_1051_p1);
assign v239_fu_749_p1 = v262_load_4_reg_1405;
assign v242_fu_1061_p1 = select_ln332_reg_1778;
assign v243_fu_1064_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v242_fu_1061_p1);
assign v246_fu_1071_p1 = select_ln337_reg_1783;
assign v247_fu_1074_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v246_fu_1071_p1);
assign v248_fu_731_p1 = v262_q0;
assign v251_fu_1081_p1 = grp_fu_415_p3;
assign v252_fu_1085_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v251_fu_1081_p1);
assign v261_0_address0 = v261_0_address0_local;
assign v261_0_address1 = v261_0_address1_local;
assign v261_0_ce0 = v261_0_ce0_local;
assign v261_0_ce1 = v261_0_ce1_local;
assign v261_0_d0 = v261_0_d0_local;
assign v261_0_d1 = v261_0_d1_local;
assign v261_0_we0 = v261_0_we0_local;
assign v261_0_we1 = v261_0_we1_local;
assign v261_1_address0 = v261_1_address0_local;
assign v261_1_address1 = v261_1_address1_local;
assign v261_1_ce0 = v261_1_ce0_local;
assign v261_1_ce1 = v261_1_ce1_local;
assign v261_1_d0 = v261_1_d0_local;
assign v261_1_d1 = v261_1_d1_local;
assign v261_1_we0 = v261_1_we0_local;
assign v261_1_we1 = v261_1_we1_local;
assign v262_address0 = v262_address0_local;
assign v262_ce0 = v262_ce0_local;
assign v263_address0 = zext_ln289_2_fu_592_p1;
assign v263_address1 = zext_ln283_2_fu_560_p1;
assign v263_ce0 = v263_ce0_local;
assign v263_ce1 = v263_ce1_local;
assign zext_ln277_cast_fu_445_p1 = zext_ln277;
assign zext_ln280_1_fu_770_p1 = add_ln280_fu_765_p2;
assign zext_ln283_1_fu_551_p1 = select_ln278_fu_529_p3;
assign zext_ln283_2_fu_560_p1 = add_ln283_fu_555_p2;
assign zext_ln283_fu_762_p1 = select_ln278_reg_1262_pp0_iter1_reg;
assign zext_ln287_fu_784_p1 = add_ln287_fu_779_p2;
assign zext_ln289_1_fu_583_p1 = or_ln_fu_575_p3;
assign zext_ln289_2_fu_592_p1 = add_ln289_fu_587_p2;
assign zext_ln289_fu_776_p1 = or_ln_reg_1282_pp0_iter1_reg;
assign zext_ln293_1_fu_836_p1 = add_ln293_fu_832_p2;
assign zext_ln299_fu_852_p1 = add_ln299_fu_848_p2;
assign zext_ln304_1_fu_932_p1 = add_ln304_fu_928_p2;
assign zext_ln310_fu_942_p1 = add_ln310_fu_938_p2;
assign zext_ln315_1_fu_964_p1 = add_ln315_fu_960_p2;
assign zext_ln321_fu_1000_p1 = add_ln321_fu_996_p2;
assign zext_ln326_1_fu_986_p1 = add_ln326_fu_982_p2;
assign zext_ln332_fu_1019_p1 = add_ln332_reg_1724;
assign zext_ln337_1_fu_1014_p1 = add_ln337_reg_1709;
assign zext_ln343_fu_1024_p1 = add_ln343_reg_1729;
always @ (posedge ap_clk) begin
    zext_ln277_cast_reg_1217[15:8] <= 8'b00000000;
    tmp_1_reg_1267[0] <= 1'b1;
    or_ln_reg_1282[0] <= 1'b1;
    or_ln_reg_1282_pp0_iter1_reg[0] <= 1'b1;
    zext_ln283_reg_1492[14:8] <= 7'b0000000;
    zext_ln283_reg_1492_pp0_iter2_reg[14:8] <= 7'b0000000;
    zext_ln283_reg_1492_pp0_iter3_reg[14:8] <= 7'b0000000;
    zext_ln289_reg_1513[0] <= 1'b1;
    zext_ln289_reg_1513[14:8] <= 7'b0000000;
    zext_ln289_reg_1513_pp0_iter2_reg[0] <= 1'b1;
    zext_ln289_reg_1513_pp0_iter2_reg[14:8] <= 7'b0000000;
    zext_ln289_reg_1513_pp0_iter3_reg[0] <= 1'b1;
    zext_ln289_reg_1513_pp0_iter3_reg[14:8] <= 7'b0000000;
end
endmodule 