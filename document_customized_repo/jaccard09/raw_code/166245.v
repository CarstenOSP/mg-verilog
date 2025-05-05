module forward_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v13712_1_address0,v13712_1_ce0,v13712_1_we0,v13712_1_d0,v13712_0_address0,v13712_0_ce0,v13712_0_we0,v13712_0_d0,p_read,v9714_1_address0,v9714_1_ce0,v9714_1_q0,v9714_address0,v9714_ce0,v9714_q0); 
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
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [17:0] v13712_1_address0;
output   v13712_1_ce0;
output   v13712_1_we0;
output  [7:0] v13712_1_d0;
output  [17:0] v13712_0_address0;
output   v13712_0_ce0;
output   v13712_0_we0;
output  [7:0] v13712_0_d0;
input  [6:0] p_read;
output  [13:0] v9714_1_address0;
output   v9714_1_ce0;
input  [7:0] v9714_1_q0;
output  [13:0] v9714_address0;
output   v9714_ce0;
input  [7:0] v9714_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] trunc_ln_fu_86_p4;
reg    ap_block_state1;
reg   [0:0] tmp_reg_170;
wire   [0:0] empty_404_fu_124_p1;
reg   [0:0] empty_404_reg_175;
wire   [5:0] rem4_fu_128_p3;
reg   [5:0] rem4_reg_181;
wire    ap_CS_fsm_state10;
wire   [7:0] mul9_i_fu_140_p3;
reg   [7:0] mul9_i_reg_186;
wire   [3:0] zext_ln12442_cast_cast_fu_149_p3;
reg   [3:0] zext_ln12442_cast_cast_reg_191;
wire   [2:0] p_udiv2_cast_cast_fu_157_p3;
reg   [2:0] p_udiv2_cast_cast_reg_196;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_ready;
wire   [17:0] grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_0_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_0_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_0_d0;
wire   [17:0] grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_1_d0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v9714_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v9714_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v9714_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v9714_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_start_reg;
wire    ap_CS_fsm_state11;
wire   [5:0] mul_ln12501_fu_100_p0;
wire   [7:0] mul_ln12501_fu_100_p1;
wire   [12:0] mul_ln12501_fu_100_p2;
wire   [15:0] mul_ln12501_cast_fu_106_p1;
wire   [5:0] grp_fu_118_p0;
wire   [3:0] grp_fu_118_p1;
wire   [2:0] grp_fu_118_p2;
wire   [2:0] empty_fu_136_p1;
reg    grp_fu_118_ap_start;
wire    grp_fu_118_ap_done;
reg    grp_fu_118_ce;
reg   [10:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state11_blk;
wire   [12:0] mul_ln12501_fu_100_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 11'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_ready),.v13712_0_address0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_0_address0),.v13712_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_0_ce0),.v13712_0_we0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_0_we0),.v13712_0_d0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_0_d0),.v13712_1_address0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_1_address0),.v13712_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_1_ce0),.v13712_1_we0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_1_we0),.v13712_1_d0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_1_d0),.rem4(rem4_reg_181),.mul9_i(mul9_i_reg_186),.v9714_1_address0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v9714_1_address0),.v9714_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v9714_1_ce0),.v9714_1_q0(v9714_1_q0),.v9714_address0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v9714_address0),.v9714_ce0(grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v9714_ce0),.v9714_q0(v9714_q0),.zext_ln12442_cast_cast(zext_ln12442_cast_cast_reg_191),.p_udiv2_cast_cast(p_udiv2_cast_cast_reg_196));
forward_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U5317(.din0(mul_ln12501_fu_100_p0),.din1(mul_ln12501_fu_100_p1),.dout(mul_ln12501_fu_100_p2));
forward_urem_6ns_4ns_3_10_seq_1 #(.ID( 1 ),.NUM_STAGE( 10 ),.din0_WIDTH( 6 ),.din1_WIDTH( 4 ),.dout_WIDTH( 3 ))
urem_6ns_4ns_3_10_seq_1_U5318(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_118_ap_start),.done(grp_fu_118_ap_done),.din0(grp_fu_118_p0),.din1(grp_fu_118_p1),.ce(grp_fu_118_ce),.dout(grp_fu_118_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_404_reg_175 <= empty_404_fu_124_p1;
        tmp_reg_170 <= mul_ln12501_cast_fu_106_p1[32'd9];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        mul9_i_reg_186[7 : 5] <= mul9_i_fu_140_p3[7 : 5];
        p_udiv2_cast_cast_reg_196[2] <= p_udiv2_cast_cast_fu_157_p3[2];
        rem4_reg_181[5] <= rem4_fu_128_p3[5];
        zext_ln12442_cast_cast_reg_191[3] <= zext_ln12442_cast_cast_fu_149_p3[3];
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_done == 1'b0)) begin
        ap_ST_fsm_state11_blk = 1'b1;
    end else begin
        ap_ST_fsm_state11_blk = 1'b0;
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
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_118_ap_start = 1'b1;
    end else begin
        grp_fu_118_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_118_ce = 1'b0;
    end else begin
        grp_fu_118_ce = 1'b1;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_404_fu_124_p1 = p_read[0:0];
assign empty_fu_136_p1 = grp_fu_118_p2[2:0];
assign grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_start = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_ap_start_reg;
assign grp_fu_118_p0 = {{p_read[6:1]}};
assign grp_fu_118_p1 = 6'd5;
assign mul9_i_fu_140_p3 = {{empty_fu_136_p1}, {5'd0}};
assign mul_ln12501_cast_fu_106_p1 = mul_ln12501_fu_100_p2;
assign mul_ln12501_fu_100_p0 = mul_ln12501_fu_100_p00;
assign mul_ln12501_fu_100_p00 = trunc_ln_fu_86_p4;
assign mul_ln12501_fu_100_p1 = 13'd103;
assign p_udiv2_cast_cast_fu_157_p3 = ((empty_404_reg_175[0:0] == 1'b1) ? 3'd4 : 3'd0);
assign rem4_fu_128_p3 = {{tmp_reg_170}, {5'd0}};
assign trunc_ln_fu_86_p4 = {{p_read[6:1]}};
assign v13712_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_0_address0;
assign v13712_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_0_ce0;
assign v13712_0_d0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_0_d0;
assign v13712_0_we0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_0_we0;
assign v13712_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_1_address0;
assign v13712_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_1_ce0;
assign v13712_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_1_d0;
assign v13712_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v13712_1_we0;
assign v9714_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v9714_1_address0;
assign v9714_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v9714_1_ce0;
assign v9714_address0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v9714_address0;
assign v9714_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_Pipeline_VITI_fu_70_v9714_ce0;
assign zext_ln12442_cast_cast_fu_149_p3 = ((empty_404_reg_175[0:0] == 1'b1) ? 4'd8 : 4'd0);
always @ (posedge ap_clk) begin
    rem4_reg_181[4:0] <= 5'b00000;
    mul9_i_reg_186[4:0] <= 5'b00000;
    zext_ln12442_cast_cast_reg_191[2:0] <= 3'b000;
    p_udiv2_cast_cast_reg_196[1:0] <= 2'b00;
end
endmodule 