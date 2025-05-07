module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,work_x_0_address0,work_x_0_ce0,work_x_0_we0,work_x_0_d0,work_x_0_address1,work_x_0_ce1,work_x_0_we1,work_x_0_d1,work_y_0_address0,work_y_0_ce0,work_y_0_we0,work_y_0_d0,work_y_0_address1,work_y_0_ce1,work_y_0_we1,work_y_0_d1,work_x_1_address0,work_x_1_ce0,work_x_1_we0,work_x_1_d0,work_x_1_address1,work_x_1_ce1,work_x_1_we1,work_x_1_d1,work_y_1_address0,work_y_1_ce0,work_y_1_we0,work_y_1_d0,work_y_1_address1,work_y_1_ce1,work_y_1_we1,work_y_1_d1,work_y_7_address0,work_y_7_ce0,work_y_7_we0,work_y_7_d0,work_y_7_address1,work_y_7_ce1,work_y_7_we1,work_y_7_d1,work_y_6_address0,work_y_6_ce0,work_y_6_we0,work_y_6_d0,work_y_6_address1,work_y_6_ce1,work_y_6_we1,work_y_6_d1,work_y_5_address0,work_y_5_ce0,work_y_5_we0,work_y_5_d0,work_y_5_address1,work_y_5_ce1,work_y_5_we1,work_y_5_d1,work_y_4_address0,work_y_4_ce0,work_y_4_we0,work_y_4_d0,work_y_4_address1,work_y_4_ce1,work_y_4_we1,work_y_4_d1,work_y_3_address0,work_y_3_ce0,work_y_3_we0,work_y_3_d0,work_y_3_address1,work_y_3_ce1,work_y_3_we1,work_y_3_d1,work_y_2_address0,work_y_2_ce0,work_y_2_we0,work_y_2_d0,work_y_2_address1,work_y_2_ce1,work_y_2_we1,work_y_2_d1,work_x_7_address0,work_x_7_ce0,work_x_7_we0,work_x_7_d0,work_x_7_address1,work_x_7_ce1,work_x_7_we1,work_x_7_d1,work_x_6_address0,work_x_6_ce0,work_x_6_we0,work_x_6_d0,work_x_6_address1,work_x_6_ce1,work_x_6_we1,work_x_6_d1,work_x_5_address0,work_x_5_ce0,work_x_5_we0,work_x_5_d0,work_x_5_address1,work_x_5_ce1,work_x_5_we1,work_x_5_d1,work_x_4_address0,work_x_4_ce0,work_x_4_we0,work_x_4_d0,work_x_4_address1,work_x_4_ce1,work_x_4_we1,work_x_4_d1,work_x_3_address0,work_x_3_ce0,work_x_3_we0,work_x_3_d0,work_x_3_address1,work_x_3_ce1,work_x_3_we1,work_x_3_d1,work_x_2_address0,work_x_2_ce0,work_x_2_we0,work_x_2_d0,work_x_2_address1,work_x_2_ce1,work_x_2_we1,work_x_2_d1,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_q1,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_q1,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_4_address1,DATA_y_4_ce1,DATA_y_4_q1,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_5_address1,DATA_y_5_ce1,DATA_y_5_q1,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_6_address1,DATA_y_6_ce1,DATA_y_6_q1,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_y_7_address1,DATA_y_7_ce1,DATA_y_7_q1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_4_address1,DATA_x_4_ce1,DATA_x_4_q1,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_5_address1,DATA_x_5_ce1,DATA_x_5_q1,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_6_address1,DATA_x_6_ce1,DATA_x_6_q1,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_7_address1,DATA_x_7_ce1,DATA_x_7_q1,grp_fu_540_p_din0,grp_fu_540_p_din1,grp_fu_540_p_opcode,grp_fu_540_p_dout0,grp_fu_540_p_ce,grp_fu_544_p_din0,grp_fu_544_p_din1,grp_fu_544_p_opcode,grp_fu_544_p_dout0,grp_fu_544_p_ce,grp_fu_548_p_din0,grp_fu_548_p_din1,grp_fu_548_p_opcode,grp_fu_548_p_dout0,grp_fu_548_p_ce,grp_fu_552_p_din0,grp_fu_552_p_din1,grp_fu_552_p_opcode,grp_fu_552_p_dout0,grp_fu_552_p_ce,grp_fu_556_p_din0,grp_fu_556_p_din1,grp_fu_556_p_opcode,grp_fu_556_p_dout0,grp_fu_556_p_ce,grp_fu_560_p_din0,grp_fu_560_p_din1,grp_fu_560_p_opcode,grp_fu_560_p_dout0,grp_fu_560_p_ce,grp_fu_564_p_din0,grp_fu_564_p_din1,grp_fu_564_p_opcode,grp_fu_564_p_dout0,grp_fu_564_p_ce,grp_fu_568_p_din0,grp_fu_568_p_din1,grp_fu_568_p_opcode,grp_fu_568_p_dout0,grp_fu_568_p_ce,grp_fu_572_p_din0,grp_fu_572_p_din1,grp_fu_572_p_opcode,grp_fu_572_p_dout0,grp_fu_572_p_ce,grp_fu_576_p_din0,grp_fu_576_p_din1,grp_fu_576_p_opcode,grp_fu_576_p_dout0,grp_fu_576_p_ce,grp_fu_580_p_din0,grp_fu_580_p_din1,grp_fu_580_p_opcode,grp_fu_580_p_dout0,grp_fu_580_p_ce,grp_fu_584_p_din0,grp_fu_584_p_din1,grp_fu_584_p_opcode,grp_fu_584_p_dout0,grp_fu_584_p_ce,grp_fu_588_p_din0,grp_fu_588_p_din1,grp_fu_588_p_opcode,grp_fu_588_p_dout0,grp_fu_588_p_ce,grp_fu_592_p_din0,grp_fu_592_p_din1,grp_fu_592_p_opcode,grp_fu_592_p_dout0,grp_fu_592_p_ce,grp_fu_596_p_din0,grp_fu_596_p_din1,grp_fu_596_p_opcode,grp_fu_596_p_dout0,grp_fu_596_p_ce,grp_fu_600_p_din0,grp_fu_600_p_din1,grp_fu_600_p_opcode,grp_fu_600_p_dout0,grp_fu_600_p_ce,grp_fu_604_p_din0,grp_fu_604_p_din1,grp_fu_604_p_opcode,grp_fu_604_p_dout0,grp_fu_604_p_ce,grp_fu_608_p_din0,grp_fu_608_p_din1,grp_fu_608_p_opcode,grp_fu_608_p_dout0,grp_fu_608_p_ce,grp_fu_612_p_din0,grp_fu_612_p_din1,grp_fu_612_p_opcode,grp_fu_612_p_dout0,grp_fu_612_p_ce,grp_fu_616_p_din0,grp_fu_616_p_din1,grp_fu_616_p_opcode,grp_fu_616_p_dout0,grp_fu_616_p_ce,grp_fu_620_p_din0,grp_fu_620_p_din1,grp_fu_620_p_opcode,grp_fu_620_p_dout0,grp_fu_620_p_ce,grp_fu_624_p_din0,grp_fu_624_p_din1,grp_fu_624_p_opcode,grp_fu_624_p_dout0,grp_fu_624_p_ce,grp_fu_628_p_din0,grp_fu_628_p_din1,grp_fu_628_p_opcode,grp_fu_628_p_dout0,grp_fu_628_p_ce,grp_fu_632_p_din0,grp_fu_632_p_din1,grp_fu_632_p_opcode,grp_fu_632_p_dout0,grp_fu_632_p_ce,grp_fu_636_p_din0,grp_fu_636_p_din1,grp_fu_636_p_opcode,grp_fu_636_p_dout0,grp_fu_636_p_ce,grp_fu_640_p_din0,grp_fu_640_p_din1,grp_fu_640_p_opcode,grp_fu_640_p_dout0,grp_fu_640_p_ce,grp_fu_644_p_din0,grp_fu_644_p_din1,grp_fu_644_p_opcode,grp_fu_644_p_dout0,grp_fu_644_p_ce,grp_fu_648_p_din0,grp_fu_648_p_din1,grp_fu_648_p_opcode,grp_fu_648_p_dout0,grp_fu_648_p_ce,grp_fu_652_p_din0,grp_fu_652_p_din1,grp_fu_652_p_opcode,grp_fu_652_p_dout0,grp_fu_652_p_ce,grp_fu_772_p_din0,grp_fu_772_p_din1,grp_fu_772_p_dout0,grp_fu_772_p_ce,grp_fu_776_p_din0,grp_fu_776_p_din1,grp_fu_776_p_dout0,grp_fu_776_p_ce,grp_fu_780_p_din0,grp_fu_780_p_din1,grp_fu_780_p_dout0,grp_fu_780_p_ce,grp_fu_784_p_din0,grp_fu_784_p_din1,grp_fu_784_p_dout0,grp_fu_784_p_ce,grp_fu_788_p_din0,grp_fu_788_p_din1,grp_fu_788_p_dout0,grp_fu_788_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] work_x_0_address0;
output   work_x_0_ce0;
output   work_x_0_we0;
output  [63:0] work_x_0_d0;
output  [5:0] work_x_0_address1;
output   work_x_0_ce1;
output   work_x_0_we1;
output  [63:0] work_x_0_d1;
output  [5:0] work_y_0_address0;
output   work_y_0_ce0;
output   work_y_0_we0;
output  [63:0] work_y_0_d0;
output  [5:0] work_y_0_address1;
output   work_y_0_ce1;
output   work_y_0_we1;
output  [63:0] work_y_0_d1;
output  [5:0] work_x_1_address0;
output   work_x_1_ce0;
output   work_x_1_we0;
output  [63:0] work_x_1_d0;
output  [5:0] work_x_1_address1;
output   work_x_1_ce1;
output   work_x_1_we1;
output  [63:0] work_x_1_d1;
output  [5:0] work_y_1_address0;
output   work_y_1_ce0;
output   work_y_1_we0;
output  [63:0] work_y_1_d0;
output  [5:0] work_y_1_address1;
output   work_y_1_ce1;
output   work_y_1_we1;
output  [63:0] work_y_1_d1;
output  [5:0] work_y_7_address0;
output   work_y_7_ce0;
output   work_y_7_we0;
output  [63:0] work_y_7_d0;
output  [5:0] work_y_7_address1;
output   work_y_7_ce1;
output   work_y_7_we1;
output  [63:0] work_y_7_d1;
output  [5:0] work_y_6_address0;
output   work_y_6_ce0;
output   work_y_6_we0;
output  [63:0] work_y_6_d0;
output  [5:0] work_y_6_address1;
output   work_y_6_ce1;
output   work_y_6_we1;
output  [63:0] work_y_6_d1;
output  [5:0] work_y_5_address0;
output   work_y_5_ce0;
output   work_y_5_we0;
output  [63:0] work_y_5_d0;
output  [5:0] work_y_5_address1;
output   work_y_5_ce1;
output   work_y_5_we1;
output  [63:0] work_y_5_d1;
output  [5:0] work_y_4_address0;
output   work_y_4_ce0;
output   work_y_4_we0;
output  [63:0] work_y_4_d0;
output  [5:0] work_y_4_address1;
output   work_y_4_ce1;
output   work_y_4_we1;
output  [63:0] work_y_4_d1;
output  [5:0] work_y_3_address0;
output   work_y_3_ce0;
output   work_y_3_we0;
output  [63:0] work_y_3_d0;
output  [5:0] work_y_3_address1;
output   work_y_3_ce1;
output   work_y_3_we1;
output  [63:0] work_y_3_d1;
output  [5:0] work_y_2_address0;
output   work_y_2_ce0;
output   work_y_2_we0;
output  [63:0] work_y_2_d0;
output  [5:0] work_y_2_address1;
output   work_y_2_ce1;
output   work_y_2_we1;
output  [63:0] work_y_2_d1;
output  [5:0] work_x_7_address0;
output   work_x_7_ce0;
output   work_x_7_we0;
output  [63:0] work_x_7_d0;
output  [5:0] work_x_7_address1;
output   work_x_7_ce1;
output   work_x_7_we1;
output  [63:0] work_x_7_d1;
output  [5:0] work_x_6_address0;
output   work_x_6_ce0;
output   work_x_6_we0;
output  [63:0] work_x_6_d0;
output  [5:0] work_x_6_address1;
output   work_x_6_ce1;
output   work_x_6_we1;
output  [63:0] work_x_6_d1;
output  [5:0] work_x_5_address0;
output   work_x_5_ce0;
output   work_x_5_we0;
output  [63:0] work_x_5_d0;
output  [5:0] work_x_5_address1;
output   work_x_5_ce1;
output   work_x_5_we1;
output  [63:0] work_x_5_d1;
output  [5:0] work_x_4_address0;
output   work_x_4_ce0;
output   work_x_4_we0;
output  [63:0] work_x_4_d0;
output  [5:0] work_x_4_address1;
output   work_x_4_ce1;
output   work_x_4_we1;
output  [63:0] work_x_4_d1;
output  [5:0] work_x_3_address0;
output   work_x_3_ce0;
output   work_x_3_we0;
output  [63:0] work_x_3_d0;
output  [5:0] work_x_3_address1;
output   work_x_3_ce1;
output   work_x_3_we1;
output  [63:0] work_x_3_d1;
output  [5:0] work_x_2_address0;
output   work_x_2_ce0;
output   work_x_2_we0;
output  [63:0] work_x_2_d0;
output  [5:0] work_x_2_address1;
output   work_x_2_ce1;
output   work_x_2_we1;
output  [63:0] work_x_2_d1;
output  [5:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [5:0] DATA_y_address1;
output   DATA_y_ce1;
input  [63:0] DATA_y_q1;
output  [5:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [5:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
input  [63:0] DATA_y_1_q1;
output  [5:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [5:0] DATA_y_2_address1;
output   DATA_y_2_ce1;
input  [63:0] DATA_y_2_q1;
output  [5:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [5:0] DATA_y_3_address1;
output   DATA_y_3_ce1;
input  [63:0] DATA_y_3_q1;
output  [5:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
input  [63:0] DATA_y_4_q0;
output  [5:0] DATA_y_4_address1;
output   DATA_y_4_ce1;
input  [63:0] DATA_y_4_q1;
output  [5:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
input  [63:0] DATA_y_5_q0;
output  [5:0] DATA_y_5_address1;
output   DATA_y_5_ce1;
input  [63:0] DATA_y_5_q1;
output  [5:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
input  [63:0] DATA_y_6_q0;
output  [5:0] DATA_y_6_address1;
output   DATA_y_6_ce1;
input  [63:0] DATA_y_6_q1;
output  [5:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
input  [63:0] DATA_y_7_q0;
output  [5:0] DATA_y_7_address1;
output   DATA_y_7_ce1;
input  [63:0] DATA_y_7_q1;
output  [5:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [5:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [5:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [5:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [5:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [5:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
input  [63:0] DATA_x_2_q1;
output  [5:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [5:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
input  [63:0] DATA_x_3_q1;
output  [5:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [5:0] DATA_x_4_address1;
output   DATA_x_4_ce1;
input  [63:0] DATA_x_4_q1;
output  [5:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [5:0] DATA_x_5_address1;
output   DATA_x_5_ce1;
input  [63:0] DATA_x_5_q1;
output  [5:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [5:0] DATA_x_6_address1;
output   DATA_x_6_ce1;
input  [63:0] DATA_x_6_q1;
output  [5:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
output  [5:0] DATA_x_7_address1;
output   DATA_x_7_ce1;
input  [63:0] DATA_x_7_q1;
output  [63:0] grp_fu_540_p_din0;
output  [63:0] grp_fu_540_p_din1;
output  [0:0] grp_fu_540_p_opcode;
input  [63:0] grp_fu_540_p_dout0;
output   grp_fu_540_p_ce;
output  [63:0] grp_fu_544_p_din0;
output  [63:0] grp_fu_544_p_din1;
output  [0:0] grp_fu_544_p_opcode;
input  [63:0] grp_fu_544_p_dout0;
output   grp_fu_544_p_ce;
output  [63:0] grp_fu_548_p_din0;
output  [63:0] grp_fu_548_p_din1;
output  [0:0] grp_fu_548_p_opcode;
input  [63:0] grp_fu_548_p_dout0;
output   grp_fu_548_p_ce;
output  [63:0] grp_fu_552_p_din0;
output  [63:0] grp_fu_552_p_din1;
output  [0:0] grp_fu_552_p_opcode;
input  [63:0] grp_fu_552_p_dout0;
output   grp_fu_552_p_ce;
output  [63:0] grp_fu_556_p_din0;
output  [63:0] grp_fu_556_p_din1;
output  [1:0] grp_fu_556_p_opcode;
input  [63:0] grp_fu_556_p_dout0;
output   grp_fu_556_p_ce;
output  [63:0] grp_fu_560_p_din0;
output  [63:0] grp_fu_560_p_din1;
output  [1:0] grp_fu_560_p_opcode;
input  [63:0] grp_fu_560_p_dout0;
output   grp_fu_560_p_ce;
output  [63:0] grp_fu_564_p_din0;
output  [63:0] grp_fu_564_p_din1;
output  [0:0] grp_fu_564_p_opcode;
input  [63:0] grp_fu_564_p_dout0;
output   grp_fu_564_p_ce;
output  [63:0] grp_fu_568_p_din0;
output  [63:0] grp_fu_568_p_din1;
output  [0:0] grp_fu_568_p_opcode;
input  [63:0] grp_fu_568_p_dout0;
output   grp_fu_568_p_ce;
output  [63:0] grp_fu_572_p_din0;
output  [63:0] grp_fu_572_p_din1;
output  [0:0] grp_fu_572_p_opcode;
input  [63:0] grp_fu_572_p_dout0;
output   grp_fu_572_p_ce;
output  [63:0] grp_fu_576_p_din0;
output  [63:0] grp_fu_576_p_din1;
output  [0:0] grp_fu_576_p_opcode;
input  [63:0] grp_fu_576_p_dout0;
output   grp_fu_576_p_ce;
output  [63:0] grp_fu_580_p_din0;
output  [63:0] grp_fu_580_p_din1;
output  [0:0] grp_fu_580_p_opcode;
input  [63:0] grp_fu_580_p_dout0;
output   grp_fu_580_p_ce;
output  [63:0] grp_fu_584_p_din0;
output  [63:0] grp_fu_584_p_din1;
output  [0:0] grp_fu_584_p_opcode;
input  [63:0] grp_fu_584_p_dout0;
output   grp_fu_584_p_ce;
output  [63:0] grp_fu_588_p_din0;
output  [63:0] grp_fu_588_p_din1;
output  [0:0] grp_fu_588_p_opcode;
input  [63:0] grp_fu_588_p_dout0;
output   grp_fu_588_p_ce;
output  [63:0] grp_fu_592_p_din0;
output  [63:0] grp_fu_592_p_din1;
output  [0:0] grp_fu_592_p_opcode;
input  [63:0] grp_fu_592_p_dout0;
output   grp_fu_592_p_ce;
output  [63:0] grp_fu_596_p_din0;
output  [63:0] grp_fu_596_p_din1;
output  [1:0] grp_fu_596_p_opcode;
input  [63:0] grp_fu_596_p_dout0;
output   grp_fu_596_p_ce;
output  [63:0] grp_fu_600_p_din0;
output  [63:0] grp_fu_600_p_din1;
output  [1:0] grp_fu_600_p_opcode;
input  [63:0] grp_fu_600_p_dout0;
output   grp_fu_600_p_ce;
output  [63:0] grp_fu_604_p_din0;
output  [63:0] grp_fu_604_p_din1;
output  [1:0] grp_fu_604_p_opcode;
input  [63:0] grp_fu_604_p_dout0;
output   grp_fu_604_p_ce;
output  [63:0] grp_fu_608_p_din0;
output  [63:0] grp_fu_608_p_din1;
output  [1:0] grp_fu_608_p_opcode;
input  [63:0] grp_fu_608_p_dout0;
output   grp_fu_608_p_ce;
output  [63:0] grp_fu_612_p_din0;
output  [63:0] grp_fu_612_p_din1;
output  [1:0] grp_fu_612_p_opcode;
input  [63:0] grp_fu_612_p_dout0;
output   grp_fu_612_p_ce;
output  [63:0] grp_fu_616_p_din0;
output  [63:0] grp_fu_616_p_din1;
output  [1:0] grp_fu_616_p_opcode;
input  [63:0] grp_fu_616_p_dout0;
output   grp_fu_616_p_ce;
output  [63:0] grp_fu_620_p_din0;
output  [63:0] grp_fu_620_p_din1;
output  [1:0] grp_fu_620_p_opcode;
input  [63:0] grp_fu_620_p_dout0;
output   grp_fu_620_p_ce;
output  [63:0] grp_fu_624_p_din0;
output  [63:0] grp_fu_624_p_din1;
output  [1:0] grp_fu_624_p_opcode;
input  [63:0] grp_fu_624_p_dout0;
output   grp_fu_624_p_ce;
output  [63:0] grp_fu_628_p_din0;
output  [63:0] grp_fu_628_p_din1;
output  [1:0] grp_fu_628_p_opcode;
input  [63:0] grp_fu_628_p_dout0;
output   grp_fu_628_p_ce;
output  [63:0] grp_fu_632_p_din0;
output  [63:0] grp_fu_632_p_din1;
output  [1:0] grp_fu_632_p_opcode;
input  [63:0] grp_fu_632_p_dout0;
output   grp_fu_632_p_ce;
output  [63:0] grp_fu_636_p_din0;
output  [63:0] grp_fu_636_p_din1;
output  [1:0] grp_fu_636_p_opcode;
input  [63:0] grp_fu_636_p_dout0;
output   grp_fu_636_p_ce;
output  [63:0] grp_fu_640_p_din0;
output  [63:0] grp_fu_640_p_din1;
output  [1:0] grp_fu_640_p_opcode;
input  [63:0] grp_fu_640_p_dout0;
output   grp_fu_640_p_ce;
output  [63:0] grp_fu_644_p_din0;
output  [63:0] grp_fu_644_p_din1;
output  [1:0] grp_fu_644_p_opcode;
input  [63:0] grp_fu_644_p_dout0;
output   grp_fu_644_p_ce;
output  [63:0] grp_fu_648_p_din0;
output  [63:0] grp_fu_648_p_din1;
output  [1:0] grp_fu_648_p_opcode;
input  [63:0] grp_fu_648_p_dout0;
output   grp_fu_648_p_ce;
output  [63:0] grp_fu_652_p_din0;
output  [63:0] grp_fu_652_p_din1;
output  [1:0] grp_fu_652_p_opcode;
input  [63:0] grp_fu_652_p_dout0;
output   grp_fu_652_p_ce;
output  [63:0] grp_fu_772_p_din0;
output  [63:0] grp_fu_772_p_din1;
input  [63:0] grp_fu_772_p_dout0;
output   grp_fu_772_p_ce;
output  [63:0] grp_fu_776_p_din0;
output  [63:0] grp_fu_776_p_din1;
input  [63:0] grp_fu_776_p_dout0;
output   grp_fu_776_p_ce;
output  [63:0] grp_fu_780_p_din0;
output  [63:0] grp_fu_780_p_din1;
input  [63:0] grp_fu_780_p_dout0;
output   grp_fu_780_p_ce;
output  [63:0] grp_fu_784_p_din0;
output  [63:0] grp_fu_784_p_din1;
input  [63:0] grp_fu_784_p_dout0;
output   grp_fu_784_p_ce;
output  [63:0] grp_fu_788_p_din0;
output  [63:0] grp_fu_788_p_din1;
input  [63:0] grp_fu_788_p_dout0;
output   grp_fu_788_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_3204;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1870;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_5_reg_3194;
reg   [6:0] tid_5_reg_3194_pp0_iter1_reg;
reg   [6:0] tid_5_reg_3194_pp0_iter2_reg;
reg   [6:0] tid_5_reg_3194_pp0_iter3_reg;
reg   [6:0] tid_5_reg_3194_pp0_iter4_reg;
reg   [6:0] tid_5_reg_3194_pp0_iter5_reg;
reg   [6:0] tid_5_reg_3194_pp0_iter6_reg;
reg   [6:0] tid_5_reg_3194_pp0_iter7_reg;
reg   [6:0] tid_5_reg_3194_pp0_iter8_reg;
reg   [6:0] tid_5_reg_3194_pp0_iter9_reg;
reg   [6:0] tid_5_reg_3194_pp0_iter10_reg;
reg   [6:0] tid_5_reg_3194_pp0_iter11_reg;
reg   [6:0] tid_5_reg_3194_pp0_iter12_reg;
reg   [6:0] tid_5_reg_3194_pp0_iter13_reg;
reg   [6:0] tid_5_reg_3194_pp0_iter14_reg;
reg   [0:0] tmp_reg_3204_pp0_iter1_reg;
reg   [0:0] tmp_reg_3204_pp0_iter2_reg;
reg   [0:0] tmp_reg_3204_pp0_iter3_reg;
reg   [0:0] tmp_reg_3204_pp0_iter4_reg;
reg   [0:0] tmp_reg_3204_pp0_iter5_reg;
reg   [0:0] tmp_reg_3204_pp0_iter6_reg;
reg   [0:0] tmp_reg_3204_pp0_iter7_reg;
reg   [0:0] tmp_reg_3204_pp0_iter8_reg;
reg   [0:0] tmp_reg_3204_pp0_iter9_reg;
reg   [0:0] tmp_reg_3204_pp0_iter10_reg;
reg   [0:0] tmp_reg_3204_pp0_iter11_reg;
reg   [0:0] tmp_reg_3204_pp0_iter12_reg;
reg   [0:0] tmp_reg_3204_pp0_iter13_reg;
reg   [0:0] tmp_reg_3204_pp0_iter14_reg;
wire   [2:0] trunc_ln365_fu_1910_p1;
reg   [2:0] trunc_ln365_reg_3208;
reg   [2:0] trunc_ln365_reg_3208_pp0_iter1_reg;
reg   [2:0] trunc_ln365_reg_3208_pp0_iter2_reg;
reg   [2:0] trunc_ln365_reg_3208_pp0_iter3_reg;
reg   [2:0] trunc_ln365_reg_3208_pp0_iter4_reg;
reg   [2:0] trunc_ln365_reg_3208_pp0_iter5_reg;
reg   [2:0] trunc_ln365_reg_3208_pp0_iter6_reg;
reg   [2:0] trunc_ln365_reg_3208_pp0_iter7_reg;
reg   [2:0] trunc_ln365_reg_3208_pp0_iter8_reg;
reg   [2:0] trunc_ln365_reg_3208_pp0_iter9_reg;
reg   [2:0] trunc_ln365_reg_3208_pp0_iter10_reg;
reg   [2:0] trunc_ln365_reg_3208_pp0_iter11_reg;
reg   [2:0] trunc_ln365_reg_3208_pp0_iter12_reg;
reg   [2:0] trunc_ln365_reg_3208_pp0_iter13_reg;
reg   [2:0] trunc_ln365_reg_3208_pp0_iter14_reg;
reg   [2:0] trunc_ln365_reg_3208_pp0_iter15_reg;
reg   [63:0] c0_y_reg_3372;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] c0_y_61_reg_3378;
reg   [63:0] c0_y_62_reg_3384;
reg   [63:0] c0_y_63_reg_3389;
reg   [63:0] DATA_y_4_load_reg_3395;
reg   [63:0] DATA_y_5_load_reg_3401;
reg   [63:0] DATA_y_6_load_reg_3407;
reg   [63:0] DATA_y_7_load_reg_3412;
reg   [63:0] c0_x_reg_3418;
reg   [63:0] c0_x_61_reg_3424;
reg   [63:0] c0_x_62_reg_3430;
reg   [63:0] c0_x_63_reg_3435;
reg   [63:0] DATA_x_4_load_reg_3441;
reg   [63:0] DATA_x_5_load_reg_3447;
reg   [63:0] DATA_x_6_load_reg_3453;
reg   [63:0] DATA_x_7_load_reg_3458;
reg   [63:0] c0_y_67_reg_3464;
reg   [63:0] c0_y_68_reg_3470;
reg   [63:0] c0_y_69_reg_3476;
reg   [63:0] c0_y_70_reg_3482;
reg   [63:0] DATA_y_4_load_5_reg_3488;
reg   [63:0] DATA_y_5_load_5_reg_3494;
reg   [63:0] DATA_y_6_load_5_reg_3500;
reg   [63:0] DATA_y_7_load_5_reg_3506;
reg   [63:0] c0_x_67_reg_3512;
reg   [63:0] c0_x_68_reg_3518;
reg   [63:0] c0_x_69_reg_3524;
reg   [63:0] c0_x_70_reg_3530;
reg   [63:0] DATA_x_4_load_7_reg_3536;
reg   [63:0] DATA_x_5_load_7_reg_3542;
reg   [63:0] DATA_x_6_load_7_reg_3548;
reg   [63:0] DATA_x_7_load_7_reg_3554;
reg   [63:0] c0_x_36_reg_3560;
reg   [63:0] c0_y_36_reg_3566;
reg   [63:0] tmp_1_reg_3572;
reg   [63:0] sub_reg_3578;
reg   [63:0] tmp_1_11_reg_3584;
reg   [63:0] tmp_1_11_reg_3584_pp0_iter3_reg;
reg   [63:0] tmp_1_11_reg_3584_pp0_iter4_reg;
reg   [63:0] sub12_reg_3590;
reg   [63:0] sub12_reg_3590_pp0_iter3_reg;
reg   [63:0] sub12_reg_3590_pp0_iter4_reg;
reg   [63:0] add12_reg_3596;
reg   [63:0] add13_reg_3602;
reg   [63:0] tmp_1_12_reg_3608;
reg   [63:0] sub13_reg_3613;
reg   [63:0] c0_x_41_reg_3618;
reg   [63:0] c0_y_41_reg_3624;
reg   [63:0] tmp_1_15_reg_3630;
reg   [63:0] sub1591_1_reg_3636;
reg   [63:0] tmp_1_13_reg_3642;
reg   [63:0] tmp_1_13_reg_3642_pp0_iter3_reg;
reg   [63:0] tmp_1_13_reg_3642_pp0_iter4_reg;
reg   [63:0] sub1607_1_reg_3648;
reg   [63:0] sub1607_1_reg_3648_pp0_iter3_reg;
reg   [63:0] sub1607_1_reg_3648_pp0_iter4_reg;
reg   [63:0] add1614_1_reg_3654;
reg   [63:0] add1617_1_reg_3660;
reg   [63:0] tmp_1_14_reg_3666;
reg   [63:0] sub1623_1_reg_3671;
reg   [63:0] c0_x_64_reg_3676;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] c0_y_64_reg_3682;
reg   [63:0] c0_x_35_reg_3688;
reg   [63:0] c0_x_35_reg_3688_pp0_iter3_reg;
reg   [63:0] c0_x_35_reg_3688_pp0_iter4_reg;
reg   [63:0] c0_x_35_reg_3688_pp0_iter5_reg;
reg   [63:0] c0_x_35_reg_3688_pp0_iter6_reg;
reg   [63:0] c0_y_35_reg_3694;
reg   [63:0] c0_y_35_reg_3694_pp0_iter3_reg;
reg   [63:0] c0_y_35_reg_3694_pp0_iter4_reg;
reg   [63:0] c0_y_35_reg_3694_pp0_iter5_reg;
reg   [63:0] c0_y_35_reg_3694_pp0_iter6_reg;
reg   [63:0] add_reg_3700;
reg   [63:0] add11_reg_3706;
wire   [63:0] bitcast_ln386_1_fu_1991_p1;
wire   [63:0] bitcast_ln386_3_fu_2025_p1;
wire   [63:0] bitcast_ln386_9_fu_2059_p1;
wire   [63:0] bitcast_ln386_11_fu_2094_p1;
reg   [63:0] c0_x_71_reg_3734;
reg   [63:0] c0_y_71_reg_3740;
reg   [63:0] c0_x_40_reg_3746;
reg   [63:0] c0_x_40_reg_3746_pp0_iter3_reg;
reg   [63:0] c0_x_40_reg_3746_pp0_iter4_reg;
reg   [63:0] c0_x_40_reg_3746_pp0_iter5_reg;
reg   [63:0] c0_x_40_reg_3746_pp0_iter6_reg;
reg   [63:0] c0_y_40_reg_3752;
reg   [63:0] c0_y_40_reg_3752_pp0_iter3_reg;
reg   [63:0] c0_y_40_reg_3752_pp0_iter4_reg;
reg   [63:0] c0_y_40_reg_3752_pp0_iter5_reg;
reg   [63:0] c0_y_40_reg_3752_pp0_iter6_reg;
reg   [63:0] add1598_1_reg_3758;
reg   [63:0] add1601_1_reg_3764;
wire   [63:0] bitcast_ln386_21_fu_2129_p1;
wire   [63:0] bitcast_ln386_23_fu_2163_p1;
wire   [63:0] bitcast_ln386_29_fu_2197_p1;
wire   [63:0] bitcast_ln386_31_fu_2232_p1;
reg   [63:0] sub14_reg_3792;
reg   [63:0] add14_reg_3797;
reg   [63:0] sub16_reg_3802;
reg   [63:0] add16_reg_3807;
reg   [63:0] sub1630_1_reg_3812;
reg   [63:0] add1636_1_reg_3817;
reg   [63:0] mul1641_1_reg_3822;
reg   [63:0] mul1648_1_reg_3827;
reg   [63:0] sub1656_1_reg_3832;
reg   [63:0] add1662_1_reg_3837;
reg   [63:0] tmp_18_reg_3842;
reg   [63:0] tmp_18_reg_3842_pp0_iter5_reg;
reg   [63:0] tmp_18_reg_3842_pp0_iter6_reg;
reg   [63:0] mul_reg_3848;
reg   [63:0] mul6_reg_3853;
reg   [63:0] tmp_16_reg_3858;
reg   [63:0] tmp_16_reg_3858_pp0_iter5_reg;
reg   [63:0] tmp_16_reg_3858_pp0_iter6_reg;
reg   [63:0] sub17_reg_3864;
reg   [63:0] sub17_reg_3864_pp0_iter5_reg;
reg   [63:0] sub17_reg_3864_pp0_iter6_reg;
reg   [63:0] c0_x_43_reg_3870;
reg   [63:0] c0_y_43_reg_3876;
reg   [63:0] c0_x_44_reg_3882;
reg   [63:0] c0_x_44_reg_3882_pp0_iter5_reg;
reg   [63:0] c0_x_44_reg_3882_pp0_iter6_reg;
reg   [63:0] c0_x_44_reg_3882_pp0_iter7_reg;
reg   [63:0] c0_x_44_reg_3882_pp0_iter8_reg;
reg   [63:0] c0_y_44_reg_3888;
reg   [63:0] c0_y_44_reg_3888_pp0_iter5_reg;
reg   [63:0] c0_y_44_reg_3888_pp0_iter6_reg;
reg   [63:0] c0_y_44_reg_3888_pp0_iter7_reg;
reg   [63:0] c0_y_44_reg_3888_pp0_iter8_reg;
reg   [63:0] add1689_1_reg_3894;
reg   [63:0] add1692_1_reg_3900;
reg   [63:0] sub1698_1_reg_3906;
reg   [63:0] sub1698_1_reg_3906_pp0_iter5_reg;
reg   [63:0] sub1698_1_reg_3906_pp0_iter6_reg;
wire   [63:0] bitcast_ln386_5_fu_2267_p1;
wire   [63:0] bitcast_ln386_7_fu_2301_p1;
reg   [63:0] c0_x_65_reg_3922;
reg   [63:0] c0_y_65_reg_3928;
reg   [63:0] c0_x_38_reg_3934;
reg   [63:0] c0_x_38_reg_3934_pp0_iter5_reg;
reg   [63:0] c0_x_38_reg_3934_pp0_iter6_reg;
reg   [63:0] c0_x_38_reg_3934_pp0_iter7_reg;
reg   [63:0] c0_x_38_reg_3934_pp0_iter8_reg;
reg   [63:0] c0_y_38_reg_3940;
reg   [63:0] c0_y_38_reg_3940_pp0_iter5_reg;
reg   [63:0] c0_y_38_reg_3940_pp0_iter6_reg;
reg   [63:0] c0_y_38_reg_3940_pp0_iter7_reg;
reg   [63:0] c0_y_38_reg_3940_pp0_iter8_reg;
reg   [63:0] add17_reg_3946;
reg   [63:0] add18_reg_3952;
wire   [63:0] bitcast_ln386_25_fu_2335_p1;
wire   [63:0] bitcast_ln386_27_fu_2369_p1;
reg   [63:0] c0_x_37_reg_3968;
reg   [63:0] c0_x_42_reg_3974;
reg   [63:0] c0_y_42_reg_3980;
reg   [63:0] mul1657_1_reg_3986;
reg   [63:0] mul1663_1_reg_3992;
reg   [63:0] c0_y_37_reg_3998;
reg   [63:0] mul7_reg_4004;
reg   [63:0] mul8_reg_4010;
reg   [63:0] sub15_reg_4016;
reg   [63:0] add15_reg_4022;
reg   [63:0] mul9_reg_4028;
reg   [63:0] sub1644_1_reg_4033;
reg   [63:0] add1649_1_reg_4039;
reg   [63:0] mul1702_1_reg_4045;
reg   [63:0] mul1709_1_reg_4050;
reg   [63:0] mul10_reg_4055;
reg   [63:0] add1717_1_reg_4060;
reg   [63:0] add1720_1_reg_4065;
wire   [2:0] lshr_ln114_1_fu_2374_p4;
reg   [2:0] lshr_ln114_1_reg_4070;
reg   [2:0] lshr_ln114_1_reg_4070_pp0_iter8_reg;
reg   [2:0] lshr_ln114_1_reg_4070_pp0_iter9_reg;
reg   [2:0] lshr_ln114_1_reg_4070_pp0_iter10_reg;
reg   [2:0] lshr_ln114_1_reg_4070_pp0_iter11_reg;
wire   [63:0] zext_ln114_fu_2383_p1;
reg   [63:0] zext_ln114_reg_4078;
wire   [63:0] bitcast_ln386_13_fu_2424_p1;
wire   [63:0] bitcast_ln386_15_fu_2458_p1;
reg   [63:0] add19_reg_4100;
reg   [63:0] add20_reg_4105;
reg   [63:0] sub20_reg_4110;
reg   [63:0] sub20_reg_4110_pp0_iter8_reg;
reg   [63:0] sub20_reg_4110_pp0_iter9_reg;
reg   [63:0] sub20_reg_4110_pp0_iter10_reg;
reg   [63:0] sub20_reg_4110_pp0_iter11_reg;
reg   [63:0] sub21_reg_4115;
reg   [63:0] sub21_reg_4115_pp0_iter8_reg;
reg   [63:0] sub21_reg_4115_pp0_iter9_reg;
reg   [63:0] sub21_reg_4115_pp0_iter10_reg;
reg   [63:0] sub21_reg_4115_pp0_iter11_reg;
wire   [63:0] bitcast_ln386_33_fu_2492_p1;
wire   [63:0] bitcast_ln386_35_fu_2526_p1;
wire   [63:0] bitcast_ln393_1_fu_2538_p1;
reg   [63:0] bitcast_ln393_1_reg_4130;
reg   [63:0] bitcast_ln393_1_reg_4130_pp0_iter8_reg;
reg   [63:0] bitcast_ln393_1_reg_4130_pp0_iter9_reg;
reg   [63:0] bitcast_ln393_1_reg_4130_pp0_iter10_reg;
reg   [63:0] bitcast_ln393_1_reg_4130_pp0_iter11_reg;
reg   [63:0] bitcast_ln393_1_reg_4130_pp0_iter12_reg;
reg   [63:0] bitcast_ln393_1_reg_4130_pp0_iter13_reg;
reg   [63:0] bitcast_ln393_1_reg_4130_pp0_iter14_reg;
wire   [63:0] bitcast_ln402_1_fu_2549_p1;
reg   [63:0] bitcast_ln402_1_reg_4138;
reg   [63:0] bitcast_ln402_1_reg_4138_pp0_iter8_reg;
reg   [63:0] bitcast_ln402_1_reg_4138_pp0_iter9_reg;
reg   [63:0] bitcast_ln402_1_reg_4138_pp0_iter10_reg;
reg   [63:0] bitcast_ln402_1_reg_4138_pp0_iter11_reg;
reg   [63:0] bitcast_ln402_1_reg_4138_pp0_iter12_reg;
reg   [63:0] bitcast_ln402_1_reg_4138_pp0_iter13_reg;
reg   [63:0] bitcast_ln402_1_reg_4138_pp0_iter14_reg;
reg   [63:0] add1768_1_reg_4146;
reg   [63:0] add1768_1_reg_4146_pp0_iter9_reg;
reg   [63:0] add1771_1_reg_4152;
reg   [63:0] add1771_1_reg_4152_pp0_iter9_reg;
reg   [63:0] tmp_19_reg_4158;
reg   [63:0] tmp_19_reg_4158_pp0_iter9_reg;
reg   [63:0] sub1777_1_reg_4164;
reg   [63:0] sub1777_1_reg_4164_pp0_iter9_reg;
reg   [63:0] tmp_17_reg_4170;
reg   [63:0] tmp_17_reg_4170_pp0_iter9_reg;
reg   [63:0] tmp_17_reg_4170_pp0_iter10_reg;
reg   [63:0] sub24_reg_4176;
reg   [63:0] sub24_reg_4176_pp0_iter9_reg;
reg   [63:0] sub24_reg_4176_pp0_iter10_reg;
reg   [63:0] c0_x_45_reg_4182;
reg   [63:0] c0_y_45_reg_4188;
reg   [63:0] sub18_reg_4194;
reg   [63:0] sub19_reg_4200;
reg   [63:0] c0_x_66_reg_4206;
reg   [63:0] c0_y_66_reg_4212;
reg   [63:0] c0_x_39_reg_4218;
reg   [63:0] c0_x_39_reg_4218_pp0_iter9_reg;
reg   [63:0] c0_x_39_reg_4218_pp0_iter10_reg;
reg   [63:0] c0_x_39_reg_4218_pp0_iter11_reg;
reg   [63:0] c0_x_39_reg_4218_pp0_iter12_reg;
reg   [63:0] c0_y_39_reg_4224;
reg   [63:0] c0_y_39_reg_4224_pp0_iter9_reg;
reg   [63:0] c0_y_39_reg_4224_pp0_iter10_reg;
reg   [63:0] c0_y_39_reg_4224_pp0_iter11_reg;
reg   [63:0] c0_y_39_reg_4224_pp0_iter12_reg;
reg   [63:0] add23_reg_4230;
reg   [63:0] add24_reg_4236;
reg   [63:0] sub1705_1_reg_4242;
reg   [63:0] sub1710_1_reg_4248;
reg   [63:0] c0_x_46_reg_4254;
reg   [63:0] c0_x_46_reg_4254_pp0_iter9_reg;
reg   [63:0] c0_x_46_reg_4254_pp0_iter10_reg;
reg   [63:0] c0_x_46_reg_4254_pp0_iter11_reg;
reg   [63:0] c0_y_46_reg_4260;
reg   [63:0] c0_y_46_reg_4260_pp0_iter9_reg;
reg   [63:0] c0_y_46_reg_4260_pp0_iter10_reg;
reg   [63:0] c0_y_46_reg_4260_pp0_iter11_reg;
reg   [63:0] mul1781_1_reg_4266;
reg   [63:0] mul1788_1_reg_4271;
wire   [63:0] bitcast_ln386_37_fu_2596_p1;
wire   [63:0] bitcast_ln386_39_fu_2630_p1;
reg   [63:0] mul11_reg_4286;
reg   [63:0] mul12_reg_4291;
reg   [63:0] add1733_1_reg_4296;
reg   [63:0] add1736_1_reg_4301;
reg   [63:0] add1799_1_reg_4306;
reg   [63:0] add21_reg_4311;
reg   [63:0] add22_reg_4316;
reg   [63:0] sub22_reg_4321;
reg   [63:0] sub23_reg_4326;
wire   [63:0] bitcast_ln386_17_fu_2667_p1;
wire   [63:0] bitcast_ln386_19_fu_2701_p1;
reg   [63:0] add25_reg_4341;
reg   [63:0] add26_reg_4346;
reg   [63:0] sub27_reg_4351;
reg   [63:0] sub28_reg_4356;
wire   [63:0] bitcast_ln394_1_fu_2742_p1;
reg   [63:0] bitcast_ln394_1_reg_4361;
reg   [63:0] bitcast_ln394_1_reg_4361_pp0_iter12_reg;
reg   [63:0] bitcast_ln394_1_reg_4361_pp0_iter13_reg;
reg   [63:0] bitcast_ln394_1_reg_4361_pp0_iter14_reg;
wire   [63:0] bitcast_ln395_1_fu_2746_p1;
reg   [63:0] bitcast_ln395_1_reg_4369;
reg   [63:0] bitcast_ln395_1_reg_4369_pp0_iter12_reg;
reg   [63:0] bitcast_ln395_1_reg_4369_pp0_iter13_reg;
reg   [63:0] bitcast_ln395_1_reg_4369_pp0_iter14_reg;
reg   [63:0] bitcast_ln395_1_reg_4369_pp0_iter15_reg;
wire   [63:0] bitcast_ln403_1_fu_2757_p1;
reg   [63:0] bitcast_ln403_1_reg_4377;
reg   [63:0] bitcast_ln403_1_reg_4377_pp0_iter12_reg;
reg   [63:0] bitcast_ln403_1_reg_4377_pp0_iter13_reg;
reg   [63:0] bitcast_ln403_1_reg_4377_pp0_iter14_reg;
wire   [63:0] bitcast_ln404_1_fu_2761_p1;
reg   [63:0] bitcast_ln404_1_reg_4385;
reg   [63:0] bitcast_ln404_1_reg_4385_pp0_iter12_reg;
reg   [63:0] bitcast_ln404_1_reg_4385_pp0_iter13_reg;
reg   [63:0] bitcast_ln404_1_reg_4385_pp0_iter14_reg;
reg   [63:0] bitcast_ln404_1_reg_4385_pp0_iter15_reg;
wire  signed [3:0] zext_ln391_cast_fu_2765_p3;
reg  signed [3:0] zext_ln391_cast_reg_4393;
reg  signed [3:0] zext_ln391_cast_reg_4393_pp0_iter12_reg;
reg  signed [3:0] zext_ln391_cast_reg_4393_pp0_iter13_reg;
reg  signed [3:0] zext_ln391_cast_reg_4393_pp0_iter14_reg;
reg  signed [3:0] zext_ln391_cast_reg_4393_pp0_iter15_reg;
wire  signed [4:0] zext_ln392_cast_fu_2787_p3;
reg  signed [4:0] zext_ln392_cast_reg_4399;
wire   [3:0] tmp_92_fu_2807_p4;
reg   [3:0] tmp_92_reg_4404;
reg   [3:0] tmp_92_reg_4404_pp0_iter12_reg;
reg   [3:0] tmp_92_reg_4404_pp0_iter13_reg;
reg   [3:0] tmp_92_reg_4404_pp0_iter14_reg;
wire  signed [4:0] zext_ln392_1_fu_2816_p3;
reg  signed [4:0] zext_ln392_1_reg_4409;
reg  signed [4:0] zext_ln392_1_reg_4409_pp0_iter12_reg;
reg  signed [4:0] zext_ln392_1_reg_4409_pp0_iter13_reg;
reg  signed [4:0] zext_ln392_1_reg_4409_pp0_iter14_reg;
reg  signed [4:0] zext_ln392_1_reg_4409_pp0_iter15_reg;
reg   [63:0] sub1784_1_reg_4414;
reg   [63:0] sub1789_1_reg_4420;
reg   [63:0] sub25_reg_4426;
reg   [63:0] sub26_reg_4432;
reg   [63:0] add1812_1_reg_4438;
reg   [63:0] sub1818_1_reg_4443;
reg   [63:0] sub1818_1_reg_4443_pp0_iter15_reg;
reg   [63:0] sub1821_1_reg_4448;
reg   [63:0] sub1821_1_reg_4448_pp0_iter15_reg;
reg   [5:0] lshr_ln6_reg_4453;
reg   [3:0] trunc_ln8_reg_4458;
reg   [3:0] trunc_ln8_reg_4458_pp0_iter15_reg;
reg   [63:0] add27_reg_4463;
reg   [63:0] add28_reg_4468;
reg   [63:0] sub30_reg_4473;
wire   [63:0] bitcast_ln396_fu_3088_p1;
reg   [63:0] bitcast_ln396_reg_4478;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln365_fu_1890_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln367_fu_1932_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln391_1_fu_2722_p1;
wire   [63:0] zext_ln391_fu_2772_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln392_fu_2795_p1;
wire   [63:0] zext_ln392_2_fu_2824_p1;
wire   [63:0] zext_ln394_fu_2889_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln395_fu_2922_p1;
wire   [63:0] zext_ln396_fu_2951_p1;
wire   [63:0] zext_ln393_1_fu_2996_p1;
wire   [63:0] zext_ln394_2_fu_3065_p1;
wire   [63:0] zext_ln395_1_fu_3077_p1;
wire   [63:0] zext_ln393_fu_3095_p1;
wire   [63:0] zext_ln396_1_fu_3110_p1;
wire   [63:0] zext_ln389_fu_3139_p1;
wire   [63:0] zext_ln365_3_fu_3168_p1;
reg   [6:0] tid_fu_152;
wire   [6:0] add_ln365_fu_1952_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_5;
reg    DATA_y_ce1_local;
reg    DATA_y_ce0_local;
reg    DATA_y_1_ce1_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_ce1_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_ce1_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_4_ce1_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_5_ce1_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_6_ce1_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_7_ce1_local;
reg    DATA_y_7_ce0_local;
reg    DATA_x_ce1_local;
reg    DATA_x_ce0_local;
reg    DATA_x_1_ce1_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_2_ce1_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_3_ce1_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_4_ce1_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_5_ce1_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_6_ce1_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_7_ce1_local;
reg    DATA_x_7_ce0_local;
reg    work_x_5_we1_local;
reg   [63:0] work_x_5_d1_local;
wire   [63:0] bitcast_ln389_1_fu_2531_p1;
reg    work_x_5_ce1_local;
reg   [5:0] work_x_5_address1_local;
reg    work_x_5_we0_local;
reg   [63:0] work_x_5_d0_local;
wire   [63:0] bitcast_ln390_1_fu_2734_p1;
reg    work_x_5_ce0_local;
reg   [5:0] work_x_5_address0_local;
wire   [63:0] bitcast_ln391_1_fu_2864_p1;
wire   [63:0] bitcast_ln392_1_fu_3039_p1;
wire   [63:0] bitcast_ln396_1_fu_3151_p1;
reg    work_y_5_we1_local;
reg   [63:0] work_y_5_d1_local;
wire   [63:0] bitcast_ln398_1_fu_2542_p1;
reg    work_y_5_ce1_local;
reg   [5:0] work_y_5_address1_local;
reg    work_y_5_we0_local;
reg   [63:0] work_y_5_d0_local;
wire   [63:0] bitcast_ln399_1_fu_2750_p1;
reg    work_y_5_ce0_local;
reg   [5:0] work_y_5_address0_local;
wire   [63:0] bitcast_ln400_1_fu_2871_p1;
wire   [63:0] bitcast_ln401_1_fu_3046_p1;
wire   [63:0] bitcast_ln405_1_fu_3158_p1;
reg    work_x_3_we1_local;
reg   [63:0] work_x_3_d1_local;
reg    work_x_3_ce1_local;
reg   [5:0] work_x_3_address1_local;
reg    work_x_3_we0_local;
reg   [63:0] work_x_3_d0_local;
reg    work_x_3_ce0_local;
reg   [5:0] work_x_3_address0_local;
reg    work_y_3_we1_local;
reg   [63:0] work_y_3_d1_local;
reg    work_y_3_ce1_local;
reg   [5:0] work_y_3_address1_local;
reg    work_y_3_we0_local;
reg   [63:0] work_y_3_d0_local;
reg    work_y_3_ce0_local;
reg   [5:0] work_y_3_address0_local;
reg    work_x_1_we1_local;
reg   [63:0] work_x_1_d1_local;
reg    work_x_1_ce1_local;
reg   [5:0] work_x_1_address1_local;
reg    work_x_1_we0_local;
reg   [63:0] work_x_1_d0_local;
reg    work_x_1_ce0_local;
reg   [5:0] work_x_1_address0_local;
reg    work_y_1_we1_local;
reg   [63:0] work_y_1_d1_local;
reg    work_y_1_ce1_local;
reg   [5:0] work_y_1_address1_local;
reg    work_y_1_we0_local;
reg   [63:0] work_y_1_d0_local;
reg    work_y_1_ce0_local;
reg   [5:0] work_y_1_address0_local;
reg    work_x_7_we1_local;
reg   [63:0] work_x_7_d1_local;
reg    work_x_7_ce1_local;
reg   [5:0] work_x_7_address1_local;
reg    work_x_7_we0_local;
reg   [63:0] work_x_7_d0_local;
reg    work_x_7_ce0_local;
reg   [5:0] work_x_7_address0_local;
reg    work_y_7_we1_local;
reg   [63:0] work_y_7_d1_local;
reg    work_y_7_ce1_local;
reg   [5:0] work_y_7_address1_local;
reg    work_y_7_we0_local;
reg   [63:0] work_y_7_d0_local;
reg    work_y_7_ce0_local;
reg   [5:0] work_y_7_address0_local;
reg    work_x_4_we1_local;
reg   [63:0] work_x_4_d1_local;
wire   [63:0] bitcast_ln389_fu_2553_p1;
reg    work_x_4_ce1_local;
reg   [5:0] work_x_4_address1_local;
wire   [63:0] bitcast_ln390_fu_2836_p1;
reg    work_x_4_we0_local;
reg   [63:0] work_x_4_d0_local;
wire   [63:0] bitcast_ln391_fu_2843_p1;
reg    work_x_4_ce0_local;
reg   [5:0] work_x_4_address0_local;
wire   [63:0] bitcast_ln393_fu_2901_p1;
wire   [63:0] bitcast_ln394_fu_2934_p1;
wire   [63:0] bitcast_ln395_fu_2963_p1;
wire   [63:0] bitcast_ln392_fu_3122_p1;
reg    work_y_4_we1_local;
reg   [63:0] work_y_4_d1_local;
wire   [63:0] bitcast_ln398_fu_2560_p1;
reg    work_y_4_ce1_local;
reg   [5:0] work_y_4_address1_local;
wire   [63:0] bitcast_ln399_fu_2850_p1;
reg    work_y_4_we0_local;
reg   [63:0] work_y_4_d0_local;
wire   [63:0] bitcast_ln400_fu_2857_p1;
reg    work_y_4_ce0_local;
reg   [5:0] work_y_4_address0_local;
wire   [63:0] bitcast_ln402_fu_2908_p1;
wire   [63:0] bitcast_ln403_fu_2941_p1;
wire   [63:0] bitcast_ln404_fu_2970_p1;
wire   [63:0] bitcast_ln401_fu_3129_p1;
wire   [63:0] bitcast_ln405_fu_3180_p1;
reg    work_x_2_we1_local;
reg   [63:0] work_x_2_d1_local;
reg    work_x_2_ce1_local;
reg   [5:0] work_x_2_address1_local;
reg    work_x_2_we0_local;
reg   [63:0] work_x_2_d0_local;
reg    work_x_2_ce0_local;
reg   [5:0] work_x_2_address0_local;
reg    work_y_2_we1_local;
reg   [63:0] work_y_2_d1_local;
reg    work_y_2_ce1_local;
reg   [5:0] work_y_2_address1_local;
reg    work_y_2_we0_local;
reg   [63:0] work_y_2_d0_local;
reg    work_y_2_ce0_local;
reg   [5:0] work_y_2_address0_local;
reg    work_x_0_we1_local;
reg   [63:0] work_x_0_d1_local;
reg    work_x_0_ce1_local;
reg   [5:0] work_x_0_address1_local;
reg    work_x_0_we0_local;
reg   [63:0] work_x_0_d0_local;
reg    work_x_0_ce0_local;
reg   [5:0] work_x_0_address0_local;
reg    work_y_0_we1_local;
reg   [63:0] work_y_0_d1_local;
reg    work_y_0_ce1_local;
reg   [5:0] work_y_0_address1_local;
reg    work_y_0_we0_local;
reg   [63:0] work_y_0_d0_local;
reg    work_y_0_ce0_local;
reg   [5:0] work_y_0_address0_local;
reg    work_x_6_we1_local;
reg   [63:0] work_x_6_d1_local;
reg    work_x_6_ce1_local;
reg   [5:0] work_x_6_address1_local;
reg    work_x_6_we0_local;
reg   [63:0] work_x_6_d0_local;
reg    work_x_6_ce0_local;
reg   [5:0] work_x_6_address0_local;
reg    work_y_6_we1_local;
reg   [63:0] work_y_6_d1_local;
reg    work_y_6_ce1_local;
reg   [5:0] work_y_6_address1_local;
reg    work_y_6_we0_local;
reg   [63:0] work_y_6_d0_local;
reg    work_y_6_ce0_local;
reg   [5:0] work_y_6_address0_local;
reg   [63:0] grp_fu_1724_p0;
reg   [63:0] grp_fu_1724_p1;
reg   [63:0] grp_fu_1728_p0;
reg   [63:0] grp_fu_1728_p1;
reg   [63:0] grp_fu_1732_p0;
reg   [63:0] grp_fu_1732_p1;
reg   [63:0] grp_fu_1736_p0;
reg   [63:0] grp_fu_1736_p1;
reg   [63:0] grp_fu_1740_p0;
reg   [63:0] grp_fu_1740_p1;
reg   [63:0] grp_fu_1744_p0;
reg   [63:0] grp_fu_1744_p1;
reg   [63:0] grp_fu_1748_p0;
reg   [63:0] grp_fu_1748_p1;
reg   [63:0] grp_fu_1752_p0;
reg   [63:0] grp_fu_1752_p1;
reg   [63:0] grp_fu_1756_p0;
reg   [63:0] grp_fu_1756_p1;
reg   [63:0] grp_fu_1760_p0;
reg   [63:0] grp_fu_1760_p1;
reg   [63:0] grp_fu_1764_p0;
reg   [63:0] grp_fu_1764_p1;
reg   [63:0] grp_fu_1768_p0;
reg   [63:0] grp_fu_1768_p1;
reg   [63:0] grp_fu_1772_p0;
reg   [63:0] grp_fu_1772_p1;
reg   [63:0] grp_fu_1776_p0;
reg   [63:0] grp_fu_1776_p1;
reg   [63:0] grp_fu_1780_p0;
reg   [63:0] grp_fu_1780_p1;
reg   [63:0] grp_fu_1784_p0;
reg   [63:0] grp_fu_1784_p1;
reg   [63:0] grp_fu_1788_p0;
reg   [63:0] grp_fu_1788_p1;
reg   [63:0] grp_fu_1792_p0;
reg   [63:0] grp_fu_1792_p1;
reg   [63:0] grp_fu_1796_p0;
reg   [63:0] grp_fu_1796_p1;
reg   [63:0] grp_fu_1800_p0;
reg   [63:0] grp_fu_1800_p1;
reg   [63:0] grp_fu_1804_p0;
reg   [63:0] grp_fu_1804_p1;
reg   [63:0] grp_fu_1808_p0;
reg   [63:0] grp_fu_1808_p1;
reg   [63:0] grp_fu_1812_p0;
reg   [63:0] grp_fu_1812_p1;
reg   [63:0] grp_fu_1816_p0;
reg   [63:0] grp_fu_1816_p1;
reg   [63:0] grp_fu_1820_p0;
reg   [63:0] grp_fu_1820_p1;
reg   [63:0] grp_fu_1824_p0;
reg   [63:0] grp_fu_1824_p1;
reg   [63:0] grp_fu_1828_p0;
reg   [63:0] grp_fu_1828_p1;
reg   [63:0] grp_fu_1832_p0;
reg   [63:0] grp_fu_1832_p1;
reg   [63:0] grp_fu_1836_p0;
reg   [63:0] grp_fu_1836_p1;
reg   [63:0] grp_fu_1840_p0;
reg   [63:0] grp_fu_1840_p1;
reg   [63:0] grp_fu_1845_p0;
reg   [63:0] grp_fu_1845_p1;
reg   [63:0] grp_fu_1852_p0;
reg   [63:0] grp_fu_1852_p1;
reg   [63:0] grp_fu_1857_p0;
reg   [63:0] grp_fu_1857_p1;
reg   [63:0] grp_fu_1862_p0;
reg   [63:0] grp_fu_1862_p1;
wire   [4:0] tmp_s_fu_1914_p4;
wire   [5:0] or_ln_fu_1924_p3;
wire   [63:0] bitcast_ln386_fu_1962_p1;
wire   [0:0] bit_sel_fu_1965_p3;
wire   [0:0] xor_ln386_19_fu_1973_p2;
wire   [62:0] trunc_ln386_fu_1979_p1;
wire   [63:0] xor_ln2_fu_1983_p3;
wire   [63:0] bitcast_ln386_2_fu_1996_p1;
wire   [0:0] bit_sel40_fu_1999_p3;
wire   [0:0] xor_ln386_fu_2007_p2;
wire   [62:0] trunc_ln386_1_fu_2013_p1;
wire   [63:0] xor_ln386_1_fu_2017_p3;
wire   [63:0] bitcast_ln386_8_fu_2030_p1;
wire   [0:0] bit_sel43_fu_2033_p3;
wire   [0:0] xor_ln386_22_fu_2041_p2;
wire   [62:0] trunc_ln386_4_fu_2047_p1;
wire   [63:0] xor_ln386_4_fu_2051_p3;
wire   [63:0] bitcast_ln386_10_fu_2065_p1;
wire   [0:0] bit_sel44_fu_2068_p3;
wire   [0:0] xor_ln386_23_fu_2076_p2;
wire   [62:0] trunc_ln386_5_fu_2082_p1;
wire   [63:0] xor_ln386_5_fu_2086_p3;
wire   [63:0] bitcast_ln386_20_fu_2100_p1;
wire   [0:0] bit_sel49_fu_2103_p3;
wire   [0:0] xor_ln386_28_fu_2111_p2;
wire   [62:0] trunc_ln386_10_fu_2117_p1;
wire   [63:0] xor_ln386_s_fu_2121_p3;
wire   [63:0] bitcast_ln386_22_fu_2134_p1;
wire   [0:0] bit_sel50_fu_2137_p3;
wire   [0:0] xor_ln386_29_fu_2145_p2;
wire   [62:0] trunc_ln386_11_fu_2151_p1;
wire   [63:0] xor_ln386_10_fu_2155_p3;
wire   [63:0] bitcast_ln386_28_fu_2168_p1;
wire   [0:0] bit_sel53_fu_2171_p3;
wire   [0:0] xor_ln386_32_fu_2179_p2;
wire   [62:0] trunc_ln386_14_fu_2185_p1;
wire   [63:0] xor_ln386_13_fu_2189_p3;
wire   [63:0] bitcast_ln386_30_fu_2203_p1;
wire   [0:0] bit_sel54_fu_2206_p3;
wire   [0:0] xor_ln386_33_fu_2214_p2;
wire   [62:0] trunc_ln386_15_fu_2220_p1;
wire   [63:0] xor_ln386_14_fu_2224_p3;
wire   [63:0] bitcast_ln386_4_fu_2238_p1;
wire   [0:0] bit_sel41_fu_2241_p3;
wire   [0:0] xor_ln386_20_fu_2249_p2;
wire   [62:0] trunc_ln386_2_fu_2255_p1;
wire   [63:0] xor_ln386_2_fu_2259_p3;
wire   [63:0] bitcast_ln386_6_fu_2272_p1;
wire   [0:0] bit_sel42_fu_2275_p3;
wire   [0:0] xor_ln386_21_fu_2283_p2;
wire   [62:0] trunc_ln386_3_fu_2289_p1;
wire   [63:0] xor_ln386_3_fu_2293_p3;
wire   [63:0] bitcast_ln386_24_fu_2306_p1;
wire   [0:0] bit_sel51_fu_2309_p3;
wire   [0:0] xor_ln386_30_fu_2317_p2;
wire   [62:0] trunc_ln386_12_fu_2323_p1;
wire   [63:0] xor_ln386_11_fu_2327_p3;
wire   [63:0] bitcast_ln386_26_fu_2340_p1;
wire   [0:0] bit_sel52_fu_2343_p3;
wire   [0:0] xor_ln386_31_fu_2351_p2;
wire   [62:0] trunc_ln386_13_fu_2357_p1;
wire   [63:0] xor_ln386_12_fu_2361_p3;
wire   [63:0] bitcast_ln386_12_fu_2395_p1;
wire   [0:0] bit_sel45_fu_2398_p3;
wire   [0:0] xor_ln386_24_fu_2406_p2;
wire   [62:0] trunc_ln386_6_fu_2412_p1;
wire   [63:0] xor_ln386_6_fu_2416_p3;
wire   [63:0] bitcast_ln386_14_fu_2429_p1;
wire   [0:0] bit_sel46_fu_2432_p3;
wire   [0:0] xor_ln386_25_fu_2440_p2;
wire   [62:0] trunc_ln386_7_fu_2446_p1;
wire   [63:0] xor_ln386_7_fu_2450_p3;
wire   [63:0] bitcast_ln386_32_fu_2463_p1;
wire   [0:0] bit_sel55_fu_2466_p3;
wire   [0:0] xor_ln386_34_fu_2474_p2;
wire   [62:0] trunc_ln386_16_fu_2480_p1;
wire   [63:0] xor_ln386_15_fu_2484_p3;
wire   [63:0] bitcast_ln386_34_fu_2497_p1;
wire   [0:0] bit_sel56_fu_2500_p3;
wire   [0:0] xor_ln386_35_fu_2508_p2;
wire   [62:0] trunc_ln386_17_fu_2514_p1;
wire   [63:0] xor_ln386_16_fu_2518_p3;
wire   [63:0] bitcast_ln386_36_fu_2567_p1;
wire   [0:0] bit_sel57_fu_2570_p3;
wire   [0:0] xor_ln386_36_fu_2578_p2;
wire   [62:0] trunc_ln386_18_fu_2584_p1;
wire   [63:0] xor_ln386_17_fu_2588_p3;
wire   [63:0] bitcast_ln386_38_fu_2601_p1;
wire   [0:0] bit_sel58_fu_2604_p3;
wire   [0:0] xor_ln386_37_fu_2612_p2;
wire   [62:0] trunc_ln386_19_fu_2618_p1;
wire   [63:0] xor_ln386_18_fu_2622_p3;
wire   [63:0] bitcast_ln386_16_fu_2638_p1;
wire   [0:0] bit_sel47_fu_2641_p3;
wire   [0:0] xor_ln386_26_fu_2649_p2;
wire   [62:0] trunc_ln386_8_fu_2655_p1;
wire   [63:0] xor_ln386_8_fu_2659_p3;
wire   [63:0] bitcast_ln386_18_fu_2672_p1;
wire   [0:0] bit_sel48_fu_2675_p3;
wire   [0:0] xor_ln386_27_fu_2683_p2;
wire   [62:0] trunc_ln386_9_fu_2689_p1;
wire   [63:0] xor_ln386_9_fu_2693_p3;
wire   [7:0] zext_ln365_2_fu_2635_p1;
wire   [7:0] add_ln390_fu_2706_p2;
wire   [4:0] lshr_ln4_fu_2712_p4;
wire   [3:0] zext_ln391_2_fu_2784_p1;
wire   [4:0] zext_ln393_2_fu_2878_p1;
wire   [5:0] zext_ln394_cast_fu_2881_p3;
wire   [5:0] zext_ln395_cast_fu_2915_p3;
wire  signed [5:0] sext_ln396_fu_2948_p1;
wire   [8:0] zext_ln365_1_fu_2977_p1;
wire   [8:0] add_ln392_fu_2980_p2;
wire   [5:0] lshr_ln5_fu_2986_p4;
wire   [8:0] add_ln394_fu_3008_p2;
wire   [6:0] add_ln396_fu_3024_p2;
wire   [4:0] zext_ln393_3_fu_3054_p1;
wire   [5:0] zext_ln394_1_fu_3057_p3;
wire  signed [4:0] sext_ln393_fu_3092_p1;
wire  signed [5:0] sext_ln396_1_fu_3107_p1;
wire  signed [5:0] sext_ln389_fu_3136_p1;
wire  signed [5:0] sext_ln365_fu_3165_p1;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
reg   [1:0] grp_fu_1740_opcode;
reg   [1:0] grp_fu_1744_opcode;
reg   [1:0] grp_fu_1780_opcode;
reg   [1:0] grp_fu_1784_opcode;
reg   [1:0] grp_fu_1788_opcode;
reg   [1:0] grp_fu_1792_opcode;
reg   [1:0] grp_fu_1796_opcode;
reg   [1:0] grp_fu_1800_opcode;
reg   [1:0] grp_fu_1804_opcode;
reg   [1:0] grp_fu_1808_opcode;
reg   [1:0] grp_fu_1812_opcode;
reg   [1:0] grp_fu_1816_opcode;
reg   [1:0] grp_fu_1820_opcode;
reg   [1:0] grp_fu_1824_opcode;
reg   [1:0] grp_fu_1828_opcode;
reg   [1:0] grp_fu_1832_opcode;
reg   [1:0] grp_fu_1836_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter15_stage0;
reg    ap_idle_pp0_0to14;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to16;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_152 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter16 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage0))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage0))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage0))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage0))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage0))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage0))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage0))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage0))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        tid_fu_152 <= 7'd0;
    end else if (((tmp_reg_3204 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_152 <= add_ln365_fu_1952_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_4_load_7_reg_3536 <= DATA_x_4_q0;
        DATA_x_4_load_reg_3441 <= DATA_x_4_q1;
        DATA_x_5_load_7_reg_3542 <= DATA_x_5_q0;
        DATA_x_5_load_reg_3447 <= DATA_x_5_q1;
        DATA_x_6_load_7_reg_3548 <= DATA_x_6_q0;
        DATA_x_6_load_reg_3453 <= DATA_x_6_q1;
        DATA_x_7_load_7_reg_3554 <= DATA_x_7_q0;
        DATA_x_7_load_reg_3458 <= DATA_x_7_q1;
        DATA_y_4_load_5_reg_3488 <= DATA_y_4_q0;
        DATA_y_4_load_reg_3395 <= DATA_y_4_q1;
        DATA_y_5_load_5_reg_3494 <= DATA_y_5_q0;
        DATA_y_5_load_reg_3401 <= DATA_y_5_q1;
        DATA_y_6_load_5_reg_3500 <= DATA_y_6_q0;
        DATA_y_6_load_reg_3407 <= DATA_y_6_q1;
        DATA_y_7_load_5_reg_3506 <= DATA_y_7_q0;
        DATA_y_7_load_reg_3412 <= DATA_y_7_q1;
        c0_x_61_reg_3424 <= DATA_x_1_q1;
        c0_x_62_reg_3430 <= DATA_x_2_q1;
        c0_x_63_reg_3435 <= DATA_x_3_q1;
        c0_x_67_reg_3512 <= DATA_x_q0;
        c0_x_68_reg_3518 <= DATA_x_1_q0;
        c0_x_69_reg_3524 <= DATA_x_2_q0;
        c0_x_70_reg_3530 <= DATA_x_3_q0;
        c0_x_reg_3418 <= DATA_x_q1;
        c0_y_61_reg_3378 <= DATA_y_1_q1;
        c0_y_62_reg_3384 <= DATA_y_2_q1;
        c0_y_63_reg_3389 <= DATA_y_3_q1;
        c0_y_67_reg_3464 <= DATA_y_q0;
        c0_y_68_reg_3470 <= DATA_y_1_q0;
        c0_y_69_reg_3476 <= DATA_y_2_q0;
        c0_y_70_reg_3482 <= DATA_y_3_q0;
        c0_y_reg_3372 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_reg_3706 <= grp_fu_560_p_dout0;
        add1598_1_reg_3758 <= grp_fu_580_p_dout0;
        add1601_1_reg_3764 <= grp_fu_584_p_dout0;
        add_reg_3700 <= grp_fu_556_p_dout0;
        c0_x_35_reg_3688 <= grp_fu_548_p_dout0;
        c0_x_40_reg_3746 <= grp_fu_572_p_dout0;
        c0_x_64_reg_3676 <= grp_fu_540_p_dout0;
        c0_x_71_reg_3734 <= grp_fu_564_p_dout0;
        c0_y_35_reg_3694 <= grp_fu_552_p_dout0;
        c0_y_40_reg_3752 <= grp_fu_576_p_dout0;
        c0_y_64_reg_3682 <= grp_fu_544_p_dout0;
        c0_y_71_reg_3740 <= grp_fu_568_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add12_reg_3596 <= grp_fu_564_p_dout0;
        add13_reg_3602 <= grp_fu_568_p_dout0;
        add1614_1_reg_3654 <= grp_fu_604_p_dout0;
        add1617_1_reg_3660 <= grp_fu_608_p_dout0;
        c0_x_36_reg_3560 <= grp_fu_540_p_dout0;
        c0_x_41_reg_3618 <= grp_fu_580_p_dout0;
        c0_y_36_reg_3566 <= grp_fu_544_p_dout0;
        c0_y_41_reg_3624 <= grp_fu_584_p_dout0;
        sub12_reg_3590 <= grp_fu_560_p_dout0;
        sub13_reg_3613 <= grp_fu_576_p_dout0;
        sub1591_1_reg_3636 <= grp_fu_592_p_dout0;
        sub1607_1_reg_3648 <= grp_fu_600_p_dout0;
        sub1623_1_reg_3671 <= grp_fu_616_p_dout0;
        sub_reg_3578 <= grp_fu_552_p_dout0;
        tmp_1_11_reg_3584 <= grp_fu_556_p_dout0;
        tmp_1_12_reg_3608 <= grp_fu_572_p_dout0;
        tmp_1_13_reg_3642 <= grp_fu_596_p_dout0;
        tmp_1_14_reg_3666 <= grp_fu_612_p_dout0;
        tmp_1_15_reg_3630 <= grp_fu_588_p_dout0;
        tmp_1_reg_3572 <= grp_fu_548_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add14_reg_3797 <= grp_fu_624_p_dout0;
        add1636_1_reg_3817 <= grp_fu_640_p_dout0;
        add1662_1_reg_3837 <= grp_fu_648_p_dout0;
        add16_reg_3807 <= grp_fu_632_p_dout0;
        mul1641_1_reg_3822 <= grp_fu_772_p_dout0;
        mul1648_1_reg_3827 <= grp_fu_776_p_dout0;
        sub14_reg_3792 <= grp_fu_620_p_dout0;
        sub1630_1_reg_3812 <= grp_fu_636_p_dout0;
        sub1656_1_reg_3832 <= grp_fu_644_p_dout0;
        sub16_reg_3802 <= grp_fu_628_p_dout0;
        tmp_18_reg_3842 <= grp_fu_652_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add15_reg_4022 <= grp_fu_628_p_dout0;
        add1649_1_reg_4039 <= grp_fu_636_p_dout0;
        mul1702_1_reg_4045 <= grp_fu_784_p_dout0;
        mul1709_1_reg_4050 <= grp_fu_788_p_dout0;
        mul9_reg_4028 <= grp_fu_780_p_dout0;
        sub15_reg_4016 <= grp_fu_624_p_dout0;
        sub1644_1_reg_4033 <= grp_fu_632_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add1689_1_reg_3894 <= grp_fu_612_p_dout0;
        add1692_1_reg_3900 <= grp_fu_616_p_dout0;
        c0_x_43_reg_3870 <= grp_fu_596_p_dout0;
        c0_x_44_reg_3882 <= grp_fu_604_p_dout0;
        c0_y_43_reg_3876 <= grp_fu_600_p_dout0;
        c0_y_44_reg_3888 <= grp_fu_608_p_dout0;
        mul6_reg_3853 <= grp_fu_776_p_dout0;
        mul_reg_3848 <= grp_fu_772_p_dout0;
        sub1698_1_reg_3906 <= grp_fu_620_p_dout0;
        sub17_reg_3864 <= grp_fu_592_p_dout0;
        tmp_16_reg_3858 <= grp_fu_588_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add1717_1_reg_4060 <= grp_fu_564_p_dout0;
        add1720_1_reg_4065 <= grp_fu_568_p_dout0;
        mul10_reg_4055 <= grp_fu_772_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add1733_1_reg_4296 <= grp_fu_620_p_dout0;
        add1736_1_reg_4301 <= grp_fu_624_p_dout0;
        add1799_1_reg_4306 <= grp_fu_632_p_dout0;
        mul11_reg_4286 <= grp_fu_784_p_dout0;
        mul12_reg_4291 <= grp_fu_788_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1768_1_reg_4146 <= grp_fu_564_p_dout0;
        add1771_1_reg_4152 <= grp_fu_568_p_dout0;
        sub1777_1_reg_4164 <= grp_fu_576_p_dout0;
        tmp_19_reg_4158 <= grp_fu_572_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1768_1_reg_4146_pp0_iter9_reg <= add1768_1_reg_4146;
        add1771_1_reg_4152_pp0_iter9_reg <= add1771_1_reg_4152;
        bitcast_ln393_1_reg_4130 <= bitcast_ln393_1_fu_2538_p1;
        bitcast_ln393_1_reg_4130_pp0_iter10_reg <= bitcast_ln393_1_reg_4130_pp0_iter9_reg;
        bitcast_ln393_1_reg_4130_pp0_iter11_reg <= bitcast_ln393_1_reg_4130_pp0_iter10_reg;
        bitcast_ln393_1_reg_4130_pp0_iter12_reg <= bitcast_ln393_1_reg_4130_pp0_iter11_reg;
        bitcast_ln393_1_reg_4130_pp0_iter13_reg <= bitcast_ln393_1_reg_4130_pp0_iter12_reg;
        bitcast_ln393_1_reg_4130_pp0_iter14_reg <= bitcast_ln393_1_reg_4130_pp0_iter13_reg;
        bitcast_ln393_1_reg_4130_pp0_iter8_reg <= bitcast_ln393_1_reg_4130;
        bitcast_ln393_1_reg_4130_pp0_iter9_reg <= bitcast_ln393_1_reg_4130_pp0_iter8_reg;
        bitcast_ln394_1_reg_4361 <= bitcast_ln394_1_fu_2742_p1;
        bitcast_ln394_1_reg_4361_pp0_iter12_reg <= bitcast_ln394_1_reg_4361;
        bitcast_ln394_1_reg_4361_pp0_iter13_reg <= bitcast_ln394_1_reg_4361_pp0_iter12_reg;
        bitcast_ln394_1_reg_4361_pp0_iter14_reg <= bitcast_ln394_1_reg_4361_pp0_iter13_reg;
        bitcast_ln395_1_reg_4369 <= bitcast_ln395_1_fu_2746_p1;
        bitcast_ln395_1_reg_4369_pp0_iter12_reg <= bitcast_ln395_1_reg_4369;
        bitcast_ln395_1_reg_4369_pp0_iter13_reg <= bitcast_ln395_1_reg_4369_pp0_iter12_reg;
        bitcast_ln395_1_reg_4369_pp0_iter14_reg <= bitcast_ln395_1_reg_4369_pp0_iter13_reg;
        bitcast_ln395_1_reg_4369_pp0_iter15_reg <= bitcast_ln395_1_reg_4369_pp0_iter14_reg;
        bitcast_ln396_reg_4478 <= bitcast_ln396_fu_3088_p1;
        bitcast_ln402_1_reg_4138 <= bitcast_ln402_1_fu_2549_p1;
        bitcast_ln402_1_reg_4138_pp0_iter10_reg <= bitcast_ln402_1_reg_4138_pp0_iter9_reg;
        bitcast_ln402_1_reg_4138_pp0_iter11_reg <= bitcast_ln402_1_reg_4138_pp0_iter10_reg;
        bitcast_ln402_1_reg_4138_pp0_iter12_reg <= bitcast_ln402_1_reg_4138_pp0_iter11_reg;
        bitcast_ln402_1_reg_4138_pp0_iter13_reg <= bitcast_ln402_1_reg_4138_pp0_iter12_reg;
        bitcast_ln402_1_reg_4138_pp0_iter14_reg <= bitcast_ln402_1_reg_4138_pp0_iter13_reg;
        bitcast_ln402_1_reg_4138_pp0_iter8_reg <= bitcast_ln402_1_reg_4138;
        bitcast_ln402_1_reg_4138_pp0_iter9_reg <= bitcast_ln402_1_reg_4138_pp0_iter8_reg;
        bitcast_ln403_1_reg_4377 <= bitcast_ln403_1_fu_2757_p1;
        bitcast_ln403_1_reg_4377_pp0_iter12_reg <= bitcast_ln403_1_reg_4377;
        bitcast_ln403_1_reg_4377_pp0_iter13_reg <= bitcast_ln403_1_reg_4377_pp0_iter12_reg;
        bitcast_ln403_1_reg_4377_pp0_iter14_reg <= bitcast_ln403_1_reg_4377_pp0_iter13_reg;
        bitcast_ln404_1_reg_4385 <= bitcast_ln404_1_fu_2761_p1;
        bitcast_ln404_1_reg_4385_pp0_iter12_reg <= bitcast_ln404_1_reg_4385;
        bitcast_ln404_1_reg_4385_pp0_iter13_reg <= bitcast_ln404_1_reg_4385_pp0_iter12_reg;
        bitcast_ln404_1_reg_4385_pp0_iter14_reg <= bitcast_ln404_1_reg_4385_pp0_iter13_reg;
        bitcast_ln404_1_reg_4385_pp0_iter15_reg <= bitcast_ln404_1_reg_4385_pp0_iter14_reg;
        lshr_ln114_1_reg_4070 <= {{tid_5_reg_3194_pp0_iter6_reg[5:3]}};
        lshr_ln114_1_reg_4070_pp0_iter10_reg <= lshr_ln114_1_reg_4070_pp0_iter9_reg;
        lshr_ln114_1_reg_4070_pp0_iter11_reg <= lshr_ln114_1_reg_4070_pp0_iter10_reg;
        lshr_ln114_1_reg_4070_pp0_iter8_reg <= lshr_ln114_1_reg_4070;
        lshr_ln114_1_reg_4070_pp0_iter9_reg <= lshr_ln114_1_reg_4070_pp0_iter8_reg;
        sub1777_1_reg_4164_pp0_iter9_reg <= sub1777_1_reg_4164;
        sub1818_1_reg_4443_pp0_iter15_reg <= sub1818_1_reg_4443;
        sub1821_1_reg_4448_pp0_iter15_reg <= sub1821_1_reg_4448;
        sub20_reg_4110_pp0_iter10_reg <= sub20_reg_4110_pp0_iter9_reg;
        sub20_reg_4110_pp0_iter11_reg <= sub20_reg_4110_pp0_iter10_reg;
        sub20_reg_4110_pp0_iter8_reg <= sub20_reg_4110;
        sub20_reg_4110_pp0_iter9_reg <= sub20_reg_4110_pp0_iter8_reg;
        sub21_reg_4115_pp0_iter10_reg <= sub21_reg_4115_pp0_iter9_reg;
        sub21_reg_4115_pp0_iter11_reg <= sub21_reg_4115_pp0_iter10_reg;
        sub21_reg_4115_pp0_iter8_reg <= sub21_reg_4115;
        sub21_reg_4115_pp0_iter9_reg <= sub21_reg_4115_pp0_iter8_reg;
        tid_5_reg_3194 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_3194_pp0_iter10_reg <= tid_5_reg_3194_pp0_iter9_reg;
        tid_5_reg_3194_pp0_iter11_reg <= tid_5_reg_3194_pp0_iter10_reg;
        tid_5_reg_3194_pp0_iter12_reg <= tid_5_reg_3194_pp0_iter11_reg;
        tid_5_reg_3194_pp0_iter13_reg <= tid_5_reg_3194_pp0_iter12_reg;
        tid_5_reg_3194_pp0_iter14_reg <= tid_5_reg_3194_pp0_iter13_reg;
        tid_5_reg_3194_pp0_iter1_reg <= tid_5_reg_3194;
        tid_5_reg_3194_pp0_iter2_reg <= tid_5_reg_3194_pp0_iter1_reg;
        tid_5_reg_3194_pp0_iter3_reg <= tid_5_reg_3194_pp0_iter2_reg;
        tid_5_reg_3194_pp0_iter4_reg <= tid_5_reg_3194_pp0_iter3_reg;
        tid_5_reg_3194_pp0_iter5_reg <= tid_5_reg_3194_pp0_iter4_reg;
        tid_5_reg_3194_pp0_iter6_reg <= tid_5_reg_3194_pp0_iter5_reg;
        tid_5_reg_3194_pp0_iter7_reg <= tid_5_reg_3194_pp0_iter6_reg;
        tid_5_reg_3194_pp0_iter8_reg <= tid_5_reg_3194_pp0_iter7_reg;
        tid_5_reg_3194_pp0_iter9_reg <= tid_5_reg_3194_pp0_iter8_reg;
        tmp_19_reg_4158_pp0_iter9_reg <= tmp_19_reg_4158;
        tmp_reg_3204 <= ap_sig_allocacmp_tid_5[32'd6];
        tmp_reg_3204_pp0_iter10_reg <= tmp_reg_3204_pp0_iter9_reg;
        tmp_reg_3204_pp0_iter11_reg <= tmp_reg_3204_pp0_iter10_reg;
        tmp_reg_3204_pp0_iter12_reg <= tmp_reg_3204_pp0_iter11_reg;
        tmp_reg_3204_pp0_iter13_reg <= tmp_reg_3204_pp0_iter12_reg;
        tmp_reg_3204_pp0_iter14_reg <= tmp_reg_3204_pp0_iter13_reg;
        tmp_reg_3204_pp0_iter1_reg <= tmp_reg_3204;
        tmp_reg_3204_pp0_iter2_reg <= tmp_reg_3204_pp0_iter1_reg;
        tmp_reg_3204_pp0_iter3_reg <= tmp_reg_3204_pp0_iter2_reg;
        tmp_reg_3204_pp0_iter4_reg <= tmp_reg_3204_pp0_iter3_reg;
        tmp_reg_3204_pp0_iter5_reg <= tmp_reg_3204_pp0_iter4_reg;
        tmp_reg_3204_pp0_iter6_reg <= tmp_reg_3204_pp0_iter5_reg;
        tmp_reg_3204_pp0_iter7_reg <= tmp_reg_3204_pp0_iter6_reg;
        tmp_reg_3204_pp0_iter8_reg <= tmp_reg_3204_pp0_iter7_reg;
        tmp_reg_3204_pp0_iter9_reg <= tmp_reg_3204_pp0_iter8_reg;
        trunc_ln365_reg_3208 <= trunc_ln365_fu_1910_p1;
        trunc_ln365_reg_3208_pp0_iter10_reg <= trunc_ln365_reg_3208_pp0_iter9_reg;
        trunc_ln365_reg_3208_pp0_iter11_reg <= trunc_ln365_reg_3208_pp0_iter10_reg;
        trunc_ln365_reg_3208_pp0_iter12_reg <= trunc_ln365_reg_3208_pp0_iter11_reg;
        trunc_ln365_reg_3208_pp0_iter13_reg <= trunc_ln365_reg_3208_pp0_iter12_reg;
        trunc_ln365_reg_3208_pp0_iter14_reg <= trunc_ln365_reg_3208_pp0_iter13_reg;
        trunc_ln365_reg_3208_pp0_iter15_reg <= trunc_ln365_reg_3208_pp0_iter14_reg;
        trunc_ln365_reg_3208_pp0_iter1_reg <= trunc_ln365_reg_3208;
        trunc_ln365_reg_3208_pp0_iter2_reg <= trunc_ln365_reg_3208_pp0_iter1_reg;
        trunc_ln365_reg_3208_pp0_iter3_reg <= trunc_ln365_reg_3208_pp0_iter2_reg;
        trunc_ln365_reg_3208_pp0_iter4_reg <= trunc_ln365_reg_3208_pp0_iter3_reg;
        trunc_ln365_reg_3208_pp0_iter5_reg <= trunc_ln365_reg_3208_pp0_iter4_reg;
        trunc_ln365_reg_3208_pp0_iter6_reg <= trunc_ln365_reg_3208_pp0_iter5_reg;
        trunc_ln365_reg_3208_pp0_iter7_reg <= trunc_ln365_reg_3208_pp0_iter6_reg;
        trunc_ln365_reg_3208_pp0_iter8_reg <= trunc_ln365_reg_3208_pp0_iter7_reg;
        trunc_ln365_reg_3208_pp0_iter9_reg <= trunc_ln365_reg_3208_pp0_iter8_reg;
        zext_ln114_reg_4078[2 : 0] <= zext_ln114_fu_2383_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add17_reg_3946 <= grp_fu_556_p_dout0;
        add18_reg_3952 <= grp_fu_560_p_dout0;
        c0_x_38_reg_3934 <= grp_fu_548_p_dout0;
        c0_x_65_reg_3922 <= grp_fu_540_p_dout0;
        c0_y_38_reg_3940 <= grp_fu_552_p_dout0;
        c0_y_65_reg_3928 <= grp_fu_544_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add1812_1_reg_4438 <= grp_fu_652_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add19_reg_4100 <= grp_fu_540_p_dout0;
        add20_reg_4105 <= grp_fu_544_p_dout0;
        sub20_reg_4110 <= grp_fu_548_p_dout0;
        sub21_reg_4115 <= grp_fu_552_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add21_reg_4311 <= grp_fu_580_p_dout0;
        add22_reg_4316 <= grp_fu_584_p_dout0;
        add25_reg_4341 <= grp_fu_596_p_dout0;
        add26_reg_4346 <= grp_fu_600_p_dout0;
        sub22_reg_4321 <= grp_fu_588_p_dout0;
        sub23_reg_4326 <= grp_fu_592_p_dout0;
        sub27_reg_4351 <= grp_fu_604_p_dout0;
        sub28_reg_4356 <= grp_fu_608_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add23_reg_4230 <= grp_fu_596_p_dout0;
        add24_reg_4236 <= grp_fu_600_p_dout0;
        c0_x_39_reg_4218 <= grp_fu_588_p_dout0;
        c0_x_46_reg_4254 <= grp_fu_612_p_dout0;
        c0_x_66_reg_4206 <= grp_fu_580_p_dout0;
        c0_y_39_reg_4224 <= grp_fu_592_p_dout0;
        c0_y_46_reg_4260 <= grp_fu_616_p_dout0;
        c0_y_66_reg_4212 <= grp_fu_584_p_dout0;
        sub1705_1_reg_4242 <= grp_fu_604_p_dout0;
        sub1710_1_reg_4248 <= grp_fu_608_p_dout0;
        sub18_reg_4194 <= grp_fu_572_p_dout0;
        sub19_reg_4200 <= grp_fu_576_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add27_reg_4463 <= grp_fu_640_p_dout0;
        add28_reg_4468 <= grp_fu_644_p_dout0;
        sub30_reg_4473 <= grp_fu_652_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_35_reg_3688_pp0_iter3_reg <= c0_x_35_reg_3688;
        c0_x_35_reg_3688_pp0_iter4_reg <= c0_x_35_reg_3688_pp0_iter3_reg;
        c0_x_35_reg_3688_pp0_iter5_reg <= c0_x_35_reg_3688_pp0_iter4_reg;
        c0_x_35_reg_3688_pp0_iter6_reg <= c0_x_35_reg_3688_pp0_iter5_reg;
        c0_x_40_reg_3746_pp0_iter3_reg <= c0_x_40_reg_3746;
        c0_x_40_reg_3746_pp0_iter4_reg <= c0_x_40_reg_3746_pp0_iter3_reg;
        c0_x_40_reg_3746_pp0_iter5_reg <= c0_x_40_reg_3746_pp0_iter4_reg;
        c0_x_40_reg_3746_pp0_iter6_reg <= c0_x_40_reg_3746_pp0_iter5_reg;
        c0_x_44_reg_3882_pp0_iter5_reg <= c0_x_44_reg_3882;
        c0_x_44_reg_3882_pp0_iter6_reg <= c0_x_44_reg_3882_pp0_iter5_reg;
        c0_x_44_reg_3882_pp0_iter7_reg <= c0_x_44_reg_3882_pp0_iter6_reg;
        c0_x_44_reg_3882_pp0_iter8_reg <= c0_x_44_reg_3882_pp0_iter7_reg;
        c0_y_35_reg_3694_pp0_iter3_reg <= c0_y_35_reg_3694;
        c0_y_35_reg_3694_pp0_iter4_reg <= c0_y_35_reg_3694_pp0_iter3_reg;
        c0_y_35_reg_3694_pp0_iter5_reg <= c0_y_35_reg_3694_pp0_iter4_reg;
        c0_y_35_reg_3694_pp0_iter6_reg <= c0_y_35_reg_3694_pp0_iter5_reg;
        c0_y_40_reg_3752_pp0_iter3_reg <= c0_y_40_reg_3752;
        c0_y_40_reg_3752_pp0_iter4_reg <= c0_y_40_reg_3752_pp0_iter3_reg;
        c0_y_40_reg_3752_pp0_iter5_reg <= c0_y_40_reg_3752_pp0_iter4_reg;
        c0_y_40_reg_3752_pp0_iter6_reg <= c0_y_40_reg_3752_pp0_iter5_reg;
        c0_y_44_reg_3888_pp0_iter5_reg <= c0_y_44_reg_3888;
        c0_y_44_reg_3888_pp0_iter6_reg <= c0_y_44_reg_3888_pp0_iter5_reg;
        c0_y_44_reg_3888_pp0_iter7_reg <= c0_y_44_reg_3888_pp0_iter6_reg;
        c0_y_44_reg_3888_pp0_iter8_reg <= c0_y_44_reg_3888_pp0_iter7_reg;
        sub1698_1_reg_3906_pp0_iter5_reg <= sub1698_1_reg_3906;
        sub1698_1_reg_3906_pp0_iter6_reg <= sub1698_1_reg_3906_pp0_iter5_reg;
        sub17_reg_3864_pp0_iter5_reg <= sub17_reg_3864;
        sub17_reg_3864_pp0_iter6_reg <= sub17_reg_3864_pp0_iter5_reg;
        sub24_reg_4176_pp0_iter10_reg <= sub24_reg_4176_pp0_iter9_reg;
        sub24_reg_4176_pp0_iter9_reg <= sub24_reg_4176;
        tmp_16_reg_3858_pp0_iter5_reg <= tmp_16_reg_3858;
        tmp_16_reg_3858_pp0_iter6_reg <= tmp_16_reg_3858_pp0_iter5_reg;
        tmp_17_reg_4170_pp0_iter10_reg <= tmp_17_reg_4170_pp0_iter9_reg;
        tmp_17_reg_4170_pp0_iter9_reg <= tmp_17_reg_4170;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_37_reg_3968 <= grp_fu_772_p_dout0;
        c0_x_42_reg_3974 <= grp_fu_776_p_dout0;
        c0_y_42_reg_3980 <= grp_fu_780_p_dout0;
        mul1657_1_reg_3986 <= grp_fu_784_p_dout0;
        mul1663_1_reg_3992 <= grp_fu_788_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        c0_x_38_reg_3934_pp0_iter5_reg <= c0_x_38_reg_3934;
        c0_x_38_reg_3934_pp0_iter6_reg <= c0_x_38_reg_3934_pp0_iter5_reg;
        c0_x_38_reg_3934_pp0_iter7_reg <= c0_x_38_reg_3934_pp0_iter6_reg;
        c0_x_38_reg_3934_pp0_iter8_reg <= c0_x_38_reg_3934_pp0_iter7_reg;
        c0_x_39_reg_4218_pp0_iter10_reg <= c0_x_39_reg_4218_pp0_iter9_reg;
        c0_x_39_reg_4218_pp0_iter11_reg <= c0_x_39_reg_4218_pp0_iter10_reg;
        c0_x_39_reg_4218_pp0_iter12_reg <= c0_x_39_reg_4218_pp0_iter11_reg;
        c0_x_39_reg_4218_pp0_iter9_reg <= c0_x_39_reg_4218;
        c0_x_46_reg_4254_pp0_iter10_reg <= c0_x_46_reg_4254_pp0_iter9_reg;
        c0_x_46_reg_4254_pp0_iter11_reg <= c0_x_46_reg_4254_pp0_iter10_reg;
        c0_x_46_reg_4254_pp0_iter9_reg <= c0_x_46_reg_4254;
        c0_y_38_reg_3940_pp0_iter5_reg <= c0_y_38_reg_3940;
        c0_y_38_reg_3940_pp0_iter6_reg <= c0_y_38_reg_3940_pp0_iter5_reg;
        c0_y_38_reg_3940_pp0_iter7_reg <= c0_y_38_reg_3940_pp0_iter6_reg;
        c0_y_38_reg_3940_pp0_iter8_reg <= c0_y_38_reg_3940_pp0_iter7_reg;
        c0_y_39_reg_4224_pp0_iter10_reg <= c0_y_39_reg_4224_pp0_iter9_reg;
        c0_y_39_reg_4224_pp0_iter11_reg <= c0_y_39_reg_4224_pp0_iter10_reg;
        c0_y_39_reg_4224_pp0_iter12_reg <= c0_y_39_reg_4224_pp0_iter11_reg;
        c0_y_39_reg_4224_pp0_iter9_reg <= c0_y_39_reg_4224;
        c0_y_46_reg_4260_pp0_iter10_reg <= c0_y_46_reg_4260_pp0_iter9_reg;
        c0_y_46_reg_4260_pp0_iter11_reg <= c0_y_46_reg_4260_pp0_iter10_reg;
        c0_y_46_reg_4260_pp0_iter9_reg <= c0_y_46_reg_4260;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_45_reg_4182 <= grp_fu_648_p_dout0;
        c0_y_45_reg_4188 <= grp_fu_652_p_dout0;
        sub24_reg_4176 <= grp_fu_644_p_dout0;
        tmp_17_reg_4170 <= grp_fu_640_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        c0_y_37_reg_3998 <= grp_fu_780_p_dout0;
        mul7_reg_4004 <= grp_fu_784_p_dout0;
        mul8_reg_4010 <= grp_fu_788_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln6_reg_4453 <= {{add_ln394_fu_3008_p2[8:3]}};
        sub12_reg_3590_pp0_iter3_reg <= sub12_reg_3590;
        sub12_reg_3590_pp0_iter4_reg <= sub12_reg_3590_pp0_iter3_reg;
        sub1607_1_reg_3648_pp0_iter3_reg <= sub1607_1_reg_3648;
        sub1607_1_reg_3648_pp0_iter4_reg <= sub1607_1_reg_3648_pp0_iter3_reg;
        tmp_18_reg_3842_pp0_iter5_reg <= tmp_18_reg_3842;
        tmp_18_reg_3842_pp0_iter6_reg <= tmp_18_reg_3842_pp0_iter5_reg;
        tmp_1_11_reg_3584_pp0_iter3_reg <= tmp_1_11_reg_3584;
        tmp_1_11_reg_3584_pp0_iter4_reg <= tmp_1_11_reg_3584_pp0_iter3_reg;
        tmp_1_13_reg_3642_pp0_iter3_reg <= tmp_1_13_reg_3642;
        tmp_1_13_reg_3642_pp0_iter4_reg <= tmp_1_13_reg_3642_pp0_iter3_reg;
        tmp_92_reg_4404 <= {{tid_5_reg_3194_pp0_iter11_reg[6:3]}};
        tmp_92_reg_4404_pp0_iter12_reg <= tmp_92_reg_4404;
        tmp_92_reg_4404_pp0_iter13_reg <= tmp_92_reg_4404_pp0_iter12_reg;
        tmp_92_reg_4404_pp0_iter14_reg <= tmp_92_reg_4404_pp0_iter13_reg;
        trunc_ln8_reg_4458 <= {{add_ln396_fu_3024_p2[6:3]}};
        trunc_ln8_reg_4458_pp0_iter15_reg <= trunc_ln8_reg_4458;
        zext_ln391_cast_reg_4393[2 : 0] <= zext_ln391_cast_fu_2765_p3[2 : 0];
        zext_ln391_cast_reg_4393_pp0_iter12_reg[2 : 0] <= zext_ln391_cast_reg_4393[2 : 0];
        zext_ln391_cast_reg_4393_pp0_iter13_reg[2 : 0] <= zext_ln391_cast_reg_4393_pp0_iter12_reg[2 : 0];
        zext_ln391_cast_reg_4393_pp0_iter14_reg[2 : 0] <= zext_ln391_cast_reg_4393_pp0_iter13_reg[2 : 0];
        zext_ln391_cast_reg_4393_pp0_iter15_reg[2 : 0] <= zext_ln391_cast_reg_4393_pp0_iter14_reg[2 : 0];
        zext_ln392_1_reg_4409[3 : 0] <= zext_ln392_1_fu_2816_p3[3 : 0];
        zext_ln392_1_reg_4409_pp0_iter12_reg[3 : 0] <= zext_ln392_1_reg_4409[3 : 0];
        zext_ln392_1_reg_4409_pp0_iter13_reg[3 : 0] <= zext_ln392_1_reg_4409_pp0_iter12_reg[3 : 0];
        zext_ln392_1_reg_4409_pp0_iter14_reg[3 : 0] <= zext_ln392_1_reg_4409_pp0_iter13_reg[3 : 0];
        zext_ln392_1_reg_4409_pp0_iter15_reg[3 : 0] <= zext_ln392_1_reg_4409_pp0_iter14_reg[3 : 0];
        zext_ln392_cast_reg_4399[2 : 0] <= zext_ln392_cast_fu_2787_p3[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul1781_1_reg_4266 <= grp_fu_776_p_dout0;
        mul1788_1_reg_4271 <= grp_fu_780_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_1870 <= grp_fu_628_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub1784_1_reg_4414 <= grp_fu_636_p_dout0;
        sub1789_1_reg_4420 <= grp_fu_640_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub1818_1_reg_4443 <= grp_fu_632_p_dout0;
        sub1821_1_reg_4448 <= grp_fu_636_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub25_reg_4426 <= grp_fu_644_p_dout0;
        sub26_reg_4432 <= grp_fu_648_p_dout0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_ce1_local = 1'b1;
    end else begin
        DATA_x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_ce1_local = 1'b1;
    end else begin
        DATA_x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_ce1_local = 1'b1;
    end else begin
        DATA_x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_ce1_local = 1'b1;
    end else begin
        DATA_x_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_ce1_local = 1'b1;
    end else begin
        DATA_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_ce1_local = 1'b1;
    end else begin
        DATA_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_4_ce1_local = 1'b1;
    end else begin
        DATA_y_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_5_ce1_local = 1'b1;
    end else begin
        DATA_y_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_6_ce1_local = 1'b1;
    end else begin
        DATA_y_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_7_ce1_local = 1'b1;
    end else begin
        DATA_y_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_3204 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter15 == 1'b1) & (tmp_reg_3204_pp0_iter14_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter15_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter15_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to14 = 1'b1;
    end else begin
        ap_idle_pp0_0to14 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to16 = 1'b1;
    end else begin
        ap_idle_pp0_1to16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_tid_5 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_5 = tid_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1724_p0 = c0_x_65_reg_3922;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1724_p0 = c0_x_64_reg_3676;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1724_p0 = c0_x_reg_3418;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1724_p0 = c0_x_61_reg_3424;
    end else begin
        grp_fu_1724_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1724_p1 = add17_reg_3946;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1724_p1 = add_reg_3700;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1724_p1 = DATA_x_4_load_reg_3441;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1724_p1 = DATA_x_5_load_reg_3447;
    end else begin
        grp_fu_1724_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1728_p0 = c0_y_65_reg_3928;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1728_p0 = c0_y_64_reg_3682;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1728_p0 = c0_y_reg_3372;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1728_p0 = c0_y_61_reg_3378;
    end else begin
        grp_fu_1728_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1728_p1 = add18_reg_3952;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1728_p1 = add11_reg_3706;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1728_p1 = DATA_y_4_load_reg_3395;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1728_p1 = DATA_y_5_load_reg_3401;
    end else begin
        grp_fu_1728_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1732_p0 = c0_x_65_reg_3922;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1732_p0 = c0_x_64_reg_3676;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1732_p0 = c0_x_reg_3418;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1732_p0 = c0_x_61_reg_3424;
    end else begin
        grp_fu_1732_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1732_p1 = add17_reg_3946;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1732_p1 = add_reg_3700;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1732_p1 = DATA_x_4_load_reg_3441;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1732_p1 = DATA_x_5_load_reg_3447;
    end else begin
        grp_fu_1732_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1736_p0 = c0_y_65_reg_3928;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1736_p0 = c0_y_64_reg_3682;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1736_p0 = c0_y_reg_3372;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1736_p0 = c0_y_61_reg_3378;
    end else begin
        grp_fu_1736_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1736_p1 = add18_reg_3952;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1736_p1 = add11_reg_3706;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1736_p1 = DATA_y_4_load_reg_3395;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1736_p1 = DATA_y_5_load_reg_3401;
    end else begin
        grp_fu_1736_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3204 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1740_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_3204 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1740_opcode = 2'd0;
    end else begin
        grp_fu_1740_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1740_p0 = c0_x_43_reg_3870;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1740_p0 = c0_x_36_reg_3560;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1740_p0 = c0_x_62_reg_3430;
    end else begin
        grp_fu_1740_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1740_p1 = add1689_1_reg_3894;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1740_p1 = add12_reg_3596;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1740_p1 = DATA_x_6_load_reg_3453;
    end else begin
        grp_fu_1740_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_3204 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1744_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_3204 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1744_opcode = 2'd0;
    end else begin
        grp_fu_1744_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1744_p0 = c0_y_43_reg_3876;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1744_p0 = c0_y_36_reg_3566;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1744_p0 = c0_y_62_reg_3384;
    end else begin
        grp_fu_1744_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1744_p1 = add1692_1_reg_3900;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1744_p1 = add13_reg_3602;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1744_p1 = DATA_y_6_load_reg_3407;
    end else begin
        grp_fu_1744_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1748_p0 = c0_x_42_reg_3974;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1748_p0 = c0_x_43_reg_3870;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1748_p0 = c0_x_67_reg_3512;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1748_p0 = c0_x_63_reg_3435;
    end else begin
        grp_fu_1748_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1748_p1 = mul1657_1_reg_3986;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1748_p1 = add1689_1_reg_3894;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1748_p1 = DATA_x_4_load_7_reg_3536;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1748_p1 = DATA_x_7_load_reg_3458;
    end else begin
        grp_fu_1748_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1752_p0 = c0_y_42_reg_3980;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1752_p0 = c0_y_43_reg_3876;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1752_p0 = c0_y_67_reg_3464;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1752_p0 = c0_y_63_reg_3389;
    end else begin
        grp_fu_1752_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1752_p1 = mul1663_1_reg_3992;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1752_p1 = add1692_1_reg_3900;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1752_p1 = DATA_y_4_load_5_reg_3488;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1752_p1 = DATA_y_7_load_reg_3412;
    end else begin
        grp_fu_1752_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1756_p0 = mul9_reg_4028;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1756_p0 = c0_x_42_reg_3974;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1756_p0 = c0_x_67_reg_3512;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1756_p0 = c0_x_63_reg_3435;
    end else begin
        grp_fu_1756_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1756_p1 = bitcast_ln386_13_fu_2424_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1756_p1 = mul1657_1_reg_3986;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1756_p1 = DATA_x_4_load_7_reg_3536;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1756_p1 = DATA_x_7_load_reg_3458;
    end else begin
        grp_fu_1756_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1760_p0 = bitcast_ln386_15_fu_2458_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1760_p0 = c0_y_42_reg_3980;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1760_p0 = c0_y_67_reg_3464;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1760_p0 = c0_y_63_reg_3389;
    end else begin
        grp_fu_1760_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1760_p1 = mul10_reg_4055;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1760_p1 = mul1663_1_reg_3992;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1760_p1 = DATA_y_4_load_5_reg_3488;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1760_p1 = DATA_y_7_load_reg_3412;
    end else begin
        grp_fu_1760_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1764_p0 = c0_x_38_reg_3934_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1764_p0 = c0_x_35_reg_3688_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1764_p0 = c0_x_69_reg_3524;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1764_p0 = c0_x_68_reg_3518;
    end else begin
        grp_fu_1764_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1764_p1 = sub18_reg_4194;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1764_p1 = sub15_reg_4016;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1764_p1 = DATA_x_6_load_7_reg_3548;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1764_p1 = DATA_x_5_load_7_reg_3542;
    end else begin
        grp_fu_1764_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1768_p0 = c0_y_38_reg_3940_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1768_p0 = c0_y_35_reg_3694_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1768_p0 = c0_y_69_reg_3476;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1768_p0 = c0_y_68_reg_3470;
    end else begin
        grp_fu_1768_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1768_p1 = sub19_reg_4200;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1768_p1 = add15_reg_4022;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1768_p1 = DATA_y_6_load_5_reg_3500;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1768_p1 = DATA_y_5_load_5_reg_3494;
    end else begin
        grp_fu_1768_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1772_p0 = c0_x_38_reg_3934_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1772_p0 = c0_x_35_reg_3688_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1772_p0 = c0_x_36_reg_3560;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1772_p0 = c0_x_68_reg_3518;
    end else begin
        grp_fu_1772_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1772_p1 = sub18_reg_4194;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1772_p1 = sub15_reg_4016;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1772_p1 = add12_reg_3596;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1772_p1 = DATA_x_5_load_7_reg_3542;
    end else begin
        grp_fu_1772_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1776_p0 = c0_y_38_reg_3940_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1776_p0 = c0_y_35_reg_3694_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1776_p0 = c0_y_36_reg_3566;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1776_p0 = c0_y_68_reg_3470;
    end else begin
        grp_fu_1776_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1776_p1 = sub19_reg_4200;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1776_p1 = add15_reg_4022;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1776_p1 = add13_reg_3602;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1776_p1 = DATA_y_5_load_5_reg_3494;
    end else begin
        grp_fu_1776_p1 = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_3204 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1780_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1780_opcode = 2'd0;
    end else begin
        grp_fu_1780_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1780_p0 = c0_x_66_reg_4206;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1780_p0 = c0_x_37_reg_3968;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1780_p0 = c0_x_71_reg_3734;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1780_p0 = c0_x_69_reg_3524;
    end else begin
        grp_fu_1780_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1780_p1 = add23_reg_4230;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1780_p1 = mul7_reg_4004;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1780_p1 = add1598_1_reg_3758;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1780_p1 = DATA_x_6_load_7_reg_3548;
    end else begin
        grp_fu_1780_p1 = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_3204 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1784_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1784_opcode = 2'd0;
    end else begin
        grp_fu_1784_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1784_p0 = c0_y_66_reg_4212;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1784_p0 = c0_y_37_reg_3998;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1784_p0 = c0_y_71_reg_3740;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1784_p0 = c0_y_69_reg_3476;
    end else begin
        grp_fu_1784_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1784_p1 = add24_reg_4236;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1784_p1 = mul8_reg_4010;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1784_p1 = add1601_1_reg_3764;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1784_p1 = DATA_y_6_load_5_reg_3500;
    end else begin
        grp_fu_1784_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1788_opcode = 2'd1;
    end else if (((tmp_reg_3204 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1788_opcode = 2'd0;
    end else begin
        grp_fu_1788_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1788_p0 = c0_x_66_reg_4206;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1788_p0 = mul1702_1_reg_4045;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1788_p0 = c0_x_71_reg_3734;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1788_p0 = c0_x_70_reg_3530;
    end else begin
        grp_fu_1788_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1788_p1 = add23_reg_4230;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1788_p1 = bitcast_ln386_33_fu_2492_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1788_p1 = add1598_1_reg_3758;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1788_p1 = DATA_x_7_load_7_reg_3554;
    end else begin
        grp_fu_1788_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1792_opcode = 2'd1;
    end else if (((tmp_reg_3204 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1792_opcode = 2'd0;
    end else begin
        grp_fu_1792_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1792_p0 = c0_y_66_reg_4212;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1792_p0 = bitcast_ln386_35_fu_2526_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1792_p0 = c0_y_71_reg_3740;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1792_p0 = c0_y_70_reg_3482;
    end else begin
        grp_fu_1792_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1792_p1 = add24_reg_4236;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1792_p1 = mul1709_1_reg_4050;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1792_p1 = add1601_1_reg_3764;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1792_p1 = DATA_y_7_load_5_reg_3506;
    end else begin
        grp_fu_1792_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_3204 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1796_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1796_opcode = 2'd0;
    end else begin
        grp_fu_1796_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1796_p0 = c0_x_44_reg_3882_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1796_p0 = c0_x_40_reg_3746_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1796_p0 = c0_x_41_reg_3618;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1796_p0 = c0_x_70_reg_3530;
    end else begin
        grp_fu_1796_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1796_p1 = sub1705_1_reg_4242;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1796_p1 = sub1644_1_reg_4033;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1796_p1 = add1614_1_reg_3654;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1796_p1 = DATA_x_7_load_7_reg_3554;
    end else begin
        grp_fu_1796_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_3204 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1800_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1800_opcode = 2'd0;
    end else begin
        grp_fu_1800_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1800_p0 = c0_y_44_reg_3888_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1800_p0 = c0_y_40_reg_3752_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1800_p0 = c0_y_41_reg_3624;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1800_p0 = c0_y_70_reg_3482;
    end else begin
        grp_fu_1800_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1800_p1 = sub1710_1_reg_4248;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1800_p1 = add1649_1_reg_4039;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1800_p1 = add1617_1_reg_3660;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1800_p1 = DATA_y_7_load_5_reg_3506;
    end else begin
        grp_fu_1800_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1804_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1804_opcode = 2'd0;
    end else begin
        grp_fu_1804_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1804_p0 = c0_x_45_reg_4182;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1804_p0 = c0_x_44_reg_3882_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1804_p0 = c0_y_41_reg_3624;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1804_p0 = tmp_1_reg_3572;
    end else begin
        grp_fu_1804_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1804_p1 = add1768_1_reg_4146_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1804_p1 = sub1705_1_reg_4242;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1804_p1 = add1617_1_reg_3660;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1804_p1 = bitcast_ln386_1_fu_1991_p1;
    end else begin
        grp_fu_1804_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1808_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1808_opcode = 2'd0;
    end else begin
        grp_fu_1808_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1808_p0 = c0_y_45_reg_4188;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1808_p0 = c0_y_44_reg_3888_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1808_p0 = mul_reg_3848;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1808_p0 = bitcast_ln386_3_fu_2025_p1;
    end else begin
        grp_fu_1808_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1808_p1 = add1771_1_reg_4152_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1808_p1 = sub1710_1_reg_4248;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1808_p1 = bitcast_ln386_5_fu_2267_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1808_p1 = sub_reg_3578;
    end else begin
        grp_fu_1808_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1812_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1812_opcode = 2'd0;
    end else begin
        grp_fu_1812_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1812_p0 = c0_y_46_reg_4260_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1812_p0 = c0_x_45_reg_4182;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1812_p0 = bitcast_ln386_7_fu_2301_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1812_p0 = bitcast_ln386_9_fu_2059_p1;
    end else begin
        grp_fu_1812_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1812_p1 = sub1789_1_reg_4420;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1812_p1 = add1768_1_reg_4146;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1812_p1 = mul6_reg_3853;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1812_p1 = bitcast_ln386_11_fu_2094_p1;
    end else begin
        grp_fu_1812_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1816_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1816_opcode = 2'd0;
    end else begin
        grp_fu_1816_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1816_p0 = c0_x_46_reg_4254_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1816_p0 = c0_y_45_reg_4188;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1816_p0 = mul1641_1_reg_3822;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1816_p0 = bitcast_ln386_9_fu_2059_p1;
    end else begin
        grp_fu_1816_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1816_p1 = sub1784_1_reg_4414;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1816_p1 = add1771_1_reg_4152;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1816_p1 = bitcast_ln386_25_fu_2335_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1816_p1 = bitcast_ln386_11_fu_2094_p1;
    end else begin
        grp_fu_1816_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1820_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1820_opcode = 2'd0;
    end else begin
        grp_fu_1820_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1820_p0 = c0_y_46_reg_4260_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1820_p0 = mul1781_1_reg_4266;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1820_p0 = bitcast_ln386_27_fu_2369_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1820_p0 = tmp_1_15_reg_3630;
    end else begin
        grp_fu_1820_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1820_p1 = sub1789_1_reg_4420;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1820_p1 = bitcast_ln386_37_fu_2596_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1820_p1 = mul1648_1_reg_3827;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1820_p1 = bitcast_ln386_21_fu_2129_p1;
    end else begin
        grp_fu_1820_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1824_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1824_opcode = 2'd0;
    end else begin
        grp_fu_1824_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1824_p0 = c0_x_39_reg_4218_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1824_p0 = bitcast_ln386_39_fu_2630_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1824_p0 = c0_x_37_reg_3968;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1824_p0 = bitcast_ln386_23_fu_2163_p1;
    end else begin
        grp_fu_1824_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1824_p1 = sub25_reg_4426;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1824_p1 = mul1788_1_reg_4271;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1824_p1 = mul7_reg_4004;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1824_p1 = sub1591_1_reg_3636;
    end else begin
        grp_fu_1824_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1828_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1828_opcode = 2'd0;
    end else begin
        grp_fu_1828_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1828_p0 = c0_y_39_reg_4224_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1828_p0 = mul11_reg_4286;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1828_p0 = c0_y_37_reg_3998;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1828_p0 = bitcast_ln386_29_fu_2197_p1;
    end else begin
        grp_fu_1828_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1828_p1 = sub26_reg_4432;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1828_p1 = bitcast_ln386_17_fu_2667_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1828_p1 = mul8_reg_4010;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1828_p1 = bitcast_ln386_31_fu_2232_p1;
    end else begin
        grp_fu_1828_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1832_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1832_opcode = 2'd0;
    end else begin
        grp_fu_1832_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1832_p0 = c0_x_39_reg_4218_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1832_p0 = bitcast_ln386_19_fu_2701_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1832_p0 = c0_x_40_reg_3746_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1832_p0 = bitcast_ln386_29_fu_2197_p1;
    end else begin
        grp_fu_1832_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1832_p1 = sub25_reg_4426;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1832_p1 = mul12_reg_4291;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1832_p1 = sub1644_1_reg_4033;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1832_p1 = bitcast_ln386_31_fu_2232_p1;
    end else begin
        grp_fu_1832_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1836_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1836_opcode = 2'd0;
    end else begin
        grp_fu_1836_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1836_p0 = c0_y_39_reg_4224_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1836_p0 = c0_x_46_reg_4254_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1836_p0 = c0_y_40_reg_3752_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1836_p0 = c0_x_41_reg_3618;
    end else begin
        grp_fu_1836_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1836_p1 = sub26_reg_4432;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1836_p1 = sub1784_1_reg_4414;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1836_p1 = add1649_1_reg_4039;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1836_p1 = add1614_1_reg_3654;
    end else begin
        grp_fu_1836_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1840_p0 = sub17_reg_3864;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1840_p0 = sub14_reg_3792;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1840_p0 = tmp_1_11_reg_3584;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1840_p0 = tmp_1_13_reg_3642;
    end else begin
        grp_fu_1840_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1840_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1840_p1 = 64'd0;
    end else begin
        grp_fu_1840_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1845_p0 = tmp_19_reg_4158;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1845_p0 = sub1630_1_reg_3812;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1845_p0 = sub12_reg_3590;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1845_p0 = sub1607_1_reg_3648;
    end else begin
        grp_fu_1845_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1845_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1845_p1 = 64'd0;
    end else begin
        grp_fu_1845_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1852_p0 = sub1777_1_reg_4164;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1852_p0 = tmp_16_reg_3858;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1852_p0 = add14_reg_3797;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1852_p0 = add1636_1_reg_3817;
    end else begin
        grp_fu_1852_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1852_p1 = 64'd0;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1852_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_1852_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1857_p0 = tmp_17_reg_4170;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1857_p0 = tmp_18_reg_3842;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1857_p0 = sub16_reg_3802;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1857_p0 = sub1656_1_reg_3832;
    end else begin
        grp_fu_1857_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1857_p1 = 64'd0;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1857_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_1857_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1862_p0 = sub24_reg_4176;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1862_p0 = sub1698_1_reg_3906;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1862_p0 = add16_reg_3807;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1862_p0 = add1662_1_reg_3837;
    end else begin
        grp_fu_1862_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1862_p1 = 64'd0;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1862_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_1862_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_address0_local = zext_ln365_3_fu_3168_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_address0_local = zext_ln393_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_address0_local = zext_ln395_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_address0_local = zext_ln392_fu_2795_p1;
    end else begin
        work_x_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_address1_local = zext_ln396_fu_2951_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_address1_local = zext_ln394_fu_2889_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_address1_local = zext_ln391_fu_2772_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_address1_local = zext_ln114_reg_4078;
    end else begin
        work_x_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_0_ce0_local = 1'b1;
    end else begin
        work_x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_0_ce1_local = 1'b1;
    end else begin
        work_x_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_d0_local = bitcast_ln396_reg_4478;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_d0_local = bitcast_ln392_fu_3122_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_d0_local = bitcast_ln394_fu_2934_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_d0_local = bitcast_ln391_fu_2843_p1;
    end else begin
        work_x_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_d1_local = bitcast_ln395_fu_2963_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_d1_local = bitcast_ln393_fu_2901_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_d1_local = bitcast_ln390_fu_2836_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_d1_local = bitcast_ln389_fu_2553_p1;
    end else begin
        work_x_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_0_we0_local = 1'b1;
    end else begin
        work_x_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln365_reg_3208_pp0_iter7_reg == 3'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_0_we1_local = 1'b1;
    end else begin
        work_x_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_address0_local = zext_ln389_fu_3139_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_address0_local = zext_ln396_1_fu_3110_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_address0_local = zext_ln393_1_fu_2996_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_address0_local = zext_ln391_1_fu_2722_p1;
    end else begin
        work_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_address1_local = zext_ln395_1_fu_3077_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_address1_local = zext_ln394_2_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_address1_local = zext_ln392_2_fu_2824_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_address1_local = zext_ln114_fu_2383_p1;
    end else begin
        work_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_1_ce0_local = 1'b1;
    end else begin
        work_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_1_ce1_local = 1'b1;
    end else begin
        work_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_d0_local = bitcast_ln396_1_fu_3151_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_d0_local = bitcast_ln395_1_reg_4369_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_d0_local = bitcast_ln392_1_fu_3039_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_d0_local = bitcast_ln390_1_fu_2734_p1;
    end else begin
        work_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_d1_local = bitcast_ln394_1_reg_4361_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_d1_local = bitcast_ln393_1_reg_4130_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_d1_local = bitcast_ln391_1_fu_2864_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_d1_local = bitcast_ln389_1_fu_2531_p1;
    end else begin
        work_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter14_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter10_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_1_we0_local = 1'b1;
    end else begin
        work_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter14_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln365_reg_3208_pp0_iter6_reg == 3'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter14_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_1_we1_local = 1'b1;
    end else begin
        work_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_2_address0_local = zext_ln365_3_fu_3168_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_2_address0_local = zext_ln393_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_2_address0_local = zext_ln395_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_2_address0_local = zext_ln392_fu_2795_p1;
    end else begin
        work_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_2_address1_local = zext_ln396_fu_2951_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_2_address1_local = zext_ln394_fu_2889_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_2_address1_local = zext_ln391_fu_2772_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_2_address1_local = zext_ln114_reg_4078;
    end else begin
        work_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_2_ce0_local = 1'b1;
    end else begin
        work_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_2_ce1_local = 1'b1;
    end else begin
        work_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_2_d0_local = bitcast_ln396_reg_4478;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_2_d0_local = bitcast_ln392_fu_3122_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_2_d0_local = bitcast_ln394_fu_2934_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_2_d0_local = bitcast_ln391_fu_2843_p1;
    end else begin
        work_x_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_2_d1_local = bitcast_ln395_fu_2963_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_2_d1_local = bitcast_ln393_fu_2901_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_2_d1_local = bitcast_ln390_fu_2836_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_2_d1_local = bitcast_ln389_fu_2553_p1;
    end else begin
        work_x_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_2_we0_local = 1'b1;
    end else begin
        work_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln365_reg_3208_pp0_iter7_reg == 3'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_2_we1_local = 1'b1;
    end else begin
        work_x_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_3_address0_local = zext_ln389_fu_3139_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_3_address0_local = zext_ln396_1_fu_3110_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_3_address0_local = zext_ln393_1_fu_2996_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_3_address0_local = zext_ln391_1_fu_2722_p1;
    end else begin
        work_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_3_address1_local = zext_ln395_1_fu_3077_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_3_address1_local = zext_ln394_2_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_3_address1_local = zext_ln392_2_fu_2824_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_3_address1_local = zext_ln114_fu_2383_p1;
    end else begin
        work_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_3_ce0_local = 1'b1;
    end else begin
        work_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_3_ce1_local = 1'b1;
    end else begin
        work_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_3_d0_local = bitcast_ln396_1_fu_3151_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_3_d0_local = bitcast_ln395_1_reg_4369_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_3_d0_local = bitcast_ln392_1_fu_3039_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_3_d0_local = bitcast_ln390_1_fu_2734_p1;
    end else begin
        work_x_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_3_d1_local = bitcast_ln394_1_reg_4361_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_3_d1_local = bitcast_ln393_1_reg_4130_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_3_d1_local = bitcast_ln391_1_fu_2864_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_3_d1_local = bitcast_ln389_1_fu_2531_p1;
    end else begin
        work_x_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter14_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter10_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_3_we0_local = 1'b1;
    end else begin
        work_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter14_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln365_reg_3208_pp0_iter6_reg == 3'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter14_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_3_we1_local = 1'b1;
    end else begin
        work_x_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_4_address0_local = zext_ln365_3_fu_3168_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_4_address0_local = zext_ln393_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_4_address0_local = zext_ln395_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_4_address0_local = zext_ln392_fu_2795_p1;
    end else begin
        work_x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_4_address1_local = zext_ln396_fu_2951_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_4_address1_local = zext_ln394_fu_2889_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_4_address1_local = zext_ln391_fu_2772_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_4_address1_local = zext_ln114_reg_4078;
    end else begin
        work_x_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_4_ce0_local = 1'b1;
    end else begin
        work_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_4_ce1_local = 1'b1;
    end else begin
        work_x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_4_d0_local = bitcast_ln396_reg_4478;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_4_d0_local = bitcast_ln392_fu_3122_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_4_d0_local = bitcast_ln394_fu_2934_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_4_d0_local = bitcast_ln391_fu_2843_p1;
    end else begin
        work_x_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_4_d1_local = bitcast_ln395_fu_2963_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_4_d1_local = bitcast_ln393_fu_2901_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_4_d1_local = bitcast_ln390_fu_2836_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_4_d1_local = bitcast_ln389_fu_2553_p1;
    end else begin
        work_x_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_4_we0_local = 1'b1;
    end else begin
        work_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln365_reg_3208_pp0_iter7_reg == 3'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_4_we1_local = 1'b1;
    end else begin
        work_x_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_5_address0_local = zext_ln389_fu_3139_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_5_address0_local = zext_ln396_1_fu_3110_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_5_address0_local = zext_ln393_1_fu_2996_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_5_address0_local = zext_ln391_1_fu_2722_p1;
    end else begin
        work_x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_5_address1_local = zext_ln395_1_fu_3077_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_5_address1_local = zext_ln394_2_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_5_address1_local = zext_ln392_2_fu_2824_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_5_address1_local = zext_ln114_fu_2383_p1;
    end else begin
        work_x_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_5_ce0_local = 1'b1;
    end else begin
        work_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_5_ce1_local = 1'b1;
    end else begin
        work_x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_5_d0_local = bitcast_ln396_1_fu_3151_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_5_d0_local = bitcast_ln395_1_reg_4369_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_5_d0_local = bitcast_ln392_1_fu_3039_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_5_d0_local = bitcast_ln390_1_fu_2734_p1;
    end else begin
        work_x_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_5_d1_local = bitcast_ln394_1_reg_4361_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_5_d1_local = bitcast_ln393_1_reg_4130_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_5_d1_local = bitcast_ln391_1_fu_2864_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_5_d1_local = bitcast_ln389_1_fu_2531_p1;
    end else begin
        work_x_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter14_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter10_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_5_we0_local = 1'b1;
    end else begin
        work_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter14_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln365_reg_3208_pp0_iter6_reg == 3'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter14_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_5_we1_local = 1'b1;
    end else begin
        work_x_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_6_address0_local = zext_ln365_3_fu_3168_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_6_address0_local = zext_ln393_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_6_address0_local = zext_ln395_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_6_address0_local = zext_ln392_fu_2795_p1;
    end else begin
        work_x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_6_address1_local = zext_ln396_fu_2951_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_6_address1_local = zext_ln394_fu_2889_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_6_address1_local = zext_ln391_fu_2772_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_6_address1_local = zext_ln114_reg_4078;
    end else begin
        work_x_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_6_ce0_local = 1'b1;
    end else begin
        work_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_6_ce1_local = 1'b1;
    end else begin
        work_x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_6_d0_local = bitcast_ln396_reg_4478;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_6_d0_local = bitcast_ln392_fu_3122_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_6_d0_local = bitcast_ln394_fu_2934_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_6_d0_local = bitcast_ln391_fu_2843_p1;
    end else begin
        work_x_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_6_d1_local = bitcast_ln395_fu_2963_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_6_d1_local = bitcast_ln393_fu_2901_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_6_d1_local = bitcast_ln390_fu_2836_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_6_d1_local = bitcast_ln389_fu_2553_p1;
    end else begin
        work_x_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_6_we0_local = 1'b1;
    end else begin
        work_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln365_reg_3208_pp0_iter7_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter7_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter7_reg == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_6_we1_local = 1'b1;
    end else begin
        work_x_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_7_address0_local = zext_ln389_fu_3139_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_7_address0_local = zext_ln396_1_fu_3110_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_7_address0_local = zext_ln393_1_fu_2996_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_7_address0_local = zext_ln391_1_fu_2722_p1;
    end else begin
        work_x_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_7_address1_local = zext_ln395_1_fu_3077_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_7_address1_local = zext_ln394_2_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_7_address1_local = zext_ln392_2_fu_2824_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_7_address1_local = zext_ln114_fu_2383_p1;
    end else begin
        work_x_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_7_ce0_local = 1'b1;
    end else begin
        work_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_x_7_ce1_local = 1'b1;
    end else begin
        work_x_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_7_d0_local = bitcast_ln396_1_fu_3151_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_7_d0_local = bitcast_ln395_1_reg_4369_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_7_d0_local = bitcast_ln392_1_fu_3039_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_7_d0_local = bitcast_ln390_1_fu_2734_p1;
    end else begin
        work_x_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_7_d1_local = bitcast_ln394_1_reg_4361_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_7_d1_local = bitcast_ln393_1_reg_4130_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_7_d1_local = bitcast_ln391_1_fu_2864_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_7_d1_local = bitcast_ln389_1_fu_2531_p1;
    end else begin
        work_x_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln365_reg_3208_pp0_iter14_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter14_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter14_reg == 3'd4) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln365_reg_3208_pp0_iter10_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter10_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter10_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_7_we0_local = 1'b1;
    end else begin
        work_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(trunc_ln365_reg_3208_pp0_iter14_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter14_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter14_reg == 3'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln365_reg_3208_pp0_iter14_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter14_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter14_reg == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln365_reg_3208_pp0_iter6_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter6_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter6_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_7_we1_local = 1'b1;
    end else begin
        work_x_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_address0_local = zext_ln365_3_fu_3168_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_address0_local = zext_ln393_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_address0_local = zext_ln395_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_address0_local = zext_ln392_fu_2795_p1;
    end else begin
        work_y_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_address1_local = zext_ln396_fu_2951_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_address1_local = zext_ln394_fu_2889_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_address1_local = zext_ln391_fu_2772_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_address1_local = zext_ln114_reg_4078;
    end else begin
        work_y_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_0_ce0_local = 1'b1;
    end else begin
        work_y_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_0_ce1_local = 1'b1;
    end else begin
        work_y_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_d0_local = bitcast_ln405_fu_3180_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_d0_local = bitcast_ln401_fu_3129_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_d0_local = bitcast_ln403_fu_2941_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_d0_local = bitcast_ln400_fu_2857_p1;
    end else begin
        work_y_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_d1_local = bitcast_ln404_fu_2970_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_d1_local = bitcast_ln402_fu_2908_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_d1_local = bitcast_ln399_fu_2850_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_d1_local = bitcast_ln398_fu_2560_p1;
    end else begin
        work_y_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_0_we0_local = 1'b1;
    end else begin
        work_y_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln365_reg_3208_pp0_iter7_reg == 3'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_0_we1_local = 1'b1;
    end else begin
        work_y_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_address0_local = zext_ln389_fu_3139_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_address0_local = zext_ln396_1_fu_3110_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_address0_local = zext_ln393_1_fu_2996_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_address0_local = zext_ln391_1_fu_2722_p1;
    end else begin
        work_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_address1_local = zext_ln395_1_fu_3077_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_address1_local = zext_ln394_2_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_address1_local = zext_ln392_2_fu_2824_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_address1_local = zext_ln114_fu_2383_p1;
    end else begin
        work_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_1_ce0_local = 1'b1;
    end else begin
        work_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_1_ce1_local = 1'b1;
    end else begin
        work_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_d0_local = bitcast_ln405_1_fu_3158_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_d0_local = bitcast_ln404_1_reg_4385_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_d0_local = bitcast_ln401_1_fu_3046_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_d0_local = bitcast_ln399_1_fu_2750_p1;
    end else begin
        work_y_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_d1_local = bitcast_ln403_1_reg_4377_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_d1_local = bitcast_ln402_1_reg_4138_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_d1_local = bitcast_ln400_1_fu_2871_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_d1_local = bitcast_ln398_1_fu_2542_p1;
    end else begin
        work_y_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter14_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter10_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_1_we0_local = 1'b1;
    end else begin
        work_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter14_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln365_reg_3208_pp0_iter6_reg == 3'd0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter14_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_1_we1_local = 1'b1;
    end else begin
        work_y_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_2_address0_local = zext_ln365_3_fu_3168_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_2_address0_local = zext_ln393_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_2_address0_local = zext_ln395_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_2_address0_local = zext_ln392_fu_2795_p1;
    end else begin
        work_y_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_2_address1_local = zext_ln396_fu_2951_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_2_address1_local = zext_ln394_fu_2889_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_2_address1_local = zext_ln391_fu_2772_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_2_address1_local = zext_ln114_reg_4078;
    end else begin
        work_y_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_2_ce0_local = 1'b1;
    end else begin
        work_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_2_ce1_local = 1'b1;
    end else begin
        work_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_2_d0_local = bitcast_ln405_fu_3180_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_2_d0_local = bitcast_ln401_fu_3129_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_2_d0_local = bitcast_ln403_fu_2941_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_2_d0_local = bitcast_ln400_fu_2857_p1;
    end else begin
        work_y_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_2_d1_local = bitcast_ln404_fu_2970_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_2_d1_local = bitcast_ln402_fu_2908_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_2_d1_local = bitcast_ln399_fu_2850_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_2_d1_local = bitcast_ln398_fu_2560_p1;
    end else begin
        work_y_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_2_we0_local = 1'b1;
    end else begin
        work_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln365_reg_3208_pp0_iter7_reg == 3'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_2_we1_local = 1'b1;
    end else begin
        work_y_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_3_address0_local = zext_ln389_fu_3139_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_3_address0_local = zext_ln396_1_fu_3110_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_3_address0_local = zext_ln393_1_fu_2996_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_3_address0_local = zext_ln391_1_fu_2722_p1;
    end else begin
        work_y_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_3_address1_local = zext_ln395_1_fu_3077_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_3_address1_local = zext_ln394_2_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_3_address1_local = zext_ln392_2_fu_2824_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_3_address1_local = zext_ln114_fu_2383_p1;
    end else begin
        work_y_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_3_ce0_local = 1'b1;
    end else begin
        work_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_3_ce1_local = 1'b1;
    end else begin
        work_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_3_d0_local = bitcast_ln405_1_fu_3158_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_3_d0_local = bitcast_ln404_1_reg_4385_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_3_d0_local = bitcast_ln401_1_fu_3046_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_3_d0_local = bitcast_ln399_1_fu_2750_p1;
    end else begin
        work_y_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_3_d1_local = bitcast_ln403_1_reg_4377_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_3_d1_local = bitcast_ln402_1_reg_4138_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_3_d1_local = bitcast_ln400_1_fu_2871_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_3_d1_local = bitcast_ln398_1_fu_2542_p1;
    end else begin
        work_y_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter14_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter10_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_3_we0_local = 1'b1;
    end else begin
        work_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter14_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln365_reg_3208_pp0_iter6_reg == 3'd2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter14_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_3_we1_local = 1'b1;
    end else begin
        work_y_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_4_address0_local = zext_ln365_3_fu_3168_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_4_address0_local = zext_ln393_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_4_address0_local = zext_ln395_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_4_address0_local = zext_ln392_fu_2795_p1;
    end else begin
        work_y_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_4_address1_local = zext_ln396_fu_2951_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_4_address1_local = zext_ln394_fu_2889_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_4_address1_local = zext_ln391_fu_2772_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_4_address1_local = zext_ln114_reg_4078;
    end else begin
        work_y_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_4_ce0_local = 1'b1;
    end else begin
        work_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_4_ce1_local = 1'b1;
    end else begin
        work_y_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_4_d0_local = bitcast_ln405_fu_3180_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_4_d0_local = bitcast_ln401_fu_3129_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_4_d0_local = bitcast_ln403_fu_2941_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_4_d0_local = bitcast_ln400_fu_2857_p1;
    end else begin
        work_y_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_4_d1_local = bitcast_ln404_fu_2970_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_4_d1_local = bitcast_ln402_fu_2908_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_4_d1_local = bitcast_ln399_fu_2850_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_4_d1_local = bitcast_ln398_fu_2560_p1;
    end else begin
        work_y_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_4_we0_local = 1'b1;
    end else begin
        work_y_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln365_reg_3208_pp0_iter7_reg == 3'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_4_we1_local = 1'b1;
    end else begin
        work_y_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_5_address0_local = zext_ln389_fu_3139_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_5_address0_local = zext_ln396_1_fu_3110_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_5_address0_local = zext_ln393_1_fu_2996_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_5_address0_local = zext_ln391_1_fu_2722_p1;
    end else begin
        work_y_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_5_address1_local = zext_ln395_1_fu_3077_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_5_address1_local = zext_ln394_2_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_5_address1_local = zext_ln392_2_fu_2824_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_5_address1_local = zext_ln114_fu_2383_p1;
    end else begin
        work_y_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_5_ce0_local = 1'b1;
    end else begin
        work_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_5_ce1_local = 1'b1;
    end else begin
        work_y_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_5_d0_local = bitcast_ln405_1_fu_3158_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_5_d0_local = bitcast_ln404_1_reg_4385_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_5_d0_local = bitcast_ln401_1_fu_3046_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_5_d0_local = bitcast_ln399_1_fu_2750_p1;
    end else begin
        work_y_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_5_d1_local = bitcast_ln403_1_reg_4377_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_5_d1_local = bitcast_ln402_1_reg_4138_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_5_d1_local = bitcast_ln400_1_fu_2871_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_5_d1_local = bitcast_ln398_1_fu_2542_p1;
    end else begin
        work_y_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter14_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter10_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter15_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_5_we0_local = 1'b1;
    end else begin
        work_y_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter14_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln365_reg_3208_pp0_iter6_reg == 3'd4) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_3208_pp0_iter14_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_5_we1_local = 1'b1;
    end else begin
        work_y_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_6_address0_local = zext_ln365_3_fu_3168_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_6_address0_local = zext_ln393_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_6_address0_local = zext_ln395_fu_2922_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_6_address0_local = zext_ln392_fu_2795_p1;
    end else begin
        work_y_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_6_address1_local = zext_ln396_fu_2951_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_6_address1_local = zext_ln394_fu_2889_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_6_address1_local = zext_ln391_fu_2772_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_6_address1_local = zext_ln114_reg_4078;
    end else begin
        work_y_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_6_ce0_local = 1'b1;
    end else begin
        work_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_6_ce1_local = 1'b1;
    end else begin
        work_y_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_6_d0_local = bitcast_ln405_fu_3180_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_6_d0_local = bitcast_ln401_fu_3129_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_6_d0_local = bitcast_ln403_fu_2941_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_6_d0_local = bitcast_ln400_fu_2857_p1;
    end else begin
        work_y_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_6_d1_local = bitcast_ln404_fu_2970_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_6_d1_local = bitcast_ln402_fu_2908_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_6_d1_local = bitcast_ln399_fu_2850_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_6_d1_local = bitcast_ln398_fu_2560_p1;
    end else begin
        work_y_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_6_we0_local = 1'b1;
    end else begin
        work_y_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(trunc_ln365_reg_3208_pp0_iter7_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter7_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter7_reg == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_6_we1_local = 1'b1;
    end else begin
        work_y_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_7_address0_local = zext_ln389_fu_3139_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_7_address0_local = zext_ln396_1_fu_3110_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_7_address0_local = zext_ln393_1_fu_2996_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_7_address0_local = zext_ln391_1_fu_2722_p1;
    end else begin
        work_y_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_7_address1_local = zext_ln395_1_fu_3077_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_7_address1_local = zext_ln394_2_fu_3065_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_7_address1_local = zext_ln392_2_fu_2824_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_7_address1_local = zext_ln114_fu_2383_p1;
    end else begin
        work_y_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_7_ce0_local = 1'b1;
    end else begin
        work_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        work_y_7_ce1_local = 1'b1;
    end else begin
        work_y_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_7_d0_local = bitcast_ln405_1_fu_3158_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_7_d0_local = bitcast_ln404_1_reg_4385_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_7_d0_local = bitcast_ln401_1_fu_3046_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_7_d0_local = bitcast_ln399_1_fu_2750_p1;
    end else begin
        work_y_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_7_d1_local = bitcast_ln403_1_reg_4377_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_7_d1_local = bitcast_ln402_1_reg_4138_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_7_d1_local = bitcast_ln400_1_fu_2871_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_7_d1_local = bitcast_ln398_1_fu_2542_p1;
    end else begin
        work_y_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter15_reg == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln365_reg_3208_pp0_iter14_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter14_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter14_reg == 3'd4) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln365_reg_3208_pp0_iter10_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter10_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter10_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_7_we0_local = 1'b1;
    end else begin
        work_y_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(trunc_ln365_reg_3208_pp0_iter14_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter14_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter14_reg == 3'd4) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | (~(trunc_ln365_reg_3208_pp0_iter14_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter14_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter14_reg == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | (~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter11_reg == 3'd4) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | (~(trunc_ln365_reg_3208_pp0_iter6_reg == 3'd0) & ~(trunc_ln365_reg_3208_pp0_iter6_reg == 3'd2) & ~(trunc_ln365_reg_3208_pp0_iter6_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_7_we1_local = 1'b1;
    end else begin
        work_y_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to16 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_1_address0 = zext_ln367_fu_1932_p1;
assign DATA_x_1_address1 = zext_ln365_fu_1890_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_2_address0 = zext_ln367_fu_1932_p1;
assign DATA_x_2_address1 = zext_ln365_fu_1890_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_3_address0 = zext_ln367_fu_1932_p1;
assign DATA_x_3_address1 = zext_ln365_fu_1890_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_4_address0 = zext_ln367_fu_1932_p1;
assign DATA_x_4_address1 = zext_ln365_fu_1890_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_ce1 = DATA_x_4_ce1_local;
assign DATA_x_5_address0 = zext_ln367_fu_1932_p1;
assign DATA_x_5_address1 = zext_ln365_fu_1890_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_ce1 = DATA_x_5_ce1_local;
assign DATA_x_6_address0 = zext_ln367_fu_1932_p1;
assign DATA_x_6_address1 = zext_ln365_fu_1890_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_ce1 = DATA_x_6_ce1_local;
assign DATA_x_7_address0 = zext_ln367_fu_1932_p1;
assign DATA_x_7_address1 = zext_ln365_fu_1890_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_ce1 = DATA_x_7_ce1_local;
assign DATA_x_address0 = zext_ln367_fu_1932_p1;
assign DATA_x_address1 = zext_ln365_fu_1890_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_y_1_address0 = zext_ln367_fu_1932_p1;
assign DATA_y_1_address1 = zext_ln365_fu_1890_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_2_address0 = zext_ln367_fu_1932_p1;
assign DATA_y_2_address1 = zext_ln365_fu_1890_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_ce1 = DATA_y_2_ce1_local;
assign DATA_y_3_address0 = zext_ln367_fu_1932_p1;
assign DATA_y_3_address1 = zext_ln365_fu_1890_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_ce1 = DATA_y_3_ce1_local;
assign DATA_y_4_address0 = zext_ln367_fu_1932_p1;
assign DATA_y_4_address1 = zext_ln365_fu_1890_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_ce1 = DATA_y_4_ce1_local;
assign DATA_y_5_address0 = zext_ln367_fu_1932_p1;
assign DATA_y_5_address1 = zext_ln365_fu_1890_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_ce1 = DATA_y_5_ce1_local;
assign DATA_y_6_address0 = zext_ln367_fu_1932_p1;
assign DATA_y_6_address1 = zext_ln365_fu_1890_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_ce1 = DATA_y_6_ce1_local;
assign DATA_y_7_address0 = zext_ln367_fu_1932_p1;
assign DATA_y_7_address1 = zext_ln365_fu_1890_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_ce1 = DATA_y_7_ce1_local;
assign DATA_y_address0 = zext_ln367_fu_1932_p1;
assign DATA_y_address1 = zext_ln365_fu_1890_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln365_fu_1952_p2 = (tid_5_reg_3194 + 7'd2);
assign add_ln390_fu_2706_p2 = (zext_ln365_2_fu_2635_p1 + 8'd65);
assign add_ln392_fu_2980_p2 = (zext_ln365_1_fu_2977_p1 + 9'd193);
assign add_ln394_fu_3008_p2 = ($signed(zext_ln365_1_fu_2977_p1) + $signed(9'd321));
assign add_ln396_fu_3024_p2 = ($signed(tid_5_reg_3194_pp0_iter14_reg) + $signed(7'd65));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bit_sel40_fu_1999_p3 = bitcast_ln386_2_fu_1996_p1[64'd63];
assign bit_sel41_fu_2241_p3 = bitcast_ln386_4_fu_2238_p1[64'd63];
assign bit_sel42_fu_2275_p3 = bitcast_ln386_6_fu_2272_p1[64'd63];
assign bit_sel43_fu_2033_p3 = bitcast_ln386_8_fu_2030_p1[64'd63];
assign bit_sel44_fu_2068_p3 = bitcast_ln386_10_fu_2065_p1[64'd63];
assign bit_sel45_fu_2398_p3 = bitcast_ln386_12_fu_2395_p1[64'd63];
assign bit_sel46_fu_2432_p3 = bitcast_ln386_14_fu_2429_p1[64'd63];
assign bit_sel47_fu_2641_p3 = bitcast_ln386_16_fu_2638_p1[64'd63];
assign bit_sel48_fu_2675_p3 = bitcast_ln386_18_fu_2672_p1[64'd63];
assign bit_sel49_fu_2103_p3 = bitcast_ln386_20_fu_2100_p1[64'd63];
assign bit_sel50_fu_2137_p3 = bitcast_ln386_22_fu_2134_p1[64'd63];
assign bit_sel51_fu_2309_p3 = bitcast_ln386_24_fu_2306_p1[64'd63];
assign bit_sel52_fu_2343_p3 = bitcast_ln386_26_fu_2340_p1[64'd63];
assign bit_sel53_fu_2171_p3 = bitcast_ln386_28_fu_2168_p1[64'd63];
assign bit_sel54_fu_2206_p3 = bitcast_ln386_30_fu_2203_p1[64'd63];
assign bit_sel55_fu_2466_p3 = bitcast_ln386_32_fu_2463_p1[64'd63];
assign bit_sel56_fu_2500_p3 = bitcast_ln386_34_fu_2497_p1[64'd63];
assign bit_sel57_fu_2570_p3 = bitcast_ln386_36_fu_2567_p1[64'd63];
assign bit_sel58_fu_2604_p3 = bitcast_ln386_38_fu_2601_p1[64'd63];
assign bit_sel_fu_1965_p3 = bitcast_ln386_fu_1962_p1[64'd63];
assign bitcast_ln386_10_fu_2065_p1 = sub13_reg_3613;
assign bitcast_ln386_11_fu_2094_p1 = xor_ln386_5_fu_2086_p3;
assign bitcast_ln386_12_fu_2395_p1 = sub17_reg_3864_pp0_iter6_reg;
assign bitcast_ln386_13_fu_2424_p1 = xor_ln386_6_fu_2416_p3;
assign bitcast_ln386_14_fu_2429_p1 = tmp_16_reg_3858_pp0_iter6_reg;
assign bitcast_ln386_15_fu_2458_p1 = xor_ln386_7_fu_2450_p3;
assign bitcast_ln386_16_fu_2638_p1 = sub24_reg_4176_pp0_iter10_reg;
assign bitcast_ln386_17_fu_2667_p1 = xor_ln386_8_fu_2659_p3;
assign bitcast_ln386_18_fu_2672_p1 = tmp_17_reg_4170_pp0_iter10_reg;
assign bitcast_ln386_19_fu_2701_p1 = xor_ln386_9_fu_2693_p3;
assign bitcast_ln386_1_fu_1991_p1 = xor_ln2_fu_1983_p3;
assign bitcast_ln386_20_fu_2100_p1 = sub1591_1_reg_3636;
assign bitcast_ln386_21_fu_2129_p1 = xor_ln386_s_fu_2121_p3;
assign bitcast_ln386_22_fu_2134_p1 = tmp_1_15_reg_3630;
assign bitcast_ln386_23_fu_2163_p1 = xor_ln386_10_fu_2155_p3;
assign bitcast_ln386_24_fu_2306_p1 = sub1607_1_reg_3648_pp0_iter4_reg;
assign bitcast_ln386_25_fu_2335_p1 = xor_ln386_11_fu_2327_p3;
assign bitcast_ln386_26_fu_2340_p1 = tmp_1_13_reg_3642_pp0_iter4_reg;
assign bitcast_ln386_27_fu_2369_p1 = xor_ln386_12_fu_2361_p3;
assign bitcast_ln386_28_fu_2168_p1 = tmp_1_14_reg_3666;
assign bitcast_ln386_29_fu_2197_p1 = xor_ln386_13_fu_2189_p3;
assign bitcast_ln386_2_fu_1996_p1 = tmp_1_reg_3572;
assign bitcast_ln386_30_fu_2203_p1 = sub1623_1_reg_3671;
assign bitcast_ln386_31_fu_2232_p1 = xor_ln386_14_fu_2224_p3;
assign bitcast_ln386_32_fu_2463_p1 = sub1698_1_reg_3906_pp0_iter6_reg;
assign bitcast_ln386_33_fu_2492_p1 = xor_ln386_15_fu_2484_p3;
assign bitcast_ln386_34_fu_2497_p1 = tmp_18_reg_3842_pp0_iter6_reg;
assign bitcast_ln386_35_fu_2526_p1 = xor_ln386_16_fu_2518_p3;
assign bitcast_ln386_36_fu_2567_p1 = sub1777_1_reg_4164_pp0_iter9_reg;
assign bitcast_ln386_37_fu_2596_p1 = xor_ln386_17_fu_2588_p3;
assign bitcast_ln386_38_fu_2601_p1 = tmp_19_reg_4158_pp0_iter9_reg;
assign bitcast_ln386_39_fu_2630_p1 = xor_ln386_18_fu_2622_p3;
assign bitcast_ln386_3_fu_2025_p1 = xor_ln386_1_fu_2017_p3;
assign bitcast_ln386_4_fu_2238_p1 = sub12_reg_3590_pp0_iter4_reg;
assign bitcast_ln386_5_fu_2267_p1 = xor_ln386_2_fu_2259_p3;
assign bitcast_ln386_6_fu_2272_p1 = tmp_1_11_reg_3584_pp0_iter4_reg;
assign bitcast_ln386_7_fu_2301_p1 = xor_ln386_3_fu_2293_p3;
assign bitcast_ln386_8_fu_2030_p1 = tmp_1_12_reg_3608;
assign bitcast_ln386_9_fu_2059_p1 = xor_ln386_4_fu_2051_p3;
assign bitcast_ln386_fu_1962_p1 = sub_reg_3578;
assign bitcast_ln389_1_fu_2531_p1 = add1717_1_reg_4060;
assign bitcast_ln389_fu_2553_p1 = add19_reg_4100;
assign bitcast_ln390_1_fu_2734_p1 = reg_1870;
assign bitcast_ln390_fu_2836_p1 = add25_reg_4341;
assign bitcast_ln391_1_fu_2864_p1 = add1733_1_reg_4296;
assign bitcast_ln391_fu_2843_p1 = add21_reg_4311;
assign bitcast_ln392_1_fu_3039_p1 = add1812_1_reg_4438;
assign bitcast_ln392_fu_3122_p1 = add27_reg_4463;
assign bitcast_ln393_1_fu_2538_p1 = grp_fu_556_p_dout0;
assign bitcast_ln393_fu_2901_p1 = sub20_reg_4110_pp0_iter11_reg;
assign bitcast_ln394_1_fu_2742_p1 = grp_fu_620_p_dout0;
assign bitcast_ln394_fu_2934_p1 = sub27_reg_4351;
assign bitcast_ln395_1_fu_2746_p1 = grp_fu_612_p_dout0;
assign bitcast_ln395_fu_2963_p1 = sub22_reg_4321;
assign bitcast_ln396_1_fu_3151_p1 = sub1818_1_reg_4443_pp0_iter15_reg;
assign bitcast_ln396_fu_3088_p1 = grp_fu_648_p_dout0;
assign bitcast_ln398_1_fu_2542_p1 = add1720_1_reg_4065;
assign bitcast_ln398_fu_2560_p1 = add20_reg_4105;
assign bitcast_ln399_1_fu_2750_p1 = add1799_1_reg_4306;
assign bitcast_ln399_fu_2850_p1 = add26_reg_4346;
assign bitcast_ln400_1_fu_2871_p1 = add1736_1_reg_4301;
assign bitcast_ln400_fu_2857_p1 = add22_reg_4316;
assign bitcast_ln401_1_fu_3046_p1 = reg_1870;
assign bitcast_ln401_fu_3129_p1 = add28_reg_4468;
assign bitcast_ln402_1_fu_2549_p1 = grp_fu_560_p_dout0;
assign bitcast_ln402_fu_2908_p1 = sub21_reg_4115_pp0_iter11_reg;
assign bitcast_ln403_1_fu_2757_p1 = grp_fu_624_p_dout0;
assign bitcast_ln403_fu_2941_p1 = sub28_reg_4356;
assign bitcast_ln404_1_fu_2761_p1 = grp_fu_616_p_dout0;
assign bitcast_ln404_fu_2970_p1 = sub23_reg_4326;
assign bitcast_ln405_1_fu_3158_p1 = sub1821_1_reg_4448_pp0_iter15_reg;
assign bitcast_ln405_fu_3180_p1 = sub30_reg_4473;
assign grp_fu_540_p_ce = 1'b1;
assign grp_fu_540_p_din0 = grp_fu_1724_p0;
assign grp_fu_540_p_din1 = grp_fu_1724_p1;
assign grp_fu_540_p_opcode = 2'd0;
assign grp_fu_544_p_ce = 1'b1;
assign grp_fu_544_p_din0 = grp_fu_1728_p0;
assign grp_fu_544_p_din1 = grp_fu_1728_p1;
assign grp_fu_544_p_opcode = 2'd0;
assign grp_fu_548_p_ce = 1'b1;
assign grp_fu_548_p_din0 = grp_fu_1732_p0;
assign grp_fu_548_p_din1 = grp_fu_1732_p1;
assign grp_fu_548_p_opcode = 2'd1;
assign grp_fu_552_p_ce = 1'b1;
assign grp_fu_552_p_din0 = grp_fu_1736_p0;
assign grp_fu_552_p_din1 = grp_fu_1736_p1;
assign grp_fu_552_p_opcode = 2'd1;
assign grp_fu_556_p_ce = 1'b1;
assign grp_fu_556_p_din0 = grp_fu_1740_p0;
assign grp_fu_556_p_din1 = grp_fu_1740_p1;
assign grp_fu_556_p_opcode = grp_fu_1740_opcode;
assign grp_fu_560_p_ce = 1'b1;
assign grp_fu_560_p_din0 = grp_fu_1744_p0;
assign grp_fu_560_p_din1 = grp_fu_1744_p1;
assign grp_fu_560_p_opcode = grp_fu_1744_opcode;
assign grp_fu_564_p_ce = 1'b1;
assign grp_fu_564_p_din0 = grp_fu_1748_p0;
assign grp_fu_564_p_din1 = grp_fu_1748_p1;
assign grp_fu_564_p_opcode = 2'd0;
assign grp_fu_568_p_ce = 1'b1;
assign grp_fu_568_p_din0 = grp_fu_1752_p0;
assign grp_fu_568_p_din1 = grp_fu_1752_p1;
assign grp_fu_568_p_opcode = 2'd0;
assign grp_fu_572_p_ce = 1'b1;
assign grp_fu_572_p_din0 = grp_fu_1756_p0;
assign grp_fu_572_p_din1 = grp_fu_1756_p1;
assign grp_fu_572_p_opcode = 2'd1;
assign grp_fu_576_p_ce = 1'b1;
assign grp_fu_576_p_din0 = grp_fu_1760_p0;
assign grp_fu_576_p_din1 = grp_fu_1760_p1;
assign grp_fu_576_p_opcode = 2'd1;
assign grp_fu_580_p_ce = 1'b1;
assign grp_fu_580_p_din0 = grp_fu_1764_p0;
assign grp_fu_580_p_din1 = grp_fu_1764_p1;
assign grp_fu_580_p_opcode = 2'd0;
assign grp_fu_584_p_ce = 1'b1;
assign grp_fu_584_p_din0 = grp_fu_1768_p0;
assign grp_fu_584_p_din1 = grp_fu_1768_p1;
assign grp_fu_584_p_opcode = 2'd0;
assign grp_fu_588_p_ce = 1'b1;
assign grp_fu_588_p_din0 = grp_fu_1772_p0;
assign grp_fu_588_p_din1 = grp_fu_1772_p1;
assign grp_fu_588_p_opcode = 2'd1;
assign grp_fu_592_p_ce = 1'b1;
assign grp_fu_592_p_din0 = grp_fu_1776_p0;
assign grp_fu_592_p_din1 = grp_fu_1776_p1;
assign grp_fu_592_p_opcode = 2'd1;
assign grp_fu_596_p_ce = 1'b1;
assign grp_fu_596_p_din0 = grp_fu_1780_p0;
assign grp_fu_596_p_din1 = grp_fu_1780_p1;
assign grp_fu_596_p_opcode = grp_fu_1780_opcode;
assign grp_fu_600_p_ce = 1'b1;
assign grp_fu_600_p_din0 = grp_fu_1784_p0;
assign grp_fu_600_p_din1 = grp_fu_1784_p1;
assign grp_fu_600_p_opcode = grp_fu_1784_opcode;
assign grp_fu_604_p_ce = 1'b1;
assign grp_fu_604_p_din0 = grp_fu_1788_p0;
assign grp_fu_604_p_din1 = grp_fu_1788_p1;
assign grp_fu_604_p_opcode = grp_fu_1788_opcode;
assign grp_fu_608_p_ce = 1'b1;
assign grp_fu_608_p_din0 = grp_fu_1792_p0;
assign grp_fu_608_p_din1 = grp_fu_1792_p1;
assign grp_fu_608_p_opcode = grp_fu_1792_opcode;
assign grp_fu_612_p_ce = 1'b1;
assign grp_fu_612_p_din0 = grp_fu_1796_p0;
assign grp_fu_612_p_din1 = grp_fu_1796_p1;
assign grp_fu_612_p_opcode = grp_fu_1796_opcode;
assign grp_fu_616_p_ce = 1'b1;
assign grp_fu_616_p_din0 = grp_fu_1800_p0;
assign grp_fu_616_p_din1 = grp_fu_1800_p1;
assign grp_fu_616_p_opcode = grp_fu_1800_opcode;
assign grp_fu_620_p_ce = 1'b1;
assign grp_fu_620_p_din0 = grp_fu_1804_p0;
assign grp_fu_620_p_din1 = grp_fu_1804_p1;
assign grp_fu_620_p_opcode = grp_fu_1804_opcode;
assign grp_fu_624_p_ce = 1'b1;
assign grp_fu_624_p_din0 = grp_fu_1808_p0;
assign grp_fu_624_p_din1 = grp_fu_1808_p1;
assign grp_fu_624_p_opcode = grp_fu_1808_opcode;
assign grp_fu_628_p_ce = 1'b1;
assign grp_fu_628_p_din0 = grp_fu_1812_p0;
assign grp_fu_628_p_din1 = grp_fu_1812_p1;
assign grp_fu_628_p_opcode = grp_fu_1812_opcode;
assign grp_fu_632_p_ce = 1'b1;
assign grp_fu_632_p_din0 = grp_fu_1816_p0;
assign grp_fu_632_p_din1 = grp_fu_1816_p1;
assign grp_fu_632_p_opcode = grp_fu_1816_opcode;
assign grp_fu_636_p_ce = 1'b1;
assign grp_fu_636_p_din0 = grp_fu_1820_p0;
assign grp_fu_636_p_din1 = grp_fu_1820_p1;
assign grp_fu_636_p_opcode = grp_fu_1820_opcode;
assign grp_fu_640_p_ce = 1'b1;
assign grp_fu_640_p_din0 = grp_fu_1824_p0;
assign grp_fu_640_p_din1 = grp_fu_1824_p1;
assign grp_fu_640_p_opcode = grp_fu_1824_opcode;
assign grp_fu_644_p_ce = 1'b1;
assign grp_fu_644_p_din0 = grp_fu_1828_p0;
assign grp_fu_644_p_din1 = grp_fu_1828_p1;
assign grp_fu_644_p_opcode = grp_fu_1828_opcode;
assign grp_fu_648_p_ce = 1'b1;
assign grp_fu_648_p_din0 = grp_fu_1832_p0;
assign grp_fu_648_p_din1 = grp_fu_1832_p1;
assign grp_fu_648_p_opcode = grp_fu_1832_opcode;
assign grp_fu_652_p_ce = 1'b1;
assign grp_fu_652_p_din0 = grp_fu_1836_p0;
assign grp_fu_652_p_din1 = grp_fu_1836_p1;
assign grp_fu_652_p_opcode = grp_fu_1836_opcode;
assign grp_fu_772_p_ce = 1'b1;
assign grp_fu_772_p_din0 = grp_fu_1840_p0;
assign grp_fu_772_p_din1 = grp_fu_1840_p1;
assign grp_fu_776_p_ce = 1'b1;
assign grp_fu_776_p_din0 = grp_fu_1845_p0;
assign grp_fu_776_p_din1 = grp_fu_1845_p1;
assign grp_fu_780_p_ce = 1'b1;
assign grp_fu_780_p_din0 = grp_fu_1852_p0;
assign grp_fu_780_p_din1 = grp_fu_1852_p1;
assign grp_fu_784_p_ce = 1'b1;
assign grp_fu_784_p_din0 = grp_fu_1857_p0;
assign grp_fu_784_p_din1 = grp_fu_1857_p1;
assign grp_fu_788_p_ce = 1'b1;
assign grp_fu_788_p_din0 = grp_fu_1862_p0;
assign grp_fu_788_p_din1 = grp_fu_1862_p1;
assign lshr_ln114_1_fu_2374_p4 = {{tid_5_reg_3194_pp0_iter6_reg[5:3]}};
assign lshr_ln4_fu_2712_p4 = {{add_ln390_fu_2706_p2[7:3]}};
assign lshr_ln5_fu_2986_p4 = {{add_ln392_fu_2980_p2[8:3]}};
assign or_ln_fu_1924_p3 = {{tmp_s_fu_1914_p4}, {1'd1}};
assign sext_ln365_fu_3165_p1 = zext_ln391_cast_reg_4393_pp0_iter15_reg;
assign sext_ln389_fu_3136_p1 = $signed(trunc_ln8_reg_4458_pp0_iter15_reg);
assign sext_ln393_fu_3092_p1 = zext_ln391_cast_reg_4393_pp0_iter15_reg;
assign sext_ln396_1_fu_3107_p1 = zext_ln392_1_reg_4409_pp0_iter15_reg;
assign sext_ln396_fu_2948_p1 = zext_ln392_cast_reg_4399;
assign tmp_92_fu_2807_p4 = {{tid_5_reg_3194_pp0_iter11_reg[6:3]}};
assign tmp_s_fu_1914_p4 = {{ap_sig_allocacmp_tid_5[5:1]}};
assign trunc_ln365_fu_1910_p1 = ap_sig_allocacmp_tid_5[2:0];
assign trunc_ln386_10_fu_2117_p1 = bitcast_ln386_20_fu_2100_p1[62:0];
assign trunc_ln386_11_fu_2151_p1 = bitcast_ln386_22_fu_2134_p1[62:0];
assign trunc_ln386_12_fu_2323_p1 = bitcast_ln386_24_fu_2306_p1[62:0];
assign trunc_ln386_13_fu_2357_p1 = bitcast_ln386_26_fu_2340_p1[62:0];
assign trunc_ln386_14_fu_2185_p1 = bitcast_ln386_28_fu_2168_p1[62:0];
assign trunc_ln386_15_fu_2220_p1 = bitcast_ln386_30_fu_2203_p1[62:0];
assign trunc_ln386_16_fu_2480_p1 = bitcast_ln386_32_fu_2463_p1[62:0];
assign trunc_ln386_17_fu_2514_p1 = bitcast_ln386_34_fu_2497_p1[62:0];
assign trunc_ln386_18_fu_2584_p1 = bitcast_ln386_36_fu_2567_p1[62:0];
assign trunc_ln386_19_fu_2618_p1 = bitcast_ln386_38_fu_2601_p1[62:0];
assign trunc_ln386_1_fu_2013_p1 = bitcast_ln386_2_fu_1996_p1[62:0];
assign trunc_ln386_2_fu_2255_p1 = bitcast_ln386_4_fu_2238_p1[62:0];
assign trunc_ln386_3_fu_2289_p1 = bitcast_ln386_6_fu_2272_p1[62:0];
assign trunc_ln386_4_fu_2047_p1 = bitcast_ln386_8_fu_2030_p1[62:0];
assign trunc_ln386_5_fu_2082_p1 = bitcast_ln386_10_fu_2065_p1[62:0];
assign trunc_ln386_6_fu_2412_p1 = bitcast_ln386_12_fu_2395_p1[62:0];
assign trunc_ln386_7_fu_2446_p1 = bitcast_ln386_14_fu_2429_p1[62:0];
assign trunc_ln386_8_fu_2655_p1 = bitcast_ln386_16_fu_2638_p1[62:0];
assign trunc_ln386_9_fu_2689_p1 = bitcast_ln386_18_fu_2672_p1[62:0];
assign trunc_ln386_fu_1979_p1 = bitcast_ln386_fu_1962_p1[62:0];
assign work_x_0_address0 = work_x_0_address0_local;
assign work_x_0_address1 = work_x_0_address1_local;
assign work_x_0_ce0 = work_x_0_ce0_local;
assign work_x_0_ce1 = work_x_0_ce1_local;
assign work_x_0_d0 = work_x_0_d0_local;
assign work_x_0_d1 = work_x_0_d1_local;
assign work_x_0_we0 = work_x_0_we0_local;
assign work_x_0_we1 = work_x_0_we1_local;
assign work_x_1_address0 = work_x_1_address0_local;
assign work_x_1_address1 = work_x_1_address1_local;
assign work_x_1_ce0 = work_x_1_ce0_local;
assign work_x_1_ce1 = work_x_1_ce1_local;
assign work_x_1_d0 = work_x_1_d0_local;
assign work_x_1_d1 = work_x_1_d1_local;
assign work_x_1_we0 = work_x_1_we0_local;
assign work_x_1_we1 = work_x_1_we1_local;
assign work_x_2_address0 = work_x_2_address0_local;
assign work_x_2_address1 = work_x_2_address1_local;
assign work_x_2_ce0 = work_x_2_ce0_local;
assign work_x_2_ce1 = work_x_2_ce1_local;
assign work_x_2_d0 = work_x_2_d0_local;
assign work_x_2_d1 = work_x_2_d1_local;
assign work_x_2_we0 = work_x_2_we0_local;
assign work_x_2_we1 = work_x_2_we1_local;
assign work_x_3_address0 = work_x_3_address0_local;
assign work_x_3_address1 = work_x_3_address1_local;
assign work_x_3_ce0 = work_x_3_ce0_local;
assign work_x_3_ce1 = work_x_3_ce1_local;
assign work_x_3_d0 = work_x_3_d0_local;
assign work_x_3_d1 = work_x_3_d1_local;
assign work_x_3_we0 = work_x_3_we0_local;
assign work_x_3_we1 = work_x_3_we1_local;
assign work_x_4_address0 = work_x_4_address0_local;
assign work_x_4_address1 = work_x_4_address1_local;
assign work_x_4_ce0 = work_x_4_ce0_local;
assign work_x_4_ce1 = work_x_4_ce1_local;
assign work_x_4_d0 = work_x_4_d0_local;
assign work_x_4_d1 = work_x_4_d1_local;
assign work_x_4_we0 = work_x_4_we0_local;
assign work_x_4_we1 = work_x_4_we1_local;
assign work_x_5_address0 = work_x_5_address0_local;
assign work_x_5_address1 = work_x_5_address1_local;
assign work_x_5_ce0 = work_x_5_ce0_local;
assign work_x_5_ce1 = work_x_5_ce1_local;
assign work_x_5_d0 = work_x_5_d0_local;
assign work_x_5_d1 = work_x_5_d1_local;
assign work_x_5_we0 = work_x_5_we0_local;
assign work_x_5_we1 = work_x_5_we1_local;
assign work_x_6_address0 = work_x_6_address0_local;
assign work_x_6_address1 = work_x_6_address1_local;
assign work_x_6_ce0 = work_x_6_ce0_local;
assign work_x_6_ce1 = work_x_6_ce1_local;
assign work_x_6_d0 = work_x_6_d0_local;
assign work_x_6_d1 = work_x_6_d1_local;
assign work_x_6_we0 = work_x_6_we0_local;
assign work_x_6_we1 = work_x_6_we1_local;
assign work_x_7_address0 = work_x_7_address0_local;
assign work_x_7_address1 = work_x_7_address1_local;
assign work_x_7_ce0 = work_x_7_ce0_local;
assign work_x_7_ce1 = work_x_7_ce1_local;
assign work_x_7_d0 = work_x_7_d0_local;
assign work_x_7_d1 = work_x_7_d1_local;
assign work_x_7_we0 = work_x_7_we0_local;
assign work_x_7_we1 = work_x_7_we1_local;
assign work_y_0_address0 = work_y_0_address0_local;
assign work_y_0_address1 = work_y_0_address1_local;
assign work_y_0_ce0 = work_y_0_ce0_local;
assign work_y_0_ce1 = work_y_0_ce1_local;
assign work_y_0_d0 = work_y_0_d0_local;
assign work_y_0_d1 = work_y_0_d1_local;
assign work_y_0_we0 = work_y_0_we0_local;
assign work_y_0_we1 = work_y_0_we1_local;
assign work_y_1_address0 = work_y_1_address0_local;
assign work_y_1_address1 = work_y_1_address1_local;
assign work_y_1_ce0 = work_y_1_ce0_local;
assign work_y_1_ce1 = work_y_1_ce1_local;
assign work_y_1_d0 = work_y_1_d0_local;
assign work_y_1_d1 = work_y_1_d1_local;
assign work_y_1_we0 = work_y_1_we0_local;
assign work_y_1_we1 = work_y_1_we1_local;
assign work_y_2_address0 = work_y_2_address0_local;
assign work_y_2_address1 = work_y_2_address1_local;
assign work_y_2_ce0 = work_y_2_ce0_local;
assign work_y_2_ce1 = work_y_2_ce1_local;
assign work_y_2_d0 = work_y_2_d0_local;
assign work_y_2_d1 = work_y_2_d1_local;
assign work_y_2_we0 = work_y_2_we0_local;
assign work_y_2_we1 = work_y_2_we1_local;
assign work_y_3_address0 = work_y_3_address0_local;
assign work_y_3_address1 = work_y_3_address1_local;
assign work_y_3_ce0 = work_y_3_ce0_local;
assign work_y_3_ce1 = work_y_3_ce1_local;
assign work_y_3_d0 = work_y_3_d0_local;
assign work_y_3_d1 = work_y_3_d1_local;
assign work_y_3_we0 = work_y_3_we0_local;
assign work_y_3_we1 = work_y_3_we1_local;
assign work_y_4_address0 = work_y_4_address0_local;
assign work_y_4_address1 = work_y_4_address1_local;
assign work_y_4_ce0 = work_y_4_ce0_local;
assign work_y_4_ce1 = work_y_4_ce1_local;
assign work_y_4_d0 = work_y_4_d0_local;
assign work_y_4_d1 = work_y_4_d1_local;
assign work_y_4_we0 = work_y_4_we0_local;
assign work_y_4_we1 = work_y_4_we1_local;
assign work_y_5_address0 = work_y_5_address0_local;
assign work_y_5_address1 = work_y_5_address1_local;
assign work_y_5_ce0 = work_y_5_ce0_local;
assign work_y_5_ce1 = work_y_5_ce1_local;
assign work_y_5_d0 = work_y_5_d0_local;
assign work_y_5_d1 = work_y_5_d1_local;
assign work_y_5_we0 = work_y_5_we0_local;
assign work_y_5_we1 = work_y_5_we1_local;
assign work_y_6_address0 = work_y_6_address0_local;
assign work_y_6_address1 = work_y_6_address1_local;
assign work_y_6_ce0 = work_y_6_ce0_local;
assign work_y_6_ce1 = work_y_6_ce1_local;
assign work_y_6_d0 = work_y_6_d0_local;
assign work_y_6_d1 = work_y_6_d1_local;
assign work_y_6_we0 = work_y_6_we0_local;
assign work_y_6_we1 = work_y_6_we1_local;
assign work_y_7_address0 = work_y_7_address0_local;
assign work_y_7_address1 = work_y_7_address1_local;
assign work_y_7_ce0 = work_y_7_ce0_local;
assign work_y_7_ce1 = work_y_7_ce1_local;
assign work_y_7_d0 = work_y_7_d0_local;
assign work_y_7_d1 = work_y_7_d1_local;
assign work_y_7_we0 = work_y_7_we0_local;
assign work_y_7_we1 = work_y_7_we1_local;
assign xor_ln2_fu_1983_p3 = {{xor_ln386_19_fu_1973_p2}, {trunc_ln386_fu_1979_p1}};
assign xor_ln386_10_fu_2155_p3 = {{xor_ln386_29_fu_2145_p2}, {trunc_ln386_11_fu_2151_p1}};
assign xor_ln386_11_fu_2327_p3 = {{xor_ln386_30_fu_2317_p2}, {trunc_ln386_12_fu_2323_p1}};
assign xor_ln386_12_fu_2361_p3 = {{xor_ln386_31_fu_2351_p2}, {trunc_ln386_13_fu_2357_p1}};
assign xor_ln386_13_fu_2189_p3 = {{xor_ln386_32_fu_2179_p2}, {trunc_ln386_14_fu_2185_p1}};
assign xor_ln386_14_fu_2224_p3 = {{xor_ln386_33_fu_2214_p2}, {trunc_ln386_15_fu_2220_p1}};
assign xor_ln386_15_fu_2484_p3 = {{xor_ln386_34_fu_2474_p2}, {trunc_ln386_16_fu_2480_p1}};
assign xor_ln386_16_fu_2518_p3 = {{xor_ln386_35_fu_2508_p2}, {trunc_ln386_17_fu_2514_p1}};
assign xor_ln386_17_fu_2588_p3 = {{xor_ln386_36_fu_2578_p2}, {trunc_ln386_18_fu_2584_p1}};
assign xor_ln386_18_fu_2622_p3 = {{xor_ln386_37_fu_2612_p2}, {trunc_ln386_19_fu_2618_p1}};
assign xor_ln386_19_fu_1973_p2 = (bit_sel_fu_1965_p3 ^ 1'd1);
assign xor_ln386_1_fu_2017_p3 = {{xor_ln386_fu_2007_p2}, {trunc_ln386_1_fu_2013_p1}};
assign xor_ln386_20_fu_2249_p2 = (bit_sel41_fu_2241_p3 ^ 1'd1);
assign xor_ln386_21_fu_2283_p2 = (bit_sel42_fu_2275_p3 ^ 1'd1);
assign xor_ln386_22_fu_2041_p2 = (bit_sel43_fu_2033_p3 ^ 1'd1);
assign xor_ln386_23_fu_2076_p2 = (bit_sel44_fu_2068_p3 ^ 1'd1);
assign xor_ln386_24_fu_2406_p2 = (bit_sel45_fu_2398_p3 ^ 1'd1);
assign xor_ln386_25_fu_2440_p2 = (bit_sel46_fu_2432_p3 ^ 1'd1);
assign xor_ln386_26_fu_2649_p2 = (bit_sel47_fu_2641_p3 ^ 1'd1);
assign xor_ln386_27_fu_2683_p2 = (bit_sel48_fu_2675_p3 ^ 1'd1);
assign xor_ln386_28_fu_2111_p2 = (bit_sel49_fu_2103_p3 ^ 1'd1);
assign xor_ln386_29_fu_2145_p2 = (bit_sel50_fu_2137_p3 ^ 1'd1);
assign xor_ln386_2_fu_2259_p3 = {{xor_ln386_20_fu_2249_p2}, {trunc_ln386_2_fu_2255_p1}};
assign xor_ln386_30_fu_2317_p2 = (bit_sel51_fu_2309_p3 ^ 1'd1);
assign xor_ln386_31_fu_2351_p2 = (bit_sel52_fu_2343_p3 ^ 1'd1);
assign xor_ln386_32_fu_2179_p2 = (bit_sel53_fu_2171_p3 ^ 1'd1);
assign xor_ln386_33_fu_2214_p2 = (bit_sel54_fu_2206_p3 ^ 1'd1);
assign xor_ln386_34_fu_2474_p2 = (bit_sel55_fu_2466_p3 ^ 1'd1);
assign xor_ln386_35_fu_2508_p2 = (bit_sel56_fu_2500_p3 ^ 1'd1);
assign xor_ln386_36_fu_2578_p2 = (bit_sel57_fu_2570_p3 ^ 1'd1);
assign xor_ln386_37_fu_2612_p2 = (bit_sel58_fu_2604_p3 ^ 1'd1);
assign xor_ln386_3_fu_2293_p3 = {{xor_ln386_21_fu_2283_p2}, {trunc_ln386_3_fu_2289_p1}};
assign xor_ln386_4_fu_2051_p3 = {{xor_ln386_22_fu_2041_p2}, {trunc_ln386_4_fu_2047_p1}};
assign xor_ln386_5_fu_2086_p3 = {{xor_ln386_23_fu_2076_p2}, {trunc_ln386_5_fu_2082_p1}};
assign xor_ln386_6_fu_2416_p3 = {{xor_ln386_24_fu_2406_p2}, {trunc_ln386_6_fu_2412_p1}};
assign xor_ln386_7_fu_2450_p3 = {{xor_ln386_25_fu_2440_p2}, {trunc_ln386_7_fu_2446_p1}};
assign xor_ln386_8_fu_2659_p3 = {{xor_ln386_26_fu_2649_p2}, {trunc_ln386_8_fu_2655_p1}};
assign xor_ln386_9_fu_2693_p3 = {{xor_ln386_27_fu_2683_p2}, {trunc_ln386_9_fu_2689_p1}};
assign xor_ln386_fu_2007_p2 = (bit_sel40_fu_1999_p3 ^ 1'd1);
assign xor_ln386_s_fu_2121_p3 = {{xor_ln386_28_fu_2111_p2}, {trunc_ln386_10_fu_2117_p1}};
assign zext_ln114_fu_2383_p1 = lshr_ln114_1_fu_2374_p4;
assign zext_ln365_1_fu_2977_p1 = tid_5_reg_3194_pp0_iter14_reg;
assign zext_ln365_2_fu_2635_p1 = tid_5_reg_3194_pp0_iter10_reg;
assign zext_ln365_3_fu_3168_p1 = $unsigned(sext_ln365_fu_3165_p1);
assign zext_ln365_fu_1890_p1 = ap_sig_allocacmp_tid_5;
assign zext_ln367_fu_1932_p1 = or_ln_fu_1924_p3;
assign zext_ln389_fu_3139_p1 = $unsigned(sext_ln389_fu_3136_p1);
assign zext_ln391_1_fu_2722_p1 = lshr_ln4_fu_2712_p4;
assign zext_ln391_2_fu_2784_p1 = lshr_ln114_1_reg_4070_pp0_iter11_reg;
assign zext_ln391_cast_fu_2765_p3 = {{1'd1}, {lshr_ln114_1_reg_4070_pp0_iter11_reg}};
assign zext_ln391_fu_2772_p1 = $unsigned(zext_ln391_cast_fu_2765_p3);
assign zext_ln392_1_fu_2816_p3 = {{1'd1}, {tmp_92_fu_2807_p4}};
assign zext_ln392_2_fu_2824_p1 = $unsigned(zext_ln392_1_fu_2816_p3);
assign zext_ln392_cast_fu_2787_p3 = {{1'd1}, {zext_ln391_2_fu_2784_p1}};
assign zext_ln392_fu_2795_p1 = $unsigned(zext_ln392_cast_fu_2787_p3);
assign zext_ln393_1_fu_2996_p1 = lshr_ln5_fu_2986_p4;
assign zext_ln393_2_fu_2878_p1 = lshr_ln114_1_reg_4070_pp0_iter11_reg;
assign zext_ln393_3_fu_3054_p1 = tmp_92_reg_4404_pp0_iter14_reg;
assign zext_ln393_fu_3095_p1 = $unsigned(sext_ln393_fu_3092_p1);
assign zext_ln394_1_fu_3057_p3 = {{1'd1}, {zext_ln393_3_fu_3054_p1}};
assign zext_ln394_2_fu_3065_p1 = zext_ln394_1_fu_3057_p3;
assign zext_ln394_cast_fu_2881_p3 = {{1'd1}, {zext_ln393_2_fu_2878_p1}};
assign zext_ln394_fu_2889_p1 = zext_ln394_cast_fu_2881_p3;
assign zext_ln395_1_fu_3077_p1 = lshr_ln6_reg_4453;
assign zext_ln395_cast_fu_2915_p3 = {{3'd5}, {lshr_ln114_1_reg_4070_pp0_iter11_reg}};
assign zext_ln395_fu_2922_p1 = zext_ln395_cast_fu_2915_p3;
assign zext_ln396_1_fu_3110_p1 = $unsigned(sext_ln396_1_fu_3107_p1);
assign zext_ln396_fu_2951_p1 = $unsigned(sext_ln396_fu_2948_p1);
always @ (posedge ap_clk) begin
    zext_ln114_reg_4078[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    zext_ln391_cast_reg_4393[3] <= 1'b1;
    zext_ln391_cast_reg_4393_pp0_iter12_reg[3] <= 1'b1;
    zext_ln391_cast_reg_4393_pp0_iter13_reg[3] <= 1'b1;
    zext_ln391_cast_reg_4393_pp0_iter14_reg[3] <= 1'b1;
    zext_ln391_cast_reg_4393_pp0_iter15_reg[3] <= 1'b1;
    zext_ln392_cast_reg_4399[4:3] <= 2'b10;
    zext_ln392_1_reg_4409[4] <= 1'b1;
    zext_ln392_1_reg_4409_pp0_iter12_reg[4] <= 1'b1;
    zext_ln392_1_reg_4409_pp0_iter13_reg[4] <= 1'b1;
    zext_ln392_1_reg_4409_pp0_iter14_reg[4] <= 1'b1;
    zext_ln392_1_reg_4409_pp0_iter15_reg[4] <= 1'b1;
end
endmodule 