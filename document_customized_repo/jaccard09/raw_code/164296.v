module forward_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v7614_0,v15418_address0,v15418_ce0,v15418_q0,v7621_address0,v7621_ce0,v7621_we0,v7621_d0,ap_return); 
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
input  [9:0] v7614_0;
output  [12:0] v15418_address0;
output   v15418_ce0;
input  [7:0] v15418_q0;
output  [4:0] v7621_address0;
output   v7621_ce0;
output   v7621_we0;
output  [7:0] v7621_d0;
output  [9:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [3:0] tmp_reg_134;
wire   [3:0] trunc_ln_fu_81_p4;
reg   [1:0] udiv_ln_cast_reg_144;
wire   [8:0] mul_i_fu_117_p3;
reg   [8:0] mul_i_reg_149;
wire    ap_CS_fsm_state8;
wire   [1:0] trunc_ln9091_fu_125_p1;
reg   [1:0] trunc_ln9091_reg_154;
wire    grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_ready;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_v15418_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_v15418_ce0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_v7621_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_v7621_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_v7621_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_v7621_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_start_reg;
wire    ap_CS_fsm_state9;
wire   [3:0] mul_ln9136_fu_95_p0;
wire   [5:0] mul_ln9136_fu_95_p1;
wire   [8:0] mul_ln9136_fu_95_p2;
wire   [3:0] grp_fu_111_p0;
wire   [2:0] grp_fu_111_p1;
wire   [1:0] grp_fu_111_p2;
reg    grp_fu_111_ap_start;
wire    grp_fu_111_ap_done;
reg    grp_fu_111_ce;
reg   [9:0] ap_return_preg;
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
wire   [8:0] mul_ln9136_fu_95_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_start_reg = 1'b0;
#0 ap_return_preg = 10'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_ready),.mul_i(mul_i_reg_149),.zext_ln9110_2(udiv_ln_cast_reg_144),.zext_ln9110(trunc_ln9091_reg_154),.v15418_address0(grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_v15418_address0),.v15418_ce0(grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_v15418_ce0),.v15418_q0(v15418_q0),.v7621_address0(grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_v7621_address0),.v7621_ce0(grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_v7621_ce0),.v7621_we0(grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_v7621_we0),.v7621_d0(grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_v7621_d0));
forward_mul_4ns_6ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 4 ),.din1_WIDTH( 6 ),.dout_WIDTH( 9 ))
mul_4ns_6ns_9_1_1_U7653(.din0(mul_ln9136_fu_95_p0),.din1(mul_ln9136_fu_95_p1),.dout(mul_ln9136_fu_95_p2));
forward_urem_4ns_3ns_2_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_4ns_3ns_2_8_seq_1_U7654(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_111_ap_start),.done(grp_fu_111_ap_done),.din0(grp_fu_111_p0),.din1(grp_fu_111_p1),.ce(grp_fu_111_ce),.dout(grp_fu_111_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 10'd0;
    end else begin
        if (((grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
            ap_return_preg <= v7614_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_i_reg_149[8 : 5] <= mul_i_fu_117_p3[8 : 5];
        trunc_ln9091_reg_154 <= trunc_ln9091_fu_125_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_reg_134 <= {{v7614_0[5:2]}};
        udiv_ln_cast_reg_144 <= {{mul_ln9136_fu_95_p2[7:6]}};
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_return = v7614_0;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_111_ap_start = 1'b1;
    end else begin
        grp_fu_111_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_111_ce = 1'b0;
    end else begin
        grp_fu_111_ce = 1'b1;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
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
assign grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_start = grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_ap_start_reg;
assign grp_fu_111_p0 = {{v7614_0[9:6]}};
assign grp_fu_111_p1 = 4'd3;
assign mul_i_fu_117_p3 = {{tmp_reg_134}, {5'd0}};
assign mul_ln9136_fu_95_p0 = mul_ln9136_fu_95_p00;
assign mul_ln9136_fu_95_p00 = trunc_ln_fu_81_p4;
assign mul_ln9136_fu_95_p1 = 9'd22;
assign trunc_ln9091_fu_125_p1 = grp_fu_111_p2[1:0];
assign trunc_ln_fu_81_p4 = {{v7614_0[9:6]}};
assign v15418_address0 = grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_v15418_address0;
assign v15418_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_v15418_ce0;
assign v7621_address0 = grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_v7621_address0;
assign v7621_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_v7621_ce0;
assign v7621_d0 = grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_v7621_d0;
assign v7621_we0 = grp_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_Pipeline_VITIS_LO_fu_60_v7621_we0;
always @ (posedge ap_clk) begin
    mul_i_reg_149[4:0] <= 5'b00000;
end
endmodule 