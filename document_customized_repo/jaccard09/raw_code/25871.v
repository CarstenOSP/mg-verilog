module needwun (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,SEQA_address0,SEQA_ce0,SEQA_q0,SEQB_address0,SEQB_ce0,SEQB_q0,alignedA_address0,alignedA_ce0,alignedA_we0,alignedA_d0,alignedB_address0,alignedB_ce0,alignedB_we0,alignedB_d0,M_address0,M_ce0,M_we0,M_d0,M_q0,M_address1,M_ce1,M_q1,ptr_address0,ptr_ce0,ptr_we0,ptr_d0,ptr_q0); 
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
output  [6:0] SEQB_address0;
output   SEQB_ce0;
input  [7:0] SEQB_q0;
output  [7:0] alignedA_address0;
output   alignedA_ce0;
output   alignedA_we0;
output  [7:0] alignedA_d0;
output  [7:0] alignedB_address0;
output   alignedB_ce0;
output   alignedB_we0;
output  [7:0] alignedB_d0;
output  [14:0] M_address0;
output   M_ce0;
output   M_we0;
output  [31:0] M_d0;
input  [31:0] M_q0;
output  [14:0] M_address1;
output   M_ce1;
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
reg[6:0] SEQB_address0;
reg SEQB_ce0;
reg[7:0] alignedA_address0;
reg alignedA_ce0;
reg alignedA_we0;
reg[7:0] alignedA_d0;
reg[7:0] alignedB_address0;
reg alignedB_ce0;
reg alignedB_we0;
reg[7:0] alignedB_d0;
reg[14:0] M_address0;
reg M_ce0;
reg M_we0;
reg[31:0] M_d0;
reg M_ce1;
reg[14:0] ptr_address0;
reg ptr_ce0;
reg ptr_we0;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] b_idx_reg_514;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_19_fu_315_p2;
reg   [7:0] empty_19_reg_523;
reg   [7:0] SEQB_load_reg_539;
wire    ap_CS_fsm_state6;
wire   [14:0] empty_20_fu_355_p2;
reg   [14:0] empty_20_reg_544;
wire   [14:0] empty_21_fu_368_p2;
reg   [14:0] empty_21_reg_549;
reg   [31:0] M_load_reg_554;
wire   [2:0] grp_needwun_Pipeline_trace_fu_194_ap_return;
reg   [2:0] targetBlock_reg_559;
wire    ap_CS_fsm_state9;
wire   [0:0] icmp_ln83_fu_482_p2;
reg   [0:0] icmp_ln83_reg_563;
wire    ap_CS_fsm_state10;
wire    grp_needwun_Pipeline_init_row_fu_182_ap_start;
wire    grp_needwun_Pipeline_init_row_fu_182_ap_done;
wire    grp_needwun_Pipeline_init_row_fu_182_ap_idle;
wire    grp_needwun_Pipeline_init_row_fu_182_ap_ready;
wire   [14:0] grp_needwun_Pipeline_init_row_fu_182_M_address0;
wire    grp_needwun_Pipeline_init_row_fu_182_M_ce0;
wire    grp_needwun_Pipeline_init_row_fu_182_M_we0;
wire   [31:0] grp_needwun_Pipeline_init_row_fu_182_M_d0;
wire    grp_needwun_Pipeline_init_col_fu_188_ap_start;
wire    grp_needwun_Pipeline_init_col_fu_188_ap_done;
wire    grp_needwun_Pipeline_init_col_fu_188_ap_idle;
wire    grp_needwun_Pipeline_init_col_fu_188_ap_ready;
wire   [14:0] grp_needwun_Pipeline_init_col_fu_188_M_address0;
wire    grp_needwun_Pipeline_init_col_fu_188_M_ce0;
wire    grp_needwun_Pipeline_init_col_fu_188_M_we0;
wire   [31:0] grp_needwun_Pipeline_init_col_fu_188_M_d0;
wire    grp_needwun_Pipeline_trace_fu_194_ap_start;
wire    grp_needwun_Pipeline_trace_fu_194_ap_done;
wire    grp_needwun_Pipeline_trace_fu_194_ap_idle;
wire    grp_needwun_Pipeline_trace_fu_194_ap_ready;
wire   [6:0] grp_needwun_Pipeline_trace_fu_194_SEQB_address0;
wire    grp_needwun_Pipeline_trace_fu_194_SEQB_ce0;
wire   [14:0] grp_needwun_Pipeline_trace_fu_194_ptr_address0;
wire    grp_needwun_Pipeline_trace_fu_194_ptr_ce0;
wire   [7:0] grp_needwun_Pipeline_trace_fu_194_alignedA_address0;
wire    grp_needwun_Pipeline_trace_fu_194_alignedA_ce0;
wire    grp_needwun_Pipeline_trace_fu_194_alignedA_we0;
wire   [7:0] grp_needwun_Pipeline_trace_fu_194_alignedA_d0;
wire   [7:0] grp_needwun_Pipeline_trace_fu_194_alignedB_address0;
wire    grp_needwun_Pipeline_trace_fu_194_alignedB_ce0;
wire    grp_needwun_Pipeline_trace_fu_194_alignedB_we0;
wire   [7:0] grp_needwun_Pipeline_trace_fu_194_alignedB_d0;
wire   [6:0] grp_needwun_Pipeline_trace_fu_194_SEQA_address0;
wire    grp_needwun_Pipeline_trace_fu_194_SEQA_ce0;
wire   [8:0] grp_needwun_Pipeline_trace_fu_194_b_str_idx_6_out;
wire    grp_needwun_Pipeline_trace_fu_194_b_str_idx_6_out_ap_vld;
wire   [31:0] grp_needwun_Pipeline_trace_fu_194_a_str_idx_0_0_out;
wire    grp_needwun_Pipeline_trace_fu_194_a_str_idx_0_0_out_ap_vld;
wire    grp_needwun_Pipeline_fill_in_fu_210_ap_start;
wire    grp_needwun_Pipeline_fill_in_fu_210_ap_done;
wire    grp_needwun_Pipeline_fill_in_fu_210_ap_idle;
wire    grp_needwun_Pipeline_fill_in_fu_210_ap_ready;
wire   [6:0] grp_needwun_Pipeline_fill_in_fu_210_SEQA_address0;
wire    grp_needwun_Pipeline_fill_in_fu_210_SEQA_ce0;
wire   [14:0] grp_needwun_Pipeline_fill_in_fu_210_M_address0;
wire    grp_needwun_Pipeline_fill_in_fu_210_M_ce0;
wire    grp_needwun_Pipeline_fill_in_fu_210_M_we0;
wire   [31:0] grp_needwun_Pipeline_fill_in_fu_210_M_d0;
wire   [14:0] grp_needwun_Pipeline_fill_in_fu_210_M_address1;
wire    grp_needwun_Pipeline_fill_in_fu_210_M_ce1;
wire   [14:0] grp_needwun_Pipeline_fill_in_fu_210_ptr_address0;
wire    grp_needwun_Pipeline_fill_in_fu_210_ptr_ce0;
wire    grp_needwun_Pipeline_fill_in_fu_210_ptr_we0;
wire   [7:0] grp_needwun_Pipeline_fill_in_fu_210_ptr_d0;
wire    grp_needwun_Pipeline_pad_a_fu_224_ap_start;
wire    grp_needwun_Pipeline_pad_a_fu_224_ap_done;
wire    grp_needwun_Pipeline_pad_a_fu_224_ap_idle;
wire    grp_needwun_Pipeline_pad_a_fu_224_ap_ready;
wire   [7:0] grp_needwun_Pipeline_pad_a_fu_224_alignedA_address0;
wire    grp_needwun_Pipeline_pad_a_fu_224_alignedA_ce0;
wire    grp_needwun_Pipeline_pad_a_fu_224_alignedA_we0;
wire   [7:0] grp_needwun_Pipeline_pad_a_fu_224_alignedA_d0;
wire    grp_needwun_Pipeline_pad_b_fu_232_ap_start;
wire    grp_needwun_Pipeline_pad_b_fu_232_ap_done;
wire    grp_needwun_Pipeline_pad_b_fu_232_ap_idle;
wire    grp_needwun_Pipeline_pad_b_fu_232_ap_ready;
wire   [7:0] grp_needwun_Pipeline_pad_b_fu_232_alignedB_address0;
wire    grp_needwun_Pipeline_pad_b_fu_232_alignedB_ce0;
wire    grp_needwun_Pipeline_pad_b_fu_232_alignedB_we0;
wire   [7:0] grp_needwun_Pipeline_pad_b_fu_232_alignedB_d0;
wire   [31:0] or_ln65_1_fu_439_p3;
reg   [31:0] ap_phi_mux_b_str_idx_phi_fu_163_p16;
reg   [31:0] b_str_idx_reg_160;
wire   [31:0] or_ln65_3_fu_430_p3;
wire   [31:0] or_ln65_s_fu_417_p5;
wire   [31:0] or_ln65_8_fu_400_p3;
wire   [31:0] or_ln65_6_fu_391_p3;
wire   [31:0] or_ln65_4_fu_382_p3;
wire   [31:0] or_ln65_2_fu_463_p3;
wire   [31:0] zext_ln62_fu_448_p1;
reg    grp_needwun_Pipeline_init_row_fu_182_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_needwun_Pipeline_init_col_fu_188_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_needwun_Pipeline_trace_fu_194_ap_start_reg;
wire   [0:0] icmp_ln28_fu_274_p2;
reg   [8:0] b_str_idx_6_loc_fu_130;
reg   [31:0] a_str_idx_0_0_loc_fu_126;
reg    grp_needwun_Pipeline_fill_in_fu_210_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg    grp_needwun_Pipeline_pad_a_fu_224_ap_start_reg;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
reg    grp_needwun_Pipeline_pad_b_fu_232_ap_start_reg;
wire   [63:0] p_cast5_fu_321_p1;
wire   [63:0] p_cast4_fu_310_p1;
reg   [7:0] b_idx_1_fu_118;
wire   [7:0] add_ln28_fu_326_p2;
reg   [7:0] indvar_fu_122;
wire   [7:0] add_ln28_1_fu_280_p2;
reg    SEQB_ce0_local;
reg    M_ce0_local;
wire   [14:0] p_shl8_fu_290_p3;
wire   [14:0] indvar_cast_fu_286_p1;
wire   [14:0] empty_fu_298_p2;
wire   [14:0] empty_18_fu_304_p2;
wire   [14:0] p_shl9_fu_348_p3;
wire   [14:0] p_cast1_fu_345_p1;
wire   [14:0] p_shl_fu_361_p3;
wire   [14:0] b_idx_1_cast_fu_342_p1;
wire   [29:0] grp_fu_240_p4;
wire   [28:0] grp_fu_249_p4;
wire   [0:0] tmp_fu_409_p3;
wire   [30:0] tmp_3_fu_453_p4;
wire   [23:0] tmp_6_fu_472_p4;
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
wire    ap_ST_fsm_state11_blk;
reg    ap_ST_fsm_state12_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 grp_needwun_Pipeline_init_row_fu_182_ap_start_reg = 1'b0;
#0 grp_needwun_Pipeline_init_col_fu_188_ap_start_reg = 1'b0;
#0 grp_needwun_Pipeline_trace_fu_194_ap_start_reg = 1'b0;
#0 grp_needwun_Pipeline_fill_in_fu_210_ap_start_reg = 1'b0;
#0 grp_needwun_Pipeline_pad_a_fu_224_ap_start_reg = 1'b0;
#0 grp_needwun_Pipeline_pad_b_fu_232_ap_start_reg = 1'b0;
#0 b_idx_1_fu_118 = 8'd0;
#0 indvar_fu_122 = 8'd0;
end
needwun_needwun_Pipeline_init_row grp_needwun_Pipeline_init_row_fu_182(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_needwun_Pipeline_init_row_fu_182_ap_start),.ap_done(grp_needwun_Pipeline_init_row_fu_182_ap_done),.ap_idle(grp_needwun_Pipeline_init_row_fu_182_ap_idle),.ap_ready(grp_needwun_Pipeline_init_row_fu_182_ap_ready),.M_address0(grp_needwun_Pipeline_init_row_fu_182_M_address0),.M_ce0(grp_needwun_Pipeline_init_row_fu_182_M_ce0),.M_we0(grp_needwun_Pipeline_init_row_fu_182_M_we0),.M_d0(grp_needwun_Pipeline_init_row_fu_182_M_d0));
needwun_needwun_Pipeline_init_col grp_needwun_Pipeline_init_col_fu_188(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_needwun_Pipeline_init_col_fu_188_ap_start),.ap_done(grp_needwun_Pipeline_init_col_fu_188_ap_done),.ap_idle(grp_needwun_Pipeline_init_col_fu_188_ap_idle),.ap_ready(grp_needwun_Pipeline_init_col_fu_188_ap_ready),.M_address0(grp_needwun_Pipeline_init_col_fu_188_M_address0),.M_ce0(grp_needwun_Pipeline_init_col_fu_188_M_ce0),.M_we0(grp_needwun_Pipeline_init_col_fu_188_M_we0),.M_d0(grp_needwun_Pipeline_init_col_fu_188_M_d0));
needwun_needwun_Pipeline_trace grp_needwun_Pipeline_trace_fu_194(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_needwun_Pipeline_trace_fu_194_ap_start),.ap_done(grp_needwun_Pipeline_trace_fu_194_ap_done),.ap_idle(grp_needwun_Pipeline_trace_fu_194_ap_idle),.ap_ready(grp_needwun_Pipeline_trace_fu_194_ap_ready),.SEQB_address0(grp_needwun_Pipeline_trace_fu_194_SEQB_address0),.SEQB_ce0(grp_needwun_Pipeline_trace_fu_194_SEQB_ce0),.SEQB_q0(SEQB_q0),.ptr_address0(grp_needwun_Pipeline_trace_fu_194_ptr_address0),.ptr_ce0(grp_needwun_Pipeline_trace_fu_194_ptr_ce0),.ptr_q0(ptr_q0),.alignedA_address0(grp_needwun_Pipeline_trace_fu_194_alignedA_address0),.alignedA_ce0(grp_needwun_Pipeline_trace_fu_194_alignedA_ce0),.alignedA_we0(grp_needwun_Pipeline_trace_fu_194_alignedA_we0),.alignedA_d0(grp_needwun_Pipeline_trace_fu_194_alignedA_d0),.alignedB_address0(grp_needwun_Pipeline_trace_fu_194_alignedB_address0),.alignedB_ce0(grp_needwun_Pipeline_trace_fu_194_alignedB_ce0),.alignedB_we0(grp_needwun_Pipeline_trace_fu_194_alignedB_we0),.alignedB_d0(grp_needwun_Pipeline_trace_fu_194_alignedB_d0),.SEQA_address0(grp_needwun_Pipeline_trace_fu_194_SEQA_address0),.SEQA_ce0(grp_needwun_Pipeline_trace_fu_194_SEQA_ce0),.SEQA_q0(SEQA_q0),.b_str_idx_6_out(grp_needwun_Pipeline_trace_fu_194_b_str_idx_6_out),.b_str_idx_6_out_ap_vld(grp_needwun_Pipeline_trace_fu_194_b_str_idx_6_out_ap_vld),.a_str_idx_0_0_out(grp_needwun_Pipeline_trace_fu_194_a_str_idx_0_0_out),.a_str_idx_0_0_out_ap_vld(grp_needwun_Pipeline_trace_fu_194_a_str_idx_0_0_out_ap_vld),.ap_return(grp_needwun_Pipeline_trace_fu_194_ap_return));
needwun_needwun_Pipeline_fill_in grp_needwun_Pipeline_fill_in_fu_210(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_needwun_Pipeline_fill_in_fu_210_ap_start),.ap_done(grp_needwun_Pipeline_fill_in_fu_210_ap_done),.ap_idle(grp_needwun_Pipeline_fill_in_fu_210_ap_idle),.ap_ready(grp_needwun_Pipeline_fill_in_fu_210_ap_ready),.M_load(M_load_reg_554),.SEQA_address0(grp_needwun_Pipeline_fill_in_fu_210_SEQA_address0),.SEQA_ce0(grp_needwun_Pipeline_fill_in_fu_210_SEQA_ce0),.SEQA_q0(SEQA_q0),.SEQB_load(SEQB_load_reg_539),.empty_9(empty_20_reg_544),.M_address0(grp_needwun_Pipeline_fill_in_fu_210_M_address0),.M_ce0(grp_needwun_Pipeline_fill_in_fu_210_M_ce0),.M_we0(grp_needwun_Pipeline_fill_in_fu_210_M_we0),.M_d0(grp_needwun_Pipeline_fill_in_fu_210_M_d0),.M_q0(M_q0),.M_address1(grp_needwun_Pipeline_fill_in_fu_210_M_address1),.M_ce1(grp_needwun_Pipeline_fill_in_fu_210_M_ce1),.M_q1(M_q1),.empty(empty_21_reg_549),.ptr_address0(grp_needwun_Pipeline_fill_in_fu_210_ptr_address0),.ptr_ce0(grp_needwun_Pipeline_fill_in_fu_210_ptr_ce0),.ptr_we0(grp_needwun_Pipeline_fill_in_fu_210_ptr_we0),.ptr_d0(grp_needwun_Pipeline_fill_in_fu_210_ptr_d0));
needwun_needwun_Pipeline_pad_a grp_needwun_Pipeline_pad_a_fu_224(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_needwun_Pipeline_pad_a_fu_224_ap_start),.ap_done(grp_needwun_Pipeline_pad_a_fu_224_ap_done),.ap_idle(grp_needwun_Pipeline_pad_a_fu_224_ap_idle),.ap_ready(grp_needwun_Pipeline_pad_a_fu_224_ap_ready),.b_str_idx_7(b_str_idx_reg_160),.alignedA_address0(grp_needwun_Pipeline_pad_a_fu_224_alignedA_address0),.alignedA_ce0(grp_needwun_Pipeline_pad_a_fu_224_alignedA_ce0),.alignedA_we0(grp_needwun_Pipeline_pad_a_fu_224_alignedA_we0),.alignedA_d0(grp_needwun_Pipeline_pad_a_fu_224_alignedA_d0));
needwun_needwun_Pipeline_pad_b grp_needwun_Pipeline_pad_b_fu_232(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_needwun_Pipeline_pad_b_fu_232_ap_start),.ap_done(grp_needwun_Pipeline_pad_b_fu_232_ap_done),.ap_idle(grp_needwun_Pipeline_pad_b_fu_232_ap_idle),.ap_ready(grp_needwun_Pipeline_pad_b_fu_232_ap_ready),.b_str_idx_7(b_str_idx_reg_160),.alignedB_address0(grp_needwun_Pipeline_pad_b_fu_232_alignedB_address0),.alignedB_ce0(grp_needwun_Pipeline_pad_b_fu_232_alignedB_ce0),.alignedB_we0(grp_needwun_Pipeline_pad_b_fu_232_alignedB_we0),.alignedB_d0(grp_needwun_Pipeline_pad_b_fu_232_alignedB_d0));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_needwun_Pipeline_fill_in_fu_210_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_needwun_Pipeline_fill_in_fu_210_ap_start_reg <= 1'b1;
        end else if ((grp_needwun_Pipeline_fill_in_fu_210_ap_ready == 1'b1)) begin
            grp_needwun_Pipeline_fill_in_fu_210_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_needwun_Pipeline_init_col_fu_188_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_needwun_Pipeline_init_col_fu_188_ap_start_reg <= 1'b1;
        end else if ((grp_needwun_Pipeline_init_col_fu_188_ap_ready == 1'b1)) begin
            grp_needwun_Pipeline_init_col_fu_188_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_needwun_Pipeline_init_row_fu_182_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_needwun_Pipeline_init_row_fu_182_ap_start_reg <= 1'b1;
        end else if ((grp_needwun_Pipeline_init_row_fu_182_ap_ready == 1'b1)) begin
            grp_needwun_Pipeline_init_row_fu_182_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_needwun_Pipeline_pad_a_fu_224_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_needwun_Pipeline_pad_a_fu_224_ap_start_reg <= 1'b1;
        end else if ((grp_needwun_Pipeline_pad_a_fu_224_ap_ready == 1'b1)) begin
            grp_needwun_Pipeline_pad_a_fu_224_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_needwun_Pipeline_pad_b_fu_232_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_needwun_Pipeline_pad_b_fu_232_ap_start_reg <= 1'b1;
        end else if ((grp_needwun_Pipeline_pad_b_fu_232_ap_ready == 1'b1)) begin
            grp_needwun_Pipeline_pad_b_fu_232_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_needwun_Pipeline_trace_fu_194_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln28_fu_274_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
            grp_needwun_Pipeline_trace_fu_194_ap_start_reg <= 1'b1;
        end else if ((grp_needwun_Pipeline_trace_fu_194_ap_ready == 1'b1)) begin
            grp_needwun_Pipeline_trace_fu_194_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        b_idx_1_fu_118 <= 8'd1;
    end else if (((icmp_ln28_fu_274_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        b_idx_1_fu_118 <= add_ln28_fu_326_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        if ((targetBlock_reg_559 == 3'd0)) begin
            b_str_idx_reg_160 <= zext_ln62_fu_448_p1;
        end else if ((targetBlock_reg_559 == 3'd7)) begin
            b_str_idx_reg_160 <= or_ln65_2_fu_463_p3;
        end else if ((targetBlock_reg_559 == 3'd6)) begin
            b_str_idx_reg_160 <= or_ln65_4_fu_382_p3;
        end else if ((targetBlock_reg_559 == 3'd5)) begin
            b_str_idx_reg_160 <= or_ln65_6_fu_391_p3;
        end else if ((targetBlock_reg_559 == 3'd4)) begin
            b_str_idx_reg_160 <= or_ln65_8_fu_400_p3;
        end else if ((targetBlock_reg_559 == 3'd3)) begin
            b_str_idx_reg_160 <= or_ln65_s_fu_417_p5;
        end else if ((targetBlock_reg_559 == 3'd2)) begin
            b_str_idx_reg_160 <= or_ln65_3_fu_430_p3;
        end else if ((targetBlock_reg_559 == 3'd1)) begin
            b_str_idx_reg_160 <= or_ln65_1_fu_439_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvar_fu_122 <= 8'd0;
    end else if (((icmp_ln28_fu_274_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        indvar_fu_122 <= add_ln28_1_fu_280_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        M_load_reg_554 <= M_q0;
        SEQB_load_reg_539 <= SEQB_q0;
        empty_20_reg_544 <= empty_20_fu_355_p2;
        empty_21_reg_549 <= empty_21_fu_368_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_needwun_Pipeline_trace_fu_194_a_str_idx_0_0_out_ap_vld == 1'b1))) begin
        a_str_idx_0_0_loc_fu_126 <= grp_needwun_Pipeline_trace_fu_194_a_str_idx_0_0_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        b_idx_reg_514 <= b_idx_1_fu_118;
        empty_19_reg_523 <= empty_19_fu_315_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_needwun_Pipeline_trace_fu_194_b_str_idx_6_out_ap_vld == 1'b1))) begin
        b_str_idx_6_loc_fu_130 <= grp_needwun_Pipeline_trace_fu_194_b_str_idx_6_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        icmp_ln83_reg_563 <= icmp_ln83_fu_482_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        targetBlock_reg_559 <= grp_needwun_Pipeline_trace_fu_194_ap_return;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_address0 = grp_needwun_Pipeline_fill_in_fu_210_M_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_address0 = grp_needwun_Pipeline_init_col_fu_188_M_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_address0 = grp_needwun_Pipeline_init_row_fu_182_M_address0;
    end else begin
        M_address0 = p_cast4_fu_310_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_ce0 = grp_needwun_Pipeline_fill_in_fu_210_M_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_ce0 = grp_needwun_Pipeline_init_col_fu_188_M_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_ce0 = grp_needwun_Pipeline_init_row_fu_182_M_ce0;
    end else begin
        M_ce0 = M_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        M_ce0_local = 1'b1;
    end else begin
        M_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_ce1 = grp_needwun_Pipeline_fill_in_fu_210_M_ce1;
    end else begin
        M_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_d0 = grp_needwun_Pipeline_fill_in_fu_210_M_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_d0 = grp_needwun_Pipeline_init_col_fu_188_M_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_d0 = grp_needwun_Pipeline_init_row_fu_182_M_d0;
    end else begin
        M_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        M_we0 = grp_needwun_Pipeline_fill_in_fu_210_M_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        M_we0 = grp_needwun_Pipeline_init_col_fu_188_M_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        M_we0 = grp_needwun_Pipeline_init_row_fu_182_M_we0;
    end else begin
        M_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        SEQA_address0 = grp_needwun_Pipeline_fill_in_fu_210_SEQA_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        SEQA_address0 = grp_needwun_Pipeline_trace_fu_194_SEQA_address0;
    end else begin
        SEQA_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        SEQA_ce0 = grp_needwun_Pipeline_fill_in_fu_210_SEQA_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        SEQA_ce0 = grp_needwun_Pipeline_trace_fu_194_SEQA_ce0;
    end else begin
        SEQA_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        SEQB_address0 = grp_needwun_Pipeline_trace_fu_194_SEQB_address0;
    end else begin
        SEQB_address0 = p_cast5_fu_321_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        SEQB_ce0 = grp_needwun_Pipeline_trace_fu_194_SEQB_ce0;
    end else begin
        SEQB_ce0 = SEQB_ce0_local;
    end
end
always @ (*) begin
    if (((icmp_ln28_fu_274_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        SEQB_ce0_local = 1'b1;
    end else begin
        SEQB_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_563 == 1'd1))) begin
        alignedA_address0 = grp_needwun_Pipeline_pad_a_fu_224_alignedA_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        alignedA_address0 = grp_needwun_Pipeline_trace_fu_194_alignedA_address0;
    end else begin
        alignedA_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_563 == 1'd1))) begin
        alignedA_ce0 = grp_needwun_Pipeline_pad_a_fu_224_alignedA_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        alignedA_ce0 = grp_needwun_Pipeline_trace_fu_194_alignedA_ce0;
    end else begin
        alignedA_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_563 == 1'd1))) begin
        alignedA_d0 = grp_needwun_Pipeline_pad_a_fu_224_alignedA_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        alignedA_d0 = grp_needwun_Pipeline_trace_fu_194_alignedA_d0;
    end else begin
        alignedA_d0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_563 == 1'd1))) begin
        alignedA_we0 = grp_needwun_Pipeline_pad_a_fu_224_alignedA_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        alignedA_we0 = grp_needwun_Pipeline_trace_fu_194_alignedA_we0;
    end else begin
        alignedA_we0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_563 == 1'd1))) begin
        alignedB_address0 = grp_needwun_Pipeline_pad_b_fu_232_alignedB_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        alignedB_address0 = grp_needwun_Pipeline_trace_fu_194_alignedB_address0;
    end else begin
        alignedB_address0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_563 == 1'd1))) begin
        alignedB_ce0 = grp_needwun_Pipeline_pad_b_fu_232_alignedB_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        alignedB_ce0 = grp_needwun_Pipeline_trace_fu_194_alignedB_ce0;
    end else begin
        alignedB_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_563 == 1'd1))) begin
        alignedB_d0 = grp_needwun_Pipeline_pad_b_fu_232_alignedB_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        alignedB_d0 = grp_needwun_Pipeline_trace_fu_194_alignedB_d0;
    end else begin
        alignedB_d0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln83_reg_563 == 1'd1))) begin
        alignedB_we0 = grp_needwun_Pipeline_pad_b_fu_232_alignedB_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        alignedB_we0 = grp_needwun_Pipeline_trace_fu_194_alignedB_we0;
    end else begin
        alignedB_we0 = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
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
    if ((grp_needwun_Pipeline_init_row_fu_182_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_needwun_Pipeline_init_col_fu_188_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_needwun_Pipeline_fill_in_fu_210_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_needwun_Pipeline_trace_fu_194_ap_done == 1'b0)) begin
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
        if ((targetBlock_reg_559 == 3'd0)) begin
            ap_phi_mux_b_str_idx_phi_fu_163_p16 = zext_ln62_fu_448_p1;
        end else if ((targetBlock_reg_559 == 3'd7)) begin
            ap_phi_mux_b_str_idx_phi_fu_163_p16 = or_ln65_2_fu_463_p3;
        end else if ((targetBlock_reg_559 == 3'd6)) begin
            ap_phi_mux_b_str_idx_phi_fu_163_p16 = or_ln65_4_fu_382_p3;
        end else if ((targetBlock_reg_559 == 3'd5)) begin
            ap_phi_mux_b_str_idx_phi_fu_163_p16 = or_ln65_6_fu_391_p3;
        end else if ((targetBlock_reg_559 == 3'd4)) begin
            ap_phi_mux_b_str_idx_phi_fu_163_p16 = or_ln65_8_fu_400_p3;
        end else if ((targetBlock_reg_559 == 3'd3)) begin
            ap_phi_mux_b_str_idx_phi_fu_163_p16 = or_ln65_s_fu_417_p5;
        end else if ((targetBlock_reg_559 == 3'd2)) begin
            ap_phi_mux_b_str_idx_phi_fu_163_p16 = or_ln65_3_fu_430_p3;
        end else if ((targetBlock_reg_559 == 3'd1)) begin
            ap_phi_mux_b_str_idx_phi_fu_163_p16 = or_ln65_1_fu_439_p3;
        end else begin
            ap_phi_mux_b_str_idx_phi_fu_163_p16 = 'bx;
        end
    end else begin
        ap_phi_mux_b_str_idx_phi_fu_163_p16 = 'bx;
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
        ptr_address0 = grp_needwun_Pipeline_fill_in_fu_210_ptr_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        ptr_address0 = grp_needwun_Pipeline_trace_fu_194_ptr_address0;
    end else begin
        ptr_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ptr_ce0 = grp_needwun_Pipeline_fill_in_fu_210_ptr_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        ptr_ce0 = grp_needwun_Pipeline_trace_fu_194_ptr_ce0;
    end else begin
        ptr_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ptr_we0 = grp_needwun_Pipeline_fill_in_fu_210_ptr_we0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (grp_needwun_Pipeline_init_row_fu_182_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_needwun_Pipeline_init_col_fu_188_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln28_fu_274_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
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
            if (((1'b1 == ap_CS_fsm_state8) & (grp_needwun_Pipeline_fill_in_fu_210_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (grp_needwun_Pipeline_trace_fu_194_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln83_fu_482_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
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
assign M_address1 = grp_needwun_Pipeline_fill_in_fu_210_M_address1;
assign add_ln28_1_fu_280_p2 = (indvar_fu_122 + 8'd1);
assign add_ln28_fu_326_p2 = (b_idx_1_fu_118 + 8'd1);
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
    ap_block_state12_on_subcall_done = (((grp_needwun_Pipeline_pad_b_fu_232_ap_done == 1'b0) & (icmp_ln83_reg_563 == 1'd1)) | ((grp_needwun_Pipeline_pad_a_fu_224_ap_done == 1'b0) & (icmp_ln83_reg_563 == 1'd1)));
end
assign b_idx_1_cast_fu_342_p1 = b_idx_reg_514;
assign empty_18_fu_304_p2 = (empty_fu_298_p2 + 15'd129);
assign empty_19_fu_315_p2 = ($signed(b_idx_1_fu_118) + $signed(8'd255));
assign empty_20_fu_355_p2 = (p_shl9_fu_348_p3 + p_cast1_fu_345_p1);
assign empty_21_fu_368_p2 = (p_shl_fu_361_p3 + b_idx_1_cast_fu_342_p1);
assign empty_fu_298_p2 = (p_shl8_fu_290_p3 + indvar_cast_fu_286_p1);
assign grp_fu_240_p4 = {{a_str_idx_0_0_loc_fu_126[31:2]}};
assign grp_fu_249_p4 = {{a_str_idx_0_0_loc_fu_126[31:3]}};
assign grp_needwun_Pipeline_fill_in_fu_210_ap_start = grp_needwun_Pipeline_fill_in_fu_210_ap_start_reg;
assign grp_needwun_Pipeline_init_col_fu_188_ap_start = grp_needwun_Pipeline_init_col_fu_188_ap_start_reg;
assign grp_needwun_Pipeline_init_row_fu_182_ap_start = grp_needwun_Pipeline_init_row_fu_182_ap_start_reg;
assign grp_needwun_Pipeline_pad_a_fu_224_ap_start = grp_needwun_Pipeline_pad_a_fu_224_ap_start_reg;
assign grp_needwun_Pipeline_pad_b_fu_232_ap_start = grp_needwun_Pipeline_pad_b_fu_232_ap_start_reg;
assign grp_needwun_Pipeline_trace_fu_194_ap_start = grp_needwun_Pipeline_trace_fu_194_ap_start_reg;
assign icmp_ln28_fu_274_p2 = ((b_idx_1_fu_118 == 8'd129) ? 1'b1 : 1'b0);
assign icmp_ln83_fu_482_p2 = (($signed(tmp_6_fu_472_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign indvar_cast_fu_286_p1 = indvar_fu_122;
assign or_ln65_1_fu_439_p3 = {{grp_fu_249_p4}, {3'd7}};
assign or_ln65_2_fu_463_p3 = {{tmp_3_fu_453_p4}, {1'd1}};
assign or_ln65_3_fu_430_p3 = {{grp_fu_249_p4}, {3'd6}};
assign or_ln65_4_fu_382_p3 = {{grp_fu_240_p4}, {2'd2}};
assign or_ln65_6_fu_391_p3 = {{grp_fu_240_p4}, {2'd3}};
assign or_ln65_8_fu_400_p3 = {{grp_fu_249_p4}, {3'd4}};
assign or_ln65_s_fu_417_p5 = {{{{grp_fu_249_p4}, {1'd1}}, {tmp_fu_409_p3}}, {1'd1}};
assign p_cast1_fu_345_p1 = empty_19_reg_523;
assign p_cast4_fu_310_p1 = empty_18_fu_304_p2;
assign p_cast5_fu_321_p1 = empty_19_fu_315_p2;
assign p_shl8_fu_290_p3 = {{indvar_fu_122}, {7'd0}};
assign p_shl9_fu_348_p3 = {{empty_19_reg_523}, {7'd0}};
assign p_shl_fu_361_p3 = {{b_idx_reg_514}, {7'd0}};
assign ptr_d0 = grp_needwun_Pipeline_fill_in_fu_210_ptr_d0;
assign tmp_3_fu_453_p4 = {{a_str_idx_0_0_loc_fu_126[31:1]}};
assign tmp_6_fu_472_p4 = {{ap_phi_mux_b_str_idx_phi_fu_163_p16[31:8]}};
assign tmp_fu_409_p3 = a_str_idx_0_0_loc_fu_126[32'd1];
assign zext_ln62_fu_448_p1 = b_str_idx_6_loc_fu_130;
endmodule 