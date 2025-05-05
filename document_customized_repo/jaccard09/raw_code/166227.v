module forward_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v8475_address0,v8475_ce0,v8475_we0,v8475_d0,v8475_1_address0,v8475_1_ce0,v8475_1_we0,v8475_1_d0,v8468,v13717_0_address0,v13717_0_ce0,v13717_0_q0,v13717_1_address0,v13717_1_ce0,v13717_1_q0,v13717_2_address0,v13717_2_ce0,v13717_2_q0,v13717_3_address0,v13717_3_ce0,v13717_3_q0,ap_return); 
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [11:0] v8475_address0;
output   v8475_ce0;
output   v8475_we0;
output  [7:0] v8475_d0;
output  [11:0] v8475_1_address0;
output   v8475_1_ce0;
output   v8475_1_we0;
output  [7:0] v8475_1_d0;
input  [6:0] v8468;
output  [17:0] v13717_0_address0;
output   v13717_0_ce0;
input  [7:0] v13717_0_q0;
output  [17:0] v13717_1_address0;
output   v13717_1_ce0;
input  [7:0] v13717_1_q0;
output  [17:0] v13717_2_address0;
output   v13717_2_ce0;
input  [7:0] v13717_2_q0;
output  [17:0] v13717_3_address0;
output   v13717_3_ce0;
input  [7:0] v13717_3_q0;
output  [4:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] empty_fu_103_p1;
reg   [4:0] empty_reg_196;
reg    ap_block_state1;
wire   [6:0] mul_i37_i_i_fu_117_p3;
reg   [6:0] mul_i37_i_i_reg_200;
wire   [6:0] tmp_495_i_fu_144_p5;
reg   [6:0] tmp_495_i_reg_205;
wire   [1:0] thr_add_udiv_cast_i_cast_cast_i_fu_161_p3;
reg   [1:0] thr_add_udiv_cast_i_cast_cast_i_reg_210;
wire   [0:0] tmp_589_fu_170_p3;
reg   [0:0] tmp_589_reg_215;
wire   [3:0] thr_add1_i_i_fu_187_p3;
reg   [3:0] thr_add1_i_i_reg_220;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_ready;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_d0;
wire   [11:0] grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_1_d0;
wire   [17:0] grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_0_ce0;
wire   [17:0] grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_1_ce0;
wire   [17:0] grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_2_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_2_ce0;
wire   [17:0] grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_3_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_3_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_start_reg;
reg    ap_block_state1_ignore_call23;
wire    ap_CS_fsm_state2;
wire   [1:0] tmp_i_fu_107_p4;
wire   [7:0] v8468_cast2_fu_99_p1;
wire   [1:0] tmp_fu_126_p4;
wire   [0:0] tmp_588_fu_136_p3;
wire   [0:0] empty_430_fu_157_p1;
wire   [2:0] empty_431_fu_179_p3;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_ready),.mul_i37_i_i(mul_i37_i_i_reg_200),.zext_ln10789_i(tmp_495_i_reg_205),.v8475_address0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_address0),.v8475_ce0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_ce0),.v8475_we0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_we0),.v8475_d0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_d0),.v8475_1_address0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_1_address0),.v8475_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_1_ce0),.v8475_1_we0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_1_we0),.v8475_1_d0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_1_d0),.thr_add_udiv_cast_i_cast_cast_i(thr_add_udiv_cast_i_cast_cast_i_reg_210),.v13717_0_address0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_0_address0),.v13717_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_0_ce0),.v13717_0_q0(v13717_0_q0),.v13717_1_address0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_1_address0),.v13717_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_1_ce0),.v13717_1_q0(v13717_1_q0),.empty(tmp_589_reg_215),.thr_add1_cast9_cast_i_cast_cast_i(thr_add1_i_i_reg_220),.v13717_2_address0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_2_address0),.v13717_2_ce0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_2_ce0),.v13717_2_q0(v13717_2_q0),.v13717_3_address0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_3_address0),.v13717_3_ce0(grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_3_ce0),.v13717_3_q0(v13717_3_q0));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call23) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_reg_196 <= empty_fu_103_p1;
        mul_i37_i_i_reg_200[6 : 5] <= mul_i37_i_i_fu_117_p3[6 : 5];
        thr_add1_i_i_reg_220[0] <= thr_add1_i_i_fu_187_p3[0];
thr_add1_i_i_reg_220[3] <= thr_add1_i_i_fu_187_p3[3];
        thr_add_udiv_cast_i_cast_cast_i_reg_210[1] <= thr_add_udiv_cast_i_cast_cast_i_fu_161_p3[1];
        tmp_495_i_reg_205[0] <= tmp_495_i_fu_144_p5[0];
tmp_495_i_reg_205[6 : 3] <= tmp_495_i_fu_144_p5[6 : 3];
        tmp_589_reg_215 <= v8468_cast2_fu_99_p1[32'd5];
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    ap_block_state1_ignore_call23 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign ap_return = empty_reg_196;
assign empty_430_fu_157_p1 = v8468[0:0];
assign empty_431_fu_179_p3 = ((empty_430_fu_157_p1[0:0] == 1'b1) ? 3'd4 : 3'd0);
assign empty_fu_103_p1 = v8468[4:0];
assign grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_start = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_ap_start_reg;
assign mul_i37_i_i_fu_117_p3 = {{tmp_i_fu_107_p4}, {5'd0}};
assign thr_add1_i_i_fu_187_p3 = {{empty_431_fu_179_p3}, {tmp_589_fu_170_p3}};
assign thr_add_udiv_cast_i_cast_cast_i_fu_161_p3 = ((empty_430_fu_157_p1[0:0] == 1'b1) ? 2'd2 : 2'd0);
assign tmp_495_i_fu_144_p5 = {{{{tmp_fu_126_p4}, {tmp_fu_126_p4}}, {2'd0}}, {tmp_588_fu_136_p3}};
assign tmp_588_fu_136_p3 = v8468_cast2_fu_99_p1[32'd6];
assign tmp_589_fu_170_p3 = v8468_cast2_fu_99_p1[32'd5];
assign tmp_fu_126_p4 = {{v8468[2:1]}};
assign tmp_i_fu_107_p4 = {{v8468[4:3]}};
assign v13717_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_0_address0;
assign v13717_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_0_ce0;
assign v13717_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_1_address0;
assign v13717_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_1_ce0;
assign v13717_2_address0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_2_address0;
assign v13717_2_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_2_ce0;
assign v13717_3_address0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_3_address0;
assign v13717_3_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v13717_3_ce0;
assign v8468_cast2_fu_99_p1 = v8468;
assign v8475_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_1_address0;
assign v8475_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_1_ce0;
assign v8475_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_1_d0;
assign v8475_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_1_we0;
assign v8475_address0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_address0;
assign v8475_ce0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_ce0;
assign v8475_d0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_d0;
assign v8475_we0 = grp_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_Pipeline_V_fu_78_v8475_we0;
always @ (posedge ap_clk) begin
    mul_i37_i_i_reg_200[4:0] <= 5'b00000;
    tmp_495_i_reg_205[2:1] <= 2'b00;
    thr_add_udiv_cast_i_cast_cast_i_reg_210[0] <= 1'b0;
    thr_add1_i_i_reg_220[2:1] <= 2'b00;
end
endmodule 