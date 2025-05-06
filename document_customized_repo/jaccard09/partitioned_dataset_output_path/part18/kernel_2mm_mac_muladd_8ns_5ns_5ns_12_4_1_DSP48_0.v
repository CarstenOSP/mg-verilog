
module kernel_2mm_mac_muladd_8ns_5ns_5ns_12_4_1_DSP48_0(input clk,input rst,input ce,input  [8 - 1:0] in0,input  [5 - 1:0] in1,input  [5 - 1:0] in2,output [12 - 1:0]  dout);  
wire signed [25 - 1:0]     a;
wire signed [18 - 1:0]     b;
wire signed [48 - 1:0]     c;
wire signed [43 - 1:0]     m;
wire signed [48 - 1:0]     p;
reg  signed [43 - 1:0]     m_reg;
reg  signed [25 - 1:0]     a_reg;
reg  signed [18 - 1:0]     b_reg;
reg  signed [48 - 1:0]     p_reg;
assign a  = $unsigned(in0);
assign b  = $unsigned(in1);
assign c  = $unsigned(in2);
assign m  = a_reg * b_reg;
assign p  = m_reg + c;
always @(posedge clk) begin
    if (ce) begin
        m_reg  <= m;
        a_reg  <= a;
        b_reg  <= b;
        p_reg  <= p;
    end
end
assign dout = p_reg;
endmodule
