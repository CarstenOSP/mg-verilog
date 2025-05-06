
module gemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_0_address1,m1_0_ce1,m1_0_q1,m1_1_address0,m1_1_ce0,m1_1_q0,m1_1_address1,m1_1_ce1,m1_1_q1,m2_0_address0,m2_0_ce0,m2_0_q0,m2_0_address1,m2_0_ce1,m2_0_q1,m2_1_address0,m2_1_ce0,m2_1_q0,m2_1_address1,m2_1_ce1,m2_1_q1,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0);  
parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [10:0] m1_0_address1;
output   m1_0_ce1;
input  [63:0] m1_0_q1;
output  [10:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [10:0] m1_1_address1;
output   m1_1_ce1;
input  [63:0] m1_1_q1;
output  [10:0] m2_0_address0;
output   m2_0_ce0;
input  [63:0] m2_0_q0;
output  [10:0] m2_0_address1;
output   m2_0_ce1;
input  [63:0] m2_0_q1;
output  [10:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [10:0] m2_1_address1;
output   m2_1_ce1;
input  [63:0] m2_1_q1;
output  [10:0] prod_0_address0;
output   prod_0_ce0;
output   prod_0_we0;
output  [63:0] prod_0_d0;
output  [10:0] prod_1_address0;
output   prod_1_ce0;
output   prod_1_we0;
output  [63:0] prod_1_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln8_fu_134_p2;
reg   [6:0] add_ln8_reg_214;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln8_fu_140_p1;
reg   [5:0] trunc_ln8_reg_219;
wire   [6:0] add_ln9_fu_150_p2;
reg   [6:0] add_ln9_reg_228;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln9_fu_156_p1;
reg   [0:0] trunc_ln9_reg_233;
reg   [4:0] lshr_ln_reg_238;
wire    grp_gemm_Pipeline_inner_fu_103_ap_start;
wire    grp_gemm_Pipeline_inner_fu_103_ap_done;
wire    grp_gemm_Pipeline_inner_fu_103_ap_idle;
wire    grp_gemm_Pipeline_inner_fu_103_ap_ready;
wire   [10:0] grp_gemm_Pipeline_inner_fu_103_m1_0_address0;
wire    grp_gemm_Pipeline_inner_fu_103_m1_0_ce0;
wire   [10:0] grp_gemm_Pipeline_inner_fu_103_m1_0_address1;
wire    grp_gemm_Pipeline_inner_fu_103_m1_0_ce1;
wire   [10:0] grp_gemm_Pipeline_inner_fu_103_m2_0_address0;
wire    grp_gemm_Pipeline_inner_fu_103_m2_0_ce0;
wire   [10:0] grp_gemm_Pipeline_inner_fu_103_m2_0_address1;
wire    grp_gemm_Pipeline_inner_fu_103_m2_0_ce1;
wire   [10:0] grp_gemm_Pipeline_inner_fu_103_m2_1_address0;
wire    grp_gemm_Pipeline_inner_fu_103_m2_1_ce0;
wire   [10:0] grp_gemm_Pipeline_inner_fu_103_m2_1_address1;
wire    grp_gemm_Pipeline_inner_fu_103_m2_1_ce1;
wire   [10:0] grp_gemm_Pipeline_inner_fu_103_m1_1_address0;
wire    grp_gemm_Pipeline_inner_fu_103_m1_1_ce0;
wire   [10:0] grp_gemm_Pipeline_inner_fu_103_m1_1_address1;
wire    grp_gemm_Pipeline_inner_fu_103_m1_1_ce1;
wire   [63:0] grp_gemm_Pipeline_inner_fu_103_sum_out;
wire    grp_gemm_Pipeline_inner_fu_103_sum_out_ap_vld;
reg   [6:0] j_reg_92;
wire   [0:0] icmp_ln8_fu_128_p2;
wire    ap_CS_fsm_state5;
reg    grp_gemm_Pipeline_inner_fu_103_ap_start_reg;
wire   [0:0] icmp_ln9_fu_144_p2;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln17_fu_186_p1;
reg   [6:0] i_fu_58;
reg    prod_0_we0_local;
wire   [63:0] bitcast_ln17_fu_192_p1;
reg    prod_0_ce0_local;
reg    prod_1_we0_local;
reg    prod_1_ce0_local;
wire   [10:0] add_ln1_fu_180_p3;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_gemm_Pipeline_inner_fu_103_ap_start_reg = 1'b0;
#0 i_fu_58 = 7'd0;
end
gemm_gemm_Pipeline_inner grp_gemm_Pipeline_inner_fu_103(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_gemm_Pipeline_inner_fu_103_ap_start),.ap_done(grp_gemm_Pipeline_inner_fu_103_ap_done),.ap_idle(grp_gemm_Pipeline_inner_fu_103_ap_idle),.ap_ready(grp_gemm_Pipeline_inner_fu_103_ap_ready),.i(trunc_ln8_reg_219),.m1_0_address0(grp_gemm_Pipeline_inner_fu_103_m1_0_address0),.m1_0_ce0(grp_gemm_Pipeline_inner_fu_103_m1_0_ce0),.m1_0_q0(m1_0_q0),.m1_0_address1(grp_gemm_Pipeline_inner_fu_103_m1_0_address1),.m1_0_ce1(grp_gemm_Pipeline_inner_fu_103_m1_0_ce1),.m1_0_q1(m1_0_q1),.zext_ln14_48(lshr_ln_reg_238),.m2_0_address0(grp_gemm_Pipeline_inner_fu_103_m2_0_address0),.m2_0_ce0(grp_gemm_Pipeline_inner_fu_103_m2_0_ce0),.m2_0_q0(m2_0_q0),.m2_0_address1(grp_gemm_Pipeline_inner_fu_103_m2_0_address1),.m2_0_ce1(grp_gemm_Pipeline_inner_fu_103_m2_0_ce1),.m2_0_q1(m2_0_q1),.m2_1_address0(grp_gemm_Pipeline_inner_fu_103_m2_1_address0),.m2_1_ce0(grp_gemm_Pipeline_inner_fu_103_m2_1_ce0),.m2_1_q0(m2_1_q0),.m2_1_address1(grp_gemm_Pipeline_inner_fu_103_m2_1_address1),.m2_1_ce1(grp_gemm_Pipeline_inner_fu_103_m2_1_ce1),.m2_1_q1(m2_1_q1),.empty(trunc_ln9_reg_233),.m1_1_address0(grp_gemm_Pipeline_inner_fu_103_m1_1_address0),.m1_1_ce0(grp_gemm_Pipeline_inner_fu_103_m1_1_ce0),.m1_1_q0(m1_1_q0),.m1_1_address1(grp_gemm_Pipeline_inner_fu_103_m1_1_address1),.m1_1_ce1(grp_gemm_Pipeline_inner_fu_103_m1_1_ce1),.m1_1_q1(m1_1_q1),.lshr_ln(lshr_ln_reg_238),.sum_out(grp_gemm_Pipeline_inner_fu_103_sum_out),.sum_out_ap_vld(grp_gemm_Pipeline_inner_fu_103_sum_out_ap_vld));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_gemm_Pipeline_inner_fu_103_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln9_fu_144_p2 == 1'd0))) begin
            grp_gemm_Pipeline_inner_fu_103_ap_start_reg <= 1'b1;
        end else if ((grp_gemm_Pipeline_inner_fu_103_ap_ready == 1'b1)) begin
            grp_gemm_Pipeline_inner_fu_103_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_58 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln9_fu_144_p2 == 1'd1))) begin
        i_fu_58 <= add_ln8_reg_214;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        j_reg_92 <= add_ln9_reg_228;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln8_fu_128_p2 == 1'd0))) begin
        j_reg_92 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln8_reg_214 <= add_ln8_fu_134_p2;
        trunc_ln8_reg_219 <= trunc_ln8_fu_140_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln9_reg_228 <= add_ln9_fu_150_p2;
        lshr_ln_reg_238 <= {{j_reg_92[5:1]}};
        trunc_ln9_reg_233 <= trunc_ln9_fu_156_p1;
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
    if ((grp_gemm_Pipeline_inner_fu_103_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln8_fu_128_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln8_fu_128_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        prod_0_ce0_local = 1'b1;
    end else begin
        prod_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln9_reg_233 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        prod_0_we0_local = 1'b1;
    end else begin
        prod_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        prod_1_ce0_local = 1'b1;
    end else begin
        prod_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln9_reg_233 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        prod_1_we0_local = 1'b1;
    end else begin
        prod_1_we0_local = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln8_fu_128_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln9_fu_144_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((grp_gemm_Pipeline_inner_fu_103_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln1_fu_180_p3 = {{trunc_ln8_reg_219}, {lshr_ln_reg_238}};
assign add_ln8_fu_134_p2 = (i_fu_58 + 7'd1);
assign add_ln9_fu_150_p2 = (j_reg_92 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign bitcast_ln17_fu_192_p1 = grp_gemm_Pipeline_inner_fu_103_sum_out;
assign grp_gemm_Pipeline_inner_fu_103_ap_start = grp_gemm_Pipeline_inner_fu_103_ap_start_reg;
assign icmp_ln8_fu_128_p2 = ((i_fu_58 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_144_p2 = ((j_reg_92 == 7'd64) ? 1'b1 : 1'b0);
assign m1_0_address0 = grp_gemm_Pipeline_inner_fu_103_m1_0_address0;
assign m1_0_address1 = grp_gemm_Pipeline_inner_fu_103_m1_0_address1;
assign m1_0_ce0 = grp_gemm_Pipeline_inner_fu_103_m1_0_ce0;
assign m1_0_ce1 = grp_gemm_Pipeline_inner_fu_103_m1_0_ce1;
assign m1_1_address0 = grp_gemm_Pipeline_inner_fu_103_m1_1_address0;
assign m1_1_address1 = grp_gemm_Pipeline_inner_fu_103_m1_1_address1;
assign m1_1_ce0 = grp_gemm_Pipeline_inner_fu_103_m1_1_ce0;
assign m1_1_ce1 = grp_gemm_Pipeline_inner_fu_103_m1_1_ce1;
assign m2_0_address0 = grp_gemm_Pipeline_inner_fu_103_m2_0_address0;
assign m2_0_address1 = grp_gemm_Pipeline_inner_fu_103_m2_0_address1;
assign m2_0_ce0 = grp_gemm_Pipeline_inner_fu_103_m2_0_ce0;
assign m2_0_ce1 = grp_gemm_Pipeline_inner_fu_103_m2_0_ce1;
assign m2_1_address0 = grp_gemm_Pipeline_inner_fu_103_m2_1_address0;
assign m2_1_address1 = grp_gemm_Pipeline_inner_fu_103_m2_1_address1;
assign m2_1_ce0 = grp_gemm_Pipeline_inner_fu_103_m2_1_ce0;
assign m2_1_ce1 = grp_gemm_Pipeline_inner_fu_103_m2_1_ce1;
assign prod_0_address0 = zext_ln17_fu_186_p1;
assign prod_0_ce0 = prod_0_ce0_local;
assign prod_0_d0 = bitcast_ln17_fu_192_p1;
assign prod_0_we0 = prod_0_we0_local;
assign prod_1_address0 = zext_ln17_fu_186_p1;
assign prod_1_ce0 = prod_1_ce0_local;
assign prod_1_d0 = bitcast_ln17_fu_192_p1;
assign prod_1_we0 = prod_1_we0_local;
assign trunc_ln8_fu_140_p1 = i_fu_58[5:0];
assign trunc_ln9_fu_156_p1 = j_reg_92[0:0];
assign zext_ln17_fu_186_p1 = add_ln1_fu_180_p3;
endmodule 
