
module forward_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v57_address0,v57_ce0,v57_we0,v57_d0,v57_1_address0,v57_1_ce0,v57_1_we0,v57_1_d0,v52_0,v16220_0_address0,v16220_0_ce0,v16220_0_q0,v16220_1_address0,v16220_1_ce0,v16220_1_q0,ap_return);  
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
output  [3:0] v57_address0;
output   v57_ce0;
output   v57_we0;
output  [7:0] v57_d0;
output  [3:0] v57_1_address0;
output   v57_1_ce0;
output   v57_1_we0;
output  [7:0] v57_1_d0;
input  [11:0] v52_0;
output  [9:0] v16220_0_address0;
output   v16220_0_ce0;
input  [7:0] v16220_0_q0;
output  [9:0] v16220_1_address0;
output   v16220_1_ce0;
input  [7:0] v16220_1_q0;
output  [11:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[11:0] ap_return;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [5:0] tmp_reg_112;
wire   [10:0] mul_i_fu_92_p3;
reg   [10:0] mul_i_reg_118;
wire    ap_CS_fsm_state2;
wire   [9:0] tmp_s_fu_100_p3;
reg   [9:0] tmp_s_reg_123;
wire    grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_ready;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v16220_0_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v16220_0_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v16220_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v16220_1_ce0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_1_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_1_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_1_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_1_d0;
wire   [3:0] grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_d0;
reg    grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_start_reg;
wire    ap_CS_fsm_state3;
wire   [11:0] mul_ln150_fu_76_p0;
wire   [13:0] mul_ln150_fu_76_p1;
wire   [24:0] mul_ln150_fu_76_p2;
reg   [11:0] ap_return_preg;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire   [24:0] mul_ln150_fu_76_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_start_reg = 1'b0;
#0 ap_return_preg = 12'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_ready),.mul_i(mul_i_reg_118),.tmp_439(tmp_s_reg_123),.v16220_0_address0(grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v16220_0_address0),.v16220_0_ce0(grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v16220_0_ce0),.v16220_0_q0(v16220_0_q0),.v16220_1_address0(grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v16220_1_address0),.v16220_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v16220_1_ce0),.v16220_1_q0(v16220_1_q0),.v57_1_address0(grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_1_address0),.v57_1_ce0(grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_1_ce0),.v57_1_we0(grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_1_we0),.v57_1_d0(grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_1_d0),.v57_address0(grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_address0),.v57_ce0(grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_ce0),.v57_we0(grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_we0),.v57_d0(grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_d0));
forward_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U17032(.din0(mul_ln150_fu_76_p0),.din1(mul_ln150_fu_76_p1),.dout(mul_ln150_fu_76_p2));
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
        end else if (((grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 12'd0;
    end else begin
        if (((grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_return_preg <= v52_0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_i_reg_118[10 : 5] <= mul_i_fu_92_p3[10 : 5];
        tmp_s_reg_123[9 : 4] <= tmp_s_fu_100_p3[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_reg_112 <= {{mul_ln150_fu_76_p2[23:18]}};
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
    if (((grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_return = v52_0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_start = grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_ap_start_reg;
assign mul_i_fu_92_p3 = {{tmp_reg_112}, {5'd0}};
assign mul_ln150_fu_76_p0 = mul_ln150_fu_76_p00;
assign mul_ln150_fu_76_p00 = v52_0;
assign mul_ln150_fu_76_p1 = 25'd6554;
assign tmp_s_fu_100_p3 = {{tmp_reg_112}, {4'd0}};
assign v16220_0_address0 = grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v16220_0_address0;
assign v16220_0_ce0 = grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v16220_0_ce0;
assign v16220_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v16220_1_address0;
assign v16220_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v16220_1_ce0;
assign v57_1_address0 = grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_1_address0;
assign v57_1_ce0 = grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_1_ce0;
assign v57_1_d0 = grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_1_d0;
assign v57_1_we0 = grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_1_we0;
assign v57_address0 = grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_address0;
assign v57_ce0 = grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_ce0;
assign v57_d0 = grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_d0;
assign v57_we0 = grp_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP_fu_58_v57_we0;
always @ (posedge ap_clk) begin
    mul_i_reg_118[4:0] <= 5'b00000;
    tmp_s_reg_123[3:0] <= 4'b0000;
end
endmodule 
