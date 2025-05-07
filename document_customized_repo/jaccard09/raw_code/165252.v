module forward_forward_node4 (v9415_dout,v9415_empty_n,v9415_read,v9275_0_address0,v9275_0_ce0,v9275_0_d0,v9275_0_q0,v9275_0_we0,v9275_0_address1,v9275_0_ce1,v9275_0_d1,v9275_0_q1,v9275_0_we1,v9275_1_address0,v9275_1_ce0,v9275_1_d0,v9275_1_q0,v9275_1_we0,v9275_1_address1,v9275_1_ce1,v9275_1_d1,v9275_1_q1,v9275_1_we1,v82_0_address0,v82_0_ce0,v82_0_d0,v82_0_q0,v82_0_we0,v82_0_address1,v82_0_ce1,v82_0_d1,v82_0_q1,v82_0_we1,v82_1_address0,v82_1_ce0,v82_1_d0,v82_1_q0,v82_1_we0,v82_1_address1,v82_1_ce1,v82_1_d1,v82_1_q1,v82_1_we1,ap_clk,ap_rst,v82_0_full_n,v82_0_write,v82_1_full_n,v82_1_write,ap_start,ap_done,ap_ready,ap_idle,ap_continue); 
input  [0:0] v9415_dout;
input   v9415_empty_n;
output   v9415_read;
output  [13:0] v9275_0_address0;
output   v9275_0_ce0;
output  [7:0] v9275_0_d0;
input  [7:0] v9275_0_q0;
output   v9275_0_we0;
output  [13:0] v9275_0_address1;
output   v9275_0_ce1;
output  [7:0] v9275_0_d1;
input  [7:0] v9275_0_q1;
output   v9275_0_we1;
output  [13:0] v9275_1_address0;
output   v9275_1_ce0;
output  [7:0] v9275_1_d0;
input  [7:0] v9275_1_q0;
output   v9275_1_we0;
output  [13:0] v9275_1_address1;
output   v9275_1_ce1;
output  [7:0] v9275_1_d1;
input  [7:0] v9275_1_q1;
output   v9275_1_we1;
output  [7:0] v82_0_address0;
output   v82_0_ce0;
output  [7:0] v82_0_d0;
input  [7:0] v82_0_q0;
output   v82_0_we0;
output  [7:0] v82_0_address1;
output   v82_0_ce1;
output  [7:0] v82_0_d1;
input  [7:0] v82_0_q1;
output   v82_0_we1;
output  [7:0] v82_1_address0;
output   v82_1_ce0;
output  [7:0] v82_1_d0;
input  [7:0] v82_1_q0;
output   v82_1_we0;
output  [7:0] v82_1_address1;
output   v82_1_ce1;
output  [7:0] v82_1_d1;
input  [7:0] v82_1_q1;
output   v82_1_we1;
input   ap_clk;
input   ap_rst;
input   v82_0_full_n;
output   v82_0_write;
input   v82_1_full_n;
output   v82_1_write;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
reg ap_done;
reg ap_ready;
reg ap_idle;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_d0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_address1;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_d1;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_we1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_d0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_address1;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_d1;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_we1;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_0_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_0_d0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_0_we0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_0_address1;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_0_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_0_d1;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_0_we1;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_1_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_1_d0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_1_we0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_1_address1;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_1_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_1_d1;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_1_we1;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_write;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_write;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_ready;
wire    dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_idle;
reg    dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_continue;
reg   [9:0] loop_dataflow_input_count;
reg   [9:0] loop_dataflow_output_count;
wire   [9:0] bound_minus_1;
wire    ap_ce_reg;
initial begin
#0 loop_dataflow_input_count = 10'd0;
#0 loop_dataflow_output_count = 10'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_213_1 dataflow_in_loop_VITIS_LOOP_213_1_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.v83_0(loop_dataflow_input_count),.v82_0_address0(dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_address0),.v82_0_ce0(dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_ce0),.v82_0_d0(dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_d0),.v82_0_q0(8'd0),.v82_0_we0(dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_we0),.v82_0_address1(dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_address1),.v82_0_ce1(dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_ce1),.v82_0_d1(dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_d1),.v82_0_q1(v82_0_q1),.v82_0_we1(dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_we1),.v82_1_address0(dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_address0),.v82_1_ce0(dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_ce0),.v82_1_d0(dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_d0),.v82_1_q0(8'd0),.v82_1_we0(dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_we0),.v82_1_address1(dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_address1),.v82_1_ce1(dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_ce1),.v82_1_d1(dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_d1),.v82_1_q1(v82_1_q1),.v82_1_we1(dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_we1),.v9275_0_address0(dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_0_address0),.v9275_0_ce0(dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_0_ce0),.v9275_0_d0(dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_0_d0),.v9275_0_q0(v9275_0_q0),.v9275_0_we0(dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_0_we0),.v9275_0_address1(dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_0_address1),.v9275_0_ce1(dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_0_ce1),.v9275_0_d1(dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_0_d1),.v9275_0_q1(8'd0),.v9275_0_we1(dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_0_we1),.v9275_1_address0(dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_1_address0),.v9275_1_ce0(dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_1_ce0),.v9275_1_d0(dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_1_d0),.v9275_1_q0(v9275_1_q0),.v9275_1_we0(dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_1_we0),.v9275_1_address1(dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_1_address1),.v9275_1_ce1(dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_1_ce1),.v9275_1_d1(dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_1_d1),.v9275_1_q1(8'd0),.v9275_1_we1(dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_1_we1),.v83_0_ap_vld(1'b0),.ap_start(dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_start),.v82_0_full_n(v82_0_full_n),.v82_0_write(dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_write),.v82_1_full_n(v82_1_full_n),.v82_1_write(dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_write),.ap_done(dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_done),.ap_ready(dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_ready),.ap_idle(dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_idle),.ap_continue(dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_continue));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        loop_dataflow_input_count <= 10'd0;
    end else begin
        if ((~(loop_dataflow_input_count == bound_minus_1) & (dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_ready == 1'b1) & (ap_start == 1'b1))) begin
            loop_dataflow_input_count <= (loop_dataflow_input_count + 10'd1);
        end else if (((dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_ready == 1'b1) & (loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1))) begin
            loop_dataflow_input_count <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        loop_dataflow_output_count <= 10'd0;
    end else begin
        if ((~(loop_dataflow_output_count == bound_minus_1) & (dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_done == 1'b1) & (dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_continue == 1'b1))) begin
            loop_dataflow_output_count <= (loop_dataflow_output_count + 10'd1);
        end else if (((dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_done == 1'b1) & (loop_dataflow_output_count == bound_minus_1) & (dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_continue == 1'b1))) begin
            loop_dataflow_output_count <= 10'd0;
        end
    end
end
always @ (*) begin
    if (((dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_done == 1'b1) & (loop_dataflow_output_count == bound_minus_1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_idle == 1'b1) & (loop_dataflow_output_count == 10'd0) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_ready == 1'b1) & (loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((~(loop_dataflow_output_count == bound_minus_1) | (ap_continue == 1'b1))) begin
        dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_continue = 1'b1;
    end else begin
        dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_continue = 1'b0;
    end
end
assign bound_minus_1 = (10'd784 - 10'd1);
assign dataflow_in_loop_VITIS_LOOP_213_1_U0_ap_start = ap_start;
assign v82_0_address0 = dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_address0;
assign v82_0_address1 = dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_address1;
assign v82_0_ce0 = dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_ce0;
assign v82_0_ce1 = dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_ce1;
assign v82_0_d0 = dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_d0;
assign v82_0_d1 = 8'd0;
assign v82_0_we0 = dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_we0;
assign v82_0_we1 = 1'b0;
assign v82_0_write = dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_0_write;
assign v82_1_address0 = dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_address0;
assign v82_1_address1 = dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_address1;
assign v82_1_ce0 = dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_ce0;
assign v82_1_ce1 = dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_ce1;
assign v82_1_d0 = dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_d0;
assign v82_1_d1 = 8'd0;
assign v82_1_we0 = dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_we0;
assign v82_1_we1 = 1'b0;
assign v82_1_write = dataflow_in_loop_VITIS_LOOP_213_1_U0_v82_1_write;
assign v9275_0_address0 = dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_0_address0;
assign v9275_0_address1 = 14'd0;
assign v9275_0_ce0 = dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_0_ce0;
assign v9275_0_ce1 = 1'b0;
assign v9275_0_d0 = 8'd0;
assign v9275_0_d1 = 8'd0;
assign v9275_0_we0 = 1'b0;
assign v9275_0_we1 = 1'b0;
assign v9275_1_address0 = dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_1_address0;
assign v9275_1_address1 = 14'd0;
assign v9275_1_ce0 = dataflow_in_loop_VITIS_LOOP_213_1_U0_v9275_1_ce0;
assign v9275_1_ce1 = 1'b0;
assign v9275_1_d0 = 8'd0;
assign v9275_1_d1 = 8'd0;
assign v9275_1_we0 = 1'b0;
assign v9275_1_we1 = 1'b0;
assign v9415_read = 1'b0;
endmodule 