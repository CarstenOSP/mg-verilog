
module aes256_encrypt_ecb_aes_subBytes (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buf_0_address0,buf_0_ce0,buf_0_we0,buf_0_d0,buf_0_q0,buf_1_address0,buf_1_ce0,buf_1_we0,buf_1_d0,buf_1_q0);  
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
output  [2:0] buf_0_address0;
output   buf_0_ce0;
output   buf_0_we0;
output  [7:0] buf_0_d0;
input  [7:0] buf_0_q0;
output  [2:0] buf_1_address0;
output   buf_1_ce0;
output   buf_1_we0;
output  [7:0] buf_1_d0;
input  [7:0] buf_1_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] trunc_ln63_fu_153_p1;
reg   [0:0] trunc_ln63_reg_362;
wire    ap_CS_fsm_state2;
wire   [4:0] add_ln63_fu_157_p2;
reg   [4:0] add_ln63_reg_367;
reg   [2:0] buf_0_addr_reg_372;
reg   [2:0] buf_1_addr_reg_377;
wire   [7:0] select_ln63_fu_179_p3;
reg   [7:0] select_ln63_reg_382;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln37_fu_186_p2;
reg   [0:0] icmp_ln37_reg_387;
wire   [0:0] grp_aes_subBytes_Pipeline_glog_fu_127_ap_return;
reg   [0:0] targetBlock_reg_391;
wire    ap_CS_fsm_state5;
wire   [7:0] xor_ln37_fu_202_p2;
reg   [7:0] xor_ln37_reg_396;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln15_fu_208_p2;
reg   [0:0] icmp_ln15_reg_401;
wire    grp_aes_subBytes_Pipeline_glog_fu_127_ap_start;
wire    grp_aes_subBytes_Pipeline_glog_fu_127_ap_done;
wire    grp_aes_subBytes_Pipeline_glog_fu_127_ap_idle;
wire    grp_aes_subBytes_Pipeline_glog_fu_127_ap_ready;
wire   [7:0] grp_aes_subBytes_Pipeline_glog_fu_127_i_3_out;
wire    grp_aes_subBytes_Pipeline_glog_fu_127_i_3_out_ap_vld;
wire    grp_aes_subBytes_Pipeline_alog_fu_133_ap_start;
wire    grp_aes_subBytes_Pipeline_alog_fu_133_ap_done;
wire    grp_aes_subBytes_Pipeline_alog_fu_133_ap_idle;
wire    grp_aes_subBytes_Pipeline_alog_fu_133_ap_ready;
wire   [7:0] grp_aes_subBytes_Pipeline_alog_fu_133_atb_18_out;
wire    grp_aes_subBytes_Pipeline_alog_fu_133_atb_18_out_ap_vld;
reg   [7:0] ap_phi_mux_y_10_phi_fu_117_p6;
reg   [7:0] y_10_reg_112;
wire    ap_CS_fsm_state9;
reg    grp_aes_subBytes_Pipeline_glog_fu_127_ap_start_reg;
wire    ap_CS_fsm_state4;
reg   [7:0] i_3_loc_fu_82;
reg    grp_aes_subBytes_Pipeline_alog_fu_133_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire   [63:0] zext_ln63_fu_173_p1;
wire   [0:0] icmp_ln63_fu_147_p2;
reg   [4:0] i_fu_74;
reg    buf_0_ce0_local;
reg   [2:0] buf_0_address0_local;
reg    buf_0_we0_local;
wire   [7:0] xor_ln49_fu_328_p2;
reg    buf_1_ce0_local;
reg   [2:0] buf_1_address0_local;
reg    buf_1_we0_local;
wire   [2:0] lshr_ln_fu_163_p4;
wire   [7:0] i_4_fu_195_p3;
wire   [6:0] trunc_ln46_fu_218_p1;
wire   [0:0] tmp_fu_222_p3;
wire   [5:0] trunc_ln46_2_fu_238_p1;
wire   [1:0] tmp_s_fu_242_p4;
wire   [4:0] trunc_ln47_fu_260_p1;
wire   [2:0] tmp_1_fu_264_p4;
wire   [3:0] trunc_ln47_2_fu_282_p1;
wire   [3:0] tmp_2_fu_286_p4;
wire   [7:0] y_7_fu_252_p3;
wire   [7:0] y_fu_230_p3;
wire   [7:0] xor_ln49_5_fu_304_p2;
wire   [7:0] y_8_fu_274_p3;
wire   [7:0] y_9_fu_296_p3;
wire   [7:0] xor_ln49_7_fu_316_p2;
wire   [7:0] xor_ln49_8_fu_322_p2;
wire   [7:0] xor_ln49_6_fu_310_p2;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 grp_aes_subBytes_Pipeline_glog_fu_127_ap_start_reg = 1'b0;
#0 grp_aes_subBytes_Pipeline_alog_fu_133_ap_start_reg = 1'b0;
#0 i_fu_74 = 5'd0;
end
aes256_encrypt_ecb_aes_subBytes_Pipeline_glog grp_aes_subBytes_Pipeline_glog_fu_127(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_subBytes_Pipeline_glog_fu_127_ap_start),.ap_done(grp_aes_subBytes_Pipeline_glog_fu_127_ap_done),.ap_idle(grp_aes_subBytes_Pipeline_glog_fu_127_ap_idle),.ap_ready(grp_aes_subBytes_Pipeline_glog_fu_127_ap_ready),.select_ln63(select_ln63_reg_382),.i_3_out(grp_aes_subBytes_Pipeline_glog_fu_127_i_3_out),.i_3_out_ap_vld(grp_aes_subBytes_Pipeline_glog_fu_127_i_3_out_ap_vld),.ap_return(grp_aes_subBytes_Pipeline_glog_fu_127_ap_return));
aes256_encrypt_ecb_aes_subBytes_Pipeline_alog grp_aes_subBytes_Pipeline_alog_fu_133(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_aes_subBytes_Pipeline_alog_fu_133_ap_start),.ap_done(grp_aes_subBytes_Pipeline_alog_fu_133_ap_done),.ap_idle(grp_aes_subBytes_Pipeline_alog_fu_133_ap_idle),.ap_ready(grp_aes_subBytes_Pipeline_alog_fu_133_ap_ready),.xor_ln37(xor_ln37_reg_396),.atb_18_out(grp_aes_subBytes_Pipeline_alog_fu_133_atb_18_out),.atb_18_out_ap_vld(grp_aes_subBytes_Pipeline_alog_fu_133_atb_18_out_ap_vld));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_subBytes_Pipeline_alog_fu_133_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_aes_subBytes_Pipeline_alog_fu_133_ap_start_reg <= 1'b1;
        end else if ((grp_aes_subBytes_Pipeline_alog_fu_133_ap_ready == 1'b1)) begin
            grp_aes_subBytes_Pipeline_alog_fu_133_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_subBytes_Pipeline_glog_fu_127_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_aes_subBytes_Pipeline_glog_fu_127_ap_start_reg <= 1'b1;
        end else if ((grp_aes_subBytes_Pipeline_glog_fu_127_ap_ready == 1'b1)) begin
            grp_aes_subBytes_Pipeline_glog_fu_127_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_74 <= 5'd16;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        i_fu_74 <= add_ln63_reg_367;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln15_fu_208_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        y_10_reg_112 <= 8'd1;
    end else if (((icmp_ln37_fu_186_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        y_10_reg_112 <= 8'd0;
    end else if (((icmp_ln15_reg_401 == 1'd0) & (icmp_ln37_reg_387 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        y_10_reg_112 <= grp_aes_subBytes_Pipeline_alog_fu_133_atb_18_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln63_reg_367 <= add_ln63_fu_157_p2;
        buf_0_addr_reg_372 <= zext_ln63_fu_173_p1;
        buf_1_addr_reg_377 <= zext_ln63_fu_173_p1;
        trunc_ln63_reg_362 <= trunc_ln63_fu_153_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_aes_subBytes_Pipeline_glog_fu_127_i_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        i_3_loc_fu_82 <= grp_aes_subBytes_Pipeline_glog_fu_127_i_3_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        icmp_ln15_reg_401 <= icmp_ln15_fu_208_p2;
        xor_ln37_reg_396 <= xor_ln37_fu_202_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        icmp_ln37_reg_387 <= icmp_ln37_fu_186_p2;
        select_ln63_reg_382 <= select_ln63_fu_179_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        targetBlock_reg_391 <= grp_aes_subBytes_Pipeline_glog_fu_127_ap_return;
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
    if ((grp_aes_subBytes_Pipeline_glog_fu_127_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_aes_subBytes_Pipeline_alog_fu_133_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (icmp_ln63_fu_147_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln15_reg_401 == 1'd0) & (icmp_ln37_reg_387 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_phi_mux_y_10_phi_fu_117_p6 = grp_aes_subBytes_Pipeline_alog_fu_133_atb_18_out;
    end else begin
        ap_phi_mux_y_10_phi_fu_117_p6 = y_10_reg_112;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln63_fu_147_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_0_address0_local = buf_0_addr_reg_372;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_0_address0_local = zext_ln63_fu_173_p1;
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
    if (((trunc_ln63_reg_362 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        buf_0_we0_local = 1'b1;
    end else begin
        buf_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        buf_1_address0_local = buf_1_addr_reg_377;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_1_address0_local = zext_ln63_fu_173_p1;
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
    if (((trunc_ln63_reg_362 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        buf_1_we0_local = 1'b1;
    end else begin
        buf_1_we0_local = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln63_fu_147_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln37_fu_186_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_aes_subBytes_Pipeline_glog_fu_127_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln15_fu_208_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_aes_subBytes_Pipeline_alog_fu_133_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
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
assign add_ln63_fu_157_p2 = ($signed(i_fu_74) + $signed(5'd31));
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
assign buf_0_d0 = xor_ln49_fu_328_p2;
assign buf_0_we0 = buf_0_we0_local;
assign buf_1_address0 = buf_1_address0_local;
assign buf_1_ce0 = buf_1_ce0_local;
assign buf_1_d0 = xor_ln49_fu_328_p2;
assign buf_1_we0 = buf_1_we0_local;
assign grp_aes_subBytes_Pipeline_alog_fu_133_ap_start = grp_aes_subBytes_Pipeline_alog_fu_133_ap_start_reg;
assign grp_aes_subBytes_Pipeline_glog_fu_127_ap_start = grp_aes_subBytes_Pipeline_glog_fu_127_ap_start_reg;
assign i_4_fu_195_p3 = ((targetBlock_reg_391[0:0] == 1'b1) ? i_3_loc_fu_82 : 8'd0);
assign icmp_ln15_fu_208_p2 = ((i_4_fu_195_p3 == 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_186_p2 = ((select_ln63_fu_179_p3 == 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln63_fu_147_p2 = ((i_fu_74 == 5'd0) ? 1'b1 : 1'b0);
assign lshr_ln_fu_163_p4 = {{add_ln63_fu_157_p2[3:1]}};
assign select_ln63_fu_179_p3 = ((trunc_ln63_reg_362[0:0] == 1'b1) ? buf_0_q0 : buf_1_q0);
assign tmp_1_fu_264_p4 = {{ap_phi_mux_y_10_phi_fu_117_p6[7:5]}};
assign tmp_2_fu_286_p4 = {{ap_phi_mux_y_10_phi_fu_117_p6[7:4]}};
assign tmp_fu_222_p3 = ap_phi_mux_y_10_phi_fu_117_p6[32'd7];
assign tmp_s_fu_242_p4 = {{ap_phi_mux_y_10_phi_fu_117_p6[7:6]}};
assign trunc_ln46_2_fu_238_p1 = ap_phi_mux_y_10_phi_fu_117_p6[5:0];
assign trunc_ln46_fu_218_p1 = ap_phi_mux_y_10_phi_fu_117_p6[6:0];
assign trunc_ln47_2_fu_282_p1 = ap_phi_mux_y_10_phi_fu_117_p6[3:0];
assign trunc_ln47_fu_260_p1 = ap_phi_mux_y_10_phi_fu_117_p6[4:0];
assign trunc_ln63_fu_153_p1 = i_fu_74[0:0];
assign xor_ln37_fu_202_p2 = (i_4_fu_195_p3 ^ 8'd255);
assign xor_ln49_5_fu_304_p2 = (y_fu_230_p3 ^ y_7_fu_252_p3);
assign xor_ln49_6_fu_310_p2 = (y_8_fu_274_p3 ^ xor_ln49_5_fu_304_p2);
assign xor_ln49_7_fu_316_p2 = (y_9_fu_296_p3 ^ 8'd99);
assign xor_ln49_8_fu_322_p2 = (xor_ln49_7_fu_316_p2 ^ ap_phi_mux_y_10_phi_fu_117_p6);
assign xor_ln49_fu_328_p2 = (xor_ln49_8_fu_322_p2 ^ xor_ln49_6_fu_310_p2);
assign y_7_fu_252_p3 = {{trunc_ln46_2_fu_238_p1}, {tmp_s_fu_242_p4}};
assign y_8_fu_274_p3 = {{trunc_ln47_fu_260_p1}, {tmp_1_fu_264_p4}};
assign y_9_fu_296_p3 = {{trunc_ln47_2_fu_282_p1}, {tmp_2_fu_286_p4}};
assign y_fu_230_p3 = {{trunc_ln46_fu_218_p1}, {tmp_fu_222_p3}};
assign zext_ln63_fu_173_p1 = lshr_ln_fu_163_p4;
endmodule 
