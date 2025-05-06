
module ms_mergesort (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_address0,a_ce0,a_we0,a_d0,a_q0);  
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] m_1_reg_94;
wire    ap_CS_fsm_state2;
wire   [31:0] m_2_fu_75_p2;
reg   [31:0] m_2_reg_102;
wire    grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_ap_start;
wire    grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_ap_done;
wire    grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_ap_idle;
wire    grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_ap_ready;
wire   [10:0] grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_a_address0;
wire    grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_a_ce0;
wire    grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_a_we0;
wire   [31:0] grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_a_d0;
reg    grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_ap_start_reg;
wire   [0:0] icmp_ln38_fu_69_p2;
wire    ap_CS_fsm_state3;
reg   [31:0] m_fu_38;
wire   [20:0] tmp_fu_59_p4;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_ap_start_reg = 1'b0;
#0 m_fu_38 = 32'd0;
end
ms_mergesort_ms_mergesort_Pipeline_mergesort_label2 grp_ms_mergesort_Pipeline_mergesort_label2_fu_42(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_ap_start),.ap_done(grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_ap_done),.ap_idle(grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_ap_idle),.ap_ready(grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_ap_ready),.empty(m_2_reg_102),.a_address0(grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_a_address0),.a_ce0(grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_a_ce0),.a_we0(grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_a_we0),.a_d0(grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_a_d0),.a_q0(a_q0),.m(m_1_reg_94));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln38_fu_69_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_ap_start_reg <= 1'b1;
        end else if ((grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_ap_ready == 1'b1)) begin
            grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        m_fu_38 <= 32'd1;
    end else if (((icmp_ln38_fu_69_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        m_fu_38 <= m_2_fu_75_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        m_1_reg_94 <= m_fu_38;
        m_2_reg_102[31 : 1] <= m_2_fu_75_p2[31 : 1];
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
always @ (*) begin
    if ((grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_69_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln38_fu_69_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (((icmp_ln38_fu_69_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_address0 = grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_a_address0;
assign a_ce0 = grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_a_ce0;
assign a_d0 = grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_a_d0;
assign a_we0 = grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_a_we0;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_ap_start = grp_ms_mergesort_Pipeline_mergesort_label2_fu_42_ap_start_reg;
assign icmp_ln38_fu_69_p2 = (($signed(tmp_fu_59_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign m_2_fu_75_p2 = m_fu_38 << 32'd1;
assign tmp_fu_59_p4 = {{m_fu_38[31:11]}};
always @ (posedge ap_clk) begin
    m_2_reg_102[0] <= 1'b0;
end
endmodule 
