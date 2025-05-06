
module forward_dataflow_in_loop_VITIS_LOOP_126_1 (ap_clk,ap_rst,v45_0,v9172_address0,v9172_ce0,v9172_d0,v9172_q0,v9172_we0,v9172_address1,v9172_ce1,v9172_d1,v9172_q1,v9172_we1,v40_0_address0,v40_0_ce0,v40_0_d0,v40_0_q0,v40_0_we0,v40_0_address1,v40_0_ce1,v40_0_d1,v40_0_q1,v40_0_we1,v40_1_address0,v40_1_ce0,v40_1_d0,v40_1_q0,v40_1_we0,v40_1_address1,v40_1_ce1,v40_1_d1,v40_1_q1,v40_1_we1,v9193_0_address0,v9193_0_ce0,v9193_0_d0,v9193_0_q0,v9193_0_we0,v9193_0_address1,v9193_0_ce1,v9193_0_d1,v9193_0_q1,v9193_0_we1,v9193_1_address0,v9193_1_ce0,v9193_1_d0,v9193_1_q0,v9193_1_we0,v9193_1_address1,v9193_1_ce1,v9193_1_d1,v9193_1_q1,v9193_1_we1,v45_0_ap_vld,ap_start,v40_0_empty_n,v40_0_read,v40_1_empty_n,v40_1_read,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [9:0] v45_0;
output  [9:0] v9172_address0;
output   v9172_ce0;
output  [7:0] v9172_d0;
input  [7:0] v9172_q0;
output   v9172_we0;
output  [9:0] v9172_address1;
output   v9172_ce1;
output  [7:0] v9172_d1;
input  [7:0] v9172_q1;
output   v9172_we1;
output  [7:0] v40_0_address0;
output   v40_0_ce0;
output  [7:0] v40_0_d0;
input  [7:0] v40_0_q0;
output   v40_0_we0;
output  [7:0] v40_0_address1;
output   v40_0_ce1;
output  [7:0] v40_0_d1;
input  [7:0] v40_0_q1;
output   v40_0_we1;
output  [7:0] v40_1_address0;
output   v40_1_ce0;
output  [7:0] v40_1_d0;
input  [7:0] v40_1_q0;
output   v40_1_we0;
output  [7:0] v40_1_address1;
output   v40_1_ce1;
output  [7:0] v40_1_d1;
input  [7:0] v40_1_q1;
output   v40_1_we1;
output  [17:0] v9193_0_address0;
output   v9193_0_ce0;
output  [7:0] v9193_0_d0;
input  [7:0] v9193_0_q0;
output   v9193_0_we0;
output  [17:0] v9193_0_address1;
output   v9193_0_ce1;
output  [7:0] v9193_0_d1;
input  [7:0] v9193_0_q1;
output   v9193_0_we1;
output  [17:0] v9193_1_address0;
output   v9193_1_ce0;
output  [7:0] v9193_1_d0;
input  [7:0] v9193_1_q0;
output   v9193_1_we0;
output  [17:0] v9193_1_address1;
output   v9193_1_ce1;
output  [7:0] v9193_1_d1;
input  [7:0] v9193_1_q1;
output   v9193_1_we1;
input   v45_0_ap_vld;
input   ap_start;
input   v40_0_empty_n;
output   v40_0_read;
input   v40_1_empty_n;
output   v40_1_read;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v49_i_q0;
wire   [7:0] v49_t_q0;
wire   [7:0] v49_1_i_q0;
wire   [7:0] v49_1_t_q0;
wire   [7:0] v48_i_q0;
wire   [7:0] v48_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_ready;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_address0;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_ce0;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_d0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_1_d0;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v9193_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v9193_0_ce0;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v9193_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v9193_1_ce0;
wire    ap_channel_done_v49_1;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_1_full_n;
reg    ap_sync_reg_channel_write_v49_1;
wire    ap_sync_channel_write_v49_1;
wire    ap_channel_done_v49;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_full_n;
reg    ap_sync_reg_channel_write_v49;
wire    ap_sync_channel_write_v49;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v40_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v40_0_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v40_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v40_1_ce0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v49_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v49_1_ce0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v49_address0;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v49_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v48_address0;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v48_ce0;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v48_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v48_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_return;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v40_0_write;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v40_1_write;
wire    ap_channel_done_v45_0_c_channel1;
wire    v45_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v45_0_c_channel1;
wire    ap_sync_channel_write_v45_0_c_channel1;
wire    ap_channel_done_v48;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v48_full_n;
reg    ap_sync_reg_channel_write_v48;
wire    ap_sync_channel_write_v48;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_ready;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_v48_address0;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_v48_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_v9172_address0;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_v9172_ce0;
wire    dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_v9172_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_v9172_d0;
wire    v49_i_full_n;
wire    v49_t_empty_n;
wire    v49_1_i_full_n;
wire    v49_1_t_empty_n;
wire    v48_i_full_n;
wire    v48_t_empty_n;
wire   [9:0] v45_0_c_channel1_dout;
wire   [2:0] v45_0_c_channel1_num_data_valid;
wire   [2:0] v45_0_c_channel1_fifo_cap;
wire    v45_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v49_1 = 1'b0;
#0 ap_sync_reg_channel_write_v49 = 1'b0;
#0 ap_sync_reg_channel_write_v45_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v48 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_126_1_v49_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 400 ),.AddressWidth( 9 ))
v49_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_d0),.i_q0(v49_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v49_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v49_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v49_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v49_i_full_n),.i_write(ap_channel_done_v49),.t_empty_n(v49_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_126_1_v49_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 400 ),.AddressWidth( 9 ))
v49_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_1_d0),.i_q0(v49_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v49_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v49_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v49_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v49_1_i_full_n),.i_write(ap_channel_done_v49_1),.t_empty_n(v49_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_126_1_v48_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 25 ),.AddressWidth( 5 ))
v48_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v48_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v48_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v48_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v48_d0),.i_q0(v48_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_v48_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_v48_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v48_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v48_i_full_n),.i_write(ap_channel_done_v48),.t_empty_n(v48_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27 dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_ready),.v49_address0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_address0),.v49_ce0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_ce0),.v49_we0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_we0),.v49_d0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_d0),.v49_1_address0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_1_address0),.v49_1_ce0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_1_ce0),.v49_1_we0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_1_we0),.v49_1_d0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_1_d0),.v45_0(v45_0),.v9193_0_address0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v9193_0_address0),.v9193_0_ce0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v9193_0_ce0),.v9193_0_q0(v9193_0_q0),.v9193_1_address0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v9193_1_address0),.v9193_1_ce0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v9193_1_ce0),.v9193_1_q0(v9193_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready),.v45_0(v45_0),.v40_0_address0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v40_0_address0),.v40_0_ce0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v40_0_ce0),.v40_0_q0(v40_0_q0),.v40_1_address0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v40_1_address0),.v40_1_ce0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v40_1_ce0),.v40_1_q0(v40_1_q0),.v49_1_address0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v49_1_address0),.v49_1_ce0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v49_1_ce0),.v49_1_q0(v49_1_t_q0),.v49_address0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v49_address0),.v49_ce0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v49_ce0),.v49_q0(v49_t_q0),.v48_address0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v48_address0),.v48_ce0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v48_ce0),.v48_we0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v48_we0),.v48_d0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v48_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_ready),.v48_address0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_v48_address0),.v48_ce0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_v48_ce0),.v48_q0(v48_t_q0),.p_read(v45_0_c_channel1_dout),.v9172_address0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_v9172_address0),.v9172_ce0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_v9172_ce0),.v9172_we0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_v9172_we0),.v9172_d0(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_v9172_d0));
forward_fifo_w10_d2_S_x1 v45_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_return),.if_full_n(v45_0_c_channel1_full_n),.if_write(ap_channel_done_v45_0_c_channel1),.if_dout(v45_0_c_channel1_dout),.if_num_data_valid(v45_0_c_channel1_num_data_valid),.if_fifo_cap(v45_0_c_channel1_fifo_cap),.if_empty_n(v45_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v45_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v45_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v45_0_c_channel1 <= ap_sync_channel_write_v45_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v48 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v48 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v48 <= ap_sync_channel_write_v48;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v49 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_done & dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v49 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v49 <= ap_sync_channel_write_v49;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v49_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_done & dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v49_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v49_1 <= ap_sync_channel_write_v49_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v45_0_c_channel1 = ((ap_sync_reg_channel_write_v45_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_done);
assign ap_channel_done_v48 = ((ap_sync_reg_channel_write_v48 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_done);
assign ap_channel_done_v49 = ((ap_sync_reg_channel_write_v49 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_done);
assign ap_channel_done_v49_1 = ((ap_sync_reg_channel_write_v49_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_done;
assign ap_idle = ((v45_0_c_channel1_empty_n ^ 1'b1) & (v48_t_empty_n ^ 1'b1) & (v49_1_t_empty_n ^ 1'b1) & (v49_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v45_0_c_channel1 = ((v45_0_c_channel1_full_n & ap_channel_done_v45_0_c_channel1) | ap_sync_reg_channel_write_v45_0_c_channel1);
assign ap_sync_channel_write_v48 = ((dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v48_full_n & ap_channel_done_v48) | ap_sync_reg_channel_write_v48);
assign ap_sync_channel_write_v49 = ((dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_full_n & ap_channel_done_v49) | ap_sync_reg_channel_write_v49);
assign ap_sync_channel_write_v49_1 = ((dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_1_full_n & ap_channel_done_v49_1) | ap_sync_reg_channel_write_v49_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_start = (v48_t_empty_n & v45_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_continue = (ap_sync_channel_write_v48 & ap_sync_channel_write_v45_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_start = (v49_t_empty_n & v49_1_t_empty_n & (ap_sync_reg_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v40_0_write = 1'b0;
assign dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v40_1_write = 1'b0;
assign dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v48_full_n = v48_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_continue = (ap_sync_channel_write_v49_1 & ap_sync_channel_write_v49);
assign dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_1_full_n = v49_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v49_full_n = v49_i_full_n;
assign v40_0_address0 = dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v40_0_address0;
assign v40_0_address1 = 8'd0;
assign v40_0_ce0 = dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v40_0_ce0;
assign v40_0_ce1 = 1'b0;
assign v40_0_d0 = 8'd0;
assign v40_0_d1 = 8'd0;
assign v40_0_read = dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v40_0_write;
assign v40_0_we0 = 1'b0;
assign v40_0_we1 = 1'b0;
assign v40_1_address0 = dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v40_1_address0;
assign v40_1_address1 = 8'd0;
assign v40_1_ce0 = dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v40_1_ce0;
assign v40_1_ce1 = 1'b0;
assign v40_1_d0 = 8'd0;
assign v40_1_d1 = 8'd0;
assign v40_1_read = dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_57_1_proc_U0_v40_1_write;
assign v40_1_we0 = 1'b0;
assign v40_1_we1 = 1'b0;
assign v9172_address0 = dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_v9172_address0;
assign v9172_address1 = 10'd0;
assign v9172_ce0 = dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_v9172_ce0;
assign v9172_ce1 = 1'b0;
assign v9172_d0 = dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_v9172_d0;
assign v9172_d1 = 8'd0;
assign v9172_we0 = dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_28_1_proc_U0_v9172_we0;
assign v9172_we1 = 1'b0;
assign v9193_0_address0 = dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v9193_0_address0;
assign v9193_0_address1 = 18'd0;
assign v9193_0_ce0 = dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v9193_0_ce0;
assign v9193_0_ce1 = 1'b0;
assign v9193_0_d0 = 8'd0;
assign v9193_0_d1 = 8'd0;
assign v9193_0_we0 = 1'b0;
assign v9193_0_we1 = 1'b0;
assign v9193_1_address0 = dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v9193_1_address0;
assign v9193_1_address1 = 18'd0;
assign v9193_1_ce0 = dataflow_in_loop_VITIS_LOOP_126_1_Loop_VITIS_LOOP_99_1_proc27_U0_v9193_1_ce0;
assign v9193_1_ce1 = 1'b0;
assign v9193_1_d0 = 8'd0;
assign v9193_1_d1 = 8'd0;
assign v9193_1_we0 = 1'b0;
assign v9193_1_we1 = 1'b0;
endmodule 
