
module gesummv (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,alpha,beta,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,B_0_address0,B_0_ce0,B_0_q0,B_1_address0,B_1_ce0,B_1_q0,x_address0,x_ce0,x_q0,y_out_din,y_out_full_n,y_out_write);  
parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] alpha;
input  [31:0] beta;
output  [10:0] A_0_address0;
output   A_0_ce0;
input  [31:0] A_0_q0;
output  [10:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
output  [10:0] B_0_address0;
output   B_0_ce0;
input  [31:0] B_0_q0;
output  [10:0] B_1_address0;
output   B_1_ce0;
input  [31:0] B_1_q0;
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
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln14_fu_326_p2;
reg   [6:0] add_ln14_reg_398;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln14_fu_337_p1;
reg   [5:0] trunc_ln14_reg_408;
wire    ap_CS_fsm_state3;
reg   [10:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg    buff_A_ce1;
wire   [31:0] buff_A_q1;
reg   [10:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg    buff_A_1_ce1;
wire   [31:0] buff_A_1_q1;
reg   [10:0] buff_B_address0;
reg    buff_B_ce0;
reg    buff_B_we0;
wire   [31:0] buff_B_q0;
reg    buff_B_ce1;
wire   [31:0] buff_B_q1;
reg   [10:0] buff_B_1_address0;
reg    buff_B_1_ce0;
reg    buff_B_1_we0;
wire   [31:0] buff_B_1_q0;
reg    buff_B_1_ce1;
wire   [31:0] buff_B_1_q1;
reg   [4:0] buff_x_address0;
reg    buff_x_ce0;
wire   [31:0] buff_x_q0;
reg   [4:0] buff_x_address1;
reg    buff_x_ce1;
wire   [31:0] buff_x_q1;
reg   [4:0] buff_x_1_address0;
reg    buff_x_1_ce0;
wire   [31:0] buff_x_1_q0;
reg   [4:0] buff_x_1_address1;
reg    buff_x_1_ce1;
wire   [31:0] buff_x_1_q1;
reg   [4:0] buff_y_out_address0;
reg    buff_y_out_ce0;
reg    buff_y_out_we0;
reg   [31:0] buff_y_out_d0;
wire   [31:0] buff_y_out_q0;
reg   [4:0] buff_y_out_1_address0;
reg    buff_y_out_1_ce0;
reg    buff_y_out_1_we0;
reg   [31:0] buff_y_out_1_d0;
wire   [31:0] buff_y_out_1_q0;
reg   [4:0] tmp1_address0;
reg    tmp1_ce0;
reg    tmp1_we0;
reg   [31:0] tmp1_d0;
wire   [31:0] tmp1_q0;
reg   [4:0] tmp1_1_address0;
reg    tmp1_1_ce0;
reg    tmp1_1_we0;
reg   [31:0] tmp1_1_d0;
wire   [31:0] tmp1_1_q0;
reg   [4:0] tmp2_address0;
reg    tmp2_ce0;
reg    tmp2_we0;
reg   [31:0] tmp2_d0;
wire   [31:0] tmp2_q0;
reg   [4:0] tmp2_1_address0;
reg    tmp2_1_ce0;
reg    tmp2_1_we0;
reg   [31:0] tmp2_1_d0;
wire   [31:0] tmp2_1_q0;
wire    grp_gesummv_Pipeline_lp1_lp2_fu_255_ap_start;
wire    grp_gesummv_Pipeline_lp1_lp2_fu_255_ap_done;
wire    grp_gesummv_Pipeline_lp1_lp2_fu_255_ap_idle;
wire    grp_gesummv_Pipeline_lp1_lp2_fu_255_ap_ready;
wire   [10:0] grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_address0;
wire    grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_ce0;
wire   [10:0] grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_address1;
wire    grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_ce1;
wire   [10:0] grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_1_address0;
wire    grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_1_ce0;
wire   [10:0] grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_1_address1;
wire    grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_1_ce1;
wire   [4:0] grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_address0;
wire    grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_ce0;
wire   [4:0] grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_address1;
wire    grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_ce1;
wire   [4:0] grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_1_address0;
wire    grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_1_ce0;
wire   [4:0] grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_1_address1;
wire    grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_1_ce1;
wire   [4:0] grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_address0;
wire    grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_ce0;
wire    grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_we0;
wire   [31:0] grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_d0;
wire   [4:0] grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_1_address0;
wire    grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_1_ce0;
wire    grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_1_we0;
wire   [31:0] grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_1_d0;
wire   [31:0] grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_416_p_din0;
wire   [31:0] grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_416_p_din1;
wire   [1:0] grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_416_p_opcode;
wire    grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_416_p_ce;
wire   [31:0] grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_420_p_din0;
wire   [31:0] grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_420_p_din1;
wire    grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_420_p_ce;
wire    grp_gesummv_Pipeline_lprd_2_fu_266_ap_start;
wire    grp_gesummv_Pipeline_lprd_2_fu_266_ap_done;
wire    grp_gesummv_Pipeline_lprd_2_fu_266_ap_idle;
wire    grp_gesummv_Pipeline_lprd_2_fu_266_ap_ready;
wire   [10:0] grp_gesummv_Pipeline_lprd_2_fu_266_A_0_address0;
wire    grp_gesummv_Pipeline_lprd_2_fu_266_A_0_ce0;
wire   [10:0] grp_gesummv_Pipeline_lprd_2_fu_266_A_1_address0;
wire    grp_gesummv_Pipeline_lprd_2_fu_266_A_1_ce0;
wire   [10:0] grp_gesummv_Pipeline_lprd_2_fu_266_B_0_address0;
wire    grp_gesummv_Pipeline_lprd_2_fu_266_B_0_ce0;
wire   [10:0] grp_gesummv_Pipeline_lprd_2_fu_266_B_1_address0;
wire    grp_gesummv_Pipeline_lprd_2_fu_266_B_1_ce0;
wire   [10:0] grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_address0;
wire    grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_ce0;
wire    grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_we0;
wire   [31:0] grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_d0;
wire   [10:0] grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_1_address0;
wire    grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_1_ce0;
wire    grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_1_we0;
wire   [31:0] grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_1_d0;
wire   [10:0] grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_address0;
wire    grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_ce0;
wire    grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_we0;
wire   [31:0] grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_d0;
wire   [10:0] grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_1_address0;
wire    grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_1_ce0;
wire    grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_1_we0;
wire   [31:0] grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_1_d0;
wire    grp_gesummv_Pipeline_lp3_lp4_fu_283_ap_start;
wire    grp_gesummv_Pipeline_lp3_lp4_fu_283_ap_done;
wire    grp_gesummv_Pipeline_lp3_lp4_fu_283_ap_idle;
wire    grp_gesummv_Pipeline_lp3_lp4_fu_283_ap_ready;
wire   [10:0] grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_address0;
wire    grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_ce0;
wire   [10:0] grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_address1;
wire    grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_ce1;
wire   [10:0] grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_1_address0;
wire    grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_1_ce0;
wire   [10:0] grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_1_address1;
wire    grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_1_ce1;
wire   [4:0] grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_address0;
wire    grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_ce0;
wire   [4:0] grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_address1;
wire    grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_ce1;
wire   [4:0] grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_1_address0;
wire    grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_1_ce0;
wire   [4:0] grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_1_address1;
wire    grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_1_ce1;
wire   [4:0] grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_address0;
wire    grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_ce0;
wire    grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_we0;
wire   [31:0] grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_d0;
wire   [4:0] grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_1_address0;
wire    grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_1_ce0;
wire    grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_1_we0;
wire   [31:0] grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_1_d0;
wire   [31:0] grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_416_p_din0;
wire   [31:0] grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_416_p_din1;
wire   [1:0] grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_416_p_opcode;
wire    grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_416_p_ce;
wire   [31:0] grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_420_p_din0;
wire   [31:0] grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_420_p_din1;
wire    grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_420_p_ce;
wire    grp_gesummv_Pipeline_lp5_fu_294_ap_start;
wire    grp_gesummv_Pipeline_lp5_fu_294_ap_done;
wire    grp_gesummv_Pipeline_lp5_fu_294_ap_idle;
wire    grp_gesummv_Pipeline_lp5_fu_294_ap_ready;
wire   [4:0] grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_1_address0;
wire    grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_1_ce0;
wire    grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_1_we0;
wire   [31:0] grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_1_d0;
wire   [4:0] grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_address0;
wire    grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_ce0;
wire    grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_we0;
wire   [31:0] grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_d0;
wire   [4:0] grp_gesummv_Pipeline_lp5_fu_294_tmp1_address0;
wire    grp_gesummv_Pipeline_lp5_fu_294_tmp1_ce0;
wire   [4:0] grp_gesummv_Pipeline_lp5_fu_294_tmp1_1_address0;
wire    grp_gesummv_Pipeline_lp5_fu_294_tmp1_1_ce0;
wire   [4:0] grp_gesummv_Pipeline_lp5_fu_294_tmp2_address0;
wire    grp_gesummv_Pipeline_lp5_fu_294_tmp2_ce0;
wire   [4:0] grp_gesummv_Pipeline_lp5_fu_294_tmp2_1_address0;
wire    grp_gesummv_Pipeline_lp5_fu_294_tmp2_1_ce0;
wire   [31:0] grp_gesummv_Pipeline_lp5_fu_294_grp_fu_416_p_din0;
wire   [31:0] grp_gesummv_Pipeline_lp5_fu_294_grp_fu_416_p_din1;
wire   [1:0] grp_gesummv_Pipeline_lp5_fu_294_grp_fu_416_p_opcode;
wire    grp_gesummv_Pipeline_lp5_fu_294_grp_fu_416_p_ce;
wire    grp_gesummv_Pipeline_lpwr_fu_304_ap_start;
wire    grp_gesummv_Pipeline_lpwr_fu_304_ap_done;
wire    grp_gesummv_Pipeline_lpwr_fu_304_ap_idle;
wire    grp_gesummv_Pipeline_lpwr_fu_304_ap_ready;
wire   [31:0] grp_gesummv_Pipeline_lpwr_fu_304_y_out_din;
wire    grp_gesummv_Pipeline_lpwr_fu_304_y_out_write;
wire   [4:0] grp_gesummv_Pipeline_lpwr_fu_304_buff_y_out_address0;
wire    grp_gesummv_Pipeline_lpwr_fu_304_buff_y_out_ce0;
wire   [4:0] grp_gesummv_Pipeline_lpwr_fu_304_buff_y_out_1_address0;
wire    grp_gesummv_Pipeline_lpwr_fu_304_buff_y_out_1_ce0;
reg    grp_gesummv_Pipeline_lp1_lp2_fu_255_ap_start_reg;
wire   [0:0] icmp_ln14_fu_320_p2;
wire    ap_CS_fsm_state5;
reg    grp_gesummv_Pipeline_lprd_2_fu_266_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_gesummv_Pipeline_lp3_lp4_fu_283_ap_start_reg;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
reg    grp_gesummv_Pipeline_lp5_fu_294_ap_start_reg;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
reg    grp_gesummv_Pipeline_lpwr_fu_304_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire   [63:0] zext_ln14_fu_332_p1;
wire   [63:0] zext_ln6_fu_353_p1;
reg   [6:0] i_fu_76;
reg    x_ce0_local;
reg    buff_x_we0_local;
wire   [0:0] trunc_ln14_1_fu_341_p1;
wire   [31:0] bitcast_ln15_fu_365_p1;
reg    buff_x_ce0_local;
reg    tmp1_we0_local;
reg    tmp1_ce0_local;
reg    tmp2_we0_local;
reg    tmp2_ce0_local;
reg    buff_y_out_we0_local;
reg    buff_y_out_ce0_local;
reg    buff_x_1_we0_local;
reg    buff_x_1_ce0_local;
reg    tmp1_1_we0_local;
reg    tmp1_1_ce0_local;
reg    tmp2_1_we0_local;
reg    tmp2_1_ce0_local;
reg    buff_y_out_1_we0_local;
reg    buff_y_out_1_ce0_local;
wire   [4:0] lshr_ln6_fu_344_p4;
wire   [31:0] grp_fu_416_p2;
reg   [31:0] grp_fu_416_p0;
reg   [31:0] grp_fu_416_p1;
reg    grp_fu_416_ce;
wire   [31:0] grp_fu_420_p2;
reg   [31:0] grp_fu_420_p0;
reg   [31:0] grp_fu_420_p1;
reg    grp_fu_420_ce;
reg   [10:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 grp_gesummv_Pipeline_lp1_lp2_fu_255_ap_start_reg = 1'b0;
#0 grp_gesummv_Pipeline_lprd_2_fu_266_ap_start_reg = 1'b0;
#0 grp_gesummv_Pipeline_lp3_lp4_fu_283_ap_start_reg = 1'b0;
#0 grp_gesummv_Pipeline_lp5_fu_294_ap_start_reg = 1'b0;
#0 grp_gesummv_Pipeline_lpwr_fu_304_ap_start_reg = 1'b0;
#0 i_fu_76 = 7'd0;
end
gesummv_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_d0),.q0(buff_A_q0),.address1(grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1));
gesummv_buff_A_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_1_d0),.q0(buff_A_1_q0),.address1(grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1));
gesummv_buff_B_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
buff_B_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_B_address0),.ce0(buff_B_ce0),.we0(buff_B_we0),.d0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_d0),.q0(buff_B_q0),.address1(grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_address1),.ce1(buff_B_ce1),.q1(buff_B_q1));
gesummv_buff_B_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
buff_B_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_B_1_address0),.ce0(buff_B_1_ce0),.we0(buff_B_1_we0),.d0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_1_d0),.q0(buff_B_1_q0),.address1(grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_1_address1),.ce1(buff_B_1_ce1),.q1(buff_B_1_q1));
gesummv_buff_x_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_x_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_address0),.ce0(buff_x_ce0),.we0(buff_x_we0_local),.d0(bitcast_ln15_fu_365_p1),.q0(buff_x_q0),.address1(buff_x_address1),.ce1(buff_x_ce1),.q1(buff_x_q1));
gesummv_buff_x_RAM_1WNR_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_x_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x_1_address0),.ce0(buff_x_1_ce0),.we0(buff_x_1_we0_local),.d0(bitcast_ln15_fu_365_p1),.q0(buff_x_1_q0),.address1(buff_x_1_address1),.ce1(buff_x_1_ce1),.q1(buff_x_1_q1));
gesummv_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_y_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_address0),.ce0(buff_y_out_ce0),.we0(buff_y_out_we0),.d0(buff_y_out_d0),.q0(buff_y_out_q0));
gesummv_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_y_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y_out_1_address0),.ce0(buff_y_out_1_ce0),.we0(buff_y_out_1_we0),.d0(buff_y_out_1_d0),.q0(buff_y_out_1_q0));
gesummv_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
tmp1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_address0),.ce0(tmp1_ce0),.we0(tmp1_we0),.d0(tmp1_d0),.q0(tmp1_q0));
gesummv_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
tmp1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp1_1_address0),.ce0(tmp1_1_ce0),.we0(tmp1_1_we0),.d0(tmp1_1_d0),.q0(tmp1_1_q0));
gesummv_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
tmp2_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp2_address0),.ce0(tmp2_ce0),.we0(tmp2_we0),.d0(tmp2_d0),.q0(tmp2_q0));
gesummv_buff_y_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
tmp2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(tmp2_1_address0),.ce0(tmp2_1_ce0),.we0(tmp2_1_we0),.d0(tmp2_1_d0),.q0(tmp2_1_q0));
gesummv_gesummv_Pipeline_lp1_lp2 grp_gesummv_Pipeline_lp1_lp2_fu_255(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_gesummv_Pipeline_lp1_lp2_fu_255_ap_start),.ap_done(grp_gesummv_Pipeline_lp1_lp2_fu_255_ap_done),.ap_idle(grp_gesummv_Pipeline_lp1_lp2_fu_255_ap_idle),.ap_ready(grp_gesummv_Pipeline_lp1_lp2_fu_255_ap_ready),.buff_A_address0(grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_address0),.buff_A_ce0(grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_address1),.buff_A_ce1(grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_1_address0),.buff_A_1_ce0(grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_1_address1),.buff_A_1_ce1(grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.alpha(alpha),.buff_x_address0(grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_address0),.buff_x_ce0(grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_ce0),.buff_x_q0(buff_x_q0),.buff_x_address1(grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_address1),.buff_x_ce1(grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_ce1),.buff_x_q1(buff_x_q1),.buff_x_1_address0(grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_1_address0),.buff_x_1_ce0(grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_1_ce0),.buff_x_1_q0(buff_x_1_q0),.buff_x_1_address1(grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_1_address1),.buff_x_1_ce1(grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_1_ce1),.buff_x_1_q1(buff_x_1_q1),.tmp1_address0(grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_address0),.tmp1_ce0(grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_ce0),.tmp1_we0(grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_we0),.tmp1_d0(grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_d0),.tmp1_q0(tmp1_q0),.tmp1_1_address0(grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_1_address0),.tmp1_1_ce0(grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_1_ce0),.tmp1_1_we0(grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_1_we0),.tmp1_1_d0(grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_1_d0),.tmp1_1_q0(tmp1_1_q0),.grp_fu_416_p_din0(grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_416_p_din0),.grp_fu_416_p_din1(grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_416_p_din1),.grp_fu_416_p_opcode(grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_416_p_opcode),.grp_fu_416_p_dout0(grp_fu_416_p2),.grp_fu_416_p_ce(grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_416_p_ce),.grp_fu_420_p_din0(grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_420_p_din0),.grp_fu_420_p_din1(grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_420_p_din1),.grp_fu_420_p_dout0(grp_fu_420_p2),.grp_fu_420_p_ce(grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_420_p_ce));
gesummv_gesummv_Pipeline_lprd_2 grp_gesummv_Pipeline_lprd_2_fu_266(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_gesummv_Pipeline_lprd_2_fu_266_ap_start),.ap_done(grp_gesummv_Pipeline_lprd_2_fu_266_ap_done),.ap_idle(grp_gesummv_Pipeline_lprd_2_fu_266_ap_idle),.ap_ready(grp_gesummv_Pipeline_lprd_2_fu_266_ap_ready),.i(trunc_ln14_reg_408),.A_0_address0(grp_gesummv_Pipeline_lprd_2_fu_266_A_0_address0),.A_0_ce0(grp_gesummv_Pipeline_lprd_2_fu_266_A_0_ce0),.A_0_q0(A_0_q0),.A_1_address0(grp_gesummv_Pipeline_lprd_2_fu_266_A_1_address0),.A_1_ce0(grp_gesummv_Pipeline_lprd_2_fu_266_A_1_ce0),.A_1_q0(A_1_q0),.B_0_address0(grp_gesummv_Pipeline_lprd_2_fu_266_B_0_address0),.B_0_ce0(grp_gesummv_Pipeline_lprd_2_fu_266_B_0_ce0),.B_0_q0(B_0_q0),.B_1_address0(grp_gesummv_Pipeline_lprd_2_fu_266_B_1_address0),.B_1_ce0(grp_gesummv_Pipeline_lprd_2_fu_266_B_1_ce0),.B_1_q0(B_1_q0),.buff_A_address0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_address0),.buff_A_ce0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_ce0),.buff_A_we0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_we0),.buff_A_d0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_d0),.buff_A_1_address0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_1_address0),.buff_A_1_ce0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_1_ce0),.buff_A_1_we0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_1_we0),.buff_A_1_d0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_1_d0),.buff_B_address0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_address0),.buff_B_ce0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_ce0),.buff_B_we0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_we0),.buff_B_d0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_d0),.buff_B_1_address0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_1_address0),.buff_B_1_ce0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_1_ce0),.buff_B_1_we0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_1_we0),.buff_B_1_d0(grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_1_d0));
gesummv_gesummv_Pipeline_lp3_lp4 grp_gesummv_Pipeline_lp3_lp4_fu_283(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_gesummv_Pipeline_lp3_lp4_fu_283_ap_start),.ap_done(grp_gesummv_Pipeline_lp3_lp4_fu_283_ap_done),.ap_idle(grp_gesummv_Pipeline_lp3_lp4_fu_283_ap_idle),.ap_ready(grp_gesummv_Pipeline_lp3_lp4_fu_283_ap_ready),.buff_B_address0(grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_address0),.buff_B_ce0(grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_ce0),.buff_B_q0(buff_B_q0),.buff_B_address1(grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_address1),.buff_B_ce1(grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_ce1),.buff_B_q1(buff_B_q1),.buff_B_1_address0(grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_1_address0),.buff_B_1_ce0(grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_1_ce0),.buff_B_1_q0(buff_B_1_q0),.buff_B_1_address1(grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_1_address1),.buff_B_1_ce1(grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_1_ce1),.buff_B_1_q1(buff_B_1_q1),.beta(beta),.buff_x_address0(grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_address0),.buff_x_ce0(grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_ce0),.buff_x_q0(buff_x_q0),.buff_x_address1(grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_address1),.buff_x_ce1(grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_ce1),.buff_x_q1(buff_x_q1),.buff_x_1_address0(grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_1_address0),.buff_x_1_ce0(grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_1_ce0),.buff_x_1_q0(buff_x_1_q0),.buff_x_1_address1(grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_1_address1),.buff_x_1_ce1(grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_1_ce1),.buff_x_1_q1(buff_x_1_q1),.tmp2_address0(grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_address0),.tmp2_ce0(grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_ce0),.tmp2_we0(grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_we0),.tmp2_d0(grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_d0),.tmp2_q0(tmp2_q0),.tmp2_1_address0(grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_1_address0),.tmp2_1_ce0(grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_1_ce0),.tmp2_1_we0(grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_1_we0),.tmp2_1_d0(grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_1_d0),.tmp2_1_q0(tmp2_1_q0),.grp_fu_416_p_din0(grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_416_p_din0),.grp_fu_416_p_din1(grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_416_p_din1),.grp_fu_416_p_opcode(grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_416_p_opcode),.grp_fu_416_p_dout0(grp_fu_416_p2),.grp_fu_416_p_ce(grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_416_p_ce),.grp_fu_420_p_din0(grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_420_p_din0),.grp_fu_420_p_din1(grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_420_p_din1),.grp_fu_420_p_dout0(grp_fu_420_p2),.grp_fu_420_p_ce(grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_420_p_ce));
gesummv_gesummv_Pipeline_lp5 grp_gesummv_Pipeline_lp5_fu_294(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_gesummv_Pipeline_lp5_fu_294_ap_start),.ap_done(grp_gesummv_Pipeline_lp5_fu_294_ap_done),.ap_idle(grp_gesummv_Pipeline_lp5_fu_294_ap_idle),.ap_ready(grp_gesummv_Pipeline_lp5_fu_294_ap_ready),.buff_y_out_1_address0(grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_1_ce0),.buff_y_out_1_we0(grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_1_we0),.buff_y_out_1_d0(grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_1_d0),.buff_y_out_address0(grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_address0),.buff_y_out_ce0(grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_ce0),.buff_y_out_we0(grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_we0),.buff_y_out_d0(grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_d0),.tmp1_address0(grp_gesummv_Pipeline_lp5_fu_294_tmp1_address0),.tmp1_ce0(grp_gesummv_Pipeline_lp5_fu_294_tmp1_ce0),.tmp1_q0(tmp1_q0),.tmp1_1_address0(grp_gesummv_Pipeline_lp5_fu_294_tmp1_1_address0),.tmp1_1_ce0(grp_gesummv_Pipeline_lp5_fu_294_tmp1_1_ce0),.tmp1_1_q0(tmp1_1_q0),.tmp2_address0(grp_gesummv_Pipeline_lp5_fu_294_tmp2_address0),.tmp2_ce0(grp_gesummv_Pipeline_lp5_fu_294_tmp2_ce0),.tmp2_q0(tmp2_q0),.tmp2_1_address0(grp_gesummv_Pipeline_lp5_fu_294_tmp2_1_address0),.tmp2_1_ce0(grp_gesummv_Pipeline_lp5_fu_294_tmp2_1_ce0),.tmp2_1_q0(tmp2_1_q0),.grp_fu_416_p_din0(grp_gesummv_Pipeline_lp5_fu_294_grp_fu_416_p_din0),.grp_fu_416_p_din1(grp_gesummv_Pipeline_lp5_fu_294_grp_fu_416_p_din1),.grp_fu_416_p_opcode(grp_gesummv_Pipeline_lp5_fu_294_grp_fu_416_p_opcode),.grp_fu_416_p_dout0(grp_fu_416_p2),.grp_fu_416_p_ce(grp_gesummv_Pipeline_lp5_fu_294_grp_fu_416_p_ce));
gesummv_gesummv_Pipeline_lpwr grp_gesummv_Pipeline_lpwr_fu_304(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_gesummv_Pipeline_lpwr_fu_304_ap_start),.ap_done(grp_gesummv_Pipeline_lpwr_fu_304_ap_done),.ap_idle(grp_gesummv_Pipeline_lpwr_fu_304_ap_idle),.ap_ready(grp_gesummv_Pipeline_lpwr_fu_304_ap_ready),.y_out_din(grp_gesummv_Pipeline_lpwr_fu_304_y_out_din),.y_out_full_n(y_out_full_n),.y_out_write(grp_gesummv_Pipeline_lpwr_fu_304_y_out_write),.buff_y_out_address0(grp_gesummv_Pipeline_lpwr_fu_304_buff_y_out_address0),.buff_y_out_ce0(grp_gesummv_Pipeline_lpwr_fu_304_buff_y_out_ce0),.buff_y_out_q0(buff_y_out_q0),.buff_y_out_1_address0(grp_gesummv_Pipeline_lpwr_fu_304_buff_y_out_1_address0),.buff_y_out_1_ce0(grp_gesummv_Pipeline_lpwr_fu_304_buff_y_out_1_ce0),.buff_y_out_1_q0(buff_y_out_1_q0));
gesummv_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U38(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_416_p0),.din1(grp_fu_416_p1),.ce(grp_fu_416_ce),.dout(grp_fu_416_p2));
gesummv_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U39(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_420_p0),.din1(grp_fu_420_p1),.ce(grp_fu_420_ce),.dout(grp_fu_420_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_gesummv_Pipeline_lp1_lp2_fu_255_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln14_fu_320_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_gesummv_Pipeline_lp1_lp2_fu_255_ap_start_reg <= 1'b1;
        end else if ((grp_gesummv_Pipeline_lp1_lp2_fu_255_ap_ready == 1'b1)) begin
            grp_gesummv_Pipeline_lp1_lp2_fu_255_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_gesummv_Pipeline_lp3_lp4_fu_283_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_gesummv_Pipeline_lp3_lp4_fu_283_ap_start_reg <= 1'b1;
        end else if ((grp_gesummv_Pipeline_lp3_lp4_fu_283_ap_ready == 1'b1)) begin
            grp_gesummv_Pipeline_lp3_lp4_fu_283_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_gesummv_Pipeline_lp5_fu_294_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_gesummv_Pipeline_lp5_fu_294_ap_start_reg <= 1'b1;
        end else if ((grp_gesummv_Pipeline_lp5_fu_294_ap_ready == 1'b1)) begin
            grp_gesummv_Pipeline_lp5_fu_294_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_gesummv_Pipeline_lprd_2_fu_266_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_gesummv_Pipeline_lprd_2_fu_266_ap_start_reg <= 1'b1;
        end else if ((grp_gesummv_Pipeline_lprd_2_fu_266_ap_ready == 1'b1)) begin
            grp_gesummv_Pipeline_lprd_2_fu_266_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_gesummv_Pipeline_lpwr_fu_304_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_gesummv_Pipeline_lpwr_fu_304_ap_start_reg <= 1'b1;
        end else if ((grp_gesummv_Pipeline_lpwr_fu_304_ap_ready == 1'b1)) begin
            grp_gesummv_Pipeline_lpwr_fu_304_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_76 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_76 <= add_ln14_reg_398;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln14_reg_398 <= add_ln14_fu_326_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln14_reg_408 <= trunc_ln14_fu_337_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_gesummv_Pipeline_lpwr_fu_304_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
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
    if ((grp_gesummv_Pipeline_lprd_2_fu_266_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_gesummv_Pipeline_lp1_lp2_fu_255_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if ((grp_gesummv_Pipeline_lp3_lp4_fu_283_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if ((grp_gesummv_Pipeline_lp5_fu_294_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_gesummv_Pipeline_lpwr_fu_304_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
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
    if (((grp_gesummv_Pipeline_lpwr_fu_304_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_address0 = grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce0 = grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_1_ce1 = grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_we0 = grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_address0 = grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce0 = grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_A_ce1 = grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_we0 = grp_gesummv_Pipeline_lprd_2_fu_266_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_B_1_address0 = grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_B_1_address0 = grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_1_address0;
    end else begin
        buff_B_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_B_1_ce0 = grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_B_1_ce0 = grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_1_ce0;
    end else begin
        buff_B_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_B_1_ce1 = grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_1_ce1;
    end else begin
        buff_B_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_B_1_we0 = grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_1_we0;
    end else begin
        buff_B_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_B_address0 = grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_B_address0 = grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_address0;
    end else begin
        buff_B_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_B_ce0 = grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_B_ce0 = grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_ce0;
    end else begin
        buff_B_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_B_ce1 = grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_B_ce1;
    end else begin
        buff_B_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_B_we0 = grp_gesummv_Pipeline_lprd_2_fu_266_buff_B_we0;
    end else begin
        buff_B_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_1_address0 = grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_address0 = grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_1_address0;
    end else begin
        buff_x_1_address0 = zext_ln6_fu_353_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_1_address1 = grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_address1 = grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_1_address1;
    end else begin
        buff_x_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_1_ce0 = grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_ce0 = grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_1_ce1 = grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_1_ce1 = grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_1_ce1;
    end else begin
        buff_x_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_fu_341_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_1_we0_local = 1'b1;
    end else begin
        buff_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_address0 = grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_address0 = grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_address0;
    end else begin
        buff_x_address0 = zext_ln6_fu_353_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_address1 = grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_address1 = grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_address1;
    end else begin
        buff_x_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_ce0 = grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_ce0 = grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_ce0;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buff_x_ce1 = grp_gesummv_Pipeline_lp3_lp4_fu_283_buff_x_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buff_x_ce1 = grp_gesummv_Pipeline_lp1_lp2_fu_255_buff_x_ce1;
    end else begin
        buff_x_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_fu_341_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_x_we0_local = 1'b1;
    end else begin
        buff_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_1_address0 = grp_gesummv_Pipeline_lpwr_fu_304_buff_y_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_1_address0 = grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_1_address0;
    end else begin
        buff_y_out_1_address0 = zext_ln6_fu_353_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_1_ce0 = grp_gesummv_Pipeline_lpwr_fu_304_buff_y_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_1_ce0 = grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_1_ce0;
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
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_1_d0 = grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_1_d0;
    end else begin
        buff_y_out_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_1_we0 = grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_1_we0;
    end else begin
        buff_y_out_1_we0 = buff_y_out_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_fu_341_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_address0 = grp_gesummv_Pipeline_lpwr_fu_304_buff_y_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_address0 = grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_address0;
    end else begin
        buff_y_out_address0 = zext_ln6_fu_353_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buff_y_out_ce0 = grp_gesummv_Pipeline_lpwr_fu_304_buff_y_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_ce0 = grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_ce0;
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
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_d0 = grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_d0;
    end else begin
        buff_y_out_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buff_y_out_we0 = grp_gesummv_Pipeline_lp5_fu_294_buff_y_out_we0;
    end else begin
        buff_y_out_we0 = buff_y_out_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_fu_341_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_416_ce = grp_gesummv_Pipeline_lp5_fu_294_grp_fu_416_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_416_ce = grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_416_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_416_ce = grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_416_p_ce;
    end else begin
        grp_fu_416_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_416_p0 = grp_gesummv_Pipeline_lp5_fu_294_grp_fu_416_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_416_p0 = grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_416_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_416_p0 = grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_416_p_din0;
    end else begin
        grp_fu_416_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_416_p1 = grp_gesummv_Pipeline_lp5_fu_294_grp_fu_416_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_416_p1 = grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_416_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_416_p1 = grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_416_p_din1;
    end else begin
        grp_fu_416_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_420_ce = grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_420_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_420_ce = grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_420_p_ce;
    end else begin
        grp_fu_420_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_420_p0 = grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_420_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_420_p0 = grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_420_p_din0;
    end else begin
        grp_fu_420_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_420_p1 = grp_gesummv_Pipeline_lp3_lp4_fu_283_grp_fu_420_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_420_p1 = grp_gesummv_Pipeline_lp1_lp2_fu_255_grp_fu_420_p_din1;
    end else begin
        grp_fu_420_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp1_1_address0 = grp_gesummv_Pipeline_lp5_fu_294_tmp1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_address0 = grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_1_address0;
    end else begin
        tmp1_1_address0 = zext_ln6_fu_353_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp1_1_ce0 = grp_gesummv_Pipeline_lp5_fu_294_tmp1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_ce0 = grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_1_ce0;
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
        tmp1_1_d0 = grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_1_d0;
    end else begin
        tmp1_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_1_we0 = grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_1_we0;
    end else begin
        tmp1_1_we0 = tmp1_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_fu_341_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_1_we0_local = 1'b1;
    end else begin
        tmp1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp1_address0 = grp_gesummv_Pipeline_lp5_fu_294_tmp1_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_address0 = grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_address0;
    end else begin
        tmp1_address0 = zext_ln6_fu_353_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp1_ce0 = grp_gesummv_Pipeline_lp5_fu_294_tmp1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_ce0 = grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_ce0;
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
        tmp1_d0 = grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_d0;
    end else begin
        tmp1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp1_we0 = grp_gesummv_Pipeline_lp1_lp2_fu_255_tmp1_we0;
    end else begin
        tmp1_we0 = tmp1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_fu_341_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp2_1_address0 = grp_gesummv_Pipeline_lp5_fu_294_tmp2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp2_1_address0 = grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_1_address0;
    end else begin
        tmp2_1_address0 = zext_ln6_fu_353_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp2_1_ce0 = grp_gesummv_Pipeline_lp5_fu_294_tmp2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp2_1_ce0 = grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_1_ce0;
    end else begin
        tmp2_1_ce0 = tmp2_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp2_1_ce0_local = 1'b1;
    end else begin
        tmp2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp2_1_d0 = grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_1_d0;
    end else begin
        tmp2_1_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp2_1_we0 = grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_1_we0;
    end else begin
        tmp2_1_we0 = tmp2_1_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_fu_341_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp2_1_we0_local = 1'b1;
    end else begin
        tmp2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp2_address0 = grp_gesummv_Pipeline_lp5_fu_294_tmp2_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp2_address0 = grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_address0;
    end else begin
        tmp2_address0 = zext_ln6_fu_353_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp2_ce0 = grp_gesummv_Pipeline_lp5_fu_294_tmp2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp2_ce0 = grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_ce0;
    end else begin
        tmp2_ce0 = tmp2_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp2_ce0_local = 1'b1;
    end else begin
        tmp2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp2_d0 = grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_d0;
    end else begin
        tmp2_d0 = 32'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp2_we0 = grp_gesummv_Pipeline_lp3_lp4_fu_283_tmp2_we0;
    end else begin
        tmp2_we0 = tmp2_we0_local;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_fu_341_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp2_we0_local = 1'b1;
    end else begin
        tmp2_we0_local = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_state11)) begin
        y_out_write = grp_gesummv_Pipeline_lpwr_fu_304_y_out_write;
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
            if (((icmp_ln14_fu_320_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_gesummv_Pipeline_lprd_2_fu_266_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((grp_gesummv_Pipeline_lp1_lp2_fu_255_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((grp_gesummv_Pipeline_lp3_lp4_fu_283_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((grp_gesummv_Pipeline_lp5_fu_294_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_gesummv_Pipeline_lpwr_fu_304_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_0_address0 = grp_gesummv_Pipeline_lprd_2_fu_266_A_0_address0;
assign A_0_ce0 = grp_gesummv_Pipeline_lprd_2_fu_266_A_0_ce0;
assign A_1_address0 = grp_gesummv_Pipeline_lprd_2_fu_266_A_1_address0;
assign A_1_ce0 = grp_gesummv_Pipeline_lprd_2_fu_266_A_1_ce0;
assign B_0_address0 = grp_gesummv_Pipeline_lprd_2_fu_266_B_0_address0;
assign B_0_ce0 = grp_gesummv_Pipeline_lprd_2_fu_266_B_0_ce0;
assign B_1_address0 = grp_gesummv_Pipeline_lprd_2_fu_266_B_1_address0;
assign B_1_ce0 = grp_gesummv_Pipeline_lprd_2_fu_266_B_1_ce0;
assign add_ln14_fu_326_p2 = (i_fu_76 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln15_fu_365_p1 = x_q0;
assign grp_gesummv_Pipeline_lp1_lp2_fu_255_ap_start = grp_gesummv_Pipeline_lp1_lp2_fu_255_ap_start_reg;
assign grp_gesummv_Pipeline_lp3_lp4_fu_283_ap_start = grp_gesummv_Pipeline_lp3_lp4_fu_283_ap_start_reg;
assign grp_gesummv_Pipeline_lp5_fu_294_ap_start = grp_gesummv_Pipeline_lp5_fu_294_ap_start_reg;
assign grp_gesummv_Pipeline_lprd_2_fu_266_ap_start = grp_gesummv_Pipeline_lprd_2_fu_266_ap_start_reg;
assign grp_gesummv_Pipeline_lpwr_fu_304_ap_start = grp_gesummv_Pipeline_lpwr_fu_304_ap_start_reg;
assign icmp_ln14_fu_320_p2 = ((i_fu_76 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln6_fu_344_p4 = {{i_fu_76[5:1]}};
assign trunc_ln14_1_fu_341_p1 = i_fu_76[0:0];
assign trunc_ln14_fu_337_p1 = i_fu_76[5:0];
assign x_address0 = zext_ln14_fu_332_p1;
assign x_ce0 = x_ce0_local;
assign y_out_din = grp_gesummv_Pipeline_lpwr_fu_304_y_out_din;
assign zext_ln14_fu_332_p1 = i_fu_76;
assign zext_ln6_fu_353_p1 = lshr_ln6_fu_344_p4;
endmodule 
