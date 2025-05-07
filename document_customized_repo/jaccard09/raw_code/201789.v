module kernel_3mm_kernel_3mm_node2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v262_address0,v262_ce0,v262_q0,v263_0_0_address0,v263_0_0_ce0,v263_0_0_q0,v263_0_1_address0,v263_0_1_ce0,v263_0_1_q0,v263_0_2_address0,v263_0_2_ce0,v263_0_2_q0,v263_0_3_address0,v263_0_3_ce0,v263_0_3_q0,v263_0_4_address0,v263_0_4_ce0,v263_0_4_q0,v263_0_5_address0,v263_0_5_ce0,v263_0_5_q0,v263_0_6_address0,v263_0_6_ce0,v263_0_6_q0,v263_0_7_address0,v263_0_7_ce0,v263_0_7_q0,v263_1_0_address0,v263_1_0_ce0,v263_1_0_q0,v263_1_1_address0,v263_1_1_ce0,v263_1_1_q0,v263_1_2_address0,v263_1_2_ce0,v263_1_2_q0,v263_1_3_address0,v263_1_3_ce0,v263_1_3_q0,v263_1_4_address0,v263_1_4_ce0,v263_1_4_q0,v263_1_5_address0,v263_1_5_ce0,v263_1_5_q0,v263_1_6_address0,v263_1_6_ce0,v263_1_6_q0,v263_1_7_address0,v263_1_7_ce0,v263_1_7_q0,v263_2_0_address0,v263_2_0_ce0,v263_2_0_q0,v263_2_1_address0,v263_2_1_ce0,v263_2_1_q0,v263_2_2_address0,v263_2_2_ce0,v263_2_2_q0,v263_2_3_address0,v263_2_3_ce0,v263_2_3_q0,v263_2_4_address0,v263_2_4_ce0,v263_2_4_q0,v263_2_5_address0,v263_2_5_ce0,v263_2_5_q0,v263_2_6_address0,v263_2_6_ce0,v263_2_6_q0,v263_2_7_address0,v263_2_7_ce0,v263_2_7_q0,v263_3_0_address0,v263_3_0_ce0,v263_3_0_q0,v263_3_1_address0,v263_3_1_ce0,v263_3_1_q0,v263_3_2_address0,v263_3_2_ce0,v263_3_2_q0,v263_3_3_address0,v263_3_3_ce0,v263_3_3_q0,v263_3_4_address0,v263_3_4_ce0,v263_3_4_q0,v263_3_5_address0,v263_3_5_ce0,v263_3_5_q0,v263_3_6_address0,v263_3_6_ce0,v263_3_6_q0,v263_3_7_address0,v263_3_7_ce0,v263_3_7_q0,v263_4_0_address0,v263_4_0_ce0,v263_4_0_q0,v263_4_1_address0,v263_4_1_ce0,v263_4_1_q0,v263_4_2_address0,v263_4_2_ce0,v263_4_2_q0,v263_4_3_address0,v263_4_3_ce0,v263_4_3_q0,v263_4_4_address0,v263_4_4_ce0,v263_4_4_q0,v263_4_5_address0,v263_4_5_ce0,v263_4_5_q0,v263_4_6_address0,v263_4_6_ce0,v263_4_6_q0,v263_4_7_address0,v263_4_7_ce0,v263_4_7_q0,v263_5_0_address0,v263_5_0_ce0,v263_5_0_q0,v263_5_1_address0,v263_5_1_ce0,v263_5_1_q0,v263_5_2_address0,v263_5_2_ce0,v263_5_2_q0,v263_5_3_address0,v263_5_3_ce0,v263_5_3_q0,v263_5_4_address0,v263_5_4_ce0,v263_5_4_q0,v263_5_5_address0,v263_5_5_ce0,v263_5_5_q0,v263_5_6_address0,v263_5_6_ce0,v263_5_6_q0,v263_5_7_address0,v263_5_7_ce0,v263_5_7_q0,v263_6_0_address0,v263_6_0_ce0,v263_6_0_q0,v263_6_1_address0,v263_6_1_ce0,v263_6_1_q0,v263_6_2_address0,v263_6_2_ce0,v263_6_2_q0,v263_6_3_address0,v263_6_3_ce0,v263_6_3_q0,v263_6_4_address0,v263_6_4_ce0,v263_6_4_q0,v263_6_5_address0,v263_6_5_ce0,v263_6_5_q0,v263_6_6_address0,v263_6_6_ce0,v263_6_6_q0,v263_6_7_address0,v263_6_7_ce0,v263_6_7_q0,v263_7_0_address0,v263_7_0_ce0,v263_7_0_q0,v263_7_1_address0,v263_7_1_ce0,v263_7_1_q0,v263_7_2_address0,v263_7_2_ce0,v263_7_2_q0,v263_7_3_address0,v263_7_3_ce0,v263_7_3_q0,v263_7_4_address0,v263_7_4_ce0,v263_7_4_q0,v263_7_5_address0,v263_7_5_ce0,v263_7_5_q0,v263_7_6_address0,v263_7_6_ce0,v263_7_6_q0,v263_7_7_address0,v263_7_7_ce0,v263_7_7_q0,v279_din,v279_full_n,v279_write,v261_address0,v261_ce0,v261_we0,v261_d0,v261_q0,v261_address1,v261_ce1,v261_we1,v261_d1,v261_q1); 
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v262_address0;
output   v262_ce0;
input  [31:0] v262_q0;
output  [9:0] v263_0_0_address0;
output   v263_0_0_ce0;
input  [31:0] v263_0_0_q0;
output  [9:0] v263_0_1_address0;
output   v263_0_1_ce0;
input  [31:0] v263_0_1_q0;
output  [9:0] v263_0_2_address0;
output   v263_0_2_ce0;
input  [31:0] v263_0_2_q0;
output  [9:0] v263_0_3_address0;
output   v263_0_3_ce0;
input  [31:0] v263_0_3_q0;
output  [9:0] v263_0_4_address0;
output   v263_0_4_ce0;
input  [31:0] v263_0_4_q0;
output  [9:0] v263_0_5_address0;
output   v263_0_5_ce0;
input  [31:0] v263_0_5_q0;
output  [9:0] v263_0_6_address0;
output   v263_0_6_ce0;
input  [31:0] v263_0_6_q0;
output  [9:0] v263_0_7_address0;
output   v263_0_7_ce0;
input  [31:0] v263_0_7_q0;
output  [9:0] v263_1_0_address0;
output   v263_1_0_ce0;
input  [31:0] v263_1_0_q0;
output  [9:0] v263_1_1_address0;
output   v263_1_1_ce0;
input  [31:0] v263_1_1_q0;
output  [9:0] v263_1_2_address0;
output   v263_1_2_ce0;
input  [31:0] v263_1_2_q0;
output  [9:0] v263_1_3_address0;
output   v263_1_3_ce0;
input  [31:0] v263_1_3_q0;
output  [9:0] v263_1_4_address0;
output   v263_1_4_ce0;
input  [31:0] v263_1_4_q0;
output  [9:0] v263_1_5_address0;
output   v263_1_5_ce0;
input  [31:0] v263_1_5_q0;
output  [9:0] v263_1_6_address0;
output   v263_1_6_ce0;
input  [31:0] v263_1_6_q0;
output  [9:0] v263_1_7_address0;
output   v263_1_7_ce0;
input  [31:0] v263_1_7_q0;
output  [9:0] v263_2_0_address0;
output   v263_2_0_ce0;
input  [31:0] v263_2_0_q0;
output  [9:0] v263_2_1_address0;
output   v263_2_1_ce0;
input  [31:0] v263_2_1_q0;
output  [9:0] v263_2_2_address0;
output   v263_2_2_ce0;
input  [31:0] v263_2_2_q0;
output  [9:0] v263_2_3_address0;
output   v263_2_3_ce0;
input  [31:0] v263_2_3_q0;
output  [9:0] v263_2_4_address0;
output   v263_2_4_ce0;
input  [31:0] v263_2_4_q0;
output  [9:0] v263_2_5_address0;
output   v263_2_5_ce0;
input  [31:0] v263_2_5_q0;
output  [9:0] v263_2_6_address0;
output   v263_2_6_ce0;
input  [31:0] v263_2_6_q0;
output  [9:0] v263_2_7_address0;
output   v263_2_7_ce0;
input  [31:0] v263_2_7_q0;
output  [9:0] v263_3_0_address0;
output   v263_3_0_ce0;
input  [31:0] v263_3_0_q0;
output  [9:0] v263_3_1_address0;
output   v263_3_1_ce0;
input  [31:0] v263_3_1_q0;
output  [9:0] v263_3_2_address0;
output   v263_3_2_ce0;
input  [31:0] v263_3_2_q0;
output  [9:0] v263_3_3_address0;
output   v263_3_3_ce0;
input  [31:0] v263_3_3_q0;
output  [9:0] v263_3_4_address0;
output   v263_3_4_ce0;
input  [31:0] v263_3_4_q0;
output  [9:0] v263_3_5_address0;
output   v263_3_5_ce0;
input  [31:0] v263_3_5_q0;
output  [9:0] v263_3_6_address0;
output   v263_3_6_ce0;
input  [31:0] v263_3_6_q0;
output  [9:0] v263_3_7_address0;
output   v263_3_7_ce0;
input  [31:0] v263_3_7_q0;
output  [9:0] v263_4_0_address0;
output   v263_4_0_ce0;
input  [31:0] v263_4_0_q0;
output  [9:0] v263_4_1_address0;
output   v263_4_1_ce0;
input  [31:0] v263_4_1_q0;
output  [9:0] v263_4_2_address0;
output   v263_4_2_ce0;
input  [31:0] v263_4_2_q0;
output  [9:0] v263_4_3_address0;
output   v263_4_3_ce0;
input  [31:0] v263_4_3_q0;
output  [9:0] v263_4_4_address0;
output   v263_4_4_ce0;
input  [31:0] v263_4_4_q0;
output  [9:0] v263_4_5_address0;
output   v263_4_5_ce0;
input  [31:0] v263_4_5_q0;
output  [9:0] v263_4_6_address0;
output   v263_4_6_ce0;
input  [31:0] v263_4_6_q0;
output  [9:0] v263_4_7_address0;
output   v263_4_7_ce0;
input  [31:0] v263_4_7_q0;
output  [9:0] v263_5_0_address0;
output   v263_5_0_ce0;
input  [31:0] v263_5_0_q0;
output  [9:0] v263_5_1_address0;
output   v263_5_1_ce0;
input  [31:0] v263_5_1_q0;
output  [9:0] v263_5_2_address0;
output   v263_5_2_ce0;
input  [31:0] v263_5_2_q0;
output  [9:0] v263_5_3_address0;
output   v263_5_3_ce0;
input  [31:0] v263_5_3_q0;
output  [9:0] v263_5_4_address0;
output   v263_5_4_ce0;
input  [31:0] v263_5_4_q0;
output  [9:0] v263_5_5_address0;
output   v263_5_5_ce0;
input  [31:0] v263_5_5_q0;
output  [9:0] v263_5_6_address0;
output   v263_5_6_ce0;
input  [31:0] v263_5_6_q0;
output  [9:0] v263_5_7_address0;
output   v263_5_7_ce0;
input  [31:0] v263_5_7_q0;
output  [9:0] v263_6_0_address0;
output   v263_6_0_ce0;
input  [31:0] v263_6_0_q0;
output  [9:0] v263_6_1_address0;
output   v263_6_1_ce0;
input  [31:0] v263_6_1_q0;
output  [9:0] v263_6_2_address0;
output   v263_6_2_ce0;
input  [31:0] v263_6_2_q0;
output  [9:0] v263_6_3_address0;
output   v263_6_3_ce0;
input  [31:0] v263_6_3_q0;
output  [9:0] v263_6_4_address0;
output   v263_6_4_ce0;
input  [31:0] v263_6_4_q0;
output  [9:0] v263_6_5_address0;
output   v263_6_5_ce0;
input  [31:0] v263_6_5_q0;
output  [9:0] v263_6_6_address0;
output   v263_6_6_ce0;
input  [31:0] v263_6_6_q0;
output  [9:0] v263_6_7_address0;
output   v263_6_7_ce0;
input  [31:0] v263_6_7_q0;
output  [9:0] v263_7_0_address0;
output   v263_7_0_ce0;
input  [31:0] v263_7_0_q0;
output  [9:0] v263_7_1_address0;
output   v263_7_1_ce0;
input  [31:0] v263_7_1_q0;
output  [9:0] v263_7_2_address0;
output   v263_7_2_ce0;
input  [31:0] v263_7_2_q0;
output  [9:0] v263_7_3_address0;
output   v263_7_3_ce0;
input  [31:0] v263_7_3_q0;
output  [9:0] v263_7_4_address0;
output   v263_7_4_ce0;
input  [31:0] v263_7_4_q0;
output  [9:0] v263_7_5_address0;
output   v263_7_5_ce0;
input  [31:0] v263_7_5_q0;
output  [9:0] v263_7_6_address0;
output   v263_7_6_ce0;
input  [31:0] v263_7_6_q0;
output  [9:0] v263_7_7_address0;
output   v263_7_7_ce0;
input  [31:0] v263_7_7_q0;
output  [0:0] v279_din;
input   v279_full_n;
output   v279_write;
output  [15:0] v261_address0;
output   v261_ce0;
output   v261_we0;
output  [31:0] v261_d0;
input  [31:0] v261_q0;
output  [15:0] v261_address1;
output   v261_ce1;
output   v261_we1;
output  [31:0] v261_d1;
input  [31:0] v261_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v279_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln277_fu_376_p2;
reg   [7:0] v196_1_reg_496;
wire   [9:0] sub_ln277_fu_415_p2;
reg   [9:0] sub_ln277_reg_504;
reg   [2:0] trunc_ln_reg_509;
wire   [0:0] cmp11_fu_433_p2;
reg   [0:0] cmp11_reg_514;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_ap_start;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_ap_done;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_ap_idle;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_ap_ready;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v262_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v262_ce0;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_ce0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_we0;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_d0;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_ce1;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_we1;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_d1;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_0_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_0_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_1_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_1_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_2_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_2_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_3_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_3_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_4_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_4_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_5_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_5_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_6_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_6_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_7_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_7_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_0_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_0_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_1_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_1_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_2_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_2_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_3_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_3_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_4_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_4_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_5_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_5_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_6_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_6_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_7_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_7_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_0_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_0_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_1_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_1_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_2_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_2_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_3_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_3_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_4_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_4_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_5_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_5_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_6_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_6_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_7_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_7_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_0_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_0_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_1_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_1_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_2_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_2_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_3_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_3_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_4_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_4_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_5_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_5_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_6_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_6_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_7_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_7_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_0_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_0_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_1_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_1_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_2_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_2_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_3_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_3_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_4_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_4_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_5_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_5_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_6_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_6_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_7_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_7_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_0_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_0_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_1_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_1_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_2_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_2_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_3_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_3_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_4_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_4_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_5_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_5_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_6_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_6_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_7_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_7_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_0_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_0_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_1_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_1_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_2_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_2_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_3_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_3_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_4_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_4_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_5_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_5_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_6_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_6_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_7_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_7_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_0_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_0_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_1_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_1_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_2_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_2_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_3_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_3_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_4_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_4_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_5_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_5_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_6_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_6_ce0;
wire   [9:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_7_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_7_ce0;
reg    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_ap_start_reg;
reg    ap_block_state2_ignore_call10;
wire    ap_CS_fsm_state3;
reg   [7:0] phi_urem_fu_188;
wire   [7:0] select_ln277_fu_452_p3;
reg    ap_block_state2;
reg   [16:0] phi_mul_fu_192;
wire   [16:0] add_ln277_1_fu_370_p2;
reg   [7:0] v196_fu_196;
wire   [7:0] add_ln277_fu_382_p2;
reg    v279_write_local;
wire   [4:0] trunc_ln283_fu_391_p1;
wire   [6:0] trunc_ln283_1_fu_395_p1;
wire   [9:0] tmp_fu_399_p3;
wire   [9:0] tmp_1_fu_407_p3;
wire   [7:0] add_ln277_2_fu_440_p2;
wire   [0:0] icmp_ln277_1_fu_446_p2;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_ap_start_reg = 1'b0;
#0 phi_urem_fu_188 = 8'd0;
#0 phi_mul_fu_192 = 17'd0;
#0 v196_fu_196 = 8'd0;
end
kernel_3mm_kernel_3mm_node2_Pipeline_label_7_label_8 grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_ap_start),.ap_done(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_ap_done),.ap_idle(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_ap_idle),.ap_ready(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_ap_ready),.zext_ln277(v196_1_reg_496),.v262_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v262_address0),.v262_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v262_ce0),.v262_q0(v262_q0),.v261_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_address0),.v261_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_ce0),.v261_we0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_we0),.v261_d0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_d0),.v261_q0(v261_q0),.v261_address1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_address1),.v261_ce1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_ce1),.v261_we1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_we1),.v261_d1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_d1),.v261_q1(v261_q1),.mul_ln283(sub_ln277_reg_504),.v263_0_0_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_0_address0),.v263_0_0_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_0_ce0),.v263_0_0_q0(v263_0_0_q0),.v263_0_1_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_1_address0),.v263_0_1_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_1_ce0),.v263_0_1_q0(v263_0_1_q0),.v263_0_2_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_2_address0),.v263_0_2_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_2_ce0),.v263_0_2_q0(v263_0_2_q0),.v263_0_3_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_3_address0),.v263_0_3_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_3_ce0),.v263_0_3_q0(v263_0_3_q0),.v263_0_4_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_4_address0),.v263_0_4_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_4_ce0),.v263_0_4_q0(v263_0_4_q0),.v263_0_5_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_5_address0),.v263_0_5_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_5_ce0),.v263_0_5_q0(v263_0_5_q0),.v263_0_6_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_6_address0),.v263_0_6_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_6_ce0),.v263_0_6_q0(v263_0_6_q0),.v263_0_7_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_7_address0),.v263_0_7_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_7_ce0),.v263_0_7_q0(v263_0_7_q0),.v263_1_0_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_0_address0),.v263_1_0_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_0_ce0),.v263_1_0_q0(v263_1_0_q0),.v263_1_1_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_1_address0),.v263_1_1_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_1_ce0),.v263_1_1_q0(v263_1_1_q0),.v263_1_2_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_2_address0),.v263_1_2_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_2_ce0),.v263_1_2_q0(v263_1_2_q0),.v263_1_3_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_3_address0),.v263_1_3_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_3_ce0),.v263_1_3_q0(v263_1_3_q0),.v263_1_4_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_4_address0),.v263_1_4_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_4_ce0),.v263_1_4_q0(v263_1_4_q0),.v263_1_5_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_5_address0),.v263_1_5_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_5_ce0),.v263_1_5_q0(v263_1_5_q0),.v263_1_6_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_6_address0),.v263_1_6_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_6_ce0),.v263_1_6_q0(v263_1_6_q0),.v263_1_7_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_7_address0),.v263_1_7_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_7_ce0),.v263_1_7_q0(v263_1_7_q0),.v263_2_0_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_0_address0),.v263_2_0_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_0_ce0),.v263_2_0_q0(v263_2_0_q0),.v263_2_1_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_1_address0),.v263_2_1_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_1_ce0),.v263_2_1_q0(v263_2_1_q0),.v263_2_2_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_2_address0),.v263_2_2_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_2_ce0),.v263_2_2_q0(v263_2_2_q0),.v263_2_3_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_3_address0),.v263_2_3_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_3_ce0),.v263_2_3_q0(v263_2_3_q0),.v263_2_4_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_4_address0),.v263_2_4_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_4_ce0),.v263_2_4_q0(v263_2_4_q0),.v263_2_5_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_5_address0),.v263_2_5_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_5_ce0),.v263_2_5_q0(v263_2_5_q0),.v263_2_6_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_6_address0),.v263_2_6_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_6_ce0),.v263_2_6_q0(v263_2_6_q0),.v263_2_7_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_7_address0),.v263_2_7_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_7_ce0),.v263_2_7_q0(v263_2_7_q0),.v263_3_0_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_0_address0),.v263_3_0_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_0_ce0),.v263_3_0_q0(v263_3_0_q0),.v263_3_1_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_1_address0),.v263_3_1_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_1_ce0),.v263_3_1_q0(v263_3_1_q0),.v263_3_2_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_2_address0),.v263_3_2_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_2_ce0),.v263_3_2_q0(v263_3_2_q0),.v263_3_3_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_3_address0),.v263_3_3_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_3_ce0),.v263_3_3_q0(v263_3_3_q0),.v263_3_4_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_4_address0),.v263_3_4_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_4_ce0),.v263_3_4_q0(v263_3_4_q0),.v263_3_5_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_5_address0),.v263_3_5_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_5_ce0),.v263_3_5_q0(v263_3_5_q0),.v263_3_6_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_6_address0),.v263_3_6_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_6_ce0),.v263_3_6_q0(v263_3_6_q0),.v263_3_7_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_7_address0),.v263_3_7_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_7_ce0),.v263_3_7_q0(v263_3_7_q0),.v263_4_0_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_0_address0),.v263_4_0_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_0_ce0),.v263_4_0_q0(v263_4_0_q0),.v263_4_1_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_1_address0),.v263_4_1_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_1_ce0),.v263_4_1_q0(v263_4_1_q0),.v263_4_2_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_2_address0),.v263_4_2_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_2_ce0),.v263_4_2_q0(v263_4_2_q0),.v263_4_3_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_3_address0),.v263_4_3_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_3_ce0),.v263_4_3_q0(v263_4_3_q0),.v263_4_4_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_4_address0),.v263_4_4_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_4_ce0),.v263_4_4_q0(v263_4_4_q0),.v263_4_5_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_5_address0),.v263_4_5_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_5_ce0),.v263_4_5_q0(v263_4_5_q0),.v263_4_6_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_6_address0),.v263_4_6_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_6_ce0),.v263_4_6_q0(v263_4_6_q0),.v263_4_7_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_7_address0),.v263_4_7_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_7_ce0),.v263_4_7_q0(v263_4_7_q0),.v263_5_0_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_0_address0),.v263_5_0_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_0_ce0),.v263_5_0_q0(v263_5_0_q0),.v263_5_1_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_1_address0),.v263_5_1_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_1_ce0),.v263_5_1_q0(v263_5_1_q0),.v263_5_2_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_2_address0),.v263_5_2_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_2_ce0),.v263_5_2_q0(v263_5_2_q0),.v263_5_3_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_3_address0),.v263_5_3_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_3_ce0),.v263_5_3_q0(v263_5_3_q0),.v263_5_4_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_4_address0),.v263_5_4_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_4_ce0),.v263_5_4_q0(v263_5_4_q0),.v263_5_5_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_5_address0),.v263_5_5_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_5_ce0),.v263_5_5_q0(v263_5_5_q0),.v263_5_6_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_6_address0),.v263_5_6_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_6_ce0),.v263_5_6_q0(v263_5_6_q0),.v263_5_7_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_7_address0),.v263_5_7_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_7_ce0),.v263_5_7_q0(v263_5_7_q0),.v263_6_0_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_0_address0),.v263_6_0_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_0_ce0),.v263_6_0_q0(v263_6_0_q0),.v263_6_1_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_1_address0),.v263_6_1_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_1_ce0),.v263_6_1_q0(v263_6_1_q0),.v263_6_2_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_2_address0),.v263_6_2_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_2_ce0),.v263_6_2_q0(v263_6_2_q0),.v263_6_3_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_3_address0),.v263_6_3_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_3_ce0),.v263_6_3_q0(v263_6_3_q0),.v263_6_4_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_4_address0),.v263_6_4_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_4_ce0),.v263_6_4_q0(v263_6_4_q0),.v263_6_5_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_5_address0),.v263_6_5_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_5_ce0),.v263_6_5_q0(v263_6_5_q0),.v263_6_6_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_6_address0),.v263_6_6_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_6_ce0),.v263_6_6_q0(v263_6_6_q0),.v263_6_7_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_7_address0),.v263_6_7_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_7_ce0),.v263_6_7_q0(v263_6_7_q0),.v263_7_0_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_0_address0),.v263_7_0_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_0_ce0),.v263_7_0_q0(v263_7_0_q0),.v263_7_1_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_1_address0),.v263_7_1_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_1_ce0),.v263_7_1_q0(v263_7_1_q0),.v263_7_2_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_2_address0),.v263_7_2_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_2_ce0),.v263_7_2_q0(v263_7_2_q0),.v263_7_3_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_3_address0),.v263_7_3_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_3_ce0),.v263_7_3_q0(v263_7_3_q0),.v263_7_4_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_4_address0),.v263_7_4_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_4_ce0),.v263_7_4_q0(v263_7_4_q0),.v263_7_5_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_5_address0),.v263_7_5_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_5_ce0),.v263_7_5_q0(v263_7_5_q0),.v263_7_6_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_6_address0),.v263_7_6_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_6_ce0),.v263_7_6_q0(v263_7_6_q0),.v263_7_7_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_7_address0),.v263_7_7_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_7_ce0),.v263_7_7_q0(v263_7_7_q0),.cmp11(cmp11_reg_514),.trunc_ln(trunc_ln_reg_509));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state2_ignore_call10) & (icmp_ln277_fu_376_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_ap_ready == 1'b1)) begin
            grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_192 <= 17'd0;
    end else if (((1'b0 == ap_block_state2) & (icmp_ln277_fu_376_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        phi_mul_fu_192 <= add_ln277_1_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_urem_fu_188 <= 8'd0;
    end else if (((1'b0 == ap_block_state2) & (icmp_ln277_fu_376_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        phi_urem_fu_188 <= select_ln277_fu_452_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v196_fu_196 <= 8'd0;
    end else if (((1'b0 == ap_block_state2) & (icmp_ln277_fu_376_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v196_fu_196 <= add_ln277_fu_382_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_514 <= cmp11_fu_433_p2;
        sub_ln277_reg_504[9 : 3] <= sub_ln277_fu_415_p2[9 : 3];
        trunc_ln_reg_509 <= {{phi_mul_fu_192[15:13]}};
        v196_1_reg_496 <= v196_fu_196;
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
always @ (*) begin
    if ((grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_state2) & (icmp_ln277_fu_376_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (icmp_ln277_fu_376_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln277_fu_376_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v279_blk_n = v279_full_n;
    end else begin
        v279_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (icmp_ln277_fu_376_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v279_write_local = 1'b1;
    end else begin
        v279_write_local = 1'b0;
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
            if (((1'b0 == ap_block_state2) & (icmp_ln277_fu_376_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (icmp_ln277_fu_376_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln277_1_fu_370_p2 = (phi_mul_fu_192 + 17'd328);
assign add_ln277_2_fu_440_p2 = (phi_urem_fu_188 + 8'd1);
assign add_ln277_fu_382_p2 = (v196_fu_196 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_block_state2 = ((icmp_ln277_fu_376_p2 == 1'd1) & (v279_full_n == 1'b0));
end
always @ (*) begin
    ap_block_state2_ignore_call10 = ((icmp_ln277_fu_376_p2 == 1'd1) & (v279_full_n == 1'b0));
end
assign cmp11_fu_433_p2 = ((v196_fu_196 == 8'd0) ? 1'b1 : 1'b0);
assign grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_ap_start = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_ap_start_reg;
assign icmp_ln277_1_fu_446_p2 = ((add_ln277_2_fu_440_p2 < 8'd25) ? 1'b1 : 1'b0);
assign icmp_ln277_fu_376_p2 = ((v196_fu_196 == 8'd200) ? 1'b1 : 1'b0);
assign select_ln277_fu_452_p3 = ((icmp_ln277_1_fu_446_p2[0:0] == 1'b1) ? add_ln277_2_fu_440_p2 : 8'd0);
assign sub_ln277_fu_415_p2 = (tmp_fu_399_p3 - tmp_1_fu_407_p3);
assign tmp_1_fu_407_p3 = {{trunc_ln283_1_fu_395_p1}, {3'd0}};
assign tmp_fu_399_p3 = {{trunc_ln283_fu_391_p1}, {5'd0}};
assign trunc_ln283_1_fu_395_p1 = phi_urem_fu_188[6:0];
assign trunc_ln283_fu_391_p1 = phi_urem_fu_188[4:0];
assign v261_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_address0;
assign v261_address1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_address1;
assign v261_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_ce0;
assign v261_ce1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_ce1;
assign v261_d0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_d0;
assign v261_d1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_d1;
assign v261_we0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_we0;
assign v261_we1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v261_we1;
assign v262_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v262_address0;
assign v262_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v262_ce0;
assign v263_0_0_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_0_address0;
assign v263_0_0_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_0_ce0;
assign v263_0_1_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_1_address0;
assign v263_0_1_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_1_ce0;
assign v263_0_2_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_2_address0;
assign v263_0_2_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_2_ce0;
assign v263_0_3_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_3_address0;
assign v263_0_3_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_3_ce0;
assign v263_0_4_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_4_address0;
assign v263_0_4_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_4_ce0;
assign v263_0_5_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_5_address0;
assign v263_0_5_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_5_ce0;
assign v263_0_6_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_6_address0;
assign v263_0_6_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_6_ce0;
assign v263_0_7_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_7_address0;
assign v263_0_7_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_0_7_ce0;
assign v263_1_0_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_0_address0;
assign v263_1_0_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_0_ce0;
assign v263_1_1_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_1_address0;
assign v263_1_1_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_1_ce0;
assign v263_1_2_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_2_address0;
assign v263_1_2_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_2_ce0;
assign v263_1_3_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_3_address0;
assign v263_1_3_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_3_ce0;
assign v263_1_4_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_4_address0;
assign v263_1_4_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_4_ce0;
assign v263_1_5_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_5_address0;
assign v263_1_5_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_5_ce0;
assign v263_1_6_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_6_address0;
assign v263_1_6_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_6_ce0;
assign v263_1_7_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_7_address0;
assign v263_1_7_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_1_7_ce0;
assign v263_2_0_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_0_address0;
assign v263_2_0_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_0_ce0;
assign v263_2_1_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_1_address0;
assign v263_2_1_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_1_ce0;
assign v263_2_2_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_2_address0;
assign v263_2_2_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_2_ce0;
assign v263_2_3_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_3_address0;
assign v263_2_3_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_3_ce0;
assign v263_2_4_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_4_address0;
assign v263_2_4_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_4_ce0;
assign v263_2_5_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_5_address0;
assign v263_2_5_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_5_ce0;
assign v263_2_6_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_6_address0;
assign v263_2_6_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_6_ce0;
assign v263_2_7_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_7_address0;
assign v263_2_7_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_2_7_ce0;
assign v263_3_0_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_0_address0;
assign v263_3_0_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_0_ce0;
assign v263_3_1_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_1_address0;
assign v263_3_1_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_1_ce0;
assign v263_3_2_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_2_address0;
assign v263_3_2_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_2_ce0;
assign v263_3_3_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_3_address0;
assign v263_3_3_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_3_ce0;
assign v263_3_4_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_4_address0;
assign v263_3_4_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_4_ce0;
assign v263_3_5_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_5_address0;
assign v263_3_5_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_5_ce0;
assign v263_3_6_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_6_address0;
assign v263_3_6_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_6_ce0;
assign v263_3_7_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_7_address0;
assign v263_3_7_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_3_7_ce0;
assign v263_4_0_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_0_address0;
assign v263_4_0_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_0_ce0;
assign v263_4_1_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_1_address0;
assign v263_4_1_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_1_ce0;
assign v263_4_2_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_2_address0;
assign v263_4_2_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_2_ce0;
assign v263_4_3_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_3_address0;
assign v263_4_3_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_3_ce0;
assign v263_4_4_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_4_address0;
assign v263_4_4_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_4_ce0;
assign v263_4_5_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_5_address0;
assign v263_4_5_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_5_ce0;
assign v263_4_6_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_6_address0;
assign v263_4_6_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_6_ce0;
assign v263_4_7_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_7_address0;
assign v263_4_7_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_4_7_ce0;
assign v263_5_0_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_0_address0;
assign v263_5_0_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_0_ce0;
assign v263_5_1_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_1_address0;
assign v263_5_1_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_1_ce0;
assign v263_5_2_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_2_address0;
assign v263_5_2_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_2_ce0;
assign v263_5_3_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_3_address0;
assign v263_5_3_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_3_ce0;
assign v263_5_4_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_4_address0;
assign v263_5_4_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_4_ce0;
assign v263_5_5_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_5_address0;
assign v263_5_5_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_5_ce0;
assign v263_5_6_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_6_address0;
assign v263_5_6_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_6_ce0;
assign v263_5_7_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_7_address0;
assign v263_5_7_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_5_7_ce0;
assign v263_6_0_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_0_address0;
assign v263_6_0_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_0_ce0;
assign v263_6_1_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_1_address0;
assign v263_6_1_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_1_ce0;
assign v263_6_2_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_2_address0;
assign v263_6_2_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_2_ce0;
assign v263_6_3_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_3_address0;
assign v263_6_3_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_3_ce0;
assign v263_6_4_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_4_address0;
assign v263_6_4_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_4_ce0;
assign v263_6_5_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_5_address0;
assign v263_6_5_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_5_ce0;
assign v263_6_6_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_6_address0;
assign v263_6_6_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_6_ce0;
assign v263_6_7_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_7_address0;
assign v263_6_7_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_6_7_ce0;
assign v263_7_0_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_0_address0;
assign v263_7_0_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_0_ce0;
assign v263_7_1_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_1_address0;
assign v263_7_1_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_1_ce0;
assign v263_7_2_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_2_address0;
assign v263_7_2_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_2_ce0;
assign v263_7_3_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_3_address0;
assign v263_7_3_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_3_ce0;
assign v263_7_4_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_4_address0;
assign v263_7_4_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_4_ce0;
assign v263_7_5_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_5_address0;
assign v263_7_5_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_5_ce0;
assign v263_7_6_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_6_address0;
assign v263_7_6_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_6_ce0;
assign v263_7_7_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_7_address0;
assign v263_7_7_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_208_v263_7_7_ce0;
assign v279_din = 1'd1;
assign v279_write = v279_write_local;
always @ (posedge ap_clk) begin
    sub_ln277_reg_504[2:0] <= 3'b000;
end
endmodule 