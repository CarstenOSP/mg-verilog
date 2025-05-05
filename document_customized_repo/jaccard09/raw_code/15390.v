module ss_sort (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_address0,a_ce0,a_we0,a_d0,a_q0,a_address1,a_ce1,a_q1,b_address0,b_ce0,b_we0,b_d0,b_q0,b_address1,b_ce1,b_q1,bucket_address0,bucket_ce0,bucket_we0,bucket_d0,bucket_q0,bucket_address1,bucket_ce1,bucket_we1,bucket_d1,bucket_q1,sum_address0,sum_ce0,sum_we0,sum_d0,sum_q0,sum_address1,sum_ce1,sum_we1,sum_d1,sum_q1); 
parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_state9 = 15'd256;
parameter    ap_ST_fsm_state10 = 15'd512;
parameter    ap_ST_fsm_state11 = 15'd1024;
parameter    ap_ST_fsm_state12 = 15'd2048;
parameter    ap_ST_fsm_state13 = 15'd4096;
parameter    ap_ST_fsm_state14 = 15'd8192;
parameter    ap_ST_fsm_state15 = 15'd16384;
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
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] trunc_ln84_fu_154_p1;
reg   [4:0] trunc_ln84_reg_180;
wire    ap_CS_fsm_state3;
wire    grp_ss_sort_Pipeline_init_1_fu_87_ap_start;
wire    grp_ss_sort_Pipeline_init_1_fu_87_ap_done;
wire    grp_ss_sort_Pipeline_init_1_fu_87_ap_idle;
wire    grp_ss_sort_Pipeline_init_1_fu_87_ap_ready;
wire   [10:0] grp_ss_sort_Pipeline_init_1_fu_87_bucket_address0;
wire    grp_ss_sort_Pipeline_init_1_fu_87_bucket_ce0;
wire    grp_ss_sort_Pipeline_init_1_fu_87_bucket_we0;
wire   [31:0] grp_ss_sort_Pipeline_init_1_fu_87_bucket_d0;
wire    grp_hist_fu_93_ap_start;
wire    grp_hist_fu_93_ap_done;
wire    grp_hist_fu_93_ap_idle;
wire    grp_hist_fu_93_ap_ready;
wire   [10:0] grp_hist_fu_93_bucket_address0;
wire    grp_hist_fu_93_bucket_ce0;
wire    grp_hist_fu_93_bucket_we0;
wire   [31:0] grp_hist_fu_93_bucket_d0;
wire   [10:0] grp_hist_fu_93_b_address0;
wire    grp_hist_fu_93_b_ce0;
reg   [31:0] grp_hist_fu_93_b_q0;
wire   [10:0] grp_hist_fu_93_b_address1;
wire    grp_hist_fu_93_b_ce1;
reg   [31:0] grp_hist_fu_93_b_q1;
wire    grp_local_scan_fu_103_ap_start;
wire    grp_local_scan_fu_103_ap_done;
wire    grp_local_scan_fu_103_ap_idle;
wire    grp_local_scan_fu_103_ap_ready;
wire   [10:0] grp_local_scan_fu_103_bucket_address0;
wire    grp_local_scan_fu_103_bucket_ce0;
wire    grp_local_scan_fu_103_bucket_we0;
wire   [31:0] grp_local_scan_fu_103_bucket_d0;
wire   [10:0] grp_local_scan_fu_103_bucket_address1;
wire    grp_local_scan_fu_103_bucket_ce1;
wire    grp_local_scan_fu_103_bucket_we1;
wire   [31:0] grp_local_scan_fu_103_bucket_d1;
wire    grp_sum_scan_fu_109_ap_start;
wire    grp_sum_scan_fu_109_ap_done;
wire    grp_sum_scan_fu_109_ap_idle;
wire    grp_sum_scan_fu_109_ap_ready;
wire   [6:0] grp_sum_scan_fu_109_sum_address0;
wire    grp_sum_scan_fu_109_sum_ce0;
wire    grp_sum_scan_fu_109_sum_we0;
wire   [31:0] grp_sum_scan_fu_109_sum_d0;
wire   [6:0] grp_sum_scan_fu_109_sum_address1;
wire    grp_sum_scan_fu_109_sum_ce1;
wire    grp_sum_scan_fu_109_sum_we1;
wire   [31:0] grp_sum_scan_fu_109_sum_d1;
wire   [10:0] grp_sum_scan_fu_109_bucket_address0;
wire    grp_sum_scan_fu_109_bucket_ce0;
wire   [10:0] grp_sum_scan_fu_109_bucket_address1;
wire    grp_sum_scan_fu_109_bucket_ce1;
wire    grp_last_step_scan_fu_117_ap_start;
wire    grp_last_step_scan_fu_117_ap_done;
wire    grp_last_step_scan_fu_117_ap_idle;
wire    grp_last_step_scan_fu_117_ap_ready;
wire   [10:0] grp_last_step_scan_fu_117_bucket_address0;
wire    grp_last_step_scan_fu_117_bucket_ce0;
wire    grp_last_step_scan_fu_117_bucket_we0;
wire   [31:0] grp_last_step_scan_fu_117_bucket_d0;
wire   [10:0] grp_last_step_scan_fu_117_bucket_address1;
wire    grp_last_step_scan_fu_117_bucket_ce1;
wire    grp_last_step_scan_fu_117_bucket_we1;
wire   [31:0] grp_last_step_scan_fu_117_bucket_d1;
wire   [6:0] grp_last_step_scan_fu_117_sum_address0;
wire    grp_last_step_scan_fu_117_sum_ce0;
wire   [6:0] grp_last_step_scan_fu_117_sum_address1;
wire    grp_last_step_scan_fu_117_sum_ce1;
wire    grp_update_fu_125_ap_start;
wire    grp_update_fu_125_ap_done;
wire    grp_update_fu_125_ap_idle;
wire    grp_update_fu_125_ap_ready;
wire   [10:0] grp_update_fu_125_a_address0;
wire    grp_update_fu_125_a_ce0;
wire    grp_update_fu_125_a_we0;
wire   [31:0] grp_update_fu_125_a_d0;
wire   [10:0] grp_update_fu_125_bucket_address0;
wire    grp_update_fu_125_bucket_ce0;
wire    grp_update_fu_125_bucket_we0;
wire   [31:0] grp_update_fu_125_bucket_d0;
wire   [10:0] grp_update_fu_125_b_address0;
wire    grp_update_fu_125_b_ce0;
reg   [31:0] grp_update_fu_125_b_q0;
wire   [10:0] grp_update_fu_125_b_address1;
wire    grp_update_fu_125_b_ce1;
reg   [31:0] grp_update_fu_125_b_q1;
reg   [0:0] valid_buffer_reg_62;
reg   [0:0] ap_phi_mux_valid_buffer_1_phi_fu_78_p4;
wire    ap_CS_fsm_state14;
reg    ap_block_state14_on_subcall_done;
reg    grp_ss_sort_Pipeline_init_1_fu_87_ap_start_reg;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_fu_146_p3;
reg    grp_hist_fu_93_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state5;
reg    grp_local_scan_fu_103_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg    grp_sum_scan_fu_109_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
reg    grp_last_step_scan_fu_117_ap_start_reg;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
reg    grp_update_fu_125_ap_start_reg;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state15;
reg   [5:0] exp_fu_58;
wire   [5:0] exp_3_fu_157_p2;
reg   [14:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_block_state5_on_subcall_done;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
reg    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
reg    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 grp_ss_sort_Pipeline_init_1_fu_87_ap_start_reg = 1'b0;
#0 grp_hist_fu_93_ap_start_reg = 1'b0;
#0 grp_local_scan_fu_103_ap_start_reg = 1'b0;
#0 grp_sum_scan_fu_109_ap_start_reg = 1'b0;
#0 grp_last_step_scan_fu_117_ap_start_reg = 1'b0;
#0 grp_update_fu_125_ap_start_reg = 1'b0;
#0 exp_fu_58 = 6'd0;
end
ss_sort_ss_sort_Pipeline_init_1 grp_ss_sort_Pipeline_init_1_fu_87(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_ss_sort_Pipeline_init_1_fu_87_ap_start),.ap_done(grp_ss_sort_Pipeline_init_1_fu_87_ap_done),.ap_idle(grp_ss_sort_Pipeline_init_1_fu_87_ap_idle),.ap_ready(grp_ss_sort_Pipeline_init_1_fu_87_ap_ready),.bucket_address0(grp_ss_sort_Pipeline_init_1_fu_87_bucket_address0),.bucket_ce0(grp_ss_sort_Pipeline_init_1_fu_87_bucket_ce0),.bucket_we0(grp_ss_sort_Pipeline_init_1_fu_87_bucket_we0),.bucket_d0(grp_ss_sort_Pipeline_init_1_fu_87_bucket_d0));
ss_sort_hist grp_hist_fu_93(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_hist_fu_93_ap_start),.ap_done(grp_hist_fu_93_ap_done),.ap_idle(grp_hist_fu_93_ap_idle),.ap_ready(grp_hist_fu_93_ap_ready),.bucket_address0(grp_hist_fu_93_bucket_address0),.bucket_ce0(grp_hist_fu_93_bucket_ce0),.bucket_we0(grp_hist_fu_93_bucket_we0),.bucket_d0(grp_hist_fu_93_bucket_d0),.bucket_q0(bucket_q0),.b_address0(grp_hist_fu_93_b_address0),.b_ce0(grp_hist_fu_93_b_ce0),.b_q0(grp_hist_fu_93_b_q0),.b_address1(grp_hist_fu_93_b_address1),.b_ce1(grp_hist_fu_93_b_ce1),.b_q1(grp_hist_fu_93_b_q1),.exp(trunc_ln84_reg_180));
ss_sort_local_scan grp_local_scan_fu_103(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_local_scan_fu_103_ap_start),.ap_done(grp_local_scan_fu_103_ap_done),.ap_idle(grp_local_scan_fu_103_ap_idle),.ap_ready(grp_local_scan_fu_103_ap_ready),.bucket_address0(grp_local_scan_fu_103_bucket_address0),.bucket_ce0(grp_local_scan_fu_103_bucket_ce0),.bucket_we0(grp_local_scan_fu_103_bucket_we0),.bucket_d0(grp_local_scan_fu_103_bucket_d0),.bucket_q0(bucket_q0),.bucket_address1(grp_local_scan_fu_103_bucket_address1),.bucket_ce1(grp_local_scan_fu_103_bucket_ce1),.bucket_we1(grp_local_scan_fu_103_bucket_we1),.bucket_d1(grp_local_scan_fu_103_bucket_d1),.bucket_q1(bucket_q1));
ss_sort_sum_scan grp_sum_scan_fu_109(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sum_scan_fu_109_ap_start),.ap_done(grp_sum_scan_fu_109_ap_done),.ap_idle(grp_sum_scan_fu_109_ap_idle),.ap_ready(grp_sum_scan_fu_109_ap_ready),.sum_address0(grp_sum_scan_fu_109_sum_address0),.sum_ce0(grp_sum_scan_fu_109_sum_ce0),.sum_we0(grp_sum_scan_fu_109_sum_we0),.sum_d0(grp_sum_scan_fu_109_sum_d0),.sum_q0(sum_q0),.sum_address1(grp_sum_scan_fu_109_sum_address1),.sum_ce1(grp_sum_scan_fu_109_sum_ce1),.sum_we1(grp_sum_scan_fu_109_sum_we1),.sum_d1(grp_sum_scan_fu_109_sum_d1),.bucket_address0(grp_sum_scan_fu_109_bucket_address0),.bucket_ce0(grp_sum_scan_fu_109_bucket_ce0),.bucket_q0(bucket_q0),.bucket_address1(grp_sum_scan_fu_109_bucket_address1),.bucket_ce1(grp_sum_scan_fu_109_bucket_ce1),.bucket_q1(bucket_q1));
ss_sort_last_step_scan grp_last_step_scan_fu_117(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_last_step_scan_fu_117_ap_start),.ap_done(grp_last_step_scan_fu_117_ap_done),.ap_idle(grp_last_step_scan_fu_117_ap_idle),.ap_ready(grp_last_step_scan_fu_117_ap_ready),.bucket_address0(grp_last_step_scan_fu_117_bucket_address0),.bucket_ce0(grp_last_step_scan_fu_117_bucket_ce0),.bucket_we0(grp_last_step_scan_fu_117_bucket_we0),.bucket_d0(grp_last_step_scan_fu_117_bucket_d0),.bucket_q0(bucket_q0),.bucket_address1(grp_last_step_scan_fu_117_bucket_address1),.bucket_ce1(grp_last_step_scan_fu_117_bucket_ce1),.bucket_we1(grp_last_step_scan_fu_117_bucket_we1),.bucket_d1(grp_last_step_scan_fu_117_bucket_d1),.bucket_q1(bucket_q1),.sum_address0(grp_last_step_scan_fu_117_sum_address0),.sum_ce0(grp_last_step_scan_fu_117_sum_ce0),.sum_q0(sum_q0),.sum_address1(grp_last_step_scan_fu_117_sum_address1),.sum_ce1(grp_last_step_scan_fu_117_sum_ce1),.sum_q1(sum_q1));
ss_sort_update grp_update_fu_125(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_fu_125_ap_start),.ap_done(grp_update_fu_125_ap_done),.ap_idle(grp_update_fu_125_ap_idle),.ap_ready(grp_update_fu_125_ap_ready),.a_address0(grp_update_fu_125_a_address0),.a_ce0(grp_update_fu_125_a_ce0),.a_we0(grp_update_fu_125_a_we0),.a_d0(grp_update_fu_125_a_d0),.bucket_address0(grp_update_fu_125_bucket_address0),.bucket_ce0(grp_update_fu_125_bucket_ce0),.bucket_we0(grp_update_fu_125_bucket_we0),.bucket_d0(grp_update_fu_125_bucket_d0),.bucket_q0(bucket_q0),.b_address0(grp_update_fu_125_b_address0),.b_ce0(grp_update_fu_125_b_ce0),.b_q0(grp_update_fu_125_b_q0),.b_address1(grp_update_fu_125_b_address1),.b_ce1(grp_update_fu_125_b_ce1),.b_q1(grp_update_fu_125_b_q1),.exp(trunc_ln84_reg_180));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_hist_fu_93_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4))) begin
            grp_hist_fu_93_ap_start_reg <= 1'b1;
        end else if ((grp_hist_fu_93_ap_ready == 1'b1)) begin
            grp_hist_fu_93_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_last_step_scan_fu_117_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_last_step_scan_fu_117_ap_start_reg <= 1'b1;
        end else if ((grp_last_step_scan_fu_117_ap_ready == 1'b1)) begin
            grp_last_step_scan_fu_117_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_local_scan_fu_103_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_local_scan_fu_103_ap_start_reg <= 1'b1;
        end else if ((grp_local_scan_fu_103_ap_ready == 1'b1)) begin
            grp_local_scan_fu_103_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ss_sort_Pipeline_init_1_fu_87_ap_start_reg <= 1'b0;
    end else begin
        if (((tmp_fu_146_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_ss_sort_Pipeline_init_1_fu_87_ap_start_reg <= 1'b1;
        end else if ((grp_ss_sort_Pipeline_init_1_fu_87_ap_ready == 1'b1)) begin
            grp_ss_sort_Pipeline_init_1_fu_87_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sum_scan_fu_109_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_sum_scan_fu_109_ap_start_reg <= 1'b1;
        end else if ((grp_sum_scan_fu_109_ap_ready == 1'b1)) begin
            grp_sum_scan_fu_109_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_fu_125_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13))) begin
            grp_update_fu_125_ap_start_reg <= 1'b1;
        end else if ((grp_update_fu_125_ap_ready == 1'b1)) begin
            grp_update_fu_125_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        exp_fu_58 <= 6'd0;
    end else if (((1'b0 == ap_block_state14_on_subcall_done) & (1'b1 == ap_CS_fsm_state14))) begin
        exp_fu_58 <= exp_3_fu_157_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state14_on_subcall_done) & (1'b1 == ap_CS_fsm_state14))) begin
        valid_buffer_reg_62 <= ap_phi_mux_valid_buffer_1_phi_fu_78_p4;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        valid_buffer_reg_62 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln84_reg_180 <= trunc_ln84_fu_154_p1;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_62 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        a_address0 = grp_update_fu_125_b_address0;
    end else if (((valid_buffer_reg_62 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        a_address0 = grp_update_fu_125_a_address0;
    end else if (((valid_buffer_reg_62 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        a_address0 = grp_hist_fu_93_b_address0;
    end else begin
        a_address0 = 'bx;
    end
end
always @ (*) begin
    if ((valid_buffer_reg_62 == 1'd0)) begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            a_address1 = grp_update_fu_125_b_address1;
        end else if ((1'b1 == ap_CS_fsm_state5)) begin
            a_address1 = grp_hist_fu_93_b_address1;
        end else begin
            a_address1 = 'bx;
        end
    end else begin
        a_address1 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_62 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        a_ce0 = grp_update_fu_125_b_ce0;
    end else if (((valid_buffer_reg_62 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        a_ce0 = grp_update_fu_125_a_ce0;
    end else if (((valid_buffer_reg_62 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        a_ce0 = grp_hist_fu_93_b_ce0;
    end else begin
        a_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((valid_buffer_reg_62 == 1'd0)) begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            a_ce1 = grp_update_fu_125_b_ce1;
        end else if ((1'b1 == ap_CS_fsm_state5)) begin
            a_ce1 = grp_hist_fu_93_b_ce1;
        end else begin
            a_ce1 = 1'b0;
        end
    end else begin
        a_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_62 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        a_we0 = grp_update_fu_125_a_we0;
    end else begin
        a_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((grp_sum_scan_fu_109_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((grp_last_step_scan_fu_117_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state14_on_subcall_done)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
    if ((grp_ss_sort_Pipeline_init_1_fu_87_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state5_on_subcall_done)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_local_scan_fu_103_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((tmp_fu_146_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if ((1'b1 == ap_CS_fsm_state14)) begin
        if ((valid_buffer_reg_62 == 1'd1)) begin
            ap_phi_mux_valid_buffer_1_phi_fu_78_p4 = 1'd0;
        end else if ((valid_buffer_reg_62 == 1'd0)) begin
            ap_phi_mux_valid_buffer_1_phi_fu_78_p4 = 1'd1;
        end else begin
            ap_phi_mux_valid_buffer_1_phi_fu_78_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_valid_buffer_1_phi_fu_78_p4 = 'bx;
    end
end
always @ (*) begin
    if (((tmp_fu_146_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_62 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        b_address0 = grp_update_fu_125_b_address0;
    end else if (((valid_buffer_reg_62 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        b_address0 = grp_update_fu_125_a_address0;
    end else if (((valid_buffer_reg_62 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        b_address0 = grp_hist_fu_93_b_address0;
    end else begin
        b_address0 = 'bx;
    end
end
always @ (*) begin
    if ((valid_buffer_reg_62 == 1'd1)) begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            b_address1 = grp_update_fu_125_b_address1;
        end else if ((1'b1 == ap_CS_fsm_state5)) begin
            b_address1 = grp_hist_fu_93_b_address1;
        end else begin
            b_address1 = 'bx;
        end
    end else begin
        b_address1 = 'bx;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_62 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        b_ce0 = grp_update_fu_125_b_ce0;
    end else if (((valid_buffer_reg_62 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        b_ce0 = grp_update_fu_125_a_ce0;
    end else if (((valid_buffer_reg_62 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        b_ce0 = grp_hist_fu_93_b_ce0;
    end else begin
        b_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((valid_buffer_reg_62 == 1'd1)) begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            b_ce1 = grp_update_fu_125_b_ce1;
        end else if ((1'b1 == ap_CS_fsm_state5)) begin
            b_ce1 = grp_hist_fu_93_b_ce1;
        end else begin
            b_ce1 = 1'b0;
        end
    end else begin
        b_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((valid_buffer_reg_62 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        b_we0 = grp_update_fu_125_a_we0;
    end else begin
        b_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((valid_buffer_reg_62 == 1'd1) & (1'b1 == ap_CS_fsm_state14)) | ((valid_buffer_reg_62 == 1'd0) & (1'b1 == ap_CS_fsm_state14)))) begin
        bucket_address0 = grp_update_fu_125_bucket_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_address0 = grp_last_step_scan_fu_117_bucket_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_address0 = grp_sum_scan_fu_109_bucket_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_address0 = grp_local_scan_fu_103_bucket_address0;
    end else if ((((valid_buffer_reg_62 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_62 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_address0 = grp_hist_fu_93_bucket_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_address0 = grp_ss_sort_Pipeline_init_1_fu_87_bucket_address0;
    end else begin
        bucket_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_address1 = grp_last_step_scan_fu_117_bucket_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_address1 = grp_sum_scan_fu_109_bucket_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_address1 = grp_local_scan_fu_103_bucket_address1;
    end else begin
        bucket_address1 = 'bx;
    end
end
always @ (*) begin
    if ((((valid_buffer_reg_62 == 1'd1) & (1'b1 == ap_CS_fsm_state14)) | ((valid_buffer_reg_62 == 1'd0) & (1'b1 == ap_CS_fsm_state14)))) begin
        bucket_ce0 = grp_update_fu_125_bucket_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_ce0 = grp_last_step_scan_fu_117_bucket_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_ce0 = grp_sum_scan_fu_109_bucket_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_ce0 = grp_local_scan_fu_103_bucket_ce0;
    end else if ((((valid_buffer_reg_62 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_62 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_ce0 = grp_hist_fu_93_bucket_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_ce0 = grp_ss_sort_Pipeline_init_1_fu_87_bucket_ce0;
    end else begin
        bucket_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_ce1 = grp_last_step_scan_fu_117_bucket_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        bucket_ce1 = grp_sum_scan_fu_109_bucket_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_ce1 = grp_local_scan_fu_103_bucket_ce1;
    end else begin
        bucket_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((valid_buffer_reg_62 == 1'd1) & (1'b1 == ap_CS_fsm_state14)) | ((valid_buffer_reg_62 == 1'd0) & (1'b1 == ap_CS_fsm_state14)))) begin
        bucket_d0 = grp_update_fu_125_bucket_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_d0 = grp_last_step_scan_fu_117_bucket_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_d0 = grp_local_scan_fu_103_bucket_d0;
    end else if ((((valid_buffer_reg_62 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_62 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_d0 = grp_hist_fu_93_bucket_d0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_d0 = grp_ss_sort_Pipeline_init_1_fu_87_bucket_d0;
    end else begin
        bucket_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_d1 = grp_last_step_scan_fu_117_bucket_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_d1 = grp_local_scan_fu_103_bucket_d1;
    end else begin
        bucket_d1 = 'bx;
    end
end
always @ (*) begin
    if ((((valid_buffer_reg_62 == 1'd1) & (1'b1 == ap_CS_fsm_state14)) | ((valid_buffer_reg_62 == 1'd0) & (1'b1 == ap_CS_fsm_state14)))) begin
        bucket_we0 = grp_update_fu_125_bucket_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_we0 = grp_last_step_scan_fu_117_bucket_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_we0 = grp_local_scan_fu_103_bucket_we0;
    end else if ((((valid_buffer_reg_62 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((valid_buffer_reg_62 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        bucket_we0 = grp_hist_fu_93_bucket_we0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bucket_we0 = grp_ss_sort_Pipeline_init_1_fu_87_bucket_we0;
    end else begin
        bucket_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bucket_we1 = grp_last_step_scan_fu_117_bucket_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        bucket_we1 = grp_local_scan_fu_103_bucket_we1;
    end else begin
        bucket_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_62 == 1'd1)) begin
            grp_hist_fu_93_b_q0 = b_q0;
        end else if ((valid_buffer_reg_62 == 1'd0)) begin
            grp_hist_fu_93_b_q0 = a_q0;
        end else begin
            grp_hist_fu_93_b_q0 = 'bx;
        end
    end else begin
        grp_hist_fu_93_b_q0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((valid_buffer_reg_62 == 1'd1)) begin
            grp_hist_fu_93_b_q1 = b_q1;
        end else if ((valid_buffer_reg_62 == 1'd0)) begin
            grp_hist_fu_93_b_q1 = a_q1;
        end else begin
            grp_hist_fu_93_b_q1 = 'bx;
        end
    end else begin
        grp_hist_fu_93_b_q1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        if ((valid_buffer_reg_62 == 1'd1)) begin
            grp_update_fu_125_b_q0 = b_q0;
        end else if ((valid_buffer_reg_62 == 1'd0)) begin
            grp_update_fu_125_b_q0 = a_q0;
        end else begin
            grp_update_fu_125_b_q0 = 'bx;
        end
    end else begin
        grp_update_fu_125_b_q0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        if ((valid_buffer_reg_62 == 1'd1)) begin
            grp_update_fu_125_b_q1 = b_q1;
        end else if ((valid_buffer_reg_62 == 1'd0)) begin
            grp_update_fu_125_b_q1 = a_q1;
        end else begin
            grp_update_fu_125_b_q1 = 'bx;
        end
    end else begin
        grp_update_fu_125_b_q1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_address0 = grp_last_step_scan_fu_117_sum_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_address0 = grp_sum_scan_fu_109_sum_address0;
    end else begin
        sum_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_address1 = grp_last_step_scan_fu_117_sum_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_address1 = grp_sum_scan_fu_109_sum_address1;
    end else begin
        sum_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_ce0 = grp_last_step_scan_fu_117_sum_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_ce0 = grp_sum_scan_fu_109_sum_ce0;
    end else begin
        sum_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sum_ce1 = grp_last_step_scan_fu_117_sum_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_ce1 = grp_sum_scan_fu_109_sum_ce1;
    end else begin
        sum_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_we0 = grp_sum_scan_fu_109_sum_we0;
    end else begin
        sum_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_we1 = grp_sum_scan_fu_109_sum_we1;
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
            if (((tmp_fu_146_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_ss_sort_Pipeline_init_1_fu_87_ap_done == 1'b1) & (valid_buffer_reg_62 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if (((grp_ss_sort_Pipeline_init_1_fu_87_ap_done == 1'b1) & (valid_buffer_reg_62 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_local_scan_fu_103_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (grp_sum_scan_fu_109_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((valid_buffer_reg_62 == 1'd1) & (1'b1 == ap_CS_fsm_state12) & (grp_last_step_scan_fu_117_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else if (((valid_buffer_reg_62 == 1'd0) & (1'b1 == ap_CS_fsm_state12) & (grp_last_step_scan_fu_117_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((1'b0 == ap_block_state14_on_subcall_done) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_d0 = grp_update_fu_125_a_d0;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state14_on_subcall_done = (((valid_buffer_reg_62 == 1'd1) & (grp_update_fu_125_ap_done == 1'b0)) | ((valid_buffer_reg_62 == 1'd0) & (grp_update_fu_125_ap_done == 1'b0)));
end
always @ (*) begin
    ap_block_state5_on_subcall_done = (((valid_buffer_reg_62 == 1'd1) & (grp_hist_fu_93_ap_done == 1'b0)) | ((valid_buffer_reg_62 == 1'd0) & (grp_hist_fu_93_ap_done == 1'b0)));
end
assign b_d0 = grp_update_fu_125_a_d0;
assign exp_3_fu_157_p2 = (exp_fu_58 + 6'd2);
assign grp_hist_fu_93_ap_start = grp_hist_fu_93_ap_start_reg;
assign grp_last_step_scan_fu_117_ap_start = grp_last_step_scan_fu_117_ap_start_reg;
assign grp_local_scan_fu_103_ap_start = grp_local_scan_fu_103_ap_start_reg;
assign grp_ss_sort_Pipeline_init_1_fu_87_ap_start = grp_ss_sort_Pipeline_init_1_fu_87_ap_start_reg;
assign grp_sum_scan_fu_109_ap_start = grp_sum_scan_fu_109_ap_start_reg;
assign grp_update_fu_125_ap_start = grp_update_fu_125_ap_start_reg;
assign sum_d0 = grp_sum_scan_fu_109_sum_d0;
assign sum_d1 = grp_sum_scan_fu_109_sum_d1;
assign tmp_fu_146_p3 = exp_fu_58[32'd5];
assign trunc_ln84_fu_154_p1 = exp_fu_58[4:0];
endmodule 