
module mvt (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_address0,A_ce0,A_q0,x1_address0,x1_ce0,x1_q0,x2_address0,x2_ce0,x2_q0,y1_address0,y1_ce0,y1_q0,y2_dout,y2_empty_n,y2_read,x1_out_din,x1_out_full_n,x1_out_write,x2_out_din,x2_out_full_n,x2_out_write);  
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
output  [5:0] x1_address0;
output   x1_ce0;
input  [31:0] x1_q0;
output  [5:0] x2_address0;
output   x2_ce0;
input  [31:0] x2_q0;
output  [5:0] y1_address0;
output   y1_ce0;
input  [31:0] y1_q0;
input  [31:0] y2_dout;
input   y2_empty_n;
output   y2_read;
output  [31:0] x1_out_din;
input   x1_out_full_n;
output   x1_out_write;
output  [31:0] x2_out_din;
input   x2_out_full_n;
output   x2_out_write;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg y2_read;
reg x1_out_write;
reg x2_out_write;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [10:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg   [10:0] buff_A_address1;
reg    buff_A_ce1;
wire   [31:0] buff_A_q1;
reg   [10:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg   [10:0] buff_A_1_address1;
reg    buff_A_1_ce1;
wire   [31:0] buff_A_1_q1;
reg   [5:0] buff_x1_address0;
reg    buff_x1_ce0;
reg    buff_x1_we0;
reg   [31:0] buff_x1_d0;
wire   [31:0] buff_x1_q0;
reg   [5:0] buff_x2_address0;
reg    buff_x2_ce0;
reg    buff_x2_we0;
reg   [31:0] buff_x2_d0;
wire   [31:0] buff_x2_q0;
reg   [5:0] buff_y1_address0;
reg    buff_y1_ce0;
reg    buff_y1_we0;
wire   [31:0] buff_y1_q0;
reg    buff_y1_ce1;
wire   [31:0] buff_y1_q1;
reg   [4:0] buff_y2_address0;
reg    buff_y2_ce0;
reg    buff_y2_we0;
wire   [31:0] buff_y2_q0;
reg    buff_y2_ce1;
wire   [31:0] buff_y2_q1;
reg   [4:0] buff_y2_1_address0;
reg    buff_y2_1_ce0;
reg    buff_y2_1_we0;
wire   [31:0] buff_y2_1_q0;
reg    buff_y2_1_ce1;
wire   [31:0] buff_y2_1_q1;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_ap_start;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_ap_done;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_ap_idle;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_ap_ready;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_y2_read;
wire   [11:0] grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_A_address0;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_A_ce0;
wire   [10:0] grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_address0;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_ce0;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_d0;
wire   [10:0] grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_1_address0;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_1_ce0;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_1_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_1_d0;
wire   [5:0] grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_x1_address0;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_x1_ce0;
wire   [5:0] grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x1_address0;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x1_ce0;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x1_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x1_d0;
wire   [5:0] grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_x2_address0;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_x2_ce0;
wire   [5:0] grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x2_address0;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x2_ce0;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x2_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x2_d0;
wire   [5:0] grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_y1_address0;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_y1_ce0;
wire   [5:0] grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y1_address0;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y1_ce0;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y1_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y1_d0;
wire   [4:0] grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_address0;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_ce0;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_d0;
wire   [4:0] grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_1_address0;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_1_ce0;
wire    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_1_we0;
wire   [31:0] grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_1_d0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_100_ap_start;
wire    grp_mvt_Pipeline_lp1_lp2_fu_100_ap_done;
wire    grp_mvt_Pipeline_lp1_lp2_fu_100_ap_idle;
wire    grp_mvt_Pipeline_lp1_lp2_fu_100_ap_ready;
wire   [10:0] grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_ce0;
wire   [10:0] grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_address1;
wire    grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_ce1;
wire   [10:0] grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_1_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_1_ce0;
wire   [10:0] grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_1_address1;
wire    grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_1_ce1;
wire   [5:0] grp_mvt_Pipeline_lp1_lp2_fu_100_buff_y1_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_100_buff_y1_ce0;
wire   [5:0] grp_mvt_Pipeline_lp1_lp2_fu_100_buff_y1_address1;
wire    grp_mvt_Pipeline_lp1_lp2_fu_100_buff_y1_ce1;
wire   [5:0] grp_mvt_Pipeline_lp1_lp2_fu_100_buff_x1_address0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_100_buff_x1_ce0;
wire    grp_mvt_Pipeline_lp1_lp2_fu_100_buff_x1_we0;
wire   [31:0] grp_mvt_Pipeline_lp1_lp2_fu_100_buff_x1_d0;
wire   [31:0] grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_127_p_din0;
wire   [31:0] grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_127_p_din1;
wire   [1:0] grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_127_p_opcode;
wire    grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_127_p_ce;
wire   [31:0] grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_131_p_din0;
wire   [31:0] grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_131_p_din1;
wire    grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_131_p_ce;
wire    grp_mvt_Pipeline_lp3_lp4_fu_108_ap_start;
wire    grp_mvt_Pipeline_lp3_lp4_fu_108_ap_done;
wire    grp_mvt_Pipeline_lp3_lp4_fu_108_ap_idle;
wire    grp_mvt_Pipeline_lp3_lp4_fu_108_ap_ready;
wire   [10:0] grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_ce0;
wire   [10:0] grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_address1;
wire    grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_ce1;
wire   [10:0] grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_1_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_1_ce0;
wire   [10:0] grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_1_address1;
wire    grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_1_ce1;
wire   [4:0] grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_ce0;
wire   [4:0] grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_address1;
wire    grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_ce1;
wire   [4:0] grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_1_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_1_ce0;
wire   [4:0] grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_1_address1;
wire    grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_1_ce1;
wire   [5:0] grp_mvt_Pipeline_lp3_lp4_fu_108_buff_x2_address0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_108_buff_x2_ce0;
wire    grp_mvt_Pipeline_lp3_lp4_fu_108_buff_x2_we0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_108_buff_x2_d0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_127_p_din0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_127_p_din1;
wire   [1:0] grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_127_p_opcode;
wire    grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_127_p_ce;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_131_p_din0;
wire   [31:0] grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_131_p_din1;
wire    grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_131_p_ce;
wire    grp_mvt_Pipeline_lpwr_fu_117_ap_start;
wire    grp_mvt_Pipeline_lpwr_fu_117_ap_done;
wire    grp_mvt_Pipeline_lpwr_fu_117_ap_idle;
wire    grp_mvt_Pipeline_lpwr_fu_117_ap_ready;
wire   [31:0] grp_mvt_Pipeline_lpwr_fu_117_x1_out_din;
wire    grp_mvt_Pipeline_lpwr_fu_117_x1_out_write;
wire   [31:0] grp_mvt_Pipeline_lpwr_fu_117_x2_out_din;
wire    grp_mvt_Pipeline_lpwr_fu_117_x2_out_write;
wire   [5:0] grp_mvt_Pipeline_lpwr_fu_117_buff_x1_address0;
wire    grp_mvt_Pipeline_lpwr_fu_117_buff_x1_ce0;
wire   [5:0] grp_mvt_Pipeline_lpwr_fu_117_buff_x2_address0;
wire    grp_mvt_Pipeline_lpwr_fu_117_buff_x2_ce0;
reg    grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_mvt_Pipeline_lp1_lp2_fu_100_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_mvt_Pipeline_lp3_lp4_fu_108_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg    grp_mvt_Pipeline_lpwr_fu_117_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire   [31:0] grp_fu_127_p2;
reg   [31:0] grp_fu_127_p0;
reg   [31:0] grp_fu_127_p1;
reg    grp_fu_127_ce;
wire   [31:0] grp_fu_131_p2;
reg   [31:0] grp_fu_131_p0;
reg   [31:0] grp_fu_131_p1;
reg    grp_fu_131_ce;
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
#0 grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_ap_start_reg = 1'b0;
#0 grp_mvt_Pipeline_lp1_lp2_fu_100_ap_start_reg = 1'b0;
#0 grp_mvt_Pipeline_lp3_lp4_fu_108_ap_start_reg = 1'b0;
#0 grp_mvt_Pipeline_lpwr_fu_117_ap_start_reg = 1'b0;
end
mvt_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_d0),.q0(buff_A_q0),.address1(buff_A_address1),.ce1(buff_A_ce1),.q1(buff_A_q1));
mvt_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_1_d0),.q0(buff_A_1_q0),.address1(buff_A_1_address1),.ce1(buff_A_1_ce1),.q1(buff_A_1_q1));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_x1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x1_address0),.ce0(buff_x1_ce0),.we0(buff_x1_we0),.d0(buff_x1_d0),.q0(buff_x1_q0));
mvt_buff_x1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_x2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_x2_address0),.ce0(buff_x2_ce0),.we0(buff_x2_we0),.d0(buff_x2_d0),.q0(buff_x2_q0));
mvt_buff_y1_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_y1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y1_address0),.ce0(buff_y1_ce0),.we0(buff_y1_we0),.d0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y1_d0),.q0(buff_y1_q0),.address1(grp_mvt_Pipeline_lp1_lp2_fu_100_buff_y1_address1),.ce1(buff_y1_ce1),.q1(buff_y1_q1));
mvt_buff_y2_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_y2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y2_address0),.ce0(buff_y2_ce0),.we0(buff_y2_we0),.d0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_d0),.q0(buff_y2_q0),.address1(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_address1),.ce1(buff_y2_ce1),.q1(buff_y2_q1));
mvt_buff_y2_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
buff_y2_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_y2_1_address0),.ce0(buff_y2_1_ce0),.we0(buff_y2_1_we0),.d0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_1_d0),.q0(buff_y2_1_q0),.address1(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_1_address1),.ce1(buff_y2_1_ce1),.q1(buff_y2_1_q1));
mvt_mvt_Pipeline_lprd_1_lprd_2 grp_mvt_Pipeline_lprd_1_lprd_2_fu_72(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_ap_start),.ap_done(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_ap_done),.ap_idle(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_ap_idle),.ap_ready(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_ap_ready),.y2_dout(y2_dout),.y2_empty_n(y2_empty_n),.y2_read(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_y2_read),.A_address0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_A_address0),.A_ce0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_A_ce0),.A_q0(A_q0),.buff_A_address0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_address0),.buff_A_ce0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_ce0),.buff_A_we0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_we0),.buff_A_d0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_d0),.buff_A_1_address0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_1_address0),.buff_A_1_ce0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_1_ce0),.buff_A_1_we0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_1_we0),.buff_A_1_d0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_1_d0),.x1_address0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_x1_address0),.x1_ce0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_x1_ce0),.x1_q0(x1_q0),.buff_x1_address0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x1_address0),.buff_x1_ce0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x1_ce0),.buff_x1_we0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x1_we0),.buff_x1_d0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x1_d0),.x2_address0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_x2_address0),.x2_ce0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_x2_ce0),.x2_q0(x2_q0),.buff_x2_address0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x2_address0),.buff_x2_ce0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x2_ce0),.buff_x2_we0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x2_we0),.buff_x2_d0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x2_d0),.y1_address0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_y1_address0),.y1_ce0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_y1_ce0),.y1_q0(y1_q0),.buff_y1_address0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y1_address0),.buff_y1_ce0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y1_ce0),.buff_y1_we0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y1_we0),.buff_y1_d0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y1_d0),.buff_y2_address0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_address0),.buff_y2_ce0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_ce0),.buff_y2_we0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_we0),.buff_y2_d0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_d0),.buff_y2_1_address0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_1_address0),.buff_y2_1_ce0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_1_ce0),.buff_y2_1_we0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_1_we0),.buff_y2_1_d0(grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_1_d0));
mvt_mvt_Pipeline_lp1_lp2 grp_mvt_Pipeline_lp1_lp2_fu_100(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_mvt_Pipeline_lp1_lp2_fu_100_ap_start),.ap_done(grp_mvt_Pipeline_lp1_lp2_fu_100_ap_done),.ap_idle(grp_mvt_Pipeline_lp1_lp2_fu_100_ap_idle),.ap_ready(grp_mvt_Pipeline_lp1_lp2_fu_100_ap_ready),.buff_A_address0(grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_address0),.buff_A_ce0(grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_address1),.buff_A_ce1(grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_1_address0),.buff_A_1_ce0(grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_1_address1),.buff_A_1_ce1(grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_y1_address0(grp_mvt_Pipeline_lp1_lp2_fu_100_buff_y1_address0),.buff_y1_ce0(grp_mvt_Pipeline_lp1_lp2_fu_100_buff_y1_ce0),.buff_y1_q0(buff_y1_q0),.buff_y1_address1(grp_mvt_Pipeline_lp1_lp2_fu_100_buff_y1_address1),.buff_y1_ce1(grp_mvt_Pipeline_lp1_lp2_fu_100_buff_y1_ce1),.buff_y1_q1(buff_y1_q1),.buff_x1_address0(grp_mvt_Pipeline_lp1_lp2_fu_100_buff_x1_address0),.buff_x1_ce0(grp_mvt_Pipeline_lp1_lp2_fu_100_buff_x1_ce0),.buff_x1_we0(grp_mvt_Pipeline_lp1_lp2_fu_100_buff_x1_we0),.buff_x1_d0(grp_mvt_Pipeline_lp1_lp2_fu_100_buff_x1_d0),.buff_x1_q0(buff_x1_q0),.grp_fu_127_p_din0(grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_127_p_din0),.grp_fu_127_p_din1(grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_127_p_din1),.grp_fu_127_p_opcode(grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_127_p_opcode),.grp_fu_127_p_dout0(grp_fu_127_p2),.grp_fu_127_p_ce(grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_127_p_ce),.grp_fu_131_p_din0(grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_131_p_din0),.grp_fu_131_p_din1(grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_131_p_din1),.grp_fu_131_p_dout0(grp_fu_131_p2),.grp_fu_131_p_ce(grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_131_p_ce));
mvt_mvt_Pipeline_lp3_lp4 grp_mvt_Pipeline_lp3_lp4_fu_108(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_mvt_Pipeline_lp3_lp4_fu_108_ap_start),.ap_done(grp_mvt_Pipeline_lp3_lp4_fu_108_ap_done),.ap_idle(grp_mvt_Pipeline_lp3_lp4_fu_108_ap_idle),.ap_ready(grp_mvt_Pipeline_lp3_lp4_fu_108_ap_ready),.buff_A_address0(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_address0),.buff_A_ce0(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_address1(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_address1),.buff_A_ce1(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_ce1),.buff_A_q1(buff_A_q1),.buff_A_1_address0(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_1_address0),.buff_A_1_ce0(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_1_address1(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_1_address1),.buff_A_1_ce1(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_1_ce1),.buff_A_1_q1(buff_A_1_q1),.buff_y2_address0(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_address0),.buff_y2_ce0(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_ce0),.buff_y2_q0(buff_y2_q0),.buff_y2_address1(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_address1),.buff_y2_ce1(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_ce1),.buff_y2_q1(buff_y2_q1),.buff_y2_1_address0(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_1_address0),.buff_y2_1_ce0(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_1_ce0),.buff_y2_1_q0(buff_y2_1_q0),.buff_y2_1_address1(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_1_address1),.buff_y2_1_ce1(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_1_ce1),.buff_y2_1_q1(buff_y2_1_q1),.buff_x2_address0(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_x2_address0),.buff_x2_ce0(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_x2_ce0),.buff_x2_we0(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_x2_we0),.buff_x2_d0(grp_mvt_Pipeline_lp3_lp4_fu_108_buff_x2_d0),.buff_x2_q0(buff_x2_q0),.grp_fu_127_p_din0(grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_127_p_din0),.grp_fu_127_p_din1(grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_127_p_din1),.grp_fu_127_p_opcode(grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_127_p_opcode),.grp_fu_127_p_dout0(grp_fu_127_p2),.grp_fu_127_p_ce(grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_127_p_ce),.grp_fu_131_p_din0(grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_131_p_din0),.grp_fu_131_p_din1(grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_131_p_din1),.grp_fu_131_p_dout0(grp_fu_131_p2),.grp_fu_131_p_ce(grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_131_p_ce));
mvt_mvt_Pipeline_lpwr grp_mvt_Pipeline_lpwr_fu_117(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_mvt_Pipeline_lpwr_fu_117_ap_start),.ap_done(grp_mvt_Pipeline_lpwr_fu_117_ap_done),.ap_idle(grp_mvt_Pipeline_lpwr_fu_117_ap_idle),.ap_ready(grp_mvt_Pipeline_lpwr_fu_117_ap_ready),.x1_out_din(grp_mvt_Pipeline_lpwr_fu_117_x1_out_din),.x1_out_full_n(x1_out_full_n),.x1_out_write(grp_mvt_Pipeline_lpwr_fu_117_x1_out_write),.x2_out_din(grp_mvt_Pipeline_lpwr_fu_117_x2_out_din),.x2_out_full_n(x2_out_full_n),.x2_out_write(grp_mvt_Pipeline_lpwr_fu_117_x2_out_write),.buff_x1_address0(grp_mvt_Pipeline_lpwr_fu_117_buff_x1_address0),.buff_x1_ce0(grp_mvt_Pipeline_lpwr_fu_117_buff_x1_ce0),.buff_x1_q0(buff_x1_q0),.buff_x2_address0(grp_mvt_Pipeline_lpwr_fu_117_buff_x2_address0),.buff_x2_ce0(grp_mvt_Pipeline_lpwr_fu_117_buff_x2_ce0),.buff_x2_q0(buff_x2_q0));
mvt_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U30(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_127_p0),.din1(grp_fu_127_p1),.ce(grp_fu_127_ce),.dout(grp_fu_127_p2));
mvt_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U31(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_131_p0),.din1(grp_fu_131_p1),.ce(grp_fu_131_ce),.dout(grp_fu_131_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mvt_Pipeline_lp1_lp2_fu_100_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_mvt_Pipeline_lp1_lp2_fu_100_ap_start_reg <= 1'b1;
        end else if ((grp_mvt_Pipeline_lp1_lp2_fu_100_ap_ready == 1'b1)) begin
            grp_mvt_Pipeline_lp1_lp2_fu_100_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mvt_Pipeline_lp3_lp4_fu_108_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_mvt_Pipeline_lp3_lp4_fu_108_ap_start_reg <= 1'b1;
        end else if ((grp_mvt_Pipeline_lp3_lp4_fu_108_ap_ready == 1'b1)) begin
            grp_mvt_Pipeline_lp3_lp4_fu_108_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_ap_start_reg <= 1'b1;
        end else if ((grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_ap_ready == 1'b1)) begin
            grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_mvt_Pipeline_lpwr_fu_117_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_mvt_Pipeline_lpwr_fu_117_ap_start_reg <= 1'b1;
        end else if ((grp_mvt_Pipeline_lpwr_fu_117_ap_ready == 1'b1)) begin
            grp_mvt_Pipeline_lpwr_fu_117_ap_start_reg <= 1'b0;
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
    if ((grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_mvt_Pipeline_lp1_lp2_fu_100_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_mvt_Pipeline_lp3_lp4_fu_108_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_mvt_Pipeline_lpwr_fu_117_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_mvt_Pipeline_lpwr_fu_117_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
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
    if (((grp_mvt_Pipeline_lpwr_fu_117_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_address0 = grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_1_address0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_address1 = grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address1 = grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_1_address1;
    end else begin
        buff_A_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_1_ce0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_ce1 = grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce1 = grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_1_ce1;
    end else begin
        buff_A_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_1_we0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_address0 = grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_address0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_address1 = grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address1 = grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_address1;
    end else begin
        buff_A_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_ce0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_ce1 = grp_mvt_Pipeline_lp3_lp4_fu_108_buff_A_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce1 = grp_mvt_Pipeline_lp1_lp2_fu_100_buff_A_ce1;
    end else begin
        buff_A_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_we0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x1_address0 = grp_mvt_Pipeline_lpwr_fu_117_buff_x1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_x1_address0 = grp_mvt_Pipeline_lp1_lp2_fu_100_buff_x1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x1_address0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x1_address0;
    end else begin
        buff_x1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x1_ce0 = grp_mvt_Pipeline_lpwr_fu_117_buff_x1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_x1_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_100_buff_x1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x1_ce0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x1_ce0;
    end else begin
        buff_x1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_x1_d0 = grp_mvt_Pipeline_lp1_lp2_fu_100_buff_x1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x1_d0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x1_d0;
    end else begin
        buff_x1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_x1_we0 = grp_mvt_Pipeline_lp1_lp2_fu_100_buff_x1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x1_we0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x1_we0;
    end else begin
        buff_x1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_address0 = grp_mvt_Pipeline_lpwr_fu_117_buff_x2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x2_address0 = grp_mvt_Pipeline_lp3_lp4_fu_108_buff_x2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x2_address0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x2_address0;
    end else begin
        buff_x2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_x2_ce0 = grp_mvt_Pipeline_lpwr_fu_117_buff_x2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x2_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_108_buff_x2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x2_ce0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x2_ce0;
    end else begin
        buff_x2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x2_d0 = grp_mvt_Pipeline_lp3_lp4_fu_108_buff_x2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x2_d0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x2_d0;
    end else begin
        buff_x2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_x2_we0 = grp_mvt_Pipeline_lp3_lp4_fu_108_buff_x2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_x2_we0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_x2_we0;
    end else begin
        buff_x2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_y1_address0 = grp_mvt_Pipeline_lp1_lp2_fu_100_buff_y1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y1_address0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y1_address0;
    end else begin
        buff_y1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_y1_ce0 = grp_mvt_Pipeline_lp1_lp2_fu_100_buff_y1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y1_ce0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y1_ce0;
    end else begin
        buff_y1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_y1_ce1 = grp_mvt_Pipeline_lp1_lp2_fu_100_buff_y1_ce1;
    end else begin
        buff_y1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y1_we0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y1_we0;
    end else begin
        buff_y1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y2_1_address0 = grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y2_1_address0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_1_address0;
    end else begin
        buff_y2_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y2_1_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y2_1_ce0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_1_ce0;
    end else begin
        buff_y2_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y2_1_ce1 = grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_1_ce1;
    end else begin
        buff_y2_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y2_1_we0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_1_we0;
    end else begin
        buff_y2_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y2_address0 = grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y2_address0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_address0;
    end else begin
        buff_y2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y2_ce0 = grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y2_ce0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_ce0;
    end else begin
        buff_y2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_y2_ce1 = grp_mvt_Pipeline_lp3_lp4_fu_108_buff_y2_ce1;
    end else begin
        buff_y2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_y2_we0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_buff_y2_we0;
    end else begin
        buff_y2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_127_ce = grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_127_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_127_ce = grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_127_p_ce;
    end else begin
        grp_fu_127_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_127_p0 = grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_127_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_127_p0 = grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_127_p_din0;
    end else begin
        grp_fu_127_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_127_p1 = grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_127_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_127_p1 = grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_127_p_din1;
    end else begin
        grp_fu_127_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_131_ce = grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_131_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_131_ce = grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_131_p_ce;
    end else begin
        grp_fu_131_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_131_p0 = grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_131_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_131_p0 = grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_131_p_din0;
    end else begin
        grp_fu_131_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_131_p1 = grp_mvt_Pipeline_lp3_lp4_fu_108_grp_fu_131_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_131_p1 = grp_mvt_Pipeline_lp1_lp2_fu_100_grp_fu_131_p_din1;
    end else begin
        grp_fu_131_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        x1_out_write = grp_mvt_Pipeline_lpwr_fu_117_x1_out_write;
    end else begin
        x1_out_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        x2_out_write = grp_mvt_Pipeline_lpwr_fu_117_x2_out_write;
    end else begin
        x2_out_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        y2_read = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_y2_read;
    end else begin
        y2_read = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_mvt_Pipeline_lp1_lp2_fu_100_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_mvt_Pipeline_lp3_lp4_fu_108_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_mvt_Pipeline_lpwr_fu_117_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
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
assign A_address0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_A_address0;
assign A_ce0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_A_ce0;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign grp_mvt_Pipeline_lp1_lp2_fu_100_ap_start = grp_mvt_Pipeline_lp1_lp2_fu_100_ap_start_reg;
assign grp_mvt_Pipeline_lp3_lp4_fu_108_ap_start = grp_mvt_Pipeline_lp3_lp4_fu_108_ap_start_reg;
assign grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_ap_start = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_ap_start_reg;
assign grp_mvt_Pipeline_lpwr_fu_117_ap_start = grp_mvt_Pipeline_lpwr_fu_117_ap_start_reg;
assign x1_address0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_x1_address0;
assign x1_ce0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_x1_ce0;
assign x1_out_din = grp_mvt_Pipeline_lpwr_fu_117_x1_out_din;
assign x2_address0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_x2_address0;
assign x2_ce0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_x2_ce0;
assign x2_out_din = grp_mvt_Pipeline_lpwr_fu_117_x2_out_din;
assign y1_address0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_y1_address0;
assign y1_ce0 = grp_mvt_Pipeline_lprd_1_lprd_2_fu_72_y1_ce0;
endmodule 
