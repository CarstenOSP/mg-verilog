module sha_stream_sha_update_Pipeline_VITIS_LOOP_165_1_indata_ROM_AUTO_1R (address0, ce0, q0,reset, clk); 
parameter DataWidth = 7;
parameter AddressWidth = 14;
parameter AddressRange = 16384;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
    $readmemh("./sha_stream_sha_update_Pipeline_VITIS_LOOP_165_1_indata_ROM_AUTO_1R.dat", rom0);
end
always @(posedge clk) 
begin 
    if (ce0) 
    begin
        q0 <= rom0[address0];
    end
end
endmodule