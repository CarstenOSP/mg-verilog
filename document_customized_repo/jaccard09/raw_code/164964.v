module forward_dataflow_in_loop_VITIS_LOOP_14333_1_v9170_RAM_T2P_BRAM_1R1W #(parameterDataWidth    = 8,AddressRange = 256,AddressWidth = 8,BufferCount  = 2,IndexWidth   = 1) (input  wire                    i_ce,input  wire                    i_write,output wire                    i_full_n,input  wire                    i_ce0,input  wire                     i_we0,input  wire [AddressWidth-1:0] i_address0,input  wire [DataWidth-1:0]    i_d0,output wire [DataWidth-1:0]    i_q0,input  wire                    t_ce,input  wire                    t_read,output wire                    t_empty_n,input  wire                    t_ce0,input  wire                    t_we0,input  wire [AddressWidth-1:0] t_address0,input  wire [DataWidth-1:0]    t_d0,output wire [DataWidth-1:0]    t_q0,input  wire                    clk,input  wire                    reset);
reg  [IndexWidth-1:0]   iptr    = 1'b0; 
reg  [IndexWidth-1:0]   tptr    = 1'b0; 
reg  [IndexWidth:0]     count   = 1'b0; 
reg                     full_n  = 1'b1; 
reg                     empty_n = 1'b0; 
wire                    push_buf;       
wire                    write_buf;      
wire                    pop_buf;        
wire [AddressWidth+IndexWidth-1:0]   memcore_iaddr;
wire [AddressWidth+IndexWidth-1:0]   memcore_taddr;
assign memcore_iaddr = {i_address0, iptr};
assign memcore_taddr = {t_address0, tptr};
forward_dataflow_in_loop_VITIS_LOOP_14333_1_v9170_RAM_T2P_BRAM_1R1W_memcore forward_dataflow_in_loop_VITIS_LOOP_14333_1_v9170_RAM_T2P_BRAM_1R1W_memcore_U (.ce0      ( i_ce0 ),.we0      ( i_we0),.address0 ( memcore_iaddr ),.d0       ( i_d0 ),.q0       ( i_q0 ),.ce1      ( t_ce0 ),.we1      ( t_we0),.address1 ( memcore_taddr ),.d1       ( t_d0 ),.q1       ( t_q0 ),.clk      ( clk ),.reset    ( reset ));
assign i_full_n  = full_n;
assign t_empty_n = empty_n;
assign push_buf = i_ce & i_write & full_n;
assign write_buf = i_ce & i_write;
assign pop_buf  = t_ce & t_read & empty_n;
always @(posedge clk) begin
    if (reset == 1'b1)
        iptr <= 1'b0;
    else if (push_buf) begin
        if (iptr == BufferCount - 1'b1)
            iptr <= 1'b0;
        else
            iptr <= iptr + 1'b1;
    end
end
always @(posedge clk) begin
    if (reset == 1'b1)
        tptr <= 1'b0;
    else if (pop_buf) begin
        if (tptr == BufferCount - 1'b1)
            tptr <= 1'b0;
        else
            tptr <= tptr + 1'b1;
    end
end
always @(posedge clk) begin
    if (reset == 1'b1)
        count <= 1'b0;
    else if (push_buf && !pop_buf)
        count <= count + 1'b1;
    else if (!push_buf && pop_buf)
        count <= count - 1'b1;
end
always @(posedge clk) begin
    if (reset == 1'b1)
        full_n <= 1'b1;
    else if (push_buf && !pop_buf && count == BufferCount - 2'd2)
        full_n <= 1'b0;
    else if (!push_buf && pop_buf)
        full_n <= 1'b1;
end
always @(posedge clk) begin
    if (reset == 1'b1)
        empty_n <= 1'b0;
else if ((!write_buf && pop_buf && count == 1'b1)|| (pop_buf && count == 1'b0))
        empty_n <= 1'b0;
    else if (write_buf && !pop_buf)
        empty_n <= 1'b1;
end
endmodule