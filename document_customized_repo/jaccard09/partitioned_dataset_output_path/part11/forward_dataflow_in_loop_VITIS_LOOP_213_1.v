
module forward_dataflow_in_loop_VITIS_LOOP_213_1 (ap_clk,ap_rst,v83_0,v82_0_address0,v82_0_ce0,v82_0_d0,v82_0_q0,v82_0_we0,v82_0_address1,v82_0_ce1,v82_0_d1,v82_0_q1,v82_0_we1,v82_1_address0,v82_1_ce0,v82_1_d0,v82_1_q0,v82_1_we0,v82_1_address1,v82_1_ce1,v82_1_d1,v82_1_q1,v82_1_we1,v9275_0_address0,v9275_0_ce0,v9275_0_d0,v9275_0_q0,v9275_0_we0,v9275_0_address1,v9275_0_ce1,v9275_0_d1,v9275_0_q1,v9275_0_we1,v9275_1_address0,v9275_1_ce0,v9275_1_d0,v9275_1_q0,v9275_1_we0,v9275_1_address1,v9275_1_ce1,v9275_1_d1,v9275_1_q1,v9275_1_we1,v83_0_ap_vld,ap_start,v82_0_full_n,v82_0_write,v82_1_full_n,v82_1_write,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [9:0] v83_0;
output  [7:0] v82_0_address0;
output   v82_0_ce0;
output  [7:0] v82_0_d0;
input  [7:0] v82_0_q0;
output   v82_0_we0;
output  [7:0] v82_0_address1;
output   v82_0_ce1;
output  [7:0] v82_0_d1;
input  [7:0] v82_0_q1;
output   v82_0_we1;
output  [7:0] v82_1_address0;
output   v82_1_ce0;
output  [7:0] v82_1_d0;
input  [7:0] v82_1_q0;
output   v82_1_we0;
output  [7:0] v82_1_address1;
output   v82_1_ce1;
output  [7:0] v82_1_d1;
input  [7:0] v82_1_q1;
output   v82_1_we1;
output  [13:0] v9275_0_address0;
output   v9275_0_ce0;
output  [7:0] v9275_0_d0;
input  [7:0] v9275_0_q0;
output   v9275_0_we0;
output  [13:0] v9275_0_address1;
output   v9275_0_ce1;
output  [7:0] v9275_0_d1;
input  [7:0] v9275_0_q1;
output   v9275_0_we1;
output  [13:0] v9275_1_address0;
output   v9275_1_ce0;
output  [7:0] v9275_1_d0;
input  [7:0] v9275_1_q0;
output   v9275_1_we0;
output  [13:0] v9275_1_address1;
output   v9275_1_ce1;
output  [7:0] v9275_1_d1;
input  [7:0] v9275_1_q1;
output   v9275_1_we1;
input   v83_0_ap_vld;
input   ap_start;
input   v82_0_full_n;
output   v82_0_write;
input   v82_1_full_n;
output   v82_1_write;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v87_i_q0;
wire   [7:0] v87_t_q0;
wire   [7:0] v87_1_i_q0;
wire   [7:0] v87_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_address0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_ce0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_1_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v9275_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v9275_0_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v9275_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v9275_1_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_return;
wire    ap_channel_done_v83_0_c_channel1;
wire    v83_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v83_0_c_channel1;
wire    ap_sync_channel_write_v83_0_c_channel1;
wire    ap_channel_done_v87_1;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_1_full_n;
reg    ap_sync_reg_channel_write_v87_1;
wire    ap_sync_channel_write_v87_1;
wire    ap_channel_done_v87;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_full_n;
reg    ap_sync_reg_channel_write_v87;
wire    ap_sync_channel_write_v87;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v87_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v87_1_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_d0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_address1;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_ce1;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v87_address0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v87_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_d0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_address1;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_ce1;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_write;
wire    dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_write;
wire    v87_i_full_n;
wire    v87_t_empty_n;
wire    v87_1_i_full_n;
wire    v87_1_t_empty_n;
wire   [9:0] v83_0_c_channel1_dout;
wire   [2:0] v83_0_c_channel1_num_data_valid;
wire   [2:0] v83_0_c_channel1_fifo_cap;
wire    v83_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v83_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v87_1 = 1'b0;
#0 ap_sync_reg_channel_write_v87 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_3276_1_v2314_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v87_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_d0),.i_q0(v87_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v87_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v87_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v87_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v87_i_full_n),.i_write(ap_channel_done_v87),.t_empty_n(v87_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_3276_1_v2314_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v87_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_1_d0),.i_q0(v87_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v87_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v87_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v87_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v87_1_i_full_n),.i_write(ap_channel_done_v87_1),.t_empty_n(v87_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_ready),.v87_address0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_address0),.v87_ce0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_ce0),.v87_we0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_we0),.v87_d0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_d0),.v87_1_address0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_1_address0),.v87_1_ce0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_1_ce0),.v87_1_we0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_1_we0),.v87_1_d0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_1_d0),.v83_0(v83_0),.v9275_0_address0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v9275_0_address0),.v9275_0_ce0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v9275_0_ce0),.v9275_0_q0(v9275_0_q0),.v9275_1_address0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v9275_1_address0),.v9275_1_ce0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v9275_1_ce0),.v9275_1_q0(v9275_1_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_ready),.p_read(v83_0_c_channel1_dout),.v87_1_address0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v87_1_address0),.v87_1_ce0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v87_1_ce0),.v87_1_q0(v87_1_t_q0),.v82_0_address0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_address0),.v82_0_ce0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_ce0),.v82_0_we0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_we0),.v82_0_d0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_d0),.v82_0_address1(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_address1),.v82_0_ce1(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_ce1),.v82_0_q1(v82_0_q1),.v87_address0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v87_address0),.v87_ce0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v87_ce0),.v87_q0(v87_t_q0),.v82_1_address0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_address0),.v82_1_ce0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_ce0),.v82_1_we0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_we0),.v82_1_d0(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_d0),.v82_1_address1(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_address1),.v82_1_ce1(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_ce1),.v82_1_q1(v82_1_q1));
forward_fifo_w10_d2_S_x0 v83_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_return),.if_full_n(v83_0_c_channel1_full_n),.if_write(ap_channel_done_v83_0_c_channel1),.if_dout(v83_0_c_channel1_dout),.if_num_data_valid(v83_0_c_channel1_num_data_valid),.if_fifo_cap(v83_0_c_channel1_fifo_cap),.if_empty_n(v83_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v83_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v83_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v83_0_c_channel1 <= ap_sync_channel_write_v83_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v87 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v87 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v87 <= ap_sync_channel_write_v87;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v87_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v87_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v87_1 <= ap_sync_channel_write_v87_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v83_0_c_channel1 = ((ap_sync_reg_channel_write_v83_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_done);
assign ap_channel_done_v87 = ((ap_sync_reg_channel_write_v87 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_done);
assign ap_channel_done_v87_1 = ((ap_sync_reg_channel_write_v87_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_done;
assign ap_idle = ((v83_0_c_channel1_empty_n ^ 1'b1) & (v87_1_t_empty_n ^ 1'b1) & (v87_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v83_0_c_channel1 = ((v83_0_c_channel1_full_n & ap_channel_done_v83_0_c_channel1) | ap_sync_reg_channel_write_v83_0_c_channel1);
assign ap_sync_channel_write_v87 = ((dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_full_n & ap_channel_done_v87) | ap_sync_reg_channel_write_v87);
assign ap_sync_channel_write_v87_1 = ((dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_1_full_n & ap_channel_done_v87_1) | ap_sync_reg_channel_write_v87_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_start = (v87_t_empty_n & v87_1_t_empty_n & v83_0_c_channel1_empty_n & (ap_sync_reg_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_write = 1'b0;
assign dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_write = 1'b0;
assign dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_continue = (ap_sync_channel_write_v87_1 & ap_sync_channel_write_v87 & ap_sync_channel_write_v83_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_1_full_n = v87_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v87_full_n = v87_i_full_n;
assign v82_0_address0 = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_address0;
assign v82_0_address1 = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_address1;
assign v82_0_ce0 = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_ce0;
assign v82_0_ce1 = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_ce1;
assign v82_0_d0 = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_d0;
assign v82_0_d1 = 8'd0;
assign v82_0_we0 = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_we0;
assign v82_0_we1 = 1'b0;
assign v82_0_write = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_0_write;
assign v82_1_address0 = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_address0;
assign v82_1_address1 = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_address1;
assign v82_1_ce0 = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_ce0;
assign v82_1_ce1 = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_ce1;
assign v82_1_d0 = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_d0;
assign v82_1_d1 = 8'd0;
assign v82_1_we0 = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_we0;
assign v82_1_we1 = 1'b0;
assign v82_1_write = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_157_1_proc_U0_v82_1_write;
assign v9275_0_address0 = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v9275_0_address0;
assign v9275_0_address1 = 14'd0;
assign v9275_0_ce0 = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v9275_0_ce0;
assign v9275_0_ce1 = 1'b0;
assign v9275_0_d0 = 8'd0;
assign v9275_0_d1 = 8'd0;
assign v9275_0_we0 = 1'b0;
assign v9275_0_we1 = 1'b0;
assign v9275_1_address0 = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v9275_1_address0;
assign v9275_1_address1 = 14'd0;
assign v9275_1_ce0 = dataflow_in_loop_VITIS_LOOP_213_1_Loop_VITIS_LOOP_193_1_proc_U0_v9275_1_ce0;
assign v9275_1_ce1 = 1'b0;
assign v9275_1_d0 = 8'd0;
assign v9275_1_d1 = 8'd0;
assign v9275_1_we0 = 1'b0;
assign v9275_1_we1 = 1'b0;
endmodule 
