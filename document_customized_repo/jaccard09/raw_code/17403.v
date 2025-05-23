module fft1D_512_twiddles8_reversed8_ROM_AUTO_1R (address0, ce0, q0,reset, clk); 
parameter DataWidth = 32;
parameter AddressWidth = 3;
parameter AddressRange = 8;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
    $readmemh("./fft1D_512_twiddles8_reversed8_ROM_AUTO_1R.dat", rom0);
end
always @(posedge clk) 
begin 
    if (ce0) 
    begin
        q0 <= rom0[address0];
    end
end
endmodule