
module ms_mergesort (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_address0,a_ce0,a_we0,a_d0,a_q0,a_address1,a_ce1,a_q1);  
parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_ce0;
reg a_we0;
reg a_ce1;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] m_1_reg_162;
wire    ap_CS_fsm_state2;
wire   [31:0] m_2_fu_93_p2;
reg   [31:0] m_2_reg_170;
wire   [31:0] mid_fu_120_p2;
reg   [31:0] mid_reg_179;
wire    ap_CS_fsm_state3;
wire   [31:0] to_fu_130_p2;
reg   [31:0] to_reg_185;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln43_fu_144_p2;
reg   [0:0] icmp_ln43_reg_190;
wire   [31:0] i_fu_150_p2;
wire    ap_CS_fsm_state6;
wire    grp_merge_fu_58_ap_start;
wire    grp_merge_fu_58_ap_done;
wire    grp_merge_fu_58_ap_idle;
wire    grp_merge_fu_58_ap_ready;
wire   [10:0] grp_merge_fu_58_a_address0;
wire    grp_merge_fu_58_a_ce0;
wire    grp_merge_fu_58_a_we0;
wire   [31:0] grp_merge_fu_58_a_d0;
wire   [10:0] grp_merge_fu_58_a_address1;
wire    grp_merge_fu_58_a_ce1;
reg   [31:0] grp_merge_fu_58_stop;
reg   [31:0] i_2_reg_46;
wire   [0:0] icmp_ln38_fu_87_p2;
reg    ap_block_state6_on_subcall_done;
reg    grp_merge_fu_58_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state7;
reg   [31:0] m_fu_42;
wire   [0:0] icmp_ln39_fu_109_p2;
wire   [20:0] tmp_fu_77_p4;
wire   [20:0] tmp_1_fu_99_p4;
wire   [31:0] add_ln41_fu_115_p2;
wire   [20:0] tmp_2_fu_134_p4;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_merge_fu_58_ap_start_reg = 1'b0;
#0 m_fu_42 = 32'd0;
end
ms_mergesort_merge grp_merge_fu_58(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_merge_fu_58_ap_start),.ap_done(grp_merge_fu_58_ap_done),.ap_idle(grp_merge_fu_58_ap_idle),.ap_ready(grp_merge_fu_58_ap_ready),.a_address0(grp_merge_fu_58_a_address0),.a_ce0(grp_merge_fu_58_a_ce0),.a_we0(grp_merge_fu_58_a_we0),.a_d0(grp_merge_fu_58_a_d0),.a_q0(a_q0),.a_address1(grp_merge_fu_58_a_address1),.a_ce1(grp_merge_fu_58_a_ce1),.a_q1(a_q1),.start_r(i_2_reg_46),.m(mid_reg_179),.stop(grp_merge_fu_58_stop));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_merge_fu_58_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5))) begin
            grp_merge_fu_58_ap_start_reg <= 1'b1;
        end else if ((grp_merge_fu_58_ap_ready == 1'b1)) begin
            grp_merge_fu_58_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
        i_2_reg_46 <= i_fu_150_p2;
    end else if (((icmp_ln38_fu_87_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_2_reg_46 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        m_fu_42 <= 32'd1;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln39_fu_109_p2 == 1'd0))) begin
        m_fu_42 <= m_2_reg_170;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln43_reg_190 <= icmp_ln43_fu_144_p2;
        to_reg_185 <= to_fu_130_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        m_1_reg_162 <= m_fu_42;
        m_2_reg_170[31 : 1] <= m_2_fu_93_p2[31 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mid_reg_179 <= mid_fu_120_p2;
    end
end
always @ (*) begin
    if ((((icmp_ln43_reg_190 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_190 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        a_ce0 = grp_merge_fu_58_a_ce0;
    end else begin
        a_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln43_reg_190 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_190 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        a_ce1 = grp_merge_fu_58_a_ce1;
    end else begin
        a_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln43_reg_190 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_190 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        a_we0 = grp_merge_fu_58_a_we0;
    end else begin
        a_we0 = 1'b0;
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
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state6_on_subcall_done)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln38_fu_87_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln38_fu_87_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        if ((icmp_ln43_reg_190 == 1'd1)) begin
            grp_merge_fu_58_stop = to_reg_185;
        end else if ((icmp_ln43_reg_190 == 1'd0)) begin
            grp_merge_fu_58_stop = 32'd2048;
        end else begin
            grp_merge_fu_58_stop = 'bx;
        end
    end else begin
        grp_merge_fu_58_stop = 'bx;
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
            if (((icmp_ln38_fu_87_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln39_fu_109_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln43_fu_144_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_address0 = grp_merge_fu_58_a_address0;
assign a_address1 = grp_merge_fu_58_a_address1;
assign a_d0 = grp_merge_fu_58_a_d0;
assign add_ln41_fu_115_p2 = (i_2_reg_46 + m_fu_42);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
always @ (*) begin
    ap_block_state6_on_subcall_done = (((grp_merge_fu_58_ap_done == 1'b0) & (icmp_ln43_reg_190 == 1'd1)) | ((grp_merge_fu_58_ap_done == 1'b0) & (icmp_ln43_reg_190 == 1'd0)));
end
assign grp_merge_fu_58_ap_start = grp_merge_fu_58_ap_start_reg;
assign i_fu_150_p2 = (m_2_reg_170 + i_2_reg_46);
assign icmp_ln38_fu_87_p2 = (($signed(tmp_fu_77_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_fu_109_p2 = (($signed(tmp_1_fu_99_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_144_p2 = (($signed(tmp_2_fu_134_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign m_2_fu_93_p2 = m_fu_42 << 32'd1;
assign mid_fu_120_p2 = ($signed(add_ln41_fu_115_p2) + $signed(32'd4294967295));
assign tmp_1_fu_99_p4 = {{i_2_reg_46[31:11]}};
assign tmp_2_fu_134_p4 = {{to_fu_130_p2[31:11]}};
assign tmp_fu_77_p4 = {{m_fu_42[31:11]}};
assign to_fu_130_p2 = (mid_reg_179 + m_1_reg_162);
always @ (posedge ap_clk) begin
    m_2_reg_170[0] <= 1'b0;
end
endmodule 
