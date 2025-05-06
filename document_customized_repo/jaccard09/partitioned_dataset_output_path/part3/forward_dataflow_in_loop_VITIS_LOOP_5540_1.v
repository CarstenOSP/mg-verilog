
module forward_dataflow_in_loop_VITIS_LOOP_5540_1 (ap_clk,ap_rst,v4020_0,v9021_1_address0,v9021_1_ce0,v9021_1_d0,v9021_1_q0,v9021_1_we0,v9021_1_address1,v9021_1_ce1,v9021_1_d1,v9021_1_q1,v9021_1_we1,v9021_0_address0,v9021_0_ce0,v9021_0_d0,v9021_0_q0,v9021_0_we0,v9021_0_address1,v9021_0_ce1,v9021_0_d1,v9021_0_q1,v9021_0_we1,v9022_0_address0,v9022_0_ce0,v9022_0_d0,v9022_0_q0,v9022_0_we0,v9022_0_address1,v9022_0_ce1,v9022_0_d1,v9022_0_q1,v9022_0_we1,v9022_1_address0,v9022_1_ce0,v9022_1_d0,v9022_1_q0,v9022_1_we0,v9022_1_address1,v9022_1_ce1,v9022_1_d1,v9022_1_q1,v9022_1_we1,v9020_0_address0,v9020_0_ce0,v9020_0_d0,v9020_0_q0,v9020_0_we0,v9020_0_address1,v9020_0_ce1,v9020_0_d1,v9020_0_q1,v9020_0_we1,v9020_1_address0,v9020_1_ce0,v9020_1_d0,v9020_1_q0,v9020_1_we0,v9020_1_address1,v9020_1_ce1,v9020_1_d1,v9020_1_q1,v9020_1_we1,v9020_2_address0,v9020_2_ce0,v9020_2_d0,v9020_2_q0,v9020_2_we0,v9020_2_address1,v9020_2_ce1,v9020_2_d1,v9020_2_q1,v9020_2_we1,v9020_3_address0,v9020_3_ce0,v9020_3_d0,v9020_3_q0,v9020_3_we0,v9020_3_address1,v9020_3_ce1,v9020_3_d1,v9020_3_q1,v9020_3_we1,v4020_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [8:0] v4020_0;
output  [14:0] v9021_1_address0;
output   v9021_1_ce0;
output  [7:0] v9021_1_d0;
input  [7:0] v9021_1_q0;
output   v9021_1_we0;
output  [14:0] v9021_1_address1;
output   v9021_1_ce1;
output  [7:0] v9021_1_d1;
input  [7:0] v9021_1_q1;
output   v9021_1_we1;
output  [14:0] v9021_0_address0;
output   v9021_0_ce0;
output  [7:0] v9021_0_d0;
input  [7:0] v9021_0_q0;
output   v9021_0_we0;
output  [14:0] v9021_0_address1;
output   v9021_0_ce1;
output  [7:0] v9021_0_d1;
input  [7:0] v9021_0_q1;
output   v9021_0_we1;
output  [14:0] v9022_0_address0;
output   v9022_0_ce0;
output  [7:0] v9022_0_d0;
input  [7:0] v9022_0_q0;
output   v9022_0_we0;
output  [14:0] v9022_0_address1;
output   v9022_0_ce1;
output  [7:0] v9022_0_d1;
input  [7:0] v9022_0_q1;
output   v9022_0_we1;
output  [14:0] v9022_1_address0;
output   v9022_1_ce0;
output  [7:0] v9022_1_d0;
input  [7:0] v9022_1_q0;
output   v9022_1_we0;
output  [14:0] v9022_1_address1;
output   v9022_1_ce1;
output  [7:0] v9022_1_d1;
input  [7:0] v9022_1_q1;
output   v9022_1_we1;
output  [15:0] v9020_0_address0;
output   v9020_0_ce0;
output  [7:0] v9020_0_d0;
input  [7:0] v9020_0_q0;
output   v9020_0_we0;
output  [15:0] v9020_0_address1;
output   v9020_0_ce1;
output  [7:0] v9020_0_d1;
input  [7:0] v9020_0_q1;
output   v9020_0_we1;
output  [15:0] v9020_1_address0;
output   v9020_1_ce0;
output  [7:0] v9020_1_d0;
input  [7:0] v9020_1_q0;
output   v9020_1_we0;
output  [15:0] v9020_1_address1;
output   v9020_1_ce1;
output  [7:0] v9020_1_d1;
input  [7:0] v9020_1_q1;
output   v9020_1_we1;
output  [15:0] v9020_2_address0;
output   v9020_2_ce0;
output  [7:0] v9020_2_d0;
input  [7:0] v9020_2_q0;
output   v9020_2_we0;
output  [15:0] v9020_2_address1;
output   v9020_2_ce1;
output  [7:0] v9020_2_d1;
input  [7:0] v9020_2_q1;
output   v9020_2_we1;
output  [15:0] v9020_3_address0;
output   v9020_3_ce0;
output  [7:0] v9020_3_d0;
input  [7:0] v9020_3_q0;
output   v9020_3_we0;
output  [15:0] v9020_3_address1;
output   v9020_3_ce1;
output  [7:0] v9020_3_d1;
input  [7:0] v9020_3_q1;
output   v9020_3_we1;
input   v4020_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v4028_i_q0;
wire   [7:0] v4028_t_q0;
wire   [7:0] v4028_1_i_q0;
wire   [7:0] v4028_1_t_q0;
wire   [7:0] v4027_i_q0;
wire   [7:0] v4027_t_q0;
wire   [7:0] v4027_1_i_q0;
wire   [7:0] v4027_1_t_q0;
wire   [7:0] v4026_i_q0;
wire   [7:0] v4026_t_q0;
wire   [7:0] v4026_1_i_q0;
wire   [7:0] v4026_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_ready;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_1_d0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_0_ce0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_1_ce0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_2_ce0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_3_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_return;
wire    ap_channel_done_v4020_0_c_channel1;
wire    v4020_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v4020_0_c_channel1;
wire    ap_sync_channel_write_v4020_0_c_channel1;
wire    ap_channel_done_v4027_1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_1_full_n;
reg    ap_sync_reg_channel_write_v4027_1;
wire    ap_sync_channel_write_v4027_1;
wire    ap_channel_done_v4027;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_full_n;
reg    ap_sync_reg_channel_write_v4027;
wire    ap_sync_channel_write_v4027;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_ready;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_1_d0;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v9022_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v9022_0_ce0;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v9022_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v9022_1_ce0;
wire    ap_channel_done_v4026_1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_1_full_n;
reg    ap_sync_reg_channel_write_v4026_1;
wire    ap_sync_channel_write_v4026_1;
wire    ap_channel_done_v4026;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_full_n;
reg    ap_sync_reg_channel_write_v4026;
wire    ap_sync_channel_write_v4026;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_ready;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_1_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4027_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4027_1_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4026_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4026_1_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4027_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4027_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4026_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4026_ce0;
wire    ap_channel_done_v4028_1;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_1_full_n;
reg    ap_sync_reg_channel_write_v4028_1;
wire    ap_sync_channel_write_v4028_1;
wire    ap_channel_done_v4028;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_full_n;
reg    ap_sync_reg_channel_write_v4028;
wire    ap_sync_channel_write_v4028;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_ap_ready;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_1_d0;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_0_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v4028_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v4028_1_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v4028_address0;
wire    dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v4028_ce0;
wire    v4027_i_full_n;
wire    v4027_t_empty_n;
wire    v4027_1_i_full_n;
wire    v4027_1_t_empty_n;
wire    v4026_i_full_n;
wire    v4026_t_empty_n;
wire    v4026_1_i_full_n;
wire    v4026_1_t_empty_n;
wire    v4028_i_full_n;
wire    v4028_t_empty_n;
wire    v4028_1_i_full_n;
wire    v4028_1_t_empty_n;
wire   [4:0] v4020_0_c_channel1_dout;
wire   [2:0] v4020_0_c_channel1_num_data_valid;
wire   [2:0] v4020_0_c_channel1_fifo_cap;
wire    v4020_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v4020_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v4027_1 = 1'b0;
#0 ap_sync_reg_channel_write_v4027 = 1'b0;
#0 ap_sync_reg_channel_write_v4026_1 = 1'b0;
#0 ap_sync_reg_channel_write_v4026 = 1'b0;
#0 ap_sync_reg_channel_write_v4028_1 = 1'b0;
#0 ap_sync_reg_channel_write_v4028 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_5540_1_v4028_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 576 ),.AddressWidth( 10 ))
v4028_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_d0),.i_q0(v4028_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v4028_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v4028_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v4028_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v4028_i_full_n),.i_write(ap_channel_done_v4028),.t_empty_n(v4028_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_5540_1_v4028_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 576 ),.AddressWidth( 10 ))
v4028_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_1_d0),.i_q0(v4028_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v4028_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v4028_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v4028_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v4028_1_i_full_n),.i_write(ap_channel_done_v4028_1),.t_empty_n(v4028_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_5540_1_v4028_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 576 ),.AddressWidth( 10 ))
v4027_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_d0),.i_q0(v4027_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4027_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4027_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v4027_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v4027_i_full_n),.i_write(ap_channel_done_v4027),.t_empty_n(v4027_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_5540_1_v4028_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 576 ),.AddressWidth( 10 ))
v4027_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_1_d0),.i_q0(v4027_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4027_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4027_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v4027_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v4027_1_i_full_n),.i_write(ap_channel_done_v4027_1),.t_empty_n(v4027_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_5540_1_v4028_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 576 ),.AddressWidth( 10 ))
v4026_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_d0),.i_q0(v4026_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4026_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4026_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v4026_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v4026_i_full_n),.i_write(ap_channel_done_v4026),.t_empty_n(v4026_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_5540_1_v4028_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 576 ),.AddressWidth( 10 ))
v4026_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_1_d0),.i_q0(v4026_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4026_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4026_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v4026_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v4026_1_i_full_n),.i_write(ap_channel_done_v4026_1),.t_empty_n(v4026_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43 dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_ready),.v4027_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_address0),.v4027_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_ce0),.v4027_we0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_we0),.v4027_d0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_d0),.v4027_1_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_1_address0),.v4027_1_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_1_ce0),.v4027_1_we0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_1_we0),.v4027_1_d0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_1_d0),.v4020_0(v4020_0),.v9020_0_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_0_address0),.v9020_0_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_0_ce0),.v9020_0_q0(v9020_0_q0),.v9020_1_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_1_address0),.v9020_1_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_1_ce0),.v9020_1_q0(v9020_1_q0),.v9020_2_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_2_address0),.v9020_2_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_2_ce0),.v9020_2_q0(v9020_2_q0),.v9020_3_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_3_address0),.v9020_3_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_3_ce0),.v9020_3_q0(v9020_3_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42 dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_ready),.v4026_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_address0),.v4026_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_ce0),.v4026_we0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_we0),.v4026_d0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_d0),.v4026_1_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_1_address0),.v4026_1_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_1_ce0),.v4026_1_we0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_1_we0),.v4026_1_d0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_1_d0),.v4020_0(v4020_0),.v9022_0_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v9022_0_address0),.v9022_0_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v9022_0_ce0),.v9022_0_q0(v9022_0_q0),.v9022_1_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v9022_1_address0),.v9022_1_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v9022_1_ce0),.v9022_1_q0(v9022_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_ready),.v4028_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_address0),.v4028_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_ce0),.v4028_we0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_we0),.v4028_d0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_d0),.v4028_1_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_1_address0),.v4028_1_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_1_ce0),.v4028_1_we0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_1_we0),.v4028_1_d0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_1_d0),.v4027_1_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4027_1_address0),.v4027_1_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4027_1_ce0),.v4027_1_q0(v4027_1_t_q0),.v4026_1_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4026_1_address0),.v4026_1_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4026_1_ce0),.v4026_1_q0(v4026_1_t_q0),.v4027_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4027_address0),.v4027_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4027_ce0),.v4027_q0(v4027_t_q0),.v4026_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4026_address0),.v4026_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4026_ce0),.v4026_q0(v4026_t_q0));
forward_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44 dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_ap_ready),.v9021_1_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_1_address0),.v9021_1_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_1_ce0),.v9021_1_we0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_1_we0),.v9021_1_d0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_1_d0),.v9021_0_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_0_address0),.v9021_0_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_0_ce0),.v9021_0_we0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_0_we0),.v9021_0_d0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_0_d0),.p_read(v4020_0_c_channel1_dout),.v4028_1_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v4028_1_address0),.v4028_1_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v4028_1_ce0),.v4028_1_q0(v4028_1_t_q0),.v4028_address0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v4028_address0),.v4028_ce0(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v4028_ce0),.v4028_q0(v4028_t_q0));
forward_fifo_w5_d3_S v4020_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_return),.if_full_n(v4020_0_c_channel1_full_n),.if_write(ap_channel_done_v4020_0_c_channel1),.if_dout(v4020_0_c_channel1_dout),.if_num_data_valid(v4020_0_c_channel1_num_data_valid),.if_fifo_cap(v4020_0_c_channel1_fifo_cap),.if_empty_n(v4020_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v4020_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v4020_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v4020_0_c_channel1 <= ap_sync_channel_write_v4020_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v4026 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v4026 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v4026 <= ap_sync_channel_write_v4026;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v4026_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v4026_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v4026_1 <= ap_sync_channel_write_v4026_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v4027 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v4027 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v4027 <= ap_sync_channel_write_v4027;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v4027_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v4027_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v4027_1 <= ap_sync_channel_write_v4027_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v4028 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v4028 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v4028 <= ap_sync_channel_write_v4028;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v4028_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v4028_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v4028_1 <= ap_sync_channel_write_v4028_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v4020_0_c_channel1 = ((ap_sync_reg_channel_write_v4020_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_done);
assign ap_channel_done_v4026 = ((ap_sync_reg_channel_write_v4026 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_done);
assign ap_channel_done_v4026_1 = ((ap_sync_reg_channel_write_v4026_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_done);
assign ap_channel_done_v4027 = ((ap_sync_reg_channel_write_v4027 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_done);
assign ap_channel_done_v4027_1 = ((ap_sync_reg_channel_write_v4027_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_done);
assign ap_channel_done_v4028 = ((ap_sync_reg_channel_write_v4028 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_done);
assign ap_channel_done_v4028_1 = ((ap_sync_reg_channel_write_v4028_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_ap_done;
assign ap_idle = ((v4020_0_c_channel1_empty_n ^ 1'b1) & (v4028_1_t_empty_n ^ 1'b1) & (v4028_t_empty_n ^ 1'b1) & (v4026_1_t_empty_n ^ 1'b1) & (v4026_t_empty_n ^ 1'b1) & (v4027_1_t_empty_n ^ 1'b1) & (v4027_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v4020_0_c_channel1 = ((v4020_0_c_channel1_full_n & ap_channel_done_v4020_0_c_channel1) | ap_sync_reg_channel_write_v4020_0_c_channel1);
assign ap_sync_channel_write_v4026 = ((dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_full_n & ap_channel_done_v4026) | ap_sync_reg_channel_write_v4026);
assign ap_sync_channel_write_v4026_1 = ((dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_1_full_n & ap_channel_done_v4026_1) | ap_sync_reg_channel_write_v4026_1);
assign ap_sync_channel_write_v4027 = ((dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_full_n & ap_channel_done_v4027) | ap_sync_reg_channel_write_v4027);
assign ap_sync_channel_write_v4027_1 = ((dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_1_full_n & ap_channel_done_v4027_1) | ap_sync_reg_channel_write_v4027_1);
assign ap_sync_channel_write_v4028 = ((dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_full_n & ap_channel_done_v4028) | ap_sync_reg_channel_write_v4028);
assign ap_sync_channel_write_v4028_1 = ((dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_1_full_n & ap_channel_done_v4028_1) | ap_sync_reg_channel_write_v4028_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_ap_start = (v4028_t_empty_n & v4028_1_t_empty_n & v4020_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_continue = (ap_sync_channel_write_v4028_1 & ap_sync_channel_write_v4028);
assign dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_ap_start = (v4027_t_empty_n & v4027_1_t_empty_n & v4026_t_empty_n & v4026_1_t_empty_n);
assign dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_1_full_n = v4028_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5455_1_proc_U0_v4028_full_n = v4028_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_continue = (ap_sync_channel_write_v4026_1 & ap_sync_channel_write_v4026);
assign dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_1_full_n = v4026_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v4026_full_n = v4026_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_continue = (ap_sync_channel_write_v4027_1 & ap_sync_channel_write_v4027 & ap_sync_channel_write_v4020_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_1_full_n = v4027_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v4027_full_n = v4027_i_full_n;
assign v9020_0_address0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_0_address0;
assign v9020_0_address1 = 16'd0;
assign v9020_0_ce0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_0_ce0;
assign v9020_0_ce1 = 1'b0;
assign v9020_0_d0 = 8'd0;
assign v9020_0_d1 = 8'd0;
assign v9020_0_we0 = 1'b0;
assign v9020_0_we1 = 1'b0;
assign v9020_1_address0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_1_address0;
assign v9020_1_address1 = 16'd0;
assign v9020_1_ce0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_1_ce0;
assign v9020_1_ce1 = 1'b0;
assign v9020_1_d0 = 8'd0;
assign v9020_1_d1 = 8'd0;
assign v9020_1_we0 = 1'b0;
assign v9020_1_we1 = 1'b0;
assign v9020_2_address0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_2_address0;
assign v9020_2_address1 = 16'd0;
assign v9020_2_ce0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_2_ce0;
assign v9020_2_ce1 = 1'b0;
assign v9020_2_d0 = 8'd0;
assign v9020_2_d1 = 8'd0;
assign v9020_2_we0 = 1'b0;
assign v9020_2_we1 = 1'b0;
assign v9020_3_address0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_3_address0;
assign v9020_3_address1 = 16'd0;
assign v9020_3_ce0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5513_1_proc43_U0_v9020_3_ce0;
assign v9020_3_ce1 = 1'b0;
assign v9020_3_d0 = 8'd0;
assign v9020_3_d1 = 8'd0;
assign v9020_3_we0 = 1'b0;
assign v9020_3_we1 = 1'b0;
assign v9021_0_address0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_0_address0;
assign v9021_0_address1 = 15'd0;
assign v9021_0_ce0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_0_ce0;
assign v9021_0_ce1 = 1'b0;
assign v9021_0_d0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_0_d0;
assign v9021_0_d1 = 8'd0;
assign v9021_0_we0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_0_we0;
assign v9021_0_we1 = 1'b0;
assign v9021_1_address0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_1_address0;
assign v9021_1_address1 = 15'd0;
assign v9021_1_ce0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_1_ce0;
assign v9021_1_ce1 = 1'b0;
assign v9021_1_d0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_1_d0;
assign v9021_1_d1 = 8'd0;
assign v9021_1_we0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5427_1_proc44_U0_v9021_1_we0;
assign v9021_1_we1 = 1'b0;
assign v9022_0_address0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v9022_0_address0;
assign v9022_0_address1 = 15'd0;
assign v9022_0_ce0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v9022_0_ce0;
assign v9022_0_ce1 = 1'b0;
assign v9022_0_d0 = 8'd0;
assign v9022_0_d1 = 8'd0;
assign v9022_0_we0 = 1'b0;
assign v9022_0_we1 = 1'b0;
assign v9022_1_address0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v9022_1_address0;
assign v9022_1_address1 = 15'd0;
assign v9022_1_ce0 = dataflow_in_loop_VITIS_LOOP_5540_1_Loop_VITIS_LOOP_5485_1_proc42_U0_v9022_1_ce0;
assign v9022_1_ce1 = 1'b0;
assign v9022_1_d0 = 8'd0;
assign v9022_1_d1 = 8'd0;
assign v9022_1_we0 = 1'b0;
assign v9022_1_we1 = 1'b0;
endmodule 
