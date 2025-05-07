module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_120_p_din0,grp_fu_120_p_din1,grp_fu_120_p_opcode,grp_fu_120_p_dout0,grp_fu_120_p_ce,grp_fu_124_p_din0,grp_fu_124_p_din1,grp_fu_124_p_dout0,grp_fu_124_p_ce,grp_fu_128_p_din0,grp_fu_128_p_din1,grp_fu_128_p_dout0,grp_fu_128_p_ce); 
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
output  [15:0] v226_address0;
output   v226_ce0;
input  [31:0] v226_q0;
output  [15:0] v227_address0;
output   v227_ce0;
input  [31:0] v227_q0;
output  [15:0] v227_address1;
output   v227_ce1;
input  [31:0] v227_q1;
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
output  [31:0] grp_fu_120_p_din0;
output  [31:0] grp_fu_120_p_din1;
output  [1:0] grp_fu_120_p_opcode;
input  [31:0] grp_fu_120_p_dout0;
output   grp_fu_120_p_ce;
output  [31:0] grp_fu_124_p_din0;
output  [31:0] grp_fu_124_p_din1;
input  [31:0] grp_fu_124_p_dout0;
output   grp_fu_124_p_ce;
output  [31:0] grp_fu_128_p_din0;
output  [31:0] grp_fu_128_p_din1;
input  [31:0] grp_fu_128_p_dout0;
output   grp_fu_128_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v226_address0;
reg v226_ce0;
reg[15:0] v227_address0;
reg v227_ce0;
reg[15:0] v227_address1;
reg v227_ce1;
reg[15:0] v225_address0;
reg v225_ce0;
reg v225_we0;
reg[31:0] v225_d0;
reg[15:0] v225_address1;
reg v225_ce1;
reg v225_we1;
reg[31:0] v225_d1;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_109_p2;
reg   [7:0] v114_1_reg_181;
wire   [15:0] mul_ln175_fu_119_p2;
reg   [15:0] mul_ln175_reg_191;
wire   [0:0] cmp11_fu_136_p2;
reg   [0:0] cmp11_reg_196;
wire    ap_CS_fsm_state3;
reg   [6:0] tmp_reg_201;
wire   [7:0] or_ln_fu_151_p3;
reg   [7:0] or_ln_reg_206;
wire    ap_CS_fsm_state4;
wire   [15:0] mul_ln175_1_fu_162_p2;
reg   [15:0] mul_ln175_1_reg_211;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v226_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_216_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_216_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_216_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_216_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_220_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_220_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_220_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_224_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_224_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_224_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v226_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_216_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_216_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_216_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_216_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_220_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_220_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_220_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_224_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_224_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_224_p_ce;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg   [7:0] v114_fu_56;
wire   [7:0] add_ln168_fu_125_p2;
reg    ap_block_state2;
reg    v236_write_local;
wire   [7:0] mul_ln175_fu_119_p0;
wire   [8:0] mul_ln175_fu_119_p1;
wire   [7:0] mul_ln175_1_fu_162_p0;
wire   [8:0] mul_ln175_1_fu_162_p1;
reg   [31:0] grp_fu_216_p0;
reg   [31:0] grp_fu_216_p1;
reg    grp_fu_216_ce;
reg   [31:0] grp_fu_220_p0;
reg   [31:0] grp_fu_220_p1;
reg    grp_fu_220_ce;
reg   [31:0] grp_fu_224_p0;
reg   [31:0] grp_fu_224_p1;
reg    grp_fu_224_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire   [15:0] mul_ln175_1_fu_162_p00;
wire   [15:0] mul_ln175_fu_119_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_ap_start_reg = 1'b0;
#0 v114_fu_56 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_5 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_ap_ready),.zext_ln168(v114_1_reg_181),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175(mul_ln175_reg_191),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_d1),.v225_q1(v225_q1),.cmp11(cmp11_reg_196),.grp_fu_216_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_216_p_din0),.grp_fu_216_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_216_p_din1),.grp_fu_216_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_216_p_opcode),.grp_fu_216_p_dout0(grp_fu_120_p_dout0),.grp_fu_216_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_216_p_ce),.grp_fu_220_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_220_p_din0),.grp_fu_220_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_220_p_din1),.grp_fu_220_p_dout0(grp_fu_124_p_dout0),.grp_fu_220_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_220_p_ce),.grp_fu_224_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_224_p_din0),.grp_fu_224_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_224_p_din1),.grp_fu_224_p_dout0(grp_fu_128_p_dout0),.grp_fu_224_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_224_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_53 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_ap_ready),.zext_ln169_1(or_ln_reg_206),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175_1(mul_ln175_1_reg_211),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_d1),.v225_q1(v225_q1),.grp_fu_216_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_216_p_din0),.grp_fu_216_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_216_p_din1),.grp_fu_216_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_216_p_opcode),.grp_fu_216_p_dout0(grp_fu_120_p_dout0),.grp_fu_216_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_216_p_ce),.grp_fu_220_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_220_p_din0),.grp_fu_220_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_220_p_din1),.grp_fu_220_p_dout0(grp_fu_124_p_dout0),.grp_fu_220_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_220_p_ce),.grp_fu_224_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_224_p_din0),.grp_fu_224_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_224_p_din1),.grp_fu_224_p_dout0(grp_fu_128_p_dout0),.grp_fu_224_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_224_p_ce));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U58(.din0(mul_ln175_fu_119_p0),.din1(mul_ln175_fu_119_p1),.dout(mul_ln175_fu_119_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U59(.din0(mul_ln175_1_fu_162_p0),.din1(mul_ln175_1_fu_162_p1),.dout(mul_ln175_1_fu_162_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v114_fu_56 <= 8'd0;
    end else if (((icmp_ln168_fu_109_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        v114_fu_56 <= add_ln168_fu_125_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp11_reg_196 <= cmp11_fu_136_p2;
        tmp_reg_201 <= {{v114_1_reg_181[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        mul_ln175_1_reg_211 <= mul_ln175_1_fu_162_p2;
        or_ln_reg_206[7 : 1] <= or_ln_fu_151_p3[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_ln175_reg_191 <= mul_ln175_fu_119_p2;
        v114_1_reg_181 <= v114_fu_56;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln168_fu_109_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln168_fu_109_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_216_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_216_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_216_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_216_p_ce;
    end else begin
        grp_fu_216_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_216_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_216_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_216_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_216_p_din0;
    end else begin
        grp_fu_216_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_216_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_216_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_216_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_216_p_din1;
    end else begin
        grp_fu_216_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_220_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_220_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_220_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_220_p_ce;
    end else begin
        grp_fu_220_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_220_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_220_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_220_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_220_p_din0;
    end else begin
        grp_fu_220_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_220_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_220_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_220_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_220_p_din1;
    end else begin
        grp_fu_220_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_224_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_224_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_224_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_224_p_ce;
    end else begin
        grp_fu_224_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_224_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_224_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_224_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_224_p_din0;
    end else begin
        grp_fu_224_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_224_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_grp_fu_224_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_224_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_grp_fu_224_p_din1;
    end else begin
        grp_fu_224_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v226_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v226_address0;
    end else begin
        v226_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v226_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v226_ce0;
    end else begin
        v226_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln168_fu_109_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((icmp_ln168_fu_109_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        v236_write_local = 1'b1;
    end else begin
        v236_write_local = 1'b0;
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
            if (((icmp_ln168_fu_109_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln168_fu_109_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_ap_done == 1'b1))) begin
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
assign add_ln168_fu_125_p2 = (v114_fu_56 + 8'd2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
always @ (*) begin
    ap_block_state2 = ((icmp_ln168_fu_109_p2 == 1'd0) & (v236_full_n == 1'b0));
end
assign cmp11_fu_136_p2 = ((v114_1_reg_181 == 8'd0) ? 1'b1 : 1'b0);
assign grp_fu_120_p_ce = grp_fu_216_ce;
assign grp_fu_120_p_din0 = grp_fu_216_p0;
assign grp_fu_120_p_din1 = grp_fu_216_p1;
assign grp_fu_120_p_opcode = 2'd0;
assign grp_fu_124_p_ce = grp_fu_220_ce;
assign grp_fu_124_p_din0 = grp_fu_220_p0;
assign grp_fu_124_p_din1 = grp_fu_220_p1;
assign grp_fu_128_p_ce = grp_fu_224_ce;
assign grp_fu_128_p_din0 = grp_fu_224_p0;
assign grp_fu_128_p_din1 = grp_fu_224_p1;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_88_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_74_ap_start_reg;
assign icmp_ln168_fu_109_p2 = ((v114_fu_56 < 8'd210) ? 1'b1 : 1'b0);
assign mul_ln175_1_fu_162_p0 = mul_ln175_1_fu_162_p00;
assign mul_ln175_1_fu_162_p00 = or_ln_fu_151_p3;
assign mul_ln175_1_fu_162_p1 = 16'd190;
assign mul_ln175_fu_119_p0 = mul_ln175_fu_119_p00;
assign mul_ln175_fu_119_p00 = v114_fu_56;
assign mul_ln175_fu_119_p1 = 16'd190;
assign or_ln_fu_151_p3 = {{tmp_reg_201}, {1'd1}};
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
always @ (posedge ap_clk) begin
    or_ln_reg_206[0] <= 1'b1;
end
endmodule 