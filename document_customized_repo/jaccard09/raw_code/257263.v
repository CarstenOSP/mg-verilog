module kernel_atax_kernel_atax_node2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v353_0_address0,v353_0_ce0,v353_0_q0,v353_0_address1,v353_0_ce1,v353_0_q1,v353_1_address0,v353_1_ce0,v353_1_q0,v353_1_address1,v353_1_ce1,v353_1_q1,v355_address0,v355_ce0,v355_q0,v355_address1,v355_ce1,v355_q1,v350_din,v350_full_n,v350_write,v358_address0,v358_ce0,v358_we0,v358_d0,v175,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_opcode,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_opcode,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_dout0,grp_fu_176_p_ce); 
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
output  [16:0] v353_0_address0;
output   v353_0_ce0;
input  [31:0] v353_0_q0;
output  [16:0] v353_0_address1;
output   v353_0_ce1;
input  [31:0] v353_0_q1;
output  [16:0] v353_1_address0;
output   v353_1_ce0;
input  [31:0] v353_1_q0;
output  [16:0] v353_1_address1;
output   v353_1_ce1;
input  [31:0] v353_1_q1;
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
output  [31:0] grp_fu_164_p_din0;
output  [31:0] grp_fu_164_p_din1;
output  [1:0] grp_fu_164_p_opcode;
input  [31:0] grp_fu_164_p_dout0;
output   grp_fu_164_p_ce;
output  [31:0] grp_fu_168_p_din0;
output  [31:0] grp_fu_168_p_din1;
output  [1:0] grp_fu_168_p_opcode;
input  [31:0] grp_fu_168_p_dout0;
output   grp_fu_168_p_ce;
output  [31:0] grp_fu_172_p_din0;
output  [31:0] grp_fu_172_p_din1;
input  [31:0] grp_fu_172_p_dout0;
output   grp_fu_172_p_ce;
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
input  [31:0] grp_fu_176_p_dout0;
output   grp_fu_176_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v350_blk_n;
wire   [0:0] empty_fu_88_p1;
reg   [0:0] empty_reg_135;
wire   [16:0] mul_ln251_fu_106_p2;
reg   [16:0] mul_ln251_reg_140;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_75_ap_start;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_75_ap_done;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_75_ap_idle;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_75_ap_ready;
wire   [16:0] grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_0_address0;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_0_ce0;
wire   [16:0] grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_0_address1;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_0_ce1;
wire   [16:0] grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_1_address0;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_1_ce0;
wire   [16:0] grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_1_address1;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_1_ce1;
wire   [8:0] grp_kernel_atax_node2_Pipeline_label_1_fu_75_v355_address0;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_75_v355_ce0;
wire   [8:0] grp_kernel_atax_node2_Pipeline_label_1_fu_75_v355_address1;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_75_v355_ce1;
wire   [31:0] grp_kernel_atax_node2_Pipeline_label_1_fu_75_v340_out;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_75_v340_out_ap_vld;
wire   [31:0] grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_145_p_din0;
wire   [31:0] grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_145_p_din1;
wire   [1:0] grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_145_p_opcode;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_145_p_ce;
wire   [31:0] grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_149_p_din0;
wire   [31:0] grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_149_p_din1;
wire   [1:0] grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_149_p_opcode;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_149_p_ce;
wire   [31:0] grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_153_p_din0;
wire   [31:0] grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_153_p_din1;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_153_p_ce;
wire   [31:0] grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_157_p_din0;
wire   [31:0] grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_157_p_din1;
wire    grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_157_p_ce;
reg    grp_kernel_atax_node2_Pipeline_label_1_fu_75_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire   [63:0] zext_ln249_fu_112_p1;
wire    ap_CS_fsm_state4;
reg    ap_block_state1;
reg    v350_write_local;
reg    v358_we0_local;
wire   [31:0] bitcast_ln414_fu_119_p1;
reg    v358_ce0_local;
wire   [7:0] lshr_ln_fu_92_p4;
wire   [7:0] mul_ln251_fu_106_p0;
wire   [9:0] mul_ln251_fu_106_p1;
reg    grp_fu_145_ce;
reg    grp_fu_149_ce;
reg    grp_fu_153_ce;
reg    grp_fu_157_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire   [16:0] mul_ln251_fu_106_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_kernel_atax_node2_Pipeline_label_1_fu_75_ap_start_reg = 1'b0;
end
kernel_atax_kernel_atax_node2_Pipeline_label_1 grp_kernel_atax_node2_Pipeline_label_1_fu_75(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_atax_node2_Pipeline_label_1_fu_75_ap_start),.ap_done(grp_kernel_atax_node2_Pipeline_label_1_fu_75_ap_done),.ap_idle(grp_kernel_atax_node2_Pipeline_label_1_fu_75_ap_idle),.ap_ready(grp_kernel_atax_node2_Pipeline_label_1_fu_75_ap_ready),.mul_ln251(mul_ln251_reg_140),.v353_0_address0(grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_0_address0),.v353_0_ce0(grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_0_ce0),.v353_0_q0(v353_0_q0),.v353_0_address1(grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_0_address1),.v353_0_ce1(grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_0_ce1),.v353_0_q1(v353_0_q1),.v353_1_address0(grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_1_address0),.v353_1_ce0(grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_1_ce0),.v353_1_q0(v353_1_q0),.v353_1_address1(grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_1_address1),.v353_1_ce1(grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_1_ce1),.v353_1_q1(v353_1_q1),.empty(empty_reg_135),.v355_address0(grp_kernel_atax_node2_Pipeline_label_1_fu_75_v355_address0),.v355_ce0(grp_kernel_atax_node2_Pipeline_label_1_fu_75_v355_ce0),.v355_q0(v355_q0),.v355_address1(grp_kernel_atax_node2_Pipeline_label_1_fu_75_v355_address1),.v355_ce1(grp_kernel_atax_node2_Pipeline_label_1_fu_75_v355_ce1),.v355_q1(v355_q1),.v340_out(grp_kernel_atax_node2_Pipeline_label_1_fu_75_v340_out),.v340_out_ap_vld(grp_kernel_atax_node2_Pipeline_label_1_fu_75_v340_out_ap_vld),.grp_fu_145_p_din0(grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_145_p_din0),.grp_fu_145_p_din1(grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_145_p_din1),.grp_fu_145_p_opcode(grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_145_p_opcode),.grp_fu_145_p_dout0(grp_fu_164_p_dout0),.grp_fu_145_p_ce(grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_145_p_ce),.grp_fu_149_p_din0(grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_149_p_din0),.grp_fu_149_p_din1(grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_149_p_din1),.grp_fu_149_p_opcode(grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_149_p_opcode),.grp_fu_149_p_dout0(grp_fu_168_p_dout0),.grp_fu_149_p_ce(grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_149_p_ce),.grp_fu_153_p_din0(grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_153_p_din0),.grp_fu_153_p_din1(grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_153_p_din1),.grp_fu_153_p_dout0(grp_fu_172_p_dout0),.grp_fu_153_p_ce(grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_153_p_ce),.grp_fu_157_p_din0(grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_157_p_din0),.grp_fu_157_p_din1(grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_157_p_din1),.grp_fu_157_p_dout0(grp_fu_176_p_dout0),.grp_fu_157_p_ce(grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_157_p_ce));
kernel_atax_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U17(.din0(mul_ln251_fu_106_p0),.din1(mul_ln251_fu_106_p1),.dout(mul_ln251_fu_106_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_atax_node2_Pipeline_label_1_fu_75_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_kernel_atax_node2_Pipeline_label_1_fu_75_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_atax_node2_Pipeline_label_1_fu_75_ap_ready == 1'b1)) begin
            grp_kernel_atax_node2_Pipeline_label_1_fu_75_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        empty_reg_135 <= empty_fu_88_p1;
        mul_ln251_reg_140 <= mul_ln251_fu_106_p2;
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
    if ((grp_kernel_atax_node2_Pipeline_label_1_fu_75_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_145_ce = grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_145_p_ce;
    end else begin
        grp_fu_145_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_149_ce = grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_149_p_ce;
    end else begin
        grp_fu_149_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_153_ce = grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_153_p_ce;
    end else begin
        grp_fu_153_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_157_ce = grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_157_p_ce;
    end else begin
        grp_fu_157_ce = 1'b1;
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
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        v350_write_local = 1'b1;
    end else begin
        v350_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v358_ce0_local = 1'b1;
    end else begin
        v358_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v358_we0_local = 1'b1;
    end else begin
        v358_we0_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_kernel_atax_node2_Pipeline_label_1_fu_75_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
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
always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (v350_full_n == 1'b0));
end
assign bitcast_ln414_fu_119_p1 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_v340_out;
assign empty_fu_88_p1 = v175[0:0];
assign grp_fu_164_p_ce = grp_fu_145_ce;
assign grp_fu_164_p_din0 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_145_p_din0;
assign grp_fu_164_p_din1 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_145_p_din1;
assign grp_fu_164_p_opcode = 2'd0;
assign grp_fu_168_p_ce = grp_fu_149_ce;
assign grp_fu_168_p_din0 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_149_p_din0;
assign grp_fu_168_p_din1 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_149_p_din1;
assign grp_fu_168_p_opcode = 2'd0;
assign grp_fu_172_p_ce = grp_fu_153_ce;
assign grp_fu_172_p_din0 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_153_p_din0;
assign grp_fu_172_p_din1 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_153_p_din1;
assign grp_fu_176_p_ce = grp_fu_157_ce;
assign grp_fu_176_p_din0 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_157_p_din0;
assign grp_fu_176_p_din1 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_grp_fu_157_p_din1;
assign grp_kernel_atax_node2_Pipeline_label_1_fu_75_ap_start = grp_kernel_atax_node2_Pipeline_label_1_fu_75_ap_start_reg;
assign lshr_ln_fu_92_p4 = {{v175[8:1]}};
assign mul_ln251_fu_106_p0 = mul_ln251_fu_106_p00;
assign mul_ln251_fu_106_p00 = lshr_ln_fu_92_p4;
assign mul_ln251_fu_106_p1 = 17'd410;
assign v350_din = 1'd1;
assign v350_write = v350_write_local;
assign v353_0_address0 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_0_address0;
assign v353_0_address1 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_0_address1;
assign v353_0_ce0 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_0_ce0;
assign v353_0_ce1 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_0_ce1;
assign v353_1_address0 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_1_address0;
assign v353_1_address1 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_1_address1;
assign v353_1_ce0 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_1_ce0;
assign v353_1_ce1 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_v353_1_ce1;
assign v355_address0 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_v355_address0;
assign v355_address1 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_v355_address1;
assign v355_ce0 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_v355_ce0;
assign v355_ce1 = grp_kernel_atax_node2_Pipeline_label_1_fu_75_v355_ce1;
assign v358_address0 = zext_ln249_fu_112_p1;
assign v358_ce0 = v358_ce0_local;
assign v358_d0 = bitcast_ln414_fu_119_p1;
assign v358_we0 = v358_we0_local;
assign zext_ln249_fu_112_p1 = v175;
endmodule 