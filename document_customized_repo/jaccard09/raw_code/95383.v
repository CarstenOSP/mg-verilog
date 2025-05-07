module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,p_address0,p_ce0,p_q0,r_address0,r_ce0,r_q0,s_out_din,s_out_full_n,s_out_write,q_out_din,q_out_full_n,q_out_write); 
parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] A_0_address0;
output   A_0_ce0;
input  [31:0] A_0_q0;
output  [9:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
output  [9:0] A_2_address0;
output   A_2_ce0;
input  [31:0] A_2_q0;
output  [9:0] A_3_address0;
output   A_3_ce0;
input  [31:0] A_3_q0;
output  [5:0] p_address0;
output   p_ce0;
input  [31:0] p_q0;
output  [5:0] r_address0;
output   r_ce0;
input  [31:0] r_q0;
output  [31:0] s_out_din;
input   s_out_full_n;
output   s_out_write;
output  [31:0] q_out_din;
input   q_out_full_n;
output   q_out_write;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg s_out_write;
reg q_out_write;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln13_fu_467_p2;
reg   [6:0] add_ln13_reg_548;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln13_fu_479_p1;
reg   [5:0] trunc_ln13_reg_563;
wire    ap_CS_fsm_state3;
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
reg   [3:0] buff_p_address0;
reg    buff_p_ce0;
wire   [31:0] buff_p_q0;
reg    buff_p_ce1;
wire   [31:0] buff_p_q1;
reg   [3:0] buff_p_1_address0;
reg    buff_p_1_ce0;
wire   [31:0] buff_p_1_q0;
reg    buff_p_1_ce1;
wire   [31:0] buff_p_1_q1;
reg   [3:0] buff_p_2_address0;
reg    buff_p_2_ce0;
wire   [31:0] buff_p_2_q0;
reg    buff_p_2_ce1;
wire   [31:0] buff_p_2_q1;
reg   [3:0] buff_p_3_address0;
reg    buff_p_3_ce0;
wire   [31:0] buff_p_3_q0;
reg    buff_p_3_ce1;
wire   [31:0] buff_p_3_q1;
reg   [3:0] buff_r_address0;
reg    buff_r_ce0;
wire   [31:0] buff_r_q0;
reg   [3:0] buff_r_1_address0;
reg    buff_r_1_ce0;
wire   [31:0] buff_r_1_q0;
reg   [3:0] buff_r_2_address0;
reg    buff_r_2_ce0;
wire   [31:0] buff_r_2_q0;
reg   [3:0] buff_r_3_address0;
reg    buff_r_3_ce0;
wire   [31:0] buff_r_3_q0;
reg   [3:0] buff_s_out_address0;
reg    buff_s_out_ce0;
reg    buff_s_out_we0;
reg   [31:0] buff_s_out_d0;
wire   [31:0] buff_s_out_q0;
reg   [3:0] buff_s_out_1_address0;
reg    buff_s_out_1_ce0;
reg    buff_s_out_1_we0;
reg   [31:0] buff_s_out_1_d0;
wire   [31:0] buff_s_out_1_q0;
reg   [3:0] buff_s_out_2_address0;
reg    buff_s_out_2_ce0;
reg    buff_s_out_2_we0;
reg   [31:0] buff_s_out_2_d0;
wire   [31:0] buff_s_out_2_q0;
reg   [3:0] buff_s_out_3_address0;
reg    buff_s_out_3_ce0;
reg    buff_s_out_3_we0;
reg   [31:0] buff_s_out_3_d0;
wire   [31:0] buff_s_out_3_q0;
reg   [3:0] buff_q_out_address0;
reg    buff_q_out_ce0;
reg    buff_q_out_we0;
reg   [31:0] buff_q_out_d0;
wire   [31:0] buff_q_out_q0;
reg   [3:0] buff_q_out_1_address0;
reg    buff_q_out_1_ce0;
reg    buff_q_out_1_we0;
reg   [31:0] buff_q_out_1_d0;
wire   [31:0] buff_q_out_1_q0;
reg   [3:0] buff_q_out_2_address0;
reg    buff_q_out_2_ce0;
reg    buff_q_out_2_we0;
reg   [31:0] buff_q_out_2_d0;
wire   [31:0] buff_q_out_2_q0;
reg   [3:0] buff_q_out_3_address0;
reg    buff_q_out_3_ce0;
reg    buff_q_out_3_we0;
reg   [31:0] buff_q_out_3_d0;
wire   [31:0] buff_q_out_3_q0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_ap_start;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_ap_done;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_ap_idle;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_ap_ready;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_1_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_2_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_3_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_3_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_2_ce0;
wire   [9:0] grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_3_ce0;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_d0;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_2_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_2_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_2_d0;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_1_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_1_d0;
wire   [3:0] grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_3_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_3_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_3_d0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_571_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_571_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_571_p_opcode;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_571_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_575_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_575_p_din1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_575_p_ce;
wire    grp_bicg_Pipeline_lprd_2_fu_404_ap_start;
wire    grp_bicg_Pipeline_lprd_2_fu_404_ap_done;
wire    grp_bicg_Pipeline_lprd_2_fu_404_ap_idle;
wire    grp_bicg_Pipeline_lprd_2_fu_404_ap_ready;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_404_A_0_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_404_A_0_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_404_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_404_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_404_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_404_A_2_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_404_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_404_A_3_ce0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_404_buff_A_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_404_buff_A_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_404_buff_A_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_404_buff_A_d0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_404_buff_A_1_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_404_buff_A_1_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_404_buff_A_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_404_buff_A_1_d0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_404_buff_A_2_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_404_buff_A_2_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_404_buff_A_2_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_404_buff_A_2_d0;
wire   [9:0] grp_bicg_Pipeline_lprd_2_fu_404_buff_A_3_address0;
wire    grp_bicg_Pipeline_lprd_2_fu_404_buff_A_3_ce0;
wire    grp_bicg_Pipeline_lprd_2_fu_404_buff_A_3_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_2_fu_404_buff_A_3_d0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_ap_start;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_ap_done;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_ap_idle;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_ap_ready;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_address1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_ce1;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_1_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_1_address1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_1_ce1;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_2_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_2_address1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_2_ce1;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_3_ce0;
wire   [9:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_3_address1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_3_ce1;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_address1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_ce1;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_1_address1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_1_ce1;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_2_address1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_2_ce1;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_3_ce0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_3_address1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_3_ce1;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_1_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_1_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_2_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_2_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_2_d0;
wire   [3:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_3_ce0;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_3_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_3_d0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_571_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_571_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_571_p_opcode;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_571_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_575_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_575_p_din1;
wire    grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_575_p_ce;
wire    grp_bicg_Pipeline_lpwr_fu_437_ap_start;
wire    grp_bicg_Pipeline_lpwr_fu_437_ap_done;
wire    grp_bicg_Pipeline_lpwr_fu_437_ap_idle;
wire    grp_bicg_Pipeline_lpwr_fu_437_ap_ready;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_437_s_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_437_s_out_write;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_437_q_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_437_q_out_write;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_1_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_2_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_3_ce0;
wire   [3:0] grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_3_ce0;
reg    grp_bicg_Pipeline_lp1_lp2_fu_388_ap_start_reg;
wire   [0:0] icmp_ln13_fu_461_p2;
wire    ap_CS_fsm_state5;
reg    grp_bicg_Pipeline_lprd_2_fu_404_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_bicg_Pipeline_lp3_lp4_fu_421_ap_start_reg;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
reg    grp_bicg_Pipeline_lpwr_fu_437_ap_start_reg;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire   [63:0] zext_ln13_fu_473_p1;
wire   [63:0] zext_ln5_fu_495_p1;
reg   [6:0] i_fu_78;
reg    p_ce0_local;
reg    r_ce0_local;
reg    buff_p_2_we0_local;
wire   [1:0] trunc_ln13_1_fu_483_p1;
wire   [31:0] bitcast_ln14_fu_515_p1;
reg    buff_p_2_ce0_local;
reg    buff_r_2_we0_local;
wire   [31:0] bitcast_ln15_fu_523_p1;
reg    buff_r_2_ce0_local;
reg    buff_s_out_2_we0_local;
reg    buff_s_out_2_ce0_local;
reg    buff_q_out_2_we0_local;
reg    buff_q_out_2_ce0_local;
reg    buff_p_1_we0_local;
reg    buff_p_1_ce0_local;
reg    buff_r_1_we0_local;
reg    buff_r_1_ce0_local;
reg    buff_s_out_1_we0_local;
reg    buff_s_out_1_ce0_local;
reg    buff_q_out_1_we0_local;
reg    buff_q_out_1_ce0_local;
reg    buff_p_we0_local;
reg    buff_p_ce0_local;
reg    buff_r_we0_local;
reg    buff_r_ce0_local;
reg    buff_s_out_we0_local;
reg    buff_s_out_ce0_local;
reg    buff_q_out_we0_local;
reg    buff_q_out_ce0_local;
reg    buff_p_3_we0_local;
reg    buff_p_3_ce0_local;
reg    buff_r_3_we0_local;
reg    buff_r_3_ce0_local;
reg    buff_s_out_3_we0_local;
reg    buff_s_out_3_ce0_local;
reg    buff_q_out_3_we0_local;
reg    buff_q_out_3_ce0_local;
wire   [3:0] lshr_ln5_fu_486_p4;
wire   [31:0] grp_fu_571_p2;
reg   [31:0] grp_fu_571_p0;
reg   [31:0] grp_fu_571_p1;
reg    grp_fu_571_ce;
wire   [31:0] grp_fu_575_p2;
reg   [31:0] grp_fu_575_p0;
reg   [31:0] grp_fu_575_p1;
reg    grp_fu_575_ce;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 grp_bicg_Pipeline_lp1_lp2_fu_388_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lprd_2_fu_404_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp3_lp4_fu_421_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lpwr_fu_437_ap_start_reg = 1'b0;
#0 i_fu_78 = 7'd0;
end
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_d0),.q0(buff_A_q0),.address1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_1_d0),.q0(buff_A_1_q0),.address1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_2_d0),.q0(buff_A_2_q0),.address1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_3_d0),.q0(buff_A_3_q0),.address1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_address0),.ce0(buff_p_ce0),.we0(buff_p_we0_local),.d0(bitcast_ln14_fu_515_p1),.q0(buff_p_q0),.address1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_address1),.ce1(buff_p_ce1),.q1(buff_p_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_1_address0),.ce0(buff_p_1_ce0),.we0(buff_p_1_we0_local),.d0(bitcast_ln14_fu_515_p1),.q0(buff_p_1_q0),.address1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_1_address1),.ce1(buff_p_1_ce1),.q1(buff_p_1_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_2_address0),.ce0(buff_p_2_ce0),.we0(buff_p_2_we0_local),.d0(bitcast_ln14_fu_515_p1),.q0(buff_p_2_q0),.address1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_2_address1),.ce1(buff_p_2_ce1),.q1(buff_p_2_q1));
bicg_buff_p_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_p_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_p_3_address0),.ce0(buff_p_3_ce0),.we0(buff_p_3_we0_local),.d0(bitcast_ln14_fu_515_p1),.q0(buff_p_3_q0),.address1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_3_address1),.ce1(buff_p_3_ce1),.q1(buff_p_3_q1));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_address0),.ce0(buff_r_ce0),.we0(buff_r_we0_local),.d0(bitcast_ln15_fu_523_p1),.q0(buff_r_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_1_address0),.ce0(buff_r_1_ce0),.we0(buff_r_1_we0_local),.d0(bitcast_ln15_fu_523_p1),.q0(buff_r_1_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_2_address0),.ce0(buff_r_2_ce0),.we0(buff_r_2_we0_local),.d0(bitcast_ln15_fu_523_p1),.q0(buff_r_2_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_r_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_3_address0),.ce0(buff_r_3_ce0),.we0(buff_r_3_we0_local),.d0(bitcast_ln15_fu_523_p1),.q0(buff_r_3_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_address0),.ce0(buff_s_out_ce0),.we0(buff_s_out_we0),.d0(buff_s_out_d0),.q0(buff_s_out_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_1_address0),.ce0(buff_s_out_1_ce0),.we0(buff_s_out_1_we0),.d0(buff_s_out_1_d0),.q0(buff_s_out_1_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_2_address0),.ce0(buff_s_out_2_ce0),.we0(buff_s_out_2_we0),.d0(buff_s_out_2_d0),.q0(buff_s_out_2_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_s_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_3_address0),.ce0(buff_s_out_3_ce0),.we0(buff_s_out_3_we0),.d0(buff_s_out_3_d0),.q0(buff_s_out_3_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_address0),.ce0(buff_q_out_ce0),.we0(buff_q_out_we0),.d0(buff_q_out_d0),.q0(buff_q_out_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_1_address0),.ce0(buff_q_out_1_ce0),.we0(buff_q_out_1_we0),.d0(buff_q_out_1_d0),.q0(buff_q_out_1_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_2_address0),.ce0(buff_q_out_2_ce0),.we0(buff_q_out_2_we0),.d0(buff_q_out_2_d0),.q0(buff_q_out_2_q0));
bicg_buff_r_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_q_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_3_address0),.ce0(buff_q_out_3_ce0),.we0(buff_q_out_3_we0),.d0(buff_q_out_3_d0),.q0(buff_q_out_3_q0));
bicg_bicg_Pipeline_lp1_lp2 grp_bicg_Pipeline_lp1_lp2_fu_388(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp1_lp2_fu_388_ap_start),.ap_done(grp_bicg_Pipeline_lp1_lp2_fu_388_ap_done),.ap_idle(grp_bicg_Pipeline_lp1_lp2_fu_388_ap_idle),.ap_ready(grp_bicg_Pipeline_lp1_lp2_fu_388_ap_ready),.buff_r_address0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_ce0),.buff_r_q0(buff_r_q0),.buff_r_1_address0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_1_address0),.buff_r_1_ce0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_1_ce0),.buff_r_1_q0(buff_r_1_q0),.buff_r_2_address0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_2_address0),.buff_r_2_ce0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_2_ce0),.buff_r_2_q0(buff_r_2_q0),.buff_r_3_address0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_3_address0),.buff_r_3_ce0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_3_ce0),.buff_r_3_q0(buff_r_3_q0),.buff_A_address0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_s_out_address0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_ce0),.buff_s_out_we0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_we0),.buff_s_out_d0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_d0),.buff_s_out_q0(buff_s_out_q0),.buff_s_out_2_address0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_2_ce0),.buff_s_out_2_we0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_2_we0),.buff_s_out_2_d0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_2_d0),.buff_s_out_2_q0(buff_s_out_2_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_1_ce0),.buff_s_out_1_we0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_1_we0),.buff_s_out_1_d0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_1_d0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_s_out_3_address0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_3_ce0),.buff_s_out_3_we0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_3_we0),.buff_s_out_3_d0(grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_3_d0),.buff_s_out_3_q0(buff_s_out_3_q0),.grp_fu_571_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_571_p_din0),.grp_fu_571_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_571_p_din1),.grp_fu_571_p_opcode(grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_571_p_opcode),.grp_fu_571_p_dout0(grp_fu_571_p2),.grp_fu_571_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_571_p_ce),.grp_fu_575_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_575_p_din0),.grp_fu_575_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_575_p_din1),.grp_fu_575_p_dout0(grp_fu_575_p2),.grp_fu_575_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_575_p_ce));
bicg_bicg_Pipeline_lprd_2 grp_bicg_Pipeline_lprd_2_fu_404(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lprd_2_fu_404_ap_start),.ap_done(grp_bicg_Pipeline_lprd_2_fu_404_ap_done),.ap_idle(grp_bicg_Pipeline_lprd_2_fu_404_ap_idle),.ap_ready(grp_bicg_Pipeline_lprd_2_fu_404_ap_ready),.i(trunc_ln13_reg_563),.A_0_address0(grp_bicg_Pipeline_lprd_2_fu_404_A_0_address0),.A_0_ce0(grp_bicg_Pipeline_lprd_2_fu_404_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_bicg_Pipeline_lprd_2_fu_404_A_1_address0),.A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_404_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_bicg_Pipeline_lprd_2_fu_404_A_2_address0),.A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_404_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_bicg_Pipeline_lprd_2_fu_404_A_3_address0),.A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_404_A_3_ce0),.A_3_q0(A_3_q0),.buff_A_address0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_ce0),.buff_A_we0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_we0),.buff_A_d0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_d0),.buff_A_1_address0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_1_ce0),.buff_A_1_we0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_1_we0),.buff_A_1_d0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_1_d0),.buff_A_2_address0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_2_ce0),.buff_A_2_we0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_2_we0),.buff_A_2_d0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_2_d0),.buff_A_3_address0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_3_ce0),.buff_A_3_we0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_3_we0),.buff_A_3_d0(grp_bicg_Pipeline_lprd_2_fu_404_buff_A_3_d0));
bicg_bicg_Pipeline_lp3_lp4 grp_bicg_Pipeline_lp3_lp4_fu_421(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp3_lp4_fu_421_ap_start),.ap_done(grp_bicg_Pipeline_lp3_lp4_fu_421_ap_done),.ap_idle(grp_bicg_Pipeline_lp3_lp4_fu_421_ap_idle),.ap_ready(grp_bicg_Pipeline_lp3_lp4_fu_421_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_address1),.buff_A_ce1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_1_address1),.buff_A_1_ce1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_2_address1),.buff_A_2_ce1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_3_address1),.buff_A_3_ce1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_p_address0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_address0),.buff_p_ce0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_ce0),.buff_p_q0(buff_p_q0),.buff_p_address1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_address1),.buff_p_ce1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_ce1),.buff_p_q1(buff_p_q1),.buff_p_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_1_address0),.buff_p_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_1_ce0),.buff_p_1_q0(buff_p_1_q0),.buff_p_1_address1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_1_address1),.buff_p_1_ce1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_1_ce1),.buff_p_1_q1(buff_p_1_q1),.buff_p_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_2_address0),.buff_p_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_2_ce0),.buff_p_2_q0(buff_p_2_q0),.buff_p_2_address1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_2_address1),.buff_p_2_ce1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_2_ce1),.buff_p_2_q1(buff_p_2_q1),.buff_p_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_3_address0),.buff_p_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_3_ce0),.buff_p_3_q0(buff_p_3_q0),.buff_p_3_address1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_3_address1),.buff_p_3_ce1(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_3_ce1),.buff_p_3_q1(buff_p_3_q1),.buff_q_out_address0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_d0),.buff_q_out_q0(buff_q_out_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_1_ce0),.buff_q_out_1_we0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_1_we0),.buff_q_out_1_d0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_1_d0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_2_ce0),.buff_q_out_2_we0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_2_we0),.buff_q_out_2_d0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_2_d0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_3_ce0),.buff_q_out_3_we0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_3_we0),.buff_q_out_3_d0(grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_3_d0),.buff_q_out_3_q0(buff_q_out_3_q0),.grp_fu_571_p_din0(grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_571_p_din0),.grp_fu_571_p_din1(grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_571_p_din1),.grp_fu_571_p_opcode(grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_571_p_opcode),.grp_fu_571_p_dout0(grp_fu_571_p2),.grp_fu_571_p_ce(grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_571_p_ce),.grp_fu_575_p_din0(grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_575_p_din0),.grp_fu_575_p_din1(grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_575_p_din1),.grp_fu_575_p_dout0(grp_fu_575_p2),.grp_fu_575_p_ce(grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_575_p_ce));
bicg_bicg_Pipeline_lpwr grp_bicg_Pipeline_lpwr_fu_437(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lpwr_fu_437_ap_start),.ap_done(grp_bicg_Pipeline_lpwr_fu_437_ap_done),.ap_idle(grp_bicg_Pipeline_lpwr_fu_437_ap_idle),.ap_ready(grp_bicg_Pipeline_lpwr_fu_437_ap_ready),.s_out_din(grp_bicg_Pipeline_lpwr_fu_437_s_out_din),.s_out_full_n(s_out_full_n),.s_out_write(grp_bicg_Pipeline_lpwr_fu_437_s_out_write),.q_out_din(grp_bicg_Pipeline_lpwr_fu_437_q_out_din),.q_out_full_n(q_out_full_n),.q_out_write(grp_bicg_Pipeline_lpwr_fu_437_q_out_write),.buff_s_out_address0(grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_ce0),.buff_s_out_q0(buff_s_out_q0),.buff_q_out_address0(grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_ce0),.buff_q_out_q0(buff_q_out_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_1_ce0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_q_out_1_address0(grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_1_address0),.buff_q_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_1_ce0),.buff_q_out_1_q0(buff_q_out_1_q0),.buff_s_out_2_address0(grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_2_ce0),.buff_s_out_2_q0(buff_s_out_2_q0),.buff_q_out_2_address0(grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_2_address0),.buff_q_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_2_ce0),.buff_q_out_2_q0(buff_q_out_2_q0),.buff_s_out_3_address0(grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_3_ce0),.buff_s_out_3_q0(buff_s_out_3_q0),.buff_q_out_3_address0(grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_3_address0),.buff_q_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_3_ce0),.buff_q_out_3_q0(buff_q_out_3_q0));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U51(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_571_p0),.din1(grp_fu_571_p1),.ce(grp_fu_571_ce),.dout(grp_fu_571_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U52(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_575_p0),.din1(grp_fu_575_p1),.ce(grp_fu_575_ce),.dout(grp_fu_575_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp1_lp2_fu_388_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln13_fu_461_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_bicg_Pipeline_lp1_lp2_fu_388_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp1_lp2_fu_388_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp1_lp2_fu_388_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp3_lp4_fu_421_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_bicg_Pipeline_lp3_lp4_fu_421_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp3_lp4_fu_421_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp3_lp4_fu_421_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lprd_2_fu_404_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_bicg_Pipeline_lprd_2_fu_404_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lprd_2_fu_404_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lprd_2_fu_404_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lpwr_fu_437_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_bicg_Pipeline_lpwr_fu_437_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lpwr_fu_437_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lpwr_fu_437_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_78 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_78 <= add_ln13_reg_548;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_548 <= add_ln13_fu_467_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln13_reg_563 <= trunc_ln13_fu_479_p1;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lprd_2_fu_404_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_bicg_Pipeline_lp1_lp2_fu_388_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lp3_lp4_fu_421_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lpwr_fu_437_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_bicg_Pipeline_lpwr_fu_437_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
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
    if (((grp_bicg_Pipeline_lpwr_fu_437_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_404_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_404_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_1_ce1 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_bicg_Pipeline_lprd_2_fu_404_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_404_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_404_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_2_ce1 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_we0 = grp_bicg_Pipeline_lprd_2_fu_404_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_404_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_404_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_3_ce1 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_we0 = grp_bicg_Pipeline_lprd_2_fu_404_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_bicg_Pipeline_lprd_2_fu_404_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lprd_2_fu_404_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_ce1 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_bicg_Pipeline_lprd_2_fu_404_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_1_address0;
    end else begin
        buff_p_1_address0 = zext_ln5_fu_495_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_1_ce0;
    end else begin
        buff_p_1_ce0 = buff_p_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_1_ce0_local = 1'b1;
    end else begin
        buff_p_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_1_ce1 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_1_ce1;
    end else begin
        buff_p_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_483_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_1_we0_local = 1'b1;
    end else begin
        buff_p_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_2_address0;
    end else begin
        buff_p_2_address0 = zext_ln5_fu_495_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_2_ce0;
    end else begin
        buff_p_2_ce0 = buff_p_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_2_ce0_local = 1'b1;
    end else begin
        buff_p_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_2_ce1 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_2_ce1;
    end else begin
        buff_p_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_483_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_2_we0_local = 1'b1;
    end else begin
        buff_p_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_3_address0;
    end else begin
        buff_p_3_address0 = zext_ln5_fu_495_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_3_ce0;
    end else begin
        buff_p_3_ce0 = buff_p_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_3_ce0_local = 1'b1;
    end else begin
        buff_p_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_3_ce1 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_3_ce1;
    end else begin
        buff_p_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_483_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_3_we0_local = 1'b1;
    end else begin
        buff_p_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_address0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_address0;
    end else begin
        buff_p_address0 = zext_ln5_fu_495_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_ce0;
    end else begin
        buff_p_ce0 = buff_p_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_p_ce0_local = 1'b1;
    end else begin
        buff_p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_p_ce1 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_p_ce1;
    end else begin
        buff_p_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_483_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_p_we0_local = 1'b1;
    end else begin
        buff_p_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_q_out_1_address0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_1_address0;
    end else begin
        buff_q_out_1_address0 = zext_ln5_fu_495_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_q_out_1_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_1_ce0;
    end else begin
        buff_q_out_1_ce0 = buff_q_out_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_1_ce0_local = 1'b1;
    end else begin
        buff_q_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_q_out_1_d0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_1_d0;
    end else begin
        buff_q_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_q_out_1_we0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_1_we0;
    end else begin
        buff_q_out_1_we0 = buff_q_out_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_483_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_q_out_2_address0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_2_address0;
    end else begin
        buff_q_out_2_address0 = zext_ln5_fu_495_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_q_out_2_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_2_ce0;
    end else begin
        buff_q_out_2_ce0 = buff_q_out_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_2_ce0_local = 1'b1;
    end else begin
        buff_q_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_q_out_2_d0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_2_d0;
    end else begin
        buff_q_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_q_out_2_we0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_2_we0;
    end else begin
        buff_q_out_2_we0 = buff_q_out_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_483_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_2_we0_local = 1'b1;
    end else begin
        buff_q_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_q_out_3_address0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_3_address0;
    end else begin
        buff_q_out_3_address0 = zext_ln5_fu_495_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_q_out_3_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_3_ce0;
    end else begin
        buff_q_out_3_ce0 = buff_q_out_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_3_ce0_local = 1'b1;
    end else begin
        buff_q_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_q_out_3_d0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_3_d0;
    end else begin
        buff_q_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_q_out_3_we0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_3_we0;
    end else begin
        buff_q_out_3_we0 = buff_q_out_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_483_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_3_we0_local = 1'b1;
    end else begin
        buff_q_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_address0;
    end else begin
        buff_q_out_address0 = zext_ln5_fu_495_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lpwr_fu_437_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_ce0;
    end else begin
        buff_q_out_ce0 = buff_q_out_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_q_out_ce0_local = 1'b1;
    end else begin
        buff_q_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_q_out_d0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_d0;
    end else begin
        buff_q_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lp3_lp4_fu_421_buff_q_out_we0;
    end else begin
        buff_q_out_we0 = buff_q_out_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_483_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_1_address0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_1_address0;
    end else begin
        buff_r_1_address0 = zext_ln5_fu_495_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_1_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_1_ce0;
    end else begin
        buff_r_1_ce0 = buff_r_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_1_ce0_local = 1'b1;
    end else begin
        buff_r_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_483_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_1_we0_local = 1'b1;
    end else begin
        buff_r_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_2_address0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_2_address0;
    end else begin
        buff_r_2_address0 = zext_ln5_fu_495_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_2_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_2_ce0;
    end else begin
        buff_r_2_ce0 = buff_r_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_2_ce0_local = 1'b1;
    end else begin
        buff_r_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_483_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_2_we0_local = 1'b1;
    end else begin
        buff_r_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_3_address0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_3_address0;
    end else begin
        buff_r_3_address0 = zext_ln5_fu_495_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_3_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_3_ce0;
    end else begin
        buff_r_3_ce0 = buff_r_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_3_ce0_local = 1'b1;
    end else begin
        buff_r_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_483_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_3_we0_local = 1'b1;
    end else begin
        buff_r_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_address0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_address0;
    end else begin
        buff_r_address0 = zext_ln5_fu_495_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_r_ce0;
    end else begin
        buff_r_ce0 = buff_r_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_r_ce0_local = 1'b1;
    end else begin
        buff_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_483_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_r_we0_local = 1'b1;
    end else begin
        buff_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_1_address0;
    end else begin
        buff_s_out_1_address0 = zext_ln5_fu_495_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_1_ce0;
    end else begin
        buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_d0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_1_d0;
    end else begin
        buff_s_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_1_we0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_1_we0;
    end else begin
        buff_s_out_1_we0 = buff_s_out_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_483_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_2_address0;
    end else begin
        buff_s_out_2_address0 = zext_ln5_fu_495_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_2_ce0;
    end else begin
        buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_2_d0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_2_d0;
    end else begin
        buff_s_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_2_we0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_2_we0;
    end else begin
        buff_s_out_2_we0 = buff_s_out_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_483_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_2_we0_local = 1'b1;
    end else begin
        buff_s_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_3_address0;
    end else begin
        buff_s_out_3_address0 = zext_ln5_fu_495_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_3_ce0;
    end else begin
        buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_3_d0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_3_d0;
    end else begin
        buff_s_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_3_we0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_3_we0;
    end else begin
        buff_s_out_3_we0 = buff_s_out_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_483_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_3_we0_local = 1'b1;
    end else begin
        buff_s_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_address0;
    end else begin
        buff_s_out_address0 = zext_ln5_fu_495_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_s_out_ce0 = grp_bicg_Pipeline_lpwr_fu_437_buff_s_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_ce0;
    end else begin
        buff_s_out_ce0 = buff_s_out_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_d0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_d0;
    end else begin
        buff_s_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_s_out_we0 = grp_bicg_Pipeline_lp1_lp2_fu_388_buff_s_out_we0;
    end else begin
        buff_s_out_we0 = buff_s_out_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_fu_483_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_571_ce = grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_571_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_571_ce = grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_571_p_ce;
    end else begin
        grp_fu_571_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_571_p0 = grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_571_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_571_p0 = grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_571_p_din0;
    end else begin
        grp_fu_571_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_571_p1 = grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_571_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_571_p1 = grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_571_p_din1;
    end else begin
        grp_fu_571_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_575_ce = grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_575_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_575_ce = grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_575_p_ce;
    end else begin
        grp_fu_575_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_575_p0 = grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_575_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_575_p0 = grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_575_p_din0;
    end else begin
        grp_fu_575_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_575_p1 = grp_bicg_Pipeline_lp3_lp4_fu_421_grp_fu_575_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_575_p1 = grp_bicg_Pipeline_lp1_lp2_fu_388_grp_fu_575_p_din1;
    end else begin
        grp_fu_575_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_ce0_local = 1'b1;
    end else begin
        p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        q_out_write = grp_bicg_Pipeline_lpwr_fu_437_q_out_write;
    end else begin
        q_out_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        r_ce0_local = 1'b1;
    end else begin
        r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        s_out_write = grp_bicg_Pipeline_lpwr_fu_437_s_out_write;
    end else begin
        s_out_write = 1'b0;
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
            if (((icmp_ln13_fu_461_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_bicg_Pipeline_lprd_2_fu_404_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((grp_bicg_Pipeline_lp1_lp2_fu_388_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((grp_bicg_Pipeline_lp3_lp4_fu_421_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((grp_bicg_Pipeline_lpwr_fu_437_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_0_address0 = grp_bicg_Pipeline_lprd_2_fu_404_A_0_address0;
assign A_0_ce0 = grp_bicg_Pipeline_lprd_2_fu_404_A_0_ce0;
assign A_1_address0 = grp_bicg_Pipeline_lprd_2_fu_404_A_1_address0;
assign A_1_ce0 = grp_bicg_Pipeline_lprd_2_fu_404_A_1_ce0;
assign A_2_address0 = grp_bicg_Pipeline_lprd_2_fu_404_A_2_address0;
assign A_2_ce0 = grp_bicg_Pipeline_lprd_2_fu_404_A_2_ce0;
assign A_3_address0 = grp_bicg_Pipeline_lprd_2_fu_404_A_3_address0;
assign A_3_ce0 = grp_bicg_Pipeline_lprd_2_fu_404_A_3_ce0;
assign add_ln13_fu_467_p2 = (i_fu_78 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln14_fu_515_p1 = p_q0;
assign bitcast_ln15_fu_523_p1 = r_q0;
assign grp_bicg_Pipeline_lp1_lp2_fu_388_ap_start = grp_bicg_Pipeline_lp1_lp2_fu_388_ap_start_reg;
assign grp_bicg_Pipeline_lp3_lp4_fu_421_ap_start = grp_bicg_Pipeline_lp3_lp4_fu_421_ap_start_reg;
assign grp_bicg_Pipeline_lprd_2_fu_404_ap_start = grp_bicg_Pipeline_lprd_2_fu_404_ap_start_reg;
assign grp_bicg_Pipeline_lpwr_fu_437_ap_start = grp_bicg_Pipeline_lpwr_fu_437_ap_start_reg;
assign icmp_ln13_fu_461_p2 = ((i_fu_78 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_486_p4 = {{i_fu_78[5:2]}};
assign p_address0 = zext_ln13_fu_473_p1;
assign p_ce0 = p_ce0_local;
assign q_out_din = grp_bicg_Pipeline_lpwr_fu_437_q_out_din;
assign r_address0 = zext_ln13_fu_473_p1;
assign r_ce0 = r_ce0_local;
assign s_out_din = grp_bicg_Pipeline_lpwr_fu_437_s_out_din;
assign trunc_ln13_1_fu_483_p1 = i_fu_78[1:0];
assign trunc_ln13_fu_479_p1 = i_fu_78[5:0];
assign zext_ln13_fu_473_p1 = i_fu_78;
assign zext_ln5_fu_495_p1 = lshr_ln5_fu_486_p4;
endmodule 