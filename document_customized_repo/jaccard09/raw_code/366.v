module Gsm_LPC_Analysis_gsm_abs (ap_ready,a,ap_return,ap_rst); 
output   ap_ready;
input  [15:0] a;
output  [15:0] ap_return;
input   ap_rst;
wire   [0:0] icmp_ln69_fu_28_p2;
wire   [15:0] sub_ln69_fu_34_p2;
wire   [0:0] tmp_fu_20_p3;
wire   [15:0] select_ln69_fu_40_p3;
wire    ap_ce_reg;
assign ap_ready = 1'b1;
assign icmp_ln69_fu_28_p2 = ((a == 16'd32768) ? 1'b1 : 1'b0);
assign select_ln69_fu_40_p3 = ((icmp_ln69_fu_28_p2[0:0] == 1'b1) ? 16'd32767 : sub_ln69_fu_34_p2);
assign sub_ln69_fu_34_p2 = (16'd0 - a);
assign tmp_fu_20_p3 = a[32'd15];
assign ap_return = ((tmp_fu_20_p3[0:0] == 1'b1) ? select_ln69_fu_40_p3 : a);
endmodule 