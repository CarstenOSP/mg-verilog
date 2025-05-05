module ellpack (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nzval_0_address0,nzval_0_ce0,nzval_0_q0,nzval_0_address1,nzval_0_ce1,nzval_0_q1,nzval_1_address0,nzval_1_ce0,nzval_1_q0,nzval_1_address1,nzval_1_ce1,nzval_1_q1,nzval_2_address0,nzval_2_ce0,nzval_2_q0,nzval_2_address1,nzval_2_ce1,nzval_2_q1,nzval_3_address0,nzval_3_ce0,nzval_3_q0,nzval_3_address1,nzval_3_ce1,nzval_3_q1,nzval_4_address0,nzval_4_ce0,nzval_4_q0,nzval_4_address1,nzval_4_ce1,nzval_4_q1,nzval_5_address0,nzval_5_ce0,nzval_5_q0,nzval_5_address1,nzval_5_ce1,nzval_5_q1,nzval_6_address0,nzval_6_ce0,nzval_6_q0,nzval_6_address1,nzval_6_ce1,nzval_6_q1,nzval_7_address0,nzval_7_ce0,nzval_7_q0,nzval_7_address1,nzval_7_ce1,nzval_7_q1,cols_0_address0,cols_0_ce0,cols_0_q0,cols_0_address1,cols_0_ce1,cols_0_q1,cols_1_address0,cols_1_ce0,cols_1_q0,cols_1_address1,cols_1_ce1,cols_1_q1,cols_2_address0,cols_2_ce0,cols_2_q0,cols_2_address1,cols_2_ce1,cols_2_q1,cols_3_address0,cols_3_ce0,cols_3_q0,cols_3_address1,cols_3_ce1,cols_3_q1,cols_4_address0,cols_4_ce0,cols_4_q0,cols_4_address1,cols_4_ce1,cols_4_q1,cols_5_address0,cols_5_ce0,cols_5_q0,cols_5_address1,cols_5_ce1,cols_5_q1,cols_6_address0,cols_6_ce0,cols_6_q0,cols_6_address1,cols_6_ce1,cols_6_q1,cols_7_address0,cols_7_ce0,cols_7_q0,cols_7_address1,cols_7_ce1,cols_7_q1,vec_0_address0,vec_0_ce0,vec_0_q0,vec_0_address1,vec_0_ce1,vec_0_q1,vec_1_address0,vec_1_ce0,vec_1_q0,vec_1_address1,vec_1_ce1,vec_1_q1,vec_2_address0,vec_2_ce0,vec_2_q0,vec_2_address1,vec_2_ce1,vec_2_q1,vec_3_address0,vec_3_ce0,vec_3_q0,vec_3_address1,vec_3_ce1,vec_3_q1,vec_4_address0,vec_4_ce0,vec_4_q0,vec_4_address1,vec_4_ce1,vec_4_q1,vec_5_address0,vec_5_ce0,vec_5_q0,vec_5_address1,vec_5_ce1,vec_5_q1,vec_6_address0,vec_6_ce0,vec_6_q0,vec_6_address1,vec_6_ce1,vec_6_q1,vec_7_address0,vec_7_ce0,vec_7_q0,vec_7_address1,vec_7_ce1,vec_7_q1,out_0_address0,out_0_ce0,out_0_we0,out_0_d0,out_0_q0,out_1_address0,out_1_ce0,out_1_we0,out_1_d0,out_1_q0,out_2_address0,out_2_ce0,out_2_we0,out_2_d0,out_2_q0,out_3_address0,out_3_ce0,out_3_we0,out_3_d0,out_3_q0,out_4_address0,out_4_ce0,out_4_we0,out_4_d0,out_4_q0,out_5_address0,out_5_ce0,out_5_we0,out_5_d0,out_5_q0,out_6_address0,out_6_ce0,out_6_we0,out_6_d0,out_6_q0,out_7_address0,out_7_ce0,out_7_we0,out_7_d0,out_7_q0); 
parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] nzval_0_address0;
output   nzval_0_ce0;
input  [63:0] nzval_0_q0;
output  [9:0] nzval_0_address1;
output   nzval_0_ce1;
input  [63:0] nzval_0_q1;
output  [9:0] nzval_1_address0;
output   nzval_1_ce0;
input  [63:0] nzval_1_q0;
output  [9:0] nzval_1_address1;
output   nzval_1_ce1;
input  [63:0] nzval_1_q1;
output  [9:0] nzval_2_address0;
output   nzval_2_ce0;
input  [63:0] nzval_2_q0;
output  [9:0] nzval_2_address1;
output   nzval_2_ce1;
input  [63:0] nzval_2_q1;
output  [9:0] nzval_3_address0;
output   nzval_3_ce0;
input  [63:0] nzval_3_q0;
output  [9:0] nzval_3_address1;
output   nzval_3_ce1;
input  [63:0] nzval_3_q1;
output  [9:0] nzval_4_address0;
output   nzval_4_ce0;
input  [63:0] nzval_4_q0;
output  [9:0] nzval_4_address1;
output   nzval_4_ce1;
input  [63:0] nzval_4_q1;
output  [9:0] nzval_5_address0;
output   nzval_5_ce0;
input  [63:0] nzval_5_q0;
output  [9:0] nzval_5_address1;
output   nzval_5_ce1;
input  [63:0] nzval_5_q1;
output  [9:0] nzval_6_address0;
output   nzval_6_ce0;
input  [63:0] nzval_6_q0;
output  [9:0] nzval_6_address1;
output   nzval_6_ce1;
input  [63:0] nzval_6_q1;
output  [9:0] nzval_7_address0;
output   nzval_7_ce0;
input  [63:0] nzval_7_q0;
output  [9:0] nzval_7_address1;
output   nzval_7_ce1;
input  [63:0] nzval_7_q1;
output  [9:0] cols_0_address0;
output   cols_0_ce0;
input  [31:0] cols_0_q0;
output  [9:0] cols_0_address1;
output   cols_0_ce1;
input  [31:0] cols_0_q1;
output  [9:0] cols_1_address0;
output   cols_1_ce0;
input  [31:0] cols_1_q0;
output  [9:0] cols_1_address1;
output   cols_1_ce1;
input  [31:0] cols_1_q1;
output  [9:0] cols_2_address0;
output   cols_2_ce0;
input  [31:0] cols_2_q0;
output  [9:0] cols_2_address1;
output   cols_2_ce1;
input  [31:0] cols_2_q1;
output  [9:0] cols_3_address0;
output   cols_3_ce0;
input  [31:0] cols_3_q0;
output  [9:0] cols_3_address1;
output   cols_3_ce1;
input  [31:0] cols_3_q1;
output  [9:0] cols_4_address0;
output   cols_4_ce0;
input  [31:0] cols_4_q0;
output  [9:0] cols_4_address1;
output   cols_4_ce1;
input  [31:0] cols_4_q1;
output  [9:0] cols_5_address0;
output   cols_5_ce0;
input  [31:0] cols_5_q0;
output  [9:0] cols_5_address1;
output   cols_5_ce1;
input  [31:0] cols_5_q1;
output  [9:0] cols_6_address0;
output   cols_6_ce0;
input  [31:0] cols_6_q0;
output  [9:0] cols_6_address1;
output   cols_6_ce1;
input  [31:0] cols_6_q1;
output  [9:0] cols_7_address0;
output   cols_7_ce0;
input  [31:0] cols_7_q0;
output  [9:0] cols_7_address1;
output   cols_7_ce1;
input  [31:0] cols_7_q1;
output  [5:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [5:0] vec_0_address1;
output   vec_0_ce1;
input  [63:0] vec_0_q1;
output  [5:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [5:0] vec_1_address1;
output   vec_1_ce1;
input  [63:0] vec_1_q1;
output  [5:0] vec_2_address0;
output   vec_2_ce0;
input  [63:0] vec_2_q0;
output  [5:0] vec_2_address1;
output   vec_2_ce1;
input  [63:0] vec_2_q1;
output  [5:0] vec_3_address0;
output   vec_3_ce0;
input  [63:0] vec_3_q0;
output  [5:0] vec_3_address1;
output   vec_3_ce1;
input  [63:0] vec_3_q1;
output  [5:0] vec_4_address0;
output   vec_4_ce0;
input  [63:0] vec_4_q0;
output  [5:0] vec_4_address1;
output   vec_4_ce1;
input  [63:0] vec_4_q1;
output  [5:0] vec_5_address0;
output   vec_5_ce0;
input  [63:0] vec_5_q0;
output  [5:0] vec_5_address1;
output   vec_5_ce1;
input  [63:0] vec_5_q1;
output  [5:0] vec_6_address0;
output   vec_6_ce0;
input  [63:0] vec_6_q0;
output  [5:0] vec_6_address1;
output   vec_6_ce1;
input  [63:0] vec_6_q1;
output  [5:0] vec_7_address0;
output   vec_7_ce0;
input  [63:0] vec_7_q0;
output  [5:0] vec_7_address1;
output   vec_7_ce1;
input  [63:0] vec_7_q1;
output  [5:0] out_0_address0;
output   out_0_ce0;
output   out_0_we0;
output  [63:0] out_0_d0;
input  [63:0] out_0_q0;
output  [5:0] out_1_address0;
output   out_1_ce0;
output   out_1_we0;
output  [63:0] out_1_d0;
input  [63:0] out_1_q0;
output  [5:0] out_2_address0;
output   out_2_ce0;
output   out_2_we0;
output  [63:0] out_2_d0;
input  [63:0] out_2_q0;
output  [5:0] out_3_address0;
output   out_3_ce0;
output   out_3_we0;
output  [63:0] out_3_d0;
input  [63:0] out_3_q0;
output  [5:0] out_4_address0;
output   out_4_ce0;
output   out_4_we0;
output  [63:0] out_4_d0;
input  [63:0] out_4_q0;
output  [5:0] out_5_address0;
output   out_5_ce0;
output   out_5_we0;
output  [63:0] out_5_d0;
input  [63:0] out_5_q0;
output  [5:0] out_6_address0;
output   out_6_ce0;
output   out_6_we0;
output  [63:0] out_6_d0;
input  [63:0] out_6_q0;
output  [5:0] out_7_address0;
output   out_7_ce0;
output   out_7_we0;
output  [63:0] out_7_d0;
input  [63:0] out_7_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] add_ln13_fu_315_p2;
reg   [8:0] add_ln13_reg_484;
wire    ap_CS_fsm_state2;
reg   [5:0] out_0_addr_reg_489;
reg   [5:0] out_1_addr_reg_494;
reg   [5:0] out_2_addr_reg_499;
reg   [5:0] out_3_addr_reg_504;
reg   [5:0] out_4_addr_reg_509;
reg   [5:0] out_5_addr_reg_514;
reg   [5:0] out_6_addr_reg_519;
reg   [5:0] out_7_addr_reg_524;
wire   [2:0] trunc_ln13_fu_343_p1;
reg   [2:0] trunc_ln13_reg_529;
wire    ap_CS_fsm_state3;
wire   [63:0] sum_fu_378_p19;
reg   [63:0] sum_reg_533;
wire   [12:0] empty_fu_440_p2;
reg   [12:0] empty_reg_538;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_ap_start;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_ap_done;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_ap_idle;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_ap_ready;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_0_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_0_ce0;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_0_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_0_ce1;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_2_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_2_ce0;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_2_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_2_ce1;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_4_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_4_ce0;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_4_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_4_ce1;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_6_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_6_ce0;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_6_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_6_ce1;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_cols_0_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_cols_0_ce0;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_cols_0_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_cols_0_ce1;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_cols_2_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_cols_2_ce0;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_cols_2_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_cols_2_ce1;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_cols_4_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_cols_4_ce0;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_cols_4_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_cols_4_ce1;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_cols_6_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_cols_6_ce0;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_cols_6_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_cols_6_ce1;
wire   [5:0] grp_ellpack_Pipeline_ellpack_2_fu_246_vec_0_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_vec_0_ce0;
wire   [5:0] grp_ellpack_Pipeline_ellpack_2_fu_246_vec_0_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_vec_0_ce1;
wire   [5:0] grp_ellpack_Pipeline_ellpack_2_fu_246_vec_1_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_vec_1_ce0;
wire   [5:0] grp_ellpack_Pipeline_ellpack_2_fu_246_vec_1_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_vec_1_ce1;
wire   [5:0] grp_ellpack_Pipeline_ellpack_2_fu_246_vec_2_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_vec_2_ce0;
wire   [5:0] grp_ellpack_Pipeline_ellpack_2_fu_246_vec_2_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_vec_2_ce1;
wire   [5:0] grp_ellpack_Pipeline_ellpack_2_fu_246_vec_3_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_vec_3_ce0;
wire   [5:0] grp_ellpack_Pipeline_ellpack_2_fu_246_vec_3_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_vec_3_ce1;
wire   [5:0] grp_ellpack_Pipeline_ellpack_2_fu_246_vec_4_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_vec_4_ce0;
wire   [5:0] grp_ellpack_Pipeline_ellpack_2_fu_246_vec_4_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_vec_4_ce1;
wire   [5:0] grp_ellpack_Pipeline_ellpack_2_fu_246_vec_5_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_vec_5_ce0;
wire   [5:0] grp_ellpack_Pipeline_ellpack_2_fu_246_vec_5_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_vec_5_ce1;
wire   [5:0] grp_ellpack_Pipeline_ellpack_2_fu_246_vec_6_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_vec_6_ce0;
wire   [5:0] grp_ellpack_Pipeline_ellpack_2_fu_246_vec_6_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_vec_6_ce1;
wire   [5:0] grp_ellpack_Pipeline_ellpack_2_fu_246_vec_7_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_vec_7_ce0;
wire   [5:0] grp_ellpack_Pipeline_ellpack_2_fu_246_vec_7_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_vec_7_ce1;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_1_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_1_ce0;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_1_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_1_ce1;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_3_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_3_ce0;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_3_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_3_ce1;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_5_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_5_ce0;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_5_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_5_ce1;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_7_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_7_ce0;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_7_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_7_ce1;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_cols_1_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_cols_1_ce0;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_cols_1_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_cols_1_ce1;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_cols_3_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_cols_3_ce0;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_cols_3_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_cols_3_ce1;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_cols_5_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_cols_5_ce0;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_cols_5_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_cols_5_ce1;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_cols_7_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_cols_7_ce0;
wire   [9:0] grp_ellpack_Pipeline_ellpack_2_fu_246_cols_7_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_cols_7_ce1;
wire   [63:0] grp_ellpack_Pipeline_ellpack_2_fu_246_sum_3_out;
wire    grp_ellpack_Pipeline_ellpack_2_fu_246_sum_3_out_ap_vld;
reg    grp_ellpack_Pipeline_ellpack_2_fu_246_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg   [63:0] sum_3_loc_fu_138;
wire   [63:0] zext_ln10_fu_331_p1;
wire   [0:0] icmp_ln13_fu_309_p2;
reg   [8:0] i_fu_134;
wire    ap_CS_fsm_state6;
reg    out_0_ce0_local;
reg   [5:0] out_0_address0_local;
reg    out_0_we0_local;
wire   [63:0] bitcast_ln19_fu_449_p1;
reg    out_1_ce0_local;
reg   [5:0] out_1_address0_local;
reg    out_1_we0_local;
reg    out_2_ce0_local;
reg   [5:0] out_2_address0_local;
reg    out_2_we0_local;
reg    out_3_ce0_local;
reg   [5:0] out_3_address0_local;
reg    out_3_we0_local;
reg    out_4_ce0_local;
reg   [5:0] out_4_address0_local;
reg    out_4_we0_local;
reg    out_5_ce0_local;
reg   [5:0] out_5_address0_local;
reg    out_5_we0_local;
reg    out_6_ce0_local;
reg   [5:0] out_6_address0_local;
reg    out_6_we0_local;
reg    out_7_ce0_local;
reg   [5:0] out_7_address0_local;
reg    out_7_we0_local;
wire   [5:0] lshr_ln_fu_321_p4;
wire   [63:0] sum_fu_378_p2;
wire   [63:0] sum_fu_378_p4;
wire   [63:0] sum_fu_378_p6;
wire   [63:0] sum_fu_378_p8;
wire   [63:0] sum_fu_378_p10;
wire   [63:0] sum_fu_378_p12;
wire   [63:0] sum_fu_378_p14;
wire   [63:0] sum_fu_378_p16;
wire   [63:0] sum_fu_378_p17;
wire   [2:0] sum_fu_378_p18;
wire   [11:0] tmp_fu_418_p3;
wire   [9:0] tmp_15_fu_429_p3;
wire   [12:0] p_shl_fu_425_p1;
wire   [12:0] p_shl4_fu_436_p1;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire   [2:0] sum_fu_378_p1;
wire   [2:0] sum_fu_378_p3;
wire   [2:0] sum_fu_378_p5;
wire   [2:0] sum_fu_378_p7;
wire  signed [2:0] sum_fu_378_p9;
wire  signed [2:0] sum_fu_378_p11;
wire  signed [2:0] sum_fu_378_p13;
wire  signed [2:0] sum_fu_378_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_ellpack_Pipeline_ellpack_2_fu_246_ap_start_reg = 1'b0;
#0 i_fu_134 = 9'd0;
end
ellpack_ellpack_Pipeline_ellpack_2 grp_ellpack_Pipeline_ellpack_2_fu_246(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_ellpack_Pipeline_ellpack_2_fu_246_ap_start),.ap_done(grp_ellpack_Pipeline_ellpack_2_fu_246_ap_done),.ap_idle(grp_ellpack_Pipeline_ellpack_2_fu_246_ap_idle),.ap_ready(grp_ellpack_Pipeline_ellpack_2_fu_246_ap_ready),.sum(sum_reg_533),.empty(empty_reg_538),.nzval_0_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_0_address0),.nzval_0_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_0_ce0),.nzval_0_q0(nzval_0_q0),.nzval_0_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_0_address1),.nzval_0_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_0_ce1),.nzval_0_q1(nzval_0_q1),.nzval_2_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_2_address0),.nzval_2_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_2_ce0),.nzval_2_q0(nzval_2_q0),.nzval_2_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_2_address1),.nzval_2_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_2_ce1),.nzval_2_q1(nzval_2_q1),.nzval_4_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_4_address0),.nzval_4_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_4_ce0),.nzval_4_q0(nzval_4_q0),.nzval_4_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_4_address1),.nzval_4_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_4_ce1),.nzval_4_q1(nzval_4_q1),.nzval_6_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_6_address0),.nzval_6_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_6_ce0),.nzval_6_q0(nzval_6_q0),.nzval_6_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_6_address1),.nzval_6_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_6_ce1),.nzval_6_q1(nzval_6_q1),.cols_0_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_0_address0),.cols_0_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_0_ce0),.cols_0_q0(cols_0_q0),.cols_0_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_0_address1),.cols_0_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_0_ce1),.cols_0_q1(cols_0_q1),.cols_2_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_2_address0),.cols_2_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_2_ce0),.cols_2_q0(cols_2_q0),.cols_2_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_2_address1),.cols_2_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_2_ce1),.cols_2_q1(cols_2_q1),.cols_4_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_4_address0),.cols_4_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_4_ce0),.cols_4_q0(cols_4_q0),.cols_4_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_4_address1),.cols_4_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_4_ce1),.cols_4_q1(cols_4_q1),.cols_6_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_6_address0),.cols_6_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_6_ce0),.cols_6_q0(cols_6_q0),.cols_6_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_6_address1),.cols_6_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_6_ce1),.cols_6_q1(cols_6_q1),.vec_0_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_0_address0),.vec_0_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_0_ce0),.vec_0_q0(vec_0_q0),.vec_0_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_0_address1),.vec_0_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_0_ce1),.vec_0_q1(vec_0_q1),.vec_1_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_1_address0),.vec_1_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_1_ce0),.vec_1_q0(vec_1_q0),.vec_1_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_1_address1),.vec_1_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_1_ce1),.vec_1_q1(vec_1_q1),.vec_2_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_2_address0),.vec_2_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_2_ce0),.vec_2_q0(vec_2_q0),.vec_2_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_2_address1),.vec_2_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_2_ce1),.vec_2_q1(vec_2_q1),.vec_3_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_3_address0),.vec_3_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_3_ce0),.vec_3_q0(vec_3_q0),.vec_3_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_3_address1),.vec_3_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_3_ce1),.vec_3_q1(vec_3_q1),.vec_4_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_4_address0),.vec_4_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_4_ce0),.vec_4_q0(vec_4_q0),.vec_4_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_4_address1),.vec_4_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_4_ce1),.vec_4_q1(vec_4_q1),.vec_5_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_5_address0),.vec_5_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_5_ce0),.vec_5_q0(vec_5_q0),.vec_5_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_5_address1),.vec_5_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_5_ce1),.vec_5_q1(vec_5_q1),.vec_6_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_6_address0),.vec_6_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_6_ce0),.vec_6_q0(vec_6_q0),.vec_6_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_6_address1),.vec_6_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_6_ce1),.vec_6_q1(vec_6_q1),.vec_7_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_7_address0),.vec_7_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_7_ce0),.vec_7_q0(vec_7_q0),.vec_7_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_7_address1),.vec_7_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_vec_7_ce1),.vec_7_q1(vec_7_q1),.nzval_1_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_1_address0),.nzval_1_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_1_ce0),.nzval_1_q0(nzval_1_q0),.nzval_1_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_1_address1),.nzval_1_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_1_ce1),.nzval_1_q1(nzval_1_q1),.nzval_3_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_3_address0),.nzval_3_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_3_ce0),.nzval_3_q0(nzval_3_q0),.nzval_3_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_3_address1),.nzval_3_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_3_ce1),.nzval_3_q1(nzval_3_q1),.nzval_5_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_5_address0),.nzval_5_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_5_ce0),.nzval_5_q0(nzval_5_q0),.nzval_5_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_5_address1),.nzval_5_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_5_ce1),.nzval_5_q1(nzval_5_q1),.nzval_7_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_7_address0),.nzval_7_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_7_ce0),.nzval_7_q0(nzval_7_q0),.nzval_7_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_7_address1),.nzval_7_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_7_ce1),.nzval_7_q1(nzval_7_q1),.cols_1_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_1_address0),.cols_1_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_1_ce0),.cols_1_q0(cols_1_q0),.cols_1_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_1_address1),.cols_1_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_1_ce1),.cols_1_q1(cols_1_q1),.cols_3_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_3_address0),.cols_3_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_3_ce0),.cols_3_q0(cols_3_q0),.cols_3_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_3_address1),.cols_3_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_3_ce1),.cols_3_q1(cols_3_q1),.cols_5_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_5_address0),.cols_5_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_5_ce0),.cols_5_q0(cols_5_q0),.cols_5_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_5_address1),.cols_5_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_5_ce1),.cols_5_q1(cols_5_q1),.cols_7_address0(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_7_address0),.cols_7_ce0(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_7_ce0),.cols_7_q0(cols_7_q0),.cols_7_address1(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_7_address1),.cols_7_ce1(grp_ellpack_Pipeline_ellpack_2_fu_246_cols_7_ce1),.cols_7_q1(cols_7_q1),.sum_3_out(grp_ellpack_Pipeline_ellpack_2_fu_246_sum_3_out),.sum_3_out_ap_vld(grp_ellpack_Pipeline_ellpack_2_fu_246_sum_3_out_ap_vld));
(* dissolve_hierarchy = "yes" *) ellpack_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U49(.din0(sum_fu_378_p2),.din1(sum_fu_378_p4),.din2(sum_fu_378_p6),.din3(sum_fu_378_p8),.din4(sum_fu_378_p10),.din5(sum_fu_378_p12),.din6(sum_fu_378_p14),.din7(sum_fu_378_p16),.def(sum_fu_378_p17),.sel(sum_fu_378_p18),.dout(sum_fu_378_p19));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ellpack_Pipeline_ellpack_2_fu_246_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_ellpack_Pipeline_ellpack_2_fu_246_ap_start_reg <= 1'b1;
        end else if ((grp_ellpack_Pipeline_ellpack_2_fu_246_ap_ready == 1'b1)) begin
            grp_ellpack_Pipeline_ellpack_2_fu_246_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_134 <= 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        i_fu_134 <= add_ln13_reg_484;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_484 <= add_ln13_fu_315_p2;
        out_0_addr_reg_489 <= zext_ln10_fu_331_p1;
        out_1_addr_reg_494 <= zext_ln10_fu_331_p1;
        out_2_addr_reg_499 <= zext_ln10_fu_331_p1;
        out_3_addr_reg_504 <= zext_ln10_fu_331_p1;
        out_4_addr_reg_509 <= zext_ln10_fu_331_p1;
        out_5_addr_reg_514 <= zext_ln10_fu_331_p1;
        out_6_addr_reg_519 <= zext_ln10_fu_331_p1;
        out_7_addr_reg_524 <= zext_ln10_fu_331_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        empty_reg_538[12 : 1] <= empty_fu_440_p2[12 : 1];
        sum_reg_533 <= sum_fu_378_p19;
        trunc_ln13_reg_529 <= trunc_ln13_fu_343_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_ellpack_Pipeline_ellpack_2_fu_246_sum_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        sum_3_loc_fu_138 <= grp_ellpack_Pipeline_ellpack_2_fu_246_sum_3_out;
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
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if ((grp_ellpack_Pipeline_ellpack_2_fu_246_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln13_fu_309_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln13_fu_309_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_0_address0_local = out_0_addr_reg_489;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_0_address0_local = zext_ln10_fu_331_p1;
    end else begin
        out_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        out_0_ce0_local = 1'b1;
    end else begin
        out_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_reg_529 == 3'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        out_0_we0_local = 1'b1;
    end else begin
        out_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_1_address0_local = out_1_addr_reg_494;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_1_address0_local = zext_ln10_fu_331_p1;
    end else begin
        out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        out_1_ce0_local = 1'b1;
    end else begin
        out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_reg_529 == 3'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        out_1_we0_local = 1'b1;
    end else begin
        out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_2_address0_local = out_2_addr_reg_499;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_2_address0_local = zext_ln10_fu_331_p1;
    end else begin
        out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        out_2_ce0_local = 1'b1;
    end else begin
        out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_reg_529 == 3'd2) & (1'b1 == ap_CS_fsm_state6))) begin
        out_2_we0_local = 1'b1;
    end else begin
        out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_3_address0_local = out_3_addr_reg_504;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_3_address0_local = zext_ln10_fu_331_p1;
    end else begin
        out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        out_3_ce0_local = 1'b1;
    end else begin
        out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_reg_529 == 3'd3) & (1'b1 == ap_CS_fsm_state6))) begin
        out_3_we0_local = 1'b1;
    end else begin
        out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_4_address0_local = out_4_addr_reg_509;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_4_address0_local = zext_ln10_fu_331_p1;
    end else begin
        out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        out_4_ce0_local = 1'b1;
    end else begin
        out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_reg_529 == 3'd4) & (1'b1 == ap_CS_fsm_state6))) begin
        out_4_we0_local = 1'b1;
    end else begin
        out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_5_address0_local = out_5_addr_reg_514;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_5_address0_local = zext_ln10_fu_331_p1;
    end else begin
        out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        out_5_ce0_local = 1'b1;
    end else begin
        out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_reg_529 == 3'd5) & (1'b1 == ap_CS_fsm_state6))) begin
        out_5_we0_local = 1'b1;
    end else begin
        out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_6_address0_local = out_6_addr_reg_519;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_6_address0_local = zext_ln10_fu_331_p1;
    end else begin
        out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        out_6_ce0_local = 1'b1;
    end else begin
        out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_reg_529 == 3'd6) & (1'b1 == ap_CS_fsm_state6))) begin
        out_6_we0_local = 1'b1;
    end else begin
        out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_7_address0_local = out_7_addr_reg_524;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_7_address0_local = zext_ln10_fu_331_p1;
    end else begin
        out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        out_7_ce0_local = 1'b1;
    end else begin
        out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_reg_529 == 3'd7) & (1'b1 == ap_CS_fsm_state6))) begin
        out_7_we0_local = 1'b1;
    end else begin
        out_7_we0_local = 1'b0;
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
            if (((icmp_ln13_fu_309_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_ellpack_Pipeline_ellpack_2_fu_246_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_315_p2 = (i_fu_134 + 9'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign bitcast_ln19_fu_449_p1 = sum_3_loc_fu_138;
assign cols_0_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_0_address0;
assign cols_0_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_0_address1;
assign cols_0_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_0_ce0;
assign cols_0_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_0_ce1;
assign cols_1_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_1_address0;
assign cols_1_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_1_address1;
assign cols_1_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_1_ce0;
assign cols_1_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_1_ce1;
assign cols_2_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_2_address0;
assign cols_2_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_2_address1;
assign cols_2_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_2_ce0;
assign cols_2_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_2_ce1;
assign cols_3_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_3_address0;
assign cols_3_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_3_address1;
assign cols_3_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_3_ce0;
assign cols_3_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_3_ce1;
assign cols_4_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_4_address0;
assign cols_4_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_4_address1;
assign cols_4_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_4_ce0;
assign cols_4_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_4_ce1;
assign cols_5_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_5_address0;
assign cols_5_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_5_address1;
assign cols_5_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_5_ce0;
assign cols_5_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_5_ce1;
assign cols_6_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_6_address0;
assign cols_6_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_6_address1;
assign cols_6_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_6_ce0;
assign cols_6_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_6_ce1;
assign cols_7_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_7_address0;
assign cols_7_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_7_address1;
assign cols_7_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_7_ce0;
assign cols_7_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_cols_7_ce1;
assign empty_fu_440_p2 = (p_shl_fu_425_p1 + p_shl4_fu_436_p1);
assign grp_ellpack_Pipeline_ellpack_2_fu_246_ap_start = grp_ellpack_Pipeline_ellpack_2_fu_246_ap_start_reg;
assign icmp_ln13_fu_309_p2 = ((i_fu_134 == 9'd494) ? 1'b1 : 1'b0);
assign lshr_ln_fu_321_p4 = {{i_fu_134[8:3]}};
assign nzval_0_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_0_address0;
assign nzval_0_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_0_address1;
assign nzval_0_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_0_ce0;
assign nzval_0_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_0_ce1;
assign nzval_1_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_1_address0;
assign nzval_1_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_1_address1;
assign nzval_1_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_1_ce0;
assign nzval_1_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_1_ce1;
assign nzval_2_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_2_address0;
assign nzval_2_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_2_address1;
assign nzval_2_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_2_ce0;
assign nzval_2_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_2_ce1;
assign nzval_3_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_3_address0;
assign nzval_3_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_3_address1;
assign nzval_3_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_3_ce0;
assign nzval_3_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_3_ce1;
assign nzval_4_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_4_address0;
assign nzval_4_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_4_address1;
assign nzval_4_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_4_ce0;
assign nzval_4_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_4_ce1;
assign nzval_5_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_5_address0;
assign nzval_5_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_5_address1;
assign nzval_5_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_5_ce0;
assign nzval_5_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_5_ce1;
assign nzval_6_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_6_address0;
assign nzval_6_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_6_address1;
assign nzval_6_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_6_ce0;
assign nzval_6_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_6_ce1;
assign nzval_7_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_7_address0;
assign nzval_7_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_7_address1;
assign nzval_7_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_7_ce0;
assign nzval_7_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_nzval_7_ce1;
assign out_0_address0 = out_0_address0_local;
assign out_0_ce0 = out_0_ce0_local;
assign out_0_d0 = bitcast_ln19_fu_449_p1;
assign out_0_we0 = out_0_we0_local;
assign out_1_address0 = out_1_address0_local;
assign out_1_ce0 = out_1_ce0_local;
assign out_1_d0 = bitcast_ln19_fu_449_p1;
assign out_1_we0 = out_1_we0_local;
assign out_2_address0 = out_2_address0_local;
assign out_2_ce0 = out_2_ce0_local;
assign out_2_d0 = bitcast_ln19_fu_449_p1;
assign out_2_we0 = out_2_we0_local;
assign out_3_address0 = out_3_address0_local;
assign out_3_ce0 = out_3_ce0_local;
assign out_3_d0 = bitcast_ln19_fu_449_p1;
assign out_3_we0 = out_3_we0_local;
assign out_4_address0 = out_4_address0_local;
assign out_4_ce0 = out_4_ce0_local;
assign out_4_d0 = bitcast_ln19_fu_449_p1;
assign out_4_we0 = out_4_we0_local;
assign out_5_address0 = out_5_address0_local;
assign out_5_ce0 = out_5_ce0_local;
assign out_5_d0 = bitcast_ln19_fu_449_p1;
assign out_5_we0 = out_5_we0_local;
assign out_6_address0 = out_6_address0_local;
assign out_6_ce0 = out_6_ce0_local;
assign out_6_d0 = bitcast_ln19_fu_449_p1;
assign out_6_we0 = out_6_we0_local;
assign out_7_address0 = out_7_address0_local;
assign out_7_ce0 = out_7_ce0_local;
assign out_7_d0 = bitcast_ln19_fu_449_p1;
assign out_7_we0 = out_7_we0_local;
assign p_shl4_fu_436_p1 = tmp_15_fu_429_p3;
assign p_shl_fu_425_p1 = tmp_fu_418_p3;
assign sum_fu_378_p10 = out_4_q0;
assign sum_fu_378_p12 = out_5_q0;
assign sum_fu_378_p14 = out_6_q0;
assign sum_fu_378_p16 = out_7_q0;
assign sum_fu_378_p17 = 'bx;
assign sum_fu_378_p18 = i_fu_134[2:0];
assign sum_fu_378_p2 = out_0_q0;
assign sum_fu_378_p4 = out_1_q0;
assign sum_fu_378_p6 = out_2_q0;
assign sum_fu_378_p8 = out_3_q0;
assign tmp_15_fu_429_p3 = {{i_fu_134}, {1'd0}};
assign tmp_fu_418_p3 = {{i_fu_134}, {3'd0}};
assign trunc_ln13_fu_343_p1 = i_fu_134[2:0];
assign vec_0_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_0_address0;
assign vec_0_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_0_address1;
assign vec_0_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_0_ce0;
assign vec_0_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_0_ce1;
assign vec_1_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_1_address0;
assign vec_1_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_1_address1;
assign vec_1_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_1_ce0;
assign vec_1_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_1_ce1;
assign vec_2_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_2_address0;
assign vec_2_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_2_address1;
assign vec_2_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_2_ce0;
assign vec_2_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_2_ce1;
assign vec_3_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_3_address0;
assign vec_3_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_3_address1;
assign vec_3_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_3_ce0;
assign vec_3_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_3_ce1;
assign vec_4_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_4_address0;
assign vec_4_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_4_address1;
assign vec_4_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_4_ce0;
assign vec_4_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_4_ce1;
assign vec_5_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_5_address0;
assign vec_5_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_5_address1;
assign vec_5_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_5_ce0;
assign vec_5_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_5_ce1;
assign vec_6_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_6_address0;
assign vec_6_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_6_address1;
assign vec_6_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_6_ce0;
assign vec_6_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_6_ce1;
assign vec_7_address0 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_7_address0;
assign vec_7_address1 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_7_address1;
assign vec_7_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_7_ce0;
assign vec_7_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_246_vec_7_ce1;
assign zext_ln10_fu_331_p1 = lshr_ln_fu_321_p4;
always @ (posedge ap_clk) begin
    empty_reg_538[0] <= 1'b0;
end
endmodule 