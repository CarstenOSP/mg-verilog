
module fft1D_512_fft1D_512_Pipeline_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_15_address0,DATA_y_15_ce0,DATA_y_15_we0,DATA_y_15_d0,DATA_y_14_address0,DATA_y_14_ce0,DATA_y_14_we0,DATA_y_14_d0,DATA_y_13_address0,DATA_y_13_ce0,DATA_y_13_we0,DATA_y_13_d0,DATA_y_12_address0,DATA_y_12_ce0,DATA_y_12_we0,DATA_y_12_d0,DATA_y_11_address0,DATA_y_11_ce0,DATA_y_11_we0,DATA_y_11_d0,DATA_y_10_address0,DATA_y_10_ce0,DATA_y_10_we0,DATA_y_10_d0,DATA_y_9_address0,DATA_y_9_ce0,DATA_y_9_we0,DATA_y_9_d0,DATA_y_8_address0,DATA_y_8_ce0,DATA_y_8_we0,DATA_y_8_d0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_we0,DATA_y_7_d0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_we0,DATA_y_6_d0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_we0,DATA_y_5_d0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_we0,DATA_y_4_d0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_we0,DATA_y_3_d0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_we0,DATA_y_2_d0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_we0,DATA_x_15_d0,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_we0,DATA_x_14_d0,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_we0,DATA_x_13_d0,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_we0,DATA_x_12_d0,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_we0,DATA_x_11_d0,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_we0,DATA_x_10_d0,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_we0,DATA_x_9_d0,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_we0,DATA_x_8_d0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,work_x_address0,work_x_ce0,work_x_q0,work_x_address1,work_x_ce1,work_x_q1,work_y_address0,work_y_ce0,work_y_q0,work_y_address1,work_y_ce1,work_y_q1,grp_fu_672_p_din0,grp_fu_672_p_din1,grp_fu_672_p_opcode,grp_fu_672_p_dout0,grp_fu_672_p_ce,grp_fu_676_p_din0,grp_fu_676_p_din1,grp_fu_676_p_opcode,grp_fu_676_p_dout0,grp_fu_676_p_ce,grp_fu_680_p_din0,grp_fu_680_p_din1,grp_fu_680_p_opcode,grp_fu_680_p_dout0,grp_fu_680_p_ce,grp_fu_684_p_din0,grp_fu_684_p_din1,grp_fu_684_p_opcode,grp_fu_684_p_dout0,grp_fu_684_p_ce,grp_fu_688_p_din0,grp_fu_688_p_din1,grp_fu_688_p_opcode,grp_fu_688_p_dout0,grp_fu_688_p_ce,grp_fu_692_p_din0,grp_fu_692_p_din1,grp_fu_692_p_opcode,grp_fu_692_p_dout0,grp_fu_692_p_ce,grp_fu_696_p_din0,grp_fu_696_p_din1,grp_fu_696_p_opcode,grp_fu_696_p_dout0,grp_fu_696_p_ce,grp_fu_700_p_din0,grp_fu_700_p_din1,grp_fu_700_p_opcode,grp_fu_700_p_dout0,grp_fu_700_p_ce,grp_fu_704_p_din0,grp_fu_704_p_din1,grp_fu_704_p_opcode,grp_fu_704_p_dout0,grp_fu_704_p_ce,grp_fu_708_p_din0,grp_fu_708_p_din1,grp_fu_708_p_opcode,grp_fu_708_p_dout0,grp_fu_708_p_ce,grp_fu_712_p_din0,grp_fu_712_p_din1,grp_fu_712_p_opcode,grp_fu_712_p_dout0,grp_fu_712_p_ce,grp_fu_716_p_din0,grp_fu_716_p_din1,grp_fu_716_p_opcode,grp_fu_716_p_dout0,grp_fu_716_p_ce,grp_fu_720_p_din0,grp_fu_720_p_din1,grp_fu_720_p_opcode,grp_fu_720_p_dout0,grp_fu_720_p_ce,grp_fu_724_p_din0,grp_fu_724_p_din1,grp_fu_724_p_opcode,grp_fu_724_p_dout0,grp_fu_724_p_ce,grp_fu_728_p_din0,grp_fu_728_p_din1,grp_fu_728_p_opcode,grp_fu_728_p_dout0,grp_fu_728_p_ce,grp_fu_732_p_din0,grp_fu_732_p_din1,grp_fu_732_p_dout0,grp_fu_732_p_ce,grp_fu_736_p_din0,grp_fu_736_p_din1,grp_fu_736_p_dout0,grp_fu_736_p_ce,grp_fu_740_p_din0,grp_fu_740_p_din1,grp_fu_740_p_dout0,grp_fu_740_p_ce,grp_twiddles8_fu_744_p_din1,grp_twiddles8_fu_744_p_din2,grp_twiddles8_fu_744_p_din3,grp_twiddles8_fu_744_p_din4,grp_twiddles8_fu_744_p_din5,grp_twiddles8_fu_744_p_din6,grp_twiddles8_fu_744_p_din7,grp_twiddles8_fu_744_p_din8,grp_twiddles8_fu_744_p_din9,grp_twiddles8_fu_744_p_din10,grp_twiddles8_fu_744_p_din11,grp_twiddles8_fu_744_p_din12,grp_twiddles8_fu_744_p_din13,grp_twiddles8_fu_744_p_din14,grp_twiddles8_fu_744_p_din15,grp_twiddles8_fu_744_p_din16,grp_twiddles8_fu_744_p_dout0_0,grp_twiddles8_fu_744_p_dout0_1,grp_twiddles8_fu_744_p_dout0_2,grp_twiddles8_fu_744_p_dout0_3,grp_twiddles8_fu_744_p_dout0_4,grp_twiddles8_fu_744_p_dout0_5,grp_twiddles8_fu_744_p_dout0_6,grp_twiddles8_fu_744_p_dout0_7,grp_twiddles8_fu_744_p_dout0_8,grp_twiddles8_fu_744_p_dout0_9,grp_twiddles8_fu_744_p_dout0_10,grp_twiddles8_fu_744_p_dout0_11,grp_twiddles8_fu_744_p_dout0_12,grp_twiddles8_fu_744_p_dout0_13,grp_twiddles8_fu_744_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] DATA_y_15_address0;
output   DATA_y_15_ce0;
output   DATA_y_15_we0;
output  [63:0] DATA_y_15_d0;
output  [4:0] DATA_y_14_address0;
output   DATA_y_14_ce0;
output   DATA_y_14_we0;
output  [63:0] DATA_y_14_d0;
output  [4:0] DATA_y_13_address0;
output   DATA_y_13_ce0;
output   DATA_y_13_we0;
output  [63:0] DATA_y_13_d0;
output  [4:0] DATA_y_12_address0;
output   DATA_y_12_ce0;
output   DATA_y_12_we0;
output  [63:0] DATA_y_12_d0;
output  [4:0] DATA_y_11_address0;
output   DATA_y_11_ce0;
output   DATA_y_11_we0;
output  [63:0] DATA_y_11_d0;
output  [4:0] DATA_y_10_address0;
output   DATA_y_10_ce0;
output   DATA_y_10_we0;
output  [63:0] DATA_y_10_d0;
output  [4:0] DATA_y_9_address0;
output   DATA_y_9_ce0;
output   DATA_y_9_we0;
output  [63:0] DATA_y_9_d0;
output  [4:0] DATA_y_8_address0;
output   DATA_y_8_ce0;
output   DATA_y_8_we0;
output  [63:0] DATA_y_8_d0;
output  [4:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
output   DATA_y_7_we0;
output  [63:0] DATA_y_7_d0;
output  [4:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
output   DATA_y_6_we0;
output  [63:0] DATA_y_6_d0;
output  [4:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
output   DATA_y_5_we0;
output  [63:0] DATA_y_5_d0;
output  [4:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
output   DATA_y_4_we0;
output  [63:0] DATA_y_4_d0;
output  [4:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
output   DATA_y_3_we0;
output  [63:0] DATA_y_3_d0;
output  [4:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
output   DATA_y_2_we0;
output  [63:0] DATA_y_2_d0;
output  [4:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [4:0] DATA_y_address0;
output   DATA_y_ce0;
output   DATA_y_we0;
output  [63:0] DATA_y_d0;
output  [4:0] DATA_x_15_address0;
output   DATA_x_15_ce0;
output   DATA_x_15_we0;
output  [63:0] DATA_x_15_d0;
output  [4:0] DATA_x_14_address0;
output   DATA_x_14_ce0;
output   DATA_x_14_we0;
output  [63:0] DATA_x_14_d0;
output  [4:0] DATA_x_13_address0;
output   DATA_x_13_ce0;
output   DATA_x_13_we0;
output  [63:0] DATA_x_13_d0;
output  [4:0] DATA_x_12_address0;
output   DATA_x_12_ce0;
output   DATA_x_12_we0;
output  [63:0] DATA_x_12_d0;
output  [4:0] DATA_x_11_address0;
output   DATA_x_11_ce0;
output   DATA_x_11_we0;
output  [63:0] DATA_x_11_d0;
output  [4:0] DATA_x_10_address0;
output   DATA_x_10_ce0;
output   DATA_x_10_we0;
output  [63:0] DATA_x_10_d0;
output  [4:0] DATA_x_9_address0;
output   DATA_x_9_ce0;
output   DATA_x_9_we0;
output  [63:0] DATA_x_9_d0;
output  [4:0] DATA_x_8_address0;
output   DATA_x_8_ce0;
output   DATA_x_8_we0;
output  [63:0] DATA_x_8_d0;
output  [4:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
output   DATA_x_7_we0;
output  [63:0] DATA_x_7_d0;
output  [4:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
output   DATA_x_6_we0;
output  [63:0] DATA_x_6_d0;
output  [4:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
output   DATA_x_5_we0;
output  [63:0] DATA_x_5_d0;
output  [4:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
output   DATA_x_4_we0;
output  [63:0] DATA_x_4_d0;
output  [4:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
output   DATA_x_3_we0;
output  [63:0] DATA_x_3_d0;
output  [4:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
output   DATA_x_2_we0;
output  [63:0] DATA_x_2_d0;
output  [4:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [4:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [8:0] work_x_address0;
output   work_x_ce0;
input  [63:0] work_x_q0;
output  [8:0] work_x_address1;
output   work_x_ce1;
input  [63:0] work_x_q1;
output  [8:0] work_y_address0;
output   work_y_ce0;
input  [63:0] work_y_q0;
output  [8:0] work_y_address1;
output   work_y_ce1;
input  [63:0] work_y_q1;
output  [63:0] grp_fu_672_p_din0;
output  [63:0] grp_fu_672_p_din1;
output  [0:0] grp_fu_672_p_opcode;
input  [63:0] grp_fu_672_p_dout0;
output   grp_fu_672_p_ce;
output  [63:0] grp_fu_676_p_din0;
output  [63:0] grp_fu_676_p_din1;
output  [0:0] grp_fu_676_p_opcode;
input  [63:0] grp_fu_676_p_dout0;
output   grp_fu_676_p_ce;
output  [63:0] grp_fu_680_p_din0;
output  [63:0] grp_fu_680_p_din1;
output  [1:0] grp_fu_680_p_opcode;
input  [63:0] grp_fu_680_p_dout0;
output   grp_fu_680_p_ce;
output  [63:0] grp_fu_684_p_din0;
output  [63:0] grp_fu_684_p_din1;
output  [0:0] grp_fu_684_p_opcode;
input  [63:0] grp_fu_684_p_dout0;
output   grp_fu_684_p_ce;
output  [63:0] grp_fu_688_p_din0;
output  [63:0] grp_fu_688_p_din1;
output  [1:0] grp_fu_688_p_opcode;
input  [63:0] grp_fu_688_p_dout0;
output   grp_fu_688_p_ce;
output  [63:0] grp_fu_692_p_din0;
output  [63:0] grp_fu_692_p_din1;
output  [0:0] grp_fu_692_p_opcode;
input  [63:0] grp_fu_692_p_dout0;
output   grp_fu_692_p_ce;
output  [63:0] grp_fu_696_p_din0;
output  [63:0] grp_fu_696_p_din1;
output  [1:0] grp_fu_696_p_opcode;
input  [63:0] grp_fu_696_p_dout0;
output   grp_fu_696_p_ce;
output  [63:0] grp_fu_700_p_din0;
output  [63:0] grp_fu_700_p_din1;
output  [1:0] grp_fu_700_p_opcode;
input  [63:0] grp_fu_700_p_dout0;
output   grp_fu_700_p_ce;
output  [63:0] grp_fu_704_p_din0;
output  [63:0] grp_fu_704_p_din1;
output  [1:0] grp_fu_704_p_opcode;
input  [63:0] grp_fu_704_p_dout0;
output   grp_fu_704_p_ce;
output  [63:0] grp_fu_708_p_din0;
output  [63:0] grp_fu_708_p_din1;
output  [1:0] grp_fu_708_p_opcode;
input  [63:0] grp_fu_708_p_dout0;
output   grp_fu_708_p_ce;
output  [63:0] grp_fu_712_p_din0;
output  [63:0] grp_fu_712_p_din1;
output  [1:0] grp_fu_712_p_opcode;
input  [63:0] grp_fu_712_p_dout0;
output   grp_fu_712_p_ce;
output  [63:0] grp_fu_716_p_din0;
output  [63:0] grp_fu_716_p_din1;
output  [1:0] grp_fu_716_p_opcode;
input  [63:0] grp_fu_716_p_dout0;
output   grp_fu_716_p_ce;
output  [63:0] grp_fu_720_p_din0;
output  [63:0] grp_fu_720_p_din1;
output  [1:0] grp_fu_720_p_opcode;
input  [63:0] grp_fu_720_p_dout0;
output   grp_fu_720_p_ce;
output  [63:0] grp_fu_724_p_din0;
output  [63:0] grp_fu_724_p_din1;
output  [1:0] grp_fu_724_p_opcode;
input  [63:0] grp_fu_724_p_dout0;
output   grp_fu_724_p_ce;
output  [63:0] grp_fu_728_p_din0;
output  [63:0] grp_fu_728_p_din1;
output  [0:0] grp_fu_728_p_opcode;
input  [63:0] grp_fu_728_p_dout0;
output   grp_fu_728_p_ce;
output  [63:0] grp_fu_732_p_din0;
output  [63:0] grp_fu_732_p_din1;
input  [63:0] grp_fu_732_p_dout0;
output   grp_fu_732_p_ce;
output  [63:0] grp_fu_736_p_din0;
output  [63:0] grp_fu_736_p_din1;
input  [63:0] grp_fu_736_p_dout0;
output   grp_fu_736_p_ce;
output  [63:0] grp_fu_740_p_din0;
output  [63:0] grp_fu_740_p_din1;
input  [63:0] grp_fu_740_p_dout0;
output   grp_fu_740_p_ce;
output  [63:0] grp_twiddles8_fu_744_p_din1;
output  [63:0] grp_twiddles8_fu_744_p_din2;
output  [63:0] grp_twiddles8_fu_744_p_din3;
output  [63:0] grp_twiddles8_fu_744_p_din4;
output  [63:0] grp_twiddles8_fu_744_p_din5;
output  [63:0] grp_twiddles8_fu_744_p_din6;
output  [63:0] grp_twiddles8_fu_744_p_din7;
output  [63:0] grp_twiddles8_fu_744_p_din8;
output  [63:0] grp_twiddles8_fu_744_p_din9;
output  [63:0] grp_twiddles8_fu_744_p_din10;
output  [63:0] grp_twiddles8_fu_744_p_din11;
output  [63:0] grp_twiddles8_fu_744_p_din12;
output  [63:0] grp_twiddles8_fu_744_p_din13;
output  [63:0] grp_twiddles8_fu_744_p_din14;
output  [5:0] grp_twiddles8_fu_744_p_din15;
output  [9:0] grp_twiddles8_fu_744_p_din16;
input  [63:0] grp_twiddles8_fu_744_p_dout0_0;
input  [63:0] grp_twiddles8_fu_744_p_dout0_1;
input  [63:0] grp_twiddles8_fu_744_p_dout0_2;
input  [63:0] grp_twiddles8_fu_744_p_dout0_3;
input  [63:0] grp_twiddles8_fu_744_p_dout0_4;
input  [63:0] grp_twiddles8_fu_744_p_dout0_5;
input  [63:0] grp_twiddles8_fu_744_p_dout0_6;
input  [63:0] grp_twiddles8_fu_744_p_dout0_7;
input  [63:0] grp_twiddles8_fu_744_p_dout0_8;
input  [63:0] grp_twiddles8_fu_744_p_dout0_9;
input  [63:0] grp_twiddles8_fu_744_p_dout0_10;
input  [63:0] grp_twiddles8_fu_744_p_dout0_11;
input  [63:0] grp_twiddles8_fu_744_p_dout0_12;
input  [63:0] grp_twiddles8_fu_744_p_dout0_13;
output   grp_twiddles8_fu_744_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
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
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_enable_reg_pp0_iter22;
reg    ap_enable_reg_pp0_iter23;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_187_reg_2295;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1017;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1021;
reg   [63:0] reg_1025;
reg   [63:0] reg_1029;
reg   [63:0] reg_1033;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_1037;
reg   [63:0] reg_1041;
reg   [63:0] reg_1045;
reg   [63:0] reg_1049;
reg   [63:0] reg_1053;
reg   [63:0] reg_1057;
reg   [63:0] reg_1063;
reg   [63:0] reg_1069;
reg   [63:0] reg_1075;
reg   [63:0] reg_1081;
reg   [63:0] reg_1087;
reg   [63:0] reg_1093;
reg   [63:0] reg_1099;
reg   [63:0] reg_1105;
reg   [63:0] reg_1111;
reg   [63:0] reg_1117;
reg   [63:0] reg_1123;
reg   [63:0] reg_1129;
reg   [63:0] reg_1135;
reg   [6:0] tid_7_reg_2283;
reg   [0:0] tmp_187_reg_2295_pp0_iter1_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter2_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter3_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter4_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter5_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter6_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter7_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter8_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter9_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter10_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter11_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter12_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter13_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter14_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter15_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter16_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter17_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter18_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter19_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter20_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter21_reg;
reg   [0:0] tmp_187_reg_2295_pp0_iter22_reg;
wire   [5:0] trunc_ln127_fu_1157_p1;
reg   [5:0] trunc_ln127_reg_2299;
reg   [5:0] trunc_ln127_reg_2299_pp0_iter1_reg;
reg   [5:0] trunc_ln127_reg_2299_pp0_iter2_reg;
reg   [5:0] trunc_ln127_reg_2299_pp0_iter3_reg;
reg   [5:0] trunc_ln127_reg_2299_pp0_iter4_reg;
reg   [5:0] trunc_ln127_reg_2299_pp0_iter5_reg;
reg   [5:0] trunc_ln127_reg_2299_pp0_iter6_reg;
reg   [5:0] trunc_ln127_reg_2299_pp0_iter7_reg;
reg   [5:0] trunc_ln127_reg_2299_pp0_iter8_reg;
wire  signed [6:0] zext_ln130_cast_fu_1161_p3;
reg  signed [6:0] zext_ln130_cast_reg_2304;
wire   [8:0] zext_ln127_1_fu_1185_p1;
reg   [8:0] zext_ln127_1_reg_2329;
wire   [7:0] zext_ln127_2_fu_1209_p1;
reg   [7:0] zext_ln127_2_reg_2355;
wire   [63:0] c0_x_66_fu_1235_p1;
wire   [63:0] c0_x_68_fu_1241_p1;
wire   [63:0] bitcast_ln134_fu_1247_p1;
wire   [63:0] bitcast_ln136_fu_1253_p1;
wire   [63:0] c0_y_66_fu_1259_p1;
wire   [63:0] c0_y_68_fu_1265_p1;
wire   [63:0] bitcast_ln143_fu_1271_p1;
wire   [63:0] bitcast_ln145_fu_1277_p1;
wire   [63:0] c0_x_70_fu_1332_p1;
wire   [5:0] tmp_s_fu_1338_p4;
reg   [5:0] tmp_s_reg_2474;
wire   [63:0] c0_x_72_fu_1363_p1;
wire   [63:0] bitcast_ln134_1_fu_1369_p1;
wire   [63:0] bitcast_ln136_1_fu_1385_p1;
wire   [63:0] c0_y_70_fu_1391_p1;
wire   [63:0] c0_y_72_fu_1397_p1;
wire   [63:0] bitcast_ln143_1_fu_1403_p1;
wire   [63:0] bitcast_ln145_1_fu_1409_p1;
wire   [63:0] c0_x_67_fu_1420_p1;
wire   [63:0] bitcast_ln135_fu_1439_p1;
wire   [63:0] c0_y_67_fu_1445_p1;
wire   [63:0] bitcast_ln144_fu_1451_p1;
wire   [4:0] lshr_ln_fu_1457_p4;
reg   [4:0] lshr_ln_reg_2585;
reg   [4:0] lshr_ln_reg_2585_pp0_iter1_reg;
reg   [4:0] lshr_ln_reg_2585_pp0_iter2_reg;
reg   [4:0] lshr_ln_reg_2585_pp0_iter3_reg;
wire   [5:0] or_ln3_fu_1466_p3;
reg   [5:0] or_ln3_reg_2590;
reg   [5:0] or_ln3_reg_2590_pp0_iter1_reg;
reg   [5:0] or_ln3_reg_2590_pp0_iter2_reg;
reg   [5:0] or_ln3_reg_2590_pp0_iter3_reg;
reg   [5:0] or_ln3_reg_2590_pp0_iter4_reg;
reg   [5:0] or_ln3_reg_2590_pp0_iter5_reg;
reg   [5:0] or_ln3_reg_2590_pp0_iter6_reg;
reg   [5:0] or_ln3_reg_2590_pp0_iter7_reg;
wire   [63:0] c0_x_71_fu_1480_p1;
wire   [63:0] bitcast_ln135_1_fu_1505_p1;
wire   [63:0] c0_y_71_fu_1511_p1;
wire   [63:0] bitcast_ln144_1_fu_1517_p1;
wire   [63:0] c0_x_fu_1533_p1;
wire   [63:0] bitcast_ln133_fu_1539_p1;
wire   [63:0] c0_y_fu_1545_p1;
wire   [63:0] bitcast_ln142_fu_1551_p1;
wire   [63:0] c0_x_69_fu_1557_p1;
wire   [63:0] bitcast_ln133_1_fu_1563_p1;
wire   [63:0] c0_y_69_fu_1569_p1;
wire   [63:0] bitcast_ln142_1_fu_1575_p1;
reg   [63:0] c0_x_5_reg_2687;
reg   [63:0] c0_y_5_reg_2693;
reg   [63:0] tmp_1_reg_2699;
reg   [63:0] sub3_reg_2705;
reg   [63:0] add6_reg_2711;
reg   [63:0] add7_reg_2717;
wire   [63:0] bitcast_ln148_1_fu_1610_p1;
wire   [63:0] bitcast_ln148_3_fu_1644_p1;
wire   [63:0] bitcast_ln148_9_fu_1679_p1;
wire   [63:0] bitcast_ln148_11_fu_1715_p1;
reg   [63:0] c0_x_15_reg_2745;
reg   [63:0] c0_y_15_reg_2751;
reg   [63:0] tmp_1_3_reg_2757;
reg   [63:0] sub104_1_reg_2763;
reg   [63:0] add127_1_reg_2769;
reg   [63:0] add130_1_reg_2775;
reg   [63:0] add4_reg_2781;
reg   [63:0] add5_reg_2787;
reg   [63:0] tmp_1_1_reg_2793;
reg   [63:0] tmp_1_1_reg_2793_pp0_iter2_reg;
reg   [63:0] sub5_reg_2799;
reg   [63:0] sub5_reg_2799_pp0_iter2_reg;
wire   [63:0] bitcast_ln148_21_fu_1750_p1;
wire   [63:0] bitcast_ln148_23_fu_1784_p1;
wire   [63:0] bitcast_ln148_29_fu_1819_p1;
wire   [63:0] bitcast_ln148_31_fu_1855_p1;
reg   [63:0] add111_1_reg_2827;
reg   [63:0] add114_1_reg_2833;
reg   [63:0] tmp_1_4_reg_2839;
reg   [63:0] sub120_1_reg_2845;
reg   [63:0] c0_x_4_reg_2851;
reg   [63:0] c0_y_4_reg_2857;
reg   [63:0] c0_x_8_reg_2863;
reg   [63:0] c0_x_8_reg_2863_pp0_iter2_reg;
reg   [63:0] c0_y_8_reg_2869;
reg   [63:0] c0_y_8_reg_2869_pp0_iter2_reg;
reg   [63:0] c0_x_21_reg_2875;
reg   [63:0] c0_y_21_reg_2881;
reg   [63:0] c0_x_13_reg_2887;
reg   [63:0] c0_x_13_reg_2887_pp0_iter3_reg;
reg   [63:0] c0_y_13_reg_2893;
reg   [63:0] c0_y_13_reg_2893_pp0_iter3_reg;
reg   [63:0] sub8_reg_2899;
reg   [63:0] add8_reg_2904;
reg   [63:0] sub1_reg_2909;
reg   [63:0] add1_reg_2914;
reg   [63:0] tmp_reg_2919;
reg   [63:0] tmp_reg_2919_pp0_iter3_reg;
reg   [63:0] sub2_reg_2925;
reg   [63:0] sub2_reg_2925_pp0_iter3_reg;
reg   [63:0] add2_reg_2931;
reg   [63:0] add3_reg_2937;
reg   [63:0] mul6_reg_2943;
reg   [63:0] mul9_reg_2948;
reg   [63:0] sub143_1_reg_2953;
reg   [63:0] add149_1_reg_2958;
reg   [63:0] sub169_1_reg_2963;
reg   [63:0] add175_1_reg_2968;
reg   [63:0] tmp_3_reg_2973;
reg   [63:0] tmp_3_reg_2973_pp0_iter3_reg;
reg   [63:0] sub208_1_reg_2979;
reg   [63:0] sub208_1_reg_2979_pp0_iter3_reg;
reg   [63:0] mul154_1_reg_2985;
reg   [63:0] mul161_1_reg_2990;
reg   [63:0] add199_1_reg_2995;
reg   [63:0] add202_1_reg_3001;
wire   [63:0] bitcast_ln148_5_fu_1890_p1;
wire   [63:0] bitcast_ln148_7_fu_1924_p1;
wire   [63:0] bitcast_ln148_25_fu_1958_p1;
wire   [63:0] bitcast_ln148_27_fu_1992_p1;
reg   [63:0] c0_x_6_reg_3027;
reg   [63:0] c0_y_6_reg_3033;
reg   [63:0] c0_x_7_reg_3039;
reg   [63:0] c0_x_7_reg_3039_pp0_iter3_reg;
reg   [63:0] c0_y_7_reg_3045;
reg   [63:0] c0_y_7_reg_3045_pp0_iter3_reg;
reg   [63:0] c0_x_18_reg_3051;
reg   [63:0] c0_y_18_reg_3057;
reg   [63:0] c0_x_19_reg_3063;
reg   [63:0] c0_x_19_reg_3063_pp0_iter4_reg;
reg   [63:0] c0_y_19_reg_3069;
reg   [63:0] c0_y_19_reg_3069_pp0_iter4_reg;
reg   [63:0] c0_y_19_reg_3069_pp0_iter5_reg;
reg   [63:0] c0_x_9_reg_3075;
reg   [63:0] c0_y_9_reg_3081;
reg   [63:0] mul3_reg_3087;
reg   [63:0] mul5_reg_3093;
reg   [63:0] mul_reg_3099;
reg   [63:0] mul1_reg_3104;
reg   [63:0] c0_x_20_reg_3109;
reg   [63:0] c0_y_20_reg_3115;
reg   [63:0] mul170_1_reg_3121;
wire   [63:0] bitcast_ln148_13_fu_2026_p1;
wire   [63:0] bitcast_ln148_15_fu_2060_p1;
reg   [63:0] mul176_1_reg_3137;
reg   [63:0] sub9_reg_3143;
reg   [63:0] add9_reg_3149;
reg   [63:0] sub157_1_reg_3155;
reg   [63:0] add162_1_reg_3161;
reg   [63:0] mul212_1_reg_3167;
wire   [63:0] bitcast_ln148_33_fu_2094_p1;
reg   [63:0] mul219_1_reg_3177;
reg   [63:0] data_x_1_reg_3182;
reg   [63:0] data_x_1_reg_3182_pp0_iter4_reg;
reg   [63:0] data_x_1_reg_3182_pp0_iter5_reg;
reg   [63:0] data_x_1_reg_3182_pp0_iter6_reg;
reg   [63:0] data_x_1_reg_3182_pp0_iter7_reg;
reg   [63:0] data_y_1_reg_3187;
reg   [63:0] data_y_1_reg_3187_pp0_iter4_reg;
reg   [63:0] data_y_1_reg_3187_pp0_iter5_reg;
reg   [63:0] data_y_1_reg_3187_pp0_iter6_reg;
reg   [63:0] data_y_1_reg_3187_pp0_iter7_reg;
wire   [63:0] bitcast_ln148_35_fu_2128_p1;
reg   [63:0] data_x_1_2_reg_3197;
reg   [63:0] data_x_1_2_reg_3197_pp0_iter5_reg;
reg   [63:0] data_x_1_2_reg_3197_pp0_iter6_reg;
reg   [63:0] data_x_1_2_reg_3197_pp0_iter7_reg;
reg   [63:0] data_x_1_2_reg_3197_pp0_iter8_reg;
reg   [63:0] data_y_1_2_reg_3202;
reg   [63:0] data_y_1_2_reg_3202_pp0_iter5_reg;
reg   [63:0] data_y_1_2_reg_3202_pp0_iter6_reg;
reg   [63:0] data_y_1_2_reg_3202_pp0_iter7_reg;
reg   [63:0] data_y_1_2_reg_3202_pp0_iter8_reg;
reg   [63:0] data_x_0_reg_3207;
reg   [63:0] data_y_0_reg_3212;
reg   [63:0] add_reg_3217;
reg   [63:0] tmp_2_reg_3223;
reg   [63:0] tmp_2_reg_3223_pp0_iter5_reg;
reg   [63:0] data_x_0_1_reg_3229;
reg   [63:0] data_y_0_1_reg_3234;
reg   [63:0] sub10_reg_3239;
wire   [63:0] zext_ln154_fu_2133_p1;
reg   [63:0] zext_ln154_reg_3245;
reg   [63:0] zext_ln154_reg_3245_pp0_iter5_reg;
reg   [63:0] zext_ln154_reg_3245_pp0_iter6_reg;
reg   [63:0] zext_ln154_reg_3245_pp0_iter7_reg;
reg   [63:0] zext_ln154_reg_3245_pp0_iter8_reg;
reg   [63:0] zext_ln154_reg_3245_pp0_iter9_reg;
reg   [63:0] zext_ln154_reg_3245_pp0_iter10_reg;
reg   [63:0] zext_ln154_reg_3245_pp0_iter11_reg;
reg   [63:0] zext_ln154_reg_3245_pp0_iter12_reg;
reg   [63:0] zext_ln154_reg_3245_pp0_iter13_reg;
reg   [63:0] zext_ln154_reg_3245_pp0_iter14_reg;
reg   [63:0] zext_ln154_reg_3245_pp0_iter15_reg;
reg   [63:0] zext_ln154_reg_3245_pp0_iter16_reg;
reg   [63:0] zext_ln154_reg_3245_pp0_iter17_reg;
reg   [63:0] zext_ln154_reg_3245_pp0_iter18_reg;
reg   [63:0] zext_ln154_reg_3245_pp0_iter19_reg;
reg   [63:0] zext_ln154_reg_3245_pp0_iter20_reg;
reg   [63:0] zext_ln154_reg_3245_pp0_iter21_reg;
reg   [63:0] zext_ln154_reg_3245_pp0_iter22_reg;
reg   [63:0] zext_ln154_reg_3245_pp0_iter23_reg;
reg   [63:0] sub4_reg_3277;
reg   [63:0] sub6_reg_3283;
reg   [63:0] add10_reg_3289;
reg   [63:0] add278_1_reg_3295;
reg   [63:0] tmp_4_reg_3301;
reg   [63:0] tmp_4_reg_3301_pp0_iter5_reg;
reg   [63:0] sub287_1_reg_3307;
reg   [63:0] sub287_1_reg_3307_pp0_iter5_reg;
reg   [63:0] c0_x_11_reg_3313;
reg   [63:0] c0_y_11_reg_3319;
reg   [63:0] c0_x_10_reg_3325;
reg   [63:0] c0_x_10_reg_3325_pp0_iter5_reg;
reg   [63:0] c0_y_10_reg_3331;
reg   [63:0] c0_y_10_reg_3331_pp0_iter5_reg;
reg   [63:0] c0_y_10_reg_3331_pp0_iter6_reg;
reg   [63:0] sub215_1_reg_3337;
reg   [63:0] sub220_1_reg_3343;
reg   [63:0] c0_x_23_reg_3349;
reg   [63:0] c0_y_23_reg_3355;
reg   [63:0] c0_x_22_reg_3361;
reg   [63:0] c0_x_22_reg_3361_pp0_iter5_reg;
reg   [63:0] c0_x_22_reg_3361_pp0_iter6_reg;
reg   [63:0] c0_y_22_reg_3367;
reg   [63:0] c0_y_22_reg_3367_pp0_iter5_reg;
reg   [63:0] c0_y_22_reg_3367_pp0_iter6_reg;
reg   [63:0] add281_1_reg_3373;
reg   [63:0] mul2_reg_3379;
wire   [63:0] bitcast_ln148_17_fu_2169_p1;
reg   [63:0] data_x_2_reg_3389;
reg   [63:0] data_x_2_reg_3389_pp0_iter6_reg;
reg   [63:0] data_x_2_reg_3389_pp0_iter7_reg;
reg   [63:0] data_y_2_reg_3394;
reg   [63:0] data_y_2_reg_3394_pp0_iter6_reg;
reg   [63:0] data_y_2_reg_3394_pp0_iter7_reg;
reg   [63:0] data_x_3_reg_3399;
reg   [63:0] data_x_3_reg_3399_pp0_iter6_reg;
reg   [63:0] data_x_3_reg_3399_pp0_iter7_reg;
reg   [63:0] data_y_3_reg_3404;
reg   [63:0] data_y_3_reg_3404_pp0_iter6_reg;
reg   [63:0] data_y_3_reg_3404_pp0_iter7_reg;
reg   [63:0] mul4_reg_3409;
reg   [63:0] data_x_4_reg_3414;
reg   [63:0] data_x_4_reg_3414_pp0_iter6_reg;
reg   [63:0] data_x_4_reg_3414_pp0_iter7_reg;
reg   [63:0] data_y_4_reg_3419;
reg   [63:0] data_y_4_reg_3419_pp0_iter6_reg;
reg   [63:0] data_y_4_reg_3419_pp0_iter7_reg;
reg   [63:0] data_x_5_reg_3424;
reg   [63:0] data_x_5_reg_3424_pp0_iter6_reg;
reg   [63:0] data_x_5_reg_3424_pp0_iter7_reg;
reg   [63:0] mul291_1_reg_3429;
wire   [63:0] bitcast_ln148_19_fu_2203_p1;
reg   [63:0] data_y_5_reg_3439;
reg   [63:0] data_y_5_reg_3439_pp0_iter6_reg;
reg   [63:0] data_y_5_reg_3439_pp0_iter7_reg;
reg   [63:0] data_x_2_2_reg_3444;
reg   [63:0] data_x_2_2_reg_3444_pp0_iter6_reg;
reg   [63:0] data_x_2_2_reg_3444_pp0_iter7_reg;
reg   [63:0] data_y_2_2_reg_3449;
reg   [63:0] data_y_2_2_reg_3449_pp0_iter6_reg;
reg   [63:0] data_y_2_2_reg_3449_pp0_iter7_reg;
reg   [63:0] data_x_3_2_reg_3454;
reg   [63:0] data_x_3_2_reg_3454_pp0_iter6_reg;
reg   [63:0] data_x_3_2_reg_3454_pp0_iter7_reg;
wire   [63:0] bitcast_ln148_37_fu_2237_p1;
reg   [63:0] mul298_1_reg_3464;
reg   [63:0] sub11_reg_3469;
reg   [63:0] data_y_3_2_reg_3475;
reg   [63:0] data_y_3_2_reg_3475_pp0_iter7_reg;
reg   [63:0] data_y_3_2_reg_3475_pp0_iter8_reg;
wire   [63:0] bitcast_ln148_39_fu_2271_p1;
reg   [63:0] data_x_4_2_reg_3485;
reg   [63:0] data_x_4_2_reg_3485_pp0_iter7_reg;
reg   [63:0] data_x_4_2_reg_3485_pp0_iter8_reg;
reg   [63:0] data_y_4_2_reg_3490;
reg   [63:0] data_y_4_2_reg_3490_pp0_iter7_reg;
reg   [63:0] data_y_4_2_reg_3490_pp0_iter8_reg;
reg   [63:0] data_x_5_2_reg_3495;
reg   [63:0] data_x_5_2_reg_3495_pp0_iter7_reg;
reg   [63:0] data_x_5_2_reg_3495_pp0_iter8_reg;
reg   [63:0] data_y_5_2_reg_3500;
reg   [63:0] data_y_5_2_reg_3500_pp0_iter7_reg;
reg   [63:0] data_y_5_2_reg_3500_pp0_iter8_reg;
reg   [63:0] sub12_reg_3505;
reg   [63:0] sub294_1_reg_3511;
reg   [63:0] sub299_1_reg_3517;
reg   [63:0] data_x_6_reg_3523;
reg   [63:0] data_x_6_reg_3523_pp0_iter8_reg;
reg   [63:0] data_x_7_reg_3528;
reg   [63:0] data_x_7_reg_3528_pp0_iter8_reg;
reg   [63:0] data_y_6_reg_3533;
reg   [63:0] data_y_7_reg_3538;
reg   [63:0] data_x_6_2_reg_3543;
reg   [63:0] data_y_6_2_reg_3548;
reg   [63:0] data_x_7_2_reg_3553;
reg   [63:0] data_y_7_2_reg_3558;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage5_subdone;
reg   [63:0] grp_twiddles8_fu_850_a_x_1_read;
reg   [63:0] grp_twiddles8_fu_850_a_x_2_read;
reg   [63:0] grp_twiddles8_fu_850_a_x_3_read;
reg   [63:0] grp_twiddles8_fu_850_a_x_4_read;
reg   [63:0] grp_twiddles8_fu_850_a_x_5_read;
reg   [63:0] grp_twiddles8_fu_850_a_x_6_read;
reg   [63:0] grp_twiddles8_fu_850_a_x_7_read;
reg   [63:0] grp_twiddles8_fu_850_a_y_1_read;
reg   [63:0] grp_twiddles8_fu_850_a_y_2_read;
reg   [63:0] grp_twiddles8_fu_850_a_y_3_read;
reg   [63:0] grp_twiddles8_fu_850_a_y_4_read;
reg   [63:0] grp_twiddles8_fu_850_a_y_5_read;
reg   [63:0] grp_twiddles8_fu_850_a_y_6_read;
reg   [63:0] grp_twiddles8_fu_850_a_y_7_read;
reg   [5:0] grp_twiddles8_fu_850_i;
reg    grp_twiddles8_fu_850_ap_ce;
wire    ap_block_pp0_stage2_11001_ignoreCallOp1566;
wire    ap_block_pp0_stage3_11001_ignoreCallOp1567;
wire    ap_block_pp0_stage4_11001_ignoreCallOp1569;
wire    ap_block_pp0_stage5_11001_ignoreCallOp1571;
wire    ap_block_pp0_stage6_11001_ignoreCallOp1573;
wire    ap_block_pp0_stage7_11001_ignoreCallOp1575;
wire    ap_block_pp0_stage1_11001_ignoreCallOp1579;
wire    ap_block_pp0_stage0_11001_ignoreCallOp1577;
wire    ap_block_pp0_stage2_ignoreCallOp1566;
wire    ap_block_pp0_stage3_ignoreCallOp1568;
wire   [63:0] zext_ln130_fu_1169_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln132_fu_1179_p1;
wire   [63:0] zext_ln134_fu_1194_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln136_fu_1203_p1;
wire   [63:0] zext_ln130_1_fu_1218_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln132_1_fu_1229_p1;
wire   [63:0] zext_ln134_1_fu_1288_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln136_1_fu_1303_p1;
wire   [63:0] zext_ln131_fu_1316_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln135_fu_1326_p1;
wire   [63:0] zext_ln131_1_fu_1357_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln135_1_fu_1379_p1;
wire   [63:0] zext_ln127_fu_1415_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln133_fu_1433_p1;
wire   [63:0] zext_ln129_fu_1474_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln133_2_fu_1499_p1;
reg   [6:0] tid_fu_156;
wire   [6:0] add_ln127_fu_1523_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_7;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
reg    DATA_x_we0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_8_we0_local;
reg    DATA_x_8_ce0_local;
reg    DATA_y_we0_local;
reg    DATA_y_ce0_local;
reg    DATA_y_8_we0_local;
reg    DATA_y_8_ce0_local;
reg    DATA_x_1_we0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_2_we0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_3_we0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_4_we0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_5_we0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_6_we0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_7_we0_local;
reg    DATA_x_7_ce0_local;
reg    DATA_y_1_we0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_we0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_we0_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_4_we0_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_5_we0_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_6_we0_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_7_we0_local;
reg    DATA_y_7_ce0_local;
reg    DATA_x_9_we0_local;
reg    DATA_x_9_ce0_local;
reg    DATA_x_10_we0_local;
reg    DATA_x_10_ce0_local;
reg    DATA_x_11_we0_local;
reg    DATA_x_11_ce0_local;
reg    DATA_x_12_we0_local;
reg    DATA_x_12_ce0_local;
reg    DATA_x_13_we0_local;
reg    DATA_x_13_ce0_local;
reg    DATA_x_14_we0_local;
reg    DATA_x_14_ce0_local;
reg    DATA_x_15_we0_local;
reg    DATA_x_15_ce0_local;
reg    DATA_y_9_we0_local;
reg    DATA_y_9_ce0_local;
reg    DATA_y_10_we0_local;
reg    DATA_y_10_ce0_local;
reg    DATA_y_11_we0_local;
reg    DATA_y_11_ce0_local;
reg    DATA_y_12_we0_local;
reg    DATA_y_12_ce0_local;
reg    DATA_y_13_we0_local;
reg    DATA_y_13_ce0_local;
reg    DATA_y_14_we0_local;
reg    DATA_y_14_ce0_local;
reg    DATA_y_15_we0_local;
reg    DATA_y_15_ce0_local;
reg   [63:0] grp_fu_883_p0;
reg   [63:0] grp_fu_883_p1;
reg   [63:0] grp_fu_887_p0;
reg   [63:0] grp_fu_887_p1;
reg   [63:0] grp_fu_891_p0;
reg   [63:0] grp_fu_891_p1;
reg   [63:0] grp_fu_895_p0;
reg   [63:0] grp_fu_895_p1;
reg   [63:0] grp_fu_899_p0;
reg   [63:0] grp_fu_899_p1;
reg   [63:0] grp_fu_903_p0;
reg   [63:0] grp_fu_903_p1;
reg   [63:0] grp_fu_907_p0;
reg   [63:0] grp_fu_907_p1;
reg   [63:0] grp_fu_911_p0;
reg   [63:0] grp_fu_911_p1;
reg   [63:0] grp_fu_915_p0;
reg   [63:0] grp_fu_915_p1;
reg   [63:0] grp_fu_919_p0;
reg   [63:0] grp_fu_919_p1;
reg   [63:0] grp_fu_923_p0;
reg   [63:0] grp_fu_923_p1;
reg   [63:0] grp_fu_927_p0;
reg   [63:0] grp_fu_927_p1;
reg   [63:0] grp_fu_931_p0;
reg   [63:0] grp_fu_931_p1;
reg   [63:0] grp_fu_935_p0;
reg   [63:0] grp_fu_935_p1;
reg   [63:0] grp_fu_939_p0;
reg   [63:0] grp_fu_939_p1;
reg   [63:0] grp_fu_943_p0;
reg   [63:0] grp_fu_943_p1;
reg   [63:0] grp_fu_948_p0;
reg   [63:0] grp_fu_948_p1;
reg   [63:0] grp_fu_955_p0;
reg   [63:0] grp_fu_955_p1;
wire  signed [7:0] sext_ln132_fu_1175_p1;
wire   [8:0] add_ln134_fu_1188_p2;
wire  signed [8:0] sext_ln136_fu_1200_p1;
wire   [7:0] add_ln130_fu_1212_p2;
wire   [8:0] add_ln132_fu_1224_p2;
wire   [8:0] add_ln134_1_fu_1283_p2;
wire   [6:0] add_ln136_fu_1294_p2;
wire  signed [8:0] sext_ln136_1_fu_1299_p1;
wire  signed [7:0] zext_ln131_cast_fu_1309_p3;
wire  signed [8:0] sext_ln135_fu_1322_p1;
wire  signed [7:0] zext_ln131_1_cast_fu_1347_p4;
wire  signed [8:0] sext_ln135_1_fu_1375_p1;
wire   [8:0] zext_ln133_cast_fu_1426_p3;
wire   [6:0] zext_ln133_1_fu_1486_p1;
wire   [8:0] zext_ln133_1_cast_fu_1489_p4;
wire   [63:0] bitcast_ln148_fu_1581_p1;
wire   [0:0] bit_sel2_fu_1584_p3;
wire   [0:0] xor_ln148_19_fu_1592_p2;
wire   [62:0] trunc_ln148_fu_1598_p1;
wire   [63:0] xor_ln1_fu_1602_p3;
wire   [63:0] bitcast_ln148_2_fu_1615_p1;
wire   [0:0] bit_sel3_fu_1618_p3;
wire   [0:0] xor_ln148_fu_1626_p2;
wire   [62:0] trunc_ln148_1_fu_1632_p1;
wire   [63:0] xor_ln148_1_fu_1636_p3;
wire   [63:0] bitcast_ln148_8_fu_1649_p1;
wire   [0:0] bit_sel8_fu_1653_p3;
wire   [0:0] xor_ln148_22_fu_1661_p2;
wire   [62:0] trunc_ln148_4_fu_1667_p1;
wire   [63:0] xor_ln148_4_fu_1671_p3;
wire   [63:0] bitcast_ln148_10_fu_1685_p1;
wire   [0:0] bit_sel9_fu_1689_p3;
wire   [0:0] xor_ln148_23_fu_1697_p2;
wire   [62:0] trunc_ln148_5_fu_1703_p1;
wire   [63:0] xor_ln148_5_fu_1707_p3;
wire   [63:0] bitcast_ln148_20_fu_1721_p1;
wire   [0:0] bit_sel17_fu_1724_p3;
wire   [0:0] xor_ln148_28_fu_1732_p2;
wire   [62:0] trunc_ln148_10_fu_1738_p1;
wire   [63:0] xor_ln148_s_fu_1742_p3;
wire   [63:0] bitcast_ln148_22_fu_1755_p1;
wire   [0:0] bit_sel18_fu_1758_p3;
wire   [0:0] xor_ln148_29_fu_1766_p2;
wire   [62:0] trunc_ln148_11_fu_1772_p1;
wire   [63:0] xor_ln148_10_fu_1776_p3;
wire   [63:0] bitcast_ln148_28_fu_1789_p1;
wire   [0:0] bit_sel13_fu_1793_p3;
wire   [0:0] xor_ln148_32_fu_1801_p2;
wire   [62:0] trunc_ln148_14_fu_1807_p1;
wire   [63:0] xor_ln148_13_fu_1811_p3;
wire   [63:0] bitcast_ln148_30_fu_1825_p1;
wire   [0:0] bit_sel10_fu_1829_p3;
wire   [0:0] xor_ln148_33_fu_1837_p2;
wire   [62:0] trunc_ln148_15_fu_1843_p1;
wire   [63:0] xor_ln148_14_fu_1847_p3;
wire   [63:0] bitcast_ln148_4_fu_1861_p1;
wire   [0:0] bit_sel5_fu_1864_p3;
wire   [0:0] xor_ln148_20_fu_1872_p2;
wire   [62:0] trunc_ln148_2_fu_1878_p1;
wire   [63:0] xor_ln148_2_fu_1882_p3;
wire   [63:0] bitcast_ln148_6_fu_1895_p1;
wire   [0:0] bit_sel6_fu_1898_p3;
wire   [0:0] xor_ln148_21_fu_1906_p2;
wire   [62:0] trunc_ln148_3_fu_1912_p1;
wire   [63:0] xor_ln148_3_fu_1916_p3;
wire   [63:0] bitcast_ln148_24_fu_1929_p1;
wire   [0:0] bit_sel19_fu_1932_p3;
wire   [0:0] xor_ln148_30_fu_1940_p2;
wire   [62:0] trunc_ln148_12_fu_1946_p1;
wire   [63:0] xor_ln148_11_fu_1950_p3;
wire   [63:0] bitcast_ln148_26_fu_1963_p1;
wire   [0:0] bit_sel16_fu_1966_p3;
wire   [0:0] xor_ln148_31_fu_1974_p2;
wire   [62:0] trunc_ln148_13_fu_1980_p1;
wire   [63:0] xor_ln148_12_fu_1984_p3;
wire   [63:0] bitcast_ln148_12_fu_1997_p1;
wire   [0:0] bit_sel11_fu_2000_p3;
wire   [0:0] xor_ln148_24_fu_2008_p2;
wire   [62:0] trunc_ln148_6_fu_2014_p1;
wire   [63:0] xor_ln148_6_fu_2018_p3;
wire   [63:0] bitcast_ln148_14_fu_2031_p1;
wire   [0:0] bit_sel12_fu_2034_p3;
wire   [0:0] xor_ln148_25_fu_2042_p2;
wire   [62:0] trunc_ln148_7_fu_2048_p1;
wire   [63:0] xor_ln148_7_fu_2052_p3;
wire   [63:0] bitcast_ln148_32_fu_2065_p1;
wire   [0:0] bit_sel7_fu_2068_p3;
wire   [0:0] xor_ln148_34_fu_2076_p2;
wire   [62:0] trunc_ln148_16_fu_2082_p1;
wire   [63:0] xor_ln148_15_fu_2086_p3;
wire   [63:0] bitcast_ln148_34_fu_2099_p1;
wire   [0:0] bit_sel4_fu_2102_p3;
wire   [0:0] xor_ln148_35_fu_2110_p2;
wire   [62:0] trunc_ln148_17_fu_2116_p1;
wire   [63:0] xor_ln148_16_fu_2120_p3;
wire   [63:0] bitcast_ln148_16_fu_2140_p1;
wire   [0:0] bit_sel14_fu_2143_p3;
wire   [0:0] xor_ln148_26_fu_2151_p2;
wire   [62:0] trunc_ln148_8_fu_2157_p1;
wire   [63:0] xor_ln148_8_fu_2161_p3;
wire   [63:0] bitcast_ln148_18_fu_2174_p1;
wire   [0:0] bit_sel15_fu_2177_p3;
wire   [0:0] xor_ln148_27_fu_2185_p2;
wire   [62:0] trunc_ln148_9_fu_2191_p1;
wire   [63:0] xor_ln148_9_fu_2195_p3;
wire   [63:0] bitcast_ln148_36_fu_2208_p1;
wire   [0:0] bit_sel1_fu_2211_p3;
wire   [0:0] xor_ln148_36_fu_2219_p2;
wire   [62:0] trunc_ln148_18_fu_2225_p1;
wire   [63:0] xor_ln148_17_fu_2229_p3;
wire   [63:0] bitcast_ln148_38_fu_2242_p1;
wire   [0:0] bit_sel_fu_2245_p3;
wire   [0:0] xor_ln148_37_fu_2253_p2;
wire   [62:0] trunc_ln148_19_fu_2259_p1;
wire   [63:0] xor_ln148_18_fu_2263_p3;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage2_00001;
reg   [1:0] grp_fu_891_opcode;
reg   [1:0] grp_fu_899_opcode;
reg   [1:0] grp_fu_907_opcode;
reg   [1:0] grp_fu_911_opcode;
reg   [1:0] grp_fu_915_opcode;
reg   [1:0] grp_fu_919_opcode;
reg   [1:0] grp_fu_923_opcode;
reg   [1:0] grp_fu_927_opcode;
reg   [1:0] grp_fu_931_opcode;
reg   [1:0] grp_fu_935_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter22_stage5;
reg    ap_idle_pp0_0to21;
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
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg    ap_loop_exit_ready_pp0_iter21_reg;
reg    ap_loop_exit_ready_pp0_iter22_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to23;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
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
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_156 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter22_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
            ap_enable_reg_pp0_iter23 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter21_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter22_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tid_fu_156 <= 7'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_187_reg_2295 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        tid_fu_156 <= add_ln127_fu_1523_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add10_reg_3289 <= grp_fu_688_p_dout0;
        add278_1_reg_3295 <= grp_fu_692_p_dout0;
        sub4_reg_3277 <= grp_fu_680_p_dout0;
        sub6_reg_3283 <= grp_fu_684_p_dout0;
        tmp_4_reg_3301 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        add111_1_reg_2827 <= grp_fu_672_p_dout0;
        add114_1_reg_2833 <= grp_fu_676_p_dout0;
        sub120_1_reg_2845 <= grp_fu_684_p_dout0;
        tmp_1_4_reg_2839 <= grp_fu_680_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        add127_1_reg_2769 <= grp_fu_688_p_dout0;
        add130_1_reg_2775 <= grp_fu_692_p_dout0;
        c0_x_15_reg_2745 <= grp_fu_672_p_dout0;
        c0_y_15_reg_2751 <= grp_fu_676_p_dout0;
        sub104_1_reg_2763 <= grp_fu_684_p_dout0;
        tmp_1_3_reg_2757 <= grp_fu_680_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        add149_1_reg_2958 <= grp_fu_708_p_dout0;
        add175_1_reg_2968 <= grp_fu_716_p_dout0;
        mul6_reg_2943 <= grp_fu_732_p_dout0;
        mul9_reg_2948 <= grp_fu_736_p_dout0;
        sub143_1_reg_2953 <= grp_fu_704_p_dout0;
        sub169_1_reg_2963 <= grp_fu_712_p_dout0;
        sub208_1_reg_2979 <= grp_fu_724_p_dout0;
        tmp_3_reg_2973 <= grp_fu_720_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        add162_1_reg_3161 <= grp_fu_708_p_dout0;
        add9_reg_3149 <= grp_fu_700_p_dout0;
        mul212_1_reg_3167 <= grp_fu_740_p_dout0;
        sub157_1_reg_3155 <= grp_fu_704_p_dout0;
        sub9_reg_3143 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        add199_1_reg_2995 <= grp_fu_688_p_dout0;
        add202_1_reg_3001 <= grp_fu_692_p_dout0;
        mul154_1_reg_2985 <= grp_fu_732_p_dout0;
        mul161_1_reg_2990 <= grp_fu_736_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        add1_reg_2914 <= grp_fu_716_p_dout0;
        add8_reg_2904 <= grp_fu_708_p_dout0;
        sub1_reg_2909 <= grp_fu_712_p_dout0;
        sub2_reg_2925 <= grp_fu_724_p_dout0;
        sub8_reg_2899 <= grp_fu_704_p_dout0;
        tmp_reg_2919 <= grp_fu_720_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        add281_1_reg_3373 <= grp_fu_708_p_dout0;
        c0_x_22_reg_3361 <= grp_fu_700_p_dout0;
        c0_x_23_reg_3349 <= grp_fu_692_p_dout0;
        c0_y_22_reg_3367 <= grp_fu_704_p_dout0;
        c0_y_23_reg_3355 <= grp_fu_696_p_dout0;
        sub220_1_reg_3343 <= grp_fu_688_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add2_reg_2931 <= grp_fu_672_p_dout0;
        add3_reg_2937 <= grp_fu_676_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        add4_reg_2781 <= grp_fu_672_p_dout0;
        add5_reg_2787 <= grp_fu_676_p_dout0;
        sub5_reg_2799 <= grp_fu_684_p_dout0;
        tmp_1_1_reg_2793 <= grp_fu_680_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        add6_reg_2711 <= grp_fu_688_p_dout0;
        add7_reg_2717 <= grp_fu_692_p_dout0;
        c0_x_5_reg_2687 <= grp_fu_672_p_dout0;
        c0_y_5_reg_2693 <= grp_fu_676_p_dout0;
        sub3_reg_2705 <= grp_fu_684_p_dout0;
        tmp_1_reg_2699 <= grp_fu_680_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add_reg_3217 <= grp_fu_680_p_dout0;
        data_x_0_1_reg_3229 <= grp_fu_688_p_dout0;
        data_x_0_reg_3207 <= grp_fu_672_p_dout0;
        data_y_0_1_reg_3234 <= grp_fu_692_p_dout0;
        data_y_0_reg_3212 <= grp_fu_676_p_dout0;
        tmp_2_reg_3223 <= grp_fu_684_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        c0_x_10_reg_3325 <= grp_fu_720_p_dout0;
        c0_x_11_reg_3313 <= grp_fu_712_p_dout0;
        c0_y_10_reg_3331 <= grp_fu_724_p_dout0;
        c0_y_11_reg_3319 <= grp_fu_716_p_dout0;
        sub215_1_reg_3337 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        c0_x_10_reg_3325_pp0_iter5_reg <= c0_x_10_reg_3325;
        c0_y_10_reg_3331_pp0_iter5_reg <= c0_y_10_reg_3331;
        c0_y_10_reg_3331_pp0_iter6_reg <= c0_y_10_reg_3331_pp0_iter5_reg;
        sub5_reg_2799_pp0_iter2_reg <= sub5_reg_2799;
        tmp_1_1_reg_2793_pp0_iter2_reg <= tmp_1_1_reg_2793;
        tmp_s_reg_2474 <= {{tid_7_reg_2283[6:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_13_reg_2887 <= grp_fu_680_p_dout0;
        c0_x_21_reg_2875 <= grp_fu_672_p_dout0;
        c0_y_13_reg_2893 <= grp_fu_684_p_dout0;
        c0_y_21_reg_2881 <= grp_fu_676_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_13_reg_2887_pp0_iter3_reg <= c0_x_13_reg_2887;
        c0_x_19_reg_3063_pp0_iter4_reg <= c0_x_19_reg_3063;
        c0_y_13_reg_2893_pp0_iter3_reg <= c0_y_13_reg_2893;
        c0_y_19_reg_3069_pp0_iter4_reg <= c0_y_19_reg_3069;
        c0_y_19_reg_3069_pp0_iter5_reg <= c0_y_19_reg_3069_pp0_iter4_reg;
        data_x_1_2_reg_3197_pp0_iter5_reg <= data_x_1_2_reg_3197;
        data_x_1_2_reg_3197_pp0_iter6_reg <= data_x_1_2_reg_3197_pp0_iter5_reg;
        data_x_1_2_reg_3197_pp0_iter7_reg <= data_x_1_2_reg_3197_pp0_iter6_reg;
        data_x_1_2_reg_3197_pp0_iter8_reg <= data_x_1_2_reg_3197_pp0_iter7_reg;
        data_x_4_2_reg_3485_pp0_iter7_reg <= data_x_4_2_reg_3485;
        data_x_4_2_reg_3485_pp0_iter8_reg <= data_x_4_2_reg_3485_pp0_iter7_reg;
        data_x_5_2_reg_3495_pp0_iter7_reg <= data_x_5_2_reg_3495;
        data_x_5_2_reg_3495_pp0_iter8_reg <= data_x_5_2_reg_3495_pp0_iter7_reg;
        data_y_1_2_reg_3202_pp0_iter5_reg <= data_y_1_2_reg_3202;
        data_y_1_2_reg_3202_pp0_iter6_reg <= data_y_1_2_reg_3202_pp0_iter5_reg;
        data_y_1_2_reg_3202_pp0_iter7_reg <= data_y_1_2_reg_3202_pp0_iter6_reg;
        data_y_1_2_reg_3202_pp0_iter8_reg <= data_y_1_2_reg_3202_pp0_iter7_reg;
        data_y_3_2_reg_3475_pp0_iter7_reg <= data_y_3_2_reg_3475;
        data_y_3_2_reg_3475_pp0_iter8_reg <= data_y_3_2_reg_3475_pp0_iter7_reg;
        data_y_4_2_reg_3490_pp0_iter7_reg <= data_y_4_2_reg_3490;
        data_y_4_2_reg_3490_pp0_iter8_reg <= data_y_4_2_reg_3490_pp0_iter7_reg;
        tid_7_reg_2283 <= ap_sig_allocacmp_tid_7;
        tmp_187_reg_2295 <= ap_sig_allocacmp_tid_7[32'd6];
        tmp_187_reg_2295_pp0_iter10_reg <= tmp_187_reg_2295_pp0_iter9_reg;
        tmp_187_reg_2295_pp0_iter11_reg <= tmp_187_reg_2295_pp0_iter10_reg;
        tmp_187_reg_2295_pp0_iter12_reg <= tmp_187_reg_2295_pp0_iter11_reg;
        tmp_187_reg_2295_pp0_iter13_reg <= tmp_187_reg_2295_pp0_iter12_reg;
        tmp_187_reg_2295_pp0_iter14_reg <= tmp_187_reg_2295_pp0_iter13_reg;
        tmp_187_reg_2295_pp0_iter15_reg <= tmp_187_reg_2295_pp0_iter14_reg;
        tmp_187_reg_2295_pp0_iter16_reg <= tmp_187_reg_2295_pp0_iter15_reg;
        tmp_187_reg_2295_pp0_iter17_reg <= tmp_187_reg_2295_pp0_iter16_reg;
        tmp_187_reg_2295_pp0_iter18_reg <= tmp_187_reg_2295_pp0_iter17_reg;
        tmp_187_reg_2295_pp0_iter19_reg <= tmp_187_reg_2295_pp0_iter18_reg;
        tmp_187_reg_2295_pp0_iter1_reg <= tmp_187_reg_2295;
        tmp_187_reg_2295_pp0_iter20_reg <= tmp_187_reg_2295_pp0_iter19_reg;
        tmp_187_reg_2295_pp0_iter21_reg <= tmp_187_reg_2295_pp0_iter20_reg;
        tmp_187_reg_2295_pp0_iter22_reg <= tmp_187_reg_2295_pp0_iter21_reg;
        tmp_187_reg_2295_pp0_iter2_reg <= tmp_187_reg_2295_pp0_iter1_reg;
        tmp_187_reg_2295_pp0_iter3_reg <= tmp_187_reg_2295_pp0_iter2_reg;
        tmp_187_reg_2295_pp0_iter4_reg <= tmp_187_reg_2295_pp0_iter3_reg;
        tmp_187_reg_2295_pp0_iter5_reg <= tmp_187_reg_2295_pp0_iter4_reg;
        tmp_187_reg_2295_pp0_iter6_reg <= tmp_187_reg_2295_pp0_iter5_reg;
        tmp_187_reg_2295_pp0_iter7_reg <= tmp_187_reg_2295_pp0_iter6_reg;
        tmp_187_reg_2295_pp0_iter8_reg <= tmp_187_reg_2295_pp0_iter7_reg;
        tmp_187_reg_2295_pp0_iter9_reg <= tmp_187_reg_2295_pp0_iter8_reg;
        trunc_ln127_reg_2299 <= trunc_ln127_fu_1157_p1;
        trunc_ln127_reg_2299_pp0_iter1_reg <= trunc_ln127_reg_2299;
        trunc_ln127_reg_2299_pp0_iter2_reg <= trunc_ln127_reg_2299_pp0_iter1_reg;
        trunc_ln127_reg_2299_pp0_iter3_reg <= trunc_ln127_reg_2299_pp0_iter2_reg;
        trunc_ln127_reg_2299_pp0_iter4_reg <= trunc_ln127_reg_2299_pp0_iter3_reg;
        trunc_ln127_reg_2299_pp0_iter5_reg <= trunc_ln127_reg_2299_pp0_iter4_reg;
        trunc_ln127_reg_2299_pp0_iter6_reg <= trunc_ln127_reg_2299_pp0_iter5_reg;
        trunc_ln127_reg_2299_pp0_iter7_reg <= trunc_ln127_reg_2299_pp0_iter6_reg;
        trunc_ln127_reg_2299_pp0_iter8_reg <= trunc_ln127_reg_2299_pp0_iter7_reg;
        zext_ln130_cast_reg_2304[5 : 0] <= zext_ln130_cast_fu_1161_p3[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_18_reg_3051 <= grp_fu_688_p_dout0;
        c0_x_19_reg_3063 <= grp_fu_696_p_dout0;
        c0_y_18_reg_3057 <= grp_fu_692_p_dout0;
        c0_y_19_reg_3069 <= grp_fu_700_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        c0_x_20_reg_3109 <= grp_fu_732_p_dout0;
        c0_y_20_reg_3115 <= grp_fu_736_p_dout0;
        mul170_1_reg_3121 <= grp_fu_740_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        c0_x_22_reg_3361_pp0_iter5_reg <= c0_x_22_reg_3361;
        c0_x_22_reg_3361_pp0_iter6_reg <= c0_x_22_reg_3361_pp0_iter5_reg;
        c0_y_22_reg_3367_pp0_iter5_reg <= c0_y_22_reg_3367;
        c0_y_22_reg_3367_pp0_iter6_reg <= c0_y_22_reg_3367_pp0_iter5_reg;
        data_x_4_reg_3414_pp0_iter6_reg <= data_x_4_reg_3414;
        data_x_4_reg_3414_pp0_iter7_reg <= data_x_4_reg_3414_pp0_iter6_reg;
        data_x_5_reg_3424_pp0_iter6_reg <= data_x_5_reg_3424;
        data_x_5_reg_3424_pp0_iter7_reg <= data_x_5_reg_3424_pp0_iter6_reg;
        data_y_4_reg_3419_pp0_iter6_reg <= data_y_4_reg_3419;
        data_y_4_reg_3419_pp0_iter7_reg <= data_y_4_reg_3419_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        c0_x_4_reg_2851 <= grp_fu_672_p_dout0;
        c0_x_8_reg_2863 <= grp_fu_680_p_dout0;
        c0_y_4_reg_2857 <= grp_fu_676_p_dout0;
        c0_y_8_reg_2869 <= grp_fu_684_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        c0_x_6_reg_3027 <= grp_fu_688_p_dout0;
        c0_x_7_reg_3039 <= grp_fu_696_p_dout0;
        c0_y_6_reg_3033 <= grp_fu_692_p_dout0;
        c0_y_7_reg_3045 <= grp_fu_700_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        c0_x_7_reg_3039_pp0_iter3_reg <= c0_x_7_reg_3039;
        c0_x_8_reg_2863_pp0_iter2_reg <= c0_x_8_reg_2863;
        c0_y_7_reg_3045_pp0_iter3_reg <= c0_y_7_reg_3045;
        c0_y_8_reg_2869_pp0_iter2_reg <= c0_y_8_reg_2869;
        data_x_1_reg_3182_pp0_iter4_reg <= data_x_1_reg_3182;
        data_x_1_reg_3182_pp0_iter5_reg <= data_x_1_reg_3182_pp0_iter4_reg;
        data_x_1_reg_3182_pp0_iter6_reg <= data_x_1_reg_3182_pp0_iter5_reg;
        data_x_1_reg_3182_pp0_iter7_reg <= data_x_1_reg_3182_pp0_iter6_reg;
        data_x_2_2_reg_3444_pp0_iter6_reg <= data_x_2_2_reg_3444;
        data_x_2_2_reg_3444_pp0_iter7_reg <= data_x_2_2_reg_3444_pp0_iter6_reg;
        data_x_3_2_reg_3454_pp0_iter6_reg <= data_x_3_2_reg_3454;
        data_x_3_2_reg_3454_pp0_iter7_reg <= data_x_3_2_reg_3454_pp0_iter6_reg;
        data_y_1_reg_3187_pp0_iter4_reg <= data_y_1_reg_3187;
        data_y_1_reg_3187_pp0_iter5_reg <= data_y_1_reg_3187_pp0_iter4_reg;
        data_y_1_reg_3187_pp0_iter6_reg <= data_y_1_reg_3187_pp0_iter5_reg;
        data_y_1_reg_3187_pp0_iter7_reg <= data_y_1_reg_3187_pp0_iter6_reg;
        data_y_2_2_reg_3449_pp0_iter6_reg <= data_y_2_2_reg_3449;
        data_y_2_2_reg_3449_pp0_iter7_reg <= data_y_2_2_reg_3449_pp0_iter6_reg;
        data_y_5_reg_3439_pp0_iter6_reg <= data_y_5_reg_3439;
        data_y_5_reg_3439_pp0_iter7_reg <= data_y_5_reg_3439_pp0_iter6_reg;
        lshr_ln_reg_2585 <= {{tid_7_reg_2283[5:1]}};
        lshr_ln_reg_2585_pp0_iter1_reg <= lshr_ln_reg_2585;
        lshr_ln_reg_2585_pp0_iter2_reg <= lshr_ln_reg_2585_pp0_iter1_reg;
        lshr_ln_reg_2585_pp0_iter3_reg <= lshr_ln_reg_2585_pp0_iter2_reg;
        or_ln3_reg_2590[5 : 1] <= or_ln3_fu_1466_p3[5 : 1];
        or_ln3_reg_2590_pp0_iter1_reg[5 : 1] <= or_ln3_reg_2590[5 : 1];
        or_ln3_reg_2590_pp0_iter2_reg[5 : 1] <= or_ln3_reg_2590_pp0_iter1_reg[5 : 1];
        or_ln3_reg_2590_pp0_iter3_reg[5 : 1] <= or_ln3_reg_2590_pp0_iter2_reg[5 : 1];
        or_ln3_reg_2590_pp0_iter4_reg[5 : 1] <= or_ln3_reg_2590_pp0_iter3_reg[5 : 1];
        or_ln3_reg_2590_pp0_iter5_reg[5 : 1] <= or_ln3_reg_2590_pp0_iter4_reg[5 : 1];
        or_ln3_reg_2590_pp0_iter6_reg[5 : 1] <= or_ln3_reg_2590_pp0_iter5_reg[5 : 1];
        or_ln3_reg_2590_pp0_iter7_reg[5 : 1] <= or_ln3_reg_2590_pp0_iter6_reg[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        c0_x_9_reg_3075 <= grp_fu_732_p_dout0;
        c0_y_9_reg_3081 <= grp_fu_736_p_dout0;
        mul3_reg_3087 <= grp_fu_740_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_x_1_2_reg_3197 <= grp_fu_704_p_dout0;
        data_y_1_2_reg_3202 <= grp_fu_708_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        data_x_1_reg_3182 <= grp_fu_704_p_dout0;
        data_y_1_reg_3187 <= grp_fu_708_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        data_x_2_2_reg_3444 <= grp_fu_716_p_dout0;
        data_x_3_2_reg_3454 <= grp_fu_724_p_dout0;
        data_y_2_2_reg_3449 <= grp_fu_720_p_dout0;
        data_y_5_reg_3439 <= grp_fu_712_p_dout0;
        mul298_1_reg_3464 <= grp_fu_732_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        data_x_2_reg_3389 <= grp_fu_700_p_dout0;
        data_x_3_reg_3399 <= grp_fu_708_p_dout0;
        data_y_2_reg_3394 <= grp_fu_704_p_dout0;
        data_y_3_reg_3404 <= grp_fu_712_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        data_x_2_reg_3389_pp0_iter6_reg <= data_x_2_reg_3389;
        data_x_2_reg_3389_pp0_iter7_reg <= data_x_2_reg_3389_pp0_iter6_reg;
        data_x_3_reg_3399_pp0_iter6_reg <= data_x_3_reg_3399;
        data_x_3_reg_3399_pp0_iter7_reg <= data_x_3_reg_3399_pp0_iter6_reg;
        data_y_2_reg_3394_pp0_iter6_reg <= data_y_2_reg_3394;
        data_y_2_reg_3394_pp0_iter7_reg <= data_y_2_reg_3394_pp0_iter6_reg;
        data_y_3_reg_3404_pp0_iter6_reg <= data_y_3_reg_3404;
        data_y_3_reg_3404_pp0_iter7_reg <= data_y_3_reg_3404_pp0_iter6_reg;
        tmp_4_reg_3301_pp0_iter5_reg <= tmp_4_reg_3301;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_x_4_2_reg_3485 <= grp_fu_720_p_dout0;
        data_x_5_2_reg_3495 <= grp_fu_728_p_dout0;
        data_y_3_2_reg_3475 <= grp_fu_716_p_dout0;
        data_y_4_2_reg_3490 <= grp_fu_724_p_dout0;
        sub11_reg_3469 <= grp_fu_712_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        data_x_4_reg_3414 <= grp_fu_712_p_dout0;
        data_x_5_reg_3424 <= grp_fu_720_p_dout0;
        data_y_4_reg_3419 <= grp_fu_716_p_dout0;
        mul291_1_reg_3429 <= grp_fu_740_p_dout0;
        mul4_reg_3409 <= grp_fu_736_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_2_reg_3543 <= grp_fu_716_p_dout0;
        data_x_7_2_reg_3553 <= grp_fu_724_p_dout0;
        data_y_6_2_reg_3548 <= grp_fu_720_p_dout0;
        data_y_6_reg_3533 <= grp_fu_708_p_dout0;
        data_y_7_2_reg_3558 <= grp_fu_728_p_dout0;
        data_y_7_reg_3538 <= grp_fu_712_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_reg_3523 <= grp_fu_700_p_dout0;
        data_x_7_reg_3528 <= grp_fu_704_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_reg_3523_pp0_iter8_reg <= data_x_6_reg_3523;
        data_x_7_reg_3528_pp0_iter8_reg <= data_x_7_reg_3528;
        data_y_5_2_reg_3500_pp0_iter7_reg <= data_y_5_2_reg_3500;
        data_y_5_2_reg_3500_pp0_iter8_reg <= data_y_5_2_reg_3500_pp0_iter7_reg;
        tmp_2_reg_3223_pp0_iter5_reg <= tmp_2_reg_3223;
        zext_ln127_1_reg_2329[6 : 0] <= zext_ln127_1_fu_1185_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_y_5_2_reg_3500 <= grp_fu_696_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        mul176_1_reg_3137 <= grp_fu_740_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        mul1_reg_3104 <= grp_fu_740_p_dout0;
        mul5_reg_3093 <= grp_fu_732_p_dout0;
        mul_reg_3099 <= grp_fu_736_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        mul219_1_reg_3177 <= grp_fu_732_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul2_reg_3379 <= grp_fu_732_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        reg_1017 <= work_x_q1;
        reg_1021 <= work_x_q0;
        reg_1025 <= work_y_q1;
        reg_1029 <= work_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        reg_1033 <= work_x_q1;
        reg_1037 <= work_x_q0;
        reg_1041 <= work_y_q1;
        reg_1045 <= work_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        reg_1049 <= grp_fu_696_p_dout0;
        reg_1053 <= grp_fu_700_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        reg_1057 <= grp_twiddles8_fu_744_p_dout0_0;
        reg_1063 <= grp_twiddles8_fu_744_p_dout0_1;
        reg_1069 <= grp_twiddles8_fu_744_p_dout0_2;
        reg_1075 <= grp_twiddles8_fu_744_p_dout0_3;
        reg_1081 <= grp_twiddles8_fu_744_p_dout0_4;
        reg_1087 <= grp_twiddles8_fu_744_p_dout0_5;
        reg_1093 <= grp_twiddles8_fu_744_p_dout0_6;
        reg_1099 <= grp_twiddles8_fu_744_p_dout0_7;
        reg_1105 <= grp_twiddles8_fu_744_p_dout0_8;
        reg_1111 <= grp_twiddles8_fu_744_p_dout0_9;
        reg_1117 <= grp_twiddles8_fu_744_p_dout0_10;
        reg_1123 <= grp_twiddles8_fu_744_p_dout0_11;
        reg_1129 <= grp_twiddles8_fu_744_p_dout0_12;
        reg_1135 <= grp_twiddles8_fu_744_p_dout0_13;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        sub10_reg_3239 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        sub12_reg_3505 <= grp_fu_724_p_dout0;
        sub294_1_reg_3511 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        sub208_1_reg_2979_pp0_iter3_reg <= sub208_1_reg_2979;
        sub287_1_reg_3307_pp0_iter5_reg <= sub287_1_reg_3307;
        tmp_3_reg_2973_pp0_iter3_reg <= tmp_3_reg_2973;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        sub287_1_reg_3307 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        sub299_1_reg_3517 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        sub2_reg_2925_pp0_iter3_reg <= sub2_reg_2925;
        tmp_reg_2919_pp0_iter3_reg <= tmp_reg_2919;
        zext_ln127_2_reg_2355[6 : 0] <= zext_ln127_2_fu_1209_p1[6 : 0];
        zext_ln154_reg_3245[4 : 0] <= zext_ln154_fu_2133_p1[4 : 0];
        zext_ln154_reg_3245_pp0_iter10_reg[4 : 0] <= zext_ln154_reg_3245_pp0_iter9_reg[4 : 0];
        zext_ln154_reg_3245_pp0_iter11_reg[4 : 0] <= zext_ln154_reg_3245_pp0_iter10_reg[4 : 0];
        zext_ln154_reg_3245_pp0_iter12_reg[4 : 0] <= zext_ln154_reg_3245_pp0_iter11_reg[4 : 0];
        zext_ln154_reg_3245_pp0_iter13_reg[4 : 0] <= zext_ln154_reg_3245_pp0_iter12_reg[4 : 0];
        zext_ln154_reg_3245_pp0_iter14_reg[4 : 0] <= zext_ln154_reg_3245_pp0_iter13_reg[4 : 0];
        zext_ln154_reg_3245_pp0_iter15_reg[4 : 0] <= zext_ln154_reg_3245_pp0_iter14_reg[4 : 0];
        zext_ln154_reg_3245_pp0_iter16_reg[4 : 0] <= zext_ln154_reg_3245_pp0_iter15_reg[4 : 0];
        zext_ln154_reg_3245_pp0_iter17_reg[4 : 0] <= zext_ln154_reg_3245_pp0_iter16_reg[4 : 0];
        zext_ln154_reg_3245_pp0_iter18_reg[4 : 0] <= zext_ln154_reg_3245_pp0_iter17_reg[4 : 0];
        zext_ln154_reg_3245_pp0_iter19_reg[4 : 0] <= zext_ln154_reg_3245_pp0_iter18_reg[4 : 0];
        zext_ln154_reg_3245_pp0_iter20_reg[4 : 0] <= zext_ln154_reg_3245_pp0_iter19_reg[4 : 0];
        zext_ln154_reg_3245_pp0_iter21_reg[4 : 0] <= zext_ln154_reg_3245_pp0_iter20_reg[4 : 0];
        zext_ln154_reg_3245_pp0_iter22_reg[4 : 0] <= zext_ln154_reg_3245_pp0_iter21_reg[4 : 0];
        zext_ln154_reg_3245_pp0_iter23_reg[4 : 0] <= zext_ln154_reg_3245_pp0_iter22_reg[4 : 0];
        zext_ln154_reg_3245_pp0_iter5_reg[4 : 0] <= zext_ln154_reg_3245[4 : 0];
        zext_ln154_reg_3245_pp0_iter6_reg[4 : 0] <= zext_ln154_reg_3245_pp0_iter5_reg[4 : 0];
        zext_ln154_reg_3245_pp0_iter7_reg[4 : 0] <= zext_ln154_reg_3245_pp0_iter6_reg[4 : 0];
        zext_ln154_reg_3245_pp0_iter8_reg[4 : 0] <= zext_ln154_reg_3245_pp0_iter7_reg[4 : 0];
        zext_ln154_reg_3245_pp0_iter9_reg[4 : 0] <= zext_ln154_reg_3245_pp0_iter8_reg[4 : 0];
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_10_ce0_local = 1'b1;
    end else begin
        DATA_x_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_10_we0_local = 1'b1;
    end else begin
        DATA_x_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_11_ce0_local = 1'b1;
    end else begin
        DATA_x_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_11_we0_local = 1'b1;
    end else begin
        DATA_x_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_12_ce0_local = 1'b1;
    end else begin
        DATA_x_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_12_we0_local = 1'b1;
    end else begin
        DATA_x_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_13_ce0_local = 1'b1;
    end else begin
        DATA_x_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_13_we0_local = 1'b1;
    end else begin
        DATA_x_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_14_ce0_local = 1'b1;
    end else begin
        DATA_x_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_14_we0_local = 1'b1;
    end else begin
        DATA_x_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_15_ce0_local = 1'b1;
    end else begin
        DATA_x_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_15_we0_local = 1'b1;
    end else begin
        DATA_x_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_4_we0_local = 1'b1;
    end else begin
        DATA_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_5_we0_local = 1'b1;
    end else begin
        DATA_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_6_we0_local = 1'b1;
    end else begin
        DATA_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_7_we0_local = 1'b1;
    end else begin
        DATA_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_8_ce0_local = 1'b1;
    end else begin
        DATA_x_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_8_we0_local = 1'b1;
    end else begin
        DATA_x_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_9_ce0_local = 1'b1;
    end else begin
        DATA_x_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_9_we0_local = 1'b1;
    end else begin
        DATA_x_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_10_ce0_local = 1'b1;
    end else begin
        DATA_y_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_10_we0_local = 1'b1;
    end else begin
        DATA_y_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_11_ce0_local = 1'b1;
    end else begin
        DATA_y_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_11_we0_local = 1'b1;
    end else begin
        DATA_y_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_12_ce0_local = 1'b1;
    end else begin
        DATA_y_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_12_we0_local = 1'b1;
    end else begin
        DATA_y_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_13_ce0_local = 1'b1;
    end else begin
        DATA_y_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_13_we0_local = 1'b1;
    end else begin
        DATA_y_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_14_ce0_local = 1'b1;
    end else begin
        DATA_y_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_14_we0_local = 1'b1;
    end else begin
        DATA_y_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_15_ce0_local = 1'b1;
    end else begin
        DATA_y_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_15_we0_local = 1'b1;
    end else begin
        DATA_y_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_2_we0_local = 1'b1;
    end else begin
        DATA_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_3_we0_local = 1'b1;
    end else begin
        DATA_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_4_we0_local = 1'b1;
    end else begin
        DATA_y_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_5_we0_local = 1'b1;
    end else begin
        DATA_y_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_6_we0_local = 1'b1;
    end else begin
        DATA_y_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_7_we0_local = 1'b1;
    end else begin
        DATA_y_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_8_ce0_local = 1'b1;
    end else begin
        DATA_y_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_8_we0_local = 1'b1;
    end else begin
        DATA_y_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_9_ce0_local = 1'b1;
    end else begin
        DATA_y_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_9_we0_local = 1'b1;
    end else begin
        DATA_y_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_187_reg_2295 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter22 == 1'b1) & (tmp_187_reg_2295_pp0_iter22_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
        ap_condition_exit_pp0_iter22_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter22_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter22_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to21 = 1'b1;
    end else begin
        ap_idle_pp0_0to21 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to23 = 1'b1;
    end else begin
        ap_idle_pp0_1to23 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_tid_7 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_7 = tid_fu_156;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_883_p0 = c0_x_6_reg_3027;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_883_p0 = c0_x_5_reg_2687;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_883_p0 = c0_x_69_fu_1557_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_883_p0 = c0_x_fu_1533_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_883_p0 = c0_x_71_fu_1480_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_883_p0 = c0_x_67_fu_1420_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_883_p0 = c0_x_70_fu_1332_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_883_p0 = c0_x_66_fu_1235_p1;
    end else begin
        grp_fu_883_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_883_p1 = add2_reg_2931;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_883_p1 = add6_reg_2711;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_883_p1 = bitcast_ln133_1_fu_1563_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_883_p1 = bitcast_ln133_fu_1539_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_883_p1 = bitcast_ln135_1_fu_1505_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_883_p1 = bitcast_ln135_fu_1439_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_883_p1 = bitcast_ln134_1_fu_1369_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_883_p1 = bitcast_ln134_fu_1247_p1;
    end else begin
        grp_fu_883_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_887_p0 = c0_y_6_reg_3033;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_887_p0 = c0_y_5_reg_2693;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_887_p0 = c0_y_69_fu_1569_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_887_p0 = c0_y_fu_1545_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_887_p0 = c0_y_71_fu_1511_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_887_p0 = c0_y_67_fu_1445_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_887_p0 = c0_y_70_fu_1391_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_887_p0 = c0_y_66_fu_1259_p1;
    end else begin
        grp_fu_887_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_887_p1 = add3_reg_2937;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_887_p1 = add7_reg_2717;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_887_p1 = bitcast_ln142_1_fu_1575_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_887_p1 = bitcast_ln142_fu_1551_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_887_p1 = bitcast_ln144_1_fu_1517_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_887_p1 = bitcast_ln144_fu_1451_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_887_p1 = bitcast_ln143_1_fu_1403_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_887_p1 = bitcast_ln143_fu_1271_p1;
    end else begin
        grp_fu_887_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_187_reg_2295 == 1'd0) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_187_reg_2295 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_187_reg_2295 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_187_reg_2295 == 1'd0) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_891_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001))) begin
        grp_fu_891_opcode = 2'd0;
    end else begin
        grp_fu_891_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_891_p0 = mul_reg_3099;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_891_p0 = c0_x_9_reg_3075;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_891_p0 = c0_x_69_fu_1557_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_891_p0 = c0_x_fu_1533_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_891_p0 = c0_x_71_fu_1480_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_891_p0 = c0_x_67_fu_1420_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_891_p0 = c0_x_70_fu_1332_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_891_p0 = c0_x_66_fu_1235_p1;
    end else begin
        grp_fu_891_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_891_p1 = bitcast_ln148_13_fu_2026_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_891_p1 = mul3_reg_3087;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_891_p1 = bitcast_ln133_1_fu_1563_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_891_p1 = bitcast_ln133_fu_1539_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_891_p1 = bitcast_ln135_1_fu_1505_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_891_p1 = bitcast_ln135_fu_1439_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_891_p1 = bitcast_ln134_1_fu_1369_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_891_p1 = bitcast_ln134_fu_1247_p1;
    end else begin
        grp_fu_891_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_895_p0 = bitcast_ln148_15_fu_2060_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_895_p0 = c0_x_9_reg_3075;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_895_p0 = c0_y_69_fu_1569_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_895_p0 = c0_y_fu_1545_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_895_p0 = c0_y_71_fu_1511_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_895_p0 = c0_y_67_fu_1445_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_895_p0 = c0_y_70_fu_1391_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_895_p0 = c0_y_66_fu_1259_p1;
    end else begin
        grp_fu_895_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_895_p1 = mul1_reg_3104;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_895_p1 = mul3_reg_3087;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_895_p1 = bitcast_ln142_1_fu_1575_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_895_p1 = bitcast_ln142_fu_1551_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_895_p1 = bitcast_ln144_1_fu_1517_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_895_p1 = bitcast_ln144_fu_1451_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_895_p1 = bitcast_ln143_1_fu_1403_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_895_p1 = bitcast_ln143_fu_1271_p1;
    end else begin
        grp_fu_895_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001))) begin
        grp_fu_899_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_187_reg_2295 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_187_reg_2295 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)))) begin
        grp_fu_899_opcode = 2'd0;
    end else begin
        grp_fu_899_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_899_p0 = bitcast_ln148_35_fu_2128_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_899_p0 = c0_y_9_reg_3081;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_899_p0 = c0_x_18_reg_3051;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_899_p0 = c0_x_21_reg_2875;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_899_p0 = c0_x_4_reg_2851;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_899_p0 = c0_x_15_reg_2745;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_899_p0 = c0_x_72_fu_1363_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_899_p0 = c0_x_68_fu_1241_p1;
    end else begin
        grp_fu_899_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_899_p1 = mul219_1_reg_3177;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_899_p1 = mul5_reg_3093;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_899_p1 = add199_1_reg_2995;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_899_p1 = add111_1_reg_2827;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_899_p1 = add4_reg_2781;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_899_p1 = add127_1_reg_2769;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_899_p1 = bitcast_ln136_1_fu_1385_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_899_p1 = bitcast_ln136_fu_1253_p1;
    end else begin
        grp_fu_899_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_903_p0 = c0_x_13_reg_2887_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_903_p0 = c0_x_20_reg_3109;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_903_p0 = c0_y_18_reg_3057;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_903_p0 = c0_y_21_reg_2881;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_903_p0 = c0_y_4_reg_2857;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_903_p0 = c0_y_15_reg_2751;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_903_p0 = c0_y_72_fu_1397_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_903_p0 = c0_y_68_fu_1265_p1;
    end else begin
        grp_fu_903_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_903_p1 = sub157_1_reg_3155;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_903_p1 = mul170_1_reg_3121;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_903_p1 = add202_1_reg_3001;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_903_p1 = add114_1_reg_2833;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_903_p1 = add5_reg_2787;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_903_p1 = add130_1_reg_2775;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_903_p1 = bitcast_ln145_1_fu_1409_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_903_p1 = bitcast_ln145_fu_1277_p1;
    end else begin
        grp_fu_903_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_187_reg_2295 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_187_reg_2295 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)))) begin
        grp_fu_907_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001))) begin
        grp_fu_907_opcode = 2'd0;
    end else begin
        grp_fu_907_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_907_p0 = c0_y_23_reg_3355;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_907_p0 = c0_y_13_reg_2893_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_907_p0 = c0_x_20_reg_3109;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_907_p0 = mul6_reg_2943;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_907_p0 = c0_x_21_reg_2875;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_907_p0 = c0_x_4_reg_2851;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_907_p0 = c0_x_72_fu_1363_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_907_p0 = c0_x_68_fu_1241_p1;
    end else begin
        grp_fu_907_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_907_p1 = add281_1_reg_3373;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_907_p1 = add162_1_reg_3161;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_907_p1 = mul170_1_reg_3121;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_907_p1 = bitcast_ln148_5_fu_1890_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_907_p1 = add111_1_reg_2827;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_907_p1 = add4_reg_2781;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_907_p1 = bitcast_ln136_1_fu_1385_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_907_p1 = bitcast_ln136_fu_1253_p1;
    end else begin
        grp_fu_907_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_187_reg_2295 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_187_reg_2295 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)))) begin
        grp_fu_911_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)))) begin
        grp_fu_911_opcode = 2'd0;
    end else begin
        grp_fu_911_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_911_p0 = c0_x_10_reg_3325_pp0_iter5_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_911_p0 = c0_x_7_reg_3039_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_911_p0 = c0_x_13_reg_2887_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_911_p0 = bitcast_ln148_7_fu_1924_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_911_p0 = c0_y_21_reg_2881;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_911_p0 = c0_y_4_reg_2857;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_911_p0 = c0_y_72_fu_1397_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_911_p0 = c0_y_68_fu_1265_p1;
    end else begin
        grp_fu_911_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_911_p1 = sub11_reg_3469;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_911_p1 = sub4_reg_3277;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_911_p1 = sub157_1_reg_3155;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_911_p1 = mul9_reg_2948;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_911_p1 = add114_1_reg_2833;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_911_p1 = add5_reg_2787;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_911_p1 = bitcast_ln145_1_fu_1409_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_911_p1 = bitcast_ln145_fu_1277_p1;
    end else begin
        grp_fu_911_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)))) begin
        grp_fu_915_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001))) begin
        grp_fu_915_opcode = 2'd0;
    end else begin
        grp_fu_915_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_915_p0 = c0_x_10_reg_3325_pp0_iter5_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_915_p0 = c0_y_7_reg_3045_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_915_p0 = c0_y_13_reg_2893_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_915_p0 = c0_x_18_reg_3051;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_915_p0 = c0_x_6_reg_3027;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_915_p0 = mul154_1_reg_2985;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_915_p0 = tmp_1_3_reg_2757;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_915_p0 = tmp_1_reg_2699;
    end else begin
        grp_fu_915_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_915_p1 = sub11_reg_3469;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_915_p1 = sub6_reg_3283;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_915_p1 = add162_1_reg_3161;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_915_p1 = add199_1_reg_2995;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_915_p1 = add2_reg_2931;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_915_p1 = bitcast_ln148_25_fu_1958_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_915_p1 = bitcast_ln148_21_fu_1750_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_915_p1 = bitcast_ln148_1_fu_1610_p1;
    end else begin
        grp_fu_915_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)))) begin
        grp_fu_919_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)))) begin
        grp_fu_919_opcode = 2'd0;
    end else begin
        grp_fu_919_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_919_p0 = c0_y_10_reg_3331_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_919_p0 = c0_x_7_reg_3039_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_919_p0 = c0_y_20_reg_3115;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_919_p0 = c0_y_18_reg_3057;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_919_p0 = c0_y_6_reg_3033;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_919_p0 = bitcast_ln148_27_fu_1992_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_919_p0 = bitcast_ln148_23_fu_1784_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_919_p0 = bitcast_ln148_3_fu_1644_p1;
    end else begin
        grp_fu_919_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_919_p1 = sub12_reg_3505;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_919_p1 = sub4_reg_3277;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_919_p1 = mul176_1_reg_3137;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_919_p1 = add202_1_reg_3001;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_919_p1 = add3_reg_2937;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_919_p1 = mul161_1_reg_2990;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_919_p1 = sub104_1_reg_2763;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_919_p1 = sub3_reg_2705;
    end else begin
        grp_fu_919_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)))) begin
        grp_fu_923_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_923_opcode = 2'd0;
    end else begin
        grp_fu_923_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_923_p0 = c0_y_10_reg_3331_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_923_p0 = mul2_reg_3379;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_923_p0 = c0_y_11_reg_3319;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_923_p0 = c0_x_11_reg_3313;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_923_p0 = c0_y_7_reg_3045_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_923_p0 = c0_x_8_reg_2863_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_923_p0 = bitcast_ln148_29_fu_1819_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_923_p0 = bitcast_ln148_9_fu_1679_p1;
    end else begin
        grp_fu_923_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_923_p1 = sub12_reg_3505;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_923_p1 = bitcast_ln148_17_fu_2169_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_923_p1 = add10_reg_3289;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_923_p1 = add_reg_3217;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_923_p1 = sub6_reg_3283;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_923_p1 = sub9_reg_3143;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_923_p1 = bitcast_ln148_31_fu_1855_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_923_p1 = bitcast_ln148_11_fu_1715_p1;
    end else begin
        grp_fu_923_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001))) begin
        grp_fu_927_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_927_opcode = 2'd0;
    end else begin
        grp_fu_927_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_927_p0 = c0_x_22_reg_3361_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_927_p0 = c0_y_19_reg_3069_pp0_iter5_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_927_p0 = c0_x_19_reg_3063_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_927_p0 = c0_y_11_reg_3319;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_927_p0 = c0_y_8_reg_2869_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_927_p0 = bitcast_ln148_29_fu_1819_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_927_p0 = bitcast_ln148_9_fu_1679_p1;
    end else begin
        grp_fu_927_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_927_p1 = sub294_1_reg_3511;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_927_p1 = sub220_1_reg_3343;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_927_p1 = sub215_1_reg_3337;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_927_p1 = add10_reg_3289;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_927_p1 = add9_reg_3149;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_927_p1 = bitcast_ln148_31_fu_1855_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_927_p1 = bitcast_ln148_11_fu_1715_p1;
    end else begin
        grp_fu_927_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_931_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_931_opcode = 2'd0;
    end else begin
        grp_fu_931_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_931_p0 = c0_y_22_reg_3367_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_931_p0 = c0_x_23_reg_3349;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_931_p0 = c0_y_19_reg_3069_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_931_p0 = c0_x_11_reg_3313;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_931_p0 = c0_x_8_reg_2863_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_931_p0 = c0_x_15_reg_2745;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_931_p0 = c0_x_5_reg_2687;
    end else begin
        grp_fu_931_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_931_p1 = sub299_1_reg_3517;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_931_p1 = add278_1_reg_3295;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_931_p1 = sub220_1_reg_3343;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_931_p1 = add_reg_3217;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_931_p1 = sub9_reg_3143;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_931_p1 = add127_1_reg_2769;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_931_p1 = add6_reg_2711;
    end else begin
        grp_fu_931_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_935_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001))) begin
        grp_fu_935_opcode = 2'd0;
    end else begin
        grp_fu_935_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_935_p0 = c0_x_22_reg_3361_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_935_p0 = bitcast_ln148_19_fu_2203_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_935_p0 = c0_y_23_reg_3355;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_935_p0 = c0_x_19_reg_3063_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_935_p0 = c0_y_8_reg_2869_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_935_p0 = c0_y_15_reg_2751;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_935_p0 = c0_y_5_reg_2693;
    end else begin
        grp_fu_935_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_935_p1 = sub294_1_reg_3511;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_935_p1 = mul4_reg_3409;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_935_p1 = add281_1_reg_3373;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_935_p1 = sub215_1_reg_3337;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_935_p1 = add9_reg_3149;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_935_p1 = add130_1_reg_2775;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_935_p1 = add7_reg_2717;
    end else begin
        grp_fu_935_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_939_p0 = c0_y_22_reg_3367_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_939_p0 = bitcast_ln148_39_fu_2271_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_939_p0 = mul291_1_reg_3429;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_939_p0 = c0_x_23_reg_3349;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_939_p0 = mul212_1_reg_3167;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_939_p0 = c0_y_20_reg_3115;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_939_p0 = c0_y_9_reg_3081;
    end else begin
        grp_fu_939_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_939_p1 = sub299_1_reg_3517;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_939_p1 = mul298_1_reg_3464;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_939_p1 = bitcast_ln148_37_fu_2237_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_939_p1 = add278_1_reg_3295;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_939_p1 = bitcast_ln148_33_fu_2094_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_939_p1 = mul176_1_reg_3137;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_939_p1 = mul5_reg_3093;
    end else begin
        grp_fu_939_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_943_p0 = sub287_1_reg_3307;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_943_p0 = tmp_2_reg_3223;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_943_p0 = sub208_1_reg_2979;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_943_p0 = sub143_1_reg_2953;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_943_p0 = add1_reg_2914;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_943_p0 = sub8_reg_2899;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_943_p0 = tmp_1_4_reg_2839;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_943_p0 = tmp_1_1_reg_2793;
    end else begin
        grp_fu_943_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_943_p1 = 64'd4604544271217802189;
    end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)))) begin
        grp_fu_943_p1 = 64'd0;
    end else begin
        grp_fu_943_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_948_p0 = sub10_reg_3239;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_948_p0 = add149_1_reg_2958;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_948_p0 = tmp_reg_2919;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_948_p0 = add8_reg_2904;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_948_p0 = sub120_1_reg_2845;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_948_p0 = sub5_reg_2799;
    end else begin
        grp_fu_948_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_948_p1 = 64'd4604544271217802189;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        grp_fu_948_p1 = 64'd0;
    end else begin
        grp_fu_948_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_955_p0 = tmp_4_reg_3301;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_955_p0 = tmp_3_reg_2973;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_955_p0 = add175_1_reg_2968;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_955_p0 = sub169_1_reg_2963;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_955_p0 = sub2_reg_2925;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_955_p0 = sub1_reg_2909;
    end else begin
        grp_fu_955_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        grp_fu_955_p1 = 64'd0;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_955_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_955_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_850_a_x_1_read = data_x_1_2_reg_3197_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_850_a_x_1_read = data_x_1_reg_3182_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_850_a_x_1_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_850_a_x_1_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_850_a_x_2_read = data_x_2_2_reg_3444_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_850_a_x_2_read = data_x_2_reg_3389_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_850_a_x_2_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_850_a_x_2_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_850_a_x_3_read = data_x_3_2_reg_3454_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_850_a_x_3_read = data_x_3_reg_3399_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_850_a_x_3_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_850_a_x_3_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_850_a_x_4_read = data_x_4_2_reg_3485_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_850_a_x_4_read = data_x_4_reg_3414_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_850_a_x_4_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_850_a_x_4_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_850_a_x_5_read = data_x_5_2_reg_3495_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_850_a_x_5_read = data_x_5_reg_3424_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_850_a_x_5_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_850_a_x_5_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_850_a_x_6_read = data_x_6_2_reg_3543;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_850_a_x_6_read = data_x_6_reg_3523_pp0_iter8_reg;
        end else begin
            grp_twiddles8_fu_850_a_x_6_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_850_a_x_6_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_850_a_x_7_read = data_x_7_2_reg_3553;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_850_a_x_7_read = data_x_7_reg_3528_pp0_iter8_reg;
        end else begin
            grp_twiddles8_fu_850_a_x_7_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_850_a_x_7_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_850_a_y_1_read = data_y_1_2_reg_3202_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_850_a_y_1_read = data_y_1_reg_3187_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_850_a_y_1_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_850_a_y_1_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_850_a_y_2_read = data_y_2_2_reg_3449_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_850_a_y_2_read = data_y_2_reg_3394_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_850_a_y_2_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_850_a_y_2_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_850_a_y_3_read = data_y_3_2_reg_3475_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_850_a_y_3_read = data_y_3_reg_3404_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_850_a_y_3_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_850_a_y_3_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_850_a_y_4_read = data_y_4_2_reg_3490_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_850_a_y_4_read = data_y_4_reg_3419_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_850_a_y_4_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_850_a_y_4_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_850_a_y_5_read = data_y_5_2_reg_3500_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_850_a_y_5_read = data_y_5_reg_3439_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_850_a_y_5_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_850_a_y_5_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_850_a_y_6_read = data_y_6_2_reg_3548;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_850_a_y_6_read = data_y_6_reg_3533;
        end else begin
            grp_twiddles8_fu_850_a_y_6_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_850_a_y_6_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_850_a_y_7_read = data_y_7_2_reg_3558;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_850_a_y_7_read = data_y_7_reg_3538;
        end else begin
            grp_twiddles8_fu_850_a_y_7_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_850_a_y_7_read = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001_ignoreCallOp1569)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001_ignoreCallOp1566)) | ((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001_ignoreCallOp1573)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001_ignoreCallOp1571)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001_ignoreCallOp1567)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp1579)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp1577)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001_ignoreCallOp1575)))) begin
        grp_twiddles8_fu_850_ap_ce = 1'b1;
    end else begin
        grp_twiddles8_fu_850_ap_ce = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1568))) begin
            grp_twiddles8_fu_850_i = or_ln3_reg_2590_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1566))) begin
            grp_twiddles8_fu_850_i = trunc_ln127_reg_2299_pp0_iter8_reg;
        end else begin
            grp_twiddles8_fu_850_i = 'bx;
        end
    end else begin
        grp_twiddles8_fu_850_i = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_x_address0_local = zext_ln133_2_fu_1499_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_x_address0_local = zext_ln133_fu_1433_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_x_address0_local = zext_ln135_1_fu_1379_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_x_address0_local = zext_ln135_fu_1326_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_x_address0_local = zext_ln136_1_fu_1303_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_x_address0_local = zext_ln132_1_fu_1229_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_x_address0_local = zext_ln136_fu_1203_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_x_address0_local = zext_ln132_fu_1179_p1;
        end else begin
            work_x_address0_local = 'bx;
        end
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_x_address1_local = zext_ln129_fu_1474_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_x_address1_local = zext_ln127_fu_1415_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_x_address1_local = zext_ln131_1_fu_1357_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_x_address1_local = zext_ln131_fu_1316_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_x_address1_local = zext_ln134_1_fu_1288_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_x_address1_local = zext_ln130_1_fu_1218_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_x_address1_local = zext_ln134_fu_1194_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_x_address1_local = zext_ln130_fu_1169_p1;
        end else begin
            work_x_address1_local = 'bx;
        end
    end else begin
        work_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_x_ce0_local = 1'b1;
    end else begin
        work_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_x_ce1_local = 1'b1;
    end else begin
        work_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_y_address0_local = zext_ln133_2_fu_1499_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_y_address0_local = zext_ln133_fu_1433_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_y_address0_local = zext_ln135_1_fu_1379_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_y_address0_local = zext_ln135_fu_1326_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_y_address0_local = zext_ln136_1_fu_1303_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_y_address0_local = zext_ln132_1_fu_1229_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_y_address0_local = zext_ln136_fu_1203_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_y_address0_local = zext_ln132_fu_1179_p1;
        end else begin
            work_y_address0_local = 'bx;
        end
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_y_address1_local = zext_ln129_fu_1474_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_y_address1_local = zext_ln127_fu_1415_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_y_address1_local = zext_ln131_1_fu_1357_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_y_address1_local = zext_ln131_fu_1316_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_y_address1_local = zext_ln134_1_fu_1288_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_y_address1_local = zext_ln130_1_fu_1218_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_y_address1_local = zext_ln134_fu_1194_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_y_address1_local = zext_ln130_fu_1169_p1;
        end else begin
            work_y_address1_local = 'bx;
        end
    end else begin
        work_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_y_ce0_local = 1'b1;
    end else begin
        work_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_y_ce1_local = 1'b1;
    end else begin
        work_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to23 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_10_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_10_d0 = reg_1063;
