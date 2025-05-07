module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_opcode,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_dout0,grp_fu_160_p_ce); 
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
output  [31:0] grp_fu_164_p_din0;
output  [31:0] grp_fu_164_p_din1;
output  [1:0] grp_fu_164_p_opcode;
input  [31:0] grp_fu_164_p_dout0;
output   grp_fu_164_p_ce;
output  [31:0] grp_fu_168_p_din0;
output  [31:0] grp_fu_168_p_din1;
input  [31:0] grp_fu_168_p_dout0;
output   grp_fu_168_p_ce;
output  [31:0] grp_fu_160_p_din0;
output  [31:0] grp_fu_160_p_din1;
input  [31:0] grp_fu_160_p_dout0;
output   grp_fu_160_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v224_address0;
reg v224_ce0;
reg[15:0] v228_address0;
reg v228_ce0;
reg[15:0] v228_address1;
reg v228_ce1;
reg[15:0] v229_address0;
reg v229_ce0;
reg v229_we0;
reg[31:0] v229_d0;
reg[15:0] v229_address1;
reg v229_ce1;
reg v229_we1;
reg[31:0] v229_d1;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [7:0] v5_1_reg_177;
wire    ap_CS_fsm_state2;
wire   [15:0] mul_ln38_fu_116_p2;
reg   [15:0] mul_ln38_reg_187;
wire   [0:0] cmp11_fu_133_p2;
reg   [0:0] cmp11_reg_192;
wire    ap_CS_fsm_state3;
reg   [6:0] tmp_reg_197;
wire   [7:0] or_ln_fu_148_p3;
reg   [7:0] or_ln_reg_202;
wire    ap_CS_fsm_state4;
wire   [15:0] mul_ln38_1_fu_159_p2;
reg   [15:0] mul_ln38_1_reg_207;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_212_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_212_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_212_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_212_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_216_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_216_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_216_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_220_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_220_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_220_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_212_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_212_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_212_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_212_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_216_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_216_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_216_p_ce;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg   [7:0] v5_fu_56;
wire   [7:0] add_ln31_fu_122_p2;
wire   [0:0] icmp_ln31_fu_106_p2;
reg    ap_block_state1;
reg    v236_read_local;
wire   [7:0] mul_ln38_fu_116_p0;
wire   [8:0] mul_ln38_fu_116_p1;
wire   [7:0] mul_ln38_1_fu_159_p0;
wire   [8:0] mul_ln38_1_fu_159_p1;
reg   [31:0] grp_fu_212_p0;
reg   [31:0] grp_fu_212_p1;
reg    grp_fu_212_ce;
reg   [31:0] grp_fu_216_p0;
reg   [31:0] grp_fu_216_p1;
reg    grp_fu_216_ce;
reg    grp_fu_220_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire   [15:0] mul_ln38_1_fu_159_p00;
wire   [15:0] mul_ln38_fu_116_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_ap_start_reg = 1'b0;
#0 v5_fu_56 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_2 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_ap_ready),.zext_ln31(v5_1_reg_177),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v224_ce0),.v224_q0(v224_q0),.mul_ln38(mul_ln38_reg_187),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_d1),.v229_q1(v229_q1),.v4(v4),.cmp11(cmp11_reg_192),.grp_fu_212_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_212_p_din0),.grp_fu_212_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_212_p_din1),.grp_fu_212_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_212_p_opcode),.grp_fu_212_p_dout0(grp_fu_164_p_dout0),.grp_fu_212_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_212_p_ce),.grp_fu_216_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_216_p_din0),.grp_fu_216_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_216_p_din1),.grp_fu_216_p_dout0(grp_fu_168_p_dout0),.grp_fu_216_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_216_p_ce),.grp_fu_220_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_220_p_din0),.grp_fu_220_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_220_p_din1),.grp_fu_220_p_dout0(grp_fu_160_p_dout0),.grp_fu_220_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_220_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_210 grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_ap_ready),.zext_ln32_1(or_ln_reg_202),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v224_ce0),.v224_q0(v224_q0),.mul_ln38_1(mul_ln38_1_reg_207),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_d1),.v229_q1(v229_q1),.grp_fu_212_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_212_p_din0),.grp_fu_212_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_212_p_din1),.grp_fu_212_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_212_p_opcode),.grp_fu_212_p_dout0(grp_fu_164_p_dout0),.grp_fu_212_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_212_p_ce),.grp_fu_216_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_216_p_din0),.grp_fu_216_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_216_p_din1),.grp_fu_216_p_dout0(grp_fu_168_p_dout0),.grp_fu_216_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_216_p_ce));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U467(.din0(mul_ln38_fu_116_p0),.din1(mul_ln38_fu_116_p1),.dout(mul_ln38_fu_116_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U468(.din0(mul_ln38_1_fu_159_p0),.din1(mul_ln38_1_fu_159_p1),.dout(mul_ln38_1_fu_159_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        v5_fu_56 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_106_p2 == 1'd1))) begin
        v5_fu_56 <= add_ln31_fu_122_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp11_reg_192 <= cmp11_fu_133_p2;
        tmp_reg_197 <= {{v5_1_reg_177[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        mul_ln38_1_reg_207 <= mul_ln38_1_fu_159_p2;
        or_ln_reg_202[7 : 1] <= or_ln_fu_148_p3[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_ln38_reg_187 <= mul_ln38_fu_116_p2;
        v5_1_reg_177 <= v5_fu_56;
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
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_106_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_106_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_212_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_212_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_212_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_212_p_ce;
    end else begin
        grp_fu_212_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_212_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_212_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_212_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_212_p_din0;
    end else begin
        grp_fu_212_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_212_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_212_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_212_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_212_p_din1;
    end else begin
        grp_fu_212_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_216_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_216_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_216_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_216_p_ce;
    end else begin
        grp_fu_216_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_216_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_216_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_216_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_216_p_din0;
    end else begin
        grp_fu_216_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_216_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_grp_fu_216_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_216_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_216_p_din1;
    end else begin
        grp_fu_216_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_220_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_220_p_ce;
    end else begin
        grp_fu_220_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v224_address0;
    end else begin
        v224_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v224_ce0;
    end else begin
        v224_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v228_address0;
    end else begin
        v228_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v228_address1;
    end else begin
        v228_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v228_ce0;
    end else begin
        v228_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v228_ce1;
    end else begin
        v228_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_v229_we1;
    end else begin
        v229_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_106_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_fu_122_p2 = (v5_fu_56 + 8'd2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
always @ (*) begin
    ap_block_state1 = ((v236_empty_n == 1'b0) | (ap_start == 1'b0));
end
assign cmp11_fu_133_p2 = ((v5_1_reg_177 == 8'd0) ? 1'b1 : 1'b0);
assign grp_fu_160_p_ce = grp_fu_220_ce;
assign grp_fu_160_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_220_p_din0;
assign grp_fu_160_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_grp_fu_220_p_din1;
assign grp_fu_164_p_ce = grp_fu_212_ce;
assign grp_fu_164_p_din0 = grp_fu_212_p0;
assign grp_fu_164_p_din1 = grp_fu_212_p1;
assign grp_fu_164_p_opcode = 2'd0;
assign grp_fu_168_p_ce = grp_fu_216_ce;
assign grp_fu_168_p_din0 = grp_fu_216_p0;
assign grp_fu_168_p_din1 = grp_fu_216_p1;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_86_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_72_ap_start_reg;
assign icmp_ln31_fu_106_p2 = ((v5_fu_56 < 8'd190) ? 1'b1 : 1'b0);
assign mul_ln38_1_fu_159_p0 = mul_ln38_1_fu_159_p00;
assign mul_ln38_1_fu_159_p00 = or_ln_fu_148_p3;
assign mul_ln38_1_fu_159_p1 = 16'd220;
assign mul_ln38_fu_116_p0 = mul_ln38_fu_116_p00;
assign mul_ln38_fu_116_p00 = v5_fu_56;
assign mul_ln38_fu_116_p1 = 16'd220;
assign or_ln_fu_148_p3 = {{tmp_reg_197}, {1'd1}};
assign v236_read = v236_read_local;
always @ (posedge ap_clk) begin
    or_ln_reg_202[0] <= 1'b1;
end
endmodule 