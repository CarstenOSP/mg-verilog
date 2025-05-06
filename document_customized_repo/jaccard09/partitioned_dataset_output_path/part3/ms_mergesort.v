
module ms_mergesort (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_0_q0,a_0_address1,a_0_ce1,a_0_q1,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,a_1_q0,a_1_address1,a_1_ce1,a_1_q1,a_2_address0,a_2_ce0,a_2_we0,a_2_d0,a_2_q0,a_2_address1,a_2_ce1,a_2_q1,a_3_address0,a_3_ce0,a_3_we0,a_3_d0,a_3_q0,a_3_address1,a_3_ce1,a_3_q1,a_4_address0,a_4_ce0,a_4_we0,a_4_d0,a_4_q0,a_4_address1,a_4_ce1,a_4_q1,a_5_address0,a_5_ce0,a_5_we0,a_5_d0,a_5_q0,a_5_address1,a_5_ce1,a_5_q1,a_6_address0,a_6_ce0,a_6_we0,a_6_d0,a_6_q0,a_6_address1,a_6_ce1,a_6_q1,a_7_address0,a_7_ce0,a_7_we0,a_7_d0,a_7_q0,a_7_address1,a_7_ce1,a_7_q1);  
parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
input  [31:0] a_0_q0;
output  [7:0] a_0_address1;
output   a_0_ce1;
input  [31:0] a_0_q1;
output  [7:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
input  [31:0] a_1_q0;
output  [7:0] a_1_address1;
output   a_1_ce1;
input  [31:0] a_1_q1;
output  [7:0] a_2_address0;
output   a_2_ce0;
output   a_2_we0;
output  [31:0] a_2_d0;
input  [31:0] a_2_q0;
output  [7:0] a_2_address1;
output   a_2_ce1;
input  [31:0] a_2_q1;
output  [7:0] a_3_address0;
output   a_3_ce0;
output   a_3_we0;
output  [31:0] a_3_d0;
input  [31:0] a_3_q0;
output  [7:0] a_3_address1;
output   a_3_ce1;
input  [31:0] a_3_q1;
output  [7:0] a_4_address0;
output   a_4_ce0;
output   a_4_we0;
output  [31:0] a_4_d0;
input  [31:0] a_4_q0;
output  [7:0] a_4_address1;
output   a_4_ce1;
input  [31:0] a_4_q1;
output  [7:0] a_5_address0;
output   a_5_ce0;
output   a_5_we0;
output  [31:0] a_5_d0;
input  [31:0] a_5_q0;
output  [7:0] a_5_address1;
output   a_5_ce1;
input  [31:0] a_5_q1;
output  [7:0] a_6_address0;
output   a_6_ce0;
output   a_6_we0;
output  [31:0] a_6_d0;
input  [31:0] a_6_q0;
output  [7:0] a_6_address1;
output   a_6_ce1;
input  [31:0] a_6_q1;
output  [7:0] a_7_address0;
output   a_7_ce0;
output   a_7_we0;
output  [31:0] a_7_d0;
input  [31:0] a_7_q0;
output  [7:0] a_7_address1;
output   a_7_ce1;
input  [31:0] a_7_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_0_ce0;
reg a_0_we0;
reg a_0_ce1;
reg a_1_ce0;
reg a_1_we0;
reg a_1_ce1;
reg a_2_ce0;
reg a_2_we0;
reg a_2_ce1;
reg a_3_ce0;
reg a_3_we0;
reg a_3_ce1;
reg a_4_ce0;
reg a_4_we0;
reg a_4_ce1;
reg a_5_ce0;
reg a_5_we0;
reg a_5_ce1;
reg a_6_ce0;
reg a_6_we0;
reg a_6_ce1;
reg a_7_ce0;
reg a_7_we0;
reg a_7_ce1;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] m_1_reg_191;
wire    ap_CS_fsm_state2;
wire   [31:0] m_2_fu_121_p2;
reg   [31:0] m_2_reg_199;
wire   [31:0] mid_fu_148_p2;
reg   [31:0] mid_reg_208;
wire    ap_CS_fsm_state3;
wire   [31:0] to_fu_158_p2;
reg   [31:0] to_reg_214;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln43_fu_173_p2;
reg   [0:0] icmp_ln43_reg_219;
wire   [31:0] i_fu_179_p2;
wire    ap_CS_fsm_state5;
wire    grp_merge_fu_72_ap_start;
wire    grp_merge_fu_72_ap_done;
wire    grp_merge_fu_72_ap_idle;
wire    grp_merge_fu_72_ap_ready;
wire   [7:0] grp_merge_fu_72_a_0_address0;
wire    grp_merge_fu_72_a_0_ce0;
wire    grp_merge_fu_72_a_0_we0;
wire   [31:0] grp_merge_fu_72_a_0_d0;
wire   [7:0] grp_merge_fu_72_a_0_address1;
wire    grp_merge_fu_72_a_0_ce1;
wire   [7:0] grp_merge_fu_72_a_1_address0;
wire    grp_merge_fu_72_a_1_ce0;
wire    grp_merge_fu_72_a_1_we0;
wire   [31:0] grp_merge_fu_72_a_1_d0;
wire   [7:0] grp_merge_fu_72_a_1_address1;
wire    grp_merge_fu_72_a_1_ce1;
wire   [7:0] grp_merge_fu_72_a_2_address0;
wire    grp_merge_fu_72_a_2_ce0;
wire    grp_merge_fu_72_a_2_we0;
wire   [31:0] grp_merge_fu_72_a_2_d0;
wire   [7:0] grp_merge_fu_72_a_2_address1;
wire    grp_merge_fu_72_a_2_ce1;
wire   [7:0] grp_merge_fu_72_a_3_address0;
wire    grp_merge_fu_72_a_3_ce0;
wire    grp_merge_fu_72_a_3_we0;
wire   [31:0] grp_merge_fu_72_a_3_d0;
wire   [7:0] grp_merge_fu_72_a_3_address1;
wire    grp_merge_fu_72_a_3_ce1;
wire   [7:0] grp_merge_fu_72_a_4_address0;
wire    grp_merge_fu_72_a_4_ce0;
wire    grp_merge_fu_72_a_4_we0;
wire   [31:0] grp_merge_fu_72_a_4_d0;
wire   [7:0] grp_merge_fu_72_a_4_address1;
wire    grp_merge_fu_72_a_4_ce1;
wire   [7:0] grp_merge_fu_72_a_5_address0;
wire    grp_merge_fu_72_a_5_ce0;
wire    grp_merge_fu_72_a_5_we0;
wire   [31:0] grp_merge_fu_72_a_5_d0;
wire   [7:0] grp_merge_fu_72_a_5_address1;
wire    grp_merge_fu_72_a_5_ce1;
wire   [7:0] grp_merge_fu_72_a_6_address0;
wire    grp_merge_fu_72_a_6_ce0;
wire    grp_merge_fu_72_a_6_we0;
wire   [31:0] grp_merge_fu_72_a_6_d0;
wire   [7:0] grp_merge_fu_72_a_6_address1;
wire    grp_merge_fu_72_a_6_ce1;
wire   [7:0] grp_merge_fu_72_a_7_address0;
wire    grp_merge_fu_72_a_7_ce0;
wire    grp_merge_fu_72_a_7_we0;
wire   [31:0] grp_merge_fu_72_a_7_d0;
wire   [7:0] grp_merge_fu_72_a_7_address1;
wire    grp_merge_fu_72_a_7_ce1;
reg   [31:0] grp_merge_fu_72_stop;
reg   [31:0] i_2_reg_60;
wire   [0:0] icmp_ln38_fu_115_p2;
reg    ap_block_state5_on_subcall_done;
reg    grp_merge_fu_72_ap_start_reg;
reg   [31:0] m_fu_56;
wire   [0:0] icmp_ln39_fu_137_p2;
wire   [20:0] tmp_fu_105_p4;
wire   [20:0] tmp_1_fu_127_p4;
wire   [31:0] add_ln41_fu_143_p2;
wire   [20:0] tmp_2_fu_163_p4;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_merge_fu_72_ap_start_reg = 1'b0;
#0 m_fu_56 = 32'd0;
end
ms_mergesort_merge grp_merge_fu_72(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_merge_fu_72_ap_start),.ap_done(grp_merge_fu_72_ap_done),.ap_idle(grp_merge_fu_72_ap_idle),.ap_ready(grp_merge_fu_72_ap_ready),.a_0_address0(grp_merge_fu_72_a_0_address0),.a_0_ce0(grp_merge_fu_72_a_0_ce0),.a_0_we0(grp_merge_fu_72_a_0_we0),.a_0_d0(grp_merge_fu_72_a_0_d0),.a_0_q0(a_0_q0),.a_0_address1(grp_merge_fu_72_a_0_address1),.a_0_ce1(grp_merge_fu_72_a_0_ce1),.a_0_q1(a_0_q1),.a_1_address0(grp_merge_fu_72_a_1_address0),.a_1_ce0(grp_merge_fu_72_a_1_ce0),.a_1_we0(grp_merge_fu_72_a_1_we0),.a_1_d0(grp_merge_fu_72_a_1_d0),.a_1_q0(a_1_q0),.a_1_address1(grp_merge_fu_72_a_1_address1),.a_1_ce1(grp_merge_fu_72_a_1_ce1),.a_1_q1(a_1_q1),.a_2_address0(grp_merge_fu_72_a_2_address0),.a_2_ce0(grp_merge_fu_72_a_2_ce0),.a_2_we0(grp_merge_fu_72_a_2_we0),.a_2_d0(grp_merge_fu_72_a_2_d0),.a_2_q0(a_2_q0),.a_2_address1(grp_merge_fu_72_a_2_address1),.a_2_ce1(grp_merge_fu_72_a_2_ce1),.a_2_q1(a_2_q1),.a_3_address0(grp_merge_fu_72_a_3_address0),.a_3_ce0(grp_merge_fu_72_a_3_ce0),.a_3_we0(grp_merge_fu_72_a_3_we0),.a_3_d0(grp_merge_fu_72_a_3_d0),.a_3_q0(a_3_q0),.a_3_address1(grp_merge_fu_72_a_3_address1),.a_3_ce1(grp_merge_fu_72_a_3_ce1),.a_3_q1(a_3_q1),.a_4_address0(grp_merge_fu_72_a_4_address0),.a_4_ce0(grp_merge_fu_72_a_4_ce0),.a_4_we0(grp_merge_fu_72_a_4_we0),.a_4_d0(grp_merge_fu_72_a_4_d0),.a_4_q0(a_4_q0),.a_4_address1(grp_merge_fu_72_a_4_address1),.a_4_ce1(grp_merge_fu_72_a_4_ce1),.a_4_q1(a_4_q1),.a_5_address0(grp_merge_fu_72_a_5_address0),.a_5_ce0(grp_merge_fu_72_a_5_ce0),.a_5_we0(grp_merge_fu_72_a_5_we0),.a_5_d0(grp_merge_fu_72_a_5_d0),.a_5_q0(a_5_q0),.a_5_address1(grp_merge_fu_72_a_5_address1),.a_5_ce1(grp_merge_fu_72_a_5_ce1),.a_5_q1(a_5_q1),.a_6_address0(grp_merge_fu_72_a_6_address0),.a_6_ce0(grp_merge_fu_72_a_6_ce0),.a_6_we0(grp_merge_fu_72_a_6_we0),.a_6_d0(grp_merge_fu_72_a_6_d0),.a_6_q0(a_6_q0),.a_6_address1(grp_merge_fu_72_a_6_address1),.a_6_ce1(grp_merge_fu_72_a_6_ce1),.a_6_q1(a_6_q1),.a_7_address0(grp_merge_fu_72_a_7_address0),.a_7_ce0(grp_merge_fu_72_a_7_ce0),.a_7_we0(grp_merge_fu_72_a_7_we0),.a_7_d0(grp_merge_fu_72_a_7_d0),.a_7_q0(a_7_q0),.a_7_address1(grp_merge_fu_72_a_7_address1),.a_7_ce1(grp_merge_fu_72_a_7_ce1),.a_7_q1(a_7_q1),.start_r(i_2_reg_60),.m(mid_reg_208),.stop(grp_merge_fu_72_stop));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_merge_fu_72_ap_start_reg <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_state4) & (icmp_ln43_fu_173_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state4) & (icmp_ln43_fu_173_p2 == 1'd0)))) begin
            grp_merge_fu_72_ap_start_reg <= 1'b1;
        end else if ((grp_merge_fu_72_ap_ready == 1'b1)) begin
            grp_merge_fu_72_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
        i_2_reg_60 <= i_fu_179_p2;
    end else if (((icmp_ln38_fu_115_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_2_reg_60 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        m_fu_56 <= 32'd1;
    end else if (((icmp_ln39_fu_137_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        m_fu_56 <= m_2_reg_199;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln43_reg_219 <= icmp_ln43_fu_173_p2;
        to_reg_214 <= to_fu_158_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        m_1_reg_191 <= m_fu_56;
        m_2_reg_199[31 : 1] <= m_2_fu_121_p2[31 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mid_reg_208 <= mid_fu_148_p2;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_0_ce0 = grp_merge_fu_72_a_0_ce0;
    end else begin
        a_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_0_ce1 = grp_merge_fu_72_a_0_ce1;
    end else begin
        a_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_0_we0 = grp_merge_fu_72_a_0_we0;
    end else begin
        a_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_1_ce0 = grp_merge_fu_72_a_1_ce0;
    end else begin
        a_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_1_ce1 = grp_merge_fu_72_a_1_ce1;
    end else begin
        a_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_1_we0 = grp_merge_fu_72_a_1_we0;
    end else begin
        a_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_2_ce0 = grp_merge_fu_72_a_2_ce0;
    end else begin
        a_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_2_ce1 = grp_merge_fu_72_a_2_ce1;
    end else begin
        a_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_2_we0 = grp_merge_fu_72_a_2_we0;
    end else begin
        a_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_3_ce0 = grp_merge_fu_72_a_3_ce0;
    end else begin
        a_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_3_ce1 = grp_merge_fu_72_a_3_ce1;
    end else begin
        a_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_3_we0 = grp_merge_fu_72_a_3_we0;
    end else begin
        a_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_4_ce0 = grp_merge_fu_72_a_4_ce0;
    end else begin
        a_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_4_ce1 = grp_merge_fu_72_a_4_ce1;
    end else begin
        a_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_4_we0 = grp_merge_fu_72_a_4_we0;
    end else begin
        a_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_5_ce0 = grp_merge_fu_72_a_5_ce0;
    end else begin
        a_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_5_ce1 = grp_merge_fu_72_a_5_ce1;
    end else begin
        a_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_5_we0 = grp_merge_fu_72_a_5_we0;
    end else begin
        a_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_6_ce0 = grp_merge_fu_72_a_6_ce0;
    end else begin
        a_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_6_ce1 = grp_merge_fu_72_a_6_ce1;
    end else begin
        a_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_6_we0 = grp_merge_fu_72_a_6_we0;
    end else begin
        a_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_7_ce0 = grp_merge_fu_72_a_7_ce0;
    end else begin
        a_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_7_ce1 = grp_merge_fu_72_a_7_ce1;
    end else begin
        a_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd1)) | ((1'b1 == ap_CS_fsm_state5) & (icmp_ln43_reg_219 == 1'd0)))) begin
        a_7_we0 = grp_merge_fu_72_a_7_we0;
    end else begin
        a_7_we0 = 1'b0;
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
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state5_on_subcall_done)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_115_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln38_fu_115_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((icmp_ln43_reg_219 == 1'd1)) begin
            grp_merge_fu_72_stop = to_reg_214;
        end else if ((icmp_ln43_reg_219 == 1'd0)) begin
            grp_merge_fu_72_stop = 32'd2048;
        end else begin
            grp_merge_fu_72_stop = 'bx;
        end
    end else begin
        grp_merge_fu_72_stop = 'bx;
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
            if (((icmp_ln38_fu_115_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln39_fu_137_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_0_address0 = grp_merge_fu_72_a_0_address0;
assign a_0_address1 = grp_merge_fu_72_a_0_address1;
assign a_0_d0 = grp_merge_fu_72_a_0_d0;
assign a_1_address0 = grp_merge_fu_72_a_1_address0;
assign a_1_address1 = grp_merge_fu_72_a_1_address1;
assign a_1_d0 = grp_merge_fu_72_a_1_d0;
assign a_2_address0 = grp_merge_fu_72_a_2_address0;
assign a_2_address1 = grp_merge_fu_72_a_2_address1;
assign a_2_d0 = grp_merge_fu_72_a_2_d0;
assign a_3_address0 = grp_merge_fu_72_a_3_address0;
assign a_3_address1 = grp_merge_fu_72_a_3_address1;
assign a_3_d0 = grp_merge_fu_72_a_3_d0;
assign a_4_address0 = grp_merge_fu_72_a_4_address0;
assign a_4_address1 = grp_merge_fu_72_a_4_address1;
assign a_4_d0 = grp_merge_fu_72_a_4_d0;
assign a_5_address0 = grp_merge_fu_72_a_5_address0;
assign a_5_address1 = grp_merge_fu_72_a_5_address1;
assign a_5_d0 = grp_merge_fu_72_a_5_d0;
assign a_6_address0 = grp_merge_fu_72_a_6_address0;
assign a_6_address1 = grp_merge_fu_72_a_6_address1;
assign a_6_d0 = grp_merge_fu_72_a_6_d0;
assign a_7_address0 = grp_merge_fu_72_a_7_address0;
assign a_7_address1 = grp_merge_fu_72_a_7_address1;
assign a_7_d0 = grp_merge_fu_72_a_7_d0;
assign add_ln41_fu_143_p2 = (i_2_reg_60 + m_fu_56);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
always @ (*) begin
    ap_block_state5_on_subcall_done = (((grp_merge_fu_72_ap_done == 1'b0) & (icmp_ln43_reg_219 == 1'd1)) | ((grp_merge_fu_72_ap_done == 1'b0) & (icmp_ln43_reg_219 == 1'd0)));
end
assign grp_merge_fu_72_ap_start = grp_merge_fu_72_ap_start_reg;
assign i_fu_179_p2 = (m_2_reg_199 + i_2_reg_60);
assign icmp_ln38_fu_115_p2 = (($signed(tmp_fu_105_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_fu_137_p2 = (($signed(tmp_1_fu_127_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_173_p2 = (($signed(tmp_2_fu_163_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign m_2_fu_121_p2 = m_fu_56 << 32'd1;
assign mid_fu_148_p2 = ($signed(add_ln41_fu_143_p2) + $signed(32'd4294967295));
assign tmp_1_fu_127_p4 = {{i_2_reg_60[31:11]}};
assign tmp_2_fu_163_p4 = {{to_fu_158_p2[31:11]}};
assign tmp_fu_105_p4 = {{m_fu_56[31:11]}};
assign to_fu_158_p2 = (mid_reg_208 + m_1_reg_191);
always @ (posedge ap_clk) begin
    m_2_reg_199[0] <= 1'b0;
end
endmodule 
