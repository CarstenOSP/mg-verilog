module forward_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,p_read,v5916_address0,v5916_ce0,v5916_q0,v5915_address0,v5915_ce0,v5915_q0,v5914_address0,v5914_ce0,v5914_q0,v5917_address0,v5917_ce0,v5917_we0,v5917_d0,ap_return); 
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [13:0] p_read;
output  [4:0] v5916_address0;
output   v5916_ce0;
input  [7:0] v5916_q0;
output  [4:0] v5915_address0;
output   v5915_ce0;
input  [7:0] v5915_q0;
output  [4:0] v5914_address0;
output   v5914_ce0;
input  [7:0] v5914_q0;
output  [4:0] v5917_address0;
output   v5917_ce0;
output   v5917_we0;
output  [7:0] v5917_d0;
output  [13:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[13:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire    ap_CS_fsm_state2;
wire   [0:0] brmerge_i_fu_107_p2;
reg   [0:0] brmerge_i_reg_125;
wire    ap_CS_fsm_state9;
wire    grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_ready;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5916_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5916_ce0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5915_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5915_ce0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5914_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5914_ce0;
wire   [4:0] grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5917_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5917_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5917_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5917_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_start_reg;
wire    ap_CS_fsm_state10;
wire   [13:0] mul_ln6851_fu_60_p0;
wire   [15:0] mul_ln6851_fu_60_p1;
wire   [28:0] mul_ln6851_fu_60_p2;
wire   [3:0] grp_fu_76_p0;
wire   [2:0] grp_fu_76_p1;
wire   [1:0] grp_fu_76_p2;
wire   [14:0] v5908_0_cast_fu_82_p1;
wire   [14:0] v5908_0_off_i_fu_89_p2;
wire   [1:0] trunc_ln6851_fu_85_p1;
wire   [0:0] cmp9_i_not_i_fu_95_p2;
wire   [0:0] cmp12_i_not_i_fu_101_p2;
reg    grp_fu_76_ap_start;
wire    grp_fu_76_ap_done;
reg   [13:0] ap_return_preg;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire   [28:0] mul_ln6851_fu_60_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 10'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_start_reg = 1'b0;
#0 ap_return_preg = 14'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_ready),.v5916_address0(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5916_address0),.v5916_ce0(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5916_ce0),.v5916_q0(v5916_q0),.v5915_address0(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5915_address0),.v5915_ce0(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5915_ce0),.v5915_q0(v5915_q0),.v5914_address0(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5914_address0),.v5914_ce0(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5914_ce0),.v5914_q0(v5914_q0),.brmerge_i(brmerge_i_reg_125),.v5917_address0(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5917_address0),.v5917_ce0(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5917_ce0),.v5917_we0(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5917_we0),.v5917_d0(grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5917_d0));
forward_mul_14ns_16ns_29_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 14 ),.din1_WIDTH( 16 ),.dout_WIDTH( 29 ))
mul_14ns_16ns_29_1_1_U9419(.din0(mul_ln6851_fu_60_p0),.din1(mul_ln6851_fu_60_p1),.dout(mul_ln6851_fu_60_p2));
forward_urem_4ns_3ns_2_8_seq_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 4 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_4ns_3ns_2_8_seq_1_U9420(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_76_ap_start),.done(grp_fu_76_ap_done),.din0(grp_fu_76_p0),.din1(grp_fu_76_p1),.ce(1'b1),.dout(grp_fu_76_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 14'd0;
    end else begin
        if (((grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
            ap_return_preg <= p_read;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        brmerge_i_reg_125 <= brmerge_i_fu_107_p2;
    end
end
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_return = p_read;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_76_ap_start = 1'b1;
    end else begin
        grp_fu_76_ap_start = 1'b0;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign brmerge_i_fu_107_p2 = (cmp9_i_not_i_fu_95_p2 | cmp12_i_not_i_fu_101_p2);
assign cmp12_i_not_i_fu_101_p2 = ((trunc_ln6851_fu_85_p1 != 2'd2) ? 1'b1 : 1'b0);
assign cmp9_i_not_i_fu_95_p2 = ((v5908_0_off_i_fu_89_p2 > 15'd4703) ? 1'b1 : 1'b0);
assign grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_start = grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_ap_start_reg;
assign grp_fu_76_p0 = {{mul_ln6851_fu_60_p2[28:25]}};
assign grp_fu_76_p1 = 4'd3;
assign mul_ln6851_fu_60_p0 = mul_ln6851_fu_60_p00;
assign mul_ln6851_fu_60_p00 = p_read;
assign mul_ln6851_fu_60_p1 = 29'd21400;
assign trunc_ln6851_fu_85_p1 = grp_fu_76_p2[1:0];
assign v5908_0_cast_fu_82_p1 = p_read;
assign v5908_0_off_i_fu_89_p2 = ($signed(v5908_0_cast_fu_82_p1) + $signed(15'd23360));
assign v5914_address0 = grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5914_address0;
assign v5914_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5914_ce0;
assign v5915_address0 = grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5915_address0;
assign v5915_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5915_ce0;
assign v5916_address0 = grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5916_address0;
assign v5916_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5916_ce0;
assign v5917_address0 = grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5917_address0;
assign v5917_ce0 = grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5917_ce0;
assign v5917_d0 = grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5917_d0;
assign v5917_we0 = grp_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO_fu_44_v5917_we0;
endmodule 