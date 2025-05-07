module fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1_DSP48_0(input clk,input rst,input ce,input  [9 - 1:0] in0,input  [4 - 1:0] in1,input  [11 - 1:0] in2,output [21 - 1:0]  dout); 
wire signed [18 - 1:0]     b;
wire signed [25 - 1:0]     a;
wire signed [25 - 1:0]     d;
wire signed [43 - 1:0]     m;
wire signed [25 - 1:0]    ad;
reg  signed [43 - 1:0]    m_reg;
reg  signed [25 - 1:0]   ad_reg;
reg  signed [18 - 1:0]    b_reg;
reg  signed [48 - 1:0]    p_reg;
assign a = $unsigned(in0);
assign d = $unsigned(in1);
assign b = $unsigned(in2);
assign ad = a + d;
assign m  = ad_reg * b_reg;
always @(posedge clk) begin
    if (ce) begin
        m_reg <= m;
        ad_reg <= ad;
        b_reg  <= b;
        p_reg  <= m_reg;
    end
end
assign dout = p_reg;
endmodule