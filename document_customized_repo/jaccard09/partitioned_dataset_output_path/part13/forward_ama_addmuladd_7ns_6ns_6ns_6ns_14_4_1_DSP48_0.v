
module forward_ama_addmuladd_7ns_6ns_6ns_6ns_14_4_1_DSP48_0 (input clk,input rst,input ce,input  [7 - 1:0] in0,input  [6 - 1:0] in1,input  [6 - 1:0] in2,input  [6 - 1:0] in3,output [14 - 1:0]  dout);  
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
assign a = $unsigned(in0);
assign d = $unsigned(in1);
assign b = $unsigned(in2);
assign c = $unsigned(in3);
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
