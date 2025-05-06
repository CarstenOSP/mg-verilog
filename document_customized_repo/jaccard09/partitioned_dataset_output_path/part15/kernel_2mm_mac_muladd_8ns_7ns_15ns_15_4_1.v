
module kernel_2mm_mac_muladd_8ns_7ns_15ns_15_4_1(clk,reset,ce,din0,din1,din2,dout);  
parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter din2_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
input[din2_WIDTH - 1:0] din2;
output[dout_WIDTH - 1:0] dout;
kernel_2mm_mac_muladd_8ns_7ns_15ns_15_4_1_DSP48_0 kernel_2mm_mac_muladd_8ns_7ns_15ns_15_4_1_DSP48_0_U(.clk( clk ),.rst( reset ),.ce( ce ),.in0( din0 ),.in1( din1 ),.in2( din2 ),.dout( dout ));
endmodule
