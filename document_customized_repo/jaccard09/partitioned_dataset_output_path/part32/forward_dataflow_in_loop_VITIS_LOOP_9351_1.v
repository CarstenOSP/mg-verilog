
module forward_dataflow_in_loop_VITIS_LOOP_9351_1 (ap_clk,ap_rst,v7294_0,v9015_1_address0,v9015_1_ce0,v9015_1_d0,v9015_1_q0,v9015_1_we0,v9015_1_address1,v9015_1_ce1,v9015_1_d1,v9015_1_q1,v9015_1_we1,v9015_0_address0,v9015_0_ce0,v9015_0_d0,v9015_0_q0,v9015_0_we0,v9015_0_address1,v9015_0_ce1,v9015_0_d1,v9015_0_q1,v9015_0_we1,v9016_0_address0,v9016_0_ce0,v9016_0_d0,v9016_0_q0,v9016_0_we0,v9016_0_address1,v9016_0_ce1,v9016_0_d1,v9016_0_q1,v9016_0_we1,v9016_1_address0,v9016_1_ce0,v9016_1_d0,v9016_1_q0,v9016_1_we0,v9016_1_address1,v9016_1_ce1,v9016_1_d1,v9016_1_q1,v9016_1_we1,v9014_0_address0,v9014_0_ce0,v9014_0_d0,v9014_0_q0,v9014_0_we0,v9014_0_address1,v9014_0_ce1,v9014_0_d1,v9014_0_q1,v9014_0_we1,v9014_1_address0,v9014_1_ce0,v9014_1_d0,v9014_1_q0,v9014_1_we0,v9014_1_address1,v9014_1_ce1,v9014_1_d1,v9014_1_q1,v9014_1_we1,v7294_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [6:0] v7294_0;
output  [17:0] v9015_1_address0;
output   v9015_1_ce0;
output  [7:0] v9015_1_d0;
input  [7:0] v9015_1_q0;
output   v9015_1_we0;
output  [17:0] v9015_1_address1;
output   v9015_1_ce1;
output  [7:0] v9015_1_d1;
input  [7:0] v9015_1_q1;
output   v9015_1_we1;
output  [17:0] v9015_0_address0;
output   v9015_0_ce0;
output  [7:0] v9015_0_d0;
input  [7:0] v9015_0_q0;
output   v9015_0_we0;
output  [17:0] v9015_0_address1;
output   v9015_0_ce1;
output  [7:0] v9015_0_d1;
input  [7:0] v9015_0_q1;
output   v9015_0_we1;
output  [17:0] v9016_0_address0;
output   v9016_0_ce0;
output  [7:0] v9016_0_d0;
input  [7:0] v9016_0_q0;
output   v9016_0_we0;
output  [17:0] v9016_0_address1;
output   v9016_0_ce1;
output  [7:0] v9016_0_d1;
input  [7:0] v9016_0_q1;
output   v9016_0_we1;
output  [17:0] v9016_1_address0;
output   v9016_1_ce0;
output  [7:0] v9016_1_d0;
input  [7:0] v9016_1_q0;
output   v9016_1_we0;
output  [17:0] v9016_1_address1;
output   v9016_1_ce1;
output  [7:0] v9016_1_d1;
input  [7:0] v9016_1_q1;
output   v9016_1_we1;
output  [19:0] v9014_0_address0;
output   v9014_0_ce0;
output  [7:0] v9014_0_d0;
input  [7:0] v9014_0_q0;
output   v9014_0_we0;
output  [19:0] v9014_0_address1;
output   v9014_0_ce1;
output  [7:0] v9014_0_d1;
input  [7:0] v9014_0_q1;
output   v9014_0_we1;
output  [19:0] v9014_1_address0;
output   v9014_1_ce0;
output  [7:0] v9014_1_d0;
input  [7:0] v9014_1_q0;
output   v9014_1_we0;
output  [19:0] v9014_1_address1;
output   v9014_1_ce1;
output  [7:0] v9014_1_d1;
input  [7:0] v9014_1_q1;
output   v9014_1_we1;
input   v7294_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v7302_i_q0;
wire   [7:0] v7302_t_q0;
wire   [7:0] v7302_1_i_q0;
wire   [7:0] v7302_1_t_q0;
wire   [7:0] v7301_i_q0;
wire   [7:0] v7301_t_q0;
wire   [7:0] v7301_1_i_q0;
wire   [7:0] v7301_1_t_q0;
wire   [7:0] v7300_i_q0;
wire   [7:0] v7300_t_q0;
wire   [7:0] v7300_1_i_q0;
wire   [7:0] v7300_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_address0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_1_d0;
wire   [19:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v9014_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v9014_0_ce0;
wire   [19:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v9014_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v9014_1_ce0;
wire   [6:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_return;
wire    ap_channel_done_v7294_0_c_channel1;
wire    v7294_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v7294_0_c_channel1;
wire    ap_sync_channel_write_v7294_0_c_channel1;
wire    ap_channel_done_v7301_1;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_1_full_n;
reg    ap_sync_reg_channel_write_v7301_1;
wire    ap_sync_channel_write_v7301_1;
wire    ap_channel_done_v7301;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_full_n;
reg    ap_sync_reg_channel_write_v7301;
wire    ap_sync_channel_write_v7301;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_address0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_1_d0;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v9016_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v9016_0_ce0;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v9016_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v9016_1_ce0;
wire    ap_channel_done_v7300_1;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_1_full_n;
reg    ap_sync_reg_channel_write_v7300_1;
wire    ap_sync_channel_write_v7300_1;
wire    ap_channel_done_v7300;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_full_n;
reg    ap_sync_reg_channel_write_v7300;
wire    ap_sync_channel_write_v7300;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_address0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_1_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7301_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7301_1_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7300_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7300_1_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7301_address0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7301_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7300_address0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7300_ce0;
wire    ap_channel_done_v7302_1;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_1_full_n;
reg    ap_sync_reg_channel_write_v7302_1;
wire    ap_sync_channel_write_v7302_1;
wire    ap_channel_done_v7302;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_full_n;
reg    ap_sync_reg_channel_write_v7302;
wire    ap_sync_channel_write_v7302;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_ap_ready;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_1_d0;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_0_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v7302_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v7302_1_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v7302_address0;
wire    dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v7302_ce0;
wire    v7301_i_full_n;
wire    v7301_t_empty_n;
wire    v7301_1_i_full_n;
wire    v7301_1_t_empty_n;
wire    v7300_i_full_n;
wire    v7300_t_empty_n;
wire    v7300_1_i_full_n;
wire    v7300_1_t_empty_n;
wire    v7302_i_full_n;
wire    v7302_t_empty_n;
wire    v7302_1_i_full_n;
wire    v7302_1_t_empty_n;
wire   [6:0] v7294_0_c_channel1_dout;
wire   [2:0] v7294_0_c_channel1_num_data_valid;
wire   [2:0] v7294_0_c_channel1_fifo_cap;
wire    v7294_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v7294_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v7301_1 = 1'b0;
#0 ap_sync_reg_channel_write_v7301 = 1'b0;
#0 ap_sync_reg_channel_write_v7300_1 = 1'b0;
#0 ap_sync_reg_channel_write_v7300 = 1'b0;
#0 ap_sync_reg_channel_write_v7302_1 = 1'b0;
#0 ap_sync_reg_channel_write_v7302 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_9351_1_v7302_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 11664 ),.AddressWidth( 14 ))
v7302_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_d0),.i_q0(v7302_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v7302_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v7302_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v7302_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v7302_i_full_n),.i_write(ap_channel_done_v7302),.t_empty_n(v7302_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9351_1_v7302_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 11664 ),.AddressWidth( 14 ))
v7302_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_1_d0),.i_q0(v7302_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v7302_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v7302_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v7302_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v7302_1_i_full_n),.i_write(ap_channel_done_v7302_1),.t_empty_n(v7302_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9351_1_v7302_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 11664 ),.AddressWidth( 14 ))
v7301_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_d0),.i_q0(v7301_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7301_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7301_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v7301_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v7301_i_full_n),.i_write(ap_channel_done_v7301),.t_empty_n(v7301_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9351_1_v7302_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 11664 ),.AddressWidth( 14 ))
v7301_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_1_d0),.i_q0(v7301_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7301_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7301_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v7301_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v7301_1_i_full_n),.i_write(ap_channel_done_v7301_1),.t_empty_n(v7301_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9351_1_v7302_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 11664 ),.AddressWidth( 14 ))
v7300_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_d0),.i_q0(v7300_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7300_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7300_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v7300_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v7300_i_full_n),.i_write(ap_channel_done_v7300),.t_empty_n(v7300_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9351_1_v7302_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 11664 ),.AddressWidth( 14 ))
v7300_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_1_d0),.i_q0(v7300_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7300_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7300_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v7300_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v7300_1_i_full_n),.i_write(ap_channel_done_v7300_1),.t_empty_n(v7300_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30 dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_ready),.v7301_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_address0),.v7301_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_ce0),.v7301_we0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_we0),.v7301_d0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_d0),.v7301_1_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_1_address0),.v7301_1_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_1_ce0),.v7301_1_we0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_1_we0),.v7301_1_d0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_1_d0),.v7294_0(v7294_0),.v9014_0_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v9014_0_address0),.v9014_0_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v9014_0_ce0),.v9014_0_q0(v9014_0_q0),.v9014_1_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v9014_1_address0),.v9014_1_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v9014_1_ce0),.v9014_1_q0(v9014_1_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29 dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_ready),.v7300_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_address0),.v7300_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_ce0),.v7300_we0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_we0),.v7300_d0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_d0),.v7300_1_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_1_address0),.v7300_1_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_1_ce0),.v7300_1_we0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_1_we0),.v7300_1_d0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_1_d0),.v7294_0(v7294_0),.v9016_0_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v9016_0_address0),.v9016_0_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v9016_0_ce0),.v9016_0_q0(v9016_0_q0),.v9016_1_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v9016_1_address0),.v9016_1_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v9016_1_ce0),.v9016_1_q0(v9016_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_ready),.v7302_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_address0),.v7302_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_ce0),.v7302_we0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_we0),.v7302_d0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_d0),.v7302_1_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_1_address0),.v7302_1_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_1_ce0),.v7302_1_we0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_1_we0),.v7302_1_d0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_1_d0),.v7301_1_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7301_1_address0),.v7301_1_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7301_1_ce0),.v7301_1_q0(v7301_1_t_q0),.v7300_1_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7300_1_address0),.v7300_1_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7300_1_ce0),.v7300_1_q0(v7300_1_t_q0),.v7301_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7301_address0),.v7301_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7301_ce0),.v7301_q0(v7301_t_q0),.v7300_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7300_address0),.v7300_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7300_ce0),.v7300_q0(v7300_t_q0));
forward_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31 dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_ap_ready),.v9015_1_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_1_address0),.v9015_1_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_1_ce0),.v9015_1_we0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_1_we0),.v9015_1_d0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_1_d0),.v9015_0_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_0_address0),.v9015_0_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_0_ce0),.v9015_0_we0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_0_we0),.v9015_0_d0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_0_d0),.p_read(v7294_0_c_channel1_dout),.v7302_1_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v7302_1_address0),.v7302_1_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v7302_1_ce0),.v7302_1_q0(v7302_1_t_q0),.v7302_address0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v7302_address0),.v7302_ce0(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v7302_ce0),.v7302_q0(v7302_t_q0));
forward_fifo_w7_d3_S v7294_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_return),.if_full_n(v7294_0_c_channel1_full_n),.if_write(ap_channel_done_v7294_0_c_channel1),.if_dout(v7294_0_c_channel1_dout),.if_num_data_valid(v7294_0_c_channel1_num_data_valid),.if_fifo_cap(v7294_0_c_channel1_fifo_cap),.if_empty_n(v7294_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v7294_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_done & dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v7294_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v7294_0_c_channel1 <= ap_sync_channel_write_v7294_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v7300 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_done & dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v7300 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v7300 <= ap_sync_channel_write_v7300;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v7300_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_done & dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v7300_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v7300_1 <= ap_sync_channel_write_v7300_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v7301 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_done & dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v7301 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v7301 <= ap_sync_channel_write_v7301;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v7301_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_done & dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v7301_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v7301_1 <= ap_sync_channel_write_v7301_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v7302 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v7302 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v7302 <= ap_sync_channel_write_v7302;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v7302_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v7302_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v7302_1 <= ap_sync_channel_write_v7302_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v7294_0_c_channel1 = ((ap_sync_reg_channel_write_v7294_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_done);
assign ap_channel_done_v7300 = ((ap_sync_reg_channel_write_v7300 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_done);
assign ap_channel_done_v7300_1 = ((ap_sync_reg_channel_write_v7300_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_done);
assign ap_channel_done_v7301 = ((ap_sync_reg_channel_write_v7301 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_done);
assign ap_channel_done_v7301_1 = ((ap_sync_reg_channel_write_v7301_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_done);
assign ap_channel_done_v7302 = ((ap_sync_reg_channel_write_v7302 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_done);
assign ap_channel_done_v7302_1 = ((ap_sync_reg_channel_write_v7302_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_ap_done;
assign ap_idle = ((v7294_0_c_channel1_empty_n ^ 1'b1) & (v7302_1_t_empty_n ^ 1'b1) & (v7302_t_empty_n ^ 1'b1) & (v7300_1_t_empty_n ^ 1'b1) & (v7300_t_empty_n ^ 1'b1) & (v7301_1_t_empty_n ^ 1'b1) & (v7301_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v7294_0_c_channel1 = ((v7294_0_c_channel1_full_n & ap_channel_done_v7294_0_c_channel1) | ap_sync_reg_channel_write_v7294_0_c_channel1);
assign ap_sync_channel_write_v7300 = ((dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_full_n & ap_channel_done_v7300) | ap_sync_reg_channel_write_v7300);
assign ap_sync_channel_write_v7300_1 = ((dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_1_full_n & ap_channel_done_v7300_1) | ap_sync_reg_channel_write_v7300_1);
assign ap_sync_channel_write_v7301 = ((dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_full_n & ap_channel_done_v7301) | ap_sync_reg_channel_write_v7301);
assign ap_sync_channel_write_v7301_1 = ((dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_1_full_n & ap_channel_done_v7301_1) | ap_sync_reg_channel_write_v7301_1);
assign ap_sync_channel_write_v7302 = ((dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_full_n & ap_channel_done_v7302) | ap_sync_reg_channel_write_v7302);
assign ap_sync_channel_write_v7302_1 = ((dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_1_full_n & ap_channel_done_v7302_1) | ap_sync_reg_channel_write_v7302_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_ap_start = (v7302_t_empty_n & v7302_1_t_empty_n & v7294_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_continue = (ap_sync_channel_write_v7302_1 & ap_sync_channel_write_v7302);
assign dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_ap_start = (v7301_t_empty_n & v7301_1_t_empty_n & v7300_t_empty_n & v7300_1_t_empty_n);
assign dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_1_full_n = v7302_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9266_1_proc_U0_v7302_full_n = v7302_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_continue = (ap_sync_channel_write_v7300_1 & ap_sync_channel_write_v7300);
assign dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_1_full_n = v7300_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v7300_full_n = v7300_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_continue = (ap_sync_channel_write_v7301_1 & ap_sync_channel_write_v7301 & ap_sync_channel_write_v7294_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_1_full_n = v7301_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v7301_full_n = v7301_i_full_n;
assign v9014_0_address0 = dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v9014_0_address0;
assign v9014_0_address1 = 20'd0;
assign v9014_0_ce0 = dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v9014_0_ce0;
assign v9014_0_ce1 = 1'b0;
assign v9014_0_d0 = 8'd0;
assign v9014_0_d1 = 8'd0;
assign v9014_0_we0 = 1'b0;
assign v9014_0_we1 = 1'b0;
assign v9014_1_address0 = dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v9014_1_address0;
assign v9014_1_address1 = 20'd0;
assign v9014_1_ce0 = dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9324_1_proc30_U0_v9014_1_ce0;
assign v9014_1_ce1 = 1'b0;
assign v9014_1_d0 = 8'd0;
assign v9014_1_d1 = 8'd0;
assign v9014_1_we0 = 1'b0;
assign v9014_1_we1 = 1'b0;
assign v9015_0_address0 = dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_0_address0;
assign v9015_0_address1 = 18'd0;
assign v9015_0_ce0 = dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_0_ce0;
assign v9015_0_ce1 = 1'b0;
assign v9015_0_d0 = dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_0_d0;
assign v9015_0_d1 = 8'd0;
assign v9015_0_we0 = dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_0_we0;
assign v9015_0_we1 = 1'b0;
assign v9015_1_address0 = dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_1_address0;
assign v9015_1_address1 = 18'd0;
assign v9015_1_ce0 = dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_1_ce0;
assign v9015_1_ce1 = 1'b0;
assign v9015_1_d0 = dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_1_d0;
assign v9015_1_d1 = 8'd0;
assign v9015_1_we0 = dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9238_1_proc31_U0_v9015_1_we0;
assign v9015_1_we1 = 1'b0;
assign v9016_0_address0 = dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v9016_0_address0;
assign v9016_0_address1 = 18'd0;
assign v9016_0_ce0 = dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v9016_0_ce0;
assign v9016_0_ce1 = 1'b0;
assign v9016_0_d0 = 8'd0;
assign v9016_0_d1 = 8'd0;
assign v9016_0_we0 = 1'b0;
assign v9016_0_we1 = 1'b0;
assign v9016_1_address0 = dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v9016_1_address0;
assign v9016_1_address1 = 18'd0;
assign v9016_1_ce0 = dataflow_in_loop_VITIS_LOOP_9351_1_Loop_VITIS_LOOP_9296_1_proc29_U0_v9016_1_ce0;
assign v9016_1_ce1 = 1'b0;
assign v9016_1_d0 = 8'd0;
assign v9016_1_d1 = 8'd0;
assign v9016_1_we0 = 1'b0;
assign v9016_1_we1 = 1'b0;
endmodule 
