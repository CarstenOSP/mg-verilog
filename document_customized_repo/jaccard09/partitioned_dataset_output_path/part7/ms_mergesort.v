
module ms_mergesort (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_0_q0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,a_1_q0);  
parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_state11 = 14'd1024;
parameter    ap_ST_fsm_state12 = 14'd2048;
parameter    ap_ST_fsm_state13 = 14'd4096;
parameter    ap_ST_fsm_state14 = 14'd8192;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
input  [31:0] a_0_q0;
output  [9:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
input  [31:0] a_1_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_0_ce0;
reg a_0_we0;
reg a_1_ce0;
reg a_1_we0;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln38_fu_142_p2;
reg   [0:0] icmp_ln38_reg_410;
wire    ap_CS_fsm_state2;
wire   [31:0] m_2_fu_148_p2;
reg   [31:0] m_2_reg_414;
wire   [31:0] mid_fu_159_p2;
reg   [31:0] mid_reg_421;
wire    ap_CS_fsm_state3;
wire   [31:0] to_fu_165_p2;
reg   [31:0] to_reg_427;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln43_fu_180_p2;
reg   [0:0] icmp_ln43_reg_432;
wire   [31:0] i_1_fu_186_p2;
wire    ap_CS_fsm_state5;
wire   [31:0] m_3_fu_207_p2;
reg   [31:0] m_3_reg_444;
wire   [31:0] mid_1_fu_217_p2;
reg   [31:0] mid_1_reg_451;
wire    ap_CS_fsm_state6;
wire   [31:0] to_1_fu_223_p2;
reg   [31:0] to_1_reg_457;
wire    ap_CS_fsm_state7;
wire   [0:0] icmp_ln43_1_fu_238_p2;
reg   [0:0] icmp_ln43_1_reg_462;
wire   [31:0] i_3_fu_244_p2;
wire    ap_CS_fsm_state8;
wire   [31:0] m_4_fu_265_p2;
reg   [31:0] m_4_reg_474;
wire   [31:0] mid_2_fu_275_p2;
reg   [31:0] mid_2_reg_481;
wire    ap_CS_fsm_state9;
wire   [31:0] to_2_fu_281_p2;
reg   [31:0] to_2_reg_487;
wire    ap_CS_fsm_state10;
wire   [0:0] icmp_ln43_2_fu_296_p2;
reg   [0:0] icmp_ln43_2_reg_492;
wire   [31:0] i_5_fu_302_p2;
wire    ap_CS_fsm_state11;
wire   [31:0] m_5_fu_338_p2;
reg   [31:0] m_5_reg_507;
wire   [31:0] mid_3_fu_348_p2;
reg   [31:0] mid_3_reg_513;
wire    ap_CS_fsm_state12;
wire   [31:0] to_3_fu_354_p2;
reg   [31:0] to_3_reg_519;
wire    ap_CS_fsm_state13;
wire   [0:0] icmp_ln43_3_fu_369_p2;
reg   [0:0] icmp_ln43_3_reg_524;
wire   [31:0] i_7_fu_375_p2;
wire    ap_CS_fsm_state14;
wire    grp_merge_fu_108_ap_start;
wire    grp_merge_fu_108_ap_done;
wire    grp_merge_fu_108_ap_idle;
wire    grp_merge_fu_108_ap_ready;
wire   [9:0] grp_merge_fu_108_a_0_address0;
wire    grp_merge_fu_108_a_0_ce0;
wire    grp_merge_fu_108_a_0_we0;
wire   [31:0] grp_merge_fu_108_a_0_d0;
wire   [9:0] grp_merge_fu_108_a_1_address0;
wire    grp_merge_fu_108_a_1_ce0;
wire    grp_merge_fu_108_a_1_we0;
wire   [31:0] grp_merge_fu_108_a_1_d0;
reg   [31:0] grp_merge_fu_108_start_r;
reg   [31:0] grp_merge_fu_108_m;
reg   [31:0] grp_merge_fu_108_stop;
reg   [31:0] from_reg_60;
reg    ap_block_state5_on_subcall_done;
wire   [0:0] icmp_ln39_fu_201_p2;
reg   [31:0] from_1_reg_72;
reg    ap_block_state8_on_subcall_done;
wire   [0:0] icmp_ln39_1_fu_259_p2;
reg   [31:0] from_2_reg_84;
reg    ap_predicate_op82_call_state11;
reg    ap_predicate_op84_call_state11;
reg    ap_block_state11_on_subcall_done;
wire   [0:0] icmp_ln39_2_fu_317_p2;
reg   [31:0] from_3_reg_96;
wire   [0:0] icmp_ln38_1_fu_332_p2;
reg    ap_block_state14_on_subcall_done;
wire   [0:0] icmp_ln39_3_fu_390_p2;
reg    grp_merge_fu_108_ap_start_reg;
reg   [31:0] m_fu_56;
wire   [20:0] tmp_fu_132_p4;
wire   [31:0] add_ln41_fu_154_p2;
wire   [20:0] tmp_1_fu_170_p4;
wire   [20:0] tmp_2_fu_191_p4;
wire   [31:0] add_ln41_2_fu_212_p2;
wire   [20:0] tmp_3_fu_228_p4;
wire   [20:0] tmp_4_fu_249_p4;
wire   [31:0] add_ln41_4_fu_270_p2;
wire   [20:0] tmp_5_fu_286_p4;
wire   [20:0] tmp_6_fu_307_p4;
wire   [20:0] tmp_7_fu_323_p4;
wire   [31:0] add_ln41_6_fu_343_p2;
wire   [20:0] tmp_8_fu_359_p4;
wire   [20:0] tmp_9_fu_380_p4;
reg   [13:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
reg    ap_ST_fsm_state14_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 grp_merge_fu_108_ap_start_reg = 1'b0;
#0 m_fu_56 = 32'd0;
end
ms_mergesort_merge grp_merge_fu_108(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_merge_fu_108_ap_start),.ap_done(grp_merge_fu_108_ap_done),.ap_idle(grp_merge_fu_108_ap_idle),.ap_ready(grp_merge_fu_108_ap_ready),.a_0_address0(grp_merge_fu_108_a_0_address0),.a_0_ce0(grp_merge_fu_108_a_0_ce0),.a_0_we0(grp_merge_fu_108_a_0_we0),.a_0_d0(grp_merge_fu_108_a_0_d0),.a_0_q0(a_0_q0),.a_1_address0(grp_merge_fu_108_a_1_address0),.a_1_ce0(grp_merge_fu_108_a_1_ce0),.a_1_we0(grp_merge_fu_108_a_1_we0),.a_1_d0(grp_merge_fu_108_a_1_d0),.a_1_q0(a_1_q0),.start_r(grp_merge_fu_108_start_r),.m(grp_merge_fu_108_m),.stop(grp_merge_fu_108_stop));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_merge_fu_108_ap_start_reg <= 1'b0;
    end else begin
        if ((((icmp_ln43_1_fu_238_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7)) | ((icmp_ln43_1_fu_238_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)) | ((icmp_ln43_fu_180_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln43_fu_180_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((1'b1 == ap_CS_fsm_state13) & (icmp_ln43_3_fu_369_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state13) & (icmp_ln43_3_fu_369_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state10) & (icmp_ln43_2_fu_296_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state10) & (icmp_ln43_2_fu_296_p2 == 1'd0)))) begin
            grp_merge_fu_108_ap_start_reg <= 1'b1;
        end else if ((grp_merge_fu_108_ap_ready == 1'b1)) begin
            grp_merge_fu_108_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_1_fu_259_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8) & (1'b0 == ap_block_state8_on_subcall_done))) begin
        from_1_reg_72 <= i_3_fu_244_p2;
    end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln39_fu_201_p2 == 1'd0) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        from_1_reg_72 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln38_reg_410 == 1'd1) & (icmp_ln39_2_fu_317_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11) & (1'b0 == ap_block_state11_on_subcall_done))) begin
        from_2_reg_84 <= i_5_fu_302_p2;
    end else if (((icmp_ln39_1_fu_259_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8) & (1'b0 == ap_block_state8_on_subcall_done))) begin
        from_2_reg_84 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_3_fu_390_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14) & (1'b0 == ap_block_state14_on_subcall_done))) begin
        from_3_reg_96 <= i_7_fu_375_p2;
    end else if (((icmp_ln38_reg_410 == 1'd1) & (icmp_ln38_1_fu_332_p2 == 1'd1) & (icmp_ln39_2_fu_317_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11) & (1'b0 == ap_block_state11_on_subcall_done))) begin
        from_3_reg_96 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln39_fu_201_p2 == 1'd1) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        from_reg_60 <= i_1_fu_186_p2;
    end else if (((icmp_ln38_fu_142_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        from_reg_60 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                m_fu_56[0] <= 1'b1;
        m_fu_56[4] <= 1'b0;
        m_fu_56[8] <= 1'b0;
        m_fu_56[12] <= 1'b0;
        m_fu_56[16] <= 1'b0;
        m_fu_56[20] <= 1'b0;
        m_fu_56[24] <= 1'b0;
        m_fu_56[28] <= 1'b0;
    end else if (((icmp_ln39_3_fu_390_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state14) & (1'b0 == ap_block_state14_on_subcall_done))) begin
                m_fu_56[0] <= m_5_reg_507[0];
        m_fu_56[4] <= m_5_reg_507[4];
        m_fu_56[8] <= m_5_reg_507[8];
        m_fu_56[12] <= m_5_reg_507[12];
        m_fu_56[16] <= m_5_reg_507[16];
        m_fu_56[20] <= m_5_reg_507[20];
        m_fu_56[24] <= m_5_reg_507[24];
        m_fu_56[28] <= m_5_reg_507[28];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln38_reg_410 <= icmp_ln38_fu_142_p2;
        m_2_reg_414[1] <= m_2_fu_148_p2[1];
m_2_reg_414[5] <= m_2_fu_148_p2[5];
m_2_reg_414[9] <= m_2_fu_148_p2[9];
m_2_reg_414[13] <= m_2_fu_148_p2[13];
m_2_reg_414[17] <= m_2_fu_148_p2[17];
m_2_reg_414[21] <= m_2_fu_148_p2[21];
m_2_reg_414[25] <= m_2_fu_148_p2[25];
m_2_reg_414[29] <= m_2_fu_148_p2[29];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        icmp_ln43_1_reg_462 <= icmp_ln43_1_fu_238_p2;
        to_1_reg_457 <= to_1_fu_223_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        icmp_ln43_2_reg_492 <= icmp_ln43_2_fu_296_p2;
        to_2_reg_487 <= to_2_fu_281_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        icmp_ln43_3_reg_524 <= icmp_ln43_3_fu_369_p2;
        to_3_reg_519 <= to_3_fu_354_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln43_reg_432 <= icmp_ln43_fu_180_p2;
        to_reg_427 <= to_fu_165_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        m_3_reg_444[2] <= m_3_fu_207_p2[2];
m_3_reg_444[6] <= m_3_fu_207_p2[6];
m_3_reg_444[10] <= m_3_fu_207_p2[10];
m_3_reg_444[14] <= m_3_fu_207_p2[14];
m_3_reg_444[18] <= m_3_fu_207_p2[18];
m_3_reg_444[22] <= m_3_fu_207_p2[22];
m_3_reg_444[26] <= m_3_fu_207_p2[26];
m_3_reg_444[30] <= m_3_fu_207_p2[30];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        m_4_reg_474[3] <= m_4_fu_265_p2[3];
m_4_reg_474[7] <= m_4_fu_265_p2[7];
m_4_reg_474[11] <= m_4_fu_265_p2[11];
m_4_reg_474[15] <= m_4_fu_265_p2[15];
m_4_reg_474[19] <= m_4_fu_265_p2[19];
m_4_reg_474[23] <= m_4_fu_265_p2[23];
m_4_reg_474[27] <= m_4_fu_265_p2[27];
m_4_reg_474[31] <= m_4_fu_265_p2[31];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        m_5_reg_507[4] <= m_5_fu_338_p2[4];
m_5_reg_507[8] <= m_5_fu_338_p2[8];
m_5_reg_507[12] <= m_5_fu_338_p2[12];
m_5_reg_507[16] <= m_5_fu_338_p2[16];
m_5_reg_507[20] <= m_5_fu_338_p2[20];
m_5_reg_507[24] <= m_5_fu_338_p2[24];
m_5_reg_507[28] <= m_5_fu_338_p2[28];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        mid_1_reg_451 <= mid_1_fu_217_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        mid_2_reg_481 <= mid_2_fu_275_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        mid_3_reg_513 <= mid_3_fu_348_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mid_reg_421 <= mid_fu_159_p2;
    end
end
always @ (*) begin
    if ((((ap_predicate_op84_call_state11 == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((ap_predicate_op82_call_state11 == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((icmp_ln43_1_reg_462 == 1'd1) & (1'b1 == ap_CS_fsm_state8)) | ((icmp_ln43_1_reg_462 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | ((icmp_ln43_reg_432 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln43_reg_432 == 1'd0) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state14) & (icmp_ln43_3_reg_524 == 1'd1)) | ((1'b1 == ap_CS_fsm_state14) & (icmp_ln43_3_reg_524 == 1'd0)))) begin
        a_0_ce0 = grp_merge_fu_108_a_0_ce0;
    end else begin
        a_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op84_call_state11 == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((ap_predicate_op82_call_state11 == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((icmp_ln43_1_reg_462 == 1'd1) & (1'b1 == ap_CS_fsm_state8)) | ((icmp_ln43_1_reg_462 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | ((icmp_ln43_reg_432 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln43_reg_432 == 1'd0) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state14) & (icmp_ln43_3_reg_524 == 1'd1)) | ((1'b1 == ap_CS_fsm_state14) & (icmp_ln43_3_reg_524 == 1'd0)))) begin
        a_0_we0 = grp_merge_fu_108_a_0_we0;
    end else begin
        a_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op84_call_state11 == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((ap_predicate_op82_call_state11 == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((icmp_ln43_1_reg_462 == 1'd1) & (1'b1 == ap_CS_fsm_state8)) | ((icmp_ln43_1_reg_462 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | ((icmp_ln43_reg_432 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln43_reg_432 == 1'd0) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state14) & (icmp_ln43_3_reg_524 == 1'd1)) | ((1'b1 == ap_CS_fsm_state14) & (icmp_ln43_3_reg_524 == 1'd0)))) begin
        a_1_ce0 = grp_merge_fu_108_a_1_ce0;
    end else begin
        a_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op84_call_state11 == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((ap_predicate_op82_call_state11 == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((icmp_ln43_1_reg_462 == 1'd1) & (1'b1 == ap_CS_fsm_state8)) | ((icmp_ln43_1_reg_462 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | ((icmp_ln43_reg_432 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln43_reg_432 == 1'd0) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state14) & (icmp_ln43_3_reg_524 == 1'd1)) | ((1'b1 == ap_CS_fsm_state14) & (icmp_ln43_3_reg_524 == 1'd0)))) begin
        a_1_we0 = grp_merge_fu_108_a_1_we0;
    end else begin
        a_1_we0 = 1'b0;
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
always @ (*) begin
    if ((1'b1 == ap_block_state14_on_subcall_done)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
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
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (1'b0 == ap_block_state11_on_subcall_done) & ((icmp_ln38_reg_410 == 1'd0) | ((icmp_ln38_1_fu_332_p2 == 1'd0) & (icmp_ln39_2_fu_317_p2 == 1'd0))))) begin
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
    if (((1'b1 == ap_CS_fsm_state11) & (1'b0 == ap_block_state11_on_subcall_done) & ((icmp_ln38_reg_410 == 1'd0) | ((icmp_ln38_1_fu_332_p2 == 1'd0) & (icmp_ln39_2_fu_317_p2 == 1'd0))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state14) & (icmp_ln43_3_reg_524 == 1'd1)) | ((1'b1 == ap_CS_fsm_state14) & (icmp_ln43_3_reg_524 == 1'd0)))) begin
        grp_merge_fu_108_m = mid_3_reg_513;
    end else if ((((ap_predicate_op84_call_state11 == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((ap_predicate_op82_call_state11 == 1'b1) & (1'b1 == ap_CS_fsm_state11)))) begin
        grp_merge_fu_108_m = mid_2_reg_481;
    end else if ((((icmp_ln43_1_reg_462 == 1'd1) & (1'b1 == ap_CS_fsm_state8)) | ((icmp_ln43_1_reg_462 == 1'd0) & (1'b1 == ap_CS_fsm_state8)))) begin
        grp_merge_fu_108_m = mid_1_reg_451;
    end else if ((((icmp_ln43_reg_432 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln43_reg_432 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        grp_merge_fu_108_m = mid_reg_421;
    end else begin
        grp_merge_fu_108_m = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state14) & (icmp_ln43_3_reg_524 == 1'd1)) | ((1'b1 == ap_CS_fsm_state14) & (icmp_ln43_3_reg_524 == 1'd0)))) begin
        grp_merge_fu_108_start_r = from_3_reg_96;
    end else if ((((ap_predicate_op84_call_state11 == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((ap_predicate_op82_call_state11 == 1'b1) & (1'b1 == ap_CS_fsm_state11)))) begin
        grp_merge_fu_108_start_r = from_2_reg_84;
    end else if ((((icmp_ln43_1_reg_462 == 1'd1) & (1'b1 == ap_CS_fsm_state8)) | ((icmp_ln43_1_reg_462 == 1'd0) & (1'b1 == ap_CS_fsm_state8)))) begin
        grp_merge_fu_108_start_r = from_1_reg_72;
    end else if ((((icmp_ln43_reg_432 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln43_reg_432 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        grp_merge_fu_108_start_r = from_reg_60;
    end else begin
        grp_merge_fu_108_start_r = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln43_3_reg_524 == 1'd1))) begin
        grp_merge_fu_108_stop = to_3_reg_519;
    end else if (((ap_predicate_op84_call_state11 == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        grp_merge_fu_108_stop = to_2_reg_487;
    end else if (((icmp_ln43_1_reg_462 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        grp_merge_fu_108_stop = to_1_reg_457;
    end else if (((icmp_ln43_reg_432 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        grp_merge_fu_108_stop = to_reg_427;
    end else if ((((ap_predicate_op82_call_state11 == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((icmp_ln43_1_reg_462 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | ((icmp_ln43_reg_432 == 1'd0) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state14) & (icmp_ln43_3_reg_524 == 1'd0)))) begin
        grp_merge_fu_108_stop = 32'd2048;
    end else begin
        grp_merge_fu_108_stop = 'bx;
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
            if (((icmp_ln38_fu_142_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln39_fu_201_p2 == 1'd0) & (1'b0 == ap_block_state5_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln39_fu_201_p2 == 1'd1) & (1'b0 == ap_block_state5_on_subcall_done))) begin
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
            if (((icmp_ln39_1_fu_259_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8) & (1'b0 == ap_block_state8_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else if (((icmp_ln39_1_fu_259_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8) & (1'b0 == ap_block_state8_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (1'b0 == ap_block_state11_on_subcall_done) & ((icmp_ln38_reg_410 == 1'd0) | ((icmp_ln38_1_fu_332_p2 == 1'd0) & (icmp_ln39_2_fu_317_p2 == 1'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln38_reg_410 == 1'd1) & (icmp_ln38_1_fu_332_p2 == 1'd1) & (icmp_ln39_2_fu_317_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11) & (1'b0 == ap_block_state11_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else if (((icmp_ln38_reg_410 == 1'd1) & (icmp_ln39_2_fu_317_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11) & (1'b0 == ap_block_state11_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((icmp_ln39_3_fu_390_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state14) & (1'b0 == ap_block_state14_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((icmp_ln39_3_fu_390_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14) & (1'b0 == ap_block_state14_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_0_address0 = grp_merge_fu_108_a_0_address0;
assign a_0_d0 = grp_merge_fu_108_a_0_d0;
assign a_1_address0 = grp_merge_fu_108_a_1_address0;
assign a_1_d0 = grp_merge_fu_108_a_1_d0;
assign add_ln41_2_fu_212_p2 = (from_1_reg_72 + m_2_reg_414);
assign add_ln41_4_fu_270_p2 = (from_2_reg_84 + m_3_reg_444);
assign add_ln41_6_fu_343_p2 = (from_3_reg_96 + m_4_reg_474);
assign add_ln41_fu_154_p2 = (from_reg_60 + m_fu_56);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state11_on_subcall_done = (((ap_predicate_op84_call_state11 == 1'b1) & (grp_merge_fu_108_ap_done == 1'b0)) | ((ap_predicate_op82_call_state11 == 1'b1) & (grp_merge_fu_108_ap_done == 1'b0)));
end
always @ (*) begin
    ap_block_state14_on_subcall_done = (((grp_merge_fu_108_ap_done == 1'b0) & (icmp_ln43_3_reg_524 == 1'd1)) | ((grp_merge_fu_108_ap_done == 1'b0) & (icmp_ln43_3_reg_524 == 1'd0)));
end
always @ (*) begin
    ap_block_state5_on_subcall_done = (((icmp_ln43_reg_432 == 1'd1) & (grp_merge_fu_108_ap_done == 1'b0)) | ((icmp_ln43_reg_432 == 1'd0) & (grp_merge_fu_108_ap_done == 1'b0)));
end
always @ (*) begin
    ap_block_state8_on_subcall_done = (((icmp_ln43_1_reg_462 == 1'd1) & (grp_merge_fu_108_ap_done == 1'b0)) | ((icmp_ln43_1_reg_462 == 1'd0) & (grp_merge_fu_108_ap_done == 1'b0)));
end
always @ (*) begin
    ap_predicate_op82_call_state11 = ((icmp_ln38_reg_410 == 1'd1) & (icmp_ln43_2_reg_492 == 1'd0));
end
always @ (*) begin
    ap_predicate_op84_call_state11 = ((icmp_ln38_reg_410 == 1'd1) & (icmp_ln43_2_reg_492 == 1'd1));
end
assign grp_merge_fu_108_ap_start = grp_merge_fu_108_ap_start_reg;
assign i_1_fu_186_p2 = (m_2_reg_414 + from_reg_60);
assign i_3_fu_244_p2 = (m_3_reg_444 + from_1_reg_72);
assign i_5_fu_302_p2 = (m_4_reg_474 + from_2_reg_84);
assign i_7_fu_375_p2 = (m_5_reg_507 + from_3_reg_96);
assign icmp_ln38_1_fu_332_p2 = (($signed(tmp_7_fu_323_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_142_p2 = (($signed(tmp_fu_132_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_1_fu_259_p2 = (($signed(tmp_4_fu_249_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_2_fu_317_p2 = (($signed(tmp_6_fu_307_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_3_fu_390_p2 = (($signed(tmp_9_fu_380_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_fu_201_p2 = (($signed(tmp_2_fu_191_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_238_p2 = (($signed(tmp_3_fu_228_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_2_fu_296_p2 = (($signed(tmp_5_fu_286_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_3_fu_369_p2 = (($signed(tmp_8_fu_359_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_180_p2 = (($signed(tmp_1_fu_170_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign m_2_fu_148_p2 = m_fu_56 << 32'd1;
assign m_3_fu_207_p2 = m_fu_56 << 32'd2;
assign m_4_fu_265_p2 = m_fu_56 << 32'd3;
assign m_5_fu_338_p2 = m_fu_56 << 32'd4;
assign mid_1_fu_217_p2 = ($signed(add_ln41_2_fu_212_p2) + $signed(32'd4294967295));
assign mid_2_fu_275_p2 = ($signed(add_ln41_4_fu_270_p2) + $signed(32'd4294967295));
assign mid_3_fu_348_p2 = ($signed(add_ln41_6_fu_343_p2) + $signed(32'd4294967295));
assign mid_fu_159_p2 = ($signed(add_ln41_fu_154_p2) + $signed(32'd4294967295));
assign tmp_1_fu_170_p4 = {{to_fu_165_p2[31:11]}};
assign tmp_2_fu_191_p4 = {{i_1_fu_186_p2[31:11]}};
assign tmp_3_fu_228_p4 = {{to_1_fu_223_p2[31:11]}};
assign tmp_4_fu_249_p4 = {{i_3_fu_244_p2[31:11]}};
assign tmp_5_fu_286_p4 = {{to_2_fu_281_p2[31:11]}};
assign tmp_6_fu_307_p4 = {{i_5_fu_302_p2[31:11]}};
assign tmp_7_fu_323_p4 = {{m_fu_56[28:8]}};
assign tmp_8_fu_359_p4 = {{to_3_fu_354_p2[31:11]}};
assign tmp_9_fu_380_p4 = {{i_7_fu_375_p2[31:11]}};
assign tmp_fu_132_p4 = {{m_fu_56[31:11]}};
assign to_1_fu_223_p2 = (mid_1_reg_451 + m_2_reg_414);
assign to_2_fu_281_p2 = (mid_2_reg_481 + m_3_reg_444);
assign to_3_fu_354_p2 = (mid_3_reg_513 + m_4_reg_474);
assign to_fu_165_p2 = (mid_reg_421 + m_fu_56);
always @ (posedge ap_clk) begin
    m_2_reg_414[0] <= 1'b0;
    m_2_reg_414[4:2] <= 3'b000;
    m_2_reg_414[8:6] <= 3'b000;
    m_2_reg_414[12:10] <= 3'b000;
    m_2_reg_414[16:14] <= 3'b000;
    m_2_reg_414[20:18] <= 3'b000;
    m_2_reg_414[24:22] <= 3'b000;
    m_2_reg_414[28:26] <= 3'b000;
    m_2_reg_414[31:30] <= 2'b00;
    m_3_reg_444[1:0] <= 2'b00;
    m_3_reg_444[5:3] <= 3'b000;
    m_3_reg_444[9:7] <= 3'b000;
    m_3_reg_444[13:11] <= 3'b000;
    m_3_reg_444[17:15] <= 3'b000;
    m_3_reg_444[21:19] <= 3'b000;
    m_3_reg_444[25:23] <= 3'b000;
    m_3_reg_444[29:27] <= 3'b000;
    m_3_reg_444[31] <= 1'b0;
    m_4_reg_474[2:0] <= 3'b000;
    m_4_reg_474[6:4] <= 3'b000;
    m_4_reg_474[10:8] <= 3'b000;
    m_4_reg_474[14:12] <= 3'b000;
    m_4_reg_474[18:16] <= 3'b000;
    m_4_reg_474[22:20] <= 3'b000;
    m_4_reg_474[26:24] <= 3'b000;
    m_4_reg_474[30:28] <= 3'b000;
    m_5_reg_507[3:0] <= 4'b0000;
    m_5_reg_507[7:5] <= 3'b000;
    m_5_reg_507[11:9] <= 3'b000;
    m_5_reg_507[15:13] <= 3'b000;
    m_5_reg_507[19:17] <= 3'b000;
    m_5_reg_507[23:21] <= 3'b000;
    m_5_reg_507[27:25] <= 3'b000;
    m_5_reg_507[31:29] <= 3'b000;
    m_fu_56[3:1] <= 3'b000;
    m_fu_56[7:5] <= 3'b000;
    m_fu_56[11:9] <= 3'b000;
    m_fu_56[15:13] <= 3'b000;
    m_fu_56[19:17] <= 3'b000;
    m_fu_56[23:21] <= 3'b000;
    m_fu_56[27:25] <= 3'b000;
    m_fu_56[31:29] <= 3'b000;
end
endmodule 
