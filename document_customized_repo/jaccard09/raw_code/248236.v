module atax_atax_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_4_address0,v116_4_ce0,v116_4_we0,v116_4_d0,v116_4_q0,v116_5_address0,v116_5_ce0,v116_5_we0,v116_5_d0,v116_5_q0,v116_6_address0,v116_6_ce0,v116_6_we0,v116_6_d0,v116_6_address1,v116_6_ce1,v116_6_q1,v116_7_address0,v116_7_ce0,v116_7_we0,v116_7_d0,v116_7_address1,v116_7_ce1,v116_7_q1,grp_fu_428_p_din0,grp_fu_428_p_din1,grp_fu_428_p_opcode,grp_fu_428_p_dout0,grp_fu_428_p_ce,grp_fu_432_p_din0,grp_fu_432_p_din1,grp_fu_432_p_opcode,grp_fu_432_p_dout0,grp_fu_432_p_ce,grp_fu_436_p_din0,grp_fu_436_p_din1,grp_fu_436_p_dout0,grp_fu_436_p_ce,grp_fu_440_p_din0,grp_fu_440_p_din1,grp_fu_440_p_dout0,grp_fu_440_p_ce); 
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [3:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [3:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [3:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
output  [2:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
input  [31:0] v116_0_q0;
output  [2:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
input  [31:0] v116_1_q0;
output  [2:0] v116_2_address0;
output   v116_2_ce0;
output   v116_2_we0;
output  [31:0] v116_2_d0;
input  [31:0] v116_2_q0;
output  [2:0] v116_3_address0;
output   v116_3_ce0;
output   v116_3_we0;
output  [31:0] v116_3_d0;
input  [31:0] v116_3_q0;
output  [2:0] v116_4_address0;
output   v116_4_ce0;
output   v116_4_we0;
output  [31:0] v116_4_d0;
input  [31:0] v116_4_q0;
output  [2:0] v116_5_address0;
output   v116_5_ce0;
output   v116_5_we0;
output  [31:0] v116_5_d0;
input  [31:0] v116_5_q0;
output  [2:0] v116_6_address0;
output   v116_6_ce0;
output   v116_6_we0;
output  [31:0] v116_6_d0;
output  [2:0] v116_6_address1;
output   v116_6_ce1;
input  [31:0] v116_6_q1;
output  [2:0] v116_7_address0;
output   v116_7_ce0;
output   v116_7_we0;
output  [31:0] v116_7_d0;
output  [2:0] v116_7_address1;
output   v116_7_ce1;
input  [31:0] v116_7_q1;
output  [31:0] grp_fu_428_p_din0;
output  [31:0] grp_fu_428_p_din1;
output  [1:0] grp_fu_428_p_opcode;
input  [31:0] grp_fu_428_p_dout0;
output   grp_fu_428_p_ce;
output  [31:0] grp_fu_432_p_din0;
output  [31:0] grp_fu_432_p_din1;
output  [1:0] grp_fu_432_p_opcode;
input  [31:0] grp_fu_432_p_dout0;
output   grp_fu_432_p_ce;
output  [31:0] grp_fu_436_p_din0;
output  [31:0] grp_fu_436_p_din1;
input  [31:0] grp_fu_436_p_dout0;
output   grp_fu_436_p_ce;
output  [31:0] grp_fu_440_p_din0;
output  [31:0] grp_fu_440_p_din1;
input  [31:0] grp_fu_440_p_dout0;
output   grp_fu_440_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[11:0] v113_address0;
reg v113_ce0;
reg[11:0] v113_address1;
reg v113_ce1;
reg[2:0] v116_0_address0;
reg v116_0_ce0;
reg v116_0_we0;
reg[31:0] v116_0_d0;
reg[2:0] v116_1_address0;
reg v116_1_ce0;
reg v116_1_we0;
reg[31:0] v116_1_d0;
reg[2:0] v116_2_address0;
reg v116_2_ce0;
reg v116_2_we0;
reg[31:0] v116_2_d0;
reg[2:0] v116_3_address0;
reg v116_3_ce0;
reg v116_3_we0;
reg[31:0] v116_3_d0;
reg[2:0] v116_4_address0;
reg v116_4_ce0;
reg v116_4_we0;
reg[31:0] v116_4_d0;
reg[2:0] v116_5_address0;
reg v116_5_ce0;
reg v116_5_we0;
reg[31:0] v116_5_d0;
reg[2:0] v116_6_address0;
reg v116_6_ce0;
reg v116_6_we0;
reg[31:0] v116_6_d0;
reg[2:0] v116_6_address1;
reg v116_6_ce1;
reg[2:0] v116_7_address0;
reg v116_7_ce0;
reg v116_7_we0;
reg[31:0] v116_7_d0;
reg[2:0] v116_7_address1;
reg v116_7_ce1;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] v4_1_reg_380;
wire    ap_CS_fsm_state2;
wire   [3:0] lshr_ln_fu_278_p4;
reg   [3:0] lshr_ln_reg_389;
wire   [63:0] zext_ln26_fu_288_p1;
reg   [63:0] zext_ln26_reg_396;
wire   [5:0] trunc_ln27_fu_308_p1;
reg   [5:0] trunc_ln27_reg_411;
wire    ap_CS_fsm_state3;
reg   [31:0] v0_0_load_reg_416;
reg   [4:0] tmp_s_reg_421;
reg   [31:0] v0_1_load_reg_432;
wire    ap_CS_fsm_state4;
wire   [11:0] tmp_36_fu_325_p3;
reg   [11:0] tmp_36_reg_440;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg   [31:0] v0_2_load_reg_458;
wire    ap_CS_fsm_state7;
reg   [31:0] v0_3_load_reg_463;
wire   [11:0] tmp_37_fu_341_p3;
reg   [11:0] tmp_37_reg_471;
wire    ap_CS_fsm_state9;
wire    grp_atax_node0_Pipeline_label_1_fu_154_ap_start;
wire    grp_atax_node0_Pipeline_label_1_fu_154_ap_done;
wire    grp_atax_node0_Pipeline_label_1_fu_154_ap_idle;
wire    grp_atax_node0_Pipeline_label_1_fu_154_ap_ready;
wire   [11:0] grp_atax_node0_Pipeline_label_1_fu_154_v113_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v113_ce0;
wire   [11:0] grp_atax_node0_Pipeline_label_1_fu_154_v113_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v113_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_154_v116_7_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v116_7_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v116_7_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_154_v116_7_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_154_v116_7_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v116_7_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_154_v116_6_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v116_6_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v116_6_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_154_v116_6_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_154_v116_6_address1;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v116_6_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_154_v116_5_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v116_5_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v116_5_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_154_v116_5_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_154_v116_4_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v116_4_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v116_4_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_154_v116_4_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_154_v116_3_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v116_3_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v116_3_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_154_v116_3_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_154_v116_2_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v116_2_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v116_2_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_154_v116_2_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_154_v116_1_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v116_1_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v116_1_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_154_v116_1_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_1_fu_154_v116_0_address0;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v116_0_ce0;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v116_0_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_154_v116_0_d0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_154_v7_4_out;
wire    grp_atax_node0_Pipeline_label_1_fu_154_v7_4_out_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_476_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_476_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_476_p_opcode;
wire    grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_476_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_480_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_480_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_480_p_opcode;
wire    grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_480_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_484_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_484_p_din1;
wire    grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_484_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_488_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_488_p_din1;
wire    grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_488_p_ce;
wire    grp_atax_node0_Pipeline_label_13_fu_181_ap_start;
wire    grp_atax_node0_Pipeline_label_13_fu_181_ap_done;
wire    grp_atax_node0_Pipeline_label_13_fu_181_ap_idle;
wire    grp_atax_node0_Pipeline_label_13_fu_181_ap_ready;
wire   [11:0] grp_atax_node0_Pipeline_label_13_fu_181_v113_address0;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v113_ce0;
wire   [11:0] grp_atax_node0_Pipeline_label_13_fu_181_v113_address1;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v113_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_13_fu_181_v116_7_address0;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v116_7_ce0;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v116_7_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_181_v116_7_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_13_fu_181_v116_7_address1;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v116_7_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_13_fu_181_v116_6_address0;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v116_6_ce0;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v116_6_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_181_v116_6_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_13_fu_181_v116_6_address1;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v116_6_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_13_fu_181_v116_5_address0;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v116_5_ce0;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v116_5_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_181_v116_5_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_13_fu_181_v116_4_address0;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v116_4_ce0;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v116_4_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_181_v116_4_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_13_fu_181_v116_3_address0;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v116_3_ce0;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v116_3_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_181_v116_3_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_13_fu_181_v116_2_address0;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v116_2_ce0;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v116_2_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_181_v116_2_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_13_fu_181_v116_1_address0;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v116_1_ce0;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v116_1_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_181_v116_1_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_13_fu_181_v116_0_address0;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v116_0_ce0;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v116_0_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_181_v116_0_d0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_181_v7_out;
wire    grp_atax_node0_Pipeline_label_13_fu_181_v7_out_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_476_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_476_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_476_p_opcode;
wire    grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_476_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_480_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_480_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_480_p_opcode;
wire    grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_480_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_484_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_484_p_din1;
wire    grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_484_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_488_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_488_p_din1;
wire    grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_488_p_ce;
wire    grp_atax_node0_Pipeline_label_14_fu_208_ap_start;
wire    grp_atax_node0_Pipeline_label_14_fu_208_ap_done;
wire    grp_atax_node0_Pipeline_label_14_fu_208_ap_idle;
wire    grp_atax_node0_Pipeline_label_14_fu_208_ap_ready;
wire   [11:0] grp_atax_node0_Pipeline_label_14_fu_208_v113_address0;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v113_ce0;
wire   [11:0] grp_atax_node0_Pipeline_label_14_fu_208_v113_address1;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v113_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_14_fu_208_v116_7_address0;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v116_7_ce0;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v116_7_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_208_v116_7_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_14_fu_208_v116_7_address1;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v116_7_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_14_fu_208_v116_6_address0;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v116_6_ce0;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v116_6_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_208_v116_6_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_14_fu_208_v116_6_address1;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v116_6_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_14_fu_208_v116_5_address0;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v116_5_ce0;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v116_5_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_208_v116_5_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_14_fu_208_v116_4_address0;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v116_4_ce0;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v116_4_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_208_v116_4_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_14_fu_208_v116_3_address0;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v116_3_ce0;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v116_3_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_208_v116_3_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_14_fu_208_v116_2_address0;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v116_2_ce0;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v116_2_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_208_v116_2_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_14_fu_208_v116_1_address0;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v116_1_ce0;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v116_1_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_208_v116_1_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_14_fu_208_v116_0_address0;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v116_0_ce0;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v116_0_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_208_v116_0_d0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_208_v7_5_out;
wire    grp_atax_node0_Pipeline_label_14_fu_208_v7_5_out_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_476_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_476_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_476_p_opcode;
wire    grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_476_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_480_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_480_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_480_p_opcode;
wire    grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_480_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_484_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_484_p_din1;
wire    grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_484_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_488_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_488_p_din1;
wire    grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_488_p_ce;
wire    grp_atax_node0_Pipeline_label_15_fu_235_ap_start;
wire    grp_atax_node0_Pipeline_label_15_fu_235_ap_done;
wire    grp_atax_node0_Pipeline_label_15_fu_235_ap_idle;
wire    grp_atax_node0_Pipeline_label_15_fu_235_ap_ready;
wire   [11:0] grp_atax_node0_Pipeline_label_15_fu_235_v113_address0;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v113_ce0;
wire   [11:0] grp_atax_node0_Pipeline_label_15_fu_235_v113_address1;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v113_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_15_fu_235_v116_7_address0;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v116_7_ce0;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v116_7_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_235_v116_7_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_15_fu_235_v116_7_address1;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v116_7_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_15_fu_235_v116_6_address0;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v116_6_ce0;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v116_6_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_235_v116_6_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_15_fu_235_v116_6_address1;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v116_6_ce1;
wire   [2:0] grp_atax_node0_Pipeline_label_15_fu_235_v116_5_address0;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v116_5_ce0;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v116_5_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_235_v116_5_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_15_fu_235_v116_4_address0;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v116_4_ce0;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v116_4_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_235_v116_4_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_15_fu_235_v116_3_address0;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v116_3_ce0;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v116_3_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_235_v116_3_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_15_fu_235_v116_2_address0;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v116_2_ce0;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v116_2_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_235_v116_2_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_15_fu_235_v116_1_address0;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v116_1_ce0;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v116_1_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_235_v116_1_d0;
wire   [2:0] grp_atax_node0_Pipeline_label_15_fu_235_v116_0_address0;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v116_0_ce0;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v116_0_we0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_235_v116_0_d0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_235_v7_6_out_o;
wire    grp_atax_node0_Pipeline_label_15_fu_235_v7_6_out_o_ap_vld;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_476_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_476_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_476_p_opcode;
wire    grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_476_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_480_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_480_p_din1;
wire   [1:0] grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_480_p_opcode;
wire    grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_480_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_484_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_484_p_din1;
wire    grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_484_p_ce;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_488_p_din0;
wire   [31:0] grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_488_p_din1;
wire    grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_488_p_ce;
reg    grp_atax_node0_Pipeline_label_1_fu_154_ap_start_reg;
reg    grp_atax_node0_Pipeline_label_13_fu_181_ap_start_reg;
reg    grp_atax_node0_Pipeline_label_14_fu_208_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    grp_atax_node0_Pipeline_label_15_fu_235_ap_start_reg;
wire    ap_CS_fsm_state10;
reg   [31:0] v3_fu_82;
wire   [0:0] tmp_fu_270_p3;
reg   [6:0] v4_fu_86;
wire   [6:0] add_ln27_fu_293_p2;
reg    v0_0_ce0_local;
reg    v0_1_ce0_local;
reg    v0_2_ce0_local;
reg    v0_3_ce0_local;
reg   [31:0] grp_fu_476_p0;
reg   [31:0] grp_fu_476_p1;
reg    grp_fu_476_ce;
reg   [31:0] grp_fu_480_p0;
reg   [31:0] grp_fu_480_p1;
reg    grp_fu_480_ce;
reg   [31:0] grp_fu_484_p0;
reg   [31:0] grp_fu_484_p1;
reg    grp_fu_484_ce;
reg   [31:0] grp_fu_488_p0;
reg   [31:0] grp_fu_488_p1;
reg    grp_fu_488_ce;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_atax_node0_Pipeline_label_1_fu_154_ap_start_reg = 1'b0;
#0 grp_atax_node0_Pipeline_label_13_fu_181_ap_start_reg = 1'b0;
#0 grp_atax_node0_Pipeline_label_14_fu_208_ap_start_reg = 1'b0;
#0 grp_atax_node0_Pipeline_label_15_fu_235_ap_start_reg = 1'b0;
#0 v4_fu_86 = 7'd0;
end
atax_atax_node0_Pipeline_label_1 grp_atax_node0_Pipeline_label_1_fu_154(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_1_fu_154_ap_start),.ap_done(grp_atax_node0_Pipeline_label_1_fu_154_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_1_fu_154_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_1_fu_154_ap_ready),.v3(v3_fu_82),.v4(trunc_ln27_reg_411),.v113_address0(grp_atax_node0_Pipeline_label_1_fu_154_v113_address0),.v113_ce0(grp_atax_node0_Pipeline_label_1_fu_154_v113_ce0),.v113_q0(v113_q0),.v113_address1(grp_atax_node0_Pipeline_label_1_fu_154_v113_address1),.v113_ce1(grp_atax_node0_Pipeline_label_1_fu_154_v113_ce1),.v113_q1(v113_q1),.v116_7_address0(grp_atax_node0_Pipeline_label_1_fu_154_v116_7_address0),.v116_7_ce0(grp_atax_node0_Pipeline_label_1_fu_154_v116_7_ce0),.v116_7_we0(grp_atax_node0_Pipeline_label_1_fu_154_v116_7_we0),.v116_7_d0(grp_atax_node0_Pipeline_label_1_fu_154_v116_7_d0),.v116_7_address1(grp_atax_node0_Pipeline_label_1_fu_154_v116_7_address1),.v116_7_ce1(grp_atax_node0_Pipeline_label_1_fu_154_v116_7_ce1),.v116_7_q1(v116_7_q1),.v116_6_address0(grp_atax_node0_Pipeline_label_1_fu_154_v116_6_address0),.v116_6_ce0(grp_atax_node0_Pipeline_label_1_fu_154_v116_6_ce0),.v116_6_we0(grp_atax_node0_Pipeline_label_1_fu_154_v116_6_we0),.v116_6_d0(grp_atax_node0_Pipeline_label_1_fu_154_v116_6_d0),.v116_6_address1(grp_atax_node0_Pipeline_label_1_fu_154_v116_6_address1),.v116_6_ce1(grp_atax_node0_Pipeline_label_1_fu_154_v116_6_ce1),.v116_6_q1(v116_6_q1),.v116_5_address0(grp_atax_node0_Pipeline_label_1_fu_154_v116_5_address0),.v116_5_ce0(grp_atax_node0_Pipeline_label_1_fu_154_v116_5_ce0),.v116_5_we0(grp_atax_node0_Pipeline_label_1_fu_154_v116_5_we0),.v116_5_d0(grp_atax_node0_Pipeline_label_1_fu_154_v116_5_d0),.v116_5_q0(v116_5_q0),.v116_4_address0(grp_atax_node0_Pipeline_label_1_fu_154_v116_4_address0),.v116_4_ce0(grp_atax_node0_Pipeline_label_1_fu_154_v116_4_ce0),.v116_4_we0(grp_atax_node0_Pipeline_label_1_fu_154_v116_4_we0),.v116_4_d0(grp_atax_node0_Pipeline_label_1_fu_154_v116_4_d0),.v116_4_q0(v116_4_q0),.v116_3_address0(grp_atax_node0_Pipeline_label_1_fu_154_v116_3_address0),.v116_3_ce0(grp_atax_node0_Pipeline_label_1_fu_154_v116_3_ce0),.v116_3_we0(grp_atax_node0_Pipeline_label_1_fu_154_v116_3_we0),.v116_3_d0(grp_atax_node0_Pipeline_label_1_fu_154_v116_3_d0),.v116_3_q0(v116_3_q0),.v116_2_address0(grp_atax_node0_Pipeline_label_1_fu_154_v116_2_address0),.v116_2_ce0(grp_atax_node0_Pipeline_label_1_fu_154_v116_2_ce0),.v116_2_we0(grp_atax_node0_Pipeline_label_1_fu_154_v116_2_we0),.v116_2_d0(grp_atax_node0_Pipeline_label_1_fu_154_v116_2_d0),.v116_2_q0(v116_2_q0),.v116_1_address0(grp_atax_node0_Pipeline_label_1_fu_154_v116_1_address0),.v116_1_ce0(grp_atax_node0_Pipeline_label_1_fu_154_v116_1_ce0),.v116_1_we0(grp_atax_node0_Pipeline_label_1_fu_154_v116_1_we0),.v116_1_d0(grp_atax_node0_Pipeline_label_1_fu_154_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_0_address0(grp_atax_node0_Pipeline_label_1_fu_154_v116_0_address0),.v116_0_ce0(grp_atax_node0_Pipeline_label_1_fu_154_v116_0_ce0),.v116_0_we0(grp_atax_node0_Pipeline_label_1_fu_154_v116_0_we0),.v116_0_d0(grp_atax_node0_Pipeline_label_1_fu_154_v116_0_d0),.v116_0_q0(v116_0_q0),.v6(v0_0_load_reg_416),.v7_4_out(grp_atax_node0_Pipeline_label_1_fu_154_v7_4_out),.v7_4_out_ap_vld(grp_atax_node0_Pipeline_label_1_fu_154_v7_4_out_ap_vld),.grp_fu_476_p_din0(grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_476_p_din0),.grp_fu_476_p_din1(grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_476_p_din1),.grp_fu_476_p_opcode(grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_476_p_opcode),.grp_fu_476_p_dout0(grp_fu_428_p_dout0),.grp_fu_476_p_ce(grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_476_p_ce),.grp_fu_480_p_din0(grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_480_p_din0),.grp_fu_480_p_din1(grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_480_p_din1),.grp_fu_480_p_opcode(grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_480_p_opcode),.grp_fu_480_p_dout0(grp_fu_432_p_dout0),.grp_fu_480_p_ce(grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_480_p_ce),.grp_fu_484_p_din0(grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_484_p_din0),.grp_fu_484_p_din1(grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_484_p_din1),.grp_fu_484_p_dout0(grp_fu_436_p_dout0),.grp_fu_484_p_ce(grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_484_p_ce),.grp_fu_488_p_din0(grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_488_p_din0),.grp_fu_488_p_din1(grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_488_p_din1),.grp_fu_488_p_dout0(grp_fu_440_p_dout0),.grp_fu_488_p_ce(grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_488_p_ce));
atax_atax_node0_Pipeline_label_13 grp_atax_node0_Pipeline_label_13_fu_181(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_13_fu_181_ap_start),.ap_done(grp_atax_node0_Pipeline_label_13_fu_181_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_13_fu_181_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_13_fu_181_ap_ready),.v7_4_reload(grp_atax_node0_Pipeline_label_1_fu_154_v7_4_out),.zext_ln33_1(tmp_36_reg_440),.v113_address0(grp_atax_node0_Pipeline_label_13_fu_181_v113_address0),.v113_ce0(grp_atax_node0_Pipeline_label_13_fu_181_v113_ce0),.v113_q0(v113_q0),.v113_address1(grp_atax_node0_Pipeline_label_13_fu_181_v113_address1),.v113_ce1(grp_atax_node0_Pipeline_label_13_fu_181_v113_ce1),.v113_q1(v113_q1),.v116_7_address0(grp_atax_node0_Pipeline_label_13_fu_181_v116_7_address0),.v116_7_ce0(grp_atax_node0_Pipeline_label_13_fu_181_v116_7_ce0),.v116_7_we0(grp_atax_node0_Pipeline_label_13_fu_181_v116_7_we0),.v116_7_d0(grp_atax_node0_Pipeline_label_13_fu_181_v116_7_d0),.v116_7_address1(grp_atax_node0_Pipeline_label_13_fu_181_v116_7_address1),.v116_7_ce1(grp_atax_node0_Pipeline_label_13_fu_181_v116_7_ce1),.v116_7_q1(v116_7_q1),.v116_6_address0(grp_atax_node0_Pipeline_label_13_fu_181_v116_6_address0),.v116_6_ce0(grp_atax_node0_Pipeline_label_13_fu_181_v116_6_ce0),.v116_6_we0(grp_atax_node0_Pipeline_label_13_fu_181_v116_6_we0),.v116_6_d0(grp_atax_node0_Pipeline_label_13_fu_181_v116_6_d0),.v116_6_address1(grp_atax_node0_Pipeline_label_13_fu_181_v116_6_address1),.v116_6_ce1(grp_atax_node0_Pipeline_label_13_fu_181_v116_6_ce1),.v116_6_q1(v116_6_q1),.v116_5_address0(grp_atax_node0_Pipeline_label_13_fu_181_v116_5_address0),.v116_5_ce0(grp_atax_node0_Pipeline_label_13_fu_181_v116_5_ce0),.v116_5_we0(grp_atax_node0_Pipeline_label_13_fu_181_v116_5_we0),.v116_5_d0(grp_atax_node0_Pipeline_label_13_fu_181_v116_5_d0),.v116_5_q0(v116_5_q0),.v116_4_address0(grp_atax_node0_Pipeline_label_13_fu_181_v116_4_address0),.v116_4_ce0(grp_atax_node0_Pipeline_label_13_fu_181_v116_4_ce0),.v116_4_we0(grp_atax_node0_Pipeline_label_13_fu_181_v116_4_we0),.v116_4_d0(grp_atax_node0_Pipeline_label_13_fu_181_v116_4_d0),.v116_4_q0(v116_4_q0),.v116_3_address0(grp_atax_node0_Pipeline_label_13_fu_181_v116_3_address0),.v116_3_ce0(grp_atax_node0_Pipeline_label_13_fu_181_v116_3_ce0),.v116_3_we0(grp_atax_node0_Pipeline_label_13_fu_181_v116_3_we0),.v116_3_d0(grp_atax_node0_Pipeline_label_13_fu_181_v116_3_d0),.v116_3_q0(v116_3_q0),.v116_2_address0(grp_atax_node0_Pipeline_label_13_fu_181_v116_2_address0),.v116_2_ce0(grp_atax_node0_Pipeline_label_13_fu_181_v116_2_ce0),.v116_2_we0(grp_atax_node0_Pipeline_label_13_fu_181_v116_2_we0),.v116_2_d0(grp_atax_node0_Pipeline_label_13_fu_181_v116_2_d0),.v116_2_q0(v116_2_q0),.v116_1_address0(grp_atax_node0_Pipeline_label_13_fu_181_v116_1_address0),.v116_1_ce0(grp_atax_node0_Pipeline_label_13_fu_181_v116_1_ce0),.v116_1_we0(grp_atax_node0_Pipeline_label_13_fu_181_v116_1_we0),.v116_1_d0(grp_atax_node0_Pipeline_label_13_fu_181_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_0_address0(grp_atax_node0_Pipeline_label_13_fu_181_v116_0_address0),.v116_0_ce0(grp_atax_node0_Pipeline_label_13_fu_181_v116_0_ce0),.v116_0_we0(grp_atax_node0_Pipeline_label_13_fu_181_v116_0_we0),.v116_0_d0(grp_atax_node0_Pipeline_label_13_fu_181_v116_0_d0),.v116_0_q0(v116_0_q0),.v6_1(v0_1_load_reg_432),.tmp_243(tmp_s_reg_421),.v7_out(grp_atax_node0_Pipeline_label_13_fu_181_v7_out),.v7_out_ap_vld(grp_atax_node0_Pipeline_label_13_fu_181_v7_out_ap_vld),.grp_fu_476_p_din0(grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_476_p_din0),.grp_fu_476_p_din1(grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_476_p_din1),.grp_fu_476_p_opcode(grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_476_p_opcode),.grp_fu_476_p_dout0(grp_fu_428_p_dout0),.grp_fu_476_p_ce(grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_476_p_ce),.grp_fu_480_p_din0(grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_480_p_din0),.grp_fu_480_p_din1(grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_480_p_din1),.grp_fu_480_p_opcode(grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_480_p_opcode),.grp_fu_480_p_dout0(grp_fu_432_p_dout0),.grp_fu_480_p_ce(grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_480_p_ce),.grp_fu_484_p_din0(grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_484_p_din0),.grp_fu_484_p_din1(grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_484_p_din1),.grp_fu_484_p_dout0(grp_fu_436_p_dout0),.grp_fu_484_p_ce(grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_484_p_ce),.grp_fu_488_p_din0(grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_488_p_din0),.grp_fu_488_p_din1(grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_488_p_din1),.grp_fu_488_p_dout0(grp_fu_440_p_dout0),.grp_fu_488_p_ce(grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_488_p_ce));
atax_atax_node0_Pipeline_label_14 grp_atax_node0_Pipeline_label_14_fu_208(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_14_fu_208_ap_start),.ap_done(grp_atax_node0_Pipeline_label_14_fu_208_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_14_fu_208_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_14_fu_208_ap_ready),.v7_reload(grp_atax_node0_Pipeline_label_13_fu_181_v7_out),.lshr_ln(lshr_ln_reg_389),.v113_address0(grp_atax_node0_Pipeline_label_14_fu_208_v113_address0),.v113_ce0(grp_atax_node0_Pipeline_label_14_fu_208_v113_ce0),.v113_q0(v113_q0),.v113_address1(grp_atax_node0_Pipeline_label_14_fu_208_v113_address1),.v113_ce1(grp_atax_node0_Pipeline_label_14_fu_208_v113_ce1),.v113_q1(v113_q1),.v116_7_address0(grp_atax_node0_Pipeline_label_14_fu_208_v116_7_address0),.v116_7_ce0(grp_atax_node0_Pipeline_label_14_fu_208_v116_7_ce0),.v116_7_we0(grp_atax_node0_Pipeline_label_14_fu_208_v116_7_we0),.v116_7_d0(grp_atax_node0_Pipeline_label_14_fu_208_v116_7_d0),.v116_7_address1(grp_atax_node0_Pipeline_label_14_fu_208_v116_7_address1),.v116_7_ce1(grp_atax_node0_Pipeline_label_14_fu_208_v116_7_ce1),.v116_7_q1(v116_7_q1),.v116_6_address0(grp_atax_node0_Pipeline_label_14_fu_208_v116_6_address0),.v116_6_ce0(grp_atax_node0_Pipeline_label_14_fu_208_v116_6_ce0),.v116_6_we0(grp_atax_node0_Pipeline_label_14_fu_208_v116_6_we0),.v116_6_d0(grp_atax_node0_Pipeline_label_14_fu_208_v116_6_d0),.v116_6_address1(grp_atax_node0_Pipeline_label_14_fu_208_v116_6_address1),.v116_6_ce1(grp_atax_node0_Pipeline_label_14_fu_208_v116_6_ce1),.v116_6_q1(v116_6_q1),.v116_5_address0(grp_atax_node0_Pipeline_label_14_fu_208_v116_5_address0),.v116_5_ce0(grp_atax_node0_Pipeline_label_14_fu_208_v116_5_ce0),.v116_5_we0(grp_atax_node0_Pipeline_label_14_fu_208_v116_5_we0),.v116_5_d0(grp_atax_node0_Pipeline_label_14_fu_208_v116_5_d0),.v116_5_q0(v116_5_q0),.v116_4_address0(grp_atax_node0_Pipeline_label_14_fu_208_v116_4_address0),.v116_4_ce0(grp_atax_node0_Pipeline_label_14_fu_208_v116_4_ce0),.v116_4_we0(grp_atax_node0_Pipeline_label_14_fu_208_v116_4_we0),.v116_4_d0(grp_atax_node0_Pipeline_label_14_fu_208_v116_4_d0),.v116_4_q0(v116_4_q0),.v116_3_address0(grp_atax_node0_Pipeline_label_14_fu_208_v116_3_address0),.v116_3_ce0(grp_atax_node0_Pipeline_label_14_fu_208_v116_3_ce0),.v116_3_we0(grp_atax_node0_Pipeline_label_14_fu_208_v116_3_we0),.v116_3_d0(grp_atax_node0_Pipeline_label_14_fu_208_v116_3_d0),.v116_3_q0(v116_3_q0),.v116_2_address0(grp_atax_node0_Pipeline_label_14_fu_208_v116_2_address0),.v116_2_ce0(grp_atax_node0_Pipeline_label_14_fu_208_v116_2_ce0),.v116_2_we0(grp_atax_node0_Pipeline_label_14_fu_208_v116_2_we0),.v116_2_d0(grp_atax_node0_Pipeline_label_14_fu_208_v116_2_d0),.v116_2_q0(v116_2_q0),.v116_1_address0(grp_atax_node0_Pipeline_label_14_fu_208_v116_1_address0),.v116_1_ce0(grp_atax_node0_Pipeline_label_14_fu_208_v116_1_ce0),.v116_1_we0(grp_atax_node0_Pipeline_label_14_fu_208_v116_1_we0),.v116_1_d0(grp_atax_node0_Pipeline_label_14_fu_208_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_0_address0(grp_atax_node0_Pipeline_label_14_fu_208_v116_0_address0),.v116_0_ce0(grp_atax_node0_Pipeline_label_14_fu_208_v116_0_ce0),.v116_0_we0(grp_atax_node0_Pipeline_label_14_fu_208_v116_0_we0),.v116_0_d0(grp_atax_node0_Pipeline_label_14_fu_208_v116_0_d0),.v116_0_q0(v116_0_q0),.v6_2(v0_2_load_reg_458),.v7_5_out(grp_atax_node0_Pipeline_label_14_fu_208_v7_5_out),.v7_5_out_ap_vld(grp_atax_node0_Pipeline_label_14_fu_208_v7_5_out_ap_vld),.grp_fu_476_p_din0(grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_476_p_din0),.grp_fu_476_p_din1(grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_476_p_din1),.grp_fu_476_p_opcode(grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_476_p_opcode),.grp_fu_476_p_dout0(grp_fu_428_p_dout0),.grp_fu_476_p_ce(grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_476_p_ce),.grp_fu_480_p_din0(grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_480_p_din0),.grp_fu_480_p_din1(grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_480_p_din1),.grp_fu_480_p_opcode(grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_480_p_opcode),.grp_fu_480_p_dout0(grp_fu_432_p_dout0),.grp_fu_480_p_ce(grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_480_p_ce),.grp_fu_484_p_din0(grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_484_p_din0),.grp_fu_484_p_din1(grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_484_p_din1),.grp_fu_484_p_dout0(grp_fu_436_p_dout0),.grp_fu_484_p_ce(grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_484_p_ce),.grp_fu_488_p_din0(grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_488_p_din0),.grp_fu_488_p_din1(grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_488_p_din1),.grp_fu_488_p_dout0(grp_fu_440_p_dout0),.grp_fu_488_p_ce(grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_488_p_ce));
atax_atax_node0_Pipeline_label_15 grp_atax_node0_Pipeline_label_15_fu_235(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_atax_node0_Pipeline_label_15_fu_235_ap_start),.ap_done(grp_atax_node0_Pipeline_label_15_fu_235_ap_done),.ap_idle(grp_atax_node0_Pipeline_label_15_fu_235_ap_idle),.ap_ready(grp_atax_node0_Pipeline_label_15_fu_235_ap_ready),.v7_5_reload(grp_atax_node0_Pipeline_label_14_fu_208_v7_5_out),.zext_ln33_3(tmp_37_reg_471),.v113_address0(grp_atax_node0_Pipeline_label_15_fu_235_v113_address0),.v113_ce0(grp_atax_node0_Pipeline_label_15_fu_235_v113_ce0),.v113_q0(v113_q0),.v113_address1(grp_atax_node0_Pipeline_label_15_fu_235_v113_address1),.v113_ce1(grp_atax_node0_Pipeline_label_15_fu_235_v113_ce1),.v113_q1(v113_q1),.v116_7_address0(grp_atax_node0_Pipeline_label_15_fu_235_v116_7_address0),.v116_7_ce0(grp_atax_node0_Pipeline_label_15_fu_235_v116_7_ce0),.v116_7_we0(grp_atax_node0_Pipeline_label_15_fu_235_v116_7_we0),.v116_7_d0(grp_atax_node0_Pipeline_label_15_fu_235_v116_7_d0),.v116_7_address1(grp_atax_node0_Pipeline_label_15_fu_235_v116_7_address1),.v116_7_ce1(grp_atax_node0_Pipeline_label_15_fu_235_v116_7_ce1),.v116_7_q1(v116_7_q1),.v116_6_address0(grp_atax_node0_Pipeline_label_15_fu_235_v116_6_address0),.v116_6_ce0(grp_atax_node0_Pipeline_label_15_fu_235_v116_6_ce0),.v116_6_we0(grp_atax_node0_Pipeline_label_15_fu_235_v116_6_we0),.v116_6_d0(grp_atax_node0_Pipeline_label_15_fu_235_v116_6_d0),.v116_6_address1(grp_atax_node0_Pipeline_label_15_fu_235_v116_6_address1),.v116_6_ce1(grp_atax_node0_Pipeline_label_15_fu_235_v116_6_ce1),.v116_6_q1(v116_6_q1),.v116_5_address0(grp_atax_node0_Pipeline_label_15_fu_235_v116_5_address0),.v116_5_ce0(grp_atax_node0_Pipeline_label_15_fu_235_v116_5_ce0),.v116_5_we0(grp_atax_node0_Pipeline_label_15_fu_235_v116_5_we0),.v116_5_d0(grp_atax_node0_Pipeline_label_15_fu_235_v116_5_d0),.v116_5_q0(v116_5_q0),.v116_4_address0(grp_atax_node0_Pipeline_label_15_fu_235_v116_4_address0),.v116_4_ce0(grp_atax_node0_Pipeline_label_15_fu_235_v116_4_ce0),.v116_4_we0(grp_atax_node0_Pipeline_label_15_fu_235_v116_4_we0),.v116_4_d0(grp_atax_node0_Pipeline_label_15_fu_235_v116_4_d0),.v116_4_q0(v116_4_q0),.v116_3_address0(grp_atax_node0_Pipeline_label_15_fu_235_v116_3_address0),.v116_3_ce0(grp_atax_node0_Pipeline_label_15_fu_235_v116_3_ce0),.v116_3_we0(grp_atax_node0_Pipeline_label_15_fu_235_v116_3_we0),.v116_3_d0(grp_atax_node0_Pipeline_label_15_fu_235_v116_3_d0),.v116_3_q0(v116_3_q0),.v116_2_address0(grp_atax_node0_Pipeline_label_15_fu_235_v116_2_address0),.v116_2_ce0(grp_atax_node0_Pipeline_label_15_fu_235_v116_2_ce0),.v116_2_we0(grp_atax_node0_Pipeline_label_15_fu_235_v116_2_we0),.v116_2_d0(grp_atax_node0_Pipeline_label_15_fu_235_v116_2_d0),.v116_2_q0(v116_2_q0),.v116_1_address0(grp_atax_node0_Pipeline_label_15_fu_235_v116_1_address0),.v116_1_ce0(grp_atax_node0_Pipeline_label_15_fu_235_v116_1_ce0),.v116_1_we0(grp_atax_node0_Pipeline_label_15_fu_235_v116_1_we0),.v116_1_d0(grp_atax_node0_Pipeline_label_15_fu_235_v116_1_d0),.v116_1_q0(v116_1_q0),.v116_0_address0(grp_atax_node0_Pipeline_label_15_fu_235_v116_0_address0),.v116_0_ce0(grp_atax_node0_Pipeline_label_15_fu_235_v116_0_ce0),.v116_0_we0(grp_atax_node0_Pipeline_label_15_fu_235_v116_0_we0),.v116_0_d0(grp_atax_node0_Pipeline_label_15_fu_235_v116_0_d0),.v116_0_q0(v116_0_q0),.v6_3(v0_3_load_reg_463),.lshr_ln(lshr_ln_reg_389),.v7_6_out_i(v3_fu_82),.v7_6_out_o(grp_atax_node0_Pipeline_label_15_fu_235_v7_6_out_o),.v7_6_out_o_ap_vld(grp_atax_node0_Pipeline_label_15_fu_235_v7_6_out_o_ap_vld),.grp_fu_476_p_din0(grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_476_p_din0),.grp_fu_476_p_din1(grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_476_p_din1),.grp_fu_476_p_opcode(grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_476_p_opcode),.grp_fu_476_p_dout0(grp_fu_428_p_dout0),.grp_fu_476_p_ce(grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_476_p_ce),.grp_fu_480_p_din0(grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_480_p_din0),.grp_fu_480_p_din1(grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_480_p_din1),.grp_fu_480_p_opcode(grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_480_p_opcode),.grp_fu_480_p_dout0(grp_fu_432_p_dout0),.grp_fu_480_p_ce(grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_480_p_ce),.grp_fu_484_p_din0(grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_484_p_din0),.grp_fu_484_p_din1(grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_484_p_din1),.grp_fu_484_p_dout0(grp_fu_436_p_dout0),.grp_fu_484_p_ce(grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_484_p_ce),.grp_fu_488_p_din0(grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_488_p_din0),.grp_fu_488_p_din1(grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_488_p_din1),.grp_fu_488_p_dout0(grp_fu_440_p_dout0),.grp_fu_488_p_ce(grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_488_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_13_fu_181_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_atax_node0_Pipeline_label_13_fu_181_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_13_fu_181_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_13_fu_181_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_14_fu_208_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_atax_node0_Pipeline_label_14_fu_208_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_14_fu_208_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_14_fu_208_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_15_fu_235_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_atax_node0_Pipeline_label_15_fu_235_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_15_fu_235_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_15_fu_235_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_atax_node0_Pipeline_label_1_fu_154_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_atax_node0_Pipeline_label_1_fu_154_ap_start_reg <= 1'b1;
        end else if ((grp_atax_node0_Pipeline_label_1_fu_154_ap_ready == 1'b1)) begin
            grp_atax_node0_Pipeline_label_1_fu_154_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v4_fu_86 <= 7'd0;
    end else if (((tmp_fu_270_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v4_fu_86 <= add_ln27_fu_293_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        lshr_ln_reg_389 <= {{v4_fu_86[5:2]}};
        v4_1_reg_380 <= v4_fu_86;
        zext_ln26_reg_396[3 : 0] <= zext_ln26_fu_288_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_36_reg_440[11 : 7] <= tmp_36_fu_325_p3[11 : 7];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_37_reg_471[11 : 8] <= tmp_37_fu_341_p3[11 : 8];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_s_reg_421 <= {{v4_1_reg_380[5:1]}};
        trunc_ln27_reg_411 <= trunc_ln27_fu_308_p1;
        v0_0_load_reg_416 <= v0_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v0_1_load_reg_432 <= v0_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v0_2_load_reg_458 <= v0_2_q0;
        v0_3_load_reg_463 <= v0_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_atax_node0_Pipeline_label_15_fu_235_v7_6_out_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        v3_fu_82 <= grp_atax_node0_Pipeline_label_15_fu_235_v7_6_out_o;
    end
end
always @ (*) begin
    if ((grp_atax_node0_Pipeline_label_15_fu_235_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
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
    if ((grp_atax_node0_Pipeline_label_1_fu_154_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node0_Pipeline_label_13_fu_181_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_atax_node0_Pipeline_label_14_fu_208_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((tmp_fu_270_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((tmp_fu_270_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_476_ce = grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_476_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_476_ce = grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_476_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_476_ce = grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_476_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_476_ce = grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_476_p_ce;
    end else begin
        grp_fu_476_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_476_p0 = grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_476_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_476_p0 = grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_476_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_476_p0 = grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_476_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_476_p0 = grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_476_p_din0;
    end else begin
        grp_fu_476_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_476_p1 = grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_476_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_476_p1 = grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_476_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_476_p1 = grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_476_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_476_p1 = grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_476_p_din1;
    end else begin
        grp_fu_476_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_480_ce = grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_480_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_480_ce = grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_480_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_480_ce = grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_480_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_480_ce = grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_480_p_ce;
    end else begin
        grp_fu_480_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_480_p0 = grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_480_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_480_p0 = grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_480_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_480_p0 = grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_480_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_480_p0 = grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_480_p_din0;
    end else begin
        grp_fu_480_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_480_p1 = grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_480_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_480_p1 = grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_480_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_480_p1 = grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_480_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_480_p1 = grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_480_p_din1;
    end else begin
        grp_fu_480_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_484_ce = grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_484_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_484_ce = grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_484_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_484_ce = grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_484_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_484_ce = grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_484_p_ce;
    end else begin
        grp_fu_484_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_484_p0 = grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_484_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_484_p0 = grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_484_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_484_p0 = grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_484_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_484_p0 = grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_484_p_din0;
    end else begin
        grp_fu_484_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_484_p1 = grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_484_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_484_p1 = grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_484_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_484_p1 = grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_484_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_484_p1 = grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_484_p_din1;
    end else begin
        grp_fu_484_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_488_ce = grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_488_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_488_ce = grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_488_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_488_ce = grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_488_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_488_ce = grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_488_p_ce;
    end else begin
        grp_fu_488_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_488_p0 = grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_488_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_488_p0 = grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_488_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_488_p0 = grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_488_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_488_p0 = grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_488_p_din0;
    end else begin
        grp_fu_488_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_488_p1 = grp_atax_node0_Pipeline_label_15_fu_235_grp_fu_488_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_488_p1 = grp_atax_node0_Pipeline_label_14_fu_208_grp_fu_488_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_488_p1 = grp_atax_node0_Pipeline_label_13_fu_181_grp_fu_488_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_488_p1 = grp_atax_node0_Pipeline_label_1_fu_154_grp_fu_488_p_din1;
    end else begin
        grp_fu_488_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((grp_atax_node0_Pipeline_label_13_fu_181_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((grp_atax_node0_Pipeline_label_13_fu_181_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_address0 = grp_atax_node0_Pipeline_label_15_fu_235_v113_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_address0 = grp_atax_node0_Pipeline_label_14_fu_208_v113_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_address0 = grp_atax_node0_Pipeline_label_13_fu_181_v113_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_address0 = grp_atax_node0_Pipeline_label_1_fu_154_v113_address0;
    end else begin
        v113_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_address1 = grp_atax_node0_Pipeline_label_15_fu_235_v113_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_address1 = grp_atax_node0_Pipeline_label_14_fu_208_v113_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_address1 = grp_atax_node0_Pipeline_label_13_fu_181_v113_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_address1 = grp_atax_node0_Pipeline_label_1_fu_154_v113_address1;
    end else begin
        v113_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_ce0 = grp_atax_node0_Pipeline_label_15_fu_235_v113_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_ce0 = grp_atax_node0_Pipeline_label_14_fu_208_v113_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_ce0 = grp_atax_node0_Pipeline_label_13_fu_181_v113_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_ce0 = grp_atax_node0_Pipeline_label_1_fu_154_v113_ce0;
    end else begin
        v113_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v113_ce1 = grp_atax_node0_Pipeline_label_15_fu_235_v113_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v113_ce1 = grp_atax_node0_Pipeline_label_14_fu_208_v113_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v113_ce1 = grp_atax_node0_Pipeline_label_13_fu_181_v113_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v113_ce1 = grp_atax_node0_Pipeline_label_1_fu_154_v113_ce1;
    end else begin
        v113_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_0_address0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_0_address0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_address0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_address0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_0_address0;
    end else begin
        v116_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_0_ce0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_0_ce0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_ce0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_ce0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_0_ce0;
    end else begin
        v116_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_0_d0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_0_d0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_d0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_d0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_0_d0;
    end else begin
        v116_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_0_we0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_0_we0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_0_we0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_0_we0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_0_we0;
    end else begin
        v116_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_1_address0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_1_address0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_address0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_address0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_1_address0;
    end else begin
        v116_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_1_ce0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_1_ce0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_ce0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_ce0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_1_ce0;
    end else begin
        v116_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_1_d0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_1_d0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_d0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_d0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_1_d0;
    end else begin
        v116_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_1_we0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_1_we0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_1_we0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_1_we0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_1_we0;
    end else begin
        v116_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_2_address0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_2_address0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_2_address0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_2_address0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_2_address0;
    end else begin
        v116_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_2_ce0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_2_ce0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_2_ce0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_2_ce0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_2_ce0;
    end else begin
        v116_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_2_d0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_2_d0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_2_d0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_2_d0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_2_d0;
    end else begin
        v116_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_2_we0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_2_we0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_2_we0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_2_we0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_2_we0;
    end else begin
        v116_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_3_address0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_3_address0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_3_address0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_3_address0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_3_address0;
    end else begin
        v116_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_3_ce0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_3_ce0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_3_ce0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_3_ce0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_3_ce0;
    end else begin
        v116_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_3_d0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_3_d0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_3_d0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_3_d0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_3_d0;
    end else begin
        v116_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_3_we0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_3_we0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_3_we0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_3_we0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_3_we0;
    end else begin
        v116_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_4_address0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_4_address0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_4_address0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_4_address0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_4_address0;
    end else begin
        v116_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_4_ce0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_4_ce0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_4_ce0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_4_ce0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_4_ce0;
    end else begin
        v116_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_4_d0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_4_d0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_4_d0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_4_d0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_4_d0;
    end else begin
        v116_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_4_we0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_4_we0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_4_we0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_4_we0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_4_we0;
    end else begin
        v116_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_5_address0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_5_address0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_5_address0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_5_address0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_5_address0;
    end else begin
        v116_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_5_ce0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_5_ce0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_5_ce0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_5_ce0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_5_ce0;
    end else begin
        v116_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_5_d0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_5_d0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_5_d0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_5_d0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_5_d0;
    end else begin
        v116_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_5_we0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_5_we0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_5_we0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_5_we0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_5_we0;
    end else begin
        v116_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_6_address0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_6_address0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_6_address0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_6_address0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_6_address0;
    end else begin
        v116_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_6_address1 = grp_atax_node0_Pipeline_label_15_fu_235_v116_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_6_address1 = grp_atax_node0_Pipeline_label_14_fu_208_v116_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_6_address1 = grp_atax_node0_Pipeline_label_13_fu_181_v116_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_6_address1 = grp_atax_node0_Pipeline_label_1_fu_154_v116_6_address1;
    end else begin
        v116_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_6_ce0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_6_ce0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_6_ce0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_6_ce0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_6_ce0;
    end else begin
        v116_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_6_ce1 = grp_atax_node0_Pipeline_label_15_fu_235_v116_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_6_ce1 = grp_atax_node0_Pipeline_label_14_fu_208_v116_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_6_ce1 = grp_atax_node0_Pipeline_label_13_fu_181_v116_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_6_ce1 = grp_atax_node0_Pipeline_label_1_fu_154_v116_6_ce1;
    end else begin
        v116_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_6_d0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_6_d0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_6_d0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_6_d0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_6_d0;
    end else begin
        v116_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_6_we0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_6_we0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_6_we0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_6_we0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_6_we0;
    end else begin
        v116_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_7_address0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_7_address0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_7_address0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_7_address0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_7_address0;
    end else begin
        v116_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_7_address1 = grp_atax_node0_Pipeline_label_15_fu_235_v116_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_7_address1 = grp_atax_node0_Pipeline_label_14_fu_208_v116_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_7_address1 = grp_atax_node0_Pipeline_label_13_fu_181_v116_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_7_address1 = grp_atax_node0_Pipeline_label_1_fu_154_v116_7_address1;
    end else begin
        v116_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_7_ce0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_7_ce0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_7_ce0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_7_ce0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_7_ce0;
    end else begin
        v116_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_7_ce1 = grp_atax_node0_Pipeline_label_15_fu_235_v116_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_7_ce1 = grp_atax_node0_Pipeline_label_14_fu_208_v116_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_7_ce1 = grp_atax_node0_Pipeline_label_13_fu_181_v116_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_7_ce1 = grp_atax_node0_Pipeline_label_1_fu_154_v116_7_ce1;
    end else begin
        v116_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_7_d0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_7_d0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_7_d0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_7_d0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_7_d0;
    end else begin
        v116_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v116_7_we0 = grp_atax_node0_Pipeline_label_15_fu_235_v116_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v116_7_we0 = grp_atax_node0_Pipeline_label_14_fu_208_v116_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v116_7_we0 = grp_atax_node0_Pipeline_label_13_fu_181_v116_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v116_7_we0 = grp_atax_node0_Pipeline_label_1_fu_154_v116_7_we0;
    end else begin
        v116_7_we0 = 1'b0;
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
            if (((tmp_fu_270_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_atax_node0_Pipeline_label_1_fu_154_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_atax_node0_Pipeline_label_13_fu_181_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_atax_node0_Pipeline_label_14_fu_208_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_atax_node0_Pipeline_label_15_fu_235_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln27_fu_293_p2 = (v4_fu_86 + 7'd4);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign grp_atax_node0_Pipeline_label_13_fu_181_ap_start = grp_atax_node0_Pipeline_label_13_fu_181_ap_start_reg;
assign grp_atax_node0_Pipeline_label_14_fu_208_ap_start = grp_atax_node0_Pipeline_label_14_fu_208_ap_start_reg;
assign grp_atax_node0_Pipeline_label_15_fu_235_ap_start = grp_atax_node0_Pipeline_label_15_fu_235_ap_start_reg;
assign grp_atax_node0_Pipeline_label_1_fu_154_ap_start = grp_atax_node0_Pipeline_label_1_fu_154_ap_start_reg;
assign grp_fu_428_p_ce = grp_fu_476_ce;
assign grp_fu_428_p_din0 = grp_fu_476_p0;
assign grp_fu_428_p_din1 = grp_fu_476_p1;
assign grp_fu_428_p_opcode = 2'd0;
assign grp_fu_432_p_ce = grp_fu_480_ce;
assign grp_fu_432_p_din0 = grp_fu_480_p0;
assign grp_fu_432_p_din1 = grp_fu_480_p1;
assign grp_fu_432_p_opcode = 2'd0;
assign grp_fu_436_p_ce = grp_fu_484_ce;
assign grp_fu_436_p_din0 = grp_fu_484_p0;
assign grp_fu_436_p_din1 = grp_fu_484_p1;
assign grp_fu_440_p_ce = grp_fu_488_ce;
assign grp_fu_440_p_din0 = grp_fu_488_p0;
assign grp_fu_440_p_din1 = grp_fu_488_p1;
assign lshr_ln_fu_278_p4 = {{v4_fu_86[5:2]}};
assign tmp_36_fu_325_p3 = {{tmp_s_reg_421}, {7'd64}};
assign tmp_37_fu_341_p3 = {{lshr_ln_reg_389}, {8'd192}};
assign tmp_fu_270_p3 = v4_fu_86[32'd6];
assign trunc_ln27_fu_308_p1 = v4_1_reg_380[5:0];
assign v0_0_address0 = zext_ln26_fu_288_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = zext_ln26_reg_396;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = zext_ln26_reg_396;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = zext_ln26_reg_396;
assign v0_3_ce0 = v0_3_ce0_local;
assign zext_ln26_fu_288_p1 = lshr_ln_fu_278_p4;
always @ (posedge ap_clk) begin
    zext_ln26_reg_396[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    tmp_36_reg_440[6:0] <= 7'b1000000;
    tmp_37_reg_471[7:0] <= 8'b11000000;
end
endmodule 