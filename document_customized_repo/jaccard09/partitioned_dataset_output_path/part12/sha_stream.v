
module sha_stream (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready);  
parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] sha_info_digest_0;
reg   [31:0] sha_info_digest_1;
reg   [31:0] sha_info_digest_2;
reg   [31:0] sha_info_digest_3;
reg   [31:0] sha_info_digest_4;
reg   [31:0] sha_info_count_lo;
reg   [31:0] sha_info_count_hi;
reg   [3:0] sha_info_data_address0;
reg    sha_info_data_ce0;
reg    sha_info_data_we0;
reg   [31:0] sha_info_data_d0;
wire   [31:0] sha_info_data_q0;
reg   [3:0] sha_info_data_address1;
reg    sha_info_data_ce1;
wire   [31:0] sha_info_data_q1;
wire   [0:0] icmp_ln188_fu_254_p2;
reg   [0:0] icmp_ln188_reg_358;
wire    ap_CS_fsm_state6;
wire   [3:0] add_ln61_fu_260_p2;
reg   [3:0] add_ln61_reg_362;
wire   [6:0] select_ln58_fu_328_p3;
reg   [6:0] select_ln58_reg_368;
wire   [3:0] m_fu_345_p2;
reg   [3:0] m_reg_373;
wire    ap_CS_fsm_state9;
wire    grp_sha_update_fu_106_ap_start;
wire    grp_sha_update_fu_106_ap_done;
wire    grp_sha_update_fu_106_ap_idle;
wire    grp_sha_update_fu_106_ap_ready;
reg   [0:0] grp_sha_update_fu_106_buffer_offset;
wire   [31:0] grp_sha_update_fu_106_sha_info_count_lo_o;
wire    grp_sha_update_fu_106_sha_info_count_lo_o_ap_vld;
wire   [31:0] grp_sha_update_fu_106_sha_info_count_hi_o;
wire    grp_sha_update_fu_106_sha_info_count_hi_o_ap_vld;
wire   [3:0] grp_sha_update_fu_106_sha_info_data_address0;
wire    grp_sha_update_fu_106_sha_info_data_ce0;
wire    grp_sha_update_fu_106_sha_info_data_we0;
wire   [31:0] grp_sha_update_fu_106_sha_info_data_d0;
wire   [3:0] grp_sha_update_fu_106_sha_info_data_address1;
wire    grp_sha_update_fu_106_sha_info_data_ce1;
wire   [31:0] grp_sha_update_fu_106_sha_info_digest_0_o;
wire    grp_sha_update_fu_106_sha_info_digest_0_o_ap_vld;
wire   [31:0] grp_sha_update_fu_106_sha_info_digest_1_o;
wire    grp_sha_update_fu_106_sha_info_digest_1_o_ap_vld;
wire   [31:0] grp_sha_update_fu_106_sha_info_digest_2_o;
wire    grp_sha_update_fu_106_sha_info_digest_2_o_ap_vld;
wire   [31:0] grp_sha_update_fu_106_sha_info_digest_3_o;
wire    grp_sha_update_fu_106_sha_info_digest_3_o_ap_vld;
wire   [31:0] grp_sha_update_fu_106_sha_info_digest_4_o;
wire    grp_sha_update_fu_106_sha_info_digest_4_o_ap_vld;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_ap_start;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_ap_done;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_ap_idle;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_ap_ready;
wire   [3:0] grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_sha_info_data_address0;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_sha_info_data_ce0;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_sha_info_data_we0;
wire   [31:0] grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_sha_info_data_d0;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_ap_start;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_ap_done;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_ap_idle;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_ap_ready;
wire   [3:0] grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_sha_info_data_address0;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_sha_info_data_ce0;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_sha_info_data_we0;
wire   [31:0] grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_sha_info_data_d0;
wire    grp_sha_transform_fu_147_ap_start;
wire    grp_sha_transform_fu_147_ap_done;
wire    grp_sha_transform_fu_147_ap_idle;
wire    grp_sha_transform_fu_147_ap_ready;
wire   [31:0] grp_sha_transform_fu_147_sha_info_digest_0_o;
wire    grp_sha_transform_fu_147_sha_info_digest_0_o_ap_vld;
wire   [31:0] grp_sha_transform_fu_147_sha_info_digest_1_o;
wire    grp_sha_transform_fu_147_sha_info_digest_1_o_ap_vld;
wire   [31:0] grp_sha_transform_fu_147_sha_info_digest_2_o;
wire    grp_sha_transform_fu_147_sha_info_digest_2_o_ap_vld;
wire   [31:0] grp_sha_transform_fu_147_sha_info_digest_3_o;
wire    grp_sha_transform_fu_147_sha_info_digest_3_o_ap_vld;
wire   [31:0] grp_sha_transform_fu_147_sha_info_digest_4_o;
wire    grp_sha_transform_fu_147_sha_info_digest_4_o_ap_vld;
wire   [3:0] grp_sha_transform_fu_147_sha_info_data_address0;
wire    grp_sha_transform_fu_147_sha_info_data_ce0;
wire   [3:0] grp_sha_transform_fu_147_sha_info_data_address1;
wire    grp_sha_transform_fu_147_sha_info_data_ce1;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_ap_start;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_ap_done;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_ap_idle;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_ap_ready;
wire   [3:0] grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_sha_info_data_address0;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_sha_info_data_ce0;
wire    grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_sha_info_data_we0;
wire   [31:0] grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_sha_info_data_d0;
reg    grp_sha_update_fu_106_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state5;
reg    grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg    grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_ap_start_reg;
wire    ap_CS_fsm_state10;
reg    grp_sha_transform_fu_147_ap_start_reg;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state17;
reg    grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_ap_start_reg;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire   [63:0] zext_ln187_fu_239_p1;
reg    sha_info_data_we0_local;
reg   [31:0] sha_info_data_d0_local;
reg    sha_info_data_ce0_local;
reg   [3:0] sha_info_data_address0_local;
reg    sha_info_data_we1_local;
wire    ap_CS_fsm_state15;
reg    sha_info_data_ce1_local;
wire   [5:0] count_fu_219_p4;
wire   [6:0] zext_ln180_fu_229_p1;
wire   [6:0] count_1_fu_233_p2;
wire   [3:0] trunc_ln_fu_244_p4;
wire   [6:0] sub_ln58_fu_266_p2;
wire   [6:0] sub_ln58_1_fu_280_p2;
wire   [4:0] trunc_ln58_2_fu_286_p4;
wire  signed [5:0] sext_ln58_fu_296_p1;
wire   [6:0] zext_ln58_fu_300_p1;
wire   [4:0] trunc_ln58_3_fu_310_p4;
wire  signed [5:0] sext_ln58_1_fu_320_p1;
wire   [0:0] tmp_fu_272_p3;
wire   [6:0] sub_ln58_2_fu_304_p2;
wire   [6:0] zext_ln58_1_fu_324_p1;
wire   [3:0] trunc_ln1_fu_336_p4;
reg   [16:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
reg    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
reg    ap_block_state14_on_subcall_done;
reg    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 sha_info_digest_0 = 32'd0;
#0 sha_info_digest_1 = 32'd0;
#0 sha_info_digest_2 = 32'd0;
#0 sha_info_digest_3 = 32'd0;
#0 sha_info_digest_4 = 32'd0;
#0 sha_info_count_lo = 32'd0;
#0 sha_info_count_hi = 32'd0;
#0 grp_sha_update_fu_106_ap_start_reg = 1'b0;
#0 grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_ap_start_reg = 1'b0;
#0 grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_ap_start_reg = 1'b0;
#0 grp_sha_transform_fu_147_ap_start_reg = 1'b0;
#0 grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_ap_start_reg = 1'b0;
end
sha_stream_sha_info_data_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 16 ),.AddressWidth( 4 ))
sha_info_data_U(.clk(ap_clk),.reset(ap_rst),.address0(sha_info_data_address0),.ce0(sha_info_data_ce0),.we0(sha_info_data_we0),.d0(sha_info_data_d0),.q0(sha_info_data_q0),.address1(sha_info_data_address1),.ce1(sha_info_data_ce1),.we1(sha_info_data_we1_local),.d1(sha_info_count_hi),.q1(sha_info_data_q1));
sha_stream_sha_update grp_sha_update_fu_106(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sha_update_fu_106_ap_start),.ap_done(grp_sha_update_fu_106_ap_done),.ap_idle(grp_sha_update_fu_106_ap_idle),.ap_ready(grp_sha_update_fu_106_ap_ready),.buffer_offset(grp_sha_update_fu_106_buffer_offset),.sha_info_count_lo_i(sha_info_count_lo),.sha_info_count_lo_o(grp_sha_update_fu_106_sha_info_count_lo_o),.sha_info_count_lo_o_ap_vld(grp_sha_update_fu_106_sha_info_count_lo_o_ap_vld),.sha_info_count_hi_i(sha_info_count_hi),.sha_info_count_hi_o(grp_sha_update_fu_106_sha_info_count_hi_o),.sha_info_count_hi_o_ap_vld(grp_sha_update_fu_106_sha_info_count_hi_o_ap_vld),.sha_info_data_address0(grp_sha_update_fu_106_sha_info_data_address0),.sha_info_data_ce0(grp_sha_update_fu_106_sha_info_data_ce0),.sha_info_data_we0(grp_sha_update_fu_106_sha_info_data_we0),.sha_info_data_d0(grp_sha_update_fu_106_sha_info_data_d0),.sha_info_data_q0(sha_info_data_q0),.sha_info_data_address1(grp_sha_update_fu_106_sha_info_data_address1),.sha_info_data_ce1(grp_sha_update_fu_106_sha_info_data_ce1),.sha_info_data_q1(sha_info_data_q1),.sha_info_digest_0_i(sha_info_digest_0),.sha_info_digest_0_o(grp_sha_update_fu_106_sha_info_digest_0_o),.sha_info_digest_0_o_ap_vld(grp_sha_update_fu_106_sha_info_digest_0_o_ap_vld),.sha_info_digest_1_i(sha_info_digest_1),.sha_info_digest_1_o(grp_sha_update_fu_106_sha_info_digest_1_o),.sha_info_digest_1_o_ap_vld(grp_sha_update_fu_106_sha_info_digest_1_o_ap_vld),.sha_info_digest_2_i(sha_info_digest_2),.sha_info_digest_2_o(grp_sha_update_fu_106_sha_info_digest_2_o),.sha_info_digest_2_o_ap_vld(grp_sha_update_fu_106_sha_info_digest_2_o_ap_vld),.sha_info_digest_3_i(sha_info_digest_3),.sha_info_digest_3_o(grp_sha_update_fu_106_sha_info_digest_3_o),.sha_info_digest_3_o_ap_vld(grp_sha_update_fu_106_sha_info_digest_3_o_ap_vld),.sha_info_digest_4_i(sha_info_digest_4),.sha_info_digest_4_o(grp_sha_update_fu_106_sha_info_digest_4_o),.sha_info_digest_4_o_ap_vld(grp_sha_update_fu_106_sha_info_digest_4_o_ap_vld));
sha_stream_sha_stream_Pipeline_VITIS_LOOP_65_22 grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_ap_start),.ap_done(grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_ap_done),.ap_idle(grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_ap_idle),.ap_ready(grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_ap_ready),.select_ln58(select_ln58_reg_368),.add_ln61(add_ln61_reg_362),.sha_info_data_address0(grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_sha_info_data_address0),.sha_info_data_ce0(grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_sha_info_data_ce0),.sha_info_data_we0(grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_sha_info_data_we0),.sha_info_data_d0(grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_sha_info_data_d0));
sha_stream_sha_stream_Pipeline_VITIS_LOOP_65_2 grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_ap_start),.ap_done(grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_ap_done),.ap_idle(grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_ap_idle),.ap_ready(grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_ap_ready),.m(m_reg_373),.add_ln61(add_ln61_reg_362),.sha_info_data_address0(grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_sha_info_data_address0),.sha_info_data_ce0(grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_sha_info_data_ce0),.sha_info_data_we0(grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_sha_info_data_we0),.sha_info_data_d0(grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_sha_info_data_d0));
sha_stream_sha_transform grp_sha_transform_fu_147(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sha_transform_fu_147_ap_start),.ap_done(grp_sha_transform_fu_147_ap_done),.ap_idle(grp_sha_transform_fu_147_ap_idle),.ap_ready(grp_sha_transform_fu_147_ap_ready),.sha_info_digest_0_i(sha_info_digest_0),.sha_info_digest_0_o(grp_sha_transform_fu_147_sha_info_digest_0_o),.sha_info_digest_0_o_ap_vld(grp_sha_transform_fu_147_sha_info_digest_0_o_ap_vld),.sha_info_digest_1_i(sha_info_digest_1),.sha_info_digest_1_o(grp_sha_transform_fu_147_sha_info_digest_1_o),.sha_info_digest_1_o_ap_vld(grp_sha_transform_fu_147_sha_info_digest_1_o_ap_vld),.sha_info_digest_2_i(sha_info_digest_2),.sha_info_digest_2_o(grp_sha_transform_fu_147_sha_info_digest_2_o),.sha_info_digest_2_o_ap_vld(grp_sha_transform_fu_147_sha_info_digest_2_o_ap_vld),.sha_info_digest_3_i(sha_info_digest_3),.sha_info_digest_3_o(grp_sha_transform_fu_147_sha_info_digest_3_o),.sha_info_digest_3_o_ap_vld(grp_sha_transform_fu_147_sha_info_digest_3_o_ap_vld),.sha_info_digest_4_i(sha_info_digest_4),.sha_info_digest_4_o(grp_sha_transform_fu_147_sha_info_digest_4_o),.sha_info_digest_4_o_ap_vld(grp_sha_transform_fu_147_sha_info_digest_4_o_ap_vld),.sha_info_data_address0(grp_sha_transform_fu_147_sha_info_data_address0),.sha_info_data_ce0(grp_sha_transform_fu_147_sha_info_data_ce0),.sha_info_data_q0(sha_info_data_q0),.sha_info_data_address1(grp_sha_transform_fu_147_sha_info_data_address1),.sha_info_data_ce1(grp_sha_transform_fu_147_sha_info_data_ce1),.sha_info_data_q1(sha_info_data_q1));
sha_stream_sha_stream_Pipeline_VITIS_LOOP_65_21 grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_ap_start),.ap_done(grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_ap_done),.ap_idle(grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_ap_idle),.ap_ready(grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_ap_ready),.sha_info_data_address0(grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_sha_info_data_address0),.sha_info_data_ce0(grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_sha_info_data_ce0),.sha_info_data_we0(grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_sha_info_data_we0),.sha_info_data_d0(grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_sha_info_data_d0));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_ap_start_reg <= 1'b1;
        end else if ((grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_ap_ready == 1'b1)) begin
            grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_ap_start_reg <= 1'b1;
        end else if ((grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_ap_ready == 1'b1)) begin
            grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_ap_start_reg <= 1'b1;
        end else if ((grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_ap_ready == 1'b1)) begin
            grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sha_transform_fu_147_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state11))) begin
            grp_sha_transform_fu_147_ap_start_reg <= 1'b1;
        end else if ((grp_sha_transform_fu_147_ap_ready == 1'b1)) begin
            grp_sha_transform_fu_147_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sha_update_fu_106_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
            grp_sha_update_fu_106_ap_start_reg <= 1'b1;
        end else if ((grp_sha_update_fu_106_ap_ready == 1'b1)) begin
            grp_sha_update_fu_106_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        sha_info_count_hi <= 32'd0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            sha_info_count_hi <= 32'd0;
        end else if ((((grp_sha_update_fu_106_sha_info_count_hi_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((grp_sha_update_fu_106_sha_info_count_hi_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3)))) begin
            sha_info_count_hi <= grp_sha_update_fu_106_sha_info_count_hi_o;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        sha_info_count_lo <= 32'd0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            sha_info_count_lo <= 32'd0;
        end else if ((((grp_sha_update_fu_106_sha_info_count_lo_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((grp_sha_update_fu_106_sha_info_count_lo_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3)))) begin
            sha_info_count_lo <= grp_sha_update_fu_106_sha_info_count_lo_o;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        sha_info_digest_0 <= 32'd0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            sha_info_digest_0 <= 32'd1732584193;
        end else if ((((1'b1 == ap_CS_fsm_state17) & (grp_sha_transform_fu_147_sha_info_digest_0_o_ap_vld == 1'b1)) | ((1'b1 == ap_CS_fsm_state12) & (grp_sha_transform_fu_147_sha_info_digest_0_o_ap_vld == 1'b1)))) begin
            sha_info_digest_0 <= grp_sha_transform_fu_147_sha_info_digest_0_o;
        end else if ((((1'b1 == ap_CS_fsm_state5) & (grp_sha_update_fu_106_sha_info_digest_0_o_ap_vld == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (grp_sha_update_fu_106_sha_info_digest_0_o_ap_vld == 1'b1)))) begin
            sha_info_digest_0 <= grp_sha_update_fu_106_sha_info_digest_0_o;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        sha_info_digest_1 <= 32'd0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            sha_info_digest_1 <= 32'd4023233417;
        end else if ((((1'b1 == ap_CS_fsm_state17) & (grp_sha_transform_fu_147_sha_info_digest_1_o_ap_vld == 1'b1)) | ((1'b1 == ap_CS_fsm_state12) & (grp_sha_transform_fu_147_sha_info_digest_1_o_ap_vld == 1'b1)))) begin
            sha_info_digest_1 <= grp_sha_transform_fu_147_sha_info_digest_1_o;
        end else if ((((1'b1 == ap_CS_fsm_state5) & (grp_sha_update_fu_106_sha_info_digest_1_o_ap_vld == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (grp_sha_update_fu_106_sha_info_digest_1_o_ap_vld == 1'b1)))) begin
            sha_info_digest_1 <= grp_sha_update_fu_106_sha_info_digest_1_o;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        sha_info_digest_2 <= 32'd0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            sha_info_digest_2 <= 32'd2562383102;
        end else if ((((1'b1 == ap_CS_fsm_state17) & (grp_sha_transform_fu_147_sha_info_digest_2_o_ap_vld == 1'b1)) | ((1'b1 == ap_CS_fsm_state12) & (grp_sha_transform_fu_147_sha_info_digest_2_o_ap_vld == 1'b1)))) begin
            sha_info_digest_2 <= grp_sha_transform_fu_147_sha_info_digest_2_o;
        end else if ((((1'b1 == ap_CS_fsm_state5) & (grp_sha_update_fu_106_sha_info_digest_2_o_ap_vld == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (grp_sha_update_fu_106_sha_info_digest_2_o_ap_vld == 1'b1)))) begin
            sha_info_digest_2 <= grp_sha_update_fu_106_sha_info_digest_2_o;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        sha_info_digest_3 <= 32'd0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            sha_info_digest_3 <= 32'd271733878;
        end else if ((((1'b1 == ap_CS_fsm_state17) & (grp_sha_transform_fu_147_sha_info_digest_3_o_ap_vld == 1'b1)) | ((1'b1 == ap_CS_fsm_state12) & (grp_sha_transform_fu_147_sha_info_digest_3_o_ap_vld == 1'b1)))) begin
            sha_info_digest_3 <= grp_sha_transform_fu_147_sha_info_digest_3_o;
        end else if ((((1'b1 == ap_CS_fsm_state5) & (grp_sha_update_fu_106_sha_info_digest_3_o_ap_vld == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (grp_sha_update_fu_106_sha_info_digest_3_o_ap_vld == 1'b1)))) begin
            sha_info_digest_3 <= grp_sha_update_fu_106_sha_info_digest_3_o;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        sha_info_digest_4 <= 32'd0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            sha_info_digest_4 <= 32'd3285377520;
        end else if ((((1'b1 == ap_CS_fsm_state17) & (grp_sha_transform_fu_147_sha_info_digest_4_o_ap_vld == 1'b1)) | ((1'b1 == ap_CS_fsm_state12) & (grp_sha_transform_fu_147_sha_info_digest_4_o_ap_vld == 1'b1)))) begin
            sha_info_digest_4 <= grp_sha_transform_fu_147_sha_info_digest_4_o;
        end else if ((((1'b1 == ap_CS_fsm_state5) & (grp_sha_update_fu_106_sha_info_digest_4_o_ap_vld == 1'b1)) | ((1'b1 == ap_CS_fsm_state3) & (grp_sha_update_fu_106_sha_info_digest_4_o_ap_vld == 1'b1)))) begin
            sha_info_digest_4 <= grp_sha_update_fu_106_sha_info_digest_4_o;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln61_reg_362 <= add_ln61_fu_260_p2;
        icmp_ln188_reg_358 <= icmp_ln188_fu_254_p2;
        select_ln58_reg_368 <= select_ln58_fu_328_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        m_reg_373 <= m_fu_345_p2;
    end
end
always @ (*) begin
    if ((grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((grp_sha_transform_fu_147_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state14_on_subcall_done)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_sha_transform_fu_147_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
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
    if ((grp_sha_update_fu_106_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if ((grp_sha_update_fu_106_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) & (grp_sha_transform_fu_147_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state17) & (grp_sha_transform_fu_147_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_sha_update_fu_106_buffer_offset = 1'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_sha_update_fu_106_buffer_offset = 1'd0;
    end else begin
        grp_sha_update_fu_106_buffer_offset = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln188_reg_358 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        sha_info_data_address0 = grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_sha_info_data_address0;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state12))) begin
        sha_info_data_address0 = grp_sha_transform_fu_147_sha_info_data_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sha_info_data_address0 = grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_sha_info_data_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sha_info_data_address0 = grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_sha_info_data_address0;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        sha_info_data_address0 = grp_sha_update_fu_106_sha_info_data_address0;
    end else begin
        sha_info_data_address0 = sha_info_data_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        sha_info_data_address0_local = 4'd15;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sha_info_data_address0_local = zext_ln187_fu_239_p1;
    end else begin
        sha_info_data_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state12))) begin
        sha_info_data_address1 = grp_sha_transform_fu_147_sha_info_data_address1;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        sha_info_data_address1 = grp_sha_update_fu_106_sha_info_data_address1;
    end else begin
        sha_info_data_address1 = 4'd14;
    end
end
always @ (*) begin
    if (((icmp_ln188_reg_358 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        sha_info_data_ce0 = grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_sha_info_data_ce0;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state12))) begin
        sha_info_data_ce0 = grp_sha_transform_fu_147_sha_info_data_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sha_info_data_ce0 = grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_sha_info_data_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sha_info_data_ce0 = grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_sha_info_data_ce0;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        sha_info_data_ce0 = grp_sha_update_fu_106_sha_info_data_ce0;
    end else begin
        sha_info_data_ce0 = sha_info_data_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state15))) begin
        sha_info_data_ce0_local = 1'b1;
    end else begin
        sha_info_data_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state12))) begin
        sha_info_data_ce1 = grp_sha_transform_fu_147_sha_info_data_ce1;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        sha_info_data_ce1 = grp_sha_update_fu_106_sha_info_data_ce1;
    end else begin
        sha_info_data_ce1 = sha_info_data_ce1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        sha_info_data_ce1_local = 1'b1;
    end else begin
        sha_info_data_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln188_reg_358 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        sha_info_data_d0 = grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_sha_info_data_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sha_info_data_d0 = grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_sha_info_data_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sha_info_data_d0 = grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_sha_info_data_d0;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        sha_info_data_d0 = grp_sha_update_fu_106_sha_info_data_d0;
    end else begin
        sha_info_data_d0 = sha_info_data_d0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        sha_info_data_d0_local = sha_info_count_lo;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sha_info_data_d0_local = 32'd128;
    end else begin
        sha_info_data_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln188_reg_358 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        sha_info_data_we0 = grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_sha_info_data_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sha_info_data_we0 = grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_sha_info_data_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sha_info_data_we0 = grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_sha_info_data_we0;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        sha_info_data_we0 = grp_sha_update_fu_106_sha_info_data_we0;
    end else begin
        sha_info_data_we0 = sha_info_data_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state15))) begin
        sha_info_data_we0_local = 1'b1;
    end else begin
        sha_info_data_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        sha_info_data_we1_local = 1'b1;
    end else begin
        sha_info_data_we1_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_sha_update_fu_106_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_sha_update_fu_106_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln188_fu_254_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (grp_sha_transform_fu_147_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((1'b0 == ap_block_state14_on_subcall_done) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((1'b1 == ap_CS_fsm_state17) & (grp_sha_transform_fu_147_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln61_fu_260_p2 = (trunc_ln_fu_244_p4 + 4'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state14_on_subcall_done = ((icmp_ln188_reg_358 == 1'd1) & (grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_ap_done == 1'b0));
end
assign count_1_fu_233_p2 = (zext_ln180_fu_229_p1 + 7'd1);
assign count_fu_219_p4 = {{sha_info_count_lo[8:3]}};
assign grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_ap_start = grp_sha_stream_Pipeline_VITIS_LOOP_65_21_fu_163_ap_start_reg;
assign grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_ap_start = grp_sha_stream_Pipeline_VITIS_LOOP_65_22_fu_131_ap_start_reg;
assign grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_ap_start = grp_sha_stream_Pipeline_VITIS_LOOP_65_2_fu_139_ap_start_reg;
assign grp_sha_transform_fu_147_ap_start = grp_sha_transform_fu_147_ap_start_reg;
assign grp_sha_update_fu_106_ap_start = grp_sha_update_fu_106_ap_start_reg;
assign icmp_ln188_fu_254_p2 = ((count_1_fu_233_p2 > 7'd56) ? 1'b1 : 1'b0);
assign m_fu_345_p2 = (trunc_ln1_fu_336_p4 ^ 4'd15);
assign select_ln58_fu_328_p3 = ((tmp_fu_272_p3[0:0] == 1'b1) ? sub_ln58_2_fu_304_p2 : zext_ln58_1_fu_324_p1);
assign sext_ln58_1_fu_320_p1 = $signed(trunc_ln58_3_fu_310_p4);
assign sext_ln58_fu_296_p1 = $signed(trunc_ln58_2_fu_286_p4);
assign sub_ln58_1_fu_280_p2 = (7'd0 - sub_ln58_fu_266_p2);
assign sub_ln58_2_fu_304_p2 = (7'd0 - zext_ln58_fu_300_p1);
assign sub_ln58_fu_266_p2 = (7'd55 - zext_ln180_fu_229_p1);
assign tmp_fu_272_p3 = sub_ln58_fu_266_p2[32'd6];
assign trunc_ln1_fu_336_p4 = {{sha_info_count_lo[8:5]}};
assign trunc_ln58_2_fu_286_p4 = {{sub_ln58_1_fu_280_p2[6:2]}};
assign trunc_ln58_3_fu_310_p4 = {{sub_ln58_fu_266_p2[6:2]}};
assign trunc_ln_fu_244_p4 = {{sha_info_count_lo[6:3]}};
assign zext_ln180_fu_229_p1 = count_fu_219_p4;
assign zext_ln187_fu_239_p1 = count_fu_219_p4;
assign zext_ln58_1_fu_324_p1 = $unsigned(sext_ln58_1_fu_320_p1);
assign zext_ln58_fu_300_p1 = $unsigned(sext_ln58_fu_296_p1);
endmodule 
