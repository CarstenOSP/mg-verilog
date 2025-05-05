module kernel_3mm_kernel_3mm_node2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v262_address0,v262_ce0,v262_q0,v263_0_0_address0,v263_0_0_ce0,v263_0_0_q0,v263_0_1_address0,v263_0_1_ce0,v263_0_1_q0,v263_1_0_address0,v263_1_0_ce0,v263_1_0_q0,v263_1_1_address0,v263_1_1_ce0,v263_1_1_q0,v279_din,v279_full_n,v279_write,v261_address0,v261_ce0,v261_we0,v261_d0,v261_q0,v261_address1,v261_ce1,v261_we1,v261_d1,v261_q1); 
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
output  [15:0] v262_address0;
output   v262_ce0;
input  [31:0] v262_q0;
output  [13:0] v263_0_0_address0;
output   v263_0_0_ce0;
input  [31:0] v263_0_0_q0;
output  [13:0] v263_0_1_address0;
output   v263_0_1_ce0;
input  [31:0] v263_0_1_q0;
output  [13:0] v263_1_0_address0;
output   v263_1_0_ce0;
input  [31:0] v263_1_0_q0;
output  [13:0] v263_1_1_address0;
output   v263_1_1_ce0;
input  [31:0] v263_1_1_q0;
output  [0:0] v279_din;
input   v279_full_n;
output   v279_write;
output  [15:0] v261_address0;
output   v261_ce0;
output   v261_we0;
output  [31:0] v261_d0;
input  [31:0] v261_q0;
output  [15:0] v261_address1;
output   v261_ce1;
output   v261_we1;
output  [31:0] v261_d1;
input  [31:0] v261_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v279_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln277_fu_94_p2;
reg   [7:0] v196_1_reg_151;
wire   [0:0] icmp_ln277_1_fu_106_p2;
reg   [0:0] icmp_ln277_1_reg_161;
wire   [7:0] add_ln277_1_fu_112_p2;
reg   [7:0] add_ln277_1_reg_166;
wire   [13:0] mul_ln277_fu_132_p2;
reg   [13:0] mul_ln277_reg_172;
wire    ap_CS_fsm_state3;
wire   [0:0] cmp11_fu_138_p2;
reg   [0:0] cmp11_reg_177;
wire    ap_CS_fsm_state4;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_ap_start;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_ap_done;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_ap_idle;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_ap_ready;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v262_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v262_ce0;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_ce0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_we0;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_d0;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_ce1;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_we1;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_d1;
wire   [13:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_0_0_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_0_0_ce0;
wire   [13:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_0_1_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_0_1_ce0;
wire   [13:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_1_0_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_1_0_ce0;
wire   [13:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_1_1_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_1_1_ce0;
reg    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_ap_start_reg;
wire    ap_CS_fsm_state5;
reg   [7:0] v196_fu_54;
wire   [7:0] add_ln277_fu_100_p2;
reg    ap_block_state2;
reg    v279_write_local;
wire   [7:0] select_ln277_fu_123_p3;
wire   [7:0] mul_ln277_fu_132_p0;
wire   [7:0] mul_ln277_fu_132_p1;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire   [13:0] mul_ln277_fu_132_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_ap_start_reg = 1'b0;
#0 v196_fu_54 = 8'd0;
end
kernel_3mm_kernel_3mm_node2_Pipeline_label_7_label_8 grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_ap_start),.ap_done(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_ap_done),.ap_idle(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_ap_idle),.ap_ready(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_ap_ready),.zext_ln277(v196_1_reg_151),.v262_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v262_address0),.v262_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v262_ce0),.v262_q0(v262_q0),.v261_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_address0),.v261_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_ce0),.v261_we0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_we0),.v261_d0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_d0),.v261_q0(v261_q0),.v261_address1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_address1),.v261_ce1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_ce1),.v261_we1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_we1),.v261_d1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_d1),.v261_q1(v261_q1),.mul_ln283(mul_ln277_reg_172),.v263_0_0_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_0_0_address0),.v263_0_0_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_0_0_ce0),.v263_0_0_q0(v263_0_0_q0),.v263_0_1_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_0_1_address0),.v263_0_1_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_0_1_ce0),.v263_0_1_q0(v263_0_1_q0),.v263_1_0_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_1_0_address0),.v263_1_0_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_1_0_ce0),.v263_1_0_q0(v263_1_0_q0),.v263_1_1_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_1_1_address0),.v263_1_1_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_1_1_ce0),.v263_1_1_q0(v263_1_1_q0),.cmp11(cmp11_reg_177),.add_ln277_1(add_ln277_1_reg_166));
kernel_3mm_mul_8ns_8ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 14 ))
mul_8ns_8ns_14_1_1_U32(.din0(mul_ln277_fu_132_p0),.din1(mul_ln277_fu_132_p1),.dout(mul_ln277_fu_132_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_ap_ready == 1'b1)) begin
            grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v196_fu_54 <= 8'd0;
    end else if (((icmp_ln277_fu_94_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2))) begin
        v196_fu_54 <= add_ln277_fu_100_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln277_1_reg_166 <= add_ln277_1_fu_112_p2;
        icmp_ln277_1_reg_161 <= icmp_ln277_1_fu_106_p2;
        v196_1_reg_151 <= v196_fu_54;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cmp11_reg_177 <= cmp11_fu_138_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mul_ln277_reg_172 <= mul_ln277_fu_132_p2;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state2)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln277_fu_94_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln277_fu_94_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln277_fu_94_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v279_blk_n = v279_full_n;
    end else begin
        v279_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((icmp_ln277_fu_94_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2))) begin
        v279_write_local = 1'b1;
    end else begin
        v279_write_local = 1'b0;
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
            if (((icmp_ln277_fu_94_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln277_fu_94_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln277_1_fu_112_p2 = ($signed(v196_fu_54) + $signed(8'd156));
assign add_ln277_fu_100_p2 = (v196_fu_54 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
always @ (*) begin
    ap_block_state2 = ((icmp_ln277_fu_94_p2 == 1'd1) & (v279_full_n == 1'b0));
end
assign cmp11_fu_138_p2 = ((v196_1_reg_151 == 8'd0) ? 1'b1 : 1'b0);
assign grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_ap_start = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_ap_start_reg;
assign icmp_ln277_1_fu_106_p2 = ((v196_fu_54 < 8'd100) ? 1'b1 : 1'b0);
assign icmp_ln277_fu_94_p2 = ((v196_fu_54 == 8'd200) ? 1'b1 : 1'b0);
assign mul_ln277_fu_132_p0 = mul_ln277_fu_132_p00;
assign mul_ln277_fu_132_p00 = select_ln277_fu_123_p3;
assign mul_ln277_fu_132_p1 = 14'd95;
assign select_ln277_fu_123_p3 = ((icmp_ln277_1_reg_161[0:0] == 1'b1) ? v196_1_reg_151 : add_ln277_1_reg_166);
assign v261_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_address0;
assign v261_address1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_address1;
assign v261_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_ce0;
assign v261_ce1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_ce1;
assign v261_d0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_d0;
assign v261_d1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_d1;
assign v261_we0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_we0;
assign v261_we1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v261_we1;
assign v262_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v262_address0;
assign v262_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v262_ce0;
assign v263_0_0_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_0_0_address0;
assign v263_0_0_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_0_0_ce0;
assign v263_0_1_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_0_1_address0;
assign v263_0_1_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_0_1_ce0;
assign v263_1_0_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_1_0_address0;
assign v263_1_0_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_1_0_ce0;
assign v263_1_1_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_1_1_address0;
assign v263_1_1_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_66_v263_1_1_ce0;
assign v279_din = 1'd1;
assign v279_write = v279_write_local;
endmodule 