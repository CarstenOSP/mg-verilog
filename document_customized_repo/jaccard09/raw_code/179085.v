module kernel_2mm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v218,v219,v220,v221,v222,v223,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_4_address0,v225_4_ce0,v225_4_we0,v225_4_d0,v225_4_q0,v225_4_address1,v225_4_ce1,v225_4_we1,v225_4_d1,v225_4_q1,v225_5_address0,v225_5_ce0,v225_5_we0,v225_5_d0,v225_5_q0,v225_5_address1,v225_5_ce1,v225_5_we1,v225_5_d1,v225_5_q1,v225_6_address0,v225_6_ce0,v225_6_we0,v225_6_d0,v225_6_q0,v225_6_address1,v225_6_ce1,v225_6_we1,v225_6_d1,v225_6_q1,v225_7_address0,v225_7_ce0,v225_7_we0,v225_7_d0,v225_7_q0,v225_7_address1,v225_7_ce1,v225_7_we1,v225_7_d1,v225_7_q1,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v226_2_address0,v226_2_ce0,v226_2_q0,v226_2_address1,v226_2_ce1,v226_2_q1,v226_3_address0,v226_3_ce0,v226_3_q0,v226_3_address1,v226_3_ce1,v226_3_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v228_4_address0,v228_4_ce0,v228_4_q0,v228_4_address1,v228_4_ce1,v228_4_q1,v228_5_address0,v228_5_ce0,v228_5_q0,v228_5_address1,v228_5_ce1,v228_5_q1,v228_6_address0,v228_6_ce0,v228_6_q0,v228_6_address1,v228_6_ce1,v228_6_q1,v228_7_address0,v228_7_ce0,v228_7_q0,v228_7_address1,v228_7_ce1,v228_7_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_4_address0,v229_4_ce0,v229_4_we0,v229_4_d0,v229_4_q0,v229_4_address1,v229_4_ce1,v229_4_we1,v229_4_d1,v229_4_q1,v229_5_address0,v229_5_ce0,v229_5_we0,v229_5_d0,v229_5_q0,v229_5_address1,v229_5_ce1,v229_5_we1,v229_5_d1,v229_5_q1,v229_6_address0,v229_6_ce0,v229_6_we0,v229_6_d0,v229_6_q0,v229_6_address1,v229_6_ce1,v229_6_we1,v229_6_d1,v229_6_q1,v229_7_address0,v229_7_ce0,v229_7_we0,v229_7_d0,v229_7_q0,v229_7_address1,v229_7_ce1,v229_7_we1,v229_7_d1,v229_7_q1); 
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] v218;
input  [31:0] v219;
input  [31:0] v220;
input  [31:0] v221;
input  [31:0] v222;
input  [31:0] v223;
output  [15:0] v224_address0;
output   v224_ce0;
input  [31:0] v224_q0;
output  [15:0] v224_address1;
output   v224_ce1;
input  [31:0] v224_q1;
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
output  [13:0] v226_0_address0;
output   v226_0_ce0;
input  [31:0] v226_0_q0;
output  [13:0] v226_0_address1;
output   v226_0_ce1;
input  [31:0] v226_0_q1;
output  [13:0] v226_1_address0;
output   v226_1_ce0;
input  [31:0] v226_1_q0;
output  [13:0] v226_1_address1;
output   v226_1_ce1;
input  [31:0] v226_1_q1;
output  [13:0] v226_2_address0;
output   v226_2_ce0;
input  [31:0] v226_2_q0;
output  [13:0] v226_2_address1;
output   v226_2_ce1;
input  [31:0] v226_2_q1;
output  [13:0] v226_3_address0;
output   v226_3_ce0;
input  [31:0] v226_3_q0;
output  [13:0] v226_3_address1;
output   v226_3_ce1;
input  [31:0] v226_3_q1;
output  [15:0] v227_address0;
output   v227_ce0;
input  [31:0] v227_q0;
output  [15:0] v227_address1;
output   v227_ce1;
input  [31:0] v227_q1;
output  [12:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [12:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [12:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [12:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
output  [12:0] v228_2_address0;
output   v228_2_ce0;
input  [31:0] v228_2_q0;
output  [12:0] v228_2_address1;
output   v228_2_ce1;
input  [31:0] v228_2_q1;
output  [12:0] v228_3_address0;
output   v228_3_ce0;
input  [31:0] v228_3_q0;
output  [12:0] v228_3_address1;
output   v228_3_ce1;
input  [31:0] v228_3_q1;
output  [12:0] v228_4_address0;
output   v228_4_ce0;
input  [31:0] v228_4_q0;
output  [12:0] v228_4_address1;
output   v228_4_ce1;
input  [31:0] v228_4_q1;
output  [12:0] v228_5_address0;
output   v228_5_ce0;
input  [31:0] v228_5_q0;
output  [12:0] v228_5_address1;
output   v228_5_ce1;
input  [31:0] v228_5_q1;
output  [12:0] v228_6_address0;
output   v228_6_ce0;
input  [31:0] v228_6_q0;
output  [12:0] v228_6_address1;
output   v228_6_ce1;
input  [31:0] v228_6_q1;
output  [12:0] v228_7_address0;
output   v228_7_ce0;
input  [31:0] v228_7_q0;
output  [12:0] v228_7_address1;
output   v228_7_ce1;
input  [31:0] v228_7_q1;
output  [12:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [12:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
output  [12:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [12:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
output  [12:0] v229_2_address0;
output   v229_2_ce0;
output   v229_2_we0;
output  [31:0] v229_2_d0;
input  [31:0] v229_2_q0;
output  [12:0] v229_2_address1;
output   v229_2_ce1;
output   v229_2_we1;
output  [31:0] v229_2_d1;
input  [31:0] v229_2_q1;
output  [12:0] v229_3_address0;
output   v229_3_ce0;
output   v229_3_we0;
output  [31:0] v229_3_d0;
input  [31:0] v229_3_q0;
output  [12:0] v229_3_address1;
output   v229_3_ce1;
output   v229_3_we1;
output  [31:0] v229_3_d1;
input  [31:0] v229_3_q1;
output  [12:0] v229_4_address0;
output   v229_4_ce0;
output   v229_4_we0;
output  [31:0] v229_4_d0;
input  [31:0] v229_4_q0;
output  [12:0] v229_4_address1;
output   v229_4_ce1;
output   v229_4_we1;
output  [31:0] v229_4_d1;
input  [31:0] v229_4_q1;
output  [12:0] v229_5_address0;
output   v229_5_ce0;
output   v229_5_we0;
output  [31:0] v229_5_d0;
input  [31:0] v229_5_q0;
output  [12:0] v229_5_address1;
output   v229_5_ce1;
output   v229_5_we1;
output  [31:0] v229_5_d1;
input  [31:0] v229_5_q1;
output  [12:0] v229_6_address0;
output   v229_6_ce0;
output   v229_6_we0;
output  [31:0] v229_6_d0;
input  [31:0] v229_6_q0;
output  [12:0] v229_6_address1;
output   v229_6_ce1;
output   v229_6_we1;
output  [31:0] v229_6_d1;
input  [31:0] v229_6_q1;
output  [12:0] v229_7_address0;
output   v229_7_ce0;
output   v229_7_we0;
output  [31:0] v229_7_d0;
input  [31:0] v229_7_q0;
output  [12:0] v229_7_address1;
output   v229_7_ce1;
output   v229_7_we1;
output  [31:0] v229_7_d1;
input  [31:0] v229_7_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state3;
wire    grp_kernel_2mm_node1_fu_126_ap_start;
wire    grp_kernel_2mm_node1_fu_126_ap_done;
wire    grp_kernel_2mm_node1_fu_126_ap_idle;
wire    grp_kernel_2mm_node1_fu_126_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_fu_126_v226_0_address0;
wire    grp_kernel_2mm_node1_fu_126_v226_0_ce0;
wire   [13:0] grp_kernel_2mm_node1_fu_126_v226_0_address1;
wire    grp_kernel_2mm_node1_fu_126_v226_0_ce1;
wire   [13:0] grp_kernel_2mm_node1_fu_126_v226_1_address0;
wire    grp_kernel_2mm_node1_fu_126_v226_1_ce0;
wire   [13:0] grp_kernel_2mm_node1_fu_126_v226_1_address1;
wire    grp_kernel_2mm_node1_fu_126_v226_1_ce1;
wire   [13:0] grp_kernel_2mm_node1_fu_126_v226_2_address0;
wire    grp_kernel_2mm_node1_fu_126_v226_2_ce0;
wire   [13:0] grp_kernel_2mm_node1_fu_126_v226_2_address1;
wire    grp_kernel_2mm_node1_fu_126_v226_2_ce1;
wire   [13:0] grp_kernel_2mm_node1_fu_126_v226_3_address0;
wire    grp_kernel_2mm_node1_fu_126_v226_3_ce0;
wire   [13:0] grp_kernel_2mm_node1_fu_126_v226_3_address1;
wire    grp_kernel_2mm_node1_fu_126_v226_3_ce1;
wire   [15:0] grp_kernel_2mm_node1_fu_126_v227_address0;
wire    grp_kernel_2mm_node1_fu_126_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_fu_126_v227_address1;
wire    grp_kernel_2mm_node1_fu_126_v227_ce1;
wire   [0:0] grp_kernel_2mm_node1_fu_126_v236_din;
wire    grp_kernel_2mm_node1_fu_126_v236_write;
wire   [12:0] grp_kernel_2mm_node1_fu_126_v225_0_address0;
wire    grp_kernel_2mm_node1_fu_126_v225_0_ce0;
wire    grp_kernel_2mm_node1_fu_126_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_v225_0_d0;
wire   [12:0] grp_kernel_2mm_node1_fu_126_v225_0_address1;
wire    grp_kernel_2mm_node1_fu_126_v225_0_ce1;
wire    grp_kernel_2mm_node1_fu_126_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_fu_126_v225_0_d1;
wire   [12:0] grp_kernel_2mm_node1_fu_126_v225_1_address0;
wire    grp_kernel_2mm_node1_fu_126_v225_1_ce0;
wire    grp_kernel_2mm_node1_fu_126_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_v225_1_d0;
wire   [12:0] grp_kernel_2mm_node1_fu_126_v225_1_address1;
wire    grp_kernel_2mm_node1_fu_126_v225_1_ce1;
wire    grp_kernel_2mm_node1_fu_126_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_fu_126_v225_1_d1;
wire   [12:0] grp_kernel_2mm_node1_fu_126_v225_2_address0;
wire    grp_kernel_2mm_node1_fu_126_v225_2_ce0;
wire    grp_kernel_2mm_node1_fu_126_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_v225_2_d0;
wire   [12:0] grp_kernel_2mm_node1_fu_126_v225_2_address1;
wire    grp_kernel_2mm_node1_fu_126_v225_2_ce1;
wire    grp_kernel_2mm_node1_fu_126_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_fu_126_v225_2_d1;
wire   [12:0] grp_kernel_2mm_node1_fu_126_v225_3_address0;
wire    grp_kernel_2mm_node1_fu_126_v225_3_ce0;
wire    grp_kernel_2mm_node1_fu_126_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_v225_3_d0;
wire   [12:0] grp_kernel_2mm_node1_fu_126_v225_3_address1;
wire    grp_kernel_2mm_node1_fu_126_v225_3_ce1;
wire    grp_kernel_2mm_node1_fu_126_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_fu_126_v225_3_d1;
wire   [12:0] grp_kernel_2mm_node1_fu_126_v225_4_address0;
wire    grp_kernel_2mm_node1_fu_126_v225_4_ce0;
wire    grp_kernel_2mm_node1_fu_126_v225_4_we0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_v225_4_d0;
wire   [12:0] grp_kernel_2mm_node1_fu_126_v225_4_address1;
wire    grp_kernel_2mm_node1_fu_126_v225_4_ce1;
wire    grp_kernel_2mm_node1_fu_126_v225_4_we1;
wire   [31:0] grp_kernel_2mm_node1_fu_126_v225_4_d1;
wire   [12:0] grp_kernel_2mm_node1_fu_126_v225_5_address0;
wire    grp_kernel_2mm_node1_fu_126_v225_5_ce0;
wire    grp_kernel_2mm_node1_fu_126_v225_5_we0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_v225_5_d0;
wire   [12:0] grp_kernel_2mm_node1_fu_126_v225_5_address1;
wire    grp_kernel_2mm_node1_fu_126_v225_5_ce1;
wire    grp_kernel_2mm_node1_fu_126_v225_5_we1;
wire   [31:0] grp_kernel_2mm_node1_fu_126_v225_5_d1;
wire   [12:0] grp_kernel_2mm_node1_fu_126_v225_6_address0;
wire    grp_kernel_2mm_node1_fu_126_v225_6_ce0;
wire    grp_kernel_2mm_node1_fu_126_v225_6_we0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_v225_6_d0;
wire   [12:0] grp_kernel_2mm_node1_fu_126_v225_6_address1;
wire    grp_kernel_2mm_node1_fu_126_v225_6_ce1;
wire    grp_kernel_2mm_node1_fu_126_v225_6_we1;
wire   [31:0] grp_kernel_2mm_node1_fu_126_v225_6_d1;
wire   [12:0] grp_kernel_2mm_node1_fu_126_v225_7_address0;
wire    grp_kernel_2mm_node1_fu_126_v225_7_ce0;
wire    grp_kernel_2mm_node1_fu_126_v225_7_we0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_v225_7_d0;
wire   [12:0] grp_kernel_2mm_node1_fu_126_v225_7_address1;
wire    grp_kernel_2mm_node1_fu_126_v225_7_ce1;
wire    grp_kernel_2mm_node1_fu_126_v225_7_we1;
wire   [31:0] grp_kernel_2mm_node1_fu_126_v225_7_d1;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_216_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_216_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_216_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_220_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_220_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_220_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_224_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_224_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_224_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_228_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_228_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_228_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_232_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_232_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_232_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_236_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_236_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_236_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_240_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_240_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_240_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_244_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_244_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_244_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_248_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_248_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_248_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_252_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_252_p_din1;
wire   [1:0] grp_kernel_2mm_node1_fu_126_grp_fu_252_p_opcode;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_252_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_256_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_256_p_din1;
wire   [1:0] grp_kernel_2mm_node1_fu_126_grp_fu_256_p_opcode;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_256_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_260_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_260_p_din1;
wire   [1:0] grp_kernel_2mm_node1_fu_126_grp_fu_260_p_opcode;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_260_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_264_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_264_p_din1;
wire   [1:0] grp_kernel_2mm_node1_fu_126_grp_fu_264_p_opcode;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_264_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_268_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_268_p_din1;
wire   [1:0] grp_kernel_2mm_node1_fu_126_grp_fu_268_p_opcode;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_268_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_272_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_272_p_din1;
wire   [1:0] grp_kernel_2mm_node1_fu_126_grp_fu_272_p_opcode;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_272_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_276_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_276_p_din1;
wire   [1:0] grp_kernel_2mm_node1_fu_126_grp_fu_276_p_opcode;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_276_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_280_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_280_p_din1;
wire   [1:0] grp_kernel_2mm_node1_fu_126_grp_fu_280_p_opcode;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_280_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_284_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_284_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_284_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_288_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_288_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_288_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_292_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_292_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_292_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_296_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_296_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_296_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_300_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_300_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_300_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_304_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_304_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_304_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_308_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_308_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_308_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_312_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_312_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_312_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_316_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_316_p_din1;
wire   [1:0] grp_kernel_2mm_node1_fu_126_grp_fu_316_p_opcode;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_316_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_320_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_320_p_din1;
wire   [1:0] grp_kernel_2mm_node1_fu_126_grp_fu_320_p_opcode;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_320_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_324_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_324_p_din1;
wire   [1:0] grp_kernel_2mm_node1_fu_126_grp_fu_324_p_opcode;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_324_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_328_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_328_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_328_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_332_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_332_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_332_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_336_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_336_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_336_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_340_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_126_grp_fu_340_p_din1;
wire    grp_kernel_2mm_node1_fu_126_grp_fu_340_p_ce;
wire    grp_kernel_2mm_node0_fu_159_ap_start;
wire    grp_kernel_2mm_node0_fu_159_ap_done;
wire    grp_kernel_2mm_node0_fu_159_ap_idle;
wire    grp_kernel_2mm_node0_fu_159_ap_ready;
wire    grp_kernel_2mm_node0_fu_159_v236_read;
wire   [15:0] grp_kernel_2mm_node0_fu_159_v224_address0;
wire    grp_kernel_2mm_node0_fu_159_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_fu_159_v224_address1;
wire    grp_kernel_2mm_node0_fu_159_v224_ce1;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v228_0_address0;
wire    grp_kernel_2mm_node0_fu_159_v228_0_ce0;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v228_0_address1;
wire    grp_kernel_2mm_node0_fu_159_v228_0_ce1;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v228_1_address0;
wire    grp_kernel_2mm_node0_fu_159_v228_1_ce0;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v228_1_address1;
wire    grp_kernel_2mm_node0_fu_159_v228_1_ce1;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v228_2_address0;
wire    grp_kernel_2mm_node0_fu_159_v228_2_ce0;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v228_2_address1;
wire    grp_kernel_2mm_node0_fu_159_v228_2_ce1;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v228_3_address0;
wire    grp_kernel_2mm_node0_fu_159_v228_3_ce0;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v228_3_address1;
wire    grp_kernel_2mm_node0_fu_159_v228_3_ce1;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v228_4_address0;
wire    grp_kernel_2mm_node0_fu_159_v228_4_ce0;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v228_4_address1;
wire    grp_kernel_2mm_node0_fu_159_v228_4_ce1;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v228_5_address0;
wire    grp_kernel_2mm_node0_fu_159_v228_5_ce0;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v228_5_address1;
wire    grp_kernel_2mm_node0_fu_159_v228_5_ce1;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v228_6_address0;
wire    grp_kernel_2mm_node0_fu_159_v228_6_ce0;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v228_6_address1;
wire    grp_kernel_2mm_node0_fu_159_v228_6_ce1;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v228_7_address0;
wire    grp_kernel_2mm_node0_fu_159_v228_7_ce0;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v228_7_address1;
wire    grp_kernel_2mm_node0_fu_159_v228_7_ce1;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v229_0_address0;
wire    grp_kernel_2mm_node0_fu_159_v229_0_ce0;
wire    grp_kernel_2mm_node0_fu_159_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_v229_0_d0;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v229_0_address1;
wire    grp_kernel_2mm_node0_fu_159_v229_0_ce1;
wire    grp_kernel_2mm_node0_fu_159_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_fu_159_v229_0_d1;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v229_1_address0;
wire    grp_kernel_2mm_node0_fu_159_v229_1_ce0;
wire    grp_kernel_2mm_node0_fu_159_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_v229_1_d0;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v229_1_address1;
wire    grp_kernel_2mm_node0_fu_159_v229_1_ce1;
wire    grp_kernel_2mm_node0_fu_159_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_fu_159_v229_1_d1;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v229_2_address0;
wire    grp_kernel_2mm_node0_fu_159_v229_2_ce0;
wire    grp_kernel_2mm_node0_fu_159_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_v229_2_d0;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v229_2_address1;
wire    grp_kernel_2mm_node0_fu_159_v229_2_ce1;
wire    grp_kernel_2mm_node0_fu_159_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_fu_159_v229_2_d1;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v229_3_address0;
wire    grp_kernel_2mm_node0_fu_159_v229_3_ce0;
wire    grp_kernel_2mm_node0_fu_159_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_v229_3_d0;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v229_3_address1;
wire    grp_kernel_2mm_node0_fu_159_v229_3_ce1;
wire    grp_kernel_2mm_node0_fu_159_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_fu_159_v229_3_d1;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v229_4_address0;
wire    grp_kernel_2mm_node0_fu_159_v229_4_ce0;
wire    grp_kernel_2mm_node0_fu_159_v229_4_we0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_v229_4_d0;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v229_4_address1;
wire    grp_kernel_2mm_node0_fu_159_v229_4_ce1;
wire    grp_kernel_2mm_node0_fu_159_v229_4_we1;
wire   [31:0] grp_kernel_2mm_node0_fu_159_v229_4_d1;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v229_5_address0;
wire    grp_kernel_2mm_node0_fu_159_v229_5_ce0;
wire    grp_kernel_2mm_node0_fu_159_v229_5_we0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_v229_5_d0;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v229_5_address1;
wire    grp_kernel_2mm_node0_fu_159_v229_5_ce1;
wire    grp_kernel_2mm_node0_fu_159_v229_5_we1;
wire   [31:0] grp_kernel_2mm_node0_fu_159_v229_5_d1;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v229_6_address0;
wire    grp_kernel_2mm_node0_fu_159_v229_6_ce0;
wire    grp_kernel_2mm_node0_fu_159_v229_6_we0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_v229_6_d0;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v229_6_address1;
wire    grp_kernel_2mm_node0_fu_159_v229_6_ce1;
wire    grp_kernel_2mm_node0_fu_159_v229_6_we1;
wire   [31:0] grp_kernel_2mm_node0_fu_159_v229_6_d1;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v229_7_address0;
wire    grp_kernel_2mm_node0_fu_159_v229_7_ce0;
wire    grp_kernel_2mm_node0_fu_159_v229_7_we0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_v229_7_d0;
wire   [12:0] grp_kernel_2mm_node0_fu_159_v229_7_address1;
wire    grp_kernel_2mm_node0_fu_159_v229_7_ce1;
wire    grp_kernel_2mm_node0_fu_159_v229_7_we1;
wire   [31:0] grp_kernel_2mm_node0_fu_159_v229_7_d1;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_252_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_252_p_din1;
wire   [1:0] grp_kernel_2mm_node0_fu_159_grp_fu_252_p_opcode;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_252_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_256_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_256_p_din1;
wire   [1:0] grp_kernel_2mm_node0_fu_159_grp_fu_256_p_opcode;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_256_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_260_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_260_p_din1;
wire   [1:0] grp_kernel_2mm_node0_fu_159_grp_fu_260_p_opcode;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_260_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_264_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_264_p_din1;
wire   [1:0] grp_kernel_2mm_node0_fu_159_grp_fu_264_p_opcode;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_264_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_268_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_268_p_din1;
wire   [1:0] grp_kernel_2mm_node0_fu_159_grp_fu_268_p_opcode;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_268_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_272_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_272_p_din1;
wire   [1:0] grp_kernel_2mm_node0_fu_159_grp_fu_272_p_opcode;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_272_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_276_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_276_p_din1;
wire   [1:0] grp_kernel_2mm_node0_fu_159_grp_fu_276_p_opcode;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_276_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_280_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_280_p_din1;
wire   [1:0] grp_kernel_2mm_node0_fu_159_grp_fu_280_p_opcode;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_280_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_316_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_316_p_din1;
wire   [1:0] grp_kernel_2mm_node0_fu_159_grp_fu_316_p_opcode;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_316_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_320_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_320_p_din1;
wire   [1:0] grp_kernel_2mm_node0_fu_159_grp_fu_320_p_opcode;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_320_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_324_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_324_p_din1;
wire   [1:0] grp_kernel_2mm_node0_fu_159_grp_fu_324_p_opcode;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_324_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_284_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_284_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_284_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_288_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_288_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_288_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_292_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_292_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_292_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_296_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_296_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_296_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_300_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_300_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_300_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_304_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_304_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_304_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_308_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_308_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_308_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_312_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_312_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_312_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_328_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_328_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_328_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_332_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_332_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_332_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_336_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_336_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_336_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_340_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_340_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_340_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_216_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_216_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_216_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_220_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_220_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_220_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_224_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_224_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_224_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_228_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_228_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_228_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_232_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_232_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_232_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_236_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_236_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_236_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_240_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_240_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_240_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_244_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_244_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_244_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_248_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_159_grp_fu_248_p_din1;
wire    grp_kernel_2mm_node0_fu_159_grp_fu_248_p_ce;
reg    grp_kernel_2mm_node1_fu_126_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    v236_full_n;
reg    v236_write;
reg    grp_kernel_2mm_node0_fu_159_ap_start_reg;
wire   [0:0] v236_dout;
wire    v236_empty_n;
reg    v236_read;
wire    ap_CS_fsm_state4;
wire   [31:0] grp_fu_216_p2;
reg   [31:0] grp_fu_216_p0;
reg   [31:0] grp_fu_216_p1;
reg    grp_fu_216_ce;
wire   [31:0] grp_fu_220_p2;
reg   [31:0] grp_fu_220_p0;
reg   [31:0] grp_fu_220_p1;
reg    grp_fu_220_ce;
wire   [31:0] grp_fu_224_p2;
reg   [31:0] grp_fu_224_p0;
reg   [31:0] grp_fu_224_p1;
reg    grp_fu_224_ce;
wire   [31:0] grp_fu_228_p2;
reg   [31:0] grp_fu_228_p0;
reg   [31:0] grp_fu_228_p1;
reg    grp_fu_228_ce;
wire   [31:0] grp_fu_232_p2;
reg   [31:0] grp_fu_232_p0;
reg   [31:0] grp_fu_232_p1;
reg    grp_fu_232_ce;
wire   [31:0] grp_fu_236_p2;
reg   [31:0] grp_fu_236_p0;
reg   [31:0] grp_fu_236_p1;
reg    grp_fu_236_ce;
wire   [31:0] grp_fu_240_p2;
reg   [31:0] grp_fu_240_p0;
reg   [31:0] grp_fu_240_p1;
reg    grp_fu_240_ce;
wire   [31:0] grp_fu_244_p2;
reg   [31:0] grp_fu_244_p0;
reg   [31:0] grp_fu_244_p1;
reg    grp_fu_244_ce;
wire   [31:0] grp_fu_248_p2;
reg   [31:0] grp_fu_248_p0;
reg   [31:0] grp_fu_248_p1;
reg    grp_fu_248_ce;
wire   [31:0] grp_fu_252_p2;
reg   [31:0] grp_fu_252_p0;
reg   [31:0] grp_fu_252_p1;
reg    grp_fu_252_ce;
wire   [31:0] grp_fu_256_p2;
reg   [31:0] grp_fu_256_p0;
reg   [31:0] grp_fu_256_p1;
reg    grp_fu_256_ce;
wire   [31:0] grp_fu_260_p2;
reg   [31:0] grp_fu_260_p0;
reg   [31:0] grp_fu_260_p1;
reg    grp_fu_260_ce;
wire   [31:0] grp_fu_264_p2;
reg   [31:0] grp_fu_264_p0;
reg   [31:0] grp_fu_264_p1;
reg    grp_fu_264_ce;
wire   [31:0] grp_fu_268_p2;
reg   [31:0] grp_fu_268_p0;
reg   [31:0] grp_fu_268_p1;
reg    grp_fu_268_ce;
wire   [31:0] grp_fu_272_p2;
reg   [31:0] grp_fu_272_p0;
reg   [31:0] grp_fu_272_p1;
reg    grp_fu_272_ce;
wire   [31:0] grp_fu_276_p2;
reg   [31:0] grp_fu_276_p0;
reg   [31:0] grp_fu_276_p1;
reg    grp_fu_276_ce;
wire   [31:0] grp_fu_280_p2;
reg   [31:0] grp_fu_280_p0;
reg   [31:0] grp_fu_280_p1;
reg    grp_fu_280_ce;
wire   [31:0] grp_fu_284_p2;
reg   [31:0] grp_fu_284_p0;
reg   [31:0] grp_fu_284_p1;
reg    grp_fu_284_ce;
wire   [31:0] grp_fu_288_p2;
reg   [31:0] grp_fu_288_p0;
reg   [31:0] grp_fu_288_p1;
reg    grp_fu_288_ce;
wire   [31:0] grp_fu_292_p2;
reg   [31:0] grp_fu_292_p0;
reg   [31:0] grp_fu_292_p1;
reg    grp_fu_292_ce;
wire   [31:0] grp_fu_296_p2;
reg   [31:0] grp_fu_296_p0;
reg   [31:0] grp_fu_296_p1;
reg    grp_fu_296_ce;
wire   [31:0] grp_fu_300_p2;
reg   [31:0] grp_fu_300_p0;
reg   [31:0] grp_fu_300_p1;
reg    grp_fu_300_ce;
wire   [31:0] grp_fu_304_p2;
reg   [31:0] grp_fu_304_p0;
reg   [31:0] grp_fu_304_p1;
reg    grp_fu_304_ce;
wire   [31:0] grp_fu_308_p2;
reg   [31:0] grp_fu_308_p0;
reg   [31:0] grp_fu_308_p1;
reg    grp_fu_308_ce;
wire   [31:0] grp_fu_312_p2;
reg   [31:0] grp_fu_312_p0;
reg   [31:0] grp_fu_312_p1;
reg    grp_fu_312_ce;
wire   [31:0] grp_fu_316_p2;
reg   [31:0] grp_fu_316_p0;
reg   [31:0] grp_fu_316_p1;
reg    grp_fu_316_ce;
wire   [31:0] grp_fu_320_p2;
reg   [31:0] grp_fu_320_p0;
reg   [31:0] grp_fu_320_p1;
reg    grp_fu_320_ce;
wire   [31:0] grp_fu_324_p2;
reg   [31:0] grp_fu_324_p0;
reg   [31:0] grp_fu_324_p1;
reg    grp_fu_324_ce;
wire   [31:0] grp_fu_328_p2;
reg   [31:0] grp_fu_328_p0;
reg   [31:0] grp_fu_328_p1;
reg    grp_fu_328_ce;
wire   [31:0] grp_fu_332_p2;
reg   [31:0] grp_fu_332_p0;
reg   [31:0] grp_fu_332_p1;
reg    grp_fu_332_ce;
wire   [31:0] grp_fu_336_p2;
reg   [31:0] grp_fu_336_p0;
reg   [31:0] grp_fu_336_p1;
reg    grp_fu_336_ce;
wire   [31:0] grp_fu_340_p2;
reg   [31:0] grp_fu_340_p0;
reg   [31:0] grp_fu_340_p1;
reg    grp_fu_340_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_kernel_2mm_node1_fu_126_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_fu_159_ap_start_reg = 1'b0;
end
kernel_2mm_kernel_2mm_node1 grp_kernel_2mm_node1_fu_126(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_fu_126_ap_start),.ap_done(grp_kernel_2mm_node1_fu_126_ap_done),.ap_idle(grp_kernel_2mm_node1_fu_126_ap_idle),.ap_ready(grp_kernel_2mm_node1_fu_126_ap_ready),.v226_0_address0(grp_kernel_2mm_node1_fu_126_v226_0_address0),.v226_0_ce0(grp_kernel_2mm_node1_fu_126_v226_0_ce0),.v226_0_q0(v226_0_q0),.v226_0_address1(grp_kernel_2mm_node1_fu_126_v226_0_address1),.v226_0_ce1(grp_kernel_2mm_node1_fu_126_v226_0_ce1),.v226_0_q1(v226_0_q1),.v226_1_address0(grp_kernel_2mm_node1_fu_126_v226_1_address0),.v226_1_ce0(grp_kernel_2mm_node1_fu_126_v226_1_ce0),.v226_1_q0(v226_1_q0),.v226_1_address1(grp_kernel_2mm_node1_fu_126_v226_1_address1),.v226_1_ce1(grp_kernel_2mm_node1_fu_126_v226_1_ce1),.v226_1_q1(v226_1_q1),.v226_2_address0(grp_kernel_2mm_node1_fu_126_v226_2_address0),.v226_2_ce0(grp_kernel_2mm_node1_fu_126_v226_2_ce0),.v226_2_q0(v226_2_q0),.v226_2_address1(grp_kernel_2mm_node1_fu_126_v226_2_address1),.v226_2_ce1(grp_kernel_2mm_node1_fu_126_v226_2_ce1),.v226_2_q1(v226_2_q1),.v226_3_address0(grp_kernel_2mm_node1_fu_126_v226_3_address0),.v226_3_ce0(grp_kernel_2mm_node1_fu_126_v226_3_ce0),.v226_3_q0(v226_3_q0),.v226_3_address1(grp_kernel_2mm_node1_fu_126_v226_3_address1),.v226_3_ce1(grp_kernel_2mm_node1_fu_126_v226_3_ce1),.v226_3_q1(v226_3_q1),.v227_address0(grp_kernel_2mm_node1_fu_126_v227_address0),.v227_ce0(grp_kernel_2mm_node1_fu_126_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_fu_126_v227_address1),.v227_ce1(grp_kernel_2mm_node1_fu_126_v227_ce1),.v227_q1(v227_q1),.v236_din(grp_kernel_2mm_node1_fu_126_v236_din),.v236_full_n(v236_full_n),.v236_write(grp_kernel_2mm_node1_fu_126_v236_write),.v225_0_address0(grp_kernel_2mm_node1_fu_126_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_fu_126_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_fu_126_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_fu_126_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_fu_126_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_fu_126_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_fu_126_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_fu_126_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_fu_126_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_fu_126_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_fu_126_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_fu_126_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_fu_126_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_fu_126_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_fu_126_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_fu_126_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_2_address0(grp_kernel_2mm_node1_fu_126_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_fu_126_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_fu_126_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_fu_126_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_fu_126_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_fu_126_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_fu_126_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_fu_126_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_3_address0(grp_kernel_2mm_node1_fu_126_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_fu_126_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_fu_126_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_fu_126_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_fu_126_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_fu_126_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_fu_126_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_fu_126_v225_3_d1),.v225_3_q1(v225_3_q1),.v225_4_address0(grp_kernel_2mm_node1_fu_126_v225_4_address0),.v225_4_ce0(grp_kernel_2mm_node1_fu_126_v225_4_ce0),.v225_4_we0(grp_kernel_2mm_node1_fu_126_v225_4_we0),.v225_4_d0(grp_kernel_2mm_node1_fu_126_v225_4_d0),.v225_4_q0(v225_4_q0),.v225_4_address1(grp_kernel_2mm_node1_fu_126_v225_4_address1),.v225_4_ce1(grp_kernel_2mm_node1_fu_126_v225_4_ce1),.v225_4_we1(grp_kernel_2mm_node1_fu_126_v225_4_we1),.v225_4_d1(grp_kernel_2mm_node1_fu_126_v225_4_d1),.v225_4_q1(v225_4_q1),.v225_5_address0(grp_kernel_2mm_node1_fu_126_v225_5_address0),.v225_5_ce0(grp_kernel_2mm_node1_fu_126_v225_5_ce0),.v225_5_we0(grp_kernel_2mm_node1_fu_126_v225_5_we0),.v225_5_d0(grp_kernel_2mm_node1_fu_126_v225_5_d0),.v225_5_q0(v225_5_q0),.v225_5_address1(grp_kernel_2mm_node1_fu_126_v225_5_address1),.v225_5_ce1(grp_kernel_2mm_node1_fu_126_v225_5_ce1),.v225_5_we1(grp_kernel_2mm_node1_fu_126_v225_5_we1),.v225_5_d1(grp_kernel_2mm_node1_fu_126_v225_5_d1),.v225_5_q1(v225_5_q1),.v225_6_address0(grp_kernel_2mm_node1_fu_126_v225_6_address0),.v225_6_ce0(grp_kernel_2mm_node1_fu_126_v225_6_ce0),.v225_6_we0(grp_kernel_2mm_node1_fu_126_v225_6_we0),.v225_6_d0(grp_kernel_2mm_node1_fu_126_v225_6_d0),.v225_6_q0(v225_6_q0),.v225_6_address1(grp_kernel_2mm_node1_fu_126_v225_6_address1),.v225_6_ce1(grp_kernel_2mm_node1_fu_126_v225_6_ce1),.v225_6_we1(grp_kernel_2mm_node1_fu_126_v225_6_we1),.v225_6_d1(grp_kernel_2mm_node1_fu_126_v225_6_d1),.v225_6_q1(v225_6_q1),.v225_7_address0(grp_kernel_2mm_node1_fu_126_v225_7_address0),.v225_7_ce0(grp_kernel_2mm_node1_fu_126_v225_7_ce0),.v225_7_we0(grp_kernel_2mm_node1_fu_126_v225_7_we0),.v225_7_d0(grp_kernel_2mm_node1_fu_126_v225_7_d0),.v225_7_q0(v225_7_q0),.v225_7_address1(grp_kernel_2mm_node1_fu_126_v225_7_address1),.v225_7_ce1(grp_kernel_2mm_node1_fu_126_v225_7_ce1),.v225_7_we1(grp_kernel_2mm_node1_fu_126_v225_7_we1),.v225_7_d1(grp_kernel_2mm_node1_fu_126_v225_7_d1),.v225_7_q1(v225_7_q1),.v113(v222),.grp_fu_216_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_216_p_din0),.grp_fu_216_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_216_p_din1),.grp_fu_216_p_dout0(grp_fu_216_p2),.grp_fu_216_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_216_p_ce),.grp_fu_220_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_220_p_din0),.grp_fu_220_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_220_p_din1),.grp_fu_220_p_dout0(grp_fu_220_p2),.grp_fu_220_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_220_p_ce),.grp_fu_224_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_224_p_din0),.grp_fu_224_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_224_p_din1),.grp_fu_224_p_dout0(grp_fu_224_p2),.grp_fu_224_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_224_p_ce),.grp_fu_228_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_228_p_din0),.grp_fu_228_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_228_p_din1),.grp_fu_228_p_dout0(grp_fu_228_p2),.grp_fu_228_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_228_p_ce),.grp_fu_232_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_232_p_din0),.grp_fu_232_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_232_p_din1),.grp_fu_232_p_dout0(grp_fu_232_p2),.grp_fu_232_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_232_p_ce),.grp_fu_236_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_236_p_din0),.grp_fu_236_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_236_p_din1),.grp_fu_236_p_dout0(grp_fu_236_p2),.grp_fu_236_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_236_p_ce),.grp_fu_240_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_240_p_din0),.grp_fu_240_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_240_p_din1),.grp_fu_240_p_dout0(grp_fu_240_p2),.grp_fu_240_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_240_p_ce),.grp_fu_244_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_244_p_din0),.grp_fu_244_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_244_p_din1),.grp_fu_244_p_dout0(grp_fu_244_p2),.grp_fu_244_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_244_p_ce),.grp_fu_248_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_248_p_din0),.grp_fu_248_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_248_p_din1),.grp_fu_248_p_dout0(grp_fu_248_p2),.grp_fu_248_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_248_p_ce),.grp_fu_252_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_252_p_din0),.grp_fu_252_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_252_p_din1),.grp_fu_252_p_opcode(grp_kernel_2mm_node1_fu_126_grp_fu_252_p_opcode),.grp_fu_252_p_dout0(grp_fu_252_p2),.grp_fu_252_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_252_p_ce),.grp_fu_256_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_256_p_din0),.grp_fu_256_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_256_p_din1),.grp_fu_256_p_opcode(grp_kernel_2mm_node1_fu_126_grp_fu_256_p_opcode),.grp_fu_256_p_dout0(grp_fu_256_p2),.grp_fu_256_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_256_p_ce),.grp_fu_260_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_260_p_din0),.grp_fu_260_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_260_p_din1),.grp_fu_260_p_opcode(grp_kernel_2mm_node1_fu_126_grp_fu_260_p_opcode),.grp_fu_260_p_dout0(grp_fu_260_p2),.grp_fu_260_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_260_p_ce),.grp_fu_264_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_264_p_din0),.grp_fu_264_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_264_p_din1),.grp_fu_264_p_opcode(grp_kernel_2mm_node1_fu_126_grp_fu_264_p_opcode),.grp_fu_264_p_dout0(grp_fu_264_p2),.grp_fu_264_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_264_p_ce),.grp_fu_268_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_268_p_din0),.grp_fu_268_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_268_p_din1),.grp_fu_268_p_opcode(grp_kernel_2mm_node1_fu_126_grp_fu_268_p_opcode),.grp_fu_268_p_dout0(grp_fu_268_p2),.grp_fu_268_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_268_p_ce),.grp_fu_272_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_272_p_din0),.grp_fu_272_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_272_p_din1),.grp_fu_272_p_opcode(grp_kernel_2mm_node1_fu_126_grp_fu_272_p_opcode),.grp_fu_272_p_dout0(grp_fu_272_p2),.grp_fu_272_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_272_p_ce),.grp_fu_276_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_276_p_din0),.grp_fu_276_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_276_p_din1),.grp_fu_276_p_opcode(grp_kernel_2mm_node1_fu_126_grp_fu_276_p_opcode),.grp_fu_276_p_dout0(grp_fu_276_p2),.grp_fu_276_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_276_p_ce),.grp_fu_280_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_280_p_din0),.grp_fu_280_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_280_p_din1),.grp_fu_280_p_opcode(grp_kernel_2mm_node1_fu_126_grp_fu_280_p_opcode),.grp_fu_280_p_dout0(grp_fu_280_p2),.grp_fu_280_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_280_p_ce),.grp_fu_284_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_284_p_din0),.grp_fu_284_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_284_p_din1),.grp_fu_284_p_dout0(grp_fu_284_p2),.grp_fu_284_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_284_p_ce),.grp_fu_288_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_288_p_din0),.grp_fu_288_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_288_p_din1),.grp_fu_288_p_dout0(grp_fu_288_p2),.grp_fu_288_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_288_p_ce),.grp_fu_292_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_292_p_din0),.grp_fu_292_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_292_p_din1),.grp_fu_292_p_dout0(grp_fu_292_p2),.grp_fu_292_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_292_p_ce),.grp_fu_296_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_296_p_din0),.grp_fu_296_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_296_p_din1),.grp_fu_296_p_dout0(grp_fu_296_p2),.grp_fu_296_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_296_p_ce),.grp_fu_300_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_300_p_din0),.grp_fu_300_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_300_p_din1),.grp_fu_300_p_dout0(grp_fu_300_p2),.grp_fu_300_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_300_p_ce),.grp_fu_304_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_304_p_din0),.grp_fu_304_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_304_p_din1),.grp_fu_304_p_dout0(grp_fu_304_p2),.grp_fu_304_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_304_p_ce),.grp_fu_308_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_308_p_din0),.grp_fu_308_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_308_p_din1),.grp_fu_308_p_dout0(grp_fu_308_p2),.grp_fu_308_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_308_p_ce),.grp_fu_312_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_312_p_din0),.grp_fu_312_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_312_p_din1),.grp_fu_312_p_dout0(grp_fu_312_p2),.grp_fu_312_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_312_p_ce),.grp_fu_316_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_316_p_din0),.grp_fu_316_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_316_p_din1),.grp_fu_316_p_opcode(grp_kernel_2mm_node1_fu_126_grp_fu_316_p_opcode),.grp_fu_316_p_dout0(grp_fu_316_p2),.grp_fu_316_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_316_p_ce),.grp_fu_320_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_320_p_din0),.grp_fu_320_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_320_p_din1),.grp_fu_320_p_opcode(grp_kernel_2mm_node1_fu_126_grp_fu_320_p_opcode),.grp_fu_320_p_dout0(grp_fu_320_p2),.grp_fu_320_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_320_p_ce),.grp_fu_324_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_324_p_din0),.grp_fu_324_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_324_p_din1),.grp_fu_324_p_opcode(grp_kernel_2mm_node1_fu_126_grp_fu_324_p_opcode),.grp_fu_324_p_dout0(grp_fu_324_p2),.grp_fu_324_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_324_p_ce),.grp_fu_328_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_328_p_din0),.grp_fu_328_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_328_p_din1),.grp_fu_328_p_dout0(grp_fu_328_p2),.grp_fu_328_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_328_p_ce),.grp_fu_332_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_332_p_din0),.grp_fu_332_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_332_p_din1),.grp_fu_332_p_dout0(grp_fu_332_p2),.grp_fu_332_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_332_p_ce),.grp_fu_336_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_336_p_din0),.grp_fu_336_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_336_p_din1),.grp_fu_336_p_dout0(grp_fu_336_p2),.grp_fu_336_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_336_p_ce),.grp_fu_340_p_din0(grp_kernel_2mm_node1_fu_126_grp_fu_340_p_din0),.grp_fu_340_p_din1(grp_kernel_2mm_node1_fu_126_grp_fu_340_p_din1),.grp_fu_340_p_dout0(grp_fu_340_p2),.grp_fu_340_p_ce(grp_kernel_2mm_node1_fu_126_grp_fu_340_p_ce));
kernel_2mm_kernel_2mm_node0 grp_kernel_2mm_node0_fu_159(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_fu_159_ap_start),.ap_done(grp_kernel_2mm_node0_fu_159_ap_done),.ap_idle(grp_kernel_2mm_node0_fu_159_ap_idle),.ap_ready(grp_kernel_2mm_node0_fu_159_ap_ready),.v236_dout(v236_dout),.v236_empty_n(v236_empty_n),.v236_read(grp_kernel_2mm_node0_fu_159_v236_read),.v224_address0(grp_kernel_2mm_node0_fu_159_v224_address0),.v224_ce0(grp_kernel_2mm_node0_fu_159_v224_ce0),.v224_q0(v224_q0),.v224_address1(grp_kernel_2mm_node0_fu_159_v224_address1),.v224_ce1(grp_kernel_2mm_node0_fu_159_v224_ce1),.v224_q1(v224_q1),.v228_0_address0(grp_kernel_2mm_node0_fu_159_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_fu_159_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_fu_159_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_fu_159_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_fu_159_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_fu_159_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_fu_159_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_fu_159_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_fu_159_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_fu_159_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_fu_159_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_fu_159_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_fu_159_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_fu_159_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_fu_159_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_fu_159_v228_3_ce1),.v228_3_q1(v228_3_q1),.v228_4_address0(grp_kernel_2mm_node0_fu_159_v228_4_address0),.v228_4_ce0(grp_kernel_2mm_node0_fu_159_v228_4_ce0),.v228_4_q0(v228_4_q0),.v228_4_address1(grp_kernel_2mm_node0_fu_159_v228_4_address1),.v228_4_ce1(grp_kernel_2mm_node0_fu_159_v228_4_ce1),.v228_4_q1(v228_4_q1),.v228_5_address0(grp_kernel_2mm_node0_fu_159_v228_5_address0),.v228_5_ce0(grp_kernel_2mm_node0_fu_159_v228_5_ce0),.v228_5_q0(v228_5_q0),.v228_5_address1(grp_kernel_2mm_node0_fu_159_v228_5_address1),.v228_5_ce1(grp_kernel_2mm_node0_fu_159_v228_5_ce1),.v228_5_q1(v228_5_q1),.v228_6_address0(grp_kernel_2mm_node0_fu_159_v228_6_address0),.v228_6_ce0(grp_kernel_2mm_node0_fu_159_v228_6_ce0),.v228_6_q0(v228_6_q0),.v228_6_address1(grp_kernel_2mm_node0_fu_159_v228_6_address1),.v228_6_ce1(grp_kernel_2mm_node0_fu_159_v228_6_ce1),.v228_6_q1(v228_6_q1),.v228_7_address0(grp_kernel_2mm_node0_fu_159_v228_7_address0),.v228_7_ce0(grp_kernel_2mm_node0_fu_159_v228_7_ce0),.v228_7_q0(v228_7_q0),.v228_7_address1(grp_kernel_2mm_node0_fu_159_v228_7_address1),.v228_7_ce1(grp_kernel_2mm_node0_fu_159_v228_7_ce1),.v228_7_q1(v228_7_q1),.v229_0_address0(grp_kernel_2mm_node0_fu_159_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_fu_159_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_fu_159_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_fu_159_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_fu_159_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_fu_159_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_fu_159_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_fu_159_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_fu_159_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_fu_159_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_fu_159_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_fu_159_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_fu_159_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_fu_159_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_fu_159_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_fu_159_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_2_address0(grp_kernel_2mm_node0_fu_159_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_fu_159_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_fu_159_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_fu_159_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_fu_159_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_fu_159_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_fu_159_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_fu_159_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_3_address0(grp_kernel_2mm_node0_fu_159_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_fu_159_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_fu_159_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_fu_159_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_fu_159_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_fu_159_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_fu_159_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_fu_159_v229_3_d1),.v229_3_q1(v229_3_q1),.v229_4_address0(grp_kernel_2mm_node0_fu_159_v229_4_address0),.v229_4_ce0(grp_kernel_2mm_node0_fu_159_v229_4_ce0),.v229_4_we0(grp_kernel_2mm_node0_fu_159_v229_4_we0),.v229_4_d0(grp_kernel_2mm_node0_fu_159_v229_4_d0),.v229_4_q0(v229_4_q0),.v229_4_address1(grp_kernel_2mm_node0_fu_159_v229_4_address1),.v229_4_ce1(grp_kernel_2mm_node0_fu_159_v229_4_ce1),.v229_4_we1(grp_kernel_2mm_node0_fu_159_v229_4_we1),.v229_4_d1(grp_kernel_2mm_node0_fu_159_v229_4_d1),.v229_4_q1(v229_4_q1),.v229_5_address0(grp_kernel_2mm_node0_fu_159_v229_5_address0),.v229_5_ce0(grp_kernel_2mm_node0_fu_159_v229_5_ce0),.v229_5_we0(grp_kernel_2mm_node0_fu_159_v229_5_we0),.v229_5_d0(grp_kernel_2mm_node0_fu_159_v229_5_d0),.v229_5_q0(v229_5_q0),.v229_5_address1(grp_kernel_2mm_node0_fu_159_v229_5_address1),.v229_5_ce1(grp_kernel_2mm_node0_fu_159_v229_5_ce1),.v229_5_we1(grp_kernel_2mm_node0_fu_159_v229_5_we1),.v229_5_d1(grp_kernel_2mm_node0_fu_159_v229_5_d1),.v229_5_q1(v229_5_q1),.v229_6_address0(grp_kernel_2mm_node0_fu_159_v229_6_address0),.v229_6_ce0(grp_kernel_2mm_node0_fu_159_v229_6_ce0),.v229_6_we0(grp_kernel_2mm_node0_fu_159_v229_6_we0),.v229_6_d0(grp_kernel_2mm_node0_fu_159_v229_6_d0),.v229_6_q0(v229_6_q0),.v229_6_address1(grp_kernel_2mm_node0_fu_159_v229_6_address1),.v229_6_ce1(grp_kernel_2mm_node0_fu_159_v229_6_ce1),.v229_6_we1(grp_kernel_2mm_node0_fu_159_v229_6_we1),.v229_6_d1(grp_kernel_2mm_node0_fu_159_v229_6_d1),.v229_6_q1(v229_6_q1),.v229_7_address0(grp_kernel_2mm_node0_fu_159_v229_7_address0),.v229_7_ce0(grp_kernel_2mm_node0_fu_159_v229_7_ce0),.v229_7_we0(grp_kernel_2mm_node0_fu_159_v229_7_we0),.v229_7_d0(grp_kernel_2mm_node0_fu_159_v229_7_d0),.v229_7_q0(v229_7_q0),.v229_7_address1(grp_kernel_2mm_node0_fu_159_v229_7_address1),.v229_7_ce1(grp_kernel_2mm_node0_fu_159_v229_7_ce1),.v229_7_we1(grp_kernel_2mm_node0_fu_159_v229_7_we1),.v229_7_d1(grp_kernel_2mm_node0_fu_159_v229_7_d1),.v229_7_q1(v229_7_q1),.v4(v223),.grp_fu_252_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_252_p_din0),.grp_fu_252_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_252_p_din1),.grp_fu_252_p_opcode(grp_kernel_2mm_node0_fu_159_grp_fu_252_p_opcode),.grp_fu_252_p_dout0(grp_fu_252_p2),.grp_fu_252_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_252_p_ce),.grp_fu_256_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_256_p_din0),.grp_fu_256_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_256_p_din1),.grp_fu_256_p_opcode(grp_kernel_2mm_node0_fu_159_grp_fu_256_p_opcode),.grp_fu_256_p_dout0(grp_fu_256_p2),.grp_fu_256_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_256_p_ce),.grp_fu_260_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_260_p_din0),.grp_fu_260_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_260_p_din1),.grp_fu_260_p_opcode(grp_kernel_2mm_node0_fu_159_grp_fu_260_p_opcode),.grp_fu_260_p_dout0(grp_fu_260_p2),.grp_fu_260_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_260_p_ce),.grp_fu_264_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_264_p_din0),.grp_fu_264_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_264_p_din1),.grp_fu_264_p_opcode(grp_kernel_2mm_node0_fu_159_grp_fu_264_p_opcode),.grp_fu_264_p_dout0(grp_fu_264_p2),.grp_fu_264_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_264_p_ce),.grp_fu_268_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_268_p_din0),.grp_fu_268_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_268_p_din1),.grp_fu_268_p_opcode(grp_kernel_2mm_node0_fu_159_grp_fu_268_p_opcode),.grp_fu_268_p_dout0(grp_fu_268_p2),.grp_fu_268_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_268_p_ce),.grp_fu_272_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_272_p_din0),.grp_fu_272_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_272_p_din1),.grp_fu_272_p_opcode(grp_kernel_2mm_node0_fu_159_grp_fu_272_p_opcode),.grp_fu_272_p_dout0(grp_fu_272_p2),.grp_fu_272_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_272_p_ce),.grp_fu_276_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_276_p_din0),.grp_fu_276_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_276_p_din1),.grp_fu_276_p_opcode(grp_kernel_2mm_node0_fu_159_grp_fu_276_p_opcode),.grp_fu_276_p_dout0(grp_fu_276_p2),.grp_fu_276_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_276_p_ce),.grp_fu_280_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_280_p_din0),.grp_fu_280_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_280_p_din1),.grp_fu_280_p_opcode(grp_kernel_2mm_node0_fu_159_grp_fu_280_p_opcode),.grp_fu_280_p_dout0(grp_fu_280_p2),.grp_fu_280_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_280_p_ce),.grp_fu_316_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_316_p_din0),.grp_fu_316_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_316_p_din1),.grp_fu_316_p_opcode(grp_kernel_2mm_node0_fu_159_grp_fu_316_p_opcode),.grp_fu_316_p_dout0(grp_fu_316_p2),.grp_fu_316_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_316_p_ce),.grp_fu_320_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_320_p_din0),.grp_fu_320_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_320_p_din1),.grp_fu_320_p_opcode(grp_kernel_2mm_node0_fu_159_grp_fu_320_p_opcode),.grp_fu_320_p_dout0(grp_fu_320_p2),.grp_fu_320_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_320_p_ce),.grp_fu_324_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_324_p_din0),.grp_fu_324_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_324_p_din1),.grp_fu_324_p_opcode(grp_kernel_2mm_node0_fu_159_grp_fu_324_p_opcode),.grp_fu_324_p_dout0(grp_fu_324_p2),.grp_fu_324_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_324_p_ce),.grp_fu_284_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_284_p_din0),.grp_fu_284_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_284_p_din1),.grp_fu_284_p_dout0(grp_fu_284_p2),.grp_fu_284_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_284_p_ce),.grp_fu_288_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_288_p_din0),.grp_fu_288_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_288_p_din1),.grp_fu_288_p_dout0(grp_fu_288_p2),.grp_fu_288_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_288_p_ce),.grp_fu_292_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_292_p_din0),.grp_fu_292_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_292_p_din1),.grp_fu_292_p_dout0(grp_fu_292_p2),.grp_fu_292_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_292_p_ce),.grp_fu_296_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_296_p_din0),.grp_fu_296_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_296_p_din1),.grp_fu_296_p_dout0(grp_fu_296_p2),.grp_fu_296_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_296_p_ce),.grp_fu_300_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_300_p_din0),.grp_fu_300_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_300_p_din1),.grp_fu_300_p_dout0(grp_fu_300_p2),.grp_fu_300_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_300_p_ce),.grp_fu_304_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_304_p_din0),.grp_fu_304_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_304_p_din1),.grp_fu_304_p_dout0(grp_fu_304_p2),.grp_fu_304_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_304_p_ce),.grp_fu_308_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_308_p_din0),.grp_fu_308_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_308_p_din1),.grp_fu_308_p_dout0(grp_fu_308_p2),.grp_fu_308_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_308_p_ce),.grp_fu_312_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_312_p_din0),.grp_fu_312_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_312_p_din1),.grp_fu_312_p_dout0(grp_fu_312_p2),.grp_fu_312_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_312_p_ce),.grp_fu_328_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_328_p_din0),.grp_fu_328_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_328_p_din1),.grp_fu_328_p_dout0(grp_fu_328_p2),.grp_fu_328_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_328_p_ce),.grp_fu_332_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_332_p_din0),.grp_fu_332_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_332_p_din1),.grp_fu_332_p_dout0(grp_fu_332_p2),.grp_fu_332_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_332_p_ce),.grp_fu_336_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_336_p_din0),.grp_fu_336_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_336_p_din1),.grp_fu_336_p_dout0(grp_fu_336_p2),.grp_fu_336_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_336_p_ce),.grp_fu_340_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_340_p_din0),.grp_fu_340_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_340_p_din1),.grp_fu_340_p_dout0(grp_fu_340_p2),.grp_fu_340_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_340_p_ce),.grp_fu_216_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_216_p_din0),.grp_fu_216_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_216_p_din1),.grp_fu_216_p_dout0(grp_fu_216_p2),.grp_fu_216_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_216_p_ce),.grp_fu_220_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_220_p_din0),.grp_fu_220_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_220_p_din1),.grp_fu_220_p_dout0(grp_fu_220_p2),.grp_fu_220_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_220_p_ce),.grp_fu_224_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_224_p_din0),.grp_fu_224_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_224_p_din1),.grp_fu_224_p_dout0(grp_fu_224_p2),.grp_fu_224_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_224_p_ce),.grp_fu_228_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_228_p_din0),.grp_fu_228_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_228_p_din1),.grp_fu_228_p_dout0(grp_fu_228_p2),.grp_fu_228_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_228_p_ce),.grp_fu_232_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_232_p_din0),.grp_fu_232_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_232_p_din1),.grp_fu_232_p_dout0(grp_fu_232_p2),.grp_fu_232_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_232_p_ce),.grp_fu_236_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_236_p_din0),.grp_fu_236_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_236_p_din1),.grp_fu_236_p_dout0(grp_fu_236_p2),.grp_fu_236_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_236_p_ce),.grp_fu_240_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_240_p_din0),.grp_fu_240_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_240_p_din1),.grp_fu_240_p_dout0(grp_fu_240_p2),.grp_fu_240_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_240_p_ce),.grp_fu_244_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_244_p_din0),.grp_fu_244_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_244_p_din1),.grp_fu_244_p_dout0(grp_fu_244_p2),.grp_fu_244_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_244_p_ce),.grp_fu_248_p_din0(grp_kernel_2mm_node0_fu_159_grp_fu_248_p_din0),.grp_fu_248_p_din1(grp_kernel_2mm_node0_fu_159_grp_fu_248_p_din1),.grp_fu_248_p_dout0(grp_fu_248_p2),.grp_fu_248_p_ce(grp_kernel_2mm_node0_fu_159_grp_fu_248_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U804(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_216_p0),.din1(grp_fu_216_p1),.ce(grp_fu_216_ce),.dout(grp_fu_216_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U805(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_220_p0),.din1(grp_fu_220_p1),.ce(grp_fu_220_ce),.dout(grp_fu_220_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U806(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_224_p0),.din1(grp_fu_224_p1),.ce(grp_fu_224_ce),.dout(grp_fu_224_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U807(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_228_p0),.din1(grp_fu_228_p1),.ce(grp_fu_228_ce),.dout(grp_fu_228_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U808(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_232_p0),.din1(grp_fu_232_p1),.ce(grp_fu_232_ce),.dout(grp_fu_232_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U809(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_236_p0),.din1(grp_fu_236_p1),.ce(grp_fu_236_ce),.dout(grp_fu_236_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U810(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_240_p0),.din1(grp_fu_240_p1),.ce(grp_fu_240_ce),.dout(grp_fu_240_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U811(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_244_p0),.din1(grp_fu_244_p1),.ce(grp_fu_244_ce),.dout(grp_fu_244_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U812(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_248_p0),.din1(grp_fu_248_p1),.ce(grp_fu_248_ce),.dout(grp_fu_248_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U813(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_252_p0),.din1(grp_fu_252_p1),.ce(grp_fu_252_ce),.dout(grp_fu_252_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U814(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_256_p0),.din1(grp_fu_256_p1),.ce(grp_fu_256_ce),.dout(grp_fu_256_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U815(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_260_p0),.din1(grp_fu_260_p1),.ce(grp_fu_260_ce),.dout(grp_fu_260_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U816(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_264_p0),.din1(grp_fu_264_p1),.ce(grp_fu_264_ce),.dout(grp_fu_264_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U817(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_268_p0),.din1(grp_fu_268_p1),.ce(grp_fu_268_ce),.dout(grp_fu_268_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U818(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_272_p0),.din1(grp_fu_272_p1),.ce(grp_fu_272_ce),.dout(grp_fu_272_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U819(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_276_p0),.din1(grp_fu_276_p1),.ce(grp_fu_276_ce),.dout(grp_fu_276_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U820(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_280_p0),.din1(grp_fu_280_p1),.ce(grp_fu_280_ce),.dout(grp_fu_280_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U821(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_284_p0),.din1(grp_fu_284_p1),.ce(grp_fu_284_ce),.dout(grp_fu_284_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U822(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_288_p0),.din1(grp_fu_288_p1),.ce(grp_fu_288_ce),.dout(grp_fu_288_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U823(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_292_p0),.din1(grp_fu_292_p1),.ce(grp_fu_292_ce),.dout(grp_fu_292_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U824(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_296_p0),.din1(grp_fu_296_p1),.ce(grp_fu_296_ce),.dout(grp_fu_296_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U825(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_300_p0),.din1(grp_fu_300_p1),.ce(grp_fu_300_ce),.dout(grp_fu_300_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U826(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_304_p0),.din1(grp_fu_304_p1),.ce(grp_fu_304_ce),.dout(grp_fu_304_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U827(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_308_p0),.din1(grp_fu_308_p1),.ce(grp_fu_308_ce),.dout(grp_fu_308_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U828(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_312_p0),.din1(grp_fu_312_p1),.ce(grp_fu_312_ce),.dout(grp_fu_312_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U829(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_316_p0),.din1(grp_fu_316_p1),.ce(grp_fu_316_ce),.dout(grp_fu_316_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U830(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_320_p0),.din1(grp_fu_320_p1),.ce(grp_fu_320_ce),.dout(grp_fu_320_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U831(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_324_p0),.din1(grp_fu_324_p1),.ce(grp_fu_324_ce),.dout(grp_fu_324_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U832(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_328_p0),.din1(grp_fu_328_p1),.ce(grp_fu_328_ce),.dout(grp_fu_328_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U833(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_332_p0),.din1(grp_fu_332_p1),.ce(grp_fu_332_ce),.dout(grp_fu_332_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U834(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_336_p0),.din1(grp_fu_336_p1),.ce(grp_fu_336_ce),.dout(grp_fu_336_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U835(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_340_p0),.din1(grp_fu_340_p1),.ce(grp_fu_340_ce),.dout(grp_fu_340_p2));
kernel_2mm_fifo_w1_d2_S v236_fifo_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(grp_kernel_2mm_node1_fu_126_v236_din),.if_full_n(v236_full_n),.if_write(v236_write),.if_dout(v236_dout),.if_empty_n(v236_empty_n),.if_read(v236_read));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_fu_159_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node0_fu_159_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_fu_159_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_fu_159_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_fu_126_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_kernel_2mm_node1_fu_126_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_fu_126_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_fu_126_ap_start_reg <= 1'b0;
        end
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
    if ((grp_kernel_2mm_node1_fu_126_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_fu_159_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_kernel_2mm_node0_fu_159_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
    if (((grp_kernel_2mm_node0_fu_159_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_216_ce = grp_kernel_2mm_node0_fu_159_grp_fu_216_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_216_ce = grp_kernel_2mm_node1_fu_126_grp_fu_216_p_ce;
    end else begin
        grp_fu_216_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_216_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_216_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_216_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_216_p_din0;
    end else begin
        grp_fu_216_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_216_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_216_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_216_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_216_p_din1;
    end else begin
        grp_fu_216_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_220_ce = grp_kernel_2mm_node0_fu_159_grp_fu_220_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_220_ce = grp_kernel_2mm_node1_fu_126_grp_fu_220_p_ce;
    end else begin
        grp_fu_220_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_220_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_220_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_220_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_220_p_din0;
    end else begin
        grp_fu_220_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_220_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_220_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_220_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_220_p_din1;
    end else begin
        grp_fu_220_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_224_ce = grp_kernel_2mm_node0_fu_159_grp_fu_224_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_224_ce = grp_kernel_2mm_node1_fu_126_grp_fu_224_p_ce;
    end else begin
        grp_fu_224_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_224_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_224_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_224_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_224_p_din0;
    end else begin
        grp_fu_224_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_224_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_224_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_224_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_224_p_din1;
    end else begin
        grp_fu_224_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_228_ce = grp_kernel_2mm_node0_fu_159_grp_fu_228_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_228_ce = grp_kernel_2mm_node1_fu_126_grp_fu_228_p_ce;
    end else begin
        grp_fu_228_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_228_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_228_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_228_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_228_p_din0;
    end else begin
        grp_fu_228_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_228_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_228_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_228_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_228_p_din1;
    end else begin
        grp_fu_228_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_232_ce = grp_kernel_2mm_node0_fu_159_grp_fu_232_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_232_ce = grp_kernel_2mm_node1_fu_126_grp_fu_232_p_ce;
    end else begin
        grp_fu_232_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_232_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_232_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_232_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_232_p_din0;
    end else begin
        grp_fu_232_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_232_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_232_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_232_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_232_p_din1;
    end else begin
        grp_fu_232_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_236_ce = grp_kernel_2mm_node0_fu_159_grp_fu_236_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_236_ce = grp_kernel_2mm_node1_fu_126_grp_fu_236_p_ce;
    end else begin
        grp_fu_236_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_236_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_236_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_236_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_236_p_din0;
    end else begin
        grp_fu_236_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_236_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_236_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_236_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_236_p_din1;
    end else begin
        grp_fu_236_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_240_ce = grp_kernel_2mm_node0_fu_159_grp_fu_240_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_240_ce = grp_kernel_2mm_node1_fu_126_grp_fu_240_p_ce;
    end else begin
        grp_fu_240_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_240_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_240_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_240_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_240_p_din0;
    end else begin
        grp_fu_240_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_240_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_240_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_240_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_240_p_din1;
    end else begin
        grp_fu_240_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_244_ce = grp_kernel_2mm_node0_fu_159_grp_fu_244_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_244_ce = grp_kernel_2mm_node1_fu_126_grp_fu_244_p_ce;
    end else begin
        grp_fu_244_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_244_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_244_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_244_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_244_p_din0;
    end else begin
        grp_fu_244_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_244_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_244_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_244_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_244_p_din1;
    end else begin
        grp_fu_244_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_248_ce = grp_kernel_2mm_node0_fu_159_grp_fu_248_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_248_ce = grp_kernel_2mm_node1_fu_126_grp_fu_248_p_ce;
    end else begin
        grp_fu_248_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_248_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_248_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_248_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_248_p_din0;
    end else begin
        grp_fu_248_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_248_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_248_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_248_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_248_p_din1;
    end else begin
        grp_fu_248_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_252_ce = grp_kernel_2mm_node0_fu_159_grp_fu_252_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_252_ce = grp_kernel_2mm_node1_fu_126_grp_fu_252_p_ce;
    end else begin
        grp_fu_252_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_252_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_252_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_252_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_252_p_din0;
    end else begin
        grp_fu_252_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_252_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_252_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_252_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_252_p_din1;
    end else begin
        grp_fu_252_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_256_ce = grp_kernel_2mm_node0_fu_159_grp_fu_256_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_256_ce = grp_kernel_2mm_node1_fu_126_grp_fu_256_p_ce;
    end else begin
        grp_fu_256_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_256_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_256_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_256_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_256_p_din0;
    end else begin
        grp_fu_256_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_256_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_256_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_256_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_256_p_din1;
    end else begin
        grp_fu_256_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_260_ce = grp_kernel_2mm_node0_fu_159_grp_fu_260_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_260_ce = grp_kernel_2mm_node1_fu_126_grp_fu_260_p_ce;
    end else begin
        grp_fu_260_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_260_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_260_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_260_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_260_p_din0;
    end else begin
        grp_fu_260_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_260_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_260_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_260_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_260_p_din1;
    end else begin
        grp_fu_260_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_264_ce = grp_kernel_2mm_node0_fu_159_grp_fu_264_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_264_ce = grp_kernel_2mm_node1_fu_126_grp_fu_264_p_ce;
    end else begin
        grp_fu_264_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_264_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_264_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_264_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_264_p_din0;
    end else begin
        grp_fu_264_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_264_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_264_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_264_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_264_p_din1;
    end else begin
        grp_fu_264_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_268_ce = grp_kernel_2mm_node0_fu_159_grp_fu_268_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_268_ce = grp_kernel_2mm_node1_fu_126_grp_fu_268_p_ce;
    end else begin
        grp_fu_268_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_268_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_268_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_268_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_268_p_din0;
    end else begin
        grp_fu_268_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_268_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_268_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_268_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_268_p_din1;
    end else begin
        grp_fu_268_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_272_ce = grp_kernel_2mm_node0_fu_159_grp_fu_272_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_272_ce = grp_kernel_2mm_node1_fu_126_grp_fu_272_p_ce;
    end else begin
        grp_fu_272_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_272_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_272_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_272_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_272_p_din0;
    end else begin
        grp_fu_272_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_272_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_272_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_272_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_272_p_din1;
    end else begin
        grp_fu_272_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_276_ce = grp_kernel_2mm_node0_fu_159_grp_fu_276_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_276_ce = grp_kernel_2mm_node1_fu_126_grp_fu_276_p_ce;
    end else begin
        grp_fu_276_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_276_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_276_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_276_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_276_p_din0;
    end else begin
        grp_fu_276_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_276_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_276_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_276_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_276_p_din1;
    end else begin
        grp_fu_276_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_280_ce = grp_kernel_2mm_node0_fu_159_grp_fu_280_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_280_ce = grp_kernel_2mm_node1_fu_126_grp_fu_280_p_ce;
    end else begin
        grp_fu_280_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_280_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_280_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_280_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_280_p_din0;
    end else begin
        grp_fu_280_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_280_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_280_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_280_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_280_p_din1;
    end else begin
        grp_fu_280_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_284_ce = grp_kernel_2mm_node0_fu_159_grp_fu_284_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_284_ce = grp_kernel_2mm_node1_fu_126_grp_fu_284_p_ce;
    end else begin
        grp_fu_284_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_284_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_284_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_284_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_284_p_din0;
    end else begin
        grp_fu_284_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_284_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_284_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_284_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_284_p_din1;
    end else begin
        grp_fu_284_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_288_ce = grp_kernel_2mm_node0_fu_159_grp_fu_288_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_288_ce = grp_kernel_2mm_node1_fu_126_grp_fu_288_p_ce;
    end else begin
        grp_fu_288_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_288_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_288_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_288_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_288_p_din0;
    end else begin
        grp_fu_288_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_288_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_288_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_288_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_288_p_din1;
    end else begin
        grp_fu_288_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_292_ce = grp_kernel_2mm_node0_fu_159_grp_fu_292_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_292_ce = grp_kernel_2mm_node1_fu_126_grp_fu_292_p_ce;
    end else begin
        grp_fu_292_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_292_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_292_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_292_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_292_p_din0;
    end else begin
        grp_fu_292_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_292_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_292_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_292_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_292_p_din1;
    end else begin
        grp_fu_292_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_296_ce = grp_kernel_2mm_node0_fu_159_grp_fu_296_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_296_ce = grp_kernel_2mm_node1_fu_126_grp_fu_296_p_ce;
    end else begin
        grp_fu_296_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_296_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_296_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_296_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_296_p_din0;
    end else begin
        grp_fu_296_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_296_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_296_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_296_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_296_p_din1;
    end else begin
        grp_fu_296_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_300_ce = grp_kernel_2mm_node0_fu_159_grp_fu_300_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_300_ce = grp_kernel_2mm_node1_fu_126_grp_fu_300_p_ce;
    end else begin
        grp_fu_300_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_300_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_300_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_300_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_300_p_din0;
    end else begin
        grp_fu_300_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_300_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_300_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_300_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_300_p_din1;
    end else begin
        grp_fu_300_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_304_ce = grp_kernel_2mm_node0_fu_159_grp_fu_304_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_304_ce = grp_kernel_2mm_node1_fu_126_grp_fu_304_p_ce;
    end else begin
        grp_fu_304_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_304_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_304_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_304_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_304_p_din0;
    end else begin
        grp_fu_304_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_304_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_304_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_304_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_304_p_din1;
    end else begin
        grp_fu_304_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_308_ce = grp_kernel_2mm_node0_fu_159_grp_fu_308_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_308_ce = grp_kernel_2mm_node1_fu_126_grp_fu_308_p_ce;
    end else begin
        grp_fu_308_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_308_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_308_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_308_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_308_p_din0;
    end else begin
        grp_fu_308_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_308_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_308_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_308_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_308_p_din1;
    end else begin
        grp_fu_308_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_312_ce = grp_kernel_2mm_node0_fu_159_grp_fu_312_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_312_ce = grp_kernel_2mm_node1_fu_126_grp_fu_312_p_ce;
    end else begin
        grp_fu_312_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_312_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_312_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_312_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_312_p_din0;
    end else begin
        grp_fu_312_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_312_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_312_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_312_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_312_p_din1;
    end else begin
        grp_fu_312_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_316_ce = grp_kernel_2mm_node0_fu_159_grp_fu_316_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_316_ce = grp_kernel_2mm_node1_fu_126_grp_fu_316_p_ce;
    end else begin
        grp_fu_316_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_316_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_316_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_316_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_316_p_din0;
    end else begin
        grp_fu_316_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_316_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_316_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_316_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_316_p_din1;
    end else begin
        grp_fu_316_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_320_ce = grp_kernel_2mm_node0_fu_159_grp_fu_320_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_320_ce = grp_kernel_2mm_node1_fu_126_grp_fu_320_p_ce;
    end else begin
        grp_fu_320_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_320_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_320_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_320_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_320_p_din0;
    end else begin
        grp_fu_320_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_320_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_320_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_320_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_320_p_din1;
    end else begin
        grp_fu_320_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_324_ce = grp_kernel_2mm_node0_fu_159_grp_fu_324_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_324_ce = grp_kernel_2mm_node1_fu_126_grp_fu_324_p_ce;
    end else begin
        grp_fu_324_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_324_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_324_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_324_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_324_p_din0;
    end else begin
        grp_fu_324_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_324_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_324_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_324_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_324_p_din1;
    end else begin
        grp_fu_324_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_328_ce = grp_kernel_2mm_node0_fu_159_grp_fu_328_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_328_ce = grp_kernel_2mm_node1_fu_126_grp_fu_328_p_ce;
    end else begin
        grp_fu_328_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_328_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_328_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_328_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_328_p_din0;
    end else begin
        grp_fu_328_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_328_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_328_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_328_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_328_p_din1;
    end else begin
        grp_fu_328_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_332_ce = grp_kernel_2mm_node0_fu_159_grp_fu_332_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_332_ce = grp_kernel_2mm_node1_fu_126_grp_fu_332_p_ce;
    end else begin
        grp_fu_332_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_332_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_332_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_332_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_332_p_din0;
    end else begin
        grp_fu_332_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_332_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_332_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_332_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_332_p_din1;
    end else begin
        grp_fu_332_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_336_ce = grp_kernel_2mm_node0_fu_159_grp_fu_336_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_336_ce = grp_kernel_2mm_node1_fu_126_grp_fu_336_p_ce;
    end else begin
        grp_fu_336_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_336_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_336_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_336_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_336_p_din0;
    end else begin
        grp_fu_336_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_336_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_336_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_336_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_336_p_din1;
    end else begin
        grp_fu_336_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_340_ce = grp_kernel_2mm_node0_fu_159_grp_fu_340_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_340_ce = grp_kernel_2mm_node1_fu_126_grp_fu_340_p_ce;
    end else begin
        grp_fu_340_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_340_p0 = grp_kernel_2mm_node0_fu_159_grp_fu_340_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_340_p0 = grp_kernel_2mm_node1_fu_126_grp_fu_340_p_din0;
    end else begin
        grp_fu_340_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_340_p1 = grp_kernel_2mm_node0_fu_159_grp_fu_340_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_340_p1 = grp_kernel_2mm_node1_fu_126_grp_fu_340_p_din1;
    end else begin
        grp_fu_340_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v236_read = grp_kernel_2mm_node0_fu_159_v236_read;
    end else begin
        v236_read = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v236_write = grp_kernel_2mm_node1_fu_126_v236_write;
    end else begin
        v236_write = 1'b0;
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
            if (((grp_kernel_2mm_node1_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_kernel_2mm_node0_fu_159_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign grp_kernel_2mm_node0_fu_159_ap_start = grp_kernel_2mm_node0_fu_159_ap_start_reg;
assign grp_kernel_2mm_node1_fu_126_ap_start = grp_kernel_2mm_node1_fu_126_ap_start_reg;
assign v224_address0 = grp_kernel_2mm_node0_fu_159_v224_address0;
assign v224_address1 = grp_kernel_2mm_node0_fu_159_v224_address1;
assign v224_ce0 = grp_kernel_2mm_node0_fu_159_v224_ce0;
assign v224_ce1 = grp_kernel_2mm_node0_fu_159_v224_ce1;
assign v225_0_address0 = grp_kernel_2mm_node1_fu_126_v225_0_address0;
assign v225_0_address1 = grp_kernel_2mm_node1_fu_126_v225_0_address1;
assign v225_0_ce0 = grp_kernel_2mm_node1_fu_126_v225_0_ce0;
assign v225_0_ce1 = grp_kernel_2mm_node1_fu_126_v225_0_ce1;
assign v225_0_d0 = grp_kernel_2mm_node1_fu_126_v225_0_d0;
assign v225_0_d1 = grp_kernel_2mm_node1_fu_126_v225_0_d1;
assign v225_0_we0 = grp_kernel_2mm_node1_fu_126_v225_0_we0;
assign v225_0_we1 = grp_kernel_2mm_node1_fu_126_v225_0_we1;
assign v225_1_address0 = grp_kernel_2mm_node1_fu_126_v225_1_address0;
assign v225_1_address1 = grp_kernel_2mm_node1_fu_126_v225_1_address1;
assign v225_1_ce0 = grp_kernel_2mm_node1_fu_126_v225_1_ce0;
assign v225_1_ce1 = grp_kernel_2mm_node1_fu_126_v225_1_ce1;
assign v225_1_d0 = grp_kernel_2mm_node1_fu_126_v225_1_d0;
assign v225_1_d1 = grp_kernel_2mm_node1_fu_126_v225_1_d1;
assign v225_1_we0 = grp_kernel_2mm_node1_fu_126_v225_1_we0;
assign v225_1_we1 = grp_kernel_2mm_node1_fu_126_v225_1_we1;
assign v225_2_address0 = grp_kernel_2mm_node1_fu_126_v225_2_address0;
assign v225_2_address1 = grp_kernel_2mm_node1_fu_126_v225_2_address1;
assign v225_2_ce0 = grp_kernel_2mm_node1_fu_126_v225_2_ce0;
assign v225_2_ce1 = grp_kernel_2mm_node1_fu_126_v225_2_ce1;
assign v225_2_d0 = grp_kernel_2mm_node1_fu_126_v225_2_d0;
assign v225_2_d1 = grp_kernel_2mm_node1_fu_126_v225_2_d1;
assign v225_2_we0 = grp_kernel_2mm_node1_fu_126_v225_2_we0;
assign v225_2_we1 = grp_kernel_2mm_node1_fu_126_v225_2_we1;
assign v225_3_address0 = grp_kernel_2mm_node1_fu_126_v225_3_address0;
assign v225_3_address1 = grp_kernel_2mm_node1_fu_126_v225_3_address1;
assign v225_3_ce0 = grp_kernel_2mm_node1_fu_126_v225_3_ce0;
assign v225_3_ce1 = grp_kernel_2mm_node1_fu_126_v225_3_ce1;
assign v225_3_d0 = grp_kernel_2mm_node1_fu_126_v225_3_d0;
assign v225_3_d1 = grp_kernel_2mm_node1_fu_126_v225_3_d1;
assign v225_3_we0 = grp_kernel_2mm_node1_fu_126_v225_3_we0;
assign v225_3_we1 = grp_kernel_2mm_node1_fu_126_v225_3_we1;
assign v225_4_address0 = grp_kernel_2mm_node1_fu_126_v225_4_address0;
assign v225_4_address1 = grp_kernel_2mm_node1_fu_126_v225_4_address1;
assign v225_4_ce0 = grp_kernel_2mm_node1_fu_126_v225_4_ce0;
assign v225_4_ce1 = grp_kernel_2mm_node1_fu_126_v225_4_ce1;
assign v225_4_d0 = grp_kernel_2mm_node1_fu_126_v225_4_d0;
assign v225_4_d1 = grp_kernel_2mm_node1_fu_126_v225_4_d1;
assign v225_4_we0 = grp_kernel_2mm_node1_fu_126_v225_4_we0;
assign v225_4_we1 = grp_kernel_2mm_node1_fu_126_v225_4_we1;
assign v225_5_address0 = grp_kernel_2mm_node1_fu_126_v225_5_address0;
assign v225_5_address1 = grp_kernel_2mm_node1_fu_126_v225_5_address1;
assign v225_5_ce0 = grp_kernel_2mm_node1_fu_126_v225_5_ce0;
assign v225_5_ce1 = grp_kernel_2mm_node1_fu_126_v225_5_ce1;
assign v225_5_d0 = grp_kernel_2mm_node1_fu_126_v225_5_d0;
assign v225_5_d1 = grp_kernel_2mm_node1_fu_126_v225_5_d1;
assign v225_5_we0 = grp_kernel_2mm_node1_fu_126_v225_5_we0;
assign v225_5_we1 = grp_kernel_2mm_node1_fu_126_v225_5_we1;
assign v225_6_address0 = grp_kernel_2mm_node1_fu_126_v225_6_address0;
assign v225_6_address1 = grp_kernel_2mm_node1_fu_126_v225_6_address1;
assign v225_6_ce0 = grp_kernel_2mm_node1_fu_126_v225_6_ce0;
assign v225_6_ce1 = grp_kernel_2mm_node1_fu_126_v225_6_ce1;
assign v225_6_d0 = grp_kernel_2mm_node1_fu_126_v225_6_d0;
assign v225_6_d1 = grp_kernel_2mm_node1_fu_126_v225_6_d1;
assign v225_6_we0 = grp_kernel_2mm_node1_fu_126_v225_6_we0;
assign v225_6_we1 = grp_kernel_2mm_node1_fu_126_v225_6_we1;
assign v225_7_address0 = grp_kernel_2mm_node1_fu_126_v225_7_address0;
assign v225_7_address1 = grp_kernel_2mm_node1_fu_126_v225_7_address1;
assign v225_7_ce0 = grp_kernel_2mm_node1_fu_126_v225_7_ce0;
assign v225_7_ce1 = grp_kernel_2mm_node1_fu_126_v225_7_ce1;
assign v225_7_d0 = grp_kernel_2mm_node1_fu_126_v225_7_d0;
assign v225_7_d1 = grp_kernel_2mm_node1_fu_126_v225_7_d1;
assign v225_7_we0 = grp_kernel_2mm_node1_fu_126_v225_7_we0;
assign v225_7_we1 = grp_kernel_2mm_node1_fu_126_v225_7_we1;
assign v226_0_address0 = grp_kernel_2mm_node1_fu_126_v226_0_address0;
assign v226_0_address1 = grp_kernel_2mm_node1_fu_126_v226_0_address1;
assign v226_0_ce0 = grp_kernel_2mm_node1_fu_126_v226_0_ce0;
assign v226_0_ce1 = grp_kernel_2mm_node1_fu_126_v226_0_ce1;
assign v226_1_address0 = grp_kernel_2mm_node1_fu_126_v226_1_address0;
assign v226_1_address1 = grp_kernel_2mm_node1_fu_126_v226_1_address1;
assign v226_1_ce0 = grp_kernel_2mm_node1_fu_126_v226_1_ce0;
assign v226_1_ce1 = grp_kernel_2mm_node1_fu_126_v226_1_ce1;
assign v226_2_address0 = grp_kernel_2mm_node1_fu_126_v226_2_address0;
assign v226_2_address1 = grp_kernel_2mm_node1_fu_126_v226_2_address1;
assign v226_2_ce0 = grp_kernel_2mm_node1_fu_126_v226_2_ce0;
assign v226_2_ce1 = grp_kernel_2mm_node1_fu_126_v226_2_ce1;
assign v226_3_address0 = grp_kernel_2mm_node1_fu_126_v226_3_address0;
assign v226_3_address1 = grp_kernel_2mm_node1_fu_126_v226_3_address1;
assign v226_3_ce0 = grp_kernel_2mm_node1_fu_126_v226_3_ce0;
assign v226_3_ce1 = grp_kernel_2mm_node1_fu_126_v226_3_ce1;
assign v227_address0 = grp_kernel_2mm_node1_fu_126_v227_address0;
assign v227_address1 = grp_kernel_2mm_node1_fu_126_v227_address1;
assign v227_ce0 = grp_kernel_2mm_node1_fu_126_v227_ce0;
assign v227_ce1 = grp_kernel_2mm_node1_fu_126_v227_ce1;
assign v228_0_address0 = grp_kernel_2mm_node0_fu_159_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_fu_159_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_fu_159_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_fu_159_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_fu_159_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_fu_159_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_fu_159_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_fu_159_v228_1_ce1;
assign v228_2_address0 = grp_kernel_2mm_node0_fu_159_v228_2_address0;
assign v228_2_address1 = grp_kernel_2mm_node0_fu_159_v228_2_address1;
assign v228_2_ce0 = grp_kernel_2mm_node0_fu_159_v228_2_ce0;
assign v228_2_ce1 = grp_kernel_2mm_node0_fu_159_v228_2_ce1;
assign v228_3_address0 = grp_kernel_2mm_node0_fu_159_v228_3_address0;
assign v228_3_address1 = grp_kernel_2mm_node0_fu_159_v228_3_address1;
assign v228_3_ce0 = grp_kernel_2mm_node0_fu_159_v228_3_ce0;
assign v228_3_ce1 = grp_kernel_2mm_node0_fu_159_v228_3_ce1;
assign v228_4_address0 = grp_kernel_2mm_node0_fu_159_v228_4_address0;
assign v228_4_address1 = grp_kernel_2mm_node0_fu_159_v228_4_address1;
assign v228_4_ce0 = grp_kernel_2mm_node0_fu_159_v228_4_ce0;
assign v228_4_ce1 = grp_kernel_2mm_node0_fu_159_v228_4_ce1;
assign v228_5_address0 = grp_kernel_2mm_node0_fu_159_v228_5_address0;
assign v228_5_address1 = grp_kernel_2mm_node0_fu_159_v228_5_address1;
assign v228_5_ce0 = grp_kernel_2mm_node0_fu_159_v228_5_ce0;
assign v228_5_ce1 = grp_kernel_2mm_node0_fu_159_v228_5_ce1;
assign v228_6_address0 = grp_kernel_2mm_node0_fu_159_v228_6_address0;
assign v228_6_address1 = grp_kernel_2mm_node0_fu_159_v228_6_address1;
assign v228_6_ce0 = grp_kernel_2mm_node0_fu_159_v228_6_ce0;
assign v228_6_ce1 = grp_kernel_2mm_node0_fu_159_v228_6_ce1;
assign v228_7_address0 = grp_kernel_2mm_node0_fu_159_v228_7_address0;
assign v228_7_address1 = grp_kernel_2mm_node0_fu_159_v228_7_address1;
assign v228_7_ce0 = grp_kernel_2mm_node0_fu_159_v228_7_ce0;
assign v228_7_ce1 = grp_kernel_2mm_node0_fu_159_v228_7_ce1;
assign v229_0_address0 = grp_kernel_2mm_node0_fu_159_v229_0_address0;
assign v229_0_address1 = grp_kernel_2mm_node0_fu_159_v229_0_address1;
assign v229_0_ce0 = grp_kernel_2mm_node0_fu_159_v229_0_ce0;
assign v229_0_ce1 = grp_kernel_2mm_node0_fu_159_v229_0_ce1;
assign v229_0_d0 = grp_kernel_2mm_node0_fu_159_v229_0_d0;
assign v229_0_d1 = grp_kernel_2mm_node0_fu_159_v229_0_d1;
assign v229_0_we0 = grp_kernel_2mm_node0_fu_159_v229_0_we0;
assign v229_0_we1 = grp_kernel_2mm_node0_fu_159_v229_0_we1;
assign v229_1_address0 = grp_kernel_2mm_node0_fu_159_v229_1_address0;
assign v229_1_address1 = grp_kernel_2mm_node0_fu_159_v229_1_address1;
assign v229_1_ce0 = grp_kernel_2mm_node0_fu_159_v229_1_ce0;
assign v229_1_ce1 = grp_kernel_2mm_node0_fu_159_v229_1_ce1;
assign v229_1_d0 = grp_kernel_2mm_node0_fu_159_v229_1_d0;
assign v229_1_d1 = grp_kernel_2mm_node0_fu_159_v229_1_d1;
assign v229_1_we0 = grp_kernel_2mm_node0_fu_159_v229_1_we0;
assign v229_1_we1 = grp_kernel_2mm_node0_fu_159_v229_1_we1;
assign v229_2_address0 = grp_kernel_2mm_node0_fu_159_v229_2_address0;
assign v229_2_address1 = grp_kernel_2mm_node0_fu_159_v229_2_address1;
assign v229_2_ce0 = grp_kernel_2mm_node0_fu_159_v229_2_ce0;
assign v229_2_ce1 = grp_kernel_2mm_node0_fu_159_v229_2_ce1;
assign v229_2_d0 = grp_kernel_2mm_node0_fu_159_v229_2_d0;
assign v229_2_d1 = grp_kernel_2mm_node0_fu_159_v229_2_d1;
assign v229_2_we0 = grp_kernel_2mm_node0_fu_159_v229_2_we0;
assign v229_2_we1 = grp_kernel_2mm_node0_fu_159_v229_2_we1;
assign v229_3_address0 = grp_kernel_2mm_node0_fu_159_v229_3_address0;
assign v229_3_address1 = grp_kernel_2mm_node0_fu_159_v229_3_address1;
assign v229_3_ce0 = grp_kernel_2mm_node0_fu_159_v229_3_ce0;
assign v229_3_ce1 = grp_kernel_2mm_node0_fu_159_v229_3_ce1;
assign v229_3_d0 = grp_kernel_2mm_node0_fu_159_v229_3_d0;
assign v229_3_d1 = grp_kernel_2mm_node0_fu_159_v229_3_d1;
assign v229_3_we0 = grp_kernel_2mm_node0_fu_159_v229_3_we0;
assign v229_3_we1 = grp_kernel_2mm_node0_fu_159_v229_3_we1;
assign v229_4_address0 = grp_kernel_2mm_node0_fu_159_v229_4_address0;
assign v229_4_address1 = grp_kernel_2mm_node0_fu_159_v229_4_address1;
assign v229_4_ce0 = grp_kernel_2mm_node0_fu_159_v229_4_ce0;
assign v229_4_ce1 = grp_kernel_2mm_node0_fu_159_v229_4_ce1;
assign v229_4_d0 = grp_kernel_2mm_node0_fu_159_v229_4_d0;
assign v229_4_d1 = grp_kernel_2mm_node0_fu_159_v229_4_d1;
assign v229_4_we0 = grp_kernel_2mm_node0_fu_159_v229_4_we0;
assign v229_4_we1 = grp_kernel_2mm_node0_fu_159_v229_4_we1;
assign v229_5_address0 = grp_kernel_2mm_node0_fu_159_v229_5_address0;
assign v229_5_address1 = grp_kernel_2mm_node0_fu_159_v229_5_address1;
assign v229_5_ce0 = grp_kernel_2mm_node0_fu_159_v229_5_ce0;
assign v229_5_ce1 = grp_kernel_2mm_node0_fu_159_v229_5_ce1;
assign v229_5_d0 = grp_kernel_2mm_node0_fu_159_v229_5_d0;
assign v229_5_d1 = grp_kernel_2mm_node0_fu_159_v229_5_d1;
assign v229_5_we0 = grp_kernel_2mm_node0_fu_159_v229_5_we0;
assign v229_5_we1 = grp_kernel_2mm_node0_fu_159_v229_5_we1;
assign v229_6_address0 = grp_kernel_2mm_node0_fu_159_v229_6_address0;
assign v229_6_address1 = grp_kernel_2mm_node0_fu_159_v229_6_address1;
assign v229_6_ce0 = grp_kernel_2mm_node0_fu_159_v229_6_ce0;
assign v229_6_ce1 = grp_kernel_2mm_node0_fu_159_v229_6_ce1;
assign v229_6_d0 = grp_kernel_2mm_node0_fu_159_v229_6_d0;
assign v229_6_d1 = grp_kernel_2mm_node0_fu_159_v229_6_d1;
assign v229_6_we0 = grp_kernel_2mm_node0_fu_159_v229_6_we0;
assign v229_6_we1 = grp_kernel_2mm_node0_fu_159_v229_6_we1;
assign v229_7_address0 = grp_kernel_2mm_node0_fu_159_v229_7_address0;
assign v229_7_address1 = grp_kernel_2mm_node0_fu_159_v229_7_address1;
assign v229_7_ce0 = grp_kernel_2mm_node0_fu_159_v229_7_ce0;
assign v229_7_ce1 = grp_kernel_2mm_node0_fu_159_v229_7_ce1;
assign v229_7_d0 = grp_kernel_2mm_node0_fu_159_v229_7_d0;
assign v229_7_d1 = grp_kernel_2mm_node0_fu_159_v229_7_d1;
assign v229_7_we0 = grp_kernel_2mm_node0_fu_159_v229_7_we0;
assign v229_7_we1 = grp_kernel_2mm_node0_fu_159_v229_7_we1;
endmodule 