module forward_fifo_w9_d2_S_x_ShiftReg #(parameterDATA_WIDTH  = 9,ADDR_WIDTH  = 2,DEPTH       = 2) (input  wire                  clk,input  wire                  we,input  wire [ADDR_WIDTH-1:0] addr,input  wire [DATA_WIDTH-1:0] din,output wire [DATA_WIDTH-1:0] dout);
    reg [DATA_WIDTH-1:0] SRL_SIG [0:DEPTH-1];
    integer i;
    always @(posedge clk) begin
        if (we) begin
            for (i=0; i<DEPTH-1; i=i+1)
                SRL_SIG[i+1] <= SRL_SIG[i];
            SRL_SIG[0] <= din;
        end
    end
    assign dout = SRL_SIG[addr];
endmodule