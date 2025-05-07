module aes256_encrypt_ecb_rj_sbox (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,x,ap_return); 
parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] x;
output  [7:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] ap_return;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln37_fu_83_p2;
reg   [0:0] icmp_ln37_reg_248;
wire   [0:0] grp_rj_sbox_Pipeline_glog_fu_71_ap_return;
reg   [0:0] targetBlock_reg_252;
wire    ap_CS_fsm_state3;
wire   [7:0] xor_ln37_fu_99_p2;
reg   [7:0] xor_ln37_reg_257;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln15_fu_105_p2;
reg   [0:0] icmp_ln15_reg_262;
wire    grp_rj_sbox_Pipeline_glog_fu_71_ap_start;
wire    grp_rj_sbox_Pipeline_glog_fu_71_ap_done;
wire    grp_rj_sbox_Pipeline_glog_fu_71_ap_idle;
wire    grp_rj_sbox_Pipeline_glog_fu_71_ap_ready;
wire   [7:0] grp_rj_sbox_Pipeline_glog_fu_71_i_out;
wire    grp_rj_sbox_Pipeline_glog_fu_71_i_out_ap_vld;
wire    grp_rj_sbox_Pipeline_alog_fu_77_ap_start;
wire    grp_rj_sbox_Pipeline_alog_fu_77_ap_done;
wire    grp_rj_sbox_Pipeline_alog_fu_77_ap_idle;
wire    grp_rj_sbox_Pipeline_alog_fu_77_ap_ready;
wire   [7:0] grp_rj_sbox_Pipeline_alog_fu_77_atb_9_out;
wire    grp_rj_sbox_Pipeline_alog_fu_77_atb_9_out_ap_vld;
reg   [7:0] ap_phi_mux_y_5_phi_fu_61_p6;
reg   [7:0] y_5_reg_56;
wire    ap_CS_fsm_state7;
reg    grp_rj_sbox_Pipeline_glog_fu_71_ap_start_reg;
wire    ap_CS_fsm_state2;
reg   [7:0] i_loc_fu_46;
reg    grp_rj_sbox_Pipeline_alog_fu_77_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire   [7:0] i_fu_92_p3;
wire   [6:0] trunc_ln46_fu_115_p1;
wire   [0:0] tmp_fu_119_p3;
wire   [5:0] trunc_ln46_1_fu_135_p1;
wire   [1:0] tmp_4_fu_139_p4;
wire   [4:0] trunc_ln47_fu_157_p1;
wire   [2:0] tmp_6_fu_161_p4;
wire   [3:0] trunc_ln47_1_fu_179_p1;
wire   [3:0] tmp_8_fu_183_p4;
wire   [7:0] y_fu_127_p3;
wire   [7:0] y_2_fu_149_p3;
wire   [7:0] xor_ln49_1_fu_201_p2;
wire   [7:0] y_4_fu_193_p3;
wire   [7:0] xor_ln49_3_fu_213_p2;
wire   [7:0] y_3_fu_171_p3;
wire   [7:0] xor_ln49_4_fu_219_p2;
wire   [7:0] xor_ln49_2_fu_207_p2;
wire   [7:0] xor_ln49_fu_225_p2;
reg   [7:0] ap_return_preg;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_rj_sbox_Pipeline_glog_fu_71_ap_start_reg = 1'b0;
#0 grp_rj_sbox_Pipeline_alog_fu_77_ap_start_reg = 1'b0;
#0 ap_return_preg = 8'd0;
end
aes256_encrypt_ecb_rj_sbox_Pipeline_glog grp_rj_sbox_Pipeline_glog_fu_71(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_rj_sbox_Pipeline_glog_fu_71_ap_start),.ap_done(grp_rj_sbox_Pipeline_glog_fu_71_ap_done),.ap_idle(grp_rj_sbox_Pipeline_glog_fu_71_ap_idle),.ap_ready(grp_rj_sbox_Pipeline_glog_fu_71_ap_ready),.x(x),.i_out(grp_rj_sbox_Pipeline_glog_fu_71_i_out),.i_out_ap_vld(grp_rj_sbox_Pipeline_glog_fu_71_i_out_ap_vld),.ap_return(grp_rj_sbox_Pipeline_glog_fu_71_ap_return));
aes256_encrypt_ecb_rj_sbox_Pipeline_alog grp_rj_sbox_Pipeline_alog_fu_77(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_rj_sbox_Pipeline_alog_fu_77_ap_start),.ap_done(grp_rj_sbox_Pipeline_alog_fu_77_ap_done),.ap_idle(grp_rj_sbox_Pipeline_alog_fu_77_ap_idle),.ap_ready(grp_rj_sbox_Pipeline_alog_fu_77_ap_ready),.xor_ln37(xor_ln37_reg_257),.atb_9_out(grp_rj_sbox_Pipeline_alog_fu_77_atb_9_out),.atb_9_out_ap_vld(grp_rj_sbox_Pipeline_alog_fu_77_atb_9_out_ap_vld));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 8'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_return_preg <= xor_ln49_fu_225_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_rj_sbox_Pipeline_alog_fu_77_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_rj_sbox_Pipeline_alog_fu_77_ap_start_reg <= 1'b1;
        end else if ((grp_rj_sbox_Pipeline_alog_fu_77_ap_ready == 1'b1)) begin
            grp_rj_sbox_Pipeline_alog_fu_77_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_rj_sbox_Pipeline_glog_fu_71_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_rj_sbox_Pipeline_glog_fu_71_ap_start_reg <= 1'b1;
        end else if ((grp_rj_sbox_Pipeline_glog_fu_71_ap_ready == 1'b1)) begin
            grp_rj_sbox_Pipeline_glog_fu_71_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln15_fu_105_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        y_5_reg_56 <= 8'd1;
    end else if (((icmp_ln37_fu_83_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        y_5_reg_56 <= 8'd0;
    end else if (((icmp_ln15_reg_262 == 1'd0) & (icmp_ln37_reg_248 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        y_5_reg_56 <= grp_rj_sbox_Pipeline_alog_fu_77_atb_9_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_rj_sbox_Pipeline_glog_fu_71_i_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_loc_fu_46 <= grp_rj_sbox_Pipeline_glog_fu_71_i_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln15_reg_262 <= icmp_ln15_fu_105_p2;
        xor_ln37_reg_257 <= xor_ln37_fu_99_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        icmp_ln37_reg_248 <= icmp_ln37_fu_83_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        targetBlock_reg_252 <= grp_rj_sbox_Pipeline_glog_fu_71_ap_return;
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
    if ((grp_rj_sbox_Pipeline_glog_fu_71_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_rj_sbox_Pipeline_alog_fu_77_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln15_reg_262 == 1'd0) & (icmp_ln37_reg_248 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_phi_mux_y_5_phi_fu_61_p6 = grp_rj_sbox_Pipeline_alog_fu_77_atb_9_out;
    end else begin
        ap_phi_mux_y_5_phi_fu_61_p6 = y_5_reg_56;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_return = xor_ln49_fu_225_p2;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln37_fu_83_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else if (((icmp_ln37_fu_83_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_rj_sbox_Pipeline_glog_fu_71_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln15_fu_105_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_rj_sbox_Pipeline_alog_fu_77_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign grp_rj_sbox_Pipeline_alog_fu_77_ap_start = grp_rj_sbox_Pipeline_alog_fu_77_ap_start_reg;
assign grp_rj_sbox_Pipeline_glog_fu_71_ap_start = grp_rj_sbox_Pipeline_glog_fu_71_ap_start_reg;
assign i_fu_92_p3 = ((targetBlock_reg_252[0:0] == 1'b1) ? i_loc_fu_46 : 8'd0);
assign icmp_ln15_fu_105_p2 = ((i_fu_92_p3 == 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_83_p2 = ((x == 8'd0) ? 1'b1 : 1'b0);
assign tmp_4_fu_139_p4 = {{ap_phi_mux_y_5_phi_fu_61_p6[7:6]}};
assign tmp_6_fu_161_p4 = {{ap_phi_mux_y_5_phi_fu_61_p6[7:5]}};
assign tmp_8_fu_183_p4 = {{ap_phi_mux_y_5_phi_fu_61_p6[7:4]}};
assign tmp_fu_119_p3 = ap_phi_mux_y_5_phi_fu_61_p6[32'd7];
assign trunc_ln46_1_fu_135_p1 = ap_phi_mux_y_5_phi_fu_61_p6[5:0];
assign trunc_ln46_fu_115_p1 = ap_phi_mux_y_5_phi_fu_61_p6[6:0];
assign trunc_ln47_1_fu_179_p1 = ap_phi_mux_y_5_phi_fu_61_p6[3:0];
assign trunc_ln47_fu_157_p1 = ap_phi_mux_y_5_phi_fu_61_p6[4:0];
assign xor_ln37_fu_99_p2 = (i_fu_92_p3 ^ 8'd255);
assign xor_ln49_1_fu_201_p2 = (y_fu_127_p3 ^ y_2_fu_149_p3);
assign xor_ln49_2_fu_207_p2 = (xor_ln49_1_fu_201_p2 ^ ap_phi_mux_y_5_phi_fu_61_p6);
assign xor_ln49_3_fu_213_p2 = (y_4_fu_193_p3 ^ 8'd99);
assign xor_ln49_4_fu_219_p2 = (y_3_fu_171_p3 ^ xor_ln49_3_fu_213_p2);
assign xor_ln49_fu_225_p2 = (xor_ln49_4_fu_219_p2 ^ xor_ln49_2_fu_207_p2);
assign y_2_fu_149_p3 = {{trunc_ln46_1_fu_135_p1}, {tmp_4_fu_139_p4}};
assign y_3_fu_171_p3 = {{trunc_ln47_fu_157_p1}, {tmp_6_fu_161_p4}};
assign y_4_fu_193_p3 = {{trunc_ln47_1_fu_179_p1}, {tmp_8_fu_183_p4}};
assign y_fu_127_p3 = {{trunc_ln46_fu_115_p1}, {tmp_fu_119_p3}};
endmodule 