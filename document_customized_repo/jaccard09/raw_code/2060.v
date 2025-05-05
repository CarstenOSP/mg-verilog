module Gsm_LPC_Analysis_ama_addmuladd_16s_16s_16s_32s_33_4_1_DSP48_0 (input clk,input rst,input ce,input  [16 - 1:0] in0,input  [16 - 1:0] in1,input  [16 - 1:0] in2,input  [32 - 1:0] in3,output [33 - 1:0]  dout); 
wire signed [18 - 1:0]     b;
wire signed [25 - 1:0]     a;
wire signed [25 - 1:0]     d;
wire signed [48 - 1:0]     c;
wire signed [43 - 1:0]     m;
wire signed [48 - 1:0]     p;
wire signed [25 - 1:0]     ad;
reg  signed [43 - 1:0]     m_reg;
reg  signed [25 - 1:0]     ad_reg;
reg  signed [18 - 1:0]     b_reg;
reg  signed [48 - 1:0]     p_reg;
assign a = $signed(in0);
assign d = $signed(in1);
assign b = $signed(in2);
assign c = $signed(in3);
assign ad = a + d;
assign m  = ad_reg * b_reg;
assign p  = m_reg + c;
always @(posedge clk) begin
    if (ce) begin
        m_reg  <= m;
        ad_reg <= ad;
        b_reg  <= b;
        p_reg  <= p;
    end
end
assign dout = p_reg;
endmodule