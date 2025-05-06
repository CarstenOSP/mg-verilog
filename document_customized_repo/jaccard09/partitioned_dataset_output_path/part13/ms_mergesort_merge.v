
module ms_mergesort_merge (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_0_q0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,a_1_q0,a_2_address0,a_2_ce0,a_2_we0,a_2_d0,a_2_q0,a_3_address0,a_3_ce0,a_3_we0,a_3_d0,a_3_q0,a_4_address0,a_4_ce0,a_4_we0,a_4_d0,a_4_q0,a_5_address0,a_5_ce0,a_5_we0,a_5_d0,a_5_q0,a_6_address0,a_6_ce0,a_6_we0,a_6_d0,a_6_q0,a_7_address0,a_7_ce0,a_7_we0,a_7_d0,a_7_q0,start_r,m,stop);  
parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
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
input  [31:0] start_r;
input  [31:0] m;
input  [31:0] stop;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] a_0_address0;
reg a_0_ce0;
reg a_0_we0;
reg[7:0] a_1_address0;
reg a_1_ce0;
reg a_1_we0;
reg[7:0] a_2_address0;
reg a_2_ce0;
reg a_2_we0;
reg[7:0] a_3_address0;
reg a_3_ce0;
reg a_3_we0;
reg[7:0] a_4_address0;
reg a_4_ce0;
reg a_4_we0;
reg[7:0] a_5_address0;
reg a_5_ce0;
reg a_5_we0;
reg[7:0] a_6_address0;
reg a_6_ce0;
reg a_6_we0;
reg[7:0] a_7_address0;
reg a_7_ce0;
reg a_7_we0;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state3;
wire   [31:0] j_fu_146_p2;
reg   [31:0] j_reg_183;
wire   [10:0] add9_fu_156_p2;
reg   [10:0] add9_reg_188;
reg   [10:0] temp_address0;
reg    temp_ce0;
reg    temp_we0;
reg   [31:0] temp_d0;
wire   [31:0] temp_q0;
reg    temp_ce1;
wire   [31:0] temp_q1;
wire    grp_merge_Pipeline_merge_label1_fu_66_ap_start;
wire    grp_merge_Pipeline_merge_label1_fu_66_ap_done;
wire    grp_merge_Pipeline_merge_label1_fu_66_ap_idle;
wire    grp_merge_Pipeline_merge_label1_fu_66_ap_ready;
wire   [7:0] grp_merge_Pipeline_merge_label1_fu_66_a_0_address0;
wire    grp_merge_Pipeline_merge_label1_fu_66_a_0_ce0;
wire   [7:0] grp_merge_Pipeline_merge_label1_fu_66_a_1_address0;
wire    grp_merge_Pipeline_merge_label1_fu_66_a_1_ce0;
wire   [7:0] grp_merge_Pipeline_merge_label1_fu_66_a_2_address0;
wire    grp_merge_Pipeline_merge_label1_fu_66_a_2_ce0;
wire   [7:0] grp_merge_Pipeline_merge_label1_fu_66_a_3_address0;
wire    grp_merge_Pipeline_merge_label1_fu_66_a_3_ce0;
wire   [7:0] grp_merge_Pipeline_merge_label1_fu_66_a_4_address0;
wire    grp_merge_Pipeline_merge_label1_fu_66_a_4_ce0;
wire   [7:0] grp_merge_Pipeline_merge_label1_fu_66_a_5_address0;
wire    grp_merge_Pipeline_merge_label1_fu_66_a_5_ce0;
wire   [7:0] grp_merge_Pipeline_merge_label1_fu_66_a_6_address0;
wire    grp_merge_Pipeline_merge_label1_fu_66_a_6_ce0;
wire   [7:0] grp_merge_Pipeline_merge_label1_fu_66_a_7_address0;
wire    grp_merge_Pipeline_merge_label1_fu_66_a_7_ce0;
wire   [10:0] grp_merge_Pipeline_merge_label1_fu_66_temp_address0;
wire    grp_merge_Pipeline_merge_label1_fu_66_temp_ce0;
wire    grp_merge_Pipeline_merge_label1_fu_66_temp_we0;
wire   [31:0] grp_merge_Pipeline_merge_label1_fu_66_temp_d0;
wire    grp_merge_Pipeline_merge_label2_fu_92_ap_start;
wire    grp_merge_Pipeline_merge_label2_fu_92_ap_done;
wire    grp_merge_Pipeline_merge_label2_fu_92_ap_idle;
wire    grp_merge_Pipeline_merge_label2_fu_92_ap_ready;
wire   [7:0] grp_merge_Pipeline_merge_label2_fu_92_a_0_address0;
wire    grp_merge_Pipeline_merge_label2_fu_92_a_0_ce0;
wire   [7:0] grp_merge_Pipeline_merge_label2_fu_92_a_1_address0;
wire    grp_merge_Pipeline_merge_label2_fu_92_a_1_ce0;
wire   [7:0] grp_merge_Pipeline_merge_label2_fu_92_a_2_address0;
wire    grp_merge_Pipeline_merge_label2_fu_92_a_2_ce0;
wire   [7:0] grp_merge_Pipeline_merge_label2_fu_92_a_3_address0;
wire    grp_merge_Pipeline_merge_label2_fu_92_a_3_ce0;
wire   [7:0] grp_merge_Pipeline_merge_label2_fu_92_a_4_address0;
wire    grp_merge_Pipeline_merge_label2_fu_92_a_4_ce0;
wire   [7:0] grp_merge_Pipeline_merge_label2_fu_92_a_5_address0;
wire    grp_merge_Pipeline_merge_label2_fu_92_a_5_ce0;
wire   [7:0] grp_merge_Pipeline_merge_label2_fu_92_a_6_address0;
wire    grp_merge_Pipeline_merge_label2_fu_92_a_6_ce0;
wire   [7:0] grp_merge_Pipeline_merge_label2_fu_92_a_7_address0;
wire    grp_merge_Pipeline_merge_label2_fu_92_a_7_ce0;
wire   [10:0] grp_merge_Pipeline_merge_label2_fu_92_temp_address0;
wire    grp_merge_Pipeline_merge_label2_fu_92_temp_ce0;
wire    grp_merge_Pipeline_merge_label2_fu_92_temp_we0;
wire   [31:0] grp_merge_Pipeline_merge_label2_fu_92_temp_d0;
wire    grp_merge_Pipeline_merge_label3_fu_117_ap_start;
wire    grp_merge_Pipeline_merge_label3_fu_117_ap_done;
wire    grp_merge_Pipeline_merge_label3_fu_117_ap_idle;
wire    grp_merge_Pipeline_merge_label3_fu_117_ap_ready;
wire   [7:0] grp_merge_Pipeline_merge_label3_fu_117_a_0_address0;
wire    grp_merge_Pipeline_merge_label3_fu_117_a_0_ce0;
wire    grp_merge_Pipeline_merge_label3_fu_117_a_0_we0;
wire   [31:0] grp_merge_Pipeline_merge_label3_fu_117_a_0_d0;
wire   [7:0] grp_merge_Pipeline_merge_label3_fu_117_a_7_address0;
wire    grp_merge_Pipeline_merge_label3_fu_117_a_7_ce0;
wire    grp_merge_Pipeline_merge_label3_fu_117_a_7_we0;
wire   [31:0] grp_merge_Pipeline_merge_label3_fu_117_a_7_d0;
wire   [7:0] grp_merge_Pipeline_merge_label3_fu_117_a_6_address0;
wire    grp_merge_Pipeline_merge_label3_fu_117_a_6_ce0;
wire    grp_merge_Pipeline_merge_label3_fu_117_a_6_we0;
wire   [31:0] grp_merge_Pipeline_merge_label3_fu_117_a_6_d0;
wire   [7:0] grp_merge_Pipeline_merge_label3_fu_117_a_5_address0;
wire    grp_merge_Pipeline_merge_label3_fu_117_a_5_ce0;
wire    grp_merge_Pipeline_merge_label3_fu_117_a_5_we0;
wire   [31:0] grp_merge_Pipeline_merge_label3_fu_117_a_5_d0;
wire   [7:0] grp_merge_Pipeline_merge_label3_fu_117_a_4_address0;
wire    grp_merge_Pipeline_merge_label3_fu_117_a_4_ce0;
wire    grp_merge_Pipeline_merge_label3_fu_117_a_4_we0;
wire   [31:0] grp_merge_Pipeline_merge_label3_fu_117_a_4_d0;
wire   [7:0] grp_merge_Pipeline_merge_label3_fu_117_a_3_address0;
wire    grp_merge_Pipeline_merge_label3_fu_117_a_3_ce0;
wire    grp_merge_Pipeline_merge_label3_fu_117_a_3_we0;
wire   [31:0] grp_merge_Pipeline_merge_label3_fu_117_a_3_d0;
wire   [7:0] grp_merge_Pipeline_merge_label3_fu_117_a_2_address0;
wire    grp_merge_Pipeline_merge_label3_fu_117_a_2_ce0;
wire    grp_merge_Pipeline_merge_label3_fu_117_a_2_we0;
wire   [31:0] grp_merge_Pipeline_merge_label3_fu_117_a_2_d0;
wire   [7:0] grp_merge_Pipeline_merge_label3_fu_117_a_1_address0;
wire    grp_merge_Pipeline_merge_label3_fu_117_a_1_ce0;
wire    grp_merge_Pipeline_merge_label3_fu_117_a_1_we0;
wire   [31:0] grp_merge_Pipeline_merge_label3_fu_117_a_1_d0;
wire   [10:0] grp_merge_Pipeline_merge_label3_fu_117_temp_address0;
wire    grp_merge_Pipeline_merge_label3_fu_117_temp_ce0;
wire   [10:0] grp_merge_Pipeline_merge_label3_fu_117_temp_address1;
wire    grp_merge_Pipeline_merge_label3_fu_117_temp_ce1;
reg    grp_merge_Pipeline_merge_label1_fu_66_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_merge_Pipeline_merge_label2_fu_92_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_merge_Pipeline_merge_label3_fu_117_ap_start_reg;
reg   [5:0] ap_NS_fsm;
wire    ap_NS_fsm_state5;
wire    ap_CS_fsm_state6;
wire   [10:0] trunc_ln5_fu_152_p1;
wire   [10:0] empty_fu_142_p1;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_merge_Pipeline_merge_label1_fu_66_ap_start_reg = 1'b0;
#0 grp_merge_Pipeline_merge_label2_fu_92_ap_start_reg = 1'b0;
#0 grp_merge_Pipeline_merge_label3_fu_117_ap_start_reg = 1'b0;
end
ms_mergesort_merge_temp_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 2048 ),.AddressWidth( 11 ))
temp_U(.clk(ap_clk),.reset(ap_rst),.address0(temp_address0),.ce0(temp_ce0),.we0(temp_we0),.d0(temp_d0),.q0(temp_q0),.address1(grp_merge_Pipeline_merge_label3_fu_117_temp_address1),.ce1(temp_ce1),.q1(temp_q1));
ms_mergesort_merge_Pipeline_merge_label1 grp_merge_Pipeline_merge_label1_fu_66(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_merge_Pipeline_merge_label1_fu_66_ap_start),.ap_done(grp_merge_Pipeline_merge_label1_fu_66_ap_done),.ap_idle(grp_merge_Pipeline_merge_label1_fu_66_ap_idle),.ap_ready(grp_merge_Pipeline_merge_label1_fu_66_ap_ready),.start_r(start_r),.m(m),.a_0_address0(grp_merge_Pipeline_merge_label1_fu_66_a_0_address0),.a_0_ce0(grp_merge_Pipeline_merge_label1_fu_66_a_0_ce0),.a_0_q0(a_0_q0),.a_1_address0(grp_merge_Pipeline_merge_label1_fu_66_a_1_address0),.a_1_ce0(grp_merge_Pipeline_merge_label1_fu_66_a_1_ce0),.a_1_q0(a_1_q0),.a_2_address0(grp_merge_Pipeline_merge_label1_fu_66_a_2_address0),.a_2_ce0(grp_merge_Pipeline_merge_label1_fu_66_a_2_ce0),.a_2_q0(a_2_q0),.a_3_address0(grp_merge_Pipeline_merge_label1_fu_66_a_3_address0),.a_3_ce0(grp_merge_Pipeline_merge_label1_fu_66_a_3_ce0),.a_3_q0(a_3_q0),.a_4_address0(grp_merge_Pipeline_merge_label1_fu_66_a_4_address0),.a_4_ce0(grp_merge_Pipeline_merge_label1_fu_66_a_4_ce0),.a_4_q0(a_4_q0),.a_5_address0(grp_merge_Pipeline_merge_label1_fu_66_a_5_address0),.a_5_ce0(grp_merge_Pipeline_merge_label1_fu_66_a_5_ce0),.a_5_q0(a_5_q0),.a_6_address0(grp_merge_Pipeline_merge_label1_fu_66_a_6_address0),.a_6_ce0(grp_merge_Pipeline_merge_label1_fu_66_a_6_ce0),.a_6_q0(a_6_q0),.a_7_address0(grp_merge_Pipeline_merge_label1_fu_66_a_7_address0),.a_7_ce0(grp_merge_Pipeline_merge_label1_fu_66_a_7_ce0),.a_7_q0(a_7_q0),.temp_address0(grp_merge_Pipeline_merge_label1_fu_66_temp_address0),.temp_ce0(grp_merge_Pipeline_merge_label1_fu_66_temp_ce0),.temp_we0(grp_merge_Pipeline_merge_label1_fu_66_temp_we0),.temp_d0(grp_merge_Pipeline_merge_label1_fu_66_temp_d0));
ms_mergesort_merge_Pipeline_merge_label2 grp_merge_Pipeline_merge_label2_fu_92(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_merge_Pipeline_merge_label2_fu_92_ap_start),.ap_done(grp_merge_Pipeline_merge_label2_fu_92_ap_done),.ap_idle(grp_merge_Pipeline_merge_label2_fu_92_ap_idle),.ap_ready(grp_merge_Pipeline_merge_label2_fu_92_ap_ready),.sext_ln11(j_reg_183),.sext_ln11_1(stop),.a_0_address0(grp_merge_Pipeline_merge_label2_fu_92_a_0_address0),.a_0_ce0(grp_merge_Pipeline_merge_label2_fu_92_a_0_ce0),.a_0_q0(a_0_q0),.a_1_address0(grp_merge_Pipeline_merge_label2_fu_92_a_1_address0),.a_1_ce0(grp_merge_Pipeline_merge_label2_fu_92_a_1_ce0),.a_1_q0(a_1_q0),.a_2_address0(grp_merge_Pipeline_merge_label2_fu_92_a_2_address0),.a_2_ce0(grp_merge_Pipeline_merge_label2_fu_92_a_2_ce0),.a_2_q0(a_2_q0),.a_3_address0(grp_merge_Pipeline_merge_label2_fu_92_a_3_address0),.a_3_ce0(grp_merge_Pipeline_merge_label2_fu_92_a_3_ce0),.a_3_q0(a_3_q0),.a_4_address0(grp_merge_Pipeline_merge_label2_fu_92_a_4_address0),.a_4_ce0(grp_merge_Pipeline_merge_label2_fu_92_a_4_ce0),.a_4_q0(a_4_q0),.a_5_address0(grp_merge_Pipeline_merge_label2_fu_92_a_5_address0),.a_5_ce0(grp_merge_Pipeline_merge_label2_fu_92_a_5_ce0),.a_5_q0(a_5_q0),.a_6_address0(grp_merge_Pipeline_merge_label2_fu_92_a_6_address0),.a_6_ce0(grp_merge_Pipeline_merge_label2_fu_92_a_6_ce0),.a_6_q0(a_6_q0),.a_7_address0(grp_merge_Pipeline_merge_label2_fu_92_a_7_address0),.a_7_ce0(grp_merge_Pipeline_merge_label2_fu_92_a_7_ce0),.a_7_q0(a_7_q0),.add9(add9_reg_188),.temp_address0(grp_merge_Pipeline_merge_label2_fu_92_temp_address0),.temp_ce0(grp_merge_Pipeline_merge_label2_fu_92_temp_ce0),.temp_we0(grp_merge_Pipeline_merge_label2_fu_92_temp_we0),.temp_d0(grp_merge_Pipeline_merge_label2_fu_92_temp_d0));
ms_mergesort_merge_Pipeline_merge_label3 grp_merge_Pipeline_merge_label3_fu_117(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_merge_Pipeline_merge_label3_fu_117_ap_start),.ap_done(grp_merge_Pipeline_merge_label3_fu_117_ap_done),.ap_idle(grp_merge_Pipeline_merge_label3_fu_117_ap_idle),.ap_ready(grp_merge_Pipeline_merge_label3_fu_117_ap_ready),.sext_ln7(start_r),.stop(stop),.start_r(start_r),.sext_ln11_1(stop),.a_0_address0(grp_merge_Pipeline_merge_label3_fu_117_a_0_address0),.a_0_ce0(grp_merge_Pipeline_merge_label3_fu_117_a_0_ce0),.a_0_we0(grp_merge_Pipeline_merge_label3_fu_117_a_0_we0),.a_0_d0(grp_merge_Pipeline_merge_label3_fu_117_a_0_d0),.a_7_address0(grp_merge_Pipeline_merge_label3_fu_117_a_7_address0),.a_7_ce0(grp_merge_Pipeline_merge_label3_fu_117_a_7_ce0),.a_7_we0(grp_merge_Pipeline_merge_label3_fu_117_a_7_we0),.a_7_d0(grp_merge_Pipeline_merge_label3_fu_117_a_7_d0),.a_6_address0(grp_merge_Pipeline_merge_label3_fu_117_a_6_address0),.a_6_ce0(grp_merge_Pipeline_merge_label3_fu_117_a_6_ce0),.a_6_we0(grp_merge_Pipeline_merge_label3_fu_117_a_6_we0),.a_6_d0(grp_merge_Pipeline_merge_label3_fu_117_a_6_d0),.a_5_address0(grp_merge_Pipeline_merge_label3_fu_117_a_5_address0),.a_5_ce0(grp_merge_Pipeline_merge_label3_fu_117_a_5_ce0),.a_5_we0(grp_merge_Pipeline_merge_label3_fu_117_a_5_we0),.a_5_d0(grp_merge_Pipeline_merge_label3_fu_117_a_5_d0),.a_4_address0(grp_merge_Pipeline_merge_label3_fu_117_a_4_address0),.a_4_ce0(grp_merge_Pipeline_merge_label3_fu_117_a_4_ce0),.a_4_we0(grp_merge_Pipeline_merge_label3_fu_117_a_4_we0),.a_4_d0(grp_merge_Pipeline_merge_label3_fu_117_a_4_d0),.a_3_address0(grp_merge_Pipeline_merge_label3_fu_117_a_3_address0),.a_3_ce0(grp_merge_Pipeline_merge_label3_fu_117_a_3_ce0),.a_3_we0(grp_merge_Pipeline_merge_label3_fu_117_a_3_we0),.a_3_d0(grp_merge_Pipeline_merge_label3_fu_117_a_3_d0),.a_2_address0(grp_merge_Pipeline_merge_label3_fu_117_a_2_address0),.a_2_ce0(grp_merge_Pipeline_merge_label3_fu_117_a_2_ce0),.a_2_we0(grp_merge_Pipeline_merge_label3_fu_117_a_2_we0),.a_2_d0(grp_merge_Pipeline_merge_label3_fu_117_a_2_d0),.a_1_address0(grp_merge_Pipeline_merge_label3_fu_117_a_1_address0),.a_1_ce0(grp_merge_Pipeline_merge_label3_fu_117_a_1_ce0),.a_1_we0(grp_merge_Pipeline_merge_label3_fu_117_a_1_we0),.a_1_d0(grp_merge_Pipeline_merge_label3_fu_117_a_1_d0),.temp_address0(grp_merge_Pipeline_merge_label3_fu_117_temp_address0),.temp_ce0(grp_merge_Pipeline_merge_label3_fu_117_temp_ce0),.temp_q0(temp_q0),.temp_address1(grp_merge_Pipeline_merge_label3_fu_117_temp_address1),.temp_ce1(grp_merge_Pipeline_merge_label3_fu_117_temp_ce1),.temp_q1(temp_q1));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_merge_Pipeline_merge_label1_fu_66_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_merge_Pipeline_merge_label1_fu_66_ap_start_reg <= 1'b1;
        end else if ((grp_merge_Pipeline_merge_label1_fu_66_ap_ready == 1'b1)) begin
            grp_merge_Pipeline_merge_label1_fu_66_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_merge_Pipeline_merge_label2_fu_92_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_merge_Pipeline_merge_label2_fu_92_ap_start_reg <= 1'b1;
        end else if ((grp_merge_Pipeline_merge_label2_fu_92_ap_ready == 1'b1)) begin
            grp_merge_Pipeline_merge_label2_fu_92_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_merge_Pipeline_merge_label3_fu_117_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_NS_fsm_state5) & (1'b1 == ap_CS_fsm_state4))) begin
            grp_merge_Pipeline_merge_label3_fu_117_ap_start_reg <= 1'b1;
        end else if ((grp_merge_Pipeline_merge_label3_fu_117_ap_ready == 1'b1)) begin
            grp_merge_Pipeline_merge_label3_fu_117_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add9_reg_188 <= add9_fu_156_p2;
        j_reg_183 <= j_fu_146_p2;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_0_address0 = grp_merge_Pipeline_merge_label3_fu_117_a_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_0_address0 = grp_merge_Pipeline_merge_label2_fu_92_a_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_0_address0 = grp_merge_Pipeline_merge_label1_fu_66_a_0_address0;
    end else begin
        a_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_0_ce0 = grp_merge_Pipeline_merge_label3_fu_117_a_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_0_ce0 = grp_merge_Pipeline_merge_label2_fu_92_a_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_0_ce0 = grp_merge_Pipeline_merge_label1_fu_66_a_0_ce0;
    end else begin
        a_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_0_we0 = grp_merge_Pipeline_merge_label3_fu_117_a_0_we0;
    end else begin
        a_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_1_address0 = grp_merge_Pipeline_merge_label3_fu_117_a_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_1_address0 = grp_merge_Pipeline_merge_label2_fu_92_a_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_1_address0 = grp_merge_Pipeline_merge_label1_fu_66_a_1_address0;
    end else begin
        a_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_1_ce0 = grp_merge_Pipeline_merge_label3_fu_117_a_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_1_ce0 = grp_merge_Pipeline_merge_label2_fu_92_a_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_1_ce0 = grp_merge_Pipeline_merge_label1_fu_66_a_1_ce0;
    end else begin
        a_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_1_we0 = grp_merge_Pipeline_merge_label3_fu_117_a_1_we0;
    end else begin
        a_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_2_address0 = grp_merge_Pipeline_merge_label3_fu_117_a_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_2_address0 = grp_merge_Pipeline_merge_label2_fu_92_a_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_2_address0 = grp_merge_Pipeline_merge_label1_fu_66_a_2_address0;
    end else begin
        a_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_2_ce0 = grp_merge_Pipeline_merge_label3_fu_117_a_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_2_ce0 = grp_merge_Pipeline_merge_label2_fu_92_a_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_2_ce0 = grp_merge_Pipeline_merge_label1_fu_66_a_2_ce0;
    end else begin
        a_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_2_we0 = grp_merge_Pipeline_merge_label3_fu_117_a_2_we0;
    end else begin
        a_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_3_address0 = grp_merge_Pipeline_merge_label3_fu_117_a_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_3_address0 = grp_merge_Pipeline_merge_label2_fu_92_a_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_3_address0 = grp_merge_Pipeline_merge_label1_fu_66_a_3_address0;
    end else begin
        a_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_3_ce0 = grp_merge_Pipeline_merge_label3_fu_117_a_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_3_ce0 = grp_merge_Pipeline_merge_label2_fu_92_a_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_3_ce0 = grp_merge_Pipeline_merge_label1_fu_66_a_3_ce0;
    end else begin
        a_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_3_we0 = grp_merge_Pipeline_merge_label3_fu_117_a_3_we0;
    end else begin
        a_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_4_address0 = grp_merge_Pipeline_merge_label3_fu_117_a_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_4_address0 = grp_merge_Pipeline_merge_label2_fu_92_a_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_4_address0 = grp_merge_Pipeline_merge_label1_fu_66_a_4_address0;
    end else begin
        a_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_4_ce0 = grp_merge_Pipeline_merge_label3_fu_117_a_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_4_ce0 = grp_merge_Pipeline_merge_label2_fu_92_a_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_4_ce0 = grp_merge_Pipeline_merge_label1_fu_66_a_4_ce0;
    end else begin
        a_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_4_we0 = grp_merge_Pipeline_merge_label3_fu_117_a_4_we0;
    end else begin
        a_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_5_address0 = grp_merge_Pipeline_merge_label3_fu_117_a_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_5_address0 = grp_merge_Pipeline_merge_label2_fu_92_a_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_5_address0 = grp_merge_Pipeline_merge_label1_fu_66_a_5_address0;
    end else begin
        a_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_5_ce0 = grp_merge_Pipeline_merge_label3_fu_117_a_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_5_ce0 = grp_merge_Pipeline_merge_label2_fu_92_a_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_5_ce0 = grp_merge_Pipeline_merge_label1_fu_66_a_5_ce0;
    end else begin
        a_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_5_we0 = grp_merge_Pipeline_merge_label3_fu_117_a_5_we0;
    end else begin
        a_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_6_address0 = grp_merge_Pipeline_merge_label3_fu_117_a_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_6_address0 = grp_merge_Pipeline_merge_label2_fu_92_a_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_6_address0 = grp_merge_Pipeline_merge_label1_fu_66_a_6_address0;
    end else begin
        a_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_6_ce0 = grp_merge_Pipeline_merge_label3_fu_117_a_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_6_ce0 = grp_merge_Pipeline_merge_label2_fu_92_a_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_6_ce0 = grp_merge_Pipeline_merge_label1_fu_66_a_6_ce0;
    end else begin
        a_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_6_we0 = grp_merge_Pipeline_merge_label3_fu_117_a_6_we0;
    end else begin
        a_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_7_address0 = grp_merge_Pipeline_merge_label3_fu_117_a_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_7_address0 = grp_merge_Pipeline_merge_label2_fu_92_a_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_7_address0 = grp_merge_Pipeline_merge_label1_fu_66_a_7_address0;
    end else begin
        a_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_7_ce0 = grp_merge_Pipeline_merge_label3_fu_117_a_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        a_7_ce0 = grp_merge_Pipeline_merge_label2_fu_92_a_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        a_7_ce0 = grp_merge_Pipeline_merge_label1_fu_66_a_7_ce0;
    end else begin
        a_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        a_7_we0 = grp_merge_Pipeline_merge_label3_fu_117_a_7_we0;
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
always @ (*) begin
    if ((grp_merge_Pipeline_merge_label1_fu_66_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_merge_Pipeline_merge_label2_fu_92_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_merge_Pipeline_merge_label3_fu_117_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state6) & (grp_merge_Pipeline_merge_label3_fu_117_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((1'b1 == ap_CS_fsm_state6) & (grp_merge_Pipeline_merge_label3_fu_117_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        temp_address0 = grp_merge_Pipeline_merge_label3_fu_117_temp_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        temp_address0 = grp_merge_Pipeline_merge_label2_fu_92_temp_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        temp_address0 = grp_merge_Pipeline_merge_label1_fu_66_temp_address0;
    end else begin
        temp_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        temp_ce0 = grp_merge_Pipeline_merge_label3_fu_117_temp_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        temp_ce0 = grp_merge_Pipeline_merge_label2_fu_92_temp_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        temp_ce0 = grp_merge_Pipeline_merge_label1_fu_66_temp_ce0;
    end else begin
        temp_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        temp_ce1 = grp_merge_Pipeline_merge_label3_fu_117_temp_ce1;
    end else begin
        temp_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        temp_d0 = grp_merge_Pipeline_merge_label2_fu_92_temp_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        temp_d0 = grp_merge_Pipeline_merge_label1_fu_66_temp_d0;
    end else begin
        temp_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        temp_we0 = grp_merge_Pipeline_merge_label2_fu_92_temp_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        temp_we0 = grp_merge_Pipeline_merge_label1_fu_66_temp_we0;
    end else begin
        temp_we0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (grp_merge_Pipeline_merge_label1_fu_66_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_merge_Pipeline_merge_label2_fu_92_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_merge_Pipeline_merge_label3_fu_117_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_0_d0 = grp_merge_Pipeline_merge_label3_fu_117_a_0_d0;
assign a_1_d0 = grp_merge_Pipeline_merge_label3_fu_117_a_1_d0;
assign a_2_d0 = grp_merge_Pipeline_merge_label3_fu_117_a_2_d0;
assign a_3_d0 = grp_merge_Pipeline_merge_label3_fu_117_a_3_d0;
assign a_4_d0 = grp_merge_Pipeline_merge_label3_fu_117_a_4_d0;
assign a_5_d0 = grp_merge_Pipeline_merge_label3_fu_117_a_5_d0;
assign a_6_d0 = grp_merge_Pipeline_merge_label3_fu_117_a_6_d0;
assign a_7_d0 = grp_merge_Pipeline_merge_label3_fu_117_a_7_d0;
assign add9_fu_156_p2 = (trunc_ln5_fu_152_p1 + empty_fu_142_p1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_NS_fsm_state5 = ap_NS_fsm[32'd4];
assign empty_fu_142_p1 = stop[10:0];
assign grp_merge_Pipeline_merge_label1_fu_66_ap_start = grp_merge_Pipeline_merge_label1_fu_66_ap_start_reg;
assign grp_merge_Pipeline_merge_label2_fu_92_ap_start = grp_merge_Pipeline_merge_label2_fu_92_ap_start_reg;
assign grp_merge_Pipeline_merge_label3_fu_117_ap_start = grp_merge_Pipeline_merge_label3_fu_117_ap_start_reg;
assign j_fu_146_p2 = (m + 32'd1);
assign trunc_ln5_fu_152_p1 = j_fu_146_p2[10:0];
endmodule 
