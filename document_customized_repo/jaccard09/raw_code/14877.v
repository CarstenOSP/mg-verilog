module fft1D_512_urem_6ns_4ns_3_10_1 #(parameterID   = 1,NUM_STAGE   = 2,din0_WIDTH   = 32,din1_WIDTH   = 32,dout_WIDTH   = 32) (input                           clk,input                           reset,input                           ce,input           [din0_WIDTH-1:0] din0,input           [din1_WIDTH-1:0] din1,output          [dout_WIDTH-1:0] dout);
reg     [din0_WIDTH-1:0] dividend0;
reg     [din1_WIDTH-1:0] divisor0;
wire    [din0_WIDTH-1:0] dividend_u;
wire    [din1_WIDTH-1:0] divisor_u;
wire    [dout_WIDTH-1:0] quot_u;
wire    [dout_WIDTH-1:0] remd_u;
reg     [dout_WIDTH-1:0] quot;
reg     [dout_WIDTH-1:0] remd;
fft1D_512_urem_6ns_4ns_3_10_1_divider #(.in0_WIDTH      ( din0_WIDTH ),.in1_WIDTH      ( din1_WIDTH ),.out_WIDTH      ( dout_WIDTH )) fft1D_512_urem_6ns_4ns_3_10_1_divider_u (.clk      ( clk ),.reset    ( reset ),.ce       ( ce ),.dividend ( dividend_u ),.divisor  ( divisor_u ),.quot     ( quot_u ),.remd     ( remd_u ));
assign dividend_u = dividend0;
assign divisor_u = divisor0;
always @(posedge clk)
begin
    if (ce) begin
        dividend0 <= din0;
        divisor0  <= din1;
    end
end
always @(posedge clk)
begin
    if (ce) begin
        quot <= quot_u;
        remd <= remd_u;
    end
end
assign dout = remd;
endmodule