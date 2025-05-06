
module forward_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v16168_1_address0,v16168_1_ce0,v16168_1_we0,v16168_1_d0,v16168_0_address0,v16168_0_ce0,v16168_0_we0,v16168_0_d0,p_read,v14383_1_i_address0,v14383_1_i_ce0,v14383_1_i_q0,v14383_i_address0,v14383_i_ce0,v14383_i_q0);  
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [17:0] v16168_1_address0;
output   v16168_1_ce0;
output   v16168_1_we0;
output  [7:0] v16168_1_d0;
output  [17:0] v16168_0_address0;
output   v16168_0_ce0;
output   v16168_0_we0;
output  [7:0] v16168_0_d0;
input  [4:0] p_read;
output  [12:0] v14383_1_i_address0;
output   v14383_1_i_ce0;
input  [7:0] v14383_1_i_q0;
output  [12:0] v14383_i_address0;
output   v14383_i_ce0;
input  [7:0] v14383_i_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] and_ln_fu_94_p3;
reg   [4:0] and_ln_reg_182;
reg    ap_block_state1;
wire   [6:0] mul9_i66_i_fu_133_p2;
reg   [6:0] mul9_i66_i_reg_187;
wire   [6:0] mul13_i_i_fu_164_p2;
reg   [6:0] mul13_i_i_reg_192;
reg   [5:0] trunc_ln_reg_197;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_ready;
wire   [17:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_0_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_0_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_0_d0;
wire   [17:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_1_d0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v14383_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v14383_1_i_ce0;
wire   [12:0] grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v14383_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v14383_i_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_start_reg;
reg    ap_block_state1_ignore_call20;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_fu_86_p3;
wire   [1:0] tmp_259_fu_103_p4;
wire   [3:0] tmp_260_fu_121_p3;
wire   [6:0] p_shl43_fu_113_p3;
wire   [6:0] p_shl44_fu_129_p1;
wire   [1:0] empty_fu_140_p1;
wire   [3:0] tmp_261_fu_152_p3;
wire   [6:0] p_shl_fu_144_p3;
wire   [6:0] p_shl42_fu_160_p1;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_ready),.v16168_0_address0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_0_address0),.v16168_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_0_ce0),.v16168_0_we0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_0_we0),.v16168_0_d0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_0_d0),.v16168_1_address0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_1_address0),.v16168_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_1_ce0),.v16168_1_we0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_1_we0),.v16168_1_d0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_1_d0),.and_ln(and_ln_reg_182),.mul9_i66_i(mul9_i66_i_reg_187),.v14383_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v14383_1_i_address0),.v14383_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v14383_1_i_ce0),.v14383_1_i_q0(v14383_1_i_q0),.v14383_i_address0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v14383_i_address0),.v14383_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v14383_i_ce0),.v14383_i_q0(v14383_i_q0),.mul13_i_i(mul13_i_i_reg_192),.trunc_ln(trunc_ln_reg_197));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call20) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        and_ln_reg_182[4] <= and_ln_fu_94_p3[4];
        mul13_i_i_reg_192[6 : 2] <= mul13_i_i_fu_164_p2[6 : 2];
        mul9_i66_i_reg_187[6 : 2] <= mul9_i66_i_fu_133_p2[6 : 2];
        trunc_ln_reg_197 <= {{mul13_i_i_fu_164_p2[6:1]}};
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign and_ln_fu_94_p3 = {{tmp_fu_86_p3}, {4'd0}};
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
always @ (*) begin
    ap_block_state1_ignore_call20 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign empty_fu_140_p1 = p_read[1:0];
assign grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_start = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_ap_start_reg;
assign mul13_i_i_fu_164_p2 = (p_shl_fu_144_p3 - p_shl42_fu_160_p1);
assign mul9_i66_i_fu_133_p2 = (p_shl43_fu_113_p3 - p_shl44_fu_129_p1);
assign p_shl42_fu_160_p1 = tmp_261_fu_152_p3;
assign p_shl43_fu_113_p3 = {{tmp_259_fu_103_p4}, {5'd0}};
assign p_shl44_fu_129_p1 = tmp_260_fu_121_p3;
assign p_shl_fu_144_p3 = {{empty_fu_140_p1}, {5'd0}};
assign tmp_259_fu_103_p4 = {{p_read[3:2]}};
assign tmp_260_fu_121_p3 = {{tmp_259_fu_103_p4}, {2'd0}};
assign tmp_261_fu_152_p3 = {{empty_fu_140_p1}, {2'd0}};
assign tmp_fu_86_p3 = p_read[32'd4];
assign v14383_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v14383_1_i_address0;
assign v14383_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v14383_1_i_ce0;
assign v14383_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v14383_i_address0;
assign v14383_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v14383_i_ce0;
assign v16168_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_0_address0;
assign v16168_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_0_ce0;
assign v16168_0_d0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_0_d0;
assign v16168_0_we0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_0_we0;
assign v16168_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_1_address0;
assign v16168_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_1_ce0;
assign v16168_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_1_d0;
assign v16168_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_18619_1_Loop_VITIS_LOOP_18506_1_proc12447_Pipeline_V_fu_70_v16168_1_we0;
always @ (posedge ap_clk) begin
    and_ln_reg_182[3:0] <= 4'b0000;
    mul9_i66_i_reg_187[1:0] <= 2'b00;
    mul13_i_i_reg_192[1:0] <= 2'b00;
end
endmodule 
