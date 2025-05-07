module atax (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_address0,A_ce0,A_q0,x_address0,x_ce0,x_q0,y_out_din,y_out_full_n,y_out_write); 
parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] A_address0;
output   A_ce0;
input  [31:0] A_q0;
output  [5:0] x_address0;
output   x_ce0;
input  [31:0] x_q0;
output  [31:0] y_out_din;
input   y_out_full_n;
output   y_out_write;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg y_out_write;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [9:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg    buff_A_ce1;
wire   [31:0] buff_A_q1;
reg   [9:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg    buff_A_1_ce1;
wire   [31:0] buff_A_1_q1;
reg   [9:0] buff_A_2_address0;
reg    buff_A_2_ce0;
reg    buff_A_2_we0;
wire   [31:0] buff_A_2_q0;
reg    buff_A_2_ce1;
wire   [31:0] buff_A_2_q1;
reg   [9:0] buff_A_3_address0;
reg    buff_A_3_ce0;
reg    buff_A_3_we0;
wire   [31:0] buff_A_3_q0;
reg    buff_A_3_ce1;
wire   [31:0] buff_A_3_q1;
reg   [4:0] buff_x_address0;
reg    buff_x_ce0;
reg    buff_x_we0;
wire   [31:0] buff_x_q0;
reg    buff_x_ce1;
wire   [31:0] buff_x_q1;
reg   [4:0] buff_x_1_address0;
reg    buff_x_1_ce0;
reg    buff_x_1_we0;
wire   [31:0] buff_x_1_q0;
reg    buff_x_1_ce1;
wire   [31:0] buff_x_1_q1;
reg   [2:0] buff_y_out_address0;
reg    buff_y_out_ce0;
reg    buff_y_out_we0;
reg   [31:0] buff_y_out_d0;
wire   [31:0] buff_y_out_q0;
reg    buff_y_out_ce1;
wire   [31:0] buff_y_out_q1;
reg   [2:0] buff_y_out_1_address0;
reg    buff_y_out_1_ce0;
reg    buff_y_out_1_we0;
reg   [31:0] buff_y_out_1_d0;
wire   [31:0] buff_y_out_1_q0;
reg    buff_y_out_1_ce1;
wire   [31:0] buff_y_out_1_q1;
reg   [2:0] buff_y_out_2_address0;
reg    buff_y_out_2_ce0;
reg    buff_y_out_2_we0;
reg   [31:0] buff_y_out_2_d0;
wire   [31:0] buff_y_out_2_q0;
reg    buff_y_out_2_ce1;
wire   [31:0] buff_y_out_2_q1;
reg   [2:0] buff_y_out_3_address0;
reg    buff_y_out_3_ce0;
reg    buff_y_out_3_we0;
reg   [31:0] buff_y_out_3_d0;
wire   [31:0] buff_y_out_3_q0;
reg    buff_y_out_3_ce1;
wire   [31:0] buff_y_out_3_q1;
reg   [2:0] buff_y_out_4_address0;
reg    buff_y_out_4_ce0;
reg    buff_y_out_4_we0;
reg   [31:0] buff_y_out_4_d0;
wire   [31:0] buff_y_out_4_q0;
reg   [2:0] buff_y_out_5_address0;
reg    buff_y_out_5_ce0;
reg    buff_y_out_5_we0;
reg   [31:0] buff_y_out_5_d0;
wire   [31:0] buff_y_out_5_q0;
reg   [2:0] buff_y_out_6_address0;
reg    buff_y_out_6_ce0;
reg    buff_y_out_6_we0;
reg   [31:0] buff_y_out_6_d0;
wire   [31:0] buff_y_out_6_q0;
reg   [2:0] buff_y_out_7_address0;
reg    buff_y_out_7_ce0;
reg    buff_y_out_7_we0;
reg   [31:0] buff_y_out_7_d0;
wire   [31:0] buff_y_out_7_q0;
reg   [5:0] tmp1_address0;
reg    tmp1_ce0;
reg    tmp1_we0;
reg   [31:0] tmp1_d0;
wire   [31:0] tmp1_q0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_ap_start;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_ap_done;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_ap_idle;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_ap_ready;
wire   [11:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_A_address0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_A_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_address0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_ce0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_we0;
wire   [31:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_d0;
wire   [9:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_1_address0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_1_ce0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_1_we0;
wire   [31:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_1_d0;
wire   [9:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_2_address0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_2_ce0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_2_we0;
wire   [31:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_2_d0;
wire   [9:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_3_address0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_3_ce0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_3_we0;
wire   [31:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_3_d0;
wire   [5:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_x_address0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_x_ce0;
wire   [4:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_address0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_ce0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_we0;
wire   [31:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_d0;
wire   [4:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_1_address0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_1_ce0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_1_we0;
wire   [31:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_1_d0;
wire   [2:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_address0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_ce0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_we0;
wire   [31:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_d0;
wire   [2:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_1_address0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_1_ce0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_1_we0;
wire   [31:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_1_d0;
wire   [2:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_2_address0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_2_ce0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_2_we0;
wire   [31:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_2_d0;
wire   [2:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_3_address0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_3_ce0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_3_we0;
wire   [31:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_3_d0;
wire   [2:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_4_address0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_4_ce0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_4_we0;
wire   [31:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_4_d0;
wire   [2:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_5_address0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_5_ce0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_5_we0;
wire   [31:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_5_d0;
wire   [2:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_6_address0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_6_ce0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_6_we0;
wire   [31:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_6_d0;
wire   [2:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_7_address0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_7_ce0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_7_we0;
wire   [31:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_7_d0;
wire   [5:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_tmp1_address0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_tmp1_ce0;
wire    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_tmp1_we0;
wire   [31:0] grp_atax_Pipeline_lprd_1_lprd_2_fu_96_tmp1_d0;
wire    grp_atax_Pipeline_lp1_lp2_fu_134_ap_start;
wire    grp_atax_Pipeline_lp1_lp2_fu_134_ap_done;
wire    grp_atax_Pipeline_lp1_lp2_fu_134_ap_idle;
wire    grp_atax_Pipeline_lp1_lp2_fu_134_ap_ready;
wire   [9:0] grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_ce0;
wire   [9:0] grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_1_ce0;
wire   [9:0] grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_2_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_2_ce0;
wire   [9:0] grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_3_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_3_ce0;
wire   [4:0] grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_ce0;
wire   [4:0] grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_ce1;
wire   [4:0] grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_1_ce0;
wire   [4:0] grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_1_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_1_ce1;
wire   [5:0] grp_atax_Pipeline_lp1_lp2_fu_134_tmp1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_134_tmp1_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_134_tmp1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_134_tmp1_d0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_176_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_176_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_176_p_opcode;
wire    grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_176_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_180_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_180_p_din1;
wire    grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_180_p_ce;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_ap_start;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_ap_done;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_ap_idle;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_ap_ready;
wire   [5:0] grp_atax_Pipeline_lp3_lp4_fu_145_tmp1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_tmp1_ce0;
wire   [9:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_ce0;
wire   [9:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_ce1;
wire   [9:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_1_ce0;
wire   [9:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_1_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_1_ce1;
wire   [9:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_2_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_2_ce0;
wire   [9:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_2_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_2_ce1;
wire   [9:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_3_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_3_ce0;
wire   [9:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_3_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_3_ce1;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_d0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_ce1;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_1_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_1_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_1_d0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_1_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_1_ce1;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_2_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_2_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_2_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_2_d0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_2_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_2_ce1;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_3_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_3_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_3_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_3_d0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_3_address1;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_3_ce1;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_4_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_4_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_4_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_4_d0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_5_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_5_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_5_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_5_d0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_6_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_6_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_6_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_6_d0;
wire   [2:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_7_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_7_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_7_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_7_d0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_176_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_176_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_176_p_opcode;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_176_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_180_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_180_p_din1;
wire    grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_180_p_ce;
wire    grp_atax_Pipeline_lpwr_1_fu_162_ap_start;
wire    grp_atax_Pipeline_lpwr_1_fu_162_ap_done;
wire    grp_atax_Pipeline_lpwr_1_fu_162_ap_idle;
wire    grp_atax_Pipeline_lpwr_1_fu_162_ap_ready;
wire   [31:0] grp_atax_Pipeline_lpwr_1_fu_162_y_out_din;
wire    grp_atax_Pipeline_lpwr_1_fu_162_y_out_write;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_1_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_1_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_2_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_2_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_3_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_3_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_4_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_4_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_5_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_5_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_6_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_6_ce0;
wire   [2:0] grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_7_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_7_ce0;
reg    grp_atax_Pipeline_lprd_1_lprd_2_fu_96_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_atax_Pipeline_lp1_lp2_fu_134_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_atax_Pipeline_lp3_lp4_fu_145_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg    grp_atax_Pipeline_lpwr_1_fu_162_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire   [31:0] grp_fu_176_p2;
reg   [31:0] grp_fu_176_p0;
reg   [31:0] grp_fu_176_p1;
reg    grp_fu_176_ce;
wire   [31:0] grp_fu_180_p2;
reg   [31:0] grp_fu_180_p0;
reg   [31:0] grp_fu_180_p1;
reg    grp_fu_180_ce;
reg   [7:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 grp_atax_Pipeline_lprd_1_lprd_2_fu_96_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lp1_lp2_fu_134_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lp3_lp4_fu_145_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lpwr_1_fu_162_ap_start_reg = 1'b0;
end
atax_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_d0),.q0(buff_A_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1));
atax_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_1_d0),.q0(buff_A_1_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1));
atax_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_2_d0),.q0(buff_A_2_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1));
atax_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_3_d0),.q0(buff_A_3_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_x_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_address0),.ce0(buff_x_ce0),.we0(buff_x_we0),.d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_d0),.q0(buff_x_q0),.address1(grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_address1),.ce1(buff_x_ce1),.q1(buff_x_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_x_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_1_address0),.ce0(buff_x_1_ce0),.we0(buff_x_1_we0),.d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_1_d0),.q0(buff_x_1_q0),.address1(grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_1_address1),.ce1(buff_x_1_ce1),.q1(buff_x_1_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_address0),.ce0(buff_y_out_ce0),.we0(buff_y_out_we0),.d0(buff_y_out_d0),.q0(buff_y_out_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_address1),.ce1(buff_y_out_ce1),.q1(buff_y_out_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_1_address0),.ce0(buff_y_out_1_ce0),.we0(buff_y_out_1_we0),.d0(buff_y_out_1_d0),.q0(buff_y_out_1_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_1_address1),.ce1(buff_y_out_1_ce1),.q1(buff_y_out_1_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_2_address0),.ce0(buff_y_out_2_ce0),.we0(buff_y_out_2_we0),.d0(buff_y_out_2_d0),.q0(buff_y_out_2_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_2_address1),.ce1(buff_y_out_2_ce1),.q1(buff_y_out_2_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_3_address0),.ce0(buff_y_out_3_ce0),.we0(buff_y_out_3_we0),.d0(buff_y_out_3_d0),.q0(buff_y_out_3_q0),.address1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_3_address1),.ce1(buff_y_out_3_ce1),.q1(buff_y_out_3_q1));
atax_buff_y_out_4_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_4_address0),.ce0(buff_y_out_4_ce0),.we0(buff_y_out_4_we0),.d0(buff_y_out_4_d0),.q0(buff_y_out_4_q0));
atax_buff_y_out_4_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_5_address0),.ce0(buff_y_out_5_ce0),.we0(buff_y_out_5_we0),.d0(buff_y_out_5_d0),.q0(buff_y_out_5_q0));
atax_buff_y_out_4_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_6_address0),.ce0(buff_y_out_6_ce0),.we0(buff_y_out_6_we0),.d0(buff_y_out_6_d0),.q0(buff_y_out_6_q0));
atax_buff_y_out_4_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_y_out_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_7_address0),.ce0(buff_y_out_7_ce0),.we0(buff_y_out_7_we0),.d0(buff_y_out_7_d0),.q0(buff_y_out_7_q0));
atax_tmp1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
tmp1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_address0),.ce0(tmp1_ce0),.we0(tmp1_we0),.d0(tmp1_d0),.q0(tmp1_q0));
atax_atax_Pipeline_lprd_1_lprd_2 grp_atax_Pipeline_lprd_1_lprd_2_fu_96(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_ap_start),.ap_done(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_ap_done),.ap_idle(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_ap_idle),.ap_ready(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_ap_ready),.A_address0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_A_address0),.A_ce0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_A_ce0),.A_q0(A_q0),.buff_A_address0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_ce0),.buff_A_we0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_we0),.buff_A_d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_d0),.buff_A_1_address0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_1_ce0),.buff_A_1_we0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_1_we0),.buff_A_1_d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_1_d0),.buff_A_2_address0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_2_ce0),.buff_A_2_we0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_2_we0),.buff_A_2_d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_2_d0),.buff_A_3_address0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_3_ce0),.buff_A_3_we0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_3_we0),.buff_A_3_d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_3_d0),.x_address0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_x_address0),.x_ce0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_x_ce0),.x_q0(x_q0),.buff_x_address0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_address0),.buff_x_ce0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_ce0),.buff_x_we0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_we0),.buff_x_d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_d0),.buff_x_1_address0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_1_address0),.buff_x_1_ce0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_1_ce0),.buff_x_1_we0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_1_we0),.buff_x_1_d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_1_d0),.buff_y_out_address0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_address0),.buff_y_out_ce0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_ce0),.buff_y_out_we0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_we0),.buff_y_out_d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_d0),.buff_y_out_1_address0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_1_ce0),.buff_y_out_1_we0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_1_we0),.buff_y_out_1_d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_1_d0),.buff_y_out_2_address0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_2_address0),.buff_y_out_2_ce0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_2_ce0),.buff_y_out_2_we0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_2_we0),.buff_y_out_2_d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_2_d0),.buff_y_out_3_address0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_3_address0),.buff_y_out_3_ce0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_3_ce0),.buff_y_out_3_we0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_3_we0),.buff_y_out_3_d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_3_d0),.buff_y_out_4_address0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_4_address0),.buff_y_out_4_ce0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_4_ce0),.buff_y_out_4_we0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_4_we0),.buff_y_out_4_d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_4_d0),.buff_y_out_5_address0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_5_address0),.buff_y_out_5_ce0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_5_ce0),.buff_y_out_5_we0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_5_we0),.buff_y_out_5_d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_5_d0),.buff_y_out_6_address0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_6_address0),.buff_y_out_6_ce0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_6_ce0),.buff_y_out_6_we0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_6_we0),.buff_y_out_6_d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_6_d0),.buff_y_out_7_address0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_7_address0),.buff_y_out_7_ce0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_7_ce0),.buff_y_out_7_we0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_7_we0),.buff_y_out_7_d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_7_d0),.tmp1_address0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_tmp1_ce0),.tmp1_we0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_tmp1_we0),.tmp1_d0(grp_atax_Pipeline_lprd_1_lprd_2_fu_96_tmp1_d0));
atax_atax_Pipeline_lp1_lp2 grp_atax_Pipeline_lp1_lp2_fu_134(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp1_lp2_fu_134_ap_start),.ap_done(grp_atax_Pipeline_lp1_lp2_fu_134_ap_done),.ap_idle(grp_atax_Pipeline_lp1_lp2_fu_134_ap_idle),.ap_ready(grp_atax_Pipeline_lp1_lp2_fu_134_ap_ready),.buff_A_address0(grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_x_address0(grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_address0),.buff_x_ce0(grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_ce0),.buff_x_q0(buff_x_q0),.buff_x_address1(grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_address1),.buff_x_ce1(grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_ce1),.buff_x_q1(buff_x_q1),.buff_x_1_address0(grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_1_address0),.buff_x_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_1_ce0),.buff_x_1_q0(buff_x_1_q0),.buff_x_1_address1(grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_1_address1),.buff_x_1_ce1(grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_1_ce1),.buff_x_1_q1(buff_x_1_q1),.tmp1_address0(grp_atax_Pipeline_lp1_lp2_fu_134_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp1_lp2_fu_134_tmp1_ce0),.tmp1_we0(grp_atax_Pipeline_lp1_lp2_fu_134_tmp1_we0),.tmp1_d0(grp_atax_Pipeline_lp1_lp2_fu_134_tmp1_d0),.tmp1_q0(tmp1_q0),.grp_fu_176_p_din0(grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_176_p_din0),.grp_fu_176_p_din1(grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_176_p_din1),.grp_fu_176_p_opcode(grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_176_p_opcode),.grp_fu_176_p_dout0(grp_fu_176_p2),.grp_fu_176_p_ce(grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_176_p_ce),.grp_fu_180_p_din0(grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_180_p_din0),.grp_fu_180_p_din1(grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_180_p_din1),.grp_fu_180_p_dout0(grp_fu_180_p2),.grp_fu_180_p_ce(grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_180_p_ce));
atax_atax_Pipeline_lp3_lp4 grp_atax_Pipeline_lp3_lp4_fu_145(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp3_lp4_fu_145_ap_start),.ap_done(grp_atax_Pipeline_lp3_lp4_fu_145_ap_done),.ap_idle(grp_atax_Pipeline_lp3_lp4_fu_145_ap_idle),.ap_ready(grp_atax_Pipeline_lp3_lp4_fu_145_ap_ready),.tmp1_address0(grp_atax_Pipeline_lp3_lp4_fu_145_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp3_lp4_fu_145_tmp1_ce0),.tmp1_q0(tmp1_q0),.buff_A_address0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_address1),.buff_A_ce1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_1_address1),.buff_A_1_ce1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_2_address0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_2_address1),.buff_A_2_ce1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_3_address0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_3_address1),.buff_A_3_ce1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_y_out_address0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_address0),.buff_y_out_ce0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_ce0),.buff_y_out_we0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_we0),.buff_y_out_d0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_d0),.buff_y_out_address1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_address1),.buff_y_out_ce1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_ce1),.buff_y_out_q1(buff_y_out_q1),.buff_y_out_1_address0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_1_ce0),.buff_y_out_1_we0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_1_we0),.buff_y_out_1_d0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_1_d0),.buff_y_out_1_address1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_1_address1),.buff_y_out_1_ce1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_1_ce1),.buff_y_out_1_q1(buff_y_out_1_q1),.buff_y_out_2_address0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_2_address0),.buff_y_out_2_ce0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_2_ce0),.buff_y_out_2_we0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_2_we0),.buff_y_out_2_d0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_2_d0),.buff_y_out_2_address1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_2_address1),.buff_y_out_2_ce1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_2_ce1),.buff_y_out_2_q1(buff_y_out_2_q1),.buff_y_out_3_address0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_3_address0),.buff_y_out_3_ce0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_3_ce0),.buff_y_out_3_we0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_3_we0),.buff_y_out_3_d0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_3_d0),.buff_y_out_3_address1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_3_address1),.buff_y_out_3_ce1(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_3_ce1),.buff_y_out_3_q1(buff_y_out_3_q1),.buff_y_out_4_address0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_4_address0),.buff_y_out_4_ce0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_4_ce0),.buff_y_out_4_we0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_4_we0),.buff_y_out_4_d0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_4_d0),.buff_y_out_4_q0(buff_y_out_4_q0),.buff_y_out_5_address0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_5_address0),.buff_y_out_5_ce0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_5_ce0),.buff_y_out_5_we0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_5_we0),.buff_y_out_5_d0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_5_d0),.buff_y_out_5_q0(buff_y_out_5_q0),.buff_y_out_6_address0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_6_address0),.buff_y_out_6_ce0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_6_ce0),.buff_y_out_6_we0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_6_we0),.buff_y_out_6_d0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_6_d0),.buff_y_out_6_q0(buff_y_out_6_q0),.buff_y_out_7_address0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_7_address0),.buff_y_out_7_ce0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_7_ce0),.buff_y_out_7_we0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_7_we0),.buff_y_out_7_d0(grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_7_d0),.buff_y_out_7_q0(buff_y_out_7_q0),.grp_fu_176_p_din0(grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_176_p_din0),.grp_fu_176_p_din1(grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_176_p_din1),.grp_fu_176_p_opcode(grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_176_p_opcode),.grp_fu_176_p_dout0(grp_fu_176_p2),.grp_fu_176_p_ce(grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_176_p_ce),.grp_fu_180_p_din0(grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_180_p_din0),.grp_fu_180_p_din1(grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_180_p_din1),.grp_fu_180_p_dout0(grp_fu_180_p2),.grp_fu_180_p_ce(grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_180_p_ce));
atax_atax_Pipeline_lpwr_1 grp_atax_Pipeline_lpwr_1_fu_162(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lpwr_1_fu_162_ap_start),.ap_done(grp_atax_Pipeline_lpwr_1_fu_162_ap_done),.ap_idle(grp_atax_Pipeline_lpwr_1_fu_162_ap_idle),.ap_ready(grp_atax_Pipeline_lpwr_1_fu_162_ap_ready),.y_out_din(grp_atax_Pipeline_lpwr_1_fu_162_y_out_din),.y_out_full_n(y_out_full_n),.y_out_write(grp_atax_Pipeline_lpwr_1_fu_162_y_out_write),.buff_y_out_address0(grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_address0),.buff_y_out_ce0(grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_ce0),.buff_y_out_q0(buff_y_out_q0),.buff_y_out_1_address0(grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_1_ce0),.buff_y_out_1_q0(buff_y_out_1_q0),.buff_y_out_2_address0(grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_2_address0),.buff_y_out_2_ce0(grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_2_ce0),.buff_y_out_2_q0(buff_y_out_2_q0),.buff_y_out_3_address0(grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_3_address0),.buff_y_out_3_ce0(grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_3_ce0),.buff_y_out_3_q0(buff_y_out_3_q0),.buff_y_out_4_address0(grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_4_address0),.buff_y_out_4_ce0(grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_4_ce0),.buff_y_out_4_q0(buff_y_out_4_q0),.buff_y_out_5_address0(grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_5_address0),.buff_y_out_5_ce0(grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_5_ce0),.buff_y_out_5_q0(buff_y_out_5_q0),.buff_y_out_6_address0(grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_6_address0),.buff_y_out_6_ce0(grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_6_ce0),.buff_y_out_6_q0(buff_y_out_6_q0),.buff_y_out_7_address0(grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_7_address0),.buff_y_out_7_ce0(grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_7_ce0),.buff_y_out_7_q0(buff_y_out_7_q0));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U59(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_176_p0),.din1(grp_fu_176_p1),.ce(grp_fu_176_ce),.dout(grp_fu_176_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U60(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_180_p0),.din1(grp_fu_180_p1),.ce(grp_fu_180_ce),.dout(grp_fu_180_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp1_lp2_fu_134_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_Pipeline_lp1_lp2_fu_134_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp1_lp2_fu_134_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp1_lp2_fu_134_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp3_lp4_fu_145_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_atax_Pipeline_lp3_lp4_fu_145_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp3_lp4_fu_145_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp3_lp4_fu_145_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lprd_1_lprd_2_fu_96_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_atax_Pipeline_lprd_1_lprd_2_fu_96_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lprd_1_lprd_2_fu_96_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lprd_1_lprd_2_fu_96_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lpwr_1_fu_162_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_atax_Pipeline_lpwr_1_fu_162_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lpwr_1_fu_162_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lpwr_1_fu_162_ap_start_reg <= 1'b0;
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
    if ((grp_atax_Pipeline_lprd_1_lprd_2_fu_96_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lp1_lp2_fu_134_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lp3_lp4_fu_145_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lpwr_1_fu_162_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_atax_Pipeline_lpwr_1_fu_162_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((grp_atax_Pipeline_lpwr_1_fu_162_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_ce1 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_1_we0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_2_ce1 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_2_we0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_3_ce1 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_3_we0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_address0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_address0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp1_lp2_fu_134_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_ce0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_ce1 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_we0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_x_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_1_address0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_1_address0;
    end else begin
        buff_x_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_x_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_1_ce0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_1_ce0;
    end else begin
        buff_x_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_x_1_ce1 = grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_1_ce1;
    end else begin
        buff_x_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_1_we0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_1_we0;
    end else begin
        buff_x_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_x_address0 = grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_address0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_address0;
    end else begin
        buff_x_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_x_ce0 = grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_ce0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_ce0;
    end else begin
        buff_x_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_x_ce1 = grp_atax_Pipeline_lp1_lp2_fu_134_buff_x_ce1;
    end else begin
        buff_x_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x_we0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_x_we0;
    end else begin
        buff_x_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_1_address0 = grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_1_address0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_1_address0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_1_address0;
    end else begin
        buff_y_out_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_1_ce0 = grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_1_ce0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_1_ce0;
    end else begin
        buff_y_out_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_1_ce1 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_1_ce1;
    end else begin
        buff_y_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_1_d0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_1_d0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_1_d0;
    end else begin
        buff_y_out_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_1_we0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_1_we0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_1_we0;
    end else begin
        buff_y_out_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_2_address0 = grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_2_address0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_2_address0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_2_address0;
    end else begin
        buff_y_out_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_2_ce0 = grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_2_ce0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_2_ce0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_2_ce0;
    end else begin
        buff_y_out_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_2_ce1 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_2_ce1;
    end else begin
        buff_y_out_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_2_d0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_2_d0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_2_d0;
    end else begin
        buff_y_out_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_2_we0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_2_we0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_2_we0;
    end else begin
        buff_y_out_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_3_address0 = grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_3_address0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_3_address0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_3_address0;
    end else begin
        buff_y_out_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_3_ce0 = grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_3_ce0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_3_ce0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_3_ce0;
    end else begin
        buff_y_out_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_3_ce1 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_3_ce1;
    end else begin
        buff_y_out_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_3_d0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_3_d0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_3_d0;
    end else begin
        buff_y_out_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_3_we0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_3_we0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_3_we0;
    end else begin
        buff_y_out_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_4_address0 = grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_4_address0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_4_address0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_4_address0;
    end else begin
        buff_y_out_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_4_ce0 = grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_4_ce0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_4_ce0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_4_ce0;
    end else begin
        buff_y_out_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_4_d0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_4_d0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_4_d0;
    end else begin
        buff_y_out_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_4_we0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_4_we0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_4_we0;
    end else begin
        buff_y_out_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_5_address0 = grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_5_address0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_5_address0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_5_address0;
    end else begin
        buff_y_out_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_5_ce0 = grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_5_ce0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_5_ce0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_5_ce0;
    end else begin
        buff_y_out_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_5_d0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_5_d0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_5_d0;
    end else begin
        buff_y_out_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_5_we0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_5_we0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_5_we0;
    end else begin
        buff_y_out_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_6_address0 = grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_6_address0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_6_address0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_6_address0;
    end else begin
        buff_y_out_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_6_ce0 = grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_6_ce0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_6_ce0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_6_ce0;
    end else begin
        buff_y_out_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_6_d0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_6_d0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_6_d0;
    end else begin
        buff_y_out_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_6_we0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_6_we0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_6_we0;
    end else begin
        buff_y_out_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_7_address0 = grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_7_address0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_7_address0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_7_address0;
    end else begin
        buff_y_out_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_7_ce0 = grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_7_ce0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_7_ce0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_7_ce0;
    end else begin
        buff_y_out_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_7_d0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_7_d0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_7_d0;
    end else begin
        buff_y_out_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_7_we0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_7_we0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_7_we0;
    end else begin
        buff_y_out_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_address0 = grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_address0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_address0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_address0;
    end else begin
        buff_y_out_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_y_out_ce0 = grp_atax_Pipeline_lpwr_1_fu_162_buff_y_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_ce0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_ce0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_ce0;
    end else begin
        buff_y_out_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_ce1 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_ce1;
    end else begin
        buff_y_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_d0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_d0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_d0;
    end else begin
        buff_y_out_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y_out_we0 = grp_atax_Pipeline_lp3_lp4_fu_145_buff_y_out_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y_out_we0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_buff_y_out_we0;
    end else begin
        buff_y_out_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_176_ce = grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_176_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_176_ce = grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_176_p_ce;
    end else begin
        grp_fu_176_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_176_p0 = grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_176_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_176_p0 = grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_176_p_din0;
    end else begin
        grp_fu_176_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_176_p1 = grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_176_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_176_p1 = grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_176_p_din1;
    end else begin
        grp_fu_176_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_180_ce = grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_180_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_180_ce = grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_180_p_ce;
    end else begin
        grp_fu_180_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_180_p0 = grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_180_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_180_p0 = grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_180_p_din0;
    end else begin
        grp_fu_180_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_180_p1 = grp_atax_Pipeline_lp3_lp4_fu_145_grp_fu_180_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_180_p1 = grp_atax_Pipeline_lp1_lp2_fu_134_grp_fu_180_p_din1;
    end else begin
        grp_fu_180_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_address0 = grp_atax_Pipeline_lp3_lp4_fu_145_tmp1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp1_address0 = grp_atax_Pipeline_lp1_lp2_fu_134_tmp1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp1_address0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_tmp1_address0;
    end else begin
        tmp1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_145_tmp1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_134_tmp1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp1_ce0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_tmp1_ce0;
    end else begin
        tmp1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp1_d0 = grp_atax_Pipeline_lp1_lp2_fu_134_tmp1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp1_d0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_tmp1_d0;
    end else begin
        tmp1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp1_we0 = grp_atax_Pipeline_lp1_lp2_fu_134_tmp1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp1_we0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_tmp1_we0;
    end else begin
        tmp1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        y_out_write = grp_atax_Pipeline_lpwr_1_fu_162_y_out_write;
    end else begin
        y_out_write = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_atax_Pipeline_lprd_1_lprd_2_fu_96_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_atax_Pipeline_lp1_lp2_fu_134_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_atax_Pipeline_lp3_lp4_fu_145_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_atax_Pipeline_lpwr_1_fu_162_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_address0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_A_address0;
assign A_ce0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_A_ce0;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign grp_atax_Pipeline_lp1_lp2_fu_134_ap_start = grp_atax_Pipeline_lp1_lp2_fu_134_ap_start_reg;
assign grp_atax_Pipeline_lp3_lp4_fu_145_ap_start = grp_atax_Pipeline_lp3_lp4_fu_145_ap_start_reg;
assign grp_atax_Pipeline_lprd_1_lprd_2_fu_96_ap_start = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_ap_start_reg;
assign grp_atax_Pipeline_lpwr_1_fu_162_ap_start = grp_atax_Pipeline_lpwr_1_fu_162_ap_start_reg;
assign x_address0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_x_address0;
assign x_ce0 = grp_atax_Pipeline_lprd_1_lprd_2_fu_96_x_ce0;
assign y_out_din = grp_atax_Pipeline_lpwr_1_fu_162_y_out_din;
endmodule 