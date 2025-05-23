module forward_dataflow_in_loop_VITIS_LOOP_788_1_v368_RAM_T2P_BRAM_1R1W_memcore (address0, ce0,d0, we0,q0,address1, ce1,d1, we1,q1,reset, clk); 
parameter DataWidth = 8;
parameter AddressWidth = 9;
parameter AddressRange = 480;
input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0; 
output reg[DataWidth-1:0] q0; 
input[AddressWidth-1:0] address1;
input ce1;
input[DataWidth-1:0] d1;
input we1; 
output reg[DataWidth-1:0] q1; 
input reset;
input clk;
(* ram_style = "block"  *)reg [DataWidth-1:0] ram[0:AddressRange-1];
always @(posedge clk)  
begin 
    if (ce0) begin
        if (we0) 
            ram[address0] <= d0; 
        q0 <= ram[address0];
    end
end 
always @(posedge clk)  
begin 
    if (ce1) begin
        if (we1) 
            ram[address1] <= d1; 
        q1 <= ram[address1];
    end
end 
endmodule