
module needwun (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,SEQA_address0,SEQA_ce0,SEQA_q0,SEQA_address1,SEQA_ce1,SEQA_q1,SEQB_address0,SEQB_ce0,SEQB_q0,alignedA_address0,alignedA_ce0,alignedA_we0,alignedA_d0,alignedA_address1,alignedA_ce1,alignedA_we1,alignedA_d1,alignedB_address0,alignedB_ce0,alignedB_we0,alignedB_d0,alignedB_address1,alignedB_ce1,alignedB_we1,alignedB_d1,M_address0,M_ce0,M_we0,M_d0,M_q0,M_address1,M_ce1,M_we1,M_d1,M_q1,ptr_address0,ptr_ce0,ptr_we0,ptr_d0,ptr_q0);  
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
output  [6:0] SEQA_address0;
output   SEQA_ce0;
input  [7:0] SEQA_q0;
output  [6:0] SEQA_address1;
output   SEQA_ce1;
input  [7:0] SEQA_q1;
output  [6:0] SEQB_address0;
output   SEQB_ce0;
input  [7:0] SEQB_q0;
output  [7:0] alignedA_address0;
output   alignedA_ce0;
output   alignedA_we0;
output  [7:0] alignedA_d0;
output  [7:0] alignedA_address1;
output   alignedA_ce1;
output   alignedA_we1;
output  [7:0] alignedA_d1;
output  [7:0] alignedB_address0;
output   alignedB_ce0;
output   alignedB_we0;
output  [7:0] alignedB_d0;
output  [7:0] alignedB_address1;
output   alignedB_ce1;
output   alignedB_we1;
output  [7:0] alignedB_d1;
output  [14:0] M_address0;
output   M_ce0;
output   M_we0;
output  [31:0] M_d0;
input  [31:0] M_q0;
output  [14:0] M_address1;
output   M_ce1;
output   M_we1;
output  [31:0] M_d1;
input  [31:0] M_q1;
output  [14:0] ptr_address0;
output   ptr_ce0;
output   ptr_we0;
output  [7:0] ptr_d0;
input  [7:0] ptr_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[6:0] SEQA_address0;
reg SEQA_ce0;
reg SEQA_ce1;
reg[6:0] SEQB_address0;
reg SEQB_ce0;
reg[7:0] alignedA_address0;
reg alignedA_ce0;
reg alignedA_we0;
reg[7:0] alignedA_d0;
reg alignedA_ce1;
reg alignedA_we1;
reg[7:0] alignedB_address0;
reg alignedB_ce0;
reg alignedB_we0;
reg[7:0] alignedB_d0;
reg alignedB_ce1;
reg alignedB_we1;
reg[14:0] M_address0;
reg M_ce0;
reg M_we0;
reg[31:0] M_d0;
reg[14:0] M_address1;
reg M_ce1;
reg M_we1;
reg[31:0] M_d1;
reg[14:0] ptr_address0;
reg ptr_ce0;
reg ptr_we0;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] b_idx_reg_303;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_fu_184_p2;
reg   [7:0] empty_reg_312;
reg   [7:0] SEQB_load_reg_323;
wire    ap_CS_fsm_state6;
wire   [14:0] empty_84_fu_219_p2;
reg   [14:0] empty_84_reg_328;
wire   [14:0] add_ln29_fu_232_p2;
reg   [14:0] add_ln29_reg_333;
wire   [0:0] grp_needwun_Pipeline_trace_fu_125_ap_return;
reg   [0:0] targetBlock_reg_338;
wire    ap_CS_fsm_state9;
wire   [0:0] icmp_ln83_fu_278_p2;
reg   [0:0] icmp_ln83_reg_342;
wire    ap_CS_fsm_state10;
wire    grp_needwun_Pipeline_init_row_fu_113_ap_start;
wire    grp_needwun_Pipeline_init_row_fu_113_ap_done;
wire    grp_needwun_Pipeline_init_row_fu_113_ap_idle;
wire    grp_needwun_Pipeline_init_row_fu_113_ap_ready;
wire   [14:0] grp_needwun_Pipeline_init_row_fu_113_M_address0;
wire    grp_needwun_Pipeline_init_row_fu_113_M_ce0;
wire    grp_needwun_Pipeline_init_row_fu_113_M_we0;
wire   [31:0] grp_needwun_Pipeline_init_row_fu_113_M_d0;
wire   [14:0] grp_needwun_Pipeline_init_row_fu_113_M_address1;
wire    grp_needwun_Pipeline_init_row_fu_113_M_ce1;
wire    grp_needwun_Pipeline_init_row_fu_113_M_we1;
wire   [31:0] grp_needwun_Pipeline_init_row_fu_113_M_d1;
wire    grp_needwun_Pipeline_init_col_fu_119_ap_start;
wire    grp_needwun_Pipeline_init_col_fu_119_ap_done;
wire    grp_needwun_Pipeline_init_col_fu_119_ap_idle;
wire    grp_needwun_Pipeline_init_col_fu_119_ap_ready;
wire   [14:0] grp_needwun_Pipeline_init_col_fu_119_M_address0;
wire    grp_needwun_Pipeline_init_col_fu_119_M_ce0;
wire    grp_needwun_Pipeline_init_col_fu_119_M_we0;
wire   [31:0] grp_needwun_Pipeline_init_col_fu_119_M_d0;
wire   [14:0] grp_needwun_Pipeline_init_col_fu_119_M_address1;
wire    grp_needwun_Pipeline_init_col_fu_119_M_ce1;
wire    grp_needwun_Pipeline_init_col_fu_119_M_we1;
wire   [31:0] grp_needwun_Pipeline_init_col_fu_119_M_d1;
wire    grp_needwun_Pipeline_trace_fu_125_ap_start;
wire    grp_needwun_Pipeline_trace_fu_125_ap_done;
wire    grp_needwun_Pipeline_trace_fu_125_ap_idle;
wire    grp_needwun_Pipeline_trace_fu_125_ap_ready;
wire   [6:0] grp_needwun_Pipeline_trace_fu_125_SEQB_address0;
wire    grp_needwun_Pipeline_trace_fu_125_SEQB_ce0;
wire   [14:0] grp_needwun_Pipeline_trace_fu_125_ptr_address0;
wire    grp_needwun_Pipeline_trace_fu_125_ptr_ce0;
wire   [7:0] grp_needwun_Pipeline_trace_fu_125_alignedA_address0;
wire    grp_needwun_Pipeline_trace_fu_125_alignedA_ce0;
wire    grp_needwun_Pipeline_trace_fu_125_alignedA_we0;
wire   [7:0] grp_needwun_Pipeline_trace_fu_125_alignedA_d0;
wire   [7:0] grp_needwun_Pipeline_trace_fu_125_alignedB_address0;
wire    grp_needwun_Pipeline_trace_fu_125_alignedB_ce0;
wire    grp_needwun_Pipeline_trace_fu_125_alignedB_we0;
wire   [7:0] grp_needwun_Pipeline_trace_fu_125_alignedB_d0;
wire   [6:0] grp_needwun_Pipeline_trace_fu_125_SEQA_address0;
wire    grp_needwun_Pipeline_trace_fu_125_SEQA_ce0;
wire   [8:0] grp_needwun_Pipeline_trace_fu_125_b_str_idx_6_out;
wire    grp_needwun_Pipeline_trace_fu_125_b_str_idx_6_out_ap_vld;
wire   [31:0] grp_needwun_Pipeline_trace_fu_125_a_str_idx_0_0_out;
wire    grp_needwun_Pipeline_trace_fu_125_a_str_idx_0_0_out_ap_vld;
wire    grp_needwun_Pipeline_fill_in_fu_141_ap_start;
wire    grp_needwun_Pipeline_fill_in_fu_141_ap_done;
wire    grp_needwun_Pipeline_fill_in_fu_141_ap_idle;
wire    grp_needwun_Pipeline_fill_in_fu_141_ap_ready;
wire   [6:0] grp_needwun_Pipeline_fill_in_fu_141_SEQA_address0;
wire    grp_needwun_Pipeline_fill_in_fu_141_SEQA_ce0;
wire   [6:0] grp_needwun_Pipeline_fill_in_fu_141_SEQA_address1;
wire    grp_needwun_Pipeline_fill_in_fu_141_SEQA_ce1;
wire   [14:0] grp_needwun_Pipeline_fill_in_fu_141_M_address0;
wire    grp_needwun_Pipeline_fill_in_fu_141_M_ce0;
wire    grp_needwun_Pipeline_fill_in_fu_141_M_we0;
wire   [31:0] grp_needwun_Pipeline_fill_in_fu_141_M_d0;
wire   [14:0] grp_needwun_Pipeline_fill_in_fu_141_M_address1;
wire    grp_needwun_Pipeline_fill_in_fu_141_M_ce1;
wire    grp_needwun_Pipeline_fill_in_fu_141_M_we1;
wire   [31:0] grp_needwun_Pipeline_fill_in_fu_141_M_d1;
wire   [14:0] grp_needwun_Pipeline_fill_in_fu_141_ptr_address0;
wire    grp_needwun_Pipeline_fill_in_fu_141_ptr_ce0;
wire    grp_needwun_Pipeline_fill_in_fu_141_ptr_we0;
wire   [7:0] grp_needwun_Pipeline_fill_in_fu_141_ptr_d0;
wire    grp_needwun_Pipeline_pad_a_fu_154_ap_start;
wire    grp_needwun_Pipeline_pad_a_fu_154_ap_done;
wire    grp_needwun_Pipeline_pad_a_fu_154_ap_idle;
wire    grp_needwun_Pipeline_pad_a_fu_154_ap_ready;
wire   [7:0] grp_needwun_Pipeline_pad_a_fu_154_alignedA_address0;
wire    grp_needwun_Pipeline_pad_a_fu_154_alignedA_ce0;
wire    grp_needwun_Pipeline_pad_a_fu_154_alignedA_we0;
wire   [7:0] grp_needwun_Pipeline_pad_a_fu_154_alignedA_d0;
wire   [7:0] grp_needwun_Pipeline_pad_a_fu_154_alignedA_address1;
wire    grp_needwun_Pipeline_pad_a_fu_154_alignedA_ce1;
wire    grp_needwun_Pipeline_pad_a_fu_154_alignedA_we1;
wire   [7:0] grp_needwun_Pipeline_pad_a_fu_154_alignedA_d1;
wire    grp_needwun_Pipeline_pad_b_fu_162_ap_start;
wire    grp_needwun_Pipeline_pad_b_fu_162_ap_done;
wire    grp_needwun_Pipeline_pad_b_fu_162_ap_idle;
wire    grp_needwun_Pipeline_pad_b_fu_162_ap_ready;
wire   [7:0] grp_needwun_Pipeline_pad_b_fu_162_alignedB_address0;
wire    grp_needwun_Pipeline_pad_b_fu_162_alignedB_ce0;
wire    grp_needwun_Pipeline_pad_b_fu_162_alignedB_we0;
wire   [7:0] grp_needwun_Pipeline_pad_b_fu_162_alignedB_d0;
wire   [7:0] grp_needwun_Pipeline_pad_b_fu_162_alignedB_address1;
wire    grp_needwun_Pipeline_pad_b_fu_162_alignedB_ce1;
wire    grp_needwun_Pipeline_pad_b_fu_162_alignedB_we1;
wire   [7:0] grp_needwun_Pipeline_pad_b_fu_162_alignedB_d1;
wire   [31:0] or_ln65_1_fu_254_p3;
reg   [31:0] ap_phi_mux_b_str_idx_phi_fu_106_p4;
reg   [31:0] b_str_idx_reg_103;
wire   [31:0] zext_ln62_fu_263_p1;
reg    grp_needwun_Pipeline_init_row_fu_113_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_needwun_Pipeline_init_col_fu_119_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_needwun_Pipeline_trace_fu_125_ap_start_reg;
wire   [0:0] icmp_ln28_fu_178_p2;
reg   [8:0] b_str_idx_6_loc_fu_86;
reg   [31:0] a_str_idx_0_0_loc_fu_82;
reg    grp_needwun_Pipeline_fill_in_fu_141_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg    grp_needwun_Pipeline_pad_a_fu_154_ap_start_reg;
wire    ap_CS_fsm_state11;
reg    grp_needwun_Pipeline_pad_b_fu_162_ap_start_reg;
wire    ap_CS_fsm_state12;
wire   [63:0] p_cast9_fu_190_p1;
reg   [7:0] b_idx_1_fu_78;
wire   [7:0] add_ln28_fu_195_p2;
reg    SEQB_ce0_local;
wire   [14:0] p_shl1_fu_212_p3;
wire   [14:0] p_cast_fu_209_p1;
wire   [14:0] p_shl_fu_225_p3;
wire   [14:0] zext_ln29_fu_206_p1;
wire   [30:0] tmp_s_fu_244_p4;
wire   [23:0] tmp_fu_268_p4;
reg    ap_block_state12_on_subcall_done;
reg   [11:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
reg    ap_ST_fsm_state12_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 grp_needwun_Pipeline_init_row_fu_113_ap_start_reg = 1'b0;
#0 grp_needwun_Pipeline_init_col_fu_119_ap_start_reg = 1'b0;
#0 grp_needwun_Pipeline_trace_fu_125_ap_start_reg = 1'b0;
#0 grp_needwun_Pipeline_fill_in_fu_141_ap_start_reg = 1'b0;
#0 grp_needwun_Pipeline_pad_a_fu_154_ap_start_reg = 1'b0;
#0 grp_needwun_Pipeline_pad_b_fu_162_ap_start_reg = 1'b0;
#0 b_idx_1_fu_78 = 8'd0;
end
needwun_needwun_Pipeline_init_row grp_needwun_Pipeline_init_row_fu_113(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_needwun_Pipeline_init_row_fu_113_ap_start),.ap_done(grp_needwun_Pipeline_init_row_fu_113_ap_done),.ap_idle(grp_needwun_Pipeline_init_row_fu_113_ap_idle),.ap_ready(grp_needwun_Pipeline_init_row_fu_113_ap_ready),.M_address0(grp_needwun_Pipeline_init_row_fu_113_M_address0),.M_ce0(grp_needwun_Pipeline_init_row_fu_113_M_ce0),.M_we0(grp_needwun_Pipeline_init_row_fu_113_M_we0),.M_d0(grp_needwun_Pipeline_init_row_fu_113_M_d0),.M_address1(grp_needwun_Pipeline_init_row_fu_113_M_address1),.M_ce1(grp_needwun_Pipeline_init_row_fu_113_M_ce1),.M_we1(grp_needwun_Pipeline_init_row_fu_113_M_we1),.M_d1(grp_needwun_Pipeline_init_row_fu_113_M_d1));
needwun_needwun_Pipeline_init_col grp_needwun_Pipeline_init_col_fu_119(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_needwun_Pipeline_init_col_fu_119_ap_start),.ap_done(grp_needwun_Pipeline_init_col_fu_119_ap_done),.ap_idle(grp_needwun_Pipeline_init_col_fu_119_ap_idle),.ap_ready(grp_needwun_Pipeline_init_col_fu_119_ap_ready),.M_address0(grp_needwun_Pipeline_init_col_fu_119_M_address0),.M_ce0(grp_needwun_Pipeline_init_col_fu_119_M_ce0),.M_we0(grp_needwun_Pipeline_init_col_fu_119_M_we0),.M_d0(grp_needwun_Pipeline_init_col_fu_119_M_d0),.M_address1(grp_needwun_Pipeline_init_col_fu_119_M_address1),.M_ce1(grp_needwun_Pipeline_init_col_fu_119_M_ce1),.M_we1(grp_needwun_Pipeline_init_col_fu_119_M_we1),.M_d1(grp_needwun_Pipeline_init_col_fu_119_M_d1));
needwun_needwun_Pipeline_trace grp_needwun_Pipeline_trace_fu_125(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_needwun_Pipeline_trace_fu_125_ap_start),.ap_done(grp_needwun_Pipeline_trace_fu_125_ap_done),.ap_idle(grp_needwun_Pipeline_trace_fu_125_ap_idle),.ap_ready(grp_needwun_Pipeline_trace_fu_125_ap_ready),.SEQB_address0(grp_needwun_Pipeline_trace_fu_125_SEQB_address0),.SEQB_ce0(grp_needwun_Pipeline_trace_fu_125_SEQB_ce0),.SEQB_q0(SEQB_q0),.ptr_address0(grp_needwun_Pipeline_trace_fu_125_ptr_address0),.ptr_ce0(grp_needwun_Pipeline_trace_fu_125_ptr_ce0),.ptr_q0(ptr_q0),.alignedA_address0(grp_needwun_Pipeline_trace_fu_125_alignedA_address0),.alignedA_ce0(grp_needwun_Pipeline_trace_fu_125_alignedA_ce0),.alignedA_we0(grp_needwun_Pipeline_trace_fu_125_alignedA_we0),.alignedA_d0(grp_needwun_Pipeline_trace_fu_125_alignedA_d0),.alignedB_address0(grp_needwun_Pipeline_trace_fu_125_alignedB_address0),.alignedB_ce0(grp_needwun_Pipeline_trace_fu_125_alignedB_ce0),.alignedB_we0(grp_needwun_Pipeline_trace_fu_125_alignedB_we0),.alignedB_d0(grp_needwun_Pipeline_trace_fu_125_alignedB_d0),.SEQA_address0(grp_needwun_Pipeline_trace_fu_125_SEQA_address0),.SEQA_ce0(grp_needwun_Pipeline_trace_fu_125_SEQA_ce0),.SEQA_q0(SEQA_q0),.b_str_idx_6_out(grp_needwun_Pipeline_trace_fu_125_b_str_idx_6_out),.b_str_idx_6_out_ap_vld(grp_needwun_Pipeline_trace_fu_125_b_str_idx_6_out_ap_vld),.a_str_idx_0_0_out(grp_needwun_Pipeline_trace_fu_125_a_str_idx_0_0_out),.a_str_idx_0_0_out_ap_vld(grp_needwun_Pipeline_trace_fu_125_a_str_idx_0_0_out_ap_vld),.ap_return(grp_needwun_Pipeline_trace_fu_125_ap_return));
needwun_needwun_Pipeline_fill_in grp_needwun_Pipeline_fill_in_fu_141(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_needwun_Pipeline_fill_in_fu_141_ap_start),.ap_done(grp_needwun_Pipeline_fill_in_fu_141_ap_done),.ap_idle(grp_needwun_Pipeline_fill_in_fu_141_ap_idle),.ap_ready(grp_needwun_Pipeline_fill_in_fu_141_ap_ready),.SEQA_address0(grp_needwun_Pipeline_fill_in_fu_141_SEQA_address0),.SEQA_ce0(grp_needwun_Pipeline_fill_in_fu_141_SEQA_ce0),.SEQA_q0(SEQA_q0),.SEQA_address1(grp_needwun_Pipeline_fill_in_fu_141_SEQA_address1),.SEQA_ce1(grp_needwun_Pipeline_fill_in_fu_141_SEQA_ce1),.SEQA_q1(SEQA_q1),.SEQB_load(SEQB_load_reg_323),.empty(empty_84_reg_328),.M_address0(grp_needwun_Pipeline_fill_in_fu_141_M_address0),.M_ce0(grp_needwun_Pipeline_fill_in_fu_141_M_ce0),.M_we0(grp_needwun_Pipeline_fill_in_fu_141_M_we0),.M_d0(grp_needwun_Pipeline_fill_in_fu_141_M_d0),.M_q0(M_q0),.M_address1(grp_needwun_Pipeline_fill_in_fu_141_M_address1),.M_ce1(grp_needwun_Pipeline_fill_in_fu_141_M_ce1),.M_we1(grp_needwun_Pipeline_fill_in_fu_141_M_we1),.M_d1(grp_needwun_Pipeline_fill_in_fu_141_M_d1),.M_q1(M_q1),.mul_ln29(add_ln29_reg_333),.ptr_address0(grp_needwun_Pipeline_fill_in_fu_141_ptr_address0),.ptr_ce0(grp_needwun_Pipeline_fill_in_fu_141_ptr_ce0),.ptr_we0(grp_needwun_Pipeline_fill_in_fu_141_ptr_we0),.ptr_d0(grp_needwun_Pipeline_fill_in_fu_141_ptr_d0));
needwun_needwun_Pipeline_pad_a grp_needwun_Pipeline_pad_a_fu_154(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_needwun_Pipeline_pad_a_fu_154_ap_start),.ap_done(grp_needwun_Pipeline_pad_a_fu_154_ap_done),.ap_idle(grp_needwun_Pipeline_pad_a_fu_154_ap_idle),.ap_ready(grp_needwun_Pipeline_pad_a_fu_154_ap_ready),.b_str_idx_7(b_str_idx_reg_103),.alignedA_address0(grp_needwun_Pipeline_pad_a_fu_154_alignedA_address0),.alignedA_ce0(grp_needwun_Pipeline_pad_a_fu_154_alignedA_ce0),.alignedA_we0(grp_needwun_Pipeline_pad_a_fu_154_alignedA_we0),.alignedA_d0(grp_needwun_Pipeline_pad_a_fu_154_alignedA_d0),.alignedA_address1(grp_needwun_Pipeline_pad_a_fu_154_alignedA_address1),.alignedA_ce1(grp_needwun_Pipeline_pad_a_fu_154_alignedA_ce1),.alignedA_we1(grp_needwun_Pipeline_pad_a_fu_154_alignedA_we1),.alignedA_d1(grp_needwun_Pipeline_pad_a_fu_154_alignedA_d1));
needwun_needwun_Pipeline_pad_b grp_needwun_Pipeline_pad_b_fu_162(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_needwun_Pipeline_pad_b_fu_162_ap_start),.ap_done(grp_needwun_Pipeline_pad_b_fu_162_ap_done),.ap_idle(grp_needwun_Pipeline_pad_b_fu_162_ap_idle),.ap_ready(grp_needwun_Pipeline_pad_b_fu_162_ap_ready),.b_str_idx_7(b_str_idx_reg_103),.alignedB_address0(grp_needwun_Pipeline_pad_b_fu_162_alignedB_address0),.alignedB_ce0(grp_needwun_Pipeline_pad_b_fu_162_alignedB_ce0),.alignedB_we0(grp_needwun_Pipeline_pad_b_fu_162_alignedB_we0),.alignedB_d0(grp_needwun_Pipeline_pad_b_fu_162_alignedB_d0),.alignedB_address1(grp_needwun_Pipeline_pad_b_fu_162_alignedB_address1),.alignedB_ce1(grp_needwun_Pipeline_pad_b_fu_162_alignedB_ce1),.alignedB_we1(grp_needwun_Pipeline_pad_b_fu_162_alignedB_we1),.alignedB_d1(grp_needwun_Pipeline_pad_b_fu_162_alignedB_d1));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_needwun_Pipeline_fill_in_fu_141_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_needwun_Pipeline_fill_in_fu_141_ap_start_reg <= 1'b1;
        end else if ((grp_needwun_Pipeline_fill_in_fu_141_ap_ready == 1'b1)) begin
            grp_needwun_Pipeline_fill_in_fu_141_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_needwun_Pipeline_init_col_fu_119_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_needwun_Pipeline_init_col_fu_119_ap_start_reg <= 1'b1;
        end else if ((grp_needwun_Pipeline_init_col_fu_119_ap_ready == 1'b1)) begin
            grp_needwun_Pipeline_init_col_fu_119_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_needwun_Pipeline_init_row_fu_113_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_needwun_Pipeline_init_row_fu_113_ap_start_reg <= 1'b1;
        end else if ((grp_needwun_Pipeline_init_row_fu_113_ap_ready == 1'b1)) begin
            grp_needwun_Pipeline_init_row_fu_113_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_needwun_Pipeline_pad_a_fu_154_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_needwun_Pipeline_pad_a_fu_154_ap_start_reg <= 1'b1;
        end else if ((grp_needwun_Pipeline_pad_a_fu_154_ap_ready == 1'b1)) begin
            grp_needwun_Pipeline_pad_a_fu_154_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_needwun_Pipeline_pad_b_fu_162_ap_start_reg <= 1'b0;
    end else begin
        if (((grp_needwun_Pipeline_pad_a_fu_154_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11) & (icmp_ln83_reg_342 == 1'd1))) begin
            grp_needwun_Pipeline_pad_b_fu_162_ap_start_reg <= 1'b1;
        end else if ((grp_needwun_Pipeline_pad_b_fu_162_ap_ready == 1'b1)) begin
            grp_needwun_Pipeline_pad_b_fu_162_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_needwun_Pipeline_trace_fu_125_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln28_fu_178_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
            grp_needwun_Pipeline_trace_fu_125_ap_start_reg <= 1'b1;
        end else if ((grp_needwun_Pipeline_trace_fu_125_ap_ready == 1'b1)) begin
            grp_needwun_Pipeline_trace_fu_125_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        b_idx_1_fu_78 <= 8'd1;
    end else if (((icmp_ln28_fu_178_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        b_idx_1_fu_78 <= add_ln28_fu_195_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        if ((targetBlock_reg_338 == 1'd1)) begin
            b_str_idx_reg_103 <= zext_ln62_fu_263_p1;
        end else if ((targetBlock_reg_338 == 1'd0)) begin
            b_str_idx_reg_103 <= or_ln65_1_fu_254_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        SEQB_load_reg_323 <= SEQB_q0;
        add_ln29_reg_333 <= add_ln29_fu_232_p2;
        empty_84_reg_328 <= empty_84_fu_219_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_needwun_Pipeline_trace_fu_125_a_str_idx_0_0_out_ap_vld == 1'b1))) begin
        a_str_idx_0_0_loc_fu_82 <= grp_needwun_Pipeline_trace_fu_125_a_str_idx_0_0_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        b_idx_reg_303 <= b_idx_1_fu_78;
        empty_reg_312 <= empty_fu_184_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_needwun_Pipeline_trace_fu_125_b_str_idx_6_out_ap_vld == 1'b1))) begin
        b_str_idx_6_loc_fu_86 <= grp_needwun_Pipeline_trace_fu_125_b_str_idx_6_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        icmp_ln83_reg_342 <= icmp_ln83_fu_278_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        targetBlock_reg_338 <= grp_needwun_Pipeline_trace_fu_125_ap_return;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_address0 = grp_needwun_Pipeline_fill_in_fu_141_M_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_address0 = grp_needwun_Pipeline_init_col_fu_119_M_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_address0 = grp_needwun_Pipeline_init_row_fu_113_M_address0;
    end else begin
        M_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_address1 = grp_needwun_Pipeline_fill_in_fu_141_M_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_address1 = grp_needwun_Pipeline_init_col_fu_119_M_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_address1 = grp_needwun_Pipeline_init_row_fu_113_M_address1;
    end else begin
        M_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_ce0 = grp_needwun_Pipeline_fill_in_fu_141_M_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_ce0 = grp_needwun_Pipeline_init_col_fu_119_M_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_ce0 = grp_needwun_Pipeline_init_row_fu_113_M_ce0;
    end else begin
        M_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_ce1 = grp_needwun_Pipeline_fill_in_fu_141_M_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_ce1 = grp_needwun_Pipeline_init_col_fu_119_M_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_ce1 = grp_needwun_Pipeline_init_row_fu_113_M_ce1;
    end else begin
        M_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_d0 = grp_needwun_Pipeline_fill_in_fu_141_M_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_d0 = grp_needwun_Pipeline_init_col_fu_119_M_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_d0 = grp_needwun_Pipeline_init_row_fu_113_M_d0;
    end else begin
        M_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_d1 = grp_needwun_Pipeline_fill_in_fu_141_M_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_d1 = grp_needwun_Pipeline_init_col_fu_119_M_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_d1 = grp_needwun_Pipeline_init_row_fu_113_M_d1;
    end else begin
        M_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_we0 = grp_needwun_Pipeline_fill_in_fu_141_M_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_we0 = grp_needwun_Pipeline_init_col_fu_119_M_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_we0 = grp_needwun_Pipeline_init_row_fu_113_M_we0;
    end else begin
        M_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_we1 = grp_needwun_Pipeline_fill_in_fu_141_M_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_we1 = grp_needwun_Pipeline_init_col_fu_119_M_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_we1 = grp_needwun_Pipeline_init_row_fu_113_M_we1;
    end else begin
        M_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        SEQA_address0 = grp_needwun_Pipeline_fill_in_fu_141_SEQA_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        SEQA_address0 = grp_needwun_Pipeline_trace_fu_125_SEQA_address0;
    end else begin
        SEQA_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        SEQA_ce0 = grp_needwun_Pipeline_fill_in_fu_141_SEQA_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        SEQA_ce0 = grp_needwun_Pipeline_trace_fu_125_SEQA_ce0;
    end else begin
        SEQA_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        SEQA_ce1 = grp_needwun_Pipeline_fill_in_fu_141_SEQA_ce1;
    end else begin
        SEQA_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        SEQB_address0 = grp_needwun_Pipeline_trace_fu_125_SEQB_address0;
    end else begin
        SEQB_address0 = p_cast9_fu_190_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        SEQB_ce0 = grp_needwun_Pipeline_trace_fu_125_SEQB_ce0;
    end else begin
        SEQB_ce0 = SEQB_ce0_local;
    end
end
always @ (*) begin
    if (((icmp_ln28_fu_178_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        SEQB_ce0_local = 1'b1;
    end else begin
        SEQB_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        alignedA_address0 = grp_needwun_Pipeline_pad_a_fu_154_alignedA_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        alignedA_address0 = grp_needwun_Pipeline_trace_fu_125_alignedA_address0;
    end else begin
        alignedA_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        alignedA_ce0 = grp_needwun_Pipeline_pad_a_fu_154_alignedA_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        alignedA_ce0 = grp_needwun_Pipeline_trace_fu_125_alignedA_ce0;
    end else begin
        alignedA_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        alignedA_ce1 = grp_needwun_Pipeline_pad_a_fu_154_alignedA_ce1;
    end else begin
        alignedA_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        alignedA_d0 = grp_needwun_Pipeline_pad_a_fu_154_alignedA_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        alignedA_d0 = grp_needwun_Pipeline_trace_fu_125_alignedA_d0;
    end else begin
        alignedA_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        alignedA_we0 = grp_needwun_Pipeline_pad_a_fu_154_alignedA_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        alignedA_we0 = grp_needwun_Pipeline_trace_fu_125_alignedA_we0;
    end else begin
        alignedA_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        alignedA_we1 = grp_needwun_Pipeline_pad_a_fu_154_alignedA_we1;
    end else begin
        alignedA_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_342 == 1'd1))) begin
        alignedB_address0 = grp_needwun_Pipeline_pad_b_fu_162_alignedB_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        alignedB_address0 = grp_needwun_Pipeline_trace_fu_125_alignedB_address0;
    end else begin
        alignedB_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_342 == 1'd1))) begin
        alignedB_ce0 = grp_needwun_Pipeline_pad_b_fu_162_alignedB_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        alignedB_ce0 = grp_needwun_Pipeline_trace_fu_125_alignedB_ce0;
    end else begin
        alignedB_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_342 == 1'd1))) begin
        alignedB_ce1 = grp_needwun_Pipeline_pad_b_fu_162_alignedB_ce1;
    end else begin
        alignedB_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_342 == 1'd1))) begin
        alignedB_d0 = grp_needwun_Pipeline_pad_b_fu_162_alignedB_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        alignedB_d0 = grp_needwun_Pipeline_trace_fu_125_alignedB_d0;
    end else begin
        alignedB_d0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_342 == 1'd1))) begin
        alignedB_we0 = grp_needwun_Pipeline_pad_b_fu_162_alignedB_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        alignedB_we0 = grp_needwun_Pipeline_trace_fu_125_alignedB_we0;
    end else begin
        alignedB_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_342 == 1'd1))) begin
        alignedB_we1 = grp_needwun_Pipeline_pad_b_fu_162_alignedB_we1;
    end else begin
        alignedB_we1 = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_needwun_Pipeline_pad_a_fu_154_ap_done == 1'b0)) begin
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
    if ((grp_needwun_Pipeline_init_row_fu_113_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_needwun_Pipeline_init_col_fu_119_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_needwun_Pipeline_fill_in_fu_141_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_needwun_Pipeline_trace_fu_125_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        if ((targetBlock_reg_338 == 1'd1)) begin
            ap_phi_mux_b_str_idx_phi_fu_106_p4 = zext_ln62_fu_263_p1;
        end else if ((targetBlock_reg_338 == 1'd0)) begin
            ap_phi_mux_b_str_idx_phi_fu_106_p4 = or_ln65_1_fu_254_p3;
        end else begin
            ap_phi_mux_b_str_idx_phi_fu_106_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_b_str_idx_phi_fu_106_p4 = 'bx;
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
        ptr_address0 = grp_needwun_Pipeline_fill_in_fu_141_ptr_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        ptr_address0 = grp_needwun_Pipeline_trace_fu_125_ptr_address0;
    end else begin
        ptr_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ptr_ce0 = grp_needwun_Pipeline_fill_in_fu_141_ptr_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        ptr_ce0 = grp_needwun_Pipeline_trace_fu_125_ptr_ce0;
    end else begin
        ptr_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ptr_we0 = grp_needwun_Pipeline_fill_in_fu_141_ptr_we0;
    end else begin
        ptr_we0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (grp_needwun_Pipeline_init_row_fu_113_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_needwun_Pipeline_init_col_fu_119_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln28_fu_178_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_needwun_Pipeline_fill_in_fu_141_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (grp_needwun_Pipeline_trace_fu_125_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_needwun_Pipeline_pad_a_fu_154_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
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
assign SEQA_address1 = grp_needwun_Pipeline_fill_in_fu_141_SEQA_address1;
assign add_ln28_fu_195_p2 = (b_idx_1_fu_78 + 8'd1);
assign add_ln29_fu_232_p2 = (p_shl_fu_225_p3 + zext_ln29_fu_206_p1);
assign alignedA_address1 = grp_needwun_Pipeline_pad_a_fu_154_alignedA_address1;
assign alignedA_d1 = grp_needwun_Pipeline_pad_a_fu_154_alignedA_d1;
assign alignedB_address1 = grp_needwun_Pipeline_pad_b_fu_162_alignedB_address1;
assign alignedB_d1 = grp_needwun_Pipeline_pad_b_fu_162_alignedB_d1;
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
    ap_block_state12_on_subcall_done = ((grp_needwun_Pipeline_pad_b_fu_162_ap_done == 1'b0) & (icmp_ln83_reg_342 == 1'd1));
end
assign empty_84_fu_219_p2 = (p_shl1_fu_212_p3 + p_cast_fu_209_p1);
assign empty_fu_184_p2 = ($signed(b_idx_1_fu_78) + $signed(8'd255));
assign grp_needwun_Pipeline_fill_in_fu_141_ap_start = grp_needwun_Pipeline_fill_in_fu_141_ap_start_reg;
assign grp_needwun_Pipeline_init_col_fu_119_ap_start = grp_needwun_Pipeline_init_col_fu_119_ap_start_reg;
assign grp_needwun_Pipeline_init_row_fu_113_ap_start = grp_needwun_Pipeline_init_row_fu_113_ap_start_reg;
assign grp_needwun_Pipeline_pad_a_fu_154_ap_start = grp_needwun_Pipeline_pad_a_fu_154_ap_start_reg;
assign grp_needwun_Pipeline_pad_b_fu_162_ap_start = grp_needwun_Pipeline_pad_b_fu_162_ap_start_reg;
assign grp_needwun_Pipeline_trace_fu_125_ap_start = grp_needwun_Pipeline_trace_fu_125_ap_start_reg;
assign icmp_ln28_fu_178_p2 = ((b_idx_1_fu_78 == 8'd129) ? 1'b1 : 1'b0);
assign icmp_ln83_fu_278_p2 = (($signed(tmp_fu_268_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign or_ln65_1_fu_254_p3 = {{tmp_s_fu_244_p4}, {1'd1}};
assign p_cast9_fu_190_p1 = empty_fu_184_p2;
assign p_cast_fu_209_p1 = empty_reg_312;
assign p_shl1_fu_212_p3 = {{empty_reg_312}, {7'd0}};
assign p_shl_fu_225_p3 = {{b_idx_reg_303}, {7'd0}};
assign ptr_d0 = grp_needwun_Pipeline_fill_in_fu_141_ptr_d0;
assign tmp_fu_268_p4 = {{ap_phi_mux_b_str_idx_phi_fu_106_p4[31:8]}};
assign tmp_s_fu_244_p4 = {{a_str_idx_0_0_loc_fu_82[31:1]}};
assign zext_ln29_fu_206_p1 = b_idx_reg_303;
assign zext_ln62_fu_263_p1 = b_str_idx_6_loc_fu_86;
endmodule 
