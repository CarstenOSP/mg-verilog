
module sha_stream_sha_update (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buffer_offset,sha_info_count_lo_i,sha_info_count_lo_o,sha_info_count_lo_o_ap_vld,sha_info_count_hi_i,sha_info_count_hi_o,sha_info_count_hi_o_ap_vld,sha_info_digest_0_i,sha_info_digest_0_o,sha_info_digest_0_o_ap_vld,sha_info_digest_1_i,sha_info_digest_1_o,sha_info_digest_1_o_ap_vld,sha_info_digest_2_i,sha_info_digest_2_o,sha_info_digest_2_o_ap_vld,sha_info_digest_3_i,sha_info_digest_3_o,sha_info_digest_3_o_ap_vld,sha_info_digest_4_i,sha_info_digest_4_o,sha_info_digest_4_o_ap_vld,sha_info_data_address0,sha_info_data_ce0,sha_info_data_we0,sha_info_data_d0,sha_info_data_q0,sha_info_data_address1,sha_info_data_ce1,sha_info_data_we1,sha_info_data_d1,sha_info_data_q1);  
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] buffer_offset;
input  [31:0] sha_info_count_lo_i;
output  [31:0] sha_info_count_lo_o;
output   sha_info_count_lo_o_ap_vld;
input  [31:0] sha_info_count_hi_i;
output  [31:0] sha_info_count_hi_o;
output   sha_info_count_hi_o_ap_vld;
input  [31:0] sha_info_digest_0_i;
output  [31:0] sha_info_digest_0_o;
output   sha_info_digest_0_o_ap_vld;
input  [31:0] sha_info_digest_1_i;
output  [31:0] sha_info_digest_1_o;
output   sha_info_digest_1_o_ap_vld;
input  [31:0] sha_info_digest_2_i;
output  [31:0] sha_info_digest_2_o;
output   sha_info_digest_2_o_ap_vld;
input  [31:0] sha_info_digest_3_i;
output  [31:0] sha_info_digest_3_o;
output   sha_info_digest_3_o_ap_vld;
input  [31:0] sha_info_digest_4_i;
output  [31:0] sha_info_digest_4_o;
output   sha_info_digest_4_o_ap_vld;
output  [3:0] sha_info_data_address0;
output   sha_info_data_ce0;
output   sha_info_data_we0;
output  [31:0] sha_info_data_d0;
input  [31:0] sha_info_data_q0;
output  [3:0] sha_info_data_address1;
output   sha_info_data_ce1;
output   sha_info_data_we1;
output  [31:0] sha_info_data_d1;
input  [31:0] sha_info_data_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] sha_info_count_lo_o;
reg sha_info_count_lo_o_ap_vld;
reg[31:0] sha_info_count_hi_o;
reg sha_info_count_hi_o_ap_vld;
reg[31:0] sha_info_digest_0_o;
reg[31:0] sha_info_digest_1_o;
reg[31:0] sha_info_digest_2_o;
reg[31:0] sha_info_digest_3_o;
reg[31:0] sha_info_digest_4_o;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [13:0] tmp_16_fu_61_p3;
reg   [13:0] tmp_16_reg_113;
wire    grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_start;
wire    grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_done;
wire    grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_idle;
wire    grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_ready;
wire   [31:0] grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_0_o;
wire    grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_0_o_ap_vld;
wire   [31:0] grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_1_o;
wire    grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_1_o_ap_vld;
wire   [31:0] grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_2_o;
wire    grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_2_o_ap_vld;
wire   [31:0] grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_3_o;
wire    grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_3_o_ap_vld;
wire   [31:0] grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_4_o;
wire    grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_4_o_ap_vld;
wire   [3:0] grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_address0;
wire    grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_ce0;
wire    grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_we0;
wire   [31:0] grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_d0;
wire   [3:0] grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_address1;
wire    grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_ce1;
wire    grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_we1;
wire   [31:0] grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_d1;
reg    grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_start_reg;
wire    ap_CS_fsm_state2;
wire   [31:0] add_ln159_fu_74_p2;
wire   [31:0] add_ln161_fu_90_p2;
wire   [0:0] icmp_ln159_fu_80_p2;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_start_reg = 1'b0;
end
sha_stream_sha_update_Pipeline_VITIS_LOOP_165_1 grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_start),.ap_done(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_done),.ap_idle(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_idle),.ap_ready(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_ready),.zext_ln74(tmp_16_reg_113),.buffer_offset(buffer_offset),.sha_info_digest_0_i(sha_info_digest_0_i),.sha_info_digest_0_o(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_0_o),.sha_info_digest_0_o_ap_vld(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_0_o_ap_vld),.sha_info_digest_1_i(sha_info_digest_1_i),.sha_info_digest_1_o(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_1_o),.sha_info_digest_1_o_ap_vld(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_1_o_ap_vld),.sha_info_digest_2_i(sha_info_digest_2_i),.sha_info_digest_2_o(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_2_o),.sha_info_digest_2_o_ap_vld(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_2_o_ap_vld),.sha_info_digest_3_i(sha_info_digest_3_i),.sha_info_digest_3_o(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_3_o),.sha_info_digest_3_o_ap_vld(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_3_o_ap_vld),.sha_info_digest_4_i(sha_info_digest_4_i),.sha_info_digest_4_o(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_4_o),.sha_info_digest_4_o_ap_vld(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_4_o_ap_vld),.sha_info_data_address0(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_address0),.sha_info_data_ce0(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_ce0),.sha_info_data_we0(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_we0),.sha_info_data_d0(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_d0),.sha_info_data_q0(sha_info_data_q0),.sha_info_data_address1(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_address1),.sha_info_data_ce1(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_ce1),.sha_info_data_we1(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_we1),.sha_info_data_d1(grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_d1),.sha_info_data_q1(sha_info_data_q1));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_start_reg <= 1'b1;
        end else if ((grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_ready == 1'b1)) begin
            grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        tmp_16_reg_113[13] <= tmp_16_fu_61_p3[13];
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
    if ((grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (icmp_ln159_fu_80_p2 == 1'd1))) begin
        sha_info_count_hi_o = add_ln161_fu_90_p2;
    end else begin
        sha_info_count_hi_o = sha_info_count_hi_i;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln159_fu_80_p2 == 1'd1))) begin
        sha_info_count_hi_o_ap_vld = 1'b1;
    end else begin
        sha_info_count_hi_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        sha_info_count_lo_o = add_ln159_fu_74_p2;
    end else begin
        sha_info_count_lo_o = sha_info_count_lo_i;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sha_info_count_lo_o_ap_vld = 1'b1;
    end else begin
        sha_info_count_lo_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_0_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        sha_info_digest_0_o = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_0_o;
    end else begin
        sha_info_digest_0_o = sha_info_digest_0_i;
    end
end
always @ (*) begin
    if (((grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_1_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        sha_info_digest_1_o = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_1_o;
    end else begin
        sha_info_digest_1_o = sha_info_digest_1_i;
    end
end
always @ (*) begin
    if (((grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_2_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        sha_info_digest_2_o = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_2_o;
    end else begin
        sha_info_digest_2_o = sha_info_digest_2_i;
    end
end
always @ (*) begin
    if (((grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_3_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        sha_info_digest_3_o = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_3_o;
    end else begin
        sha_info_digest_3_o = sha_info_digest_3_i;
    end
end
always @ (*) begin
    if (((grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_4_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        sha_info_digest_4_o = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_4_o;
    end else begin
        sha_info_digest_4_o = sha_info_digest_4_i;
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
            if (((grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln159_fu_74_p2 = (sha_info_count_lo_i + 32'd65536);
assign add_ln161_fu_90_p2 = (sha_info_count_hi_i + 32'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_start = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_ap_start_reg;
assign icmp_ln159_fu_80_p2 = ((sha_info_count_lo_i > 32'd4294901759) ? 1'b1 : 1'b0);
assign sha_info_data_address0 = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_address0;
assign sha_info_data_address1 = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_address1;
assign sha_info_data_ce0 = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_ce0;
assign sha_info_data_ce1 = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_ce1;
assign sha_info_data_d0 = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_d0;
assign sha_info_data_d1 = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_d1;
assign sha_info_data_we0 = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_we0;
assign sha_info_data_we1 = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_data_we1;
assign sha_info_digest_0_o_ap_vld = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_0_o_ap_vld;
assign sha_info_digest_1_o_ap_vld = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_1_o_ap_vld;
assign sha_info_digest_2_o_ap_vld = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_2_o_ap_vld;
assign sha_info_digest_3_o_ap_vld = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_3_o_ap_vld;
assign sha_info_digest_4_o_ap_vld = grp_sha_update_Pipeline_VITIS_LOOP_165_1_fu_40_sha_info_digest_4_o_ap_vld;
assign tmp_16_fu_61_p3 = {{buffer_offset}, {13'd0}};
always @ (posedge ap_clk) begin
    tmp_16_reg_113[12:0] <= 13'b0000000000000;
end
endmodule 
