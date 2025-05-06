
module forward_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v8474_address0,v8474_ce0,v8474_we0,v8474_d0,v8474_1_address0,v8474_1_ce0,v8474_1_we0,v8474_1_d0,v8468,v13719_0_address0,v13719_0_ce0,v13719_0_q0,v13719_1_address0,v13719_1_ce0,v13719_1_q0);  
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [11:0] v8474_address0;
output   v8474_ce0;
output   v8474_we0;
output  [7:0] v8474_d0;
output  [11:0] v8474_1_address0;
output   v8474_1_ce0;
output   v8474_1_we0;
output  [7:0] v8474_1_d0;
input  [4:0] v8468;
output  [16:0] v13719_0_address0;
output   v13719_0_ce0;
input  [7:0] v13719_0_q0;
output  [16:0] v13719_1_address0;
output   v13719_1_ce0;
input  [7:0] v13719_1_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] mul_i37_i_i_fu_92_p3;
reg   [6:0] mul_i37_i_i_reg_144;
reg    ap_block_state1;
wire   [5:0] mul9_i66_i_i_cast_fu_111_p4;
reg   [5:0] mul9_i66_i_i_cast_reg_149;
wire   [2:0] zext_ln10761_cast_cast_i_fu_126_p3;
reg   [2:0] zext_ln10761_cast_cast_i_reg_154;
wire   [1:0] p_udiv2_i_cast_cast_i_fu_135_p3;
reg   [1:0] p_udiv2_i_cast_cast_i_reg_159;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_ready;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_d0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_1_d0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v13719_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v13719_0_ce0;
wire   [16:0] grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v13719_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v13719_1_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_start_reg;
reg    ap_block_state1_ignore_call14;
wire    ap_CS_fsm_state2;
wire   [1:0] tmp_i_fu_82_p4;
wire   [1:0] tmp_fu_101_p4;
wire   [0:0] empty_fu_122_p1;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_ready),.mul_i37_i_i(mul_i37_i_i_reg_144),.mul9_i66_i_i(mul9_i66_i_i_cast_reg_149),.v8474_address0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_address0),.v8474_ce0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_ce0),.v8474_we0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_we0),.v8474_d0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_d0),.v8474_1_address0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_1_address0),.v8474_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_1_ce0),.v8474_1_we0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_1_we0),.v8474_1_d0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_1_d0),.zext_ln10761_cast_cast_i(zext_ln10761_cast_cast_i_reg_154),.p_udiv2_i_cast_cast_i(p_udiv2_i_cast_cast_i_reg_159),.v13719_0_address0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v13719_0_address0),.v13719_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v13719_0_ce0),.v13719_0_q0(v13719_0_q0),.v13719_1_address0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v13719_1_address0),.v13719_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v13719_1_ce0),.v13719_1_q0(v13719_1_q0));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call14) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        mul9_i66_i_i_cast_reg_149[5 : 2] <= mul9_i66_i_i_cast_fu_111_p4[5 : 2];
        mul_i37_i_i_reg_144[6 : 5] <= mul_i37_i_i_fu_92_p3[6 : 5];
        p_udiv2_i_cast_cast_i_reg_159[1] <= p_udiv2_i_cast_cast_i_fu_135_p3[1];
        zext_ln10761_cast_cast_i_reg_154[2] <= zext_ln10761_cast_cast_i_fu_126_p3[2];
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
always @ (*) begin
    ap_block_state1_ignore_call14 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign empty_fu_122_p1 = v8468[0:0];
assign grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_start = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_ap_start_reg;
assign mul9_i66_i_i_cast_fu_111_p4 = {{{tmp_fu_101_p4}, {tmp_fu_101_p4}}, {2'd0}};
assign mul_i37_i_i_fu_92_p3 = {{tmp_i_fu_82_p4}, {5'd0}};
assign p_udiv2_i_cast_cast_i_fu_135_p3 = ((empty_fu_122_p1[0:0] == 1'b1) ? 2'd2 : 2'd0);
assign tmp_fu_101_p4 = {{v8468[2:1]}};
assign tmp_i_fu_82_p4 = {{v8468[4:3]}};
assign v13719_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v13719_0_address0;
assign v13719_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v13719_0_ce0;
assign v13719_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v13719_1_address0;
assign v13719_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v13719_1_ce0;
assign v8474_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_1_address0;
assign v8474_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_1_ce0;
assign v8474_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_1_d0;
assign v8474_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_1_we0;
assign v8474_address0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_address0;
assign v8474_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_ce0;
assign v8474_d0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_d0;
assign v8474_we0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_Pipeline_V_fu_66_v8474_we0;
assign zext_ln10761_cast_cast_i_fu_126_p3 = ((empty_fu_122_p1[0:0] == 1'b1) ? 3'd4 : 3'd0);
always @ (posedge ap_clk) begin
    mul_i37_i_i_reg_144[4:0] <= 5'b00000;
    mul9_i66_i_i_cast_reg_149[1:0] <= 2'b00;
    zext_ln10761_cast_cast_i_reg_154[1:0] <= 2'b00;
    p_udiv2_i_cast_cast_i_reg_159[0] <= 1'b0;
end
endmodule 
