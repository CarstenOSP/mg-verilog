module SgdLR_sw_SgdLR_sw_Pipeline_label_32 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_address0,v3_ce0,v3_we0,v3_d0,v3_address1,v3_ce1,v3_we1,v3_d1,tmp_3,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,v0_4_address0,v0_4_ce0,v0_4_q0,v0_4_address1,v0_4_ce1,v0_4_q1,v0_5_address0,v0_5_ce0,v0_5_q0,v0_5_address1,v0_5_ce1,v0_5_q1,v0_6_address0,v0_6_ce0,v0_6_q0,v0_6_address1,v0_6_ce1,v0_6_q1,v0_7_address0,v0_7_ce0,v0_7_q0,v0_7_address1,v0_7_ce1,v0_7_q1,v22_1,v5_1,grp_fu_913_p_din0,grp_fu_913_p_din1,grp_fu_913_p_dout0,grp_fu_913_p_ce,grp_fu_917_p_din0,grp_fu_917_p_din1,grp_fu_917_p_dout0,grp_fu_917_p_ce); 
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
input  [22:0] tmp_3;
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
input  [31:0] v22_1;
input  [12:0] v5_1;
output  [31:0] grp_fu_913_p_din0;
output  [31:0] grp_fu_913_p_din1;
input  [31:0] grp_fu_913_p_dout0;
output   grp_fu_913_p_ce;
output  [31:0] grp_fu_917_p_din0;
output  [31:0] grp_fu_917_p_din1;
input  [31:0] grp_fu_917_p_dout0;
output   grp_fu_917_p_ce;
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
reg   [0:0] tmp_reg_1878;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [2:0] reg_843;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [2:0] reg_847;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [2:0] reg_851;
reg   [31:0] reg_855;
reg   [31:0] reg_860;
reg   [10:0] v19_1_reg_1869;
reg   [10:0] v19_1_reg_1869_pp0_iter1_reg;
reg   [10:0] v19_1_reg_1869_pp0_iter2_reg;
reg   [10:0] v19_1_reg_1869_pp0_iter3_reg;
reg   [10:0] v19_1_reg_1869_pp0_iter4_reg;
reg   [10:0] v19_1_reg_1869_pp0_iter5_reg;
reg   [10:0] v19_1_reg_1869_pp0_iter6_reg;
reg   [10:0] v19_1_reg_1869_pp0_iter7_reg;
reg   [10:0] v19_1_reg_1869_pp0_iter8_reg;
wire   [8:0] tmp_s_fu_881_p4;
reg   [8:0] tmp_s_reg_1882;
reg   [8:0] tmp_s_reg_1882_pp0_iter1_reg;
reg   [8:0] tmp_s_reg_1882_pp0_iter2_reg;
reg   [8:0] tmp_s_reg_1882_pp0_iter3_reg;
reg   [8:0] tmp_s_reg_1882_pp0_iter4_reg;
reg   [8:0] tmp_s_reg_1882_pp0_iter5_reg;
reg   [8:0] tmp_s_reg_1882_pp0_iter6_reg;
reg   [8:0] tmp_s_reg_1882_pp0_iter7_reg;
wire   [22:0] add_ln51_9_fu_891_p4;
reg   [22:0] add_ln51_9_reg_1887;
reg   [22:0] add_ln51_9_reg_1887_pp0_iter1_reg;
reg   [22:0] add_ln51_9_reg_1887_pp0_iter2_reg;
reg   [22:0] add_ln51_9_reg_1887_pp0_iter3_reg;
reg   [22:0] add_ln51_9_reg_1887_pp0_iter4_reg;
reg   [22:0] add_ln51_9_reg_1887_pp0_iter5_reg;
reg   [22:0] add_ln51_9_reg_1887_pp0_iter6_reg;
wire   [7:0] tmp_4_fu_907_p4;
reg   [7:0] tmp_4_reg_1893;
reg   [7:0] tmp_4_reg_1893_pp0_iter1_reg;
reg   [7:0] tmp_4_reg_1893_pp0_iter2_reg;
reg   [7:0] tmp_4_reg_1893_pp0_iter3_reg;
reg   [7:0] tmp_4_reg_1893_pp0_iter4_reg;
reg   [7:0] tmp_4_reg_1893_pp0_iter5_reg;
reg   [7:0] tmp_4_reg_1893_pp0_iter6_reg;
reg   [7:0] tmp_4_reg_1893_pp0_iter7_reg;
reg   [7:0] tmp_4_reg_1893_pp0_iter8_reg;
wire   [22:0] add_ln51_s_fu_917_p4;
reg   [22:0] add_ln51_s_reg_1900;
reg   [22:0] add_ln51_s_reg_1900_pp0_iter1_reg;
reg   [22:0] add_ln51_s_reg_1900_pp0_iter2_reg;
reg   [22:0] add_ln51_s_reg_1900_pp0_iter3_reg;
reg   [22:0] add_ln51_s_reg_1900_pp0_iter4_reg;
reg   [22:0] add_ln51_s_reg_1900_pp0_iter5_reg;
reg   [22:0] add_ln51_s_reg_1900_pp0_iter6_reg;
wire   [22:0] add_ln51_1_fu_933_p4;
reg   [22:0] add_ln51_1_reg_1906;
reg   [22:0] add_ln51_1_reg_1906_pp0_iter1_reg;
reg   [22:0] add_ln51_1_reg_1906_pp0_iter2_reg;
reg   [22:0] add_ln51_1_reg_1906_pp0_iter3_reg;
reg   [22:0] add_ln51_1_reg_1906_pp0_iter4_reg;
reg   [22:0] add_ln51_1_reg_1906_pp0_iter5_reg;
reg   [22:0] add_ln51_1_reg_1906_pp0_iter6_reg;
wire   [6:0] tmp_5_fu_947_p4;
reg   [6:0] tmp_5_reg_1912;
reg   [6:0] tmp_5_reg_1912_pp0_iter1_reg;
reg   [6:0] tmp_5_reg_1912_pp0_iter2_reg;
reg   [6:0] tmp_5_reg_1912_pp0_iter3_reg;
reg   [6:0] tmp_5_reg_1912_pp0_iter4_reg;
reg   [6:0] tmp_5_reg_1912_pp0_iter5_reg;
reg   [6:0] tmp_5_reg_1912_pp0_iter6_reg;
reg   [6:0] tmp_5_reg_1912_pp0_iter7_reg;
reg   [6:0] tmp_5_reg_1912_pp0_iter8_reg;
wire   [22:0] add_ln51_2_fu_956_p4;
reg   [22:0] add_ln51_2_reg_1923;
reg   [22:0] add_ln51_2_reg_1923_pp0_iter1_reg;
reg   [22:0] add_ln51_2_reg_1923_pp0_iter2_reg;
reg   [22:0] add_ln51_2_reg_1923_pp0_iter3_reg;
reg   [22:0] add_ln51_2_reg_1923_pp0_iter4_reg;
reg   [22:0] add_ln51_2_reg_1923_pp0_iter5_reg;
reg   [22:0] add_ln51_2_reg_1923_pp0_iter6_reg;
wire   [0:0] tmp_6_fu_971_p3;
reg   [0:0] tmp_6_reg_1929;
reg   [0:0] tmp_6_reg_1929_pp0_iter1_reg;
reg   [0:0] tmp_6_reg_1929_pp0_iter2_reg;
reg   [0:0] tmp_6_reg_1929_pp0_iter3_reg;
reg   [0:0] tmp_6_reg_1929_pp0_iter4_reg;
reg   [0:0] tmp_6_reg_1929_pp0_iter5_reg;
reg   [0:0] tmp_6_reg_1929_pp0_iter6_reg;
reg   [0:0] tmp_6_reg_1929_pp0_iter7_reg;
wire   [22:0] add_ln51_3_fu_978_p6;
reg   [22:0] add_ln51_3_reg_1934;
reg   [22:0] add_ln51_3_reg_1934_pp0_iter1_reg;
reg   [22:0] add_ln51_3_reg_1934_pp0_iter2_reg;
reg   [22:0] add_ln51_3_reg_1934_pp0_iter3_reg;
reg   [22:0] add_ln51_3_reg_1934_pp0_iter4_reg;
reg   [22:0] add_ln51_3_reg_1934_pp0_iter5_reg;
reg   [22:0] add_ln51_3_reg_1934_pp0_iter6_reg;
wire   [22:0] add_ln51_4_fu_996_p4;
reg   [22:0] add_ln51_4_reg_1940;
reg   [22:0] add_ln51_4_reg_1940_pp0_iter1_reg;
reg   [22:0] add_ln51_4_reg_1940_pp0_iter2_reg;
reg   [22:0] add_ln51_4_reg_1940_pp0_iter3_reg;
reg   [22:0] add_ln51_4_reg_1940_pp0_iter4_reg;
reg   [22:0] add_ln51_4_reg_1940_pp0_iter5_reg;
reg   [22:0] add_ln51_4_reg_1940_pp0_iter6_reg;
wire   [22:0] add_ln51_fu_1013_p2;
reg   [22:0] add_ln51_reg_1946;
reg   [22:0] add_ln51_reg_1946_pp0_iter1_reg;
reg   [22:0] add_ln51_reg_1946_pp0_iter2_reg;
reg   [22:0] add_ln51_reg_1946_pp0_iter3_reg;
reg   [22:0] add_ln51_reg_1946_pp0_iter4_reg;
reg   [22:0] add_ln51_reg_1946_pp0_iter5_reg;
reg   [22:0] add_ln51_reg_1946_pp0_iter6_reg;
wire   [22:0] add_ln51_5_fu_1024_p4;
reg   [22:0] add_ln51_5_reg_1952;
reg   [22:0] add_ln51_5_reg_1952_pp0_iter1_reg;
reg   [22:0] add_ln51_5_reg_1952_pp0_iter2_reg;
reg   [22:0] add_ln51_5_reg_1952_pp0_iter3_reg;
reg   [22:0] add_ln51_5_reg_1952_pp0_iter4_reg;
reg   [22:0] add_ln51_5_reg_1952_pp0_iter5_reg;
reg   [22:0] add_ln51_5_reg_1952_pp0_iter6_reg;
reg   [2:0] trunc_ln51_s_reg_1998;
wire   [31:0] v23_1_fu_1116_p19;
reg   [31:0] v23_1_reg_2043;
wire   [31:0] v23_2_fu_1188_p19;
reg   [31:0] v23_2_reg_2048;
wire   [31:0] v23_3_fu_1291_p19;
reg   [31:0] v23_3_reg_2133;
wire   [31:0] v23_4_fu_1363_p19;
reg   [31:0] v23_4_reg_2138;
wire   [31:0] v23_5_fu_1483_p19;
reg   [31:0] v23_5_reg_2263;
wire   [31:0] v23_6_fu_1555_p19;
reg   [31:0] v23_6_reg_2268;
wire   [31:0] v23_fu_1639_p19;
reg   [31:0] v23_reg_2313;
wire   [31:0] v23_7_fu_1711_p19;
reg   [31:0] v23_7_reg_2318;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln51_3_fu_1052_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln51_6_fu_1064_p1;
wire   [63:0] zext_ln51_9_fu_1227_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln51_12_fu_1239_p1;
wire   [63:0] zext_ln51_15_fu_1403_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_18_fu_1415_p1;
wire   [63:0] zext_ln51_fu_1435_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_21_fu_1595_p1;
wire   [63:0] zext_ln51_2_fu_1758_p1;
wire   [63:0] zext_ln51_5_fu_1770_p1;
wire   [63:0] zext_ln51_8_fu_1782_p1;
wire   [63:0] zext_ln51_11_fu_1794_p1;
wire   [63:0] zext_ln51_14_fu_1809_p1;
wire   [63:0] zext_ln51_17_fu_1821_p1;
wire   [63:0] zext_ln47_fu_1826_p1;
wire   [63:0] zext_ln51_20_fu_1837_p1;
reg   [10:0] v19_fu_126;
wire   [10:0] add_ln47_fu_1038_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_1;
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
reg   [31:0] grp_fu_805_p1;
reg   [31:0] grp_fu_809_p1;
reg   [22:0] grp_fu_813_p0;
wire   [46:0] zext_ln51_4_fu_1048_p1;
wire   [46:0] zext_ln51_7_fu_1076_p1;
wire   [46:0] zext_ln51_13_fu_1251_p1;
wire   [46:0] zext_ln51_19_fu_1427_p1;
wire   [24:0] grp_fu_813_p1;
reg   [22:0] grp_fu_818_p0;
wire   [46:0] zext_ln51_10_fu_1080_p1;
wire   [46:0] zext_ln51_16_fu_1255_p1;
wire   [46:0] zext_ln51_22_fu_1431_p1;
wire   [46:0] zext_ln51_1_fu_1447_p1;
wire   [24:0] grp_fu_818_p1;
wire   [46:0] grp_fu_813_p2;
wire   [46:0] grp_fu_818_p2;
wire   [22:0] grp_fu_901_p0;
wire   [20:0] grp_fu_901_p1;
wire   [22:0] grp_fu_927_p0;
wire   [20:0] grp_fu_927_p1;
wire   [22:0] grp_fu_941_p0;
wire   [20:0] grp_fu_941_p1;
wire   [22:0] grp_fu_965_p0;
wire   [20:0] grp_fu_965_p1;
wire   [22:0] grp_fu_990_p0;
wire   [20:0] grp_fu_990_p1;
wire   [22:0] grp_fu_1004_p0;
wire   [20:0] grp_fu_1004_p1;
wire   [22:0] zext_ln47_1_fu_1010_p1;
wire   [22:0] grp_fu_1018_p0;
wire   [20:0] grp_fu_1018_p1;
wire   [22:0] grp_fu_1032_p0;
wire   [20:0] grp_fu_1032_p1;
wire   [22:0] grp_fu_901_p2;
wire   [22:0] grp_fu_927_p2;
wire   [31:0] v23_1_fu_1116_p2;
wire   [31:0] v23_1_fu_1116_p4;
wire   [31:0] v23_1_fu_1116_p6;
wire   [31:0] v23_1_fu_1116_p8;
wire   [31:0] v23_1_fu_1116_p10;
wire   [31:0] v23_1_fu_1116_p12;
wire   [31:0] v23_1_fu_1116_p14;
wire   [31:0] v23_1_fu_1116_p16;
wire   [31:0] v23_1_fu_1116_p17;
wire   [31:0] v23_2_fu_1188_p2;
wire   [31:0] v23_2_fu_1188_p4;
wire   [31:0] v23_2_fu_1188_p6;
wire   [31:0] v23_2_fu_1188_p8;
wire   [31:0] v23_2_fu_1188_p10;
wire   [31:0] v23_2_fu_1188_p12;
wire   [31:0] v23_2_fu_1188_p14;
wire   [31:0] v23_2_fu_1188_p16;
wire   [31:0] v23_2_fu_1188_p17;
wire   [22:0] grp_fu_941_p2;
wire   [22:0] grp_fu_965_p2;
wire   [31:0] v23_3_fu_1291_p2;
wire   [31:0] v23_3_fu_1291_p4;
wire   [31:0] v23_3_fu_1291_p6;
wire   [31:0] v23_3_fu_1291_p8;
wire   [31:0] v23_3_fu_1291_p10;
wire   [31:0] v23_3_fu_1291_p12;
wire   [31:0] v23_3_fu_1291_p14;
wire   [31:0] v23_3_fu_1291_p16;
wire   [31:0] v23_3_fu_1291_p17;
wire   [31:0] v23_4_fu_1363_p2;
wire   [31:0] v23_4_fu_1363_p4;
wire   [31:0] v23_4_fu_1363_p6;
wire   [31:0] v23_4_fu_1363_p8;
wire   [31:0] v23_4_fu_1363_p10;
wire   [31:0] v23_4_fu_1363_p12;
wire   [31:0] v23_4_fu_1363_p14;
wire   [31:0] v23_4_fu_1363_p16;
wire   [31:0] v23_4_fu_1363_p17;
wire   [22:0] grp_fu_990_p2;
wire   [22:0] grp_fu_1004_p2;
wire   [22:0] grp_fu_1018_p2;
wire   [31:0] v23_5_fu_1483_p2;
wire   [31:0] v23_5_fu_1483_p4;
wire   [31:0] v23_5_fu_1483_p6;
wire   [31:0] v23_5_fu_1483_p8;
wire   [31:0] v23_5_fu_1483_p10;
wire   [31:0] v23_5_fu_1483_p12;
wire   [31:0] v23_5_fu_1483_p14;
wire   [31:0] v23_5_fu_1483_p16;
wire   [31:0] v23_5_fu_1483_p17;
wire   [31:0] v23_6_fu_1555_p2;
wire   [31:0] v23_6_fu_1555_p4;
wire   [31:0] v23_6_fu_1555_p6;
wire   [31:0] v23_6_fu_1555_p8;
wire   [31:0] v23_6_fu_1555_p10;
wire   [31:0] v23_6_fu_1555_p12;
wire   [31:0] v23_6_fu_1555_p14;
wire   [31:0] v23_6_fu_1555_p16;
wire   [31:0] v23_6_fu_1555_p17;
wire   [22:0] grp_fu_1032_p2;
wire   [31:0] v23_fu_1639_p2;
wire   [31:0] v23_fu_1639_p4;
wire   [31:0] v23_fu_1639_p6;
wire   [31:0] v23_fu_1639_p8;
wire   [31:0] v23_fu_1639_p10;
wire   [31:0] v23_fu_1639_p12;
wire   [31:0] v23_fu_1639_p14;
wire   [31:0] v23_fu_1639_p16;
wire   [31:0] v23_fu_1639_p17;
wire   [31:0] v23_7_fu_1711_p2;
wire   [31:0] v23_7_fu_1711_p4;
wire   [31:0] v23_7_fu_1711_p6;
wire   [31:0] v23_7_fu_1711_p8;
wire   [31:0] v23_7_fu_1711_p10;
wire   [31:0] v23_7_fu_1711_p12;
wire   [31:0] v23_7_fu_1711_p14;
wire   [31:0] v23_7_fu_1711_p16;
wire   [31:0] v23_7_fu_1711_p17;
wire   [9:0] or_ln47_7_fu_1751_p3;
wire   [9:0] or_ln47_8_fu_1763_p3;
wire   [9:0] or_ln47_9_fu_1775_p3;
wire   [9:0] or_ln47_s_fu_1787_p3;
wire   [9:0] or_ln47_1_fu_1799_p5;
wire   [9:0] or_ln47_2_fu_1814_p3;
wire   [9:0] or_ln47_3_fu_1830_p3;
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
wire   [2:0] v23_1_fu_1116_p1;
wire   [2:0] v23_1_fu_1116_p3;
wire   [2:0] v23_1_fu_1116_p5;
wire   [2:0] v23_1_fu_1116_p7;
wire  signed [2:0] v23_1_fu_1116_p9;
wire  signed [2:0] v23_1_fu_1116_p11;
wire  signed [2:0] v23_1_fu_1116_p13;
wire  signed [2:0] v23_1_fu_1116_p15;
wire   [2:0] v23_2_fu_1188_p1;
wire   [2:0] v23_2_fu_1188_p3;
wire   [2:0] v23_2_fu_1188_p5;
wire   [2:0] v23_2_fu_1188_p7;
wire  signed [2:0] v23_2_fu_1188_p9;
wire  signed [2:0] v23_2_fu_1188_p11;
wire  signed [2:0] v23_2_fu_1188_p13;
wire  signed [2:0] v23_2_fu_1188_p15;
wire   [2:0] v23_3_fu_1291_p1;
wire   [2:0] v23_3_fu_1291_p3;
wire   [2:0] v23_3_fu_1291_p5;
wire   [2:0] v23_3_fu_1291_p7;
wire  signed [2:0] v23_3_fu_1291_p9;
wire  signed [2:0] v23_3_fu_1291_p11;
wire  signed [2:0] v23_3_fu_1291_p13;
wire  signed [2:0] v23_3_fu_1291_p15;
wire   [2:0] v23_4_fu_1363_p1;
wire   [2:0] v23_4_fu_1363_p3;
wire   [2:0] v23_4_fu_1363_p5;
wire   [2:0] v23_4_fu_1363_p7;
wire  signed [2:0] v23_4_fu_1363_p9;
wire  signed [2:0] v23_4_fu_1363_p11;
wire  signed [2:0] v23_4_fu_1363_p13;
wire  signed [2:0] v23_4_fu_1363_p15;
wire   [2:0] v23_5_fu_1483_p1;
wire   [2:0] v23_5_fu_1483_p3;
wire   [2:0] v23_5_fu_1483_p5;
wire   [2:0] v23_5_fu_1483_p7;
wire  signed [2:0] v23_5_fu_1483_p9;
wire  signed [2:0] v23_5_fu_1483_p11;
wire  signed [2:0] v23_5_fu_1483_p13;
wire  signed [2:0] v23_5_fu_1483_p15;
wire   [2:0] v23_6_fu_1555_p1;
wire   [2:0] v23_6_fu_1555_p3;
wire   [2:0] v23_6_fu_1555_p5;
wire   [2:0] v23_6_fu_1555_p7;
wire  signed [2:0] v23_6_fu_1555_p9;
wire  signed [2:0] v23_6_fu_1555_p11;
wire  signed [2:0] v23_6_fu_1555_p13;
wire  signed [2:0] v23_6_fu_1555_p15;
wire   [2:0] v23_fu_1639_p1;
wire   [2:0] v23_fu_1639_p3;
wire   [2:0] v23_fu_1639_p5;
wire   [2:0] v23_fu_1639_p7;
wire  signed [2:0] v23_fu_1639_p9;
wire  signed [2:0] v23_fu_1639_p11;
wire  signed [2:0] v23_fu_1639_p13;
wire  signed [2:0] v23_fu_1639_p15;
wire   [2:0] v23_7_fu_1711_p1;
wire   [2:0] v23_7_fu_1711_p3;
wire   [2:0] v23_7_fu_1711_p5;
wire   [2:0] v23_7_fu_1711_p7;
wire  signed [2:0] v23_7_fu_1711_p9;
wire  signed [2:0] v23_7_fu_1711_p11;
wire  signed [2:0] v23_7_fu_1711_p13;
wire  signed [2:0] v23_7_fu_1711_p15;
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
#0 v19_fu_126 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U85(.din0(grp_fu_813_p0),.din1(grp_fu_813_p1),.dout(grp_fu_813_p2));
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U86(.din0(grp_fu_818_p0),.din1(grp_fu_818_p1),.dout(grp_fu_818_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U87(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_901_p0),.din1(grp_fu_901_p1),.ce(1'b1),.dout(grp_fu_901_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U88(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_927_p0),.din1(grp_fu_927_p1),.ce(1'b1),.dout(grp_fu_927_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U89(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_941_p0),.din1(grp_fu_941_p1),.ce(1'b1),.dout(grp_fu_941_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U90(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_965_p0),.din1(grp_fu_965_p1),.ce(1'b1),.dout(grp_fu_965_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U91(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_990_p0),.din1(grp_fu_990_p1),.ce(1'b1),.dout(grp_fu_990_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U92(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1004_p0),.din1(grp_fu_1004_p1),.ce(1'b1),.dout(grp_fu_1004_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U93(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1018_p0),.din1(grp_fu_1018_p1),.ce(1'b1),.dout(grp_fu_1018_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U94(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1032_p0),.din1(grp_fu_1032_p1),.ce(1'b1),.dout(grp_fu_1032_p2));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U95(.din0(v23_1_fu_1116_p2),.din1(v23_1_fu_1116_p4),.din2(v23_1_fu_1116_p6),.din3(v23_1_fu_1116_p8),.din4(v23_1_fu_1116_p10),.din5(v23_1_fu_1116_p12),.din6(v23_1_fu_1116_p14),.din7(v23_1_fu_1116_p16),.def(v23_1_fu_1116_p17),.sel(reg_843),.dout(v23_1_fu_1116_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U96(.din0(v23_2_fu_1188_p2),.din1(v23_2_fu_1188_p4),.din2(v23_2_fu_1188_p6),.din3(v23_2_fu_1188_p8),.din4(v23_2_fu_1188_p10),.din5(v23_2_fu_1188_p12),.din6(v23_2_fu_1188_p14),.din7(v23_2_fu_1188_p16),.def(v23_2_fu_1188_p17),.sel(trunc_ln51_s_reg_1998),.dout(v23_2_fu_1188_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U97(.din0(v23_3_fu_1291_p2),.din1(v23_3_fu_1291_p4),.din2(v23_3_fu_1291_p6),.din3(v23_3_fu_1291_p8),.din4(v23_3_fu_1291_p10),.din5(v23_3_fu_1291_p12),.din6(v23_3_fu_1291_p14),.din7(v23_3_fu_1291_p16),.def(v23_3_fu_1291_p17),.sel(reg_847),.dout(v23_3_fu_1291_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U98(.din0(v23_4_fu_1363_p2),.din1(v23_4_fu_1363_p4),.din2(v23_4_fu_1363_p6),.din3(v23_4_fu_1363_p8),.din4(v23_4_fu_1363_p10),.din5(v23_4_fu_1363_p12),.din6(v23_4_fu_1363_p14),.din7(v23_4_fu_1363_p16),.def(v23_4_fu_1363_p17),.sel(reg_843),.dout(v23_4_fu_1363_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U99(.din0(v23_5_fu_1483_p2),.din1(v23_5_fu_1483_p4),.din2(v23_5_fu_1483_p6),.din3(v23_5_fu_1483_p8),.din4(v23_5_fu_1483_p10),.din5(v23_5_fu_1483_p12),.din6(v23_5_fu_1483_p14),.din7(v23_5_fu_1483_p16),.def(v23_5_fu_1483_p17),.sel(reg_851),.dout(v23_5_fu_1483_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U100(.din0(v23_6_fu_1555_p2),.din1(v23_6_fu_1555_p4),.din2(v23_6_fu_1555_p6),.din3(v23_6_fu_1555_p8),.din4(v23_6_fu_1555_p10),.din5(v23_6_fu_1555_p12),.din6(v23_6_fu_1555_p14),.din7(v23_6_fu_1555_p16),.def(v23_6_fu_1555_p17),.sel(reg_843),.dout(v23_6_fu_1555_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U101(.din0(v23_fu_1639_p2),.din1(v23_fu_1639_p4),.din2(v23_fu_1639_p6),.din3(v23_fu_1639_p8),.din4(v23_fu_1639_p10),.din5(v23_fu_1639_p12),.din6(v23_fu_1639_p14),.din7(v23_fu_1639_p16),.def(v23_fu_1639_p17),.sel(reg_851),.dout(v23_fu_1639_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U102(.din0(v23_7_fu_1711_p2),.din1(v23_7_fu_1711_p4),.din2(v23_7_fu_1711_p6),.din3(v23_7_fu_1711_p8),.din4(v23_7_fu_1711_p10),.din5(v23_7_fu_1711_p12),.din6(v23_7_fu_1711_p14),.din7(v23_7_fu_1711_p16),.def(v23_7_fu_1711_p17),.sel(reg_847),.dout(v23_7_fu_1711_p19));
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
        v19_fu_126 <= 11'd0;
    end else if (((tmp_reg_1878 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v19_fu_126 <= add_ln47_fu_1038_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln51_1_reg_1906[22 : 2] <= add_ln51_1_fu_933_p4[22 : 2];
        add_ln51_1_reg_1906_pp0_iter1_reg[22 : 2] <= add_ln51_1_reg_1906[22 : 2];
        add_ln51_1_reg_1906_pp0_iter2_reg[22 : 2] <= add_ln51_1_reg_1906_pp0_iter1_reg[22 : 2];
        add_ln51_1_reg_1906_pp0_iter3_reg[22 : 2] <= add_ln51_1_reg_1906_pp0_iter2_reg[22 : 2];
        add_ln51_1_reg_1906_pp0_iter4_reg[22 : 2] <= add_ln51_1_reg_1906_pp0_iter3_reg[22 : 2];
        add_ln51_1_reg_1906_pp0_iter5_reg[22 : 2] <= add_ln51_1_reg_1906_pp0_iter4_reg[22 : 2];
        add_ln51_1_reg_1906_pp0_iter6_reg[22 : 2] <= add_ln51_1_reg_1906_pp0_iter5_reg[22 : 2];
        add_ln51_2_reg_1923[22 : 3] <= add_ln51_2_fu_956_p4[22 : 3];
        add_ln51_2_reg_1923_pp0_iter1_reg[22 : 3] <= add_ln51_2_reg_1923[22 : 3];
        add_ln51_2_reg_1923_pp0_iter2_reg[22 : 3] <= add_ln51_2_reg_1923_pp0_iter1_reg[22 : 3];
        add_ln51_2_reg_1923_pp0_iter3_reg[22 : 3] <= add_ln51_2_reg_1923_pp0_iter2_reg[22 : 3];
        add_ln51_2_reg_1923_pp0_iter4_reg[22 : 3] <= add_ln51_2_reg_1923_pp0_iter3_reg[22 : 3];
        add_ln51_2_reg_1923_pp0_iter5_reg[22 : 3] <= add_ln51_2_reg_1923_pp0_iter4_reg[22 : 3];
        add_ln51_2_reg_1923_pp0_iter6_reg[22 : 3] <= add_ln51_2_reg_1923_pp0_iter5_reg[22 : 3];
        tmp_5_reg_1912 <= {{v19_1_reg_1869[9:3]}};
        tmp_5_reg_1912_pp0_iter1_reg <= tmp_5_reg_1912;
        tmp_5_reg_1912_pp0_iter2_reg <= tmp_5_reg_1912_pp0_iter1_reg;
        tmp_5_reg_1912_pp0_iter3_reg <= tmp_5_reg_1912_pp0_iter2_reg;
        tmp_5_reg_1912_pp0_iter4_reg <= tmp_5_reg_1912_pp0_iter3_reg;
        tmp_5_reg_1912_pp0_iter5_reg <= tmp_5_reg_1912_pp0_iter4_reg;
        tmp_5_reg_1912_pp0_iter6_reg <= tmp_5_reg_1912_pp0_iter5_reg;
        tmp_5_reg_1912_pp0_iter7_reg <= tmp_5_reg_1912_pp0_iter6_reg;
        tmp_5_reg_1912_pp0_iter8_reg <= tmp_5_reg_1912_pp0_iter7_reg;
        v23_5_reg_2263 <= v23_5_fu_1483_p19;
        v23_6_reg_2268 <= v23_6_fu_1555_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln51_3_reg_1934[1] <= add_ln51_3_fu_978_p6[1];
add_ln51_3_reg_1934[22 : 3] <= add_ln51_3_fu_978_p6[22 : 3];
        add_ln51_3_reg_1934_pp0_iter1_reg[1] <= add_ln51_3_reg_1934[1];
add_ln51_3_reg_1934_pp0_iter1_reg[22 : 3] <= add_ln51_3_reg_1934[22 : 3];
        add_ln51_3_reg_1934_pp0_iter2_reg[1] <= add_ln51_3_reg_1934_pp0_iter1_reg[1];
add_ln51_3_reg_1934_pp0_iter2_reg[22 : 3] <= add_ln51_3_reg_1934_pp0_iter1_reg[22 : 3];
        add_ln51_3_reg_1934_pp0_iter3_reg[1] <= add_ln51_3_reg_1934_pp0_iter2_reg[1];
add_ln51_3_reg_1934_pp0_iter3_reg[22 : 3] <= add_ln51_3_reg_1934_pp0_iter2_reg[22 : 3];
        add_ln51_3_reg_1934_pp0_iter4_reg[1] <= add_ln51_3_reg_1934_pp0_iter3_reg[1];
add_ln51_3_reg_1934_pp0_iter4_reg[22 : 3] <= add_ln51_3_reg_1934_pp0_iter3_reg[22 : 3];
        add_ln51_3_reg_1934_pp0_iter5_reg[1] <= add_ln51_3_reg_1934_pp0_iter4_reg[1];
add_ln51_3_reg_1934_pp0_iter5_reg[22 : 3] <= add_ln51_3_reg_1934_pp0_iter4_reg[22 : 3];
        add_ln51_3_reg_1934_pp0_iter6_reg[1] <= add_ln51_3_reg_1934_pp0_iter5_reg[1];
add_ln51_3_reg_1934_pp0_iter6_reg[22 : 3] <= add_ln51_3_reg_1934_pp0_iter5_reg[22 : 3];
        add_ln51_4_reg_1940[22 : 3] <= add_ln51_4_fu_996_p4[22 : 3];
        add_ln51_4_reg_1940_pp0_iter1_reg[22 : 3] <= add_ln51_4_reg_1940[22 : 3];
        add_ln51_4_reg_1940_pp0_iter2_reg[22 : 3] <= add_ln51_4_reg_1940_pp0_iter1_reg[22 : 3];
        add_ln51_4_reg_1940_pp0_iter3_reg[22 : 3] <= add_ln51_4_reg_1940_pp0_iter2_reg[22 : 3];
        add_ln51_4_reg_1940_pp0_iter4_reg[22 : 3] <= add_ln51_4_reg_1940_pp0_iter3_reg[22 : 3];
        add_ln51_4_reg_1940_pp0_iter5_reg[22 : 3] <= add_ln51_4_reg_1940_pp0_iter4_reg[22 : 3];
        add_ln51_4_reg_1940_pp0_iter6_reg[22 : 3] <= add_ln51_4_reg_1940_pp0_iter5_reg[22 : 3];
        tmp_6_reg_1929 <= v19_1_reg_1869[32'd1];
        tmp_6_reg_1929_pp0_iter1_reg <= tmp_6_reg_1929;
        tmp_6_reg_1929_pp0_iter2_reg <= tmp_6_reg_1929_pp0_iter1_reg;
        tmp_6_reg_1929_pp0_iter3_reg <= tmp_6_reg_1929_pp0_iter2_reg;
        tmp_6_reg_1929_pp0_iter4_reg <= tmp_6_reg_1929_pp0_iter3_reg;
        tmp_6_reg_1929_pp0_iter5_reg <= tmp_6_reg_1929_pp0_iter4_reg;
        tmp_6_reg_1929_pp0_iter6_reg <= tmp_6_reg_1929_pp0_iter5_reg;
        tmp_6_reg_1929_pp0_iter7_reg <= tmp_6_reg_1929_pp0_iter6_reg;
        v23_7_reg_2318 <= v23_7_fu_1711_p19;
        v23_reg_2313 <= v23_fu_1639_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln51_5_reg_1952[22 : 3] <= add_ln51_5_fu_1024_p4[22 : 3];
        add_ln51_5_reg_1952_pp0_iter1_reg[22 : 3] <= add_ln51_5_reg_1952[22 : 3];
        add_ln51_5_reg_1952_pp0_iter2_reg[22 : 3] <= add_ln51_5_reg_1952_pp0_iter1_reg[22 : 3];
        add_ln51_5_reg_1952_pp0_iter3_reg[22 : 3] <= add_ln51_5_reg_1952_pp0_iter2_reg[22 : 3];
        add_ln51_5_reg_1952_pp0_iter4_reg[22 : 3] <= add_ln51_5_reg_1952_pp0_iter3_reg[22 : 3];
        add_ln51_5_reg_1952_pp0_iter5_reg[22 : 3] <= add_ln51_5_reg_1952_pp0_iter4_reg[22 : 3];
        add_ln51_5_reg_1952_pp0_iter6_reg[22 : 3] <= add_ln51_5_reg_1952_pp0_iter5_reg[22 : 3];
        add_ln51_reg_1946 <= add_ln51_fu_1013_p2;
        add_ln51_reg_1946_pp0_iter1_reg <= add_ln51_reg_1946;
        add_ln51_reg_1946_pp0_iter2_reg <= add_ln51_reg_1946_pp0_iter1_reg;
        add_ln51_reg_1946_pp0_iter3_reg <= add_ln51_reg_1946_pp0_iter2_reg;
        add_ln51_reg_1946_pp0_iter4_reg <= add_ln51_reg_1946_pp0_iter3_reg;
        add_ln51_reg_1946_pp0_iter5_reg <= add_ln51_reg_1946_pp0_iter4_reg;
        add_ln51_reg_1946_pp0_iter6_reg <= add_ln51_reg_1946_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        v23_1_reg_2043 <= v23_1_fu_1116_p19;
        v23_2_reg_2048 <= v23_2_fu_1188_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln51_9_reg_1887[22 : 1] <= add_ln51_9_fu_891_p4[22 : 1];
        add_ln51_9_reg_1887_pp0_iter1_reg[22 : 1] <= add_ln51_9_reg_1887[22 : 1];
        add_ln51_9_reg_1887_pp0_iter2_reg[22 : 1] <= add_ln51_9_reg_1887_pp0_iter1_reg[22 : 1];
        add_ln51_9_reg_1887_pp0_iter3_reg[22 : 1] <= add_ln51_9_reg_1887_pp0_iter2_reg[22 : 1];
        add_ln51_9_reg_1887_pp0_iter4_reg[22 : 1] <= add_ln51_9_reg_1887_pp0_iter3_reg[22 : 1];
        add_ln51_9_reg_1887_pp0_iter5_reg[22 : 1] <= add_ln51_9_reg_1887_pp0_iter4_reg[22 : 1];
        add_ln51_9_reg_1887_pp0_iter6_reg[22 : 1] <= add_ln51_9_reg_1887_pp0_iter5_reg[22 : 1];
        add_ln51_s_reg_1900[22 : 2] <= add_ln51_s_fu_917_p4[22 : 2];
        add_ln51_s_reg_1900_pp0_iter1_reg[22 : 2] <= add_ln51_s_reg_1900[22 : 2];
        add_ln51_s_reg_1900_pp0_iter2_reg[22 : 2] <= add_ln51_s_reg_1900_pp0_iter1_reg[22 : 2];
        add_ln51_s_reg_1900_pp0_iter3_reg[22 : 2] <= add_ln51_s_reg_1900_pp0_iter2_reg[22 : 2];
        add_ln51_s_reg_1900_pp0_iter4_reg[22 : 2] <= add_ln51_s_reg_1900_pp0_iter3_reg[22 : 2];
        add_ln51_s_reg_1900_pp0_iter5_reg[22 : 2] <= add_ln51_s_reg_1900_pp0_iter4_reg[22 : 2];
        add_ln51_s_reg_1900_pp0_iter6_reg[22 : 2] <= add_ln51_s_reg_1900_pp0_iter5_reg[22 : 2];
        tmp_4_reg_1893 <= {{ap_sig_allocacmp_v19_1[9:2]}};
        tmp_4_reg_1893_pp0_iter1_reg <= tmp_4_reg_1893;
        tmp_4_reg_1893_pp0_iter2_reg <= tmp_4_reg_1893_pp0_iter1_reg;
        tmp_4_reg_1893_pp0_iter3_reg <= tmp_4_reg_1893_pp0_iter2_reg;
        tmp_4_reg_1893_pp0_iter4_reg <= tmp_4_reg_1893_pp0_iter3_reg;
        tmp_4_reg_1893_pp0_iter5_reg <= tmp_4_reg_1893_pp0_iter4_reg;
        tmp_4_reg_1893_pp0_iter6_reg <= tmp_4_reg_1893_pp0_iter5_reg;
        tmp_4_reg_1893_pp0_iter7_reg <= tmp_4_reg_1893_pp0_iter6_reg;
        tmp_4_reg_1893_pp0_iter8_reg <= tmp_4_reg_1893_pp0_iter7_reg;
        tmp_reg_1878 <= ap_sig_allocacmp_v19_1[32'd10];
        tmp_s_reg_1882 <= {{ap_sig_allocacmp_v19_1[9:1]}};
        tmp_s_reg_1882_pp0_iter1_reg <= tmp_s_reg_1882;
        tmp_s_reg_1882_pp0_iter2_reg <= tmp_s_reg_1882_pp0_iter1_reg;
        tmp_s_reg_1882_pp0_iter3_reg <= tmp_s_reg_1882_pp0_iter2_reg;
        tmp_s_reg_1882_pp0_iter4_reg <= tmp_s_reg_1882_pp0_iter3_reg;
        tmp_s_reg_1882_pp0_iter5_reg <= tmp_s_reg_1882_pp0_iter4_reg;
        tmp_s_reg_1882_pp0_iter6_reg <= tmp_s_reg_1882_pp0_iter5_reg;
        tmp_s_reg_1882_pp0_iter7_reg <= tmp_s_reg_1882_pp0_iter6_reg;
        v19_1_reg_1869 <= ap_sig_allocacmp_v19_1;
        v19_1_reg_1869_pp0_iter1_reg <= v19_1_reg_1869;
        v19_1_reg_1869_pp0_iter2_reg <= v19_1_reg_1869_pp0_iter1_reg;
        v19_1_reg_1869_pp0_iter3_reg <= v19_1_reg_1869_pp0_iter2_reg;
        v19_1_reg_1869_pp0_iter4_reg <= v19_1_reg_1869_pp0_iter3_reg;
        v19_1_reg_1869_pp0_iter5_reg <= v19_1_reg_1869_pp0_iter4_reg;
        v19_1_reg_1869_pp0_iter6_reg <= v19_1_reg_1869_pp0_iter5_reg;
        v19_1_reg_1869_pp0_iter7_reg <= v19_1_reg_1869_pp0_iter6_reg;
        v19_1_reg_1869_pp0_iter8_reg <= v19_1_reg_1869_pp0_iter7_reg;
        v23_3_reg_2133 <= v23_3_fu_1291_p19;
        v23_4_reg_2138 <= v23_4_fu_1363_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_843 <= {{grp_fu_813_p2[45:43]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_847 <= {{grp_fu_818_p2[45:43]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_851 <= {{grp_fu_818_p2[45:43]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_855 <= grp_fu_913_p_dout0;
        reg_860 <= grp_fu_917_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln51_s_reg_1998 <= {{grp_fu_813_p2[45:43]}};
    end
end
always @ (*) begin
    if (((tmp_reg_1878 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v19_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_1 = v19_fu_126;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_805_p1 = v23_reg_2313;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_805_p1 = v23_5_reg_2263;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_805_p1 = v23_3_reg_2133;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_805_p1 = v23_1_reg_2043;
        end else begin
            grp_fu_805_p1 = 'bx;
        end
    end else begin
        grp_fu_805_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_809_p1 = v23_7_reg_2318;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_809_p1 = v23_6_reg_2268;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_809_p1 = v23_4_reg_2138;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_809_p1 = v23_2_reg_2048;
        end else begin
            grp_fu_809_p1 = 'bx;
        end
    end else begin
        grp_fu_809_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_813_p0 = zext_ln51_19_fu_1427_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_813_p0 = zext_ln51_13_fu_1251_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_813_p0 = zext_ln51_7_fu_1076_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_813_p0 = zext_ln51_4_fu_1048_p1;
    end else begin
        grp_fu_813_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_818_p0 = zext_ln51_1_fu_1447_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_818_p0 = zext_ln51_22_fu_1431_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_818_p0 = zext_ln51_16_fu_1255_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_818_p0 = zext_ln51_10_fu_1080_p1;
    end else begin
        grp_fu_818_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address0_local = zext_ln51_21_fu_1595_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address0_local = zext_ln51_18_fu_1415_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address0_local = zext_ln51_12_fu_1239_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address0_local = zext_ln51_6_fu_1064_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address1_local = zext_ln51_fu_1435_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address1_local = zext_ln51_15_fu_1403_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address1_local = zext_ln51_9_fu_1227_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address1_local = zext_ln51_3_fu_1052_p1;
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
        v0_1_address0_local = zext_ln51_21_fu_1595_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address0_local = zext_ln51_18_fu_1415_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address0_local = zext_ln51_12_fu_1239_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address0_local = zext_ln51_6_fu_1064_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address1_local = zext_ln51_fu_1435_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address1_local = zext_ln51_15_fu_1403_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address1_local = zext_ln51_9_fu_1227_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address1_local = zext_ln51_3_fu_1052_p1;
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
        v0_2_address0_local = zext_ln51_21_fu_1595_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address0_local = zext_ln51_18_fu_1415_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address0_local = zext_ln51_12_fu_1239_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_2_address0_local = zext_ln51_6_fu_1064_p1;
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address1_local = zext_ln51_fu_1435_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address1_local = zext_ln51_15_fu_1403_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address1_local = zext_ln51_9_fu_1227_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_2_address1_local = zext_ln51_3_fu_1052_p1;
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
        v0_3_address0_local = zext_ln51_21_fu_1595_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address0_local = zext_ln51_18_fu_1415_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address0_local = zext_ln51_12_fu_1239_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_3_address0_local = zext_ln51_6_fu_1064_p1;
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address1_local = zext_ln51_fu_1435_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address1_local = zext_ln51_15_fu_1403_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address1_local = zext_ln51_9_fu_1227_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_3_address1_local = zext_ln51_3_fu_1052_p1;
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_4_address0_local = zext_ln51_21_fu_1595_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_4_address0_local = zext_ln51_18_fu_1415_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_4_address0_local = zext_ln51_12_fu_1239_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_4_address0_local = zext_ln51_6_fu_1064_p1;
    end else begin
        v0_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_4_address1_local = zext_ln51_fu_1435_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_4_address1_local = zext_ln51_15_fu_1403_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_4_address1_local = zext_ln51_9_fu_1227_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_4_address1_local = zext_ln51_3_fu_1052_p1;
    end else begin
        v0_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_4_ce1_local = 1'b1;
    end else begin
        v0_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_5_address0_local = zext_ln51_21_fu_1595_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_5_address0_local = zext_ln51_18_fu_1415_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_5_address0_local = zext_ln51_12_fu_1239_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_5_address0_local = zext_ln51_6_fu_1064_p1;
    end else begin
        v0_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_5_address1_local = zext_ln51_fu_1435_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_5_address1_local = zext_ln51_15_fu_1403_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_5_address1_local = zext_ln51_9_fu_1227_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_5_address1_local = zext_ln51_3_fu_1052_p1;
    end else begin
        v0_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_5_ce1_local = 1'b1;
    end else begin
        v0_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_6_address0_local = zext_ln51_21_fu_1595_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_6_address0_local = zext_ln51_18_fu_1415_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_6_address0_local = zext_ln51_12_fu_1239_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_6_address0_local = zext_ln51_6_fu_1064_p1;
    end else begin
        v0_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_6_address1_local = zext_ln51_fu_1435_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_6_address1_local = zext_ln51_15_fu_1403_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_6_address1_local = zext_ln51_9_fu_1227_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_6_address1_local = zext_ln51_3_fu_1052_p1;
    end else begin
        v0_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_6_ce1_local = 1'b1;
    end else begin
        v0_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_7_address0_local = zext_ln51_21_fu_1595_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_7_address0_local = zext_ln51_18_fu_1415_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_7_address0_local = zext_ln51_12_fu_1239_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_7_address0_local = zext_ln51_6_fu_1064_p1;
    end else begin
        v0_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_7_address1_local = zext_ln51_fu_1435_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_7_address1_local = zext_ln51_15_fu_1403_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_7_address1_local = zext_ln51_9_fu_1227_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_7_address1_local = zext_ln51_3_fu_1052_p1;
    end else begin
        v0_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_7_ce1_local = 1'b1;
    end else begin
        v0_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_address0_local = zext_ln51_20_fu_1837_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address0_local = zext_ln51_17_fu_1821_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address0_local = zext_ln51_11_fu_1794_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address0_local = zext_ln51_5_fu_1770_p1;
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
            v3_address1_local = zext_ln47_fu_1826_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address1_local = zext_ln51_14_fu_1809_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address1_local = zext_ln51_8_fu_1782_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address1_local = zext_ln51_2_fu_1758_p1;
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
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
assign add_ln47_fu_1038_p2 = (v19_1_reg_1869 + 11'd8);
assign add_ln51_1_fu_933_p4 = {{{v5_1}, {tmp_4_reg_1893}}, {2'd3}};
assign add_ln51_2_fu_956_p4 = {{{v5_1}, {tmp_5_fu_947_p4}}, {3'd4}};
assign add_ln51_3_fu_978_p6 = {{{{{v5_1}, {tmp_5_reg_1912}}, {1'd1}}, {tmp_6_fu_971_p3}}, {1'd1}};
assign add_ln51_4_fu_996_p4 = {{{v5_1}, {tmp_5_reg_1912}}, {3'd6}};
assign add_ln51_5_fu_1024_p4 = {{{v5_1}, {tmp_5_reg_1912}}, {3'd7}};
assign add_ln51_9_fu_891_p4 = {{{v5_1}, {tmp_s_fu_881_p4}}, {1'd1}};
assign add_ln51_fu_1013_p2 = (zext_ln47_1_fu_1010_p1 + tmp_3);
assign add_ln51_s_fu_917_p4 = {{{v5_1}, {tmp_4_fu_907_p4}}, {2'd2}};
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
assign grp_fu_1004_p0 = {{{v5_1}, {tmp_5_reg_1912}}, {3'd6}};
assign grp_fu_1004_p1 = 23'd576000;
assign grp_fu_1018_p0 = (zext_ln47_1_fu_1010_p1 + tmp_3);
assign grp_fu_1018_p1 = 23'd576000;
assign grp_fu_1032_p0 = {{{v5_1}, {tmp_5_reg_1912}}, {3'd7}};
assign grp_fu_1032_p1 = 23'd576000;
assign grp_fu_813_p1 = 47'd15270995;
assign grp_fu_818_p1 = 47'd15270995;
assign grp_fu_901_p0 = {{{v5_1}, {tmp_s_fu_881_p4}}, {1'd1}};
assign grp_fu_901_p1 = 23'd576000;
assign grp_fu_913_p_ce = 1'b1;
assign grp_fu_913_p_din0 = v22_1;
assign grp_fu_913_p_din1 = grp_fu_805_p1;
assign grp_fu_917_p_ce = 1'b1;
assign grp_fu_917_p_din0 = v22_1;
assign grp_fu_917_p_din1 = grp_fu_809_p1;
assign grp_fu_927_p0 = {{{v5_1}, {tmp_4_fu_907_p4}}, {2'd2}};
assign grp_fu_927_p1 = 23'd576000;
assign grp_fu_941_p0 = {{{v5_1}, {tmp_4_reg_1893}}, {2'd3}};
assign grp_fu_941_p1 = 23'd576000;
assign grp_fu_965_p0 = {{{v5_1}, {tmp_5_fu_947_p4}}, {3'd4}};
assign grp_fu_965_p1 = 23'd576000;
assign grp_fu_990_p0 = {{{{{v5_1}, {tmp_5_reg_1912}}, {1'd1}}, {tmp_6_fu_971_p3}}, {1'd1}};
assign grp_fu_990_p1 = 23'd576000;
assign or_ln47_1_fu_1799_p5 = {{{{tmp_5_reg_1912_pp0_iter8_reg}, {1'd1}}, {tmp_6_reg_1929_pp0_iter7_reg}}, {1'd1}};
assign or_ln47_2_fu_1814_p3 = {{tmp_5_reg_1912_pp0_iter8_reg}, {3'd6}};
assign or_ln47_3_fu_1830_p3 = {{tmp_5_reg_1912_pp0_iter8_reg}, {3'd7}};
assign or_ln47_7_fu_1751_p3 = {{tmp_s_reg_1882_pp0_iter7_reg}, {1'd1}};
assign or_ln47_8_fu_1763_p3 = {{tmp_4_reg_1893_pp0_iter7_reg}, {2'd2}};
assign or_ln47_9_fu_1775_p3 = {{tmp_4_reg_1893_pp0_iter8_reg}, {2'd3}};
assign or_ln47_s_fu_1787_p3 = {{tmp_5_reg_1912_pp0_iter7_reg}, {3'd4}};
assign tmp_4_fu_907_p4 = {{ap_sig_allocacmp_v19_1[9:2]}};
assign tmp_5_fu_947_p4 = {{v19_1_reg_1869[9:3]}};
assign tmp_6_fu_971_p3 = v19_1_reg_1869[32'd1];
assign tmp_s_fu_881_p4 = {{ap_sig_allocacmp_v19_1[9:1]}};
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
assign v23_1_fu_1116_p10 = v0_4_q1;
assign v23_1_fu_1116_p12 = v0_5_q1;
assign v23_1_fu_1116_p14 = v0_6_q1;
assign v23_1_fu_1116_p16 = v0_7_q1;
assign v23_1_fu_1116_p17 = 'bx;
assign v23_1_fu_1116_p2 = v0_0_q1;
assign v23_1_fu_1116_p4 = v0_1_q1;
assign v23_1_fu_1116_p6 = v0_2_q1;
assign v23_1_fu_1116_p8 = v0_3_q1;
assign v23_2_fu_1188_p10 = v0_4_q0;
assign v23_2_fu_1188_p12 = v0_5_q0;
assign v23_2_fu_1188_p14 = v0_6_q0;
assign v23_2_fu_1188_p16 = v0_7_q0;
assign v23_2_fu_1188_p17 = 'bx;
assign v23_2_fu_1188_p2 = v0_0_q0;
assign v23_2_fu_1188_p4 = v0_1_q0;
assign v23_2_fu_1188_p6 = v0_2_q0;
assign v23_2_fu_1188_p8 = v0_3_q0;
assign v23_3_fu_1291_p10 = v0_4_q1;
assign v23_3_fu_1291_p12 = v0_5_q1;
assign v23_3_fu_1291_p14 = v0_6_q1;
assign v23_3_fu_1291_p16 = v0_7_q1;
assign v23_3_fu_1291_p17 = 'bx;
assign v23_3_fu_1291_p2 = v0_0_q1;
assign v23_3_fu_1291_p4 = v0_1_q1;
assign v23_3_fu_1291_p6 = v0_2_q1;
assign v23_3_fu_1291_p8 = v0_3_q1;
assign v23_4_fu_1363_p10 = v0_4_q0;
assign v23_4_fu_1363_p12 = v0_5_q0;
assign v23_4_fu_1363_p14 = v0_6_q0;
assign v23_4_fu_1363_p16 = v0_7_q0;
assign v23_4_fu_1363_p17 = 'bx;
assign v23_4_fu_1363_p2 = v0_0_q0;
assign v23_4_fu_1363_p4 = v0_1_q0;
assign v23_4_fu_1363_p6 = v0_2_q0;
assign v23_4_fu_1363_p8 = v0_3_q0;
assign v23_5_fu_1483_p10 = v0_4_q1;
assign v23_5_fu_1483_p12 = v0_5_q1;
assign v23_5_fu_1483_p14 = v0_6_q1;
assign v23_5_fu_1483_p16 = v0_7_q1;
assign v23_5_fu_1483_p17 = 'bx;
assign v23_5_fu_1483_p2 = v0_0_q1;
assign v23_5_fu_1483_p4 = v0_1_q1;
assign v23_5_fu_1483_p6 = v0_2_q1;
assign v23_5_fu_1483_p8 = v0_3_q1;
assign v23_6_fu_1555_p10 = v0_4_q0;
assign v23_6_fu_1555_p12 = v0_5_q0;
assign v23_6_fu_1555_p14 = v0_6_q0;
assign v23_6_fu_1555_p16 = v0_7_q0;
assign v23_6_fu_1555_p17 = 'bx;
assign v23_6_fu_1555_p2 = v0_0_q0;
assign v23_6_fu_1555_p4 = v0_1_q0;
assign v23_6_fu_1555_p6 = v0_2_q0;
assign v23_6_fu_1555_p8 = v0_3_q0;
assign v23_7_fu_1711_p10 = v0_4_q0;
assign v23_7_fu_1711_p12 = v0_5_q0;
assign v23_7_fu_1711_p14 = v0_6_q0;
assign v23_7_fu_1711_p16 = v0_7_q0;
assign v23_7_fu_1711_p17 = 'bx;
assign v23_7_fu_1711_p2 = v0_0_q0;
assign v23_7_fu_1711_p4 = v0_1_q0;
assign v23_7_fu_1711_p6 = v0_2_q0;
assign v23_7_fu_1711_p8 = v0_3_q0;
assign v23_fu_1639_p10 = v0_4_q1;
assign v23_fu_1639_p12 = v0_5_q1;
assign v23_fu_1639_p14 = v0_6_q1;
assign v23_fu_1639_p16 = v0_7_q1;
assign v23_fu_1639_p17 = 'bx;
assign v23_fu_1639_p2 = v0_0_q1;
assign v23_fu_1639_p4 = v0_1_q1;
assign v23_fu_1639_p6 = v0_2_q1;
assign v23_fu_1639_p8 = v0_3_q1;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign v3_d0 = reg_860;
assign v3_d1 = reg_855;
assign v3_we0 = v3_we0_local;
assign v3_we1 = v3_we1_local;
assign zext_ln47_1_fu_1010_p1 = v19_1_reg_1869;
assign zext_ln47_fu_1826_p1 = v19_1_reg_1869_pp0_iter8_reg;
assign zext_ln51_10_fu_1080_p1 = add_ln51_1_reg_1906_pp0_iter6_reg;
assign zext_ln51_11_fu_1794_p1 = or_ln47_s_fu_1787_p3;
assign zext_ln51_12_fu_1239_p1 = grp_fu_965_p2;
assign zext_ln51_13_fu_1251_p1 = add_ln51_2_reg_1923_pp0_iter6_reg;
assign zext_ln51_14_fu_1809_p1 = or_ln47_1_fu_1799_p5;
assign zext_ln51_15_fu_1403_p1 = grp_fu_990_p2;
assign zext_ln51_16_fu_1255_p1 = add_ln51_3_reg_1934_pp0_iter6_reg;
assign zext_ln51_17_fu_1821_p1 = or_ln47_2_fu_1814_p3;
assign zext_ln51_18_fu_1415_p1 = grp_fu_1004_p2;
assign zext_ln51_19_fu_1427_p1 = add_ln51_4_reg_1940_pp0_iter6_reg;
assign zext_ln51_1_fu_1447_p1 = add_ln51_reg_1946_pp0_iter6_reg;
assign zext_ln51_20_fu_1837_p1 = or_ln47_3_fu_1830_p3;
assign zext_ln51_21_fu_1595_p1 = grp_fu_1032_p2;
assign zext_ln51_22_fu_1431_p1 = add_ln51_5_reg_1952_pp0_iter6_reg;
assign zext_ln51_2_fu_1758_p1 = or_ln47_7_fu_1751_p3;
assign zext_ln51_3_fu_1052_p1 = grp_fu_901_p2;
assign zext_ln51_4_fu_1048_p1 = add_ln51_9_reg_1887_pp0_iter6_reg;
assign zext_ln51_5_fu_1770_p1 = or_ln47_8_fu_1763_p3;
assign zext_ln51_6_fu_1064_p1 = grp_fu_927_p2;
assign zext_ln51_7_fu_1076_p1 = add_ln51_s_reg_1900_pp0_iter6_reg;
assign zext_ln51_8_fu_1782_p1 = or_ln47_9_fu_1775_p3;
assign zext_ln51_9_fu_1227_p1 = grp_fu_941_p2;
assign zext_ln51_fu_1435_p1 = grp_fu_1018_p2;
always @ (posedge ap_clk) begin
    add_ln51_9_reg_1887[0] <= 1'b1;
    add_ln51_9_reg_1887_pp0_iter1_reg[0] <= 1'b1;
    add_ln51_9_reg_1887_pp0_iter2_reg[0] <= 1'b1;
    add_ln51_9_reg_1887_pp0_iter3_reg[0] <= 1'b1;
    add_ln51_9_reg_1887_pp0_iter4_reg[0] <= 1'b1;
    add_ln51_9_reg_1887_pp0_iter5_reg[0] <= 1'b1;
    add_ln51_9_reg_1887_pp0_iter6_reg[0] <= 1'b1;
    add_ln51_s_reg_1900[1:0] <= 2'b10;
    add_ln51_s_reg_1900_pp0_iter1_reg[1:0] <= 2'b10;
    add_ln51_s_reg_1900_pp0_iter2_reg[1:0] <= 2'b10;
    add_ln51_s_reg_1900_pp0_iter3_reg[1:0] <= 2'b10;
    add_ln51_s_reg_1900_pp0_iter4_reg[1:0] <= 2'b10;
    add_ln51_s_reg_1900_pp0_iter5_reg[1:0] <= 2'b10;
    add_ln51_s_reg_1900_pp0_iter6_reg[1:0] <= 2'b10;
    add_ln51_1_reg_1906[1:0] <= 2'b11;
    add_ln51_1_reg_1906_pp0_iter1_reg[1:0] <= 2'b11;
    add_ln51_1_reg_1906_pp0_iter2_reg[1:0] <= 2'b11;
    add_ln51_1_reg_1906_pp0_iter3_reg[1:0] <= 2'b11;
    add_ln51_1_reg_1906_pp0_iter4_reg[1:0] <= 2'b11;
    add_ln51_1_reg_1906_pp0_iter5_reg[1:0] <= 2'b11;
    add_ln51_1_reg_1906_pp0_iter6_reg[1:0] <= 2'b11;
    add_ln51_2_reg_1923[2:0] <= 3'b100;
    add_ln51_2_reg_1923_pp0_iter1_reg[2:0] <= 3'b100;
    add_ln51_2_reg_1923_pp0_iter2_reg[2:0] <= 3'b100;
    add_ln51_2_reg_1923_pp0_iter3_reg[2:0] <= 3'b100;
    add_ln51_2_reg_1923_pp0_iter4_reg[2:0] <= 3'b100;
    add_ln51_2_reg_1923_pp0_iter5_reg[2:0] <= 3'b100;
    add_ln51_2_reg_1923_pp0_iter6_reg[2:0] <= 3'b100;
    add_ln51_3_reg_1934[0] <= 1'b1;
    add_ln51_3_reg_1934[2] <= 1'b1;
    add_ln51_3_reg_1934_pp0_iter1_reg[0] <= 1'b1;
    add_ln51_3_reg_1934_pp0_iter1_reg[2] <= 1'b1;
    add_ln51_3_reg_1934_pp0_iter2_reg[0] <= 1'b1;
    add_ln51_3_reg_1934_pp0_iter2_reg[2] <= 1'b1;
    add_ln51_3_reg_1934_pp0_iter3_reg[0] <= 1'b1;
    add_ln51_3_reg_1934_pp0_iter3_reg[2] <= 1'b1;
    add_ln51_3_reg_1934_pp0_iter4_reg[0] <= 1'b1;
    add_ln51_3_reg_1934_pp0_iter4_reg[2] <= 1'b1;
    add_ln51_3_reg_1934_pp0_iter5_reg[0] <= 1'b1;
    add_ln51_3_reg_1934_pp0_iter5_reg[2] <= 1'b1;
    add_ln51_3_reg_1934_pp0_iter6_reg[0] <= 1'b1;
    add_ln51_3_reg_1934_pp0_iter6_reg[2] <= 1'b1;
    add_ln51_4_reg_1940[2:0] <= 3'b110;
    add_ln51_4_reg_1940_pp0_iter1_reg[2:0] <= 3'b110;
    add_ln51_4_reg_1940_pp0_iter2_reg[2:0] <= 3'b110;
    add_ln51_4_reg_1940_pp0_iter3_reg[2:0] <= 3'b110;
    add_ln51_4_reg_1940_pp0_iter4_reg[2:0] <= 3'b110;
    add_ln51_4_reg_1940_pp0_iter5_reg[2:0] <= 3'b110;
    add_ln51_4_reg_1940_pp0_iter6_reg[2:0] <= 3'b110;
    add_ln51_5_reg_1952[2:0] <= 3'b111;
    add_ln51_5_reg_1952_pp0_iter1_reg[2:0] <= 3'b111;
    add_ln51_5_reg_1952_pp0_iter2_reg[2:0] <= 3'b111;
    add_ln51_5_reg_1952_pp0_iter3_reg[2:0] <= 3'b111;
    add_ln51_5_reg_1952_pp0_iter4_reg[2:0] <= 3'b111;
    add_ln51_5_reg_1952_pp0_iter5_reg[2:0] <= 3'b111;
    add_ln51_5_reg_1952_pp0_iter6_reg[2:0] <= 3'b111;
end
endmodule 