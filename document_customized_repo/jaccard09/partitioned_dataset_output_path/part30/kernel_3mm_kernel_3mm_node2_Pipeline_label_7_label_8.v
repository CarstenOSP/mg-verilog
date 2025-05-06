
module kernel_3mm_kernel_3mm_node2_Pipeline_label_7_label_8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,cmp11,v261_3_address0,v261_3_ce0,v261_3_we0,v261_3_d0,v261_3_q0,v261_3_address1,v261_3_ce1,v261_3_we1,v261_3_d1,v261_3_q1,v261_2_address0,v261_2_ce0,v261_2_we0,v261_2_d0,v261_2_q0,v261_2_address1,v261_2_ce1,v261_2_we1,v261_2_d1,v261_2_q1,v261_1_address0,v261_1_ce0,v261_1_we0,v261_1_d0,v261_1_q0,v261_1_address1,v261_1_ce1,v261_1_we1,v261_1_d1,v261_1_q1,v261_0_address0,v261_0_ce0,v261_0_we0,v261_0_d0,v261_0_q0,v261_0_address1,v261_0_ce1,v261_0_we1,v261_0_d1,v261_0_q1,zext_ln277,v262_0_address0,v262_0_ce0,v262_0_q0,v262_0_address1,v262_0_ce1,v262_0_q1,v262_1_address0,v262_1_ce0,v262_1_q0,v262_1_address1,v262_1_ce1,v262_1_q1,phi_mul,v263_address0,v263_ce0,v263_q0,v263_address1,v263_ce1,v263_q1);  
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
input  [0:0] cmp11;
output  [13:0] v261_3_address0;
output   v261_3_ce0;
output   v261_3_we0;
output  [31:0] v261_3_d0;
input  [31:0] v261_3_q0;
output  [13:0] v261_3_address1;
output   v261_3_ce1;
output   v261_3_we1;
output  [31:0] v261_3_d1;
input  [31:0] v261_3_q1;
output  [13:0] v261_2_address0;
output   v261_2_ce0;
output   v261_2_we0;
output  [31:0] v261_2_d0;
input  [31:0] v261_2_q0;
output  [13:0] v261_2_address1;
output   v261_2_ce1;
output   v261_2_we1;
output  [31:0] v261_2_d1;
input  [31:0] v261_2_q1;
output  [13:0] v261_1_address0;
output   v261_1_ce0;
output   v261_1_we0;
output  [31:0] v261_1_d0;
input  [31:0] v261_1_q0;
output  [13:0] v261_1_address1;
output   v261_1_ce1;
output   v261_1_we1;
output  [31:0] v261_1_d1;
input  [31:0] v261_1_q1;
output  [13:0] v261_0_address0;
output   v261_0_ce0;
output   v261_0_we0;
output  [31:0] v261_0_d0;
input  [31:0] v261_0_q0;
output  [13:0] v261_0_address1;
output   v261_0_ce1;
output   v261_0_we1;
output  [31:0] v261_0_d1;
input  [31:0] v261_0_q1;
input  [7:0] zext_ln277;
output  [14:0] v262_0_address0;
output   v262_0_ce0;
input  [31:0] v262_0_q0;
output  [14:0] v262_0_address1;
output   v262_0_ce1;
input  [31:0] v262_0_q1;
output  [14:0] v262_1_address0;
output   v262_1_ce0;
input  [31:0] v262_1_q0;
output  [14:0] v262_1_address1;
output   v262_1_ce1;
input  [31:0] v262_1_q1;
input  [15:0] phi_mul;
output  [15:0] v263_address0;
output   v263_ce0;
input  [31:0] v263_q0;
output  [15:0] v263_address1;
output   v263_ce1;
input  [31:0] v263_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln278_reg_1419;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_485;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_490;
reg   [31:0] reg_495;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_499;
reg   [31:0] reg_503;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_507;
wire   [31:0] grp_fu_437_p2;
reg   [31:0] reg_511;
reg   [0:0] cond1_reg_1457;
reg   [0:0] cond1_reg_1457_pp0_iter3_reg;
reg   [0:0] cond1_reg_1457_pp0_iter6_reg;
wire   [31:0] grp_fu_441_p2;
reg   [31:0] reg_515;
wire   [31:0] grp_fu_445_p2;
reg   [31:0] reg_519;
wire   [31:0] grp_fu_449_p2;
reg   [31:0] reg_523;
wire   [31:0] grp_fu_453_p2;
reg   [31:0] reg_527;
wire   [31:0] grp_fu_457_p2;
reg   [31:0] reg_531;
wire   [0:0] cmp11_read_reg_1388;
wire   [14:0] zext_ln277_cast_fu_535_p1;
reg   [14:0] zext_ln277_cast_reg_1412;
wire   [0:0] icmp_ln278_fu_557_p2;
reg   [0:0] icmp_ln278_reg_1419_pp0_iter1_reg;
reg   [0:0] icmp_ln278_reg_1419_pp0_iter2_reg;
reg   [0:0] icmp_ln278_reg_1419_pp0_iter3_reg;
reg   [0:0] icmp_ln278_reg_1419_pp0_iter4_reg;
reg   [0:0] icmp_ln278_reg_1419_pp0_iter5_reg;
reg   [7:0] v198_load_reg_1423;
wire   [0:0] icmp_ln279_fu_581_p2;
reg   [0:0] icmp_ln279_reg_1428;
wire   [7:0] select_ln278_1_fu_587_p3;
reg   [7:0] select_ln278_1_reg_1433;
reg   [7:0] select_ln278_1_reg_1433_pp0_iter1_reg;
reg   [5:0] lshr_ln_reg_1440;
reg   [5:0] lshr_ln_reg_1440_pp0_iter1_reg;
wire   [6:0] lshr_ln278_1_fu_609_p4;
reg   [6:0] lshr_ln278_1_reg_1446;
wire   [0:0] cond1_fu_623_p2;
reg   [0:0] cond1_reg_1457_pp0_iter1_reg;
reg   [0:0] cond1_reg_1457_pp0_iter2_reg;
reg   [0:0] cond1_reg_1457_pp0_iter4_reg;
reg   [0:0] cond1_reg_1457_pp0_iter5_reg;
wire   [0:0] icmp_ln280_fu_629_p2;
reg   [0:0] icmp_ln280_reg_1461;
reg   [0:0] icmp_ln280_reg_1461_pp0_iter1_reg;
wire   [7:0] select_ln278_fu_645_p3;
reg   [7:0] select_ln278_reg_1469;
reg   [7:0] select_ln278_reg_1469_pp0_iter1_reg;
wire   [7:0] or_ln_fu_675_p3;
reg   [7:0] or_ln_reg_1479;
reg   [7:0] or_ln_reg_1479_pp0_iter1_reg;
reg   [31:0] v263_load_reg_1489;
reg   [31:0] v263_load_1_reg_1494;
wire   [13:0] mul_ln280_fu_726_p2;
reg   [13:0] mul_ln280_reg_1529;
wire   [31:0] v201_fu_732_p1;
wire   [31:0] v212_fu_738_p1;
wire   [13:0] mul_ln315_fu_763_p2;
reg   [13:0] mul_ln315_reg_1547;
reg   [31:0] v262_0_load_2_reg_1553;
reg   [31:0] v262_1_load_2_reg_1558;
wire   [31:0] v202_fu_769_p1;
reg   [31:0] v202_reg_1563;
wire   [31:0] v207_fu_774_p1;
reg   [31:0] v207_reg_1570;
wire   [13:0] mul_ln304_fu_798_p2;
reg   [13:0] mul_ln304_reg_1577;
wire   [31:0] v221_fu_804_p1;
wire   [31:0] v230_fu_810_p1;
wire   [13:0] mul_ln326_fu_825_p2;
reg   [13:0] mul_ln326_reg_1595;
wire   [31:0] v239_fu_831_p1;
reg   [5:0] tmp_2_reg_1607;
reg   [5:0] tmp_2_reg_1607_pp0_iter2_reg;
reg   [5:0] tmp_2_reg_1607_pp0_iter3_reg;
wire   [13:0] zext_ln283_fu_851_p1;
reg   [13:0] zext_ln283_reg_1612;
reg   [13:0] zext_ln283_reg_1612_pp0_iter2_reg;
reg   [13:0] zext_ln283_reg_1612_pp0_iter3_reg;
reg   [13:0] v261_0_addr_reg_1619;
reg   [13:0] v261_0_addr_reg_1619_pp0_iter2_reg;
reg   [13:0] v261_0_addr_reg_1619_pp0_iter3_reg;
reg   [13:0] v261_1_addr_reg_1624;
reg   [13:0] v261_1_addr_reg_1624_pp0_iter2_reg;
reg   [13:0] v261_1_addr_reg_1624_pp0_iter3_reg;
reg   [13:0] v261_1_addr_3_reg_1629;
reg   [13:0] v261_1_addr_3_reg_1629_pp0_iter2_reg;
reg   [13:0] v261_1_addr_3_reg_1629_pp0_iter3_reg;
reg   [13:0] v261_2_addr_reg_1634;
reg   [13:0] v261_2_addr_reg_1634_pp0_iter2_reg;
reg   [13:0] v261_2_addr_reg_1634_pp0_iter3_reg;
reg   [13:0] v261_3_addr_reg_1639;
reg   [13:0] v261_3_addr_reg_1639_pp0_iter2_reg;
reg   [13:0] v261_3_addr_reg_1639_pp0_iter3_reg;
reg   [13:0] v261_3_addr_1_reg_1644;
reg   [13:0] v261_3_addr_1_reg_1644_pp0_iter2_reg;
reg   [13:0] v261_3_addr_1_reg_1644_pp0_iter3_reg;
wire   [13:0] zext_ln289_fu_878_p1;
reg   [13:0] zext_ln289_reg_1649;
reg   [13:0] zext_ln289_reg_1649_pp0_iter2_reg;
reg   [13:0] zext_ln289_reg_1649_pp0_iter3_reg;
reg   [13:0] v261_0_addr_2_reg_1656;
reg   [13:0] v261_0_addr_2_reg_1656_pp0_iter2_reg;
reg   [13:0] v261_0_addr_2_reg_1656_pp0_iter3_reg;
reg   [13:0] v261_1_addr_2_reg_1661;
reg   [13:0] v261_1_addr_2_reg_1661_pp0_iter2_reg;
reg   [13:0] v261_1_addr_2_reg_1661_pp0_iter3_reg;
reg   [13:0] v261_1_addr_5_reg_1666;
reg   [13:0] v261_1_addr_5_reg_1666_pp0_iter2_reg;
reg   [13:0] v261_1_addr_5_reg_1666_pp0_iter3_reg;
reg   [13:0] v261_2_addr_2_reg_1671;
reg   [13:0] v261_2_addr_2_reg_1671_pp0_iter2_reg;
reg   [13:0] v261_2_addr_2_reg_1671_pp0_iter3_reg;
reg   [13:0] v261_3_addr_2_reg_1676;
reg   [13:0] v261_3_addr_2_reg_1676_pp0_iter2_reg;
reg   [13:0] v261_3_addr_2_reg_1676_pp0_iter3_reg;
reg   [13:0] v261_3_addr_4_reg_1681;
reg   [13:0] v261_3_addr_4_reg_1681_pp0_iter2_reg;
reg   [13:0] v261_3_addr_4_reg_1681_pp0_iter3_reg;
wire   [31:0] v248_fu_905_p1;
reg   [13:0] v261_0_addr_1_reg_1692;
reg   [13:0] v261_0_addr_1_reg_1692_pp0_iter2_reg;
reg   [13:0] v261_0_addr_1_reg_1692_pp0_iter3_reg;
reg   [13:0] v261_0_addr_3_reg_1697;
reg   [13:0] v261_0_addr_3_reg_1697_pp0_iter2_reg;
reg   [13:0] v261_0_addr_3_reg_1697_pp0_iter3_reg;
reg   [13:0] v261_2_addr_1_reg_1702;
reg   [13:0] v261_2_addr_1_reg_1702_pp0_iter2_reg;
reg   [13:0] v261_2_addr_1_reg_1702_pp0_iter3_reg;
reg   [13:0] v261_2_addr_3_reg_1707;
reg   [13:0] v261_2_addr_3_reg_1707_pp0_iter2_reg;
reg   [13:0] v261_2_addr_3_reg_1707_pp0_iter3_reg;
reg   [13:0] v261_2_addr_3_reg_1707_pp0_iter4_reg;
reg   [13:0] v261_2_addr_3_reg_1707_pp0_iter5_reg;
reg   [13:0] v261_0_addr_4_reg_1712;
reg   [13:0] v261_0_addr_4_reg_1712_pp0_iter2_reg;
reg   [13:0] v261_0_addr_4_reg_1712_pp0_iter3_reg;
reg   [13:0] v261_0_addr_5_reg_1717;
reg   [13:0] v261_0_addr_5_reg_1717_pp0_iter2_reg;
reg   [13:0] v261_0_addr_5_reg_1717_pp0_iter3_reg;
reg   [13:0] v261_2_addr_4_reg_1722;
reg   [13:0] v261_2_addr_4_reg_1722_pp0_iter2_reg;
reg   [13:0] v261_2_addr_4_reg_1722_pp0_iter3_reg;
reg   [13:0] v261_2_addr_5_reg_1727;
reg   [13:0] v261_2_addr_5_reg_1727_pp0_iter2_reg;
reg   [13:0] v261_2_addr_5_reg_1727_pp0_iter3_reg;
reg   [13:0] v261_2_addr_5_reg_1727_pp0_iter4_reg;
reg   [13:0] v261_2_addr_5_reg_1727_pp0_iter5_reg;
wire   [31:0] select_ln293_fu_950_p3;
reg   [31:0] select_ln293_reg_1732;
wire   [31:0] select_ln299_fu_957_p3;
reg   [31:0] select_ln299_reg_1737;
wire   [31:0] select_ln316_fu_968_p3;
reg   [31:0] select_ln316_reg_1742;
wire   [31:0] select_ln322_fu_979_p3;
reg   [31:0] select_ln322_reg_1747;
wire   [31:0] select_ln280_fu_986_p3;
reg   [31:0] select_ln280_reg_1752;
wire   [31:0] grp_fu_461_p2;
reg   [31:0] v203_reg_1757;
wire   [31:0] select_ln287_fu_993_p3;
reg   [31:0] select_ln287_reg_1762;
wire   [31:0] grp_fu_465_p2;
reg   [31:0] v208_reg_1767;
wire   [31:0] grp_fu_469_p2;
reg   [31:0] v213_reg_1772;
wire   [31:0] grp_fu_473_p2;
reg   [31:0] v217_reg_1777;
wire   [31:0] select_ln305_fu_1004_p3;
reg   [31:0] select_ln305_reg_1782;
wire   [31:0] select_ln311_fu_1015_p3;
reg   [31:0] select_ln311_reg_1787;
wire   [31:0] select_ln327_fu_1026_p3;
reg   [31:0] select_ln327_reg_1792;
wire   [31:0] select_ln333_fu_1037_p3;
reg   [31:0] select_ln333_reg_1797;
wire   [31:0] v200_fu_1047_p3;
wire   [31:0] v206_fu_1058_p3;
wire   [31:0] v211_fu_1069_p3;
wire   [31:0] v216_fu_1080_p3;
reg   [31:0] v222_reg_1822;
reg   [31:0] v226_reg_1827;
reg   [31:0] v231_reg_1832;
reg   [31:0] v235_reg_1837;
wire   [31:0] grp_fu_477_p2;
reg   [31:0] v240_reg_1842;
reg   [31:0] v240_reg_1842_pp0_iter3_reg;
reg   [31:0] v240_reg_1842_pp0_iter4_reg;
wire   [31:0] grp_fu_481_p2;
reg   [31:0] v244_reg_1848;
reg   [31:0] v244_reg_1848_pp0_iter3_reg;
reg   [31:0] v244_reg_1848_pp0_iter4_reg;
reg   [31:0] v249_reg_1854;
reg   [31:0] v249_reg_1854_pp0_iter3_reg;
reg   [31:0] v249_reg_1854_pp0_iter4_reg;
reg   [31:0] v253_reg_1860;
reg   [31:0] v253_reg_1860_pp0_iter3_reg;
reg   [31:0] v253_reg_1860_pp0_iter4_reg;
wire   [31:0] v220_fu_1092_p3;
wire   [31:0] v225_fu_1104_p3;
wire   [31:0] v229_fu_1116_p3;
wire   [31:0] v234_fu_1128_p3;
wire   [13:0] add_ln337_fu_1145_p2;
reg   [13:0] add_ln337_reg_1886;
wire   [13:0] add_ln343_fu_1150_p2;
reg   [13:0] add_ln343_reg_1891;
wire   [31:0] bitcast_ln298_fu_1167_p1;
reg   [31:0] bitcast_ln298_reg_1896;
wire   [31:0] bitcast_ln303_fu_1172_p1;
reg   [31:0] bitcast_ln303_reg_1901;
reg   [13:0] v261_1_addr_1_reg_1906;
reg   [13:0] v261_1_addr_1_reg_1906_pp0_iter5_reg;
reg   [13:0] v261_1_addr_1_reg_1906_pp0_iter6_reg;
reg   [13:0] v261_3_addr_3_reg_1911;
reg   [13:0] v261_3_addr_3_reg_1911_pp0_iter5_reg;
reg   [13:0] v261_3_addr_3_reg_1911_pp0_iter6_reg;
reg   [13:0] v261_1_addr_4_reg_1916;
reg   [13:0] v261_1_addr_4_reg_1916_pp0_iter5_reg;
reg   [13:0] v261_1_addr_4_reg_1916_pp0_iter6_reg;
reg   [13:0] v261_3_addr_5_reg_1921;
reg   [13:0] v261_3_addr_5_reg_1921_pp0_iter5_reg;
reg   [13:0] v261_3_addr_5_reg_1921_pp0_iter6_reg;
reg   [31:0] v261_2_load_4_reg_1926;
reg   [31:0] v261_2_load_5_reg_1931;
wire   [31:0] v238_fu_1240_p3;
wire   [31:0] v243_fu_1251_p3;
wire   [31:0] select_ln338_fu_1263_p3;
wire   [31:0] select_ln344_fu_1275_p3;
wire   [31:0] v247_fu_1287_p3;
reg   [31:0] v247_reg_1956;
wire   [31:0] v252_fu_1298_p3;
reg   [31:0] v252_reg_1961;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln283_2_fu_660_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln289_2_fu_692_p1;
wire   [63:0] p_cast9_fu_708_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] p_cast_fu_713_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] p_cast10_fu_718_p1;
wire   [63:0] zext_ln280_1_fu_859_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln315_1_fu_872_p1;
wire   [63:0] zext_ln287_fu_886_p1;
wire   [63:0] zext_ln321_fu_899_p1;
wire   [63:0] zext_ln326_1_fu_914_p1;
wire   [63:0] zext_ln304_1_fu_924_p1;
wire   [63:0] zext_ln332_fu_934_p1;
wire   [63:0] zext_ln310_fu_944_p1;
wire   [63:0] zext_ln337_1_fu_1177_p1;
wire   [63:0] zext_ln343_fu_1182_p1;
reg   [7:0] v198_fu_94;
wire   [7:0] add_ln279_fu_697_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v198_load;
reg   [7:0] v197_fu_98;
reg   [7:0] ap_sig_allocacmp_v197_load;
reg   [11:0] indvar_flatten_fu_102;
wire   [11:0] add_ln278_1_fu_563_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v263_ce1_local;
reg    v263_ce0_local;
reg    v262_0_ce0_local;
reg   [14:0] v262_0_address0_local;
reg    v262_0_ce1_local;
reg    v262_1_ce0_local;
reg   [14:0] v262_1_address0_local;
reg    v262_1_ce1_local;
reg    v261_0_ce1_local;
reg   [13:0] v261_0_address1_local;
reg    v261_0_ce0_local;
reg   [13:0] v261_0_address0_local;
reg    v261_0_we1_local;
reg   [31:0] v261_0_d1_local;
wire   [31:0] bitcast_ln286_fu_1155_p1;
reg    v261_0_we0_local;
reg   [31:0] v261_0_d0_local;
wire   [31:0] bitcast_ln292_fu_1161_p1;
wire   [31:0] bitcast_ln309_1_fu_1187_p1;
wire   [31:0] bitcast_ln314_1_fu_1192_p1;
wire   [31:0] bitcast_ln331_fu_1227_p1;
wire   [31:0] bitcast_ln336_fu_1232_p1;
reg    v261_1_ce1_local;
reg   [13:0] v261_1_address1_local;
reg    v261_1_ce0_local;
reg   [13:0] v261_1_address0_local;
reg    v261_1_we1_local;
reg   [31:0] v261_1_d1_local;
reg    v261_1_we0_local;
reg   [31:0] v261_1_d0_local;
wire   [31:0] bitcast_ln320_1_fu_1197_p1;
wire   [31:0] bitcast_ln325_1_fu_1202_p1;
wire   [31:0] bitcast_ln342_fu_1315_p1;
wire   [31:0] bitcast_ln347_fu_1320_p1;
reg    v261_3_ce1_local;
reg   [13:0] v261_3_address1_local;
reg    v261_3_ce0_local;
reg   [13:0] v261_3_address0_local;
reg    v261_3_we1_local;
reg   [31:0] v261_3_d1_local;
reg    v261_3_we0_local;
reg   [31:0] v261_3_d0_local;
wire   [31:0] bitcast_ln320_fu_1217_p1;
wire   [31:0] bitcast_ln325_fu_1222_p1;
wire   [31:0] bitcast_ln342_1_fu_1325_p1;
wire   [31:0] bitcast_ln347_1_fu_1330_p1;
reg    v261_2_ce1_local;
reg   [13:0] v261_2_address1_local;
reg    v261_2_ce0_local;
reg   [13:0] v261_2_address0_local;
reg    v261_2_we1_local;
reg   [31:0] v261_2_d1_local;
reg    v261_2_we0_local;
reg   [31:0] v261_2_d0_local;
wire   [31:0] bitcast_ln309_fu_1207_p1;
wire   [31:0] bitcast_ln314_fu_1212_p1;
wire   [31:0] bitcast_ln331_1_fu_1305_p1;
wire   [31:0] bitcast_ln336_1_fu_1310_p1;
reg   [31:0] grp_fu_437_p0;
reg   [31:0] grp_fu_437_p1;
reg   [31:0] grp_fu_441_p0;
reg   [31:0] grp_fu_441_p1;
reg   [31:0] grp_fu_445_p0;
reg   [31:0] grp_fu_445_p1;
reg   [31:0] grp_fu_449_p0;
reg   [31:0] grp_fu_449_p1;
reg   [31:0] grp_fu_453_p0;
reg   [31:0] grp_fu_453_p1;
reg   [31:0] grp_fu_457_p0;
reg   [31:0] grp_fu_457_p1;
reg   [31:0] grp_fu_461_p0;
reg   [31:0] grp_fu_461_p1;
reg   [31:0] grp_fu_465_p0;
reg   [31:0] grp_fu_465_p1;
reg   [31:0] grp_fu_469_p0;
reg   [31:0] grp_fu_469_p1;
reg   [31:0] grp_fu_473_p0;
reg   [31:0] grp_fu_473_p1;
wire   [7:0] add_ln278_fu_575_p2;
wire   [1:0] trunc_ln278_fu_595_p1;
wire   [15:0] zext_ln283_1_fu_651_p1;
wire   [15:0] add_ln283_fu_655_p2;
wire   [6:0] tmp_3_fu_665_p4;
wire   [15:0] zext_ln289_1_fu_683_p1;
wire   [15:0] add_ln289_fu_687_p2;
wire   [14:0] grp_fu_1335_p3;
wire   [14:0] grp_fu_1343_p4;
wire   [14:0] grp_fu_1352_p4;
wire   [5:0] mul_ln280_fu_726_p0;
wire   [8:0] mul_ln280_fu_726_p1;
wire   [7:0] empty_21_fu_744_p2;
wire   [5:0] tmp_1_fu_749_p4;
wire   [5:0] mul_ln315_fu_763_p0;
wire   [8:0] mul_ln315_fu_763_p1;
wire   [7:0] empty_17_fu_779_p2;
wire   [5:0] tmp_fu_784_p4;
wire   [5:0] mul_ln304_fu_798_p0;
wire   [8:0] mul_ln304_fu_798_p1;
wire   [5:0] empty_22_fu_816_p2;
wire   [5:0] mul_ln326_fu_825_p0;
wire   [8:0] mul_ln326_fu_825_p1;
wire   [7:0] empty_26_fu_836_p2;
wire   [13:0] add_ln280_fu_854_p2;
wire   [13:0] add_ln315_fu_867_p2;
wire   [13:0] add_ln287_fu_881_p2;
wire   [13:0] add_ln321_fu_894_p2;
wire   [13:0] add_ln326_fu_910_p2;
wire   [13:0] add_ln304_fu_920_p2;
wire   [13:0] add_ln332_fu_930_p2;
wire   [13:0] add_ln310_fu_940_p2;
wire   [31:0] bitcast_ln315_fu_964_p1;
wire   [31:0] bitcast_ln321_fu_975_p1;
wire   [31:0] bitcast_ln304_fu_1000_p1;
wire   [31:0] bitcast_ln310_fu_1011_p1;
wire   [31:0] bitcast_ln326_fu_1022_p1;
wire   [31:0] bitcast_ln332_fu_1033_p1;
wire   [31:0] v199_fu_1044_p1;
wire   [31:0] v205_fu_1055_p1;
wire   [31:0] v210_fu_1066_p1;
wire   [31:0] v215_fu_1077_p1;
wire   [31:0] v219_fu_1088_p1;
wire   [31:0] v224_fu_1100_p1;
wire   [31:0] v228_fu_1112_p1;
wire   [31:0] v233_fu_1124_p1;
wire   [5:0] mul_ln337_fu_1139_p0;
wire   [8:0] mul_ln337_fu_1139_p1;
wire   [13:0] mul_ln337_fu_1139_p2;
wire   [31:0] v237_fu_1237_p1;
wire   [31:0] v242_fu_1248_p1;
wire   [31:0] bitcast_ln337_fu_1259_p1;
wire   [31:0] bitcast_ln343_fu_1271_p1;
wire   [31:0] v246_fu_1283_p1;
wire   [31:0] v251_fu_1294_p1;
wire   [7:0] grp_fu_1335_p0;
wire   [6:0] grp_fu_1335_p1;
wire   [7:0] grp_fu_1335_p2;
wire   [0:0] grp_fu_1343_p1;
wire   [7:0] grp_fu_1343_p2;
wire   [7:0] grp_fu_1343_p3;
wire   [1:0] grp_fu_1352_p1;
wire   [7:0] grp_fu_1352_p2;
wire   [7:0] grp_fu_1352_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter6_stage0;
reg    ap_idle_pp0_0to5;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to7;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [14:0] grp_fu_1335_p10;
wire   [13:0] mul_ln280_fu_726_p00;
wire   [13:0] mul_ln304_fu_798_p00;
wire   [13:0] mul_ln315_fu_763_p00;
wire   [13:0] mul_ln326_fu_825_p00;
wire   [13:0] mul_ln337_fu_1139_p00;
reg    ap_condition_1465;
reg    ap_condition_1469;
reg    ap_condition_1476;
reg    ap_condition_1480;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v198_fu_94 = 8'd0;
#0 v197_fu_98 = 8'd0;
#0 indvar_flatten_fu_102 = 12'd0;
#0 ap_done_reg = 1'b0;
end
kernel_3mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_437_p0),.din1(grp_fu_437_p1),.ce(1'b1),.dout(grp_fu_437_p2));
kernel_3mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_441_p0),.din1(grp_fu_441_p1),.ce(1'b1),.dout(grp_fu_441_p2));
kernel_3mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_445_p0),.din1(grp_fu_445_p1),.ce(1'b1),.dout(grp_fu_445_p2));
kernel_3mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_449_p0),.din1(grp_fu_449_p1),.ce(1'b1),.dout(grp_fu_449_p2));
kernel_3mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_453_p0),.din1(grp_fu_453_p1),.ce(1'b1),.dout(grp_fu_453_p2));
kernel_3mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_457_p0),.din1(grp_fu_457_p1),.ce(1'b1),.dout(grp_fu_457_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_461_p0),.din1(grp_fu_461_p1),.ce(1'b1),.dout(grp_fu_461_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_465_p0),.din1(grp_fu_465_p1),.ce(1'b1),.dout(grp_fu_465_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_469_p0),.din1(grp_fu_469_p1),.ce(1'b1),.dout(grp_fu_469_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U10(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_473_p0),.din1(grp_fu_473_p1),.ce(1'b1),.dout(grp_fu_473_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(v239_fu_831_p1),.din1(v202_reg_1563),.ce(1'b1),.dout(grp_fu_477_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(v239_fu_831_p1),.din1(v207_reg_1570),.ce(1'b1),.dout(grp_fu_481_p2));
kernel_3mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U13(.din0(mul_ln280_fu_726_p0),.din1(mul_ln280_fu_726_p1),.dout(mul_ln280_fu_726_p2));
kernel_3mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U14(.din0(mul_ln315_fu_763_p0),.din1(mul_ln315_fu_763_p1),.dout(mul_ln315_fu_763_p2));
kernel_3mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U15(.din0(mul_ln304_fu_798_p0),.din1(mul_ln304_fu_798_p1),.dout(mul_ln304_fu_798_p2));
kernel_3mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U16(.din0(mul_ln326_fu_825_p0),.din1(mul_ln326_fu_825_p1),.dout(mul_ln326_fu_825_p2));
kernel_3mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U17(.din0(mul_ln337_fu_1139_p0),.din1(mul_ln337_fu_1139_p1),.dout(mul_ln337_fu_1139_p2));
kernel_3mm_mac_muladd_8ns_7ns_8ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_8ns_15_4_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1335_p0),.din1(grp_fu_1335_p1),.din2(grp_fu_1335_p2),.ce(1'b1),.dout(grp_fu_1335_p3));
kernel_3mm_ama_addmuladd_7ns_1ns_8ns_8ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 1 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 15 ))
ama_addmuladd_7ns_1ns_8ns_8ns_15_4_1_U19(.clk(ap_clk),.reset(ap_rst),.din0(lshr_ln278_1_reg_1446),.din1(grp_fu_1343_p1),.din2(grp_fu_1343_p2),.din3(grp_fu_1343_p3),.ce(1'b1),.dout(grp_fu_1343_p4));
kernel_3mm_ama_addmuladd_7ns_2ns_8ns_8ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 2 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 15 ))
ama_addmuladd_7ns_2ns_8ns_8ns_15_4_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(lshr_ln278_1_reg_1446),.din1(grp_fu_1352_p1),.din2(grp_fu_1352_p2),.din3(grp_fu_1352_p3),.ce(1'b1),.dout(grp_fu_1352_p4));
kernel_3mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter7 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter6_stage0) & (ap_idle_pp0_0to5 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter6_stage0) & (ap_idle_pp0_0to5 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter6_stage0) & (ap_idle_pp0_0to5 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter6_stage0) & (ap_idle_pp0_0to5 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter6_stage0) & (ap_idle_pp0_0to5 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter6_stage0) & (ap_idle_pp0_0to5 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln278_fu_557_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_102 <= add_ln278_1_fu_563_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_102 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_485 <= v262_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            reg_485 <= v262_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_490 <= v262_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            reg_490 <= v262_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln278_fu_557_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v197_fu_98 <= select_ln278_1_fu_587_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v197_fu_98 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v198_fu_94 <= 8'd0;
    end else if (((icmp_ln278_reg_1419 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v198_fu_94 <= add_ln279_fu_697_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln337_reg_1886 <= add_ln337_fu_1145_p2;
        add_ln343_reg_1891 <= add_ln343_fu_1150_p2;
        select_ln293_reg_1732 <= select_ln293_fu_950_p3;
        select_ln299_reg_1737 <= select_ln299_fu_957_p3;
        select_ln316_reg_1742 <= select_ln316_fu_968_p3;
        select_ln322_reg_1747 <= select_ln322_fu_979_p3;
        v261_0_addr_1_reg_1692 <= zext_ln326_1_fu_914_p1;
        v261_0_addr_1_reg_1692_pp0_iter2_reg <= v261_0_addr_1_reg_1692;
        v261_0_addr_1_reg_1692_pp0_iter3_reg <= v261_0_addr_1_reg_1692_pp0_iter2_reg;
        v261_0_addr_3_reg_1697 <= zext_ln304_1_fu_924_p1;
        v261_0_addr_3_reg_1697_pp0_iter2_reg <= v261_0_addr_3_reg_1697;
        v261_0_addr_3_reg_1697_pp0_iter3_reg <= v261_0_addr_3_reg_1697_pp0_iter2_reg;
        v261_0_addr_4_reg_1712 <= zext_ln332_fu_934_p1;
        v261_0_addr_4_reg_1712_pp0_iter2_reg <= v261_0_addr_4_reg_1712;
        v261_0_addr_4_reg_1712_pp0_iter3_reg <= v261_0_addr_4_reg_1712_pp0_iter2_reg;
        v261_0_addr_5_reg_1717 <= zext_ln310_fu_944_p1;
        v261_0_addr_5_reg_1717_pp0_iter2_reg <= v261_0_addr_5_reg_1717;
        v261_0_addr_5_reg_1717_pp0_iter3_reg <= v261_0_addr_5_reg_1717_pp0_iter2_reg;
        v261_2_addr_1_reg_1702 <= zext_ln304_1_fu_924_p1;
        v261_2_addr_1_reg_1702_pp0_iter2_reg <= v261_2_addr_1_reg_1702;
        v261_2_addr_1_reg_1702_pp0_iter3_reg <= v261_2_addr_1_reg_1702_pp0_iter2_reg;
        v261_2_addr_3_reg_1707 <= zext_ln326_1_fu_914_p1;
        v261_2_addr_3_reg_1707_pp0_iter2_reg <= v261_2_addr_3_reg_1707;
        v261_2_addr_3_reg_1707_pp0_iter3_reg <= v261_2_addr_3_reg_1707_pp0_iter2_reg;
        v261_2_addr_3_reg_1707_pp0_iter4_reg <= v261_2_addr_3_reg_1707_pp0_iter3_reg;
        v261_2_addr_3_reg_1707_pp0_iter5_reg <= v261_2_addr_3_reg_1707_pp0_iter4_reg;
        v261_2_addr_4_reg_1722 <= zext_ln310_fu_944_p1;
        v261_2_addr_4_reg_1722_pp0_iter2_reg <= v261_2_addr_4_reg_1722;
        v261_2_addr_4_reg_1722_pp0_iter3_reg <= v261_2_addr_4_reg_1722_pp0_iter2_reg;
        v261_2_addr_5_reg_1727 <= zext_ln332_fu_934_p1;
        v261_2_addr_5_reg_1727_pp0_iter2_reg <= v261_2_addr_5_reg_1727;
        v261_2_addr_5_reg_1727_pp0_iter3_reg <= v261_2_addr_5_reg_1727_pp0_iter2_reg;
        v261_2_addr_5_reg_1727_pp0_iter4_reg <= v261_2_addr_5_reg_1727_pp0_iter3_reg;
        v261_2_addr_5_reg_1727_pp0_iter5_reg <= v261_2_addr_5_reg_1727_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bitcast_ln298_reg_1896 <= bitcast_ln298_fu_1167_p1;
        bitcast_ln303_reg_1901 <= bitcast_ln303_fu_1172_p1;
        cond1_reg_1457 <= cond1_fu_623_p2;
        cond1_reg_1457_pp0_iter1_reg <= cond1_reg_1457;
        cond1_reg_1457_pp0_iter2_reg <= cond1_reg_1457_pp0_iter1_reg;
        cond1_reg_1457_pp0_iter3_reg <= cond1_reg_1457_pp0_iter2_reg;
        cond1_reg_1457_pp0_iter4_reg <= cond1_reg_1457_pp0_iter3_reg;
        cond1_reg_1457_pp0_iter5_reg <= cond1_reg_1457_pp0_iter4_reg;
        cond1_reg_1457_pp0_iter6_reg <= cond1_reg_1457_pp0_iter5_reg;
        icmp_ln278_reg_1419 <= icmp_ln278_fu_557_p2;
        icmp_ln278_reg_1419_pp0_iter1_reg <= icmp_ln278_reg_1419;
        icmp_ln278_reg_1419_pp0_iter2_reg <= icmp_ln278_reg_1419_pp0_iter1_reg;
        icmp_ln278_reg_1419_pp0_iter3_reg <= icmp_ln278_reg_1419_pp0_iter2_reg;
        icmp_ln278_reg_1419_pp0_iter4_reg <= icmp_ln278_reg_1419_pp0_iter3_reg;
        icmp_ln278_reg_1419_pp0_iter5_reg <= icmp_ln278_reg_1419_pp0_iter4_reg;
        icmp_ln279_reg_1428 <= icmp_ln279_fu_581_p2;
        icmp_ln280_reg_1461 <= icmp_ln280_fu_629_p2;
        icmp_ln280_reg_1461_pp0_iter1_reg <= icmp_ln280_reg_1461;
        lshr_ln278_1_reg_1446 <= {{select_ln278_1_fu_587_p3[7:1]}};
        lshr_ln_reg_1440 <= {{select_ln278_1_fu_587_p3[7:2]}};
        lshr_ln_reg_1440_pp0_iter1_reg <= lshr_ln_reg_1440;
        select_ln278_1_reg_1433 <= select_ln278_1_fu_587_p3;
        select_ln278_1_reg_1433_pp0_iter1_reg <= select_ln278_1_reg_1433;
        select_ln280_reg_1752 <= select_ln280_fu_986_p3;
        select_ln287_reg_1762 <= select_ln287_fu_993_p3;
        select_ln305_reg_1782 <= select_ln305_fu_1004_p3;
        select_ln311_reg_1787 <= select_ln311_fu_1015_p3;
        select_ln327_reg_1792 <= select_ln327_fu_1026_p3;
        select_ln333_reg_1797 <= select_ln333_fu_1037_p3;
        v198_load_reg_1423 <= ap_sig_allocacmp_v198_load;
        v247_reg_1956 <= v247_fu_1287_p3;
        v252_reg_1961 <= v252_fu_1298_p3;
        zext_ln277_cast_reg_1412[7 : 0] <= zext_ln277_cast_fu_535_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln280_reg_1529 <= mul_ln280_fu_726_p2;
        mul_ln315_reg_1547 <= mul_ln315_fu_763_p2;
        or_ln_reg_1479[7 : 1] <= or_ln_fu_675_p3[7 : 1];
        or_ln_reg_1479_pp0_iter1_reg[7 : 1] <= or_ln_reg_1479[7 : 1];
        select_ln278_reg_1469 <= select_ln278_fu_645_p3;
        select_ln278_reg_1469_pp0_iter1_reg <= select_ln278_reg_1469;
        v202_reg_1563 <= v202_fu_769_p1;
        v207_reg_1570 <= v207_fu_774_p1;
        v240_reg_1842 <= grp_fu_477_p2;
        v240_reg_1842_pp0_iter3_reg <= v240_reg_1842;
        v240_reg_1842_pp0_iter4_reg <= v240_reg_1842_pp0_iter3_reg;
        v244_reg_1848 <= grp_fu_481_p2;
        v244_reg_1848_pp0_iter3_reg <= v244_reg_1848;
        v244_reg_1848_pp0_iter4_reg <= v244_reg_1848_pp0_iter3_reg;
        v261_1_addr_1_reg_1906 <= zext_ln337_1_fu_1177_p1;
        v261_1_addr_1_reg_1906_pp0_iter5_reg <= v261_1_addr_1_reg_1906;
        v261_1_addr_1_reg_1906_pp0_iter6_reg <= v261_1_addr_1_reg_1906_pp0_iter5_reg;
        v261_1_addr_4_reg_1916 <= zext_ln343_fu_1182_p1;
        v261_1_addr_4_reg_1916_pp0_iter5_reg <= v261_1_addr_4_reg_1916;
        v261_1_addr_4_reg_1916_pp0_iter6_reg <= v261_1_addr_4_reg_1916_pp0_iter5_reg;
        v261_3_addr_3_reg_1911 <= zext_ln337_1_fu_1177_p1;
        v261_3_addr_3_reg_1911_pp0_iter5_reg <= v261_3_addr_3_reg_1911;
        v261_3_addr_3_reg_1911_pp0_iter6_reg <= v261_3_addr_3_reg_1911_pp0_iter5_reg;
        v261_3_addr_5_reg_1921 <= zext_ln343_fu_1182_p1;
        v261_3_addr_5_reg_1921_pp0_iter5_reg <= v261_3_addr_5_reg_1921;
        v261_3_addr_5_reg_1921_pp0_iter6_reg <= v261_3_addr_5_reg_1921_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln304_reg_1577 <= mul_ln304_fu_798_p2;
        mul_ln326_reg_1595 <= mul_ln326_fu_825_p2;
        tmp_2_reg_1607 <= {{empty_26_fu_836_p2[7:2]}};
        tmp_2_reg_1607_pp0_iter2_reg <= tmp_2_reg_1607;
        tmp_2_reg_1607_pp0_iter3_reg <= tmp_2_reg_1607_pp0_iter2_reg;
        v249_reg_1854_pp0_iter3_reg <= v249_reg_1854;
        v249_reg_1854_pp0_iter4_reg <= v249_reg_1854_pp0_iter3_reg;
        v253_reg_1860_pp0_iter3_reg <= v253_reg_1860;
        v253_reg_1860_pp0_iter4_reg <= v253_reg_1860_pp0_iter3_reg;
        v261_0_addr_2_reg_1656 <= zext_ln287_fu_886_p1;
        v261_0_addr_2_reg_1656_pp0_iter2_reg <= v261_0_addr_2_reg_1656;
        v261_0_addr_2_reg_1656_pp0_iter3_reg <= v261_0_addr_2_reg_1656_pp0_iter2_reg;
        v261_0_addr_reg_1619 <= zext_ln280_1_fu_859_p1;
        v261_0_addr_reg_1619_pp0_iter2_reg <= v261_0_addr_reg_1619;
        v261_0_addr_reg_1619_pp0_iter3_reg <= v261_0_addr_reg_1619_pp0_iter2_reg;
        v261_1_addr_2_reg_1661 <= zext_ln287_fu_886_p1;
        v261_1_addr_2_reg_1661_pp0_iter2_reg <= v261_1_addr_2_reg_1661;
        v261_1_addr_2_reg_1661_pp0_iter3_reg <= v261_1_addr_2_reg_1661_pp0_iter2_reg;
        v261_1_addr_3_reg_1629 <= zext_ln315_1_fu_872_p1;
        v261_1_addr_3_reg_1629_pp0_iter2_reg <= v261_1_addr_3_reg_1629;
        v261_1_addr_3_reg_1629_pp0_iter3_reg <= v261_1_addr_3_reg_1629_pp0_iter2_reg;
        v261_1_addr_5_reg_1666 <= zext_ln321_fu_899_p1;
        v261_1_addr_5_reg_1666_pp0_iter2_reg <= v261_1_addr_5_reg_1666;
        v261_1_addr_5_reg_1666_pp0_iter3_reg <= v261_1_addr_5_reg_1666_pp0_iter2_reg;
        v261_1_addr_reg_1624 <= zext_ln280_1_fu_859_p1;
        v261_1_addr_reg_1624_pp0_iter2_reg <= v261_1_addr_reg_1624;
        v261_1_addr_reg_1624_pp0_iter3_reg <= v261_1_addr_reg_1624_pp0_iter2_reg;
        v261_2_addr_2_reg_1671 <= zext_ln287_fu_886_p1;
        v261_2_addr_2_reg_1671_pp0_iter2_reg <= v261_2_addr_2_reg_1671;
        v261_2_addr_2_reg_1671_pp0_iter3_reg <= v261_2_addr_2_reg_1671_pp0_iter2_reg;
        v261_2_addr_reg_1634 <= zext_ln280_1_fu_859_p1;
        v261_2_addr_reg_1634_pp0_iter2_reg <= v261_2_addr_reg_1634;
        v261_2_addr_reg_1634_pp0_iter3_reg <= v261_2_addr_reg_1634_pp0_iter2_reg;
        v261_3_addr_1_reg_1644 <= zext_ln315_1_fu_872_p1;
        v261_3_addr_1_reg_1644_pp0_iter2_reg <= v261_3_addr_1_reg_1644;
        v261_3_addr_1_reg_1644_pp0_iter3_reg <= v261_3_addr_1_reg_1644_pp0_iter2_reg;
        v261_3_addr_2_reg_1676 <= zext_ln287_fu_886_p1;
        v261_3_addr_2_reg_1676_pp0_iter2_reg <= v261_3_addr_2_reg_1676;
        v261_3_addr_2_reg_1676_pp0_iter3_reg <= v261_3_addr_2_reg_1676_pp0_iter2_reg;
        v261_3_addr_4_reg_1681 <= zext_ln321_fu_899_p1;
        v261_3_addr_4_reg_1681_pp0_iter2_reg <= v261_3_addr_4_reg_1681;
        v261_3_addr_4_reg_1681_pp0_iter3_reg <= v261_3_addr_4_reg_1681_pp0_iter2_reg;
        v261_3_addr_reg_1639 <= zext_ln280_1_fu_859_p1;
        v261_3_addr_reg_1639_pp0_iter2_reg <= v261_3_addr_reg_1639;
        v261_3_addr_reg_1639_pp0_iter3_reg <= v261_3_addr_reg_1639_pp0_iter2_reg;
        zext_ln283_reg_1612[7 : 0] <= zext_ln283_fu_851_p1[7 : 0];
        zext_ln283_reg_1612_pp0_iter2_reg[7 : 0] <= zext_ln283_reg_1612[7 : 0];
        zext_ln283_reg_1612_pp0_iter3_reg[7 : 0] <= zext_ln283_reg_1612_pp0_iter2_reg[7 : 0];
        zext_ln289_reg_1649[7 : 1] <= zext_ln289_fu_878_p1[7 : 1];
        zext_ln289_reg_1649_pp0_iter2_reg[7 : 1] <= zext_ln289_reg_1649[7 : 1];
        zext_ln289_reg_1649_pp0_iter3_reg[7 : 1] <= zext_ln289_reg_1649_pp0_iter2_reg[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_495 <= v261_0_q1;
        reg_499 <= v261_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_503 <= v261_1_q1;
        reg_507 <= v261_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (cond1_reg_1457_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (cond1_reg_1457_pp0_iter6_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_511 <= grp_fu_437_p2;
        reg_515 <= grp_fu_441_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_519 <= grp_fu_445_p2;
        reg_523 <= grp_fu_449_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_527 <= grp_fu_453_p2;
        reg_531 <= grp_fu_457_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v203_reg_1757 <= grp_fu_461_p2;
        v208_reg_1767 <= grp_fu_465_p2;
        v213_reg_1772 <= grp_fu_469_p2;
        v217_reg_1777 <= grp_fu_473_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v222_reg_1822 <= grp_fu_461_p2;
        v226_reg_1827 <= grp_fu_465_p2;
        v231_reg_1832 <= grp_fu_469_p2;
        v235_reg_1837 <= grp_fu_473_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v249_reg_1854 <= grp_fu_461_p2;
        v253_reg_1860 <= grp_fu_465_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_2_load_4_reg_1926 <= v261_2_q1;
        v261_2_load_5_reg_1931 <= v261_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v262_0_load_2_reg_1553 <= v262_0_q0;
        v262_1_load_2_reg_1558 <= v262_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v263_load_1_reg_1494 <= v263_q0;
        v263_load_reg_1489 <= v263_q1;
    end
end
always @ (*) begin
    if (((icmp_ln278_reg_1419 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln278_reg_1419_pp0_iter5_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter6_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter6_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to5 = 1'b1;
    end else begin
        ap_idle_pp0_0to5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_437_p0 = select_ln338_fu_1263_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_437_p0 = v238_fu_1240_p3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cond1_reg_1457_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_437_p0 = select_ln305_reg_1782;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cond1_reg_1457_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_437_p0 = v220_fu_1092_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_437_p0 = v200_fu_1047_p3;
    end else begin
        grp_fu_437_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_437_p1 = v249_reg_1854_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_437_p1 = v240_reg_1842_pp0_iter4_reg;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cond1_reg_1457_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cond1_reg_1457_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_437_p1 = v222_reg_1822;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_437_p1 = v203_reg_1757;
    end else begin
        grp_fu_437_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_441_p0 = select_ln344_fu_1275_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_441_p0 = v243_fu_1251_p3;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cond1_reg_1457_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_441_p0 = select_ln311_reg_1787;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cond1_reg_1457_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_441_p0 = v225_fu_1104_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_441_p0 = v206_fu_1058_p3;
    end else begin
        grp_fu_441_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_441_p1 = v253_reg_1860_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_441_p1 = v244_reg_1848_pp0_iter4_reg;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cond1_reg_1457_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cond1_reg_1457_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_441_p1 = v226_reg_1827;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_441_p1 = v208_reg_1767;
    end else begin
        grp_fu_441_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_1469)) begin
            grp_fu_445_p0 = select_ln316_reg_1742;
        end else if ((1'b1 == ap_condition_1465)) begin
            grp_fu_445_p0 = v229_fu_1116_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_445_p0 = v211_fu_1069_p3;
        end else begin
            grp_fu_445_p0 = 'bx;
        end
    end else begin
        grp_fu_445_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cond1_reg_1457_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cond1_reg_1457_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_445_p1 = v231_reg_1832;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_445_p1 = v213_reg_1772;
    end else begin
        grp_fu_445_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if ((1'b1 == ap_condition_1469)) begin
            grp_fu_449_p0 = select_ln322_reg_1747;
        end else if ((1'b1 == ap_condition_1465)) begin
            grp_fu_449_p0 = v234_fu_1128_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_449_p0 = v216_fu_1080_p3;
        end else begin
            grp_fu_449_p0 = 'bx;
        end
    end else begin
        grp_fu_449_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cond1_reg_1457_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (cond1_reg_1457_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_449_p1 = v235_reg_1837;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_449_p1 = v217_reg_1777;
    end else begin
        grp_fu_449_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_453_p0 = v247_reg_1956;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_453_p0 = select_ln327_reg_1792;
    end else begin
        grp_fu_453_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_453_p1 = v249_reg_1854_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_453_p1 = v240_reg_1842;
    end else begin
        grp_fu_453_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_457_p0 = v252_reg_1961;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_457_p0 = select_ln333_reg_1797;
    end else begin
        grp_fu_457_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_457_p1 = v253_reg_1860_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_457_p1 = v244_reg_1848;
    end else begin
        grp_fu_457_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_461_p0 = v248_fu_905_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_461_p0 = v221_fu_804_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_461_p0 = v201_fu_732_p1;
        end else begin
            grp_fu_461_p0 = 'bx;
        end
    end else begin
        grp_fu_461_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_461_p1 = v202_reg_1563;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_461_p1 = v202_fu_769_p1;
    end else begin
        grp_fu_461_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_465_p0 = v248_fu_905_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_465_p0 = v221_fu_804_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_465_p0 = v201_fu_732_p1;
        end else begin
            grp_fu_465_p0 = 'bx;
        end
    end else begin
        grp_fu_465_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_465_p1 = v207_reg_1570;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_465_p1 = v207_fu_774_p1;
    end else begin
        grp_fu_465_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_469_p0 = v230_fu_810_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_469_p0 = v212_fu_738_p1;
        end else begin
            grp_fu_469_p0 = 'bx;
        end
    end else begin
        grp_fu_469_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_469_p1 = v202_reg_1563;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_469_p1 = v202_fu_769_p1;
        end else begin
            grp_fu_469_p1 = 'bx;
        end
    end else begin
        grp_fu_469_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_473_p0 = v230_fu_810_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_473_p0 = v212_fu_738_p1;
        end else begin
            grp_fu_473_p0 = 'bx;
        end
    end else begin
        grp_fu_473_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_473_p1 = v207_reg_1570;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_473_p1 = v207_fu_774_p1;
        end else begin
            grp_fu_473_p1 = 'bx;
        end
    end else begin
        grp_fu_473_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_0_address0_local = v261_0_addr_4_reg_1712_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_0_address0_local = v261_0_addr_5_reg_1717_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_0_address0_local = v261_0_addr_2_reg_1656_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (cond1_reg_1457_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_0_address0_local = zext_ln332_fu_934_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (cond1_reg_1457_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_0_address0_local = zext_ln310_fu_944_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_0_address0_local = zext_ln287_fu_886_p1;
    end else begin
        v261_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_0_address1_local = v261_0_addr_1_reg_1692_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_0_address1_local = v261_0_addr_3_reg_1697_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_0_address1_local = v261_0_addr_reg_1619_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (cond1_reg_1457_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_0_address1_local = zext_ln326_1_fu_914_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (cond1_reg_1457_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_0_address1_local = zext_ln304_1_fu_924_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_0_address1_local = zext_ln280_1_fu_859_p1;
    end else begin
        v261_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (cond1_reg_1457_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (cond1_reg_1457_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v261_0_ce0_local = 1'b1;
    end else begin
        v261_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (cond1_reg_1457_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (cond1_reg_1457_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v261_0_ce1_local = 1'b1;
    end else begin
        v261_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if ((1'b1 == ap_condition_1480)) begin
            v261_0_d0_local = bitcast_ln336_fu_1232_p1;
        end else if ((1'b1 == ap_condition_1476)) begin
            v261_0_d0_local = bitcast_ln314_1_fu_1192_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v261_0_d0_local = bitcast_ln292_fu_1161_p1;
        end else begin
            v261_0_d0_local = 'bx;
        end
    end else begin
        v261_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if ((1'b1 == ap_condition_1480)) begin
            v261_0_d1_local = bitcast_ln331_fu_1227_p1;
        end else if ((1'b1 == ap_condition_1476)) begin
            v261_0_d1_local = bitcast_ln309_1_fu_1187_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v261_0_d1_local = bitcast_ln286_fu_1155_p1;
        end else begin
            v261_0_d1_local = 'bx;
        end
    end else begin
        v261_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v261_0_we0_local = 1'b1;
    end else begin
        v261_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v261_0_we1_local = 1'b1;
    end else begin
        v261_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_1_address0_local = v261_1_addr_4_reg_1916_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_1_address0_local = zext_ln343_fu_1182_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_1_address0_local = v261_1_addr_5_reg_1666_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_1_address0_local = v261_1_addr_2_reg_1661_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (cond1_reg_1457_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_1_address0_local = zext_ln321_fu_899_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln280_reg_1461_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_1_address0_local = zext_ln287_fu_886_p1;
    end else begin
        v261_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_1_address1_local = v261_1_addr_1_reg_1906_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_1_address1_local = zext_ln337_1_fu_1177_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_1_address1_local = v261_1_addr_3_reg_1629_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_1_address1_local = v261_1_addr_reg_1624_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (cond1_reg_1457_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_1_address1_local = zext_ln315_1_fu_872_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln280_reg_1461_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_1_address1_local = zext_ln280_1_fu_859_p1;
    end else begin
        v261_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln280_reg_1461_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (cond1_reg_1457_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v261_1_ce0_local = 1'b1;
    end else begin
        v261_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln280_reg_1461_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (cond1_reg_1457_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v261_1_ce1_local = 1'b1;
    end else begin
        v261_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_1_d0_local = bitcast_ln347_fu_1320_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_1_d0_local = bitcast_ln325_1_fu_1202_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_1_d0_local = bitcast_ln303_fu_1172_p1;
    end else begin
        v261_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_1_d1_local = bitcast_ln342_fu_1315_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_1_d1_local = bitcast_ln320_1_fu_1197_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_1_d1_local = bitcast_ln298_fu_1167_p1;
    end else begin
        v261_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (cond1_reg_1457_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v261_1_we0_local = 1'b1;
    end else begin
        v261_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (cond1_reg_1457_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v261_1_we1_local = 1'b1;
    end else begin
        v261_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_2_address0_local = v261_2_addr_5_reg_1727_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_2_address0_local = v261_2_addr_4_reg_1722_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_2_address0_local = v261_2_addr_5_reg_1727_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_2_address0_local = v261_2_addr_2_reg_1671_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (cond1_reg_1457_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_2_address0_local = zext_ln310_fu_944_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln280_reg_1461_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_2_address0_local = v261_2_addr_2_reg_1671;
    end else begin
        v261_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_2_address1_local = v261_2_addr_3_reg_1707_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_2_address1_local = v261_2_addr_1_reg_1702_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_2_address1_local = v261_2_addr_3_reg_1707_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_2_address1_local = v261_2_addr_reg_1634_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (cond1_reg_1457_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_2_address1_local = zext_ln304_1_fu_924_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (icmp_ln280_reg_1461_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_2_address1_local = v261_2_addr_reg_1634;
    end else begin
        v261_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln280_reg_1461_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (cond1_reg_1457_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v261_2_ce0_local = 1'b1;
    end else begin
        v261_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln280_reg_1461_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage3_11001) & (cond1_reg_1457_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v261_2_ce1_local = 1'b1;
    end else begin
        v261_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_2_d0_local = bitcast_ln336_1_fu_1310_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_2_d0_local = bitcast_ln314_fu_1212_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_2_d0_local = bitcast_ln292_fu_1161_p1;
    end else begin
        v261_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_2_d1_local = bitcast_ln331_1_fu_1305_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_2_d1_local = bitcast_ln309_fu_1207_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_2_d1_local = bitcast_ln286_fu_1155_p1;
    end else begin
        v261_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (cond1_reg_1457_pp0_iter6_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v261_2_we0_local = 1'b1;
    end else begin
        v261_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (cond1_reg_1457_pp0_iter6_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter3_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v261_2_we1_local = 1'b1;
    end else begin
        v261_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_3_address0_local = v261_3_addr_5_reg_1921_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_3_address0_local = v261_3_addr_5_reg_1921;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_3_address0_local = v261_3_addr_4_reg_1681_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_3_address0_local = v261_3_addr_2_reg_1676_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (cond1_reg_1457_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_3_address0_local = zext_ln321_fu_899_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln280_reg_1461_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_3_address0_local = zext_ln287_fu_886_p1;
    end else begin
        v261_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_3_address1_local = v261_3_addr_3_reg_1911_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_3_address1_local = v261_3_addr_3_reg_1911;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_3_address1_local = v261_3_addr_1_reg_1644_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_3_address1_local = v261_3_addr_reg_1639_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (cond1_reg_1457_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_3_address1_local = zext_ln315_1_fu_872_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln280_reg_1461_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_3_address1_local = zext_ln280_1_fu_859_p1;
    end else begin
        v261_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln280_reg_1461_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (cond1_reg_1457_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v261_3_ce0_local = 1'b1;
    end else begin
        v261_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln280_reg_1461_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (cond1_reg_1457_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (cmp11_read_reg_1388 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v261_3_ce1_local = 1'b1;
    end else begin
        v261_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_3_d0_local = bitcast_ln347_1_fu_1330_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_3_d0_local = bitcast_ln325_fu_1222_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_3_d0_local = bitcast_ln303_reg_1901;
    end else begin
        v261_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_3_d1_local = bitcast_ln342_1_fu_1325_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_3_d1_local = bitcast_ln320_fu_1217_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_3_d1_local = bitcast_ln298_reg_1896;
    end else begin
        v261_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (cond1_reg_1457_pp0_iter6_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v261_3_we0_local = 1'b1;
    end else begin
        v261_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (cond1_reg_1457_pp0_iter6_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v261_3_we1_local = 1'b1;
    end else begin
        v261_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v262_0_address0_local = p_cast10_fu_718_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v262_0_address0_local = p_cast9_fu_708_p1;
    end else begin
        v262_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v262_0_ce0_local = 1'b1;
    end else begin
        v262_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v262_0_ce1_local = 1'b1;
    end else begin
        v262_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v262_1_address0_local = p_cast10_fu_718_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v262_1_address0_local = p_cast9_fu_708_p1;
    end else begin
        v262_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v262_1_ce0_local = 1'b1;
    end else begin
        v262_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v262_1_ce1_local = 1'b1;
    end else begin
        v262_1_ce1_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter6_stage0) & (ap_idle_pp0_0to5 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln278_1_fu_563_p2 = (ap_sig_allocacmp_indvar_flatten_load + 12'd1);
assign add_ln278_fu_575_p2 = (ap_sig_allocacmp_v197_load + 8'd6);
assign add_ln279_fu_697_p2 = (select_ln278_fu_645_p3 + 8'd2);
assign add_ln280_fu_854_p2 = (mul_ln280_reg_1529 + zext_ln283_fu_851_p1);
assign add_ln283_fu_655_p2 = (phi_mul + zext_ln283_1_fu_651_p1);
assign add_ln287_fu_881_p2 = (mul_ln280_reg_1529 + zext_ln289_fu_878_p1);
assign add_ln289_fu_687_p2 = (phi_mul + zext_ln289_1_fu_683_p1);
assign add_ln304_fu_920_p2 = (mul_ln304_reg_1577 + zext_ln283_reg_1612);
assign add_ln310_fu_940_p2 = (mul_ln304_reg_1577 + zext_ln289_reg_1649);
assign add_ln315_fu_867_p2 = (mul_ln315_reg_1547 + zext_ln283_fu_851_p1);
assign add_ln321_fu_894_p2 = (mul_ln315_reg_1547 + zext_ln289_fu_878_p1);
assign add_ln326_fu_910_p2 = (mul_ln326_reg_1595 + zext_ln283_reg_1612);
assign add_ln332_fu_930_p2 = (mul_ln326_reg_1595 + zext_ln289_reg_1649);
assign add_ln337_fu_1145_p2 = (mul_ln337_fu_1139_p2 + zext_ln283_reg_1612_pp0_iter3_reg);
assign add_ln343_fu_1150_p2 = (mul_ln337_fu_1139_p2 + zext_ln289_reg_1649_pp0_iter3_reg);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1465 = ((1'b0 == ap_block_pp0_stage2) & (cond1_reg_1457_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1469 = ((1'b0 == ap_block_pp0_stage2) & (cond1_reg_1457_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1476 = ((1'b0 == ap_block_pp0_stage1) & (cond1_reg_1457_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1480 = ((1'b0 == ap_block_pp0_stage1) & (cond1_reg_1457_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln286_fu_1155_p1 = reg_511;
assign bitcast_ln292_fu_1161_p1 = reg_515;
assign bitcast_ln298_fu_1167_p1 = reg_519;
assign bitcast_ln303_fu_1172_p1 = reg_523;
assign bitcast_ln304_fu_1000_p1 = v261_2_q1;
assign bitcast_ln309_1_fu_1187_p1 = reg_511;
assign bitcast_ln309_fu_1207_p1 = reg_511;
assign bitcast_ln310_fu_1011_p1 = v261_2_q0;
assign bitcast_ln314_1_fu_1192_p1 = reg_515;
assign bitcast_ln314_fu_1212_p1 = reg_515;
assign bitcast_ln315_fu_964_p1 = v261_3_q1;
assign bitcast_ln320_1_fu_1197_p1 = reg_519;
assign bitcast_ln320_fu_1217_p1 = reg_519;
assign bitcast_ln321_fu_975_p1 = v261_3_q0;
assign bitcast_ln325_1_fu_1202_p1 = reg_523;
assign bitcast_ln325_fu_1222_p1 = reg_523;
assign bitcast_ln326_fu_1022_p1 = v261_0_q1;
assign bitcast_ln331_1_fu_1305_p1 = reg_511;
assign bitcast_ln331_fu_1227_p1 = reg_527;
assign bitcast_ln332_fu_1033_p1 = v261_0_q0;
assign bitcast_ln336_1_fu_1310_p1 = reg_515;
assign bitcast_ln336_fu_1232_p1 = reg_531;
assign bitcast_ln337_fu_1259_p1 = reg_503;
assign bitcast_ln342_1_fu_1325_p1 = reg_527;
assign bitcast_ln342_fu_1315_p1 = reg_511;
assign bitcast_ln343_fu_1271_p1 = reg_507;
assign bitcast_ln347_1_fu_1330_p1 = reg_531;
assign bitcast_ln347_fu_1320_p1 = reg_515;
assign cmp11_read_reg_1388 = cmp11;
assign cond1_fu_623_p2 = ((trunc_ln278_fu_595_p1 == 2'd0) ? 1'b1 : 1'b0);
assign empty_17_fu_779_p2 = (select_ln278_1_reg_1433_pp0_iter1_reg + 8'd2);
assign empty_21_fu_744_p2 = (select_ln278_1_reg_1433_pp0_iter1_reg + 8'd3);
assign empty_22_fu_816_p2 = (lshr_ln_reg_1440_pp0_iter1_reg + 6'd1);
assign empty_26_fu_836_p2 = (select_ln278_1_reg_1433_pp0_iter1_reg + 8'd5);
assign grp_fu_1335_p0 = 15'd200;
assign grp_fu_1335_p1 = grp_fu_1335_p10;
assign grp_fu_1335_p10 = lshr_ln278_1_fu_609_p4;
assign grp_fu_1335_p2 = zext_ln277_cast_reg_1412;
assign grp_fu_1343_p1 = 7'd1;
assign grp_fu_1343_p2 = 15'd200;
assign grp_fu_1343_p3 = zext_ln277_cast_reg_1412;
assign grp_fu_1352_p1 = 7'd2;
assign grp_fu_1352_p2 = 15'd200;
assign grp_fu_1352_p3 = zext_ln277_cast_reg_1412;
assign icmp_ln278_fu_557_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 12'd2850) ? 1'b1 : 1'b0);
assign icmp_ln279_fu_581_p2 = ((ap_sig_allocacmp_v198_load < 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln280_fu_629_p2 = ((trunc_ln278_fu_595_p1 != 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln278_1_fu_609_p4 = {{select_ln278_1_fu_587_p3[7:1]}};
assign mul_ln280_fu_726_p0 = mul_ln280_fu_726_p00;
assign mul_ln280_fu_726_p00 = lshr_ln_reg_1440_pp0_iter1_reg;
assign mul_ln280_fu_726_p1 = 14'd190;
assign mul_ln304_fu_798_p0 = mul_ln304_fu_798_p00;
assign mul_ln304_fu_798_p00 = tmp_fu_784_p4;
assign mul_ln304_fu_798_p1 = 14'd190;
assign mul_ln315_fu_763_p0 = mul_ln315_fu_763_p00;
assign mul_ln315_fu_763_p00 = tmp_1_fu_749_p4;
assign mul_ln315_fu_763_p1 = 14'd190;
assign mul_ln326_fu_825_p0 = mul_ln326_fu_825_p00;
assign mul_ln326_fu_825_p00 = empty_22_fu_816_p2;
assign mul_ln326_fu_825_p1 = 14'd190;
assign mul_ln337_fu_1139_p0 = mul_ln337_fu_1139_p00;
assign mul_ln337_fu_1139_p00 = tmp_2_reg_1607_pp0_iter3_reg;
assign mul_ln337_fu_1139_p1 = 14'd190;
assign or_ln_fu_675_p3 = {{tmp_3_fu_665_p4}, {1'd1}};
assign p_cast10_fu_718_p1 = grp_fu_1352_p4;
assign p_cast9_fu_708_p1 = grp_fu_1335_p3;
assign p_cast_fu_713_p1 = grp_fu_1343_p4;
assign select_ln278_1_fu_587_p3 = ((icmp_ln279_fu_581_p2[0:0] == 1'b1) ? ap_sig_allocacmp_v197_load : add_ln278_fu_575_p2);
assign select_ln278_fu_645_p3 = ((icmp_ln279_reg_1428[0:0] == 1'b1) ? v198_load_reg_1423 : 8'd0);
assign select_ln280_fu_986_p3 = ((icmp_ln280_reg_1461_pp0_iter1_reg[0:0] == 1'b1) ? v261_2_q1 : reg_495);
assign select_ln287_fu_993_p3 = ((icmp_ln280_reg_1461_pp0_iter1_reg[0:0] == 1'b1) ? v261_2_q0 : reg_499);
assign select_ln293_fu_950_p3 = ((icmp_ln280_reg_1461_pp0_iter1_reg[0:0] == 1'b1) ? v261_3_q1 : v261_1_q1);
assign select_ln299_fu_957_p3 = ((icmp_ln280_reg_1461_pp0_iter1_reg[0:0] == 1'b1) ? v261_3_q0 : v261_1_q0);
assign select_ln305_fu_1004_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln304_fu_1000_p1);
assign select_ln311_fu_1015_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln310_fu_1011_p1);
assign select_ln316_fu_968_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln315_fu_964_p1);
assign select_ln322_fu_979_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln321_fu_975_p1);
assign select_ln327_fu_1026_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln326_fu_1022_p1);
assign select_ln333_fu_1037_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln332_fu_1033_p1);
assign select_ln338_fu_1263_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln337_fu_1259_p1);
assign select_ln344_fu_1275_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : bitcast_ln343_fu_1271_p1);
assign tmp_1_fu_749_p4 = {{empty_21_fu_744_p2[7:2]}};
assign tmp_3_fu_665_p4 = {{select_ln278_fu_645_p3[7:1]}};
assign tmp_fu_784_p4 = {{empty_17_fu_779_p2[7:2]}};
assign trunc_ln278_fu_595_p1 = select_ln278_1_fu_587_p3[1:0];
assign v199_fu_1044_p1 = select_ln280_reg_1752;
assign v200_fu_1047_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v199_fu_1044_p1);
assign v201_fu_732_p1 = reg_485;
assign v202_fu_769_p1 = v263_load_reg_1489;
assign v205_fu_1055_p1 = select_ln287_reg_1762;
assign v206_fu_1058_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v205_fu_1055_p1);
assign v207_fu_774_p1 = v263_load_1_reg_1494;
assign v210_fu_1066_p1 = select_ln293_reg_1732;
assign v211_fu_1069_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v210_fu_1066_p1);
assign v212_fu_738_p1 = reg_490;
assign v215_fu_1077_p1 = select_ln299_reg_1737;
assign v216_fu_1080_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v215_fu_1077_p1);
assign v219_fu_1088_p1 = reg_495;
assign v220_fu_1092_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v219_fu_1088_p1);
assign v221_fu_804_p1 = reg_485;
assign v224_fu_1100_p1 = reg_499;
assign v225_fu_1104_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v224_fu_1100_p1);
assign v228_fu_1112_p1 = reg_503;
assign v229_fu_1116_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v228_fu_1112_p1);
assign v230_fu_810_p1 = reg_490;
assign v233_fu_1124_p1 = reg_507;
assign v234_fu_1128_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v233_fu_1124_p1);
assign v237_fu_1237_p1 = v261_2_load_4_reg_1926;
assign v238_fu_1240_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v237_fu_1237_p1);
assign v239_fu_831_p1 = v262_0_load_2_reg_1553;
assign v242_fu_1248_p1 = v261_2_load_5_reg_1931;
assign v243_fu_1251_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v242_fu_1248_p1);
assign v246_fu_1283_p1 = v261_3_q1;
assign v247_fu_1287_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v246_fu_1283_p1);
assign v248_fu_905_p1 = v262_1_load_2_reg_1558;
assign v251_fu_1294_p1 = v261_3_q0;
assign v252_fu_1298_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v251_fu_1294_p1);
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
assign v261_2_address0 = v261_2_address0_local;
assign v261_2_address1 = v261_2_address1_local;
assign v261_2_ce0 = v261_2_ce0_local;
assign v261_2_ce1 = v261_2_ce1_local;
assign v261_2_d0 = v261_2_d0_local;
assign v261_2_d1 = v261_2_d1_local;
assign v261_2_we0 = v261_2_we0_local;
assign v261_2_we1 = v261_2_we1_local;
assign v261_3_address0 = v261_3_address0_local;
assign v261_3_address1 = v261_3_address1_local;
assign v261_3_ce0 = v261_3_ce0_local;
assign v261_3_ce1 = v261_3_ce1_local;
assign v261_3_d0 = v261_3_d0_local;
assign v261_3_d1 = v261_3_d1_local;
assign v261_3_we0 = v261_3_we0_local;
assign v261_3_we1 = v261_3_we1_local;
assign v262_0_address0 = v262_0_address0_local;
assign v262_0_address1 = p_cast_fu_713_p1;
assign v262_0_ce0 = v262_0_ce0_local;
assign v262_0_ce1 = v262_0_ce1_local;
assign v262_1_address0 = v262_1_address0_local;
assign v262_1_address1 = p_cast_fu_713_p1;
assign v262_1_ce0 = v262_1_ce0_local;
assign v262_1_ce1 = v262_1_ce1_local;
assign v263_address0 = zext_ln289_2_fu_692_p1;
assign v263_address1 = zext_ln283_2_fu_660_p1;
assign v263_ce0 = v263_ce0_local;
assign v263_ce1 = v263_ce1_local;
assign zext_ln277_cast_fu_535_p1 = zext_ln277;
assign zext_ln280_1_fu_859_p1 = add_ln280_fu_854_p2;
assign zext_ln283_1_fu_651_p1 = select_ln278_fu_645_p3;
assign zext_ln283_2_fu_660_p1 = add_ln283_fu_655_p2;
assign zext_ln283_fu_851_p1 = select_ln278_reg_1469_pp0_iter1_reg;
assign zext_ln287_fu_886_p1 = add_ln287_fu_881_p2;
assign zext_ln289_1_fu_683_p1 = or_ln_fu_675_p3;
assign zext_ln289_2_fu_692_p1 = add_ln289_fu_687_p2;
assign zext_ln289_fu_878_p1 = or_ln_reg_1479_pp0_iter1_reg;
assign zext_ln304_1_fu_924_p1 = add_ln304_fu_920_p2;
assign zext_ln310_fu_944_p1 = add_ln310_fu_940_p2;
assign zext_ln315_1_fu_872_p1 = add_ln315_fu_867_p2;
assign zext_ln321_fu_899_p1 = add_ln321_fu_894_p2;
assign zext_ln326_1_fu_914_p1 = add_ln326_fu_910_p2;
assign zext_ln332_fu_934_p1 = add_ln332_fu_930_p2;
assign zext_ln337_1_fu_1177_p1 = add_ln337_reg_1886;
assign zext_ln343_fu_1182_p1 = add_ln343_reg_1891;
always @ (posedge ap_clk) begin
    zext_ln277_cast_reg_1412[14:8] <= 7'b0000000;
    or_ln_reg_1479[0] <= 1'b1;
    or_ln_reg_1479_pp0_iter1_reg[0] <= 1'b1;
    zext_ln283_reg_1612[13:8] <= 6'b000000;
    zext_ln283_reg_1612_pp0_iter2_reg[13:8] <= 6'b000000;
    zext_ln283_reg_1612_pp0_iter3_reg[13:8] <= 6'b000000;
    zext_ln289_reg_1649[0] <= 1'b1;
    zext_ln289_reg_1649[13:8] <= 6'b000000;
    zext_ln289_reg_1649_pp0_iter2_reg[0] <= 1'b1;
    zext_ln289_reg_1649_pp0_iter2_reg[13:8] <= 6'b000000;
    zext_ln289_reg_1649_pp0_iter3_reg[0] <= 1'b1;
    zext_ln289_reg_1649_pp0_iter3_reg[13:8] <= 6'b000000;
end
endmodule 
