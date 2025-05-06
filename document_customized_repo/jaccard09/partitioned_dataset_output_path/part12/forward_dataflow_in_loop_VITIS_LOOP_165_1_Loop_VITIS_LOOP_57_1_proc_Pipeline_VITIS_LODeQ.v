
module forward_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LODeQ (address0, ce0, q0,reset, clk);  
parameter DataWidth = 8;
parameter AddressWidth = 10;
parameter AddressRange = 1000;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
(* rom_style = "block" *)reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
    $readmemh("./forward_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_Pipeline_VITIS_LODeQ.dat", rom0);
end
always @(posedge clk) 
begin 
    if (ce0) 
    begin
        q0 <= rom0[address0];
    end
end
endmodule
