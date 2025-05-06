
module forward_dataflow_in_loop_VITIS_LOOP_10650_1_Loop_VITIS_LOOP_9318_1_proc_Pipeline_VITItde (address0, ce0, q0,reset, clk);  
parameter DataWidth = 8;
parameter AddressWidth = 7;
parameter AddressRange = 128;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
(* rom_style = "block" *)reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
    $readmemh("./forward_dataflow_in_loop_VITIS_LOOP_10650_1_Loop_VITIS_LOOP_9318_1_proc_Pipeline_VITItde.dat", rom0);
end
always @(posedge clk) 
begin 
    if (ce0) 
    begin
        q0 <= rom0[address0];
    end
end
endmodule
