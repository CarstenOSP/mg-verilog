module aes256_encrypt_ecb_aes_subBytes (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_0_i,buf_0_o,buf_0_o_ap_vld,buf_1_i,buf_1_o,buf_1_o_ap_vld,buf_2_i,buf_2_o,buf_2_o_ap_vld,buf_3_i,buf_3_o,buf_3_o_ap_vld,buf_4_i,buf_4_o,buf_4_o_ap_vld,buf_5_i,buf_5_o,buf_5_o_ap_vld,buf_6_i,buf_6_o,buf_6_o_ap_vld,buf_7_i,buf_7_o,buf_7_o_ap_vld,buf_8_i,buf_8_o,buf_8_o_ap_vld,buf_9_i,buf_9_o,buf_9_o_ap_vld,buf_10_i,buf_10_o,buf_10_o_ap_vld,buf_11_i,buf_11_o,buf_11_o_ap_vld,buf_12_i,buf_12_o,buf_12_o_ap_vld,buf_13_i,buf_13_o,buf_13_o_ap_vld,buf_14_i,buf_14_o,buf_14_o_ap_vld,buf_15_i,buf_15_o,buf_15_o_ap_vld); 
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
input  [7:0] buf_0_i;
output  [7:0] buf_0_o;
output   buf_0_o_ap_vld;
input  [7:0] buf_1_i;
output  [7:0] buf_1_o;
output   buf_1_o_ap_vld;
input  [7:0] buf_2_i;
output  [7:0] buf_2_o;
output   buf_2_o_ap_vld;
input  [7:0] buf_3_i;
output  [7:0] buf_3_o;
output   buf_3_o_ap_vld;
input  [7:0] buf_4_i;
output  [7:0] buf_4_o;
output   buf_4_o_ap_vld;
input  [7:0] buf_5_i;
output  [7:0] buf_5_o;
output   buf_5_o_ap_vld;
input  [7:0] buf_6_i;
output  [7:0] buf_6_o;
output   buf_6_o_ap_vld;
input  [7:0] buf_7_i;
output  [7:0] buf_7_o;
output   buf_7_o_ap_vld;
input  [7:0] buf_8_i;
output  [7:0] buf_8_o;
output   buf_8_o_ap_vld;
input  [7:0] buf_9_i;
output  [7:0] buf_9_o;
output   buf_9_o_ap_vld;
input  [7:0] buf_10_i;
output  [7:0] buf_10_o;
output   buf_10_o_ap_vld;
input  [7:0] buf_11_i;
output  [7:0] buf_11_o;
output   buf_11_o_ap_vld;
input  [7:0] buf_12_i;
output  [7:0] buf_12_o;
output   buf_12_o_ap_vld;
input  [7:0] buf_13_i;
output  [7:0] buf_13_o;
output   buf_13_o_ap_vld;
input  [7:0] buf_14_i;
output  [7:0] buf_14_o;
output   buf_14_o_ap_vld;
input  [7:0] buf_15_i;
output  [7:0] buf_15_o;
output   buf_15_o_ap_vld;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] buf_0_o;
reg buf_0_o_ap_vld;
reg[7:0] buf_1_o;
reg buf_1_o_ap_vld;
reg[7:0] buf_2_o;
reg buf_2_o_ap_vld;
reg[7:0] buf_3_o;
reg buf_3_o_ap_vld;
reg[7:0] buf_4_o;
reg buf_4_o_ap_vld;
reg[7:0] buf_5_o;
reg buf_5_o_ap_vld;
reg[7:0] buf_6_o;
reg buf_6_o_ap_vld;
reg[7:0] buf_7_o;
reg buf_7_o_ap_vld;
reg[7:0] buf_8_o;
reg buf_8_o_ap_vld;
reg[7:0] buf_9_o;
reg buf_9_o_ap_vld;
reg[7:0] buf_10_o;
reg buf_10_o_ap_vld;
reg[7:0] buf_11_o;
reg buf_11_o_ap_vld;
reg[7:0] buf_12_o;
reg buf_12_o_ap_vld;
reg[7:0] buf_13_o;
reg buf_13_o_ap_vld;
reg[7:0] buf_14_o;
reg buf_14_o_ap_vld;
reg[7:0] buf_15_o;
reg buf_15_o_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [4:0] i_3_reg_649;
wire    ap_CS_fsm_state2;
wire   [7:0] x_assign_fu_385_p35;
reg   [7:0] x_assign_reg_656;
wire   [0:0] icmp_ln37_fu_457_p2;
reg   [0:0] icmp_ln37_reg_661;
wire   [4:0] add_ln63_fu_463_p2;
reg   [4:0] add_ln63_reg_665;
wire    ap_CS_fsm_state3;
wire   [0:0] grp_aes_subBytes_Pipeline_glog_fu_359_ap_return;
reg   [0:0] targetBlock_reg_670;
wire    ap_CS_fsm_state4;
wire   [7:0] xor_ln37_fu_478_p2;
reg   [7:0] xor_ln37_reg_675;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln15_fu_484_p2;
reg   [0:0] icmp_ln15_reg_680;
wire    grp_aes_subBytes_Pipeline_glog_fu_359_ap_start;
wire    grp_aes_subBytes_Pipeline_glog_fu_359_ap_done;
wire    grp_aes_subBytes_Pipeline_glog_fu_359_ap_idle;
wire    grp_aes_subBytes_Pipeline_glog_fu_359_ap_ready;
wire   [7:0] grp_aes_subBytes_Pipeline_glog_fu_359_i_3_out;
wire    grp_aes_subBytes_Pipeline_glog_fu_359_i_3_out_ap_vld;
wire    grp_aes_subBytes_Pipeline_alog_fu_365_ap_start;
wire    grp_aes_subBytes_Pipeline_alog_fu_365_ap_done;
wire    grp_aes_subBytes_Pipeline_alog_fu_365_ap_idle;
wire    grp_aes_subBytes_Pipeline_alog_fu_365_ap_ready;
wire   [7:0] grp_aes_subBytes_Pipeline_alog_fu_365_atb_18_out;
wire    grp_aes_subBytes_Pipeline_alog_fu_365_atb_18_out_ap_vld;
reg   [7:0] ap_phi_mux_y_10_phi_fu_349_p6;
reg   [7:0] y_10_reg_344;
wire    ap_CS_fsm_state8;
reg    grp_aes_subBytes_Pipeline_glog_fu_359_ap_start_reg;
reg   [7:0] i_3_loc_fu_132;
reg    grp_aes_subBytes_Pipeline_alog_fu_365_ap_start_reg;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
reg   [4:0] i_fu_124;
wire   [0:0] icmp_ln63_fu_379_p2;
wire   [7:0] xor_ln49_fu_604_p2;
wire   [7:0] x_assign_fu_385_p33;
wire   [7:0] i_4_fu_471_p3;
wire   [6:0] trunc_ln46_fu_494_p1;
wire   [0:0] tmp_fu_498_p3;
wire   [5:0] trunc_ln46_2_fu_514_p1;
wire   [1:0] tmp_s_fu_518_p4;
wire   [4:0] trunc_ln47_fu_536_p1;
wire   [2:0] tmp_1_fu_540_p4;
wire   [3:0] trunc_ln47_2_fu_558_p1;
wire   [3:0] tmp_2_fu_562_p4;
wire   [7:0] y_7_fu_528_p3;
wire   [7:0] y_fu_506_p3;
wire   [7:0] xor_ln49_5_fu_580_p2;
wire   [7:0] y_8_fu_550_p3;
wire   [7:0] y_9_fu_572_p3;
wire   [7:0] xor_ln49_7_fu_592_p2;
wire   [7:0] xor_ln49_8_fu_598_p2;
wire   [7:0] xor_ln49_6_fu_586_p2;
reg   [7:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire   [4:0] x_assign_fu_385_p1;
wire   [4:0] x_assign_fu_385_p3;
wire   [4:0] x_assign_fu_385_p5;
wire   [4:0] x_assign_fu_385_p7;
wire   [4:0] x_assign_fu_385_p9;
wire   [4:0] x_assign_fu_385_p11;
wire   [4:0] x_assign_fu_385_p13;
wire   [4:0] x_assign_fu_385_p15;
wire   [4:0] x_assign_fu_385_p17;
wire   [4:0] x_assign_fu_385_p19;
wire   [4:0] x_assign_fu_385_p21;
wire   [4:0] x_assign_fu_385_p23;
wire   [4:0] x_assign_fu_385_p25;
wire   [4:0] x_assign_fu_385_p27;
wire   [4:0] x_assign_fu_385_p29;
wire  signed [4:0] x_assign_fu_385_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 grp_aes_subBytes_Pipeline_glog_fu_359_ap_start_reg = 1'b0;
#0 grp_aes_subBytes_Pipeline_alog_fu_365_ap_start_reg = 1'b0;
#0 i_fu_124 = 5'd0;
end
aes256_encrypt_ecb_aes_subBytes_Pipeline_glog grp_aes_subBytes_Pipeline_glog_fu_359(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_subBytes_Pipeline_glog_fu_359_ap_start),.ap_done(grp_aes_subBytes_Pipeline_glog_fu_359_ap_done),.ap_idle(grp_aes_subBytes_Pipeline_glog_fu_359_ap_idle),.ap_ready(grp_aes_subBytes_Pipeline_glog_fu_359_ap_ready),.x_assign(x_assign_reg_656),.i_3_out(grp_aes_subBytes_Pipeline_glog_fu_359_i_3_out),.i_3_out_ap_vld(grp_aes_subBytes_Pipeline_glog_fu_359_i_3_out_ap_vld),.ap_return(grp_aes_subBytes_Pipeline_glog_fu_359_ap_return));
aes256_encrypt_ecb_aes_subBytes_Pipeline_alog grp_aes_subBytes_Pipeline_alog_fu_365(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_subBytes_Pipeline_alog_fu_365_ap_start),.ap_done(grp_aes_subBytes_Pipeline_alog_fu_365_ap_done),.ap_idle(grp_aes_subBytes_Pipeline_alog_fu_365_ap_idle),.ap_ready(grp_aes_subBytes_Pipeline_alog_fu_365_ap_ready),.xor_ln37(xor_ln37_reg_675),.atb_18_out(grp_aes_subBytes_Pipeline_alog_fu_365_atb_18_out),.atb_18_out_ap_vld(grp_aes_subBytes_Pipeline_alog_fu_365_atb_18_out_ap_vld));
(* dissolve_hierarchy = "yes" *) aes256_encrypt_ecb_sparsemux_33_5_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h1 ),.din0_WIDTH( 8 ),.CASE1( 5'h2 ),.din1_WIDTH( 8 ),.CASE2( 5'h3 ),.din2_WIDTH( 8 ),.CASE3( 5'h4 ),.din3_WIDTH( 8 ),.CASE4( 5'h5 ),.din4_WIDTH( 8 ),.CASE5( 5'h6 ),.din5_WIDTH( 8 ),.CASE6( 5'h7 ),.din6_WIDTH( 8 ),.CASE7( 5'h8 ),.din7_WIDTH( 8 ),.CASE8( 5'h9 ),.din8_WIDTH( 8 ),.CASE9( 5'hA ),.din9_WIDTH( 8 ),.CASE10( 5'hB ),.din10_WIDTH( 8 ),.CASE11( 5'hC ),.din11_WIDTH( 8 ),.CASE12( 5'hD ),.din12_WIDTH( 8 ),.CASE13( 5'hE ),.din13_WIDTH( 8 ),.CASE14( 5'hF ),.din14_WIDTH( 8 ),.CASE15( 5'h10 ),.din15_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 5 ),.dout_WIDTH( 8 ))
sparsemux_33_5_8_1_1_U59(.din0(buf_0_i),.din1(buf_1_i),.din2(buf_2_i),.din3(buf_3_i),.din4(buf_4_i),.din5(buf_5_i),.din6(buf_6_i),.din7(buf_7_i),.din8(buf_8_i),.din9(buf_9_i),.din10(buf_10_i),.din11(buf_11_i),.din12(buf_12_i),.din13(buf_13_i),.din14(buf_14_i),.din15(buf_15_i),.def(x_assign_fu_385_p33),.sel(i_fu_124),.dout(x_assign_fu_385_p35));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_subBytes_Pipeline_alog_fu_365_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_aes_subBytes_Pipeline_alog_fu_365_ap_start_reg <= 1'b1;
        end else if ((grp_aes_subBytes_Pipeline_alog_fu_365_ap_ready == 1'b1)) begin
            grp_aes_subBytes_Pipeline_alog_fu_365_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_subBytes_Pipeline_glog_fu_359_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln37_reg_661 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_aes_subBytes_Pipeline_glog_fu_359_ap_start_reg <= 1'b1;
        end else if ((grp_aes_subBytes_Pipeline_glog_fu_359_ap_ready == 1'b1)) begin
            grp_aes_subBytes_Pipeline_glog_fu_359_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_124 <= 5'd16;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        i_fu_124 <= add_ln63_reg_665;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln15_fu_484_p2 == 1'd1))) begin
        y_10_reg_344 <= 8'd1;
    end else if (((icmp_ln37_reg_661 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        y_10_reg_344 <= 8'd0;
    end else if (((icmp_ln37_reg_661 == 1'd0) & (1'b1 == ap_CS_fsm_state8) & (icmp_ln15_reg_680 == 1'd0))) begin
        y_10_reg_344 <= grp_aes_subBytes_Pipeline_alog_fu_365_atb_18_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln63_reg_665 <= add_ln63_fu_463_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_aes_subBytes_Pipeline_glog_fu_359_i_3_out_ap_vld == 1'b1))) begin
        i_3_loc_fu_132 <= grp_aes_subBytes_Pipeline_glog_fu_359_i_3_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_3_reg_649 <= i_fu_124;
        icmp_ln37_reg_661 <= icmp_ln37_fu_457_p2;
        x_assign_reg_656 <= x_assign_fu_385_p35;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        icmp_ln15_reg_680 <= icmp_ln15_fu_484_p2;
        xor_ln37_reg_675 <= xor_ln37_fu_478_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        targetBlock_reg_670 <= grp_aes_subBytes_Pipeline_glog_fu_359_ap_return;
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
    if ((grp_aes_subBytes_Pipeline_glog_fu_359_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if ((grp_aes_subBytes_Pipeline_alog_fu_365_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (icmp_ln63_fu_379_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln37_reg_661 == 1'd0) & (1'b1 == ap_CS_fsm_state8) & (icmp_ln15_reg_680 == 1'd0))) begin
        ap_phi_mux_y_10_phi_fu_349_p6 = grp_aes_subBytes_Pipeline_alog_fu_365_atb_18_out;
    end else begin
        ap_phi_mux_y_10_phi_fu_349_p6 = y_10_reg_344;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln63_fu_379_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_0_o = xor_ln49_fu_604_p2;
    end else begin
        buf_0_o = buf_0_i;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_0_o_ap_vld = 1'b1;
    end else begin
        buf_0_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd11) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_10_o = xor_ln49_fu_604_p2;
    end else begin
        buf_10_o = buf_10_i;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd11) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_10_o_ap_vld = 1'b1;
    end else begin
        buf_10_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd12) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_11_o = xor_ln49_fu_604_p2;
    end else begin
        buf_11_o = buf_11_i;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd12) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_11_o_ap_vld = 1'b1;
    end else begin
        buf_11_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd13) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_12_o = xor_ln49_fu_604_p2;
    end else begin
        buf_12_o = buf_12_i;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd13) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_12_o_ap_vld = 1'b1;
    end else begin
        buf_12_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd14) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_13_o = xor_ln49_fu_604_p2;
    end else begin
        buf_13_o = buf_13_i;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd14) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_13_o_ap_vld = 1'b1;
    end else begin
        buf_13_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd15) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_14_o = xor_ln49_fu_604_p2;
    end else begin
        buf_14_o = buf_14_i;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd15) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_14_o_ap_vld = 1'b1;
    end else begin
        buf_14_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((~(i_3_reg_649 == 5'd1) & ~(i_3_reg_649 == 5'd2) & ~(i_3_reg_649 == 5'd3) & ~(i_3_reg_649 == 5'd4) & ~(i_3_reg_649 == 5'd5) & ~(i_3_reg_649 == 5'd6) & ~(i_3_reg_649 == 5'd7) & ~(i_3_reg_649 == 5'd8) & ~(i_3_reg_649 == 5'd9) & ~(i_3_reg_649 == 5'd10) & ~(i_3_reg_649 == 5'd11) & ~(i_3_reg_649 == 5'd12) & ~(i_3_reg_649 == 5'd13) & ~(i_3_reg_649 == 5'd14) & ~(i_3_reg_649 == 5'd15) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_15_o = xor_ln49_fu_604_p2;
    end else begin
        buf_15_o = buf_15_i;
    end
end
always @ (*) begin
    if ((~(i_3_reg_649 == 5'd1) & ~(i_3_reg_649 == 5'd2) & ~(i_3_reg_649 == 5'd3) & ~(i_3_reg_649 == 5'd4) & ~(i_3_reg_649 == 5'd5) & ~(i_3_reg_649 == 5'd6) & ~(i_3_reg_649 == 5'd7) & ~(i_3_reg_649 == 5'd8) & ~(i_3_reg_649 == 5'd9) & ~(i_3_reg_649 == 5'd10) & ~(i_3_reg_649 == 5'd11) & ~(i_3_reg_649 == 5'd12) & ~(i_3_reg_649 == 5'd13) & ~(i_3_reg_649 == 5'd14) & ~(i_3_reg_649 == 5'd15) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_15_o_ap_vld = 1'b1;
    end else begin
        buf_15_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd2) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_1_o = xor_ln49_fu_604_p2;
    end else begin
        buf_1_o = buf_1_i;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd2) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_1_o_ap_vld = 1'b1;
    end else begin
        buf_1_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd3) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_2_o = xor_ln49_fu_604_p2;
    end else begin
        buf_2_o = buf_2_i;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd3) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_2_o_ap_vld = 1'b1;
    end else begin
        buf_2_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd4) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_3_o = xor_ln49_fu_604_p2;
    end else begin
        buf_3_o = buf_3_i;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd4) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_3_o_ap_vld = 1'b1;
    end else begin
        buf_3_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd5) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_4_o = xor_ln49_fu_604_p2;
    end else begin
        buf_4_o = buf_4_i;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd5) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_4_o_ap_vld = 1'b1;
    end else begin
        buf_4_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd6) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_5_o = xor_ln49_fu_604_p2;
    end else begin
        buf_5_o = buf_5_i;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd6) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_5_o_ap_vld = 1'b1;
    end else begin
        buf_5_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd7) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_6_o = xor_ln49_fu_604_p2;
    end else begin
        buf_6_o = buf_6_i;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd7) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_6_o_ap_vld = 1'b1;
    end else begin
        buf_6_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd8) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_7_o = xor_ln49_fu_604_p2;
    end else begin
        buf_7_o = buf_7_i;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd8) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_7_o_ap_vld = 1'b1;
    end else begin
        buf_7_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd9) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_8_o = xor_ln49_fu_604_p2;
    end else begin
        buf_8_o = buf_8_i;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd9) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_8_o_ap_vld = 1'b1;
    end else begin
        buf_8_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd10) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_9_o = xor_ln49_fu_604_p2;
    end else begin
        buf_9_o = buf_9_i;
    end
