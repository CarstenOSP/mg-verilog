module forward_dataflow_parent_loop_proc170 (v15449_address0,v15449_ce0,v15449_d0,v15449_q0,v15449_we0,v15449_address1,v15449_ce1,v15449_d1,v15449_q1,v15449_we1,v15450_address0,v15450_ce0,v15450_d0,v15450_q0,v15450_we0,v15450_address1,v15450_ce1,v15450_d1,v15450_q1,v15450_we1,v15425_address0,v15425_ce0,v15425_d0,v15425_q0,v15425_we0,v15425_address1,v15425_ce1,v15425_d1,v15425_q1,v15425_we1,v15448_address0,v15448_ce0,v15448_d0,v15448_q0,v15448_we0,v15448_address1,v15448_ce1,v15448_d1,v15448_q1,v15448_we1,ap_clk,ap_rst,ap_start,ap_done,ap_ready,ap_idle,ap_continue); 
output  [16:0] v15449_address0;
output   v15449_ce0;
output  [7:0] v15449_d0;
input  [7:0] v15449_q0;
output   v15449_we0;
output  [16:0] v15449_address1;
output   v15449_ce1;
output  [7:0] v15449_d1;
input  [7:0] v15449_q1;
output   v15449_we1;
output  [16:0] v15450_address0;
output   v15450_ce0;
output  [7:0] v15450_d0;
input  [7:0] v15450_q0;
output   v15450_we0;
output  [16:0] v15450_address1;
output   v15450_ce1;
output  [7:0] v15450_d1;
input  [7:0] v15450_q1;
output   v15450_we1;
output  [10:0] v15425_address0;
output   v15425_ce0;
output  [7:0] v15425_d0;
input  [7:0] v15425_q0;
output   v15425_we0;
output  [10:0] v15425_address1;
output   v15425_ce1;
output  [7:0] v15425_d1;
input  [7:0] v15425_q1;
output   v15425_we1;
output  [18:0] v15448_address0;
output   v15448_ce0;
output  [7:0] v15448_d0;
input  [7:0] v15448_q0;
output   v15448_we0;
output  [18:0] v15448_address1;
output   v15448_ce1;
output  [7:0] v15448_d1;
input  [7:0] v15448_q1;
output   v15448_we1;
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
wire   [16:0] dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_address0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_d0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_we0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_address1;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_d1;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_we1;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15450_address0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15450_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15450_d0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15450_we0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15450_address1;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15450_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15450_d1;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15450_we1;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15425_address0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15425_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15425_d0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15425_we0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15425_address1;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15425_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15425_d1;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15425_we1;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15448_address0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15448_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15448_d0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15448_we0;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15448_address1;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15448_ce1;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15448_d1;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15448_we1;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_ready;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_idle;
reg    dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_continue;
reg   [7:0] loop_dataflow_input_count;
reg   [7:0] loop_dataflow_output_count;
wire   [7:0] bound_minus_1;
wire    ap_ce_reg;
initial begin
#0 loop_dataflow_input_count = 8'd0;
#0 loop_dataflow_output_count = 8'd0;
end
forward_dataflow_in_loop_VITIS_LOOP_16412_1 dataflow_in_loop_VITIS_LOOP_16412_1_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.v12816_0(loop_dataflow_input_count),.v15449_address0(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_address0),.v15449_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_ce0),.v15449_d0(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_d0),.v15449_q0(8'd0),.v15449_we0(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_we0),.v15449_address1(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_address1),.v15449_ce1(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_ce1),.v15449_d1(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_d1),.v15449_q1(8'd0),.v15449_we1(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_we1),.v15450_address0(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15450_address0),.v15450_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15450_ce0),.v15450_d0(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15450_d0),.v15450_q0(v15450_q0),.v15450_we0(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15450_we0),.v15450_address1(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15450_address1),.v15450_ce1(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15450_ce1),.v15450_d1(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15450_d1),.v15450_q1(8'd0),.v15450_we1(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15450_we1),.v15425_address0(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15425_address0),.v15425_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15425_ce0),.v15425_d0(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15425_d0),.v15425_q0(v15425_q0),.v15425_we0(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15425_we0),.v15425_address1(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15425_address1),.v15425_ce1(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15425_ce1),.v15425_d1(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15425_d1),.v15425_q1(8'd0),.v15425_we1(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15425_we1),.v15448_address0(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15448_address0),.v15448_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15448_ce0),.v15448_d0(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15448_d0),.v15448_q0(v15448_q0),.v15448_we0(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15448_we0),.v15448_address1(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15448_address1),.v15448_ce1(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15448_ce1),.v15448_d1(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15448_d1),.v15448_q1(8'd0),.v15448_we1(dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15448_we1),.v12816_0_ap_vld(1'b0),.ap_start(dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_done),.ap_ready(dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_ready),.ap_idle(dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_idle),.ap_continue(dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_continue));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        loop_dataflow_input_count <= 8'd0;
    end else begin
        if ((~(loop_dataflow_input_count == bound_minus_1) & (dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_ready == 1'b1) & (ap_start == 1'b1))) begin
            loop_dataflow_input_count <= (loop_dataflow_input_count + 8'd1);
        end else if (((dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_ready == 1'b1) & (loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1))) begin
            loop_dataflow_input_count <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        loop_dataflow_output_count <= 8'd0;
    end else begin
        if ((~(loop_dataflow_output_count == bound_minus_1) & (dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_continue == 1'b1) & (dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_done == 1'b1))) begin
            loop_dataflow_output_count <= (loop_dataflow_output_count + 8'd1);
        end else if (((dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_continue == 1'b1) & (dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_done == 1'b1) & (loop_dataflow_output_count == bound_minus_1))) begin
            loop_dataflow_output_count <= 8'd0;
        end
    end
end
always @ (*) begin
    if (((dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_done == 1'b1) & (loop_dataflow_output_count == bound_minus_1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_idle == 1'b1) & (loop_dataflow_output_count == 8'd0) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_ready == 1'b1) & (loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((~(loop_dataflow_output_count == bound_minus_1) | (ap_continue == 1'b1))) begin
        dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_continue = 1'b1;
    end else begin
        dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_continue = 1'b0;
    end
end
assign bound_minus_1 = (8'd144 - 8'd1);
assign dataflow_in_loop_VITIS_LOOP_16412_1_U0_ap_start = ap_start;
assign v15425_address0 = dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15425_address0;
assign v15425_address1 = 11'd0;
assign v15425_ce0 = dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15425_ce0;
assign v15425_ce1 = 1'b0;
assign v15425_d0 = 8'd0;
assign v15425_d1 = 8'd0;
assign v15425_we0 = 1'b0;
assign v15425_we1 = 1'b0;
assign v15448_address0 = dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15448_address0;
assign v15448_address1 = 19'd0;
assign v15448_ce0 = dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15448_ce0;
assign v15448_ce1 = 1'b0;
assign v15448_d0 = 8'd0;
assign v15448_d1 = 8'd0;
assign v15448_we0 = 1'b0;
assign v15448_we1 = 1'b0;
assign v15449_address0 = dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_address0;
assign v15449_address1 = 17'd0;
assign v15449_ce0 = dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_ce0;
assign v15449_ce1 = 1'b0;
assign v15449_d0 = dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_d0;
assign v15449_d1 = 8'd0;
assign v15449_we0 = dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15449_we0;
assign v15449_we1 = 1'b0;
assign v15450_address0 = dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15450_address0;
assign v15450_address1 = 17'd0;
assign v15450_ce0 = dataflow_in_loop_VITIS_LOOP_16412_1_U0_v15450_ce0;
assign v15450_ce1 = 1'b0;
assign v15450_d0 = 8'd0;
assign v15450_d1 = 8'd0;
assign v15450_we0 = 1'b0;
assign v15450_we1 = 1'b0;
endmodule 