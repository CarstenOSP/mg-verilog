
module forward_forward_node0 (v15654_dout,v15654_empty_n,v15654_read,v15511_0_address0,v15511_0_ce0,v15511_0_d0,v15511_0_q0,v15511_0_we0,v15511_0_address1,v15511_0_ce1,v15511_0_d1,v15511_0_q1,v15511_0_we1,v15511_1_address0,v15511_1_ce0,v15511_1_d0,v15511_1_q0,v15511_1_we0,v15511_1_address1,v15511_1_ce1,v15511_1_d1,v15511_1_q1,v15511_1_we1,v15427_0_address0,v15427_0_ce0,v15427_0_d0,v15427_0_q0,v15427_0_we0,v15427_0_address1,v15427_0_ce1,v15427_0_d1,v15427_0_q1,v15427_0_we1,v15427_1_address0,v15427_1_ce0,v15427_1_d0,v15427_1_q0,v15427_1_we0,v15427_1_address1,v15427_1_ce1,v15427_1_d1,v15427_1_q1,v15427_1_we1,v15402_address0,v15402_ce0,v15402_d0,v15402_q0,v15402_we0,v15402_address1,v15402_ce1,v15402_d1,v15402_q1,v15402_we1,ap_clk,ap_rst,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input  [0:0] v15654_dout;
input   v15654_empty_n;
output   v15654_read;
output  [8:0] v15511_0_address0;
output   v15511_0_ce0;
output  [7:0] v15511_0_d0;
input  [7:0] v15511_0_q0;
output   v15511_0_we0;
output  [8:0] v15511_0_address1;
output   v15511_0_ce1;
output  [7:0] v15511_0_d1;
input  [7:0] v15511_0_q1;
output   v15511_0_we1;
output  [8:0] v15511_1_address0;
output   v15511_1_ce0;
output  [7:0] v15511_1_d0;
input  [7:0] v15511_1_q0;
output   v15511_1_we0;
output  [8:0] v15511_1_address1;
output   v15511_1_ce1;
output  [7:0] v15511_1_d1;
input  [7:0] v15511_1_q1;
output   v15511_1_we1;
output  [18:0] v15427_0_address0;
output   v15427_0_ce0;
output  [7:0] v15427_0_d0;
input  [7:0] v15427_0_q0;
output   v15427_0_we0;
output  [18:0] v15427_0_address1;
output   v15427_0_ce1;
output  [7:0] v15427_0_d1;
input  [7:0] v15427_0_q1;
output   v15427_0_we1;
output  [18:0] v15427_1_address0;
output   v15427_1_ce0;
output  [7:0] v15427_1_d0;
input  [7:0] v15427_1_q0;
output   v15427_1_we0;
output  [18:0] v15427_1_address1;
output   v15427_1_ce1;
output  [7:0] v15427_1_d1;
input  [7:0] v15427_1_q1;
output   v15427_1_we1;
output  [9:0] v15402_address0;
output   v15402_ce0;
output  [7:0] v15402_d0;
input  [7:0] v15402_q0;
output   v15402_we0;
output  [9:0] v15402_address1;
output   v15402_ce1;
output  [7:0] v15402_d1;
input  [7:0] v15402_q1;
output   v15402_we1;
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
wire   [9:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_d0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_we0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_address1;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_d1;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_we1;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_0_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_0_d0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_0_we0;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_0_address1;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_0_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_0_d1;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_0_we1;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_1_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_1_d0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_1_we0;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_1_address1;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_1_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_1_d1;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_1_we1;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_0_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_0_d0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_0_we0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_0_address1;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_0_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_0_d1;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_0_we1;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_1_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_1_d0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_1_we0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_1_address1;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_1_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_1_d1;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_1_we1;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_ready;
wire    dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_idle;
reg    dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_continue;
reg   [10:0] loop_dataflow_input_count;
reg   [10:0] loop_dataflow_output_count;
wire   [10:0] bound_minus_1;
wire    ap_ce_reg;
initial begin
#0 loop_dataflow_input_count = 11'd0;
#0 loop_dataflow_output_count = 11'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_143_1 dataflow_in_loop_VITIS_LOOP_143_1_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.v52_0(loop_dataflow_input_count),.v15402_address0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_address0),.v15402_ce0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_ce0),.v15402_d0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_d0),.v15402_q0(8'd0),.v15402_we0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_we0),.v15402_address1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_address1),.v15402_ce1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_ce1),.v15402_d1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_d1),.v15402_q1(8'd0),.v15402_we1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_we1),.v15427_0_address0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_0_address0),.v15427_0_ce0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_0_ce0),.v15427_0_d0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_0_d0),.v15427_0_q0(v15427_0_q0),.v15427_0_we0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_0_we0),.v15427_0_address1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_0_address1),.v15427_0_ce1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_0_ce1),.v15427_0_d1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_0_d1),.v15427_0_q1(8'd0),.v15427_0_we1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_0_we1),.v15427_1_address0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_1_address0),.v15427_1_ce0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_1_ce0),.v15427_1_d0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_1_d0),.v15427_1_q0(v15427_1_q0),.v15427_1_we0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_1_we0),.v15427_1_address1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_1_address1),.v15427_1_ce1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_1_ce1),.v15427_1_d1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_1_d1),.v15427_1_q1(8'd0),.v15427_1_we1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_1_we1),.v15511_0_address0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_0_address0),.v15511_0_ce0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_0_ce0),.v15511_0_d0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_0_d0),.v15511_0_q0(v15511_0_q0),.v15511_0_we0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_0_we0),.v15511_0_address1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_0_address1),.v15511_0_ce1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_0_ce1),.v15511_0_d1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_0_d1),.v15511_0_q1(8'd0),.v15511_0_we1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_0_we1),.v15511_1_address0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_1_address0),.v15511_1_ce0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_1_ce0),.v15511_1_d0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_1_d0),.v15511_1_q0(v15511_1_q0),.v15511_1_we0(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_1_we0),.v15511_1_address1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_1_address1),.v15511_1_ce1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_1_ce1),.v15511_1_d1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_1_d1),.v15511_1_q1(8'd0),.v15511_1_we1(dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_1_we1),.v52_0_ap_vld(1'b0),.ap_start(dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_done),.ap_ready(dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_ready),.ap_idle(dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_idle),.ap_continue(dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_continue));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        loop_dataflow_input_count <= 11'd0;
    end else begin
        if ((~(loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1) & (dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_ready == 1'b1))) begin
            loop_dataflow_input_count <= (loop_dataflow_input_count + 11'd1);
        end else if (((loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1) & (dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_ready == 1'b1))) begin
            loop_dataflow_input_count <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        loop_dataflow_output_count <= 11'd0;
    end else begin
        if ((~(loop_dataflow_output_count == bound_minus_1) & (dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_continue == 1'b1) & (dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_done == 1'b1))) begin
            loop_dataflow_output_count <= (loop_dataflow_output_count + 11'd1);
        end else if (((loop_dataflow_output_count == bound_minus_1) & (dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_continue == 1'b1) & (dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_done == 1'b1))) begin
            loop_dataflow_output_count <= 11'd0;
        end
    end
end
always @ (*) begin
    if (((loop_dataflow_output_count == bound_minus_1) & (dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((loop_dataflow_output_count == 11'd0) & (ap_start == 1'b0) & (dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_idle == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1) & (dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_ready == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((~(loop_dataflow_output_count == bound_minus_1) | (ap_continue == 1'b1))) begin
        dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_continue = 1'b1;
    end else begin
        dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_continue = 1'b0;
    end
end
assign bound_minus_1 = (11'd1280 - 11'd1);
assign dataflow_in_loop_VITIS_LOOP_143_1_U0_ap_start = ap_start;
assign v15402_address0 = dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_address0;
assign v15402_address1 = 10'd0;
assign v15402_ce0 = dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_ce0;
assign v15402_ce1 = 1'b0;
assign v15402_d0 = dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_d0;
assign v15402_d1 = 8'd0;
assign v15402_we0 = dataflow_in_loop_VITIS_LOOP_143_1_U0_v15402_we0;
assign v15402_we1 = 1'b0;
assign v15427_0_address0 = dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_0_address0;
assign v15427_0_address1 = 19'd0;
assign v15427_0_ce0 = dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_0_ce0;
assign v15427_0_ce1 = 1'b0;
assign v15427_0_d0 = 8'd0;
assign v15427_0_d1 = 8'd0;
assign v15427_0_we0 = 1'b0;
assign v15427_0_we1 = 1'b0;
assign v15427_1_address0 = dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_1_address0;
assign v15427_1_address1 = 19'd0;
assign v15427_1_ce0 = dataflow_in_loop_VITIS_LOOP_143_1_U0_v15427_1_ce0;
assign v15427_1_ce1 = 1'b0;
assign v15427_1_d0 = 8'd0;
assign v15427_1_d1 = 8'd0;
assign v15427_1_we0 = 1'b0;
assign v15427_1_we1 = 1'b0;
assign v15511_0_address0 = dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_0_address0;
assign v15511_0_address1 = 9'd0;
assign v15511_0_ce0 = dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_0_ce0;
assign v15511_0_ce1 = 1'b0;
assign v15511_0_d0 = 8'd0;
assign v15511_0_d1 = 8'd0;
assign v15511_0_we0 = 1'b0;
assign v15511_0_we1 = 1'b0;
assign v15511_1_address0 = dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_1_address0;
assign v15511_1_address1 = 9'd0;
assign v15511_1_ce0 = dataflow_in_loop_VITIS_LOOP_143_1_U0_v15511_1_ce0;
assign v15511_1_ce1 = 1'b0;
assign v15511_1_d0 = 8'd0;
assign v15511_1_d1 = 8'd0;
assign v15511_1_we0 = 1'b0;
assign v15511_1_we1 = 1'b0;
assign v15654_read = 1'b0;
endmodule 
