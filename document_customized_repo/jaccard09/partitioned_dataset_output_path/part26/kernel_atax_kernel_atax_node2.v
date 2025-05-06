
module kernel_atax_kernel_atax_node2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v353_0_address0,v353_0_ce0,v353_0_q0,v353_0_address1,v353_0_ce1,v353_0_q1,v353_1_address0,v353_1_ce0,v353_1_q0,v353_1_address1,v353_1_ce1,v353_1_q1,v353_2_address0,v353_2_ce0,v353_2_q0,v353_2_address1,v353_2_ce1,v353_2_q1,v353_3_address0,v353_3_ce0,v353_3_q0,v353_3_address1,v353_3_ce1,v353_3_q1,v355_address0,v355_ce0,v355_q0,v355_address1,v355_ce1,v355_q1,v350_din,v350_full_n,v350_write,v358_address0,v358_ce0,v358_we0,v358_d0,v175,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_opcode,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_opcode,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce);  
parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v353_0_address0;
output   v353_0_ce0;
input  [31:0] v353_0_q0;
output  [15:0] v353_0_address1;
output   v353_0_ce1;
input  [31:0] v353_0_q1;
output  [15:0] v353_1_address0;
output   v353_1_ce0;
input  [31:0] v353_1_q0;
output  [15:0] v353_1_address1;
output   v353_1_ce1;
input  [31:0] v353_1_q1;
output  [15:0] v353_2_address0;
output   v353_2_ce0;
input  [31:0] v353_2_q0;
output  [15:0] v353_2_address1;
output   v353_2_ce1;
input  [31:0] v353_2_q1;
output  [15:0] v353_3_address0;
output   v353_3_ce0;
input  [31:0] v353_3_q0;
output  [15:0] v353_3_address1;
output   v353_3_ce1;
input  [31:0] v353_3_q1;
output  [8:0] v355_address0;
output   v355_ce0;
input  [31:0] v355_q0;
output  [8:0] v355_address1;
output   v355_ce1;
input  [31:0] v355_q1;
output  [0:0] v350_din;
input   v350_full_n;
output   v350_write;
output  [8:0] v358_address0;
output   v358_ce0;
output   v358_we0;
output  [31:0] v358_d0;
input  [8:0] v175;
output  [31:0] grp_fu_172_p_din0;
output  [31:0] grp_fu_172_p_din1;
output  [1:0] grp_fu_172_p_opcode;
input  [31:0] grp_fu_172_p_dout0;
output   grp_fu_172_p_ce;
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
output  [1:0] grp_fu_176_p_opcode;
input  [31:0] grp_fu_176_p_dout0;
output   grp_fu_176_p_ce;
output  [31:0] grp_fu_180_p_din0;
output  [31:0] grp_fu_180_p_din1;
input  [31:0] grp_fu_180_p_dout0;
output   grp_fu_180_p_ce;
output  [31:0] grp_fu_184_p_din0;
output  [31:0] grp_fu_184_p_din1;
input  [31:0] grp_fu_184_p_dout0;
output   grp_fu_184_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v350_blk_n;
wire   [8:0] grp_fu_100_p2;
reg   [8:0] urem_ln241_reg_159;
wire    ap_CS_fsm_state13;
wire   [15:0] mul_ln251_fu_109_p2;
reg   [15:0] mul_ln251_reg_164;
wire    ap_CS_fsm_state14;
reg   [1:0] trunc_ln_reg_169;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_ap_start;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_ap_done;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_ap_idle;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_ap_ready;
wire   [15:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_0_address0;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_0_ce0;
wire   [15:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_0_address1;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_0_ce1;
wire   [15:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_1_address0;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_1_ce0;
wire   [15:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_1_address1;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_1_ce1;
wire   [15:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_2_address0;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_2_ce0;
wire   [15:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_2_address1;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_2_ce1;
wire   [15:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_3_address0;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_3_ce0;
wire   [15:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_3_address1;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_3_ce1;
wire   [8:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_v355_address0;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_v355_ce0;
wire   [8:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_v355_address1;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_v355_ce1;
wire   [31:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_v340_out;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_v340_out_ap_vld;
wire   [31:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_174_p_din0;
wire   [31:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_174_p_din1;
wire   [1:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_174_p_opcode;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_174_p_ce;
wire   [31:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_178_p_din0;
wire   [31:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_178_p_din1;
wire   [1:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_178_p_opcode;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_178_p_ce;
wire   [31:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_182_p_din0;
wire   [31:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_182_p_din1;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_182_p_ce;
wire   [31:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_186_p_din0;
wire   [31:0] grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_186_p_din1;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_186_p_ce;
reg    grp_kernel_atax_node2_Pipeline_label_1_fu_83_ap_start_reg;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire   [63:0] zext_ln249_fu_134_p1;
wire    ap_CS_fsm_state17;
reg    ap_block_state1;
reg    v350_write_local;
reg    v358_we0_local;
wire   [31:0] bitcast_ln414_fu_141_p1;
reg    v358_ce0_local;
wire   [7:0] grp_fu_100_p1;
wire   [7:0] mul_ln251_fu_109_p0;
wire   [9:0] mul_ln251_fu_109_p1;
wire   [8:0] mul_ln241_fu_118_p0;
wire   [10:0] mul_ln241_fu_118_p1;
wire   [18:0] mul_ln241_fu_118_p2;
reg    grp_fu_100_ap_start;
wire    grp_fu_100_ap_done;
reg    grp_fu_100_ce;
reg    grp_fu_174_ce;
reg    grp_fu_178_ce;
reg    grp_fu_182_ce;
reg    grp_fu_186_ce;
reg   [16:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
reg    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire   [18:0] mul_ln241_fu_118_p00;
wire   [15:0] mul_ln251_fu_109_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_atax_node2_Pipeline_label_1_fu_83_ap_start_reg = 1'b0;
end
kernel_atax_kernel_atax_node2_Pipeline_label_1 grp_kernel_atax_node2_Pipeline_label_1_fu_83(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_atax_node2_Pipeline_label_1_fu_83_ap_start),.ap_done(grp_kernel_atax_node2_Pipeline_label_1_fu_83_ap_done),.ap_idle(grp_kernel_atax_node2_Pipeline_label_1_fu_83_ap_idle),.ap_ready(grp_kernel_atax_node2_Pipeline_label_1_fu_83_ap_ready),.mul_ln251(mul_ln251_reg_164),.v353_0_address0(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_0_address0),.v353_0_ce0(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_0_ce0),.v353_0_q0(v353_0_q0),.v353_0_address1(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_0_address1),.v353_0_ce1(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_0_ce1),.v353_0_q1(v353_0_q1),.v353_1_address0(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_1_address0),.v353_1_ce0(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_1_ce0),.v353_1_q0(v353_1_q0),.v353_1_address1(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_1_address1),.v353_1_ce1(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_1_ce1),.v353_1_q1(v353_1_q1),.v353_2_address0(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_2_address0),.v353_2_ce0(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_2_ce0),.v353_2_q0(v353_2_q0),.v353_2_address1(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_2_address1),.v353_2_ce1(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_2_ce1),.v353_2_q1(v353_2_q1),.v353_3_address0(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_3_address0),.v353_3_ce0(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_3_ce0),.v353_3_q0(v353_3_q0),.v353_3_address1(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_3_address1),.v353_3_ce1(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_3_ce1),.v353_3_q1(v353_3_q1),.trunc_ln(trunc_ln_reg_169),.v355_address0(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v355_address0),.v355_ce0(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v355_ce0),.v355_q0(v355_q0),.v355_address1(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v355_address1),.v355_ce1(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v355_ce1),.v355_q1(v355_q1),.v340_out(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v340_out),.v340_out_ap_vld(grp_kernel_atax_node2_Pipeline_label_1_fu_83_v340_out_ap_vld),.grp_fu_174_p_din0(grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_174_p_din0),.grp_fu_174_p_din1(grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_174_p_din1),.grp_fu_174_p_opcode(grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_174_p_opcode),.grp_fu_174_p_dout0(grp_fu_172_p_dout0),.grp_fu_174_p_ce(grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_174_p_ce),.grp_fu_178_p_din0(grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_178_p_din0),.grp_fu_178_p_din1(grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_178_p_din1),.grp_fu_178_p_opcode(grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_178_p_opcode),.grp_fu_178_p_dout0(grp_fu_176_p_dout0),.grp_fu_178_p_ce(grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_178_p_ce),.grp_fu_182_p_din0(grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_182_p_din0),.grp_fu_182_p_din1(grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_182_p_din1),.grp_fu_182_p_dout0(grp_fu_180_p_dout0),.grp_fu_182_p_ce(grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_182_p_ce),.grp_fu_186_p_din0(grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_186_p_din0),.grp_fu_186_p_din1(grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_186_p_din1),.grp_fu_186_p_dout0(grp_fu_184_p_dout0),.grp_fu_186_p_ce(grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_186_p_ce));
kernel_atax_urem_9ns_8ns_9_13_seq_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 8 ),.dout_WIDTH( 9 ))
urem_9ns_8ns_9_13_seq_1_U59(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_100_ap_start),.done(grp_fu_100_ap_done),.din0(v175),.din1(grp_fu_100_p1),.ce(grp_fu_100_ce),.dout(grp_fu_100_p2));
kernel_atax_mul_8ns_10ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 16 ))
mul_8ns_10ns_16_1_1_U60(.din0(mul_ln251_fu_109_p0),.din1(mul_ln251_fu_109_p1),.dout(mul_ln251_fu_109_p2));
kernel_atax_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U61(.din0(mul_ln241_fu_118_p0),.din1(mul_ln241_fu_118_p1),.dout(mul_ln241_fu_118_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_atax_node2_Pipeline_label_1_fu_83_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state15)) begin
            grp_kernel_atax_node2_Pipeline_label_1_fu_83_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_atax_node2_Pipeline_label_1_fu_83_ap_ready == 1'b1)) begin
            grp_kernel_atax_node2_Pipeline_label_1_fu_83_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        mul_ln251_reg_164 <= mul_ln251_fu_109_p2;
        trunc_ln_reg_169 <= {{mul_ln241_fu_118_p2[17:16]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        urem_ln241_reg_159 <= grp_fu_100_p2;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_atax_node2_Pipeline_label_1_fu_83_ap_done == 1'b0)) begin
        ap_ST_fsm_state16_blk = 1'b1;
    end else begin
        ap_ST_fsm_state16_blk = 1'b0;
    end
end
assign ap_ST_fsm_state17_blk = 1'b0;
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
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state17)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_100_ap_start = 1'b1;
    end else begin
        grp_fu_100_ap_start = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14))) begin
        grp_fu_100_ce = 1'b0;
    end else begin
        grp_fu_100_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_174_ce = grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_174_p_ce;
    end else begin
        grp_fu_174_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_178_ce = grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_178_p_ce;
    end else begin
        grp_fu_178_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_182_ce = grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_182_p_ce;
    end else begin
        grp_fu_182_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_186_ce = grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_186_p_ce;
    end else begin
        grp_fu_186_ce = 1'b1;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v350_blk_n = v350_full_n;
    end else begin
        v350_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v350_write_local = 1'b1;
    end else begin
        v350_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v358_ce0_local = 1'b1;
    end else begin
        v358_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v358_we0_local = 1'b1;
    end else begin
        v358_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((1'b1 == ap_CS_fsm_state16) & (grp_kernel_atax_node2_Pipeline_label_1_fu_83_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
always @ (*) begin
    ap_block_state1 = ((v350_full_n == 1'b0) | (ap_start == 1'b0));
end
assign bitcast_ln414_fu_141_p1 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v340_out;
assign grp_fu_100_p1 = 9'd98;
assign grp_fu_172_p_ce = grp_fu_174_ce;
assign grp_fu_172_p_din0 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_174_p_din0;
assign grp_fu_172_p_din1 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_174_p_din1;
assign grp_fu_172_p_opcode = 2'd0;
assign grp_fu_176_p_ce = grp_fu_178_ce;
assign grp_fu_176_p_din0 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_178_p_din0;
assign grp_fu_176_p_din1 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_178_p_din1;
assign grp_fu_176_p_opcode = 2'd0;
assign grp_fu_180_p_ce = grp_fu_182_ce;
assign grp_fu_180_p_din0 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_182_p_din0;
assign grp_fu_180_p_din1 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_182_p_din1;
assign grp_fu_184_p_ce = grp_fu_186_ce;
assign grp_fu_184_p_din0 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_186_p_din0;
assign grp_fu_184_p_din1 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_grp_fu_186_p_din1;
assign grp_kernel_atax_node2_Pipeline_label_1_fu_83_ap_start = grp_kernel_atax_node2_Pipeline_label_1_fu_83_ap_start_reg;
assign mul_ln241_fu_118_p0 = mul_ln241_fu_118_p00;
assign mul_ln241_fu_118_p00 = v175;
assign mul_ln241_fu_118_p1 = 19'd669;
assign mul_ln251_fu_109_p0 = mul_ln251_fu_109_p00;
assign mul_ln251_fu_109_p00 = urem_ln241_reg_159;
assign mul_ln251_fu_109_p1 = 16'd410;
assign v350_din = 1'd1;
assign v350_write = v350_write_local;
assign v353_0_address0 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_0_address0;
assign v353_0_address1 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_0_address1;
assign v353_0_ce0 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_0_ce0;
assign v353_0_ce1 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_0_ce1;
assign v353_1_address0 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_1_address0;
assign v353_1_address1 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_1_address1;
assign v353_1_ce0 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_1_ce0;
assign v353_1_ce1 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_1_ce1;
assign v353_2_address0 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_2_address0;
assign v353_2_address1 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_2_address1;
assign v353_2_ce0 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_2_ce0;
assign v353_2_ce1 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_2_ce1;
assign v353_3_address0 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_3_address0;
assign v353_3_address1 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_3_address1;
assign v353_3_ce0 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_3_ce0;
assign v353_3_ce1 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v353_3_ce1;
assign v355_address0 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v355_address0;
assign v355_address1 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v355_address1;
assign v355_ce0 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v355_ce0;
assign v355_ce1 = grp_kernel_atax_node2_Pipeline_label_1_fu_83_v355_ce1;
assign v358_address0 = zext_ln249_fu_134_p1;
assign v358_ce0 = v358_ce0_local;
assign v358_d0 = bitcast_ln414_fu_141_p1;
assign v358_we0 = v358_we0_local;
assign zext_ln249_fu_134_p1 = v175;
endmodule 
