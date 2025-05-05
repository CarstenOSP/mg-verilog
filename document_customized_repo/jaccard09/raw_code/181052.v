module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v226_2_address0,v226_2_ce0,v226_2_q0,v226_2_address1,v226_2_ce1,v226_2_q1,v226_3_address0,v226_3_ce0,v226_3_q0,v226_3_address1,v226_3_ce1,v226_3_q1,v226_4_address0,v226_4_ce0,v226_4_q0,v226_4_address1,v226_4_ce1,v226_4_q1,v226_5_address0,v226_5_ce0,v226_5_q0,v226_5_address1,v226_5_ce1,v226_5_q1,v226_6_address0,v226_6_ce0,v226_6_q0,v226_6_address1,v226_6_ce1,v226_6_q1,v226_7_address0,v226_7_ce0,v226_7_q0,v226_7_address1,v226_7_ce1,v226_7_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_4_address0,v225_4_ce0,v225_4_we0,v225_4_d0,v225_4_q0,v225_4_address1,v225_4_ce1,v225_4_we1,v225_4_d1,v225_4_q1,v225_5_address0,v225_5_ce0,v225_5_we0,v225_5_d0,v225_5_q0,v225_5_address1,v225_5_ce1,v225_5_we1,v225_5_d1,v225_5_q1,v225_6_address0,v225_6_ce0,v225_6_we0,v225_6_d0,v225_6_q0,v225_6_address1,v225_6_ce1,v225_6_we1,v225_6_d1,v225_6_q1,v225_7_address0,v225_7_ce0,v225_7_we0,v225_7_d0,v225_7_q0,v225_7_address1,v225_7_ce1,v225_7_we1,v225_7_d1,v225_7_q1,v113,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_opcode,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce); 
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
output  [15:0] v227_address0;
output   v227_ce0;
input  [31:0] v227_q0;
output  [15:0] v227_address1;
output   v227_ce1;
input  [31:0] v227_q1;
output  [0:0] v236_din;
input   v236_full_n;
output   v236_write;
output  [12:0] v225_0_address0;
output   v225_0_ce0;
output   v225_0_we0;
output  [31:0] v225_0_d0;
input  [31:0] v225_0_q0;
output  [12:0] v225_0_address1;
output   v225_0_ce1;
output   v225_0_we1;
output  [31:0] v225_0_d1;
input  [31:0] v225_0_q1;
output  [12:0] v225_1_address0;
output   v225_1_ce0;
output   v225_1_we0;
output  [31:0] v225_1_d0;
input  [31:0] v225_1_q0;
output  [12:0] v225_1_address1;
output   v225_1_ce1;
output   v225_1_we1;
output  [31:0] v225_1_d1;
input  [31:0] v225_1_q1;
output  [12:0] v225_2_address0;
output   v225_2_ce0;
output   v225_2_we0;
output  [31:0] v225_2_d0;
input  [31:0] v225_2_q0;
output  [12:0] v225_2_address1;
output   v225_2_ce1;
output   v225_2_we1;
output  [31:0] v225_2_d1;
input  [31:0] v225_2_q1;
output  [12:0] v225_3_address0;
output   v225_3_ce0;
output   v225_3_we0;
output  [31:0] v225_3_d0;
input  [31:0] v225_3_q0;
output  [12:0] v225_3_address1;
output   v225_3_ce1;
output   v225_3_we1;
output  [31:0] v225_3_d1;
input  [31:0] v225_3_q1;
output  [12:0] v225_4_address0;
output   v225_4_ce0;
output   v225_4_we0;
output  [31:0] v225_4_d0;
input  [31:0] v225_4_q0;
output  [12:0] v225_4_address1;
output   v225_4_ce1;
output   v225_4_we1;
output  [31:0] v225_4_d1;
input  [31:0] v225_4_q1;
output  [12:0] v225_5_address0;
output   v225_5_ce0;
output   v225_5_we0;
output  [31:0] v225_5_d0;
input  [31:0] v225_5_q0;
output  [12:0] v225_5_address1;
output   v225_5_ce1;
output   v225_5_we1;
output  [31:0] v225_5_d1;
input  [31:0] v225_5_q1;
output  [12:0] v225_6_address0;
output   v225_6_ce0;
output   v225_6_we0;
output  [31:0] v225_6_d0;
input  [31:0] v225_6_q0;
output  [12:0] v225_6_address1;
output   v225_6_ce1;
output   v225_6_we1;
output  [31:0] v225_6_d1;
input  [31:0] v225_6_q1;
output  [12:0] v225_7_address0;
output   v225_7_ce0;
output   v225_7_we0;
output  [31:0] v225_7_d0;
input  [31:0] v225_7_q0;
output  [12:0] v225_7_address1;
output   v225_7_ce1;
output   v225_7_we1;
output  [31:0] v225_7_d1;
input  [31:0] v225_7_q1;
input  [31:0] v113;
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
output  [1:0] grp_fu_176_p_opcode;
input  [31:0] grp_fu_176_p_dout0;
output   grp_fu_176_p_ce;
output  [31:0] grp_fu_180_p_din0;
output  [31:0] grp_fu_180_p_din1;
input  [31:0] grp_fu_180_p_dout0;
output   grp_fu_180_p_ce;
output  [31:0] grp_fu_184_p_din0;
output  [31:0] grp_fu_184_p_din1;
input  [31:0] grp_fu_184_p_dout0;
output   grp_fu_184_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_918_p2;
reg   [15:0] phi_mul_load_reg_2066;
wire   [15:0] add_ln168_1_fu_912_p2;
reg   [15:0] add_ln168_1_reg_2071;
wire   [7:0] add_ln168_fu_924_p2;
reg   [7:0] add_ln168_reg_2079;
wire   [2:0] trunc_ln168_fu_930_p1;
reg   [2:0] trunc_ln168_reg_2084;
wire   [12:0] zext_ln168_fu_944_p1;
reg   [12:0] zext_ln168_reg_2097;
wire   [0:0] cmp11_fu_948_p2;
reg   [0:0] cmp11_reg_2110;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_964_p2;
reg   [7:0] add_ln169_reg_2123;
wire    ap_CS_fsm_state4;
reg   [4:0] tmp_reg_2133;
reg   [4:0] tmp_1_reg_2143;
wire    ap_CS_fsm_state5;
reg   [4:0] tmp_2_reg_2153;
reg   [4:0] tmp_3_reg_2163;
wire    ap_CS_fsm_state6;
reg   [4:0] tmp_4_reg_2213;
reg   [4:0] tmp_5_reg_2223;
wire   [31:0] v_fu_1141_p19;
reg   [31:0] v_reg_2228;
wire    ap_CS_fsm_state7;
reg   [4:0] tmp_6_reg_2318;
wire   [31:0] v20_fu_1254_p19;
reg   [31:0] v20_reg_2323;
wire    ap_CS_fsm_state8;
wire   [31:0] v22_fu_1325_p19;
reg   [31:0] v22_reg_2328;
wire   [31:0] v24_fu_1418_p19;
reg   [31:0] v24_reg_2413;
wire    ap_CS_fsm_state9;
wire   [31:0] v26_fu_1489_p19;
reg   [31:0] v26_reg_2418;
wire   [31:0] v28_fu_1582_p19;
reg   [31:0] v28_reg_2503;
wire    ap_CS_fsm_state10;
wire   [31:0] v30_fu_1653_p19;
reg   [31:0] v30_reg_2508;
wire   [31:0] v32_fu_1746_p19;
reg   [31:0] v32_reg_2593;
wire    ap_CS_fsm_state11;
wire   [31:0] v34_fu_1817_p19;
reg   [31:0] v34_reg_2598;
wire   [2:0] trunc_ln169_fu_1856_p1;
reg   [2:0] trunc_ln169_reg_2603;
wire    ap_CS_fsm_state15;
wire   [12:0] mul_ln171_fu_1874_p2;
reg   [12:0] mul_ln171_reg_2609;
reg   [31:0] v19_reg_2614;
wire   [12:0] mul_ln186_fu_1883_p2;
reg   [12:0] mul_ln186_reg_2619;
reg   [31:0] v21_reg_2624;
wire   [12:0] mul_ln199_fu_1892_p2;
reg   [12:0] mul_ln199_reg_2629;
wire   [31:0] grp_fu_868_p2;
reg   [31:0] v23_reg_2634;
wire   [12:0] mul_ln212_fu_1901_p2;
reg   [12:0] mul_ln212_reg_2639;
wire   [31:0] grp_fu_872_p2;
reg   [31:0] v25_reg_2644;
wire   [12:0] mul_ln225_fu_1910_p2;
reg   [12:0] mul_ln225_reg_2649;
wire   [31:0] grp_fu_876_p2;
reg   [31:0] v27_reg_2654;
wire   [12:0] mul_ln238_fu_1919_p2;
reg   [12:0] mul_ln238_reg_2659;
wire   [31:0] grp_fu_880_p2;
reg   [31:0] v29_reg_2664;
wire   [12:0] mul_ln251_fu_1928_p2;
reg   [12:0] mul_ln251_reg_2669;
wire   [31:0] grp_fu_884_p2;
reg   [31:0] v31_reg_2674;
wire   [12:0] mul_ln264_fu_1937_p2;
reg   [12:0] mul_ln264_reg_2679;
wire   [31:0] grp_fu_888_p2;
reg   [31:0] v33_reg_2684;
wire   [12:0] mul_ln277_fu_1953_p2;
reg   [12:0] mul_ln277_reg_2689;
wire   [31:0] grp_fu_892_p2;
reg   [31:0] v35_reg_2694;
wire   [0:0] empty_113_fu_1959_p2;
reg   [0:0] empty_113_reg_2699;
wire    ap_CS_fsm_state16;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_ready;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_2704_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_2704_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_2704_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_2704_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_860_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_860_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_860_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_864_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_864_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_864_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_868_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_868_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_868_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_872_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_872_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_872_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_876_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_876_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_876_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_880_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_880_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_880_p_ce;
reg   [7:0] v115_reg_804;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_start_reg;
wire   [63:0] p_cast1363_fu_1058_p1;
wire   [63:0] p_cast_fu_1180_p1;
wire   [63:0] p_cast1364_fu_1191_p1;
wire   [63:0] p_cast1365_fu_1364_p1;
wire   [63:0] p_cast1366_fu_1375_p1;
wire   [63:0] p_cast1367_fu_1528_p1;
wire   [63:0] p_cast1368_fu_1539_p1;
wire   [63:0] p_cast1369_fu_1692_p1;
wire   [63:0] p_cast1370_fu_1703_p1;
reg   [15:0] phi_mul_fu_134;
wire   [0:0] icmp_ln169_fu_954_p2;
reg   [7:0] v114_fu_138;
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
reg   [31:0] grp_fu_860_p0;
reg   [31:0] grp_fu_860_p1;
wire    ap_CS_fsm_state12;
reg   [31:0] grp_fu_864_p0;
reg   [31:0] grp_fu_864_p1;
reg   [31:0] grp_fu_868_p0;
reg   [31:0] grp_fu_868_p1;
reg   [31:0] grp_fu_872_p0;
reg   [31:0] grp_fu_872_p1;
reg   [31:0] grp_fu_876_p0;
reg   [31:0] grp_fu_876_p1;
reg   [31:0] grp_fu_880_p0;
reg   [31:0] grp_fu_880_p1;
wire   [4:0] lshr_ln_fu_934_p4;
wire   [7:0] empty_24_fu_978_p2;
wire   [7:0] empty_35_fu_998_p2;
wire   [7:0] empty_46_fu_1018_p2;
wire   [7:0] empty_57_fu_1038_p2;
wire   [12:0] grp_fu_1965_p3;
wire   [7:0] empty_68_fu_1069_p2;
wire   [7:0] empty_79_fu_1089_p2;
wire   [31:0] v_fu_1141_p2;
wire   [31:0] v_fu_1141_p4;
wire   [31:0] v_fu_1141_p6;
wire   [31:0] v_fu_1141_p8;
wire   [31:0] v_fu_1141_p10;
wire   [31:0] v_fu_1141_p12;
wire   [31:0] v_fu_1141_p14;
wire   [31:0] v_fu_1141_p16;
wire   [31:0] v_fu_1141_p17;
wire   [12:0] grp_fu_1973_p3;
wire   [12:0] grp_fu_1981_p3;
wire   [7:0] empty_90_fu_1202_p2;
wire   [31:0] v20_fu_1254_p2;
wire   [31:0] v20_fu_1254_p4;
wire   [31:0] v20_fu_1254_p6;
wire   [31:0] v20_fu_1254_p8;
wire   [31:0] v20_fu_1254_p10;
wire   [31:0] v20_fu_1254_p12;
wire   [31:0] v20_fu_1254_p14;
wire   [31:0] v20_fu_1254_p16;
wire   [31:0] v20_fu_1254_p17;
wire   [31:0] v22_fu_1325_p2;
wire   [31:0] v22_fu_1325_p4;
wire   [31:0] v22_fu_1325_p6;
wire   [31:0] v22_fu_1325_p8;
wire   [31:0] v22_fu_1325_p10;
wire   [31:0] v22_fu_1325_p12;
wire   [31:0] v22_fu_1325_p14;
wire   [31:0] v22_fu_1325_p16;
wire   [31:0] v22_fu_1325_p17;
wire   [12:0] grp_fu_1989_p3;
wire   [12:0] grp_fu_1997_p3;
wire   [31:0] v24_fu_1418_p2;
wire   [31:0] v24_fu_1418_p4;
wire   [31:0] v24_fu_1418_p6;
wire   [31:0] v24_fu_1418_p8;
wire   [31:0] v24_fu_1418_p10;
wire   [31:0] v24_fu_1418_p12;
wire   [31:0] v24_fu_1418_p14;
wire   [31:0] v24_fu_1418_p16;
wire   [31:0] v24_fu_1418_p17;
wire   [31:0] v26_fu_1489_p2;
wire   [31:0] v26_fu_1489_p4;
wire   [31:0] v26_fu_1489_p6;
wire   [31:0] v26_fu_1489_p8;
wire   [31:0] v26_fu_1489_p10;
wire   [31:0] v26_fu_1489_p12;
wire   [31:0] v26_fu_1489_p14;
wire   [31:0] v26_fu_1489_p16;
wire   [31:0] v26_fu_1489_p17;
wire   [12:0] grp_fu_2005_p3;
wire   [12:0] grp_fu_2013_p3;
wire   [31:0] v28_fu_1582_p2;
wire   [31:0] v28_fu_1582_p4;
wire   [31:0] v28_fu_1582_p6;
wire   [31:0] v28_fu_1582_p8;
wire   [31:0] v28_fu_1582_p10;
wire   [31:0] v28_fu_1582_p12;
wire   [31:0] v28_fu_1582_p14;
wire   [31:0] v28_fu_1582_p16;
wire   [31:0] v28_fu_1582_p17;
wire   [31:0] v30_fu_1653_p2;
wire   [31:0] v30_fu_1653_p4;
wire   [31:0] v30_fu_1653_p6;
wire   [31:0] v30_fu_1653_p8;
wire   [31:0] v30_fu_1653_p10;
wire   [31:0] v30_fu_1653_p12;
wire   [31:0] v30_fu_1653_p14;
wire   [31:0] v30_fu_1653_p16;
wire   [31:0] v30_fu_1653_p17;
wire   [12:0] grp_fu_2021_p3;
wire   [12:0] grp_fu_2029_p4;
wire   [31:0] v32_fu_1746_p2;
wire   [31:0] v32_fu_1746_p4;
wire   [31:0] v32_fu_1746_p6;
wire   [31:0] v32_fu_1746_p8;
wire   [31:0] v32_fu_1746_p10;
wire   [31:0] v32_fu_1746_p12;
wire   [31:0] v32_fu_1746_p14;
wire   [31:0] v32_fu_1746_p16;
wire   [31:0] v32_fu_1746_p17;
wire   [31:0] v34_fu_1817_p2;
wire   [31:0] v34_fu_1817_p4;
wire   [31:0] v34_fu_1817_p6;
wire   [31:0] v34_fu_1817_p8;
wire   [31:0] v34_fu_1817_p10;
wire   [31:0] v34_fu_1817_p12;
wire   [31:0] v34_fu_1817_p14;
wire   [31:0] v34_fu_1817_p16;
wire   [31:0] v34_fu_1817_p17;
wire   [4:0] lshr_ln1_fu_1860_p4;
wire   [4:0] mul_ln171_fu_1874_p0;
wire   [8:0] mul_ln171_fu_1874_p1;
wire   [4:0] mul_ln186_fu_1883_p0;
wire   [8:0] mul_ln186_fu_1883_p1;
wire   [4:0] mul_ln199_fu_1892_p0;
wire   [8:0] mul_ln199_fu_1892_p1;
wire   [4:0] mul_ln212_fu_1901_p0;
wire   [8:0] mul_ln212_fu_1901_p1;
wire   [4:0] mul_ln225_fu_1910_p0;
wire   [8:0] mul_ln225_fu_1910_p1;
wire   [4:0] mul_ln238_fu_1919_p0;
wire   [8:0] mul_ln238_fu_1919_p1;
wire   [4:0] mul_ln251_fu_1928_p0;
wire   [8:0] mul_ln251_fu_1928_p1;
wire   [4:0] mul_ln264_fu_1937_p0;
wire   [8:0] mul_ln264_fu_1937_p1;
wire   [4:0] empty_104_fu_1943_p2;
wire   [4:0] mul_ln277_fu_1953_p0;
wire   [8:0] mul_ln277_fu_1953_p1;
wire   [7:0] grp_fu_1965_p0;
wire   [4:0] grp_fu_1965_p1;
wire   [4:0] grp_fu_1965_p2;
wire   [7:0] grp_fu_1973_p0;
wire   [4:0] grp_fu_1973_p1;
wire   [4:0] grp_fu_1973_p2;
wire   [7:0] grp_fu_1981_p0;
wire   [4:0] grp_fu_1981_p1;
wire   [4:0] grp_fu_1981_p2;
wire   [7:0] grp_fu_1989_p0;
wire   [4:0] grp_fu_1989_p1;
wire   [4:0] grp_fu_1989_p2;
wire   [7:0] grp_fu_1997_p0;
wire   [4:0] grp_fu_1997_p1;
wire   [4:0] grp_fu_1997_p2;
wire   [7:0] grp_fu_2005_p0;
wire   [4:0] grp_fu_2005_p1;
wire   [4:0] grp_fu_2005_p2;
wire   [7:0] grp_fu_2013_p0;
wire   [4:0] grp_fu_2013_p1;
wire   [4:0] grp_fu_2013_p2;
wire   [7:0] grp_fu_2021_p0;
wire   [4:0] grp_fu_2021_p1;
wire   [4:0] grp_fu_2021_p2;
wire   [3:0] grp_fu_2029_p1;
wire   [4:0] grp_fu_2029_p2;
wire   [4:0] grp_fu_2029_p3;
reg    grp_fu_860_ce;
reg    grp_fu_864_ce;
reg    grp_fu_868_ce;
reg    grp_fu_872_ce;
reg    grp_fu_876_ce;
reg    grp_fu_880_ce;
reg    grp_fu_2704_ce;
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
wire   [12:0] grp_fu_1965_p00;
wire   [12:0] grp_fu_1973_p00;
wire   [12:0] grp_fu_1981_p00;
wire   [12:0] grp_fu_1989_p00;
wire   [12:0] grp_fu_1997_p00;
wire   [12:0] grp_fu_2005_p00;
wire   [12:0] grp_fu_2013_p00;
wire   [12:0] grp_fu_2021_p00;
wire   [12:0] mul_ln171_fu_1874_p00;
wire   [12:0] mul_ln186_fu_1883_p00;
wire   [12:0] mul_ln199_fu_1892_p00;
wire   [12:0] mul_ln212_fu_1901_p00;
wire   [12:0] mul_ln225_fu_1910_p00;
wire   [12:0] mul_ln238_fu_1919_p00;
wire   [12:0] mul_ln251_fu_1928_p00;
wire   [12:0] mul_ln264_fu_1937_p00;
wire   [12:0] mul_ln277_fu_1953_p00;
wire   [2:0] v_fu_1141_p1;
wire   [2:0] v_fu_1141_p3;
wire   [2:0] v_fu_1141_p5;
wire   [2:0] v_fu_1141_p7;
wire  signed [2:0] v_fu_1141_p9;
wire  signed [2:0] v_fu_1141_p11;
wire  signed [2:0] v_fu_1141_p13;
wire  signed [2:0] v_fu_1141_p15;
wire   [2:0] v20_fu_1254_p1;
wire   [2:0] v20_fu_1254_p3;
wire   [2:0] v20_fu_1254_p5;
wire   [2:0] v20_fu_1254_p7;
wire  signed [2:0] v20_fu_1254_p9;
wire  signed [2:0] v20_fu_1254_p11;
wire  signed [2:0] v20_fu_1254_p13;
wire  signed [2:0] v20_fu_1254_p15;
wire   [2:0] v22_fu_1325_p1;
wire   [2:0] v22_fu_1325_p3;
wire   [2:0] v22_fu_1325_p5;
wire   [2:0] v22_fu_1325_p7;
wire  signed [2:0] v22_fu_1325_p9;
wire  signed [2:0] v22_fu_1325_p11;
wire  signed [2:0] v22_fu_1325_p13;
wire  signed [2:0] v22_fu_1325_p15;
wire   [2:0] v24_fu_1418_p1;
wire   [2:0] v24_fu_1418_p3;
wire   [2:0] v24_fu_1418_p5;
wire   [2:0] v24_fu_1418_p7;
wire  signed [2:0] v24_fu_1418_p9;
wire  signed [2:0] v24_fu_1418_p11;
wire  signed [2:0] v24_fu_1418_p13;
wire  signed [2:0] v24_fu_1418_p15;
wire   [2:0] v26_fu_1489_p1;
wire   [2:0] v26_fu_1489_p3;
wire   [2:0] v26_fu_1489_p5;
wire   [2:0] v26_fu_1489_p7;
wire  signed [2:0] v26_fu_1489_p9;
wire  signed [2:0] v26_fu_1489_p11;
wire  signed [2:0] v26_fu_1489_p13;
wire  signed [2:0] v26_fu_1489_p15;
wire   [2:0] v28_fu_1582_p1;
wire   [2:0] v28_fu_1582_p3;
wire   [2:0] v28_fu_1582_p5;
wire   [2:0] v28_fu_1582_p7;
wire  signed [2:0] v28_fu_1582_p9;
wire  signed [2:0] v28_fu_1582_p11;
wire  signed [2:0] v28_fu_1582_p13;
wire  signed [2:0] v28_fu_1582_p15;
wire   [2:0] v30_fu_1653_p1;
wire   [2:0] v30_fu_1653_p3;
wire   [2:0] v30_fu_1653_p5;
wire   [2:0] v30_fu_1653_p7;
wire  signed [2:0] v30_fu_1653_p9;
wire  signed [2:0] v30_fu_1653_p11;
wire  signed [2:0] v30_fu_1653_p13;
wire  signed [2:0] v30_fu_1653_p15;
wire   [2:0] v32_fu_1746_p1;
wire   [2:0] v32_fu_1746_p3;
wire   [2:0] v32_fu_1746_p5;
wire   [2:0] v32_fu_1746_p7;
wire  signed [2:0] v32_fu_1746_p9;
wire  signed [2:0] v32_fu_1746_p11;
wire  signed [2:0] v32_fu_1746_p13;
wire  signed [2:0] v32_fu_1746_p15;
wire   [2:0] v34_fu_1817_p1;
wire   [2:0] v34_fu_1817_p3;
wire   [2:0] v34_fu_1817_p5;
wire   [2:0] v34_fu_1817_p7;
wire  signed [2:0] v34_fu_1817_p9;
wire  signed [2:0] v34_fu_1817_p11;
wire  signed [2:0] v34_fu_1817_p13;
wire  signed [2:0] v34_fu_1817_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_start_reg = 1'b0;
#0 phi_mul_fu_134 = 16'd0;
#0 v114_fu_138 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_816(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_ready),.cmp11(cmp11_reg_2110),.v225_7_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_address0),.v225_7_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_ce0),.v225_7_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_we0),.v225_7_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_d0),.v225_7_q0(v225_7_q0),.v225_7_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_address1),.v225_7_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_ce1),.v225_7_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_we1),.v225_7_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_d1),.v225_7_q1(v225_7_q1),.v225_6_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_address0),.v225_6_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_ce0),.v225_6_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_we0),.v225_6_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_d0),.v225_6_q0(v225_6_q0),.v225_6_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_address1),.v225_6_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_ce1),.v225_6_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_we1),.v225_6_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_d1),.v225_6_q1(v225_6_q1),.v225_5_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_address0),.v225_5_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_ce0),.v225_5_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_we0),.v225_5_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_d0),.v225_5_q0(v225_5_q0),.v225_5_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_address1),.v225_5_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_ce1),.v225_5_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_we1),.v225_5_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_d1),.v225_5_q1(v225_5_q1),.v225_4_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_address0),.v225_4_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_ce0),.v225_4_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_we0),.v225_4_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_d0),.v225_4_q0(v225_4_q0),.v225_4_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_address1),.v225_4_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_ce1),.v225_4_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_we1),.v225_4_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_d1),.v225_4_q1(v225_4_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_d1),.v225_3_q1(v225_3_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_d1),.v225_0_q1(v225_0_q1),.phi_mul(phi_mul_load_reg_2066),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_2609),.mul_ln277(mul_ln277_reg_2689),.mul_ln264(mul_ln264_reg_2679),.mul_ln251(mul_ln251_reg_2669),.mul_ln238(mul_ln238_reg_2659),.mul_ln225(mul_ln225_reg_2649),.mul_ln212(mul_ln212_reg_2639),.mul_ln199(mul_ln199_reg_2629),.mul_ln186(mul_ln186_reg_2619),.empty_13(trunc_ln169_reg_2603),.v120(v19_reg_2614),.v133(v21_reg_2624),.v144(v23_reg_2634),.v155(v25_reg_2644),.v166(v27_reg_2654),.v177(v29_reg_2664),.v188(v31_reg_2674),.v199(v33_reg_2684),.v210(v35_reg_2694),.empty(empty_113_reg_2699),.grp_fu_2704_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_2704_p_din0),.grp_fu_2704_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_2704_p_din1),.grp_fu_2704_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_2704_p_opcode),.grp_fu_2704_p_dout0(grp_fu_176_p_dout0),.grp_fu_2704_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_2704_p_ce),.grp_fu_860_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_860_p_din0),.grp_fu_860_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_860_p_din1),.grp_fu_860_p_dout0(grp_fu_180_p_dout0),.grp_fu_860_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_860_p_ce),.grp_fu_864_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_864_p_din0),.grp_fu_864_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_864_p_din1),.grp_fu_864_p_dout0(grp_fu_184_p_dout0),.grp_fu_864_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_864_p_ce),.grp_fu_868_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_868_p_din0),.grp_fu_868_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_868_p_din1),.grp_fu_868_p_dout0(grp_fu_868_p2),.grp_fu_868_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_868_p_ce),.grp_fu_872_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_872_p_din0),.grp_fu_872_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_872_p_din1),.grp_fu_872_p_dout0(grp_fu_872_p2),.grp_fu_872_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_872_p_ce),.grp_fu_876_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_876_p_din0),.grp_fu_876_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_876_p_din1),.grp_fu_876_p_dout0(grp_fu_876_p2),.grp_fu_876_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_876_p_ce),.grp_fu_880_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_880_p_din0),.grp_fu_880_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_880_p_din1),.grp_fu_880_p_dout0(grp_fu_880_p2),.grp_fu_880_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_880_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U50(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_868_p0),.din1(grp_fu_868_p1),.ce(grp_fu_868_ce),.dout(grp_fu_868_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U51(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_872_p0),.din1(grp_fu_872_p1),.ce(grp_fu_872_ce),.dout(grp_fu_872_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U52(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_876_p0),.din1(grp_fu_876_p1),.ce(grp_fu_876_ce),.dout(grp_fu_876_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U53(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_880_p0),.din1(grp_fu_880_p1),.ce(grp_fu_880_ce),.dout(grp_fu_880_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U54(.clk(ap_clk),.reset(ap_rst),.din0(v30_reg_2508),.din1(v113),.ce(1'b1),.dout(grp_fu_884_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U55(.clk(ap_clk),.reset(ap_rst),.din0(v32_reg_2593),.din1(v113),.ce(1'b1),.dout(grp_fu_888_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U56(.clk(ap_clk),.reset(ap_rst),.din0(v34_reg_2598),.din1(v113),.ce(1'b1),.dout(grp_fu_892_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U57(.din0(v_fu_1141_p2),.din1(v_fu_1141_p4),.din2(v_fu_1141_p6),.din3(v_fu_1141_p8),.din4(v_fu_1141_p10),.din5(v_fu_1141_p12),.din6(v_fu_1141_p14),.din7(v_fu_1141_p16),.def(v_fu_1141_p17),.sel(trunc_ln168_reg_2084),.dout(v_fu_1141_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U58(.din0(v20_fu_1254_p2),.din1(v20_fu_1254_p4),.din2(v20_fu_1254_p6),.din3(v20_fu_1254_p8),.din4(v20_fu_1254_p10),.din5(v20_fu_1254_p12),.din6(v20_fu_1254_p14),.din7(v20_fu_1254_p16),.def(v20_fu_1254_p17),.sel(trunc_ln168_reg_2084),.dout(v20_fu_1254_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U59(.din0(v22_fu_1325_p2),.din1(v22_fu_1325_p4),.din2(v22_fu_1325_p6),.din3(v22_fu_1325_p8),.din4(v22_fu_1325_p10),.din5(v22_fu_1325_p12),.din6(v22_fu_1325_p14),.din7(v22_fu_1325_p16),.def(v22_fu_1325_p17),.sel(trunc_ln168_reg_2084),.dout(v22_fu_1325_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U60(.din0(v24_fu_1418_p2),.din1(v24_fu_1418_p4),.din2(v24_fu_1418_p6),.din3(v24_fu_1418_p8),.din4(v24_fu_1418_p10),.din5(v24_fu_1418_p12),.din6(v24_fu_1418_p14),.din7(v24_fu_1418_p16),.def(v24_fu_1418_p17),.sel(trunc_ln168_reg_2084),.dout(v24_fu_1418_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U61(.din0(v26_fu_1489_p2),.din1(v26_fu_1489_p4),.din2(v26_fu_1489_p6),.din3(v26_fu_1489_p8),.din4(v26_fu_1489_p10),.din5(v26_fu_1489_p12),.din6(v26_fu_1489_p14),.din7(v26_fu_1489_p16),.def(v26_fu_1489_p17),.sel(trunc_ln168_reg_2084),.dout(v26_fu_1489_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U62(.din0(v28_fu_1582_p2),.din1(v28_fu_1582_p4),.din2(v28_fu_1582_p6),.din3(v28_fu_1582_p8),.din4(v28_fu_1582_p10),.din5(v28_fu_1582_p12),.din6(v28_fu_1582_p14),.din7(v28_fu_1582_p16),.def(v28_fu_1582_p17),.sel(trunc_ln168_reg_2084),.dout(v28_fu_1582_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U63(.din0(v30_fu_1653_p2),.din1(v30_fu_1653_p4),.din2(v30_fu_1653_p6),.din3(v30_fu_1653_p8),.din4(v30_fu_1653_p10),.din5(v30_fu_1653_p12),.din6(v30_fu_1653_p14),.din7(v30_fu_1653_p16),.def(v30_fu_1653_p17),.sel(trunc_ln168_reg_2084),.dout(v30_fu_1653_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U64(.din0(v32_fu_1746_p2),.din1(v32_fu_1746_p4),.din2(v32_fu_1746_p6),.din3(v32_fu_1746_p8),.din4(v32_fu_1746_p10),.din5(v32_fu_1746_p12),.din6(v32_fu_1746_p14),.din7(v32_fu_1746_p16),.def(v32_fu_1746_p17),.sel(trunc_ln168_reg_2084),.dout(v32_fu_1746_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U65(.din0(v34_fu_1817_p2),.din1(v34_fu_1817_p4),.din2(v34_fu_1817_p6),.din3(v34_fu_1817_p8),.din4(v34_fu_1817_p10),.din5(v34_fu_1817_p12),.din6(v34_fu_1817_p14),.din7(v34_fu_1817_p16),.def(v34_fu_1817_p17),.sel(trunc_ln168_reg_2084),.dout(v34_fu_1817_p19));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U66(.din0(mul_ln171_fu_1874_p0),.din1(mul_ln171_fu_1874_p1),.dout(mul_ln171_fu_1874_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U67(.din0(mul_ln186_fu_1883_p0),.din1(mul_ln186_fu_1883_p1),.dout(mul_ln186_fu_1883_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U68(.din0(mul_ln199_fu_1892_p0),.din1(mul_ln199_fu_1892_p1),.dout(mul_ln199_fu_1892_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U69(.din0(mul_ln212_fu_1901_p0),.din1(mul_ln212_fu_1901_p1),.dout(mul_ln212_fu_1901_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U70(.din0(mul_ln225_fu_1910_p0),.din1(mul_ln225_fu_1910_p1),.dout(mul_ln225_fu_1910_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U71(.din0(mul_ln238_fu_1919_p0),.din1(mul_ln238_fu_1919_p1),.dout(mul_ln238_fu_1919_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U72(.din0(mul_ln251_fu_1928_p0),.din1(mul_ln251_fu_1928_p1),.dout(mul_ln251_fu_1928_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U73(.din0(mul_ln264_fu_1937_p0),.din1(mul_ln264_fu_1937_p1),.dout(mul_ln264_fu_1937_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U74(.din0(mul_ln277_fu_1953_p0),.din1(mul_ln277_fu_1953_p1),.dout(mul_ln277_fu_1953_p2));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U75(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1965_p0),.din1(grp_fu_1965_p1),.din2(grp_fu_1965_p2),.ce(1'b1),.dout(grp_fu_1965_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U76(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1973_p0),.din1(grp_fu_1973_p1),.din2(grp_fu_1973_p2),.ce(1'b1),.dout(grp_fu_1973_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U77(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1981_p0),.din1(grp_fu_1981_p1),.din2(grp_fu_1981_p2),.ce(1'b1),.dout(grp_fu_1981_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U78(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1989_p0),.din1(grp_fu_1989_p1),.din2(grp_fu_1989_p2),.ce(1'b1),.dout(grp_fu_1989_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U79(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1997_p0),.din1(grp_fu_1997_p1),.din2(grp_fu_1997_p2),.ce(1'b1),.dout(grp_fu_1997_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U80(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2005_p0),.din1(grp_fu_2005_p1),.din2(grp_fu_2005_p2),.ce(1'b1),.dout(grp_fu_2005_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U81(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2013_p0),.din1(grp_fu_2013_p1),.din2(grp_fu_2013_p2),.ce(1'b1),.dout(grp_fu_2013_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U82(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2021_p0),.din1(grp_fu_2021_p1),.din2(grp_fu_2021_p2),.ce(1'b1),.dout(grp_fu_2021_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 5 ),.din3_WIDTH( 5 ),.dout_WIDTH( 13 ))
ama_addmuladd_8ns_4ns_5ns_5ns_13_4_1_U83(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_804),.din1(grp_fu_2029_p1),.din2(grp_fu_2029_p2),.din3(grp_fu_2029_p3),.ce(1'b1),.dout(grp_fu_2029_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_134 <= 16'd0;
    end else if (((icmp_ln169_fu_954_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_134 <= add_ln168_1_reg_2071;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_138 <= 8'd0;
    end else if (((icmp_ln169_fu_954_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_138 <= add_ln168_reg_2079;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_804 <= add_ln169_reg_2123;
    end else if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_918_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v115_reg_804 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_2071 <= add_ln168_1_fu_912_p2;
        add_ln168_reg_2079 <= add_ln168_fu_924_p2;
        cmp11_reg_2110 <= cmp11_fu_948_p2;
        phi_mul_load_reg_2066 <= phi_mul_fu_134;
        trunc_ln168_reg_2084 <= trunc_ln168_fu_930_p1;
        zext_ln168_reg_2097[4 : 0] <= zext_ln168_fu_944_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_2123 <= add_ln169_fu_964_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        empty_113_reg_2699 <= empty_113_fu_1959_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_2609 <= mul_ln171_fu_1874_p2;
        mul_ln186_reg_2619 <= mul_ln186_fu_1883_p2;
        mul_ln199_reg_2629 <= mul_ln199_fu_1892_p2;
        mul_ln212_reg_2639 <= mul_ln212_fu_1901_p2;
        mul_ln225_reg_2649 <= mul_ln225_fu_1910_p2;
        mul_ln238_reg_2659 <= mul_ln238_fu_1919_p2;
        mul_ln251_reg_2669 <= mul_ln251_fu_1928_p2;
        mul_ln264_reg_2679 <= mul_ln264_fu_1937_p2;
        mul_ln277_reg_2689 <= mul_ln277_fu_1953_p2;
        trunc_ln169_reg_2603 <= trunc_ln169_fu_1856_p1;
        v19_reg_2614 <= grp_fu_180_p_dout0;
        v21_reg_2624 <= grp_fu_184_p_dout0;
        v23_reg_2634 <= grp_fu_868_p2;
        v25_reg_2644 <= grp_fu_872_p2;
        v27_reg_2654 <= grp_fu_876_p2;
        v29_reg_2664 <= grp_fu_880_p2;
        v31_reg_2674 <= grp_fu_884_p2;
        v33_reg_2684 <= grp_fu_888_p2;
        v35_reg_2694 <= grp_fu_892_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_1_reg_2143 <= {{empty_35_fu_998_p2[7:3]}};
        tmp_reg_2133 <= {{empty_24_fu_978_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_2_reg_2153 <= {{empty_46_fu_1018_p2[7:3]}};
        tmp_3_reg_2163 <= {{empty_57_fu_1038_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_4_reg_2213 <= {{empty_68_fu_1069_p2[7:3]}};
        tmp_5_reg_2223 <= {{empty_79_fu_1089_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_6_reg_2318 <= {{empty_90_fu_1202_p2[7:3]}};
        v_reg_2228 <= v_fu_1141_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v20_reg_2323 <= v20_fu_1254_p19;
        v22_reg_2328 <= v22_fu_1325_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v24_reg_2413 <= v24_fu_1418_p19;
        v26_reg_2418 <= v26_fu_1489_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v28_reg_2503 <= v28_fu_1582_p19;
        v30_reg_2508 <= v30_fu_1653_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v32_reg_2593 <= v32_fu_1746_p19;
        v34_reg_2598 <= v34_fu_1817_p19;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (icmp_ln168_fu_918_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_918_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2704_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_2704_p_ce;
    end else begin
        grp_fu_2704_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_860_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_860_p_ce;
    end else begin
        grp_fu_860_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_860_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_860_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_860_p0 = v_reg_2228;
    end else begin
        grp_fu_860_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_860_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_860_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_860_p1 = v113;
    end else begin
        grp_fu_860_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_864_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_864_p_ce;
    end else begin
        grp_fu_864_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_864_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_864_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_864_p0 = v20_reg_2323;
    end else begin
        grp_fu_864_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_864_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_864_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_864_p1 = v113;
    end else begin
        grp_fu_864_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_868_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_868_p_ce;
    end else begin
        grp_fu_868_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_868_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_868_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_868_p0 = v22_reg_2328;
    end else begin
        grp_fu_868_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_868_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_868_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_868_p1 = v113;
    end else begin
        grp_fu_868_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_872_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_872_p_ce;
    end else begin
        grp_fu_872_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_872_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_872_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_872_p0 = v24_reg_2413;
    end else begin
        grp_fu_872_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_872_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_872_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_872_p1 = v113;
    end else begin
        grp_fu_872_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_876_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_876_p_ce;
    end else begin
        grp_fu_876_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_876_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_876_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_876_p0 = v26_reg_2418;
    end else begin
        grp_fu_876_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_876_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_876_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_876_p1 = v113;
    end else begin
        grp_fu_876_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_880_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_880_p_ce;
    end else begin
        grp_fu_880_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_880_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_880_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_880_p0 = v28_reg_2503;
    end else begin
        grp_fu_880_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_880_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_880_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_880_p1 = v113;
    end else begin
        grp_fu_880_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast1369_fu_1692_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast1367_fu_1528_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast1365_fu_1364_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast1364_fu_1191_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast1363_fu_1058_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast1370_fu_1703_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast1368_fu_1539_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast1366_fu_1375_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast_fu_1180_p1;
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
        v226_1_address0_local = p_cast1369_fu_1692_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast1367_fu_1528_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast1365_fu_1364_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast1364_fu_1191_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast1363_fu_1058_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast1370_fu_1703_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast1368_fu_1539_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast1366_fu_1375_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast_fu_1180_p1;
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
        v226_2_address0_local = p_cast1369_fu_1692_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address0_local = p_cast1367_fu_1528_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address0_local = p_cast1365_fu_1364_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address0_local = p_cast1364_fu_1191_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_2_address0_local = p_cast1363_fu_1058_p1;
    end else begin
        v226_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address1_local = p_cast1370_fu_1703_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address1_local = p_cast1368_fu_1539_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address1_local = p_cast1366_fu_1375_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address1_local = p_cast_fu_1180_p1;
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
        v226_3_address0_local = p_cast1369_fu_1692_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address0_local = p_cast1367_fu_1528_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address0_local = p_cast1365_fu_1364_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address0_local = p_cast1364_fu_1191_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_3_address0_local = p_cast1363_fu_1058_p1;
    end else begin
        v226_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address1_local = p_cast1370_fu_1703_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address1_local = p_cast1368_fu_1539_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address1_local = p_cast1366_fu_1375_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address1_local = p_cast_fu_1180_p1;
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
        v226_4_address0_local = p_cast1369_fu_1692_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_4_address0_local = p_cast1367_fu_1528_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_4_address0_local = p_cast1365_fu_1364_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_4_address0_local = p_cast1364_fu_1191_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_4_address0_local = p_cast1363_fu_1058_p1;
    end else begin
        v226_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_4_address1_local = p_cast1370_fu_1703_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_4_address1_local = p_cast1368_fu_1539_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_4_address1_local = p_cast1366_fu_1375_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_4_address1_local = p_cast_fu_1180_p1;
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
        v226_5_address0_local = p_cast1369_fu_1692_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_5_address0_local = p_cast1367_fu_1528_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_5_address0_local = p_cast1365_fu_1364_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_5_address0_local = p_cast1364_fu_1191_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_5_address0_local = p_cast1363_fu_1058_p1;
    end else begin
        v226_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_5_address1_local = p_cast1370_fu_1703_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_5_address1_local = p_cast1368_fu_1539_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_5_address1_local = p_cast1366_fu_1375_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_5_address1_local = p_cast_fu_1180_p1;
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
        v226_6_address0_local = p_cast1369_fu_1692_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_6_address0_local = p_cast1367_fu_1528_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_6_address0_local = p_cast1365_fu_1364_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_6_address0_local = p_cast1364_fu_1191_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_6_address0_local = p_cast1363_fu_1058_p1;
    end else begin
        v226_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_6_address1_local = p_cast1370_fu_1703_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_6_address1_local = p_cast1368_fu_1539_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_6_address1_local = p_cast1366_fu_1375_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_6_address1_local = p_cast_fu_1180_p1;
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
        v226_7_address0_local = p_cast1369_fu_1692_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_7_address0_local = p_cast1367_fu_1528_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_7_address0_local = p_cast1365_fu_1364_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_7_address0_local = p_cast1364_fu_1191_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_7_address0_local = p_cast1363_fu_1058_p1;
    end else begin
        v226_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_7_address1_local = p_cast1370_fu_1703_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_7_address1_local = p_cast1368_fu_1539_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_7_address1_local = p_cast1366_fu_1375_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_7_address1_local = p_cast_fu_1180_p1;
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
    if (((icmp_ln168_fu_918_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_918_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_918_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_918_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_954_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln168_1_fu_912_p2 = (phi_mul_fu_134 + 16'd190);
assign add_ln168_fu_924_p2 = (v114_fu_138 + 8'd1);
assign add_ln169_fu_964_p2 = (v115_reg_804 + 8'd9);
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
    ap_block_state2 = ((icmp_ln168_fu_918_p2 == 1'd1) & (v236_full_n == 1'b0));
end
assign cmp11_fu_948_p2 = ((v114_fu_138 == 8'd0) ? 1'b1 : 1'b0);
assign empty_104_fu_1943_p2 = (lshr_ln1_fu_1860_p4 + 5'd1);
assign empty_113_fu_1959_p2 = ((trunc_ln169_reg_2603 == 3'd7) ? 1'b1 : 1'b0);
assign empty_24_fu_978_p2 = (v115_reg_804 + 8'd1);
assign empty_35_fu_998_p2 = (v115_reg_804 + 8'd2);
assign empty_46_fu_1018_p2 = (v115_reg_804 + 8'd3);
assign empty_57_fu_1038_p2 = (v115_reg_804 + 8'd4);
assign empty_68_fu_1069_p2 = (v115_reg_804 + 8'd5);
assign empty_79_fu_1089_p2 = (v115_reg_804 + 8'd6);
assign empty_90_fu_1202_p2 = (v115_reg_804 + 8'd7);
assign grp_fu_176_p_ce = grp_fu_2704_ce;
assign grp_fu_176_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_2704_p_din0;
assign grp_fu_176_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_grp_fu_2704_p_din1;
assign grp_fu_176_p_opcode = 2'd0;
assign grp_fu_180_p_ce = grp_fu_860_ce;
assign grp_fu_180_p_din0 = grp_fu_860_p0;
assign grp_fu_180_p_din1 = grp_fu_860_p1;
assign grp_fu_184_p_ce = grp_fu_864_ce;
assign grp_fu_184_p_din0 = grp_fu_864_p0;
assign grp_fu_184_p_din1 = grp_fu_864_p1;
assign grp_fu_1965_p0 = grp_fu_1965_p00;
assign grp_fu_1965_p00 = v115_reg_804;
assign grp_fu_1965_p1 = 13'd27;
assign grp_fu_1965_p2 = zext_ln168_reg_2097;
assign grp_fu_1973_p0 = grp_fu_1973_p00;
assign grp_fu_1973_p00 = empty_24_fu_978_p2;
assign grp_fu_1973_p1 = 13'd27;
assign grp_fu_1973_p2 = zext_ln168_reg_2097;
assign grp_fu_1981_p0 = grp_fu_1981_p00;
assign grp_fu_1981_p00 = empty_35_fu_998_p2;
assign grp_fu_1981_p1 = 13'd27;
assign grp_fu_1981_p2 = zext_ln168_reg_2097;
assign grp_fu_1989_p0 = grp_fu_1989_p00;
assign grp_fu_1989_p00 = empty_46_fu_1018_p2;
assign grp_fu_1989_p1 = 13'd27;
assign grp_fu_1989_p2 = zext_ln168_reg_2097;
assign grp_fu_1997_p0 = grp_fu_1997_p00;
assign grp_fu_1997_p00 = empty_57_fu_1038_p2;
assign grp_fu_1997_p1 = 13'd27;
assign grp_fu_1997_p2 = zext_ln168_reg_2097;
assign grp_fu_2005_p0 = grp_fu_2005_p00;
assign grp_fu_2005_p00 = empty_68_fu_1069_p2;
assign grp_fu_2005_p1 = 13'd27;
assign grp_fu_2005_p2 = zext_ln168_reg_2097;
assign grp_fu_2013_p0 = grp_fu_2013_p00;
assign grp_fu_2013_p00 = empty_79_fu_1089_p2;
assign grp_fu_2013_p1 = 13'd27;
assign grp_fu_2013_p2 = zext_ln168_reg_2097;
assign grp_fu_2021_p0 = grp_fu_2021_p00;
assign grp_fu_2021_p00 = empty_90_fu_1202_p2;
assign grp_fu_2021_p1 = 13'd27;
assign grp_fu_2021_p2 = zext_ln168_reg_2097;
assign grp_fu_2029_p1 = 8'd8;
assign grp_fu_2029_p2 = 13'd27;
assign grp_fu_2029_p3 = zext_ln168_reg_2097;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_ap_start_reg;
assign icmp_ln168_fu_918_p2 = ((v114_fu_138 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_954_p2 = ((v115_reg_804 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_1860_p4 = {{v115_reg_804[7:3]}};
assign lshr_ln_fu_934_p4 = {{v114_fu_138[7:3]}};
assign mul_ln171_fu_1874_p0 = mul_ln171_fu_1874_p00;
assign mul_ln171_fu_1874_p00 = lshr_ln1_fu_1860_p4;
assign mul_ln171_fu_1874_p1 = 13'd190;
assign mul_ln186_fu_1883_p0 = mul_ln186_fu_1883_p00;
assign mul_ln186_fu_1883_p00 = tmp_reg_2133;
assign mul_ln186_fu_1883_p1 = 13'd190;
assign mul_ln199_fu_1892_p0 = mul_ln199_fu_1892_p00;
assign mul_ln199_fu_1892_p00 = tmp_1_reg_2143;
assign mul_ln199_fu_1892_p1 = 13'd190;
assign mul_ln212_fu_1901_p0 = mul_ln212_fu_1901_p00;
assign mul_ln212_fu_1901_p00 = tmp_2_reg_2153;
assign mul_ln212_fu_1901_p1 = 13'd190;
assign mul_ln225_fu_1910_p0 = mul_ln225_fu_1910_p00;
assign mul_ln225_fu_1910_p00 = tmp_3_reg_2163;
assign mul_ln225_fu_1910_p1 = 13'd190;
assign mul_ln238_fu_1919_p0 = mul_ln238_fu_1919_p00;
assign mul_ln238_fu_1919_p00 = tmp_4_reg_2213;
assign mul_ln238_fu_1919_p1 = 13'd190;
assign mul_ln251_fu_1928_p0 = mul_ln251_fu_1928_p00;
assign mul_ln251_fu_1928_p00 = tmp_5_reg_2223;
assign mul_ln251_fu_1928_p1 = 13'd190;
assign mul_ln264_fu_1937_p0 = mul_ln264_fu_1937_p00;
assign mul_ln264_fu_1937_p00 = tmp_6_reg_2318;
assign mul_ln264_fu_1937_p1 = 13'd190;
assign mul_ln277_fu_1953_p0 = mul_ln277_fu_1953_p00;
assign mul_ln277_fu_1953_p00 = empty_104_fu_1943_p2;
assign mul_ln277_fu_1953_p1 = 13'd190;
assign p_cast1363_fu_1058_p1 = grp_fu_1965_p3;
assign p_cast1364_fu_1191_p1 = grp_fu_1981_p3;
assign p_cast1365_fu_1364_p1 = grp_fu_1989_p3;
assign p_cast1366_fu_1375_p1 = grp_fu_1997_p3;
assign p_cast1367_fu_1528_p1 = grp_fu_2005_p3;
assign p_cast1368_fu_1539_p1 = grp_fu_2013_p3;
assign p_cast1369_fu_1692_p1 = grp_fu_2021_p3;
assign p_cast1370_fu_1703_p1 = grp_fu_2029_p4;
assign p_cast_fu_1180_p1 = grp_fu_1973_p3;
assign trunc_ln168_fu_930_p1 = v114_fu_138[2:0];
assign trunc_ln169_fu_1856_p1 = v115_reg_804[2:0];
assign v20_fu_1254_p10 = v226_4_q1;
assign v20_fu_1254_p12 = v226_5_q1;
assign v20_fu_1254_p14 = v226_6_q1;
assign v20_fu_1254_p16 = v226_7_q1;
assign v20_fu_1254_p17 = 'bx;
assign v20_fu_1254_p2 = v226_0_q1;
assign v20_fu_1254_p4 = v226_1_q1;
assign v20_fu_1254_p6 = v226_2_q1;
assign v20_fu_1254_p8 = v226_3_q1;
assign v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_address0;
assign v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_address1;
assign v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_ce0;
assign v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_ce1;
assign v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_d0;
assign v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_d1;
assign v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_we0;
assign v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_0_we1;
assign v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_address0;
assign v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_address1;
assign v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_ce0;
assign v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_ce1;
assign v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_d0;
assign v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_d1;
assign v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_we0;
assign v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_1_we1;
assign v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_address0;
assign v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_address1;
assign v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_ce0;
assign v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_ce1;
assign v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_d0;
assign v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_d1;
assign v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_we0;
assign v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_2_we1;
assign v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_address0;
assign v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_address1;
assign v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_ce0;
assign v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_ce1;
assign v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_d0;
assign v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_d1;
assign v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_we0;
assign v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_3_we1;
assign v225_4_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_address0;
assign v225_4_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_address1;
assign v225_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_ce0;
assign v225_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_ce1;
assign v225_4_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_d0;
assign v225_4_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_d1;
assign v225_4_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_we0;
assign v225_4_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_4_we1;
assign v225_5_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_address0;
assign v225_5_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_address1;
assign v225_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_ce0;
assign v225_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_ce1;
assign v225_5_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_d0;
assign v225_5_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_d1;
assign v225_5_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_we0;
assign v225_5_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_5_we1;
assign v225_6_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_address0;
assign v225_6_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_address1;
assign v225_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_ce0;
assign v225_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_ce1;
assign v225_6_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_d0;
assign v225_6_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_d1;
assign v225_6_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_we0;
assign v225_6_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_6_we1;
assign v225_7_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_address0;
assign v225_7_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_address1;
assign v225_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_ce0;
assign v225_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_ce1;
assign v225_7_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_d0;
assign v225_7_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_d1;
assign v225_7_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_we0;
assign v225_7_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v225_7_we1;
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
assign v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v227_address0;
assign v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v227_address1;
assign v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v227_ce0;
assign v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_816_v227_ce1;
assign v22_fu_1325_p10 = v226_4_q0;
assign v22_fu_1325_p12 = v226_5_q0;
assign v22_fu_1325_p14 = v226_6_q0;
assign v22_fu_1325_p16 = v226_7_q0;
assign v22_fu_1325_p17 = 'bx;
assign v22_fu_1325_p2 = v226_0_q0;
assign v22_fu_1325_p4 = v226_1_q0;
assign v22_fu_1325_p6 = v226_2_q0;
assign v22_fu_1325_p8 = v226_3_q0;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign v24_fu_1418_p10 = v226_4_q0;
assign v24_fu_1418_p12 = v226_5_q0;
assign v24_fu_1418_p14 = v226_6_q0;
assign v24_fu_1418_p16 = v226_7_q0;
assign v24_fu_1418_p17 = 'bx;
assign v24_fu_1418_p2 = v226_0_q0;
assign v24_fu_1418_p4 = v226_1_q0;
assign v24_fu_1418_p6 = v226_2_q0;
assign v24_fu_1418_p8 = v226_3_q0;
assign v26_fu_1489_p10 = v226_4_q1;
assign v26_fu_1489_p12 = v226_5_q1;
assign v26_fu_1489_p14 = v226_6_q1;
assign v26_fu_1489_p16 = v226_7_q1;
assign v26_fu_1489_p17 = 'bx;
assign v26_fu_1489_p2 = v226_0_q1;
assign v26_fu_1489_p4 = v226_1_q1;
assign v26_fu_1489_p6 = v226_2_q1;
assign v26_fu_1489_p8 = v226_3_q1;
assign v28_fu_1582_p10 = v226_4_q0;
assign v28_fu_1582_p12 = v226_5_q0;
assign v28_fu_1582_p14 = v226_6_q0;
assign v28_fu_1582_p16 = v226_7_q0;
assign v28_fu_1582_p17 = 'bx;
assign v28_fu_1582_p2 = v226_0_q0;
assign v28_fu_1582_p4 = v226_1_q0;
assign v28_fu_1582_p6 = v226_2_q0;
assign v28_fu_1582_p8 = v226_3_q0;
assign v30_fu_1653_p10 = v226_4_q1;
assign v30_fu_1653_p12 = v226_5_q1;
assign v30_fu_1653_p14 = v226_6_q1;
assign v30_fu_1653_p16 = v226_7_q1;
assign v30_fu_1653_p17 = 'bx;
assign v30_fu_1653_p2 = v226_0_q1;
assign v30_fu_1653_p4 = v226_1_q1;
assign v30_fu_1653_p6 = v226_2_q1;
assign v30_fu_1653_p8 = v226_3_q1;
assign v32_fu_1746_p10 = v226_4_q0;
assign v32_fu_1746_p12 = v226_5_q0;
assign v32_fu_1746_p14 = v226_6_q0;
assign v32_fu_1746_p16 = v226_7_q0;
assign v32_fu_1746_p17 = 'bx;
assign v32_fu_1746_p2 = v226_0_q0;
assign v32_fu_1746_p4 = v226_1_q0;
assign v32_fu_1746_p6 = v226_2_q0;
assign v32_fu_1746_p8 = v226_3_q0;
assign v34_fu_1817_p10 = v226_4_q1;
assign v34_fu_1817_p12 = v226_5_q1;
assign v34_fu_1817_p14 = v226_6_q1;
assign v34_fu_1817_p16 = v226_7_q1;
assign v34_fu_1817_p17 = 'bx;
assign v34_fu_1817_p2 = v226_0_q1;
assign v34_fu_1817_p4 = v226_1_q1;
assign v34_fu_1817_p6 = v226_2_q1;
assign v34_fu_1817_p8 = v226_3_q1;
assign v_fu_1141_p10 = v226_4_q0;
assign v_fu_1141_p12 = v226_5_q0;
assign v_fu_1141_p14 = v226_6_q0;
assign v_fu_1141_p16 = v226_7_q0;
assign v_fu_1141_p17 = 'bx;
assign v_fu_1141_p2 = v226_0_q0;
assign v_fu_1141_p4 = v226_1_q0;
assign v_fu_1141_p6 = v226_2_q0;
assign v_fu_1141_p8 = v226_3_q0;
assign zext_ln168_fu_944_p1 = lshr_ln_fu_934_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_2097[12:5] <= 8'b00000000;
end
endmodule 