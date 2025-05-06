
module md_kernel (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,force_x_0_address0,force_x_0_ce0,force_x_0_we0,force_x_0_d0,force_x_1_address0,force_x_1_ce0,force_x_1_we0,force_x_1_d0,force_x_2_address0,force_x_2_ce0,force_x_2_we0,force_x_2_d0,force_x_3_address0,force_x_3_ce0,force_x_3_we0,force_x_3_d0,force_y_0_address0,force_y_0_ce0,force_y_0_we0,force_y_0_d0,force_y_1_address0,force_y_1_ce0,force_y_1_we0,force_y_1_d0,force_y_2_address0,force_y_2_ce0,force_y_2_we0,force_y_2_d0,force_y_3_address0,force_y_3_ce0,force_y_3_we0,force_y_3_d0,force_z_0_address0,force_z_0_ce0,force_z_0_we0,force_z_0_d0,force_z_1_address0,force_z_1_ce0,force_z_1_we0,force_z_1_d0,force_z_2_address0,force_z_2_ce0,force_z_2_we0,force_z_2_d0,force_z_3_address0,force_z_3_ce0,force_z_3_we0,force_z_3_d0,position_x_0_address0,position_x_0_ce0,position_x_0_q0,position_x_0_address1,position_x_0_ce1,position_x_0_q1,position_x_1_address0,position_x_1_ce0,position_x_1_q0,position_x_1_address1,position_x_1_ce1,position_x_1_q1,position_x_2_address0,position_x_2_ce0,position_x_2_q0,position_x_2_address1,position_x_2_ce1,position_x_2_q1,position_x_3_address0,position_x_3_ce0,position_x_3_q0,position_x_3_address1,position_x_3_ce1,position_x_3_q1,position_y_0_address0,position_y_0_ce0,position_y_0_q0,position_y_0_address1,position_y_0_ce1,position_y_0_q1,position_y_1_address0,position_y_1_ce0,position_y_1_q0,position_y_1_address1,position_y_1_ce1,position_y_1_q1,position_y_2_address0,position_y_2_ce0,position_y_2_q0,position_y_2_address1,position_y_2_ce1,position_y_2_q1,position_y_3_address0,position_y_3_ce0,position_y_3_q0,position_y_3_address1,position_y_3_ce1,position_y_3_q1,position_z_0_address0,position_z_0_ce0,position_z_0_q0,position_z_0_address1,position_z_0_ce1,position_z_0_q1,position_z_1_address0,position_z_1_ce0,position_z_1_q0,position_z_1_address1,position_z_1_ce1,position_z_1_q1,position_z_2_address0,position_z_2_ce0,position_z_2_q0,position_z_2_address1,position_z_2_ce1,position_z_2_q1,position_z_3_address0,position_z_3_ce0,position_z_3_q0,position_z_3_address1,position_z_3_ce1,position_z_3_q1,NL_0_address0,NL_0_ce0,NL_0_q0,NL_1_address0,NL_1_ce0,NL_1_q0,NL_2_address0,NL_2_ce0,NL_2_q0,NL_3_address0,NL_3_ce0,NL_3_q0);  
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
output  [5:0] force_x_0_address0;
output   force_x_0_ce0;
output   force_x_0_we0;
output  [63:0] force_x_0_d0;
output  [5:0] force_x_1_address0;
output   force_x_1_ce0;
output   force_x_1_we0;
output  [63:0] force_x_1_d0;
output  [5:0] force_x_2_address0;
output   force_x_2_ce0;
output   force_x_2_we0;
output  [63:0] force_x_2_d0;
output  [5:0] force_x_3_address0;
output   force_x_3_ce0;
output   force_x_3_we0;
output  [63:0] force_x_3_d0;
output  [5:0] force_y_0_address0;
output   force_y_0_ce0;
output   force_y_0_we0;
output  [63:0] force_y_0_d0;
output  [5:0] force_y_1_address0;
output   force_y_1_ce0;
output   force_y_1_we0;
output  [63:0] force_y_1_d0;
output  [5:0] force_y_2_address0;
output   force_y_2_ce0;
output   force_y_2_we0;
output  [63:0] force_y_2_d0;
output  [5:0] force_y_3_address0;
output   force_y_3_ce0;
output   force_y_3_we0;
output  [63:0] force_y_3_d0;
output  [5:0] force_z_0_address0;
output   force_z_0_ce0;
output   force_z_0_we0;
output  [63:0] force_z_0_d0;
output  [5:0] force_z_1_address0;
output   force_z_1_ce0;
output   force_z_1_we0;
output  [63:0] force_z_1_d0;
output  [5:0] force_z_2_address0;
output   force_z_2_ce0;
output   force_z_2_we0;
output  [63:0] force_z_2_d0;
output  [5:0] force_z_3_address0;
output   force_z_3_ce0;
output   force_z_3_we0;
output  [63:0] force_z_3_d0;
output  [5:0] position_x_0_address0;
output   position_x_0_ce0;
input  [63:0] position_x_0_q0;
output  [5:0] position_x_0_address1;
output   position_x_0_ce1;
input  [63:0] position_x_0_q1;
output  [5:0] position_x_1_address0;
output   position_x_1_ce0;
input  [63:0] position_x_1_q0;
output  [5:0] position_x_1_address1;
output   position_x_1_ce1;
input  [63:0] position_x_1_q1;
output  [5:0] position_x_2_address0;
output   position_x_2_ce0;
input  [63:0] position_x_2_q0;
output  [5:0] position_x_2_address1;
output   position_x_2_ce1;
input  [63:0] position_x_2_q1;
output  [5:0] position_x_3_address0;
output   position_x_3_ce0;
input  [63:0] position_x_3_q0;
output  [5:0] position_x_3_address1;
output   position_x_3_ce1;
input  [63:0] position_x_3_q1;
output  [5:0] position_y_0_address0;
output   position_y_0_ce0;
input  [63:0] position_y_0_q0;
output  [5:0] position_y_0_address1;
output   position_y_0_ce1;
input  [63:0] position_y_0_q1;
output  [5:0] position_y_1_address0;
output   position_y_1_ce0;
input  [63:0] position_y_1_q0;
output  [5:0] position_y_1_address1;
output   position_y_1_ce1;
input  [63:0] position_y_1_q1;
output  [5:0] position_y_2_address0;
output   position_y_2_ce0;
input  [63:0] position_y_2_q0;
output  [5:0] position_y_2_address1;
output   position_y_2_ce1;
input  [63:0] position_y_2_q1;
output  [5:0] position_y_3_address0;
output   position_y_3_ce0;
input  [63:0] position_y_3_q0;
output  [5:0] position_y_3_address1;
output   position_y_3_ce1;
input  [63:0] position_y_3_q1;
output  [5:0] position_z_0_address0;
output   position_z_0_ce0;
input  [63:0] position_z_0_q0;
output  [5:0] position_z_0_address1;
output   position_z_0_ce1;
input  [63:0] position_z_0_q1;
output  [5:0] position_z_1_address0;
output   position_z_1_ce0;
input  [63:0] position_z_1_q0;
output  [5:0] position_z_1_address1;
output   position_z_1_ce1;
input  [63:0] position_z_1_q1;
output  [5:0] position_z_2_address0;
output   position_z_2_ce0;
input  [63:0] position_z_2_q0;
output  [5:0] position_z_2_address1;
output   position_z_2_ce1;
input  [63:0] position_z_2_q1;
output  [5:0] position_z_3_address0;
output   position_z_3_ce0;
input  [63:0] position_z_3_q0;
output  [5:0] position_z_3_address1;
output   position_z_3_ce1;
input  [63:0] position_z_3_q1;
output  [9:0] NL_0_address0;
output   NL_0_ce0;
input  [31:0] NL_0_q0;
output  [9:0] NL_1_address0;
output   NL_1_ce0;
input  [31:0] NL_1_q0;
output  [9:0] NL_2_address0;
output   NL_2_ce0;
input  [31:0] NL_2_q0;
output  [9:0] NL_3_address0;
output   NL_3_ce0;
input  [31:0] NL_3_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] position_x_0_address0;
reg position_x_0_ce0;
reg position_x_0_ce1;
reg[5:0] position_x_1_address0;
reg position_x_1_ce0;
reg position_x_1_ce1;
reg[5:0] position_x_2_address0;
reg position_x_2_ce0;
reg position_x_2_ce1;
reg[5:0] position_x_3_address0;
reg position_x_3_ce0;
reg position_x_3_ce1;
reg[5:0] position_y_0_address0;
reg position_y_0_ce0;
reg position_y_0_ce1;
reg[5:0] position_y_1_address0;
reg position_y_1_ce0;
reg position_y_1_ce1;
reg[5:0] position_y_2_address0;
reg position_y_2_ce0;
reg position_y_2_ce1;
reg[5:0] position_y_3_address0;
reg position_y_3_ce0;
reg position_y_3_ce1;
reg[5:0] position_z_0_address0;
reg position_z_0_ce0;
reg position_z_0_ce1;
reg[5:0] position_z_1_address0;
reg position_z_1_ce0;
reg position_z_1_ce1;
reg[5:0] position_z_2_address0;
reg position_z_2_ce0;
reg position_z_2_ce1;
reg[5:0] position_z_3_address0;
reg position_z_3_ce0;
reg position_z_3_ce1;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] add_ln18_fu_497_p2;
reg   [8:0] add_ln18_reg_723;
wire    ap_CS_fsm_state2;
wire   [63:0] zext_ln16_fu_513_p1;
reg   [63:0] zext_ln16_reg_728;
wire   [7:0] trunc_ln18_fu_529_p1;
reg   [7:0] trunc_ln18_reg_804;
wire    ap_CS_fsm_state3;
wire   [1:0] trunc_ln18_1_fu_532_p1;
reg   [1:0] trunc_ln18_1_reg_809;
wire   [63:0] i_x_fu_551_p11;
reg   [63:0] i_x_reg_813;
wire   [63:0] i_y_fu_591_p11;
reg   [63:0] i_y_reg_818;
wire   [63:0] i_z_fu_631_p11;
reg   [63:0] i_z_reg_823;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_ap_start;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_ap_done;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_ap_idle;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_ap_ready;
wire   [9:0] grp_md_kernel_Pipeline_loop_j_fu_440_NL_0_address0;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_NL_0_ce0;
wire   [9:0] grp_md_kernel_Pipeline_loop_j_fu_440_NL_2_address0;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_NL_2_ce0;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_x_0_address0;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_x_0_ce0;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_x_0_address1;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_x_0_ce1;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_x_1_address0;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_x_1_ce0;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_x_1_address1;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_x_1_ce1;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_x_2_address0;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_x_2_ce0;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_x_2_address1;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_x_2_ce1;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_x_3_address0;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_x_3_ce0;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_x_3_address1;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_x_3_ce1;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_y_0_address0;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_y_0_ce0;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_y_0_address1;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_y_0_ce1;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_y_1_address0;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_y_1_ce0;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_y_1_address1;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_y_1_ce1;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_y_2_address0;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_y_2_ce0;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_y_2_address1;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_y_2_ce1;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_y_3_address0;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_y_3_ce0;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_y_3_address1;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_y_3_ce1;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_z_0_address0;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_z_0_ce0;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_z_0_address1;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_z_0_ce1;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_z_1_address0;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_z_1_ce0;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_z_1_address1;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_z_1_ce1;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_z_2_address0;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_z_2_ce0;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_z_2_address1;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_z_2_ce1;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_z_3_address0;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_z_3_ce0;
wire   [5:0] grp_md_kernel_Pipeline_loop_j_fu_440_position_z_3_address1;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_position_z_3_ce1;
wire   [9:0] grp_md_kernel_Pipeline_loop_j_fu_440_NL_1_address0;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_NL_1_ce0;
wire   [9:0] grp_md_kernel_Pipeline_loop_j_fu_440_NL_3_address0;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_NL_3_ce0;
wire   [63:0] grp_md_kernel_Pipeline_loop_j_fu_440_fz_out;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_fz_out_ap_vld;
wire   [63:0] grp_md_kernel_Pipeline_loop_j_fu_440_fy_out;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_fy_out_ap_vld;
wire   [63:0] grp_md_kernel_Pipeline_loop_j_fu_440_fx_out;
wire    grp_md_kernel_Pipeline_loop_j_fu_440_fx_out_ap_vld;
reg    grp_md_kernel_Pipeline_loop_j_fu_440_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln18_fu_491_p2;
wire    ap_CS_fsm_state6;
reg   [8:0] i_fu_112;
reg    position_x_0_ce0_local;
reg    position_x_1_ce0_local;
reg    position_x_2_ce0_local;
reg    position_x_3_ce0_local;
reg    position_y_0_ce0_local;
reg    position_y_1_ce0_local;
reg    position_y_2_ce0_local;
reg    position_y_3_ce0_local;
reg    position_z_0_ce0_local;
reg    position_z_1_ce0_local;
reg    position_z_2_ce0_local;
reg    position_z_3_ce0_local;
reg    force_x_2_we0_local;
wire   [63:0] bitcast_ln47_fu_664_p1;
reg    force_x_2_ce0_local;
reg    force_y_2_we0_local;
wire   [63:0] bitcast_ln48_fu_672_p1;
reg    force_y_2_ce0_local;
reg    force_z_2_we0_local;
wire   [63:0] bitcast_ln49_fu_680_p1;
reg    force_z_2_ce0_local;
reg    force_x_1_we0_local;
reg    force_x_1_ce0_local;
reg    force_y_1_we0_local;
reg    force_y_1_ce0_local;
reg    force_z_1_we0_local;
reg    force_z_1_ce0_local;
reg    force_x_0_we0_local;
reg    force_x_0_ce0_local;
reg    force_y_0_we0_local;
reg    force_y_0_ce0_local;
reg    force_z_0_we0_local;
reg    force_z_0_ce0_local;
reg    force_x_3_we0_local;
reg    force_x_3_ce0_local;
reg    force_y_3_we0_local;
reg    force_y_3_ce0_local;
reg    force_z_3_we0_local;
reg    force_z_3_ce0_local;
wire   [5:0] lshr_ln_fu_503_p4;
wire   [63:0] i_x_fu_551_p2;
wire   [63:0] i_x_fu_551_p4;
wire   [63:0] i_x_fu_551_p6;
wire   [63:0] i_x_fu_551_p8;
wire   [63:0] i_x_fu_551_p9;
wire   [63:0] i_y_fu_591_p2;
wire   [63:0] i_y_fu_591_p4;
wire   [63:0] i_y_fu_591_p6;
wire   [63:0] i_y_fu_591_p8;
wire   [63:0] i_y_fu_591_p9;
wire   [63:0] i_z_fu_631_p2;
wire   [63:0] i_z_fu_631_p4;
wire   [63:0] i_z_fu_631_p6;
wire   [63:0] i_z_fu_631_p8;
wire   [63:0] i_z_fu_631_p9;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire   [1:0] i_x_fu_551_p1;
wire   [1:0] i_x_fu_551_p3;
wire  signed [1:0] i_x_fu_551_p5;
wire  signed [1:0] i_x_fu_551_p7;
wire   [1:0] i_y_fu_591_p1;
wire   [1:0] i_y_fu_591_p3;
wire  signed [1:0] i_y_fu_591_p5;
wire  signed [1:0] i_y_fu_591_p7;
wire   [1:0] i_z_fu_631_p1;
wire   [1:0] i_z_fu_631_p3;
wire  signed [1:0] i_z_fu_631_p5;
wire  signed [1:0] i_z_fu_631_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_md_kernel_Pipeline_loop_j_fu_440_ap_start_reg = 1'b0;
#0 i_fu_112 = 9'd0;
end
md_kernel_md_kernel_Pipeline_loop_j grp_md_kernel_Pipeline_loop_j_fu_440(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_md_kernel_Pipeline_loop_j_fu_440_ap_start),.ap_done(grp_md_kernel_Pipeline_loop_j_fu_440_ap_done),.ap_idle(grp_md_kernel_Pipeline_loop_j_fu_440_ap_idle),.ap_ready(grp_md_kernel_Pipeline_loop_j_fu_440_ap_ready),.i(trunc_ln18_reg_804),.NL_0_address0(grp_md_kernel_Pipeline_loop_j_fu_440_NL_0_address0),.NL_0_ce0(grp_md_kernel_Pipeline_loop_j_fu_440_NL_0_ce0),.NL_0_q0(NL_0_q0),.NL_2_address0(grp_md_kernel_Pipeline_loop_j_fu_440_NL_2_address0),.NL_2_ce0(grp_md_kernel_Pipeline_loop_j_fu_440_NL_2_ce0),.NL_2_q0(NL_2_q0),.position_x_0_address0(grp_md_kernel_Pipeline_loop_j_fu_440_position_x_0_address0),.position_x_0_ce0(grp_md_kernel_Pipeline_loop_j_fu_440_position_x_0_ce0),.position_x_0_q0(position_x_0_q0),.position_x_0_address1(grp_md_kernel_Pipeline_loop_j_fu_440_position_x_0_address1),.position_x_0_ce1(grp_md_kernel_Pipeline_loop_j_fu_440_position_x_0_ce1),.position_x_0_q1(position_x_0_q1),.position_x_1_address0(grp_md_kernel_Pipeline_loop_j_fu_440_position_x_1_address0),.position_x_1_ce0(grp_md_kernel_Pipeline_loop_j_fu_440_position_x_1_ce0),.position_x_1_q0(position_x_1_q0),.position_x_1_address1(grp_md_kernel_Pipeline_loop_j_fu_440_position_x_1_address1),.position_x_1_ce1(grp_md_kernel_Pipeline_loop_j_fu_440_position_x_1_ce1),.position_x_1_q1(position_x_1_q1),.position_x_2_address0(grp_md_kernel_Pipeline_loop_j_fu_440_position_x_2_address0),.position_x_2_ce0(grp_md_kernel_Pipeline_loop_j_fu_440_position_x_2_ce0),.position_x_2_q0(position_x_2_q0),.position_x_2_address1(grp_md_kernel_Pipeline_loop_j_fu_440_position_x_2_address1),.position_x_2_ce1(grp_md_kernel_Pipeline_loop_j_fu_440_position_x_2_ce1),.position_x_2_q1(position_x_2_q1),.position_x_3_address0(grp_md_kernel_Pipeline_loop_j_fu_440_position_x_3_address0),.position_x_3_ce0(grp_md_kernel_Pipeline_loop_j_fu_440_position_x_3_ce0),.position_x_3_q0(position_x_3_q0),.position_x_3_address1(grp_md_kernel_Pipeline_loop_j_fu_440_position_x_3_address1),.position_x_3_ce1(grp_md_kernel_Pipeline_loop_j_fu_440_position_x_3_ce1),.position_x_3_q1(position_x_3_q1),.position_y_0_address0(grp_md_kernel_Pipeline_loop_j_fu_440_position_y_0_address0),.position_y_0_ce0(grp_md_kernel_Pipeline_loop_j_fu_440_position_y_0_ce0),.position_y_0_q0(position_y_0_q0),.position_y_0_address1(grp_md_kernel_Pipeline_loop_j_fu_440_position_y_0_address1),.position_y_0_ce1(grp_md_kernel_Pipeline_loop_j_fu_440_position_y_0_ce1),.position_y_0_q1(position_y_0_q1),.position_y_1_address0(grp_md_kernel_Pipeline_loop_j_fu_440_position_y_1_address0),.position_y_1_ce0(grp_md_kernel_Pipeline_loop_j_fu_440_position_y_1_ce0),.position_y_1_q0(position_y_1_q0),.position_y_1_address1(grp_md_kernel_Pipeline_loop_j_fu_440_position_y_1_address1),.position_y_1_ce1(grp_md_kernel_Pipeline_loop_j_fu_440_position_y_1_ce1),.position_y_1_q1(position_y_1_q1),.position_y_2_address0(grp_md_kernel_Pipeline_loop_j_fu_440_position_y_2_address0),.position_y_2_ce0(grp_md_kernel_Pipeline_loop_j_fu_440_position_y_2_ce0),.position_y_2_q0(position_y_2_q0),.position_y_2_address1(grp_md_kernel_Pipeline_loop_j_fu_440_position_y_2_address1),.position_y_2_ce1(grp_md_kernel_Pipeline_loop_j_fu_440_position_y_2_ce1),.position_y_2_q1(position_y_2_q1),.position_y_3_address0(grp_md_kernel_Pipeline_loop_j_fu_440_position_y_3_address0),.position_y_3_ce0(grp_md_kernel_Pipeline_loop_j_fu_440_position_y_3_ce0),.position_y_3_q0(position_y_3_q0),.position_y_3_address1(grp_md_kernel_Pipeline_loop_j_fu_440_position_y_3_address1),.position_y_3_ce1(grp_md_kernel_Pipeline_loop_j_fu_440_position_y_3_ce1),.position_y_3_q1(position_y_3_q1),.position_z_0_address0(grp_md_kernel_Pipeline_loop_j_fu_440_position_z_0_address0),.position_z_0_ce0(grp_md_kernel_Pipeline_loop_j_fu_440_position_z_0_ce0),.position_z_0_q0(position_z_0_q0),.position_z_0_address1(grp_md_kernel_Pipeline_loop_j_fu_440_position_z_0_address1),.position_z_0_ce1(grp_md_kernel_Pipeline_loop_j_fu_440_position_z_0_ce1),.position_z_0_q1(position_z_0_q1),.position_z_1_address0(grp_md_kernel_Pipeline_loop_j_fu_440_position_z_1_address0),.position_z_1_ce0(grp_md_kernel_Pipeline_loop_j_fu_440_position_z_1_ce0),.position_z_1_q0(position_z_1_q0),.position_z_1_address1(grp_md_kernel_Pipeline_loop_j_fu_440_position_z_1_address1),.position_z_1_ce1(grp_md_kernel_Pipeline_loop_j_fu_440_position_z_1_ce1),.position_z_1_q1(position_z_1_q1),.position_z_2_address0(grp_md_kernel_Pipeline_loop_j_fu_440_position_z_2_address0),.position_z_2_ce0(grp_md_kernel_Pipeline_loop_j_fu_440_position_z_2_ce0),.position_z_2_q0(position_z_2_q0),.position_z_2_address1(grp_md_kernel_Pipeline_loop_j_fu_440_position_z_2_address1),.position_z_2_ce1(grp_md_kernel_Pipeline_loop_j_fu_440_position_z_2_ce1),.position_z_2_q1(position_z_2_q1),.position_z_3_address0(grp_md_kernel_Pipeline_loop_j_fu_440_position_z_3_address0),.position_z_3_ce0(grp_md_kernel_Pipeline_loop_j_fu_440_position_z_3_ce0),.position_z_3_q0(position_z_3_q0),.position_z_3_address1(grp_md_kernel_Pipeline_loop_j_fu_440_position_z_3_address1),.position_z_3_ce1(grp_md_kernel_Pipeline_loop_j_fu_440_position_z_3_ce1),.position_z_3_q1(position_z_3_q1),.i_x(i_x_reg_813),.i_y(i_y_reg_818),.i_z(i_z_reg_823),.NL_1_address0(grp_md_kernel_Pipeline_loop_j_fu_440_NL_1_address0),.NL_1_ce0(grp_md_kernel_Pipeline_loop_j_fu_440_NL_1_ce0),.NL_1_q0(NL_1_q0),.NL_3_address0(grp_md_kernel_Pipeline_loop_j_fu_440_NL_3_address0),.NL_3_ce0(grp_md_kernel_Pipeline_loop_j_fu_440_NL_3_ce0),.NL_3_q0(NL_3_q0),.fz_out(grp_md_kernel_Pipeline_loop_j_fu_440_fz_out),.fz_out_ap_vld(grp_md_kernel_Pipeline_loop_j_fu_440_fz_out_ap_vld),.fy_out(grp_md_kernel_Pipeline_loop_j_fu_440_fy_out),.fy_out_ap_vld(grp_md_kernel_Pipeline_loop_j_fu_440_fy_out_ap_vld),.fx_out(grp_md_kernel_Pipeline_loop_j_fu_440_fx_out),.fx_out_ap_vld(grp_md_kernel_Pipeline_loop_j_fu_440_fx_out_ap_vld));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U39(.din0(i_x_fu_551_p2),.din1(i_x_fu_551_p4),.din2(i_x_fu_551_p6),.din3(i_x_fu_551_p8),.def(i_x_fu_551_p9),.sel(trunc_ln18_1_fu_532_p1),.dout(i_x_fu_551_p11));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U40(.din0(i_y_fu_591_p2),.din1(i_y_fu_591_p4),.din2(i_y_fu_591_p6),.din3(i_y_fu_591_p8),.def(i_y_fu_591_p9),.sel(trunc_ln18_1_fu_532_p1),.dout(i_y_fu_591_p11));
(* dissolve_hierarchy = "yes" *) md_kernel_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U41(.din0(i_z_fu_631_p2),.din1(i_z_fu_631_p4),.din2(i_z_fu_631_p6),.din3(i_z_fu_631_p8),.def(i_z_fu_631_p9),.sel(trunc_ln18_1_fu_532_p1),.dout(i_z_fu_631_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_md_kernel_Pipeline_loop_j_fu_440_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_md_kernel_Pipeline_loop_j_fu_440_ap_start_reg <= 1'b1;
        end else if ((grp_md_kernel_Pipeline_loop_j_fu_440_ap_ready == 1'b1)) begin
            grp_md_kernel_Pipeline_loop_j_fu_440_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_112 <= 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        i_fu_112 <= add_ln18_reg_723;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln18_reg_723 <= add_ln18_fu_497_p2;
        zext_ln16_reg_728[5 : 0] <= zext_ln16_fu_513_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_x_reg_813 <= i_x_fu_551_p11;
        i_y_reg_818 <= i_y_fu_591_p11;
        i_z_reg_823 <= i_z_fu_631_p11;
        trunc_ln18_1_reg_809 <= trunc_ln18_1_fu_532_p1;
        trunc_ln18_reg_804 <= trunc_ln18_fu_529_p1;
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
    if ((grp_md_kernel_Pipeline_loop_j_fu_440_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln18_fu_491_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln18_fu_491_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        force_x_0_ce0_local = 1'b1;
    end else begin
        force_x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_1_reg_809 == 2'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        force_x_0_we0_local = 1'b1;
    end else begin
        force_x_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        force_x_1_ce0_local = 1'b1;
    end else begin
        force_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_1_reg_809 == 2'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        force_x_1_we0_local = 1'b1;
    end else begin
        force_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        force_x_2_ce0_local = 1'b1;
    end else begin
        force_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_1_reg_809 == 2'd2) & (1'b1 == ap_CS_fsm_state6))) begin
        force_x_2_we0_local = 1'b1;
    end else begin
        force_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        force_x_3_ce0_local = 1'b1;
    end else begin
        force_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_1_reg_809 == 2'd3) & (1'b1 == ap_CS_fsm_state6))) begin
        force_x_3_we0_local = 1'b1;
    end else begin
        force_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        force_y_0_ce0_local = 1'b1;
    end else begin
        force_y_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_1_reg_809 == 2'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        force_y_0_we0_local = 1'b1;
    end else begin
        force_y_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        force_y_1_ce0_local = 1'b1;
    end else begin
        force_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_1_reg_809 == 2'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        force_y_1_we0_local = 1'b1;
    end else begin
        force_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        force_y_2_ce0_local = 1'b1;
    end else begin
        force_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_1_reg_809 == 2'd2) & (1'b1 == ap_CS_fsm_state6))) begin
        force_y_2_we0_local = 1'b1;
    end else begin
        force_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        force_y_3_ce0_local = 1'b1;
    end else begin
        force_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_1_reg_809 == 2'd3) & (1'b1 == ap_CS_fsm_state6))) begin
        force_y_3_we0_local = 1'b1;
    end else begin
        force_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        force_z_0_ce0_local = 1'b1;
    end else begin
        force_z_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_1_reg_809 == 2'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        force_z_0_we0_local = 1'b1;
    end else begin
        force_z_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        force_z_1_ce0_local = 1'b1;
    end else begin
        force_z_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_1_reg_809 == 2'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        force_z_1_we0_local = 1'b1;
    end else begin
        force_z_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        force_z_2_ce0_local = 1'b1;
    end else begin
        force_z_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_1_reg_809 == 2'd2) & (1'b1 == ap_CS_fsm_state6))) begin
        force_z_2_we0_local = 1'b1;
    end else begin
        force_z_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        force_z_3_ce0_local = 1'b1;
    end else begin
        force_z_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln18_1_reg_809 == 2'd3) & (1'b1 == ap_CS_fsm_state6))) begin
        force_z_3_we0_local = 1'b1;
    end else begin
        force_z_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_x_0_address0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_x_0_address0;
    end else begin
        position_x_0_address0 = zext_ln16_fu_513_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_x_0_ce0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_x_0_ce0;
    end else begin
        position_x_0_ce0 = position_x_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        position_x_0_ce0_local = 1'b1;
    end else begin
        position_x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_x_0_ce1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_x_0_ce1;
    end else begin
        position_x_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_x_1_address0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_x_1_address0;
    end else begin
        position_x_1_address0 = zext_ln16_fu_513_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_x_1_ce0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_x_1_ce0;
    end else begin
        position_x_1_ce0 = position_x_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        position_x_1_ce0_local = 1'b1;
    end else begin
        position_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_x_1_ce1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_x_1_ce1;
    end else begin
        position_x_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_x_2_address0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_x_2_address0;
    end else begin
        position_x_2_address0 = zext_ln16_fu_513_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_x_2_ce0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_x_2_ce0;
    end else begin
        position_x_2_ce0 = position_x_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        position_x_2_ce0_local = 1'b1;
    end else begin
        position_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_x_2_ce1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_x_2_ce1;
    end else begin
        position_x_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_x_3_address0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_x_3_address0;
    end else begin
        position_x_3_address0 = zext_ln16_fu_513_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_x_3_ce0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_x_3_ce0;
    end else begin
        position_x_3_ce0 = position_x_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        position_x_3_ce0_local = 1'b1;
    end else begin
        position_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_x_3_ce1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_x_3_ce1;
    end else begin
        position_x_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_y_0_address0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_y_0_address0;
    end else begin
        position_y_0_address0 = zext_ln16_fu_513_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_y_0_ce0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_y_0_ce0;
    end else begin
        position_y_0_ce0 = position_y_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        position_y_0_ce0_local = 1'b1;
    end else begin
        position_y_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_y_0_ce1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_y_0_ce1;
    end else begin
        position_y_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_y_1_address0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_y_1_address0;
    end else begin
        position_y_1_address0 = zext_ln16_fu_513_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_y_1_ce0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_y_1_ce0;
    end else begin
        position_y_1_ce0 = position_y_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        position_y_1_ce0_local = 1'b1;
    end else begin
        position_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_y_1_ce1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_y_1_ce1;
    end else begin
        position_y_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_y_2_address0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_y_2_address0;
    end else begin
        position_y_2_address0 = zext_ln16_fu_513_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_y_2_ce0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_y_2_ce0;
    end else begin
        position_y_2_ce0 = position_y_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        position_y_2_ce0_local = 1'b1;
    end else begin
        position_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_y_2_ce1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_y_2_ce1;
    end else begin
        position_y_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_y_3_address0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_y_3_address0;
    end else begin
        position_y_3_address0 = zext_ln16_fu_513_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_y_3_ce0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_y_3_ce0;
    end else begin
        position_y_3_ce0 = position_y_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        position_y_3_ce0_local = 1'b1;
    end else begin
        position_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_y_3_ce1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_y_3_ce1;
    end else begin
        position_y_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_z_0_address0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_z_0_address0;
    end else begin
        position_z_0_address0 = zext_ln16_fu_513_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_z_0_ce0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_z_0_ce0;
    end else begin
        position_z_0_ce0 = position_z_0_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        position_z_0_ce0_local = 1'b1;
    end else begin
        position_z_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_z_0_ce1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_z_0_ce1;
    end else begin
        position_z_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_z_1_address0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_z_1_address0;
    end else begin
        position_z_1_address0 = zext_ln16_fu_513_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_z_1_ce0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_z_1_ce0;
    end else begin
        position_z_1_ce0 = position_z_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        position_z_1_ce0_local = 1'b1;
    end else begin
        position_z_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_z_1_ce1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_z_1_ce1;
    end else begin
        position_z_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_z_2_address0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_z_2_address0;
    end else begin
        position_z_2_address0 = zext_ln16_fu_513_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_z_2_ce0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_z_2_ce0;
    end else begin
        position_z_2_ce0 = position_z_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        position_z_2_ce0_local = 1'b1;
    end else begin
        position_z_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_z_2_ce1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_z_2_ce1;
    end else begin
        position_z_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_z_3_address0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_z_3_address0;
    end else begin
        position_z_3_address0 = zext_ln16_fu_513_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_z_3_ce0 = grp_md_kernel_Pipeline_loop_j_fu_440_position_z_3_ce0;
    end else begin
        position_z_3_ce0 = position_z_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        position_z_3_ce0_local = 1'b1;
    end else begin
        position_z_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        position_z_3_ce1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_z_3_ce1;
    end else begin
        position_z_3_ce1 = 1'b0;
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
            if (((icmp_ln18_fu_491_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((grp_md_kernel_Pipeline_loop_j_fu_440_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
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
assign NL_0_address0 = grp_md_kernel_Pipeline_loop_j_fu_440_NL_0_address0;
assign NL_0_ce0 = grp_md_kernel_Pipeline_loop_j_fu_440_NL_0_ce0;
assign NL_1_address0 = grp_md_kernel_Pipeline_loop_j_fu_440_NL_1_address0;
assign NL_1_ce0 = grp_md_kernel_Pipeline_loop_j_fu_440_NL_1_ce0;
assign NL_2_address0 = grp_md_kernel_Pipeline_loop_j_fu_440_NL_2_address0;
assign NL_2_ce0 = grp_md_kernel_Pipeline_loop_j_fu_440_NL_2_ce0;
assign NL_3_address0 = grp_md_kernel_Pipeline_loop_j_fu_440_NL_3_address0;
assign NL_3_ce0 = grp_md_kernel_Pipeline_loop_j_fu_440_NL_3_ce0;
assign add_ln18_fu_497_p2 = (i_fu_112 + 9'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign bitcast_ln47_fu_664_p1 = grp_md_kernel_Pipeline_loop_j_fu_440_fx_out;
assign bitcast_ln48_fu_672_p1 = grp_md_kernel_Pipeline_loop_j_fu_440_fy_out;
assign bitcast_ln49_fu_680_p1 = grp_md_kernel_Pipeline_loop_j_fu_440_fz_out;
assign force_x_0_address0 = zext_ln16_reg_728;
assign force_x_0_ce0 = force_x_0_ce0_local;
assign force_x_0_d0 = bitcast_ln47_fu_664_p1;
assign force_x_0_we0 = force_x_0_we0_local;
assign force_x_1_address0 = zext_ln16_reg_728;
assign force_x_1_ce0 = force_x_1_ce0_local;
assign force_x_1_d0 = bitcast_ln47_fu_664_p1;
assign force_x_1_we0 = force_x_1_we0_local;
assign force_x_2_address0 = zext_ln16_reg_728;
assign force_x_2_ce0 = force_x_2_ce0_local;
assign force_x_2_d0 = bitcast_ln47_fu_664_p1;
assign force_x_2_we0 = force_x_2_we0_local;
assign force_x_3_address0 = zext_ln16_reg_728;
assign force_x_3_ce0 = force_x_3_ce0_local;
assign force_x_3_d0 = bitcast_ln47_fu_664_p1;
assign force_x_3_we0 = force_x_3_we0_local;
assign force_y_0_address0 = zext_ln16_reg_728;
assign force_y_0_ce0 = force_y_0_ce0_local;
assign force_y_0_d0 = bitcast_ln48_fu_672_p1;
assign force_y_0_we0 = force_y_0_we0_local;
assign force_y_1_address0 = zext_ln16_reg_728;
assign force_y_1_ce0 = force_y_1_ce0_local;
assign force_y_1_d0 = bitcast_ln48_fu_672_p1;
assign force_y_1_we0 = force_y_1_we0_local;
assign force_y_2_address0 = zext_ln16_reg_728;
assign force_y_2_ce0 = force_y_2_ce0_local;
assign force_y_2_d0 = bitcast_ln48_fu_672_p1;
assign force_y_2_we0 = force_y_2_we0_local;
assign force_y_3_address0 = zext_ln16_reg_728;
assign force_y_3_ce0 = force_y_3_ce0_local;
assign force_y_3_d0 = bitcast_ln48_fu_672_p1;
assign force_y_3_we0 = force_y_3_we0_local;
assign force_z_0_address0 = zext_ln16_reg_728;
assign force_z_0_ce0 = force_z_0_ce0_local;
assign force_z_0_d0 = bitcast_ln49_fu_680_p1;
assign force_z_0_we0 = force_z_0_we0_local;
assign force_z_1_address0 = zext_ln16_reg_728;
assign force_z_1_ce0 = force_z_1_ce0_local;
assign force_z_1_d0 = bitcast_ln49_fu_680_p1;
assign force_z_1_we0 = force_z_1_we0_local;
assign force_z_2_address0 = zext_ln16_reg_728;
assign force_z_2_ce0 = force_z_2_ce0_local;
assign force_z_2_d0 = bitcast_ln49_fu_680_p1;
assign force_z_2_we0 = force_z_2_we0_local;
assign force_z_3_address0 = zext_ln16_reg_728;
assign force_z_3_ce0 = force_z_3_ce0_local;
assign force_z_3_d0 = bitcast_ln49_fu_680_p1;
assign force_z_3_we0 = force_z_3_we0_local;
assign grp_md_kernel_Pipeline_loop_j_fu_440_ap_start = grp_md_kernel_Pipeline_loop_j_fu_440_ap_start_reg;
assign i_x_fu_551_p2 = position_x_0_q0;
assign i_x_fu_551_p4 = position_x_1_q0;
assign i_x_fu_551_p6 = position_x_2_q0;
assign i_x_fu_551_p8 = position_x_3_q0;
assign i_x_fu_551_p9 = 'bx;
assign i_y_fu_591_p2 = position_y_0_q0;
assign i_y_fu_591_p4 = position_y_1_q0;
assign i_y_fu_591_p6 = position_y_2_q0;
assign i_y_fu_591_p8 = position_y_3_q0;
assign i_y_fu_591_p9 = 'bx;
assign i_z_fu_631_p2 = position_z_0_q0;
assign i_z_fu_631_p4 = position_z_1_q0;
assign i_z_fu_631_p6 = position_z_2_q0;
assign i_z_fu_631_p8 = position_z_3_q0;
assign i_z_fu_631_p9 = 'bx;
assign icmp_ln18_fu_491_p2 = ((i_fu_112 == 9'd256) ? 1'b1 : 1'b0);
assign lshr_ln_fu_503_p4 = {{i_fu_112[7:2]}};
assign position_x_0_address1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_x_0_address1;
assign position_x_1_address1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_x_1_address1;
assign position_x_2_address1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_x_2_address1;
assign position_x_3_address1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_x_3_address1;
assign position_y_0_address1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_y_0_address1;
assign position_y_1_address1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_y_1_address1;
assign position_y_2_address1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_y_2_address1;
assign position_y_3_address1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_y_3_address1;
assign position_z_0_address1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_z_0_address1;
assign position_z_1_address1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_z_1_address1;
assign position_z_2_address1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_z_2_address1;
assign position_z_3_address1 = grp_md_kernel_Pipeline_loop_j_fu_440_position_z_3_address1;
assign trunc_ln18_1_fu_532_p1 = i_fu_112[1:0];
assign trunc_ln18_fu_529_p1 = i_fu_112[7:0];
assign zext_ln16_fu_513_p1 = lshr_ln_fu_503_p4;
always @ (posedge ap_clk) begin
    zext_ln16_reg_728[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 
