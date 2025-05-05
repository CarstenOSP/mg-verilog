module kernel_3mm_kernel_3mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v279_dout,v279_empty_n,v279_read,v260_address0,v260_ce0,v260_q0,v278_dout,v278_empty_n,v278_read,v264_address0,v264_ce0,v264_q0,v264_address1,v264_ce1,v264_q1,v268_address0,v268_ce0,v268_we0,v268_d0,v268_q0,v268_address1,v268_ce1,v268_we1,v268_d1,v268_q1,grp_fu_150_p_din0,grp_fu_150_p_din1,grp_fu_150_p_opcode,grp_fu_150_p_dout0,grp_fu_150_p_ce,grp_fu_154_p_din0,grp_fu_154_p_din1,grp_fu_154_p_dout0,grp_fu_154_p_ce); 
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
input  [0:0] v279_dout;
input   v279_empty_n;
output   v279_read;
output  [15:0] v260_address0;
output   v260_ce0;
input  [31:0] v260_q0;
input  [0:0] v278_dout;
input   v278_empty_n;
output   v278_read;
output  [15:0] v264_address0;
output   v264_ce0;
input  [31:0] v264_q0;
output  [15:0] v264_address1;
output   v264_ce1;
input  [31:0] v264_q1;
output  [15:0] v268_address0;
output   v268_ce0;
output   v268_we0;
output  [31:0] v268_d0;
input  [31:0] v268_q0;
output  [15:0] v268_address1;
output   v268_ce1;
output   v268_we1;
output  [31:0] v268_d1;
input  [31:0] v268_q1;
output  [31:0] grp_fu_150_p_din0;
output  [31:0] grp_fu_150_p_din1;
output  [1:0] grp_fu_150_p_opcode;
input  [31:0] grp_fu_150_p_dout0;
output   grp_fu_150_p_ce;
output  [31:0] grp_fu_154_p_din0;
output  [31:0] grp_fu_154_p_din1;
input  [31:0] grp_fu_154_p_dout0;
output   grp_fu_154_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v279_blk_n;
reg    v278_blk_n;
reg   [15:0] phi_mul677_load_reg_240;
wire    ap_CS_fsm_state2;
wire   [15:0] add_ln31_1_fu_152_p2;
reg   [15:0] add_ln31_1_reg_245;
wire   [7:0] add_ln31_fu_164_p2;
reg   [7:0] add_ln31_reg_253;
wire   [15:0] zext_ln31_fu_170_p1;
reg   [15:0] zext_ln31_reg_258;
wire   [0:0] cmp12_fu_174_p2;
reg   [0:0] cmp12_reg_263;
wire   [15:0] add_ln32_1_fu_180_p2;
reg   [15:0] add_ln32_1_reg_268;
wire    ap_CS_fsm_state3;
wire   [15:0] add_ln32_2_fu_186_p2;
reg   [15:0] add_ln32_2_reg_273;
wire   [7:0] add_ln32_fu_198_p2;
reg   [7:0] add_ln32_reg_281;
reg   [31:0] v260_load_reg_291;
wire    ap_CS_fsm_state4;
wire   [31:0] v10_fu_222_p1;
reg   [31:0] v10_reg_296;
wire    ap_CS_fsm_state5;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_start;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_done;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_idle;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_ready;
wire   [15:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v264_address0;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v264_ce0;
wire   [15:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v264_address1;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v264_ce1;
wire   [15:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_address0;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_ce0;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_we0;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_d0;
wire   [15:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_address1;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_ce1;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_we1;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_d1;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_301_p_din0;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_301_p_din1;
wire   [1:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_301_p_opcode;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_301_p_ce;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_305_p_din0;
wire   [31:0] grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_305_p_din1;
wire    grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_305_p_ce;
reg   [7:0] v6_reg_89;
wire   [0:0] icmp_ln31_fu_158_p2;
wire    ap_CS_fsm_state6;
reg   [15:0] phi_mul_reg_100;
reg   [15:0] phi_mul675_reg_111;
reg    grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_start_reg;
wire   [63:0] p_cast_fu_209_p1;
wire   [0:0] icmp_ln32_fu_192_p2;
reg   [15:0] phi_mul677_fu_56;
reg    ap_block_state1;
reg   [7:0] v5_fu_60;
reg    v278_read_local;
reg    v279_read_local;
reg    v260_ce0_local;
wire   [15:0] empty_fu_204_p2;
reg    grp_fu_301_ce;
reg    grp_fu_305_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_start_reg = 1'b0;
#0 phi_mul677_fu_56 = 16'd0;
#0 v5_fu_60 = 8'd0;
end
kernel_3mm_kernel_3mm_node0_Pipeline_label_2 grp_kernel_3mm_node0_Pipeline_label_2_fu_123(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_start),.ap_done(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_done),.ap_idle(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_idle),.ap_ready(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_ready),.phi_mul677(phi_mul677_load_reg_240),.v264_address0(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v264_address0),.v264_ce0(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v264_ce0),.v264_q0(v264_q0),.v264_address1(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v264_address1),.v264_ce1(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v264_ce1),.v264_q1(v264_q1),.phi_mul675(phi_mul675_reg_111),.v268_address0(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_address0),.v268_ce0(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_ce0),.v268_we0(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_we0),.v268_d0(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_d0),.v268_q0(v268_q0),.v268_address1(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_address1),.v268_ce1(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_ce1),.v268_we1(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_we1),.v268_d1(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_d1),.v268_q1(v268_q1),.cmp12(cmp12_reg_263),.v10(v10_reg_296),.grp_fu_301_p_din0(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_301_p_din0),.grp_fu_301_p_din1(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_301_p_din1),.grp_fu_301_p_opcode(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_301_p_opcode),.grp_fu_301_p_dout0(grp_fu_150_p_dout0),.grp_fu_301_p_ce(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_301_p_ce),.grp_fu_305_p_din0(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_305_p_din0),.grp_fu_305_p_din1(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_305_p_din1),.grp_fu_305_p_dout0(grp_fu_154_p_dout0),.grp_fu_305_p_ce(grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_305_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_ready == 1'b1)) begin
            grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_done == 1'b1))) begin
        phi_mul675_reg_111 <= add_ln32_1_reg_268;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_158_p2 == 1'd0))) begin
        phi_mul675_reg_111 <= 16'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        phi_mul677_fu_56 <= 16'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln32_fu_192_p2 == 1'd1))) begin
        phi_mul677_fu_56 <= add_ln31_1_reg_245;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_done == 1'b1))) begin
        phi_mul_reg_100 <= add_ln32_2_reg_273;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_158_p2 == 1'd0))) begin
        phi_mul_reg_100 <= 16'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        v5_fu_60 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln32_fu_192_p2 == 1'd1))) begin
        v5_fu_60 <= add_ln31_reg_253;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_done == 1'b1))) begin
        v6_reg_89 <= add_ln32_reg_281;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_158_p2 == 1'd0))) begin
        v6_reg_89 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_1_reg_245 <= add_ln31_1_fu_152_p2;
        add_ln31_reg_253 <= add_ln31_fu_164_p2;
        cmp12_reg_263 <= cmp12_fu_174_p2;
        phi_mul677_load_reg_240 <= phi_mul677_fu_56;
        zext_ln31_reg_258[7 : 0] <= zext_ln31_fu_170_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_1_reg_268 <= add_ln32_1_fu_180_p2;
        add_ln32_2_reg_273 <= add_ln32_2_fu_186_p2;
        add_ln32_reg_281 <= add_ln32_fu_198_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v10_reg_296 <= v10_fu_222_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v260_load_reg_291 <= v260_q0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_158_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_158_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_301_ce = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_301_p_ce;
    end else begin
        grp_fu_301_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_305_ce = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_305_p_ce;
    end else begin
        grp_fu_305_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v260_ce0_local = 1'b1;
    end else begin
        v260_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v278_blk_n = v278_empty_n;
    end else begin
        v278_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        v278_read_local = 1'b1;
    end else begin
        v278_read_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v279_blk_n = v279_empty_n;
    end else begin
        v279_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        v279_read_local = 1'b1;
    end else begin
        v279_read_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_158_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln32_fu_192_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_1_fu_152_p2 = (phi_mul677_fu_56 + 16'd210);
assign add_ln31_fu_164_p2 = (v5_fu_60 + 8'd1);
assign add_ln32_1_fu_180_p2 = (phi_mul675_reg_111 + 16'd210);
assign add_ln32_2_fu_186_p2 = (phi_mul_reg_100 + 16'd190);
assign add_ln32_fu_198_p2 = (v6_reg_89 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
always @ (*) begin
    ap_block_state1 = ((v278_empty_n == 1'b0) | (v279_empty_n == 1'b0) | (ap_start == 1'b0));
end
assign cmp12_fu_174_p2 = ((v5_fu_60 == 8'd0) ? 1'b1 : 1'b0);
assign empty_fu_204_p2 = (phi_mul_reg_100 + zext_ln31_reg_258);
assign grp_fu_150_p_ce = grp_fu_301_ce;
assign grp_fu_150_p_din0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_301_p_din0;
assign grp_fu_150_p_din1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_301_p_din1;
assign grp_fu_150_p_opcode = 2'd0;
assign grp_fu_154_p_ce = grp_fu_305_ce;
assign grp_fu_154_p_din0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_305_p_din0;
assign grp_fu_154_p_din1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_grp_fu_305_p_din1;
assign grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_start = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_ap_start_reg;
assign icmp_ln31_fu_158_p2 = ((v5_fu_60 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_192_p2 = ((v6_reg_89 == 8'd180) ? 1'b1 : 1'b0);
assign p_cast_fu_209_p1 = empty_fu_204_p2;
assign v10_fu_222_p1 = v260_load_reg_291;
assign v260_address0 = p_cast_fu_209_p1;
assign v260_ce0 = v260_ce0_local;
assign v264_address0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v264_address0;
assign v264_address1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v264_address1;
assign v264_ce0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v264_ce0;
assign v264_ce1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v264_ce1;
assign v268_address0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_address0;
assign v268_address1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_address1;
assign v268_ce0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_ce0;
assign v268_ce1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_ce1;
assign v268_d0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_d0;
assign v268_d1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_d1;
assign v268_we0 = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_we0;
assign v268_we1 = grp_kernel_3mm_node0_Pipeline_label_2_fu_123_v268_we1;
assign v278_read = v278_read_local;
assign v279_read = v279_read_local;
assign zext_ln31_fu_170_p1 = v5_fu_60;
always @ (posedge ap_clk) begin
    zext_ln31_reg_258[15:8] <= 8'b00000000;
end
endmodule 