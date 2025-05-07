module forward_dataflow_parent_loop_proc55 (v9021_1_address0,v9021_1_ce0,v9021_1_d0,v9021_1_q0,v9021_1_we0,v9021_1_address1,v9021_1_ce1,v9021_1_d1,v9021_1_q1,v9021_1_we1,v9021_0_address0,v9021_0_ce0,v9021_0_d0,v9021_0_q0,v9021_0_we0,v9021_0_address1,v9021_0_ce1,v9021_0_d1,v9021_0_q1,v9021_0_we1,v9022_0_address0,v9022_0_ce0,v9022_0_d0,v9022_0_q0,v9022_0_we0,v9022_0_address1,v9022_0_ce1,v9022_0_d1,v9022_0_q1,v9022_0_we1,v9022_1_address0,v9022_1_ce0,v9022_1_d0,v9022_1_q0,v9022_1_we0,v9022_1_address1,v9022_1_ce1,v9022_1_d1,v9022_1_q1,v9022_1_we1,v9020_0_address0,v9020_0_ce0,v9020_0_d0,v9020_0_q0,v9020_0_we0,v9020_0_address1,v9020_0_ce1,v9020_0_d1,v9020_0_q1,v9020_0_we1,v9020_1_address0,v9020_1_ce0,v9020_1_d0,v9020_1_q0,v9020_1_we0,v9020_1_address1,v9020_1_ce1,v9020_1_d1,v9020_1_q1,v9020_1_we1,v9020_2_address0,v9020_2_ce0,v9020_2_d0,v9020_2_q0,v9020_2_we0,v9020_2_address1,v9020_2_ce1,v9020_2_d1,v9020_2_q1,v9020_2_we1,v9020_3_address0,v9020_3_ce0,v9020_3_d0,v9020_3_q0,v9020_3_we0,v9020_3_address1,v9020_3_ce1,v9020_3_d1,v9020_3_q1,v9020_3_we1,ap_clk,ap_rst,ap_start,ap_done,ap_ready,ap_idle,ap_continue); 
output  [14:0] v9021_1_address0;
output   v9021_1_ce0;
output  [7:0] v9021_1_d0;
input  [7:0] v9021_1_q0;
output   v9021_1_we0;
output  [14:0] v9021_1_address1;
output   v9021_1_ce1;
output  [7:0] v9021_1_d1;
input  [7:0] v9021_1_q1;
output   v9021_1_we1;
output  [14:0] v9021_0_address0;
output   v9021_0_ce0;
output  [7:0] v9021_0_d0;
input  [7:0] v9021_0_q0;
output   v9021_0_we0;
output  [14:0] v9021_0_address1;
output   v9021_0_ce1;
output  [7:0] v9021_0_d1;
input  [7:0] v9021_0_q1;
output   v9021_0_we1;
output  [14:0] v9022_0_address0;
output   v9022_0_ce0;
output  [7:0] v9022_0_d0;
input  [7:0] v9022_0_q0;
output   v9022_0_we0;
output  [14:0] v9022_0_address1;
output   v9022_0_ce1;
output  [7:0] v9022_0_d1;
input  [7:0] v9022_0_q1;
output   v9022_0_we1;
output  [14:0] v9022_1_address0;
output   v9022_1_ce0;
output  [7:0] v9022_1_d0;
input  [7:0] v9022_1_q0;
output   v9022_1_we0;
output  [14:0] v9022_1_address1;
output   v9022_1_ce1;
output  [7:0] v9022_1_d1;
input  [7:0] v9022_1_q1;
output   v9022_1_we1;
output  [15:0] v9020_0_address0;
output   v9020_0_ce0;
output  [7:0] v9020_0_d0;
input  [7:0] v9020_0_q0;
output   v9020_0_we0;
output  [15:0] v9020_0_address1;
output   v9020_0_ce1;
output  [7:0] v9020_0_d1;
input  [7:0] v9020_0_q1;
output   v9020_0_we1;
output  [15:0] v9020_1_address0;
output   v9020_1_ce0;
output  [7:0] v9020_1_d0;
input  [7:0] v9020_1_q0;
output   v9020_1_we0;
output  [15:0] v9020_1_address1;
output   v9020_1_ce1;
output  [7:0] v9020_1_d1;
input  [7:0] v9020_1_q1;
output   v9020_1_we1;
output  [15:0] v9020_2_address0;
output   v9020_2_ce0;
output  [7:0] v9020_2_d0;
input  [7:0] v9020_2_q0;
output   v9020_2_we0;
output  [15:0] v9020_2_address1;
output   v9020_2_ce1;
output  [7:0] v9020_2_d1;
input  [7:0] v9020_2_q1;
output   v9020_2_we1;
output  [15:0] v9020_3_address0;
output   v9020_3_ce0;
output  [7:0] v9020_3_d0;
input  [7:0] v9020_3_q0;
output   v9020_3_we0;
output  [15:0] v9020_3_address1;
output   v9020_3_ce1;
output  [7:0] v9020_3_d1;
input  [7:0] v9020_3_q1;
output   v9020_3_we1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
reg ap_done;
reg ap_ready;
reg ap_idle;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_d0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_we0;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_address1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_d1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_we1;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_d0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_we0;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_address1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_d1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_we1;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_0_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_0_d0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_0_we0;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_0_address1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_0_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_0_d1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_0_we1;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_1_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_1_d0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_1_we0;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_1_address1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_1_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_1_d1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_1_we1;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_0_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_0_d0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_0_we0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_0_address1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_0_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_0_d1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_0_we1;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_1_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_1_d0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_1_we0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_1_address1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_1_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_1_d1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_1_we1;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_2_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_2_d0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_2_we0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_2_address1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_2_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_2_d1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_2_we1;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_3_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_3_d0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_3_we0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_3_address1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_3_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_3_d1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_3_we1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_ready;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_idle;
reg    dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_continue;
reg   [8:0] loop_dataflow_input_count;
reg   [8:0] loop_dataflow_output_count;
wire   [8:0] bound_minus_1;
wire    ap_ce_reg;
initial begin
#0 loop_dataflow_input_count = 9'd0;
#0 loop_dataflow_output_count = 9'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_5540_1 dataflow_in_loop_VITIS_LOOP_5540_1_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.v4020_0(loop_dataflow_input_count),.v9021_1_address0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_address0),.v9021_1_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_ce0),.v9021_1_d0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_d0),.v9021_1_q0(8'd0),.v9021_1_we0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_we0),.v9021_1_address1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_address1),.v9021_1_ce1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_ce1),.v9021_1_d1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_d1),.v9021_1_q1(8'd0),.v9021_1_we1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_we1),.v9021_0_address0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_address0),.v9021_0_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_ce0),.v9021_0_d0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_d0),.v9021_0_q0(8'd0),.v9021_0_we0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_we0),.v9021_0_address1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_address1),.v9021_0_ce1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_ce1),.v9021_0_d1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_d1),.v9021_0_q1(8'd0),.v9021_0_we1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_we1),.v9022_0_address0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_0_address0),.v9022_0_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_0_ce0),.v9022_0_d0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_0_d0),.v9022_0_q0(v9022_0_q0),.v9022_0_we0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_0_we0),.v9022_0_address1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_0_address1),.v9022_0_ce1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_0_ce1),.v9022_0_d1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_0_d1),.v9022_0_q1(8'd0),.v9022_0_we1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_0_we1),.v9022_1_address0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_1_address0),.v9022_1_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_1_ce0),.v9022_1_d0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_1_d0),.v9022_1_q0(v9022_1_q0),.v9022_1_we0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_1_we0),.v9022_1_address1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_1_address1),.v9022_1_ce1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_1_ce1),.v9022_1_d1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_1_d1),.v9022_1_q1(8'd0),.v9022_1_we1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_1_we1),.v9020_0_address0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_0_address0),.v9020_0_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_0_ce0),.v9020_0_d0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_0_d0),.v9020_0_q0(v9020_0_q0),.v9020_0_we0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_0_we0),.v9020_0_address1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_0_address1),.v9020_0_ce1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_0_ce1),.v9020_0_d1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_0_d1),.v9020_0_q1(8'd0),.v9020_0_we1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_0_we1),.v9020_1_address0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_1_address0),.v9020_1_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_1_ce0),.v9020_1_d0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_1_d0),.v9020_1_q0(v9020_1_q0),.v9020_1_we0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_1_we0),.v9020_1_address1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_1_address1),.v9020_1_ce1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_1_ce1),.v9020_1_d1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_1_d1),.v9020_1_q1(8'd0),.v9020_1_we1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_1_we1),.v9020_2_address0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_2_address0),.v9020_2_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_2_ce0),.v9020_2_d0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_2_d0),.v9020_2_q0(v9020_2_q0),.v9020_2_we0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_2_we0),.v9020_2_address1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_2_address1),.v9020_2_ce1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_2_ce1),.v9020_2_d1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_2_d1),.v9020_2_q1(8'd0),.v9020_2_we1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_2_we1),.v9020_3_address0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_3_address0),.v9020_3_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_3_ce0),.v9020_3_d0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_3_d0),.v9020_3_q0(v9020_3_q0),.v9020_3_we0(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_3_we0),.v9020_3_address1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_3_address1),.v9020_3_ce1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_3_ce1),.v9020_3_d1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_3_d1),.v9020_3_q1(8'd0),.v9020_3_we1(dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_3_we1),.v4020_0_ap_vld(1'b0),.ap_start(dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_done),.ap_ready(dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_ready),.ap_idle(dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_idle),.ap_continue(dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_continue));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        loop_dataflow_input_count <= 9'd0;
    end else begin
        if ((~(loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1) & (dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_ready == 1'b1))) begin
            loop_dataflow_input_count <= (loop_dataflow_input_count + 9'd1);
        end else if (((loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1) & (dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_ready == 1'b1))) begin
            loop_dataflow_input_count <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        loop_dataflow_output_count <= 9'd0;
    end else begin
        if ((~(loop_dataflow_output_count == bound_minus_1) & (dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_continue == 1'b1) & (dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_done == 1'b1))) begin
            loop_dataflow_output_count <= (loop_dataflow_output_count + 9'd1);
        end else if (((loop_dataflow_output_count == bound_minus_1) & (dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_continue == 1'b1) & (dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_done == 1'b1))) begin
            loop_dataflow_output_count <= 9'd0;
        end
    end
end
always @ (*) begin
    if (((loop_dataflow_output_count == bound_minus_1) & (dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((loop_dataflow_output_count == 9'd0) & (ap_start == 1'b0) & (dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_idle == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1) & (dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_ready == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((~(loop_dataflow_output_count == bound_minus_1) | (ap_continue == 1'b1))) begin
        dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_continue = 1'b1;
    end else begin
        dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_continue = 1'b0;
    end
end
assign bound_minus_1 = (9'd288 - 9'd1);
assign dataflow_in_loop_VITIS_LOOP_5540_1_U0_ap_start = ap_start;
assign v9020_0_address0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_0_address0;
assign v9020_0_address1 = 16'd0;
assign v9020_0_ce0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_0_ce0;
assign v9020_0_ce1 = 1'b0;
assign v9020_0_d0 = 8'd0;
assign v9020_0_d1 = 8'd0;
assign v9020_0_we0 = 1'b0;
assign v9020_0_we1 = 1'b0;
assign v9020_1_address0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_1_address0;
assign v9020_1_address1 = 16'd0;
assign v9020_1_ce0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_1_ce0;
assign v9020_1_ce1 = 1'b0;
assign v9020_1_d0 = 8'd0;
assign v9020_1_d1 = 8'd0;
assign v9020_1_we0 = 1'b0;
assign v9020_1_we1 = 1'b0;
assign v9020_2_address0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_2_address0;
assign v9020_2_address1 = 16'd0;
assign v9020_2_ce0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_2_ce0;
assign v9020_2_ce1 = 1'b0;
assign v9020_2_d0 = 8'd0;
assign v9020_2_d1 = 8'd0;
assign v9020_2_we0 = 1'b0;
assign v9020_2_we1 = 1'b0;
assign v9020_3_address0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_3_address0;
assign v9020_3_address1 = 16'd0;
assign v9020_3_ce0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9020_3_ce0;
assign v9020_3_ce1 = 1'b0;
assign v9020_3_d0 = 8'd0;
assign v9020_3_d1 = 8'd0;
assign v9020_3_we0 = 1'b0;
assign v9020_3_we1 = 1'b0;
assign v9021_0_address0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_address0;
assign v9021_0_address1 = 15'd0;
assign v9021_0_ce0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_ce0;
assign v9021_0_ce1 = 1'b0;
assign v9021_0_d0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_d0;
assign v9021_0_d1 = 8'd0;
assign v9021_0_we0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_0_we0;
assign v9021_0_we1 = 1'b0;
assign v9021_1_address0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_address0;
assign v9021_1_address1 = 15'd0;
assign v9021_1_ce0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_ce0;
assign v9021_1_ce1 = 1'b0;
assign v9021_1_d0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_d0;
assign v9021_1_d1 = 8'd0;
assign v9021_1_we0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9021_1_we0;
assign v9021_1_we1 = 1'b0;
assign v9022_0_address0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_0_address0;
assign v9022_0_address1 = 15'd0;
assign v9022_0_ce0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_0_ce0;
assign v9022_0_ce1 = 1'b0;
assign v9022_0_d0 = 8'd0;
assign v9022_0_d1 = 8'd0;
assign v9022_0_we0 = 1'b0;
assign v9022_0_we1 = 1'b0;
assign v9022_1_address0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_1_address0;
assign v9022_1_address1 = 15'd0;
assign v9022_1_ce0 = dataflow_in_loop_VITIS_LOOP_5540_1_U0_v9022_1_ce0;
assign v9022_1_ce1 = 1'b0;
assign v9022_1_d0 = 8'd0;
assign v9022_1_d1 = 8'd0;
assign v9022_1_we0 = 1'b0;
assign v9022_1_we1 = 1'b0;
endmodule 