module forward_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v9015_1_address0,v9015_1_ce0,v9015_1_we0,v9015_1_d0,v9015_0_address0,v9015_0_ce0,v9015_0_we0,v9015_0_d0,p_read,v7302_1_address0,v7302_1_ce0,v7302_1_q0,v7302_address0,v7302_ce0,v7302_q0); 
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
output  [17:0] v9015_1_address0;
output   v9015_1_ce0;
output   v9015_1_we0;
output  [7:0] v9015_1_d0;
output  [17:0] v9015_0_address0;
output   v9015_0_ce0;
output   v9015_0_we0;
output  [7:0] v9015_0_d0;
input  [6:0] p_read;
output  [13:0] v7302_1_address0;
output   v7302_1_ce0;
input  [7:0] v7302_1_q0;
output  [13:0] v7302_address0;
output   v7302_ce0;
input  [7:0] v7302_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [0:0] tmp_reg_139;
wire   [0:0] empty_107_fu_101_p1;
reg   [0:0] empty_107_reg_144;
wire   [6:0] mul_i_fu_109_p3;
reg   [6:0] mul_i_reg_149;
wire    ap_CS_fsm_state9;
wire   [3:0] zext_ln9296_cast_cast_fu_118_p3;
reg   [3:0] zext_ln9296_cast_cast_reg_154;
wire   [3:0] zext_ln9296_4_cast_cast_fu_126_p3;
reg   [3:0] zext_ln9296_4_cast_cast_reg_159;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_ready;
wire   [17:0] grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_0_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_0_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_0_d0;
wire   [17:0] grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_1_d0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v7302_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v7302_1_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v7302_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v7302_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_start_reg;
wire    ap_CS_fsm_state10;
wire   [4:0] grp_fu_87_p0;
wire   [2:0] grp_fu_87_p1;
wire   [1:0] grp_fu_87_p2;
wire   [1:0] empty_fu_105_p1;
reg    grp_fu_87_ap_start;
wire    grp_fu_87_ap_done;
reg    grp_fu_87_ce;
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
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 10'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_ready),.v9015_0_address0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_0_address0),.v9015_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_0_ce0),.v9015_0_we0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_0_we0),.v9015_0_d0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_0_d0),.v9015_1_address0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_1_address0),.v9015_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_1_ce0),.v9015_1_we0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_1_we0),.v9015_1_d0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_1_d0),.mul_i(mul_i_reg_149),.zext_ln9296_cast_cast(zext_ln9296_cast_cast_reg_154),.v7302_1_address0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v7302_1_address0),.v7302_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v7302_1_ce0),.v7302_1_q0(v7302_1_q0),.v7302_address0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v7302_address0),.v7302_ce0(grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v7302_ce0),.v7302_q0(v7302_q0),.zext_ln9296_4_cast_cast(zext_ln9296_4_cast_cast_reg_159));
forward_urem_5ns_3ns_2_9_seq_1 #(.ID( 1 ),.NUM_STAGE( 9 ),.din0_WIDTH( 5 ),.din1_WIDTH( 3 ),.dout_WIDTH( 2 ))
urem_5ns_3ns_2_9_seq_1_U2987(.clk(ap_clk),.reset(ap_rst),.start(grp_fu_87_ap_start),.done(grp_fu_87_ap_done),.din0(grp_fu_87_p0),.din1(grp_fu_87_p1),.ce(grp_fu_87_ce),.dout(grp_fu_87_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_107_reg_144 <= empty_107_fu_101_p1;
        tmp_reg_139 <= p_read[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        mul_i_reg_149[6 : 5] <= mul_i_fu_109_p3[6 : 5];
        zext_ln9296_4_cast_cast_reg_159[1 : 0] <= zext_ln9296_4_cast_cast_fu_126_p3[1 : 0];
zext_ln9296_4_cast_cast_reg_159[3] <= zext_ln9296_4_cast_cast_fu_126_p3[3];
        zext_ln9296_cast_cast_reg_154[1 : 0] <= zext_ln9296_cast_cast_fu_118_p3[1 : 0];
zext_ln9296_cast_cast_reg_154[3] <= zext_ln9296_cast_cast_fu_118_p3[3];
    end
end
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_done == 1'b0)) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        grp_fu_87_ap_start = 1'b1;
    end else begin
        grp_fu_87_ap_start = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_87_ce = 1'b0;
    end else begin
        grp_fu_87_ce = 1'b1;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end
assign empty_107_fu_101_p1 = p_read[0:0];
assign empty_fu_105_p1 = grp_fu_87_p2[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_start = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_ap_start_reg;
assign grp_fu_87_p0 = {{p_read[6:2]}};
assign grp_fu_87_p1 = 5'd3;
assign mul_i_fu_109_p3 = {{empty_fu_105_p1}, {5'd0}};
assign v7302_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v7302_1_address0;
assign v7302_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v7302_1_ce0;
assign v7302_address0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v7302_address0;
assign v7302_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v7302_ce0;
assign v9015_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_0_address0;
assign v9015_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_0_ce0;
assign v9015_0_d0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_0_d0;
assign v9015_0_we0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_0_we0;
assign v9015_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_1_address0;
assign v9015_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_1_ce0;
assign v9015_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_1_d0;
assign v9015_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_Pipeline_VITIS_s_fu_62_v9015_1_we0;
assign zext_ln9296_4_cast_cast_fu_126_p3 = ((empty_107_reg_144[0:0] == 1'b1) ? 4'd11 : 4'd0);
assign zext_ln9296_cast_cast_fu_118_p3 = ((tmp_reg_139[0:0] == 1'b1) ? 4'd11 : 4'd0);
always @ (posedge ap_clk) begin
    mul_i_reg_149[4:0] <= 5'b00000;
    zext_ln9296_cast_cast_reg_154[2] <= 1'b0;
    zext_ln9296_4_cast_cast_reg_159[2] <= 1'b0;
end
endmodule 