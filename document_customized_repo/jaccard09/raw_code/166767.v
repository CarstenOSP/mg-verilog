module forward_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v4027_address0,v4027_ce0,v4027_we0,v4027_d0,v4027_1_address0,v4027_1_ce0,v4027_1_we0,v4027_1_d0,v4020_0,v9020_0_address0,v9020_0_ce0,v9020_0_q0,v9020_1_address0,v9020_1_ce0,v9020_1_q0,v9020_2_address0,v9020_2_ce0,v9020_2_q0,v9020_3_address0,v9020_3_ce0,v9020_3_q0,ap_return); 
parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [9:0] v4027_address0;
output   v4027_ce0;
output   v4027_we0;
output  [7:0] v4027_d0;
output  [9:0] v4027_1_address0;
output   v4027_1_ce0;
output   v4027_1_we0;
output  [7:0] v4027_1_d0;
input  [8:0] v4020_0;
output  [15:0] v9020_0_address0;
output   v9020_0_ce0;
input  [7:0] v9020_0_q0;
output  [15:0] v9020_1_address0;
output   v9020_1_ce0;
input  [7:0] v9020_1_q0;
output  [15:0] v9020_2_address0;
output   v9020_2_ce0;
input  [7:0] v9020_2_q0;
output  [15:0] v9020_3_address0;
output   v9020_3_ce0;
input  [7:0] v9020_3_q0;
output  [4:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire   [4:0] empty_fu_101_p1;
reg   [4:0] empty_reg_207;
reg   [2:0] tmp_s_reg_211;
wire   [3:0] trunc_ln_fu_115_p4;
reg   [1:0] udiv_ln_cast_reg_221;
reg   [0:0] tmp_reg_226;
wire   [7:0] mul_i_fu_159_p3;
reg   [7:0] mul_i_reg_231;
wire    ap_CS_fsm_state8;
wire   [2:0] select_ln5545_fu_167_p3;
reg   [2:0] select_ln5545_reg_236;
wire   [2:0] thr_add2_fu_190_p2;
reg   [2:0] thr_add2_reg_241;
wire   [1:0] empty_130_fu_197_p1;
reg   [1:0] empty_130_reg_246;
wire    grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_ready;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_1_d0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_0_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_1_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_2_ce0;
wire   [15:0] grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_3_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_start_reg;
wire    ap_CS_fsm_state9;
wire   [3:0] mul_ln5546_fu_129_p0;
wire   [5:0] mul_ln5546_fu_129_p1;
wire   [8:0] mul_ln5546_fu_129_p2;
wire   [3:0] grp_fu_153_p0;
wire   [2:0] grp_fu_153_p1;
wire   [2:0] grp_fu_153_p2;
wire   [0:0] empty_129_fu_179_p1;
wire   [2:0] trunc_ln5545_fu_175_p1;
wire   [2:0] mul17_i_fu_182_p3;
reg    grp_fu_153_ap_start;
wire    grp_fu_153_ap_done;
reg    grp_fu_153_ce;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire   [8:0] mul_ln5546_fu_129_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_ready),.mul_i(mul_i_reg_231),.udiv_ln(udiv_ln_cast_reg_221),.select_ln5545(select_ln5545_reg_236),.v4027_address0(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_address0),.v4027_ce0(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_ce0),.v4027_we0(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_we0),.v4027_d0(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_d0),.v4027_1_address0(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_1_address0),.v4027_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_1_ce0),.v4027_1_we0(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_1_we0),.v4027_1_d0(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_1_d0),.thr_add2_cast8_cast_cast_cast(thr_add2_reg_241),.v9020_0_address0(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_0_address0),.v9020_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_0_ce0),.v9020_0_q0(v9020_0_q0),.v9020_1_address0(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_1_address0),.v9020_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_1_ce0),.v9020_1_q0(v9020_1_q0),.v9020_2_address0(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_2_address0),.v9020_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_2_ce0),.v9020_2_q0(v9020_2_q0),.v9020_3_address0(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_3_address0),.v9020_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_3_ce0),.v9020_3_q0(v9020_3_q0),.empty(empty_130_reg_246));
forward_mul_4ns_6ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 4 ),.din1_WIDTH( 6 ),.dout_WIDTH( 9 ))
mul_4ns_6ns_9_1_1_U6048(.din0(mul_ln5546_fu_129_p0),.din1(mul_ln5546_fu_129_p1),.dout(mul_ln5546_fu_129_p2));
forward_urem_4ns_3ns_3_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 3 ))
urem_4ns_3ns_3_8_seq_1_U6049(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_153_ap_start),.done(grp_fu_153_ap_done),.din0(grp_fu_153_p0),.din1(grp_fu_153_p1),.ce(grp_fu_153_ce),.dout(grp_fu_153_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_130_reg_246 <= empty_130_fu_197_p1;
        mul_i_reg_231[7 : 5] <= mul_i_fu_159_p3[7 : 5];
        select_ln5545_reg_236[2] <= select_ln5545_fu_167_p3[2];
        thr_add2_reg_241 <= thr_add2_fu_190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_reg_207 <= empty_fu_101_p1;
        tmp_reg_226 <= v4020_0[32'd1];
        tmp_s_reg_211 <= {{v4020_0[4:2]}};
        udiv_ln_cast_reg_221 <= {{mul_ln5546_fu_129_p2[7:6]}};
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
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_153_ap_start = 1'b1;
    end else begin
        grp_fu_153_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_153_ce = 1'b0;
    end else begin
        grp_fu_153_ce = 1'b1;
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
            if (((1'b1 == ap_CS_fsm_state9) & (grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign ap_return = empty_reg_207;
assign empty_129_fu_179_p1 = v4020_0[0:0];
assign empty_130_fu_197_p1 = grp_fu_153_p2[1:0];
assign empty_fu_101_p1 = v4020_0[4:0];
assign grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_start = grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_ap_start_reg;
assign grp_fu_153_p0 = {{v4020_0[8:5]}};
assign grp_fu_153_p1 = 4'd3;
assign mul17_i_fu_182_p3 = ((empty_129_fu_179_p1[0:0] == 1'b1) ? 3'd4 : 3'd0);
assign mul_i_fu_159_p3 = {{tmp_s_reg_211}, {5'd0}};
assign mul_ln5546_fu_129_p0 = mul_ln5546_fu_129_p00;
assign mul_ln5546_fu_129_p00 = trunc_ln_fu_115_p4;
assign mul_ln5546_fu_129_p1 = 9'd22;
assign select_ln5545_fu_167_p3 = ((tmp_reg_226[0:0] == 1'b1) ? 3'd4 : 3'd0);
assign thr_add2_fu_190_p2 = (trunc_ln5545_fu_175_p1 | mul17_i_fu_182_p3);
assign trunc_ln5545_fu_175_p1 = grp_fu_153_p2[2:0];
assign trunc_ln_fu_115_p4 = {{v4020_0[8:5]}};
assign v4027_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_1_address0;
assign v4027_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_1_ce0;
assign v4027_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_1_d0;
assign v4027_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_1_we0;
assign v4027_address0 = grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_address0;
assign v4027_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_ce0;
assign v4027_d0 = grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_d0;
assign v4027_we0 = grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v4027_we0;
assign v9020_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_0_address0;
assign v9020_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_0_ce0;
assign v9020_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_1_address0;
assign v9020_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_1_ce0;
assign v9020_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_2_address0;
assign v9020_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_2_ce0;
assign v9020_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_3_address0;
assign v9020_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_Pipeline_VITIS_s_fu_80_v9020_3_ce0;
always @ (posedge ap_clk) begin
    mul_i_reg_231[4:0] <= 5'b00000;
    select_ln5545_reg_236[1:0] <= 2'b00;
end
endmodule 