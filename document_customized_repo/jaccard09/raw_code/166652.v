module forward_ama_addmuladd_12ns_6ns_6ns_6ns_18_4_1(clk,reset,ce,din0,din1,din2,din3,dout); 
parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter din2_WIDTH = 32'd1;
parameter din3_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
input[din2_WIDTH - 1:0] din2;
input[din3_WIDTH - 1:0] din3;
output[dout_WIDTH - 1:0] dout;
forward_ama_addmuladd_12ns_6ns_6ns_6ns_18_4_1_DSP48_0 forward_ama_addmuladd_12ns_6ns_6ns_6ns_18_4_1_DSP48_0_U(.clk( clk ),.rst( reset ),.ce( ce ),.in0( din0 ),.in1( din1 ),.in2( din2 ),.in3( din3 ),.dout( dout ));
endmodule