module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_124_p_din0,grp_fu_124_p_din1,grp_fu_124_p_opcode,grp_fu_124_p_dout0,grp_fu_124_p_ce,grp_fu_128_p_din0,grp_fu_128_p_din1,grp_fu_128_p_dout0,grp_fu_128_p_ce,grp_fu_132_p_din0,grp_fu_132_p_din1,grp_fu_132_p_dout0,grp_fu_132_p_ce); 
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [15:0] v224_address0;
output   v224_ce0;
input  [31:0] v224_q0;
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
output  [15:0] v229_address0;
output   v229_ce0;
output   v229_we0;
output  [31:0] v229_d0;
input  [31:0] v229_q0;
output  [15:0] v229_address1;
output   v229_ce1;
output   v229_we1;
output  [31:0] v229_d1;
input  [31:0] v229_q1;
input  [31:0] v4;
output  [31:0] grp_fu_124_p_din0;
output  [31:0] grp_fu_124_p_din1;
output  [1:0] grp_fu_124_p_opcode;
input  [31:0] grp_fu_124_p_dout0;
output   grp_fu_124_p_ce;
output  [31:0] grp_fu_128_p_din0;
output  [31:0] grp_fu_128_p_din1;
input  [31:0] grp_fu_128_p_dout0;
output   grp_fu_128_p_ce;
output  [31:0] grp_fu_132_p_din0;
output  [31:0] grp_fu_132_p_din1;
input  [31:0] grp_fu_132_p_dout0;
output   grp_fu_132_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [15:0] phi_mul_load_reg_154;
wire    ap_CS_fsm_state2;
reg   [7:0] v5_1_reg_159;
wire   [0:0] cmp11_fu_118_p2;
reg   [0:0] cmp11_reg_167;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_172_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_172_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_172_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_172_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_176_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_176_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_176_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_180_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_180_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_180_p_ce;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_ap_start_reg;
wire   [0:0] icmp_ln31_fu_106_p2;
wire    ap_CS_fsm_state3;
reg   [15:0] phi_mul_fu_48;
wire   [15:0] add_ln31_1_fu_100_p2;
reg    ap_block_state1;
reg   [7:0] v5_fu_52;
wire   [7:0] add_ln31_fu_112_p2;
reg    v236_read_local;
reg    grp_fu_172_ce;
reg    grp_fu_176_ce;
reg    grp_fu_180_ce;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_ap_start_reg = 1'b0;
#0 phi_mul_fu_48 = 16'd0;
#0 v5_fu_52 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_2 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_ap_ready),.zext_ln31(v5_1_reg_159),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v224_ce0),.v224_q0(v224_q0),.phi_mul(phi_mul_load_reg_154),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_d1),.v229_q1(v229_q1),.v4(v4),.cmp11(cmp11_reg_167),.grp_fu_172_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_172_p_din0),.grp_fu_172_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_172_p_din1),.grp_fu_172_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_172_p_opcode),.grp_fu_172_p_dout0(grp_fu_124_p_dout0),.grp_fu_172_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_172_p_ce),.grp_fu_176_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_176_p_din0),.grp_fu_176_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_176_p_din1),.grp_fu_176_p_dout0(grp_fu_128_p_dout0),.grp_fu_176_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_176_p_ce),.grp_fu_180_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_180_p_din0),.grp_fu_180_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_180_p_din1),.grp_fu_180_p_dout0(grp_fu_132_p_dout0),.grp_fu_180_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_180_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_106_p2 == 1'd0))) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        phi_mul_fu_48 <= 16'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_106_p2 == 1'd0))) begin
        phi_mul_fu_48 <= add_ln31_1_fu_100_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        v5_fu_52 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_106_p2 == 1'd0))) begin
        v5_fu_52 <= add_ln31_fu_112_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_167 <= cmp11_fu_118_p2;
        phi_mul_load_reg_154 <= phi_mul_fu_48;
        v5_1_reg_159 <= v5_fu_52;
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
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_106_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_106_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_172_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_172_p_ce;
    end else begin
        grp_fu_172_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_176_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_176_p_ce;
    end else begin
        grp_fu_176_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_180_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_180_p_ce;
    end else begin
        grp_fu_180_ce = 1'b1;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v236_blk_n = v236_empty_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        v236_read_local = 1'b1;
    end else begin
        v236_read_local = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_106_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_1_fu_100_p2 = (phi_mul_fu_48 + 16'd220);
assign add_ln31_fu_112_p2 = (v5_fu_52 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (v236_empty_n == 1'b0));
end
assign cmp11_fu_118_p2 = ((v5_fu_52 == 8'd0) ? 1'b1 : 1'b0);
assign grp_fu_124_p_ce = grp_fu_172_ce;
assign grp_fu_124_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_172_p_din0;
assign grp_fu_124_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_172_p_din1;
assign grp_fu_124_p_opcode = 2'd0;
assign grp_fu_128_p_ce = grp_fu_176_ce;
assign grp_fu_128_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_176_p_din0;
assign grp_fu_128_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_176_p_din1;
assign grp_fu_132_p_ce = grp_fu_180_ce;
assign grp_fu_132_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_180_p_din0;
assign grp_fu_132_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_grp_fu_180_p_din1;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_ap_start_reg;
assign icmp_ln31_fu_106_p2 = ((v5_fu_52 == 8'd190) ? 1'b1 : 1'b0);
assign v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v224_address0;
assign v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v224_ce0;
assign v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v228_address0;
assign v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v228_address1;
assign v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v228_ce0;
assign v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v228_ce1;
assign v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_address0;
assign v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_address1;
assign v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_ce0;
assign v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_ce1;
assign v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_d0;
assign v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_d1;
assign v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_we0;
assign v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_68_v229_we1;
assign v236_read = v236_read_local;
endmodule 