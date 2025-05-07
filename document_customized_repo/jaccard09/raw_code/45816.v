module stencil (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,orig_address0,orig_ce0,orig_q0,orig_address1,orig_ce1,orig_q1,sol_address0,sol_ce0,sol_we0,sol_d0,filter_address0,filter_ce0,filter_q0,filter_address1,filter_ce1,filter_q1); 
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
output  [12:0] orig_address0;
output   orig_ce0;
input  [31:0] orig_q0;
output  [12:0] orig_address1;
output   orig_ce1;
input  [31:0] orig_q1;
output  [12:0] sol_address0;
output   sol_ce0;
output   sol_we0;
output  [31:0] sol_d0;
output  [3:0] filter_address0;
output   filter_ce0;
input  [31:0] filter_q0;
output  [3:0] filter_address1;
output   filter_ce1;
input  [31:0] filter_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] r_1_reg_166;
wire    ap_CS_fsm_state2;
wire   [6:0] add_ln7_fu_115_p2;
reg   [6:0] add_ln7_reg_175;
wire   [5:0] add_ln8_fu_127_p2;
reg   [5:0] add_ln8_reg_183;
wire    ap_CS_fsm_state3;
wire    grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_ap_start;
wire    grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_ap_done;
wire    grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_ap_idle;
wire    grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_ap_ready;
wire   [3:0] grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_filter_address0;
wire    grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_filter_ce0;
wire   [3:0] grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_filter_address1;
wire    grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_filter_ce1;
wire   [12:0] grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_orig_address0;
wire    grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_orig_ce0;
wire   [12:0] grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_orig_address1;
wire    grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_orig_ce1;
wire   [31:0] grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_temp_out;
wire    grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_temp_out_ap_vld;
reg   [5:0] c_reg_77;
wire   [0:0] icmp_ln7_fu_109_p2;
wire    ap_CS_fsm_state5;
reg    grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_ap_start_reg;
wire   [0:0] icmp_ln8_fu_121_p2;
wire    ap_CS_fsm_state4;
reg   [31:0] temp_loc_fu_60;
wire   [63:0] zext_ln16_fu_148_p1;
reg   [6:0] r_fu_56;
reg    sol_we0_local;
reg    sol_ce0_local;
wire   [12:0] add_ln_fu_141_p3;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_ap_start_reg = 1'b0;
#0 r_fu_56 = 7'd0;
end
stencil_stencil_Pipeline_stencil_label3_stencil_label4 grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_ap_start),.ap_done(grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_ap_done),.ap_idle(grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_ap_idle),.ap_ready(grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_ap_ready),.r(r_1_reg_166),.c(c_reg_77),.filter_address0(grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_filter_address0),.filter_ce0(grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_filter_ce0),.filter_q0(filter_q0),.filter_address1(grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_filter_address1),.filter_ce1(grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_filter_ce1),.filter_q1(filter_q1),.orig_address0(grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_orig_address0),.orig_ce0(grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_orig_ce0),.orig_q0(orig_q0),.orig_address1(grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_orig_address1),.orig_ce1(grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_orig_ce1),.orig_q1(orig_q1),.temp_out(grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_temp_out),.temp_out_ap_vld(grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_temp_out_ap_vld));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln8_fu_121_p2 == 1'd0))) begin
            grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_ap_start_reg <= 1'b1;
        end else if ((grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_ap_ready == 1'b1)) begin
            grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        c_reg_77 <= add_ln8_reg_183;
    end else if (((icmp_ln7_fu_109_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        c_reg_77 <= 6'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        r_fu_56 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln8_fu_121_p2 == 1'd1))) begin
        r_fu_56 <= add_ln7_reg_175;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln7_reg_175 <= add_ln7_fu_115_p2;
        r_1_reg_166 <= r_fu_56;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln8_reg_183 <= add_ln8_fu_127_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_temp_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        temp_loc_fu_60 <= grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_temp_out;
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
    if ((grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln7_fu_109_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln7_fu_109_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sol_ce0_local = 1'b1;
    end else begin
        sol_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sol_we0_local = 1'b1;
    end else begin
        sol_we0_local = 1'b0;
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
            if (((icmp_ln7_fu_109_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln8_fu_121_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
assign add_ln7_fu_115_p2 = (r_fu_56 + 7'd1);
assign add_ln8_fu_127_p2 = (c_reg_77 + 6'd1);
assign add_ln_fu_141_p3 = {{r_1_reg_166}, {c_reg_77}};
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign filter_address0 = grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_filter_address0;
assign filter_address1 = grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_filter_address1;
assign filter_ce0 = grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_filter_ce0;
assign filter_ce1 = grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_filter_ce1;
assign grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_ap_start = grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_ap_start_reg;
assign icmp_ln7_fu_109_p2 = ((r_fu_56 == 7'd126) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_121_p2 = ((c_reg_77 == 6'd62) ? 1'b1 : 1'b0);
assign orig_address0 = grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_orig_address0;
assign orig_address1 = grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_orig_address1;
assign orig_ce0 = grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_orig_ce0;
assign orig_ce1 = grp_stencil_Pipeline_stencil_label3_stencil_label4_fu_89_orig_ce1;
assign sol_address0 = zext_ln16_fu_148_p1;
assign sol_ce0 = sol_ce0_local;
assign sol_d0 = temp_loc_fu_60;
assign sol_we0 = sol_we0_local;
assign zext_ln16_fu_148_p1 = add_ln_fu_141_p3;
endmodule 