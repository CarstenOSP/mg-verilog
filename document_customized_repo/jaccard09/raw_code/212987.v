module SgdLR_sw_SgdLR_sw_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_address0,v3_ce0,v3_we0,v3_d0,v3_address1,v3_ce1,v3_we1,v3_d1,v5,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,v0_4_address0,v0_4_ce0,v0_4_q0,v0_4_address1,v0_4_ce1,v0_4_q1,v0_5_address0,v0_5_ce0,v0_5_q0,v0_5_address1,v0_5_ce1,v0_5_q1,v0_6_address0,v0_6_ce0,v0_6_q0,v0_6_address1,v0_6_ce1,v0_6_q1,v0_7_address0,v0_7_ce0,v0_7_q0,v0_7_address1,v0_7_ce1,v0_7_q1,v22,grp_fu_606_p_din0,grp_fu_606_p_din1,grp_fu_606_p_dout0,grp_fu_606_p_ce,grp_fu_610_p_din0,grp_fu_610_p_din1,grp_fu_610_p_dout0,grp_fu_610_p_ce); 
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
output  [9:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
output  [9:0] v3_address1;
output   v3_ce1;
output   v3_we1;
output  [31:0] v3_d1;
input  [12:0] v5;
output  [19:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [19:0] v0_0_address1;
output   v0_0_ce1;
input  [31:0] v0_0_q1;
output  [19:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [19:0] v0_1_address1;
output   v0_1_ce1;
input  [31:0] v0_1_q1;
output  [19:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [19:0] v0_2_address1;
output   v0_2_ce1;
input  [31:0] v0_2_q1;
output  [19:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [19:0] v0_3_address1;
output   v0_3_ce1;
input  [31:0] v0_3_q1;
output  [19:0] v0_4_address0;
output   v0_4_ce0;
input  [31:0] v0_4_q0;
output  [19:0] v0_4_address1;
output   v0_4_ce1;
input  [31:0] v0_4_q1;
output  [19:0] v0_5_address0;
output   v0_5_ce0;
input  [31:0] v0_5_q0;
output  [19:0] v0_5_address1;
output   v0_5_ce1;
input  [31:0] v0_5_q1;
output  [19:0] v0_6_address0;
output   v0_6_ce0;
input  [31:0] v0_6_q0;
output  [19:0] v0_6_address1;
output   v0_6_ce1;
input  [31:0] v0_6_q1;
output  [19:0] v0_7_address0;
output   v0_7_ce0;
input  [31:0] v0_7_q0;
output  [19:0] v0_7_address1;
output   v0_7_ce1;
input  [31:0] v0_7_q1;
input  [31:0] v22;
output  [31:0] grp_fu_606_p_din0;
output  [31:0] grp_fu_606_p_din1;
input  [31:0] grp_fu_606_p_dout0;
output   grp_fu_606_p_ce;
output  [31:0] grp_fu_610_p_din0;
output  [31:0] grp_fu_610_p_din1;
input  [31:0] grp_fu_610_p_dout0;
output   grp_fu_610_p_ce;
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
reg   [0:0] tmp_reg_1885;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [2:0] reg_839;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage3_11001;
reg   [2:0] reg_843;
reg   [2:0] reg_847;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [2:0] reg_851;
reg   [31:0] reg_855;
reg   [31:0] reg_860;
reg   [10:0] v19_2_reg_1876;
reg   [10:0] v19_2_reg_1876_pp0_iter1_reg;
reg   [10:0] v19_2_reg_1876_pp0_iter2_reg;
reg   [10:0] v19_2_reg_1876_pp0_iter3_reg;
reg   [10:0] v19_2_reg_1876_pp0_iter4_reg;
reg   [10:0] v19_2_reg_1876_pp0_iter5_reg;
reg   [10:0] v19_2_reg_1876_pp0_iter6_reg;
reg   [10:0] v19_2_reg_1876_pp0_iter7_reg;
wire   [22:0] add_ln1_fu_891_p3;
reg   [22:0] add_ln1_reg_1889;
reg   [22:0] add_ln1_reg_1889_pp0_iter1_reg;
reg   [22:0] add_ln1_reg_1889_pp0_iter2_reg;
reg   [22:0] add_ln1_reg_1889_pp0_iter3_reg;
reg   [22:0] add_ln1_reg_1889_pp0_iter4_reg;
reg   [22:0] add_ln1_reg_1889_pp0_iter5_reg;
reg   [22:0] add_ln1_reg_1889_pp0_iter6_reg;
wire   [8:0] tmp_2_fu_905_p4;
reg   [8:0] tmp_2_reg_1895;
reg   [8:0] tmp_2_reg_1895_pp0_iter1_reg;
reg   [8:0] tmp_2_reg_1895_pp0_iter2_reg;
reg   [8:0] tmp_2_reg_1895_pp0_iter3_reg;
reg   [8:0] tmp_2_reg_1895_pp0_iter4_reg;
reg   [8:0] tmp_2_reg_1895_pp0_iter5_reg;
reg   [8:0] tmp_2_reg_1895_pp0_iter6_reg;
reg   [8:0] tmp_2_reg_1895_pp0_iter7_reg;
wire   [22:0] add_ln51_1_fu_915_p4;
reg   [22:0] add_ln51_1_reg_1900;
reg   [22:0] add_ln51_1_reg_1900_pp0_iter1_reg;
reg   [22:0] add_ln51_1_reg_1900_pp0_iter2_reg;
reg   [22:0] add_ln51_1_reg_1900_pp0_iter3_reg;
reg   [22:0] add_ln51_1_reg_1900_pp0_iter4_reg;
reg   [22:0] add_ln51_1_reg_1900_pp0_iter5_reg;
reg   [22:0] add_ln51_1_reg_1900_pp0_iter6_reg;
wire   [7:0] tmp_4_fu_931_p4;
reg   [7:0] tmp_4_reg_1906;
reg   [7:0] tmp_4_reg_1906_pp0_iter1_reg;
reg   [7:0] tmp_4_reg_1906_pp0_iter2_reg;
reg   [7:0] tmp_4_reg_1906_pp0_iter3_reg;
reg   [7:0] tmp_4_reg_1906_pp0_iter4_reg;
reg   [7:0] tmp_4_reg_1906_pp0_iter5_reg;
reg   [7:0] tmp_4_reg_1906_pp0_iter6_reg;
reg   [7:0] tmp_4_reg_1906_pp0_iter7_reg;
wire   [22:0] add_ln51_2_fu_940_p4;
reg   [22:0] add_ln51_2_reg_1912;
reg   [22:0] add_ln51_2_reg_1912_pp0_iter1_reg;
reg   [22:0] add_ln51_2_reg_1912_pp0_iter2_reg;
reg   [22:0] add_ln51_2_reg_1912_pp0_iter3_reg;
reg   [22:0] add_ln51_2_reg_1912_pp0_iter4_reg;
reg   [22:0] add_ln51_2_reg_1912_pp0_iter5_reg;
reg   [22:0] add_ln51_2_reg_1912_pp0_iter6_reg;
wire   [22:0] add_ln51_3_fu_955_p4;
reg   [22:0] add_ln51_3_reg_1918;
reg   [22:0] add_ln51_3_reg_1918_pp0_iter1_reg;
reg   [22:0] add_ln51_3_reg_1918_pp0_iter2_reg;
reg   [22:0] add_ln51_3_reg_1918_pp0_iter3_reg;
reg   [22:0] add_ln51_3_reg_1918_pp0_iter4_reg;
reg   [22:0] add_ln51_3_reg_1918_pp0_iter5_reg;
reg   [22:0] add_ln51_3_reg_1918_pp0_iter6_reg;
wire   [6:0] tmp_10_fu_970_p4;
reg   [6:0] tmp_10_reg_1924;
reg   [6:0] tmp_10_reg_1924_pp0_iter1_reg;
reg   [6:0] tmp_10_reg_1924_pp0_iter2_reg;
reg   [6:0] tmp_10_reg_1924_pp0_iter3_reg;
reg   [6:0] tmp_10_reg_1924_pp0_iter4_reg;
reg   [6:0] tmp_10_reg_1924_pp0_iter5_reg;
reg   [6:0] tmp_10_reg_1924_pp0_iter6_reg;
reg   [6:0] tmp_10_reg_1924_pp0_iter7_reg;
reg   [6:0] tmp_10_reg_1924_pp0_iter8_reg;
wire   [22:0] add_ln51_4_fu_979_p4;
reg   [22:0] add_ln51_4_reg_1934;
reg   [22:0] add_ln51_4_reg_1934_pp0_iter1_reg;
reg   [22:0] add_ln51_4_reg_1934_pp0_iter2_reg;
reg   [22:0] add_ln51_4_reg_1934_pp0_iter3_reg;
reg   [22:0] add_ln51_4_reg_1934_pp0_iter4_reg;
reg   [22:0] add_ln51_4_reg_1934_pp0_iter5_reg;
reg   [22:0] add_ln51_4_reg_1934_pp0_iter6_reg;
wire   [0:0] tmp_7_fu_994_p3;
reg   [0:0] tmp_7_reg_1940;
reg   [0:0] tmp_7_reg_1940_pp0_iter1_reg;
reg   [0:0] tmp_7_reg_1940_pp0_iter2_reg;
reg   [0:0] tmp_7_reg_1940_pp0_iter3_reg;
reg   [0:0] tmp_7_reg_1940_pp0_iter4_reg;
reg   [0:0] tmp_7_reg_1940_pp0_iter5_reg;
reg   [0:0] tmp_7_reg_1940_pp0_iter6_reg;
reg   [0:0] tmp_7_reg_1940_pp0_iter7_reg;
wire   [22:0] add_ln51_5_fu_1001_p6;
reg   [22:0] add_ln51_5_reg_1945;
reg   [22:0] add_ln51_5_reg_1945_pp0_iter1_reg;
reg   [22:0] add_ln51_5_reg_1945_pp0_iter2_reg;
reg   [22:0] add_ln51_5_reg_1945_pp0_iter3_reg;
reg   [22:0] add_ln51_5_reg_1945_pp0_iter4_reg;
reg   [22:0] add_ln51_5_reg_1945_pp0_iter5_reg;
reg   [22:0] add_ln51_5_reg_1945_pp0_iter6_reg;
wire   [22:0] add_ln51_6_fu_1020_p4;
reg   [22:0] add_ln51_6_reg_1951;
reg   [22:0] add_ln51_6_reg_1951_pp0_iter1_reg;
reg   [22:0] add_ln51_6_reg_1951_pp0_iter2_reg;
reg   [22:0] add_ln51_6_reg_1951_pp0_iter3_reg;
reg   [22:0] add_ln51_6_reg_1951_pp0_iter4_reg;
reg   [22:0] add_ln51_6_reg_1951_pp0_iter5_reg;
reg   [22:0] add_ln51_6_reg_1951_pp0_iter6_reg;
wire   [22:0] add_ln51_7_fu_1034_p4;
reg   [22:0] add_ln51_7_reg_1957;
reg   [22:0] add_ln51_7_reg_1957_pp0_iter1_reg;
reg   [22:0] add_ln51_7_reg_1957_pp0_iter2_reg;
reg   [22:0] add_ln51_7_reg_1957_pp0_iter3_reg;
reg   [22:0] add_ln51_7_reg_1957_pp0_iter4_reg;
reg   [22:0] add_ln51_7_reg_1957_pp0_iter5_reg;
reg   [22:0] add_ln51_7_reg_1957_pp0_iter6_reg;
wire   [31:0] v23_fu_1130_p19;
reg   [31:0] v23_reg_2043;
wire   [31:0] v23_1_fu_1202_p19;
reg   [31:0] v23_1_reg_2048;
wire   [31:0] v23_2_fu_1306_p19;
reg   [31:0] v23_2_reg_2133;
wire   [31:0] v23_3_fu_1378_p19;
reg   [31:0] v23_3_reg_2138;
wire   [31:0] v23_4_fu_1482_p19;
reg   [31:0] v23_4_reg_2223;
wire   [31:0] v23_5_fu_1554_p19;
reg   [31:0] v23_5_reg_2228;
wire   [31:0] v23_6_fu_1650_p19;
reg   [31:0] v23_6_reg_2313;
wire   [31:0] v23_7_fu_1722_p19;
reg   [31:0] v23_7_reg_2318;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln51_fu_1066_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln51_2_fu_1078_p1;
wire   [63:0] zext_ln51_4_fu_1242_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln51_6_fu_1254_p1;
wire   [63:0] zext_ln51_8_fu_1418_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_10_fu_1430_p1;
wire   [63:0] zext_ln51_12_fu_1594_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_14_fu_1606_p1;
wire   [63:0] zext_ln47_fu_1762_p1;
wire   [63:0] zext_ln51_1_fu_1773_p1;
wire   [63:0] zext_ln51_3_fu_1785_p1;
wire   [63:0] zext_ln51_5_fu_1797_p1;
wire   [63:0] zext_ln51_7_fu_1809_p1;
wire   [63:0] zext_ln51_9_fu_1824_p1;
wire   [63:0] zext_ln51_11_fu_1836_p1;
wire   [63:0] zext_ln51_13_fu_1848_p1;
reg   [10:0] v19_fu_128;
wire   [10:0] add_ln47_fu_1048_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_2;
reg    v0_0_ce1_local;
reg   [19:0] v0_0_address1_local;
reg    v0_0_ce0_local;
reg   [19:0] v0_0_address0_local;
reg    v0_1_ce1_local;
reg   [19:0] v0_1_address1_local;
reg    v0_1_ce0_local;
reg   [19:0] v0_1_address0_local;
reg    v0_2_ce1_local;
reg   [19:0] v0_2_address1_local;
reg    v0_2_ce0_local;
reg   [19:0] v0_2_address0_local;
reg    v0_3_ce1_local;
reg   [19:0] v0_3_address1_local;
reg    v0_3_ce0_local;
reg   [19:0] v0_3_address0_local;
reg    v0_4_ce1_local;
reg   [19:0] v0_4_address1_local;
reg    v0_4_ce0_local;
reg   [19:0] v0_4_address0_local;
reg    v0_5_ce1_local;
reg   [19:0] v0_5_address1_local;
reg    v0_5_ce0_local;
reg   [19:0] v0_5_address0_local;
reg    v0_6_ce1_local;
reg   [19:0] v0_6_address1_local;
reg    v0_6_ce0_local;
reg   [19:0] v0_6_address0_local;
reg    v0_7_ce1_local;
reg   [19:0] v0_7_address1_local;
reg    v0_7_ce0_local;
reg   [19:0] v0_7_address0_local;
reg    v3_we1_local;
reg    v3_ce1_local;
reg   [9:0] v3_address1_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg   [9:0] v3_address0_local;
reg   [31:0] grp_fu_801_p1;
reg   [31:0] grp_fu_805_p1;
reg   [22:0] grp_fu_809_p0;
wire   [46:0] zext_ln51_23_fu_1058_p1;
wire   [46:0] zext_ln51_25_fu_1090_p1;
wire   [46:0] zext_ln51_27_fu_1266_p1;
wire   [46:0] zext_ln51_29_fu_1442_p1;
wire   [24:0] grp_fu_809_p1;
reg   [22:0] grp_fu_814_p0;
wire   [46:0] zext_ln51_24_fu_1062_p1;
wire   [46:0] zext_ln51_26_fu_1094_p1;
wire   [46:0] zext_ln51_28_fu_1270_p1;
wire   [46:0] zext_ln51_30_fu_1446_p1;
wire   [24:0] grp_fu_814_p1;
wire   [46:0] grp_fu_809_p2;
wire   [46:0] grp_fu_814_p2;
wire   [11:0] tmp_1_fu_881_p4;
wire   [22:0] grp_fu_899_p0;
wire   [20:0] grp_fu_899_p1;
wire   [22:0] grp_fu_925_p0;
wire   [20:0] grp_fu_925_p1;
wire   [22:0] grp_fu_949_p0;
wire   [20:0] grp_fu_949_p1;
wire   [22:0] grp_fu_964_p0;
wire   [20:0] grp_fu_964_p1;
wire   [22:0] grp_fu_988_p0;
wire   [20:0] grp_fu_988_p1;
wire   [22:0] grp_fu_1014_p0;
wire   [20:0] grp_fu_1014_p1;
wire   [22:0] grp_fu_1028_p0;
wire   [20:0] grp_fu_1028_p1;
wire   [22:0] grp_fu_1042_p0;
wire   [20:0] grp_fu_1042_p1;
wire   [22:0] grp_fu_899_p2;
wire   [22:0] grp_fu_925_p2;
wire   [31:0] v23_fu_1130_p2;
wire   [31:0] v23_fu_1130_p4;
wire   [31:0] v23_fu_1130_p6;
wire   [31:0] v23_fu_1130_p8;
wire   [31:0] v23_fu_1130_p10;
wire   [31:0] v23_fu_1130_p12;
wire   [31:0] v23_fu_1130_p14;
wire   [31:0] v23_fu_1130_p16;
wire   [31:0] v23_fu_1130_p17;
wire   [31:0] v23_1_fu_1202_p2;
wire   [31:0] v23_1_fu_1202_p4;
wire   [31:0] v23_1_fu_1202_p6;
wire   [31:0] v23_1_fu_1202_p8;
wire   [31:0] v23_1_fu_1202_p10;
wire   [31:0] v23_1_fu_1202_p12;
wire   [31:0] v23_1_fu_1202_p14;
wire   [31:0] v23_1_fu_1202_p16;
wire   [31:0] v23_1_fu_1202_p17;
wire   [22:0] grp_fu_949_p2;
wire   [22:0] grp_fu_964_p2;
wire   [31:0] v23_2_fu_1306_p2;
wire   [31:0] v23_2_fu_1306_p4;
wire   [31:0] v23_2_fu_1306_p6;
wire   [31:0] v23_2_fu_1306_p8;
wire   [31:0] v23_2_fu_1306_p10;
wire   [31:0] v23_2_fu_1306_p12;
wire   [31:0] v23_2_fu_1306_p14;
wire   [31:0] v23_2_fu_1306_p16;
wire   [31:0] v23_2_fu_1306_p17;
wire   [31:0] v23_3_fu_1378_p2;
wire   [31:0] v23_3_fu_1378_p4;
wire   [31:0] v23_3_fu_1378_p6;
wire   [31:0] v23_3_fu_1378_p8;
wire   [31:0] v23_3_fu_1378_p10;
wire   [31:0] v23_3_fu_1378_p12;
wire   [31:0] v23_3_fu_1378_p14;
wire   [31:0] v23_3_fu_1378_p16;
wire   [31:0] v23_3_fu_1378_p17;
wire   [22:0] grp_fu_988_p2;
wire   [22:0] grp_fu_1014_p2;
wire   [31:0] v23_4_fu_1482_p2;
wire   [31:0] v23_4_fu_1482_p4;
wire   [31:0] v23_4_fu_1482_p6;
wire   [31:0] v23_4_fu_1482_p8;
wire   [31:0] v23_4_fu_1482_p10;
wire   [31:0] v23_4_fu_1482_p12;
wire   [31:0] v23_4_fu_1482_p14;
wire   [31:0] v23_4_fu_1482_p16;
wire   [31:0] v23_4_fu_1482_p17;
wire   [31:0] v23_5_fu_1554_p2;
wire   [31:0] v23_5_fu_1554_p4;
wire   [31:0] v23_5_fu_1554_p6;
wire   [31:0] v23_5_fu_1554_p8;
wire   [31:0] v23_5_fu_1554_p10;
wire   [31:0] v23_5_fu_1554_p12;
wire   [31:0] v23_5_fu_1554_p14;
wire   [31:0] v23_5_fu_1554_p16;
wire   [31:0] v23_5_fu_1554_p17;
wire   [22:0] grp_fu_1028_p2;
wire   [22:0] grp_fu_1042_p2;
wire   [31:0] v23_6_fu_1650_p2;
wire   [31:0] v23_6_fu_1650_p4;
wire   [31:0] v23_6_fu_1650_p6;
wire   [31:0] v23_6_fu_1650_p8;
wire   [31:0] v23_6_fu_1650_p10;
wire   [31:0] v23_6_fu_1650_p12;
wire   [31:0] v23_6_fu_1650_p14;
wire   [31:0] v23_6_fu_1650_p16;
wire   [31:0] v23_6_fu_1650_p17;
wire   [31:0] v23_7_fu_1722_p2;
wire   [31:0] v23_7_fu_1722_p4;
wire   [31:0] v23_7_fu_1722_p6;
wire   [31:0] v23_7_fu_1722_p8;
wire   [31:0] v23_7_fu_1722_p10;
wire   [31:0] v23_7_fu_1722_p12;
wire   [31:0] v23_7_fu_1722_p14;
wire   [31:0] v23_7_fu_1722_p16;
wire   [31:0] v23_7_fu_1722_p17;
wire   [9:0] or_ln_fu_1766_p3;
wire   [9:0] or_ln47_1_fu_1778_p3;
wire   [9:0] or_ln47_2_fu_1790_p3;
wire   [9:0] or_ln47_3_fu_1802_p3;
wire   [9:0] or_ln47_4_fu_1814_p5;
wire   [9:0] or_ln47_5_fu_1829_p3;
wire   [9:0] or_ln47_6_fu_1841_p3;
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
wire   [2:0] v23_fu_1130_p1;
wire   [2:0] v23_fu_1130_p3;
wire   [2:0] v23_fu_1130_p5;
wire   [2:0] v23_fu_1130_p7;
wire  signed [2:0] v23_fu_1130_p9;
wire  signed [2:0] v23_fu_1130_p11;
wire  signed [2:0] v23_fu_1130_p13;
wire  signed [2:0] v23_fu_1130_p15;
wire   [2:0] v23_1_fu_1202_p1;
wire   [2:0] v23_1_fu_1202_p3;
wire   [2:0] v23_1_fu_1202_p5;
wire   [2:0] v23_1_fu_1202_p7;
wire  signed [2:0] v23_1_fu_1202_p9;
wire  signed [2:0] v23_1_fu_1202_p11;
wire  signed [2:0] v23_1_fu_1202_p13;
wire  signed [2:0] v23_1_fu_1202_p15;
wire   [2:0] v23_2_fu_1306_p1;
wire   [2:0] v23_2_fu_1306_p3;
wire   [2:0] v23_2_fu_1306_p5;
wire   [2:0] v23_2_fu_1306_p7;
wire  signed [2:0] v23_2_fu_1306_p9;
wire  signed [2:0] v23_2_fu_1306_p11;
wire  signed [2:0] v23_2_fu_1306_p13;
wire  signed [2:0] v23_2_fu_1306_p15;
wire   [2:0] v23_3_fu_1378_p1;
wire   [2:0] v23_3_fu_1378_p3;
wire   [2:0] v23_3_fu_1378_p5;
wire   [2:0] v23_3_fu_1378_p7;
wire  signed [2:0] v23_3_fu_1378_p9;
wire  signed [2:0] v23_3_fu_1378_p11;
wire  signed [2:0] v23_3_fu_1378_p13;
wire  signed [2:0] v23_3_fu_1378_p15;
wire   [2:0] v23_4_fu_1482_p1;
wire   [2:0] v23_4_fu_1482_p3;
wire   [2:0] v23_4_fu_1482_p5;
wire   [2:0] v23_4_fu_1482_p7;
wire  signed [2:0] v23_4_fu_1482_p9;
wire  signed [2:0] v23_4_fu_1482_p11;
wire  signed [2:0] v23_4_fu_1482_p13;
wire  signed [2:0] v23_4_fu_1482_p15;
wire   [2:0] v23_5_fu_1554_p1;
wire   [2:0] v23_5_fu_1554_p3;
wire   [2:0] v23_5_fu_1554_p5;
wire   [2:0] v23_5_fu_1554_p7;
wire  signed [2:0] v23_5_fu_1554_p9;
wire  signed [2:0] v23_5_fu_1554_p11;
wire  signed [2:0] v23_5_fu_1554_p13;
wire  signed [2:0] v23_5_fu_1554_p15;
wire   [2:0] v23_6_fu_1650_p1;
wire   [2:0] v23_6_fu_1650_p3;
wire   [2:0] v23_6_fu_1650_p5;
wire   [2:0] v23_6_fu_1650_p7;
wire  signed [2:0] v23_6_fu_1650_p9;
wire  signed [2:0] v23_6_fu_1650_p11;
wire  signed [2:0] v23_6_fu_1650_p13;
wire  signed [2:0] v23_6_fu_1650_p15;
wire   [2:0] v23_7_fu_1722_p1;
wire   [2:0] v23_7_fu_1722_p3;
wire   [2:0] v23_7_fu_1722_p5;
wire   [2:0] v23_7_fu_1722_p7;
wire  signed [2:0] v23_7_fu_1722_p9;
wire  signed [2:0] v23_7_fu_1722_p11;
wire  signed [2:0] v23_7_fu_1722_p13;
wire  signed [2:0] v23_7_fu_1722_p15;
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
#0 v19_fu_128 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U30(.din0(grp_fu_809_p0),.din1(grp_fu_809_p1),.dout(grp_fu_809_p2));
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U31(.din0(grp_fu_814_p0),.din1(grp_fu_814_p1),.dout(grp_fu_814_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U32(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_899_p0),.din1(grp_fu_899_p1),.ce(1'b1),.dout(grp_fu_899_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U33(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_925_p0),.din1(grp_fu_925_p1),.ce(1'b1),.dout(grp_fu_925_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U34(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_949_p0),.din1(grp_fu_949_p1),.ce(1'b1),.dout(grp_fu_949_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U35(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_964_p0),.din1(grp_fu_964_p1),.ce(1'b1),.dout(grp_fu_964_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U36(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_988_p0),.din1(grp_fu_988_p1),.ce(1'b1),.dout(grp_fu_988_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U37(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1014_p0),.din1(grp_fu_1014_p1),.ce(1'b1),.dout(grp_fu_1014_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U38(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1028_p0),.din1(grp_fu_1028_p1),.ce(1'b1),.dout(grp_fu_1028_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U39(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1042_p0),.din1(grp_fu_1042_p1),.ce(1'b1),.dout(grp_fu_1042_p2));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U40(.din0(v23_fu_1130_p2),.din1(v23_fu_1130_p4),.din2(v23_fu_1130_p6),.din3(v23_fu_1130_p8),.din4(v23_fu_1130_p10),.din5(v23_fu_1130_p12),.din6(v23_fu_1130_p14),.din7(v23_fu_1130_p16),.def(v23_fu_1130_p17),.sel(reg_839),.dout(v23_fu_1130_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U41(.din0(v23_1_fu_1202_p2),.din1(v23_1_fu_1202_p4),.din2(v23_1_fu_1202_p6),.din3(v23_1_fu_1202_p8),.din4(v23_1_fu_1202_p10),.din5(v23_1_fu_1202_p12),.din6(v23_1_fu_1202_p14),.din7(v23_1_fu_1202_p16),.def(v23_1_fu_1202_p17),.sel(reg_843),.dout(v23_1_fu_1202_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U42(.din0(v23_2_fu_1306_p2),.din1(v23_2_fu_1306_p4),.din2(v23_2_fu_1306_p6),.din3(v23_2_fu_1306_p8),.din4(v23_2_fu_1306_p10),.din5(v23_2_fu_1306_p12),.din6(v23_2_fu_1306_p14),.din7(v23_2_fu_1306_p16),.def(v23_2_fu_1306_p17),.sel(reg_847),.dout(v23_2_fu_1306_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U43(.din0(v23_3_fu_1378_p2),.din1(v23_3_fu_1378_p4),.din2(v23_3_fu_1378_p6),.din3(v23_3_fu_1378_p8),.din4(v23_3_fu_1378_p10),.din5(v23_3_fu_1378_p12),.din6(v23_3_fu_1378_p14),.din7(v23_3_fu_1378_p16),.def(v23_3_fu_1378_p17),.sel(reg_851),.dout(v23_3_fu_1378_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U44(.din0(v23_4_fu_1482_p2),.din1(v23_4_fu_1482_p4),.din2(v23_4_fu_1482_p6),.din3(v23_4_fu_1482_p8),.din4(v23_4_fu_1482_p10),.din5(v23_4_fu_1482_p12),.din6(v23_4_fu_1482_p14),.din7(v23_4_fu_1482_p16),.def(v23_4_fu_1482_p17),.sel(reg_839),.dout(v23_4_fu_1482_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U45(.din0(v23_5_fu_1554_p2),.din1(v23_5_fu_1554_p4),.din2(v23_5_fu_1554_p6),.din3(v23_5_fu_1554_p8),.din4(v23_5_fu_1554_p10),.din5(v23_5_fu_1554_p12),.din6(v23_5_fu_1554_p14),.din7(v23_5_fu_1554_p16),.def(v23_5_fu_1554_p17),.sel(reg_843),.dout(v23_5_fu_1554_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U46(.din0(v23_6_fu_1650_p2),.din1(v23_6_fu_1650_p4),.din2(v23_6_fu_1650_p6),.din3(v23_6_fu_1650_p8),.din4(v23_6_fu_1650_p10),.din5(v23_6_fu_1650_p12),.din6(v23_6_fu_1650_p14),.din7(v23_6_fu_1650_p16),.def(v23_6_fu_1650_p17),.sel(reg_847),.dout(v23_6_fu_1650_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U47(.din0(v23_7_fu_1722_p2),.din1(v23_7_fu_1722_p4),.din2(v23_7_fu_1722_p6),.din3(v23_7_fu_1722_p8),.din4(v23_7_fu_1722_p10),.din5(v23_7_fu_1722_p12),.din6(v23_7_fu_1722_p14),.din7(v23_7_fu_1722_p16),.def(v23_7_fu_1722_p17),.sel(reg_851),.dout(v23_7_fu_1722_p19));
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_fu_128 <= 11'd0;
    end else if (((tmp_reg_1885 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v19_fu_128 <= add_ln47_fu_1048_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln1_reg_1889 <= add_ln1_fu_891_p3;
        add_ln1_reg_1889_pp0_iter1_reg <= add_ln1_reg_1889;
        add_ln1_reg_1889_pp0_iter2_reg <= add_ln1_reg_1889_pp0_iter1_reg;
        add_ln1_reg_1889_pp0_iter3_reg <= add_ln1_reg_1889_pp0_iter2_reg;
        add_ln1_reg_1889_pp0_iter4_reg <= add_ln1_reg_1889_pp0_iter3_reg;
        add_ln1_reg_1889_pp0_iter5_reg <= add_ln1_reg_1889_pp0_iter4_reg;
        add_ln1_reg_1889_pp0_iter6_reg <= add_ln1_reg_1889_pp0_iter5_reg;
        add_ln51_1_reg_1900[22 : 1] <= add_ln51_1_fu_915_p4[22 : 1];
        add_ln51_1_reg_1900_pp0_iter1_reg[22 : 1] <= add_ln51_1_reg_1900[22 : 1];
        add_ln51_1_reg_1900_pp0_iter2_reg[22 : 1] <= add_ln51_1_reg_1900_pp0_iter1_reg[22 : 1];
        add_ln51_1_reg_1900_pp0_iter3_reg[22 : 1] <= add_ln51_1_reg_1900_pp0_iter2_reg[22 : 1];
        add_ln51_1_reg_1900_pp0_iter4_reg[22 : 1] <= add_ln51_1_reg_1900_pp0_iter3_reg[22 : 1];
        add_ln51_1_reg_1900_pp0_iter5_reg[22 : 1] <= add_ln51_1_reg_1900_pp0_iter4_reg[22 : 1];
        add_ln51_1_reg_1900_pp0_iter6_reg[22 : 1] <= add_ln51_1_reg_1900_pp0_iter5_reg[22 : 1];
        tmp_2_reg_1895 <= {{ap_sig_allocacmp_v19_2[9:1]}};
        tmp_2_reg_1895_pp0_iter1_reg <= tmp_2_reg_1895;
        tmp_2_reg_1895_pp0_iter2_reg <= tmp_2_reg_1895_pp0_iter1_reg;
        tmp_2_reg_1895_pp0_iter3_reg <= tmp_2_reg_1895_pp0_iter2_reg;
        tmp_2_reg_1895_pp0_iter4_reg <= tmp_2_reg_1895_pp0_iter3_reg;
        tmp_2_reg_1895_pp0_iter5_reg <= tmp_2_reg_1895_pp0_iter4_reg;
        tmp_2_reg_1895_pp0_iter6_reg <= tmp_2_reg_1895_pp0_iter5_reg;
        tmp_2_reg_1895_pp0_iter7_reg <= tmp_2_reg_1895_pp0_iter6_reg;
        tmp_reg_1885 <= ap_sig_allocacmp_v19_2[32'd10];
        v19_2_reg_1876 <= ap_sig_allocacmp_v19_2;
        v19_2_reg_1876_pp0_iter1_reg <= v19_2_reg_1876;
        v19_2_reg_1876_pp0_iter2_reg <= v19_2_reg_1876_pp0_iter1_reg;
        v19_2_reg_1876_pp0_iter3_reg <= v19_2_reg_1876_pp0_iter2_reg;
        v19_2_reg_1876_pp0_iter4_reg <= v19_2_reg_1876_pp0_iter3_reg;
        v19_2_reg_1876_pp0_iter5_reg <= v19_2_reg_1876_pp0_iter4_reg;
        v19_2_reg_1876_pp0_iter6_reg <= v19_2_reg_1876_pp0_iter5_reg;
        v19_2_reg_1876_pp0_iter7_reg <= v19_2_reg_1876_pp0_iter6_reg;
        v23_2_reg_2133 <= v23_2_fu_1306_p19;
        v23_3_reg_2138 <= v23_3_fu_1378_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln51_2_reg_1912[22 : 2] <= add_ln51_2_fu_940_p4[22 : 2];
        add_ln51_2_reg_1912_pp0_iter1_reg[22 : 2] <= add_ln51_2_reg_1912[22 : 2];
        add_ln51_2_reg_1912_pp0_iter2_reg[22 : 2] <= add_ln51_2_reg_1912_pp0_iter1_reg[22 : 2];
        add_ln51_2_reg_1912_pp0_iter3_reg[22 : 2] <= add_ln51_2_reg_1912_pp0_iter2_reg[22 : 2];
        add_ln51_2_reg_1912_pp0_iter4_reg[22 : 2] <= add_ln51_2_reg_1912_pp0_iter3_reg[22 : 2];
        add_ln51_2_reg_1912_pp0_iter5_reg[22 : 2] <= add_ln51_2_reg_1912_pp0_iter4_reg[22 : 2];
        add_ln51_2_reg_1912_pp0_iter6_reg[22 : 2] <= add_ln51_2_reg_1912_pp0_iter5_reg[22 : 2];
        add_ln51_3_reg_1918[22 : 2] <= add_ln51_3_fu_955_p4[22 : 2];
        add_ln51_3_reg_1918_pp0_iter1_reg[22 : 2] <= add_ln51_3_reg_1918[22 : 2];
        add_ln51_3_reg_1918_pp0_iter2_reg[22 : 2] <= add_ln51_3_reg_1918_pp0_iter1_reg[22 : 2];
        add_ln51_3_reg_1918_pp0_iter3_reg[22 : 2] <= add_ln51_3_reg_1918_pp0_iter2_reg[22 : 2];
        add_ln51_3_reg_1918_pp0_iter4_reg[22 : 2] <= add_ln51_3_reg_1918_pp0_iter3_reg[22 : 2];
        add_ln51_3_reg_1918_pp0_iter5_reg[22 : 2] <= add_ln51_3_reg_1918_pp0_iter4_reg[22 : 2];
        add_ln51_3_reg_1918_pp0_iter6_reg[22 : 2] <= add_ln51_3_reg_1918_pp0_iter5_reg[22 : 2];
        tmp_4_reg_1906 <= {{v19_2_reg_1876[9:2]}};
        tmp_4_reg_1906_pp0_iter1_reg <= tmp_4_reg_1906;
        tmp_4_reg_1906_pp0_iter2_reg <= tmp_4_reg_1906_pp0_iter1_reg;
        tmp_4_reg_1906_pp0_iter3_reg <= tmp_4_reg_1906_pp0_iter2_reg;
        tmp_4_reg_1906_pp0_iter4_reg <= tmp_4_reg_1906_pp0_iter3_reg;
        tmp_4_reg_1906_pp0_iter5_reg <= tmp_4_reg_1906_pp0_iter4_reg;
        tmp_4_reg_1906_pp0_iter6_reg <= tmp_4_reg_1906_pp0_iter5_reg;
        tmp_4_reg_1906_pp0_iter7_reg <= tmp_4_reg_1906_pp0_iter6_reg;
        v23_4_reg_2223 <= v23_4_fu_1482_p19;
        v23_5_reg_2228 <= v23_5_fu_1554_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln51_4_reg_1934[22 : 3] <= add_ln51_4_fu_979_p4[22 : 3];
        add_ln51_4_reg_1934_pp0_iter1_reg[22 : 3] <= add_ln51_4_reg_1934[22 : 3];
        add_ln51_4_reg_1934_pp0_iter2_reg[22 : 3] <= add_ln51_4_reg_1934_pp0_iter1_reg[22 : 3];
        add_ln51_4_reg_1934_pp0_iter3_reg[22 : 3] <= add_ln51_4_reg_1934_pp0_iter2_reg[22 : 3];
        add_ln51_4_reg_1934_pp0_iter4_reg[22 : 3] <= add_ln51_4_reg_1934_pp0_iter3_reg[22 : 3];
        add_ln51_4_reg_1934_pp0_iter5_reg[22 : 3] <= add_ln51_4_reg_1934_pp0_iter4_reg[22 : 3];
        add_ln51_4_reg_1934_pp0_iter6_reg[22 : 3] <= add_ln51_4_reg_1934_pp0_iter5_reg[22 : 3];
        add_ln51_5_reg_1945[1] <= add_ln51_5_fu_1001_p6[1];
add_ln51_5_reg_1945[22 : 3] <= add_ln51_5_fu_1001_p6[22 : 3];
        add_ln51_5_reg_1945_pp0_iter1_reg[1] <= add_ln51_5_reg_1945[1];
add_ln51_5_reg_1945_pp0_iter1_reg[22 : 3] <= add_ln51_5_reg_1945[22 : 3];
        add_ln51_5_reg_1945_pp0_iter2_reg[1] <= add_ln51_5_reg_1945_pp0_iter1_reg[1];
add_ln51_5_reg_1945_pp0_iter2_reg[22 : 3] <= add_ln51_5_reg_1945_pp0_iter1_reg[22 : 3];
        add_ln51_5_reg_1945_pp0_iter3_reg[1] <= add_ln51_5_reg_1945_pp0_iter2_reg[1];
add_ln51_5_reg_1945_pp0_iter3_reg[22 : 3] <= add_ln51_5_reg_1945_pp0_iter2_reg[22 : 3];
        add_ln51_5_reg_1945_pp0_iter4_reg[1] <= add_ln51_5_reg_1945_pp0_iter3_reg[1];
add_ln51_5_reg_1945_pp0_iter4_reg[22 : 3] <= add_ln51_5_reg_1945_pp0_iter3_reg[22 : 3];
        add_ln51_5_reg_1945_pp0_iter5_reg[1] <= add_ln51_5_reg_1945_pp0_iter4_reg[1];
add_ln51_5_reg_1945_pp0_iter5_reg[22 : 3] <= add_ln51_5_reg_1945_pp0_iter4_reg[22 : 3];
        add_ln51_5_reg_1945_pp0_iter6_reg[1] <= add_ln51_5_reg_1945_pp0_iter5_reg[1];
add_ln51_5_reg_1945_pp0_iter6_reg[22 : 3] <= add_ln51_5_reg_1945_pp0_iter5_reg[22 : 3];
        tmp_10_reg_1924 <= {{v19_2_reg_1876[9:3]}};
        tmp_10_reg_1924_pp0_iter1_reg <= tmp_10_reg_1924;
        tmp_10_reg_1924_pp0_iter2_reg <= tmp_10_reg_1924_pp0_iter1_reg;
        tmp_10_reg_1924_pp0_iter3_reg <= tmp_10_reg_1924_pp0_iter2_reg;
        tmp_10_reg_1924_pp0_iter4_reg <= tmp_10_reg_1924_pp0_iter3_reg;
        tmp_10_reg_1924_pp0_iter5_reg <= tmp_10_reg_1924_pp0_iter4_reg;
        tmp_10_reg_1924_pp0_iter6_reg <= tmp_10_reg_1924_pp0_iter5_reg;
        tmp_10_reg_1924_pp0_iter7_reg <= tmp_10_reg_1924_pp0_iter6_reg;
        tmp_10_reg_1924_pp0_iter8_reg <= tmp_10_reg_1924_pp0_iter7_reg;
        tmp_7_reg_1940 <= v19_2_reg_1876[32'd1];
        tmp_7_reg_1940_pp0_iter1_reg <= tmp_7_reg_1940;
        tmp_7_reg_1940_pp0_iter2_reg <= tmp_7_reg_1940_pp0_iter1_reg;
        tmp_7_reg_1940_pp0_iter3_reg <= tmp_7_reg_1940_pp0_iter2_reg;
        tmp_7_reg_1940_pp0_iter4_reg <= tmp_7_reg_1940_pp0_iter3_reg;
        tmp_7_reg_1940_pp0_iter5_reg <= tmp_7_reg_1940_pp0_iter4_reg;
        tmp_7_reg_1940_pp0_iter6_reg <= tmp_7_reg_1940_pp0_iter5_reg;
        tmp_7_reg_1940_pp0_iter7_reg <= tmp_7_reg_1940_pp0_iter6_reg;
        v23_6_reg_2313 <= v23_6_fu_1650_p19;
        v23_7_reg_2318 <= v23_7_fu_1722_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln51_6_reg_1951[22 : 3] <= add_ln51_6_fu_1020_p4[22 : 3];
        add_ln51_6_reg_1951_pp0_iter1_reg[22 : 3] <= add_ln51_6_reg_1951[22 : 3];
        add_ln51_6_reg_1951_pp0_iter2_reg[22 : 3] <= add_ln51_6_reg_1951_pp0_iter1_reg[22 : 3];
        add_ln51_6_reg_1951_pp0_iter3_reg[22 : 3] <= add_ln51_6_reg_1951_pp0_iter2_reg[22 : 3];
        add_ln51_6_reg_1951_pp0_iter4_reg[22 : 3] <= add_ln51_6_reg_1951_pp0_iter3_reg[22 : 3];
        add_ln51_6_reg_1951_pp0_iter5_reg[22 : 3] <= add_ln51_6_reg_1951_pp0_iter4_reg[22 : 3];
        add_ln51_6_reg_1951_pp0_iter6_reg[22 : 3] <= add_ln51_6_reg_1951_pp0_iter5_reg[22 : 3];
        add_ln51_7_reg_1957[22 : 3] <= add_ln51_7_fu_1034_p4[22 : 3];
        add_ln51_7_reg_1957_pp0_iter1_reg[22 : 3] <= add_ln51_7_reg_1957[22 : 3];
        add_ln51_7_reg_1957_pp0_iter2_reg[22 : 3] <= add_ln51_7_reg_1957_pp0_iter1_reg[22 : 3];
        add_ln51_7_reg_1957_pp0_iter3_reg[22 : 3] <= add_ln51_7_reg_1957_pp0_iter2_reg[22 : 3];
        add_ln51_7_reg_1957_pp0_iter4_reg[22 : 3] <= add_ln51_7_reg_1957_pp0_iter3_reg[22 : 3];
        add_ln51_7_reg_1957_pp0_iter5_reg[22 : 3] <= add_ln51_7_reg_1957_pp0_iter4_reg[22 : 3];
        add_ln51_7_reg_1957_pp0_iter6_reg[22 : 3] <= add_ln51_7_reg_1957_pp0_iter5_reg[22 : 3];
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        v23_1_reg_2048 <= v23_1_fu_1202_p19;
        v23_reg_2043 <= v23_fu_1130_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_839 <= {{grp_fu_809_p2[45:43]}};
        reg_843 <= {{grp_fu_814_p2[45:43]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_847 <= {{grp_fu_809_p2[45:43]}};
        reg_851 <= {{grp_fu_814_p2[45:43]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_855 <= grp_fu_606_p_dout0;
        reg_860 <= grp_fu_610_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_1885 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v19_2 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_2 = v19_fu_128;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_801_p1 = v23_6_reg_2313;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_801_p1 = v23_4_reg_2223;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_801_p1 = v23_2_reg_2133;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_801_p1 = v23_reg_2043;
        end else begin
            grp_fu_801_p1 = 'bx;
        end
    end else begin
        grp_fu_801_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_805_p1 = v23_7_reg_2318;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_805_p1 = v23_5_reg_2228;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_805_p1 = v23_3_reg_2138;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_805_p1 = v23_1_reg_2048;
        end else begin
            grp_fu_805_p1 = 'bx;
        end
    end else begin
        grp_fu_805_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_809_p0 = zext_ln51_29_fu_1442_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_809_p0 = zext_ln51_27_fu_1266_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_809_p0 = zext_ln51_25_fu_1090_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_809_p0 = zext_ln51_23_fu_1058_p1;
    end else begin
        grp_fu_809_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_814_p0 = zext_ln51_30_fu_1446_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_814_p0 = zext_ln51_28_fu_1270_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_814_p0 = zext_ln51_26_fu_1094_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_814_p0 = zext_ln51_24_fu_1062_p1;
    end else begin
        grp_fu_814_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address0_local = zext_ln51_14_fu_1606_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address0_local = zext_ln51_10_fu_1430_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address0_local = zext_ln51_6_fu_1254_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address0_local = zext_ln51_2_fu_1078_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address1_local = zext_ln51_12_fu_1594_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address1_local = zext_ln51_8_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address1_local = zext_ln51_4_fu_1242_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address1_local = zext_ln51_fu_1066_p1;
    end else begin
        v0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce1_local = 1'b1;
    end else begin
        v0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address0_local = zext_ln51_14_fu_1606_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address0_local = zext_ln51_10_fu_1430_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address0_local = zext_ln51_6_fu_1254_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address0_local = zext_ln51_2_fu_1078_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address1_local = zext_ln51_12_fu_1594_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address1_local = zext_ln51_8_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address1_local = zext_ln51_4_fu_1242_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address1_local = zext_ln51_fu_1066_p1;
    end else begin
        v0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce1_local = 1'b1;
    end else begin
        v0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address0_local = zext_ln51_14_fu_1606_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address0_local = zext_ln51_10_fu_1430_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address0_local = zext_ln51_6_fu_1254_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_2_address0_local = zext_ln51_2_fu_1078_p1;
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address1_local = zext_ln51_12_fu_1594_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address1_local = zext_ln51_8_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address1_local = zext_ln51_4_fu_1242_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_2_address1_local = zext_ln51_fu_1066_p1;
    end else begin
        v0_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce1_local = 1'b1;
    end else begin
        v0_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address0_local = zext_ln51_14_fu_1606_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address0_local = zext_ln51_10_fu_1430_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address0_local = zext_ln51_6_fu_1254_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_3_address0_local = zext_ln51_2_fu_1078_p1;
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address1_local = zext_ln51_12_fu_1594_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address1_local = zext_ln51_8_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address1_local = zext_ln51_4_fu_1242_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_3_address1_local = zext_ln51_fu_1066_p1;
    end else begin
        v0_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce1_local = 1'b1;
    end else begin
        v0_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_4_address0_local = zext_ln51_14_fu_1606_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_4_address0_local = zext_ln51_10_fu_1430_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_4_address0_local = zext_ln51_6_fu_1254_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_4_address0_local = zext_ln51_2_fu_1078_p1;
    end else begin
        v0_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_4_address1_local = zext_ln51_12_fu_1594_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_4_address1_local = zext_ln51_8_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_4_address1_local = zext_ln51_4_fu_1242_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_4_address1_local = zext_ln51_fu_1066_p1;
    end else begin
        v0_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_4_ce1_local = 1'b1;
    end else begin
        v0_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_5_address0_local = zext_ln51_14_fu_1606_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_5_address0_local = zext_ln51_10_fu_1430_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_5_address0_local = zext_ln51_6_fu_1254_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_5_address0_local = zext_ln51_2_fu_1078_p1;
    end else begin
        v0_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_5_address1_local = zext_ln51_12_fu_1594_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_5_address1_local = zext_ln51_8_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_5_address1_local = zext_ln51_4_fu_1242_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_5_address1_local = zext_ln51_fu_1066_p1;
    end else begin
        v0_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_5_ce1_local = 1'b1;
    end else begin
        v0_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_6_address0_local = zext_ln51_14_fu_1606_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_6_address0_local = zext_ln51_10_fu_1430_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_6_address0_local = zext_ln51_6_fu_1254_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_6_address0_local = zext_ln51_2_fu_1078_p1;
    end else begin
        v0_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_6_address1_local = zext_ln51_12_fu_1594_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_6_address1_local = zext_ln51_8_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_6_address1_local = zext_ln51_4_fu_1242_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_6_address1_local = zext_ln51_fu_1066_p1;
    end else begin
        v0_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_6_ce1_local = 1'b1;
    end else begin
        v0_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_7_address0_local = zext_ln51_14_fu_1606_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_7_address0_local = zext_ln51_10_fu_1430_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_7_address0_local = zext_ln51_6_fu_1254_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_7_address0_local = zext_ln51_2_fu_1078_p1;
    end else begin
        v0_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_7_address1_local = zext_ln51_12_fu_1594_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_7_address1_local = zext_ln51_8_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_7_address1_local = zext_ln51_4_fu_1242_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_7_address1_local = zext_ln51_fu_1066_p1;
    end else begin
        v0_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_7_ce1_local = 1'b1;
    end else begin
        v0_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_address0_local = zext_ln51_13_fu_1848_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address0_local = zext_ln51_9_fu_1824_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address0_local = zext_ln51_5_fu_1797_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address0_local = zext_ln51_1_fu_1773_p1;
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
            v3_address1_local = zext_ln51_11_fu_1836_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address1_local = zext_ln51_7_fu_1809_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address1_local = zext_ln51_3_fu_1785_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address1_local = zext_ln47_fu_1762_p1;
        end else begin
            v3_address1_local = 'bx;
        end
    end else begin
        v3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
assign add_ln1_fu_891_p3 = {{tmp_1_fu_881_p4}, {ap_sig_allocacmp_v19_2}};
assign add_ln47_fu_1048_p2 = (v19_2_reg_1876 + 11'd8);
assign add_ln51_1_fu_915_p4 = {{{v5}, {tmp_2_fu_905_p4}}, {1'd1}};
assign add_ln51_2_fu_940_p4 = {{{v5}, {tmp_4_fu_931_p4}}, {2'd2}};
assign add_ln51_3_fu_955_p4 = {{{v5}, {tmp_4_fu_931_p4}}, {2'd3}};
assign add_ln51_4_fu_979_p4 = {{{v5}, {tmp_10_fu_970_p4}}, {3'd4}};
assign add_ln51_5_fu_1001_p6 = {{{{{v5}, {tmp_10_fu_970_p4}}, {1'd1}}, {tmp_7_fu_994_p3}}, {1'd1}};
assign add_ln51_6_fu_1020_p4 = {{{v5}, {tmp_10_reg_1924}}, {3'd6}};
assign add_ln51_7_fu_1034_p4 = {{{v5}, {tmp_10_reg_1924}}, {3'd7}};
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
assign grp_fu_1014_p0 = {{{{{v5}, {tmp_10_fu_970_p4}}, {1'd1}}, {tmp_7_fu_994_p3}}, {1'd1}};
assign grp_fu_1014_p1 = 23'd576000;
assign grp_fu_1028_p0 = {{{v5}, {tmp_10_reg_1924}}, {3'd6}};
assign grp_fu_1028_p1 = 23'd576000;
assign grp_fu_1042_p0 = {{{v5}, {tmp_10_reg_1924}}, {3'd7}};
assign grp_fu_1042_p1 = 23'd576000;
assign grp_fu_606_p_ce = 1'b1;
assign grp_fu_606_p_din0 = v22;
assign grp_fu_606_p_din1 = grp_fu_801_p1;
assign grp_fu_610_p_ce = 1'b1;
assign grp_fu_610_p_din0 = v22;
assign grp_fu_610_p_din1 = grp_fu_805_p1;
assign grp_fu_809_p1 = 47'd15270995;
assign grp_fu_814_p1 = 47'd15270995;
assign grp_fu_899_p0 = {{tmp_1_fu_881_p4}, {ap_sig_allocacmp_v19_2}};
assign grp_fu_899_p1 = 23'd576000;
assign grp_fu_925_p0 = {{{v5}, {tmp_2_fu_905_p4}}, {1'd1}};
assign grp_fu_925_p1 = 23'd576000;
assign grp_fu_949_p0 = {{{v5}, {tmp_4_fu_931_p4}}, {2'd2}};
assign grp_fu_949_p1 = 23'd576000;
assign grp_fu_964_p0 = {{{v5}, {tmp_4_fu_931_p4}}, {2'd3}};
assign grp_fu_964_p1 = 23'd576000;
assign grp_fu_988_p0 = {{{v5}, {tmp_10_fu_970_p4}}, {3'd4}};
assign grp_fu_988_p1 = 23'd576000;
assign or_ln47_1_fu_1778_p3 = {{tmp_4_reg_1906_pp0_iter7_reg}, {2'd2}};
assign or_ln47_2_fu_1790_p3 = {{tmp_4_reg_1906_pp0_iter7_reg}, {2'd3}};
assign or_ln47_3_fu_1802_p3 = {{tmp_10_reg_1924_pp0_iter7_reg}, {3'd4}};
assign or_ln47_4_fu_1814_p5 = {{{{tmp_10_reg_1924_pp0_iter7_reg}, {1'd1}}, {tmp_7_reg_1940_pp0_iter7_reg}}, {1'd1}};
assign or_ln47_5_fu_1829_p3 = {{tmp_10_reg_1924_pp0_iter8_reg}, {3'd6}};
assign or_ln47_6_fu_1841_p3 = {{tmp_10_reg_1924_pp0_iter8_reg}, {3'd7}};
assign or_ln_fu_1766_p3 = {{tmp_2_reg_1895_pp0_iter7_reg}, {1'd1}};
assign tmp_10_fu_970_p4 = {{v19_2_reg_1876[9:3]}};
assign tmp_1_fu_881_p4 = {{v5[12:1]}};
assign tmp_2_fu_905_p4 = {{ap_sig_allocacmp_v19_2[9:1]}};
assign tmp_4_fu_931_p4 = {{v19_2_reg_1876[9:2]}};
assign tmp_7_fu_994_p3 = v19_2_reg_1876[32'd1];
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
assign v0_4_address0 = v0_4_address0_local;
assign v0_4_address1 = v0_4_address1_local;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_4_ce1 = v0_4_ce1_local;
assign v0_5_address0 = v0_5_address0_local;
assign v0_5_address1 = v0_5_address1_local;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_5_ce1 = v0_5_ce1_local;
assign v0_6_address0 = v0_6_address0_local;
assign v0_6_address1 = v0_6_address1_local;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_6_ce1 = v0_6_ce1_local;
assign v0_7_address0 = v0_7_address0_local;
assign v0_7_address1 = v0_7_address1_local;
assign v0_7_ce0 = v0_7_ce0_local;
assign v0_7_ce1 = v0_7_ce1_local;
assign v23_1_fu_1202_p10 = v0_4_q0;
assign v23_1_fu_1202_p12 = v0_5_q0;
assign v23_1_fu_1202_p14 = v0_6_q0;
assign v23_1_fu_1202_p16 = v0_7_q0;
assign v23_1_fu_1202_p17 = 'bx;
assign v23_1_fu_1202_p2 = v0_0_q0;
assign v23_1_fu_1202_p4 = v0_1_q0;
assign v23_1_fu_1202_p6 = v0_2_q0;
assign v23_1_fu_1202_p8 = v0_3_q0;
assign v23_2_fu_1306_p10 = v0_4_q1;
assign v23_2_fu_1306_p12 = v0_5_q1;
assign v23_2_fu_1306_p14 = v0_6_q1;
assign v23_2_fu_1306_p16 = v0_7_q1;
assign v23_2_fu_1306_p17 = 'bx;
assign v23_2_fu_1306_p2 = v0_0_q1;
assign v23_2_fu_1306_p4 = v0_1_q1;
assign v23_2_fu_1306_p6 = v0_2_q1;
assign v23_2_fu_1306_p8 = v0_3_q1;
assign v23_3_fu_1378_p10 = v0_4_q0;
assign v23_3_fu_1378_p12 = v0_5_q0;
assign v23_3_fu_1378_p14 = v0_6_q0;
assign v23_3_fu_1378_p16 = v0_7_q0;
assign v23_3_fu_1378_p17 = 'bx;
assign v23_3_fu_1378_p2 = v0_0_q0;
assign v23_3_fu_1378_p4 = v0_1_q0;
assign v23_3_fu_1378_p6 = v0_2_q0;
assign v23_3_fu_1378_p8 = v0_3_q0;
assign v23_4_fu_1482_p10 = v0_4_q1;
assign v23_4_fu_1482_p12 = v0_5_q1;
assign v23_4_fu_1482_p14 = v0_6_q1;
assign v23_4_fu_1482_p16 = v0_7_q1;
assign v23_4_fu_1482_p17 = 'bx;
assign v23_4_fu_1482_p2 = v0_0_q1;
assign v23_4_fu_1482_p4 = v0_1_q1;
assign v23_4_fu_1482_p6 = v0_2_q1;
assign v23_4_fu_1482_p8 = v0_3_q1;
assign v23_5_fu_1554_p10 = v0_4_q0;
assign v23_5_fu_1554_p12 = v0_5_q0;
assign v23_5_fu_1554_p14 = v0_6_q0;
assign v23_5_fu_1554_p16 = v0_7_q0;
assign v23_5_fu_1554_p17 = 'bx;
assign v23_5_fu_1554_p2 = v0_0_q0;
assign v23_5_fu_1554_p4 = v0_1_q0;
assign v23_5_fu_1554_p6 = v0_2_q0;
assign v23_5_fu_1554_p8 = v0_3_q0;
assign v23_6_fu_1650_p10 = v0_4_q1;
assign v23_6_fu_1650_p12 = v0_5_q1;
assign v23_6_fu_1650_p14 = v0_6_q1;
assign v23_6_fu_1650_p16 = v0_7_q1;
assign v23_6_fu_1650_p17 = 'bx;
assign v23_6_fu_1650_p2 = v0_0_q1;
assign v23_6_fu_1650_p4 = v0_1_q1;
assign v23_6_fu_1650_p6 = v0_2_q1;
assign v23_6_fu_1650_p8 = v0_3_q1;
assign v23_7_fu_1722_p10 = v0_4_q0;
assign v23_7_fu_1722_p12 = v0_5_q0;
assign v23_7_fu_1722_p14 = v0_6_q0;
assign v23_7_fu_1722_p16 = v0_7_q0;
assign v23_7_fu_1722_p17 = 'bx;
assign v23_7_fu_1722_p2 = v0_0_q0;
assign v23_7_fu_1722_p4 = v0_1_q0;
assign v23_7_fu_1722_p6 = v0_2_q0;
assign v23_7_fu_1722_p8 = v0_3_q0;
assign v23_fu_1130_p10 = v0_4_q1;
assign v23_fu_1130_p12 = v0_5_q1;
assign v23_fu_1130_p14 = v0_6_q1;
assign v23_fu_1130_p16 = v0_7_q1;
assign v23_fu_1130_p17 = 'bx;
assign v23_fu_1130_p2 = v0_0_q1;
assign v23_fu_1130_p4 = v0_1_q1;
assign v23_fu_1130_p6 = v0_2_q1;
assign v23_fu_1130_p8 = v0_3_q1;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign v3_d0 = reg_860;
assign v3_d1 = reg_855;
assign v3_we0 = v3_we0_local;
assign v3_we1 = v3_we1_local;
assign zext_ln47_fu_1762_p1 = v19_2_reg_1876_pp0_iter7_reg;
assign zext_ln51_10_fu_1430_p1 = grp_fu_1014_p2;
assign zext_ln51_11_fu_1836_p1 = or_ln47_5_fu_1829_p3;
assign zext_ln51_12_fu_1594_p1 = grp_fu_1028_p2;
assign zext_ln51_13_fu_1848_p1 = or_ln47_6_fu_1841_p3;
assign zext_ln51_14_fu_1606_p1 = grp_fu_1042_p2;
assign zext_ln51_1_fu_1773_p1 = or_ln_fu_1766_p3;
assign zext_ln51_23_fu_1058_p1 = add_ln1_reg_1889_pp0_iter6_reg;
assign zext_ln51_24_fu_1062_p1 = add_ln51_1_reg_1900_pp0_iter6_reg;
assign zext_ln51_25_fu_1090_p1 = add_ln51_2_reg_1912_pp0_iter6_reg;
assign zext_ln51_26_fu_1094_p1 = add_ln51_3_reg_1918_pp0_iter6_reg;
assign zext_ln51_27_fu_1266_p1 = add_ln51_4_reg_1934_pp0_iter6_reg;
assign zext_ln51_28_fu_1270_p1 = add_ln51_5_reg_1945_pp0_iter6_reg;
assign zext_ln51_29_fu_1442_p1 = add_ln51_6_reg_1951_pp0_iter6_reg;
assign zext_ln51_2_fu_1078_p1 = grp_fu_925_p2;
assign zext_ln51_30_fu_1446_p1 = add_ln51_7_reg_1957_pp0_iter6_reg;
assign zext_ln51_3_fu_1785_p1 = or_ln47_1_fu_1778_p3;
assign zext_ln51_4_fu_1242_p1 = grp_fu_949_p2;
assign zext_ln51_5_fu_1797_p1 = or_ln47_2_fu_1790_p3;
assign zext_ln51_6_fu_1254_p1 = grp_fu_964_p2;
assign zext_ln51_7_fu_1809_p1 = or_ln47_3_fu_1802_p3;
assign zext_ln51_8_fu_1418_p1 = grp_fu_988_p2;
assign zext_ln51_9_fu_1824_p1 = or_ln47_4_fu_1814_p5;
assign zext_ln51_fu_1066_p1 = grp_fu_899_p2;
always @ (posedge ap_clk) begin
    add_ln51_1_reg_1900[0] <= 1'b1;
    add_ln51_1_reg_1900_pp0_iter1_reg[0] <= 1'b1;
    add_ln51_1_reg_1900_pp0_iter2_reg[0] <= 1'b1;
    add_ln51_1_reg_1900_pp0_iter3_reg[0] <= 1'b1;
    add_ln51_1_reg_1900_pp0_iter4_reg[0] <= 1'b1;
    add_ln51_1_reg_1900_pp0_iter5_reg[0] <= 1'b1;
    add_ln51_1_reg_1900_pp0_iter6_reg[0] <= 1'b1;
    add_ln51_2_reg_1912[1:0] <= 2'b10;
    add_ln51_2_reg_1912_pp0_iter1_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1912_pp0_iter2_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1912_pp0_iter3_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1912_pp0_iter4_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1912_pp0_iter5_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1912_pp0_iter6_reg[1:0] <= 2'b10;
    add_ln51_3_reg_1918[1:0] <= 2'b11;
    add_ln51_3_reg_1918_pp0_iter1_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1918_pp0_iter2_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1918_pp0_iter3_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1918_pp0_iter4_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1918_pp0_iter5_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1918_pp0_iter6_reg[1:0] <= 2'b11;
    add_ln51_4_reg_1934[2:0] <= 3'b100;
    add_ln51_4_reg_1934_pp0_iter1_reg[2:0] <= 3'b100;
    add_ln51_4_reg_1934_pp0_iter2_reg[2:0] <= 3'b100;
    add_ln51_4_reg_1934_pp0_iter3_reg[2:0] <= 3'b100;
    add_ln51_4_reg_1934_pp0_iter4_reg[2:0] <= 3'b100;
    add_ln51_4_reg_1934_pp0_iter5_reg[2:0] <= 3'b100;
    add_ln51_4_reg_1934_pp0_iter6_reg[2:0] <= 3'b100;
    add_ln51_5_reg_1945[0] <= 1'b1;
    add_ln51_5_reg_1945[2] <= 1'b1;
    add_ln51_5_reg_1945_pp0_iter1_reg[0] <= 1'b1;
    add_ln51_5_reg_1945_pp0_iter1_reg[2] <= 1'b1;
    add_ln51_5_reg_1945_pp0_iter2_reg[0] <= 1'b1;
    add_ln51_5_reg_1945_pp0_iter2_reg[2] <= 1'b1;
    add_ln51_5_reg_1945_pp0_iter3_reg[0] <= 1'b1;
    add_ln51_5_reg_1945_pp0_iter3_reg[2] <= 1'b1;
    add_ln51_5_reg_1945_pp0_iter4_reg[0] <= 1'b1;
    add_ln51_5_reg_1945_pp0_iter4_reg[2] <= 1'b1;
    add_ln51_5_reg_1945_pp0_iter5_reg[0] <= 1'b1;
    add_ln51_5_reg_1945_pp0_iter5_reg[2] <= 1'b1;
    add_ln51_5_reg_1945_pp0_iter6_reg[0] <= 1'b1;
    add_ln51_5_reg_1945_pp0_iter6_reg[2] <= 1'b1;
    add_ln51_6_reg_1951[2:0] <= 3'b110;
    add_ln51_6_reg_1951_pp0_iter1_reg[2:0] <= 3'b110;
    add_ln51_6_reg_1951_pp0_iter2_reg[2:0] <= 3'b110;
    add_ln51_6_reg_1951_pp0_iter3_reg[2:0] <= 3'b110;
    add_ln51_6_reg_1951_pp0_iter4_reg[2:0] <= 3'b110;
    add_ln51_6_reg_1951_pp0_iter5_reg[2:0] <= 3'b110;
    add_ln51_6_reg_1951_pp0_iter6_reg[2:0] <= 3'b110;
    add_ln51_7_reg_1957[2:0] <= 3'b111;
    add_ln51_7_reg_1957_pp0_iter1_reg[2:0] <= 3'b111;
    add_ln51_7_reg_1957_pp0_iter2_reg[2:0] <= 3'b111;
    add_ln51_7_reg_1957_pp0_iter3_reg[2:0] <= 3'b111;
    add_ln51_7_reg_1957_pp0_iter4_reg[2:0] <= 3'b111;
    add_ln51_7_reg_1957_pp0_iter5_reg[2:0] <= 3'b111;
    add_ln51_7_reg_1957_pp0_iter6_reg[2:0] <= 3'b111;
end
endmodule 