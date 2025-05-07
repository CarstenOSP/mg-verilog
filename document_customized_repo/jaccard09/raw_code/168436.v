module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_124_p_din0,grp_fu_124_p_din1,grp_fu_124_p_opcode,grp_fu_124_p_dout0,grp_fu_124_p_ce,grp_fu_128_p_din0,grp_fu_128_p_din1,grp_fu_128_p_dout0,grp_fu_128_p_ce,grp_fu_132_p_din0,grp_fu_132_p_din1,grp_fu_132_p_dout0,grp_fu_132_p_ce); 
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v226_address0;
output   v226_ce0;
input  [31:0] v226_q0;
output  [14:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [14:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [14:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [14:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [0:0] v236_din;
input   v236_full_n;
output   v236_write;
output  [15:0] v225_address0;
output   v225_ce0;
output   v225_we0;
output  [31:0] v225_d0;
input  [31:0] v225_q0;
output  [15:0] v225_address1;
output   v225_ce1;
output   v225_we1;
output  [31:0] v225_d1;
input  [31:0] v225_q1;
input  [31:0] v113;
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
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_97_p2;
reg   [7:0] v114_1_reg_156;
wire   [14:0] mul_ln175_fu_123_p2;
reg   [14:0] mul_ln175_reg_166;
wire   [0:0] trunc_ln168_fu_134_p1;
reg   [0:0] trunc_ln168_reg_171;
wire    ap_CS_fsm_state3;
wire   [0:0] cmp11_fu_138_p2;
reg   [0:0] cmp11_reg_176;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v226_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_0_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_0_ce1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_1_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_1_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_181_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_181_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_181_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_181_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_185_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_185_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_185_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_189_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_189_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_189_p_ce;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_ap_start_reg;
wire    ap_CS_fsm_state4;
reg   [7:0] v114_fu_54;
wire   [7:0] add_ln168_fu_103_p2;
reg    ap_block_state2;
reg    v236_write_local;
wire   [6:0] lshr_ln_fu_109_p4;
wire   [6:0] mul_ln175_fu_123_p0;
wire   [8:0] mul_ln175_fu_123_p1;
reg    grp_fu_181_ce;
reg    grp_fu_185_ce;
reg    grp_fu_189_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire   [14:0] mul_ln175_fu_123_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_ap_start_reg = 1'b0;
#0 v114_fu_54 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_5 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_ap_ready),.zext_ln168(v114_1_reg_156),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175(mul_ln175_reg_166),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_1_ce1),.v227_1_q1(v227_1_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_d1),.v225_q1(v225_q1),.cmp11(cmp11_reg_176),.empty(trunc_ln168_reg_171),.grp_fu_181_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_181_p_din0),.grp_fu_181_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_181_p_din1),.grp_fu_181_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_181_p_opcode),.grp_fu_181_p_dout0(grp_fu_124_p_dout0),.grp_fu_181_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_181_p_ce),.grp_fu_185_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_185_p_din0),.grp_fu_185_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_185_p_din1),.grp_fu_185_p_dout0(grp_fu_128_p_dout0),.grp_fu_185_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_185_p_ce),.grp_fu_189_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_189_p_din0),.grp_fu_189_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_189_p_din1),.grp_fu_189_p_dout0(grp_fu_132_p_dout0),.grp_fu_189_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_189_p_ce));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U33(.din0(mul_ln175_fu_123_p0),.din1(mul_ln175_fu_123_p1),.dout(mul_ln175_fu_123_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_54 <= 8'd0;
    end else if (((icmp_ln168_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2))) begin
        v114_fu_54 <= add_ln168_fu_103_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp11_reg_176 <= cmp11_fu_138_p2;
        trunc_ln168_reg_171 <= trunc_ln168_fu_134_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_ln175_reg_166 <= mul_ln175_fu_123_p2;
        v114_1_reg_156 <= v114_fu_54;
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
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln168_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln168_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_181_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_181_p_ce;
    end else begin
        grp_fu_181_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_185_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_185_p_ce;
    end else begin
        grp_fu_185_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_189_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_189_p_ce;
    end else begin
        grp_fu_189_ce = 1'b1;
    end
end
always @ (*) begin
    if (((icmp_ln168_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((icmp_ln168_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2))) begin
        v236_write_local = 1'b1;
    end else begin
        v236_write_local = 1'b0;
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
            if (((icmp_ln168_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln168_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln168_fu_103_p2 = (v114_fu_54 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
always @ (*) begin
    ap_block_state2 = ((icmp_ln168_fu_97_p2 == 1'd1) & (v236_full_n == 1'b0));
end
assign cmp11_fu_138_p2 = ((v114_1_reg_156 == 8'd0) ? 1'b1 : 1'b0);
assign grp_fu_124_p_ce = grp_fu_181_ce;
assign grp_fu_124_p_din0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_181_p_din0;
assign grp_fu_124_p_din1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_181_p_din1;
assign grp_fu_124_p_opcode = 2'd0;
assign grp_fu_128_p_ce = grp_fu_185_ce;
assign grp_fu_128_p_din0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_185_p_din0;
assign grp_fu_128_p_din1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_185_p_din1;
assign grp_fu_132_p_ce = grp_fu_189_ce;
assign grp_fu_132_p_din0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_189_p_din0;
assign grp_fu_132_p_din1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_grp_fu_189_p_din1;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_ap_start_reg;
assign icmp_ln168_fu_97_p2 = ((v114_fu_54 == 8'd210) ? 1'b1 : 1'b0);
assign lshr_ln_fu_109_p4 = {{v114_fu_54[7:1]}};
assign mul_ln175_fu_123_p0 = mul_ln175_fu_123_p00;
assign mul_ln175_fu_123_p00 = lshr_ln_fu_109_p4;
assign mul_ln175_fu_123_p1 = 15'd190;
assign trunc_ln168_fu_134_p1 = v114_1_reg_156[0:0];
assign v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_address0;
assign v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_address1;
assign v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_ce0;
assign v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_ce1;
assign v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_d0;
assign v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_d1;
assign v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_we0;
assign v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v225_we1;
assign v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v226_address0;
assign v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v226_ce0;
assign v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_72_v227_1_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
endmodule 