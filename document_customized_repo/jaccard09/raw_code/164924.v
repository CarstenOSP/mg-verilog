module forward_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v7951,v9199_address0,v9199_ce0,v9199_q0,v7953_address0,v7953_ce0,v7953_we0,v7953_d0,ap_return); 
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [5:0] v7951;
output  [19:0] v9199_address0;
output   v9199_ce0;
input  [7:0] v9199_q0;
output  [13:0] v7953_address0;
output   v7953_ce0;
output   v7953_we0;
output  [7:0] v7953_d0;
output  [5:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire   [12:0] sub_ln12466_fu_75_p2;
reg   [12:0] sub_ln12466_reg_86;
wire    grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_ready;
wire   [19:0] grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_v9199_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_v9199_ce0;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_v7953_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_v7953_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_v7953_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_v7953_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_start_reg;
reg    ap_block_state1_ignore_call8;
wire    ap_CS_fsm_state2;
wire   [9:0] tmp_fu_63_p3;
wire   [12:0] p_shl_fu_55_p3;
wire   [12:0] zext_ln12466_fu_71_p1;
reg   [5:0] ap_return_preg;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_start_reg = 1'b0;
#0 ap_return_preg = 6'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_ready),.mul_ln12466_i(sub_ln12466_reg_86),.v9199_address0(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_v9199_address0),.v9199_ce0(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_v9199_ce0),.v9199_q0(v9199_q0),.v7953_address0(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_v7953_address0),.v7953_ce0(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_v7953_ce0),.v7953_we0(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_v7953_we0),.v7953_d0(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_v7953_d0));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 6'd0;
    end else begin
        if (((grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_return_preg <= v7951;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call8) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        sub_ln12466_reg_86[12 : 4] <= sub_ln12466_fu_75_p2[12 : 4];
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_return = v7951;
    end else begin
        ap_return = ap_return_preg;
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    ap_block_state1_ignore_call8 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_start = grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_ap_start_reg;
assign p_shl_fu_55_p3 = {{v7951}, {7'd0}};
assign sub_ln12466_fu_75_p2 = (p_shl_fu_55_p3 - zext_ln12466_fu_71_p1);
assign tmp_fu_63_p3 = {{v7951}, {4'd0}};
assign v7953_address0 = grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_v7953_address0;
assign v7953_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_v7953_ce0;
assign v7953_d0 = grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_v7953_d0;
assign v7953_we0 = grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_v7953_we0;
assign v9199_address0 = grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_v9199_address0;
assign v9199_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12462_1_proc15445_Pipeline_V_fu_46_v9199_ce0;
assign zext_ln12466_fu_71_p1 = tmp_fu_63_p3;
always @ (posedge ap_clk) begin
    sub_ln12466_reg_86[3:0] <= 4'b0000;
end
endmodule 