
module aes256_encrypt_ecb_aes_subBytes (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_0_address0,buf_0_ce0,buf_0_we0,buf_0_d0,buf_0_q0,buf_1_address0,buf_1_ce0,buf_1_we0,buf_1_d0,buf_1_q0,buf_2_address0,buf_2_ce0,buf_2_we0,buf_2_d0,buf_2_q0,buf_3_address0,buf_3_ce0,buf_3_we0,buf_3_d0,buf_3_q0,buf_4_address0,buf_4_ce0,buf_4_we0,buf_4_d0,buf_4_q0,buf_5_address0,buf_5_ce0,buf_5_we0,buf_5_d0,buf_5_q0,buf_6_address0,buf_6_ce0,buf_6_we0,buf_6_d0,buf_6_q0,buf_7_address0,buf_7_ce0,buf_7_we0,buf_7_d0,buf_7_q0);  
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
output  [0:0] buf_0_address0;
output   buf_0_ce0;
output   buf_0_we0;
output  [7:0] buf_0_d0;
input  [7:0] buf_0_q0;
output  [0:0] buf_1_address0;
output   buf_1_ce0;
output   buf_1_we0;
output  [7:0] buf_1_d0;
input  [7:0] buf_1_q0;
output  [0:0] buf_2_address0;
output   buf_2_ce0;
output   buf_2_we0;
output  [7:0] buf_2_d0;
input  [7:0] buf_2_q0;
output  [0:0] buf_3_address0;
output   buf_3_ce0;
output   buf_3_we0;
output  [7:0] buf_3_d0;
input  [7:0] buf_3_q0;
output  [0:0] buf_4_address0;
output   buf_4_ce0;
output   buf_4_we0;
output  [7:0] buf_4_d0;
input  [7:0] buf_4_q0;
output  [0:0] buf_5_address0;
output   buf_5_ce0;
output   buf_5_we0;
output  [7:0] buf_5_d0;
input  [7:0] buf_5_q0;
output  [0:0] buf_6_address0;
output   buf_6_ce0;
output   buf_6_we0;
output  [7:0] buf_6_d0;
input  [7:0] buf_6_q0;
output  [0:0] buf_7_address0;
output   buf_7_ce0;
output   buf_7_we0;
output  [7:0] buf_7_d0;
input  [7:0] buf_7_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] trunc_ln63_fu_263_p1;
reg   [2:0] trunc_ln63_reg_514;
wire    ap_CS_fsm_state2;
wire   [4:0] add_ln63_fu_267_p2;
reg   [4:0] add_ln63_reg_519;
reg   [0:0] buf_0_addr_reg_524;
reg   [0:0] buf_1_addr_reg_529;
reg   [0:0] buf_2_addr_reg_534;
reg   [0:0] buf_3_addr_reg_539;
reg   [0:0] buf_4_addr_reg_544;
reg   [0:0] buf_5_addr_reg_549;
reg   [0:0] buf_6_addr_reg_554;
reg   [0:0] buf_7_addr_reg_559;
wire   [7:0] x_assign_fu_293_p19;
reg   [7:0] x_assign_reg_564;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln37_fu_332_p2;
reg   [0:0] icmp_ln37_reg_569;
wire   [0:0] grp_aes_subBytes_Pipeline_glog_fu_237_ap_return;
reg   [0:0] targetBlock_reg_573;
wire    ap_CS_fsm_state5;
wire   [7:0] xor_ln37_fu_348_p2;
reg   [7:0] xor_ln37_reg_578;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln15_fu_354_p2;
reg   [0:0] icmp_ln15_reg_583;
wire    grp_aes_subBytes_Pipeline_glog_fu_237_ap_start;
wire    grp_aes_subBytes_Pipeline_glog_fu_237_ap_done;
wire    grp_aes_subBytes_Pipeline_glog_fu_237_ap_idle;
wire    grp_aes_subBytes_Pipeline_glog_fu_237_ap_ready;
wire   [7:0] grp_aes_subBytes_Pipeline_glog_fu_237_i_3_out;
wire    grp_aes_subBytes_Pipeline_glog_fu_237_i_3_out_ap_vld;
wire    grp_aes_subBytes_Pipeline_alog_fu_243_ap_start;
wire    grp_aes_subBytes_Pipeline_alog_fu_243_ap_done;
wire    grp_aes_subBytes_Pipeline_alog_fu_243_ap_idle;
wire    grp_aes_subBytes_Pipeline_alog_fu_243_ap_ready;
wire   [7:0] grp_aes_subBytes_Pipeline_alog_fu_243_atb_18_out;
wire    grp_aes_subBytes_Pipeline_alog_fu_243_atb_18_out_ap_vld;
reg   [7:0] ap_phi_mux_y_10_phi_fu_227_p6;
reg   [7:0] y_10_reg_222;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state4;
reg    grp_aes_subBytes_Pipeline_glog_fu_237_ap_start_reg;
reg   [7:0] i_3_loc_fu_114;
reg    grp_aes_subBytes_Pipeline_alog_fu_243_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire   [63:0] zext_ln63_fu_281_p1;
wire   [0:0] icmp_ln63_fu_257_p2;
reg   [4:0] i_fu_106;
reg    buf_0_ce0_local;
reg   [0:0] buf_0_address0_local;
reg    buf_0_we0_local;
wire   [7:0] xor_ln49_fu_474_p2;
reg    buf_1_ce0_local;
reg   [0:0] buf_1_address0_local;
reg    buf_1_we0_local;
reg    buf_2_ce0_local;
reg   [0:0] buf_2_address0_local;
reg    buf_2_we0_local;
reg    buf_3_ce0_local;
reg   [0:0] buf_3_address0_local;
reg    buf_3_we0_local;
reg    buf_4_ce0_local;
reg   [0:0] buf_4_address0_local;
reg    buf_4_we0_local;
reg    buf_5_ce0_local;
reg   [0:0] buf_5_address0_local;
reg    buf_5_we0_local;
reg    buf_6_ce0_local;
reg   [0:0] buf_6_address0_local;
reg    buf_6_we0_local;
reg    buf_7_ce0_local;
reg   [0:0] buf_7_address0_local;
reg    buf_7_we0_local;
wire   [0:0] tmp_fu_273_p3;
wire   [7:0] x_assign_fu_293_p17;
wire   [7:0] i_4_fu_341_p3;
wire   [6:0] trunc_ln46_fu_364_p1;
wire   [0:0] tmp_1_fu_368_p3;
wire   [5:0] trunc_ln46_2_fu_384_p1;
wire   [1:0] tmp_s_fu_388_p4;
wire   [4:0] trunc_ln47_fu_406_p1;
wire   [2:0] tmp_2_fu_410_p4;
wire   [3:0] trunc_ln47_2_fu_428_p1;
wire   [3:0] tmp_3_fu_432_p4;
wire   [7:0] y_7_fu_398_p3;
wire   [7:0] y_fu_376_p3;
wire   [7:0] xor_ln49_5_fu_450_p2;
wire   [7:0] y_8_fu_420_p3;
wire   [7:0] y_9_fu_442_p3;
wire   [7:0] xor_ln49_7_fu_462_p2;
wire   [7:0] xor_ln49_8_fu_468_p2;
wire   [7:0] xor_ln49_6_fu_456_p2;
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
wire   [2:0] x_assign_fu_293_p1;
wire   [2:0] x_assign_fu_293_p3;
wire   [2:0] x_assign_fu_293_p5;
wire  signed [2:0] x_assign_fu_293_p7;
wire  signed [2:0] x_assign_fu_293_p9;
wire  signed [2:0] x_assign_fu_293_p11;
wire  signed [2:0] x_assign_fu_293_p13;
wire   [2:0] x_assign_fu_293_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 grp_aes_subBytes_Pipeline_glog_fu_237_ap_start_reg = 1'b0;
#0 grp_aes_subBytes_Pipeline_alog_fu_243_ap_start_reg = 1'b0;
#0 i_fu_106 = 5'd0;
end
aes256_encrypt_ecb_aes_subBytes_Pipeline_glog grp_aes_subBytes_Pipeline_glog_fu_237(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_subBytes_Pipeline_glog_fu_237_ap_start),.ap_done(grp_aes_subBytes_Pipeline_glog_fu_237_ap_done),.ap_idle(grp_aes_subBytes_Pipeline_glog_fu_237_ap_idle),.ap_ready(grp_aes_subBytes_Pipeline_glog_fu_237_ap_ready),.x_assign(x_assign_reg_564),.i_3_out(grp_aes_subBytes_Pipeline_glog_fu_237_i_3_out),.i_3_out_ap_vld(grp_aes_subBytes_Pipeline_glog_fu_237_i_3_out_ap_vld),.ap_return(grp_aes_subBytes_Pipeline_glog_fu_237_ap_return));
aes256_encrypt_ecb_aes_subBytes_Pipeline_alog grp_aes_subBytes_Pipeline_alog_fu_243(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_subBytes_Pipeline_alog_fu_243_ap_start),.ap_done(grp_aes_subBytes_Pipeline_alog_fu_243_ap_done),.ap_idle(grp_aes_subBytes_Pipeline_alog_fu_243_ap_idle),.ap_ready(grp_aes_subBytes_Pipeline_alog_fu_243_ap_ready),.xor_ln37(xor_ln37_reg_578),.atb_18_out(grp_aes_subBytes_Pipeline_alog_fu_243_atb_18_out),.atb_18_out_ap_vld(grp_aes_subBytes_Pipeline_alog_fu_243_atb_18_out_ap_vld));
(* dissolve_hierarchy = "yes" *) aes256_encrypt_ecb_sparsemux_17_3_8_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 8 ),.CASE1( 3'h2 ),.din1_WIDTH( 8 ),.CASE2( 3'h3 ),.din2_WIDTH( 8 ),.CASE3( 3'h4 ),.din3_WIDTH( 8 ),.CASE4( 3'h5 ),.din4_WIDTH( 8 ),.CASE5( 3'h6 ),.din5_WIDTH( 8 ),.CASE6( 3'h7 ),.din6_WIDTH( 8 ),.CASE7( 3'h0 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_x_U43(.din0(buf_0_q0),.din1(buf_1_q0),.din2(buf_2_q0),.din3(buf_3_q0),.din4(buf_4_q0),.din5(buf_5_q0),.din6(buf_6_q0),.din7(buf_7_q0),.def(x_assign_fu_293_p17),.sel(trunc_ln63_reg_514),.dout(x_assign_fu_293_p19));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_subBytes_Pipeline_alog_fu_243_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_aes_subBytes_Pipeline_alog_fu_243_ap_start_reg <= 1'b1;
        end else if ((grp_aes_subBytes_Pipeline_alog_fu_243_ap_ready == 1'b1)) begin
            grp_aes_subBytes_Pipeline_alog_fu_243_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_subBytes_Pipeline_glog_fu_237_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln37_reg_569 == 1'd0))) begin
            grp_aes_subBytes_Pipeline_glog_fu_237_ap_start_reg <= 1'b1;
        end else if ((grp_aes_subBytes_Pipeline_glog_fu_237_ap_ready == 1'b1)) begin
            grp_aes_subBytes_Pipeline_glog_fu_237_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_106 <= 5'd16;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        i_fu_106 <= add_ln63_reg_519;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln15_fu_354_p2 == 1'd1))) begin
        y_10_reg_222 <= 8'd1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln37_reg_569 == 1'd1))) begin
        y_10_reg_222 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln15_reg_583 == 1'd0) & (icmp_ln37_reg_569 == 1'd0))) begin
        y_10_reg_222 <= grp_aes_subBytes_Pipeline_alog_fu_243_atb_18_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln63_reg_519 <= add_ln63_fu_267_p2;
        buf_0_addr_reg_524 <= zext_ln63_fu_281_p1;
        buf_1_addr_reg_529 <= zext_ln63_fu_281_p1;
        buf_2_addr_reg_534 <= zext_ln63_fu_281_p1;
        buf_3_addr_reg_539 <= zext_ln63_fu_281_p1;
        buf_4_addr_reg_544 <= zext_ln63_fu_281_p1;
        buf_5_addr_reg_549 <= zext_ln63_fu_281_p1;
        buf_6_addr_reg_554 <= zext_ln63_fu_281_p1;
        buf_7_addr_reg_559 <= zext_ln63_fu_281_p1;
        trunc_ln63_reg_514 <= trunc_ln63_fu_263_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_aes_subBytes_Pipeline_glog_fu_237_i_3_out_ap_vld == 1'b1))) begin
        i_3_loc_fu_114 <= grp_aes_subBytes_Pipeline_glog_fu_237_i_3_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        icmp_ln15_reg_583 <= icmp_ln15_fu_354_p2;
        xor_ln37_reg_578 <= xor_ln37_fu_348_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        icmp_ln37_reg_569 <= icmp_ln37_fu_332_p2;
        x_assign_reg_564 <= x_assign_fu_293_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        targetBlock_reg_573 <= grp_aes_subBytes_Pipeline_glog_fu_237_ap_return;
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
    if ((grp_aes_subBytes_Pipeline_glog_fu_237_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_aes_subBytes_Pipeline_alog_fu_243_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((icmp_ln63_fu_257_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln15_reg_583 == 1'd0) & (icmp_ln37_reg_569 == 1'd0))) begin
        ap_phi_mux_y_10_phi_fu_227_p6 = grp_aes_subBytes_Pipeline_alog_fu_243_atb_18_out;
    end else begin
        ap_phi_mux_y_10_phi_fu_227_p6 = y_10_reg_222;
    end
end
always @ (*) begin
    if (((icmp_ln63_fu_257_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_0_address0_local = buf_0_addr_reg_524;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_0_address0_local = zext_ln63_fu_281_p1;
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
    if (((trunc_ln63_reg_514 == 3'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        buf_0_we0_local = 1'b1;
    end else begin
        buf_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_1_address0_local = buf_1_addr_reg_529;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_1_address0_local = zext_ln63_fu_281_p1;
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
    if (((trunc_ln63_reg_514 == 3'd2) & (1'b1 == ap_CS_fsm_state9))) begin
        buf_1_we0_local = 1'b1;
    end else begin
        buf_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_2_address0_local = buf_2_addr_reg_534;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_2_address0_local = zext_ln63_fu_281_p1;
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
    if (((trunc_ln63_reg_514 == 3'd3) & (1'b1 == ap_CS_fsm_state9))) begin
        buf_2_we0_local = 1'b1;
    end else begin
        buf_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_3_address0_local = buf_3_addr_reg_539;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_3_address0_local = zext_ln63_fu_281_p1;
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
    if (((trunc_ln63_reg_514 == 3'd4) & (1'b1 == ap_CS_fsm_state9))) begin
        buf_3_we0_local = 1'b1;
    end else begin
        buf_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_4_address0_local = buf_4_addr_reg_544;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_4_address0_local = zext_ln63_fu_281_p1;
    end else begin
        buf_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9))) begin
        buf_4_ce0_local = 1'b1;
    end else begin
        buf_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln63_reg_514 == 3'd5) & (1'b1 == ap_CS_fsm_state9))) begin
        buf_4_we0_local = 1'b1;
    end else begin
        buf_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_5_address0_local = buf_5_addr_reg_549;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_5_address0_local = zext_ln63_fu_281_p1;
    end else begin
        buf_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9))) begin
        buf_5_ce0_local = 1'b1;
    end else begin
        buf_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln63_reg_514 == 3'd6) & (1'b1 == ap_CS_fsm_state9))) begin
        buf_5_we0_local = 1'b1;
    end else begin
        buf_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_6_address0_local = buf_6_addr_reg_554;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_6_address0_local = zext_ln63_fu_281_p1;
    end else begin
        buf_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9))) begin
        buf_6_ce0_local = 1'b1;
    end else begin
        buf_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln63_reg_514 == 3'd7) & (1'b1 == ap_CS_fsm_state9))) begin
        buf_6_we0_local = 1'b1;
    end else begin
        buf_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_7_address0_local = buf_7_addr_reg_559;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_7_address0_local = zext_ln63_fu_281_p1;
    end else begin
        buf_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state9))) begin
        buf_7_ce0_local = 1'b1;
    end else begin
        buf_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln63_reg_514 == 3'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        buf_7_we0_local = 1'b1;
    end else begin
        buf_7_we0_local = 1'b0;
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
            if (((icmp_ln63_fu_257_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln37_reg_569 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (grp_aes_subBytes_Pipeline_glog_fu_237_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln15_fu_354_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_aes_subBytes_Pipeline_alog_fu_243_ap_done == 1'b1))) begin
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
assign add_ln63_fu_267_p2 = ($signed(i_fu_106) + $signed(5'd31));
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
assign buf_0_d0 = xor_ln49_fu_474_p2;
assign buf_0_we0 = buf_0_we0_local;
assign buf_1_address0 = buf_1_address0_local;
assign buf_1_ce0 = buf_1_ce0_local;
assign buf_1_d0 = xor_ln49_fu_474_p2;
assign buf_1_we0 = buf_1_we0_local;
assign buf_2_address0 = buf_2_address0_local;
assign buf_2_ce0 = buf_2_ce0_local;
assign buf_2_d0 = xor_ln49_fu_474_p2;
assign buf_2_we0 = buf_2_we0_local;
assign buf_3_address0 = buf_3_address0_local;
assign buf_3_ce0 = buf_3_ce0_local;
assign buf_3_d0 = xor_ln49_fu_474_p2;
assign buf_3_we0 = buf_3_we0_local;
assign buf_4_address0 = buf_4_address0_local;
assign buf_4_ce0 = buf_4_ce0_local;
assign buf_4_d0 = xor_ln49_fu_474_p2;
assign buf_4_we0 = buf_4_we0_local;
assign buf_5_address0 = buf_5_address0_local;
assign buf_5_ce0 = buf_5_ce0_local;
assign buf_5_d0 = xor_ln49_fu_474_p2;
assign buf_5_we0 = buf_5_we0_local;
assign buf_6_address0 = buf_6_address0_local;
assign buf_6_ce0 = buf_6_ce0_local;
assign buf_6_d0 = xor_ln49_fu_474_p2;
assign buf_6_we0 = buf_6_we0_local;
assign buf_7_address0 = buf_7_address0_local;
assign buf_7_ce0 = buf_7_ce0_local;
assign buf_7_d0 = xor_ln49_fu_474_p2;
assign buf_7_we0 = buf_7_we0_local;
assign grp_aes_subBytes_Pipeline_alog_fu_243_ap_start = grp_aes_subBytes_Pipeline_alog_fu_243_ap_start_reg;
assign grp_aes_subBytes_Pipeline_glog_fu_237_ap_start = grp_aes_subBytes_Pipeline_glog_fu_237_ap_start_reg;
assign i_4_fu_341_p3 = ((targetBlock_reg_573[0:0] == 1'b1) ? i_3_loc_fu_114 : 8'd0);
assign icmp_ln15_fu_354_p2 = ((i_4_fu_341_p3 == 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_332_p2 = ((x_assign_fu_293_p19 == 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln63_fu_257_p2 = ((i_fu_106 == 5'd0) ? 1'b1 : 1'b0);
assign tmp_1_fu_368_p3 = ap_phi_mux_y_10_phi_fu_227_p6[32'd7];
assign tmp_2_fu_410_p4 = {{ap_phi_mux_y_10_phi_fu_227_p6[7:5]}};
assign tmp_3_fu_432_p4 = {{ap_phi_mux_y_10_phi_fu_227_p6[7:4]}};
assign tmp_fu_273_p3 = add_ln63_fu_267_p2[32'd3];
assign tmp_s_fu_388_p4 = {{ap_phi_mux_y_10_phi_fu_227_p6[7:6]}};
assign trunc_ln46_2_fu_384_p1 = ap_phi_mux_y_10_phi_fu_227_p6[5:0];
assign trunc_ln46_fu_364_p1 = ap_phi_mux_y_10_phi_fu_227_p6[6:0];
assign trunc_ln47_2_fu_428_p1 = ap_phi_mux_y_10_phi_fu_227_p6[3:0];
assign trunc_ln47_fu_406_p1 = ap_phi_mux_y_10_phi_fu_227_p6[4:0];
assign trunc_ln63_fu_263_p1 = i_fu_106[2:0];
assign x_assign_fu_293_p17 = 'bx;
assign xor_ln37_fu_348_p2 = (i_4_fu_341_p3 ^ 8'd255);
assign xor_ln49_5_fu_450_p2 = (y_fu_376_p3 ^ y_7_fu_398_p3);
assign xor_ln49_6_fu_456_p2 = (y_8_fu_420_p3 ^ xor_ln49_5_fu_450_p2);
assign xor_ln49_7_fu_462_p2 = (y_9_fu_442_p3 ^ 8'd99);
assign xor_ln49_8_fu_468_p2 = (xor_ln49_7_fu_462_p2 ^ ap_phi_mux_y_10_phi_fu_227_p6);
assign xor_ln49_fu_474_p2 = (xor_ln49_8_fu_468_p2 ^ xor_ln49_6_fu_456_p2);
assign y_7_fu_398_p3 = {{trunc_ln46_2_fu_384_p1}, {tmp_s_fu_388_p4}};
assign y_8_fu_420_p3 = {{trunc_ln47_fu_406_p1}, {tmp_2_fu_410_p4}};
assign y_9_fu_442_p3 = {{trunc_ln47_2_fu_428_p1}, {tmp_3_fu_432_p4}};
assign y_fu_376_p3 = {{trunc_ln46_fu_364_p1}, {tmp_1_fu_368_p3}};
assign zext_ln63_fu_281_p1 = tmp_fu_273_p3;
endmodule 
