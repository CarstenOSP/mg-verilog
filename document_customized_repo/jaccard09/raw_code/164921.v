module forward_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v7952_i_address0,v7952_i_ce0,v7952_i_q0,p_read,v9204_address0,v9204_ce0,v9204_we0,v9204_d0); 
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v7952_i_address0;
output   v7952_i_ce0;
input  [7:0] v7952_i_q0;
input  [5:0] p_read;
output  [19:0] v9204_address0;
output   v9204_ce0;
output   v9204_we0;
output  [7:0] v9204_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [12:0] mul_ln12251_fu_53_p2;
reg   [12:0] mul_ln12251_reg_59;
reg    ap_block_state1;
wire    grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_ready;
wire   [13:0] grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_v7952_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_v7952_i_ce0;
wire   [19:0] grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_v9204_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_v9204_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_v9204_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_v9204_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_start_reg;
reg   [2:0] ap_NS_fsm;
wire    ap_NS_fsm_state2;
wire    ap_CS_fsm_state3;
wire   [5:0] mul_ln12251_fu_53_p0;
wire   [7:0] mul_ln12251_fu_53_p1;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire   [12:0] mul_ln12251_fu_53_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_start_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_ready),.mul_ln12251(mul_ln12251_reg_59),.v7952_i_address0(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_v7952_i_address0),.v7952_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_v7952_i_ce0),.v7952_i_q0(v7952_i_q0),.v9204_address0(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_v9204_address0),.v9204_ce0(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_v9204_ce0),.v9204_we0(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_v9204_we0),.v9204_d0(grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_v9204_d0));
forward_mul_6ns_8ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 8 ),.dout_WIDTH( 13 ))
mul_6ns_8ns_13_1_1_U2872(.din0(mul_ln12251_fu_53_p0),.din1(mul_ln12251_fu_53_p1),.dout(mul_ln12251_fu_53_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_NS_fsm_state2) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        mul_ln12251_reg_59 <= mul_ln12251_fu_53_p2;
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
always @ (*) begin
    if ((grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_NS_fsm_state2 = ap_NS_fsm[32'd1];
always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_start = grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_ap_start_reg;
assign mul_ln12251_fu_53_p0 = mul_ln12251_fu_53_p00;
assign mul_ln12251_fu_53_p00 = p_read;
assign mul_ln12251_fu_53_p1 = 13'd114;
assign v7952_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_v7952_i_address0;
assign v7952_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_v7952_i_ce0;
assign v9204_address0 = grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_v9204_address0;
assign v9204_ce0 = grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_v9204_ce0;
assign v9204_d0 = grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_v9204_d0;
assign v9204_we0 = grp_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V_fu_40_v9204_we0;
endmodule 