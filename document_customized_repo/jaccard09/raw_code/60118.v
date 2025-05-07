module ms_mergesort (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_address0,a_ce0,a_we0,a_d0,a_q0); 
parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;
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
reg a_ce0;
reg a_we0;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln38_fu_108_p2;
reg   [0:0] icmp_ln38_reg_260;
wire    ap_CS_fsm_state2;
wire   [31:0] m_2_fu_114_p2;
reg   [31:0] m_2_reg_264;
wire   [31:0] mid_fu_125_p2;
reg   [31:0] mid_reg_271;
wire    ap_CS_fsm_state3;
wire   [31:0] to_fu_131_p2;
reg   [31:0] to_reg_277;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln43_fu_146_p2;
reg   [0:0] icmp_ln43_reg_282;
wire   [31:0] i_1_fu_152_p2;
wire    ap_CS_fsm_state5;
wire   [31:0] m_3_fu_188_p2;
reg   [31:0] m_3_reg_297;
wire   [31:0] mid_1_fu_198_p2;
reg   [31:0] mid_1_reg_303;
wire    ap_CS_fsm_state6;
wire   [31:0] to_1_fu_204_p2;
reg   [31:0] to_1_reg_309;
wire    ap_CS_fsm_state7;
wire   [0:0] icmp_ln43_1_fu_219_p2;
reg   [0:0] icmp_ln43_1_reg_314;
wire   [31:0] i_3_fu_225_p2;
wire    ap_CS_fsm_state8;
wire    grp_merge_fu_78_ap_start;
wire    grp_merge_fu_78_ap_done;
wire    grp_merge_fu_78_ap_idle;
wire    grp_merge_fu_78_ap_ready;
wire   [10:0] grp_merge_fu_78_a_address0;
wire    grp_merge_fu_78_a_ce0;
wire    grp_merge_fu_78_a_we0;
wire   [31:0] grp_merge_fu_78_a_d0;
reg   [31:0] grp_merge_fu_78_start_r;
reg   [31:0] grp_merge_fu_78_m;
reg   [31:0] grp_merge_fu_78_stop;
reg   [31:0] from_reg_54;
reg    ap_predicate_op34_call_state5;
reg    ap_predicate_op36_call_state5;
reg    ap_block_state5_on_subcall_done;
wire   [0:0] icmp_ln39_fu_167_p2;
reg   [31:0] from_1_reg_66;
wire   [0:0] icmp_ln38_1_fu_182_p2;
reg    ap_block_state8_on_subcall_done;
wire   [0:0] icmp_ln39_1_fu_240_p2;
reg    grp_merge_fu_78_ap_start_reg;
reg   [31:0] m_fu_50;
wire   [20:0] tmp_fu_98_p4;
wire   [31:0] add_ln41_fu_120_p2;
wire   [20:0] tmp_1_fu_136_p4;
wire   [20:0] tmp_2_fu_157_p4;
wire   [20:0] tmp_3_fu_173_p4;
wire   [31:0] add_ln41_2_fu_193_p2;
wire   [20:0] tmp_4_fu_209_p4;
wire   [20:0] tmp_5_fu_230_p4;
reg   [7:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 grp_merge_fu_78_ap_start_reg = 1'b0;
#0 m_fu_50 = 32'd0;
end
ms_mergesort_merge grp_merge_fu_78(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_merge_fu_78_ap_start),.ap_done(grp_merge_fu_78_ap_done),.ap_idle(grp_merge_fu_78_ap_idle),.ap_ready(grp_merge_fu_78_ap_ready),.a_address0(grp_merge_fu_78_a_address0),.a_ce0(grp_merge_fu_78_a_ce0),.a_we0(grp_merge_fu_78_a_we0),.a_d0(grp_merge_fu_78_a_d0),.a_q0(a_q0),.start_r(grp_merge_fu_78_start_r),.m(grp_merge_fu_78_m),.stop(grp_merge_fu_78_stop));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_merge_fu_78_ap_start_reg <= 1'b0;
    end else begin
        if ((((icmp_ln43_1_fu_219_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7)) | ((icmp_ln43_1_fu_219_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)) | ((icmp_ln43_fu_146_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln43_fu_146_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
            grp_merge_fu_78_ap_start_reg <= 1'b1;
        end else if ((grp_merge_fu_78_ap_ready == 1'b1)) begin
            grp_merge_fu_78_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln39_1_fu_240_p2 == 1'd1) & (1'b0 == ap_block_state8_on_subcall_done))) begin
        from_1_reg_66 <= i_3_fu_225_p2;
    end else if (((icmp_ln38_reg_260 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln38_1_fu_182_p2 == 1'd1) & (icmp_ln39_fu_167_p2 == 1'd0) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        from_1_reg_66 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln38_reg_260 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln39_fu_167_p2 == 1'd1) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        from_reg_54 <= i_1_fu_152_p2;
    end else if (((icmp_ln38_fu_108_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        from_reg_54 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                m_fu_50[0] <= 1'b1;
        m_fu_50[2] <= 1'b0;
        m_fu_50[4] <= 1'b0;
        m_fu_50[6] <= 1'b0;
        m_fu_50[8] <= 1'b0;
        m_fu_50[10] <= 1'b0;
        m_fu_50[12] <= 1'b0;
        m_fu_50[14] <= 1'b0;
        m_fu_50[16] <= 1'b0;
        m_fu_50[18] <= 1'b0;
        m_fu_50[20] <= 1'b0;
        m_fu_50[22] <= 1'b0;
        m_fu_50[24] <= 1'b0;
        m_fu_50[26] <= 1'b0;
        m_fu_50[28] <= 1'b0;
        m_fu_50[30] <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln39_1_fu_240_p2 == 1'd0) & (1'b0 == ap_block_state8_on_subcall_done))) begin
                m_fu_50[0] <= m_3_reg_297[0];
        m_fu_50[2] <= m_3_reg_297[2];
        m_fu_50[4] <= m_3_reg_297[4];
        m_fu_50[6] <= m_3_reg_297[6];
        m_fu_50[8] <= m_3_reg_297[8];
        m_fu_50[10] <= m_3_reg_297[10];
        m_fu_50[12] <= m_3_reg_297[12];
        m_fu_50[14] <= m_3_reg_297[14];
        m_fu_50[16] <= m_3_reg_297[16];
        m_fu_50[18] <= m_3_reg_297[18];
        m_fu_50[20] <= m_3_reg_297[20];
        m_fu_50[22] <= m_3_reg_297[22];
        m_fu_50[24] <= m_3_reg_297[24];
        m_fu_50[26] <= m_3_reg_297[26];
        m_fu_50[28] <= m_3_reg_297[28];
        m_fu_50[30] <= m_3_reg_297[30];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln38_reg_260 <= icmp_ln38_fu_108_p2;
        m_2_reg_264[1] <= m_2_fu_114_p2[1];
m_2_reg_264[3] <= m_2_fu_114_p2[3];
m_2_reg_264[5] <= m_2_fu_114_p2[5];
m_2_reg_264[7] <= m_2_fu_114_p2[7];
m_2_reg_264[9] <= m_2_fu_114_p2[9];
m_2_reg_264[11] <= m_2_fu_114_p2[11];
m_2_reg_264[13] <= m_2_fu_114_p2[13];
m_2_reg_264[15] <= m_2_fu_114_p2[15];
m_2_reg_264[17] <= m_2_fu_114_p2[17];
m_2_reg_264[19] <= m_2_fu_114_p2[19];
m_2_reg_264[21] <= m_2_fu_114_p2[21];
m_2_reg_264[23] <= m_2_fu_114_p2[23];
m_2_reg_264[25] <= m_2_fu_114_p2[25];
m_2_reg_264[27] <= m_2_fu_114_p2[27];
m_2_reg_264[29] <= m_2_fu_114_p2[29];
m_2_reg_264[31] <= m_2_fu_114_p2[31];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        icmp_ln43_1_reg_314 <= icmp_ln43_1_fu_219_p2;
        to_1_reg_309 <= to_1_fu_204_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln43_reg_282 <= icmp_ln43_fu_146_p2;
        to_reg_277 <= to_fu_131_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        m_3_reg_297[2] <= m_3_fu_188_p2[2];
m_3_reg_297[4] <= m_3_fu_188_p2[4];
m_3_reg_297[6] <= m_3_fu_188_p2[6];
m_3_reg_297[8] <= m_3_fu_188_p2[8];
m_3_reg_297[10] <= m_3_fu_188_p2[10];
m_3_reg_297[12] <= m_3_fu_188_p2[12];
m_3_reg_297[14] <= m_3_fu_188_p2[14];
m_3_reg_297[16] <= m_3_fu_188_p2[16];
m_3_reg_297[18] <= m_3_fu_188_p2[18];
m_3_reg_297[20] <= m_3_fu_188_p2[20];
m_3_reg_297[22] <= m_3_fu_188_p2[22];
m_3_reg_297[24] <= m_3_fu_188_p2[24];
m_3_reg_297[26] <= m_3_fu_188_p2[26];
m_3_reg_297[28] <= m_3_fu_188_p2[28];
m_3_reg_297[30] <= m_3_fu_188_p2[30];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        mid_1_reg_303 <= mid_1_fu_198_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mid_reg_271 <= mid_fu_125_p2;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (ap_predicate_op36_call_state5 == 1'b1)) | ((1'b1 == ap_CS_fsm_state5) & (ap_predicate_op34_call_state5 == 1'b1)) | ((icmp_ln43_1_reg_314 == 1'd1) & (1'b1 == ap_CS_fsm_state8)) | ((icmp_ln43_1_reg_314 == 1'd0) & (1'b1 == ap_CS_fsm_state8)))) begin
        a_ce0 = grp_merge_fu_78_a_ce0;
    end else begin
        a_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state5) & (ap_predicate_op36_call_state5 == 1'b1)) | ((1'b1 == ap_CS_fsm_state5) & (ap_predicate_op34_call_state5 == 1'b1)) | ((icmp_ln43_1_reg_314 == 1'd1) & (1'b1 == ap_CS_fsm_state8)) | ((icmp_ln43_1_reg_314 == 1'd0) & (1'b1 == ap_CS_fsm_state8)))) begin
        a_we0 = grp_merge_fu_78_a_we0;
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
    if ((1'b1 == ap_block_state8_on_subcall_done)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done) & ((icmp_ln38_reg_260 == 1'd0) | ((icmp_ln38_1_fu_182_p2 == 1'd0) & (icmp_ln39_fu_167_p2 == 1'd0))))) begin
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
    if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done) & ((icmp_ln38_reg_260 == 1'd0) | ((icmp_ln38_1_fu_182_p2 == 1'd0) & (icmp_ln39_fu_167_p2 == 1'd0))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln43_1_reg_314 == 1'd1) & (1'b1 == ap_CS_fsm_state8)) | ((icmp_ln43_1_reg_314 == 1'd0) & (1'b1 == ap_CS_fsm_state8)))) begin
        grp_merge_fu_78_m = mid_1_reg_303;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (ap_predicate_op36_call_state5 == 1'b1)) | ((1'b1 == ap_CS_fsm_state5) & (ap_predicate_op34_call_state5 == 1'b1)))) begin
        grp_merge_fu_78_m = mid_reg_271;
    end else begin
        grp_merge_fu_78_m = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln43_1_reg_314 == 1'd1) & (1'b1 == ap_CS_fsm_state8)) | ((icmp_ln43_1_reg_314 == 1'd0) & (1'b1 == ap_CS_fsm_state8)))) begin
        grp_merge_fu_78_start_r = from_1_reg_66;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (ap_predicate_op36_call_state5 == 1'b1)) | ((1'b1 == ap_CS_fsm_state5) & (ap_predicate_op34_call_state5 == 1'b1)))) begin
        grp_merge_fu_78_start_r = from_reg_54;
    end else begin
        grp_merge_fu_78_start_r = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln43_1_reg_314 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        grp_merge_fu_78_stop = to_1_reg_309;
    end else if (((1'b1 == ap_CS_fsm_state5) & (ap_predicate_op36_call_state5 == 1'b1))) begin
        grp_merge_fu_78_stop = to_reg_277;
    end else if ((((1'b1 == ap_CS_fsm_state5) & (ap_predicate_op34_call_state5 == 1'b1)) | ((icmp_ln43_1_reg_314 == 1'd0) & (1'b1 == ap_CS_fsm_state8)))) begin
        grp_merge_fu_78_stop = 32'd2048;
    end else begin
        grp_merge_fu_78_stop = 'bx;
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
            if (((icmp_ln38_fu_108_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done) & ((icmp_ln38_reg_260 == 1'd0) | ((icmp_ln38_1_fu_182_p2 == 1'd0) & (icmp_ln39_fu_167_p2 == 1'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln38_reg_260 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln38_1_fu_182_p2 == 1'd1) & (icmp_ln39_fu_167_p2 == 1'd0) & (1'b0 == ap_block_state5_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if (((icmp_ln38_reg_260 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln39_fu_167_p2 == 1'd1) & (1'b0 == ap_block_state5_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln39_1_fu_240_p2 == 1'd0) & (1'b0 == ap_block_state8_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln39_1_fu_240_p2 == 1'd1) & (1'b0 == ap_block_state8_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_address0 = grp_merge_fu_78_a_address0;
assign a_d0 = grp_merge_fu_78_a_d0;
assign add_ln41_2_fu_193_p2 = (from_1_reg_66 + m_2_reg_264);
assign add_ln41_fu_120_p2 = (from_reg_54 + m_fu_50);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
always @ (*) begin
    ap_block_state5_on_subcall_done = (((grp_merge_fu_78_ap_done == 1'b0) & (ap_predicate_op36_call_state5 == 1'b1)) | ((grp_merge_fu_78_ap_done == 1'b0) & (ap_predicate_op34_call_state5 == 1'b1)));
end
always @ (*) begin
    ap_block_state8_on_subcall_done = (((grp_merge_fu_78_ap_done == 1'b0) & (icmp_ln43_1_reg_314 == 1'd1)) | ((grp_merge_fu_78_ap_done == 1'b0) & (icmp_ln43_1_reg_314 == 1'd0)));
end
always @ (*) begin
    ap_predicate_op34_call_state5 = ((icmp_ln43_reg_282 == 1'd0) & (icmp_ln38_reg_260 == 1'd1));
end
always @ (*) begin
    ap_predicate_op36_call_state5 = ((icmp_ln43_reg_282 == 1'd1) & (icmp_ln38_reg_260 == 1'd1));
end
assign grp_merge_fu_78_ap_start = grp_merge_fu_78_ap_start_reg;
assign i_1_fu_152_p2 = (m_2_reg_264 + from_reg_54);
assign i_3_fu_225_p2 = (m_3_reg_297 + from_1_reg_66);
assign icmp_ln38_1_fu_182_p2 = (($signed(tmp_3_fu_173_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_108_p2 = (($signed(tmp_fu_98_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_1_fu_240_p2 = (($signed(tmp_5_fu_230_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_fu_167_p2 = (($signed(tmp_2_fu_157_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_219_p2 = (($signed(tmp_4_fu_209_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_146_p2 = (($signed(tmp_1_fu_136_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign m_2_fu_114_p2 = m_fu_50 << 32'd1;
assign m_3_fu_188_p2 = m_fu_50 << 32'd2;
assign mid_1_fu_198_p2 = ($signed(add_ln41_2_fu_193_p2) + $signed(32'd4294967295));
assign mid_fu_125_p2 = ($signed(add_ln41_fu_120_p2) + $signed(32'd4294967295));
assign tmp_1_fu_136_p4 = {{to_fu_131_p2[31:11]}};
assign tmp_2_fu_157_p4 = {{i_1_fu_152_p2[31:11]}};
assign tmp_3_fu_173_p4 = {{m_fu_50[30:10]}};
assign tmp_4_fu_209_p4 = {{to_1_fu_204_p2[31:11]}};
assign tmp_5_fu_230_p4 = {{i_3_fu_225_p2[31:11]}};
assign tmp_fu_98_p4 = {{m_fu_50[31:11]}};
assign to_1_fu_204_p2 = (mid_1_reg_303 + m_2_reg_264);
assign to_fu_131_p2 = (mid_reg_271 + m_fu_50);
always @ (posedge ap_clk) begin
    m_2_reg_264[0] <= 1'b0;
    m_2_reg_264[2:2] <= 1'b0;
    m_2_reg_264[4:4] <= 1'b0;
    m_2_reg_264[6:6] <= 1'b0;
    m_2_reg_264[8:8] <= 1'b0;
    m_2_reg_264[10:10] <= 1'b0;
    m_2_reg_264[12:12] <= 1'b0;
    m_2_reg_264[14:14] <= 1'b0;
    m_2_reg_264[16:16] <= 1'b0;
    m_2_reg_264[18:18] <= 1'b0;
    m_2_reg_264[20:20] <= 1'b0;
    m_2_reg_264[22:22] <= 1'b0;
    m_2_reg_264[24:24] <= 1'b0;
    m_2_reg_264[26:26] <= 1'b0;
    m_2_reg_264[28:28] <= 1'b0;
    m_2_reg_264[30] <= 1'b0;
    m_3_reg_297[1:0] <= 2'b00;
    m_3_reg_297[3:3] <= 1'b0;
    m_3_reg_297[5:5] <= 1'b0;
    m_3_reg_297[7:7] <= 1'b0;
    m_3_reg_297[9:9] <= 1'b0;
    m_3_reg_297[11:11] <= 1'b0;
    m_3_reg_297[13:13] <= 1'b0;
    m_3_reg_297[15:15] <= 1'b0;
    m_3_reg_297[17:17] <= 1'b0;
    m_3_reg_297[19:19] <= 1'b0;
    m_3_reg_297[21:21] <= 1'b0;
    m_3_reg_297[23:23] <= 1'b0;
    m_3_reg_297[25:25] <= 1'b0;
    m_3_reg_297[27:27] <= 1'b0;
    m_3_reg_297[29:29] <= 1'b0;
    m_3_reg_297[31] <= 1'b0;
    m_fu_50[1] <= 1'b0;
    m_fu_50[3:3] <= 1'b0;
    m_fu_50[5:5] <= 1'b0;
    m_fu_50[7:7] <= 1'b0;
    m_fu_50[9:9] <= 1'b0;
    m_fu_50[11:11] <= 1'b0;
    m_fu_50[13:13] <= 1'b0;
    m_fu_50[15:15] <= 1'b0;
    m_fu_50[17:17] <= 1'b0;
    m_fu_50[19:19] <= 1'b0;
    m_fu_50[21:21] <= 1'b0;
    m_fu_50[23:23] <= 1'b0;
    m_fu_50[25:25] <= 1'b0;
    m_fu_50[27:27] <= 1'b0;
    m_fu_50[29:29] <= 1'b0;
    m_fu_50[31] <= 1'b0;
end
endmodule 