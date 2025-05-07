module ms_mergesort (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_0_q0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,a_1_q0,a_2_address0,a_2_ce0,a_2_we0,a_2_d0,a_2_q0,a_3_address0,a_3_ce0,a_3_we0,a_3_d0,a_3_q0,a_4_address0,a_4_ce0,a_4_we0,a_4_d0,a_4_q0,a_5_address0,a_5_ce0,a_5_we0,a_5_d0,a_5_q0,a_6_address0,a_6_ce0,a_6_we0,a_6_d0,a_6_q0,a_7_address0,a_7_ce0,a_7_we0,a_7_d0,a_7_q0); 
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
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln38_fu_136_p2;
reg   [0:0] icmp_ln38_reg_288;
wire    ap_CS_fsm_state2;
wire   [31:0] m_2_fu_142_p2;
reg   [31:0] m_2_reg_292;
wire   [31:0] mid_fu_153_p2;
reg   [31:0] mid_reg_299;
wire    ap_CS_fsm_state3;
wire   [31:0] to_fu_159_p2;
reg   [31:0] to_reg_305;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln43_fu_174_p2;
reg   [0:0] icmp_ln43_reg_310;
wire   [31:0] i_1_fu_180_p2;
wire    ap_CS_fsm_state5;
wire   [31:0] m_3_fu_216_p2;
reg   [31:0] m_3_reg_325;
wire   [31:0] mid_1_fu_226_p2;
reg   [31:0] mid_1_reg_331;
wire    ap_CS_fsm_state6;
wire   [31:0] to_1_fu_232_p2;
reg   [31:0] to_1_reg_337;
wire    ap_CS_fsm_state7;
wire   [0:0] icmp_ln43_1_fu_247_p2;
reg   [0:0] icmp_ln43_1_reg_342;
wire   [31:0] i_3_fu_253_p2;
wire    ap_CS_fsm_state8;
wire    grp_merge_fu_92_ap_start;
wire    grp_merge_fu_92_ap_done;
wire    grp_merge_fu_92_ap_idle;
wire    grp_merge_fu_92_ap_ready;
wire   [7:0] grp_merge_fu_92_a_0_address0;
wire    grp_merge_fu_92_a_0_ce0;
wire    grp_merge_fu_92_a_0_we0;
wire   [31:0] grp_merge_fu_92_a_0_d0;
wire   [7:0] grp_merge_fu_92_a_1_address0;
wire    grp_merge_fu_92_a_1_ce0;
wire    grp_merge_fu_92_a_1_we0;
wire   [31:0] grp_merge_fu_92_a_1_d0;
wire   [7:0] grp_merge_fu_92_a_2_address0;
wire    grp_merge_fu_92_a_2_ce0;
wire    grp_merge_fu_92_a_2_we0;
wire   [31:0] grp_merge_fu_92_a_2_d0;
wire   [7:0] grp_merge_fu_92_a_3_address0;
wire    grp_merge_fu_92_a_3_ce0;
wire    grp_merge_fu_92_a_3_we0;
wire   [31:0] grp_merge_fu_92_a_3_d0;
wire   [7:0] grp_merge_fu_92_a_4_address0;
wire    grp_merge_fu_92_a_4_ce0;
wire    grp_merge_fu_92_a_4_we0;
wire   [31:0] grp_merge_fu_92_a_4_d0;
wire   [7:0] grp_merge_fu_92_a_5_address0;
wire    grp_merge_fu_92_a_5_ce0;
wire    grp_merge_fu_92_a_5_we0;
wire   [31:0] grp_merge_fu_92_a_5_d0;
wire   [7:0] grp_merge_fu_92_a_6_address0;
wire    grp_merge_fu_92_a_6_ce0;
wire    grp_merge_fu_92_a_6_we0;
wire   [31:0] grp_merge_fu_92_a_6_d0;
wire   [7:0] grp_merge_fu_92_a_7_address0;
wire    grp_merge_fu_92_a_7_ce0;
wire    grp_merge_fu_92_a_7_we0;
wire   [31:0] grp_merge_fu_92_a_7_d0;
reg   [31:0] grp_merge_fu_92_start_r;
reg   [31:0] grp_merge_fu_92_m;
reg   [31:0] grp_merge_fu_92_stop;
reg   [31:0] from_reg_68;
reg    ap_predicate_op48_call_state5;
reg    ap_predicate_op50_call_state5;
reg    ap_block_state5_on_subcall_done;
wire   [0:0] icmp_ln39_fu_195_p2;
reg   [31:0] from_1_reg_80;
wire   [0:0] icmp_ln38_1_fu_210_p2;
reg    ap_block_state8_on_subcall_done;
wire   [0:0] icmp_ln39_1_fu_268_p2;
reg    grp_merge_fu_92_ap_start_reg;
reg   [31:0] m_fu_64;
wire   [20:0] tmp_fu_126_p4;
wire   [31:0] add_ln41_fu_148_p2;
wire   [20:0] tmp_1_fu_164_p4;
wire   [20:0] tmp_2_fu_185_p4;
wire   [20:0] tmp_3_fu_201_p4;
wire   [31:0] add_ln41_2_fu_221_p2;
wire   [20:0] tmp_4_fu_237_p4;
wire   [20:0] tmp_5_fu_258_p4;
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
#0 grp_merge_fu_92_ap_start_reg = 1'b0;
#0 m_fu_64 = 32'd0;
end
ms_mergesort_merge grp_merge_fu_92(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_merge_fu_92_ap_start),.ap_done(grp_merge_fu_92_ap_done),.ap_idle(grp_merge_fu_92_ap_idle),.ap_ready(grp_merge_fu_92_ap_ready),.a_0_address0(grp_merge_fu_92_a_0_address0),.a_0_ce0(grp_merge_fu_92_a_0_ce0),.a_0_we0(grp_merge_fu_92_a_0_we0),.a_0_d0(grp_merge_fu_92_a_0_d0),.a_0_q0(a_0_q0),.a_1_address0(grp_merge_fu_92_a_1_address0),.a_1_ce0(grp_merge_fu_92_a_1_ce0),.a_1_we0(grp_merge_fu_92_a_1_we0),.a_1_d0(grp_merge_fu_92_a_1_d0),.a_1_q0(a_1_q0),.a_2_address0(grp_merge_fu_92_a_2_address0),.a_2_ce0(grp_merge_fu_92_a_2_ce0),.a_2_we0(grp_merge_fu_92_a_2_we0),.a_2_d0(grp_merge_fu_92_a_2_d0),.a_2_q0(a_2_q0),.a_3_address0(grp_merge_fu_92_a_3_address0),.a_3_ce0(grp_merge_fu_92_a_3_ce0),.a_3_we0(grp_merge_fu_92_a_3_we0),.a_3_d0(grp_merge_fu_92_a_3_d0),.a_3_q0(a_3_q0),.a_4_address0(grp_merge_fu_92_a_4_address0),.a_4_ce0(grp_merge_fu_92_a_4_ce0),.a_4_we0(grp_merge_fu_92_a_4_we0),.a_4_d0(grp_merge_fu_92_a_4_d0),.a_4_q0(a_4_q0),.a_5_address0(grp_merge_fu_92_a_5_address0),.a_5_ce0(grp_merge_fu_92_a_5_ce0),.a_5_we0(grp_merge_fu_92_a_5_we0),.a_5_d0(grp_merge_fu_92_a_5_d0),.a_5_q0(a_5_q0),.a_6_address0(grp_merge_fu_92_a_6_address0),.a_6_ce0(grp_merge_fu_92_a_6_ce0),.a_6_we0(grp_merge_fu_92_a_6_we0),.a_6_d0(grp_merge_fu_92_a_6_d0),.a_6_q0(a_6_q0),.a_7_address0(grp_merge_fu_92_a_7_address0),.a_7_ce0(grp_merge_fu_92_a_7_ce0),.a_7_we0(grp_merge_fu_92_a_7_we0),.a_7_d0(grp_merge_fu_92_a_7_d0),.a_7_q0(a_7_q0),.start_r(grp_merge_fu_92_start_r),.m(grp_merge_fu_92_m),.stop(grp_merge_fu_92_stop));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_merge_fu_92_ap_start_reg <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_state7) & (icmp_ln43_1_fu_247_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state7) & (icmp_ln43_1_fu_247_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state4) & (icmp_ln43_fu_174_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state4) & (icmp_ln43_fu_174_p2 == 1'd0)))) begin
            grp_merge_fu_92_ap_start_reg <= 1'b1;
        end else if ((grp_merge_fu_92_ap_ready == 1'b1)) begin
            grp_merge_fu_92_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_1_fu_268_p2 == 1'd1) & (1'b0 == ap_block_state8_on_subcall_done) & (1'b1 == ap_CS_fsm_state8))) begin
        from_1_reg_80 <= i_3_fu_253_p2;
    end else if (((icmp_ln38_reg_288 == 1'd1) & (icmp_ln38_1_fu_210_p2 == 1'd1) & (icmp_ln39_fu_195_p2 == 1'd0) & (1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
        from_1_reg_80 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln38_reg_288 == 1'd1) & (icmp_ln39_fu_195_p2 == 1'd1) & (1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
        from_reg_68 <= i_1_fu_180_p2;
    end else if (((icmp_ln38_fu_136_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        from_reg_68 <= 32'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                m_fu_64[0] <= 1'b1;
        m_fu_64[2] <= 1'b0;
        m_fu_64[4] <= 1'b0;
        m_fu_64[6] <= 1'b0;
        m_fu_64[8] <= 1'b0;
        m_fu_64[10] <= 1'b0;
        m_fu_64[12] <= 1'b0;
        m_fu_64[14] <= 1'b0;
        m_fu_64[16] <= 1'b0;
        m_fu_64[18] <= 1'b0;
        m_fu_64[20] <= 1'b0;
        m_fu_64[22] <= 1'b0;
        m_fu_64[24] <= 1'b0;
        m_fu_64[26] <= 1'b0;
        m_fu_64[28] <= 1'b0;
        m_fu_64[30] <= 1'b0;
    end else if (((icmp_ln39_1_fu_268_p2 == 1'd0) & (1'b0 == ap_block_state8_on_subcall_done) & (1'b1 == ap_CS_fsm_state8))) begin
                m_fu_64[0] <= m_3_reg_325[0];
        m_fu_64[2] <= m_3_reg_325[2];
        m_fu_64[4] <= m_3_reg_325[4];
        m_fu_64[6] <= m_3_reg_325[6];
        m_fu_64[8] <= m_3_reg_325[8];
        m_fu_64[10] <= m_3_reg_325[10];
        m_fu_64[12] <= m_3_reg_325[12];
        m_fu_64[14] <= m_3_reg_325[14];
        m_fu_64[16] <= m_3_reg_325[16];
        m_fu_64[18] <= m_3_reg_325[18];
        m_fu_64[20] <= m_3_reg_325[20];
        m_fu_64[22] <= m_3_reg_325[22];
        m_fu_64[24] <= m_3_reg_325[24];
        m_fu_64[26] <= m_3_reg_325[26];
        m_fu_64[28] <= m_3_reg_325[28];
        m_fu_64[30] <= m_3_reg_325[30];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln38_reg_288 <= icmp_ln38_fu_136_p2;
        m_2_reg_292[1] <= m_2_fu_142_p2[1];
m_2_reg_292[3] <= m_2_fu_142_p2[3];
m_2_reg_292[5] <= m_2_fu_142_p2[5];
m_2_reg_292[7] <= m_2_fu_142_p2[7];
m_2_reg_292[9] <= m_2_fu_142_p2[9];
m_2_reg_292[11] <= m_2_fu_142_p2[11];
m_2_reg_292[13] <= m_2_fu_142_p2[13];
m_2_reg_292[15] <= m_2_fu_142_p2[15];
m_2_reg_292[17] <= m_2_fu_142_p2[17];
m_2_reg_292[19] <= m_2_fu_142_p2[19];
m_2_reg_292[21] <= m_2_fu_142_p2[21];
m_2_reg_292[23] <= m_2_fu_142_p2[23];
m_2_reg_292[25] <= m_2_fu_142_p2[25];
m_2_reg_292[27] <= m_2_fu_142_p2[27];
m_2_reg_292[29] <= m_2_fu_142_p2[29];
m_2_reg_292[31] <= m_2_fu_142_p2[31];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        icmp_ln43_1_reg_342 <= icmp_ln43_1_fu_247_p2;
        to_1_reg_337 <= to_1_fu_232_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln43_reg_310 <= icmp_ln43_fu_174_p2;
        to_reg_305 <= to_fu_159_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        m_3_reg_325[2] <= m_3_fu_216_p2[2];
m_3_reg_325[4] <= m_3_fu_216_p2[4];
m_3_reg_325[6] <= m_3_fu_216_p2[6];
m_3_reg_325[8] <= m_3_fu_216_p2[8];
m_3_reg_325[10] <= m_3_fu_216_p2[10];
m_3_reg_325[12] <= m_3_fu_216_p2[12];
m_3_reg_325[14] <= m_3_fu_216_p2[14];
m_3_reg_325[16] <= m_3_fu_216_p2[16];
m_3_reg_325[18] <= m_3_fu_216_p2[18];
m_3_reg_325[20] <= m_3_fu_216_p2[20];
m_3_reg_325[22] <= m_3_fu_216_p2[22];
m_3_reg_325[24] <= m_3_fu_216_p2[24];
m_3_reg_325[26] <= m_3_fu_216_p2[26];
m_3_reg_325[28] <= m_3_fu_216_p2[28];
m_3_reg_325[30] <= m_3_fu_216_p2[30];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        mid_1_reg_331 <= mid_1_fu_226_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mid_reg_299 <= mid_fu_153_p2;
    end
end
always @ (*) begin
    if ((((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        a_0_ce0 = grp_merge_fu_92_a_0_ce0;
    end else begin
        a_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        a_0_we0 = grp_merge_fu_92_a_0_we0;
    end else begin
        a_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        a_1_ce0 = grp_merge_fu_92_a_1_ce0;
    end else begin
        a_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        a_1_we0 = grp_merge_fu_92_a_1_we0;
    end else begin
        a_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        a_2_ce0 = grp_merge_fu_92_a_2_ce0;
    end else begin
        a_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        a_2_we0 = grp_merge_fu_92_a_2_we0;
    end else begin
        a_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        a_3_ce0 = grp_merge_fu_92_a_3_ce0;
    end else begin
        a_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        a_3_we0 = grp_merge_fu_92_a_3_we0;
    end else begin
        a_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        a_4_ce0 = grp_merge_fu_92_a_4_ce0;
    end else begin
        a_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        a_4_we0 = grp_merge_fu_92_a_4_we0;
    end else begin
        a_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        a_5_ce0 = grp_merge_fu_92_a_5_ce0;
    end else begin
        a_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        a_5_we0 = grp_merge_fu_92_a_5_we0;
    end else begin
        a_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        a_6_ce0 = grp_merge_fu_92_a_6_ce0;
    end else begin
        a_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        a_6_we0 = grp_merge_fu_92_a_6_we0;
    end else begin
        a_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        a_7_ce0 = grp_merge_fu_92_a_7_ce0;
    end else begin
        a_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        a_7_we0 = grp_merge_fu_92_a_7_we0;
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
    if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5) & ((icmp_ln38_reg_288 == 1'd0) | ((icmp_ln38_1_fu_210_p2 == 1'd0) & (icmp_ln39_fu_195_p2 == 1'd0))))) begin
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
    if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5) & ((icmp_ln38_reg_288 == 1'd0) | ((icmp_ln38_1_fu_210_p2 == 1'd0) & (icmp_ln39_fu_195_p2 == 1'd0))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        grp_merge_fu_92_m = mid_1_reg_331;
    end else if ((((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        grp_merge_fu_92_m = mid_reg_299;
    end else begin
        grp_merge_fu_92_m = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        grp_merge_fu_92_start_r = from_1_reg_80;
    end else if ((((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        grp_merge_fu_92_start_r = from_reg_68;
    end else begin
        grp_merge_fu_92_start_r = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd1))) begin
        grp_merge_fu_92_stop = to_1_reg_337;
    end else if (((ap_predicate_op50_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        grp_merge_fu_92_stop = to_reg_305;
    end else if ((((ap_predicate_op48_call_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln43_1_reg_342 == 1'd0)))) begin
        grp_merge_fu_92_stop = 32'd2048;
    end else begin
        grp_merge_fu_92_stop = 'bx;
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
            if (((icmp_ln38_fu_136_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5) & ((icmp_ln38_reg_288 == 1'd0) | ((icmp_ln38_1_fu_210_p2 == 1'd0) & (icmp_ln39_fu_195_p2 == 1'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln38_reg_288 == 1'd1) & (icmp_ln38_1_fu_210_p2 == 1'd1) & (icmp_ln39_fu_195_p2 == 1'd0) & (1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if (((icmp_ln38_reg_288 == 1'd1) & (icmp_ln39_fu_195_p2 == 1'd1) & (1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
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
            if (((icmp_ln39_1_fu_268_p2 == 1'd0) & (1'b0 == ap_block_state8_on_subcall_done) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((icmp_ln39_1_fu_268_p2 == 1'd1) & (1'b0 == ap_block_state8_on_subcall_done) & (1'b1 == ap_CS_fsm_state8))) begin
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
assign a_0_address0 = grp_merge_fu_92_a_0_address0;
assign a_0_d0 = grp_merge_fu_92_a_0_d0;
assign a_1_address0 = grp_merge_fu_92_a_1_address0;
assign a_1_d0 = grp_merge_fu_92_a_1_d0;
assign a_2_address0 = grp_merge_fu_92_a_2_address0;
assign a_2_d0 = grp_merge_fu_92_a_2_d0;
assign a_3_address0 = grp_merge_fu_92_a_3_address0;
assign a_3_d0 = grp_merge_fu_92_a_3_d0;
assign a_4_address0 = grp_merge_fu_92_a_4_address0;
assign a_4_d0 = grp_merge_fu_92_a_4_d0;
assign a_5_address0 = grp_merge_fu_92_a_5_address0;
assign a_5_d0 = grp_merge_fu_92_a_5_d0;
assign a_6_address0 = grp_merge_fu_92_a_6_address0;
assign a_6_d0 = grp_merge_fu_92_a_6_d0;
assign a_7_address0 = grp_merge_fu_92_a_7_address0;
assign a_7_d0 = grp_merge_fu_92_a_7_d0;
assign add_ln41_2_fu_221_p2 = (from_1_reg_80 + m_2_reg_292);
assign add_ln41_fu_148_p2 = (from_reg_68 + m_fu_64);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
always @ (*) begin
    ap_block_state5_on_subcall_done = (((ap_predicate_op50_call_state5 == 1'b1) & (grp_merge_fu_92_ap_done == 1'b0)) | ((ap_predicate_op48_call_state5 == 1'b1) & (grp_merge_fu_92_ap_done == 1'b0)));
end
always @ (*) begin
    ap_block_state8_on_subcall_done = (((grp_merge_fu_92_ap_done == 1'b0) & (icmp_ln43_1_reg_342 == 1'd1)) | ((grp_merge_fu_92_ap_done == 1'b0) & (icmp_ln43_1_reg_342 == 1'd0)));
end
always @ (*) begin
    ap_predicate_op48_call_state5 = ((icmp_ln38_reg_288 == 1'd1) & (icmp_ln43_reg_310 == 1'd0));
end
always @ (*) begin
    ap_predicate_op50_call_state5 = ((icmp_ln38_reg_288 == 1'd1) & (icmp_ln43_reg_310 == 1'd1));
end
assign grp_merge_fu_92_ap_start = grp_merge_fu_92_ap_start_reg;
assign i_1_fu_180_p2 = (m_2_reg_292 + from_reg_68);
assign i_3_fu_253_p2 = (m_3_reg_325 + from_1_reg_80);
assign icmp_ln38_1_fu_210_p2 = (($signed(tmp_3_fu_201_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_136_p2 = (($signed(tmp_fu_126_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_1_fu_268_p2 = (($signed(tmp_5_fu_258_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_fu_195_p2 = (($signed(tmp_2_fu_185_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_247_p2 = (($signed(tmp_4_fu_237_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_174_p2 = (($signed(tmp_1_fu_164_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign m_2_fu_142_p2 = m_fu_64 << 32'd1;
assign m_3_fu_216_p2 = m_fu_64 << 32'd2;
assign mid_1_fu_226_p2 = ($signed(add_ln41_2_fu_221_p2) + $signed(32'd4294967295));
assign mid_fu_153_p2 = ($signed(add_ln41_fu_148_p2) + $signed(32'd4294967295));
assign tmp_1_fu_164_p4 = {{to_fu_159_p2[31:11]}};
assign tmp_2_fu_185_p4 = {{i_1_fu_180_p2[31:11]}};
assign tmp_3_fu_201_p4 = {{m_fu_64[30:10]}};
assign tmp_4_fu_237_p4 = {{to_1_fu_232_p2[31:11]}};
assign tmp_5_fu_258_p4 = {{i_3_fu_253_p2[31:11]}};
assign tmp_fu_126_p4 = {{m_fu_64[31:11]}};
assign to_1_fu_232_p2 = (mid_1_reg_331 + m_2_reg_292);
assign to_fu_159_p2 = (mid_reg_299 + m_fu_64);
always @ (posedge ap_clk) begin
    m_2_reg_292[0] <= 1'b0;
    m_2_reg_292[2:2] <= 1'b0;
    m_2_reg_292[4:4] <= 1'b0;
    m_2_reg_292[6:6] <= 1'b0;
    m_2_reg_292[8:8] <= 1'b0;
    m_2_reg_292[10:10] <= 1'b0;
    m_2_reg_292[12:12] <= 1'b0;
    m_2_reg_292[14:14] <= 1'b0;
    m_2_reg_292[16:16] <= 1'b0;
    m_2_reg_292[18:18] <= 1'b0;
    m_2_reg_292[20:20] <= 1'b0;
    m_2_reg_292[22:22] <= 1'b0;
    m_2_reg_292[24:24] <= 1'b0;
    m_2_reg_292[26:26] <= 1'b0;
    m_2_reg_292[28:28] <= 1'b0;
    m_2_reg_292[30] <= 1'b0;
    m_3_reg_325[1:0] <= 2'b00;
    m_3_reg_325[3:3] <= 1'b0;
    m_3_reg_325[5:5] <= 1'b0;
    m_3_reg_325[7:7] <= 1'b0;
    m_3_reg_325[9:9] <= 1'b0;
    m_3_reg_325[11:11] <= 1'b0;
    m_3_reg_325[13:13] <= 1'b0;
    m_3_reg_325[15:15] <= 1'b0;
    m_3_reg_325[17:17] <= 1'b0;
    m_3_reg_325[19:19] <= 1'b0;
    m_3_reg_325[21:21] <= 1'b0;
    m_3_reg_325[23:23] <= 1'b0;
    m_3_reg_325[25:25] <= 1'b0;
    m_3_reg_325[27:27] <= 1'b0;
    m_3_reg_325[29:29] <= 1'b0;
    m_3_reg_325[31] <= 1'b0;
    m_fu_64[1] <= 1'b0;
    m_fu_64[3:3] <= 1'b0;
    m_fu_64[5:5] <= 1'b0;
    m_fu_64[7:7] <= 1'b0;
    m_fu_64[9:9] <= 1'b0;
    m_fu_64[11:11] <= 1'b0;
    m_fu_64[13:13] <= 1'b0;
    m_fu_64[15:15] <= 1'b0;
    m_fu_64[17:17] <= 1'b0;
    m_fu_64[19:19] <= 1'b0;
    m_fu_64[21:21] <= 1'b0;
    m_fu_64[23:23] <= 1'b0;
    m_fu_64[25:25] <= 1'b0;
    m_fu_64[27:27] <= 1'b0;
    m_fu_64[29:29] <= 1'b0;
    m_fu_64[31] <= 1'b0;
end
endmodule 