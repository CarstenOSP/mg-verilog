
module sha_stream (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready);  
parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] sha_info_digest_0;
reg   [31:0] sha_info_digest_1;
reg   [31:0] sha_info_digest_2;
reg   [31:0] sha_info_digest_3;
reg   [31:0] sha_info_digest_4;
reg   [3:0] sha_info_data_address0;
reg    sha_info_data_ce0;
reg    sha_info_data_we0;
reg   [30:0] sha_info_data_d0;
wire   [30:0] sha_info_data_q0;
reg   [3:0] sha_info_data_address1;
reg    sha_info_data_ce1;
wire   [30:0] sha_info_data_q1;
wire   [1:0] add_ln211_fu_203_p2;
reg   [1:0] add_ln211_reg_260;
wire    ap_CS_fsm_state2;
wire   [0:0] trunc_ln211_fu_209_p1;
reg   [0:0] trunc_ln211_reg_265;
wire   [12:0] trunc_ln165_fu_229_p1;
reg   [12:0] trunc_ln165_reg_273;
wire    ap_CS_fsm_state3;
wire   [13:0] add_ln170_fu_234_p2;
reg   [13:0] add_ln170_reg_278;
wire   [13:0] add_ln165_fu_240_p2;
reg   [13:0] add_ln165_reg_283;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_ap_start;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_ap_done;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_ap_idle;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_ap_ready;
wire   [3:0] grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_sha_info_data_address0;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_sha_info_data_ce0;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_sha_info_data_we0;
wire   [30:0] grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_sha_info_data_d0;
wire    grp_sha_transform_fu_137_ap_start;
wire    grp_sha_transform_fu_137_ap_done;
wire    grp_sha_transform_fu_137_ap_idle;
wire    grp_sha_transform_fu_137_ap_ready;
wire   [31:0] grp_sha_transform_fu_137_sha_info_digest_0_o;
wire    grp_sha_transform_fu_137_sha_info_digest_0_o_ap_vld;
wire   [31:0] grp_sha_transform_fu_137_sha_info_digest_1_o;
wire    grp_sha_transform_fu_137_sha_info_digest_1_o_ap_vld;
wire   [31:0] grp_sha_transform_fu_137_sha_info_digest_2_o;
wire    grp_sha_transform_fu_137_sha_info_digest_2_o_ap_vld;
wire   [31:0] grp_sha_transform_fu_137_sha_info_digest_3_o;
wire    grp_sha_transform_fu_137_sha_info_digest_3_o_ap_vld;
wire   [31:0] grp_sha_transform_fu_137_sha_info_digest_4_o;
wire    grp_sha_transform_fu_137_sha_info_digest_4_o_ap_vld;
wire   [3:0] grp_sha_transform_fu_137_sha_info_data_address0;
wire    grp_sha_transform_fu_137_sha_info_data_ce0;
wire   [3:0] grp_sha_transform_fu_137_sha_info_data_address1;
wire    grp_sha_transform_fu_137_sha_info_data_ce1;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_ap_start;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_ap_done;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_ap_idle;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_ap_ready;
wire   [3:0] grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_sha_info_data_address0;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_sha_info_data_ce0;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_sha_info_data_we0;
wire   [30:0] grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_sha_info_data_d0;
reg   [13:0] count_assign_reg_103;
wire   [0:0] icmp_ln211_fu_197_p2;
wire    ap_CS_fsm_state6;
reg   [13:0] idx_reg_114;
reg    grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_ap_start_reg;
wire   [0:0] icmp_ln165_fu_223_p2;
wire    ap_CS_fsm_state4;
reg    grp_sha_transform_fu_137_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
reg    grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg   [1:0] j_fu_84;
reg    sha_info_data_we0_local;
reg   [30:0] sha_info_data_d0_local;
reg    sha_info_data_ce0_local;
reg   [3:0] sha_info_data_address0_local;
reg    sha_info_data_we1_local;
wire    ap_CS_fsm_state9;
reg    sha_info_data_ce1_local;
wire   [7:0] tmp_fu_213_p4;
reg   [10:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
reg    ap_ST_fsm_state11_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 sha_info_digest_0 = 32'd0;
#0 sha_info_digest_1 = 32'd0;
#0 sha_info_digest_2 = 32'd0;
#0 sha_info_digest_3 = 32'd0;
#0 sha_info_digest_4 = 32'd0;
#0 grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_ap_start_reg = 1'b0;
#0 grp_sha_transform_fu_137_ap_start_reg = 1'b0;
#0 grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_ap_start_reg = 1'b0;
#0 j_fu_84 = 2'd0;
end
sha_stream_sha_info_data_RAM_AUTO_1R1W #(.DataWidth( 31 ),.AddressRange( 16 ),.AddressWidth( 4 ))
sha_info_data_U(.clk(ap_clk),.reset(ap_rst),.address0(sha_info_data_address0),.ce0(sha_info_data_ce0),.we0(sha_info_data_we0),.d0(sha_info_data_d0),.q0(sha_info_data_q0),.address1(sha_info_data_address1),.ce1(sha_info_data_ce1),.we1(sha_info_data_we1_local),.d1(31'd0),.q1(sha_info_data_q1));
sha_stream_sha_stream_Pipeline_VITIS_LOOP_82_1 grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_ap_start),.ap_done(grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_ap_done),.ap_idle(grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_ap_idle),.ap_ready(grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_ap_ready),.idx(trunc_ln165_reg_273),.j(trunc_ln211_reg_265),.sha_info_data_address0(grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_sha_info_data_address0),.sha_info_data_ce0(grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_sha_info_data_ce0),.sha_info_data_we0(grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_sha_info_data_we0),.sha_info_data_d0(grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_sha_info_data_d0));
sha_stream_sha_transform grp_sha_transform_fu_137(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sha_transform_fu_137_ap_start),.ap_done(grp_sha_transform_fu_137_ap_done),.ap_idle(grp_sha_transform_fu_137_ap_idle),.ap_ready(grp_sha_transform_fu_137_ap_ready),.sha_info_digest_0_i(sha_info_digest_0),.sha_info_digest_0_o(grp_sha_transform_fu_137_sha_info_digest_0_o),.sha_info_digest_0_o_ap_vld(grp_sha_transform_fu_137_sha_info_digest_0_o_ap_vld),.sha_info_digest_1_i(sha_info_digest_1),.sha_info_digest_1_o(grp_sha_transform_fu_137_sha_info_digest_1_o),.sha_info_digest_1_o_ap_vld(grp_sha_transform_fu_137_sha_info_digest_1_o_ap_vld),.sha_info_digest_2_i(sha_info_digest_2),.sha_info_digest_2_o(grp_sha_transform_fu_137_sha_info_digest_2_o),.sha_info_digest_2_o_ap_vld(grp_sha_transform_fu_137_sha_info_digest_2_o_ap_vld),.sha_info_digest_3_i(sha_info_digest_3),.sha_info_digest_3_o(grp_sha_transform_fu_137_sha_info_digest_3_o),.sha_info_digest_3_o_ap_vld(grp_sha_transform_fu_137_sha_info_digest_3_o_ap_vld),.sha_info_digest_4_i(sha_info_digest_4),.sha_info_digest_4_o(grp_sha_transform_fu_137_sha_info_digest_4_o),.sha_info_digest_4_o_ap_vld(grp_sha_transform_fu_137_sha_info_digest_4_o_ap_vld),.sha_info_data_address0(grp_sha_transform_fu_137_sha_info_data_address0),.sha_info_data_ce0(grp_sha_transform_fu_137_sha_info_data_ce0),.sha_info_data_q0(sha_info_data_q0),.sha_info_data_address1(grp_sha_transform_fu_137_sha_info_data_address1),.sha_info_data_ce1(grp_sha_transform_fu_137_sha_info_data_ce1),.sha_info_data_q1(sha_info_data_q1));
sha_stream_sha_stream_Pipeline_VITIS_LOOP_65_2 grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_ap_start),.ap_done(grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_ap_done),.ap_idle(grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_ap_idle),.ap_ready(grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_ap_ready),.sha_info_data_address0(grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_sha_info_data_address0),.sha_info_data_ce0(grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_sha_info_data_ce0),.sha_info_data_we0(grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_sha_info_data_we0),.sha_info_data_d0(grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_sha_info_data_d0));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_ap_start_reg <= 1'b1;
        end else if ((grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_ap_ready == 1'b1)) begin
            grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln165_fu_223_p2 == 1'd0))) begin
            grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_ap_start_reg <= 1'b1;
        end else if ((grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_ap_ready == 1'b1)) begin
            grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sha_transform_fu_137_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state5))) begin
            grp_sha_transform_fu_137_ap_start_reg <= 1'b1;
        end else if ((grp_sha_transform_fu_137_ap_ready == 1'b1)) begin
            grp_sha_transform_fu_137_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        sha_info_digest_0 <= 32'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            sha_info_digest_0 <= 32'd1732584193;
        end else if ((((grp_sha_transform_fu_137_sha_info_digest_0_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((grp_sha_transform_fu_137_sha_info_digest_0_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
            sha_info_digest_0 <= grp_sha_transform_fu_137_sha_info_digest_0_o;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        sha_info_digest_1 <= 32'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            sha_info_digest_1 <= 32'd4023233417;
        end else if ((((grp_sha_transform_fu_137_sha_info_digest_1_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((grp_sha_transform_fu_137_sha_info_digest_1_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
            sha_info_digest_1 <= grp_sha_transform_fu_137_sha_info_digest_1_o;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        sha_info_digest_2 <= 32'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            sha_info_digest_2 <= 32'd2562383102;
        end else if ((((grp_sha_transform_fu_137_sha_info_digest_2_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((grp_sha_transform_fu_137_sha_info_digest_2_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
            sha_info_digest_2 <= grp_sha_transform_fu_137_sha_info_digest_2_o;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        sha_info_digest_3 <= 32'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            sha_info_digest_3 <= 32'd271733878;
        end else if ((((1'b1 == ap_CS_fsm_state11) & (grp_sha_transform_fu_137_sha_info_digest_3_o_ap_vld == 1'b1)) | ((1'b1 == ap_CS_fsm_state6) & (grp_sha_transform_fu_137_sha_info_digest_3_o_ap_vld == 1'b1)))) begin
            sha_info_digest_3 <= grp_sha_transform_fu_137_sha_info_digest_3_o;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        sha_info_digest_4 <= 32'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            sha_info_digest_4 <= 32'd3285377520;
        end else if ((((1'b1 == ap_CS_fsm_state11) & (grp_sha_transform_fu_137_sha_info_digest_4_o_ap_vld == 1'b1)) | ((1'b1 == ap_CS_fsm_state6) & (grp_sha_transform_fu_137_sha_info_digest_4_o_ap_vld == 1'b1)))) begin
            sha_info_digest_4 <= grp_sha_transform_fu_137_sha_info_digest_4_o;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((grp_sha_transform_fu_137_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        count_assign_reg_103 <= add_ln170_reg_278;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln211_fu_197_p2 == 1'd0))) begin
        count_assign_reg_103 <= 14'd8192;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_sha_transform_fu_137_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        idx_reg_114 <= add_ln165_reg_283;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln211_fu_197_p2 == 1'd0))) begin
        idx_reg_114 <= 14'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        j_fu_84 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln165_fu_223_p2 == 1'd1))) begin
        j_fu_84 <= add_ln211_reg_260;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln165_reg_283 <= add_ln165_fu_240_p2;
        add_ln170_reg_278 <= add_ln170_fu_234_p2;
        trunc_ln165_reg_273 <= trunc_ln165_fu_229_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln211_reg_260 <= add_ln211_fu_203_p2;
        trunc_ln211_reg_265 <= trunc_ln211_fu_209_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_sha_transform_fu_137_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
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
always @ (*) begin
    if ((grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_sha_transform_fu_137_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((grp_sha_transform_fu_137_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
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
    if (((grp_sha_transform_fu_137_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sha_info_data_address0 = grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_sha_info_data_address0;
    end else if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6))) begin
        sha_info_data_address0 = grp_sha_transform_fu_137_sha_info_data_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sha_info_data_address0 = grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_sha_info_data_address0;
    end else begin
        sha_info_data_address0 = sha_info_data_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        sha_info_data_address0_local = 4'd15;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sha_info_data_address0_local = 4'd0;
    end else begin
        sha_info_data_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6))) begin
        sha_info_data_address1 = grp_sha_transform_fu_137_sha_info_data_address1;
    end else begin
        sha_info_data_address1 = 4'd14;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sha_info_data_ce0 = grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_sha_info_data_ce0;
    end else if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6))) begin
        sha_info_data_ce0 = grp_sha_transform_fu_137_sha_info_data_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sha_info_data_ce0 = grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_sha_info_data_ce0;
    end else begin
        sha_info_data_ce0 = sha_info_data_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9))) begin
        sha_info_data_ce0_local = 1'b1;
    end else begin
        sha_info_data_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6))) begin
        sha_info_data_ce1 = grp_sha_transform_fu_137_sha_info_data_ce1;
    end else begin
        sha_info_data_ce1 = sha_info_data_ce1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        sha_info_data_ce1_local = 1'b1;
    end else begin
        sha_info_data_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sha_info_data_d0 = grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_sha_info_data_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sha_info_data_d0 = grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_sha_info_data_d0;
    end else begin
        sha_info_data_d0 = sha_info_data_d0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        sha_info_data_d0_local = 31'd131072;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sha_info_data_d0_local = 31'd128;
    end else begin
        sha_info_data_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sha_info_data_we0 = grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_sha_info_data_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sha_info_data_we0 = grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_sha_info_data_we0;
    end else begin
        sha_info_data_we0 = sha_info_data_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln211_fu_197_p2 == 1'd1)))) begin
        sha_info_data_we0_local = 1'b1;
    end else begin
        sha_info_data_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        sha_info_data_we1_local = 1'b1;
    end else begin
        sha_info_data_we1_local = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln211_fu_197_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln165_fu_223_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_sha_transform_fu_137_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
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
            if (((grp_sha_transform_fu_137_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln165_fu_240_p2 = (idx_reg_114 + 14'd64);
assign add_ln170_fu_234_p2 = ($signed(count_assign_reg_103) + $signed(14'd16320));
assign add_ln211_fu_203_p2 = (j_fu_84 + 2'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_ap_start = grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_153_ap_start_reg;
assign grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_ap_start = grp_sha_stream_Pipeline_VITIS_LOOP_82_1_fu_125_ap_start_reg;
assign grp_sha_transform_fu_137_ap_start = grp_sha_transform_fu_137_ap_start_reg;
assign icmp_ln165_fu_223_p2 = ((tmp_fu_213_p4 == 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln211_fu_197_p2 = ((j_fu_84 == 2'd2) ? 1'b1 : 1'b0);
assign tmp_fu_213_p4 = {{count_assign_reg_103[13:6]}};
assign trunc_ln165_fu_229_p1 = idx_reg_114[12:0];
assign trunc_ln211_fu_209_p1 = j_fu_84[0:0];
endmodule 
