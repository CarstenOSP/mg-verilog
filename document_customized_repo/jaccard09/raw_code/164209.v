module forward_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_Pipeline_VITdEe (address0, ce0, q0,reset, clk); 
parameter DataWidth = 8;
parameter AddressWidth = 9;
parameter AddressRange = 288;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
(* rom_style = "block" *)reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
    $readmemh("./forward_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_Pipeline_VITdEe.dat", rom0);
end
always @(posedge clk) 
begin 
    if (ce0) 
    begin
        q0 <= rom0[address0];
    end
end
endmodule