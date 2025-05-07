module ms_mergesort (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_0_q0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,a_1_q0,a_2_address0,a_2_ce0,a_2_we0,a_2_d0,a_2_q0,a_3_address0,a_3_ce0,a_3_we0,a_3_d0,a_3_q0); 
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
output  [8:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
input  [31:0] a_0_q0;
output  [8:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
input  [31:0] a_1_q0;
output  [8:0] a_2_address0;
output   a_2_ce0;
output   a_2_we0;
output  [31:0] a_2_d0;
input  [31:0] a_2_q0;
output  [8:0] a_3_address0;
output   a_3_ce0;
output   a_3_we0;
output  [31:0] a_3_d0;
input  [31:0] a_3_q0;
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
(* fsm_encoding = "none" *) reg   [21:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln38_fu_150_p2;
reg   [0:0] icmp_ln38_reg_414;
wire    ap_CS_fsm_state2;
wire   [31:0] m_2_fu_156_p2;
reg   [31:0] m_2_reg_418;
wire   [31:0] mid_fu_167_p2;
reg   [31:0] mid_reg_425;
wire    ap_CS_fsm_state3;
wire   [31:0] to_fu_173_p2;
reg   [31:0] to_reg_431;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln43_fu_187_p2;
reg   [0:0] icmp_ln43_reg_436;
wire   [31:0] i_1_fu_193_p2;
wire    ap_CS_fsm_state6;
wire   [31:0] m_3_fu_214_p2;
reg   [31:0] m_3_reg_448;
wire   [31:0] mid_1_fu_224_p2;
reg   [31:0] mid_1_reg_455;
wire    ap_CS_fsm_state8;
wire   [31:0] to_1_fu_230_p2;
reg   [31:0] to_1_reg_461;
wire    ap_CS_fsm_state9;
wire   [0:0] icmp_ln43_1_fu_244_p2;
reg   [0:0] icmp_ln43_1_reg_466;
wire   [31:0] i_3_fu_250_p2;
wire    ap_CS_fsm_state11;
wire   [31:0] m_4_fu_271_p2;
reg   [31:0] m_4_reg_478;
wire   [31:0] mid_2_fu_281_p2;
reg   [31:0] mid_2_reg_485;
wire    ap_CS_fsm_state13;
wire   [31:0] to_2_fu_287_p2;
reg   [31:0] to_2_reg_491;
wire    ap_CS_fsm_state14;
wire   [0:0] icmp_ln43_2_fu_301_p2;
reg   [0:0] icmp_ln43_2_reg_496;
wire   [31:0] i_5_fu_307_p2;
wire    ap_CS_fsm_state16;
wire   [31:0] m_5_fu_343_p2;
reg   [31:0] m_5_reg_511;
wire   [31:0] mid_3_fu_353_p2;
reg   [31:0] mid_3_reg_517;
wire    ap_CS_fsm_state18;
wire   [31:0] to_3_fu_359_p2;
reg   [31:0] to_3_reg_523;
wire    ap_CS_fsm_state19;
wire   [0:0] icmp_ln43_3_fu_373_p2;
reg   [0:0] icmp_ln43_3_reg_528;
wire   [31:0] i_7_fu_379_p2;
wire    ap_CS_fsm_state21;
wire    grp_merge_fu_112_ap_start;
wire    grp_merge_fu_112_ap_done;
wire    grp_merge_fu_112_ap_idle;
wire    grp_merge_fu_112_ap_ready;
wire   [8:0] grp_merge_fu_112_a_0_address0;
wire    grp_merge_fu_112_a_0_ce0;
wire    grp_merge_fu_112_a_0_we0;
wire   [31:0] grp_merge_fu_112_a_0_d0;
wire   [8:0] grp_merge_fu_112_a_1_address0;
wire    grp_merge_fu_112_a_1_ce0;
wire    grp_merge_fu_112_a_1_we0;
wire   [31:0] grp_merge_fu_112_a_1_d0;
wire   [8:0] grp_merge_fu_112_a_2_address0;
wire    grp_merge_fu_112_a_2_ce0;
wire    grp_merge_fu_112_a_2_we0;
wire   [31:0] grp_merge_fu_112_a_2_d0;
wire   [8:0] grp_merge_fu_112_a_3_address0;
wire    grp_merge_fu_112_a_3_ce0;
wire    grp_merge_fu_112_a_3_we0;
wire   [31:0] grp_merge_fu_112_a_3_d0;
reg   [31:0] grp_merge_fu_112_start_r;
reg   [31:0] grp_merge_fu_112_m;
reg   [31:0] grp_merge_fu_112_stop;
reg   [31:0] from_reg_64;
reg    ap_block_state6_on_subcall_done;
wire   [0:0] icmp_ln39_fu_208_p2;
reg   [31:0] from_1_reg_76;
reg    ap_block_state11_on_subcall_done;
wire   [0:0] icmp_ln39_1_fu_265_p2;
reg   [31:0] from_2_reg_88;
reg    ap_predicate_op93_call_state16;
reg    ap_predicate_op95_call_state16;
reg    ap_block_state16_on_subcall_done;
wire   [0:0] icmp_ln39_2_fu_322_p2;
reg   [31:0] from_3_reg_100;
wire   [0:0] icmp_ln38_1_fu_337_p2;
reg    ap_block_state21_on_subcall_done;
wire   [0:0] icmp_ln39_3_fu_394_p2;
reg    grp_merge_fu_112_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state22;
reg   [31:0] m_fu_60;
wire   [20:0] tmp_fu_140_p4;
wire   [31:0] add_ln41_fu_162_p2;
wire   [20:0] tmp_1_fu_177_p4;
wire   [20:0] tmp_2_fu_198_p4;
wire   [31:0] add_ln41_2_fu_219_p2;
wire   [20:0] tmp_3_fu_234_p4;
wire   [20:0] tmp_4_fu_255_p4;
wire   [31:0] add_ln41_4_fu_276_p2;
wire   [20:0] tmp_5_fu_291_p4;
wire   [20:0] tmp_6_fu_312_p4;
wire   [20:0] tmp_7_fu_328_p4;
wire   [31:0] add_ln41_6_fu_348_p2;
wire   [20:0] tmp_8_fu_363_p4;
wire   [20:0] tmp_9_fu_384_p4;
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
#0 grp_merge_fu_112_ap_start_reg = 1'b0;
#0 m_fu_60 = 32'd0;
end
ms_mergesort_merge grp_merge_fu_112(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_merge_fu_112_ap_start),.ap_done(grp_merge_fu_112_ap_done),.ap_idle(grp_merge_fu_112_ap_idle),.ap_ready(grp_merge_fu_112_ap_ready),.a_0_address0(grp_merge_fu_112_a_0_address0),.a_0_ce0(grp_merge_fu_112_a_0_ce0),.a_0_we0(grp_merge_fu_112_a_0_we0),.a_0_d0(grp_merge_fu_112_a_0_d0),.a_0_q0(a_0_q0),.a_1_address0(grp_merge_fu_112_a_1_address0),.a_1_ce0(grp_merge_fu_112_a_1_ce0),.a_1_we0(grp_merge_fu_112_a_1_we0),.a_1_d0(grp_merge_fu_112_a_1_d0),.a_1_q0(a_1_q0),.a_2_address0(grp_merge_fu_112_a_2_address0),.a_2_ce0(grp_merge_fu_112_a_2_ce0),.a_2_we0(grp_merge_fu_112_a_2_we0),.a_2_d0(grp_merge_fu_112_a_2_d0),.a_2_q0(a_2_q0),.a_3_address0(grp_merge_fu_112_a_3_address0),.a_3_ce0(grp_merge_fu_112_a_3_ce0),.a_3_we0(grp_merge_fu_112_a_3_we0),.a_3_d0(grp_merge_fu_112_a_3_d0),.a_3_q0(a_3_q0),.start_r(grp_merge_fu_112_start_r),.m(grp_merge_fu_112_m),.stop(grp_merge_fu_112_stop));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_merge_fu_112_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5))) begin
            grp_merge_fu_112_ap_start_reg <= 1'b1;
        end else if ((grp_merge_fu_112_ap_ready == 1'b1)) begin
            grp_merge_fu_112_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_1_fu_265_p2 == 1'd1) & (1'b0 == ap_block_state11_on_subcall_done) & (1'b1 == ap_CS_fsm_state11))) begin
        from_1_reg_76 <= i_3_fu_250_p2;
    end else if (((icmp_ln39_fu_208_p2 == 1'd0) & (1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
        from_1_reg_76 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln38_reg_414 == 1'd1) & (icmp_ln39_2_fu_322_p2 == 1'd1) & (1'b0 == ap_block_state16_on_subcall_done) & (1'b1 == ap_CS_fsm_state16))) begin
        from_2_reg_88 <= i_5_fu_307_p2;
    end else if (((icmp_ln39_1_fu_265_p2 == 1'd0) & (1'b0 == ap_block_state11_on_subcall_done) & (1'b1 == ap_CS_fsm_state11))) begin
        from_2_reg_88 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_3_fu_394_p2 == 1'd1) & (1'b0 == ap_block_state21_on_subcall_done) & (1'b1 == ap_CS_fsm_state21))) begin
        from_3_reg_100 <= i_7_fu_379_p2;
    end else if (((icmp_ln38_reg_414 == 1'd1) & (icmp_ln38_1_fu_337_p2 == 1'd1) & (icmp_ln39_2_fu_322_p2 == 1'd0) & (1'b0 == ap_block_state16_on_subcall_done) & (1'b1 == ap_CS_fsm_state16))) begin
        from_3_reg_100 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_fu_208_p2 == 1'd1) & (1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
        from_reg_64 <= i_1_fu_193_p2;
    end else if (((icmp_ln38_fu_150_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        from_reg_64 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                m_fu_60[0] <= 1'b1;
        m_fu_60[4] <= 1'b0;
        m_fu_60[8] <= 1'b0;
        m_fu_60[12] <= 1'b0;
        m_fu_60[16] <= 1'b0;
        m_fu_60[20] <= 1'b0;
        m_fu_60[24] <= 1'b0;
        m_fu_60[28] <= 1'b0;
    end else if (((icmp_ln39_3_fu_394_p2 == 1'd0) & (1'b0 == ap_block_state21_on_subcall_done) & (1'b1 == ap_CS_fsm_state21))) begin
                m_fu_60[0] <= m_5_reg_511[0];
        m_fu_60[4] <= m_5_reg_511[4];
        m_fu_60[8] <= m_5_reg_511[8];
        m_fu_60[12] <= m_5_reg_511[12];
        m_fu_60[16] <= m_5_reg_511[16];
        m_fu_60[20] <= m_5_reg_511[20];
        m_fu_60[24] <= m_5_reg_511[24];
        m_fu_60[28] <= m_5_reg_511[28];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln38_reg_414 <= icmp_ln38_fu_150_p2;
        m_2_reg_418[1] <= m_2_fu_156_p2[1];
m_2_reg_418[5] <= m_2_fu_156_p2[5];
m_2_reg_418[9] <= m_2_fu_156_p2[9];
m_2_reg_418[13] <= m_2_fu_156_p2[13];
m_2_reg_418[17] <= m_2_fu_156_p2[17];
m_2_reg_418[21] <= m_2_fu_156_p2[21];
m_2_reg_418[25] <= m_2_fu_156_p2[25];
m_2_reg_418[29] <= m_2_fu_156_p2[29];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        icmp_ln43_1_reg_466 <= icmp_ln43_1_fu_244_p2;
        to_1_reg_461 <= to_1_fu_230_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        icmp_ln43_2_reg_496 <= icmp_ln43_2_fu_301_p2;
        to_2_reg_491 <= to_2_fu_287_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        icmp_ln43_3_reg_528 <= icmp_ln43_3_fu_373_p2;
        to_3_reg_523 <= to_3_fu_359_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln43_reg_436 <= icmp_ln43_fu_187_p2;
        to_reg_431 <= to_fu_173_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m_3_reg_448[2] <= m_3_fu_214_p2[2];
m_3_reg_448[6] <= m_3_fu_214_p2[6];
m_3_reg_448[10] <= m_3_fu_214_p2[10];
m_3_reg_448[14] <= m_3_fu_214_p2[14];
m_3_reg_448[18] <= m_3_fu_214_p2[18];
m_3_reg_448[22] <= m_3_fu_214_p2[22];
m_3_reg_448[26] <= m_3_fu_214_p2[26];
m_3_reg_448[30] <= m_3_fu_214_p2[30];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        m_4_reg_478[3] <= m_4_fu_271_p2[3];
m_4_reg_478[7] <= m_4_fu_271_p2[7];
m_4_reg_478[11] <= m_4_fu_271_p2[11];
m_4_reg_478[15] <= m_4_fu_271_p2[15];
m_4_reg_478[19] <= m_4_fu_271_p2[19];
m_4_reg_478[23] <= m_4_fu_271_p2[23];
m_4_reg_478[27] <= m_4_fu_271_p2[27];
m_4_reg_478[31] <= m_4_fu_271_p2[31];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        m_5_reg_511[4] <= m_5_fu_343_p2[4];
m_5_reg_511[8] <= m_5_fu_343_p2[8];
m_5_reg_511[12] <= m_5_fu_343_p2[12];
m_5_reg_511[16] <= m_5_fu_343_p2[16];
m_5_reg_511[20] <= m_5_fu_343_p2[20];
m_5_reg_511[24] <= m_5_fu_343_p2[24];
m_5_reg_511[28] <= m_5_fu_343_p2[28];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mid_1_reg_455 <= mid_1_fu_224_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        mid_2_reg_485 <= mid_2_fu_281_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        mid_3_reg_517 <= mid_3_fu_353_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mid_reg_425 <= mid_fu_167_p2;
    end
end
always @ (*) begin
    if ((((ap_predicate_op95_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op93_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln43_reg_436 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_436 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd0)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd0)))) begin
        a_0_ce0 = grp_merge_fu_112_a_0_ce0;
    end else begin
        a_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op95_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op93_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln43_reg_436 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_436 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd0)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd0)))) begin
        a_0_we0 = grp_merge_fu_112_a_0_we0;
    end else begin
        a_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op95_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op93_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln43_reg_436 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_436 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd0)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd0)))) begin
        a_1_ce0 = grp_merge_fu_112_a_1_ce0;
    end else begin
        a_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op95_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op93_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln43_reg_436 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_436 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd0)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd0)))) begin
        a_1_we0 = grp_merge_fu_112_a_1_we0;
    end else begin
        a_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op95_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op93_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln43_reg_436 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_436 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd0)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd0)))) begin
        a_2_ce0 = grp_merge_fu_112_a_2_ce0;
    end else begin
        a_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op95_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op93_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln43_reg_436 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_436 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd0)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd0)))) begin
        a_2_we0 = grp_merge_fu_112_a_2_we0;
    end else begin
        a_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op95_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op93_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln43_reg_436 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_436 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd0)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd0)))) begin
        a_3_ce0 = grp_merge_fu_112_a_3_ce0;
    end else begin
        a_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op95_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op93_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln43_reg_436 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_436 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd0)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd0)))) begin
        a_3_we0 = grp_merge_fu_112_a_3_we0;
    end else begin
        a_3_we0 = 1'b0;
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
    if (((1'b0 == ap_block_state16_on_subcall_done) & (1'b1 == ap_CS_fsm_state16) & ((icmp_ln38_reg_414 == 1'd0) | ((icmp_ln38_1_fu_337_p2 == 1'd0) & (icmp_ln39_2_fu_322_p2 == 1'd0))))) begin
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
    if (((1'b0 == ap_block_state16_on_subcall_done) & (1'b1 == ap_CS_fsm_state16) & ((icmp_ln38_reg_414 == 1'd0) | ((icmp_ln38_1_fu_337_p2 == 1'd0) & (icmp_ln39_2_fu_322_p2 == 1'd0))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd0)))) begin
        grp_merge_fu_112_m = mid_3_reg_517;
    end else if ((((ap_predicate_op95_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op93_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)))) begin
        grp_merge_fu_112_m = mid_2_reg_485;
    end else if ((((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd0)))) begin
        grp_merge_fu_112_m = mid_1_reg_455;
    end else if ((((icmp_ln43_reg_436 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_436 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        grp_merge_fu_112_m = mid_reg_425;
    end else begin
        grp_merge_fu_112_m = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd0)))) begin
        grp_merge_fu_112_start_r = from_3_reg_100;
    end else if ((((ap_predicate_op95_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op93_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)))) begin
        grp_merge_fu_112_start_r = from_2_reg_88;
    end else if ((((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd0)))) begin
        grp_merge_fu_112_start_r = from_1_reg_76;
    end else if ((((icmp_ln43_reg_436 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_436 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        grp_merge_fu_112_start_r = from_reg_64;
    end else begin
        grp_merge_fu_112_start_r = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd1))) begin
        grp_merge_fu_112_stop = to_3_reg_523;
    end else if (((ap_predicate_op95_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        grp_merge_fu_112_stop = to_2_reg_491;
    end else if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd1))) begin
        grp_merge_fu_112_stop = to_1_reg_461;
    end else if (((icmp_ln43_reg_436 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        grp_merge_fu_112_stop = to_reg_431;
    end else if ((((ap_predicate_op93_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln43_reg_436 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_528 == 1'd0)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_466 == 1'd0)))) begin
        grp_merge_fu_112_stop = 32'd2048;
    end else begin
        grp_merge_fu_112_stop = 'bx;
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
            if (((icmp_ln38_fu_150_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln43_fu_187_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln39_fu_208_p2 == 1'd0) & (1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else if (((icmp_ln39_fu_208_p2 == 1'd1) & (1'b0 == ap_block_state6_on_subcall_done) & (1'b1 == ap_CS_fsm_state6))) begin
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
            if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_fu_244_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((icmp_ln39_1_fu_265_p2 == 1'd0) & (1'b0 == ap_block_state11_on_subcall_done) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else if (((icmp_ln39_1_fu_265_p2 == 1'd1) & (1'b0 == ap_block_state11_on_subcall_done) & (1'b1 == ap_CS_fsm_state11))) begin
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
            if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln43_2_fu_301_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((1'b0 == ap_block_state16_on_subcall_done) & (1'b1 == ap_CS_fsm_state16) & ((icmp_ln38_reg_414 == 1'd0) | ((icmp_ln38_1_fu_337_p2 == 1'd0) & (icmp_ln39_2_fu_322_p2 == 1'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln38_reg_414 == 1'd1) & (icmp_ln38_1_fu_337_p2 == 1'd1) & (icmp_ln39_2_fu_322_p2 == 1'd0) & (1'b0 == ap_block_state16_on_subcall_done) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else if (((icmp_ln38_reg_414 == 1'd1) & (icmp_ln39_2_fu_322_p2 == 1'd1) & (1'b0 == ap_block_state16_on_subcall_done) & (1'b1 == ap_CS_fsm_state16))) begin
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
            if (((1'b1 == ap_CS_fsm_state19) & (icmp_ln43_3_fu_373_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            if (((icmp_ln39_3_fu_394_p2 == 1'd0) & (1'b0 == ap_block_state21_on_subcall_done) & (1'b1 == ap_CS_fsm_state21))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((icmp_ln39_3_fu_394_p2 == 1'd1) & (1'b0 == ap_block_state21_on_subcall_done) & (1'b1 == ap_CS_fsm_state21))) begin
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
assign a_0_address0 = grp_merge_fu_112_a_0_address0;
assign a_0_d0 = grp_merge_fu_112_a_0_d0;
assign a_1_address0 = grp_merge_fu_112_a_1_address0;
assign a_1_d0 = grp_merge_fu_112_a_1_d0;
assign a_2_address0 = grp_merge_fu_112_a_2_address0;
assign a_2_d0 = grp_merge_fu_112_a_2_d0;
assign a_3_address0 = grp_merge_fu_112_a_3_address0;
assign a_3_d0 = grp_merge_fu_112_a_3_d0;
assign add_ln41_2_fu_219_p2 = (from_1_reg_76 + m_2_reg_418);
assign add_ln41_4_fu_276_p2 = (from_2_reg_88 + m_3_reg_448);
assign add_ln41_6_fu_348_p2 = (from_3_reg_100 + m_4_reg_478);
assign add_ln41_fu_162_p2 = (from_reg_64 + m_fu_60);
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
    ap_block_state11_on_subcall_done = (((grp_merge_fu_112_ap_done == 1'b0) & (icmp_ln43_1_reg_466 == 1'd1)) | ((grp_merge_fu_112_ap_done == 1'b0) & (icmp_ln43_1_reg_466 == 1'd0)));
end
always @ (*) begin
    ap_block_state16_on_subcall_done = (((ap_predicate_op95_call_state16 == 1'b1) & (grp_merge_fu_112_ap_done == 1'b0)) | ((ap_predicate_op93_call_state16 == 1'b1) & (grp_merge_fu_112_ap_done == 1'b0)));
end
always @ (*) begin
    ap_block_state21_on_subcall_done = (((grp_merge_fu_112_ap_done == 1'b0) & (icmp_ln43_3_reg_528 == 1'd1)) | ((grp_merge_fu_112_ap_done == 1'b0) & (icmp_ln43_3_reg_528 == 1'd0)));
end
always @ (*) begin
    ap_block_state6_on_subcall_done = (((icmp_ln43_reg_436 == 1'd1) & (grp_merge_fu_112_ap_done == 1'b0)) | ((icmp_ln43_reg_436 == 1'd0) & (grp_merge_fu_112_ap_done == 1'b0)));
end
always @ (*) begin
    ap_predicate_op93_call_state16 = ((icmp_ln38_reg_414 == 1'd1) & (icmp_ln43_2_reg_496 == 1'd0));
end
always @ (*) begin
    ap_predicate_op95_call_state16 = ((icmp_ln38_reg_414 == 1'd1) & (icmp_ln43_2_reg_496 == 1'd1));
end
assign grp_merge_fu_112_ap_start = grp_merge_fu_112_ap_start_reg;
assign i_1_fu_193_p2 = (m_2_reg_418 + from_reg_64);
assign i_3_fu_250_p2 = (m_3_reg_448 + from_1_reg_76);
assign i_5_fu_307_p2 = (m_4_reg_478 + from_2_reg_88);
assign i_7_fu_379_p2 = (m_5_reg_511 + from_3_reg_100);
assign icmp_ln38_1_fu_337_p2 = (($signed(tmp_7_fu_328_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_150_p2 = (($signed(tmp_fu_140_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_1_fu_265_p2 = (($signed(tmp_4_fu_255_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_2_fu_322_p2 = (($signed(tmp_6_fu_312_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_3_fu_394_p2 = (($signed(tmp_9_fu_384_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_fu_208_p2 = (($signed(tmp_2_fu_198_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_244_p2 = (($signed(tmp_3_fu_234_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_2_fu_301_p2 = (($signed(tmp_5_fu_291_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_3_fu_373_p2 = (($signed(tmp_8_fu_363_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_187_p2 = (($signed(tmp_1_fu_177_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign m_2_fu_156_p2 = m_fu_60 << 32'd1;
assign m_3_fu_214_p2 = m_fu_60 << 32'd2;
assign m_4_fu_271_p2 = m_fu_60 << 32'd3;
assign m_5_fu_343_p2 = m_fu_60 << 32'd4;
assign mid_1_fu_224_p2 = ($signed(add_ln41_2_fu_219_p2) + $signed(32'd4294967295));
assign mid_2_fu_281_p2 = ($signed(add_ln41_4_fu_276_p2) + $signed(32'd4294967295));
assign mid_3_fu_353_p2 = ($signed(add_ln41_6_fu_348_p2) + $signed(32'd4294967295));
assign mid_fu_167_p2 = ($signed(add_ln41_fu_162_p2) + $signed(32'd4294967295));
assign tmp_1_fu_177_p4 = {{to_fu_173_p2[31:11]}};
assign tmp_2_fu_198_p4 = {{i_1_fu_193_p2[31:11]}};
assign tmp_3_fu_234_p4 = {{to_1_fu_230_p2[31:11]}};
assign tmp_4_fu_255_p4 = {{i_3_fu_250_p2[31:11]}};
assign tmp_5_fu_291_p4 = {{to_2_fu_287_p2[31:11]}};
assign tmp_6_fu_312_p4 = {{i_5_fu_307_p2[31:11]}};
assign tmp_7_fu_328_p4 = {{m_fu_60[28:8]}};
assign tmp_8_fu_363_p4 = {{to_3_fu_359_p2[31:11]}};
assign tmp_9_fu_384_p4 = {{i_7_fu_379_p2[31:11]}};
assign tmp_fu_140_p4 = {{m_fu_60[31:11]}};
assign to_1_fu_230_p2 = (mid_1_reg_455 + m_2_reg_418);
assign to_2_fu_287_p2 = (mid_2_reg_485 + m_3_reg_448);
assign to_3_fu_359_p2 = (mid_3_reg_517 + m_4_reg_478);
assign to_fu_173_p2 = (mid_reg_425 + m_fu_60);
always @ (posedge ap_clk) begin
    m_2_reg_418[0] <= 1'b0;
    m_2_reg_418[4:2] <= 3'b000;
    m_2_reg_418[8:6] <= 3'b000;
    m_2_reg_418[12:10] <= 3'b000;
    m_2_reg_418[16:14] <= 3'b000;
    m_2_reg_418[20:18] <= 3'b000;
    m_2_reg_418[24:22] <= 3'b000;
    m_2_reg_418[28:26] <= 3'b000;
    m_2_reg_418[31:30] <= 2'b00;
    m_3_reg_448[1:0] <= 2'b00;
    m_3_reg_448[5:3] <= 3'b000;
    m_3_reg_448[9:7] <= 3'b000;
    m_3_reg_448[13:11] <= 3'b000;
    m_3_reg_448[17:15] <= 3'b000;
    m_3_reg_448[21:19] <= 3'b000;
    m_3_reg_448[25:23] <= 3'b000;
    m_3_reg_448[29:27] <= 3'b000;
    m_3_reg_448[31] <= 1'b0;
    m_4_reg_478[2:0] <= 3'b000;
    m_4_reg_478[6:4] <= 3'b000;
    m_4_reg_478[10:8] <= 3'b000;
    m_4_reg_478[14:12] <= 3'b000;
    m_4_reg_478[18:16] <= 3'b000;
    m_4_reg_478[22:20] <= 3'b000;
    m_4_reg_478[26:24] <= 3'b000;
    m_4_reg_478[30:28] <= 3'b000;
    m_5_reg_511[3:0] <= 4'b0000;
    m_5_reg_511[7:5] <= 3'b000;
    m_5_reg_511[11:9] <= 3'b000;
    m_5_reg_511[15:13] <= 3'b000;
    m_5_reg_511[19:17] <= 3'b000;
    m_5_reg_511[23:21] <= 3'b000;
    m_5_reg_511[27:25] <= 3'b000;
    m_5_reg_511[31:29] <= 3'b000;
    m_fu_60[3:1] <= 3'b000;
    m_fu_60[7:5] <= 3'b000;
    m_fu_60[11:9] <= 3'b000;
    m_fu_60[15:13] <= 3'b000;
    m_fu_60[19:17] <= 3'b000;
    m_fu_60[23:21] <= 3'b000;
    m_fu_60[27:25] <= 3'b000;
    m_fu_60[31:29] <= 3'b000;
end
endmodule 