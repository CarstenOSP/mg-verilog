module syrk_buff_A0_RAM_AUTO_1R1W (address0, ce0,d0, we0,q0,reset, clk); 
parameter DataWidth = 32;
parameter AddressWidth = 11;
parameter AddressRange = 2048;
input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0; 
output reg[DataWidth-1:0] q0; 
input reset;
input clk;
(* ram_style = "auto"  *)reg [DataWidth-1:0] ram[0:AddressRange-1];
always @(posedge clk)  
begin 
    if (ce0) begin
        if (we0) 
            ram[address0] <= d0; 
        q0 <= ram[address0];
    end
end 
endmodule