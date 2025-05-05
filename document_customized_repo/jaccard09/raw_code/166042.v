module main_graph_v21_RAM_S2P_BRAM_1R1W (address0, ce0,q0,address1, ce1,d1, we1,reset, clk); 
parameter DataWidth = 7;
parameter AddressWidth = 13;
parameter AddressRange = 8192;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0; 
input[AddressWidth-1:0] address1;
input ce1;
input[DataWidth-1:0] d1;
input we1; 
input reset;
input clk;
(* ram_style = "block"  *)reg [DataWidth-1:0] ram[0:AddressRange-1];
always @(posedge clk) 
begin 
    if (ce0) begin
        q0 <= ram[address0];
    end
end 
always @(posedge clk)  
begin 
    if (ce1) begin
        if (we1) 
            ram[address1] <= d1; 
    end
end 
endmodule