end
always @ (*) begin
    if (((i_3_reg_649 == 5'd10) & (1'b1 == ap_CS_fsm_state8))) begin
        buf_9_o_ap_vld = 1'b1;
    end else begin
        buf_9_o_ap_vld = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln63_fu_379_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln37_reg_661 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_aes_subBytes_Pipeline_glog_fu_359_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln15_fu_484_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (grp_aes_subBytes_Pipeline_alog_fu_365_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln63_fu_463_p2 = ($signed(i_fu_124) + $signed(5'd31));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign grp_aes_subBytes_Pipeline_alog_fu_365_ap_start = grp_aes_subBytes_Pipeline_alog_fu_365_ap_start_reg;
assign grp_aes_subBytes_Pipeline_glog_fu_359_ap_start = grp_aes_subBytes_Pipeline_glog_fu_359_ap_start_reg;
assign i_4_fu_471_p3 = ((targetBlock_reg_670[0:0] == 1'b1) ? i_3_loc_fu_132 : 8'd0);
assign icmp_ln15_fu_484_p2 = ((i_4_fu_471_p3 == 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_457_p2 = ((x_assign_fu_385_p35 == 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln63_fu_379_p2 = ((i_fu_124 == 5'd0) ? 1'b1 : 1'b0);
assign tmp_1_fu_540_p4 = {{ap_phi_mux_y_10_phi_fu_349_p6[7:5]}};
assign tmp_2_fu_562_p4 = {{ap_phi_mux_y_10_phi_fu_349_p6[7:4]}};
assign tmp_fu_498_p3 = ap_phi_mux_y_10_phi_fu_349_p6[32'd7];
assign tmp_s_fu_518_p4 = {{ap_phi_mux_y_10_phi_fu_349_p6[7:6]}};
assign trunc_ln46_2_fu_514_p1 = ap_phi_mux_y_10_phi_fu_349_p6[5:0];
assign trunc_ln46_fu_494_p1 = ap_phi_mux_y_10_phi_fu_349_p6[6:0];
assign trunc_ln47_2_fu_558_p1 = ap_phi_mux_y_10_phi_fu_349_p6[3:0];
assign trunc_ln47_fu_536_p1 = ap_phi_mux_y_10_phi_fu_349_p6[4:0];
assign x_assign_fu_385_p33 = 'bx;
assign xor_ln37_fu_478_p2 = (i_4_fu_471_p3 ^ 8'd255);
assign xor_ln49_5_fu_580_p2 = (y_fu_506_p3 ^ y_7_fu_528_p3);
assign xor_ln49_6_fu_586_p2 = (y_8_fu_550_p3 ^ xor_ln49_5_fu_580_p2);
assign xor_ln49_7_fu_592_p2 = (y_9_fu_572_p3 ^ 8'd99);
assign xor_ln49_8_fu_598_p2 = (xor_ln49_7_fu_592_p2 ^ ap_phi_mux_y_10_phi_fu_349_p6);
assign xor_ln49_fu_604_p2 = (xor_ln49_8_fu_598_p2 ^ xor_ln49_6_fu_586_p2);
assign y_7_fu_528_p3 = {{trunc_ln46_2_fu_514_p1}, {tmp_s_fu_518_p4}};
assign y_8_fu_550_p3 = {{trunc_ln47_fu_536_p1}, {tmp_1_fu_540_p4}};
assign y_9_fu_572_p3 = {{trunc_ln47_2_fu_558_p1}, {tmp_2_fu_562_p4}};
assign y_fu_506_p3 = {{trunc_ln46_fu_494_p1}, {tmp_fu_498_p3}};
endmodule 