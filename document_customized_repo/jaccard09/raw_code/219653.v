module SgdLR_sw_SgdLR_sw_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_1_address1,v3_1_ce1,v3_1_we1,v3_1_d1,v3_address0,v3_ce0,v3_we0,v3_d0,v3_address1,v3_ce1,v3_we1,v3_d1,tmp,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,v22,v5,grp_fu_532_p_din0,grp_fu_532_p_din1,grp_fu_532_p_dout0,grp_fu_532_p_ce); 
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
output  [8:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [31:0] v3_1_d0;
output  [8:0] v3_1_address1;
output   v3_1_ce1;
output   v3_1_we1;
output  [31:0] v3_1_d1;
output  [8:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
output  [8:0] v3_address1;
output   v3_ce1;
output   v3_we1;
output  [31:0] v3_d1;
input  [22:0] tmp;
output  [20:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [20:0] v0_0_address1;
output   v0_0_ce1;
input  [31:0] v0_0_q1;
output  [20:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [20:0] v0_1_address1;
output   v0_1_ce1;
input  [31:0] v0_1_q1;
output  [20:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [20:0] v0_2_address1;
output   v0_2_ce1;
input  [31:0] v0_2_q1;
output  [20:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [20:0] v0_3_address1;
output   v0_3_ce1;
input  [31:0] v0_3_q1;
input  [31:0] v22;
input  [12:0] v5;
output  [31:0] grp_fu_532_p_din0;
output  [31:0] grp_fu_532_p_din1;
input  [31:0] grp_fu_532_p_dout0;
output   grp_fu_532_p_ce;
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
reg    ap_enable_reg_pp0_iter8;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_4_reg_1427;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [1:0] reg_618;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] reg_622;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [1:0] reg_626;
reg   [31:0] reg_630;
wire   [31:0] grp_fu_584_p2;
reg   [31:0] reg_636;
reg   [10:0] v19_1_reg_1415;
reg   [10:0] v19_1_reg_1415_pp0_iter1_reg;
reg   [10:0] v19_1_reg_1415_pp0_iter2_reg;
reg   [10:0] v19_1_reg_1415_pp0_iter3_reg;
reg   [10:0] v19_1_reg_1415_pp0_iter4_reg;
reg   [10:0] v19_1_reg_1415_pp0_iter5_reg;
reg   [10:0] v19_1_reg_1415_pp0_iter6_reg;
reg   [10:0] v19_1_reg_1415_pp0_iter7_reg;
reg   [10:0] v19_1_reg_1415_pp0_iter8_reg;
wire   [0:0] tmp_4_fu_650_p3;
wire   [22:0] add_ln51_1_fu_668_p4;
reg   [22:0] add_ln51_1_reg_1431;
reg   [22:0] add_ln51_1_reg_1431_pp0_iter1_reg;
reg   [22:0] add_ln51_1_reg_1431_pp0_iter2_reg;
reg   [22:0] add_ln51_1_reg_1431_pp0_iter3_reg;
reg   [22:0] add_ln51_1_reg_1431_pp0_iter4_reg;
reg   [22:0] add_ln51_1_reg_1431_pp0_iter5_reg;
reg   [22:0] add_ln51_1_reg_1431_pp0_iter6_reg;
wire   [7:0] tmp_5_fu_684_p4;
reg   [7:0] tmp_5_reg_1437;
wire   [22:0] add_ln51_2_fu_694_p4;
reg   [22:0] add_ln51_2_reg_1442;
reg   [22:0] add_ln51_2_reg_1442_pp0_iter1_reg;
reg   [22:0] add_ln51_2_reg_1442_pp0_iter2_reg;
reg   [22:0] add_ln51_2_reg_1442_pp0_iter3_reg;
reg   [22:0] add_ln51_2_reg_1442_pp0_iter4_reg;
reg   [22:0] add_ln51_2_reg_1442_pp0_iter5_reg;
reg   [22:0] add_ln51_2_reg_1442_pp0_iter6_reg;
wire   [0:0] icmp_ln53_fu_720_p2;
reg   [0:0] icmp_ln53_reg_1448;
reg   [0:0] icmp_ln53_reg_1448_pp0_iter1_reg;
reg   [0:0] icmp_ln53_reg_1448_pp0_iter2_reg;
reg   [0:0] icmp_ln53_reg_1448_pp0_iter3_reg;
reg   [0:0] icmp_ln53_reg_1448_pp0_iter4_reg;
reg   [0:0] icmp_ln53_reg_1448_pp0_iter5_reg;
reg   [0:0] icmp_ln53_reg_1448_pp0_iter6_reg;
reg   [0:0] icmp_ln53_reg_1448_pp0_iter7_reg;
reg   [0:0] icmp_ln53_reg_1448_pp0_iter8_reg;
wire   [22:0] add_ln51_3_fu_726_p4;
reg   [22:0] add_ln51_3_reg_1452;
reg   [22:0] add_ln51_3_reg_1452_pp0_iter1_reg;
reg   [22:0] add_ln51_3_reg_1452_pp0_iter2_reg;
reg   [22:0] add_ln51_3_reg_1452_pp0_iter3_reg;
reg   [22:0] add_ln51_3_reg_1452_pp0_iter4_reg;
reg   [22:0] add_ln51_3_reg_1452_pp0_iter5_reg;
reg   [22:0] add_ln51_3_reg_1452_pp0_iter6_reg;
wire   [6:0] tmp_s_fu_740_p4;
reg   [6:0] tmp_s_reg_1458;
wire   [22:0] add_ln51_4_fu_749_p4;
reg   [22:0] add_ln51_4_reg_1465;
reg   [22:0] add_ln51_4_reg_1465_pp0_iter1_reg;
reg   [22:0] add_ln51_4_reg_1465_pp0_iter2_reg;
reg   [22:0] add_ln51_4_reg_1465_pp0_iter3_reg;
reg   [22:0] add_ln51_4_reg_1465_pp0_iter4_reg;
reg   [22:0] add_ln51_4_reg_1465_pp0_iter5_reg;
reg   [22:0] add_ln51_4_reg_1465_pp0_iter6_reg;
wire   [0:0] tmp_6_fu_764_p3;
reg   [0:0] tmp_6_reg_1471;
reg   [0:0] tmp_6_reg_1471_pp0_iter1_reg;
reg   [0:0] tmp_6_reg_1471_pp0_iter2_reg;
reg   [0:0] tmp_6_reg_1471_pp0_iter3_reg;
reg   [0:0] tmp_6_reg_1471_pp0_iter4_reg;
reg   [0:0] tmp_6_reg_1471_pp0_iter5_reg;
reg   [0:0] tmp_6_reg_1471_pp0_iter6_reg;
reg   [0:0] tmp_6_reg_1471_pp0_iter7_reg;
wire   [22:0] add_ln51_5_fu_771_p6;
reg   [22:0] add_ln51_5_reg_1476;
reg   [22:0] add_ln51_5_reg_1476_pp0_iter1_reg;
reg   [22:0] add_ln51_5_reg_1476_pp0_iter2_reg;
reg   [22:0] add_ln51_5_reg_1476_pp0_iter3_reg;
reg   [22:0] add_ln51_5_reg_1476_pp0_iter4_reg;
reg   [22:0] add_ln51_5_reg_1476_pp0_iter5_reg;
reg   [22:0] add_ln51_5_reg_1476_pp0_iter6_reg;
wire   [22:0] add_ln51_6_fu_789_p4;
reg   [22:0] add_ln51_6_reg_1482;
reg   [22:0] add_ln51_6_reg_1482_pp0_iter1_reg;
reg   [22:0] add_ln51_6_reg_1482_pp0_iter2_reg;
reg   [22:0] add_ln51_6_reg_1482_pp0_iter3_reg;
reg   [22:0] add_ln51_6_reg_1482_pp0_iter4_reg;
reg   [22:0] add_ln51_6_reg_1482_pp0_iter5_reg;
reg   [22:0] add_ln51_6_reg_1482_pp0_iter6_reg;
wire   [22:0] add_ln51_fu_806_p2;
reg   [22:0] add_ln51_reg_1488;
reg   [22:0] add_ln51_reg_1488_pp0_iter1_reg;
reg   [22:0] add_ln51_reg_1488_pp0_iter2_reg;
reg   [22:0] add_ln51_reg_1488_pp0_iter3_reg;
reg   [22:0] add_ln51_reg_1488_pp0_iter4_reg;
reg   [22:0] add_ln51_reg_1488_pp0_iter5_reg;
reg   [22:0] add_ln51_reg_1488_pp0_iter6_reg;
wire   [22:0] add_ln51_7_fu_817_p4;
reg   [22:0] add_ln51_7_reg_1494;
reg   [22:0] add_ln51_7_reg_1494_pp0_iter1_reg;
reg   [22:0] add_ln51_7_reg_1494_pp0_iter2_reg;
reg   [22:0] add_ln51_7_reg_1494_pp0_iter3_reg;
reg   [22:0] add_ln51_7_reg_1494_pp0_iter4_reg;
reg   [22:0] add_ln51_7_reg_1494_pp0_iter5_reg;
reg   [22:0] add_ln51_7_reg_1494_pp0_iter6_reg;
reg   [1:0] trunc_ln51_2_reg_1520;
wire   [31:0] v23_1_fu_885_p11;
reg   [31:0] v23_1_reg_1545;
wire   [31:0] v23_2_fu_925_p11;
reg   [31:0] v23_2_reg_1550;
wire   [31:0] v23_3_fu_988_p11;
reg   [31:0] v23_3_reg_1595;
wire   [31:0] v23_4_fu_1028_p11;
reg   [31:0] v23_4_reg_1600;
wire   [31:0] v23_5_fu_1104_p11;
reg   [31:0] v23_5_reg_1665;
wire   [31:0] v23_6_fu_1144_p11;
reg   [31:0] v23_6_reg_1670;
wire   [31:0] v23_fu_1192_p11;
reg   [31:0] v23_reg_1695;
wire   [31:0] v23_7_fu_1232_p11;
reg   [31:0] v23_7_reg_1700;
wire   [6:0] tmp_3_fu_1279_p4;
reg   [6:0] tmp_3_reg_1705;
wire   [8:0] trunc_ln47_fu_1302_p1;
reg   [8:0] trunc_ln47_reg_1710;
wire   [5:0] tmp_9_fu_1318_p4;
reg   [5:0] tmp_9_reg_1715;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln51_2_fu_845_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln51_4_fu_853_p1;
wire   [63:0] zext_ln51_6_fu_948_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln51_8_fu_956_p1;
wire   [63:0] zext_ln51_10_fu_1052_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_12_fu_1060_p1;
wire   [63:0] zext_ln51_fu_1076_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_14_fu_1168_p1;
wire   [63:0] zext_ln51_1_fu_1273_p1;
wire   [63:0] zext_ln51_3_fu_1296_p1;
wire   [63:0] zext_ln51_5_fu_1312_p1;
wire   [63:0] zext_ln51_7_fu_1335_p1;
wire   [63:0] zext_ln51_9_fu_1351_p1;
wire   [63:0] zext_ln51_11_fu_1364_p1;
wire   [63:0] zext_ln48_fu_1370_p1;
wire   [63:0] zext_ln51_13_fu_1382_p1;
reg   [10:0] v19_fu_120;
wire   [10:0] add_ln47_fu_831_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_1;
reg    v0_0_ce1_local;
reg   [20:0] v0_0_address1_local;
reg    v0_0_ce0_local;
reg   [20:0] v0_0_address0_local;
reg    v0_1_ce1_local;
reg   [20:0] v0_1_address1_local;
reg    v0_1_ce0_local;
reg   [20:0] v0_1_address0_local;
reg    v0_2_ce1_local;
reg   [20:0] v0_2_address1_local;
reg    v0_2_ce0_local;
reg   [20:0] v0_2_address0_local;
reg    v0_3_ce1_local;
reg   [20:0] v0_3_address1_local;
reg    v0_3_ce0_local;
reg   [20:0] v0_3_address0_local;
reg    v3_1_we1_local;
reg    v3_1_ce1_local;
reg   [8:0] v3_1_address1_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
reg   [8:0] v3_1_address0_local;
reg    v3_we1_local;
reg    v3_ce1_local;
reg   [8:0] v3_address1_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg   [8:0] v3_address0_local;
reg   [31:0] grp_fu_580_p1;
reg   [31:0] grp_fu_584_p1;
reg   [22:0] grp_fu_588_p0;
wire   [46:0] zext_ln51_16_fu_841_p1;
wire   [46:0] zext_ln51_17_fu_861_p1;
wire   [46:0] zext_ln51_19_fu_964_p1;
wire   [46:0] zext_ln51_21_fu_1068_p1;
wire   [24:0] grp_fu_588_p1;
reg   [22:0] grp_fu_593_p0;
wire   [46:0] zext_ln51_18_fu_865_p1;
wire   [46:0] zext_ln51_20_fu_968_p1;
wire   [46:0] zext_ln51_22_fu_1072_p1;
wire   [46:0] zext_ln51_15_fu_1084_p1;
wire   [24:0] grp_fu_593_p1;
wire   [46:0] grp_fu_588_p2;
wire   [46:0] grp_fu_593_p2;
wire   [8:0] tmp_2_fu_658_p4;
wire   [22:0] grp_fu_678_p0;
wire   [21:0] grp_fu_678_p1;
wire   [22:0] grp_fu_704_p0;
wire   [21:0] grp_fu_704_p1;
wire   [1:0] tmp_7_fu_710_p4;
wire   [22:0] grp_fu_734_p0;
wire   [21:0] grp_fu_734_p1;
wire   [22:0] grp_fu_758_p0;
wire   [21:0] grp_fu_758_p1;
wire   [22:0] grp_fu_783_p0;
wire   [21:0] grp_fu_783_p1;
wire   [22:0] grp_fu_797_p0;
wire   [21:0] grp_fu_797_p1;
wire   [22:0] zext_ln47_fu_803_p1;
wire   [22:0] grp_fu_811_p0;
wire   [21:0] grp_fu_811_p1;
wire   [22:0] grp_fu_825_p0;
wire   [21:0] grp_fu_825_p1;
wire   [22:0] grp_fu_678_p2;
wire   [22:0] grp_fu_704_p2;
wire   [31:0] v23_1_fu_885_p2;
wire   [31:0] v23_1_fu_885_p4;
wire   [31:0] v23_1_fu_885_p6;
wire   [31:0] v23_1_fu_885_p8;
wire   [31:0] v23_1_fu_885_p9;
wire   [31:0] v23_2_fu_925_p2;
wire   [31:0] v23_2_fu_925_p4;
wire   [31:0] v23_2_fu_925_p6;
wire   [31:0] v23_2_fu_925_p8;
wire   [31:0] v23_2_fu_925_p9;
wire   [22:0] grp_fu_734_p2;
wire   [22:0] grp_fu_758_p2;
wire   [31:0] v23_3_fu_988_p2;
wire   [31:0] v23_3_fu_988_p4;
wire   [31:0] v23_3_fu_988_p6;
wire   [31:0] v23_3_fu_988_p8;
wire   [31:0] v23_3_fu_988_p9;
wire   [31:0] v23_4_fu_1028_p2;
wire   [31:0] v23_4_fu_1028_p4;
wire   [31:0] v23_4_fu_1028_p6;
wire   [31:0] v23_4_fu_1028_p8;
wire   [31:0] v23_4_fu_1028_p9;
wire   [22:0] grp_fu_783_p2;
wire   [22:0] grp_fu_797_p2;
wire   [22:0] grp_fu_811_p2;
wire   [31:0] v23_5_fu_1104_p2;
wire   [31:0] v23_5_fu_1104_p4;
wire   [31:0] v23_5_fu_1104_p6;
wire   [31:0] v23_5_fu_1104_p8;
wire   [31:0] v23_5_fu_1104_p9;
wire   [31:0] v23_6_fu_1144_p2;
wire   [31:0] v23_6_fu_1144_p4;
wire   [31:0] v23_6_fu_1144_p6;
wire   [31:0] v23_6_fu_1144_p8;
wire   [31:0] v23_6_fu_1144_p9;
wire   [22:0] grp_fu_825_p2;
wire   [31:0] v23_fu_1192_p2;
wire   [31:0] v23_fu_1192_p4;
wire   [31:0] v23_fu_1192_p6;
wire   [31:0] v23_fu_1192_p8;
wire   [31:0] v23_fu_1192_p9;
wire   [31:0] v23_7_fu_1232_p2;
wire   [31:0] v23_7_fu_1232_p4;
wire   [31:0] v23_7_fu_1232_p6;
wire   [31:0] v23_7_fu_1232_p8;
wire   [31:0] v23_7_fu_1232_p9;
wire   [7:0] tmp_1_fu_1256_p4;
wire   [8:0] or_ln_fu_1265_p3;
wire   [8:0] or_ln48_1_fu_1288_p3;
wire   [8:0] or_ln48_2_fu_1305_p3;
wire   [8:0] or_ln48_3_fu_1327_p3;
wire   [8:0] or_ln48_4_fu_1341_p5;
wire   [8:0] or_ln48_5_fu_1357_p3;
wire   [8:0] or_ln48_6_fu_1375_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to8;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] v23_1_fu_885_p1;
wire   [1:0] v23_1_fu_885_p3;
wire  signed [1:0] v23_1_fu_885_p5;
wire  signed [1:0] v23_1_fu_885_p7;
wire   [1:0] v23_2_fu_925_p1;
wire   [1:0] v23_2_fu_925_p3;
wire  signed [1:0] v23_2_fu_925_p5;
wire  signed [1:0] v23_2_fu_925_p7;
wire   [1:0] v23_3_fu_988_p1;
wire   [1:0] v23_3_fu_988_p3;
wire  signed [1:0] v23_3_fu_988_p5;
wire  signed [1:0] v23_3_fu_988_p7;
wire   [1:0] v23_4_fu_1028_p1;
wire   [1:0] v23_4_fu_1028_p3;
wire  signed [1:0] v23_4_fu_1028_p5;
wire  signed [1:0] v23_4_fu_1028_p7;
wire   [1:0] v23_5_fu_1104_p1;
wire   [1:0] v23_5_fu_1104_p3;
wire  signed [1:0] v23_5_fu_1104_p5;
wire  signed [1:0] v23_5_fu_1104_p7;
wire   [1:0] v23_6_fu_1144_p1;
wire   [1:0] v23_6_fu_1144_p3;
wire  signed [1:0] v23_6_fu_1144_p5;
wire  signed [1:0] v23_6_fu_1144_p7;
wire   [1:0] v23_fu_1192_p1;
wire   [1:0] v23_fu_1192_p3;
wire  signed [1:0] v23_fu_1192_p5;
wire  signed [1:0] v23_fu_1192_p7;
wire   [1:0] v23_7_fu_1232_p1;
wire   [1:0] v23_7_fu_1232_p3;
wire  signed [1:0] v23_7_fu_1232_p5;
wire  signed [1:0] v23_7_fu_1232_p7;
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
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v19_fu_120 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U17(.clk(ap_clk),.reset(ap_rst),.din0(v22),.din1(grp_fu_584_p1),.ce(1'b1),.dout(grp_fu_584_p2));
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U18(.din0(grp_fu_588_p0),.din1(grp_fu_588_p1),.dout(grp_fu_588_p2));
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U19(.din0(grp_fu_593_p0),.din1(grp_fu_593_p1),.dout(grp_fu_593_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_678_p0),.din1(grp_fu_678_p1),.ce(1'b1),.dout(grp_fu_678_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_704_p0),.din1(grp_fu_704_p1),.ce(1'b1),.dout(grp_fu_704_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U22(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_734_p0),.din1(grp_fu_734_p1),.ce(1'b1),.dout(grp_fu_734_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U23(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_758_p0),.din1(grp_fu_758_p1),.ce(1'b1),.dout(grp_fu_758_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U24(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_783_p0),.din1(grp_fu_783_p1),.ce(1'b1),.dout(grp_fu_783_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U25(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_797_p0),.din1(grp_fu_797_p1),.ce(1'b1),.dout(grp_fu_797_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U26(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_811_p0),.din1(grp_fu_811_p1),.ce(1'b1),.dout(grp_fu_811_p2));
SgdLR_sw_urem_23ns_22ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 22 ),.dout_WIDTH( 23 ))
urem_23ns_22ns_23_27_1_U27(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_825_p0),.din1(grp_fu_825_p1),.ce(1'b1),.dout(grp_fu_825_p2));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U28(.din0(v23_1_fu_885_p2),.din1(v23_1_fu_885_p4),.din2(v23_1_fu_885_p6),.din3(v23_1_fu_885_p8),.def(v23_1_fu_885_p9),.sel(reg_618),.dout(v23_1_fu_885_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U29(.din0(v23_2_fu_925_p2),.din1(v23_2_fu_925_p4),.din2(v23_2_fu_925_p6),.din3(v23_2_fu_925_p8),.def(v23_2_fu_925_p9),.sel(trunc_ln51_2_reg_1520),.dout(v23_2_fu_925_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U30(.din0(v23_3_fu_988_p2),.din1(v23_3_fu_988_p4),.din2(v23_3_fu_988_p6),.din3(v23_3_fu_988_p8),.def(v23_3_fu_988_p9),.sel(reg_622),.dout(v23_3_fu_988_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U31(.din0(v23_4_fu_1028_p2),.din1(v23_4_fu_1028_p4),.din2(v23_4_fu_1028_p6),.din3(v23_4_fu_1028_p8),.def(v23_4_fu_1028_p9),.sel(reg_618),.dout(v23_4_fu_1028_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U32(.din0(v23_5_fu_1104_p2),.din1(v23_5_fu_1104_p4),.din2(v23_5_fu_1104_p6),.din3(v23_5_fu_1104_p8),.def(v23_5_fu_1104_p9),.sel(reg_626),.dout(v23_5_fu_1104_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U33(.din0(v23_6_fu_1144_p2),.din1(v23_6_fu_1144_p4),.din2(v23_6_fu_1144_p6),.din3(v23_6_fu_1144_p8),.def(v23_6_fu_1144_p9),.sel(reg_618),.dout(v23_6_fu_1144_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U34(.din0(v23_fu_1192_p2),.din1(v23_fu_1192_p4),.din2(v23_fu_1192_p6),.din3(v23_fu_1192_p8),.def(v23_fu_1192_p9),.sel(reg_626),.dout(v23_fu_1192_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U35(.din0(v23_7_fu_1232_p2),.din1(v23_7_fu_1232_p4),.din2(v23_7_fu_1232_p6),.din3(v23_7_fu_1232_p8),.def(v23_7_fu_1232_p9),.sel(reg_622),.dout(v23_7_fu_1232_p11));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_fu_120 <= 11'd0;
    end else if (((tmp_4_reg_1427 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v19_fu_120 <= add_ln47_fu_831_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln51_1_reg_1431[22 : 1] <= add_ln51_1_fu_668_p4[22 : 1];
        add_ln51_1_reg_1431_pp0_iter1_reg[22 : 1] <= add_ln51_1_reg_1431[22 : 1];
        add_ln51_1_reg_1431_pp0_iter2_reg[22 : 1] <= add_ln51_1_reg_1431_pp0_iter1_reg[22 : 1];
        add_ln51_1_reg_1431_pp0_iter3_reg[22 : 1] <= add_ln51_1_reg_1431_pp0_iter2_reg[22 : 1];
        add_ln51_1_reg_1431_pp0_iter4_reg[22 : 1] <= add_ln51_1_reg_1431_pp0_iter3_reg[22 : 1];
        add_ln51_1_reg_1431_pp0_iter5_reg[22 : 1] <= add_ln51_1_reg_1431_pp0_iter4_reg[22 : 1];
        add_ln51_1_reg_1431_pp0_iter6_reg[22 : 1] <= add_ln51_1_reg_1431_pp0_iter5_reg[22 : 1];
        add_ln51_2_reg_1442[22 : 2] <= add_ln51_2_fu_694_p4[22 : 2];
        add_ln51_2_reg_1442_pp0_iter1_reg[22 : 2] <= add_ln51_2_reg_1442[22 : 2];
        add_ln51_2_reg_1442_pp0_iter2_reg[22 : 2] <= add_ln51_2_reg_1442_pp0_iter1_reg[22 : 2];
        add_ln51_2_reg_1442_pp0_iter3_reg[22 : 2] <= add_ln51_2_reg_1442_pp0_iter2_reg[22 : 2];
        add_ln51_2_reg_1442_pp0_iter4_reg[22 : 2] <= add_ln51_2_reg_1442_pp0_iter3_reg[22 : 2];
        add_ln51_2_reg_1442_pp0_iter5_reg[22 : 2] <= add_ln51_2_reg_1442_pp0_iter4_reg[22 : 2];
        add_ln51_2_reg_1442_pp0_iter6_reg[22 : 2] <= add_ln51_2_reg_1442_pp0_iter5_reg[22 : 2];
        icmp_ln53_reg_1448 <= icmp_ln53_fu_720_p2;
        icmp_ln53_reg_1448_pp0_iter1_reg <= icmp_ln53_reg_1448;
        icmp_ln53_reg_1448_pp0_iter2_reg <= icmp_ln53_reg_1448_pp0_iter1_reg;
        icmp_ln53_reg_1448_pp0_iter3_reg <= icmp_ln53_reg_1448_pp0_iter2_reg;
        icmp_ln53_reg_1448_pp0_iter4_reg <= icmp_ln53_reg_1448_pp0_iter3_reg;
        icmp_ln53_reg_1448_pp0_iter5_reg <= icmp_ln53_reg_1448_pp0_iter4_reg;
        icmp_ln53_reg_1448_pp0_iter6_reg <= icmp_ln53_reg_1448_pp0_iter5_reg;
        icmp_ln53_reg_1448_pp0_iter7_reg <= icmp_ln53_reg_1448_pp0_iter6_reg;
        icmp_ln53_reg_1448_pp0_iter8_reg <= icmp_ln53_reg_1448_pp0_iter7_reg;
        tmp_3_reg_1705 <= {{v19_1_reg_1415_pp0_iter7_reg[8:2]}};
        tmp_4_reg_1427 <= ap_sig_allocacmp_v19_1[32'd10];
        tmp_5_reg_1437 <= {{ap_sig_allocacmp_v19_1[9:2]}};
        v19_1_reg_1415 <= ap_sig_allocacmp_v19_1;
        v19_1_reg_1415_pp0_iter1_reg <= v19_1_reg_1415;
        v19_1_reg_1415_pp0_iter2_reg <= v19_1_reg_1415_pp0_iter1_reg;
        v19_1_reg_1415_pp0_iter3_reg <= v19_1_reg_1415_pp0_iter2_reg;
        v19_1_reg_1415_pp0_iter4_reg <= v19_1_reg_1415_pp0_iter3_reg;
        v19_1_reg_1415_pp0_iter5_reg <= v19_1_reg_1415_pp0_iter4_reg;
        v19_1_reg_1415_pp0_iter6_reg <= v19_1_reg_1415_pp0_iter5_reg;
        v19_1_reg_1415_pp0_iter7_reg <= v19_1_reg_1415_pp0_iter6_reg;
        v19_1_reg_1415_pp0_iter8_reg <= v19_1_reg_1415_pp0_iter7_reg;
        v23_3_reg_1595 <= v23_3_fu_988_p11;
        v23_4_reg_1600 <= v23_4_fu_1028_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln51_3_reg_1452[22 : 2] <= add_ln51_3_fu_726_p4[22 : 2];
        add_ln51_3_reg_1452_pp0_iter1_reg[22 : 2] <= add_ln51_3_reg_1452[22 : 2];
        add_ln51_3_reg_1452_pp0_iter2_reg[22 : 2] <= add_ln51_3_reg_1452_pp0_iter1_reg[22 : 2];
        add_ln51_3_reg_1452_pp0_iter3_reg[22 : 2] <= add_ln51_3_reg_1452_pp0_iter2_reg[22 : 2];
        add_ln51_3_reg_1452_pp0_iter4_reg[22 : 2] <= add_ln51_3_reg_1452_pp0_iter3_reg[22 : 2];
        add_ln51_3_reg_1452_pp0_iter5_reg[22 : 2] <= add_ln51_3_reg_1452_pp0_iter4_reg[22 : 2];
        add_ln51_3_reg_1452_pp0_iter6_reg[22 : 2] <= add_ln51_3_reg_1452_pp0_iter5_reg[22 : 2];
        add_ln51_4_reg_1465[22 : 3] <= add_ln51_4_fu_749_p4[22 : 3];
        add_ln51_4_reg_1465_pp0_iter1_reg[22 : 3] <= add_ln51_4_reg_1465[22 : 3];
        add_ln51_4_reg_1465_pp0_iter2_reg[22 : 3] <= add_ln51_4_reg_1465_pp0_iter1_reg[22 : 3];
        add_ln51_4_reg_1465_pp0_iter3_reg[22 : 3] <= add_ln51_4_reg_1465_pp0_iter2_reg[22 : 3];
        add_ln51_4_reg_1465_pp0_iter4_reg[22 : 3] <= add_ln51_4_reg_1465_pp0_iter3_reg[22 : 3];
        add_ln51_4_reg_1465_pp0_iter5_reg[22 : 3] <= add_ln51_4_reg_1465_pp0_iter4_reg[22 : 3];
        add_ln51_4_reg_1465_pp0_iter6_reg[22 : 3] <= add_ln51_4_reg_1465_pp0_iter5_reg[22 : 3];
        tmp_9_reg_1715 <= {{v19_1_reg_1415_pp0_iter8_reg[8:3]}};
        tmp_s_reg_1458 <= {{v19_1_reg_1415[9:3]}};
        trunc_ln47_reg_1710 <= trunc_ln47_fu_1302_p1;
        v23_5_reg_1665 <= v23_5_fu_1104_p11;
        v23_6_reg_1670 <= v23_6_fu_1144_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln51_5_reg_1476[1] <= add_ln51_5_fu_771_p6[1];
add_ln51_5_reg_1476[22 : 3] <= add_ln51_5_fu_771_p6[22 : 3];
        add_ln51_5_reg_1476_pp0_iter1_reg[1] <= add_ln51_5_reg_1476[1];
add_ln51_5_reg_1476_pp0_iter1_reg[22 : 3] <= add_ln51_5_reg_1476[22 : 3];
        add_ln51_5_reg_1476_pp0_iter2_reg[1] <= add_ln51_5_reg_1476_pp0_iter1_reg[1];
add_ln51_5_reg_1476_pp0_iter2_reg[22 : 3] <= add_ln51_5_reg_1476_pp0_iter1_reg[22 : 3];
        add_ln51_5_reg_1476_pp0_iter3_reg[1] <= add_ln51_5_reg_1476_pp0_iter2_reg[1];
add_ln51_5_reg_1476_pp0_iter3_reg[22 : 3] <= add_ln51_5_reg_1476_pp0_iter2_reg[22 : 3];
        add_ln51_5_reg_1476_pp0_iter4_reg[1] <= add_ln51_5_reg_1476_pp0_iter3_reg[1];
add_ln51_5_reg_1476_pp0_iter4_reg[22 : 3] <= add_ln51_5_reg_1476_pp0_iter3_reg[22 : 3];
        add_ln51_5_reg_1476_pp0_iter5_reg[1] <= add_ln51_5_reg_1476_pp0_iter4_reg[1];
add_ln51_5_reg_1476_pp0_iter5_reg[22 : 3] <= add_ln51_5_reg_1476_pp0_iter4_reg[22 : 3];
        add_ln51_5_reg_1476_pp0_iter6_reg[1] <= add_ln51_5_reg_1476_pp0_iter5_reg[1];
add_ln51_5_reg_1476_pp0_iter6_reg[22 : 3] <= add_ln51_5_reg_1476_pp0_iter5_reg[22 : 3];
        add_ln51_6_reg_1482[22 : 3] <= add_ln51_6_fu_789_p4[22 : 3];
        add_ln51_6_reg_1482_pp0_iter1_reg[22 : 3] <= add_ln51_6_reg_1482[22 : 3];
        add_ln51_6_reg_1482_pp0_iter2_reg[22 : 3] <= add_ln51_6_reg_1482_pp0_iter1_reg[22 : 3];
        add_ln51_6_reg_1482_pp0_iter3_reg[22 : 3] <= add_ln51_6_reg_1482_pp0_iter2_reg[22 : 3];
        add_ln51_6_reg_1482_pp0_iter4_reg[22 : 3] <= add_ln51_6_reg_1482_pp0_iter3_reg[22 : 3];
        add_ln51_6_reg_1482_pp0_iter5_reg[22 : 3] <= add_ln51_6_reg_1482_pp0_iter4_reg[22 : 3];
        add_ln51_6_reg_1482_pp0_iter6_reg[22 : 3] <= add_ln51_6_reg_1482_pp0_iter5_reg[22 : 3];
        tmp_6_reg_1471 <= v19_1_reg_1415[32'd1];
        tmp_6_reg_1471_pp0_iter1_reg <= tmp_6_reg_1471;
        tmp_6_reg_1471_pp0_iter2_reg <= tmp_6_reg_1471_pp0_iter1_reg;
        tmp_6_reg_1471_pp0_iter3_reg <= tmp_6_reg_1471_pp0_iter2_reg;
        tmp_6_reg_1471_pp0_iter4_reg <= tmp_6_reg_1471_pp0_iter3_reg;
        tmp_6_reg_1471_pp0_iter5_reg <= tmp_6_reg_1471_pp0_iter4_reg;
        tmp_6_reg_1471_pp0_iter6_reg <= tmp_6_reg_1471_pp0_iter5_reg;
        tmp_6_reg_1471_pp0_iter7_reg <= tmp_6_reg_1471_pp0_iter6_reg;
        v23_7_reg_1700 <= v23_7_fu_1232_p11;
        v23_reg_1695 <= v23_fu_1192_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln51_7_reg_1494[22 : 3] <= add_ln51_7_fu_817_p4[22 : 3];
        add_ln51_7_reg_1494_pp0_iter1_reg[22 : 3] <= add_ln51_7_reg_1494[22 : 3];
        add_ln51_7_reg_1494_pp0_iter2_reg[22 : 3] <= add_ln51_7_reg_1494_pp0_iter1_reg[22 : 3];
        add_ln51_7_reg_1494_pp0_iter3_reg[22 : 3] <= add_ln51_7_reg_1494_pp0_iter2_reg[22 : 3];
        add_ln51_7_reg_1494_pp0_iter4_reg[22 : 3] <= add_ln51_7_reg_1494_pp0_iter3_reg[22 : 3];
        add_ln51_7_reg_1494_pp0_iter5_reg[22 : 3] <= add_ln51_7_reg_1494_pp0_iter4_reg[22 : 3];
        add_ln51_7_reg_1494_pp0_iter6_reg[22 : 3] <= add_ln51_7_reg_1494_pp0_iter5_reg[22 : 3];
        add_ln51_reg_1488 <= add_ln51_fu_806_p2;
        add_ln51_reg_1488_pp0_iter1_reg <= add_ln51_reg_1488;
        add_ln51_reg_1488_pp0_iter2_reg <= add_ln51_reg_1488_pp0_iter1_reg;
        add_ln51_reg_1488_pp0_iter3_reg <= add_ln51_reg_1488_pp0_iter2_reg;
        add_ln51_reg_1488_pp0_iter4_reg <= add_ln51_reg_1488_pp0_iter3_reg;
        add_ln51_reg_1488_pp0_iter5_reg <= add_ln51_reg_1488_pp0_iter4_reg;
        add_ln51_reg_1488_pp0_iter6_reg <= add_ln51_reg_1488_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        v23_1_reg_1545 <= v23_1_fu_885_p11;
        v23_2_reg_1550 <= v23_2_fu_925_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_618 <= {{grp_fu_588_p2[45:44]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_622 <= {{grp_fu_593_p2[45:44]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_626 <= {{grp_fu_593_p2[45:44]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_630 <= grp_fu_532_p_dout0;
        reg_636 <= grp_fu_584_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln51_2_reg_1520 <= {{grp_fu_588_p2[45:44]}};
    end
end
always @ (*) begin
    if (((tmp_4_reg_1427 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to8 = 1'b1;
    end else begin
        ap_idle_pp0_1to8 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v19_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_1 = v19_fu_120;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_580_p1 = v23_reg_1695;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_580_p1 = v23_5_reg_1665;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_580_p1 = v23_3_reg_1595;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_580_p1 = v23_1_reg_1545;
        end else begin
            grp_fu_580_p1 = 'bx;
        end
    end else begin
        grp_fu_580_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_584_p1 = v23_7_reg_1700;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_584_p1 = v23_6_reg_1670;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_584_p1 = v23_4_reg_1600;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_584_p1 = v23_2_reg_1550;
        end else begin
            grp_fu_584_p1 = 'bx;
        end
    end else begin
        grp_fu_584_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_588_p0 = zext_ln51_21_fu_1068_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_588_p0 = zext_ln51_19_fu_964_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_588_p0 = zext_ln51_17_fu_861_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_588_p0 = zext_ln51_16_fu_841_p1;
    end else begin
        grp_fu_588_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_593_p0 = zext_ln51_15_fu_1084_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_593_p0 = zext_ln51_22_fu_1072_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_593_p0 = zext_ln51_20_fu_968_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_593_p0 = zext_ln51_18_fu_865_p1;
    end else begin
        grp_fu_593_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address0_local = zext_ln51_14_fu_1168_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address0_local = zext_ln51_12_fu_1060_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address0_local = zext_ln51_8_fu_956_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address0_local = zext_ln51_4_fu_853_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address1_local = zext_ln51_fu_1076_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address1_local = zext_ln51_10_fu_1052_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address1_local = zext_ln51_6_fu_948_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address1_local = zext_ln51_2_fu_845_p1;
    end else begin
        v0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce1_local = 1'b1;
    end else begin
        v0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address0_local = zext_ln51_14_fu_1168_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address0_local = zext_ln51_12_fu_1060_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address0_local = zext_ln51_8_fu_956_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address0_local = zext_ln51_4_fu_853_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address1_local = zext_ln51_fu_1076_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address1_local = zext_ln51_10_fu_1052_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address1_local = zext_ln51_6_fu_948_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address1_local = zext_ln51_2_fu_845_p1;
    end else begin
        v0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce1_local = 1'b1;
    end else begin
        v0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address0_local = zext_ln51_14_fu_1168_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address0_local = zext_ln51_12_fu_1060_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address0_local = zext_ln51_8_fu_956_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_2_address0_local = zext_ln51_4_fu_853_p1;
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address1_local = zext_ln51_fu_1076_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address1_local = zext_ln51_10_fu_1052_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address1_local = zext_ln51_6_fu_948_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_2_address1_local = zext_ln51_2_fu_845_p1;
    end else begin
        v0_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce1_local = 1'b1;
    end else begin
        v0_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address0_local = zext_ln51_14_fu_1168_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address0_local = zext_ln51_12_fu_1060_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address0_local = zext_ln51_8_fu_956_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_3_address0_local = zext_ln51_4_fu_853_p1;
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address1_local = zext_ln51_fu_1076_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address1_local = zext_ln51_10_fu_1052_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address1_local = zext_ln51_6_fu_948_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_3_address1_local = zext_ln51_2_fu_845_p1;
    end else begin
        v0_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce1_local = 1'b1;
    end else begin
        v0_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_1_address0_local = zext_ln51_13_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_1_address0_local = zext_ln51_11_fu_1364_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_1_address0_local = zext_ln51_7_fu_1335_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_1_address0_local = zext_ln51_3_fu_1296_p1;
        end else begin
            v3_1_address0_local = 'bx;
        end
    end else begin
        v3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_1_address1_local = zext_ln48_fu_1370_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_1_address1_local = zext_ln51_9_fu_1351_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_1_address1_local = zext_ln51_5_fu_1312_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_1_address1_local = zext_ln51_1_fu_1273_p1;
        end else begin
            v3_1_address1_local = 'bx;
        end
    end else begin
        v3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_1_ce1_local = 1'b1;
    end else begin
        v3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln53_reg_1448_pp0_iter8_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln53_reg_1448_pp0_iter7_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln53_reg_1448_pp0_iter8_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln53_reg_1448_pp0_iter8_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln53_reg_1448_pp0_iter8_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln53_reg_1448_pp0_iter7_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln53_reg_1448_pp0_iter8_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln53_reg_1448_pp0_iter8_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_1_we1_local = 1'b1;
    end else begin
        v3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_address0_local = zext_ln51_13_fu_1382_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address0_local = zext_ln51_11_fu_1364_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address0_local = zext_ln51_7_fu_1335_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address0_local = zext_ln51_3_fu_1296_p1;
        end else begin
            v3_address0_local = 'bx;
        end
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_address1_local = zext_ln48_fu_1370_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address1_local = zext_ln51_9_fu_1351_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address1_local = zext_ln51_5_fu_1312_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address1_local = zext_ln51_1_fu_1273_p1;
        end else begin
            v3_address1_local = 'bx;
        end
    end else begin
        v3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln53_reg_1448_pp0_iter8_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln53_reg_1448_pp0_iter7_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln53_reg_1448_pp0_iter8_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln53_reg_1448_pp0_iter8_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln53_reg_1448_pp0_iter8_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln53_reg_1448_pp0_iter7_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln53_reg_1448_pp0_iter8_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (icmp_ln53_reg_1448_pp0_iter8_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_we1_local = 1'b1;
    end else begin
        v3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to8 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln47_fu_831_p2 = (v19_1_reg_1415 + 11'd8);
assign add_ln51_1_fu_668_p4 = {{{v5}, {tmp_2_fu_658_p4}}, {1'd1}};
assign add_ln51_2_fu_694_p4 = {{{v5}, {tmp_5_fu_684_p4}}, {2'd2}};
assign add_ln51_3_fu_726_p4 = {{{v5}, {tmp_5_reg_1437}}, {2'd3}};
assign add_ln51_4_fu_749_p4 = {{{v5}, {tmp_s_fu_740_p4}}, {3'd4}};
assign add_ln51_5_fu_771_p6 = {{{{{v5}, {tmp_s_reg_1458}}, {1'd1}}, {tmp_6_fu_764_p3}}, {1'd1}};
assign add_ln51_6_fu_789_p4 = {{{v5}, {tmp_s_reg_1458}}, {3'd6}};
assign add_ln51_7_fu_817_p4 = {{{v5}, {tmp_s_reg_1458}}, {3'd7}};
assign add_ln51_fu_806_p2 = (zext_ln47_fu_803_p1 + tmp);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_532_p_ce = 1'b1;
assign grp_fu_532_p_din0 = v22;
assign grp_fu_532_p_din1 = grp_fu_580_p1;
assign grp_fu_588_p1 = 47'd15270995;
assign grp_fu_593_p1 = 47'd15270995;
assign grp_fu_678_p0 = {{{v5}, {tmp_2_fu_658_p4}}, {1'd1}};
assign grp_fu_678_p1 = 23'd1152000;
assign grp_fu_704_p0 = {{{v5}, {tmp_5_fu_684_p4}}, {2'd2}};
assign grp_fu_704_p1 = 23'd1152000;
assign grp_fu_734_p0 = {{{v5}, {tmp_5_reg_1437}}, {2'd3}};
assign grp_fu_734_p1 = 23'd1152000;
assign grp_fu_758_p0 = {{{v5}, {tmp_s_fu_740_p4}}, {3'd4}};
assign grp_fu_758_p1 = 23'd1152000;
assign grp_fu_783_p0 = {{{{{v5}, {tmp_s_reg_1458}}, {1'd1}}, {tmp_6_fu_764_p3}}, {1'd1}};
assign grp_fu_783_p1 = 23'd1152000;
assign grp_fu_797_p0 = {{{v5}, {tmp_s_reg_1458}}, {3'd6}};
assign grp_fu_797_p1 = 23'd1152000;
assign grp_fu_811_p0 = (zext_ln47_fu_803_p1 + tmp);
assign grp_fu_811_p1 = 23'd1152000;
assign grp_fu_825_p0 = {{{v5}, {tmp_s_reg_1458}}, {3'd7}};
assign grp_fu_825_p1 = 23'd1152000;
assign icmp_ln53_fu_720_p2 = ((tmp_7_fu_710_p4 == 2'd0) ? 1'b1 : 1'b0);
assign or_ln48_1_fu_1288_p3 = {{tmp_3_fu_1279_p4}, {2'd2}};
assign or_ln48_2_fu_1305_p3 = {{tmp_3_reg_1705}, {2'd3}};
assign or_ln48_3_fu_1327_p3 = {{tmp_9_fu_1318_p4}, {3'd4}};
assign or_ln48_4_fu_1341_p5 = {{{{tmp_9_reg_1715}, {1'd1}}, {tmp_6_reg_1471_pp0_iter7_reg}}, {1'd1}};
assign or_ln48_5_fu_1357_p3 = {{tmp_9_reg_1715}, {3'd6}};
assign or_ln48_6_fu_1375_p3 = {{tmp_9_reg_1715}, {3'd7}};
assign or_ln_fu_1265_p3 = {{tmp_1_fu_1256_p4}, {1'd1}};
assign tmp_1_fu_1256_p4 = {{v19_1_reg_1415_pp0_iter7_reg[8:1]}};
assign tmp_2_fu_658_p4 = {{ap_sig_allocacmp_v19_1[9:1]}};
assign tmp_3_fu_1279_p4 = {{v19_1_reg_1415_pp0_iter7_reg[8:2]}};
assign tmp_4_fu_650_p3 = ap_sig_allocacmp_v19_1[32'd10];
assign tmp_5_fu_684_p4 = {{ap_sig_allocacmp_v19_1[9:2]}};
assign tmp_6_fu_764_p3 = v19_1_reg_1415[32'd1];
assign tmp_7_fu_710_p4 = {{ap_sig_allocacmp_v19_1[10:9]}};
assign tmp_9_fu_1318_p4 = {{v19_1_reg_1415_pp0_iter8_reg[8:3]}};
assign tmp_s_fu_740_p4 = {{v19_1_reg_1415[9:3]}};
assign trunc_ln47_fu_1302_p1 = v19_1_reg_1415_pp0_iter8_reg[8:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_address1 = v0_0_address1_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_address1 = v0_1_address1_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_address1 = v0_2_address1_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_2_ce1 = v0_2_ce1_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_address1 = v0_3_address1_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_3_ce1 = v0_3_ce1_local;
assign v23_1_fu_885_p2 = v0_0_q1;
assign v23_1_fu_885_p4 = v0_1_q1;
assign v23_1_fu_885_p6 = v0_2_q1;
assign v23_1_fu_885_p8 = v0_3_q1;
assign v23_1_fu_885_p9 = 'bx;
assign v23_2_fu_925_p2 = v0_0_q0;
assign v23_2_fu_925_p4 = v0_1_q0;
assign v23_2_fu_925_p6 = v0_2_q0;
assign v23_2_fu_925_p8 = v0_3_q0;
assign v23_2_fu_925_p9 = 'bx;
assign v23_3_fu_988_p2 = v0_0_q1;
assign v23_3_fu_988_p4 = v0_1_q1;
assign v23_3_fu_988_p6 = v0_2_q1;
assign v23_3_fu_988_p8 = v0_3_q1;
assign v23_3_fu_988_p9 = 'bx;
assign v23_4_fu_1028_p2 = v0_0_q0;
assign v23_4_fu_1028_p4 = v0_1_q0;
assign v23_4_fu_1028_p6 = v0_2_q0;
assign v23_4_fu_1028_p8 = v0_3_q0;
assign v23_4_fu_1028_p9 = 'bx;
assign v23_5_fu_1104_p2 = v0_0_q1;
assign v23_5_fu_1104_p4 = v0_1_q1;
assign v23_5_fu_1104_p6 = v0_2_q1;
assign v23_5_fu_1104_p8 = v0_3_q1;
assign v23_5_fu_1104_p9 = 'bx;
assign v23_6_fu_1144_p2 = v0_0_q0;
assign v23_6_fu_1144_p4 = v0_1_q0;
assign v23_6_fu_1144_p6 = v0_2_q0;
assign v23_6_fu_1144_p8 = v0_3_q0;
assign v23_6_fu_1144_p9 = 'bx;
assign v23_7_fu_1232_p2 = v0_0_q0;
assign v23_7_fu_1232_p4 = v0_1_q0;
assign v23_7_fu_1232_p6 = v0_2_q0;
assign v23_7_fu_1232_p8 = v0_3_q0;
assign v23_7_fu_1232_p9 = 'bx;
assign v23_fu_1192_p2 = v0_0_q1;
assign v23_fu_1192_p4 = v0_1_q1;
assign v23_fu_1192_p6 = v0_2_q1;
assign v23_fu_1192_p8 = v0_3_q1;
assign v23_fu_1192_p9 = 'bx;
assign v3_1_address0 = v3_1_address0_local;
assign v3_1_address1 = v3_1_address1_local;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_ce1 = v3_1_ce1_local;
assign v3_1_d0 = reg_636;
assign v3_1_d1 = reg_630;
assign v3_1_we0 = v3_1_we0_local;
assign v3_1_we1 = v3_1_we1_local;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign v3_d0 = reg_636;
assign v3_d1 = reg_630;
assign v3_we0 = v3_we0_local;
assign v3_we1 = v3_we1_local;
assign zext_ln47_fu_803_p1 = v19_1_reg_1415;
assign zext_ln48_fu_1370_p1 = trunc_ln47_reg_1710;
assign zext_ln51_10_fu_1052_p1 = grp_fu_783_p2;
assign zext_ln51_11_fu_1364_p1 = or_ln48_5_fu_1357_p3;
assign zext_ln51_12_fu_1060_p1 = grp_fu_797_p2;
assign zext_ln51_13_fu_1382_p1 = or_ln48_6_fu_1375_p3;
assign zext_ln51_14_fu_1168_p1 = grp_fu_825_p2;
assign zext_ln51_15_fu_1084_p1 = add_ln51_reg_1488_pp0_iter6_reg;
assign zext_ln51_16_fu_841_p1 = add_ln51_1_reg_1431_pp0_iter6_reg;
assign zext_ln51_17_fu_861_p1 = add_ln51_2_reg_1442_pp0_iter6_reg;
assign zext_ln51_18_fu_865_p1 = add_ln51_3_reg_1452_pp0_iter6_reg;
assign zext_ln51_19_fu_964_p1 = add_ln51_4_reg_1465_pp0_iter6_reg;
assign zext_ln51_1_fu_1273_p1 = or_ln_fu_1265_p3;
assign zext_ln51_20_fu_968_p1 = add_ln51_5_reg_1476_pp0_iter6_reg;
assign zext_ln51_21_fu_1068_p1 = add_ln51_6_reg_1482_pp0_iter6_reg;
assign zext_ln51_22_fu_1072_p1 = add_ln51_7_reg_1494_pp0_iter6_reg;
assign zext_ln51_2_fu_845_p1 = grp_fu_678_p2;
assign zext_ln51_3_fu_1296_p1 = or_ln48_1_fu_1288_p3;
assign zext_ln51_4_fu_853_p1 = grp_fu_704_p2;
assign zext_ln51_5_fu_1312_p1 = or_ln48_2_fu_1305_p3;
assign zext_ln51_6_fu_948_p1 = grp_fu_734_p2;
assign zext_ln51_7_fu_1335_p1 = or_ln48_3_fu_1327_p3;
assign zext_ln51_8_fu_956_p1 = grp_fu_758_p2;
assign zext_ln51_9_fu_1351_p1 = or_ln48_4_fu_1341_p5;
assign zext_ln51_fu_1076_p1 = grp_fu_811_p2;
always @ (posedge ap_clk) begin
    add_ln51_1_reg_1431[0] <= 1'b1;
    add_ln51_1_reg_1431_pp0_iter1_reg[0] <= 1'b1;
    add_ln51_1_reg_1431_pp0_iter2_reg[0] <= 1'b1;
    add_ln51_1_reg_1431_pp0_iter3_reg[0] <= 1'b1;
    add_ln51_1_reg_1431_pp0_iter4_reg[0] <= 1'b1;
    add_ln51_1_reg_1431_pp0_iter5_reg[0] <= 1'b1;
    add_ln51_1_reg_1431_pp0_iter6_reg[0] <= 1'b1;
    add_ln51_2_reg_1442[1:0] <= 2'b10;
    add_ln51_2_reg_1442_pp0_iter1_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1442_pp0_iter2_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1442_pp0_iter3_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1442_pp0_iter4_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1442_pp0_iter5_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1442_pp0_iter6_reg[1:0] <= 2'b10;
    add_ln51_3_reg_1452[1:0] <= 2'b11;
    add_ln51_3_reg_1452_pp0_iter1_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1452_pp0_iter2_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1452_pp0_iter3_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1452_pp0_iter4_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1452_pp0_iter5_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1452_pp0_iter6_reg[1:0] <= 2'b11;
    add_ln51_4_reg_1465[2:0] <= 3'b100;
    add_ln51_4_reg_1465_pp0_iter1_reg[2:0] <= 3'b100;
    add_ln51_4_reg_1465_pp0_iter2_reg[2:0] <= 3'b100;
    add_ln51_4_reg_1465_pp0_iter3_reg[2:0] <= 3'b100;
    add_ln51_4_reg_1465_pp0_iter4_reg[2:0] <= 3'b100;
    add_ln51_4_reg_1465_pp0_iter5_reg[2:0] <= 3'b100;
    add_ln51_4_reg_1465_pp0_iter6_reg[2:0] <= 3'b100;
    add_ln51_5_reg_1476[0] <= 1'b1;
    add_ln51_5_reg_1476[2] <= 1'b1;
    add_ln51_5_reg_1476_pp0_iter1_reg[0] <= 1'b1;
    add_ln51_5_reg_1476_pp0_iter1_reg[2] <= 1'b1;
    add_ln51_5_reg_1476_pp0_iter2_reg[0] <= 1'b1;
    add_ln51_5_reg_1476_pp0_iter2_reg[2] <= 1'b1;
    add_ln51_5_reg_1476_pp0_iter3_reg[0] <= 1'b1;
    add_ln51_5_reg_1476_pp0_iter3_reg[2] <= 1'b1;
    add_ln51_5_reg_1476_pp0_iter4_reg[0] <= 1'b1;
    add_ln51_5_reg_1476_pp0_iter4_reg[2] <= 1'b1;
    add_ln51_5_reg_1476_pp0_iter5_reg[0] <= 1'b1;
    add_ln51_5_reg_1476_pp0_iter5_reg[2] <= 1'b1;
    add_ln51_5_reg_1476_pp0_iter6_reg[0] <= 1'b1;
    add_ln51_5_reg_1476_pp0_iter6_reg[2] <= 1'b1;
    add_ln51_6_reg_1482[2:0] <= 3'b110;
    add_ln51_6_reg_1482_pp0_iter1_reg[2:0] <= 3'b110;
    add_ln51_6_reg_1482_pp0_iter2_reg[2:0] <= 3'b110;
    add_ln51_6_reg_1482_pp0_iter3_reg[2:0] <= 3'b110;
    add_ln51_6_reg_1482_pp0_iter4_reg[2:0] <= 3'b110;
    add_ln51_6_reg_1482_pp0_iter5_reg[2:0] <= 3'b110;
    add_ln51_6_reg_1482_pp0_iter6_reg[2:0] <= 3'b110;
    add_ln51_7_reg_1494[2:0] <= 3'b111;
    add_ln51_7_reg_1494_pp0_iter1_reg[2:0] <= 3'b111;
    add_ln51_7_reg_1494_pp0_iter2_reg[2:0] <= 3'b111;
    add_ln51_7_reg_1494_pp0_iter3_reg[2:0] <= 3'b111;
    add_ln51_7_reg_1494_pp0_iter4_reg[2:0] <= 3'b111;
    add_ln51_7_reg_1494_pp0_iter5_reg[2:0] <= 3'b111;
    add_ln51_7_reg_1494_pp0_iter6_reg[2:0] <= 3'b111;
end
endmodule 