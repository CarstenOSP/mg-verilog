module ms_mergesort (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_address0,a_ce0,a_we0,a_d0,a_q0); 
parameter    ap_ST_fsm_state1 = 22'd1;
parameter    ap_ST_fsm_state2 = 22'd2;
parameter    ap_ST_fsm_state3 = 22'd4;
parameter    ap_ST_fsm_state4 = 22'd8;
parameter    ap_ST_fsm_state5 = 22'd16;
parameter    ap_ST_fsm_state6 = 22'd32;
parameter    ap_ST_fsm_state7 = 22'd64;
parameter    ap_ST_fsm_state8 = 22'd128;
parameter    ap_ST_fsm_state9 = 22'd256;
parameter    ap_ST_fsm_state10 = 22'd512;
parameter    ap_ST_fsm_state11 = 22'd1024;
parameter    ap_ST_fsm_state12 = 22'd2048;
parameter    ap_ST_fsm_state13 = 22'd4096;
parameter    ap_ST_fsm_state14 = 22'd8192;
parameter    ap_ST_fsm_state15 = 22'd16384;
parameter    ap_ST_fsm_state16 = 22'd32768;
parameter    ap_ST_fsm_state17 = 22'd65536;
parameter    ap_ST_fsm_state18 = 22'd131072;
parameter    ap_ST_fsm_state19 = 22'd262144;
parameter    ap_ST_fsm_state20 = 22'd524288;
parameter    ap_ST_fsm_state21 = 22'd1048576;
parameter    ap_ST_fsm_state22 = 22'd2097152;
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
(* fsm_encoding = "none" *) reg   [21:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln38_fu_138_p2;
reg   [0:0] icmp_ln38_reg_402;
wire    ap_CS_fsm_state2;
wire   [31:0] m_2_fu_144_p2;
reg   [31:0] m_2_reg_406;
wire   [31:0] mid_fu_155_p2;
reg   [31:0] mid_reg_413;
wire    ap_CS_fsm_state3;
wire   [31:0] to_fu_161_p2;
reg   [31:0] to_reg_419;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln43_fu_175_p2;
reg   [0:0] icmp_ln43_reg_424;
wire   [31:0] i_1_fu_181_p2;
wire    ap_CS_fsm_state6;
wire   [31:0] m_3_fu_202_p2;
reg   [31:0] m_3_reg_436;
wire   [31:0] mid_1_fu_212_p2;
reg   [31:0] mid_1_reg_443;
wire    ap_CS_fsm_state8;
wire   [31:0] to_1_fu_218_p2;
reg   [31:0] to_1_reg_449;
wire    ap_CS_fsm_state9;
wire   [0:0] icmp_ln43_1_fu_232_p2;
reg   [0:0] icmp_ln43_1_reg_454;
wire   [31:0] i_3_fu_238_p2;
wire    ap_CS_fsm_state11;
wire   [31:0] m_4_fu_259_p2;
reg   [31:0] m_4_reg_466;
wire   [31:0] mid_2_fu_269_p2;
reg   [31:0] mid_2_reg_473;
wire    ap_CS_fsm_state13;
wire   [31:0] to_2_fu_275_p2;
reg   [31:0] to_2_reg_479;
wire    ap_CS_fsm_state14;
wire   [0:0] icmp_ln43_2_fu_289_p2;
reg   [0:0] icmp_ln43_2_reg_484;
wire   [31:0] i_5_fu_295_p2;
wire    ap_CS_fsm_state16;
wire   [31:0] m_5_fu_331_p2;
reg   [31:0] m_5_reg_499;
wire   [31:0] mid_3_fu_341_p2;
reg   [31:0] mid_3_reg_505;
wire    ap_CS_fsm_state18;
wire   [31:0] to_3_fu_347_p2;
reg   [31:0] to_3_reg_511;
wire    ap_CS_fsm_state19;
wire   [0:0] icmp_ln43_3_fu_361_p2;
reg   [0:0] icmp_ln43_3_reg_516;
wire   [31:0] i_7_fu_367_p2;
wire    ap_CS_fsm_state21;
wire    grp_merge_fu_106_ap_start;
wire    grp_merge_fu_106_ap_done;
wire    grp_merge_fu_106_ap_idle;
wire    grp_merge_fu_106_ap_ready;
wire   [10:0] grp_merge_fu_106_a_address0;
wire    grp_merge_fu_106_a_ce0;
wire    grp_merge_fu_106_a_we0;
wire   [31:0] grp_merge_fu_106_a_d0;
reg   [31:0] grp_merge_fu_106_start_r;
reg   [31:0] grp_merge_fu_106_m;
reg   [31:0] grp_merge_fu_106_stop;
reg   [31:0] from_reg_58;
reg    ap_block_state6_on_subcall_done;
wire   [0:0] icmp_ln39_fu_196_p2;
reg   [31:0] from_1_reg_70;
reg    ap_block_state11_on_subcall_done;
wire   [0:0] icmp_ln39_1_fu_253_p2;
reg   [31:0] from_2_reg_82;
reg    ap_predicate_op87_call_state16;
reg    ap_predicate_op89_call_state16;
reg    ap_block_state16_on_subcall_done;
wire   [0:0] icmp_ln39_2_fu_310_p2;
reg   [31:0] from_3_reg_94;
wire   [0:0] icmp_ln38_1_fu_325_p2;
reg    ap_block_state21_on_subcall_done;
wire   [0:0] icmp_ln39_3_fu_382_p2;
reg    grp_merge_fu_106_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state22;
reg   [31:0] m_fu_54;
wire   [20:0] tmp_fu_128_p4;
wire   [31:0] add_ln41_fu_150_p2;
wire   [20:0] tmp_1_fu_165_p4;
wire   [20:0] tmp_2_fu_186_p4;
wire   [31:0] add_ln41_2_fu_207_p2;
wire   [20:0] tmp_3_fu_222_p4;
wire   [20:0] tmp_4_fu_243_p4;
wire   [31:0] add_ln41_4_fu_264_p2;
wire   [20:0] tmp_5_fu_279_p4;
wire   [20:0] tmp_6_fu_300_p4;
wire   [20:0] tmp_7_fu_316_p4;
wire   [31:0] add_ln41_6_fu_336_p2;
wire   [20:0] tmp_8_fu_351_p4;
wire   [20:0] tmp_9_fu_372_p4;
reg   [21:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
reg    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
reg    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 22'd1;
#0 grp_merge_fu_106_ap_start_reg = 1'b0;
#0 m_fu_54 = 32'd0;
end
ms_mergesort_merge grp_merge_fu_106(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_merge_fu_106_ap_start),.ap_done(grp_merge_fu_106_ap_done),.ap_idle(grp_merge_fu_106_ap_idle),.ap_ready(grp_merge_fu_106_ap_ready),.a_address0(grp_merge_fu_106_a_address0),.a_ce0(grp_merge_fu_106_a_ce0),.a_we0(grp_merge_fu_106_a_we0),.a_d0(grp_merge_fu_106_a_d0),.a_q0(a_q0),.start_r(grp_merge_fu_106_start_r),.m(grp_merge_fu_106_m),.stop(grp_merge_fu_106_stop));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_merge_fu_106_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5))) begin
            grp_merge_fu_106_ap_start_reg <= 1'b1;
        end else if ((grp_merge_fu_106_ap_ready == 1'b1)) begin
            grp_merge_fu_106_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_1_fu_253_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11) & (1'b0 == ap_block_state11_on_subcall_done))) begin
        from_1_reg_70 <= i_3_fu_238_p2;
    end else if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln39_fu_196_p2 == 1'd0) & (1'b0 == ap_block_state6_on_subcall_done))) begin
        from_1_reg_70 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln38_reg_402 == 1'd1) & (icmp_ln39_2_fu_310_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state16) & (1'b0 == ap_block_state16_on_subcall_done))) begin
        from_2_reg_82 <= i_5_fu_295_p2;
    end else if (((icmp_ln39_1_fu_253_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11) & (1'b0 == ap_block_state11_on_subcall_done))) begin
        from_2_reg_82 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_3_fu_382_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state21) & (1'b0 == ap_block_state21_on_subcall_done))) begin
        from_3_reg_94 <= i_7_fu_367_p2;
    end else if (((icmp_ln38_reg_402 == 1'd1) & (icmp_ln38_1_fu_325_p2 == 1'd1) & (icmp_ln39_2_fu_310_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state16) & (1'b0 == ap_block_state16_on_subcall_done))) begin
        from_3_reg_94 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln39_fu_196_p2 == 1'd1) & (1'b0 == ap_block_state6_on_subcall_done))) begin
        from_reg_58 <= i_1_fu_181_p2;
    end else if (((icmp_ln38_fu_138_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        from_reg_58 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                m_fu_54[0] <= 1'b1;
        m_fu_54[4] <= 1'b0;
        m_fu_54[8] <= 1'b0;
        m_fu_54[12] <= 1'b0;
        m_fu_54[16] <= 1'b0;
        m_fu_54[20] <= 1'b0;
        m_fu_54[24] <= 1'b0;
        m_fu_54[28] <= 1'b0;
    end else if (((icmp_ln39_3_fu_382_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state21) & (1'b0 == ap_block_state21_on_subcall_done))) begin
                m_fu_54[0] <= m_5_reg_499[0];
        m_fu_54[4] <= m_5_reg_499[4];
        m_fu_54[8] <= m_5_reg_499[8];
        m_fu_54[12] <= m_5_reg_499[12];
        m_fu_54[16] <= m_5_reg_499[16];
        m_fu_54[20] <= m_5_reg_499[20];
        m_fu_54[24] <= m_5_reg_499[24];
        m_fu_54[28] <= m_5_reg_499[28];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln38_reg_402 <= icmp_ln38_fu_138_p2;
        m_2_reg_406[1] <= m_2_fu_144_p2[1];
m_2_reg_406[5] <= m_2_fu_144_p2[5];
m_2_reg_406[9] <= m_2_fu_144_p2[9];
m_2_reg_406[13] <= m_2_fu_144_p2[13];
m_2_reg_406[17] <= m_2_fu_144_p2[17];
m_2_reg_406[21] <= m_2_fu_144_p2[21];
m_2_reg_406[25] <= m_2_fu_144_p2[25];
m_2_reg_406[29] <= m_2_fu_144_p2[29];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        icmp_ln43_1_reg_454 <= icmp_ln43_1_fu_232_p2;
        to_1_reg_449 <= to_1_fu_218_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        icmp_ln43_2_reg_484 <= icmp_ln43_2_fu_289_p2;
        to_2_reg_479 <= to_2_fu_275_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        icmp_ln43_3_reg_516 <= icmp_ln43_3_fu_361_p2;
        to_3_reg_511 <= to_3_fu_347_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln43_reg_424 <= icmp_ln43_fu_175_p2;
        to_reg_419 <= to_fu_161_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m_3_reg_436[2] <= m_3_fu_202_p2[2];
m_3_reg_436[6] <= m_3_fu_202_p2[6];
m_3_reg_436[10] <= m_3_fu_202_p2[10];
m_3_reg_436[14] <= m_3_fu_202_p2[14];
m_3_reg_436[18] <= m_3_fu_202_p2[18];
m_3_reg_436[22] <= m_3_fu_202_p2[22];
m_3_reg_436[26] <= m_3_fu_202_p2[26];
m_3_reg_436[30] <= m_3_fu_202_p2[30];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        m_4_reg_466[3] <= m_4_fu_259_p2[3];
m_4_reg_466[7] <= m_4_fu_259_p2[7];
m_4_reg_466[11] <= m_4_fu_259_p2[11];
m_4_reg_466[15] <= m_4_fu_259_p2[15];
m_4_reg_466[19] <= m_4_fu_259_p2[19];
m_4_reg_466[23] <= m_4_fu_259_p2[23];
m_4_reg_466[27] <= m_4_fu_259_p2[27];
m_4_reg_466[31] <= m_4_fu_259_p2[31];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        m_5_reg_499[4] <= m_5_fu_331_p2[4];
m_5_reg_499[8] <= m_5_fu_331_p2[8];
m_5_reg_499[12] <= m_5_fu_331_p2[12];
m_5_reg_499[16] <= m_5_fu_331_p2[16];
m_5_reg_499[20] <= m_5_fu_331_p2[20];
m_5_reg_499[24] <= m_5_fu_331_p2[24];
m_5_reg_499[28] <= m_5_fu_331_p2[28];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mid_1_reg_443 <= mid_1_fu_212_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        mid_2_reg_473 <= mid_2_fu_269_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        mid_3_reg_505 <= mid_3_fu_341_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mid_reg_413 <= mid_fu_155_p2;
    end
end
always @ (*) begin
    if ((((ap_predicate_op89_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op87_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln43_1_reg_454 == 1'd1) & (1'b1 == ap_CS_fsm_state11)) | ((icmp_ln43_1_reg_454 == 1'd0) & (1'b1 == ap_CS_fsm_state11)) | ((icmp_ln43_reg_424 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_424 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_516 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_516 == 1'd0)))) begin
        a_ce0 = grp_merge_fu_106_a_ce0;
    end else begin
        a_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op89_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op87_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln43_1_reg_454 == 1'd1) & (1'b1 == ap_CS_fsm_state11)) | ((icmp_ln43_1_reg_454 == 1'd0) & (1'b1 == ap_CS_fsm_state11)) | ((icmp_ln43_reg_424 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_424 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_516 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_516 == 1'd0)))) begin
        a_we0 = grp_merge_fu_106_a_we0;
    end else begin
        a_we0 = 1'b0;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state11_on_subcall_done)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
    end
end
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state16_on_subcall_done)) begin
        ap_ST_fsm_state16_blk = 1'b1;
    end else begin
        ap_ST_fsm_state16_blk = 1'b0;
    end
end
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state21_on_subcall_done)) begin
        ap_ST_fsm_state21_blk = 1'b1;
    end else begin
        ap_ST_fsm_state21_blk = 1'b0;
    end
end
assign ap_ST_fsm_state22_blk = 1'b0;
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
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) & (1'b0 == ap_block_state16_on_subcall_done) & ((icmp_ln38_reg_402 == 1'd0) | ((icmp_ln38_1_fu_325_p2 == 1'd0) & (icmp_ln39_2_fu_310_p2 == 1'd0))))) begin
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
    if (((1'b1 == ap_CS_fsm_state16) & (1'b0 == ap_block_state16_on_subcall_done) & ((icmp_ln38_reg_402 == 1'd0) | ((icmp_ln38_1_fu_325_p2 == 1'd0) & (icmp_ln39_2_fu_310_p2 == 1'd0))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_516 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_516 == 1'd0)))) begin
        grp_merge_fu_106_m = mid_3_reg_505;
    end else if ((((ap_predicate_op89_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op87_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)))) begin
        grp_merge_fu_106_m = mid_2_reg_473;
    end else if ((((icmp_ln43_1_reg_454 == 1'd1) & (1'b1 == ap_CS_fsm_state11)) | ((icmp_ln43_1_reg_454 == 1'd0) & (1'b1 == ap_CS_fsm_state11)))) begin
        grp_merge_fu_106_m = mid_1_reg_443;
    end else if ((((icmp_ln43_reg_424 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_424 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        grp_merge_fu_106_m = mid_reg_413;
    end else begin
        grp_merge_fu_106_m = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_516 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_516 == 1'd0)))) begin
        grp_merge_fu_106_start_r = from_3_reg_94;
    end else if ((((ap_predicate_op89_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op87_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)))) begin
        grp_merge_fu_106_start_r = from_2_reg_82;
    end else if ((((icmp_ln43_1_reg_454 == 1'd1) & (1'b1 == ap_CS_fsm_state11)) | ((icmp_ln43_1_reg_454 == 1'd0) & (1'b1 == ap_CS_fsm_state11)))) begin
        grp_merge_fu_106_start_r = from_1_reg_70;
    end else if ((((icmp_ln43_reg_424 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_424 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        grp_merge_fu_106_start_r = from_reg_58;
    end else begin
        grp_merge_fu_106_start_r = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_516 == 1'd1))) begin
        grp_merge_fu_106_stop = to_3_reg_511;
    end else if (((ap_predicate_op89_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        grp_merge_fu_106_stop = to_2_reg_479;
    end else if (((icmp_ln43_1_reg_454 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
        grp_merge_fu_106_stop = to_1_reg_449;
    end else if (((icmp_ln43_reg_424 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        grp_merge_fu_106_stop = to_reg_419;
    end else if ((((ap_predicate_op87_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln43_1_reg_454 == 1'd0) & (1'b1 == ap_CS_fsm_state11)) | ((icmp_ln43_reg_424 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_516 == 1'd0)))) begin
        grp_merge_fu_106_stop = 32'd2048;
    end else begin
        grp_merge_fu_106_stop = 'bx;
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
            if (((icmp_ln38_fu_138_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln43_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln39_fu_196_p2 == 1'd0) & (1'b0 == ap_block_state6_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln39_fu_196_p2 == 1'd1) & (1'b0 == ap_block_state6_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((icmp_ln43_1_fu_232_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((icmp_ln39_1_fu_253_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11) & (1'b0 == ap_block_state11_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else if (((icmp_ln39_1_fu_253_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11) & (1'b0 == ap_block_state11_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln43_2_fu_289_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((1'b1 == ap_CS_fsm_state16) & (1'b0 == ap_block_state16_on_subcall_done) & ((icmp_ln38_reg_402 == 1'd0) | ((icmp_ln38_1_fu_325_p2 == 1'd0) & (icmp_ln39_2_fu_310_p2 == 1'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln38_reg_402 == 1'd1) & (icmp_ln38_1_fu_325_p2 == 1'd1) & (icmp_ln39_2_fu_310_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state16) & (1'b0 == ap_block_state16_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else if (((icmp_ln38_reg_402 == 1'd1) & (icmp_ln39_2_fu_310_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state16) & (1'b0 == ap_block_state16_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            if (((1'b1 == ap_CS_fsm_state19) & (icmp_ln43_3_fu_361_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            if (((icmp_ln39_3_fu_382_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state21) & (1'b0 == ap_block_state21_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((icmp_ln39_3_fu_382_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state21) & (1'b0 == ap_block_state21_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_address0 = grp_merge_fu_106_a_address0;
assign a_d0 = grp_merge_fu_106_a_d0;
assign add_ln41_2_fu_207_p2 = (from_1_reg_70 + m_2_reg_406);
assign add_ln41_4_fu_264_p2 = (from_2_reg_82 + m_3_reg_436);
assign add_ln41_6_fu_336_p2 = (from_3_reg_94 + m_4_reg_466);
assign add_ln41_fu_150_p2 = (from_reg_58 + m_fu_54);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state11_on_subcall_done = (((icmp_ln43_1_reg_454 == 1'd1) & (grp_merge_fu_106_ap_done == 1'b0)) | ((icmp_ln43_1_reg_454 == 1'd0) & (grp_merge_fu_106_ap_done == 1'b0)));
end
always @ (*) begin
    ap_block_state16_on_subcall_done = (((ap_predicate_op89_call_state16 == 1'b1) & (grp_merge_fu_106_ap_done == 1'b0)) | ((ap_predicate_op87_call_state16 == 1'b1) & (grp_merge_fu_106_ap_done == 1'b0)));
end
always @ (*) begin
    ap_block_state21_on_subcall_done = (((grp_merge_fu_106_ap_done == 1'b0) & (icmp_ln43_3_reg_516 == 1'd1)) | ((grp_merge_fu_106_ap_done == 1'b0) & (icmp_ln43_3_reg_516 == 1'd0)));
end
always @ (*) begin
    ap_block_state6_on_subcall_done = (((icmp_ln43_reg_424 == 1'd1) & (grp_merge_fu_106_ap_done == 1'b0)) | ((icmp_ln43_reg_424 == 1'd0) & (grp_merge_fu_106_ap_done == 1'b0)));
end
always @ (*) begin
    ap_predicate_op87_call_state16 = ((icmp_ln38_reg_402 == 1'd1) & (icmp_ln43_2_reg_484 == 1'd0));
end
always @ (*) begin
    ap_predicate_op89_call_state16 = ((icmp_ln38_reg_402 == 1'd1) & (icmp_ln43_2_reg_484 == 1'd1));
end
assign grp_merge_fu_106_ap_start = grp_merge_fu_106_ap_start_reg;
assign i_1_fu_181_p2 = (m_2_reg_406 + from_reg_58);
assign i_3_fu_238_p2 = (m_3_reg_436 + from_1_reg_70);
assign i_5_fu_295_p2 = (m_4_reg_466 + from_2_reg_82);
assign i_7_fu_367_p2 = (m_5_reg_499 + from_3_reg_94);
assign icmp_ln38_1_fu_325_p2 = (($signed(tmp_7_fu_316_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_138_p2 = (($signed(tmp_fu_128_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_1_fu_253_p2 = (($signed(tmp_4_fu_243_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_2_fu_310_p2 = (($signed(tmp_6_fu_300_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_3_fu_382_p2 = (($signed(tmp_9_fu_372_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_fu_196_p2 = (($signed(tmp_2_fu_186_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_232_p2 = (($signed(tmp_3_fu_222_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_2_fu_289_p2 = (($signed(tmp_5_fu_279_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_3_fu_361_p2 = (($signed(tmp_8_fu_351_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_175_p2 = (($signed(tmp_1_fu_165_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign m_2_fu_144_p2 = m_fu_54 << 32'd1;
assign m_3_fu_202_p2 = m_fu_54 << 32'd2;
assign m_4_fu_259_p2 = m_fu_54 << 32'd3;
assign m_5_fu_331_p2 = m_fu_54 << 32'd4;
assign mid_1_fu_212_p2 = ($signed(add_ln41_2_fu_207_p2) + $signed(32'd4294967295));
assign mid_2_fu_269_p2 = ($signed(add_ln41_4_fu_264_p2) + $signed(32'd4294967295));
assign mid_3_fu_341_p2 = ($signed(add_ln41_6_fu_336_p2) + $signed(32'd4294967295));
assign mid_fu_155_p2 = ($signed(add_ln41_fu_150_p2) + $signed(32'd4294967295));
assign tmp_1_fu_165_p4 = {{to_fu_161_p2[31:11]}};
assign tmp_2_fu_186_p4 = {{i_1_fu_181_p2[31:11]}};
assign tmp_3_fu_222_p4 = {{to_1_fu_218_p2[31:11]}};
assign tmp_4_fu_243_p4 = {{i_3_fu_238_p2[31:11]}};
assign tmp_5_fu_279_p4 = {{to_2_fu_275_p2[31:11]}};
assign tmp_6_fu_300_p4 = {{i_5_fu_295_p2[31:11]}};
assign tmp_7_fu_316_p4 = {{m_fu_54[28:8]}};
assign tmp_8_fu_351_p4 = {{to_3_fu_347_p2[31:11]}};
assign tmp_9_fu_372_p4 = {{i_7_fu_367_p2[31:11]}};
assign tmp_fu_128_p4 = {{m_fu_54[31:11]}};
assign to_1_fu_218_p2 = (mid_1_reg_443 + m_2_reg_406);
assign to_2_fu_275_p2 = (mid_2_reg_473 + m_3_reg_436);
assign to_3_fu_347_p2 = (mid_3_reg_505 + m_4_reg_466);
assign to_fu_161_p2 = (mid_reg_413 + m_fu_54);
always @ (posedge ap_clk) begin
    m_2_reg_406[0] <= 1'b0;
    m_2_reg_406[4:2] <= 3'b000;
    m_2_reg_406[8:6] <= 3'b000;
    m_2_reg_406[12:10] <= 3'b000;
    m_2_reg_406[16:14] <= 3'b000;
    m_2_reg_406[20:18] <= 3'b000;
    m_2_reg_406[24:22] <= 3'b000;
    m_2_reg_406[28:26] <= 3'b000;
    m_2_reg_406[31:30] <= 2'b00;
    m_3_reg_436[1:0] <= 2'b00;
    m_3_reg_436[5:3] <= 3'b000;
    m_3_reg_436[9:7] <= 3'b000;
    m_3_reg_436[13:11] <= 3'b000;
    m_3_reg_436[17:15] <= 3'b000;
    m_3_reg_436[21:19] <= 3'b000;
    m_3_reg_436[25:23] <= 3'b000;
    m_3_reg_436[29:27] <= 3'b000;
    m_3_reg_436[31] <= 1'b0;
    m_4_reg_466[2:0] <= 3'b000;
    m_4_reg_466[6:4] <= 3'b000;
    m_4_reg_466[10:8] <= 3'b000;
    m_4_reg_466[14:12] <= 3'b000;
    m_4_reg_466[18:16] <= 3'b000;
    m_4_reg_466[22:20] <= 3'b000;
    m_4_reg_466[26:24] <= 3'b000;
    m_4_reg_466[30:28] <= 3'b000;
    m_5_reg_499[3:0] <= 4'b0000;
    m_5_reg_499[7:5] <= 3'b000;
    m_5_reg_499[11:9] <= 3'b000;
    m_5_reg_499[15:13] <= 3'b000;
    m_5_reg_499[19:17] <= 3'b000;
    m_5_reg_499[23:21] <= 3'b000;
    m_5_reg_499[27:25] <= 3'b000;
    m_5_reg_499[31:29] <= 3'b000;
    m_fu_54[3:1] <= 3'b000;
    m_fu_54[7:5] <= 3'b000;
    m_fu_54[11:9] <= 3'b000;
    m_fu_54[15:13] <= 3'b000;
    m_fu_54[19:17] <= 3'b000;
    m_fu_54[23:21] <= 3'b000;
    m_fu_54[27:25] <= 3'b000;
    m_fu_54[31:29] <= 3'b000;
end
endmodule 