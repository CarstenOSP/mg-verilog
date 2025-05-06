
module forward_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,p_read,v3748_i_address0,v3748_i_ce0,v3748_i_we0,v3748_i_d0,v3748_1_i_address0,v3748_1_i_ce0,v3748_1_i_we0,v3748_1_i_d0,v3753_i_address0,v3753_i_ce0,v3753_i_we0,v3753_i_d0,v3753_i_address1,v3753_i_ce1,v3753_i_q1,v3753_1_i_address0,v3753_1_i_ce0,v3753_1_i_we0,v3753_1_i_d0,v3753_1_i_address1,v3753_1_i_ce1,v3753_1_i_q1,v3751_1_i_address0,v3751_1_i_ce0,v3751_1_i_q0,v3751_i_address0,v3751_i_ce0,v3751_i_q0,v3752_i_address0,v3752_i_ce0,v3752_i_q0,v3750_1_i_address0,v3750_1_i_ce0,v3750_1_i_q0,v3750_i_address0,v3750_i_ce0,v3750_i_q0,v3749_1_i_address0,v3749_1_i_ce0,v3749_1_i_q0,v3749_i_address0,v3749_i_ce0,v3749_i_q0,ap_return_0,ap_return_1);  
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [6:0] p_read;
output  [9:0] v3748_i_address0;
output   v3748_i_ce0;
output   v3748_i_we0;
output  [7:0] v3748_i_d0;
output  [9:0] v3748_1_i_address0;
output   v3748_1_i_ce0;
output   v3748_1_i_we0;
output  [7:0] v3748_1_i_d0;
output  [9:0] v3753_i_address0;
output   v3753_i_ce0;
output   v3753_i_we0;
output  [7:0] v3753_i_d0;
output  [9:0] v3753_i_address1;
output   v3753_i_ce1;
input  [7:0] v3753_i_q1;
output  [9:0] v3753_1_i_address0;
output   v3753_1_i_ce0;
output   v3753_1_i_we0;
output  [7:0] v3753_1_i_d0;
output  [9:0] v3753_1_i_address1;
output   v3753_1_i_ce1;
input  [7:0] v3753_1_i_q1;
output  [8:0] v3751_1_i_address0;
output   v3751_1_i_ce0;
input  [7:0] v3751_1_i_q0;
output  [8:0] v3751_i_address0;
output   v3751_i_ce0;
input  [7:0] v3751_i_q0;
output  [10:0] v3752_i_address0;
output   v3752_i_ce0;
input  [7:0] v3752_i_q0;
output  [9:0] v3750_1_i_address0;
output   v3750_1_i_ce0;
input  [7:0] v3750_1_i_q0;
output  [9:0] v3750_i_address0;
output   v3750_i_ce0;
input  [7:0] v3750_i_q0;
output  [9:0] v3749_1_i_address0;
output   v3749_1_i_ce0;
input  [7:0] v3749_1_i_q0;
output  [9:0] v3749_i_address0;
output   v3749_i_ce0;
input  [7:0] v3749_i_q0;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] ap_return_0;
reg[7:0] ap_return_1;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire   [7:0] mul_i63_i_i_fu_105_p2;
reg   [7:0] mul_i63_i_i_reg_132;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_start;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_done;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_idle;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_ready;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3751_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3751_1_i_ce0;
wire   [8:0] grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3751_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3751_i_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_i_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_i_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_1_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_1_i_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_1_i_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_i_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_i_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_i_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_i_ce1;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_1_i_ce0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_1_i_we0;
wire   [7:0] grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_1_i_d0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_1_i_address1;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_1_i_ce1;
wire   [10:0] grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3752_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3752_i_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3750_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3750_1_i_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3750_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3750_i_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3749_1_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3749_1_i_ce0;
wire   [9:0] grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3749_i_address0;
wire    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3749_i_ce0;
reg    grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_start_reg;
reg    ap_block_state1_ignore_call17;
wire    ap_CS_fsm_state2;
wire   [1:0] tmp_fu_83_p4;
wire   [6:0] tmp_234_fu_93_p3;
wire   [7:0] p_shl_fu_101_p1;
wire   [7:0] p_read_cast_fu_112_p1;
reg   [7:0] ap_return_0_preg;
reg   [7:0] ap_return_1_preg;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_start_reg = 1'b0;
#0 ap_return_0_preg = 8'd0;
#0 ap_return_1_preg = 8'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_start),.ap_done(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_done),.ap_idle(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_idle),.ap_ready(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_ready),.mul_i63_i_i(mul_i63_i_i_reg_132),.v3751_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3751_1_i_address0),.v3751_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3751_1_i_ce0),.v3751_1_i_q0(v3751_1_i_q0),.v3751_i_address0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3751_i_address0),.v3751_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3751_i_ce0),.v3751_i_q0(v3751_i_q0),.v3748_i_address0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_i_address0),.v3748_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_i_ce0),.v3748_i_we0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_i_we0),.v3748_i_d0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_i_d0),.v3748_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_1_i_address0),.v3748_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_1_i_ce0),.v3748_1_i_we0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_1_i_we0),.v3748_1_i_d0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_1_i_d0),.v3753_i_address0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_i_address0),.v3753_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_i_ce0),.v3753_i_we0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_i_we0),.v3753_i_d0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_i_d0),.v3753_i_address1(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_i_address1),.v3753_i_ce1(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_i_ce1),.v3753_i_q1(v3753_i_q1),.v3753_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_1_i_address0),.v3753_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_1_i_ce0),.v3753_1_i_we0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_1_i_we0),.v3753_1_i_d0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_1_i_d0),.v3753_1_i_address1(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_1_i_address1),.v3753_1_i_ce1(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_1_i_ce1),.v3753_1_i_q1(v3753_1_i_q1),.v3752_i_address0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3752_i_address0),.v3752_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3752_i_ce0),.v3752_i_q0(v3752_i_q0),.v3750_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3750_1_i_address0),.v3750_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3750_1_i_ce0),.v3750_1_i_q0(v3750_1_i_q0),.v3750_i_address0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3750_i_address0),.v3750_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3750_i_ce0),.v3750_i_q0(v3750_i_q0),.v3749_1_i_address0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3749_1_i_address0),.v3749_1_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3749_1_i_ce0),.v3749_1_i_q0(v3749_1_i_q0),.v3749_i_address0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3749_i_address0),.v3749_i_ce0(grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3749_i_ce0),.v3749_i_q0(v3749_i_q0));
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
        end else if (((1'b1 == ap_CS_fsm_state2) & (grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
                ap_return_0_preg[0] <= 1'b0;
        ap_return_0_preg[1] <= 1'b0;
        ap_return_0_preg[2] <= 1'b0;
        ap_return_0_preg[3] <= 1'b0;
        ap_return_0_preg[4] <= 1'b0;
        ap_return_0_preg[5] <= 1'b0;
        ap_return_0_preg[6] <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_done == 1'b1))) begin
                        ap_return_0_preg[6 : 0] <= p_read_cast_fu_112_p1[6 : 0];
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
                ap_return_1_preg[0] <= 1'b0;
        ap_return_1_preg[1] <= 1'b0;
        ap_return_1_preg[2] <= 1'b0;
        ap_return_1_preg[3] <= 1'b0;
        ap_return_1_preg[4] <= 1'b0;
        ap_return_1_preg[5] <= 1'b0;
        ap_return_1_preg[6] <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_done == 1'b1))) begin
                        ap_return_1_preg[6 : 0] <= p_read_cast_fu_112_p1[6 : 0];
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_ignore_call17))) begin
            grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_ready == 1'b1)) begin
            grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        mul_i63_i_i_reg_132[7 : 5] <= mul_i63_i_i_fu_105_p2[7 : 5];
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
    if ((grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_done == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_done == 1'b1))) begin
        ap_return_0 = p_read_cast_fu_112_p1;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_done == 1'b1))) begin
        ap_return_1 = p_read_cast_fu_112_p1;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_done == 1'b1))) begin
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
    ap_block_state1_ignore_call17 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_start = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_ap_start_reg;
assign mul_i63_i_i_fu_105_p2 = (8'd0 - p_shl_fu_101_p1);
assign p_read_cast_fu_112_p1 = p_read;
assign p_shl_fu_101_p1 = tmp_234_fu_93_p3;
assign tmp_234_fu_93_p3 = {{tmp_fu_83_p4}, {5'd0}};
assign tmp_fu_83_p4 = {{p_read[6:5]}};
assign v3748_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_1_i_address0;
assign v3748_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_1_i_ce0;
assign v3748_1_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_1_i_d0;
assign v3748_1_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_1_i_we0;
assign v3748_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_i_address0;
assign v3748_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_i_ce0;
assign v3748_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_i_d0;
assign v3748_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3748_i_we0;
assign v3749_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3749_1_i_address0;
assign v3749_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3749_1_i_ce0;
assign v3749_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3749_i_address0;
assign v3749_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3749_i_ce0;
assign v3750_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3750_1_i_address0;
assign v3750_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3750_1_i_ce0;
assign v3750_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3750_i_address0;
assign v3750_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3750_i_ce0;
assign v3751_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3751_1_i_address0;
assign v3751_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3751_1_i_ce0;
assign v3751_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3751_i_address0;
assign v3751_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3751_i_ce0;
assign v3752_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3752_i_address0;
assign v3752_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3752_i_ce0;
assign v3753_1_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_1_i_address0;
assign v3753_1_i_address1 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_1_i_address1;
assign v3753_1_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_1_i_ce0;
assign v3753_1_i_ce1 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_1_i_ce1;
assign v3753_1_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_1_i_d0;
assign v3753_1_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_1_i_we0;
assign v3753_i_address0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_i_address0;
assign v3753_i_address1 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_i_address1;
assign v3753_i_ce0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_i_ce0;
assign v3753_i_ce1 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_i_ce1;
assign v3753_i_d0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_i_d0;
assign v3753_i_we0 = grp_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_Pipeline_VITIS_fu_56_v3753_i_we0;
always @ (posedge ap_clk) begin
    mul_i63_i_i_reg_132[4:0] <= 5'b00000;
    ap_return_0_preg[7] <= 1'b0;
    ap_return_1_preg[7] <= 1'b0;
end
endmodule 
