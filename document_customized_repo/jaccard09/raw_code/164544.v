module forward_urem_6ns_4ns_3_10_seq_1 #(parameterID   = 1,NUM_STAGE   = 2,din0_WIDTH   = 32,din1_WIDTH   = 32,dout_WIDTH   = 32) (input                           clk,input                           reset,input                           ce,input                           start,output  reg                     done,input           [din0_WIDTH-1:0] din0,input           [din1_WIDTH-1:0] din1,output          [dout_WIDTH-1:0] dout);
reg                       start0 = 'b0;
wire                      done0;
reg     [din0_WIDTH-1:0] dividend0;
reg     [din1_WIDTH-1:0] divisor0;
wire    [din0_WIDTH-1:0] dividend_u;
wire    [din1_WIDTH-1:0] divisor_u;
wire    [dout_WIDTH-1:0] quot_u;
wire    [dout_WIDTH-1:0] remd_u;
reg     [dout_WIDTH-1:0] quot;
reg     [dout_WIDTH-1:0] remd;
forward_urem_6ns_4ns_3_10_seq_1_divseq #(.in0_WIDTH      ( din0_WIDTH ),.in1_WIDTH      ( din1_WIDTH ),.out_WIDTH      ( dout_WIDTH )) forward_urem_6ns_4ns_3_10_seq_1_divseq_u (.clk      ( clk ),.reset    ( reset ),.ce       ( ce ),.start    ( start0 ),.done     ( done0 ),.dividend ( dividend_u ),.divisor  ( divisor_u ),.quot     ( quot_u ),.remd     ( remd_u ));
assign dividend_u = dividend0;
assign divisor_u = divisor0;
always @(posedge clk)
begin
    if (ce) begin
        dividend0 <= din0;
        divisor0  <= din1;
        start0    <= start;
    end
end
always @(posedge clk)
begin
    done <= done0;
end
always @(posedge clk)
begin
    if (done0) begin
        quot <= quot_u;
        remd <= remd_u;
    end
end
assign dout = remd;
endmodule