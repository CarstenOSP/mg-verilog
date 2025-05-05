module syrk (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,alpha,beta,A_address0,A_ce0,A_q0,B_address0,B_ce0,B_q0,C_out_din,C_out_full_n,C_out_write); 
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
input  [31:0] alpha;
input  [31:0] beta;
output  [11:0] A_address0;
output   A_ce0;
input  [31:0] A_q0;
output  [11:0] B_address0;
output   B_ce0;
input  [31:0] B_q0;
output  [31:0] C_out_din;
input   C_out_full_n;
output   C_out_write;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg C_out_write;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state5;
reg   [9:0] buff_A0_address0;
reg    buff_A0_ce0;
reg    buff_A0_we0;
wire   [31:0] buff_A0_q0;
reg    buff_A0_ce1;
wire   [31:0] buff_A0_q1;
reg   [9:0] buff_A0_1_address0;
reg    buff_A0_1_ce0;
reg    buff_A0_1_we0;
wire   [31:0] buff_A0_1_q0;
reg    buff_A0_1_ce1;
wire   [31:0] buff_A0_1_q1;
reg   [9:0] buff_A0_2_address0;
reg    buff_A0_2_ce0;
reg    buff_A0_2_we0;
wire   [31:0] buff_A0_2_q0;
reg    buff_A0_2_ce1;
wire   [31:0] buff_A0_2_q1;
reg   [9:0] buff_A0_3_address0;
reg    buff_A0_3_ce0;
reg    buff_A0_3_we0;
wire   [31:0] buff_A0_3_q0;
reg    buff_A0_3_ce1;
wire   [31:0] buff_A0_3_q1;
reg   [9:0] buff_A1_address0;
reg    buff_A1_ce0;
reg    buff_A1_we0;
wire   [31:0] buff_A1_q0;
reg    buff_A1_ce1;
wire   [31:0] buff_A1_q1;
reg   [9:0] buff_A1_1_address0;
reg    buff_A1_1_ce0;
reg    buff_A1_1_we0;
wire   [31:0] buff_A1_1_q0;
reg    buff_A1_1_ce1;
wire   [31:0] buff_A1_1_q1;
reg   [9:0] buff_A1_2_address0;
reg    buff_A1_2_ce0;
reg    buff_A1_2_we0;
wire   [31:0] buff_A1_2_q0;
reg    buff_A1_2_ce1;
wire   [31:0] buff_A1_2_q1;
reg   [9:0] buff_A1_3_address0;
reg    buff_A1_3_ce0;
reg    buff_A1_3_we0;
wire   [31:0] buff_A1_3_q0;
reg    buff_A1_3_ce1;
wire   [31:0] buff_A1_3_q1;
reg   [11:0] buff_B_address0;
reg    buff_B_ce0;
reg    buff_B_we0;
wire   [31:0] buff_B_q0;
reg    buff_B_ce1;
wire   [31:0] buff_B_q1;
reg   [10:0] buff_C_out_address0;
reg    buff_C_out_ce0;
reg    buff_C_out_we0;
reg   [31:0] buff_C_out_d0;
wire   [31:0] buff_C_out_q0;
reg    buff_C_out_ce1;
wire   [31:0] buff_C_out_q1;
reg   [10:0] buff_C_out_1_address0;
reg    buff_C_out_1_ce0;
reg    buff_C_out_1_we0;
reg   [31:0] buff_C_out_1_d0;
wire   [31:0] buff_C_out_1_q0;
reg    buff_C_out_1_ce1;
wire   [31:0] buff_C_out_1_q1;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_ap_start;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_ap_done;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_ap_idle;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_ap_ready;
wire   [11:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_A_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_A_ce0;
wire   [11:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_B_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_B_ce0;
wire   [11:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_B_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_B_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_B_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_B_d0;
wire   [10:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_d0;
wire   [10:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_1_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_1_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_1_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_1_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_1_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_1_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_1_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_1_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_2_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_2_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_2_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_2_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_3_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_3_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_3_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_3_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_1_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_1_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_1_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_1_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_2_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_2_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_2_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_2_d0;
wire   [9:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_3_address0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_3_ce0;
wire    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_3_we0;
wire   [31:0] grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_3_d0;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_ap_start;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_ap_done;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_ap_idle;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_ap_ready;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_address0;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_ce0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_address1;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_ce1;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_1_address0;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_1_ce0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_1_address1;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_1_ce1;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_2_address0;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_2_ce0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_2_address1;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_2_ce1;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_3_address0;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_3_ce0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_3_address1;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_3_ce1;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_address0;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_ce0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_address1;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_ce1;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_1_address0;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_1_ce0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_1_address1;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_1_ce1;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_2_address0;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_2_ce0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_2_address1;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_2_ce1;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_3_address0;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_3_ce0;
wire   [9:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_3_address1;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_3_ce1;
wire   [10:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_address0;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_ce0;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_we0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_d0;
wire   [10:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_1_address0;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_1_ce0;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_1_we0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_1_d0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_173_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_173_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_173_p_opcode;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_173_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_177_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_177_p_din1;
wire    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_177_p_ce;
wire    grp_syrk_Pipeline_lp4_lp5_fu_146_ap_start;
wire    grp_syrk_Pipeline_lp4_lp5_fu_146_ap_done;
wire    grp_syrk_Pipeline_lp4_lp5_fu_146_ap_idle;
wire    grp_syrk_Pipeline_lp4_lp5_fu_146_ap_ready;
wire   [11:0] grp_syrk_Pipeline_lp4_lp5_fu_146_buff_B_address0;
wire    grp_syrk_Pipeline_lp4_lp5_fu_146_buff_B_ce0;
wire   [11:0] grp_syrk_Pipeline_lp4_lp5_fu_146_buff_B_address1;
wire    grp_syrk_Pipeline_lp4_lp5_fu_146_buff_B_ce1;
wire   [10:0] grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_address0;
wire    grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_ce0;
wire    grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_we0;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_d0;
wire   [10:0] grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_address1;
wire    grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_ce1;
wire   [10:0] grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_1_address0;
wire    grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_1_ce0;
wire    grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_1_we0;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_1_d0;
wire   [10:0] grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_1_address1;
wire    grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_1_ce1;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_173_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_173_p_din1;
wire   [1:0] grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_173_p_opcode;
wire    grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_173_p_ce;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_177_p_din0;
wire   [31:0] grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_177_p_din1;
wire    grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_177_p_ce;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_start;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_done;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_idle;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_ready;
wire   [31:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_C_out_din;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_C_out_write;
wire   [10:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_buff_C_out_address0;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_buff_C_out_ce0;
wire   [10:0] grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_buff_C_out_1_address0;
wire    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_buff_C_out_1_ce0;
reg    grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_syrk_Pipeline_lp4_lp5_fu_146_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire   [31:0] grp_fu_173_p2;
reg   [31:0] grp_fu_173_p0;
reg   [31:0] grp_fu_173_p1;
reg    grp_fu_173_ce;
wire   [31:0] grp_fu_177_p2;
reg   [31:0] grp_fu_177_p0;
reg   [31:0] grp_fu_177_p1;
reg    grp_fu_177_ce;
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
#0 grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_ap_start_reg = 1'b0;
#0 grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_ap_start_reg = 1'b0;
#0 grp_syrk_Pipeline_lp4_lp5_fu_146_ap_start_reg = 1'b0;
#0 grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_start_reg = 1'b0;
end
syrk_buff_A0_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A0_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A0_address0),.ce0(buff_A0_ce0),.we0(buff_A0_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_d0),.q0(buff_A0_q0),.address1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_address1),.ce1(buff_A0_ce1),.q1(buff_A0_q1));
syrk_buff_A0_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A0_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A0_1_address0),.ce0(buff_A0_1_ce0),.we0(buff_A0_1_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_1_d0),.q0(buff_A0_1_q0),.address1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_1_address1),.ce1(buff_A0_1_ce1),.q1(buff_A0_1_q1));
syrk_buff_A0_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A0_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A0_2_address0),.ce0(buff_A0_2_ce0),.we0(buff_A0_2_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_2_d0),.q0(buff_A0_2_q0),.address1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_2_address1),.ce1(buff_A0_2_ce1),.q1(buff_A0_2_q1));
syrk_buff_A0_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A0_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A0_3_address0),.ce0(buff_A0_3_ce0),.we0(buff_A0_3_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_3_d0),.q0(buff_A0_3_q0),.address1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_3_address1),.ce1(buff_A0_3_ce1),.q1(buff_A0_3_q1));
syrk_buff_A0_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A1_address0),.ce0(buff_A1_ce0),.we0(buff_A1_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_d0),.q0(buff_A1_q0),.address1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_address1),.ce1(buff_A1_ce1),.q1(buff_A1_q1));
syrk_buff_A0_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A1_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A1_1_address0),.ce0(buff_A1_1_ce0),.we0(buff_A1_1_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_1_d0),.q0(buff_A1_1_q0),.address1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_1_address1),.ce1(buff_A1_1_ce1),.q1(buff_A1_1_q1));
syrk_buff_A0_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A1_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A1_2_address0),.ce0(buff_A1_2_ce0),.we0(buff_A1_2_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_2_d0),.q0(buff_A1_2_q0),.address1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_2_address1),.ce1(buff_A1_2_ce1),.q1(buff_A1_2_q1));
syrk_buff_A0_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 1024 ),.AddressWidth( 10 ))
buff_A1_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A1_3_address0),.ce0(buff_A1_3_ce0),.we0(buff_A1_3_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_3_d0),.q0(buff_A1_3_q0),.address1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_3_address1),.ce1(buff_A1_3_ce1),.q1(buff_A1_3_q1));
syrk_buff_B_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 4096 ),.AddressWidth( 12 ))
buff_B_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_B_address0),.ce0(buff_B_ce0),.we0(buff_B_we0),.d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_B_d0),.q0(buff_B_q0),.address1(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_B_address1),.ce1(buff_B_ce1),.q1(buff_B_q1));
syrk_buff_C_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
buff_C_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_C_out_address0),.ce0(buff_C_out_ce0),.we0(buff_C_out_we0),.d0(buff_C_out_d0),.q0(buff_C_out_q0),.address1(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_address1),.ce1(buff_C_out_ce1),.q1(buff_C_out_q1));
syrk_buff_C_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
buff_C_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_C_out_1_address0),.ce0(buff_C_out_1_ce0),.we0(buff_C_out_1_we0),.d0(buff_C_out_1_d0),.q0(buff_C_out_1_q0),.address1(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_1_address1),.ce1(buff_C_out_1_ce1),.q1(buff_C_out_1_q1));
syrk_syrk_Pipeline_lprd_1_lprd_2 grp_syrk_Pipeline_lprd_1_lprd_2_fu_100(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_ap_start),.ap_done(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_ap_done),.ap_idle(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_ap_idle),.ap_ready(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_ap_ready),.A_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_A_address0),.A_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_A_ce0),.A_q0(A_q0),.B_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_B_address0),.B_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_B_ce0),.B_q0(B_q0),.buff_B_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_B_address0),.buff_B_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_B_ce0),.buff_B_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_B_we0),.buff_B_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_B_d0),.buff_C_out_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_address0),.buff_C_out_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_ce0),.buff_C_out_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_we0),.buff_C_out_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_d0),.buff_C_out_1_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_1_address0),.buff_C_out_1_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_1_ce0),.buff_C_out_1_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_1_we0),.buff_C_out_1_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_1_d0),.buff_A0_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_address0),.buff_A0_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_ce0),.buff_A0_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_we0),.buff_A0_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_d0),.buff_A0_1_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_1_address0),.buff_A0_1_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_1_ce0),.buff_A0_1_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_1_we0),.buff_A0_1_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_1_d0),.buff_A0_2_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_2_address0),.buff_A0_2_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_2_ce0),.buff_A0_2_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_2_we0),.buff_A0_2_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_2_d0),.buff_A0_3_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_3_address0),.buff_A0_3_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_3_ce0),.buff_A0_3_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_3_we0),.buff_A0_3_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_3_d0),.buff_A1_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_address0),.buff_A1_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_ce0),.buff_A1_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_we0),.buff_A1_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_d0),.buff_A1_1_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_1_address0),.buff_A1_1_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_1_ce0),.buff_A1_1_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_1_we0),.buff_A1_1_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_1_d0),.buff_A1_2_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_2_address0),.buff_A1_2_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_2_ce0),.buff_A1_2_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_2_we0),.buff_A1_2_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_2_d0),.buff_A1_3_address0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_3_address0),.buff_A1_3_ce0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_3_ce0),.buff_A1_3_we0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_3_we0),.buff_A1_3_d0(grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_3_d0));
syrk_syrk_Pipeline_lp1_lp2_lp3 grp_syrk_Pipeline_lp1_lp2_lp3_fu_130(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_ap_start),.ap_done(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_ap_done),.ap_idle(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_ap_idle),.ap_ready(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_ap_ready),.buff_A0_address0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_address0),.buff_A0_ce0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_ce0),.buff_A0_q0(buff_A0_q0),.buff_A0_address1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_address1),.buff_A0_ce1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_ce1),.buff_A0_q1(buff_A0_q1),.buff_A0_1_address0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_1_address0),.buff_A0_1_ce0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_1_ce0),.buff_A0_1_q0(buff_A0_1_q0),.buff_A0_1_address1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_1_address1),.buff_A0_1_ce1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_1_ce1),.buff_A0_1_q1(buff_A0_1_q1),.buff_A0_2_address0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_2_address0),.buff_A0_2_ce0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_2_ce0),.buff_A0_2_q0(buff_A0_2_q0),.buff_A0_2_address1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_2_address1),.buff_A0_2_ce1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_2_ce1),.buff_A0_2_q1(buff_A0_2_q1),.buff_A0_3_address0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_3_address0),.buff_A0_3_ce0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_3_ce0),.buff_A0_3_q0(buff_A0_3_q0),.buff_A0_3_address1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_3_address1),.buff_A0_3_ce1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_3_ce1),.buff_A0_3_q1(buff_A0_3_q1),.buff_A1_address0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_address0),.buff_A1_ce0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_ce0),.buff_A1_q0(buff_A1_q0),.buff_A1_address1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_address1),.buff_A1_ce1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_ce1),.buff_A1_q1(buff_A1_q1),.buff_A1_1_address0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_1_address0),.buff_A1_1_ce0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_1_ce0),.buff_A1_1_q0(buff_A1_1_q0),.buff_A1_1_address1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_1_address1),.buff_A1_1_ce1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_1_ce1),.buff_A1_1_q1(buff_A1_1_q1),.buff_A1_2_address0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_2_address0),.buff_A1_2_ce0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_2_ce0),.buff_A1_2_q0(buff_A1_2_q0),.buff_A1_2_address1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_2_address1),.buff_A1_2_ce1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_2_ce1),.buff_A1_2_q1(buff_A1_2_q1),.buff_A1_3_address0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_3_address0),.buff_A1_3_ce0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_3_ce0),.buff_A1_3_q0(buff_A1_3_q0),.buff_A1_3_address1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_3_address1),.buff_A1_3_ce1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_3_ce1),.buff_A1_3_q1(buff_A1_3_q1),.alpha(alpha),.buff_C_out_address0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_address0),.buff_C_out_ce0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_ce0),.buff_C_out_we0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_we0),.buff_C_out_d0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_d0),.buff_C_out_q0(buff_C_out_q0),.buff_C_out_1_address0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_1_address0),.buff_C_out_1_ce0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_1_ce0),.buff_C_out_1_we0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_1_we0),.buff_C_out_1_d0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_1_d0),.buff_C_out_1_q0(buff_C_out_1_q0),.grp_fu_173_p_din0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_173_p_din0),.grp_fu_173_p_din1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_173_p_din1),.grp_fu_173_p_opcode(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_173_p_opcode),.grp_fu_173_p_dout0(grp_fu_173_p2),.grp_fu_173_p_ce(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_173_p_ce),.grp_fu_177_p_din0(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_177_p_din0),.grp_fu_177_p_din1(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_177_p_din1),.grp_fu_177_p_dout0(grp_fu_177_p2),.grp_fu_177_p_ce(grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_177_p_ce));
syrk_syrk_Pipeline_lp4_lp5 grp_syrk_Pipeline_lp4_lp5_fu_146(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_syrk_Pipeline_lp4_lp5_fu_146_ap_start),.ap_done(grp_syrk_Pipeline_lp4_lp5_fu_146_ap_done),.ap_idle(grp_syrk_Pipeline_lp4_lp5_fu_146_ap_idle),.ap_ready(grp_syrk_Pipeline_lp4_lp5_fu_146_ap_ready),.buff_B_address0(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_B_address0),.buff_B_ce0(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_B_ce0),.buff_B_q0(buff_B_q0),.buff_B_address1(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_B_address1),.buff_B_ce1(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_B_ce1),.buff_B_q1(buff_B_q1),.buff_C_out_address0(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_address0),.buff_C_out_ce0(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_ce0),.buff_C_out_we0(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_we0),.buff_C_out_d0(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_d0),.buff_C_out_address1(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_address1),.buff_C_out_ce1(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_ce1),.buff_C_out_q1(buff_C_out_q1),.buff_C_out_1_address0(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_1_address0),.buff_C_out_1_ce0(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_1_ce0),.buff_C_out_1_we0(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_1_we0),.buff_C_out_1_d0(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_1_d0),.buff_C_out_1_address1(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_1_address1),.buff_C_out_1_ce1(grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_1_ce1),.buff_C_out_1_q1(buff_C_out_1_q1),.beta(beta),.grp_fu_173_p_din0(grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_173_p_din0),.grp_fu_173_p_din1(grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_173_p_din1),.grp_fu_173_p_opcode(grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_173_p_opcode),.grp_fu_173_p_dout0(grp_fu_173_p2),.grp_fu_173_p_ce(grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_173_p_ce),.grp_fu_177_p_din0(grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_177_p_din0),.grp_fu_177_p_din1(grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_177_p_din1),.grp_fu_177_p_dout0(grp_fu_177_p2),.grp_fu_177_p_ce(grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_177_p_ce));
syrk_syrk_Pipeline_lpwr_1_lpwr_2 grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_start),.ap_done(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_done),.ap_idle(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_idle),.ap_ready(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_ready),.C_out_din(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_C_out_din),.C_out_full_n(C_out_full_n),.C_out_write(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_C_out_write),.buff_C_out_address0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_buff_C_out_address0),.buff_C_out_ce0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_buff_C_out_ce0),.buff_C_out_q0(buff_C_out_q0),.buff_C_out_1_address0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_buff_C_out_1_address0),.buff_C_out_1_ce0(grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_buff_C_out_1_ce0),.buff_C_out_1_q0(buff_C_out_1_q0));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U38(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_173_p0),.din1(grp_fu_173_p1),.ce(grp_fu_173_ce),.dout(grp_fu_173_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U39(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_177_p0),.din1(grp_fu_177_p1),.ce(grp_fu_177_ce),.dout(grp_fu_177_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_ap_start_reg <= 1'b1;
        end else if ((grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_ap_ready == 1'b1)) begin
            grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_syrk_Pipeline_lp4_lp5_fu_146_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_syrk_Pipeline_lp4_lp5_fu_146_ap_start_reg <= 1'b1;
        end else if ((grp_syrk_Pipeline_lp4_lp5_fu_146_ap_ready == 1'b1)) begin
            grp_syrk_Pipeline_lp4_lp5_fu_146_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_ap_start_reg <= 1'b1;
        end else if ((grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_ap_ready == 1'b1)) begin
            grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_start_reg <= 1'b1;
        end else if ((grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_ready == 1'b1)) begin
            grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_start_reg <= 1'b0;
        end
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        C_out_write = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_C_out_write;
    end else begin
        C_out_write = 1'b0;
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
    if ((grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_syrk_Pipeline_lp4_lp5_fu_146_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
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
    if (((grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_address0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_1_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_1_address0;
    end else begin
        buff_A0_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_ce0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_1_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_1_ce0;
    end else begin
        buff_A0_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_1_ce1 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_1_ce1;
    end else begin
        buff_A0_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_1_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_1_we0;
    end else begin
        buff_A0_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_address0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_2_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_2_address0;
    end else begin
        buff_A0_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_ce0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_2_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_2_ce0;
    end else begin
        buff_A0_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_2_ce1 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_2_ce1;
    end else begin
        buff_A0_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_2_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_2_we0;
    end else begin
        buff_A0_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_address0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_3_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_3_address0;
    end else begin
        buff_A0_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_ce0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_3_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_3_ce0;
    end else begin
        buff_A0_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_3_ce1 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_3_ce1;
    end else begin
        buff_A0_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_3_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_3_we0;
    end else begin
        buff_A0_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_address0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_address0;
    end else begin
        buff_A0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_ce0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_ce0;
    end else begin
        buff_A0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A0_ce1 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A0_ce1;
    end else begin
        buff_A0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A0_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A0_we0;
    end else begin
        buff_A0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_address0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_1_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_1_address0;
    end else begin
        buff_A1_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_1_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_1_ce0;
    end else begin
        buff_A1_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_1_ce1 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_1_ce1;
    end else begin
        buff_A1_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_1_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_1_we0;
    end else begin
        buff_A1_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_address0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_2_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_2_address0;
    end else begin
        buff_A1_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_2_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_2_ce0;
    end else begin
        buff_A1_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_2_ce1 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_2_ce1;
    end else begin
        buff_A1_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_2_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_2_we0;
    end else begin
        buff_A1_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_address0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_3_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_3_address0;
    end else begin
        buff_A1_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_3_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_3_ce0;
    end else begin
        buff_A1_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_3_ce1 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_3_ce1;
    end else begin
        buff_A1_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_3_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_3_we0;
    end else begin
        buff_A1_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_address0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_address0;
    end else begin
        buff_A1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_ce0;
    end else begin
        buff_A1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A1_ce1 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_A1_ce1;
    end else begin
        buff_A1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A1_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_A1_we0;
    end else begin
        buff_A1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_address0 = grp_syrk_Pipeline_lp4_lp5_fu_146_buff_B_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_B_address0;
    end else begin
        buff_B_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_ce0 = grp_syrk_Pipeline_lp4_lp5_fu_146_buff_B_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_B_ce0;
    end else begin
        buff_B_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_B_ce1 = grp_syrk_Pipeline_lp4_lp5_fu_146_buff_B_ce1;
    end else begin
        buff_B_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_B_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_B_we0;
    end else begin
        buff_B_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_1_address0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_buff_C_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_1_address0 = grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_1_address0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_1_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_1_address0;
    end else begin
        buff_C_out_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_1_ce0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_buff_C_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_1_ce0 = grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_1_ce0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_1_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_1_ce0;
    end else begin
        buff_C_out_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_1_ce1 = grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_1_ce1;
    end else begin
        buff_C_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_1_d0 = grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_1_d0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_1_d0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_1_d0;
    end else begin
        buff_C_out_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_1_we0 = grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_1_we0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_1_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_1_we0;
    end else begin
        buff_C_out_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_address0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_buff_C_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_address0 = grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_address0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_address0;
    end else begin
        buff_C_out_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_C_out_ce0 = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_buff_C_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_ce0 = grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_ce0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_ce0;
    end else begin
        buff_C_out_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_ce1 = grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_ce1;
    end else begin
        buff_C_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_d0 = grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_d0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_d0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_d0;
    end else begin
        buff_C_out_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_C_out_we0 = grp_syrk_Pipeline_lp4_lp5_fu_146_buff_C_out_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_C_out_we0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_buff_C_out_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_C_out_we0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_buff_C_out_we0;
    end else begin
        buff_C_out_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_173_ce = grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_173_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_173_ce = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_173_p_ce;
    end else begin
        grp_fu_173_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_173_p0 = grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_173_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_173_p0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_173_p_din0;
    end else begin
        grp_fu_173_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_173_p1 = grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_173_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_173_p1 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_173_p_din1;
    end else begin
        grp_fu_173_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_177_ce = grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_177_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_177_ce = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_177_p_ce;
    end else begin
        grp_fu_177_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_177_p0 = grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_177_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_177_p0 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_177_p_din0;
    end else begin
        grp_fu_177_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_177_p1 = grp_syrk_Pipeline_lp4_lp5_fu_146_grp_fu_177_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_177_p1 = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_grp_fu_177_p_din1;
    end else begin
        grp_fu_177_p1 = 'bx;
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
            if (((1'b1 == ap_CS_fsm_state2) & (grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_syrk_Pipeline_lp4_lp5_fu_146_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
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
assign A_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_A_address0;
assign A_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_A_ce0;
assign B_address0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_B_address0;
assign B_ce0 = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_B_ce0;
assign C_out_din = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_C_out_din;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_ap_start = grp_syrk_Pipeline_lp1_lp2_lp3_fu_130_ap_start_reg;
assign grp_syrk_Pipeline_lp4_lp5_fu_146_ap_start = grp_syrk_Pipeline_lp4_lp5_fu_146_ap_start_reg;
assign grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_ap_start = grp_syrk_Pipeline_lprd_1_lprd_2_fu_100_ap_start_reg;
assign grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_start = grp_syrk_Pipeline_lpwr_1_lpwr_2_fu_155_ap_start_reg;
endmodule 