assign DATA_x_10_we0 = DATA_x_10_we0_local;
assign DATA_x_11_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_11_d0 = reg_1069;
assign DATA_x_11_we0 = DATA_x_11_we0_local;
assign DATA_x_12_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_12_d0 = reg_1075;
assign DATA_x_12_we0 = DATA_x_12_we0_local;
assign DATA_x_13_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_13_d0 = reg_1081;
assign DATA_x_13_we0 = DATA_x_13_we0_local;
assign DATA_x_14_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_14_d0 = reg_1087;
assign DATA_x_14_we0 = DATA_x_14_we0_local;
assign DATA_x_15_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_15_d0 = reg_1093;
assign DATA_x_15_we0 = DATA_x_15_we0_local;
assign DATA_x_1_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_d0 = reg_1057;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_2_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_d0 = reg_1063;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_3_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_d0 = reg_1069;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_4_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_d0 = reg_1075;
assign DATA_x_4_we0 = DATA_x_4_we0_local;
assign DATA_x_5_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_d0 = reg_1081;
assign DATA_x_5_we0 = DATA_x_5_we0_local;
assign DATA_x_6_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_d0 = reg_1087;
assign DATA_x_6_we0 = DATA_x_6_we0_local;
assign DATA_x_7_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_d0 = reg_1093;
assign DATA_x_7_we0 = DATA_x_7_we0_local;
assign DATA_x_8_address0 = zext_ln154_fu_2133_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_8_d0 = data_x_0_1_reg_3229;
assign DATA_x_8_we0 = DATA_x_8_we0_local;
assign DATA_x_9_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_9_d0 = reg_1057;
assign DATA_x_9_we0 = DATA_x_9_we0_local;
assign DATA_x_address0 = zext_ln154_fu_2133_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_d0 = data_x_0_reg_3207;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_y_10_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_y_10_ce0 = DATA_y_10_ce0_local;
assign DATA_y_10_d0 = reg_1105;
assign DATA_y_10_we0 = DATA_y_10_we0_local;
assign DATA_y_11_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_y_11_ce0 = DATA_y_11_ce0_local;
assign DATA_y_11_d0 = reg_1111;
assign DATA_y_11_we0 = DATA_y_11_we0_local;
assign DATA_y_12_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_y_12_ce0 = DATA_y_12_ce0_local;
assign DATA_y_12_d0 = reg_1117;
assign DATA_y_12_we0 = DATA_y_12_we0_local;
assign DATA_y_13_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_y_13_ce0 = DATA_y_13_ce0_local;
assign DATA_y_13_d0 = reg_1123;
assign DATA_y_13_we0 = DATA_y_13_we0_local;
assign DATA_y_14_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_y_14_ce0 = DATA_y_14_ce0_local;
assign DATA_y_14_d0 = reg_1129;
assign DATA_y_14_we0 = DATA_y_14_we0_local;
assign DATA_y_15_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_y_15_ce0 = DATA_y_15_ce0_local;
assign DATA_y_15_d0 = reg_1135;
assign DATA_y_15_we0 = DATA_y_15_we0_local;
assign DATA_y_1_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_d0 = reg_1099;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_2_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_d0 = reg_1105;
assign DATA_y_2_we0 = DATA_y_2_we0_local;
assign DATA_y_3_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_d0 = reg_1111;
assign DATA_y_3_we0 = DATA_y_3_we0_local;
assign DATA_y_4_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_d0 = reg_1117;
assign DATA_y_4_we0 = DATA_y_4_we0_local;
assign DATA_y_5_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_d0 = reg_1123;
assign DATA_y_5_we0 = DATA_y_5_we0_local;
assign DATA_y_6_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_d0 = reg_1129;
assign DATA_y_6_we0 = DATA_y_6_we0_local;
assign DATA_y_7_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_d0 = reg_1135;
assign DATA_y_7_we0 = DATA_y_7_we0_local;
assign DATA_y_8_address0 = zext_ln154_fu_2133_p1;
assign DATA_y_8_ce0 = DATA_y_8_ce0_local;
assign DATA_y_8_d0 = data_y_0_1_reg_3234;
assign DATA_y_8_we0 = DATA_y_8_we0_local;
assign DATA_y_9_address0 = zext_ln154_reg_3245_pp0_iter23_reg;
assign DATA_y_9_ce0 = DATA_y_9_ce0_local;
assign DATA_y_9_d0 = reg_1099;
assign DATA_y_9_we0 = DATA_y_9_we0_local;
assign DATA_y_address0 = zext_ln154_fu_2133_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_d0 = data_y_0_reg_3212;
assign DATA_y_we0 = DATA_y_we0_local;
assign add_ln127_fu_1523_p2 = (tid_7_reg_2283 + 7'd2);
assign add_ln130_fu_1212_p2 = (zext_ln127_2_fu_1209_p1 + 8'd65);
assign add_ln132_fu_1224_p2 = (zext_ln127_1_reg_2329 + 9'd193);
assign add_ln134_1_fu_1283_p2 = ($signed(zext_ln127_1_reg_2329) + $signed(9'd321));
assign add_ln134_fu_1188_p2 = ($signed(zext_ln127_1_fu_1185_p1) + $signed(9'd320));
assign add_ln136_fu_1294_p2 = ($signed(tid_7_reg_2283) + $signed(7'd65));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001_ignoreCallOp1577 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001_ignoreCallOp1579 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001_ignoreCallOp1566 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_ignoreCallOp1566 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001_ignoreCallOp1567 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_ignoreCallOp1568 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001_ignoreCallOp1569 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001_ignoreCallOp1571 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001_ignoreCallOp1573 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001_ignoreCallOp1575 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bit_sel10_fu_1829_p3 = bitcast_ln148_30_fu_1825_p1[64'd63];
assign bit_sel11_fu_2000_p3 = bitcast_ln148_12_fu_1997_p1[64'd63];
assign bit_sel12_fu_2034_p3 = bitcast_ln148_14_fu_2031_p1[64'd63];
assign bit_sel13_fu_1793_p3 = bitcast_ln148_28_fu_1789_p1[64'd63];
assign bit_sel14_fu_2143_p3 = bitcast_ln148_16_fu_2140_p1[64'd63];
assign bit_sel15_fu_2177_p3 = bitcast_ln148_18_fu_2174_p1[64'd63];
assign bit_sel16_fu_1966_p3 = bitcast_ln148_26_fu_1963_p1[64'd63];
assign bit_sel17_fu_1724_p3 = bitcast_ln148_20_fu_1721_p1[64'd63];
assign bit_sel18_fu_1758_p3 = bitcast_ln148_22_fu_1755_p1[64'd63];
assign bit_sel19_fu_1932_p3 = bitcast_ln148_24_fu_1929_p1[64'd63];
assign bit_sel1_fu_2211_p3 = bitcast_ln148_36_fu_2208_p1[64'd63];
assign bit_sel2_fu_1584_p3 = bitcast_ln148_fu_1581_p1[64'd63];
assign bit_sel3_fu_1618_p3 = bitcast_ln148_2_fu_1615_p1[64'd63];
assign bit_sel4_fu_2102_p3 = bitcast_ln148_34_fu_2099_p1[64'd63];
assign bit_sel5_fu_1864_p3 = bitcast_ln148_4_fu_1861_p1[64'd63];
assign bit_sel6_fu_1898_p3 = bitcast_ln148_6_fu_1895_p1[64'd63];
assign bit_sel7_fu_2068_p3 = bitcast_ln148_32_fu_2065_p1[64'd63];
assign bit_sel8_fu_1653_p3 = bitcast_ln148_8_fu_1649_p1[64'd63];
assign bit_sel9_fu_1689_p3 = bitcast_ln148_10_fu_1685_p1[64'd63];
assign bit_sel_fu_2245_p3 = bitcast_ln148_38_fu_2242_p1[64'd63];
assign bitcast_ln133_1_fu_1563_p1 = reg_1021;
assign bitcast_ln133_fu_1539_p1 = reg_1021;
assign bitcast_ln134_1_fu_1369_p1 = reg_1033;
assign bitcast_ln134_fu_1247_p1 = reg_1033;
assign bitcast_ln135_1_fu_1505_p1 = reg_1021;
assign bitcast_ln135_fu_1439_p1 = reg_1021;
assign bitcast_ln136_1_fu_1385_p1 = reg_1037;
assign bitcast_ln136_fu_1253_p1 = reg_1037;
assign bitcast_ln142_1_fu_1575_p1 = reg_1029;
assign bitcast_ln142_fu_1551_p1 = reg_1029;
assign bitcast_ln143_1_fu_1403_p1 = reg_1041;
assign bitcast_ln143_fu_1271_p1 = reg_1041;
assign bitcast_ln144_1_fu_1517_p1 = reg_1029;
assign bitcast_ln144_fu_1451_p1 = reg_1029;
assign bitcast_ln145_1_fu_1409_p1 = reg_1045;
assign bitcast_ln145_fu_1277_p1 = reg_1045;
assign bitcast_ln148_10_fu_1685_p1 = reg_1053;
assign bitcast_ln148_11_fu_1715_p1 = xor_ln148_5_fu_1707_p3;
assign bitcast_ln148_12_fu_1997_p1 = sub2_reg_2925_pp0_iter3_reg;
assign bitcast_ln148_13_fu_2026_p1 = xor_ln148_6_fu_2018_p3;
assign bitcast_ln148_14_fu_2031_p1 = tmp_reg_2919_pp0_iter3_reg;
assign bitcast_ln148_15_fu_2060_p1 = xor_ln148_7_fu_2052_p3;
assign bitcast_ln148_16_fu_2140_p1 = sub10_reg_3239;
assign bitcast_ln148_17_fu_2169_p1 = xor_ln148_8_fu_2161_p3;
assign bitcast_ln148_18_fu_2174_p1 = tmp_2_reg_3223_pp0_iter5_reg;
assign bitcast_ln148_19_fu_2203_p1 = xor_ln148_9_fu_2195_p3;
assign bitcast_ln148_1_fu_1610_p1 = xor_ln1_fu_1602_p3;
assign bitcast_ln148_20_fu_1721_p1 = sub104_1_reg_2763;
assign bitcast_ln148_21_fu_1750_p1 = xor_ln148_s_fu_1742_p3;
assign bitcast_ln148_22_fu_1755_p1 = tmp_1_3_reg_2757;
assign bitcast_ln148_23_fu_1784_p1 = xor_ln148_10_fu_1776_p3;
assign bitcast_ln148_24_fu_1929_p1 = sub120_1_reg_2845;
assign bitcast_ln148_25_fu_1958_p1 = xor_ln148_11_fu_1950_p3;
assign bitcast_ln148_26_fu_1963_p1 = tmp_1_4_reg_2839;
assign bitcast_ln148_27_fu_1992_p1 = xor_ln148_12_fu_1984_p3;
assign bitcast_ln148_28_fu_1789_p1 = reg_1049;
assign bitcast_ln148_29_fu_1819_p1 = xor_ln148_13_fu_1811_p3;
assign bitcast_ln148_2_fu_1615_p1 = tmp_1_reg_2699;
assign bitcast_ln148_30_fu_1825_p1 = reg_1053;
assign bitcast_ln148_31_fu_1855_p1 = xor_ln148_14_fu_1847_p3;
assign bitcast_ln148_32_fu_2065_p1 = sub208_1_reg_2979_pp0_iter3_reg;
assign bitcast_ln148_33_fu_2094_p1 = xor_ln148_15_fu_2086_p3;
assign bitcast_ln148_34_fu_2099_p1 = tmp_3_reg_2973_pp0_iter3_reg;
assign bitcast_ln148_35_fu_2128_p1 = xor_ln148_16_fu_2120_p3;
assign bitcast_ln148_36_fu_2208_p1 = sub287_1_reg_3307_pp0_iter5_reg;
assign bitcast_ln148_37_fu_2237_p1 = xor_ln148_17_fu_2229_p3;
assign bitcast_ln148_38_fu_2242_p1 = tmp_4_reg_3301_pp0_iter5_reg;
assign bitcast_ln148_39_fu_2271_p1 = xor_ln148_18_fu_2263_p3;
assign bitcast_ln148_3_fu_1644_p1 = xor_ln148_1_fu_1636_p3;
assign bitcast_ln148_4_fu_1861_p1 = sub5_reg_2799_pp0_iter2_reg;
assign bitcast_ln148_5_fu_1890_p1 = xor_ln148_2_fu_1882_p3;
assign bitcast_ln148_6_fu_1895_p1 = tmp_1_1_reg_2793_pp0_iter2_reg;
assign bitcast_ln148_7_fu_1924_p1 = xor_ln148_3_fu_1916_p3;
assign bitcast_ln148_8_fu_1649_p1 = reg_1049;
assign bitcast_ln148_9_fu_1679_p1 = xor_ln148_4_fu_1671_p3;
assign bitcast_ln148_fu_1581_p1 = sub3_reg_2705;
assign c0_x_66_fu_1235_p1 = reg_1017;
assign c0_x_67_fu_1420_p1 = reg_1017;
assign c0_x_68_fu_1241_p1 = reg_1021;
assign c0_x_69_fu_1557_p1 = reg_1017;
assign c0_x_70_fu_1332_p1 = reg_1017;
assign c0_x_71_fu_1480_p1 = reg_1017;
assign c0_x_72_fu_1363_p1 = reg_1021;
assign c0_x_fu_1533_p1 = reg_1017;
assign c0_y_66_fu_1259_p1 = reg_1025;
assign c0_y_67_fu_1445_p1 = reg_1025;
assign c0_y_68_fu_1265_p1 = reg_1029;
assign c0_y_69_fu_1569_p1 = reg_1025;
assign c0_y_70_fu_1391_p1 = reg_1025;
assign c0_y_71_fu_1511_p1 = reg_1025;
assign c0_y_72_fu_1397_p1 = reg_1029;
assign c0_y_fu_1545_p1 = reg_1025;
assign grp_fu_672_p_ce = 1'b1;
assign grp_fu_672_p_din0 = grp_fu_883_p0;
assign grp_fu_672_p_din1 = grp_fu_883_p1;
assign grp_fu_672_p_opcode = 2'd0;
assign grp_fu_676_p_ce = 1'b1;
assign grp_fu_676_p_din0 = grp_fu_887_p0;
assign grp_fu_676_p_din1 = grp_fu_887_p1;
assign grp_fu_676_p_opcode = 2'd0;
assign grp_fu_680_p_ce = 1'b1;
assign grp_fu_680_p_din0 = grp_fu_891_p0;
assign grp_fu_680_p_din1 = grp_fu_891_p1;
assign grp_fu_680_p_opcode = grp_fu_891_opcode;
assign grp_fu_684_p_ce = 1'b1;
assign grp_fu_684_p_din0 = grp_fu_895_p0;
assign grp_fu_684_p_din1 = grp_fu_895_p1;
assign grp_fu_684_p_opcode = 2'd1;
assign grp_fu_688_p_ce = 1'b1;
assign grp_fu_688_p_din0 = grp_fu_899_p0;
assign grp_fu_688_p_din1 = grp_fu_899_p1;
assign grp_fu_688_p_opcode = grp_fu_899_opcode;
assign grp_fu_692_p_ce = 1'b1;
assign grp_fu_692_p_din0 = grp_fu_903_p0;
assign grp_fu_692_p_din1 = grp_fu_903_p1;
assign grp_fu_692_p_opcode = 2'd0;
assign grp_fu_696_p_ce = 1'b1;
assign grp_fu_696_p_din0 = grp_fu_907_p0;
assign grp_fu_696_p_din1 = grp_fu_907_p1;
assign grp_fu_696_p_opcode = grp_fu_907_opcode;
assign grp_fu_700_p_ce = 1'b1;
assign grp_fu_700_p_din0 = grp_fu_911_p0;
assign grp_fu_700_p_din1 = grp_fu_911_p1;
assign grp_fu_700_p_opcode = grp_fu_911_opcode;
assign grp_fu_704_p_ce = 1'b1;
assign grp_fu_704_p_din0 = grp_fu_915_p0;
assign grp_fu_704_p_din1 = grp_fu_915_p1;
assign grp_fu_704_p_opcode = grp_fu_915_opcode;
assign grp_fu_708_p_ce = 1'b1;
assign grp_fu_708_p_din0 = grp_fu_919_p0;
assign grp_fu_708_p_din1 = grp_fu_919_p1;
assign grp_fu_708_p_opcode = grp_fu_919_opcode;
assign grp_fu_712_p_ce = 1'b1;
assign grp_fu_712_p_din0 = grp_fu_923_p0;
assign grp_fu_712_p_din1 = grp_fu_923_p1;
assign grp_fu_712_p_opcode = grp_fu_923_opcode;
assign grp_fu_716_p_ce = 1'b1;
assign grp_fu_716_p_din0 = grp_fu_927_p0;
assign grp_fu_716_p_din1 = grp_fu_927_p1;
assign grp_fu_716_p_opcode = grp_fu_927_opcode;
assign grp_fu_720_p_ce = 1'b1;
assign grp_fu_720_p_din0 = grp_fu_931_p0;
assign grp_fu_720_p_din1 = grp_fu_931_p1;
assign grp_fu_720_p_opcode = grp_fu_931_opcode;
assign grp_fu_724_p_ce = 1'b1;
assign grp_fu_724_p_din0 = grp_fu_935_p0;
assign grp_fu_724_p_din1 = grp_fu_935_p1;
assign grp_fu_724_p_opcode = grp_fu_935_opcode;
assign grp_fu_728_p_ce = 1'b1;
assign grp_fu_728_p_din0 = grp_fu_939_p0;
assign grp_fu_728_p_din1 = grp_fu_939_p1;
assign grp_fu_728_p_opcode = 2'd1;
assign grp_fu_732_p_ce = 1'b1;
assign grp_fu_732_p_din0 = grp_fu_943_p0;
assign grp_fu_732_p_din1 = grp_fu_943_p1;
assign grp_fu_736_p_ce = 1'b1;
assign grp_fu_736_p_din0 = grp_fu_948_p0;
assign grp_fu_736_p_din1 = grp_fu_948_p1;
assign grp_fu_740_p_ce = 1'b1;
assign grp_fu_740_p_din0 = grp_fu_955_p0;
assign grp_fu_740_p_din1 = grp_fu_955_p1;
assign grp_twiddles8_fu_744_p_ce = grp_twiddles8_fu_850_ap_ce;
assign grp_twiddles8_fu_744_p_din1 = grp_twiddles8_fu_850_a_x_1_read;
assign grp_twiddles8_fu_744_p_din10 = grp_twiddles8_fu_850_a_y_3_read;
assign grp_twiddles8_fu_744_p_din11 = grp_twiddles8_fu_850_a_y_4_read;
assign grp_twiddles8_fu_744_p_din12 = grp_twiddles8_fu_850_a_y_5_read;
assign grp_twiddles8_fu_744_p_din13 = grp_twiddles8_fu_850_a_y_6_read;
assign grp_twiddles8_fu_744_p_din14 = grp_twiddles8_fu_850_a_y_7_read;
assign grp_twiddles8_fu_744_p_din15 = grp_twiddles8_fu_850_i;
assign grp_twiddles8_fu_744_p_din16 = 10'd512;
assign grp_twiddles8_fu_744_p_din2 = grp_twiddles8_fu_850_a_x_2_read;
assign grp_twiddles8_fu_744_p_din3 = grp_twiddles8_fu_850_a_x_3_read;
assign grp_twiddles8_fu_744_p_din4 = grp_twiddles8_fu_850_a_x_4_read;
assign grp_twiddles8_fu_744_p_din5 = grp_twiddles8_fu_850_a_x_5_read;
assign grp_twiddles8_fu_744_p_din6 = grp_twiddles8_fu_850_a_x_6_read;
assign grp_twiddles8_fu_744_p_din7 = grp_twiddles8_fu_850_a_x_7_read;
assign grp_twiddles8_fu_744_p_din8 = grp_twiddles8_fu_850_a_y_1_read;
assign grp_twiddles8_fu_744_p_din9 = grp_twiddles8_fu_850_a_y_2_read;
assign lshr_ln_fu_1457_p4 = {{tid_7_reg_2283[5:1]}};
assign or_ln3_fu_1466_p3 = {{lshr_ln_fu_1457_p4}, {1'd1}};
assign sext_ln132_fu_1175_p1 = zext_ln130_cast_fu_1161_p3;
assign sext_ln135_1_fu_1375_p1 = zext_ln131_1_cast_fu_1347_p4;
assign sext_ln135_fu_1322_p1 = zext_ln131_cast_fu_1309_p3;
assign sext_ln136_1_fu_1299_p1 = $signed(add_ln136_fu_1294_p2);
assign sext_ln136_fu_1200_p1 = zext_ln130_cast_reg_2304;
assign tmp_s_fu_1338_p4 = {{tid_7_reg_2283[6:1]}};
assign trunc_ln127_fu_1157_p1 = ap_sig_allocacmp_tid_7[5:0];
assign trunc_ln148_10_fu_1738_p1 = bitcast_ln148_20_fu_1721_p1[62:0];
assign trunc_ln148_11_fu_1772_p1 = bitcast_ln148_22_fu_1755_p1[62:0];
assign trunc_ln148_12_fu_1946_p1 = bitcast_ln148_24_fu_1929_p1[62:0];
assign trunc_ln148_13_fu_1980_p1 = bitcast_ln148_26_fu_1963_p1[62:0];
assign trunc_ln148_14_fu_1807_p1 = bitcast_ln148_28_fu_1789_p1[62:0];
assign trunc_ln148_15_fu_1843_p1 = bitcast_ln148_30_fu_1825_p1[62:0];
assign trunc_ln148_16_fu_2082_p1 = bitcast_ln148_32_fu_2065_p1[62:0];
assign trunc_ln148_17_fu_2116_p1 = bitcast_ln148_34_fu_2099_p1[62:0];
assign trunc_ln148_18_fu_2225_p1 = bitcast_ln148_36_fu_2208_p1[62:0];
assign trunc_ln148_19_fu_2259_p1 = bitcast_ln148_38_fu_2242_p1[62:0];
assign trunc_ln148_1_fu_1632_p1 = bitcast_ln148_2_fu_1615_p1[62:0];
assign trunc_ln148_2_fu_1878_p1 = bitcast_ln148_4_fu_1861_p1[62:0];
assign trunc_ln148_3_fu_1912_p1 = bitcast_ln148_6_fu_1895_p1[62:0];
assign trunc_ln148_4_fu_1667_p1 = bitcast_ln148_8_fu_1649_p1[62:0];
assign trunc_ln148_5_fu_1703_p1 = bitcast_ln148_10_fu_1685_p1[62:0];
assign trunc_ln148_6_fu_2014_p1 = bitcast_ln148_12_fu_1997_p1[62:0];
assign trunc_ln148_7_fu_2048_p1 = bitcast_ln148_14_fu_2031_p1[62:0];
assign trunc_ln148_8_fu_2157_p1 = bitcast_ln148_16_fu_2140_p1[62:0];
assign trunc_ln148_9_fu_2191_p1 = bitcast_ln148_18_fu_2174_p1[62:0];
assign trunc_ln148_fu_1598_p1 = bitcast_ln148_fu_1581_p1[62:0];
assign work_x_address0 = work_x_address0_local;
assign work_x_address1 = work_x_address1_local;
assign work_x_ce0 = work_x_ce0_local;
assign work_x_ce1 = work_x_ce1_local;
assign work_y_address0 = work_y_address0_local;
assign work_y_address1 = work_y_address1_local;
assign work_y_ce0 = work_y_ce0_local;
assign work_y_ce1 = work_y_ce1_local;
assign xor_ln148_10_fu_1776_p3 = {{xor_ln148_29_fu_1766_p2}, {trunc_ln148_11_fu_1772_p1}};
assign xor_ln148_11_fu_1950_p3 = {{xor_ln148_30_fu_1940_p2}, {trunc_ln148_12_fu_1946_p1}};
assign xor_ln148_12_fu_1984_p3 = {{xor_ln148_31_fu_1974_p2}, {trunc_ln148_13_fu_1980_p1}};
assign xor_ln148_13_fu_1811_p3 = {{xor_ln148_32_fu_1801_p2}, {trunc_ln148_14_fu_1807_p1}};
assign xor_ln148_14_fu_1847_p3 = {{xor_ln148_33_fu_1837_p2}, {trunc_ln148_15_fu_1843_p1}};
assign xor_ln148_15_fu_2086_p3 = {{xor_ln148_34_fu_2076_p2}, {trunc_ln148_16_fu_2082_p1}};
assign xor_ln148_16_fu_2120_p3 = {{xor_ln148_35_fu_2110_p2}, {trunc_ln148_17_fu_2116_p1}};
assign xor_ln148_17_fu_2229_p3 = {{xor_ln148_36_fu_2219_p2}, {trunc_ln148_18_fu_2225_p1}};
assign xor_ln148_18_fu_2263_p3 = {{xor_ln148_37_fu_2253_p2}, {trunc_ln148_19_fu_2259_p1}};
assign xor_ln148_19_fu_1592_p2 = (bit_sel2_fu_1584_p3 ^ 1'd1);
assign xor_ln148_1_fu_1636_p3 = {{xor_ln148_fu_1626_p2}, {trunc_ln148_1_fu_1632_p1}};
assign xor_ln148_20_fu_1872_p2 = (bit_sel5_fu_1864_p3 ^ 1'd1);
assign xor_ln148_21_fu_1906_p2 = (bit_sel6_fu_1898_p3 ^ 1'd1);
assign xor_ln148_22_fu_1661_p2 = (bit_sel8_fu_1653_p3 ^ 1'd1);
assign xor_ln148_23_fu_1697_p2 = (bit_sel9_fu_1689_p3 ^ 1'd1);
assign xor_ln148_24_fu_2008_p2 = (bit_sel11_fu_2000_p3 ^ 1'd1);
assign xor_ln148_25_fu_2042_p2 = (bit_sel12_fu_2034_p3 ^ 1'd1);
assign xor_ln148_26_fu_2151_p2 = (bit_sel14_fu_2143_p3 ^ 1'd1);
assign xor_ln148_27_fu_2185_p2 = (bit_sel15_fu_2177_p3 ^ 1'd1);
assign xor_ln148_28_fu_1732_p2 = (bit_sel17_fu_1724_p3 ^ 1'd1);
assign xor_ln148_29_fu_1766_p2 = (bit_sel18_fu_1758_p3 ^ 1'd1);
assign xor_ln148_2_fu_1882_p3 = {{xor_ln148_20_fu_1872_p2}, {trunc_ln148_2_fu_1878_p1}};
assign xor_ln148_30_fu_1940_p2 = (bit_sel19_fu_1932_p3 ^ 1'd1);
assign xor_ln148_31_fu_1974_p2 = (bit_sel16_fu_1966_p3 ^ 1'd1);
assign xor_ln148_32_fu_1801_p2 = (bit_sel13_fu_1793_p3 ^ 1'd1);
assign xor_ln148_33_fu_1837_p2 = (bit_sel10_fu_1829_p3 ^ 1'd1);
assign xor_ln148_34_fu_2076_p2 = (bit_sel7_fu_2068_p3 ^ 1'd1);
assign xor_ln148_35_fu_2110_p2 = (bit_sel4_fu_2102_p3 ^ 1'd1);
assign xor_ln148_36_fu_2219_p2 = (bit_sel1_fu_2211_p3 ^ 1'd1);
assign xor_ln148_37_fu_2253_p2 = (bit_sel_fu_2245_p3 ^ 1'd1);
assign xor_ln148_3_fu_1916_p3 = {{xor_ln148_21_fu_1906_p2}, {trunc_ln148_3_fu_1912_p1}};
assign xor_ln148_4_fu_1671_p3 = {{xor_ln148_22_fu_1661_p2}, {trunc_ln148_4_fu_1667_p1}};
assign xor_ln148_5_fu_1707_p3 = {{xor_ln148_23_fu_1697_p2}, {trunc_ln148_5_fu_1703_p1}};
assign xor_ln148_6_fu_2018_p3 = {{xor_ln148_24_fu_2008_p2}, {trunc_ln148_6_fu_2014_p1}};
assign xor_ln148_7_fu_2052_p3 = {{xor_ln148_25_fu_2042_p2}, {trunc_ln148_7_fu_2048_p1}};
assign xor_ln148_8_fu_2161_p3 = {{xor_ln148_26_fu_2151_p2}, {trunc_ln148_8_fu_2157_p1}};
assign xor_ln148_9_fu_2195_p3 = {{xor_ln148_27_fu_2185_p2}, {trunc_ln148_9_fu_2191_p1}};
assign xor_ln148_fu_1626_p2 = (bit_sel3_fu_1618_p3 ^ 1'd1);
assign xor_ln148_s_fu_1742_p3 = {{xor_ln148_28_fu_1732_p2}, {trunc_ln148_10_fu_1738_p1}};
assign xor_ln1_fu_1602_p3 = {{xor_ln148_19_fu_1592_p2}, {trunc_ln148_fu_1598_p1}};
assign zext_ln127_1_fu_1185_p1 = tid_7_reg_2283;
assign zext_ln127_2_fu_1209_p1 = tid_7_reg_2283;
assign zext_ln127_fu_1415_p1 = tid_7_reg_2283;
assign zext_ln129_fu_1474_p1 = or_ln3_fu_1466_p3;
assign zext_ln130_1_fu_1218_p1 = add_ln130_fu_1212_p2;
assign zext_ln130_cast_fu_1161_p3 = {{1'd1}, {trunc_ln127_fu_1157_p1}};
assign zext_ln130_fu_1169_p1 = $unsigned(zext_ln130_cast_fu_1161_p3);
assign zext_ln131_1_cast_fu_1347_p4 = {{{{1'd1}, {tmp_s_fu_1338_p4}}}, {1'd1}};
assign zext_ln131_1_fu_1357_p1 = $unsigned(zext_ln131_1_cast_fu_1347_p4);
assign zext_ln131_cast_fu_1309_p3 = {{1'd1}, {tid_7_reg_2283}};
assign zext_ln131_fu_1316_p1 = $unsigned(zext_ln131_cast_fu_1309_p3);
assign zext_ln132_1_fu_1229_p1 = add_ln132_fu_1224_p2;
assign zext_ln132_fu_1179_p1 = $unsigned(sext_ln132_fu_1175_p1);
assign zext_ln133_1_cast_fu_1489_p4 = {{{{1'd1}, {zext_ln133_1_fu_1486_p1}}}, {1'd1}};
assign zext_ln133_1_fu_1486_p1 = tmp_s_reg_2474;
assign zext_ln133_2_fu_1499_p1 = zext_ln133_1_cast_fu_1489_p4;
assign zext_ln133_cast_fu_1426_p3 = {{1'd1}, {zext_ln127_2_reg_2355}};
assign zext_ln133_fu_1433_p1 = zext_ln133_cast_fu_1426_p3;
assign zext_ln134_1_fu_1288_p1 = add_ln134_1_fu_1283_p2;
assign zext_ln134_fu_1194_p1 = add_ln134_fu_1188_p2;
assign zext_ln135_1_fu_1379_p1 = $unsigned(sext_ln135_1_fu_1375_p1);
assign zext_ln135_fu_1326_p1 = $unsigned(sext_ln135_fu_1322_p1);
assign zext_ln136_1_fu_1303_p1 = $unsigned(sext_ln136_1_fu_1299_p1);
assign zext_ln136_fu_1203_p1 = $unsigned(sext_ln136_fu_1200_p1);
assign zext_ln154_fu_2133_p1 = lshr_ln_reg_2585_pp0_iter3_reg;
always @ (posedge ap_clk) begin
    zext_ln130_cast_reg_2304[6] <= 1'b1;
    zext_ln127_1_reg_2329[8:7] <= 2'b00;
    zext_ln127_2_reg_2355[7] <= 1'b0;
    or_ln3_reg_2590[0] <= 1'b1;
    or_ln3_reg_2590_pp0_iter1_reg[0] <= 1'b1;
    or_ln3_reg_2590_pp0_iter2_reg[0] <= 1'b1;
    or_ln3_reg_2590_pp0_iter3_reg[0] <= 1'b1;
    or_ln3_reg_2590_pp0_iter4_reg[0] <= 1'b1;
    or_ln3_reg_2590_pp0_iter5_reg[0] <= 1'b1;
    or_ln3_reg_2590_pp0_iter6_reg[0] <= 1'b1;
    or_ln3_reg_2590_pp0_iter7_reg[0] <= 1'b1;
    zext_ln154_reg_3245[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter5_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter6_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter7_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter8_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter9_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter10_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter11_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter12_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter13_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter14_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter15_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter16_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter17_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter18_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter19_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter20_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter21_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter22_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3245_pp0_iter23_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 
