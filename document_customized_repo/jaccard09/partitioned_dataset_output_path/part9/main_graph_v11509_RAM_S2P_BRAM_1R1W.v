
module main_graph_v11509_RAM_S2P_BRAM_1R1W #(parameterDataWidth    = 7,AddressRange = 32,AddressWidth = 5,BufferCount  = 2,MemLatency   = 1,IndexWidth   = 1) (input  wire                    i_ce,input  wire                    i_write,output wire                    i_full_n,input  wire                    i_ce0,input  wire [AddressWidth-1:0] i_address0,output wire [DataWidth-1:0]    i_q0,input  wire                    i_ce1,input  wire                     i_we1,input  wire [AddressWidth-1:0] i_address1,input  wire [DataWidth-1:0]    i_d1,input  wire                    t_ce,input  wire                    t_read,output wire                    t_empty_n,input  wire                    t_ce0,input  wire [AddressWidth-1:0] t_address0,output wire [DataWidth-1:0]    t_q0,input  wire                    t_ce1,input  wire                     t_we1,input  wire [AddressWidth-1:0] t_address1,input  wire [DataWidth-1:0]    t_d1,input  wire                    clk,input  wire                    reset); 
reg  [IndexWidth-1:0]   iptr    = 1'b0; 
reg  [IndexWidth-1:0]   tptr    = 1'b0; 
reg  [IndexWidth-1:0]   prev_iptr    = 1'b0; 
reg  [IndexWidth-1:0]   prev_tptr    = 1'b0; 
reg  [DataWidth-1:0]    reg_q0      = 1'b0; 
reg                     reg_valid0    = 1'b0; 
reg  [DataWidth-1:0]    reg_q1      = 1'b0; 
reg                     reg_valid1    = 1'b0; 
reg  [IndexWidth:0]     count   = 1'b0; 
reg                     full_n  = 1'b1; 
reg                     empty_n = 1'b0; 
wire                    push_buf;       
wire                    write_buf;      
wire                    pop_buf;        
wire                    buf_ce0[0:BufferCount-1];
wire [AddressWidth-1:0] buf_a0[0:BufferCount-1];
wire [DataWidth-1:0]    buf_q0[0:BufferCount-1];
wire                    buf_ce1[0:BufferCount-1];
wire                    buf_we1[0:BufferCount-1];
wire [AddressWidth-1:0] buf_a1[0:BufferCount-1];
wire [DataWidth-1:0]    buf_d1[0:BufferCount-1];
genvar i;
generate
    for (i = 0; i < BufferCount; i = i + 1) begin : gen_buffer
main_graph_v11509_RAM_S2P_BRAM_1R1W_memcore main_graph_v11509_RAM_S2P_BRAM_1R1W_memcore_U (.ce0      ( buf_ce0[i] ),.address0 ( buf_a0[i] ),.q0       ( buf_q0[i] ),.ce1      ( buf_ce1[i] ),.we1      ( buf_we1[i] ),.address1 ( buf_a1[i] ),.d1       ( buf_d1[i] ),.clk      ( clk ),.reset    ( reset ));
    end
endgenerate
generate
    for (i = 0; i < BufferCount; i = i + 1) begin : connect_buffer
assign buf_ce0[i] = (tptr == i && empty_n) ? t_ce0
                             : (iptr == i) ? i_ce0 : 1'b0;
assign buf_a0[i]  = (tptr == i && empty_n) ?  t_address0 : i_address0;
assign buf_ce1[i] = (tptr == i && empty_n) ? t_ce1
                             : (iptr == i) ? i_ce1 : 1'b0;
assign buf_a1[i]  = (tptr == i && empty_n) ?  t_address1 : i_address1;
assign buf_we1[i] = (tptr == i && empty_n)  ? t_we1
                             : (iptr == i) ? i_we1 : 1'b0;
assign buf_d1[i]  = (tptr == i && empty_n) ? t_d1       : i_d1;
    end
endgenerate
assign i_q0      = buf_q0[prev_iptr];
assign t_q0      = reg_valid0 ? reg_q0 : buf_q0[prev_tptr];
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
        prev_iptr <= 1'b0;
    else begin
        prev_iptr <= iptr;
    end
end
always @(posedge clk) begin
    if (reset == 1'b1)
        prev_tptr <= 1'b0;
    else begin
        prev_tptr <= tptr;
    end
end
always @(posedge clk) begin
    if (reset == 1'b1) begin
        reg_q0     <= 1'b0;
        reg_valid0 <= 1'b0;
    end else if (!t_ce0 && !reg_valid0) begin
        reg_q0     <= buf_q0[prev_tptr];
        reg_valid0 <= 1'b1;
    end else if (t_ce0) begin
        reg_valid0 <= 1'b0;
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
