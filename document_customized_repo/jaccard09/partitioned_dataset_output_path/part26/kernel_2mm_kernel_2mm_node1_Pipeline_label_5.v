
module kernel_2mm_kernel_2mm_node1_Pipeline_label_5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v227_4_address0,v227_4_ce0,v227_4_q0,v227_4_address1,v227_4_ce1,v227_4_q1,v227_5_address0,v227_5_ce0,v227_5_q0,v227_5_address1,v227_5_ce1,v227_5_q1,v227_6_address0,v227_6_ce0,v227_6_q0,v227_6_address1,v227_6_ce1,v227_6_q1,v227_7_address0,v227_7_ce0,v227_7_q0,v227_7_address1,v227_7_ce1,v227_7_q1,mul_ln171,mul_ln225,mul_ln277,cmp11,empty,v120,v133,v144,v155,v166,v177,v188,v199,v210,grp_fu_8304_p_din0,grp_fu_8304_p_din1,grp_fu_8304_p_opcode,grp_fu_8304_p_dout0,grp_fu_8304_p_ce,grp_fu_8308_p_din0,grp_fu_8308_p_din1,grp_fu_8308_p_opcode,grp_fu_8308_p_dout0,grp_fu_8308_p_ce,grp_fu_8312_p_din0,grp_fu_8312_p_din1,grp_fu_8312_p_opcode,grp_fu_8312_p_dout0,grp_fu_8312_p_ce,grp_fu_8316_p_din0,grp_fu_8316_p_din1,grp_fu_8316_p_dout0,grp_fu_8316_p_ce,grp_fu_8320_p_din0,grp_fu_8320_p_din1,grp_fu_8320_p_dout0,grp_fu_8320_p_ce,grp_fu_8324_p_din0,grp_fu_8324_p_din1,grp_fu_8324_p_dout0,grp_fu_8324_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v225_3_address0;
output   v225_3_ce0;
output   v225_3_we0;
output  [31:0] v225_3_d0;
input  [31:0] v225_3_q0;
output  [13:0] v225_3_address1;
output   v225_3_ce1;
output   v225_3_we1;
output  [31:0] v225_3_d1;
input  [31:0] v225_3_q1;
output  [13:0] v225_2_address0;
output   v225_2_ce0;
output   v225_2_we0;
output  [31:0] v225_2_d0;
input  [31:0] v225_2_q0;
output  [13:0] v225_2_address1;
output   v225_2_ce1;
output   v225_2_we1;
output  [31:0] v225_2_d1;
input  [31:0] v225_2_q1;
output  [13:0] v225_1_address0;
output   v225_1_ce0;
output   v225_1_we0;
output  [31:0] v225_1_d0;
input  [31:0] v225_1_q0;
output  [13:0] v225_1_address1;
output   v225_1_ce1;
output   v225_1_we1;
output  [31:0] v225_1_d1;
input  [31:0] v225_1_q1;
output  [13:0] v225_0_address0;
output   v225_0_ce0;
output   v225_0_we0;
output  [31:0] v225_0_d0;
input  [31:0] v225_0_q0;
output  [13:0] v225_0_address1;
output   v225_0_ce1;
output   v225_0_we1;
output  [31:0] v225_0_d1;
input  [31:0] v225_0_q1;
input  [12:0] mul_ln175;
output  [12:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [12:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [12:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [12:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [12:0] v227_2_address0;
output   v227_2_ce0;
input  [31:0] v227_2_q0;
output  [12:0] v227_2_address1;
output   v227_2_ce1;
input  [31:0] v227_2_q1;
output  [12:0] v227_3_address0;
output   v227_3_ce0;
input  [31:0] v227_3_q0;
output  [12:0] v227_3_address1;
output   v227_3_ce1;
input  [31:0] v227_3_q1;
output  [12:0] v227_4_address0;
output   v227_4_ce0;
input  [31:0] v227_4_q0;
output  [12:0] v227_4_address1;
output   v227_4_ce1;
input  [31:0] v227_4_q1;
output  [12:0] v227_5_address0;
output   v227_5_ce0;
input  [31:0] v227_5_q0;
output  [12:0] v227_5_address1;
output   v227_5_ce1;
input  [31:0] v227_5_q1;
output  [12:0] v227_6_address0;
output   v227_6_ce0;
input  [31:0] v227_6_q0;
output  [12:0] v227_6_address1;
output   v227_6_ce1;
input  [31:0] v227_6_q1;
output  [12:0] v227_7_address0;
output   v227_7_ce0;
input  [31:0] v227_7_q0;
output  [12:0] v227_7_address1;
output   v227_7_ce1;
input  [31:0] v227_7_q1;
input  [13:0] mul_ln171;
input  [13:0] mul_ln225;
input  [13:0] mul_ln277;
input  [0:0] cmp11;
input  [2:0] empty;
input  [31:0] v120;
input  [31:0] v133;
input  [31:0] v144;
input  [31:0] v155;
input  [31:0] v166;
input  [31:0] v177;
input  [31:0] v188;
input  [31:0] v199;
input  [31:0] v210;
output  [31:0] grp_fu_8304_p_din0;
output  [31:0] grp_fu_8304_p_din1;
output  [1:0] grp_fu_8304_p_opcode;
input  [31:0] grp_fu_8304_p_dout0;
output   grp_fu_8304_p_ce;
output  [31:0] grp_fu_8308_p_din0;
output  [31:0] grp_fu_8308_p_din1;
output  [1:0] grp_fu_8308_p_opcode;
input  [31:0] grp_fu_8308_p_dout0;
output   grp_fu_8308_p_ce;
output  [31:0] grp_fu_8312_p_din0;
output  [31:0] grp_fu_8312_p_din1;
output  [1:0] grp_fu_8312_p_opcode;
input  [31:0] grp_fu_8312_p_dout0;
output   grp_fu_8312_p_ce;
output  [31:0] grp_fu_8316_p_din0;
output  [31:0] grp_fu_8316_p_din1;
input  [31:0] grp_fu_8316_p_dout0;
output   grp_fu_8316_p_ce;
output  [31:0] grp_fu_8320_p_din0;
output  [31:0] grp_fu_8320_p_din1;
input  [31:0] grp_fu_8320_p_dout0;
output   grp_fu_8320_p_ce;
output  [31:0] grp_fu_8324_p_din0;
output  [31:0] grp_fu_8324_p_din1;
input  [31:0] grp_fu_8324_p_dout0;
output   grp_fu_8324_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln170_reg_1336;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_617;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_621;
reg   [31:0] reg_625;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_629;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_633;
reg   [31:0] reg_637;
reg   [7:0] v116_3_reg_1331;
wire   [0:0] icmp_ln170_fu_649_p2;
wire   [13:0] zext_ln175_fu_655_p1;
reg   [13:0] zext_ln175_reg_1340;
reg   [13:0] v225_0_addr_1_reg_1386;
reg   [13:0] v225_0_addr_1_reg_1386_pp0_iter1_reg;
reg   [13:0] v225_0_addr_1_reg_1386_pp0_iter2_reg;
reg   [13:0] v225_1_addr_1_reg_1391;
reg   [13:0] v225_1_addr_1_reg_1391_pp0_iter1_reg;
reg   [13:0] v225_1_addr_1_reg_1391_pp0_iter2_reg;
reg   [13:0] v225_2_addr_1_reg_1396;
reg   [13:0] v225_2_addr_1_reg_1396_pp0_iter1_reg;
reg   [13:0] v225_2_addr_1_reg_1396_pp0_iter2_reg;
reg   [13:0] v225_3_addr_1_reg_1401;
reg   [13:0] v225_3_addr_1_reg_1401_pp0_iter1_reg;
reg   [13:0] v225_3_addr_1_reg_1401_pp0_iter2_reg;
wire   [13:0] zext_ln182_fu_713_p1;
reg   [13:0] zext_ln182_reg_1407;
reg   [13:0] zext_ln182_reg_1407_pp0_iter1_reg;
reg   [13:0] v225_0_addr_2_reg_1453;
reg   [13:0] v225_0_addr_2_reg_1453_pp0_iter1_reg;
reg   [13:0] v225_0_addr_2_reg_1453_pp0_iter2_reg;
reg   [13:0] v225_1_addr_2_reg_1458;
reg   [13:0] v225_1_addr_2_reg_1458_pp0_iter1_reg;
reg   [13:0] v225_1_addr_2_reg_1458_pp0_iter2_reg;
reg   [13:0] v225_2_addr_2_reg_1463;
reg   [13:0] v225_2_addr_2_reg_1463_pp0_iter1_reg;
reg   [13:0] v225_2_addr_2_reg_1463_pp0_iter2_reg;
reg   [13:0] v225_3_addr_2_reg_1468;
reg   [13:0] v225_3_addr_2_reg_1468_pp0_iter1_reg;
reg   [13:0] v225_3_addr_2_reg_1468_pp0_iter2_reg;
reg   [13:0] v225_0_addr_3_reg_1474;
reg   [13:0] v225_0_addr_3_reg_1474_pp0_iter1_reg;
reg   [13:0] v225_0_addr_3_reg_1474_pp0_iter2_reg;
wire   [13:0] add_ln277_fu_765_p2;
reg   [13:0] add_ln277_reg_1479;
reg   [13:0] add_ln277_reg_1479_pp0_iter1_reg;
reg   [13:0] v225_1_addr_3_reg_1484;
reg   [13:0] v225_1_addr_3_reg_1484_pp0_iter1_reg;
reg   [13:0] v225_1_addr_3_reg_1484_pp0_iter2_reg;
reg   [13:0] v225_2_addr_3_reg_1489;
reg   [13:0] v225_2_addr_3_reg_1489_pp0_iter1_reg;
reg   [13:0] v225_2_addr_3_reg_1489_pp0_iter2_reg;
reg   [13:0] v225_3_addr_3_reg_1494;
reg   [13:0] v225_3_addr_3_reg_1494_pp0_iter1_reg;
reg   [13:0] v225_3_addr_3_reg_1494_pp0_iter2_reg;
reg   [31:0] v225_0_load_reg_1499;
wire   [31:0] v121_fu_801_p19;
reg   [31:0] v121_reg_1504;
wire   [31:0] v125_fu_844_p3;
reg   [31:0] v125_reg_1511;
wire   [31:0] v127_fu_883_p19;
reg   [31:0] v127_reg_1516;
wire   [31:0] v131_fu_926_p3;
reg   [31:0] v131_reg_1523;
wire   [31:0] v137_fu_937_p3;
reg   [31:0] v137_reg_1528;
wire   [31:0] v142_fu_948_p3;
reg   [31:0] v142_reg_1533;
wire   [31:0] v148_fu_959_p3;
reg   [31:0] v148_reg_1538;
wire   [31:0] v164_fu_970_p3;
reg   [31:0] v164_reg_1543;
reg   [31:0] v122_reg_1548;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v128_reg_1553;
reg   [31:0] v134_reg_1558;
wire   [31:0] v118_fu_990_p3;
reg   [31:0] v139_reg_1568;
reg   [31:0] v145_reg_1573;
reg   [31:0] v150_reg_1578;
reg   [13:0] v225_0_addr_4_reg_1583;
reg   [13:0] v225_0_addr_4_reg_1583_pp0_iter2_reg;
wire   [13:0] add_ln284_fu_1010_p2;
reg   [13:0] add_ln284_reg_1588;
reg   [13:0] v225_1_addr_4_reg_1593;
reg   [13:0] v225_1_addr_4_reg_1593_pp0_iter2_reg;
reg   [13:0] v225_2_addr_4_reg_1598;
reg   [13:0] v225_2_addr_4_reg_1598_pp0_iter2_reg;
reg   [13:0] v225_3_addr_4_reg_1603;
reg   [13:0] v225_3_addr_4_reg_1603_pp0_iter2_reg;
reg   [13:0] v225_3_addr_4_reg_1603_pp0_iter3_reg;
wire   [31:0] v153_fu_1018_p3;
reg   [31:0] v153_reg_1608;
reg   [31:0] v156_reg_1613;
wire   [31:0] v159_fu_1029_p3;
reg   [31:0] v159_reg_1618;
reg   [31:0] v161_reg_1623;
reg   [31:0] v167_reg_1628;
reg   [13:0] v225_0_addr_5_reg_1633;
reg   [13:0] v225_0_addr_5_reg_1633_pp0_iter2_reg;
reg   [13:0] v225_0_addr_5_reg_1633_pp0_iter3_reg;
reg   [13:0] v225_0_addr_6_reg_1638;
reg   [13:0] v225_0_addr_6_reg_1638_pp0_iter2_reg;
reg   [13:0] v225_0_addr_6_reg_1638_pp0_iter3_reg;
wire   [31:0] v170_fu_1048_p3;
reg   [31:0] v170_reg_1643;
reg   [31:0] v172_reg_1648;
wire   [31:0] v175_fu_1059_p3;
reg   [31:0] v175_reg_1653;
reg   [31:0] v178_reg_1658;
wire   [31:0] v181_fu_1070_p3;
reg   [31:0] v181_reg_1663;
reg   [31:0] v183_reg_1668;
wire   [31:0] v186_fu_1081_p3;
reg   [31:0] v186_reg_1673;
wire   [31:0] v192_fu_1092_p3;
reg   [31:0] v192_reg_1678;
wire   [31:0] v197_fu_1103_p3;
reg   [31:0] v197_reg_1683;
wire   [31:0] v203_fu_1114_p3;
reg   [31:0] v203_reg_1688;
reg   [31:0] v189_reg_1693;
reg   [31:0] v194_reg_1698;
reg   [31:0] v200_reg_1703;
wire   [31:0] v208_fu_1125_p3;
reg   [31:0] v208_reg_1708;
wire   [31:0] v214_fu_1136_p3;
reg   [31:0] v214_reg_1713;
reg   [31:0] v205_reg_1718;
reg   [31:0] v211_reg_1723;
reg   [31:0] v216_reg_1728;
reg   [31:0] v206_reg_1733;
reg   [31:0] v212_reg_1738;
reg   [31:0] v217_reg_1743;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_8_fu_669_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln171_fu_687_p1;
wire   [63:0] zext_ln182_8_fu_727_p1;
wire   [63:0] zext_ln179_fu_745_p1;
wire   [63:0] zext_ln225_fu_757_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln232_fu_1002_p1;
wire   [63:0] zext_ln277_fu_1036_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln284_fu_1040_p1;
reg   [7:0] v116_fu_124;
wire   [7:0] add_ln170_fu_977_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_3;
reg    v225_0_ce1_local;
reg   [13:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [13:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln178_fu_1163_p1;
wire    ap_block_pp0_stage3;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln185_fu_1168_p1;
wire   [31:0] bitcast_ln231_fu_1183_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln237_fu_1188_p1;
wire   [31:0] bitcast_ln283_fu_1222_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln289_fu_1226_p1;
reg    v227_0_ce1_local;
reg    v227_0_ce0_local;
reg    v227_1_ce1_local;
reg    v227_1_ce0_local;
reg    v227_2_ce1_local;
reg    v227_2_ce0_local;
reg    v227_3_ce1_local;
reg    v227_3_ce0_local;
reg    v227_4_ce1_local;
reg    v227_4_ce0_local;
reg    v227_5_ce1_local;
reg    v227_5_ce0_local;
reg    v227_6_ce1_local;
reg    v227_6_ce0_local;
reg    v227_7_ce1_local;
reg    v227_7_ce0_local;
reg    v225_1_ce1_local;
reg   [13:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [13:0] v225_1_address0_local;
reg    v225_1_we1_local;
reg   [31:0] v225_1_d1_local;
wire   [31:0] bitcast_ln192_fu_1143_p1;
reg    v225_1_we0_local;
reg   [31:0] v225_1_d0_local;
wire   [31:0] bitcast_ln198_fu_1148_p1;
wire   [31:0] bitcast_ln244_fu_1193_p1;
wire   [31:0] bitcast_ln250_fu_1198_p1;
reg    v225_2_ce1_local;
reg   [13:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [13:0] v225_2_address0_local;
reg    v225_2_we1_local;
reg   [31:0] v225_2_d1_local;
wire   [31:0] bitcast_ln205_fu_1153_p1;
reg    v225_2_we0_local;
reg   [31:0] v225_2_d0_local;
wire   [31:0] bitcast_ln211_fu_1158_p1;
wire   [31:0] bitcast_ln257_fu_1203_p1;
wire   [31:0] bitcast_ln263_fu_1208_p1;
reg    v225_3_ce1_local;
reg   [13:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [13:0] v225_3_address0_local;
reg    v225_3_we0_local;
reg   [31:0] v225_3_d0_local;
wire   [31:0] bitcast_ln218_fu_1173_p1;
reg    v225_3_we1_local;
reg   [31:0] v225_3_d1_local;
wire   [31:0] bitcast_ln224_fu_1178_p1;
wire   [31:0] bitcast_ln270_fu_1213_p1;
wire   [31:0] bitcast_ln276_fu_1218_p1;
reg   [31:0] grp_fu_593_p0;
reg   [31:0] grp_fu_593_p1;
reg   [31:0] grp_fu_597_p0;
reg   [31:0] grp_fu_597_p1;
reg   [31:0] grp_fu_601_p0;
reg   [31:0] grp_fu_601_p1;
reg   [31:0] grp_fu_605_p0;
reg   [31:0] grp_fu_605_p1;
reg   [31:0] grp_fu_609_p0;
reg   [31:0] grp_fu_609_p1;
reg   [31:0] grp_fu_613_p0;
reg   [31:0] grp_fu_613_p1;
wire   [12:0] zext_ln175_7_fu_659_p1;
wire   [12:0] add_ln175_fu_663_p2;
wire   [13:0] add_ln171_fu_681_p2;
wire   [6:0] tmp_7_fu_695_p4;
wire   [7:0] or_ln_fu_705_p3;
wire   [12:0] zext_ln182_7_fu_717_p1;
wire   [12:0] add_ln182_fu_721_p2;
wire   [13:0] add_ln179_fu_739_p2;
wire   [13:0] add_ln225_fu_753_p2;
wire   [31:0] v121_fu_801_p2;
wire   [31:0] v121_fu_801_p4;
wire   [31:0] v121_fu_801_p6;
wire   [31:0] v121_fu_801_p8;
wire   [31:0] v121_fu_801_p10;
wire   [31:0] v121_fu_801_p12;
wire   [31:0] v121_fu_801_p14;
wire   [31:0] v121_fu_801_p16;
wire   [31:0] v121_fu_801_p17;
wire   [31:0] v124_fu_840_p1;
wire   [31:0] v127_fu_883_p2;
wire   [31:0] v127_fu_883_p4;
wire   [31:0] v127_fu_883_p6;
wire   [31:0] v127_fu_883_p8;
wire   [31:0] v127_fu_883_p10;
wire   [31:0] v127_fu_883_p12;
wire   [31:0] v127_fu_883_p14;
wire   [31:0] v127_fu_883_p16;
wire   [31:0] v127_fu_883_p17;
wire   [31:0] v130_fu_922_p1;
wire   [31:0] v136_fu_933_p1;
wire   [31:0] v141_fu_944_p1;
wire   [31:0] v147_fu_955_p1;
wire   [31:0] v163_fu_966_p1;
wire   [31:0] v117_fu_987_p1;
wire   [13:0] add_ln232_fu_998_p2;
wire   [31:0] v152_fu_1014_p1;
wire   [31:0] v158_fu_1025_p1;
wire   [31:0] v169_fu_1044_p1;
wire   [31:0] v174_fu_1055_p1;
wire   [31:0] v180_fu_1066_p1;
wire   [31:0] v185_fu_1077_p1;
wire   [31:0] v191_fu_1088_p1;
wire   [31:0] v196_fu_1099_p1;
wire   [31:0] v202_fu_1110_p1;
wire   [31:0] v207_fu_1121_p1;
wire   [31:0] v213_fu_1132_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire   [2:0] v121_fu_801_p1;
wire   [2:0] v121_fu_801_p3;
wire   [2:0] v121_fu_801_p5;
wire   [2:0] v121_fu_801_p7;
wire  signed [2:0] v121_fu_801_p9;
wire  signed [2:0] v121_fu_801_p11;
wire  signed [2:0] v121_fu_801_p13;
wire  signed [2:0] v121_fu_801_p15;
wire   [2:0] v127_fu_883_p1;
wire   [2:0] v127_fu_883_p3;
wire   [2:0] v127_fu_883_p5;
wire   [2:0] v127_fu_883_p7;
wire  signed [2:0] v127_fu_883_p9;
wire  signed [2:0] v127_fu_883_p11;
wire  signed [2:0] v127_fu_883_p13;
wire  signed [2:0] v127_fu_883_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v116_fu_124 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U7(.din0(v121_fu_801_p2),.din1(v121_fu_801_p4),.din2(v121_fu_801_p6),.din3(v121_fu_801_p8),.din4(v121_fu_801_p10),.din5(v121_fu_801_p12),.din6(v121_fu_801_p14),.din7(v121_fu_801_p16),.def(v121_fu_801_p17),.sel(empty),.dout(v121_fu_801_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U8(.din0(v127_fu_883_p2),.din1(v127_fu_883_p4),.din2(v127_fu_883_p6),.din3(v127_fu_883_p8),.din4(v127_fu_883_p10),.din5(v127_fu_883_p12),.din6(v127_fu_883_p14),.din7(v127_fu_883_p16),.def(v127_fu_883_p17),.sel(empty),.dout(v127_fu_883_p19));
kernel_2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_fu_124 <= 8'd0;
    end else if (((icmp_ln170_reg_1336 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_fu_124 <= add_ln170_fu_977_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln277_reg_1479 <= add_ln277_fu_765_p2;
        add_ln277_reg_1479_pp0_iter1_reg <= add_ln277_reg_1479;
        add_ln284_reg_1588 <= add_ln284_fu_1010_p2;
        v121_reg_1504 <= v121_fu_801_p19;
        v125_reg_1511 <= v125_fu_844_p3;
        v127_reg_1516 <= v127_fu_883_p19;
        v131_reg_1523 <= v131_fu_926_p3;
        v137_reg_1528 <= v137_fu_937_p3;
        v142_reg_1533 <= v142_fu_948_p3;
        v148_reg_1538 <= v148_fu_959_p3;
        v153_reg_1608 <= v153_fu_1018_p3;
        v159_reg_1618 <= v159_fu_1029_p3;
        v225_0_addr_3_reg_1474 <= zext_ln225_fu_757_p1;
        v225_0_addr_3_reg_1474_pp0_iter1_reg <= v225_0_addr_3_reg_1474;
        v225_0_addr_3_reg_1474_pp0_iter2_reg <= v225_0_addr_3_reg_1474_pp0_iter1_reg;
        v225_0_addr_4_reg_1583 <= zext_ln232_fu_1002_p1;
        v225_0_addr_4_reg_1583_pp0_iter2_reg <= v225_0_addr_4_reg_1583;
        v225_1_addr_3_reg_1484 <= zext_ln225_fu_757_p1;
        v225_1_addr_3_reg_1484_pp0_iter1_reg <= v225_1_addr_3_reg_1484;
        v225_1_addr_3_reg_1484_pp0_iter2_reg <= v225_1_addr_3_reg_1484_pp0_iter1_reg;
        v225_1_addr_4_reg_1593 <= zext_ln232_fu_1002_p1;
        v225_1_addr_4_reg_1593_pp0_iter2_reg <= v225_1_addr_4_reg_1593;
        v225_2_addr_3_reg_1489 <= zext_ln225_fu_757_p1;
        v225_2_addr_3_reg_1489_pp0_iter1_reg <= v225_2_addr_3_reg_1489;
        v225_2_addr_3_reg_1489_pp0_iter2_reg <= v225_2_addr_3_reg_1489_pp0_iter1_reg;
        v225_2_addr_4_reg_1598 <= zext_ln232_fu_1002_p1;
        v225_2_addr_4_reg_1598_pp0_iter2_reg <= v225_2_addr_4_reg_1598;
        v225_3_addr_3_reg_1494 <= zext_ln225_fu_757_p1;
        v225_3_addr_3_reg_1494_pp0_iter1_reg <= v225_3_addr_3_reg_1494;
        v225_3_addr_3_reg_1494_pp0_iter2_reg <= v225_3_addr_3_reg_1494_pp0_iter1_reg;
        v225_3_addr_4_reg_1603 <= zext_ln232_fu_1002_p1;
        v225_3_addr_4_reg_1603_pp0_iter2_reg <= v225_3_addr_4_reg_1603;
        v225_3_addr_4_reg_1603_pp0_iter3_reg <= v225_3_addr_4_reg_1603_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln170_reg_1336 <= icmp_ln170_fu_649_p2;
        v116_3_reg_1331 <= ap_sig_allocacmp_v116_3;
        v225_0_addr_1_reg_1386 <= zext_ln171_fu_687_p1;
        v225_0_addr_1_reg_1386_pp0_iter1_reg <= v225_0_addr_1_reg_1386;
        v225_0_addr_1_reg_1386_pp0_iter2_reg <= v225_0_addr_1_reg_1386_pp0_iter1_reg;
        v225_0_addr_2_reg_1453 <= zext_ln179_fu_745_p1;
        v225_0_addr_2_reg_1453_pp0_iter1_reg <= v225_0_addr_2_reg_1453;
        v225_0_addr_2_reg_1453_pp0_iter2_reg <= v225_0_addr_2_reg_1453_pp0_iter1_reg;
        v225_1_addr_1_reg_1391 <= zext_ln171_fu_687_p1;
        v225_1_addr_1_reg_1391_pp0_iter1_reg <= v225_1_addr_1_reg_1391;
        v225_1_addr_1_reg_1391_pp0_iter2_reg <= v225_1_addr_1_reg_1391_pp0_iter1_reg;
        v225_1_addr_2_reg_1458 <= zext_ln179_fu_745_p1;
        v225_1_addr_2_reg_1458_pp0_iter1_reg <= v225_1_addr_2_reg_1458;
        v225_1_addr_2_reg_1458_pp0_iter2_reg <= v225_1_addr_2_reg_1458_pp0_iter1_reg;
        v225_2_addr_1_reg_1396 <= zext_ln171_fu_687_p1;
        v225_2_addr_1_reg_1396_pp0_iter1_reg <= v225_2_addr_1_reg_1396;
        v225_2_addr_1_reg_1396_pp0_iter2_reg <= v225_2_addr_1_reg_1396_pp0_iter1_reg;
        v225_2_addr_2_reg_1463 <= zext_ln179_fu_745_p1;
        v225_2_addr_2_reg_1463_pp0_iter1_reg <= v225_2_addr_2_reg_1463;
        v225_2_addr_2_reg_1463_pp0_iter2_reg <= v225_2_addr_2_reg_1463_pp0_iter1_reg;
        v225_3_addr_1_reg_1401 <= zext_ln171_fu_687_p1;
        v225_3_addr_1_reg_1401_pp0_iter1_reg <= v225_3_addr_1_reg_1401;
        v225_3_addr_1_reg_1401_pp0_iter2_reg <= v225_3_addr_1_reg_1401_pp0_iter1_reg;
        v225_3_addr_2_reg_1468 <= zext_ln179_fu_745_p1;
        v225_3_addr_2_reg_1468_pp0_iter1_reg <= v225_3_addr_2_reg_1468;
        v225_3_addr_2_reg_1468_pp0_iter2_reg <= v225_3_addr_2_reg_1468_pp0_iter1_reg;
        zext_ln175_reg_1340[7 : 0] <= zext_ln175_fu_655_p1[7 : 0];
        zext_ln182_reg_1407[7 : 1] <= zext_ln182_fu_713_p1[7 : 1];
        zext_ln182_reg_1407_pp0_iter1_reg[7 : 1] <= zext_ln182_reg_1407[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_617 <= grp_fu_8304_p_dout0;
        reg_621 <= grp_fu_8308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_625 <= grp_fu_8312_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_629 <= grp_fu_8304_p_dout0;
        reg_633 <= grp_fu_8308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_637 <= grp_fu_8312_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v122_reg_1548 <= grp_fu_8316_p_dout0;
        v128_reg_1553 <= grp_fu_8320_p_dout0;
        v134_reg_1558 <= grp_fu_8324_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v139_reg_1568 <= grp_fu_8316_p_dout0;
        v145_reg_1573 <= grp_fu_8320_p_dout0;
        v150_reg_1578 <= grp_fu_8324_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v156_reg_1613 <= grp_fu_8316_p_dout0;
        v161_reg_1623 <= grp_fu_8320_p_dout0;
        v167_reg_1628 <= grp_fu_8324_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v164_reg_1543 <= v164_fu_970_p3;
        v170_reg_1643 <= v170_fu_1048_p3;
        v175_reg_1653 <= v175_fu_1059_p3;
        v181_reg_1663 <= v181_fu_1070_p3;
        v186_reg_1673 <= v186_fu_1081_p3;
        v192_reg_1678 <= v192_fu_1092_p3;
        v197_reg_1683 <= v197_fu_1103_p3;
        v203_reg_1688 <= v203_fu_1114_p3;
        v225_0_addr_5_reg_1633 <= zext_ln277_fu_1036_p1;
        v225_0_addr_5_reg_1633_pp0_iter2_reg <= v225_0_addr_5_reg_1633;
        v225_0_addr_5_reg_1633_pp0_iter3_reg <= v225_0_addr_5_reg_1633_pp0_iter2_reg;
        v225_0_addr_6_reg_1638 <= zext_ln284_fu_1040_p1;
        v225_0_addr_6_reg_1638_pp0_iter2_reg <= v225_0_addr_6_reg_1638;
        v225_0_addr_6_reg_1638_pp0_iter3_reg <= v225_0_addr_6_reg_1638_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v172_reg_1648 <= grp_fu_8316_p_dout0;
        v178_reg_1658 <= grp_fu_8320_p_dout0;
        v183_reg_1668 <= grp_fu_8324_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v189_reg_1693 <= grp_fu_8316_p_dout0;
        v194_reg_1698 <= grp_fu_8320_p_dout0;
        v200_reg_1703 <= grp_fu_8324_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v205_reg_1718 <= grp_fu_8316_p_dout0;
        v211_reg_1723 <= grp_fu_8320_p_dout0;
        v216_reg_1728 <= grp_fu_8324_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v206_reg_1733 <= grp_fu_8304_p_dout0;
        v212_reg_1738 <= grp_fu_8308_p_dout0;
        v217_reg_1743 <= grp_fu_8312_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v208_reg_1708 <= v208_fu_1125_p3;
        v214_reg_1713 <= v214_fu_1136_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_load_reg_1499 <= v225_0_q1;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_1336 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v116_3 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116_3 = v116_fu_124;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_593_p0 = v203_reg_1688;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_593_p0 = v186_reg_1673;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_593_p0 = v170_reg_1643;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_593_p0 = v153_reg_1608;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_593_p0 = v137_reg_1528;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_593_p0 = v118_fu_990_p3;
        end else begin
            grp_fu_593_p0 = 'bx;
        end
    end else begin
        grp_fu_593_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_593_p1 = v205_reg_1718;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_593_p1 = v189_reg_1693;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_593_p1 = v172_reg_1648;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_593_p1 = v156_reg_1613;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_593_p1 = v139_reg_1568;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_593_p1 = v122_reg_1548;
        end else begin
            grp_fu_593_p1 = 'bx;
        end
    end else begin
        grp_fu_593_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_597_p0 = v208_reg_1708;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_597_p0 = v192_reg_1678;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_597_p0 = v175_reg_1653;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_597_p0 = v159_reg_1618;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_597_p0 = v142_reg_1533;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_597_p0 = v125_reg_1511;
        end else begin
            grp_fu_597_p0 = 'bx;
        end
    end else begin
        grp_fu_597_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_597_p1 = v211_reg_1723;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_597_p1 = v194_reg_1698;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_597_p1 = v178_reg_1658;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_597_p1 = v161_reg_1623;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_597_p1 = v145_reg_1573;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_597_p1 = v128_reg_1553;
        end else begin
            grp_fu_597_p1 = 'bx;
        end
    end else begin
        grp_fu_597_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_601_p0 = v214_reg_1713;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_601_p0 = v197_reg_1683;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_601_p0 = v181_reg_1663;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_601_p0 = v164_reg_1543;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_601_p0 = v148_reg_1538;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_601_p0 = v131_reg_1523;
        end else begin
            grp_fu_601_p0 = 'bx;
        end
    end else begin
        grp_fu_601_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_601_p1 = v216_reg_1728;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_601_p1 = v200_reg_1703;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_601_p1 = v183_reg_1668;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_601_p1 = v167_reg_1628;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_601_p1 = v150_reg_1578;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_601_p1 = v134_reg_1558;
        end else begin
            grp_fu_601_p1 = 'bx;
        end
    end else begin
        grp_fu_601_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_605_p0 = v199;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_605_p0 = v188;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_605_p0 = v166;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_605_p0 = v155;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_605_p0 = v133;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_605_p0 = v120;
    end else begin
        grp_fu_605_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_605_p1 = v127_reg_1516;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_605_p1 = v121_reg_1504;
    end else begin
        grp_fu_605_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_609_p0 = v210;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_609_p0 = v188;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_609_p0 = v177;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_609_p0 = v155;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_609_p0 = v144;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_609_p0 = v120;
    end else begin
        grp_fu_609_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_609_p1 = v121_reg_1504;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_609_p1 = v127_reg_1516;
    end else begin
        grp_fu_609_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_613_p0 = v210;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_613_p0 = v199;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_613_p0 = v177;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_613_p0 = v166;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_613_p0 = v144;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_613_p0 = v133;
    end else begin
        grp_fu_613_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_613_p1 = v127_reg_1516;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_613_p1 = v121_reg_1504;
    end else begin
        grp_fu_613_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address0_local = v225_0_addr_6_reg_1638_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address0_local = v225_0_addr_4_reg_1583_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address0_local = v225_0_addr_2_reg_1453_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = zext_ln284_fu_1040_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln232_fu_1002_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln179_fu_745_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_address1_local = v225_0_addr_5_reg_1633_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_address1_local = v225_0_addr_3_reg_1474_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_1_reg_1386_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = zext_ln277_fu_1036_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln225_fu_757_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln171_fu_687_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_d0_local = bitcast_ln289_fu_1226_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d0_local = bitcast_ln237_fu_1188_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d0_local = bitcast_ln185_fu_1168_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_0_d1_local = bitcast_ln283_fu_1222_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_0_d1_local = bitcast_ln231_fu_1183_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d1_local = bitcast_ln178_fu_1163_p1;
    end else begin
        v225_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_0_we0_local = 1'b1;
    end else begin
        v225_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_0_we1_local = 1'b1;
    end else begin
        v225_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address0_local = v225_1_addr_4_reg_1593_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address0_local = v225_1_addr_2_reg_1458_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = zext_ln232_fu_1002_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln179_fu_745_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v225_1_address1_local = v225_1_addr_3_reg_1484_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_1_address1_local = v225_1_addr_1_reg_1391_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = v225_1_addr_3_reg_1484;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_687_p1;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_1_d0_local = bitcast_ln250_fu_1198_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d0_local = bitcast_ln198_fu_1148_p1;
        end else begin
            v225_1_d0_local = 'bx;
        end
    end else begin
        v225_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v225_1_d1_local = bitcast_ln244_fu_1193_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_1_d1_local = bitcast_ln192_fu_1143_p1;
        end else begin
            v225_1_d1_local = 'bx;
        end
    end else begin
        v225_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v225_1_we0_local = 1'b1;
    end else begin
        v225_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v225_1_we1_local = 1'b1;
    end else begin
        v225_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address0_local = v225_2_addr_4_reg_1598_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address0_local = v225_2_addr_2_reg_1463_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = zext_ln232_fu_1002_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln179_fu_745_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_2_address1_local = v225_2_addr_3_reg_1489_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address1_local = v225_2_addr_1_reg_1396_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address1_local = v225_2_addr_3_reg_1489;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln171_fu_687_p1;
    end else begin
        v225_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce0_local = 1'b1;
    end else begin
        v225_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce1_local = 1'b1;
    end else begin
        v225_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_2_d0_local = bitcast_ln263_fu_1208_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d0_local = bitcast_ln211_fu_1158_p1;
        end else begin
            v225_2_d0_local = 'bx;
        end
    end else begin
        v225_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_2_d1_local = bitcast_ln257_fu_1203_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v225_2_d1_local = bitcast_ln205_fu_1153_p1;
        end else begin
            v225_2_d1_local = 'bx;
        end
    end else begin
        v225_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_2_we0_local = 1'b1;
    end else begin
        v225_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_2_we1_local = 1'b1;
    end else begin
        v225_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address0_local = v225_3_addr_4_reg_1603_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address0_local = v225_3_addr_1_reg_1401_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address0_local = zext_ln232_fu_1002_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = v225_3_addr_2_reg_1468;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v225_3_address1_local = v225_3_addr_3_reg_1494_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_address1_local = v225_3_addr_2_reg_1468_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_3_address1_local = v225_3_addr_3_reg_1494;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = v225_3_addr_1_reg_1401;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce0_local = 1'b1;
    end else begin
        v225_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce1_local = 1'b1;
    end else begin
        v225_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_d0_local = bitcast_ln276_fu_1218_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_3_d0_local = bitcast_ln218_fu_1173_p1;
    end else begin
        v225_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v225_3_d1_local = bitcast_ln270_fu_1213_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v225_3_d1_local = bitcast_ln224_fu_1178_p1;
        end else begin
            v225_3_d1_local = 'bx;
        end
    end else begin
        v225_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_3_we0_local = 1'b1;
    end else begin
        v225_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v225_3_we1_local = 1'b1;
    end else begin
        v225_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_0_ce0_local = 1'b1;
    end else begin
        v227_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_0_ce1_local = 1'b1;
    end else begin
        v227_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_1_ce0_local = 1'b1;
    end else begin
        v227_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_1_ce1_local = 1'b1;
    end else begin
        v227_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_2_ce0_local = 1'b1;
    end else begin
        v227_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_2_ce1_local = 1'b1;
    end else begin
        v227_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_3_ce0_local = 1'b1;
    end else begin
        v227_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_3_ce1_local = 1'b1;
    end else begin
        v227_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_4_ce0_local = 1'b1;
    end else begin
        v227_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_4_ce1_local = 1'b1;
    end else begin
        v227_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_5_ce0_local = 1'b1;
    end else begin
        v227_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_5_ce1_local = 1'b1;
    end else begin
        v227_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_6_ce0_local = 1'b1;
    end else begin
        v227_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_6_ce1_local = 1'b1;
    end else begin
        v227_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_7_ce0_local = 1'b1;
    end else begin
        v227_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_7_ce1_local = 1'b1;
    end else begin
        v227_7_ce1_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln170_fu_977_p2 = (v116_3_reg_1331 + 8'd2);
assign add_ln171_fu_681_p2 = (mul_ln171 + zext_ln175_fu_655_p1);
assign add_ln175_fu_663_p2 = (mul_ln175 + zext_ln175_7_fu_659_p1);
assign add_ln179_fu_739_p2 = (mul_ln171 + zext_ln182_fu_713_p1);
assign add_ln182_fu_721_p2 = (mul_ln175 + zext_ln182_7_fu_717_p1);
assign add_ln225_fu_753_p2 = (mul_ln225 + zext_ln175_reg_1340);
assign add_ln232_fu_998_p2 = (mul_ln225 + zext_ln182_reg_1407_pp0_iter1_reg);
assign add_ln277_fu_765_p2 = (mul_ln277 + zext_ln175_reg_1340);
assign add_ln284_fu_1010_p2 = (mul_ln277 + zext_ln182_reg_1407_pp0_iter1_reg);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign bitcast_ln178_fu_1163_p1 = reg_617;
assign bitcast_ln185_fu_1168_p1 = reg_621;
assign bitcast_ln192_fu_1143_p1 = reg_625;
assign bitcast_ln198_fu_1148_p1 = reg_629;
assign bitcast_ln205_fu_1153_p1 = reg_633;
assign bitcast_ln211_fu_1158_p1 = reg_637;
assign bitcast_ln218_fu_1173_p1 = reg_629;
assign bitcast_ln224_fu_1178_p1 = reg_633;
assign bitcast_ln231_fu_1183_p1 = reg_625;
assign bitcast_ln237_fu_1188_p1 = reg_617;
assign bitcast_ln244_fu_1193_p1 = reg_621;
assign bitcast_ln250_fu_1198_p1 = reg_637;
assign bitcast_ln257_fu_1203_p1 = reg_617;
assign bitcast_ln263_fu_1208_p1 = reg_621;
assign bitcast_ln270_fu_1213_p1 = reg_625;
assign bitcast_ln276_fu_1218_p1 = v206_reg_1733;
assign bitcast_ln283_fu_1222_p1 = v212_reg_1738;
assign bitcast_ln289_fu_1226_p1 = v217_reg_1743;
assign grp_fu_8304_p_ce = 1'b1;
assign grp_fu_8304_p_din0 = grp_fu_593_p0;
assign grp_fu_8304_p_din1 = grp_fu_593_p1;
assign grp_fu_8304_p_opcode = 2'd0;
assign grp_fu_8308_p_ce = 1'b1;
assign grp_fu_8308_p_din0 = grp_fu_597_p0;
assign grp_fu_8308_p_din1 = grp_fu_597_p1;
assign grp_fu_8308_p_opcode = 2'd0;
assign grp_fu_8312_p_ce = 1'b1;
assign grp_fu_8312_p_din0 = grp_fu_601_p0;
assign grp_fu_8312_p_din1 = grp_fu_601_p1;
assign grp_fu_8312_p_opcode = 2'd0;
assign grp_fu_8316_p_ce = 1'b1;
assign grp_fu_8316_p_din0 = grp_fu_605_p0;
assign grp_fu_8316_p_din1 = grp_fu_605_p1;
assign grp_fu_8320_p_ce = 1'b1;
assign grp_fu_8320_p_din0 = grp_fu_609_p0;
assign grp_fu_8320_p_din1 = grp_fu_609_p1;
assign grp_fu_8324_p_ce = 1'b1;
assign grp_fu_8324_p_din0 = grp_fu_613_p0;
assign grp_fu_8324_p_din1 = grp_fu_613_p1;
assign icmp_ln170_fu_649_p2 = ((ap_sig_allocacmp_v116_3 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln_fu_705_p3 = {{tmp_7_fu_695_p4}, {1'd1}};
assign tmp_7_fu_695_p4 = {{ap_sig_allocacmp_v116_3[7:1]}};
assign v117_fu_987_p1 = v225_0_load_reg_1499;
assign v118_fu_990_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v117_fu_987_p1);
assign v121_fu_801_p10 = v227_4_q1;
assign v121_fu_801_p12 = v227_5_q1;
assign v121_fu_801_p14 = v227_6_q1;
assign v121_fu_801_p16 = v227_7_q1;
assign v121_fu_801_p17 = 'bx;
assign v121_fu_801_p2 = v227_0_q1;
assign v121_fu_801_p4 = v227_1_q1;
assign v121_fu_801_p6 = v227_2_q1;
assign v121_fu_801_p8 = v227_3_q1;
assign v124_fu_840_p1 = v225_0_q0;
assign v125_fu_844_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v124_fu_840_p1);
assign v127_fu_883_p10 = v227_4_q0;
assign v127_fu_883_p12 = v227_5_q0;
assign v127_fu_883_p14 = v227_6_q0;
assign v127_fu_883_p16 = v227_7_q0;
assign v127_fu_883_p17 = 'bx;
assign v127_fu_883_p2 = v227_0_q0;
assign v127_fu_883_p4 = v227_1_q0;
assign v127_fu_883_p6 = v227_2_q0;
assign v127_fu_883_p8 = v227_3_q0;
assign v130_fu_922_p1 = v225_1_q1;
assign v131_fu_926_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v130_fu_922_p1);
assign v136_fu_933_p1 = v225_1_q0;
assign v137_fu_937_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v136_fu_933_p1);
assign v141_fu_944_p1 = v225_2_q1;
assign v142_fu_948_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v141_fu_944_p1);
assign v147_fu_955_p1 = v225_2_q0;
assign v148_fu_959_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v147_fu_955_p1);
assign v152_fu_1014_p1 = v225_3_q1;
assign v153_fu_1018_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v152_fu_1014_p1);
assign v158_fu_1025_p1 = v225_3_q0;
assign v159_fu_1029_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v158_fu_1025_p1);
assign v163_fu_966_p1 = v225_0_q1;
assign v164_fu_970_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v163_fu_966_p1);
assign v169_fu_1044_p1 = v225_0_q0;
assign v170_fu_1048_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v169_fu_1044_p1);
assign v174_fu_1055_p1 = v225_1_q1;
assign v175_fu_1059_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v174_fu_1055_p1);
assign v180_fu_1066_p1 = v225_1_q0;
assign v181_fu_1070_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v180_fu_1066_p1);
assign v185_fu_1077_p1 = v225_2_q1;
assign v186_fu_1081_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v185_fu_1077_p1);
assign v191_fu_1088_p1 = v225_2_q0;
assign v192_fu_1092_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v191_fu_1088_p1);
assign v196_fu_1099_p1 = v225_3_q1;
assign v197_fu_1103_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v196_fu_1099_p1);
assign v202_fu_1110_p1 = v225_3_q0;
assign v203_fu_1114_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v202_fu_1110_p1);
assign v207_fu_1121_p1 = v225_0_q1;
assign v208_fu_1125_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v207_fu_1121_p1);
assign v213_fu_1132_p1 = v225_0_q0;
assign v214_fu_1136_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v213_fu_1132_p1);
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
assign v225_2_address0 = v225_2_address0_local;
assign v225_2_address1 = v225_2_address1_local;
assign v225_2_ce0 = v225_2_ce0_local;
assign v225_2_ce1 = v225_2_ce1_local;
assign v225_2_d0 = v225_2_d0_local;
assign v225_2_d1 = v225_2_d1_local;
assign v225_2_we0 = v225_2_we0_local;
assign v225_2_we1 = v225_2_we1_local;
assign v225_3_address0 = v225_3_address0_local;
assign v225_3_address1 = v225_3_address1_local;
assign v225_3_ce0 = v225_3_ce0_local;
assign v225_3_ce1 = v225_3_ce1_local;
assign v225_3_d0 = v225_3_d0_local;
assign v225_3_d1 = v225_3_d1_local;
assign v225_3_we0 = v225_3_we0_local;
assign v225_3_we1 = v225_3_we1_local;
assign v227_0_address0 = zext_ln182_8_fu_727_p1;
assign v227_0_address1 = zext_ln175_8_fu_669_p1;
assign v227_0_ce0 = v227_0_ce0_local;
assign v227_0_ce1 = v227_0_ce1_local;
assign v227_1_address0 = zext_ln182_8_fu_727_p1;
assign v227_1_address1 = zext_ln175_8_fu_669_p1;
assign v227_1_ce0 = v227_1_ce0_local;
assign v227_1_ce1 = v227_1_ce1_local;
assign v227_2_address0 = zext_ln182_8_fu_727_p1;
assign v227_2_address1 = zext_ln175_8_fu_669_p1;
assign v227_2_ce0 = v227_2_ce0_local;
assign v227_2_ce1 = v227_2_ce1_local;
assign v227_3_address0 = zext_ln182_8_fu_727_p1;
assign v227_3_address1 = zext_ln175_8_fu_669_p1;
assign v227_3_ce0 = v227_3_ce0_local;
assign v227_3_ce1 = v227_3_ce1_local;
assign v227_4_address0 = zext_ln182_8_fu_727_p1;
assign v227_4_address1 = zext_ln175_8_fu_669_p1;
assign v227_4_ce0 = v227_4_ce0_local;
assign v227_4_ce1 = v227_4_ce1_local;
assign v227_5_address0 = zext_ln182_8_fu_727_p1;
assign v227_5_address1 = zext_ln175_8_fu_669_p1;
assign v227_5_ce0 = v227_5_ce0_local;
assign v227_5_ce1 = v227_5_ce1_local;
assign v227_6_address0 = zext_ln182_8_fu_727_p1;
assign v227_6_address1 = zext_ln175_8_fu_669_p1;
assign v227_6_ce0 = v227_6_ce0_local;
assign v227_6_ce1 = v227_6_ce1_local;
assign v227_7_address0 = zext_ln182_8_fu_727_p1;
assign v227_7_address1 = zext_ln175_8_fu_669_p1;
assign v227_7_ce0 = v227_7_ce0_local;
assign v227_7_ce1 = v227_7_ce1_local;
assign zext_ln171_fu_687_p1 = add_ln171_fu_681_p2;
assign zext_ln175_7_fu_659_p1 = ap_sig_allocacmp_v116_3;
assign zext_ln175_8_fu_669_p1 = add_ln175_fu_663_p2;
assign zext_ln175_fu_655_p1 = ap_sig_allocacmp_v116_3;
assign zext_ln179_fu_745_p1 = add_ln179_fu_739_p2;
assign zext_ln182_7_fu_717_p1 = or_ln_fu_705_p3;
assign zext_ln182_8_fu_727_p1 = add_ln182_fu_721_p2;
assign zext_ln182_fu_713_p1 = or_ln_fu_705_p3;
assign zext_ln225_fu_757_p1 = add_ln225_fu_753_p2;
assign zext_ln232_fu_1002_p1 = add_ln232_fu_998_p2;
assign zext_ln277_fu_1036_p1 = add_ln277_reg_1479_pp0_iter1_reg;
assign zext_ln284_fu_1040_p1 = add_ln284_reg_1588;
always @ (posedge ap_clk) begin
    zext_ln175_reg_1340[13:8] <= 6'b000000;
    zext_ln182_reg_1407[0] <= 1'b1;
    zext_ln182_reg_1407[13:8] <= 6'b000000;
    zext_ln182_reg_1407_pp0_iter1_reg[0] <= 1'b1;
    zext_ln182_reg_1407_pp0_iter1_reg[13:8] <= 6'b000000;
end
endmodule 
