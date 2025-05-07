module kernel_3mm_kernel_3mm_node2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v262_address0,v262_ce0,v262_q0,v263_address0,v263_ce0,v263_q0,v263_address1,v263_ce1,v263_q1,v279_din,v279_full_n,v279_write,v261_0_address0,v261_0_ce0,v261_0_we0,v261_0_d0,v261_0_q0,v261_0_address1,v261_0_ce1,v261_0_we1,v261_0_d1,v261_0_q1,v261_1_address0,v261_1_ce0,v261_1_we0,v261_1_d0,v261_1_q0,v261_1_address1,v261_1_ce1,v261_1_we1,v261_1_d1,v261_1_q1,v261_2_address0,v261_2_ce0,v261_2_we0,v261_2_d0,v261_2_q0,v261_2_address1,v261_2_ce1,v261_2_we1,v261_2_d1,v261_2_q1,v261_3_address0,v261_3_ce0,v261_3_we0,v261_3_d0,v261_3_q0,v261_3_address1,v261_3_ce1,v261_3_we1,v261_3_d1,v261_3_q1); 
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v262_address0;
output   v262_ce0;
input  [31:0] v262_q0;
output  [15:0] v263_address0;
output   v263_ce0;
input  [31:0] v263_q0;
output  [15:0] v263_address1;
output   v263_ce1;
input  [31:0] v263_q1;
output  [0:0] v279_din;
input   v279_full_n;
output   v279_write;
output  [13:0] v261_0_address0;
output   v261_0_ce0;
output   v261_0_we0;
output  [31:0] v261_0_d0;
input  [31:0] v261_0_q0;
output  [13:0] v261_0_address1;
output   v261_0_ce1;
output   v261_0_we1;
output  [31:0] v261_0_d1;
input  [31:0] v261_0_q1;
output  [13:0] v261_1_address0;
output   v261_1_ce0;
output   v261_1_we0;
output  [31:0] v261_1_d0;
input  [31:0] v261_1_q0;
output  [13:0] v261_1_address1;
output   v261_1_ce1;
output   v261_1_we1;
output  [31:0] v261_1_d1;
input  [31:0] v261_1_q1;
output  [13:0] v261_2_address0;
output   v261_2_ce0;
output   v261_2_we0;
output  [31:0] v261_2_d0;
input  [31:0] v261_2_q0;
output  [13:0] v261_2_address1;
output   v261_2_ce1;
output   v261_2_we1;
output  [31:0] v261_2_d1;
input  [31:0] v261_2_q1;
output  [13:0] v261_3_address0;
output   v261_3_ce0;
output   v261_3_we0;
output  [31:0] v261_3_d0;
input  [31:0] v261_3_q0;
output  [13:0] v261_3_address1;
output   v261_3_ce1;
output   v261_3_we1;
output  [31:0] v261_3_d1;
input  [31:0] v261_3_q1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v279_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln277_fu_111_p2;
reg   [15:0] phi_mul_load_reg_154;
reg   [7:0] v196_1_reg_159;
wire   [0:0] cmp11_fu_123_p2;
reg   [0:0] cmp11_reg_167;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_ap_start;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_ap_done;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_ap_idle;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_ap_ready;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v263_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v263_ce0;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v263_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v263_ce1;
wire   [13:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_ce0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_we0;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_d0;
wire   [13:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_ce1;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_we1;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_d1;
wire   [13:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_ce0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_we0;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_d0;
wire   [13:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_ce1;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_we1;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_d1;
wire   [13:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_ce0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_we0;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_d0;
wire   [13:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_ce1;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_we1;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_d1;
wire   [13:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_ce0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_we0;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_d0;
wire   [13:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_address1;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_ce1;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_we1;
wire   [31:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_d1;
wire   [15:0] grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v262_address0;
wire    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v262_ce0;
reg    grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_ap_start_reg;
reg    ap_block_state2_ignore_call3;
wire    ap_CS_fsm_state3;
reg   [15:0] phi_mul_fu_52;
wire   [15:0] add_ln277_1_fu_105_p2;
reg    ap_block_state2;
reg   [7:0] v196_fu_56;
wire   [7:0] add_ln277_fu_117_p2;
reg    v279_write_local;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_ap_start_reg = 1'b0;
#0 phi_mul_fu_52 = 16'd0;
#0 v196_fu_56 = 8'd0;
end
kernel_3mm_kernel_3mm_node2_Pipeline_label_7_label_8 grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_ap_start),.ap_done(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_ap_done),.ap_idle(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_ap_idle),.ap_ready(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_ap_ready),.cmp11(cmp11_reg_167),.phi_mul(phi_mul_load_reg_154),.v263_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v263_address0),.v263_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v263_ce0),.v263_q0(v263_q0),.v263_address1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v263_address1),.v263_ce1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v263_ce1),.v263_q1(v263_q1),.v261_0_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_address0),.v261_0_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_ce0),.v261_0_we0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_we0),.v261_0_d0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_d0),.v261_0_q0(v261_0_q0),.v261_0_address1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_address1),.v261_0_ce1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_ce1),.v261_0_we1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_we1),.v261_0_d1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_d1),.v261_0_q1(v261_0_q1),.v261_1_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_address0),.v261_1_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_ce0),.v261_1_we0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_we0),.v261_1_d0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_d0),.v261_1_q0(v261_1_q0),.v261_1_address1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_address1),.v261_1_ce1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_ce1),.v261_1_we1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_we1),.v261_1_d1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_d1),.v261_1_q1(v261_1_q1),.v261_2_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_address0),.v261_2_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_ce0),.v261_2_we0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_we0),.v261_2_d0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_d0),.v261_2_q0(v261_2_q0),.v261_2_address1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_address1),.v261_2_ce1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_ce1),.v261_2_we1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_we1),.v261_2_d1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_d1),.v261_2_q1(v261_2_q1),.v261_3_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_address0),.v261_3_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_ce0),.v261_3_we0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_we0),.v261_3_d0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_d0),.v261_3_q0(v261_3_q0),.v261_3_address1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_address1),.v261_3_ce1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_ce1),.v261_3_we1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_we1),.v261_3_d1(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_d1),.v261_3_q1(v261_3_q1),.zext_ln277(v196_1_reg_159),.v262_address0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v262_address0),.v262_ce0(grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v262_ce0),.v262_q0(v262_q0));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_ignore_call3) & (icmp_ln277_fu_111_p2 == 1'd0))) begin
            grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_ap_ready == 1'b1)) begin
            grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_52 <= 16'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2) & (icmp_ln277_fu_111_p2 == 1'd0))) begin
        phi_mul_fu_52 <= add_ln277_1_fu_105_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v196_fu_56 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2) & (icmp_ln277_fu_111_p2 == 1'd0))) begin
        v196_fu_56 <= add_ln277_fu_117_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_167 <= cmp11_fu_123_p2;
        phi_mul_load_reg_154 <= phi_mul_fu_52;
        v196_1_reg_159 <= v196_fu_56;
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
always @ (*) begin
    if ((grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2) & (icmp_ln277_fu_111_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2) & (icmp_ln277_fu_111_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln277_fu_111_p2 == 1'd1))) begin
        v279_blk_n = v279_full_n;
    end else begin
        v279_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2) & (icmp_ln277_fu_111_p2 == 1'd1))) begin
        v279_write_local = 1'b1;
    end else begin
        v279_write_local = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2) & (icmp_ln277_fu_111_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2) & (icmp_ln277_fu_111_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_ap_done == 1'b1))) begin
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
assign add_ln277_1_fu_105_p2 = (phi_mul_fu_52 + 16'd190);
assign add_ln277_fu_117_p2 = (v196_fu_56 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_block_state2 = ((v279_full_n == 1'b0) & (icmp_ln277_fu_111_p2 == 1'd1));
end
always @ (*) begin
    ap_block_state2_ignore_call3 = ((v279_full_n == 1'b0) & (icmp_ln277_fu_111_p2 == 1'd1));
end
assign cmp11_fu_123_p2 = ((v196_fu_56 == 8'd0) ? 1'b1 : 1'b0);
assign grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_ap_start = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_ap_start_reg;
assign icmp_ln277_fu_111_p2 = ((v196_fu_56 == 8'd200) ? 1'b1 : 1'b0);
assign v261_0_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_address0;
assign v261_0_address1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_address1;
assign v261_0_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_ce0;
assign v261_0_ce1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_ce1;
assign v261_0_d0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_d0;
assign v261_0_d1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_d1;
assign v261_0_we0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_we0;
assign v261_0_we1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_0_we1;
assign v261_1_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_address0;
assign v261_1_address1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_address1;
assign v261_1_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_ce0;
assign v261_1_ce1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_ce1;
assign v261_1_d0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_d0;
assign v261_1_d1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_d1;
assign v261_1_we0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_we0;
assign v261_1_we1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_1_we1;
assign v261_2_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_address0;
assign v261_2_address1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_address1;
assign v261_2_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_ce0;
assign v261_2_ce1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_ce1;
assign v261_2_d0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_d0;
assign v261_2_d1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_d1;
assign v261_2_we0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_we0;
assign v261_2_we1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_2_we1;
assign v261_3_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_address0;
assign v261_3_address1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_address1;
assign v261_3_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_ce0;
assign v261_3_ce1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_ce1;
assign v261_3_d0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_d0;
assign v261_3_d1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_d1;
assign v261_3_we0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_we0;
assign v261_3_we1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v261_3_we1;
assign v262_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v262_address0;
assign v262_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v262_ce0;
assign v263_address0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v263_address0;
assign v263_address1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v263_address1;
assign v263_ce0 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v263_ce0;
assign v263_ce1 = grp_kernel_3mm_node2_Pipeline_label_7_label_8_fu_68_v263_ce1;
assign v279_din = 1'd1;
assign v279_write = v279_write_local;
endmodule 