
module ellpack (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nzval_address0,nzval_ce0,nzval_q0,nzval_address1,nzval_ce1,nzval_q1,cols_address0,cols_ce0,cols_q0,cols_address1,cols_ce1,cols_q1,vec_address0,vec_ce0,vec_q0,vec_address1,vec_ce1,vec_q1,out_r_address0,out_r_ce0,out_r_we0,out_r_d0,out_r_q0);  
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
output  [12:0] nzval_address0;
output   nzval_ce0;
input  [63:0] nzval_q0;
output  [12:0] nzval_address1;
output   nzval_ce1;
input  [63:0] nzval_q1;
output  [12:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [12:0] cols_address1;
output   cols_ce1;
input  [31:0] cols_q1;
output  [8:0] vec_address0;
output   vec_ce0;
input  [63:0] vec_q0;
output  [8:0] vec_address1;
output   vec_ce1;
input  [63:0] vec_q1;
output  [8:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [63:0] out_r_d0;
input  [63:0] out_r_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [8:0] i_1_reg_171;
wire    ap_CS_fsm_state2;
reg   [8:0] out_r_addr_reg_180;
reg   [63:0] out_r_load_reg_185;
wire    ap_CS_fsm_state3;
wire   [12:0] empty_fu_140_p2;
reg   [12:0] empty_reg_190;
wire   [63:0] sum_fu_146_p1;
reg   [63:0] sum_reg_195;
wire    ap_CS_fsm_state4;
wire    grp_ellpack_Pipeline_ellpack_2_fu_75_ap_start;
wire    grp_ellpack_Pipeline_ellpack_2_fu_75_ap_done;
wire    grp_ellpack_Pipeline_ellpack_2_fu_75_ap_idle;
wire    grp_ellpack_Pipeline_ellpack_2_fu_75_ap_ready;
wire   [12:0] grp_ellpack_Pipeline_ellpack_2_fu_75_nzval_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_75_nzval_ce0;
wire   [12:0] grp_ellpack_Pipeline_ellpack_2_fu_75_nzval_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_75_nzval_ce1;
wire   [12:0] grp_ellpack_Pipeline_ellpack_2_fu_75_cols_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_75_cols_ce0;
wire   [12:0] grp_ellpack_Pipeline_ellpack_2_fu_75_cols_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_75_cols_ce1;
wire   [8:0] grp_ellpack_Pipeline_ellpack_2_fu_75_vec_address0;
wire    grp_ellpack_Pipeline_ellpack_2_fu_75_vec_ce0;
wire   [8:0] grp_ellpack_Pipeline_ellpack_2_fu_75_vec_address1;
wire    grp_ellpack_Pipeline_ellpack_2_fu_75_vec_ce1;
wire   [63:0] grp_ellpack_Pipeline_ellpack_2_fu_75_sum_3_out;
wire    grp_ellpack_Pipeline_ellpack_2_fu_75_sum_3_out_ap_vld;
reg    grp_ellpack_Pipeline_ellpack_2_fu_75_ap_start_reg;
wire    ap_CS_fsm_state5;
reg   [63:0] sum_3_loc_fu_58;
wire   [63:0] zext_ln13_fu_108_p1;
wire   [0:0] icmp_ln13_fu_96_p2;
reg   [8:0] i_fu_54;
wire   [8:0] add_ln13_fu_102_p2;
wire    ap_CS_fsm_state6;
reg    out_r_ce0_local;
reg   [8:0] out_r_address0_local;
reg    out_r_we0_local;
wire   [63:0] bitcast_ln19_fu_153_p1;
wire   [11:0] tmp_fu_118_p3;
wire   [9:0] tmp_4_fu_129_p3;
wire   [12:0] p_shl_fu_125_p1;
wire   [12:0] p_shl1_fu_136_p1;
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
#0 grp_ellpack_Pipeline_ellpack_2_fu_75_ap_start_reg = 1'b0;
#0 i_fu_54 = 9'd0;
end
ellpack_ellpack_Pipeline_ellpack_2 grp_ellpack_Pipeline_ellpack_2_fu_75(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_ellpack_Pipeline_ellpack_2_fu_75_ap_start),.ap_done(grp_ellpack_Pipeline_ellpack_2_fu_75_ap_done),.ap_idle(grp_ellpack_Pipeline_ellpack_2_fu_75_ap_idle),.ap_ready(grp_ellpack_Pipeline_ellpack_2_fu_75_ap_ready),.sum(sum_reg_195),.empty(empty_reg_190),.nzval_address0(grp_ellpack_Pipeline_ellpack_2_fu_75_nzval_address0),.nzval_ce0(grp_ellpack_Pipeline_ellpack_2_fu_75_nzval_ce0),.nzval_q0(nzval_q0),.nzval_address1(grp_ellpack_Pipeline_ellpack_2_fu_75_nzval_address1),.nzval_ce1(grp_ellpack_Pipeline_ellpack_2_fu_75_nzval_ce1),.nzval_q1(nzval_q1),.cols_address0(grp_ellpack_Pipeline_ellpack_2_fu_75_cols_address0),.cols_ce0(grp_ellpack_Pipeline_ellpack_2_fu_75_cols_ce0),.cols_q0(cols_q0),.cols_address1(grp_ellpack_Pipeline_ellpack_2_fu_75_cols_address1),.cols_ce1(grp_ellpack_Pipeline_ellpack_2_fu_75_cols_ce1),.cols_q1(cols_q1),.vec_address0(grp_ellpack_Pipeline_ellpack_2_fu_75_vec_address0),.vec_ce0(grp_ellpack_Pipeline_ellpack_2_fu_75_vec_ce0),.vec_q0(vec_q0),.vec_address1(grp_ellpack_Pipeline_ellpack_2_fu_75_vec_address1),.vec_ce1(grp_ellpack_Pipeline_ellpack_2_fu_75_vec_ce1),.vec_q1(vec_q1),.sum_3_out(grp_ellpack_Pipeline_ellpack_2_fu_75_sum_3_out),.sum_3_out_ap_vld(grp_ellpack_Pipeline_ellpack_2_fu_75_sum_3_out_ap_vld));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ellpack_Pipeline_ellpack_2_fu_75_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_ellpack_Pipeline_ellpack_2_fu_75_ap_start_reg <= 1'b1;
        end else if ((grp_ellpack_Pipeline_ellpack_2_fu_75_ap_ready == 1'b1)) begin
            grp_ellpack_Pipeline_ellpack_2_fu_75_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_54 <= 9'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln13_fu_96_p2 == 1'd0))) begin
        i_fu_54 <= add_ln13_fu_102_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        empty_reg_190[12 : 1] <= empty_fu_140_p2[12 : 1];
        out_r_load_reg_185 <= out_r_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_171 <= i_fu_54;
        out_r_addr_reg_180 <= zext_ln13_fu_108_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (grp_ellpack_Pipeline_ellpack_2_fu_75_sum_3_out_ap_vld == 1'b1))) begin
        sum_3_loc_fu_58 <= grp_ellpack_Pipeline_ellpack_2_fu_75_sum_3_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sum_reg_195 <= sum_fu_146_p1;
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
    if ((grp_ellpack_Pipeline_ellpack_2_fu_75_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln13_fu_96_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln13_fu_96_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_r_address0_local = out_r_addr_reg_180;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        out_r_address0_local = zext_ln13_fu_108_p1;
    end else begin
        out_r_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state6))) begin
        out_r_ce0_local = 1'b1;
    end else begin
        out_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_r_we0_local = 1'b1;
    end else begin
        out_r_we0_local = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln13_fu_96_p2 == 1'd1))) begin
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
            if (((grp_ellpack_Pipeline_ellpack_2_fu_75_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
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
assign add_ln13_fu_102_p2 = (i_fu_54 + 9'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign bitcast_ln19_fu_153_p1 = sum_3_loc_fu_58;
assign cols_address0 = grp_ellpack_Pipeline_ellpack_2_fu_75_cols_address0;
assign cols_address1 = grp_ellpack_Pipeline_ellpack_2_fu_75_cols_address1;
assign cols_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_75_cols_ce0;
assign cols_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_75_cols_ce1;
assign empty_fu_140_p2 = (p_shl_fu_125_p1 + p_shl1_fu_136_p1);
assign grp_ellpack_Pipeline_ellpack_2_fu_75_ap_start = grp_ellpack_Pipeline_ellpack_2_fu_75_ap_start_reg;
assign icmp_ln13_fu_96_p2 = ((i_fu_54 == 9'd494) ? 1'b1 : 1'b0);
assign nzval_address0 = grp_ellpack_Pipeline_ellpack_2_fu_75_nzval_address0;
assign nzval_address1 = grp_ellpack_Pipeline_ellpack_2_fu_75_nzval_address1;
assign nzval_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_75_nzval_ce0;
assign nzval_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_75_nzval_ce1;
assign out_r_address0 = out_r_address0_local;
assign out_r_ce0 = out_r_ce0_local;
assign out_r_d0 = bitcast_ln19_fu_153_p1;
assign out_r_we0 = out_r_we0_local;
assign p_shl1_fu_136_p1 = tmp_4_fu_129_p3;
assign p_shl_fu_125_p1 = tmp_fu_118_p3;
assign sum_fu_146_p1 = out_r_load_reg_185;
assign tmp_4_fu_129_p3 = {{i_1_reg_171}, {1'd0}};
assign tmp_fu_118_p3 = {{i_1_reg_171}, {3'd0}};
assign vec_address0 = grp_ellpack_Pipeline_ellpack_2_fu_75_vec_address0;
assign vec_address1 = grp_ellpack_Pipeline_ellpack_2_fu_75_vec_address1;
assign vec_ce0 = grp_ellpack_Pipeline_ellpack_2_fu_75_vec_ce0;
assign vec_ce1 = grp_ellpack_Pipeline_ellpack_2_fu_75_vec_ce1;
assign zext_ln13_fu_108_p1 = i_fu_54;
always @ (posedge ap_clk) begin
    empty_reg_190[0] <= 1'b0;
end
endmodule 
