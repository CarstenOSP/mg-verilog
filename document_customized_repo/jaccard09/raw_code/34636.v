module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_address0,m1_ce0,m1_q0,m1_address1,m1_ce1,m1_q1,m2_address0,m2_ce0,m2_q0,m2_address1,m2_ce1,m2_q1,prod_address0,prod_ce0,prod_we0,prod_d0,prod_q0,prod_address1,prod_ce1,prod_we1,prod_d1,prod_q1); 
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] m1_address0;
output   m1_ce0;
input  [63:0] m1_q0;
output  [11:0] m1_address1;
output   m1_ce1;
input  [63:0] m1_q1;
output  [11:0] m2_address0;
output   m2_ce0;
input  [63:0] m2_q0;
output  [11:0] m2_address1;
output   m2_ce1;
input  [63:0] m2_q1;
output  [11:0] prod_address0;
output   prod_ce0;
output   prod_we0;
output  [63:0] prod_d0;
input  [63:0] prod_q0;
output  [11:0] prod_address1;
output   prod_ce1;
output   prod_we1;
output  [63:0] prod_d1;
input  [63:0] prod_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] jj_1_reg_130;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln11_fu_89_p1;
reg   [5:0] trunc_ln11_reg_138;
wire   [5:0] trunc_ln16_fu_101_p1;
reg   [5:0] trunc_ln16_reg_146;
wire    ap_CS_fsm_state3;
wire   [6:0] add_ln16_fu_107_p2;
reg   [6:0] add_ln16_reg_152;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_start;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_done;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_idle;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_ready;
wire   [11:0] grp_bbgemm_Pipeline_loopi_loopk_fu_59_m1_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_59_m1_ce0;
wire   [11:0] grp_bbgemm_Pipeline_loopi_loopk_fu_59_m1_address1;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_59_m1_ce1;
wire   [11:0] grp_bbgemm_Pipeline_loopi_loopk_fu_59_m2_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_59_m2_ce0;
wire   [11:0] grp_bbgemm_Pipeline_loopi_loopk_fu_59_m2_address1;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_59_m2_ce1;
wire   [11:0] grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_ce0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_d0;
wire   [11:0] grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_address1;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_ce1;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_we1;
wire   [63:0] grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_d1;
reg   [6:0] kk_reg_48;
wire   [0:0] tmp_fu_81_p3;
wire    ap_CS_fsm_state4;
reg    grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_start_reg;
wire   [0:0] tmp_17_fu_93_p3;
reg   [6:0] jj_fu_44;
wire   [6:0] add_ln15_fu_113_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_start_reg = 1'b0;
#0 jj_fu_44 = 7'd0;
end
bbgemm_bbgemm_Pipeline_loopi_loopk grp_bbgemm_Pipeline_loopi_loopk_fu_59(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_start),.ap_done(grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_done),.ap_idle(grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_idle),.ap_ready(grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_ready),.kk(trunc_ln16_reg_146),.zext_ln16(trunc_ln16_reg_146),.m1_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_59_m1_address0),.m1_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_59_m1_ce0),.m1_q0(m1_q0),.m1_address1(grp_bbgemm_Pipeline_loopi_loopk_fu_59_m1_address1),.m1_ce1(grp_bbgemm_Pipeline_loopi_loopk_fu_59_m1_ce1),.m1_q1(m1_q1),.jj(jj_1_reg_130),.m2_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_59_m2_address0),.m2_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_59_m2_ce0),.m2_q0(m2_q0),.m2_address1(grp_bbgemm_Pipeline_loopi_loopk_fu_59_m2_address1),.m2_ce1(grp_bbgemm_Pipeline_loopi_loopk_fu_59_m2_ce1),.m2_q1(m2_q1),.zext_ln15(trunc_ln11_reg_138),.prod_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_address0),.prod_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_ce0),.prod_we0(grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_we0),.prod_d0(grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_d0),.prod_q0(prod_q0),.prod_address1(grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_address1),.prod_ce1(grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_ce1),.prod_we1(grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_we1),.prod_d1(grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_d1),.prod_q1(prod_q1));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) & (tmp_17_fu_93_p3 == 1'd0))) begin
            grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_start_reg <= 1'b1;
        end else if ((grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_ready == 1'b1)) begin
            grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        jj_fu_44 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (tmp_17_fu_93_p3 == 1'd1))) begin
        jj_fu_44 <= add_ln15_fu_113_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        kk_reg_48 <= add_ln16_reg_152;
    end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_81_p3 == 1'd0))) begin
        kk_reg_48 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln16_reg_152 <= add_ln16_fu_107_p2;
        trunc_ln16_reg_146 <= trunc_ln16_fu_101_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        jj_1_reg_130 <= jj_fu_44;
        trunc_ln11_reg_138 <= trunc_ln11_fu_89_p1;
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
    if ((grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_81_p3 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_81_p3 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_81_p3 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (tmp_17_fu_93_p3 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_fu_113_p2 = (jj_fu_44 + 7'd8);
assign add_ln16_fu_107_p2 = (kk_reg_48 + 7'd8);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_start = grp_bbgemm_Pipeline_loopi_loopk_fu_59_ap_start_reg;
assign m1_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_59_m1_address0;
assign m1_address1 = grp_bbgemm_Pipeline_loopi_loopk_fu_59_m1_address1;
assign m1_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_59_m1_ce0;
assign m1_ce1 = grp_bbgemm_Pipeline_loopi_loopk_fu_59_m1_ce1;
assign m2_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_59_m2_address0;
assign m2_address1 = grp_bbgemm_Pipeline_loopi_loopk_fu_59_m2_address1;
assign m2_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_59_m2_ce0;
assign m2_ce1 = grp_bbgemm_Pipeline_loopi_loopk_fu_59_m2_ce1;
assign prod_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_address0;
assign prod_address1 = grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_address1;
assign prod_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_ce0;
assign prod_ce1 = grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_ce1;
assign prod_d0 = grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_d0;
assign prod_d1 = grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_d1;
assign prod_we0 = grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_we0;
assign prod_we1 = grp_bbgemm_Pipeline_loopi_loopk_fu_59_prod_we1;
assign tmp_17_fu_93_p3 = kk_reg_48[32'd6];
assign tmp_fu_81_p3 = jj_fu_44[32'd6];
assign trunc_ln11_fu_89_p1 = jj_fu_44[5:0];
assign trunc_ln16_fu_101_p1 = kk_reg_48[5:0];
endmodule 