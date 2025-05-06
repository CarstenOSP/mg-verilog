
module forward_fifo_w14_d2_S_x #(parameterMEM_STYLE    = "shiftReg",DATA_WIDTH   = 14,ADDR_WIDTH   = 2,DEPTH        = 2) (input  wire                  clk,input  wire                  reset,output wire                  if_full_n,input  wire                  if_write_ce,input  wire                  if_write,input  wire [DATA_WIDTH-1:0] if_din,output wire [ADDR_WIDTH:0]   if_num_data_valid,output wire [ADDR_WIDTH:0]   if_fifo_cap,output wire                  if_empty_n,input  wire                  if_read_ce,input  wire                  if_read,output wire [DATA_WIDTH-1:0] if_dout); 
localparam 
    SRL_DEPTH    = DEPTH,
    SRL_AWIDTH   = ADDR_WIDTH;
    reg  [SRL_AWIDTH-1:0] addr;
    wire                  push;
    wire                  pop;
    reg  [SRL_AWIDTH:0]   mOutPtr;
    reg                   empty_n = 1'b0;
    reg                   full_n = 1'b1; 
    forward_fifo_w14_d2_S_x_ShiftReg 
#(  .DATA_WIDTH (DATA_WIDTH),.ADDR_WIDTH (SRL_AWIDTH),.DEPTH      (SRL_DEPTH))
U_forward_fifo_w14_d2_S_x_ShiftReg (.clk        (clk),.we         (push),.addr       (addr),.din        (if_din),.dout       (if_dout));
    assign if_num_data_valid = mOutPtr;
    assign if_fifo_cap       = DEPTH;
    assign if_full_n  = full_n; 
    assign if_empty_n = empty_n;
    assign push       = full_n & if_write_ce & if_write;
    assign pop        = empty_n & if_read_ce & if_read;
    always @(posedge clk) begin
        if (reset)
            addr <= {SRL_AWIDTH{1'b0}};
        else if (push & ~pop && empty_n)
            addr <= addr + 1'b1;
        else if (~push & pop && (mOutPtr != 1))
            addr <= addr - 1'b1;
    end
    always @(posedge clk) begin
        if (reset)
            mOutPtr <= {SRL_AWIDTH+1{1'b0}};
        else if (push & ~pop)
            mOutPtr <= mOutPtr + 1'b1;
        else if (~push & pop)
            mOutPtr <= mOutPtr - 1'b1;
    end
    always @(posedge clk) begin
        if (reset)
            full_n <= 1'b1;
        else if ((push & ~pop) && (mOutPtr == DEPTH - 1))
            full_n <= 1'b0;
        else if (~push & pop)
            full_n <= 1'b1;
    end
    always @(posedge clk) begin
        if (reset)
            empty_n <= 1'b0;
        else if (push & ~pop)
            empty_n <= 1'b1;
        else if ((~push & pop) && (mOutPtr == 1))
            empty_n <= 1'b0;
    end
endmodule  
