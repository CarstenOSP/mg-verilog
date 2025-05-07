module atax (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,x_address0,x_ce0,x_q0,y_out_din,y_out_full_n,y_out_write); 
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
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln11_fu_380_p2;
reg   [6:0] add_ln11_reg_448;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln11_fu_391_p1;
reg   [5:0] trunc_ln11_reg_458;
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
reg   [3:0] buff_x_address0;
reg    buff_x_ce0;
wire   [31:0] buff_x_q0;
reg    buff_x_ce1;
wire   [31:0] buff_x_q1;
reg   [3:0] buff_x_1_address0;
reg    buff_x_1_ce0;
wire   [31:0] buff_x_1_q0;
reg    buff_x_1_ce1;
wire   [31:0] buff_x_1_q1;
reg   [3:0] buff_x_2_address0;
reg    buff_x_2_ce0;
wire   [31:0] buff_x_2_q0;
reg    buff_x_2_ce1;
wire   [31:0] buff_x_2_q1;
reg   [3:0] buff_x_3_address0;
reg    buff_x_3_ce0;
wire   [31:0] buff_x_3_q0;
reg    buff_x_3_ce1;
wire   [31:0] buff_x_3_q1;
reg   [3:0] buff_y_out_address0;
reg    buff_y_out_ce0;
reg    buff_y_out_we0;
reg   [31:0] buff_y_out_d0;
wire   [31:0] buff_y_out_q0;
reg   [3:0] buff_y_out_1_address0;
reg    buff_y_out_1_ce0;
reg    buff_y_out_1_we0;
reg   [31:0] buff_y_out_1_d0;
wire   [31:0] buff_y_out_1_q0;
reg   [3:0] buff_y_out_2_address0;
reg    buff_y_out_2_ce0;
reg    buff_y_out_2_we0;
reg   [31:0] buff_y_out_2_d0;
wire   [31:0] buff_y_out_2_q0;
reg   [3:0] buff_y_out_3_address0;
reg    buff_y_out_3_ce0;
reg    buff_y_out_3_we0;
reg   [31:0] buff_y_out_3_d0;
wire   [31:0] buff_y_out_3_q0;
reg   [3:0] tmp1_address0;
reg    tmp1_ce0;
reg    tmp1_we0;
reg   [31:0] tmp1_d0;
wire   [31:0] tmp1_q0;
reg   [3:0] tmp1_1_address0;
reg    tmp1_1_ce0;
reg    tmp1_1_we0;
reg   [31:0] tmp1_1_d0;
wire   [31:0] tmp1_1_q0;
reg   [3:0] tmp1_2_address0;
reg    tmp1_2_ce0;
reg    tmp1_2_we0;
reg   [31:0] tmp1_2_d0;
wire   [31:0] tmp1_2_q0;
reg   [3:0] tmp1_3_address0;
reg    tmp1_3_ce0;
reg    tmp1_3_we0;
reg   [31:0] tmp1_3_d0;
wire   [31:0] tmp1_3_q0;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_ap_start;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_ap_done;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_ap_idle;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_ap_ready;
wire   [9:0] grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_ce0;
wire   [9:0] grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_ce1;
wire   [9:0] grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_1_ce0;
wire   [9:0] grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_1_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_1_ce1;
wire   [9:0] grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_2_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_2_ce0;
wire   [9:0] grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_2_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_2_ce1;
wire   [9:0] grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_3_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_3_ce0;
wire   [9:0] grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_3_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_3_ce1;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_ce0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_ce1;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_1_ce0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_1_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_1_ce1;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_2_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_2_ce0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_2_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_2_ce1;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_3_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_3_ce0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_3_address1;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_3_ce1;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_d0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_1_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_1_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_1_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_1_d0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_2_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_2_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_2_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_2_d0;
wire   [3:0] grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_3_address0;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_3_ce0;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_3_we0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_3_d0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_466_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_466_p_din1;
wire   [1:0] grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_466_p_opcode;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_466_p_ce;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_470_p_din0;
wire   [31:0] grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_470_p_din1;
wire    grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_470_p_ce;
wire    grp_atax_Pipeline_lprd_2_fu_323_ap_start;
wire    grp_atax_Pipeline_lprd_2_fu_323_ap_done;
wire    grp_atax_Pipeline_lprd_2_fu_323_ap_idle;
wire    grp_atax_Pipeline_lprd_2_fu_323_ap_ready;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_323_A_0_address0;
wire    grp_atax_Pipeline_lprd_2_fu_323_A_0_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_323_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_323_A_1_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_323_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_323_A_2_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_323_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_323_A_3_ce0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_323_buff_A_address0;
wire    grp_atax_Pipeline_lprd_2_fu_323_buff_A_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_323_buff_A_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_323_buff_A_d0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_323_buff_A_1_address0;
wire    grp_atax_Pipeline_lprd_2_fu_323_buff_A_1_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_323_buff_A_1_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_323_buff_A_1_d0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_323_buff_A_2_address0;
wire    grp_atax_Pipeline_lprd_2_fu_323_buff_A_2_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_323_buff_A_2_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_323_buff_A_2_d0;
wire   [9:0] grp_atax_Pipeline_lprd_2_fu_323_buff_A_3_address0;
wire    grp_atax_Pipeline_lprd_2_fu_323_buff_A_3_ce0;
wire    grp_atax_Pipeline_lprd_2_fu_323_buff_A_3_we0;
wire   [31:0] grp_atax_Pipeline_lprd_2_fu_323_buff_A_3_d0;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_ap_start;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_ap_done;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_ap_idle;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_ap_ready;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_ce0;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_1_ce0;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_2_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_2_ce0;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_3_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_3_ce0;
wire   [9:0] grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_ce0;
wire   [9:0] grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_1_ce0;
wire   [9:0] grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_2_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_2_ce0;
wire   [9:0] grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_3_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_3_ce0;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_d0;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_2_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_2_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_2_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_2_d0;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_1_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_1_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_1_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_1_d0;
wire   [3:0] grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_3_address0;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_3_ce0;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_3_we0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_3_d0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_466_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_466_p_din1;
wire   [1:0] grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_466_p_opcode;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_466_p_ce;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_470_p_din0;
wire   [31:0] grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_470_p_din1;
wire    grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_470_p_ce;
wire    grp_atax_Pipeline_lpwr_1_fu_356_ap_start;
wire    grp_atax_Pipeline_lpwr_1_fu_356_ap_done;
wire    grp_atax_Pipeline_lpwr_1_fu_356_ap_idle;
wire    grp_atax_Pipeline_lpwr_1_fu_356_ap_ready;
wire   [31:0] grp_atax_Pipeline_lpwr_1_fu_356_y_out_din;
wire    grp_atax_Pipeline_lpwr_1_fu_356_y_out_write;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_ce0;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_1_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_1_ce0;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_2_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_2_ce0;
wire   [3:0] grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_3_address0;
wire    grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_3_ce0;
reg    grp_atax_Pipeline_lp1_lp2_fu_307_ap_start_reg;
wire   [0:0] icmp_ln11_fu_374_p2;
wire    ap_CS_fsm_state5;
reg    grp_atax_Pipeline_lprd_2_fu_323_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_atax_Pipeline_lp3_lp4_fu_340_ap_start_reg;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
reg    grp_atax_Pipeline_lpwr_1_fu_356_ap_start_reg;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire   [63:0] zext_ln11_fu_386_p1;
wire   [63:0] zext_ln5_fu_407_p1;
reg   [6:0] i_fu_74;
reg    x_ce0_local;
reg    buff_x_2_we0_local;
wire   [1:0] trunc_ln11_1_fu_395_p1;
wire   [31:0] bitcast_ln12_fu_423_p1;
reg    buff_x_2_ce0_local;
reg    buff_y_out_2_we0_local;
reg    buff_y_out_2_ce0_local;
reg    tmp1_2_we0_local;
reg    tmp1_2_ce0_local;
reg    buff_x_1_we0_local;
reg    buff_x_1_ce0_local;
reg    buff_y_out_1_we0_local;
reg    buff_y_out_1_ce0_local;
reg    tmp1_1_we0_local;
reg    tmp1_1_ce0_local;
reg    buff_x_we0_local;
reg    buff_x_ce0_local;
reg    buff_y_out_we0_local;
reg    buff_y_out_ce0_local;
reg    tmp1_we0_local;
reg    tmp1_ce0_local;
reg    buff_x_3_we0_local;
reg    buff_x_3_ce0_local;
reg    buff_y_out_3_we0_local;
reg    buff_y_out_3_ce0_local;
reg    tmp1_3_we0_local;
reg    tmp1_3_ce0_local;
wire   [3:0] lshr_ln5_fu_398_p4;
wire   [31:0] grp_fu_466_p2;
reg   [31:0] grp_fu_466_p0;
reg   [31:0] grp_fu_466_p1;
reg    grp_fu_466_ce;
wire   [31:0] grp_fu_470_p2;
reg   [31:0] grp_fu_470_p0;
reg   [31:0] grp_fu_470_p1;
reg    grp_fu_470_ce;
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
#0 grp_atax_Pipeline_lp1_lp2_fu_307_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lprd_2_fu_323_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lp3_lp4_fu_340_ap_start_reg = 1'b0;
#0 grp_atax_Pipeline_lpwr_1_fu_356_ap_start_reg = 1'b0;
#0 i_fu_74 = 7'd0;
end
atax_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_d0),.q0(buff_A_q0),.address1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1));
atax_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_1_d0),.q0(buff_A_1_q0),.address1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1));
atax_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_2_d0),.q0(buff_A_2_q0),.address1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_2_address1),.ce1(buff_A_2_ce1),.q1(buff_A_2_q1));
atax_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_3_d0),.q0(buff_A_3_q0),.address1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_3_address1),.ce1(buff_A_3_ce1),.q1(buff_A_3_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_address0),.ce0(buff_x_ce0),.we0(buff_x_we0_local),.d0(bitcast_ln12_fu_423_p1),.q0(buff_x_q0),.address1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_address1),.ce1(buff_x_ce1),.q1(buff_x_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_1_address0),.ce0(buff_x_1_ce0),.we0(buff_x_1_we0_local),.d0(bitcast_ln12_fu_423_p1),.q0(buff_x_1_q0),.address1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_1_address1),.ce1(buff_x_1_ce1),.q1(buff_x_1_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_2_address0),.ce0(buff_x_2_ce0),.we0(buff_x_2_we0_local),.d0(bitcast_ln12_fu_423_p1),.q0(buff_x_2_q0),.address1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_2_address1),.ce1(buff_x_2_ce1),.q1(buff_x_2_q1));
atax_buff_x_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_x_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_3_address0),.ce0(buff_x_3_ce0),.we0(buff_x_3_we0_local),.d0(bitcast_ln12_fu_423_p1),.q0(buff_x_3_q0),.address1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_3_address1),.ce1(buff_x_3_ce1),.q1(buff_x_3_q1));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_address0),.ce0(buff_y_out_ce0),.we0(buff_y_out_we0),.d0(buff_y_out_d0),.q0(buff_y_out_q0));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_1_address0),.ce0(buff_y_out_1_ce0),.we0(buff_y_out_1_we0),.d0(buff_y_out_1_d0),.q0(buff_y_out_1_q0));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_2_address0),.ce0(buff_y_out_2_ce0),.we0(buff_y_out_2_we0),.d0(buff_y_out_2_d0),.q0(buff_y_out_2_q0));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
buff_y_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_3_address0),.ce0(buff_y_out_3_ce0),.we0(buff_y_out_3_we0),.d0(buff_y_out_3_d0),.q0(buff_y_out_3_q0));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_address0),.ce0(tmp1_ce0),.we0(tmp1_we0),.d0(tmp1_d0),.q0(tmp1_q0));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_1_address0),.ce0(tmp1_1_ce0),.we0(tmp1_1_we0),.d0(tmp1_1_d0),.q0(tmp1_1_q0));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_2_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_2_address0),.ce0(tmp1_2_ce0),.we0(tmp1_2_we0),.d0(tmp1_2_d0),.q0(tmp1_2_q0));
atax_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
tmp1_3_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_3_address0),.ce0(tmp1_3_ce0),.we0(tmp1_3_we0),.d0(tmp1_3_d0),.q0(tmp1_3_q0));
atax_atax_Pipeline_lp1_lp2 grp_atax_Pipeline_lp1_lp2_fu_307(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp1_lp2_fu_307_ap_start),.ap_done(grp_atax_Pipeline_lp1_lp2_fu_307_ap_done),.ap_idle(grp_atax_Pipeline_lp1_lp2_fu_307_ap_idle),.ap_ready(grp_atax_Pipeline_lp1_lp2_fu_307_ap_ready),.buff_A_address0(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_address1),.buff_A_ce1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_1_address1),.buff_A_1_ce1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_A_2_address0(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_2_address1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_2_address1),.buff_A_2_ce1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_2_ce1),.buff_A_2_q1(buff_A_2_q1),.buff_A_3_address0(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_3_address1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_3_address1),.buff_A_3_ce1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_3_ce1),.buff_A_3_q1(buff_A_3_q1),.buff_x_address0(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_address0),.buff_x_ce0(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_ce0),.buff_x_q0(buff_x_q0),.buff_x_address1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_address1),.buff_x_ce1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_ce1),.buff_x_q1(buff_x_q1),.buff_x_1_address0(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_1_address0),.buff_x_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_1_ce0),.buff_x_1_q0(buff_x_1_q0),.buff_x_1_address1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_1_address1),.buff_x_1_ce1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_1_ce1),.buff_x_1_q1(buff_x_1_q1),.buff_x_2_address0(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_2_address0),.buff_x_2_ce0(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_2_ce0),.buff_x_2_q0(buff_x_2_q0),.buff_x_2_address1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_2_address1),.buff_x_2_ce1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_2_ce1),.buff_x_2_q1(buff_x_2_q1),.buff_x_3_address0(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_3_address0),.buff_x_3_ce0(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_3_ce0),.buff_x_3_q0(buff_x_3_q0),.buff_x_3_address1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_3_address1),.buff_x_3_ce1(grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_3_ce1),.buff_x_3_q1(buff_x_3_q1),.tmp1_address0(grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_ce0),.tmp1_we0(grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_we0),.tmp1_d0(grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_d0),.tmp1_q0(tmp1_q0),.tmp1_1_address0(grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_1_ce0),.tmp1_1_we0(grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_1_we0),.tmp1_1_d0(grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_1_d0),.tmp1_1_q0(tmp1_1_q0),.tmp1_2_address0(grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_2_address0),.tmp1_2_ce0(grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_2_ce0),.tmp1_2_we0(grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_2_we0),.tmp1_2_d0(grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_2_d0),.tmp1_2_q0(tmp1_2_q0),.tmp1_3_address0(grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_3_address0),.tmp1_3_ce0(grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_3_ce0),.tmp1_3_we0(grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_3_we0),.tmp1_3_d0(grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_3_d0),.tmp1_3_q0(tmp1_3_q0),.grp_fu_466_p_din0(grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_466_p_din0),.grp_fu_466_p_din1(grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_466_p_din1),.grp_fu_466_p_opcode(grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_466_p_opcode),.grp_fu_466_p_dout0(grp_fu_466_p2),.grp_fu_466_p_ce(grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_466_p_ce),.grp_fu_470_p_din0(grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_470_p_din0),.grp_fu_470_p_din1(grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_470_p_din1),.grp_fu_470_p_dout0(grp_fu_470_p2),.grp_fu_470_p_ce(grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_470_p_ce));
atax_atax_Pipeline_lprd_2 grp_atax_Pipeline_lprd_2_fu_323(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lprd_2_fu_323_ap_start),.ap_done(grp_atax_Pipeline_lprd_2_fu_323_ap_done),.ap_idle(grp_atax_Pipeline_lprd_2_fu_323_ap_idle),.ap_ready(grp_atax_Pipeline_lprd_2_fu_323_ap_ready),.i(trunc_ln11_reg_458),.A_0_address0(grp_atax_Pipeline_lprd_2_fu_323_A_0_address0),.A_0_ce0(grp_atax_Pipeline_lprd_2_fu_323_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_atax_Pipeline_lprd_2_fu_323_A_1_address0),.A_1_ce0(grp_atax_Pipeline_lprd_2_fu_323_A_1_ce0),.A_1_q0(A_1_q0),.A_2_address0(grp_atax_Pipeline_lprd_2_fu_323_A_2_address0),.A_2_ce0(grp_atax_Pipeline_lprd_2_fu_323_A_2_ce0),.A_2_q0(A_2_q0),.A_3_address0(grp_atax_Pipeline_lprd_2_fu_323_A_3_address0),.A_3_ce0(grp_atax_Pipeline_lprd_2_fu_323_A_3_ce0),.A_3_q0(A_3_q0),.buff_A_address0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_ce0),.buff_A_we0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_we0),.buff_A_d0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_d0),.buff_A_1_address0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_1_ce0),.buff_A_1_we0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_1_we0),.buff_A_1_d0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_1_d0),.buff_A_2_address0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_2_ce0),.buff_A_2_we0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_2_we0),.buff_A_2_d0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_2_d0),.buff_A_3_address0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_3_ce0),.buff_A_3_we0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_3_we0),.buff_A_3_d0(grp_atax_Pipeline_lprd_2_fu_323_buff_A_3_d0));
atax_atax_Pipeline_lp3_lp4 grp_atax_Pipeline_lp3_lp4_fu_340(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lp3_lp4_fu_340_ap_start),.ap_done(grp_atax_Pipeline_lp3_lp4_fu_340_ap_done),.ap_idle(grp_atax_Pipeline_lp3_lp4_fu_340_ap_idle),.ap_ready(grp_atax_Pipeline_lp3_lp4_fu_340_ap_ready),.tmp1_address0(grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_address0),.tmp1_ce0(grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_ce0),.tmp1_q0(tmp1_q0),.tmp1_1_address0(grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_1_address0),.tmp1_1_ce0(grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_1_ce0),.tmp1_1_q0(tmp1_1_q0),.tmp1_2_address0(grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_2_address0),.tmp1_2_ce0(grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_2_ce0),.tmp1_2_q0(tmp1_2_q0),.tmp1_3_address0(grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_3_address0),.tmp1_3_ce0(grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_3_ce0),.tmp1_3_q0(tmp1_3_q0),.buff_A_address0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_address0),.buff_A_ce0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_1_address0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_1_address0),.buff_A_1_ce0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_2_address0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_2_address0),.buff_A_2_ce0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_3_address0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_3_address0),.buff_A_3_ce0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_y_out_address0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_address0),.buff_y_out_ce0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_ce0),.buff_y_out_we0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_we0),.buff_y_out_d0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_d0),.buff_y_out_q0(buff_y_out_q0),.buff_y_out_2_address0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_2_address0),.buff_y_out_2_ce0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_2_ce0),.buff_y_out_2_we0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_2_we0),.buff_y_out_2_d0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_2_d0),.buff_y_out_2_q0(buff_y_out_2_q0),.buff_y_out_1_address0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_1_ce0),.buff_y_out_1_we0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_1_we0),.buff_y_out_1_d0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_1_d0),.buff_y_out_1_q0(buff_y_out_1_q0),.buff_y_out_3_address0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_3_address0),.buff_y_out_3_ce0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_3_ce0),.buff_y_out_3_we0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_3_we0),.buff_y_out_3_d0(grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_3_d0),.buff_y_out_3_q0(buff_y_out_3_q0),.grp_fu_466_p_din0(grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_466_p_din0),.grp_fu_466_p_din1(grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_466_p_din1),.grp_fu_466_p_opcode(grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_466_p_opcode),.grp_fu_466_p_dout0(grp_fu_466_p2),.grp_fu_466_p_ce(grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_466_p_ce),.grp_fu_470_p_din0(grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_470_p_din0),.grp_fu_470_p_din1(grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_470_p_din1),.grp_fu_470_p_dout0(grp_fu_470_p2),.grp_fu_470_p_ce(grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_470_p_ce));
atax_atax_Pipeline_lpwr_1 grp_atax_Pipeline_lpwr_1_fu_356(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_Pipeline_lpwr_1_fu_356_ap_start),.ap_done(grp_atax_Pipeline_lpwr_1_fu_356_ap_done),.ap_idle(grp_atax_Pipeline_lpwr_1_fu_356_ap_idle),.ap_ready(grp_atax_Pipeline_lpwr_1_fu_356_ap_ready),.y_out_din(grp_atax_Pipeline_lpwr_1_fu_356_y_out_din),.y_out_full_n(y_out_full_n),.y_out_write(grp_atax_Pipeline_lpwr_1_fu_356_y_out_write),.buff_y_out_address0(grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_address0),.buff_y_out_ce0(grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_ce0),.buff_y_out_q0(buff_y_out_q0),.buff_y_out_1_address0(grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_1_ce0),.buff_y_out_1_q0(buff_y_out_1_q0),.buff_y_out_2_address0(grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_2_address0),.buff_y_out_2_ce0(grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_2_ce0),.buff_y_out_2_q0(buff_y_out_2_q0),.buff_y_out_3_address0(grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_3_address0),.buff_y_out_3_ce0(grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_3_ce0),.buff_y_out_3_q0(buff_y_out_3_q0));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U46(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_466_p0),.din1(grp_fu_466_p1),.ce(grp_fu_466_ce),.dout(grp_fu_466_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U47(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_470_p0),.din1(grp_fu_470_p1),.ce(grp_fu_470_ce),.dout(grp_fu_470_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp1_lp2_fu_307_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln11_fu_374_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_atax_Pipeline_lp1_lp2_fu_307_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp1_lp2_fu_307_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp1_lp2_fu_307_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lp3_lp4_fu_340_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_atax_Pipeline_lp3_lp4_fu_340_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lp3_lp4_fu_340_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lp3_lp4_fu_340_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lprd_2_fu_323_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_Pipeline_lprd_2_fu_323_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lprd_2_fu_323_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lprd_2_fu_323_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_Pipeline_lpwr_1_fu_356_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_atax_Pipeline_lpwr_1_fu_356_ap_start_reg <= 1'b1;
        end else if ((grp_atax_Pipeline_lpwr_1_fu_356_ap_ready == 1'b1)) begin
            grp_atax_Pipeline_lpwr_1_fu_356_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_74 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_74 <= add_ln11_reg_448;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln11_reg_448 <= add_ln11_fu_380_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln11_reg_458 <= trunc_ln11_fu_391_p1;
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
    if ((grp_atax_Pipeline_lprd_2_fu_323_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_atax_Pipeline_lp1_lp2_fu_307_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lp3_lp4_fu_340_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_Pipeline_lpwr_1_fu_356_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_atax_Pipeline_lpwr_1_fu_356_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
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
    if (((grp_atax_Pipeline_lpwr_1_fu_356_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lprd_2_fu_323_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_323_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce1 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_atax_Pipeline_lprd_2_fu_323_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lprd_2_fu_323_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_address0 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_323_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce0 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_2_ce1 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_2_ce1;
    end else begin
        buff_A_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_we0 = grp_atax_Pipeline_lprd_2_fu_323_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lprd_2_fu_323_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_address0 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_323_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce0 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_3_ce1 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_3_ce1;
    end else begin
        buff_A_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_we0 = grp_atax_Pipeline_lprd_2_fu_323_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_address0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_atax_Pipeline_lprd_2_fu_323_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_atax_Pipeline_lprd_2_fu_323_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce1 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_atax_Pipeline_lprd_2_fu_323_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_1_address0;
    end else begin
        buff_x_1_address0 = zext_ln5_fu_407_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_1_ce0;
    end else begin
        buff_x_1_ce0 = buff_x_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_1_ce0_local = 1'b1;
    end else begin
        buff_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_ce1 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_1_ce1;
    end else begin
        buff_x_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_395_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_1_we0_local = 1'b1;
    end else begin
        buff_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_2_address0 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_2_address0;
    end else begin
        buff_x_2_address0 = zext_ln5_fu_407_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_2_ce0 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_2_ce0;
    end else begin
        buff_x_2_ce0 = buff_x_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_2_ce0_local = 1'b1;
    end else begin
        buff_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_2_ce1 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_2_ce1;
    end else begin
        buff_x_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_395_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_2_we0_local = 1'b1;
    end else begin
        buff_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_3_address0 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_3_address0;
    end else begin
        buff_x_3_address0 = zext_ln5_fu_407_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_3_ce0 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_3_ce0;
    end else begin
        buff_x_3_ce0 = buff_x_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_3_ce0_local = 1'b1;
    end else begin
        buff_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_3_ce1 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_3_ce1;
    end else begin
        buff_x_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_395_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_3_we0_local = 1'b1;
    end else begin
        buff_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_address0 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_address0;
    end else begin
        buff_x_address0 = zext_ln5_fu_407_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_ce0 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_ce0;
    end else begin
        buff_x_ce0 = buff_x_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_x_ce0_local = 1'b1;
    end else begin
        buff_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_ce1 = grp_atax_Pipeline_lp1_lp2_fu_307_buff_x_ce1;
    end else begin
        buff_x_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_395_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_we0_local = 1'b1;
    end else begin
        buff_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_1_address0 = grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_1_address0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_1_address0;
    end else begin
        buff_y_out_1_address0 = zext_ln5_fu_407_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_1_ce0 = grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_1_ce0;
    end else begin
        buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_1_d0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_1_d0;
    end else begin
        buff_y_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_1_we0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_1_we0;
    end else begin
        buff_y_out_1_we0 = buff_y_out_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_395_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_2_address0 = grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_2_address0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_2_address0;
    end else begin
        buff_y_out_2_address0 = zext_ln5_fu_407_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_2_ce0 = grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_2_ce0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_2_ce0;
    end else begin
        buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_2_ce0_local = 1'b1;
    end else begin
        buff_y_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_2_d0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_2_d0;
    end else begin
        buff_y_out_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_2_we0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_2_we0;
    end else begin
        buff_y_out_2_we0 = buff_y_out_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_395_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y_out_2_we0_local = 1'b1;
    end else begin
        buff_y_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_3_address0 = grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_3_address0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_3_address0;
    end else begin
        buff_y_out_3_address0 = zext_ln5_fu_407_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_3_ce0 = grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_3_ce0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_3_ce0;
    end else begin
        buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_3_ce0_local = 1'b1;
    end else begin
        buff_y_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_3_d0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_3_d0;
    end else begin
        buff_y_out_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_3_we0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_3_we0;
    end else begin
        buff_y_out_3_we0 = buff_y_out_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_395_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y_out_3_we0_local = 1'b1;
    end else begin
        buff_y_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_address0 = grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_address0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_address0;
    end else begin
        buff_y_out_address0 = zext_ln5_fu_407_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_ce0 = grp_atax_Pipeline_lpwr_1_fu_356_buff_y_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_ce0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_ce0;
    end else begin
        buff_y_out_ce0 = buff_y_out_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_d0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_d0;
    end else begin
        buff_y_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_y_out_we0 = grp_atax_Pipeline_lp3_lp4_fu_340_buff_y_out_we0;
    end else begin
        buff_y_out_we0 = buff_y_out_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_395_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_466_ce = grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_466_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_466_ce = grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_466_p_ce;
    end else begin
        grp_fu_466_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_466_p0 = grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_466_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_466_p0 = grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_466_p_din0;
    end else begin
        grp_fu_466_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_466_p1 = grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_466_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_466_p1 = grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_466_p_din1;
    end else begin
        grp_fu_466_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_470_ce = grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_470_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_470_ce = grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_470_p_ce;
    end else begin
        grp_fu_470_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_470_p0 = grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_470_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_470_p0 = grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_470_p_din0;
    end else begin
        grp_fu_470_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_470_p1 = grp_atax_Pipeline_lp3_lp4_fu_340_grp_fu_470_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_470_p1 = grp_atax_Pipeline_lp1_lp2_fu_307_grp_fu_470_p_din1;
    end else begin
        grp_fu_470_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_address0 = grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_1_address0;
    end else begin
        tmp1_1_address0 = zext_ln5_fu_407_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_1_ce0;
    end else begin
        tmp1_1_ce0 = tmp1_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_d0 = grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_1_d0;
    end else begin
        tmp1_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_we0 = grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_1_we0;
    end else begin
        tmp1_1_we0 = tmp1_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_395_p1 == 2'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp1_2_address0 = grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_2_address0 = grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_2_address0;
    end else begin
        tmp1_2_address0 = zext_ln5_fu_407_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp1_2_ce0 = grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_2_ce0 = grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_2_ce0;
    end else begin
        tmp1_2_ce0 = tmp1_2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_2_d0 = grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_2_d0;
    end else begin
        tmp1_2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_2_we0 = grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_2_we0;
    end else begin
        tmp1_2_we0 = tmp1_2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_395_p1 == 2'd2) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_2_we0_local = 1'b1;
    end else begin
        tmp1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp1_3_address0 = grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_3_address0 = grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_3_address0;
    end else begin
        tmp1_3_address0 = zext_ln5_fu_407_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp1_3_ce0 = grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_3_ce0 = grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_3_ce0;
    end else begin
        tmp1_3_ce0 = tmp1_3_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_3_d0 = grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_3_d0;
    end else begin
        tmp1_3_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_3_we0 = grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_3_we0;
    end else begin
        tmp1_3_we0 = tmp1_3_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_395_p1 == 2'd3) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_3_we0_local = 1'b1;
    end else begin
        tmp1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp1_address0 = grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_address0 = grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_address0;
    end else begin
        tmp1_address0 = zext_ln5_fu_407_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp3_lp4_fu_340_tmp1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_ce0 = grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_ce0;
    end else begin
        tmp1_ce0 = tmp1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_d0 = grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_d0;
    end else begin
        tmp1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_we0 = grp_atax_Pipeline_lp1_lp2_fu_307_tmp1_we0;
    end else begin
        tmp1_we0 = tmp1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln11_1_fu_395_p1 == 2'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        x_ce0_local = 1'b1;
    end else begin
        x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        y_out_write = grp_atax_Pipeline_lpwr_1_fu_356_y_out_write;
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
            if (((icmp_ln11_fu_374_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_atax_Pipeline_lprd_2_fu_323_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((grp_atax_Pipeline_lp1_lp2_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((grp_atax_Pipeline_lp3_lp4_fu_340_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((grp_atax_Pipeline_lpwr_1_fu_356_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
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
assign A_0_address0 = grp_atax_Pipeline_lprd_2_fu_323_A_0_address0;
assign A_0_ce0 = grp_atax_Pipeline_lprd_2_fu_323_A_0_ce0;
assign A_1_address0 = grp_atax_Pipeline_lprd_2_fu_323_A_1_address0;
assign A_1_ce0 = grp_atax_Pipeline_lprd_2_fu_323_A_1_ce0;
assign A_2_address0 = grp_atax_Pipeline_lprd_2_fu_323_A_2_address0;
assign A_2_ce0 = grp_atax_Pipeline_lprd_2_fu_323_A_2_ce0;
assign A_3_address0 = grp_atax_Pipeline_lprd_2_fu_323_A_3_address0;
assign A_3_ce0 = grp_atax_Pipeline_lprd_2_fu_323_A_3_ce0;
assign add_ln11_fu_380_p2 = (i_fu_74 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln12_fu_423_p1 = x_q0;
assign grp_atax_Pipeline_lp1_lp2_fu_307_ap_start = grp_atax_Pipeline_lp1_lp2_fu_307_ap_start_reg;
assign grp_atax_Pipeline_lp3_lp4_fu_340_ap_start = grp_atax_Pipeline_lp3_lp4_fu_340_ap_start_reg;
assign grp_atax_Pipeline_lprd_2_fu_323_ap_start = grp_atax_Pipeline_lprd_2_fu_323_ap_start_reg;
assign grp_atax_Pipeline_lpwr_1_fu_356_ap_start = grp_atax_Pipeline_lpwr_1_fu_356_ap_start_reg;
assign icmp_ln11_fu_374_p2 = ((i_fu_74 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_398_p4 = {{i_fu_74[5:2]}};
assign trunc_ln11_1_fu_395_p1 = i_fu_74[1:0];
assign trunc_ln11_fu_391_p1 = i_fu_74[5:0];
assign x_address0 = zext_ln11_fu_386_p1;
assign x_ce0 = x_ce0_local;
assign y_out_din = grp_atax_Pipeline_lpwr_1_fu_356_y_out_din;
assign zext_ln11_fu_386_p1 = i_fu_74;
assign zext_ln5_fu_407_p1 = lshr_ln5_fu_398_p4;
endmodule 