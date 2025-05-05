module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v226_2_address0,v226_2_ce0,v226_2_q0,v226_2_address1,v226_2_ce1,v226_2_q1,v226_3_address0,v226_3_ce0,v226_3_q0,v226_3_address1,v226_3_ce1,v226_3_q1,v226_4_address0,v226_4_ce0,v226_4_q0,v226_4_address1,v226_4_ce1,v226_4_q1,v226_5_address0,v226_5_ce0,v226_5_q0,v226_5_address1,v226_5_ce1,v226_5_q1,v226_6_address0,v226_6_ce0,v226_6_q0,v226_6_address1,v226_6_ce1,v226_6_q1,v226_7_address0,v226_7_ce0,v226_7_q0,v226_7_address1,v226_7_ce1,v226_7_q1,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v113,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_opcode,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce); 
parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] v226_0_address0;
output   v226_0_ce0;
input  [31:0] v226_0_q0;
output  [12:0] v226_0_address1;
output   v226_0_ce1;
input  [31:0] v226_0_q1;
output  [12:0] v226_1_address0;
output   v226_1_ce0;
input  [31:0] v226_1_q0;
output  [12:0] v226_1_address1;
output   v226_1_ce1;
input  [31:0] v226_1_q1;
output  [12:0] v226_2_address0;
output   v226_2_ce0;
input  [31:0] v226_2_q0;
output  [12:0] v226_2_address1;
output   v226_2_ce1;
input  [31:0] v226_2_q1;
output  [12:0] v226_3_address0;
output   v226_3_ce0;
input  [31:0] v226_3_q0;
output  [12:0] v226_3_address1;
output   v226_3_ce1;
input  [31:0] v226_3_q1;
output  [12:0] v226_4_address0;
output   v226_4_ce0;
input  [31:0] v226_4_q0;
output  [12:0] v226_4_address1;
output   v226_4_ce1;
input  [31:0] v226_4_q1;
output  [12:0] v226_5_address0;
output   v226_5_ce0;
input  [31:0] v226_5_q0;
output  [12:0] v226_5_address1;
output   v226_5_ce1;
input  [31:0] v226_5_q1;
output  [12:0] v226_6_address0;
output   v226_6_ce0;
input  [31:0] v226_6_q0;
output  [12:0] v226_6_address1;
output   v226_6_ce1;
input  [31:0] v226_6_q1;
output  [12:0] v226_7_address0;
output   v226_7_ce0;
input  [31:0] v226_7_q0;
output  [12:0] v226_7_address1;
output   v226_7_ce1;
input  [31:0] v226_7_q1;
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
output  [0:0] v236_din;
input   v236_full_n;
output   v236_write;
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
input  [31:0] v113;
output  [31:0] grp_fu_164_p_din0;
output  [31:0] grp_fu_164_p_din1;
output  [1:0] grp_fu_164_p_opcode;
input  [31:0] grp_fu_164_p_dout0;
output   grp_fu_164_p_ce;
output  [31:0] grp_fu_168_p_din0;
output  [31:0] grp_fu_168_p_din1;
input  [31:0] grp_fu_168_p_dout0;
output   grp_fu_168_p_ce;
output  [31:0] grp_fu_172_p_din0;
output  [31:0] grp_fu_172_p_din1;
input  [31:0] grp_fu_172_p_dout0;
output   grp_fu_172_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_897_p2;
wire   [7:0] add_ln168_fu_903_p2;
reg   [7:0] add_ln168_reg_2050;
wire   [2:0] trunc_ln168_fu_909_p1;
reg   [2:0] trunc_ln168_reg_2055;
wire   [0:0] trunc_ln168_1_fu_913_p1;
reg   [0:0] trunc_ln168_1_reg_2068;
wire   [14:0] mul_ln175_fu_931_p2;
reg   [14:0] mul_ln175_reg_2073;
wire   [12:0] zext_ln168_fu_947_p1;
reg   [12:0] zext_ln168_reg_2078;
wire   [0:0] cmp11_fu_951_p2;
reg   [0:0] cmp11_reg_2091;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_967_p2;
reg   [7:0] add_ln169_reg_2104;
wire    ap_CS_fsm_state4;
reg   [5:0] tmp_reg_2114;
reg   [5:0] tmp_1_reg_2124;
wire    ap_CS_fsm_state5;
reg   [5:0] tmp_2_reg_2134;
wire    ap_CS_fsm_state6;
reg   [5:0] tmp_3_reg_2184;
reg   [5:0] tmp_4_reg_2194;
wire   [31:0] v_fu_1120_p19;
reg   [31:0] v_reg_2199;
wire    ap_CS_fsm_state7;
reg   [5:0] tmp_5_reg_2289;
wire   [31:0] v20_fu_1233_p19;
reg   [31:0] v20_reg_2294;
wire    ap_CS_fsm_state8;
wire   [31:0] v22_fu_1304_p19;
reg   [31:0] v22_reg_2299;
wire   [31:0] v24_fu_1397_p19;
reg   [31:0] v24_reg_2384;
wire    ap_CS_fsm_state9;
wire   [31:0] v26_fu_1468_p19;
reg   [31:0] v26_reg_2389;
wire   [31:0] v28_fu_1561_p19;
reg   [31:0] v28_reg_2474;
wire    ap_CS_fsm_state10;
wire   [31:0] v30_fu_1632_p19;
reg   [31:0] v30_reg_2479;
wire   [31:0] v32_fu_1725_p19;
reg   [31:0] v32_reg_2564;
wire    ap_CS_fsm_state11;
wire   [31:0] v34_fu_1796_p19;
reg   [31:0] v34_reg_2569;
wire   [1:0] trunc_ln169_fu_1835_p1;
reg   [1:0] trunc_ln169_reg_2574;
wire    ap_CS_fsm_state15;
wire   [13:0] mul_ln171_fu_1853_p2;
reg   [13:0] mul_ln171_reg_2580;
reg   [31:0] v19_reg_2585;
wire   [13:0] mul_ln186_fu_1862_p2;
reg   [13:0] mul_ln186_reg_2590;
reg   [31:0] v21_reg_2595;
wire   [13:0] mul_ln199_fu_1871_p2;
reg   [13:0] mul_ln199_reg_2600;
wire   [31:0] grp_fu_861_p2;
reg   [31:0] v23_reg_2605;
wire   [13:0] mul_ln212_fu_1880_p2;
reg   [13:0] mul_ln212_reg_2610;
wire   [31:0] grp_fu_865_p2;
reg   [31:0] v25_reg_2615;
wire   [13:0] mul_ln225_fu_1896_p2;
reg   [13:0] mul_ln225_reg_2620;
wire   [31:0] grp_fu_869_p2;
reg   [31:0] v27_reg_2625;
wire   [13:0] mul_ln238_fu_1905_p2;
reg   [13:0] mul_ln238_reg_2630;
wire   [31:0] grp_fu_873_p2;
reg   [31:0] v29_reg_2635;
wire   [13:0] mul_ln251_fu_1914_p2;
reg   [13:0] mul_ln251_reg_2640;
wire   [31:0] grp_fu_877_p2;
reg   [31:0] v31_reg_2645;
wire   [13:0] mul_ln264_fu_1923_p2;
reg   [13:0] mul_ln264_reg_2650;
wire   [31:0] grp_fu_881_p2;
reg   [31:0] v33_reg_2655;
wire   [13:0] mul_ln277_fu_1939_p2;
reg   [13:0] mul_ln277_reg_2660;
wire   [31:0] grp_fu_885_p2;
reg   [31:0] v35_reg_2665;
wire   [0:0] empty_117_fu_1945_p2;
reg   [0:0] empty_117_reg_2670;
wire    ap_CS_fsm_state16;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_0_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_0_ce1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_1_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_1_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_2675_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_2675_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_2675_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_2675_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_853_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_853_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_853_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_857_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_857_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_857_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_861_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_861_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_861_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_865_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_865_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_865_p_ce;
reg   [7:0] v115_reg_802;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_start_reg;
wire   [63:0] p_cast1377_fu_1037_p1;
wire   [63:0] p_cast_fu_1159_p1;
wire   [63:0] p_cast1378_fu_1170_p1;
wire   [63:0] p_cast1379_fu_1343_p1;
wire   [63:0] p_cast1380_fu_1354_p1;
wire   [63:0] p_cast1381_fu_1507_p1;
wire   [63:0] p_cast1382_fu_1518_p1;
wire   [63:0] p_cast1383_fu_1671_p1;
wire   [63:0] p_cast1384_fu_1682_p1;
reg   [7:0] v114_fu_136;
wire   [0:0] icmp_ln169_fu_957_p2;
reg    v236_write_local;
reg    v226_0_ce0_local;
reg   [12:0] v226_0_address0_local;
reg    v226_0_ce1_local;
reg   [12:0] v226_0_address1_local;
reg    v226_1_ce0_local;
reg   [12:0] v226_1_address0_local;
reg    v226_1_ce1_local;
reg   [12:0] v226_1_address1_local;
reg    v226_2_ce0_local;
reg   [12:0] v226_2_address0_local;
reg    v226_2_ce1_local;
reg   [12:0] v226_2_address1_local;
reg    v226_3_ce0_local;
reg   [12:0] v226_3_address0_local;
reg    v226_3_ce1_local;
reg   [12:0] v226_3_address1_local;
reg    v226_4_ce0_local;
reg   [12:0] v226_4_address0_local;
reg    v226_4_ce1_local;
reg   [12:0] v226_4_address1_local;
reg    v226_5_ce0_local;
reg   [12:0] v226_5_address0_local;
reg    v226_5_ce1_local;
reg   [12:0] v226_5_address1_local;
reg    v226_6_ce0_local;
reg   [12:0] v226_6_address0_local;
reg    v226_6_ce1_local;
reg   [12:0] v226_6_address1_local;
reg    v226_7_ce0_local;
reg   [12:0] v226_7_address0_local;
reg    v226_7_ce1_local;
reg   [12:0] v226_7_address1_local;
reg   [31:0] grp_fu_853_p0;
reg   [31:0] grp_fu_853_p1;
wire    ap_CS_fsm_state12;
reg   [31:0] grp_fu_857_p0;
reg   [31:0] grp_fu_857_p1;
reg   [31:0] grp_fu_861_p0;
reg   [31:0] grp_fu_861_p1;
reg   [31:0] grp_fu_865_p0;
reg   [31:0] grp_fu_865_p1;
wire   [6:0] lshr_ln_fu_917_p4;
wire   [6:0] mul_ln175_fu_931_p0;
wire   [8:0] mul_ln175_fu_931_p1;
wire   [4:0] lshr_ln168_1_fu_937_p4;
wire   [7:0] empty_27_fu_977_p2;
wire   [7:0] empty_38_fu_997_p2;
wire   [7:0] empty_49_fu_1017_p2;
wire   [12:0] grp_fu_1951_p3;
wire   [7:0] empty_72_fu_1048_p2;
wire   [7:0] empty_83_fu_1068_p2;
wire   [31:0] v_fu_1120_p2;
wire   [31:0] v_fu_1120_p4;
wire   [31:0] v_fu_1120_p6;
wire   [31:0] v_fu_1120_p8;
wire   [31:0] v_fu_1120_p10;
wire   [31:0] v_fu_1120_p12;
wire   [31:0] v_fu_1120_p14;
wire   [31:0] v_fu_1120_p16;
wire   [31:0] v_fu_1120_p17;
wire   [12:0] grp_fu_1959_p3;
wire   [12:0] grp_fu_1967_p3;
wire   [7:0] empty_94_fu_1181_p2;
wire   [31:0] v20_fu_1233_p2;
wire   [31:0] v20_fu_1233_p4;
wire   [31:0] v20_fu_1233_p6;
wire   [31:0] v20_fu_1233_p8;
wire   [31:0] v20_fu_1233_p10;
wire   [31:0] v20_fu_1233_p12;
wire   [31:0] v20_fu_1233_p14;
wire   [31:0] v20_fu_1233_p16;
wire   [31:0] v20_fu_1233_p17;
wire   [31:0] v22_fu_1304_p2;
wire   [31:0] v22_fu_1304_p4;
wire   [31:0] v22_fu_1304_p6;
wire   [31:0] v22_fu_1304_p8;
wire   [31:0] v22_fu_1304_p10;
wire   [31:0] v22_fu_1304_p12;
wire   [31:0] v22_fu_1304_p14;
wire   [31:0] v22_fu_1304_p16;
wire   [31:0] v22_fu_1304_p17;
wire   [12:0] grp_fu_1975_p3;
wire   [12:0] grp_fu_1983_p4;
wire   [31:0] v24_fu_1397_p2;
wire   [31:0] v24_fu_1397_p4;
wire   [31:0] v24_fu_1397_p6;
wire   [31:0] v24_fu_1397_p8;
wire   [31:0] v24_fu_1397_p10;
wire   [31:0] v24_fu_1397_p12;
wire   [31:0] v24_fu_1397_p14;
wire   [31:0] v24_fu_1397_p16;
wire   [31:0] v24_fu_1397_p17;
wire   [31:0] v26_fu_1468_p2;
wire   [31:0] v26_fu_1468_p4;
wire   [31:0] v26_fu_1468_p6;
wire   [31:0] v26_fu_1468_p8;
wire   [31:0] v26_fu_1468_p10;
wire   [31:0] v26_fu_1468_p12;
wire   [31:0] v26_fu_1468_p14;
wire   [31:0] v26_fu_1468_p16;
wire   [31:0] v26_fu_1468_p17;
wire   [12:0] grp_fu_1993_p3;
wire   [12:0] grp_fu_2001_p3;
wire   [31:0] v28_fu_1561_p2;
wire   [31:0] v28_fu_1561_p4;
wire   [31:0] v28_fu_1561_p6;
wire   [31:0] v28_fu_1561_p8;
wire   [31:0] v28_fu_1561_p10;
wire   [31:0] v28_fu_1561_p12;
wire   [31:0] v28_fu_1561_p14;
wire   [31:0] v28_fu_1561_p16;
wire   [31:0] v28_fu_1561_p17;
wire   [31:0] v30_fu_1632_p2;
wire   [31:0] v30_fu_1632_p4;
wire   [31:0] v30_fu_1632_p6;
wire   [31:0] v30_fu_1632_p8;
wire   [31:0] v30_fu_1632_p10;
wire   [31:0] v30_fu_1632_p12;
wire   [31:0] v30_fu_1632_p14;
wire   [31:0] v30_fu_1632_p16;
wire   [31:0] v30_fu_1632_p17;
wire   [12:0] grp_fu_2009_p3;
wire   [12:0] grp_fu_2017_p4;
wire   [31:0] v32_fu_1725_p2;
wire   [31:0] v32_fu_1725_p4;
wire   [31:0] v32_fu_1725_p6;
wire   [31:0] v32_fu_1725_p8;
wire   [31:0] v32_fu_1725_p10;
wire   [31:0] v32_fu_1725_p12;
wire   [31:0] v32_fu_1725_p14;
wire   [31:0] v32_fu_1725_p16;
wire   [31:0] v32_fu_1725_p17;
wire   [31:0] v34_fu_1796_p2;
wire   [31:0] v34_fu_1796_p4;
wire   [31:0] v34_fu_1796_p6;
wire   [31:0] v34_fu_1796_p8;
wire   [31:0] v34_fu_1796_p10;
wire   [31:0] v34_fu_1796_p12;
wire   [31:0] v34_fu_1796_p14;
wire   [31:0] v34_fu_1796_p16;
wire   [31:0] v34_fu_1796_p17;
wire   [5:0] lshr_ln1_fu_1839_p4;
wire   [5:0] mul_ln171_fu_1853_p0;
wire   [8:0] mul_ln171_fu_1853_p1;
wire   [5:0] mul_ln186_fu_1862_p0;
wire   [8:0] mul_ln186_fu_1862_p1;
wire   [5:0] mul_ln199_fu_1871_p0;
wire   [8:0] mul_ln199_fu_1871_p1;
wire   [5:0] mul_ln212_fu_1880_p0;
wire   [8:0] mul_ln212_fu_1880_p1;
wire   [5:0] empty_63_fu_1886_p2;
wire   [5:0] mul_ln225_fu_1896_p0;
wire   [8:0] mul_ln225_fu_1896_p1;
wire   [5:0] mul_ln238_fu_1905_p0;
wire   [8:0] mul_ln238_fu_1905_p1;
wire   [5:0] mul_ln251_fu_1914_p0;
wire   [8:0] mul_ln251_fu_1914_p1;
wire   [5:0] mul_ln264_fu_1923_p0;
wire   [8:0] mul_ln264_fu_1923_p1;
wire   [5:0] empty_108_fu_1929_p2;
wire   [5:0] mul_ln277_fu_1939_p0;
wire   [8:0] mul_ln277_fu_1939_p1;
wire   [7:0] grp_fu_1951_p0;
wire   [4:0] grp_fu_1951_p1;
wire   [4:0] grp_fu_1951_p2;
wire   [7:0] grp_fu_1959_p0;
wire   [4:0] grp_fu_1959_p1;
wire   [4:0] grp_fu_1959_p2;
wire   [7:0] grp_fu_1967_p0;
wire   [4:0] grp_fu_1967_p1;
wire   [4:0] grp_fu_1967_p2;
wire   [7:0] grp_fu_1975_p0;
wire   [4:0] grp_fu_1975_p1;
wire   [4:0] grp_fu_1975_p2;
wire   [2:0] grp_fu_1983_p1;
wire   [4:0] grp_fu_1983_p2;
wire   [4:0] grp_fu_1983_p3;
wire   [7:0] grp_fu_1993_p0;
wire   [4:0] grp_fu_1993_p1;
wire   [4:0] grp_fu_1993_p2;
wire   [7:0] grp_fu_2001_p0;
wire   [4:0] grp_fu_2001_p1;
wire   [4:0] grp_fu_2001_p2;
wire   [7:0] grp_fu_2009_p0;
wire   [4:0] grp_fu_2009_p1;
wire   [4:0] grp_fu_2009_p2;
wire   [3:0] grp_fu_2017_p1;
wire   [4:0] grp_fu_2017_p2;
wire   [4:0] grp_fu_2017_p3;
reg    grp_fu_853_ce;
reg    grp_fu_857_ce;
reg    grp_fu_861_ce;
reg    grp_fu_865_ce;
reg    grp_fu_2675_ce;
reg   [16:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire   [12:0] grp_fu_1951_p00;
wire   [12:0] grp_fu_1959_p00;
wire   [12:0] grp_fu_1967_p00;
wire   [12:0] grp_fu_1975_p00;
wire   [12:0] grp_fu_1993_p00;
wire   [12:0] grp_fu_2001_p00;
wire   [12:0] grp_fu_2009_p00;
wire   [13:0] mul_ln171_fu_1853_p00;
wire   [14:0] mul_ln175_fu_931_p00;
wire   [13:0] mul_ln186_fu_1862_p00;
wire   [13:0] mul_ln199_fu_1871_p00;
wire   [13:0] mul_ln212_fu_1880_p00;
wire   [13:0] mul_ln225_fu_1896_p00;
wire   [13:0] mul_ln238_fu_1905_p00;
wire   [13:0] mul_ln251_fu_1914_p00;
wire   [13:0] mul_ln264_fu_1923_p00;
wire   [13:0] mul_ln277_fu_1939_p00;
wire   [2:0] v_fu_1120_p1;
wire   [2:0] v_fu_1120_p3;
wire   [2:0] v_fu_1120_p5;
wire   [2:0] v_fu_1120_p7;
wire  signed [2:0] v_fu_1120_p9;
wire  signed [2:0] v_fu_1120_p11;
wire  signed [2:0] v_fu_1120_p13;
wire  signed [2:0] v_fu_1120_p15;
wire   [2:0] v20_fu_1233_p1;
wire   [2:0] v20_fu_1233_p3;
wire   [2:0] v20_fu_1233_p5;
wire   [2:0] v20_fu_1233_p7;
wire  signed [2:0] v20_fu_1233_p9;
wire  signed [2:0] v20_fu_1233_p11;
wire  signed [2:0] v20_fu_1233_p13;
wire  signed [2:0] v20_fu_1233_p15;
wire   [2:0] v22_fu_1304_p1;
wire   [2:0] v22_fu_1304_p3;
wire   [2:0] v22_fu_1304_p5;
wire   [2:0] v22_fu_1304_p7;
wire  signed [2:0] v22_fu_1304_p9;
wire  signed [2:0] v22_fu_1304_p11;
wire  signed [2:0] v22_fu_1304_p13;
wire  signed [2:0] v22_fu_1304_p15;
wire   [2:0] v24_fu_1397_p1;
wire   [2:0] v24_fu_1397_p3;
wire   [2:0] v24_fu_1397_p5;
wire   [2:0] v24_fu_1397_p7;
wire  signed [2:0] v24_fu_1397_p9;
wire  signed [2:0] v24_fu_1397_p11;
wire  signed [2:0] v24_fu_1397_p13;
wire  signed [2:0] v24_fu_1397_p15;
wire   [2:0] v26_fu_1468_p1;
wire   [2:0] v26_fu_1468_p3;
wire   [2:0] v26_fu_1468_p5;
wire   [2:0] v26_fu_1468_p7;
wire  signed [2:0] v26_fu_1468_p9;
wire  signed [2:0] v26_fu_1468_p11;
wire  signed [2:0] v26_fu_1468_p13;
wire  signed [2:0] v26_fu_1468_p15;
wire   [2:0] v28_fu_1561_p1;
wire   [2:0] v28_fu_1561_p3;
wire   [2:0] v28_fu_1561_p5;
wire   [2:0] v28_fu_1561_p7;
wire  signed [2:0] v28_fu_1561_p9;
wire  signed [2:0] v28_fu_1561_p11;
wire  signed [2:0] v28_fu_1561_p13;
wire  signed [2:0] v28_fu_1561_p15;
wire   [2:0] v30_fu_1632_p1;
wire   [2:0] v30_fu_1632_p3;
wire   [2:0] v30_fu_1632_p5;
wire   [2:0] v30_fu_1632_p7;
wire  signed [2:0] v30_fu_1632_p9;
wire  signed [2:0] v30_fu_1632_p11;
wire  signed [2:0] v30_fu_1632_p13;
wire  signed [2:0] v30_fu_1632_p15;
wire   [2:0] v32_fu_1725_p1;
wire   [2:0] v32_fu_1725_p3;
wire   [2:0] v32_fu_1725_p5;
wire   [2:0] v32_fu_1725_p7;
wire  signed [2:0] v32_fu_1725_p9;
wire  signed [2:0] v32_fu_1725_p11;
wire  signed [2:0] v32_fu_1725_p13;
wire  signed [2:0] v32_fu_1725_p15;
wire   [2:0] v34_fu_1796_p1;
wire   [2:0] v34_fu_1796_p3;
wire   [2:0] v34_fu_1796_p5;
wire   [2:0] v34_fu_1796_p7;
wire  signed [2:0] v34_fu_1796_p9;
wire  signed [2:0] v34_fu_1796_p11;
wire  signed [2:0] v34_fu_1796_p13;
wire  signed [2:0] v34_fu_1796_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_start_reg = 1'b0;
#0 v114_fu_136 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_814(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_d1),.v225_3_q1(v225_3_q1),.mul_ln175(mul_ln175_reg_2073),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_1_ce1),.v227_1_q1(v227_1_q1),.mul_ln171(mul_ln171_reg_2580),.mul_ln225(mul_ln225_reg_2620),.mul_ln277(mul_ln277_reg_2660),.mul_ln212(mul_ln212_reg_2610),.mul_ln264(mul_ln264_reg_2650),.mul_ln199(mul_ln199_reg_2600),.mul_ln251(mul_ln251_reg_2640),.mul_ln186(mul_ln186_reg_2590),.mul_ln238(mul_ln238_reg_2630),.empty_15(trunc_ln169_reg_2574),.cmp11(cmp11_reg_2091),.empty_16(trunc_ln168_1_reg_2068),.v120(v19_reg_2585),.v133(v21_reg_2595),.v144(v23_reg_2605),.v155(v25_reg_2615),.v166(v27_reg_2625),.v177(v29_reg_2635),.v188(v31_reg_2645),.v199(v33_reg_2655),.v210(v35_reg_2665),.empty(empty_117_reg_2670),.grp_fu_2675_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_2675_p_din0),.grp_fu_2675_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_2675_p_din1),.grp_fu_2675_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_2675_p_opcode),.grp_fu_2675_p_dout0(grp_fu_164_p_dout0),.grp_fu_2675_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_2675_p_ce),.grp_fu_853_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_853_p_din0),.grp_fu_853_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_853_p_din1),.grp_fu_853_p_dout0(grp_fu_168_p_dout0),.grp_fu_853_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_853_p_ce),.grp_fu_857_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_857_p_din0),.grp_fu_857_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_857_p_din1),.grp_fu_857_p_dout0(grp_fu_172_p_dout0),.grp_fu_857_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_857_p_ce),.grp_fu_861_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_861_p_din0),.grp_fu_861_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_861_p_din1),.grp_fu_861_p_dout0(grp_fu_861_p2),.grp_fu_861_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_861_p_ce),.grp_fu_865_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_865_p_din0),.grp_fu_865_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_865_p_din1),.grp_fu_865_p_dout0(grp_fu_865_p2),.grp_fu_865_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_865_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U46(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_861_p0),.din1(grp_fu_861_p1),.ce(grp_fu_861_ce),.dout(grp_fu_861_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U47(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_865_p0),.din1(grp_fu_865_p1),.ce(grp_fu_865_ce),.dout(grp_fu_865_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U48(.clk(ap_clk),.reset(ap_rst),.din0(v26_reg_2389),.din1(v113),.ce(1'b1),.dout(grp_fu_869_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U49(.clk(ap_clk),.reset(ap_rst),.din0(v28_reg_2474),.din1(v113),.ce(1'b1),.dout(grp_fu_873_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U50(.clk(ap_clk),.reset(ap_rst),.din0(v30_reg_2479),.din1(v113),.ce(1'b1),.dout(grp_fu_877_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U51(.clk(ap_clk),.reset(ap_rst),.din0(v32_reg_2564),.din1(v113),.ce(1'b1),.dout(grp_fu_881_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U52(.clk(ap_clk),.reset(ap_rst),.din0(v34_reg_2569),.din1(v113),.ce(1'b1),.dout(grp_fu_885_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U53(.din0(mul_ln175_fu_931_p0),.din1(mul_ln175_fu_931_p1),.dout(mul_ln175_fu_931_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U54(.din0(v_fu_1120_p2),.din1(v_fu_1120_p4),.din2(v_fu_1120_p6),.din3(v_fu_1120_p8),.din4(v_fu_1120_p10),.din5(v_fu_1120_p12),.din6(v_fu_1120_p14),.din7(v_fu_1120_p16),.def(v_fu_1120_p17),.sel(trunc_ln168_reg_2055),.dout(v_fu_1120_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U55(.din0(v20_fu_1233_p2),.din1(v20_fu_1233_p4),.din2(v20_fu_1233_p6),.din3(v20_fu_1233_p8),.din4(v20_fu_1233_p10),.din5(v20_fu_1233_p12),.din6(v20_fu_1233_p14),.din7(v20_fu_1233_p16),.def(v20_fu_1233_p17),.sel(trunc_ln168_reg_2055),.dout(v20_fu_1233_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U56(.din0(v22_fu_1304_p2),.din1(v22_fu_1304_p4),.din2(v22_fu_1304_p6),.din3(v22_fu_1304_p8),.din4(v22_fu_1304_p10),.din5(v22_fu_1304_p12),.din6(v22_fu_1304_p14),.din7(v22_fu_1304_p16),.def(v22_fu_1304_p17),.sel(trunc_ln168_reg_2055),.dout(v22_fu_1304_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U57(.din0(v24_fu_1397_p2),.din1(v24_fu_1397_p4),.din2(v24_fu_1397_p6),.din3(v24_fu_1397_p8),.din4(v24_fu_1397_p10),.din5(v24_fu_1397_p12),.din6(v24_fu_1397_p14),.din7(v24_fu_1397_p16),.def(v24_fu_1397_p17),.sel(trunc_ln168_reg_2055),.dout(v24_fu_1397_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U58(.din0(v26_fu_1468_p2),.din1(v26_fu_1468_p4),.din2(v26_fu_1468_p6),.din3(v26_fu_1468_p8),.din4(v26_fu_1468_p10),.din5(v26_fu_1468_p12),.din6(v26_fu_1468_p14),.din7(v26_fu_1468_p16),.def(v26_fu_1468_p17),.sel(trunc_ln168_reg_2055),.dout(v26_fu_1468_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U59(.din0(v28_fu_1561_p2),.din1(v28_fu_1561_p4),.din2(v28_fu_1561_p6),.din3(v28_fu_1561_p8),.din4(v28_fu_1561_p10),.din5(v28_fu_1561_p12),.din6(v28_fu_1561_p14),.din7(v28_fu_1561_p16),.def(v28_fu_1561_p17),.sel(trunc_ln168_reg_2055),.dout(v28_fu_1561_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U60(.din0(v30_fu_1632_p2),.din1(v30_fu_1632_p4),.din2(v30_fu_1632_p6),.din3(v30_fu_1632_p8),.din4(v30_fu_1632_p10),.din5(v30_fu_1632_p12),.din6(v30_fu_1632_p14),.din7(v30_fu_1632_p16),.def(v30_fu_1632_p17),.sel(trunc_ln168_reg_2055),.dout(v30_fu_1632_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U61(.din0(v32_fu_1725_p2),.din1(v32_fu_1725_p4),.din2(v32_fu_1725_p6),.din3(v32_fu_1725_p8),.din4(v32_fu_1725_p10),.din5(v32_fu_1725_p12),.din6(v32_fu_1725_p14),.din7(v32_fu_1725_p16),.def(v32_fu_1725_p17),.sel(trunc_ln168_reg_2055),.dout(v32_fu_1725_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U62(.din0(v34_fu_1796_p2),.din1(v34_fu_1796_p4),.din2(v34_fu_1796_p6),.din3(v34_fu_1796_p8),.din4(v34_fu_1796_p10),.din5(v34_fu_1796_p12),.din6(v34_fu_1796_p14),.din7(v34_fu_1796_p16),.def(v34_fu_1796_p17),.sel(trunc_ln168_reg_2055),.dout(v34_fu_1796_p19));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U63(.din0(mul_ln171_fu_1853_p0),.din1(mul_ln171_fu_1853_p1),.dout(mul_ln171_fu_1853_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U64(.din0(mul_ln186_fu_1862_p0),.din1(mul_ln186_fu_1862_p1),.dout(mul_ln186_fu_1862_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U65(.din0(mul_ln199_fu_1871_p0),.din1(mul_ln199_fu_1871_p1),.dout(mul_ln199_fu_1871_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U66(.din0(mul_ln212_fu_1880_p0),.din1(mul_ln212_fu_1880_p1),.dout(mul_ln212_fu_1880_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U67(.din0(mul_ln225_fu_1896_p0),.din1(mul_ln225_fu_1896_p1),.dout(mul_ln225_fu_1896_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U68(.din0(mul_ln238_fu_1905_p0),.din1(mul_ln238_fu_1905_p1),.dout(mul_ln238_fu_1905_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U69(.din0(mul_ln251_fu_1914_p0),.din1(mul_ln251_fu_1914_p1),.dout(mul_ln251_fu_1914_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U70(.din0(mul_ln264_fu_1923_p0),.din1(mul_ln264_fu_1923_p1),.dout(mul_ln264_fu_1923_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U71(.din0(mul_ln277_fu_1939_p0),.din1(mul_ln277_fu_1939_p1),.dout(mul_ln277_fu_1939_p2));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U72(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1951_p0),.din1(grp_fu_1951_p1),.din2(grp_fu_1951_p2),.ce(1'b1),.dout(grp_fu_1951_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U73(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1959_p0),.din1(grp_fu_1959_p1),.din2(grp_fu_1959_p2),.ce(1'b1),.dout(grp_fu_1959_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U74(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1967_p0),.din1(grp_fu_1967_p1),.din2(grp_fu_1967_p2),.ce(1'b1),.dout(grp_fu_1967_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U75(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1975_p0),.din1(grp_fu_1975_p1),.din2(grp_fu_1975_p2),.ce(1'b1),.dout(grp_fu_1975_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 5 ),.din3_WIDTH( 5 ),.dout_WIDTH( 13 ))
ama_addmuladd_8ns_3ns_5ns_5ns_13_4_1_U76(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_802),.din1(grp_fu_1983_p1),.din2(grp_fu_1983_p2),.din3(grp_fu_1983_p3),.ce(1'b1),.dout(grp_fu_1983_p4));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U77(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1993_p0),.din1(grp_fu_1993_p1),.din2(grp_fu_1993_p2),.ce(1'b1),.dout(grp_fu_1993_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U78(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2001_p0),.din1(grp_fu_2001_p1),.din2(grp_fu_2001_p2),.ce(1'b1),.dout(grp_fu_2001_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U79(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2009_p0),.din1(grp_fu_2009_p1),.din2(grp_fu_2009_p2),.ce(1'b1),.dout(grp_fu_2009_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 5 ),.din3_WIDTH( 5 ),.dout_WIDTH( 13 ))
ama_addmuladd_8ns_4ns_5ns_5ns_13_4_1_U80(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_802),.din1(grp_fu_2017_p1),.din2(grp_fu_2017_p2),.din3(grp_fu_2017_p3),.ce(1'b1),.dout(grp_fu_2017_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_136 <= 8'd0;
    end else if (((icmp_ln169_fu_957_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_136 <= add_ln168_reg_2050;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_802 <= add_ln169_reg_2104;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_897_p2 == 1'd0))) begin
        v115_reg_802 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_reg_2050 <= add_ln168_fu_903_p2;
        cmp11_reg_2091 <= cmp11_fu_951_p2;
        mul_ln175_reg_2073 <= mul_ln175_fu_931_p2;
        trunc_ln168_1_reg_2068 <= trunc_ln168_1_fu_913_p1;
        trunc_ln168_reg_2055 <= trunc_ln168_fu_909_p1;
        zext_ln168_reg_2078[4 : 0] <= zext_ln168_fu_947_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_2104 <= add_ln169_fu_967_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        empty_117_reg_2670 <= empty_117_fu_1945_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_2580 <= mul_ln171_fu_1853_p2;
        mul_ln186_reg_2590 <= mul_ln186_fu_1862_p2;
        mul_ln199_reg_2600 <= mul_ln199_fu_1871_p2;
        mul_ln212_reg_2610 <= mul_ln212_fu_1880_p2;
        mul_ln225_reg_2620 <= mul_ln225_fu_1896_p2;
        mul_ln238_reg_2630 <= mul_ln238_fu_1905_p2;
        mul_ln251_reg_2640 <= mul_ln251_fu_1914_p2;
        mul_ln264_reg_2650 <= mul_ln264_fu_1923_p2;
        mul_ln277_reg_2660 <= mul_ln277_fu_1939_p2;
        trunc_ln169_reg_2574 <= trunc_ln169_fu_1835_p1;
        v19_reg_2585 <= grp_fu_168_p_dout0;
        v21_reg_2595 <= grp_fu_172_p_dout0;
        v23_reg_2605 <= grp_fu_861_p2;
        v25_reg_2615 <= grp_fu_865_p2;
        v27_reg_2625 <= grp_fu_869_p2;
        v29_reg_2635 <= grp_fu_873_p2;
        v31_reg_2645 <= grp_fu_877_p2;
        v33_reg_2655 <= grp_fu_881_p2;
        v35_reg_2665 <= grp_fu_885_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_1_reg_2124 <= {{empty_38_fu_997_p2[7:2]}};
        tmp_reg_2114 <= {{empty_27_fu_977_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_2_reg_2134 <= {{empty_49_fu_1017_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_3_reg_2184 <= {{empty_72_fu_1048_p2[7:2]}};
        tmp_4_reg_2194 <= {{empty_83_fu_1068_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_5_reg_2289 <= {{empty_94_fu_1181_p2[7:2]}};
        v_reg_2199 <= v_fu_1120_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v20_reg_2294 <= v20_fu_1233_p19;
        v22_reg_2299 <= v22_fu_1304_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v24_reg_2384 <= v24_fu_1397_p19;
        v26_reg_2389 <= v26_fu_1468_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v28_reg_2474 <= v28_fu_1561_p19;
        v30_reg_2479 <= v30_fu_1632_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v32_reg_2564 <= v32_fu_1725_p19;
        v34_reg_2569 <= v34_fu_1796_p19;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state2)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_897_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_897_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2675_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_2675_p_ce;
    end else begin
        grp_fu_2675_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_853_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_853_p_ce;
    end else begin
        grp_fu_853_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_853_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_853_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_853_p0 = v_reg_2199;
    end else begin
        grp_fu_853_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_853_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_853_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_853_p1 = v113;
    end else begin
        grp_fu_853_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_857_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_857_p_ce;
    end else begin
        grp_fu_857_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_857_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_857_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_857_p0 = v20_reg_2294;
    end else begin
        grp_fu_857_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_857_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_857_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_857_p1 = v113;
    end else begin
        grp_fu_857_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_861_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_861_p_ce;
    end else begin
        grp_fu_861_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_861_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_861_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_861_p0 = v22_reg_2299;
    end else begin
        grp_fu_861_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_861_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_861_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_861_p1 = v113;
    end else begin
        grp_fu_861_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_865_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_865_p_ce;
    end else begin
        grp_fu_865_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_865_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_865_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_865_p0 = v24_reg_2384;
    end else begin
        grp_fu_865_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_865_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_865_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_865_p1 = v113;
    end else begin
        grp_fu_865_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast1383_fu_1671_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast1381_fu_1507_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast1379_fu_1343_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast1378_fu_1170_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast1377_fu_1037_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast1384_fu_1682_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast1382_fu_1518_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast1380_fu_1354_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast_fu_1159_p1;
    end else begin
        v226_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_0_ce0_local = 1'b1;
    end else begin
        v226_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_0_ce1_local = 1'b1;
    end else begin
        v226_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address0_local = p_cast1383_fu_1671_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast1381_fu_1507_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast1379_fu_1343_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast1378_fu_1170_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast1377_fu_1037_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast1384_fu_1682_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast1382_fu_1518_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast1380_fu_1354_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast_fu_1159_p1;
    end else begin
        v226_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_1_ce0_local = 1'b1;
    end else begin
        v226_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_1_ce1_local = 1'b1;
    end else begin
        v226_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address0_local = p_cast1383_fu_1671_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address0_local = p_cast1381_fu_1507_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address0_local = p_cast1379_fu_1343_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address0_local = p_cast1378_fu_1170_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_2_address0_local = p_cast1377_fu_1037_p1;
    end else begin
        v226_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address1_local = p_cast1384_fu_1682_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address1_local = p_cast1382_fu_1518_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address1_local = p_cast1380_fu_1354_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address1_local = p_cast_fu_1159_p1;
    end else begin
        v226_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_2_ce0_local = 1'b1;
    end else begin
        v226_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_2_ce1_local = 1'b1;
    end else begin
        v226_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address0_local = p_cast1383_fu_1671_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address0_local = p_cast1381_fu_1507_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address0_local = p_cast1379_fu_1343_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address0_local = p_cast1378_fu_1170_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_3_address0_local = p_cast1377_fu_1037_p1;
    end else begin
        v226_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address1_local = p_cast1384_fu_1682_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address1_local = p_cast1382_fu_1518_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address1_local = p_cast1380_fu_1354_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address1_local = p_cast_fu_1159_p1;
    end else begin
        v226_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_3_ce0_local = 1'b1;
    end else begin
        v226_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_3_ce1_local = 1'b1;
    end else begin
        v226_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_4_address0_local = p_cast1383_fu_1671_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_4_address0_local = p_cast1381_fu_1507_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_4_address0_local = p_cast1379_fu_1343_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_4_address0_local = p_cast1378_fu_1170_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_4_address0_local = p_cast1377_fu_1037_p1;
    end else begin
        v226_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_4_address1_local = p_cast1384_fu_1682_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_4_address1_local = p_cast1382_fu_1518_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_4_address1_local = p_cast1380_fu_1354_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_4_address1_local = p_cast_fu_1159_p1;
    end else begin
        v226_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_4_ce0_local = 1'b1;
    end else begin
        v226_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_4_ce1_local = 1'b1;
    end else begin
        v226_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_5_address0_local = p_cast1383_fu_1671_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_5_address0_local = p_cast1381_fu_1507_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_5_address0_local = p_cast1379_fu_1343_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_5_address0_local = p_cast1378_fu_1170_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_5_address0_local = p_cast1377_fu_1037_p1;
    end else begin
        v226_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_5_address1_local = p_cast1384_fu_1682_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_5_address1_local = p_cast1382_fu_1518_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_5_address1_local = p_cast1380_fu_1354_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_5_address1_local = p_cast_fu_1159_p1;
    end else begin
        v226_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_5_ce0_local = 1'b1;
    end else begin
        v226_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_5_ce1_local = 1'b1;
    end else begin
        v226_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_6_address0_local = p_cast1383_fu_1671_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_6_address0_local = p_cast1381_fu_1507_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_6_address0_local = p_cast1379_fu_1343_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_6_address0_local = p_cast1378_fu_1170_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_6_address0_local = p_cast1377_fu_1037_p1;
    end else begin
        v226_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_6_address1_local = p_cast1384_fu_1682_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_6_address1_local = p_cast1382_fu_1518_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_6_address1_local = p_cast1380_fu_1354_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_6_address1_local = p_cast_fu_1159_p1;
    end else begin
        v226_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_6_ce0_local = 1'b1;
    end else begin
        v226_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_6_ce1_local = 1'b1;
    end else begin
        v226_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_7_address0_local = p_cast1383_fu_1671_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_7_address0_local = p_cast1381_fu_1507_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_7_address0_local = p_cast1379_fu_1343_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_7_address0_local = p_cast1378_fu_1170_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_7_address0_local = p_cast1377_fu_1037_p1;
    end else begin
        v226_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_7_address1_local = p_cast1384_fu_1682_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_7_address1_local = p_cast1382_fu_1518_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_7_address1_local = p_cast1380_fu_1354_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_7_address1_local = p_cast_fu_1159_p1;
    end else begin
        v226_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_7_ce0_local = 1'b1;
    end else begin
        v226_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_7_ce1_local = 1'b1;
    end else begin
        v226_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_897_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_897_p2 == 1'd1))) begin
        v236_write_local = 1'b1;
    end else begin
        v236_write_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_897_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_897_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_957_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln168_fu_903_p2 = (v114_fu_136 + 8'd1);
assign add_ln169_fu_967_p2 = (v115_reg_802 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state2 = ((icmp_ln168_fu_897_p2 == 1'd1) & (v236_full_n == 1'b0));
end
assign cmp11_fu_951_p2 = ((v114_fu_136 == 8'd0) ? 1'b1 : 1'b0);
assign empty_108_fu_1929_p2 = (lshr_ln1_fu_1839_p4 + 6'd2);
assign empty_117_fu_1945_p2 = ((trunc_ln169_reg_2574 == 2'd3) ? 1'b1 : 1'b0);
assign empty_27_fu_977_p2 = (v115_reg_802 + 8'd1);
assign empty_38_fu_997_p2 = (v115_reg_802 + 8'd2);
assign empty_49_fu_1017_p2 = (v115_reg_802 + 8'd3);
assign empty_63_fu_1886_p2 = (lshr_ln1_fu_1839_p4 + 6'd1);
assign empty_72_fu_1048_p2 = (v115_reg_802 + 8'd5);
assign empty_83_fu_1068_p2 = (v115_reg_802 + 8'd6);
assign empty_94_fu_1181_p2 = (v115_reg_802 + 8'd7);
assign grp_fu_164_p_ce = grp_fu_2675_ce;
assign grp_fu_164_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_2675_p_din0;
assign grp_fu_164_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_grp_fu_2675_p_din1;
assign grp_fu_164_p_opcode = 2'd0;
assign grp_fu_168_p_ce = grp_fu_853_ce;
assign grp_fu_168_p_din0 = grp_fu_853_p0;
assign grp_fu_168_p_din1 = grp_fu_853_p1;
assign grp_fu_172_p_ce = grp_fu_857_ce;
assign grp_fu_172_p_din0 = grp_fu_857_p0;
assign grp_fu_172_p_din1 = grp_fu_857_p1;
assign grp_fu_1951_p0 = grp_fu_1951_p00;
assign grp_fu_1951_p00 = v115_reg_802;
assign grp_fu_1951_p1 = 13'd27;
assign grp_fu_1951_p2 = zext_ln168_reg_2078;
assign grp_fu_1959_p0 = grp_fu_1959_p00;
assign grp_fu_1959_p00 = empty_27_fu_977_p2;
assign grp_fu_1959_p1 = 13'd27;
assign grp_fu_1959_p2 = zext_ln168_reg_2078;
assign grp_fu_1967_p0 = grp_fu_1967_p00;
assign grp_fu_1967_p00 = empty_38_fu_997_p2;
assign grp_fu_1967_p1 = 13'd27;
assign grp_fu_1967_p2 = zext_ln168_reg_2078;
assign grp_fu_1975_p0 = grp_fu_1975_p00;
assign grp_fu_1975_p00 = empty_49_fu_1017_p2;
assign grp_fu_1975_p1 = 13'd27;
assign grp_fu_1975_p2 = zext_ln168_reg_2078;
assign grp_fu_1983_p1 = 8'd4;
assign grp_fu_1983_p2 = 13'd27;
assign grp_fu_1983_p3 = zext_ln168_reg_2078;
assign grp_fu_1993_p0 = grp_fu_1993_p00;
assign grp_fu_1993_p00 = empty_72_fu_1048_p2;
assign grp_fu_1993_p1 = 13'd27;
assign grp_fu_1993_p2 = zext_ln168_reg_2078;
assign grp_fu_2001_p0 = grp_fu_2001_p00;
assign grp_fu_2001_p00 = empty_83_fu_1068_p2;
assign grp_fu_2001_p1 = 13'd27;
assign grp_fu_2001_p2 = zext_ln168_reg_2078;
assign grp_fu_2009_p0 = grp_fu_2009_p00;
assign grp_fu_2009_p00 = empty_94_fu_1181_p2;
assign grp_fu_2009_p1 = 13'd27;
assign grp_fu_2009_p2 = zext_ln168_reg_2078;
assign grp_fu_2017_p1 = 8'd8;
assign grp_fu_2017_p2 = 13'd27;
assign grp_fu_2017_p3 = zext_ln168_reg_2078;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_ap_start_reg;
assign icmp_ln168_fu_897_p2 = ((v114_fu_136 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_957_p2 = ((v115_reg_802 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln168_1_fu_937_p4 = {{v114_fu_136[7:3]}};
assign lshr_ln1_fu_1839_p4 = {{v115_reg_802[7:2]}};
assign lshr_ln_fu_917_p4 = {{v114_fu_136[7:1]}};
assign mul_ln171_fu_1853_p0 = mul_ln171_fu_1853_p00;
assign mul_ln171_fu_1853_p00 = lshr_ln1_fu_1839_p4;
assign mul_ln171_fu_1853_p1 = 14'd190;
assign mul_ln175_fu_931_p0 = mul_ln175_fu_931_p00;
assign mul_ln175_fu_931_p00 = lshr_ln_fu_917_p4;
assign mul_ln175_fu_931_p1 = 15'd190;
assign mul_ln186_fu_1862_p0 = mul_ln186_fu_1862_p00;
assign mul_ln186_fu_1862_p00 = tmp_reg_2114;
assign mul_ln186_fu_1862_p1 = 14'd190;
assign mul_ln199_fu_1871_p0 = mul_ln199_fu_1871_p00;
assign mul_ln199_fu_1871_p00 = tmp_1_reg_2124;
assign mul_ln199_fu_1871_p1 = 14'd190;
assign mul_ln212_fu_1880_p0 = mul_ln212_fu_1880_p00;
assign mul_ln212_fu_1880_p00 = tmp_2_reg_2134;
assign mul_ln212_fu_1880_p1 = 14'd190;
assign mul_ln225_fu_1896_p0 = mul_ln225_fu_1896_p00;
assign mul_ln225_fu_1896_p00 = empty_63_fu_1886_p2;
assign mul_ln225_fu_1896_p1 = 14'd190;
assign mul_ln238_fu_1905_p0 = mul_ln238_fu_1905_p00;
assign mul_ln238_fu_1905_p00 = tmp_3_reg_2184;
assign mul_ln238_fu_1905_p1 = 14'd190;
assign mul_ln251_fu_1914_p0 = mul_ln251_fu_1914_p00;
assign mul_ln251_fu_1914_p00 = tmp_4_reg_2194;
assign mul_ln251_fu_1914_p1 = 14'd190;
assign mul_ln264_fu_1923_p0 = mul_ln264_fu_1923_p00;
assign mul_ln264_fu_1923_p00 = tmp_5_reg_2289;
assign mul_ln264_fu_1923_p1 = 14'd190;
assign mul_ln277_fu_1939_p0 = mul_ln277_fu_1939_p00;
assign mul_ln277_fu_1939_p00 = empty_108_fu_1929_p2;
assign mul_ln277_fu_1939_p1 = 14'd190;
assign p_cast1377_fu_1037_p1 = grp_fu_1951_p3;
assign p_cast1378_fu_1170_p1 = grp_fu_1967_p3;
assign p_cast1379_fu_1343_p1 = grp_fu_1975_p3;
assign p_cast1380_fu_1354_p1 = grp_fu_1983_p4;
assign p_cast1381_fu_1507_p1 = grp_fu_1993_p3;
assign p_cast1382_fu_1518_p1 = grp_fu_2001_p3;
assign p_cast1383_fu_1671_p1 = grp_fu_2009_p3;
assign p_cast1384_fu_1682_p1 = grp_fu_2017_p4;
assign p_cast_fu_1159_p1 = grp_fu_1959_p3;
assign trunc_ln168_1_fu_913_p1 = v114_fu_136[0:0];
assign trunc_ln168_fu_909_p1 = v114_fu_136[2:0];
assign trunc_ln169_fu_1835_p1 = v115_reg_802[1:0];
assign v20_fu_1233_p10 = v226_4_q1;
assign v20_fu_1233_p12 = v226_5_q1;
assign v20_fu_1233_p14 = v226_6_q1;
assign v20_fu_1233_p16 = v226_7_q1;
assign v20_fu_1233_p17 = 'bx;
assign v20_fu_1233_p2 = v226_0_q1;
assign v20_fu_1233_p4 = v226_1_q1;
assign v20_fu_1233_p6 = v226_2_q1;
assign v20_fu_1233_p8 = v226_3_q1;
assign v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_address0;
assign v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_address1;
assign v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_ce0;
assign v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_ce1;
assign v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_d0;
assign v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_d1;
assign v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_we0;
assign v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_0_we1;
assign v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_address0;
assign v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_address1;
assign v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_ce0;
assign v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_ce1;
assign v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_d0;
assign v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_d1;
assign v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_we0;
assign v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_1_we1;
assign v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_address0;
assign v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_address1;
assign v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_ce0;
assign v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_ce1;
assign v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_d0;
assign v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_d1;
assign v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_we0;
assign v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_2_we1;
assign v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_address0;
assign v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_address1;
assign v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_ce0;
assign v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_ce1;
assign v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_d0;
assign v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_d1;
assign v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_we0;
assign v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v225_3_we1;
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
assign v226_4_address0 = v226_4_address0_local;
assign v226_4_address1 = v226_4_address1_local;
assign v226_4_ce0 = v226_4_ce0_local;
assign v226_4_ce1 = v226_4_ce1_local;
assign v226_5_address0 = v226_5_address0_local;
assign v226_5_address1 = v226_5_address1_local;
assign v226_5_ce0 = v226_5_ce0_local;
assign v226_5_ce1 = v226_5_ce1_local;
assign v226_6_address0 = v226_6_address0_local;
assign v226_6_address1 = v226_6_address1_local;
assign v226_6_ce0 = v226_6_ce0_local;
assign v226_6_ce1 = v226_6_ce1_local;
assign v226_7_address0 = v226_7_address0_local;
assign v226_7_address1 = v226_7_address1_local;
assign v226_7_ce0 = v226_7_ce0_local;
assign v226_7_ce1 = v226_7_ce1_local;
assign v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_814_v227_1_ce1;
assign v22_fu_1304_p10 = v226_4_q0;
assign v22_fu_1304_p12 = v226_5_q0;
assign v22_fu_1304_p14 = v226_6_q0;
assign v22_fu_1304_p16 = v226_7_q0;
assign v22_fu_1304_p17 = 'bx;
assign v22_fu_1304_p2 = v226_0_q0;
assign v22_fu_1304_p4 = v226_1_q0;
assign v22_fu_1304_p6 = v226_2_q0;
assign v22_fu_1304_p8 = v226_3_q0;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign v24_fu_1397_p10 = v226_4_q0;
assign v24_fu_1397_p12 = v226_5_q0;
assign v24_fu_1397_p14 = v226_6_q0;
assign v24_fu_1397_p16 = v226_7_q0;
assign v24_fu_1397_p17 = 'bx;
assign v24_fu_1397_p2 = v226_0_q0;
assign v24_fu_1397_p4 = v226_1_q0;
assign v24_fu_1397_p6 = v226_2_q0;
assign v24_fu_1397_p8 = v226_3_q0;
assign v26_fu_1468_p10 = v226_4_q1;
assign v26_fu_1468_p12 = v226_5_q1;
assign v26_fu_1468_p14 = v226_6_q1;
assign v26_fu_1468_p16 = v226_7_q1;
assign v26_fu_1468_p17 = 'bx;
assign v26_fu_1468_p2 = v226_0_q1;
assign v26_fu_1468_p4 = v226_1_q1;
assign v26_fu_1468_p6 = v226_2_q1;
assign v26_fu_1468_p8 = v226_3_q1;
assign v28_fu_1561_p10 = v226_4_q0;
assign v28_fu_1561_p12 = v226_5_q0;
assign v28_fu_1561_p14 = v226_6_q0;
assign v28_fu_1561_p16 = v226_7_q0;
assign v28_fu_1561_p17 = 'bx;
assign v28_fu_1561_p2 = v226_0_q0;
assign v28_fu_1561_p4 = v226_1_q0;
assign v28_fu_1561_p6 = v226_2_q0;
assign v28_fu_1561_p8 = v226_3_q0;
assign v30_fu_1632_p10 = v226_4_q1;
assign v30_fu_1632_p12 = v226_5_q1;
assign v30_fu_1632_p14 = v226_6_q1;
assign v30_fu_1632_p16 = v226_7_q1;
assign v30_fu_1632_p17 = 'bx;
assign v30_fu_1632_p2 = v226_0_q1;
assign v30_fu_1632_p4 = v226_1_q1;
assign v30_fu_1632_p6 = v226_2_q1;
assign v30_fu_1632_p8 = v226_3_q1;
assign v32_fu_1725_p10 = v226_4_q0;
assign v32_fu_1725_p12 = v226_5_q0;
assign v32_fu_1725_p14 = v226_6_q0;
assign v32_fu_1725_p16 = v226_7_q0;
assign v32_fu_1725_p17 = 'bx;
assign v32_fu_1725_p2 = v226_0_q0;
assign v32_fu_1725_p4 = v226_1_q0;
assign v32_fu_1725_p6 = v226_2_q0;
assign v32_fu_1725_p8 = v226_3_q0;
assign v34_fu_1796_p10 = v226_4_q1;
assign v34_fu_1796_p12 = v226_5_q1;
assign v34_fu_1796_p14 = v226_6_q1;
assign v34_fu_1796_p16 = v226_7_q1;
assign v34_fu_1796_p17 = 'bx;
assign v34_fu_1796_p2 = v226_0_q1;
assign v34_fu_1796_p4 = v226_1_q1;
assign v34_fu_1796_p6 = v226_2_q1;
assign v34_fu_1796_p8 = v226_3_q1;
assign v_fu_1120_p10 = v226_4_q0;
assign v_fu_1120_p12 = v226_5_q0;
assign v_fu_1120_p14 = v226_6_q0;
assign v_fu_1120_p16 = v226_7_q0;
assign v_fu_1120_p17 = 'bx;
assign v_fu_1120_p2 = v226_0_q0;
assign v_fu_1120_p4 = v226_1_q0;
assign v_fu_1120_p6 = v226_2_q0;
assign v_fu_1120_p8 = v226_3_q0;
assign zext_ln168_fu_947_p1 = lshr_ln168_1_fu_937_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_2078[12:5] <= 8'b00000000;
end
endmodule 