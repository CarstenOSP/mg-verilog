module ellpack (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nzval_0_address0,nzval_0_ce0,nzval_0_q0,nzval_0_address1,nzval_0_ce1,nzval_0_q1,nzval_1_address0,nzval_1_ce0,nzval_1_q0,nzval_1_address1,nzval_1_ce1,nzval_1_q1,cols_0_address0,cols_0_ce0,cols_0_q0,cols_0_address1,cols_0_ce1,cols_0_q1,cols_1_address0,cols_1_ce0,cols_1_q0,cols_1_address1,cols_1_ce1,cols_1_q1,vec_0_address0,vec_0_ce0,vec_0_q0,vec_0_address1,vec_0_ce1,vec_0_q1,vec_1_address0,vec_1_ce0,vec_1_q0,vec_1_address1,vec_1_ce1,vec_1_q1,out_0_address0,out_0_ce0,out_0_we0,out_0_d0,out_0_q0,out_1_address0,out_1_ce0,out_1_we0,out_1_d0,out_1_q0); 
parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] nzval_0_address0;
output   nzval_0_ce0;
input  [63:0] nzval_0_q0;
output  [11:0] nzval_0_address1;
output   nzval_0_ce1;
input  [63:0] nzval_0_q1;
output  [11:0] nzval_1_address0;
output   nzval_1_ce0;
input  [63:0] nzval_1_q0;
output  [11:0] nzval_1_address1;
output   nzval_1_ce1;
input  [63:0] nzval_1_q1;
output  [11:0] cols_0_address0;
output   cols_0_ce0;
input  [31:0] cols_0_q0;
output  [11:0] cols_0_address1;
output   cols_0_ce1;
input  [31:0] cols_0_q1;
output  [11:0] cols_1_address0;
output   cols_1_ce0;
input  [31:0] cols_1_q0;
output  [11:0] cols_1_address1;
output   cols_1_ce1;
input  [31:0] cols_1_q1;
output  [7:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [7:0] vec_0_address1;
output   vec_0_ce1;
input  [63:0] vec_0_q1;
output  [7:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [7:0] vec_1_address1;
output   vec_1_ce1;
input  [63:0] vec_1_q1;
output  [7:0] out_0_address0;
output   out_0_ce0;
output   out_0_we0;
output  [63:0] out_0_d0;
input  [63:0] out_0_q0;
output  [7:0] out_1_address0;
output   out_1_ce0;
output   out_1_we0;
output  [63:0] out_1_d0;
input  [63:0] out_1_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] add_ln13_fu_129_p2;
reg   [8:0] add_ln13_reg_218;
wire    ap_CS_fsm_state2;
reg   [7:0] out_0_addr_reg_223;
reg   [7:0] out_1_addr_reg_228;
wire   [0:0] trunc_ln13_fu_154_p1;
reg   [0:0] trunc_ln13_reg_233;
wire    ap_CS_fsm_state3;
wire   [63:0] select_ln14_fu_157_p3;
reg   [63:0] select_ln14_reg_237;
wire   [11:0] p_udiv13_fu_176_p2;
reg   [11:0] p_udiv13_reg_242;
wire   [63:0] sum_fu_182_p1;
reg   [63:0] sum_reg_247;
wire    ap_CS_fsm_state4;
wire    grp_ellpack_Pipeline_ellpack_2_fu_96_ap_start;
wire    grp_ellpack_Pipeline_ellpack_2_fu_96_ap_done;
wire    grp_ellpack_Pipeline_ellpack_2_fu_96_ap_idle;
wire    grp_ellpack_Pipeline_ellpack_2_fu_96_ap_ready;
wire   [11:0] grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_0_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_0_ce0;
wire   [11:0] grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_0_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_0_ce1;
wire   [11:0] grp_ellpack_Pipeline_ellpack_2_fu_96_cols_0_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_96_cols_0_ce0;
wire   [11:0] grp_ellpack_Pipeline_ellpack_2_fu_96_cols_0_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_96_cols_0_ce1;
wire   [7:0] grp_ellpack_Pipeline_ellpack_2_fu_96_vec_0_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_96_vec_0_ce0;
wire   [7:0] grp_ellpack_Pipeline_ellpack_2_fu_96_vec_0_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_96_vec_0_ce1;
wire   [7:0] grp_ellpack_Pipeline_ellpack_2_fu_96_vec_1_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_96_vec_1_ce0;
wire   [7:0] grp_ellpack_Pipeline_ellpack_2_fu_96_vec_1_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_96_vec_1_ce1;
wire   [11:0] grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_1_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_1_ce0;
wire   [11:0] grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_1_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_1_ce1;
wire   [11:0] grp_ellpack_Pipeline_ellpack_2_fu_96_cols_1_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_96_cols_1_ce0;
wire   [11:0] grp_ellpack_Pipeline_ellpack_2_fu_96_cols_1_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_96_cols_1_ce1;
wire   [63:0] grp_ellpack_Pipeline_ellpack_2_fu_96_sum_3_out;
wire    grp_ellpack_Pipeline_ellpack_2_fu_96_sum_3_out_ap_vld;
reg    grp_ellpack_Pipeline_ellpack_2_fu_96_ap_start_reg;
wire    ap_CS_fsm_state5;
reg   [63:0] sum_3_loc_fu_66;
wire   [63:0] zext_ln10_fu_145_p1;
wire   [0:0] icmp_ln13_fu_123_p2;
reg   [8:0] i_fu_62;
wire    ap_CS_fsm_state6;
reg    out_0_ce0_local;
reg   [7:0] out_0_address0_local;
reg    out_0_we0_local;
wire   [63:0] bitcast_ln19_fu_189_p1;
reg    out_1_ce0_local;
reg   [7:0] out_1_address0_local;
reg    out_1_we0_local;
wire   [7:0] lshr_ln_fu_135_p4;
wire   [10:0] tmp_fu_165_p3;
wire   [11:0] p_shl_fu_172_p1;
wire   [11:0] zext_ln13_fu_151_p1;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_ellpack_Pipeline_ellpack_2_fu_96_ap_start_reg = 1'b0;
#0 i_fu_62 = 9'd0;
end
ellpack_ellpack_Pipeline_ellpack_2 grp_ellpack_Pipeline_ellpack_2_fu_96(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_ellpack_Pipeline_ellpack_2_fu_96_ap_start),.ap_done(grp_ellpack_Pipeline_ellpack_2_fu_96_ap_done),.ap_idle(grp_ellpack_Pipeline_ellpack_2_fu_96_ap_idle),.ap_ready(grp_ellpack_Pipeline_ellpack_2_fu_96_ap_ready),.sum(sum_reg_247),.p_udiv13(p_udiv13_reg_242),.nzval_0_address0(grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_0_address0),.nzval_0_ce0(grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_0_ce0),.nzval_0_q0(nzval_0_q0),.nzval_0_address1(grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_0_address1),.nzval_0_ce1(grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_0_ce1),.nzval_0_q1(nzval_0_q1),.cols_0_address0(grp_ellpack_Pipeline_ellpack_2_fu_96_cols_0_address0),.cols_0_ce0(grp_ellpack_Pipeline_ellpack_2_fu_96_cols_0_ce0),.cols_0_q0(cols_0_q0),.cols_0_address1(grp_ellpack_Pipeline_ellpack_2_fu_96_cols_0_address1),.cols_0_ce1(grp_ellpack_Pipeline_ellpack_2_fu_96_cols_0_ce1),.cols_0_q1(cols_0_q1),.vec_0_address0(grp_ellpack_Pipeline_ellpack_2_fu_96_vec_0_address0),.vec_0_ce0(grp_ellpack_Pipeline_ellpack_2_fu_96_vec_0_ce0),.vec_0_q0(vec_0_q0),.vec_0_address1(grp_ellpack_Pipeline_ellpack_2_fu_96_vec_0_address1),.vec_0_ce1(grp_ellpack_Pipeline_ellpack_2_fu_96_vec_0_ce1),.vec_0_q1(vec_0_q1),.vec_1_address0(grp_ellpack_Pipeline_ellpack_2_fu_96_vec_1_address0),.vec_1_ce0(grp_ellpack_Pipeline_ellpack_2_fu_96_vec_1_ce0),.vec_1_q0(vec_1_q0),.vec_1_address1(grp_ellpack_Pipeline_ellpack_2_fu_96_vec_1_address1),.vec_1_ce1(grp_ellpack_Pipeline_ellpack_2_fu_96_vec_1_ce1),.vec_1_q1(vec_1_q1),.nzval_1_address0(grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_1_address0),.nzval_1_ce0(grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_1_ce0),.nzval_1_q0(nzval_1_q0),.nzval_1_address1(grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_1_address1),.nzval_1_ce1(grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_1_ce1),.nzval_1_q1(nzval_1_q1),.cols_1_address0(grp_ellpack_Pipeline_ellpack_2_fu_96_cols_1_address0),.cols_1_ce0(grp_ellpack_Pipeline_ellpack_2_fu_96_cols_1_ce0),.cols_1_q0(cols_1_q0),.cols_1_address1(grp_ellpack_Pipeline_ellpack_2_fu_96_cols_1_address1),.cols_1_ce1(grp_ellpack_Pipeline_ellpack_2_fu_96_cols_1_ce1),.cols_1_q1(cols_1_q1),.sum_3_out(grp_ellpack_Pipeline_ellpack_2_fu_96_sum_3_out),.sum_3_out_ap_vld(grp_ellpack_Pipeline_ellpack_2_fu_96_sum_3_out_ap_vld));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ellpack_Pipeline_ellpack_2_fu_96_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_ellpack_Pipeline_ellpack_2_fu_96_ap_start_reg <= 1'b1;
        end else if ((grp_ellpack_Pipeline_ellpack_2_fu_96_ap_ready == 1'b1)) begin
            grp_ellpack_Pipeline_ellpack_2_fu_96_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_62 <= 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        i_fu_62 <= add_ln13_reg_218;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln13_reg_218 <= add_ln13_fu_129_p2;
        out_0_addr_reg_223 <= zext_ln10_fu_145_p1;
        out_1_addr_reg_228 <= zext_ln10_fu_145_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        p_udiv13_reg_242 <= p_udiv13_fu_176_p2;
        select_ln14_reg_237 <= select_ln14_fu_157_p3;
        trunc_ln13_reg_233 <= trunc_ln13_fu_154_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_ellpack_Pipeline_ellpack_2_fu_96_sum_3_out_ap_vld == 1'b1))) begin
        sum_3_loc_fu_66 <= grp_ellpack_Pipeline_ellpack_2_fu_96_sum_3_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_reg_247 <= sum_fu_182_p1;
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
    if ((grp_ellpack_Pipeline_ellpack_2_fu_96_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln13_fu_123_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln13_fu_123_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_0_address0_local = out_0_addr_reg_223;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_0_address0_local = zext_ln10_fu_145_p1;
    end else begin
        out_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        out_0_ce0_local = 1'b1;
    end else begin
        out_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (trunc_ln13_reg_233 == 1'd0))) begin
        out_0_we0_local = 1'b1;
    end else begin
        out_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_1_address0_local = out_1_addr_reg_228;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_1_address0_local = zext_ln10_fu_145_p1;
    end else begin
        out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        out_1_ce0_local = 1'b1;
    end else begin
        out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (trunc_ln13_reg_233 == 1'd1))) begin
        out_1_we0_local = 1'b1;
    end else begin
        out_1_we0_local = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln13_fu_123_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (grp_ellpack_Pipeline_ellpack_2_fu_96_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_129_p2 = (i_fu_62 + 9'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign bitcast_ln19_fu_189_p1 = sum_3_loc_fu_66;
assign cols_0_address0 = grp_ellpack_Pipeline_ellpack_2_fu_96_cols_0_address0;
assign cols_0_address1 = grp_ellpack_Pipeline_ellpack_2_fu_96_cols_0_address1;
assign cols_0_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_96_cols_0_ce0;
assign cols_0_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_96_cols_0_ce1;
assign cols_1_address0 = grp_ellpack_Pipeline_ellpack_2_fu_96_cols_1_address0;
assign cols_1_address1 = grp_ellpack_Pipeline_ellpack_2_fu_96_cols_1_address1;
assign cols_1_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_96_cols_1_ce0;
assign cols_1_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_96_cols_1_ce1;
assign grp_ellpack_Pipeline_ellpack_2_fu_96_ap_start = grp_ellpack_Pipeline_ellpack_2_fu_96_ap_start_reg;
assign icmp_ln13_fu_123_p2 = ((i_fu_62 == 9'd494) ? 1'b1 : 1'b0);
assign lshr_ln_fu_135_p4 = {{i_fu_62[8:1]}};
assign nzval_0_address0 = grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_0_address0;
assign nzval_0_address1 = grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_0_address1;
assign nzval_0_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_0_ce0;
assign nzval_0_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_0_ce1;
assign nzval_1_address0 = grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_1_address0;
assign nzval_1_address1 = grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_1_address1;
assign nzval_1_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_1_ce0;
assign nzval_1_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_96_nzval_1_ce1;
assign out_0_address0 = out_0_address0_local;
assign out_0_ce0 = out_0_ce0_local;
assign out_0_d0 = bitcast_ln19_fu_189_p1;
assign out_0_we0 = out_0_we0_local;
assign out_1_address0 = out_1_address0_local;
assign out_1_ce0 = out_1_ce0_local;
assign out_1_d0 = bitcast_ln19_fu_189_p1;
assign out_1_we0 = out_1_we0_local;
assign p_shl_fu_172_p1 = tmp_fu_165_p3;
assign p_udiv13_fu_176_p2 = (p_shl_fu_172_p1 + zext_ln13_fu_151_p1);
assign select_ln14_fu_157_p3 = ((trunc_ln13_fu_154_p1[0:0] == 1'b1) ? out_1_q0 : out_0_q0);
assign sum_fu_182_p1 = select_ln14_reg_237;
assign tmp_fu_165_p3 = {{i_fu_62}, {2'd0}};
assign trunc_ln13_fu_154_p1 = i_fu_62[0:0];
assign vec_0_address0 = grp_ellpack_Pipeline_ellpack_2_fu_96_vec_0_address0;
assign vec_0_address1 = grp_ellpack_Pipeline_ellpack_2_fu_96_vec_0_address1;
assign vec_0_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_96_vec_0_ce0;
assign vec_0_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_96_vec_0_ce1;
assign vec_1_address0 = grp_ellpack_Pipeline_ellpack_2_fu_96_vec_1_address0;
assign vec_1_address1 = grp_ellpack_Pipeline_ellpack_2_fu_96_vec_1_address1;
assign vec_1_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_96_vec_1_ce0;
assign vec_1_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_96_vec_1_ce1;
assign zext_ln10_fu_145_p1 = lshr_ln_fu_135_p4;
assign zext_ln13_fu_151_p1 = i_fu_62;
endmodule 