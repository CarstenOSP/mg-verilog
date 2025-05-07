module ms_mergesort (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_0_q0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,a_1_q0); 
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
(* fsm_encoding = "none" *) reg   [21:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln38_fu_142_p2;
reg   [0:0] icmp_ln38_reg_406;
wire    ap_CS_fsm_state2;
wire   [31:0] m_2_fu_148_p2;
reg   [31:0] m_2_reg_410;
wire   [31:0] mid_fu_159_p2;
reg   [31:0] mid_reg_417;
wire    ap_CS_fsm_state3;
wire   [31:0] to_fu_165_p2;
reg   [31:0] to_reg_423;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln43_fu_179_p2;
reg   [0:0] icmp_ln43_reg_428;
wire   [31:0] i_1_fu_185_p2;
wire    ap_CS_fsm_state6;
wire   [31:0] m_3_fu_206_p2;
reg   [31:0] m_3_reg_440;
wire   [31:0] mid_1_fu_216_p2;
reg   [31:0] mid_1_reg_447;
wire    ap_CS_fsm_state8;
wire   [31:0] to_1_fu_222_p2;
reg   [31:0] to_1_reg_453;
wire    ap_CS_fsm_state9;
wire   [0:0] icmp_ln43_1_fu_236_p2;
reg   [0:0] icmp_ln43_1_reg_458;
wire   [31:0] i_3_fu_242_p2;
wire    ap_CS_fsm_state11;
wire   [31:0] m_4_fu_263_p2;
reg   [31:0] m_4_reg_470;
wire   [31:0] mid_2_fu_273_p2;
reg   [31:0] mid_2_reg_477;
wire    ap_CS_fsm_state13;
wire   [31:0] to_2_fu_279_p2;
reg   [31:0] to_2_reg_483;
wire    ap_CS_fsm_state14;
wire   [0:0] icmp_ln43_2_fu_293_p2;
reg   [0:0] icmp_ln43_2_reg_488;
wire   [31:0] i_5_fu_299_p2;
wire    ap_CS_fsm_state16;
wire   [31:0] m_5_fu_335_p2;
reg   [31:0] m_5_reg_503;
wire   [31:0] mid_3_fu_345_p2;
reg   [31:0] mid_3_reg_509;
wire    ap_CS_fsm_state18;
wire   [31:0] to_3_fu_351_p2;
reg   [31:0] to_3_reg_515;
wire    ap_CS_fsm_state19;
wire   [0:0] icmp_ln43_3_fu_365_p2;
reg   [0:0] icmp_ln43_3_reg_520;
wire   [31:0] i_7_fu_371_p2;
wire    ap_CS_fsm_state21;
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
reg    ap_block_state6_on_subcall_done;
wire   [0:0] icmp_ln39_fu_200_p2;
reg   [31:0] from_1_reg_72;
reg    ap_block_state11_on_subcall_done;
wire   [0:0] icmp_ln39_1_fu_257_p2;
reg   [31:0] from_2_reg_84;
reg    ap_predicate_op89_call_state16;
reg    ap_predicate_op91_call_state16;
reg    ap_block_state16_on_subcall_done;
wire   [0:0] icmp_ln39_2_fu_314_p2;
reg   [31:0] from_3_reg_96;
wire   [0:0] icmp_ln38_1_fu_329_p2;
reg    ap_block_state21_on_subcall_done;
wire   [0:0] icmp_ln39_3_fu_386_p2;
reg    grp_merge_fu_108_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state22;
reg   [31:0] m_fu_56;
wire   [20:0] tmp_fu_132_p4;
wire   [31:0] add_ln41_fu_154_p2;
wire   [20:0] tmp_1_fu_169_p4;
wire   [20:0] tmp_2_fu_190_p4;
wire   [31:0] add_ln41_2_fu_211_p2;
wire   [20:0] tmp_3_fu_226_p4;
wire   [20:0] tmp_4_fu_247_p4;
wire   [31:0] add_ln41_4_fu_268_p2;
wire   [20:0] tmp_5_fu_283_p4;
wire   [20:0] tmp_6_fu_304_p4;
wire   [20:0] tmp_7_fu_320_p4;
wire   [31:0] add_ln41_6_fu_340_p2;
wire   [20:0] tmp_8_fu_355_p4;
wire   [20:0] tmp_9_fu_376_p4;
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
        if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5))) begin
            grp_merge_fu_108_ap_start_reg <= 1'b1;
        end else if ((grp_merge_fu_108_ap_ready == 1'b1)) begin
            grp_merge_fu_108_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_1_fu_257_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11) & (1'b0 == ap_block_state11_on_subcall_done))) begin
        from_1_reg_72 <= i_3_fu_242_p2;
    end else if (((icmp_ln39_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
        from_1_reg_72 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln38_reg_406 == 1'd1) & (icmp_ln39_2_fu_314_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state16) & (1'b0 == ap_block_state16_on_subcall_done))) begin
        from_2_reg_84 <= i_5_fu_299_p2;
    end else if (((icmp_ln39_1_fu_257_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11) & (1'b0 == ap_block_state11_on_subcall_done))) begin
        from_2_reg_84 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_3_fu_386_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state21) & (1'b0 == ap_block_state21_on_subcall_done))) begin
        from_3_reg_96 <= i_7_fu_371_p2;
    end else if (((icmp_ln38_reg_406 == 1'd1) & (icmp_ln38_1_fu_329_p2 == 1'd1) & (icmp_ln39_2_fu_314_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state16) & (1'b0 == ap_block_state16_on_subcall_done))) begin
        from_3_reg_96 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_fu_200_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
        from_reg_60 <= i_1_fu_185_p2;
    end else if (((icmp_ln38_fu_142_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        from_reg_60 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                m_fu_56[0] <= 1'b1;
        m_fu_56[4] <= 1'b0;
        m_fu_56[8] <= 1'b0;
        m_fu_56[12] <= 1'b0;
        m_fu_56[16] <= 1'b0;
        m_fu_56[20] <= 1'b0;
        m_fu_56[24] <= 1'b0;
        m_fu_56[28] <= 1'b0;
    end else if (((icmp_ln39_3_fu_386_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state21) & (1'b0 == ap_block_state21_on_subcall_done))) begin
                m_fu_56[0] <= m_5_reg_503[0];
        m_fu_56[4] <= m_5_reg_503[4];
        m_fu_56[8] <= m_5_reg_503[8];
        m_fu_56[12] <= m_5_reg_503[12];
        m_fu_56[16] <= m_5_reg_503[16];
        m_fu_56[20] <= m_5_reg_503[20];
        m_fu_56[24] <= m_5_reg_503[24];
        m_fu_56[28] <= m_5_reg_503[28];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln38_reg_406 <= icmp_ln38_fu_142_p2;
        m_2_reg_410[1] <= m_2_fu_148_p2[1];
m_2_reg_410[5] <= m_2_fu_148_p2[5];
m_2_reg_410[9] <= m_2_fu_148_p2[9];
m_2_reg_410[13] <= m_2_fu_148_p2[13];
m_2_reg_410[17] <= m_2_fu_148_p2[17];
m_2_reg_410[21] <= m_2_fu_148_p2[21];
m_2_reg_410[25] <= m_2_fu_148_p2[25];
m_2_reg_410[29] <= m_2_fu_148_p2[29];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        icmp_ln43_1_reg_458 <= icmp_ln43_1_fu_236_p2;
        to_1_reg_453 <= to_1_fu_222_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        icmp_ln43_2_reg_488 <= icmp_ln43_2_fu_293_p2;
        to_2_reg_483 <= to_2_fu_279_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        icmp_ln43_3_reg_520 <= icmp_ln43_3_fu_365_p2;
        to_3_reg_515 <= to_3_fu_351_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln43_reg_428 <= icmp_ln43_fu_179_p2;
        to_reg_423 <= to_fu_165_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m_3_reg_440[2] <= m_3_fu_206_p2[2];
m_3_reg_440[6] <= m_3_fu_206_p2[6];
m_3_reg_440[10] <= m_3_fu_206_p2[10];
m_3_reg_440[14] <= m_3_fu_206_p2[14];
m_3_reg_440[18] <= m_3_fu_206_p2[18];
m_3_reg_440[22] <= m_3_fu_206_p2[22];
m_3_reg_440[26] <= m_3_fu_206_p2[26];
m_3_reg_440[30] <= m_3_fu_206_p2[30];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        m_4_reg_470[3] <= m_4_fu_263_p2[3];
m_4_reg_470[7] <= m_4_fu_263_p2[7];
m_4_reg_470[11] <= m_4_fu_263_p2[11];
m_4_reg_470[15] <= m_4_fu_263_p2[15];
m_4_reg_470[19] <= m_4_fu_263_p2[19];
m_4_reg_470[23] <= m_4_fu_263_p2[23];
m_4_reg_470[27] <= m_4_fu_263_p2[27];
m_4_reg_470[31] <= m_4_fu_263_p2[31];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        m_5_reg_503[4] <= m_5_fu_335_p2[4];
m_5_reg_503[8] <= m_5_fu_335_p2[8];
m_5_reg_503[12] <= m_5_fu_335_p2[12];
m_5_reg_503[16] <= m_5_fu_335_p2[16];
m_5_reg_503[20] <= m_5_fu_335_p2[20];
m_5_reg_503[24] <= m_5_fu_335_p2[24];
m_5_reg_503[28] <= m_5_fu_335_p2[28];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mid_1_reg_447 <= mid_1_fu_216_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        mid_2_reg_477 <= mid_2_fu_273_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        mid_3_reg_509 <= mid_3_fu_345_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mid_reg_417 <= mid_fu_159_p2;
    end
end
always @ (*) begin
    if ((((ap_predicate_op91_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op89_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln43_reg_428 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_428 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_520 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_520 == 1'd0)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_458 == 1'd1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_458 == 1'd0)))) begin
        a_0_ce0 = grp_merge_fu_108_a_0_ce0;
    end else begin
        a_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op91_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op89_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln43_reg_428 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_428 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_520 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_520 == 1'd0)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_458 == 1'd1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_458 == 1'd0)))) begin
        a_0_we0 = grp_merge_fu_108_a_0_we0;
    end else begin
        a_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op91_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op89_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln43_reg_428 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_428 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_520 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_520 == 1'd0)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_458 == 1'd1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_458 == 1'd0)))) begin
        a_1_ce0 = grp_merge_fu_108_a_1_ce0;
    end else begin
        a_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op91_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op89_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln43_reg_428 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_428 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_520 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_520 == 1'd0)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_458 == 1'd1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_458 == 1'd0)))) begin
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
    if (((1'b1 == ap_CS_fsm_state16) & (1'b0 == ap_block_state16_on_subcall_done) & ((icmp_ln38_reg_406 == 1'd0) | ((icmp_ln38_1_fu_329_p2 == 1'd0) & (icmp_ln39_2_fu_314_p2 == 1'd0))))) begin
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
    if (((1'b1 == ap_CS_fsm_state16) & (1'b0 == ap_block_state16_on_subcall_done) & ((icmp_ln38_reg_406 == 1'd0) | ((icmp_ln38_1_fu_329_p2 == 1'd0) & (icmp_ln39_2_fu_314_p2 == 1'd0))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_520 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_520 == 1'd0)))) begin
        grp_merge_fu_108_m = mid_3_reg_509;
    end else if ((((ap_predicate_op91_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op89_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)))) begin
        grp_merge_fu_108_m = mid_2_reg_477;
    end else if ((((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_458 == 1'd1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_458 == 1'd0)))) begin
        grp_merge_fu_108_m = mid_1_reg_447;
    end else if ((((icmp_ln43_reg_428 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_428 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        grp_merge_fu_108_m = mid_reg_417;
    end else begin
        grp_merge_fu_108_m = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_520 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_520 == 1'd0)))) begin
        grp_merge_fu_108_start_r = from_3_reg_96;
    end else if ((((ap_predicate_op91_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((ap_predicate_op89_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)))) begin
        grp_merge_fu_108_start_r = from_2_reg_84;
    end else if ((((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_458 == 1'd1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_458 == 1'd0)))) begin
        grp_merge_fu_108_start_r = from_1_reg_72;
    end else if ((((icmp_ln43_reg_428 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_428 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        grp_merge_fu_108_start_r = from_reg_60;
    end else begin
        grp_merge_fu_108_start_r = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_520 == 1'd1))) begin
        grp_merge_fu_108_stop = to_3_reg_515;
    end else if (((ap_predicate_op91_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
        grp_merge_fu_108_stop = to_2_reg_483;
    end else if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_458 == 1'd1))) begin
        grp_merge_fu_108_stop = to_1_reg_453;
    end else if (((icmp_ln43_reg_428 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        grp_merge_fu_108_stop = to_reg_423;
    end else if ((((ap_predicate_op89_call_state16 == 1'b1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln43_reg_428 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state21) & (icmp_ln43_3_reg_520 == 1'd0)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln43_1_reg_458 == 1'd0)))) begin
        grp_merge_fu_108_stop = 32'd2048;
    end else begin
        grp_merge_fu_108_stop = 'bx;
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
            if (((icmp_ln38_fu_142_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln43_fu_179_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln39_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else if (((icmp_ln39_fu_200_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
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
            if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln43_1_fu_236_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((icmp_ln39_1_fu_257_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11) & (1'b0 == ap_block_state11_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else if (((icmp_ln39_1_fu_257_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11) & (1'b0 == ap_block_state11_on_subcall_done))) begin
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
            if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln43_2_fu_293_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((1'b1 == ap_CS_fsm_state16) & (1'b0 == ap_block_state16_on_subcall_done) & ((icmp_ln38_reg_406 == 1'd0) | ((icmp_ln38_1_fu_329_p2 == 1'd0) & (icmp_ln39_2_fu_314_p2 == 1'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln38_reg_406 == 1'd1) & (icmp_ln38_1_fu_329_p2 == 1'd1) & (icmp_ln39_2_fu_314_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state16) & (1'b0 == ap_block_state16_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else if (((icmp_ln38_reg_406 == 1'd1) & (icmp_ln39_2_fu_314_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state16) & (1'b0 == ap_block_state16_on_subcall_done))) begin
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
            if (((1'b1 == ap_CS_fsm_state19) & (icmp_ln43_3_fu_365_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            if (((icmp_ln39_3_fu_386_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state21) & (1'b0 == ap_block_state21_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((icmp_ln39_3_fu_386_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state21) & (1'b0 == ap_block_state21_on_subcall_done))) begin
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
assign a_0_address0 = grp_merge_fu_108_a_0_address0;
assign a_0_d0 = grp_merge_fu_108_a_0_d0;
assign a_1_address0 = grp_merge_fu_108_a_1_address0;
assign a_1_d0 = grp_merge_fu_108_a_1_d0;
assign add_ln41_2_fu_211_p2 = (from_1_reg_72 + m_2_reg_410);
assign add_ln41_4_fu_268_p2 = (from_2_reg_84 + m_3_reg_440);
assign add_ln41_6_fu_340_p2 = (from_3_reg_96 + m_4_reg_470);
assign add_ln41_fu_154_p2 = (from_reg_60 + m_fu_56);
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
    ap_block_state11_on_subcall_done = (((grp_merge_fu_108_ap_done == 1'b0) & (icmp_ln43_1_reg_458 == 1'd1)) | ((grp_merge_fu_108_ap_done == 1'b0) & (icmp_ln43_1_reg_458 == 1'd0)));
end
always @ (*) begin
    ap_block_state16_on_subcall_done = (((ap_predicate_op91_call_state16 == 1'b1) & (grp_merge_fu_108_ap_done == 1'b0)) | ((ap_predicate_op89_call_state16 == 1'b1) & (grp_merge_fu_108_ap_done == 1'b0)));
end
always @ (*) begin
    ap_block_state21_on_subcall_done = (((grp_merge_fu_108_ap_done == 1'b0) & (icmp_ln43_3_reg_520 == 1'd1)) | ((grp_merge_fu_108_ap_done == 1'b0) & (icmp_ln43_3_reg_520 == 1'd0)));
end
always @ (*) begin
    ap_block_state6_on_subcall_done = (((icmp_ln43_reg_428 == 1'd1) & (grp_merge_fu_108_ap_done == 1'b0)) | ((icmp_ln43_reg_428 == 1'd0) & (grp_merge_fu_108_ap_done == 1'b0)));
end
always @ (*) begin
    ap_predicate_op89_call_state16 = ((icmp_ln38_reg_406 == 1'd1) & (icmp_ln43_2_reg_488 == 1'd0));
end
always @ (*) begin
    ap_predicate_op91_call_state16 = ((icmp_ln38_reg_406 == 1'd1) & (icmp_ln43_2_reg_488 == 1'd1));
end
assign grp_merge_fu_108_ap_start = grp_merge_fu_108_ap_start_reg;
assign i_1_fu_185_p2 = (m_2_reg_410 + from_reg_60);
assign i_3_fu_242_p2 = (m_3_reg_440 + from_1_reg_72);
assign i_5_fu_299_p2 = (m_4_reg_470 + from_2_reg_84);
assign i_7_fu_371_p2 = (m_5_reg_503 + from_3_reg_96);
assign icmp_ln38_1_fu_329_p2 = (($signed(tmp_7_fu_320_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_142_p2 = (($signed(tmp_fu_132_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_1_fu_257_p2 = (($signed(tmp_4_fu_247_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_2_fu_314_p2 = (($signed(tmp_6_fu_304_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_3_fu_386_p2 = (($signed(tmp_9_fu_376_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_fu_200_p2 = (($signed(tmp_2_fu_190_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_236_p2 = (($signed(tmp_3_fu_226_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_2_fu_293_p2 = (($signed(tmp_5_fu_283_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_3_fu_365_p2 = (($signed(tmp_8_fu_355_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_179_p2 = (($signed(tmp_1_fu_169_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign m_2_fu_148_p2 = m_fu_56 << 32'd1;
assign m_3_fu_206_p2 = m_fu_56 << 32'd2;
assign m_4_fu_263_p2 = m_fu_56 << 32'd3;
assign m_5_fu_335_p2 = m_fu_56 << 32'd4;
assign mid_1_fu_216_p2 = ($signed(add_ln41_2_fu_211_p2) + $signed(32'd4294967295));
assign mid_2_fu_273_p2 = ($signed(add_ln41_4_fu_268_p2) + $signed(32'd4294967295));
assign mid_3_fu_345_p2 = ($signed(add_ln41_6_fu_340_p2) + $signed(32'd4294967295));
assign mid_fu_159_p2 = ($signed(add_ln41_fu_154_p2) + $signed(32'd4294967295));
assign tmp_1_fu_169_p4 = {{to_fu_165_p2[31:11]}};
assign tmp_2_fu_190_p4 = {{i_1_fu_185_p2[31:11]}};
assign tmp_3_fu_226_p4 = {{to_1_fu_222_p2[31:11]}};
assign tmp_4_fu_247_p4 = {{i_3_fu_242_p2[31:11]}};
assign tmp_5_fu_283_p4 = {{to_2_fu_279_p2[31:11]}};
assign tmp_6_fu_304_p4 = {{i_5_fu_299_p2[31:11]}};
assign tmp_7_fu_320_p4 = {{m_fu_56[28:8]}};
assign tmp_8_fu_355_p4 = {{to_3_fu_351_p2[31:11]}};
assign tmp_9_fu_376_p4 = {{i_7_fu_371_p2[31:11]}};
assign tmp_fu_132_p4 = {{m_fu_56[31:11]}};
assign to_1_fu_222_p2 = (mid_1_reg_447 + m_2_reg_410);
assign to_2_fu_279_p2 = (mid_2_reg_477 + m_3_reg_440);
assign to_3_fu_351_p2 = (mid_3_reg_509 + m_4_reg_470);
assign to_fu_165_p2 = (mid_reg_417 + m_fu_56);
always @ (posedge ap_clk) begin
    m_2_reg_410[0] <= 1'b0;
    m_2_reg_410[4:2] <= 3'b000;
    m_2_reg_410[8:6] <= 3'b000;
    m_2_reg_410[12:10] <= 3'b000;
    m_2_reg_410[16:14] <= 3'b000;
    m_2_reg_410[20:18] <= 3'b000;
    m_2_reg_410[24:22] <= 3'b000;
    m_2_reg_410[28:26] <= 3'b000;
    m_2_reg_410[31:30] <= 2'b00;
    m_3_reg_440[1:0] <= 2'b00;
    m_3_reg_440[5:3] <= 3'b000;
    m_3_reg_440[9:7] <= 3'b000;
    m_3_reg_440[13:11] <= 3'b000;
    m_3_reg_440[17:15] <= 3'b000;
    m_3_reg_440[21:19] <= 3'b000;
    m_3_reg_440[25:23] <= 3'b000;
    m_3_reg_440[29:27] <= 3'b000;
    m_3_reg_440[31] <= 1'b0;
    m_4_reg_470[2:0] <= 3'b000;
    m_4_reg_470[6:4] <= 3'b000;
    m_4_reg_470[10:8] <= 3'b000;
    m_4_reg_470[14:12] <= 3'b000;
    m_4_reg_470[18:16] <= 3'b000;
    m_4_reg_470[22:20] <= 3'b000;
    m_4_reg_470[26:24] <= 3'b000;
    m_4_reg_470[30:28] <= 3'b000;
    m_5_reg_503[3:0] <= 4'b0000;
    m_5_reg_503[7:5] <= 3'b000;
    m_5_reg_503[11:9] <= 3'b000;
    m_5_reg_503[15:13] <= 3'b000;
    m_5_reg_503[19:17] <= 3'b000;
    m_5_reg_503[23:21] <= 3'b000;
    m_5_reg_503[27:25] <= 3'b000;
    m_5_reg_503[31:29] <= 3'b000;
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