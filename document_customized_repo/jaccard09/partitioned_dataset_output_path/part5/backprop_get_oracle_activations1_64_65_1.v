
module backprop_get_oracle_activations1_64_65_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_q1,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_q1,output_differences_0_address0,output_differences_0_ce0,output_differences_0_q0,output_differences_0_address1,output_differences_0_ce1,output_differences_0_q1,output_differences_1_address0,output_differences_1_ce0,output_differences_1_q0,output_differences_1_address1,output_differences_1_ce1,output_differences_1_q1,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,grp_fu_2848_p_din0,grp_fu_2848_p_din1,grp_fu_2848_p_dout0,grp_fu_2848_p_ce,grp_fu_2832_p_din0,grp_fu_2832_p_din1,grp_fu_2832_p_opcode,grp_fu_2832_p_dout0,grp_fu_2832_p_ce);  
parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] weights2_0_address0;
output   weights2_0_ce0;
input  [63:0] weights2_0_q0;
output  [10:0] weights2_0_address1;
output   weights2_0_ce1;
input  [63:0] weights2_0_q1;
output  [10:0] weights2_1_address0;
output   weights2_1_ce0;
input  [63:0] weights2_1_q0;
output  [10:0] weights2_1_address1;
output   weights2_1_ce1;
input  [63:0] weights2_1_q1;
output  [4:0] output_differences_0_address0;
output   output_differences_0_ce0;
input  [63:0] output_differences_0_q0;
output  [4:0] output_differences_0_address1;
output   output_differences_0_ce1;
input  [63:0] output_differences_0_q1;
output  [4:0] output_differences_1_address0;
output   output_differences_1_ce0;
input  [63:0] output_differences_1_q0;
output  [4:0] output_differences_1_address1;
output   output_differences_1_ce1;
input  [63:0] output_differences_1_q1;
output  [4:0] oracle_activations_0_address0;
output   oracle_activations_0_ce0;
output   oracle_activations_0_we0;
output  [63:0] oracle_activations_0_d0;
output  [4:0] oracle_activations_1_address0;
output   oracle_activations_1_ce0;
output   oracle_activations_1_we0;
output  [63:0] oracle_activations_1_d0;
output  [4:0] dactivations_0_address0;
output   dactivations_0_ce0;
input  [63:0] dactivations_0_q0;
output  [4:0] dactivations_1_address0;
output   dactivations_1_ce0;
input  [63:0] dactivations_1_q0;
output  [63:0] grp_fu_2848_p_din0;
output  [63:0] grp_fu_2848_p_din1;
input  [63:0] grp_fu_2848_p_dout0;
output   grp_fu_2848_p_ce;
output  [63:0] grp_fu_2832_p_din0;
output  [63:0] grp_fu_2832_p_din1;
output  [0:0] grp_fu_2832_p_opcode;
input  [63:0] grp_fu_2832_p_dout0;
output   grp_fu_2832_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln102_fu_142_p2;
reg   [6:0] add_ln102_reg_206;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln102_fu_148_p1;
reg   [5:0] trunc_ln102_reg_211;
wire   [0:0] trunc_ln102_1_fu_153_p1;
reg   [0:0] trunc_ln102_1_reg_216;
reg   [4:0] oracle_activations_0_addr_reg_221;
reg   [4:0] oracle_activations_1_addr_reg_226;
wire   [63:0] select_ln107_fu_175_p3;
reg   [63:0] select_ln107_reg_241;
wire    ap_CS_fsm_state3;
reg   [63:0] mul_reg_249;
wire    ap_CS_fsm_state10;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_ap_start;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_ap_done;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_ap_idle;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_ap_ready;
wire   [4:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_0_ce0;
wire   [4:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_0_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_0_ce1;
wire   [10:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_0_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_0_ce0;
wire   [10:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_0_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_0_ce1;
wire   [4:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_1_ce0;
wire   [4:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_1_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_1_ce1;
wire   [10:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_1_address0;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_1_ce0;
wire   [10:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_1_address1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_1_ce1;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_add113_out;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_add113_out_ap_vld;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_255_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_255_p_din1;
wire   [0:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_255_p_opcode;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_255_p_ce;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_124_p_din0;
wire   [63:0] grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_124_p_din1;
wire    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_124_p_ce;
reg    grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_ap_start_reg;
wire   [0:0] icmp_ln102_fu_136_p2;
wire   [63:0] zext_ln103_fu_167_p1;
reg   [6:0] i_fu_52;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state4;
reg    dactivations_0_ce0_local;
reg    dactivations_1_ce0_local;
reg    oracle_activations_0_we0_local;
reg    oracle_activations_0_ce0_local;
reg    oracle_activations_1_we0_local;
reg    oracle_activations_1_ce0_local;
reg   [63:0] grp_fu_124_p0;
reg   [63:0] grp_fu_124_p1;
wire   [4:0] lshr_ln101_1_fu_157_p4;
reg    grp_fu_124_ce;
reg    grp_fu_255_ce;
reg   [10:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_ap_start_reg = 1'b0;
#0 i_fu_52 = 7'd0;
end
backprop_get_oracle_activations1_64_65_1_Pipeline_activations1_loop grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_ap_start),.ap_done(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_ap_done),.ap_idle(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_ap_idle),.ap_ready(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_ap_ready),.output_differences_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_0_address0),.output_differences_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_0_ce0),.output_differences_0_q0(output_differences_0_q0),.output_differences_0_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_0_address1),.output_differences_0_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_0_ce1),.output_differences_0_q1(output_differences_0_q1),.i(trunc_ln102_reg_211),.weights2_0_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_0_address0),.weights2_0_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_0_ce0),.weights2_0_q0(weights2_0_q0),.weights2_0_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_0_address1),.weights2_0_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_0_ce1),.weights2_0_q1(weights2_0_q1),.output_differences_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_1_address0),.output_differences_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_1_ce0),.output_differences_1_q0(output_differences_1_q0),.output_differences_1_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_1_address1),.output_differences_1_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_1_ce1),.output_differences_1_q1(output_differences_1_q1),.weights2_1_address0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_1_address0),.weights2_1_ce0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_1_ce0),.weights2_1_q0(weights2_1_q0),.weights2_1_address1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_1_address1),.weights2_1_ce1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_1_ce1),.weights2_1_q1(weights2_1_q1),.add113_out(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_add113_out),.add113_out_ap_vld(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_add113_out_ap_vld),.grp_fu_255_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_255_p_din0),.grp_fu_255_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_255_p_din1),.grp_fu_255_p_opcode(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_255_p_opcode),.grp_fu_255_p_dout0(grp_fu_2832_p_dout0),.grp_fu_255_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_255_p_ce),.grp_fu_124_p_din0(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_124_p_din0),.grp_fu_124_p_din1(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_124_p_din1),.grp_fu_124_p_dout0(grp_fu_2848_p_dout0),.grp_fu_124_p_ce(grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_124_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln102_fu_136_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_ap_start_reg <= 1'b1;
        end else if ((grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_ap_ready == 1'b1)) begin
            grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_52 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        i_fu_52 <= add_ln102_reg_206;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln102_reg_206 <= add_ln102_fu_142_p2;
        oracle_activations_0_addr_reg_221 <= zext_ln103_fu_167_p1;
        oracle_activations_1_addr_reg_226 <= zext_ln103_fu_167_p1;
        trunc_ln102_1_reg_216 <= trunc_ln102_1_fu_153_p1;
        trunc_ln102_reg_211 <= trunc_ln102_fu_148_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        mul_reg_249 <= grp_fu_2848_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        select_ln107_reg_241 <= select_ln107_fu_175_p3;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
    if ((grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((icmp_ln102_fu_136_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln102_fu_136_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dactivations_0_ce0_local = 1'b1;
    end else begin
        dactivations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        dactivations_1_ce0_local = 1'b1;
    end else begin
        dactivations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_124_ce = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_124_p_ce;
    end else begin
        grp_fu_124_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_124_p0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_124_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_124_p0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_add113_out;
    end else begin
        grp_fu_124_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_124_p1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_124_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_124_p1 = select_ln107_reg_241;
    end else begin
        grp_fu_124_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_255_ce = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_255_p_ce;
    end else begin
        grp_fu_255_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        oracle_activations_0_ce0_local = 1'b1;
    end else begin
        oracle_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (trunc_ln102_1_reg_216 == 1'd0))) begin
        oracle_activations_0_we0_local = 1'b1;
    end else begin
        oracle_activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        oracle_activations_1_ce0_local = 1'b1;
    end else begin
        oracle_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (trunc_ln102_1_reg_216 == 1'd1))) begin
        oracle_activations_1_we0_local = 1'b1;
    end else begin
        oracle_activations_1_we0_local = 1'b0;
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
            if (((icmp_ln102_fu_136_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
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
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln102_fu_142_p2 = (i_fu_52 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign dactivations_0_address0 = zext_ln103_fu_167_p1;
assign dactivations_0_ce0 = dactivations_0_ce0_local;
assign dactivations_1_address0 = zext_ln103_fu_167_p1;
assign dactivations_1_ce0 = dactivations_1_ce0_local;
assign grp_fu_2832_p_ce = grp_fu_255_ce;
assign grp_fu_2832_p_din0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_255_p_din0;
assign grp_fu_2832_p_din1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_255_p_din1;
assign grp_fu_2832_p_opcode = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_grp_fu_255_p_opcode;
assign grp_fu_2848_p_ce = grp_fu_124_ce;
assign grp_fu_2848_p_din0 = grp_fu_124_p0;
assign grp_fu_2848_p_din1 = grp_fu_124_p1;
assign grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_ap_start = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_ap_start_reg;
assign icmp_ln102_fu_136_p2 = ((i_fu_52 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln101_1_fu_157_p4 = {{i_fu_52[5:1]}};
assign oracle_activations_0_address0 = oracle_activations_0_addr_reg_221;
assign oracle_activations_0_ce0 = oracle_activations_0_ce0_local;
assign oracle_activations_0_d0 = mul_reg_249;
assign oracle_activations_0_we0 = oracle_activations_0_we0_local;
assign oracle_activations_1_address0 = oracle_activations_1_addr_reg_226;
assign oracle_activations_1_ce0 = oracle_activations_1_ce0_local;
assign oracle_activations_1_d0 = mul_reg_249;
assign oracle_activations_1_we0 = oracle_activations_1_we0_local;
assign output_differences_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_0_address0;
assign output_differences_0_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_0_address1;
assign output_differences_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_0_ce0;
assign output_differences_0_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_0_ce1;
assign output_differences_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_1_address0;
assign output_differences_1_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_1_address1;
assign output_differences_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_1_ce0;
assign output_differences_1_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_output_differences_1_ce1;
assign select_ln107_fu_175_p3 = ((trunc_ln102_1_reg_216[0:0] == 1'b1) ? dactivations_1_q0 : dactivations_0_q0);
assign trunc_ln102_1_fu_153_p1 = i_fu_52[0:0];
assign trunc_ln102_fu_148_p1 = i_fu_52[5:0];
assign weights2_0_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_0_address0;
assign weights2_0_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_0_address1;
assign weights2_0_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_0_ce0;
assign weights2_0_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_0_ce1;
assign weights2_1_address0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_1_address0;
assign weights2_1_address1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_1_address1;
assign weights2_1_ce0 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_1_ce0;
assign weights2_1_ce1 = grp_get_oracle_activations1_64_65_1_Pipeline_activations1_loop_fu_110_weights2_1_ce1;
assign zext_ln103_fu_167_p1 = lshr_ln101_1_fu_157_p4;
endmodule 
