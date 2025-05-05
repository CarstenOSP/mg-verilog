module ms_mergesort_ms_mergesort_Pipeline_mergesort_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_0_q0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,a_1_q0,a_2_address0,a_2_ce0,a_2_we0,a_2_d0,a_2_q0,a_3_address0,a_3_ce0,a_3_we0,a_3_d0,a_3_q0,a_4_address0,a_4_ce0,a_4_we0,a_4_d0,a_4_q0,a_5_address0,a_5_ce0,a_5_we0,a_5_d0,a_5_q0,a_6_address0,a_6_ce0,a_6_we0,a_6_d0,a_6_q0,a_7_address0,a_7_ce0,a_7_we0,a_7_d0,a_7_q0,m); 
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
input  [31:0] empty;
output  [7:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
input  [31:0] a_0_q0;
output  [7:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
input  [31:0] a_1_q0;
output  [7:0] a_2_address0;
output   a_2_ce0;
output   a_2_we0;
output  [31:0] a_2_d0;
input  [31:0] a_2_q0;
output  [7:0] a_3_address0;
output   a_3_ce0;
output   a_3_we0;
output  [31:0] a_3_d0;
input  [31:0] a_3_q0;
output  [7:0] a_4_address0;
output   a_4_ce0;
output   a_4_we0;
output  [31:0] a_4_d0;
input  [31:0] a_4_q0;
output  [7:0] a_5_address0;
output   a_5_ce0;
output   a_5_we0;
output  [31:0] a_5_d0;
input  [31:0] a_5_q0;
output  [7:0] a_6_address0;
output   a_6_ce0;
output   a_6_we0;
output  [31:0] a_6_d0;
input  [31:0] a_6_q0;
output  [7:0] a_7_address0;
output   a_7_ce0;
output   a_7_we0;
output  [31:0] a_7_d0;
input  [31:0] a_7_q0;
input  [31:0] m;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_0_ce0;
reg a_0_we0;
reg a_1_ce0;
reg a_1_we0;
reg a_2_ce0;
reg a_2_we0;
reg a_3_ce0;
reg a_3_we0;
reg a_4_ce0;
reg a_4_we0;
reg a_5_ce0;
reg a_5_we0;
reg a_6_ce0;
reg a_6_we0;
reg a_7_ce0;
reg a_7_we0;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln39_fu_110_p2;
reg   [0:0] icmp_ln39_reg_233;
wire    ap_CS_fsm_state2;
wire   [31:0] add_ln41_fu_116_p2;
reg   [31:0] add_ln41_reg_237;
wire   [31:0] add_ln42_fu_121_p2;
reg   [31:0] add_ln42_reg_243;
wire   [31:0] mid_fu_126_p2;
reg   [31:0] mid_reg_249;
wire    ap_CS_fsm_state3;
wire   [31:0] to_fu_131_p2;
reg   [31:0] to_reg_254;
wire   [0:0] icmp_ln43_fu_145_p2;
reg   [0:0] icmp_ln43_reg_259;
wire   [31:0] from_2_fu_151_p2;
reg   [31:0] from_2_reg_263;
wire    ap_CS_fsm_state5;
wire   [31:0] add_ln41_2_fu_171_p2;
reg   [31:0] add_ln41_2_reg_272;
wire   [31:0] mid_1_fu_176_p2;
reg   [31:0] mid_1_reg_278;
wire    ap_CS_fsm_state7;
wire   [31:0] to_1_fu_181_p2;
reg   [31:0] to_1_reg_283;
wire   [0:0] icmp_ln43_1_fu_195_p2;
reg   [0:0] icmp_ln43_1_reg_288;
wire    grp_merge_fu_68_ap_start;
wire    grp_merge_fu_68_ap_done;
wire    grp_merge_fu_68_ap_idle;
wire    grp_merge_fu_68_ap_ready;
wire   [7:0] grp_merge_fu_68_a_0_address0;
wire    grp_merge_fu_68_a_0_ce0;
wire    grp_merge_fu_68_a_0_we0;
wire   [31:0] grp_merge_fu_68_a_0_d0;
wire   [7:0] grp_merge_fu_68_a_1_address0;
wire    grp_merge_fu_68_a_1_ce0;
wire    grp_merge_fu_68_a_1_we0;
wire   [31:0] grp_merge_fu_68_a_1_d0;
wire   [7:0] grp_merge_fu_68_a_2_address0;
wire    grp_merge_fu_68_a_2_ce0;
wire    grp_merge_fu_68_a_2_we0;
wire   [31:0] grp_merge_fu_68_a_2_d0;
wire   [7:0] grp_merge_fu_68_a_3_address0;
wire    grp_merge_fu_68_a_3_ce0;
wire    grp_merge_fu_68_a_3_we0;
wire   [31:0] grp_merge_fu_68_a_3_d0;
wire   [7:0] grp_merge_fu_68_a_4_address0;
wire    grp_merge_fu_68_a_4_ce0;
wire    grp_merge_fu_68_a_4_we0;
wire   [31:0] grp_merge_fu_68_a_4_d0;
wire   [7:0] grp_merge_fu_68_a_5_address0;
wire    grp_merge_fu_68_a_5_ce0;
wire    grp_merge_fu_68_a_5_we0;
wire   [31:0] grp_merge_fu_68_a_5_d0;
wire   [7:0] grp_merge_fu_68_a_6_address0;
wire    grp_merge_fu_68_a_6_ce0;
wire    grp_merge_fu_68_a_6_we0;
wire   [31:0] grp_merge_fu_68_a_6_d0;
wire   [7:0] grp_merge_fu_68_a_7_address0;
wire    grp_merge_fu_68_a_7_ce0;
wire    grp_merge_fu_68_a_7_we0;
wire   [31:0] grp_merge_fu_68_a_7_d0;
reg   [31:0] grp_merge_fu_68_start_r;
reg   [31:0] grp_merge_fu_68_m;
reg   [31:0] grp_merge_fu_68_stop;
reg    grp_merge_fu_68_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state9;
reg   [31:0] from_fu_52;
wire   [31:0] i_fu_201_p2;
reg    ap_block_state9_on_subcall_done;
wire   [20:0] tmp_1_fu_100_p4;
wire   [20:0] tmp_2_fu_135_p4;
wire   [20:0] tmp_3_fu_155_p4;
wire   [20:0] tmp_4_fu_185_p4;
wire   [0:0] icmp_ln39_1_fu_165_p2;
reg    ap_predicate_op38_call_state5;
reg    ap_predicate_op40_call_state5;
reg    ap_block_state5_on_subcall_done;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_merge_fu_68_ap_start_reg = 1'b0;
#0 from_fu_52 = 32'd0;
end
ms_mergesort_merge grp_merge_fu_68(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_merge_fu_68_ap_start),.ap_done(grp_merge_fu_68_ap_done),.ap_idle(grp_merge_fu_68_ap_idle),.ap_ready(grp_merge_fu_68_ap_ready),.a_0_address0(grp_merge_fu_68_a_0_address0),.a_0_ce0(grp_merge_fu_68_a_0_ce0),.a_0_we0(grp_merge_fu_68_a_0_we0),.a_0_d0(grp_merge_fu_68_a_0_d0),.a_0_q0(a_0_q0),.a_1_address0(grp_merge_fu_68_a_1_address0),.a_1_ce0(grp_merge_fu_68_a_1_ce0),.a_1_we0(grp_merge_fu_68_a_1_we0),.a_1_d0(grp_merge_fu_68_a_1_d0),.a_1_q0(a_1_q0),.a_2_address0(grp_merge_fu_68_a_2_address0),.a_2_ce0(grp_merge_fu_68_a_2_ce0),.a_2_we0(grp_merge_fu_68_a_2_we0),.a_2_d0(grp_merge_fu_68_a_2_d0),.a_2_q0(a_2_q0),.a_3_address0(grp_merge_fu_68_a_3_address0),.a_3_ce0(grp_merge_fu_68_a_3_ce0),.a_3_we0(grp_merge_fu_68_a_3_we0),.a_3_d0(grp_merge_fu_68_a_3_d0),.a_3_q0(a_3_q0),.a_4_address0(grp_merge_fu_68_a_4_address0),.a_4_ce0(grp_merge_fu_68_a_4_ce0),.a_4_we0(grp_merge_fu_68_a_4_we0),.a_4_d0(grp_merge_fu_68_a_4_d0),.a_4_q0(a_4_q0),.a_5_address0(grp_merge_fu_68_a_5_address0),.a_5_ce0(grp_merge_fu_68_a_5_ce0),.a_5_we0(grp_merge_fu_68_a_5_we0),.a_5_d0(grp_merge_fu_68_a_5_d0),.a_5_q0(a_5_q0),.a_6_address0(grp_merge_fu_68_a_6_address0),.a_6_ce0(grp_merge_fu_68_a_6_ce0),.a_6_we0(grp_merge_fu_68_a_6_we0),.a_6_d0(grp_merge_fu_68_a_6_d0),.a_6_q0(a_6_q0),.a_7_address0(grp_merge_fu_68_a_7_address0),.a_7_ce0(grp_merge_fu_68_a_7_ce0),.a_7_we0(grp_merge_fu_68_a_7_we0),.a_7_d0(grp_merge_fu_68_a_7_d0),.a_7_q0(a_7_q0),.start_r(grp_merge_fu_68_start_r),.m(grp_merge_fu_68_m),.stop(grp_merge_fu_68_stop));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_merge_fu_68_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4))) begin
            grp_merge_fu_68_ap_start_reg <= 1'b1;
        end else if ((grp_merge_fu_68_ap_ready == 1'b1)) begin
            grp_merge_fu_68_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        from_fu_52 <= 32'd0;
    end else if (((1'b0 == ap_block_state9_on_subcall_done) & (1'b1 == ap_CS_fsm_state9))) begin
        from_fu_52 <= i_fu_201_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln41_2_reg_272 <= add_ln41_2_fu_171_p2;
        from_2_reg_263 <= from_2_fu_151_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln41_reg_237 <= add_ln41_fu_116_p2;
        add_ln42_reg_243 <= add_ln42_fu_121_p2;
        icmp_ln39_reg_233 <= icmp_ln39_fu_110_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        icmp_ln43_1_reg_288 <= icmp_ln43_1_fu_195_p2;
        mid_1_reg_278 <= mid_1_fu_176_p2;
        to_1_reg_283 <= to_1_fu_181_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        icmp_ln43_reg_259 <= icmp_ln43_fu_145_p2;
        mid_reg_249 <= mid_fu_126_p2;
        to_reg_254 <= to_fu_131_p2;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        a_0_ce0 = grp_merge_fu_68_a_0_ce0;
    end else begin
        a_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        a_0_we0 = grp_merge_fu_68_a_0_we0;
    end else begin
        a_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        a_1_ce0 = grp_merge_fu_68_a_1_ce0;
    end else begin
        a_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        a_1_we0 = grp_merge_fu_68_a_1_we0;
    end else begin
        a_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        a_2_ce0 = grp_merge_fu_68_a_2_ce0;
    end else begin
        a_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        a_2_we0 = grp_merge_fu_68_a_2_we0;
    end else begin
        a_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        a_3_ce0 = grp_merge_fu_68_a_3_ce0;
    end else begin
        a_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        a_3_we0 = grp_merge_fu_68_a_3_we0;
    end else begin
        a_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        a_4_ce0 = grp_merge_fu_68_a_4_ce0;
    end else begin
        a_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        a_4_we0 = grp_merge_fu_68_a_4_we0;
    end else begin
        a_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        a_5_ce0 = grp_merge_fu_68_a_5_ce0;
    end else begin
        a_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        a_5_we0 = grp_merge_fu_68_a_5_we0;
    end else begin
        a_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        a_6_ce0 = grp_merge_fu_68_a_6_ce0;
    end else begin
        a_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        a_6_we0 = grp_merge_fu_68_a_6_we0;
    end else begin
        a_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        a_7_ce0 = grp_merge_fu_68_a_7_ce0;
    end else begin
        a_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        a_7_we0 = grp_merge_fu_68_a_7_we0;
    end else begin
        a_7_we0 = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
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
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state9_on_subcall_done)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5) & ((icmp_ln39_1_fu_165_p2 == 1'd0) | (icmp_ln39_reg_233 == 1'd0))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5) & ((icmp_ln39_1_fu_165_p2 == 1'd0) | (icmp_ln39_reg_233 == 1'd0)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)))) begin
        grp_merge_fu_68_m = mid_1_reg_278;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        grp_merge_fu_68_m = mid_reg_249;
    end else begin
        grp_merge_fu_68_m = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)))) begin
        grp_merge_fu_68_start_r = from_2_reg_263;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        grp_merge_fu_68_start_r = from_fu_52;
    end else begin
        grp_merge_fu_68_start_r = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd1))) begin
        grp_merge_fu_68_stop = to_1_reg_283;
    end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1))) begin
        grp_merge_fu_68_stop = to_reg_254;
    end else if ((((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_reg_288 == 1'd0)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1)))) begin
        grp_merge_fu_68_stop = 32'd2048;
    end else begin
        grp_merge_fu_68_stop = 'bx;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln39_fu_110_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln43_fu_145_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5) & ((icmp_ln39_1_fu_165_p2 == 1'd0) | (icmp_ln39_reg_233 == 1'd0)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln39_1_fu_165_p2 == 1'd1) & (1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln39_reg_233 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln43_1_fu_195_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b0 == ap_block_state9_on_subcall_done) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_0_address0 = grp_merge_fu_68_a_0_address0;
assign a_0_d0 = grp_merge_fu_68_a_0_d0;
assign a_1_address0 = grp_merge_fu_68_a_1_address0;
assign a_1_d0 = grp_merge_fu_68_a_1_d0;
assign a_2_address0 = grp_merge_fu_68_a_2_address0;
assign a_2_d0 = grp_merge_fu_68_a_2_d0;
assign a_3_address0 = grp_merge_fu_68_a_3_address0;
assign a_3_d0 = grp_merge_fu_68_a_3_d0;
assign a_4_address0 = grp_merge_fu_68_a_4_address0;
assign a_4_d0 = grp_merge_fu_68_a_4_d0;
assign a_5_address0 = grp_merge_fu_68_a_5_address0;
assign a_5_d0 = grp_merge_fu_68_a_5_d0;
assign a_6_address0 = grp_merge_fu_68_a_6_address0;
assign a_6_d0 = grp_merge_fu_68_a_6_d0;
assign a_7_address0 = grp_merge_fu_68_a_7_address0;
assign a_7_d0 = grp_merge_fu_68_a_7_d0;
assign add_ln41_2_fu_171_p2 = (from_2_fu_151_p2 + m);
assign add_ln41_fu_116_p2 = (from_fu_52 + m);
assign add_ln42_fu_121_p2 = ($signed(m) + $signed(32'd4294967295));
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
always @ (*) begin
    ap_block_state5_on_subcall_done = (((ap_predicate_op40_call_state5 == 1'b1) & (grp_merge_fu_68_ap_done == 1'b0)) | ((ap_predicate_op38_call_state5 == 1'b1) & (grp_merge_fu_68_ap_done == 1'b0)));
end
always @ (*) begin
    ap_block_state9_on_subcall_done = (((grp_merge_fu_68_ap_done == 1'b0) & (icmp_ln43_1_reg_288 == 1'd1)) | ((grp_merge_fu_68_ap_done == 1'b0) & (icmp_ln43_1_reg_288 == 1'd0)));
end
always @ (*) begin
    ap_predicate_op38_call_state5 = ((icmp_ln43_reg_259 == 1'd0) & (icmp_ln39_reg_233 == 1'd1));
end
always @ (*) begin
    ap_predicate_op40_call_state5 = ((icmp_ln43_reg_259 == 1'd1) & (icmp_ln39_reg_233 == 1'd1));
end
assign from_2_fu_151_p2 = (from_fu_52 + empty);
assign grp_merge_fu_68_ap_start = grp_merge_fu_68_ap_start_reg;
assign i_fu_201_p2 = (from_2_reg_263 + empty);
assign icmp_ln39_1_fu_165_p2 = (($signed(tmp_3_fu_155_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_fu_110_p2 = (($signed(tmp_1_fu_100_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_195_p2 = (($signed(tmp_4_fu_185_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_145_p2 = (($signed(tmp_2_fu_135_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign mid_1_fu_176_p2 = ($signed(add_ln41_2_reg_272) + $signed(32'd4294967295));
assign mid_fu_126_p2 = ($signed(add_ln41_reg_237) + $signed(32'd4294967295));
assign tmp_1_fu_100_p4 = {{from_fu_52[31:11]}};
assign tmp_2_fu_135_p4 = {{to_fu_131_p2[31:11]}};
assign tmp_3_fu_155_p4 = {{from_2_fu_151_p2[31:11]}};
assign tmp_4_fu_185_p4 = {{to_1_fu_181_p2[31:11]}};
assign to_1_fu_181_p2 = (add_ln41_2_reg_272 + add_ln42_reg_243);
assign to_fu_131_p2 = (add_ln41_reg_237 + add_ln42_reg_243);
endmodule 