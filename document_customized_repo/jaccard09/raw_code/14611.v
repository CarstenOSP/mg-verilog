module ss_sort (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_address0,a_ce0,a_we0,a_d0,a_q0,a_address1,a_ce1,a_q1,b_address0,b_ce0,b_we0,b_d0,b_q0,b_address1,b_ce1,b_q1,bucket_address0,bucket_ce0,bucket_we0,bucket_d0,bucket_q0,bucket_address1,bucket_ce1,bucket_we1,bucket_d1,bucket_q1,sum_address0,sum_ce0,sum_we0,sum_d0,sum_q0,sum_address1,sum_ce1,sum_we1,sum_d1,sum_q1); 
parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] a_address0;
output   a_ce0;
output   a_we0;
output  [31:0] a_d0;
input  [31:0] a_q0;
output  [10:0] a_address1;
output   a_ce1;
input  [31:0] a_q1;
output  [10:0] b_address0;
output   b_ce0;
output   b_we0;
output  [31:0] b_d0;
input  [31:0] b_q0;
output  [10:0] b_address1;
output   b_ce1;
input  [31:0] b_q1;
output  [10:0] bucket_address0;
output   bucket_ce0;
output   bucket_we0;
output  [31:0] bucket_d0;
input  [31:0] bucket_q0;
output  [10:0] bucket_address1;
output   bucket_ce1;
output   bucket_we1;
output  [31:0] bucket_d1;
input  [31:0] bucket_q1;
output  [6:0] sum_address0;
output   sum_ce0;
output   sum_we0;
output  [31:0] sum_d0;
input  [31:0] sum_q0;
output  [6:0] sum_address1;
output   sum_ce1;
output   sum_we1;
output  [31:0] sum_d1;
input  [31:0] sum_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[10:0] a_address0;
reg a_ce0;
reg a_we0;
reg[10:0] a_address1;
reg a_ce1;
reg[10:0] b_address0;
reg b_ce0;
reg b_we0;
reg[10:0] b_address1;
reg b_ce1;
reg[10:0] bucket_address0;
reg bucket_ce0;
reg bucket_we0;
reg[31:0] bucket_d0;
reg[10:0] bucket_address1;
reg bucket_ce1;
reg bucket_we1;
reg[31:0] bucket_d1;
reg[6:0] sum_address0;
reg sum_ce0;
reg sum_we0;
reg[6:0] sum_address1;
reg sum_ce1;
reg sum_we1;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] trunc_ln50_fu_164_p1;
reg   [4:0] trunc_ln50_reg_190;
wire    ap_CS_fsm_state3;
wire    grp_ss_sort_Pipeline_init_1_fu_89_ap_start;
wire    grp_ss_sort_Pipeline_init_1_fu_89_ap_done;
wire    grp_ss_sort_Pipeline_init_1_fu_89_ap_idle;
wire    grp_ss_sort_Pipeline_init_1_fu_89_ap_ready;
wire   [10:0] grp_ss_sort_Pipeline_init_1_fu_89_bucket_address0;
wire    grp_ss_sort_Pipeline_init_1_fu_89_bucket_ce0;
wire    grp_ss_sort_Pipeline_init_1_fu_89_bucket_we0;
wire   [31:0] grp_ss_sort_Pipeline_init_1_fu_89_bucket_d0;
wire    grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_ap_start;
wire    grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_ap_done;
wire    grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_ap_idle;
wire    grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_ap_ready;
wire   [10:0] grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_a_address0;
wire    grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_a_ce0;
wire   [10:0] grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_a_address1;
wire    grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_a_ce1;
wire   [10:0] grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_bucket_address0;
wire    grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_bucket_ce0;
wire    grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_bucket_we0;
wire   [31:0] grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_bucket_d0;
wire    grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_ap_start;
wire    grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_ap_done;
wire    grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_ap_idle;
wire    grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_ap_ready;
wire   [10:0] grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_b_address0;
wire    grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_b_ce0;
wire   [10:0] grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_b_address1;
wire    grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_b_ce1;
wire   [10:0] grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_bucket_address0;
wire    grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_bucket_ce0;
wire    grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_bucket_we0;
wire   [31:0] grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_bucket_d0;
wire    grp_local_scan_fu_113_ap_start;
wire    grp_local_scan_fu_113_ap_done;
wire    grp_local_scan_fu_113_ap_idle;
wire    grp_local_scan_fu_113_ap_ready;
wire   [10:0] grp_local_scan_fu_113_bucket_address0;
wire    grp_local_scan_fu_113_bucket_ce0;
wire    grp_local_scan_fu_113_bucket_we0;
wire   [31:0] grp_local_scan_fu_113_bucket_d0;
wire   [10:0] grp_local_scan_fu_113_bucket_address1;
wire    grp_local_scan_fu_113_bucket_ce1;
wire    grp_local_scan_fu_113_bucket_we1;
wire   [31:0] grp_local_scan_fu_113_bucket_d1;
wire    grp_sum_scan_fu_119_ap_start;
wire    grp_sum_scan_fu_119_ap_done;
wire    grp_sum_scan_fu_119_ap_idle;
wire    grp_sum_scan_fu_119_ap_ready;
wire   [6:0] grp_sum_scan_fu_119_sum_address0;
wire    grp_sum_scan_fu_119_sum_ce0;
wire    grp_sum_scan_fu_119_sum_we0;
wire   [31:0] grp_sum_scan_fu_119_sum_d0;
wire   [6:0] grp_sum_scan_fu_119_sum_address1;
wire    grp_sum_scan_fu_119_sum_ce1;
wire    grp_sum_scan_fu_119_sum_we1;
wire   [31:0] grp_sum_scan_fu_119_sum_d1;
wire   [10:0] grp_sum_scan_fu_119_bucket_address0;
wire    grp_sum_scan_fu_119_bucket_ce0;
wire   [10:0] grp_sum_scan_fu_119_bucket_address1;
wire    grp_sum_scan_fu_119_bucket_ce1;
wire    grp_last_step_scan_fu_127_ap_start;
wire    grp_last_step_scan_fu_127_ap_done;
wire    grp_last_step_scan_fu_127_ap_idle;
wire    grp_last_step_scan_fu_127_ap_ready;
wire   [10:0] grp_last_step_scan_fu_127_bucket_address0;
wire    grp_last_step_scan_fu_127_bucket_ce0;
wire    grp_last_step_scan_fu_127_bucket_we0;
wire   [31:0] grp_last_step_scan_fu_127_bucket_d0;
wire   [10:0] grp_last_step_scan_fu_127_bucket_address1;
wire    grp_last_step_scan_fu_127_bucket_ce1;
wire    grp_last_step_scan_fu_127_bucket_we1;
wire   [31:0] grp_last_step_scan_fu_127_bucket_d1;
wire   [6:0] grp_last_step_scan_fu_127_sum_address0;
wire    grp_last_step_scan_fu_127_sum_ce0;
wire   [6:0] grp_last_step_scan_fu_127_sum_address1;
wire    grp_last_step_scan_fu_127_sum_ce1;
wire    grp_update_fu_135_ap_start;
wire    grp_update_fu_135_ap_done;
wire    grp_update_fu_135_ap_idle;
wire    grp_update_fu_135_ap_ready;
wire   [10:0] grp_update_fu_135_a_address0;
wire    grp_update_fu_135_a_ce0;
wire    grp_update_fu_135_a_we0;
wire   [31:0] grp_update_fu_135_a_d0;
wire   [10:0] grp_update_fu_135_bucket_address0;
wire    grp_update_fu_135_bucket_ce0;
wire    grp_update_fu_135_bucket_we0;
wire   [31:0] grp_update_fu_135_bucket_d0;
wire   [10:0] grp_update_fu_135_bucket_address1;
wire    grp_update_fu_135_bucket_ce1;
wire    grp_update_fu_135_bucket_we1;
wire   [31:0] grp_update_fu_135_bucket_d1;
wire   [10:0] grp_update_fu_135_b_address0;
wire    grp_update_fu_135_b_ce0;
reg   [31:0] grp_update_fu_135_b_q0;
wire   [10:0] grp_update_fu_135_b_address1;
wire    grp_update_fu_135_b_ce1;
reg   [31:0] grp_update_fu_135_b_q1;
reg   [0:0] valid_buffer_reg_64;
reg   [0:0] ap_phi_mux_valid_buffer_1_phi_fu_80_p4;
wire    ap_CS_fsm_state15;
reg    ap_block_state15_on_subcall_done;
reg    grp_ss_sort_Pipeline_init_1_fu_89_ap_start_reg;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_fu_156_p3;
reg    grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
reg    grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_ap_start_reg;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
reg    grp_local_scan_fu_113_ap_start_reg;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
reg    grp_sum_scan_fu_119_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
reg    grp_last_step_scan_fu_127_ap_start_reg;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
reg    grp_update_fu_135_ap_start_reg;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state16;
reg   [5:0] exp_fu_60;
wire   [5:0] exp_3_fu_167_p2;
reg   [15:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
reg    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 grp_ss_sort_Pipeline_init_1_fu_89_ap_start_reg = 1'b0;
#0 grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_ap_start_reg = 1'b0;
#0 grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_ap_start_reg = 1'b0;
#0 grp_local_scan_fu_113_ap_start_reg = 1'b0;
#0 grp_sum_scan_fu_119_ap_start_reg = 1'b0;
#0 grp_last_step_scan_fu_127_ap_start_reg = 1'b0;
#0 grp_update_fu_135_ap_start_reg = 1'b0;
#0 exp_fu_60 = 6'd0;
end
ss_sort_ss_sort_Pipeline_init_1 grp_ss_sort_Pipeline_init_1_fu_89(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_ss_sort_Pipeline_init_1_fu_89_ap_start),.ap_done(grp_ss_sort_Pipeline_init_1_fu_89_ap_done),.ap_idle(grp_ss_sort_Pipeline_init_1_fu_89_ap_idle),.ap_ready(grp_ss_sort_Pipeline_init_1_fu_89_ap_ready),.bucket_address0(grp_ss_sort_Pipeline_init_1_fu_89_bucket_address0),.bucket_ce0(grp_ss_sort_Pipeline_init_1_fu_89_bucket_ce0),.bucket_we0(grp_ss_sort_Pipeline_init_1_fu_89_bucket_we0),.bucket_d0(grp_ss_sort_Pipeline_init_1_fu_89_bucket_d0));
ss_sort_ss_sort_Pipeline_hist_1_hist_2 grp_ss_sort_Pipeline_hist_1_hist_2_fu_95(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_ap_start),.ap_done(grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_ap_done),.ap_idle(grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_ap_idle),.ap_ready(grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_ap_ready),.a_address0(grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_a_address0),.a_ce0(grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_a_ce0),.a_q0(a_q0),.a_address1(grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_a_address1),.a_ce1(grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_a_ce1),.a_q1(a_q1),.zext_ln50(trunc_ln50_reg_190),.bucket_address0(grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_bucket_address0),.bucket_ce0(grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_bucket_ce0),.bucket_we0(grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_bucket_we0),.bucket_d0(grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_bucket_d0),.bucket_q0(bucket_q0));
ss_sort_ss_sort_Pipeline_hist_1_hist_21 grp_ss_sort_Pipeline_hist_1_hist_21_fu_104(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_ap_start),.ap_done(grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_ap_done),.ap_idle(grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_ap_idle),.ap_ready(grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_ap_ready),.b_address0(grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_b_address0),.b_ce0(grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_b_ce0),.b_q0(b_q0),.b_address1(grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_b_address1),.b_ce1(grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_b_ce1),.b_q1(b_q1),.zext_ln50(trunc_ln50_reg_190),.bucket_address0(grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_bucket_address0),.bucket_ce0(grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_bucket_ce0),.bucket_we0(grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_bucket_we0),.bucket_d0(grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_bucket_d0),.bucket_q0(bucket_q0));
ss_sort_local_scan grp_local_scan_fu_113(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_local_scan_fu_113_ap_start),.ap_done(grp_local_scan_fu_113_ap_done),.ap_idle(grp_local_scan_fu_113_ap_idle),.ap_ready(grp_local_scan_fu_113_ap_ready),.bucket_address0(grp_local_scan_fu_113_bucket_address0),.bucket_ce0(grp_local_scan_fu_113_bucket_ce0),.bucket_we0(grp_local_scan_fu_113_bucket_we0),.bucket_d0(grp_local_scan_fu_113_bucket_d0),.bucket_q0(bucket_q0),.bucket_address1(grp_local_scan_fu_113_bucket_address1),.bucket_ce1(grp_local_scan_fu_113_bucket_ce1),.bucket_we1(grp_local_scan_fu_113_bucket_we1),.bucket_d1(grp_local_scan_fu_113_bucket_d1),.bucket_q1(bucket_q1));
ss_sort_sum_scan grp_sum_scan_fu_119(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sum_scan_fu_119_ap_start),.ap_done(grp_sum_scan_fu_119_ap_done),.ap_idle(grp_sum_scan_fu_119_ap_idle),.ap_ready(grp_sum_scan_fu_119_ap_ready),.sum_address0(grp_sum_scan_fu_119_sum_address0),.sum_ce0(grp_sum_scan_fu_119_sum_ce0),.sum_we0(grp_sum_scan_fu_119_sum_we0),.sum_d0(grp_sum_scan_fu_119_sum_d0),.sum_q0(sum_q0),.sum_address1(grp_sum_scan_fu_119_sum_address1),.sum_ce1(grp_sum_scan_fu_119_sum_ce1),.sum_we1(grp_sum_scan_fu_119_sum_we1),.sum_d1(grp_sum_scan_fu_119_sum_d1),.bucket_address0(grp_sum_scan_fu_119_bucket_address0),.bucket_ce0(grp_sum_scan_fu_119_bucket_ce0),.bucket_q0(bucket_q0),.bucket_address1(grp_sum_scan_fu_119_bucket_address1),.bucket_ce1(grp_sum_scan_fu_119_bucket_ce1),.bucket_q1(bucket_q1));
ss_sort_last_step_scan grp_last_step_scan_fu_127(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_last_step_scan_fu_127_ap_start),.ap_done(grp_last_step_scan_fu_127_ap_done),.ap_idle(grp_last_step_scan_fu_127_ap_idle),.ap_ready(grp_last_step_scan_fu_127_ap_ready),.bucket_address0(grp_last_step_scan_fu_127_bucket_address0),.bucket_ce0(grp_last_step_scan_fu_127_bucket_ce0),.bucket_we0(grp_last_step_scan_fu_127_bucket_we0),.bucket_d0(grp_last_step_scan_fu_127_bucket_d0),.bucket_q0(bucket_q0),.bucket_address1(grp_last_step_scan_fu_127_bucket_address1),.bucket_ce1(grp_last_step_scan_fu_127_bucket_ce1),.bucket_we1(grp_last_step_scan_fu_127_bucket_we1),.bucket_d1(grp_last_step_scan_fu_127_bucket_d1),.bucket_q1(bucket_q1),.sum_address0(grp_last_step_scan_fu_127_sum_address0),.sum_ce0(grp_last_step_scan_fu_127_sum_ce0),.sum_q0(sum_q0),.sum_address1(grp_last_step_scan_fu_127_sum_address1),.sum_ce1(grp_last_step_scan_fu_127_sum_ce1),.sum_q1(sum_q1));
ss_sort_update grp_update_fu_135(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_fu_135_ap_start),.ap_done(grp_update_fu_135_ap_done),.ap_idle(grp_update_fu_135_ap_idle),.ap_ready(grp_update_fu_135_ap_ready),.a_address0(grp_update_fu_135_a_address0),.a_ce0(grp_update_fu_135_a_ce0),.a_we0(grp_update_fu_135_a_we0),.a_d0(grp_update_fu_135_a_d0),.bucket_address0(grp_update_fu_135_bucket_address0),.bucket_ce0(grp_update_fu_135_bucket_ce0),.bucket_we0(grp_update_fu_135_bucket_we0),.bucket_d0(grp_update_fu_135_bucket_d0),.bucket_q0(bucket_q0),.bucket_address1(grp_update_fu_135_bucket_address1),.bucket_ce1(grp_update_fu_135_bucket_ce1),.bucket_we1(grp_update_fu_135_bucket_we1),.bucket_d1(grp_update_fu_135_bucket_d1),.bucket_q1(bucket_q1),.b_address0(grp_update_fu_135_b_address0),.b_ce0(grp_update_fu_135_b_ce0),.b_q0(grp_update_fu_135_b_q0),.b_address1(grp_update_fu_135_b_address1),.b_ce1(grp_update_fu_135_b_ce1),.b_q1(grp_update_fu_135_b_q1),.exp(trunc_ln50_reg_190));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_last_step_scan_fu_127_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_last_step_scan_fu_127_ap_start_reg <= 1'b1;
        end else if ((grp_last_step_scan_fu_127_ap_ready == 1'b1)) begin
            grp_last_step_scan_fu_127_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_local_scan_fu_113_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_local_scan_fu_113_ap_start_reg <= 1'b1;
        end else if ((grp_local_scan_fu_113_ap_ready == 1'b1)) begin
            grp_local_scan_fu_113_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_ap_start_reg <= 1'b1;
        end else if ((grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_ap_ready == 1'b1)) begin
            grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_ap_start_reg <= 1'b1;
        end else if ((grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_ap_ready == 1'b1)) begin
            grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ss_sort_Pipeline_init_1_fu_89_ap_start_reg <= 1'b0;
    end else begin
        if (((tmp_fu_156_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_ss_sort_Pipeline_init_1_fu_89_ap_start_reg <= 1'b1;
        end else if ((grp_ss_sort_Pipeline_init_1_fu_89_ap_ready == 1'b1)) begin
            grp_ss_sort_Pipeline_init_1_fu_89_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sum_scan_fu_119_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_sum_scan_fu_119_ap_start_reg <= 1'b1;
        end else if ((grp_sum_scan_fu_119_ap_ready == 1'b1)) begin
            grp_sum_scan_fu_119_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_fu_135_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14))) begin
            grp_update_fu_135_ap_start_reg <= 1'b1;
        end else if ((grp_update_fu_135_ap_ready == 1'b1)) begin
            grp_update_fu_135_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        exp_fu_60 <= 6'd0;
    end else if (((1'b0 == ap_block_state15_on_subcall_done) & (1'b1 == ap_CS_fsm_state15))) begin
        exp_fu_60 <= exp_3_fu_167_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state15_on_subcall_done) & (1'b1 == ap_CS_fsm_state15))) begin
        valid_buffer_reg_64 <= ap_phi_mux_valid_buffer_1_phi_fu_80_p4;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        valid_buffer_reg_64 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln50_reg_190 <= trunc_ln50_fu_164_p1;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_64 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        a_address0 = grp_update_fu_135_b_address0;
    end else if (((valid_buffer_reg_64 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
        a_address0 = grp_update_fu_135_a_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_address0 = grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_a_address0;
    end else begin
        a_address0 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_64 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        a_address1 = grp_update_fu_135_b_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_address1 = grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_a_address1;
    end else begin
        a_address1 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_64 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        a_ce0 = grp_update_fu_135_b_ce0;
    end else if (((valid_buffer_reg_64 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
        a_ce0 = grp_update_fu_135_a_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_ce0 = grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_a_ce0;
    end else begin
        a_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_64 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        a_ce1 = grp_update_fu_135_b_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        a_ce1 = grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_a_ce1;
    end else begin
        a_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_64 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
        a_we0 = grp_update_fu_135_a_we0;
    end else begin
        a_we0 = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_sum_scan_fu_119_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_last_step_scan_fu_127_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state15_on_subcall_done)) begin
        ap_ST_fsm_state15_blk = 1'b1;
    end else begin
        ap_ST_fsm_state15_blk = 1'b0;
    end
end
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
    if ((grp_ss_sort_Pipeline_init_1_fu_89_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if ((grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if ((grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if ((grp_local_scan_fu_113_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_156_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        if ((valid_buffer_reg_64 == 1'd1)) begin
            ap_phi_mux_valid_buffer_1_phi_fu_80_p4 = 1'd0;
        end else if ((valid_buffer_reg_64 == 1'd0)) begin
            ap_phi_mux_valid_buffer_1_phi_fu_80_p4 = 1'd1;
        end else begin
            ap_phi_mux_valid_buffer_1_phi_fu_80_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_valid_buffer_1_phi_fu_80_p4 = 'bx;
    end
end
always @ (*) begin
    if (((tmp_fu_156_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_64 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
        b_address0 = grp_update_fu_135_b_address0;
    end else if (((valid_buffer_reg_64 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        b_address0 = grp_update_fu_135_a_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        b_address0 = grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_b_address0;
    end else begin
        b_address0 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_64 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
        b_address1 = grp_update_fu_135_b_address1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        b_address1 = grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_b_address1;
    end else begin
        b_address1 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_64 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
        b_ce0 = grp_update_fu_135_b_ce0;
    end else if (((valid_buffer_reg_64 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        b_ce0 = grp_update_fu_135_a_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        b_ce0 = grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_b_ce0;
    end else begin
        b_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_64 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
        b_ce1 = grp_update_fu_135_b_ce1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        b_ce1 = grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_b_ce1;
    end else begin
        b_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_64 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        b_we0 = grp_update_fu_135_a_we0;
    end else begin
        b_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((valid_buffer_reg_64 == 1'd1) & (1'b1 == ap_CS_fsm_state15)) | ((valid_buffer_reg_64 == 1'd0) & (1'b1 == ap_CS_fsm_state15)))) begin
        bucket_address0 = grp_update_fu_135_bucket_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_address0 = grp_last_step_scan_fu_127_bucket_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_address0 = grp_sum_scan_fu_119_bucket_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_address0 = grp_local_scan_fu_113_bucket_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_address0 = grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_bucket_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_address0 = grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_bucket_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_address0 = grp_ss_sort_Pipeline_init_1_fu_89_bucket_address0;
    end else begin
        bucket_address0 = 'bx;
    end
end
always @ (*) begin
    if ((((valid_buffer_reg_64 == 1'd1) & (1'b1 == ap_CS_fsm_state15)) | ((valid_buffer_reg_64 == 1'd0) & (1'b1 == ap_CS_fsm_state15)))) begin
        bucket_address1 = grp_update_fu_135_bucket_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_address1 = grp_last_step_scan_fu_127_bucket_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_address1 = grp_sum_scan_fu_119_bucket_address1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_address1 = grp_local_scan_fu_113_bucket_address1;
    end else begin
        bucket_address1 = 'bx;
    end
end
always @ (*) begin
    if ((((valid_buffer_reg_64 == 1'd1) & (1'b1 == ap_CS_fsm_state15)) | ((valid_buffer_reg_64 == 1'd0) & (1'b1 == ap_CS_fsm_state15)))) begin
        bucket_ce0 = grp_update_fu_135_bucket_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_ce0 = grp_last_step_scan_fu_127_bucket_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_ce0 = grp_sum_scan_fu_119_bucket_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_ce0 = grp_local_scan_fu_113_bucket_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_ce0 = grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_bucket_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_ce0 = grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_bucket_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_ce0 = grp_ss_sort_Pipeline_init_1_fu_89_bucket_ce0;
    end else begin
        bucket_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((valid_buffer_reg_64 == 1'd1) & (1'b1 == ap_CS_fsm_state15)) | ((valid_buffer_reg_64 == 1'd0) & (1'b1 == ap_CS_fsm_state15)))) begin
        bucket_ce1 = grp_update_fu_135_bucket_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_ce1 = grp_last_step_scan_fu_127_bucket_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        bucket_ce1 = grp_sum_scan_fu_119_bucket_ce1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_ce1 = grp_local_scan_fu_113_bucket_ce1;
    end else begin
        bucket_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((valid_buffer_reg_64 == 1'd1) & (1'b1 == ap_CS_fsm_state15)) | ((valid_buffer_reg_64 == 1'd0) & (1'b1 == ap_CS_fsm_state15)))) begin
        bucket_d0 = grp_update_fu_135_bucket_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_d0 = grp_last_step_scan_fu_127_bucket_d0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_d0 = grp_local_scan_fu_113_bucket_d0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_d0 = grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_bucket_d0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_d0 = grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_bucket_d0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_d0 = grp_ss_sort_Pipeline_init_1_fu_89_bucket_d0;
    end else begin
        bucket_d0 = 'bx;
    end
end
always @ (*) begin
    if ((((valid_buffer_reg_64 == 1'd1) & (1'b1 == ap_CS_fsm_state15)) | ((valid_buffer_reg_64 == 1'd0) & (1'b1 == ap_CS_fsm_state15)))) begin
        bucket_d1 = grp_update_fu_135_bucket_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_d1 = grp_last_step_scan_fu_127_bucket_d1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_d1 = grp_local_scan_fu_113_bucket_d1;
    end else begin
        bucket_d1 = 'bx;
    end
end
always @ (*) begin
    if ((((valid_buffer_reg_64 == 1'd1) & (1'b1 == ap_CS_fsm_state15)) | ((valid_buffer_reg_64 == 1'd0) & (1'b1 == ap_CS_fsm_state15)))) begin
        bucket_we0 = grp_update_fu_135_bucket_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_we0 = grp_last_step_scan_fu_127_bucket_we0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_we0 = grp_local_scan_fu_113_bucket_we0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        bucket_we0 = grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_bucket_we0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        bucket_we0 = grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_bucket_we0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_we0 = grp_ss_sort_Pipeline_init_1_fu_89_bucket_we0;
    end else begin
        bucket_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((valid_buffer_reg_64 == 1'd1) & (1'b1 == ap_CS_fsm_state15)) | ((valid_buffer_reg_64 == 1'd0) & (1'b1 == ap_CS_fsm_state15)))) begin
        bucket_we1 = grp_update_fu_135_bucket_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        bucket_we1 = grp_last_step_scan_fu_127_bucket_we1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        bucket_we1 = grp_local_scan_fu_113_bucket_we1;
    end else begin
        bucket_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        if ((valid_buffer_reg_64 == 1'd1)) begin
            grp_update_fu_135_b_q0 = b_q0;
        end else if ((valid_buffer_reg_64 == 1'd0)) begin
            grp_update_fu_135_b_q0 = a_q0;
        end else begin
            grp_update_fu_135_b_q0 = 'bx;
        end
    end else begin
        grp_update_fu_135_b_q0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        if ((valid_buffer_reg_64 == 1'd1)) begin
            grp_update_fu_135_b_q1 = b_q1;
        end else if ((valid_buffer_reg_64 == 1'd0)) begin
            grp_update_fu_135_b_q1 = a_q1;
        end else begin
            grp_update_fu_135_b_q1 = 'bx;
        end
    end else begin
        grp_update_fu_135_b_q1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sum_address0 = grp_last_step_scan_fu_127_sum_address0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        sum_address0 = grp_sum_scan_fu_119_sum_address0;
    end else begin
        sum_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sum_address1 = grp_last_step_scan_fu_127_sum_address1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        sum_address1 = grp_sum_scan_fu_119_sum_address1;
    end else begin
        sum_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sum_ce0 = grp_last_step_scan_fu_127_sum_ce0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        sum_ce0 = grp_sum_scan_fu_119_sum_ce0;
    end else begin
        sum_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        sum_ce1 = grp_last_step_scan_fu_127_sum_ce1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        sum_ce1 = grp_sum_scan_fu_119_sum_ce1;
    end else begin
        sum_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        sum_we0 = grp_sum_scan_fu_119_sum_we0;
    end else begin
        sum_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        sum_we1 = grp_sum_scan_fu_119_sum_we1;
    end else begin
        sum_we1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_fu_156_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_ss_sort_Pipeline_init_1_fu_89_ap_done == 1'b1) & (valid_buffer_reg_64 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if (((grp_ss_sort_Pipeline_init_1_fu_89_ap_done == 1'b1) & (valid_buffer_reg_64 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (grp_local_scan_fu_113_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (grp_sum_scan_fu_119_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((valid_buffer_reg_64 == 1'd1) & (1'b1 == ap_CS_fsm_state13) & (grp_last_step_scan_fu_127_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else if (((valid_buffer_reg_64 == 1'd0) & (1'b1 == ap_CS_fsm_state13) & (grp_last_step_scan_fu_127_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((1'b0 == ap_block_state15_on_subcall_done) & (1'b1 == ap_CS_fsm_state15))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_d0 = grp_update_fu_135_a_d0;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state15_on_subcall_done = (((valid_buffer_reg_64 == 1'd1) & (grp_update_fu_135_ap_done == 1'b0)) | ((valid_buffer_reg_64 == 1'd0) & (grp_update_fu_135_ap_done == 1'b0)));
end
assign b_d0 = grp_update_fu_135_a_d0;
assign exp_3_fu_167_p2 = (exp_fu_60 + 6'd2);
assign grp_last_step_scan_fu_127_ap_start = grp_last_step_scan_fu_127_ap_start_reg;
assign grp_local_scan_fu_113_ap_start = grp_local_scan_fu_113_ap_start_reg;
assign grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_ap_start = grp_ss_sort_Pipeline_hist_1_hist_21_fu_104_ap_start_reg;
assign grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_ap_start = grp_ss_sort_Pipeline_hist_1_hist_2_fu_95_ap_start_reg;
assign grp_ss_sort_Pipeline_init_1_fu_89_ap_start = grp_ss_sort_Pipeline_init_1_fu_89_ap_start_reg;
assign grp_sum_scan_fu_119_ap_start = grp_sum_scan_fu_119_ap_start_reg;
assign grp_update_fu_135_ap_start = grp_update_fu_135_ap_start_reg;
assign sum_d0 = grp_sum_scan_fu_119_sum_d0;
assign sum_d1 = grp_sum_scan_fu_119_sum_d1;
assign tmp_fu_156_p3 = exp_fu_60[32'd5];
assign trunc_ln50_fu_164_p1 = exp_fu_60[4:0];
endmodule 