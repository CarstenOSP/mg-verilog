module needwun (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,SEQA_0_address0,SEQA_0_ce0,SEQA_0_q0,SEQA_0_address1,SEQA_0_ce1,SEQA_0_q1,SEQA_1_address0,SEQA_1_ce0,SEQA_1_q0,SEQA_1_address1,SEQA_1_ce1,SEQA_1_q1,SEQB_0_address0,SEQB_0_ce0,SEQB_0_q0,SEQB_1_address0,SEQB_1_ce0,SEQB_1_q0,alignedA_0_address0,alignedA_0_ce0,alignedA_0_we0,alignedA_0_d0,alignedA_0_address1,alignedA_0_ce1,alignedA_0_we1,alignedA_0_d1,alignedA_1_address0,alignedA_1_ce0,alignedA_1_we0,alignedA_1_d0,alignedA_1_address1,alignedA_1_ce1,alignedA_1_we1,alignedA_1_d1,alignedB_0_address0,alignedB_0_ce0,alignedB_0_we0,alignedB_0_d0,alignedB_0_address1,alignedB_0_ce1,alignedB_0_we1,alignedB_0_d1,alignedB_1_address0,alignedB_1_ce0,alignedB_1_we0,alignedB_1_d0,alignedB_1_address1,alignedB_1_ce1,alignedB_1_we1,alignedB_1_d1,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_q0,M_0_address1,M_0_ce1,M_0_we1,M_0_d1,M_0_q1,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_q0,M_1_address1,M_1_ce1,M_1_we1,M_1_d1,M_1_q1,ptr_0_address0,ptr_0_ce0,ptr_0_we0,ptr_0_d0,ptr_0_q0,ptr_1_address0,ptr_1_ce0,ptr_1_we0,ptr_1_d0,ptr_1_q0); 
parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] SEQA_0_address0;
output   SEQA_0_ce0;
input  [7:0] SEQA_0_q0;
output  [5:0] SEQA_0_address1;
output   SEQA_0_ce1;
input  [7:0] SEQA_0_q1;
output  [5:0] SEQA_1_address0;
output   SEQA_1_ce0;
input  [7:0] SEQA_1_q0;
output  [5:0] SEQA_1_address1;
output   SEQA_1_ce1;
input  [7:0] SEQA_1_q1;
output  [5:0] SEQB_0_address0;
output   SEQB_0_ce0;
input  [7:0] SEQB_0_q0;
output  [5:0] SEQB_1_address0;
output   SEQB_1_ce0;
input  [7:0] SEQB_1_q0;
output  [6:0] alignedA_0_address0;
output   alignedA_0_ce0;
output   alignedA_0_we0;
output  [7:0] alignedA_0_d0;
output  [6:0] alignedA_0_address1;
output   alignedA_0_ce1;
output   alignedA_0_we1;
output  [7:0] alignedA_0_d1;
output  [6:0] alignedA_1_address0;
output   alignedA_1_ce0;
output   alignedA_1_we0;
output  [7:0] alignedA_1_d0;
output  [6:0] alignedA_1_address1;
output   alignedA_1_ce1;
output   alignedA_1_we1;
output  [7:0] alignedA_1_d1;
output  [6:0] alignedB_0_address0;
output   alignedB_0_ce0;
output   alignedB_0_we0;
output  [7:0] alignedB_0_d0;
output  [6:0] alignedB_0_address1;
output   alignedB_0_ce1;
output   alignedB_0_we1;
output  [7:0] alignedB_0_d1;
output  [6:0] alignedB_1_address0;
output   alignedB_1_ce0;
output   alignedB_1_we0;
output  [7:0] alignedB_1_d0;
output  [6:0] alignedB_1_address1;
output   alignedB_1_ce1;
output   alignedB_1_we1;
output  [7:0] alignedB_1_d1;
output  [13:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
input  [31:0] M_0_q0;
output  [13:0] M_0_address1;
output   M_0_ce1;
output   M_0_we1;
output  [31:0] M_0_d1;
input  [31:0] M_0_q1;
output  [13:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
input  [31:0] M_1_q0;
output  [13:0] M_1_address1;
output   M_1_ce1;
output   M_1_we1;
output  [31:0] M_1_d1;
input  [31:0] M_1_q1;
output  [13:0] ptr_0_address0;
output   ptr_0_ce0;
output   ptr_0_we0;
output  [7:0] ptr_0_d0;
input  [7:0] ptr_0_q0;
output  [13:0] ptr_1_address0;
output   ptr_1_ce0;
output   ptr_1_we0;
output  [7:0] ptr_1_d0;
input  [7:0] ptr_1_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] SEQA_0_address0;
reg SEQA_0_ce0;
reg SEQA_0_ce1;
reg[5:0] SEQA_1_address0;
reg SEQA_1_ce0;
reg SEQA_1_ce1;
reg[5:0] SEQB_0_address0;
reg SEQB_0_ce0;
reg[5:0] SEQB_1_address0;
reg SEQB_1_ce0;
reg[6:0] alignedA_0_address0;
reg alignedA_0_ce0;
reg alignedA_0_we0;
reg[7:0] alignedA_0_d0;
reg alignedA_0_ce1;
reg alignedA_0_we1;
reg[6:0] alignedA_1_address0;
reg alignedA_1_ce0;
reg alignedA_1_we0;
reg[7:0] alignedA_1_d0;
reg alignedA_1_ce1;
reg alignedA_1_we1;
reg[6:0] alignedB_0_address0;
reg alignedB_0_ce0;
reg alignedB_0_we0;
reg[7:0] alignedB_0_d0;
reg alignedB_0_ce1;
reg alignedB_0_we1;
reg[6:0] alignedB_1_address0;
reg alignedB_1_ce0;
reg alignedB_1_we0;
reg[7:0] alignedB_1_d0;
reg alignedB_1_ce1;
reg alignedB_1_we1;
reg[13:0] M_0_address0;
reg M_0_ce0;
reg M_0_we0;
reg[31:0] M_0_d0;
reg[13:0] M_0_address1;
reg M_0_ce1;
reg M_0_we1;
reg[31:0] M_0_d1;
reg[13:0] M_1_address0;
reg M_1_ce0;
reg M_1_we0;
reg[31:0] M_1_d0;
reg[13:0] M_1_address1;
reg M_1_ce1;
reg M_1_we1;
reg[31:0] M_1_d1;
reg[13:0] ptr_0_address0;
reg ptr_0_ce0;
reg ptr_0_we0;
reg[13:0] ptr_1_address0;
reg ptr_1_ce0;
reg ptr_1_we0;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] grp_needwun_Pipeline_trace_fu_172_ap_return;
reg   [2:0] targetBlock_reg_350;
wire    ap_CS_fsm_state8;
wire   [31:0] or_ln65_2_fu_244_p3;
wire    ap_CS_fsm_state9;
wire   [31:0] or_ln65_4_fu_252_p3;
wire   [31:0] or_ln65_5_fu_260_p3;
wire   [31:0] or_ln65_7_fu_276_p5;
wire   [31:0] or_ln65_8_fu_288_p3;
wire   [31:0] or_ln65_9_fu_296_p3;
wire   [31:0] or_ln65_1_fu_314_p3;
wire   [0:0] icmp_ln83_fu_332_p2;
reg   [0:0] icmp_ln83_reg_392;
wire    ap_CS_fsm_state10;
wire    grp_needwun_Pipeline_init_row_fu_136_ap_start;
wire    grp_needwun_Pipeline_init_row_fu_136_ap_done;
wire    grp_needwun_Pipeline_init_row_fu_136_ap_idle;
wire    grp_needwun_Pipeline_init_row_fu_136_ap_ready;
wire   [13:0] grp_needwun_Pipeline_init_row_fu_136_M_1_address0;
wire    grp_needwun_Pipeline_init_row_fu_136_M_1_ce0;
wire    grp_needwun_Pipeline_init_row_fu_136_M_1_we0;
wire   [31:0] grp_needwun_Pipeline_init_row_fu_136_M_1_d0;
wire   [13:0] grp_needwun_Pipeline_init_row_fu_136_M_1_address1;
wire    grp_needwun_Pipeline_init_row_fu_136_M_1_ce1;
wire    grp_needwun_Pipeline_init_row_fu_136_M_1_we1;
wire   [31:0] grp_needwun_Pipeline_init_row_fu_136_M_1_d1;
wire   [13:0] grp_needwun_Pipeline_init_row_fu_136_M_0_address0;
wire    grp_needwun_Pipeline_init_row_fu_136_M_0_ce0;
wire    grp_needwun_Pipeline_init_row_fu_136_M_0_we0;
wire   [31:0] grp_needwun_Pipeline_init_row_fu_136_M_0_d0;
wire   [13:0] grp_needwun_Pipeline_init_row_fu_136_M_0_address1;
wire    grp_needwun_Pipeline_init_row_fu_136_M_0_ce1;
wire    grp_needwun_Pipeline_init_row_fu_136_M_0_we1;
wire   [31:0] grp_needwun_Pipeline_init_row_fu_136_M_0_d1;
wire    grp_needwun_Pipeline_init_col_fu_144_ap_start;
wire    grp_needwun_Pipeline_init_col_fu_144_ap_done;
wire    grp_needwun_Pipeline_init_col_fu_144_ap_idle;
wire    grp_needwun_Pipeline_init_col_fu_144_ap_ready;
wire   [13:0] grp_needwun_Pipeline_init_col_fu_144_M_1_address0;
wire    grp_needwun_Pipeline_init_col_fu_144_M_1_ce0;
wire    grp_needwun_Pipeline_init_col_fu_144_M_1_we0;
wire   [31:0] grp_needwun_Pipeline_init_col_fu_144_M_1_d0;
wire   [13:0] grp_needwun_Pipeline_init_col_fu_144_M_1_address1;
wire    grp_needwun_Pipeline_init_col_fu_144_M_1_ce1;
wire    grp_needwun_Pipeline_init_col_fu_144_M_1_we1;
wire   [31:0] grp_needwun_Pipeline_init_col_fu_144_M_1_d1;
wire   [13:0] grp_needwun_Pipeline_init_col_fu_144_M_0_address0;
wire    grp_needwun_Pipeline_init_col_fu_144_M_0_ce0;
wire    grp_needwun_Pipeline_init_col_fu_144_M_0_we0;
wire   [31:0] grp_needwun_Pipeline_init_col_fu_144_M_0_d0;
wire   [13:0] grp_needwun_Pipeline_init_col_fu_144_M_0_address1;
wire    grp_needwun_Pipeline_init_col_fu_144_M_0_ce1;
wire    grp_needwun_Pipeline_init_col_fu_144_M_0_we1;
wire   [31:0] grp_needwun_Pipeline_init_col_fu_144_M_0_d1;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_ap_start;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_ap_done;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_ap_idle;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_ap_ready;
wire   [13:0] grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_0_address0;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_0_ce0;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_0_we0;
wire   [7:0] grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_0_d0;
wire   [13:0] grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_0_address0;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_0_ce0;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_0_we0;
wire   [31:0] grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_0_d0;
wire   [13:0] grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_0_address1;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_0_ce1;
wire   [5:0] grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_1_address0;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_1_ce0;
wire   [5:0] grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_1_address1;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_1_ce1;
wire   [13:0] grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_1_address0;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_1_ce0;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_1_we0;
wire   [31:0] grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_1_d0;
wire   [13:0] grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_1_address1;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_1_ce1;
wire   [5:0] grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_0_address0;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_0_ce0;
wire   [5:0] grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_0_address1;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_0_ce1;
wire   [5:0] grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQB_0_address0;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQB_0_ce0;
wire   [5:0] grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQB_1_address0;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQB_1_ce0;
wire   [13:0] grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_1_address0;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_1_ce0;
wire    grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_1_we0;
wire   [7:0] grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_1_d0;
wire    grp_needwun_Pipeline_trace_fu_172_ap_start;
wire    grp_needwun_Pipeline_trace_fu_172_ap_done;
wire    grp_needwun_Pipeline_trace_fu_172_ap_idle;
wire    grp_needwun_Pipeline_trace_fu_172_ap_ready;
wire   [6:0] grp_needwun_Pipeline_trace_fu_172_alignedB_1_address0;
wire    grp_needwun_Pipeline_trace_fu_172_alignedB_1_ce0;
wire    grp_needwun_Pipeline_trace_fu_172_alignedB_1_we0;
wire   [7:0] grp_needwun_Pipeline_trace_fu_172_alignedB_1_d0;
wire   [6:0] grp_needwun_Pipeline_trace_fu_172_alignedB_0_address0;
wire    grp_needwun_Pipeline_trace_fu_172_alignedB_0_ce0;
wire    grp_needwun_Pipeline_trace_fu_172_alignedB_0_we0;
wire   [7:0] grp_needwun_Pipeline_trace_fu_172_alignedB_0_d0;
wire   [6:0] grp_needwun_Pipeline_trace_fu_172_alignedA_1_address0;
wire    grp_needwun_Pipeline_trace_fu_172_alignedA_1_ce0;
wire    grp_needwun_Pipeline_trace_fu_172_alignedA_1_we0;
wire   [7:0] grp_needwun_Pipeline_trace_fu_172_alignedA_1_d0;
wire   [6:0] grp_needwun_Pipeline_trace_fu_172_alignedA_0_address0;
wire    grp_needwun_Pipeline_trace_fu_172_alignedA_0_ce0;
wire    grp_needwun_Pipeline_trace_fu_172_alignedA_0_we0;
wire   [7:0] grp_needwun_Pipeline_trace_fu_172_alignedA_0_d0;
wire   [5:0] grp_needwun_Pipeline_trace_fu_172_SEQB_0_address0;
wire    grp_needwun_Pipeline_trace_fu_172_SEQB_0_ce0;
wire   [5:0] grp_needwun_Pipeline_trace_fu_172_SEQB_1_address0;
wire    grp_needwun_Pipeline_trace_fu_172_SEQB_1_ce0;
wire   [13:0] grp_needwun_Pipeline_trace_fu_172_ptr_0_address0;
wire    grp_needwun_Pipeline_trace_fu_172_ptr_0_ce0;
wire   [13:0] grp_needwun_Pipeline_trace_fu_172_ptr_1_address0;
wire    grp_needwun_Pipeline_trace_fu_172_ptr_1_ce0;
wire   [5:0] grp_needwun_Pipeline_trace_fu_172_SEQA_0_address0;
wire    grp_needwun_Pipeline_trace_fu_172_SEQA_0_ce0;
wire   [5:0] grp_needwun_Pipeline_trace_fu_172_SEQA_1_address0;
wire    grp_needwun_Pipeline_trace_fu_172_SEQA_1_ce0;
wire   [31:0] grp_needwun_Pipeline_trace_fu_172_b_str_idx_6_out;
wire    grp_needwun_Pipeline_trace_fu_172_b_str_idx_6_out_ap_vld;
wire   [31:0] grp_needwun_Pipeline_trace_fu_172_a_str_idx_0_0_out;
wire    grp_needwun_Pipeline_trace_fu_172_a_str_idx_0_0_out_ap_vld;
wire    grp_needwun_Pipeline_pad_a_fu_198_ap_start;
wire    grp_needwun_Pipeline_pad_a_fu_198_ap_done;
wire    grp_needwun_Pipeline_pad_a_fu_198_ap_idle;
wire    grp_needwun_Pipeline_pad_a_fu_198_ap_ready;
wire   [6:0] grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_address0;
wire    grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_ce0;
wire    grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_we0;
wire   [7:0] grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_d0;
wire   [6:0] grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_address1;
wire    grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_ce1;
wire    grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_we1;
wire   [7:0] grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_d1;
wire   [6:0] grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_address0;
wire    grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_ce0;
wire    grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_we0;
wire   [7:0] grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_d0;
wire   [6:0] grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_address1;
wire    grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_ce1;
wire    grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_we1;
wire   [7:0] grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_d1;
wire    grp_needwun_Pipeline_pad_b_fu_208_ap_start;
wire    grp_needwun_Pipeline_pad_b_fu_208_ap_done;
wire    grp_needwun_Pipeline_pad_b_fu_208_ap_idle;
wire    grp_needwun_Pipeline_pad_b_fu_208_ap_ready;
wire   [6:0] grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_address0;
wire    grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_ce0;
wire    grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_we0;
wire   [7:0] grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_d0;
wire   [6:0] grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_address1;
wire    grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_ce1;
wire    grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_we1;
wire   [7:0] grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_d1;
wire   [6:0] grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_address0;
wire    grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_ce0;
wire    grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_we0;
wire   [7:0] grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_d0;
wire   [6:0] grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_address1;
wire    grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_ce1;
wire    grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_we1;
wire   [7:0] grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_d1;
reg   [31:0] b_str_idx_reg_114;
reg    grp_needwun_Pipeline_init_row_fu_136_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_needwun_Pipeline_init_col_fu_144_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_needwun_Pipeline_fill_out_fill_in_fu_152_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg    grp_needwun_Pipeline_trace_fu_172_ap_start_reg;
wire    ap_CS_fsm_state7;
reg   [31:0] b_str_idx_6_loc_fu_110;
reg   [31:0] a_str_idx_0_0_loc_fu_106;
reg    grp_needwun_Pipeline_pad_a_fu_198_ap_start_reg;
wire    ap_CS_fsm_state11;
reg    grp_needwun_Pipeline_pad_b_fu_208_ap_start_reg;
wire    ap_CS_fsm_state12;
wire   [29:0] grp_fu_218_p4;
wire   [28:0] grp_fu_227_p4;
wire   [0:0] tmp_fu_268_p3;
wire   [30:0] tmp_s_fu_304_p4;
wire   [23:0] tmp_16_fu_322_p4;
reg    ap_block_state12_on_subcall_done;
reg   [11:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
reg    ap_ST_fsm_state12_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 grp_needwun_Pipeline_init_row_fu_136_ap_start_reg = 1'b0;
#0 grp_needwun_Pipeline_init_col_fu_144_ap_start_reg = 1'b0;
#0 grp_needwun_Pipeline_fill_out_fill_in_fu_152_ap_start_reg = 1'b0;
#0 grp_needwun_Pipeline_trace_fu_172_ap_start_reg = 1'b0;
#0 grp_needwun_Pipeline_pad_a_fu_198_ap_start_reg = 1'b0;
#0 grp_needwun_Pipeline_pad_b_fu_208_ap_start_reg = 1'b0;
end
needwun_needwun_Pipeline_init_row grp_needwun_Pipeline_init_row_fu_136(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_needwun_Pipeline_init_row_fu_136_ap_start),.ap_done(grp_needwun_Pipeline_init_row_fu_136_ap_done),.ap_idle(grp_needwun_Pipeline_init_row_fu_136_ap_idle),.ap_ready(grp_needwun_Pipeline_init_row_fu_136_ap_ready),.M_1_address0(grp_needwun_Pipeline_init_row_fu_136_M_1_address0),.M_1_ce0(grp_needwun_Pipeline_init_row_fu_136_M_1_ce0),.M_1_we0(grp_needwun_Pipeline_init_row_fu_136_M_1_we0),.M_1_d0(grp_needwun_Pipeline_init_row_fu_136_M_1_d0),.M_1_address1(grp_needwun_Pipeline_init_row_fu_136_M_1_address1),.M_1_ce1(grp_needwun_Pipeline_init_row_fu_136_M_1_ce1),.M_1_we1(grp_needwun_Pipeline_init_row_fu_136_M_1_we1),.M_1_d1(grp_needwun_Pipeline_init_row_fu_136_M_1_d1),.M_0_address0(grp_needwun_Pipeline_init_row_fu_136_M_0_address0),.M_0_ce0(grp_needwun_Pipeline_init_row_fu_136_M_0_ce0),.M_0_we0(grp_needwun_Pipeline_init_row_fu_136_M_0_we0),.M_0_d0(grp_needwun_Pipeline_init_row_fu_136_M_0_d0),.M_0_address1(grp_needwun_Pipeline_init_row_fu_136_M_0_address1),.M_0_ce1(grp_needwun_Pipeline_init_row_fu_136_M_0_ce1),.M_0_we1(grp_needwun_Pipeline_init_row_fu_136_M_0_we1),.M_0_d1(grp_needwun_Pipeline_init_row_fu_136_M_0_d1));
needwun_needwun_Pipeline_init_col grp_needwun_Pipeline_init_col_fu_144(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_needwun_Pipeline_init_col_fu_144_ap_start),.ap_done(grp_needwun_Pipeline_init_col_fu_144_ap_done),.ap_idle(grp_needwun_Pipeline_init_col_fu_144_ap_idle),.ap_ready(grp_needwun_Pipeline_init_col_fu_144_ap_ready),.M_1_address0(grp_needwun_Pipeline_init_col_fu_144_M_1_address0),.M_1_ce0(grp_needwun_Pipeline_init_col_fu_144_M_1_ce0),.M_1_we0(grp_needwun_Pipeline_init_col_fu_144_M_1_we0),.M_1_d0(grp_needwun_Pipeline_init_col_fu_144_M_1_d0),.M_1_address1(grp_needwun_Pipeline_init_col_fu_144_M_1_address1),.M_1_ce1(grp_needwun_Pipeline_init_col_fu_144_M_1_ce1),.M_1_we1(grp_needwun_Pipeline_init_col_fu_144_M_1_we1),.M_1_d1(grp_needwun_Pipeline_init_col_fu_144_M_1_d1),.M_0_address0(grp_needwun_Pipeline_init_col_fu_144_M_0_address0),.M_0_ce0(grp_needwun_Pipeline_init_col_fu_144_M_0_ce0),.M_0_we0(grp_needwun_Pipeline_init_col_fu_144_M_0_we0),.M_0_d0(grp_needwun_Pipeline_init_col_fu_144_M_0_d0),.M_0_address1(grp_needwun_Pipeline_init_col_fu_144_M_0_address1),.M_0_ce1(grp_needwun_Pipeline_init_col_fu_144_M_0_ce1),.M_0_we1(grp_needwun_Pipeline_init_col_fu_144_M_0_we1),.M_0_d1(grp_needwun_Pipeline_init_col_fu_144_M_0_d1));
needwun_needwun_Pipeline_fill_out_fill_in grp_needwun_Pipeline_fill_out_fill_in_fu_152(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_needwun_Pipeline_fill_out_fill_in_fu_152_ap_start),.ap_done(grp_needwun_Pipeline_fill_out_fill_in_fu_152_ap_done),.ap_idle(grp_needwun_Pipeline_fill_out_fill_in_fu_152_ap_idle),.ap_ready(grp_needwun_Pipeline_fill_out_fill_in_fu_152_ap_ready),.ptr_0_address0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_0_address0),.ptr_0_ce0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_0_ce0),.ptr_0_we0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_0_we0),.ptr_0_d0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_0_d0),.M_0_address0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_0_address0),.M_0_ce0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_0_ce0),.M_0_we0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_0_we0),.M_0_d0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_0_d0),.M_0_q0(M_0_q0),.M_0_address1(grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_0_address1),.M_0_ce1(grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_0_ce1),.M_0_q1(M_0_q1),.SEQA_1_address0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_1_address0),.SEQA_1_ce0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_1_ce0),.SEQA_1_q0(SEQA_1_q0),.SEQA_1_address1(grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_1_address1),.SEQA_1_ce1(grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_1_ce1),.SEQA_1_q1(SEQA_1_q1),.M_1_address0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_1_address0),.M_1_ce0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_1_ce0),.M_1_we0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_1_we0),.M_1_d0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_1_d0),.M_1_q0(M_1_q0),.M_1_address1(grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_1_address1),.M_1_ce1(grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_1_ce1),.M_1_q1(M_1_q1),.SEQA_0_address0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_0_address0),.SEQA_0_ce0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_0_ce0),.SEQA_0_q0(SEQA_0_q0),.SEQA_0_address1(grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_0_address1),.SEQA_0_ce1(grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_0_ce1),.SEQA_0_q1(SEQA_0_q1),.SEQB_0_address0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQB_0_address0),.SEQB_0_ce0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQB_0_ce0),.SEQB_0_q0(SEQB_0_q0),.SEQB_1_address0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQB_1_address0),.SEQB_1_ce0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQB_1_ce0),.SEQB_1_q0(SEQB_1_q0),.ptr_1_address0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_1_address0),.ptr_1_ce0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_1_ce0),.ptr_1_we0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_1_we0),.ptr_1_d0(grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_1_d0));
needwun_needwun_Pipeline_trace grp_needwun_Pipeline_trace_fu_172(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_needwun_Pipeline_trace_fu_172_ap_start),.ap_done(grp_needwun_Pipeline_trace_fu_172_ap_done),.ap_idle(grp_needwun_Pipeline_trace_fu_172_ap_idle),.ap_ready(grp_needwun_Pipeline_trace_fu_172_ap_ready),.alignedB_1_address0(grp_needwun_Pipeline_trace_fu_172_alignedB_1_address0),.alignedB_1_ce0(grp_needwun_Pipeline_trace_fu_172_alignedB_1_ce0),.alignedB_1_we0(grp_needwun_Pipeline_trace_fu_172_alignedB_1_we0),.alignedB_1_d0(grp_needwun_Pipeline_trace_fu_172_alignedB_1_d0),.alignedB_0_address0(grp_needwun_Pipeline_trace_fu_172_alignedB_0_address0),.alignedB_0_ce0(grp_needwun_Pipeline_trace_fu_172_alignedB_0_ce0),.alignedB_0_we0(grp_needwun_Pipeline_trace_fu_172_alignedB_0_we0),.alignedB_0_d0(grp_needwun_Pipeline_trace_fu_172_alignedB_0_d0),.alignedA_1_address0(grp_needwun_Pipeline_trace_fu_172_alignedA_1_address0),.alignedA_1_ce0(grp_needwun_Pipeline_trace_fu_172_alignedA_1_ce0),.alignedA_1_we0(grp_needwun_Pipeline_trace_fu_172_alignedA_1_we0),.alignedA_1_d0(grp_needwun_Pipeline_trace_fu_172_alignedA_1_d0),.alignedA_0_address0(grp_needwun_Pipeline_trace_fu_172_alignedA_0_address0),.alignedA_0_ce0(grp_needwun_Pipeline_trace_fu_172_alignedA_0_ce0),.alignedA_0_we0(grp_needwun_Pipeline_trace_fu_172_alignedA_0_we0),.alignedA_0_d0(grp_needwun_Pipeline_trace_fu_172_alignedA_0_d0),.SEQB_0_address0(grp_needwun_Pipeline_trace_fu_172_SEQB_0_address0),.SEQB_0_ce0(grp_needwun_Pipeline_trace_fu_172_SEQB_0_ce0),.SEQB_0_q0(SEQB_0_q0),.SEQB_1_address0(grp_needwun_Pipeline_trace_fu_172_SEQB_1_address0),.SEQB_1_ce0(grp_needwun_Pipeline_trace_fu_172_SEQB_1_ce0),.SEQB_1_q0(SEQB_1_q0),.ptr_0_address0(grp_needwun_Pipeline_trace_fu_172_ptr_0_address0),.ptr_0_ce0(grp_needwun_Pipeline_trace_fu_172_ptr_0_ce0),.ptr_0_q0(ptr_0_q0),.ptr_1_address0(grp_needwun_Pipeline_trace_fu_172_ptr_1_address0),.ptr_1_ce0(grp_needwun_Pipeline_trace_fu_172_ptr_1_ce0),.ptr_1_q0(ptr_1_q0),.SEQA_0_address0(grp_needwun_Pipeline_trace_fu_172_SEQA_0_address0),.SEQA_0_ce0(grp_needwun_Pipeline_trace_fu_172_SEQA_0_ce0),.SEQA_0_q0(SEQA_0_q0),.SEQA_1_address0(grp_needwun_Pipeline_trace_fu_172_SEQA_1_address0),.SEQA_1_ce0(grp_needwun_Pipeline_trace_fu_172_SEQA_1_ce0),.SEQA_1_q0(SEQA_1_q0),.b_str_idx_6_out(grp_needwun_Pipeline_trace_fu_172_b_str_idx_6_out),.b_str_idx_6_out_ap_vld(grp_needwun_Pipeline_trace_fu_172_b_str_idx_6_out_ap_vld),.a_str_idx_0_0_out(grp_needwun_Pipeline_trace_fu_172_a_str_idx_0_0_out),.a_str_idx_0_0_out_ap_vld(grp_needwun_Pipeline_trace_fu_172_a_str_idx_0_0_out_ap_vld),.ap_return(grp_needwun_Pipeline_trace_fu_172_ap_return));
needwun_needwun_Pipeline_pad_a grp_needwun_Pipeline_pad_a_fu_198(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_needwun_Pipeline_pad_a_fu_198_ap_start),.ap_done(grp_needwun_Pipeline_pad_a_fu_198_ap_done),.ap_idle(grp_needwun_Pipeline_pad_a_fu_198_ap_idle),.ap_ready(grp_needwun_Pipeline_pad_a_fu_198_ap_ready),.b_str_idx_7(b_str_idx_reg_114),.alignedA_0_address0(grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_address0),.alignedA_0_ce0(grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_ce0),.alignedA_0_we0(grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_we0),.alignedA_0_d0(grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_d0),.alignedA_0_address1(grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_address1),.alignedA_0_ce1(grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_ce1),.alignedA_0_we1(grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_we1),.alignedA_0_d1(grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_d1),.alignedA_1_address0(grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_address0),.alignedA_1_ce0(grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_ce0),.alignedA_1_we0(grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_we0),.alignedA_1_d0(grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_d0),.alignedA_1_address1(grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_address1),.alignedA_1_ce1(grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_ce1),.alignedA_1_we1(grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_we1),.alignedA_1_d1(grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_d1));
needwun_needwun_Pipeline_pad_b grp_needwun_Pipeline_pad_b_fu_208(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_needwun_Pipeline_pad_b_fu_208_ap_start),.ap_done(grp_needwun_Pipeline_pad_b_fu_208_ap_done),.ap_idle(grp_needwun_Pipeline_pad_b_fu_208_ap_idle),.ap_ready(grp_needwun_Pipeline_pad_b_fu_208_ap_ready),.b_str_idx_7(b_str_idx_reg_114),.alignedB_0_address0(grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_address0),.alignedB_0_ce0(grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_ce0),.alignedB_0_we0(grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_we0),.alignedB_0_d0(grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_d0),.alignedB_0_address1(grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_address1),.alignedB_0_ce1(grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_ce1),.alignedB_0_we1(grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_we1),.alignedB_0_d1(grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_d1),.alignedB_1_address0(grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_address0),.alignedB_1_ce0(grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_ce0),.alignedB_1_we0(grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_we0),.alignedB_1_d0(grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_d0),.alignedB_1_address1(grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_address1),.alignedB_1_ce1(grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_ce1),.alignedB_1_we1(grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_we1),.alignedB_1_d1(grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_d1));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_needwun_Pipeline_fill_out_fill_in_fu_152_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_needwun_Pipeline_fill_out_fill_in_fu_152_ap_start_reg <= 1'b1;
        end else if ((grp_needwun_Pipeline_fill_out_fill_in_fu_152_ap_ready == 1'b1)) begin
            grp_needwun_Pipeline_fill_out_fill_in_fu_152_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_needwun_Pipeline_init_col_fu_144_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_needwun_Pipeline_init_col_fu_144_ap_start_reg <= 1'b1;
        end else if ((grp_needwun_Pipeline_init_col_fu_144_ap_ready == 1'b1)) begin
            grp_needwun_Pipeline_init_col_fu_144_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_needwun_Pipeline_init_row_fu_136_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_needwun_Pipeline_init_row_fu_136_ap_start_reg <= 1'b1;
        end else if ((grp_needwun_Pipeline_init_row_fu_136_ap_ready == 1'b1)) begin
            grp_needwun_Pipeline_init_row_fu_136_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_needwun_Pipeline_pad_a_fu_198_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_needwun_Pipeline_pad_a_fu_198_ap_start_reg <= 1'b1;
        end else if ((grp_needwun_Pipeline_pad_a_fu_198_ap_ready == 1'b1)) begin
            grp_needwun_Pipeline_pad_a_fu_198_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_needwun_Pipeline_pad_b_fu_208_ap_start_reg <= 1'b0;
    end else begin
        if (((grp_needwun_Pipeline_pad_a_fu_198_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11) & (icmp_ln83_reg_392 == 1'd1))) begin
            grp_needwun_Pipeline_pad_b_fu_208_ap_start_reg <= 1'b1;
        end else if ((grp_needwun_Pipeline_pad_b_fu_208_ap_ready == 1'b1)) begin
            grp_needwun_Pipeline_pad_b_fu_208_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_needwun_Pipeline_trace_fu_172_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_needwun_Pipeline_trace_fu_172_ap_start_reg <= 1'b1;
        end else if ((grp_needwun_Pipeline_trace_fu_172_ap_ready == 1'b1)) begin
            grp_needwun_Pipeline_trace_fu_172_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        if ((targetBlock_reg_350 == 3'd0)) begin
            b_str_idx_reg_114 <= b_str_idx_6_loc_fu_110;
        end else if ((targetBlock_reg_350 == 3'd7)) begin
            b_str_idx_reg_114 <= or_ln65_1_fu_314_p3;
        end else if ((targetBlock_reg_350 == 3'd6)) begin
            b_str_idx_reg_114 <= or_ln65_2_fu_244_p3;
        end else if ((targetBlock_reg_350 == 3'd5)) begin
            b_str_idx_reg_114 <= or_ln65_4_fu_252_p3;
        end else if ((targetBlock_reg_350 == 3'd4)) begin
            b_str_idx_reg_114 <= or_ln65_5_fu_260_p3;
        end else if ((targetBlock_reg_350 == 3'd3)) begin
            b_str_idx_reg_114 <= or_ln65_7_fu_276_p5;
        end else if ((targetBlock_reg_350 == 3'd2)) begin
            b_str_idx_reg_114 <= or_ln65_8_fu_288_p3;
        end else if ((targetBlock_reg_350 == 3'd1)) begin
            b_str_idx_reg_114 <= or_ln65_9_fu_296_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((grp_needwun_Pipeline_trace_fu_172_a_str_idx_0_0_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        a_str_idx_0_0_loc_fu_106 <= grp_needwun_Pipeline_trace_fu_172_a_str_idx_0_0_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_needwun_Pipeline_trace_fu_172_b_str_idx_6_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        b_str_idx_6_loc_fu_110 <= grp_needwun_Pipeline_trace_fu_172_b_str_idx_6_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        icmp_ln83_reg_392 <= icmp_ln83_fu_332_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        targetBlock_reg_350 <= grp_needwun_Pipeline_trace_fu_172_ap_return;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        M_0_address0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_0_address0 = grp_needwun_Pipeline_init_col_fu_144_M_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_0_address0 = grp_needwun_Pipeline_init_row_fu_136_M_0_address0;
    end else begin
        M_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        M_0_address1 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_0_address1 = grp_needwun_Pipeline_init_col_fu_144_M_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_0_address1 = grp_needwun_Pipeline_init_row_fu_136_M_0_address1;
    end else begin
        M_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        M_0_ce0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_0_ce0 = grp_needwun_Pipeline_init_col_fu_144_M_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_0_ce0 = grp_needwun_Pipeline_init_row_fu_136_M_0_ce0;
    end else begin
        M_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        M_0_ce1 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_0_ce1 = grp_needwun_Pipeline_init_col_fu_144_M_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_0_ce1 = grp_needwun_Pipeline_init_row_fu_136_M_0_ce1;
    end else begin
        M_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        M_0_d0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_0_d0 = grp_needwun_Pipeline_init_col_fu_144_M_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_0_d0 = grp_needwun_Pipeline_init_row_fu_136_M_0_d0;
    end else begin
        M_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        M_0_d1 = grp_needwun_Pipeline_init_col_fu_144_M_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_0_d1 = grp_needwun_Pipeline_init_row_fu_136_M_0_d1;
    end else begin
        M_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        M_0_we0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_0_we0 = grp_needwun_Pipeline_init_col_fu_144_M_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_0_we0 = grp_needwun_Pipeline_init_row_fu_136_M_0_we0;
    end else begin
        M_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        M_0_we1 = grp_needwun_Pipeline_init_col_fu_144_M_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_0_we1 = grp_needwun_Pipeline_init_row_fu_136_M_0_we1;
    end else begin
        M_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        M_1_address0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_1_address0 = grp_needwun_Pipeline_init_col_fu_144_M_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_1_address0 = grp_needwun_Pipeline_init_row_fu_136_M_1_address0;
    end else begin
        M_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        M_1_address1 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_1_address1 = grp_needwun_Pipeline_init_col_fu_144_M_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_1_address1 = grp_needwun_Pipeline_init_row_fu_136_M_1_address1;
    end else begin
        M_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        M_1_ce0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_1_ce0 = grp_needwun_Pipeline_init_col_fu_144_M_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_1_ce0 = grp_needwun_Pipeline_init_row_fu_136_M_1_ce0;
    end else begin
        M_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        M_1_ce1 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_1_ce1 = grp_needwun_Pipeline_init_col_fu_144_M_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_1_ce1 = grp_needwun_Pipeline_init_row_fu_136_M_1_ce1;
    end else begin
        M_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        M_1_d0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_1_d0 = grp_needwun_Pipeline_init_col_fu_144_M_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_1_d0 = grp_needwun_Pipeline_init_row_fu_136_M_1_d0;
    end else begin
        M_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        M_1_d1 = grp_needwun_Pipeline_init_col_fu_144_M_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_1_d1 = grp_needwun_Pipeline_init_row_fu_136_M_1_d1;
    end else begin
        M_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        M_1_we0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_M_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_1_we0 = grp_needwun_Pipeline_init_col_fu_144_M_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_1_we0 = grp_needwun_Pipeline_init_row_fu_136_M_1_we0;
    end else begin
        M_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        M_1_we1 = grp_needwun_Pipeline_init_col_fu_144_M_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_1_we1 = grp_needwun_Pipeline_init_row_fu_136_M_1_we1;
    end else begin
        M_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        SEQA_0_address0 = grp_needwun_Pipeline_trace_fu_172_SEQA_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        SEQA_0_address0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_0_address0;
    end else begin
        SEQA_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        SEQA_0_ce0 = grp_needwun_Pipeline_trace_fu_172_SEQA_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        SEQA_0_ce0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_0_ce0;
    end else begin
        SEQA_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        SEQA_0_ce1 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_0_ce1;
    end else begin
        SEQA_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        SEQA_1_address0 = grp_needwun_Pipeline_trace_fu_172_SEQA_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        SEQA_1_address0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_1_address0;
    end else begin
        SEQA_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        SEQA_1_ce0 = grp_needwun_Pipeline_trace_fu_172_SEQA_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        SEQA_1_ce0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_1_ce0;
    end else begin
        SEQA_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        SEQA_1_ce1 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_1_ce1;
    end else begin
        SEQA_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        SEQB_0_address0 = grp_needwun_Pipeline_trace_fu_172_SEQB_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        SEQB_0_address0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQB_0_address0;
    end else begin
        SEQB_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        SEQB_0_ce0 = grp_needwun_Pipeline_trace_fu_172_SEQB_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        SEQB_0_ce0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQB_0_ce0;
    end else begin
        SEQB_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        SEQB_1_address0 = grp_needwun_Pipeline_trace_fu_172_SEQB_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        SEQB_1_address0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQB_1_address0;
    end else begin
        SEQB_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        SEQB_1_ce0 = grp_needwun_Pipeline_trace_fu_172_SEQB_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        SEQB_1_ce0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQB_1_ce0;
    end else begin
        SEQB_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        alignedA_0_address0 = grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        alignedA_0_address0 = grp_needwun_Pipeline_trace_fu_172_alignedA_0_address0;
    end else begin
        alignedA_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        alignedA_0_ce0 = grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        alignedA_0_ce0 = grp_needwun_Pipeline_trace_fu_172_alignedA_0_ce0;
    end else begin
        alignedA_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        alignedA_0_ce1 = grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_ce1;
    end else begin
        alignedA_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        alignedA_0_d0 = grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        alignedA_0_d0 = grp_needwun_Pipeline_trace_fu_172_alignedA_0_d0;
    end else begin
        alignedA_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        alignedA_0_we0 = grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        alignedA_0_we0 = grp_needwun_Pipeline_trace_fu_172_alignedA_0_we0;
    end else begin
        alignedA_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        alignedA_0_we1 = grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_we1;
    end else begin
        alignedA_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        alignedA_1_address0 = grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        alignedA_1_address0 = grp_needwun_Pipeline_trace_fu_172_alignedA_1_address0;
    end else begin
        alignedA_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        alignedA_1_ce0 = grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        alignedA_1_ce0 = grp_needwun_Pipeline_trace_fu_172_alignedA_1_ce0;
    end else begin
        alignedA_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        alignedA_1_ce1 = grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_ce1;
    end else begin
        alignedA_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        alignedA_1_d0 = grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        alignedA_1_d0 = grp_needwun_Pipeline_trace_fu_172_alignedA_1_d0;
    end else begin
        alignedA_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        alignedA_1_we0 = grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        alignedA_1_we0 = grp_needwun_Pipeline_trace_fu_172_alignedA_1_we0;
    end else begin
        alignedA_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        alignedA_1_we1 = grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_we1;
    end else begin
        alignedA_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_392 == 1'd1))) begin
        alignedB_0_address0 = grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        alignedB_0_address0 = grp_needwun_Pipeline_trace_fu_172_alignedB_0_address0;
    end else begin
        alignedB_0_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_392 == 1'd1))) begin
        alignedB_0_ce0 = grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        alignedB_0_ce0 = grp_needwun_Pipeline_trace_fu_172_alignedB_0_ce0;
    end else begin
        alignedB_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_392 == 1'd1))) begin
        alignedB_0_ce1 = grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_ce1;
    end else begin
        alignedB_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_392 == 1'd1))) begin
        alignedB_0_d0 = grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        alignedB_0_d0 = grp_needwun_Pipeline_trace_fu_172_alignedB_0_d0;
    end else begin
        alignedB_0_d0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_392 == 1'd1))) begin
        alignedB_0_we0 = grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        alignedB_0_we0 = grp_needwun_Pipeline_trace_fu_172_alignedB_0_we0;
    end else begin
        alignedB_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_392 == 1'd1))) begin
        alignedB_0_we1 = grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_we1;
    end else begin
        alignedB_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_392 == 1'd1))) begin
        alignedB_1_address0 = grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        alignedB_1_address0 = grp_needwun_Pipeline_trace_fu_172_alignedB_1_address0;
    end else begin
        alignedB_1_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_392 == 1'd1))) begin
        alignedB_1_ce0 = grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        alignedB_1_ce0 = grp_needwun_Pipeline_trace_fu_172_alignedB_1_ce0;
    end else begin
        alignedB_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_392 == 1'd1))) begin
        alignedB_1_ce1 = grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_ce1;
    end else begin
        alignedB_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_392 == 1'd1))) begin
        alignedB_1_d0 = grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        alignedB_1_d0 = grp_needwun_Pipeline_trace_fu_172_alignedB_1_d0;
    end else begin
        alignedB_1_d0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_392 == 1'd1))) begin
        alignedB_1_we0 = grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        alignedB_1_we0 = grp_needwun_Pipeline_trace_fu_172_alignedB_1_we0;
    end else begin
        alignedB_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_392 == 1'd1))) begin
        alignedB_1_we1 = grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_we1;
    end else begin
        alignedB_1_we1 = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_needwun_Pipeline_pad_a_fu_198_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state12_on_subcall_done)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
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
    if ((grp_needwun_Pipeline_init_row_fu_136_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_needwun_Pipeline_init_col_fu_144_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_needwun_Pipeline_fill_out_fill_in_fu_152_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_needwun_Pipeline_trace_fu_172_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b0 == ap_block_state12_on_subcall_done) & (1'b1 == ap_CS_fsm_state12))) begin
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
    if (((1'b0 == ap_block_state12_on_subcall_done) & (1'b1 == ap_CS_fsm_state12))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ptr_0_address0 = grp_needwun_Pipeline_trace_fu_172_ptr_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ptr_0_address0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_0_address0;
    end else begin
        ptr_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ptr_0_ce0 = grp_needwun_Pipeline_trace_fu_172_ptr_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ptr_0_ce0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_0_ce0;
    end else begin
        ptr_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ptr_0_we0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_0_we0;
    end else begin
        ptr_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ptr_1_address0 = grp_needwun_Pipeline_trace_fu_172_ptr_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ptr_1_address0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_1_address0;
    end else begin
        ptr_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ptr_1_ce0 = grp_needwun_Pipeline_trace_fu_172_ptr_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ptr_1_ce0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_1_ce0;
    end else begin
        ptr_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ptr_1_we0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_1_we0;
    end else begin
        ptr_1_we0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (grp_needwun_Pipeline_init_row_fu_136_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_needwun_Pipeline_init_col_fu_144_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_needwun_Pipeline_fill_out_fill_in_fu_152_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_needwun_Pipeline_trace_fu_172_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_needwun_Pipeline_pad_a_fu_198_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((1'b0 == ap_block_state12_on_subcall_done) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign SEQA_0_address1 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_0_address1;
assign SEQA_1_address1 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_SEQA_1_address1;
assign alignedA_0_address1 = grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_address1;
assign alignedA_0_d1 = grp_needwun_Pipeline_pad_a_fu_198_alignedA_0_d1;
assign alignedA_1_address1 = grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_address1;
assign alignedA_1_d1 = grp_needwun_Pipeline_pad_a_fu_198_alignedA_1_d1;
assign alignedB_0_address1 = grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_address1;
assign alignedB_0_d1 = grp_needwun_Pipeline_pad_b_fu_208_alignedB_0_d1;
assign alignedB_1_address1 = grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_address1;
assign alignedB_1_d1 = grp_needwun_Pipeline_pad_b_fu_208_alignedB_1_d1;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state12_on_subcall_done = ((grp_needwun_Pipeline_pad_b_fu_208_ap_done == 1'b0) & (icmp_ln83_reg_392 == 1'd1));
end
assign grp_fu_218_p4 = {{a_str_idx_0_0_loc_fu_106[31:2]}};
assign grp_fu_227_p4 = {{a_str_idx_0_0_loc_fu_106[31:3]}};
assign grp_needwun_Pipeline_fill_out_fill_in_fu_152_ap_start = grp_needwun_Pipeline_fill_out_fill_in_fu_152_ap_start_reg;
assign grp_needwun_Pipeline_init_col_fu_144_ap_start = grp_needwun_Pipeline_init_col_fu_144_ap_start_reg;
assign grp_needwun_Pipeline_init_row_fu_136_ap_start = grp_needwun_Pipeline_init_row_fu_136_ap_start_reg;
assign grp_needwun_Pipeline_pad_a_fu_198_ap_start = grp_needwun_Pipeline_pad_a_fu_198_ap_start_reg;
assign grp_needwun_Pipeline_pad_b_fu_208_ap_start = grp_needwun_Pipeline_pad_b_fu_208_ap_start_reg;
assign grp_needwun_Pipeline_trace_fu_172_ap_start = grp_needwun_Pipeline_trace_fu_172_ap_start_reg;
assign icmp_ln83_fu_332_p2 = (($signed(tmp_16_fu_322_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign or_ln65_1_fu_314_p3 = {{tmp_s_fu_304_p4}, {1'd1}};
assign or_ln65_2_fu_244_p3 = {{grp_fu_218_p4}, {2'd2}};
assign or_ln65_4_fu_252_p3 = {{grp_fu_218_p4}, {2'd3}};
assign or_ln65_5_fu_260_p3 = {{grp_fu_227_p4}, {3'd4}};
assign or_ln65_7_fu_276_p5 = {{{{grp_fu_227_p4}, {1'd1}}, {tmp_fu_268_p3}}, {1'd1}};
assign or_ln65_8_fu_288_p3 = {{grp_fu_227_p4}, {3'd6}};
assign or_ln65_9_fu_296_p3 = {{grp_fu_227_p4}, {3'd7}};
assign ptr_0_d0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_0_d0;
assign ptr_1_d0 = grp_needwun_Pipeline_fill_out_fill_in_fu_152_ptr_1_d0;
assign tmp_16_fu_322_p4 = {{b_str_idx_reg_114[31:8]}};
assign tmp_fu_268_p3 = a_str_idx_0_0_loc_fu_106[32'd1];
assign tmp_s_fu_304_p4 = {{a_str_idx_0_0_loc_fu_106[31:1]}};
endmodule 