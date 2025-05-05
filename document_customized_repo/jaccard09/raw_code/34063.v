module ss_sort_hist (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,bucket_2_address0,bucket_2_ce0,bucket_2_we0,bucket_2_d0,bucket_2_q0,bucket_3_address0,bucket_3_ce0,bucket_3_we0,bucket_3_d0,bucket_3_q0,bucket_4_address0,bucket_4_ce0,bucket_4_we0,bucket_4_d0,bucket_4_q0,bucket_5_address0,bucket_5_ce0,bucket_5_we0,bucket_5_d0,bucket_5_q0,bucket_6_address0,bucket_6_ce0,bucket_6_we0,bucket_6_d0,bucket_6_q0,bucket_7_address0,bucket_7_ce0,bucket_7_we0,bucket_7_d0,bucket_7_q0,b_0_address0,b_0_ce0,b_0_q0,b_0_address1,b_0_ce1,b_0_q1,b_1_address0,b_1_ce0,b_1_q0,b_1_address1,b_1_ce1,b_1_q1,b_2_address0,b_2_ce0,b_2_q0,b_2_address1,b_2_ce1,b_2_q1,b_3_address0,b_3_ce0,b_3_q0,b_3_address1,b_3_ce1,b_3_q1,b_4_address0,b_4_ce0,b_4_q0,b_4_address1,b_4_ce1,b_4_q1,b_5_address0,b_5_ce0,b_5_q0,b_5_address1,b_5_ce1,b_5_q1,b_6_address0,b_6_ce0,b_6_q0,b_6_address1,b_6_ce1,b_6_q1,b_7_address0,b_7_ce0,b_7_q0,b_7_address1,b_7_ce1,b_7_q1,exp); 
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
output  [7:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
input  [31:0] bucket_0_q0;
output  [7:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
input  [31:0] bucket_1_q0;
output  [7:0] bucket_2_address0;
output   bucket_2_ce0;
output   bucket_2_we0;
output  [31:0] bucket_2_d0;
input  [31:0] bucket_2_q0;
output  [7:0] bucket_3_address0;
output   bucket_3_ce0;
output   bucket_3_we0;
output  [31:0] bucket_3_d0;
input  [31:0] bucket_3_q0;
output  [7:0] bucket_4_address0;
output   bucket_4_ce0;
output   bucket_4_we0;
output  [31:0] bucket_4_d0;
input  [31:0] bucket_4_q0;
output  [7:0] bucket_5_address0;
output   bucket_5_ce0;
output   bucket_5_we0;
output  [31:0] bucket_5_d0;
input  [31:0] bucket_5_q0;
output  [7:0] bucket_6_address0;
output   bucket_6_ce0;
output   bucket_6_we0;
output  [31:0] bucket_6_d0;
input  [31:0] bucket_6_q0;
output  [7:0] bucket_7_address0;
output   bucket_7_ce0;
output   bucket_7_we0;
output  [31:0] bucket_7_d0;
input  [31:0] bucket_7_q0;
output  [7:0] b_0_address0;
output   b_0_ce0;
input  [31:0] b_0_q0;
output  [7:0] b_0_address1;
output   b_0_ce1;
input  [31:0] b_0_q1;
output  [7:0] b_1_address0;
output   b_1_ce0;
input  [31:0] b_1_q0;
output  [7:0] b_1_address1;
output   b_1_ce1;
input  [31:0] b_1_q1;
output  [7:0] b_2_address0;
output   b_2_ce0;
input  [31:0] b_2_q0;
output  [7:0] b_2_address1;
output   b_2_ce1;
input  [31:0] b_2_q1;
output  [7:0] b_3_address0;
output   b_3_ce0;
input  [31:0] b_3_q0;
output  [7:0] b_3_address1;
output   b_3_ce1;
input  [31:0] b_3_q1;
output  [7:0] b_4_address0;
output   b_4_ce0;
input  [31:0] b_4_q0;
output  [7:0] b_4_address1;
output   b_4_ce1;
input  [31:0] b_4_q1;
output  [7:0] b_5_address0;
output   b_5_ce0;
input  [31:0] b_5_q0;
output  [7:0] b_5_address1;
output   b_5_ce1;
input  [31:0] b_5_q1;
output  [7:0] b_6_address0;
output   b_6_ce0;
input  [31:0] b_6_q0;
output  [7:0] b_6_address1;
output   b_6_ce1;
input  [31:0] b_6_q1;
output  [7:0] b_7_address0;
output   b_7_ce0;
input  [31:0] b_7_q0;
output  [7:0] b_7_address1;
output   b_7_ce1;
input  [31:0] b_7_q1;
input  [4:0] exp;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_3_reg_1369;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [31:0] reg_618;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_622;
reg   [31:0] reg_626;
reg   [31:0] reg_630;
reg   [31:0] reg_634;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_638;
reg   [31:0] reg_642;
reg   [31:0] reg_646;
wire   [31:0] exp_cast6_fu_706_p1;
reg   [31:0] exp_cast6_reg_1341;
wire    ap_block_pp0_stage0_11001;
reg   [9:0] blockID_2_reg_1361;
wire   [0:0] tmp_3_fu_718_p3;
wire   [0:0] icmp_ln58_1_fu_766_p2;
reg   [0:0] icmp_ln58_1_reg_1398;
reg   [0:0] icmp_ln58_1_reg_1398_pp0_iter1_reg;
wire   [0:0] icmp_ln58_3_fu_818_p2;
reg   [0:0] icmp_ln58_3_reg_1422;
reg   [0:0] icmp_ln58_3_reg_1422_pp0_iter1_reg;
wire   [0:0] icmp_ln58_5_fu_832_p2;
reg   [0:0] icmp_ln58_5_reg_1446;
reg   [0:0] icmp_ln58_5_reg_1446_pp0_iter1_reg;
reg   [31:0] b_0_load_reg_1465;
reg   [31:0] b_1_load_reg_1470;
reg   [31:0] b_2_load_reg_1475;
reg   [31:0] b_3_load_reg_1480;
reg   [31:0] b_4_load_reg_1485;
reg   [31:0] b_5_load_reg_1490;
reg   [31:0] b_6_load_reg_1495;
reg   [31:0] b_7_load_reg_1500;
reg   [31:0] b_0_load_2_reg_1505;
reg   [31:0] b_1_load_2_reg_1510;
reg   [31:0] b_2_load_2_reg_1515;
reg   [31:0] b_3_load_2_reg_1520;
reg   [31:0] b_4_load_2_reg_1525;
reg   [31:0] b_5_load_2_reg_1530;
reg   [31:0] b_6_load_2_reg_1535;
reg   [31:0] b_7_load_2_reg_1540;
wire   [1:0] trunc_ln57_1_fu_842_p1;
reg   [1:0] trunc_ln57_1_reg_1545;
wire   [1:0] trunc_ln57_5_fu_850_p1;
reg   [1:0] trunc_ln57_5_reg_1550;
wire   [5:0] tmp_s_fu_861_p4;
reg   [5:0] tmp_s_reg_1555;
wire    ap_block_pp0_stage3_11001;
reg   [7:0] bucket_1_addr_reg_1569;
reg   [7:0] bucket_5_addr_reg_1574;
reg   [7:0] bucket_2_addr_reg_1579;
reg   [7:0] bucket_6_addr_reg_1584;
wire   [1:0] trunc_ln57_9_fu_900_p1;
reg   [1:0] trunc_ln57_9_reg_1589;
wire   [9:0] add_ln57_fu_908_p2;
reg   [9:0] add_ln57_reg_1594;
wire   [1:0] trunc_ln57_13_fu_914_p1;
reg   [1:0] trunc_ln57_13_reg_1599;
wire   [0:0] icmp_ln58_7_fu_921_p2;
reg   [0:0] icmp_ln58_7_reg_1604;
wire   [0:0] icmp_ln58_fu_927_p2;
reg   [0:0] icmp_ln58_reg_1612;
wire   [1:0] trunc_ln57_2_fu_937_p1;
reg   [1:0] trunc_ln57_2_reg_1616;
wire   [1:0] trunc_ln57_6_fu_945_p1;
reg   [1:0] trunc_ln57_6_reg_1621;
reg   [7:0] bucket_3_addr_reg_1626;
reg   [7:0] bucket_7_addr_reg_1631;
wire   [10:0] zext_ln57_3_fu_961_p1;
reg   [10:0] zext_ln57_3_reg_1636;
reg   [7:0] bucket_0_addr_reg_1643;
reg   [7:0] bucket_4_addr_reg_1648;
wire   [1:0] trunc_ln57_10_fu_1037_p1;
reg   [1:0] trunc_ln57_10_reg_1653;
wire   [1:0] trunc_ln57_14_fu_1045_p1;
reg   [1:0] trunc_ln57_14_reg_1658;
wire   [1:0] trunc_ln57_3_fu_1065_p1;
reg   [1:0] trunc_ln57_3_reg_1663;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [7:0] bucket_5_addr_18_reg_1668;
reg   [7:0] bucket_1_addr_18_reg_1673;
wire   [1:0] trunc_ln57_7_fu_1085_p1;
reg   [1:0] trunc_ln57_7_reg_1678;
reg   [7:0] bucket_6_addr_18_reg_1683;
reg   [7:0] bucket_2_addr_18_reg_1688;
wire   [1:0] trunc_ln57_11_fu_1135_p1;
reg   [1:0] trunc_ln57_11_reg_1693;
reg   [7:0] bucket_7_addr_21_reg_1698;
reg   [7:0] bucket_3_addr_18_reg_1703;
wire   [1:0] trunc_ln57_15_fu_1171_p1;
reg   [1:0] trunc_ln57_15_reg_1708;
reg   [7:0] bucket_0_addr_18_reg_1713;
reg   [7:0] bucket_4_addr_18_reg_1718;
wire   [1:0] trunc_ln57_4_fu_1179_p1;
reg   [1:0] trunc_ln57_4_reg_1723;
wire   [1:0] trunc_ln57_8_fu_1187_p1;
reg   [1:0] trunc_ln57_8_reg_1728;
reg   [7:0] bucket_5_addr_19_reg_1733;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [7:0] bucket_1_addr_19_reg_1738;
reg   [7:0] bucket_6_addr_19_reg_1743;
reg   [7:0] bucket_2_addr_19_reg_1748;
wire   [1:0] trunc_ln57_12_fu_1219_p1;
reg   [1:0] trunc_ln57_12_reg_1753;
wire   [1:0] trunc_ln57_16_fu_1227_p1;
reg   [1:0] trunc_ln57_16_reg_1758;
reg   [7:0] bucket_7_addr_22_reg_1763;
reg   [7:0] bucket_3_addr_19_reg_1768;
reg   [7:0] lshr_ln52_14_reg_1773;
reg   [7:0] bucket_0_addr_19_reg_1778;
reg   [7:0] bucket_4_addr_19_reg_1783;
reg   [7:0] bucket_5_addr_20_reg_1788;
reg   [7:0] bucket_1_addr_20_reg_1793;
reg   [7:0] bucket_6_addr_20_reg_1798;
reg   [7:0] bucket_2_addr_20_reg_1803;
reg   [7:0] bucket_7_addr_23_reg_1808;
reg   [7:0] bucket_3_addr_20_reg_1813;
reg   [7:0] bucket_0_addr_20_reg_1818;
reg   [7:0] bucket_4_addr_20_reg_1823;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln57_fu_736_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln57_2_fu_790_p1;
wire   [63:0] zext_ln52_fu_877_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln52_4_fu_890_p1;
wire   [63:0] zext_ln52_8_fu_955_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln52_12_fu_987_p1;
wire   [63:0] zext_ln52_1_fu_1055_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln52_5_fu_1075_p1;
wire   [63:0] zext_ln52_9_fu_1125_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln52_13_fu_1161_p1;
wire   [63:0] zext_ln52_2_fu_1197_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln52_6_fu_1209_p1;
wire   [63:0] zext_ln52_10_fu_1237_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln52_14_fu_1265_p1;
wire   [63:0] zext_ln52_3_fu_1299_p1;
wire   [63:0] zext_ln52_7_fu_1311_p1;
wire   [63:0] zext_ln52_11_fu_1323_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln52_15_fu_1329_p1;
reg   [9:0] blockID_fu_112;
wire   [9:0] add_ln54_fu_993_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_blockID_2;
reg    b_0_ce1_local;
reg    b_0_ce0_local;
reg    b_1_ce1_local;
reg    b_1_ce0_local;
reg    b_2_ce1_local;
reg    b_2_ce0_local;
reg    b_3_ce1_local;
reg    b_3_ce0_local;
reg    b_4_ce1_local;
reg    b_4_ce0_local;
reg    b_5_ce1_local;
reg    b_5_ce0_local;
reg    b_6_ce1_local;
reg    b_6_ce0_local;
reg    b_7_ce1_local;
reg    b_7_ce0_local;
reg    bucket_1_ce0_local;
reg   [7:0] bucket_1_address0_local;
reg    bucket_1_we0_local;
reg   [31:0] bucket_1_d0_local;
wire   [31:0] add_ln58_fu_1010_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] grp_fu_657_p2;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage2;
reg    bucket_5_ce0_local;
reg   [7:0] bucket_5_address0_local;
reg    bucket_5_we0_local;
reg   [31:0] bucket_5_d0_local;
wire   [31:0] grp_fu_650_p2;
reg    bucket_2_ce0_local;
reg   [7:0] bucket_2_address0_local;
reg    bucket_2_we0_local;
reg   [31:0] bucket_2_d0_local;
wire   [31:0] add_ln58_7_fu_1025_p2;
wire   [31:0] grp_fu_671_p2;
reg    bucket_6_ce0_local;
reg   [7:0] bucket_6_address0_local;
reg    bucket_6_we0_local;
reg   [31:0] bucket_6_d0_local;
wire   [31:0] grp_fu_664_p2;
reg    bucket_3_ce0_local;
reg   [7:0] bucket_3_address0_local;
reg    bucket_3_we0_local;
reg   [31:0] bucket_3_d0_local;
wire   [31:0] add_ln58_14_fu_1096_p2;
wire   [31:0] grp_fu_685_p2;
reg    bucket_7_ce0_local;
reg   [7:0] bucket_7_address0_local;
reg    bucket_7_we0_local;
reg   [31:0] bucket_7_d0_local;
wire   [31:0] grp_fu_678_p2;
reg    bucket_0_ce0_local;
reg   [7:0] bucket_0_address0_local;
reg    bucket_0_we0_local;
reg   [31:0] bucket_0_d0_local;
wire   [31:0] add_ln58_21_fu_1111_p2;
wire   [31:0] grp_fu_692_p2;
reg    bucket_4_ce0_local;
reg   [7:0] bucket_4_address0_local;
reg    bucket_4_we0_local;
reg   [31:0] bucket_4_d0_local;
wire   [31:0] grp_fu_699_p2;
wire   [7:0] lshr_ln_fu_726_p4;
wire   [1:0] tmp_fu_748_p4;
wire   [2:0] or_ln_fu_758_p3;
wire   [6:0] tmp_8_fu_772_p4;
wire   [7:0] or_ln57_2_fu_782_p3;
wire   [0:0] tmp_4_fu_802_p3;
wire   [2:0] or_ln2_fu_810_p3;
wire   [2:0] or_ln52_1_fu_824_p3;
wire   [31:0] ashr_ln57_fu_838_p2;
wire   [31:0] ashr_ln57_4_fu_846_p2;
wire   [8:0] trunc_ln54_fu_854_p1;
wire   [7:0] lshr_ln5_fu_870_p3;
wire   [7:0] lshr_ln52_4_fu_883_p3;
wire   [31:0] ashr_ln57_8_fu_896_p2;
wire   [9:0] zext_ln57_1_fu_857_p1;
wire   [31:0] ashr_ln57_12_fu_904_p2;
wire   [2:0] trunc_ln57_fu_918_p1;
wire   [31:0] ashr_ln57_1_fu_933_p2;
wire   [31:0] ashr_ln57_5_fu_941_p2;
wire   [7:0] lshr_ln52_8_fu_949_p3;
wire   [10:0] shl_ln_fu_964_p3;
wire   [10:0] bucket_indx_fu_971_p2;
wire   [7:0] lshr_ln52_11_fu_977_p4;
wire   [31:0] select_ln58_fu_1003_p3;
wire   [31:0] select_ln58_1_fu_1018_p3;
wire   [31:0] ashr_ln57_9_fu_1033_p2;
wire   [31:0] ashr_ln57_13_fu_1041_p2;
wire   [7:0] lshr_ln52_1_fu_1049_p3;
wire   [31:0] ashr_ln57_2_fu_1061_p2;
wire   [7:0] lshr_ln52_5_fu_1069_p3;
wire   [31:0] ashr_ln57_6_fu_1081_p2;
wire   [31:0] select_ln58_2_fu_1089_p3;
wire   [31:0] select_ln58_3_fu_1104_p3;
wire   [7:0] lshr_ln52_9_fu_1119_p3;
wire   [31:0] ashr_ln57_10_fu_1131_p2;
wire   [10:0] shl_ln57_1_fu_1139_p3;
wire   [10:0] bucket_indx_1_fu_1146_p2;
wire   [7:0] lshr_ln52_12_fu_1151_p4;
wire   [31:0] ashr_ln57_14_fu_1167_p2;
wire   [31:0] ashr_ln57_3_fu_1175_p2;
wire   [31:0] ashr_ln57_7_fu_1183_p2;
wire   [7:0] lshr_ln52_2_fu_1191_p3;
wire   [7:0] lshr_ln52_6_fu_1203_p3;
wire   [31:0] ashr_ln57_11_fu_1215_p2;
wire   [31:0] ashr_ln57_15_fu_1223_p2;
wire   [7:0] lshr_ln52_s_fu_1231_p3;
wire   [10:0] shl_ln57_2_fu_1243_p3;
wire   [10:0] bucket_indx_2_fu_1250_p2;
wire   [7:0] lshr_ln52_13_fu_1255_p4;
wire   [10:0] shl_ln57_3_fu_1271_p3;
wire   [10:0] bucket_indx_3_fu_1278_p2;
wire   [7:0] lshr_ln52_3_fu_1293_p3;
wire   [7:0] lshr_ln52_7_fu_1305_p3;
wire   [7:0] lshr_ln52_10_fu_1317_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 blockID_fu_112 = 10'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_fu_112 <= 10'd0;
    end else if (((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        blockID_fu_112 <= add_ln54_fu_993_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln57_reg_1594 <= add_ln57_fu_908_p2;
        bucket_1_addr_reg_1569 <= zext_ln52_fu_877_p1;
        bucket_2_addr_reg_1579 <= zext_ln52_4_fu_890_p1;
        bucket_5_addr_reg_1574 <= zext_ln52_fu_877_p1;
        bucket_6_addr_reg_1584 <= zext_ln52_4_fu_890_p1;
        tmp_s_reg_1555 <= {{blockID_2_reg_1361[8:3]}};
        trunc_ln57_13_reg_1599 <= trunc_ln57_13_fu_914_p1;
        trunc_ln57_9_reg_1589 <= trunc_ln57_9_fu_900_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_0_load_2_reg_1505 <= b_0_q0;
        b_0_load_reg_1465 <= b_0_q1;
        b_1_load_2_reg_1510 <= b_1_q0;
        b_1_load_reg_1470 <= b_1_q1;
        b_2_load_2_reg_1515 <= b_2_q0;
        b_2_load_reg_1475 <= b_2_q1;
        b_3_load_2_reg_1520 <= b_3_q0;
        b_3_load_reg_1480 <= b_3_q1;
        b_4_load_2_reg_1525 <= b_4_q0;
        b_4_load_reg_1485 <= b_4_q1;
        b_5_load_2_reg_1530 <= b_5_q0;
        b_5_load_reg_1490 <= b_5_q1;
        b_6_load_2_reg_1535 <= b_6_q0;
        b_6_load_reg_1495 <= b_6_q1;
        b_7_load_2_reg_1540 <= b_7_q0;
        b_7_load_reg_1500 <= b_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_2_reg_1361 <= ap_sig_allocacmp_blockID_2;
        bucket_1_addr_20_reg_1793 <= zext_ln52_3_fu_1299_p1;
        bucket_2_addr_20_reg_1803 <= zext_ln52_7_fu_1311_p1;
        bucket_5_addr_20_reg_1788 <= zext_ln52_3_fu_1299_p1;
        bucket_6_addr_20_reg_1798 <= zext_ln52_7_fu_1311_p1;
        exp_cast6_reg_1341[4 : 0] <= exp_cast6_fu_706_p1[4 : 0];
        icmp_ln58_1_reg_1398 <= icmp_ln58_1_fu_766_p2;
        icmp_ln58_1_reg_1398_pp0_iter1_reg <= icmp_ln58_1_reg_1398;
        icmp_ln58_3_reg_1422 <= icmp_ln58_3_fu_818_p2;
        icmp_ln58_3_reg_1422_pp0_iter1_reg <= icmp_ln58_3_reg_1422;
        icmp_ln58_5_reg_1446 <= icmp_ln58_5_fu_832_p2;
        icmp_ln58_5_reg_1446_pp0_iter1_reg <= icmp_ln58_5_reg_1446;
        tmp_3_reg_1369 <= ap_sig_allocacmp_blockID_2[32'd9];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_0_addr_18_reg_1713 <= zext_ln52_13_fu_1161_p1;
        bucket_3_addr_18_reg_1703 <= zext_ln52_9_fu_1125_p1;
        bucket_4_addr_18_reg_1718 <= zext_ln52_13_fu_1161_p1;
        bucket_7_addr_21_reg_1698 <= zext_ln52_9_fu_1125_p1;
        trunc_ln57_11_reg_1693 <= trunc_ln57_11_fu_1135_p1;
        trunc_ln57_15_reg_1708 <= trunc_ln57_15_fu_1171_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        bucket_0_addr_19_reg_1778 <= zext_ln52_14_fu_1265_p1;
        bucket_3_addr_19_reg_1768 <= zext_ln52_10_fu_1237_p1;
        bucket_4_addr_19_reg_1783 <= zext_ln52_14_fu_1265_p1;
        bucket_7_addr_22_reg_1763 <= zext_ln52_10_fu_1237_p1;
        lshr_ln52_14_reg_1773 <= {{bucket_indx_3_fu_1278_p2[10:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_addr_20_reg_1818 <= zext_ln52_15_fu_1329_p1;
        bucket_3_addr_20_reg_1813 <= zext_ln52_11_fu_1323_p1;
        bucket_4_addr_20_reg_1823 <= zext_ln52_15_fu_1329_p1;
        bucket_7_addr_23_reg_1808 <= zext_ln52_11_fu_1323_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_0_addr_reg_1643 <= zext_ln52_12_fu_987_p1;
        bucket_3_addr_reg_1626 <= zext_ln52_8_fu_955_p1;
        bucket_4_addr_reg_1648 <= zext_ln52_12_fu_987_p1;
        bucket_7_addr_reg_1631 <= zext_ln52_8_fu_955_p1;
        icmp_ln58_7_reg_1604 <= icmp_ln58_7_fu_921_p2;
        icmp_ln58_reg_1612 <= icmp_ln58_fu_927_p2;
        trunc_ln57_2_reg_1616 <= trunc_ln57_2_fu_937_p1;
        trunc_ln57_6_reg_1621 <= trunc_ln57_6_fu_945_p1;
        zext_ln57_3_reg_1636[9 : 0] <= zext_ln57_3_fu_961_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_1_addr_18_reg_1673 <= zext_ln52_1_fu_1055_p1;
        bucket_2_addr_18_reg_1688 <= zext_ln52_5_fu_1075_p1;
        bucket_5_addr_18_reg_1668 <= zext_ln52_1_fu_1055_p1;
        bucket_6_addr_18_reg_1683 <= zext_ln52_5_fu_1075_p1;
        trunc_ln57_3_reg_1663 <= trunc_ln57_3_fu_1065_p1;
        trunc_ln57_7_reg_1678 <= trunc_ln57_7_fu_1085_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_1_addr_19_reg_1738 <= zext_ln52_2_fu_1197_p1;
        bucket_2_addr_19_reg_1748 <= zext_ln52_6_fu_1209_p1;
        bucket_5_addr_19_reg_1733 <= zext_ln52_2_fu_1197_p1;
        bucket_6_addr_19_reg_1743 <= zext_ln52_6_fu_1209_p1;
        trunc_ln57_12_reg_1753 <= trunc_ln57_12_fu_1219_p1;
        trunc_ln57_16_reg_1758 <= trunc_ln57_16_fu_1227_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_618 <= bucket_1_q0;
        reg_622 <= bucket_5_q0;
        reg_626 <= bucket_2_q0;
        reg_630 <= bucket_6_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_634 <= bucket_3_q0;
        reg_638 <= bucket_7_q0;
        reg_642 <= bucket_0_q0;
        reg_646 <= bucket_4_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        trunc_ln57_10_reg_1653 <= trunc_ln57_10_fu_1037_p1;
        trunc_ln57_14_reg_1658 <= trunc_ln57_14_fu_1045_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln57_1_reg_1545 <= trunc_ln57_1_fu_842_p1;
        trunc_ln57_5_reg_1550 <= trunc_ln57_5_fu_850_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        trunc_ln57_4_reg_1723 <= trunc_ln57_4_fu_1179_p1;
        trunc_ln57_8_reg_1728 <= trunc_ln57_8_fu_1187_p1;
    end
end
always @ (*) begin
    if (((tmp_3_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_blockID_2 = 10'd0;
    end else begin
        ap_sig_allocacmp_blockID_2 = blockID_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_0_ce0_local = 1'b1;
    end else begin
        b_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_0_ce1_local = 1'b1;
    end else begin
        b_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_1_ce0_local = 1'b1;
    end else begin
        b_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_1_ce1_local = 1'b1;
    end else begin
        b_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_2_ce0_local = 1'b1;
    end else begin
        b_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_2_ce1_local = 1'b1;
    end else begin
        b_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_3_ce0_local = 1'b1;
    end else begin
        b_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_3_ce1_local = 1'b1;
    end else begin
        b_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_4_ce0_local = 1'b1;
    end else begin
        b_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_4_ce1_local = 1'b1;
    end else begin
        b_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_5_ce0_local = 1'b1;
    end else begin
        b_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_5_ce1_local = 1'b1;
    end else begin
        b_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_6_ce0_local = 1'b1;
    end else begin
        b_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_6_ce1_local = 1'b1;
    end else begin
        b_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_7_ce0_local = 1'b1;
    end else begin
        b_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_7_ce1_local = 1'b1;
    end else begin
        b_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_address0_local = bucket_0_addr_20_reg_1818;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_address0_local = zext_ln52_15_fu_1329_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address0_local = bucket_0_addr_19_reg_1778;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        bucket_0_address0_local = zext_ln52_14_fu_1265_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_0_address0_local = bucket_0_addr_18_reg_1713;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_0_address0_local = zext_ln52_13_fu_1161_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_0_address0_local = bucket_0_addr_reg_1643;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_0_address0_local = zext_ln52_12_fu_987_p1;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_0_d0_local = grp_fu_692_p2;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_0_d0_local = add_ln58_21_fu_1111_p2;
    end else begin
        bucket_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln58_5_reg_1446 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln58_5_reg_1446 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln58_5_reg_1446_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln58_5_reg_1446 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_address0_local = bucket_1_addr_20_reg_1793;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_address0_local = zext_ln52_3_fu_1299_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_1_address0_local = bucket_1_addr_19_reg_1738;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_1_address0_local = zext_ln52_2_fu_1197_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_1_address0_local = bucket_1_addr_18_reg_1673;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_1_address0_local = zext_ln52_1_fu_1055_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_1_address0_local = bucket_1_addr_reg_1569;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_1_address0_local = zext_ln52_fu_877_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        bucket_1_d0_local = grp_fu_657_p2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_1_d0_local = add_ln58_fu_1010_p2;
    end else begin
        bucket_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (icmp_ln58_reg_1612 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (icmp_ln58_reg_1612 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln58_reg_1612 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln58_reg_1612 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_2_address0_local = bucket_2_addr_20_reg_1803;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_2_address0_local = zext_ln52_7_fu_1311_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_2_address0_local = bucket_2_addr_19_reg_1748;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_2_address0_local = zext_ln52_6_fu_1209_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_2_address0_local = bucket_2_addr_18_reg_1688;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_2_address0_local = zext_ln52_5_fu_1075_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_2_address0_local = bucket_2_addr_reg_1579;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_2_address0_local = zext_ln52_4_fu_890_p1;
    end else begin
        bucket_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        bucket_2_ce0_local = 1'b1;
    end else begin
        bucket_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        bucket_2_d0_local = grp_fu_671_p2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_2_d0_local = add_ln58_7_fu_1025_p2;
    end else begin
        bucket_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (icmp_ln58_1_reg_1398 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (icmp_ln58_1_reg_1398 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln58_1_reg_1398 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln58_1_reg_1398_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_2_we0_local = 1'b1;
    end else begin
        bucket_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_3_address0_local = bucket_3_addr_20_reg_1813;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_3_address0_local = zext_ln52_11_fu_1323_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_3_address0_local = bucket_3_addr_19_reg_1768;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        bucket_3_address0_local = zext_ln52_10_fu_1237_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_3_address0_local = bucket_3_addr_18_reg_1703;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_3_address0_local = zext_ln52_9_fu_1125_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_3_address0_local = bucket_3_addr_reg_1626;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_3_address0_local = zext_ln52_8_fu_955_p1;
    end else begin
        bucket_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        bucket_3_ce0_local = 1'b1;
    end else begin
        bucket_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_3_d0_local = grp_fu_685_p2;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_3_d0_local = add_ln58_14_fu_1096_p2;
    end else begin
        bucket_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln58_3_reg_1422 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln58_3_reg_1422 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln58_3_reg_1422_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln58_3_reg_1422 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_3_we0_local = 1'b1;
    end else begin
        bucket_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_4_address0_local = bucket_4_addr_20_reg_1823;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_4_address0_local = zext_ln52_15_fu_1329_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_4_address0_local = bucket_4_addr_19_reg_1783;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        bucket_4_address0_local = zext_ln52_14_fu_1265_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_4_address0_local = bucket_4_addr_18_reg_1718;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_4_address0_local = zext_ln52_13_fu_1161_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_4_address0_local = bucket_4_addr_reg_1648;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_4_address0_local = zext_ln52_12_fu_987_p1;
    end else begin
        bucket_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        bucket_4_ce0_local = 1'b1;
    end else begin
        bucket_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_4_d0_local = grp_fu_699_p2;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_4_d0_local = add_ln58_21_fu_1111_p2;
    end else begin
        bucket_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln58_5_reg_1446 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln58_5_reg_1446 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln58_5_reg_1446_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln58_5_reg_1446 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_4_we0_local = 1'b1;
    end else begin
        bucket_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_5_address0_local = bucket_5_addr_20_reg_1788;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_5_address0_local = zext_ln52_3_fu_1299_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_5_address0_local = bucket_5_addr_19_reg_1733;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_5_address0_local = zext_ln52_2_fu_1197_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_5_address0_local = bucket_5_addr_18_reg_1668;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_5_address0_local = zext_ln52_1_fu_1055_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_5_address0_local = bucket_5_addr_reg_1574;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_5_address0_local = zext_ln52_fu_877_p1;
    end else begin
        bucket_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        bucket_5_ce0_local = 1'b1;
    end else begin
        bucket_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        bucket_5_d0_local = grp_fu_650_p2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_5_d0_local = add_ln58_fu_1010_p2;
    end else begin
        bucket_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (icmp_ln58_reg_1612 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (icmp_ln58_reg_1612 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln58_reg_1612 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln58_reg_1612 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_5_we0_local = 1'b1;
    end else begin
        bucket_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_6_address0_local = bucket_6_addr_20_reg_1798;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_6_address0_local = zext_ln52_7_fu_1311_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        bucket_6_address0_local = bucket_6_addr_19_reg_1743;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_6_address0_local = zext_ln52_6_fu_1209_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        bucket_6_address0_local = bucket_6_addr_18_reg_1683;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_6_address0_local = zext_ln52_5_fu_1075_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_6_address0_local = bucket_6_addr_reg_1584;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_6_address0_local = zext_ln52_4_fu_890_p1;
    end else begin
        bucket_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        bucket_6_ce0_local = 1'b1;
    end else begin
        bucket_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        bucket_6_d0_local = grp_fu_664_p2;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_6_d0_local = add_ln58_7_fu_1025_p2;
    end else begin
        bucket_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (icmp_ln58_1_reg_1398 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (icmp_ln58_1_reg_1398 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln58_1_reg_1398 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln58_1_reg_1398_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_6_we0_local = 1'b1;
    end else begin
        bucket_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_7_address0_local = bucket_7_addr_23_reg_1808;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_7_address0_local = zext_ln52_11_fu_1323_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_7_address0_local = bucket_7_addr_22_reg_1763;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        bucket_7_address0_local = zext_ln52_10_fu_1237_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bucket_7_address0_local = bucket_7_addr_21_reg_1698;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_7_address0_local = zext_ln52_9_fu_1125_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_7_address0_local = bucket_7_addr_reg_1631;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_7_address0_local = zext_ln52_8_fu_955_p1;
    end else begin
        bucket_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        bucket_7_ce0_local = 1'b1;
    end else begin
        bucket_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_7_d0_local = grp_fu_678_p2;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_7_d0_local = add_ln58_14_fu_1096_p2;
    end else begin
        bucket_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln58_3_reg_1422 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_3_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln58_3_reg_1422 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln58_3_reg_1422_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln58_3_reg_1422 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_7_we0_local = 1'b1;
    end else begin
        bucket_7_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
assign add_ln54_fu_993_p2 = (blockID_2_reg_1361 + 10'd4);
assign add_ln57_fu_908_p2 = (zext_ln57_1_fu_857_p1 + 10'd4);
assign add_ln58_14_fu_1096_p2 = (select_ln58_2_fu_1089_p3 + 32'd1);
assign add_ln58_21_fu_1111_p2 = (select_ln58_3_fu_1104_p3 + 32'd1);
assign add_ln58_7_fu_1025_p2 = (select_ln58_1_fu_1018_p3 + 32'd1);
assign add_ln58_fu_1010_p2 = (select_ln58_fu_1003_p3 + 32'd1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign ashr_ln57_10_fu_1131_p2 = $signed(b_2_load_2_reg_1515) >>> exp_cast6_reg_1341;
assign ashr_ln57_11_fu_1215_p2 = $signed(b_3_load_2_reg_1520) >>> exp_cast6_reg_1341;
assign ashr_ln57_12_fu_904_p2 = $signed(b_4_load_2_reg_1525) >>> exp_cast6_reg_1341;
assign ashr_ln57_13_fu_1041_p2 = $signed(b_5_load_2_reg_1530) >>> exp_cast6_reg_1341;
assign ashr_ln57_14_fu_1167_p2 = $signed(b_6_load_2_reg_1535) >>> exp_cast6_reg_1341;
assign ashr_ln57_15_fu_1223_p2 = $signed(b_7_load_2_reg_1540) >>> exp_cast6_reg_1341;
assign ashr_ln57_1_fu_933_p2 = $signed(b_1_load_reg_1470) >>> exp_cast6_reg_1341;
assign ashr_ln57_2_fu_1061_p2 = $signed(b_2_load_reg_1475) >>> exp_cast6_reg_1341;
assign ashr_ln57_3_fu_1175_p2 = $signed(b_3_load_reg_1480) >>> exp_cast6_reg_1341;
assign ashr_ln57_4_fu_846_p2 = $signed(b_4_load_reg_1485) >>> exp_cast6_reg_1341;
assign ashr_ln57_5_fu_941_p2 = $signed(b_5_load_reg_1490) >>> exp_cast6_reg_1341;
assign ashr_ln57_6_fu_1081_p2 = $signed(b_6_load_reg_1495) >>> exp_cast6_reg_1341;
assign ashr_ln57_7_fu_1183_p2 = $signed(b_7_load_reg_1500) >>> exp_cast6_reg_1341;
assign ashr_ln57_8_fu_896_p2 = $signed(b_0_load_2_reg_1505) >>> exp_cast6_reg_1341;
assign ashr_ln57_9_fu_1033_p2 = $signed(b_1_load_2_reg_1510) >>> exp_cast6_reg_1341;
assign ashr_ln57_fu_838_p2 = $signed(b_0_load_reg_1465) >>> exp_cast6_reg_1341;
assign b_0_address0 = zext_ln57_2_fu_790_p1;
assign b_0_address1 = zext_ln57_fu_736_p1;
assign b_0_ce0 = b_0_ce0_local;
assign b_0_ce1 = b_0_ce1_local;
assign b_1_address0 = zext_ln57_2_fu_790_p1;
assign b_1_address1 = zext_ln57_fu_736_p1;
assign b_1_ce0 = b_1_ce0_local;
assign b_1_ce1 = b_1_ce1_local;
assign b_2_address0 = zext_ln57_2_fu_790_p1;
assign b_2_address1 = zext_ln57_fu_736_p1;
assign b_2_ce0 = b_2_ce0_local;
assign b_2_ce1 = b_2_ce1_local;
assign b_3_address0 = zext_ln57_2_fu_790_p1;
assign b_3_address1 = zext_ln57_fu_736_p1;
assign b_3_ce0 = b_3_ce0_local;
assign b_3_ce1 = b_3_ce1_local;
assign b_4_address0 = zext_ln57_2_fu_790_p1;
assign b_4_address1 = zext_ln57_fu_736_p1;
assign b_4_ce0 = b_4_ce0_local;
assign b_4_ce1 = b_4_ce1_local;
assign b_5_address0 = zext_ln57_2_fu_790_p1;
assign b_5_address1 = zext_ln57_fu_736_p1;
assign b_5_ce0 = b_5_ce0_local;
assign b_5_ce1 = b_5_ce1_local;
assign b_6_address0 = zext_ln57_2_fu_790_p1;
assign b_6_address1 = zext_ln57_fu_736_p1;
assign b_6_ce0 = b_6_ce0_local;
assign b_6_ce1 = b_6_ce1_local;
assign b_7_address0 = zext_ln57_2_fu_790_p1;
assign b_7_address1 = zext_ln57_fu_736_p1;
assign b_7_ce0 = b_7_ce0_local;
assign b_7_ce1 = b_7_ce1_local;
assign bucket_0_address0 = bucket_0_address0_local;
assign bucket_0_ce0 = bucket_0_ce0_local;
assign bucket_0_d0 = bucket_0_d0_local;
assign bucket_0_we0 = bucket_0_we0_local;
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_d0 = bucket_1_d0_local;
assign bucket_1_we0 = bucket_1_we0_local;
assign bucket_2_address0 = bucket_2_address0_local;
assign bucket_2_ce0 = bucket_2_ce0_local;
assign bucket_2_d0 = bucket_2_d0_local;
assign bucket_2_we0 = bucket_2_we0_local;
assign bucket_3_address0 = bucket_3_address0_local;
assign bucket_3_ce0 = bucket_3_ce0_local;
assign bucket_3_d0 = bucket_3_d0_local;
assign bucket_3_we0 = bucket_3_we0_local;
assign bucket_4_address0 = bucket_4_address0_local;
assign bucket_4_ce0 = bucket_4_ce0_local;
assign bucket_4_d0 = bucket_4_d0_local;
assign bucket_4_we0 = bucket_4_we0_local;
assign bucket_5_address0 = bucket_5_address0_local;
assign bucket_5_ce0 = bucket_5_ce0_local;
assign bucket_5_d0 = bucket_5_d0_local;
assign bucket_5_we0 = bucket_5_we0_local;
assign bucket_6_address0 = bucket_6_address0_local;
assign bucket_6_ce0 = bucket_6_ce0_local;
assign bucket_6_d0 = bucket_6_d0_local;
assign bucket_6_we0 = bucket_6_we0_local;
assign bucket_7_address0 = bucket_7_address0_local;
assign bucket_7_ce0 = bucket_7_ce0_local;
assign bucket_7_d0 = bucket_7_d0_local;
assign bucket_7_we0 = bucket_7_we0_local;
assign bucket_indx_1_fu_1146_p2 = (shl_ln57_1_fu_1139_p3 + zext_ln57_3_reg_1636);
assign bucket_indx_2_fu_1250_p2 = (shl_ln57_2_fu_1243_p3 + zext_ln57_3_reg_1636);
assign bucket_indx_3_fu_1278_p2 = (shl_ln57_3_fu_1271_p3 + zext_ln57_3_reg_1636);
assign bucket_indx_fu_971_p2 = (shl_ln_fu_964_p3 + zext_ln57_3_fu_961_p1);
assign exp_cast6_fu_706_p1 = exp;
assign grp_fu_650_p2 = (reg_622 + 32'd1);
assign grp_fu_657_p2 = (reg_618 + 32'd1);
assign grp_fu_664_p2 = (reg_630 + 32'd1);
assign grp_fu_671_p2 = (reg_626 + 32'd1);
assign grp_fu_678_p2 = (reg_638 + 32'd1);
assign grp_fu_685_p2 = (reg_634 + 32'd1);
assign grp_fu_692_p2 = (reg_642 + 32'd1);
assign grp_fu_699_p2 = (reg_646 + 32'd1);
assign icmp_ln58_1_fu_766_p2 = ((or_ln_fu_758_p3 == 3'd1) ? 1'b1 : 1'b0);
assign icmp_ln58_3_fu_818_p2 = ((or_ln2_fu_810_p3 == 3'd2) ? 1'b1 : 1'b0);
assign icmp_ln58_5_fu_832_p2 = ((or_ln52_1_fu_824_p3 == 3'd3) ? 1'b1 : 1'b0);
assign icmp_ln58_7_fu_921_p2 = ((trunc_ln57_fu_918_p1 != 3'd0) ? 1'b1 : 1'b0);
assign icmp_ln58_fu_927_p2 = ((trunc_ln57_fu_918_p1 == 3'd0) ? 1'b1 : 1'b0);
assign lshr_ln52_10_fu_1317_p3 = {{trunc_ln57_12_reg_1753}, {tmp_s_reg_1555}};
assign lshr_ln52_11_fu_977_p4 = {{bucket_indx_fu_971_p2[10:3]}};
assign lshr_ln52_12_fu_1151_p4 = {{bucket_indx_1_fu_1146_p2[10:3]}};
assign lshr_ln52_13_fu_1255_p4 = {{bucket_indx_2_fu_1250_p2[10:3]}};
assign lshr_ln52_1_fu_1049_p3 = {{trunc_ln57_2_reg_1616}, {tmp_s_reg_1555}};
assign lshr_ln52_2_fu_1191_p3 = {{trunc_ln57_3_reg_1663}, {tmp_s_reg_1555}};
assign lshr_ln52_3_fu_1293_p3 = {{trunc_ln57_4_reg_1723}, {tmp_s_reg_1555}};
assign lshr_ln52_4_fu_883_p3 = {{trunc_ln57_5_reg_1550}, {tmp_s_fu_861_p4}};
assign lshr_ln52_5_fu_1069_p3 = {{trunc_ln57_6_reg_1621}, {tmp_s_reg_1555}};
assign lshr_ln52_6_fu_1203_p3 = {{trunc_ln57_7_reg_1678}, {tmp_s_reg_1555}};
assign lshr_ln52_7_fu_1305_p3 = {{trunc_ln57_8_reg_1728}, {tmp_s_reg_1555}};
assign lshr_ln52_8_fu_949_p3 = {{trunc_ln57_9_reg_1589}, {tmp_s_reg_1555}};
assign lshr_ln52_9_fu_1119_p3 = {{trunc_ln57_10_reg_1653}, {tmp_s_reg_1555}};
assign lshr_ln52_s_fu_1231_p3 = {{trunc_ln57_11_reg_1693}, {tmp_s_reg_1555}};
assign lshr_ln5_fu_870_p3 = {{trunc_ln57_1_reg_1545}, {tmp_s_fu_861_p4}};
assign lshr_ln_fu_726_p4 = {{ap_sig_allocacmp_blockID_2[8:1]}};
assign or_ln2_fu_810_p3 = {{tmp_4_fu_802_p3}, {2'd2}};
assign or_ln52_1_fu_824_p3 = {{tmp_4_fu_802_p3}, {2'd3}};
assign or_ln57_2_fu_782_p3 = {{tmp_8_fu_772_p4}, {1'd1}};
assign or_ln_fu_758_p3 = {{tmp_fu_748_p4}, {1'd1}};
assign select_ln58_1_fu_1018_p3 = ((icmp_ln58_7_reg_1604[0:0] == 1'b1) ? reg_630 : reg_626);
assign select_ln58_2_fu_1089_p3 = ((icmp_ln58_7_reg_1604[0:0] == 1'b1) ? reg_638 : reg_634);
assign select_ln58_3_fu_1104_p3 = ((icmp_ln58_7_reg_1604[0:0] == 1'b1) ? reg_642 : reg_646);
assign select_ln58_fu_1003_p3 = ((icmp_ln58_7_reg_1604[0:0] == 1'b1) ? reg_622 : reg_618);
assign shl_ln57_1_fu_1139_p3 = {{trunc_ln57_14_reg_1658}, {9'd0}};
assign shl_ln57_2_fu_1243_p3 = {{trunc_ln57_15_reg_1708}, {9'd0}};
assign shl_ln57_3_fu_1271_p3 = {{trunc_ln57_16_reg_1758}, {9'd0}};
assign shl_ln_fu_964_p3 = {{trunc_ln57_13_reg_1599}, {9'd0}};
assign tmp_3_fu_718_p3 = ap_sig_allocacmp_blockID_2[32'd9];
assign tmp_4_fu_802_p3 = ap_sig_allocacmp_blockID_2[32'd2];
assign tmp_8_fu_772_p4 = {{ap_sig_allocacmp_blockID_2[8:2]}};
assign tmp_fu_748_p4 = {{ap_sig_allocacmp_blockID_2[2:1]}};
assign tmp_s_fu_861_p4 = {{blockID_2_reg_1361[8:3]}};
assign trunc_ln54_fu_854_p1 = blockID_2_reg_1361[8:0];
assign trunc_ln57_10_fu_1037_p1 = ashr_ln57_9_fu_1033_p2[1:0];
assign trunc_ln57_11_fu_1135_p1 = ashr_ln57_10_fu_1131_p2[1:0];
assign trunc_ln57_12_fu_1219_p1 = ashr_ln57_11_fu_1215_p2[1:0];
assign trunc_ln57_13_fu_914_p1 = ashr_ln57_12_fu_904_p2[1:0];
assign trunc_ln57_14_fu_1045_p1 = ashr_ln57_13_fu_1041_p2[1:0];
assign trunc_ln57_15_fu_1171_p1 = ashr_ln57_14_fu_1167_p2[1:0];
assign trunc_ln57_16_fu_1227_p1 = ashr_ln57_15_fu_1223_p2[1:0];
assign trunc_ln57_1_fu_842_p1 = ashr_ln57_fu_838_p2[1:0];
assign trunc_ln57_2_fu_937_p1 = ashr_ln57_1_fu_933_p2[1:0];
assign trunc_ln57_3_fu_1065_p1 = ashr_ln57_2_fu_1061_p2[1:0];
assign trunc_ln57_4_fu_1179_p1 = ashr_ln57_3_fu_1175_p2[1:0];
assign trunc_ln57_5_fu_850_p1 = ashr_ln57_4_fu_846_p2[1:0];
assign trunc_ln57_6_fu_945_p1 = ashr_ln57_5_fu_941_p2[1:0];
assign trunc_ln57_7_fu_1085_p1 = ashr_ln57_6_fu_1081_p2[1:0];
assign trunc_ln57_8_fu_1187_p1 = ashr_ln57_7_fu_1183_p2[1:0];
assign trunc_ln57_9_fu_900_p1 = ashr_ln57_8_fu_896_p2[1:0];
assign trunc_ln57_fu_918_p1 = blockID_2_reg_1361[2:0];
assign zext_ln52_10_fu_1237_p1 = lshr_ln52_s_fu_1231_p3;
assign zext_ln52_11_fu_1323_p1 = lshr_ln52_10_fu_1317_p3;
assign zext_ln52_12_fu_987_p1 = lshr_ln52_11_fu_977_p4;
assign zext_ln52_13_fu_1161_p1 = lshr_ln52_12_fu_1151_p4;
assign zext_ln52_14_fu_1265_p1 = lshr_ln52_13_fu_1255_p4;
assign zext_ln52_15_fu_1329_p1 = lshr_ln52_14_reg_1773;
assign zext_ln52_1_fu_1055_p1 = lshr_ln52_1_fu_1049_p3;
assign zext_ln52_2_fu_1197_p1 = lshr_ln52_2_fu_1191_p3;
assign zext_ln52_3_fu_1299_p1 = lshr_ln52_3_fu_1293_p3;
assign zext_ln52_4_fu_890_p1 = lshr_ln52_4_fu_883_p3;
assign zext_ln52_5_fu_1075_p1 = lshr_ln52_5_fu_1069_p3;
assign zext_ln52_6_fu_1209_p1 = lshr_ln52_6_fu_1203_p3;
assign zext_ln52_7_fu_1311_p1 = lshr_ln52_7_fu_1305_p3;
assign zext_ln52_8_fu_955_p1 = lshr_ln52_8_fu_949_p3;
assign zext_ln52_9_fu_1125_p1 = lshr_ln52_9_fu_1119_p3;
assign zext_ln52_fu_877_p1 = lshr_ln5_fu_870_p3;
assign zext_ln57_1_fu_857_p1 = trunc_ln54_fu_854_p1;
assign zext_ln57_2_fu_790_p1 = or_ln57_2_fu_782_p3;
assign zext_ln57_3_fu_961_p1 = add_ln57_reg_1594;
assign zext_ln57_fu_736_p1 = lshr_ln_fu_726_p4;
always @ (posedge ap_clk) begin
    exp_cast6_reg_1341[31:5] <= 27'b000000000000000000000000000;
    zext_ln57_3_reg_1636[10] <= 1'b0;
end
endmodule 