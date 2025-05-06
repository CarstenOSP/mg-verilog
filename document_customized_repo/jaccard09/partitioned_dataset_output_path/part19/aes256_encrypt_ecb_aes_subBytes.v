
module aes256_encrypt_ecb_aes_subBytes (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_0_address0,buf_0_ce0,buf_0_we0,buf_0_d0,buf_0_q0,buf_1_address0,buf_1_ce0,buf_1_we0,buf_1_d0,buf_1_q0,buf_2_address0,buf_2_ce0,buf_2_we0,buf_2_d0,buf_2_q0,buf_3_address0,buf_3_ce0,buf_3_we0,buf_3_d0,buf_3_q0);  
parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] buf_0_address0;
output   buf_0_ce0;
output   buf_0_we0;
output  [7:0] buf_0_d0;
input  [7:0] buf_0_q0;
output  [1:0] buf_1_address0;
output   buf_1_ce0;
output   buf_1_we0;
output  [7:0] buf_1_d0;
input  [7:0] buf_1_q0;
output  [1:0] buf_2_address0;
output   buf_2_ce0;
output   buf_2_we0;
output  [7:0] buf_2_d0;
input  [7:0] buf_2_q0;
output  [1:0] buf_3_address0;
output   buf_3_ce0;
output   buf_3_we0;
output  [7:0] buf_3_d0;
input  [7:0] buf_3_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [1:0] trunc_ln63_fu_197_p1;
reg   [1:0] trunc_ln63_reg_426;
wire    ap_CS_fsm_state2;
wire   [4:0] add_ln63_fu_201_p2;
reg   [4:0] add_ln63_reg_431;
reg   [1:0] buf_0_addr_reg_436;
reg   [1:0] buf_1_addr_reg_441;
reg   [1:0] buf_2_addr_reg_446;
reg   [1:0] buf_3_addr_reg_451;
wire   [7:0] x_assign_fu_225_p11;
reg   [7:0] x_assign_reg_456;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln37_fu_248_p2;
reg   [0:0] icmp_ln37_reg_461;
wire   [0:0] grp_aes_subBytes_Pipeline_glog_fu_171_ap_return;
reg   [0:0] targetBlock_reg_465;
wire    ap_CS_fsm_state5;
wire   [7:0] xor_ln37_fu_264_p2;
reg   [7:0] xor_ln37_reg_470;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln15_fu_270_p2;
reg   [0:0] icmp_ln15_reg_475;
wire    grp_aes_subBytes_Pipeline_glog_fu_171_ap_start;
wire    grp_aes_subBytes_Pipeline_glog_fu_171_ap_done;
wire    grp_aes_subBytes_Pipeline_glog_fu_171_ap_idle;
wire    grp_aes_subBytes_Pipeline_glog_fu_171_ap_ready;
wire   [7:0] grp_aes_subBytes_Pipeline_glog_fu_171_i_3_out;
wire    grp_aes_subBytes_Pipeline_glog_fu_171_i_3_out_ap_vld;
wire    grp_aes_subBytes_Pipeline_alog_fu_177_ap_start;
wire    grp_aes_subBytes_Pipeline_alog_fu_177_ap_done;
wire    grp_aes_subBytes_Pipeline_alog_fu_177_ap_idle;
wire    grp_aes_subBytes_Pipeline_alog_fu_177_ap_ready;
wire   [7:0] grp_aes_subBytes_Pipeline_alog_fu_177_atb_18_out;
wire    grp_aes_subBytes_Pipeline_alog_fu_177_atb_18_out_ap_vld;
reg   [7:0] ap_phi_mux_y_10_phi_fu_161_p6;
reg   [7:0] y_10_reg_156;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state4;
reg    grp_aes_subBytes_Pipeline_glog_fu_171_ap_start_reg;
reg   [7:0] i_3_loc_fu_100;
reg    grp_aes_subBytes_Pipeline_alog_fu_177_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire   [63:0] zext_ln63_fu_217_p1;
wire   [0:0] icmp_ln63_fu_191_p2;
reg   [4:0] i_fu_92;
reg    buf_0_ce0_local;
reg   [1:0] buf_0_address0_local;
reg    buf_0_we0_local;
wire   [7:0] xor_ln49_fu_390_p2;
reg    buf_1_ce0_local;
reg   [1:0] buf_1_address0_local;
reg    buf_1_we0_local;
reg    buf_2_ce0_local;
reg   [1:0] buf_2_address0_local;
reg    buf_2_we0_local;
reg    buf_3_ce0_local;
reg   [1:0] buf_3_address0_local;
reg    buf_3_we0_local;
wire   [1:0] lshr_ln_fu_207_p4;
wire   [7:0] x_assign_fu_225_p9;
wire   [7:0] i_4_fu_257_p3;
wire   [6:0] trunc_ln46_fu_280_p1;
wire   [0:0] tmp_fu_284_p3;
wire   [5:0] trunc_ln46_2_fu_300_p1;
wire   [1:0] tmp_s_fu_304_p4;
wire   [4:0] trunc_ln47_fu_322_p1;
wire   [2:0] tmp_1_fu_326_p4;
wire   [3:0] trunc_ln47_2_fu_344_p1;
wire   [3:0] tmp_2_fu_348_p4;
wire   [7:0] y_7_fu_314_p3;
wire   [7:0] y_fu_292_p3;
wire   [7:0] xor_ln49_5_fu_366_p2;
wire   [7:0] y_8_fu_336_p3;
wire   [7:0] y_9_fu_358_p3;
wire   [7:0] xor_ln49_7_fu_378_p2;
wire   [7:0] xor_ln49_8_fu_384_p2;
wire   [7:0] xor_ln49_6_fu_372_p2;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire   [1:0] x_assign_fu_225_p1;
wire  signed [1:0] x_assign_fu_225_p3;
wire  signed [1:0] x_assign_fu_225_p5;
wire   [1:0] x_assign_fu_225_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 grp_aes_subBytes_Pipeline_glog_fu_171_ap_start_reg = 1'b0;
#0 grp_aes_subBytes_Pipeline_alog_fu_177_ap_start_reg = 1'b0;
#0 i_fu_92 = 5'd0;
end
aes256_encrypt_ecb_aes_subBytes_Pipeline_glog grp_aes_subBytes_Pipeline_glog_fu_171(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_subBytes_Pipeline_glog_fu_171_ap_start),.ap_done(grp_aes_subBytes_Pipeline_glog_fu_171_ap_done),.ap_idle(grp_aes_subBytes_Pipeline_glog_fu_171_ap_idle),.ap_ready(grp_aes_subBytes_Pipeline_glog_fu_171_ap_ready),.x_assign(x_assign_reg_456),.i_3_out(grp_aes_subBytes_Pipeline_glog_fu_171_i_3_out),.i_3_out_ap_vld(grp_aes_subBytes_Pipeline_glog_fu_171_i_3_out_ap_vld),.ap_return(grp_aes_subBytes_Pipeline_glog_fu_171_ap_return));
aes256_encrypt_ecb_aes_subBytes_Pipeline_alog grp_aes_subBytes_Pipeline_alog_fu_177(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_subBytes_Pipeline_alog_fu_177_ap_start),.ap_done(grp_aes_subBytes_Pipeline_alog_fu_177_ap_done),.ap_idle(grp_aes_subBytes_Pipeline_alog_fu_177_ap_idle),.ap_ready(grp_aes_subBytes_Pipeline_alog_fu_177_ap_ready),.xor_ln37(xor_ln37_reg_470),.atb_18_out(grp_aes_subBytes_Pipeline_alog_fu_177_atb_18_out),.atb_18_out_ap_vld(grp_aes_subBytes_Pipeline_alog_fu_177_atb_18_out_ap_vld));
(* dissolve_hierarchy = "yes" *) aes256_encrypt_ecb_sparsemux_9_2_8_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_x_U35(.din0(buf_0_q0),.din1(buf_1_q0),.din2(buf_2_q0),.din3(buf_3_q0),.def(x_assign_fu_225_p9),.sel(trunc_ln63_reg_426),.dout(x_assign_fu_225_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_subBytes_Pipeline_alog_fu_177_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_aes_subBytes_Pipeline_alog_fu_177_ap_start_reg <= 1'b1;
        end else if ((grp_aes_subBytes_Pipeline_alog_fu_177_ap_ready == 1'b1)) begin
            grp_aes_subBytes_Pipeline_alog_fu_177_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_subBytes_Pipeline_glog_fu_171_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln37_reg_461 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
            grp_aes_subBytes_Pipeline_glog_fu_171_ap_start_reg <= 1'b1;
        end else if ((grp_aes_subBytes_Pipeline_glog_fu_171_ap_ready == 1'b1)) begin
            grp_aes_subBytes_Pipeline_glog_fu_171_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_92 <= 5'd16;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        i_fu_92 <= add_ln63_reg_431;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln15_fu_270_p2 == 1'd1))) begin
        y_10_reg_156 <= 8'd1;
    end else if (((icmp_ln37_reg_461 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        y_10_reg_156 <= 8'd0;
    end else if (((icmp_ln37_reg_461 == 1'd0) & (1'b1 == ap_CS_fsm_state9) & (icmp_ln15_reg_475 == 1'd0))) begin
        y_10_reg_156 <= grp_aes_subBytes_Pipeline_alog_fu_177_atb_18_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln63_reg_431 <= add_ln63_fu_201_p2;
        buf_0_addr_reg_436 <= zext_ln63_fu_217_p1;
        buf_1_addr_reg_441 <= zext_ln63_fu_217_p1;
        buf_2_addr_reg_446 <= zext_ln63_fu_217_p1;
        buf_3_addr_reg_451 <= zext_ln63_fu_217_p1;
        trunc_ln63_reg_426 <= trunc_ln63_fu_197_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_aes_subBytes_Pipeline_glog_fu_171_i_3_out_ap_vld == 1'b1))) begin
        i_3_loc_fu_100 <= grp_aes_subBytes_Pipeline_glog_fu_171_i_3_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        icmp_ln15_reg_475 <= icmp_ln15_fu_270_p2;
        xor_ln37_reg_470 <= xor_ln37_fu_264_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        icmp_ln37_reg_461 <= icmp_ln37_fu_248_p2;
        x_assign_reg_456 <= x_assign_fu_225_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        targetBlock_reg_465 <= grp_aes_subBytes_Pipeline_glog_fu_171_ap_return;
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
    if ((grp_aes_subBytes_Pipeline_glog_fu_171_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_aes_subBytes_Pipeline_alog_fu_177_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (icmp_ln63_fu_191_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln37_reg_461 == 1'd0) & (1'b1 == ap_CS_fsm_state9) & (icmp_ln15_reg_475 == 1'd0))) begin
        ap_phi_mux_y_10_phi_fu_161_p6 = grp_aes_subBytes_Pipeline_alog_fu_177_atb_18_out;
    end else begin
        ap_phi_mux_y_10_phi_fu_161_p6 = y_10_reg_156;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln63_fu_191_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_0_address0_local = buf_0_addr_reg_436;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_0_address0_local = zext_ln63_fu_217_p1;
    end else begin
        buf_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9))) begin
        buf_0_ce0_local = 1'b1;
    end else begin
        buf_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln63_reg_426 == 2'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        buf_0_we0_local = 1'b1;
    end else begin
        buf_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_1_address0_local = buf_1_addr_reg_441;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_1_address0_local = zext_ln63_fu_217_p1;
    end else begin
        buf_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9))) begin
        buf_1_ce0_local = 1'b1;
    end else begin
        buf_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln63_reg_426 == 2'd2) & (1'b1 == ap_CS_fsm_state9))) begin
        buf_1_we0_local = 1'b1;
    end else begin
        buf_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_2_address0_local = buf_2_addr_reg_446;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_2_address0_local = zext_ln63_fu_217_p1;
    end else begin
        buf_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9))) begin
        buf_2_ce0_local = 1'b1;
    end else begin
        buf_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln63_reg_426 == 2'd3) & (1'b1 == ap_CS_fsm_state9))) begin
        buf_2_we0_local = 1'b1;
    end else begin
        buf_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_3_address0_local = buf_3_addr_reg_451;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_3_address0_local = zext_ln63_fu_217_p1;
    end else begin
        buf_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9))) begin
        buf_3_ce0_local = 1'b1;
    end else begin
        buf_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln63_reg_426 == 2'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        buf_3_we0_local = 1'b1;
    end else begin
        buf_3_we0_local = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln63_fu_191_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln37_reg_461 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (grp_aes_subBytes_Pipeline_glog_fu_171_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln15_fu_270_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_aes_subBytes_Pipeline_alog_fu_177_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln63_fu_201_p2 = ($signed(i_fu_92) + $signed(5'd31));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign buf_0_address0 = buf_0_address0_local;
assign buf_0_ce0 = buf_0_ce0_local;
assign buf_0_d0 = xor_ln49_fu_390_p2;
assign buf_0_we0 = buf_0_we0_local;
assign buf_1_address0 = buf_1_address0_local;
assign buf_1_ce0 = buf_1_ce0_local;
assign buf_1_d0 = xor_ln49_fu_390_p2;
assign buf_1_we0 = buf_1_we0_local;
assign buf_2_address0 = buf_2_address0_local;
assign buf_2_ce0 = buf_2_ce0_local;
assign buf_2_d0 = xor_ln49_fu_390_p2;
assign buf_2_we0 = buf_2_we0_local;
assign buf_3_address0 = buf_3_address0_local;
assign buf_3_ce0 = buf_3_ce0_local;
assign buf_3_d0 = xor_ln49_fu_390_p2;
assign buf_3_we0 = buf_3_we0_local;
assign grp_aes_subBytes_Pipeline_alog_fu_177_ap_start = grp_aes_subBytes_Pipeline_alog_fu_177_ap_start_reg;
assign grp_aes_subBytes_Pipeline_glog_fu_171_ap_start = grp_aes_subBytes_Pipeline_glog_fu_171_ap_start_reg;
assign i_4_fu_257_p3 = ((targetBlock_reg_465[0:0] == 1'b1) ? i_3_loc_fu_100 : 8'd0);
assign icmp_ln15_fu_270_p2 = ((i_4_fu_257_p3 == 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_248_p2 = ((x_assign_fu_225_p11 == 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln63_fu_191_p2 = ((i_fu_92 == 5'd0) ? 1'b1 : 1'b0);
assign lshr_ln_fu_207_p4 = {{add_ln63_fu_201_p2[3:2]}};
assign tmp_1_fu_326_p4 = {{ap_phi_mux_y_10_phi_fu_161_p6[7:5]}};
assign tmp_2_fu_348_p4 = {{ap_phi_mux_y_10_phi_fu_161_p6[7:4]}};
assign tmp_fu_284_p3 = ap_phi_mux_y_10_phi_fu_161_p6[32'd7];
assign tmp_s_fu_304_p4 = {{ap_phi_mux_y_10_phi_fu_161_p6[7:6]}};
assign trunc_ln46_2_fu_300_p1 = ap_phi_mux_y_10_phi_fu_161_p6[5:0];
assign trunc_ln46_fu_280_p1 = ap_phi_mux_y_10_phi_fu_161_p6[6:0];
assign trunc_ln47_2_fu_344_p1 = ap_phi_mux_y_10_phi_fu_161_p6[3:0];
assign trunc_ln47_fu_322_p1 = ap_phi_mux_y_10_phi_fu_161_p6[4:0];
assign trunc_ln63_fu_197_p1 = i_fu_92[1:0];
assign x_assign_fu_225_p9 = 'bx;
assign xor_ln37_fu_264_p2 = (i_4_fu_257_p3 ^ 8'd255);
assign xor_ln49_5_fu_366_p2 = (y_fu_292_p3 ^ y_7_fu_314_p3);
assign xor_ln49_6_fu_372_p2 = (y_8_fu_336_p3 ^ xor_ln49_5_fu_366_p2);
assign xor_ln49_7_fu_378_p2 = (y_9_fu_358_p3 ^ 8'd99);
assign xor_ln49_8_fu_384_p2 = (xor_ln49_7_fu_378_p2 ^ ap_phi_mux_y_10_phi_fu_161_p6);
assign xor_ln49_fu_390_p2 = (xor_ln49_8_fu_384_p2 ^ xor_ln49_6_fu_372_p2);
assign y_7_fu_314_p3 = {{trunc_ln46_2_fu_300_p1}, {tmp_s_fu_304_p4}};
assign y_8_fu_336_p3 = {{trunc_ln47_fu_322_p1}, {tmp_1_fu_326_p4}};
assign y_9_fu_358_p3 = {{trunc_ln47_2_fu_344_p1}, {tmp_2_fu_348_p4}};
assign y_fu_292_p3 = {{trunc_ln46_fu_280_p1}, {tmp_fu_284_p3}};
assign zext_ln63_fu_217_p1 = lshr_ln_fu_207_p4;
endmodule 
